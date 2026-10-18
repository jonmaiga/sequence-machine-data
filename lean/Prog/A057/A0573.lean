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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B009.C001
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
import Seq.Opaque.C025

/-!
# A057300: Binary counter with odd/even bit positions swapped; base-4 counter with 1's replaced by 2's and vice versa.

The programs for A057300, the canonical program `A057300.P13658334341324739257` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057300 has offset 0).

The definition of A057300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057300.P3994638618730527518

`A000695(A059906(n))+2*A000695(A059905(n))`
-/

namespace A057300.P3994638618730527518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A059906 n).toNat + 2 * A000695 (A059905 n).toNat

end

end A057300.P3994638618730527518

namespace A057300

/-- `A000695(A059906(n))+2*A000695(A059905(n))` -/
def P3994638618730527518.Spec : Prop :=
  ∀ n, P3994638618730527518.a n = A057300 n

end A057300

/-! ## A057300.P13658334341324739257

`floor(n/2)+2*(n-a(floor(n/2)))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057300

/-- `floor(n/2)+2*(n-a(floor(n/2)))` -/
def P13658334341324739257.Spec : Prop :=
  ∀ n, P13658334341324739257.a n = A057300 n

theorem P13658334341324739257.correct : P13658334341324739257.Spec := by
  intro n
  simp only [A057300]

end A057300

/-! ## A057300.P17840366363611749284

`3*A380110(n)-n`
-/

namespace A057300.P17840366363611749284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A380110 n - (n : ℤ)

end

end A057300.P17840366363611749284

namespace A057300

/-- `3*A380110(n)-n` -/
def P17840366363611749284.Spec : Prop :=
  ∀ n, P17840366363611749284.a n = A057300 n

end A057300

/-! ## A057300.P744947982061216906

`A004468(A048647(n))`
-/

namespace A057300.P744947982061216906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A048647 n).toNat

end

end A057300.P744947982061216906

namespace A057300

/-- `A004468(A048647(n))` -/
def P744947982061216906.Spec : Prop :=
  ∀ n, P744947982061216906.a n = A057300 n

end A057300

/-! ## A057300.P13133179505069020784

`A048647(A006015(n))`
-/

namespace A057300.P13133179505069020784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048647 (A006015 n).toNat

end

end A057300.P13133179505069020784

namespace A057300

/-- `A048647(A006015(n))` -/
def P13133179505069020784.Spec : Prop :=
  ∀ n, P13133179505069020784.a n = A057300 n

end A057300

/-! ## A057300.P2371641805637297375

`A006015(A163241(n))`
-/

namespace A057300.P2371641805637297375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (A163241 n).toNat

end

end A057300.P2371641805637297375

namespace A057300

/-- `A006015(A163241(n))` -/
def P2371641805637297375.Spec : Prop :=
  ∀ n, P2371641805637297375.a n = A057300 n

end A057300

/-! ## A057300.P1100608608383471979

`A003188(A300839(n))`
-/

namespace A057300.P1100608608383471979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A300839 n).toNat

end

end A057300.P1100608608383471979

namespace A057300

/-- `A003188(A300839(n))` -/
def P1100608608383471979.Spec : Prop :=
  ∀ n, P1100608608383471979.a n = A057300 n

end A057300

/-! ## A057300.P12691026011347491196

`A300838(A006068(n))`
-/

namespace A057300.P12691026011347491196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300838 (A006068 n).toNat

end

end A057300.P12691026011347491196

namespace A057300

/-- `A300838(A006068(n))` -/
def P12691026011347491196.Spec : Prop :=
  ∀ n, P12691026011347491196.a n = A057300 n

end A057300

/-! ## A057300.P16292710776724621896

`A380110(n)+A063694(n)`
-/

namespace A057300.P16292710776724621896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380110 n + A063694 n

end

end A057300.P16292710776724621896

namespace A057300

/-- `A380110(n)+A063694(n)` -/
def P16292710776724621896.Spec : Prop :=
  ∀ n, P16292710776724621896.a n = A057300 n

end A057300

/-! ## A057300.P13712474443761348686

`xor(A004468(n), A063694(n))`
-/

namespace A057300.P13712474443761348686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004468 n) (A063694 n)

end

end A057300.P13712474443761348686

namespace A057300

/-- `xor(A004468(n), A063694(n))` -/
def P13712474443761348686.Spec : Prop :=
  ∀ n, P13712474443761348686.a n = A057300 n

end A057300

/-! ## A057300.P2462793753052374219

`xor(A006015(n), A063695(n))`
-/

namespace A057300.P2462793753052374219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006015 n) (A063695 n)

end

end A057300.P2462793753052374219

namespace A057300

/-- `xor(A006015(n), A063695(n))` -/
def P2462793753052374219.Spec : Prop :=
  ∀ n, P2462793753052374219.a n = A057300 n

end A057300

/-! ## A057300.P4812947181380042875

`xor(A048647(n), A163241(n))`
-/

namespace A057300.P4812947181380042875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A048647 n) (A163241 n)

end

end A057300.P4812947181380042875

namespace A057300

/-- `xor(A048647(n), A163241(n))` -/
def P4812947181380042875.Spec : Prop :=
  ∀ n, P4812947181380042875.a n = A057300 n

end A057300

/-! ## A057300.P14449048105152083600

`(A006015(A004514(n))+n)/2`
-/

namespace A057300.P14449048105152083600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006015 (A004514 n).toNat + (n : ℤ) : ℚ) / 2

end

end A057300.P14449048105152083600

namespace A057300

/-- `(A006015(A004514(n))+n)/2` -/
def P14449048105152083600.Spec : Prop :=
  ∀ n, P14449048105152083600.a n = (A057300 n : ℚ)

end A057300

/-! ## A057300.P11947986251354741899

`2*n-A001196(A059906(n))`
-/

namespace A057300.P11947986251354741899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A001196 (A059906 n).toNat

end

end A057300.P11947986251354741899

namespace A057300

/-- `2*n-A001196(A059906(n))` -/
def P11947986251354741899.Spec : Prop :=
  ∀ n, P11947986251354741899.a n = A057300 n

end A057300

/-! ## A057300.P17217478899656782340

`(A001196(A059905(n))+n)/2`
-/

namespace A057300.P17217478899656782340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001196 (A059905 n).toNat + (n : ℤ) : ℚ) / 2

end

end A057300.P17217478899656782340

namespace A057300

/-- `(A001196(A059905(n))+n)/2` -/
def P17217478899656782340.Spec : Prop :=
  ∀ n, P17217478899656782340.a n = (A057300 n : ℚ)

end A057300

/-! ## A057300.P11718516386534637918

`A004514(n)+A063695(n)/2`
-/

namespace A057300.P11718516386534637918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004514 n : ℚ) + (A063695 n : ℚ) / 2

end

end A057300.P11718516386534637918

namespace A057300

/-- `A004514(n)+A063695(n)/2` -/
def P11718516386534637918.Spec : Prop :=
  ∀ n, P11718516386534637918.a n = (A057300 n : ℚ)

end A057300

/-! ## A057300.P13788715214273741523

`A380110(n)+n-A063695(n)`
-/

namespace A057300.P13788715214273741523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380110 n + ((n : ℤ) - A063695 n)

end

end A057300.P13788715214273741523

namespace A057300

/-- `A380110(n)+n-A063695(n)` -/
def P13788715214273741523.Spec : Prop :=
  ∀ n, P13788715214273741523.a n = A057300 n

end A057300

/-! ## A057300.P13251044550715113364

`A300838(A302844(A302845(n)))`
-/

namespace A057300.P13251044550715113364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300838 (A302844 (A302845 n).toNat).toNat

end

end A057300.P13251044550715113364

namespace A057300

/-- `A300838(A302844(A302845(n)))` -/
def P13251044550715113364.Spec : Prop :=
  ∀ n, P13251044550715113364.a n = A057300 n

end A057300

/-! ## A057300.P1841916662262587339

`A004514(n)+A000695(A059906(n))`
-/

namespace A057300.P1841916662262587339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004514 n + A000695 (A059906 n).toNat

end

end A057300.P1841916662262587339

namespace A057300

/-- `A004514(n)+A000695(A059906(n))` -/
def P1841916662262587339.Spec : Prop :=
  ∀ n, P1841916662262587339.a n = A057300 n

end A057300

/-! ## A057300.P13650908381762250810

`A063694(A004526(n))+A004514(n)`
-/

namespace A057300.P13650908381762250810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063694 (A004526 n).toNat + A004514 n

end

end A057300.P13650908381762250810

namespace A057300

/-- `A063694(A004526(n))+A004514(n)` -/
def P13650908381762250810.Spec : Prop :=
  ∀ n, P13650908381762250810.a n = A057300 n

end A057300

/-!
# A057301: Binary counter with bit positions permuted in increasing length cycles: 0;2,1;5,3,4;9,6,7,8,...

The programs for A057301, there is no canonical definition to state claims against.
-/

/-! ## A057301.P11940868745599083796

`A344531(n*A007061(A157156(n)))`
-/

namespace A057301.P11940868745599083796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344531 ((n : ℤ) * A007061 (A157156 n).toNat).toNat

end

end A057301.P11940868745599083796

/-! ## A057301.P14955997619891702139

`A344531(n*A101211(A174410(n)))`
-/

namespace A057301.P14955997619891702139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344531 ((n : ℤ) * A101211 (A174410 n).toNat).toNat

end

end A057301.P14955997619891702139

/-! ## A057301.P2246805489566669563

`A344531(n)/A007061(A157156(n))`
-/

namespace A057301.P2246805489566669563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344531 n : ℚ) / (A007061 (A157156 n).toNat : ℚ)

end

end A057301.P2246805489566669563

/-! ## A057301.P7014733012286194289

`A344531(n)/A101211(A174410(n))`
-/

namespace A057301.P7014733012286194289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344531 n : ℚ) / (A101211 (A174410 n).toNat : ℚ)

end

end A057301.P7014733012286194289

/-!
# A057302: Numbers n such that n | 5^n + 4^n + 1.

The programs for A057302, there is no canonical definition to state claims against.
-/

/-! ## A057302.P14201572970340090176

`eq[A220235(n+1), A341411(n+1)]+1`
-/

namespace A057302.P14201572970340090176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341411 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A057302.P14201572970340090176

/-!
# A057303: Numbers n such that the number of distinct digits in n is a digit of n.

The programs for A057303, there is no canonical definition to state claims against.
-/

/-! ## A057303.P5643677026993966486

`record[A184992(n+1)%A045544(n+1)]`
-/

namespace A057303.P5643677026993966486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184992 (n + 1)) (A045544 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057303.P5643677026993966486

/-! ## A057303.P14865224317100649553

`record[A107353(n+2)%A251057(n+1)]`
-/

namespace A057303.P14865224317100649553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107353 (n + 2)) (A251057 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057303.P14865224317100649553

/-! ## A057303.P8208495669665162163

`record[A107353(n+2)]%A135978(3*(n+1))`
-/

namespace A057303.P8208495669665162163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107353 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A135978 (3 * (n + 1)))

end

end A057303.P8208495669665162163

/-!
# A057304: Coordination sequence T1 for Zeolite Code MTF.

The programs for A057304, there is no canonical definition to state claims against.
-/

/-! ## A057304.P11236630926621372382

`∑[A106744(A333219(n+1)²)]`
-/

namespace A057304.P11236630926621372382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (A333219 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057304.P11236630926621372382

/-! ## A057304.P14917278363406728417

`∑[A106744(A345424(n+1)²)]`
-/

namespace A057304.P14917278363406728417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (A345424 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057304.P14917278363406728417

/-! ## A057304.P7376914350384374594

`∑[∑[A126013(A000792(2*n))]]`
-/

namespace A057304.P7376914350384374594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126013 (A000792 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057304.P7376914350384374594

/-!
# A057308: Coordination sequence T5 for Zeolite Code MTF.

The programs for A057308, there is no canonical definition to state claims against.
-/

/-! ## A057308.P16576069742116647260

`A241417(A267408(n+1))+A008253(n)`
-/

namespace A057308.P16576069742116647260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241417 (A267408 (n + 1)).toNat + A008253 n

end

end A057308.P16576069742116647260

/-!
# A057312: Coordination sequence T1 for Zeolite Code SAS.

The programs for A057312, there is no canonical definition to state claims against.
-/

/-! ## A057312.P6121842917772677281

`∑[∑[A033923(A249549(n+1))]]`
-/

namespace A057312.P6121842917772677281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033923 (A249549 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057312.P6121842917772677281

/-! ## A057312.P16068350051567718582

`∑[∑[A342263(A215429(n+1))]]`
-/

namespace A057312.P16068350051567718582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342263 (A215429 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057312.P16068350051567718582

/-! ## A057312.P11500052642403714045

`∑[∑[A317713(A134592(n+2))]]`
-/

namespace A057312.P11500052642403714045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317713 (A134592 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057312.P11500052642403714045

/-! ## A057312.P9456295304029994427

`A007077(n+1)-A153247(A086246(n))`
-/

namespace A057312.P9456295304029994427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007077 (n + 1) - A153247 (A086246 n).toNat

end

end A057312.P9456295304029994427

/-!
# A057314: Coordination sequence T1 for Zeolite Code SAV.

The programs for A057314, there is no canonical definition to state claims against.
-/

/-! ## A057314.P12099144712764613461

`or(A008002(n), A083894(A007999(n)))`
-/

namespace A057314.P12099144712764613461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008002 n) (A083894 (A007999 n).toNat)

end

end A057314.P12099144712764613461

/-! ## A057314.P1133093268216214998

`or(A008002(n), A230403(A001006(n)))`
-/

namespace A057314.P1133093268216214998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008002 n) (A230403 (A001006 n).toNat)

end

end A057314.P1133093268216214998

/-! ## A057314.P512640802637985519

`A267145(A267266(n+1))+A008002(n)`
-/

namespace A057314.P512640802637985519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267145 (A267266 (n + 1)).toNat + A008002 n

end

end A057314.P512640802637985519

/-! ## A057314.P4778974831867811213

`or(A008002(n), A254651(A002805(n+1)))`
-/

namespace A057314.P4778974831867811213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008002 n) (A254651 (A002805 (n + 1)).toNat)

end

end A057314.P4778974831867811213

/-!
# A057315: Coordination sequence T2 for Zeolite Code SAV.

The programs for A057315, there is no canonical definition to state claims against.
-/

/-! ## A057315.P12844432098336739571

`∑[∑[A091935(A161142(n+1))]]`
-/

namespace A057315.P12844432098336739571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091935 (A161142 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057315.P12844432098336739571

/-! ## A057315.P9464994093241990561

`∑[∑[A001221(A126569(n))+1]]`
-/

namespace A057315.P9464994093241990561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A126569 n).toNat + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057315.P9464994093241990561

/-! ## A057315.P11948057018123964087

`∑[∑[A332992(A333026(2*n+3))]]`
-/

namespace A057315.P11948057018123964087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332992 (A333026 (2 * n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057315.P11948057018123964087

/-! ## A057315.P13697193515018079959

`∑[∑[A318928(A052945(n))]]`
-/

namespace A057315.P13697193515018079959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318928 (A052945 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057315.P13697193515018079959

/-!
# A057316: Coordination sequence T3 for Zeolite Code SAV.

The programs for A057316, there is no canonical definition to state claims against.
-/

/-! ## A057316.P8030733070231546420

`∑[∑[A005811(A123432(n+1))]]`
-/

namespace A057316.P8030733070231546420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A123432 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057316.P8030733070231546420

/-! ## A057316.P6633110745116245852

`∑[∑[A274036(A107633(n+1))]]`
-/

namespace A057316.P6633110745116245852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274036 (A107633 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057316.P6633110745116245852

/-!
# A057319: Coordination sequence T3 for Zeolite Code SFE.

The programs for A057319, there is no canonical definition to state claims against.
-/

/-! ## A057319.P12477999100324320886

`∑[∑[A299918(A150702(n))]]`
-/

namespace A057319.P12477999100324320886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299918 (A150702 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057319.P12477999100324320886

/-! ## A057319.P4957319197338540846

`A002024(∑[A087163(n+1)]²)`
-/

namespace A057319.P4957319197338540846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A057319.P4957319197338540846

/-! ## A057319.P11701684806763026324

`A123578(∑[A087163(n+1)]²)`
-/

namespace A057319.P11701684806763026324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A057319.P11701684806763026324

/-!
# A057320: Coordination sequence T4 for Zeolite Code SFE.

The programs for A057320, there is no canonical definition to state claims against.
-/

/-! ## A057320.P6085076905233111306

`A301209(n)-A285097(A002467(n))`
-/

namespace A057320.P6085076905233111306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301209 n - A285097 (A002467 n).toNat

end

end A057320.P6085076905233111306

/-!
# A057324: First member of a prime triple in a p^2 + p - 1 progression.

The programs for A057324, there is no canonical definition to state claims against.
-/

/-! ## A057324.P1044709416959930493

`A047679(C(or(1, 3*n), comp[xor(n, 2*n)]))`
-/

namespace A057324.P1044709416959930493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047679 (Nat.choose (Nat.lor 1 (3 * n)) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A057324.P1044709416959930493

/-! ## A057324.P8848915597840984791

`A133956(A237352(n+1))`
-/

namespace A057324.P8848915597840984791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133956 (A237352 (n + 1)).toNat

end

end A057324.P8848915597840984791

/-!
# A057326: First member of a prime triple in a 2p-1 progression.

The programs for A057326, the canonical program `A057326.P7475947621898127695` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057326 has offset 1).

The definition of A057326 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 883 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057326.P2242969854830351433

`p?[A123998(n+1)+1]`
-/

namespace A057326.P2242969854830351433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123998 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057326.P2242969854830351433

namespace A057326

/-- `p?[A123998(n+1)+1]` -/
def P2242969854830351433.Spec : Prop :=
  ∀ n, P2242969854830351433.a n = A057326 (n + 1)

end A057326

/-! ## A057326.P15543893220408575765

`p?[A105610(n+1)+2]`
-/

namespace A057326.P15543893220408575765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105610 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057326.P15543893220408575765

namespace A057326

/-- `p?[A105610(n+1)+2]` -/
def P15543893220408575765.Spec : Prop :=
  ∀ n, P15543893220408575765.a n = A057326 (n + 1)

end A057326

/-! ## A057326.P7475947621898127695

`p?[ceil(A005382(n+1)/2)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A057326

/-- `p?[ceil(A005382(n+1)/2)]` -/
def P7475947621898127695.Spec : Prop :=
  ∀ n, P7475947621898127695.a n = A057326 (n + 1)

theorem P7475947621898127695.correct : P7475947621898127695.Spec := by
  intro n
  simp only [A057326, Nat.add_sub_cancel]

end A057326

/-! ## A057326.P8487537942568610723

`p?[ceil(A005383(n+1)/4)]`
-/

namespace A057326.P8487537942568610723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005383 (n + 1) : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057326.P8487537942568610723

namespace A057326

/-- `p?[ceil(A005383(n+1)/4)]` -/
def P8487537942568610723.Spec : Prop :=
  ∀ n, P8487537942568610723.a n = A057326 (n + 1)

end A057326

/-! ## A057326.P14902435001306231188

`p?[ceil(A077068(n+1)/4)]`
-/

namespace A057326.P14902435001306231188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077068 (n + 1) : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057326.P14902435001306231188

namespace A057326

/-- `p?[ceil(A077068(n+1)/4)]` -/
def P14902435001306231188.Spec : Prop :=
  ∀ n, P14902435001306231188.a n = A057326 (n + 1)

end A057326

/-! ## A057326.P14047481597360752849

`∩[A005382(n+1), A157978(n+1)]`
-/

namespace A057326.P14047481597360752849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057326.P14047481597360752849

namespace A057326

/-- `∩[A005382(n+1), A157978(n+1)]` -/
def P14047481597360752849.Spec : Prop :=
  ∀ n, (P14047481597360752849.a n : ℤ) = A057326 (n + 1)

end A057326

/-! ## A057326.P18018775675756024151

`∩[A157978(n+1), A174568(n+1)]`
-/

namespace A057326.P18018775675756024151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057326.P18018775675756024151

namespace A057326

/-- `∩[A157978(n+1), A174568(n+1)]` -/
def P18018775675756024151.Spec : Prop :=
  ∀ n, (P18018775675756024151.a n : ℤ) = A057326 (n + 1)

end A057326

/-! ## A057326.P14639651556282502646

`∩[A157978(n+1), A265394(n+1)]`
-/

namespace A057326.P14639651556282502646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057326.P14639651556282502646

namespace A057326

/-- `∩[A157978(n+1), A265394(n+1)]` -/
def P14639651556282502646.Spec : Prop :=
  ∀ n, (P14639651556282502646.a n : ℤ) = A057326 (n + 1)

end A057326

/-! ## A057326.P16765312922610338467

`∩[A157978(n+1), A384020(n+1)]`
-/

namespace A057326.P16765312922610338467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057326.P16765312922610338467

namespace A057326

/-- `∩[A157978(n+1), A384020(n+1)]` -/
def P16765312922610338467.Spec : Prop :=
  ∀ n, (P16765312922610338467.a n : ℤ) = A057326 (n + 1)

end A057326

/-! ## A057326.P3467845883254339961

`∩[A068080(n+1), A157978(n+1)]`
-/

namespace A057326.P3467845883254339961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057326.P3467845883254339961

namespace A057326

/-- `∩[A068080(n+1), A157978(n+1)]` -/
def P3467845883254339961.Spec : Prop :=
  ∀ n, (P3467845883254339961.a n : ℤ) = A057326 (n + 1)

end A057326

/-! ## A057326.P14193490704890243201

`record[A020639(A105610(n+1)+2)]`
-/

namespace A057326.P14193490704890243201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A105610 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057326.P14193490704890243201

namespace A057326

/-- `record[A020639(A105610(n+1)+2)]` -/
def P14193490704890243201.Spec : Prop :=
  ∀ n, P14193490704890243201.a n = A057326 (n + 1)

end A057326

/-! ## A057326.P2723066737368760083

`p?[A111333(A137288(n+1))]`
-/

namespace A057326.P2723066737368760083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (A137288 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057326.P2723066737368760083

namespace A057326

/-- `p?[A111333(A137288(n+1))]` -/
def P2723066737368760083.Spec : Prop :=
  ∀ n, P2723066737368760083.a n = A057326 (n + 1)

end A057326

/-! ## A057326.P15649652647684198457

`∩[A006254(n+1), A157978(n+1)]`
-/

namespace A057326.P15649652647684198457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057326.P15649652647684198457

namespace A057326

/-- `∩[A006254(n+1), A157978(n+1)]` -/
def P15649652647684198457.Spec : Prop :=
  ∀ n, (P15649652647684198457.a n : ℤ) = A057326 (n + 1)

end A057326

/-! ## A057326.P15442317299839586522

`∩[A111333(n+1), A157978(n+1)]`
-/

namespace A057326.P15442317299839586522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057326.P15442317299839586522

namespace A057326

/-- `∩[A111333(n+1), A157978(n+1)]` -/
def P15442317299839586522.Spec : Prop :=
  ∀ n, (P15442317299839586522.a n : ℤ) = A057326 (n + 1)

end A057326

/-! ## A057326.P8921955895470319485

`p?[A014682(A005382(n+2)+1)]`
-/

namespace A057326.P8921955895470319485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A005382 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057326.P8921955895470319485

namespace A057326

/-- `p?[A014682(A005382(n+2)+1)]` -/
def P8921955895470319485.Spec : Prop :=
  ∀ n, P8921955895470319485.a n = A057326 (n + 1)

end A057326

/-!
# A057327: First member of a prime quadruple in a 2p-1 progression.

The programs for A057327, there is no canonical definition to state claims against.
-/

/-! ## A057327.P6542904978243947073

`2*A124412(n+1)+1`
-/

namespace A057327.P6542904978243947073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124412 (n + 1) + 1

end

end A057327.P6542904978243947073

/-! ## A057327.P5158150842446573666

`A124412(n+1)+A124412(n+1)-A057428(A020915(n))`
-/

namespace A057327.P5158150842446573666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124412 (n + 1) + (A124412 (n + 1) - A057428 (A020915 n).toNat)

end

end A057327.P5158150842446573666

/-! ## A057327.P9517655008630948497

`A124412(n+1)+A124412(n+1)+A000035(A053575(n+1))`
-/

namespace A057327.P9517655008630948497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124412 (n + 1) + (A124412 (n + 1) + A000035 (A053575 (n + 1)).toNat)

end

end A057327.P9517655008630948497

/-! ## A057327.P7720919933825755059

`A124412(n+1)+A124412(n+1)-A008683(A086006(n+1))`
-/

namespace A057327.P7720919933825755059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124412 (n + 1) + (A124412 (n + 1) - A008683 (A086006 (n + 1)).toNat)

end

end A057327.P7720919933825755059

/-! ## A057327.P703804184335764598

`A124412(n+1)+A124412(n+1)+A115716(A115716(n))`
-/

namespace A057327.P703804184335764598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124412 (n + 1) + (A124412 (n + 1) + A115716 (A115716 n).toNat)

end

end A057327.P703804184335764598

/-! ## A057327.P17426154850878044500

`p?[A124041(n+1)+1]`
-/

namespace A057327.P17426154850878044500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124041 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057327.P17426154850878044500

/-! ## A057327.P2876398288046094502

`p?[ceil(A057326(n+1)/2)]`
-/

namespace A057327.P2876398288046094502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057326 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057327.P2876398288046094502

/-!
# A057328: First member of a prime 5-tuple in a 2p-1 progression.

The programs for A057328, there is no canonical definition to state claims against.
-/

/-! ## A057328.P9943454202266708297

`2*A124413(n+1)+1`
-/

namespace A057328.P9943454202266708297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124413 (n + 1) + 1

end

end A057328.P9943454202266708297

/-! ## A057328.P10692282196447384516

`∑{d}[A000040(n+1), A124413(n+1)+A001222(#)]`
-/

namespace A057328.P10692282196447384516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A124413 (n + 1) + A001222 d)

end

end A057328.P10692282196447384516

/-! ## A057328.P8976262730681448726

`∑{d}[A268614(n+1), A124413(n+1)+A001222(#)]`
-/

namespace A057328.P8976262730681448726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A124413 (n + 1) + A001222 d)

end

end A057328.P8976262730681448726

/-! ## A057328.P17983411653845936683

`A124413(n+1)+A124413(n+1)+A033999(n)²`
-/

namespace A057328.P17983411653845936683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124413 (n + 1) + (A124413 (n + 1) + A033999 n ^ 2)

end

end A057328.P17983411653845936683

/-! ## A057328.P11731035035083742913

`A124413(n+1)+A124413(n+1)+char[A014681(n)]`
-/

namespace A057328.P11731035035083742913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124413 (n + 1) + (A124413 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A057328.P11731035035083742913

/-! ## A057328.P4366626982188894425

`A006254(n+1)+A124413(n+1)+A124413(n+1)-A005097(n+1)`
-/

namespace A057328.P4366626982188894425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) + (A124413 (n + 1) + (A124413 (n + 1) - A005097 (n + 1)))

end

end A057328.P4366626982188894425

/-! ## A057328.P9569800432934575503

`A124413(n+1)+A124413(n+1)+A060904(A049482(n+1))`
-/

namespace A057328.P9569800432934575503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124413 (n + 1) + (A124413 (n + 1) + A060904 (A049482 (n + 1)).toNat)

end

end A057328.P9569800432934575503

/-! ## A057328.P16947599838648062160

`p?[A124412(n+1)+1]`
-/

namespace A057328.P16947599838648062160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124412 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057328.P16947599838648062160

/-! ## A057328.P2188324367468326787

`p?[ceil(A057327(n+1)/2)]`
-/

namespace A057328.P2188324367468326787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057327 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057328.P2188324367468326787

/-!
# A057329: First member of a prime sextuplet in a 2p-1 progression.

The programs for A057329, there is no canonical definition to state claims against.
-/

/-! ## A057329.P17856615693869818618

`2*A124414(n+1)+1`
-/

namespace A057329.P17856615693869818618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124414 (n + 1) + 1

end

end A057329.P17856615693869818618

/-! ## A057329.P10164329248097976398

`A124414(-xor(n, -1))+A124414(n+1)+1`
-/

namespace A057329.P10164329248097976398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124414 (-Int.xor (n : ℤ) (-1)).toNat + (A124414 (n + 1) + 1)

end

end A057329.P10164329248097976398

/-! ## A057329.P6979533570741434382

`A124414(Δ[n²]-n)+A124414(n+1)+1`
-/

namespace A057329.P6979533570741434382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124414 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat + (A124414 (n + 1) + 1)

end

end A057329.P6979533570741434382

/-! ## A057329.P17578556005482986433

`A124414(A000027(n+1))+A124414(n+1)+1`
-/

namespace A057329.P17578556005482986433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124414 (A000027 (n + 1)).toNat + A124414 (n + 1) + 1

end

end A057329.P17578556005482986433

/-!
# A057330: First member of a prime n-tuplet in a 2p-1 progression.

The programs for A057330, there is no canonical definition to state claims against.
-/

/-! ## A057330.P7334773442437125368

`A064812(or(A034618(n)+1, n+1))`
-/

namespace A057330.P7334773442437125368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064812 (Int.lor (A034618 n + 1) (n + 1 : ℤ)).toNat

end

end A057330.P7334773442437125368

/-! ## A057330.P3211067095744760359

`A064812(or(A034647(n)+1, n+1))`
-/

namespace A057330.P3211067095744760359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064812 (Int.lor (A034647 n + 1) (n + 1 : ℤ)).toNat

end

end A057330.P3211067095744760359

/-! ## A057330.P14904456452083688745

`A064812(or(A034649(n)+1, n+1))`
-/

namespace A057330.P14904456452083688745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064812 (Int.lor (A034649 n + 1) (n + 1 : ℤ)).toNat

end

end A057330.P14904456452083688745

/-!
# A057331: a(n) = smallest prime p such that the first n iterates of p under x->2x+1 are all primes.

The programs for A057331, there is no canonical definition to state claims against.
-/

/-! ## A057331.P9201720621820197673

`A063378(A003520(n)+4)`
-/

namespace A057331.P9201720621820197673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063378 (A003520 n + 4).toNat

end

end A057331.P9201720621820197673

/-! ## A057331.P16874265497944133

`A339581(A139337(n)+A003520(n))`
-/

namespace A057331.P16874265497944133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339581 (A139337 n + A003520 n).toNat

end

end A057331.P16874265497944133

/-! ## A057331.P2789905196584926789

`A339581(A146463(n+1)+A003520(n))`
-/

namespace A057331.P2789905196584926789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339581 (A146463 (n + 1) + A003520 n).toNat

end

end A057331.P2789905196584926789

/-!
# A057332: a(n) is the number of (2n+1)-digit palindromic primes that undulate.

The programs for A057332, there is no canonical definition to state claims against.
-/

/-! ## A057332.P7449876358262663676

`A108612(A108639(n+1))+A000217(n+2)`
-/

namespace A057332.P7449876358262663676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108612 (A108639 (n + 1)).toNat + A000217 (n + 2)

end

end A057332.P7449876358262663676

/-!
# A057334: In A000120, replace each entry k with the k-th prime and replace 0 with 1.

The programs for A057334, the canonical program `A057334.P9909904161761339769` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057334 has offset 0).

The definition of A057334 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A057334.P9909904161761339769

`A008578(1+A000120(n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A057334

/-- `A008578(1+A000120(n))` -/
def P9909904161761339769.Spec : Prop :=
  ∀ n, P9909904161761339769.a n = A057334 n

theorem P9909904161761339769.correct : P9909904161761339769.Spec := by
  intro n
  simp only [A057334]

end A057334

/-! ## A057334.P8739864509427441034

`A151800(a(and(n, n-1)))` with `a(0)=1`
-/

namespace A057334.P8739864509427441034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151800 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat).toNat

end

end A057334.P8739864509427441034

namespace A057334

/-- `A151800(a(and(n, n-1)))` -/
def P8739864509427441034.Spec : Prop :=
  ∀ n, P8739864509427441034.a n = A057334 n

end A057334

/-! ## A057334.P14763718620845633072

`A324886(a(and(n, n-1)))` with `a(0)=1`
-/

namespace A057334.P14763718620845633072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A324886 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat).toNat

end

end A057334.P14763718620845633072

namespace A057334

/-- `A324886(a(and(n, n-1)))` -/
def P14763718620845633072.Spec : Prop :=
  ∀ n, P14763718620845633072.a n = A057334 n

end A057334

/-! ## A057334.P14650059877900576298

`A346096(a(and(n, n-1)))` with `a(0)=1`
-/

namespace A057334.P14650059877900576298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A346096 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat).toNat

end

end A057334.P14650059877900576298

namespace A057334

/-- `A346096(a(and(n, n-1)))` -/
def P14650059877900576298.Spec : Prop :=
  ∀ n, P14650059877900576298.a n = A057334 n

end A057334

/-! ## A057334.P3317691600667972297

`A007918(a(and(n, n-1))+1)` with `a(0)=1`
-/

namespace A057334.P3317691600667972297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007918 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1).toNat

end

end A057334.P3317691600667972297

namespace A057334

/-- `A007918(a(and(n, n-1))+1)` -/
def P3317691600667972297.Spec : Prop :=
  ∀ n, P3317691600667972297.a n = A057334 n

end A057334

/-! ## A057334.P1819210383762689831

`A007918(a(floor(n/2))+n%2)` with `a(0)=1`
-/

namespace A057334.P1819210383762689831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007918 (a ⌊(n : ℚ) / 2⌋.toNat + ((n % 2 : ℕ) : ℤ)).toNat

end

end A057334.P1819210383762689831

namespace A057334

/-- `A007918(a(floor(n/2))+n%2)` -/
def P1819210383762689831.Spec : Prop :=
  ∀ n, P1819210383762689831.a n = A057334 n

end A057334

/-! ## A057334.P6066266590093747572

`A105560(A001316(n))`
-/

namespace A057334.P6066266590093747572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (A001316 n).toNat

end

end A057334.P6066266590093747572

namespace A057334

/-- `A105560(A001316(n))` -/
def P6066266590093747572.Spec : Prop :=
  ∀ n, P6066266590093747572.a n = A057334 n

end A057334

/-! ## A057334.P7659666743868695985

`A243353(A038573(n))`
-/

namespace A057334.P7659666743868695985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243353 (A038573 n).toNat

end

end A057334.P7659666743868695985

namespace A057334

/-- `A243353(A038573(n))` -/
def P7659666743868695985.Spec : Prop :=
  ∀ n, P7659666743868695985.a n = A057334 n

end A057334

/-! ## A057334.P140033891557391651

`A105560(A268444(n))`
-/

namespace A057334.P140033891557391651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (A268444 n).toNat

end

end A057334.P140033891557391651

namespace A057334

/-- `A105560(A268444(n))` -/
def P140033891557391651.Spec : Prop :=
  ∀ n, P140033891557391651.a n = A057334 n

end A057334

/-! ## A057334.P14833065541683943488

`A005180(A000120(n)+1)`
-/

namespace A057334.P14833065541683943488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005180 (A000120 n + 1).toNat

end

end A057334.P14833065541683943488

namespace A057334

/-- `A005180(A000120(n)+1)` -/
def P14833065541683943488.Spec : Prop :=
  ∀ n, P14833065541683943488.a n = A057334 n

end A057334

/-! ## A057334.P4364719303154773744

`A015919(A000120(n)+1)`
-/

namespace A057334.P4364719303154773744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (A000120 n + 1).toNat

end

end A057334.P4364719303154773744

namespace A057334

/-- `A015919(A000120(n)+1)` -/
def P4364719303154773744.Spec : Prop :=
  ∀ n, P4364719303154773744.a n = A057334 n

end A057334

/-! ## A057334.P6599129644530821708

`A158611(A000120(n)+2)`
-/

namespace A057334.P6599129644530821708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A000120 n + 2).toNat

end

end A057334.P6599129644530821708

namespace A057334

/-- `A158611(A000120(n)+2)` -/
def P6599129644530821708.Spec : Prop :=
  ∀ n, P6599129644530821708.a n = A057334 n

end A057334

/-! ## A057334.P10908980693989854541

`A163511(A001316(n)-1)`
-/

namespace A057334.P10908980693989854541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A001316 n - 1).toNat

end

end A057334.P10908980693989854541

namespace A057334

/-- `A163511(A001316(n)-1)` -/
def P10908980693989854541.Spec : Prop :=
  ∀ n, P10908980693989854541.a n = A057334 n

end A057334

/-! ## A057334.P17678735357929300748

`∏{e}[A001316(n), A000040(#)]`
-/

namespace A057334.P17678735357929300748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A057334.P17678735357929300748

namespace A057334

/-- `∏{e}[A001316(n), A000040(#)]` -/
def P17678735357929300748.Spec : Prop :=
  ∀ n, P17678735357929300748.a n = A057334 n

end A057334

/-! ## A057334.P3179913674691786549

`∏{e}[Δ[A006046(n)], A000040(#)]`
-/

namespace A057334.P3179913674691786549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A057334.P3179913674691786549

namespace A057334

/-- `∏{e}[Δ[A006046(n)], A000040(#)]` -/
def P3179913674691786549.Spec : Prop :=
  ∀ n, P3179913674691786549.a n = A057334 n

end A057334

/-! ## A057334.P16189754523004298312

`A008578(2*n-A005187(n)+1)`
-/

namespace A057334.P16189754523004298312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 ((2 * n : ℤ) - A005187 n + 1).toNat

end

end A057334.P16189754523004298312

namespace A057334

/-- `A008578(2*n-A005187(n)+1)` -/
def P16189754523004298312.Spec : Prop :=
  ∀ n, P16189754523004298312.a n = A057334 n

end A057334

/-! ## A057334.P14690060861194413688

`A008578(n-A005187(n)+n+1)`
-/

namespace A057334.P14690060861194413688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 ((n : ℤ) - A005187 n + (n : ℤ) + 1).toNat

end

end A057334.P14690060861194413688

namespace A057334

/-- `A008578(n-A005187(n)+n+1)` -/
def P14690060861194413688.Spec : Prop :=
  ∀ n, P14690060861194413688.a n = A057334 n

end A057334

/-! ## A057334.P9209783969557893206

`A000040(gcd(a(n-1)!, A000120(n)))` with `a(0)=1`
-/

namespace A057334.P9209783969557893206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (Int.gcd (Nat.factorial (a (n - 1)).toNat : ℤ) (A000120 n))

end

end A057334.P9209783969557893206

namespace A057334

/-- `A000040(gcd(a(n-1)!, A000120(n)))` -/
def P9209783969557893206.Spec : Prop :=
  ∀ n, P9209783969557893206.a n = A057334 n

end A057334

/-! ## A057334.P1634794347066176146

`A000040(a(C(2, n+2))*A000120(n))` with `a(0)=1`
-/

namespace A057334.P1634794347066176146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (a (Nat.choose 2 (n + 2)) * A000120 n).toNat

end

end A057334.P1634794347066176146

namespace A057334

/-- `A000040(a(C(2, n+2))*A000120(n))` -/
def P1634794347066176146.Spec : Prop :=
  ∀ n, P1634794347066176146.a n = A057334 n

end A057334

/-! ## A057334.P2607683990271484530

`A057335(n)/A057335(A004526(n))`
-/

namespace A057334.P2607683990271484530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057335 n : ℚ) / (A057335 (A004526 n).toNat : ℚ)

end

end A057334.P2607683990271484530

namespace A057334

/-- `A057335(n)/A057335(A004526(n))` -/
def P2607683990271484530.Spec : Prop :=
  ∀ n, P2607683990271484530.a n = (A057334 n : ℚ)

end A057334

/-!
# A057335: a(0) = 1, and for n > 0, a(n) = A000040(A000120(n)) * a(floor(n/2)); essentially sequence A055932 generated using A000120, hence sorted by number of factors.

The programs for A057335, the canonical program `A057335.P1378643245781663048` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057335 has offset 0).

The definition of A057335 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A057335.P1378643245781663048

`A000040(A000120(n))*a(floor(n/2))` with `a(0)=1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A057335

/-- `A000040(A000120(n))*a(floor(n/2))` -/
def P1378643245781663048.Spec : Prop :=
  ∀ n, P1378643245781663048.a n = A057335 n

theorem P1378643245781663048.correct : P1378643245781663048.Spec := by
  intro n
  simp only [A057335]

end A057335

/-! ## A057335.P9810283201089981775

`A122111(A019565(n))`
-/

namespace A057335.P9810283201089981775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A019565 n).toNat

end

end A057335.P9810283201089981775

namespace A057335

/-- `A122111(A019565(n))` -/
def P9810283201089981775.Spec : Prop :=
  ∀ n, P9810283201089981775.a n = A057335 n

end A057335

/-! ## A057335.P14218857892336033608

`lcm(a(A004526(n)), A253563(n))` with `a(0)=1`
-/

namespace A057335.P14218857892336033608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (A004526 n).toNat : ℤ) (A253563 n)

end

end A057335.P14218857892336033608

namespace A057335

/-- `lcm(a(A004526(n)), A253563(n))` -/
def P14218857892336033608.Spec : Prop :=
  ∀ n, (P14218857892336033608.a n : ℤ) = A057335 n

end A057335

/-! ## A057335.P14680986006524344085

`a(A004526(n))*A000040(A000120(n))` with `a(0)=1`
-/

namespace A057335.P14680986006524344085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A004526 n).toNat * A000040 (A000120 n).toNat

end

end A057335.P14680986006524344085

namespace A057335

/-- `a(A004526(n))*A000040(A000120(n))` -/
def P14680986006524344085.Spec : Prop :=
  ∀ n, P14680986006524344085.a n = A057335 n

end A057335

/-! ## A057335.P4144078848955017660

`a(A123108(n))*A000040(A000120(n))` with `a(0)=1`
-/

namespace A057335.P4144078848955017660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A123108 n).toNat * A000040 (A000120 n).toNat

end

end A057335.P4144078848955017660

namespace A057335

/-- `a(A123108(n))*A000040(A000120(n))` -/
def P4144078848955017660.Spec : Prop :=
  ∀ n, P4144078848955017660.a n = A057335 n

end A057335

/-! ## A057335.P14267764118563405607

`A163755(A341916(n))`
-/

namespace A057335.P14267764118563405607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163755 (A341916 n).toNat

end

end A057335.P14267764118563405607

namespace A057335

/-- `A163755(A341916(n))` -/
def P14267764118563405607.Spec : Prop :=
  ∀ n, P14267764118563405607.a n = A057335 n

end A057335

/-! ## A057335.P9828088239531927784

`A163755(A006068(A341915(A006068(n))))`
-/

namespace A057335.P9828088239531927784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163755 (A006068 (A341915 (A006068 n).toNat).toNat).toNat

end

end A057335.P9828088239531927784

namespace A057335

/-- `A163755(A006068(A341915(A006068(n))))` -/
def P9828088239531927784.Spec : Prop :=
  ∀ n, P9828088239531927784.a n = A057335 n

end A057335

/-! ## A057335.P3787420893473939827

`A277331(A048680(n))`
-/

namespace A057335.P3787420893473939827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277331 (A048680 n).toNat

end

end A057335.P3787420893473939827

namespace A057335

/-- `A277331(A048680(n))` -/
def P3787420893473939827.Spec : Prop :=
  ∀ n, P3787420893473939827.a n = A057335 n

end A057335

/-! ## A057335.P17635998204796417131

`A253563(A048678(n))`
-/

namespace A057335.P17635998204796417131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253563 (A048678 n).toNat

end

end A057335.P17635998204796417131

namespace A057335

/-- `A253563(A048678(n))` -/
def P17635998204796417131.Spec : Prop :=
  ∀ n, P17635998204796417131.a n = A057335 n

end A057335

/-! ## A057335.P3322832008301703751

`A253563(A124108(n)/2)`
-/

namespace A057335.P3322832008301703751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253563 (SequenceMachineLib.roundAway ((A124108 n : ℚ) / 2)).toNat

end

end A057335.P3322832008301703751

namespace A057335

/-- `A253563(A124108(n)/2)` -/
def P3322832008301703751.Spec : Prop :=
  ∀ n, P3322832008301703751.a n = A057335 n

end A057335

/-!
# A057336: 1) Write n in binary; 2) Find run lengths of this expression; 3) Replace these as follows: 1 -> 0, 2 -> 010, 3 -> 01010, 4 -> 0101010...; 4) Remove final 0 and append an initial 1; 5) The term a(n) is the number with the obtained Zeckendorf expression.

The programs for A057336, there is no canonical definition to state claims against.
-/

/-! ## A057336.P3421864470593226182

`A048680(A180201(n+1))`
-/

namespace A057336.P3421864470593226182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A180201 (n + 1)).toNat

end

end A057336.P3421864470593226182

/-! ## A057336.P4854160622552445504

`A048680(xor(ceil(n/2), A054429(n+1)))`
-/

namespace A057336.P4854160622552445504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (Int.xor ⌈(n : ℚ) / 2⌉ (A054429 (n + 1))).toNat

end

end A057336.P4854160622552445504

/-! ## A057336.P18088590197432797457

`A048680(xor(A054429(n+1), A110654(n)))`
-/

namespace A057336.P18088590197432797457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (Int.xor (A054429 (n + 1)) (A110654 n)).toNat

end

end A057336.P18088590197432797457

/-! ## A057336.P13756677203201285863

`A227352(A165199(n+1))`
-/

namespace A057336.P13756677203201285863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227352 (A165199 (n + 1)).toNat

end

end A057336.P13756677203201285863

/-!
# A057337: 1) Write the Zeckendorf expression of n; 2) Remove initial 1 and append a final 0; 3) Replace numbers in this as follows: 0 -> 1, 010 -> 2, 01010 -> 3, 0101010 -> 4...; 4) Find a binary number with run lengths from step 3 (starting with 1); 5) The term a(n) is the decimal equivalent of this binary number.

The programs for A057337, there is no canonical definition to state claims against.
-/

/-! ## A057337.P3324944208831899181

`A180200(A048679(n+1))`
-/

namespace A057337.P3324944208831899181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (A048679 (n + 1)).toNat

end

end A057337.P3324944208831899181

/-! ## A057337.P15117115179070093167

`A165199(A227351(n+1))`
-/

namespace A057337.P15117115179070093167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165199 (A227351 (n + 1)).toNat

end

end A057337.P15117115179070093167

/-! ## A057337.P12436452709665909278

`A180200(A346705(record[and(2*(n+1), 3*(n+1))+n+1]))`
-/

namespace A057337.P12436452709665909278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * (n + 1)) (3 * (n + 1)) + (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (A346705 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A057337.P12436452709665909278

/-!
# A057340: Smallest of the most frequently occurring numbers in 1-to-n multiplication cube.

The programs for A057340, there is no canonical definition to state claims against.
-/

/-! ## A057340.P11272478034225209445

`∏[∏{p}[(6-dr(n+1))^n, #]]`
-/

namespace A057340.P11272478034225209445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 - (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℤ)) ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A057340.P11272478034225209445

/-! ## A057340.P15381207665196725792

`∏[A373947(∏{p}[n+1, #²])]`
-/

namespace A057340.P15381207665196725792
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373947 (∏ p ∈ Nat.primeFactors (f2 n), p ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A057340.P15381207665196725792

/-! ## A057340.P16267797661516612156

`∏[A074093(∏{p}[n+1, #]!)]`
-/

namespace A057340.P16267797661516612156
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074093 (Nat.factorial (∏ p ∈ Nat.primeFactors (f2 n), p))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A057340.P16267797661516612156

/-! ## A057340.P11323506367763897696

`∏[A324371(∏{p}[n+1, #]!)]`
-/

namespace A057340.P11323506367763897696
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324371 (Nat.factorial (∏ p ∈ Nat.primeFactors (f2 n), p))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A057340.P11323506367763897696

/-! ## A057340.P10323084774422101945

`∏[A212623(∏{p}[n+1, -#]²)]`
-/

namespace A057340.P10323084774422101945
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212623 ((∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ))) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A057340.P10323084774422101945

/-!
# A057342: Largest of the most frequently occurring numbers in 1-to-n 4-dimensional multiplication table.

The programs for A057342, there is no canonical definition to state claims against.
-/

/-! ## A057342.P11588357640813191172

`A000005(A081341(n))*A081388(n+3)`
-/

namespace A057342.P11588357640813191172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A081341 n).toNat * A081388 (n + 3)

end

end A057342.P11588357640813191172

/-! ## A057342.P12153101982341044746

`record[A000010(A362851(3*n+1)+A247758(n+1))]`
-/

namespace A057342.P12153101982341044746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A362851 (3 * n + 1) + A247758 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057342.P12153101982341044746

/-!
# A057344: Occurrences of most frequently occurring number in 1-to-n 5-dimensional multiplication table.

The programs for A057344, there is no canonical definition to state claims against.
-/

/-! ## A057344.P10207142417538229842

`A087160(A027430(comp[∑[n]])+1)`
-/

namespace A057344.P10207142417538229842
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087160 (A027430 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1).toNat

end

end A057344.P10207142417538229842

/-!
# A057345: Largest of the most frequently occurring numbers in 1-to-n 5-dimensional multiplication table.

The programs for A057345, there is no canonical definition to state claims against.
-/

/-! ## A057345.P6304999902202669022

`(n+1)*A143179(A000040(3*n+2))`
-/

namespace A057345.P6304999902202669022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A143179 (A000040 (3 * n + 2)).toNat

end

end A057345.P6304999902202669022

/-! ## A057345.P8352817028928466323

`A000120(A136128(n+1))*A057342(n+1)`
-/

namespace A057345.P8352817028928466323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A136128 (n + 1)).toNat * A057342 (n + 1)

end

end A057345.P8352817028928466323

/-! ## A057345.P5389679038149210810

`A057342(n+1)*A279387(A076467(n+1))`
-/

namespace A057345.P5389679038149210810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057342 (n + 1) * A279387 (A076467 (n + 1)).toNat

end

end A057345.P5389679038149210810

/-!
# A057346: Smallest of the most frequently occurring numbers in 1-to-n 5-dimensional multiplication table.

The programs for A057346, there is no canonical definition to state claims against.
-/

/-! ## A057346.P5804891797450425243

`A123258(∑[A008324(n)])`
-/

namespace A057346.P5804891797450425243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123258 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A057346.P5804891797450425243

/-! ## A057346.P986087429817533999

`A123258(∑[A333732(n)])`
-/

namespace A057346.P986087429817533999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123258 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A057346.P986087429817533999

/-! ## A057346.P15067890038616722243

`A139770(∏[dr(A257606(n))])`
-/

namespace A057346.P15067890038616722243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A257606 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139770 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A057346.P15067890038616722243

/-!
# A057347: Leap years in the Islamic calendar starting year 1 AH (Anno Hegirae) = 622 CE (Common Era or AD). There are 11 leap years in a 30 year cycle.

The programs for A057347, the canonical program `A057347.P14861331589152707260` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057347 has offset 1).

The definition of A057347 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057347.P14861331589152707260

`floor((30*(n+1)-4)/11)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057347

/-- `floor((30*(n+1)-4)/11)` -/
def P14861331589152707260.Spec : Prop :=
  ∀ n, P14861331589152707260.a n = A057347 (n + 1)

theorem P14861331589152707260.correct : P14861331589152707260.Spec := by
  intro n
  simp only [A057347, Nat.add_sub_cancel]

end A057347

/-! ## A057347.P2290477655800218851

`4*(n+1)-A253671(A103517(n+1))`
-/

namespace A057347.P2290477655800218851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A253671 (A103517 (n + 1)).toNat

end

end A057347.P2290477655800218851

namespace A057347

/-- `4*(n+1)-A253671(A103517(n+1))` -/
def P2290477655800218851.Spec : Prop :=
  ∀ n, P2290477655800218851.a n = A057347 (n + 1)

end A057347

/-! ## A057347.P3422355576585527163

`round(A017281(3*n+2)/11)`
-/

namespace A057347.P3422355576585527163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A017281 (3 * n + 2) : ℚ) / 11)

end

end A057347.P3422355576585527163

namespace A057347

/-- `round(A017281(3*n+2)/11)` -/
def P3422355576585527163.Spec : Prop :=
  ∀ n, P3422355576585527163.a n = A057347 (n + 1)

end A057347

/-! ## A057347.P3549686599298771011

`A266977(A315492(n))`
-/

namespace A057347.P3549686599298771011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266977 (A315492 n).toNat

end

end A057347.P3549686599298771011

namespace A057347

/-- `A266977(A315492(n))` -/
def P3549686599298771011.Spec : Prop :=
  ∀ n, P3549686599298771011.a n = A057347 (n + 1)

end A057347

/-! ## A057347.P11937773093456704804

`A008619(A315492(n)+2)`
-/

namespace A057347.P11937773093456704804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A315492 n + 2).toNat

end

end A057347.P11937773093456704804

namespace A057347

/-- `A008619(A315492(n)+2)` -/
def P11937773093456704804.Spec : Prop :=
  ∀ n, P11937773093456704804.a n = A057347 (n + 1)

end A057347

/-! ## A057347.P15720250659823288240

`A065033(A315492(n)+1)+1`
-/

namespace A057347.P15720250659823288240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A315492 n + 1).toNat + 1

end

end A057347.P15720250659823288240

namespace A057347

/-- `A065033(A315492(n)+1)+1` -/
def P15720250659823288240.Spec : Prop :=
  ∀ n, P15720250659823288240.a n = A057347 (n + 1)

end A057347

/-! ## A057347.P3582422704729844061

`A008619(A008458(n)+A008574(n)-A313031(n))+1`
-/

namespace A057347.P3582422704729844061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008458 n + (A008574 n - A313031 n)).toNat + 1

end

end A057347.P3582422704729844061

namespace A057347

/-- `A008619(A008458(n)+A008574(n)-A313031(n))+1` -/
def P3582422704729844061.Spec : Prop :=
  ∀ n, P3582422704729844061.a n = A057347 (n + 1)

end A057347

/-! ## A057347.P6691562361907484533

`A065033(A315492(n)+3)`
-/

namespace A057347.P6691562361907484533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A315492 n + 3).toNat

end

end A057347.P6691562361907484533

namespace A057347

/-- `A065033(A315492(n)+3)` -/
def P6691562361907484533.Spec : Prop :=
  ∀ n, P6691562361907484533.a n = A057347 (n + 1)

end A057347

/-! ## A057347.P3046661453006150688

`A004526(A315492(n)+4)`
-/

namespace A057347.P3046661453006150688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315492 n + 4).toNat

end

end A057347.P3046661453006150688

namespace A057347

/-- `A004526(A315492(n)+4)` -/
def P3046661453006150688.Spec : Prop :=
  ∀ n, P3046661453006150688.a n = A057347 (n + 1)

end A057347

/-! ## A057347.P10185880465025523021

`ceil(log2((A167385(n)/2+2)*5^n+1))`
-/

namespace A057347.P10185880465025523021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (((A167385 n : ℚ) / 2 + 2) * (5 ^ n : ℚ) + 1 : ℝ)⌉

end

end A057347.P10185880465025523021

namespace A057347

/-- `ceil(log2((A167385(n)/2+2)*5^n+1))` -/
def P10185880465025523021.Spec : Prop :=
  ∀ n, P10185880465025523021.a n = A057347 (n + 1)

end A057347

/-!
# A057348: Days in months in the Islamic calendar starting from Muharram, 1 AH. The twelfth month has 30 days in a leap year.

The programs for A057348, there is no canonical definition to state claims against.
-/

/-! ## A057348.P11252331245272946043

`A288223(A020639((3*(1-n))²+1)+2)+29`
-/

namespace A057348.P11252331245272946043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288223 (A020639 ((3 * (1 - (n : ℤ))) ^ 2 + 1).toNat + 2).toNat + 29

end

end A057348.P11252331245272946043

/-!
# A057349: Leap years in the Hebrew Calendar starting in year 1 (3761 BCE). The leap year has an extra month.

The programs for A057349, the canonical program `A057349.P6268337001125359261` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057349 has offset 1).

The definition of A057349 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057349.P6268337001125359261

`floor((19*(n+1)+5)/7)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057349

/-- `floor((19*(n+1)+5)/7)` -/
def P6268337001125359261.Spec : Prop :=
  ∀ n, P6268337001125359261.a n = A057349 (n + 1)

theorem P6268337001125359261.correct : P6268337001125359261.Spec := by
  intro n
  simp only [A057349, Nat.add_sub_cancel]

end A057349

/-! ## A057349.P7188357036041510958

`A083033(n+1)+n+3`
-/

namespace A057349.P7188357036041510958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083033 (n + 1) + (n + 3 : ℤ)

end

end A057349.P7188357036041510958

namespace A057349

/-- `A083033(n+1)+n+3` -/
def P7188357036041510958.Spec : Prop :=
  ∀ n, P7188357036041510958.a n = A057349 (n + 1)

end A057349

/-! ## A057349.P5960247133024470892

`A083026(n+2)+n+1`
-/

namespace A057349.P5960247133024470892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083026 (n + 2) + (n + 1 : ℤ)

end

end A057349.P5960247133024470892

namespace A057349

/-- `A083026(n+2)+n+1` -/
def P5960247133024470892.Spec : Prop :=
  ∀ n, P5960247133024470892.a n = A057349 (n + 1)

end A057349

/-! ## A057349.P11162609181629637376

`∑[A291454(n+1)+1]`
-/

namespace A057349.P11162609181629637376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291454 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057349.P11162609181629637376

namespace A057349

/-- `∑[A291454(n+1)+1]` -/
def P11162609181629637376.Spec : Prop :=
  ∀ n, P11162609181629637376.a n = A057349 (n + 1)

end A057349

/-! ## A057349.P4383664833768004474

`∑[A176059(A289139(n))]`
-/

namespace A057349.P4383664833768004474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176059 (A289139 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057349.P4383664833768004474

namespace A057349

/-- `∑[A176059(A289139(n))]` -/
def P4383664833768004474.Spec : Prop :=
  ∀ n, P4383664833768004474.a n = A057349 (n + 1)

end A057349

/-! ## A057349.P1268744030666839264

`∑[A000040(Δ[A083026(n+1)])]`
-/

namespace A057349.P1268744030666839264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083026 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057349.P1268744030666839264

namespace A057349

/-- `∑[A000040(Δ[A083026(n+1)])]` -/
def P1268744030666839264.Spec : Prop :=
  ∀ n, P1268744030666839264.a n = A057349 (n + 1)

end A057349

/-! ## A057349.P6880500418506546569

`∑[A000040(Δ[A082977(n+2)])]`
-/

namespace A057349.P6880500418506546569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082977 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057349.P6880500418506546569

namespace A057349

/-- `∑[A000040(Δ[A082977(n+2)])]` -/
def P6880500418506546569.Spec : Prop :=
  ∀ n, P6880500418506546569.a n = A057349 (n + 1)

end A057349

/-! ## A057349.P848629335508055932

`∑[3-A238470(n+3)²]`
-/

namespace A057349.P848629335508055932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A238470 (n + 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057349.P848629335508055932

namespace A057349

/-- `∑[3-A238470(n+3)²]` -/
def P848629335508055932.Spec : Prop :=
  ∀ n, P848629335508055932.a n = A057349 (n + 1)

end A057349

/-! ## A057349.P15265447524920969265

`∑[A000040(Δ[A145569(2*n+1)])]`
-/

namespace A057349.P15265447524920969265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145569 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057349.P15265447524920969265

namespace A057349

/-- `∑[A000040(Δ[A145569(2*n+1)])]` -/
def P15265447524920969265.Spec : Prop :=
  ∀ n, P15265447524920969265.a n = A057349 (n + 1)

end A057349

/-! ## A057349.P13980371914970695680

`A065033(A314148(n+1))`
-/

namespace A057349.P13980371914970695680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A314148 (n + 1)).toNat

end

end A057349.P13980371914970695680

namespace A057349

/-- `A065033(A314148(n+1))` -/
def P13980371914970695680.Spec : Prop :=
  ∀ n, P13980371914970695680.a n = A057349 (n + 1)

end A057349

/-! ## A057349.P9654050560912851514

`A008619(A057357(n)+5*(n+1))`
-/

namespace A057349.P9654050560912851514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A057357 n + (5 * (n + 1) : ℤ)).toNat

end

end A057349.P9654050560912851514

namespace A057349

/-- `A008619(A057357(n)+5*(n+1))` -/
def P9654050560912851514.Spec : Prop :=
  ∀ n, P9654050560912851514.a n = A057349 (n + 1)

end A057349

/-! ## A057349.P16810369414279374683

`∑[3-A277143((n+3)²)]`
-/

namespace A057349.P16810369414279374683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A277143 ((n + 3) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057349.P16810369414279374683

namespace A057349

/-- `∑[3-A277143((n+3)²)]` -/
def P16810369414279374683.Spec : Prop :=
  ∀ n, P16810369414279374683.a n = A057349 (n + 1)

end A057349

/-! ## A057349.P14607551872356554831

`ceil(log2(A277089(2*n)))`
-/

namespace A057349.P14607551872356554831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A277089 (2 * n) : ℝ)⌉

end

end A057349.P14607551872356554831

namespace A057349

/-- `ceil(log2(A277089(2*n)))` -/
def P14607551872356554831.Spec : Prop :=
  ∀ n, P14607551872356554831.a n = A057349 (n + 1)

end A057349

/-! ## A057349.P13830371123440406202

`ceil(log2(A277237(2*n+1)))`
-/

namespace A057349.P13830371123440406202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A277237 (2 * n + 1) : ℝ)⌉

end

end A057349.P13830371123440406202

namespace A057349

/-- `ceil(log2(A277237(2*n+1)))` -/
def P13830371123440406202.Spec : Prop :=
  ∀ n, P13830371123440406202.a n = A057349 (n + 1)

end A057349

/-! ## A057349.P917294698685139075

`round(log2(A205219(2*n+1)))`
-/

namespace A057349.P917294698685139075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A205219 (2 * n + 1) : ℝ))

end

end A057349.P917294698685139075

namespace A057349

/-- `round(log2(A205219(2*n+1)))` -/
def P917294698685139075.Spec : Prop :=
  ∀ n, P917294698685139075.a n = A057349 (n + 1)

end A057349

/-!
# A057350: Days in months in the Hebrew calendar starting from Nisan 5760 (Spring 2000 CE).

The programs for A057350, there is no canonical definition to state claims against.
-/

/-! ## A057350.P7605112948521459418

`A057348(A270613(n+1)%A241801(n))`
-/

namespace A057350.P7605112948521459418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057348 (Int.tmod (A270613 (n + 1)) (A241801 (n + 13))).toNat

end

end A057350.P7605112948521459418

/-! ## A057350.P13477910910452503556

`A057348(record[xor(1, n)]*A270613(n+1))`
-/

namespace A057350.P13477910910452503556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057348 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) * A270613 (n + 1)).toNat

end

end A057350.P13477910910452503556

/-! ## A057350.P3431152379901339516

`A057348((2*n+1)*A270613(n+1))`
-/

namespace A057350.P3431152379901339516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057348 ((2 * n + 1 : ℤ) * A270613 (n + 1)).toNat

end

end A057350.P3431152379901339516

/-! ## A057350.P3854891218047176817

`A057348(A270613(n+1)^Δ[A052404(n+1)])`
-/

namespace A057350.P3854891218047176817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057348 (SequenceMachineLib.roundAway ((A270613 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A057350.P3854891218047176817

/-! ## A057350.P9592403674529550786

`A057348(A267112(n+2)+A038503(n))`
-/

namespace A057350.P9592403674529550786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057348 (A267112 (n + 2) + A038503 n).toNat

end

end A057350.P9592403674529550786

/-!
# A057351: Numbers k that divide 4^k + 3^k + 1.

The programs for A057351, there is no canonical definition to state claims against.
-/

/-! ## A057351.P14999310405282603404

`A003106(n+3)*A293646(A181301(n))`
-/

namespace A057351.P14999310405282603404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 (n + 3) * A293646 (A181301 n).toNat

end

end A057351.P14999310405282603404

/-!
# A057352: Number of Gaussian primes (in the first half-quadrant; i.e., 0 to 45 degrees) with real part <= n.

The programs for A057352, there is no canonical definition to state claims against.
-/

/-! ## A057352.P16062677086650140135

`∑[A057368(n+1)]`
-/

namespace A057352.P16062677086650140135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057352.P16062677086650140135

/-! ## A057352.P17131468477274826309

`∑[A001221(A327759(n+2)*A327764(n))]`
-/

namespace A057352.P17131468477274826309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A327759 (n + 2) * A327764 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057352.P17131468477274826309

/-! ## A057352.P5376639022535419447

`∑[A167967(xor(8*n+3, 2^(n%3)))]`
-/

namespace A057352.P5376639022535419447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167967 (Nat.xor (8 * n + 3) (2 ^ (n % 3)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057352.P5376639022535419447

/-! ## A057352.P10817065381144927976

`record[A302569(n+1)-A205483(2*n+5)]`
-/

namespace A057352.P10817065381144927976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302569 (n + 1) - A205483 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057352.P10817065381144927976

/-! ## A057352.P12483711312256347081

`A001221(A200180(n+1)+A001221(n+5))+a(n-1)` with `a(0)=1`
-/

namespace A057352.P12483711312256347081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001221 (A200180 (n + 1) + A001221 (n + 5)).toNat + a (n - 1)

end

end A057352.P12483711312256347081

/-!
# A057353: a(n) = floor(3n/4).

The programs for A057353, the canonical program `A057353.P17981329884597426750` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057353 has offset 0).

The definition of A057353 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3*n/4)` (program `A057353.P17981329884597426750`, by `A057353.P17981329884597426750.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057353.P17981329884597426750

`floor(3*n/4)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057353

/-- `floor(3*n/4)` -/
def P17981329884597426750.Spec : Prop :=
  ∀ n, P17981329884597426750.a n = A057353 n

theorem P17981329884597426750.correct : P17981329884597426750.Spec := by
  intro n
  simp only [A057353]

end A057353

/-! ## A057353.P470169400331083647

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=3`
-/

namespace A057353.P470169400331083647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 2, 3] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A057353.P470169400331083647

namespace A057353

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P470169400331083647.Spec : Prop :=
  ∀ n, P470169400331083647.a n = A057353 n

end A057353

/-! ## A057353.P5041752643165253756

`A037915(n)-1`
-/

namespace A057353.P5041752643165253756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037915 n - 1

end

end A057353.P5041752643165253756

namespace A057353

/-- `A037915(n)-1` -/
def P5041752643165253756.Spec : Prop :=
  ∀ n, P5041752643165253756.a n = A057353 n

end A057353

/-! ## A057353.P11931392713995727410

`and(3*n, -4)/4`
-/

namespace A057353.P11931392713995727410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (3 * n : ℤ) (-4) : ℚ) / 4

end

end A057353.P11931392713995727410

namespace A057353

/-- `and(3*n, -4)/4` -/
def P11931392713995727410.Spec : Prop :=
  ∀ n, P11931392713995727410.a n = (A057353 n : ℚ)

end A057353

/-! ## A057353.P14567320424200017594

`ceil((n-1)*sinh(log(2)))`
-/

namespace A057353.P14567320424200017594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 1 : ℝ) * Real.sinh (Real.log (2 : ℝ))⌉

end

end A057353.P14567320424200017594

namespace A057353

/-- `ceil((n-1)*sinh(log(2)))` -/
def P14567320424200017594.Spec : Prop :=
  ∀ n, P14567320424200017594.a n = A057353 n

end A057353

/-! ## A057353.P5740124123465362998

`ceil((n-1)/sinh(log(3)))`
-/

namespace A057353.P5740124123465362998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 1 : ℝ) / Real.sinh (Real.log (3 : ℝ))⌉

end

end A057353.P5740124123465362998

namespace A057353

/-- `ceil((n-1)/sinh(log(3)))` -/
def P5740124123465362998.Spec : Prop :=
  ∀ n, P5740124123465362998.a n = A057353 n

end A057353

/-! ## A057353.P4159226628229992046

`∑[ceil(sin((n-1)%4))]`
-/

namespace A057353.P4159226628229992046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (Int.tmod ((n : ℤ) - 1) 4 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057353.P4159226628229992046

namespace A057353

/-- `∑[ceil(sin((n-1)%4))]` -/
def P4159226628229992046.Spec : Prop :=
  ∀ n, P4159226628229992046.a n = A057353 n

end A057353

/-! ## A057353.P14782936066534147023

`n-∑[∑[∑[n]]%2]`
-/

namespace A057353.P14782936066534147023
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A057353.P14782936066534147023

namespace A057353

/-- `n-∑[∑[∑[n]]%2]` -/
def P14782936066534147023.Spec : Prop :=
  ∀ n, P14782936066534147023.a n = A057353 n

end A057353

/-! ## A057353.P12860274646974492247

`n-∑[and(1, ∑[∑[n]])]`
-/

namespace A057353.P12860274646974492247
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A057353.P12860274646974492247

namespace A057353

/-- `n-∑[and(1, ∑[∑[n]])]` -/
def P12860274646974492247.Spec : Prop :=
  ∀ n, P12860274646974492247.a n = A057353 n

end A057353

/-! ## A057353.P9963494018430186814

`floor(∑[gcd(2, n)/2])-1`
-/

namespace A057353.P9963494018430186814
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ - 1

end

end A057353.P9963494018430186814

namespace A057353

/-- `floor(∑[gcd(2, n)/2])-1` -/
def P9963494018430186814.Spec : Prop :=
  ∀ n, P9963494018430186814.a n = A057353 n

end A057353

/-! ## A057353.P1246903305173031339

`a(n-4)+3` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A057353.P1246903305173031339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 2] fun n a =>
  a (n - 4) + 3

end

end A057353.P1246903305173031339

namespace A057353

/-- `a(n-4)+3` -/
def P1246903305173031339.Spec : Prop :=
  ∀ n, (P1246903305173031339.a n : ℤ) = A057353 n

end A057353

/-! ## A057353.P13667315780158890903

`round(n-or(1, n+1)/4)`
-/

namespace A057353.P13667315780158890903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) - (Nat.lor 1 (n + 1) : ℚ) / 4)

end

end A057353.P13667315780158890903

namespace A057353

/-- `round(n-or(1, n+1)/4)` -/
def P13667315780158890903.Spec : Prop :=
  ∀ n, P13667315780158890903.a n = A057353 n

end A057353

/-! ## A057353.P5220939187318834600

`n-round(xor(1, n+1)/4)`
-/

namespace A057353.P5220939187318834600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - SequenceMachineLib.roundAway ((Nat.xor 1 (n + 1) : ℚ) / 4)

end

end A057353.P5220939187318834600

namespace A057353

/-- `n-round(xor(1, n+1)/4)` -/
def P5220939187318834600.Spec : Prop :=
  ∀ n, P5220939187318834600.a n = A057353 n

end A057353

/-! ## A057353.P6302053316773950399

`∑[(C(n, 2)%(n+1))%2]`
-/

namespace A057353.P6302053316773950399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 % (n + 1) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057353.P6302053316773950399

namespace A057353

/-- `∑[(C(n, 2)%(n+1))%2]` -/
def P6302053316773950399.Spec : Prop :=
  ∀ n, (P6302053316773950399.a n : ℤ) = A057353 n

end A057353

/-! ## A057353.P5990169642649561424

`floor(n-n/4)%(n+1)`
-/

namespace A057353.P5990169642649561424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n : ℚ) - (n : ℚ) / 4⌋ (n + 1 : ℤ)

end

end A057353.P5990169642649561424

namespace A057353

/-- `floor(n-n/4)%(n+1)` -/
def P5990169642649561424.Spec : Prop :=
  ∀ n, P5990169642649561424.a n = A057353 n

end A057353

/-! ## A057353.P2721877443072699701

`n-round(C(n+1, n)/4)`
-/

namespace A057353.P2721877443072699701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - SequenceMachineLib.roundAway ((Nat.choose (n + 1) n : ℚ) / 4)

end

end A057353.P2721877443072699701

namespace A057353

/-- `n-round(C(n+1, n)/4)` -/
def P2721877443072699701.Spec : Prop :=
  ∀ n, P2721877443072699701.a n = A057353 n

end A057353

/-! ## A057353.P3474431677490357042

`∑[abs(a(n-4))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A057353.P3474431677490357042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057353.P3474431677490357042

namespace A057353

/-- `∑[abs(a(n-4))]` -/
def P3474431677490357042.Spec : Prop :=
  ∀ n, (P3474431677490357042.a n : ℤ) = A057353 n

end A057353

/-! ## A057353.P1681077231610238709

`∑[a(n-4)²]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A057353.P1681077231610238709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 1] fun n f1 =>
  f1 (n - 4) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057353.P1681077231610238709

namespace A057353

/-- `∑[a(n-4)²]` -/
def P1681077231610238709.Spec : Prop :=
  ∀ n, (P1681077231610238709.a n : ℤ) = A057353 n

end A057353

/-! ## A057353.P10611100100141895139

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A057353.P10611100100141895139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057353.P10611100100141895139

namespace A057353

/-- `∑[floor(a(n-4))]` -/
def P10611100100141895139.Spec : Prop :=
  ∀ n, (P10611100100141895139.a n : ℤ) = A057353 n

end A057353

/-! ## A057353.P6139311797404204388

`∑[round(a(n-4))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=1`

`round` is left out, it is the identity on integers.
-/

namespace A057353.P6139311797404204388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057353.P6139311797404204388

namespace A057353

/-- `∑[round(a(n-4))]` -/
def P6139311797404204388.Spec : Prop :=
  ∀ n, (P6139311797404204388.a n : ℤ) = A057353 n

end A057353

/-!
# A057354: a(n) = floor(2*n/5).

The programs for A057354, the canonical program `A057354.P961794269322150994` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057354 has offset 0).

The definition of A057354 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2*n/5)` (program `A057354.P961794269322150994`, by `A057354.P961794269322150994.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057354.P961794269322150994

`floor(2*n/5)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057354

/-- `floor(2*n/5)` -/
def P961794269322150994.Spec : Prop :=
  ∀ n, P961794269322150994.a n = A057354 n

theorem P961794269322150994.correct : P961794269322150994.Spec := by
  intro n
  simp only [A057354]

end A057354

/-! ## A057354.P4293938475069245664

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=2`
-/

namespace A057354.P4293938475069245664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 1, 2] fun n a =>
  a (n - 1) + a (n - 5) - a (n - 6)

end

end A057354.P4293938475069245664

namespace A057354

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P4293938475069245664.Spec : Prop :=
  ∀ n, P4293938475069245664.a n = A057354 n

end A057354

/-! ## A057354.P831448611671664248

`A002266(2*n)`
-/

namespace A057354.P831448611671664248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (2 * n)

end

end A057354.P831448611671664248

namespace A057354

/-- `A002266(2*n)` -/
def P831448611671664248.Spec : Prop :=
  ∀ n, P831448611671664248.a n = A057354 n

end A057354

/-! ## A057354.P1054254149196421816

`∑[char[∑[gcd(2, n)+1]]]`
-/

namespace A057354.P1054254149196421816
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057354.P1054254149196421816

namespace A057354

/-- `∑[char[∑[gcd(2, n)+1]]]` -/
def P1054254149196421816.Spec : Prop :=
  ∀ n, (P1054254149196421816.a n : ℤ) = A057354 n

end A057354

/-! ## A057354.P149821067967912300

`∑[char[∑[3-n%2]]]`
-/

namespace A057354.P149821067967912300
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((n % 2 : ℕ) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057354.P149821067967912300

namespace A057354

/-- `∑[char[∑[3-n%2]]]` -/
def P149821067967912300.Spec : Prop :=
  ∀ n, (P149821067967912300.a n : ℤ) = A057354 n

end A057354

/-! ## A057354.P8223224557082618921

`∑[char[∑[3-and(1, n)]]]`
-/

namespace A057354.P8223224557082618921
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (Nat.land 1 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057354.P8223224557082618921

namespace A057354

/-- `∑[char[∑[3-and(1, n)]]]` -/
def P8223224557082618921.Spec : Prop :=
  ∀ n, (P8223224557082618921.a n : ℤ) = A057354 n

end A057354

/-! ## A057354.P12814275971419863356

`ceil(∑[(n-1)%5/5])`
-/

namespace A057354.P12814275971419863356
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod ((n : ℤ) - 1) 5 : ℚ) / 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A057354.P12814275971419863356

namespace A057354

/-- `ceil(∑[(n-1)%5/5])` -/
def P12814275971419863356.Spec : Prop :=
  ∀ n, P12814275971419863356.a n = A057354 n

end A057354

/-! ## A057354.P16234126302817084311

`ceil(2*n/5-sin(1))`
-/

namespace A057354.P16234126302817084311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n : ℚ) / 5 : ℝ) - Real.sin (1 : ℝ)⌉

end

end A057354.P16234126302817084311

namespace A057354

/-- `ceil(2*n/5-sin(1))` -/
def P16234126302817084311.Spec : Prop :=
  ∀ n, P16234126302817084311.a n = A057354 n

end A057354

/-! ## A057354.P11233163353254450097

`round(cos(2)+2*n/5)`
-/

namespace A057354.P11233163353254450097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (2 : ℝ) + ((2 * n : ℚ) / 5 : ℝ))

end

end A057354.P11233163353254450097

namespace A057354

/-- `round(cos(2)+2*n/5)` -/
def P11233163353254450097.Spec : Prop :=
  ∀ n, P11233163353254450097.a n = A057354 n

end A057354

/-! ## A057354.P17043340528213512928

`ceil(cos(3)+2*n/5)`
-/

namespace A057354.P17043340528213512928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (3 : ℝ) + ((2 * n : ℚ) / 5 : ℝ)⌉

end

end A057354.P17043340528213512928

namespace A057354

/-- `ceil(cos(3)+2*n/5)` -/
def P17043340528213512928.Spec : Prop :=
  ∀ n, P17043340528213512928.a n = A057354 n

end A057354

/-! ## A057354.P8105711732852736772

`round((2*n-acos(0))/5)`
-/

namespace A057354.P8105711732852736772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n : ℝ) - Real.arccos (0 : ℝ)) / 5)

end

end A057354.P8105711732852736772

namespace A057354

/-- `round((2*n-acos(0))/5)` -/
def P8105711732852736772.Spec : Prop :=
  ∀ n, P8105711732852736772.a n = A057354 n

end A057354

/-! ## A057354.P9266027567823692756

`round((2*n-tan(1))/5)`
-/

namespace A057354.P9266027567823692756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n : ℝ) - Real.tan (1 : ℝ)) / 5)

end

end A057354.P9266027567823692756

namespace A057354

/-- `round((2*n-tan(1))/5)` -/
def P9266027567823692756.Spec : Prop :=
  ∀ n, P9266027567823692756.a n = A057354 n

end A057354

/-! ## A057354.P6348753452021747887

`round((tan(2)+2*n)/5)`
-/

namespace A057354.P6348753452021747887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.tan (2 : ℝ) + (2 * n : ℝ)) / 5)

end

end A057354.P6348753452021747887

namespace A057354

/-- `round((tan(2)+2*n)/5)` -/
def P6348753452021747887.Spec : Prop :=
  ∀ n, P6348753452021747887.a n = A057354 n

end A057354

/-! ## A057354.P549111277405080852

`ceil(sin(5)+2*n/5)`
-/

namespace A057354.P549111277405080852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (5 : ℝ) + ((2 * n : ℚ) / 5 : ℝ)⌉

end

end A057354.P549111277405080852

namespace A057354

/-- `ceil(sin(5)+2*n/5)` -/
def P549111277405080852.Spec : Prop :=
  ∀ n, P549111277405080852.a n = A057354 n

end A057354

/-! ## A057354.P12086094124326096465

`round((2*n-asin(1))/5)`
-/

namespace A057354.P12086094124326096465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n : ℝ) - Real.arcsin (1 : ℝ)) / 5)

end

end A057354.P12086094124326096465

namespace A057354

/-- `round((2*n-asin(1))/5)` -/
def P12086094124326096465.Spec : Prop :=
  ∀ n, P12086094124326096465.a n = A057354 n

end A057354

/-! ## A057354.P15517609640308161160

`ceil(2*n/5-cos(6))`
-/

namespace A057354.P15517609640308161160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n : ℚ) / 5 : ℝ) - Real.cos (6 : ℝ)⌉

end

end A057354.P15517609640308161160

namespace A057354

/-- `ceil(2*n/5-cos(6))` -/
def P15517609640308161160.Spec : Prop :=
  ∀ n, P15517609640308161160.a n = A057354 n

end A057354

/-! ## A057354.P12828754059052391405

`round((2*n-cosh(1))/5)`
-/

namespace A057354.P12828754059052391405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n : ℝ) - Real.cosh (1 : ℝ)) / 5)

end

end A057354.P12828754059052391405

namespace A057354

/-- `round((2*n-cosh(1))/5)` -/
def P12828754059052391405.Spec : Prop :=
  ∀ n, P12828754059052391405.a n = A057354 n

end A057354

/-! ## A057354.P4350358302216870920

`ceil(2*n/5-tan(7))`
-/

namespace A057354.P4350358302216870920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n : ℚ) / 5 : ℝ) - Real.tan (7 : ℝ)⌉

end

end A057354.P4350358302216870920

namespace A057354

/-- `ceil(2*n/5-tan(7))` -/
def P4350358302216870920.Spec : Prop :=
  ∀ n, P4350358302216870920.a n = A057354 n

end A057354

/-! ## A057354.P4263905381813357490

`round((cot(9)+2*n)/5)`
-/

namespace A057354.P4263905381813357490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.cot (9 : ℝ) + (2 * n : ℝ)) / 5)

end

end A057354.P4263905381813357490

namespace A057354

/-- `round((cot(9)+2*n)/5)` -/
def P4263905381813357490.Spec : Prop :=
  ∀ n, P4263905381813357490.a n = A057354 n

end A057354

/-! ## A057354.P18279994411763620346

`round((2*n-cot(10))/5)`
-/

namespace A057354.P18279994411763620346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n : ℝ) - Real.cot (10 : ℝ)) / 5)

end

end A057354.P18279994411763620346

namespace A057354

/-- `round((2*n-cot(10))/5)` -/
def P18279994411763620346.Spec : Prop :=
  ∀ n, P18279994411763620346.a n = A057354 n

end A057354

/-!
# A057355: a(n) = floor(3*n/5).

The programs for A057355, the canonical program `A057355.P7578870440640675754` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057355 has offset 0).

The definition of A057355 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3*n/5)` (program `A057355.P7578870440640675754`, by `A057355.P7578870440640675754.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057355.P7578870440640675754

`floor(3*n/5)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057355

/-- `floor(3*n/5)` -/
def P7578870440640675754.Spec : Prop :=
  ∀ n, P7578870440640675754.a n = A057355 n

theorem P7578870440640675754.correct : P7578870440640675754.Spec := by
  intro n
  simp only [A057355]

end A057355

/-! ## A057355.P13346235362953389452

`n-∑[(n%5)%2]`
-/

namespace A057355.P13346235362953389452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 5 % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A057355.P13346235362953389452

namespace A057355

/-- `n-∑[(n%5)%2]` -/
def P13346235362953389452.Spec : Prop :=
  ∀ n, P13346235362953389452.a n = A057355 n

end A057355

/-! ## A057355.P1948327573134823577

`ceil(3/(5*acot(n)))-1`
-/

namespace A057355.P1948327573134823577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 / (5 * SequenceMachineLib.acot (n : ℝ))⌉ - 1

end

end A057355.P1948327573134823577

namespace A057355

/-- `ceil(3/(5*acot(n)))-1` -/
def P1948327573134823577.Spec : Prop :=
  ∀ n, P1948327573134823577.a n = A057355 n

end A057355

/-! ## A057355.P10783539506016093426

`n-ceil(lcm(2, 2*n)/5)`
-/

namespace A057355.P10783539506016093426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌈(Nat.lcm 2 (2 * n) : ℚ) / 5⌉

end

end A057355.P10783539506016093426

namespace A057355

/-- `n-ceil(lcm(2, 2*n)/5)` -/
def P10783539506016093426.Spec : Prop :=
  ∀ n, P10783539506016093426.a n = A057355 n

end A057355

/-! ## A057355.P16915521766451484402

`round(lt[n, lcm(6, n)]/2)-1`
-/

namespace A057355.P16915521766451484402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 6 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℚ) / 2) - 1

end

end A057355.P16915521766451484402

namespace A057355

/-- `round(lt[n, lcm(6, n)]/2)-1` -/
def P16915521766451484402.Spec : Prop :=
  ∀ n, P16915521766451484402.a n = A057355 n

end A057355

/-! ## A057355.P12757524267869660825

`comp[floor(record[xor(7, n)]/3)]-n`
-/

namespace A057355.P12757524267869660825
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ) / 3⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A057355.P12757524267869660825

namespace A057355

/-- `comp[floor(record[xor(7, n)]/3)]-n` -/
def P12757524267869660825.Spec : Prop :=
  ∀ n, P12757524267869660825.a n = A057355 n

end A057355

/-! ## A057355.P2090485987199398277

`a(n-5)+3` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=2`
-/

namespace A057355.P2090485987199398277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 2] fun n a =>
  a (n - 5) + 3

end

end A057355.P2090485987199398277

namespace A057355

/-- `a(n-5)+3` -/
def P2090485987199398277.Spec : Prop :=
  ∀ n, (P2090485987199398277.a n : ℤ) = A057355 n

end A057355

/-! ## A057355.P16165179723112787184

`∑[a(n-5)²]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=1`
-/

namespace A057355.P16165179723112787184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 0, 1, 1] fun n f1 =>
  f1 (n - 5) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057355.P16165179723112787184

namespace A057355

/-- `∑[a(n-5)²]` -/
def P16165179723112787184.Spec : Prop :=
  ∀ n, (P16165179723112787184.a n : ℤ) = A057355 n

end A057355

/-! ## A057355.P16518976826790493032

`∑[floor(a(n-5))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A057355.P16518976826790493032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 0, 1, 1] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057355.P16518976826790493032

namespace A057355

/-- `∑[floor(a(n-5))]` -/
def P16518976826790493032.Spec : Prop :=
  ∀ n, (P16518976826790493032.a n : ℤ) = A057355 n

end A057355

/-! ## A057355.P2128304194288087798

`n-ceil(xor(1, 2*n+1)/5)`
-/

namespace A057355.P2128304194288087798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌈(Nat.xor 1 (2 * n + 1) : ℚ) / 5⌉

end

end A057355.P2128304194288087798

namespace A057355

/-- `n-ceil(xor(1, 2*n+1)/5)` -/
def P2128304194288087798.Spec : Prop :=
  ∀ n, P2128304194288087798.a n = A057355 n

end A057355

/-! ## A057355.P2892060933542093282

`round((or(1, 2*n)+n-3)/5)`
-/

namespace A057355.P2892060933542093282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.lor 1 (2 * n) : ℤ) + ((n : ℤ) - 3) : ℚ) / 5)

end

end A057355.P2892060933542093282

namespace A057355

/-- `round((or(1, 2*n)+n-3)/5)` -/
def P2892060933542093282.Spec : Prop :=
  ∀ n, P2892060933542093282.a n = A057355 n

end A057355

/-! ## A057355.P14025141784431016490

`round((xor(1, 2*n)+n-3)/5)`
-/

namespace A057355.P14025141784431016490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.xor 1 (2 * n) : ℤ) + ((n : ℤ) - 3) : ℚ) / 5)

end

end A057355.P14025141784431016490

namespace A057355

/-- `round((xor(1, 2*n)+n-3)/5)` -/
def P14025141784431016490.Spec : Prop :=
  ∀ n, P14025141784431016490.a n = A057355 n

end A057355

/-! ## A057355.P1386845023994123170

`gcd(n, 2*n)-ceil(2*n/5)`
-/

namespace A057355.P1386845023994123170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (2 * n) : ℤ) - ⌈(2 * n : ℚ) / 5⌉

end

end A057355.P1386845023994123170

namespace A057355

/-- `gcd(n, 2*n)-ceil(2*n/5)` -/
def P1386845023994123170.Spec : Prop :=
  ∀ n, P1386845023994123170.a n = A057355 n

end A057355

/-! ## A057355.P18110081800650188090

`∑[a(n-5)^3]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=1`
-/

namespace A057355.P18110081800650188090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 0, 1, 1] fun n f1 =>
  f1 (n - 5) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057355.P18110081800650188090

namespace A057355

/-- `∑[a(n-5)^3]` -/
def P18110081800650188090.Spec : Prop :=
  ∀ n, (P18110081800650188090.a n : ℤ) = A057355 n

end A057355

/-! ## A057355.P10154449846465411363

`n-ceil(and(2*n+1, 2*n)/5)`
-/

namespace A057355.P10154449846465411363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌈(Nat.land (2 * n + 1) (2 * n) : ℚ) / 5⌉

end

end A057355.P10154449846465411363

namespace A057355

/-- `n-ceil(and(2*n+1, 2*n)/5)` -/
def P10154449846465411363.Spec : Prop :=
  ∀ n, P10154449846465411363.a n = A057355 n

end A057355

/-! ## A057355.P11370518205359486446

`∑[((n+1)^(∑[n²]%5))%(n+1)]`
-/

namespace A057355.P11370518205359486446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ ((∑ j ∈ Finset.range (n + 1), f2 j) % 5) % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057355.P11370518205359486446

namespace A057355

/-- `∑[((n+1)^(∑[n²]%5))%(n+1)]` -/
def P11370518205359486446.Spec : Prop :=
  ∀ n, (P11370518205359486446.a n : ℤ) = A057355 n

end A057355

/-! ## A057355.P13427352674666384563

`∑[1-a(n-1)*a(n-4)]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A057355.P13427352674666384563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 0] fun n f1 =>
  1 - f1 (n - 1) * f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057355.P13427352674666384563

namespace A057355

/-- `∑[1-a(n-1)*a(n-4)]` -/
def P13427352674666384563.Spec : Prop :=
  ∀ n, P13427352674666384563.a n = A057355 n

end A057355

/-! ## A057355.P15512945133481989459

`round((C(2*n+1, 2*n)+n-3)/5)`
-/

namespace A057355.P15512945133481989459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.choose (2 * n + 1) (2 * n) : ℤ) + ((n : ℤ) - 3) : ℚ) / 5)

end

end A057355.P15512945133481989459

namespace A057355

/-- `round((C(2*n+1, 2*n)+n-3)/5)` -/
def P15512945133481989459.Spec : Prop :=
  ∀ n, P15512945133481989459.a n = A057355 n

end A057355

/-! ## A057355.P18200806210117597275

`round((and(2*n+1, 2*n)+n-2)/5)`
-/

namespace A057355.P18200806210117597275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.land (2 * n + 1) (2 * n) : ℤ) + ((n : ℤ) - 2) : ℚ) / 5)

end

end A057355.P18200806210117597275

namespace A057355

/-- `round((and(2*n+1, 2*n)+n-2)/5)` -/
def P18200806210117597275.Spec : Prop :=
  ∀ n, P18200806210117597275.a n = A057355 n

end A057355

/-! ## A057355.P15153734241284342246

`floor((a(n-1)-2)/3)-(a(n-1)-n)` with `a(0)=0`
-/

namespace A057355.P15153734241284342246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) - 2 : ℚ) / 3⌋ - (a (n - 1) - (n : ℤ))

end

end A057355.P15153734241284342246

namespace A057355

/-- `floor((a(n-1)-2)/3)-(a(n-1)-n)` -/
def P15153734241284342246.Spec : Prop :=
  ∀ n, P15153734241284342246.a n = A057355 n

end A057355

/-!
# A057356: a(n) = floor(2*n/7).

The programs for A057356, the canonical program `A057356.P6792660887334375627` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057356 has offset 0).

The definition of A057356 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2*n/7)` (program `A057356.P6792660887334375627`, by `A057356.P6792660887334375627.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057356.P6792660887334375627

`floor(2*n/7)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057356

/-- `floor(2*n/7)` -/
def P6792660887334375627.Spec : Prop :=
  ∀ n, P6792660887334375627.a n = A057356 n

theorem P6792660887334375627.correct : P6792660887334375627.Spec := by
  intro n
  simp only [A057356]

end A057356

/-! ## A057356.P5703305207697750033

`∑[char[∑[gcd(2, n)+2]]]`
-/

namespace A057356.P5703305207697750033
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057356.P5703305207697750033

namespace A057356

/-- `∑[char[∑[gcd(2, n)+2]]]` -/
def P5703305207697750033.Spec : Prop :=
  ∀ n, (P5703305207697750033.a n : ℤ) = A057356 n

end A057356

/-! ## A057356.P5751935989889846816

`∑[char[∑[4-n%2]]]`
-/

namespace A057356.P5751935989889846816
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ((n % 2 : ℕ) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057356.P5751935989889846816

namespace A057356

/-- `∑[char[∑[4-n%2]]]` -/
def P5751935989889846816.Spec : Prop :=
  ∀ n, (P5751935989889846816.a n : ℤ) = A057356 n

end A057356

/-! ## A057356.P3200884443868242954

`∑[char[∑[4-and(1, n)]]]`
-/

namespace A057356.P3200884443868242954
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (Nat.land 1 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057356.P3200884443868242954

namespace A057356

/-- `∑[char[∑[4-and(1, n)]]]` -/
def P3200884443868242954.Spec : Prop :=
  ∀ n, (P3200884443868242954.a n : ℤ) = A057356 n

end A057356

/-! ## A057356.P18253622572543097744

`round(cos(2)+2*n/7)`
-/

namespace A057356.P18253622572543097744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (2 : ℝ) + ((2 * n : ℚ) / 7 : ℝ))

end

end A057356.P18253622572543097744

namespace A057356

/-- `round(cos(2)+2*n/7)` -/
def P18253622572543097744.Spec : Prop :=
  ∀ n, P18253622572543097744.a n = A057356 n

end A057356

/-! ## A057356.P9640148603080081243

`ceil(cos(3)+2*n/7)`
-/

namespace A057356.P9640148603080081243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (3 : ℝ) + ((2 * n : ℚ) / 7 : ℝ)⌉

end

end A057356.P9640148603080081243

namespace A057356

/-- `ceil(cos(3)+2*n/7)` -/
def P9640148603080081243.Spec : Prop :=
  ∀ n, P9640148603080081243.a n = A057356 n

end A057356

/-! ## A057356.P6026150483598209246

`ceil(2*n/7-sin(2))`
-/

namespace A057356.P6026150483598209246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n : ℚ) / 7 : ℝ) - Real.sin (2 : ℝ)⌉

end

end A057356.P6026150483598209246

namespace A057356

/-- `ceil(2*n/7-sin(2))` -/
def P6026150483598209246.Spec : Prop :=
  ∀ n, P6026150483598209246.a n = A057356 n

end A057356

/-! ## A057356.P961809895908314807

`ceil(sin(5)+2*n/7)`
-/

namespace A057356.P961809895908314807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (5 : ℝ) + ((2 * n : ℚ) / 7 : ℝ)⌉

end

end A057356.P961809895908314807

namespace A057356

/-- `ceil(sin(5)+2*n/7)` -/
def P961809895908314807.Spec : Prop :=
  ∀ n, P961809895908314807.a n = A057356 n

end A057356

/-! ## A057356.P18012191852176964073

`round((tan(5)+2*n)/7)`
-/

namespace A057356.P18012191852176964073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.tan (5 : ℝ) + (2 * n : ℝ)) / 7)

end

end A057356.P18012191852176964073

namespace A057356

/-- `round((tan(5)+2*n)/7)` -/
def P18012191852176964073.Spec : Prop :=
  ∀ n, P18012191852176964073.a n = A057356 n

end A057356

/-! ## A057356.P18391491499450279542

`ceil(2*n/7-tan(7))`
-/

namespace A057356.P18391491499450279542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n : ℚ) / 7 : ℝ) - Real.tan (7 : ℝ)⌉

end

end A057356.P18391491499450279542

namespace A057356

/-- `ceil(2*n/7-tan(7))` -/
def P18391491499450279542.Spec : Prop :=
  ∀ n, P18391491499450279542.a n = A057356 n

end A057356

/-! ## A057356.P2100663472895772415

`ceil((tan(8)+2*n)/7)`
-/

namespace A057356.P2100663472895772415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.tan (8 : ℝ) + (2 * n : ℝ)) / 7⌉

end

end A057356.P2100663472895772415

namespace A057356

/-- `ceil((tan(8)+2*n)/7)` -/
def P2100663472895772415.Spec : Prop :=
  ∀ n, P2100663472895772415.a n = A057356 n

end A057356

/-! ## A057356.P17041694089688634761

`ceil(2*n/7-tanh(2))`
-/

namespace A057356.P17041694089688634761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n : ℚ) / 7 : ℝ) - Real.tanh (2 : ℝ)⌉

end

end A057356.P17041694089688634761

namespace A057356

/-- `ceil(2*n/7-tanh(2))` -/
def P17041694089688634761.Spec : Prop :=
  ∀ n, P17041694089688634761.a n = A057356 n

end A057356

/-! ## A057356.P16546943357035875072

`round(2*n/7-sin(9))`
-/

namespace A057356.P16546943357035875072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n : ℚ) / 7 : ℝ) - Real.sin (9 : ℝ))

end

end A057356.P16546943357035875072

namespace A057356

/-- `round(2*n/7-sin(9))` -/
def P16546943357035875072.Spec : Prop :=
  ∀ n, P16546943357035875072.a n = A057356 n

end A057356

/-! ## A057356.P10046839463977526586

`round(cot(2)+2*n/7)`
-/

namespace A057356.P10046839463977526586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (2 : ℝ) + ((2 * n : ℚ) / 7 : ℝ))

end

end A057356.P10046839463977526586

namespace A057356

/-- `round(cot(2)+2*n/7)` -/
def P10046839463977526586.Spec : Prop :=
  ∀ n, P10046839463977526586.a n = A057356 n

end A057356

/-! ## A057356.P17071912331933683851

`round(2*n/7-acot(2))`
-/

namespace A057356.P17071912331933683851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n : ℚ) / 7 : ℝ) - SequenceMachineLib.acot (2 : ℝ))

end

end A057356.P17071912331933683851

namespace A057356

/-- `round(2*n/7-acot(2))` -/
def P17071912331933683851.Spec : Prop :=
  ∀ n, P17071912331933683851.a n = A057356 n

end A057356

/-! ## A057356.P10279313175096468119

`ceil(2*n/7-cot(4))`
-/

namespace A057356.P10279313175096468119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n : ℚ) / 7 : ℝ) - Real.cot (4 : ℝ)⌉

end

end A057356.P10279313175096468119

namespace A057356

/-- `ceil(2*n/7-cot(4))` -/
def P10279313175096468119.Spec : Prop :=
  ∀ n, P10279313175096468119.a n = A057356 n

end A057356

/-! ## A057356.P10788778393540435383

`round((2*n-cosh(ϕ))/7)`
-/

namespace A057356.P10788778393540435383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n : ℝ) - Real.cosh Real.goldenRatio) / 7)

end

end A057356.P10788778393540435383

namespace A057356

/-- `round((2*n-cosh(ϕ))/7)` -/
def P10788778393540435383.Spec : Prop :=
  ∀ n, P10788778393540435383.a n = A057356 n

end A057356

/-! ## A057356.P16184921638616800946

`∑[char[∑[(n+1)%2+3]]]`
-/

namespace A057356.P16184921638616800946
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2 + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057356.P16184921638616800946

namespace A057356

/-- `∑[char[∑[(n+1)%2+3]]]` -/
def P16184921638616800946.Spec : Prop :=
  ∀ n, (P16184921638616800946.a n : ℤ) = A057356 n

end A057356

/-! ## A057356.P772822571851687382

`∑[char[∑[and(1, n+1)+3]]]`
-/

namespace A057356.P772822571851687382
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1) + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057356.P772822571851687382

namespace A057356

/-- `∑[char[∑[and(1, n+1)+3]]]` -/
def P772822571851687382.Spec : Prop :=
  ∀ n, (P772822571851687382.a n : ℤ) = A057356 n

end A057356

/-! ## A057356.P10781195711162302139

`(2*n-(2*n)%7)/7`
-/

namespace A057356.P10781195711162302139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - ((2 * n % 7 : ℕ) : ℤ) : ℚ) / 7

end

end A057356.P10781195711162302139

namespace A057356

/-- `(2*n-(2*n)%7)/7` -/
def P10781195711162302139.Spec : Prop :=
  ∀ n, P10781195711162302139.a n = (A057356 n : ℚ)

end A057356

/-!
# A057357: a(n) = floor(3*n/7).

The programs for A057357, the canonical program `A057357.P11578799618412493061` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057357 has offset 0).

The definition of A057357 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3*n/7)` (program `A057357.P11578799618412493061`, by `A057357.P11578799618412493061.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057357.P11578799618412493061

`floor(3*n/7)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057357

/-- `floor(3*n/7)` -/
def P11578799618412493061.Spec : Prop :=
  ∀ n, P11578799618412493061.a n = A057357 n

theorem P11578799618412493061.correct : P11578799618412493061.Spec := by
  intro n
  simp only [A057357]

end A057357

/-! ## A057357.P17106821051028417947

`ceil(∑[(n-1)%7]/7)`
-/

namespace A057357.P17106821051028417947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 7⌉

end

end A057357.P17106821051028417947

namespace A057357

/-- `ceil(∑[(n-1)%7]/7)` -/
def P17106821051028417947.Spec : Prop :=
  ∀ n, P17106821051028417947.a n = A057357 n

end A057357

/-! ## A057357.P1773519218777244412

`∑[char[∑[3-n²%3]]]`
-/

namespace A057357.P1773519218777244412
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((n ^ 2 % 3 : ℕ) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057357.P1773519218777244412

namespace A057357

/-- `∑[char[∑[3-n²%3]]]` -/
def P1773519218777244412.Spec : Prop :=
  ∀ n, (P1773519218777244412.a n : ℤ) = A057357 n

end A057357

/-! ## A057357.P12030232469463703890

`∑[char[comp[or(3, n)]+n+3]]`
-/

namespace A057357.P12030232469463703890
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + n + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057357.P12030232469463703890

namespace A057357

/-- `∑[char[comp[or(3, n)]+n+3]]` -/
def P12030232469463703890.Spec : Prop :=
  ∀ n, (P12030232469463703890.a n : ℤ) = A057357 n

end A057357

/-! ## A057357.P8172062188895364431

`∑[((abs(1-n)+6)%7)%2]`
-/

namespace A057357.P8172062188895364431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (|1 - (n : ℤ)| + 6) 7) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057357.P8172062188895364431

namespace A057357

/-- `∑[((abs(1-n)+6)%7)%2]` -/
def P8172062188895364431.Spec : Prop :=
  ∀ n, P8172062188895364431.a n = A057357 n

end A057357

/-! ## A057357.P7401667550429080334

`∑[char[∑[(∑[n+1]+1)%3+1]]]`
-/

namespace A057357.P7401667550429080334
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f4 j + 1) % 3 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057357.P7401667550429080334

namespace A057357

/-- `∑[char[∑[(∑[n+1]+1)%3+1]]]` -/
def P7401667550429080334.Spec : Prop :=
  ∀ n, (P7401667550429080334.a n : ℤ) = A057357 n

end A057357

/-! ## A057357.P17433685305704582269

`∑[char[∑[A052901(n)]]]`
-/

namespace A057357.P17433685305704582269
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052901 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057357.P17433685305704582269

namespace A057357

/-- `∑[char[∑[A052901(n)]]]` -/
def P17433685305704582269.Spec : Prop :=
  ∀ n, (P17433685305704582269.a n : ℤ) = A057357 n

end A057357

/-! ## A057357.P8879937606464985533

`∑[char[A047390(n+2)]]`
-/

namespace A057357.P8879937606464985533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047390 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057357.P8879937606464985533

namespace A057357

/-- `∑[char[A047390(n+2)]]` -/
def P8879937606464985533.Spec : Prop :=
  ∀ n, (P8879937606464985533.a n : ℤ) = A057357 n

end A057357

/-! ## A057357.P4112084378586533852

`ceil(A227849(n)/(n+2))`
-/

namespace A057357.P4112084378586533852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A227849 n : ℚ) / (n + 2 : ℚ)⌉

end

end A057357.P4112084378586533852

namespace A057357

/-- `ceil(A227849(n)/(n+2))` -/
def P4112084378586533852.Spec : Prop :=
  ∀ n, P4112084378586533852.a n = A057357 n

end A057357

/-! ## A057357.P10086829359438493997

`∑[char[record[A080412(n)]+n]]-1`
-/

namespace A057357.P10086829359438493997
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A057357.P10086829359438493997

namespace A057357

/-- `∑[char[record[A080412(n)]+n]]-1` -/
def P10086829359438493997.Spec : Prop :=
  ∀ n, P10086829359438493997.a n = A057357 n

end A057357

/-! ## A057357.P13664172109762252395

`∑[char[comp[A266222(n)]+1+n]]`
-/

namespace A057357.P13664172109762252395
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266222 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n + 1 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057357.P13664172109762252395

namespace A057357

/-- `∑[char[comp[A266222(n)]+1+n]]` -/
def P13664172109762252395.Spec : Prop :=
  ∀ n, (P13664172109762252395.a n : ℤ) = A057357 n

end A057357

/-! ## A057357.P10174331495523642535

`(n-1-A194511(n+1))/2`
-/

namespace A057357.P10174331495523642535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 - A194511 (n + 1) : ℚ) / 2

end

end A057357.P10174331495523642535

namespace A057357

/-- `(n-1-A194511(n+1))/2` -/
def P10174331495523642535.Spec : Prop :=
  ∀ n, P10174331495523642535.a n = (A057357 n : ℚ)

end A057357

/-! ## A057357.P16564370351959403960

`A057353(n-(a(n-1)+1))` with `a(0)=0`
-/

namespace A057357.P16564370351959403960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A057353 ((n : ℤ) - (a (n - 1) + 1)).toNat

end

end A057357.P16564370351959403960

namespace A057357

/-- `A057353(n-(a(n-1)+1))` -/
def P16564370351959403960.Spec : Prop :=
  ∀ n, P16564370351959403960.a n = A057357 n

end A057357

/-! ## A057357.P1650456083048699498

`A057353(n-1-a(n-1))` with `a(0)=0`
-/

namespace A057357.P1650456083048699498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A057353 ((n : ℤ) - 1 - a (n - 1)).toNat

end

end A057357.P1650456083048699498

namespace A057357

/-- `A057353(n-1-a(n-1))` -/
def P1650456083048699498.Spec : Prop :=
  ∀ n, P1650456083048699498.a n = A057357 n

end A057357

/-! ## A057357.P12720172083145001422

`∑[char[A047304(2*n+1)+2]]`
-/

namespace A057357.P12720172083145001422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047304 (2 * n + 1) + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057357.P12720172083145001422

namespace A057357

/-- `∑[char[A047304(2*n+1)+2]]` -/
def P12720172083145001422.Spec : Prop :=
  ∀ n, (P12720172083145001422.a n : ℤ) = A057357 n

end A057357

/-! ## A057357.P15116333763099605439

`∑[char[A042968(n+1)+2+n]]`
-/

namespace A057357.P15116333763099605439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1) + 2 + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057357.P15116333763099605439

namespace A057357

/-- `∑[char[A042968(n+1)+2+n]]` -/
def P15116333763099605439.Spec : Prop :=
  ∀ n, (P15116333763099605439.a n : ℤ) = A057357 n

end A057357

/-! ## A057357.P2933460140339883966

`comp[comp[A004767(n)]+Δ[n²]+2]-n`
-/

namespace A057357.P2933460140339883966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) + ((f3 (n + 1) : ℤ) - (f3 n : ℤ)) + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A057357.P2933460140339883966

namespace A057357

/-- `comp[comp[A004767(n)]+Δ[n²]+2]-n` -/
def P2933460140339883966.Spec : Prop :=
  ∀ n, P2933460140339883966.a n = A057357 n

end A057357

/-! ## A057357.P17931447509530345588

`A057355(A057359(n)+2)-1`
-/

namespace A057357.P17931447509530345588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (A057359 n + 2).toNat - 1

end

end A057357.P17931447509530345588

namespace A057357

/-- `A057355(A057359(n)+2)-1` -/
def P17931447509530345588.Spec : Prop :=
  ∀ n, P17931447509530345588.a n = A057357 n

end A057357

/-! ## A057357.P18315122870971807963

`A057356(n)+A057359(n)-A057358(n)`
-/

namespace A057357.P18315122870971807963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 n + (A057359 n - A057358 n)

end

end A057357.P18315122870971807963

namespace A057357

/-- `A057356(n)+A057359(n)-A057358(n)` -/
def P18315122870971807963.Spec : Prop :=
  ∀ n, P18315122870971807963.a n = A057357 n

end A057357

/-! ## A057357.P5168817177474974890

`A057360(A004776(n+1))`
-/

namespace A057357.P5168817177474974890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 (A004776 (n + 1)).toNat

end

end A057357.P5168817177474974890

namespace A057357

/-- `A057360(A004776(n+1))` -/
def P5168817177474974890.Spec : Prop :=
  ∀ n, P5168817177474974890.a n = A057357 n

end A057357

/-!
# A057358: a(n) = floor(4*n/7).

The programs for A057358, the canonical program `A057358.P322162875320710828` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057358 has offset 0).

The definition of A057358 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(4*n/7)` (program `A057358.P322162875320710828`, by `A057358.P322162875320710828.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057358.P322162875320710828

`floor(4*n/7)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057358

/-- `floor(4*n/7)` -/
def P322162875320710828.Spec : Prop :=
  ∀ n, P322162875320710828.a n = A057358 n

theorem P322162875320710828.correct : P322162875320710828.Spec := by
  intro n
  simp only [A057358]

end A057358

/-! ## A057358.P8056736279314642156

`n-∑[(n%7)%2]`
-/

namespace A057358.P8056736279314642156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 7 % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A057358.P8056736279314642156

namespace A057358

/-- `n-∑[(n%7)%2]` -/
def P8056736279314642156.Spec : Prop :=
  ∀ n, P8056736279314642156.a n = A057358 n

end A057358

/-! ## A057358.P7859177287500475506

`a(n-2)+gcd(7, n)%5` with `a(0)=0, a(1)=0`
-/

namespace A057358.P7859177287500475506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + Nat.gcd 7 n % 5

end

end A057358.P7859177287500475506

namespace A057358

/-- `a(n-2)+gcd(7, n)%5` -/
def P7859177287500475506.Spec : Prop :=
  ∀ n, (P7859177287500475506.a n : ℤ) = A057358 n

end A057358

/-! ## A057358.P6159389226724247204

`floor((a(n-1)-3)/4-a(n-1))+n` with `a(0)=0`
-/

namespace A057358.P6159389226724247204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) - 3 : ℚ) / 4 - (a (n - 1) : ℚ)⌋ + (n : ℤ)

end

end A057358.P6159389226724247204

namespace A057358

/-- `floor((a(n-1)-3)/4-a(n-1))+n` -/
def P6159389226724247204.Spec : Prop :=
  ∀ n, P6159389226724247204.a n = A057358 n

end A057358

/-! ## A057358.P14774540362917777140

`floor((a(n-1)-3)/4)-(a(n-1)-n)` with `a(0)=0`
-/

namespace A057358.P14774540362917777140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) - 3 : ℚ) / 4⌋ - (a (n - 1) - (n : ℤ))

end

end A057358.P14774540362917777140

namespace A057358

/-- `floor((a(n-1)-3)/4)-(a(n-1)-n)` -/
def P14774540362917777140.Spec : Prop :=
  ∀ n, P14774540362917777140.a n = A057358 n

end A057358

/-! ## A057358.P897729263915500423

`∑[char[A047293(n+2)]]`
-/

namespace A057358.P897729263915500423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047293 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057358.P897729263915500423

namespace A057358

/-- `∑[char[A047293(n+2)]]` -/
def P897729263915500423.Spec : Prop :=
  ∀ n, (P897729263915500423.a n : ℤ) = A057358 n

end A057358

/-! ## A057358.P15343719818564981389

`∑[A195062(n+1)]-1`
-/

namespace A057358.P15343719818564981389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A057358.P15343719818564981389

namespace A057358

/-- `∑[A195062(n+1)]-1` -/
def P15343719818564981389.Spec : Prop :=
  ∀ n, P15343719818564981389.a n = A057358 n

end A057358

/-! ## A057358.P6406745222011883552

`n-ceil(A145569(n)/2)`
-/

namespace A057358.P6406745222011883552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌈(A145569 n : ℚ) / 2⌉

end

end A057358.P6406745222011883552

namespace A057358

/-- `n-ceil(A145569(n)/2)` -/
def P6406745222011883552.Spec : Prop :=
  ∀ n, P6406745222011883552.a n = A057358 n

end A057358

/-! ## A057358.P13328184187060482702

`n-∑[and(1, A007093(n))]`
-/

namespace A057358.P13328184187060482702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A007093 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057358.P13328184187060482702

namespace A057358

/-- `n-∑[and(1, A007093(n))]` -/
def P13328184187060482702.Spec : Prop :=
  ∀ n, P13328184187060482702.a n = A057358 n

end A057358

/-! ## A057358.P6295300736884662826

`A047595(n)-a(n-1)` with `a(0)=0`
-/

namespace A057358.P6295300736884662826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A047595 n - a (n - 1)

end

end A057358.P6295300736884662826

namespace A057358

/-- `A047595(n)-a(n-1)` -/
def P6295300736884662826.Spec : Prop :=
  ∀ n, P6295300736884662826.a n = A057358 n

end A057358

/-! ## A057358.P7671538706922277866

`n-A057353(a(n-1)+2)` with `a(0)=0`
-/

namespace A057358.P7671538706922277866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - A057353 (a (n - 1) + 2).toNat

end

end A057358.P7671538706922277866

namespace A057358

/-- `n-A057353(a(n-1)+2)` -/
def P7671538706922277866.Spec : Prop :=
  ∀ n, P7671538706922277866.a n = A057358 n

end A057358

/-! ## A057358.P7736405151204840541

`n-∑[char[A047304(2*n+1)]]`
-/

namespace A057358.P7736405151204840541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047304 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A057358.P7736405151204840541

namespace A057358

/-- `n-∑[char[A047304(2*n+1)]]` -/
def P7736405151204840541.Spec : Prop :=
  ∀ n, P7736405151204840541.a n = A057358 n

end A057358

/-! ## A057358.P6817749692874883886

`∑[char[2*n-A002265(n)]]-1`
-/

namespace A057358.P6817749692874883886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A002265 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A057358.P6817749692874883886

namespace A057358

/-- `∑[char[2*n-A002265(n)]]-1` -/
def P6817749692874883886.Spec : Prop :=
  ∀ n, P6817749692874883886.a n = A057358 n

end A057358

/-! ## A057358.P8676508905517171048

`n-A004526(A145569(n)+1)`
-/

namespace A057358.P8676508905517171048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004526 (A145569 n + 1).toNat

end

end A057358.P8676508905517171048

namespace A057358

/-- `n-A004526(A145569(n)+1)` -/
def P8676508905517171048.Spec : Prop :=
  ∀ n, P8676508905517171048.a n = A057358 n

end A057358

/-! ## A057358.P7411203338430294948

`A008617(n)+n-A008619(n)`
-/

namespace A057358.P7411203338430294948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 n + ((n : ℤ) - A008619 n)

end

end A057358.P7411203338430294948

namespace A057358

/-- `A008617(n)+n-A008619(n)` -/
def P7411203338430294948.Spec : Prop :=
  ∀ n, P7411203338430294948.a n = A057358 n

end A057358

/-! ## A057358.P3808021838638341425

`A083034(n+1)-A047573(n+1)`
-/

namespace A057358.P3808021838638341425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083034 (n + 1) - A047573 (n + 1)

end

end A057358.P3808021838638341425

namespace A057358

/-- `A083034(n+1)-A047573(n+1)` -/
def P3808021838638341425.Spec : Prop :=
  ∀ n, P3808021838638341425.a n = A057358 n

end A057358

/-! ## A057358.P8531703971005335058

`A047592(n+1)-A225875(n+1)`
-/

namespace A057358.P8531703971005335058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047592 (n + 1) - A225875 (n + 1)

end

end A057358.P8531703971005335058

namespace A057358

/-- `A047592(n+1)-A225875(n+1)` -/
def P8531703971005335058.Spec : Prop :=
  ∀ n, P8531703971005335058.a n = A057358 n

end A057358

/-! ## A057358.P4068817433220206411

`A004777(n+1)+1-A225875(n+1)`
-/

namespace A057358.P4068817433220206411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004777 (n + 1) + (1 - A225875 (n + 1))

end

end A057358.P4068817433220206411

namespace A057358

/-- `A004777(n+1)+1-A225875(n+1)` -/
def P4068817433220206411.Spec : Prop :=
  ∀ n, P4068817433220206411.a n = A057358 n

end A057358

/-! ## A057358.P15852675591842358588

`A225875(n+2)-2`
-/

namespace A057358.P15852675591842358588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225875 (n + 2) - 2

end

end A057358.P15852675591842358588

namespace A057358

/-- `A225875(n+2)-2` -/
def P15852675591842358588.Spec : Prop :=
  ∀ n, P15852675591842358588.a n = A057358 n

end A057358

/-! ## A057358.P17912009192950164077

`n-A057357(n+2)`
-/

namespace A057358.P17912009192950164077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A057357 (n + 2)

end

end A057358.P17912009192950164077

namespace A057358

/-- `n-A057357(n+2)` -/
def P17912009192950164077.Spec : Prop :=
  ∀ n, P17912009192950164077.a n = A057358 n

end A057358

/-!
# A057359: a(n) = floor(5*n/7).

The programs for A057359, the canonical program `A057359.P6234283154110583759` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057359 has offset 0).

The definition of A057359 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(5*n/7)` (program `A057359.P6234283154110583759`, by `A057359.P6234283154110583759.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057359.P6234283154110583759

`floor(5*n/7)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057359

/-- `floor(5*n/7)` -/
def P6234283154110583759.Spec : Prop :=
  ∀ n, P6234283154110583759.a n = A057359 n

theorem P6234283154110583759.correct : P6234283154110583759.Spec := by
  intro n
  simp only [A057359]

end A057359

/-! ## A057359.P16769117511055029975

`n-∑[∑[n%7]%3]`
-/

namespace A057359.P16769117511055029975
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A057359.P16769117511055029975

namespace A057359

/-- `n-∑[∑[n%7]%3]` -/
def P16769117511055029975.Spec : Prop :=
  ∀ n, P16769117511055029975.a n = A057359 n

end A057359

/-! ## A057359.P14096195183617009318

`∑[char[gcd(7, n*(n+4))+n]]`
-/

namespace A057359.P14096195183617009318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 7 (n * (n + 4)) + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057359.P14096195183617009318

namespace A057359

/-- `∑[char[gcd(7, n*(n+4))+n]]` -/
def P14096195183617009318.Spec : Prop :=
  ∀ n, (P14096195183617009318.a n : ℤ) = A057359 n

end A057359

/-! ## A057359.P11952787946193851035

`∑[char[∑[(∑[n+2]+1)²%7]]]`
-/

namespace A057359.P11952787946193851035
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f4 j + 1) ^ 2 % 7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057359.P11952787946193851035

namespace A057359

/-- `∑[char[∑[(∑[n+2]+1)²%7]]]` -/
def P11952787946193851035.Spec : Prop :=
  ∀ n, (P11952787946193851035.a n : ℤ) = A057359 n

end A057359

/-! ## A057359.P13507114198166281336

`A082977(n+1)-n`
-/

namespace A057359.P13507114198166281336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082977 (n + 1) - (n : ℤ)

end

end A057359.P13507114198166281336

namespace A057359

/-- `A082977(n+1)-n` -/
def P13507114198166281336.Spec : Prop :=
  ∀ n, P13507114198166281336.a n = A057359 n

end A057359

/-! ## A057359.P4839278497447064136

`∑[char[A047332(n+2)]]`
-/

namespace A057359.P4839278497447064136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047332 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057359.P4839278497447064136

namespace A057359

/-- `∑[char[A047332(n+2)]]` -/
def P4839278497447064136.Spec : Prop :=
  ∀ n, (P4839278497447064136.a n : ℤ) = A057359 n

end A057359

/-! ## A057359.P9093848581227737193

`∑[char[A288156(n)+2+n]]`
-/

namespace A057359.P9093848581227737193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288156 n + 2 + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057359.P9093848581227737193

namespace A057359

/-- `∑[char[A288156(n)+2+n]]` -/
def P9093848581227737193.Spec : Prop :=
  ∀ n, (P9093848581227737193.a n : ℤ) = A057359 n

end A057359

/-! ## A057359.P5422817111319197956

`comp[A060106(n+1)-2]-n`
-/

namespace A057359.P5422817111319197956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060106 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A057359.P5422817111319197956

namespace A057359

/-- `comp[A060106(n+1)-2]-n` -/
def P5422817111319197956.Spec : Prop :=
  ∀ n, P5422817111319197956.a n = A057359 n

end A057359

/-! ## A057359.P4644786114626687366

`n-(A288156(a(n-1))+1)` with `a(0)=0`
-/

namespace A057359.P4644786114626687366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - (A288156 (a (n - 1)).toNat + 1)

end

end A057359.P4644786114626687366

namespace A057359

/-- `n-(A288156(a(n-1))+1)` -/
def P4644786114626687366.Spec : Prop :=
  ∀ n, P4644786114626687366.a n = A057359 n

end A057359

/-! ## A057359.P11755680024380734520

`n-∑[char[A047344(2*(n+1))]]`
-/

namespace A057359.P11755680024380734520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047344 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A057359.P11755680024380734520

namespace A057359

/-- `n-∑[char[A047344(2*(n+1))]]` -/
def P11755680024380734520.Spec : Prop :=
  ∀ n, P11755680024380734520.a n = A057359 n

end A057359

/-! ## A057359.P5899178773962105136

`n-∑[char[A047380(2*n+1)]]`
-/

namespace A057359.P5899178773962105136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047380 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A057359.P5899178773962105136

namespace A057359

/-- `n-∑[char[A047380(2*n+1)]]` -/
def P5899178773962105136.Spec : Prop :=
  ∀ n, P5899178773962105136.a n = A057359 n

end A057359

/-! ## A057359.P3388781598873440551

`∑[char[comp[A002265(2*(n+2))+3*n-1]+1]]`
-/

namespace A057359.P3388781598873440551
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (n + 2)) + ((3 * n : ℤ) - 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057359.P3388781598873440551

namespace A057359

/-- `∑[char[comp[A002265(2*(n+2))+3*n-1]+1]]` -/
def P3388781598873440551.Spec : Prop :=
  ∀ n, (P3388781598873440551.a n : ℤ) = A057359 n

end A057359

/-! ## A057359.P10591519164891184950

`A082977(n+1)%A028310(n)`
-/

namespace A057359.P10591519164891184950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082977 (n + 1)) (A028310 n)

end

end A057359.P10591519164891184950

namespace A057359

/-- `A082977(n+1)%A028310(n)` -/
def P10591519164891184950.Spec : Prop :=
  ∀ n, P10591519164891184950.a n = A057359 n

end A057359

/-! ## A057359.P5417660505601115460

`A083089(n+1)-(A109720(n)+n)`
-/

namespace A057359.P5417660505601115460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083089 (n + 1) - (A109720 n + (n : ℤ))

end

end A057359.P5417660505601115460

namespace A057359

/-- `A083089(n+1)-(A109720(n)+n)` -/
def P5417660505601115460.Spec : Prop :=
  ∀ n, P5417660505601115460.a n = A057359 n

end A057359

/-! ## A057359.P4676702319691929078

`A057357(n)+A004526(n-A057357(n))`
-/

namespace A057359.P4676702319691929078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057357 n + A004526 ((n : ℤ) - A057357 n).toNat

end

end A057359.P4676702319691929078

namespace A057359

/-- `A057357(n)+A004526(n-A057357(n))` -/
def P4676702319691929078.Spec : Prop :=
  ∀ n, P4676702319691929078.a n = A057359 n

end A057359

/-! ## A057359.P2667869122041262159

`A057357(n)+A057358(n)-A057356(n)`
-/

namespace A057359.P2667869122041262159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057357 n + (A057358 n - A057356 n)

end

end A057359.P2667869122041262159

namespace A057359

/-- `A057357(n)+A057358(n)-A057356(n)` -/
def P2667869122041262159.Spec : Prop :=
  ∀ n, P2667869122041262159.a n = A057359 n

end A057359

/-! ## A057359.P18090349552873655120

`n-Δ[Δ[A172046(n)]]`
-/

namespace A057359.P18090349552873655120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172046 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A057359.P18090349552873655120

namespace A057359

/-- `n-Δ[Δ[A172046(n)]]` -/
def P18090349552873655120.Spec : Prop :=
  ∀ n, P18090349552873655120.a n = A057359 n

end A057359

/-! ## A057359.P4127401313616781501

`A060107(n+2)-(n+2)`
-/

namespace A057359.P4127401313616781501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060107 (n + 2) - (n + 2 : ℤ)

end

end A057359.P4127401313616781501

namespace A057359

/-- `A060107(n+2)-(n+2)` -/
def P4127401313616781501.Spec : Prop :=
  ∀ n, P4127401313616781501.a n = A057359 n

end A057359

/-! ## A057359.P5969615842390056330

`n-∑[A238470(n+1)²]`
-/

namespace A057359.P5969615842390056330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238470 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057359.P5969615842390056330

namespace A057359

/-- `n-∑[A238470(n+1)²]` -/
def P5969615842390056330.Spec : Prop :=
  ∀ n, P5969615842390056330.a n = A057359 n

end A057359

/-! ## A057359.P4398946578353424178

`A023444(A060107(n+2)-n)`
-/

namespace A057359.P4398946578353424178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A060107 (n + 2) - (n : ℤ)).toNat

end

end A057359.P4398946578353424178

namespace A057359

/-- `A023444(A060107(n+2)-n)` -/
def P4398946578353424178.Spec : Prop :=
  ∀ n, P4398946578353424178.a n = A057359 n

end A057359

/-!
# A057360: a(n) = floor(3*n/8).

The programs for A057360, the canonical program `A057360.P3752530358604976482` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057360 has offset 0).

The definition of A057360 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3*n/8)` (program `A057360.P3752530358604976482`, by `A057360.P3752530358604976482.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057360.P3752530358604976482

`floor(3*n/8)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057360

/-- `floor(3*n/8)` -/
def P3752530358604976482.Spec : Prop :=
  ∀ n, P3752530358604976482.a n = A057360 n

theorem P3752530358604976482.correct : P3752530358604976482.Spec := by
  intro n
  simp only [A057360]

end A057360

/-! ## A057360.P14488091672216302910

`a(n-1)+a(n-8)-a(n-9)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=1, a(6)=2, a(7)=2, a(8)=3`
-/

namespace A057360.P14488091672216302910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 1, 1, 2, 2, 3] fun n a =>
  a (n - 1) + a (n - 8) - a (n - 9)

end

end A057360.P14488091672216302910

namespace A057360

/-- `a(n-1)+a(n-8)-a(n-9)` -/
def P14488091672216302910.Spec : Prop :=
  ∀ n, P14488091672216302910.a n = A057360 n

end A057360

/-! ## A057360.P578622099863904553

`A002265(A032766(n))`
-/

namespace A057360.P578622099863904553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A032766 n).toNat

end

end A057360.P578622099863904553

namespace A057360

/-- `A002265(A032766(n))` -/
def P578622099863904553.Spec : Prop :=
  ∀ n, P578622099863904553.a n = A057360 n

end A057360

/-! ## A057360.P14852501954617985350

`A132292(A008585(n)+1)`
-/

namespace A057360.P14852501954617985350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (A008585 n + 1).toNat

end

end A057360.P14852501954617985350

namespace A057360

/-- `A132292(A008585(n)+1)` -/
def P14852501954617985350.Spec : Prop :=
  ∀ n, P14852501954617985350.a n = A057360 n

end A057360

/-! ## A057360.P2246068245994025077

`round(∑[(n-1)%4/4])`
-/

namespace A057360.P2246068245994025077
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod ((n : ℤ) - 1) 4 : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A057360.P2246068245994025077

namespace A057360

/-- `round(∑[(n-1)%4/4])` -/
def P2246068245994025077.Spec : Prop :=
  ∀ n, P2246068245994025077.a n = A057360 n

end A057360

/-! ## A057360.P12231171930835118239

`n-∑[(n%8)²%3]`
-/

namespace A057360.P12231171930835118239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 8) ^ 2 % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A057360.P12231171930835118239

namespace A057360

/-- `n-∑[(n%8)²%3]` -/
def P12231171930835118239.Spec : Prop :=
  ∀ n, P12231171930835118239.a n = A057360 n

end A057360

/-! ## A057360.P5120348234268572372

`∑[char[A047399(n+2)]]`
-/

namespace A057360.P5120348234268572372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047399 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057360.P5120348234268572372

namespace A057360

/-- `∑[char[A047399(n+2)]]` -/
def P5120348234268572372.Spec : Prop :=
  ∀ n, (P5120348234268572372.a n : ℤ) = A057360 n

end A057360

/-! ## A057360.P9452416199091246992

`round(A037915(n)/2)-1`
-/

namespace A057360.P9452416199091246992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A037915 n : ℚ) / 2) - 1

end

end A057360.P9452416199091246992

namespace A057360

/-- `round(A037915(n)/2)-1` -/
def P9452416199091246992.Spec : Prop :=
  ∀ n, P9452416199091246992.a n = A057360 n

end A057360

/-! ## A057360.P2453809592164272565

`A057355(n-(a(n-1)+1))` with `a(0)=0`
-/

namespace A057360.P2453809592164272565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A057355 ((n : ℤ) - (a (n - 1) + 1)).toNat

end

end A057360.P2453809592164272565

namespace A057360

/-- `A057355(n-(a(n-1)+1))` -/
def P2453809592164272565.Spec : Prop :=
  ∀ n, P2453809592164272565.a n = A057360 n

end A057360

/-! ## A057360.P16262610009142754712

`A057355(n-1-a(n-1))` with `a(0)=0`
-/

namespace A057360.P16262610009142754712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A057355 ((n : ℤ) - 1 - a (n - 1)).toNat

end

end A057360.P16262610009142754712

namespace A057360

/-- `A057355(n-1-a(n-1))` -/
def P16262610009142754712.Spec : Prop :=
  ∀ n, P16262610009142754712.a n = A057360 n

end A057360

/-! ## A057360.P17077854275437982154

`∑[char[A042968(2*(n+1))+1]]`
-/

namespace A057360.P17077854275437982154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (2 * (n + 1)) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057360.P17077854275437982154

namespace A057360

/-- `∑[char[A042968(2*(n+1))+1]]` -/
def P17077854275437982154.Spec : Prop :=
  ∀ n, (P17077854275437982154.a n : ℤ) = A057360 n

end A057360

/-! ## A057360.P13986017989335691511

`A004526(A057353(n))`
-/

namespace A057360.P13986017989335691511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A057353 n).toNat

end

end A057360.P13986017989335691511

namespace A057360

/-- `A004526(A057353(n))` -/
def P13986017989335691511.Spec : Prop :=
  ∀ n, P13986017989335691511.a n = A057360 n

end A057360

/-! ## A057360.P9418177068112013053

`A004526(A037915(n)-1)`
-/

namespace A057360.P9418177068112013053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A037915 n - 1).toNat

end

end A057360.P9418177068112013053

namespace A057360

/-- `A004526(A037915(n)-1)` -/
def P9418177068112013053.Spec : Prop :=
  ∀ n, P9418177068112013053.a n = A057360 n

end A057360

/-! ## A057360.P1506552323945829345

`A004526(n-A110655(n))`
-/

namespace A057360.P1506552323945829345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) - A110655 n).toNat

end

end A057360.P1506552323945829345

namespace A057360

/-- `A004526(n-A110655(n))` -/
def P1506552323945829345.Spec : Prop :=
  ∀ n, P1506552323945829345.a n = A057360 n

end A057360

/-! ## A057360.P15210458094551208813

`A065033(A057353(n)+1)-1`
-/

namespace A057360.P15210458094551208813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A057353 n + 1).toNat - 1

end

end A057360.P15210458094551208813

namespace A057360

/-- `A065033(A057353(n)+1)-1` -/
def P15210458094551208813.Spec : Prop :=
  ∀ n, P15210458094551208813.a n = A057360 n

end A057360

/-! ## A057360.P9807750748141842277

`A080513(A057353(n)+1)-2`
-/

namespace A057360.P9807750748141842277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A057353 n + 1).toNat - 2

end

end A057360.P9807750748141842277

namespace A057360

/-- `A080513(A057353(n)+1)-2` -/
def P9807750748141842277.Spec : Prop :=
  ∀ n, P9807750748141842277.a n = A057360 n

end A057360

/-! ## A057360.P8992889424451969472

`A004526(2*n-A047203(n+1))`
-/

namespace A057360.P8992889424451969472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((2 * n : ℤ) - A047203 (n + 1)).toNat

end

end A057360.P8992889424451969472

namespace A057360

/-- `A004526(2*n-A047203(n+1))` -/
def P8992889424451969472.Spec : Prop :=
  ∀ n, P8992889424451969472.a n = A057360 n

end A057360

/-! ## A057360.P5064039217669888137

`A004526(2*n-A245231(n+1))`
-/

namespace A057360.P5064039217669888137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((2 * n : ℤ) - A245231 (n + 1)).toNat

end

end A057360.P5064039217669888137

namespace A057360

/-- `A004526(2*n-A245231(n+1))` -/
def P5064039217669888137.Spec : Prop :=
  ∀ n, P5064039217669888137.a n = A057360 n

end A057360

/-! ## A057360.P7921295961350118696

`A004526(A187322(n)-A004526(n))`
-/

namespace A057360.P7921295961350118696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A187322 n - A004526 n).toNat

end

end A057360.P7921295961350118696

namespace A057360

/-- `A004526(A187322(n)-A004526(n))` -/
def P7921295961350118696.Spec : Prop :=
  ∀ n, P7921295961350118696.a n = A057360 n

end A057360

/-! ## A057360.P16289473514925132869

`A004526(A066530(n+1))-1`
-/

namespace A057360.P16289473514925132869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A066530 (n + 1)).toNat - 1

end

end A057360.P16289473514925132869

namespace A057360

/-- `A004526(A066530(n+1))-1` -/
def P16289473514925132869.Spec : Prop :=
  ∀ n, P16289473514925132869.a n = A057360 n

end A057360

/-!
# A057361: a(n) = floor(5*n/8).

The programs for A057361, the canonical program `A057361.P9984928329385768052` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057361 has offset 0).

The definition of A057361 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(5*n/8)` (program `A057361.P9984928329385768052`, by `A057361.P9984928329385768052.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057361.P9984928329385768052

`floor(5*n/8)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057361

/-- `floor(5*n/8)` -/
def P9984928329385768052.Spec : Prop :=
  ∀ n, P9984928329385768052.a n = A057361 n

theorem P9984928329385768052.correct : P9984928329385768052.Spec := by
  intro n
  simp only [A057361]

end A057361

/-! ## A057361.P15384708608160118302

`a(n-1)+a(n-8)-a(n-9)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=2, a(5)=3, a(6)=3, a(7)=4, a(8)=5`
-/

namespace A057361.P15384708608160118302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 1, 2, 3, 3, 4, 5] fun n a =>
  a (n - 1) + a (n - 8) - a (n - 9)

end

end A057361.P15384708608160118302

namespace A057361

/-- `a(n-1)+a(n-8)-a(n-9)` -/
def P15384708608160118302.Spec : Prop :=
  ∀ n, P15384708608160118302.a n = A057361 n

end A057361

/-! ## A057361.P3625846155052423299

`∑[char[A007379(n+1)]]`
-/

namespace A057361.P3625846155052423299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007379 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057361.P3625846155052423299

namespace A057361

/-- `∑[char[A007379(n+1)]]` -/
def P3625846155052423299.Spec : Prop :=
  ∀ n, (P3625846155052423299.a n : ℤ) = A057361 n

end A057361

/-! ## A057361.P8137148492964938463

`∑[char[A080033(n+1)]]`
-/

namespace A057361.P8137148492964938463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080033 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057361.P8137148492964938463

namespace A057361

/-- `∑[char[A080033(n+1)]]` -/
def P8137148492964938463.Spec : Prop :=
  ∀ n, (P8137148492964938463.a n : ℤ) = A057361 n

end A057361

/-! ## A057361.P2049484605697938780

`∑[char[A007379(n)]]-1`
-/

namespace A057361.P2049484605697938780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007379 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A057361.P2049484605697938780

namespace A057361

/-- `∑[char[A007379(n)]]-1` -/
def P2049484605697938780.Spec : Prop :=
  ∀ n, P2049484605697938780.a n = A057361 n

end A057361

/-! ## A057361.P2360612471993481686

`∑[char[A047496(n+2)]]`
-/

namespace A057361.P2360612471993481686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047496 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057361.P2360612471993481686

namespace A057361

/-- `∑[char[A047496(n+2)]]` -/
def P2360612471993481686.Spec : Prop :=
  ∀ n, (P2360612471993481686.a n : ℤ) = A057361 n

end A057361

/-! ## A057361.P12890451692703054789

`∑[char[A080033(n)]]-1`
-/

namespace A057361.P12890451692703054789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080033 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A057361.P12890451692703054789

namespace A057361

/-- `∑[char[A080033(n)]]-1` -/
def P12890451692703054789.Spec : Prop :=
  ∀ n, P12890451692703054789.a n = A057361 n

end A057361

/-! ## A057361.P17693666855615764622

`n-∑[char[A042968(2*n+1)]]`
-/

namespace A057361.P17693666855615764622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A057361.P17693666855615764622

namespace A057361

/-- `n-∑[char[A042968(2*n+1)]]` -/
def P17693666855615764622.Spec : Prop :=
  ∀ n, P17693666855615764622.a n = A057361 n

end A057361

/-! ## A057361.P13778773298402885156

`n-∑[char[A047420(2*(n+1))]]`
-/

namespace A057361.P13778773298402885156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047420 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A057361.P13778773298402885156

namespace A057361

/-- `n-∑[char[A047420(2*(n+1))]]` -/
def P13778773298402885156.Spec : Prop :=
  ∀ n, P13778773298402885156.a n = A057361 n

end A057361

/-! ## A057361.P8969022749359696010

`A057360(n+1)+A002265(n)`
-/

namespace A057361.P8969022749359696010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 (n + 1) + A002265 n

end

end A057361.P8969022749359696010

namespace A057361

/-- `A057360(n+1)+A002265(n)` -/
def P8969022749359696010.Spec : Prop :=
  ∀ n, P8969022749359696010.a n = A057361 n

end A057361

/-! ## A057361.P9268640697137808745

`n-A110654(n-A002265(n))`
-/

namespace A057361.P9268640697137808745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A110654 ((n : ℤ) - A002265 n).toNat

end

end A057361.P9268640697137808745

namespace A057361

/-- `n-A110654(n-A002265(n))` -/
def P9268640697137808745.Spec : Prop :=
  ∀ n, P9268640697137808745.a n = A057361 n

end A057361

/-! ## A057361.P1874653501131384452

`A004526(n-A002265(n))+A002265(n)`
-/

namespace A057361.P1874653501131384452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) - A002265 n).toNat + A002265 n

end

end A057361.P1874653501131384452

namespace A057361

/-- `A004526(n-A002265(n))+A002265(n)` -/
def P1874653501131384452.Spec : Prop :=
  ∀ n, P1874653501131384452.a n = A057361 n

end A057361

/-! ## A057361.P1716124515852957691

`n-A004526(A037915(n+1))`
-/

namespace A057361.P1716124515852957691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004526 (A037915 (n + 1)).toNat

end

end A057361.P1716124515852957691

namespace A057361

/-- `n-A004526(A037915(n+1))` -/
def P1716124515852957691.Spec : Prop :=
  ∀ n, P1716124515852957691.a n = A057361 n

end A057361

/-! ## A057361.P12706970157786006391

`n-A057360(A098180(n+2))`
-/

namespace A057361.P12706970157786006391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A057360 (A098180 (n + 2)).toNat

end

end A057361.P12706970157786006391

namespace A057361

/-- `n-A057360(A098180(n+2))` -/
def P12706970157786006391.Spec : Prop :=
  ∀ n, P12706970157786006391.a n = A057361 n

end A057361

/-! ## A057361.P4046748329069641989

`n+1-A110654(A066530(n+2))`
-/

namespace A057361.P4046748329069641989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A110654 (A066530 (n + 2)).toNat

end

end A057361.P4046748329069641989

namespace A057361

/-- `n+1-A110654(A066530(n+2))` -/
def P4046748329069641989.Spec : Prop :=
  ∀ n, P4046748329069641989.a n = A057361 n

end A057361

/-! ## A057361.P10348475774542325419

`A008619(A002265(n)+n)-1`
-/

namespace A057361.P10348475774542325419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A002265 n + (n : ℤ)).toNat - 1

end

end A057361.P10348475774542325419

namespace A057361

/-- `A008619(A002265(n)+n)-1` -/
def P10348475774542325419.Spec : Prop :=
  ∀ n, P10348475774542325419.a n = A057361 n

end A057361

/-! ## A057361.P1744362823624721735

`A032766(A001068(n))-A001068(n)`
-/

namespace A057361.P1744362823624721735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A001068 n).toNat - A001068 n

end

end A057361.P1744362823624721735

namespace A057361

/-- `A032766(A001068(n))-A001068(n)` -/
def P1744362823624721735.Spec : Prop :=
  ∀ n, P1744362823624721735.a n = A057361 n

end A057361

/-! ## A057361.P6660681756750599734

`A004526(A001068(n))`
-/

namespace A057361.P6660681756750599734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001068 n).toNat

end

end A057361.P6660681756750599734

namespace A057361

/-- `A004526(A001068(n))` -/
def P6660681756750599734.Spec : Prop :=
  ∀ n, P6660681756750599734.a n = A057361 n

end A057361

/-! ## A057361.P12136018028017060646

`A004526(A002265(n)+n)`
-/

namespace A057361.P12136018028017060646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002265 n + (n : ℤ)).toNat

end

end A057361.P12136018028017060646

namespace A057361

/-- `A004526(A002265(n)+n)` -/
def P12136018028017060646.Spec : Prop :=
  ∀ n, P12136018028017060646.a n = A057361 n

end A057361

/-! ## A057361.P1304585459163440397

`A004526(A047201(n+1)-1)`
-/

namespace A057361.P1304585459163440397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A047201 (n + 1) - 1).toNat

end

end A057361.P1304585459163440397

namespace A057361

/-- `A004526(A047201(n+1)-1)` -/
def P1304585459163440397.Spec : Prop :=
  ∀ n, P1304585459163440397.a n = A057361 n

end A057361

/-!
# A057362: a(n) = floor(5*n/13).

The programs for A057362, the canonical program `A057362.P13227607137019024125` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057362 has offset 0).

The definition of A057362 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(5*n/13)` (program `A057362.P13227607137019024125`, by `A057362.P13227607137019024125.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057362.P13227607137019024125

`floor(5*n/13)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057362

/-- `floor(5*n/13)` -/
def P13227607137019024125.Spec : Prop :=
  ∀ n, P13227607137019024125.a n = A057362 n

theorem P13227607137019024125.correct : P13227607137019024125.Spec := by
  intro n
  simp only [A057362]

end A057362

/-! ## A057362.P8714908538607583700

`∑[A212126(abs(1-n))]`
-/

namespace A057362.P8714908538607583700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212126 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057362.P8714908538607583700

namespace A057362

/-- `∑[A212126(abs(1-n))]` -/
def P8714908538607583700.Spec : Prop :=
  ∀ n, P8714908538607583700.a n = A057362 n

end A057362

/-! ## A057362.P793526746766512100

`A057361(n-(a(n-1)+1))` with `a(0)=0`
-/

namespace A057362.P793526746766512100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A057361 ((n : ℤ) - (a (n - 1) + 1)).toNat

end

end A057362.P793526746766512100

namespace A057362

/-- `A057361(n-(a(n-1)+1))` -/
def P793526746766512100.Spec : Prop :=
  ∀ n, P793526746766512100.a n = A057362 n

end A057362

/-! ## A057362.P14822224296991147026

`A212126(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A057362.P14822224296991147026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A212126 (n - 1) + a (n - 1)

end

end A057362.P14822224296991147026

namespace A057362

/-- `A212126(n-1)+a(n-1)` -/
def P14822224296991147026.Spec : Prop :=
  ∀ n, P14822224296991147026.a n = A057362 n

end A057362

/-! ## A057362.P10489556291737847410

`A057361(n-1-a(n-1))` with `a(0)=0`
-/

namespace A057362.P10489556291737847410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A057361 ((n : ℤ) - 1 - a (n - 1)).toNat

end

end A057362.P10489556291737847410

namespace A057362

/-- `A057361(n-1-a(n-1))` -/
def P10489556291737847410.Spec : Prop :=
  ∀ n, P10489556291737847410.a n = A057362 n

end A057362

/-! ## A057362.P2330048426196914858

`n-∑[char[A057361(n)+1+n]]`
-/

namespace A057362.P2330048426196914858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057361 n + 1 + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A057362.P2330048426196914858

namespace A057362

/-- `n-∑[char[A057361(n)+1+n]]` -/
def P2330048426196914858.Spec : Prop :=
  ∀ n, P2330048426196914858.a n = A057362 n

end A057362

/-! ## A057362.P6583860408382825058

`∑[A212126(n)]-A212126(n)`
-/

namespace A057362.P6583860408382825058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A212126 n

end

end A057362.P6583860408382825058

namespace A057362

/-- `∑[A212126(n)]-A212126(n)` -/
def P6583860408382825058.Spec : Prop :=
  ∀ n, P6583860408382825058.a n = A057362 n

end A057362

/-! ## A057362.P6491118888531070622

`A057361(∑[char[A057361(n+1)+n+1]])`
-/

namespace A057362.P6491118888531070622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057361 (n + 1) + (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057361 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A057362.P6491118888531070622

namespace A057362

/-- `A057361(∑[char[A057361(n+1)+n+1]])` -/
def P6491118888531070622.Spec : Prop :=
  ∀ n, P6491118888531070622.a n = A057362 n

end A057362

/-! ## A057362.P2145031051286978379

`4-A057363(n+8)+n`
-/

namespace A057362.P2145031051286978379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A057363 (n + 8) + (n : ℤ)

end

end A057362.P2145031051286978379

namespace A057362

/-- `4-A057363(n+8)+n` -/
def P2145031051286978379.Spec : Prop :=
  ∀ n, P2145031051286978379.a n = A057362 n

end A057362

/-! ## A057362.P6050559504742062057

`A002264(A002265(A057363(n))+n)`
-/

namespace A057362.P6050559504742062057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A002265 (A057363 n).toNat + (n : ℤ)).toNat

end

end A057362.P6050559504742062057

namespace A057362

/-- `A002264(A002265(A057363(n))+n)` -/
def P6050559504742062057.Spec : Prop :=
  ∀ n, P6050559504742062057.a n = A057362 n

end A057362

/-! ## A057362.P13927817193580204361

`A057361(A004526(A057363(2*n+1)))`
-/

namespace A057362.P13927817193580204361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057361 (A004526 (A057363 (2 * n + 1)).toNat).toNat

end

end A057362.P13927817193580204361

namespace A057362

/-- `A057361(A004526(A057363(2*n+1)))` -/
def P13927817193580204361.Spec : Prop :=
  ∀ n, P13927817193580204361.a n = A057362 n

end A057362

/-! ## A057362.P12825435507065100960

`A057361(A057363(2*n)-A057363(n))`
-/

namespace A057362.P12825435507065100960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057361 (A057363 (2 * n) - A057363 n).toNat

end

end A057362.P12825435507065100960

namespace A057362

/-- `A057361(A057363(2*n)-A057363(n))` -/
def P12825435507065100960.Spec : Prop :=
  ∀ n, P12825435507065100960.a n = A057362 n

end A057362

/-! ## A057362.P10690395512308769514

`A342696(A312638(n))`
-/

namespace A057362.P10690395512308769514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (A312638 n).toNat

end

end A057362.P10690395512308769514

namespace A057362

/-- `A342696(A312638(n))` -/
def P10690395512308769514.Spec : Prop :=
  ∀ n, P10690395512308769514.a n = A057362 n

end A057362

/-! ## A057362.P8043219996460331084

`A342696(A313054(n))`
-/

namespace A057362.P8043219996460331084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (A313054 n).toNat

end

end A057362.P8043219996460331084

namespace A057362

/-- `A342696(A313054(n))` -/
def P8043219996460331084.Spec : Prop :=
  ∀ n, P8043219996460331084.a n = A057362 n

end A057362

/-! ## A057362.P2330231605035128047

`A342696(A314887(n))`
-/

namespace A057362.P2330231605035128047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (A314887 n).toNat

end

end A057362.P2330231605035128047

namespace A057362

/-- `A342696(A314887(n))` -/
def P2330231605035128047.Spec : Prop :=
  ∀ n, P2330231605035128047.a n = A057362 n

end A057362

/-! ## A057362.P16920786825157729308

`A002265(A002265(A057363(10*n)))`
-/

namespace A057362.P16920786825157729308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A002265 (A057363 (10 * n)).toNat).toNat

end

end A057362.P16920786825157729308

namespace A057362

/-- `A002265(A002265(A057363(10*n)))` -/
def P16920786825157729308.Spec : Prop :=
  ∀ n, P16920786825157729308.a n = A057362 n

end A057362

/-! ## A057362.P1504952356043950738

`round(log2(A000044(2*n+1))-n)`
-/

namespace A057362.P1504952356043950738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A000044 (2 * n + 1) : ℝ) - (n : ℝ))

end

end A057362.P1504952356043950738

namespace A057362

/-- `round(log2(A000044(2*n+1))-n)` -/
def P1504952356043950738.Spec : Prop :=
  ∀ n, P1504952356043950738.a n = A057362 n

end A057362

/-!
# A057363: a(n) = floor(8*n/13).

The programs for A057363, the canonical program `A057363.P18273624090386855730` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057363 has offset 0).

The definition of A057363 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(8*n/13)` (program `A057363.P18273624090386855730`, by `A057363.P18273624090386855730.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057363.P18273624090386855730

`floor(8*n/13)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057363

/-- `floor(8*n/13)` -/
def P18273624090386855730.Spec : Prop :=
  ∀ n, P18273624090386855730.a n = A057363 n

theorem P18273624090386855730.correct : P18273624090386855730.Spec := by
  intro n
  simp only [A057363]

end A057363

/-! ## A057363.P9696817631667042771

`∑[char[2*(n+1)-A057360(n+1)]]`
-/

namespace A057363.P9696817631667042771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A057360 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057363.P9696817631667042771

namespace A057363

/-- `∑[char[2*(n+1)-A057360(n+1)]]` -/
def P9696817631667042771.Spec : Prop :=
  ∀ n, (P9696817631667042771.a n : ℤ) = A057363 n

end A057363

/-! ## A057363.P5909054679352767333

`∑[char[round(A047203(n+2)/2)+n+1]]`
-/

namespace A057363.P5909054679352767333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A047203 (n + 2) : ℚ) / 2) + (n : ℤ) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057363.P5909054679352767333

namespace A057363

/-- `∑[char[round(A047203(n+2)/2)+n+1]]` -/
def P5909054679352767333.Spec : Prop :=
  ∀ n, (P5909054679352767333.a n : ℤ) = A057363 n

end A057363

/-! ## A057363.P11387574696121310057

`n-∑[A212126(n+4)]`
-/

namespace A057363.P11387574696121310057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212126 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057363.P11387574696121310057

namespace A057363

/-- `n-∑[A212126(n+4)]` -/
def P11387574696121310057.Spec : Prop :=
  ∀ n, P11387574696121310057.a n = A057363 n

end A057363

/-! ## A057363.P5814124154700729954

`n+1-A057362(n+5)`
-/

namespace A057363.P5814124154700729954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A057362 (n + 5)

end

end A057363.P5814124154700729954

namespace A057363

/-- `n+1-A057362(n+5)` -/
def P5814124154700729954.Spec : Prop :=
  ∀ n, P5814124154700729954.a n = A057363 n

end A057363

/-! ## A057363.P15929326511983508311

`A004526(A057355(A057362(n+1))+n)`
-/

namespace A057363.P15929326511983508311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A057355 (A057362 (n + 1)).toNat + (n : ℤ)).toNat

end

end A057363.P15929326511983508311

namespace A057363

/-- `A004526(A057355(A057362(n+1))+n)` -/
def P15929326511983508311.Spec : Prop :=
  ∀ n, P15929326511983508311.a n = A057363 n

end A057363

/-! ## A057363.P2340505160346631150

`A057364(a(n-1)+1+n)` with `a(0)=0`
-/

namespace A057363.P2340505160346631150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A057364 (a (n - 1) + 1 + (n : ℤ)).toNat

end

end A057363.P2340505160346631150

namespace A057363

/-- `A057364(a(n-1)+1+n)` -/
def P2340505160346631150.Spec : Prop :=
  ∀ n, P2340505160346631150.a n = A057363 n

end A057363

/-! ## A057363.P9438099810475222119

`A057364(A004523(A289199(n+1))+n)`
-/

namespace A057363.P9438099810475222119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057364 (A004523 (A289199 (n + 1)).toNat + (n : ℤ)).toNat

end

end A057363.P9438099810475222119

namespace A057363

/-- `A057364(A004523(A289199(n+1))+n)` -/
def P9438099810475222119.Spec : Prop :=
  ∀ n, P9438099810475222119.a n = A057363 n

end A057363

/-! ## A057363.P6339803589757666840

`A057364(2*n-A057362(n))`
-/

namespace A057363.P6339803589757666840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057364 ((2 * n : ℤ) - A057362 n).toNat

end

end A057363.P6339803589757666840

namespace A057363

/-- `A057364(2*n-A057362(n))` -/
def P6339803589757666840.Spec : Prop :=
  ∀ n, P6339803589757666840.a n = A057363 n

end A057363

/-! ## A057363.P6054947448510949696

`A057364(n-A057362(n)+n)`
-/

namespace A057363.P6054947448510949696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057364 ((n : ℤ) - A057362 n + (n : ℤ)).toNat

end

end A057363.P6054947448510949696

namespace A057363

/-- `A057364(n-A057362(n)+n)` -/
def P6054947448510949696.Spec : Prop :=
  ∀ n, P6054947448510949696.a n = A057363 n

end A057363

/-! ## A057363.P1879812492489651676

`A057364(n-(A057362(n)-n))`
-/

namespace A057363.P1879812492489651676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057364 ((n : ℤ) - (A057362 n - (n : ℤ))).toNat

end

end A057363.P1879812492489651676

namespace A057363

/-- `A057364(n-(A057362(n)-n))` -/
def P1879812492489651676.Spec : Prop :=
  ∀ n, P1879812492489651676.a n = A057363 n

end A057363

/-! ## A057363.P10543194589358074909

`A057358(A004523(2*n-A057362(n)))`
-/

namespace A057363.P10543194589358074909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057358 (A004523 ((2 * n : ℤ) - A057362 n).toNat).toNat

end

end A057363.P10543194589358074909

namespace A057363

/-- `A057358(A004523(2*n-A057362(n)))` -/
def P10543194589358074909.Spec : Prop :=
  ∀ n, P10543194589358074909.a n = A057363 n

end A057363

/-! ## A057363.P11761926207995448043

`round(A004767(Δ[n²])/13)-1`
-/

namespace A057363.P11761926207995448043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A004767 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 13) - 1

end

end A057363.P11761926207995448043

namespace A057363

/-- `round(A004767(Δ[n²])/13)-1` -/
def P11761926207995448043.Spec : Prop :=
  ∀ n, P11761926207995448043.a n = A057363 n

end A057363

/-! ## A057363.P786198336064821171

`abs(round(A004767(2*n+1)/13)-1)`
-/

namespace A057363.P786198336064821171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |SequenceMachineLib.roundAway ((A004767 (2 * n + 1) : ℚ) / 13) - 1|

end

end A057363.P786198336064821171

namespace A057363

/-- `abs(round(A004767(2*n+1)/13)-1)` -/
def P786198336064821171.Spec : Prop :=
  ∀ n, P786198336064821171.a n = A057363 n

end A057363

/-! ## A057363.P16782851027124703567

`A004526(A004523(A289199(2*n)))`
-/

namespace A057363.P16782851027124703567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004523 (A289199 (2 * n)).toNat).toNat

end

end A057363.P16782851027124703567

namespace A057363

/-- `A004526(A004523(A289199(2*n)))` -/
def P16782851027124703567.Spec : Prop :=
  ∀ n, P16782851027124703567.a n = A057363 n

end A057363

/-! ## A057363.P10745547228855837162

`ceil(round(A004767(4*n+1)/13)/2)-1`
-/

namespace A057363.P10745547228855837162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.roundAway ((A004767 (4 * n + 1) : ℚ) / 13) : ℚ) / 2⌉ - 1

end

end A057363.P10745547228855837162

namespace A057363

/-- `ceil(round(A004767(4*n+1)/13)/2)-1` -/
def P10745547228855837162.Spec : Prop :=
  ∀ n, P10745547228855837162.a n = A057363 n

end A057363

/-! ## A057363.P9522071917423408306

`A343609(A313800(n))`
-/

namespace A057363.P9522071917423408306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A313800 n).toNat

end

end A057363.P9522071917423408306

namespace A057363

/-- `A343609(A313800(n))` -/
def P9522071917423408306.Spec : Prop :=
  ∀ n, P9522071917423408306.a n = A057363 n

end A057363

/-!
# A057364: a(n) = floor(8*n/21).

The programs for A057364, the canonical program `A057364.P14407742008467313604` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057364 has offset 0).

The definition of A057364 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(8*n/21)` (program `A057364.P14407742008467313604`, by `A057364.P14407742008467313604.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057364.P14407742008467313604

`floor(8*n/21)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057364

/-- `floor(8*n/21)` -/
def P14407742008467313604.Spec : Prop :=
  ∀ n, P14407742008467313604.a n = A057364 n

theorem P14407742008467313604.correct : P14407742008467313604.Spec := by
  intro n
  simp only [A057364]

end A057364

/-! ## A057364.P8295729090153725852

`A057363(n-(a(n-1)+1))` with `a(0)=0`
-/

namespace A057364.P8295729090153725852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A057363 ((n : ℤ) - (a (n - 1) + 1)).toNat

end

end A057364.P8295729090153725852

namespace A057364

/-- `A057363(n-(a(n-1)+1))` -/
def P8295729090153725852.Spec : Prop :=
  ∀ n, P8295729090153725852.a n = A057364 n

end A057364

/-! ## A057364.P7209245238968240488

`A057363(n-1-a(n-1))` with `a(0)=0`
-/

namespace A057364.P7209245238968240488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A057363 ((n : ℤ) - 1 - a (n - 1)).toNat

end

end A057364.P7209245238968240488

namespace A057364

/-- `A057363(n-1-a(n-1))` -/
def P7209245238968240488.Spec : Prop :=
  ∀ n, P7209245238968240488.a n = A057364 n

end A057364

/-! ## A057364.P9701383707438649697

`A002264(comp[or(7, n)])`
-/

namespace A057364.P9701383707438649697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 7 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A057364.P9701383707438649697

namespace A057364

/-- `A002264(comp[or(7, n)])` -/
def P9701383707438649697.Spec : Prop :=
  ∀ n, P9701383707438649697.a n = A057364 n

end A057364

/-! ## A057364.P17315580619680316707

`A002264(lt[val(n+1, 2), 3])`
-/

namespace A057364.P17315580619680316707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A057364.P17315580619680316707

namespace A057364

/-- `A002264(lt[val(n+1, 2), 3])` -/
def P17315580619680316707.Spec : Prop :=
  ∀ n, P17315580619680316707.a n = A057364 n

end A057364

/-! ## A057364.P4773449577250677

`A002264(record[n-val(n+1, 8)])`
-/

namespace A057364.P4773449577250677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (n + 1) 8 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057364.P4773449577250677

namespace A057364

/-- `A002264(record[n-val(n+1, 8)])` -/
def P4773449577250677.Spec : Prop :=
  ∀ n, P4773449577250677.a n = A057364 n

end A057364

/-! ## A057364.P13460205353118406982

`A002264(comp[∑[and(8, n+2)]]-1)`
-/

namespace A057364.P13460205353118406982
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 8 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - 1)

end

end A057364.P13460205353118406982

namespace A057364

/-- `A002264(comp[∑[and(8, n+2)]]-1)` -/
def P13460205353118406982.Spec : Prop :=
  ∀ n, P13460205353118406982.a n = A057364 n

end A057364

/-! ## A057364.P18213899474877964407

`A002264(lt[n-and(n, n+1), 4])`
-/

namespace A057364.P18213899474877964407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land n (n + 1) : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A057364.P18213899474877964407

namespace A057364

/-- `A002264(lt[n-and(n, n+1), 4])` -/
def P18213899474877964407.Spec : Prop :=
  ∀ n, P18213899474877964407.a n = A057364 n

end A057364

/-! ## A057364.P9136209042402979982

`A002264(lt[or(n, n+1)-8, n])`
-/

namespace A057364.P9136209042402979982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 1) : ℤ) - 8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A057364.P9136209042402979982

namespace A057364

/-- `A002264(lt[or(n, n+1)-8, n])` -/
def P9136209042402979982.Spec : Prop :=
  ∀ n, P9136209042402979982.a n = A057364 n

end A057364

/-! ## A057364.P5144405228092925373

`A002264(comp[8*n]-C(n+1, n)+n)`
-/

namespace A057364.P5144405228092925373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (Nat.choose (n + 1) n : ℤ) + (n : ℤ)).toNat

end

end A057364.P5144405228092925373

namespace A057364

/-- `A002264(comp[8*n]-C(n+1, n)+n)` -/
def P5144405228092925373.Spec : Prop :=
  ∀ n, P5144405228092925373.a n = A057364 n

end A057364

/-! ## A057364.P13834830266108448299

`A002264(A004777(n+1))`
-/

namespace A057364.P13834830266108448299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A004777 (n + 1)).toNat

end

end A057364.P13834830266108448299

namespace A057364

/-- `A002264(A004777(n+1))` -/
def P13834830266108448299.Spec : Prop :=
  ∀ n, P13834830266108448299.a n = A057364 n

end A057364

/-! ## A057364.P8131023737593140106

`A002264(A047594(n+2)-2)`
-/

namespace A057364.P8131023737593140106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A047594 (n + 2) - 2).toNat

end

end A057364.P8131023737593140106

namespace A057364

/-- `A002264(A047594(n+2)-2)` -/
def P8131023737593140106.Spec : Prop :=
  ∀ n, P8131023737593140106.a n = A057364 n

end A057364

/-! ## A057364.P12841590227738621852

`A002264(A132270(n+1)+n)`
-/

namespace A057364.P12841590227738621852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A132270 (n + 1) + (n : ℤ)).toNat

end

end A057364.P12841590227738621852

namespace A057364

/-- `A002264(A132270(n+1)+n)` -/
def P12841590227738621852.Spec : Prop :=
  ∀ n, P12841590227738621852.a n = A057364 n

end A057364

/-! ## A057364.P18403123949187092167

`A002264(A002264(A057357(n))+n)`
-/

namespace A057364.P18403123949187092167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A002264 (A057357 n).toNat + (n : ℤ)).toNat

end

end A057364.P18403123949187092167

namespace A057364

/-- `A002264(A002264(A057357(n))+n)` -/
def P18403123949187092167.Spec : Prop :=
  ∀ n, P18403123949187092167.a n = A057364 n

end A057364

/-! ## A057364.P7318260619516192176

`A002264(A002265(A057358(n))+n)`
-/

namespace A057364.P7318260619516192176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A002265 (A057358 n).toNat + (n : ℤ)).toNat

end

end A057364.P7318260619516192176

namespace A057364

/-- `A002264(A002265(A057358(n))+n)` -/
def P7318260619516192176.Spec : Prop :=
  ∀ n, P7318260619516192176.a n = A057364 n

end A057364

/-! ## A057364.P16245277523291133999

`A002264(A004526(A057356(n))+n)`
-/

namespace A057364.P16245277523291133999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A004526 (A057356 n).toNat + (n : ℤ)).toNat

end

end A057364.P16245277523291133999

namespace A057364

/-- `A002264(A004526(A057356(n))+n)` -/
def P16245277523291133999.Spec : Prop :=
  ∀ n, P16245277523291133999.a n = A057364 n

end A057364

/-! ## A057364.P16302207758242910284

`A002264(A057358(2*n))`
-/

namespace A057364.P16302207758242910284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A057358 (2 * n)).toNat

end

end A057364.P16302207758242910284

namespace A057364

/-- `A002264(A057358(2*n))` -/
def P16302207758242910284.Spec : Prop :=
  ∀ n, P16302207758242910284.a n = A057364 n

end A057364

/-! ## A057364.P7805909626279689734

`A004526(A004523(A057358(n+n)))`
-/

namespace A057364.P7805909626279689734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004523 (A057358 (n + n)).toNat).toNat

end

end A057364.P7805909626279689734

namespace A057364

/-- `A004526(A004523(A057358(n+n)))` -/
def P7805909626279689734.Spec : Prop :=
  ∀ n, P7805909626279689734.a n = A057364 n

end A057364

/-! ## A057364.P6360618462871139611

`A152467(A132270(2*n+1)+2*n)`
-/

namespace A057364.P6360618462871139611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A132270 (2 * n + 1) + (2 * n : ℤ)).toNat

end

end A057364.P6360618462871139611

namespace A057364

/-- `A152467(A132270(2*n+1)+2*n)` -/
def P6360618462871139611.Spec : Prop :=
  ∀ n, P6360618462871139611.a n = A057364 n

end A057364

/-! ## A057364.P3340202078772789276

`A132270(A047400(n+1))`
-/

namespace A057364.P3340202078772789276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (A047400 (n + 1)).toNat

end

end A057364.P3340202078772789276

namespace A057364

/-- `A132270(A047400(n+1))` -/
def P3340202078772789276.Spec : Prop :=
  ∀ n, P3340202078772789276.a n = A057364 n

end A057364

/-!
# A057365: a(n) = floor(13*n/21).

The programs for A057365, the canonical program `A057365.P7882881441417086905` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057365 has offset 0).

The definition of A057365 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(13*n/21)` (program `A057365.P7882881441417086905`, by `A057365.P7882881441417086905.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057365.P7882881441417086905

`floor(13*n/21)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057365

/-- `floor(13*n/21)` -/
def P7882881441417086905.Spec : Prop :=
  ∀ n, P7882881441417086905.a n = A057365 n

theorem P7882881441417086905.correct : P7882881441417086905.Spec := by
  intro n
  simp only [A057365]

end A057365

/-! ## A057365.P8974724534421368057

`n-A002264(A047594(n+1)+2)`
-/

namespace A057365.P8974724534421368057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A002264 (A047594 (n + 1) + 2).toNat

end

end A057365.P8974724534421368057

namespace A057365

/-- `n-A002264(A047594(n+1)+2)` -/
def P8974724534421368057.Spec : Prop :=
  ∀ n, P8974724534421368057.a n = A057365 n

end A057365

/-! ## A057365.P9734372827841209485

`A004526(A002264(A057359(n))+n)`
-/

namespace A057365.P9734372827841209485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002264 (A057359 n).toNat + (n : ℤ)).toNat

end

end A057365.P9734372827841209485

namespace A057365

/-- `A004526(A002264(A057359(n))+n)` -/
def P9734372827841209485.Spec : Prop :=
  ∀ n, P9734372827841209485.a n = A057365 n

end A057365

/-! ## A057365.P3449422160529719640

`A004526(A057361(A057364(n+1))+n)`
-/

namespace A057365.P3449422160529719640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A057361 (A057364 (n + 1)).toNat + (n : ℤ)).toNat

end

end A057365.P3449422160529719640

namespace A057365

/-- `A004526(A057361(A057364(n+1))+n)` -/
def P3449422160529719640.Spec : Prop :=
  ∀ n, P3449422160529719640.a n = A057365 n

end A057365

/-! ## A057365.P17025026187519884159

`A002264(A057357(2*n)+n)`
-/

namespace A057365.P17025026187519884159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A057357 (2 * n) + (n : ℤ)).toNat

end

end A057365.P17025026187519884159

namespace A057365

/-- `A002264(A057357(2*n)+n)` -/
def P17025026187519884159.Spec : Prop :=
  ∀ n, P17025026187519884159.a n = A057365 n

end A057365

/-! ## A057365.P3191006430922046687

`A004526(A057364(n+1)+A057357(2*n))`
-/

namespace A057365.P3191006430922046687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A057364 (n + 1) + A057357 (2 * n)).toNat

end

end A057365.P3191006430922046687

namespace A057365

/-- `A004526(A057364(n+1)+A057357(2*n))` -/
def P3191006430922046687.Spec : Prop :=
  ∀ n, P3191006430922046687.a n = A057365 n

end A057365

/-! ## A057365.P9939989762530358034

`A002264(A057356(3*n)+n)`
-/

namespace A057365.P9939989762530358034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A057356 (3 * n) + (n : ℤ)).toNat

end

end A057365.P9939989762530358034

namespace A057365

/-- `A002264(A057356(3*n)+n)` -/
def P9939989762530358034.Spec : Prop :=
  ∀ n, P9939989762530358034.a n = A057365 n

end A057365

/-! ## A057365.P15131870933689993670

`A002264(A057359(4*n)-n)`
-/

namespace A057365.P15131870933689993670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A057359 (4 * n) - (n : ℤ)).toNat

end

end A057365.P15131870933689993670

namespace A057365

/-- `A002264(A057359(4*n)-n)` -/
def P15131870933689993670.Spec : Prop :=
  ∀ n, P15131870933689993670.a n = A057365 n

end A057365

/-! ## A057365.P11501410107054858352

`A132270(A047400(2*n+1)-n)`
-/

namespace A057365.P11501410107054858352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (A047400 (2 * n + 1) - (n : ℤ)).toNat

end

end A057365.P11501410107054858352

namespace A057365

/-- `A132270(A047400(2*n+1)-n)` -/
def P11501410107054858352.Spec : Prop :=
  ∀ n, P11501410107054858352.a n = A057365 n

end A057365

/-! ## A057365.P2156083264921081078

`A132270(A047368(2*n+1)+2*n+1)`
-/

namespace A057365.P2156083264921081078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (A047368 (2 * n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A057365.P2156083264921081078

namespace A057365

/-- `A132270(A047368(2*n+1)+2*n+1)` -/
def P2156083264921081078.Spec : Prop :=
  ∀ n, P2156083264921081078.a n = A057365 n

end A057365

/-! ## A057365.P8839302164853129099

`A343609(A313982(n))`
-/

namespace A057365.P8839302164853129099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A313982 n).toNat

end

end A057365.P8839302164853129099

namespace A057365

/-- `A343609(A313982(n))` -/
def P8839302164853129099.Spec : Prop :=
  ∀ n, P8839302164853129099.a n = A057365 n

end A057365

/-!
# A057366: a(n) = floor(7*n/19).

The programs for A057366, the canonical program `A057366.P9763531924812954299` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057366 has offset 0).

The definition of A057366 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(7*n/19)` (program `A057366.P9763531924812954299`, by `A057366.P9763531924812954299.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057366.P9763531924812954299

`floor(7*n/19)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057366

/-- `floor(7*n/19)` -/
def P9763531924812954299.Spec : Prop :=
  ∀ n, P9763531924812954299.a n = A057366 n

theorem P9763531924812954299.correct : P9763531924812954299.Spec := by
  intro n
  simp only [A057366]

end A057366

/-! ## A057366.P16419819125120120428

`round(A116728(n+1)/19)`
-/

namespace A057366.P16419819125120120428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A116728 (n + 1) : ℚ) / 19)

end

end A057366.P16419819125120120428

namespace A057366

/-- `round(A116728(n+1)/19)` -/
def P16419819125120120428.Spec : Prop :=
  ∀ n, P16419819125120120428.a n = A057366 n

end A057366

/-! ## A057366.P8231997658420581108

`∑[char[A083089(n+1)+n]]-1`
-/

namespace A057366.P8231997658420581108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083089 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A057366.P8231997658420581108

namespace A057366

/-- `∑[char[A083089(n+1)+n]]-1` -/
def P8231997658420581108.Spec : Prop :=
  ∀ n, P8231997658420581108.a n = A057366 n

end A057366

/-! ## A057366.P5645298935363397566

`A023443(∑[char[A083089(n+1)+n]])`
-/

namespace A057366.P5645298935363397566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083089 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A057366.P5645298935363397566

namespace A057366

/-- `A023443(∑[char[A083089(n+1)+n]])` -/
def P5645298935363397566.Spec : Prop :=
  ∀ n, P5645298935363397566.a n = A057366 n

end A057366

/-! ## A057366.P15841667375466905348

`∑[char[A083089(n+1)+n]*A057427(n)]`
-/

namespace A057366.P15841667375466905348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083089 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057366.P15841667375466905348

namespace A057366

/-- `∑[char[A083089(n+1)+n]*A057427(n)]` -/
def P15841667375466905348.Spec : Prop :=
  ∀ n, P15841667375466905348.a n = A057366 n

end A057366

/-! ## A057366.P3598292076449597442

`A054404(n+2)-A262681(A323621(n))`
-/

namespace A057366.P3598292076449597442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (n + 2) - A262681 (A323621 n).toNat

end

end A057366.P3598292076449597442

namespace A057366

/-- `A054404(n+2)-A262681(A323621(n))` -/
def P3598292076449597442.Spec : Prop :=
  ∀ n, P3598292076449597442.a n = A057366 n

end A057366

/-! ## A057366.P2390327852702686513

`A054404(n+2)-A120263(A135283(n+1))`
-/

namespace A057366.P2390327852702686513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (n + 2) - A120263 (A135283 (n + 1)).toNat

end

end A057366.P2390327852702686513

namespace A057366

/-- `A054404(n+2)-A120263(A135283(n+1))` -/
def P2390327852702686513.Spec : Prop :=
  ∀ n, P2390327852702686513.a n = A057366 n

end A057366

/-! ## A057366.P1550216356241560914

`A028898(A007089(n))%A020915(n)`
-/

namespace A057366.P1550216356241560914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028898 (A007089 n).toNat) (A020915 n)

end

end A057366.P1550216356241560914

namespace A057366

/-- `A028898(A007089(n))%A020915(n)` -/
def P1550216356241560914.Spec : Prop :=
  ∀ n, P1550216356241560914.a n = A057366 n

end A057366

/-! ## A057366.P6789874443495921441

`n-A020915(n)%A214469(n+1)`
-/

namespace A057366.P6789874443495921441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A020915 n) (A214469 (n + 1))

end

end A057366.P6789874443495921441

namespace A057366

/-- `n-A020915(n)%A214469(n+1)` -/
def P6789874443495921441.Spec : Prop :=
  ∀ n, P6789874443495921441.a n = A057366 n

end A057366

/-! ## A057366.P7660354600108531925

`A054404(n+2)-A019425(A068336(n+1))`
-/

namespace A057366.P7660354600108531925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (n + 2) - A019425 (A068336 (n + 1)).toNat

end

end A057366.P7660354600108531925

namespace A057366

/-- `A054404(n+2)-A019425(A068336(n+1))` -/
def P7660354600108531925.Spec : Prop :=
  ∀ n, P7660354600108531925.a n = A057366 n

end A057366

/-!
# A057367: a(n) = floor(11*n/30).

The programs for A057367, the canonical program `A057367.P16611010275897375739` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057367 has offset 0).

The definition of A057367 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(11*n/30)` (program `A057367.P16611010275897375739`, by `A057367.P16611010275897375739.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057367.P16611010275897375739

`floor(11*n/30)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057367

/-- `floor(11*n/30)` -/
def P16611010275897375739.Spec : Prop :=
  ∀ n, P16611010275897375739.a n = A057367 n

theorem P16611010275897375739.correct : P16611010275897375739.Spec := by
  intro n
  simp only [A057367]

end A057367

/-! ## A057367.P4600921092070322278

`A002264(floor(n/10)+n)`
-/

namespace A057367.P4600921092070322278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (⌊(n : ℚ) / 10⌋ + (n : ℤ)).toNat

end

end A057367.P4600921092070322278

namespace A057367

/-- `A002264(floor(n/10)+n)` -/
def P4600921092070322278.Spec : Prop :=
  ∀ n, P4600921092070322278.a n = A057367 n

end A057367

/-! ## A057367.P12045412209613553280

`A008620(A059995(n)+n)-1`
-/

namespace A057367.P12045412209613553280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A059995 n + (n : ℤ)).toNat - 1

end

end A057367.P12045412209613553280

namespace A057367

/-- `A008620(A059995(n)+n)-1` -/
def P12045412209613553280.Spec : Prop :=
  ∀ n, P12045412209613553280.a n = A057367 n

end A057367

/-! ## A057367.P161257684086182665

`A042968(A160542(n+1))-A160542(n+1)`
-/

namespace A057367.P161257684086182665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (A160542 (n + 1)).toNat - A160542 (n + 1)

end

end A057367.P161257684086182665

namespace A057367

/-- `A042968(A160542(n+1))-A160542(n+1)` -/
def P161257684086182665.Spec : Prop :=
  ∀ n, P161257684086182665.a n = A057367 n

end A057367

/-! ## A057367.P941372629155522964

`A002265(A004396(A110532(n))+n)`
-/

namespace A057367.P941372629155522964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A004396 (A110532 n).toNat + (n : ℤ)).toNat

end

end A057367.P941372629155522964

namespace A057367

/-- `A002265(A004396(A110532(n))+n)` -/
def P941372629155522964.Spec : Prop :=
  ∀ n, P941372629155522964.a n = A057367 n

end A057367

/-! ## A057367.P1729615048294327651

`A002266(A272915(n))`
-/

namespace A057367.P1729615048294327651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A272915 n).toNat

end

end A057367.P1729615048294327651

namespace A057367

/-- `A002266(A272915(n))` -/
def P1729615048294327651.Spec : Prop :=
  ∀ n, P1729615048294327651.a n = A057367 n

end A057367

/-! ## A057367.P10800265694235069171

`A004523(A081600(n)+n)-A081600(n)`
-/

namespace A057367.P10800265694235069171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A081600 n + (n : ℤ)).toNat - A081600 n

end

end A057367.P10800265694235069171

namespace A057367

/-- `A004523(A081600(n)+n)-A081600(n)` -/
def P10800265694235069171.Spec : Prop :=
  ∀ n, P10800265694235069171.a n = A057367 n

end A057367

/-! ## A057367.P3694839014024624227

`A152467(A002266(n)+2*n)`
-/

namespace A057367.P3694839014024624227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A002266 n + (2 * n : ℤ)).toNat

end

end A057367.P3694839014024624227

namespace A057367

/-- `A152467(A002266(n)+2*n)` -/
def P3694839014024624227.Spec : Prop :=
  ∀ n, P3694839014024624227.a n = A057367 n

end A057367

/-! ## A057367.P3538834187271982088

`A152467(A002266(n)+n+n)`
-/

namespace A057367.P3538834187271982088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A002266 n + (n : ℤ) + (n : ℤ)).toNat

end

end A057367.P3538834187271982088

namespace A057367

/-- `A152467(A002266(n)+n+n)` -/
def P3538834187271982088.Spec : Prop :=
  ∀ n, P3538834187271982088.a n = A057367 n

end A057367

/-! ## A057367.P11650020204336817009

`A002265(A004523(A057355(2*n)+n))`
-/

namespace A057367.P11650020204336817009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A004523 (A057355 (2 * n) + (n : ℤ)).toNat).toNat

end

end A057367.P11650020204336817009

namespace A057367

/-- `A002265(A004523(A057355(2*n)+n))` -/
def P11650020204336817009.Spec : Prop :=
  ∀ n, P11650020204336817009.a n = A057367 n

end A057367

/-! ## A057367.P7890909532251152379

`A059995(A343028(n))`
-/

namespace A057367.P7890909532251152379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A343028 n).toNat

end

end A057367.P7890909532251152379

namespace A057367

/-- `A059995(A343028(n))` -/
def P7890909532251152379.Spec : Prop :=
  ∀ n, P7890909532251152379.a n = A057367 n

end A057367

/-! ## A057367.P4037965910761656026

`A059995(A004773(2*n)+n)`
-/

namespace A057367.P4037965910761656026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A004773 (2 * n) + (n : ℤ)).toNat

end

end A057367.P4037965910761656026

namespace A057367

/-- `A059995(A004773(2*n)+n)` -/
def P4037965910761656026.Spec : Prop :=
  ∀ n, P4037965910761656026.a n = A057367 n

end A057367

/-! ## A057367.P14703523932031387394

`A152467(A314670(n)-2*n)`
-/

namespace A057367.P14703523932031387394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A314670 n - (2 * n : ℤ)).toNat

end

end A057367.P14703523932031387394

namespace A057367

/-- `A152467(A314670(n)-2*n)` -/
def P14703523932031387394.Spec : Prop :=
  ∀ n, P14703523932031387394.a n = A057367 n

end A057367

/-! ## A057367.P2528858845794614351

`A152467(A314670(n)-n-n)`
-/

namespace A057367.P2528858845794614351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A314670 n - (n : ℤ) - (n : ℤ)).toNat

end

end A057367.P2528858845794614351

namespace A057367

/-- `A152467(A314670(n)-n-n)` -/
def P2528858845794614351.Spec : Prop :=
  ∀ n, P2528858845794614351.a n = A057367 n

end A057367

/-! ## A057367.P2121561280261932009

`A342696(A312907(n))`
-/

namespace A057367.P2121561280261932009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (A312907 n).toNat

end

end A057367.P2121561280261932009

namespace A057367

/-- `A342696(A312907(n))` -/
def P2121561280261932009.Spec : Prop :=
  ∀ n, P2121561280261932009.a n = A057367 n

end A057367

/-! ## A057367.P1040276631502272060

`A342696(A313476(n))`
-/

namespace A057367.P1040276631502272060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (A313476 n).toNat

end

end A057367.P1040276631502272060

namespace A057367

/-- `A342696(A313476(n))` -/
def P1040276631502272060.Spec : Prop :=
  ∀ n, P1040276631502272060.a n = A057367 n

end A057367

/-! ## A057367.P5514236615501120862

`A342696(A314685(n))`
-/

namespace A057367.P5514236615501120862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (A314685 n).toNat

end

end A057367.P5514236615501120862

namespace A057367

/-- `A342696(A314685(n))` -/
def P5514236615501120862.Spec : Prop :=
  ∀ n, P5514236615501120862.a n = A057367 n

end A057367

/-! ## A057367.P4638829478951802153

`A342696(A314708(n))`
-/

namespace A057367.P4638829478951802153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (A314708 n).toNat

end

end A057367.P4638829478951802153

namespace A057367

/-- `A342696(A314708(n))` -/
def P4638829478951802153.Spec : Prop :=
  ∀ n, P4638829478951802153.a n = A057367 n

end A057367

/-! ## A057367.P14171501713570735754

`A342696(A314827(n))`
-/

namespace A057367.P14171501713570735754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (A314827 n).toNat

end

end A057367.P14171501713570735754

namespace A057367

/-- `A342696(A314827(n))` -/
def P14171501713570735754.Spec : Prop :=
  ∀ n, P14171501713570735754.a n = A057367 n

end A057367

/-! ## A057367.P17321059909640134219

`A342696(A315171(n))`
-/

namespace A057367.P17321059909640134219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (A315171 n).toNat

end

end A057367.P17321059909640134219

namespace A057367

/-- `A342696(A315171(n))` -/
def P17321059909640134219.Spec : Prop :=
  ∀ n, P17321059909640134219.a n = A057367 n

end A057367

/-!
# A057368: Number of Gaussian primes (in the first half-quadrant; i.e., 0 to 45 degrees) with real part = n.

The programs for A057368, there is no canonical definition to state claims against.
-/

/-! ## A057368.P11123282392658308076

`abs(Δ[A057352(abs(1-n)+1)])`
-/

namespace A057368.P11123282392658308076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057352 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A057368.P11123282392658308076

/-! ## A057368.P5035616333492742722

`Δ[A057352(a(A000038(n))+n)]` with `a(0)=0, a(1)=1`
-/

namespace A057368.P5035616333492742722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A057352 (f1 (A000038 n).toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057368.P5035616333492742722

/-! ## A057368.P6522648080144883408

`Δ[A057352(A028310(n))%(n+1)²]`
-/

namespace A057368.P6522648080144883408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057352 (A028310 n).toNat) ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057368.P6522648080144883408

/-! ## A057368.P850447134804657694

`A028310(Δ[A057352(A028310(n))])`
-/

namespace A057368.P850447134804657694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057352 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A057368.P850447134804657694

/-! ## A057368.P12484459175313514770

`A001221(A327759(n+2)*A327764(n))`
-/

namespace A057368.P12484459175313514770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A327759 (n + 2) * A327764 n).toNat

end

end A057368.P12484459175313514770

/-!
# A057371: Numbers k that can be expressed as k = w+x = y*z with w*x = k*(y+z) where w, x, y, and z are all positive integers.

The programs for A057371, there is no canonical definition to state claims against.
-/

/-! ## A057371.P14676530066373138272

`A001694(A085837(n+5)%A229145(n+1))`
-/

namespace A057371.P14676530066373138272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (Int.tmod (A085837 (n + 5)) (A229145 (n + 1))).toNat

end

end A057371.P14676530066373138272

/-!
# A057372: Numbers k that can be expressed as k = w + x = y*z with w*x = y^3 + z^3 where w, x, y, and z are all positive integers.

The programs for A057372, there is no canonical definition to state claims against.
-/

/-! ## A057372.P15717097926133541140

`A319388(n+5)-A332055(A104350(n+1))`
-/

namespace A057372.P15717097926133541140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319388 (n + 5) - A332055 (A104350 (n + 1)).toNat

end

end A057372.P15717097926133541140

/-!
# A057373: Numbers k that can be expressed as k = w + x = y*z with w*x = y^2 + z^2 where w, x, y, and z are all positive integers.

The programs for A057373, there is no canonical definition to state claims against.
-/

/-! ## A057373.P7200453984277817663

`A065999(A029519(n+1)+comp[or(n, n+3)])`
-/

namespace A057373.P7200453984277817663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065999 (A029519 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A057373.P7200453984277817663

/-!
# A057375: Low-temperature susceptibility expansion for square lattice (Potts model, q=3).

The programs for A057375, there is no canonical definition to state claims against.
-/

/-! ## A057375.P8396957373237778283

`A160736(A241863(n+3)+A002262(n))`
-/

namespace A057375.P8396957373237778283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160736 (A241863 (n + 3) + A002262 n).toNat

end

end A057375.P8396957373237778283

/-!
# A057379: Low-temperature susceptibility expansion for square lattice (Potts model, q=4).

The programs for A057379, there is no canonical definition to state claims against.
-/

/-! ## A057379.P17770484348454695500

`A256289(n)*A290705(A137547(n+1))`
-/

namespace A057379.P17770484348454695500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256289 n * A290705 (A137547 (n + 1)).toNat

end

end A057379.P17770484348454695500

/-! ## A057379.P15856536326799529456

`A209061(n+1)*A290705(A137547(n+1))`
-/

namespace A057379.P15856536326799529456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209061 (n + 1) * A290705 (A137547 (n + 1)).toNat

end

end A057379.P15856536326799529456

/-!
# A057384: Low-temperature specific heat expansion for hexagonal lattice (Potts model, q=3).

The programs for A057384, there is no canonical definition to state claims against.
-/

/-! ## A057384.P14048531769503186585

`A045826(A129725(n+2))`
-/

namespace A057384.P14048531769503186585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045826 (A129725 (n + 2)).toNat

end

end A057384.P14048531769503186585

/-!
# A057388: Low-temperature specific heat expansion for hexagonal lattice (Potts model, q=4).

The programs for A057388, there is no canonical definition to state claims against.
-/

/-! ## A057388.P6691555698631879905

`A007494(lcm(A057384(n), A218765(n+1)))`
-/

namespace A057388.P6691555698631879905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (Int.lcm (A057384 n) (A218765 (n + 1)))

end

end A057388.P6691555698631879905

/-!
# A057390: Low-temperature magnetization expansion for honeycomb net (Potts model, q=3).

The programs for A057390, there is no canonical definition to state claims against.
-/

/-! ## A057390.P1691007920766675282

`A003114(n)-A008651(A018920(n))`
-/

namespace A057390.P1691007920766675282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 n - A008651 (A018920 n).toNat

end

end A057390.P1691007920766675282

/-! ## A057390.P10429630542715251963

`A008719(n)-A008651(A018920(n))`
-/

namespace A057390.P10429630542715251963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008719 n - A008651 (A018920 n).toNat

end

end A057390.P10429630542715251963

/-! ## A057390.P12127419136236337780

`A005213(n)-A345167(A230556(n))`
-/

namespace A057390.P12127419136236337780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 n - A345167 (A230556 n).toNat

end

end A057390.P12127419136236337780

/-!
# A057391: Low-temperature susceptibility expansion for honeycomb net (Potts model, q=3).

The programs for A057391, there is no canonical definition to state claims against.
-/

/-! ## A057391.P10434148523134597099

`A007609(∑[∑[A105039(3*(n+1))]])`
-/

namespace A057391.P10434148523134597099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105039 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007609 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A057391.P10434148523134597099

/-!
# A057393: Low-temperature partition function expansion for honeycomb net (Potts model, q=3).

The programs for A057393, there is no canonical definition to state claims against.
-/

/-! ## A057393.P960198984610823249

`A216266(A052543(n))`
-/

namespace A057393.P960198984610823249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216266 (A052543 n).toNat

end

end A057393.P960198984610823249

/-!
# A057394: Low-temperature magnetization expansion for honeycomb net (Potts model, q=4).

The programs for A057394, there is no canonical definition to state claims against.
-/

/-! ## A057394.P3613697371385988320

`A001223(A006824(n+4))*A006836(n)`
-/

namespace A057394.P3613697371385988320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A006824 (n + 4)).toNat * A006836 n

end

end A057394.P3613697371385988320

