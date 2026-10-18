import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B008.C000
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
import Seq.Opaque.C024

/-!
# A219900: Number of ACT classes of Butson-type Hadamard matrices of order 2n over 4th roots of unity.

The programs for A219900, there is no canonical definition to state claims against.
-/

/-! ## A219900.P6254572477889166891

`A108437(A171024(n+1))`
-/

namespace A219900.P6254572477889166891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108437 (A171024 (n + 1)).toNat

end

end A219900.P6254572477889166891

/-! ## A219900.P586394781248772526

`xor(n, A007425(A041705(n)))`
-/

namespace A219900.P586394781248772526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A007425 (A041705 n).toNat)

end

end A219900.P586394781248772526

/-!
# A219901: Number of isomorphism classes of IPR nanocones with 3 pentagons and a symmetric boundary of length n.

The programs for A219901, there is no canonical definition to state claims against.
-/

/-! ## A219901.P7808453281831516358

`A008769(A004273(n))-A152271(n)`
-/

namespace A219901.P7808453281831516358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008769 (A004273 n).toNat - A152271 n

end

end A219901.P7808453281831516358

/-! ## A219901.P3076272247784293765

`A008769(record[A338744(n+1)])-A152271(n)`
-/

namespace A219901.P3076272247784293765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008769 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A152271 n

end

end A219901.P3076272247784293765

/-! ## A219901.P5300881963078889029

`A335469(A361275(n+1))`
-/

namespace A219901.P5300881963078889029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335469 (A361275 (n + 1)).toNat

end

end A219901.P5300881963078889029

/-! ## A219901.P16747787459550277747

`A344608(A032559(n+1))+A173196(n)`
-/

namespace A219901.P16747787459550277747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344608 (A032559 (n + 1)).toNat + A173196 n

end

end A219901.P16747787459550277747

/-! ## A219901.P11195820920979935735

`A347544(n+8)-A031346(A240537(n+4))`
-/

namespace A219901.P11195820920979935735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347544 (n + 8) - A031346 (A240537 (n + 4)).toNat

end

end A219901.P11195820920979935735

/-!
# A219902: Number of isomorphism classes of IPR nanocones with 3 pentagons and a nearsymmetric boundary of length n.

The programs for A219902, there is no canonical definition to state claims against.
-/

/-! ## A219902.P15750844665447152798

`A004396(A006002(n))-A248034(n)`
-/

namespace A219902.P15750844665447152798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A006002 n).toNat - A248034 n

end

end A219902.P15750844665447152798

/-! ## A219902.P6760943317857560285

`A004523(A006002(n))+A210718(n)-A248034(n)`
-/

namespace A219902.P6760943317857560285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A006002 n).toNat + (A210718 n - A248034 n)

end

end A219902.P6760943317857560285

/-! ## A219902.P2165053315418108369

`A004523(A006002(n)-A210718(n))-A248034(n)`
-/

namespace A219902.P2165053315418108369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A006002 n - A210718 n).toNat - A248034 n

end

end A219902.P2165053315418108369

/-! ## A219902.P1549887251740064062

`A004523(A006002(n))-A248034(n*A016236(n))`
-/

namespace A219902.P1549887251740064062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A006002 n).toNat - A248034 ((n : ℤ) * A016236 n).toNat

end

end A219902.P1549887251740064062

/-! ## A219902.P16704658500778034045

`(A004523(A006002(n))-A248034(n))%A071568(n)`
-/

namespace A219902.P16704658500778034045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004523 (A006002 n).toNat - A248034 n) (A071568 n)

end

end A219902.P16704658500778034045

/-!
# A219903: Number of isomorphism classes of IPR nanocones with 4 pentagons and a symmetric boundary of length n.

The programs for A219903, there is no canonical definition to state claims against.
-/

/-! ## A219903.P5178343792904322776

`∑[∑[A290870(A006319(n))]]`
-/

namespace A219903.P5178343792904322776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290870 (A006319 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219903.P5178343792904322776

/-! ## A219903.P12062024441270341374

`A001006(n)-A000164(A006889(n))`
-/

namespace A219903.P12062024441270341374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A000164 (A006889 n).toNat

end

end A219903.P12062024441270341374

/-! ## A219903.P17487905387128757528

`A113512(A097081(n))*A185283(n)`
-/

namespace A219903.P17487905387128757528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113512 (A097081 n).toNat * A185283 n

end

end A219903.P17487905387128757528

/-! ## A219903.P16021473830840086099

`A293638(n)*A293664(A293775(n))`
-/

namespace A219903.P16021473830840086099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293638 n * A293664 (A293775 n).toNat

end

end A219903.P16021473830840086099

/-!
# A219904: Number of isomorphism classes of IPR nanocones with 4 pentagons and a nearsymmetric boundary of length n.

The programs for A219904, there is no canonical definition to state claims against.
-/

/-! ## A219904.P5123769489151039125

`A007504(A042642(n))%A042693(n)`
-/

namespace A219904.P5123769489151039125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 (A042642 n).toNat) (A042693 n)

end

end A219904.P5123769489151039125

/-! ## A219904.P17527744433569292310

`A050363(n+1)*A051775(A258789(n))`
-/

namespace A219904.P17527744433569292310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050363 (n + 1) * A051775 (A258789 n).toNat

end

end A219904.P17527744433569292310

/-! ## A219904.P10378598379678250297

`A051775(A258789(n))*A211992(3*n+5)`
-/

namespace A219904.P10378598379678250297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051775 (A258789 n).toNat * A211992 (3 * n + 5)

end

end A219904.P10378598379678250297

/-!
# A219905: Number of isomorphism classes of IPR nanocones with 5 pentagons and a symmetric boundary of length n.

The programs for A219905, there is no canonical definition to state claims against.
-/

/-! ## A219905.P13028780085195347003

`A106442(C(n+1, 10))`
-/

namespace A219905.P13028780085195347003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106442 (Nat.choose (n + 1) 10)

end

end A219905.P13028780085195347003

/-! ## A219905.P12221886196483120169

`A106444(C(n+1, 10))`
-/

namespace A219905.P12221886196483120169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106444 (Nat.choose (n + 1) 10)

end

end A219905.P12221886196483120169

/-! ## A219905.P17085493852837988176

`A130446((n²+5)*n/6+1)-((n²+5)*n/6+1)`
-/

namespace A219905.P17085493852837988176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130446 (SequenceMachineLib.roundAway ((n ^ 2 + 5 : ℚ) * ((n : ℚ) / 6) + 1)).toNat : ℚ) - ((n ^ 2 + 5 : ℚ) * ((n : ℚ) / 6) + 1)

end

end A219905.P17085493852837988176

/-! ## A219905.P9842233751677746178

`A106442(A243745(n+1))`
-/

namespace A219905.P9842233751677746178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106442 (A243745 (n + 1 + 10)).toNat

end

end A219905.P9842233751677746178

/-! ## A219905.P1522956419723173485

`A210718(A309624(n+1))`
-/

namespace A219905.P1522956419723173485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210718 (A309624 (n + 1)).toNat

end

end A219905.P1522956419723173485

/-!
# A219906: Number of different straight line programs of length n.

The programs for A219906, there is no canonical definition to state claims against.
-/

/-! ## A219906.P4574588350805877715

`A276796(∑[(n+2)^n])+n`
-/

namespace A219906.P4574588350805877715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A219906.P4574588350805877715

/-!
# A219908: Primes of the form 4*x^2+2*x*y+7*y^2, for x >= 0, y >= 0.

The programs for A219908, there is no canonical definition to state claims against.
-/

/-! ## A219908.P11301702242569050213

`p?[A219907(n+1)]`
-/

namespace A219908.P11301702242569050213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A219908.P11301702242569050213

/-! ## A219908.P9464590325340528741

`p?[record[A219907(A324347(n))]]`
-/

namespace A219908.P9464590325340528741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219907 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A219908.P9464590325340528741

/-! ## A219908.P13720874481078858502

`∩[A002476(n+1), A219907(n+1)]`
-/

namespace A219908.P13720874481078858502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219908.P13720874481078858502

/-! ## A219908.P8979907219639038471

`∩[A007645(n+1), A219907(n+1)]`
-/

namespace A219908.P8979907219639038471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219908.P8979907219639038471

/-! ## A219908.P6062541244464208553

`∩[A040116(n+1), A219907(n+1)]`
-/

namespace A219908.P6062541244464208553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219908.P6062541244464208553

/-! ## A219908.P17363894135283112197

`∩[A040993(n+1), A219907(n+1)]`
-/

namespace A219908.P17363894135283112197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219908.P17363894135283112197

/-! ## A219908.P13724212207974098225

`∩[A045331(n+1), A219907(n+1)]`
-/

namespace A219908.P13724212207974098225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219908.P13724212207974098225

/-! ## A219908.P15652787172366950181

`∩[A045375(n+1), A219907(n+1)]`
-/

namespace A219908.P15652787172366950181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219908.P15652787172366950181

/-! ## A219908.P9195815107430068826

`∩[A049591(n+1), A219907(n+1)]`
-/

namespace A219908.P9195815107430068826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219908.P9195815107430068826

/-! ## A219908.P2758635512178453233

`∩[A053176(n+1), A219907(n+1)]`
-/

namespace A219908.P2758635512178453233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219908.P2758635512178453233

/-! ## A219908.P1255705346392124955

`∩[A059264(n+1), A219907(n+1)]`
-/

namespace A219908.P1255705346392124955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219908.P1255705346392124955

/-! ## A219908.P9545576109337000437

`∩[A059362(n+1), A219907(n+1)]`
-/

namespace A219908.P9545576109337000437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219908.P9545576109337000437

/-! ## A219908.P9361774713636077477

`∩[A067774(n+1), A219907(n+1)]`
-/

namespace A219908.P9361774713636077477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219908.P9361774713636077477

/-! ## A219908.P11365615270975657133

`∩[A123365(n+1), A219907(n+1)]`
-/

namespace A219908.P11365615270975657133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219908.P11365615270975657133

/-! ## A219908.P12753199690119494487

`∩[A138645(n+1), A219907(n+1)]`
-/

namespace A219908.P12753199690119494487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219908.P12753199690119494487

/-! ## A219908.P13313689270252984542

`∩[A140562(n+1), A219907(n+1)]`
-/

namespace A219908.P13313689270252984542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219908.P13313689270252984542

/-! ## A219908.P13160680237142723620

`∩[A140563(n+1), A219907(n+1)]`
-/

namespace A219908.P13160680237142723620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219908.P13160680237142723620

/-! ## A219908.P9148874206510182930

`∩[A167464(n+1), A219907(n+1)]`
-/

namespace A219908.P9148874206510182930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219908.P9148874206510182930

/-! ## A219908.P17149395228143078268

`∩[A216734(n+1), A219907(n+1)]`
-/

namespace A219908.P17149395228143078268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219908.P17149395228143078268

/-! ## A219908.P7055987292339301272

`∩[A216737(n+1), A219907(n+1)]`
-/

namespace A219908.P7055987292339301272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219908.P7055987292339301272

/-!
# A219909: Number of n X n arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 n X n array.

The programs for A219909, there is no canonical definition to state claims against.
-/

/-! ## A219909.P3529550896277164809

`A219915(∑[4*n]+1)`
-/

namespace A219909.P3529550896277164809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219915 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219909.P3529550896277164809

/-! ## A219909.P4710054297435423172

`and(-1, A219915(A001844(n)))`
-/

namespace A219909.P4710054297435423172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A219915 (A001844 n).toNat)

end

end A219909.P4710054297435423172

/-! ## A219909.P17705120360517931389

`A316868(n)+A219915(n²+(n+1)²)`
-/

namespace A219909.P17705120360517931389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 n + A219915 (n ^ 2 + (n + 1) ^ 2)

end

end A219909.P17705120360517931389

/-!
# A219910: Number of nX3 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 nX3 array.

The programs for A219910, there is no canonical definition to state claims against.
-/

/-! ## A219910.P146584343276033164

`A219915(∑[n+3]+1)`
-/

namespace A219910.P146584343276033164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219915 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219910.P146584343276033164

/-! ## A219910.P7091403587653109120

`A219915(A034856(n+2))+C(n, 64)`
-/

namespace A219910.P7091403587653109120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219915 (A034856 (n + 2)).toNat + (Nat.choose n 64 : ℤ)

end

end A219910.P7091403587653109120

/-! ## A219910.P7896790595920040016

`A008327(n)*A219915(A034856(n+2))`
-/

namespace A219910.P7896790595920040016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008327 n * A219915 (A034856 (n + 2)).toNat

end

end A219910.P7896790595920040016

/-! ## A219910.P10615967357142354104

`A219208(n)*A219915(A034856(n+2))`
-/

namespace A219910.P10615967357142354104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219208 n * A219915 (A034856 (n + 2)).toNat

end

end A219910.P10615967357142354104

/-! ## A219910.P13118431175722695127

`A219915(A034856(n+2))%A097512(n)`
-/

namespace A219910.P13118431175722695127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219915 (A034856 (n + 2)).toNat) (A097512 n)

end

end A219910.P13118431175722695127

/-!
# A219911: Number of nX4 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 nX4 array.

The programs for A219911, there is no canonical definition to state claims against.
-/

/-! ## A219911.P13412242468984521864

`A219915(∑[n+4]+3)`
-/

namespace A219911.P13412242468984521864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219915 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A219911.P13412242468984521864

/-! ## A219911.P7056178636715897030

`A219915(A141214(n+1))/A008327(n)`
-/

namespace A219911.P7056178636715897030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219915 (A141214 (n + 1)).toNat : ℚ) / (A008327 n : ℚ)

end

end A219911.P7056178636715897030

/-! ## A219911.P4479710488663208633

`A219915(A141214(n+1))/A047996(n)`
-/

namespace A219911.P4479710488663208633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219915 (A141214 (n + 1)).toNat : ℚ) / (A047996 n : ℚ)

end

end A219911.P4479710488663208633

/-! ## A219911.P2867555470234492633

`A219915(A141214(n+1))/A219208(n)`
-/

namespace A219911.P2867555470234492633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219915 (A141214 (n + 1)).toNat : ℚ) / (A219208 n : ℚ)

end

end A219911.P2867555470234492633

/-! ## A219911.P15784756856089500054

`A219915(A056000(n)+7)*A336865(n+1)`
-/

namespace A219911.P15784756856089500054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219915 (A056000 n + 7).toNat * A336865 (n + 1)

end

end A219911.P15784756856089500054

/-!
# A219912: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 nX5 array.

The programs for A219912, there is no canonical definition to state claims against.
-/

/-! ## A219912.P7235735753215713010

`A219915(∑[n+5]+6)`
-/

namespace A219912.P7235735753215713010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219915 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A219912.P7235735753215713010

/-!
# A219913: Number of n X 6 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 n X 6 array.

The programs for A219913, there is no canonical definition to state claims against.
-/

/-! ## A219913.P6016264954018101551

`A219915(A052905(n+3))`
-/

namespace A219913.P6016264954018101551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219915 (A052905 (n + 3)).toNat

end

end A219913.P6016264954018101551

/-! ## A219913.P8633734182354367974

`A219915(A056119(n)+16)`
-/

namespace A219913.P8633734182354367974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219915 (A056119 n + 16).toNat

end

end A219913.P8633734182354367974

/-! ## A219913.P14073613267785323385

`A219915(eq[3, A219347(n)])`
-/

namespace A219913.P14073613267785323385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219915 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219913.P14073613267785323385

/-! ## A219913.P17092748834569311644

`A219915(eq[5, A193592(n)])`
-/

namespace A219913.P17092748834569311644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219915 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219913.P17092748834569311644

/-! ## A219913.P17593570693270052597

`A219915(eq[16, A209439(n)])`
-/

namespace A219913.P17593570693270052597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219915 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219913.P17593570693270052597

/-!
# A219914: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 nX7 array.

The programs for A219914, there is no canonical definition to state claims against.
-/

/-! ## A219914.P5083735203216154956

`A219915(C(n+7, 2)+n+1)`
-/

namespace A219914.P5083735203216154956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219915 (Nat.choose (n + 7) 2 + (n + 1))

end

end A219914.P5083735203216154956

/-! ## A219914.P6839159500721779375

`A219915(A055999(n+4))`
-/

namespace A219914.P6839159500721779375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219915 (A055999 (n + 4)).toNat

end

end A219914.P6839159500721779375

/-! ## A219914.P11097253564316981419

`A219915(eq[4, A219347(n)])`
-/

namespace A219914.P11097253564316981419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219915 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219914.P11097253564316981419

/-! ## A219914.P3836440870436664842

`A219915(eq[6, A193592(n)])`
-/

namespace A219914.P3836440870436664842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219915 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219914.P3836440870436664842

/-!
# A219915: T(n,k)=Number of nXk arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 nXk array.

The programs for A219915, there is no canonical definition to state claims against.
-/

/-! ## A219915.P11996285101409614334

`A219217(A141258(n+1)^A008327(n))`
-/

namespace A219915.P11996285101409614334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219217 (SequenceMachineLib.roundAway ((A141258 (n + 1) : ℚ) ^ (A008327 n : ℤ))).toNat

end

end A219915.P11996285101409614334

/-! ## A219915.P15578579674714703368

`A219217(A141258(n+1)^A047996(n))`
-/

namespace A219915.P15578579674714703368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219217 (SequenceMachineLib.roundAway ((A141258 (n + 1) : ℚ) ^ (A047996 n : ℤ))).toNat

end

end A219915.P15578579674714703368

/-! ## A219915.P6624176387095760938

`A219217(A141258(n+1)^A219208(n))`
-/

namespace A219915.P6624176387095760938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219217 (SequenceMachineLib.roundAway ((A141258 (n + 1) : ℚ) ^ (A219208 n : ℤ))).toNat

end

end A219915.P6624176387095760938

/-! ## A219915.P2303856093615787043

`A219217(C(A141258(n+1), A219208(n)))`
-/

namespace A219915.P2303856093615787043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219217 (Nat.choose (A141258 (n + 1)).toNat (A219208 n).toNat)

end

end A219915.P2303856093615787043

/-! ## A219915.P1687394762957298572

`A219217(A141258(n+1)%A036688(n+1))`
-/

namespace A219915.P1687394762957298572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219217 (Int.tmod (A141258 (n + 1)) (A036688 (n + 1))).toNat

end

end A219915.P1687394762957298572

/-!
# A219916: Number of 3 X n arrays of the minimum value of corresponding elements and their horizontal, diagonal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 3 X n array.

The programs for A219916, there is no canonical definition to state claims against.
-/

/-! ## A219916.P1190324040604298937

`A219915(∑[n+2]+4)`
-/

namespace A219916.P1190324040604298937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219915 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A219916.P1190324040604298937

/-! ## A219916.P14861631643144874605

`A219915(A167614(n+1))+A025437(n)`
-/

namespace A219916.P14861631643144874605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219915 (A167614 (n + 1)).toNat + A025437 n

end

end A219916.P14861631643144874605

/-! ## A219916.P9640440810199133373

`A219915(A167614(n+1))+A025469(n)`
-/

namespace A219916.P9640440810199133373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219915 (A167614 (n + 1)).toNat + A025469 n

end

end A219916.P9640440810199133373

/-! ## A219916.P13656782353021652126

`A219915(A167614(n+1))+A185238(n)`
-/

namespace A219916.P13656782353021652126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219915 (A167614 (n + 1)).toNat + A185238 n

end

end A219916.P13656782353021652126

/-! ## A219916.P17561765772473466972

`A219915(A167614(n+1))%A001556(n)`
-/

namespace A219916.P17561765772473466972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219915 (A167614 (n + 1)).toNat) (A001556 n)

end

end A219916.P17561765772473466972

/-!
# A219917: Number of 4Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 4Xn array.

The programs for A219917, there is no canonical definition to state claims against.
-/

/-! ## A219917.P9228339844393707388

`A219915(∑[n+3]+7)`
-/

namespace A219917.P9228339844393707388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219915 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A219917.P9228339844393707388

/-! ## A219917.P17378168488921287673

`record[A219915(A252460(2*n+5)+3)]`
-/

namespace A219917.P17378168488921287673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219915 (A252460 (2 * n + 5) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219917.P17378168488921287673

/-!
# A219918: Number of 5Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 5Xn array.

The programs for A219918, there is no canonical definition to state claims against.
-/

/-! ## A219918.P17594072319109818607

`A219915(∑[n+4]+11)`
-/

namespace A219918.P17594072319109818607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219915 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A219918.P17594072319109818607

/-!
# A219919: Number of 6Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 6Xn array.

The programs for A219919, there is no canonical definition to state claims against.
-/

/-! ## A219919.P6216821413575673753

`A219915(∑[n+5]+16)`
-/

namespace A219919.P6216821413575673753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219915 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A219919.P6216821413575673753

/-!
# A219920: Number of 7Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 7Xn array.

The programs for A219920, there is no canonical definition to state claims against.
-/

/-! ## A219920.P15964801616032046970

`A219915(C(n+7, 2)+7)`
-/

namespace A219920.P15964801616032046970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219915 (Nat.choose (n + 7) 2 + 7)

end

end A219920.P15964801616032046970

/-! ## A219920.P5228885976417555646

`A219915(A056119(n)+28)`
-/

namespace A219920.P5228885976417555646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219915 (A056119 n + 28).toNat

end

end A219920.P5228885976417555646

/-! ## A219920.P17690301331789115210

`A219915(eq[11, A066657(n)])`
-/

namespace A219920.P17690301331789115210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219915 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219920.P17690301331789115210

/-! ## A219920.P15482757429700088195

`A219915(A133263(n+6)+5)`
-/

namespace A219920.P15482757429700088195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219915 (A133263 (n + 6) + 5).toNat

end

end A219920.P15482757429700088195

/-!
# A219923: Number of ways to write n=x+y (x>0, y>0) with x-1, x+1 and 2*x*y+1 all prime.

The programs for A219923, there is no canonical definition to state claims against.
-/

/-! ## A219923.P15329493981136343827

`A341618(A015128(n)*A034868(n))`
-/

namespace A219923.P15329493981136343827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341618 (A015128 n * A034868 n).toNat

end

end A219923.P15329493981136343827

/-!
# A219924: Number A(n,k) of tilings of a k X n rectangle using integer-sided square tiles; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A219924, there is no canonical definition to state claims against.
-/

/-! ## A219924.P16279870598894013485

`A048266(A226444(n))`
-/

namespace A219924.P16279870598894013485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (A226444 n).toNat

end

end A219924.P16279870598894013485

/-! ## A219924.P8316228949417793217

`A101157(A226444(n)²)`
-/

namespace A219924.P8316228949417793217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101157 (A226444 n ^ 2).toNat

end

end A219924.P8316228949417793217

/-! ## A219924.P228602233237179894

`A372825(2*A226444(n))`
-/

namespace A219924.P228602233237179894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372825 (2 * A226444 n).toNat

end

end A219924.P228602233237179894

/-! ## A219924.P17034935160695541340

`A226444(n)%A087215(n)²`
-/

namespace A219924.P17034935160695541340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226444 n) (A087215 n ^ 2)

end

end A219924.P17034935160695541340

/-! ## A219924.P9964000624446175275

`gcd(A007318(n)!, A226444(n))`
-/

namespace A219924.P9964000624446175275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A007318 n).toNat : ℤ) (A226444 n)

end

end A219924.P9964000624446175275

/-!
# A219925: Number of tilings of a 6 X n rectangle using integer-sided square tiles.

The programs for A219925, there is no canonical definition to state claims against.
-/

/-! ## A219925.P296304938211602686

`A219924(C(n+7, 2)+n)`
-/

namespace A219925.P296304938211602686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 (Nat.choose (n + 7) 2 + n)

end

end A219925.P296304938211602686

/-! ## A219925.P980642304808981132

`A219924(eq[6, A002262(n)])`
-/

namespace A219925.P980642304808981132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219925.P980642304808981132

/-! ## A219925.P13781246137645761920

`A219924(eq[6, A025581(n)])`
-/

namespace A219925.P13781246137645761920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219925.P13781246137645761920

/-! ## A219925.P8529170651014111900

`A219924(eq[8, A141169(n)])`
-/

namespace A219925.P8529170651014111900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219925.P8529170651014111900

/-! ## A219925.P17923192655004992599

`A219924(eq[13, A099375(n)])`
-/

namespace A219925.P17923192655004992599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219925.P17923192655004992599

/-!
# A219926: Number of tilings of a 7 X n rectangle using integer-sided square tiles.

The programs for A219926, there is no canonical definition to state claims against.
-/

/-! ## A219926.P2356996746076896002

`A219924(eq[7, A002262(n)])`
-/

namespace A219926.P2356996746076896002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219926.P2356996746076896002

/-! ## A219926.P11838101162369827611

`A219924(eq[7, A025581(n)])`
-/

namespace A219926.P11838101162369827611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219926.P11838101162369827611

/-! ## A219926.P2210876413619973630

`A219924(eq[13, A141169(n)])`
-/

namespace A219926.P2210876413619973630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219926.P2210876413619973630

/-! ## A219926.P1591587254661563208

`A219924(eq[15, A099375(n)])`
-/

namespace A219926.P1591587254661563208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219926.P1591587254661563208

/-! ## A219926.P9002032319124731965

`A219924(A000217(n+8)-8)`
-/

namespace A219926.P9002032319124731965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 (A000217 (n + 8) - 8).toNat

end

end A219926.P9002032319124731965

/-!
# A219927: Number of tilings of an 8 X n rectangle using integer-sided square tiles.

The programs for A219927, there is no canonical definition to state claims against.
-/

/-! ## A219927.P5487913275033257569

`A219924(A155212(n+5)-1)`
-/

namespace A219927.P5487913275033257569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 (A155212 (n + 5) - 1).toNat

end

end A219927.P5487913275033257569

/-! ## A219927.P16354564973463204490

`A219924(A000124(n+8)+7)`
-/

namespace A219927.P16354564973463204490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 (A000124 (n + 8) + 7).toNat

end

end A219927.P16354564973463204490

/-! ## A219927.P10565384597162509393

`A219924(A000096(n+7)+9)`
-/

namespace A219927.P10565384597162509393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 (A000096 (n + 7) + 9).toNat

end

end A219927.P10565384597162509393

/-! ## A219927.P3485926499363269641

`A219924(A000217(n+8)+8)`
-/

namespace A219927.P3485926499363269641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 (A000217 (n + 8) + 8).toNat

end

end A219927.P3485926499363269641

/-! ## A219927.P13859520599761494671

`A219924(A055998(n+6)+11)`
-/

namespace A219927.P13859520599761494671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 (A055998 (n + 6) + 11).toNat

end

end A219927.P13859520599761494671

/-!
# A219928: Number of tilings of a 9 X n rectangle using integer-sided square tiles.

The programs for A219928, there is no canonical definition to state claims against.
-/

/-! ## A219928.P11226075490964782310

`A219924(eq[9, A002262(n)])`
-/

namespace A219928.P11226075490964782310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219928.P11226075490964782310

/-! ## A219928.P18155746335909081551

`A219924(eq[9, A025581(n)])`
-/

namespace A219928.P18155746335909081551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219928.P18155746335909081551

/-! ## A219928.P9857657057642944339

`A219924(A000217(n+10)-10)`
-/

namespace A219928.P9857657057642944339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 (A000217 (n + 10) - 10).toNat

end

end A219928.P9857657057642944339

/-! ## A219928.P492288107759758638

`A219924(eq[10, A002260(n+1)])`
-/

namespace A219928.P492288107759758638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219928.P492288107759758638

/-! ## A219928.P12550510962822283756

`A219924(Δ[n²]+A055998(n+6)+11)`
-/

namespace A219928.P12550510962822283756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A055998 (n + 6) + 11)).toNat

end

end A219928.P12550510962822283756

/-!
# A219929: Number of tilings of a 10 X n rectangle using integer-sided square tiles.

The programs for A219929, there is no canonical definition to state claims against.
-/

/-! ## A219929.P10127799113744472453

`A219924(eq[10, A002262(n)])`
-/

namespace A219929.P10127799113744472453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219929.P10127799113744472453

/-! ## A219929.P13222376527840552321

`A219924(eq[10, A025581(n)])`
-/

namespace A219929.P13222376527840552321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219929.P13222376527840552321

/-! ## A219929.P6112581622241268709

`A219924(eq[10, A144328(n+1)])`
-/

namespace A219929.P6112581622241268709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219929.P6112581622241268709

/-! ## A219929.P6871293902991598154

`A219924(eq[11, A002260(n+1)])`
-/

namespace A219929.P6871293902991598154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219929.P6871293902991598154

/-! ## A219929.P6797433538423294114

`A219924(eq[11, A004736(n+1)])`
-/

namespace A219929.P6797433538423294114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219929.P6797433538423294114

/-!
# A219931: Coefficients related to an asymptotic expansion of the logarithm of the central binomial.

The programs for A219931, there is no canonical definition to state claims against.
-/

/-! ## A219931.P16928600410928609451

`Δ[n²]*A006519(A162276(n+1))`
-/

namespace A219931.P16928600410928609451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A006519 (A162276 (n + 1)).toNat

end

end A219931.P16928600410928609451

/-! ## A219931.P3593637570165054934

`Δ[n²]*A135517(A158219(n+1))`
-/

namespace A219931.P3593637570165054934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A135517 (A158219 (n + 1)).toNat

end

end A219931.P3593637570165054934

/-! ## A219931.P2471263480979551551

`A006519(n+1)%A273048(n+2)*Δ[n²]`
-/

namespace A219931.P2471263480979551551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006519 (n + 1)) (A273048 (n + 2)) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A219931.P2471263480979551551

/-! ## A219931.P6010988715917999367

`(2*n+1)*(A135481(n)+1)%A263724(n+2)`
-/

namespace A219931.P6010988715917999367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * Int.tmod (A135481 n + 1) (A263724 (n + 2))

end

end A219931.P6010988715917999367

/-! ## A219931.P465838769511029659

`(2*n+1)*gcd(64, A187680(A188061(n+1))+n)`
-/

namespace A219931.P465838769511029659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Int.gcd 64 (A187680 (A188061 (n + 1)).toNat + (n : ℤ))

end

end A219931.P465838769511029659

/-! ## A219931.P3775250974028505385

`(A001222(A161555(n+1))+2*n)*A006519(n+1)`
-/

namespace A219931.P3775250974028505385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (A161555 (n + 1)).toNat + (2 * n : ℤ)) * A006519 (n + 1)

end

end A219931.P3775250974028505385

/-! ## A219931.P12129090062017023569

`Δ[n²]*A006519(A090381(n))`
-/

namespace A219931.P12129090062017023569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A006519 (A090381 n).toNat

end

end A219931.P12129090062017023569

/-! ## A219931.P10938091314618649160

`(2*n+1)*A006519(A245706(n+1))`
-/

namespace A219931.P10938091314618649160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A006519 (A245706 (n + 1)).toNat

end

end A219931.P10938091314618649160

/-! ## A219931.P8547454312291162243

`(2*n+1)*gcd(n+1, (2*n)^n)`
-/

namespace A219931.P8547454312291162243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.gcd (n + 1) ((2 * n) ^ n)

end

end A219931.P8547454312291162243

/-!
# A219932: Number of n X n arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 n X n array.

The programs for A219932, there is no canonical definition to state claims against.
-/

/-! ## A219932.P14007587290271393724

`A219939(∑[4*n]+1)`
-/

namespace A219932.P14007587290271393724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219932.P14007587290271393724

/-!
# A219933: Number of nX2 arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 nX2 array.

The programs for A219933, there is no canonical definition to state claims against.
-/

/-! ## A219933.P16566453603434036478

`A219939(∑[n+2])`
-/

namespace A219933.P16566453603434036478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219933.P16566453603434036478

/-! ## A219933.P8633777952895372355

`record[A219939(A000096(∏{e}[n+1, #]))]`
-/

namespace A219933.P8633777952895372355
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (A000096 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219933.P8633777952895372355

/-! ## A219933.P9222553411313473810

`record[A219939(A000096(val(n+1, 2)+1))]`
-/

namespace A219933.P9222553411313473810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219933.P9222553411313473810

/-! ## A219933.P11120872342142648788

`record[gcd(A219939(n+1), A285152(n+2))]`
-/

namespace A219933.P11120872342142648788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A219939 (n + 1)) (A285152 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219933.P11120872342142648788

/-! ## A219933.P3405040577295453487

`record[A219939(A000096(∑{e}[n+1, #]+1))]`
-/

namespace A219933.P3405040577295453487
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (A000096 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219933.P3405040577295453487

/-!
# A219934: Number of nX3 arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 nX3 array.

The programs for A219934, there is no canonical definition to state claims against.
-/

/-! ## A219934.P7574946516054540314

`A219939(∑[n+3]+1)`
-/

namespace A219934.P7574946516054540314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219934.P7574946516054540314

/-! ## A219934.P8712751663481287592

`record[A219939(A172033(n)+A141214(n))]`
-/

namespace A219934.P8712751663481287592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (A172033 n + A141214 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219934.P8712751663481287592

/-!
# A219935: Number of nX4 arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 nX4 array.

The programs for A219935, there is no canonical definition to state claims against.
-/

/-! ## A219935.P3648860346093442457

`A219939(∑[n+4]+3)`
-/

namespace A219935.P3648860346093442457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A219935.P3648860346093442457

/-! ## A219935.P13912886959666334094

`A219939(A027379(n+2))+A036600(n)`
-/

namespace A219935.P13912886959666334094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (A027379 (n + 2)).toNat + A036600 n

end

end A219935.P13912886959666334094

/-! ## A219935.P15835199549221026145

`A219939(A027379(n+2))+A102683(n)`
-/

namespace A219935.P15835199549221026145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (A027379 (n + 2)).toNat + A102683 n

end

end A219935.P15835199549221026145

/-! ## A219935.P6850096394978608674

`A219939(A027379(n+2))+A217657(n)`
-/

namespace A219935.P6850096394978608674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (A027379 (n + 2)).toNat + A217657 n

end

end A219935.P6850096394978608674

/-!
# A219936: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 nX5 array.

The programs for A219936, there is no canonical definition to state claims against.
-/

/-! ## A219936.P10995809681609564942

`A219939(Δ[A264443(n)])`
-/

namespace A219936.P10995809681609564942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (f1 (n + 1) - f1 n).toNat

end

end A219936.P10995809681609564942

/-! ## A219936.P6858888854955104224

`A219939(A056115(n)+11)`
-/

namespace A219936.P6858888854955104224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (A056115 n + 11).toNat

end

end A219936.P6858888854955104224

/-! ## A219936.P10457731763505824056

`A219939(eq[2, A092921(n)])`
-/

namespace A219936.P10457731763505824056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219936.P10457731763505824056

/-!
# A219937: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 nX6 array.

The programs for A219937, there is no canonical definition to state claims against.
-/

/-! ## A219937.P1331431044169344613

`A219939(A052905(n+3))`
-/

namespace A219937.P1331431044169344613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (A052905 (n + 3)).toNat

end

end A219937.P1331431044169344613

/-! ## A219937.P2472013958978310196

`A219939(A302537(n)+15)`
-/

namespace A219937.P2472013958978310196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (A302537 n + 15).toNat

end

end A219937.P2472013958978310196

/-!
# A219938: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 nX7 array.

The programs for A219938, there is no canonical definition to state claims against.
-/

/-! ## A219938.P9983598678265621998

`A219939(A055999(n+4))`
-/

namespace A219938.P9983598678265621998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (A055999 (n + 4)).toNat

end

end A219938.P9983598678265621998

/-!
# A219940: Number of 2 X n arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 2 X n array.

The programs for A219940, there is no canonical definition to state claims against.
-/

/-! ## A219940.P12523108556365461506

`A219939(∑[n+1]+2)`
-/

namespace A219940.P12523108556365461506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A219940.P12523108556365461506

/-! ## A219940.P2738836318407982872

`record[A219939(n+3)/A048854(n)]`
-/

namespace A219940.P2738836318407982872
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219939 (n + 3) : ℚ) / (A048854 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219940.P2738836318407982872

/-! ## A219940.P14523377906911793488

`record[A219939(A133263(∑{e}[n+1, #]+1))]`
-/

namespace A219940.P14523377906911793488
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (A133263 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219940.P14523377906911793488

/-! ## A219940.P13017520218926447288

`A219939(A133263(n+1))+A036600(n)`
-/

namespace A219940.P13017520218926447288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (A133263 (n + 1)).toNat + A036600 n

end

end A219940.P13017520218926447288

/-! ## A219940.P16097882214431128261

`lcm(A154990(n+1), A219939(A133263(n+1)))`
-/

namespace A219940.P16097882214431128261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A154990 (n + 1)) (A219939 (A133263 (n + 1)).toNat)

end

end A219940.P16097882214431128261

/-!
# A219941: Number of 3 X n arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 3 X n array.

The programs for A219941, there is no canonical definition to state claims against.
-/

/-! ## A219941.P12784713378370424861

`A219939(∑[n+2]+4)`
-/

namespace A219941.P12784713378370424861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A219941.P12784713378370424861

/-! ## A219941.P13504776701337646104

`A219939(A167614(n+1))+char[10]`
-/

namespace A219941.P13504776701337646104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A219941.P13504776701337646104

/-! ## A219941.P13583966364617908317

`A219939(A027379(n)+6)+char[10]`
-/

namespace A219941.P13583966364617908317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (A027379 n + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A219941.P13583966364617908317

/-! ## A219941.P10479423744073088677

`A219939(A055998(n)+6)+char[10]`
-/

namespace A219941.P10479423744073088677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (A055998 n + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A219941.P10479423744073088677

/-! ## A219941.P12667429803449671127

`A219939(A167499(n)+n)+char[10]`
-/

namespace A219941.P12667429803449671127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (A167499 n + (n : ℤ)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A219941.P12667429803449671127

/-!
# A219942: Number of 4Xn arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 4Xn array.

The programs for A219942, there is no canonical definition to state claims against.
-/

/-! ## A219942.P2002847368990830493

`A219939(∑[n+3]+7)`
-/

namespace A219942.P2002847368990830493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A219942.P2002847368990830493

/-! ## A219942.P13194630634153268385

`A219939(A052905(n)+9)+A217657(n)`
-/

namespace A219942.P13194630634153268385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (A052905 n + 9).toNat + A217657 n

end

end A219942.P13194630634153268385

/-! ## A219942.P16388167742018442932

`A007318(C(2, n))*A219939(A052905(n)+9)`
-/

namespace A219942.P16388167742018442932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A219939 (A052905 n + 9).toNat

end

end A219942.P16388167742018442932

/-! ## A219942.P661160145021362512

`A000045(or(n, -2)+3)*A219939(A052905(n)+9)`
-/

namespace A219942.P661160145021362512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.lor (n : ℤ) (-2) + 3).toNat * A219939 (A052905 n + 9).toNat

end

end A219942.P661160145021362512

/-!
# A219943: Number of 5Xn arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 5Xn array.

The programs for A219943, there is no canonical definition to state claims against.
-/

/-! ## A219943.P4213186725137047112

`A219939(∑[2*a(n-1)-a(n-2)])` with `a(0)=15, a(1)=5, a(2)=6`
-/

namespace A219943.P4213186725137047112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [15, 5, 6] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A219943.P4213186725137047112

/-! ## A219943.P12891488725268027542

`A219939(A167499(n+3))`
-/

namespace A219943.P12891488725268027542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (A167499 (n + 3)).toNat

end

end A219943.P12891488725268027542

/-! ## A219943.P18011538655830353626

`A219939(A155212(n)+13)`
-/

namespace A219943.P18011538655830353626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (A155212 n + 13).toNat

end

end A219943.P18011538655830353626

/-! ## A219943.P8525234369788013976

`A219939(A056000(n)+15)`
-/

namespace A219943.P8525234369788013976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (A056000 n + 15).toNat

end

end A219943.P8525234369788013976

/-!
# A219944: Number of 6Xn arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 6Xn array.

The programs for A219944, there is no canonical definition to state claims against.
-/

/-! ## A219944.P13467629753475735166

`A219939(A166136(n+4))`
-/

namespace A219944.P13467629753475735166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (A166136 (n + 4)).toNat

end

end A219944.P13467629753475735166

/-!
# A219945: Number of 7Xn arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 7Xn array.

The programs for A219945, there is no canonical definition to state claims against.
-/

/-! ## A219945.P6676515039260521816

`A219939(A302537(n)+27)`
-/

namespace A219945.P6676515039260521816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (A302537 n + 27).toNat

end

end A219945.P6676515039260521816

/-!
# A219946: Number A(n,k) of tilings of a k X n rectangle using right trominoes and 2 X 2 tiles; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A219946, there is no canonical definition to state claims against.
-/

/-! ## A219946.P14923905113879623192

`A039995(2*A174546(n))`
-/

namespace A219946.P14923905113879623192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039995 (2 * A174546 n).toNat

end

end A219946.P14923905113879623192

/-! ## A219946.P15472948716743234322

`A039997(2*A174546(n))`
-/

namespace A219946.P15472948716743234322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (2 * A174546 n).toNat

end

end A219946.P15472948716743234322

/-! ## A219946.P17348514930051561122

`A178651(2*A101164(n))`
-/

namespace A219946.P17348514930051561122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178651 (2 * A101164 n).toNat

end

end A219946.P17348514930051561122

/-! ## A219946.P14483858158555300522

`A039995(A005843(A174546(n)))`
-/

namespace A219946.P14483858158555300522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039995 (A005843 (A174546 n).toNat).toNat

end

end A219946.P14483858158555300522

/-! ## A219946.P6995286287848640861

`A039995(A174546(n)+A174546(n))`
-/

namespace A219946.P6995286287848640861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039995 (A174546 n + A174546 n).toNat

end

end A219946.P6995286287848640861

/-!
# A219947: Number of tilings of a 6 X n rectangle using right trominoes and 2 X 2 tiles.

The programs for A219947, there is no canonical definition to state claims against.
-/

/-! ## A219947.P1389753264178250549

`A219946(eq[6, A002262(n)])`
-/

namespace A219947.P1389753264178250549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219947.P1389753264178250549

/-! ## A219947.P2935093944519148952

`A219946(eq[6, A025581(n)])`
-/

namespace A219947.P2935093944519148952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219947.P2935093944519148952

/-! ## A219947.P6070916228000254231

`A219946(eq[13, A099375(n)])`
-/

namespace A219947.P6070916228000254231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219947.P6070916228000254231

/-! ## A219947.P13212959284295275635

`A219946(eq[7, A002260(n+1)])`
-/

namespace A219947.P13212959284295275635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219947.P13212959284295275635

/-! ## A219947.P1345660119037425165

`A219946(eq[7, A004736(n+1)])`
-/

namespace A219947.P1345660119037425165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219947.P1345660119037425165

/-!
# A219948: Number of tilings of a 7 X n rectangle using right trominoes and 2 X 2 tiles.

The programs for A219948, there is no canonical definition to state claims against.
-/

/-! ## A219948.P13943871720532505889

`A219946(A155212(n+4))`
-/

namespace A219948.P13943871720532505889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (A155212 (n + 4)).toNat

end

end A219948.P13943871720532505889

/-! ## A219948.P15483841848164982916

`A219946(eq[7, A002262(n)])`
-/

namespace A219948.P15483841848164982916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219948.P15483841848164982916

/-! ## A219948.P14919503547601353275

`A219946(eq[7, A025581(n)])`
-/

namespace A219948.P14919503547601353275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219948.P14919503547601353275

/-! ## A219948.P2772824159083527899

`A219946(eq[15, A099375(n)])`
-/

namespace A219948.P2772824159083527899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219948.P2772824159083527899

/-! ## A219948.P11429333113086387244

`A219946(eq[8, A002260(n+1)])`
-/

namespace A219948.P11429333113086387244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219948.P11429333113086387244

/-!
# A219949: Number of tilings of an 8 X n rectangle using right trominoes and 2 X 2 tiles.

The programs for A219949, there is no canonical definition to state claims against.
-/

/-! ## A219949.P1580876192937204211

`A219946(A167499(n+7)+3)`
-/

namespace A219949.P1580876192937204211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (A167499 (n + 7) + 3).toNat

end

end A219949.P1580876192937204211

/-! ## A219949.P8404614923795753447

`A219946(A000217(n+9)-9)`
-/

namespace A219949.P8404614923795753447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (A000217 (n + 9) - 9).toNat

end

end A219949.P8404614923795753447

/-! ## A219949.P14648456910355785035

`A219946(A133263(n+9)-11)`
-/

namespace A219949.P14648456910355785035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (A133263 (n + 9) - 11).toNat

end

end A219949.P14648456910355785035

/-! ## A219949.P2485759280283063060

`A219946(A000124(n+7)+2*n+7)`
-/

namespace A219949.P2485759280283063060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (A000124 (n + 7) + (2 * n + 7 : ℤ)).toNat

end

end A219949.P2485759280283063060

/-! ## A219949.P11176154276662928562

`A219946(A004273(n+4)+A000124(n+7))`
-/

namespace A219949.P11176154276662928562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (A004273 (n + 4) + A000124 (n + 7)).toNat

end

end A219949.P11176154276662928562

/-!
# A219950: Number of tilings of a 9 X n rectangle using right trominoes and 2 X 2 tiles.

The programs for A219950, there is no canonical definition to state claims against.
-/

/-! ## A219950.P11950316792283606898

`A219946(A056000(n+6))`
-/

namespace A219950.P11950316792283606898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (A056000 (n + 6)).toNat

end

end A219950.P11950316792283606898

/-! ## A219950.P1641239396540419430

`A219946(A052905(n+7)-5)`
-/

namespace A219950.P1641239396540419430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (A052905 (n + 7) - 5).toNat

end

end A219950.P1641239396540419430

/-! ## A219950.P12183542048037686154

`A219946(A000096(n+8)+10)`
-/

namespace A219950.P12183542048037686154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (A000096 (n + 8) + 10).toNat

end

end A219950.P12183542048037686154

/-! ## A219950.P5684603399317829507

`A219946(A000217(n+10)-10)`
-/

namespace A219950.P5684603399317829507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (A000217 (n + 10) - 10).toNat

end

end A219950.P5684603399317829507

/-! ## A219950.P17324595633786040823

`A219946(A000124(n+11)-11-2*(n+1))`
-/

namespace A219950.P17324595633786040823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (A000124 (n + 11) - 11 - (2 * (n + 1) : ℤ)).toNat

end

end A219950.P17324595633786040823

/-!
# A219951: Number of tilings of a 10 X n rectangle using right trominoes and 2 X 2 tiles.

The programs for A219951, there is no canonical definition to state claims against.
-/

/-! ## A219951.P3622278258072622173

`A219946(A155212(n+7)-3)`
-/

namespace A219951.P3622278258072622173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (A155212 (n + 7) - 3).toNat

end

end A219951.P3622278258072622173

/-! ## A219951.P5540808590436327103

`A219946(A052905(n+8)-6)`
-/

namespace A219951.P5540808590436327103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (A052905 (n + 8) - 6).toNat

end

end A219951.P5540808590436327103

/-! ## A219951.P15678399089380962393

`A219946(A046691(n+9)-7)`
-/

namespace A219951.P15678399089380962393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (A046691 (n + 9) - 7).toNat

end

end A219951.P15678399089380962393

/-! ## A219951.P6296943004628747406

`A219946(A000217(n+11)-11)`
-/

namespace A219951.P6296943004628747406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (A000217 (n + 11) - 11).toNat

end

end A219951.P6296943004628747406

/-! ## A219951.P13574234094327307092

`A219946(2*n+A000124(n+9)+9)`
-/

namespace A219951.P13574234094327307092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 ((2 * n : ℤ) + (A000124 (n + 9) + 9)).toNat

end

end A219951.P13574234094327307092

/-!
# A219952: Number of tilings of an n X n square using right trominoes and 2 X 2 tiles.

The programs for A219952, there is no canonical definition to state claims against.
-/

/-! ## A219952.P368032998935404328

`A219946(∑[4*n])`
-/

namespace A219952.P368032998935404328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219952.P368032998935404328

/-! ## A219952.P13459066859801968357

`gcd(A000038(n), A219946(A046092(n)))`
-/

namespace A219952.P13459066859801968357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A219946 (A046092 n).toNat)

end

end A219952.P13459066859801968357

/-! ## A219952.P6431556009693803481

`lcm(A033999(n), A219946(A046092(n)))`
-/

namespace A219952.P6431556009693803481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A219946 (A046092 n).toNat)

end

end A219952.P6431556009693803481

/-! ## A219952.P17961220471387933230

`or(A000007(n), A219946(A046092(n)))`
-/

namespace A219952.P17961220471387933230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A219946 (A046092 n).toNat)

end

end A219952.P17961220471387933230

/-! ## A219952.P12895803275694475023

`A219946(A106232(n+1))+A000007(n)`
-/

namespace A219952.P12895803275694475023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (A106232 (n + 1)).toNat + A000007 n

end

end A219952.P12895803275694475023

/-!
# A219953: a(1) = 1; for n > 1, a(n) = smallest integer > a(n-1) such that a(n)*a(i)+1 is semiprime for all 1 <= i <= n-1.

The programs for A219953, there is no canonical definition to state claims against.
-/

/-! ## A219953.P17166050333918631665

`A000009(n)*A003056(A003161(n+2))`
-/

namespace A219953.P17166050333918631665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A003056 (A003161 (n + 2)).toNat

end

end A219953.P17166050333918631665

/-!
# A219954: (A160414(n)-1)/4, n >= 1.

The programs for A219954, the canonical program `A219954.P4772442507018159107` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219954 has offset 1).

The definition of A219954 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219954.P38292891693925786

`(A160414(n+1)-1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A219954.P38292891693925786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160414 (n + 1) - 1 : ℚ) / 4

end

end A219954.P38292891693925786

namespace A219954

/-- `(A160414(n+1)-1)/4` -/
def P38292891693925786.Spec : Prop :=
  ∀ n, P38292891693925786.a n = (A219954 (n + 1) : ℚ)

end A219954

/-! ## A219954.P9164227500981206904

`floor(A160414(n+1)/4)`
-/

namespace A219954.P9164227500981206904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160414 (n + 1) : ℚ) / 4⌋

end

end A219954.P9164227500981206904

namespace A219954

/-- `floor(A160414(n+1)/4)` -/
def P9164227500981206904.Spec : Prop :=
  ∀ n, P9164227500981206904.a n = A219954 (n + 1)

end A219954

/-! ## A219954.P4772442507018159107

`A160727(n)+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A219954

/-- `A160727(n)+a(n-1)` -/
def P4772442507018159107.Spec : Prop :=
  ∀ n, P4772442507018159107.a n = A219954 (n + 1)

theorem P4772442507018159107.correct : P4772442507018159107.Spec := by
  intro n
  simp only [A219954, Nat.add_sub_cancel]

end A219954

/-! ## A219954.P10949096591006594958

`A130665(n)-A053644(n+1)`
-/

namespace A219954.P10949096591006594958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130665 n - A053644 (n + 1)

end

end A219954.P10949096591006594958

namespace A219954

/-- `A130665(n)-A053644(n+1)` -/
def P10949096591006594958.Spec : Prop :=
  ∀ n, P10949096591006594958.a n = A219954 (n + 1)

end A219954

/-! ## A219954.P8998631650105408396

`∑[A160727(n+1)]-A160727(n+1)`
-/

namespace A219954.P8998631650105408396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A160727 (n + 1)

end

end A219954.P8998631650105408396

namespace A219954

/-- `∑[A160727(n+1)]-A160727(n+1)` -/
def P8998631650105408396.Spec : Prop :=
  ∀ n, P8998631650105408396.a n = A219954 (n + 1)

end A219954

/-! ## A219954.P2941789656944910137

`floor(A271016(2*n)/4)`
-/

namespace A219954.P2941789656944910137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A271016 (2 * n) : ℚ) / 4⌋

end

end A219954.P2941789656944910137

namespace A219954

/-- `floor(A271016(2*n)/4)` -/
def P2941789656944910137.Spec : Prop :=
  ∀ n, P2941789656944910137.a n = A219954 (n + 1)

end A219954

/-! ## A219954.P767779076633488505

`∑[floor(A161415(n+1)/4)]`
-/

namespace A219954.P767779076633488505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161415 (n + 1) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219954.P767779076633488505

namespace A219954

/-- `∑[floor(A161415(n+1)/4)]` -/
def P767779076633488505.Spec : Prop :=
  ∀ n, P767779076633488505.a n = A219954 (n + 1)

end A219954

/-! ## A219954.P6051436259270281447

`A002265(A160414(n+1))`
-/

namespace A219954.P6051436259270281447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A160414 (n + 1)).toNat

end

end A219954.P6051436259270281447

namespace A219954

/-- `A002265(A160414(n+1))` -/
def P6051436259270281447.Spec : Prop :=
  ∀ n, P6051436259270281447.a n = A219954 (n + 1)

end A219954

/-! ## A219954.P166468626803235685

`A002265(A271016(2*n))`
-/

namespace A219954.P166468626803235685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A271016 (2 * n)).toNat

end

end A219954.P166468626803235685

namespace A219954

/-- `A002265(A271016(2*n))` -/
def P166468626803235685.Spec : Prop :=
  ∀ n, P166468626803235685.a n = A219954 (n + 1)

end A219954

/-!
# A219955: Numbers that cannot be represented as 2*p + 3*q, where p and q are prime.

The programs for A219955, there is no canonical definition to state claims against.
-/

/-! ## A219955.P468830128837389872

`comp[A079026(n+1)-1]+1`
-/

namespace A219955.P468830128837389872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079026 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A219955.P468830128837389872

/-! ## A219955.P1636561874323467656

`eq[char[A079026(n+1)], A151933(n)]`
-/

namespace A219955.P1636561874323467656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079026 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A219955.P1636561874323467656

/-! ## A219955.P6898289875264448929

`eq[char[A079026(n+1)], A151622(n)]`
-/

namespace A219955.P6898289875264448929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079026 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A219955.P6898289875264448929

/-!
# A219958: Integers n such that n^2 can be represented as 2p + 3q with p and q primes not necessarily distinct.

The programs for A219958, there is no canonical definition to state claims against.
-/

/-! ## A219958.P15638842431978742527

`lt[A205455(n+1), A205441(A205457(2*(n+2)))]`
-/

namespace A219958.P15638842431978742527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205441 (A205457 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A219958.P15638842431978742527

/-! ## A219958.P10823930877170629671

`record[A085914(n+4)-A108037(n)]`
-/

namespace A219958.P10823930877170629671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085914 (n + 4) - A108037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219958.P10823930877170629671

/-! ## A219958.P3611446307506123527

`lt[A374819(A348045(n+5)), A007318(2*n+3)]`
-/

namespace A219958.P3611446307506123527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374819 (A348045 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A219958.P3611446307506123527

/-!
# A219961: First differences of A219960.

The programs for A219961, there is no canonical definition to state claims against.
-/

/-! ## A219961.P4931532689450031288

`Δ[A219960(n+1)]`
-/

namespace A219961.P4931532689450031288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219961.P4931532689450031288

/-! ## A219961.P7884874662782210965

`abs(Δ[A219960(1-(n-2*n))])`
-/

namespace A219961.P7884874662782210965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219960 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A219961.P7884874662782210965

/-! ## A219961.P10695841556308641111

`Δ[record[A219960(A291769(n))]]`
-/

namespace A219961.P10695841556308641111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219960 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219961.P10695841556308641111

/-! ## A219961.P13264643816410562910

`A219960(n+2)-A219960(n+1)`
-/

namespace A219961.P13264643816410562910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219960 (n + 2) - A219960 (n + 1)

end

end A219961.P13264643816410562910

/-! ## A219961.P3390765200499315908

`A219960(A020725(n+1))%A219960(n+1)`
-/

namespace A219961.P3390765200499315908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219960 (A020725 (n + 1)).toNat) (A219960 (n + 1))

end

end A219961.P3390765200499315908

/-! ## A219961.P6764600106810058058

`Δ[record[A219960(A274640(n))]]`
-/

namespace A219961.P6764600106810058058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219960 (A274640 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219961.P6764600106810058058

/-! ## A219961.P5900624947242881967

`Δ[record[A219960(A112382(n))]]`
-/

namespace A219961.P5900624947242881967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219960 (A112382 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219961.P5900624947242881967

/-!
# A219963: Numbers which do not reach zero under either of the iterations: x -> floor(sqrt(x)) * (x - floor(sqrt(x))^2) or y -> ceiling(sqrt(y)) * (ceiling(sqrt(y))^2 - y).

The programs for A219963, there is no canonical definition to state claims against.
-/

/-! ## A219963.P17619052765923681563

`∩[A219303(n+1), A219960(n+1)]`
-/

namespace A219963.P17619052765923681563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219963.P17619052765923681563

/-!
# A219964: a(n) = product(i >= 0, (P(n, i)/P(n-1, i))^(2^i)) where P(n, i) = product(p prime, n/2^(i+1) < p <= n/2^i).

The programs for A219964, there is no canonical definition to state claims against.
-/

/-! ## A219964.P12874857735481660400

`ratio[A220027(abs(1-n))]`
-/

namespace A219964.P12874857735481660400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220027 |1 - (n : ℤ)|.toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A219964.P12874857735481660400

/-! ## A219964.P8189946896762794839

`A220027(n)/A220027(abs(1-n))`
-/

namespace A219964.P8189946896762794839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220027 n : ℚ) / (A220027 |1 - (n : ℤ)|.toNat : ℚ)

end

end A219964.P8189946896762794839

/-!
# A219965: Number of non-intersecting unit cubes regularly packed into the tetrahedron of edge length n.

The programs for A219965, there is no canonical definition to state claims against.
-/

/-! ## A219965.P16691382509892745654

`∑[∑[(A219148(n+1)+1)%A242314(n)]]`
-/

namespace A219965.P16691382509892745654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219148 (n + 1) + 1) (A242314 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219965.P16691382509892745654

/-! ## A219965.P7621214594807492175

`A347697(A206947(n))`
-/

namespace A219965.P7621214594807492175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A206947 n).toNat

end

end A219965.P7621214594807492175

/-! ## A219965.P13870658909164801381

`A347697(A283842(n))`
-/

namespace A219965.P13870658909164801381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A283842 n).toNat

end

end A219965.P13870658909164801381

/-! ## A219965.P11456127681070337165

`∑[∑[A080791(A003217(n))]]`
-/

namespace A219965.P11456127681070337165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A003217 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219965.P11456127681070337165

/-! ## A219965.P959344083342914537

`∑[∑[A063962(A072856(n))]]`
-/

namespace A219965.P959344083342914537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (A072856 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219965.P959344083342914537

/-!
# A219967: Number A(n,k) of tilings of a k X n rectangle using straight (3 X 1) trominoes and 2 X 2 tiles; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A219967, there is no canonical definition to state claims against.
-/

/-! ## A219967.P2603568790699579970

`A104607(A168646(n))`
-/

namespace A219967.P2603568790699579970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104607 (A168646 n).toNat

end

end A219967.P2603568790699579970

/-! ## A219967.P2737922013109978357

`A097795(A008288(n)+2)`
-/

namespace A219967.P2737922013109978357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (A008288 n + 2).toNat

end

end A219967.P2737922013109978357

/-! ## A219967.P18075356358691508084

`A286998(A157275(n)+5)`
-/

namespace A219967.P18075356358691508084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286998 (A157275 n + 5).toNat

end

end A219967.P18075356358691508084

/-! ## A219967.P741246937304298858

`A054632(A059922(n))%3`
-/

namespace A219967.P741246937304298858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054632 (A059922 n).toNat) 3

end

end A219967.P741246937304298858

/-! ## A219967.P7508061546864975315

`A036577(A221768(n+1)+2)`
-/

namespace A219967.P7508061546864975315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036577 (A221768 (n + 1) + 2).toNat

end

end A219967.P7508061546864975315

/-!
# A219968: Number of tilings of a 3 X n rectangle using straight (3 X 1) trominoes and 2 X 2 tiles.

The programs for A219968, there is no canonical definition to state claims against.
-/

/-! ## A219968.P17163488815794817727

`A219967(∑[n+4]+2)`
-/

namespace A219968.P17163488815794817727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219967 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A219968.P17163488815794817727

/-! ## A219968.P11895333292365333896

`or(char[1], A219967(A000217(n+3)+3))`
-/

namespace A219968.P11895333292365333896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A219967 (A000217 (n + 3) + 3).toNat)

end

end A219968.P11895333292365333896

/-! ## A219968.P3132612643795388117

`or(A000007(n), A219967(A046691(n+2)))`
-/

namespace A219968.P3132612643795388117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A219967 (A046691 (n + 2)).toNat)

end

end A219968.P3132612643795388117

/-! ## A219968.P8535100782054693105

`A219967(A167614(n+2))%A129383(n+2)`
-/

namespace A219968.P8535100782054693105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219967 (A167614 (n + 2)).toNat) (A129383 (n + 2))

end

end A219968.P8535100782054693105

/-! ## A219968.P15719081684723848127

`A219967(A000217(n+3)+3)%A000040(A000032(n))`
-/

namespace A219968.P15719081684723848127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219967 (A000217 (n + 3) + 3).toNat) (A000040 (A000032 n).toNat)

end

end A219968.P15719081684723848127

/-!
# A219969: Number of tilings of a 5 X n rectangle using straight (3 X 1) trominoes and 2 X 2 tiles.

The programs for A219969, there is no canonical definition to state claims against.
-/

/-! ## A219969.P4010188969600965608

`A219967(2*n+∑[n+4]+11)`
-/

namespace A219969.P4010188969600965608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219967 (2 * n + (∑ j ∈ Finset.range (n + 1), f1 j + 11))

end

end A219969.P4010188969600965608

/-! ## A219969.P12638776750811923796

`xor(A037850(A007482(n)), A111954(n))`
-/

namespace A219969.P12638776750811923796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037850 (A007482 n).toNat) (A111954 n)

end

end A219969.P12638776750811923796

/-!
# A219970: Number of tilings of a 6 X n rectangle using straight (3 X 1) trominoes and 2 X 2 tiles.

The programs for A219970, there is no canonical definition to state claims against.
-/

/-! ## A219970.P12548069607656014465

`A219967(eq[6, A002262(n)])`
-/

namespace A219970.P12548069607656014465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219967 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219970.P12548069607656014465

/-! ## A219970.P11988124420434750452

`A219967(eq[6, A025581(n)])`
-/

namespace A219970.P11988124420434750452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219967 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219970.P11988124420434750452

/-! ## A219970.P5306291254528369170

`A219967(eq[64, A059268(n)])`
-/

namespace A219970.P5306291254528369170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219967 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219970.P5306291254528369170

/-! ## A219970.P10841935352610787508

`A219967(A374008(n+1)-1)`
-/

namespace A219970.P10841935352610787508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219967 (A374008 (n + 1) - 1).toNat

end

end A219970.P10841935352610787508

/-! ## A219970.P11792340688408779930

`A219967(A155212(n+3)+1)`
-/

namespace A219970.P11792340688408779930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219967 (A155212 (n + 3) + 1).toNat

end

end A219970.P11792340688408779930

/-!
# A219971: Number of tilings of a 7 X n rectangle using straight (3 X 1) trominoes and 2 X 2 tiles.

The programs for A219971, there is no canonical definition to state claims against.
-/

/-! ## A219971.P382414498860213560

`A219967(eq[7, A002262(n)])`
-/

namespace A219971.P382414498860213560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219967 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219971.P382414498860213560

/-! ## A219971.P3880534460847512760

`A219967(eq[7, A025581(n)])`
-/

namespace A219971.P3880534460847512760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219967 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219971.P3880534460847512760

/-! ## A219971.P15306731046331432764

`A219967(A056000(n+4)+2)`
-/

namespace A219971.P15306731046331432764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219967 (A056000 (n + 4) + 2).toNat

end

end A219971.P15306731046331432764

/-! ## A219971.P5861647338111392131

`A219967(A000124(n+7)+6)`
-/

namespace A219971.P5861647338111392131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219967 (A000124 (n + 7) + 6).toNat

end

end A219971.P5861647338111392131

/-! ## A219971.P12049782012426449126

`A219967(A000096(n+6)+8)`
-/

namespace A219971.P12049782012426449126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219967 (A000096 (n + 6) + 8).toNat

end

end A219971.P12049782012426449126

/-!
# A219972: Number of tilings of an 8 X n rectangle using straight (3 X 1) trominoes and 2 X 2 tiles.

The programs for A219972, there is no canonical definition to state claims against.
-/

/-! ## A219972.P2712888328103911542

`A219967(eq[8, A002262(n)])`
-/

namespace A219972.P2712888328103911542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219967 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219972.P2712888328103911542

/-! ## A219972.P6138177718937628762

`A219967(eq[8, A025581(n)])`
-/

namespace A219972.P6138177718937628762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219967 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219972.P6138177718937628762

/-! ## A219972.P13448349346007906401

`A219967(A000124(n+8)+7)`
-/

namespace A219972.P13448349346007906401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219967 (A000124 (n + 8) + 7).toNat

end

end A219972.P13448349346007906401

/-! ## A219972.P3821406143126752375

`A219967(A000217(n+8)+8)`
-/

namespace A219972.P3821406143126752375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219967 (A000217 (n + 8) + 8).toNat

end

end A219972.P3821406143126752375

/-! ## A219972.P13189625021403176001

`A219967(A055999(n+5)+14)`
-/

namespace A219972.P13189625021403176001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219967 (A055999 (n + 5) + 14).toNat

end

end A219972.P13189625021403176001

/-!
# A219973: Number of tilings of a 9 X n rectangle using straight (3 X 1) trominoes and 2 X 2 tiles.

The programs for A219973, there is no canonical definition to state claims against.
-/

/-! ## A219973.P16571678561986997470

`A219967(A056000(n+6))`
-/

namespace A219973.P16571678561986997470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219967 (A056000 (n + 6)).toNat

end

end A219973.P16571678561986997470

/-! ## A219973.P15172846035743309041

`A219967(eq[9, A002262(n)])`
-/

namespace A219973.P15172846035743309041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219967 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219973.P15172846035743309041

/-! ## A219973.P15451175688607143861

`A219967(eq[9, A025581(n)])`
-/

namespace A219973.P15451175688607143861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219967 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219973.P15451175688607143861

/-! ## A219973.P11882537636238992785

`A219967(A167499(n+8)+4)`
-/

namespace A219973.P11882537636238992785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219967 (A167499 (n + 8) + 4).toNat

end

end A219973.P11882537636238992785

/-! ## A219973.P13615924407213903328

`A219967(A133263(n+9)+7)`
-/

namespace A219973.P13615924407213903328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219967 (A133263 (n + 9) + 7).toNat

end

end A219973.P13615924407213903328

/-!
# A219974: Number of tilings of a 10 X n rectangle using straight (3 X 1) trominoes and 2 X 2 tiles.

The programs for A219974, there is no canonical definition to state claims against.
-/

/-! ## A219974.P2048501759983645923

`A219967(eq[10, A002262(n)])`
-/

namespace A219974.P2048501759983645923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219967 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219974.P2048501759983645923

/-! ## A219974.P15491427139245920497

`A219967(eq[10, A025581(n)])`
-/

namespace A219974.P15491427139245920497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219967 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219974.P15491427139245920497

/-! ## A219974.P1550631430483938995

`A219967(A000217(n+11)-11)`
-/

namespace A219974.P1550631430483938995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219967 (A000217 (n + 11) - 11).toNat

end

end A219974.P1550631430483938995

/-! ## A219974.P17572773239365260100

`A219967(eq[11, A002260(n+1)])`
-/

namespace A219974.P17572773239365260100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219967 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219974.P17572773239365260100

/-! ## A219974.P17080660322038061318

`A219967(eq[11, A004736(n+1)])`
-/

namespace A219974.P17080660322038061318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219967 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219974.P17080660322038061318

/-!
# A219975: Number of tilings of an n X n square using straight (3 X 1) trominoes and 2 X 2 tiles.

The programs for A219975, there is no canonical definition to state claims against.
-/

/-! ## A219975.P17496694562728767342

`A219967(∑[4*n])`
-/

namespace A219975.P17496694562728767342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219967 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219975.P17496694562728767342

/-! ## A219975.P17822696463211103975

`or(A000007(n), A219967(A046092(n)))`
-/

namespace A219975.P17822696463211103975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A219967 (A046092 n).toNat)

end

end A219975.P17822696463211103975

/-! ## A219975.P1978512360845732705

`A219967(A046092(n))/A007318(∑[n])`
-/

namespace A219975.P1978512360845732705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219967 (A046092 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A219975.P1978512360845732705

/-! ## A219975.P1919851742648103476

`A219967(A046092(n))*A249770(n+2)`
-/

namespace A219975.P1919851742648103476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219967 (A046092 n).toNat * A249770 (n + 2)

end

end A219975.P1919851742648103476

/-!
# A219977: Expansion of 1/(1+x+x^2+x^3).

The programs for A219977, the canonical program `A219977.P5072315889939292338` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219977 has offset 0).

The definition of A219977 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x+x^2+x^3))` (program `A219977.P5072315889939292338`, by `A219977.P5072315889939292338.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A219977.P5072315889939292338

`ogf(1/(1+x+x^2+x^3))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A219977

/-- `ogf(1/(1+x+x^2+x^3))` -/
def P5072315889939292338.Spec : Prop :=
  ∀ n, P5072315889939292338.a n = A219977 n

theorem P5072315889939292338.correct : P5072315889939292338.Spec := by
  intro n
  simp only [A219977]

end A219977

/-!
# A219978: Numbers k (>= 1) such that A007781(k-1) = k^k - (k-1)^(k-1) is semiprime.

The programs for A219978, there is no canonical definition to state claims against.
-/

/-! ## A219978.P7147676478948606240

`eq[2, A068956(n+2)]+2`
-/

namespace A219978.P7147676478948606240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068956 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A219978.P7147676478948606240

/-! ## A219978.P11240911732791009293

`eq[2, A068957(n+2)]+2`
-/

namespace A219978.P11240911732791009293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068957 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A219978.P11240911732791009293

/-! ## A219978.P12974803395794100619

`eq[2, A068956(A233583(n+1))]`
-/

namespace A219978.P12974803395794100619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068956 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A219978.P12974803395794100619

/-! ## A219978.P9058746247540399863

`A171463(eq[2, A068956(n+2)])`
-/

namespace A219978.P9058746247540399863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068956 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219978.P9058746247540399863

/-! ## A219978.P17239445004755304563

`A171463(eq[2, A068957(n+2)])`
-/

namespace A219978.P17239445004755304563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068957 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219978.P17239445004755304563

/-!
# A219979: Unmatched value maps: number of n X n binary arrays indicating the locations of corresponding elements not equal to any horizontal, vertical or antidiagonal neighbor in a random 0..3 n X n array.

The programs for A219979, there is no canonical definition to state claims against.
-/

/-! ## A219979.P5022815301597440177

`A219985(∑[4*n]+1)`
-/

namespace A219979.P5022815301597440177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219985 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219979.P5022815301597440177

/-!
# A219980: Unmatched value maps: number of nX3 binary arrays indicating the locations of corresponding elements not equal to any horizontal, vertical or antidiagonal neighbor in a random 0..3 nX3 array.

The programs for A219980, there is no canonical definition to state claims against.
-/

/-! ## A219980.P17222763525543252101

`A219985(∑[n+2]+4)`
-/

namespace A219980.P17222763525543252101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219985 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A219980.P17222763525543252101

/-! ## A219980.P448164600172836690

`lcm(∏{e}[n+1, #], A219985(A167614(n+1)))`
-/

namespace A219980.P448164600172836690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A219985 (A167614 (n + 1)).toNat)

end

end A219980.P448164600172836690

/-! ## A219980.P2329053093164543188

`A219985(A167614(n+1))+A025466(n)`
-/

namespace A219980.P2329053093164543188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219985 (A167614 (n + 1)).toNat + A025466 n

end

end A219980.P2329053093164543188

/-! ## A219980.P1191383266049803146

`A219985(A167614(n+1))+A064459(n)`
-/

namespace A219980.P1191383266049803146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219985 (A167614 (n + 1)).toNat + A064459 n

end

end A219980.P1191383266049803146

/-! ## A219980.P4429234035784279553

`A219985(A167614(n+1))+A118135(n)`
-/

namespace A219980.P4429234035784279553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219985 (A167614 (n + 1)).toNat + A118135 n

end

end A219980.P4429234035784279553

/-!
# A219981: Unmatched value maps: number of nX4 binary arrays indicating the locations of corresponding elements not equal to any horizontal, vertical or antidiagonal neighbor in a random 0..3 nX4 array.

The programs for A219981, there is no canonical definition to state claims against.
-/

/-! ## A219981.P3311026137466575173

`A219985(A374004(n+1))`
-/

namespace A219981.P3311026137466575173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219985 (A374004 (n + 1)).toNat

end

end A219981.P3311026137466575173

/-! ## A219981.P16745328546884652570

`A219985(A141214(n)+7)`
-/

namespace A219981.P16745328546884652570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219985 (A141214 n + 7).toNat

end

end A219981.P16745328546884652570

/-! ## A219981.P14100229974471795373

`A219985(A052905(n)+9)`
-/

namespace A219981.P14100229974471795373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219985 (A052905 n + 9).toNat

end

end A219981.P14100229974471795373

/-! ## A219981.P1956404916763325241

`A219985(A055999(n)+10)`
-/

namespace A219981.P1956404916763325241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219985 (A055999 n + 10).toNat

end

end A219981.P1956404916763325241

/-! ## A219981.P9314564680952453476

`A219985(eq[5, A066657(n)])`
-/

namespace A219981.P9314564680952453476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219981.P9314564680952453476

/-!
# A219982: Unmatched value maps: number of nX5 binary arrays indicating the locations of corresponding elements not equal to any horizontal, vertical or antidiagonal neighbor in a random 0..3 nX5 array.

The programs for A219982, there is no canonical definition to state claims against.
-/

/-! ## A219982.P2356664679581995078

`A219985(A374005(n+1))`
-/

namespace A219982.P2356664679581995078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219985 (A374005 (n + 1)).toNat

end

end A219982.P2356664679581995078

/-! ## A219982.P17687332712031781550

`A219985(A167499(n+3))`
-/

namespace A219982.P17687332712031781550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219985 (A167499 (n + 3)).toNat

end

end A219982.P17687332712031781550

/-! ## A219982.P9702154652554740597

`A219985(A155212(n)+13)`
-/

namespace A219982.P9702154652554740597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219985 (A155212 n + 13).toNat

end

end A219982.P9702154652554740597

/-! ## A219982.P5521820860154572062

`A219985(A056000(n)+15)`
-/

namespace A219982.P5521820860154572062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219985 (A056000 n + 15).toNat

end

end A219982.P5521820860154572062

/-! ## A219982.P3219675849044975187

`A219985(eq[7, A066657(n)])`
-/

namespace A219982.P3219675849044975187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219982.P3219675849044975187

/-!
# A219983: Unmatched value maps: number of nX6 binary arrays indicating the locations of corresponding elements not equal to any horizontal, vertical or antidiagonal neighbor in a random 0..3 nX6 array.

The programs for A219983, there is no canonical definition to state claims against.
-/

/-! ## A219983.P6430115742014785695

`A219985(∑[n+5]+16)`
-/

namespace A219983.P6430115742014785695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219985 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A219983.P6430115742014785695

/-! ## A219983.P6216041218390624000

`A219985(A055999(n+3)+1)+A105514(n)`
-/

namespace A219983.P6216041218390624000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219985 (A055999 (n + 3) + 1).toNat + A105514 n

end

end A219983.P6216041218390624000

/-!
# A219984: Unmatched value maps: number of nX7 binary arrays indicating the locations of corresponding elements not equal to any horizontal, vertical or antidiagonal neighbor in a random 0..3 nX7 array.

The programs for A219984, there is no canonical definition to state claims against.
-/

/-! ## A219984.P18042734663488016677

`A219985(A374008(n+1))`
-/

namespace A219984.P18042734663488016677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219985 (A374008 (n + 1)).toNat

end

end A219984.P18042734663488016677

/-!
# A219986: Number of n-step paths on a quartic lattice that move from (0,0,0,0) to (1,0,0,1) allowing all moves in {-1,0,1}^4 inclusive the zero move.

The programs for A219986, there is no canonical definition to state claims against.
-/

/-! ## A219986.P12534741436723836900

`(Δ[A097861(n)]*A002426(n))²`
-/

namespace A219986.P12534741436723836900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) * A002426 n) ^ 2

end

end A219986.P12534741436723836900

/-! ## A219986.P13421742112493374340

`Δ[A097861(n)]²*A168597(n)`
-/

namespace A219986.P13421742112493374340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A168597 n

end

end A219986.P13421742112493374340

/-! ## A219986.P1744962359088224072

`A005213(2*n+1)*A219670(n)`
-/

namespace A219986.P1744962359088224072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (2 * n + 1) * A219670 n

end

end A219986.P1744962359088224072

/-! ## A219986.P1378166135407587810

`(A002426(n)*A005213(2*n+1))²`
-/

namespace A219986.P1378166135407587810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002426 n * A005213 (2 * n + 1)) ^ 2

end

end A219986.P1378166135407587810

/-! ## A219986.P17422339356244149194

`(A025178(n+1)/2*A002426(n))²`
-/

namespace A219986.P17422339356244149194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A025178 (n + 1) : ℚ) / 2 * (A002426 n : ℚ)) ^ 2

end

end A219986.P17422339356244149194

/-! ## A219986.P10103653285985265134

`(A005213(2*n+1)*A005213(2*n))²`
-/

namespace A219986.P10103653285985265134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005213 (2 * n + 1) * A005213 (2 * n)) ^ 2

end

end A219986.P10103653285985265134

/-! ## A219986.P15902015262962788028

`((A002426(n)-A005043(n))*A002426(n))²`
-/

namespace A219986.P15902015262962788028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A002426 n - A005043 n) * A002426 n) ^ 2

end

end A219986.P15902015262962788028

/-! ## A219986.P6168744380052089218

`(A005773(n+1)-A002426(n))*A219670(n)`
-/

namespace A219986.P6168744380052089218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005773 (n + 1) - A002426 n) * A219670 n

end

end A219986.P6168744380052089218

/-!
# A219987: Number A(n,k) of tilings of a k X n rectangle using dominoes and right trominoes; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A219987, there is no canonical definition to state claims against.
-/

/-! ## A219987.P4700205787396029128

`A285189(A299905(n)+A051159(n))`
-/

namespace A219987.P4700205787396029128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A299905 n + A051159 n).toNat

end

end A219987.P4700205787396029128

/-! ## A219987.P12938903220644066014

`A285189(A299905(n)+A106465(n))`
-/

namespace A219987.P12938903220644066014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A299905 n + A106465 n).toNat

end

end A219987.P12938903220644066014

/-! ## A219987.P5086267500779040064

`A239264(n)-A011738(A157243(n))`
-/

namespace A219987.P5086267500779040064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 n - A011738 (A157243 n).toNat

end

end A219987.P5086267500779040064

/-! ## A219987.P5184253588007933064

`A285189(or(A106465(n), A299905(n)))`
-/

namespace A219987.P5184253588007933064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (Int.lor (A106465 n) (A299905 n)).toNat

end

end A219987.P5184253588007933064

/-! ## A219987.P3814273563637029878

`A285189(xor(A106465(n), A299905(n)))`
-/

namespace A219987.P3814273563637029878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (Int.xor (A106465 n) (A299905 n)).toNat

end

end A219987.P3814273563637029878

/-!
# A219988: Number of tilings of a 5 X n rectangle using dominoes and right trominoes.

The programs for A219988, there is no canonical definition to state claims against.
-/

/-! ## A219988.P4430181342920409281

`A219987(A055999(n+3))`
-/

namespace A219988.P4430181342920409281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (A055999 (n + 3)).toNat

end

end A219988.P4430181342920409281

/-! ## A219988.P13256644970575858398

`A219987(A167499(n+4))`
-/

namespace A219988.P13256644970575858398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (A167499 (n + 4)).toNat

end

end A219988.P13256644970575858398

/-! ## A219988.P5437162650860527520

`A219987(A056115(n)+20)`
-/

namespace A219988.P5437162650860527520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (A056115 n + 20).toNat

end

end A219988.P5437162650860527520

/-! ## A219988.P16309952974254788201

`A219987(eq[5, A002262(n)])`
-/

namespace A219988.P16309952974254788201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219988.P16309952974254788201

/-! ## A219988.P18167868396563643883

`A219987(A000124(n+5)+4)`
-/

namespace A219988.P18167868396563643883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (A000124 (n + 5) + 4).toNat

end

end A219988.P18167868396563643883

/-!
# A219989: Number of tilings of a 6 X n rectangle using dominoes and right trominoes.

The programs for A219989, there is no canonical definition to state claims against.
-/

/-! ## A219989.P4517509447151520399

`A219987(eq[6, A002262(n)])`
-/

namespace A219989.P4517509447151520399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219989.P4517509447151520399

/-! ## A219989.P4748279368438439367

`A219987(A056115(n+2)+8)`
-/

namespace A219989.P4748279368438439367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (A056115 (n + 2) + 8).toNat

end

end A219989.P4748279368438439367

/-! ## A219989.P11200260955919713602

`A219987(A000096(n+5)+7)`
-/

namespace A219989.P11200260955919713602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (A000096 (n + 5) + 7).toNat

end

end A219989.P11200260955919713602

/-! ## A219989.P4257578239223391929

`A219987(A155212(n+2)+14)`
-/

namespace A219989.P4257578239223391929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (A155212 (n + 2) + 14).toNat

end

end A219989.P4257578239223391929

/-! ## A219989.P14141623935805536390

`A219987(A056000(n+2)+16)`
-/

namespace A219989.P14141623935805536390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (A056000 (n + 2) + 16).toNat

end

end A219989.P14141623935805536390

/-!
# A219990: Number of tilings of a 7 X n rectangle using dominoes and right trominoes.

The programs for A219990, there is no canonical definition to state claims against.
-/

/-! ## A219990.P17770030567480462965

`A219987(A155212(n+4))`
-/

namespace A219990.P17770030567480462965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (A155212 (n + 4)).toNat

end

end A219990.P17770030567480462965

/-! ## A219990.P13340242479115982388

`A219987(eq[7, A002262(n)])`
-/

namespace A219990.P13340242479115982388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219990.P13340242479115982388

/-! ## A219990.P9471946080886447688

`A219987(eq[7, A025581(n)])`
-/

namespace A219990.P9471946080886447688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219990.P9471946080886447688

/-! ## A219990.P6296824213036152080

`A219987(eq[7, A144328(n+1)])`
-/

namespace A219990.P6296824213036152080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219990.P6296824213036152080

/-! ## A219990.P12414880257818516744

`A219987(eq[8, A002260(n+1)])`
-/

namespace A219990.P12414880257818516744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219990.P12414880257818516744

/-!
# A219991: Number of tilings of an 8 X n rectangle using dominoes and right trominoes.

The programs for A219991, there is no canonical definition to state claims against.
-/

/-! ## A219991.P6701855277785867497

`A219987(eq[8, A002262(n)])`
-/

namespace A219991.P6701855277785867497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219991.P6701855277785867497

/-! ## A219991.P11315028265939794095

`A219987(eq[8, A025581(n)])`
-/

namespace A219991.P11315028265939794095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219991.P11315028265939794095

/-! ## A219991.P14033736140235356103

`A219987(eq[17, A099375(n)])`
-/

namespace A219991.P14033736140235356103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219991.P14033736140235356103

/-! ## A219991.P10948849043321077776

`A219987(eq[9, A002260(n+1)])`
-/

namespace A219991.P10948849043321077776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219991.P10948849043321077776

/-! ## A219991.P980477094843813140

`A219987(eq[9, A004736(n+1)])`
-/

namespace A219991.P980477094843813140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219991.P980477094843813140

/-!
# A219992: Number of tilings of a 9 X n rectangle using dominoes and right trominoes.

The programs for A219992, there is no canonical definition to state claims against.
-/

/-! ## A219992.P4981457745196123024

`A219987(A056000(n+6))`
-/

namespace A219992.P4981457745196123024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (A056000 (n + 6)).toNat

end

end A219992.P4981457745196123024

/-! ## A219992.P392074169364291512

`A219987(eq[9, A002262(n)])`
-/

namespace A219992.P392074169364291512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219992.P392074169364291512

/-! ## A219992.P6519936386818745827

`A219987(eq[9, A025581(n)])`
-/

namespace A219992.P6519936386818745827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219992.P6519936386818745827

/-! ## A219992.P17946751249696320738

`A219987(eq[10, A002260(n+1)])`
-/

namespace A219992.P17946751249696320738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219992.P17946751249696320738

/-! ## A219992.P1566890673901299548

`A219987(eq[10, A004736(n+1)])`
-/

namespace A219992.P1566890673901299548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219992.P1566890673901299548

/-!
# A219993: Number of tilings of a 10 X n rectangle using dominoes and right trominoes.

The programs for A219993, there is no canonical definition to state claims against.
-/

/-! ## A219993.P2697500899498987711

`A219987(eq[10, A002262(n)])`
-/

namespace A219993.P2697500899498987711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219993.P2697500899498987711

/-! ## A219993.P8191669673805447686

`A219987(eq[10, A025581(n)])`
-/

namespace A219993.P8191669673805447686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219993.P8191669673805447686

/-! ## A219993.P14192898541186840314

`A219987(eq[10, A144328(n+1)])`
-/

namespace A219993.P14192898541186840314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219993.P14192898541186840314

/-! ## A219993.P1132795939070478759

`A219987(eq[11, A002260(n+1)])`
-/

namespace A219993.P1132795939070478759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219993.P1132795939070478759

/-! ## A219993.P15191160976012737760

`A219987(eq[11, A004736(n+1)])`
-/

namespace A219993.P15191160976012737760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219993.P15191160976012737760

/-!
# A219994: Number of tilings of an n X n square using dominoes and right trominoes.

The programs for A219994, there is no canonical definition to state claims against.
-/

/-! ## A219994.P5406473731678472599

`A219987(∑[4*n])`
-/

namespace A219994.P5406473731678472599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219994.P5406473731678472599

/-! ## A219994.P7359826811261316419

`A219987(A046092(n))^A007318(∑[n])`
-/

namespace A219994.P7359826811261316419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219987 (A046092 n).toNat : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A219994.P7359826811261316419

/-! ## A219994.P17252485175241965349

`A219987(A046092(n))/A007318(C(2, n))`
-/

namespace A219994.P17252485175241965349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219987 (A046092 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A219994.P17252485175241965349

/-! ## A219994.P16656468538415633730

`A219987(A046092(n))/A014963(∑[n+1])`
-/

namespace A219994.P16656468538415633730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219987 (A046092 n).toNat : ℚ) / (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A219994.P16656468538415633730

/-! ## A219994.P14395002179723883451

`A219987(A046092(n))/A007318(∑[n+2])`
-/

namespace A219994.P14395002179723883451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219987 (A046092 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A219994.P14395002179723883451

/-!
# A219996: Centuries whose prime pattern is the same as prime pattern in the previous century.

The programs for A219996, there is no canonical definition to state claims against.
-/

/-! ## A219996.P9450704062660552427

`A190639(n+1)+1`
-/

namespace A219996.P9450704062660552427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190639 (n + 1) + 1

end

end A219996.P9450704062660552427

/-!
# A219997: Decades whose prime pattern is same as the prime pattern in the previous decade, with at least one prime.

The programs for A219997, there is no canonical definition to state claims against.
-/

/-! ## A219997.P3126203117242082346

`A216329(n+1)+1`
-/

namespace A219997.P3126203117242082346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216329 (n + 1) + 1

end

end A219997.P3126203117242082346

/-! ## A219997.P4125248640413467511

`ceil(1/acot(A216329(comp[2*n]-n)))`
-/

namespace A219997.P4125248640413467511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / SequenceMachineLib.acot (A216329 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n) : ℝ)⌉

end

end A219997.P4125248640413467511

/-! ## A219997.P16652445114200970846

`A004482(A216329(n+1))`
-/

namespace A219997.P16652445114200970846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A216329 (n + 1)).toNat

end

end A219997.P16652445114200970846

/-! ## A219997.P939066731979205037

`A028242(2*A216329(comp[2*n]-n))`
-/

namespace A219997.P939066731979205037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A216329 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)).toNat

end

end A219997.P939066731979205037

/-! ## A219997.P3434884991348717131

`A052938(2*A216329(comp[2*n]-n))`
-/

namespace A219997.P3434884991348717131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A216329 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)).toNat

end

end A219997.P3434884991348717131

/-!
# A219998: Prime-free decades such that the previous decade is also prime-free.

The programs for A219998, there is no canonical definition to state claims against.
-/

/-! ## A219998.P5880459062736911822

`A216288(n+1)+1`
-/

namespace A219998.P5880459062736911822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216288 (n + 1) + 1

end

end A219998.P5880459062736911822

/-! ## A219998.P1525986368333499370

`∩[A032352(n+1), A216287(n+1)]+1`
-/

namespace A219998.P1525986368333499370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A219998.P1525986368333499370

/-! ## A219998.P14428014961476731595

`∩[A032352(n+1), A219999(n+1)]`
-/

namespace A219998.P14428014961476731595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219998.P14428014961476731595

/-! ## A219998.P15104237080796308346

`∩[A032352(n+2)+1, A032352(n+2)]`
-/

namespace A219998.P15104237080796308346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (n + 2) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219998.P15104237080796308346

/-! ## A219998.P12202467032573154031

`A032352(eq[1, A032352(n+2)-A032352(n+1)]+1)+1`
-/

namespace A219998.P12202467032573154031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (n + 2) - A032352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 1

end

end A219998.P12202467032573154031

/-! ## A219998.P16198741866566723153

`A032352(eq[1, A032352(n+2)%A032352(n+1)]+1)+1`
-/

namespace A219998.P16198741866566723153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032352 (n + 2)) (A032352 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 1

end

end A219998.P16198741866566723153

/-! ## A219998.P16474095368024400308

`A011760(A216288(n+1))`
-/

namespace A219998.P16474095368024400308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A216288 (n + 1)).toNat

end

end A219998.P16474095368024400308

/-! ## A219998.P17910664057014401079

`eq[A038800(n), A232129(n+1)]+1`
-/

namespace A219998.P17910664057014401079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232129 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A219998.P17910664057014401079

/-!
# A219999: Decades whose prime pattern is the same as prime pattern in the previous decade.

The programs for A219999, there is no canonical definition to state claims against.
-/

/-! ## A219999.P12858531563114705420

`A216287(n+1)+1`
-/

namespace A219999.P12858531563114705420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216287 (n + 1) + 1

end

end A219999.P12858531563114705420

/-! ## A219999.P11142924179983531603

`∪[A219997(n+1), A219998(n+1)]`
-/

namespace A219999.P11142924179983531603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A219999.P11142924179983531603

/-! ## A219999.P15519934879999332360

`∪[A216288(n+1), A216329(n+1)]+1`
-/

namespace A219999.P15519934879999332360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A219999.P15519934879999332360

/-! ## A219999.P12207627666956804533

`∪[A216288(n+1)+1, A219997(n+1)]`
-/

namespace A219999.P12207627666956804533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216288 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A219999.P12207627666956804533

/-! ## A219999.P2935306630027258894

`A011760(A216287(n+1))`
-/

namespace A219999.P2935306630027258894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A216287 (n + 1)).toNat

end

end A219999.P2935306630027258894

/-! ## A219999.P17536782818569029218

`eq[A105052(n+1), A105052(n)]+1`
-/

namespace A219999.P17536782818569029218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A219999.P17536782818569029218

/-! ## A219999.P18004829030830416146

`A011760(eq[A105052(n+1), A105052(n)])`
-/

namespace A219999.P18004829030830416146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A219999.P18004829030830416146

