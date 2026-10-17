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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
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
import Seq.B007.C000
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
# A224600: Number of (n+2)X4 0..2 matrices with each 3X3 subblock idempotent.

The programs for A224600, there is no canonical definition to state claims against.
-/

/-! ## A224600.P10668725341135562359

`A224606(∑[n+1]+2)`
-/

namespace A224600.P10668725341135562359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224606 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A224600.P10668725341135562359

/-! ## A224600.P16771846409529748337

`abs(A224606(A022856(n+5))-2)+2`
-/

namespace A224600.P16771846409529748337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A224606 (A022856 (n + 5)).toNat - 2| + 2

end

end A224600.P16771846409529748337

/-! ## A224600.P3194122514434708836

`or(char[2], A224606(A000217(n+1)+2))`
-/

namespace A224600.P3194122514434708836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A224606 (A000217 (n + 1) + 2).toNat)

end

end A224600.P3194122514434708836

/-! ## A224600.P5829284797715011113

`A224606(A022856(n+5))+A000038(n+1)`
-/

namespace A224600.P5829284797715011113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224606 (A022856 (n + 5)).toNat + A000038 (n + 1)

end

end A224600.P5829284797715011113

/-! ## A224600.P2008698061837953125

`A224606(A022856(n+5))%A031877(n+1)`
-/

namespace A224600.P2008698061837953125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224606 (A022856 (n + 5)).toNat) (A031877 (n + 1))

end

end A224600.P2008698061837953125

/-! ## A224600.P13118922647598366926

`A224606(A000217(n+1)+2)+A139608(n)%2`
-/

namespace A224600.P13118922647598366926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224606 (A000217 (n + 1) + 2).toNat + Int.tmod (A139608 n) 2

end

end A224600.P13118922647598366926

/-! ## A224600.P10103558927996712763

`A007318(C(2, n))*A224606(A000217(n+1)+2)`
-/

namespace A224600.P10103558927996712763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A224606 (A000217 (n + 1) + 2).toNat

end

end A224600.P10103558927996712763

/-! ## A224600.P17942367062988708040

`A000041(and(1, -n))*A224606(A000217(n+1)+2)`
-/

namespace A224600.P17942367062988708040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.land 1 (-(n : ℤ))).toNat * A224606 (A000217 (n + 1) + 2).toNat

end

end A224600.P17942367062988708040

/-! ## A224600.P2320003379920450963

`and(1, A007318(n))!*A224606(A000217(n+1)+2)`
-/

namespace A224600.P2320003379920450963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.land 1 (A007318 n)).toNat : ℤ) * A224606 (A000217 (n + 1) + 2).toNat

end

end A224600.P2320003379920450963

/-!
# A224601: Number of (n+2)X5 0..2 matrices with each 3X3 subblock idempotent.

The programs for A224601, there is no canonical definition to state claims against.
-/

/-! ## A224601.P8958289455046801777

`A224606(∑[n+2]+4)`
-/

namespace A224601.P8958289455046801777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224606 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224601.P8958289455046801777

/-! ## A224601.P12011681069009318268

`or(char[1], A224606(A167614(n+1)))`
-/

namespace A224601.P12011681069009318268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A224606 (A167614 (n + 1)).toNat)

end

end A224601.P12011681069009318268

/-! ## A224601.P15518323561603898363

`or(char[1], A224606(A055998(n)+6))`
-/

namespace A224601.P15518323561603898363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A224606 (A055998 n + 6).toNat)

end

end A224601.P15518323561603898363

/-! ## A224601.P15220447255118020280

`and(1, n)!*A224606(A167499(n)+n)`
-/

namespace A224601.P15220447255118020280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.land 1 n) : ℤ) * A224606 (A167499 n + (n : ℤ)).toNat

end

end A224601.P15220447255118020280

/-! ## A224601.P18261208808304379350

`or(A000007(n), A224606(A167499(n)+n))`
-/

namespace A224601.P18261208808304379350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A224606 (A167499 n + (n : ℤ)).toNat)

end

end A224601.P18261208808304379350

/-! ## A224601.P13692320952223158964

`A007318(C(2, n))*A224606(A167614(n+1))`
-/

namespace A224601.P13692320952223158964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A224606 (A167614 (n + 1)).toNat

end

end A224601.P13692320952223158964

/-! ## A224601.P17018735559078043249

`A224606(A167614(n+1))/A007318(C(n, 2))`
-/

namespace A224601.P17018735559078043249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224606 (A167614 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A224601.P17018735559078043249

/-! ## A224601.P11741592808526029642

`A224606(A167614(n+1))%A000032(n+14)`
-/

namespace A224601.P11741592808526029642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224606 (A167614 (n + 1)).toNat) (A000032 (n + 14))

end

end A224601.P11741592808526029642

/-! ## A224601.P15296732661143025549

`A224606(A167614(n+1))+∑{d}[n+2, A008683(#)]`
-/

namespace A224601.P15296732661143025549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224606 (A167614 (n + 1)).toNat + ∑ d ∈ Nat.divisors (f1 n), A008683 d

end

end A224601.P15296732661143025549

/-! ## A224601.P8906684220845212246

`A007318(A014963(2*(n+1)))*A224606(A167614(n+1))`
-/

namespace A224601.P8906684220845212246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A014963 (2 * (n + 1))).toNat * A224606 (A167614 (n + 1)).toNat

end

end A224601.P8906684220845212246

/-!
# A224602: Number of (n+2) X 6 0..2 matrices with each 3 X 3 subblock idempotent.

The programs for A224602, there is no canonical definition to state claims against.
-/

/-! ## A224602.P12099217293095042114

`A224606(∑[n+3]+7)`
-/

namespace A224602.P12099217293095042114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224606 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A224602.P12099217293095042114

/-! ## A224602.P6445925311979232182

`or(char[1], A224606(A000217(n+3)+4))`
-/

namespace A224602.P6445925311979232182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A224606 (A000217 (n + 3) + 4).toNat)

end

end A224602.P6445925311979232182

/-! ## A224602.P16773246625953959317

`record[A224606(A000217(abs(1-n)+1)+4)]`
-/

namespace A224602.P16773246625953959317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224606 (A000217 (|1 - (n : ℤ)| + 1).toNat + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224602.P16773246625953959317

/-! ## A224602.P17360861885659170732

`abs(2-A224606(A034856(n+2)+6))+2`
-/

namespace A224602.P17360861885659170732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A224606 (A034856 (n + 2) + 6).toNat| + 2

end

end A224602.P17360861885659170732

/-! ## A224602.P5718081775181255156

`A007318(C(2, n))*A224606(A000217(n+3)+4)`
-/

namespace A224602.P5718081775181255156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A224606 (A000217 (n + 3) + 4).toNat

end

end A224602.P5718081775181255156

/-! ## A224602.P137282033287452821

`A224606(A000217(n+3)+4)+A008683(4*(n+1))`
-/

namespace A224602.P137282033287452821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224606 (A000217 (n + 3) + 4).toNat + A008683 (4 * (n + 1))

end

end A224602.P137282033287452821

/-! ## A224602.P13451215583515535075

`A014963(4*n+10)*A224606(A000217(n+3)+4)`
-/

namespace A224602.P13451215583515535075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 10) * A224606 (A000217 (n + 3) + 4).toNat

end

end A224602.P13451215583515535075

/-! ## A224602.P15687840565665880923

`A000041(C(2, n+2))*A224606(A000217(n+3)+4)`
-/

namespace A224602.P15687840565665880923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A224606 (A000217 (n + 3) + 4).toNat

end

end A224602.P15687840565665880923

/-! ## A224602.P13388591538121240791

`A000108(C(2, n+2))*A224606(A000217(n+3)+4)`
-/

namespace A224602.P13388591538121240791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A224606 (A000217 (n + 3) + 4).toNat

end

end A224602.P13388591538121240791

/-! ## A224602.P2342041123635622748

`A007318(and(2, n-2))*A224606(A000217(n+3)+4)`
-/

namespace A224602.P2342041123635622748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 2 ((n : ℤ) - 2)).toNat * A224606 (A000217 (n + 3) + 4).toNat

end

end A224602.P2342041123635622748

/-!
# A224603: Number of (n+2) X 7 0..2 matrices with each 3 X 3 subblock idempotent.

The programs for A224603, there is no canonical definition to state claims against.
-/

/-! ## A224603.P10872699988505032906

`A224606(A374005(n+1))`
-/

namespace A224603.P10872699988505032906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224606 (A374005 (n + 1)).toNat

end

end A224603.P10872699988505032906

/-! ## A224603.P15741876629189586316

`A224606(A167499(n+3))`
-/

namespace A224603.P15741876629189586316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224606 (A167499 (n + 3)).toNat

end

end A224603.P15741876629189586316

/-! ## A224603.P6735702173767988960

`A224606(A155212(n)+13)`
-/

namespace A224603.P6735702173767988960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224606 (A155212 n + 13).toNat

end

end A224603.P6735702173767988960

/-! ## A224603.P15849546783966042484

`A224606(A056000(n)+15)`
-/

namespace A224603.P15849546783966042484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224606 (A056000 n + 15).toNat

end

end A224603.P15849546783966042484

/-! ## A224603.P9554372951633306213

`A224606(A167614(n+3)+2)`
-/

namespace A224603.P9554372951633306213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224606 (A167614 (n + 3) + 2).toNat

end

end A224603.P9554372951633306213

/-!
# A224604: Number of (n+2) X 8 0..2 matrices with each 3 X 3 subblock idempotent.

The programs for A224604, there is no canonical definition to state claims against.
-/

/-! ## A224604.P4380634442278980942

`A224606(C(n+7, 2)-n)`
-/

namespace A224604.P4380634442278980942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224606 (Nat.choose (n + 7) 2 - n)

end

end A224604.P4380634442278980942

/-! ## A224604.P4775408343840296466

`A224606(A374007(n+1))`
-/

namespace A224604.P4775408343840296466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224606 (A374007 (n + 1)).toNat

end

end A224604.P4775408343840296466

/-! ## A224604.P12308655786577273451

`A224606(A166136(n+4))`
-/

namespace A224604.P12308655786577273451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224606 (A166136 (n + 4)).toNat

end

end A224604.P12308655786577273451

/-! ## A224604.P11882454736159595201

`A224606(A056115(n)+21)`
-/

namespace A224604.P11882454736159595201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224606 (A056115 n + 21).toNat

end

end A224604.P11882454736159595201

/-! ## A224604.P3169203758520301172

`A224606(A167499(n+4)+1)`
-/

namespace A224604.P3169203758520301172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224606 (A167499 (n + 4) + 1).toNat

end

end A224604.P3169203758520301172

/-!
# A224605: Number of (n+2) X 9 0..2 matrices with each 3 X 3 subblock idempotent.

The programs for A224605, there is no canonical definition to state claims against.
-/

/-! ## A224605.P10797257476119265918

`A224606(A374008(n+1))`
-/

namespace A224605.P10797257476119265918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224606 (A374008 (n + 1)).toNat

end

end A224605.P10797257476119265918

/-! ## A224605.P3403908310540340930

`A224606(A167487(n+5))`
-/

namespace A224605.P3403908310540340930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224606 (A167487 (n + 5)).toNat

end

end A224605.P3403908310540340930

/-! ## A224605.P10700690330676022764

`A224606(A056119(n)+28)`
-/

namespace A224605.P10700690330676022764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224606 (A056119 n + 28).toNat

end

end A224605.P10700690330676022764

/-! ## A224605.P12044790410354850334

`A224606(A167614(n+5)+4)`
-/

namespace A224605.P12044790410354850334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224606 (A167614 (n + 5) + 4).toNat

end

end A224605.P12044790410354850334

/-! ## A224605.P13081781840733431610

`A224606(A000124(n+6)+6)`
-/

namespace A224605.P13081781840733431610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224606 (A000124 (n + 6) + 6).toNat

end

end A224605.P13081781840733431610

/-!
# A224607: a(n) = A219331(n^2).

The programs for A224607, there is no canonical definition to state claims against.
-/

/-! ## A224607.P501901409584140469

`A219331((n+1)²)`
-/

namespace A224607.P501901409584140469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219331 ((n + 1) ^ 2)

end

end A224607.P501901409584140469

/-! ## A224607.P4340736147490537723

`record[A219331(A133310(n)²)]`
-/

namespace A224607.P4340736147490537723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219331 (A133310 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224607.P4340736147490537723

/-! ## A224607.P13260645362660877906

`record[A219331(A157128(n)²)]`
-/

namespace A224607.P13260645362660877906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219331 (A157128 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224607.P13260645362660877906

/-! ## A224607.P13151463571802920995

`record[A219331(A020703(n+1))]`
-/

namespace A224607.P13151463571802920995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219331 (A020703 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224607.P13151463571802920995

/-! ## A224607.P13421376742372249788

`record[A219331(A055461(n+1))]`
-/

namespace A224607.P13421376742372249788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219331 (A055461 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224607.P13421376742372249788

/-!
# A224608: G.f.: exp( Sum_{n>=1} A219331(n^2)*x^n/n ).

The programs for A224608, there is no canonical definition to state claims against.
-/

/-! ## A224608.P6920112358324003242

`A241411(A001970(n))+A052893(n)`
-/

namespace A224608.P6920112358324003242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241411 (A001970 n).toNat + A052893 n

end

end A224608.P6920112358324003242

/-! ## A224608.P16273542432685116917

`A218965(A001465(n))+A218919(n)`
-/

namespace A224608.P16273542432685116917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218965 (A001465 n).toNat + A218919 n

end

end A224608.P16273542432685116917

/-!
# A224609: Smallest j such that 2*j*prime(n)^3-1 is prime.

The programs for A224609, there is no canonical definition to state claims against.
-/

/-! ## A224609.P14857952976564428513

`A001281(A238848(p?[A072229(n)]))`
-/

namespace A224609.P14857952976564428513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A238848 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A224609.P14857952976564428513

/-! ## A224609.P13754501055107258767

`A001281(A238848(p?[A004280(n+1)]))`
-/

namespace A224609.P13754501055107258767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A238848 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A224609.P13754501055107258767

/-!
# A224610: Smallest j such that j*2*prime(n)^3-1 and j*2*prime(n)*q^2-1 are prime.

The programs for A224610, there is no canonical definition to state claims against.
-/

/-! ## A224610.P4093426340320078801

`A285514(A087299(n))`
-/

namespace A224610.P4093426340320078801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285514 (A087299 n).toNat

end

end A224610.P4093426340320078801

/-! ## A224610.P11990049560173397425

`A141256(A222050(n)+8)`
-/

namespace A224610.P11990049560173397425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141256 (A222050 n + 8).toNat

end

end A224610.P11990049560173397425

/-!
# A224613: a(n) = sigma(6*n).

The programs for A224613, the canonical program `A224613.P2416963953117958660` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224613 has offset 1).

The definition of A224613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224613.P2416963953117958660

`∑{d}[6*(n+1), #]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A224613

/-- `∑{d}[6*(n+1), #]` -/
def P2416963953117958660.Spec : Prop :=
  ∀ n, (P2416963953117958660.a n : ℤ) = A224613 (n + 1)

theorem P2416963953117958660.correct : P2416963953117958660.Spec := by
  intro n
  simp only [A224613, Nat.add_sub_cancel]

end A224613

/-! ## A224613.P5083964264052453916

`A000203(6*(n+1))`
-/

namespace A224613.P5083964264052453916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (6 * (n + 1))

end

end A224613.P5083964264052453916

namespace A224613

/-- `A000203(6*(n+1))` -/
def P5083964264052453916.Spec : Prop :=
  ∀ n, P5083964264052453916.a n = A224613 (n + 1)

end A224613

/-! ## A224613.P15569476256201389391

`∑{d}[A016969(n)+1, #]%A075730(n+1)`
-/

namespace A224613.P15569476256201389391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) (A075730 (n + 1))

end

end A224613.P15569476256201389391

namespace A224613

/-- `∑{d}[A016969(n)+1, #]%A075730(n+1)` -/
def P15569476256201389391.Spec : Prop :=
  ∀ n, P15569476256201389391.a n = A224613 (n + 1)

end A224613

/-! ## A224613.P9282460781505136058

`A000203(A016969(n)+1)%A179645(n+1)`
-/

namespace A224613.P9282460781505136058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A016969 n + 1).toNat) (A179645 (n + 1))

end

end A224613.P9282460781505136058

namespace A224613

/-- `A000203(A016969(n)+1)%A179645(n+1)` -/
def P9282460781505136058.Spec : Prop :=
  ∀ n, P9282460781505136058.a n = A224613 (n + 1)

end A224613

/-! ## A224613.P2456303712990110272

`A000203(A008588(n+1))%A044397(n+1)`
-/

namespace A224613.P2456303712990110272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A008588 (n + 1)).toNat) (A044397 (n + 1))

end

end A224613.P2456303712990110272

namespace A224613

/-- `A000203(A008588(n+1))%A044397(n+1)` -/
def P2456303712990110272.Spec : Prop :=
  ∀ n, P2456303712990110272.a n = A224613 (n + 1)

end A224613

/-! ## A224613.P4254035018966119995

`A062731(3*(n+1))`
-/

namespace A224613.P4254035018966119995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062731 (3 * (n + 1))

end

end A224613.P4254035018966119995

namespace A224613

/-- `A062731(3*(n+1))` -/
def P4254035018966119995.Spec : Prop :=
  ∀ n, P4254035018966119995.a n = A224613 (n + 1)

end A224613

/-! ## A224613.P3285767773913823210

`A144613(2*(n+1))`
-/

namespace A224613.P3285767773913823210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144613 (2 * (n + 1))

end

end A224613.P3285767773913823210

namespace A224613

/-- `A144613(2*(n+1))` -/
def P3285767773913823210.Spec : Prop :=
  ∀ n, P3285767773913823210.a n = A224613 (n + 1)

end A224613

/-! ## A224613.P15059625702666745970

`A046913(2*(n+1))*A088838(n+1)`
-/

namespace A224613.P15059625702666745970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046913 (2 * (n + 1)) * A088838 (n + 1)

end

end A224613.P15059625702666745970

namespace A224613

/-- `A046913(2*(n+1))*A088838(n+1)` -/
def P15059625702666745970.Spec : Prop :=
  ∀ n, P15059625702666745970.a n = A224613 (n + 1)

end A224613

/-! ## A224613.P4075472264513694065

`A272027(2*(n+1))+A046913(2*(n+1))`
-/

namespace A224613.P4075472264513694065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272027 (2 * (n + 1)) + A046913 (2 * (n + 1))

end

end A224613.P4075472264513694065

namespace A224613

/-- `A272027(2*(n+1))+A046913(2*(n+1))` -/
def P4075472264513694065.Spec : Prop :=
  ∀ n, P4075472264513694065.a n = A224613 (n + 1)

end A224613

/-! ## A224613.P12722213268788557820

`A074400(A008588(n+1))/2`
-/

namespace A224613.P12722213268788557820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (A008588 (n + 1)).toNat : ℚ) / 2

end

end A224613.P12722213268788557820

namespace A224613

/-- `A074400(A008588(n+1))/2` -/
def P12722213268788557820.Spec : Prop :=
  ∀ n, P12722213268788557820.a n = (A224613 (n + 1) : ℚ)

end A224613

/-! ## A224613.P1264771000614176160

`A073255(A065896(2*n+n+3))`
-/

namespace A224613.P1264771000614176160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073255 (A065896 (2 * n + (n + 3))).toNat

end

end A224613.P1264771000614176160

namespace A224613

/-- `A073255(A065896(2*n+n+3))` -/
def P1264771000614176160.Spec : Prop :=
  ∀ n, P1264771000614176160.a n = A224613 (n + 1)

end A224613

/-! ## A224613.P7215287881945737399

`A245092(12*n+11)`
-/

namespace A224613.P7215287881945737399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (12 * n + 11)

end

end A224613.P7215287881945737399

namespace A224613

/-- `A245092(12*n+11)` -/
def P7215287881945737399.Spec : Prop :=
  ∀ n, P7215287881945737399.a n = A224613 (n + 1)

end A224613

/-! ## A224613.P13053497723496516699

`A326065(A008594(n+1))`
-/

namespace A224613.P13053497723496516699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (A008594 (n + 1)).toNat

end

end A224613.P13053497723496516699

namespace A224613

/-- `A326065(A008594(n+1))` -/
def P13053497723496516699.Spec : Prop :=
  ∀ n, P13053497723496516699.a n = A224613 (n + 1)

end A224613

/-! ## A224613.P13946066370903644243

`A319526(A374007(n+1))`
-/

namespace A224613.P13946066370903644243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319526 (A374007 (n + 1)).toNat

end

end A224613.P13946066370903644243

namespace A224613

/-- `A319526(A374007(n+1))` -/
def P13946066370903644243.Spec : Prop :=
  ∀ n, P13946066370903644243.a n = A224613 (n + 1)

end A224613

/-!
# A224617: Number of (n+4)X(n+4) 0..2 matrices with each 5X5 subblock idempotent.

The programs for A224617, there is no canonical definition to state claims against.
-/

/-! ## A224617.P2848863927244017346

`A224625(∑[4*n]+1)`
-/

namespace A224617.P2848863927244017346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224625 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224617.P2848863927244017346

/-! ## A224617.P14671270006224724095

`lcm(2, A224625(A001844(n)))`
-/

namespace A224617.P14671270006224724095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A224625 (A001844 n).toNat)

end

end A224617.P14671270006224724095

/-! ## A224617.P6795318609754634063

`A053632(n)*A224625(A001844(n))`
-/

namespace A224617.P6795318609754634063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053632 n * A224625 (A001844 n).toNat

end

end A224617.P6795318609754634063

/-! ## A224617.P4582189449575419698

`A007318(∑[n])*A224625(A001844(n))`
-/

namespace A224617.P4582189449575419698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A224625 (A001844 n).toNat

end

end A224617.P4582189449575419698

/-! ## A224617.P8753502128240015156

`A224625(A001844(n))-A178986(n+2)`
-/

namespace A224617.P8753502128240015156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224625 (A001844 n).toNat - A178986 (n + 2)

end

end A224617.P8753502128240015156

/-!
# A224618: Number of (n+4)X5 0..2 matrices with each 5X5 subblock idempotent.

The programs for A224618, there is no canonical definition to state claims against.
-/

/-! ## A224618.P3387715140996581144

`A224625(∑[n]+1)`
-/

namespace A224618.P3387715140996581144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224625 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224618.P3387715140996581144

/-! ## A224618.P746278503576171479

`A224625(A000124(n))+char[21]`
-/

namespace A224618.P746278503576171479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224625 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A224618.P746278503576171479

/-! ## A224618.P13478005424618912466

`A369054(n)+A224625(A000124(n))`
-/

namespace A224618.P13478005424618912466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 n + A224625 (A000124 n).toNat

end

end A224618.P13478005424618912466

/-! ## A224618.P7179877355786859239

`or(A098108(n), A224625(A000124(n)))`
-/

namespace A224618.P7179877355786859239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A098108 n) (A224625 (A000124 n).toNat)

end

end A224618.P7179877355786859239

/-! ## A224618.P12208764123327947930

`or(A185015(n), A224625(A000124(n)))`
-/

namespace A224618.P12208764123327947930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185015 n) (A224625 (A000124 n).toNat)

end

end A224618.P12208764123327947930

/-!
# A224619: Number of (n+4)X6 0..2 matrices with each 5X5 subblock idempotent.

The programs for A224619, there is no canonical definition to state claims against.
-/

/-! ## A224619.P10132381266947163427

`A224625(∑[n+1]+2)`
-/

namespace A224619.P10132381266947163427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224625 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A224619.P10132381266947163427

/-! ## A224619.P16698769821542508825

`A224625(A000096(n)+3)+char[19]`
-/

namespace A224619.P16698769821542508825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224625 (A000096 n + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A224619.P16698769821542508825

/-! ## A224619.P6048165222718165102

`A007318(C(2, n))*A224625(A000096(n)+3)`
-/

namespace A224619.P6048165222718165102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A224625 (A000096 n + 3).toNat

end

end A224619.P6048165222718165102

/-! ## A224619.P17203063328255528713

`A224625(A000096(n)+3)/A007318(C(n, 2))`
-/

namespace A224619.P17203063328255528713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224625 (A000096 n + 3).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A224619.P17203063328255528713

/-! ## A224619.P10158449168217350219

`A000041(C(2, n+2))*A224625(A000096(n)+3)`
-/

namespace A224619.P10158449168217350219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A224625 (A000096 n + 3).toNat

end

end A224619.P10158449168217350219

/-!
# A224620: Number of (n+4)X7 0..2 matrices with each 5X5 subblock idempotent.

The programs for A224620, there is no canonical definition to state claims against.
-/

/-! ## A224620.P3907037855547860430

`A224625(∑[n+2]+4)`
-/

namespace A224620.P3907037855547860430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224625 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224620.P3907037855547860430

/-! ## A224620.P4764811248776414211

`A224625(A167614(n+1))+char[20]`
-/

namespace A224620.P4764811248776414211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224625 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A224620.P4764811248776414211

/-! ## A224620.P5117885411132909793

`A224625(A167614(n+1))%A128286(n+1)`
-/

namespace A224620.P5117885411132909793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224625 (A167614 (n + 1)).toNat) (A128286 (n + 1))

end

end A224620.P5117885411132909793

/-! ## A224620.P739850238711924216

`A007318(C(n, 2))*A224625(A167614(n+1))`
-/

namespace A224620.P739850238711924216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A224625 (A167614 (n + 1)).toNat

end

end A224620.P739850238711924216

/-! ## A224620.P12314660832111565105

`A224625(A167614(n+1))*A234959(2*n+3)`
-/

namespace A224620.P12314660832111565105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224625 (A167614 (n + 1)).toNat * A234959 (2 * n + 3)

end

end A224620.P12314660832111565105

/-!
# A224621: Number of (n+4) X 8 0..2 matrices with each 5 X 5 subblock idempotent.

The programs for A224621, there is no canonical definition to state claims against.
-/

/-! ## A224621.P9284200180255636077

`A224625(∑[n+3]+7)`
-/

namespace A224621.P9284200180255636077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224625 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A224621.P9284200180255636077

/-! ## A224621.P2024789764941677295

`A224625(A167614(n+2)+1)+char[16]`
-/

namespace A224621.P2024789764941677295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224625 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A224621.P2024789764941677295

/-! ## A224621.P12482664214113435056

`A224625(A166136(n+2)-2)+char[16]`
-/

namespace A224621.P12482664214113435056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224625 (A166136 (n + 2) - 2).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A224621.P12482664214113435056

/-! ## A224621.P16218689213357707296

`A007318(C(n, 2))*A224625(A166136(n+2)-2)`
-/

namespace A224621.P16218689213357707296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A224625 (A166136 (n + 2) - 2).toNat

end

end A224621.P16218689213357707296

/-! ## A224621.P8972288753691357939

`A224625(A166136(n+2)-2)/A007318(A007318(2*n))`
-/

namespace A224621.P8972288753691357939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224625 (A166136 (n + 2) - 2).toNat : ℚ) / (A007318 (A007318 (2 * n)).toNat : ℚ)

end

end A224621.P8972288753691357939

/-!
# A224622: Number of (n+4) X 9 0..2 matrices with each 5 X 5 subblock idempotent.

The programs for A224622, there is no canonical definition to state claims against.
-/

/-! ## A224622.P867276545704766558

`A224625(C(n+5, 2)+5)`
-/

namespace A224622.P867276545704766558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224625 (Nat.choose (n + 5) 2 + 5)

end

end A224622.P867276545704766558

/-! ## A224622.P7329171171877528904

`A224625(A374005(n+1))`
-/

namespace A224622.P7329171171877528904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224625 (A374005 (n + 1)).toNat

end

end A224622.P7329171171877528904

/-! ## A224622.P16961243266679960532

`A224625(A167499(n+3))`
-/

namespace A224622.P16961243266679960532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224625 (A167499 (n + 3)).toNat

end

end A224622.P16961243266679960532

/-! ## A224622.P1451235348372989151

`A224625(A155212(n)+13)`
-/

namespace A224622.P1451235348372989151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224625 (A155212 n + 13).toNat

end

end A224622.P1451235348372989151

/-! ## A224622.P16137235102658012254

`A224625(A056000(n)+15)`
-/

namespace A224622.P16137235102658012254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224625 (A056000 n + 15).toNat

end

end A224622.P16137235102658012254

/-!
# A224623: Number of (n+4) X 10 0..2 matrices with each 5 X 5 subblock idempotent.

The programs for A224623, there is no canonical definition to state claims against.
-/

/-! ## A224623.P4030719654610008304

`A224625(A374007(n+1))`
-/

namespace A224623.P4030719654610008304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224625 (A374007 (n + 1)).toNat

end

end A224623.P4030719654610008304

/-! ## A224623.P8010820711680865469

`A224625(A056115(n)+21)`
-/

namespace A224623.P8010820711680865469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224625 (A056115 n + 21).toNat

end

end A224623.P8010820711680865469

/-! ## A224623.P13095047974231288843

`A224625(A167499(n+4)+1)`
-/

namespace A224623.P13095047974231288843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224625 (A167499 (n + 4) + 1).toNat

end

end A224623.P13095047974231288843

/-! ## A224623.P18356412008038875513

`A224625(A167614(n+4)+3)`
-/

namespace A224623.P18356412008038875513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224625 (A167614 (n + 4) + 3).toNat

end

end A224623.P18356412008038875513

/-! ## A224623.P5230555888570588458

`A224625(A000096(n+4)+7)`
-/

namespace A224623.P5230555888570588458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224625 (A000096 (n + 4) + 7).toNat

end

end A224623.P5230555888570588458

/-!
# A224624: Number of (n+4) X 11 0..2 matrices with each 5 X 5 subblock idempotent.

The programs for A224624, there is no canonical definition to state claims against.
-/

/-! ## A224624.P2370754360927028949

`A224625(A374008(n+1))`
-/

namespace A224624.P2370754360927028949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224625 (A374008 (n + 1)).toNat

end

end A224624.P2370754360927028949

/-! ## A224624.P1109116427867026262

`A224625(A056119(n)+28)`
-/

namespace A224624.P1109116427867026262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224625 (A056119 n + 28).toNat

end

end A224624.P1109116427867026262

/-! ## A224624.P18132305078542145436

`A224625(eq[11, A066657(n)])`
-/

namespace A224624.P18132305078542145436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224625 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224624.P18132305078542145436

/-! ## A224624.P13044554511121337654

`A224625(A166136(n+5)+1)`
-/

namespace A224624.P13044554511121337654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224625 (A166136 (n + 5) + 1).toNat

end

end A224624.P13044554511121337654

/-! ## A224624.P4905483104925813079

`A224625(A167614(n+5)+4)`
-/

namespace A224624.P4905483104925813079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224625 (A167614 (n + 5) + 4).toNat

end

end A224624.P4905483104925813079

/-!
# A224628: Number of (n+5)X(n+5) 0..2 matrices with each 6X6 subblock idempotent.

The programs for A224628, there is no canonical definition to state claims against.
-/

/-! ## A224628.P13482750674159746151

`A224636(∑[4*n]+1)`
-/

namespace A224628.P13482750674159746151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224636 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224628.P13482750674159746151

/-! ## A224628.P13619693647598191411

`lcm(2, A224636(A001844(n)))`
-/

namespace A224628.P13619693647598191411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A224636 (A001844 n).toNat)

end

end A224628.P13619693647598191411

/-! ## A224628.P825916272970445308

`A224636(A001844(n))+A185246(n)`
-/

namespace A224628.P825916272970445308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224636 (A001844 n).toNat + A185246 n

end

end A224628.P825916272970445308

/-!
# A224629: Number of (n+5)X6 0..2 matrices with each 6X6 subblock idempotent.

The programs for A224629, there is no canonical definition to state claims against.
-/

/-! ## A224629.P6709948190898965006

`A224636(∑[n]+1)`
-/

namespace A224629.P6709948190898965006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224636 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224629.P6709948190898965006

/-! ## A224629.P13486521407721986775

`and(-1, A224636(A000124(n)))`
-/

namespace A224629.P13486521407721986775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A224636 (A000124 n).toNat)

end

end A224629.P13486521407721986775

/-! ## A224629.P14600192452170904697

`gcd(A185246(n), A224636(A000124(n)))`
-/

namespace A224629.P14600192452170904697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185246 n) (A224636 (A000124 n).toNat)

end

end A224629.P14600192452170904697

/-! ## A224629.P15067593023934370116

`lcm(A189006(n), A224636(A000124(n)))`
-/

namespace A224629.P15067593023934370116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A189006 n) (A224636 (A000124 n).toNat)

end

end A224629.P15067593023934370116

/-! ## A224629.P17137820729147871434

`A224636(A000124(n))+A000007(n+4)`
-/

namespace A224629.P17137820729147871434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224636 (A000124 n).toNat + A000007 (n + 4)

end

end A224629.P17137820729147871434

/-!
# A224630: Number of (n+5)X7 0..2 matrices with each 6X6 subblock idempotent.

The programs for A224630, there is no canonical definition to state claims against.
-/

/-! ## A224630.P13369670545454851184

`A224636(∑[n+1]+2)`
-/

namespace A224630.P13369670545454851184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224636 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A224630.P13369670545454851184

/-! ## A224630.P16420717376381942510

`lcm(A106400(n), A224636(A000096(n+1)))`
-/

namespace A224630.P16420717376381942510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106400 n) (A224636 (A000096 (n + 1)).toNat)

end

end A224630.P16420717376381942510

/-! ## A224630.P1791254443858357454

`A224636(A000096(n+1))+A125005(n+1)`
-/

namespace A224630.P1791254443858357454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224636 (A000096 (n + 1)).toNat + A125005 (n + 1)

end

end A224630.P1791254443858357454

/-! ## A224630.P8147000701171881237

`A000027(A224636(∑[n+2]))`
-/

namespace A224630.P8147000701171881237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A224636 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A224630.P8147000701171881237

/-!
# A224631: Number of (n+5)X8 0..2 matrices with each 6X6 subblock idempotent.

The programs for A224631, there is no canonical definition to state claims against.
-/

/-! ## A224631.P10995484313587113619

`A224636(∑[n+2]+4)`
-/

namespace A224631.P10995484313587113619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224636 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224631.P10995484313587113619

/-! ## A224631.P12559514289670692700

`lcm((-1)^n, A224636(A167614(n+1)))`
-/

namespace A224631.P12559514289670692700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A224636 (A167614 (n + 1)).toNat)

end

end A224631.P12559514289670692700

/-! ## A224631.P8932542936619717410

`A224636(A167614(n+1))+A025444(n)`
-/

namespace A224631.P8932542936619717410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224636 (A167614 (n + 1)).toNat + A025444 n

end

end A224631.P8932542936619717410

/-! ## A224631.P599640242222451931

`A224636(A167614(n+1))+A184955(n)`
-/

namespace A224631.P599640242222451931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224636 (A167614 (n + 1)).toNat + A184955 n

end

end A224631.P599640242222451931

/-! ## A224631.P1876058460777912565

`A224636(A167614(n+1))+A185246(n)`
-/

namespace A224631.P1876058460777912565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224636 (A167614 (n + 1)).toNat + A185246 n

end

end A224631.P1876058460777912565

/-!
# A224632: Number of (n+5)X9 0..2 matrices with each 6X6 subblock idempotent.

The programs for A224632, there is no canonical definition to state claims against.
-/

/-! ## A224632.P4472305628203484525

`A224636(∑[n+3]+7)`
-/

namespace A224632.P4472305628203484525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224636 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A224632.P4472305628203484525

/-! ## A224632.P11848117811527413185

`A224636(A027379(n+2))%A224629(n+1)`
-/

namespace A224632.P11848117811527413185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224636 (A027379 (n + 2)).toNat) (A224629 (n + 1))

end

end A224632.P11848117811527413185

/-!
# A224633: Number of (n+5) X 10 0..2 matrices with each 6 X 6 subblock idempotent.

The programs for A224633, there is no canonical definition to state claims against.
-/

/-! ## A224633.P11824396989253766238

`A224636(Δ[A264443(n)])`
-/

namespace A224633.P11824396989253766238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224636 (f1 (n + 1) - f1 n).toNat

end

end A224633.P11824396989253766238

/-! ## A224633.P16275567308361385683

`A224636(A374005(n+1))`
-/

namespace A224633.P16275567308361385683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224636 (A374005 (n + 1)).toNat

end

end A224633.P16275567308361385683

/-! ## A224633.P14583134838289045590

`A224636(A046691(n+3))`
-/

namespace A224633.P14583134838289045590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224636 (A046691 (n + 3)).toNat

end

end A224633.P14583134838289045590

/-! ## A224633.P4510677250688999637

`A224636(A167499(n+3))`
-/

namespace A224633.P4510677250688999637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224636 (A167499 (n + 3)).toNat

end

end A224633.P4510677250688999637

/-! ## A224633.P18327725033568813666

`A224636(A056115(n)+11)`
-/

namespace A224633.P18327725033568813666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224636 (A056115 n + 11).toNat

end

end A224633.P18327725033568813666

/-!
# A224634: Number of (n+5)X11 0..2 matrices with each 6X6 subblock idempotent.

The programs for A224634, there is no canonical definition to state claims against.
-/

/-! ## A224634.P1691789509953070453

`A224636(A374007(n+1))`
-/

namespace A224634.P1691789509953070453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224636 (A374007 (n + 1)).toNat

end

end A224634.P1691789509953070453

/-! ## A224634.P3048628150176773758

`A224636(A166136(n+4))`
-/

namespace A224634.P3048628150176773758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224636 (A166136 (n + 4)).toNat

end

end A224634.P3048628150176773758

/-! ## A224634.P1305471078681631548

`A224636(A056115(n)+21)`
-/

namespace A224634.P1305471078681631548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224636 (A056115 n + 21).toNat

end

end A224634.P1305471078681631548

/-! ## A224634.P3858655470754645053

`A224636(eq[3, A219347(n)])`
-/

namespace A224634.P3858655470754645053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224634.P3858655470754645053

/-!
# A224635: Number of (n+5)X12 0..2 matrices with each 6X6 subblock idempotent.

The programs for A224635, there is no canonical definition to state claims against.
-/

/-! ## A224635.P17081318417851801139

`A224636(A374008(n+1))`
-/

namespace A224635.P17081318417851801139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224636 (A374008 (n + 1)).toNat

end

end A224635.P17081318417851801139

/-! ## A224635.P6623184872528931570

`A224636(A055999(n+4))`
-/

namespace A224635.P6623184872528931570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224636 (A055999 (n + 4)).toNat

end

end A224635.P6623184872528931570

/-! ## A224635.P13385131520418623467

`A224636(eq[4, A219347(n)])`
-/

namespace A224635.P13385131520418623467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224635.P13385131520418623467

/-!
# A224637: Number of (n+6)X(n+6) 0..2 matrices with each 7X7 subblock idempotent.

The programs for A224637, there is no canonical definition to state claims against.
-/

/-! ## A224637.P1269332911024623300

`A224642(∑[4*n]+1)`
-/

namespace A224637.P1269332911024623300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224642 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224637.P1269332911024623300

/-! ## A224637.P1597323356066903146

`lcm(2, A224642(A001844(n)))`
-/

namespace A224637.P1597323356066903146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A224642 (A001844 n).toNat)

end

end A224637.P1597323356066903146

/-!
# A224638: Number of (n+6)X7 0..2 matrices with each 7X7 subblock idempotent.

The programs for A224638, there is no canonical definition to state claims against.
-/

/-! ## A224638.P11796345954840785463

`A224642(∑[n]+1)`
-/

namespace A224638.P11796345954840785463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224642 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224638.P11796345954840785463

/-! ## A224638.P11393757024023594477

`A224642(A000124(n))+char[12]`
-/

namespace A224638.P11393757024023594477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224642 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A224638.P11393757024023594477

/-! ## A224638.P3045404593614075575

`A225099(n)+A224642(A000124(n))`
-/

namespace A224638.P3045404593614075575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225099 n + A224642 (A000124 n).toNat

end

end A224638.P3045404593614075575

/-! ## A224638.P14193864156185667770

`A337605(n)+A224642(A000124(n))`
-/

namespace A224638.P14193864156185667770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337605 n + A224642 (A000124 n).toNat

end

end A224638.P14193864156185667770

/-! ## A224638.P13982670667130538023

`A152848(n)*A224642(A000124(n))`
-/

namespace A224638.P13982670667130538023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152848 n * A224642 (A000124 n).toNat

end

end A224638.P13982670667130538023

/-!
# A224639: Number of (n+6)X8 0..2 matrices with each 7X7 subblock idempotent.

The programs for A224639, there is no canonical definition to state claims against.
-/

/-! ## A224639.P7656491336500606022

`A224642(∑[n+1]+2)`
-/

namespace A224639.P7656491336500606022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224642 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A224639.P7656491336500606022

/-!
# A224640: Number of (n+6)X9 0..2 matrices with each 7X7 subblock idempotent.

The programs for A224640, there is no canonical definition to state claims against.
-/

/-! ## A224640.P2857325519059259359

`A224642(∑[n+2]+4)`
-/

namespace A224640.P2857325519059259359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224642 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224640.P2857325519059259359

/-! ## A224640.P17288690277875419993

`A224642(A167614(n+1))+A059995(n)`
-/

namespace A224640.P17288690277875419993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224642 (A167614 (n + 1)).toNat + A059995 n

end

end A224640.P17288690277875419993

/-! ## A224640.P16192575169125736747

`A224642(A167614(n+1))+A067157(n)`
-/

namespace A224640.P16192575169125736747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224642 (A167614 (n + 1)).toNat + A067157 (n + 10)

end

end A224640.P16192575169125736747

/-! ## A224640.P16896606534578564207

`A224642(A167614(n+1))+A178798(n)`
-/

namespace A224640.P16896606534578564207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224642 (A167614 (n + 1)).toNat + A178798 n

end

end A224640.P16896606534578564207

/-! ## A224640.P3697518970884436503

`A225099(n)+A224642(A167614(n+1))`
-/

namespace A224640.P3697518970884436503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225099 n + A224642 (A167614 (n + 1)).toNat

end

end A224640.P3697518970884436503

/-!
# A224641: Number of (n+6)X10 0..2 matrices with each 7X7 subblock idempotent.

The programs for A224641, there is no canonical definition to state claims against.
-/

/-! ## A224641.P3937043675002260946

`A224642(A141214(n)+7)`
-/

namespace A224641.P3937043675002260946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224642 (A141214 n + 7).toNat

end

end A224641.P3937043675002260946

/-! ## A224641.P7782973352543873719

`A224642(A052905(n)+9)`
-/

namespace A224641.P7782973352543873719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224642 (A052905 n + 9).toNat

end

end A224641.P7782973352543873719

/-! ## A224641.P3825766549533275569

`A224642(A055999(n)+10)`
-/

namespace A224641.P3825766549533275569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224642 (A055999 n + 10).toNat

end

end A224641.P3825766549533275569

/-! ## A224641.P8034704324627917041

`A224642(eq[5, A066657(n)])`
-/

namespace A224641.P8034704324627917041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224642 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224641.P8034704324627917041

/-! ## A224641.P15892965208764323270

`A224642(A167614(n+2)+1)`
-/

namespace A224641.P15892965208764323270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224642 (A167614 (n + 2) + 1).toNat

end

end A224641.P15892965208764323270

/-!
# A224643: Number of (n+2)X(n+2) 0..1 matrices with each 3X3 subblock having the same population.

The programs for A224643, there is no canonical definition to state claims against.
-/

/-! ## A224643.P3035432037718954260

`A224651(∑[4*n]+1)`
-/

namespace A224643.P3035432037718954260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224651 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224643.P3035432037718954260

/-! ## A224643.P1815080161441926907

`lcm(2, A224651(A001844(n)))`
-/

namespace A224643.P1815080161441926907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A224651 (A001844 n).toNat)

end

end A224643.P1815080161441926907

/-! ## A224643.P12101497673796776210

`record[A003982(n)*A224651(n+1)]`
-/

namespace A224643.P12101497673796776210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A224651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224643.P12101497673796776210

/-! ## A224643.P10129960467455426942

`record[A214505(n)*A224651(n+1)]`
-/

namespace A224643.P10129960467455426942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A224651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224643.P10129960467455426942

/-! ## A224643.P4405865651503859049

`record[gcd(A003987(n), A224651(n+1))]`
-/

namespace A224643.P4405865651503859049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A224651 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224643.P4405865651503859049

/-!
# A224644: Number of (n+2) X 3 0..1 matrices with each 3 X 3 subblock having the same population.

The programs for A224644, there is no canonical definition to state claims against.
-/

/-! ## A224644.P11332434233505420667

`A224651(∑[n]+1)`
-/

namespace A224644.P11332434233505420667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224651 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224644.P11332434233505420667

/-! ## A224644.P1012670481984938551

`record[A224651(n+1)]`
-/

namespace A224644.P1012670481984938551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224644.P1012670481984938551

/-! ## A224644.P16148192062508599553

`lcm(2, A224651(A000124(n)))`
-/

namespace A224644.P16148192062508599553
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A224651 (A000124 n).toNat)

end

end A224644.P16148192062508599553

/-! ## A224644.P10830892667382235849

`lcm(4, A224651(∑[A028310(n)]))`
-/

namespace A224644.P10830892667382235849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A224651 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A224644.P10830892667382235849

/-! ## A224644.P13731757683957361218

`A224651(A000124(n))+A025466(n)`
-/

namespace A224644.P13731757683957361218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224651 (A000124 n).toNat + A025466 n

end

end A224644.P13731757683957361218

/-!
# A224645: Number of (n+2)X4 0..1 matrices with each 3X3 subblock having the same population.

The programs for A224645, there is no canonical definition to state claims against.
-/

/-! ## A224645.P11944749838274931405

`A224651(∑[n+1]+2)`
-/

namespace A224645.P11944749838274931405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224651 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A224645.P11944749838274931405

/-! ## A224645.P4448597938157852466

`lcm(2, A224651(A000096(n)+3))`
-/

namespace A224645.P4448597938157852466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A224651 (A000096 n + 3).toNat)

end

end A224645.P4448597938157852466

/-! ## A224645.P8916005549194720991

`record[A010054(n)*A224651(n+2)]`
-/

namespace A224645.P8916005549194720991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A224651 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224645.P8916005549194720991

/-! ## A224645.P9794017914366445570

`record[A224651(n+2)/A027555(n)]`
-/

namespace A224645.P9794017914366445570
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224651 (n + 2) : ℚ) / (A027555 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224645.P9794017914366445570

/-! ## A224645.P15262429319852500141

`record[A224651(n+2)/A055450(n)]`
-/

namespace A224645.P15262429319852500141
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224651 (n + 2) : ℚ) / (A055450 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224645.P15262429319852500141

/-!
# A224646: Number of (n+2)X5 0..1 matrices with each 3X3 subblock having the same population.

The programs for A224646, there is no canonical definition to state claims against.
-/

/-! ## A224646.P4815041810992352112

`A224651(∑[n+2]+4)`
-/

namespace A224646.P4815041810992352112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224651 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224646.P4815041810992352112

/-! ## A224646.P6003989345107906546

`lcm(2, A224651(A167614(n+1)))`
-/

namespace A224646.P6003989345107906546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A224651 (A167614 (n + 1)).toNat)

end

end A224646.P6003989345107906546

/-! ## A224646.P15497703007124357466

`lcm(4, A224651(A055998(n)+6))`
-/

namespace A224646.P15497703007124357466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A224651 (A055998 n + 6).toNat)

end

end A224646.P15497703007124357466

/-! ## A224646.P14656889635547612977

`A224651(A167614(n+1))+A034563(n+1)`
-/

namespace A224646.P14656889635547612977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224651 (A167614 (n + 1)).toNat + A034563 (n + 1)

end

end A224646.P14656889635547612977

/-! ## A224646.P8721206728060248447

`A224651(A167614(n+1))%A224647(n+1)`
-/

namespace A224646.P8721206728060248447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224651 (A167614 (n + 1)).toNat) (A224647 (n + 1))

end

end A224646.P8721206728060248447

/-!
# A224647: Number of (n+2)X6 0..1 matrices with each 3X3 subblock having the same population.

The programs for A224647, there is no canonical definition to state claims against.
-/

/-! ## A224647.P10678495851056185951

`A224651(∑[n+3]+7)`
-/

namespace A224647.P10678495851056185951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224651 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A224647.P10678495851056185951

/-! ## A224647.P314426842827493463

`lcm(2, A224651(A167614(n+2)+1))`
-/

namespace A224647.P314426842827493463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A224651 (A167614 (n + 2) + 1).toNat)

end

end A224647.P314426842827493463

/-! ## A224647.P15373675625007894950

`A007318(C(n, 2))*A224651(A167614(n+2)+1)`
-/

namespace A224647.P15373675625007894950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A224651 (A167614 (n + 2) + 1).toNat

end

end A224647.P15373675625007894950

/-! ## A224647.P9882798335781620446

`ceil(1/A000041(n))*A224651(A167614(n+2)+1)`
-/

namespace A224647.P9882798335781620446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A000041 n : ℚ)⌉ * A224651 (A167614 (n + 2) + 1).toNat

end

end A224647.P9882798335781620446

/-! ## A224647.P2716509702741029301

`A007318(A007318(2*n))*A224651(A167614(n+2)+1)`
-/

namespace A224647.P2716509702741029301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007318 (2 * n)).toNat * A224651 (A167614 (n + 2) + 1).toNat

end

end A224647.P2716509702741029301

/-!
# A224648: Number of (n+2)X7 0..1 matrices with each 3X3 subblock having the same population.

The programs for A224648, there is no canonical definition to state claims against.
-/

/-! ## A224648.P9829776154763516306

`A224651(A167499(n+3))`
-/

namespace A224648.P9829776154763516306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224651 (A167499 (n + 3)).toNat

end

end A224648.P9829776154763516306

/-! ## A224648.P10565861623997674329

`A224651(A155212(n)+13)`
-/

namespace A224648.P10565861623997674329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224651 (A155212 n + 13).toNat

end

end A224648.P10565861623997674329

/-! ## A224648.P13423215888874873097

`A224651(A056000(n)+15)`
-/

namespace A224648.P13423215888874873097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224651 (A056000 n + 15).toNat

end

end A224648.P13423215888874873097

/-! ## A224648.P8766942651574622944

`A224651(eq[7, A066657(n)])`
-/

namespace A224648.P8766942651574622944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224648.P8766942651574622944

/-! ## A224648.P6627542830268028590

`A224651(A167614(n+3)+2)`
-/

namespace A224648.P6627542830268028590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224651 (A167614 (n + 3) + 2).toNat

end

end A224648.P6627542830268028590

/-!
# A224649: Number of (n+2)X8 0..1 matrices with each 3X3 subblock having the same population.

The programs for A224649, there is no canonical definition to state claims against.
-/

/-! ## A224649.P6389516862440756253

`A224651(A166136(n+4))`
-/

namespace A224649.P6389516862440756253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224651 (A166136 (n + 4)).toNat

end

end A224649.P6389516862440756253

/-! ## A224649.P9868021556287121493

`A224651(A056115(n)+21)`
-/

namespace A224649.P9868021556287121493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224651 (A056115 n + 21).toNat

end

end A224649.P9868021556287121493

/-! ## A224649.P16625465710575005215

`A224651(A167499(n+4)+1)`
-/

namespace A224649.P16625465710575005215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224651 (A167499 (n + 4) + 1).toNat

end

end A224649.P16625465710575005215

/-! ## A224649.P5045564304431268798

`A224651(A000124(n+5)+5)`
-/

namespace A224649.P5045564304431268798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224651 (A000124 (n + 5) + 5).toNat

end

end A224649.P5045564304431268798

/-! ## A224649.P562164636479396115

`A224651(A000096(n+4)+7)`
-/

namespace A224649.P562164636479396115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224651 (A000096 (n + 4) + 7).toNat

end

end A224649.P562164636479396115

/-!
# A224650: Number of (n+2) X 9 0..1 matrices with each 3 X 3 subblock having the same population.

The programs for A224650, there is no canonical definition to state claims against.
-/

/-! ## A224650.P6835181281042705754

`A224651(eq[11, A066657(n)])`
-/

namespace A224650.P6835181281042705754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224650.P6835181281042705754

/-! ## A224650.P3371716891970583722

`A224651(A166136(n+5)+1)`
-/

namespace A224650.P3371716891970583722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224651 (A166136 (n + 5) + 1).toNat

end

end A224650.P3371716891970583722

/-! ## A224650.P15922539185403977082

`A224651(A000217(n+6)+7)`
-/

namespace A224650.P15922539185403977082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224651 (A000217 (n + 6) + 7).toNat

end

end A224650.P15922539185403977082

/-! ## A224650.P7112663701177177881

`A224651(eq[8, A131818(n+1)])`
-/

namespace A224650.P7112663701177177881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224650.P7112663701177177881

/-! ## A224650.P10501474026303511777

`A224651(Δ[Δ[A006504(n+1)]]+12)`
-/

namespace A224650.P10501474026303511777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224651 (f1 (n + 1) - f1 n + 12).toNat

end

end A224650.P10501474026303511777

/-!
# A224651: T(n,k)=Number of (n+2)X(k+2) 0..1 matrices with each 3X3 subblock having the same population.

The programs for A224651, there is no canonical definition to state claims against.
-/

/-! ## A224651.P8578554077467153680

`A046312(A241496(n)^A181836(n))`
-/

namespace A224651.P8578554077467153680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046312 (SequenceMachineLib.roundAway ((A241496 n : ℚ) ^ (A181836 n : ℤ))).toNat

end

end A224651.P8578554077467153680

/-!
# A224653: Irregular table which shows in row n the dimensions of the irreducible representations of the permutation group of order n!.

The programs for A224653, there is no canonical definition to state claims against.
-/

/-! ## A224653.P617632855644610297

`A060240(lt[A162011(n+1), A007913(n+1)])`
-/

namespace A224653.P617632855644610297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060240 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A224653.P617632855644610297

/-! ## A224653.P11564184389534323638

`A060240(lt[A162011(n+1), A159688(3*n)])`
-/

namespace A224653.P11564184389534323638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159688 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060240 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A224653.P11564184389534323638

/-! ## A224653.P1388573519745155472

`A060240(record[A133232(n+1)+1])`
-/

namespace A224653.P1388573519745155472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133232 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060240 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A224653.P1388573519745155472

/-!
# A224654: Number of (n+2)X3 0..2 matrices with each 3X3 subblock having the same population.

The programs for A224654, there is no canonical definition to state claims against.
-/

/-! ## A224654.P15900639727158448353

`A224658(∑[n]+1)`
-/

namespace A224654.P15900639727158448353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224658 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224654.P15900639727158448353

/-! ## A224654.P16911699395261674673

`record[A224658(n+1)]`
-/

namespace A224654.P16911699395261674673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224654.P16911699395261674673

/-! ## A224654.P17694789301654974272

`lcm(3, A224658(A000124(n)))`
-/

namespace A224654.P17694789301654974272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A224658 (A000124 n).toNat)

end

end A224654.P17694789301654974272

/-! ## A224654.P9095690023978897850

`A224658(A000124(n))+A025469(n)`
-/

namespace A224654.P9095690023978897850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224658 (A000124 n).toNat + A025469 n

end

end A224654.P9095690023978897850

/-! ## A224654.P5520689963891035945

`A224658(A000124(n))+A108782(n)`
-/

namespace A224654.P5520689963891035945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224658 (A000124 n).toNat + A108782 n

end

end A224654.P5520689963891035945

/-!
# A224655: Number of (n+2)X4 0..2 matrices with each 3X3 subblock having the same population.

The programs for A224655, there is no canonical definition to state claims against.
-/

/-! ## A224655.P10819850167197880873

`A224658(∑[n+1]+2)`
-/

namespace A224655.P10819850167197880873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224658 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A224655.P10819850167197880873

/-! ## A224655.P6940186834191310502

`record[A224658(A198455(n+1))]`
-/

namespace A224655.P6940186834191310502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224658 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224655.P6940186834191310502

/-! ## A224655.P3342416619448790609

`record[gcd(A224658(n+2), A324660(n))]`
-/

namespace A224655.P3342416619448790609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A224658 (n + 2)) (A324660 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224655.P3342416619448790609

/-!
# A224656: Number of (n+2)X5 0..2 matrices with each 3X3 subblock having the same population.

The programs for A224656, there is no canonical definition to state claims against.
-/

/-! ## A224656.P16477945066162834113

`A224658(∑[n+2]+4)`
-/

namespace A224656.P16477945066162834113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224658 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224656.P16477945066162834113

/-! ## A224656.P7075488935644871000

`lcm(3, A224658(A167614(n+1)))`
-/

namespace A224656.P7075488935644871000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A224658 (A167614 (n + 1)).toNat)

end

end A224656.P7075488935644871000

/-! ## A224656.P9159989314851621398

`A224658(A167614(n+1))+A025466(n)`
-/

namespace A224656.P9159989314851621398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224658 (A167614 (n + 1)).toNat + A025466 n

end

end A224656.P9159989314851621398

/-! ## A224656.P13138213707977342442

`A224658(A167614(n+1))+A066568(n)`
-/

namespace A224656.P13138213707977342442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224658 (A167614 (n + 1)).toNat + A066568 n

end

end A224656.P13138213707977342442

/-! ## A224656.P18141698689558535548

`A224658(A167614(n+1))+A070565(n)`
-/

namespace A224656.P18141698689558535548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224658 (A167614 (n + 1)).toNat + A070565 n

end

end A224656.P18141698689558535548

/-!
# A224657: Number of (n+2)X6 0..2 matrices with each 3X3 subblock having the same population.

The programs for A224657, there is no canonical definition to state claims against.
-/

/-! ## A224657.P9424835384317790595

`A224658(A141214(n)+7)`
-/

namespace A224657.P9424835384317790595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224658 (A141214 n + 7).toNat

end

end A224657.P9424835384317790595

/-! ## A224657.P15955980296317330389

`A224658(A052905(n)+9)`
-/

namespace A224657.P15955980296317330389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224658 (A052905 n + 9).toNat

end

end A224657.P15955980296317330389

/-! ## A224657.P2833017814363446547

`A224658(A055999(n)+10)`
-/

namespace A224657.P2833017814363446547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224658 (A055999 n + 10).toNat

end

end A224657.P2833017814363446547

/-! ## A224657.P2309117452559901557

`A224658(eq[5, A066657(n)])`
-/

namespace A224657.P2309117452559901557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224658 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224657.P2309117452559901557

/-! ## A224657.P5901101544086836206

`A224658(A167614(n+2)+1)`
-/

namespace A224657.P5901101544086836206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224658 (A167614 (n + 2) + 1).toNat

end

end A224657.P5901101544086836206

/-!
# A224659: Number of n X n 0..2 matrices with each 2 X 2 subblock idempotent.

The programs for A224659, there is no canonical definition to state claims against.
-/

/-! ## A224659.P10523360398235356034

`A224665(∑[n+2])`
-/

namespace A224659.P10523360398235356034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224665 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A224659.P10523360398235356034

/-! ## A224659.P5701020342648190913

`record[A224665(n+2)/A092392(n+2)]`
-/

namespace A224659.P5701020342648190913
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224665 (n + 2) : ℚ) / (A092392 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224659.P5701020342648190913

/-! ## A224659.P5744726948881150663

`A224665(A000096(n+1))%A204643(n+1)`
-/

namespace A224659.P5744726948881150663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224665 (A000096 (n + 1)).toNat) (A204643 (n + 1))

end

end A224659.P5744726948881150663

/-!
# A224660: Number of n X n 0..3 matrices with each 2 X 2 subblock idempotent.

The programs for A224660, there is no canonical definition to state claims against.
-/

/-! ## A224660.P15093162965029491976

`A224665(∑[n+3]+1)`
-/

namespace A224660.P15093162965029491976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224665 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224660.P15093162965029491976

/-! ## A224660.P4407894771084898367

`record[A224665(A198464(n+1))]`
-/

namespace A224660.P4407894771084898367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224665 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224660.P4407894771084898367

/-! ## A224660.P10146929762632521229

`A224665(A055999(n)+4)+A297236(n+1)-A297234(n+1)`
-/

namespace A224660.P10146929762632521229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224665 (A055999 n + 4).toNat + (A297236 (n + 1) - A297234 (n + 1))

end

end A224660.P10146929762632521229

/-!
# A224661: Number of n X n 0..4 matrices with each 2X2 subblock idempotent.

The programs for A224661, there is no canonical definition to state claims against.
-/

/-! ## A224661.P1804812202073626044

`A224665(A141214(n+1))`
-/

namespace A224661.P1804812202073626044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224665 (A141214 (n + 1)).toNat

end

end A224661.P1804812202073626044

/-! ## A224661.P7397057949342301970

`A224665(A027379(n+2))`
-/

namespace A224661.P7397057949342301970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224665 (A027379 (n + 2)).toNat

end

end A224661.P7397057949342301970

/-! ## A224661.P6166614143826822763

`A224665(A055998(n+2))`
-/

namespace A224661.P6166614143826822763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224665 (A055998 (n + 2)).toNat

end

end A224661.P6166614143826822763

/-! ## A224661.P16286847197821384907

`A224665(A155212(n)+5)`
-/

namespace A224661.P16286847197821384907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224665 (A155212 n + 5).toNat

end

end A224661.P16286847197821384907

/-! ## A224661.P17789437866928350889

`A224665(A056000(n)+7)`
-/

namespace A224661.P17789437866928350889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224665 (A056000 n + 7).toNat

end

end A224661.P17789437866928350889

/-!
# A224662: Number of n X n 0..5 matrices with each 2X2 subblock idempotent.

The programs for A224662, there is no canonical definition to state claims against.
-/

/-! ## A224662.P6710268987850442598

`A224665(∑[n+5]+6)`
-/

namespace A224662.P6710268987850442598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224665 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A224662.P6710268987850442598

/-! ## A224662.P1186568947758422812

`lcm(1-and(2, n), A224665(A046691(n+3)))`
-/

namespace A224662.P1186568947758422812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A224665 (A046691 (n + 3)).toNat)

end

end A224662.P1186568947758422812

/-! ## A224662.P15550358175108058801

`char[A340250(n)]*A224665(A046691(n+3))`
-/

namespace A224662.P15550358175108058801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340250 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A224665 (A046691 (n + 3)).toNat

end

end A224662.P15550358175108058801

/-! ## A224662.P13996286833182512129

`char[A340255(n)]*A224665(A046691(n+3))`
-/

namespace A224662.P13996286833182512129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340255 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A224665 (A046691 (n + 3)).toNat

end

end A224662.P13996286833182512129

/-! ## A224662.P2806792245853408492

`char[A340272(n)]*A224665(A046691(n+3))`
-/

namespace A224662.P2806792245853408492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340272 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A224665 (A046691 (n + 3)).toNat

end

end A224662.P2806792245853408492

/-!
# A224663: Number of n X n 0..6 matrices with each 2X2 subblock idempotent.

The programs for A224663, there is no canonical definition to state claims against.
-/

/-! ## A224663.P17700059468645986227

`A224665(A052905(n+3))`
-/

namespace A224663.P17700059468645986227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224665 (A052905 (n + 3)).toNat

end

end A224663.P17700059468645986227

/-! ## A224663.P17808456018627342006

`A224665(A056119(n)+16)`
-/

namespace A224663.P17808456018627342006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224665 (A056119 n + 16).toNat

end

end A224663.P17808456018627342006

/-! ## A224663.P9897472744700754601

`A224665(eq[3, A219347(n)])`
-/

namespace A224663.P9897472744700754601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224663.P9897472744700754601

/-! ## A224663.P5275975872769427098

`A224665(eq[5, A193592(n)])`
-/

namespace A224663.P5275975872769427098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224663.P5275975872769427098

/-! ## A224663.P1270065754833679487

`A224665(eq[8, A258709(n)])`
-/

namespace A224663.P1270065754833679487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224663.P1270065754833679487

/-!
# A224664: Number of n X n 0..7 matrices with each 2X2 subblock idempotent.

The programs for A224664, there is no canonical definition to state claims against.
-/

/-! ## A224664.P1558667579603622664

`A224665(A055999(n+4))`
-/

namespace A224664.P1558667579603622664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224665 (A055999 (n + 4)).toNat

end

end A224664.P1558667579603622664

/-! ## A224664.P17331502477382894211

`A224665(eq[4, A219347(n)])`
-/

namespace A224664.P17331502477382894211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224664.P17331502477382894211

/-! ## A224664.P9522059866444598729

`A224665(eq[5, A332954(n)])`
-/

namespace A224664.P9522059866444598729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224664.P9522059866444598729

/-! ## A224664.P7584253456942702312

`A224665(eq[6, A193592(n)])`
-/

namespace A224664.P7584253456942702312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224664.P7584253456942702312

/-! ## A224664.P14999396048619842138

`A224665(A056000(n+3)+4)`
-/

namespace A224664.P14999396048619842138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224665 (A056000 (n + 3) + 4).toNat

end

end A224664.P14999396048619842138

/-!
# A224666: Number of 4 X 4 0..n matrices with each 2 X 2 subblock idempotent.

The programs for A224666, the canonical program `A224666.P15853536616983085520` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224666 has offset 1).

The definition of A224666 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224666.P15853536616983085520

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=78, a(1)=108, a(2)=142`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A224666

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P15853536616983085520.Spec : Prop :=
  ∀ n, P15853536616983085520.a n = A224666 (n + 1)

theorem P15853536616983085520.correct : P15853536616983085520.Spec := by
  intro n
  simp only [A224666, Nat.add_sub_cancel]

end A224666

/-! ## A224666.P5786815107926430741

`2*((n+7)²-10)`
-/

namespace A224666.P5786815107926430741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((n + 7) ^ 2 : ℤ) - 10)

end

end A224666.P5786815107926430741

namespace A224666

/-- `2*((n+7)²-10)` -/
def P5786815107926430741.Spec : Prop :=
  ∀ n, P5786815107926430741.a n = A224666 (n + 1)

end A224666

/-! ## A224666.P3278809110166768873

`record[2*((7-n)²-10)]`
-/

namespace A224666.P3278809110166768873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((7 - (n : ℤ)) ^ 2 - 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224666.P3278809110166768873

namespace A224666

/-- `record[2*((7-n)²-10)]` -/
def P3278809110166768873.Spec : Prop :=
  ∀ n, P3278809110166768873.a n = A224666 (n + 1)

end A224666

/-! ## A224666.P2328850085416044784

`A000217(2*(n+6))+3*n`
-/

namespace A224666.P2328850085416044784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * (n + 6)) + (3 * n : ℤ)

end

end A224666.P2328850085416044784

namespace A224666

/-- `A000217(2*(n+6))+3*n` -/
def P2328850085416044784.Spec : Prop :=
  ∀ n, P2328850085416044784.a n = A224666 (n + 1)

end A224666

/-! ## A224666.P12011257975569310180

`A154590(n+3)+6`
-/

namespace A224666.P12011257975569310180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154590 (n + 3) + 6

end

end A224666.P12011257975569310180

namespace A224666

/-- `A154590(n+3)+6` -/
def P12011257975569310180.Spec : Prop :=
  ∀ n, P12011257975569310180.a n = A224666 (n + 1)

end A224666

/-! ## A224666.P11643929602057115568

`A154591(n+3)-Δ[n²]`
-/

namespace A224666.P11643929602057115568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154591 (n + 3) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A224666.P11643929602057115568

namespace A224666

/-- `A154591(n+3)-Δ[n²]` -/
def P11643929602057115568.Spec : Prop :=
  ∀ n, P11643929602057115568.a n = A224666 (n + 1)

end A224666

/-! ## A224666.P12439106531824249868

`2*A028884(n+4)-4`
-/

namespace A224666.P12439106531824249868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028884 (n + 4) - 4

end

end A224666.P12439106531824249868

namespace A224666

/-- `2*A028884(n+4)-4` -/
def P12439106531824249868.Spec : Prop :=
  ∀ n, P12439106531824249868.a n = A224666 (n + 1)

end A224666

/-! ## A224666.P1385951343504499940

`A132765(n+3)+n²-n`
-/

namespace A224666.P1385951343504499940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132765 (n + 3) + ((n ^ 2 : ℤ) - (n : ℤ))

end

end A224666.P1385951343504499940

namespace A224666

/-- `A132765(n+3)+n²-n` -/
def P1385951343504499940.Spec : Prop :=
  ∀ n, P1385951343504499940.a n = A224666 (n + 1)

end A224666

/-! ## A224666.P14908293986409608922

`A139581(n+3)-3*(n-1)`
-/

namespace A224666.P14908293986409608922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139581 (n + 3) - 3 * ((n : ℤ) - 1)

end

end A224666.P14908293986409608922

namespace A224666

/-- `A139581(n+3)-3*(n-1)` -/
def P14908293986409608922.Spec : Prop :=
  ∀ n, P14908293986409608922.a n = A224666 (n + 1)

end A224666

/-! ## A224666.P10060930168494507580

`A132764(n+3)+A117950(n)`
-/

namespace A224666.P10060930168494507580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132764 (n + 3) + A117950 n

end

end A224666.P10060930168494507580

namespace A224666

/-- `A132764(n+3)+A117950(n)` -/
def P10060930168494507580.Spec : Prop :=
  ∀ n, P10060930168494507580.a n = A224666 (n + 1)

end A224666

/-! ## A224666.P15506686623498564747

`A067728(n+5)-12`
-/

namespace A224666.P15506686623498564747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067728 (n + 5) - 12

end

end A224666.P15506686623498564747

namespace A224666

/-- `A067728(n+5)-12` -/
def P15506686623498564747.Spec : Prop :=
  ∀ n, P15506686623498564747.a n = A224666 (n + 1)

end A224666

/-! ## A224666.P8425798563891407275

`A139578(n+4)-A020715(n)`
-/

namespace A224666.P8425798563891407275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139578 (n + 4) - A020715 n

end

end A224666.P8425798563891407275

namespace A224666

/-- `A139578(n+4)-A020715(n)` -/
def P8425798563891407275.Spec : Prop :=
  ∀ n, P8425798563891407275.a n = A224666 (n + 1)

end A224666

/-! ## A224666.P5738479491322389187

`A014105(n+6)+3*n`
-/

namespace A224666.P5738479491322389187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 (n + 6) + (3 * n : ℤ)

end

end A224666.P5738479491322389187

namespace A224666

/-- `A014105(n+6)+3*n` -/
def P5738479491322389187.Spec : Prop :=
  ∀ n, P5738479491322389187.a n = A224666 (n + 1)

end A224666

/-! ## A224666.P7046325651234794743

`A005893(n+6)+4*(n+1)`
-/

namespace A224666.P7046325651234794743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (n + 6) + (4 * (n + 1) : ℤ)

end

end A224666.P7046325651234794743

namespace A224666

/-- `A005893(n+6)+4*(n+1)` -/
def P7046325651234794743.Spec : Prop :=
  ∀ n, P7046325651234794743.a n = A224666 (n + 1)

end A224666

/-! ## A224666.P3417068803509035858

`A028569(n+5)+A028563(n+1)`
-/

namespace A224666.P3417068803509035858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028569 (n + 5) + A028563 (n + 1)

end

end A224666.P3417068803509035858

namespace A224666

/-- `A028569(n+5)+A028563(n+1)` -/
def P3417068803509035858.Spec : Prop :=
  ∀ n, P3417068803509035858.a n = A224666 (n + 1)

end A224666

/-! ## A224666.P1075283921686363761

`A054000(n+7)-18`
-/

namespace A224666.P1075283921686363761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054000 (n + 7) - 18

end

end A224666.P1075283921686363761

namespace A224666

/-- `A054000(n+7)-18` -/
def P1075283921686363761.Spec : Prop :=
  ∀ n, P1075283921686363761.a n = A224666 (n + 1)

end A224666

/-! ## A224666.P329843969813798888

`A056220(n+7)-19`
-/

namespace A224666.P329843969813798888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (n + 7) - 19

end

end A224666.P329843969813798888

namespace A224666

/-- `A056220(n+7)-19` -/
def P329843969813798888.Spec : Prop :=
  ∀ n, P329843969813798888.a n = A224666 (n + 1)

end A224666

/-! ## A224666.P11525579975496100114

`A001105(n+7)-20`
-/

namespace A224666.P11525579975496100114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (n + 7) - 20

end

end A224666.P11525579975496100114

namespace A224666

/-- `A001105(n+7)-20` -/
def P11525579975496100114.Spec : Prop :=
  ∀ n, P11525579975496100114.a n = A224666 (n + 1)

end A224666

/-! ## A224666.P6844362316960022739

`n+8+A020719(2*n)*(n+10)`
-/

namespace A224666.P6844362316960022739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 8 : ℤ) + A020719 (2 * n) * (n + 10 : ℤ)

end

end A224666.P6844362316960022739

namespace A224666

/-- `n+8+A020719(2*n)*(n+10)` -/
def P6844362316960022739.Spec : Prop :=
  ∀ n, P6844362316960022739.a n = A224666 (n + 1)

end A224666

/-! ## A224666.P916358713342103255

`A020715(2*n)+A020722(2*n)*(n+9)`
-/

namespace A224666.P916358713342103255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 (2 * n) + A020722 (2 * n) * (n + 9 : ℤ)

end

end A224666.P916358713342103255

namespace A224666

/-- `A020715(2*n)+A020722(2*n)*(n+9)` -/
def P916358713342103255.Spec : Prop :=
  ∀ n, P916358713342103255.a n = A224666 (n + 1)

end A224666

/-!
# A224667: Number of 5 X 5 0..n matrices with each 2 X 2 subblock idempotent.

The programs for A224667, the canonical program `A224667.P315810660514061526` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224667 has offset 1).

The definition of A224667 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224667.P315810660514061526

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=196, a(1)=260, a(2)=332`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A224667

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P315810660514061526.Spec : Prop :=
  ∀ n, P315810660514061526.a n = A224667 (n + 1)

theorem P315810660514061526.correct : P315810660514061526.Spec := by
  intro n
  simp only [A224667, Nat.add_sub_cancel]

end A224667

/-! ## A224667.P7658239694157705454

`(2*n+15)²-29`
-/

namespace A224667.P7658239694157705454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 15) ^ 2 : ℤ) - 29

end

end A224667.P7658239694157705454

namespace A224667

/-- `(2*n+15)²-29` -/
def P7658239694157705454.Spec : Prop :=
  ∀ n, P7658239694157705454.a n = A224667 (n + 1)

end A224667

/-! ## A224667.P7320668381703222373

`lcm(4, (n+7)²+n)`
-/

namespace A224667.P7320668381703222373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 ((n + 7) ^ 2 + n)

end

end A224667.P7320668381703222373

namespace A224667

/-- `lcm(4, (n+7)²+n)` -/
def P7320668381703222373.Spec : Prop :=
  ∀ n, (P7320668381703222373.a n : ℤ) = A224667 (n + 1)

end A224667

/-! ## A224667.P14976024440872687600

`record[4*((7-n)²-n)]`
-/

namespace A224667.P14976024440872687600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((7 - (n : ℤ)) ^ 2 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224667.P14976024440872687600

namespace A224667

/-- `record[4*((7-n)²-n)]` -/
def P14976024440872687600.Spec : Prop :=
  ∀ n, P14976024440872687600.a n = A224667 (n + 1)

end A224667

/-! ## A224667.P16844803404226217778

`4*A108195(n+5)`
-/

namespace A224667.P16844803404226217778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A108195 (n + 5)

end

end A224667.P16844803404226217778

namespace A224667

/-- `4*A108195(n+5)` -/
def P16844803404226217778.Spec : Prop :=
  ∀ n, P16844803404226217778.a n = A224667 (n + 1)

end A224667

/-! ## A224667.P9373988191673887649

`4*(A000290(n+7)+n)`
-/

namespace A224667.P9373988191673887649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A000290 (n + 7) + (n : ℤ))

end

end A224667.P9373988191673887649

namespace A224667

/-- `4*(A000290(n+7)+n)` -/
def P9373988191673887649.Spec : Prop :=
  ∀ n, P9373988191673887649.a n = A224667 (n + 1)

end A224667

/-! ## A224667.P18112087327472336212

`4*(A002378(n+7)-7)`
-/

namespace A224667.P18112087327472336212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A002378 (n + 7) - 7)

end

end A224667.P18112087327472336212

namespace A224667

/-- `4*(A002378(n+7)-7)` -/
def P18112087327472336212.Spec : Prop :=
  ∀ n, P18112087327472336212.a n = A224667 (n + 1)

end A224667

/-! ## A224667.P3016383723208955755

`4*(A002061(n+8)-8)`
-/

namespace A224667.P3016383723208955755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A002061 (n + 8) - 8)

end

end A224667.P3016383723208955755

namespace A224667

/-- `4*(A002061(n+8)-8)` -/
def P3016383723208955755.Spec : Prop :=
  ∀ n, P3016383723208955755.a n = A224667 (n + 1)

end A224667

/-! ## A224667.P4022879354000709573

`A109161(A187989(n+2))`
-/

namespace A224667.P4022879354000709573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109161 (A187989 (n + 2)).toNat

end

end A224667.P4022879354000709573

namespace A224667

/-- `A109161(A187989(n+2))` -/
def P4022879354000709573.Spec : Prop :=
  ∀ n, P4022879354000709573.a n = A224667 (n + 1)

end A224667

/-!
# A224668: Number of 6 X 6 0..n matrices with each 2 X 2 subblock idempotent.

The programs for A224668, the canonical program `A224668.P11358100090648438610` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224668 has offset 1).

The definition of A224668 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224668.P11358100090648438610

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=428, a(1)=542, a(2)=668`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A224668

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P11358100090648438610.Spec : Prop :=
  ∀ n, P11358100090648438610.a n = A224668 (n + 1)

theorem P11358100090648438610.correct : P11358100090648438610.Spec := by
  intro n
  simp only [A224668, Nat.add_sub_cancel]

end A224668

/-! ## A224668.P13917694860975999701

`3*A224666(n+3)+2`
-/

namespace A224668.P13917694860975999701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A224666 (n + 3) + 2

end

end A224668.P13917694860975999701

namespace A224668

/-- `3*A224666(n+3)+2` -/
def P13917694860975999701.Spec : Prop :=
  ∀ n, P13917694860975999701.a n = A224668 (n + 1)

end A224668

/-! ## A224668.P13318653097904693894

`A142241(n+5)+A033581(n+7)`
-/

namespace A224668.P13318653097904693894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142241 (n + 5) + A033581 (n + 7)

end

end A224668.P13318653097904693894

namespace A224668

/-- `A142241(n+5)+A033581(n+7)` -/
def P13318653097904693894.Spec : Prop :=
  ∀ n, P13318653097904693894.a n = A224668 (n + 1)

end A224668

/-! ## A224668.P18176079076745336779

`A033570(n+8)+A017017(n)`
-/

namespace A224668.P18176079076745336779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033570 (n + 8) + A017017 n

end

end A224668.P18176079076745336779

namespace A224668

/-- `A033570(n+8)+A017017(n)` -/
def P18176079076745336779.Spec : Prop :=
  ∀ n, P18176079076745336779.a n = A224668 (n + 1)

end A224668

/-! ## A224668.P5564714207299783057

`A005901(n+7)-A005843(n+4)²`
-/

namespace A224668.P5564714207299783057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005901 (n + 7) - A005843 (n + 4) ^ 2

end

end A224668.P5564714207299783057

namespace A224668

/-- `A005901(n+7)-A005843(n+4)²` -/
def P5564714207299783057.Spec : Prop :=
  ∀ n, P5564714207299783057.a n = A224668 (n + 1)

end A224668

/-! ## A224668.P13872991380605839683

`A005897(n+8)+Δ[A005897(n+3)]`
-/

namespace A224668.P13872991380605839683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 (n + 8) + (f1 (n + 1) - f1 n)

end

end A224668.P13872991380605839683

namespace A224668

/-- `A005897(n+8)+Δ[A005897(n+3)]` -/
def P13872991380605839683.Spec : Prop :=
  ∀ n, P13872991380605839683.a n = A224668 (n + 1)

end A224668

/-! ## A224668.P11505166139234715088

`8*n+11+A080859(n+8)`
-/

namespace A224668.P11505166139234715088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 11 : ℤ) + A080859 (n + 8)

end

end A224668.P11505166139234715088

namespace A224668

/-- `8*n+11+A080859(n+8)` -/
def P11505166139234715088.Spec : Prop :=
  ∀ n, P11505166139234715088.a n = A224668 (n + 1)

end A224668

/-! ## A224668.P5870980741087281196

`A298078(n+9)-A027688(n+5)`
-/

namespace A224668.P5870980741087281196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298078 (n + 9) - A027688 (n + 5)

end

end A224668.P5870980741087281196

namespace A224668

/-- `A298078(n+9)-A027688(n+5)` -/
def P5870980741087281196.Spec : Prop :=
  ∀ n, P5870980741087281196.a n = A224668 (n + 1)

end A224668

/-! ## A224668.P14153130265023487703

`A097803(n+9)-61`
-/

namespace A224668.P14153130265023487703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097803 (n + 9) - 61

end

end A224668.P14153130265023487703

namespace A224668

/-- `A097803(n+9)-61` -/
def P14153130265023487703.Spec : Prop :=
  ∀ n, P14153130265023487703.a n = A224668 (n + 1)

end A224668

/-! ## A224668.P15188360338454513278

`Δ[A005898(n+8)]-60`
-/

namespace A224668.P15188360338454513278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 60

end

end A224668.P15188360338454513278

namespace A224668

/-- `Δ[A005898(n+8)]-60` -/
def P15188360338454513278.Spec : Prop :=
  ∀ n, P15188360338454513278.a n = A224668 (n + 1)

end A224668

/-! ## A224668.P4068333171165555386

`Δ[A000096(n+10)*A016825(n+2)]`
-/

namespace A224668.P4068333171165555386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 10) * A016825 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A224668.P4068333171165555386

namespace A224668

/-- `Δ[A000096(n+10)*A016825(n+2)]` -/
def P4068333171165555386.Spec : Prop :=
  ∀ n, P4068333171165555386.a n = A224668 (n + 1)

end A224668

/-! ## A224668.P4213067796657823661

`Δ[A005408(n+2)*A028552(n+10)]`
-/

namespace A224668.P4213067796657823661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 2) * A028552 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A224668.P4213067796657823661

namespace A224668

/-- `Δ[A005408(n+2)*A028552(n+10)]` -/
def P4213067796657823661.Spec : Prop :=
  ∀ n, P4213067796657823661.a n = A224668 (n + 1)

end A224668

/-! ## A224668.P13381218237046031453

`A005899(n+10)+∑[A016825(n+6)]`
-/

namespace A224668.P13381218237046031453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 (n + 10) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224668.P13381218237046031453

namespace A224668

/-- `A005899(n+10)+∑[A016825(n+6)]` -/
def P13381218237046031453.Spec : Prop :=
  ∀ n, P13381218237046031453.a n = A224668 (n + 1)

end A224668

/-! ## A224668.P4186374545588754332

`A049452(n+11)-Δ[A022280(n+12)]`
-/

namespace A224668.P4186374545588754332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022280 (n + 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049452 (n + 11) - (f1 (n + 1) - f1 n)

end

end A224668.P4186374545588754332

namespace A224668

/-- `A049452(n+11)-Δ[A022280(n+12)]` -/
def P4186374545588754332.Spec : Prop :=
  ∀ n, P4186374545588754332.a n = A224668 (n + 1)

end A224668

/-! ## A224668.P6319171842820780723

`A103115(n+11)-Δ[A016778(n+12)]`
-/

namespace A224668.P6319171842820780723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016778 (n + 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103115 (n + 11) - (f1 (n + 1) - f1 n)

end

end A224668.P6319171842820780723

namespace A224668

/-- `A103115(n+11)-Δ[A016778(n+12)]` -/
def P6319171842820780723.Spec : Prop :=
  ∀ n, P6319171842820780723.a n = A224668 (n + 1)

end A224668

/-! ## A224668.P8992518610219037987

`A033581(n+10)-A017569(n+14)`
-/

namespace A224668.P8992518610219037987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 (n + 10) - A017569 (n + 14)

end

end A224668.P8992518610219037987

namespace A224668

/-- `A033581(n+10)-A017569(n+14)` -/
def P8992518610219037987.Spec : Prop :=
  ∀ n, P8992518610219037987.a n = A224668 (n + 1)

end A224668

/-! ## A224668.P16392940869240698156

`A016825(A016777(n+3))+A005897(n+8)`
-/

namespace A224668.P16392940869240698156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A016777 (n + 3)).toNat + A005897 (n + 8)

end

end A224668.P16392940869240698156

namespace A224668

/-- `A016825(A016777(n+3))+A005897(n+8)` -/
def P16392940869240698156.Spec : Prop :=
  ∀ n, P16392940869240698156.a n = A224668 (n + 1)

end A224668

/-! ## A224668.P9623008786233261446

`A259750(A004273(n+6))+A033581(n+7)`
-/

namespace A224668.P9623008786233261446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259750 (A004273 (n + 6)).toNat + A033581 (n + 7)

end

end A224668.P9623008786233261446

namespace A224668

/-- `A259750(A004273(n+6))+A033581(n+7)` -/
def P9623008786233261446.Spec : Prop :=
  ∀ n, P9623008786233261446.a n = A224668 (n + 1)

end A224668

/-! ## A224668.P12120639264606656495

`A017017(n)+A000326(A004273(n+9))`
-/

namespace A224668.P12120639264606656495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n + A000326 (A004273 (n + 9)).toNat

end

end A224668.P12120639264606656495

namespace A224668

/-- `A017017(n)+A000326(A004273(n+9))` -/
def P12120639264606656495.Spec : Prop :=
  ∀ n, P12120639264606656495.a n = A224668 (n + 1)

end A224668

/-! ## A224668.P11057295725294992944

`A045943(A004278(n+10))+A017185(n+2)`
-/

namespace A224668.P11057295725294992944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 (A004278 (n + 10)).toNat + A017185 (n + 2)

end

end A224668.P11057295725294992944

namespace A224668

/-- `A045943(A004278(n+10))+A017185(n+2)` -/
def P11057295725294992944.Spec : Prop :=
  ∀ n, P11057295725294992944.a n = A224668 (n + 1)

end A224668

/-!
# A224669: Number of (n+1) X 2 0..2 matrices with each 2 X 2 subblock idempotent.

The programs for A224669, the canonical program `A224669.P10216079767707608740` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224669 has offset 1).

The definition of A224669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224669.P10216079767707608740

`a(n-1)+a(n-2)+4` with `a(0)=12, a(1)=25`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A224669

/-- `a(n-1)+a(n-2)+4` -/
def P10216079767707608740.Spec : Prop :=
  ∀ n, (P10216079767707608740.a n : ℤ) = A224669 (n + 1)

theorem P10216079767707608740.correct : P10216079767707608740.Spec := by
  intro n
  simp only [A224669, Nat.add_sub_cancel]

end A224669

/-! ## A224669.P4757995224947643454

`2*a(n-1)-a(n-3)` with `a(0)=12, a(1)=25, a(2)=41`
-/

namespace A224669.P4757995224947643454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12, 25, 41] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A224669.P4757995224947643454

namespace A224669

/-- `2*a(n-1)-a(n-3)` -/
def P4757995224947643454.Spec : Prop :=
  ∀ n, P4757995224947643454.a n = A224669 (n + 1)

end A224669

/-! ## A224669.P17244735486197286104

`∑[A022124(n)]+9`
-/

namespace A224669.P17244735486197286104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 9

end

end A224669.P17244735486197286104

namespace A224669

/-- `∑[A022124(n)]+9` -/
def P17244735486197286104.Spec : Prop :=
  ∀ n, P17244735486197286104.a n = A224669 (n + 1)

end A224669

/-! ## A224669.P15318368647151350523

`A022124(n+2)-4`
-/

namespace A224669.P15318368647151350523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022124 (n + 2) - 4

end

end A224669.P15318368647151350523

namespace A224669

/-- `A022124(n+2)-4` -/
def P15318368647151350523.Spec : Prop :=
  ∀ n, P15318368647151350523.a n = A224669 (n + 1)

end A224669

/-! ## A224669.P10462508995189581780

`A182415(n)+A097657(n)`
-/

namespace A224669.P10462508995189581780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182415 n + A097657 n

end

end A224669.P10462508995189581780

namespace A224669

/-- `A182415(n)+A097657(n)` -/
def P10462508995189581780.Spec : Prop :=
  ∀ n, P10462508995189581780.a n = A224669 (n + 1)

end A224669

/-! ## A224669.P12009383940779180678

`A204644(n+1)+A022130(n)`
-/

namespace A224669.P12009383940779180678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204644 (n + 1) + A022130 n

end

end A224669.P12009383940779180678

namespace A224669

/-- `A204644(n+1)+A022130(n)` -/
def P12009383940779180678.Spec : Prop :=
  ∀ n, P12009383940779180678.a n = A224669 (n + 1)

end A224669

/-! ## A224669.P3129057718049590080

`∑[A022125(n)-A000045(n)]+9`
-/

namespace A224669.P3129057718049590080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022125 n - A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 9

end

end A224669.P3129057718049590080

namespace A224669

/-- `∑[A022125(n)-A000045(n)]+9` -/
def P3129057718049590080.Spec : Prop :=
  ∀ n, P3129057718049590080.a n = A224669 (n + 1)

end A224669

/-! ## A224669.P631021758389696449

`A026390(n+1)+A022090(n+2)`
-/

namespace A224669.P631021758389696449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026390 (n + 1) + A022090 (n + 2)

end

end A224669.P631021758389696449

namespace A224669

/-- `A026390(n+1)+A022090(n+2)` -/
def P631021758389696449.Spec : Prop :=
  ∀ n, P631021758389696449.a n = A224669 (n + 1)

end A224669

/-! ## A224669.P2038894644355920707

`A206417(n+2)+A022092(n+2)`
-/

namespace A224669.P2038894644355920707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206417 (n + 2) + A022092 (n + 2)

end

end A224669.P2038894644355920707

namespace A224669

/-- `A206417(n+2)+A022092(n+2)` -/
def P2038894644355920707.Spec : Prop :=
  ∀ n, P2038894644355920707.a n = A224669 (n + 1)

end A224669

/-! ## A224669.P17034289047288464784

`∑[A000032(n+2)+9*A000045(n)]+9`
-/

namespace A224669.P17034289047288464784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 2) + 9 * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 9

end

end A224669.P17034289047288464784

namespace A224669

/-- `∑[A000032(n+2)+9*A000045(n)]+9` -/
def P17034289047288464784.Spec : Prop :=
  ∀ n, P17034289047288464784.a n = A224669 (n + 1)

end A224669

/-! ## A224669.P15945118351051732109

`A206417(n+1)+A185691(n)+A000032(n)`
-/

namespace A224669.P15945118351051732109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206417 (n + 1) + (A185691 n + A000032 n)

end

end A224669.P15945118351051732109

namespace A224669

/-- `A206417(n+1)+A185691(n)+A000032(n)` -/
def P15945118351051732109.Spec : Prop :=
  ∀ n, P15945118351051732109.a n = A224669 (n + 1)

end A224669

/-! ## A224669.P2293730053338396193

`A184959(n+1)+A206417(n+2)-A000045(n)`
-/

namespace A224669.P2293730053338396193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184959 (n + 1) + (A206417 (n + 2) - A000045 n)

end

end A224669.P2293730053338396193

namespace A224669

/-- `A184959(n+1)+A206417(n+2)-A000045(n)` -/
def P2293730053338396193.Spec : Prop :=
  ∀ n, P2293730053338396193.a n = A224669 (n + 1)

end A224669

/-!
# A224670: Number of (n+1) X 3 0..2 matrices with each 2 X 2 subblock idempotent.

The programs for A224670, the canonical program `A224670.P2195628655161788300` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224670 has offset 1).

The definition of A224670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 471 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224670.P14148429838888012285

`A224545(n+1)-A020639(A160713(n))`
-/

namespace A224670.P14148429838888012285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224545 (n + 1) - A020639 (A160713 n).toNat

end

end A224670.P14148429838888012285

namespace A224670

/-- `A224545(n+1)-A020639(A160713(n))` -/
def P14148429838888012285.Spec : Prop :=
  ∀ n, P14148429838888012285.a n = A224670 (n + 1)

end A224670

/-! ## A224670.P6776899247439377118

`A224545(n+1)-A020639(A008864(n+1))`
-/

namespace A224670.P6776899247439377118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224545 (n + 1) - A020639 (A008864 (n + 1)).toNat

end

end A224670.P6776899247439377118

namespace A224670

/-- `A224545(n+1)-A020639(A008864(n+1))` -/
def P6776899247439377118.Spec : Prop :=
  ∀ n, P6776899247439377118.a n = A224670 (n + 1)

end A224670

/-! ## A224670.P6898582718568902070

`A224545(n+1)-A020639(A031131(n+1))`
-/

namespace A224670.P6898582718568902070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224545 (n + 1) - A020639 (A031131 (n + 1)).toNat

end

end A224670.P6898582718568902070

namespace A224670

/-- `A224545(n+1)-A020639(A031131(n+1))` -/
def P6898582718568902070.Spec : Prop :=
  ∀ n, P6898582718568902070.a n = A224670 (n + 1)

end A224670

/-! ## A224670.P392531970097047280

`A224545(n+1)-A053669(A003627(n+1))`
-/

namespace A224670.P392531970097047280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224545 (n + 1) - A053669 (A003627 (n + 1)).toNat

end

end A224670.P392531970097047280

namespace A224670

/-- `A224545(n+1)-A053669(A003627(n+1))` -/
def P392531970097047280.Spec : Prop :=
  ∀ n, P392531970097047280.a n = A224670 (n + 1)

end A224670

/-! ## A224670.P15234509219430177638

`A224545(n+1)-A085058(A061142(n+1))`
-/

namespace A224670.P15234509219430177638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224545 (n + 1) - A085058 (A061142 (n + 1)).toNat

end

end A224670.P15234509219430177638

namespace A224670

/-- `A224545(n+1)-A085058(A061142(n+1))` -/
def P15234509219430177638.Spec : Prop :=
  ∀ n, P15234509219430177638.a n = A224670 (n + 1)

end A224670

/-! ## A224670.P2195628655161788300

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=25, a(1)=50, a(2)=76, a(3)=123, a(4)=191`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A224670

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P2195628655161788300.Spec : Prop :=
  ∀ n, P2195628655161788300.a n = A224670 (n + 1)

theorem P2195628655161788300.correct : P2195628655161788300.Spec := by
  intro n
  simp only [A224670, Nat.add_sub_cancel]

end A224670

/-! ## A224670.P12854002393798516362

`A224545(n+1)-A020639(A050475(A114896(n)))`
-/

namespace A224670.P12854002393798516362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224545 (n + 1) - A020639 (A050475 (A114896 n).toNat).toNat

end

end A224670.P12854002393798516362

namespace A224670

/-- `A224545(n+1)-A020639(A050475(A114896(n)))` -/
def P12854002393798516362.Spec : Prop :=
  ∀ n, P12854002393798516362.a n = A224670 (n + 1)

end A224670

/-! ## A224670.P9013592142243425003

`A224545(n+1)-A178815(n+1)`
-/

namespace A224670.P9013592142243425003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224545 (n + 1) - A178815 (n + 1)

end

end A224670.P9013592142243425003

namespace A224670

/-- `A224545(n+1)-A178815(n+1)` -/
def P9013592142243425003.Spec : Prop :=
  ∀ n, P9013592142243425003.a n = A224670 (n + 1)

end A224670

/-! ## A224670.P11593814251578277621

`A224545(n+1)-A085058(A025487(n+1))`
-/

namespace A224670.P11593814251578277621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224545 (n + 1) - A085058 (A025487 (n + 1)).toNat

end

end A224670.P11593814251578277621

namespace A224670

/-- `A224545(n+1)-A085058(A025487(n+1))` -/
def P11593814251578277621.Spec : Prop :=
  ∀ n, P11593814251578277621.a n = A224670 (n + 1)

end A224670

/-!
# A224671: Number of (n+1) X 4 0..2 matrices with each 2 X 2 subblock idempotent.

The programs for A224671, the canonical program `A224671.P8130401765974751726` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224671 has offset 1).

The definition of A224671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224671.P8130401765974751726

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=41, a(1)=76, a(2)=108, a(3)=170, a(4)=257, a(5)=398`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A224671

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P8130401765974751726.Spec : Prop :=
  ∀ n, P8130401765974751726.a n = A224671 (n + 1)

theorem P8130401765974751726.correct : P8130401765974751726.Spec := by
  intro n
  simp only [A224671, Nat.add_sub_cancel]

end A224671

/-! ## A224671.P17263569653668357128

`A224676(∑[n+2]+4)`
-/

namespace A224671.P17263569653668357128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224676 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224671.P17263569653668357128

namespace A224671

/-- `A224676(∑[n+2]+4)` -/
def P17263569653668357128.Spec : Prop :=
  ∀ n, P17263569653668357128.a n = A224671 (n + 1)

end A224671

/-! ## A224671.P12984259691949254542

`or(char[4], A224676(A167614(n+1)))`
-/

namespace A224671.P12984259691949254542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A224676 (A167614 (n + 1)).toNat)

end

end A224671.P12984259691949254542

namespace A224671

/-- `or(char[4], A224676(A167614(n+1)))` -/
def P12984259691949254542.Spec : Prop :=
  ∀ n, P12984259691949254542.a n = A224671 (n + 1)

end A224671

/-! ## A224671.P7305095928767520888

`lcm(A057077(n), A224676(A167614(n+1)))`
-/

namespace A224671.P7305095928767520888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A224676 (A167614 (n + 1)).toNat)

end

end A224671.P7305095928767520888

namespace A224671

/-- `lcm(A057077(n), A224676(A167614(n+1)))` -/
def P7305095928767520888.Spec : Prop :=
  ∀ n, (P7305095928767520888.a n : ℤ) = A224671 (n + 1)

end A224671

/-! ## A224671.P10685961644229532049

`C(A224676(A167614(n+1)), A106400(n)²)`
-/

namespace A224671.P10685961644229532049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A224676 (A167614 (n + 1)).toNat).toNat (A106400 n ^ 2).toNat

end

end A224671.P10685961644229532049

namespace A224671

/-- `C(A224676(A167614(n+1)), A106400(n)²)` -/
def P10685961644229532049.Spec : Prop :=
  ∀ n, (P10685961644229532049.a n : ℤ) = A224671 (n + 1)

end A224671

/-!
# A224672: Number of (n+1) X 5 0..2 matrices with each 2 X 2 subblock idempotent.

The programs for A224672, the canonical program `A224672.P3430437127889238306` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224672 has offset 1).

The definition of A224672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224672.P3430437127889238306

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=70, a(1)=123, a(2)=170, a(3)=260, a(4)=381, a(5)=573`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A224672

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P3430437127889238306.Spec : Prop :=
  ∀ n, P3430437127889238306.a n = A224672 (n + 1)

theorem P3430437127889238306.correct : P3430437127889238306.Spec := by
  intro n
  simp only [A224672, Nat.add_sub_cancel]

end A224672

/-! ## A224672.P3868823001837243422

`A224676(∑[n+3]+7)`
-/

namespace A224672.P3868823001837243422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224676 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A224672.P3868823001837243422

namespace A224672

/-- `A224676(∑[n+3]+7)` -/
def P3868823001837243422.Spec : Prop :=
  ∀ n, P3868823001837243422.a n = A224672 (n + 1)

end A224672

/-! ## A224672.P15303149805563542673

`lcm((-1)^n, A224676(A055999(n)+10))`
-/

namespace A224672.P15303149805563542673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A224676 (A055999 n + 10).toNat)

end

end A224672.P15303149805563542673

namespace A224672

/-- `lcm((-1)^n, A224676(A055999(n)+10))` -/
def P15303149805563542673.Spec : Prop :=
  ∀ n, (P15303149805563542673.a n : ℤ) = A224672 (n + 1)

end A224672

/-! ## A224672.P8087548503434173310

`A224676(A167614(n+2)+1)+(2*n)%2`
-/

namespace A224672.P8087548503434173310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224676 (A167614 (n + 2) + 1).toNat + ((2 * n % 2 : ℕ) : ℤ)

end

end A224672.P8087548503434173310

namespace A224672

/-- `A224676(A167614(n+2)+1)+(2*n)%2` -/
def P8087548503434173310.Spec : Prop :=
  ∀ n, P8087548503434173310.a n = A224672 (n + 1)

end A224672

/-! ## A224672.P5638235866805969058

`lcm(A057077(n), A224676(A167614(n+2)+1))`
-/

namespace A224672.P5638235866805969058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A224676 (A167614 (n + 2) + 1).toNat)

end

end A224672.P5638235866805969058

namespace A224672

/-- `lcm(A057077(n), A224676(A167614(n+2)+1))` -/
def P5638235866805969058.Spec : Prop :=
  ∀ n, (P5638235866805969058.a n : ℤ) = A224672 (n + 1)

end A224672

/-!
# A224673: Number of (n+1) X 6 0..2 matrices with each 2 X 2 subblock idempotent.

The programs for A224673, the canonical program `A224673.P5885818256906925069` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224673 has offset 1).

The definition of A224673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224673.P5885818256906925069

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=115, a(1)=191, a(2)=257, a(3)=381, a(4)=542, a(5)=793`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A224673

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P5885818256906925069.Spec : Prop :=
  ∀ n, P5885818256906925069.a n = A224673 (n + 1)

theorem P5885818256906925069.correct : P5885818256906925069.Spec := by
  intro n
  simp only [A224673, Nat.add_sub_cancel]

end A224673

/-! ## A224673.P18377748147237189484

`A224676(∑[n+4]+11)`
-/

namespace A224673.P18377748147237189484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224676 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A224673.P18377748147237189484

namespace A224673

/-- `A224676(∑[n+4]+11)` -/
def P18377748147237189484.Spec : Prop :=
  ∀ n, P18377748147237189484.a n = A224673 (n + 1)

end A224673

/-!
# A224674: Number of (n+1) X 7 0..2 matrices with each 2 X 2 subblock idempotent.

The programs for A224674, there is no canonical definition to state claims against.
-/

/-! ## A224674.P15579843570297209476

`A224676(A166136(n+4))`
-/

namespace A224674.P15579843570297209476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224676 (A166136 (n + 4)).toNat

end

end A224674.P15579843570297209476

/-! ## A224674.P8459108966419494065

`A224676(A056115(n)+21)`
-/

namespace A224674.P8459108966419494065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224676 (A056115 n + 21).toNat

end

end A224674.P8459108966419494065

/-! ## A224674.P1946857813044812005

`A224676(A167614(n+4)+3)`
-/

namespace A224674.P1946857813044812005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224676 (A167614 (n + 4) + 3).toNat

end

end A224674.P1946857813044812005

/-! ## A224674.P13156978484558691858

`A224676(A000124(n+5)+5)`
-/

namespace A224674.P13156978484558691858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224676 (A000124 (n + 5) + 5).toNat

end

end A224674.P13156978484558691858

/-! ## A224674.P16216990082516619547

`A224676(A000096(n+4)+7)`
-/

namespace A224674.P16216990082516619547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224676 (A000096 (n + 4) + 7).toNat

end

end A224674.P16216990082516619547

/-!
# A224675: Number of (n+1) X 8 0..2 matrices with each 2 X 2 subblock idempotent.

The programs for A224675, there is no canonical definition to state claims against.
-/

/-! ## A224675.P6809547202064289914

`A224676(A056119(n)+28)`
-/

namespace A224675.P6809547202064289914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224676 (A056119 n + 28).toNat

end

end A224675.P6809547202064289914

/-! ## A224675.P7783421535278785453

`A224676(A166136(n+5)+1)`
-/

namespace A224675.P7783421535278785453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224676 (A166136 (n + 5) + 1).toNat

end

end A224675.P7783421535278785453

/-! ## A224675.P15033679644822500129

`A224676(A167614(n+5)+4)`
-/

namespace A224675.P15033679644822500129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224676 (A167614 (n + 5) + 4).toNat

end

end A224675.P15033679644822500129

/-! ## A224675.P857667306305350595

`A224676(A000124(n+6)+6)`
-/

namespace A224675.P857667306305350595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224676 (A000124 (n + 6) + 6).toNat

end

end A224675.P857667306305350595

/-! ## A224675.P344050853985683576

`A224676(A000096(n+5)+8)`
-/

namespace A224675.P344050853985683576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224676 (A000096 (n + 5) + 8).toNat

end

end A224675.P344050853985683576

/-!
# A224677: Number of compositions of n*(n+1)/2 into sums of positive triangular numbers.

The programs for A224677, there is no canonical definition to state claims against.
-/

/-! ## A224677.P17283452652592624537

`A023361(n*(n+1)/2)`
-/

namespace A224677.P17283452652592624537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023361 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat

end

end A224677.P17283452652592624537

/-! ## A224677.P594884363872120051

`A348529(∑[n])+1`
-/

namespace A224677.P594884363872120051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348529 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A224677.P594884363872120051

/-! ## A224677.P2237623708739590821

`or(A000007(n), A023361(C(n+1, 2)))`
-/

namespace A224677.P2237623708739590821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A023361 (Nat.choose (n + 1) 2))

end

end A224677.P2237623708739590821

/-! ## A224677.P16494168241713816768

`or(A000007(n), A023361((n²+n)/2))`
-/

namespace A224677.P16494168241713816768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A023361 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat)

end

end A224677.P16494168241713816768

/-! ## A224677.P10432449223203015498

`A185246(n)+A023361(A000217(n))`
-/

namespace A224677.P10432449223203015498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185246 n + A023361 (A000217 n).toNat

end

end A224677.P10432449223203015498

/-!
# A224679: Number of compositions of n^2 into sums of positive triangular numbers.

The programs for A224679, there is no canonical definition to state claims against.
-/

/-! ## A224679.P6501696390051866000

`A023361(n²)`
-/

namespace A224679.P6501696390051866000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023361 (n ^ 2)

end

end A224679.P6501696390051866000

/-! ## A224679.P14592841622855704178

`A181340(n+1)+A023361(A000290(n))`
-/

namespace A224679.P14592841622855704178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181340 (n + 1) + A023361 (A000290 n).toNat

end

end A224679.P14592841622855704178

/-! ## A224679.P11512574255974756725

`A217155(n+1)+A023361(A000290(n))`
-/

namespace A224679.P11512574255974756725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217155 (n + 1) + A023361 (A000290 n).toNat

end

end A224679.P11512574255974756725

/-! ## A224679.P2807783655273962173

`or(A023361(A000290(n)), A281477(n+2))`
-/

namespace A224679.P2807783655273962173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023361 (A000290 n).toNat) (A281477 (n + 2))

end

end A224679.P2807783655273962173

/-! ## A224679.P6565916548957966193

`A023361(A000290(n))^A178688(n+1)`
-/

namespace A224679.P6565916548957966193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023361 (A000290 n).toNat : ℚ) ^ (A178688 (n + 1) : ℤ)

end

end A224679.P6565916548957966193

/-!
# A224680: a(n) = A224678(n^2).

The programs for A224680, there is no canonical definition to state claims against.
-/

/-! ## A224680.P3655551091141961869

`A224678((n+1)²)`
-/

namespace A224680.P3655551091141961869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224678 ((n + 1) ^ 2)

end

end A224680.P3655551091141961869

/-! ## A224680.P14812056829088136552

`record[A224678(A000174(n)²)]`
-/

namespace A224680.P14812056829088136552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224678 (A000174 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224680.P14812056829088136552

/-!
# A224681: G.f.: exp( Sum_{n>=1} A224678(n^2) * x^n/n ).

The programs for A224681, there is no canonical definition to state claims against.
-/

/-! ## A224681.P15191335149510772132

`A096072(or(1, n!))`
-/

namespace A224681.P15191335149510772132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096072 (Nat.lor 1 (Nat.factorial n))

end

end A224681.P15191335149510772132

/-!
# A224682: Number of (n+4)X(n+4) 0..1 matrices with each 5X5 subblock idempotent.

The programs for A224682, there is no canonical definition to state claims against.
-/

/-! ## A224682.P3652757301953205377

`A224690(∑[4*n]+1)`
-/

namespace A224682.P3652757301953205377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224690 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224682.P3652757301953205377

/-! ## A224682.P7984127773855360358

`lcm(2, A224690(A001844(n)))`
-/

namespace A224682.P7984127773855360358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A224690 (A001844 n).toNat)

end

end A224682.P7984127773855360358

/-! ## A224682.P11540550733282260106

`A007318(∑[n])*A224690(A001844(n))`
-/

namespace A224682.P11540550733282260106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A224690 (A001844 n).toNat

end

end A224682.P11540550733282260106

/-! ## A224682.P10510773614878822520

`A224690(A001844(n))+A000007(n+2)`
-/

namespace A224682.P10510773614878822520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224690 (A001844 n).toNat + A000007 (n + 2)

end

end A224682.P10510773614878822520

/-! ## A224682.P7712788404675865762

`A224690(A001844(n))%A061604(n+1)`
-/

namespace A224682.P7712788404675865762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224690 (A001844 n).toNat) (A061604 (n + 1))

end

end A224682.P7712788404675865762

/-!
# A224683: Number of (n+4)X5 0..1 matrices with each 5X5 subblock idempotent.

The programs for A224683, there is no canonical definition to state claims against.
-/

/-! ## A224683.P16384229474588417532

`A224690(∑[n]+1)`
-/

namespace A224683.P16384229474588417532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224690 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224683.P16384229474588417532

/-! ## A224683.P17820289152273202776

`or(char[1], A224690(A000124(n)))`
-/

namespace A224683.P17820289152273202776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A224690 (A000124 n).toNat)

end

end A224683.P17820289152273202776

/-! ## A224683.P11210040480724900370

`lcm(A097807(n), A224690(A000124(n)))`
-/

namespace A224683.P11210040480724900370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097807 n) (A224690 (A000124 n).toNat)

end

end A224683.P11210040480724900370

/-! ## A224683.P12119590852710325601

`char[A030000(n)]*A224690(A000124(n))`
-/

namespace A224683.P12119590852710325601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030000 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A224690 (A000124 n).toNat

end

end A224683.P12119590852710325601

/-! ## A224683.P9280955682000282594

`char[A056539(n)]*A224690(A000124(n))`
-/

namespace A224683.P9280955682000282594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A224690 (A000124 n).toNat

end

end A224683.P9280955682000282594

/-! ## A224683.P9930443494169677124

`char[A180200(n)]*A224690(A000124(n))`
-/

namespace A224683.P9930443494169677124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A224690 (A000124 n).toNat

end

end A224683.P9930443494169677124

/-! ## A224683.P5494500420253086090

`A224690(A000124(n))+A000038(n+1)`
-/

namespace A224683.P5494500420253086090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224690 (A000124 n).toNat + A000038 (n + 1)

end

end A224683.P5494500420253086090

/-! ## A224683.P4389431105268876904

`A057427(n+1)*A224690(A000124(n))`
-/

namespace A224683.P4389431105268876904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A224690 (A000124 n).toNat

end

end A224683.P4389431105268876904

/-! ## A224683.P4764548976829292998

`A224690(A000124(n))+char[A224690(n+1)]`
-/

namespace A224683.P4764548976829292998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224690 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224690 (A000124 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A224683.P4764548976829292998

/-! ## A224683.P6036910872248253896

`A224690(A000124(n))+A008683(4*(n+1))`
-/

namespace A224683.P6036910872248253896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224690 (A000124 n).toNat + A008683 (4 * (n + 1))

end

end A224683.P6036910872248253896

/-!
# A224684: Number of (n+4)X6 0..1 matrices with each 5X5 subblock idempotent.

The programs for A224684, there is no canonical definition to state claims against.
-/

/-! ## A224684.P14661989532511200894

`A224690(∑[n+1]+2)`
-/

namespace A224684.P14661989532511200894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224690 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A224684.P14661989532511200894

/-! ## A224684.P4854571138915737462

`A000027(A224690(∑[n+2]))`
-/

namespace A224684.P4854571138915737462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A224690 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A224684.P4854571138915737462

/-!
# A224685: Number of (n+4) X 7 0..1 matrices with each 5 X 5 subblock idempotent.

The programs for A224685, there is no canonical definition to state claims against.
-/

/-! ## A224685.P2854238150392379020

`A224690(∑[n+2]+4)`
-/

namespace A224685.P2854238150392379020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224690 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224685.P2854238150392379020

/-! ## A224685.P3550152399153777628

`or(char[10], A224690(A167614(n+1)))`
-/

namespace A224685.P3550152399153777628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A224690 (A167614 (n + 1)).toNat)

end

end A224685.P3550152399153777628

/-! ## A224685.P13901003025348317051

`or(char[7], A224690(A167499(n)+n))`
-/

namespace A224685.P13901003025348317051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A224690 (A167499 n + (n : ℤ)).toNat)

end

end A224685.P13901003025348317051

/-! ## A224685.P2354972418285421655

`char[A038554(n)]*A224690(A167614(n+1))`
-/

namespace A224685.P2354972418285421655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A224690 (A167614 (n + 1)).toNat

end

end A224685.P2354972418285421655

/-! ## A224685.P421332504681898357

`char[A061579(n)]*A224690(A167614(n+1))`
-/

namespace A224685.P421332504681898357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A224690 (A167614 (n + 1)).toNat

end

end A224685.P421332504681898357

/-! ## A224685.P428077191451735445

`abs(A033999(n)*A224690(A167499(n)+n))`
-/

namespace A224685.P428077191451735445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A224690 (A167499 n + (n : ℤ)).toNat|

end

end A224685.P428077191451735445

/-! ## A224685.P13214624731955422327

`A224690(A167614(n+1))+A000038(n)%2`
-/

namespace A224685.P13214624731955422327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224690 (A167614 (n + 1)).toNat + Int.tmod (A000038 n) 2

end

end A224685.P13214624731955422327

/-! ## A224685.P16907895894334638607

`A224690(A167614(n+1))+A008683(8*n+4)`
-/

namespace A224685.P16907895894334638607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224690 (A167614 (n + 1)).toNat + A008683 (8 * n + 4)

end

end A224685.P16907895894334638607

/-! ## A224685.P984721384997216300

`A000040(n+2)%2*A224690(A167614(n+1))`
-/

namespace A224685.P984721384997216300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A224690 (A167614 (n + 1)).toNat

end

end A224685.P984721384997216300

/-!
# A224686: Number of (n+4) X 8 0..1 matrices with each 5 X 5 subblock idempotent.

The programs for A224686, there is no canonical definition to state claims against.
-/

/-! ## A224686.P11419691293453226113

`A224690(∑[n+3]+7)`
-/

namespace A224686.P11419691293453226113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224690 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A224686.P11419691293453226113

/-! ## A224686.P16122070254996862311

`or(char[4], A224690(A167614(n+2)+1))`
-/

namespace A224686.P16122070254996862311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A224690 (A167614 (n + 2) + 1).toNat)

end

end A224686.P16122070254996862311

/-! ## A224686.P18327586782739069235

`or(char[4], A224690(A167499(n+2)-1))`
-/

namespace A224686.P18327586782739069235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A224690 (A167499 (n + 2) - 1).toNat)

end

end A224686.P18327586782739069235

/-! ## A224686.P7163967724371085367

`A007318(C(2, n))*A224690(A167499(n+2)-1)`
-/

namespace A224686.P7163967724371085367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A224690 (A167499 (n + 2) - 1).toNat

end

end A224686.P7163967724371085367

/-! ## A224686.P2431497863811610508

`(A000041(n)%2)!*A224690(A167499(n+2)-1)`
-/

namespace A224686.P2431497863811610508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A224690 (A167499 (n + 2) - 1).toNat

end

end A224686.P2431497863811610508

/-! ## A224686.P338996852808723876

`and(1, A007318(n))!*A224690(A167499(n+2)-1)`
-/

namespace A224686.P338996852808723876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.land 1 (A007318 n)).toNat : ℤ) * A224690 (A167499 (n + 2) - 1).toNat

end

end A224686.P338996852808723876

/-! ## A224686.P4280592804818345311

`A224690(A167499(n+2)-1)+A008683(4*(n+10))`
-/

namespace A224686.P4280592804818345311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224690 (A167499 (n + 2) - 1).toNat + A008683 (4 * (n + 10))

end

end A224686.P4280592804818345311

/-! ## A224686.P7499985015828726755

`A014963(12*n+6)*A224690(A167499(n+2)-1)`
-/

namespace A224686.P7499985015828726755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * n + 6) * A224690 (A167499 (n + 2) - 1).toNat

end

end A224686.P7499985015828726755

/-! ## A224686.P17018003709114219046

`A000005(gcd(n, n+1))*A224690(A167499(n+2)-1)`
-/

namespace A224686.P17018003709114219046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd n (n + 1)) * A224690 (A167499 (n + 2) - 1).toNat

end

end A224686.P17018003709114219046

/-! ## A224686.P9798575023903449420

`A008683(2*A000040(n+2))*A224690(A167614(n+2)+1)`
-/

namespace A224686.P9798575023903449420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * A000040 (n + 2)).toNat * A224690 (A167614 (n + 2) + 1).toNat

end

end A224686.P9798575023903449420

/-!
# A224687: Number of (n+4) X 9 0..1 matrices with each 5 X 5 subblock idempotent.

The programs for A224687, there is no canonical definition to state claims against.
-/

/-! ## A224687.P3368032947436579985

`A224690(∑[n+4]+11)`
-/

namespace A224687.P3368032947436579985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224690 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A224687.P3368032947436579985

/-! ## A224687.P35567198078192972

`or(char[3], A224690(A046691(n+3)))`
-/

namespace A224687.P35567198078192972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A224690 (A046691 (n + 3)).toNat)

end

end A224687.P35567198078192972

/-! ## A224687.P12269809874348726271

`char[A061579(n)]*A224690(A046691(n+3))`
-/

namespace A224687.P12269809874348726271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A224690 (A046691 (n + 3)).toNat

end

end A224687.P12269809874348726271

/-! ## A224687.P4911776650470047442

`char[A072088(n)]*A224690(A046691(n+3))`
-/

namespace A224687.P4911776650470047442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A224690 (A046691 (n + 3)).toNat

end

end A224687.P4911776650470047442

/-! ## A224687.P7472073930045006800

`char[A130571(n)]*A224690(A046691(n+3))`
-/

namespace A224687.P7472073930045006800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130571 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A224690 (A046691 (n + 3)).toNat

end

end A224687.P7472073930045006800

/-! ## A224687.P13730615280238672426

`char[A130942(n)]*A224690(A046691(n+3))`
-/

namespace A224687.P13730615280238672426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130942 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A224690 (A046691 (n + 3)).toNat

end

end A224687.P13730615280238672426

/-! ## A224687.P4131635716287703435

`A224690(A046691(n+3))+A063524(n+4)`
-/

namespace A224687.P4131635716287703435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224690 (A046691 (n + 3)).toNat + A063524 (n + 4)

end

end A224687.P4131635716287703435

/-! ## A224687.P9692095955281500693

`A224690(A046691(n+3))%A256356(n+1)`
-/

namespace A224687.P9692095955281500693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224690 (A046691 (n + 3)).toNat) (A256356 (n + 1))

end

end A224687.P9692095955281500693

/-! ## A224687.P2142562517982404155

`A100897(n)%2*A224690(A046691(n+3))`
-/

namespace A224687.P2142562517982404155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100897 n) 2 * A224690 (A046691 (n + 3)).toNat

end

end A224687.P2142562517982404155

/-! ## A224687.P440403255366899009

`A224690(A046691(n+3))+val(A062938(n), 2)`
-/

namespace A224687.P440403255366899009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224690 (A046691 (n + 3)).toNat + (SequenceMachineLib.valuation (A062938 n).toNat 2 : ℤ)

end

end A224687.P440403255366899009

/-!
# A224688: Number of (n+4) X 10 0..1 matrices with each 5 X 5 subblock idempotent.

The programs for A224688, there is no canonical definition to state claims against.
-/

/-! ## A224688.P3326707403633070645

`A224690(A166136(n+4))`
-/

namespace A224688.P3326707403633070645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224690 (A166136 (n + 4)).toNat

end

end A224688.P3326707403633070645

/-! ## A224688.P16167667647908250914

`A224690(A056115(n)+21)`
-/

namespace A224688.P16167667647908250914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224690 (A056115 n + 21).toNat

end

end A224688.P16167667647908250914

/-! ## A224688.P13865748471266324794

`A224690(A167499(n+4)+1)`
-/

namespace A224688.P13865748471266324794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224690 (A167499 (n + 4) + 1).toNat

end

end A224688.P13865748471266324794

/-! ## A224688.P8290167874645487732

`A224690(A133263(n+5)+4)`
-/

namespace A224688.P8290167874645487732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224690 (A133263 (n + 5) + 4).toNat

end

end A224688.P8290167874645487732

/-! ## A224688.P16384024150437004040

`A224690(A000124(n+5)+5)`
-/

namespace A224688.P16384024150437004040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224690 (A000124 (n + 5) + 5).toNat

end

end A224688.P16384024150437004040

/-! ## A224688.P2846916844046780515

`A224690(A000096(n+4)+7)`
-/

namespace A224688.P2846916844046780515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224690 (A000096 (n + 4) + 7).toNat

end

end A224688.P2846916844046780515

/-! ## A224688.P9407984776545116846

`A224690(A000217(n+5)+6)`
-/

namespace A224688.P9407984776545116846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224690 (A000217 (n + 5) + 6).toNat

end

end A224688.P9407984776545116846

/-! ## A224688.P10532122515875395436

`A224690(A055998(n+3)+9)`
-/

namespace A224688.P10532122515875395436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224690 (A055998 (n + 3) + 9).toNat

end

end A224688.P10532122515875395436

/-! ## A224688.P16697914643023104569

`A224690(A046691(n+3)+10)`
-/

namespace A224688.P16697914643023104569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224690 (A046691 (n + 3) + 10).toNat

end

end A224688.P16697914643023104569

/-! ## A224688.P8327317300603416915

`A224690(A052905(n+2)+11)`
-/

namespace A224688.P8327317300603416915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224690 (A052905 (n + 2) + 11).toNat

end

end A224688.P8327317300603416915

/-!
# A224689: Number of (n+4) X 11 0..1 matrices with each 5 X 5 subblock idempotent.

The programs for A224689, there is no canonical definition to state claims against.
-/

/-! ## A224689.P17024916888198231061

`A224690(A167487(n+5))`
-/

namespace A224689.P17024916888198231061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224690 (A167487 (n + 5)).toNat

end

end A224689.P17024916888198231061

/-! ## A224689.P13336249937563271523

`A224690(A056119(n)+28)`
-/

namespace A224689.P13336249937563271523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224690 (A056119 n + 28).toNat

end

end A224689.P13336249937563271523

/-! ## A224689.P2182725592211321668

`A224690(A166136(n+5)+1)`
-/

namespace A224689.P2182725592211321668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224690 (A166136 (n + 5) + 1).toNat

end

end A224689.P2182725592211321668

/-! ## A224689.P18054466194731161242

`A224690(A167499(n+5)+2)`
-/

namespace A224689.P18054466194731161242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224690 (A167499 (n + 5) + 2).toNat

end

end A224689.P18054466194731161242

/-! ## A224689.P3823238336579687634

`A224690(A167614(n+5)+4)`
-/

namespace A224689.P3823238336579687634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224690 (A167614 (n + 5) + 4).toNat

end

end A224689.P3823238336579687634

/-! ## A224689.P18340636565153696329

`A224690(A133263(n+6)+5)`
-/

namespace A224689.P18340636565153696329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224690 (A133263 (n + 6) + 5).toNat

end

end A224689.P18340636565153696329

/-! ## A224689.P14271860156570462481

`A224690(A000124(n+6)+6)`
-/

namespace A224689.P14271860156570462481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224690 (A000124 (n + 6) + 6).toNat

end

end A224689.P14271860156570462481

/-! ## A224689.P3662627231193293514

`A224690(A000096(n+5)+8)`
-/

namespace A224689.P3662627231193293514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224690 (A000096 (n + 5) + 8).toNat

end

end A224689.P3662627231193293514

/-! ## A224689.P14347620970580580815

`A224690(A000217(n+6)+7)`
-/

namespace A224689.P14347620970580580815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224690 (A000217 (n + 6) + 7).toNat

end

end A224689.P14347620970580580815

/-! ## A224689.P11844390112628912229

`A224690(A027379(n+4)+10)`
-/

namespace A224689.P11844390112628912229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224690 (A027379 (n + 4) + 10).toNat

end

end A224689.P11844390112628912229

/-!
# A224691: Numbers n such that (13^n - 4^n)/9 is prime.

The programs for A224691, there is no canonical definition to state claims against.
-/

/-! ## A224691.P9646713213465175638

`A006530(5*(10^n-a(n-1)))` with `a(0)=2`
-/

namespace A224691.P9646713213465175638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006530 (5 * ((10 ^ n : ℤ) - a (n - 1))).toNat

end

end A224691.P9646713213465175638

/-!
# A224692: Expansion of (1+5*x+7*x^2-x^3)/((1-2*x^2)*(1-x)*(1+x)).

The programs for A224692, the canonical program `A224692.P17850448130073660375` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224692 has offset 0).

The definition of A224692 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224692.P17850448130073660375

`9*2^floor(n/2)-2*(-1)^n-6`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A224692

/-- `9*2^floor(n/2)-2*(-1)^n-6` -/
def P17850448130073660375.Spec : Prop :=
  ∀ n, P17850448130073660375.a n = (A224692 n : ℚ)

end A224692

/-! ## A224692.P17813760064119107704

`2*(a(n-2)+(-1)^n+3)` with `a(0)=1, a(1)=5`
-/

namespace A224692.P17813760064119107704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  2 * (a (n - 2) + ((-1) ^ n + 3))

end

end A224692.P17813760064119107704

namespace A224692

/-- `2*(a(n-2)+(-1)^n+3)` -/
def P17813760064119107704.Spec : Prop :=
  ∀ n, P17813760064119107704.a n = A224692 n

end A224692

/-! ## A224692.P9127066646018410117

`A040001(n)*A053209(A110654(n))`
-/

namespace A224692.P9127066646018410117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A053209 (A110654 n).toNat

end

end A224692.P9127066646018410117

namespace A224692

/-- `A040001(n)*A053209(A110654(n))` -/
def P9127066646018410117.Spec : Prop :=
  ∀ n, P9127066646018410117.a n = A224692 n

end A224692

/-! ## A224692.P17691562549114315964

`∪[A048491(n), A053209(n)]`
-/

namespace A224692.P17691562549114315964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048491 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053209 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A224692.P17691562549114315964

namespace A224692

/-- `∪[A048491(n), A053209(n)]` -/
def P17691562549114315964.Spec : Prop :=
  ∀ n, (P17691562549114315964.a n : ℤ) = A224692 n

end A224692

/-! ## A224692.P15193875680681050579

`abs(A016116(n)-(A220753(n)+A083416(n+1)))`
-/

namespace A224692.P15193875680681050579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016116 n - (A220753 n + A083416 (n + 1))|

end

end A224692.P15193875680681050579

namespace A224692

/-- `abs(A016116(n)-(A220753(n)+A083416(n+1)))` -/
def P15193875680681050579.Spec : Prop :=
  ∀ n, P15193875680681050579.a n = A224692 n

end A224692

/-!
# A224693: Smallest prime p such that p > gpf(p+1) > gpf(p+2) > ... > gpf(p+n) where gpf(m) is the greatest prime factor of m.

The programs for A224693, there is no canonical definition to state claims against.
-/

/-! ## A224693.P12187159425344211006

`A194603(A222568(n+1)+A074286(n+1)+1)`
-/

namespace A224693.P12187159425344211006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194603 (A222568 (n + 1) + A074286 (n + 1) + 1).toNat

end

end A224693.P12187159425344211006

/-!
# A224694: Numbers n such that n^2 AND n = 0, where AND is the bitwise logical AND operator.

The programs for A224694, the canonical program `A224694.P17491899543447405551` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224694 has offset 1).

The definition of A224694 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2811 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224694.P17491899543447405551

`2*eq[0, and(n, 2*n²)]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A224694

/-- `2*eq[0, and(n, 2*n²)]` -/
def P17491899543447405551.Spec : Prop :=
  ∀ n, (P17491899543447405551.a n : ℤ) = A224694 (n + 1)

theorem P17491899543447405551.correct : P17491899543447405551.Spec := by
  intro n
  simp only [A224694, Nat.add_sub_cancel]

end A224694

/-! ## A224694.P17438161502499752442

`2*lt[and(2*n, (2*n)²), 1]`
-/

namespace A224694.P17438161502499752442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n) ((2 * n) ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A224694.P17438161502499752442

namespace A224694

/-- `2*lt[and(2*n, (2*n)²), 1]` -/
def P17438161502499752442.Spec : Prop :=
  ∀ n, (P17438161502499752442.a n : ℤ) = A224694 (n + 1)

end A224694

/-! ## A224694.P15871692578498744651

`2*eq[A069932(2*n+1), A253719(2*n)]`
-/

namespace A224694.P15871692578498744651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069932 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253719 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224694.P15871692578498744651

namespace A224694

/-- `2*eq[A069932(2*n+1), A253719(2*n)]` -/
def P15871692578498744651.Spec : Prop :=
  ∀ n, (P15871692578498744651.a n : ℤ) = A224694 (n + 1)

end A224694

/-! ## A224694.P15721893469785317430

`eq[0, and(n, n²)]`
-/

namespace A224694.P15721893469785317430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224694.P15721893469785317430

namespace A224694

/-- `eq[0, and(n, n²)]` -/
def P15721893469785317430.Spec : Prop :=
  ∀ n, (P15721893469785317430.a n : ℤ) = A224694 (n + 1)

end A224694

/-! ## A224694.P9798790466543248821

`lt[and(n, n²), 1]`
-/

namespace A224694.P9798790466543248821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A224694.P9798790466543248821

namespace A224694

/-- `lt[and(n, n²), 1]` -/
def P9798790466543248821.Spec : Prop :=
  ∀ n, (P9798790466543248821.a n : ℤ) = A224694 (n + 1)

end A224694

/-! ## A224694.P12100322885622265576

`eq[n, xor(n²+n, n²)]`
-/

namespace A224694.P12100322885622265576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n ^ 2 + n) (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224694.P12100322885622265576

namespace A224694

/-- `eq[n, xor(n²+n, n²)]` -/
def P12100322885622265576.Spec : Prop :=
  ∀ n, (P12100322885622265576.a n : ℤ) = A224694 (n + 1)

end A224694

/-! ## A224694.P6200483413737166345

`lt[or(-(n+1), n²), -n]`
-/

namespace A224694.P6200483413737166345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-(n + 1 : ℤ)) (n ^ 2 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A224694.P6200483413737166345

namespace A224694

/-- `lt[or(-(n+1), n²), -n]` -/
def P6200483413737166345.Spec : Prop :=
  ∀ n, (P6200483413737166345.a n : ℤ) = A224694 (n + 1)

end A224694

/-! ## A224694.P9994849009631024131

`eq[0, and(n, n*(n+1))-n]`
-/

namespace A224694.P9994849009631024131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land n (n * (n + 1)) : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224694.P9994849009631024131

namespace A224694

/-- `eq[0, and(n, n*(n+1))-n]` -/
def P9994849009631024131.Spec : Prop :=
  ∀ n, (P9994849009631024131.a n : ℤ) = A224694 (n + 1)

end A224694

/-! ## A224694.P17147932847471849489

`lt[n-1, and(n, n*(n+1))]`
-/

namespace A224694.P17147932847471849489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A224694.P17147932847471849489

namespace A224694

/-- `lt[n-1, and(n, n*(n+1))]` -/
def P17147932847471849489.Spec : Prop :=
  ∀ n, (P17147932847471849489.a n : ℤ) = A224694 (n + 1)

end A224694

/-! ## A224694.P4823836038878171972

`lcm(2, eq[n, and(n, n*(n+1))])`
-/

namespace A224694.P4823836038878171972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A224694.P4823836038878171972

namespace A224694

/-- `lcm(2, eq[n, and(n, n*(n+1))])` -/
def P4823836038878171972.Spec : Prop :=
  ∀ n, (P4823836038878171972.a n : ℤ) = A224694 (n + 1)

end A224694

/-! ## A224694.P10949767413917112346

`eq[1, C(and(n, n*(n+1)), n)]`
-/

namespace A224694.P10949767413917112346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land n (n * (n + 1))) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224694.P10949767413917112346

namespace A224694

/-- `eq[1, C(and(n, n*(n+1)), n)]` -/
def P10949767413917112346.Spec : Prop :=
  ∀ n, (P10949767413917112346.a n : ℤ) = A224694 (n + 1)

end A224694

/-! ## A224694.P11873446790053686325

`lt[xor(n²+n, n²), n+1]`
-/

namespace A224694.P11873446790053686325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n ^ 2 + n) (n ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A224694.P11873446790053686325

namespace A224694

/-- `lt[xor(n²+n, n²), n+1]` -/
def P11873446790053686325.Spec : Prop :=
  ∀ n, (P11873446790053686325.a n : ℤ) = A224694 (n + 1)

end A224694

/-! ## A224694.P6438939968861667016

`eq[0, -and(2*n, n*2*n)]`
-/

namespace A224694.P6438939968861667016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.land (2 * n) (n * (2 * n)) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224694.P6438939968861667016

namespace A224694

/-- `eq[0, -and(2*n, n*2*n)]` -/
def P6438939968861667016.Spec : Prop :=
  ∀ n, (P6438939968861667016.a n : ℤ) = A224694 (n + 1)

end A224694

/-! ## A224694.P8530872494243141084

`lt[and(n, sqrt(n*n^3))+1, 2]`
-/

namespace A224694.P8530872494243141084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (SequenceMachineLib.roundAway (Real.sqrt (n * n ^ 3 : ℝ))) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A224694.P8530872494243141084

namespace A224694

/-- `lt[and(n, sqrt(n*n^3))+1, 2]` -/
def P8530872494243141084.Spec : Prop :=
  ∀ n, (P8530872494243141084.a n : ℤ) = A224694 (n + 1)

end A224694

/-! ## A224694.P8180829423943890362

`eq[n+1, -or(-(n+1), n²)]`
-/

namespace A224694.P8180829423943890362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (-(n + 1 : ℤ)) (n ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224694.P8180829423943890362

namespace A224694

/-- `eq[n+1, -or(-(n+1), n²)]` -/
def P8180829423943890362.Spec : Prop :=
  ∀ n, (P8180829423943890362.a n : ℤ) = A224694 (n + 1)

end A224694

/-! ## A224694.P6856469543051104082

`eq[1, 1-and(2*n, n*2*n)]`
-/

namespace A224694.P6856469543051104082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land (2 * n) (n * (2 * n)) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224694.P6856469543051104082

namespace A224694

/-- `eq[1, 1-and(2*n, n*2*n)]` -/
def P6856469543051104082.Spec : Prop :=
  ∀ n, (P6856469543051104082.a n : ℤ) = A224694 (n + 1)

end A224694

/-! ## A224694.P11386811657991158436

`eq[0, 2*and(2*n, n*2*n)]`
-/

namespace A224694.P11386811657991158436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land (2 * n) (n * (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224694.P11386811657991158436

namespace A224694

/-- `eq[0, 2*and(2*n, n*2*n)]` -/
def P11386811657991158436.Spec : Prop :=
  ∀ n, (P11386811657991158436.a n : ℤ) = A224694 (n + 1)

end A224694

/-! ## A224694.P18304462573015310404

`eq[and(n, lcm(n, n+1))+1, n+1]`
-/

namespace A224694.P18304462573015310404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (Nat.lcm n (n + 1)) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224694.P18304462573015310404

namespace A224694

/-- `eq[and(n, lcm(n, n+1))+1, n+1]` -/
def P18304462573015310404.Spec : Prop :=
  ∀ n, (P18304462573015310404.a n : ℤ) = A224694 (n + 1)

end A224694

/-! ## A224694.P17433640032385146311

`eq[(2*n+1)², or((2*n+1)², (2*n)²)]`
-/

namespace A224694.P17433640032385146311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor ((2 * n + 1) ^ 2) ((2 * n) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224694.P17433640032385146311

namespace A224694

/-- `eq[(2*n+1)², or((2*n+1)², (2*n)²)]` -/
def P17433640032385146311.Spec : Prop :=
  ∀ n, (P17433640032385146311.a n : ℤ) = A224694 (n + 1)

end A224694

/-! ## A224694.P12402865268593727402

`eq[0, A213541(n)]`
-/

namespace A224694.P12402865268593727402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213541 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224694.P12402865268593727402

namespace A224694

/-- `eq[0, A213541(n)]` -/
def P12402865268593727402.Spec : Prop :=
  ∀ n, (P12402865268593727402.a n : ℤ) = A224694 (n + 1)

end A224694

/-!
# A224695: Pseudoprimes to a twin prime criterion of Aebi and Cairns.

The programs for A224695, there is no canonical definition to state claims against.
-/

/-! ## A224695.P9827849752580990965

`∩[A001567(n+1), A192297(n+1)]`
-/

namespace A224695.P9827849752580990965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224695.P9827849752580990965

/-! ## A224695.P10594205961004506419

`∩[A020136(n+1), A192297(n+1)]`
-/

namespace A224695.P10594205961004506419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224695.P10594205961004506419

/-! ## A224695.P12392051633112155109

`∩[A020137(n+1), A192297(n+1)]`
-/

namespace A224695.P12392051633112155109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224695.P12392051633112155109

/-! ## A224695.P3266708303750899490

`∩[A020144(n+1), A192297(n+1)]`
-/

namespace A224695.P3266708303750899490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224695.P3266708303750899490

/-! ## A224695.P3575425618717207317

`∩[A020160(n+1), A192297(n+1)]`
-/

namespace A224695.P3575425618717207317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224695.P3575425618717207317

/-! ## A224695.P9521151468419212197

`∩[A020192(n+1), A192297(n+1)]`
-/

namespace A224695.P9521151468419212197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224695.P9521151468419212197

/-! ## A224695.P11649274951070603232

`∩[A122781(n+1), A192297(n+1)]`
-/

namespace A224695.P11649274951070603232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224695.P11649274951070603232

/-! ## A224695.P18167148054819191548

`∩[A122785(n+1), A192297(n+1)]`
-/

namespace A224695.P18167148054819191548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224695.P18167148054819191548

/-! ## A224695.P15328510380867062541

`∩[A192297(n+1), A306259(n+1)]`
-/

namespace A224695.P15328510380867062541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224695.P15328510380867062541

/-!
# A224697: Number A(n,k) of different ways to divide an n X k rectangle into subsquares, considering only the list of parts; square array A(n,k), n >= 0, k >= 0, read by antidiagonals.

The programs for A224697, there is no canonical definition to state claims against.
-/

/-! ## A224697.P1119011007732357147

`A265359(A052307(n)%A174342(n+3))`
-/

namespace A224697.P1119011007732357147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265359 (Int.tmod (A052307 n) (A174342 (n + 3))).toNat

end

end A224697.P1119011007732357147

/-! ## A224697.P15707756435672187874

`A265359(A052307(n))%A195937(A039634(n+1))`
-/

namespace A224697.P15707756435672187874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265359 (A052307 n).toNat) (A195937 (A039634 (n + 1)).toNat)

end

end A224697.P15707756435672187874

/-! ## A224697.P13718578030621600726

`A265359(A052307(n))+A000007(A003215(n+1))`
-/

namespace A224697.P13718578030621600726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265359 (A052307 n).toNat + A000007 (A003215 (n + 1)).toNat

end

end A224697.P13718578030621600726

/-! ## A224697.P701155968979110729

`A265359(A052307(n))%A195937(n+1)`
-/

namespace A224697.P701155968979110729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265359 (A052307 n).toNat) (A195937 (n + 1))

end

end A224697.P701155968979110729

/-! ## A224697.P6268398501937648629

`A052307(n)-A353637(A348695(3*n+4))`
-/

namespace A224697.P6268398501937648629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 n - A353637 (A348695 (3 * n + 4)).toNat

end

end A224697.P6268398501937648629

/-!
# A224698: Tribonacci triangle by rows, generated from (1, 1, 1, 0, 0, 0, ...).

The programs for A224698, there is no canonical definition to state claims against.
-/

/-! ## A224698.P11752824730831801319

`A179749(n+1)-A178798(A118350(n))`
-/

namespace A224698.P11752824730831801319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179749 (n + 1) - A178798 (A118350 n).toNat

end

end A224698.P11752824730831801319

/-! ## A224698.P3533760031313240545

`A179749(n+1)-A340988(A333901(n))`
-/

namespace A224698.P3533760031313240545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179749 (n + 1) - A340988 ((A333901 n).toNat + 91)

end

end A224698.P3533760031313240545

/-! ## A224698.P7705463016559949735

`A179749(n+1)+A178798(A118350(n)+1)`
-/

namespace A224698.P7705463016559949735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179749 (n + 1) + A178798 (A118350 n + 1).toNat

end

end A224698.P7705463016559949735

/-! ## A224698.P11294511637209771343

`A179749(n+1)-A048158(A179748(A175105(n+1)))`
-/

namespace A224698.P11294511637209771343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179749 (n + 1) - A048158 (A179748 (A175105 (n + 1)).toNat).toNat

end

end A224698.P11294511637209771343

/-! ## A224698.P16371857187877224244

`A275987(A179749(n+1)%A062241(n))`
-/

namespace A224698.P16371857187877224244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275987 (Int.tmod (A179749 (n + 1)) (A062241 n)).toNat

end

end A224698.P16371857187877224244

/-!
# A224699: a(n) = smallest k such that there is no square between prime(k) and prime(k+n).

The programs for A224699, there is no canonical definition to state claims against.
-/

/-! ## A224699.P3379565287568479858

`A000720(p?[A330167(3*n+1)+(n+1)²])`
-/

namespace A224699.P3379565287568479858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330167 (3 * n + 1) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A224699.P3379565287568479858

