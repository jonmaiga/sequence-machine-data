import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C036
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
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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

/-!
# A210700: A047160(3n): smallest m >= 0 with both 3n - m and 3n + m prime.

The programs for A210700, there is no canonical definition to state claims against.
-/

/-! ## A210700.P6683408417234453546

`A047160(3*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A210700.P6683408417234453546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047160 (3 * (n + 1))

end

end A210700.P6683408417234453546

/-! ## A210700.P729168180385549663

`A325142(3*(n+1))`
-/

namespace A210700.P729168180385549663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (3 * (n + 1))

end

end A210700.P729168180385549663

/-! ## A210700.P15737320951559836872

`A066285(3*(n+1))/2`
-/

namespace A210700.P15737320951559836872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066285 (3 * (n + 1)) : ℚ) / 2

end

end A210700.P15737320951559836872

/-! ## A210700.P18383101180116884755

`3*(n+1)-A002374(3*(n+1))`
-/

namespace A210700.P18383101180116884755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A002374 (3 * (n + 1))

end

end A210700.P18383101180116884755

/-! ## A210700.P4988028493173529479

`A234345(3*(n+1))-3*(n+1)`
-/

namespace A210700.P4988028493173529479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234345 (3 * (n + 1)) - (3 * (n + 1) : ℤ)

end

end A210700.P4988028493173529479

/-! ## A210700.P4446669177779405386

`A325142(A008458(n+1)/2)%A008458(n)`
-/

namespace A210700.P4446669177779405386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325142 (SequenceMachineLib.roundAway ((A008458 (n + 1) : ℚ) / 2)).toNat) (A008458 n)

end

end A210700.P4446669177779405386

/-!
# A210702: Records in A210700.

The programs for A210702, there is no canonical definition to state claims against.
-/

/-! ## A210702.P16006347522567732834

`A210700(A210701(n+1))`
-/

namespace A210702.P16006347522567732834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210700 (A210701 (n + 1)).toNat

end

end A210702.P16006347522567732834

/-! ## A210702.P12667038395414015934

`record[A210700(n+1)]`
-/

namespace A210702.P12667038395414015934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210702.P12667038395414015934

/-! ## A210702.P13003934474385774303

`record[A047160(A008486(n+1))]`
-/

namespace A210702.P13003934474385774303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047160 (A008486 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210702.P13003934474385774303

/-! ## A210702.P11178298081677698737

`record[A325142(A016789(n)+1)]`
-/

namespace A210702.P11178298081677698737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (A016789 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210702.P11178298081677698737

/-! ## A210702.P2824792799110699206

`record[A047160(A016777(n)+2)]`
-/

namespace A210702.P2824792799110699206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047160 (A016777 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210702.P2824792799110699206

/-!
# A210703: Triangular array D(n,k) counting disconnected k-regular simple graphs on n vertices with girth exactly 3.

The programs for A210703, there is no canonical definition to state claims against.
-/

/-! ## A210703.P7986947810446145527

`A230106(and(A133263(n), A344392(n)))`
-/

namespace A210703.P7986947810446145527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230106 (Int.land (A133263 n) (A344392 n)).toNat

end

end A210703.P7986947810446145527

/-! ## A210703.P12737380713492659968

`round(p?[A223708(A191392(n))]/7)`
-/

namespace A210703.P12737380713492659968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223708 (A191392 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 7)

end

end A210703.P12737380713492659968

/-! ## A210703.P2781175095519529272

`A027868(p?[A223708(A191392(n))])`
-/

namespace A210703.P2781175095519529272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223708 (A191392 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A210703.P2781175095519529272

/-! ## A210703.P10189765524004988993

`and(A007953(A270831(n+4)), A025877(n))`
-/

namespace A210703.P10189765524004988993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007953 (A270831 (n + 4)).toNat) (A025877 n)

end

end A210703.P10189765524004988993

/-! ## A210703.P493398646535377754

`and(A008651(3*n+2), A242277(A219828(n+1)))`
-/

namespace A210703.P493398646535377754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008651 (3 * n + 2)) (A242277 (A219828 (n + 1)).toNat)

end

end A210703.P493398646535377754

/-!
# A210705: Number of partitions of n into parts congruent to +-3, +-7, +-15, +-21, +-33, +-35, +-39, +-49, +-51, +-57 (mod 126).

The programs for A210705, there is no canonical definition to state claims against.
-/

/-! ## A210705.P12726107006126973968

`A001878(3^A029293(n))`
-/

namespace A210705.P12726107006126973968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A029293 n : ℤ))).toNat

end

end A210705.P12726107006126973968

/-! ## A210705.P1338614396582382391

`A102671(3^A029293(n))`
-/

namespace A210705.P1338614396582382391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102671 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A029293 n : ℤ))).toNat

end

end A210705.P1338614396582382391

/-! ## A210705.P3199522955237269491

`A308064(3^A029293(n))`
-/

namespace A210705.P3199522955237269491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308064 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A029293 n : ℤ))).toNat

end

end A210705.P3199522955237269491

/-! ## A210705.P15656898108819713461

`A060016(A079562(n+1)+A000005(n+1)/A001227(n+1))`
-/

namespace A210705.P15656898108819713461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 (SequenceMachineLib.roundAway ((A079562 (n + 1) : ℚ) + (A000005 (n + 1) : ℚ) / (A001227 (n + 1) : ℚ))).toNat

end

end A210705.P15656898108819713461

/-! ## A210705.P14564168333110749020

`A352516(A364548(n+1)+A000700(n))`
-/

namespace A210705.P14564168333110749020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352516 (A364548 (n + 1) + A000700 n).toNat

end

end A210705.P14564168333110749020

/-!
# A210707: a(1) and a(3) are 0. For all other n, a(n) is the smallest k such that 10*k is adjacent to a multiple of the n-th prime.

The programs for A210707, there is no canonical definition to state claims against.
-/

/-! ## A210707.P796673358968685804

`A134172(A334495(n+1))`
-/

namespace A210707.P796673358968685804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134172 (A334495 (n + 1)).toNat

end

end A210707.P796673358968685804

/-!
# A210709: Number of trivalent connected simple graphs with 2n nodes and girth at least 9.

The programs for A210709, there is no canonical definition to state claims against.
-/

/-! ## A210709.P4079143940880705617

`C(∏{digits}[n, #], ceil(π*sqrt(n)))`
-/

namespace A210709.P4079143940880705617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod ⌈Real.pi * Real.sqrt (n : ℝ)⌉.toNat

end

end A210709.P4079143940880705617

/-! ## A210709.P15727539444601215904

`(a(n-1)+18)*char[29]` with `a(0)=1`
-/

namespace A210709.P15727539444601215904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 18) * (if ∃ j, f1 j = n then 1 else 0)

end

end A210709.P15727539444601215904

/-! ## A210709.P7798456241185345279

`(18-a(n-1))*char[29]` with `a(0)=1`
-/

namespace A210709.P7798456241185345279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (18 - a (n - 1)) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A210709.P7798456241185345279

/-! ## A210709.P7719180396125068230

`floor((2*n+1)^(n-1-sinh(4)))`
-/

namespace A210709.P7719180396125068230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℝ) ^ (((n : ℤ) - 1 : ℝ) - Real.sinh (4 : ℝ))⌋

end

end A210709.P7719180396125068230

/-! ## A210709.P13810959652423373816

`round((2*n+1)^(n-1-sinh(4)))`
-/

namespace A210709.P13810959652423373816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℝ) ^ (((n : ℤ) - 1 : ℝ) - Real.sinh (4 : ℝ)))

end

end A210709.P13810959652423373816

/-!
# A210713: Number of disconnected regular simple graphs on n vertices with girth exactly 3.

The programs for A210713, there is no canonical definition to state claims against.
-/

/-! ## A210713.P3198497999831322447

`A068932(n)-A185214(n)`
-/

namespace A210713.P3198497999831322447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068932 n - A185214 n

end

end A210713.P3198497999831322447

/-! ## A210713.P10665839897004956737

`A068932(n)-(A210714(n)+A185215(n))`
-/

namespace A210713.P10665839897004956737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068932 n - (A210714 n + A185215 n)

end

end A210713.P10665839897004956737

/-! ## A210713.P6586741008348414252

`A068932(n)-(A185216(n)+A210715(n)+A210714(n))`
-/

namespace A210713.P6586741008348414252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068932 n - (A185216 n + (A210715 n + A210714 n))

end

end A210713.P6586741008348414252

/-! ## A210713.P6981656016154045854

`A068932(n)-(A185215(n)-(A025439(n)-A210714(n)))`
-/

namespace A210713.P6981656016154045854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068932 n - (A185215 n - (A025439 n - A210714 n))

end

end A210713.P6981656016154045854

/-! ## A210713.P18346594623635539383

`A068932(n)-(A185215(n)-(A025469(n)-A210714(n)))`
-/

namespace A210713.P18346594623635539383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068932 n - (A185215 n - (A025469 n - A210714 n))

end

end A210713.P18346594623635539383

/-!
# A210714: Number of disconnected regular simple graphs on n vertices with girth exactly 4.

The programs for A210714, there is no canonical definition to state claims against.
-/

/-! ## A210714.P10490283602073241844

`A185214(n)-A185215(n)`
-/

namespace A210714.P10490283602073241844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185214 n - A185215 n

end

end A210714.P10490283602073241844

/-! ## A210714.P4998611266902707162

`A185214(n)-(A210715(n)+A185216(n))`
-/

namespace A210714.P4998611266902707162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185214 n - (A210715 n + A185216 n)

end

end A210714.P4998611266902707162

/-! ## A210714.P9308503037515860668

`A185214(n)+A057428(n)*A185215(n)`
-/

namespace A210714.P9308503037515860668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185214 n + A057428 n * A185215 n

end

end A210714.P9308503037515860668

/-! ## A210714.P10452824850044303067

`A185214(n)-(A185217(n)+A210716(n)+A210715(n))`
-/

namespace A210714.P10452824850044303067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185214 n - (A185217 n + (A210716 n + A210715 n))

end

end A210714.P10452824850044303067

/-! ## A210714.P13032966086739240628

`A185214(n)-(A185216(n)-(A025439(n)-A210715(n)))`
-/

namespace A210714.P13032966086739240628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185214 n - (A185216 n - (A025439 n - A210715 n))

end

end A210714.P13032966086739240628

/-!
# A210715: Number of disconnected regular simple graphs on n vertices with girth exactly 5.

The programs for A210715, there is no canonical definition to state claims against.
-/

/-! ## A210715.P15702862295175834957

`A185215(n)-A185216(n)`
-/

namespace A210715.P15702862295175834957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185215 n - A185216 n

end

end A210715.P15702862295175834957

/-! ## A210715.P5638879717742468629

`A185215(n)-(A210716(n)+A185217(n))`
-/

namespace A210715.P5638879717742468629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185215 n - (A210716 n + A185217 n)

end

end A210715.P5638879717742468629

/-! ## A210715.P6049310155441333130

`A185215(n)+A057428(n)*A185216(n)`
-/

namespace A210715.P6049310155441333130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185215 n + A057428 n * A185216 n

end

end A210715.P6049310155441333130

/-! ## A210715.P12593639838144094598

`A185215(n)-(A185218(n)+A210717(n)+A210716(n))`
-/

namespace A210715.P12593639838144094598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185215 n - (A185218 n + (A210717 n + A210716 n))

end

end A210715.P12593639838144094598

/-! ## A210715.P16937310420597810713

`A185215(n)-(A185217(n)-(A025439(n)-A210716(n)))`
-/

namespace A210715.P16937310420597810713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185215 n - (A185217 n - (A025439 n - A210716 n))

end

end A210715.P16937310420597810713

/-!
# A210716: Number of disconnected regular simple graphs on n vertices with girth exactly 6.

The programs for A210716, there is no canonical definition to state claims against.
-/

/-! ## A210716.P204187665219665967

`A185216(n)-A185217(n)`
-/

namespace A210716.P204187665219665967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185216 n - A185217 n

end

end A210716.P204187665219665967

/-! ## A210716.P14613150399477615883

`A185216(n)-(A210717(n)+A185218(n))`
-/

namespace A210716.P14613150399477615883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185216 n - (A210717 n + A185218 n)

end

end A210716.P14613150399477615883

/-! ## A210716.P14269806673546784780

`A185216(n)+A057428(n)*A185217(n)`
-/

namespace A210716.P14269806673546784780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185216 n + A057428 n * A185217 n

end

end A210716.P14269806673546784780

/-! ## A210716.P4621107212683367417

`A185216(n)+A153881(n+1)*A185217(n)`
-/

namespace A210716.P4621107212683367417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185216 n + A153881 (n + 1) * A185217 n

end

end A210716.P4621107212683367417

/-! ## A210716.P3129531493931246579

`A185216(n)+A185217(n)*A280193(A016813(n))`
-/

namespace A210716.P3129531493931246579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185216 n + A185217 n * A280193 (A016813 n).toNat

end

end A210716.P3129531493931246579

/-! ## A210716.P17850665560091555024

`A185216(n)+A185217(n)/A153881(A236046(n+2))`
-/

namespace A210716.P17850665560091555024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185216 n : ℚ) + (A185217 n : ℚ) / (A153881 (A236046 (n + 2)).toNat : ℚ)

end

end A210716.P17850665560091555024

/-!
# A210717: Number of disconnected regular simple graphs on n vertices with girth exactly 7.

The programs for A210717, there is no canonical definition to state claims against.
-/

/-! ## A210717.P5495751079855521744

`A185217(n)-A185218(n)`
-/

namespace A210717.P5495751079855521744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185217 n - A185218 n

end

end A210717.P5495751079855521744

/-! ## A210717.P14760410675341237637

`A185217(n)-(A210718(n)+A185219(n))`
-/

namespace A210717.P14760410675341237637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185217 n - (A210718 n + A185219 n)

end

end A210717.P14760410675341237637

/-! ## A210717.P4803106994869982071

`A185217(n)+A057428(n)*A185218(n)`
-/

namespace A210717.P4803106994869982071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185217 n + A057428 n * A185218 n

end

end A210717.P4803106994869982071

/-! ## A210717.P2534553615600356057

`A185217(n)+A153881(n+1)*A185218(n)`
-/

namespace A210717.P2534553615600356057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185217 n + A153881 (n + 1) * A185218 n

end

end A210717.P2534553615600356057

/-! ## A210717.P842413892591949378

`A185217(n)+A105812(2*(n+1))*A185218(n)`
-/

namespace A210717.P842413892591949378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185217 n + A105812 (2 * (n + 1)) * A185218 n

end

end A210717.P842413892591949378

/-! ## A210717.P8956386318182677611

`A185217(n)+A185218(n)/A153881(A236046(n+2))`
-/

namespace A210717.P8956386318182677611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185217 n : ℚ) + (A185218 n : ℚ) / (A153881 (A236046 (n + 2)).toNat : ℚ)

end

end A210717.P8956386318182677611

/-! ## A210717.P14125247497395706148

`A185216(n)-(A210716(n)+A185218(n))`
-/

namespace A210717.P14125247497395706148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185216 n - (A210716 n + A185218 n)

end

end A210717.P14125247497395706148

/-!
# A210718: Number of disconnected regular simple graphs on n vertices with girth exactly 8.

The programs for A210718, there is no canonical definition to state claims against.
-/

/-! ## A210718.P6555708419819940801

`A185218(n)-A185219(n)`
-/

namespace A210718.P6555708419819940801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185218 n - A185219 n

end

end A210718.P6555708419819940801

/-! ## A210718.P16628316331335428484

`A185218(n)+A057428(n)*A185219(n)`
-/

namespace A210718.P16628316331335428484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185218 n + A057428 n * A185219 n

end

end A210718.P16628316331335428484

/-! ## A210718.P6528331159556122081

`A185218(n)+A153881(n+1)*A185219(n)`
-/

namespace A210718.P6528331159556122081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185218 n + A153881 (n + 1) * A185219 n

end

end A210718.P6528331159556122081

/-! ## A210718.P11369778106934898374

`A185218(n)+A105812(2*(n+1))*A185219(n)`
-/

namespace A210718.P11369778106934898374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185218 n + A105812 (2 * (n + 1)) * A185219 n

end

end A210718.P11369778106934898374

/-! ## A210718.P8765503513370918943

`A185218(n)+A185219(n)/A153881(A236046(n+2))`
-/

namespace A210718.P8765503513370918943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185218 n : ℚ) + (A185219 n : ℚ) / (A153881 (A236046 (n + 2)).toNat : ℚ)

end

end A210718.P8765503513370918943

/-! ## A210718.P17807858857199203309

`A185217(n)-(A210717(n)+A185219(n))`
-/

namespace A210718.P17807858857199203309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185217 n - (A210717 n + A185219 n)

end

end A210718.P17807858857199203309

/-! ## A210718.P6734635368056820832

`dr(A186729(n))*A026801(A028310(n))`
-/

namespace A210718.P6734635368056820832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A186729 n) : ℤ) * A026801 (A028310 n).toNat

end

end A210718.P6734635368056820832

/-! ## A210718.P14346953799492197120

`A185218(n)+A186729(n)-A185319(n)`
-/

namespace A210718.P14346953799492197120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185218 n + (A186729 n - A185319 n)

end

end A210718.P14346953799492197120

/-! ## A210718.P4674393456851835135

`A026801(A028310(n)^A186729(n))`
-/

namespace A210718.P4674393456851835135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026801 (SequenceMachineLib.roundAway ((A028310 n : ℚ) ^ (A186729 n : ℤ))).toNat

end

end A210718.P4674393456851835135

/-!
# A210719: Numbers n for which phi(n) is different from phi(m) for all m < n.

The programs for A210719, there is no canonical definition to state claims against.
-/

/-! ## A210719.P15077432489350565186

`record[A015126(n+1)]`
-/

namespace A210719.P15077432489350565186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210719.P15077432489350565186

/-! ## A210719.P9618160256189306552

`comp[A066659(n+1)]`
-/

namespace A210719.P9618160256189306552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A210719.P9618160256189306552

/-! ## A210719.P7963890017980298516

`eq[1, char[A002181(n+1)]]`
-/

namespace A210719.P7963890017980298516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002181 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A210719.P7963890017980298516

/-! ## A210719.P7957394853081598757

`eq[0, A171934(n+1)]+1`
-/

namespace A210719.P7957394853081598757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171934 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A210719.P7957394853081598757

/-! ## A210719.P6397562331238185336

`eq[1, A081373(n+1)]+1`
-/

namespace A210719.P6397562331238185336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081373 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A210719.P6397562331238185336

/-! ## A210719.P10945274296946649755

`eq[n%2, A303757(or(1, n))]`
-/

namespace A210719.P10945274296946649755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303757 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A210719.P10945274296946649755

/-! ## A210719.P5276124722419317543

`record[or(1, n)/A303757(n+1)]`
-/

namespace A210719.P5276124722419317543
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℚ) / (A303757 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210719.P5276124722419317543

/-! ## A210719.P18077267819013021338

`A049283(A090127(n+1))`
-/

namespace A210719.P18077267819013021338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (A090127 (n + 1)).toNat

end

end A210719.P18077267819013021338

/-! ## A210719.P16578543441275097993

`record[A049283(A000010(n+1))]`
-/

namespace A210719.P16578543441275097993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210719.P16578543441275097993

/-! ## A210719.P6980710861540055651

`record[A074987(A109043(n+1))]`
-/

namespace A210719.P6980710861540055651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074987 (A109043 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210719.P6980710861540055651

/-! ## A210719.P10692897564263441175

`record[A061026(A000010(n+2))]`
-/

namespace A210719.P10692897564263441175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 (A000010 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210719.P10692897564263441175

/-! ## A210719.P2320577754927536591

`lt[n*A171934(A028310(n)), n]`
-/

namespace A210719.P2320577754927536591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A171934 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A210719.P2320577754927536591

/-! ## A210719.P14610872611573825061

`∪[A006005(n+1), A069823(n+1)]`
-/

namespace A210719.P14610872611573825061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A210719.P14610872611573825061

/-! ## A210719.P12467119861730529475

`∪[A065091(n+1), A069823(n+1)]`
-/

namespace A210719.P12467119861730529475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A210719.P12467119861730529475

/-! ## A210719.P9465096518154525292

`lt[A014197(n+2), char[A015126(n+1)]]`
-/

namespace A210719.P9465096518154525292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015126 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A210719.P9465096518154525292

/-! ## A210719.P6510830541957601450

`lt[A057635(n+4), char[A002181(n+1)]]`
-/

namespace A210719.P6510830541957601450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057635 (n + 4)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002181 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A210719.P6510830541957601450

/-! ## A210719.P798236879538192228

`record[A074987(2*(n+1))/A074987(A020639(n+2))]`
-/

namespace A210719.P798236879538192228
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074987 (2 * (n + 1)) : ℚ) / (A074987 (A020639 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210719.P798236879538192228

/-! ## A210719.P4037873792652168986

`record[A060681(2*(n+1))/A081373(A060681(2*(n+1)))]`
-/

namespace A210719.P4037873792652168986
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060681 (2 * (n + 1)) : ℚ) / (A081373 (A060681 (2 * (n + 1))).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210719.P4037873792652168986

/-! ## A210719.P1687181254706446641

`record[A074987(A320046(n+1))]`
-/

namespace A210719.P1687181254706446641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074987 (A320046 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210719.P1687181254706446641

/-! ## A210719.P13254028273178434022

`record[A074987(A028476(n+1))]`
-/

namespace A210719.P13254028273178434022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074987 (A028476 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210719.P13254028273178434022

/-!
# A210721: a(n) is the smallest trial division companion for the n-th prime number.

The programs for A210721, there is no canonical definition to state claims against.
-/

/-! ## A210721.P12724858650127894151

`A111630(A210529(n+1))`
-/

namespace A210721.P12724858650127894151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111630 (A210529 (n + 1)).toNat

end

end A210721.P12724858650127894151

/-! ## A210721.P1424263592054445665

`A111630(A210708(n+1))`
-/

namespace A210721.P1424263592054445665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111630 (A210708 (n + 1)).toNat

end

end A210721.P1424263592054445665

/-!
# A210722: Number of ways to write n = (2-(n mod 2))p+q+2^k with p, q-1, q+1 all prime, and p-1, p+1, q all practical.

The programs for A210722, there is no canonical definition to state claims against.
-/

/-! ## A210722.P4721117533339382806

`A037844(A114340(n+1)+1)`
-/

namespace A210722.P4721117533339382806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037844 (A114340 (n + 1) + 1).toNat

end

end A210722.P4721117533339382806

/-! ## A210722.P2364603255403320572

`A087436(A008862(n))+A014473(A098983(n))`
-/

namespace A210722.P2364603255403320572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A008862 n).toNat + A014473 (A098983 n).toNat

end

end A210722.P2364603255403320572

/-!
# A210724: Number of domino tilings of the 11 X n grid with upper left corner removed iff n is odd.

The programs for A210724, there is no canonical definition to state claims against.
-/

/-! ## A210724.P12035113767001547260

`A189006(eq[11, A002262(n)])`
-/

namespace A210724.P12035113767001547260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210724.P12035113767001547260

/-! ## A210724.P7508524772711977871

`A189006(eq[11, log2(A059268(n))])`
-/

namespace A210724.P7508524772711977871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059268 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A210724.P7508524772711977871

/-! ## A210724.P15311124159200211092

`A189006(eq[12, A002260(n+1)])`
-/

namespace A210724.P15311124159200211092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210724.P15311124159200211092

/-! ## A210724.P5084023787849223262

`A189006(eq[11, A025581(n)])`
-/

namespace A210724.P5084023787849223262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210724.P5084023787849223262

/-! ## A210724.P9521293818075160239

`A189006(eq[23, A099375(n)])`
-/

namespace A210724.P9521293818075160239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210724.P9521293818075160239

/-!
# A210725: Triangle read by rows: T(n,k) = number of forests of labeled rooted trees with n nodes and height at most k (n>=1, 0<=k<=n-1).

The programs for A210725, there is no canonical definition to state claims against.
-/

/-! ## A210725.P7127667102453053285

`A236396(comp[∑[n]]+1)/A003057(n+2)`
-/

namespace A210725.P7127667102453053285
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236396 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) : ℚ) / (A003057 (n + 2) : ℚ)

end

end A210725.P7127667102453053285

/-! ## A210725.P14366336558724681199

`A236396(A007401(n+1)+2)/(A003056(n)+2)`
-/

namespace A210725.P14366336558724681199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236396 (A007401 (n + 1) + 2).toNat : ℚ) / (A003056 n + 2 : ℚ)

end

end A210725.P14366336558724681199

/-!
# A210726: a(2)=1, a(3)=2; thereafter a(n) = 2a(n-1)-a(n-2)+A046919(n).

The programs for A210726, there is no canonical definition to state claims against.
-/

/-! ## A210726.P16770263576760265027

`2*a(n-1)-a(n-2)+A046919(n+2)` with `a(0)=1, a(1)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A210726.P16770263576760265027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) - a (n - 2) + A046919 (n + 2)

end

end A210726.P16770263576760265027

/-! ## A210726.P3338620926882301101

`A067434(A150070(n))`
-/

namespace A210726.P3338620926882301101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 (A150070 n).toNat

end

end A210726.P3338620926882301101

/-! ## A210726.P15911111685469869615

`∑[A003056(A060148(n))]`
-/

namespace A210726.P15911111685469869615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A060148 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210726.P15911111685469869615

/-!
# A210728: a(n) = a(n-1) + a(n-2) + n + 2 with n>1, a(0)=1, a(1)=2.

The programs for A210728, the canonical program `A210728.P14932200859899623956` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210728 has offset 0).

The definition of A210728 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+n+2` (program `A210728.P14932200859899623956`, by `A210728.P14932200859899623956.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A210728.P14932200859899623956

`a(n-1)+a(n-2)+n+2` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A210728

/-- `a(n-1)+a(n-2)+n+2` -/
def P14932200859899623956.Spec : Prop :=
  ∀ n, (P14932200859899623956.a n : ℤ) = A210728 n

theorem P14932200859899623956.correct : P14932200859899623956.Spec := by
  intro n
  simp only [A210728]

end A210728

/-! ## A210728.P17797204376578218379

`ogf((1-x+3x^2-2x^3)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A210728.P17797204376578218379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 3, -2] [1, -3, 2, 1, -1] n

end

end A210728.P17797204376578218379

namespace A210728

/-- `ogf((1-x+3x^2-2x^3)/(1-3x+2x^2+x^3-x^4))` -/
def P17797204376578218379.Spec : Prop :=
  ∀ n, P17797204376578218379.a n = A210728 n

end A210728

/-! ## A210728.P12578059610272616627

`2*n-(n-2-a(n-1)-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A210728.P12578059610272616627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 * n : ℤ) - ((n : ℤ) - 2 - a (n - 1) - a (n - 2))

end

end A210728.P12578059610272616627

namespace A210728

/-- `2*n-(n-2-a(n-1)-a(n-2))` -/
def P12578059610272616627.Spec : Prop :=
  ∀ n, P12578059610272616627.a n = A210728 n

end A210728

/-! ## A210728.P15210149204121805116

`A192762(n)+1`
-/

namespace A210728.P15210149204121805116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192762 n + 1

end

end A210728.P15210149204121805116

namespace A210728

/-- `A192762(n)+1` -/
def P15210149204121805116.Spec : Prop :=
  ∀ n, P15210149204121805116.a n = A210728 n

end A210728

/-! ## A210728.P11284615656324593285

`A192954(n)+n`
-/

namespace A210728.P11284615656324593285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192954 n + (n : ℤ)

end

end A210728.P11284615656324593285

namespace A210728

/-- `A192954(n)+n` -/
def P11284615656324593285.Spec : Prop :=
  ∀ n, P11284615656324593285.a n = A210728 n

end A210728

/-! ## A210728.P1486265446969086212

`A179991(n+1)-1`
-/

namespace A210728.P1486265446969086212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179991 (n + 1) - 1

end

end A210728.P1486265446969086212

namespace A210728

/-- `A179991(n+1)-1` -/
def P1486265446969086212.Spec : Prop :=
  ∀ n, P1486265446969086212.a n = A210728 n

end A210728

/-! ## A210728.P1405480439988569199

`∑[n]+A193044(n)+n`
-/

namespace A210728.P1405480439988569199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A193044 n + (n : ℤ))

end

end A210728.P1405480439988569199

namespace A210728

/-- `∑[n]+A193044(n)+n` -/
def P1405480439988569199.Spec : Prop :=
  ∀ n, P1405480439988569199.a n = A210728 n

end A210728

/-! ## A210728.P144927185475650783

`A168674(n+1)-(n+3)`
-/

namespace A210728.P144927185475650783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168674 (n + 1) - (n + 3 : ℤ)

end

end A210728.P144927185475650783

namespace A210728

/-- `A168674(n+1)-(n+3)` -/
def P144927185475650783.Spec : Prop :=
  ∀ n, P144927185475650783.a n = A210728 n

end A210728

/-! ## A210728.P17929322629913542615

`2*A014739(n)-(n+1)`
-/

namespace A210728.P17929322629913542615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014739 n - (n + 1 : ℤ)

end

end A210728.P17929322629913542615

namespace A210728

/-- `2*A014739(n)-(n+1)` -/
def P17929322629913542615.Spec : Prop :=
  ∀ n, P17929322629913542615.a n = A210728 n

end A210728

/-! ## A210728.P693905219898260725

`∑[2*A000032(n)-1]-2`
-/

namespace A210728.P693905219898260725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000032 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A210728.P693905219898260725

namespace A210728

/-- `∑[2*A000032(n)-1]-2` -/
def P693905219898260725.Spec : Prop :=
  ∀ n, P693905219898260725.a n = A210728 n

end A210728

/-! ## A210728.P17994914248314242349

`2*A000032(n+2)-(n+5)`
-/

namespace A210728.P17994914248314242349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000032 (n + 2) - (n + 5 : ℤ)

end

end A210728.P17994914248314242349

namespace A210728

/-- `2*A000032(n+2)-(n+5)` -/
def P17994914248314242349.Spec : Prop :=
  ∀ n, P17994914248314242349.a n = A210728 n

end A210728

/-! ## A210728.P9293061328214209945

`A030119(n)+A001911(n)`
-/

namespace A210728.P9293061328214209945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030119 n + A001911 n

end

end A210728.P9293061328214209945

namespace A210728

/-- `A030119(n)+A001911(n)` -/
def P9293061328214209945.Spec : Prop :=
  ∀ n, P9293061328214209945.a n = A210728 n

end A210728

/-! ## A210728.P10144545944894362151

`A111314(n)+A001924(n)`
-/

namespace A210728.P10144545944894362151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111314 n + A001924 n

end

end A210728.P10144545944894362151

namespace A210728

/-- `A111314(n)+A001924(n)` -/
def P10144545944894362151.Spec : Prop :=
  ∀ n, P10144545944894362151.a n = A210728 n

end A210728

/-! ## A210728.P10263907231958338899

`A193044(n)+A000096(n)`
-/

namespace A210728.P10263907231958338899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193044 n + A000096 n

end

end A210728.P10263907231958338899

namespace A210728

/-- `A193044(n)+A000096(n)` -/
def P10263907231958338899.Spec : Prop :=
  ∀ n, P10263907231958338899.a n = A210728 n

end A210728

/-! ## A210728.P16130659278486157689

`A192760(n)+A001595(n)`
-/

namespace A210728.P16130659278486157689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192760 n + A001595 n

end

end A210728.P16130659278486157689

namespace A210728

/-- `A192760(n)+A001595(n)` -/
def P16130659278486157689.Spec : Prop :=
  ∀ n, P16130659278486157689.a n = A210728 n

end A210728

/-! ## A210728.P1611242947390119735

`A192956(n)+A002062(n)`
-/

namespace A210728.P1611242947390119735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192956 n + A002062 n

end

end A210728.P1611242947390119735

namespace A210728

/-- `A192956(n)+A002062(n)` -/
def P1611242947390119735.Spec : Prop :=
  ∀ n, P1611242947390119735.a n = A210728 n

end A210728

/-! ## A210728.P4972406653761591794

`A210678(n)+A000045(n)`
-/

namespace A210728.P4972406653761591794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210678 n + A000045 n

end

end A210728.P4972406653761591794

namespace A210728

/-- `A210678(n)+A000045(n)` -/
def P4972406653761591794.Spec : Prop :=
  ∀ n, P4972406653761591794.a n = A210728 n

end A210728

/-! ## A210728.P1218539479194893179

`A210731(n)+A001611(n)`
-/

namespace A210728.P1218539479194893179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210731 n + A001611 n

end

end A210728.P1218539479194893179

namespace A210728

/-- `A210731(n)+A001611(n)` -/
def P1218539479194893179.Spec : Prop :=
  ∀ n, P1218539479194893179.a n = A210728 n

end A210728

/-! ## A210728.P7610627609077397334

`A192761(n)+A000045(n+1)`
-/

namespace A210728.P7610627609077397334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192761 n + A000045 (n + 1)

end

end A210728.P7610627609077397334

namespace A210728

/-- `A192761(n)+A000045(n+1)` -/
def P7610627609077397334.Spec : Prop :=
  ∀ n, P7610627609077397334.a n = A210728 n

end A210728

/-! ## A210728.P2936359891558499455

`A192969(n)+A000071(n+1)`
-/

namespace A210728.P2936359891558499455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192969 n + A000071 (n + 1)

end

end A210728.P2936359891558499455

namespace A210728

/-- `A192969(n)+A000071(n+1)` -/
def P2936359891558499455.Spec : Prop :=
  ∀ n, P2936359891558499455.a n = A210728 n

end A210728

/-!
# A210729: a(n) = a(n-1) + a(n-2) + n + 3 with n>1, a(0)=1, a(1)=2.

The programs for A210729, the canonical program `A210729.P10387237153455041034` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210729 has offset 0).

The definition of A210729 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+n+3` (program `A210729.P10387237153455041034`, by `A210729.P10387237153455041034.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A210729.P10387237153455041034

`a(n-1)+a(n-2)+n+3` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A210729

/-- `a(n-1)+a(n-2)+n+3` -/
def P10387237153455041034.Spec : Prop :=
  ∀ n, (P10387237153455041034.a n : ℤ) = A210729 n

theorem P10387237153455041034.correct : P10387237153455041034.Spec := by
  intro n
  simp only [A210729]

end A210729

/-! ## A210729.P12115736101997747593

`ogf((1-x+4x^2-3x^3)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A210729.P12115736101997747593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 4, -3] [1, -3, 2, 1, -1] n

end

end A210729.P12115736101997747593

namespace A210729

/-- `ogf((1-x+4x^2-3x^3)/(1-3x+2x^2+x^3-x^4))` -/
def P12115736101997747593.Spec : Prop :=
  ∀ n, P12115736101997747593.a n = A210729 n

end A210729

/-! ## A210729.P437375396544314161

`2*n-(n-3-a(n-1)-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A210729.P437375396544314161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 * n : ℤ) - ((n : ℤ) - 3 - a (n - 1) - a (n - 2))

end

end A210729.P437375396544314161

namespace A210729

/-- `2*n-(n-3-a(n-1)-a(n-2))` -/
def P437375396544314161.Spec : Prop :=
  ∀ n, P437375396544314161.a n = A210729 n

end A210729

/-! ## A210729.P6462980006423796714

`A210675(n)+1`
-/

namespace A210729.P6462980006423796714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210675 n + 1

end

end A210729.P6462980006423796714

namespace A210729

/-- `A210675(n)+1` -/
def P6462980006423796714.Spec : Prop :=
  ∀ n, P6462980006423796714.a n = A210729 n

end A210729

/-! ## A210729.P264317639416098249

`A022320(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A210729.P264317639416098249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A022320 (n - 1) + a (n - 1)

end

end A210729.P264317639416098249

namespace A210729

/-- `A022320(n-1)+a(n-1)` -/
def P264317639416098249.Spec : Prop :=
  ∀ n, P264317639416098249.a n = A210729 n

end A210729

/-! ## A210729.P472294091933202759

`A192761(n)+A001595(n)`
-/

namespace A210729.P472294091933202759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192761 n + A001595 n

end

end A210729.P472294091933202759

namespace A210729

/-- `A192761(n)+A001595(n)` -/
def P472294091933202759.Spec : Prop :=
  ∀ n, P472294091933202759.a n = A210729 n

end A210729

/-! ## A210729.P16170369982223171096

`A210677(n)+A001911(n)`
-/

namespace A210729.P16170369982223171096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210677 n + A001911 n

end

end A210729.P16170369982223171096

namespace A210729

/-- `A210677(n)+A001911(n)` -/
def P16170369982223171096.Spec : Prop :=
  ∀ n, P16170369982223171096.a n = A210729 n

end A210729

/-! ## A210729.P15791915469361929936

`A192760(n)+A111314(n)`
-/

namespace A210729.P15791915469361929936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192760 n + A111314 n

end

end A210729.P15791915469361929936

namespace A210729

/-- `A192760(n)+A111314(n)` -/
def P15791915469361929936.Spec : Prop :=
  ∀ n, P15791915469361929936.a n = A210729 n

end A210729

/-! ## A210729.P1089672389965915013

`A210673(n)+A111733(n)`
-/

namespace A210729.P1089672389965915013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210673 n + A111733 n

end

end A210729.P1089672389965915013

namespace A210729

/-- `A210673(n)+A111733(n)` -/
def P1089672389965915013.Spec : Prop :=
  ∀ n, P1089672389965915013.a n = A210729 n

end A210729

/-! ## A210729.P4549558905654485035

`A192967(n)+A168193(n)`
-/

namespace A210729.P4549558905654485035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192967 n + A168193 n

end

end A210729.P4549558905654485035

namespace A210729

/-- `A192967(n)+A168193(n)` -/
def P4549558905654485035.Spec : Prop :=
  ∀ n, P4549558905654485035.a n = A210729 n

end A210729

/-! ## A210729.P5837607010132222267

`A192960(n)-A210673(n)`
-/

namespace A210729.P5837607010132222267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192960 n - A210673 n

end

end A210729.P5837607010132222267

namespace A210729

/-- `A192960(n)-A210673(n)` -/
def P5837607010132222267.Spec : Prop :=
  ∀ n, P5837607010132222267.a n = A210729 n

end A210729

/-! ## A210729.P14296080502207737762

`∑[A022319(n)]-A022309(n)`
-/

namespace A210729.P14296080502207737762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A022309 n

end

end A210729.P14296080502207737762

namespace A210729

/-- `∑[A022319(n)]-A022309(n)` -/
def P14296080502207737762.Spec : Prop :=
  ∀ n, P14296080502207737762.a n = A210729 n

end A210729

/-! ## A210729.P13834169277168118917

`A192762(n)+A000045(n+1)`
-/

namespace A210729.P13834169277168118917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192762 n + A000045 (n + 1)

end

end A210729.P13834169277168118917

namespace A210729

/-- `A192762(n)+A000045(n+1)` -/
def P13834169277168118917.Spec : Prop :=
  ∀ n, P13834169277168118917.a n = A210729 n

end A210729

/-! ## A210729.P1282938580077617489

`A210728(n)+A000071(n+1)`
-/

namespace A210729.P1282938580077617489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210728 n + A000071 (n + 1)

end

end A210729.P1282938580077617489

namespace A210729

/-- `A210728(n)+A000071(n+1)` -/
def P1282938580077617489.Spec : Prop :=
  ∀ n, P1282938580077617489.a n = A210729 n

end A210729

/-! ## A210729.P13702541487529595147

`A192969(n)+A019274(n+1)`
-/

namespace A210729.P13702541487529595147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192969 n + A019274 (n + 1)

end

end A210729.P13702541487529595147

namespace A210729

/-- `A192969(n)+A019274(n+1)` -/
def P13702541487529595147.Spec : Prop :=
  ∀ n, P13702541487529595147.a n = A210729 n

end A210729

/-! ## A210729.P3379998075779362352

`A001911(n)+A210730(n)+1`
-/

namespace A210729.P3379998075779362352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n + (A210730 n + 1)

end

end A210729.P3379998075779362352

namespace A210729

/-- `A001911(n)+A210730(n)+1` -/
def P3379998075779362352.Spec : Prop :=
  ∀ n, P3379998075779362352.a n = A210729 n

end A210729

/-! ## A210729.P9830641422457974704

`A023548(n+1)-A001588(n)`
-/

namespace A210729.P9830641422457974704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023548 (n + 1) - A001588 n

end

end A210729.P9830641422457974704

namespace A210729

/-- `A023548(n+1)-A001588(n)` -/
def P9830641422457974704.Spec : Prop :=
  ∀ n, P9830641422457974704.a n = A210729 n

end A210729

/-! ## A210729.P14092547137774729539

`A210678(n)+A000071(n+2)`
-/

namespace A210729.P14092547137774729539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210678 n + A000071 (n + 2)

end

end A210729.P14092547137774729539

namespace A210729

/-- `A210678(n)+A000071(n+2)` -/
def P14092547137774729539.Spec : Prop :=
  ∀ n, P14092547137774729539.a n = A210729 n

end A210729

/-! ## A210729.P5404768578648680137

`A210731(n)+A000045(n+2)`
-/

namespace A210729.P5404768578648680137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210731 n + A000045 (n + 2)

end

end A210729.P5404768578648680137

namespace A210729

/-- `A210731(n)+A000045(n+2)` -/
def P5404768578648680137.Spec : Prop :=
  ∀ n, P5404768578648680137.a n = A210729 n

end A210729

/-! ## A210729.P6430886415198709891

`A210730(n)+A000071(n+3)`
-/

namespace A210729.P6430886415198709891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210730 n + A000071 (n + 3)

end

end A210729.P6430886415198709891

namespace A210729

/-- `A210730(n)+A000071(n+3)` -/
def P6430886415198709891.Spec : Prop :=
  ∀ n, P6430886415198709891.a n = A210729 n

end A210729

/-!
# A210730: a(n) = a(n-1) + a(n-2) + n + 2 with n>1, a(0)=a(1)=0.

The programs for A210730, the canonical program `A210730.P8642919871138048181` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210730 has offset 0).

The definition of A210730 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+n+2` (program `A210730.P8642919871138048181`, by `A210730.P8642919871138048181.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A210730.P8642919871138048181

`a(n-1)+a(n-2)+n+2` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A210730

/-- `a(n-1)+a(n-2)+n+2` -/
def P8642919871138048181.Spec : Prop :=
  ∀ n, (P8642919871138048181.a n : ℤ) = A210730 n

theorem P8642919871138048181.correct : P8642919871138048181.Spec := by
  intro n
  simp only [A210730]

end A210730

/-! ## A210730.P1777267656753562362

`A210677(n)-1`
-/

namespace A210730.P1777267656753562362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210677 n - 1

end

end A210730.P1777267656753562362

namespace A210730

/-- `A210677(n)-1` -/
def P1777267656753562362.Spec : Prop :=
  ∀ n, P1777267656753562362.a n = A210730 n

end A210730

/-! ## A210730.P1077621149801036804

`ogf((4x^2-3x^3)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A210730.P1077621149801036804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 4, -3] [1, -3, 2, 1, -1] n

end

end A210730.P1077621149801036804

namespace A210730

/-- `ogf((4x^2-3x^3)/(1-3x+2x^2+x^3-x^4))` -/
def P1077621149801036804.Spec : Prop :=
  ∀ n, P1077621149801036804.a n = A210730 n

end A210730

/-! ## A210730.P13599889294732402212

`1-(a(n-3)-2*a(n-1))` with `a(0)=0, a(1)=0, a(2)=4`
-/

namespace A210730.P13599889294732402212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 4] fun n a =>
  1 - (a (n - 3) - 2 * a (n - 1))

end

end A210730.P13599889294732402212

namespace A210730

/-- `1-(a(n-3)-2*a(n-1))` -/
def P13599889294732402212.Spec : Prop :=
  ∀ n, P13599889294732402212.a n = A210730 n

end A210730

/-! ## A210730.P7129615451611073716

`1-(a(n-3)-a(n-1)-a(n-1))` with `a(0)=0, a(1)=0, a(2)=4`
-/

namespace A210730.P7129615451611073716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 4] fun n a =>
  1 - (a (n - 3) - a (n - 1) - a (n - 1))

end

end A210730.P7129615451611073716

namespace A210730

/-- `1-(a(n-3)-a(n-1)-a(n-1))` -/
def P7129615451611073716.Spec : Prop :=
  ∀ n, P7129615451611073716.a n = A210730 n

end A210730

/-! ## A210730.P2498206695408276408

`A182415(n)-(n+1)`
-/

namespace A210730.P2498206695408276408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182415 n - (n + 1 : ℤ)

end

end A210730.P2498206695408276408

namespace A210730

/-- `A182415(n)-(n+1)` -/
def P2498206695408276408.Spec : Prop :=
  ∀ n, P2498206695408276408.a n = A210730 n

end A210730

/-! ## A210730.P15730764990240855175

`A192964(n)-1+n`
-/

namespace A210730.P15730764990240855175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192964 n - 1 + (n : ℤ)

end

end A210730.P15730764990240855175

namespace A210730

/-- `A192964(n)-1+n` -/
def P15730764990240855175.Spec : Prop :=
  ∀ n, P15730764990240855175.a n = A210730 n

end A210730

/-! ## A210730.P9820232038105288571

`A171237(n)-(n+2)`
-/

namespace A210730.P9820232038105288571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171237 n - (n + 2 : ℤ)

end

end A210730.P9820232038105288571

namespace A210730

/-- `A171237(n)-(n+2)` -/
def P9820232038105288571.Spec : Prop :=
  ∀ n, P9820232038105288571.a n = A210730 n

end A210730

/-! ## A210730.P3447161573760375400

`A192964(n)+A023443(n)`
-/

namespace A210730.P3447161573760375400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192964 n + A023443 n

end

end A210730.P3447161573760375400

namespace A210730

/-- `A192964(n)+A023443(n)` -/
def P3447161573760375400.Spec : Prop :=
  ∀ n, P3447161573760375400.a n = A210730 n

end A210730

/-! ## A210730.P7329880806606445633

`A192761(n)-A000045(n)`
-/

namespace A210730.P7329880806606445633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192761 n - A000045 n

end

end A210730.P7329880806606445633

namespace A210730

/-- `A192761(n)-A000045(n)` -/
def P7329880806606445633.Spec : Prop :=
  ∀ n, P7329880806606445633.a n = A210730 n

end A210730

/-! ## A210730.P12345030981548086684

`A192969(n)-A001611(n)`
-/

namespace A210730.P12345030981548086684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192969 n - A001611 n

end

end A210730.P12345030981548086684

namespace A210730

/-- `A192969(n)-A001611(n)` -/
def P12345030981548086684.Spec : Prop :=
  ∀ n, P12345030981548086684.a n = A210730 n

end A210730

/-! ## A210730.P9037912386472046281

`A192964(n)-A024000(n)`
-/

namespace A210730.P9037912386472046281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192964 n - A024000 n

end

end A210730.P9037912386472046281

namespace A210730

/-- `A192964(n)-A024000(n)` -/
def P9037912386472046281.Spec : Prop :=
  ∀ n, P9037912386472046281.a n = A210730 n

end A210730

/-! ## A210730.P4587763815810256335

`A192969(n)-(A000045(n)+1)`
-/

namespace A210730.P4587763815810256335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192969 n - (A000045 n + 1)

end

end A210730.P4587763815810256335

namespace A210730

/-- `A192969(n)-(A000045(n)+1)` -/
def P4587763815810256335.Spec : Prop :=
  ∀ n, P4587763815810256335.a n = A210730 n

end A210730

/-! ## A210730.P4721490369853408962

`A001911(n)+A192967(n)-1`
-/

namespace A210730.P4721490369853408962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n + (A192967 n - 1)

end

end A210730.P4721490369853408962

namespace A210730

/-- `A001911(n)+A192967(n)-1` -/
def P4721490369853408962.Spec : Prop :=
  ∀ n, P4721490369853408962.a n = A210730 n

end A210730

/-! ## A210730.P6952400865229708836

`A210678(n)-A000045(n+1)`
-/

namespace A210730.P6952400865229708836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210678 n - A000045 (n + 1)

end

end A210730.P6952400865229708836

namespace A210730

/-- `A210678(n)-A000045(n+1)` -/
def P6952400865229708836.Spec : Prop :=
  ∀ n, P6952400865229708836.a n = A210730 n

end A210730

/-! ## A210730.P4190606625995286928

`A210731(n)-A000071(n+1)`
-/

namespace A210730.P4190606625995286928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210731 n - A000071 (n + 1)

end

end A210730.P4190606625995286928

namespace A210730

/-- `A210731(n)-A000071(n+1)` -/
def P4190606625995286928.Spec : Prop :=
  ∀ n, P4190606625995286928.a n = A210730 n

end A210730

/-! ## A210730.P15564481060393822621

`A192979(n)-(A065220(n)+1)`
-/

namespace A210730.P15564481060393822621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192979 n - (A065220 n + 1)

end

end A210730.P15564481060393822621

namespace A210730

/-- `A192979(n)-(A065220(n)+1)` -/
def P15564481060393822621.Spec : Prop :=
  ∀ n, P15564481060393822621.a n = A210730 n

end A210730

/-! ## A210730.P8020199048511770398

`A192760(n)+A212804(n)-1`
-/

namespace A210730.P8020199048511770398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192760 n + (A212804 n - 1)

end

end A210730.P8020199048511770398

namespace A210730

/-- `A192760(n)+A212804(n)-1` -/
def P8020199048511770398.Spec : Prop :=
  ∀ n, P8020199048511770398.a n = A210730 n

end A210730

/-! ## A210730.P16276574952543532105

`A192761(n)-A212804(n+1)`
-/

namespace A210730.P16276574952543532105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192761 n - A212804 (n + 1)

end

end A210730.P16276574952543532105

namespace A210730

/-- `A192761(n)-A212804(n+1)` -/
def P16276574952543532105.Spec : Prop :=
  ∀ n, P16276574952543532105.a n = A210730 n

end A210730

/-! ## A210730.P14572928180625862755

`A210728(n)-A000045(n+2)`
-/

namespace A210730.P14572928180625862755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210728 n - A000045 (n + 2)

end

end A210730.P14572928180625862755

namespace A210730

/-- `A210728(n)-A000045(n+2)` -/
def P14572928180625862755.Spec : Prop :=
  ∀ n, P14572928180625862755.a n = A210730 n

end A210730

/-!
# A210731: a(n) = a(n-1) + a(n-2) + n + 3 with n>1, a(0) = a(1) = 0.

The programs for A210731, the canonical program `A210731.P3034951593084865433` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210731 has offset 0).

The definition of A210731 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+n+3` (program `A210731.P3034951593084865433`, by `A210731.P3034951593084865433.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A210731.P3034951593084865433

`a(n-1)+a(n-2)+n+3` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A210731

/-- `a(n-1)+a(n-2)+n+3` -/
def P3034951593084865433.Spec : Prop :=
  ∀ n, (P3034951593084865433.a n : ℤ) = A210731 n

theorem P3034951593084865433.correct : P3034951593084865433.Spec := by
  intro n
  simp only [A210731]

end A210731

/-! ## A210731.P2480017473030483545

`ogf((5x^2-4x^3)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A210731.P2480017473030483545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 5, -4] [1, -3, 2, 1, -1] n

end

end A210731.P2480017473030483545

namespace A210731

/-- `ogf((5x^2-4x^3)/(1-3x+2x^2+x^3-x^4))` -/
def P2480017473030483545.Spec : Prop :=
  ∀ n, P2480017473030483545.a n = A210731 n

end A210731

/-! ## A210731.P14187141391957943295

`1-(a(n-3)-a(n-1)-a(n-1))` with `a(0)=0, a(1)=0, a(2)=5`
-/

namespace A210731.P14187141391957943295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 5] fun n a =>
  1 - (a (n - 3) - a (n - 1) - a (n - 1))

end

end A210731.P14187141391957943295

namespace A210731

/-- `1-(a(n-3)-a(n-1)-a(n-1))` -/
def P14187141391957943295.Spec : Prop :=
  ∀ n, P14187141391957943295.a n = A210731 n

end A210731

/-! ## A210731.P10187251364017960900

`A210678(n)-1`
-/

namespace A210731.P10187251364017960900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210678 n - 1

end

end A210731.P10187251364017960900

namespace A210731

/-- `A210678(n)-1` -/
def P10187251364017960900.Spec : Prop :=
  ∀ n, P10187251364017960900.a n = A210731 n

end A210731

/-! ## A210731.P10403632270036398024

`A192956(n)-1+n`
-/

namespace A210731.P10403632270036398024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192956 n - 1 + (n : ℤ)

end

end A210731.P10403632270036398024

namespace A210731

/-- `A192956(n)-1+n` -/
def P10403632270036398024.Spec : Prop :=
  ∀ n, P10403632270036398024.a n = A210731 n

end A210731

/-! ## A210731.P3828863528327348691

`A192956(n)+A023443(n)`
-/

namespace A210731.P3828863528327348691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192956 n + A023443 n

end

end A210731.P3828863528327348691

namespace A210731

/-- `A192956(n)+A023443(n)` -/
def P3828863528327348691.Spec : Prop :=
  ∀ n, P3828863528327348691.a n = A210731 n

end A210731

/-! ## A210731.P11372753955868950630

`A192762(n)-A000045(n)`
-/

namespace A210731.P11372753955868950630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192762 n - A000045 n

end

end A210731.P11372753955868950630

namespace A210731

/-- `A192762(n)-A000045(n)` -/
def P11372753955868950630.Spec : Prop :=
  ∀ n, P11372753955868950630.a n = A210731 n

end A210731

/-! ## A210731.P14895143815016834582

`A210728(n)-A001611(n)`
-/

namespace A210731.P14895143815016834582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210728 n - A001611 n

end

end A210731.P14895143815016834582

namespace A210731

/-- `A210728(n)-A001611(n)` -/
def P14895143815016834582.Spec : Prop :=
  ∀ n, P14895143815016834582.a n = A210731 n

end A210731

/-! ## A210731.P11237947484928207803

`A001891(n)-A210673(n)`
-/

namespace A210731.P11237947484928207803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 n - A210673 n

end

end A210731.P11237947484928207803

namespace A210731

/-- `A001891(n)-A210673(n)` -/
def P11237947484928207803.Spec : Prop :=
  ∀ n, P11237947484928207803.a n = A210731 n

end A210731

/-! ## A210731.P3083474264396006352

`A192956(n)-A024000(n)`
-/

namespace A210731.P3083474264396006352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192956 n - A024000 n

end

end A210731.P3083474264396006352

namespace A210731

/-- `A192956(n)-A024000(n)` -/
def P3083474264396006352.Spec : Prop :=
  ∀ n, P3083474264396006352.a n = A210731 n

end A210731

/-! ## A210731.P8066506413236805031

`A210730(n)+A000071(n+1)`
-/

namespace A210731.P8066506413236805031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210730 n + A000071 (n + 1)

end

end A210731.P8066506413236805031

namespace A210731

/-- `A210730(n)+A000071(n+1)` -/
def P8066506413236805031.Spec : Prop :=
  ∀ n, P8066506413236805031.a n = A210731 n

end A210731

/-! ## A210731.P9888069126662513754

`A065220(n)+A111721(n)-1`
-/

namespace A210731.P9888069126662513754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n + (A111721 n - 1)

end

end A210731.P9888069126662513754

namespace A210731

/-- `A065220(n)+A111721(n)-1` -/
def P9888069126662513754.Spec : Prop :=
  ∀ n, P9888069126662513754.a n = A210731 n

end A210731

/-! ## A210731.P16520317494222235099

`A002062(n)+A192958(n)-1`
-/

namespace A210731.P16520317494222235099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 n + (A192958 n - 1)

end

end A210731.P16520317494222235099

namespace A210731

/-- `A002062(n)+A192958(n)-1` -/
def P16520317494222235099.Spec : Prop :=
  ∀ n, P16520317494222235099.a n = A210731 n

end A210731

/-! ## A210731.P15861368197154932110

`A210728(n)-(A000045(n)+1)`
-/

namespace A210731.P15861368197154932110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210728 n - (A000045 n + 1)

end

end A210731.P15861368197154932110

namespace A210731

/-- `A210728(n)-(A000045(n)+1)` -/
def P15861368197154932110.Spec : Prop :=
  ∀ n, P15861368197154932110.a n = A210731 n

end A210731

/-! ## A210731.P13081608595214185607

`A192954(n)-(A065220(n)+1)`
-/

namespace A210731.P13081608595214185607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192954 n - (A065220 n + 1)

end

end A210731.P13081608595214185607

namespace A210731

/-- `A192954(n)-(A065220(n)+1)` -/
def P13081608595214185607.Spec : Prop :=
  ∀ n, P13081608595214185607.a n = A210731 n

end A210731

/-! ## A210731.P5801792383205668784

`A179991(n+1)-A157725(n)`
-/

namespace A210731.P5801792383205668784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179991 (n + 1) - A157725 n

end

end A210731.P5801792383205668784

namespace A210731

/-- `A179991(n+1)-A157725(n)` -/
def P5801792383205668784.Spec : Prop :=
  ∀ n, P5801792383205668784.a n = A210731 n

end A210731

/-! ## A210731.P18186656376963860857

`A192761(n)+A212804(n)-1`
-/

namespace A210731.P18186656376963860857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192761 n + (A212804 n - 1)

end

end A210731.P18186656376963860857

namespace A210731

/-- `A192761(n)+A212804(n)-1` -/
def P18186656376963860857.Spec : Prop :=
  ∀ n, P18186656376963860857.a n = A210731 n

end A210731

/-! ## A210731.P14868424811900638265

`A019274(n+1)+A030119(n)-1`
-/

namespace A210731.P14868424811900638265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019274 (n + 1) + (A030119 n - 1)

end

end A210731.P14868424811900638265

namespace A210731

/-- `A019274(n+1)+A030119(n)-1` -/
def P14868424811900638265.Spec : Prop :=
  ∀ n, P14868424811900638265.a n = A210731 n

end A210731

/-! ## A210731.P11256516288777558506

`A179991(n+1)-(A001611(n)+1)`
-/

namespace A210731.P11256516288777558506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179991 (n + 1) - (A001611 n + 1)

end

end A210731.P11256516288777558506

namespace A210731

/-- `A179991(n+1)-(A001611(n)+1)` -/
def P11256516288777558506.Spec : Prop :=
  ∀ n, P11256516288777558506.a n = A210731 n

end A210731

/-! ## A210731.P1312348626678605403

`A210677(n)+A210730(n)-A030119(n)`
-/

namespace A210731.P1312348626678605403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210677 n + (A210730 n - A030119 n)

end

end A210731.P1312348626678605403

namespace A210731

/-- `A210677(n)+A210730(n)-A030119(n)` -/
def P1312348626678605403.Spec : Prop :=
  ∀ n, P1312348626678605403.a n = A210731 n

end A210731

/-!
# A210732: Numbers n for which sigma*(n)=sigma*(x)+sigma*(y), where n=x+y and sigma*(n) is the sum of the anti-divisors of n.

The programs for A210732, there is no canonical definition to state claims against.
-/

/-! ## A210732.P9158399351797128608

`lt[exp(A319826(3*(n+1))), A334032(2*n+3)]`
-/

namespace A210732.P9158399351797128608
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A319826 (3 * (n + 1)) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334032 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A210732.P9158399351797128608

/-! ## A210732.P10346858356631018220

`lt[A034693(A341916(2*n+1)), A334032(2*n+3)]`
-/

namespace A210732.P10346858356631018220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A341916 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334032 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A210732.P10346858356631018220

/-! ## A210732.P10782107541355108777

`lt[A333161(2*n+3)², A109087(n)]`
-/

namespace A210732.P10782107541355108777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333161 (2 * n + 3) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A210732.P10782107541355108777

/-! ## A210732.P6276661525195678146

`lt[A074440(A061395(2*n+3)), A109087(n)]`
-/

namespace A210732.P6276661525195678146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074440 (A061395 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A210732.P6276661525195678146

/-! ## A210732.P11957493887500738597

`eq[A254378(n+1), A329452(A014963(2*n+3))]`
-/

namespace A210732.P11957493887500738597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329452 (A014963 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A210732.P11957493887500738597

/-!
# A210735: Number of Dyck n-paths all of whose ascents and descents have prime lengths.

The programs for A210735, there is no canonical definition to state claims against.
-/

/-! ## A210735.P10002263994946935338

`A053616(A293007(n)+A061896(n))`
-/

namespace A210735.P10002263994946935338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (A293007 n + A061896 n).toNat

end

end A210735.P10002263994946935338

/-! ## A210735.P2144956048738469793

`A053616(or(A061896(n), A293007(n)))`
-/

namespace A210735.P2144956048738469793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (Int.lor (A061896 n) (A293007 n)).toNat

end

end A210735.P2144956048738469793

/-! ## A210735.P5199524541537082694

`A053616(xor(A061896(n), A293007(n)))`
-/

namespace A210735.P5199524541537082694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (Int.xor (A061896 n) (A293007 n)).toNat

end

end A210735.P5199524541537082694

/-!
# A210736: Expansion of (1 + sqrt( (1 + 2*x) / (1 - 2*x))) / 2 in powers of x.

The programs for A210736, the canonical program `A210736.P1250447749793702526` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210736 has offset 0).

The definition of A210736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210736.P16492554523705936768

`(n-1)*a(n-1)/floor(n/2)` with `a(0)=1, a(1)=1`
-/

namespace A210736.P16492554523705936768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((n : ℤ) - 1 : ℚ) * (a (n - 1) / (⌊(n : ℚ) / 2⌋ : ℚ))

end

end A210736.P16492554523705936768

namespace A210736

/-- `(n-1)*a(n-1)/floor(n/2)` -/
def P16492554523705936768.Spec : Prop :=
  ∀ n, P16492554523705936768.a n = (A210736 n : ℚ)

end A210736

/-! ## A210736.P1250447749793702526

`A001405(abs(1-n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A210736

/-- `A001405(abs(1-n))` -/
def P1250447749793702526.Spec : Prop :=
  ∀ n, P1250447749793702526.a n = A210736 n

theorem P1250447749793702526.correct : P1250447749793702526.Spec := by
  intro n
  simp only [A210736]

end A210736

/-! ## A210736.P3877204485721097308

`abs(A126930(abs(1-n)))`
-/

namespace A210736.P3877204485721097308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A126930 |1 - (n : ℤ)|.toNat)|

end

end A210736.P3877204485721097308

namespace A210736

/-- `abs(A126930(abs(1-n)))` -/
def P3877204485721097308.Spec : Prop :=
  ∀ n, P3877204485721097308.a n = A210736 n

end A210736

/-! ## A210736.P4410218744648022095

`abs(A193382(2*n+1))`
-/

namespace A210736.P4410218744648022095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A193382 (2 * n + 1)|

end

end A210736.P4410218744648022095

namespace A210736

/-- `abs(A193382(2*n+1))` -/
def P4410218744648022095.Spec : Prop :=
  ∀ n, P4410218744648022095.a n = A210736 n

end A210736

/-! ## A210736.P15597897886971266330

`A128014(n)/A040001(n)`
-/

namespace A210736.P15597897886971266330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128014 n : ℚ) / (A040001 n : ℚ)

end

end A210736.P15597897886971266330

namespace A210736

/-- `A128014(n)/A040001(n)` -/
def P15597897886971266330.Spec : Prop :=
  ∀ n, P15597897886971266330.a n = (A210736 n : ℚ)

end A210736

/-! ## A210736.P9561555398550967574

`A051920(A004273(n)-n)-1`
-/

namespace A210736.P9561555398550967574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 (A004273 n - (n : ℤ)).toNat - 1

end

end A210736.P9561555398550967574

namespace A210736

/-- `A051920(A004273(n)-n)-1` -/
def P9561555398550967574.Spec : Prop :=
  ∀ n, P9561555398550967574.a n = A210736 n

end A210736

/-! ## A210736.P7536614674455546000

`A191529(n+1)-A210628(n+1)`
-/

namespace A210736.P7536614674455546000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191529 (n + 1) - A210628 (n + 1)

end

end A210736.P7536614674455546000

namespace A210736

/-- `A191529(n+1)-A210628(n+1)` -/
def P7536614674455546000.Spec : Prop :=
  ∀ n, P7536614674455546000.a n = A210736 n

end A210736

/-! ## A210736.P921018068704131123

`ceil(A063886(n)/2)`
-/

namespace A210736.P921018068704131123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A063886 n : ℚ) / 2⌉

end

end A210736.P921018068704131123

namespace A210736

/-- `ceil(A063886(n)/2)` -/
def P921018068704131123.Spec : Prop :=
  ∀ n, P921018068704131123.a n = A210736 n

end A210736

/-! ## A210736.P15678922684660846508

`A182027(n+1)/2`
-/

namespace A210736.P15678922684660846508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182027 (n + 1) : ℚ) / 2

end

end A210736.P15678922684660846508

namespace A210736

/-- `A182027(n+1)/2` -/
def P15678922684660846508.Spec : Prop :=
  ∀ n, P15678922684660846508.a n = (A210736 n : ℚ)

end A210736

/-! ## A210736.P2875253232645945554

`A063886(n)/A036453(n+1)`
-/

namespace A210736.P2875253232645945554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063886 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A210736.P2875253232645945554

namespace A210736

/-- `A063886(n)/A036453(n+1)` -/
def P2875253232645945554.Spec : Prop :=
  ∀ n, P2875253232645945554.a n = (A210736 n : ℚ)

end A210736

/-! ## A210736.P11929734904917529667

`A063886(A000007(n)+n)/2`
-/

namespace A210736.P11929734904917529667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063886 (A000007 n + (n : ℤ)).toNat : ℚ) / 2

end

end A210736.P11929734904917529667

namespace A210736

/-- `A063886(A000007(n)+n)/2` -/
def P11929734904917529667.Spec : Prop :=
  ∀ n, P11929734904917529667.a n = (A210736 n : ℚ)

end A210736

/-! ## A210736.P1092922814938750571

`(A097331(n)+A001405(n))/2`
-/

namespace A210736.P1092922814938750571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097331 n + A001405 n : ℚ) / 2

end

end A210736.P1092922814938750571

namespace A210736

/-- `(A097331(n)+A001405(n))/2` -/
def P1092922814938750571.Spec : Prop :=
  ∀ n, P1092922814938750571.a n = (A210736 n : ℚ)

end A210736

/-! ## A210736.P6195305784641358061

`A063886(n)/A280560(2*n)`
-/

namespace A210736.P6195305784641358061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063886 n : ℚ) / (A280560 (2 * n) : ℚ)

end

end A210736.P6195305784641358061

namespace A210736

/-- `A063886(n)/A280560(2*n)` -/
def P6195305784641358061.Spec : Prop :=
  ∀ n, P6195305784641358061.a n = (A210736 n : ℚ)

end A210736

/-! ## A210736.P15583697916895577368

`A047074(n)+A063886(n)-A047073(n)`
-/

namespace A210736.P15583697916895577368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047074 n + (A063886 n - A047073 n)

end

end A210736.P15583697916895577368

namespace A210736

/-- `A047074(n)+A063886(n)-A047073(n)` -/
def P15583697916895577368.Spec : Prop :=
  ∀ n, P15583697916895577368.a n = A210736 n

end A210736

/-! ## A210736.P17937234498030793404

`A116406(n)+A116406(n)-A027306(n)`
-/

namespace A210736.P17937234498030793404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116406 n + (A116406 n - A027306 n)

end

end A210736.P17937234498030793404

namespace A210736

/-- `A116406(n)+A116406(n)-A027306(n)` -/
def P17937234498030793404.Spec : Prop :=
  ∀ n, P17937234498030793404.a n = A210736 n

end A210736

/-! ## A210736.P4139330894392082277

`A164991(n+1)-A307768(n)`
-/

namespace A210736.P4139330894392082277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164991 (n + 1) - A307768 n

end

end A210736.P4139330894392082277

namespace A210736

/-- `A164991(n+1)-A307768(n)` -/
def P4139330894392082277.Spec : Prop :=
  ∀ n, P4139330894392082277.a n = A210736 n

end A210736

/-! ## A210736.P13352446520932300415

`A001405(n)+A340568(n)-A107373(n+1)`
-/

namespace A210736.P13352446520932300415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + (A340568 n - A107373 (n + 1))

end

end A210736.P13352446520932300415

namespace A210736

/-- `A001405(n)+A340568(n)-A107373(n+1)` -/
def P13352446520932300415.Spec : Prop :=
  ∀ n, P13352446520932300415.a n = A210736 n

end A210736

/-! ## A210736.P6353149052905812401

`A152548(n)-A305612(n)`
-/

namespace A210736.P6353149052905812401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152548 n - A305612 n

end

end A210736.P6353149052905812401

namespace A210736

/-- `A152548(n)-A305612(n)` -/
def P6353149052905812401.Spec : Prop :=
  ∀ n, P6353149052905812401.a n = A210736 n

end A210736

/-! ## A210736.P7803685359850927955

`gcd(A056040(n), A305612(n))`
-/

namespace A210736.P7803685359850927955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056040 n) (A305612 n)

end

end A210736.P7803685359850927955

namespace A210736

/-- `gcd(A056040(n), A305612(n))` -/
def P7803685359850927955.Spec : Prop :=
  ∀ n, (P7803685359850927955.a n : ℤ) = A210736 n

end A210736

/-!
# A210737: Number of Dyck n-paths all of whose ascents have prime lengths.

The programs for A210737, there is no canonical definition to state claims against.
-/

/-! ## A210737.P11338274321089574608

`abs(A078570(A279559(n))-A240085(n+1))`
-/

namespace A210737.P11338274321089574608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078570 (A279559 n).toNat - A240085 (n + 1)|

end

end A210737.P11338274321089574608

/-!
# A210739: Triangle of coefficients of polynomials u(n,x) jointly generated with A210740; see the Formula section.

The programs for A210739, there is no canonical definition to state claims against.
-/

/-! ## A210739.P8512289438185210238

`A334415(A209760(n+1))+A056556(2*A194576(n+1))`
-/

namespace A210739.P8512289438185210238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334415 (A209760 (n + 1)).toNat + A056556 (2 * A194576 (n + 1)).toNat

end

end A210739.P8512289438185210238

/-! ## A210739.P7061156790329489788

`A334415(A209760(n+1))+A033922(A059268(n)²*A113025(n))`
-/

namespace A210739.P7061156790329489788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334415 (A209760 (n + 1)).toNat + A033922 (A059268 n ^ 2 * A113025 n).toNat

end

end A210739.P7061156790329489788

/-!
# A210741: Triangle of coefficients of polynomials u(n,x) jointly generated with A210742; see the Formula section.

The programs for A210741, there is no canonical definition to state claims against.
-/

/-! ## A210741.P4740732458488545707

`A210752(n+1)+A210751(n+2)-A210752(n+2)`
-/

namespace A210741.P4740732458488545707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210752 (n + 1) + (A210751 (n + 2) - A210752 (n + 2))

end

end A210741.P4740732458488545707

/-! ## A210741.P10472535256537515410

`A206800((n²+n)%A080036(n))`
-/

namespace A210741.P10472535256537515410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206800 (Int.tmod (n ^ 2 + n : ℤ) (A080036 n)).toNat

end

end A210741.P10472535256537515410

/-! ## A210741.P12121961253431582469

`A206800(A061579(n))`
-/

namespace A210741.P12121961253431582469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206800 (A061579 n).toNat

end

end A210741.P12121961253431582469

/-! ## A210741.P14279478202605556843

`A206800(A114327(n)+n)`
-/

namespace A210741.P14279478202605556843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206800 (A114327 n + (n : ℤ)).toNat

end

end A210741.P14279478202605556843

/-! ## A210741.P6887911812277948743

`A206800(∑[A198954(n)-1])`
-/

namespace A210741.P6887911812277948743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A210741.P6887911812277948743

/-! ## A210741.P15164450166562471830

`A206800(A038722(n+1)-1)`
-/

namespace A210741.P15164450166562471830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206800 (A038722 (n + 1) - 1).toNat

end

end A210741.P15164450166562471830

/-! ## A210741.P9649145797796024214

`A206800(A057944(n)+A025581(n))`
-/

namespace A210741.P9649145797796024214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206800 (A057944 n + A025581 n).toNat

end

end A210741.P9649145797796024214

/-!
# A210742: Triangle of coefficients of polynomials v(n,x) jointly generated with A210741; see the Formula section.

The programs for A210742, there is no canonical definition to state claims against.
-/

/-! ## A210742.P13985337293031458556

`A210752(n+2)-Δ[A210751(n+1)]`
-/

namespace A210742.P13985337293031458556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210752 (n + 2) - (f1 (n + 1) - f1 n)

end

end A210742.P13985337293031458556

/-! ## A210742.P5492936784299077000

`A210751(n+1)+A210752(n+2)-A210751(n+2)`
-/

namespace A210742.P5492936784299077000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210751 (n + 1) + (A210752 (n + 2) - A210751 (n + 2))

end

end A210742.P5492936784299077000

/-! ## A210742.P14717416751337395312

`A199479(A014132(n+1))`
-/

namespace A210742.P14717416751337395312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199479 (A014132 (n + 1)).toNat

end

end A210742.P14717416751337395312

/-! ## A210742.P6250981095809085793

`A199479(A002024(n+1)+1+n)`
-/

namespace A210742.P6250981095809085793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199479 (A002024 (n + 1) + 1 + (n : ℤ)).toNat

end

end A210742.P6250981095809085793

/-! ## A210742.P7952776376337116605

`A147703(A099375(n)+n)`
-/

namespace A210742.P7952776376337116605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147703 (A099375 n + (n : ℤ)).toNat

end

end A210742.P7952776376337116605

/-! ## A210742.P1458972769789564027

`A147703(A007401(A038722(n+1)))`
-/

namespace A210742.P1458972769789564027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147703 (A007401 (A038722 (n + 1)).toNat).toNat

end

end A210742.P1458972769789564027

/-! ## A210742.P3877094599035440431

`A147703(A061579(∑[A010054(n)+1]))`
-/

namespace A210742.P3877094599035440431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147703 (A061579 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A210742.P3877094599035440431

/-! ## A210742.P10957574635709505878

`A147703(A038722(n+1)+A003056(n))`
-/

namespace A210742.P10957574635709505878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147703 (A038722 (n + 1) + A003056 n).toNat

end

end A210742.P10957574635709505878

/-! ## A210742.P11048226663311541758

`A147703(A061579(n)+A002024(n+1))`
-/

namespace A210742.P11048226663311541758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147703 (A061579 n + A002024 (n + 1)).toNat

end

end A210742.P11048226663311541758

/-! ## A210742.P4845378081528570645

`A147703(A114327(n)+A007401(n+1))`
-/

namespace A210742.P4845378081528570645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147703 (A114327 n + A007401 (n + 1)).toNat

end

end A210742.P4845378081528570645

/-! ## A210742.P11530494343121739461

`A147703(A002024(n+1)+A038722(n+1)-1)`
-/

namespace A210742.P11530494343121739461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147703 (A002024 (n + 1) + (A038722 (n + 1) - 1)).toNat

end

end A210742.P11530494343121739461

/-!
# A210743: Triangle of coefficients of polynomials u(n,x) jointly generated with A210744; see the Formula section.

The programs for A210743, there is no canonical definition to state claims against.
-/

/-! ## A210743.P8583379355980808034

`A209168(n+1)+A209169(n+1)-A209139(n+1)`
-/

namespace A210743.P8583379355980808034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209168 (n + 1) + (A209169 (n + 1) - A209139 (n + 1))

end

end A210743.P8583379355980808034

/-!
# A210747: Triangle of coefficients of polynomials u(n,x) jointly generated with A210748; see the Formula section.

The programs for A210747, there is no canonical definition to state claims against.
-/

/-! ## A210747.P16584270745154979253

`A309012(A032555(n+1))+A139706(n+1)`
-/

namespace A210747.P16584270745154979253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309012 (A032555 (n + 1)).toNat + A139706 (n + 1)

end

end A210747.P16584270745154979253

/-! ## A210747.P8453233607063736662

`A309012(A032555(n+1))+A139708(n+1)`
-/

namespace A210747.P8453233607063736662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309012 (A032555 (n + 1)).toNat + A139708 (n + 1)

end

end A210747.P8453233607063736662

/-! ## A210747.P11938857795911564671

`and(A294674(A167614(n+1)), A320038(n+1))`
-/

namespace A210747.P11938857795911564671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A294674 (A167614 (n + 1)).toNat) (A320038 (n + 1))

end

end A210747.P11938857795911564671

/-!
# A210750: Triangle of coefficients of polynomials v(n,x) jointly generated with A210749; see the Formula section.

The programs for A210750, there is no canonical definition to state claims against.
-/

/-! ## A210750.P3288860930032376275

`A210738(n+1)+Δ[A210749(n+1)-A210738(n+1)]`
-/

namespace A210750.P3288860930032376275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210749 (n + 1) - A210738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210738 (n + 1) + (f1 (n + 1) - f1 n)

end

end A210750.P3288860930032376275

/-!
# A210751: Triangle of coefficients of polynomials u(n,x) jointly generated with A210752; see the Formula section.

The programs for A210751, there is no canonical definition to state claims against.
-/

/-! ## A210751.P2764757808362907398

`a(n-1)-(A210742(n)-A210752(n+1))` with `a(0)=1`
-/

namespace A210751.P2764757808362907398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A210742 n - A210752 (n + 1))

end

end A210751.P2764757808362907398

/-! ## A210751.P2829179470907833320

`A210741(n+1)+A210742(n+1)-A210752(n+1)`
-/

namespace A210751.P2829179470907833320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210741 (n + 1) + (A210742 (n + 1) - A210752 (n + 1))

end

end A210751.P2829179470907833320

/-!
# A210752: Triangle of coefficients of polynomials v(n,x) jointly generated with A210751; see the Formula section.

The programs for A210752, there is no canonical definition to state claims against.
-/

/-! ## A210752.P5399911890482172405

`A210741(n+1)+A210742(n+1)-A210751(n+1)`
-/

namespace A210752.P5399911890482172405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210741 (n + 1) + (A210742 (n + 1) - A210751 (n + 1))

end

end A210752.P5399911890482172405

/-!
# A210753: Triangle of coefficients of polynomials u(n,x) jointly generated with A210754; see the Formula section.

The programs for A210753, there is no canonical definition to state claims against.
-/

/-! ## A210753.P15128131483252237838

`A181289(n+1)+A181289(n)`
-/

namespace A210753.P15128131483252237838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181289 (n + 1) + A181289 n

end

end A210753.P15128131483252237838

/-! ## A210753.P8569668375286767878

`abs(Δ[A033999(n)*A181289(n)])`
-/

namespace A210753.P8569668375286767878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A181289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A210753.P8569668375286767878

/-! ## A210753.P12307506674053728826

`lcm(Δ[A033999(n)*A181289(n)], A057077(n))`
-/

namespace A210753.P12307506674053728826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A181289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A057077 n)

end

end A210753.P12307506674053728826

/-!
# A210754: Triangle of coefficients of polynomials v(n,x) jointly generated with A210753; see the Formula section.

The programs for A210754, there is no canonical definition to state claims against.
-/

/-! ## A210754.P10642571688688200066

`A165241(A099375(n)+n)`
-/

namespace A210754.P10642571688688200066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165241 (A099375 n + (n : ℤ)).toNat

end

end A210754.P10642571688688200066

/-! ## A210754.P2105351163477976049

`A165241(A061579(comp[∑[n]]))`
-/

namespace A210754.P2105351163477976049
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165241 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A210754.P2105351163477976049

/-! ## A210754.P2867411850599271232

`A165241(A007401(A038722(n+1)))`
-/

namespace A210754.P2867411850599271232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165241 (A007401 (A038722 (n + 1)).toNat).toNat

end

end A210754.P2867411850599271232

/-! ## A210754.P2698414046922239894

`A165241(A038722(n+1)+A003056(n))`
-/

namespace A210754.P2698414046922239894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165241 (A038722 (n + 1) + A003056 n).toNat

end

end A210754.P2698414046922239894

/-! ## A210754.P9089791262296932288

`A165241(A061579(n)+A002024(n+1))`
-/

namespace A210754.P9089791262296932288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165241 (A061579 n + A002024 (n + 1)).toNat

end

end A210754.P9089791262296932288

/-! ## A210754.P16105574058391738738

`A165241(A114327(n)+A007401(n+1))`
-/

namespace A210754.P16105574058391738738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165241 (A114327 n + A007401 (n + 1)).toNat

end

end A210754.P16105574058391738738

/-! ## A210754.P6460590815248417044

`A165241(A380649(n+1))`
-/

namespace A210754.P6460590815248417044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165241 (A380649 (n + 1)).toNat

end

end A210754.P6460590815248417044

/-!
# A210756: Triangle of coefficients of polynomials v(n,x) jointly generated with A210755; see the Formula section.

The programs for A210756, there is no canonical definition to state claims against.
-/

/-! ## A210756.P11107511055049652321

`or(A031351(A003469(n+1)), A208709(n+1))`
-/

namespace A210756.P11107511055049652321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A031351 (A003469 (n + 1)).toNat) (A208709 (n + 1))

end

end A210756.P11107511055049652321

/-!
# A210757: Primes less than 100 sorted lexicographically in decimal representation.

The programs for A210757, there is no canonical definition to state claims against.
-/

/-! ## A210757.P1713119695677879382

`p?[((n+1)/10^val(n+1, 10))%round((n+3)²/12)]`
-/

namespace A210757.P1713119695677879382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ))) (SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 12))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210757.P1713119695677879382

/-! ## A210757.P13015184570728393043

`p?[A119589(n+1)]`
-/

namespace A210757.P13015184570728393043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210757.P13015184570728393043

/-! ## A210757.P1239169605483695258

`p?[A004151(n+8)]`
-/

namespace A210757.P1239169605483695258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210757.P1239169605483695258

/-! ## A210757.P1973495984373595716

`p?[A004719(n+8)]`
-/

namespace A210757.P1973495984373595716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210757.P1973495984373595716

/-!
# A210758: Primes less than 1000 sorted lexicographically in decimal representation.

The programs for A210758, the canonical program `A210758.P479195184108449843` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210758 has offset 1).

The definition of A210758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210758.P479195184108449843

`p?[A004151(n+99)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A210758

/-- `p?[A004151(n+99)]` -/
def P479195184108449843.Spec : Prop :=
  ∀ n, P479195184108449843.a n = A210758 (n + 1)

theorem P479195184108449843.correct : P479195184108449843.Spec := by
  intro n
  simp only [A210758, Nat.add_sub_cancel]

end A210758

/-! ## A210758.P9882984624370106683

`p?[A004086(A004086(n+99))]`
-/

namespace A210758.P9882984624370106683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A004086 (n + 99)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210758.P9882984624370106683

namespace A210758

/-- `p?[A004086(A004086(n+99))]` -/
def P9882984624370106683.Spec : Prop :=
  ∀ n, P9882984624370106683.a n = A210758 (n + 1)

end A210758

/-! ## A210758.P16129932476261984755

`p?[A190016(n+2)%A190016(n+1)]`
-/

namespace A210758.P16129932476261984755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190016 (n + 2)) (A190016 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210758.P16129932476261984755

namespace A210758

/-- `p?[A190016(n+2)%A190016(n+1)]` -/
def P16129932476261984755.Spec : Prop :=
  ∀ n, P16129932476261984755.a n = A210758 (n + 1)

end A210758

/-!
# A210759: Primes less than 10000 sorted lexicographically in decimal representation.

The programs for A210759, there is no canonical definition to state claims against.
-/

/-! ## A210759.P5403129350102042706

`p?[A190016(n+1)]`
-/

namespace A210759.P5403129350102042706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210759.P5403129350102042706

/-! ## A210759.P6995628810819510522

`∏{p}[p?[A190016(A028310(n))], #]`
-/

namespace A210759.P6995628810819510522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190016 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A210759.P6995628810819510522

/-! ## A210759.P5460255151021417738

`filter[A190016(n+1), A010051(#)]`
-/

namespace A210759.P5460255151021417738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A210759.P5460255151021417738

/-! ## A210759.P9063495437947422595

`filter[A190016(n+2), A080339(#)]`
-/

namespace A210759.P9063495437947422595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190016 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A210759.P9063495437947422595

/-! ## A210759.P10334912034820318100

`A016813(n)%2*p?[A190016(A028310(n))]`
-/

namespace A210759.P10334912034820318100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190016 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016813 n) 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210759.P10334912034820318100

/-! ## A210759.P15783851445107456644

`A082285(n)%2*p?[A190016(A028310(n))]`
-/

namespace A210759.P15783851445107456644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190016 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082285 n) 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210759.P15783851445107456644

/-! ## A210759.P6875562610653265049

`A283983(2*n)²%2*p?[A190016(A028310(n))]`
-/

namespace A210759.P6875562610653265049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190016 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283983 (2 * n) ^ 2) 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210759.P6875562610653265049

/-! ## A210759.P6593080156311607064

`A005408((2-n)²)%2*p?[A190016(A028310(n))]`
-/

namespace A210759.P6593080156311607064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190016 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 ((2 - (n : ℤ)) ^ 2).toNat) 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210759.P6593080156311607064

/-!
# A210760: Primes less than 100000 sorted lexicographically in decimal representation.

The programs for A210760, there is no canonical definition to state claims against.
-/

/-! ## A210760.P4637968036690167370

`p?[A283891(n+1)]^A287022(n)`
-/

namespace A210760.P4637968036690167370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283891 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A287022 n : ℤ)

end

end A210760.P4637968036690167370

/-! ## A210760.P3226878927311122493

`p?[A283892(n+1)]^A287022(n)`
-/

namespace A210760.P3226878927311122493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283892 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A287022 n : ℤ)

end

end A210760.P3226878927311122493

/-!
# A210763: Tetrahedron T(j,n,k) in which the slice j is a finite triangle read by rows T(n,k) which lists the sums of the columns of the modular table of partitions with n shells.

The programs for A210763, there is no canonical definition to state claims against.
-/

/-! ## A210763.P5132868310236179265

`A134024(Δ[A024662(n)]*A024662(n+1))`
-/

namespace A210763.P5132868310236179265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134024 ((f1 (n + 1) - f1 n) * A024662 (n + 1)).toNat

end

end A210763.P5132868310236179265

/-! ## A210763.P10392095681247923335

`A330665(or(A190564(n+1), A353859(n+3)))`
-/

namespace A210763.P10392095681247923335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330665 (Int.lor (A190564 (n + 1)) (A353859 (n + 3))).toNat

end

end A210763.P10392095681247923335

/-! ## A210763.P4584964259392736447

`A329312(A002264(2*(n+2))%A107592(n+3))`
-/

namespace A210763.P4584964259392736447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329312 (Int.tmod (A002264 (2 * (n + 2))) (A107592 (n + 3))).toNat

end

end A210763.P4584964259392736447

/-! ## A210763.P7849338450225002317

`A124768(4*A072894(2*(n+1)))`
-/

namespace A210763.P7849338450225002317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (4 * A072894 (2 * (n + 1))).toNat

end

end A210763.P7849338450225002317

/-! ## A210763.P16148357674191892981

`a(A340379(A128761(n)))+val(n, 3)` with `a(0)=1`
-/

namespace A210763.P16148357674191892981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A340379 (A128761 n).toNat).toNat + SequenceMachineLib.valuation n 3

end

end A210763.P16148357674191892981

/-!
# A210764: Square array T(n,k), n>=0, k>=0, read by antidiagonals in which column k gives the partial sums of column k of A144064.

The programs for A210764, there is no canonical definition to state claims against.
-/

/-! ## A210764.P612722473677977852

`A091186(n)-A107846(A058343(n)*A107846(n))`
-/

namespace A210764.P612722473677977852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091186 n - A107846 (A058343 n * A107846 n).toNat

end

end A210764.P612722473677977852

/-! ## A210764.P1574357684380819276

`A091186(n)-A103589(A207619(n+1))`
-/

namespace A210764.P1574357684380819276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091186 n - A103589 (A207619 (n + 1)).toNat

end

end A210764.P1574357684380819276

/-! ## A210764.P12782258772134282453

`A091186(n)-A326291(A160519(n+1))`
-/

namespace A210764.P12782258772134282453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091186 n - A326291 (A160519 (n + 1)).toNat

end

end A210764.P12782258772134282453

/-! ## A210764.P15465226744415223572

`lcm(A091186(n), A324924(A286463(2*n+1)))`
-/

namespace A210764.P15465226744415223572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A091186 n) (A324924 (A286463 (2 * n + 1)).toNat)

end

end A210764.P15465226744415223572

/-! ## A210764.P13903531274445178784

`A000034(A228963(n+1))*A091186(n)`
-/

namespace A210764.P13903531274445178784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A228963 (n + 1)).toNat * A091186 n

end

end A210764.P13903531274445178784

/-!
# A210765: Triangle read by rows in which row n lists the number of partitions of n together with n-1 ones.

The programs for A210765, there is no canonical definition to state claims against.
-/

/-! ## A210765.P6746733731944580016

`A046054(round(sqrt(2*n))*char[∑[n]]+1)`
-/

namespace A210765.P6746733731944580016
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046054 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 1).toNat

end

end A210765.P6746733731944580016

/-! ## A210765.P15858771097840355203

`A194439(3-A167407(n))`
-/

namespace A210765.P15858771097840355203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194439 (3 - A167407 n).toNat

end

end A210765.P15858771097840355203

/-! ## A210765.P2776083760250392783

`A194439(A130296(n+1)+2)`
-/

namespace A210765.P2776083760250392783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194439 (A130296 (n + 1) + 2).toNat

end

end A210765.P2776083760250392783

/-! ## A210765.P8983636848361412393

`A213086(A193592(n)+comp[∑[n]])`
-/

namespace A210765.P8983636848361412393
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213086 (A193592 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A210765.P8983636848361412393

/-! ## A210765.P17597439784235832897

`A286622(char[∑[n+1]]*A023758(n+1))`
-/

namespace A210765.P17597439784235832897
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286622 (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A023758 (n + 1)).toNat

end

end A210765.P17597439784235832897

/-! ## A210765.P10016253195169158208

`A286622(A089633(n*A010054(n)))`
-/

namespace A210765.P10016253195169158208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286622 (A089633 ((n : ℤ) * A010054 n).toNat).toNat

end

end A210765.P10016253195169158208

/-! ## A210765.P8656106402157279618

`A286617(A010054(n)*A023758(n+1))`
-/

namespace A210765.P8656106402157279618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286617 (A010054 n * A023758 (n + 1)).toNat

end

end A210765.P8656106402157279618

/-! ## A210765.P906643183359813163

`A000041(A073424(n)*A324019(n+2))`
-/

namespace A210765.P906643183359813163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A073424 n * A324019 (n + 2)).toNat

end

end A210765.P906643183359813163

/-! ## A210765.P15584491463365281071

`A286535(A023758(n+1)%A130321(n))`
-/

namespace A210765.P15584491463365281071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286535 (Int.tmod (A023758 (n + 1)) (A130321 n)).toNat

end

end A210765.P15584491463365281071

/-! ## A210765.P12375297613425788501

`A000041(A130296(n+1))%p?[A238531(n)]`
-/

namespace A210765.P12375297613425788501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A130296 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A210765.P12375297613425788501

/-! ## A210765.P2628301877778297995

`A000041(A130296(n+1)^A322361(n+1))`
-/

namespace A210765.P2628301877778297995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((A130296 (n + 1) : ℚ) ^ (A322361 (n + 1) : ℤ))).toNat

end

end A210765.P2628301877778297995

/-! ## A210765.P7353445988471543015

`A000041(A130296(n+1)^A330749(n+1))`
-/

namespace A210765.P7353445988471543015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((A130296 (n + 1) : ℚ) ^ (A330749 (n + 1) : ℤ))).toNat

end

end A210765.P7353445988471543015

/-! ## A210765.P6840293228704911001

`A000041(A130296(n+1))^A340365(n+1)`
-/

namespace A210765.P6840293228704911001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (A130296 (n + 1)).toNat : ℚ) ^ (A340365 (n + 1) : ℤ)

end

end A210765.P6840293228704911001

/-! ## A210765.P18197999854502358899

`A000041(A130296(n+1)%A332530(n+1))`
-/

namespace A210765.P18197999854502358899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.tmod (A130296 (n + 1)) (A332530 (n + 1))).toNat

end

end A210765.P18197999854502358899

/-! ## A210765.P16779705867658419749

`A000041(A130296(n+1))*A168185(A019546(n+1))`
-/

namespace A210765.P16779705867658419749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A130296 (n + 1)).toNat * A168185 (A019546 (n + 1)).toNat

end

end A210765.P16779705867658419749

/-! ## A210765.P8582476854558924313

`A000041(A066182(n+1)-A002260(∑[n+2]-1))`
-/

namespace A210765.P8582476854558924313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A066182 (n + 1) - A002260 (∑ j ∈ Finset.range (n + 1), f1 j - 1)).toNat

end

end A210765.P8582476854558924313

/-! ## A210765.P18078390376911846136

`A000041(gcd(A130296(n+1), A283666(n+1)))`
-/

namespace A210765.P18078390376911846136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.gcd (A130296 (n + 1)) (A283666 (n + 1)))

end

end A210765.P18078390376911846136

/-! ## A210765.P10388973527578245050

`A000041(A130296(n+1))^A002024(A007318(n))`
-/

namespace A210765.P10388973527578245050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (A130296 (n + 1)).toNat : ℚ) ^ (A002024 (A007318 n).toNat : ℤ)

end

end A210765.P10388973527578245050

/-! ## A210765.P9038057995440537214

`gcd(A056594(A286815(n)), A317533(n+1))`
-/

namespace A210765.P9038057995440537214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056594 (A286815 n).toNat) (A317533 (n + 1))

end

end A210765.P9038057995440537214

/-! ## A210765.P17753221752637122219

`A340785(A099627(n))`
-/

namespace A210765.P17753221752637122219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340785 (A099627 n).toNat

end

end A210765.P17753221752637122219

/-!
# A210766: Number of 8-hoops with n symbols and no a-rooted trees.

The programs for A210766, the canonical program `A210766.P6743243549929174346` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210766 has offset 1).

The definition of A210766 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A210766.P6743243549929174346

`(n+1)*((n+1)*((n+1)*((n+1)*((n+1)*((n+1)*((n-7)*(n+1)+36)-92)+155)-148)+88)/16-1)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A210766

/-- `(n+1)*((n+1)*((n+1)*((n+1)*((n+1)*((n+1)*((n-7)*(n+1)+36)-92)+155)-148)+88)/16-1)` -/
def P6743243549929174346.Spec : Prop :=
  ∀ n, P6743243549929174346.a n = (A210766 (n + 1) : ℚ)

end A210766

/-!
# A210767: Numbers whose digit sum as well as sum of the 4th powers of the digits is a prime.

The programs for A210767, there is no canonical definition to state claims against.
-/

/-! ## A210767.P8792146177406563133

`∩[A072099(n+1), A227823(n+1)]`
-/

namespace A210767.P8792146177406563133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210767.P8792146177406563133

/-! ## A210767.P16810866228893878928

`∩[A227823(n+1), A229300(n+1)]`
-/

namespace A210767.P16810866228893878928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210767.P16810866228893878928

/-! ## A210767.P2631234574264045042

`∩[A227823(n+1), A352486(n+1)]`
-/

namespace A210767.P2631234574264045042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210767.P2631234574264045042

/-! ## A210767.P4096688170735008999

`∩[A227823(n+1), A052382(n+2)]`
-/

namespace A210767.P4096688170735008999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210767.P4096688170735008999

/-! ## A210767.P3816931127510872101

`∩[A227823(n+1), A067251(n+2)]`
-/

namespace A210767.P3816931127510872101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210767.P3816931127510872101

/-!
# A210770: a(1) = 1, a(2) = 2; for n > 1, a(2*n+2) = smallest number not yet seen, a(2*n+1) = a(2*n) + a(2*n+2).

The programs for A210770, there is no canonical definition to state claims against.
-/

/-! ## A210770.P9172761532685907280

`A002264(A095720(3*n+4)%A095751(2*(n+1)))`
-/

namespace A210770.P9172761532685907280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.tmod (A095720 (3 * n + 4)) (A095751 (2 * (n + 1)))).toNat

end

end A210770.P9172761532685907280

/-! ## A210770.P11964649500754225574

`A002264(A095720(3*n+4))%A095746(3*n+4)`
-/

namespace A210770.P11964649500754225574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002264 (A095720 (3 * n + 4)).toNat) (A095746 (3 * n + 4))

end

end A210770.P11964649500754225574

/-!
# A210771: Inverse permutation to A210770.

The programs for A210771, there is no canonical definition to state claims against.
-/

/-! ## A210771.P17178841214831737884

`A000034(A010753(n))*A004396(n+1)`
-/

namespace A210771.P17178841214831737884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A010753 n).toNat * A004396 (n + 1)

end

end A210771.P17178841214831737884

/-! ## A210771.P10267087242227162490

`A022303(A134126(n+1))*A157685(2*n+3)`
-/

namespace A210771.P10267087242227162490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022303 (A134126 (n + 1)).toNat * A157685 (2 * n + 3)

end

end A210771.P10267087242227162490

/-! ## A210771.P498649123901904546

`A064786(n+1)-A008683(A001793(n+1))`
-/

namespace A210771.P498649123901904546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064786 (n + 1) - A008683 (A001793 (n + 1)).toNat

end

end A210771.P498649123901904546

/-! ## A210771.P5202998843216888131

`A186421(A153351(n+1)%(A300397(n+1)+1))`
-/

namespace A210771.P5202998843216888131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186421 (Int.tmod (A153351 (n + 1)) (A300397 (n + 1) + 1)).toNat

end

end A210771.P5202998843216888131

/-!
# A210772: Number of partitions of 2^n into powers of 2 less than or equal to 8.

The programs for A210772, the canonical program `A210772.P8754564599079475200` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210772 has offset 0).

The definition of A210772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210772.P8754564599079475200

`C(a(A008683(A005117(n))²)^(n-2)+3, 3)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A210772

/-- `C(a(A008683(A005117(n))²)^(n-2)+3, 3)` -/
def P8754564599079475200.Spec : Prop :=
  ∀ n, (P8754564599079475200.a n : ℤ) = A210772 n

theorem P8754564599079475200.correct : P8754564599079475200.Spec := by
  intro n
  simp only [A210772]

end A210772

/-! ## A210772.P18099834876982709201

`A152977(∑[n+3]+n+3)`
-/

namespace A210772.P18099834876982709201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152977 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A210772.P18099834876982709201

namespace A210772

/-- `A152977(∑[n+3]+n+3)` -/
def P18099834876982709201.Spec : Prop :=
  ∀ n, P18099834876982709201.a n = A210772 n

end A210772

/-! ## A210772.P2265288164911287522

`record[gcd(A152977(n), A262553(n+3))]`
-/

namespace A210772.P2265288164911287522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A152977 n) (A262553 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210772.P2265288164911287522

namespace A210772

/-- `record[gcd(A152977(n), A262553(n+3))]` -/
def P2265288164911287522.Spec : Prop :=
  ∀ n, (P2265288164911287522.a n : ℤ) = A210772 n

end A210772

/-! ## A210772.P14673154845804986196

`A008804(floor(2^(n-1)))`
-/

namespace A210772.P14673154845804986196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

end

end A210772.P14673154845804986196

namespace A210772

/-- `A008804(floor(2^(n-1)))` -/
def P14673154845804986196.Spec : Prop :=
  ∀ n, P14673154845804986196.a n = A210772 n

end A210772

/-! ## A210772.P7202833679954006099

`A160790(∑[ceil(2^(n-2))])`
-/

namespace A210772.P7202833679954006099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160790 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A210772.P7202833679954006099

namespace A210772

/-- `A160790(∑[ceil(2^(n-2))])` -/
def P7202833679954006099.Spec : Prop :=
  ∀ n, P7202833679954006099.a n = A210772 n

end A210772

/-!
# A210773: Number of partitions of 2^n into powers of 2 less than or equal to 16.

The programs for A210773, there is no canonical definition to state claims against.
-/

/-! ## A210773.P14837256349310984836

`A152977(∑[n+5]+5)`
-/

namespace A210773.P14837256349310984836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152977 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A210773.P14837256349310984836

/-! ## A210773.P2245085059207858896

`record[A152977(n)^A103452(n+4)]`
-/

namespace A210773.P2245085059207858896
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152977 n : ℚ) ^ (A103452 (n + 4) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210773.P2245085059207858896

/-! ## A210773.P12382669822516884901

`gcd(A151878(n), A152977(A052905(n+2)))`
-/

namespace A210773.P12382669822516884901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151878 n) (A152977 (A052905 (n + 2)).toNat)

end

end A210773.P12382669822516884901

/-! ## A210773.P11984651025454836396

`or(A151909(n), A152977(A052905(n+2)))`
-/

namespace A210773.P11984651025454836396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151909 n) (A152977 (A052905 (n + 2)).toNat)

end

end A210773.P11984651025454836396

/-! ## A210773.P9928374027851458413

`A088932(floor(2^(n-1)))`
-/

namespace A210773.P9928374027851458413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088932 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

end

end A210773.P9928374027851458413

/-!
# A210774: Number of partitions of 2^n into powers of 2 less than or equal to 32.

The programs for A210774, there is no canonical definition to state claims against.
-/

/-! ## A210774.P11782746123374977170

`record[A152977(A055999(n))]`
-/

namespace A210774.P11782746123374977170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152977 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210774.P11782746123374977170

/-! ## A210774.P4667217473074112645

`A152977(A055999(n+3))`
-/

namespace A210774.P4667217473074112645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152977 (A055999 (n + 3)).toNat

end

end A210774.P4667217473074112645

/-! ## A210774.P12951620623560232795

`A152977(A134227(n+4))`
-/

namespace A210774.P12951620623560232795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152977 (A134227 (n + 4)).toNat

end

end A210774.P12951620623560232795

/-! ## A210774.P10466387558101661182

`A152977(A056119(n)+15)`
-/

namespace A210774.P10466387558101661182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152977 (A056119 n + 15).toNat

end

end A210774.P10466387558101661182

/-! ## A210774.P5080651244690626801

`A152977(Δ[A023551(n+1)])`
-/

namespace A210774.P5080651244690626801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152977 (f1 (n + 1) - f1 n).toNat

end

end A210774.P5080651244690626801

/-!
# A210775: Number of partitions of 2^n into powers of 2 less than or equal to 64.

The programs for A210775, there is no canonical definition to state claims against.
-/

/-! ## A210775.P10227916879241746124

`A152977(eq[6, A025581(n)])`
-/

namespace A210775.P10227916879241746124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210775.P10227916879241746124

/-! ## A210775.P2642830628593441836

`A152977(eq[7, A195663(n)])`
-/

namespace A210775.P2642830628593441836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210775.P2642830628593441836

/-! ## A210775.P13225722326743784350

`A152977(eq[13, A099375(n)])`
-/

namespace A210775.P13225722326743784350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210775.P13225722326743784350

/-! ## A210775.P512542613198836741

`A152977(eq[64, A130321(n)])`
-/

namespace A210775.P512542613198836741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210775.P512542613198836741

/-! ## A210775.P1945005992479607050

`A152977(eq[7, A004736(n+1)])`
-/

namespace A210775.P1945005992479607050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210775.P1945005992479607050

/-!
# A210776: Number of partitions of 2^n into powers of 2 less than or equal to 128.

The programs for A210776, there is no canonical definition to state claims against.
-/

/-! ## A210776.P10752392098249864394

`A152977(eq[7, A025581(n)])`
-/

namespace A210776.P10752392098249864394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210776.P10752392098249864394

/-! ## A210776.P18425295544441140486

`A152977(eq[8, A193739(n)])`
-/

namespace A210776.P18425295544441140486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210776.P18425295544441140486

/-! ## A210776.P2535866504363855997

`A152977(eq[8, A195663(n)])`
-/

namespace A210776.P2535866504363855997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210776.P2535866504363855997

/-! ## A210776.P18180346957628779567

`A152977(eq[15, A099375(n)])`
-/

namespace A210776.P18180346957628779567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210776.P18180346957628779567

/-! ## A210776.P6014133006000902573

`A152977(eq[8, A004736(n+1)])`
-/

namespace A210776.P6014133006000902573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210776.P6014133006000902573

/-!
# A210777: Number of partitions of 2^n into powers of 2 less than or equal to 256.

The programs for A210777, there is no canonical definition to state claims against.
-/

/-! ## A210777.P4384722572069189405

`A152977(eq[8, A025581(n)])`
-/

namespace A210777.P4384722572069189405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210777.P4384722572069189405

/-! ## A210777.P14340876116860078747

`A152977(eq[9, A195663(n)])`
-/

namespace A210777.P14340876116860078747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210777.P14340876116860078747

/-! ## A210777.P6020248635666873792

`A152977(eq[17, A099375(n)])`
-/

namespace A210777.P6020248635666873792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210777.P6020248635666873792

/-! ## A210777.P3343655650159901166

`A152977(eq[9, A004736(n+1)])`
-/

namespace A210777.P3343655650159901166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210777.P3343655650159901166

/-! ## A210777.P17454188591539651505

`A152977(A112353(n+1)+n)`
-/

namespace A210777.P17454188591539651505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152977 (A112353 (n + 1) + (n : ℤ)).toNat

end

end A210777.P17454188591539651505

/-!
# A210778: Number of partitions of 2^n into powers of 2 less than or equal to 512.

The programs for A210778, there is no canonical definition to state claims against.
-/

/-! ## A210778.P12782269762812685607

`A152977(A056000(n+6))`
-/

namespace A210778.P12782269762812685607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152977 (A056000 (n + 6)).toNat

end

end A210778.P12782269762812685607

/-! ## A210778.P5694880837437250587

`A152977(eq[9, A025581(n)])`
-/

namespace A210778.P5694880837437250587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210778.P5694880837437250587

/-! ## A210778.P854798658968714879

`A152977(eq[10, A195663(n)])`
-/

namespace A210778.P854798658968714879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210778.P854798658968714879

/-! ## A210778.P2536461999757629825

`A152977(eq[19, A099375(n)])`
-/

namespace A210778.P2536461999757629825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210778.P2536461999757629825

/-! ## A210778.P14773646988690014612

`A152977(eq[10, A004736(n+1)])`
-/

namespace A210778.P14773646988690014612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210778.P14773646988690014612

/-!
# A210779: Number of partitions of 2^n into powers of 2 less than or equal to 1024.

The programs for A210779, there is no canonical definition to state claims against.
-/

/-! ## A210779.P3793796341995273345

`A152977(eq[10, A025581(n)])`
-/

namespace A210779.P3793796341995273345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210779.P3793796341995273345

/-! ## A210779.P13263160836650804824

`record[A125790(A345703(n+3)+n)]`
-/

namespace A210779.P13263160836650804824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125790 (A345703 (n + 3) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210779.P13263160836650804824

/-! ## A210779.P18335641982695090412

`A178798(A005252(n))+A002577(n)`
-/

namespace A210779.P18335641982695090412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A005252 n).toNat + A002577 n

end

end A210779.P18335641982695090412

/-! ## A210779.P2252663476714844781

`A002577(n)-A046660(A022185(n))`
-/

namespace A210779.P2252663476714844781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002577 n - A046660 (A022185 n).toNat

end

end A210779.P2252663476714844781

/-! ## A210779.P4934064419753996597

`A002577(n)-A127708(A000041(n))`
-/

namespace A210779.P4934064419753996597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002577 n - A127708 (A000041 n).toNat

end

end A210779.P4934064419753996597

/-!
# A210780: Number of n X n 1..4 arrays with no element with value z exactly a city block distance of z from another element with value z.

The programs for A210780, there is no canonical definition to state claims against.
-/

/-! ## A210780.P7029073262397560113

`A210788(∑[4*n]+1)`
-/

namespace A210780.P7029073262397560113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210788 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A210780.P7029073262397560113

/-!
# A210781: Number of n X 1 1..4 arrays with no element with value z exactly a city block distance of z from another element with value z.

The programs for A210781, there is no canonical definition to state claims against.
-/

/-! ## A210781.P18327098621735465697

`A210788(∑[n]+1)`
-/

namespace A210781.P18327098621735465697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210788 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A210781.P18327098621735465697

/-! ## A210781.P17025399321102888555

`record[A010054(n)*A210788(n+1)]`
-/

namespace A210781.P17025399321102888555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A210788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210781.P17025399321102888555

/-! ## A210781.P9515808855396146361

`record[A103451(n)*A210788(n+1)]`
-/

namespace A210781.P9515808855396146361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A210788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210781.P9515808855396146361

/-! ## A210781.P12147379824387950687

`record[A176224(n)*A210788(n+1)]`
-/

namespace A210781.P12147379824387950687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176224 n * A210788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210781.P12147379824387950687

/-! ## A210781.P14588196072026993619

`record[A210788(n+1)/A193632(n)]`
-/

namespace A210781.P14588196072026993619
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210788 (n + 1) : ℚ) / (A193632 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210781.P14588196072026993619

/-!
# A210782: Number of nX2 1..4 arrays with no element with value z exactly a city block distance of z from another element with value z.

The programs for A210782, there is no canonical definition to state claims against.
-/

/-! ## A210782.P13797717816344514722

`A210788(∑[n+1]+2)`
-/

namespace A210782.P13797717816344514722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210788 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A210782.P13797717816344514722

/-! ## A210782.P10899794187840355884

`record[A010054(n)*A210788(n+2)]`
-/

namespace A210782.P10899794187840355884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A210788 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210782.P10899794187840355884

/-! ## A210782.P18063127473587967775

`record[root(A210788(n+2), A059268(n))]`
-/

namespace A210782.P18063127473587967775
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210788 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210782.P18063127473587967775

/-! ## A210782.P11056153573642084040

`record[gcd(A210788(n+2), A244131(n))]`
-/

namespace A210782.P11056153573642084040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A210788 (n + 2)) (A244131 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210782.P11056153573642084040

/-! ## A210782.P15617954402285017066

`record[root(A210788(n+2), A002260(n+1))]`
-/

namespace A210782.P15617954402285017066
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210788 (n + 2) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210782.P15617954402285017066

/-!
# A210783: Number of nX3 1..4 arrays with no element with value z exactly a city block distance of z from another element with value z.

The programs for A210783, there is no canonical definition to state claims against.
-/

/-! ## A210783.P11426724006038234026

`A210788(∑[n+2]+4)`
-/

namespace A210783.P11426724006038234026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210788 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A210783.P11426724006038234026

/-! ## A210783.P4112277384837407546

`A210788(A167614(n+1))+A064459(n)`
-/

namespace A210783.P4112277384837407546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210788 (A167614 (n + 1)).toNat + A064459 n

end

end A210783.P4112277384837407546

/-! ## A210783.P14253226986606226138

`A210788(A167614(n+1))+A184955(n)`
-/

namespace A210783.P14253226986606226138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210788 (A167614 (n + 1)).toNat + A184955 n

end

end A210783.P14253226986606226138

/-! ## A210783.P7623010485496159061

`A281155(n)+A210788(A167614(n+1))`
-/

namespace A210783.P7623010485496159061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281155 n + A210788 (A167614 (n + 1)).toNat

end

end A210783.P7623010485496159061

/-! ## A210783.P12630400039699168024

`A155050(n)*A210788(A167614(n+1))`
-/

namespace A210783.P12630400039699168024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155050 n * A210788 (A167614 (n + 1)).toNat

end

end A210783.P12630400039699168024

/-!
# A210784: Number of nX4 1..4 arrays with no element with value z exactly a city block distance of z from another element with value z.

The programs for A210784, there is no canonical definition to state claims against.
-/

/-! ## A210784.P5594749532397265411

`A210788(A374004(n+1))`
-/

namespace A210784.P5594749532397265411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210788 (A374004 (n + 1)).toNat

end

end A210784.P5594749532397265411

/-! ## A210784.P1294111746809010115

`A210788(A141214(n)+7)`
-/

namespace A210784.P1294111746809010115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210788 (A141214 n + 7).toNat

end

end A210784.P1294111746809010115

/-! ## A210784.P18171089063165801781

`A210788(A052905(n)+9)`
-/

namespace A210784.P18171089063165801781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210788 (A052905 n + 9).toNat

end

end A210784.P18171089063165801781

/-! ## A210784.P4065702408464585163

`A210788(A055999(n)+10)`
-/

namespace A210784.P4065702408464585163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210788 (A055999 n + 10).toNat

end

end A210784.P4065702408464585163

/-! ## A210784.P11281592781331786537

`A210788(eq[5, A066657(n)])`
-/

namespace A210784.P11281592781331786537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210784.P11281592781331786537

/-!
# A210785: Number of nX5 1..4 arrays with no element with value z exactly a city block distance of z from another element with value z.

The programs for A210785, there is no canonical definition to state claims against.
-/

/-! ## A210785.P17916553382724154709

`A210788(A374005(n+1))`
-/

namespace A210785.P17916553382724154709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210788 (A374005 (n + 1)).toNat

end

end A210785.P17916553382724154709

/-! ## A210785.P14337292269209566549

`A210788(A167499(n+3))`
-/

namespace A210785.P14337292269209566549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210788 (A167499 (n + 3)).toNat

end

end A210785.P14337292269209566549

/-! ## A210785.P11048117116916511059

`A210788(A077169(n+5))`
-/

namespace A210785.P11048117116916511059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210788 (A077169 (n + 5)).toNat

end

end A210785.P11048117116916511059

/-! ## A210785.P4552388538438047963

`A210788(A155212(n)+13)`
-/

namespace A210785.P4552388538438047963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210788 (A155212 n + 13).toNat

end

end A210785.P4552388538438047963

/-! ## A210785.P14830186133364735301

`A210788(A056000(n)+15)`
-/

namespace A210785.P14830186133364735301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210788 (A056000 n + 15).toNat

end

end A210785.P14830186133364735301

/-!
# A210786: Number of nX6 1..4 arrays with no element with value z exactly a city block distance of z from another element with value z.

The programs for A210786, there is no canonical definition to state claims against.
-/

/-! ## A210786.P12639646830778619067

`A210788(A374007(n+1))`
-/

namespace A210786.P12639646830778619067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210788 (A374007 (n + 1)).toNat

end

end A210786.P12639646830778619067

/-! ## A210786.P400544542494370541

`A210788(A056115(n)+21)`
-/

namespace A210786.P400544542494370541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210788 (A056115 n + 21).toNat

end

end A210786.P400544542494370541

/-! ## A210786.P4275635210910407793

`A210788(A167499(n+4)+1)`
-/

namespace A210786.P4275635210910407793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210788 (A167499 (n + 4) + 1).toNat

end

end A210786.P4275635210910407793

/-! ## A210786.P9639990099432149466

`A210788(A077169(n+6)+1)`
-/

namespace A210786.P9639990099432149466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210788 (A077169 (n + 6) + 1).toNat

end

end A210786.P9639990099432149466

/-!
# A210787: Number of nX7 1..4 arrays with no element with value z exactly a city block distance of z from another element with value z.

The programs for A210787, there is no canonical definition to state claims against.
-/

/-! ## A210787.P16070954893290469174

`A210788(A374008(n+1))`
-/

namespace A210787.P16070954893290469174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210788 (A374008 (n + 1)).toNat

end

end A210787.P16070954893290469174

/-!
# A210788: T(n,k)=Number of nXk 1..4 arrays with no element with value z exactly a city block distance of z from another element with value z.

The programs for A210788, there is no canonical definition to state claims against.
-/

/-! ## A210788.P16889435214337898874

`A055086(A077333(n+1))-n`
-/

namespace A210788.P16889435214337898874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A077333 (n + 1)).toNat - (n : ℤ)

end

end A210788.P16889435214337898874

/-!
# A210789: Triangle of coefficients of polynomials u(n,x) jointly generated with A210790; see the Formula section.

The programs for A210789, there is no canonical definition to state claims against.
-/

/-! ## A210789.P14510118389242217969

`(A210805(n+1)+A210797(n+1))/2`
-/

namespace A210789.P14510118389242217969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210805 (n + 1) + A210797 (n + 1) : ℚ) / 2

end

end A210789.P14510118389242217969

/-! ## A210789.P12456072181579990218

`A210805(n+1)+A014682(A210797(n+1)-A210805(n+1))`
-/

namespace A210789.P12456072181579990218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210805 (n + 1) + A014682 (A210797 (n + 1) - A210805 (n + 1)).toNat

end

end A210789.P12456072181579990218

/-! ## A210789.P9179198953495009784

`A014682(A210805(n+1)+A210797(n+1))`
-/

namespace A210789.P9179198953495009784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A210805 (n + 1) + A210797 (n + 1)).toNat

end

end A210789.P9179198953495009784

/-! ## A210789.P8533103224726448668

`A210805(n+1)+A004525(A210797(n+1)-A210805(n+1))`
-/

namespace A210789.P8533103224726448668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210805 (n + 1) + A004525 (A210797 (n + 1) - A210805 (n + 1)).toNat

end

end A210789.P8533103224726448668

/-! ## A210789.P12211860099990225962

`A210805(n+1)+A025480(A210797(n+1)-A210805(n+1))`
-/

namespace A210789.P12211860099990225962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210805 (n + 1) + A025480 (A210797 (n + 1) - A210805 (n + 1)).toNat

end

end A210789.P12211860099990225962

/-! ## A210789.P6030869788547446110

`A210805(n+1)+A029578(A210797(n+1)-A210805(n+1))`
-/

namespace A210789.P6030869788547446110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210805 (n + 1) + A029578 (A210797 (n + 1) - A210805 (n + 1)).toNat

end

end A210789.P6030869788547446110

/-! ## A210789.P10068601789807455065

`A210805(n+1)+A078898(A210797(n+1)-A210805(n+1))`
-/

namespace A210789.P10068601789807455065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210805 (n + 1) + A078898 (A210797 (n + 1) - A210805 (n + 1)).toNat

end

end A210789.P10068601789807455065

/-! ## A210789.P12024996296828400797

`∑{d}[A210805(n+1)+A210797(n+1)+1, A349136(#)]-1`
-/

namespace A210789.P12024996296828400797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210805 (n + 1) + A210797 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A349136 d - 1

end

end A210789.P12024996296828400797

/-! ## A210789.P5719331899007823191

`A004525(A210805(n+1)+A210797(n+1))`
-/

namespace A210789.P5719331899007823191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A210805 (n + 1) + A210797 (n + 1)).toNat

end

end A210789.P5719331899007823191

/-! ## A210789.P11145292267325819664

`A004526(A210805(n+1)+A210797(n+1))`
-/

namespace A210789.P11145292267325819664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A210805 (n + 1) + A210797 (n + 1)).toNat

end

end A210789.P11145292267325819664

/-!
# A210790: Triangle of coefficients of polynomials v(n,x) jointly generated with A210789; see the Formula section.

The programs for A210790, there is no canonical definition to state claims against.
-/

/-! ## A210790.P17934442359128849267

`(A210806(n+1)+A210798(n+1))/2`
-/

namespace A210790.P17934442359128849267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210806 (n + 1) + A210798 (n + 1) : ℚ) / 2

end

end A210790.P17934442359128849267

/-! ## A210790.P762270690354057891

`A210806(n+1)+A014682(A210798(n+1)-A210806(n+1))`
-/

namespace A210790.P762270690354057891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210806 (n + 1) + A014682 (A210798 (n + 1) - A210806 (n + 1)).toNat

end

end A210790.P762270690354057891

/-! ## A210790.P2433380894257022638

`A014682(A210806(n+1)+A210798(n+1))`
-/

namespace A210790.P2433380894257022638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A210806 (n + 1) + A210798 (n + 1)).toNat

end

end A210790.P2433380894257022638

/-! ## A210790.P13952685374589715765

`A210806(n+1)+A004525(A210798(n+1)-A210806(n+1))`
-/

namespace A210790.P13952685374589715765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210806 (n + 1) + A004525 (A210798 (n + 1) - A210806 (n + 1)).toNat

end

end A210790.P13952685374589715765

/-! ## A210790.P9552477697419713166

`A210806(n+1)+A025480(A210798(n+1)-A210806(n+1))`
-/

namespace A210790.P9552477697419713166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210806 (n + 1) + A025480 (A210798 (n + 1) - A210806 (n + 1)).toNat

end

end A210790.P9552477697419713166

/-! ## A210790.P2857112354881745875

`A210806(n+1)+A029578(A210798(n+1)-A210806(n+1))`
-/

namespace A210790.P2857112354881745875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210806 (n + 1) + A029578 (A210798 (n + 1) - A210806 (n + 1)).toNat

end

end A210790.P2857112354881745875

/-! ## A210790.P7620668757349429618

`A210806(n+1)+A078898(A210798(n+1)-A210806(n+1))`
-/

namespace A210790.P7620668757349429618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210806 (n + 1) + A078898 (A210798 (n + 1) - A210806 (n + 1)).toNat

end

end A210790.P7620668757349429618

/-! ## A210790.P12899027935016947651

`A325642(A210806(n+1)+A210798(n+1))`
-/

namespace A210790.P12899027935016947651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325642 (A210806 (n + 1) + A210798 (n + 1)).toNat

end

end A210790.P12899027935016947651

/-! ## A210790.P9671614707914271389

`A004525(A210806(n+1)+A210798(n+1))`
-/

namespace A210790.P9671614707914271389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A210806 (n + 1) + A210798 (n + 1)).toNat

end

end A210790.P9671614707914271389

/-! ## A210790.P7930423424570727132

`A004526(A210806(n+1)+A210798(n+1))`
-/

namespace A210790.P7930423424570727132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A210806 (n + 1) + A210798 (n + 1)).toNat

end

end A210790.P7930423424570727132

/-!
# A210792: Triangle of coefficients of polynomials v(n,x) jointly generated with A210791; see the Formula section.

The programs for A210792, there is no canonical definition to state claims against.
-/

/-! ## A210792.P16165452944807159655

`A242453(A072248(n+2))`
-/

namespace A210792.P16165452944807159655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242453 (A072248 (n + 2)).toNat

end

end A210792.P16165452944807159655

/-! ## A210792.P7463495279121723999

`A329534(A208932(n+1)+1)`
-/

namespace A210792.P7463495279121723999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329534 (A208932 (n + 1) + 1).toNat

end

end A210792.P7463495279121723999

/-! ## A210792.P14314184405706683863

`A346127(A141689(n+1)+A002262(n))`
-/

namespace A210792.P14314184405706683863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346127 (A141689 (n + 1) + A002262 n).toNat

end

end A210792.P14314184405706683863

/-!
# A210795: Triangle of coefficients of polynomials u(n,x) jointly generated with A210796; see the Formula section.

The programs for A210795, there is no canonical definition to state claims against.
-/

/-! ## A210795.P14019015395303329096

`A072660(floor(π*(3/2)^n))-A002260(n+1)`
-/

namespace A210795.P14019015395303329096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072660 ⌊Real.pi * (((3 : ℚ) / 2) ^ n : ℝ)⌋.toNat - A002260 (n + 1)

end

end A210795.P14019015395303329096

/-! ## A210795.P3219835184992341609

`A088519(A063007(n)+Δ[A137594(n)])`
-/

namespace A210795.P3219835184992341609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088519 (A063007 n + (f1 (n + 1) - f1 n)).toNat

end

end A210795.P3219835184992341609

/-! ## A210795.P4230116866929037153

`A054521(A018280(n+1))+A051601(n)`
-/

namespace A210795.P4230116866929037153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (A018280 (n + 1)).toNat + A051601 n

end

end A210795.P4230116866929037153

/-! ## A210795.P4996384905404740066

`A122285(n)+A069288(A057151(n+1))`
-/

namespace A210795.P4996384905404740066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122285 n + A069288 (A057151 (n + 1)).toNat

end

end A210795.P4996384905404740066

/-!
# A210796: Triangle of coefficients of polynomials v(n,x) jointly generated with A210795; see the Formula section.

The programs for A210796, there is no canonical definition to state claims against.
-/

/-! ## A210796.P1139151506156987174

`A210790(comp[∑[n]]+1)-A210789(n+1)`
-/

namespace A210796.P1139151506156987174
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210790 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) - A210789 (n + 1)

end

end A210796.P1139151506156987174

/-!
# A210797: Triangle of coefficients of polynomials u(n,x) jointly generated with A210798; see the Formula section.

The programs for A210797, there is no canonical definition to state claims against.
-/

/-! ## A210797.P3540978250584681786

`2*A210789(n+1)-A210805(n+1)`
-/

namespace A210797.P3540978250584681786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210789 (n + 1) - A210805 (n + 1)

end

end A210797.P3540978250584681786

/-! ## A210797.P1931490828504276495

`A210805(n+1)+A005843(A210789(n+1)-A210805(n+1))`
-/

namespace A210797.P1931490828504276495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210805 (n + 1) + A005843 (A210789 (n + 1) - A210805 (n + 1)).toNat

end

end A210797.P1931490828504276495

/-! ## A210797.P16853230974444386906

`A004277(A210789(n+1))-A210805(n+1)`
-/

namespace A210797.P16853230974444386906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A210789 (n + 1)).toNat - A210805 (n + 1)

end

end A210797.P16853230974444386906

/-! ## A210797.P8142358189532332032

`floor(A198454(A208761(n+1))/2)`
-/

namespace A210797.P8142358189532332032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198454 (A208761 (n + 1)).toNat : ℚ) / 2⌋

end

end A210797.P8142358189532332032

/-! ## A210797.P9330120119176376329

`A285548(n+1)+A010891(A057468(n+4))`
-/

namespace A210797.P9330120119176376329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285548 (n + 1) + A010891 (A057468 (n + 4)).toNat

end

end A210797.P9330120119176376329

/-!
# A210798: Triangle of coefficients of polynomials v(n,x) jointly generated with A210797; see the Formula section.

The programs for A210798, there is no canonical definition to state claims against.
-/

/-! ## A210798.P2570772214100590727

`2*A210790(n+1)-A210806(n+1)`
-/

namespace A210798.P2570772214100590727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210790 (n + 1) - A210806 (n + 1)

end

end A210798.P2570772214100590727

/-! ## A210798.P11544395369057243561

`A210790(n+1)+A210790(n+2)-A210789(n+2)`
-/

namespace A210798.P11544395369057243561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210790 (n + 1) + (A210790 (n + 2) - A210789 (n + 2))

end

end A210798.P11544395369057243561

/-! ## A210798.P2451292339393734679

`A004277(A210790(n+1))-A210806(n+1)`
-/

namespace A210798.P2451292339393734679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A210790 (n + 1)).toNat - A210806 (n + 1)

end

end A210798.P2451292339393734679

