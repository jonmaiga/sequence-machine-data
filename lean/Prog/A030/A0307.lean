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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
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

/-!
# A030700: Decimal expansion of 3^n contains no zeros (probably finite).

The programs for A030700, there is no canonical definition to state claims against.
-/

/-! ## A030700.P6721791539279732992

`lt[0, ∏{digits}[3^n, #]]`
-/

namespace A030700.P6721791539279732992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A030700.P6721791539279732992

/-! ## A030700.P12655023323157526

`record[A305933(n)]`
-/

namespace A030700.P12655023323157526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305933 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030700.P12655023323157526

/-! ## A030700.P8211566801483172935

`eq[0, A305930(n)]`
-/

namespace A030700.P8211566801483172935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305930 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030700.P8211566801483172935

/-! ## A030700.P8229235032063480047

`val(A238939(n+1), 3)`
-/

namespace A030700.P8229235032063480047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A238939 (n + 1)).toNat 3

end

end A030700.P8229235032063480047

/-! ## A030700.P5784697115924504572

`A305933(comp[(4*n+5)²])`
-/

namespace A030700.P5784697115924504572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n + 5) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305933 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A030700.P5784697115924504572

/-!
# A030701: Decimal expansion of 4^n contains no zeros (probably finite).

The programs for A030701, there is no canonical definition to state claims against.
-/

/-! ## A030701.P9040759305023179089

`lt[0, ∏{digits}[4^n, #]]`
-/

namespace A030701.P9040759305023179089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A030701.P9040759305023179089

/-! ## A030701.P17891762431662705236

`record[A305924(n)]`
-/

namespace A030701.P17891762431662705236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030701.P17891762431662705236

/-! ## A030701.P2146757530256531338

`val(A238940(n+1), 4)`
-/

namespace A030701.P2146757530256531338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A238940 (n + 1)).toNat 4

end

end A030701.P2146757530256531338

/-! ## A030701.P4610993810148029766

`eq[0, A027870(2*n)]`
-/

namespace A030701.P4610993810148029766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027870 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030701.P4610993810148029766

/-! ## A030701.P2169752994219522261

`eq[0, A224782(2*n)]`
-/

namespace A030701.P2169752994219522261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224782 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030701.P2169752994219522261

/-!
# A030702: Decimal expansion of 6^n contains no zeros (probably finite).

The programs for A030702, there is no canonical definition to state claims against.
-/

/-! ## A030702.P16810438242961191472

`record[A305926(n)]`
-/

namespace A030702.P16810438242961191472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305926 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030702.P16810438242961191472

/-! ## A030702.P7821708013530485832

`val(A238936(n+1), 2)`
-/

namespace A030702.P7821708013530485832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A238936 (n + 1)).toNat 2

end

end A030702.P7821708013530485832

/-! ## A030702.P9519525377647906232

`A305926(comp[23*2^n-1])`
-/

namespace A030702.P9519525377647906232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (23 * 2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305926 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A030702.P9519525377647906232

/-! ## A030702.P17464640979366254059

`A258069(A305926(n)+1)`
-/

namespace A030702.P17464640979366254059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258069 (A305926 n + 1).toNat

end

end A030702.P17464640979366254059

/-! ## A030702.P16265400703574353098

`A305926(n)+A011728(n)`
-/

namespace A030702.P16265400703574353098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305926 n + A011728 n

end

end A030702.P16265400703574353098

/-!
# A030703: Decimal expansion of 7^n contains no zeros (probably finite).

The programs for A030703, there is no canonical definition to state claims against.
-/

/-! ## A030703.P10621344114033808854

`record[A305927(n)]`
-/

namespace A030703.P10621344114033808854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030703.P10621344114033808854

/-! ## A030703.P12533453994833057009

`A305927(∑{digits}[n, #])`
-/

namespace A030703.P12533453994833057009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305927 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A030703.P12533453994833057009

/-! ## A030703.P16573264451883035766

`A305927(∏{digits}[n, #])`
-/

namespace A030703.P16573264451883035766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305927 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A030703.P16573264451883035766

/-! ## A030703.P2880117917513621194

`val(A195908(n+1), 7)`
-/

namespace A030703.P2880117917513621194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A195908 (n + 1)).toNat 7

end

end A030703.P2880117917513621194

/-! ## A030703.P12615589327675559702

`A305927(comp[31*n]-1)`
-/

namespace A030703.P12615589327675559702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305927 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - 1)

end

end A030703.P12615589327675559702

/-!
# A030704: Numbers k such that the decimal expansion of 8^k contains no zeros (probably finite).

The programs for A030704, there is no canonical definition to state claims against.
-/

/-! ## A030704.P3815268790052223722

`record[A305928(n)]`
-/

namespace A030704.P3815268790052223722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030704.P3815268790052223722

/-! ## A030704.P11333078188991252896

`comp[A062525(10*n)]`
-/

namespace A030704.P11333078188991252896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062525 (10 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A030704.P11333078188991252896

/-! ## A030704.P14612035223249271938

`comp[A063571(10*n)]`
-/

namespace A030704.P14612035223249271938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063571 (10 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A030704.P14612035223249271938

/-! ## A030704.P2916131223886764585

`val(A245852(n+1), 8)`
-/

namespace A030704.P2916131223886764585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A245852 (n + 1)).toNat 8

end

end A030704.P2916131223886764585

/-! ## A030704.P15153952097304989441

`eq[0, A027870(3*n)]`
-/

namespace A030704.P15153952097304989441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027870 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030704.P15153952097304989441

/-!
# A030705: Numbers k such that the decimal expansion of 9^k contains no zeros (probably finite).

The programs for A030705, there is no canonical definition to state claims against.
-/

/-! ## A030705.P6746859360684183570

`lt[0, ∏{digits}[9^n, #]]`
-/

namespace A030705.P6746859360684183570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A030705.P6746859360684183570

/-! ## A030705.P14189804134265613039

`comp[xor(n+7, ceil(log2(n+3)))]`
-/

namespace A030705.P14189804134265613039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 7 : ℤ) ⌈Real.logb 2 (n + 3 : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A030705.P14189804134265613039

/-! ## A030705.P7445278275921129155

`record[A305929(n)]`
-/

namespace A030705.P7445278275921129155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030705.P7445278275921129155

/-! ## A030705.P15129633942911675400

`A305929(char[15]+n)`
-/

namespace A030705.P15129633942911675400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305929 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A030705.P15129633942911675400

/-! ## A030705.P2403063361363516224

`val(A240945(n+1), 9)`
-/

namespace A030705.P2403063361363516224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A240945 (n + 1)).toNat 9

end

end A030705.P2403063361363516224

/-!
# A030706: Decimal expansion of 11^n contains no zeros (probably finite).

The programs for A030706, there is no canonical definition to state claims against.
-/

/-! ## A030706.P3277755143359677362

`A239015(comp[(4*n)²])`
-/

namespace A030706.P3277755143359677362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239015 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A030706.P3277755143359677362

/-! ## A030706.P8473982697612029087

`A032513(A239015(n+1))`
-/

namespace A030706.P8473982697612029087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032513 (A239015 (n + 1)).toNat

end

end A030706.P8473982697612029087

/-! ## A030706.P13386367526376318979

`∩[A239015(n+1), A032521(n)]`
-/

namespace A030706.P13386367526376318979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032521 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030706.P13386367526376318979

/-! ## A030706.P16677319092978758028

`record[A239015(n+1)%A154715(n)]`
-/

namespace A030706.P16677319092978758028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239015 (n + 1)) (A154715 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030706.P16677319092978758028

/-! ## A030706.P1488676900222072319

`A281462(n+1)+A239015(n+1)`
-/

namespace A030706.P1488676900222072319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281462 (n + 1) + A239015 (n + 1)

end

end A030706.P1488676900222072319

/-!
# A030707: The first list after the following procedure: starting with a list [1] and an empty list, repeatedly add the distinct values already in both lists in ascending order to the second list and add the corresponding frequencies of those values to the first list.

The programs for A030707, there is no canonical definition to state claims against.
-/

/-! ## A030707.P14740867618452294825

`A055187(abs(1-n)+n+1)`
-/

namespace A030707.P14740867618452294825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055187 (|1 - (n : ℤ)| + (n + 1 : ℤ)).toNat

end

end A030707.P14740867618452294825

/-! ## A030707.P9261381546254326413

`A055187(A004277(n))%(n+2)`
-/

namespace A030707.P9261381546254326413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055187 (A004277 n).toNat) (n + 2 : ℤ)

end

end A030707.P9261381546254326413

/-! ## A030707.P1853643566819848581

`A055187(A008486(n)-n)%(n+2)`
-/

namespace A030707.P1853643566819848581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055187 (A008486 n - (n : ℤ)).toNat) (n + 2 : ℤ)

end

end A030707.P1853643566819848581

/-! ## A030707.P15654685676508363240

`lcm(A033999(n), A055187(A004277(n)))`
-/

namespace A030707.P15654685676508363240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A055187 (A004277 n).toNat)

end

end A030707.P15654685676508363240

/-! ## A030707.P5100311250388663655

`or(A000007(n), A055187(A004277(n)))`
-/

namespace A030707.P5100311250388663655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A055187 (A004277 n).toNat)

end

end A030707.P5100311250388663655

/-! ## A030707.P656601573000584008

`A055187(A004277(n))+and(1, A133265(n))`
-/

namespace A030707.P656601573000584008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055187 (A004277 n).toNat + Int.land 1 (A133265 n)

end

end A030707.P656601573000584008

/-! ## A030707.P14943566147525184617

`or(A000007(n), A055187(A008486(n)-n))`
-/

namespace A030707.P14943566147525184617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A055187 (A008486 n - (n : ℤ)).toNat)

end

end A030707.P14943566147525184617

/-! ## A030707.P8449632731163700348

`A055187(record[xor(1, A131738(n))])%(n+2)`
-/

namespace A030707.P8449632731163700348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A131738 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055187 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (n + 2 : ℤ)

end

end A030707.P8449632731163700348

/-! ## A030707.P17459637924081614368

`A000034(2*n)*A055187(A004277(n))`
-/

namespace A030707.P17459637924081614368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A055187 (A004277 n).toNat

end

end A030707.P17459637924081614368

/-! ## A030707.P3963605596079569554

`A055187(A004277(n))+A007814(2*n+1)`
-/

namespace A030707.P3963605596079569554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055187 (A004277 n).toNat + A007814 (2 * n + 1)

end

end A030707.P3963605596079569554

/-! ## A030707.P5893321997960446245

`A055187(A004277(n))*A101872(A002144(n+1))`
-/

namespace A030707.P5893321997960446245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055187 (A004277 n).toNat * A101872 (A002144 (n + 1)).toNat

end

end A030707.P5893321997960446245

/-! ## A030707.P13260261832436829814

`A055187(A004277(n))+A008683(A001749(n+1))`
-/

namespace A030707.P13260261832436829814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055187 (A004277 n).toNat + A008683 (A001749 (n + 1)).toNat

end

end A030707.P13260261832436829814

/-!
# A030708: The second list after the following procedure: starting with a list [1] and an empty list, repeatedly add the distinct values already in both lists in ascending order to the second list and add the corresponding frequencies of those values to the first list.

The programs for A030708, there is no canonical definition to state claims against.
-/

/-! ## A030708.P14873145444083422784

`A055187(2*n+3)`
-/

namespace A030708.P14873145444083422784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055187 (2 * n + 3)

end

end A030708.P14873145444083422784

/-! ## A030708.P8691867287353840449

`A028310(A055187(Δ[(n+1)²]))`
-/

namespace A030708.P8691867287353840449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A055187 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A030708.P8691867287353840449

/-! ## A030708.P15006600898949561044

`A055187(A004273(n+2))%(n+2)`
-/

namespace A030708.P15006600898949561044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055187 (A004273 (n + 2)).toNat) (n + 2 : ℤ)

end

end A030708.P15006600898949561044

/-! ## A030708.P9679775562147155720

`A055187(Δ[(n+1)²])%A020739(n)`
-/

namespace A030708.P9679775562147155720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055187 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (A020739 n)

end

end A030708.P9679775562147155720

/-! ## A030708.P15907191861621732766

`or(A000007(n), A055187(Δ[(n+1)²]))`
-/

namespace A030708.P15907191861621732766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A055187 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A030708.P15907191861621732766

/-! ## A030708.P10712629574860488522

`A055187(Δ[(n+1)²])/A001222(A065151(n+2))`
-/

namespace A030708.P10712629574860488522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055187 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A001222 (A065151 (n + 2)).toNat : ℚ)

end

end A030708.P10712629574860488522

/-! ## A030708.P8728981365898863057

`A055187(Δ[(n+1)²])/A001222(A002476(n+1))`
-/

namespace A030708.P8728981365898863057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055187 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A001222 (A002476 (n + 1)).toNat : ℚ)

end

end A030708.P8728981365898863057

/-! ## A030708.P11002520638625626579

`A055187(Δ[(n+1)²])/A014963(A007620(n+1))`
-/

namespace A030708.P11002520638625626579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055187 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A014963 (A007620 (n + 1)).toNat : ℚ)

end

end A030708.P11002520638625626579

/-! ## A030708.P12392843169058875576

`A055187(Δ[(n+1)²])/A014963(A007621(n+1))`
-/

namespace A030708.P12392843169058875576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055187 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A014963 (A007621 (n + 1)).toNat : ℚ)

end

end A030708.P12392843169058875576

/-!
# A030709: Number of new terms at stage n in the formation of A030707.

The programs for A030709, there is no canonical definition to state claims against.
-/

/-! ## A030709.P2471692922959562810

`∑[A055172(n+1)]`
-/

namespace A030709.P2471692922959562810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030709.P2471692922959562810

/-! ## A030709.P5660079641032859215

`gcd(C(n, n²), Δ[A030712(n+1)])`
-/

namespace A030709.P5660079641032859215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030712 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose n (n ^ 2) : ℤ) (f1 (n + 1) - f1 n)

end

end A030709.P5660079641032859215

/-! ## A030709.P506627753479871237

`Δ[A030712(n+1)+A000007(n)]`
-/

namespace A030709.P506627753479871237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030712 (n + 1) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030709.P506627753479871237

/-! ## A030709.P15571383257531770990

`Δ[A054977(n)+A030712(n+1)]`
-/

namespace A030709.P15571383257531770990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + A030712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030709.P15571383257531770990

/-! ## A030709.P7861527212713913372

`Δ[A057428(n)+A030712(n+1)]`
-/

namespace A030709.P7861527212713913372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A030712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030709.P7861527212713913372

/-! ## A030709.P3205349941551984914

`Δ[A030712(n+1)-A057427(n)]`
-/

namespace A030709.P3205349941551984914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030712 (n + 1) - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030709.P3205349941551984914

/-! ## A030709.P7216184147210563089

`A030762(n+1)+1-A030712(n+1)`
-/

namespace A030709.P7216184147210563089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030762 (n + 1) + (1 - A030712 (n + 1))

end

end A030709.P7216184147210563089

/-! ## A030709.P17690465169191255134

`Δ[A030712(n+1)-and(1, A000040(n+1))]`
-/

namespace A030709.P17690465169191255134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030712 (n + 1) - Int.land 1 (A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030709.P17690465169191255134

/-! ## A030709.P13746015949701321182

`A014963(6*a(n-1))*Δ[A030712(n+1)]` with `a(0)=1`
-/

namespace A030709.P13746015949701321182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014963 (6 * a (n - 1)).toNat * (f1 (n + 1) - f1 n)

end

end A030709.P13746015949701321182

/-!
# A030711: Record values in A030707.

The programs for A030711, there is no canonical definition to state claims against.
-/

/-! ## A030711.P4539027436332999120

`record[A055173(n+1)]`
-/

namespace A030711.P4539027436332999120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030711.P4539027436332999120

/-!
# A030712: Positions of records in A030707.

The programs for A030712, there is no canonical definition to state claims against.
-/

/-! ## A030712.P5332243632023119989

`A030709(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A030712.P5332243632023119989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A030709 n + a (n - 1)

end

end A030712.P5332243632023119989

/-! ## A030712.P4313552181237771598

`∑[A030709(or(n, A105348(n)))]`
-/

namespace A030712.P4313552181237771598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030709 (Int.lor (n : ℤ) (A105348 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030712.P4313552181237771598

/-! ## A030712.P1234727423716406317

`∑[A030709(A028310(n))+char[1]]`
-/

namespace A030712.P1234727423716406317
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030709 (A028310 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030712.P1234727423716406317

/-! ## A030712.P3212811868716359459

`∑[A030709(A052938(A004275(n)))]`
-/

namespace A030712.P3212811868716359459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030709 (A052938 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030712.P3212811868716359459

/-! ## A030712.P9314962498508964656

`A057427(n)+∑[A030709(A028310(n))]`
-/

namespace A030712.P9314962498508964656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030709 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030712.P9314962498508964656

/-! ## A030712.P11757027990714145547

`∑[A063524(n)+A030709(A028310(n))]`
-/

namespace A030712.P11757027990714145547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A030709 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030712.P11757027990714145547

/-! ## A030712.P17193595577244060650

`∑[A030709(A028310(n))]-A057428(n)`
-/

namespace A030712.P17193595577244060650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030709 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057428 n

end

end A030712.P17193595577244060650

/-! ## A030712.P17304459027117952400

`∑[A030709(A028310(n))]+A000290(n)%(n+1)`
-/

namespace A030712.P17304459027117952400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030709 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.tmod (A000290 n) (n + 1 : ℤ)

end

end A030712.P17304459027117952400

/-! ## A030712.P11425903868981618842

`A030762(n+1)+1-A030709(n+1)`
-/

namespace A030712.P11425903868981618842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030762 (n + 1) + (1 - A030709 (n + 1))

end

end A030712.P11425903868981618842

/-! ## A030712.P4653817251405805684

`A030710(A030711(n+1))`
-/

namespace A030712.P4653817251405805684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030710 (A030711 (n + 1)).toNat

end

end A030712.P4653817251405805684

/-!
# A030713: Numbers k such that A030707(k) = 1.

The programs for A030713, there is no canonical definition to state claims against.
-/

/-! ## A030713.P17123337057466282508

`eq[1, A030707(n+1)]+1`
-/

namespace A030713.P17123337057466282508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030707 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030713.P17123337057466282508

/-! ## A030713.P16109064246599833080

`record[A000027(n+1)/A030707(n+1)]`
-/

namespace A030713.P16109064246599833080
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A030707 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030713.P16109064246599833080

/-! ## A030713.P5240517368313583807

`record[(n+1)*A010051(2*A030707(n+1))]`
-/

namespace A030713.P5240517368313583807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010051 (2 * A030707 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030713.P5240517368313583807

/-! ## A030713.P17385812309408493209

`record[A344180(n)/A030707(A344180(n))]`
-/

namespace A030713.P17385812309408493209
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344180 n : ℚ) / (A030707 (A344180 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030713.P17385812309408493209

/-! ## A030713.P100497805154917104

`eq[n, A028310(n)*A030707(A028310(n))]`
-/

namespace A030713.P100497805154917104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A030707 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030713.P100497805154917104

/-! ## A030713.P17050007718118977066

`record[A038722(A038722(n+1))/A030707(n+1)]`
-/

namespace A030713.P17050007718118977066
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038722 (A038722 (n + 1)).toNat : ℚ) / (A030707 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030713.P17050007718118977066

/-! ## A030713.P3646207371073206023

`record[A305800(n+1)/A030707(A305800(n+1))]`
-/

namespace A030713.P3646207371073206023
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305800 (n + 1) : ℚ) / (A030707 (A305800 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030713.P3646207371073206023

/-! ## A030713.P3502465887066777771

`record[A026233(n+1)/A030707(A026233(n+1))]`
-/

namespace A030713.P3502465887066777771
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026233 (n + 1) : ℚ) / (A030707 (A026233 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030713.P3502465887066777771

/-! ## A030713.P17270898504474610497

`record[A054429(A054429(n+1))/A030707(n+1)]`
-/

namespace A030713.P17270898504474610497
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054429 (A054429 (n + 1)).toNat : ℚ) / (A030707 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030713.P17270898504474610497

/-!
# A030714: Numbers k such that A030707(k) = 2.

The programs for A030714, there is no canonical definition to state claims against.
-/

/-! ## A030714.P6487814648438722244

`eq[2, A030707(n+1)]+1`
-/

namespace A030714.P6487814648438722244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030707 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030714.P6487814648438722244

/-! ## A030714.P7559397219801777794

`eq[2, A030707(A028310(n))]`
-/

namespace A030714.P7559397219801777794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030707 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030714.P7559397219801777794

/-! ## A030714.P15209910950414174597

`A153152(eq[2, A030707(n+1)])`
-/

namespace A030714.P15209910950414174597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030714.P15209910950414174597

/-! ## A030714.P5377600613882141038

`eq[2, A030707(A000007(n)+n)]`
-/

namespace A030714.P5377600613882141038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030707 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030714.P5377600613882141038

/-! ## A030714.P6966058851888362735

`eq[2, A030707(A138153(n+1))]`
-/

namespace A030714.P6966058851888362735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030707 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030714.P6966058851888362735

/-! ## A030714.P928859100626427958

`eq[2, A030707(A060000(n+1))]`
-/

namespace A030714.P928859100626427958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030707 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030714.P928859100626427958

/-! ## A030714.P16823552035762549669

`eq[2, A030707(A123108(2*n))]`
-/

namespace A030714.P16823552035762549669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030707 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030714.P16823552035762549669

/-! ## A030714.P1337564081618006126

`eq[2, A030707(A233583(n+1))]`
-/

namespace A030714.P1337564081618006126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030707 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030714.P1337564081618006126

/-!
# A030715: Numbers k such that A030707(k) = 3.

The programs for A030715, there is no canonical definition to state claims against.
-/

/-! ## A030715.P8526504058814531611

`eq[3, A030707(n+1)]+1`
-/

namespace A030715.P8526504058814531611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030707 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030715.P8526504058814531611

/-! ## A030715.P16953229910021309171

`eq[3, A030707(A028310(n))]`
-/

namespace A030715.P16953229910021309171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030707 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030715.P16953229910021309171

/-! ## A030715.P6672892121889021992

`eq[3, A030707(A000007(n)+n)]`
-/

namespace A030715.P6672892121889021992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030707 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030715.P6672892121889021992

/-! ## A030715.P16860609988593136852

`eq[3, A030707(A123108(2*n))]`
-/

namespace A030715.P16860609988593136852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030707 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030715.P16860609988593136852

/-! ## A030715.P15510127440359901281

`eq[3, A030707(A233583(n+1))]`
-/

namespace A030715.P15510127440359901281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030707 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030715.P15510127440359901281

/-!
# A030716: Numbers k such that A030707(k) = 4.

The programs for A030716, there is no canonical definition to state claims against.
-/

/-! ## A030716.P7451144652978786075

`eq[4, A030707(n+1)]+1`
-/

namespace A030716.P7451144652978786075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030707 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030716.P7451144652978786075

/-! ## A030716.P14939206611268813190

`eq[4, A030707(A028310(n))]`
-/

namespace A030716.P14939206611268813190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030707 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030716.P14939206611268813190

/-! ## A030716.P12504371728045192531

`eq[4, A030707(A000007(n)+n)]`
-/

namespace A030716.P12504371728045192531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030707 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030716.P12504371728045192531

/-! ## A030716.P2666108186577058233

`eq[4, A030707(A138153(n+1))]`
-/

namespace A030716.P2666108186577058233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030707 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030716.P2666108186577058233

/-! ## A030716.P1000977713306515156

`eq[4, A030707(A060000(n+1))]`
-/

namespace A030716.P1000977713306515156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030707 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030716.P1000977713306515156

/-! ## A030716.P16553321490038891759

`eq[4, A030707(A123108(2*n))]`
-/

namespace A030716.P16553321490038891759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030707 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030716.P16553321490038891759

/-! ## A030716.P6162651495269519010

`eq[4, A030707(A233583(n+1))]`
-/

namespace A030716.P6162651495269519010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030707 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030716.P6162651495269519010

/-!
# A030717: The first list after the following procedure: starting with a list [1] and an empty list, repeatedly add the distinct values already in the first list in ascending order to the second list and add the corresponding frequencies of those values to the first list.

The programs for A030717, there is no canonical definition to state claims against.
-/

/-! ## A030717.P12759073088781275011

`A333867(A262079(n+1)^6+n)`
-/

namespace A030717.P12759073088781275011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333867 (A262079 (n + 1) ^ 6 + (n : ℤ)).toNat

end

end A030717.P12759073088781275011

/-! ## A030717.P6891413212426786473

`A333867(n+1)+A072526(A262079(n+1))`
-/

namespace A030717.P6891413212426786473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333867 (n + 1) + A072526 (A262079 (n + 1)).toNat

end

end A030717.P6891413212426786473

/-! ## A030717.P4720086139227392925

`A333867(n+1)+A071086(A262079(n+1)²)`
-/

namespace A030717.P4720086139227392925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333867 (n + 1) + A071086 (A262079 (n + 1) ^ 2).toNat

end

end A030717.P4720086139227392925

/-! ## A030717.P14968599726027846671

`(A333867(n+1)-A143781(A262079(n+1)))%A267372(n)`
-/

namespace A030717.P14968599726027846671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333867 (n + 1) - A143781 (A262079 (n + 1)).toNat) (A267372 n)

end

end A030717.P14968599726027846671

/-! ## A030717.P13760009191969399579

`(A333867(n+1)-A143781(A262079(n+1)))*A033999(n)²`
-/

namespace A030717.P13760009191969399579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A333867 (n + 1) - A143781 (A262079 (n + 1)).toNat) * A033999 n ^ 2

end

end A030717.P13760009191969399579

/-! ## A030717.P3492349959723001765

`A000007(3*n+2)+A333867(n+1)-A143781(A262079(n+1))`
-/

namespace A030717.P3492349959723001765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (3 * n + 2) + (A333867 (n + 1) - A143781 (A262079 (n + 1)).toNat)

end

end A030717.P3492349959723001765

/-! ## A030717.P2854094569093408235

`and(A141311(n+1), A333867(n+1))`
-/

namespace A030717.P2854094569093408235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141311 (n + 1)) (A333867 (n + 1))

end

end A030717.P2854094569093408235

/-!
# A030718: The second list after the following procedure: starting with a list [1] and an empty list, repeatedly add the distinct values already in the first list in ascending order to the second list and add the corresponding frequencies of those values to the first list.

The programs for A030718, there is no canonical definition to state claims against.
-/

/-! ## A030718.P3448944357278035148

`A193738(lt[A193951(n), A202873(n+1)])`
-/

namespace A030718.P3448944357278035148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193951 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A030718.P3448944357278035148

/-! ## A030718.P13436761034133393215

`A130270(lt[A238386(3*n+2), A225630(n)]+1)`
-/

namespace A030718.P13436761034133393215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238386 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A030718.P13436761034133393215

/-! ## A030718.P8125485729722391435

`A002260(lt[A266755(n), A276974(n)])`
-/

namespace A030718.P8125485729722391435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A030718.P8125485729722391435

/-! ## A030718.P12693458175375470386

`A002262(lt[A266755(n), A276974(n)])`
-/

namespace A030718.P12693458175375470386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A030718.P12693458175375470386

/-! ## A030718.P15358943302209718507

`A214676(lt[A072203(2*(n+1)), A333755(n+1)])`
-/

namespace A030718.P15358943302209718507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072203 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214676 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A030718.P15358943302209718507

/-!
# A030719: Number of new terms at stage n in the formation of A030717.

The programs for A030719, there is no canonical definition to state claims against.
-/

/-! ## A030719.P17805353187546509683

`Δ[A253170(n+2)]`
-/

namespace A030719.P17805353187546509683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253170 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030719.P17805353187546509683

/-! ## A030719.P477088424360511717

`Δ[record[A253170(A052938(n))]]`
-/

namespace A030719.P477088424360511717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253170 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030719.P477088424360511717

/-! ## A030719.P17454060447832826009

`Δ[record[A253170(A126759(n))]]`
-/

namespace A030719.P17454060447832826009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253170 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030719.P17454060447832826009

/-! ## A030719.P12402295583613538766

`Δ[record[A253170(A305298(n))]]`
-/

namespace A030719.P12402295583613538766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253170 (A305298 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030719.P12402295583613538766

/-! ## A030719.P12110512738688853619

`A253170(n+3)-A253170(n+2)`
-/

namespace A030719.P12110512738688853619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253170 (n + 3) - A253170 (n + 2)

end

end A030719.P12110512738688853619

/-! ## A030719.P15901480186857022521

`Δ[eq[1, A030718(n+1)]]`
-/

namespace A030719.P15901480186857022521
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030718 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A030719.P15901480186857022521

/-!
# A030720: a(n) is the least k such that s(k) = n, where s = A030717.

The programs for A030720, there is no canonical definition to state claims against.
-/

/-! ## A030720.P15622596169984524425

`A030722(A032555(n+1))`
-/

namespace A030720.P15622596169984524425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030722 (A032555 (n + 1)).toNat

end

end A030720.P15622596169984524425

/-! ## A030720.P13580254594999711041

`A030722(A032559(n+1))`
-/

namespace A030720.P13580254594999711041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030722 (A032559 (n + 1)).toNat

end

end A030720.P13580254594999711041

/-! ## A030720.P7102053790178035194

`A030722(A077739(n+1))`
-/

namespace A030720.P7102053790178035194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030722 (A077739 (n + 1)).toNat

end

end A030720.P7102053790178035194

/-! ## A030720.P11451097520584314198

`A030722(A078213(n+1))`
-/

namespace A030720.P11451097520584314198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030722 (A078213 (n + 1)).toNat

end

end A030720.P11451097520584314198

/-! ## A030720.P226362656852518062

`A030722(A082217(n+1))`
-/

namespace A030720.P226362656852518062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030722 (A082217 (n + 1)).toNat

end

end A030720.P226362656852518062

/-!
# A030721: Record values in A030717.

The programs for A030721, there is no canonical definition to state claims against.
-/

/-! ## A030721.P16334685808765111955

`record[A358386(n+1)]`
-/

namespace A030721.P16334685808765111955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030721.P16334685808765111955

/-! ## A030721.P13035744707387617891

`record[A030717(n+1)]`
-/

namespace A030721.P13035744707387617891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030721.P13035744707387617891

/-! ## A030721.P12869991757055155174

`A030717(A030722(n+1))`
-/

namespace A030721.P12869991757055155174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (A030722 (n + 1)).toNat

end

end A030721.P12869991757055155174

/-! ## A030721.P9226973339993549344

`record[A030717(A020915(n))]%A072197(n)`
-/

namespace A030721.P9226973339993549344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (A020915 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A072197 n)

end

end A030721.P9226973339993549344

/-! ## A030721.P16274562997139353934

`record[A030717(A020915(n))]^A025460(n)!`
-/

namespace A030721.P16274562997139353934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (A020915 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ Nat.factorial (A025460 n).toNat

end

end A030721.P16274562997139353934

/-!
# A030722: Positions of records in A030717.

The programs for A030722, there is no canonical definition to state claims against.
-/

/-! ## A030722.P16747742658558782164

`A030720(A030721(n+1))`
-/

namespace A030722.P16747742658558782164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030720 (A030721 (n + 1)).toNat

end

end A030722.P16747742658558782164

/-! ## A030722.P5456730971342397837

`A030720(record[A030717(n+1)])`
-/

namespace A030722.P5456730971342397837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030722.P5456730971342397837

/-! ## A030722.P17108021653247644798

`A030720(record[A333867(n+1)])`
-/

namespace A030722.P17108021653247644798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030722.P17108021653247644798

/-! ## A030722.P10725687412741625803

`A030720(record[A358386(n+1)])`
-/

namespace A030722.P10725687412741625803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030722.P10725687412741625803

/-! ## A030722.P5463075548943828748

`A030720(A064704(n+1))`
-/

namespace A030722.P5463075548943828748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030720 (A064704 (n + 1)).toNat

end

end A030722.P5463075548943828748

/-!
# A030723: Numbers k such that A030717(k) = 1.

The programs for A030723, there is no canonical definition to state claims against.
-/

/-! ## A030723.P1413682724837143477

`eq[1, A030717(n+1)]+1`
-/

namespace A030723.P1413682724837143477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030723.P1413682724837143477

/-! ## A030723.P3457746364223789807

`record[A000027(n+1)/A030717(n+1)]`
-/

namespace A030723.P3457746364223789807
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A030717 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030723.P3457746364223789807

/-! ## A030723.P9417627827761049433

`eq[n, A028310(n)*A030717(A028310(n))]`
-/

namespace A030723.P9417627827761049433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A030717 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030723.P9417627827761049433

/-! ## A030723.P442854521612379658

`record[A006949(n)/A030717(A006949(n))]`
-/

namespace A030723.P442854521612379658
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006949 n : ℚ) / (A030717 (A006949 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030723.P442854521612379658

/-! ## A030723.P12217112575301233316

`record[A020915(n)/A030717(A020915(n))]`
-/

namespace A030723.P12217112575301233316
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020915 n : ℚ) / (A030717 (A020915 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030723.P12217112575301233316

/-! ## A030723.P8501537073520148303

`record[A005378(n)/A030717(A005378(n))]`
-/

namespace A030723.P8501537073520148303
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005378 n : ℚ) / (A030717 (A005378 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030723.P8501537073520148303

/-! ## A030723.P15180380364410871310

`record[A008619(2*n)/A030717(n+1)]`
-/

namespace A030723.P15180380364410871310
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A030717 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030723.P15180380364410871310

/-! ## A030723.P14394687263543959649

`record[A065033(n)/A030717(A065033(n))]`
-/

namespace A030723.P14394687263543959649
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065033 n : ℚ) / (A030717 (A065033 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030723.P14394687263543959649

/-! ## A030723.P6503468855610012169

`record[A034888(n)/A030717(A034888(n))]`
-/

namespace A030723.P6503468855610012169
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034888 n : ℚ) / (A030717 (A034888 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030723.P6503468855610012169

/-! ## A030723.P3430066303751220240

`record[A008620(3*n)/A030717(n+1)]`
-/

namespace A030723.P3430066303751220240
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008620 (3 * n) : ℚ) / (A030717 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030723.P3430066303751220240

/-!
# A030724: Numbers k such that A030717(k) = 2.

The programs for A030724, there is no canonical definition to state claims against.
-/

/-! ## A030724.P14631358634734888803

`eq[2, A030717(n+1)]+1`
-/

namespace A030724.P14631358634734888803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030724.P14631358634734888803

/-! ## A030724.P8650366236734838603

`eq[2, A030717(A028310(n))]`
-/

namespace A030724.P8650366236734838603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030724.P8650366236734838603

/-! ## A030724.P11201040747049327315

`A020725(eq[2, A030717(n+1)])`
-/

namespace A030724.P11201040747049327315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030724.P11201040747049327315

/-! ## A030724.P4148382790915494205

`A065475(eq[2, A030717(n+1)])`
-/

namespace A030724.P4148382790915494205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030724.P4148382790915494205

/-! ## A030724.P3308200492117055824

`eq[2, A030717(A000007(n)+n)]`
-/

namespace A030724.P3308200492117055824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030724.P3308200492117055824

/-! ## A030724.P16731783513545946706

`eq[2, A030717(A000038(n)+n)]`
-/

namespace A030724.P16731783513545946706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030724.P16731783513545946706

/-! ## A030724.P1417664663860851726

`eq[2, A030717(A123108(2*n))]`
-/

namespace A030724.P1417664663860851726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030724.P1417664663860851726

/-! ## A030724.P14010246805171262593

`eq[2, A030717(A233583(n+1))]`
-/

namespace A030724.P14010246805171262593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030724.P14010246805171262593

/-!
# A030725: Numbers k such that A030717(k) = 3.

The programs for A030725, there is no canonical definition to state claims against.
-/

/-! ## A030725.P655280802136041404

`eq[3, A030717(n+1)]+1`
-/

namespace A030725.P655280802136041404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030725.P655280802136041404

/-! ## A030725.P7810878476805568020

`eq[3, A030717(A028310(n))]`
-/

namespace A030725.P7810878476805568020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030725.P7810878476805568020

/-! ## A030725.P12158682619574539317

`A020725(eq[3, A030717(n+1)])`
-/

namespace A030725.P12158682619574539317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030725.P12158682619574539317

/-! ## A030725.P13015206013118314061

`eq[3, A030717(A000007(n)+n)]`
-/

namespace A030725.P13015206013118314061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030725.P13015206013118314061

/-! ## A030725.P13850173088943956445

`eq[3, A030717(A000038(n)+n)]`
-/

namespace A030725.P13850173088943956445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030725.P13850173088943956445

/-! ## A030725.P12311489240803123509

`eq[3, A030717(A123108(2*n))]`
-/

namespace A030725.P12311489240803123509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030725.P12311489240803123509

/-! ## A030725.P14299177869345494513

`eq[3, A030717(A233583(n+1))]`
-/

namespace A030725.P14299177869345494513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030725.P14299177869345494513

/-!
# A030726: Numbers k such that A030717(k) = 4.

The programs for A030726, there is no canonical definition to state claims against.
-/

/-! ## A030726.P11066652366789105658

`eq[4, A030717(A028310(n))]`
-/

namespace A030726.P11066652366789105658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030726.P11066652366789105658

/-! ## A030726.P10870486402742579252

`A020725(eq[4, A030717(n+1)])`
-/

namespace A030726.P10870486402742579252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030726.P10870486402742579252

/-! ## A030726.P5251886129277341361

`A065475(eq[4, A030717(n+1)])`
-/

namespace A030726.P5251886129277341361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030726.P5251886129277341361

/-! ## A030726.P14574442883714600799

`eq[4, A030717(A000007(n)+n)]`
-/

namespace A030726.P14574442883714600799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030726.P14574442883714600799

/-! ## A030726.P1143775208568507377

`eq[4, A030717(A000038(n)+n)]`
-/

namespace A030726.P1143775208568507377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030726.P1143775208568507377

/-! ## A030726.P10844630779114504632

`eq[4, A030717(A123108(2*n))]`
-/

namespace A030726.P10844630779114504632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030726.P10844630779114504632

/-!
# A030729: Number of new terms at stage n in the formation of A030727; likewise at stage n in the formation of A030777.

The programs for A030729, there is no canonical definition to state claims against.
-/

/-! ## A030729.P9747025164579497134

`∑[A055178(n+1)]`
-/

namespace A030729.P9747025164579497134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030729.P9747025164579497134

/-! ## A030729.P4620287709344692761

`A055178(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A030729.P4620287709344692761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055178 (n + 1) + a (A023443 n).toNat

end

end A030729.P4620287709344692761

/-! ## A030729.P15771659402367808662

`A055178(n+1)+A242179(n)²*a(n-1)` with `a(0)=1`
-/

namespace A030729.P15771659402367808662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055178 (n + 1) + A242179 n ^ 2 * a (n - 1)

end

end A030729.P15771659402367808662

/-! ## A030729.P2178552984805480870

`a(n-1)+A055178(n+1)+A036987(2*n)` with `a(0)=1`
-/

namespace A030729.P2178552984805480870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A055178 (n + 1) + A036987 (2 * n))

end

end A030729.P2178552984805480870

/-! ## A030729.P11024374589632376586

`(A055178(n+1)+a(n-1))%A076306(n+1)` with `a(0)=1`
-/

namespace A030729.P11024374589632376586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A055178 (n + 1) + a (n - 1)) (A076306 (n + 1))

end

end A030729.P11024374589632376586

/-! ## A030729.P11482236318627406971

`Δ[record[n/A030728(n+1)]]`
-/

namespace A030729.P11482236318627406971
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A030728 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030729.P11482236318627406971

/-!
# A030731: Record values in A030727.

The programs for A030731, there is no canonical definition to state claims against.
-/

/-! ## A030731.P17076359140762900305

`record[A055179(abs(2*and(1, n)-n)+1)]`
-/

namespace A030731.P17076359140762900305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055179 (|(2 * Nat.land 1 n : ℤ) - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030731.P17076359140762900305

/-! ## A030731.P2463585539252190985

`record[A055179(A065190(n+1))]`
-/

namespace A030731.P2463585539252190985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055179 (A065190 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030731.P2463585539252190985

/-! ## A030731.P7546615571430265806

`record[A055179(A062157(n)+1+n)]`
-/

namespace A030731.P7546615571430265806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055179 (A062157 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030731.P7546615571430265806

/-! ## A030731.P5363941038182854675

`record[A055179(xor(1, A057427(n)+n))]`
-/

namespace A030731.P5363941038182854675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055179 (Int.xor 1 (A057427 n + (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030731.P5363941038182854675

/-! ## A030731.P6385816428997397086

`record[A055179(A028310(A010673(n)+n))]`
-/

namespace A030731.P6385816428997397086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055179 (A028310 (A010673 n + (n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030731.P6385816428997397086

/-! ## A030731.P5008495993885772671

`record[A030727(n+1)]`
-/

namespace A030731.P5008495993885772671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030731.P5008495993885772671

/-! ## A030731.P10775488749364837030

`A030727(A030732(n+1))`
-/

namespace A030731.P10775488749364837030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030727 (A030732 (n + 1)).toNat

end

end A030731.P10775488749364837030

/-! ## A030731.P3578178041145598810

`record[(-1)^(2*n)*A030727(xor(n, A000007(n)))]`
-/

namespace A030731.P3578178041145598810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (2 * n) * A030727 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030731.P3578178041145598810

/-!
# A030732: Positions of record values in A030727.

The programs for A030732, there is no canonical definition to state claims against.
-/

/-! ## A030732.P1298390275558500422

`A030730(A030731(n+1))`
-/

namespace A030732.P1298390275558500422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030730 (A030731 (n + 1)).toNat

end

end A030732.P1298390275558500422

/-! ## A030732.P1438730125994526821

`A030730(record[A030727(n+1)])`
-/

namespace A030732.P1438730125994526821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030730 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030732.P1438730125994526821

/-! ## A030732.P11017170401266400169

`lt[A131754(n+1), A030727(n+1)]+1`
-/

namespace A030732.P11017170401266400169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030727 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A030732.P11017170401266400169

/-!
# A030733: s(k)=1, where s=A030727.

The programs for A030733, there is no canonical definition to state claims against.
-/

/-! ## A030733.P6751004156066323204

`eq[1, A030727(n+1)]+1`
-/

namespace A030733.P6751004156066323204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030727 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030733.P6751004156066323204

/-! ## A030733.P4129695503424214579

`record[n/a(A030727(n))]` with `a(0)=2, a(1)=1`
-/

namespace A030733.P4129695503424214579
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  (n : ℚ) / f1 (A030727 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030733.P4129695503424214579

/-! ## A030733.P7170922138285891685

`record[(n+2)/A030727(n+2)]`
-/

namespace A030733.P7170922138285891685
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A030727 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030733.P7170922138285891685

/-! ## A030733.P1188123603231338638

`eq[1, A030727(A028310(n))]`
-/

namespace A030733.P1188123603231338638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030727 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030733.P1188123603231338638

/-! ## A030733.P1082271445001461756

`A020725(eq[1, A030727(n+1)])`
-/

namespace A030733.P1082271445001461756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030733.P1082271445001461756

/-! ## A030733.P2862794216156464688

`eq[1, A030727(A000007(n)+n)]`
-/

namespace A030733.P2862794216156464688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030727 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030733.P2862794216156464688

/-! ## A030733.P5977412998741158472

`eq[1, A030727(xor(n, A000007(n)))]`
-/

namespace A030733.P5977412998741158472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030727 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030733.P5977412998741158472

/-!
# A030734: Numbers k such that A030727(k) = 2.

The programs for A030734, there is no canonical definition to state claims against.
-/

/-! ## A030734.P13470483932440815220

`eq[2, A030727(n+1)]+1`
-/

namespace A030734.P13470483932440815220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030727 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030734.P13470483932440815220

/-! ## A030734.P4186326650272394228

`eq[2, A030727(A028310(n))]`
-/

namespace A030734.P4186326650272394228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030727 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030734.P4186326650272394228

/-! ## A030734.P7728483856771653989

`A020725(eq[2, A030727(n+1)])`
-/

namespace A030734.P7728483856771653989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030734.P7728483856771653989

/-! ## A030734.P13094305468072184598

`eq[2, A030727(A000007(n)+n)]`
-/

namespace A030734.P13094305468072184598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030727 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030734.P13094305468072184598

/-! ## A030734.P16383725152722818839

`eq[2, A030727(A000038(n)+n)]`
-/

namespace A030734.P16383725152722818839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030727 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030734.P16383725152722818839

/-! ## A030734.P167894061776792317

`eq[2, A030727(xor(n, A000007(n)))]`
-/

namespace A030734.P167894061776792317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030727 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030734.P167894061776792317

/-! ## A030734.P8596006512190514749

`eq[2, A030727(A233583(n+1))]`
-/

namespace A030734.P8596006512190514749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030727 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030734.P8596006512190514749

/-!
# A030735: s(n)=3, where s=A030727.

The programs for A030735, there is no canonical definition to state claims against.
-/

/-! ## A030735.P9294097749298650934

`eq[3, A030727(n+1)]+1`
-/

namespace A030735.P9294097749298650934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030727 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030735.P9294097749298650934

/-! ## A030735.P11314964932971375461

`eq[3, A030727(A000038(n)+n)]`
-/

namespace A030735.P11314964932971375461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030727 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030735.P11314964932971375461

/-! ## A030735.P11183905172716575521

`eq[3, A030727(abs(A000038(n)-n))]`
-/

namespace A030735.P11183905172716575521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030727 |A000038 n - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030735.P11183905172716575521

/-! ## A030735.P4706062365381043467

`eq[3, A030727(n*A057427(a(n-1)))]` with `a(0)=2`
-/

namespace A030735.P4706062365381043467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A030727 ((n : ℤ) * A057427 (f2 (n - 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030735.P4706062365381043467

/-! ## A030735.P7839881938546773622

`eq[4, A030727(A028310(n))-A057428(n)]`
-/

namespace A030735.P7839881938546773622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030727 (A028310 n).toNat - A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030735.P7839881938546773622

/-!
# A030736: Numbers k such that A030727(k) = 4.

The programs for A030736, there is no canonical definition to state claims against.
-/

/-! ## A030736.P3636359482025791718

`eq[4, A030727(n+2)]+2`
-/

namespace A030736.P3636359482025791718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030727 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A030736.P3636359482025791718

/-! ## A030736.P17268273247320825094

`eq[4, A030727(A028310(n))]`
-/

namespace A030736.P17268273247320825094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030727 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030736.P17268273247320825094

/-! ## A030736.P6085498015657580086

`A020725(eq[4, A030727(n+1)])`
-/

namespace A030736.P6085498015657580086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030736.P6085498015657580086

/-! ## A030736.P15203442214222755125

`A153152(eq[4, A030727(n+1)])`
-/

namespace A030736.P15203442214222755125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030736.P15203442214222755125

/-! ## A030736.P13786417345060956759

`eq[4, A030727(A000007(n)+n)]`
-/

namespace A030736.P13786417345060956759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030727 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030736.P13786417345060956759

/-! ## A030736.P1972351149788303197

`eq[4, A030727(xor(n, A000007(n)))]`
-/

namespace A030736.P1972351149788303197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030727 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030736.P1972351149788303197

/-! ## A030736.P14222840332493957279

`eq[4, A030727(A233583(n+1))]`
-/

namespace A030736.P14222840332493957279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030727 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030736.P14222840332493957279

/-!
# A030738: The second list after the following procedure: starting with a list [2] and an empty list, repeatedly add the distinct values already in both lists in ascending order to the second list and add the corresponding frequencies of those values to the first list.

The programs for A030738, there is no canonical definition to state claims against.
-/

/-! ## A030738.P13367097238023197325

`A010815(A321397(n))+A002260(n+2)`
-/

namespace A030738.P13367097238023197325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A321397 n).toNat + A002260 (n + 2)

end

end A030738.P13367097238023197325

/-! ## A030738.P10249284232203468616

`A167969(or(8, A024646(n)))`
-/

namespace A030738.P10249284232203468616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167969 (Int.lor 8 (A024646 n)).toNat

end

end A030738.P10249284232203468616

/-! ## A030738.P2584314875478423957

`A002260(floor(ratio[A005641(n+2)]))`
-/

namespace A030738.P2584314875478423957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005641 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋.toNat

end

end A030738.P2584314875478423957

/-! ## A030738.P11224222405036288652

`A002260(n+2)-A054525(A296557(n+1))`
-/

namespace A030738.P11224222405036288652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 2) - A054525 (A296557 (n + 1)).toNat

end

end A030738.P11224222405036288652

/-!
# A030739: Number of new terms at stage n in formation of A030737; likewise at stage n in the formation of A030767.

The programs for A030739, there is no canonical definition to state claims against.
-/

/-! ## A030739.P7564605912330871290

`∑[A055175(n+1)]`
-/

namespace A030739.P7564605912330871290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030739.P7564605912330871290

/-! ## A030739.P14638420887536224048

`A055175(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A030739.P14638420887536224048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055175 (n + 1) + a (A023443 n).toNat

end

end A030739.P14638420887536224048

/-! ## A030739.P16259694076840092606

`A055175(n+1)+a(n-A057427(n))` with `a(0)=1`
-/

namespace A030739.P16259694076840092606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055175 (n + 1) + a ((n : ℤ) - A057427 n).toNat

end

end A030739.P16259694076840092606

/-! ## A030739.P17033364900427787210

`a(n-1)+A055175(n+1)%A000124(n)` with `a(0)=1`
-/

namespace A030739.P17033364900427787210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A055175 (n + 1)) (A000124 n)

end

end A030739.P17033364900427787210

/-! ## A030739.P14955865423348660640

`A055175(n+1)+a(A008486(n)-2*n-1)` with `a(0)=1`
-/

namespace A030739.P14955865423348660640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055175 (n + 1) + a (A008486 n - (2 * n : ℤ) - 1).toNat

end

end A030739.P14955865423348660640

/-! ## A030739.P2621845167532139259

`Δ[record[n/A030738(n+1)]]`
-/

namespace A030739.P2621845167532139259
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A030738 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030739.P2621845167532139259

/-! ## A030739.P10294283887508406912

`Δ[eq[A030738(n+1), A054977(n)]]`
-/

namespace A030739.P10294283887508406912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030738 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A030739.P10294283887508406912

/-! ## A030739.P14266251832090021319

`Δ[eq[A000038(n)!, A030738(n+1)]]`
-/

namespace A030739.P14266251832090021319
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 n).toNat

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030738 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A030739.P14266251832090021319

/-!
# A030741: Record values in A030737.

The programs for A030741, there is no canonical definition to state claims against.
-/

/-! ## A030741.P9842714326481418051

`record[A030737(n+1)]`
-/

namespace A030741.P9842714326481418051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030741.P9842714326481418051

/-! ## A030741.P7170520693687872802

`A030737(A030742(n+1))`
-/

namespace A030741.P7170520693687872802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030737 (A030742 (n + 1)).toNat

end

end A030741.P7170520693687872802

/-! ## A030741.P4257790734670861390

`record[A030737(A028310(n))%(11*n-3)]`
-/

namespace A030741.P4257790734670861390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030737 (A028310 n).toNat) ((11 * n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030741.P4257790734670861390

/-! ## A030741.P16307814836850804538

`record[A030737(A028310(n))]%A175161(n)`
-/

namespace A030741.P16307814836850804538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030737 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A175161 n)

end

end A030741.P16307814836850804538

/-! ## A030741.P16861296464254401664

`record[A030768(n+1)-A159075(n)]`
-/

namespace A030741.P16861296464254401664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030768 (n + 1) - A159075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030741.P16861296464254401664

/-!
# A030742: Positions of record values in A030737.

The programs for A030742, there is no canonical definition to state claims against.
-/

/-! ## A030742.P6865190726057233171

`A030740(A030741(n+1)+1)`
-/

namespace A030742.P6865190726057233171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030740 (A030741 (n + 1) + 1).toNat

end

end A030742.P6865190726057233171

/-! ## A030742.P6791746916260222763

`A030740(record[A030737(n+1)+1])`
-/

namespace A030742.P6791746916260222763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030737 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030740 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030742.P6791746916260222763

/-! ## A030742.P7586490956252730659

`A030740(record[A030768(n+1)-A159075(n)]+1)`
-/

namespace A030742.P7586490956252730659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030768 (n + 1) - A159075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030740 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A030742.P7586490956252730659

/-!
# A030743: s(k)=1, where s=A030737.

The programs for A030743, there is no canonical definition to state claims against.
-/

/-! ## A030743.P17656224612020729248

`eq[1, A030737(n+1)]+1`
-/

namespace A030743.P17656224612020729248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030737 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030743.P17656224612020729248

/-! ## A030743.P3431393012638997208

`record[(n+2)/A030737(n+2)]`
-/

namespace A030743.P3431393012638997208
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A030737 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030743.P3431393012638997208

/-! ## A030743.P6482271952059760279

`eq[1, A030737(A028310(n))]`
-/

namespace A030743.P6482271952059760279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030737 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030743.P6482271952059760279

/-! ## A030743.P18118733366588280856

`A020725(eq[1, A030737(n+1)])`
-/

namespace A030743.P18118733366588280856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030743.P18118733366588280856

/-! ## A030743.P6841613736535117296

`eq[1, A030737(gcd(n, A008486(n)))]`
-/

namespace A030743.P6841613736535117296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030737 (Int.gcd (n : ℤ) (A008486 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030743.P6841613736535117296

/-! ## A030743.P11846132603083485788

`eq[1, A030737(A065033(2*n))]`
-/

namespace A030743.P11846132603083485788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030737 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030743.P11846132603083485788

/-!
# A030744: Numbers k such that A030737(k) = 2.

The programs for A030744, there is no canonical definition to state claims against.
-/

/-! ## A030744.P2755035309841731949

`eq[2, A030737(n+1)]+1`
-/

namespace A030744.P2755035309841731949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030737 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030744.P2755035309841731949

/-! ## A030744.P17071673051006322875

`eq[2, A030737(A000038(n)+n)]`
-/

namespace A030744.P17071673051006322875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030737 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030744.P17071673051006322875

/-! ## A030744.P11623278498184474070

`eq[2, A030737(A028310(n))*A057427(n)]`
-/

namespace A030744.P11623278498184474070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030737 (A028310 n).toNat * A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030744.P11623278498184474070

/-! ## A030744.P10220102717485695386

`eq[A030737(A028310(n)), A134451(2*n)]`
-/

namespace A030744.P10220102717485695386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030737 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030744.P10220102717485695386

/-!
# A030745: Numbers k such that A030737(k) = 3.

The programs for A030745, there is no canonical definition to state claims against.
-/

/-! ## A030745.P6478915072795270423

`eq[3, A030737(n+1)]+1`
-/

namespace A030745.P6478915072795270423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030737 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030745.P6478915072795270423

/-! ## A030745.P5616419725815798976

`eq[3, A030737(A028310(n))]`
-/

namespace A030745.P5616419725815798976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030737 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030745.P5616419725815798976

/-! ## A030745.P6265268890000982001

`A020725(eq[3, A030737(n+1)])`
-/

namespace A030745.P6265268890000982001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030745.P6265268890000982001

/-! ## A030745.P1924293016154704566

`eq[3, A030737(gcd(n, A008486(n)))]`
-/

namespace A030745.P1924293016154704566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030737 (Int.gcd (n : ℤ) (A008486 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030745.P1924293016154704566

/-! ## A030745.P1255200267179039813

`eq[3, A030737(A065033(2*n))]`
-/

namespace A030745.P1255200267179039813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030737 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030745.P1255200267179039813

/-! ## A030745.P10355232267636543766

`eq[3, A030737(A233583(n+1))]`
-/

namespace A030745.P10355232267636543766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030737 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030745.P10355232267636543766

/-!
# A030746: Numbers k such that A030737(k) = 4.

The programs for A030746, there is no canonical definition to state claims against.
-/

/-! ## A030746.P2258392368161547298

`eq[4, A030737(n+1)]+1`
-/

namespace A030746.P2258392368161547298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030737 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030746.P2258392368161547298

/-! ## A030746.P16221701075453852499

`eq[4, A030737(A028310(n))]`
-/

namespace A030746.P16221701075453852499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030737 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030746.P16221701075453852499

/-! ## A030746.P9488937817406040907

`A020725(eq[4, A030737(n+1)])`
-/

namespace A030746.P9488937817406040907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030746.P9488937817406040907

/-! ## A030746.P8415314689053526927

`eq[4, A030737(gcd(n, A008486(n)))]`
-/

namespace A030746.P8415314689053526927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030737 (Int.gcd (n : ℤ) (A008486 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030746.P8415314689053526927

/-! ## A030746.P13406055026503994104

`eq[4, A030737(A065033(2*n))]`
-/

namespace A030746.P13406055026503994104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030737 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030746.P13406055026503994104

/-! ## A030746.P6842023077228388083

`eq[4, A030737(A233583(n+1))]`
-/

namespace A030746.P6842023077228388083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030737 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030746.P6842023077228388083

/-!
# A030748: The second list after the following procedure: starting with a list [4] and an empty list, repeatedly add the distinct values already in both lists in ascending order to the second list and add the corresponding frequencies of those values to the first list.

The programs for A030748, there is no canonical definition to state claims against.
-/

/-! ## A030748.P5462257720047213262

`A071178(lcm(16, A253561(n+2)))`
-/

namespace A030748.P5462257720047213262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (Int.lcm 16 (A253561 (n + 2)))

end

end A030748.P5462257720047213262

/-! ## A030748.P1226411888581920826

`A030788(A038722(n+1)%A217548(n))`
-/

namespace A030748.P1226411888581920826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030788 (Int.tmod (A038722 (n + 1)) (A217548 n)).toNat

end

end A030748.P1226411888581920826

/-!
# A030749: Number of new terms at stage n in the formation of A030747; likewise at stage n in the formation of A030787.

The programs for A030749, there is no canonical definition to state claims against.
-/

/-! ## A030749.P11476295184965054924

`∑[A055181(n+1)]`
-/

namespace A030749.P11476295184965054924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030749.P11476295184965054924

/-! ## A030749.P9243088332014578539

`Δ[record[n/A030748(n+1)]]`
-/

namespace A030749.P9243088332014578539
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A030748 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030749.P9243088332014578539

/-! ## A030749.P15834022073092868216

`Δ[eq[4, A055180(2*(n+1))]]`
-/

namespace A030749.P15834022073092868216
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055180 (2 * (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A030749.P15834022073092868216

/-! ## A030749.P631788142325232895

`Δ[eq[4, A055190(2*n+3)]]`
-/

namespace A030749.P631788142325232895
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055190 (2 * n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A030749.P631788142325232895

/-! ## A030749.P17445437233589914406

`∑[A020909(A277700(A051124(n+2)))]`
-/

namespace A030749.P17445437233589914406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020909 (A277700 (A051124 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030749.P17445437233589914406

/-!
# A030751: Record values in A030747.

The programs for A030751, there is no canonical definition to state claims against.
-/

/-! ## A030751.P14224177010286283341

`record[A030747(n+1)]`
-/

namespace A030751.P14224177010286283341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030751.P14224177010286283341

/-! ## A030751.P9733097669676385864

`A030747(A030752(n+1))`
-/

namespace A030751.P9733097669676385864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030747 (A030752 (n + 1)).toNat

end

end A030751.P9733097669676385864

/-! ## A030751.P18234080293566935603

`record[A030788(n+1)]`
-/

namespace A030751.P18234080293566935603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030751.P18234080293566935603

/-! ## A030751.P12273617201263050638

`A030788(A030752(n+2)-1)`
-/

namespace A030751.P12273617201263050638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030788 (A030752 (n + 2) - 1).toNat

end

end A030751.P12273617201263050638

/-! ## A030751.P1913836980222827936

`A030748(A030752(n+3)-2)`
-/

namespace A030751.P1913836980222827936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030748 (A030752 (n + 3) - 2).toNat

end

end A030751.P1913836980222827936

/-! ## A030751.P5940839828357842902

`record[A055182(n+1)%A055204(A055179(n+1))]`
-/

namespace A030751.P5940839828357842902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055182 (n + 1)) (A055204 (A055179 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030751.P5940839828357842902

/-! ## A030751.P5341765833830790733

`record[A055180(A055180(n+1)+n)]`
-/

namespace A030751.P5341765833830790733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055180 (A055180 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030751.P5341765833830790733

/-! ## A030751.P13892582715702380982

`record[A055190(A055190(n+2)+n)]`
-/

namespace A030751.P13892582715702380982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055190 (A055190 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030751.P13892582715702380982

/-!
# A030752: Positions of record values in A030747.

The programs for A030752, there is no canonical definition to state claims against.
-/

/-! ## A030752.P5914125565878836899

`A030750(A030751(n+1))`
-/

namespace A030752.P5914125565878836899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030750 (A030751 (n + 1)).toNat

end

end A030752.P5914125565878836899

/-! ## A030752.P3966149282997825914

`A030750(record[A030747(n+1)])`
-/

namespace A030752.P3966149282997825914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030750 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030752.P3966149282997825914

/-! ## A030752.P7988540274579176166

`eq[A030748(n+1), A060296(n)]`
-/

namespace A030752.P7988540274579176166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060296 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030752.P7988540274579176166

/-! ## A030752.P2918996300935192653

`eq[A030748(n+1)+1, A151798(n)]`
-/

namespace A030752.P2918996300935192653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030748 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151798 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030752.P2918996300935192653

/-! ## A030752.P10083812725660219721

`eq[A030748(n+1), A334503(n+1)]`
-/

namespace A030752.P10083812725660219721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334503 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030752.P10083812725660219721

/-!
# A030753: s(k)=1, where s=A030747.

The programs for A030753, there is no canonical definition to state claims against.
-/

/-! ## A030753.P10087734631243710294

`eq[1, A030747(n+1)]+1`
-/

namespace A030753.P10087734631243710294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030747 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030753.P10087734631243710294

/-! ## A030753.P15880250747026416669

`record[(n+2)/A030747(n+2)]`
-/

namespace A030753.P15880250747026416669
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A030747 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030753.P15880250747026416669

/-! ## A030753.P4873480008722796047

`eq[1, A030747(A028310(n))]`
-/

namespace A030753.P4873480008722796047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030747 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030753.P4873480008722796047

/-! ## A030753.P14463049584528072049

`A020725(eq[1, A030747(n+1)])`
-/

namespace A030753.P14463049584528072049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030753.P14463049584528072049

/-! ## A030753.P12310547779823218290

`eq[1, A030747(A000007(n)+n)]`
-/

namespace A030753.P12310547779823218290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030747 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030753.P12310547779823218290

/-!
# A030754: Numbers k such that A030747(k) = 2.

The programs for A030754, there is no canonical definition to state claims against.
-/

/-! ## A030754.P3336013815233162728

`eq[2, A030747(n+1)]+1`
-/

namespace A030754.P3336013815233162728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030747 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030754.P3336013815233162728

/-! ## A030754.P14983059733127347799

`eq[2, A030747(A028310(n))]`
-/

namespace A030754.P14983059733127347799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030747 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030754.P14983059733127347799

/-! ## A030754.P16726463033181035882

`A020725(eq[2, A030747(n+1)])`
-/

namespace A030754.P16726463033181035882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030754.P16726463033181035882

/-! ## A030754.P13717481617342885075

`A065475(eq[2, A030747(n+1)])`
-/

namespace A030754.P13717481617342885075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030754.P13717481617342885075

/-! ## A030754.P1576879486920980385

`eq[2, A030747(A000007(n)+n)]`
-/

namespace A030754.P1576879486920980385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030747 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030754.P1576879486920980385

/-!
# A030755: Numbers k such that A030747(k) = 3.

The programs for A030755, there is no canonical definition to state claims against.
-/

/-! ## A030755.P675321535469839753

`eq[3, A030747(n+1)]+1`
-/

namespace A030755.P675321535469839753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030747 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030755.P675321535469839753

/-! ## A030755.P10327852453283450901

`eq[3, A030747(A028310(n))]`
-/

namespace A030755.P10327852453283450901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030747 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030755.P10327852453283450901

/-! ## A030755.P7590274971792791705

`A020725(eq[3, A030747(n+1)])`
-/

namespace A030755.P7590274971792791705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030755.P7590274971792791705

/-! ## A030755.P12210523432294493136

`A065475(eq[3, A030747(n+1)])`
-/

namespace A030755.P12210523432294493136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030755.P12210523432294493136

/-! ## A030755.P3858330220242244787

`A153152(eq[3, A030747(n+1)])`
-/

namespace A030755.P3858330220242244787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030755.P3858330220242244787

/-! ## A030755.P11071904084540719936

`eq[3, A030747(A000007(n)+n)]`
-/

namespace A030755.P11071904084540719936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030747 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030755.P11071904084540719936

/-!
# A030756: Numbers k such that A030747(k)=4.

The programs for A030756, there is no canonical definition to state claims against.
-/

/-! ## A030756.P15750755652069898863

`eq[4, A030747(n+1)]+1`
-/

namespace A030756.P15750755652069898863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030747 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030756.P15750755652069898863

/-! ## A030756.P17155595904352908593

`eq[A030747(A028310(n)), A040002(n)]`
-/

namespace A030756.P17155595904352908593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030747 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030756.P17155595904352908593

/-! ## A030756.P6102266862444735075

`eq[A280560(n)², A030747(A028310(n))]`
-/

namespace A030756.P6102266862444735075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030747 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030756.P6102266862444735075

/-! ## A030756.P2859884648742844780

`eq[A030747(A028310(n))-3, A054977(n)]`
-/

namespace A030756.P2859884648742844780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030747 (A028310 n).toNat - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030756.P2859884648742844780

/-! ## A030756.P5417814274583734960

`eq[A134451(2*n)², A030747(A028310(n))]`
-/

namespace A030756.P5417814274583734960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (2 * n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030747 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030756.P5417814274583734960

/-!
# A030757: The first list after the following procedure: starting with a list [1] and an empty list, repeatedly add the distinct values already in both lists in descending order to the second list and add the corresponding frequencies of those values to the first list.

The programs for A030757, there is no canonical definition to state claims against.
-/

/-! ## A030757.P13448534630914644279

`A051120(record[n*n%2])`
-/

namespace A030757.P13448534630914644279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051120 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A030757.P13448534630914644279

/-! ## A030757.P3355249602277453010

`A051120(record[n*C(2, a(n-1))])` with `a(0)=1`
-/

namespace A030757.P3355249602277453010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  n * Nat.choose 2 (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051120 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A030757.P3355249602277453010

/-! ## A030757.P872568353413174175

`A051120(record[C(n+1, a(n-1)%n)])` with `a(0)=0`
-/

namespace A030757.P872568353413174175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.choose (n + 1) (f1 (n - 1) % n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051120 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A030757.P872568353413174175

/-! ## A030757.P1036804531211947580

`A051120(A004273(n))`
-/

namespace A030757.P1036804531211947580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051120 (A004273 n).toNat

end

end A030757.P1036804531211947580

/-! ## A030757.P1644712012526157319

`A051120(record[A006257(n)])`
-/

namespace A030757.P1644712012526157319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051120 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030757.P1644712012526157319

/-! ## A030757.P18036344282197454419

`A051120(A004274(n+1))`
-/

namespace A030757.P18036344282197454419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051120 (A004274 (n + 1)).toNat

end

end A030757.P18036344282197454419

/-! ## A030757.P7422664737615009416

`A051120(A004280(n+1))`
-/

namespace A030757.P7422664737615009416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051120 (A004280 (n + 1)).toNat

end

end A030757.P7422664737615009416

/-! ## A030757.P16642140167105656786

`A051120(A004275(n)+1)`
-/

namespace A030757.P16642140167105656786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051120 (A004275 n + 1).toNat

end

end A030757.P16642140167105656786

/-! ## A030757.P18129874798281707455

`A051120(A004277(n)-1)`
-/

namespace A030757.P18129874798281707455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051120 (A004277 n - 1).toNat

end

end A030757.P18129874798281707455

/-! ## A030757.P14036427263747124296

`A051120(comp[A004277(n+1)])`
-/

namespace A030757.P14036427263747124296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051120 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A030757.P14036427263747124296

/-! ## A030757.P8801068211128766972

`A051120(A004275(2*n)/2)`
-/

namespace A030757.P8801068211128766972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051120 (SequenceMachineLib.roundAway ((A004275 (2 * n) : ℚ) / 2)).toNat

end

end A030757.P8801068211128766972

/-! ## A030757.P14080864099897130552

`A051120(record[n*(A000034(n)-1)])`
-/

namespace A030757.P14080864099897130552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000034 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051120 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030757.P14080864099897130552

/-! ## A030757.P8116912675276702953

`A051120(record[n*C(A000034(n), 2)])`
-/

namespace A030757.P8116912675276702953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (A000034 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051120 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A030757.P8116912675276702953

/-! ## A030757.P5069088153219035379

`A051120(record[n/A000034(n+1)])`
-/

namespace A030757.P5069088153219035379
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A000034 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051120 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A030757.P5069088153219035379

/-! ## A030757.P7329112134056758438

`A051120(lt[A267048(n), A267048(n+1)])`
-/

namespace A030757.P7329112134056758438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267048 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051120 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A030757.P7329112134056758438

/-!
# A030758: The second list after the following procedure: starting with a list [1] and an empty list, repeatedly add the distinct values already in both lists in descending order to the second list and add the corresponding frequencies of those values to the first list.

The programs for A030758, there is no canonical definition to state claims against.
-/

/-! ## A030758.P12679908869946629581

`A051120(2*(n+1))`
-/

namespace A030758.P12679908869946629581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051120 (2 * (n + 1))

end

end A030758.P12679908869946629581

/-! ## A030758.P15675736583155973766

`A051120(n+2+n)%(n+2)`
-/

namespace A030758.P15675736583155973766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051120 (n + 2 + n)) (n + 2 : ℤ)

end

end A030758.P15675736583155973766

/-! ## A030758.P10045353539488945452

`or(A000007(n), A051120(A103517(n)))`
-/

namespace A030758.P10045353539488945452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A051120 (A103517 n).toNat)

end

end A030758.P10045353539488945452

/-! ## A030758.P7617960170991293370

`A051120(A103517(n))+A000007(n+1)`
-/

namespace A030758.P7617960170991293370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051120 (A103517 n).toNat + A000007 (n + 1)

end

end A030758.P7617960170991293370

/-! ## A030758.P4375588721522586617

`lcm(n-A004442(n), A051120(A103517(n)))`
-/

namespace A030758.P4375588721522586617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - A004442 n) (A051120 (A103517 n).toNat)

end

end A030758.P4375588721522586617

/-!
# A030762: Positions of records in A030757.

The programs for A030762, there is no canonical definition to state claims against.
-/

/-! ## A030762.P14268013909101711119

`A030712(n+2)-A054977(n)`
-/

namespace A030762.P14268013909101711119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030712 (n + 2) - A054977 n

end

end A030762.P14268013909101711119

/-! ## A030762.P2584961811796633734

`A030712(n+2)-(A000007(n)+1)`
-/

namespace A030762.P2584961811796633734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030712 (n + 2) - (A000007 n + 1)

end

end A030762.P2584961811796633734

/-! ## A030762.P5889782217275616043

`A030712(n+2)-(A057428(n)+2)`
-/

namespace A030762.P5889782217275616043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030712 (n + 2) - (A057428 n + 2)

end

end A030762.P5889782217275616043

/-! ## A030762.P9087222217175039083

`A057427(n)+A030712(n+2)-2`
-/

namespace A030762.P9087222217175039083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (A030712 (n + 2) - 2)

end

end A030762.P9087222217175039083

/-! ## A030762.P17617700218055456061

`∑[A030709(char[1]+1+n)]`
-/

namespace A030762.P17617700218055456061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030709 ((if ∃ j, f2 j = n then 1 else 0) + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030762.P17617700218055456061

/-! ## A030762.P13801535374907746762

`A030709(n+1)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A030762.P13801535374907746762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A030709 (n + 1) + a (n - 1)

end

end A030762.P13801535374907746762

/-! ## A030762.P12633161721075758515

`A057427(n)+∑[A030709(n+1)]`
-/

namespace A030762.P12633161721075758515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030762.P12633161721075758515

/-! ## A030762.P1768337572399695356

`∑[A063524(n)+A030709(n+1)]`
-/

namespace A030762.P1768337572399695356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A030709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030762.P1768337572399695356

/-! ## A030762.P3899280241798590493

`∑[A030709(n+1)]-A057428(n)`
-/

namespace A030762.P3899280241798590493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057428 n

end

end A030762.P3899280241798590493

/-! ## A030762.P14887002191962340422

`∑[A185012(n+1)+A030709(n+1)]`
-/

namespace A030762.P14887002191962340422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 (n + 1) + A030709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030762.P14887002191962340422

/-! ## A030762.P10529253820462125609

`∑[A030709(n+1)+1]-A028310(n)`
-/

namespace A030762.P10529253820462125609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030709 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A028310 n

end

end A030762.P10529253820462125609

/-! ## A030762.P10973330051592661766

`∑[A030709(n+1)]+and(1, A000040(n+1))`
-/

namespace A030762.P10973330051592661766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.land 1 (A000040 (n + 1))

end

end A030762.P10973330051592661766

/-! ## A030762.P6102453079521529334

`A001222(A008578(n+1))+∑[A030709(n+1)]`
-/

namespace A030762.P6102453079521529334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008578 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030762.P6102453079521529334

/-! ## A030762.P13706853029508894918

`A001222(A027746(n+1))+∑[A030709(n+1)]`
-/

namespace A030762.P13706853029508894918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A027746 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030762.P13706853029508894918

/-! ## A030762.P7833703621756960893

`A001222(A027748(n+1))+∑[A030709(n+1)]`
-/

namespace A030762.P7833703621756960893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A027748 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030762.P7833703621756960893

/-! ## A030762.P11549437944707082549

`A001221(A028233(n+1))+∑[A030709(n+1)]`
-/

namespace A030762.P11549437944707082549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A028233 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030762.P11549437944707082549

/-! ## A030762.P8031926670701360229

`∑[A030709(n+1)]+A001221(A034684(n+1))`
-/

namespace A030762.P8031926670701360229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A001221 (A034684 (n + 1)).toNat

end

end A030762.P8031926670701360229

/-!
# A030763: s(n)=1, where s=A030757.

The programs for A030763, there is no canonical definition to state claims against.
-/

/-! ## A030763.P1597716433869474958

`eq[1, A030757(n+1)]+1`
-/

namespace A030763.P1597716433869474958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030757 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030763.P1597716433869474958

/-! ## A030763.P7165943068946916959

`record[A000027(n+1)/A030757(n+1)]`
-/

namespace A030763.P7165943068946916959
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A030757 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030763.P7165943068946916959

/-! ## A030763.P5397748513435392465

`record[A005408(n)-n*A030757(n+1)]`
-/

namespace A030763.P5397748513435392465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (n : ℤ) * A030757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030763.P5397748513435392465

/-! ## A030763.P6965256814599776438

`record[(n+1)/A030709(A030757(n+1)+1)]`
-/

namespace A030763.P6965256814599776438
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A030709 (A030757 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030763.P6965256814599776438

/-! ## A030763.P6331981846509650868

`record[(n+1)/A030757(n+1)]%A132753(n)`
-/

namespace A030763.P6331981846509650868
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A030757 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))) (A132753 n)

end

end A030763.P6331981846509650868

/-! ## A030763.P1296538181084422875

`record[A324347(n)/A030757(A324347(n))]`
-/

namespace A030763.P1296538181084422875
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324347 n : ℚ) / (A030757 (A324347 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030763.P1296538181084422875

/-! ## A030763.P5990009693955613219

`eq[n, A028310(n)*A030757(A028310(n))]`
-/

namespace A030763.P5990009693955613219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A030757 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030763.P5990009693955613219

/-! ## A030763.P6601922581259646824

`eq[1, A051120(A004273(n))]+1`
-/

namespace A030763.P6601922581259646824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051120 (A004273 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030763.P6601922581259646824

/-! ## A030763.P11419569399109577836

`record[A008619(n)/A030757(A008619(n))]`
-/

namespace A030763.P11419569399109577836
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 n : ℚ) / (A030757 (A008619 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030763.P11419569399109577836

/-! ## A030763.P17950504372743087754

`record[A052938(n)/A030757(A052938(n))]`
-/

namespace A030763.P17950504372743087754
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052938 n : ℚ) / (A030757 (A052938 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030763.P17950504372743087754

/-! ## A030763.P2767592183974598311

`record[A003602(n+1)/A030757(A003602(n+1))]`
-/

namespace A030763.P2767592183974598311
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003602 (n + 1) : ℚ) / (A030757 (A003602 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030763.P2767592183974598311

/-! ## A030763.P12709349176896891489

`A003602(record[A016825(n)/A030757(n+1)])`
-/

namespace A030763.P12709349176896891489
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016825 n : ℚ) / (A030757 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A030763.P12709349176896891489

/-! ## A030763.P7174139072743131189

`record[(n+1)/A018252(A030757(n+1)²)]`
-/

namespace A030763.P7174139072743131189
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A018252 (A030757 (n + 1) ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030763.P7174139072743131189

/-!
# A030764: Numbers k such that A030757(k) = 2.

The programs for A030764, there is no canonical definition to state claims against.
-/

/-! ## A030764.P2657540625333450600

`eq[2, A030757(n+1)]+1`
-/

namespace A030764.P2657540625333450600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030757 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030764.P2657540625333450600

/-! ## A030764.P11433078228486423358

`eq[2, A030757(A028310(n))]`
-/

namespace A030764.P11433078228486423358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030757 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030764.P11433078228486423358

/-! ## A030764.P9347764449371070050

`A020725(eq[2, A030757(n+1)])`
-/

namespace A030764.P9347764449371070050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030764.P9347764449371070050

/-! ## A030764.P17151466382076557916

`A065475(eq[2, A030757(n+1)])`
-/

namespace A030764.P17151466382076557916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030764.P17151466382076557916

/-! ## A030764.P5171870633559535285

`A153152(eq[2, A030757(n+1)])`
-/

namespace A030764.P5171870633559535285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030764.P5171870633559535285

/-! ## A030764.P15467620534242579682

`eq[2, A051120(2*n+1)]+2`
-/

namespace A030764.P15467620534242579682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051120 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A030764.P15467620534242579682

/-! ## A030764.P13463979097752171085

`eq[2, A051120(A004274(n))]`
-/

namespace A030764.P13463979097752171085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051120 (A004274 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030764.P13463979097752171085

/-! ## A030764.P16766465552065822462

`eq[2, A030757(A065033(2*n))]`
-/

namespace A030764.P16766465552065822462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030757 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030764.P16766465552065822462

/-! ## A030764.P8684085654919452104

`eq[2, A030757(A233583(n+1))]`
-/

namespace A030764.P8684085654919452104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030757 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030764.P8684085654919452104

/-!
# A030765: Numbers k such that A030757(k) = 3.

The programs for A030765, there is no canonical definition to state claims against.
-/

/-! ## A030765.P1338418488711448595

`eq[3, A030757(n+1)]+1`
-/

namespace A030765.P1338418488711448595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030757 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030765.P1338418488711448595

/-! ## A030765.P9798068218591752705

`eq[3, A030757(A028310(n))]`
-/

namespace A030765.P9798068218591752705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030757 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030765.P9798068218591752705

/-! ## A030765.P1871765465363282874

`A020725(eq[3, A030757(n+1)])`
-/

namespace A030765.P1871765465363282874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030765.P1871765465363282874

/-! ## A030765.P12103642844169749969

`eq[3, A051120(2*n+1)]+2`
-/

namespace A030765.P12103642844169749969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051120 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A030765.P12103642844169749969

/-! ## A030765.P16234599223177486904

`eq[3, A051120(A004274(n))]`
-/

namespace A030765.P16234599223177486904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051120 (A004274 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030765.P16234599223177486904

/-! ## A030765.P13148321689957074600

`eq[3, A030757(A065033(A005843(n)))]`
-/

namespace A030765.P13148321689957074600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030757 (A065033 (A005843 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030765.P13148321689957074600

/-! ## A030765.P9978135429472496421

`eq[3, A030757(A233583(n+1))]`
-/

namespace A030765.P9978135429472496421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030757 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030765.P9978135429472496421

/-!
# A030766: Numbers k such that A030757(k) = 4.

The programs for A030766, there is no canonical definition to state claims against.
-/

/-! ## A030766.P10806046012122042039

`eq[4, A030757(n+1)]+1`
-/

namespace A030766.P10806046012122042039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030757 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030766.P10806046012122042039

/-! ## A030766.P4507513770480623052

`eq[4, A030757(A028310(n))]`
-/

namespace A030766.P4507513770480623052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030757 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030766.P4507513770480623052

/-! ## A030766.P9951664816641995355

`A065475(eq[4, A030757(n+1)])`
-/

namespace A030766.P9951664816641995355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030766.P9951664816641995355

/-! ## A030766.P16600358678547587966

`A153152(eq[4, A030757(n+1)])`
-/

namespace A030766.P16600358678547587966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030766.P16600358678547587966

/-! ## A030766.P10919305456300551052

`eq[4, A051120(A004274(n))]`
-/

namespace A030766.P10919305456300551052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051120 (A004274 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030766.P10919305456300551052

/-! ## A030766.P4955560896895997819

`A153152(eq[4, A051120(A004273(n))])`
-/

namespace A030766.P4955560896895997819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051120 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030766.P4955560896895997819

/-! ## A030766.P13154511346611314352

`eq[4, A030757(A233583(n+1))]`
-/

namespace A030766.P13154511346611314352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030757 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030766.P13154511346611314352

/-!
# A030767: The first list after the following procedure: starting with a list [2] and an empty list, repeatedly add the distinct values already in both lists in descending order to the second list and add the corresponding frequencies of those values to the first list.

The programs for A030767, there is no canonical definition to state claims against.
-/

/-! ## A030767.P14490320115202853211

`A257991(A290337(n+1)+A237593(3*n+4))`
-/

namespace A030767.P14490320115202853211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (A290337 (n + 1) + A237593 (3 * n + 4)).toNat

end

end A030767.P14490320115202853211

/-! ## A030767.P2403223742704270046

`A251721(A132850(n)+A132819(n+1))`
-/

namespace A030767.P2403223742704270046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251721 (A132850 n + A132819 (n + 1)).toNat

end

end A030767.P2403223742704270046

/-! ## A030767.P5165100694062884125

`A070879(A048993(n)*A308198(n+5))`
-/

namespace A030767.P5165100694062884125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070879 (A048993 n * A308198 (n + 5)).toNat

end

end A030767.P5165100694062884125

/-! ## A030767.P5321144469851909912

`A036043(A018917(n)^A228128(n+1))`
-/

namespace A030767.P5321144469851909912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036043 (SequenceMachineLib.roundAway ((A018917 n : ℚ) ^ (A228128 (n + 1) : ℤ))).toNat

end

end A030767.P5321144469851909912

/-! ## A030767.P14939657171307177704

`A330371(∑[A286000(n+1)^A124737(n)]+1)`
-/

namespace A030767.P14939657171307177704
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286000 (n + 1) : ℚ) ^ (A124737 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330371 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A030767.P14939657171307177704

/-!
# A030771: Record values in A030767.

The programs for A030771, there is no canonical definition to state claims against.
-/

/-! ## A030771.P18151540320258361636

`record[A055176(n+1)]`
-/

namespace A030771.P18151540320258361636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030771.P18151540320258361636

/-! ## A030771.P12566049639274627854

`record[A030767(n+1)]`
-/

namespace A030771.P12566049639274627854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030771.P12566049639274627854

/-! ## A030771.P2946407952233826756

`A030767(A030772(n+1))`
-/

namespace A030771.P2946407952233826756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030767 (A030772 (n + 1)).toNat

end

end A030771.P2946407952233826756

/-! ## A030771.P9602551372584684679

`record[A055174(n+1)]`
-/

namespace A030771.P9602551372584684679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030771.P9602551372584684679

/-! ## A030771.P5238798931999016655

`record[A055188(n+1)]`
-/

namespace A030771.P5238798931999016655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030771.P5238798931999016655

/-!
# A030772: Positions of record values in A030767.

The programs for A030772, there is no canonical definition to state claims against.
-/

/-! ## A030772.P2074476222457529539

`A030770(A030771(n+1))`
-/

namespace A030772.P2074476222457529539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030770 (A030771 (n + 1)).toNat

end

end A030772.P2074476222457529539

/-! ## A030772.P6148262085482369713

`A030770(record[A055176(n+1)])`
-/

namespace A030772.P6148262085482369713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030770 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030772.P6148262085482369713

/-! ## A030772.P2359495335468265154

`A030770(record[A030767(n+1)])`
-/

namespace A030772.P2359495335468265154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030770 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030772.P2359495335468265154

/-! ## A030772.P3623105607884051503

`A030770(record[A055174(n+1)])`
-/

namespace A030772.P3623105607884051503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030770 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030772.P3623105607884051503

/-! ## A030772.P13704483616553101445

`A030770(record[A055188(n+1)])`
-/

namespace A030772.P13704483616553101445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030770 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030772.P13704483616553101445

/-!
# A030773: s(k)=1, where s=A030767.

The programs for A030773, there is no canonical definition to state claims against.
-/

/-! ## A030773.P6085117225394115828

`eq[1, A030767(n+1)]+1`
-/

namespace A030773.P6085117225394115828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030767 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030773.P6085117225394115828

/-! ## A030773.P572065524212438824

`record[(n+2)/A030767(n+2)]`
-/

namespace A030773.P572065524212438824
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A030767 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030773.P572065524212438824

/-! ## A030773.P10633644233656180339

`eq[1, A030767(A028310(n))]`
-/

namespace A030773.P10633644233656180339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030767 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030773.P10633644233656180339

/-! ## A030773.P3399836748477694004

`A020725(eq[1, A030767(n+1)])`
-/

namespace A030773.P3399836748477694004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030773.P3399836748477694004

/-! ## A030773.P8532862107443890062

`eq[1, A030767(A000007(n)+n)]`
-/

namespace A030773.P8532862107443890062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030767 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030773.P8532862107443890062

/-! ## A030773.P9236522307898391590

`eq[1, A030767(gcd(n, A008486(n)))]`
-/

namespace A030773.P9236522307898391590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030767 (Int.gcd (n : ℤ) (A008486 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030773.P9236522307898391590

/-! ## A030773.P4263379276106784305

`eq[1, A030767(or(n, A036987(n)))]`
-/

namespace A030773.P4263379276106784305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030767 (Int.lor (n : ℤ) (A036987 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030773.P4263379276106784305

/-! ## A030773.P3675694088482249448

`eq[1, A030767(A065033(2*n))]`
-/

namespace A030773.P3675694088482249448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030767 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030773.P3675694088482249448

/-!
# A030774: Numbers k such that A030767(k) = 2.

The programs for A030774, there is no canonical definition to state claims against.
-/

/-! ## A030774.P13164370571426946097

`eq[2, A030767(n+1)]+1`
-/

namespace A030774.P13164370571426946097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030767 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030774.P13164370571426946097

/-! ## A030774.P13044188585784395668

`eq[2, A030767(A000038(n)+n)]`
-/

namespace A030774.P13044188585784395668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030767 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030774.P13044188585784395668

/-! ## A030774.P14920787819729627252

`eq[2, A030767(A065033(2*n))*A178334(n)]`
-/

namespace A030774.P14920787819729627252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030767 (A065033 (2 * n)).toNat * A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030774.P14920787819729627252

/-!
# A030775: Numbers k such that A030767(k) = 3.

The programs for A030775, there is no canonical definition to state claims against.
-/

/-! ## A030775.P1093886122547230648

`eq[3, A030767(n+1)]+1`
-/

namespace A030775.P1093886122547230648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030767 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030775.P1093886122547230648

/-! ## A030775.P2759808693825939086

`eq[3, A030767(A028310(n))]`
-/

namespace A030775.P2759808693825939086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030767 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030775.P2759808693825939086

/-! ## A030775.P18317081300164258611

`A020725(eq[3, A030767(n+1)])`
-/

namespace A030775.P18317081300164258611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030775.P18317081300164258611

/-! ## A030775.P11645777949640693520

`A065475(eq[3, A030767(n+1)])`
-/

namespace A030775.P11645777949640693520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030775.P11645777949640693520

/-! ## A030775.P7754367099620150393

`eq[3, A030767(A000007(n)+n)]`
-/

namespace A030775.P7754367099620150393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030767 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030775.P7754367099620150393

/-! ## A030775.P15772055888825971312

`eq[3, A030767(or(n, A036987(n)))]`
-/

namespace A030775.P15772055888825971312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030767 (Int.lor (n : ℤ) (A036987 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030775.P15772055888825971312

/-! ## A030775.P3395974578287473206

`eq[3, A030767(A065033(2*n))]`
-/

namespace A030775.P3395974578287473206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030767 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030775.P3395974578287473206

/-! ## A030775.P3556724667515612761

`eq[3, A030767(A233583(n+1))]`
-/

namespace A030775.P3556724667515612761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030767 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030775.P3556724667515612761

/-!
# A030776: Numbers k such that A030767(k) = 4.

The programs for A030776, there is no canonical definition to state claims against.
-/

/-! ## A030776.P15699951378470747299

`eq[4, A030767(C(2, n²)+n)]`
-/

namespace A030776.P15699951378470747299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030767 (Nat.choose 2 (n ^ 2) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030776.P15699951378470747299

/-! ## A030776.P10636351729605185277

`eq[4, A030767(A028310(n))]`
-/

namespace A030776.P10636351729605185277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030767 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030776.P10636351729605185277

/-! ## A030776.P3490442835206832402

`A020725(eq[4, A030767(n+1)])`
-/

namespace A030776.P3490442835206832402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030776.P3490442835206832402

/-! ## A030776.P16542935545578452979

`A065475(eq[4, A030767(n+1)])`
-/

namespace A030776.P16542935545578452979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030776.P16542935545578452979

/-! ## A030776.P10516357167698756802

`eq[4, A030767(A000007(n)+n)]`
-/

namespace A030776.P10516357167698756802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030767 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030776.P10516357167698756802

/-! ## A030776.P17269743128316277695

`eq[4, A030767(or(n, A036987(n)))]`
-/

namespace A030776.P17269743128316277695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030767 (Int.lor (n : ℤ) (A036987 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030776.P17269743128316277695

/-! ## A030776.P11578376929028918362

`eq[4, A030767(A065033(2*n))]`
-/

namespace A030776.P11578376929028918362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030767 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030776.P11578376929028918362

/-! ## A030776.P13508397351792917841

`eq[4, A030767(A233583(n+1))]`
-/

namespace A030776.P13508397351792917841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030767 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030776.P13508397351792917841

/-!
# A030781: Record values in A030777.

The programs for A030781, there is no canonical definition to state claims against.
-/

/-! ## A030781.P3129865177689022808

`record[A055179(n+1)]`
-/

namespace A030781.P3129865177689022808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030781.P3129865177689022808

/-! ## A030781.P18025150529610576200

`record[A055179(A052938(n))]%A048589(n)`
-/

namespace A030781.P18025150529610576200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055179 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A048589 n)

end

end A030781.P18025150529610576200

/-! ## A030781.P3397457353194435765

`record[A055179(A052938(n))^A033999(n)]`
-/

namespace A030781.P3397457353194435765
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055179 (A052938 n).toNat : ℚ) ^ (A033999 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030781.P3397457353194435765

/-! ## A030781.P14311794923790716608

`record[A055179(A008620(n))^A033999(n)]`
-/

namespace A030781.P14311794923790716608
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055179 (A008620 n).toNat : ℚ) ^ (A033999 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030781.P14311794923790716608

/-! ## A030781.P16990294131966441689

`record[A055179(A008620(n))%A016898(n)]`
-/

namespace A030781.P16990294131966441689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055179 (A008620 n).toNat) (A016898 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030781.P16990294131966441689

/-! ## A030781.P308244013097156632

`record[A055179(A008620(n))]%A048589(n)`
-/

namespace A030781.P308244013097156632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055179 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A048589 n)

end

end A030781.P308244013097156632

/-! ## A030781.P9260110967642861172

`A097807(n)²*record[A055179(A008620(n))]`
-/

namespace A030781.P9260110967642861172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055179 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030781.P9260110967642861172

/-! ## A030781.P14687423807629811332

`record[A030777(n+1)]`
-/

namespace A030781.P14687423807629811332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030781.P14687423807629811332

/-! ## A030781.P13835157431781120943

`A030777(A030782(n+1))`
-/

namespace A030781.P13835157431781120943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030777 (A030782 (n + 1)).toNat

end

end A030781.P13835157431781120943

/-! ## A030781.P9741479866202803261

`record[A055177(n+1)]`
-/

namespace A030781.P9741479866202803261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030781.P9741479866202803261

/-!
# A030782: Positions of record values in A030777.

The programs for A030782, there is no canonical definition to state claims against.
-/

/-! ## A030782.P18239318631015058243

`A030780(A030781(n+1))`
-/

namespace A030782.P18239318631015058243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030780 (A030781 (n + 1)).toNat

end

end A030782.P18239318631015058243

/-! ## A030782.P11385257891178867253

`A030780(record[A055179(n+1)])`
-/

namespace A030782.P11385257891178867253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030780 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030782.P11385257891178867253

/-! ## A030782.P7297435265215634418

`A030780(record[A030777(n+1)])`
-/

namespace A030782.P7297435265215634418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030780 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030782.P7297435265215634418

/-! ## A030782.P5755616985204521478

`A030780(record[A055177(n+1)])`
-/

namespace A030782.P5755616985204521478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030780 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030782.P5755616985204521478

/-!
# A030783: s(k)=1, where s=A030777.

The programs for A030783, there is no canonical definition to state claims against.
-/

/-! ## A030783.P9668512316557936936

`eq[1, A030777(n+1)]+1`
-/

namespace A030783.P9668512316557936936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030777 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030783.P9668512316557936936

/-! ## A030783.P7815151304341882764

`record[n/a(A030777(n))]` with `a(0)=2, a(1)=1`
-/

namespace A030783.P7815151304341882764
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  (n : ℚ) / f1 (A030777 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030783.P7815151304341882764

/-! ## A030783.P11656166680184678337

`record[(n+2)/A030777(n+2)]`
-/

namespace A030783.P11656166680184678337
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A030777 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030783.P11656166680184678337

/-! ## A030783.P4101164752773681377

`eq[1, A030777(A028310(n))]`
-/

namespace A030783.P4101164752773681377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030777 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030783.P4101164752773681377

/-! ## A030783.P16200764951169507361

`eq[1, A030777(A000007(n)+n)]`
-/

namespace A030783.P16200764951169507361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030777 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030783.P16200764951169507361

/-! ## A030783.P10395818433903661345

`eq[1, A030777(A065033(2*n))]`
-/

namespace A030783.P10395818433903661345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030777 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030783.P10395818433903661345

/-!
# A030784: s(n)=2, where s=A030777.

The programs for A030784, there is no canonical definition to state claims against.
-/

/-! ## A030784.P10485794423309410633

`eq[2, A030777(n+1)]+1`
-/

namespace A030784.P10485794423309410633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030777 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030784.P10485794423309410633

/-! ## A030784.P15102044102123377692

`record[n/a(A030777(n))]` with `a(0)=3, a(1)=2, a(2)=1`
-/

namespace A030784.P15102044102123377692
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 2, 1] fun n f1 =>
  (n : ℚ) / f1 (A030777 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030784.P15102044102123377692

/-! ## A030784.P11590443376986173313

`eq[2, A030777(A028310(n))]`
-/

namespace A030784.P11590443376986173313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030777 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030784.P11590443376986173313

/-! ## A030784.P12998491164812476565

`eq[2, A030777(A000007(n)+n)]`
-/

namespace A030784.P12998491164812476565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030777 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030784.P12998491164812476565

/-! ## A030784.P454483696031025265

`eq[2, A030777(A065033(2*n))]`
-/

namespace A030784.P454483696031025265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030777 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030784.P454483696031025265

/-! ## A030784.P17863243841829812274

`eq[n/a(A030777(n)), A026741(2*n)]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A030784.P17863243841829812274
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  (n : ℚ) / f1 (A030777 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A030784.P17863243841829812274

/-! ## A030784.P11050305401858261964

`eq[2, A030777(A233583(n+1))]`
-/

namespace A030784.P11050305401858261964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030777 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030784.P11050305401858261964

/-!
# A030785: Numbers k such that A030777(k) = 3.

The programs for A030785, there is no canonical definition to state claims against.
-/

/-! ## A030785.P10040023845246004034

`eq[3, A030777(n+1)]+1`
-/

namespace A030785.P10040023845246004034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030777 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030785.P10040023845246004034

/-! ## A030785.P884627966904099460

`eq[n, n-a(A030777(n))]` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A030785.P884627966904099460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 3] fun n f2 =>
  (n : ℤ) - f2 (A030777 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030785.P884627966904099460

/-! ## A030785.P18132294764982830272

`eq[3, A030777(A000038(n)+n)]`
-/

namespace A030785.P18132294764982830272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030777 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030785.P18132294764982830272

/-!
# A030786: Numbers k such that A030777(k) = 4.

The programs for A030786, there is no canonical definition to state claims against.
-/

/-! ## A030786.P3211456535505509298

`1+eq[4, A030777(n+1)]`
-/

namespace A030786.P3211456535505509298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030777 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030786.P3211456535505509298

/-! ## A030786.P2984619092979999354

`eq[n/a(A030777(n)), n/4]` with `a(0)=1, a(1)=1`
-/

namespace A030786.P2984619092979999354
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n : ℚ) / f1 (A030777 n).toNat

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030786.P2984619092979999354

/-! ## A030786.P7459077387328221980

`eq[4, A030777(A028310(n))]`
-/

namespace A030786.P7459077387328221980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030777 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030786.P7459077387328221980

/-! ## A030786.P15744530551410149803

`A153152(eq[4, A030777(n+1)])`
-/

namespace A030786.P15744530551410149803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030786.P15744530551410149803

/-! ## A030786.P6068437326285986496

`eq[4, A030777(A000007(n)+n)]`
-/

namespace A030786.P6068437326285986496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030777 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030786.P6068437326285986496

/-! ## A030786.P16264812079504178842

`eq[4, A030777(A233583(n+1))]`
-/

namespace A030786.P16264812079504178842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030777 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030786.P16264812079504178842

/-!
# A030788: The second list after the following procedure: starting with a list [4] and an empty list, repeatedly add the distinct values already in both lists in descending order to the second list and add the corresponding frequencies of those values to the first list.

The programs for A030788, there is no canonical definition to state claims against.
-/

/-! ## A030788.P3595480034180225166

`ceil((sqrt(A153342(n)/A228543(n+1))+1)²)`
-/

namespace A030788.P3595480034180225166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt ((A153342 n : ℚ) / (A228543 (n + 1) : ℚ) : ℝ) + 1) ^ 2⌉

end

end A030788.P3595480034180225166

/-! ## A030788.P9921811599633972987

`A030748(A038722(n+1))^2^A326678(n)`
-/

namespace A030788.P9921811599633972987
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030748 (A038722 (n + 1)).toNat : ℝ) ^ ((2 : ℚ) ^ (A326678 n : ℤ) : ℝ)

end

end A030788.P9921811599633972987

/-! ## A030788.P7401705695894635024

`A030748(A038722(n+1))+A010894(2*n+3)`
-/

namespace A030788.P7401705695894635024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030748 (A038722 (n + 1)).toNat + A010894 (2 * n + 3 + 21)

end

end A030788.P7401705695894635024

/-! ## A030788.P11609094057031510713

`A030748(A038722(n+1))%A017342(A000045(n))`
-/

namespace A030788.P11609094057031510713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030748 (A038722 (n + 1)).toNat) (A017342 (A000045 n).toNat)

end

end A030788.P11609094057031510713

/-! ## A030788.P7992426104365007371

`A144412(A004758(n+1))+A030748(A038722(n+1))`
-/

namespace A030788.P7992426104365007371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144412 (A004758 (n + 1)).toNat + A030748 (A038722 (n + 1)).toNat

end

end A030788.P7992426104365007371

/-!
# A030791: Record values in A030787.

The programs for A030791, there is no canonical definition to state claims against.
-/

/-! ## A030791.P16332255390736675767

`record[A055182(n+1)]`
-/

namespace A030791.P16332255390736675767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030791.P16332255390736675767

/-! ## A030791.P3572531450647724037

`record[A030787(n+1)]`
-/

namespace A030791.P3572531450647724037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030791.P3572531450647724037

/-! ## A030791.P10273340400159273934

`A030787(A030792(n+1))`
-/

namespace A030791.P10273340400159273934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030787 (A030792 (n + 1)).toNat

end

end A030791.P10273340400159273934

/-! ## A030791.P5687061046992373443

`record[A030748(n+1)]`
-/

namespace A030791.P5687061046992373443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030791.P5687061046992373443

/-! ## A030791.P370690950781195574

`record[A055180(n+1)]`
-/

namespace A030791.P370690950781195574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030791.P370690950781195574

/-! ## A030791.P15200391525589764905

`record[A055190(n+1)]`
-/

namespace A030791.P15200391525589764905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030791.P15200391525589764905

/-! ## A030791.P12642395738838573332

`record[A030788(A030788(2*n+1)+n)]`
-/

namespace A030791.P12642395738838573332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030788 (A030788 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030791.P12642395738838573332

/-!
# A030792: Positions of record values in A030787.

The programs for A030792, there is no canonical definition to state claims against.
-/

/-! ## A030792.P1464171396341362060

`A030790(A030791(n+1))`
-/

namespace A030792.P1464171396341362060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030790 (A030791 (n + 1)).toNat

end

end A030792.P1464171396341362060

/-! ## A030792.P1951212733013961880

`A030790(record[A055182(n+1)])`
-/

namespace A030792.P1951212733013961880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030790 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030792.P1951212733013961880

/-! ## A030792.P658832161264933179

`A030790(record[A030787(n+1)])`
-/

namespace A030792.P658832161264933179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030790 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030792.P658832161264933179

/-! ## A030792.P2780733863655543508

`A030790(record[A030748(n+1)])`
-/

namespace A030792.P2780733863655543508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030790 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030792.P2780733863655543508

/-! ## A030792.P16928687878418440051

`A030790(record[A055180(n+1)])`
-/

namespace A030792.P16928687878418440051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030790 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030792.P16928687878418440051

/-! ## A030792.P3721428457468935085

`A030790(record[A055190(n+1)])`
-/

namespace A030792.P3721428457468935085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030790 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030792.P3721428457468935085

/-!
# A030793: s(k)=1, where s=A030787.

The programs for A030793, there is no canonical definition to state claims against.
-/

/-! ## A030793.P1069179496534256295

`eq[1, A030787(n+1)]+1`
-/

namespace A030793.P1069179496534256295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030787 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030793.P1069179496534256295

/-! ## A030793.P133831831406116700

`eq[1, A030787(A028310(n))]`
-/

namespace A030793.P133831831406116700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030787 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030793.P133831831406116700

/-! ## A030793.P1467957951368848101

`A020725(eq[1, A030787(n+1)])`
-/

namespace A030793.P1467957951368848101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030793.P1467957951368848101

/-! ## A030793.P236943633312046975

`A020725(lt[A030787(n+1), 2])`
-/

namespace A030793.P236943633312046975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030787 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A030793.P236943633312046975

/-! ## A030793.P9825295029837739648

`eq[1, A030787(A000007(n)+n)]`
-/

namespace A030793.P9825295029837739648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030787 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030793.P9825295029837739648

/-! ## A030793.P7500490599269857903

`eq[1, A030787(A065033(2*n))]`
-/

namespace A030793.P7500490599269857903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030787 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030793.P7500490599269857903

/-!
# A030794: s(n) = 2, where s = A030787.

The programs for A030794, there is no canonical definition to state claims against.
-/

/-! ## A030794.P6655402810453806855

`eq[2, A030787(n+1)]+1`
-/

namespace A030794.P6655402810453806855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030787 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030794.P6655402810453806855

/-! ## A030794.P12213976349240487399

`eq[2, A030787(A028310(n))]`
-/

namespace A030794.P12213976349240487399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030787 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030794.P12213976349240487399

/-! ## A030794.P3462708949116817173

`A020725(eq[2, A030787(n+1)])`
-/

namespace A030794.P3462708949116817173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030794.P3462708949116817173

/-! ## A030794.P2288714482520919833

`A065475(eq[2, A030787(n+1)])`
-/

namespace A030794.P2288714482520919833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030794.P2288714482520919833

/-! ## A030794.P591271995716903641

`eq[2, A030787(A000007(n)+n)]`
-/

namespace A030794.P591271995716903641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030787 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030794.P591271995716903641

/-! ## A030794.P14509581830720120687

`eq[2, A030787(A000038(n)+n)]`
-/

namespace A030794.P14509581830720120687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030787 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030794.P14509581830720120687

/-! ## A030794.P4693116588100943077

`eq[2, A030787(A065033(2*n))]`
-/

namespace A030794.P4693116588100943077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030787 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030794.P4693116588100943077

/-! ## A030794.P8607220824622794251

`eq[2, A030787(A233583(n+1))]`
-/

namespace A030794.P8607220824622794251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030787 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030794.P8607220824622794251

/-!
# A030795: Numbers k such that A030787(k) = 3.

The programs for A030795, there is no canonical definition to state claims against.
-/

/-! ## A030795.P13909042483583043862

`eq[3, A030787(n+1)]+1`
-/

namespace A030795.P13909042483583043862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030787 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030795.P13909042483583043862

/-! ## A030795.P3491024426883760987

`eq[3, A030787(A028310(n))]`
-/

namespace A030795.P3491024426883760987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030787 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030795.P3491024426883760987

/-! ## A030795.P12774948011287198019

`A020725(eq[3, A030787(n+1)])`
-/

namespace A030795.P12774948011287198019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030795.P12774948011287198019

/-! ## A030795.P447910435286358090

`A065475(eq[3, A030787(n+1)])`
-/

namespace A030795.P447910435286358090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030795.P447910435286358090

/-! ## A030795.P2951937614884726601

`eq[3, A030787(A233583(n+1))]`
-/

namespace A030795.P2951937614884726601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030787 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030795.P2951937614884726601

/-!
# A030796: Numbers k such that A030787(k)=4.

The programs for A030796, there is no canonical definition to state claims against.
-/

/-! ## A030796.P16298585505775696481

`eq[4, A030787(n+1)]+1`
-/

namespace A030796.P16298585505775696481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030787 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030796.P16298585505775696481

/-! ## A030796.P3924961505970720942

`eq[4, A030787(A000038(n)+n)]`
-/

namespace A030796.P3924961505970720942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030787 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030796.P3924961505970720942

/-! ## A030796.P15555869691675484194

`eq[4, A030787(abs(A000038(n)-n))]`
-/

namespace A030796.P15555869691675484194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030787 |A000038 n - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030796.P15555869691675484194

/-!
# A030799: a(n) = floor(exp(1/2)*n!).

The programs for A030799, the canonical program `A030799.P7617614612413509465` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030799 has offset 1).

The definition of A030799 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(exp(1/2)*(n+1)!)` (program `A030799.P7617614612413509465`, by `A030799.P7617614612413509465.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A030799.P7617614612413509465

`floor(exp(1/2)*(n+1)!)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030799

/-- `floor(exp(1/2)*(n+1)!)` -/
def P7617614612413509465.Spec : Prop :=
  ∀ n, P7617614612413509465.a n = A030799 (n + 1)

theorem P7617614612413509465.correct : P7617614612413509465.Spec := by
  intro n
  simp only [A030799, Nat.add_sub_cancel]

end A030799

/-! ## A030799.P7989899278777952158

`floor((n+1)!*sqrt(e))`
-/

namespace A030799.P7989899278777952158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial (n + 1) : ℝ) * Real.sqrt (Real.exp 1)⌋

end

end A030799.P7989899278777952158

namespace A030799

/-- `floor((n+1)!*sqrt(e))` -/
def P7989899278777952158.Spec : Prop :=
  ∀ n, P7989899278777952158.a n = A030799 (n + 1)

end A030799

/-! ## A030799.P11561921866990192328

`floor(sqrt(e)*∏[n+1])`
-/

namespace A030799.P11561921866990192328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.exp 1) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋

end

end A030799.P11561921866990192328

namespace A030799

/-- `floor(sqrt(e)*∏[n+1])` -/
def P11561921866990192328.Spec : Prop :=
  ∀ n, P11561921866990192328.a n = A030799 (n + 1)

end A030799

/-! ## A030799.P4971300099193375881

`ceil(sqrt(e)*(n+1)!)-1`
-/

namespace A030799.P4971300099193375881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.exp 1) * (Nat.factorial (n + 1) : ℝ)⌉ - 1

end

end A030799.P4971300099193375881

namespace A030799

/-- `ceil(sqrt(e)*(n+1)!)-1` -/
def P4971300099193375881.Spec : Prop :=
  ∀ n, P4971300099193375881.a n = A030799 (n + 1)

end A030799

/-! ## A030799.P13352311541451360057

`record[floor(sqrt(e)*A233543(n))]`
-/

namespace A030799.P13352311541451360057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.exp 1) * (A233543 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030799.P13352311541451360057

namespace A030799

/-- `record[floor(sqrt(e)*A233543(n))]` -/
def P13352311541451360057.Spec : Prop :=
  ∀ n, P13352311541451360057.a n = A030799 (n + 1)

end A030799

/-! ## A030799.P13683670986799476978

`ceil(A321804(A089309(n))+sqrt(e)*(n+1)!)`
-/

namespace A030799.P13683670986799476978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A321804 (A089309 n).toNat : ℝ) + Real.sqrt (Real.exp 1) * (Nat.factorial (n + 1) : ℝ)⌉

end

end A030799.P13683670986799476978

namespace A030799

/-- `ceil(A321804(A089309(n))+sqrt(e)*(n+1)!)` -/
def P13683670986799476978.Spec : Prop :=
  ∀ n, P13683670986799476978.a n = A030799 (n + 1)

end A030799

