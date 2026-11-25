import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C040
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C007
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B012.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

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

/-! ## A219900.P11924348466522557004

`A002487(A397510(n)+n)`
-/

namespace A219900.P11924348466522557004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A397510 n + (n : ℤ)).toNat

end

end A219900.P11924348466522557004

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

/-! ## A219901.P14309347706908998973

`A000070(n)-A071461(A265780(n+1))`
-/

namespace A219901.P14309347706908998973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n - A071461 (A265780 (n + 1)).toNat

end

end A219901.P14309347706908998973

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

/-! ## A219905.P1522956419723173485

`A210718(A309624(n+1))`
-/

namespace A219905.P1522956419723173485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210718 (A309624 (n + 1)).toNat

end

end A219905.P1522956419723173485

/-! ## A219905.P9565417534586428913

`A380263(A397835(n+1))`
-/

namespace A219905.P9565417534586428913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380263 (A397835 (n + 1)).toNat

end

end A219905.P9565417534586428913

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

/-! ## A219908.P4894211369747870644

`∩[A040034(n+1), A219907(n+1)]`
-/

namespace A219908.P4894211369747870644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219908.P4894211369747870644

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

/-! ## A219908.P104434487104687295

`∩[A059262(n+1), A219907(n+1)]`
-/

namespace A219908.P104434487104687295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219908.P104434487104687295

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

/-! ## A219908.P10585378142475685834

`∩[A059308(n+1), A219907(n+1)]`
-/

namespace A219908.P10585378142475685834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219908.P10585378142475685834

/-! ## A219908.P1222012702119967972

`∩[A059310(n+1), A219907(n+1)]`
-/

namespace A219908.P1222012702119967972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219908.P1222012702119967972

/-! ## A219908.P1871336987737346099

`∩[A059334(n+1), A219907(n+1)]`
-/

namespace A219908.P1871336987737346099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219908.P1871336987737346099

/-! ## A219908.P13520776514696190494

`∩[A059335(n+1), A219907(n+1)]`
-/

namespace A219908.P13520776514696190494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219908.P13520776514696190494

/-! ## A219908.P14311700132499744281

`∩[A059353(n+1), A219907(n+1)]`
-/

namespace A219908.P14311700132499744281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219908.P14311700132499744281

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

/-!
# A219910: Number of nX3 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 nX3 array.

The programs for A219910, there is no canonical definition to state claims against.
-/

/-! ## A219910.P5011829471922024664

`A219915(∑[3+n]+1)`
-/

namespace A219910.P5011829471922024664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219915 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219910.P5011829471922024664

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

/-! ## A219924.P12088411836128680384

`A226444(n)`
-/

namespace A219924.P12088411836128680384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226444 n

end

end A219924.P12088411836128680384

/-! ## A219924.P5552692988415965713

`A049113(A260340(n))`
-/

namespace A219924.P5552692988415965713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049113 (A260340 n).toNat

end

end A219924.P5552692988415965713

/-! ## A219924.P2336323390545519049

`A097688(A334549(n))`
-/

namespace A219924.P2336323390545519049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097688 (A334549 n).toNat

end

end A219924.P2336323390545519049

/-! ## A219924.P11887670494912461406

`A274011(A220054(n))`
-/

namespace A219924.P11887670494912461406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274011 (A220054 n).toNat

end

end A219924.P11887670494912461406

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

/-!
# A219931: Coefficients related to an asymptotic expansion of the logarithm of the central binomial.

The programs for A219931, there is no canonical definition to state claims against.
-/

/-! ## A219931.P4874634333167728246

`(2*n+1)*gcd(64, 1+n)`
-/

namespace A219931.P4874634333167728246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.gcd 64 (1 + n)

end

end A219931.P4874634333167728246

/-! ## A219931.P4916806348806326213

`(1+2*n)*A006519(n+1)`
-/

namespace A219931.P4916806348806326213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + 2 * n : ℤ) * A006519 (n + 1)

end

end A219931.P4916806348806326213

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

/-! ## A219931.P6010988715917999367

`(2*n+1)*(A135481(n)+1)%A263724(n+2)`
-/

namespace A219931.P6010988715917999367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * Int.tmod (A135481 n + 1) (A263724 (n + 2))

end

end A219931.P6010988715917999367

/-! ## A219931.P16072088482126789531

`A193365(n+1)%A158058(n+1)`
-/

namespace A219931.P16072088482126789531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193365 (n + 1)) (A158058 (n + 1))

end

end A219931.P16072088482126789531

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

/-! ## A219933.P3766107841060654693

`A219939(∑[2+n])`
-/

namespace A219933.P3766107841060654693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219933.P3766107841060654693

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

/-! ## A219934.P10888561514644901809

`A219939(∑[3+n]+1)`
-/

namespace A219934.P10888561514644901809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219934.P10888561514644901809

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

/-!
# A219936: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 nX5 array.

The programs for A219936, there is no canonical definition to state claims against.
-/

/-! ## A219936.P726544696386002186

`A219939(∑[a(n-1)+1])` with `a(0)=11, a(1)=6`
-/

namespace A219936.P726544696386002186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11, 6] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219936.P726544696386002186

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

/-!
# A219938: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 nX7 array.

The programs for A219938, there is no canonical definition to state claims against.
-/

/-! ## A219938.P16259942691782247745

`A219939(∑[a(n-1)+1])` with `a(0)=21, a(1)=9, a(2)=9`
-/

namespace A219938.P16259942691782247745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [21, 9, 9] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219938.P16259942691782247745

/-!
# A219940: Number of 2 X n arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 2 X n array.

The programs for A219940, the canonical program `A219940.P15289633622967541480` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219940 has offset 1).

The definition of A219940 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219940.P15289633622967541480

`ogf((10-37x+76x^2-43x^3-67x^4+109x^5-51x^6+11x^7)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A219940

/-- `ogf((10-37x+76x^2-43x^3-67x^4+109x^5-51x^6+11x^7)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P15289633622967541480.Spec : Prop :=
  ∀ n, P15289633622967541480.a n = A219940 (n + 1)

theorem P15289633622967541480.correct : P15289633622967541480.Spec := by
  intro n
  simp only [A219940, Nat.add_sub_cancel]

end A219940

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

namespace A219940

/-- `A219939(∑[n+1]+2)` -/
def P12523108556365461506.Spec : Prop :=
  ∀ n, P12523108556365461506.a n = A219940 (n + 1)

end A219940

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

namespace A219940

/-- `record[A219939(n+3)/A048854(n)]` -/
def P2738836318407982872.Spec : Prop :=
  ∀ n, P2738836318407982872.a n = (A219940 (n + 1) : ℚ)

end A219940

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

namespace A219940

/-- `record[A219939(A133263(∑{e}[n+1, #]+1))]` -/
def P14523377906911793488.Spec : Prop :=
  ∀ n, P14523377906911793488.a n = A219940 (n + 1)

end A219940

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

/-!
# A219943: Number of 5Xn arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 5Xn array.

The programs for A219943, there is no canonical definition to state claims against.
-/

/-! ## A219943.P16698475050910097994

`A219939(∑[a(n-1)+1])` with `a(0)=15, a(1)=5`
-/

namespace A219943.P16698475050910097994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [15, 5] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219943.P16698475050910097994

/-!
# A219944: Number of 6Xn arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 6Xn array.

The programs for A219944, there is no canonical definition to state claims against.
-/

/-! ## A219944.P16628711332791964311

`A219939(∑[a(n-1)+1])` with `a(0)=21, a(1)=6`
-/

namespace A219944.P16628711332791964311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [21, 6] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219944.P16628711332791964311

/-!
# A219945: Number of 7Xn arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 7Xn array.

The programs for A219945, there is no canonical definition to state claims against.
-/

/-! ## A219945.P3574613439878827876

`A219939(∑[a(n-1)+1])` with `a(0)=28, a(1)=7`
-/

namespace A219945.P3574613439878827876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [28, 7] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219939 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219945.P3574613439878827876

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

/-! ## A219946.P15784330054016547205

`A286813(A388426(n))`
-/

namespace A219946.P15784330054016547205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286813 (A388426 n).toNat

end

end A219946.P15784330054016547205

/-! ## A219946.P10872072506910257236

`A117199(A045912(n))`
-/

namespace A219946.P10872072506910257236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117199 (A045912 n).toNat

end

end A219946.P10872072506910257236

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

/-! ## A219953.P1998996321890993079

`A181843(1+A330223(n)*(n+1))`
-/

namespace A219953.P1998996321890993079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181843 (1 + A330223 n * (n + 1 : ℤ)).toNat

end

end A219953.P1998996321890993079

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

The programs for A219954, the canonical program `A219954.P38292891693925786` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219954 has offset 1).

The definition of A219954 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160414, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A219954.P38292891693925786

`(A160414(n+1)-1)/4`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A219954

/-- `(A160414(n+1)-1)/4` -/
def P38292891693925786.Spec : Prop :=
  ∀ n, P38292891693925786.a n = (A219954 (n + 1) : ℚ)

end A219954

/-! ## A219954.P14545742637350002732

`floor(A160414(1+n)/4)`
-/

namespace A219954.P14545742637350002732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160414 (1 + n) : ℚ) / 4⌋

end

end A219954.P14545742637350002732

namespace A219954

/-- `floor(A160414(1+n)/4)` -/
def P14545742637350002732.Spec : Prop :=
  ∀ n, P14545742637350002732.a n = A219954 (n + 1)

end A219954

/-! ## A219954.P10607252149608772356

`round(A160414(n+1)/4)`
-/

namespace A219954.P10607252149608772356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A160414 (n + 1) : ℚ) / 4)

end

end A219954.P10607252149608772356

namespace A219954

/-- `round(A160414(n+1)/4)` -/
def P10607252149608772356.Spec : Prop :=
  ∀ n, P10607252149608772356.a n = A219954 (n + 1)

end A219954

/-! ## A219954.P4772442507018159107

`A160727(n)+a(n-1)` with `a(0)=0`
-/

namespace A219954.P4772442507018159107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A160727 n + a (n - 1)

end

end A219954.P4772442507018159107

namespace A219954

/-- `A160727(n)+a(n-1)` -/
def P4772442507018159107.Spec : Prop :=
  ∀ n, P4772442507018159107.a n = A219954 (n + 1)

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

/-!
# A219955: Numbers that cannot be represented as 2*p + 3*q, where p and q are prime.

The programs for A219955, there is no canonical definition to state claims against.
-/

/-! ## A219955.P15748193056695567841

`comp[A079026(1+n)-1]+1`
-/

namespace A219955.P15748193056695567841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079026 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A219955.P15748193056695567841

/-! ## A219955.P10339579296972332562

`lt[char[A079026(n+1)], A057427(n)]`
-/

namespace A219955.P10339579296972332562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079026 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A219955.P10339579296972332562

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

/-! ## A219955.P9357896802269752739

`∑[A001222(A146678(n+1)+A146606(n+1))]`
-/

namespace A219955.P9357896802269752739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A146678 (n + 1) + A146606 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219955.P9357896802269752739

/-!
# A219957: Numbers expressible as 2*p + 3*q exactly in two ways, where p and q are primes (not necessarily distinct).

The programs for A219957, there is no canonical definition to state claims against.
-/

/-! ## A219957.P4674095855310762259

`A007310(eq[A230697(n+1), A230697(2*(n+1))])`
-/

namespace A219957.P4674095855310762259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230697 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A219957.P4674095855310762259

/-!
# A219958: Integers n such that n^2 can be represented as 2p + 3q with p and q primes not necessarily distinct.

The programs for A219958, there is no canonical definition to state claims against.
-/

/-! ## A219958.P9320731604537908060

`row(row(A257413(A025475(3*n+5)))-3)-3`
-/

namespace A219958.P9320731604537908060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow ((SequenceMachineLib.triRow (A257413 (A025475 (3 * n + 5)).toNat).toNat : ℤ) - 3).toNat : ℤ) - 3

end

end A219958.P9320731604537908060

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

/-! ## A219958.P14271967338775051859

`record[5-gcd(n-2, A010553(n^3+1))+n]`
-/

namespace A219958.P14271967338775051859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (Int.gcd ((n : ℤ) - 2) (A010553 (n ^ 3 + 1)) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219958.P14271967338775051859

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

/-! ## A219961.P7553887994750061812

`Δ[A219960(1+n)]`
-/

namespace A219961.P7553887994750061812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219960 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219961.P7553887994750061812

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

/-! ## A219961.P17810264874499833350

`Δ[record[A219960(A152271(n))]]`
-/

namespace A219961.P17810264874499833350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219960 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219961.P17810264874499833350

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

The programs for A219968, the canonical program `A219968.P15723132520277222245` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219968 has offset 0).

The definition of A219968 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A219968.P15723132520277222245

`ogf((1-2x^3+x^6)/(1-x-3x^3+2x^4+x^6-x^7-x^9))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A219968

/-- `ogf((1-2x^3+x^6)/(1-x-3x^3+2x^4+x^6-x^7-x^9))` -/
def P15723132520277222245.Spec : Prop :=
  ∀ n, P15723132520277222245.a n = A219968 n

theorem P15723132520277222245.correct : P15723132520277222245.Spec := by
  intro n
  simp only [A219968]

end A219968

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

namespace A219968

/-- `A219967(∑[n+4]+2)` -/
def P17163488815794817727.Spec : Prop :=
  ∀ n, P17163488815794817727.a n = A219968 n

end A219968

/-! ## A219968.P13206654725214505205

`A226066(A025048(n))`
-/

namespace A219968.P13206654725214505205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226066 (A025048 n).toNat

end

end A219968.P13206654725214505205

namespace A219968

/-- `A226066(A025048(n))` -/
def P13206654725214505205.Spec : Prop :=
  ∀ n, P13206654725214505205.a n = A219968 n

end A219968

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

/-!
# A219977: Expansion of 1/(1+x+x^2+x^3).

The programs for A219977, the canonical program `A219977.P5072315889939292338` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219977 has offset 0).

The definition of A219977 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x+x^2+x^3))` (program `A219977.P5072315889939292338`, by `A219977.P5072315889939292338.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A219977.P5072315889939292338

`ogf(1/(1+x+x^2+x^3))`

The canonical program, it is in `Seq.B000.C035`.
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

/-! ## A219980.P2968411089117948598

`record[gcd(A122203(n), A219985(n+4))]`
-/

namespace A219980.P2968411089117948598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122203 n) (A219985 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219980.P2968411089117948598

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

/-! ## A219981.P99324037158556941

`A219985(A141214(n+1))`
-/

namespace A219981.P99324037158556941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219985 (A141214 (n + 1)).toNat

end

end A219981.P99324037158556941

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

/-! ## A219986.P9539442433108449125

`(A219670(n)/A002426(n))²`
-/

namespace A219986.P9539442433108449125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A219670 n : ℚ) / (A002426 n : ℚ)) ^ 2

end

end A219986.P9539442433108449125

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

/-! ## A219986.P6845905575892620677

`A005213(Δ[n²])*A219670(n)`
-/

namespace A219986.P6845905575892620677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A219670 n

end

end A219986.P6845905575892620677

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

/-! ## A219987.P5086267500779040064

`A239264(n)-A011738(A157243(n))`
-/

namespace A219987.P5086267500779040064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 n - A011738 (A157243 n).toNat

end

end A219987.P5086267500779040064

/-! ## A219987.P13121771975349039367

`A121467(A059922(n))`
-/

namespace A219987.P13121771975349039367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121467 (A059922 n).toNat

end

end A219987.P13121771975349039367

/-! ## A219987.P15827188060960087460

`A381490(A309876(n))`
-/

namespace A219987.P15827188060960087460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381490 (A309876 n).toNat

end

end A219987.P15827188060960087460

/-! ## A219987.P6743503192137585777

`A136266(A196636(n+1))`
-/

namespace A219987.P6743503192137585777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136266 (A196636 (n + 1)).toNat

end

end A219987.P6743503192137585777

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

/-! ## A219997.P16652445114200970846

`A004482(A216329(n+1))`
-/

namespace A219997.P16652445114200970846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A216329 (n + 1)).toNat

end

end A219997.P16652445114200970846

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

/-! ## A219999.P8584788786444307118

`∪[A219997(1+n), A219998(n+1)]`
-/

namespace A219999.P8584788786444307118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219997 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A219999.P8584788786444307118

/-! ## A219999.P3451257838447945904

`∪[A216288(1+n), A216329(n+1)]+1`
-/

namespace A219999.P3451257838447945904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216288 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A219999.P3451257838447945904

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

