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
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
# A056900: Numbers n where 36n^2+36n+11 is prime.

The programs for A056900, there is no canonical definition to state claims against.
-/

/-! ## A056900.P12937781196795985039

`A091199(n+1)-1`
-/

namespace A056900.P12937781196795985039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091199 (n + 1) - 1

end

end A056900.P12937781196795985039

/-! ## A056900.P2322615324899844276

`floor(A232011(n+1)/2)`
-/

namespace A056900.P2322615324899844276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A232011 (n + 1) : ℚ) / 2⌋

end

end A056900.P2322615324899844276

/-! ## A056900.P15657725157069125338

`(A232011(2*n+1-n)-1)/2`
-/

namespace A056900.P15657725157069125338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232011 ((2 * n : ℤ) + (1 - (n : ℤ))).toNat - 1 : ℚ) / 2

end

end A056900.P15657725157069125338

/-! ## A056900.P18391177463134357257

`A232011(n+1)%A091199(n+1)`
-/

namespace A056900.P18391177463134357257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232011 (n + 1)) (A091199 (n + 1))

end

end A056900.P18391177463134357257

/-! ## A056900.P17246647459289666176

`A023443(A091199(n+1))`
-/

namespace A056900.P17246647459289666176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A091199 (n + 1)).toNat

end

end A056900.P17246647459289666176

/-! ## A056900.P4490454344044534273

`A004524(A232011(n+1))`
-/

namespace A056900.P4490454344044534273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A232011 (n + 1)).toNat

end

end A056900.P4490454344044534273

/-! ## A056900.P1057681533607633191

`A001281(A232011(n+1)-1)`
-/

namespace A056900.P1057681533607633191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A232011 (n + 1) - 1).toNat

end

end A056900.P1057681533607633191

/-! ## A056900.P17939836954531270924

`A004525(A232011(n+1)-1)`
-/

namespace A056900.P17939836954531270924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A232011 (n + 1) - 1).toNat

end

end A056900.P17939836954531270924

/-! ## A056900.P14385911309136408777

`A026741(A232011(n+1)-1)`
-/

namespace A056900.P14385911309136408777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A232011 (n + 1) - 1).toNat

end

end A056900.P14385911309136408777

/-! ## A056900.P2480074804267049120

`A060681(A232011(n+1)+1)-1`
-/

namespace A056900.P2480074804267049120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A232011 (n + 1) + 1).toNat - 1

end

end A056900.P2480074804267049120

/-! ## A056900.P5260512305538023695

`A160413(A232011(n+1)+1)-1`
-/

namespace A056900.P5260512305538023695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160413 (A232011 (n + 1) + 1).toNat - 1

end

end A056900.P5260512305538023695

/-! ## A056900.P3487956873622397283

`A242112(A232011(n+1)-1)-1`
-/

namespace A056900.P3487956873622397283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242112 (A232011 (n + 1) - 1).toNat - 1

end

end A056900.P3487956873622397283

/-! ## A056900.P4693531121272919191

`floor(A129389(n+1)/6)`
-/

namespace A056900.P4693531121272919191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A129389 (n + 1) : ℚ) / 6⌋

end

end A056900.P4693531121272919191

/-! ## A056900.P9328835454327530890

`A002265(2*A232011(n+1))`
-/

namespace A056900.P9328835454327530890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A232011 (n + 1)).toNat

end

end A056900.P9328835454327530890

/-! ## A056900.P15451084190105009388

`A002265(A232011(n+1)+A232011(n+1)+1)`
-/

namespace A056900.P15451084190105009388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A232011 (n + 1) + (A232011 (n + 1) + 1)).toNat

end

end A056900.P15451084190105009388

/-! ## A056900.P16256170792619731253

`eq[2, A053000(6*n+3)]`
-/

namespace A056900.P16256170792619731253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (6 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A056900.P16256170792619731253

/-! ## A056900.P13137081591166688606

`eq[2, A300817(6*n+3)]`
-/

namespace A056900.P13137081591166688606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 (6 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A056900.P13137081591166688606

/-! ## A056900.P1004906480825133730

`A008612(A129389(n+1))`
-/

namespace A056900.P1004906480825133730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A129389 (n + 1)).toNat

end

end A056900.P1004906480825133730

/-! ## A056900.P16641130191116147138

`A130747(A129389(n+1)+1)-1`
-/

namespace A056900.P16641130191116147138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130747 (A129389 (n + 1) + 1).toNat - 1

end

end A056900.P16641130191116147138

/-! ## A056900.P5055015620836228302

`A026806(A129389(n+1)+1)-2`
-/

namespace A056900.P5055015620836228302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (A129389 (n + 1) + 1).toNat - 2

end

end A056900.P5055015620836228302

/-!
# A056901: Least semiperimeter s of primitive Pythagorean triangle with inradius n.

The programs for A056901, there is no canonical definition to state claims against.
-/

/-! ## A056901.P10453465157979672575

`A087484(n+1)+1+n`
-/

namespace A056901.P10453465157979672575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087484 (n + 1) + 1 + (n : ℤ)

end

end A056901.P10453465157979672575

/-! ## A056901.P13017339943400872204

`A390928(3*(n+1))+1+n`
-/

namespace A056901.P13017339943400872204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390928 (3 * (n + 1)) + 1 + (n : ℤ)

end

end A056901.P13017339943400872204

/-!
# A056903: Numbers n such that the numerator of the rational number 1 + 1/2 + 1/3 + ... + 1/n is a prime number.

The programs for A056903, there is no canonical definition to state claims against.
-/

/-! ## A056903.P18304636799642159313

`eq[1, A308967(n+1)]+1`
-/

namespace A056903.P18304636799642159313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308967 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A056903.P18304636799642159313

/-! ## A056903.P8205733864076976499

`eq[1, A308967(A028310(n))]`
-/

namespace A056903.P8205733864076976499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308967 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A056903.P8205733864076976499

/-! ## A056903.P3714179800552681016

`eq[1, A308967(A000007(n)+n)]`
-/

namespace A056903.P3714179800552681016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308967 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A056903.P3714179800552681016

/-! ## A056903.P11301034707987082431

`eq[1, A308967(A008486(n)-2*n)]`
-/

namespace A056903.P11301034707987082431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308967 (A008486 n - (2 * n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A056903.P11301034707987082431

/-! ## A056903.P9761201784303716681

`eq[1, A308967(A008486(n)-n-n)]`
-/

namespace A056903.P9761201784303716681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308967 (A008486 n - (n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A056903.P9761201784303716681

/-!
# A056904: Floor[p/24] where p is a prime which is 4 more than a square.

The programs for A056904, there is no canonical definition to state claims against.
-/

/-! ## A056904.P16345555836652846198

`floor(A005473(n+1)/24)`
-/

namespace A056904.P16345555836652846198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005473 (n + 1) : ℚ) / 24⌋

end

end A056904.P16345555836652846198

/-! ## A056904.P9545600792377637663

`A114209(A007591(n+1))`
-/

namespace A056904.P9545600792377637663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114209 (A007591 (n + 1)).toNat

end

end A056904.P9545600792377637663

/-! ## A056904.P5090945316538234032

`A026923(A089747(n+2))`
-/

namespace A056904.P5090945316538234032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026923 (A089747 (n + 2)).toNat

end

end A056904.P5090945316538234032

/-! ## A056904.P7338454555126362663

`A026923(A007591(n+1)+1)`
-/

namespace A056904.P7338454555126362663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026923 (A007591 (n + 1) + 1).toNat

end

end A056904.P7338454555126362663

/-! ## A056904.P9971262072772770087

`A309685(A007591(n+1)+1)`
-/

namespace A056904.P9971262072772770087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309685 (A007591 (n + 1) + 1).toNat

end

end A056904.P9971262072772770087

/-! ## A056904.P14448947145496789059

`A309689(floor(sqrt(A005473(n+1))))`
-/

namespace A056904.P14448947145496789059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309689 (Int.sqrt (A005473 (n + 1))).toNat

end

end A056904.P14448947145496789059

/-! ## A056904.P1452334644333322260

`floor(p?[n²+4]/24)`
-/

namespace A056904.P1452334644333322260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 24⌋

end

end A056904.P1452334644333322260

/-! ## A056904.P10599589790228602892

`ceil(p?[n²+4]/24)-1`
-/

namespace A056904.P10599589790228602892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 24⌉ - 1

end

end A056904.P10599589790228602892

/-!
# A056905: Primes of the form k^2 + 5.

The programs for A056905, there is no canonical definition to state claims against.
-/

/-! ## A056905.P8576589181067794475

`5+A078402(n+1)²`
-/

namespace A056905.P8576589181067794475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 + A078402 (n + 1) ^ 2

end

end A056905.P8576589181067794475

/-! ## A056905.P6559808283332782410

`(6*A056906(n+1))²+5`
-/

namespace A056905.P6559808283332782410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * A056906 (n + 1)) ^ 2 + 5

end

end A056905.P6559808283332782410

/-! ## A056905.P3970150968882808578

`A016910(A056906(n+1))+5`
-/

namespace A056905.P3970150968882808578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016910 (A056906 (n + 1)).toNat + 5

end

end A056905.P3970150968882808578

/-! ## A056905.P16264944294959367442

`A117951(A078402(n+1))`
-/

namespace A056905.P16264944294959367442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117951 (A078402 (n + 1)).toNat

end

end A056905.P16264944294959367442

/-! ## A056905.P2118566820552161967

`A125256(5*n+2)+A000290(A078402(n+1))`
-/

namespace A056905.P2118566820552161967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125256 (5 * n + 2) + A000290 (A078402 (n + 1)).toNat

end

end A056905.P2118566820552161967

/-! ## A056905.P5571064185640808289

`A087475(A078402(n+1))+A053000(A005574(n+1))`
-/

namespace A056905.P5571064185640808289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 (A078402 (n + 1)).toNat + A053000 (A005574 (n + 1)).toNat

end

end A056905.P5571064185640808289

/-! ## A056905.P6489857066597660912

`∩[A142101(n+1), A117951(n)]`
-/

namespace A056905.P6489857066597660912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117951 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056905.P6489857066597660912

/-! ## A056905.P3465097603244558011

`∩[A106963(n+1), A117951(n)]`
-/

namespace A056905.P3465097603244558011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117951 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056905.P3465097603244558011

/-! ## A056905.P7413655743714425376

`∩[A107151(n+1), A117951(n)]`
-/

namespace A056905.P7413655743714425376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117951 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056905.P7413655743714425376

/-!
# A056906: Numbers k such that 36*k^2 + 5 is prime.

The programs for A056906, there is no canonical definition to state claims against.
-/

/-! ## A056906.P18125599838078326070

`sqrt(A056905(n+1)-5)/6`
-/

namespace A056906.P18125599838078326070
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056905 (n + 1) - 5 : ℝ) / 6

end

end A056906.P18125599838078326070

/-! ## A056906.P8669533566704005552

`A078402(n+1)/6`
-/

namespace A056906.P8669533566704005552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078402 (n + 1) : ℚ) / 6

end

end A056906.P8669533566704005552

/-! ## A056906.P7029834216207290830

`A008615(A078402(n+1))`
-/

namespace A056906.P7029834216207290830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A078402 (n + 1)).toNat

end

end A056906.P7029834216207290830

/-! ## A056906.P16494507331800645591

`A103221(A078402(n+1)+1)`
-/

namespace A056906.P16494507331800645591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A078402 (n + 1) + 1).toNat

end

end A056906.P16494507331800645591

/-! ## A056906.P15397777762303132551

`A008615(ceil(sqrt(A056905(n+1))))`
-/

namespace A056906.P15397777762303132551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 ⌈Real.sqrt (A056905 (n + 1) : ℝ)⌉.toNat

end

end A056906.P15397777762303132551

/-! ## A056906.P5535252201601722073

`A117910(A078402(n+1)+2)-1`
-/

namespace A056906.P5535252201601722073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (A078402 (n + 1) + 2).toNat - 1

end

end A056906.P5535252201601722073

/-! ## A056906.P11751874051374280677

`A051724(2*A078402(n+1))`
-/

namespace A056906.P11751874051374280677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (2 * A078402 (n + 1)).toNat

end

end A056906.P11751874051374280677

/-!
# A056908: Numbers k such that 36*k^2 + 36*k + 13 is prime.

The programs for A056908, there is no canonical definition to state claims against.
-/

/-! ## A056908.P11367345983092253247

`floor(sqrt(A201706(n+1))/6)`
-/

namespace A056908.P11367345983092253247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A201706 (n + 1) : ℝ) / 6⌋

end

end A056908.P11367345983092253247

/-! ## A056908.P15172071298501822286

`record[A260739(A007591(n+1))-1]`
-/

namespace A056908.P15172071298501822286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A007591 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056908.P15172071298501822286

/-! ## A056908.P15800133602645445964

`A033999(2*n+1)+record[A260739(A007591(n+2))]`
-/

namespace A056908.P15800133602645445964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A007591 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056908.P15800133602645445964

/-! ## A056908.P11680828979649435265

`eq[2, A069003(3*(2*n+1))]`
-/

namespace A056908.P11680828979649435265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069003 (3 * (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A056908.P11680828979649435265

/-! ## A056908.P17464324023425718057

`A008615(floor(sqrt(A201706(n+1))))`
-/

namespace A056908.P17464324023425718057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (Int.sqrt (A201706 (n + 1))).toNat

end

end A056908.P17464324023425718057

/-! ## A056908.P13161532540707650043

`A008615(sqrt(A201706(n+1)-4))`
-/

namespace A056908.P13161532540707650043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (SequenceMachineLib.roundAway (Real.sqrt (A201706 (n + 1) - 4 : ℝ))).toNat

end

end A056908.P13161532540707650043

/-! ## A056908.P2886806030098767700

`A008615(sqrt(xor(4, A201706(n+1))))`
-/

namespace A056908.P2886806030098767700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (SequenceMachineLib.roundAway (Real.sqrt (Int.xor 4 (A201706 (n + 1)) : ℝ))).toNat

end

end A056908.P2886806030098767700

/-! ## A056908.P9157515212167048060

`A004524(record[A032742(A007591(n+1))])`
-/

namespace A056908.P9157515212167048060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A007591 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A056908.P9157515212167048060

/-! ## A056908.P5393590760134410947

`A004526(record[A032742(A007591(n+1))])`
-/

namespace A056908.P5393590760134410947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A007591 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A056908.P5393590760134410947

/-! ## A056908.P6631221838726951754

`A028242(record[A032742(A007591(n+1))])`
-/

namespace A056908.P6631221838726951754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A007591 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A056908.P6631221838726951754

/-! ## A056908.P7080293531293892926

`A057979(record[A032742(A007591(n+1))])`
-/

namespace A056908.P7080293531293892926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A007591 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A056908.P7080293531293892926

/-! ## A056908.P16379726158288224046

`A123108(record[A032742(A007591(n+1))])`
-/

namespace A056908.P16379726158288224046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A007591 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A056908.P16379726158288224046

/-!
# A056909: Primes of the form k^2+6.

The programs for A056909, there is no canonical definition to state claims against.
-/

/-! ## A056909.P1693534868195215279

`36*A056910(n)²+12*A056910(n)+7`
-/

namespace A056909.P1693534868195215279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  36 * A056910 n ^ 2 + 12 * A056910 n + 7

end

end A056909.P1693534868195215279

/-! ## A056909.P8033579177616846359

`A114269(n+1)²+6`
-/

namespace A056909.P8033579177616846359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114269 (n + 1) ^ 2 + 6

end

end A056909.P8033579177616846359

/-! ## A056909.P17034492210812562787

`A114949(A114269(n+1))`
-/

namespace A056909.P17034492210812562787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114949 (A114269 (n + 1)).toNat

end

end A056909.P17034492210812562787

/-! ## A056909.P4732935262687135688

`or(A000290(A114269(n+1)), A010723(n))`
-/

namespace A056909.P4732935262687135688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000290 (A114269 (n + 1)).toNat) (A010723 n)

end

end A056909.P4732935262687135688

/-! ## A056909.P231913435220210631

`A087475(A114269(n+1))+A000005(A151800(n))`
-/

namespace A056909.P231913435220210631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 (A114269 (n + 1)).toNat + A000005 (A151800 n).toNat

end

end A056909.P231913435220210631

/-! ## A056909.P11694335727536218399

`A141310(A093178(n))+A087475(A114269(n+1))`
-/

namespace A056909.P11694335727536218399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A093178 n).toNat + A087475 (A114269 (n + 1)).toNat

end

end A056909.P11694335727536218399

/-! ## A056909.P5111261291094179404

`A087475(A114269(n+1))+A000005(A006512(n+1))`
-/

namespace A056909.P5111261291094179404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 (A114269 (n + 1)).toNat + A000005 (A006512 (n + 1)).toNat

end

end A056909.P5111261291094179404

/-! ## A056909.P17577133318599686986

`A087475(A114269(n+1))+A020639(A114272(n+1))`
-/

namespace A056909.P17577133318599686986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 (A114269 (n + 1)).toNat + A020639 (A114272 (n + 1)).toNat

end

end A056909.P17577133318599686986

/-! ## A056909.P11392071683450461659

`A141310(A016754(n))+A087475(A114269(n+1))`
-/

namespace A056909.P11392071683450461659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A016754 n).toNat + A087475 (A114269 (n + 1)).toNat

end

end A056909.P11392071683450461659

/-! ## A056909.P1658366230604219692

`∩[A107005(n+1), A114949(n)]`
-/

namespace A056909.P1658366230604219692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114949 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056909.P1658366230604219692

/-!
# A056911: Odd squarefree numbers.

The programs for A056911, the canonical program `A056911.P3674524494642334646` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056911 has offset 1).

The definition of A056911 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056911.P3674524494642334646

`lt[0, A323239(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A056911

/-- `lt[0, A323239(n)]` -/
def P3674524494642334646.Spec : Prop :=
  ∀ n, (P3674524494642334646.a n : ℤ) = A056911 (n + 1)

theorem P3674524494642334646.correct : P3674524494642334646.Spec := by
  intro n
  simp only [A056911, Nat.add_sub_cancel]

end A056911

/-! ## A056911.P15625247204647218805

`sqrt(A392366(n+1))`
-/

namespace A056911.P15625247204647218805
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A392366 (n + 1) : ℝ)

end

end A056911.P15625247204647218805

namespace A056911

/-- `sqrt(A392366(n+1))` -/
def P15625247204647218805.Spec : Prop :=
  ∀ n, P15625247204647218805.a n = (A056911 (n + 1) : ℝ)

end A056911

/-! ## A056911.P6044936002967906378

`record[A007913(or(1, n))]`
-/

namespace A056911.P6044936002967906378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056911.P6044936002967906378

namespace A056911

/-- `record[A007913(or(1, n))]` -/
def P6044936002967906378.Spec : Prop :=
  ∀ n, P6044936002967906378.a n = A056911 (n + 1)

end A056911

/-! ## A056911.P7364741622367695078

`record[A007947(or(1, n))]`
-/

namespace A056911.P7364741622367695078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056911.P7364741622367695078

namespace A056911

/-- `record[A007947(or(1, n))]` -/
def P7364741622367695078.Spec : Prop :=
  ∀ n, P7364741622367695078.a n = A056911 (n + 1)

end A056911

/-! ## A056911.P1601805021251734375

`A039956(n+1)/2`
-/

namespace A056911.P1601805021251734375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039956 (n + 1) : ℚ) / 2

end

end A056911.P1601805021251734375

namespace A056911

/-- `A039956(n+1)/2` -/
def P1601805021251734375.Spec : Prop :=
  ∀ n, P1601805021251734375.a n = (A056911 (n + 1) : ℚ)

end A056911

/-! ## A056911.P2237312269920940978

`A081770(n+1)/4`
-/

namespace A056911.P2237312269920940978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081770 (n + 1) : ℚ) / 4

end

end A056911.P2237312269920940978

namespace A056911

/-- `A081770(n+1)/4` -/
def P2237312269920940978.Spec : Prop :=
  ∀ n, P2237312269920940978.a n = (A056911 (n + 1) : ℚ)

end A056911

/-! ## A056911.P1820868648973472161

`eq[0, A087049(2*n)]`
-/

namespace A056911.P1820868648973472161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A056911.P1820868648973472161

namespace A056911

/-- `eq[0, A087049(2*n)]` -/
def P1820868648973472161.Spec : Prop :=
  ∀ n, (P1820868648973472161.a n : ℤ) = A056911 (n + 1)

end A056911

/-! ## A056911.P16138949153814762054

`eq[0, A105234(2*n)]`
-/

namespace A056911.P16138949153814762054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105234 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A056911.P16138949153814762054

namespace A056911

/-- `eq[0, A105234(2*n)]` -/
def P16138949153814762054.Spec : Prop :=
  ∀ n, (P16138949153814762054.a n : ℤ) = A056911 (n + 1)

end A056911

/-! ## A056911.P8076233043953824346

`lt[A105570(2*n), n]`
-/

namespace A056911.P8076233043953824346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A056911.P8076233043953824346

namespace A056911

/-- `lt[A105570(2*n), n]` -/
def P8076233043953824346.Spec : Prop :=
  ∀ n, (P8076233043953824346.a n : ℤ) = A056911 (n + 1)

end A056911

/-! ## A056911.P16530032328664378949

`record[A007913(2*n+1)]`
-/

namespace A056911.P16530032328664378949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056911.P16530032328664378949

namespace A056911

/-- `record[A007913(2*n+1)]` -/
def P16530032328664378949.Spec : Prop :=
  ∀ n, P16530032328664378949.a n = A056911 (n + 1)

end A056911

/-! ## A056911.P2451440299049993243

`record[A007947(2*n+1)]`
-/

namespace A056911.P2451440299049993243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056911.P2451440299049993243

namespace A056911

/-- `record[A007947(2*n+1)]` -/
def P2451440299049993243.Spec : Prop :=
  ∀ n, P2451440299049993243.a n = A056911 (n + 1)

end A056911

/-! ## A056911.P849933483850382236

`1+2*A264387(n+1)`
-/

namespace A056911.P849933483850382236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A264387 (n + 1)

end

end A056911.P849933483850382236

namespace A056911

/-- `1+2*A264387(n+1)` -/
def P849933483850382236.Spec : Prop :=
  ∀ n, P849933483850382236.a n = A056911 (n + 1)

end A056911

/-! ## A056911.P18147199430726189846

`eq[1, A008683(2*(n+1))²]+1`
-/

namespace A056911.P18147199430726189846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A056911.P18147199430726189846

namespace A056911

/-- `eq[1, A008683(2*(n+1))²]+1` -/
def P18147199430726189846.Spec : Prop :=
  ∀ n, (P18147199430726189846.a n : ℤ) = A056911 (n + 1)

end A056911

/-! ## A056911.P6850290977116574365

`eq[0, a(A008683(2*n)²)²]` with `a(0)=1, a(1)=0`
-/

namespace A056911.P6850290977116574365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (A008683 (2 * n) ^ 2).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056911.P6850290977116574365

namespace A056911

/-- `eq[0, a(A008683(2*n)²)²]` -/
def P6850290977116574365.Spec : Prop :=
  ∀ n, (P6850290977116574365.a n : ℤ) = A056911 (n + 1)

end A056911

/-! ## A056911.P4641992993815074809

`record[(n+1)^A008683(n+2+n)²]`
-/

namespace A056911.P4641992993815074809
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (n + 2 + n) ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056911.P4641992993815074809

namespace A056911

/-- `record[(n+1)^A008683(n+2+n)²]` -/
def P4641992993815074809.Spec : Prop :=
  ∀ n, P4641992993815074809.a n = (A056911 (n + 1) : ℚ)

end A056911

/-! ## A056911.P6429398724859764380

`record[lcm(2*n+1, A008683(2*n+1))]`
-/

namespace A056911.P6429398724859764380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A008683 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056911.P6429398724859764380

namespace A056911

/-- `record[lcm(2*n+1, A008683(2*n+1))]` -/
def P6429398724859764380.Spec : Prop :=
  ∀ n, (P6429398724859764380.a n : ℤ) = A056911 (n + 1)

end A056911

/-! ## A056911.P10741961761026747295

`eq[1, and(n+1, A008683(n+1)²)]+1`
-/

namespace A056911.P10741961761026747295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A008683 (n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A056911.P10741961761026747295

namespace A056911

/-- `eq[1, and(n+1, A008683(n+1)²)]+1` -/
def P10741961761026747295.Spec : Prop :=
  ∀ n, (P10741961761026747295.a n : ℤ) = A056911 (n + 1)

end A056911

/-! ## A056911.P13179451058890330518

`A000265(A039956(n+1))`
-/

namespace A056911.P13179451058890330518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A039956 (n + 1)).toNat

end

end A056911.P13179451058890330518

namespace A056911

/-- `A000265(A039956(n+1))` -/
def P13179451058890330518.Spec : Prop :=
  ∀ n, P13179451058890330518.a n = A056911 (n + 1)

end A056911

/-! ## A056911.P4191663074076043635

`A000265(A081770(n+1))`
-/

namespace A056911.P4191663074076043635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A081770 (n + 1)).toNat

end

end A056911.P4191663074076043635

namespace A056911

/-- `A000265(A081770(n+1))` -/
def P4191663074076043635.Spec : Prop :=
  ∀ n, P4191663074076043635.a n = A056911 (n + 1)

end A056911

/-! ## A056911.P3815565881079570998

`A005117(A383008(n+1))/2`
-/

namespace A056911.P3815565881079570998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005117 (A383008 (n + 1)).toNat : ℚ) / 2

end

end A056911.P3815565881079570998

namespace A056911

/-- `A005117(A383008(n+1))/2` -/
def P3815565881079570998.Spec : Prop :=
  ∀ n, P3815565881079570998.a n = (A056911 (n + 1) : ℚ)

end A056911

/-!
# A056912: Odd squarefree numbers for which the number of prime divisors is odd.

The programs for A056912, the canonical program `A056912.P6542715010206082314` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056912 has offset 1).

The definition of A056912 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056912.P9858254576297852511

`lt[A008683(n^(n%2)), 0]`
-/

namespace A056912.P9858254576297852511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n ^ (n % 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A056912.P9858254576297852511

namespace A056912

/-- `lt[A008683(n^(n%2)), 0]` -/
def P9858254576297852511.Spec : Prop :=
  ∀ n, (P9858254576297852511.a n : ℤ) = A056912 (n + 1)

end A056912

/-! ## A056912.P1508896362694945499

`lt[0, A008683(2*(n+1))]+1`
-/

namespace A056912.P1508896362694945499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A056912.P1508896362694945499

namespace A056912

/-- `lt[0, A008683(2*(n+1))]+1` -/
def P1508896362694945499.Spec : Prop :=
  ∀ n, (P1508896362694945499.a n : ℤ) = A056912 (n + 1)

end A056912

/-! ## A056912.P6915221488384022482

`eq[1, A008683(2*n+2)]+1`
-/

namespace A056912.P6915221488384022482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A056912.P6915221488384022482

namespace A056912

/-- `eq[1, A008683(2*n+2)]+1` -/
def P6915221488384022482.Spec : Prop :=
  ∀ n, (P6915221488384022482.a n : ℤ) = A056912 (n + 1)

end A056912

/-! ## A056912.P12507522684107953058

`lt[A008683(n+2)^n, 0]+2`
-/

namespace A056912.P12507522684107953058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 2) ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A056912.P12507522684107953058

namespace A056912

/-- `lt[A008683(n+2)^n, 0]+2` -/
def P12507522684107953058.Spec : Prop :=
  ∀ n, (P12507522684107953058.a n : ℤ) = A056912 (n + 1)

end A056912

/-! ## A056912.P15976962276744073105

`eq[1, A008683(abs(1-n)+n+1)]`
-/

namespace A056912.P15976962276744073105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (|1 - (n : ℤ)| + (n : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A056912.P15976962276744073105

namespace A056912

/-- `eq[1, A008683(abs(1-n)+n+1)]` -/
def P15976962276744073105.Spec : Prop :=
  ∀ n, (P15976962276744073105.a n : ℤ) = A056912 (n + 1)

end A056912

/-! ## A056912.P12650913168353611316

`record[(n+3)*A008683(2*(n+3))]`
-/

namespace A056912.P12650913168353611316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A008683 (2 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056912.P12650913168353611316

namespace A056912

/-- `record[(n+3)*A008683(2*(n+3))]` -/
def P12650913168353611316.Spec : Prop :=
  ∀ n, P12650913168353611316.a n = A056912 (n + 1)

end A056912

/-! ## A056912.P11440573178323008316

`eq[1, (1-a(n-1))*A008683(2*n)]` with `a(0)=0`
-/

namespace A056912.P11440573178323008316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  (1 - f2 (n - 1)) * A008683 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A056912.P11440573178323008316

namespace A056912

/-- `eq[1, (1-a(n-1))*A008683(2*n)]` -/
def P11440573178323008316.Spec : Prop :=
  ∀ n, (P11440573178323008316.a n : ℤ) = A056912 (n + 1)

end A056912

/-! ## A056912.P16055962453590820532

`record[(n+3)^-A008683(n+3)^(n+1)]`
-/

namespace A056912.P16055962453590820532
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) ^ (-(A008683 (n + 3) ^ (n + 1)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056912.P16055962453590820532

namespace A056912

/-- `record[(n+3)^-A008683(n+3)^(n+1)]` -/
def P16055962453590820532.Spec : Prop :=
  ∀ n, P16055962453590820532.a n = (A056912 (n + 1) : ℚ)

end A056912

/-! ## A056912.P6542715010206082314

`lt[(n+1)/and(n+1, -(n+1)), A080305(or(1, n))]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A056912

/-- `lt[(n+1)/and(n+1, -(n+1)), A080305(or(1, n))]` -/
def P6542715010206082314.Spec : Prop :=
  ∀ n, (P6542715010206082314.a n : ℤ) = A056912 (n + 1)

theorem P6542715010206082314.correct : P6542715010206082314.Spec := by
  intro n
  simp only [A056912, Nat.add_sub_cancel]

end A056912

/-! ## A056912.P14627662184642646471

`filter[A381218(n+1), A008966(#)]`
-/

namespace A056912.P14627662184642646471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A056912.P14627662184642646471

namespace A056912

/-- `filter[A381218(n+1), A008966(#)]` -/
def P14627662184642646471.Spec : Prop :=
  ∀ n, P14627662184642646471.a n = A056912 (n + 1)

end A056912

/-! ## A056912.P1379691138563288845

`filter[A381218(n+1), A252233(#)]`
-/

namespace A056912.P1379691138563288845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A056912.P1379691138563288845

namespace A056912

/-- `filter[A381218(n+1), A252233(#)]` -/
def P1379691138563288845.Spec : Prop :=
  ∀ n, P1379691138563288845.a n = A056912 (n + 1)

end A056912

/-! ## A056912.P4219810488348987270

`filter[A381218(n+1), A323154(#)]`
-/

namespace A056912.P4219810488348987270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A056912.P4219810488348987270

namespace A056912

/-- `filter[A381218(n+1), A323154(#)]` -/
def P4219810488348987270.Spec : Prop :=
  ∀ n, P4219810488348987270.a n = A056912 (n + 1)

end A056912

/-! ## A056912.P11250046195901174178

`filter[A381218(n+1), A323239(#)]`
-/

namespace A056912.P11250046195901174178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A056912.P11250046195901174178

namespace A056912

/-- `filter[A381218(n+1), A323239(#)]` -/
def P11250046195901174178.Spec : Prop :=
  ∀ n, P11250046195901174178.a n = A056912 (n + 1)

end A056912

/-! ## A056912.P7940213252126149148

`filter[A381218(n+1), A353559(#)]`
-/

namespace A056912.P7940213252126149148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A056912.P7940213252126149148

namespace A056912

/-- `filter[A381218(n+1), A353559(#)]` -/
def P7940213252126149148.Spec : Prop :=
  ∀ n, P7940213252126149148.a n = A056912 (n + 1)

end A056912

/-! ## A056912.P8773558427073505531

`filter[A381218(n+1), A353627(#)]`
-/

namespace A056912.P8773558427073505531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A056912.P8773558427073505531

namespace A056912

/-- `filter[A381218(n+1), A353627(#)]` -/
def P8773558427073505531.Spec : Prop :=
  ∀ n, P8773558427073505531.a n = A056912 (n + 1)

end A056912

/-! ## A056912.P1987301579078161649

`filter[A381218(n+1), A359158(#)]`
-/

namespace A056912.P1987301579078161649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359158 (f1 j).toNat = 1) n)

end

end A056912.P1987301579078161649

namespace A056912

/-- `filter[A381218(n+1), A359158(#)]` -/
def P1987301579078161649.Spec : Prop :=
  ∀ n, P1987301579078161649.a n = A056912 (n + 1)

end A056912

/-! ## A056912.P13318836852288482714

`filter[A381218(n+1), A359471(#)]`
-/

namespace A056912.P13318836852288482714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A056912.P13318836852288482714

namespace A056912

/-- `filter[A381218(n+1), A359471(#)]` -/
def P13318836852288482714.Spec : Prop :=
  ∀ n, P13318836852288482714.a n = A056912 (n + 1)

end A056912

/-! ## A056912.P17294138376705959952

`filter[A381218(n+1), A359590(#)]`
-/

namespace A056912.P17294138376705959952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A056912.P17294138376705959952

namespace A056912

/-- `filter[A381218(n+1), A359590(#)]` -/
def P17294138376705959952.Spec : Prop :=
  ∀ n, P17294138376705959952.a n = A056912 (n + 1)

end A056912

/-! ## A056912.P1098421631657516563

`filter[A381218(n+1), A359592(#)]`
-/

namespace A056912.P1098421631657516563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A056912.P1098421631657516563

namespace A056912

/-- `filter[A381218(n+1), A359592(#)]` -/
def P1098421631657516563.Spec : Prop :=
  ∀ n, P1098421631657516563.a n = A056912 (n + 1)

end A056912

/-! ## A056912.P9168734914163406483

`filter[A098903(n+1), A008966(#)]`
-/

namespace A056912.P9168734914163406483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A056912.P9168734914163406483

namespace A056912

/-- `filter[A098903(n+1), A008966(#)]` -/
def P9168734914163406483.Spec : Prop :=
  ∀ n, P9168734914163406483.a n = A056912 (n + 1)

end A056912

/-!
# A056913: Odd squarefree numbers for which the number of prime divisors is even.

The programs for A056913, the canonical program `A056913.P16160792407889327597` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056913 has offset 1).

The definition of A056913 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056913.P16160792407889327597

`record[A080304(2*n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A056913

/-- `record[A080304(2*n+1)]` -/
def P16160792407889327597.Spec : Prop :=
  ∀ n, P16160792407889327597.a n = A056913 (n + 1)

theorem P16160792407889327597.correct : P16160792407889327597.Spec := by
  intro n
  simp only [A056913, Nat.add_sub_cancel]

end A056913

/-! ## A056913.P4027495701477630779

`lt[A008683(2*(n+1)), 0]+1`
-/

namespace A056913.P4027495701477630779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A056913.P4027495701477630779

namespace A056913

/-- `lt[A008683(2*(n+1)), 0]+1` -/
def P4027495701477630779.Spec : Prop :=
  ∀ n, (P4027495701477630779.a n : ℤ) = A056913 (n + 1)

end A056913

/-! ## A056913.P6789316527995452069

`lt[and(1, n), A008683(n+1)]+1`
-/

namespace A056913.P6789316527995452069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A056913.P6789316527995452069

namespace A056913

/-- `lt[and(1, n), A008683(n+1)]+1` -/
def P6789316527995452069.Spec : Prop :=
  ∀ n, (P6789316527995452069.a n : ℤ) = A056913 (n + 1)

end A056913

/-! ## A056913.P6796974018991360747

`record[and(n+1, A008683(2*n+2))]`
-/

namespace A056913.P6796974018991360747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A008683 (2 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056913.P6796974018991360747

namespace A056913

/-- `record[and(n+1, A008683(2*n+2))]` -/
def P6796974018991360747.Spec : Prop :=
  ∀ n, P6796974018991360747.a n = A056913 (n + 1)

end A056913

/-! ## A056913.P1828724958967977963

`record[(n+2)^-A008683(2*(n+2))]`
-/

namespace A056913.P1828724958967977963
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (-A008683 (2 * (n + 2)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056913.P1828724958967977963

namespace A056913

/-- `record[(n+2)^-A008683(2*(n+2))]` -/
def P1828724958967977963.Spec : Prop :=
  ∀ n, P1828724958967977963.a n = (A056913 (n + 1) : ℚ)

end A056913

/-! ## A056913.P7216461499477716827

`record[(2*n+1)*A008683(2*n+1)]`
-/

namespace A056913.P7216461499477716827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A008683 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056913.P7216461499477716827

namespace A056913

/-- `record[(2*n+1)*A008683(2*n+1)]` -/
def P7216461499477716827.Spec : Prop :=
  ∀ n, P7216461499477716827.a n = A056913 (n + 1)

end A056913

/-! ## A056913.P12696281153308567479

`eq[0, a(n-1)*A008683(2*n)+1]` with `a(0)=1`
-/

namespace A056913.P12696281153308567479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) * A008683 (2 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A056913.P12696281153308567479

namespace A056913

/-- `eq[0, a(n-1)*A008683(2*n)+1]` -/
def P12696281153308567479.Spec : Prop :=
  ∀ n, (P12696281153308567479.a n : ℤ) = A056913 (n + 1)

end A056913

/-! ## A056913.P13659082531145437728

`eq[0, A008683(2*n)+A007318(a(n-1))]` with `a(0)=1`
-/

namespace A056913.P13659082531145437728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A008683 (2 * n) + A007318 (f2 (n - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A056913.P13659082531145437728

namespace A056913

/-- `eq[0, A008683(2*n)+A007318(a(n-1))]` -/
def P13659082531145437728.Spec : Prop :=
  ∀ n, (P13659082531145437728.a n : ℤ) = A056913 (n + 1)

end A056913

/-! ## A056913.P16167991150230033830

`record[A007947(2*n+1)*A067856(2*n+1)]`
-/

namespace A056913.P16167991150230033830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (2 * n + 1) * A067856 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056913.P16167991150230033830

namespace A056913

/-- `record[A007947(2*n+1)*A067856(2*n+1)]` -/
def P16167991150230033830.Spec : Prop :=
  ∀ n, P16167991150230033830.a n = A056913 (n + 1)

end A056913

/-! ## A056913.P4055534884558493361

`filter[A359596(n+1), A008966(#)]`
-/

namespace A056913.P4055534884558493361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A056913.P4055534884558493361

namespace A056913

/-- `filter[A359596(n+1), A008966(#)]` -/
def P4055534884558493361.Spec : Prop :=
  ∀ n, P4055534884558493361.a n = A056913 (n + 1)

end A056913

/-! ## A056913.P13277067934112371000

`filter[A359596(n+1), A323154(#)]`
-/

namespace A056913.P13277067934112371000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A056913.P13277067934112371000

namespace A056913

/-- `filter[A359596(n+1), A323154(#)]` -/
def P13277067934112371000.Spec : Prop :=
  ∀ n, P13277067934112371000.a n = A056913 (n + 1)

end A056913

/-! ## A056913.P13776782734290704380

`filter[A359596(n+1), A323239(#)]`
-/

namespace A056913.P13776782734290704380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A056913.P13776782734290704380

namespace A056913

/-- `filter[A359596(n+1), A323239(#)]` -/
def P13776782734290704380.Spec : Prop :=
  ∀ n, P13776782734290704380.a n = A056913 (n + 1)

end A056913

/-! ## A056913.P10793922047812629974

`filter[A359596(n+1), A353519(#)]`
-/

namespace A056913.P10793922047812629974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A056913.P10793922047812629974

namespace A056913

/-- `filter[A359596(n+1), A353519(#)]` -/
def P10793922047812629974.Spec : Prop :=
  ∀ n, P10793922047812629974.a n = A056913 (n + 1)

end A056913

/-! ## A056913.P6079123297590431340

`filter[A359596(n+1), A353559(#)]`
-/

namespace A056913.P6079123297590431340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A056913.P6079123297590431340

namespace A056913

/-- `filter[A359596(n+1), A353559(#)]` -/
def P6079123297590431340.Spec : Prop :=
  ∀ n, P6079123297590431340.a n = A056913 (n + 1)

end A056913

/-! ## A056913.P971886610390816027

`filter[A359596(n+1), A353627(#)]`
-/

namespace A056913.P971886610390816027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A056913.P971886610390816027

namespace A056913

/-- `filter[A359596(n+1), A353627(#)]` -/
def P971886610390816027.Spec : Prop :=
  ∀ n, P971886610390816027.a n = A056913 (n + 1)

end A056913

/-! ## A056913.P9551175307978513635

`filter[A359596(n+1), A353628(#)]`
-/

namespace A056913.P9551175307978513635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353628 (f1 j).toNat = 1) n)

end

end A056913.P9551175307978513635

namespace A056913

/-- `filter[A359596(n+1), A353628(#)]` -/
def P9551175307978513635.Spec : Prop :=
  ∀ n, P9551175307978513635.a n = A056913 (n + 1)

end A056913

/-! ## A056913.P9798592559172778120

`filter[A359596(n+1), A353629(#)]`
-/

namespace A056913.P9798592559172778120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353629 (f1 j).toNat = 1) n)

end

end A056913.P9798592559172778120

namespace A056913

/-- `filter[A359596(n+1), A353629(#)]` -/
def P9798592559172778120.Spec : Prop :=
  ∀ n, P9798592559172778120.a n = A056913 (n + 1)

end A056913

/-! ## A056913.P10050206800883271484

`filter[A359596(n+1), A354819(#)]`
-/

namespace A056913.P10050206800883271484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A056913.P10050206800883271484

namespace A056913

/-- `filter[A359596(n+1), A354819(#)]` -/
def P10050206800883271484.Spec : Prop :=
  ∀ n, P10050206800883271484.a n = A056913 (n + 1)

end A056913

/-! ## A056913.P8468258856148959596

`filter[A359596(n+1), A359156(#)]`
-/

namespace A056913.P8468258856148959596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359156 (f1 j).toNat = 1) n)

end

end A056913.P8468258856148959596

namespace A056913

/-- `filter[A359596(n+1), A359156(#)]` -/
def P8468258856148959596.Spec : Prop :=
  ∀ n, P8468258856148959596.a n = A056913 (n + 1)

end A056913

/-! ## A056913.P14624489041417931247

`filter[A359596(n+1), A359465(#)]`
-/

namespace A056913.P14624489041417931247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359465 (f1 j).toNat = 1) n)

end

end A056913.P14624489041417931247

namespace A056913

/-- `filter[A359596(n+1), A359465(#)]` -/
def P14624489041417931247.Spec : Prop :=
  ∀ n, P14624489041417931247.a n = A056913 (n + 1)

end A056913

/-!
# A056914: a(n) = Lucas(4*n+1).

The programs for A056914, the canonical program `A056914.P1767268317496058971` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056914 has offset 0).

The definition of A056914 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056914.P1767268317496058971

`7*a(n-1)-a(n-2)` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056914

/-- `7*a(n-1)-a(n-2)` -/
def P1767268317496058971.Spec : Prop :=
  ∀ n, P1767268317496058971.a n = A056914 n

theorem P1767268317496058971.correct : P1767268317496058971.Spec := by
  intro n
  simp only [A056914]

end A056914

/-! ## A056914.P13312117389625205375

`sqrt(5*A033889(n)²-4)`
-/

namespace A056914.P13312117389625205375
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (5 * A033889 n ^ 2 - 4 : ℝ)

end

end A056914.P13312117389625205375

namespace A056914

/-- `sqrt(5*A033889(n)²-4)` -/
def P13312117389625205375.Spec : Prop :=
  ∀ n, P13312117389625205375.a n = (A056914 n : ℝ)

end A056914

/-! ## A056914.P5455413829271623099

`ogf((1+4x)/(1-7x+x^2))`
-/

namespace A056914.P5455413829271623099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, -7, 1] n

end

end A056914.P5455413829271623099

namespace A056914

/-- `ogf((1+4x)/(1-7x+x^2))` -/
def P5455413829271623099.Spec : Prop :=
  ∀ n, P5455413829271623099.a n = A056914 n

end A056914

/-! ## A056914.P8574997003174070872

`Δ[floor(ϕ²²*a(n-1))]` with `a(0)=1, a(1)=2`
-/

namespace A056914.P8574997003174070872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ⌊(Real.goldenRatio ^ 2) ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056914.P8574997003174070872

namespace A056914

/-- `Δ[floor(ϕ²²*a(n-1))]` -/
def P8574997003174070872.Spec : Prop :=
  ∀ n, P8574997003174070872.a n = A056914 n

end A056914

/-! ## A056914.P3581044687056223263

`Δ[A172968(n)]`
-/

namespace A056914.P3581044687056223263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056914.P3581044687056223263

namespace A056914

/-- `Δ[A172968(n)]` -/
def P3581044687056223263.Spec : Prop :=
  ∀ n, P3581044687056223263.a n = A056914 n

end A056914

/-! ## A056914.P6120071661081616571

`A081017(n)+1`
-/

namespace A056914.P6120071661081616571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081017 n + 1

end

end A056914.P6120071661081616571

namespace A056914

/-- `A081017(n)+1` -/
def P6120071661081616571.Spec : Prop :=
  ∀ n, P6120071661081616571.a n = A056914 n

end A056914

/-! ## A056914.P1518058348492620073

`A081014(n)-1`
-/

namespace A056914.P1518058348492620073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081014 n - 1

end

end A056914.P1518058348492620073

namespace A056914

/-- `A081014(n)-1` -/
def P1518058348492620073.Spec : Prop :=
  ∀ n, P1518058348492620073.a n = A056914 n

end A056914

/-! ## A056914.P11249226412707893293

`A002878(2*n)`
-/

namespace A056914.P11249226412707893293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 (2 * n)

end

end A056914.P11249226412707893293

namespace A056914

/-- `A002878(2*n)` -/
def P11249226412707893293.Spec : Prop :=
  ∀ n, P11249226412707893293.a n = A056914 n

end A056914

/-! ## A056914.P3147773038666853309

`A075193(4*n)`
-/

namespace A056914.P3147773038666853309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075193 (4 * n)

end

end A056914.P3147773038666853309

namespace A056914

/-- `A075193(4*n)` -/
def P3147773038666853309.Spec : Prop :=
  ∀ n, P3147773038666853309.a n = A056914 n

end A056914

/-! ## A056914.P10334344980820314920

`A154699(4*n)`
-/

namespace A056914.P10334344980820314920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154699 (4 * n)

end

end A056914.P10334344980820314920

namespace A056914

/-- `A154699(4*n)` -/
def P10334344980820314920.Spec : Prop :=
  ∀ n, P10334344980820314920.a n = A056914 n

end A056914

/-! ## A056914.P16303980154416464981

`A295674(4*n)`
-/

namespace A056914.P16303980154416464981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295674 (4 * n)

end

end A056914.P16303980154416464981

namespace A056914

/-- `A295674(4*n)` -/
def P16303980154416464981.Spec : Prop :=
  ∀ n, P16303980154416464981.a n = A056914 n

end A056914

/-! ## A056914.P2458689051955523811

`A090244(8*n)`
-/

namespace A056914.P2458689051955523811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 (8 * n)

end

end A056914.P2458689051955523811

namespace A056914

/-- `A090244(8*n)` -/
def P2458689051955523811.Spec : Prop :=
  ∀ n, P2458689051955523811.a n = A056914 n

end A056914

/-! ## A056914.P9853881713873318136

`record[-A098149(n)]`
-/

namespace A056914.P9853881713873318136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A098149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056914.P9853881713873318136

namespace A056914

/-- `record[-A098149(n)]` -/
def P9853881713873318136.Spec : Prop :=
  ∀ n, P9853881713873318136.a n = A056914 n

end A056914

/-! ## A056914.P7546135171484511294

`Δ[A001519(2*n)]`
-/

namespace A056914.P7546135171484511294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056914.P7546135171484511294

namespace A056914

/-- `Δ[A001519(2*n)]` -/
def P7546135171484511294.Spec : Prop :=
  ∀ n, P7546135171484511294.a n = A056914 n

end A056914

/-! ## A056914.P72584521244226637

`Δ[A032908(2*n)]`
-/

namespace A056914.P72584521244226637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032908 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056914.P72584521244226637

namespace A056914

/-- `Δ[A032908(2*n)]` -/
def P72584521244226637.Spec : Prop :=
  ∀ n, P72584521244226637.a n = A056914 n

end A056914

/-! ## A056914.P13451084102292373955

`Δ[A128534(2*n)]`
-/

namespace A056914.P13451084102292373955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128534 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056914.P13451084102292373955

namespace A056914

/-- `Δ[A128534(2*n)]` -/
def P13451084102292373955.Spec : Prop :=
  ∀ n, P13451084102292373955.a n = A056914 n

end A056914

/-! ## A056914.P9360499303326917271

`Δ[A131589(2*n)]`
-/

namespace A056914.P9360499303326917271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131589 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056914.P9360499303326917271

namespace A056914

/-- `Δ[A131589(2*n)]` -/
def P9360499303326917271.Spec : Prop :=
  ∀ n, P9360499303326917271.a n = A056914 n

end A056914

/-! ## A056914.P4949586058204312673

`Δ[A119282(4*n)]`
-/

namespace A056914.P4949586058204312673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056914.P4949586058204312673

namespace A056914

/-- `Δ[A119282(4*n)]` -/
def P4949586058204312673.Spec : Prop :=
  ∀ n, P4949586058204312673.a n = A056914 n

end A056914

/-! ## A056914.P10192801411930204940

`Δ[A212804(4*n)]`
-/

namespace A056914.P10192801411930204940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056914.P10192801411930204940

namespace A056914

/-- `Δ[A212804(4*n)]` -/
def P10192801411930204940.Spec : Prop :=
  ∀ n, P10192801411930204940.a n = A056914 n

end A056914

/-! ## A056914.P10272993457951050915

`abs(A098149(Δ[n²]))`
-/

namespace A056914.P10272993457951050915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A098149 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A056914.P10272993457951050915

namespace A056914

/-- `abs(A098149(Δ[n²]))` -/
def P10272993457951050915.Spec : Prop :=
  ∀ n, P10272993457951050915.a n = A056914 n

end A056914

/-!
# A056915: Strong pseudoprimes to bases 2, 3 and 5, i.e., intersection of A001262, A020229, and A020231.

The programs for A056915, there is no canonical definition to state claims against.
-/

/-! ## A056915.P7646497413328674879

`∩[A072276(n+1), A215566(n+1)]`
-/

namespace A056915.P7646497413328674879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215566 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056915.P7646497413328674879

/-! ## A056915.P10313558526965007338

`∩[A072276(n+1), A215568(n+1)]`
-/

namespace A056915.P10313558526965007338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056915.P10313558526965007338

/-! ## A056915.P17693385379420993806

`∩[A215566(n+1), A215568(n+1)]`
-/

namespace A056915.P17693385379420993806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215566 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056915.P17693385379420993806

/-!
# A056916: Product of the orders of the elements in a cyclic group with n elements.

The programs for A056916, there is no canonical definition to state claims against.
-/

/-! ## A056916.P14580751864855112147

`∏{d}[n+1, A062981(#)]`
-/

namespace A056916.P14580751864855112147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A062981 d

end

end A056916.P14580751864855112147

/-! ## A056916.P16841748951478349227

`∏{d}[n+1, #^A000010(#)]`
-/

namespace A056916.P16841748951478349227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (A000010 d : ℤ)

end

end A056916.P16841748951478349227

/-! ## A056916.P9277711244897666232

`A067911(n+1)*A308944(n+1)`
-/

namespace A056916.P9277711244897666232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067911 (n + 1) * A308944 (n + 1)

end

end A056916.P9277711244897666232

/-! ## A056916.P11570772545228464588

`(n+1)*A051190(n+1)*A308944(n+1)`
-/

namespace A056916.P11570772545228464588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A051190 (n + 1) * A308944 (n + 1))

end

end A056916.P11570772545228464588

/-! ## A056916.P2139638550635632780

`A051696(n+1)/A067911(n+1)*A036505(n)`
-/

namespace A056916.P2139638550635632780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051696 (n + 1) : ℚ) / (A067911 (n + 1) : ℚ) * (A036505 n : ℚ)

end

end A056916.P2139638550635632780

/-! ## A056916.P11178739656436767197

`(n+1)^n/A051190(n+1)`
-/

namespace A056916.P11178739656436767197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n : ℚ) / (A051190 (n + 1) : ℚ)

end

end A056916.P11178739656436767197

/-! ## A056916.P8275832049258432091

`A000312(n+1)/A067911(n+1)`
-/

namespace A056916.P8275832049258432091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000312 (n + 1) : ℚ) / (A067911 (n + 1) : ℚ)

end

end A056916.P8275832049258432091

/-!
# A056917: Numbers n such that sigma(n)-phi(n) is a perfect square.

The programs for A056917, the canonical program `A056917.P1491636041550893469` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056917 has offset 1).

The definition of A056917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056917.P1491636041550893469

`lt[A249307(A000203(n+1)-A000010(n+1)), 2]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A056917

/-- `lt[A249307(A000203(n+1)-A000010(n+1)), 2]+1` -/
def P1491636041550893469.Spec : Prop :=
  ∀ n, (P1491636041550893469.a n : ℤ) = A056917 (n + 1)

theorem P1491636041550893469.correct : P1491636041550893469.Spec := by
  intro n
  simp only [A056917, Nat.add_sub_cancel]

end A056917

/-! ## A056917.P926746717476334484

`eq[1, A010052(A051612(n+1))]+1`
-/

namespace A056917.P926746717476334484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A051612 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A056917.P926746717476334484

namespace A056917

/-- `eq[1, A010052(A051612(n+1))]+1` -/
def P926746717476334484.Spec : Prop :=
  ∀ n, (P926746717476334484.a n : ℤ) = A056917 (n + 1)

end A056917

/-! ## A056917.P6194539224911377792

`lt[1, A010052(A051612(n+1))/A000330(n+1)+1]+1`
-/

namespace A056917.P6194539224911377792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010052 (A051612 (n + 1)).toNat : ℚ) / (A000330 (n + 1) : ℚ) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A056917.P6194539224911377792

namespace A056917

/-- `lt[1, A010052(A051612(n+1))/A000330(n+1)+1]+1` -/
def P6194539224911377792.Spec : Prop :=
  ∀ n, (P6194539224911377792.a n : ℤ) = A056917 (n + 1)

end A056917

/-!
# A056918: a(n) = 9*a(n-1)-a(n-2); a(0)=2, a(1)=9.

The programs for A056918, the canonical program `A056918.P5865921965296774137` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056918 has offset 0).

The definition of A056918 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*a(n-1)-a(n-2)` (program `A056918.P5865921965296774137`, by `A056918.P5865921965296774137.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A056918.P5865921965296774137

`9*a(n-1)-a(n-2)` with `a(0)=2, a(1)=9`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056918

/-- `9*a(n-1)-a(n-2)` -/
def P5865921965296774137.Spec : Prop :=
  ∀ n, P5865921965296774137.a n = A056918 n

theorem P5865921965296774137.correct : P5865921965296774137.Spec := by
  intro n
  simp only [A056918]

end A056918

/-! ## A056918.P6247583172519854470

`ogf((2-9x)/(1-9x+x^2))`
-/

namespace A056918.P6247583172519854470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -9] [1, -9, 1] n

end

end A056918.P6247583172519854470

namespace A056918

/-- `ogf((2-9x)/(1-9x+x^2))` -/
def P6247583172519854470.Spec : Prop :=
  ∀ n, P6247583172519854470.a n = A056918 n

end A056918

/-! ## A056918.P11343237320682823498

`record[A221367(n)+A000034(n)]`
-/

namespace A056918.P11343237320682823498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221367 n + A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056918.P11343237320682823498

namespace A056918

/-- `record[A221367(n)+A000034(n)]` -/
def P11343237320682823498.Spec : Prop :=
  ∀ n, P11343237320682823498.a n = A056918 n

end A056918

/-! ## A056918.P11837558866218091068

`record[A221367(n)+A020639(n+1)]`
-/

namespace A056918.P11837558866218091068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221367 n + A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056918.P11837558866218091068

namespace A056918

/-- `record[A221367(n)+A020639(n+1)]` -/
def P11837558866218091068.Spec : Prop :=
  ∀ n, P11837558866218091068.a n = A056918 n

end A056918

/-! ## A056918.P13375990418264208626

`Δ[A057081(n+2)]%A057081(n+1)`
-/

namespace A056918.P13375990418264208626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057081 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A057081 (n + 1))

end

end A056918.P13375990418264208626

namespace A056918

/-- `Δ[A057081(n+2)]%A057081(n+1)` -/
def P13375990418264208626.Spec : Prop :=
  ∀ n, P13375990418264208626.a n = A056918 n

end A056918

/-! ## A056918.P9910050521058569018

`((9+sqrt(77))^n+(9-sqrt(77))^n)/2^n`
-/

namespace A056918.P9910050521058569018
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((9 + Real.sqrt (77 : ℝ)) ^ n + (9 - Real.sqrt (77 : ℝ)) ^ n) / (2 ^ n : ℝ)

end

end A056918.P9910050521058569018

namespace A056918

/-- `((9+sqrt(77))^n+(9-sqrt(77))^n)/2^n` -/
def P9910050521058569018.Spec : Prop :=
  ∀ n, P9910050521058569018.a n = (A056918 n : ℝ)

end A056918

/-!
# A056919: Numerators of continued fraction for left factorial.

The programs for A056919, the canonical program `A056919.P253667184021479637` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056919 has offset 0).

The definition of A056919 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056919.P253667184021479637

`a(n-1)-floor(n/2)*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056919

/-- `a(n-1)-floor(n/2)*a(n-2)` -/
def P253667184021479637.Spec : Prop :=
  ∀ n, P253667184021479637.a n = A056919 n

theorem P253667184021479637.correct : P253667184021479637.Spec := by
  intro n
  simp only [A056919]

end A056919

/-! ## A056919.P7425499763113912781

`a(n-1)-a(n-2)*A004526(n)` with `a(0)=0, a(1)=1`
-/

namespace A056919.P7425499763113912781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - a (n - 2) * A004526 n

end

end A056919.P7425499763113912781

namespace A056919

/-- `a(n-1)-a(n-2)*A004526(n)` -/
def P7425499763113912781.Spec : Prop :=
  ∀ n, P7425499763113912781.a n = A056919 n

end A056919

/-! ## A056919.P15960709649512098409

`a(n-1)-a(n-2)*A123108(n)` with `a(0)=0, a(1)=1`
-/

namespace A056919.P15960709649512098409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - a (n - 2) * A123108 n

end

end A056919.P15960709649512098409

namespace A056919

/-- `a(n-1)-a(n-2)*A123108(n)` -/
def P15960709649512098409.Spec : Prop :=
  ∀ n, P15960709649512098409.a n = A056919 n

end A056919

/-! ## A056919.P544444364291634499

`a(n-1)-a(n-2)*A140106(n+2)` with `a(0)=0, a(1)=1`
-/

namespace A056919.P544444364291634499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - a (n - 2) * A140106 (n + 2)

end

end A056919.P544444364291634499

namespace A056919

/-- `a(n-1)-a(n-2)*A140106(n+2)` -/
def P544444364291634499.Spec : Prop :=
  ∀ n, P544444364291634499.a n = A056919 n

end A056919

/-!
# A056920: Denominators of continued fraction for left factorial.

The programs for A056920, the canonical program `A056920.P16233397810239559455` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056920 has offset 0).

The definition of A056920 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056920.P16233397810239559455

`a(n-1)-floor(n/2)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056920

/-- `a(n-1)-floor(n/2)*a(n-2)` -/
def P16233397810239559455.Spec : Prop :=
  ∀ n, P16233397810239559455.a n = A056920 n

theorem P16233397810239559455.correct : P16233397810239559455.Spec := by
  intro n
  simp only [A056920]

end A056920

/-! ## A056920.P3019128029832360333

`a(n-1)-a(n-2)*A004526(n)` with `a(0)=1, a(1)=1`
-/

namespace A056920.P3019128029832360333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - a (n - 2) * A004526 n

end

end A056920.P3019128029832360333

namespace A056920

/-- `a(n-1)-a(n-2)*A004526(n)` -/
def P3019128029832360333.Spec : Prop :=
  ∀ n, P3019128029832360333.a n = A056920 n

end A056920

/-! ## A056920.P5259113164464910539

`a(n-1)-a(n-2)*A123108(n)` with `a(0)=1, a(1)=1`
-/

namespace A056920.P5259113164464910539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - a (n - 2) * A123108 n

end

end A056920.P5259113164464910539

namespace A056920

/-- `a(n-1)-a(n-2)*A123108(n)` -/
def P5259113164464910539.Spec : Prop :=
  ∀ n, P5259113164464910539.a n = A056920 n

end A056920

/-! ## A056920.P12579189812861480153

`a(n-1)-a(n-2)*A140106(n+2)` with `a(0)=1, a(1)=1`
-/

namespace A056920.P12579189812861480153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - a (n - 2) * A140106 (n + 2)

end

end A056920.P12579189812861480153

namespace A056920

/-- `a(n-1)-a(n-2)*A140106(n+2)` -/
def P12579189812861480153.Spec : Prop :=
  ∀ n, P12579189812861480153.a n = A056920 n

end A056920

/-!
# A056921: a(0) = 0, a(1) = 1, a(2*n) = n*a(2*n-1) + a(2*n-2), a(2*n+1) = a(2*n) + a(2*n-1).

The programs for A056921, the canonical program `A056921.P2138036464530172840` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056921 has offset 0).

The definition of A056921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056921.P2138036464530172840

`a(n-2)+gcd(n, ∑[floor(a(n-2))])*a(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056921

/-- `a(n-2)+gcd(n, ∑[floor(a(n-2))])*a(n-1)` -/
def P2138036464530172840.Spec : Prop :=
  ∀ n, (P2138036464530172840.a n : ℤ) = A056921 n

theorem P2138036464530172840.correct : P2138036464530172840.Spec := by
  intro n
  simp only [A056921]

end A056921

/-! ## A056921.P3348076823133980205

`a(n-2)+a(n-1)*A057979(n+1)` with `a(0)=0, a(1)=1`
-/

namespace A056921.P3348076823133980205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + a (n - 1) * A057979 (n + 1)

end

end A056921.P3348076823133980205

namespace A056921

/-- `a(n-2)+a(n-1)*A057979(n+1)` -/
def P3348076823133980205.Spec : Prop :=
  ∀ n, P3348076823133980205.a n = A056921 n

end A056921

/-! ## A056921.P4685369521315395534

`A273939(n)-A056922(n)`
-/

namespace A056921.P4685369521315395534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273939 n - A056922 n

end

end A056921.P4685369521315395534

namespace A056921

/-- `A273939(n)-A056922(n)` -/
def P4685369521315395534.Spec : Prop :=
  ∀ n, P4685369521315395534.a n = A056921 n

end A056921

/-! ## A056921.P2776987366517188690

`A273939(n)-A121749(n+1)/A065033(n)!`
-/

namespace A056921.P2776987366517188690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273939 n : ℚ) - (A121749 (n + 1) : ℚ) / (Nat.factorial (A065033 n).toNat : ℚ)

end

end A056921.P2776987366517188690

namespace A056921

/-- `A273939(n)-A121749(n+1)/A065033(n)!` -/
def P2776987366517188690.Spec : Prop :=
  ∀ n, P2776987366517188690.a n = (A056921 n : ℚ)

end A056921

/-! ## A056921.P10053376355792413167

`A273939(n)-A121749(n+1)/A110654(n)!`
-/

namespace A056921.P10053376355792413167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273939 n : ℚ) - (A121749 (n + 1) : ℚ) / (Nat.factorial (A110654 n).toNat : ℚ)

end

end A056921.P10053376355792413167

namespace A056921

/-- `A273939(n)-A121749(n+1)/A110654(n)!` -/
def P10053376355792413167.Spec : Prop :=
  ∀ n, P10053376355792413167.a n = (A056921 n : ℚ)

end A056921

/-! ## A056921.P18206866195688727183

`A273939(n)-A121749(n+1)/A081123(n+1)`
-/

namespace A056921.P18206866195688727183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273939 n : ℚ) - (A121749 (n + 1) : ℚ) / (A081123 (n + 1) : ℚ)

end

end A056921.P18206866195688727183

namespace A056921

/-- `A273939(n)-A121749(n+1)/A081123(n+1)` -/
def P18206866195688727183.Spec : Prop :=
  ∀ n, P18206866195688727183.a n = (A056921 n : ℚ)

end A056921

/-!
# A056922: Denominators of continued fraction for alternating factorial.

The programs for A056922, the canonical program `A056922.P3486663655119023229` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056922 has offset 0).

The definition of A056922 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056922.P3486663655119023229

`a(n-2)+a(n-1)*A057979(n+1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A056922

/-- `a(n-2)+a(n-1)*A057979(n+1)` -/
def P3486663655119023229.Spec : Prop :=
  ∀ n, P3486663655119023229.a n = A056922 n

theorem P3486663655119023229.correct : P3486663655119023229.Spec := by
  intro n
  simp only [A056922]

end A056922

/-! ## A056922.P18234272033300945116

`A273939(n)-A056921(n)`
-/

namespace A056922.P18234272033300945116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273939 n - A056921 n

end

end A056922.P18234272033300945116

namespace A056922

/-- `A273939(n)-A056921(n)` -/
def P18234272033300945116.Spec : Prop :=
  ∀ n, P18234272033300945116.a n = A056922 n

end A056922

/-! ## A056922.P16828035790084118643

`A121749(n+1)/A065033(n)!`
-/

namespace A056922.P16828035790084118643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121749 (n + 1) : ℚ) / (Nat.factorial (A065033 n).toNat : ℚ)

end

end A056922.P16828035790084118643

namespace A056922

/-- `A121749(n+1)/A065033(n)!` -/
def P16828035790084118643.Spec : Prop :=
  ∀ n, P16828035790084118643.a n = (A056922 n : ℚ)

end A056922

/-! ## A056922.P16434826193949257452

`A121749(n+1)/A110654(n)!`
-/

namespace A056922.P16434826193949257452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121749 (n + 1) : ℚ) / (Nat.factorial (A110654 n).toNat : ℚ)

end

end A056922.P16434826193949257452

namespace A056922

/-- `A121749(n+1)/A110654(n)!` -/
def P16434826193949257452.Spec : Prop :=
  ∀ n, P16434826193949257452.a n = (A056922 n : ℚ)

end A056922

/-! ## A056922.P810151824374924894

`A121749(n+1)/A081123(n+1)`
-/

namespace A056922.P810151824374924894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121749 (n + 1) : ℚ) / (A081123 (n + 1) : ℚ)

end

end A056922.P810151824374924894

namespace A056922

/-- `A121749(n+1)/A081123(n+1)` -/
def P810151824374924894.Spec : Prop :=
  ∀ n, P810151824374924894.a n = (A056922 n : ℚ)

end A056922

/-!
# A056923: Write the integers in groups: 0; 1,2; 3,4,5; 6,7,8,9; ... and form the product of the members of each group.

The programs for A056923, there is no canonical definition to state claims against.
-/

/-! ## A056923.P1145321448129329827

`n*A057003(n+1)/(n+2)`
-/

namespace A056923.P1145321448129329827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A057003 (n + 1) : ℚ) / (n + 2 : ℚ))

end

end A056923.P1145321448129329827

/-! ## A056923.P12881653582155910994

`Δ[A227365(A000217(n))-A000124(n)]`
-/

namespace A056923.P12881653582155910994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227365 (A000217 n).toNat - A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056923.P12881653582155910994

/-! ## A056923.P11541290387237205485

`A121334(∑[n])*A180119(n)`
-/

namespace A056923.P11541290387237205485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121334 (∑ j ∈ Finset.range (n + 1), f1 j) * A180119 n

end

end A056923.P11541290387237205485

/-! ## A056923.P4290659110169744215

`record[A121334(n)]*A180119(n)`
-/

namespace A056923.P4290659110169744215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A180119 n

end

end A056923.P4290659110169744215

/-! ## A056923.P10303925078914774950

`∏{digits}[A038378(n+1), A000217(n)+#]`
-/

namespace A056923.P10303925078914774950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000217 n + (x : ℤ)).prod

end

end A056923.P10303925078914774950

/-!
# A056924: Number of divisors of n that are smaller than sqrt(n).

The programs for A056924, the canonical program `A056924.P8846060015044098494` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056924 has offset 1).

The definition of A056924 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056924.P8846060015044098494

`floor(A000005(n+1)/2)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A056924

/-- `floor(A000005(n+1)/2)` -/
def P8846060015044098494.Spec : Prop :=
  ∀ n, P8846060015044098494.a n = A056924 (n + 1)

theorem P8846060015044098494.correct : P8846060015044098494.Spec := by
  intro n
  simp only [A056924, Nat.add_sub_cancel]

end A056924

/-! ## A056924.P9596327771436376617

`A000005(n+1)-A038548(n+1)`
-/

namespace A056924.P9596327771436376617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A038548 (n + 1)

end

end A056924.P9596327771436376617

namespace A056924

/-- `A000005(n+1)-A038548(n+1)` -/
def P9596327771436376617.Spec : Prop :=
  ∀ n, P9596327771436376617.a n = A056924 (n + 1)

end A056924

/-! ## A056924.P7704067919697130137

`(A000005(n+1)-A010052(n+1))/2`
-/

namespace A056924.P7704067919697130137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) - A010052 (n + 1) : ℚ) / 2

end

end A056924.P7704067919697130137

namespace A056924

/-- `(A000005(n+1)-A010052(n+1))/2` -/
def P7704067919697130137.Spec : Prop :=
  ∀ n, P7704067919697130137.a n = (A056924 (n + 1) : ℚ)

end A056924

/-! ## A056924.P11530327544218810328

`floor(∏{e}[n+1, #+1]/2)`
-/

namespace A056924.P11530327544218810328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2⌋

end

end A056924.P11530327544218810328

namespace A056924

/-- `floor(∏{e}[n+1, #+1]/2)` -/
def P11530327544218810328.Spec : Prop :=
  ∀ n, P11530327544218810328.a n = A056924 (n + 1)

end A056924

/-! ## A056924.P15527162069305351249

`round(sinh(log(∏{e}[n+1, #+1])))`
-/

namespace A056924.P15527162069305351249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.log ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℝ)))

end

end A056924.P15527162069305351249

namespace A056924

/-- `round(sinh(log(∏{e}[n+1, #+1])))` -/
def P15527162069305351249.Spec : Prop :=
  ∀ n, P15527162069305351249.a n = A056924 (n + 1)

end A056924

/-! ## A056924.P11418456919710135181

`val(A338506(n+1), 4)`
-/

namespace A056924.P11418456919710135181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A338506 (n + 1)).toNat 4

end

end A056924.P11418456919710135181

namespace A056924

/-- `val(A338506(n+1), 4)` -/
def P11418456919710135181.Spec : Prop :=
  ∀ n, (P11418456919710135181.a n : ℤ) = A056924 (n + 1)

end A056924

/-! ## A056924.P11708424813207649923

`floor(sqrt(A337175(n+1)))`
-/

namespace A056924.P11708424813207649923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A337175 (n + 1))

end

end A056924.P11708424813207649923

namespace A056924

/-- `floor(sqrt(A337175(n+1)))` -/
def P11708424813207649923.Spec : Prop :=
  ∀ n, P11708424813207649923.a n = A056924 (n + 1)

end A056924

/-! ## A056924.P6540763828836332064

`∑{d}[n+1, A066829(#)]`
-/

namespace A056924.P6540763828836332064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A066829 d

end

end A056924.P6540763828836332064

namespace A056924

/-- `∑{d}[n+1, A066829(#)]` -/
def P6540763828836332064.Spec : Prop :=
  ∀ n, P6540763828836332064.a n = A056924 (n + 1)

end A056924

/-! ## A056924.P12020717429956834596

`floor(Δ[A006218(n)/2])`
-/

namespace A056924.P12020717429956834596
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006218 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A056924.P12020717429956834596

namespace A056924

/-- `floor(Δ[A006218(n)/2])` -/
def P12020717429956834596.Spec : Prop :=
  ∀ n, P12020717429956834596.a n = A056924 (n + 1)

end A056924

/-! ## A056924.P13815414828042719752

`floor(Δ[A054519(n)/2])`
-/

namespace A056924.P13815414828042719752
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054519 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A056924.P13815414828042719752

namespace A056924

/-- `floor(Δ[A054519(n)/2])` -/
def P13815414828042719752.Spec : Prop :=
  ∀ n, P13815414828042719752.a n = A056924 (n + 1)

end A056924

/-! ## A056924.P1559564526359765952

`ceil(A032741(n+1)/2)`
-/

namespace A056924.P1559564526359765952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A032741 (n + 1) : ℚ) / 2⌉

end

end A056924.P1559564526359765952

namespace A056924

/-- `ceil(A032741(n+1)/2)` -/
def P1559564526359765952.Spec : Prop :=
  ∀ n, P1559564526359765952.a n = A056924 (n + 1)

end A056924

/-! ## A056924.P4932743158938623676

`floor(sqrt(A337174(n+1)-1))`
-/

namespace A056924.P4932743158938623676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A337174 (n + 1) - 1)

end

end A056924.P4932743158938623676

namespace A056924

/-- `floor(sqrt(A337174(n+1)-1))` -/
def P4932743158938623676.Spec : Prop :=
  ∀ n, P4932743158938623676.a n = A056924 (n + 1)

end A056924

/-! ## A056924.P1024387902222862947

`floor(sqrt(A035116(n+1))/2)`
-/

namespace A056924.P1024387902222862947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A035116 (n + 1) : ℝ) / 2⌋

end

end A056924.P1024387902222862947

namespace A056924

/-- `floor(sqrt(A035116(n+1))/2)` -/
def P1024387902222862947.Spec : Prop :=
  ∀ n, P1024387902222862947.a n = A056924 (n + 1)

end A056924

/-! ## A056924.P12630061021967396337

`∑{d}[n+1, A001222(#)%2]`
-/

namespace A056924.P12630061021967396337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A001222 d) 2

end

end A056924.P12630061021967396337

namespace A056924

/-- `∑{d}[n+1, A001222(#)%2]` -/
def P12630061021967396337.Spec : Prop :=
  ∀ n, P12630061021967396337.a n = A056924 (n + 1)

end A056924

/-! ## A056924.P9922713564944234069

`floor(A320111(2*(n+1))/2)`
-/

namespace A056924.P9922713564944234069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A320111 (2 * (n + 1)) : ℚ) / 2⌋

end

end A056924.P9922713564944234069

namespace A056924

/-- `floor(A320111(2*(n+1))/2)` -/
def P9922713564944234069.Spec : Prop :=
  ∀ n, P9922713564944234069.a n = A056924 (n + 1)

end A056924

/-! ## A056924.P13068890109252618277

`val(2^A000005(2*n+1-n), 4)`
-/

namespace A056924.P13068890109252618277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A000005 (2 * n + 1 - n) : ℤ))).toNat 4

end

end A056924.P13068890109252618277

namespace A056924

/-- `val(2^A000005(2*n+1-n), 4)` -/
def P13068890109252618277.Spec : Prop :=
  ∀ n, (P13068890109252618277.a n : ℤ) = A056924 (n + 1)

end A056924

/-! ## A056924.P16347643855444985840

`floor(1/2*A000005(2*n-(n-1)))`
-/

namespace A056924.P16347643855444985840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 : ℚ) / 2 * (A000005 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℚ)⌋

end

end A056924.P16347643855444985840

namespace A056924

/-- `floor(1/2*A000005(2*n-(n-1)))` -/
def P16347643855444985840.Spec : Prop :=
  ∀ n, P16347643855444985840.a n = A056924 (n + 1)

end A056924

/-! ## A056924.P7188567259212957858

`A004526(Δ[A006218(n)])`
-/

namespace A056924.P7188567259212957858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A056924.P7188567259212957858

namespace A056924

/-- `A004526(Δ[A006218(n)])` -/
def P7188567259212957858.Spec : Prop :=
  ∀ n, P7188567259212957858.a n = A056924 (n + 1)

end A056924

/-! ## A056924.P12314099424627645726

`A004526(Δ[A054519(n)])`
-/

namespace A056924.P12314099424627645726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A056924.P12314099424627645726

namespace A056924

/-- `A004526(Δ[A054519(n)])` -/
def P12314099424627645726.Spec : Prop :=
  ∀ n, P12314099424627645726.a n = A056924 (n + 1)

end A056924

/-! ## A056924.P5644445381375868932

`A004526(A000005(n+1))`
-/

namespace A056924.P5644445381375868932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000005 (n + 1)).toNat

end

end A056924.P5644445381375868932

namespace A056924

/-- `A004526(A000005(n+1))` -/
def P5644445381375868932.Spec : Prop :=
  ∀ n, P5644445381375868932.a n = A056924 (n + 1)

end A056924

/-!
# A056925: Largest integer power of n which divides product of divisors of n.

The programs for A056925, the canonical program `A056925.P9728593941335423866` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056925 has offset 1).

The definition of A056925 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056924, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056925.P9728593941335423866

`(n+1)^A056924(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A056925

/-- `(n+1)^A056924(n+1)` -/
def P9728593941335423866.Spec : Prop :=
  ∀ n, P9728593941335423866.a n = (A056925 (n + 1) : ℚ)

end A056925

/-! ## A056925.P14776057789710585352

`(n+1)^floor(∏{e}[n+1, #+1]/2)`
-/

namespace A056925.P14776057789710585352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (⌊((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2⌋ : ℤ)

end

end A056925.P14776057789710585352

namespace A056925

/-- `(n+1)^floor(∏{e}[n+1, #+1]/2)` -/
def P14776057789710585352.Spec : Prop :=
  ∀ n, P14776057789710585352.a n = (A056925 (n + 1) : ℚ)

end A056925

/-! ## A056925.P5224603257363564601

`(n+1)^round((∏{e}[n+1, #+1]-1)/2)`
-/

namespace A056925.P5224603257363564601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (SequenceMachineLib.roundAway ((((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - 1 : ℚ) / 2) : ℤ)

end

end A056925.P5224603257363564601

namespace A056925

/-- `(n+1)^round((∏{e}[n+1, #+1]-1)/2)` -/
def P5224603257363564601.Spec : Prop :=
  ∀ n, P5224603257363564601.a n = (A056925 (n + 1) : ℚ)

end A056925

/-! ## A056925.P17940204060800811329

`(n+1)^floor(Δ[A006218(n)/2])`
-/

namespace A056925.P17940204060800811329
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006218 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (⌊f1 (n + 1) - f1 n⌋ : ℤ)

end

end A056925.P17940204060800811329

namespace A056925

/-- `(n+1)^floor(Δ[A006218(n)/2])` -/
def P17940204060800811329.Spec : Prop :=
  ∀ n, P17940204060800811329.a n = (A056925 (n + 1) : ℚ)

end A056925

/-! ## A056925.P12741069948689521029

`(n+1)^floor(A000005(n+1)/2)`
-/

namespace A056925.P12741069948689521029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (⌊(A000005 (n + 1) : ℚ) / 2⌋ : ℤ)

end

end A056925.P12741069948689521029

namespace A056925

/-- `(n+1)^floor(A000005(n+1)/2)` -/
def P12741069948689521029.Spec : Prop :=
  ∀ n, P12741069948689521029.a n = (A056925 (n + 1) : ℚ)

end A056925

/-! ## A056925.P2789747317033330472

`(n+1)^ceil(A032741(n+1)/2)`
-/

namespace A056925.P2789747317033330472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (⌈(A032741 (n + 1) : ℚ) / 2⌉ : ℤ)

end

end A056925.P2789747317033330472

namespace A056925

/-- `(n+1)^ceil(A032741(n+1)/2)` -/
def P2789747317033330472.Spec : Prop :=
  ∀ n, P2789747317033330472.a n = (A056925 (n + 1) : ℚ)

end A056925

/-! ## A056925.P10943306001100797492

`(n+1)^A004526(∏{e}[n+1, #+1])`
-/

namespace A056925.P10943306001100797492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A004526 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℤ)

end

end A056925.P10943306001100797492

namespace A056925

/-- `(n+1)^A004526(∏{e}[n+1, #+1])` -/
def P10943306001100797492.Spec : Prop :=
  ∀ n, P10943306001100797492.a n = (A056925 (n + 1) : ℚ)

end A056925

/-! ## A056925.P5559812258662822756

`(n+1)^∑{d}[n+1, A001222(#)%2]`
-/

namespace A056925.P5559812258662822756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (∑ d ∈ Nat.divisors (f1 n), Int.tmod (A001222 d) 2 : ℤ)

end

end A056925.P5559812258662822756

namespace A056925

/-- `(n+1)^∑{d}[n+1, A001222(#)%2]` -/
def P5559812258662822756.Spec : Prop :=
  ∀ n, P5559812258662822756.a n = (A056925 (n + 1) : ℚ)

end A056925

/-! ## A056925.P9686723794331889239

`(n+1)^A004526(∑{d}[n+1, gcd(n, #)])`
-/

namespace A056925.P9686723794331889239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A004526 (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d) : ℤ)

end

end A056925.P9686723794331889239

namespace A056925

/-- `(n+1)^A004526(∑{d}[n+1, gcd(n, #)])` -/
def P9686723794331889239.Spec : Prop :=
  ∀ n, P9686723794331889239.a n = (A056925 (n + 1) : ℚ)

end A056925

/-! ## A056925.P13112030391612624536

`(n+1)^A004526(∑{d}[n+1, lcm(#, n+1)]/(n+1))`
-/

namespace A056925.P13112030391612624536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A004526 (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), Nat.lcm d (n + 1) : ℕ) : ℚ) / (n + 1 : ℚ))).toNat : ℤ)

end

end A056925.P13112030391612624536

namespace A056925

/-- `(n+1)^A004526(∑{d}[n+1, lcm(#, n+1)]/(n+1))` -/
def P13112030391612624536.Spec : Prop :=
  ∀ n, P13112030391612624536.a n = (A056925 (n + 1) : ℚ)

end A056925

/-! ## A056925.P3150993411044681941

`(n+1)^A004526(Δ[A006218(n)])`
-/

namespace A056925.P3150993411044681941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A004526 (f1 (n + 1) - f1 n).toNat : ℤ)

end

end A056925.P3150993411044681941

namespace A056925

/-- `(n+1)^A004526(Δ[A006218(n)])` -/
def P3150993411044681941.Spec : Prop :=
  ∀ n, P3150993411044681941.a n = (A056925 (n + 1) : ℚ)

end A056925

/-! ## A056925.P16252063991416887676

`A007955(n+1)/A056926(n+1)`
-/

namespace A056925.P16252063991416887676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A056926 (n + 1) : ℚ)

end

end A056925.P16252063991416887676

namespace A056925

/-- `A007955(n+1)/A056926(n+1)` -/
def P16252063991416887676.Spec : Prop :=
  ∀ n, P16252063991416887676.a n = (A056925 (n + 1) : ℚ)

end A056925

/-! ## A056925.P13391408273769425247

`(n+1)^A004526(A000005(n+1))`
-/

namespace A056925.P13391408273769425247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A004526 (A000005 (n + 1)).toNat : ℤ)

end

end A056925.P13391408273769425247

namespace A056925

/-- `(n+1)^A004526(A000005(n+1))` -/
def P13391408273769425247.Spec : Prop :=
  ∀ n, P13391408273769425247.a n = (A056925 (n + 1) : ℚ)

end A056925

/-! ## A056925.P549562700029249745

`(n+1)^A057554(A000005(n+1)²)`
-/

namespace A056925.P549562700029249745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A057554 (A000005 (n + 1) ^ 2).toNat : ℤ)

end

end A056925.P549562700029249745

namespace A056925

/-- `(n+1)^A057554(A000005(n+1)²)` -/
def P549562700029249745.Spec : Prop :=
  ∀ n, P549562700029249745.a n = (A056925 (n + 1) : ℚ)

end A056925

/-! ## A056925.P11322081852080833869

`(n+1)^A004526(A334954(n+1)-1)`
-/

namespace A056925.P11322081852080833869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A004526 (A334954 (n + 1) - 1).toNat : ℤ)

end

end A056925.P11322081852080833869

namespace A056925

/-- `(n+1)^A004526(A334954(n+1)-1)` -/
def P11322081852080833869.Spec : Prop :=
  ∀ n, P11322081852080833869.a n = (A056925 (n + 1) : ℚ)

end A056925

/-! ## A056925.P8246706170495903934

`(n+1)^A002265(2*A000005(n+1))`
-/

namespace A056925.P8246706170495903934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A002265 (2 * A000005 (n + 1)).toNat : ℤ)

end

end A056925.P8246706170495903934

namespace A056925

/-- `(n+1)^A002265(2*A000005(n+1))` -/
def P8246706170495903934.Spec : Prop :=
  ∀ n, P8246706170495903934.a n = (A056925 (n + 1) : ℚ)

end A056925

/-! ## A056925.P1040145666590068123

`A072501(n+1)*A363520(n+1)*A363520(n+1)`
-/

namespace A056925.P1040145666590068123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072501 (n + 1) * A363520 (n + 1) * A363520 (n + 1)

end

end A056925.P1040145666590068123

namespace A056925

/-- `A072501(n+1)*A363520(n+1)*A363520(n+1)` -/
def P1040145666590068123.Spec : Prop :=
  ∀ n, P1040145666590068123.a n = A056925 (n + 1)

end A056925

/-! ## A056925.P9343521303977772116

`A007955(n+1)/A072499(n+1)*A363520(n+1)`
-/

namespace A056925.P9343521303977772116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A072499 (n + 1) : ℚ) * (A363520 (n + 1) : ℚ)

end

end A056925.P9343521303977772116

namespace A056925

/-- `A007955(n+1)/A072499(n+1)*A363520(n+1)` -/
def P9343521303977772116.Spec : Prop :=
  ∀ n, P9343521303977772116.a n = (A056925 (n + 1) : ℚ)

end A056925

/-! ## A056925.P12227400121088839668

`(n+1)^A211263(2*(n+1))`
-/

namespace A056925.P12227400121088839668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A211263 (2 * (n + 1)) : ℤ)

end

end A056925.P12227400121088839668

namespace A056925

/-- `(n+1)^A211263(2*(n+1))` -/
def P12227400121088839668.Spec : Prop :=
  ∀ n, P12227400121088839668.a n = (A056925 (n + 1) : ℚ)

end A056925

/-!
# A056926: a(n) = sqrt(n) if n is a square, otherwise 1.

The programs for A056926, the canonical program `A056926.P1933392740298576818` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056926 has offset 0).

The definition of A056926 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056926.P1933392740298576818

`1+(sqrt(n)-1)*A010052(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A056926

/-- `1+(sqrt(n)-1)*A010052(n)` -/
def P1933392740298576818.Spec : Prop :=
  ∀ n, P1933392740298576818.a n = (A056926 n : ℝ)

end A056926

/-! ## A056926.P1720290781118232728

`n^(char[n²]/2)`
-/

namespace A056926.P1720290781118232728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) / 2 : ℝ)

end

end A056926.P1720290781118232728

namespace A056926

/-- `n^(char[n²]/2)` -/
def P1720290781118232728.Spec : Prop :=
  ∀ n, P1720290781118232728.a n = (A056926 n : ℝ)

end A056926

/-! ## A056926.P15412729334203796624

`sqrt(gcd(n, 1-char[n²]))`
-/

namespace A056926.P15412729334203796624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.gcd (n : ℤ) (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) : ℝ)

end

end A056926.P15412729334203796624

namespace A056926

/-- `sqrt(gcd(n, 1-char[n²]))` -/
def P15412729334203796624.Spec : Prop :=
  ∀ n, P15412729334203796624.a n = (A056926 n : ℝ)

end A056926

/-! ## A056926.P17487190199541552638

`sqrt(sqrt(n^A000122(n)))`
-/

namespace A056926.P17487190199541552638
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt ((n : ℚ) ^ (A000122 n : ℤ) : ℝ))

end

end A056926.P17487190199541552638

namespace A056926

/-- `sqrt(sqrt(n^A000122(n)))` -/
def P17487190199541552638.Spec : Prop :=
  ∀ n, P17487190199541552638.a n = (A056926 n : ℝ)

end A056926

/-! ## A056926.P16116332890815516236

`gcd(floor(sqrt(n)), A048761(n))`
-/

namespace A056926.P16116332890815516236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.sqrt n : ℤ) (A048761 n)

end

end A056926.P16116332890815516236

namespace A056926

/-- `gcd(floor(sqrt(n)), A048761(n))` -/
def P16116332890815516236.Spec : Prop :=
  ∀ n, (P16116332890815516236.a n : ℤ) = A056926 n

end A056926

/-! ## A056926.P9117188573510145142

`gcd(ceil(sqrt(n)), A000196(n))`
-/

namespace A056926.P9117188573510145142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌈Real.sqrt (n : ℝ)⌉ (A000196 n)

end

end A056926.P9117188573510145142

namespace A056926

/-- `gcd(ceil(sqrt(n)), A000196(n))` -/
def P9117188573510145142.Spec : Prop :=
  ∀ n, (P9117188573510145142.a n : ℤ) = A056926 n

end A056926

/-! ## A056926.P16183929332816155061

`A057979(Δ[ceil(sqrt(n))²])`
-/

namespace A056926.P16183929332816155061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n : ℝ)⌉ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (f1 (n + 1) - f1 n).toNat

end

end A056926.P16183929332816155061

namespace A056926

/-- `A057979(Δ[ceil(sqrt(n))²])` -/
def P16183929332816155061.Spec : Prop :=
  ∀ n, P16183929332816155061.a n = A056926 n

end A056926

/-! ## A056926.P2979057834417097793

`gcd(A048760(n), A135034(n))`
-/

namespace A056926.P2979057834417097793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048760 n) (A135034 n)

end

end A056926.P2979057834417097793

namespace A056926

/-- `gcd(A048760(n), A135034(n))` -/
def P2979057834417097793.Spec : Prop :=
  ∀ n, (P2979057834417097793.a n : ℤ) = A056926 n

end A056926

/-! ## A056926.P5561610713861068182

`gcd(A000194(n), A397085(n))`
-/

namespace A056926.P5561610713861068182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000194 n) (A397085 n)

end

end A056926.P5561610713861068182

namespace A056926

/-- `gcd(A000194(n), A397085(n))` -/
def P5561610713861068182.Spec : Prop :=
  ∀ n, (P5561610713861068182.a n : ℤ) = A056926 n

end A056926

/-! ## A056926.P1854140787975082936

`A037213(n)+1-A010052(n)`
-/

namespace A056926.P1854140787975082936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 n + (1 - A010052 n)

end

end A056926.P1854140787975082936

namespace A056926

/-- `A037213(n)+1-A010052(n)` -/
def P1854140787975082936.Spec : Prop :=
  ∀ n, P1854140787975082936.a n = A056926 n

end A056926

/-! ## A056926.P3610946802829896095

`A037213(n)+A169695(n)-1`
-/

namespace A056926.P3610946802829896095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 n + (A169695 n - 1)

end

end A056926.P3610946802829896095

namespace A056926

/-- `A037213(n)+A169695(n)-1` -/
def P3610946802829896095.Spec : Prop :=
  ∀ n, P3610946802829896095.a n = A056926 n

end A056926

/-! ## A056926.P2196089904844968190

`C(A000194(n), C(A000196(n)², n))`
-/

namespace A056926.P2196089904844968190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000194 n).toNat (Nat.choose (A000196 n ^ 2).toNat n)

end

end A056926.P2196089904844968190

namespace A056926

/-- `C(A000194(n), C(A000196(n)², n))` -/
def P2196089904844968190.Spec : Prop :=
  ∀ n, (P2196089904844968190.a n : ℤ) = A056926 n

end A056926

/-! ## A056926.P11120868362332386392

`C(A018851(n), C(n, A018851(n)²))`
-/

namespace A056926.P11120868362332386392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A018851 n).toNat (Nat.choose n (A018851 n ^ 2).toNat)

end

end A056926.P11120868362332386392

namespace A056926

/-- `C(A018851(n), C(n, A018851(n)²))` -/
def P11120868362332386392.Spec : Prop :=
  ∀ n, (P11120868362332386392.a n : ℤ) = A056926 n

end A056926

/-! ## A056926.P17335891842304796819

`C(A053615(n), C(A053615(n)², n))`
-/

namespace A056926.P17335891842304796819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053615 n).toNat (Nat.choose (A053615 n ^ 2).toNat n)

end

end A056926.P17335891842304796819

namespace A056926

/-- `C(A053615(n), C(A053615(n)², n))` -/
def P17335891842304796819.Spec : Prop :=
  ∀ n, (P17335891842304796819.a n : ℤ) = A056926 n

end A056926

/-! ## A056926.P8223509564125748154

`C(A178786(n), C(A178786(n)², n))`
-/

namespace A056926.P8223509564125748154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A178786 n).toNat (Nat.choose (A178786 n ^ 2).toNat n)

end

end A056926.P8223509564125748154

namespace A056926

/-- `C(A178786(n), C(A178786(n)², n))` -/
def P8223509564125748154.Spec : Prop :=
  ∀ n, (P8223509564125748154.a n : ℤ) = A056926 n

end A056926

/-! ## A056926.P11910533997220794847

`C(A262689(n), C(A262689(n)², n))`
-/

namespace A056926.P11910533997220794847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A262689 n).toNat (Nat.choose (A262689 n ^ 2).toNat n)

end

end A056926.P11910533997220794847

namespace A056926

/-- `C(A262689(n), C(A262689(n)², n))` -/
def P11910533997220794847.Spec : Prop :=
  ∀ n, (P11910533997220794847.a n : ℤ) = A056926 n

end A056926

/-! ## A056926.P2623967779663924574

`A053188(A038759(n)+A000196(n))`
-/

namespace A056926.P2623967779663924574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A038759 n + A000196 n).toNat

end

end A056926.P2623967779663924574

namespace A056926

/-- `A053188(A038759(n)+A000196(n))` -/
def P2623967779663924574.Spec : Prop :=
  ∀ n, P2623967779663924574.a n = A056926 n

end A056926

/-! ## A056926.P12733135265015731244

`A028242(A245552(A000194(n)+1+n))`
-/

namespace A056926.P12733135265015731244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A245552 (A000194 n + 1 + (n : ℤ)).toNat).toNat

end

end A056926.P12733135265015731244

namespace A056926

/-- `A028242(A245552(A000194(n)+1+n))` -/
def P12733135265015731244.Spec : Prop :=
  ∀ n, P12733135265015731244.a n = A056926 n

end A056926

/-! ## A056926.P1044065360876935821

`A028310(A037213(n))+n-A028310(n)`
-/

namespace A056926.P1044065360876935821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A037213 n).toNat + ((n : ℤ) - A028310 n)

end

end A056926.P1044065360876935821

namespace A056926

/-- `A028310(A037213(n))+n-A028310(n)` -/
def P1044065360876935821.Spec : Prop :=
  ∀ n, P1044065360876935821.a n = A056926 n

end A056926

/-! ## A056926.P5863885211146878432

`A037213(n)+A000007(A037213(A000007(n)+n))`
-/

namespace A056926.P5863885211146878432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 n + A000007 (A037213 (A000007 n + (n : ℤ)).toNat).toNat

end

end A056926.P5863885211146878432

namespace A056926

/-- `A037213(n)+A000007(A037213(A000007(n)+n))` -/
def P5863885211146878432.Spec : Prop :=
  ∀ n, P5863885211146878432.a n = A056926 n

end A056926

/-!
# A056927: Difference between n^2 and largest prime less than n^2.

The programs for A056927, the canonical program `A056927.P15198729554865341557` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056927 has offset 2).

The definition of A056927 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053001, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056927.P15198729554865341557

`A000290(n+2)-A053001(n+2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A056927

/-- `A000290(n+2)-A053001(n+2)` -/
def P15198729554865341557.Spec : Prop :=
  ∀ n, P15198729554865341557.a n = A056927 (n + 2)

theorem P15198729554865341557.correct : P15198729554865341557.Spec := by
  intro n
  simp only [A056927, Nat.add_sub_cancel]

end A056927

/-! ## A056927.P17710637996865667691

`A180724(n+2)%A053001(n+2)`
-/

namespace A056927.P17710637996865667691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180724 (n + 2)) (A053001 (n + 2))

end

end A056927.P17710637996865667691

namespace A056927

/-- `A180724(n+2)%A053001(n+2)` -/
def P17710637996865667691.Spec : Prop :=
  ∀ n, P17710637996865667691.a n = A056927 (n + 2)

end A056927

/-! ## A056927.P10464956634768846375

`A007491(n+1)+A144831(n+1)-A053001(n+2)`
-/

namespace A056927.P10464956634768846375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (n + 1) + (A144831 (n + 1) - A053001 (n + 2))

end

end A056927.P10464956634768846375

namespace A056927

/-- `A007491(n+1)+A144831(n+1)-A053001(n+2)` -/
def P10464956634768846375.Spec : Prop :=
  ∀ n, P10464956634768846375.a n = A056927 (n + 2)

end A056927

/-! ## A056927.P2232208375675524223

`A056928(n+2)+A056929(n+2)-A053001(n+2)`
-/

namespace A056927.P2232208375675524223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056928 (n + 2) + (A056929 (n + 2) - A053001 (n + 2))

end

end A056927.P2232208375675524223

namespace A056927

/-- `A056928(n+2)+A056929(n+2)-A053001(n+2)` -/
def P2232208375675524223.Spec : Prop :=
  ∀ n, P2232208375675524223.a n = A056927 (n + 2)

end A056927

/-! ## A056927.P5453386134363591093

`A058043(n+2)-A053000(n+2)`
-/

namespace A056927.P5453386134363591093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058043 (n + 2) - A053000 (n + 2)

end

end A056927.P5453386134363591093

namespace A056927

/-- `A058043(n+2)-A053000(n+2)` -/
def P5453386134363591093.Spec : Prop :=
  ∀ n, P5453386134363591093.a n = A056927 (n + 2)

end A056927

/-! ## A056927.P1260218513036860363

`A007491(n+2)+A056929(n+2)-A056928(n+2)`
-/

namespace A056927.P1260218513036860363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (n + 2) + (A056929 (n + 2) - A056928 (n + 2))

end

end A056927.P1260218513036860363

namespace A056927

/-- `A007491(n+2)+A056929(n+2)-A056928(n+2)` -/
def P1260218513036860363.Spec : Prop :=
  ∀ n, P1260218513036860363.a n = A056927 (n + 2)

end A056927

/-! ## A056927.P6713999805683463448

`A106587(n+2)-(A053001(n+2)+A001248(n+2))`
-/

namespace A056927.P6713999805683463448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106587 (n + 2) - (A053001 (n + 2) + A001248 (n + 2))

end

end A056927.P6713999805683463448

namespace A056927

/-- `A106587(n+2)-(A053001(n+2)+A001248(n+2))` -/
def P6713999805683463448.Spec : Prop :=
  ∀ n, P6713999805683463448.a n = A056927 (n + 2)

end A056927

/-! ## A056927.P10490153775588867039

`(n+2)²-A000040(A038107(n+2))`
-/

namespace A056927.P10490153775588867039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A000040 (A038107 (n + 2)).toNat

end

end A056927.P10490153775588867039

namespace A056927

/-- `(n+2)²-A000040(A038107(n+2))` -/
def P10490153775588867039.Spec : Prop :=
  ∀ n, P10490153775588867039.a n = A056927 (n + 2)

end A056927

/-! ## A056927.P8686224777039167801

`(n+2)²-A089237(A161187(n+2))`
-/

namespace A056927.P8686224777039167801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A089237 (A161187 (n + 2)).toNat

end

end A056927.P8686224777039167801

namespace A056927

/-- `(n+2)²-A089237(A161187(n+2))` -/
def P8686224777039167801.Spec : Prop :=
  ∀ n, P8686224777039167801.a n = A056927 (n + 2)

end A056927

/-! ## A056927.P14778259853623015322

`A175851((n+2)²-1)`
-/

namespace A056927.P14778259853623015322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 ((n + 2) ^ 2 - 1)

end

end A056927.P14778259853623015322

namespace A056927

/-- `A175851((n+2)²-1)` -/
def P14778259853623015322.Spec : Prop :=
  ∀ n, P14778259853623015322.a n = A056927 (n + 2)

end A056927

/-! ## A056927.P781391222321544826

`A130734(A175851((n+2)²))`
-/

namespace A056927.P781391222321544826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130734 (A175851 ((n + 2) ^ 2)).toNat

end

end A056927.P781391222321544826

namespace A056927

/-- `A130734(A175851((n+2)²))` -/
def P781391222321544826.Spec : Prop :=
  ∀ n, P781391222321544826.a n = A056927 (n + 2)

end A056927

/-! ## A056927.P14565113003262478065

`A065358(A064973(A175851((n+1)*(n+3))))`
-/

namespace A056927.P14565113003262478065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065358 (A064973 (A175851 ((n + 1) * (n + 3))).toNat).toNat

end

end A056927.P14565113003262478065

namespace A056927

/-- `A065358(A064973(A175851((n+1)*(n+3))))` -/
def P14565113003262478065.Spec : Prop :=
  ∀ n, P14565113003262478065.a n = A056927 (n + 2)

end A056927

/-! ## A056927.P6988949784951326247

`A276781(A276782(A175851((n+3)*(n+1))))`
-/

namespace A056927.P6988949784951326247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276781 (A276782 (A175851 ((n + 3) * (n + 1))).toNat).toNat

end

end A056927.P6988949784951326247

namespace A056927

/-- `A276781(A276782(A175851((n+3)*(n+1))))` -/
def P6988949784951326247.Spec : Prop :=
  ∀ n, P6988949784951326247.a n = A056927 (n + 2)

end A056927

/-!
# A056928: Average of the smallest prime greater than n^2 and the largest prime less than n^2.

The programs for A056928, the canonical program `A056928.P1059956196817698277` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056928 has offset 2).

The definition of A056928 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053000, A056927, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056928.P12303175917376572947

`A000290(n+2)-A056929(n+2)`
-/

namespace A056928.P12303175917376572947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 2) - A056929 (n + 2)

end

end A056928.P12303175917376572947

namespace A056928

/-- `A000290(n+2)-A056929(n+2)` -/
def P12303175917376572947.Spec : Prop :=
  ∀ n, P12303175917376572947.a n = A056928 (n + 2)

end A056928

/-! ## A056928.P1059956196817698277

`A000290(n+2)+(A053000(n+2)-A056927(n+2))/2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A056928

/-- `A000290(n+2)+(A053000(n+2)-A056927(n+2))/2` -/
def P1059956196817698277.Spec : Prop :=
  ∀ n, P1059956196817698277.a n = (A056928 (n + 2) : ℚ)

end A056928

/-! ## A056928.P3925207441761674252

`A007491(n+1)+A144831(n+1)-A056929(n+2)`
-/

namespace A056928.P3925207441761674252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (n + 1) + (A144831 (n + 1) - A056929 (n + 2))

end

end A056928.P3925207441761674252

namespace A056928

/-- `A007491(n+1)+A144831(n+1)-A056929(n+2)` -/
def P3925207441761674252.Spec : Prop :=
  ∀ n, P3925207441761674252.a n = A056928 (n + 2)

end A056928

/-! ## A056928.P10233940430410671799

`A053001(n+2)+A056927(n+2)-A056929(n+2)`
-/

namespace A056928.P10233940430410671799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053001 (n + 2) + (A056927 (n + 2) - A056929 (n + 2))

end

end A056928.P10233940430410671799

namespace A056928

/-- `A053001(n+2)+A056927(n+2)-A056929(n+2)` -/
def P10233940430410671799.Spec : Prop :=
  ∀ n, P10233940430410671799.a n = A056928 (n + 2)

end A056928

/-! ## A056928.P4037426888745893635

`(A053001(n+2)+A007491(n+2))/2`
-/

namespace A056928.P4037426888745893635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053001 (n + 2) + A007491 (n + 2) : ℚ) / 2

end

end A056928.P4037426888745893635

namespace A056928

/-- `(A053001(n+2)+A007491(n+2))/2` -/
def P4037426888745893635.Spec : Prop :=
  ∀ n, P4037426888745893635.a n = (A056928 (n + 2) : ℚ)

end A056928

/-! ## A056928.P10092310149802241037

`A007491(n+2)+A056929(n+2)-A056927(n+2)`
-/

namespace A056928.P10092310149802241037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (n + 2) + (A056929 (n + 2) - A056927 (n + 2))

end

end A056928.P10092310149802241037

namespace A056928

/-- `A007491(n+2)+A056929(n+2)-A056927(n+2)` -/
def P10092310149802241037.Spec : Prop :=
  ∀ n, P10092310149802241037.a n = A056928 (n + 2)

end A056928

/-! ## A056928.P4078569435962740432

`A033597((n+2)²)`
-/

namespace A056928.P4078569435962740432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033597 ((n + 2) ^ 2)

end

end A056928.P4078569435962740432

namespace A056928

/-- `A033597((n+2)²)` -/
def P4078569435962740432.Spec : Prop :=
  ∀ n, P4078569435962740432.a n = A056928 (n + 2)

end A056928

/-! ## A056928.P6409717560549907116

`A063932((n+2)²)`
-/

namespace A056928.P6409717560549907116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063932 ((n + 2) ^ 2)

end

end A056928.P6409717560549907116

namespace A056928

/-- `A063932((n+2)²)` -/
def P6409717560549907116.Spec : Prop :=
  ∀ n, P6409717560549907116.a n = A056928 (n + 2)

end A056928

/-!
# A056929: Difference between n^2 and average of smallest prime greater than n^2 and largest prime less than n^2.

The programs for A056929, the canonical program `A056929.P6975652131116657014` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056929 has offset 2).

The definition of A056929 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056928, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056929.P6975652131116657014

`A000290(n+2)-A056928(n+2)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A056929

/-- `A000290(n+2)-A056928(n+2)` -/
def P6975652131116657014.Spec : Prop :=
  ∀ n, P6975652131116657014.a n = A056929 (n + 2)

theorem P6975652131116657014.correct : P6975652131116657014.Spec := by
  intro n
  simp only [A056929, Nat.add_sub_cancel]

end A056929

/-! ## A056929.P15009458075643340362

`(A056927(n+2)-A053000(n+2))/2`
-/

namespace A056929.P15009458075643340362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056927 (n + 2) - A053000 (n + 2) : ℚ) / 2

end

end A056929.P15009458075643340362

namespace A056929

/-- `(A056927(n+2)-A053000(n+2))/2` -/
def P15009458075643340362.Spec : Prop :=
  ∀ n, P15009458075643340362.a n = (A056929 (n + 2) : ℚ)

end A056929

/-! ## A056929.P12728060588789511174

`A056927(n+2)-A058043(n+2)/2`
-/

namespace A056929.P12728060588789511174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056927 (n + 2) : ℚ) - (A058043 (n + 2) : ℚ) / 2

end

end A056929.P12728060588789511174

namespace A056929

/-- `A056927(n+2)-A058043(n+2)/2` -/
def P12728060588789511174.Spec : Prop :=
  ∀ n, P12728060588789511174.a n = (A056929 (n + 2) : ℚ)

end A056929

/-! ## A056929.P12871309879336318638

`A007491(n+1)+A144831(n+1)-A056928(n+2)`
-/

namespace A056929.P12871309879336318638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (n + 1) + (A144831 (n + 1) - A056928 (n + 2))

end

end A056929.P12871309879336318638

namespace A056929

/-- `A007491(n+1)+A144831(n+1)-A056928(n+2)` -/
def P12871309879336318638.Spec : Prop :=
  ∀ n, P12871309879336318638.a n = A056929 (n + 2)

end A056929

/-! ## A056929.P1067697971773018291

`A053001(n+2)+A056927(n+2)-A056928(n+2)`
-/

namespace A056929.P1067697971773018291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053001 (n + 2) + (A056927 (n + 2) - A056928 (n + 2))

end

end A056929.P1067697971773018291

namespace A056929

/-- `A053001(n+2)+A056927(n+2)-A056928(n+2)` -/
def P1067697971773018291.Spec : Prop :=
  ∀ n, P1067697971773018291.a n = A056929 (n + 2)

end A056929

/-! ## A056929.P3252349869088812680

`A056927(n+2)+A056928(n+2)-A007491(n+2)`
-/

namespace A056929.P3252349869088812680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056927 (n + 2) + (A056928 (n + 2) - A007491 (n + 2))

end

end A056929.P3252349869088812680

namespace A056929

/-- `A056927(n+2)+A056928(n+2)-A007491(n+2)` -/
def P3252349869088812680.Spec : Prop :=
  ∀ n, P3252349869088812680.a n = A056929 (n + 2)

end A056929

/-! ## A056929.P10772974562161213475

`A063933((n+2)²)`
-/

namespace A056929.P10772974562161213475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063933 ((n + 2) ^ 2)

end

end A056929.P10772974562161213475

namespace A056929

/-- `A063933((n+2)²)` -/
def P10772974562161213475.Spec : Prop :=
  ∀ n, P10772974562161213475.a n = A056929 (n + 2)

end A056929

/-! ## A056929.P14993253953257075919

`(n+2)²-A033597((n+2)²)`
-/

namespace A056929.P14993253953257075919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A033597 ((n + 2) ^ 2)

end

end A056929.P14993253953257075919

namespace A056929

/-- `(n+2)²-A033597((n+2)²)` -/
def P14993253953257075919.Spec : Prop :=
  ∀ n, P14993253953257075919.a n = A056929 (n + 2)

end A056929

/-!
# A056930: Average of smallest prime greater than n^2 and largest prime less than (n+1)^2.

The programs for A056930, the canonical program `A056930.P2112737162764340499` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056930 has offset 2).

The definition of A056930 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007491, A053001, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056930.P2112737162764340499

`(A007491(n+2)+A053001(n+3))/2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A056930

/-- `(A007491(n+2)+A053001(n+3))/2` -/
def P2112737162764340499.Spec : Prop :=
  ∀ n, P2112737162764340499.a n = (A056930 (n + 2) : ℚ)

end A056930

/-! ## A056930.P11613398824458127393

`A002378(n+2)-A056931(n+2)`
-/

namespace A056930.P11613398824458127393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 2) - A056931 (n + 2)

end

end A056930.P11613398824458127393

namespace A056930

/-- `A002378(n+2)-A056931(n+2)` -/
def P11613398824458127393.Spec : Prop :=
  ∀ n, P11613398824458127393.a n = A056930 (n + 2)

end A056930

/-! ## A056930.P13834300405861641449

`ceil(sqrt(A132657(n+2)))`
-/

namespace A056930.P13834300405861641449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A132657 (n + 2) : ℝ)⌉

end

end A056930.P13834300405861641449

namespace A056930

/-- `ceil(sqrt(A132657(n+2)))` -/
def P13834300405861641449.Spec : Prop :=
  ∀ n, P13834300405861641449.a n = A056930 (n + 2)

end A056930

/-! ## A056930.P5506915419022458403

`A331698(n+2)+A007491(n+2)`
-/

namespace A056930.P5506915419022458403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331698 (n + 2) + A007491 (n + 2)

end

end A056930.P5506915419022458403

namespace A056930

/-- `A331698(n+2)+A007491(n+2)` -/
def P5506915419022458403.Spec : Prop :=
  ∀ n, P5506915419022458403.a n = A056930 (n + 2)

end A056930

/-! ## A056930.P9924628166502851382

`A053001(n+3)-A331698(n+2)`
-/

namespace A056930.P9924628166502851382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053001 (n + 3) - A331698 (n + 2)

end

end A056930.P9924628166502851382

namespace A056930

/-- `A053001(n+3)-A331698(n+2)` -/
def P9924628166502851382.Spec : Prop :=
  ∀ n, P9924628166502851382.a n = A056930 (n + 2)

end A056930

/-! ## A056930.P8358843278632662891

`A331698(n+2)+A132657(n+2)/A053001(n+3)`
-/

namespace A056930.P8358843278632662891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331698 (n + 2) : ℚ) + (A132657 (n + 2) : ℚ) / (A053001 (n + 3) : ℚ)

end

end A056930.P8358843278632662891

namespace A056930

/-- `A331698(n+2)+A132657(n+2)/A053001(n+3)` -/
def P8358843278632662891.Spec : Prop :=
  ∀ n, P8358843278632662891.a n = (A056930 (n + 2) : ℚ)

end A056930

/-!
# A056931: Difference between n-th oblong (promic) number, n(n+1), and the average of the smallest prime greater than n^2 and the largest prime less than (n+1)^2.

The programs for A056931, the canonical program `A056931.P7289546216197052146` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056931 has offset 2).

The definition of A056931 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056930, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056931.P7289546216197052146

`A002378(n+2)-A056930(n+2)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A056931

/-- `A002378(n+2)-A056930(n+2)` -/
def P7289546216197052146.Spec : Prop :=
  ∀ n, P7289546216197052146.a n = A056931 (n + 2)

theorem P7289546216197052146.correct : P7289546216197052146.Spec := by
  intro n
  simp only [A056931, Nat.add_sub_cancel]

end A056931

/-! ## A056931.P12198768766688327984

`A002378(n+2)-(A007491(n+2)+A053001(n+3))/2`
-/

namespace A056931.P12198768766688327984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (n + 2) : ℚ) - (A007491 (n + 2) + A053001 (n + 3) : ℚ) / 2

end

end A056931.P12198768766688327984

namespace A056931

/-- `A002378(n+2)-(A007491(n+2)+A053001(n+3))/2` -/
def P12198768766688327984.Spec : Prop :=
  ∀ n, P12198768766688327984.a n = (A056931 (n + 2) : ℚ)

end A056931

/-! ## A056931.P4560818998506478400

`A000217(n+2)+A000217(n+2)-A056930(n+2)`
-/

namespace A056931.P4560818998506478400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2) + (A000217 (n + 2) - A056930 (n + 2))

end

end A056931.P4560818998506478400

namespace A056931

/-- `A000217(n+2)+A000217(n+2)-A056930(n+2)` -/
def P4560818998506478400.Spec : Prop :=
  ∀ n, P4560818998506478400.a n = A056931 (n + 2)

end A056931

/-! ## A056931.P9841445978646275524

`A000217(n+2)-(A053001(n+3)-A331698(n+2)-A000217(n+2))`
-/

namespace A056931.P9841445978646275524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2) - (A053001 (n + 3) - A331698 (n + 2) - A000217 (n + 2))

end

end A056931.P9841445978646275524

namespace A056931

/-- `A000217(n+2)-(A053001(n+3)-A331698(n+2)-A000217(n+2))` -/
def P9841445978646275524.Spec : Prop :=
  ∀ n, P9841445978646275524.a n = A056931 (n + 2)

end A056931

/-! ## A056931.P3051964992361787905

`A000217(n+2)-((A053001(n+3)+A007491(n+2))/2-A000217(n+2))`
-/

namespace A056931.P3051964992361787905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 2) : ℚ) - ((A053001 (n + 3) + A007491 (n + 2) : ℚ) / 2 - (A000217 (n + 2) : ℚ))

end

end A056931.P3051964992361787905

namespace A056931

/-- `A000217(n+2)-((A053001(n+3)+A007491(n+2))/2-A000217(n+2))` -/
def P3051964992361787905.Spec : Prop :=
  ∀ n, P3051964992361787905.a n = (A056931 (n + 2) : ℚ)

end A056931

/-! ## A056931.P3619164691382744139

`A381232(A056930(n+2))`
-/

namespace A056931.P3619164691382744139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381232 (A056930 (n + 2)).toNat

end

end A056931.P3619164691382744139

namespace A056931

/-- `A381232(A056930(n+2))` -/
def P3619164691382744139.Spec : Prop :=
  ∀ n, P3619164691382744139.a n = A056931 (n + 2)

end A056931

/-!
# A056932: Antichains (or order ideals) in the poset 2*2*2*n or size of the distributive lattice J(2*2*2*n).

The programs for A056932, the canonical program `A056932.P17540727577406905660` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056932 has offset 0).

The definition of A056932 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056932.P17540727577406905660

`∑[∑[∑[∑[(n+1)^4+n^4-∑[n]]]]]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056932

/-- `∑[∑[∑[∑[(n+1)^4+n^4-∑[n]]]]]` -/
def P17540727577406905660.Spec : Prop :=
  ∀ n, P17540727577406905660.a n = A056932 n

theorem P17540727577406905660.correct : P17540727577406905660.Spec := by
  intro n
  simp only [A056932]

end A056932

/-! ## A056932.P8849353612495623389

`∑[∑[2*A244879(n)]]/2`
-/

namespace A056932.P8849353612495623389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244879 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A056932.P8849353612495623389

namespace A056932

/-- `∑[∑[2*A244879(n)]]/2` -/
def P8849353612495623389.Spec : Prop :=
  ∀ n, P8849353612495623389.a n = (A056932 n : ℚ)

end A056932

/-! ## A056932.P342236542368312431

`A292281(n)+a(n-2)` with `a(0)=1, a(1)=20`
-/

namespace A056932.P342236542368312431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 20] fun n a =>
  A292281 n + a (n - 2)

end

end A056932.P342236542368312431

namespace A056932

/-- `A292281(n)+a(n-2)` -/
def P342236542368312431.Spec : Prop :=
  ∀ n, P342236542368312431.a n = A056932 n

end A056932

/-! ## A056932.P17698984983974561510

`∑[∑[A244879(n)]]%A002721(n+4)`
-/

namespace A056932.P17698984983974561510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244879 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A002721 (n + 4))

end

end A056932.P17698984983974561510

namespace A056932

/-- `∑[∑[A244879(n)]]%A002721(n+4)` -/
def P17698984983974561510.Spec : Prop :=
  ∀ n, P17698984983974561510.a n = A056932 n

end A056932

/-! ## A056932.P4393712331081271915

`floor(∑[∑[A125198(2*n+1)/8]])`
-/

namespace A056932.P4393712331081271915
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125198 (2 * n + 1) : ℚ) / 8

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A056932.P4393712331081271915

namespace A056932

/-- `floor(∑[∑[A125198(2*n+1)/8]])` -/
def P4393712331081271915.Spec : Prop :=
  ∀ n, P4393712331081271915.a n = A056932 n

end A056932

/-!
# A056938: Concatenate all the prime divisors in previous term (with repetition), starting at 49.

The programs for A056938, there is no canonical definition to state claims against.
-/

/-! ## A056938.P4797526783496311228

`A037276(a(n-1))` with `a(0)=49`
-/

namespace A056938.P4797526783496311228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [49] fun n a =>
  A037276 (a (n - 1)).toNat

end

end A056938.P4797526783496311228

/-!
# A056939: Array read by antidiagonals: number of antichains (or order ideals) in the poset 3*m*n or plane partitions with rows <= m, columns <= n and entries <= 3.

The programs for A056939, there is no canonical definition to state claims against.
-/

/-! ## A056939.P16416007236568816930

`A359363(A014132(n+1))`
-/

namespace A056939.P16416007236568816930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359363 (A014132 (n + 1)).toNat

end

end A056939.P16416007236568816930

/-! ## A056939.P16094538197075035336

`A142470(n)/A007318(n)`
-/

namespace A056939.P16094538197075035336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142470 n : ℚ) / (A007318 n : ℚ)

end

end A056939.P16094538197075035336

/-! ## A056939.P12071291203013465332

`abs(A142470(n)/A117440(n))`
-/

namespace A056939.P12071291203013465332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A142470 n : ℚ) / (A117440 n : ℚ)|

end

end A056939.P12071291203013465332

/-! ## A056939.P13439465570816503187

`abs(A142470(n)/A130595(n))`
-/

namespace A056939.P13439465570816503187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A142470 n : ℚ) / (A130595 n : ℚ)|

end

end A056939.P13439465570816503187

/-! ## A056939.P3368473257644008072

`A142470(n)/sqrt(A008459(n))`
-/

namespace A056939.P3368473257644008072
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A142470 n : ℝ) / Real.sqrt (A008459 n : ℝ)

end

end A056939.P3368473257644008072

/-! ## A056939.P7478106408457391008

`A142470(n)/Δ[A102363(n)]`
-/

namespace A056939.P7478106408457391008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142470 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A056939.P7478106408457391008

/-! ## A056939.P9859826306706747400

`A142470(n)/(A014473(n)+1)`
-/

namespace A056939.P9859826306706747400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142470 n : ℚ) / (A014473 n + 1 : ℚ)

end

end A056939.P9859826306706747400

/-! ## A056939.P12133524634129947575

`2/A028326(n)*A142470(n)`
-/

namespace A056939.P12133524634129947575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A028326 n : ℚ) * (A142470 n : ℚ)

end

end A056939.P12133524634129947575

/-! ## A056939.P14206699720393675319

`A142470(n)/A152905(2*n)`
-/

namespace A056939.P14206699720393675319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142470 n : ℚ) / (A152905 (2 * n) : ℚ)

end

end A056939.P14206699720393675319

/-! ## A056939.P12998709986940750498

`A007318(n)/A156584(n)*A156764(n)`
-/

namespace A056939.P12998709986940750498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A156584 n : ℚ) * (A156764 n : ℚ)

end

end A056939.P12998709986940750498

/-! ## A056939.P3189481728373068783

`A142470(n)/A004525(A028326(n))`
-/

namespace A056939.P3189481728373068783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142470 n : ℚ) / (A004525 (A028326 n).toNat : ℚ)

end

end A056939.P3189481728373068783

/-! ## A056939.P16680863493930714046

`A142470(n)/A003602(A109128(n))`
-/

namespace A056939.P16680863493930714046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142470 n : ℚ) / (A003602 (A109128 n).toNat : ℚ)

end

end A056939.P16680863493930714046

/-!
# A056940: Number of antichains (or order ideals) in the poset 4*m*n or plane partitions with at most m rows and n columns and entries <= 4.

The programs for A056940, there is no canonical definition to state claims against.
-/

/-! ## A056940.P4747838223337092706

`A156587(n)/A090441(n)`
-/

namespace A056940.P4747838223337092706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156587 n : ℚ) / (A090441 n : ℚ)

end

end A056940.P4747838223337092706

/-! ## A056940.P7397069474969006007

`A007318(n)/A009963(n)*A156587(n)`
-/

namespace A056940.P7397069474969006007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A009963 n : ℚ) * (A156587 n : ℚ)

end

end A056940.P7397069474969006007

/-! ## A056940.P5215367382609303585

`A275823(A156587(n))`
-/

namespace A056940.P5215367382609303585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275823 (A156587 n).toNat

end

end A056940.P5215367382609303585

/-! ## A056940.P1046821697172765530

`A261721(A001263(n+1)^A324563(n))`
-/

namespace A056940.P1046821697172765530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261721 (SequenceMachineLib.roundAway ((A001263 (n + 1) : ℚ) ^ (A324563 n : ℤ))).toNat

end

end A056940.P1046821697172765530

/-! ## A056940.P15802624817559582395

`A087808(A022176(n))`
-/

namespace A056940.P15802624817559582395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A022176 n).toNat

end

end A056940.P15802624817559582395

/-!
# A056941: Number of antichains (or order ideals) in the poset 5*m*n or plane partitions with not more than m rows, n columns and entries <= 5.

The programs for A056941, there is no canonical definition to state claims against.
-/

/-! ## A056941.P9698098120162722381

`A114149(A056940(n))`
-/

namespace A056941.P9698098120162722381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114149 (A056940 n).toNat

end

end A056941.P9698098120162722381

/-! ## A056941.P7260882847601983844

`A089858(A099759(n))`
-/

namespace A056941.P7260882847601983844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089858 (A099759 n).toNat

end

end A056941.P7260882847601983844

/-! ## A056941.P13988406516039265209

`A034695(A156581(n))`
-/

namespace A056941.P13988406516039265209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034695 (A156581 n).toNat

end

end A056941.P13988406516039265209

/-! ## A056941.P17138973655465808689

`A106454(A086645(n))`
-/

namespace A056941.P17138973655465808689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106454 (A086645 n).toNat

end

end A056941.P17138973655465808689

/-! ## A056941.P5890402816209703885

`A039009(A157221(n))`
-/

namespace A056941.P5890402816209703885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039009 (A157221 n).toNat

end

end A056941.P5890402816209703885

/-!
# A056942: Area of rectangle needed to enclose a non-touching spiral of length n on a square lattice.

The programs for A056942, the canonical program `A056942.P12129803378774877293` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056942 has offset 0).

The definition of A056942 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056942.P12129803378774877293

`floor((sqrt(8*n+1)-1)/2)*ceil((sqrt(8*n+1)-1)/2)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056942

/-- `floor((sqrt(8*n+1)-1)/2)*ceil((sqrt(8*n+1)-1)/2)` -/
def P12129803378774877293.Spec : Prop :=
  ∀ n, P12129803378774877293.a n = A056942 n

theorem P12129803378774877293.correct : P12129803378774877293.Spec := by
  intro n
  simp only [A056942]

end A056942

/-! ## A056942.P15577415459907296725

`A056943(n)+n`
-/

namespace A056942.P15577415459907296725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056943 n + (n : ℤ)

end

end A056942.P15577415459907296725

namespace A056942

/-- `A056943(n)+n` -/
def P15577415459907296725.Spec : Prop :=
  ∀ n, P15577415459907296725.a n = A056942 n

end A056942

/-! ## A056942.P16147192003713731690

`2*n-A056944(n)`
-/

namespace A056942.P16147192003713731690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A056944 n

end

end A056942.P16147192003713731690

namespace A056942

/-- `2*n-A056944(n)` -/
def P16147192003713731690.Spec : Prop :=
  ∀ n, P16147192003713731690.a n = A056942 n

end A056942

/-! ## A056942.P18050921879925436980

`n-A001489(n-A056944(n))`
-/

namespace A056942.P18050921879925436980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001489 ((n : ℤ) - A056944 n).toNat

end

end A056942.P18050921879925436980

namespace A056942

/-- `n-A001489(n-A056944(n))` -/
def P18050921879925436980.Spec : Prop :=
  ∀ n, P18050921879925436980.a n = A056942 n

end A056942

/-! ## A056942.P9757773926258810273

`comp[A004202(n+1)]-A002262(n)`
-/

namespace A056942.P9757773926258810273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004202 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - A002262 n

end

end A056942.P9757773926258810273

namespace A056942

/-- `comp[A004202(n+1)]-A002262(n)` -/
def P9757773926258810273.Spec : Prop :=
  ∀ n, P9757773926258810273.a n = A056942 n

end A056942

/-! ## A056942.P5809805545727541756

`abs(A056944(n)+A001489(n))+n`
-/

namespace A056942.P5809805545727541756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056944 n + A001489 n| + (n : ℤ)

end

end A056942.P5809805545727541756

namespace A056942

/-- `abs(A056944(n)+A001489(n))+n` -/
def P5809805545727541756.Spec : Prop :=
  ∀ n, P5809805545727541756.a n = A056942 n

end A056942

/-! ## A056942.P1908140163372284088

`A004201(n+1)-A131818(n+1)`
-/

namespace A056942.P1908140163372284088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004201 (n + 1) - A131818 (n + 1)

end

end A056942.P1908140163372284088

namespace A056942

/-- `A004201(n+1)-A131818(n+1)` -/
def P1908140163372284088.Spec : Prop :=
  ∀ n, P1908140163372284088.a n = A056942 n

end A056942

/-! ## A056942.P17904653475432254550

`A057944(n-A109004(n))+A057944(n)`
-/

namespace A056942.P17904653475432254550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 ((n : ℤ) - A109004 n).toNat + A057944 n

end

end A056942.P17904653475432254550

namespace A056942

/-- `A057944(n-A109004(n))+A057944(n)` -/
def P17904653475432254550.Spec : Prop :=
  ∀ n, P17904653475432254550.a n = A056942 n

end A056942

/-! ## A056942.P8543036068457613947

`A074148(n+1)-(A061925(n)+A056944(n))`
-/

namespace A056942.P8543036068457613947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074148 (n + 1) - (A061925 n + A056944 n)

end

end A056942.P8543036068457613947

namespace A056942

/-- `A074148(n+1)-(A061925(n)+A056944(n))` -/
def P8543036068457613947.Spec : Prop :=
  ∀ n, P8543036068457613947.a n = A056942 n

end A056942

/-! ## A056942.P365488954280096572

`A002024(n+1)*A123578(n)-A123578(n)`
-/

namespace A056942.P365488954280096572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A123578 n - A123578 n

end

end A056942.P365488954280096572

namespace A056942

/-- `A002024(n+1)*A123578(n)-A123578(n)` -/
def P365488954280096572.Spec : Prop :=
  ∀ n, P365488954280096572.a n = A056942 n

end A056942

/-! ## A056942.P894613907548999944

`A004201(A004201(n+1)-n)-A130296(n+1)`
-/

namespace A056942.P894613907548999944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004201 (A004201 (n + 1) - (n : ℤ)).toNat - A130296 (n + 1)

end

end A056942.P894613907548999944

namespace A056942

/-- `A004201(A004201(n+1)-n)-A130296(n+1)` -/
def P894613907548999944.Spec : Prop :=
  ∀ n, P894613907548999944.a n = A056942 n

end A056942

/-! ## A056942.P12808019878685166556

`A123578(n+1)*A123578(n)-A123578(n)`
-/

namespace A056942.P12808019878685166556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (n + 1) * A123578 n - A123578 n

end

end A056942.P12808019878685166556

namespace A056942

/-- `A123578(n+1)*A123578(n)-A123578(n)` -/
def P12808019878685166556.Spec : Prop :=
  ∀ n, P12808019878685166556.a n = A056942 n

end A056942

/-! ## A056942.P988002125266226484

`A002620(A007401(A007401(n+1))-(n+1))`
-/

namespace A056942.P988002125266226484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A007401 (A007401 (n + 1)).toNat - (n + 1 : ℤ)).toNat

end

end A056942.P988002125266226484

namespace A056942

/-- `A002620(A007401(A007401(n+1))-(n+1))` -/
def P988002125266226484.Spec : Prop :=
  ∀ n, P988002125266226484.a n = A056942 n

end A056942

/-! ## A056942.P16740603877703492670

`eq[A091453(n)², A091453(n)]-A002262(n)`
-/

namespace A056942.P16740603877703492670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - A002262 n

end

end A056942.P16740603877703492670

namespace A056942

/-- `eq[A091453(n)², A091453(n)]-A002262(n)` -/
def P16740603877703492670.Spec : Prop :=
  ∀ n, P16740603877703492670.a n = A056942 n

end A056942

/-! ## A056942.P16460734581819524230

`A232091(A063656(n))`
-/

namespace A056942.P16460734581819524230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232091 (A063656 n).toNat

end

end A056942.P16460734581819524230

namespace A056942

/-- `A232091(A063656(n))` -/
def P16460734581819524230.Spec : Prop :=
  ∀ n, P16460734581819524230.a n = A056942 n

end A056942

/-! ## A056942.P15298688961162214797

`A038759(A133280(n))`
-/

namespace A056942.P15298688961162214797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038759 (A133280 n).toNat

end

end A056942.P15298688961162214797

namespace A056942

/-- `A038759(A133280(n))` -/
def P15298688961162214797.Spec : Prop :=
  ∀ n, P15298688961162214797.a n = A056942 n

end A056942

/-! ## A056942.P17785083375084348587

`A038759(A176693(n+1))`
-/

namespace A056942.P17785083375084348587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038759 (A176693 (n + 1)).toNat

end

end A056942.P17785083375084348587

namespace A056942

/-- `A038759(A176693(n+1))` -/
def P17785083375084348587.Spec : Prop :=
  ∀ n, P17785083375084348587.a n = A056942 n

end A056942

/-! ## A056942.P18038183977610719295

`A038759(A063656(n+1)-1)`
-/

namespace A056942.P18038183977610719295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038759 (A063656 (n + 1) - 1).toNat

end

end A056942.P18038183977610719295

namespace A056942

/-- `A038759(A063656(n+1)-1)` -/
def P18038183977610719295.Spec : Prop :=
  ∀ n, P18038183977610719295.a n = A056942 n

end A056942

/-! ## A056942.P13524375204844984954

`A038759(2*n-A003056(n))`
-/

namespace A056942.P13524375204844984954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038759 ((2 * n : ℤ) - A003056 n).toNat

end

end A056942.P13524375204844984954

namespace A056942

/-- `A038759(2*n-A003056(n))` -/
def P13524375204844984954.Spec : Prop :=
  ∀ n, P13524375204844984954.a n = A056942 n

end A056942

/-! ## A056942.P4587118707663168295

`A038759(2*n+1-A002024(n+1))`
-/

namespace A056942.P4587118707663168295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038759 ((2 * n + 1 : ℤ) - A002024 (n + 1)).toNat

end

end A056942.P4587118707663168295

namespace A056942

/-- `A038759(2*n+1-A002024(n+1))` -/
def P4587118707663168295.Spec : Prop :=
  ∀ n, P4587118707663168295.a n = A056942 n

end A056942

/-!
# A056943: Unused area of rectangle needed to enclose a non-touching spiral of length n on a square lattice.

The programs for A056943, the canonical program `A056943.P2657344456391598982` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056943 has offset 0).

The definition of A056943 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056943.P2657344456391598982

`floor((sqrt(8*n+1)-1)/2)*ceil((sqrt(8*n+1)-1)/2)-n`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056943

/-- `floor((sqrt(8*n+1)-1)/2)*ceil((sqrt(8*n+1)-1)/2)-n` -/
def P2657344456391598982.Spec : Prop :=
  ∀ n, P2657344456391598982.a n = A056943 n

theorem P2657344456391598982.correct : P2657344456391598982.Spec := by
  intro n
  simp only [A056943]

end A056943

/-! ## A056943.P6294969472730005159

`(A056942(n)+1)%(n+1)`
-/

namespace A056943.P6294969472730005159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056942 n + 1) (n + 1 : ℤ)

end

end A056943.P6294969472730005159

namespace A056943

/-- `(A056942(n)+1)%(n+1)` -/
def P6294969472730005159.Spec : Prop :=
  ∀ n, P6294969472730005159.a n = A056943 n

end A056943

/-! ## A056943.P5929908444340338619

`A056942(n)%A028310(n)`
-/

namespace A056943.P5929908444340338619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056942 n) (A028310 n)

end

end A056943.P5929908444340338619

namespace A056943

/-- `A056942(n)%A028310(n)` -/
def P5929908444340338619.Spec : Prop :=
  ∀ n, P5929908444340338619.a n = A056943 n

end A056943

/-! ## A056943.P10089703510278698507

`abs(A056942(n)+A001489(n))`
-/

namespace A056943.P10089703510278698507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056942 n + A001489 n|

end

end A056943.P10089703510278698507

namespace A056943

/-- `abs(A056942(n)+A001489(n))` -/
def P10089703510278698507.Spec : Prop :=
  ∀ n, P10089703510278698507.a n = A056943 n

end A056943

/-! ## A056943.P17108406587230842660

`abs(A056944(n)+A001489(n))`
-/

namespace A056943.P17108406587230842660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056944 n + A001489 n|

end

end A056943.P17108406587230842660

namespace A056943

/-- `abs(A056944(n)+A001489(n))` -/
def P17108406587230842660.Spec : Prop :=
  ∀ n, P17108406587230842660.a n = A056943 n

end A056943

/-! ## A056943.P3659317305388453572

`(round(sqrt(2*n))*A003056(n))%A028310(n)`
-/

namespace A056943.P3659317305388453572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) * A003056 n) (A028310 n)

end

end A056943.P3659317305388453572

namespace A056943

/-- `(round(sqrt(2*n))*A003056(n))%A028310(n)` -/
def P3659317305388453572.Spec : Prop :=
  ∀ n, P3659317305388453572.a n = A056943 n

end A056943

/-! ## A056943.P14773983570102151133

`A003056(A000217(A056942(n)-n))`
-/

namespace A056943.P14773983570102151133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000217 (A056942 n - (n : ℤ)).toNat).toNat

end

end A056943.P14773983570102151133

namespace A056943

/-- `A003056(A000217(A056942(n)-n))` -/
def P14773983570102151133.Spec : Prop :=
  ∀ n, P14773983570102151133.a n = A056943 n

end A056943

/-! ## A056943.P14886773745859340547

`A056944(A000217(n-A056944(n)))`
-/

namespace A056943.P14886773745859340547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056944 (A000217 ((n : ℤ) - A056944 n).toNat).toNat

end

end A056943.P14886773745859340547

namespace A056943

/-- `A056944(A000217(n-A056944(n)))` -/
def P14886773745859340547.Spec : Prop :=
  ∀ n, P14886773745859340547.a n = A056943 n

end A056943

/-! ## A056943.P1578829210299969163

`A025581(A056944(n)+∑[n])`
-/

namespace A056943.P1578829210299969163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A056944 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A056943.P1578829210299969163

namespace A056943

/-- `A025581(A056944(n)+∑[n])` -/
def P1578829210299969163.Spec : Prop :=
  ∀ n, P1578829210299969163.a n = A056943 n

end A056943

/-! ## A056943.P17375107123528459242

`A231204(A089633(n))`
-/

namespace A056943.P17375107123528459242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231204 (A089633 n).toNat

end

end A056943.P17375107123528459242

namespace A056943

/-- `A231204(A089633(n))` -/
def P17375107123528459242.Spec : Prop :=
  ∀ n, P17375107123528459242.a n = A056943 n

end A056943

/-!
# A056944: Amount by which used area of rectangle needed to enclose a non-touching spiral of length n on a square lattice exceeds unused area.

The programs for A056944, the canonical program `A056944.P15541445897934142795` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056944 has offset 0).

The definition of A056944 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056944.P15541445897934142795

`2*n-floor((sqrt(8*n+1)-1)/2)*ceil((sqrt(8*n+1)-1)/2)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056944

/-- `2*n-floor((sqrt(8*n+1)-1)/2)*ceil((sqrt(8*n+1)-1)/2)` -/
def P15541445897934142795.Spec : Prop :=
  ∀ n, P15541445897934142795.a n = A056944 n

theorem P15541445897934142795.correct : P15541445897934142795.Spec := by
  intro n
  simp only [A056944]

end A056944

/-!
# A056945: Jacobi form of weight 12 and index 1 associated to a (nonexistent) lattice vector of norm 2 for the Leech lattice.

The programs for A056945, there is no canonical definition to state claims against.
-/

/-! ## A056945.P14049274400421262692

`2*A055759(n)-A055752(n)`
-/

namespace A056945.P14049274400421262692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055759 n - A055752 n

end

end A056945.P14049274400421262692

/-! ## A056945.P1776622041302774570

`2*A055760(n)-A055753(n)`
-/

namespace A056945.P1776622041302774570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055760 n - A055753 n

end

end A056945.P1776622041302774570

/-! ## A056945.P17266788818081510766

`2*A055761(n)-A055754(n)`
-/

namespace A056945.P17266788818081510766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055761 n - A055754 n

end

end A056945.P17266788818081510766

/-! ## A056945.P14992586930740571766

`2*A055762(n)-A055757(n)`
-/

namespace A056945.P14992586930740571766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055762 n - A055757 n

end

end A056945.P14992586930740571766

/-! ## A056945.P17120506663126286415

`2*A055763(n)-A055758(n)`
-/

namespace A056945.P17120506663126286415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055763 n - A055758 n

end

end A056945.P17120506663126286415

/-! ## A056945.P15205980927532735363

`2*A055765(n)-A055762(n)`
-/

namespace A056945.P15205980927532735363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055765 n - A055762 n

end

end A056945.P15205980927532735363

/-! ## A056945.P487405461604598658

`2*A055766(n)-A055764(n)`
-/

namespace A056945.P487405461604598658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055766 n - A055764 n

end

end A056945.P487405461604598658

/-! ## A056945.P3581945391693133691

`2*A056950(n)-A055750(n)`
-/

namespace A056945.P3581945391693133691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056950 n - A055750 n

end

end A056945.P3581945391693133691

/-! ## A056945.P5416381265410181322

`A055747(n)+A055753(n)-A055749(n)`
-/

namespace A056945.P5416381265410181322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055747 n + (A055753 n - A055749 n)

end

end A056945.P5416381265410181322

/-! ## A056945.P13831489845823438725

`A055753(n)+A055754(n)-A055747(n)`
-/

namespace A056945.P13831489845823438725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055753 n + (A055754 n - A055747 n)

end

end A056945.P13831489845823438725

/-! ## A056945.P9625971307843366921

`A055753(n)+A055766(n)-A055752(n)`
-/

namespace A056945.P9625971307843366921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055753 n + (A055766 n - A055752 n)

end

end A056945.P9625971307843366921

/-! ## A056945.P14943130605013609692

`A055754(n)+A055766(n)-A055753(n)`
-/

namespace A056945.P14943130605013609692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055754 n + (A055766 n - A055753 n)

end

end A056945.P14943130605013609692

/-! ## A056945.P15885855993431156059

`A055756(n)+A055765(n)-A055753(n)`
-/

namespace A056945.P15885855993431156059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055756 n + (A055765 n - A055753 n)

end

end A056945.P15885855993431156059

/-! ## A056945.P12040419023969194906

`A055765(n)+A055766(n)-A055763(n)`
-/

namespace A056945.P12040419023969194906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055765 n + (A055766 n - A055763 n)

end

end A056945.P12040419023969194906

/-! ## A056945.P17901386685213674055

`A055754(n)+A056950(n)-A055751(n)`
-/

namespace A056945.P17901386685213674055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055754 n + (A056950 n - A055751 n)

end

end A056945.P17901386685213674055

/-!
# A056947: Theta series of nonexistent Niemeier lattice of Coxeter number 1.

The programs for A056947, there is no canonical definition to state claims against.
-/

/-! ## A056947.P8766547023629151977

`A008702(n)+A008703(n)-A008700(n)`
-/

namespace A056947.P8766547023629151977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008702 n + (A008703 n - A008700 n)

end

end A056947.P8766547023629151977

/-! ## A056947.P13809495789270861407

`2*A008703(n)-A008701(n)`
-/

namespace A056947.P13809495789270861407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008703 n - A008701 n

end

end A056947.P13809495789270861407

/-! ## A056947.P15216211900356028102

`2*A008702(n)-A008699(n)`
-/

namespace A056947.P15216211900356028102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008702 n - A008699 n

end

end A056947.P15216211900356028102

/-! ## A056947.P3093218961988848665

`A008701(n)+A008703(n)-A008699(n)`
-/

namespace A056947.P3093218961988848665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008701 n + (A008703 n - A008699 n)

end

end A056947.P3093218961988848665

/-! ## A056947.P17516172451820558233

`A008689(n)+A008690(n)-A008688(n)`
-/

namespace A056947.P17516172451820558233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008689 n + (A008690 n - A008688 n)

end

end A056947.P17516172451820558233

/-! ## A056947.P17131660125821025368

`A008692(n)+A008699(n)-A008690(n)`
-/

namespace A056947.P17131660125821025368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008692 n + (A008699 n - A008690 n)

end

end A056947.P17131660125821025368

/-! ## A056947.P2937323061636527832

`A008694(n)+A008696(n)-A008690(n)`
-/

namespace A056947.P2937323061636527832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008694 n + (A008696 n - A008690 n)

end

end A056947.P2937323061636527832

/-! ## A056947.P10243954924695476084

`2*A008704(n)-A008703(n)`
-/

namespace A056947.P10243954924695476084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008704 n - A008703 n

end

end A056947.P10243954924695476084

/-! ## A056947.P633068063669635686

`A008694(n)+A008704(n)-A008693(n)`
-/

namespace A056947.P633068063669635686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008694 n + (A008704 n - A008693 n)

end

end A056947.P633068063669635686

/-! ## A056947.P10593244646817257149

`A008697(n)+A008704(n)-A008696(n)`
-/

namespace A056947.P10593244646817257149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008697 n + (A008704 n - A008696 n)

end

end A056947.P10593244646817257149

/-! ## A056947.P11281883951211448584

`A008698(n)+A008704(n)-A008697(n)`
-/

namespace A056947.P11281883951211448584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008698 n + (A008704 n - A008697 n)

end

end A056947.P11281883951211448584

/-! ## A056947.P2060363140956215112

`A008699(n)+A008704(n)-A008698(n)`
-/

namespace A056947.P2060363140956215112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008699 n + (A008704 n - A008698 n)

end

end A056947.P2060363140956215112

/-! ## A056947.P7907499168138219502

`A008700(n)+A008704(n)-A008699(n)`
-/

namespace A056947.P7907499168138219502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008700 n + (A008704 n - A008699 n)

end

end A056947.P7907499168138219502

/-! ## A056947.P15225322737619158319

`A008701(n)+A008704(n)-A008700(n)`
-/

namespace A056947.P15225322737619158319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008701 n + (A008704 n - A008700 n)

end

end A056947.P15225322737619158319

/-! ## A056947.P4050516139179189000

`A008702(n)+A008704(n)-A008701(n)`
-/

namespace A056947.P4050516139179189000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008702 n + (A008704 n - A008701 n)

end

end A056947.P4050516139179189000

/-! ## A056947.P1181502351644143546

`A008703(n)+A008704(n)-A008702(n)`
-/

namespace A056947.P1181502351644143546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008703 n + (A008704 n - A008702 n)

end

end A056947.P1181502351644143546

/-! ## A056947.P1160135804199562449

`A008695(n)+A008704(n)-A008694(n)`
-/

namespace A056947.P1160135804199562449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008695 n + (A008704 n - A008694 n)

end

end A056947.P1160135804199562449

/-! ## A056947.P17535821598634067035

`A056949(4*n)`
-/

namespace A056947.P17535821598634067035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056949 (4 * n)

end

end A056947.P17535821598634067035

/-!
# A056948: Jacobi form of weight 12 and index 1 associated with a nonexistent Niemeier lattice of Coxeter number 1.

The programs for A056948, there is no canonical definition to state claims against.
-/

/-! ## A056948.P13106885797429902051

`2*A055756(n)-A055751(n)`
-/

namespace A056948.P13106885797429902051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055756 n - A055751 n

end

end A056948.P13106885797429902051

/-! ## A056948.P5099407048564083653

`2*A055761(n)-A055756(n)`
-/

namespace A056948.P5099407048564083653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055761 n - A055756 n

end

end A056948.P5099407048564083653

/-! ## A056948.P16423028198323920182

`2*A055763(n)-A055759(n)`
-/

namespace A056948.P16423028198323920182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055763 n - A055759 n

end

end A056948.P16423028198323920182

/-! ## A056948.P3963258469132327120

`2*A055764(n)-A055761(n)`
-/

namespace A056948.P3963258469132327120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055764 n - A055761 n

end

end A056948.P3963258469132327120

/-! ## A056948.P4001586862351760497

`2*A055765(n)-A055763(n)`
-/

namespace A056948.P4001586862351760497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055765 n - A055763 n

end

end A056948.P4001586862351760497

/-! ## A056948.P9435070604773772672

`2*A055766(n)-A055765(n)`
-/

namespace A056948.P9435070604773772672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055766 n - A055765 n

end

end A056948.P9435070604773772672

/-! ## A056948.P16923249830398743810

`2*A055762(n)-A056950(n)`
-/

namespace A056948.P16923249830398743810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055762 n - A056950 n

end

end A056948.P16923249830398743810

/-! ## A056948.P17704184487285962159

`(A056945(n)+A055766(n))/2`
-/

namespace A056948.P17704184487285962159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056945 n + A055766 n : ℚ) / 2

end

end A056948.P17704184487285962159

/-! ## A056948.P15376719470388483461

`A055751(n)+A055762(n)-A055747(n)`
-/

namespace A056948.P15376719470388483461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055751 n + (A055762 n - A055747 n)

end

end A056948.P15376719470388483461

/-! ## A056948.P8069415399431322468

`A055752(n)+A055756(n)-A055747(n)`
-/

namespace A056948.P8069415399431322468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055752 n + (A055756 n - A055747 n)

end

end A056948.P8069415399431322468

/-! ## A056948.P1626536924145589540

`A055753(n)+A055765(n)-A055752(n)`
-/

namespace A056948.P1626536924145589540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055753 n + (A055765 n - A055752 n)

end

end A056948.P1626536924145589540

/-! ## A056948.P13779592555438917258

`A055754(n)+A055765(n)-A055753(n)`
-/

namespace A056948.P13779592555438917258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055754 n + (A055765 n - A055753 n)

end

end A056948.P13779592555438917258

/-! ## A056948.P4688181447812196866

`A055765(n)+A055766(n)-A055764(n)`
-/

namespace A056948.P4688181447812196866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055765 n + (A055766 n - A055764 n)

end

end A056948.P4688181447812196866

/-!
# A056950: Jacobi form of weight 12 and index 1 associated with a nonexistent Niemeier lattice of Coxeter number 11.

The programs for A056950, there is no canonical definition to state claims against.
-/

/-! ## A056950.P17465133851152513571

`2*A055752(n)-A055751(n)`
-/

namespace A056950.P17465133851152513571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055752 n - A055751 n

end

end A056950.P17465133851152513571

/-! ## A056950.P7175740460572889410

`2*A055757(n)-A055756(n)`
-/

namespace A056950.P7175740460572889410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055757 n - A055756 n

end

end A056950.P7175740460572889410

/-! ## A056950.P4359145173875820865

`2*A055758(n)-A055759(n)`
-/

namespace A056950.P4359145173875820865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055758 n - A055759 n

end

end A056950.P4359145173875820865

/-! ## A056950.P11066764628897787183

`2*A055759(n)-A055761(n)`
-/

namespace A056950.P11066764628897787183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055759 n - A055761 n

end

end A056950.P11066764628897787183

/-! ## A056950.P5898541606244307710

`(A055758(n)+A055757(n))/2`
-/

namespace A056950.P5898541606244307710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055758 n + A055757 n : ℚ) / 2

end

end A056950.P5898541606244307710

/-! ## A056950.P5588359527763546888

`(A055759(n)+A055756(n))/2`
-/

namespace A056950.P5588359527763546888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055759 n + A055756 n : ℚ) / 2

end

end A056950.P5588359527763546888

/-! ## A056950.P17046961086760306908

`(A055760(n)+A055754(n))/2`
-/

namespace A056950.P17046961086760306908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055760 n + A055754 n : ℚ) / 2

end

end A056950.P17046961086760306908

/-! ## A056950.P2485669583775738165

`(A055762(n)+A055753(n))/2`
-/

namespace A056950.P2485669583775738165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055762 n + A055753 n : ℚ) / 2

end

end A056950.P2485669583775738165

/-! ## A056950.P16924155803685866601

`2*A055761(n)-A055765(n)`
-/

namespace A056950.P16924155803685866601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055761 n - A055765 n

end

end A056950.P16924155803685866601

/-! ## A056950.P9252456600052174605

`A055747(n)+A055762(n)-A055751(n)`
-/

namespace A056950.P9252456600052174605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055747 n + (A055762 n - A055751 n)

end

end A056950.P9252456600052174605

/-! ## A056950.P189593015005786215

`A055751(n)+A055753(n)-A055747(n)`
-/

namespace A056950.P189593015005786215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055751 n + (A055753 n - A055747 n)

end

end A056950.P189593015005786215

/-! ## A056950.P3362810346659129792

`A055747(n)+A055765(n)-A055750(n)`
-/

namespace A056950.P3362810346659129792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055747 n + (A055765 n - A055750 n)

end

end A056950.P3362810346659129792

/-! ## A056950.P9279958554159455298

`A055750(n)+A055754(n)-A055751(n)`
-/

namespace A056950.P9279958554159455298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055750 n + (A055754 n - A055751 n)

end

end A056950.P9279958554159455298

/-! ## A056950.P1214839753865076129

`A055752(n)+A055765(n)-A055758(n)`
-/

namespace A056950.P1214839753865076129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055752 n + (A055765 n - A055758 n)

end

end A056950.P1214839753865076129

/-! ## A056950.P1046851413611942852

`A055753(n)+A055765(n)-A055760(n)`
-/

namespace A056950.P1046851413611942852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055753 n + (A055765 n - A055760 n)

end

end A056950.P1046851413611942852

/-! ## A056950.P14123559703458146439

`A055751(n)+A055766(n)-A055753(n)`
-/

namespace A056950.P14123559703458146439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055751 n + (A055766 n - A055753 n)

end

end A056950.P14123559703458146439

/-! ## A056950.P11344842295567985889

`A055753(n)+A055766(n)-A055761(n)`
-/

namespace A056950.P11344842295567985889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055753 n + (A055766 n - A055761 n)

end

end A056950.P11344842295567985889

/-! ## A056950.P13524108535175167519

`A055757(n)+A055766(n)-A055765(n)`
-/

namespace A056950.P13524108535175167519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055757 n + (A055766 n - A055765 n)

end

end A056950.P13524108535175167519

/-! ## A056950.P317800854159722534

`A055758(n)+A055765(n)-A055766(n)`
-/

namespace A056950.P317800854159722534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055758 n + (A055765 n - A055766 n)

end

end A056950.P317800854159722534

/-!
# A056951: Triangle whose rows show the result of flipping the first, first two, ... and finally first n coins when starting with the stack (1,2,3,4,...,n) [starting with all heads up, where signs show whether particular coins end up heads or tails].

The programs for A056951, the canonical program `A056951.P14752552283292487820` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056951 has offset 1).

The definition of A056951 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056951.P12532921077222315286

`floor(sqrt(2*n)-A099375(n))`
-/

namespace A056951.P12532921077222315286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 * n : ℝ) - (A099375 n : ℝ)⌋

end

end A056951.P12532921077222315286

namespace A056951

/-- `floor(sqrt(2*n)-A099375(n))` -/
def P12532921077222315286.Spec : Prop :=
  ∀ n, P12532921077222315286.a n = A056951 (n + 1)

end A056951

/-! ## A056951.P14752552283292487820

`round((2*n+1)/2-A038722(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A056951

/-- `round((2*n+1)/2-A038722(n+1))` -/
def P14752552283292487820.Spec : Prop :=
  ∀ n, P14752552283292487820.a n = A056951 (n + 1)

theorem P14752552283292487820.correct : P14752552283292487820.Spec := by
  intro n
  simp only [A056951, Nat.add_sub_cancel]

end A056951

/-! ## A056951.P9447470163354091799

`ceil(sqrt(2*n+1))-2*A004736(n+1)`
-/

namespace A056951.P9447470163354091799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * n + 1 : ℝ)⌉ - 2 * A004736 (n + 1)

end

end A056951.P9447470163354091799

namespace A056951

/-- `ceil(sqrt(2*n+1))-2*A004736(n+1)` -/
def P9447470163354091799.Spec : Prop :=
  ∀ n, P9447470163354091799.a n = A056951 (n + 1)

end A056951

/-! ## A056951.P699830175012953235

`A172471(n)-A099375(n)`
-/

namespace A056951.P699830175012953235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 n - A099375 n

end

end A056951.P699830175012953235

namespace A056951

/-- `A172471(n)-A099375(n)` -/
def P699830175012953235.Spec : Prop :=
  ∀ n, P699830175012953235.a n = A056951 (n + 1)

end A056951

/-! ## A056951.P871434236208114568

`A101776(n)-A212012(n+1)`
-/

namespace A056951.P871434236208114568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101776 n - A212012 (n + 1)

end

end A056951.P871434236208114568

namespace A056951

/-- `A101776(n)-A212012(n+1)` -/
def P871434236208114568.Spec : Prop :=
  ∀ n, P871434236208114568.a n = A056951 (n + 1)

end A056951

/-! ## A056951.P9570908106166762629

`-(A114327(n)+A077605(n+1))`
-/

namespace A056951.P9570908106166762629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A114327 n + A077605 (n + 1))

end

end A056951.P9570908106166762629

namespace A056951

/-- `-(A114327(n)+A077605(n+1))` -/
def P9570908106166762629.Spec : Prop :=
  ∀ n, P9570908106166762629.a n = A056951 (n + 1)

end A056951

/-! ## A056951.P610719496819790833

`n+1-(A077605(n+1)+A038722(n+1))`
-/

namespace A056951.P610719496819790833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A077605 (n + 1) + A038722 (n + 1))

end

end A056951.P610719496819790833

namespace A056951

/-- `n+1-(A077605(n+1)+A038722(n+1))` -/
def P610719496819790833.Spec : Prop :=
  ∀ n, P610719496819790833.a n = A056951 (n + 1)

end A056951

/-! ## A056951.P16756340103190114678

`A001478(A099375(n)+1)+ceil(sqrt(2*n+1))`
-/

namespace A056951.P16756340103190114678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (A099375 n + 1).toNat + ⌈Real.sqrt (2 * n + 1 : ℝ)⌉

end

end A056951.P16756340103190114678

namespace A056951

/-- `A001478(A099375(n)+1)+ceil(sqrt(2*n+1))` -/
def P16756340103190114678.Spec : Prop :=
  ∀ n, P16756340103190114678.a n = A056951 (n + 1)

end A056951

/-! ## A056951.P15908033250211699673

`n-(A101688(A061579(n))+A061579(n))`
-/

namespace A056951.P15908033250211699673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A101688 (A061579 n).toNat + A061579 n)

end

end A056951.P15908033250211699673

namespace A056951

/-- `n-(A101688(A061579(n))+A061579(n))` -/
def P15908033250211699673.Spec : Prop :=
  ∀ n, P15908033250211699673.a n = A056951 (n + 1)

end A056951

/-! ## A056951.P10404136729647857561

`A049581(n)*A143182(n)-A130517(n+1)²`
-/

namespace A056951.P10404136729647857561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 n * A143182 n - A130517 (n + 1) ^ 2

end

end A056951.P10404136729647857561

namespace A056951

/-- `A049581(n)*A143182(n)-A130517(n+1)²` -/
def P10404136729647857561.Spec : Prop :=
  ∀ n, P10404136729647857561.a n = A056951 (n + 1)

end A056951

/-! ## A056951.P4773043286120723373

`A162630(n+1)*A340507(n)-A130517(n+1)`
-/

namespace A056951.P4773043286120723373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162630 (n + 1) * A340507 n - A130517 (n + 1)

end

end A056951.P4773043286120723373

namespace A056951

/-- `A162630(n+1)*A340507(n)-A130517(n+1)` -/
def P4773043286120723373.Spec : Prop :=
  ∀ n, P4773043286120723373.a n = A056951 (n + 1)

end A056951

/-! ## A056951.P2639606919685634470

`A114327(A114327(n)+n)-A077605(n+1)`
-/

namespace A056951.P2639606919685634470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (A114327 n + (n : ℤ)).toNat - A077605 (n + 1)

end

end A056951.P2639606919685634470

namespace A056951

/-- `A114327(A114327(n)+n)-A077605(n+1)` -/
def P2639606919685634470.Spec : Prop :=
  ∀ n, P2639606919685634470.a n = A056951 (n + 1)

end A056951

/-! ## A056951.P14139328762360715742

`A196199(A028392(2*n)+1)`
-/

namespace A056951.P14139328762360715742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (A028392 (2 * n) + 1).toNat

end

end A056951.P14139328762360715742

namespace A056951

/-- `A196199(A028392(2*n)+1)` -/
def P14139328762360715742.Spec : Prop :=
  ∀ n, P14139328762360715742.a n = A056951 (n + 1)

end A056951

/-! ## A056951.P16069094624501790455

`A000196(2*n)-A099375(n)`
-/

namespace A056951.P16069094624501790455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * n) - A099375 n

end

end A056951.P16069094624501790455

namespace A056951

/-- `A000196(2*n)-A099375(n)` -/
def P16069094624501790455.Spec : Prop :=
  ∀ n, P16069094624501790455.a n = A056951 (n + 1)

end A056951

/-! ## A056951.P5240867796763831318

`-(A114327(n)+A000267(2*n)%2)`
-/

namespace A056951.P5240867796763831318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A114327 n + Int.tmod (A000267 (2 * n)) 2)

end

end A056951.P5240867796763831318

namespace A056951

/-- `-(A114327(n)+A000267(2*n)%2)` -/
def P5240867796763831318.Spec : Prop :=
  ∀ n, P5240867796763831318.a n = A056951 (n + 1)

end A056951

/-! ## A056951.P15070499907064461255

`A028392(2*n)-A028387(A003056(n))`
-/

namespace A056951.P15070499907064461255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 (2 * n) - A028387 (A003056 n).toNat

end

end A056951.P15070499907064461255

namespace A056951

/-- `A028392(2*n)-A028387(A003056(n))` -/
def P15070499907064461255.Spec : Prop :=
  ∀ n, P15070499907064461255.a n = A056951 (n + 1)

end A056951

/-! ## A056951.P6156364003328151917

`A196199(A109613(2*n)+A000196(2*n))`
-/

namespace A056951.P6156364003328151917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (A109613 (2 * n) + A000196 (2 * n)).toNat

end

end A056951.P6156364003328151917

namespace A056951

/-- `A196199(A109613(2*n)+A000196(2*n))` -/
def P6156364003328151917.Spec : Prop :=
  ∀ n, P6156364003328151917.a n = A056951 (n + 1)

end A056951

/-! ## A056951.P14282834892460970992

`A000196(2*n)-(A025581(n)+A025581(n)+1)`
-/

namespace A056951.P14282834892460970992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * n) - (A025581 n + (A025581 n + 1))

end

end A056951.P14282834892460970992

namespace A056951

/-- `A000196(2*n)-(A025581(n)+A025581(n)+1)` -/
def P14282834892460970992.Spec : Prop :=
  ∀ n, P14282834892460970992.a n = A056951 (n + 1)

end A056951

/-! ## A056951.P10248481922992925367

`A196199(A078358(Δ[n²]))`
-/

namespace A056951.P10248481922992925367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (A078358 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A056951.P10248481922992925367

namespace A056951

/-- `A196199(A078358(Δ[n²]))` -/
def P10248481922992925367.Spec : Prop :=
  ∀ n, P10248481922992925367.a n = A056951 (n + 1)

end A056951

/-! ## A056951.P7586184230413067204

`A000196(2*n)-A179753(2*n+1)`
-/

namespace A056951.P7586184230413067204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * n) - A179753 (2 * n + 1)

end

end A056951.P7586184230413067204

namespace A056951

/-- `A000196(2*n)-A179753(2*n+1)` -/
def P7586184230413067204.Spec : Prop :=
  ∀ n, P7586184230413067204.a n = A056951 (n + 1)

end A056951

/-!
# A056952: Numerators of continued fraction for alternating factorial.

The programs for A056952, the canonical program `A056952.P3878937948020003560` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056952 has offset 0).

The definition of A056952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056952.P3878937948020003560

`a(n-1)+floor(n/2)*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056952

/-- `a(n-1)+floor(n/2)*a(n-2)` -/
def P3878937948020003560.Spec : Prop :=
  ∀ n, P3878937948020003560.a n = A056952 n

theorem P3878937948020003560.correct : P3878937948020003560.Spec := by
  intro n
  simp only [A056952]

end A056952

/-! ## A056952.P10699829140312588968

`a(n-1)+a(n-2)*A004526(n)` with `a(0)=0, a(1)=1`
-/

namespace A056952.P10699829140312588968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + a (n - 2) * A004526 n

end

end A056952.P10699829140312588968

namespace A056952

/-- `a(n-1)+a(n-2)*A004526(n)` -/
def P10699829140312588968.Spec : Prop :=
  ∀ n, P10699829140312588968.a n = A056952 n

end A056952

/-! ## A056952.P8947009317945060663

`a(n-1)+a(n-2)*A123108(n)` with `a(0)=0, a(1)=1`
-/

namespace A056952.P8947009317945060663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + a (n - 2) * A123108 n

end

end A056952.P8947009317945060663

namespace A056952

/-- `a(n-1)+a(n-2)*A123108(n)` -/
def P8947009317945060663.Spec : Prop :=
  ∀ n, P8947009317945060663.a n = A056952 n

end A056952

/-! ## A056952.P349958079998709571

`((4*n-2)*a(n-2)+2*a(n-3)-(n-2)*(n-3)*a(n-4))/4` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A056952.P349958079998709571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 1, 2] fun n a =>
  (((4 * n : ℤ) - 2 : ℚ) * a (n - 2) + 2 * a (n - 3) - ((n : ℤ) - 2 : ℚ) * (((n : ℤ) - 3 : ℚ) * a (n - 4))) / 4

end

end A056952.P349958079998709571

namespace A056952

/-- `((4*n-2)*a(n-2)+2*a(n-3)-(n-2)*(n-3)*a(n-4))/4` -/
def P349958079998709571.Spec : Prop :=
  ∀ n, P349958079998709571.a n = (A056952 n : ℚ)

end A056952

/-! ## A056952.P1153886057820007367

`A262689(∏[A119620(n)]*A006128(n))`
-/

namespace A056952.P1153886057820007367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 ((∏ j ∈ Finset.range (n + 1), f1 j) * A006128 n).toNat

end

end A056952.P1153886057820007367

namespace A056952

/-- `A262689(∏[A119620(n)]*A006128(n))` -/
def P1153886057820007367.Spec : Prop :=
  ∀ n, P1153886057820007367.a n = A056952 n

end A056952

/-!
# A056953: Denominators of continued fraction for alternating factorial.

The programs for A056953, the canonical program `A056953.P1917628705930637154` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056953 has offset 0).

The definition of A056953 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056953.P1917628705930637154

`((4*n-2)*a(n-2)+2*a(n-3)-(n-2)*(n-3)*a(n-4))/4` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056953

/-- `((4*n-2)*a(n-2)+2*a(n-3)-(n-2)*(n-3)*a(n-4))/4` -/
def P1917628705930637154.Spec : Prop :=
  ∀ n, P1917628705930637154.a n = (A056953 n : ℚ)

end A056953

/-! ## A056953.P11127065932895267341

`a(n-1)+floor(n/2)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A056953.P11127065932895267341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + ⌊(n : ℚ) / 2⌋ * a (n - 2)

end

end A056953.P11127065932895267341

namespace A056953

/-- `a(n-1)+floor(n/2)*a(n-2)` -/
def P11127065932895267341.Spec : Prop :=
  ∀ n, P11127065932895267341.a n = A056953 n

end A056953

/-! ## A056953.P13304205719831895260

`a(n-1)+a(n-2)*A123108(n)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A056953.P13304205719831895260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) + a (n - 2) * A123108 n

end

end A056953.P13304205719831895260

namespace A056953

/-- `a(n-1)+a(n-2)*A123108(n)` -/
def P13304205719831895260.Spec : Prop :=
  ∀ n, P13304205719831895260.a n = A056953 n

end A056953

/-! ## A056953.P12885003606577388813

`A293985(A101881(n))`
-/

namespace A056953.P12885003606577388813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (A101881 n).toNat

end

end A056953.P12885003606577388813

namespace A056953

/-- `A293985(A101881(n))` -/
def P12885003606577388813.Spec : Prop :=
  ∀ n, P12885003606577388813.a n = A056953 n

end A056953

/-! ## A056953.P11232043433820624635

`A293985(A165157(n+1))`
-/

namespace A056953.P11232043433820624635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (A165157 (n + 1)).toNat

end

end A056953.P11232043433820624635

namespace A056953

/-- `A293985(A165157(n+1))` -/
def P11232043433820624635.Spec : Prop :=
  ∀ n, P11232043433820624635.a n = A056953 n

end A056953

/-! ## A056953.P11200804406236676391

`A293985(eq[1, A318758(n+1)])`
-/

namespace A056953.P11200804406236676391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056953.P11200804406236676391

namespace A056953

/-- `A293985(eq[1, A318758(n+1)])` -/
def P11200804406236676391.Spec : Prop :=
  ∀ n, P11200804406236676391.a n = A056953 n

end A056953

/-! ## A056953.P7202275035603412085

`A293985(A000124(A004525(n))+n)`
-/

namespace A056953.P7202275035603412085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (A000124 (A004525 n).toNat + (n : ℤ)).toNat

end

end A056953.P7202275035603412085

namespace A056953

/-- `A293985(A000124(A004525(n))+n)` -/
def P7202275035603412085.Spec : Prop :=
  ∀ n, P7202275035603412085.a n = A056953 n

end A056953

/-! ## A056953.P12265036679392601571

`A088699(A194274(n))`
-/

namespace A056953.P12265036679392601571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088699 (A194274 n).toNat

end

end A056953.P12265036679392601571

namespace A056953

/-- `A088699(A194274(n))` -/
def P12265036679392601571.Spec : Prop :=
  ∀ n, P12265036679392601571.a n = A056953 n

end A056953

/-! ## A056953.P17057998069962859706

`A088699(record[A245300(n)])`
-/

namespace A056953.P17057998069962859706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088699 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A056953.P17057998069962859706

namespace A056953

/-- `A088699(record[A245300(n)])` -/
def P17057998069962859706.Spec : Prop :=
  ∀ n, P17057998069962859706.a n = A056953 n

end A056953

/-! ## A056953.P11785147381303853679

`A088699(A007590(n+1))`
-/

namespace A056953.P11785147381303853679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088699 (A007590 (n + 1)).toNat

end

end A056953.P11785147381303853679

namespace A056953

/-- `A088699(A007590(n+1))` -/
def P11785147381303853679.Spec : Prop :=
  ∀ n, P11785147381303853679.a n = A056953 n

end A056953

/-!
# A056954: Numbers k such that k^2 divides A056819(k).

The programs for A056954, there is no canonical definition to state claims against.
-/

/-! ## A056954.P1841627974573997067

`A360681(A153710(n+1)+n)`
-/

namespace A056954.P1841627974573997067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360681 (A153710 (n + 1) + (n : ℤ)).toNat

end

end A056954.P1841627974573997067

/-! ## A056954.P18130960802105877141

`∩[A110473(n+1), A325593(n+1)]`
-/

namespace A056954.P18130960802105877141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056954.P18130960802105877141

/-!
# A056955: Euclid set of class 2 and modulus 3.

The programs for A056955, there is no canonical definition to state claims against.
-/

/-! ## A056955.P6741040845288324460

`filter[A082406(n+3), A069513(#)]`
-/

namespace A056955.P6741040845288324460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A056955.P6741040845288324460

/-! ## A056955.P15851706173951501860

`filter[A082406(n+3), A324290(#)]`
-/

namespace A056955.P15851706173951501860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A056955.P15851706173951501860

/-! ## A056955.P12267817306028403986

`filter[A082406(n+3), A354923(#)]`
-/

namespace A056955.P12267817306028403986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A056955.P12267817306028403986

/-! ## A056955.P3987471605821265569

`filter[A082406(n+3), A354924(#)]`
-/

namespace A056955.P3987471605821265569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A056955.P3987471605821265569

/-! ## A056955.P18211569269893315079

`∩[A066542(n+1), A082406(n+1)]`
-/

namespace A056955.P18211569269893315079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056955.P18211569269893315079

/-! ## A056955.P1482695641659405932

`filter[A082406(n+3), A325321(#)]`
-/

namespace A056955.P1482695641659405932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325321 (f1 j).toNat = 1) n)

end

end A056955.P1482695641659405932

/-! ## A056955.P3042653332089793609

`filter[A082406(n+3), A351957(#)]`
-/

namespace A056955.P3042653332089793609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A056955.P3042653332089793609

/-! ## A056955.P2151998939651371847

`filter[A082406(n+3), A353817(#)]`
-/

namespace A056955.P2151998939651371847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A056955.P2151998939651371847

/-! ## A056955.P296634945625277064

`record[A040005(n+2)+A000010(3*n+2)]`
-/

namespace A056955.P296634945625277064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040005 (n + 2) + A000010 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056955.P296634945625277064

/-! ## A056955.P10485026649131055698

`A161435(A250120(n))+A003627(n+1)`
-/

namespace A056955.P10485026649131055698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161435 (A250120 n).toNat + A003627 (n + 1)

end

end A056955.P10485026649131055698

/-! ## A056955.P10299757061187648575

`eq[(A107751(n)-A328772(n))², A328772(n)]`
-/

namespace A056955.P10299757061187648575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A107751 n - A328772 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328772 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056955.P10299757061187648575

/-! ## A056955.P14971108327347880520

`∩[A161428(n+1), A016789(n)]`
-/

namespace A056955.P14971108327347880520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056955.P14971108327347880520

/-! ## A056955.P960289151688701237

`∩[A161839(n+1), A016789(n)]`
-/

namespace A056955.P960289151688701237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056955.P960289151688701237

/-! ## A056955.P3413815898884194319

`∩[A161428(n+1), A022433(n)]`
-/

namespace A056955.P3413815898884194319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022433 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056955.P3413815898884194319

/-! ## A056955.P8452895786538906445

`∩[A180486(n+1), A280619(n+1)]`
-/

namespace A056955.P8452895786538906445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056955.P8452895786538906445

/-! ## A056955.P12702647029783406372

`record[A010685(n)+A000010(3*n+5)]`
-/

namespace A056955.P12702647029783406372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n + A000010 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056955.P12702647029783406372

/-! ## A056955.P13796118554665637774

`record[A006519(n+3)+A000010(3*n+5)]`
-/

namespace A056955.P13796118554665637774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 3) + A000010 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056955.P13796118554665637774

/-! ## A056955.P17019461007568369386

`∩[A055048(n+1), A161428(n+1)]`
-/

namespace A056955.P17019461007568369386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056955.P17019461007568369386

/-! ## A056955.P11862586080937766359

`∩[A055048(n+1), A161839(n+1)]`
-/

namespace A056955.P11862586080937766359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056955.P11862586080937766359

/-! ## A056955.P7633298823028918275

`∩[A174438(n+1), A161428(n+1)]`
-/

namespace A056955.P7633298823028918275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056955.P7633298823028918275

/-!
# A056956: Numbers n such that 6n+1 and 6n+5 are both primes.

The programs for A056956, there is no canonical definition to state claims against.
-/

/-! ## A056956.P6201169100086400605

`A047847(n+2)/3`
-/

namespace A056956.P6201169100086400605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047847 (n + 2) : ℚ) / 3

end

end A056956.P6201169100086400605

/-! ## A056956.P8038770405266928451

`floor(A087679(n+2)/6)`
-/

namespace A056956.P8038770405266928451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A087679 (n + 2) : ℚ) / 6⌋

end

end A056956.P8038770405266928451

/-! ## A056956.P11108682886210206966

`(A046132(n+2)-5)/6`
-/

namespace A056956.P11108682886210206966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046132 (n + 2) - 5 : ℚ) / 6

end

end A056956.P11108682886210206966

/-! ## A056956.P16439296798434511636

`A186243(n+1)-1`
-/

namespace A056956.P16439296798434511636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186243 (n + 1) - 1

end

end A056956.P16439296798434511636

/-! ## A056956.P14908279285311843941

`floor(A157834(n+1)/2)`
-/

namespace A056956.P14908279285311843941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A157834 (n + 1) : ℚ) / 2⌋

end

end A056956.P14908279285311843941

/-! ## A056956.P15707893396632118539

`floor(A111981(n+1)/3)`
-/

namespace A056956.P15707893396632118539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A111981 (n + 1) : ℚ) / 3⌋

end

end A056956.P15707893396632118539

/-! ## A056956.P18365370569587221620

`floor(A029710(n+1)/6)`
-/

namespace A056956.P18365370569587221620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A029710 (n + 1) : ℚ) / 6⌋

end

end A056956.P18365370569587221620

/-! ## A056956.P3874281085440423

`(A029708(n+1)/3-1)/2`
-/

namespace A056956.P3874281085440423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A029708 (n + 1) : ℚ) / 3 - 1) / 2

end

end A056956.P3874281085440423

/-! ## A056956.P876751916429177631

`A111981(n+1)-A157834(n+1)`
-/

namespace A056956.P876751916429177631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111981 (n + 1) - A157834 (n + 1)

end

end A056956.P876751916429177631

/-! ## A056956.P8269864222870708053

`A031505(n+1)%A186243(n+1)`
-/

namespace A056956.P8269864222870708053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031505 (n + 1)) (A186243 (n + 1))

end

end A056956.P8269864222870708053

/-! ## A056956.P14429105180475003011

`A157834(n+1)%A186243(n+1)`
-/

namespace A056956.P14429105180475003011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157834 (n + 1)) (A186243 (n + 1))

end

end A056956.P14429105180475003011

/-! ## A056956.P8214121117692166375

`floor(A165986(n+2)/12)`
-/

namespace A056956.P8214121117692166375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A165986 (n + 2) : ℚ) / 12⌋

end

end A056956.P8214121117692166375

/-! ## A056956.P15406794562038602757

`(A088762(n+2)-1)/3`
-/

namespace A056956.P15406794562038602757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088762 (n + 2) - 1 : ℚ) / 3

end

end A056956.P15406794562038602757

/-! ## A056956.P7681303158179818605

`A088762(n+2)-A157834(n+1)`
-/

namespace A056956.P7681303158179818605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088762 (n + 2) - A157834 (n + 1)

end

end A056956.P7681303158179818605

/-! ## A056956.P13289295711685968669

`A046132(n+2)%A186243(n+1)`
-/

namespace A056956.P13289295711685968669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046132 (n + 2)) (A186243 (n + 1))

end

end A056956.P13289295711685968669

/-! ## A056956.P7888645434370585239

`∩[A024899(n+1), A059325(n+1)]`
-/

namespace A056956.P7888645434370585239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056956.P7888645434370585239

/-! ## A056956.P14917006064094217908

`∩[A059325(n+1), A153218(n+1)+1]`
-/

namespace A056956.P14917006064094217908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056956.P14917006064094217908

/-! ## A056956.P1521551789796769805

`∩[A024898(n+1)-1, A024899(n+1)]`
-/

namespace A056956.P1521551789796769805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056956.P1521551789796769805

/-! ## A056956.P2809717401368323404

`A116579(A029709(n+1))`
-/

namespace A056956.P2809717401368323404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116579 (A029709 (n + 1)).toNat

end

end A056956.P2809717401368323404

/-! ## A056956.P1194631492537814227

`A000010(A015913(n+2))/6`
-/

namespace A056956.P1194631492537814227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A015913 (n + 2)).toNat : ℚ) / 6

end

end A056956.P1194631492537814227

/-!
# A056957: In repeated iterations of function m->m/2 if m even, m->3m-1 if m odd, a(n) is minimum value achieved if starting from n.

The programs for A056957, there is no canonical definition to state claims against.
-/

/-! ## A056957.P13175545301398372756

`abs(or(1, -A224254(A000265(n+1))))`
-/

namespace A056957.P13175545301398372756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (-A224254 (A000265 (n + 1)).toNat)|

end

end A056957.P13175545301398372756

/-! ## A056957.P9509971005451633510

`A087232(A224254(A000265(n+1)))`
-/

namespace A056957.P9509971005451633510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087232 (A224254 (A000265 (n + 1)).toNat).toNat

end

end A056957.P9509971005451633510

/-! ## A056957.P5979952457312300671

`or(1, A224254(n+1)-1)`
-/

namespace A056957.P5979952457312300671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A224254 (n + 1) - 1)

end

end A056957.P5979952457312300671

/-! ## A056957.P7523381276971871639

`A055179(A224254(n+1))`
-/

namespace A056957.P7523381276971871639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055179 (A224254 (n + 1)).toNat

end

end A056957.P7523381276971871639

/-! ## A056957.P538433131543823469

`A030311(A224254(n+1)-1)`
-/

namespace A056957.P538433131543823469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030311 (A224254 (n + 1) - 1).toNat

end

end A056957.P538433131543823469

/-! ## A056957.P15511776037746838451

`A058189(A224254(n+1)-1)`
-/

namespace A056957.P15511776037746838451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058189 (A224254 (n + 1) - 1).toNat

end

end A056957.P15511776037746838451

/-! ## A056957.P13034294642472864957

`A018783(A224254(n+1)+3)`
-/

namespace A056957.P13034294642472864957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (A224254 (n + 1) + 3).toNat

end

end A056957.P13034294642472864957

/-! ## A056957.P2664162015700293878

`A006530(C(A224254(n+1), 2))`
-/

namespace A056957.P2664162015700293878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.choose (A224254 (n + 1)).toNat 2)

end

end A056957.P2664162015700293878

/-!
# A056959: In repeated iterations of function m -> m/2 if m even, m -> 3m+1 if m odd, a(n) is maximum value achieved if starting from n.

The programs for A056959, there is no canonical definition to state claims against.
-/

/-! ## A056959.P11446973680441171787

`4*A347264(n+1)`
-/

namespace A056959.P11446973680441171787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A347264 (n + 1)

end

end A056959.P11446973680441171787

/-! ## A056959.P5599674186887132917

`lcm(4, A025586(n+1))`
-/

namespace A056959.P5599674186887132917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A025586 (n + 1))

end

end A056959.P5599674186887132917

/-! ## A056959.P1001207565234617099

`A005505(C(2, n+1))*A025586(n+1)`
-/

namespace A056959.P1001207565234617099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005505 (Nat.choose 2 (n + 1)) * A025586 (n + 1)

end

end A056959.P1001207565234617099

/-! ## A056959.P15797298624048357256

`A025586(A066560(n+1))`
-/

namespace A056959.P15797298624048357256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (A066560 (n + 1)).toNat

end

end A056959.P15797298624048357256

/-! ## A056959.P17095297731241476560

`lcm(A014710(n)², A270570(2*(n+1)))`
-/

namespace A056959.P17095297731241476560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014710 n ^ 2) (A270570 (2 * (n + 1)))

end

end A056959.P17095297731241476560

/-! ## A056959.P12326436588864399439

`gcd(A008683(a(n-1)), A025586(n+1))` with `a(0)=4, a(1)=4`
-/

namespace A056959.P12326436588864399439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 4] fun n a =>
  Int.gcd (A008683 (a (n - 1))) (A025586 (n + 1))

end

end A056959.P12326436588864399439

/-! ## A056959.P7102375954754086174

`A008574(A347264(n+1))`
-/

namespace A056959.P7102375954754086174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A347264 (n + 1)).toNat

end

end A056959.P7102375954754086174

/-! ## A056959.P14210323405584103098

`A109045(A025586(n+1))`
-/

namespace A056959.P14210323405584103098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109045 (A025586 (n + 1)).toNat

end

end A056959.P14210323405584103098

/-!
# A056960: Base 11 reversal of n (written in base 10).

The programs for A056960, there is no canonical definition to state claims against.
-/

/-! ## A056960.P7295047988338213951

`n-A055961(n)`
-/

namespace A056960.P7295047988338213951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055961 n

end

end A056960.P7295047988338213951

/-! ## A056960.P9280097517497552980

`A055960(n)-n`
-/

namespace A056960.P9280097517497552980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055960 n - (n : ℤ)

end

end A056960.P9280097517497552980

/-! ## A056960.P17025511763663378460

`-(A055961(n)+A001489(n))`
-/

namespace A056960.P17025511763663378460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A055961 n + A001489 n)

end

end A056960.P17025511763663378460

/-! ## A056960.P9514738203730273751

`A055961(n)*A057428(n)+n`
-/

namespace A056960.P9514738203730273751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055961 n * A057428 n + (n : ℤ)

end

end A056960.P9514738203730273751

/-! ## A056960.P5889944057194410416

`A055961(n)*A260196(n)+n`
-/

namespace A056960.P5889944057194410416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055961 n * A260196 n + (n : ℤ)

end

end A056960.P5889944057194410416

/-! ## A056960.P4926304159232450342

`-(A055961(n)+A001057(2*n))`
-/

namespace A056960.P4926304159232450342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A055961 n + A001057 (2 * n))

end

end A056960.P4926304159232450342

/-! ## A056960.P3476079801555933141

`A055961(n)*A307428(A000040(n+1))+n`
-/

namespace A056960.P3476079801555933141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055961 n * A307428 (A000040 (n + 1)).toNat + (n : ℤ)

end

end A056960.P3476079801555933141

/-! ## A056960.P10301264919059994714

`abs(A114327(A000096(n))+A055961(n))`
-/

namespace A056960.P10301264919059994714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A114327 (A000096 n).toNat + A055961 n|

end

end A056960.P10301264919059994714

/-!
# A056961: Base 12 reversal of n (written in base 10).

The programs for A056961, there is no canonical definition to state claims against.
-/

/-! ## A056961.P5776082167011790538

`n-A055963(n)`
-/

namespace A056961.P5776082167011790538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055963 n

end

end A056961.P5776082167011790538

/-! ## A056961.P2591508220957867695

`A055962(n)-n`
-/

namespace A056961.P2591508220957867695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055962 n - (n : ℤ)

end

end A056961.P2591508220957867695

/-! ## A056961.P15520616729381521691

`abs(A055962(n)+A001489(n))`
-/

namespace A056961.P15520616729381521691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055962 n + A001489 n|

end

end A056961.P15520616729381521691

/-! ## A056961.P1743317964617065247

`abs(A055963(n)+A001489(n))`
-/

namespace A056961.P1743317964617065247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055963 n + A001489 n|

end

end A056961.P1743317964617065247

/-! ## A056961.P1042724003966801197

`A055963(n)*A057428(n)+n`
-/

namespace A056961.P1042724003966801197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055963 n * A057428 n + (n : ℤ)

end

end A056961.P1042724003966801197

/-! ## A056961.P95922246731246755

`A055963(n)*A260196(n)+n`
-/

namespace A056961.P95922246731246755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055963 n * A260196 n + (n : ℤ)

end

end A056961.P95922246731246755

/-! ## A056961.P17048246672818547986

`∑{d}[A055963(n)+A001489(n), A000010(#)]`
-/

namespace A056961.P17048246672818547986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055963 n + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A056961.P17048246672818547986

/-! ## A056961.P1028574581664425620

`-((A055963(n)+A001489(n))%A000097(n))`
-/

namespace A056961.P1028574581664425620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A055963 n + A001489 n) (A000097 n)

end

end A056961.P1028574581664425620

/-! ## A056961.P8036598483903445631

`A008683(A000928(n+1))*A055963(n)+n`
-/

namespace A056961.P8036598483903445631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000928 (n + 1)).toNat * A055963 n + (n : ℤ)

end

end A056961.P8036598483903445631

/-! ## A056961.P13533040667320189315

`A121578(n+1)%A048841(n)`
-/

namespace A056961.P13533040667320189315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121578 (n + 1)) (A048841 n)

end

end A056961.P13533040667320189315

/-!
# A056962: Base 16 reversal of n (written in base 10).

The programs for A056962, there is no canonical definition to state claims against.
-/

/-! ## A056962.P10230957587639514836

`n-A055965(n)`
-/

namespace A056962.P10230957587639514836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055965 n

end

end A056962.P10230957587639514836

/-! ## A056962.P799985916871123202

`A055964(n)-n`
-/

namespace A056962.P799985916871123202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055964 n - (n : ℤ)

end

end A056962.P799985916871123202

/-! ## A056962.P11874589942494864870

`abs(A055964(n)+A001489(n))`
-/

namespace A056962.P11874589942494864870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055964 n + A001489 n|

end

end A056962.P11874589942494864870

/-! ## A056962.P11176523622649932120

`abs(A055965(n)+A001489(n))`
-/

namespace A056962.P11176523622649932120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055965 n + A001489 n|

end

end A056962.P11176523622649932120

/-! ## A056962.P5880682432832626145

`A055965(n)*A057428(n)+n`
-/

namespace A056962.P5880682432832626145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055965 n * A057428 n + (n : ℤ)

end

end A056962.P5880682432832626145

/-! ## A056962.P16547252276714853342

`abs(A055965(n)+A001057(2*n))`
-/

namespace A056962.P16547252276714853342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055965 n + A001057 (2 * n)|

end

end A056962.P16547252276714853342

/-! ## A056962.P13454908676990573199

`∑{d}[A055965(n)+A001057(2*n), A000010(#)]`
-/

namespace A056962.P13454908676990573199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055965 n + A001057 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A056962.P13454908676990573199

/-! ## A056962.P1459628956272541934

`A217558(A217558(n)+A055965(n))`
-/

namespace A056962.P1459628956272541934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217558 (A217558 n + A055965 n).toNat

end

end A056962.P1459628956272541934

/-! ## A056962.P1063890762068840776

`A217558(n)%A008587(A008486(n))`
-/

namespace A056962.P1063890762068840776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217558 n) (A008587 (A008486 n).toNat)

end

end A056962.P1063890762068840776

/-! ## A056962.P6748696352897000137

`A196199(n²)+A055964(n)`
-/

namespace A056962.P6748696352897000137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (n ^ 2) + A055964 n

end

end A056962.P6748696352897000137

/-!
# A056963: Base 20 reversal of n (written in base 10).

The programs for A056963, there is no canonical definition to state claims against.
-/

/-! ## A056963.P14062452905604447205

`n-A055967(n)`
-/

namespace A056963.P14062452905604447205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055967 n

end

end A056963.P14062452905604447205

/-! ## A056963.P4838275004925425353

`A055966(n)-n`
-/

namespace A056963.P4838275004925425353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055966 n - (n : ℤ)

end

end A056963.P4838275004925425353

/-! ## A056963.P16373927614149247666

`abs(A055966(n)+A001489(n))`
-/

namespace A056963.P16373927614149247666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055966 n + A001489 n|

end

end A056963.P16373927614149247666

/-! ## A056963.P950996343600077860

`abs(A055967(n)+A001489(n))`
-/

namespace A056963.P950996343600077860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055967 n + A001489 n|

end

end A056963.P950996343600077860

/-! ## A056963.P1278686250371490803

`A055967(n)*A057428(n)+n`
-/

namespace A056963.P1278686250371490803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055967 n * A057428 n + (n : ℤ)

end

end A056963.P1278686250371490803

/-! ## A056963.P9362604038436655842

`A055967(n)*A153881(n+1)+n`
-/

namespace A056963.P9362604038436655842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055967 n * A153881 (n + 1) + (n : ℤ)

end

end A056963.P9362604038436655842

/-! ## A056963.P12322090044920524332

`-A055967(n)%A162527(n+1)+n`
-/

namespace A056963.P12322090044920524332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A055967 n) (A162527 (n + 1)) + (n : ℤ)

end

end A056963.P12322090044920524332

/-! ## A056963.P17927213408212523629

`∑{d}[A055967(n)+A001489(n), A000010(#)]`
-/

namespace A056963.P17927213408212523629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055967 n + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A056963.P17927213408212523629

/-! ## A056963.P15052745285728771900

`abs(A055967(n)+A001057(2*n))`
-/

namespace A056963.P15052745285728771900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055967 n + A001057 (2 * n)|

end

end A056963.P15052745285728771900

/-!
# A056964: a(n) = n + reversal of digits of n.

The programs for A056964, there is no canonical definition to state claims against.
-/

/-! ## A056964.P2915060979213715270

`n+A004086(n)`
-/

namespace A056964.P2915060979213715270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A004086 n

end

end A056964.P2915060979213715270

/-! ## A056964.P4839111329417208518

`2*n-A056965(n)`
-/

namespace A056964.P4839111329417208518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A056965 n

end

end A056964.P4839111329417208518

/-! ## A056964.P674045840712195676

`A160927(n+1)-1`
-/

namespace A056964.P674045840712195676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160927 (n + 1) - 1

end

end A056964.P674045840712195676

/-! ## A056964.P8528007502664157435

`xor(n, A256756(n))+n`
-/

namespace A056964.P8528007502664157435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A256756 n) + (n : ℤ)

end

end A056964.P8528007502664157435

/-! ## A056964.P15027520464257478339

`Δ[n²]-A160928(n+1)`
-/

namespace A056964.P15027520464257478339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A160928 (n + 1)

end

end A056964.P15027520464257478339

/-! ## A056964.P7703954172999829257

`A160929(n+1)/(n+1)+n`
-/

namespace A056964.P7703954172999829257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160929 (n + 1) : ℚ) / (n + 1 : ℚ) + (n : ℚ)

end

end A056964.P7703954172999829257

/-! ## A056964.P14636146354979491900

`n-A056965(ceil(abs(γ-n)))+n`
-/

namespace A056964.P14636146354979491900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A056965 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat + (n : ℤ)

end

end A056964.P14636146354979491900

/-! ## A056964.P10757548287521284364

`A340479(n)+A066568(n)`
-/

namespace A056964.P10757548287521284364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340479 n + A066568 n

end

end A056964.P10757548287521284364

/-! ## A056964.P3014017776971693038

`A256755(n)+A256754(n)`
-/

namespace A056964.P3014017776971693038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256755 n + A256754 n

end

end A056964.P3014017776971693038

/-! ## A056964.P7530323635665792148

`A004086(n)-A001489(n)`
-/

namespace A056964.P7530323635665792148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n - A001489 n

end

end A056964.P7530323635665792148

/-! ## A056964.P16628344682418798468

`A005408(n)-(A056965(n)+1)`
-/

namespace A056964.P16628344682418798468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (A056965 n + 1)

end

end A056964.P16628344682418798468

/-! ## A056964.P8153529367742929642

`1-(A024000(n)-A004086(n))`
-/

namespace A056964.P8153529367742929642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A024000 n - A004086 n)

end

end A056964.P8153529367742929642

/-! ## A056964.P6821551581912430993

`A256756(n)+2*A256754(n)`
-/

namespace A056964.P6821551581912430993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 n + 2 * A256754 n

end

end A056964.P6821551581912430993

/-! ## A056964.P11492701860770457065

`2*A256755(n)-A256756(n)`
-/

namespace A056964.P11492701860770457065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256755 n - A256756 n

end

end A056964.P11492701860770457065

/-! ## A056964.P17410710996473098417

`2*A265558(n)-A338827(n)`
-/

namespace A056964.P17410710996473098417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A265558 n - A338827 n

end

end A056964.P17410710996473098417

/-! ## A056964.P1860932505567814334

`A340479(n)+n-A007953(n)`
-/

namespace A056964.P1860932505567814334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340479 n + ((n : ℤ) - A007953 n)

end

end A056964.P1860932505567814334

/-! ## A056964.P18339554079853324686

`A004086(n)-(n-A005843(n))`
-/

namespace A056964.P18339554079853324686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n - ((n : ℤ) - A005843 n)

end

end A056964.P18339554079853324686

/-! ## A056964.P12527893737181195959

`A061205(n)/A028310(n)+n`
-/

namespace A056964.P12527893737181195959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061205 n : ℚ) / (A028310 n : ℚ) + (n : ℚ)

end

end A056964.P12527893737181195959

/-! ## A056964.P18293467707314605712

`abs(A146076(or(1, n))-n-A004086(n))`
-/

namespace A056964.P18293467707314605712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A146076 (Nat.lor 1 n) - (n : ℤ) - A004086 n|

end

end A056964.P18293467707314605712

/-! ## A056964.P13373182366619218701

`A000027(1-A056965(n)+n)+n-1`
-/

namespace A056964.P13373182366619218701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (1 - A056965 n + (n : ℤ)).toNat + (n : ℤ) - 1

end

end A056964.P13373182366619218701

/-!
# A056965: a(n) = n - (reversal of digits of n).

The programs for A056965, there is no canonical definition to state claims against.
-/

/-! ## A056965.P15218194202540201583

`n-A004086(n)`
-/

namespace A056965.P15218194202540201583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004086 n

end

end A056965.P15218194202540201583

/-! ## A056965.P6169040250886050908

`2*n-A056964(n)`
-/

namespace A056965.P6169040250886050908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A056964 n

end

end A056965.P6169040250886050908

/-! ## A056965.P15048283164365466176

`A160928(n+1)-1`
-/

namespace A056965.P15048283164365466176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160928 (n + 1) - 1

end

end A056965.P15048283164365466176

/-! ## A056965.P10284944996876075706

`n-xor(n, A256756(n))`
-/

namespace A056965.P10284944996876075706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.xor (n : ℤ) (A256756 n)

end

end A056965.P10284944996876075706

/-! ## A056965.P13003029705321690149

`Δ[n²]-A160927(n+1)`
-/

namespace A056965.P13003029705321690149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A160927 (n + 1)

end

end A056965.P13003029705321690149

/-! ## A056965.P1018032093855820256

`n-A160929(n+1)/(n+1)`
-/

namespace A056965.P1018032093855820256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A160929 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A056965.P1018032093855820256

/-! ## A056965.P601330677117013910

`n-A056964(n%(n+1))+n`
-/

namespace A056965.P601330677117013910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A056964 (n % (n + 1)) + (n : ℤ)

end

end A056965.P601330677117013910

/-! ## A056965.P17342775929979026645

`A267193(n)-A061601(n)`
-/

namespace A056965.P17342775929979026645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267193 n - A061601 n

end

end A056965.P17342775929979026645

/-! ## A056965.P9908006893125184845

`A062028(n)-A340479(n)`
-/

namespace A056965.P9908006893125184845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n - A340479 n

end

end A056965.P9908006893125184845

/-! ## A056965.P13680182211967356313

`A007953(n)+n-A340479(n)`
-/

namespace A056965.P13680182211967356313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + ((n : ℤ) - A340479 n)

end

end A056965.P13680182211967356313

/-! ## A056965.P211120206082411070

`n-A061205(n)/A028310(n)`
-/

namespace A056965.P211120206082411070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A061205 n : ℚ) / (A028310 n : ℚ)

end

end A056965.P211120206082411070

/-! ## A056965.P7796781731842134494

`n-A160936(n+1)/A160926(n+1)`
-/

namespace A056965.P7796781731842134494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A160936 (n + 1) : ℚ) / (A160926 (n + 1) : ℚ)

end

end A056965.P7796781731842134494

/-! ## A056965.P14078294683701255705

`A055950(n)+A055951(n)-A056964(n)`
-/

namespace A056965.P14078294683701255705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055950 n + (A055951 n - A056964 n)

end

end A056965.P14078294683701255705

/-! ## A056965.P15853412082643161393

`A349239(n)+A349240(n)-A056964(n)`
-/

namespace A056965.P15853412082643161393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349239 n + (A349240 n - A056964 n)

end

end A056965.P15853412082643161393

/-! ## A056965.P9784461949093726607

`A066568(n)-A066568(A056964(n)-n)`
-/

namespace A056965.P9784461949093726607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 n - A066568 (A056964 n - (n : ℤ)).toNat

end

end A056965.P9784461949093726607

/-! ## A056965.P17451803494738861454

`A338829(A338829(n))-(A056964(n)-n)`
-/

namespace A056965.P17451803494738861454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338829 (A338829 n).toNat - (A056964 n - (n : ℤ))

end

end A056965.P17451803494738861454

/-! ## A056965.P3885747931232384205

`A024000(A004086(n)+1)+n`
-/

namespace A056965.P3885747931232384205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A004086 n + 1).toNat + (n : ℤ)

end

end A056965.P3885747931232384205

/-! ## A056965.P1958100216937243422

`n-A004093(5*n)`
-/

namespace A056965.P1958100216937243422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004093 (5 * n)

end

end A056965.P1958100216937243422

/-! ## A056965.P5885228851011443067

`A001057(2*A004086(n))+n`
-/

namespace A056965.P5885228851011443067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * A004086 n).toNat + (n : ℤ)

end

end A056965.P5885228851011443067

/-! ## A056965.P10199628495646973625

`n-A103168(A008706(2*n))`
-/

namespace A056965.P10199628495646973625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A103168 (A008706 (2 * n)).toNat

end

end A056965.P10199628495646973625

/-!
# A056966: In binary: write what is described (putting a leading zero on numbers which have an odd number of binary digits).

The programs for A056966, there is no canonical definition to state claims against.
-/

/-! ## A056966.P13248789679224266508

`A002828(A292373(n)^A010163(n))`
-/

namespace A056966.P13248789679224266508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (SequenceMachineLib.roundAway ((A292373 n : ℚ) ^ (A010163 n : ℤ))).toNat

end

end A056966.P13248789679224266508

/-! ## A056966.P1588990761460626373

`A292373(n)^A225407(A325678(3*n+2))`
-/

namespace A056966.P1588990761460626373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292373 n : ℚ) ^ (A225407 (A325678 (3 * n + 2)).toNat : ℤ)

end

end A056966.P1588990761460626373

/-! ## A056966.P13547216971712915007

`A292373(n)/A001285(A052955(n))`
-/

namespace A056966.P13547216971712915007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292373 n : ℚ) / (A001285 (A052955 n).toNat : ℚ)

end

end A056966.P13547216971712915007

/-! ## A056966.P9501774235883180656

`A292373(n)^A249351(A000040(n+1))`
-/

namespace A056966.P9501774235883180656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292373 n : ℚ) ^ (A249351 (A000040 (n + 1)).toNat : ℤ)

end

end A056966.P9501774235883180656

/-! ## A056966.P11933643955444272825

`A292373(n)/A043290(A115653(2*n+5))`
-/

namespace A056966.P11933643955444272825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292373 n : ℚ) / (A043290 (A115653 (2 * n + 5)).toNat : ℚ)

end

end A056966.P11933643955444272825

/-!
# A056967: Write what is described (putting a leading zero on numbers which have an odd number of digits).

The programs for A056967, there is no canonical definition to state claims against.
-/

/-! ## A056967.P13763823285365314334

`A079475(n%A143573(n))`
-/

namespace A056967.P13763823285365314334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079475 (Int.tmod (n : ℤ) (A143573 n)).toNat

end

end A056967.P13763823285365314334

/-! ## A056967.P12691804654073921012

`A079475(n)%A322283(n)`
-/

namespace A056967.P12691804654073921012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079475 n) (A322283 n)

end

end A056967.P12691804654073921012

/-! ## A056967.P11795567866430474594

`A079475(∑{digits}[n, #]%(n-∏{digits}[n, #])!+n-∑{digits}[n, #])`
-/

namespace A056967.P11795567866430474594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079475 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum % Nat.factorial ((n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ)).toNat + n - ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum)

end

end A056967.P11795567866430474594

/-!
# A056968: 10^(n-1) modulo n.

The programs for A056968, the canonical program `A056968.P16808487561389902358` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056968 has offset 1).

The definition of A056968 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056968.P16808487561389902358

`A062172(eq[11, A131818(n+1)])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A056968

/-- `A062172(eq[11, A131818(n+1)])` -/
def P16808487561389902358.Spec : Prop :=
  ∀ n, P16808487561389902358.a n = A056968 (n + 1)

theorem P16808487561389902358.correct : P16808487561389902358.Spec := by
  intro n
  simp only [A056968, Nat.add_sub_cancel]

end A056968

/-! ## A056968.P17454873420762994771

`A062172(A060576(n)+A000096(n+8)+10)`
-/

namespace A056968.P17454873420762994771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062172 (A060576 n + (A000096 (n + 8) + 10)).toNat

end

end A056968.P17454873420762994771

namespace A056968

/-- `A062172(A060576(n)+A000096(n+8)+10)` -/
def P17454873420762994771.Spec : Prop :=
  ∀ n, P17454873420762994771.a n = A056968 (n + 1)

end A056968

/-! ## A056968.P1783668376217507419

`(10^n)%(n+1)`
-/

namespace A056968.P1783668376217507419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n % (n + 1)

end

end A056968.P1783668376217507419

namespace A056968

/-- `(10^n)%(n+1)` -/
def P1783668376217507419.Spec : Prop :=
  ∀ n, (P1783668376217507419.a n : ℤ) = A056968 (n + 1)

end A056968

/-! ## A056968.P3095556109555386179

`abs(∏[-a(n-1)]%(n+1))` with `a(0)=1, a(1)=10`
-/

namespace A056968.P3095556109555386179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)|

end

end A056968.P3095556109555386179

namespace A056968

/-- `abs(∏[-a(n-1)]%(n+1))` -/
def P3095556109555386179.Spec : Prop :=
  ∀ n, P3095556109555386179.a n = A056968 (n + 1)

end A056968

/-! ## A056968.P13312406691800113502

`abs(A011557(n)%-(n+1))`
-/

namespace A056968.P13312406691800113502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A011557 n) (-(n + 1 : ℤ))|

end

end A056968.P13312406691800113502

namespace A056968

/-- `abs(A011557(n)%-(n+1))` -/
def P13312406691800113502.Spec : Prop :=
  ∀ n, P13312406691800113502.a n = A056968 (n + 1)

end A056968

/-! ## A056968.P5321127608697797530

`abs(Δ[A002275(n)]%(n+1))`
-/

namespace A056968.P5321127608697797530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)|

end

end A056968.P5321127608697797530

namespace A056968

/-- `abs(Δ[A002275(n)]%(n+1))` -/
def P5321127608697797530.Spec : Prop :=
  ∀ n, P5321127608697797530.a n = A056968 (n + 1)

end A056968

/-! ## A056968.P16991199765650599258

`abs((A000042(n+1)-A002275(n))%(n+1))`
-/

namespace A056968.P16991199765650599258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A000042 (n + 1) - A002275 n) (n + 1 : ℤ)|

end

end A056968.P16991199765650599258

namespace A056968

/-- `abs((A000042(n+1)-A002275(n))%(n+1))` -/
def P16991199765650599258.Spec : Prop :=
  ∀ n, P16991199765650599258.a n = A056968 (n + 1)

end A056968

/-! ## A056968.P12939128469165403317

`A004526(A199682(n)%A103517(n))`
-/

namespace A056968.P12939128469165403317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.tmod (A199682 n) (A103517 n)).toNat

end

end A056968.P12939128469165403317

namespace A056968

/-- `A004526(A199682(n)%A103517(n))` -/
def P12939128469165403317.Spec : Prop :=
  ∀ n, P12939128469165403317.a n = A056968 (n + 1)

end A056968

/-! ## A056968.P13626531419657696571

`A023443(A000533(n)%A233583(n+2))`
-/

namespace A056968.P13626531419657696571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (Int.tmod (A000533 n) (A233583 (n + 2))).toNat

end

end A056968.P13626531419657696571

namespace A056968

/-- `A023443(A000533(n)%A233583(n+2))` -/
def P13626531419657696571.Spec : Prop :=
  ∀ n, P13626531419657696571.a n = A056968 (n + 1)

end A056968

/-!
# A056969: a(n) = 10^n modulo n.

The programs for A056969, the canonical program `A056969.P15588602888756750233` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056969 has offset 1).

The definition of A056969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056969.P15588602888756750233

`A066432(n+1)%(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A056969

/-- `A066432(n+1)%(n+1)` -/
def P15588602888756750233.Spec : Prop :=
  ∀ n, P15588602888756750233.a n = A056969 (n + 1)

theorem P15588602888756750233.correct : P15588602888756750233.Spec := by
  intro n
  simp only [A056969, Nat.add_sub_cancel]

end A056969

/-! ## A056969.P15428942424857782703

`(A015910(n+1)*A066603(n+1))%(n+1)`
-/

namespace A056969.P15428942424857782703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015910 (n + 1) * A066603 (n + 1)) (n + 1 : ℤ)

end

end A056969.P15428942424857782703

namespace A056969

/-- `(A015910(n+1)*A066603(n+1))%(n+1)` -/
def P15428942424857782703.Spec : Prop :=
  ∀ n, P15428942424857782703.a n = A056969 (n + 1)

end A056969

/-! ## A056969.P9927532364583516997

`(A015910(n+1)*A083528(n+1))%(n+1)`
-/

namespace A056969.P9927532364583516997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015910 (n + 1) * A083528 (n + 1)) (n + 1 : ℤ)

end

end A056969.P9927532364583516997

namespace A056969

/-- `(A015910(n+1)*A083528(n+1))%(n+1)` -/
def P9927532364583516997.Spec : Prop :=
  ∀ n, P9927532364583516997.a n = A056969 (n + 1)

end A056969

/-! ## A056969.P10498224371025121554

`(A015910(n+1)*A083529(n+1))%(n+1)`
-/

namespace A056969.P10498224371025121554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015910 (n + 1) * A083529 (n + 1)) (n + 1 : ℤ)

end

end A056969.P10498224371025121554

namespace A056969

/-- `(A015910(n+1)*A083529(n+1))%(n+1)` -/
def P10498224371025121554.Spec : Prop :=
  ∀ n, P10498224371025121554.a n = A056969 (n + 1)

end A056969

/-! ## A056969.P18352056373765250584

`(A066606(n+1)*A066609(n+1))%(n+1)`
-/

namespace A056969.P18352056373765250584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066606 (n + 1) * A066609 (n + 1)) (n + 1 : ℤ)

end

end A056969.P18352056373765250584

namespace A056969

/-- `(A066606(n+1)*A066609(n+1))%(n+1)` -/
def P18352056373765250584.Spec : Prop :=
  ∀ n, P18352056373765250584.a n = A056969 (n + 1)

end A056969

/-! ## A056969.P17146442693833918259

`(10^((n+1)/A014963(n+1)))%(n+1)`
-/

namespace A056969.P17146442693833918259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((10 : ℝ) ^ ((n + 1 : ℚ) / (A014963 (n + 1) : ℚ) : ℝ))) (n + 1 : ℤ)

end

end A056969.P17146442693833918259

namespace A056969

/-- `(10^((n+1)/A014963(n+1)))%(n+1)` -/
def P17146442693833918259.Spec : Prop :=
  ∀ n, P17146442693833918259.a n = A056969 (n + 1)

end A056969

/-! ## A056969.P16274711704644220261

`(10^(n+1))%(n+1)`
-/

namespace A056969.P16274711704644220261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ (n + 1) % (n + 1)

end

end A056969.P16274711704644220261

namespace A056969

/-- `(10^(n+1))%(n+1)` -/
def P16274711704644220261.Spec : Prop :=
  ∀ n, (P16274711704644220261.a n : ℤ) = A056969 (n + 1)

end A056969

/-! ## A056969.P5269885029102137976

`abs(∏[-a(n-1)]%(n+1))` with `a(0)=10`
-/

namespace A056969.P5269885029102137976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)|

end

end A056969.P5269885029102137976

namespace A056969

/-- `abs(∏[-a(n-1)]%(n+1))` -/
def P5269885029102137976.Spec : Prop :=
  ∀ n, P5269885029102137976.a n = A056969 (n + 1)

end A056969

/-!
# A056970: Number of partitions of n into distinct parts congruent to 2, 4 or 5 mod 6.

The programs for A056970, there is no canonical definition to state claims against.
-/

/-! ## A056970.P7000567764131205370

`floor(Δ[A340385(2*n+1)]/A035363(2*(n+1)))`
-/

namespace A056970.P7000567764131205370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340385 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / (A035363 (2 * (n + 1)) : ℚ)⌋

end

end A056970.P7000567764131205370

/-! ## A056970.P14635211071793842893

`A178487(A325193(n)²)`
-/

namespace A056970.P14635211071793842893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (A325193 n ^ 2).toNat

end

end A056970.P14635211071793842893

/-! ## A056970.P6019030263626802295

`A178487(A325193(n)^2)`
-/

namespace A056970.P6019030263626802295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (A325193 n ^ 2).toNat

end

end A056970.P6019030263626802295

/-!
# A056971: Number of (binary) heaps on n elements.

The programs for A056971, there is no canonical definition to state claims against.
-/

/-! ## A056971.P5633286869926754107

`A273693(∑[n+3])`
-/

namespace A056971.P5633286869926754107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A056971.P5633286869926754107

/-! ## A056971.P6539946481444816874

`A373451(∑[n]+n)`
-/

namespace A056971.P6539946481444816874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373451 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A056971.P6539946481444816874

/-! ## A056971.P46748076020813651

`A306343(∑[abs(1-n)])`
-/

namespace A056971.P46748076020813651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306343 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A056971.P46748076020813651

/-! ## A056971.P6941354495744423959

`gcd(floor(acot(n)), A306343(∑[n]))`
-/

namespace A056971.P6941354495744423959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A306343 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A056971.P6941354495744423959

/-! ## A056971.P6909146144864256434

`root(A306343(∑[n]), A151933(n)+1)`
-/

namespace A056971.P6909146144864256434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A306343 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ) ^ (1 / (A151933 n + 1 : ℝ))

end

end A056971.P6909146144864256434

/-! ## A056971.P5153155690984231862

`A306343(∑[n])%Δ[A323962(n+6)]`
-/

namespace A056971.P5153155690984231862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323962 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306343 (∑ j ∈ Finset.range (n + 1), f1 j)) (f2 (n + 1) - f2 n)

end

end A056971.P5153155690984231862

/-! ## A056971.P12274785240897516219

`gcd(A000038(n), A306343(A000217(n)))`
-/

namespace A056971.P12274785240897516219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A306343 (A000217 n).toNat)

end

end A056971.P12274785240897516219

/-! ## A056971.P9109310735205699354

`A306343(A000217(n))+A000038(n+1)`
-/

namespace A056971.P9109310735205699354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306343 (A000217 n).toNat + A000038 (n + 1)

end

end A056971.P9109310735205699354

/-! ## A056971.P8866179979825943500

`and(A057428(n+1), A306343(A000217(n)))`
-/

namespace A056971.P8866179979825943500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 (n + 1)) (A306343 (A000217 n).toNat)

end

end A056971.P8866179979825943500

/-! ## A056971.P13753492770196253086

`n!/A132862(n)`
-/

namespace A056971.P13753492770196253086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A132862 n : ℚ)

end

end A056971.P13753492770196253086

/-!
# A056972: Number of (binary) heaps on n levels (i.e., of 2^n - 1 elements).

The programs for A056972, the canonical program `A056972.P5821601743263685170` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056972 has offset 0).

The definition of A056972 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056972.P5821601743263685170

`C(2^n-2, 2^(n-1)-1)*a(n-1)²` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056972

/-- `C(2^n-2, 2^(n-1)-1)*a(n-1)²` -/
def P5821601743263685170.Spec : Prop :=
  ∀ n, (P5821601743263685170.a n : ℤ) = A056972 n

theorem P5821601743263685170.correct : P5821601743263685170.Spec := by
  intro n
  simp only [A056972]

end A056972

/-! ## A056972.P12072800110881504934

`A056971(2^n-1)`
-/

namespace A056972.P12072800110881504934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056971 (2 ^ n - 1)

end

end A056972.P12072800110881504934

namespace A056972

/-- `A056971(2^n-1)` -/
def P12072800110881504934.Spec : Prop :=
  ∀ n, P12072800110881504934.a n = A056972 n

end A056972

/-! ## A056972.P15758056844144209513

`A076615(2^n-1)`
-/

namespace A056972.P15758056844144209513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076615 (2 ^ n - 1)

end

end A056972.P15758056844144209513

namespace A056972

/-- `A076615(2^n-1)` -/
def P15758056844144209513.Spec : Prop :=
  ∀ n, P15758056844144209513.a n = A056972 n

end A056972

/-!
# A056973: Number of blocks of {0,0} in the binary expansion of n.

The programs for A056973, the canonical program `A056973.P10216103084788388741` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056973 has offset 1).

The definition of A056973 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033264, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056973.P10216103084788388741

`A023416(n+1)-A033264(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A056973

/-- `A023416(n+1)-A033264(n+1)` -/
def P10216103084788388741.Spec : Prop :=
  ∀ n, P10216103084788388741.a n = A056973 (n + 1)

theorem P10216103084788388741.correct : P10216103084788388741.Spec := by
  intro n
  simp only [A056973, Nat.add_sub_cancel]

end A056973

/-! ## A056973.P16715809865323867637

`A107782(n+1)`
-/

namespace A056973.P16715809865323867637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107782 (n + 1)

end

end A056973.P16715809865323867637

namespace A056973

/-- `A107782(n+1)` -/
def P16715809865323867637.Spec : Prop :=
  ∀ n, P16715809865323867637.a n = A056973 (n + 1)

end A056973

/-! ## A056973.P2472894412411641272

`A014081(A035327(n+1))`
-/

namespace A056973.P2472894412411641272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A035327 (n + 1)).toNat

end

end A056973.P2472894412411641272

namespace A056973

/-- `A014081(A035327(n+1))` -/
def P2472894412411641272.Spec : Prop :=
  ∀ n, P2472894412411641272.a n = A056973 (n + 1)

end A056973

/-! ## A056973.P15537839998199641309

`A023416(A106151(n+1))`
-/

namespace A056973.P15537839998199641309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A106151 (n + 1)).toNat

end

end A056973.P15537839998199641309

namespace A056973

/-- `A023416(A106151(n+1))` -/
def P15537839998199641309.Spec : Prop :=
  ∀ n, P15537839998199641309.a n = A056973 (n + 1)

end A056973

/-! ## A056973.P13931325138197538897

`A092339(A090077(n+1))`
-/

namespace A056973.P13931325138197538897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092339 (A090077 (n + 1)).toNat

end

end A056973.P13931325138197538897

namespace A056973

/-- `A092339(A090077(n+1))` -/
def P13931325138197538897.Spec : Prop :=
  ∀ n, P13931325138197538897.a n = A056973 (n + 1)

end A056973

/-! ## A056973.P16594703137187626749

`A092339(A161822(n+1))`
-/

namespace A056973.P16594703137187626749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092339 (A161822 (n + 1)).toNat

end

end A056973.P16594703137187626749

namespace A056973

/-- `A092339(A161822(n+1))` -/
def P16594703137187626749.Spec : Prop :=
  ∀ n, P16594703137187626749.a n = A056973 (n + 1)

end A056973

/-! ## A056973.P11115119157067828489

`A092339(A175946(n+1))`
-/

namespace A056973.P11115119157067828489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092339 (A175946 (n + 1)).toNat

end

end A056973.P11115119157067828489

namespace A056973

/-- `A092339(A175946(n+1))` -/
def P11115119157067828489.Spec : Prop :=
  ∀ n, P11115119157067828489.a n = A056973 (n + 1)

end A056973

/-! ## A056973.P12130361298914504449

`A014081(A080079(n+1)-1)`
-/

namespace A056973.P12130361298914504449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A080079 (n + 1) - 1).toNat

end

end A056973.P12130361298914504449

namespace A056973

/-- `A014081(A080079(n+1)-1)` -/
def P12130361298914504449.Spec : Prop :=
  ∀ n, P12130361298914504449.a n = A056973 (n + 1)

end A056973

/-! ## A056973.P1710319415076101255

`A014081(A036044(n+1)/2)`
-/

namespace A056973.P1710319415076101255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (SequenceMachineLib.roundAway ((A036044 (n + 1) : ℚ) / 2)).toNat

end

end A056973.P1710319415076101255

namespace A056973

/-- `A014081(A036044(n+1)/2)` -/
def P1710319415076101255.Spec : Prop :=
  ∀ n, P1710319415076101255.a n = A056973 (n + 1)

end A056973

/-! ## A056973.P15772158860320036504

`A037809(n+1)-A048881(n)`
-/

namespace A056973.P15772158860320036504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037809 (n + 1) - A048881 n

end

end A056973.P15772158860320036504

namespace A056973

/-- `A037809(n+1)-A048881(n)` -/
def P15772158860320036504.Spec : Prop :=
  ∀ n, P15772158860320036504.a n = A056973 (n + 1)

end A056973

/-! ## A056973.P9375929570867474795

`A056978(n+1)+A056974(n+1)`
-/

namespace A056973.P9375929570867474795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056978 (n + 1) + A056974 (n + 1)

end

end A056973.P9375929570867474795

namespace A056973

/-- `A056978(n+1)+A056974(n+1)` -/
def P9375929570867474795.Spec : Prop :=
  ∀ n, P9375929570867474795.a n = A056973 (n + 1)

end A056973

/-! ## A056973.P4869105321663712298

`A023416(n+1)-A087116(n+1)`
-/

namespace A056973.P4869105321663712298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n + 1) - A087116 (n + 1)

end

end A056973.P4869105321663712298

namespace A056973

/-- `A023416(n+1)-A087116(n+1)` -/
def P4869105321663712298.Spec : Prop :=
  ∀ n, P4869105321663712298.a n = A056973 (n + 1)

end A056973

/-! ## A056973.P8420845706662780906

`A080791(n+1)-A087116(n+1)`
-/

namespace A056973.P8420845706662780906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (n + 1) - A087116 (n + 1)

end

end A056973.P8420845706662780906

namespace A056973

/-- `A080791(n+1)-A087116(n+1)` -/
def P8420845706662780906.Spec : Prop :=
  ∀ n, P8420845706662780906.a n = A056973 (n + 1)

end A056973

/-! ## A056973.P335784271108988303

`A014081(n-2*A053645(n+1))`
-/

namespace A056973.P335784271108988303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 ((n : ℤ) - 2 * A053645 (n + 1)).toNat

end

end A056973.P335784271108988303

namespace A056973

/-- `A014081(n-2*A053645(n+1))` -/
def P335784271108988303.Spec : Prop :=
  ∀ n, P335784271108988303.a n = A056973 (n + 1)

end A056973

/-! ## A056973.P14484577120735638804

`A056975(n+1)+A056974(2*(n+1))`
-/

namespace A056973.P14484577120735638804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056975 (n + 1) + A056974 (2 * (n + 1))

end

end A056973.P14484577120735638804

namespace A056973

/-- `A056975(n+1)+A056974(2*(n+1))` -/
def P14484577120735638804.Spec : Prop :=
  ∀ n, P14484577120735638804.a n = A056973 (n + 1)

end A056973

/-! ## A056973.P15544916197995936870

`A033265(2*n+3)-A000120(n+1)`
-/

namespace A056973.P15544916197995936870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033265 (2 * n + 3) - A000120 (n + 1)

end

end A056973.P15544916197995936870

namespace A056973

/-- `A033265(2*n+3)-A000120(n+1)` -/
def P15544916197995936870.Spec : Prop :=
  ∀ n, P15544916197995936870.a n = A056973 (n + 1)

end A056973

/-! ## A056973.P6375069624039812837

`A023416(n+1)-A023416(A090079(n+1))`
-/

namespace A056973.P6375069624039812837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n + 1) - A023416 (A090079 (n + 1)).toNat

end

end A056973.P6375069624039812837

namespace A056973

/-- `A023416(n+1)-A023416(A090079(n+1))` -/
def P6375069624039812837.Spec : Prop :=
  ∀ n, P6375069624039812837.a n = A056973 (n + 1)

end A056973

/-! ## A056973.P5000066674519414583

`A014081(n-A053645(n+1)-A053645(n+1))`
-/

namespace A056973.P5000066674519414583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 ((n : ℤ) - A053645 (n + 1) - A053645 (n + 1)).toNat

end

end A056973.P5000066674519414583

namespace A056973

/-- `A014081(n-A053645(n+1)-A053645(n+1))` -/
def P5000066674519414583.Spec : Prop :=
  ∀ n, P5000066674519414583.a n = A056973 (n + 1)

end A056973

/-! ## A056973.P1750786870688025732

`A033265(n+1)-(A033264(n+1)+A014081(n+1))`
-/

namespace A056973.P1750786870688025732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033265 (n + 1) - (A033264 (n + 1) + A014081 (n + 1))

end

end A056973.P1750786870688025732

namespace A056973

/-- `A033265(n+1)-(A033264(n+1)+A014081(n+1))` -/
def P1750786870688025732.Spec : Prop :=
  ∀ n, P1750786870688025732.a n = A056973 (n + 1)

end A056973

/-! ## A056973.P447083731407488412

`A037809(n+1)-(A037800(n+1)+A014081(n+1))`
-/

namespace A056973.P447083731407488412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037809 (n + 1) - (A037800 (n + 1) + A014081 (n + 1))

end

end A056973.P447083731407488412

namespace A056973

/-- `A037809(n+1)-(A037800(n+1)+A014081(n+1))` -/
def P447083731407488412.Spec : Prop :=
  ∀ n, P447083731407488412.a n = A056973 (n + 1)

end A056973

/-!
# A056974: Number of blocks of {0, 0, 0} in the binary expansion of n.

The programs for A056974, the canonical program `A056974.P14269005406388105579` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056974 has offset 1).

The definition of A056974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056974.P14269005406388105579

`A014082(A035327(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A056974

/-- `A014082(A035327(n+1))` -/
def P14269005406388105579.Spec : Prop :=
  ∀ n, P14269005406388105579.a n = A056974 (n + 1)

theorem P14269005406388105579.correct : P14269005406388105579.Spec := by
  intro n
  simp only [A056974, Nat.add_sub_cancel]

end A056974

/-! ## A056974.P9604263835842283685

`A056973(A106151(n+1))`
-/

namespace A056974.P9604263835842283685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056973 (A106151 (n + 1)).toNat

end

end A056974.P9604263835842283685

namespace A056974

/-- `A056973(A106151(n+1))` -/
def P9604263835842283685.Spec : Prop :=
  ∀ n, P9604263835842283685.a n = A056974 (n + 1)

end A056974

/-! ## A056974.P1515477326669955283

`A014082(A080079(n+1)-1)`
-/

namespace A056974.P1515477326669955283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 (A080079 (n + 1) - 1).toNat

end

end A056974.P1515477326669955283

namespace A056974

/-- `A014082(A080079(n+1)-1)` -/
def P1515477326669955283.Spec : Prop :=
  ∀ n, P1515477326669955283.a n = A056974 (n + 1)

end A056974

/-! ## A056974.P8165113201542459805

`A014082(A036044(n+1)/2)`
-/

namespace A056974.P8165113201542459805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 (SequenceMachineLib.roundAway ((A036044 (n + 1) : ℚ) / 2)).toNat

end

end A056974.P8165113201542459805

namespace A056974

/-- `A014082(A036044(n+1)/2)` -/
def P8165113201542459805.Spec : Prop :=
  ∀ n, P8165113201542459805.a n = A056974 (n + 1)

end A056974

/-! ## A056974.P18420405504123234168

`A056973(n+1)-A056978(n+1)`
-/

namespace A056974.P18420405504123234168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056973 (n + 1) - A056978 (n + 1)

end

end A056974.P18420405504123234168

namespace A056974

/-- `A056973(n+1)-A056978(n+1)` -/
def P18420405504123234168.Spec : Prop :=
  ∀ n, P18420405504123234168.a n = A056974 (n + 1)

end A056974

/-! ## A056974.P5718875782565846373

`A014082(A080079(n+2))`
-/

namespace A056974.P5718875782565846373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 (A080079 (n + 2)).toNat

end

end A056974.P5718875782565846373

namespace A056974

/-- `A014082(A080079(n+2))` -/
def P5718875782565846373.Spec : Prop :=
  ∀ n, P5718875782565846373.a n = A056974 (n + 1)

end A056974

/-! ## A056974.P9814630060847204990

`A014082(A036044(n+1))`
-/

namespace A056974.P9814630060847204990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 (A036044 (n + 1)).toNat

end

end A056974.P9814630060847204990

namespace A056974

/-- `A014082(A036044(n+1))` -/
def P9814630060847204990.Spec : Prop :=
  ∀ n, P9814630060847204990.a n = A056974 (n + 1)

end A056974

/-! ## A056974.P16010929621053515752

`A056973(A269170(n+1))`
-/

namespace A056974.P16010929621053515752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056973 (A269170 (n + 1)).toNat

end

end A056974.P16010929621053515752

namespace A056974

/-- `A056973(A269170(n+1))` -/
def P16010929621053515752.Spec : Prop :=
  ∀ n, P16010929621053515752.a n = A056974 (n + 1)

end A056974

/-! ## A056974.P11995862263670157393

`A023416(A106151(A106151(2*n+3)))`
-/

namespace A056974.P11995862263670157393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A106151 (A106151 (2 * n + 3)).toNat).toNat

end

end A056974.P11995862263670157393

namespace A056974

/-- `A023416(A106151(A106151(2*n+3)))` -/
def P11995862263670157393.Spec : Prop :=
  ∀ n, P11995862263670157393.a n = A056974 (n + 1)

end A056974

/-! ## A056974.P12000343215298797256

`A014082(A010078(n+1)-1)`
-/

namespace A056974.P12000343215298797256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 (A010078 (n + 1) - 1).toNat

end

end A056974.P12000343215298797256

namespace A056974

/-- `A014082(A010078(n+1)-1)` -/
def P12000343215298797256.Spec : Prop :=
  ∀ n, P12000343215298797256.a n = A056974 (n + 1)

end A056974

/-! ## A056974.P5215429470864193662

`A014082(A010078(n+2))`
-/

namespace A056974.P5215429470864193662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 (A010078 (n + 2)).toNat

end

end A056974.P5215429470864193662

namespace A056974

/-- `A014082(A010078(n+2))` -/
def P5215429470864193662.Spec : Prop :=
  ∀ n, P5215429470864193662.a n = A056974 (n + 1)

end A056974

/-! ## A056974.P9613180393421028512

`A014083(A370762(n))`
-/

namespace A056974.P9613180393421028512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014083 (A370762 n).toNat

end

end A056974.P9613180393421028512

namespace A056974

/-- `A014083(A370762(n))` -/
def P9613180393421028512.Spec : Prop :=
  ∀ n, P9613180393421028512.a n = A056974 (n + 1)

end A056974

/-! ## A056974.P9887779927117326723

`A014082(A335587(n+1))`
-/

namespace A056974.P9887779927117326723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 (A335587 (n + 1)).toNat

end

end A056974.P9887779927117326723

namespace A056974

/-- `A014082(A335587(n+1))` -/
def P9887779927117326723.Spec : Prop :=
  ∀ n, P9887779927117326723.a n = A056974 (n + 1)

end A056974

/-!
# A056975: Number of blocks of {0, 0, 1} in binary expansion of n.

The programs for A056975, the canonical program `A056975.P9115286003234946508` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056975 has offset 1).

The definition of A056975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056975.P16009308841029579195

`A056978(A000265(n+1))`
-/

namespace A056975.P16009308841029579195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056978 (A000265 (n + 1)).toNat

end

end A056975.P16009308841029579195

namespace A056975

/-- `A056978(A000265(n+1))` -/
def P16009308841029579195.Spec : Prop :=
  ∀ n, P16009308841029579195.a n = A056975 (n + 1)

end A056975

/-! ## A056975.P9115286003234946508

`A056978(A065883(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A056975

/-- `A056978(A065883(n+1))` -/
def P9115286003234946508.Spec : Prop :=
  ∀ n, P9115286003234946508.a n = A056975 (n + 1)

theorem P9115286003234946508.correct : P9115286003234946508.Spec := by
  intro n
  simp only [A056975, Nat.add_sub_cancel]

end A056975

/-! ## A056975.P9472195459848496766

`A037819(A090077(n)+1)`
-/

namespace A056975.P9472195459848496766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037819 (A090077 n + 1).toNat

end

end A056975.P9472195459848496766

namespace A056975

/-- `A037819(A090077(n)+1)` -/
def P9472195459848496766.Spec : Prop :=
  ∀ n, P9472195459848496766.a n = A056975 (n + 1)

end A056975

/-! ## A056975.P10432164739170938336

`A037800(A106151(n+1))`
-/

namespace A056975.P10432164739170938336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A106151 (n + 1)).toNat

end

end A056975.P10432164739170938336

namespace A056975

/-- `A037800(A106151(n+1))` -/
def P10432164739170938336.Spec : Prop :=
  ∀ n, P10432164739170938336.a n = A056975 (n + 1)

end A056975

/-! ## A056975.P3604867784456982662

`A056978(A101279(n+1))`
-/

namespace A056975.P3604867784456982662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056978 (A101279 (n + 1)).toNat

end

end A056975.P3604867784456982662

namespace A056975

/-- `A056978(A101279(n+1))` -/
def P3604867784456982662.Spec : Prop :=
  ∀ n, P3604867784456982662.a n = A056975 (n + 1)

end A056975

/-! ## A056975.P7652367361203320833

`A056978(A259445(n+1))`
-/

namespace A056975.P7652367361203320833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056978 (A259445 (n + 1)).toNat

end

end A056975.P7652367361203320833

namespace A056975

/-- `A056978(A259445(n+1))` -/
def P7652367361203320833.Spec : Prop :=
  ∀ n, P7652367361203320833.a n = A056975 (n + 1)

end A056975

/-! ## A056975.P6006173735829612404

`A056978(n+1)-A011765(n+1)`
-/

namespace A056975.P6006173735829612404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056978 (n + 1) - A011765 (n + 1)

end

end A056975.P6006173735829612404

namespace A056975

/-- `A056978(n+1)-A011765(n+1)` -/
def P6006173735829612404.Spec : Prop :=
  ∀ n, P6006173735829612404.a n = A056975 (n + 1)

end A056975

/-! ## A056975.P4712505240963023195

`A037800(n+1)-A056979(n+1)`
-/

namespace A056975.P4712505240963023195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (n + 1) - A056979 (n + 1)

end

end A056975.P4712505240963023195

namespace A056975

/-- `A037800(n+1)-A056979(n+1)` -/
def P4712505240963023195.Spec : Prop :=
  ∀ n, P4712505240963023195.a n = A056975 (n + 1)

end A056975

/-! ## A056975.P8326787033397768562

`A056980(A080079(n+2))`
-/

namespace A056975.P8326787033397768562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056980 (A080079 (n + 2)).toNat

end

end A056975.P8326787033397768562

namespace A056975

/-- `A056980(A080079(n+2))` -/
def P8326787033397768562.Spec : Prop :=
  ∀ n, P8326787033397768562.a n = A056975 (n + 1)

end A056975

/-! ## A056975.P2142574573107535027

`A056978(n+1)-Δ[A002265(n)]`
-/

namespace A056975.P2142574573107535027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056978 (n + 1) - (f1 (n + 1) - f1 n)

end

end A056975.P2142574573107535027

namespace A056975

/-- `A056978(n+1)-Δ[A002265(n)]` -/
def P2142574573107535027.Spec : Prop :=
  ∀ n, P2142574573107535027.a n = A056975 (n + 1)

end A056975

/-! ## A056975.P6017877328001556084

`A056978(A030101(n+1))`
-/

namespace A056975.P6017877328001556084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056978 (A030101 (n + 1)).toNat

end

end A056975.P6017877328001556084

namespace A056975

/-- `A056978(A030101(n+1))` -/
def P6017877328001556084.Spec : Prop :=
  ∀ n, P6017877328001556084.a n = A056975 (n + 1)

end A056975

/-! ## A056975.P11727974459226980497

`A056978(or(n, n+1))`
-/

namespace A056975.P11727974459226980497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056978 (Nat.lor n (n + 1))

end

end A056975.P11727974459226980497

namespace A056975

/-- `A056978(or(n, n+1))` -/
def P11727974459226980497.Spec : Prop :=
  ∀ n, P11727974459226980497.a n = A056975 (n + 1)

end A056975

/-! ## A056975.P17874652229112726714

`A056977(A059894(n+1))`
-/

namespace A056975.P17874652229112726714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056977 (A059894 (n + 1)).toNat

end

end A056975.P17874652229112726714

namespace A056975

/-- `A056977(A059894(n+1))` -/
def P17874652229112726714.Spec : Prop :=
  ∀ n, P17874652229112726714.a n = A056975 (n + 1)

end A056975

/-! ## A056975.P11430804030255800314

`A056978(A086799(n+1))`
-/

namespace A056975.P11430804030255800314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056978 (A086799 (n + 1)).toNat

end

end A056975.P11430804030255800314

namespace A056975

/-- `A056978(A086799(n+1))` -/
def P11430804030255800314.Spec : Prop :=
  ∀ n, P11430804030255800314.a n = A056975 (n + 1)

end A056975

/-! ## A056975.P17031045833971192872

`A037800(A269170(n+1))`
-/

namespace A056975.P17031045833971192872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A269170 (n + 1)).toNat

end

end A056975.P17031045833971192872

namespace A056975

/-- `A037800(A269170(n+1))` -/
def P17031045833971192872.Spec : Prop :=
  ∀ n, P17031045833971192872.a n = A056975 (n + 1)

end A056975

/-! ## A056975.P18345218419001186442

`A056980(A261693(n+1))`
-/

namespace A056975.P18345218419001186442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056980 (A261693 (n + 1)).toNat

end

end A056975.P18345218419001186442

namespace A056975

/-- `A056980(A261693(n+1))` -/
def P18345218419001186442.Spec : Prop :=
  ∀ n, P18345218419001186442.a n = A056975 (n + 1)

end A056975

/-! ## A056975.P5816784816358737485

`A056978(A006519(n+1)+n)`
-/

namespace A056975.P5816784816358737485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056978 (A006519 (n + 1) + (n : ℤ)).toNat

end

end A056975.P5816784816358737485

namespace A056975

/-- `A056978(A006519(n+1)+n)` -/
def P5816784816358737485.Spec : Prop :=
  ∀ n, P5816784816358737485.a n = A056975 (n + 1)

end A056975

/-! ## A056975.P4805940421281834291

`A033264(2*A106151(n+1))-1`
-/

namespace A056975.P4805940421281834291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (2 * A106151 (n + 1)).toNat - 1

end

end A056975.P4805940421281834291

namespace A056975

/-- `A033264(2*A106151(n+1))-1` -/
def P4805940421281834291.Spec : Prop :=
  ∀ n, P4805940421281834291.a n = A056975 (n + 1)

end A056975

/-! ## A056975.P6628450666836713687

`A087116(2*A106151(n+1))-1`
-/

namespace A056975.P6628450666836713687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (2 * A106151 (n + 1)).toNat - 1

end

end A056975.P6628450666836713687

namespace A056975

/-- `A087116(2*A106151(n+1))-1` -/
def P6628450666836713687.Spec : Prop :=
  ∀ n, P6628450666836713687.a n = A056975 (n + 1)

end A056975

/-! ## A056975.P16103224416628930820

`A056978(2*(n+1))-and(1, n)`
-/

namespace A056975.P16103224416628930820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056978 (2 * (n + 1)) - (Nat.land 1 n : ℤ)

end

end A056975.P16103224416628930820

namespace A056975

/-- `A056978(2*(n+1))-and(1, n)` -/
def P16103224416628930820.Spec : Prop :=
  ∀ n, P16103224416628930820.a n = A056975 (n + 1)

end A056975

/-!
# A056976: Number of blocks of {0, 1, 0} in the binary expansion of n.

The programs for A056976, the canonical program `A056976.P12180376786758861985` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056976 has offset 1).

The definition of A056976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056976.P12180376786758861985

`A056979(A080079(n+2))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A056976

/-- `A056979(A080079(n+2))` -/
def P12180376786758861985.Spec : Prop :=
  ∀ n, P12180376786758861985.a n = A056976 (n + 1)

theorem P12180376786758861985.correct : P12180376786758861985.Spec := by
  intro n
  simp only [A056976, Nat.add_sub_cancel]

end A056976

/-! ## A056976.P5269806495213378866

`A014081(A038554(n+1))-A056979(n+1)`
-/

namespace A056976.P5269806495213378866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A038554 (n + 1)).toNat - A056979 (n + 1)

end

end A056976.P5269806495213378866

namespace A056976

/-- `A014081(A038554(n+1))-A056979(n+1)` -/
def P5269806495213378866.Spec : Prop :=
  ∀ n, P5269806495213378866.a n = A056976 (n + 1)

end A056976

/-! ## A056976.P5177022209156615811

`A056973(A209639(n+1))`
-/

namespace A056976.P5177022209156615811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056973 (A209639 (n + 1)).toNat

end

end A056976.P5177022209156615811

namespace A056976

/-- `A056973(A209639(n+1))` -/
def P5177022209156615811.Spec : Prop :=
  ∀ n, P5177022209156615811.a n = A056976 (n + 1)

end A056976

/-! ## A056976.P8049066062149930138

`A037800(n+1)-A056977(2*n+3)`
-/

namespace A056976.P8049066062149930138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (n + 1) - A056977 (2 * n + 3)

end

end A056976.P8049066062149930138

namespace A056976

/-- `A037800(n+1)-A056977(2*n+3)` -/
def P8049066062149930138.Spec : Prop :=
  ∀ n, P8049066062149930138.a n = A056976 (n + 1)

end A056976

/-! ## A056976.P16071706355368768623

`A069010(n+1)-(A056977(2*n+3)+1)`
-/

namespace A056976.P16071706355368768623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (n + 1) - (A056977 (2 * n + 3) + 1)

end

end A056976.P16071706355368768623

namespace A056976

/-- `A069010(n+1)-(A056977(2*n+3)+1)` -/
def P16071706355368768623.Spec : Prop :=
  ∀ n, P16071706355368768623.a n = A056976 (n + 1)

end A056976

/-! ## A056976.P16258584758197801337

`A107782(A209639(2*n+3))`
-/

namespace A056976.P16258584758197801337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107782 (A209639 (2 * n + 3)).toNat

end

end A056976.P16258584758197801337

namespace A056976

/-- `A107782(A209639(2*n+3))` -/
def P16258584758197801337.Spec : Prop :=
  ∀ n, P16258584758197801337.a n = A056976 (n + 1)

end A056976

/-! ## A056976.P5169044560692135020

`A107782(A209859(2*n+3))`
-/

namespace A056976.P5169044560692135020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107782 (A209859 (2 * n + 3)).toNat

end

end A056976.P5169044560692135020

namespace A056976

/-- `A107782(A209859(2*n+3))` -/
def P5169044560692135020.Spec : Prop :=
  ∀ n, P5169044560692135020.a n = A056976 (n + 1)

end A056976

/-!
# A056977: Number of blocks of {0, 1, 1} in binary expansion of n.

The programs for A056977, the canonical program `A056977.P11839360104264240419` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056977 has offset 1).

The definition of A056977 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056977.P11839360104264240419

`A056975(A292264(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A056977

/-- `A056975(A292264(n+1))` -/
def P11839360104264240419.Spec : Prop :=
  ∀ n, P11839360104264240419.a n = A056977 (n + 1)

theorem P11839360104264240419.correct : P11839360104264240419.Spec := by
  intro n
  simp only [A056977, Nat.add_sub_cancel]

end A056977

/-! ## A056977.P10382408556376482727

`A033264(and(2*A030101(n), A030101(n+1))+1)`
-/

namespace A056977.P10382408556376482727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (Int.land (2 * A030101 n) (A030101 (n + 1)) + 1).toNat

end

end A056977.P10382408556376482727

namespace A056977

/-- `A033264(and(2*A030101(n), A030101(n+1))+1)` -/
def P10382408556376482727.Spec : Prop :=
  ∀ n, P10382408556376482727.a n = A056977 (n + 1)

end A056977

/-! ## A056977.P12943553161688799196

`A056980(A030101(n+1))`
-/

namespace A056977.P12943553161688799196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056980 (A030101 (n + 1)).toNat

end

end A056977.P12943553161688799196

namespace A056977

/-- `A056980(A030101(n+1))` -/
def P12943553161688799196.Spec : Prop :=
  ∀ n, P12943553161688799196.a n = A056977 (n + 1)

end A056977

/-! ## A056977.P11691286449477211698

`A037800(A385889(n+1))`
-/

namespace A056977.P11691286449477211698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A385889 (n + 1)).toNat

end

end A056977.P11691286449477211698

namespace A056977

/-- `A037800(A385889(n+1))` -/
def P11691286449477211698.Spec : Prop :=
  ∀ n, P11691286449477211698.a n = A056977 (n + 1)

end A056977

/-! ## A056977.P15057877096845880574

`A056975(A059894(n+1))`
-/

namespace A056977.P15057877096845880574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056975 (A059894 (n + 1)).toNat

end

end A056977.P15057877096845880574

namespace A056977

/-- `A056975(A059894(n+1))` -/
def P15057877096845880574.Spec : Prop :=
  ∀ n, P15057877096845880574.a n = A056977 (n + 1)

end A056977

/-! ## A056977.P18195915468374471457

`A056975(A261693(n+1))`
-/

namespace A056977.P18195915468374471457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056975 (A261693 (n + 1)).toNat

end

end A056977.P18195915468374471457

namespace A056977

/-- `A056975(A261693(n+1))` -/
def P18195915468374471457.Spec : Prop :=
  ∀ n, P18195915468374471457.a n = A056977 (n + 1)

end A056977

/-! ## A056977.P3150003151463307538

`A056975(A336963(n+1))`
-/

namespace A056977.P3150003151463307538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056975 (A336963 (n + 1)).toNat

end

end A056977.P3150003151463307538

namespace A056977

/-- `A056975(A336963(n+1))` -/
def P3150003151463307538.Spec : Prop :=
  ∀ n, P3150003151463307538.a n = A056977 (n + 1)

end A056977

/-! ## A056977.P12467879850063559789

`A037800(n+1)-A056976(2*(n+1))`
-/

namespace A056977.P12467879850063559789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (n + 1) - A056976 (2 * (n + 1))

end

end A056977.P12467879850063559789

namespace A056977

/-- `A037800(n+1)-A056976(2*(n+1))` -/
def P12467879850063559789.Spec : Prop :=
  ∀ n, P12467879850063559789.a n = A056977 (n + 1)

end A056977

/-! ## A056977.P10949281196387070298

`A056980(A080079(A080079(2*(n+1))))`
-/

namespace A056977.P10949281196387070298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056980 (A080079 (A080079 (2 * (n + 1))).toNat).toNat

end

end A056977.P10949281196387070298

namespace A056977

/-- `A056980(A080079(A080079(2*(n+1))))` -/
def P10949281196387070298.Spec : Prop :=
  ∀ n, P10949281196387070298.a n = A056977 (n + 1)

end A056977

/-! ## A056977.P10879950215691838817

`A056980(A165789(n+1))`
-/

namespace A056977.P10879950215691838817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056980 (A165789 (n + 1)).toNat

end

end A056977.P10879950215691838817

namespace A056977

/-- `A056980(A165789(n+1))` -/
def P10879950215691838817.Spec : Prop :=
  ∀ n, P10879950215691838817.a n = A056977 (n + 1)

end A056977

/-! ## A056977.P11747442053823432905

`A073490(A253563(n+1))`
-/

namespace A056977.P11747442053823432905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (A253563 (n + 1)).toNat

end

end A056977.P11747442053823432905

namespace A056977

/-- `A073490(A253563(n+1))` -/
def P11747442053823432905.Spec : Prop :=
  ∀ n, P11747442053823432905.a n = A056977 (n + 1)

end A056977

/-! ## A056977.P8553707292958159348

`A037800(A209859(n+1))`
-/

namespace A056977.P8553707292958159348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A209859 (n + 1)).toNat

end

end A056977.P8553707292958159348

namespace A056977

/-- `A037800(A209859(n+1))` -/
def P8553707292958159348.Spec : Prop :=
  ∀ n, P8553707292958159348.a n = A056977 (n + 1)

end A056977

/-!
# A056978: Number of blocks of {1, 0, 0} in binary expansion of n.

The programs for A056978, the canonical program `A056978.P3482370841281889433` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056978 has offset 1).

The definition of A056978 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056978.P5848902157679781619

`A037819(A090077(n+1))`
-/

namespace A056978.P5848902157679781619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037819 (A090077 (n + 1)).toNat

end

end A056978.P5848902157679781619

namespace A056978

/-- `A037819(A090077(n+1))` -/
def P5848902157679781619.Spec : Prop :=
  ∀ n, P5848902157679781619.a n = A056978 (n + 1)

end A056978

/-! ## A056978.P11543626875886796520

`A033264(A106151(n+1))`
-/

namespace A056978.P11543626875886796520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (A106151 (n + 1)).toNat

end

end A056978.P11543626875886796520

namespace A056978

/-- `A033264(A106151(n+1))` -/
def P11543626875886796520.Spec : Prop :=
  ∀ n, P11543626875886796520.a n = A056978 (n + 1)

end A056978

/-! ## A056978.P8077111390062681318

`A037819(A161822(n+1))`
-/

namespace A056978.P8077111390062681318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037819 (A161822 (n + 1)).toNat

end

end A056978.P8077111390062681318

namespace A056978

/-- `A037819(A161822(n+1))` -/
def P8077111390062681318.Spec : Prop :=
  ∀ n, P8077111390062681318.a n = A056978 (n + 1)

end A056978

/-! ## A056978.P11770746953699288441

`A056975(n+1)+A011765(n+1)`
-/

namespace A056978.P11770746953699288441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056975 (n + 1) + A011765 (n + 1)

end

end A056978.P11770746953699288441

namespace A056978

/-- `A056975(n+1)+A011765(n+1)` -/
def P11770746953699288441.Spec : Prop :=
  ∀ n, P11770746953699288441.a n = A056978 (n + 1)

end A056978

/-! ## A056978.P3482370841281889433

`A056973(n+1)-A056974(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A056978

/-- `A056973(n+1)-A056974(n+1)` -/
def P3482370841281889433.Spec : Prop :=
  ∀ n, P3482370841281889433.a n = A056978 (n + 1)

theorem P3482370841281889433.correct : P3482370841281889433.Spec := by
  intro n
  simp only [A056978, Nat.add_sub_cancel]

end A056978

/-! ## A056978.P4552135708697982944

`A033264(n+1)-A290260(n+1)`
-/

namespace A056978.P4552135708697982944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (n + 1) - A290260 (n + 1)

end

end A056978.P4552135708697982944

namespace A056978

/-- `A033264(n+1)-A290260(n+1)` -/
def P4552135708697982944.Spec : Prop :=
  ∀ n, P4552135708697982944.a n = A056978 (n + 1)

end A056978

/-! ## A056978.P1735094977837391173

`A087116(A106151(2*n+1-n))`
-/

namespace A056978.P1735094977837391173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (A106151 (2 * n + 1 - n)).toNat

end

end A056978.P1735094977837391173

namespace A056978

/-- `A087116(A106151(2*n+1-n))` -/
def P1735094977837391173.Spec : Prop :=
  ∀ n, P1735094977837391173.a n = A056978 (n + 1)

end A056978

/-! ## A056978.P17186106614262527459

`A056973(n+1)-A056973(A106151(n+1))`
-/

namespace A056978.P17186106614262527459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056973 (n + 1) - A056973 (A106151 (n + 1)).toNat

end

end A056978.P17186106614262527459

namespace A056978

/-- `A056973(n+1)-A056973(A106151(n+1))` -/
def P17186106614262527459.Spec : Prop :=
  ∀ n, P17186106614262527459.a n = A056978 (n + 1)

end A056978

/-! ## A056978.P17895291712771461853

`A107782(n+1)-A107782(A106151(n+1))`
-/

namespace A056978.P17895291712771461853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107782 (n + 1) - A107782 (A106151 (n + 1)).toNat

end

end A056978.P17895291712771461853

namespace A056978

/-- `A107782(n+1)-A107782(A106151(n+1))` -/
def P17895291712771461853.Spec : Prop :=
  ∀ n, P17895291712771461853.a n = A056978 (n + 1)

end A056978

/-! ## A056978.P9852723942670992647

`A056980(2*A080079(n+2))`
-/

namespace A056978.P9852723942670992647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056980 (2 * A080079 (n + 2)).toNat

end

end A056978.P9852723942670992647

namespace A056978

/-- `A056980(2*A080079(n+2))` -/
def P9852723942670992647.Spec : Prop :=
  ∀ n, P9852723942670992647.a n = A056978 (n + 1)

end A056978

/-! ## A056978.P6788693939410345578

`A037800(2*A106151(n+1)+1)`
-/

namespace A056978.P6788693939410345578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (2 * A106151 (n + 1) + 1).toNat

end

end A056978.P6788693939410345578

namespace A056978

/-- `A037800(2*A106151(n+1)+1)` -/
def P6788693939410345578.Spec : Prop :=
  ∀ n, P6788693939410345578.a n = A056978 (n + 1)

end A056978

/-! ## A056978.P10420705539704951891

`A037800(A106151(n+1)+A106151(n+1)+1)`
-/

namespace A056978.P10420705539704951891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A106151 (n + 1) + (A106151 (n + 1) + 1)).toNat

end

end A056978.P10420705539704951891

namespace A056978

/-- `A037800(A106151(n+1)+A106151(n+1)+1)` -/
def P10420705539704951891.Spec : Prop :=
  ∀ n, P10420705539704951891.a n = A056978 (n + 1)

end A056978

/-! ## A056978.P936710378454562490

`A056975(2*n+3)`
-/

namespace A056978.P936710378454562490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056975 (2 * n + 3)

end

end A056978.P936710378454562490

namespace A056978

/-- `A056975(2*n+3)` -/
def P936710378454562490.Spec : Prop :=
  ∀ n, P936710378454562490.a n = A056978 (n + 1)

end A056978

/-! ## A056978.P8324463097049669632

`A033264(n+1)-A056979(2*n+3)`
-/

namespace A056978.P8324463097049669632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (n + 1) - A056979 (2 * n + 3)

end

end A056978.P8324463097049669632

namespace A056978

/-- `A033264(n+1)-A056979(2*n+3)` -/
def P8324463097049669632.Spec : Prop :=
  ∀ n, P8324463097049669632.a n = A056978 (n + 1)

end A056978

/-! ## A056978.P6617699141061154494

`A037800(2*n+3)-A056979(2*n+3)`
-/

namespace A056978.P6617699141061154494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (2 * n + 3) - A056979 (2 * n + 3)

end

end A056978.P6617699141061154494

namespace A056978

/-- `A037800(2*n+3)-A056979(2*n+3)` -/
def P6617699141061154494.Spec : Prop :=
  ∀ n, P6617699141061154494.a n = A056978 (n + 1)

end A056978

/-! ## A056978.P2850586424564400442

`A056977(A010078(n+2))`
-/

namespace A056978.P2850586424564400442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056977 (A010078 (n + 2)).toNat

end

end A056978.P2850586424564400442

namespace A056978

/-- `A056977(A010078(n+2))` -/
def P2850586424564400442.Spec : Prop :=
  ∀ n, P2850586424564400442.a n = A056978 (n + 1)

end A056978

/-! ## A056978.P2837885786111410033

`A056974(A175047(n+1))-A056974(n+1)`
-/

namespace A056978.P2837885786111410033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056974 (A175047 (n + 1)).toNat - A056974 (n + 1)

end

end A056978.P2837885786111410033

namespace A056978

/-- `A056974(A175047(n+1))-A056974(n+1)` -/
def P2837885786111410033.Spec : Prop :=
  ∀ n, P2837885786111410033.a n = A056978 (n + 1)

end A056978

/-! ## A056978.P1575129182045286154

`A056980(A010078(2*(n+2)))`
-/

namespace A056978.P1575129182045286154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056980 (A010078 (2 * (n + 2))).toNat

end

end A056978.P1575129182045286154

namespace A056978

/-- `A056980(A010078(2*(n+2)))` -/
def P1575129182045286154.Spec : Prop :=
  ∀ n, P1575129182045286154.a n = A056978 (n + 1)

end A056978

/-! ## A056978.P10008054400312497092

`A087116(A090078(A106151(A106151(A175047(n+1)))))`
-/

namespace A056978.P10008054400312497092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (A090078 (A106151 (A106151 (A175047 (n + 1)).toNat).toNat).toNat).toNat

end

end A056978.P10008054400312497092

namespace A056978

/-- `A087116(A090078(A106151(A106151(A175047(n+1)))))` -/
def P10008054400312497092.Spec : Prop :=
  ∀ n, P10008054400312497092.a n = A056978 (n + 1)

end A056978

/-! ## A056978.P18405494004143031438

`A073490(A005940(2*(n+2)))`
-/

namespace A056978.P18405494004143031438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (A005940 (2 * (n + 2))).toNat

end

end A056978.P18405494004143031438

namespace A056978

/-- `A073490(A005940(2*(n+2)))` -/
def P18405494004143031438.Spec : Prop :=
  ∀ n, P18405494004143031438.a n = A056978 (n + 1)

end A056978

/-!
# A056979: Number of blocks of {1, 0, 1} in binary expansion of n.

The programs for A056979, the canonical program `A056979.P4428526417938003565` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056979 has offset 1).

The definition of A056979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056979.P4428526417938003565

`A290260(4*(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A056979

/-- `A290260(4*(n+1))` -/
def P4428526417938003565.Spec : Prop :=
  ∀ n, P4428526417938003565.a n = A056979 (n + 1)

theorem P4428526417938003565.correct : P4428526417938003565.Spec := by
  intro n
  simp only [A056979, Nat.add_sub_cancel]

end A056979

/-! ## A056979.P3201122325066962797

`A292342(n+1)-A059841(n)`
-/

namespace A056979.P3201122325066962797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292342 (n + 1) - A059841 n

end

end A056979.P3201122325066962797

namespace A056979

/-- `A292342(n+1)-A059841(n)` -/
def P3201122325066962797.Spec : Prop :=
  ∀ n, P3201122325066962797.a n = A056979 (n + 1)

end A056979

/-! ## A056979.P2712153596349446234

`A037800(n+1)-A056975(n+1)`
-/

namespace A056979.P2712153596349446234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (n + 1) - A056975 (n + 1)

end

end A056979.P2712153596349446234

namespace A056979

/-- `A037800(n+1)-A056975(n+1)` -/
def P2712153596349446234.Spec : Prop :=
  ∀ n, P2712153596349446234.a n = A056979 (n + 1)

end A056979

/-! ## A056979.P3809005901018336435

`A000120(A318921(A106151(A090077(n+1))))`
-/

namespace A056979.P3809005901018336435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A318921 (A106151 (A090077 (n + 1)).toNat).toNat).toNat

end

end A056979.P3809005901018336435

namespace A056979

/-- `A000120(A318921(A106151(A090077(n+1))))` -/
def P3809005901018336435.Spec : Prop :=
  ∀ n, P3809005901018336435.a n = A056979 (n + 1)

end A056979

/-! ## A056979.P5859610170955229689

`val(A078828(n+1), 5)`
-/

namespace A056979.P5859610170955229689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A078828 (n + 1)).toNat 5

end

end A056979.P5859610170955229689

namespace A056979

/-- `val(A078828(n+1), 5)` -/
def P5859610170955229689.Spec : Prop :=
  ∀ n, (P5859610170955229689.a n : ℤ) = A056979 (n + 1)

end A056979

/-! ## A056979.P3877083912746331650

`A037800(n+1)-A037800(A269170(n+1))`
-/

namespace A056979.P3877083912746331650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (n + 1) - A037800 (A269170 (n + 1)).toNat

end

end A056979.P3877083912746331650

namespace A056979

/-- `A037800(n+1)-A037800(A269170(n+1))` -/
def P3877083912746331650.Spec : Prop :=
  ∀ n, P3877083912746331650.a n = A056979 (n + 1)

end A056979

/-! ## A056979.P6441907415430227260

`A001221(A337375(n+1))`
-/

namespace A056979.P6441907415430227260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A337375 (n + 1)).toNat

end

end A056979.P6441907415430227260

namespace A056979

/-- `A001221(A337375(n+1))` -/
def P6441907415430227260.Spec : Prop :=
  ∀ n, P6441907415430227260.a n = A056979 (n + 1)

end A056979

/-! ## A056979.P1496356851029676973

`A292342(2*(n+1))`
-/

namespace A056979.P1496356851029676973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292342 (2 * (n + 1))

end

end A056979.P1496356851029676973

namespace A056979

/-- `A292342(2*(n+1))` -/
def P1496356851029676973.Spec : Prop :=
  ∀ n, P1496356851029676973.a n = A056979 (n + 1)

end A056979

/-! ## A056979.P4477591209328337115

`A033264(n+1)-A056978(2*(n+1))`
-/

namespace A056979.P4477591209328337115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (n + 1) - A056978 (2 * (n + 1))

end

end A056979.P4477591209328337115

namespace A056979

/-- `A033264(n+1)-A056978(2*(n+1))` -/
def P4477591209328337115.Spec : Prop :=
  ∀ n, P4477591209328337115.a n = A056979 (n + 1)

end A056979

/-! ## A056979.P13396401128757687978

`A037800(n+1)-A037800(A106151(2*(n+1)))`
-/

namespace A056979.P13396401128757687978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (n + 1) - A037800 (A106151 (2 * (n + 1))).toNat

end

end A056979.P13396401128757687978

namespace A056979

/-- `A037800(n+1)-A037800(A106151(2*(n+1)))` -/
def P13396401128757687978.Spec : Prop :=
  ∀ n, P13396401128757687978.a n = A056979 (n + 1)

end A056979

/-! ## A056979.P15695406797518180894

`A087116(n+1)-A087116(A106151(2*(n+1)))`
-/

namespace A056979.P15695406797518180894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (n + 1) - A087116 (A106151 (2 * (n + 1))).toNat

end

end A056979.P15695406797518180894

namespace A056979

/-- `A087116(n+1)-A087116(A106151(2*(n+1)))` -/
def P15695406797518180894.Spec : Prop :=
  ∀ n, P15695406797518180894.a n = A056979 (n + 1)

end A056979

/-! ## A056979.P13699232709365565714

`A037800(2*n+3)-A056978(2*(n+1))`
-/

namespace A056979.P13699232709365565714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (2 * n + 3) - A056978 (2 * (n + 1))

end

end A056979.P13699232709365565714

namespace A056979

/-- `A037800(2*n+3)-A056978(2*(n+1))` -/
def P13699232709365565714.Spec : Prop :=
  ∀ n, P13699232709365565714.a n = A056979 (n + 1)

end A056979

/-! ## A056979.P9284836981958256823

`A056976(A010078(n+2))`
-/

namespace A056979.P9284836981958256823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056976 (A010078 (n + 2)).toNat

end

end A056979.P9284836981958256823

namespace A056979

/-- `A056976(A010078(n+2))` -/
def P9284836981958256823.Spec : Prop :=
  ∀ n, P9284836981958256823.a n = A056979 (n + 1)

end A056979

/-! ## A056979.P1866170969538204417

`A277937(A059894(2*(n+1)))`
-/

namespace A056979.P1866170969538204417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 (A059894 (2 * (n + 1))).toNat

end

end A056979.P1866170969538204417

namespace A056979

/-- `A277937(A059894(2*(n+1)))` -/
def P1866170969538204417.Spec : Prop :=
  ∀ n, P1866170969538204417.a n = A056979 (n + 1)

end A056979

/-! ## A056979.P2341319912117703910

`A037800(n+1)-A037800(A163617(n+1))`
-/

namespace A056979.P2341319912117703910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (n + 1) - A037800 (A163617 (n + 1)).toNat

end

end A056979.P2341319912117703910

namespace A056979

/-- `A037800(n+1)-A037800(A163617(n+1))` -/
def P2341319912117703910.Spec : Prop :=
  ∀ n, P2341319912117703910.a n = A056979 (n + 1)

end A056979

/-! ## A056979.P3193184576267230715

`A056975(A175047(n+1))-A056975(n+1)`
-/

namespace A056979.P3193184576267230715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056975 (A175047 (n + 1)).toNat - A056975 (n + 1)

end

end A056979.P3193184576267230715

namespace A056979

/-- `A056975(A175047(n+1))-A056975(n+1)` -/
def P3193184576267230715.Spec : Prop :=
  ∀ n, P3193184576267230715.a n = A056979 (n + 1)

end A056979

/-! ## A056979.P13663855621463922567

`A056975(A000695(n+1))-A056975(n+1)`
-/

namespace A056979.P13663855621463922567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056975 (A000695 (n + 1)).toNat - A056975 (n + 1)

end

end A056979.P13663855621463922567

namespace A056979

/-- `A056975(A000695(n+1))-A056975(n+1)` -/
def P13663855621463922567.Spec : Prop :=
  ∀ n, P13663855621463922567.a n = A056979 (n + 1)

end A056979

/-!
# A056980: Number of blocks of {1, 1, 0} in binary expansion of n.

The programs for A056980, the canonical program `A056980.P3532527099701014271` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056980 has offset 1).

The definition of A056980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056980.P3532527099701014271

`A033264(and(n, 2*(n+1))+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A056980

/-- `A033264(and(n, 2*(n+1))+1)` -/
def P3532527099701014271.Spec : Prop :=
  ∀ n, P3532527099701014271.a n = A056980 (n + 1)

theorem P3532527099701014271.correct : P3532527099701014271.Spec := by
  intro n
  simp only [A056980, Nat.add_sub_cancel]

end A056980

/-! ## A056980.P14825645346004687168

`A037800(and(n, 2*(n+1))+1)`
-/

namespace A056980.P14825645346004687168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (Nat.land n (2 * (n + 1)) + 1)

end

end A056980.P14825645346004687168

namespace A056980

/-- `A037800(and(n, 2*(n+1))+1)` -/
def P14825645346004687168.Spec : Prop :=
  ∀ n, P14825645346004687168.a n = A056980 (n + 1)

end A056980

/-! ## A056980.P16576782281525348115

`A087116(and(n, 2*(n+1))+1)`
-/

namespace A056980.P16576782281525348115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (Nat.land n (2 * (n + 1)) + 1)

end

end A056980.P16576782281525348115

namespace A056980

/-- `A087116(and(n, 2*(n+1))+1)` -/
def P16576782281525348115.Spec : Prop :=
  ∀ n, P16576782281525348115.a n = A056980 (n + 1)

end A056980

/-! ## A056980.P12211322111214650569

`A124760(A090078(n+1))`
-/

namespace A056980.P12211322111214650569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A090078 (n + 1)).toNat

end

end A056980.P12211322111214650569

namespace A056980

/-- `A124760(A090078(n+1))` -/
def P12211322111214650569.Spec : Prop :=
  ∀ n, P12211322111214650569.a n = A056980 (n + 1)

end A056980

/-! ## A056980.P3677993054763398956

`A033264(A348710(n+1))`
-/

namespace A056980.P3677993054763398956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (A348710 (n + 1)).toNat

end

end A056980.P3677993054763398956

namespace A056980

/-- `A033264(A348710(n+1))` -/
def P3677993054763398956.Spec : Prop :=
  ∀ n, P3677993054763398956.a n = A056980 (n + 1)

end A056980

/-! ## A056980.P5305977739006461049

`A033264(A213370(n+1)+1)`
-/

namespace A056980.P5305977739006461049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (A213370 (n + 1) + 1).toNat

end

end A056980.P5305977739006461049

namespace A056980

/-- `A033264(A213370(n+1)+1)` -/
def P5305977739006461049.Spec : Prop :=
  ∀ n, P5305977739006461049.a n = A056980 (n + 1)

end A056980

/-! ## A056980.P6751960625142078252

`A033264(A048735(n+1))`
-/

namespace A056980.P6751960625142078252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (A048735 (n + 1)).toNat

end

end A056980.P6751960625142078252

namespace A056980

/-- `A033264(A048735(n+1))` -/
def P6751960625142078252.Spec : Prop :=
  ∀ n, P6751960625142078252.a n = A056980 (n + 1)

end A056980

/-! ## A056980.P3627986888759796658

`A014081(A004526(n+1))-A014082(n+1)`
-/

namespace A056980.P3627986888759796658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A004526 (n + 1)).toNat - A014082 (n + 1)

end

end A056980.P3627986888759796658

namespace A056980

/-- `A014081(A004526(n+1))-A014082(n+1)` -/
def P3627986888759796658.Spec : Prop :=
  ∀ n, P3627986888759796658.a n = A056980 (n + 1)

end A056980

/-! ## A056980.P9986512423166770338

`A056978(A166404(n+1))`
-/

namespace A056980.P9986512423166770338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056978 (A166404 (n + 1)).toNat

end

end A056980.P9986512423166770338

namespace A056980

/-- `A056978(A166404(n+1))` -/
def P9986512423166770338.Spec : Prop :=
  ∀ n, P9986512423166770338.a n = A056980 (n + 1)

end A056980

/-! ## A056980.P6226412746029912889

`A056978(A336962(n+1))`
-/

namespace A056980.P6226412746029912889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056978 (A336962 (n + 1)).toNat

end

end A056980.P6226412746029912889

namespace A056980

/-- `A056978(A336962(n+1))` -/
def P6226412746029912889.Spec : Prop :=
  ∀ n, P6226412746029912889.a n = A056980 (n + 1)

end A056980

/-! ## A056980.P7049878800087606253

`A023416(A283165(A283165(n+1)+n+2))`
-/

namespace A056980.P7049878800087606253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A283165 (A283165 (n + 1) + (n + 2 : ℤ)).toNat).toNat

end

end A056980.P7049878800087606253

namespace A056980

/-- `A023416(A283165(A283165(n+1)+n+2))` -/
def P7049878800087606253.Spec : Prop :=
  ∀ n, P7049878800087606253.a n = A056980 (n + 1)

end A056980

/-! ## A056980.P6959284047947179894

`A014081(n+1)-A014082(2*n+3)`
-/

namespace A056980.P6959284047947179894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (n + 1) - A014082 (2 * n + 3)

end

end A056980.P6959284047947179894

namespace A056980

/-- `A014081(n+1)-A014082(2*n+3)` -/
def P6959284047947179894.Spec : Prop :=
  ∀ n, P6959284047947179894.a n = A056980 (n + 1)

end A056980

/-! ## A056980.P10478094803226609799

`A056977(A165789(n+1))`
-/

namespace A056980.P10478094803226609799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056977 (A165789 (n + 1)).toNat

end

end A056980.P10478094803226609799

namespace A056980

/-- `A056977(A165789(n+1))` -/
def P10478094803226609799.Spec : Prop :=
  ∀ n, P10478094803226609799.a n = A056980 (n + 1)

end A056980

/-! ## A056980.P3874980301642233502

`A056977(A145341(n+2))`
-/

namespace A056980.P3874980301642233502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056977 (A145341 (n + 2)).toNat

end

end A056980.P3874980301642233502

namespace A056980

/-- `A056977(A145341(n+2))` -/
def P3874980301642233502.Spec : Prop :=
  ∀ n, P3874980301642233502.a n = A056980 (n + 1)

end A056980

/-! ## A056980.P14084943488888326262

`A056975(A010078(n+2))`
-/

namespace A056980.P14084943488888326262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056975 (A010078 (n + 2)).toNat

end

end A056980.P14084943488888326262

namespace A056980

/-- `A056975(A010078(n+2))` -/
def P14084943488888326262.Spec : Prop :=
  ∀ n, P14084943488888326262.a n = A056980 (n + 1)

end A056980

/-! ## A056980.P14324215759987978572

`A000120(A334109(A005940(A000265(n+2))))`
-/

namespace A056980.P14324215759987978572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A334109 (A005940 (A000265 (n + 2)).toNat).toNat).toNat

end

end A056980.P14324215759987978572

namespace A056980

/-- `A000120(A334109(A005940(A000265(n+2))))` -/
def P14324215759987978572.Spec : Prop :=
  ∀ n, P14324215759987978572.a n = A056980 (n + 1)

end A056980

/-! ## A056980.P15079294653171958288

`A056978(A341746(n+1))`
-/

namespace A056980.P15079294653171958288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056978 (A341746 (n + 1)).toNat

end

end A056980.P15079294653171958288

namespace A056980

/-- `A056978(A341746(n+1))` -/
def P15079294653171958288.Spec : Prop :=
  ∀ n, P15079294653171958288.a n = A056980 (n + 1)

end A056980

/-!
# A056981: a(n) = A002596(n)^2.

The programs for A056981, the canonical program `A056981.P2022671667099570059` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056981 has offset 0).

The definition of A056981 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002596, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056981.P2022671667099570059

`A002596(n)²`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A056981

/-- `A002596(n)²` -/
def P2022671667099570059.Spec : Prop :=
  ∀ n, P2022671667099570059.a n = A056981 n

theorem P2022671667099570059.correct : P2022671667099570059.Spec := by
  intro n
  simp only [A056981]

end A056981

/-! ## A056981.P4676832640551954906

`A098597(abs(1-n))²`
-/

namespace A056981.P4676832640551954906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098597 |1 - (n : ℤ)|.toNat ^ 2

end

end A056981.P4676832640551954906

namespace A056981

/-- `A098597(abs(1-n))²` -/
def P4676832640551954906.Spec : Prop :=
  ∀ n, P4676832640551954906.a n = A056981 n

end A056981

/-! ## A056981.P10680211609900876446

`A381059(∑[n+1]+n)²`
-/

namespace A056981.P10680211609900876446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381059 (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2

end

end A056981.P10680211609900876446

namespace A056981

/-- `A381059(∑[n+1]+n)²` -/
def P10680211609900876446.Spec : Prop :=
  ∀ n, P10680211609900876446.a n = A056981 n

end A056981

/-! ## A056981.P13673467060644527411

`(A001790(n)/(1-2*n))²`
-/

namespace A056981.P13673467060644527411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001790 n : ℚ) / (1 - (2 * n : ℤ) : ℚ)) ^ 2

end

end A056981.P13673467060644527411

namespace A056981

/-- `(A001790(n)/(1-2*n))²` -/
def P13673467060644527411.Spec : Prop :=
  ∀ n, P13673467060644527411.a n = (A056981 n : ℚ)

end A056981

/-! ## A056981.P17269050480666086972

`(A001803(n)/A000466(n))²`
-/

namespace A056981.P17269050480666086972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001803 n : ℚ) / (A000466 n : ℚ)) ^ 2

end

end A056981.P17269050480666086972

namespace A056981

/-- `(A001803(n)/A000466(n))²` -/
def P17269050480666086972.Spec : Prop :=
  ∀ n, P17269050480666086972.a n = (A056981 n : ℚ)

end A056981

/-! ## A056981.P3362637938758546182

`(A002420(n)/A001316(n))²`
-/

namespace A056981.P3362637938758546182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A002420 n : ℚ) / (A001316 n : ℚ)) ^ 2

end

end A056981.P3362637938758546182

namespace A056981

/-- `(A002420(n)/A001316(n))²` -/
def P3362637938758546182.Spec : Prop :=
  ∀ n, P3362637938758546182.a n = (A056981 n : ℚ)

end A056981

/-! ## A056981.P15636369584003749824

`gcd(A001790(n), A206771(n))²`
-/

namespace A056981.P15636369584003749824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001790 n) (A206771 n) ^ 2

end

end A056981.P15636369584003749824

namespace A056981

/-- `gcd(A001790(n), A206771(n))²` -/
def P15636369584003749824.Spec : Prop :=
  ∀ n, (P15636369584003749824.a n : ℤ) = A056981 n

end A056981

/-! ## A056981.P9301049629143469512

`(A089408(2*n)/A001316(n))²`
-/

namespace A056981.P9301049629143469512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A089408 (2 * n) : ℚ) / (A001316 n : ℚ)) ^ 2

end

end A056981.P9301049629143469512

namespace A056981

/-- `(A089408(2*n)/A001316(n))²` -/
def P9301049629143469512.Spec : Prop :=
  ∀ n, P9301049629143469512.a n = (A056981 n : ℚ)

end A056981

/-! ## A056981.P8911901296523606632

`(A104624(2*n)/A001316(n))²`
-/

namespace A056981.P8911901296523606632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A104624 (2 * n) : ℚ) / (A001316 n : ℚ)) ^ 2

end

end A056981.P8911901296523606632

namespace A056981

/-- `(A104624(2*n)/A001316(n))²` -/
def P8911901296523606632.Spec : Prop :=
  ∀ n, P8911901296523606632.a n = (A056981 n : ℚ)

end A056981

/-! ## A056981.P11729375197539115037

`(A182122(2*n)/A001316(n))²`
-/

namespace A056981.P11729375197539115037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A182122 (2 * n) : ℚ) / (A001316 n : ℚ)) ^ 2

end

end A056981.P11729375197539115037

namespace A056981

/-- `(A182122(2*n)/A001316(n))²` -/
def P11729375197539115037.Spec : Prop :=
  ∀ n, P11729375197539115037.a n = (A056981 n : ℚ)

end A056981

/-!
# A056982: a(n) = 4^A005187(n). The denominators of the Landau constants.

The programs for A056982, the canonical program `A056982.P17508739079274575033` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056982 has offset 0).

The definition of A056982 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056982.P17508739079274575033

`4^A005187(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A056982

/-- `4^A005187(n)` -/
def P17508739079274575033.Spec : Prop :=
  ∀ n, P17508739079274575033.a n = (A056982 n : ℚ)

end A056982

/-! ## A056982.P14131897632246089705

`∏[gcd(2*n, 2^n)²]`
-/

namespace A056982.P14131897632246089705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (2 ^ n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056982.P14131897632246089705

namespace A056982

/-- `∏[gcd(2*n, 2^n)²]` -/
def P14131897632246089705.Spec : Prop :=
  ∀ n, (P14131897632246089705.a n : ℤ) = A056982 n

end A056982

/-! ## A056982.P11354391422055338691

`4^∑[∑{e}[xor(n, -n), #]]`
-/

namespace A056982.P11354391422055338691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A056982.P11354391422055338691

namespace A056982

/-- `4^∑[∑{e}[xor(n, -n), #]]` -/
def P11354391422055338691.Spec : Prop :=
  ∀ n, (P11354391422055338691.a n : ℤ) = A056982 n

end A056982

/-! ## A056982.P12522152853613509119

`∏[4^∑{e}[xor(n, -n), #]]`
-/

namespace A056982.P12522152853613509119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056982.P12522152853613509119

namespace A056982

/-- `∏[4^∑{e}[xor(n, -n), #]]` -/
def P12522152853613509119.Spec : Prop :=
  ∀ n, (P12522152853613509119.a n : ℤ) = A056982 n

end A056982

/-! ## A056982.P6957879862260196560

`4^n*a(floor(n/2))` with `a(0)=1`
-/

namespace A056982.P6957879862260196560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 ^ n * a ⌊(n : ℚ) / 2⌋.toNat

end

end A056982.P6957879862260196560

namespace A056982

/-- `4^n*a(floor(n/2))` -/
def P6957879862260196560.Spec : Prop :=
  ∀ n, (P6957879862260196560.a n : ℤ) = A056982 n

end A056982

/-! ## A056982.P15441553341189690059

`4^∑[a(∑[n]%n)+1]` with `a(0)=0`
-/

namespace A056982.P15441553341189690059
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A056982.P15441553341189690059

namespace A056982

/-- `4^∑[a(∑[n]%n)+1]` -/
def P15441553341189690059.Spec : Prop :=
  ∀ n, (P15441553341189690059.a n : ℤ) = A056982 n

end A056982

/-! ## A056982.P3257943840997582002

`4^(∑[∏{e}[xor(n, -n), #]]-1)`
-/

namespace A056982.P3257943840997582002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℤ)

end

end A056982.P3257943840997582002

namespace A056982

/-- `4^(∑[∏{e}[xor(n, -n), #]]-1)` -/
def P3257943840997582002.Spec : Prop :=
  ∀ n, P3257943840997582002.a n = (A056982 n : ℚ)

end A056982

/-! ## A056982.P13423317151614843655

`(2^∑[∑{e}[and(n, -n), #]]*2^n)²`
-/

namespace A056982.P13423317151614843655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) * 2 ^ n) ^ 2

end

end A056982.P13423317151614843655

namespace A056982

/-- `(2^∑[∑{e}[and(n, -n), #]]*2^n)²` -/
def P13423317151614843655.Spec : Prop :=
  ∀ n, (P13423317151614843655.a n : ℤ) = A056982 n

end A056982

/-! ## A056982.P13202450592941817981

`4*a(n-1)*gcd(n², a(n-1))` with `a(0)=1`
-/

namespace A056982.P13202450592941817981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) * Nat.gcd (n ^ 2) (a (n - 1))

end

end A056982.P13202450592941817981

namespace A056982

/-- `4*a(n-1)*gcd(n², a(n-1))` -/
def P13202450592941817981.Spec : Prop :=
  ∀ n, (P13202450592941817981.a n : ℤ) = A056982 n

end A056982

/-! ## A056982.P11541298505241124969

`A046161(n)²`
-/

namespace A056982.P11541298505241124969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 n ^ 2

end

end A056982.P11541298505241124969

namespace A056982

/-- `A046161(n)²` -/
def P11541298505241124969.Spec : Prop :=
  ∀ n, P11541298505241124969.a n = A056982 n

end A056982

/-!
# A056983: Primes p which divide Sum_{i=1..m} i! for some m (see A125138).

The programs for A056983, there is no canonical definition to state claims against.
-/

/-! ## A056983.P11932300947363006652

`p?[A000007(A013585(n))+Δ[n²]]`
-/

namespace A056983.P11932300947363006652
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A013585 n).toNat + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A056983.P11932300947363006652

/-! ## A056983.P17236838482977168139

`p?[A005408(n)+A000007(A013585(n))]`
-/

namespace A056983.P17236838482977168139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + A000007 (A013585 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A056983.P17236838482977168139

/-! ## A056983.P3990832979233857258

`p?[A005843(n)+A000007(A013585(n))+1]`
-/

namespace A056983.P3990832979233857258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A000007 (A013585 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A056983.P3990832979233857258

/-! ## A056983.P7396100874003691973

`p?[A187901(n+1)%A114442(n)]`
-/

namespace A056983.P7396100874003691973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187901 (n + 1)) (A114442 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A056983.P7396100874003691973

/-! ## A056983.P9307977299966596973

`A000040(eq[A035629(n+1), A346061(n)])`
-/

namespace A056983.P9307977299966596973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A056983.P9307977299966596973

/-!
# A056984: A125138 with the -1 terms omitted.

The programs for A056984, there is no canonical definition to state claims against.
-/

/-! ## A056984.P7342122383459977437

`A013585(floor(A056983(n+1)/2))`
-/

namespace A056984.P7342122383459977437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013585 ⌊(A056983 (n + 1) : ℚ) / 2⌋.toNat

end

end A056984.P7342122383459977437

/-! ## A056984.P14384820438580154142

`A013585((A056983(n+1)-1)/2)`
-/

namespace A056984.P14384820438580154142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013585 (SequenceMachineLib.roundAway ((A056983 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A056984.P14384820438580154142

/-!
# A056985: Primes p which do not divide Sum_{i=1..m} i! for any m (see A125138).

The programs for A056985, there is no canonical definition to state claims against.
-/

/-! ## A056985.P18132635006787790284

`p?[A151800(A013585(n))+A004273(n)]`
-/

namespace A056985.P18132635006787790284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A013585 n).toNat + A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A056985.P18132635006787790284

/-! ## A056985.P796249338377636428

`p?[A004277(n)+A000007(A013585(n))]`
-/

namespace A056985.P796249338377636428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + A000007 (A013585 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A056985.P796249338377636428

/-! ## A056985.P4407605698727195716

`p?[A005843(n)+A000007(A013585(n))]`
-/

namespace A056985.P4407605698727195716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A000007 (A013585 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A056985.P4407605698727195716

/-! ## A056985.P1604132522976778386

`p?[A005408(n)+A004273(A013585(n))]`
-/

namespace A056985.P1604132522976778386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + A004273 (A013585 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A056985.P1604132522976778386

/-! ## A056985.P10617333068863368450

`A000040(lt[A125138(n+1), 1]+1)`
-/

namespace A056985.P10617333068863368450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125138 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A056985.P10617333068863368450

/-!
# A056986: Number of permutations on {1,...,n} containing any given pattern alpha in the symmetric group S_3.

The programs for A056986, the canonical program `A056986.P9248900133846708898` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056986 has offset 1).

The definition of A056986 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056986.P12669763951647830902

`(n+1)!-C(2*(n+1), n+1)/(n+2)`
-/

namespace A056986.P12669763951647830902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) - (Nat.choose (2 * (n + 1)) (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A056986.P12669763951647830902

namespace A056986

/-- `(n+1)!-C(2*(n+1), n+1)/(n+2)` -/
def P12669763951647830902.Spec : Prop :=
  ∀ n, P12669763951647830902.a n = (A056986 (n + 1) : ℚ)

end A056986

/-! ## A056986.P9248900133846708898

`A000142(n+1)-A000108(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A056986

/-- `A000142(n+1)-A000108(n+1)` -/
def P9248900133846708898.Spec : Prop :=
  ∀ n, P9248900133846708898.a n = A056986 (n + 1)

theorem P9248900133846708898.correct : P9248900133846708898.Spec := by
  intro n
  simp only [A056986, Nat.add_sub_cancel]

end A056986

/-! ## A056986.P12494628454826780411

`C(2*n, n+2)+(n+1)*a(n-1)` with `a(0)=0`
-/

namespace A056986.P12494628454826780411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose (2 * n) (n + 2) + (n + 1) * a (n - 1)

end

end A056986.P12494628454826780411

namespace A056986

/-- `C(2*n, n+2)+(n+1)*a(n-1)` -/
def P12494628454826780411.Spec : Prop :=
  ∀ n, (P12494628454826780411.a n : ℤ) = A056986 (n + 1)

end A056986

/-! ## A056986.P8027315034573788366

`∏[n+1]-∑[A071724(n)]`
-/

namespace A056986.P8027315034573788366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A056986.P8027315034573788366

namespace A056986

/-- `∏[n+1]-∑[A071724(n)]` -/
def P8027315034573788366.Spec : Prop :=
  ∀ n, P8027315034573788366.a n = A056986 (n + 1)

end A056986

/-! ## A056986.P16420958320911259655

`∏[n+1]-Δ[A014137(n)]`
-/

namespace A056986.P16420958320911259655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (f2 (n + 1) - f2 n)

end

end A056986.P16420958320911259655

namespace A056986

/-- `∏[n+1]-Δ[A014137(n)]` -/
def P16420958320911259655.Spec : Prop :=
  ∀ n, P16420958320911259655.a n = A056986 (n + 1)

end A056986

/-! ## A056986.P4627557284914220844

`(n+1)!-A120588(n+2)`
-/

namespace A056986.P4627557284914220844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A120588 (n + 2)

end

end A056986.P4627557284914220844

namespace A056986

/-- `(n+1)!-A120588(n+2)` -/
def P4627557284914220844.Spec : Prop :=
  ∀ n, P4627557284914220844.a n = A056986 (n + 1)

end A056986

/-! ## A056986.P8550942304472727544

`(n+1)!-A039599(∑[n+1])`
-/

namespace A056986.P8550942304472727544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A039599 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A056986.P8550942304472727544

namespace A056986

/-- `(n+1)!-A039599(∑[n+1])` -/
def P8550942304472727544.Spec : Prop :=
  ∀ n, P8550942304472727544.a n = A056986 (n + 1)

end A056986

/-! ## A056986.P15592333668763105896

`∏[n+1]-A000108(2*n+1-n)`
-/

namespace A056986.P15592333668763105896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000108 (2 * n + 1 - n)

end

end A056986.P15592333668763105896

namespace A056986

/-- `∏[n+1]-A000108(2*n+1-n)` -/
def P15592333668763105896.Spec : Prop :=
  ∀ n, P15592333668763105896.a n = A056986 (n + 1)

end A056986

/-! ## A056986.P2367441578278652173

`Δ[A007489(n)-A014137(n)]`
-/

namespace A056986.P2367441578278652173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n - A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056986.P2367441578278652173

namespace A056986

/-- `Δ[A007489(n)-A014137(n)]` -/
def P2367441578278652173.Spec : Prop :=
  ∀ n, P2367441578278652173.a n = A056986 (n + 1)

end A056986

/-! ## A056986.P9445759589887260121

`∑[Δ[A000142(n)]-A000245(n)]`
-/

namespace A056986.P9445759589887260121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056986.P9445759589887260121

namespace A056986

/-- `∑[Δ[A000142(n)]-A000245(n)]` -/
def P9445759589887260121.Spec : Prop :=
  ∀ n, P9445759589887260121.a n = A056986 (n + 1)

end A056986

/-!
# A056988: Number of weakly connected digraphs on n unlabeled nodes that are not strongly connected.

The programs for A056988, there is no canonical definition to state claims against.
-/

/-! ## A056988.P6618544535436294069

`A003085(n+1)-A035512(n+1)`
-/

namespace A056988.P6618544535436294069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003085 (n + 1) - A035512 (n + 1)

end

end A056988.P6618544535436294069

/-! ## A056988.P16963414837668429601

`A003085(n+1)-A106238(A000124(n))`
-/

namespace A056988.P16963414837668429601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003085 (n + 1) - A106238 (A000124 n).toNat

end

end A056988.P16963414837668429601

/-! ## A056988.P7649038603596045598

`A003085(n+1)-A106238(∑[A028310(n)])`
-/

namespace A056988.P7649038603596045598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003085 (n + 1) - A106238 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A056988.P7649038603596045598

/-! ## A056988.P14957602208325760096

`A127910(n)+A116950(n)-A035512(n+1)`
-/

namespace A056988.P14957602208325760096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127910 n + A116950 n - A035512 (n + 1)

end

end A056988.P14957602208325760096

/-! ## A056988.P16733746761438177711

`A054918(n+1)+A054590(n+1)-A035512(n+1)`
-/

namespace A056988.P16733746761438177711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054918 (n + 1) + A054590 (n + 1) - A035512 (n + 1)

end

end A056988.P16733746761438177711

/-!
# A056989: Number of nonsingular n X n (-1,0,1)-matrices (over the reals).

The programs for A056989, there is no canonical definition to state claims against.
-/

/-! ## A056989.P10215549416054719675

`A060722(n)-A057981(n)`
-/

namespace A056989.P10215549416054719675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060722 n - A057981 n

end

end A056989.P10215549416054719675

/-!
# A056990: Number of nonsingular n X n (-1,1)-matrices.

The programs for A056990, there is no canonical definition to state claims against.
-/

/-! ## A056990.P10110857513012013850

`A000010(A370056(n)+A006939(n))`
-/

namespace A056990.P10110857513012013850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A370056 n + A006939 n).toNat

end

end A056990.P10110857513012013850

/-!
# A056991: Numbers with digital root 1, 4, 7 or 9.

The programs for A056991, the canonical program `A056991.P605884896957428022` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056991 has offset 1).

The definition of A056991 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056991.P605884896957428022

`a(n-4)+9` with `a(0)=1, a(1)=4, a(2)=7, a(3)=9`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056991

/-- `a(n-4)+9` -/
def P605884896957428022.Spec : Prop :=
  ∀ n, (P605884896957428022.a n : ℤ) = A056991 (n + 1)

theorem P605884896957428022.correct : P605884896957428022.Spec := by
  intro n
  simp only [A056991, Nat.add_sub_cancel]

end A056991

/-! ## A056991.P16194427376387193151

`3*(n+1)-floor((n+1)/4)-2*floor((n+4)/4)`
-/

namespace A056991.P16194427376387193151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - ⌊(n + 1 : ℚ) / 4⌋ - 2 * ⌊(n + 4 : ℚ) / 4⌋

end

end A056991.P16194427376387193151

namespace A056991

/-- `3*(n+1)-floor((n+1)/4)-2*floor((n+4)/4)` -/
def P16194427376387193151.Spec : Prop :=
  ∀ n, P16194427376387193151.a n = A056991 (n + 1)

end A056991

/-! ## A056991.P16316765929916622804

`floor(∑[3/gcd(2, ∑[n])])`
-/

namespace A056991.P16316765929916622804
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A056991.P16316765929916622804

namespace A056991

/-- `floor(∑[3/gcd(2, ∑[n])])` -/
def P16316765929916622804.Spec : Prop :=
  ∀ n, P16316765929916622804.a n = A056991 (n + 1)

end A056991

/-! ## A056991.P15127950466306956916

`∑[abs(a(n-4))]` with `a(0)=1, a(1)=3, a(2)=3, a(3)=2`
-/

namespace A056991.P15127950466306956916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056991.P15127950466306956916

namespace A056991

/-- `∑[abs(a(n-4))]` -/
def P15127950466306956916.Spec : Prop :=
  ∀ n, (P15127950466306956916.a n : ℤ) = A056991 (n + 1)

end A056991

/-! ## A056991.P2079965988136256647

`∑[dr(a(n-4))]` with `a(0)=1, a(1)=3, a(2)=3, a(3)=2`
-/

namespace A056991.P2079965988136256647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056991.P2079965988136256647

namespace A056991

/-- `∑[dr(a(n-4))]` -/
def P2079965988136256647.Spec : Prop :=
  ∀ n, (P2079965988136256647.a n : ℤ) = A056991 (n + 1)

end A056991

/-! ## A056991.P13458173548622601241

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=3, a(2)=3, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A056991.P13458173548622601241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056991.P13458173548622601241

namespace A056991

/-- `∑[floor(a(n-4))]` -/
def P13458173548622601241.Spec : Prop :=
  ∀ n, (P13458173548622601241.a n : ℤ) = A056991 (n + 1)

end A056991

/-! ## A056991.P4659875603277269807

`∑[ceil(a(n-4))]` with `a(0)=1, a(1)=3, a(2)=3, a(3)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A056991.P4659875603277269807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056991.P4659875603277269807

namespace A056991

/-- `∑[ceil(a(n-4))]` -/
def P4659875603277269807.Spec : Prop :=
  ∀ n, (P4659875603277269807.a n : ℤ) = A056991 (n + 1)

end A056991

/-! ## A056991.P17842806486242828912

`∑[round(a(n-4))]` with `a(0)=1, a(1)=3, a(2)=3, a(3)=2`

`round` is left out, it is the identity on integers.
-/

namespace A056991.P17842806486242828912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056991.P17842806486242828912

namespace A056991

/-- `∑[round(a(n-4))]` -/
def P17842806486242828912.Spec : Prop :=
  ∀ n, (P17842806486242828912.a n : ℤ) = A056991 (n + 1)

end A056991

/-! ## A056991.P17216043682876682524

`∑[3-((n+2)%4)%3]`
-/

namespace A056991.P17216043682876682524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (((n + 2) % 4 % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056991.P17216043682876682524

namespace A056991

/-- `∑[3-((n+2)%4)%3]` -/
def P17216043682876682524.Spec : Prop :=
  ∀ n, P17216043682876682524.a n = A056991 (n + 1)

end A056991

/-! ## A056991.P1234178494801795066

`∑[a(n-4)%4]` with `a(0)=1, a(1)=3, a(2)=3, a(3)=2`
-/

namespace A056991.P1234178494801795066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3, 2] fun n f1 =>
  f1 (n - 4) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056991.P1234178494801795066

namespace A056991

/-- `∑[a(n-4)%4]` -/
def P1234178494801795066.Spec : Prop :=
  ∀ n, (P1234178494801795066.a n : ℤ) = A056991 (n + 1)

end A056991

/-! ## A056991.P9448033682266320099

`∑[gcd(6, a(n-4))]` with `a(0)=1, a(1)=3, a(2)=3, a(3)=2`
-/

namespace A056991.P9448033682266320099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3, 2] fun n f1 =>
  Nat.gcd 6 (f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056991.P9448033682266320099

namespace A056991

/-- `∑[gcd(6, a(n-4))]` -/
def P9448033682266320099.Spec : Prop :=
  ∀ n, (P9448033682266320099.a n : ℤ) = A056991 (n + 1)

end A056991

/-! ## A056991.P12587356109616089751

`∑[and(3, a(n-4))]` with `a(0)=1, a(1)=3, a(2)=3, a(3)=2`
-/

namespace A056991.P12587356109616089751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3, 2] fun n f1 =>
  Nat.land 3 (f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056991.P12587356109616089751

namespace A056991

/-- `∑[and(3, a(n-4))]` -/
def P12587356109616089751.Spec : Prop :=
  ∀ n, (P12587356109616089751.a n : ℤ) = A056991 (n + 1)

end A056991

/-! ## A056991.P6485489842087913793

`record[dr((2*n)²-3)+n-2]`
-/

namespace A056991.P6485489842087913793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (((2 * n) ^ 2 : ℤ) - 3) : ℤ) + ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056991.P6485489842087913793

namespace A056991

/-- `record[dr((2*n)²-3)+n-2]` -/
def P6485489842087913793.Spec : Prop :=
  ∀ n, P6485489842087913793.a n = A056991 (n + 1)

end A056991

/-! ## A056991.P6517095556607195400

`∑[∑[ogf((1+3x+3x^2+2x^3)/(1+x+x^2+x^3))]]`
-/

namespace A056991.P6517095556607195400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 3, 2] [1, 1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056991.P6517095556607195400

namespace A056991

/-- `∑[∑[ogf((1+3x+3x^2+2x^3)/(1+x+x^2+x^3))]]` -/
def P6517095556607195400.Spec : Prop :=
  ∀ n, P6517095556607195400.a n = A056991 (n + 1)

end A056991

/-! ## A056991.P16048373485441977616

`∪[2*n+1+n, 9*(n+1)]`
-/

namespace A056991.P16048373485441977616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A056991.P16048373485441977616

namespace A056991

/-- `∪[2*n+1+n, 9*(n+1)]` -/
def P16048373485441977616.Spec : Prop :=
  ∀ n, (P16048373485441977616.a n : ℤ) = A056991 (n + 1)

end A056991

/-! ## A056991.P7142559770782682196

`record[n+1-dr((n+1)*2*n)]`
-/

namespace A056991.P7142559770782682196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (SequenceMachineLib.digitalRoot ((n + 1) * (2 * n) : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056991.P7142559770782682196

namespace A056991

/-- `record[n+1-dr((n+1)*2*n)]` -/
def P7142559770782682196.Spec : Prop :=
  ∀ n, P7142559770782682196.a n = A056991 (n + 1)

end A056991

/-! ## A056991.P8808922528603168901

`∑[(1/a(n-4))^(-1)]` with `a(0)=1, a(1)=3, a(2)=3, a(3)=2`
-/

namespace A056991.P8808922528603168901
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3, 3, 2] fun n f1 =>
  (1 / f1 (n - 4)) ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056991.P8808922528603168901

namespace A056991

/-- `∑[(1/a(n-4))^(-1)]` -/
def P8808922528603168901.Spec : Prop :=
  ∀ n, P8808922528603168901.a n = (A056991 (n + 1) : ℚ)

end A056991

/-! ## A056991.P3119360661693175721

`∑[(a(n-4)^(-1))^(-1)]` with `a(0)=1, a(1)=3, a(2)=3, a(3)=2`
-/

namespace A056991.P3119360661693175721
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3, 3, 2] fun n f1 =>
  (f1 (n - 4) ^ (-1 : ℤ)) ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056991.P3119360661693175721

namespace A056991

/-- `∑[(a(n-4)^(-1))^(-1)]` -/
def P3119360661693175721.Spec : Prop :=
  ∀ n, P3119360661693175721.a n = (A056991 (n + 1) : ℚ)

end A056991

/-! ## A056991.P7033897015802441254

`ceil(xor(2, n+2)/4+2*n+1)`
-/

namespace A056991.P7033897015802441254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 2 (n + 2) : ℚ) / 4 + (2 * n + 1 : ℚ)⌉

end

end A056991.P7033897015802441254

namespace A056991

/-- `ceil(xor(2, n+2)/4+2*n+1)` -/
def P7033897015802441254.Spec : Prop :=
  ∀ n, P7033897015802441254.a n = A056991 (n + 1)

end A056991

/-! ## A056991.P5886470588365735915

`∑[2*a(n-4)-a(n-4)]` with `a(0)=1, a(1)=3, a(2)=3, a(3)=2`
-/

namespace A056991.P5886470588365735915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3, 2] fun n f1 =>
  2 * f1 (n - 4) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056991.P5886470588365735915

namespace A056991

/-- `∑[2*a(n-4)-a(n-4)]` -/
def P5886470588365735915.Spec : Prop :=
  ∀ n, P5886470588365735915.a n = A056991 (n + 1)

end A056991

/-!
# A056992: Digital roots of square numbers A000290.

The programs for A056992, the canonical program `A056992.P7847696363629511793` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056992 has offset 1).

The definition of A056992 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056992.P7847696363629511793

`dr((n+1)²)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056992

/-- `dr((n+1)²)` -/
def P7847696363629511793.Spec : Prop :=
  ∀ n, (P7847696363629511793.a n : ℤ) = A056992 (n + 1)

theorem P7847696363629511793.correct : P7847696363629511793.Spec := by
  intro n
  simp only [A056992, Nat.add_sub_cancel]

end A056992

/-!
# A056993: a(n) is the smallest k >= 2 such that k^(2^n)+1 is prime, or -1 if no such k exists.

The programs for A056993, there is no canonical definition to state claims against.
-/

/-! ## A056993.P18329936707140559682

`A085398(2^(n+1))`
-/

namespace A056993.P18329936707140559682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (2 ^ (n + 1))

end

end A056993.P18329936707140559682

/-! ## A056993.P13250739732761413398

`lcm(2, A085398(A198633(n)))`
-/

namespace A056993.P13250739732761413398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A085398 (A198633 n).toNat)

end

end A056993.P13250739732761413398

/-! ## A056993.P11175072084898129429

`lcm(1-and(2, n), A085398(A016116(2*(n+1))))`
-/

namespace A056993.P11175072084898129429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A085398 (A016116 (2 * (n + 1))).toNat)

end

end A056993.P11175072084898129429

/-! ## A056993.P3250735302091698721

`A043568(n)*A085398(A198633(n))`
-/

namespace A056993.P3250735302091698721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 n * A085398 (A198633 n).toNat

end

end A056993.P3250735302091698721

/-! ## A056993.P9142371165224125493

`A085398(A198633(n))*A127836(n)`
-/

namespace A056993.P9142371165224125493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (A198633 n).toNat * A127836 n

end

end A056993.P9142371165224125493

/-!
# A056994: Numbers k such that k^128 + 1 is prime.

The programs for A056994, there is no canonical definition to state claims against.
-/

/-! ## A056994.P12781367995217088658

`sqrt(∩[A006316(n+1), n²])`
-/

namespace A056994.P12781367995217088658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006316 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A056994.P12781367995217088658

/-!
# A056996: Positive integers not of the form sigma(k) + phi(k) - 2k for some k.

The programs for A056996, there is no canonical definition to state claims against.
-/

/-! ## A056996.P6670072241877532574

`comp[A278373(n+1)]%A080194(2*n+3)`
-/

namespace A056996.P6670072241877532574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278373 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A080194 (2 * n + 3))

end

end A056996.P6670072241877532574

/-! ## A056996.P8480443196025566761

`eq[0, char[A278373(n+1)]]`
-/

namespace A056996.P8480443196025566761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278373 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056996.P8480443196025566761

/-! ## A056996.P8752424093513452739

`A195140(comp[A278373(n+1)])`
-/

namespace A056996.P8752424093513452739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278373 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A056996.P8752424093513452739

/-! ## A056996.P3352976742151105122

`lt[char[A278373(n+1)], A057427(n)]`
-/

namespace A056996.P3352976742151105122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278373 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A056996.P3352976742151105122

/-! ## A056996.P10560358043954754318

`lt[char[A278373(n+1)]*A007510(n+1), 1]`
-/

namespace A056996.P10560358043954754318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278373 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A007510 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A056996.P10560358043954754318

