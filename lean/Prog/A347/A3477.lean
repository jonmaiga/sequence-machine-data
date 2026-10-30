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
import Seq.B000.C008
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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A347701: Rightmost diagonal of A347700.

The programs for A347701, there is no canonical definition to state claims against.
-/

/-! ## A347701.P1387412741840402790

`record[2*(∑[∑[n-1]]+2)]`
-/

namespace A347701.P1387412741840402790
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347701.P1387412741840402790

/-! ## A347701.P12456108149281035480

`∑[∑[a(n-1)+2]]` with `a(0)=2, a(1)=0, a(2)=8, a(3)=8`
-/

namespace A347701.P12456108149281035480
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 8, 8] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347701.P12456108149281035480

/-! ## A347701.P11292975022495431713

`a(n-1)+n*(n+3)` with `a(0)=2, a(1)=4`
-/

namespace A347701.P11292975022495431713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 1) + n * (n + 3)

end

end A347701.P11292975022495431713

/-! ## A347701.P9262337997697633524

`∑[n*(n+3)]+C(2, (n+1)²)`
-/

namespace A347701.P9262337997697633524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose 2 ((n + 1) ^ 2)

end

end A347701.P9262337997697633524

/-! ## A347701.P14366905744112356018

`(n+1)²-1+a(n-1)+n` with `a(0)=2, a(1)=4`
-/

namespace A347701.P14366905744112356018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  ((n + 1) ^ 2 : ℤ) - 1 + (a (n - 1) + (n : ℤ))

end

end A347701.P14366905744112356018

/-! ## A347701.P2190987789005063732

`floor(∑[n*(n+3)]+2/(2*n+1))`
-/

namespace A347701.P2190987789005063732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + 2 / (2 * n + 1 : ℚ)⌋

end

end A347701.P2190987789005063732

/-! ## A347701.P8281479990230038962

`A209771(∑[n+1]+3)`
-/

namespace A347701.P8281479990230038962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209771 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A347701.P8281479990230038962

/-! ## A347701.P15597244558073967611

`A209772(∑[n+1]+3)`
-/

namespace A347701.P15597244558073967611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209772 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A347701.P15597244558073967611

/-! ## A347701.P828093775351341336

`∑[A171950((n+1)²)+n+1]`
-/

namespace A347701.P828093775351341336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171950 ((n + 1) ^ 2) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347701.P828093775351341336

/-! ## A347701.P9355304123839755281

`A193975(A055998(n))`
-/

namespace A347701.P9355304123839755281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193975 (A055998 n).toNat

end

end A347701.P9355304123839755281

/-!
# A347702: Prime numbers that give a remainder of 1 when divided by the sum of their digits.

The programs for A347702, there is no canonical definition to state claims against.
-/

/-! ## A347702.P3905593689057913648

`p?[A209871(n+1)]`
-/

namespace A347702.P3905593689057913648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A347702.P3905593689057913648

/-! ## A347702.P8616060102559575268

`p?[A253205(n+1)]`
-/

namespace A347702.P8616060102559575268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A347702.P8616060102559575268

/-! ## A347702.P13707679449130717538

`∩[A209871(n+1), A378441(n+1)]`
-/

namespace A347702.P13707679449130717538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347702.P13707679449130717538

/-! ## A347702.P91426413857008657

`∩[A000040(n+1), A209871(n+1)]`
-/

namespace A347702.P91426413857008657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347702.P91426413857008657

/-! ## A347702.P17192111487681175176

`∩[A004139(n+1), A209871(n+1)]`
-/

namespace A347702.P17192111487681175176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347702.P17192111487681175176

/-! ## A347702.P12039770951875068899

`∩[A006005(n+1), A209871(n+1)]`
-/

namespace A347702.P12039770951875068899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347702.P12039770951875068899

/-! ## A347702.P3135015846348204630

`∩[A008578(n+1), A209871(n+1)]`
-/

namespace A347702.P3135015846348204630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347702.P3135015846348204630

/-! ## A347702.P14449692337353633078

`∩[A000040(n+1), A253205(n+1)]`
-/

namespace A347702.P14449692337353633078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347702.P14449692337353633078

/-! ## A347702.P6575416740563036954

`∩[A045319(n+1), A209871(n+1)]`
-/

namespace A347702.P6575416740563036954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347702.P6575416740563036954

/-! ## A347702.P18064352189378293033

`∩[A045344(n+1), A209871(n+1)]`
-/

namespace A347702.P18064352189378293033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347702.P18064352189378293033

/-! ## A347702.P3545657701235319831

`∩[A046022(n+1), A209871(n+1)]`
-/

namespace A347702.P3545657701235319831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347702.P3545657701235319831

/-! ## A347702.P5407175933840872435

`∩[A004139(n+1), A253205(n+1)]`
-/

namespace A347702.P5407175933840872435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347702.P5407175933840872435

/-! ## A347702.P15917740440905173754

`∩[A051948(n+1), A209871(n+1)]`
-/

namespace A347702.P15917740440905173754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347702.P15917740440905173754

/-! ## A347702.P9259408876868188110

`∩[A053813(n+1), A209871(n+1)]`
-/

namespace A347702.P9259408876868188110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347702.P9259408876868188110

/-! ## A347702.P16683089859705297689

`∩[A062972(n+1), A209871(n+1)]`
-/

namespace A347702.P16683089859705297689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347702.P16683089859705297689

/-! ## A347702.P1523606367496415026

`∩[A064728(n+1), A209871(n+1)]`
-/

namespace A347702.P1523606367496415026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347702.P1523606367496415026

/-! ## A347702.P8116388281541557167

`∩[A065091(n+1), A209871(n+1)]`
-/

namespace A347702.P8116388281541557167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347702.P8116388281541557167

/-! ## A347702.P4622620729400011484

`∩[A065396(n+1), A209871(n+1)]`
-/

namespace A347702.P4622620729400011484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347702.P4622620729400011484

/-! ## A347702.P8296145907924505199

`∩[A066050(n+1), A209871(n+1)]`
-/

namespace A347702.P8296145907924505199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347702.P8296145907924505199

/-! ## A347702.P4527443617419654561

`∩[A067126(n+1), A209871(n+1)]`
-/

namespace A347702.P4527443617419654561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347702.P4527443617419654561

/-!
# A347703: Number of compositions (ordered partitions) of n into at most 4 prime parts (counting 1 as a prime).

The programs for A347703, there is no canonical definition to state claims against.
-/

/-! ## A347703.P13590602076640414482

`A390626(A102366(n))`
-/

namespace A347703.P13590602076640414482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390626 (A102366 n).toNat

end

end A347703.P13590602076640414482

/-! ## A347703.P7247862089826972381

`∑[A014420(Δ[A030266(n)])]`
-/

namespace A347703.P7247862089826972381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030266 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014420 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347703.P7247862089826972381

/-! ## A347703.P13080344947131041132

`∑[∑[A203571(A241456(n+1))]]+1`
-/

namespace A347703.P13080344947131041132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203571 (A241456 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A347703.P13080344947131041132

/-! ## A347703.P9253054835879329584

`A374036(A183187(n+1))+A359516(n)`
-/

namespace A347703.P9253054835879329584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374036 (A183187 (n + 1)).toNat + A359516 n

end

end A347703.P9253054835879329584

/-!
# A347704: Number of even-length integer partitions of n with integer alternating product.

The programs for A347704, there is no canonical definition to state claims against.
-/

/-! ## A347704.P9704664724684897722

`A347446(n)-A347444(n)`
-/

namespace A347704.P9704664724684897722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347446 n - A347444 n

end

end A347704.P9704664724684897722

/-! ## A347704.P13167034370817128520

`A035363(n)+A347446(n)-A347445(n)`
-/

namespace A347704.P13167034370817128520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n + (A347446 n - A347445 n)

end

end A347704.P13167034370817128520

/-! ## A347704.P11964623865947754634

`A347446(n)-(A347445(n)-A035444(2*n))`
-/

namespace A347704.P11964623865947754634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347446 n - (A347445 n - A035444 (2 * n))

end

end A347704.P11964623865947754634

/-!
# A347705: Number of factorizations of n with reverse-alternating product > 1.

The programs for A347705, there is no canonical definition to state claims against.
-/

/-! ## A347705.P10265421183777147846

`A001055(n+1)-A347438(n+1)`
-/

namespace A347705.P10265421183777147846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A347438 (n + 1)

end

end A347705.P10265421183777147846

/-! ## A347705.P9304235008763774823

`Δ[A096276(n)]-A347438(n+1)`
-/

namespace A347705.P9304235008763774823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A347438 (n + 1)

end

end A347705.P9304235008763774823

/-! ## A347705.P11487660006512956641

`A347440(n+1)+A339890(n+1)`
-/

namespace A347705.P11487660006512956641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347440 (n + 1) + A339890 (n + 1)

end

end A347705.P11487660006512956641

/-! ## A347705.P6006073143474774981

`A347438((n+1)²)-A347438(n+1)`
-/

namespace A347705.P6006073143474774981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347438 ((n + 1) ^ 2) - A347438 (n + 1)

end

end A347705.P6006073143474774981

/-! ## A347705.P2952279279206970981

`runs[A080444(n+1)]-A347438(n+1)`
-/

namespace A347705.P2952279279206970981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℤ) - A347438 (n + 1)

end

end A347705.P2952279279206970981

/-! ## A347705.P11154795606871682998

`A028422(n+1)+1-A347438(n+1)`
-/

namespace A347705.P11154795606871682998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (n + 1) + (1 - A347438 (n + 1))

end

end A347705.P11154795606871682998

/-! ## A347705.P5159066319509935564

`Δ[A096276(n)-A096276(A000196(n))]`
-/

namespace A347705.P5159066319509935564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n - A096276 (A000196 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A347705.P5159066319509935564

/-! ## A347705.P18338628843716642209

`Δ[A096276(n)]-A035363(A304795(n+1))`
-/

namespace A347705.P18338628843716642209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A035363 (A304795 (n + 1)).toNat

end

end A347705.P18338628843716642209

/-! ## A347705.P16766791980610056810

`A347440(n+1)+A340607(A003961(n+1))`
-/

namespace A347705.P16766791980610056810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347440 (n + 1) + A340607 (A003961 (n + 1)).toNat

end

end A347705.P16766791980610056810

/-! ## A347705.P13843686076031861657

`A001055(n+1)-A035363(A304795(n+1))`
-/

namespace A347705.P13843686076031861657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A035363 (A304795 (n + 1)).toNat

end

end A347705.P13843686076031861657

/-!
# A347706: Number of factorizations of n that are not a twin (x*x) nor have an alternating permutation.

The programs for A347706, there is no canonical definition to state claims against.
-/

/-! ## A347706.P13231043605690113878

`C(A370813(n+1), val(n+1, 6)!)`
-/

namespace A347706.P13231043605690113878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A370813 (n + 1)).toNat (Nat.factorial (SequenceMachineLib.valuation (n + 1) 6))

end

end A347706.P13231043605690113878

/-! ## A347706.P14449598588230726017

`A000043(∏{e}[n+1, #+1])%∏{e}[n+1, or(1, #-1)]`
-/

namespace A347706.P14449598588230726017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000043 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))) (∏ p ∈ Nat.primeFactors (f2 n), Int.lor 1 ((Nat.factorization (f2 n) p : ℤ) - 1))

end

end A347706.P14449598588230726017

/-! ## A347706.P2677108541579923937

`A000124(∏{e}[n+1, #+1])%∏{e}[(n+1)/∏{p}[n+1, #], #]`
-/

namespace A347706.P2677108541579923937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000124 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))) ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f2 n)).natAbs p : ℕ) : ℤ)

end

end A347706.P2677108541579923937

/-! ## A347706.P15801835068383883639

`A121412(∏{e}[n+1, #+1])%((n+1)/∏{p}[n+1, gcd(n+1, #²)])`
-/

namespace A347706.P15801835068383883639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121412 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.gcd (n + 1) (p ^ 2) : ℕ) : ℚ)))

end

end A347706.P15801835068383883639

/-! ## A347706.P6187379821660494718

`A209315(A297404(n+1)+1)`
-/

namespace A347706.P6187379821660494718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209315 (A297404 (n + 1) + 1).toNat

end

end A347706.P6187379821660494718

/-! ## A347706.P13398930518082198574

`A333487(n+1)-char[A005563(n+1)]`
-/

namespace A347706.P13398930518082198574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333487 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A347706.P13398930518082198574

/-! ## A347706.P1776587318270594183

`A333487(n+1)-A070824(n+1)%2`
-/

namespace A347706.P1776587318270594183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333487 (n + 1) - Int.tmod (A070824 (n + 1)) 2

end

end A347706.P1776587318270594183

/-! ## A347706.P4729505564649565785

`ceil(sqrt(A050338(n+1))-A001055(n+1))`
-/

namespace A347706.P4729505564649565785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A050338 (n + 1) : ℝ) - (A001055 (n + 1) : ℝ)⌉

end

end A347706.P4729505564649565785

/-! ## A347706.P16251117091495462149

`floor(A001222(n+1)*A051903(n+1)/9)`
-/

namespace A347706.P16251117091495462149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001222 (n + 1) * A051903 (n + 1) : ℚ) / 9⌋

end

end A347706.P16251117091495462149

/-! ## A347706.P7070345419217331450

`A037026(A181819(n+1)-∏{e}[n+1, #+1])`
-/

namespace A347706.P7070345419217331450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037026 (A181819 (n + 1) - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)).toNat

end

end A347706.P7070345419217331450

/-!
# A347707: Number of distinct possible integer reverse-alternating products of integer partitions of n.

The programs for A347707, there is no canonical definition to state claims against.
-/

/-! ## A347707.P4738215654516708610

`A347628(A097065(n)+A077342(n+1))`
-/

namespace A347707.P4738215654516708610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347628 (A097065 n + A077342 (n + 1)).toNat

end

end A347707.P4738215654516708610

/-! ## A347707.P1829899204452163927

`A008620(A096276(n+1)%A155348(n+5))`
-/

namespace A347707.P1829899204452163927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (Int.tmod (A096276 (n + 1)) (A155348 (n + 5))).toNat

end

end A347707.P1829899204452163927

/-! ## A347707.P1075507706855313149

`A008619(∑[A294892(n+1)%A294915(n+1)])`
-/

namespace A347707.P1075507706855313149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294892 (n + 1)) (A294915 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A347707.P1075507706855313149

/-!
# A347708: Number of distinct possible alternating products of odd-length factorizations of n.

The programs for A347708, there is no canonical definition to state claims against.
-/

/-! ## A347708.P11281160447110143274

`(A347709(1-char[3]+n)+1)*floor(atan(n+1))`
-/

namespace A347708.P11281160447110143274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A347709 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat + 1) * ⌊Real.arctan (n + 1 : ℝ)⌋

end

end A347708.P11281160447110143274

/-! ## A347708.P12965629776646607884

`A347709(n+1)+A057427(n)`
-/

namespace A347708.P12965629776646607884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347709 (n + 1) + A057427 n

end

end A347708.P12965629776646607884

/-! ## A347708.P2342063545070369534

`A347709(n+1)-A057428(n)`
-/

namespace A347708.P2342063545070369534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347709 (n + 1) - A057428 n

end

end A347708.P2342063545070369534

/-! ## A347708.P16913239723331690957

`A347709(n+1)+1-A000007(n)`
-/

namespace A347708.P16913239723331690957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347709 (n + 1) + (1 - A000007 n)

end

end A347708.P16913239723331690957

/-! ## A347708.P367583263887182304

`A347709(n+1)+A000040(n+1)%2`
-/

namespace A347708.P367583263887182304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347709 (n + 1) + Int.tmod (A000040 (n + 1)) 2

end

end A347708.P367583263887182304

/-! ## A347708.P10153546906832363697

`A000005(record[A014963(n+1)])+A347709(n+1)-1`
-/

namespace A347708.P10153546906832363697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + (A347709 (n + 1) - 1)

end

end A347708.P10153546906832363697

/-!
# A347709: Number of distinct rational numbers of the form x * z / y for some factorization x * y * z = n, 1 < x <= y <= z.

The programs for A347709, there is no canonical definition to state claims against.
-/

/-! ## A347709.P16923864587176494904

`floor(log(cosh(A347708(n+1))))`
-/

namespace A347709.P16923864587176494904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.cosh (A347708 (n + 1) : ℝ))⌋

end

end A347709.P16923864587176494904

/-! ## A347709.P17082368359032312822

`A347708(ceil(sqrt(n²+4)))-1`
-/

namespace A347709.P17082368359032312822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347708 ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉.toNat - 1

end

end A347709.P17082368359032312822

/-! ## A347709.P6768177682890323120

`A347460(n+1)-ceil(∏{e}[n+1, #+1]/2)`
-/

namespace A347709.P6768177682890323120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347460 (n + 1) - ⌈((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2⌉

end

end A347709.P6768177682890323120

/-! ## A347709.P6527991858306891364

`A003987(C(A347708(n+1), 2))`
-/

namespace A347709.P6527991858306891364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (Nat.choose (A347708 (n + 1)).toNat 2)

end

end A347709.P6527991858306891364

/-! ## A347709.P8680312723455439897

`A347460(n+1)-A038548(n+1)`
-/

namespace A347709.P8680312723455439897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347460 (n + 1) - A038548 (n + 1)

end

end A347709.P8680312723455439897

/-! ## A347709.P1382898185947267122

`C(2, n+2)+A347708(n+1)+A072670(n)-A060872(n+1)/(n+1)`
-/

namespace A347709.P1382898185947267122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose 2 (n + 2) : ℤ) + (A347708 (n + 1) + A072670 n) : ℚ) - (A060872 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A347709.P1382898185947267122

/-! ## A347709.P1208097275184357612

`A023443(A347708(n+1))%A000041(n)`
-/

namespace A347709.P1208097275184357612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023443 (A347708 (n + 1)).toNat) (A000041 n)

end

end A347709.P1208097275184357612

/-! ## A347709.P5796911609952712851

`A070288(2^A347708(n+1))`
-/

namespace A347709.P5796911609952712851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070288 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A347708 (n + 1) : ℤ))).toNat

end

end A347709.P5796911609952712851

/-! ## A347709.P2813315954692421838

`A027868(A350251(n+1)+A145390(n+1))`
-/

namespace A347709.P2813315954692421838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A350251 (n + 1) + A145390 (n + 1)).toNat

end

end A347709.P2813315954692421838

/-! ## A347709.P9582894189508330291

`A045535(n)%A050330(n+1)`
-/

namespace A347709.P9582894189508330291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045535 n) (A050330 (n + 1))

end

end A347709.P9582894189508330291

/-!
# A347710: Number of compositions (ordered partitions) of n into at most 3 squares.

The programs for A347710, there is no canonical definition to state claims against.
-/

/-! ## A347710.P9105023048228428524

`A063691(n)+A002654(round(acot(n)+n))`
-/

namespace A347710.P9105023048228428524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 n + A002654 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A347710.P9105023048228428524

/-! ## A347710.P4006069960706079575

`A063691(n)+A002654(A028310(n))`
-/

namespace A347710.P4006069960706079575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 n + A002654 (A028310 n).toNat

end

end A347710.P4006069960706079575

/-! ## A347710.P15518546557338127470

`A110655(A004018(n))+A063691(n)`
-/

namespace A347710.P15518546557338127470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A004018 n).toNat + A063691 n

end

end A347710.P15518546557338127470

/-! ## A347710.P15988175850779687246

`A002102(n)-A004524(A004018(n))`
-/

namespace A347710.P15988175850779687246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002102 n - A004524 (A004018 n).toNat

end

end A347710.P15988175850779687246

/-! ## A347710.P663637325756320317

`A110656(A005875(n))-A025426(n)`
-/

namespace A347710.P663637325756320317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A005875 n).toNat - A025426 n

end

end A347710.P663637325756320317

/-! ## A347710.P6696247120870120163

`A000161(n)+A063691(n)+A025441(n)`
-/

namespace A347710.P6696247120870120163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n + (A063691 n + A025441 n)

end

end A347710.P6696247120870120163

/-! ## A347710.P10835199238151554944

`A010052(n)+A063725(n)+A063691(n)`
-/

namespace A347710.P10835199238151554944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n + (A063725 n + A063691 n)

end

end A347710.P10835199238151554944

/-! ## A347710.P12776737081008891393

`A347711(n)-A063730(n)`
-/

namespace A347710.P12776737081008891393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347711 n - A063730 n

end

end A347710.P12776737081008891393

/-! ## A347710.P15149405148406320108

`A063691(n)+A002654(A004277(n))`
-/

namespace A347710.P15149405148406320108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 n + A002654 (A004277 n).toNat

end

end A347710.P15149405148406320108

/-! ## A347710.P2482674091221117614

`A063691(n)+A002654(A008574(n))`
-/

namespace A347710.P2482674091221117614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 n + A002654 (A008574 n).toNat

end

end A347710.P2482674091221117614

/-! ## A347710.P18105773816807897275

`A063691(n)+A002654(A022144(n))`
-/

namespace A347710.P18105773816807897275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 n + A002654 (A022144 n).toNat

end

end A347710.P18105773816807897275

/-!
# A347711: Number of compositions (ordered partitions) of n into at most 4 squares.

The programs for A347711, there is no canonical definition to state claims against.
-/

/-! ## A347711.P4161944889775057511

`A347710(n)+A063730(n)`
-/

namespace A347711.P4161944889775057511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347710 n + A063730 n

end

end A347711.P4161944889775057511

/-! ## A347711.P10932183073337234882

`A002654(C(n, n²)+n)+A063730(n)+A063691(n)`
-/

namespace A347711.P10932183073337234882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (Nat.choose n (n ^ 2) + n) + (A063730 n + A063691 n)

end

end A347711.P10932183073337234882

/-! ## A347711.P6740263291246899532

`A110655(A004018(n))+A063730(n)+A063691(n)`
-/

namespace A347711.P6740263291246899532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A004018 n).toNat + (A063730 n + A063691 n)

end

end A347711.P6740263291246899532

/-! ## A347711.P17812459382976713826

`A002102(n)+A063730(n)-A004524(A004018(n))`
-/

namespace A347711.P17812459382976713826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002102 n + (A063730 n - A004524 (A004018 n).toNat)

end

end A347711.P17812459382976713826

/-! ## A347711.P7099234649176773313

`A063730(n)+A000161(n)+A063691(n)+A025441(n)`
-/

namespace A347711.P7099234649176773313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063730 n + (A000161 n + (A063691 n + A025441 n))

end

end A347711.P7099234649176773313

/-! ## A347711.P10893370517699767090

`A002654(A004277(n))+A063730(n)+A063691(n)`
-/

namespace A347711.P10893370517699767090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (A004277 n).toNat + (A063730 n + A063691 n)

end

end A347711.P10893370517699767090

/-! ## A347711.P526154681563951988

`A002654(A008574(n))+A063730(n)+A063691(n)`
-/

namespace A347711.P526154681563951988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (A008574 n).toNat + (A063730 n + A063691 n)

end

end A347711.P526154681563951988

/-! ## A347711.P7706010808834957129

`A002654(A022144(n))+A063730(n)+A063691(n)`
-/

namespace A347711.P7706010808834957129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (A022144 n).toNat + (A063730 n + A063691 n)

end

end A347711.P7706010808834957129

/-! ## A347711.P4591718762069380158

`A347710(n)+A337165(A238531(n)+2+n)`
-/

namespace A347711.P4591718762069380158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347710 n + A337165 (A238531 n + 2 + (n : ℤ)).toNat

end

end A347711.P4591718762069380158

/-! ## A347711.P12675823646663415870

`A347710(n)+A337165(A133263(n)+A130130(n))`
-/

namespace A347711.P12675823646663415870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347710 n + A337165 (A133263 n + A130130 n).toNat

end

end A347711.P12675823646663415870

/-!
# A347714: Number of compositions (ordered partitions) of n into at most 2 cubes.

The programs for A347714, there is no canonical definition to state claims against.
-/

/-! ## A347714.P15322755930731883985

`A175362(n)%3`
-/

namespace A347714.P15322755930731883985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175362 n) 3

end

end A347714.P15322755930731883985

/-! ## A347714.P2329100483095978765

`A280618(n)+char[n^3]`
-/

namespace A347714.P2329100483095978765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A347714.P2329100483095978765

/-! ## A347714.P3898511130305531248

`A173677(n)-char[(n+1)^3]`
-/

namespace A347714.P3898511130305531248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173677 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A347714.P3898511130305531248

/-! ## A347714.P4458971640546716869

`A373971(n)+char[row(n)^3+col(n)^3]`
-/

namespace A347714.P4458971640546716869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n ^ 3 + SequenceMachineLib.triCol n ^ 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373971 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A347714.P4458971640546716869

/-! ## A347714.P10658166600074013385

`A002828(A175362(n))`
-/

namespace A347714.P10658166600074013385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A175362 n).toNat

end

end A347714.P10658166600074013385

/-! ## A347714.P9695192054704737128

`A265404(A175362(n)²)`
-/

namespace A347714.P9695192054704737128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265404 (A175362 n ^ 2).toNat

end

end A347714.P9695192054704737128

/-! ## A347714.P7715610442841162980

`A001222(A175362(n)+1)`
-/

namespace A347714.P7715610442841162980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A175362 n + 1).toNat

end

end A347714.P7715610442841162980

/-! ## A347714.P3641485317314847324

`A025480(A175362(n)+1)`
-/

namespace A347714.P3641485317314847324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A175362 n + 1).toNat

end

end A347714.P3641485317314847324

/-! ## A347714.P12364588985845828694

`A255270(2*A175362(n))`
-/

namespace A347714.P12364588985845828694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (2 * A175362 n).toNat

end

end A347714.P12364588985845828694

/-! ## A347714.P9222491226179760035

`A025468(n)+A025446(n)`
-/

namespace A347714.P9222491226179760035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 n + A025446 n

end

end A347714.P9222491226179760035

/-!
# A347715: Number of compositions (ordered partitions) of n into at most 3 cubes.

The programs for A347715, there is no canonical definition to state claims against.
-/

/-! ## A347715.P2324797005180155558

`A347714(n)+A051344(n)`
-/

namespace A347715.P2324797005180155558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347714 n + A051344 n

end

end A347715.P2324797005180155558

/-! ## A347715.P11624256602407106520

`gcd(A051343(n), A173677(n))`
-/

namespace A347715.P11624256602407106520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051343 n) (A173677 n)

end

end A347715.P11624256602407106520

/-! ## A347715.P6566291447949577632

`and(A051343(n), A347716(n))`
-/

namespace A347715.P6566291447949577632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051343 n) (A347716 n)

end

end A347715.P6566291447949577632

/-! ## A347715.P14100002249602661055

`gcd(dr(A051343(n)), A175362(n))`
-/

namespace A347715.P14100002249602661055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.digitalRoot (A051343 n) : ℤ) (A175362 n)

end

end A347715.P14100002249602661055

/-! ## A347715.P15898431215697228073

`A051344(n)+A175362(n)%3`
-/

namespace A347715.P15898431215697228073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051344 n + Int.tmod (A175362 n) 3

end

end A347715.P15898431215697228073

/-! ## A347715.P13245128149890904584

`gcd(A051344(n-char[2]), A347714(n))`
-/

namespace A347715.P13245128149890904584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051344 (n - (if ∃ j, f1 j = n then 1 else 0))) (A347714 n)

end

end A347715.P13245128149890904584

/-! ## A347715.P16053719467363895502

`A051344(n)+A002828(A175362(n))`
-/

namespace A347715.P16053719467363895502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051344 n + A002828 (A175362 n).toNat

end

end A347715.P16053719467363895502

/-! ## A347715.P5226215717310772985

`A347728(n)%A022837(A051343(n))`
-/

namespace A347715.P5226215717310772985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347728 n) (A022837 (A051343 n).toNat)

end

end A347715.P5226215717310772985

/-! ## A347715.P4219696541038746401

`A051343(n)%A225530(A173678(n))`
-/

namespace A347715.P4219696541038746401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051343 n) (A225530 (A173678 n).toNat)

end

end A347715.P4219696541038746401

/-! ## A347715.P18295495797456351316

`A051344(n)+A001222(A175362(n)+1)`
-/

namespace A347715.P18295495797456351316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051344 n + A001222 (A175362 n + 1).toNat

end

end A347715.P18295495797456351316

/-!
# A347716: Number of compositions (ordered partitions) of n into at most 4 cubes.

The programs for A347716, there is no canonical definition to state claims against.
-/

/-! ## A347716.P10428446703598030318

`A347728(n)%(A173678(n)+1)`
-/

namespace A347716.P10428446703598030318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347728 n) (A173678 n + 1)

end

end A347716.P10428446703598030318

/-! ## A347716.P300685149834031732

`A347728(n)%A003099(A173678(n))`
-/

namespace A347716.P300685149834031732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347728 n) (A003099 (A173678 n).toNat)

end

end A347716.P300685149834031732

/-! ## A347716.P14353378998853526972

`A025448(n)^A344482(n+1)*A347728(n)`
-/

namespace A347716.P14353378998853526972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025448 n : ℚ) ^ (A344482 (n + 1) : ℤ) * (A347728 n : ℚ)

end

end A347716.P14353378998853526972

/-! ## A347716.P3252419385190308645

`and(A155212(A195892(n+1)), A347728(n))`
-/

namespace A347716.P3252419385190308645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A155212 (A195892 (n + 1)).toNat) (A347728 n)

end

end A347716.P3252419385190308645

/-!
# A347717: Number of states of the minimal deterministic finite automaton that accepts ternary strings that represent numbers that are divisible by n.

The programs for A347717, the canonical program `A347717.P8080422817167573223` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347717 has offset 1).

The definition of A347717 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A347717.P8080422817167573223

`(n+1)/3^val(n+1, 3)+val(n+1, 3)`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A347717

/-- `(n+1)/3^val(n+1, 3)+val(n+1, 3)` -/
def P8080422817167573223.Spec : Prop :=
  ∀ n, P8080422817167573223.a n = (A347717 (n + 1) : ℚ)

end A347717

/-! ## A347717.P11128409926251951522

`A038502(n+1)+val(n+1, 3)`
-/

namespace A347717.P11128409926251951522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 1) + (SequenceMachineLib.valuation (n + 1) 3 : ℤ)

end

end A347717.P11128409926251951522

namespace A347717

/-- `A038502(n+1)+val(n+1, 3)` -/
def P11128409926251951522.Spec : Prop :=
  ∀ n, P11128409926251951522.a n = A347717 (n + 1)

end A347717

/-! ## A347717.P3136793860475409166

`val(n+1, 3)+3*(n+1)/A074724(n+1)`
-/

namespace A347717.P3136793860475409166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 3 : ℚ) + 3 * ((n + 1 : ℚ) / (A074724 (n + 1) : ℚ))

end

end A347717.P3136793860475409166

namespace A347717

/-- `val(n+1, 3)+3*(n+1)/A074724(n+1)` -/
def P3136793860475409166.Spec : Prop :=
  ∀ n, P3136793860475409166.a n = (A347717 (n + 1) : ℚ)

end A347717

/-! ## A347717.P6110566725015334939

`A007949(n+1)+(n+1)/3^val(n+1, 3)`
-/

namespace A347717.P6110566725015334939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007949 (n + 1) : ℚ) + (n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ)

end

end A347717.P6110566725015334939

namespace A347717

/-- `A007949(n+1)+(n+1)/3^val(n+1, 3)` -/
def P6110566725015334939.Spec : Prop :=
  ∀ n, P6110566725015334939.a n = (A347717 (n + 1) : ℚ)

end A347717

/-! ## A347717.P5255002482753372260

`val(n+1, 3)+(n+1)/A065331((n+1)/xor(n+1, and(n, n+1)))`
-/

namespace A347717.P5255002482753372260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 3 : ℚ) + (n + 1 : ℚ) / (A065331 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor (n + 1) (Nat.land n (n + 1)) : ℚ))).toNat : ℚ)

end

end A347717.P5255002482753372260

namespace A347717

/-- `val(n+1, 3)+(n+1)/A065331((n+1)/xor(n+1, and(n, n+1)))` -/
def P5255002482753372260.Spec : Prop :=
  ∀ n, P5255002482753372260.a n = (A347717 (n + 1) : ℚ)

end A347717

/-! ## A347717.P1271437891834459782

`val(n+1, 3)+(n+1)/A065331((n+1)/floor((xor(n, n+1)+1)/2))`
-/

namespace A347717.P1271437891834459782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 3 : ℚ) + (n + 1 : ℚ) / (A065331 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌊(Nat.xor n (n + 1) + 1 : ℚ) / 2⌋ : ℚ))).toNat : ℚ)

end

end A347717.P1271437891834459782

namespace A347717

/-- `val(n+1, 3)+(n+1)/A065331((n+1)/floor((xor(n, n+1)+1)/2))` -/
def P1271437891834459782.Spec : Prop :=
  ∀ n, P1271437891834459782.a n = (A347717 (n + 1) : ℚ)

end A347717

/-! ## A347717.P14124952787573780266

`A038502(n+1)+Δ[A054861(n)]`
-/

namespace A347717.P14124952787573780266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 1) + (f1 (n + 1) - f1 n)

end

end A347717.P14124952787573780266

namespace A347717

/-- `A038502(n+1)+Δ[A054861(n)]` -/
def P14124952787573780266.Spec : Prop :=
  ∀ n, P14124952787573780266.a n = A347717 (n + 1)

end A347717

/-! ## A347717.P13693763304037430383

`A038502(n+1)+A007949(n+1)`
-/

namespace A347717.P13693763304037430383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 1) + A007949 (n + 1)

end

end A347717.P13693763304037430383

namespace A347717

/-- `A038502(n+1)+A007949(n+1)` -/
def P13693763304037430383.Spec : Prop :=
  ∀ n, P13693763304037430383.a n = A347717 (n + 1)

end A347717

/-! ## A347717.P17442485814123809979

`Δ[A054861(n)]+(n+1)/A038500(n+1)`
-/

namespace A347717.P17442485814123809979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (n + 1 : ℚ) / (A038500 (n + 1) : ℚ)

end

end A347717.P17442485814123809979

namespace A347717

/-- `Δ[A054861(n)]+(n+1)/A038500(n+1)` -/
def P17442485814123809979.Spec : Prop :=
  ∀ n, P17442485814123809979.a n = (A347717 (n + 1) : ℚ)

end A347717

/-! ## A347717.P15111537052691598216

`A007949(n+1)+(n+1)/A038500(n+1)`
-/

namespace A347717.P15111537052691598216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007949 (n + 1) : ℚ) + (n + 1 : ℚ) / (A038500 (n + 1) : ℚ)

end

end A347717.P15111537052691598216

namespace A347717

/-- `A007949(n+1)+(n+1)/A038500(n+1)` -/
def P15111537052691598216.Spec : Prop :=
  ∀ n, P15111537052691598216.a n = (A347717 (n + 1) : ℚ)

end A347717

/-! ## A347717.P5456766326469033878

`A038502(n+1)+A007814(A064989(n+1))`
-/

namespace A347717.P5456766326469033878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 1) + A007814 (A064989 (n + 1)).toNat

end

end A347717.P5456766326469033878

namespace A347717

/-- `A038502(n+1)+A007814(A064989(n+1))` -/
def P5456766326469033878.Spec : Prop :=
  ∀ n, P5456766326469033878.a n = A347717 (n + 1)

end A347717

/-! ## A347717.P912906346533995153

`A169611(A000265(n+1))+A038502(n+1)`
-/

namespace A347717.P912906346533995153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A000265 (n + 1)).toNat + A038502 (n + 1)

end

end A347717.P912906346533995153

namespace A347717

/-- `A169611(A000265(n+1))+A038502(n+1)` -/
def P912906346533995153.Spec : Prop :=
  ∀ n, P912906346533995153.a n = A347717 (n + 1)

end A347717

/-! ## A347717.P14484958374245266192

`A325937(A038500(n+1))+A038502(n+1)`
-/

namespace A347717.P14484958374245266192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (A038500 (n + 1)).toNat + A038502 (n + 1)

end

end A347717.P14484958374245266192

namespace A347717

/-- `A325937(A038500(n+1))+A038502(n+1)` -/
def P14484958374245266192.Spec : Prop :=
  ∀ n, P14484958374245266192.a n = A347717 (n + 1)

end A347717

/-! ## A347717.P2719316585297846976

`A007949(n+1)+A006519(n+1)*A065330(n+1)`
-/

namespace A347717.P2719316585297846976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 1) + A006519 (n + 1) * A065330 (n + 1)

end

end A347717.P2719316585297846976

namespace A347717

/-- `A007949(n+1)+A006519(n+1)*A065330(n+1)` -/
def P2719316585297846976.Spec : Prop :=
  ∀ n, P2719316585297846976.a n = A347717 (n + 1)

end A347717

/-! ## A347717.P3419045712981845958

`A007949(n+1)+(n+1)/A065331(A000265(n+1))`
-/

namespace A347717.P3419045712981845958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007949 (n + 1) : ℚ) + (n + 1 : ℚ) / (A065331 (A000265 (n + 1)).toNat : ℚ)

end

end A347717.P3419045712981845958

namespace A347717

/-- `A007949(n+1)+(n+1)/A065331(A000265(n+1))` -/
def P3419045712981845958.Spec : Prop :=
  ∀ n, P3419045712981845958.a n = (A347717 (n + 1) : ℚ)

end A347717

/-! ## A347717.P7920230383316756457

`A001222(n+1)+A038502(n+1)-A001222(A038502(n+1))`
-/

namespace A347717.P7920230383316756457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (A038502 (n + 1) - A001222 (A038502 (n + 1)).toNat)

end

end A347717.P7920230383316756457

namespace A347717

/-- `A001222(n+1)+A038502(n+1)-A001222(A038502(n+1))` -/
def P7920230383316756457.Spec : Prop :=
  ∀ n, P7920230383316756457.a n = A347717 (n + 1)

end A347717

/-! ## A347717.P18335380429679480364

`A038502(n+1)+A054704(n+1)-A054704(A038502(n+1))`
-/

namespace A347717.P18335380429679480364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 1) + (A054704 (n + 1) - A054704 (A038502 (n + 1)).toNat)

end

end A347717.P18335380429679480364

namespace A347717

/-- `A038502(n+1)+A054704(n+1)-A054704(A038502(n+1))` -/
def P18335380429679480364.Spec : Prop :=
  ∀ n, P18335380429679480364.a n = A347717 (n + 1)

end A347717

/-! ## A347717.P13562914808626961892

`A038502(n+1)+A087436(n+1)-A087436(A038502(n+1))`
-/

namespace A347717.P13562914808626961892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 1) + (A087436 (n + 1) - A087436 (A038502 (n + 1)).toNat)

end

end A347717.P13562914808626961892

namespace A347717

/-- `A038502(n+1)+A087436(n+1)-A087436(A038502(n+1))` -/
def P13562914808626961892.Spec : Prop :=
  ∀ n, P13562914808626961892.a n = A347717 (n + 1)

end A347717

/-! ## A347717.P7842707096892046715

`A038502(n+1)+A169611(n+1)-A169611(A038502(n+1))`
-/

namespace A347717.P7842707096892046715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 1) + (A169611 (n + 1) - A169611 (A038502 (n + 1)).toNat)

end

end A347717.P7842707096892046715

namespace A347717

/-- `A038502(n+1)+A169611(n+1)-A169611(A038502(n+1))` -/
def P7842707096892046715.Spec : Prop :=
  ∀ n, P7842707096892046715.a n = A347717 (n + 1)

end A347717

/-! ## A347717.P17599181997160963550

`A001222(A038500(n+1))+(n+1)/A065331(A000265(n+1))`
-/

namespace A347717.P17599181997160963550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A038500 (n + 1)).toNat : ℚ) + (n + 1 : ℚ) / (A065331 (A000265 (n + 1)).toNat : ℚ)

end

end A347717.P17599181997160963550

namespace A347717

/-- `A001222(A038500(n+1))+(n+1)/A065331(A000265(n+1))` -/
def P17599181997160963550.Spec : Prop :=
  ∀ n, P17599181997160963550.a n = (A347717 (n + 1) : ℚ)

end A347717

/-!
# A347718: a(n) = Sum of the divisors of sigma_n(n).

The programs for A347718, there is no canonical definition to state claims against.
-/

/-! ## A347718.P5136036084715761087

`A000203(A023887(n+1))`
-/

namespace A347718.P5136036084715761087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A023887 (n + 1)).toNat

end

end A347718.P5136036084715761087

/-! ## A347718.P15654944957247828935

`∑{d}[∑{d}[n+1, #^(n+1)], #]`
-/

namespace A347718.P15654944957247828935
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A347718.P15654944957247828935

/-! ## A347718.P14438430275467931732

`∑{d}[record[∑{d}[1-n, #^(n-1)]], #]`
-/

namespace A347718.P14438430275467931732
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n).natAbs, (d : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A347718.P14438430275467931732

/-!
# A347720: Number of irredundant sets in the halved cube graph Q_n/2.

The programs for A347720, there is no canonical definition to state claims against.
-/

/-! ## A347720.P9889770924427955204

`A028865(A035003(n))`
-/

namespace A347720.P9889770924427955204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028865 (A035003 n).toNat

end

end A347720.P9889770924427955204

/-!
# A347722: Number of irredundant sets in the n-triangular (Johnson) graph.

The programs for A347722, there is no canonical definition to state claims against.
-/

/-! ## A347722.P11645513543952659832

`A277275(2*n+3)+A063886(A189937(n+1))`
-/

namespace A347722.P11645513543952659832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277275 (2 * n + 3) + A063886 (A189937 (n + 1)).toNat

end

end A347722.P11645513543952659832

/-!
# A347724: Number of irredundant sets in the n-triangular grid graph.

The programs for A347724, there is no canonical definition to state claims against.
-/

/-! ## A347724.P5143542894886503930

`A369938(A374656(n)/4)`
-/

namespace A347724.P5143542894886503930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369938 (SequenceMachineLib.roundAway ((A374656 n : ℚ) / 4)).toNat

end

end A347724.P5143542894886503930

/-!
# A347725: Number of irredundant sets in the (2n-1)-triangular snake graph (for n > 1).

The programs for A347725, the canonical program `A347725.P7197943343108749851` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347725 has offset 1).

The definition of A347725 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A347725.P17391622748711484420

`ogf((1+2x+x^2)/(1-2x-x^2-x^3))`
-/

namespace A347725.P17391622748711484420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, -2, -1, -1] n

end

end A347725.P17391622748711484420

namespace A347725

/-- `ogf((1+2x+x^2)/(1-2x-x^2-x^3))` -/
def P17391622748711484420.Spec : Prop :=
  ∀ n, P17391622748711484420.a n = A347725 (n + 1)

end A347725

/-! ## A347725.P7197943343108749851

`2*a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=10`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A347725

/-- `2*a(n-1)+a(n-2)+a(n-3)` -/
def P7197943343108749851.Spec : Prop :=
  ∀ n, (P7197943343108749851.a n : ℤ) = A347725 (n + 1)

theorem P7197943343108749851.correct : P7197943343108749851.Spec := by
  intro n
  simp only [A347725, Nat.add_sub_cancel]

end A347725

/-! ## A347725.P13557782720566426342

`a(n-1)+a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=10`
-/

namespace A347725.P13557782720566426342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 10] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 2) + a (n - 3)))

end

end A347725.P13557782720566426342

namespace A347725

/-- `a(n-1)+a(n-1)+a(n-2)+a(n-3)` -/
def P13557782720566426342.Spec : Prop :=
  ∀ n, (P13557782720566426342.a n : ℤ) = A347725 (n + 1)

theorem P13557782720566426342.correct : P13557782720566426342.Spec := by
  intro n
  simp only [A347725, Nat.add_sub_cancel, A347725.P13557782720566426342.a, A347725.P7197943343108749851.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A347725

/-! ## A347725.P13689952491243167576

`A271489(3*n)`
-/

namespace A347725.P13689952491243167576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271489 (3 * n)

end

end A347725.P13689952491243167576

namespace A347725

/-- `A271489(3*n)` -/
def P13689952491243167576.Spec : Prop :=
  ∀ n, P13689952491243167576.a n = A347725 (n + 1)

end A347725

/-! ## A347725.P7576662546172314683

`A077939(n)+Δ[A077997(n)]`
-/

namespace A347725.P7576662546172314683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077939 n + (f1 (n + 1) - f1 n)

end

end A347725.P7576662546172314683

namespace A347725

/-- `A077939(n)+Δ[A077997(n)]` -/
def P7576662546172314683.Spec : Prop :=
  ∀ n, P7576662546172314683.a n = A347725 (n + 1)

end A347725

/-! ## A347725.P3127012653549345028

`Δ[A077849(n)]-A077997(n)`
-/

namespace A347725.P3127012653549345028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A077997 n

end

end A347725.P3127012653549345028

namespace A347725

/-- `Δ[A077849(n)]-A077997(n)` -/
def P3127012653549345028.Spec : Prop :=
  ∀ n, P3127012653549345028.a n = A347725 (n + 1)

end A347725

/-! ## A347725.P14388034063976037410

`A308589(n+1)+A077997(n)`
-/

namespace A347725.P14388034063976037410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308589 (n + 1) + A077997 n

end

end A347725.P14388034063976037410

namespace A347725

/-- `A308589(n+1)+A077997(n)` -/
def P14388034063976037410.Spec : Prop :=
  ∀ n, P14388034063976037410.a n = A347725 (n + 1)

end A347725

/-! ## A347725.P13506820926780830512

`A077939(n+1)-A077997(n)`
-/

namespace A347725.P13506820926780830512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077939 (n + 1) - A077997 n

end

end A347725.P13506820926780830512

namespace A347725

/-- `A077939(n+1)-A077997(n)` -/
def P13506820926780830512.Spec : Prop :=
  ∀ n, P13506820926780830512.a n = A347725 (n + 1)

end A347725

/-! ## A347725.P6431702147675047509

`A109545(n+2)-A077939(n)`
-/

namespace A347725.P6431702147675047509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109545 (n + 2) - A077939 n

end

end A347725.P6431702147675047509

namespace A347725

/-- `A109545(n+2)-A077939(n)` -/
def P6431702147675047509.Spec : Prop :=
  ∀ n, P6431702147675047509.a n = A347725 (n + 1)

end A347725

/-! ## A347725.P4760708116253829096

`Δ[A077997(n+1)]-A109545(n)`
-/

namespace A347725.P4760708116253829096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A109545 n

end

end A347725.P4760708116253829096

namespace A347725

/-- `Δ[A077997(n+1)]-A109545(n)` -/
def P4760708116253829096.Spec : Prop :=
  ∀ n, P4760708116253829096.a n = A347725 (n + 1)

end A347725

/-! ## A347725.P11554392283450265809

`2*A077997(n+1)-A109545(n+1)`
-/

namespace A347725.P11554392283450265809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077997 (n + 1) - A109545 (n + 1)

end

end A347725.P11554392283450265809

namespace A347725

/-- `2*A077997(n+1)-A109545(n+1)` -/
def P11554392283450265809.Spec : Prop :=
  ∀ n, P11554392283450265809.a n = A347725 (n + 1)

end A347725

/-! ## A347725.P11763867827295244381

`A077939(n)-(A109545(n)-A116413(n))`
-/

namespace A347725.P11763867827295244381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077939 n - (A109545 n - A116413 n)

end

end A347725.P11763867827295244381

namespace A347725

/-- `A077939(n)-(A109545(n)-A116413(n))` -/
def P11763867827295244381.Spec : Prop :=
  ∀ n, P11763867827295244381.a n = A347725 (n + 1)

end A347725

/-! ## A347725.P873874885267664042

`A109545(n+1)+A116413(n)-A077997(n)`
-/

namespace A347725.P873874885267664042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109545 (n + 1) + (A116413 n - A077997 n)

end

end A347725.P873874885267664042

namespace A347725

/-- `A109545(n+1)+A116413(n)-A077997(n)` -/
def P873874885267664042.Spec : Prop :=
  ∀ n, P873874885267664042.a n = A347725 (n + 1)

end A347725

/-! ## A347725.P16472554477193047014

`A116413(n+1)-(A109545(n+1)+A109545(n))`
-/

namespace A347725.P16472554477193047014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116413 (n + 1) - (A109545 (n + 1) + A109545 n)

end

end A347725.P16472554477193047014

namespace A347725

/-- `A116413(n+1)-(A109545(n+1)+A109545(n))` -/
def P16472554477193047014.Spec : Prop :=
  ∀ n, P16472554477193047014.a n = A347725 (n + 1)

end A347725

/-! ## A347725.P15553366848808991651

`A375821(n+1)+A375823(n+1)-A077997(n)`
-/

namespace A347725.P15553366848808991651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375821 (n + 1) + (A375823 (n + 1) - A077997 n)

end

end A347725.P15553366848808991651

namespace A347725

/-- `A375821(n+1)+A375823(n+1)-A077997(n)` -/
def P15553366848808991651.Spec : Prop :=
  ∀ n, P15553366848808991651.a n = A347725 (n + 1)

end A347725

/-! ## A347725.P18420742491461186640

`abs(Δ[A077922(n)])-A077997(n)`
-/

namespace A347725.P18420742491461186640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077922 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - A077997 n

end

end A347725.P18420742491461186640

namespace A347725

/-- `abs(Δ[A077922(n)])-A077997(n)` -/
def P18420742491461186640.Spec : Prop :=
  ∀ n, P18420742491461186640.a n = A347725 (n + 1)

end A347725

/-! ## A347725.P5812836715683694269

`Δ[Δ[A116413(n)]]-A116413(n)`
-/

namespace A347725.P5812836715683694269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116413 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A116413 n

end

end A347725.P5812836715683694269

namespace A347725

/-- `Δ[Δ[A116413(n)]]-A116413(n)` -/
def P5812836715683694269.Spec : Prop :=
  ∀ n, P5812836715683694269.a n = A347725 (n + 1)

end A347725

/-!
# A347726: Expansion of e.g.f.: exp(x / (1-x)^x).

The programs for A347726, there is no canonical definition to state claims against.
-/

/-! ## A347726.P9305818925584069539

`A008619(A000930(n)*A052745(n))`
-/

namespace A347726.P9305818925584069539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000930 n * A052745 n).toNat

end

end A347726.P9305818925584069539

/-! ## A347726.P8992301732688091928

`A028242(A000930(n)*A052745(n))`
-/

namespace A347726.P8992301732688091928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A000930 n * A052745 n).toNat

end

end A347726.P8992301732688091928

/-! ## A347726.P7961765823436612304

`A008619(A027336(n)*A052745(n))`
-/

namespace A347726.P7961765823436612304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A027336 n * A052745 n).toNat

end

end A347726.P7961765823436612304

/-!
# A347728: Number of compositions (ordered partitions) of n into at most 5 cubes.

The programs for A347728, there is no canonical definition to state claims against.
-/

/-! ## A347728.P848515817118816028

`gcd(A347716(n)%A119324(n+1), A173679(n))`
-/

namespace A347728.P848515817118816028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A347716 n) (A119324 (n + 1))) (A173679 n)

end

end A347728.P848515817118816028

/-! ## A347728.P10096364662048248921

`A347729(A340983(A347729(n+1))+n)`
-/

namespace A347728.P10096364662048248921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347729 (A340983 ((A347729 (n + 1)).toNat + 10) + (n : ℤ)).toNat

end

end A347728.P10096364662048248921

/-!
# A347730: Number of compositions (ordered partitions) of n into at most 2 triangular numbers.

The programs for A347730, there is no canonical definition to state claims against.
-/

/-! ## A347730.P16493507232708860455

`A053603(n)+char[∑[n]]`
-/

namespace A347730.P16493507232708860455
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A347730.P16493507232708860455

/-! ## A347730.P776697013529337905

`A008441(n)-char[∑[n+1]]`
-/

namespace A347730.P776697013529337905
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A347730.P776697013529337905

/-! ## A347730.P8865821507284111764

`abs(A134343(n))-char[∑[n+1]]`
-/

namespace A347730.P8865821507284111764
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134343 n| - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A347730.P8865821507284111764

/-! ## A347730.P11752099642934583873

`A116604(2*n)-char[∑[n+1]]`
-/

namespace A347730.P11752099642934583873
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116604 (2 * n) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A347730.P11752099642934583873

/-! ## A347730.P5167815271269477186

`A125079(2*n)-char[∑[n+1]]`
-/

namespace A347730.P5167815271269477186
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125079 (2 * n) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A347730.P5167815271269477186

/-! ## A347730.P12889757789546341536

`A138741(2*n)-char[∑[n+1]]`
-/

namespace A347730.P12889757789546341536
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138741 (2 * n) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A347730.P12889757789546341536

/-! ## A347730.P18269455633271573973

`A004020(n)/2-char[∑[n+1]]`
-/

namespace A347730.P18269455633271573973
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004020 n : ℚ) / 2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ)

end

end A347730.P18269455633271573973

/-! ## A347730.P12780315407750863613

`A005883(n)/4-char[C(n+2, 2)]`
-/

namespace A347730.P12780315407750863613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005883 n : ℚ) / 4 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ)

end

end A347730.P12780315407750863613

/-! ## A347730.P5233731667654028476

`A002654(4*n+1)-char[∑[n+1]]`
-/

namespace A347730.P5233731667654028476
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (4 * n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A347730.P5233731667654028476

/-! ## A347730.P314536729159391746

`A113446(4*n+1)-char[∑[n+1]]`
-/

namespace A347730.P314536729159391746
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113446 (4 * n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A347730.P314536729159391746

/-!
# A347731: Number of compositions (ordered partitions) of n into at most 3 triangular numbers.

The programs for A347731, there is no canonical definition to state claims against.
-/

/-! ## A347731.P8560801613252266947

`A347730(n)+A053604(n)`
-/

namespace A347731.P8560801613252266947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347730 n + A053604 n

end

end A347731.P8560801613252266947

/-! ## A347731.P6191290189263106020

`char[∑[n]]+A053604(n)+A053603(n)`
-/

namespace A347731.P6191290189263106020
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A053604 n + A053603 n)

end

end A347731.P6191290189263106020

/-! ## A347731.P10104149404440064158

`A053604(n)+A008441(n)-char[∑[n+1]]`
-/

namespace A347731.P10104149404440064158
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053604 n + (A008441 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A347731.P10104149404440064158

/-! ## A347731.P14788760958357940172

`A053604(n)+A116604(2*n)-char[∑[n+1]]`
-/

namespace A347731.P14788760958357940172
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053604 n + (A116604 (2 * n) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A347731.P14788760958357940172

/-! ## A347731.P16840244012555663560

`A053604(n)+A125079(2*n)-char[∑[n+1]]`
-/

namespace A347731.P16840244012555663560
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053604 n + (A125079 (2 * n) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A347731.P16840244012555663560

/-! ## A347731.P8821781644396036874

`A053604(n)+A004020(n)/2-char[∑[n+1]]`
-/

namespace A347731.P8821781644396036874
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053604 n : ℚ) + ((A004020 n : ℚ) / 2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ))

end

end A347731.P8821781644396036874

/-! ## A347731.P15980358768188681506

`A053603(n)+A053604(n)+A010054(n)`
-/

namespace A347731.P15980358768188681506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 n + (A053604 n + A010054 n)

end

end A347731.P15980358768188681506

/-! ## A347731.P15935217958099427638

`A008441(n)+A053604(n)-A073424(n)`
-/

namespace A347731.P15935217958099427638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n + (A053604 n - A073424 n)

end

end A347731.P15935217958099427638

/-!
# A347734: Number of compositions (ordered partitions) of n into at most 6 triangular numbers.

The programs for A347734, there is no canonical definition to state claims against.
-/

/-! ## A347734.P7910836973905499971

`A330709(A308063(n+1)+A000740(n+1))`
-/

namespace A347734.P7910836973905499971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330709 (A308063 (n + 1) + A000740 (n + 1)).toNat

end

end A347734.P7910836973905499971

/-! ## A347734.P12967499975373035854

`A330709(A330690(n+1)+A000740(n+1))`
-/

namespace A347734.P12967499975373035854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330709 (A330690 (n + 1) + A000740 (n + 1)).toNat

end

end A347734.P12967499975373035854

/-!
# A347735: Square array T(n, k), n, k > 0, read by antidiagonals; let b be the function that associates to any pair of integers (u, v) the Bézout coefficients (x, y) as produced by the extended Euclidean algorithm (u*x + v*y = gcd(u, v)); T(n, k) is the number of iterations of b when starting from (n, k) needed to obtain a unit vector.

The programs for A347735, there is no canonical definition to state claims against.
-/

/-! ## A347735.P16331226990305847104

`A034444(A204014(n+1)^A296150(n+1))`
-/

namespace A347735.P16331226990305847104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (SequenceMachineLib.roundAway ((A204014 (n + 1) : ℚ) ^ (A296150 (n + 1) : ℤ))).toNat

end

end A347735.P16331226990305847104

/-! ## A347735.P15779300793222407780

`gcd(A003059(A204014(n+1)), A234521(n+1))`
-/

namespace A347735.P15779300793222407780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003059 (A204014 (n + 1)).toNat) (A234521 (n + 1))

end

end A347735.P15779300793222407780

/-! ## A347735.P17256723808717792000

`gcd(A323356(A204014(n+1)), A347476(n+1))`
-/

namespace A347735.P17256723808717792000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A323356 (A204014 (n + 1)).toNat) (A347476 (n + 1))

end

end A347735.P17256723808717792000

/-! ## A347735.P4869851006135912805

`A323356(A204014(n+1))+A209229(A339563(n+5))`
-/

namespace A347735.P4869851006135912805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323356 (A204014 (n + 1)).toNat + A209229 (A339563 (n + 5)).toNat

end

end A347735.P4869851006135912805

/-! ## A347735.P12915839978110992535

`A080116(A045536(3*n+1))+A003059(A204014(n+1))`
-/

namespace A347735.P12915839978110992535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080116 (A045536 (3 * n + 1)).toNat + A003059 (A204014 (n + 1)).toNat

end

end A347735.P12915839978110992535

/-! ## A347735.P7705219833032340867

`A214078(A204014(n+1))+A000035(A028896(n))`
-/

namespace A347735.P7705219833032340867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214078 (A204014 (n + 1)).toNat + A000035 (A028896 n).toNat

end

end A347735.P7705219833032340867

/-! ## A347735.P342841328015491055

`A033715(A260793(n+1)%A204014(n+1))`
-/

namespace A347735.P342841328015491055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 (Int.tmod (A260793 (n + 1)) (A204014 (n + 1))).toNat

end

end A347735.P342841328015491055

/-! ## A347735.P8050684450467356341

`A003059(A204014(n+1))%A317258(n+1)`
-/

namespace A347735.P8050684450467356341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003059 (A204014 (n + 1)).toNat) (A317258 (n + 1))

end

end A347735.P8050684450467356341

/-! ## A347735.P17207273409095458002

`A214078(A204014(n+1))+C(n, A065068(n+1))`
-/

namespace A347735.P17207273409095458002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214078 (A204014 (n + 1)).toNat + (Nat.choose n (A065068 (n + 1)).toNat : ℤ)

end

end A347735.P17207273409095458002

/-!
# A347736: Number of Baxter matrices of size n X (n+1) with two 1's in each row.

The programs for A347736, there is no canonical definition to state claims against.
-/

/-! ## A347736.P2485688831221600123

`A054404(A068639(n)+A068051(n+2))`
-/

namespace A347736.P2485688831221600123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A068639 n + A068051 (n + 2)).toNat

end

end A347736.P2485688831221600123

/-! ## A347736.P5631993347373564661

`A054404(or(A093637(n+2), A321228(n)))`
-/

namespace A347736.P5631993347373564661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (Int.lor (A093637 (n + 2)) (A321228 n)).toNat

end

end A347736.P5631993347373564661

/-! ## A347736.P18136275770747743356

`A226190(∑[A291142(n)+A194640(n)]+1)`
-/

namespace A347736.P18136275770747743356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291142 n + A194640 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A347736.P18136275770747743356

/-! ## A347736.P17861218869026311622

`A054404(A068051(n+2)+A054404(n+2))`
-/

namespace A347736.P17861218869026311622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A068051 (n + 2) + A054404 (n + 2)).toNat

end

end A347736.P17861218869026311622

/-!
# A347737: Zero together with the partial sums of A238005.

The programs for A347737, the canonical program `A347737.P5866675298143105702` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347737 has offset 0).

The definition of A347737 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006463, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A347737.P5866675298143105702

`A006463(n+1)-A060831(n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A347737

/-- `A006463(n+1)-A060831(n)` -/
def P5866675298143105702.Spec : Prop :=
  ∀ n, P5866675298143105702.a n = A347737 n

theorem P5866675298143105702.correct : P5866675298143105702.Spec := by
  intro n
  simp only [A347737]

end A347737

/-! ## A347737.P9894521558863556288

`∑[row(n)]-∑[∑{d}[n, #%2]]`
-/

namespace A347737.P9894521558863556288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A347737.P9894521558863556288

namespace A347737

/-- `∑[row(n)]-∑[∑{d}[n, #%2]]` -/
def P9894521558863556288.Spec : Prop :=
  ∀ n, P9894521558863556288.a n = A347737 n

end A347737

/-! ## A347737.P13178732910718900564

`∑[A238005(round(acot(n)+n))]`
-/

namespace A347737.P13178732910718900564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238005 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347737.P13178732910718900564

namespace A347737

/-- `∑[A238005(round(acot(n)+n))]` -/
def P13178732910718900564.Spec : Prop :=
  ∀ n, P13178732910718900564.a n = A347737 n

end A347737

/-! ## A347737.P706370902233979243

`A238005(n)+a(n-1)` with `a(0)=0`
-/

namespace A347737.P706370902233979243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A238005 n + a (n - 1)

end

end A347737.P706370902233979243

namespace A347737

/-- `A238005(n)+a(n-1)` -/
def P706370902233979243.Spec : Prop :=
  ∀ n, P706370902233979243.a n = A347737 n

end A347737

/-! ## A347737.P10715400150738748142

`∑[A238005(abs(1-n)+1)]`
-/

namespace A347737.P10715400150738748142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238005 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347737.P10715400150738748142

namespace A347737

/-- `∑[A238005(abs(1-n)+1)]` -/
def P10715400150738748142.Spec : Prop :=
  ∀ n, P10715400150738748142.a n = A347737 n

end A347737

/-! ## A347737.P9997255451721441261

`∑[A003056(n)-∑{d}[n, #%2]]`
-/

namespace A347737.P9997255451721441261
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n - ((∑ d ∈ Nat.divisors (f2 n), d % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347737.P9997255451721441261

namespace A347737

/-- `∑[A003056(n)-∑{d}[n, #%2]]` -/
def P9997255451721441261.Spec : Prop :=
  ∀ n, P9997255451721441261.a n = A347737 n

end A347737

/-! ## A347737.P8348027558055670566

`∑[A003056(n)-A069283(n)]-n`
-/

namespace A347737.P8348027558055670566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n - A069283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A347737.P8348027558055670566

namespace A347737

/-- `∑[A003056(n)-A069283(n)]-n` -/
def P8348027558055670566.Spec : Prop :=
  ∀ n, P8348027558055670566.a n = A347737 n

end A347737

/-! ## A347737.P2350014735118172077

`∑[A003056(n)-∑{d}[n, A000035(#)]]`
-/

namespace A347737.P2350014735118172077
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n - ∑ d ∈ Nat.divisors (f2 n), A000035 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347737.P2350014735118172077

namespace A347737

/-- `∑[A003056(n)-∑{d}[n, A000035(#)]]` -/
def P2350014735118172077.Spec : Prop :=
  ∀ n, P2350014735118172077.a n = A347737 n

end A347737

/-! ## A347737.P9186060666629813608

`∑[A238005(n+1)]-A238005(n+1)`
-/

namespace A347737.P9186060666629813608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A238005 (n + 1)

end

end A347737.P9186060666629813608

namespace A347737

/-- `∑[A238005(n+1)]-A238005(n+1)` -/
def P9186060666629813608.Spec : Prop :=
  ∀ n, P9186060666629813608.a n = A347737 n

end A347737

/-!
# A347739: Number of compositions (ordered partitions) of n into at most 2 prime parts.

The programs for A347739, there is no canonical definition to state claims against.
-/

/-! ## A347739.P2482912742764688473

`A002126(n)-∑{p}[n, C(#, n)]`
-/

namespace A347739.P2482912742764688473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n : ℕ) : ℤ)

end

end A347739.P2482912742764688473

/-! ## A347739.P7132303408100640851

`A347550(n)+A061358(n)`
-/

namespace A347739.P7132303408100640851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347550 n + A061358 n

end

end A347739.P7132303408100640851

/-! ## A347739.P11280772922567965882

`A002126(n)-char[A007918(n)]`
-/

namespace A347739.P11280772922567965882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A347739.P11280772922567965882

/-! ## A347739.P1566205749934061646

`A002126(n)-char[A051698(n)]`
-/

namespace A347739.P1566205749934061646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A347739.P1566205749934061646

/-! ## A347739.P9219041168237413620

`A002126(n)-char[A151800(n)]`
-/

namespace A347739.P9219041168237413620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A347739.P9219041168237413620

/-! ## A347739.P13446582160472357080

`A002126(n)-char[Δ[A007504(n)]]`
-/

namespace A347739.P13446582160472357080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A347739.P13446582160472357080

/-! ## A347739.P8040650577583239239

`A002126(n)-char[A000040(n+1)]`
-/

namespace A347739.P8040650577583239239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A347739.P8040650577583239239

/-! ## A347739.P14757244171565955532

`A002126(n)-char[A000705(n+1)]`
-/

namespace A347739.P14757244171565955532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000705 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A347739.P14757244171565955532

/-! ## A347739.P14797984940847136202

`A002126(n)-char[A006530(n+2)]`
-/

namespace A347739.P14797984940847136202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A347739.P14797984940847136202

/-! ## A347739.P5783556799943528064

`A002126(n)-char[A020639(n+2)]`
-/

namespace A347739.P5783556799943528064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A347739.P5783556799943528064

/-!
# A347740: Number of compositions (ordered partitions) of n into at most 3 prime parts.

The programs for A347740, there is no canonical definition to state claims against.
-/

/-! ## A347740.P15495444233470403613

`A347739(n)+A098238(n)`
-/

namespace A347740.P15495444233470403613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347739 n + A098238 n

end

end A347740.P15495444233470403613

/-! ## A347740.P11799848204229246433

`A061358(n)+A347550(n)+A098238(n)`
-/

namespace A347740.P11799848204229246433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n + (A347550 n + A098238 n)

end

end A347740.P11799848204229246433

/-! ## A347740.P4306440600293630821

`A002126(n)+A098238(n)-char[A007918(n)]`
-/

namespace A347740.P4306440600293630821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n + (A098238 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A347740.P4306440600293630821

/-! ## A347740.P5905608090608894686

`A098238(n)+A002126(n)-char[A051698(n)]`
-/

namespace A347740.P5905608090608894686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098238 n + (A002126 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A347740.P5905608090608894686

/-! ## A347740.P12407442759764777062

`A098238(n)+A002126(n)-char[A151800(n)]`
-/

namespace A347740.P12407442759764777062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098238 n + (A002126 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A347740.P12407442759764777062

/-! ## A347740.P7961631129783782080

`A098238(n)+A002126(n)-char[A000040(n+1)]`
-/

namespace A347740.P7961631129783782080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098238 n + (A002126 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A347740.P7961631129783782080

/-! ## A347740.P1814563105266844865

`A098238(n)+A002126(n)-char[A006530(n+2)]`
-/

namespace A347740.P1814563105266844865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098238 n + (A002126 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A347740.P1814563105266844865

/-! ## A347740.P12271150197056782589

`A098238(n)+A002126(n)-char[A020639(n+2)]`
-/

namespace A347740.P12271150197056782589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098238 n + (A002126 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A347740.P12271150197056782589

/-! ## A347740.P6388024439313415579

`A098238(n)+A002126(n)-char[p?[A014963(n+1)]]`
-/

namespace A347740.P6388024439313415579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098238 n + (A002126 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A347740.P6388024439313415579

/-! ## A347740.P14756433917358101501

`A098238(n)+A002126(n)-char[record[A000010(n+1)+1]]`
-/

namespace A347740.P14756433917358101501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098238 n + (A002126 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A347740.P14756433917358101501

/-!
# A347742: Number of compositions (ordered partitions) of n into at most 5 prime parts.

The programs for A347742, there is no canonical definition to state claims against.
-/

/-! ## A347742.P9699582459408618058

`A023360(n)-A056929(A185254(n)+2)`
-/

namespace A347742.P9699582459408618058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023360 n - A056929 (A185254 n + 2).toNat

end

end A347742.P9699582459408618058

/-! ## A347742.P4755705157229360451

`A178798(A249252(n))+A023360(n)`
-/

namespace A347742.P4755705157229360451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A249252 n).toNat + A023360 n

end

end A347742.P4755705157229360451

/-! ## A347742.P5593994497337449506

`A347743(n)+A178798(A249252(n))`
-/

namespace A347742.P5593994497337449506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347743 n + A178798 (A249252 n).toNat

end

end A347742.P5593994497337449506

/-! ## A347742.P13984424026426195728

`A023360(n)-A079978(A005703(n))`
-/

namespace A347742.P13984424026426195728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023360 n - A079978 (A005703 n).toNat

end

end A347742.P13984424026426195728

/-! ## A347742.P9933743509472764735

`A023360(n)-A178798(A046098(n+1))`
-/

namespace A347742.P9933743509472764735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023360 n - A178798 (A046098 (n + 1)).toNat

end

end A347742.P9933743509472764735

/-!
# A347743: Number of compositions (ordered partitions) of n into at most 6 prime parts.

The programs for A347743, there is no canonical definition to state claims against.
-/

/-! ## A347743.P6016951488558960167

`A023360(n)-A055641(A002531(n))`
-/

namespace A347743.P6016951488558960167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023360 n - A055641 (A002531 n).toNat

end

end A347743.P6016951488558960167

/-! ## A347743.P17285269438956421207

`A023360(n)-A085974(A011782(n))`
-/

namespace A347743.P17285269438956421207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023360 n - A085974 (A011782 n).toNat

end

end A347743.P17285269438956421207

/-! ## A347743.P975813294916460129

`A023360(n)-A085974(A052950(n))`
-/

namespace A347743.P975813294916460129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023360 n - A085974 (A052950 n).toNat

end

end A347743.P975813294916460129

/-! ## A347743.P7669371561379082106

`A023360(n)-A044941(A146541(n))`
-/

namespace A347743.P7669371561379082106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023360 n - A044941 (A146541 n).toNat

end

end A347743.P7669371561379082106

/-! ## A347743.P6524876281589444100

`A023360(n)-A185284(A339409(n))`
-/

namespace A347743.P6524876281589444100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023360 n - A185284 (A339409 n).toNat

end

end A347743.P6524876281589444100

/-!
# A347744: Number of compositions (ordered partitions) of n into at most 2 prime parts (counting 1 as a prime).

The programs for A347744, there is no canonical definition to state claims against.
-/

/-! ## A347744.P6383361712160791287

`A347745(n)-A283762(n)`
-/

namespace A347744.P6383361712160791287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347745 n - A283762 n

end

end A347744.P6383361712160791287

/-!
# A347745: Number of compositions (ordered partitions) of n into at most 3 noncomposite parts.

The programs for A347745, there is no canonical definition to state claims against.
-/

/-! ## A347745.P4555626103871614146

`A347744(n)+A283762(n)`
-/

namespace A347745.P4555626103871614146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347744 n + A283762 n

end

end A347745.P4555626103871614146

/-! ## A347745.P3667960234618609030

`A305233(A374734(n+1)-n)`
-/

namespace A347745.P3667960234618609030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305233 (A374734 (n + 1) - (n : ℤ)).toNat

end

end A347745.P3667960234618609030

/-! ## A347745.P2526068613188036821

`A046758(n+1)-A010060(A000583(n))`
-/

namespace A347745.P2526068613188036821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046758 (n + 1) - A010060 (A000583 n).toNat

end

end A347745.P2526068613188036821

/-!
# A347746: Positive integers that are equal both to the product of two integers ending with 4 and to that of two integers ending with 6.

The programs for A347746, there is no canonical definition to state claims against.
-/

/-! ## A347746.P7134856630639113028

`∩[10*A347254(n+1)+6, A324297(n+1)]`
-/

namespace A347746.P7134856630639113028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A347254 (n + 1) + 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347746.P7134856630639113028

/-! ## A347746.P16558841681688587489

`∩[A324297(n+1), A017341(A347254(n+1))]`
-/

namespace A347746.P16558841681688587489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 (A347254 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347746.P16558841681688587489

/-! ## A347746.P8735309104469195522

`A017341(∩[A324298(n+1), A347254(n+1)])`
-/

namespace A347746.P8735309104469195522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324298 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347254 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A347746.P8735309104469195522

/-! ## A347746.P1695321992460661485

`∩[A324297(n+1), A067844(A347254(n+1)+1)]`
-/

namespace A347746.P1695321992460661485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067844 (A347254 (n + 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347746.P1695321992460661485

/-! ## A347746.P14460551673352726897

`∩[A020739(5*A347254(n+1)), A324297(n+1)]`
-/

namespace A347746.P14460551673352726897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 (5 * A347254 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347746.P14460551673352726897

/-!
# A347747: Positive integers with final digit 6 that are equal to the product of two integers ending with the same digit.

The programs for A347747, there is no canonical definition to state claims against.
-/

/-! ## A347747.P4252339570931568132

`∩[A239435(n+1), A017341(n)]`
-/

namespace A347747.P4252339570931568132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347747.P4252339570931568132

/-! ## A347747.P852632511380486941

`∩[A239435(n+1), A017329(n)+1]`
-/

namespace A347747.P852632511380486941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347747.P852632511380486941

/-! ## A347747.P11410981828159317443

`∩[A067844(n+1), A239435(n+1)]`
-/

namespace A347747.P11410981828159317443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347747.P11410981828159317443

/-! ## A347747.P5018530568833759775

`∩[A239435(n+1), A349767(n+1)]`
-/

namespace A347747.P5018530568833759775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347747.P5018530568833759775

/-! ## A347747.P17964280885914762574

`∩[A239435(n+1), A268044(n+1)+3]`
-/

namespace A347747.P17964280885914762574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268044 (n + 1) + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347747.P17964280885914762574

/-! ## A347747.P11027434317710485469

`∩[A008587(2*n+1)+1, A239435(n+2)]`
-/

namespace A347747.P11027434317710485469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239435 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347747.P11027434317710485469

/-! ## A347747.P4539321013289647177

`∩[A239435(n+1), A020739(A008587(n))]`
-/

namespace A347747.P4539321013289647177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 (A008587 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347747.P4539321013289647177

/-! ## A347747.P14555373666255476553

`∩[A239435(n+1), A020739(A017329(n))]`
-/

namespace A347747.P14555373666255476553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 (A017329 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347747.P14555373666255476553

/-! ## A347747.P16260551188824179322

`∩[A239435(n+2), A004271(A008587(n))]`
-/

namespace A347747.P16260551188824179322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239435 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (A008587 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347747.P16260551188824179322

/-! ## A347747.P6404927698856836892

`∩[A020739(A121025(n+1)), A239435(n+1)]`
-/

namespace A347747.P6404927698856836892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 (A121025 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347747.P6404927698856836892

/-!
# A347748: Number of positive integers with n digits that are equal both to the product of two integers ending with 4 and to that of two integers ending with 6.

The programs for A347748, there is no canonical definition to state claims against.
-/

/-! ## A347748.P6416313051454295102

`A337856(n+1)+A347255(n+1)-A347749(n+1)`
-/

namespace A347748.P6416313051454295102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337856 (n + 1) + A347255 (n + 1) - A347749 (n + 1)

end

end A347748.P6416313051454295102

/-!
# A347749: Number of positive integers with n digits and final digit 6 that are equal to the product of two integers ending with the same digit.

The programs for A347749, there is no canonical definition to state claims against.
-/

/-! ## A347749.P12481871526615934621

`A337856(n+1)+A347255(n+1)-A347748(n+1)`
-/

namespace A347749.P12481871526615934621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337856 (n + 1) + A347255 (n + 1) - A347748 (n + 1)

end

end A347749.P12481871526615934621

/-!
# A347750: Number of intersection points when every pair of vertices of a row of n adjacent congruent rectangles are joined by an infinite line.

The programs for A347750, there is no canonical definition to state claims against.
-/

/-! ## A347750.P30282698175705563

`A018808(n+1)-comp[2*(n+1)]`
-/

namespace A347750.P30282698175705563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018808 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A347750.P30282698175705563

/-! ## A347750.P2320422273144089731

`record[A018808(A080513(n))-n]`
-/

namespace A347750.P2320422273144089731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018808 (A080513 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347750.P2320422273144089731

/-! ## A347750.P16373222695178188107

`abs(A018808(n+1)-A004273(n))`
-/

namespace A347750.P16373222695178188107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A018808 (n + 1) - A004273 n|

end

end A347750.P16373222695178188107

/-! ## A347750.P15740213234816994070

`A295707(A001844(n))-comp[2*(n+1)]`
-/

namespace A347750.P15740213234816994070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A001844 n).toNat - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A347750.P15740213234816994070

/-! ## A347750.P8806067775156738802

`A018808(n+1)+n+1-A008486(n)`
-/

namespace A347750.P8806067775156738802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018808 (n + 1) + (n + 1 : ℤ) - A008486 n

end

end A347750.P8806067775156738802

/-!
# A347751: Number of finite edges in the graph formed when every pair of vertices of a row of n adjacent congruent rectangles are joined by an infinite line.

The programs for A347751, there is no canonical definition to state claims against.
-/

/-! ## A347751.P4392540919711535056

`A344993(n)+A347750(n)-A057427(n)`
-/

namespace A347751.P4392540919711535056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344993 n + (A347750 n - A057427 n)

end

end A347751.P4392540919711535056

/-! ## A347751.P16999336274237927243

`A344993(n)+A347750(n)-A178334(n)`
-/

namespace A347751.P16999336274237927243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344993 n + (A347750 n - A178334 n)

end

end A347751.P16999336274237927243

/-! ## A347751.P12127628465301745690

`A088658(n+1)+A046092(n)-A177719(n+1)`
-/

namespace A347751.P12127628465301745690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088658 (n + 1) + (A046092 n - A177719 (n + 1))

end

end A347751.P12127628465301745690

/-! ## A347751.P16359440426183081473

`A331771(n+1)-(A177719(n+1)+A046092(n))`
-/

namespace A347751.P16359440426183081473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331771 (n + 1) - (A177719 (n + 1) + A046092 n)

end

end A347751.P16359440426183081473

/-! ## A347751.P15397596651266647818

`A344993(n)+A029578(A347750(n))`
-/

namespace A347751.P15397596651266647818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344993 n + A029578 (A347750 n).toNat

end

end A347751.P15397596651266647818

/-!
# A347752: Orders of additive cubes in the tribonacci word A080843.

The programs for A347752, there is no canonical definition to state claims against.
-/

/-! ## A347752.P17081700362708931757

`lt[A247491(A007953(3*n+2)), A036892(n+1)]`
-/

namespace A347752.P17081700362708931757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247491 (A007953 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036892 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A347752.P17081700362708931757

/-! ## A347752.P5328186996489653808

`lt[A067029(n+1), A037904(A244644(2*n+3))]`
-/

namespace A347752.P5328186996489653808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (A244644 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A347752.P5328186996489653808

/-! ## A347752.P5341457563067892080

`lt[A133233(A005766(n+3)), A138472(3*n+2)]`
-/

namespace A347752.P5341457563067892080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133233 (A005766 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138472 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A347752.P5341457563067892080

/-! ## A347752.P2251704109143007471

`lt[A033995(A007953(3*n+2)), A112844(n)]`
-/

namespace A347752.P2251704109143007471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033995 (A007953 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A347752.P2251704109143007471

/-! ## A347752.P3095669187182415375

`lt[A268448(A007953(3*n+2)), A191894(2*n+1)]`
-/

namespace A347752.P3095669187182415375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268448 (A007953 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191894 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A347752.P3095669187182415375

/-!
# A347754: a(n) = sqrt(A347594(n-1)^2 + n^2 + A347594(n)).

The programs for A347754, there is no canonical definition to state claims against.
-/

/-! ## A347754.P11419578047603977726

`floor(sqrt(A347594(n)²+(n+1)²))+1`
-/

namespace A347754.P11419578047603977726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A347594 n ^ 2 + ((n + 1) ^ 2 : ℤ)) + 1

end

end A347754.P11419578047603977726

/-! ## A347754.P690204010679753326

`sqrt(A347594(n)²+(n+1)²+A347594(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347754.P690204010679753326
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A347594 n ^ 2 + ((n + 1) ^ 2 : ℤ) + A347594 (n + 1) : ℝ)

end

end A347754.P690204010679753326

/-!
# A347756: Local minima in A347113.

The programs for A347756, there is no canonical definition to state claims against.
-/

/-! ## A347756.P2058001431764094956

`eq[1, char[A347755(n)]]`
-/

namespace A347756.P2058001431764094956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347755 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A347756.P2058001431764094956

/-! ## A347756.P5086330760916972095

`A347113(A347757(n+1))`
-/

namespace A347756.P5086330760916972095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347113 (A347757 (n + 1)).toNat

end

end A347756.P5086330760916972095

/-! ## A347756.P4199901982658223585

`A347113(record[A347306(n+1)])`
-/

namespace A347756.P4199901982658223585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347113 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A347756.P4199901982658223585

/-! ## A347756.P983690300760917479

`A347755(A347757(n+1)-1)`
-/

namespace A347756.P983690300760917479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347755 (A347757 (n + 1) - 1).toNat

end

end A347756.P983690300760917479

/-! ## A347756.P15332037719635858892

`A347755(eq[A347113(n+1), A347755(n)])`
-/

namespace A347756.P15332037719635858892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347755 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A347756.P15332037719635858892

/-!
# A347757: Indices of local minima in A347113.

The programs for A347757, there is no canonical definition to state claims against.
-/

/-! ## A347757.P8582616996119429261

`record[A347306(n+1)]`
-/

namespace A347757.P8582616996119429261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347757.P8582616996119429261

/-! ## A347757.P9317811951903194977

`A347306(A347756(1+n))`
-/

namespace A347757.P9317811951903194977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347306 (A347756 (1 + n)).toNat

end

end A347757.P9317811951903194977

/-! ## A347757.P5000790925477583059

`A347306(eq[1, char[A347755(n)]])`
-/

namespace A347757.P5000790925477583059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347755 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347306 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A347757.P5000790925477583059

/-! ## A347757.P4203381186064035689

`A347306(A347755(a(n-1)))` with `a(0)=1`
-/

namespace A347757.P4203381186064035689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A347306 (A347755 (a (n - 1)).toNat).toNat

end

end A347757.P4203381186064035689

/-! ## A347757.P1695118376580022733

`∑[runs[A347755(n)]]`
-/

namespace A347757.P1695118376580022733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347755 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347757.P1695118376580022733

/-! ## A347757.P14607076067943836861

`eq[A347113(n+1), A347755(n)]+1`
-/

namespace A347757.P14607076067943836861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347755 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A347757.P14607076067943836861

/-!
# A347758: Let s(k) be the finite permutation associated to A109299(k); s(a(n)) is the inverse of s(n).

The programs for A347758, there is no canonical definition to state claims against.
-/

/-! ## A347758.P9398871644938924826

`A307747(n+1)+A010894(A291693(n))`
-/

namespace A347758.P9398871644938924826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307747 (n + 1) + A010894 ((A291693 n).toNat + 21)

end

end A347758.P9398871644938924826

/-! ## A347758.P17118133307355596863

`or(A010894(A258318(n)), A307747(n+1))`
-/

namespace A347758.P17118133307355596863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010894 ((A258318 n).toNat + 21)) (A307747 (n + 1))

end

end A347758.P17118133307355596863

/-! ## A347758.P6903496089838019842

`or(A307747(n+1), A341755(A110868(n)))`
-/

namespace A347758.P6903496089838019842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A307747 (n + 1)) (A341755 (A110868 n).toNat)

end

end A347758.P6903496089838019842

/-!
# A347760: Number of compositions (ordered partitions) of n into at most 5 prime parts (counting 1 as a prime).

The programs for A347760, there is no canonical definition to state claims against.
-/

/-! ## A347760.P17609793459278411863

`A004396(A182210(3^n))`
-/

namespace A347760.P17609793459278411863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A182210 (3 ^ n)).toNat

end

end A347760.P17609793459278411863

/-! ## A347760.P14020472701581135445

`A000267(A088218(n))-A056362(n)`
-/

namespace A347760.P14020472701581135445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A088218 n).toNat - A056362 n

end

end A347760.P14020472701581135445

/-! ## A347760.P1135991806905662113

`A342525(A342528(n))-A309484(n)`
-/

namespace A347760.P1135991806905662113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342525 (A342528 n).toNat - A309484 n

end

end A347760.P1135991806905662113

/-! ## A347760.P516546556593878843

`A023193(A077739(n+1)+A002415(n))`
-/

namespace A347760.P516546556593878843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A077739 (n + 1) + A002415 n).toNat

end

end A347760.P516546556593878843

/-!
# A347761: Number of compositions (ordered partitions) of n into at most 6 prime parts (counting 1 as a prime).

The programs for A347761, there is no canonical definition to state claims against.
-/

/-! ## A347761.P10212321807179831135

`A257792(n)-A054899(A257814(n+1))`
-/

namespace A347761.P10212321807179831135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257792 n - A054899 (A257814 (n + 1)).toNat

end

end A347761.P10212321807179831135

/-! ## A347761.P16920420691489686994

`A166155(A003293(n))`
-/

namespace A347761.P16920420691489686994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166155 (A003293 n).toNat

end

end A347761.P16920420691489686994

/-! ## A347761.P11613177393846563371

`A085089(A177477(n))`
-/

namespace A347761.P11613177393846563371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A177477 n).toNat

end

end A347761.P11613177393846563371

/-! ## A347761.P9791534430423288721

`A342525(A094974(n))`
-/

namespace A347761.P9791534430423288721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342525 (A094974 n).toNat

end

end A347761.P9791534430423288721

/-! ## A347761.P15348132190044347088

`A325031(A131298(n))`
-/

namespace A347761.P15348132190044347088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325031 (A131298 n).toNat

end

end A347761.P15348132190044347088

/-!
# A347762: Number of compositions (ordered partitions) of n into at most 2 prime powers (including 1).

The programs for A347762, there is no canonical definition to state claims against.
-/

/-! ## A347762.P5720536893961296037

`floor(A347643(n)+A282062(n)/2)`
-/

namespace A347762.P5720536893961296037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A347643 n : ℚ) + (A282062 n : ℚ) / 2⌋

end

end A347762.P5720536893961296037

/-! ## A347762.P8768542120116163048

`A282062(n)+A010055(round(sqrt(n²+1)))`
-/

namespace A347762.P8768542120116163048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282062 n + A010055 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A347762.P8768542120116163048

/-! ## A347762.P7946305608751638778

`A347643(n)+A004526(A282062(n))`
-/

namespace A347762.P7946305608751638778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347643 n + A004526 (A282062 n).toNat

end

end A347762.P7946305608751638778

/-! ## A347762.P16549019479179992486

`A282062(n)+round(A010055(A253909(n))/2)`
-/

namespace A347762.P16549019479179992486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282062 n + SequenceMachineLib.roundAway ((A010055 (A253909 n).toNat : ℚ) / 2)

end

end A347762.P16549019479179992486

/-! ## A347762.P3036858094218094821

`A282062(n)+(A010055(A028310(n))+2)%2`
-/

namespace A347762.P3036858094218094821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282062 n + Int.tmod (A010055 (A028310 n).toNat + 2) 2

end

end A347762.P3036858094218094821

/-! ## A347762.P12358550165222250659

`A010055(A257088(n))+A282062(n)%(n+1)`
-/

namespace A347762.P12358550165222250659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (A257088 n).toNat + Int.tmod (A282062 n) (n + 1 : ℤ)

end

end A347762.P12358550165222250659

/-! ## A347762.P9961671593016625499

`(A282062(n)+A010055(A253909(n))-1)/3*A158799(n)+1`
-/

namespace A347762.P9961671593016625499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282062 n + A010055 (A253909 n).toNat - 1 : ℚ) / 3 * (A158799 n : ℚ) + 1

end

end A347762.P9961671593016625499

/-! ## A347762.P11241855584407465402

`A282062(n)+A010055(A253909(n))-A014963(4*n+2)^n+1`
-/

namespace A347762.P11241855584407465402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282062 n + A010055 (A253909 n).toNat - A014963 (4 * n + 2) ^ n + 1

end

end A347762.P11241855584407465402

/-! ## A347762.P10012461404340484527

`A347763(n)-A282064(n)`
-/

namespace A347762.P10012461404340484527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347763 n - A282064 n

end

end A347762.P10012461404340484527

/-!
# A347763: Number of compositions (ordered partitions) of n into at most 3 prime powers (including 1).

The programs for A347763, there is no canonical definition to state claims against.
-/

/-! ## A347763.P6954970937384407770

`A347762(n)+A282064(n)`
-/

namespace A347763.P6954970937384407770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347762 n + A282064 n

end

end A347763.P6954970937384407770

/-! ## A347763.P14222688937565312284

`A282064(n)+floor(A347643(n)+A282062(n)/2)`
-/

namespace A347763.P14222688937565312284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282064 n + ⌊(A347643 n : ℚ) + (A282062 n : ℚ) / 2⌋

end

end A347763.P14222688937565312284

/-! ## A347763.P9998568853468767570

`A010055(abs(1-n)+1)+A282064(n)+A282062(n)`
-/

namespace A347763.P9998568853468767570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (|1 - (n : ℤ)| + 1).toNat + (A282064 n + A282062 n)

end

end A347763.P9998568853468767570

/-! ## A347763.P14141038950711823254

`A004526(A282062(n))+A347643(n)+A282064(n)`
-/

namespace A347763.P14141038950711823254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A282062 n).toNat + (A347643 n + A282064 n)

end

end A347763.P14141038950711823254

/-! ## A347763.P18054636299190299242

`A282064(n)+A282062(n)+A010055(A065033(2*n))`
-/

namespace A347763.P18054636299190299242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282064 n + (A282062 n + A010055 (A065033 (2 * n)).toNat)

end

end A347763.P18054636299190299242

/-! ## A347763.P5053666888205570515

`A282064(n)+A282062(n)+A010055(A000007(n)+n)`
-/

namespace A347763.P5053666888205570515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282064 n + (A282062 n + A010055 (A000007 n + (n : ℤ)).toNat)

end

end A347763.P5053666888205570515

/-!
# A347764: Number of compositions (ordered partitions) of n into at most 4 prime powers (including 1).

The programs for A347764, there is no canonical definition to state claims against.
-/

/-! ## A347764.P741402362001681565

`A347776(A002998(n))-A282845(n+1)`
-/

namespace A347764.P741402362001681565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347776 (A002998 n).toNat - A282845 (n + 1)

end

end A347764.P741402362001681565

/-! ## A347764.P9662975527872954360

`A347776(n)-A282845(A062399(n+1))`
-/

namespace A347764.P9662975527872954360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347776 n - A282845 (A062399 (n + 1)).toNat

end

end A347764.P9662975527872954360

/-! ## A347764.P9485608739888208264

`A347775(A002998(n))+A282845(n)-C(n, 5)`
-/

namespace A347764.P9485608739888208264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347775 (A002998 n).toNat + A282845 n - (Nat.choose n 5 : ℤ)

end

end A347764.P9485608739888208264

/-! ## A347764.P13213252773796959107

`A344651(n²)+∑[∑[round((n-1)%7/5)]]`
-/

namespace A347764.P13213252773796959107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.tmod ((n : ℤ) - 1) 7 : ℚ) / 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344651 (n ^ 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347764.P13213252773796959107

/-! ## A347764.P2515048675068893944

`A135660(((n+1)²+n²)*a(n-1)+1)` with `a(0)=1`
-/

namespace A347764.P2515048675068893944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A135660 (((n + 1) ^ 2 + n ^ 2 : ℤ) * a (n - 1) + 1).toNat

end

end A347764.P2515048675068893944

/-!
# A347765: a(n) is the concatenation of terms in the n-th row of triangle A237048.

The programs for A347765, there is no canonical definition to state claims against.
-/

/-! ## A347765.P17331071710373542309

`A007088(A347266(n+1))`
-/

namespace A347765.P17331071710373542309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A347266 (n + 1)).toNat

end

end A347765.P17331071710373542309

/-! ## A347765.P3970636705527921561

`A185544(2*A347266(n+1))`
-/

namespace A347765.P3970636705527921561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A347266 (n + 1)).toNat

end

end A347765.P3970636705527921561

/-! ## A347765.P15958638139921584837

`A085209(lt[A324840(n+1), A174124(3*n+1)])`
-/

namespace A347765.P15958638139921584837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324840 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174124 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085209 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A347765.P15958638139921584837

/-!
# A347768: Permanent of the n X n matrix with (j,k)-entry |j-k+1| (j,k = 1..n).

The programs for A347768, there is no canonical definition to state claims against.
-/

/-! ## A347768.P6755855523834535454

`A005940(10*a(n-1))` with `a(0)=1, a(1)=1, a(2)=8`
-/

namespace A347768.P6755855523834535454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 8] fun n a =>
  A005940 (10 * a (n - 1)).toNat

end

end A347768.P6755855523834535454

/-!
# A347770: Conjectured list of numbers which are perfect, amicable, or sociable.

The programs for A347770, there is no canonical definition to state claims against.
-/

/-! ## A347770.P3726447331451035919

`∪[A122726(n+1), A206708(n+1)]`
-/

namespace A347770.P3726447331451035919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347770.P3726447331451035919

/-!
# A347771: Unitary nontotient numbers: values not in range of unitary totient function uphi(n).

The programs for A347771, there is no canonical definition to state claims against.
-/

/-! ## A347771.P2764797152565773388

`eq[0, A361967(n+1)]+1`
-/

namespace A347771.P2764797152565773388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361967 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A347771.P2764797152565773388

/-! ## A347771.P8076157216712617526

`lt[A135347(n+1), 0]+1`
-/

namespace A347771.P8076157216712617526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135347 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A347771.P8076157216712617526

/-! ## A347771.P15636120198493540879

`lt[A362229(n+1), 1]+1`
-/

namespace A347771.P15636120198493540879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362229 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A347771.P15636120198493540879

/-! ## A347771.P1930338116960148572

`eq[0, A361967(A028310(n))]`
-/

namespace A347771.P1930338116960148572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361967 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347771.P1930338116960148572

/-! ## A347771.P5310032004915075681

`eq[0, A361967(A000007(n)+n)]`
-/

namespace A347771.P5310032004915075681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361967 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347771.P5310032004915075681

/-! ## A347771.P15575739880998198682

`comp[A047994(n+1)-1]+1`
-/

namespace A347771.P15575739880998198682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A347771.P15575739880998198682

/-! ## A347771.P2424743287797721298

`comp[A344875(n+1)-1]+1`
-/

namespace A347771.P2424743287797721298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344875 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A347771.P2424743287797721298

/-!
# A347773: Square array read by antidiagonals downwards: T(n,k) is the smallest positive integer whose n-th power is the sum of k n-th powers of positive integers, or 0 if no such number exists.

The programs for A347773, there is no canonical definition to state claims against.
-/

/-! ## A347773.P6384099141346851323

`A263977(A173588(n))%6`
-/

namespace A347773.P6384099141346851323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263977 (A173588 n).toNat) 6

end

end A347773.P6384099141346851323

/-! ## A347773.P14584230626482444091

`A078129(A337883(n+2))%7`
-/

namespace A347773.P14584230626482444091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078129 (A337883 (n + 2)).toNat) 7

end

end A347773.P14584230626482444091

/-! ## A347773.P17648654902011276756

`A337886(n+2)%A291161(A173538(n))`
-/

namespace A347773.P17648654902011276756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337886 (n + 2)) (A291161 (A173538 n).toNat)

end

end A347773.P17648654902011276756

/-! ## A347773.P17212063005830138385

`and(A062619(A304442(n)), A337886(n+2))`
-/

namespace A347773.P17212063005830138385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062619 (A304442 n).toNat) (A337886 (n + 2))

end

end A347773.P17212063005830138385

/-!
# A347774: E.g.f.: Product_{k>=1} 1 / (1 - x^k)^tan(x).

The programs for A347774, there is no canonical definition to state claims against.
-/

/-! ## A347774.P11815077683894769791

`A123108(n*A086584(n))`
-/

namespace A347774.P11815077683894769791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 ((n : ℤ) * A086584 n).toNat

end

end A347774.P11815077683894769791

/-! ## A347774.P16308377084002525924

`xor(Δ[A330346(n)], A059429(n))`
-/

namespace A347774.P16308377084002525924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A059429 n)

end

end A347774.P16308377084002525924

/-!
# A347775: Number of compositions (ordered partitions) of n into at most 5 prime powers (including 1).

The programs for A347775, there is no canonical definition to state claims against.
-/

/-! ## A347775.P12888415535286846996

`A347776(A055645(n))-A282845(n)`
-/

namespace A347775.P12888415535286846996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347776 (A055645 n).toNat - A282845 n

end

end A347775.P12888415535286846996

/-! ## A347775.P17502751713631758333

`A347776(A262545(n+1))-A282845(n)`
-/

namespace A347775.P17502751713631758333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347776 (A262545 (n + 1)).toNat - A282845 n

end

end A347775.P17502751713631758333

/-! ## A347775.P9295245667252942790

`A347776(A049872(n))-A282845(n)`
-/

namespace A347775.P9295245667252942790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347776 (A049872 n).toNat - A282845 n

end

end A347775.P9295245667252942790

/-! ## A347775.P14297199978507315881

`A347776(A062399(n))-A282845(n)`
-/

namespace A347775.P14297199978507315881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347776 (A062399 n).toNat - A282845 n

end

end A347775.P14297199978507315881

/-! ## A347775.P12016802649946791974

`A347776(A002998(n))-A282845(n)`
-/

namespace A347775.P12016802649946791974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347776 (A002998 n).toNat - A282845 n

end

end A347775.P12016802649946791974

/-!
# A347776: Number of compositions (ordered partitions) of n into at most 6 prime powers (including 1).

The programs for A347776, there is no canonical definition to state claims against.
-/

/-! ## A347776.P10880976725088247184

`A347775(A055645(n))+A282845(n)`
-/

namespace A347776.P10880976725088247184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347775 (A055645 n).toNat + A282845 n

end

end A347776.P10880976725088247184

/-! ## A347776.P15929453003879037481

`A347775(A262545(n+1))+A282845(n)`
-/

namespace A347776.P15929453003879037481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347775 (A262545 (n + 1)).toNat + A282845 n

end

end A347776.P15929453003879037481

/-! ## A347776.P2072077649105258448

`A347775(A049872(n))+A282845(n)`
-/

namespace A347776.P2072077649105258448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347775 (A049872 n).toNat + A282845 n

end

end A347776.P2072077649105258448

/-! ## A347776.P6260609308809534335

`A347775(A062399(n))+A282845(n)`
-/

namespace A347776.P6260609308809534335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347775 (A062399 n).toNat + A282845 n

end

end A347776.P6260609308809534335

/-! ## A347776.P3386722414035130039

`A347775(n)+A282845(A351870(n))`
-/

namespace A347776.P3386722414035130039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347775 n + A282845 (A351870 n).toNat

end

end A347776.P3386722414035130039

/-!
# A347777: Number of compositions (ordered partitions) of n into at most 2 squarefree parts.

The programs for A347777, there is no canonical definition to state claims against.
-/

/-! ## A347777.P1704419349895478353

`A347648(n)+A098236(A028310(n))`
-/

namespace A347777.P1704419349895478353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347648 n + A098236 (A028310 n).toNat

end

end A347777.P1704419349895478353

/-! ## A347777.P18177230225581532822

`A347648(n)+A098236(A233583(n+1))`
-/

namespace A347777.P18177230225581532822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347648 n + A098236 (A233583 (n + 1)).toNat

end

end A347777.P18177230225581532822

/-! ## A347777.P1553006333519372676

`A028310(A013928(n+1))-A294101(A028310(n))`
-/

namespace A347777.P1553006333519372676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A013928 (n + 1)).toNat - A294101 (A028310 n).toNat

end

end A347777.P1553006333519372676

/-! ## A347777.P4313765518028429051

`A098236(A028310(n))+A105588(n)-A294234(n)`
-/

namespace A347777.P4313765518028429051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098236 (A028310 n).toNat + (A105588 n - A294234 n)

end

end A347777.P4313765518028429051

/-! ## A347777.P473457615126792803

`A098236(A233583(n+1))+A105588(n)-A294234(n)`
-/

namespace A347777.P473457615126792803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098236 (A233583 (n + 1)).toNat + (A105588 n - A294234 n)

end

end A347777.P473457615126792803

/-! ## A347777.P3209289377780125744

`A098235(A000007(n)+n)+A008966(A000007(n)+n)`
-/

namespace A347777.P3209289377780125744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098235 (A000007 n + (n : ℤ)).toNat + A008966 (A000007 n + (n : ℤ)).toNat

end

end A347777.P3209289377780125744

/-! ## A347777.P726243919593544079

`A347778(n)-A280210(n)`
-/

namespace A347777.P726243919593544079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347778 n - A280210 n

end

end A347777.P726243919593544079

/-!
# A347778: Number of compositions (ordered partitions) of n into at most 3 squarefree parts.

The programs for A347778, there is no canonical definition to state claims against.
-/

/-! ## A347778.P7724563765988435718

`A347777(n)+A280210(n)`
-/

namespace A347778.P7724563765988435718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347777 n + A280210 n

end

end A347778.P7724563765988435718

/-! ## A347778.P6553693625998642681

`A098236(abs(1-n)+1)+A347648(n)+A280210(n)`
-/

namespace A347778.P6553693625998642681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098236 (|1 - (n : ℤ)| + 1).toNat + (A347648 n + A280210 n)

end

end A347778.P6553693625998642681

/-! ## A347778.P8738197984596010826

`A061373(xor(A145545(n+1), A268292(n)))`
-/

namespace A347778.P8738197984596010826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061373 (Int.xor (A145545 (n + 1)) (A268292 n)).toNat

end

end A347778.P8738197984596010826

/-!
# A347779: Number of compositions (ordered partitions) of n into at most 4 squarefree parts.

The programs for A347779, there is no canonical definition to state claims against.
-/

/-! ## A347779.P5175778598198994113

`A246786(A238434(n)+A161680(n))`
-/

namespace A347779.P5175778598198994113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246786 (A238434 n + A161680 n).toNat

end

end A347779.P5175778598198994113

/-! ## A347779.P11836204922316446242

`A000603(n)-lt[A000599(n+1), A000594(n+1)]`
-/

namespace A347779.P11836204922316446242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000603 n - (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)

end

end A347779.P11836204922316446242

/-! ## A347779.P14835812922484927284

`A101638(A101657(n))+A000009(2*n)`
-/

namespace A347779.P14835812922484927284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101638 (A101657 n).toNat + A000009 (2 * n)

end

end A347779.P14835812922484927284

/-!
# A347780: Number of compositions (ordered partitions) of n into at most 5 squarefree parts.

The programs for A347780, there is no canonical definition to state claims against.
-/

/-! ## A347780.P8146058162844104799

`A338555(A347760(n))`
-/

namespace A347780.P8146058162844104799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338555 (A347760 n).toNat

end

end A347780.P8146058162844104799

/-! ## A347780.P10119690112681842500

`A374632(n)+A374630(A115981(n))`
-/

namespace A347780.P10119690112681842500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374632 n + A374630 (A115981 n).toNat

end

end A347780.P10119690112681842500

/-! ## A347780.P5967547148721905355

`A374764(n)+A244966(A374764(n))`
-/

namespace A347780.P5967547148721905355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374764 n + A244966 (A374764 n).toNat

end

end A347780.P5967547148721905355

/-! ## A347780.P965705105870320393

`A347761(n)-A004198(A056570(n))`
-/

namespace A347780.P965705105870320393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347761 n - A004198 (A056570 n).toNat

end

end A347780.P965705105870320393

/-! ## A347780.P14434201507001644294

`A003241(n+1)-A169673(A006012(n))`
-/

namespace A347780.P14434201507001644294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003241 (n + 1) - A169673 (A006012 n).toNat

end

end A347780.P14434201507001644294

/-!
# A347782: Domination number of the n-tetrahedral (Johnson) graph.

The programs for A347782, there is no canonical definition to state claims against.
-/

/-! ## A347782.P7448113043378564093

`A271488(ceil(n/2))+n+1`
-/

namespace A347782.P7448113043378564093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271488 ⌈(n : ℚ) / 2⌉.toNat + (n + 1 : ℤ)

end

end A347782.P7448113043378564093

/-! ## A347782.P5840032969081222192

`A022293(a(n-2)+1)` with `a(0)=2, a(1)=4, a(2)=5`
-/

namespace A347782.P5840032969081222192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 5] fun n a =>
  A022293 (a (n - 2) + 1).toNat

end

end A347782.P5840032969081222192

/-! ## A347782.P13031297546146519863

`A173244(or(1, n+3))+1+n`
-/

namespace A347782.P13031297546146519863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173244 (Nat.lor 1 (n + 3)) + 1 + (n : ℤ)

end

end A347782.P13031297546146519863

/-! ## A347782.P11188157952482172742

`A018117(or(1, n+1)+5)+n`
-/

namespace A347782.P11188157952482172742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018117 (Nat.lor 1 (n + 1) + 5) + (n : ℤ)

end

end A347782.P11188157952482172742

/-! ## A347782.P5497963373387784090

`∑[C(floor(n/3), A025480(n))+1]`
-/

namespace A347782.P5497963373387784090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(n : ℚ) / 3⌋.toNat (A025480 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347782.P5497963373387784090

/-!
# A347783: Number of compositions (ordered partitions) of n into at most 6 squarefree parts.

The programs for A347783, there is no canonical definition to state claims against.
-/

/-! ## A347783.P3448312415731702745

`A194319(A349185(n))`
-/

namespace A347783.P3448312415731702745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194319 (A349185 n).toNat

end

end A347783.P3448312415731702745

/-! ## A347783.P2035623898591527529

`A345918(A213709(n))`
-/

namespace A347783.P2035623898591527529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345918 (A213709 n).toNat

end

end A347783.P2035623898591527529

/-! ## A347783.P12763258711463033699

`A005374(∑[A320921(n)])`
-/

namespace A347783.P12763258711463033699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A347783.P12763258711463033699

/-! ## A347783.P6904217076494364603

`A194295(A184436(n+1))`
-/

namespace A347783.P6904217076494364603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194295 (A184436 (n + 1)).toNat

end

end A347783.P6904217076494364603

/-! ## A347783.P16328363742132904506

`A336922(A124551(n))+A128695(n)`
-/

namespace A347783.P16328363742132904506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336922 (A124551 n).toNat + A128695 n

end

end A347783.P16328363742132904506

/-!
# A347784: Number of compositions (ordered partitions) of n into at most 3 powers of 2.

The programs for A347784, there is no canonical definition to state claims against.
-/

/-! ## A347784.P10131296248411526334

`A347785(n)-A151760(n)`
-/

namespace A347784.P10131296248411526334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347785 n - A151760 n

end

end A347784.P10131296248411526334

/-! ## A347784.P6394662262251948705

`A347785(n)+A057428(n)*A151760(n)`
-/

namespace A347784.P6394662262251948705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347785 n + A057428 n * A151760 n

end

end A347784.P6394662262251948705

/-! ## A347784.P11766707515623467052

`A347785(n)-A073265(A253145(n)+6+n)`
-/

namespace A347784.P11766707515623467052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347785 n - A073265 (A253145 n + 6 + (n : ℤ)).toNat

end

end A347784.P11766707515623467052

/-! ## A347784.P1025376188686863112

`A347785(n)-A073265(A167614(n+1)+A057427(n))`
-/

namespace A347784.P1025376188686863112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347785 n - A073265 (A167614 (n + 1) + A057427 n).toNat

end

end A347784.P1025376188686863112

/-! ## A347784.P1093517077863833197

`A347785(n)-A073265(A167614(n+1)-A057428(n))`
-/

namespace A347784.P1093517077863833197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347785 n - A073265 (A167614 (n + 1) - A057428 n).toNat

end

end A347784.P1093517077863833197

/-! ## A347784.P6824695014603111857

`A347786(n)-(A151761(n)+A151760(n))`
-/

namespace A347784.P6824695014603111857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347786 n - (A151761 n + A151760 n)

end

end A347784.P6824695014603111857

/-!
# A347785: Number of compositions (ordered partitions) of n into at most 4 powers of 2.

The programs for A347785, there is no canonical definition to state claims against.
-/

/-! ## A347785.P18348397936627829629

`A347784(n)+A151760(n)`
-/

namespace A347785.P18348397936627829629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347784 n + A151760 n

end

end A347785.P18348397936627829629

/-! ## A347785.P7308868075616734725

`A347784(n)-A057428(n)*A151760(n)`
-/

namespace A347785.P7308868075616734725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347784 n - A057428 n * A151760 n

end

end A347785.P7308868075616734725

/-! ## A347785.P13810931723554217123

`A347784(n)+A073265(A253145(n)+6+n)`
-/

namespace A347785.P13810931723554217123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347784 n + A073265 (A253145 n + 6 + (n : ℤ)).toNat

end

end A347785.P13810931723554217123

/-! ## A347785.P6639439818019397018

`A347784(n)+A073265(A167614(n+1)+A057427(n))`
-/

namespace A347785.P6639439818019397018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347784 n + A073265 (A167614 (n + 1) + A057427 n).toNat

end

end A347785.P6639439818019397018

/-! ## A347785.P14666019101858735401

`A347784(n)+A073265(A167614(n+1)-A057428(n))`
-/

namespace A347785.P14666019101858735401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347784 n + A073265 (A167614 (n + 1) - A057428 n).toNat

end

end A347785.P14666019101858735401

/-! ## A347785.P13232932966002395492

`A347784(n)+A073265(A167614(n+1)+A057428(n)²)`
-/

namespace A347785.P13232932966002395492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347784 n + A073265 (A167614 (n + 1) + A057428 n ^ 2).toNat

end

end A347785.P13232932966002395492

/-! ## A347785.P2528673682627316309

`A347786(n)-A151761(n)`
-/

namespace A347785.P2528673682627316309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347786 n - A151761 n

end

end A347785.P2528673682627316309

/-! ## A347785.P5418195536896364190

`A347786(n)-A073265(A167499(n+2))`
-/

namespace A347785.P5418195536896364190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347786 n - A073265 (A167499 (n + 2)).toNat

end

end A347785.P5418195536896364190

/-! ## A347785.P5620211413505308299

`A347786(n)+A057428(n)*A151761(n)`
-/

namespace A347785.P5620211413505308299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347786 n + A057428 n * A151761 n

end

end A347785.P5620211413505308299

/-! ## A347785.P2385831705241955989

`A347787(n)-(A151762(n)+A151761(n))`
-/

namespace A347785.P2385831705241955989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347787 n - (A151762 n + A151761 n)

end

end A347785.P2385831705241955989

/-!
# A347786: Number of compositions (ordered partitions) of n into at most 5 powers of 2.

The programs for A347786, there is no canonical definition to state claims against.
-/

/-! ## A347786.P6110579582950989860

`A347785(n)+A151761(n)`
-/

namespace A347786.P6110579582950989860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347785 n + A151761 n

end

end A347786.P6110579582950989860

/-! ## A347786.P6270866507092167685

`A347785(n)+A073265(A167499(n+2))`
-/

namespace A347786.P6270866507092167685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347785 n + A073265 (A167499 (n + 2)).toNat

end

end A347786.P6270866507092167685

/-! ## A347786.P8656596508342872013

`A151760(n)+A347784(n)+A151761(n)`
-/

namespace A347786.P8656596508342872013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151760 n + (A347784 n + A151761 n)

end

end A347786.P8656596508342872013

/-! ## A347786.P9803431410849760156

`A347785(n)-A057428(n)*A151761(n)`
-/

namespace A347786.P9803431410849760156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347785 n - A057428 n * A151761 n

end

end A347786.P9803431410849760156

/-! ## A347786.P7872363595954746953

`A347785(n)+A073265(Δ[A008778(n)]+7)`
-/

namespace A347786.P7872363595954746953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347785 n + A073265 (f1 (n + 1) - f1 n + 7).toNat

end

end A347786.P7872363595954746953

/-! ## A347786.P15353947342774791647

`A073265(A000124(n+3)+4)+A347784(n)+A151760(n)`
-/

namespace A347786.P15353947342774791647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073265 (A000124 (n + 3) + 4).toNat + (A347784 n + A151760 n)

end

end A347786.P15353947342774791647

/-! ## A347786.P5932390973008672504

`A347787(n)-A151762(n)`
-/

namespace A347786.P5932390973008672504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347787 n - A151762 n

end

end A347786.P5932390973008672504

/-! ## A347786.P5943730436071729073

`A347787(n)+A057428(n)*A151762(n)`
-/

namespace A347786.P5943730436071729073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347787 n + A057428 n * A151762 n

end

end A347786.P5943730436071729073

/-!
# A347787: Number of compositions (ordered partitions) of n into at most 6 powers of 2.

The programs for A347787, there is no canonical definition to state claims against.
-/

/-! ## A347787.P15227612188131320777

`A347786(n)+A151762(n)`
-/

namespace A347787.P15227612188131320777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347786 n + A151762 n

end

end A347787.P15227612188131320777

/-! ## A347787.P5302377302857072085

`A347786(n)+A073265(A155212(n)+14)`
-/

namespace A347787.P5302377302857072085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347786 n + A073265 (A155212 n + 14).toNat

end

end A347787.P5302377302857072085

/-! ## A347787.P4153682344257752034

`A151761(n)+A347785(n)+A151762(n)`
-/

namespace A347787.P4153682344257752034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151761 n + (A347785 n + A151762 n)

end

end A347787.P4153682344257752034

/-! ## A347787.P11355191769353988729

`A347786(n)-A057428(n)*A151762(n)`
-/

namespace A347787.P11355191769353988729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347786 n - A057428 n * A151762 n

end

end A347787.P11355191769353988729

/-! ## A347787.P7017277137891289790

`A347786(n)+A073265(A000124(n+4)+5)`
-/

namespace A347787.P7017277137891289790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347786 n + A073265 (A000124 (n + 4) + 5).toNat

end

end A347787.P7017277137891289790

/-! ## A347787.P6916733661341362055

`A151762(n)+A347785(n)+A073265(A167499(n+2))`
-/

namespace A347787.P6916733661341362055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151762 n + (A347785 n + A073265 (A167499 (n + 2)).toNat)

end

end A347787.P6916733661341362055

/-! ## A347787.P9735960108092555614

`A151762(n)+A151760(n)+A347784(n)+A151761(n)`
-/

namespace A347787.P9735960108092555614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151762 n + (A151760 n + (A347784 n + A151761 n))

end

end A347787.P9735960108092555614

/-! ## A347787.P9089995253634765158

`A347786(n)+A073265(A008486(n+5)+A000217(n+1))`
-/

namespace A347787.P9089995253634765158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347786 n + A073265 (A008486 (n + 5) + A000217 (n + 1)).toNat

end

end A347787.P9089995253634765158

/-!
# A347788: Number of compositions (ordered partitions) of n into at most 2 nonprime parts.

The programs for A347788, there is no canonical definition to state claims against.
-/

/-! ## A347788.P17109763879012548282

`A118777(n)+A347739(n)-1`
-/

namespace A347788.P17109763879012548282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118777 n + (A347739 n - 1)

end

end A347788.P17109763879012548282

/-! ## A347788.P8108480248599290950

`A118777(n)+A023443(A347739(n))`
-/

namespace A347788.P8108480248599290950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118777 n + A023443 (A347739 n).toNat

end

end A347788.P8108480248599290950

/-! ## A347788.P10232551140480196385

`A033619(A347739(n)+A118777(n))`
-/

namespace A347788.P10232551140480196385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (A347739 n + A118777 n).toNat

end

end A347788.P10232551140480196385

/-! ## A347788.P8452583888364368636

`A136602(A347739(n)+A118777(n))`
-/

namespace A347788.P8452583888364368636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136602 (A347739 n + A118777 n).toNat

end

end A347788.P8452583888364368636

/-! ## A347788.P3378794282964420725

`A008683(A007918(n))+A347739(n)+A118777(n)`
-/

namespace A347788.P3378794282964420725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007918 n).toNat + (A347739 n + A118777 n)

end

end A347788.P3378794282964420725

/-! ## A347788.P12333231473881558598

`A008683(A005383(n+1))+A347739(n)+A118777(n)`
-/

namespace A347788.P12333231473881558598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005383 (n + 1)).toNat + (A347739 n + A118777 n)

end

end A347788.P12333231473881558598

/-! ## A347788.P16116171898323470580

`A008683(A006567(n+1))+A347739(n)+A118777(n)`
-/

namespace A347788.P16116171898323470580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006567 (n + 1)).toNat + (A347739 n + A118777 n)

end

end A347788.P16116171898323470580

/-! ## A347788.P4940479513587668694

`A008683(A014752(n+1))+A347739(n)+A118777(n)`
-/

namespace A347788.P4940479513587668694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A014752 (n + 1)).toNat + (A347739 n + A118777 n)

end

end A347788.P4940479513587668694

/-! ## A347788.P11171986769262316658

`A008683(A019546(n+1))+A347739(n)+A118777(n)`
-/

namespace A347788.P11171986769262316658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A019546 (n + 1)).toNat + (A347739 n + A118777 n)

end

end A347788.P11171986769262316658

/-! ## A347788.P17856142766917649628

`A008683(A031924(n+1))+A347739(n)+A118777(n)`
-/

namespace A347788.P17856142766917649628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A031924 (n + 1)).toNat + (A347739 n + A118777 n)

end

end A347788.P17856142766917649628

/-!
# A347789: a(n) is the number of times that only 2 pegs have disks on them during the optimal solution to a Towers of Hanoi problem with n disks.

The programs for A347789, the canonical program `A347789.P16837584105902591356` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347789 has offset 1).

The definition of A347789 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A347789.P15734752240979385133

`ogf((2x+2x^2)/(1-x-2x^2+2x^3))`
-/

namespace A347789.P15734752240979385133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 2] [1, -1, -2, 2] n

end

end A347789.P15734752240979385133

namespace A347789

/-- `ogf((2x+2x^2)/(1-x-2x^2+2x^3))` -/
def P15734752240979385133.Spec : Prop :=
  ∀ n, P15734752240979385133.a n = A347789 (n + 1)

end A347789

/-! ## A347789.P16837584105902591356

`2*(2+a(n-2))` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A347789

/-- `2*(2+a(n-2))` -/
def P16837584105902591356.Spec : Prop :=
  ∀ n, (P16837584105902591356.a n : ℤ) = A347789 (n + 1)

theorem P16837584105902591356.correct : P16837584105902591356.Spec := by
  intro n
  simp only [A347789, Nat.add_sub_cancel]

end A347789

/-! ## A347789.P15374244689122870982

`(3+(n+1)%2)*2^floor((n+1)/2)-4`
-/

namespace A347789.P15374244689122870982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 + (n + 1) % 2 : ℕ) : ℚ) * (2 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ) - 4

end

end A347789.P15374244689122870982

namespace A347789

/-- `(3+(n+1)%2)*2^floor((n+1)/2)-4` -/
def P15374244689122870982.Spec : Prop :=
  ∀ n, P15374244689122870982.a n = (A347789 (n + 1) : ℚ)

end A347789

/-! ## A347789.P16511751162098622609

`A027383(n+1)-2`
-/

namespace A347789.P16511751162098622609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 (n + 1) - 2

end

end A347789.P16511751162098622609

namespace A347789

/-- `A027383(n+1)-2` -/
def P16511751162098622609.Spec : Prop :=
  ∀ n, P16511751162098622609.a n = A347789 (n + 1)

end A347789

/-! ## A347789.P12464802450559400850

`∑[2^ceil(n/2)]-1`
-/

namespace A347789.P12464802450559400850
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A347789.P12464802450559400850

namespace A347789

/-- `∑[2^ceil(n/2)]-1` -/
def P12464802450559400850.Spec : Prop :=
  ∀ n, P12464802450559400850.a n = (A347789 (n + 1) : ℚ)

end A347789

/-! ## A347789.P552055379619227836

`xor(1, ∑[2^ceil(n/2)])`
-/

namespace A347789.P552055379619227836
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A347789.P552055379619227836

namespace A347789

/-- `xor(1, ∑[2^ceil(n/2)])` -/
def P552055379619227836.Spec : Prop :=
  ∀ n, P552055379619227836.a n = A347789 (n + 1)

end A347789

/-! ## A347789.P9315957150939520934

`∑[ogf((2x+2x^2)/(1-2x^2))]`
-/

namespace A347789.P9315957150939520934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 2] [1, 0, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347789.P9315957150939520934

namespace A347789

/-- `∑[ogf((2x+2x^2)/(1-2x^2))]` -/
def P9315957150939520934.Spec : Prop :=
  ∀ n, P9315957150939520934.a n = A347789 (n + 1)

end A347789

/-! ## A347789.P5296774089442844926

`∑[2*a(n-2)]` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A347789.P5296774089442844926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347789.P5296774089442844926

namespace A347789

/-- `∑[2*a(n-2)]` -/
def P5296774089442844926.Spec : Prop :=
  ∀ n, (P5296774089442844926.a n : ℤ) = A347789 (n + 1)

end A347789

/-! ## A347789.P7552909671000373506

`(a(n-2)+2)/(1-1/2)` with `a(0)=0, a(1)=2`
-/

namespace A347789.P7552909671000373506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  (a (n - 2) + 2) / (1 - (1 : ℚ) / 2)

end

end A347789.P7552909671000373506

namespace A347789

/-- `(a(n-2)+2)/(1-1/2)` -/
def P7552909671000373506.Spec : Prop :=
  ∀ n, P7552909671000373506.a n = (A347789 (n + 1) : ℚ)

end A347789

/-! ## A347789.P3299649395445508173

`4*(2-(2-a(n-2))/2)` with `a(0)=0, a(1)=2`
-/

namespace A347789.P3299649395445508173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  4 * (2 - (2 - a (n - 2)) / 2)

end

end A347789.P3299649395445508173

namespace A347789

/-- `4*(2-(2-a(n-2))/2)` -/
def P3299649395445508173.Spec : Prop :=
  ∀ n, P3299649395445508173.a n = (A347789 (n + 1) : ℚ)

end A347789

/-! ## A347789.P6124405555718444544

`abs(a(n-2)+a(n-2)+4)` with `a(0)=0, a(1)=2`
-/

namespace A347789.P6124405555718444544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 2) + (a (n - 2) + 4)

end

end A347789.P6124405555718444544

namespace A347789

/-- `abs(a(n-2)+a(n-2)+4)` -/
def P6124405555718444544.Spec : Prop :=
  ∀ n, (P6124405555718444544.a n : ℤ) = A347789 (n + 1)

theorem P6124405555718444544.correct : P6124405555718444544.Spec := by
  intro n
  simp only [A347789, Nat.add_sub_cancel, A347789.P6124405555718444544.a, A347789.P16837584105902591356.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A347789

/-! ## A347789.P12290883993994234931

`floor(a(n-2)+a(n-2)+4)` with `a(0)=0, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A347789.P12290883993994234931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 2) + (a (n - 2) + 4)

end

end A347789.P12290883993994234931

namespace A347789

/-- `floor(a(n-2)+a(n-2)+4)` -/
def P12290883993994234931.Spec : Prop :=
  ∀ n, (P12290883993994234931.a n : ℤ) = A347789 (n + 1)

theorem P12290883993994234931.correct : P12290883993994234931.Spec := by
  intro n
  simp only [A347789, Nat.add_sub_cancel, A347789.P12290883993994234931.a, A347789.P16837584105902591356.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A347789

/-! ## A347789.P6379023539545354416

`ceil(a(n-2)+a(n-2)+4)` with `a(0)=0, a(1)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A347789.P6379023539545354416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 2) + (a (n - 2) + 4)

end

end A347789.P6379023539545354416

namespace A347789

/-- `ceil(a(n-2)+a(n-2)+4)` -/
def P6379023539545354416.Spec : Prop :=
  ∀ n, (P6379023539545354416.a n : ℤ) = A347789 (n + 1)

theorem P6379023539545354416.correct : P6379023539545354416.Spec := by
  intro n
  simp only [A347789, Nat.add_sub_cancel, A347789.P6379023539545354416.a, A347789.P16837584105902591356.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A347789

/-! ## A347789.P18342115679744082932

`round(a(n-2)+a(n-2)+4)` with `a(0)=0, a(1)=2`

`round` is left out, it is the identity on integers.
-/

namespace A347789.P18342115679744082932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 2) + (a (n - 2) + 4)

end

end A347789.P18342115679744082932

namespace A347789

/-- `round(a(n-2)+a(n-2)+4)` -/
def P18342115679744082932.Spec : Prop :=
  ∀ n, (P18342115679744082932.a n : ℤ) = A347789 (n + 1)

theorem P18342115679744082932.correct : P18342115679744082932.Spec := by
  intro n
  simp only [A347789, Nat.add_sub_cancel, A347789.P18342115679744082932.a, A347789.P16837584105902591356.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A347789

/-! ## A347789.P14690024275501616741

`2*(2-(a(n-2)-2*a(n-2)))` with `a(0)=0, a(1)=2`
-/

namespace A347789.P14690024275501616741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 * (2 - (a (n - 2) - 2 * a (n - 2)))

end

end A347789.P14690024275501616741

namespace A347789

/-- `2*(2-(a(n-2)-2*a(n-2)))` -/
def P14690024275501616741.Spec : Prop :=
  ∀ n, P14690024275501616741.a n = A347789 (n + 1)

end A347789

/-! ## A347789.P18080765779154865609

`gcd(a(n-2)+a(n-2)+4, a(n-1)%2)` with `a(0)=0, a(1)=2`
-/

namespace A347789.P18080765779154865609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  Nat.gcd (a (n - 2) + (a (n - 2) + 4)) (a (n - 1) % 2)

end

end A347789.P18080765779154865609

namespace A347789

/-- `gcd(a(n-2)+a(n-2)+4, a(n-1)%2)` -/
def P18080765779154865609.Spec : Prop :=
  ∀ n, (P18080765779154865609.a n : ℤ) = A347789 (n + 1)

end A347789

/-! ## A347789.P13947366118755374565

`abs(Δ[Δ[A094024(n)]])`
-/

namespace A347789.P13947366118755374565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094024 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A347789.P13947366118755374565

namespace A347789

/-- `abs(Δ[Δ[A094024(n)]])` -/
def P13947366118755374565.Spec : Prop :=
  ∀ n, P13947366118755374565.a n = A347789 (n + 1)

end A347789

/-! ## A347789.P16834865662871365532

`2*(A052955(n)-1)`
-/

namespace A347789.P16834865662871365532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A052955 n - 1)

end

end A347789.P16834865662871365532

namespace A347789

/-- `2*(A052955(n)-1)` -/
def P16834865662871365532.Spec : Prop :=
  ∀ n, P16834865662871365532.a n = A347789 (n + 1)

end A347789

/-! ## A347789.P4608424206659577907

`abs(3-A052955(n+2))`
-/

namespace A347789.P4608424206659577907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A052955 (n + 2)|

end

end A347789.P4608424206659577907

namespace A347789

/-- `abs(3-A052955(n+2))` -/
def P4608424206659577907.Spec : Prop :=
  ∀ n, P4608424206659577907.a n = A347789 (n + 1)

end A347789

/-! ## A347789.P1090691210993213462

`2*(A164090(n+1)-2)`
-/

namespace A347789.P1090691210993213462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A164090 (n + 1) - 2)

end

end A347789.P1090691210993213462

namespace A347789

/-- `2*(A164090(n+1)-2)` -/
def P1090691210993213462.Spec : Prop :=
  ∀ n, P1090691210993213462.a n = A347789 (n + 1)

end A347789

/-!
# A347791: Inventory sequence using prime divisors (with multiplicity): Record the number of terms thus far which are divisible by every prime, then the number of terms thus far not divisible by any prime, then the number divisible (once) by a single prime, then 2 (including with multiplicity), then 3 etc until a zero is recorded. Repeat after every zero term.

The programs for A347791, there is no canonical definition to state claims against.
-/

/-! ## A347791.P14472832057723827409

`A345730(n)+A185284(A213673(n))`
-/

namespace A347791.P14472832057723827409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345730 n + A185284 (A213673 n).toNat

end

end A347791.P14472832057723827409

/-! ## A347791.P5884227751067201125

`A345730(n)+A209229(A167614(n+1)²)`
-/

namespace A347791.P5884227751067201125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345730 n + A209229 (A167614 (n + 1) ^ 2).toNat

end

end A347791.P5884227751067201125

/-! ## A347791.P1943130521107972064

`A345730(n)+A024326(A193648(3*n+1))`
-/

namespace A347791.P1943130521107972064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345730 n + A024326 (A193648 (3 * n + 1)).toNat

end

end A347791.P1943130521107972064

/-!
# A347792: Beatty sequence for 2^(2/3).

The programs for A347792, the canonical program `A347792.P12031686185813258433` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347792 has offset 0).

The definition of A347792 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347792.P12031686185813258433

`floor(n*root(4, 3))`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A347792

/-- `floor(n*root(4, 3))` -/
def P12031686185813258433.Spec : Prop :=
  ∀ n, P12031686185813258433.a n = A347792 n

theorem P12031686185813258433.correct : P12031686185813258433.Spec := by
  intro n
  simp only [A347792]

end A347792

/-! ## A347792.P7204024365168277573

`A000196(A322530(n+1)+A195142(n))`
-/

namespace A347792.P7204024365168277573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A322530 (n + 1) + A195142 n).toNat

end

end A347792.P7204024365168277573

namespace A347792

/-- `A000196(A322530(n+1)+A195142(n))` -/
def P7204024365168277573.Spec : Prop :=
  ∀ n, P7204024365168277573.a n = A347792 n

end A347792

/-! ## A347792.P17942214182644474503

`A172272(n)-A240328(A107187(2*(n+2)))`
-/

namespace A347792.P17942214182644474503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172272 n - A240328 (A107187 (2 * (n + 2))).toNat

end

end A347792.P17942214182644474503

namespace A347792

/-- `A172272(n)-A240328(A107187(2*(n+2)))` -/
def P17942214182644474503.Spec : Prop :=
  ∀ n, P17942214182644474503.a n = A347792 n

end A347792

/-! ## A347792.P11863423702263767151

`comp[A003056(∑[A372780(3*(n+1))])]`
-/

namespace A347792.P11863423702263767151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372780 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A347792.P11863423702263767151

namespace A347792

/-- `comp[A003056(∑[A372780(3*(n+1))])]` -/
def P11863423702263767151.Spec : Prop :=
  ∀ n, (P11863423702263767151.a n : ℤ) = A347792 n

end A347792

/-!
# A347793: Intersection of Beatty sequences for 2^(1/3) and 2^(2/3).

The programs for A347793, there is no canonical definition to state claims against.
-/

/-! ## A347793.P3327424204853322451

`∩[floor(n*root(2, 3)), A347792(n)]`
-/

namespace A347793.P3327424204853322451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (2 : ℝ) ^ (1 / (3 : ℝ))⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347792 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347793.P3327424204853322451

/-! ## A347793.P14838863013953831420

`∩[A347792(n), A038129(n)]`
-/

namespace A347793.P14838863013953831420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347792 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038129 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347793.P14838863013953831420

/-! ## A347793.P537314058447295637

`lt[A053735(A325623(2*n+1)), A334097(2*n+3)]`
-/

namespace A347793.P537314058447295637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A325623 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A347793.P537314058447295637

/-! ## A347793.P17544931512755397752

`eq[1, A118249(A288345(n))]`
-/

namespace A347793.P17544931512755397752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118249 (A288345 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347793.P17544931512755397752

/-! ## A347793.P13011985194861661137

`eq[Δ[A156301(n)], A032542(n+1)]`
-/

namespace A347793.P13011985194861661137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032542 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A347793.P13011985194861661137

/-!
# A347794: The "Look and Say" version of the Inventory sequence A342585.

The programs for A347794, there is no canonical definition to state claims against.
-/

/-! ## A347794.P12346763343966181852

`A151552(A028809(n+1))%A151552(A038305(n))`
-/

namespace A347794.P12346763343966181852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151552 (A028809 (n + 1)).toNat) (A151552 (A038305 n).toNat)

end

end A347794.P12346763343966181852

/-! ## A347794.P8959285385621271653

`A151552(A028812(n+1))%A151552(A038305(n))`
-/

namespace A347794.P8959285385621271653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151552 (A028812 (n + 1)).toNat) (A151552 (A038305 n).toNat)

end

end A347794.P8959285385621271653

/-! ## A347794.P16138457793187981676

`A151552(A028813(n+1))%A151552(A038305(n))`
-/

namespace A347794.P16138457793187981676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151552 (A028813 (n + 1)).toNat) (A151552 (A038305 n).toNat)

end

end A347794.P16138457793187981676

/-! ## A347794.P14944947229815994409

`A246270(or(A007949(n+1), A019435(n+1)))`
-/

namespace A347794.P14944947229815994409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246270 (Int.lor (A007949 (n + 1)) (A019435 (n + 1))).toNat

end

end A347794.P14944947229815994409

/-! ## A347794.P11019369004064249119

`A321201(n+5)+A010815(A196889(n))`
-/

namespace A347794.P11019369004064249119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321201 (n + 5) + A010815 (A196889 n).toNat

end

end A347794.P11019369004064249119

/-!
# A347799: Number of compositions (ordered partitions) of n into at most 6 nonprime parts.

The programs for A347799, there is no canonical definition to state claims against.
-/

/-! ## A347799.P12547380830879511497

`A166493(A109543(n+1))`
-/

namespace A347799.P12547380830879511497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166493 (A109543 (n + 1)).toNat

end

end A347799.P12547380830879511497

/-! ## A347799.P14722986447194797914

`A166493(A226498(n+1))`
-/

namespace A347799.P14722986447194797914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166493 (A226498 (n + 1)).toNat

end

end A347799.P14722986447194797914

/-! ## A347799.P12755374974865918557

`A374688(n)-A007814(A221925(n+1))`
-/

namespace A347799.P12755374974865918557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374688 n - A007814 (A221925 (n + 1)).toNat

end

end A347799.P12755374974865918557

