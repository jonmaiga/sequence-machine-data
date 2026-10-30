import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
# A364000: Numbers of the form |2^i - 3^j - 1|/2, i >= 1, j >= 1.

The programs for A364000, there is no canonical definition to state claims against.
-/

/-! ## A364000.P4573790502188578365

`floor(A363999(1+n)/2)`
-/

namespace A364000.P4573790502188578365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A363999 (1 + n) : ℚ) / 2⌋

end

end A364000.P4573790502188578365

/-! ## A364000.P5142612272591157627

`(A363999(n+1)-1)/2`
-/

namespace A364000.P5142612272591157627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363999 (n + 1) - 1 : ℚ) / 2

end

end A364000.P5142612272591157627

/-! ## A364000.P16951277111904867106

`A004524(A363999(n+1))`
-/

namespace A364000.P16951277111904867106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A363999 (n + 1)).toNat

end

end A364000.P16951277111904867106

/-! ## A364000.P12713727553343071069

`A004526(A363999(n+1)-1)`
-/

namespace A364000.P12713727553343071069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A363999 (n + 1) - 1).toNat

end

end A364000.P12713727553343071069

/-! ## A364000.P4393371920480036541

`A006370(A363999(n+1)-1)`
-/

namespace A364000.P4393371920480036541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A363999 (n + 1) - 1).toNat

end

end A364000.P4393371920480036541

/-! ## A364000.P11497506209608815891

`A038572(A363999(n+1)-1)`
-/

namespace A364000.P11497506209608815891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A363999 (n + 1) - 1).toNat

end

end A364000.P11497506209608815891

/-! ## A364000.P16281955350454798777

`A004526(or(1, A363999(n+1)))`
-/

namespace A364000.P16281955350454798777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lor 1 (A363999 (n + 1))).toNat

end

end A364000.P16281955350454798777

/-! ## A364000.P1526389411062076295

`A004526(A363999(n+1))*A178489(n)`
-/

namespace A364000.P1526389411062076295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A363999 (n + 1)).toNat * A178489 n

end

end A364000.P1526389411062076295

/-! ## A364000.P9771124608978704886

`A152271(A363999(n+1))-A152271(2*(n+1))`
-/

namespace A364000.P9771124608978704886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A363999 (n + 1)).toNat - A152271 (2 * (n + 1))

end

end A364000.P9771124608978704886

/-! ## A364000.P9441871985433841299

`A004526(A088705(2*n+1)*A363999(n+1))`
-/

namespace A364000.P9441871985433841299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A088705 (2 * n + 1) * A363999 (n + 1)).toNat

end

end A364000.P9441871985433841299

/-!
# A364001: Primes of the form |2^i - 3^j|, i >= 1, j >= 1.

The programs for A364001, there is no canonical definition to state claims against.
-/

/-! ## A364001.P8838159311552616385

`filter[2*A364000(n+1)+1, A010051(#)]`
-/

namespace A364001.P8838159311552616385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A364000 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A364001.P8838159311552616385

/-! ## A364001.P1536788102741788850

`filter[2*A364000(n+1)+1, A171387(#)]`
-/

namespace A364001.P1536788102741788850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A364000 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A364001.P1536788102741788850

/-! ## A364001.P3075615537254762130

`filter[2*A364000(n+1)+1, A257531(#)]`
-/

namespace A364001.P3075615537254762130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A364000 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A364001.P3075615537254762130

/-! ## A364001.P7865323667639825529

`filter[2*A364000(n+1)+1, A323153(#)]`
-/

namespace A364001.P7865323667639825529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A364000 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A364001.P7865323667639825529

/-! ## A364001.P10943232771384217045

`filter[A223134(A364000(n+1)), A010051(#)]`
-/

namespace A364001.P10943232771384217045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 (A364000 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A364001.P10943232771384217045

/-!
# A364002: The chromatic number of the Euclidean distance graph G(Z^3, sqrt(n)).

The programs for A364002, there is no canonical definition to state claims against.
-/

/-! ## A364002.P16575154243698949811

`A036581(n)+A001285(A112537(n+1))`
-/

namespace A364002.P16575154243698949811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036581 n + A001285 (A112537 (n + 1)).toNat

end

end A364002.P16575154243698949811

/-! ## A364002.P14160006012280056313

`A342671(n+1)+A030190(A023194(n+1))`
-/

namespace A364002.P14160006012280056313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342671 (n + 1) + A030190 (A023194 (n + 1)).toNat

end

end A364002.P14160006012280056313

/-!
# A364003: Integers K such that PSL_2(K) is a K_4-simple group, i.e., |PSL_2(K)| has 4 distinct prime divisors.

The programs for A364003, there is no canonical definition to state claims against.
-/

/-! ## A364003.P9817522792155721988

`eq[A161111(n+1), A395096(n)]`
-/

namespace A364003.P9817522792155721988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395096 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A364003.P9817522792155721988

/-! ## A364003.P1374526925113188197

`eq[A161110(n+1), A395096(n)]`
-/

namespace A364003.P1374526925113188197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395096 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A364003.P1374526925113188197

/-! ## A364003.P3326374133555898008

`A088839(A007581(n))+A013929(n+1)`
-/

namespace A364003.P3326374133555898008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088839 (A007581 n).toNat + A013929 (n + 1)

end

end A364003.P3326374133555898008

/-! ## A364003.P9076142770310333407

`or(A175553(2*n+5), A267152(A303360(n)))`
-/

namespace A364003.P9076142770310333407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A175553 (2 * n + 5)) (A267152 (A303360 n).toNat)

end

end A364003.P9076142770310333407

/-! ## A364003.P1015303438155071389

`A088839(A344344(3*n+1))+A013929(n+1)`
-/

namespace A364003.P1015303438155071389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088839 (A344344 (3 * n + 1)).toNat + A013929 (n + 1)

end

end A364003.P1015303438155071389

/-!
# A364004: Orders of simple groups PSL(2,K) with exactly 4 prime divisors.

The programs for A364004, there is no canonical definition to state claims against.
-/

/-! ## A364004.P9327563836765451232

`A033931(A364003(n+1)-1)`
-/

namespace A364004.P9327563836765451232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033931 (A364003 (n + 1) - 1).toNat

end

end A364004.P9327563836765451232

/-! ## A364004.P13450558211004387575

`filter[A352806(n+3), A353672(#)]`
-/

namespace A364004.P13450558211004387575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352806 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353672 (f1 j).toNat = 1) n)

end

end A364004.P13450558211004387575

/-!
# A364005: Numbers whose Wythoff representation (A189921, A317208) is palindromic.

The programs for A364005, there is no canonical definition to state claims against.
-/

/-! ## A364005.P10193272816788597646

`A094202(A028310(n))+A057427(n)`
-/

namespace A364005.P10193272816788597646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094202 (A028310 n).toNat + A057427 n

end

end A364005.P10193272816788597646

/-! ## A364005.P6338599914416679141

`A094202(A028310(n))-A057428(n)`
-/

namespace A364005.P6338599914416679141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094202 (A028310 n).toNat - A057428 n

end

end A364005.P6338599914416679141

/-! ## A364005.P16920216157858912943

`A040000(n)+A094202(A028310(n))-1`
-/

namespace A364005.P16920216157858912943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n + (A094202 (A028310 n).toNat - 1)

end

end A364005.P16920216157858912943

/-! ## A364005.P13148780672450878154

`(A094202(A028310(n))+1)%A069778(n)`
-/

namespace A364005.P13148780672450878154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094202 (A028310 n).toNat + 1) (A069778 n)

end

end A364005.P13148780672450878154

/-! ## A364005.P14448977625464854551

`A094202(A028310(n))+A000051(n)%2`
-/

namespace A364005.P14448977625464854551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094202 (A028310 n).toNat + Int.tmod (A000051 n) 2

end

end A364005.P14448977625464854551

/-! ## A364005.P5744983710831409060

`A275437(n²)+A094202(A028310(n))-1`
-/

namespace A364005.P5744983710831409060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275437 (n ^ 2) + (A094202 (A028310 n).toNat - 1)

end

end A364005.P5744983710831409060

/-!
# A364007: Numbers k such that k and k+1 are both Wythoff-Niven numbers (A364006).

The programs for A364007, there is no canonical definition to state claims against.
-/

/-! ## A364007.P7204767463415903149

`∩[A364006(n+1)-1, A364006(n+1)]`
-/

namespace A364007.P7204767463415903149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364006 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364007.P7204767463415903149

/-!
# A364008: Starts of runs of 3 consecutive integers that are Wythoff-Niven numbers (A364006).

The programs for A364008, there is no canonical definition to state claims against.
-/

/-! ## A364008.P13350320831849161095

`∩[A364007(n+1)-1, A364007(n+1)]`
-/

namespace A364008.P13350320831849161095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364007 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364008.P13350320831849161095

/-!
# A364009: Starts of runs of 4 consecutive integers that are Wythoff-Niven numbers (A364006).

The programs for A364009, there is no canonical definition to state claims against.
-/

/-! ## A364009.P10344756052650952221

`∩[A364008(n+1)-1, A364008(n+1)]`
-/

namespace A364009.P10344756052650952221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364008 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364009.P10344756052650952221

/-!
# A364010: Semiprimes k such that none of k-2, k-1, k+1, and k+2 is squarefree.

The programs for A364010, there is no canonical definition to state claims against.
-/

/-! ## A364010.P6548607774167015652

`filter[A268331(n+1), A064911(#)]`
-/

namespace A364010.P6548607774167015652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A364010.P6548607774167015652

/-! ## A364010.P6448834165918837422

`filter[A268331(n+1), A280710(#)]`
-/

namespace A364010.P6448834165918837422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A364010.P6448834165918837422

/-! ## A364010.P705107093286297513

`filter[A268331(n+1), A354927(#)]`
-/

namespace A364010.P705107093286297513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A364010.P705107093286297513

/-! ## A364010.P9266393059545319893

`filter[A268331(n+1), A373481(#)]`
-/

namespace A364010.P9266393059545319893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A364010.P9266393059545319893

/-! ## A364010.P16139967924396049

`∩[A268331(n+1), A364025(n+1)]`
-/

namespace A364010.P16139967924396049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364010.P16139967924396049

/-!
# A364011: Expansion of Sum_{k>0} x^k / (1 + x^(3*k)).

The programs for A364011, the canonical program `A364011.P3082904920966475495` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364011 has offset 1).

The definition of A364011 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364011.P3082904920966475495

`A364205(n+1)+A002324(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A364011

/-- `A364205(n+1)+A002324(n+1)` -/
def P3082904920966475495.Spec : Prop :=
  ∀ n, P3082904920966475495.a n = A364011 (n + 1)

theorem P3082904920966475495.correct : P3082904920966475495.Spec := by
  intro n
  simp only [A364011, Nat.add_sub_cancel]

end A364011

/-! ## A364011.P8213532554140480308

`A364014(n+1)+A256232(n+1)`
-/

namespace A364011.P8213532554140480308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364014 (n + 1) + A256232 (n + 1)

end

end A364011.P8213532554140480308

namespace A364011

/-- `A364014(n+1)+A256232(n+1)` -/
def P8213532554140480308.Spec : Prop :=
  ∀ n, P8213532554140480308.a n = A364011 (n + 1)

end A364011

/-! ## A364011.P13243942073924690889

`A123331(n+1)-A364014(n+1)`
-/

namespace A364011.P13243942073924690889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123331 (n + 1) - A364014 (n + 1)

end

end A364011.P13243942073924690889

namespace A364011

/-- `A123331(n+1)-A364014(n+1)` -/
def P13243942073924690889.Spec : Prop :=
  ∀ n, P13243942073924690889.a n = A364011 (n + 1)

end A364011

/-! ## A364011.P7090603550746834424

`∑{d}[n+1, A023900(#)*A364012((n+1)/#)]`
-/

namespace A364011.P7090603550746834424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A364012 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364011.P7090603550746834424

namespace A364011

/-- `∑{d}[n+1, A023900(#)*A364012((n+1)/#)]` -/
def P7090603550746834424.Spec : Prop :=
  ∀ n, P7090603550746834424.a n = A364011 (n + 1)

end A364011

/-! ## A364011.P4269203151884880815

`∑{d}[n+1, A046970(#)*A364013((n+1)/#)]`
-/

namespace A364011.P4269203151884880815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046970 d * A364013 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364011.P4269203151884880815

namespace A364011

/-- `∑{d}[n+1, A046970(#)*A364013((n+1)/#)]` -/
def P4269203151884880815.Spec : Prop :=
  ∀ n, P4269203151884880815.a n = A364011 (n + 1)

end A364011

/-! ## A364011.P1384132769632222164

`A364014(n+1)+A364205(n+1)+A364204(n+1)`
-/

namespace A364011.P1384132769632222164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364014 (n + 1) + (A364205 (n + 1) + A364204 (n + 1))

end

end A364011.P1384132769632222164

namespace A364011

/-- `A364014(n+1)+A364205(n+1)+A364204(n+1)` -/
def P1384132769632222164.Spec : Prop :=
  ∀ n, P1384132769632222164.a n = A364011 (n + 1)

theorem P1384132769632222164.correct : P1384132769632222164.Spec := by
  intro n
  simp only [A364011, Nat.add_sub_cancel, A364011.P1384132769632222164.a, A364011.P3082904920966475495.a, A002324, A002324.P17421748272452344756.a, A364014, A364014.P12076871723784190955.a, A364204, A364204.P12516854949562588598.f1, A364204.P12516854949562588598.a, A364205, A364205.P2014408668369465084.a, A001817, A001817.P2839206695684961582.f1, A001817.P2839206695684961582.a, A001822, A001822.P18157722536970199446.f1, A001822.P18157722536970199446.a, A117212, A117212.P4949317513557667105.f1, A117212.P4949317513557667105.a, A122860, A122860.P11540737575163240451.f1, A122860.P11540737575163240451.a, A326399, A326399.P10632042506971658356.f1, A326399.P10632042506971658356.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A033999, A033999.P17703899380244199787.a, A049347, A049347.P9996747395155426839.a, A079978, A079978.P10382542118278163374.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A364011

/-! ## A364011.P6679577104020259590

`A001817(n+1)+A364205(n+1)-A001822(n+1)`
-/

namespace A364011.P6679577104020259590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (n + 1) + (A364205 (n + 1) - A001822 (n + 1))

end

end A364011.P6679577104020259590

namespace A364011

/-- `A001817(n+1)+A364205(n+1)-A001822(n+1)` -/
def P6679577104020259590.Spec : Prop :=
  ∀ n, P6679577104020259590.a n = A364011 (n + 1)

theorem P6679577104020259590.correct : P6679577104020259590.Spec := by
  intro n
  simp only [A364011, Nat.add_sub_cancel, A364011.P6679577104020259590.a, A364011.P3082904920966475495.a, A001817, A001817.P2839206695684961582.f1, A001817.P2839206695684961582.a, A001822, A001822.P18157722536970199446.f1, A001822.P18157722536970199446.a, A002324, A002324.P17421748272452344756.a, A364205, A364205.P2014408668369465084.a, A122860, A122860.P11540737575163240451.f1, A122860.P11540737575163240451.a, A364204, A364204.P12516854949562588598.f1, A364204.P12516854949562588598.a, A033999, A033999.P17703899380244199787.a, A049347, A049347.P9996747395155426839.a, A117212, A117212.P4949317513557667105.f1, A117212.P4949317513557667105.a, A326399, A326399.P10632042506971658356.f1, A326399.P10632042506971658356.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A079978, A079978.P10382542118278163374.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A364011

/-! ## A364011.P10151766748708818696

`A279060(n+1)+A279060(n+1)-A001817(n+1)`
-/

namespace A364011.P10151766748708818696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 (n + 1) + (A279060 (n + 1) - A001817 (n + 1))

end

end A364011.P10151766748708818696

namespace A364011

/-- `A279060(n+1)+A279060(n+1)-A001817(n+1)` -/
def P10151766748708818696.Spec : Prop :=
  ∀ n, P10151766748708818696.a n = A364011 (n + 1)

end A364011

/-! ## A364011.P15589952589861053555

`∑{d}[(n+1)/3^val(n+1, 3), A010892(#)]`
-/

namespace A364011.P15589952589861053555
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A010892 d

end

end A364011.P15589952589861053555

namespace A364011

/-- `∑{d}[(n+1)/3^val(n+1, 3), A010892(#)]` -/
def P15589952589861053555.Spec : Prop :=
  ∀ n, P15589952589861053555.a n = A364011 (n + 1)

end A364011

/-! ## A364011.P9566823930111120222

`∑{d}[A038502(n+1), A010892(#)]`
-/

namespace A364011.P9566823930111120222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010892 d

end

end A364011.P9566823930111120222

namespace A364011

/-- `∑{d}[A038502(n+1), A010892(#)]` -/
def P9566823930111120222.Spec : Prop :=
  ∀ n, P9566823930111120222.a n = A364011 (n + 1)

end A364011

/-!
# A364012: Expansion of Sum_{k>0} k * x^k / (1 + x^(3*k)).

The programs for A364012, the canonical program `A364012.P10594367509355664606` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364012 has offset 1).

The definition of A364012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364012.P13429812775876606599

`A364015(n+1)+A121443(n+1)`
-/

namespace A364012.P13429812775876606599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364015 (n + 1) + A121443 (n + 1)

end

end A364012.P13429812775876606599

namespace A364012

/-- `A364015(n+1)+A121443(n+1)` -/
def P13429812775876606599.Spec : Prop :=
  ∀ n, P13429812775876606599.a n = A364012 (n + 1)

theorem P13429812775876606599.correct : P13429812775876606599.Spec := by
  intro n
  simp only [A364012, Nat.add_sub_cancel, A364012.P13429812775876606599.a, A364012.P10594367509355664606.a, A078708, A078708.P10580976102168084767.a, A121443, A121443.P5986038354224394648.a, A326399, A326399.P10632042506971658356.f1, A326399.P10632042506971658356.a, A364015, A364015.P9253596090287980520.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A046897, A046897.P16845607147500086519.f1, A046897.P16845607147500086519.a, A079978, A079978.P10382542118278163374.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A364012

/-! ## A364012.P11544774648807908490

`2*A364017(n+1)-A364013(n+1)`
-/

namespace A364012.P11544774648807908490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A364017 (n + 1) - A364013 (n + 1)

end

end A364012.P11544774648807908490

namespace A364012

/-- `2*A364017(n+1)-A364013(n+1)` -/
def P11544774648807908490.Spec : Prop :=
  ∀ n, P11544774648807908490.a n = A364012 (n + 1)

theorem P11544774648807908490.correct : P11544774648807908490.Spec := by
  intro n
  simp only [A364012, Nat.add_sub_cancel, A364012.P11544774648807908490.a, A364012.P10594367509355664606.a, A078708, A078708.P10580976102168084767.a, A326399, A326399.P10632042506971658356.f1, A326399.P10632042506971658356.a, A364013, A364013.P10793024115163397505.a, A364017, A364017.P4674726286493129954.f1, A364017.P4674726286493129954.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007438, A007438.P10356689231106603491.a, A079978, A079978.P10382542118278163374.a, A364011, A364011.P3082904920966475495.a, A000010, A000010.P4673923239450215316.a, A002324, A002324.P17421748272452344756.a, A007434, A007434.P3432859153295839493.a, A364205, A364205.P2014408668369465084.a, A001615, A001615.P12078511981713404634.a, A001817, A001817.P2839206695684961582.f1, A001817.P2839206695684961582.a, A001822, A001822.P18157722536970199446.f1, A001822.P18157722536970199446.a, A003557, A003557.P6364735403900941810.a, A122860, A122860.P11540737575163240451.f1, A122860.P11540737575163240451.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A364204, A364204.P12516854949562588598.f1, A364204.P12516854949562588598.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A364012

/-! ## A364012.P9105683565172844337

`∑{d}[n+1, A000010(#)*A364011((n+1)/#)]`
-/

namespace A364012.P9105683565172844337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A364011 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364012.P9105683565172844337

namespace A364012

/-- `∑{d}[n+1, A000010(#)*A364011((n+1)/#)]` -/
def P9105683565172844337.Spec : Prop :=
  ∀ n, P9105683565172844337.a n = A364012 (n + 1)

end A364012

/-! ## A364012.P7641445893001140331

`A121443(n+1)+2*A364018(n+1)-A364016(n+1)`
-/

namespace A364012.P7641445893001140331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121443 (n + 1) + (2 * A364018 (n + 1) - A364016 (n + 1))

end

end A364012.P7641445893001140331

namespace A364012

/-- `A121443(n+1)+2*A364018(n+1)-A364016(n+1)` -/
def P7641445893001140331.Spec : Prop :=
  ∀ n, P7641445893001140331.a n = A364012 (n + 1)

theorem P7641445893001140331.correct : P7641445893001140331.Spec := by
  intro n
  simp only [A364012, Nat.add_sub_cancel, A364012.P7641445893001140331.a, A364012.P10594367509355664606.a, A078708, A078708.P10580976102168084767.a, A121443, A121443.P5986038354224394648.a, A326399, A326399.P10632042506971658356.f1, A326399.P10632042506971658356.a, A364016, A364016.P4474703174552157399.a, A364018, A364018.P745909422124864912.f1, A364018.P745909422124864912.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007438, A007438.P10356689231106603491.a, A046897, A046897.P16845607147500086519.f1, A046897.P16845607147500086519.a, A079978, A079978.P10382542118278163374.a, A364014, A364014.P12076871723784190955.a, A364015, A364015.P9253596090287980520.a, A000010, A000010.P4673923239450215316.a, A002324, A002324.P17421748272452344756.a, A007434, A007434.P3432859153295839493.a, A364204, A364204.P12516854949562588598.f1, A364204.P12516854949562588598.a, A001615, A001615.P12078511981713404634.a, A001817, A001817.P2839206695684961582.f1, A001817.P2839206695684961582.a, A001822, A001822.P18157722536970199446.f1, A001822.P18157722536970199446.a, A003557, A003557.P6364735403900941810.a, A117212, A117212.P4949317513557667105.f1, A117212.P4949317513557667105.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A364012

/-! ## A364012.P10594367509355664606

`A326399(2*(n+1))-A078708(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A364012

/-- `A326399(2*(n+1))-A078708(n+1)` -/
def P10594367509355664606.Spec : Prop :=
  ∀ n, P10594367509355664606.a n = A364012 (n + 1)

theorem P10594367509355664606.correct : P10594367509355664606.Spec := by
  intro n
  simp only [A364012, Nat.add_sub_cancel]

end A364012

/-!
# A364013: Expansion of Sum_{k>0} k^2 * x^k / (1 + x^(3*k)).

The programs for A364013, the canonical program `A364013.P10793024115163397505` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364013 has offset 1).

The definition of A364013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364013.P10793024115163397505

`2*A364017(n+1)-A364012(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A364013

/-- `2*A364017(n+1)-A364012(n+1)` -/
def P10793024115163397505.Spec : Prop :=
  ∀ n, P10793024115163397505.a n = A364013 (n + 1)

theorem P10793024115163397505.correct : P10793024115163397505.Spec := by
  intro n
  simp only [A364013, Nat.add_sub_cancel]

end A364013

/-! ## A364013.P6343520810348162090

`∑{d}[n+1, A002618(#)*A364012((n+1)/#)]`
-/

namespace A364013.P6343520810348162090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A364012 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364013.P6343520810348162090

namespace A364013

/-- `∑{d}[n+1, A002618(#)*A364012((n+1)/#)]` -/
def P6343520810348162090.Spec : Prop :=
  ∀ n, P6343520810348162090.a n = A364013 (n + 1)

end A364013

/-! ## A364013.P12956543903386401036

`∑{d}[n+1, A007434(#)*A364011((n+1)/#)]`
-/

namespace A364013.P12956543903386401036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A364011 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364013.P12956543903386401036

namespace A364013

/-- `∑{d}[n+1, A007434(#)*A364011((n+1)/#)]` -/
def P12956543903386401036.Spec : Prop :=
  ∀ n, P12956543903386401036.a n = A364013 (n + 1)

end A364013

/-!
# A364014: Expansion of Sum_{k>0} x^(2*k) / (1 + x^(3*k)).

The programs for A364014, the canonical program `A364014.P12076871723784190955` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364014 has offset 1).

The definition of A364014 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364014.P12076871723784190955

`A002324(n+1)-A364204(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A364014

/-- `A002324(n+1)-A364204(n+1)` -/
def P12076871723784190955.Spec : Prop :=
  ∀ n, P12076871723784190955.a n = A364014 (n + 1)

theorem P12076871723784190955.correct : P12076871723784190955.Spec := by
  intro n
  simp only [A364014, Nat.add_sub_cancel]

end A364014

/-! ## A364014.P7837533019640602069

`A123331(n+1)-A364011(n+1)`
-/

namespace A364014.P7837533019640602069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123331 (n + 1) - A364011 (n + 1)

end

end A364014.P7837533019640602069

namespace A364014

/-- `A123331(n+1)-A364011(n+1)` -/
def P7837533019640602069.Spec : Prop :=
  ∀ n, P7837533019640602069.a n = A364014 (n + 1)

end A364014

/-! ## A364014.P4774305428702976640

`A364011(n+1)-A256232(n+1)`
-/

namespace A364014.P4774305428702976640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364011 (n + 1) - A256232 (n + 1)

end

end A364014.P4774305428702976640

namespace A364014

/-- `A364011(n+1)-A256232(n+1)` -/
def P4774305428702976640.Spec : Prop :=
  ∀ n, P4774305428702976640.a n = A364014 (n + 1)

end A364014

/-! ## A364014.P10843705151254744290

`∑{d}[n+1, A023900(#)*A364015((n+1)/#)]`
-/

namespace A364014.P10843705151254744290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A364015 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364014.P10843705151254744290

namespace A364014

/-- `∑{d}[n+1, A023900(#)*A364015((n+1)/#)]` -/
def P10843705151254744290.Spec : Prop :=
  ∀ n, P10843705151254744290.a n = A364014 (n + 1)

end A364014

/-! ## A364014.P15335983987804862345

`∑{d}[n+1, A046970(#)*A364016((n+1)/#)]`
-/

namespace A364014.P15335983987804862345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046970 d * A364016 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364014.P15335983987804862345

namespace A364014

/-- `∑{d}[n+1, A046970(#)*A364016((n+1)/#)]` -/
def P15335983987804862345.Spec : Prop :=
  ∀ n, P15335983987804862345.a n = A364014 (n + 1)

end A364014

/-! ## A364014.P12082179990566821070

`A001817(n+1)-(A364204(n+1)+A001822(n+1))`
-/

namespace A364014.P12082179990566821070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (n + 1) - (A364204 (n + 1) + A001822 (n + 1))

end

end A364014.P12082179990566821070

namespace A364014

/-- `A001817(n+1)-(A364204(n+1)+A001822(n+1))` -/
def P12082179990566821070.Spec : Prop :=
  ∀ n, P12082179990566821070.a n = A364014 (n + 1)

theorem P12082179990566821070.correct : P12082179990566821070.Spec := by
  intro n
  simp only [A364014, Nat.add_sub_cancel, A364014.P12082179990566821070.a, A364014.P12076871723784190955.a, A001817, A001817.P2839206695684961582.f1, A001817.P2839206695684961582.a, A001822, A001822.P18157722536970199446.f1, A001822.P18157722536970199446.a, A002324, A002324.P17421748272452344756.a, A364204, A364204.P12516854949562588598.f1, A364204.P12516854949562588598.a, A117212, A117212.P4949317513557667105.f1, A117212.P4949317513557667105.a, A326399, A326399.P10632042506971658356.f1, A326399.P10632042506971658356.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A079978, A079978.P10382542118278163374.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A364014

/-! ## A364014.P11657087775353570940

`A364011(n+1)-(A364205(n+1)+A364204(n+1))`
-/

namespace A364014.P11657087775353570940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364011 (n + 1) - (A364205 (n + 1) + A364204 (n + 1))

end

end A364014.P11657087775353570940

namespace A364014

/-- `A364011(n+1)-(A364205(n+1)+A364204(n+1))` -/
def P11657087775353570940.Spec : Prop :=
  ∀ n, P11657087775353570940.a n = A364014 (n + 1)

theorem P11657087775353570940.correct : P11657087775353570940.Spec := by
  intro n
  simp only [A364014, Nat.add_sub_cancel, A364014.P11657087775353570940.a, A364014.P12076871723784190955.a, A002324, A002324.P17421748272452344756.a, A364011, A364011.P3082904920966475495.a, A364204, A364204.P12516854949562588598.f1, A364204.P12516854949562588598.a, A364205, A364205.P2014408668369465084.a, A001817, A001817.P2839206695684961582.f1, A001817.P2839206695684961582.a, A001822, A001822.P18157722536970199446.f1, A001822.P18157722536970199446.a, A117212, A117212.P4949317513557667105.f1, A117212.P4949317513557667105.a, A122860, A122860.P11540737575163240451.f1, A122860.P11540737575163240451.a, A326399, A326399.P10632042506971658356.f1, A326399.P10632042506971658356.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A033999, A033999.P17703899380244199787.a, A049347, A049347.P9996747395155426839.a, A079978, A079978.P10382542118278163374.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A364014

/-! ## A364014.P13443387974077245996

`A364011(n+1)-A364011(A020338(n+1))`
-/

namespace A364014.P13443387974077245996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364011 (n + 1) - A364011 (A020338 (n + 1)).toNat

end

end A364014.P13443387974077245996

namespace A364014

/-- `A364011(n+1)-A364011(A020338(n+1))` -/
def P13443387974077245996.Spec : Prop :=
  ∀ n, P13443387974077245996.a n = A364014 (n + 1)

end A364014

/-!
# A364015: Expansion of Sum_{k>0} k * x^(2*k) / (1 + x^(3*k)).

The programs for A364015, the canonical program `A364015.P9253596090287980520` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364015 has offset 1).

The definition of A364015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364015.P9253596090287980520

`A364012(n+1)-A121443(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A364015

/-- `A364012(n+1)-A121443(n+1)` -/
def P9253596090287980520.Spec : Prop :=
  ∀ n, P9253596090287980520.a n = A364015 (n + 1)

theorem P9253596090287980520.correct : P9253596090287980520.Spec := by
  intro n
  simp only [A364015, Nat.add_sub_cancel]

end A364015

/-! ## A364015.P12140386926396217908

`2*A364018(n+1)-A364016(n+1)`
-/

namespace A364015.P12140386926396217908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A364018 (n + 1) - A364016 (n + 1)

end

end A364015.P12140386926396217908

namespace A364015

/-- `2*A364018(n+1)-A364016(n+1)` -/
def P12140386926396217908.Spec : Prop :=
  ∀ n, P12140386926396217908.a n = A364015 (n + 1)

theorem P12140386926396217908.correct : P12140386926396217908.Spec := by
  intro n
  simp only [A364015, Nat.add_sub_cancel, A364015.P12140386926396217908.a, A364015.P9253596090287980520.a, A121443, A121443.P5986038354224394648.a, A364012, A364012.P10594367509355664606.a, A364016, A364016.P4474703174552157399.a, A364018, A364018.P745909422124864912.f1, A364018.P745909422124864912.a, A007438, A007438.P10356689231106603491.a, A046897, A046897.P16845607147500086519.f1, A046897.P16845607147500086519.a, A078708, A078708.P10580976102168084767.a, A326399, A326399.P10632042506971658356.f1, A326399.P10632042506971658356.a, A364014, A364014.P12076871723784190955.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A002324, A002324.P17421748272452344756.a, A007434, A007434.P3432859153295839493.a, A079978, A079978.P10382542118278163374.a, A364204, A364204.P12516854949562588598.f1, A364204.P12516854949562588598.a, A001615, A001615.P12078511981713404634.a, A001817, A001817.P2839206695684961582.f1, A001817.P2839206695684961582.a, A001822, A001822.P18157722536970199446.f1, A001822.P18157722536970199446.a, A003557, A003557.P6364735403900941810.a, A117212, A117212.P4949317513557667105.f1, A117212.P4949317513557667105.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A364015

/-! ## A364015.P14852488576131626874

`∑{d}[n+1, A000010(#)*A364014((n+1)/#)]`
-/

namespace A364015.P14852488576131626874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A364014 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364015.P14852488576131626874

namespace A364015

/-- `∑{d}[n+1, A000010(#)*A364014((n+1)/#)]` -/
def P14852488576131626874.Spec : Prop :=
  ∀ n, P14852488576131626874.a n = A364015 (n + 1)

end A364015

/-! ## A364015.P7429653365968653459

`A078708(n+1)-A326400(2*(n+1))`
-/

namespace A364015.P7429653365968653459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078708 (n + 1) - A326400 (2 * (n + 1))

end

end A364015.P7429653365968653459

namespace A364015

/-- `A078708(n+1)-A326400(2*(n+1))` -/
def P7429653365968653459.Spec : Prop :=
  ∀ n, P7429653365968653459.a n = A364015 (n + 1)

end A364015

/-! ## A364015.P6842218047033902356

`A326401(2*(n+1))-A364012(n+1)`
-/

namespace A364015.P6842218047033902356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326401 (2 * (n + 1)) - A364012 (n + 1)

end

end A364015.P6842218047033902356

namespace A364015

/-- `A326401(2*(n+1))-A364012(n+1)` -/
def P6842218047033902356.Spec : Prop :=
  ∀ n, P6842218047033902356.a n = A364015 (n + 1)

end A364015

/-! ## A364015.P3775238674979102614

`A326399(2*(n+1))-A385138(2*(n+1))`
-/

namespace A364015.P3775238674979102614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326399 (2 * (n + 1)) - A385138 (2 * (n + 1))

end

end A364015.P3775238674979102614

namespace A364015

/-- `A326399(2*(n+1))-A385138(2*(n+1))` -/
def P3775238674979102614.Spec : Prop :=
  ∀ n, P3775238674979102614.a n = A364015 (n + 1)

end A364015

/-!
# A364016: Expansion of Sum_{k>0} k^2 * x^(2*k) / (1 + x^(3*k)).

The programs for A364016, the canonical program `A364016.P4474703174552157399` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364016 has offset 1).

The definition of A364016 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364016.P4474703174552157399

`2*A364018(n+1)-A364015(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A364016

/-- `2*A364018(n+1)-A364015(n+1)` -/
def P4474703174552157399.Spec : Prop :=
  ∀ n, P4474703174552157399.a n = A364016 (n + 1)

theorem P4474703174552157399.correct : P4474703174552157399.Spec := by
  intro n
  simp only [A364016, Nat.add_sub_cancel]

end A364016

/-! ## A364016.P6623334448171017863

`∑{d}[n+1, A002618(#)*A364015((n+1)/#)]`
-/

namespace A364016.P6623334448171017863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A364015 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364016.P6623334448171017863

namespace A364016

/-- `∑{d}[n+1, A002618(#)*A364015((n+1)/#)]` -/
def P6623334448171017863.Spec : Prop :=
  ∀ n, P6623334448171017863.a n = A364016 (n + 1)

end A364016

/-! ## A364016.P15207380122395417615

`∑{d}[n+1, A007434(#)*A364014((n+1)/#)]`
-/

namespace A364016.P15207380122395417615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A364014 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364016.P15207380122395417615

namespace A364016

/-- `∑{d}[n+1, A007434(#)*A364014((n+1)/#)]` -/
def P15207380122395417615.Spec : Prop :=
  ∀ n, P15207380122395417615.a n = A364016 (n + 1)

end A364016

/-!
# A364017: Expansion of Sum_{k>0} (-1)^(k-1) * x^(3*k-2) / (1 - x^(3*k-2))^3.

The programs for A364017, the canonical program `A364017.P4674726286493129954` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364017 has offset 1).

The definition of A364017 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364017.P16185610421677634969

`(A364013(n+1)+A364012(n+1))/2`
-/

namespace A364017.P16185610421677634969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364013 (n + 1) + A364012 (n + 1) : ℚ) / 2

end

end A364017.P16185610421677634969

namespace A364017

/-- `(A364013(n+1)+A364012(n+1))/2` -/
def P16185610421677634969.Spec : Prop :=
  ∀ n, P16185610421677634969.a n = (A364017 (n + 1) : ℚ)

theorem P16185610421677634969.correct : P16185610421677634969.Spec := by
  intro n
  simp only [A364017, Nat.add_sub_cancel, A364017.P16185610421677634969.a, A364017.P4674726286493129954.f1, A364017.P4674726286493129954.a, A007438, A007438.P10356689231106603491.a, A364011, A364011.P3082904920966475495.a, A364012, A364012.P10594367509355664606.a, A364013, A364013.P10793024115163397505.a, A000010, A000010.P4673923239450215316.a, A002324, A002324.P17421748272452344756.a, A007434, A007434.P3432859153295839493.a, A078708, A078708.P10580976102168084767.a, A326399, A326399.P10632042506971658356.f1, A326399.P10632042506971658356.a, A364205, A364205.P2014408668369465084.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001615, A001615.P12078511981713404634.a, A001817, A001817.P2839206695684961582.f1, A001817.P2839206695684961582.a, A001822, A001822.P18157722536970199446.f1, A001822.P18157722536970199446.a, A003557, A003557.P6364735403900941810.a, A079978, A079978.P10382542118278163374.a, A122860, A122860.P11540737575163240451.f1, A122860.P11540737575163240451.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A364204, A364204.P12516854949562588598.f1, A364204.P12516854949562588598.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A033999, A033999.P17703899380244199787.a, A049347, A049347.P9996747395155426839.a, A117212, A117212.P4949317513557667105.f1, A117212.P4949317513557667105.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A364017

/-! ## A364017.P4674726286493129954

`∑{d}[n+1, A007438(#)*A364011((n+1)/#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A364017

/-- `∑{d}[n+1, A007438(#)*A364011((n+1)/#)]` -/
def P4674726286493129954.Spec : Prop :=
  ∀ n, P4674726286493129954.a n = A364017 (n + 1)

theorem P4674726286493129954.correct : P4674726286493129954.Spec := by
  intro n
  simp only [A364017, Nat.add_sub_cancel]

end A364017

/-! ## A364017.P7582480110403611565

`∑{d}[n+1, A023896(#)*A364012((n+1)/#)]`
-/

namespace A364017.P7582480110403611565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023896 d * A364012 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364017.P7582480110403611565

namespace A364017

/-- `∑{d}[n+1, A023896(#)*A364012((n+1)/#)]` -/
def P7582480110403611565.Spec : Prop :=
  ∀ n, P7582480110403611565.a n = A364017 (n + 1)

end A364017

/-! ## A364017.P16100773925023285883

`A032742(A364013(n+1)+A364012(n+1))`
-/

namespace A364017.P16100773925023285883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A364013 (n + 1) + A364012 (n + 1)).toNat

end

end A364017.P16100773925023285883

namespace A364017

/-- `A032742(A364013(n+1)+A364012(n+1))` -/
def P16100773925023285883.Spec : Prop :=
  ∀ n, P16100773925023285883.a n = A364017 (n + 1)

end A364017

/-! ## A364017.P3217489773781941585

`A289435(A364013(n+1)+A364012(n+1))`
-/

namespace A364017.P3217489773781941585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289435 (A364013 (n + 1) + A364012 (n + 1)).toNat

end

end A364017.P3217489773781941585

namespace A364017

/-- `A289435(A364013(n+1)+A364012(n+1))` -/
def P3217489773781941585.Spec : Prop :=
  ∀ n, P3217489773781941585.a n = A364017 (n + 1)

end A364017

/-!
# A364018: Expansion of Sum_{k>0} (-1)^(k-1) * x^(3*k-1) / (1 - x^(3*k-1))^3.

The programs for A364018, the canonical program `A364018.P745909422124864912` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364018 has offset 1).

The definition of A364018 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364018.P745909422124864912

`∑{d}[n+1, A007438(#)*A364014((n+1)/#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A364018

/-- `∑{d}[n+1, A007438(#)*A364014((n+1)/#)]` -/
def P745909422124864912.Spec : Prop :=
  ∀ n, P745909422124864912.a n = A364018 (n + 1)

theorem P745909422124864912.correct : P745909422124864912.Spec := by
  intro n
  simp only [A364018, Nat.add_sub_cancel]

end A364018

/-! ## A364018.P14156290555322668470

`∑{d}[n+1, A023896(#)*A364015((n+1)/#)]`
-/

namespace A364018.P14156290555322668470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023896 d * A364015 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364018.P14156290555322668470

namespace A364018

/-- `∑{d}[n+1, A023896(#)*A364015((n+1)/#)]` -/
def P14156290555322668470.Spec : Prop :=
  ∀ n, P14156290555322668470.a n = A364018 (n + 1)

end A364018

/-!
# A364019: Expansion of Sum_{k>0} k * x^k / (1 + x^(5*k)).

The programs for A364019, the canonical program `A364019.P5738425657626568886` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364019 has offset 1).

The definition of A364019 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364019.P5738425657626568886

`∑{d}[n+1, A000010(#)*A364043((n+1)/#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A364019

/-- `∑{d}[n+1, A000010(#)*A364043((n+1)/#)]` -/
def P5738425657626568886.Spec : Prop :=
  ∀ n, P5738425657626568886.a n = A364019 (n + 1)

theorem P5738425657626568886.correct : P5738425657626568886.Spec := by
  intro n
  simp only [A364019, Nat.add_sub_cancel]

end A364019

/-!
# A364020: Expansion of Sum_{k>0} k * x^(2*k) / (1 + x^(5*k)).

The programs for A364020, the canonical program `A364020.P9511425186973274188` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364020 has offset 1).

The definition of A364020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364020.P9511425186973274188

`∑{d}[n+1, A000010(#)*A364044((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A364020

/-- `∑{d}[n+1, A000010(#)*A364044((n+1)/#)]` -/
def P9511425186973274188.Spec : Prop :=
  ∀ n, P9511425186973274188.a n = A364020 (n + 1)

theorem P9511425186973274188.correct : P9511425186973274188.Spec := by
  intro n
  simp only [A364020, Nat.add_sub_cancel]

end A364020

/-!
# A364021: Expansion of Sum_{k>0} k * x^(3*k) / (1 + x^(5*k)).

The programs for A364021, the canonical program `A364021.P12955701881080745028` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364021 has offset 1).

The definition of A364021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364021.P12955701881080745028

`∑{d}[n+1, A000010(#)*A364045((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A364021

/-- `∑{d}[n+1, A000010(#)*A364045((n+1)/#)]` -/
def P12955701881080745028.Spec : Prop :=
  ∀ n, P12955701881080745028.a n = A364021 (n + 1)

theorem P12955701881080745028.correct : P12955701881080745028.Spec := by
  intro n
  simp only [A364021, Nat.add_sub_cancel]

end A364021

/-! ## A364021.P9840234538030829339

`A049347(A000537(n))*A363899(n+1)`
-/

namespace A364021.P9840234538030829339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A000537 n).toNat * A363899 (n + 1)

end

end A364021.P9840234538030829339

namespace A364021

/-- `A049347(A000537(n))*A363899(n+1)` -/
def P9840234538030829339.Spec : Prop :=
  ∀ n, P9840234538030829339.a n = A364021 (n + 1)

end A364021

/-!
# A364022: Expansion of Sum_{k>0} k * x^(4*k) / (1 + x^(5*k)).

The programs for A364022, the canonical program `A364022.P2819897864541114288` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364022 has offset 1).

The definition of A364022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364022.P2819897864541114288

`∑{d}[n+1, A000010(#)*A364046((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A364022

/-- `∑{d}[n+1, A000010(#)*A364046((n+1)/#)]` -/
def P2819897864541114288.Spec : Prop :=
  ∀ n, P2819897864541114288.a n = A364022 (n + 1)

theorem P2819897864541114288.correct : P2819897864541114288.Spec := by
  intro n
  simp only [A364022, Nat.add_sub_cancel]

end A364022

/-! ## A364022.P3199164241576319550

`A195995(A196100(3*n+4))%A001055(n+1)*A364046(n+1)`
-/

namespace A364022.P3199164241576319550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195995 (A196100 (3 * n + 4)).toNat) (A001055 (n + 1)) * A364046 (n + 1)

end

end A364022.P3199164241576319550

namespace A364022

/-- `A195995(A196100(3*n+4))%A001055(n+1)*A364046(n+1)` -/
def P3199164241576319550.Spec : Prop :=
  ∀ n, P3199164241576319550.a n = A364022 (n + 1)

end A364022

/-! ## A364022.P14469555241324645225

`A106400(A337414(n+1))*A363900(n+1)`
-/

namespace A364022.P14469555241324645225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A337414 (n + 1)).toNat * A363900 (n + 1)

end

end A364022.P14469555241324645225

namespace A364022

/-- `A106400(A337414(n+1))*A363900(n+1)` -/
def P14469555241324645225.Spec : Prop :=
  ∀ n, P14469555241324645225.a n = A364022 (n + 1)

end A364022

/-! ## A364022.P16615721325336108989

`A130696(A001055(n+1)^A346061(n))*A364046(n+1)`
-/

namespace A364022.P16615721325336108989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130696 (SequenceMachineLib.roundAway ((A001055 (n + 1) : ℚ) ^ (A346061 n : ℤ))).toNat * A364046 (n + 1)

end

end A364022.P16615721325336108989

namespace A364022

/-- `A130696(A001055(n+1)^A346061(n))*A364046(n+1)` -/
def P16615721325336108989.Spec : Prop :=
  ∀ n, P16615721325336108989.a n = A364022 (n + 1)

end A364022

/-! ## A364022.P13286385414032916784

`A099443(A001045(n))*A363900(n+1)`
-/

namespace A364022.P13286385414032916784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099443 (A001045 n).toNat * A363900 (n + 1)

end

end A364022.P13286385414032916784

namespace A364022

/-- `A099443(A001045(n))*A363900(n+1)` -/
def P13286385414032916784.Spec : Prop :=
  ∀ n, P13286385414032916784.a n = A364022 (n + 1)

end A364022

/-!
# A364025: Semiprimes with no squarefree neighbors.

The programs for A364025, the canonical program `A364025.P10912320176731338214` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364025 has offset 1).

The definition of A364025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3520 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364025.P10912320176731338214

`∩[A001358(n+1), A281192(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A364025

/-- `∩[A001358(n+1), A281192(n+1)]` -/
def P10912320176731338214.Spec : Prop :=
  ∀ n, (P10912320176731338214.a n : ℤ) = A364025 (n + 1)

theorem P10912320176731338214.correct : P10912320176731338214.Spec := by
  intro n
  simp only [A364025, Nat.add_sub_cancel]

end A364025

/-! ## A364025.P5897002658923625781

`filter[A281192(n+1), A064911(#)]`
-/

namespace A364025.P5897002658923625781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A364025.P5897002658923625781

namespace A364025

/-- `filter[A281192(n+1), A064911(#)]` -/
def P5897002658923625781.Spec : Prop :=
  ∀ n, P5897002658923625781.a n = A364025 (n + 1)

end A364025

/-! ## A364025.P1953657471760687756

`∩[A176540(n+1), A281192(n+1)]`
-/

namespace A364025.P1953657471760687756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364025.P1953657471760687756

namespace A364025

/-- `∩[A176540(n+1), A281192(n+1)]` -/
def P1953657471760687756.Spec : Prop :=
  ∀ n, (P1953657471760687756.a n : ℤ) = A364025 (n + 1)

end A364025

/-! ## A364025.P16424893634946604738

`∩[A088707(n+1)-1, A281192(n+1)]`
-/

namespace A364025.P16424893634946604738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364025.P16424893634946604738

namespace A364025

/-- `∩[A088707(n+1)-1, A281192(n+1)]` -/
def P16424893634946604738.Spec : Prop :=
  ∀ n, (P16424893634946604738.a n : ℤ) = A364025 (n + 1)

end A364025

/-!
# A364026: Table read by descending antidiagonals. T(n,k) is the big Ramsey degree of k in w^n, where w is the first transfinite ordinal, omega.

The programs for A364026, there is no canonical definition to state claims against.
-/

/-! ## A364026.P3085958001557238841

`col(n)^A341507((row(n)-col(n))²)`
-/

namespace A364026.P3085958001557238841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n : ℚ) ^ (A341507 (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) ^ 2).toNat : ℤ)

end

end A364026.P3085958001557238841

/-! ## A364026.P1849207862017189848

`A331508(n)^∏{e}[n+1, #+1]!`
-/

namespace A364026.P1849207862017189848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331508 n ^ Nat.factorial (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A364026.P1849207862017189848

/-! ## A364026.P3395801589481461113

`col(n)^A201247(row(n)+1-col(n))`
-/

namespace A364026.P3395801589481461113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n : ℚ) ^ (A201247 (SequenceMachineLib.triRow n + 1 - SequenceMachineLib.triCol n) : ℤ)

end

end A364026.P3395801589481461113

/-! ## A364026.P18165570428579592639

`A107682(A331278(n))`
-/

namespace A364026.P18165570428579592639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107682 (A331278 n).toNat

end

end A364026.P18165570428579592639

/-! ## A364026.P566261023169734956

`A327145(A331126(n))`
-/

namespace A364026.P566261023169734956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327145 (A331126 n).toNat

end

end A364026.P566261023169734956

/-!
# A364027: a(0) = 0, a(1) = 0; for n > 1, a(n) is the number of pairs of consecutive terms that sum to the same value as a(n-2) + a(n-1).

The programs for A364027, there is no canonical definition to state claims against.
-/

/-! ## A364027.P13561460440078364582

`A001221(A118965(n+1)+A052980(n))`
-/

namespace A364027.P13561460440078364582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A118965 (n + 1) + A052980 n).toNat

end

end A364027.P13561460440078364582

/-! ## A364027.P224204023652589255

`A081603(A001970(n)-A094638(n+1))`
-/

namespace A364027.P224204023652589255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A001970 n - A094638 (n + 1)).toNat

end

end A364027.P224204023652589255

/-! ## A364027.P5941854667531567336

`A196564(A280917(n+1)+A008578(n+1))`
-/

namespace A364027.P5941854667531567336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A280917 (n + 1) + A008578 (n + 1)).toNat

end

end A364027.P5941854667531567336

/-! ## A364027.P9553146052005379374

`A087436(A257300(n)+A098550(2*n+1))`
-/

namespace A364027.P9553146052005379374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A257300 n + A098550 (2 * n + 1)).toNat

end

end A364027.P9553146052005379374

/-! ## A364027.P3868065984736793005

`A039995(A230014(3*n+2)+A045344(n+1))`
-/

namespace A364027.P3868065984736793005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039995 (A230014 (3 * n + 2) + A045344 (n + 1)).toNat

end

end A364027.P3868065984736793005

/-!
# A364030: Number of Dyck paths of semilength 2n having exactly n peaks of maximal height.

The programs for A364030, there is no canonical definition to state claims against.
-/

/-! ## A364030.P7567073485607808048

`A152879(A004277(n²))`
-/

namespace A364030.P7567073485607808048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152879 (A004277 (n ^ 2)).toNat

end

end A364030.P7567073485607808048

/-! ## A364030.P4697514738494883907

`A152879(2*A253909(n))`
-/

namespace A364030.P4697514738494883907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152879 (2 * A253909 n).toNat

end

end A364030.P4697514738494883907

/-! ## A364030.P8211716535269489099

`A152879(2*A028310(n²))`
-/

namespace A364030.P8211716535269489099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152879 (2 * A028310 (n ^ 2)).toNat

end

end A364030.P8211716535269489099

/-! ## A364030.P18324870106142118040

`A152879(A253909(n)+n²)`
-/

namespace A364030.P18324870106142118040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152879 (A253909 n + (n ^ 2 : ℤ)).toNat

end

end A364030.P18324870106142118040

/-!
# A364031: Expansion of Sum_{k>0} k * x^k / (1 + x^(4*k)).

The programs for A364031, the canonical program `A364031.P18063798174580174727` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364031 has offset 1).

The definition of A364031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364031.P18063798174580174727

`∑{d}[n+1, #*A014017((n+1)/#-1)]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A364031

/-- `∑{d}[n+1, #*A014017((n+1)/#-1)]` -/
def P18063798174580174727.Spec : Prop :=
  ∀ n, P18063798174580174727.a n = A364031 (n + 1)

theorem P18063798174580174727.correct : P18063798174580174727.Spec := by
  intro n
  simp only [A364031, Nat.add_sub_cancel]

end A364031

/-! ## A364031.P3026620624750481602

`A364033(n+1)+A124340(n+1)`
-/

namespace A364031.P3026620624750481602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364033 (n + 1) + A124340 (n + 1)

end

end A364031.P3026620624750481602

namespace A364031

/-- `A364033(n+1)+A124340(n+1)` -/
def P3026620624750481602.Spec : Prop :=
  ∀ n, P3026620624750481602.a n = A364031 (n + 1)

theorem P3026620624750481602.correct : P3026620624750481602.Spec := by
  intro n
  simp only [A364031, Nat.add_sub_cancel, A364031.P3026620624750481602.a, A364031.P18063798174580174727.f1, A364031.P18063798174580174727.a, A014017, A014017.P15686158458271042443.a, A124340, A124340.P17128655900639427507.f1, A124340.P17128655900639427507.a, A364033, A364033.P4440560833208320547.a, A087780, A087780.P10506925651447133355.f1, A087780.P10506925651447133355.a, A206369, A206369.P2534442500048428716.a, A035185, A035185.P8037574016802671635.a, A061020, A061020.P12638060660583157143.f1, A061020.P12638060660583157143.a, A271102, A271102.P3010353493992336101.f1, A271102.P3010353493992336101.a, A007913, A007913.P8131970495124731496.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A363037, A363037.P17593486041959232839.a, A364032, A364032.P15572008137104778974.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A364031

/-! ## A364031.P6194363267757428249

`∑{d}[n+1, A000010(#)*A363037((n+1)/#)]`
-/

namespace A364031.P6194363267757428249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A363037 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364031.P6194363267757428249

namespace A364031

/-- `∑{d}[n+1, A000010(#)*A363037((n+1)/#)]` -/
def P6194363267757428249.Spec : Prop :=
  ∀ n, P6194363267757428249.a n = A364031 (n + 1)

end A364031

/-!
# A364032: Expansion of Sum_{k>0} x^(3*k) / (1 + x^(4*k)).

The programs for A364032, the canonical program `A364032.P15572008137104778974` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364032 has offset 1).

The definition of A364032 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364032.P14454633379739546284

`A002325(n+1)-A363037(n+1)`
-/

namespace A364032.P14454633379739546284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (n + 1) - A363037 (n + 1)

end

end A364032.P14454633379739546284

namespace A364032

/-- `A002325(n+1)-A363037(n+1)` -/
def P14454633379739546284.Spec : Prop :=
  ∀ n, P14454633379739546284.a n = A364032 (n + 1)

end A364032

/-! ## A364032.P3376426442413366920

`A188170(n+1)-A188172(n+1)`
-/

namespace A364032.P3376426442413366920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188170 (n + 1) - A188172 (n + 1)

end

end A364032.P3376426442413366920

namespace A364032

/-- `A188170(n+1)-A188172(n+1)` -/
def P3376426442413366920.Spec : Prop :=
  ∀ n, P3376426442413366920.a n = A364032 (n + 1)

end A364032

/-! ## A364032.P7901631579387601714

`A363037(n+1)-A035185(n+1)`
-/

namespace A364032.P7901631579387601714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363037 (n + 1) - A035185 (n + 1)

end

end A364032.P7901631579387601714

namespace A364032

/-- `A363037(n+1)-A035185(n+1)` -/
def P7901631579387601714.Spec : Prop :=
  ∀ n, P7901631579387601714.a n = A364032 (n + 1)

theorem P7901631579387601714.correct : P7901631579387601714.Spec := by
  intro n
  simp only [A364032, Nat.add_sub_cancel, A364032.P7901631579387601714.a, A364032.P15572008137104778974.a, A001842, A001842.P7159875081872045936.f1, A001842.P7159875081872045936.a, A035185, A035185.P8037574016802671635.a, A188170, A188170.P7143844993511574485.f1, A188170.P7143844993511574485.a, A363037, A363037.P17593486041959232839.a, A121262, A121262.P5808261376347758400.a, A122046, A122046.P14111764381793131601.a, A188169, A188169.P9022130587462569637.f1, A188169.P9022130587462569637.a, A188171, A188171.P17289095504074848112.a, A002654, A002654.P11574922253888480122.a, A253513, A253513.P7768194327896133816.a, A001826, A001826.P1518250824516108745.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A364032

/-! ## A364032.P1200117836510039263

`A216278(n+1)-A374061(n+1)`
-/

namespace A364032.P1200117836510039263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216278 (n + 1) - A374061 (n + 1)

end

end A364032.P1200117836510039263

namespace A364032

/-- `A216278(n+1)-A374061(n+1)` -/
def P1200117836510039263.Spec : Prop :=
  ∀ n, P1200117836510039263.a n = A364032 (n + 1)

end A364032

/-! ## A364032.P15778833542344238995

`A002325(n+1)-∑{d}[n+1, A014017(#-1)]`
-/

namespace A364032.P15778833542344238995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A014017 (d - 1)

end

end A364032.P15778833542344238995

namespace A364032

/-- `A002325(n+1)-∑{d}[n+1, A014017(#-1)]` -/
def P15778833542344238995.Spec : Prop :=
  ∀ n, P15778833542344238995.a n = A364032 (n + 1)

end A364032

/-! ## A364032.P7368936110031644634

`∑{d}[n+1, A023900(#)*A364033((n+1)/#)]`
-/

namespace A364032.P7368936110031644634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A364033 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364032.P7368936110031644634

namespace A364032

/-- `∑{d}[n+1, A023900(#)*A364033((n+1)/#)]` -/
def P7368936110031644634.Spec : Prop :=
  ∀ n, P7368936110031644634.a n = A364032 (n + 1)

end A364032

/-! ## A364032.P5538098975140798204

`A002325(n+1)-A027414(A000265(n+1))`
-/

namespace A364032.P5538098975140798204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (n + 1) - A027414 (A000265 (n + 1)).toNat

end

end A364032.P5538098975140798204

namespace A364032

/-- `A002325(n+1)-A027414(A000265(n+1))` -/
def P5538098975140798204.Spec : Prop :=
  ∀ n, P5538098975140798204.a n = A364032 (n + 1)

end A364032

/-! ## A364032.P5037151586762235820

`A027414(A000265(n+1))-A035185(n+1)`
-/

namespace A364032.P5037151586762235820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027414 (A000265 (n + 1)).toNat - A035185 (n + 1)

end

end A364032.P5037151586762235820

namespace A364032

/-- `A027414(A000265(n+1))-A035185(n+1)` -/
def P5037151586762235820.Spec : Prop :=
  ∀ n, P5037151586762235820.a n = A364032 (n + 1)

end A364032

/-! ## A364032.P15572008137104778974

`A188170(n+1)+A188170(n+1)-A001842(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A364032

/-- `A188170(n+1)+A188170(n+1)-A001842(n+1)` -/
def P15572008137104778974.Spec : Prop :=
  ∀ n, P15572008137104778974.a n = A364032 (n + 1)

theorem P15572008137104778974.correct : P15572008137104778974.Spec := by
  intro n
  simp only [A364032, Nat.add_sub_cancel]

end A364032

/-! ## A364032.P9804775095655852588

`A001842(n+1)-(A188172(n+1)+A188172(n+1))`
-/

namespace A364032.P9804775095655852588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (n + 1) - (A188172 (n + 1) + A188172 (n + 1))

end

end A364032.P9804775095655852588

namespace A364032

/-- `A001842(n+1)-(A188172(n+1)+A188172(n+1))` -/
def P9804775095655852588.Spec : Prop :=
  ∀ n, P9804775095655852588.a n = A364032 (n + 1)

end A364032

/-! ## A364032.P4044445072851469231

`A002325(n+1)+A188171(n+1)-A188169(n+1)`
-/

namespace A364032.P4044445072851469231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (n + 1) + (A188171 (n + 1) - A188169 (n + 1))

end

end A364032.P4044445072851469231

namespace A364032

/-- `A002325(n+1)+A188171(n+1)-A188169(n+1)` -/
def P4044445072851469231.Spec : Prop :=
  ∀ n, P4044445072851469231.a n = A364032 (n + 1)

end A364032

/-! ## A364032.P10193207633817339969

`A188169(n+1)-(A188171(n+1)+A035185(n+1))`
-/

namespace A364032.P10193207633817339969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188169 (n + 1) - (A188171 (n + 1) + A035185 (n + 1))

end

end A364032.P10193207633817339969

namespace A364032

/-- `A188169(n+1)-(A188171(n+1)+A035185(n+1))` -/
def P10193207633817339969.Spec : Prop :=
  ∀ n, P10193207633817339969.a n = A364032 (n + 1)

theorem P10193207633817339969.correct : P10193207633817339969.Spec := by
  intro n
  simp only [A364032, Nat.add_sub_cancel, A364032.P10193207633817339969.a, A364032.P15572008137104778974.a, A001842, A001842.P7159875081872045936.f1, A001842.P7159875081872045936.a, A035185, A035185.P8037574016802671635.a, A188169, A188169.P9022130587462569637.f1, A188169.P9022130587462569637.a, A188170, A188170.P7143844993511574485.f1, A188170.P7143844993511574485.a, A188171, A188171.P17289095504074848112.a, A002654, A002654.P11574922253888480122.a, A121262, A121262.P5808261376347758400.a, A122046, A122046.P14111764381793131601.a, A253513, A253513.P7768194327896133816.a, A363037, A363037.P17593486041959232839.a, A001826, A001826.P1518250824516108745.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A364032

/-!
# A364033: Expansion of Sum_{k>0} k * x^(3*k) / (1 + x^(4*k)).

The programs for A364033, the canonical program `A364033.P4440560833208320547` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364033 has offset 1).

The definition of A364033 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364033.P4440560833208320547

`A364031(n+1)-A124340(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A364033

/-- `A364031(n+1)-A124340(n+1)` -/
def P4440560833208320547.Spec : Prop :=
  ∀ n, P4440560833208320547.a n = A364033 (n + 1)

theorem P4440560833208320547.correct : P4440560833208320547.Spec := by
  intro n
  simp only [A364033, Nat.add_sub_cancel]

end A364033

/-! ## A364033.P15741477681069178593

`∑{d}[n+1, A000010(#)*A364032((n+1)/#)]`
-/

namespace A364033.P15741477681069178593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A364032 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364033.P15741477681069178593

namespace A364033

/-- `∑{d}[n+1, A000010(#)*A364032((n+1)/#)]` -/
def P15741477681069178593.Spec : Prop :=
  ∀ n, P15741477681069178593.a n = A364033 (n + 1)

end A364033

/-! ## A364033.P17946189703915848488

`A050464(n+1)*A112865(A112855(n+1))`
-/

namespace A364033.P17946189703915848488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050464 (n + 1) * A112865 (A112855 (n + 1)).toNat

end

end A364033.P17946189703915848488

namespace A364033

/-- `A050464(n+1)*A112865(A112855(n+1))` -/
def P17946189703915848488.Spec : Prop :=
  ∀ n, P17946189703915848488.a n = A364033 (n + 1)

end A364033

/-! ## A364033.P7123471710604423495

`A058398(2*(n+2))-A007949(A006528(n+2))`
-/

namespace A364033.P7123471710604423495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058398 (2 * (n + 2)) - A007949 (A006528 (n + 2)).toNat

end

end A364033.P7123471710604423495

namespace A364033

/-- `A058398(2*(n+2))-A007949(A006528(n+2))` -/
def P7123471710604423495.Spec : Prop :=
  ∀ n, P7123471710604423495.a n = A364033 (n + 1)

end A364033

/-! ## A364033.P2455061650724098675

`A306383(A101822(n))-A239499(n+1)`
-/

namespace A364033.P2455061650724098675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306383 (A101822 n).toNat - A239499 (n + 1)

end

end A364033.P2455061650724098675

namespace A364033

/-- `A306383(A101822(n))-A239499(n+1)` -/
def P2455061650724098675.Spec : Prop :=
  ∀ n, P2455061650724098675.a n = A364033 (n + 1)

end A364033

/-!
# A364034: Expansion of Sum_{k>0} x^k / (1 - 2*x^(2*k)).

The programs for A364034, the canonical program `A364034.P3967422730475427941` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364034 has offset 1).

The definition of A364034 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364034.P3967422730475427941

`∑{d}[n+1, A131575(#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A364034

/-- `∑{d}[n+1, A131575(#)]` -/
def P3967422730475427941.Spec : Prop :=
  ∀ n, P3967422730475427941.a n = A364034 (n + 1)

theorem P3967422730475427941.correct : P3967422730475427941.Spec := by
  intro n
  simp only [A364034, Nat.add_sub_cancel]

end A364034

/-! ## A364034.P17776452553374417446

`∑{d}[(n+1)/2^val(n+1, 2), A016116(#)]`
-/

namespace A364034.P17776452553374417446
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A016116 d

end

end A364034.P17776452553374417446

namespace A364034

/-- `∑{d}[(n+1)/2^val(n+1, 2), A016116(#)]` -/
def P17776452553374417446.Spec : Prop :=
  ∀ n, P17776452553374417446.a n = A364034 (n + 1)

end A364034

/-! ## A364034.P14117777805636447299

`∑{d}[(n+1)/2^val(n+1, 2), A045674(#)]`
-/

namespace A364034.P14117777805636447299
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A045674 d

end

end A364034.P14117777805636447299

namespace A364034

/-- `∑{d}[(n+1)/2^val(n+1, 2), A045674(#)]` -/
def P14117777805636447299.Spec : Prop :=
  ∀ n, P14117777805636447299.a n = A364034 (n + 1)

end A364034

/-! ## A364034.P5670529758096915321

`A339916(A025480(n))`
-/

namespace A364034.P5670529758096915321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339916 (A025480 n).toNat

end

end A364034.P5670529758096915321

namespace A364034

/-- `A339916(A025480(n))` -/
def P5670529758096915321.Spec : Prop :=
  ∀ n, P5670529758096915321.a n = A364034 (n + 1)

end A364034

/-! ## A364034.P18385527860720493909

`∑{d}[A000265(n+1), A016116(#)]`
-/

namespace A364034.P18385527860720493909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A016116 d

end

end A364034.P18385527860720493909

namespace A364034

/-- `∑{d}[A000265(n+1), A016116(#)]` -/
def P18385527860720493909.Spec : Prop :=
  ∀ n, P18385527860720493909.a n = A364034 (n + 1)

end A364034

/-! ## A364034.P16072507132949628343

`∑{d}[A000265(n+1), A228693(#)]`
-/

namespace A364034.P16072507132949628343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A228693 d

end

end A364034.P16072507132949628343

namespace A364034

/-- `∑{d}[A000265(n+1), A228693(#)]` -/
def P16072507132949628343.Spec : Prop :=
  ∀ n, P16072507132949628343.a n = A364034 (n + 1)

end A364034

/-! ## A364034.P6570001048046715752

`∑{d}[(n+1)/2^val(n+1, 2), A164073(#)]`
-/

namespace A364034.P6570001048046715752
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A164073 d

end

end A364034.P6570001048046715752

namespace A364034

/-- `∑{d}[(n+1)/2^val(n+1, 2), A164073(#)]` -/
def P6570001048046715752.Spec : Prop :=
  ∀ n, P6570001048046715752.a n = A364034 (n + 1)

end A364034

/-! ## A364034.P11349325179908357509

`∑{d}[A000265(n+1), A074323(#)]`
-/

namespace A364034.P11349325179908357509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A074323 d

end

end A364034.P11349325179908357509

namespace A364034

/-- `∑{d}[A000265(n+1), A074323(#)]` -/
def P11349325179908357509.Spec : Prop :=
  ∀ n, P11349325179908357509.a n = A364034 (n + 1)

end A364034

/-!
# A364036: a(0) = 0, a(1) = 0; for n > 1, a(n) is the number of pairs of consecutive terms prior to a(n-1) that sum to the same value as a(n-2) + a(n-1).

The programs for A364036, there is no canonical definition to state claims against.
-/

/-! ## A364036.P9183362041483367738

`A306251(round(sqrt(n²+1)))-1`
-/

namespace A364036.P9183362041483367738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306251 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - 1

end

end A364036.P9183362041483367738

/-! ## A364036.P11454423154685961285

`A023443(A306251(round(sqrt(n²+1))))`
-/

namespace A364036.P11454423154685961285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A306251 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat).toNat

end

end A364036.P11454423154685961285

/-! ## A364036.P17126378127544278648

`A364027(n+2)-1`
-/

namespace A364036.P17126378127544278648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364027 (n + 2) - 1

end

end A364036.P17126378127544278648

/-! ## A364036.P6778451340376316617

`A023443(A364027(n+2))`
-/

namespace A364036.P6778451340376316617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A364027 (n + 2)).toNat

end

end A364036.P6778451340376316617

/-! ## A364036.P4110536796727151619

`A043096(A364027(n+2)%A068418(n+1))`
-/

namespace A364036.P4110536796727151619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (Int.tmod (A364027 (n + 2)) (A068418 (n + 1))).toNat

end

end A364036.P4110536796727151619

/-!
# A364039: Triangle read by rows: T(n,k) is the number of integer compositions of n with first part k and differences between neighboring parts in {-1,1}.

The programs for A364039, there is no canonical definition to state claims against.
-/

/-! ## A364039.P12645524191232021355

`A088205(A324162(n))`
-/

namespace A364039.P12645524191232021355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088205 (A324162 n).toNat

end

end A364039.P12645524191232021355

/-! ## A364039.P3785119181909259815

`A235168(A398135(n))`
-/

namespace A364039.P3785119181909259815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235168 (A398135 n).toNat

end

end A364039.P3785119181909259815

/-! ## A364039.P6170245183679827430

`A355745(A324162(n)+2)`
-/

namespace A364039.P6170245183679827430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355745 (A324162 n + 2).toNat

end

end A364039.P6170245183679827430

/-! ## A364039.P11867193713105797990

`A214280(A347451(2*n+3)-A214269(2*n+3))`
-/

namespace A364039.P11867193713105797990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214280 (A347451 (2 * n + 3) - A214269 (2 * n + 3)).toNat

end

end A364039.P11867193713105797990

/-! ## A364039.P18120914082383396728

`C(A344649(n), A365921(A360603(n)))`
-/

namespace A364039.P18120914082383396728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A344649 n).toNat (A365921 (A360603 n).toNat).toNat

end

end A364039.P18120914082383396728

/-!
# A364040: a(n) is the least positive number with distinct decimal digits and n prime factors, counted with multiplicity, or -1 if there is no such number.

The programs for A364040, there is no canonical definition to state claims against.
-/

/-! ## A364040.P2237947617873414374

`∏[A290632(∑[A179961(n)])]`
-/

namespace A364040.P2237947617873414374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179961 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290632 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A364040.P2237947617873414374

/-! ## A364040.P4920996322765266145

`lcm(A317648(2^n), A320487(n))`
-/

namespace A364040.P4920996322765266145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A317648 (2 ^ n)) (A320487 n)

end

end A364040.P4920996322765266145

/-! ## A364040.P16145863269799301925

`∏[A339304(A016729(n+1)!)]`
-/

namespace A364040.P16145863269799301925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339304 (Nat.factorial (A016729 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A364040.P16145863269799301925

/-! ## A364040.P12403979206933210924

`A103663(A103663(n+4))*a(n-1)` with `a(0)=1`
-/

namespace A364040.P12403979206933210924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A103663 (A103663 (n + 4)).toNat * a (n - 1)

end

end A364040.P12403979206933210924

/-! ## A364040.P8237578810730753317

`A011782(n)*A036453(A050291(n))`
-/

namespace A364040.P8237578810730753317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A036453 (A050291 n).toNat

end

end A364040.P8237578810730753317

/-!
# A364041: Expansion of 1/Product_{k>0} (1 - x^(2*k-1))^((2*k-1)^(2*k-1)).

The programs for A364041, there is no canonical definition to state claims against.
-/

/-! ## A364041.P11160967414064716586

`∑[C(n^n, A227830(n))]`
-/

namespace A364041.P11160967414064716586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ n) (A227830 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364041.P11160967414064716586

/-! ## A364041.P6912311788292711228

`∑[and(n, A327356(n))^n]`
-/

namespace A364041.P6912311788292711228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A327356 n) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364041.P6912311788292711228

/-!
# A364042: a(n) = 2^A329697(n) - A000120(n).

The programs for A364042, the canonical program `A364042.P9636022355613988781` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364042 has offset 1).

The definition of A364042 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364042.P9636022355613988781

`2^A329697(n+1)-A000120(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A364042

/-- `2^A329697(n+1)-A000120(n+1)` -/
def P9636022355613988781.Spec : Prop :=
  ∀ n, P9636022355613988781.a n = (A364042 (n + 1) : ℚ)

end A364042

/-! ## A364042.P13714483769601977565

`A000079(A329697(n+1))-A000120(n+1)`
-/

namespace A364042.P13714483769601977565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A329697 (n + 1)).toNat - A000120 (n + 1)

end

end A364042.P13714483769601977565

namespace A364042

/-- `A000079(A329697(n+1))-A000120(n+1)` -/
def P13714483769601977565.Spec : Prop :=
  ∀ n, P13714483769601977565.a n = A364042 (n + 1)

end A364042

/-! ## A364042.P3525728686518051531

`A000051(A329697(n+1))-A063787(n+2)`
-/

namespace A364042.P3525728686518051531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A329697 (n + 1)).toNat - A063787 (n + 2)

end

end A364042.P3525728686518051531

namespace A364042

/-- `A000051(A329697(n+1))-A063787(n+2)` -/
def P3525728686518051531.Spec : Prop :=
  ∀ n, P3525728686518051531.a n = A364042 (n + 1)

end A364042

/-! ## A364042.P15631673725328224963

`A053585(A038479(n+1))%A053575(n+1)`
-/

namespace A364042.P15631673725328224963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053585 (A038479 (n + 1)).toNat) (A053575 (n + 1))

end

end A364042.P15631673725328224963

namespace A364042

/-- `A053585(A038479(n+1))%A053575(n+1)` -/
def P15631673725328224963.Spec : Prop :=
  ∀ n, P15631673725328224963.a n = A364042 (n + 1)

end A364042

/-! ## A364042.P5339511302454417789

`A007500(A265073(n))%A053575(n+1)`
-/

namespace A364042.P5339511302454417789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007500 (A265073 n).toNat) (A053575 (n + 1))

end

end A364042.P5339511302454417789

namespace A364042

/-- `A007500(A265073(n))%A053575(n+1)` -/
def P5339511302454417789.Spec : Prop :=
  ∀ n, P5339511302454417789.a n = A364042 (n + 1)

end A364042

/-!
# A364043: Expansion of Sum_{k>0} x^k / (1 + x^(5*k)).

The programs for A364043, the canonical program `A364043.P10368916526282945248` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364043 has offset 1).

The definition of A364043 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364043.P10368916526282945248

`A083911(n+1)-A083916(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A364043

/-- `A083911(n+1)-A083916(n+1)` -/
def P10368916526282945248.Spec : Prop :=
  ∀ n, P10368916526282945248.a n = A364043 (n + 1)

theorem P10368916526282945248.correct : P10368916526282945248.Spec := by
  intro n
  simp only [A364043, Nat.add_sub_cancel]

end A364043

/-! ## A364043.P9210631794704099909

`∑{d}[n+1, A023900(#)*A364019((n+1)/#)]`
-/

namespace A364043.P9210631794704099909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A364019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364043.P9210631794704099909

namespace A364043

/-- `∑{d}[n+1, A023900(#)*A364019((n+1)/#)]` -/
def P9210631794704099909.Spec : Prop :=
  ∀ n, P9210631794704099909.a n = A364043 (n + 1)

end A364043

/-! ## A364043.P11849950571962180162

`A083912(2*(n+1))-A083916(n+1)-A083916(n+1)`
-/

namespace A364043.P11849950571962180162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (2 * (n + 1)) - A083916 (n + 1) - A083916 (n + 1)

end

end A364043.P11849950571962180162

namespace A364043

/-- `A083912(2*(n+1))-A083916(n+1)-A083916(n+1)` -/
def P11849950571962180162.Spec : Prop :=
  ∀ n, P11849950571962180162.a n = A364043 (n + 1)

end A364043

/-! ## A364043.P8521420463235842706

`A083912(2*(n+1)/2^val(n+1, 2))-A001878(n+1-(n+1)/A000034(n))`
-/

namespace A364043.P8521420463235842706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (SequenceMachineLib.roundAway (2 * ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)))).toNat - A001878 (SequenceMachineLib.roundAway ((n + 1 : ℚ) - (n + 1 : ℚ) / (A000034 n : ℚ))).toNat

end

end A364043.P8521420463235842706

namespace A364043

/-- `A083912(2*(n+1)/2^val(n+1, 2))-A001878(n+1-(n+1)/A000034(n))` -/
def P8521420463235842706.Spec : Prop :=
  ∀ n, P8521420463235842706.a n = A364043 (n + 1)

end A364043

/-! ## A364043.P3166131114304208500

`A253563(A084904(n+1)^(n+1))-A001878(n%2*ceil(n/2))`
-/

namespace A364043.P3166131114304208500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253563 (A084904 (n + 1) ^ (n + 1)).toNat - A001878 (((n % 2 : ℕ) : ℤ) * ⌈(n : ℚ) / 2⌉).toNat

end

end A364043.P3166131114304208500

namespace A364043

/-- `A253563(A084904(n+1)^(n+1))-A001878(n%2*ceil(n/2))` -/
def P3166131114304208500.Spec : Prop :=
  ∀ n, P3166131114304208500.a n = A364043 (n + 1)

end A364043

/-! ## A364043.P1070792124610320769

`A253563(A084904(n+1)^(n+1))-A001878(A152271(n))`
-/

namespace A364043.P1070792124610320769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253563 (A084904 (n + 1) ^ (n + 1)).toNat - A001878 (A152271 n).toNat

end

end A364043.P1070792124610320769

namespace A364043

/-- `A253563(A084904(n+1)^(n+1))-A001878(A152271(n))` -/
def P1070792124610320769.Spec : Prop :=
  ∀ n, P1070792124610320769.a n = A364043 (n + 1)

end A364043

/-!
# A364044: Expansion of Sum_{k>0} x^(2*k) / (1 + x^(5*k)).

The programs for A364044, the canonical program `A364044.P10488358763832644211` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364044 has offset 1).

The definition of A364044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364044.P10488358763832644211

`A083912(n+1)-A083917(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A364044

/-- `A083912(n+1)-A083917(n+1)` -/
def P10488358763832644211.Spec : Prop :=
  ∀ n, P10488358763832644211.a n = A364044 (n + 1)

theorem P10488358763832644211.correct : P10488358763832644211.Spec := by
  intro n
  simp only [A364044, Nat.add_sub_cancel]

end A364044

/-! ## A364044.P7818890080616992734

`∑{d}[n+1, A023900(#)*A364020((n+1)/#)]`
-/

namespace A364044.P7818890080616992734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A364020 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364044.P7818890080616992734

namespace A364044

/-- `∑{d}[n+1, A023900(#)*A364020((n+1)/#)]` -/
def P7818890080616992734.Spec : Prop :=
  ∀ n, P7818890080616992734.a n = A364044 (n + 1)

end A364044

/-! ## A364044.P7910729819896294140

`A083912(n+1)-A001877(A132740(n+1))`
-/

namespace A364044.P7910729819896294140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (n + 1) - A001877 (A132740 (n + 1)).toNat

end

end A364044.P7910729819896294140

namespace A364044

/-- `A083912(n+1)-A001877(A132740(n+1))` -/
def P7910729819896294140.Spec : Prop :=
  ∀ n, P7910729819896294140.a n = A364044 (n + 1)

end A364044

/-! ## A364044.P15343378707200256053

`A083912(n+1)-A001877((n+1)/A006519(n+1))`
-/

namespace A364044.P15343378707200256053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (n + 1) - A001877 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A364044.P15343378707200256053

namespace A364044

/-- `A083912(n+1)-A001877((n+1)/A006519(n+1))` -/
def P15343378707200256053.Spec : Prop :=
  ∀ n, P15343378707200256053.a n = A364044 (n + 1)

end A364044

/-! ## A364044.P14105525296245127835

`A083912(n+1)-A083914(2*A000265(n+1))`
-/

namespace A364044.P14105525296245127835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (n + 1) - A083914 (2 * A000265 (n + 1)).toNat

end

end A364044.P14105525296245127835

namespace A364044

/-- `A083912(n+1)-A083914(2*A000265(n+1))` -/
def P14105525296245127835.Spec : Prop :=
  ∀ n, P14105525296245127835.a n = A364044 (n + 1)

end A364044

/-!
# A364045: Expansion of Sum_{k>0} x^(3*k) / (1 + x^(5*k)).

The programs for A364045, the canonical program `A364045.P12201197628638156281` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364045 has offset 1).

The definition of A364045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364045.P15122641292924220306

`A083913(n+1)-A083918(n+1)`
-/

namespace A364045.P15122641292924220306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083913 (n + 1) - A083918 (n + 1)

end

end A364045.P15122641292924220306

namespace A364045

/-- `A083913(n+1)-A083918(n+1)` -/
def P15122641292924220306.Spec : Prop :=
  ∀ n, P15122641292924220306.a n = A364045 (n + 1)

end A364045

/-! ## A364045.P1107802294442596277

`∑{d}[n+1, A023900(#)*A364021((n+1)/#)]`
-/

namespace A364045.P1107802294442596277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A364021 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364045.P1107802294442596277

namespace A364045

/-- `∑{d}[n+1, A023900(#)*A364021((n+1)/#)]` -/
def P1107802294442596277.Spec : Prop :=
  ∀ n, P1107802294442596277.a n = A364045 (n + 1)

end A364045

/-! ## A364045.P16138892013511896674

`A001878(2*A025480(n)+1)-A083918(n+1)`
-/

namespace A364045.P16138892013511896674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (2 * A025480 n + 1).toNat - A083918 (n + 1)

end

end A364045.P16138892013511896674

namespace A364045

/-- `A001878(2*A025480(n)+1)-A083918(n+1)` -/
def P16138892013511896674.Spec : Prop :=
  ∀ n, P16138892013511896674.a n = A364045 (n + 1)

end A364045

/-! ## A364045.P3981429914409693904

`A001878(n+1)-A083918(n+1)-A001899(∑[n]%(n+1))`
-/

namespace A364045.P3981429914409693904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (n + 1) - A083918 (n + 1) - A001899 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1))

end

end A364045.P3981429914409693904

namespace A364045

/-- `A001878(n+1)-A083918(n+1)-A001899(∑[n]%(n+1))` -/
def P3981429914409693904.Spec : Prop :=
  ∀ n, P3981429914409693904.a n = A364045 (n + 1)

end A364045

/-! ## A364045.P1003550600881276403

`A001878(A153733(n)+1)-A001899(A152271(n))`
-/

namespace A364045.P1003550600881276403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (A153733 n + 1).toNat - A001899 (A152271 n).toNat

end

end A364045.P1003550600881276403

namespace A364045

/-- `A001878(A153733(n)+1)-A001899(A152271(n))` -/
def P1003550600881276403.Spec : Prop :=
  ∀ n, P1003550600881276403.a n = A364045 (n + 1)

end A364045

/-! ## A364045.P12230238839572430122

`A001878(n+1)-A083918(n+1)-A001899(A152271(n))`
-/

namespace A364045.P12230238839572430122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (n + 1) - A083918 (n + 1) - A001899 (A152271 n).toNat

end

end A364045.P12230238839572430122

namespace A364045

/-- `A001878(n+1)-A083918(n+1)-A001899(A152271(n))` -/
def P12230238839572430122.Spec : Prop :=
  ∀ n, P12230238839572430122.a n = A364045 (n + 1)

end A364045

/-! ## A364045.P12201197628638156281

`A001878((n+1)/A006519(n+1))-A001899(A152271(n))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A364045

/-- `A001878((n+1)/A006519(n+1))-A001899(A152271(n))` -/
def P12201197628638156281.Spec : Prop :=
  ∀ n, P12201197628638156281.a n = A364045 (n + 1)

theorem P12201197628638156281.correct : P12201197628638156281.Spec := by
  intro n
  simp only [A364045, Nat.add_sub_cancel]

end A364045

/-! ## A364045.P11499163187454390946

`A001878(n+1)-A083918(n+1)-A001899(A142150(n+1))`
-/

namespace A364045.P11499163187454390946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (n + 1) - A083918 (n + 1) - A001899 (A142150 (n + 1)).toNat

end

end A364045.P11499163187454390946

namespace A364045

/-- `A001878(n+1)-A083918(n+1)-A001899(A142150(n+1))` -/
def P11499163187454390946.Spec : Prop :=
  ∀ n, P11499163187454390946.a n = A364045 (n + 1)

end A364045

/-! ## A364045.P6068913612815896056

`A001878((n+1)/A006519(n+1))-A001899(A142150(n+1))`
-/

namespace A364045.P6068913612815896056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat - A001899 (A142150 (n + 1)).toNat

end

end A364045.P6068913612815896056

namespace A364045

/-- `A001878((n+1)/A006519(n+1))-A001899(A142150(n+1))` -/
def P6068913612815896056.Spec : Prop :=
  ∀ n, P6068913612815896056.a n = A364045 (n + 1)

end A364045

/-! ## A364045.P11307674601926869600

`A083913(n+1)-(A083916(2*(n+1))-A083913(n+1))`
-/

namespace A364045.P11307674601926869600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083913 (n + 1) - (A083916 (2 * (n + 1)) - A083913 (n + 1))

end

end A364045.P11307674601926869600

namespace A364045

/-- `A083913(n+1)-(A083916(2*(n+1))-A083913(n+1))` -/
def P11307674601926869600.Spec : Prop :=
  ∀ n, P11307674601926869600.a n = A364045 (n + 1)

end A364045

/-!
# A364046: Expansion of Sum_{k>0} x^(4*k) / (1 + x^(5*k)).

The programs for A364046, the canonical program `A364046.P38530903623635105` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364046 has offset 1).

The definition of A364046 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364046.P2212517165929365656

`A001877(n+1-lcm(2, n+1)/2)-∑{d}[n+1, C(#%10, 9)]`
-/

namespace A364046.P2212517165929365656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (SequenceMachineLib.roundAway ((n + 1 : ℚ) - (Nat.lcm 2 (n + 1) : ℚ) / 2)).toNat - ((∑ d ∈ Nat.divisors (f1 n), Nat.choose (d % 10) 9 : ℕ) : ℤ)

end

end A364046.P2212517165929365656

namespace A364046

/-- `A001877(n+1-lcm(2, n+1)/2)-∑{d}[n+1, C(#%10, 9)]` -/
def P2212517165929365656.Spec : Prop :=
  ∀ n, P2212517165929365656.a n = A364046 (n + 1)

end A364046

/-! ## A364046.P38530903623635105

`A083914(n+1)-A083919(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A364046

/-- `A083914(n+1)-A083919(n+1)` -/
def P38530903623635105.Spec : Prop :=
  ∀ n, P38530903623635105.a n = A364046 (n + 1)

theorem P38530903623635105.correct : P38530903623635105.Spec := by
  intro n
  simp only [A364046, Nat.add_sub_cancel]

end A364046

/-! ## A364046.P17024268680024826889

`∑{d}[n+1, A023900(#)*A364022((n+1)/#)]`
-/

namespace A364046.P17024268680024826889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A364022 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364046.P17024268680024826889

namespace A364046

/-- `∑{d}[n+1, A023900(#)*A364022((n+1)/#)]` -/
def P17024268680024826889.Spec : Prop :=
  ∀ n, P17024268680024826889.a n = A364046 (n + 1)

end A364046

/-! ## A364046.P13026320716238753471

`A001877(n+1-lcm(2, n+1)/2)-A083919(n+1)`
-/

namespace A364046.P13026320716238753471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (SequenceMachineLib.roundAway ((n + 1 : ℚ) - (Nat.lcm 2 (n + 1) : ℚ) / 2)).toNat - A083919 (n + 1)

end

end A364046.P13026320716238753471

namespace A364046

/-- `A001877(n+1-lcm(2, n+1)/2)-A083919(n+1)` -/
def P13026320716238753471.Spec : Prop :=
  ∀ n, P13026320716238753471.a n = A364046 (n + 1)

end A364046

/-! ## A364046.P12263602480842012952

`A083914(n+1)-A001899(2*(n+1)/(xor(n, n+1)+1))`
-/

namespace A364046.P12263602480842012952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (n + 1) - A001899 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))).toNat

end

end A364046.P12263602480842012952

namespace A364046

/-- `A083914(n+1)-A001899(2*(n+1)/(xor(n, n+1)+1))` -/
def P12263602480842012952.Spec : Prop :=
  ∀ n, P12263602480842012952.a n = A364046 (n + 1)

end A364046

/-! ## A364046.P3672567701159196442

`A001877(∑[A001057(n)])-A083919(n+1)`
-/

namespace A364046.P3672567701159196442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A083919 (n + 1)

end

end A364046.P3672567701159196442

namespace A364046

/-- `A001877(∑[A001057(n)])-A083919(n+1)` -/
def P3672567701159196442.Spec : Prop :=
  ∀ n, P3672567701159196442.a n = A364046 (n + 1)

end A364046

/-!
# A364047: Expansion of Sum_{k>0} x^k / (1 + x^(6*k)).

The programs for A364047, there is no canonical definition to state claims against.
-/

/-! ## A364047.P16490803646456879125

`A364048(n+1)+A035194(n+1)`
-/

namespace A364047.P16490803646456879125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364048 (n + 1) + A035194 (n + 1)

end

end A364047.P16490803646456879125

/-! ## A364047.P11479665349636633588

`A035154(n+1)-A364048(n+1)`
-/

namespace A364047.P11479665349636633588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035154 (n + 1) - A364048 (n + 1)

end

end A364047.P11479665349636633588

/-! ## A364047.P1872823223540529965

`and(A088578(n), A284098(n+1))`
-/

namespace A364047.P1872823223540529965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088578 n) (A284098 (n + 1))

end

end A364047.P1872823223540529965

/-! ## A364047.P3952095918013915420

`and(A284098(n+1), A339771(n))`
-/

namespace A364047.P3952095918013915420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A284098 (n + 1)) (A339771 n)

end

end A364047.P3952095918013915420

/-! ## A364047.P13679393963246838190

`and(A239679(n), A284098(n+1))`
-/

namespace A364047.P13679393963246838190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A239679 n) (A284098 (n + 1))

end

end A364047.P13679393963246838190

/-! ## A364047.P10651974722063168872

`and(A127509(A284098(n+2)), A284098(2*(n+1)))`
-/

namespace A364047.P10651974722063168872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127509 (A284098 (n + 2)).toNat) (A284098 (2 * (n + 1)))

end

end A364047.P10651974722063168872

/-! ## A364047.P14075956247056314123

`and(A191341(A284098(n+2)), A284098(2*n+2))`
-/

namespace A364047.P14075956247056314123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A191341 (A284098 (n + 2)).toNat) (A284098 (2 * n + 2))

end

end A364047.P14075956247056314123

/-! ## A364047.P4977764983224387774

`and(A188161(n), A284098(n+1))`
-/

namespace A364047.P4977764983224387774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A188161 n) (A284098 (n + 1))

end

end A364047.P4977764983224387774

/-! ## A364047.P14783642823440092410

`and(A191341(n+1), A284098(n+1))`
-/

namespace A364047.P14783642823440092410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A191341 (n + 1)) (A284098 (n + 1))

end

end A364047.P14783642823440092410

/-! ## A364047.P6308072955798942544

`and(A147595(2*n+1), A284098(2*(n+1)))`
-/

namespace A364047.P6308072955798942544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A147595 (2 * n + 1)) (A284098 (2 * (n + 1)))

end

end A364047.P6308072955798942544

/-! ## A364047.P15684183415488118994

`and(A092841(n), A284098(n+1))`
-/

namespace A364047.P15684183415488118994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092841 n) (A284098 (n + 1))

end

end A364047.P15684183415488118994

/-! ## A364047.P12349314111210609656

`and(A127509(n+1), A284098(n+1))`
-/

namespace A364047.P12349314111210609656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127509 (n + 1)) (A284098 (n + 1))

end

end A364047.P12349314111210609656

/-! ## A364047.P6865953694379259607

`and(A122553(n²), A284098(n+1))`
-/

namespace A364047.P6865953694379259607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122553 (n ^ 2)) (A284098 (n + 1))

end

end A364047.P6865953694379259607

/-!
# A364048: Expansion of Sum_{k>0} x^(5*k) / (1 + x^(6*k)).

The programs for A364048, there is no canonical definition to state claims against.
-/

/-! ## A364048.P13537994258640051466

`A035154(n+1)-A364047(n+1)`
-/

namespace A364048.P13537994258640051466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035154 (n + 1) - A364047 (n + 1)

end

end A364048.P13537994258640051466

/-! ## A364048.P13977239751075107492

`A364047(n+1)-A035194(n+1)`
-/

namespace A364048.P13977239751075107492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364047 (n + 1) - A035194 (n + 1)

end

end A364048.P13977239751075107492

/-! ## A364048.P9630021184593731558

`A002654(A038502(n+1))-A364047(n+1)`
-/

namespace A364048.P9630021184593731558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (A038502 (n + 1)).toNat - A364047 (n + 1)

end

end A364048.P9630021184593731558

/-! ## A364048.P11729079134865202145

`lcm(A033999(n), A121450(n+1))-A364047(n+1)`
-/

namespace A364048.P11729079134865202145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A033999 n) (A121450 (n + 1)) : ℤ) - A364047 (n + 1)

end

end A364048.P11729079134865202145

/-! ## A364048.P4784419972562388747

`A035154(n+1)-and(A284098(n+1), A339771(n))`
-/

namespace A364048.P4784419972562388747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035154 (n + 1) - Int.land (A284098 (n + 1)) (A339771 n)

end

end A364048.P4784419972562388747

/-! ## A364048.P4840223795735894658

`A072785(A023900(3*(n+1))^2)`
-/

namespace A364048.P4840223795735894658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072785 (A023900 (3 * (n + 1)) ^ 2).toNat

end

end A364048.P4840223795735894658

/-!
# A364053: Zumkeller numbers whose divisors can be partitioned into two disjoint sets with equal products.

The programs for A364053, there is no canonical definition to state claims against.
-/

/-! ## A364053.P12443934430400677705

`filter[A048943(1+n), A179527(#)]`
-/

namespace A364053.P12443934430400677705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048943 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179527 (f1 j).toNat = 1) n)

end

end A364053.P12443934430400677705

/-! ## A364053.P9049772675427533675

`∩[A048943(n+1), A083207(n+1)]`
-/

namespace A364053.P9049772675427533675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364053.P9049772675427533675

/-! ## A364053.P12398111119407750950

`∩[A048943(n+1), A246198(n+1)]`
-/

namespace A364053.P12398111119407750950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364053.P12398111119407750950

/-! ## A364053.P15550891123613113920

`filter[A360553(n+1), A179527(#)]`
-/

namespace A364053.P15550891123613113920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179527 (f1 j).toNat = 1) n)

end

end A364053.P15550891123613113920

/-! ## A364053.P90020174952988909

`filter[A335197(n+1), A368281(#)]`
-/

namespace A364053.P90020174952988909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368281 (f1 j).toNat = 1) n)

end

end A364053.P90020174952988909

/-!
# A364055: Number of integer partitions of n satisfying (length) = (mean). Partitions of n into sqrt(n) parts.

The programs for A364055, there is no canonical definition to state claims against.
-/

/-! ## A364055.P16103679017148430980

`A072233(A037213(n)+A000217(n))`
-/

namespace A364055.P16103679017148430980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (A037213 n + A000217 n).toNat

end

end A364055.P16103679017148430980

/-! ## A364055.P10404165378908471591

`A097356(n)-A316353(A028310(n))`
-/

namespace A364055.P10404165378908471591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097356 n - A316353 (A028310 n).toNat

end

end A364055.P10404165378908471591

/-!
# A364056: Numbers whose prime factors have high median 2. Numbers whose prime factors (with multiplicity) are mostly 2's.

The programs for A364056, there is no canonical definition to state claims against.
-/

/-! ## A364056.P12041591189159553666

`eq[2, A079879(A008486(n))]`
-/

namespace A364056.P12041591189159553666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079879 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A364056.P12041591189159553666

/-! ## A364056.P9565603457294071354

`lt[A055510(A273291(n+2)), 1]+2`
-/

namespace A364056.P9565603457294071354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055510 (A273291 (n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A364056.P9565603457294071354

/-! ## A364056.P13313728101976294249

`∩[A048166(n+1), A360013(n+1)]`
-/

namespace A364056.P13313728101976294249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364056.P13313728101976294249

/-! ## A364056.P4379548218494284

`∩[A212165(n+1), A360013(n+1)]`
-/

namespace A364056.P4379548218494284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364056.P4379548218494284

/-! ## A364056.P208964805341983025

`∩[A360013(n+1), A371782(n+1)]`
-/

namespace A364056.P208964805341983025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364056.P208964805341983025

/-! ## A364056.P10272113932114984972

`lt[A001222(2*(n+1)), A037227(n+1)]+1`
-/

namespace A364056.P10272113932114984972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037227 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A364056.P10272113932114984972

/-! ## A364056.P11365036381260374989

`A040000(n)*A363488(A028310(n))`
-/

namespace A364056.P11365036381260374989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A363488 (A028310 n).toNat

end

end A364056.P11365036381260374989

/-! ## A364056.P2332160437082645336

`lt[A032682(A001227(n+1)), A076526(n+1)]+1`
-/

namespace A364056.P2332160437082645336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032682 (A001227 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076526 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A364056.P2332160437082645336

/-!
# A364058: Heinz numbers of integer partitions with median > 1. Numbers whose multiset of prime factors has median > 2.

The programs for A364058, there is no canonical definition to state claims against.
-/

/-! ## A364058.P2218793901370593773

`lt[2, A273289(n+2)]+2`
-/

namespace A364058.P2218793901370593773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273289 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A364058.P2218793901370593773

/-! ## A364058.P9651485872148216265

`lt[2, A291937(lcm(2, n)/2)]`
-/

namespace A364058.P9651485872148216265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291937 (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A364058.P9651485872148216265

/-! ## A364058.P8327386772888463883

`lt[n+1, A349370(n+1)]+1`
-/

namespace A364058.P8327386772888463883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349370 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A364058.P8327386772888463883

/-! ## A364058.P14423327090312582432

`lt[xor(n+1, n), A000005(n+1)]+1`
-/

namespace A364058.P14423327090312582432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A364058.P14423327090312582432

/-! ## A364058.P682275575865407074

`lt[xor(n+1, n), A181819(n+1)]+1`
-/

namespace A364058.P682275575865407074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A364058.P682275575865407074

/-! ## A364058.P1986267213086811848

`lt[and(n, -(n+2)), A001222(n+1)]+1`
-/

namespace A364058.P1986267213086811848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n + 2 : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A364058.P1986267213086811848

/-! ## A364058.P5018746438328146241

`lt[A349380(A004277(n)), n]`
-/

namespace A364058.P5018746438328146241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349380 (A004277 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A364058.P5018746438328146241

/-! ## A364058.P180340712276840752

`lt[A014738(n), A267326(n)²]`
-/

namespace A364058.P180340712276840752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014738 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267326 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A364058.P180340712276840752

/-! ## A364058.P10952737951601625562

`lt[A007774(n+1), A016725(n)]`
-/

namespace A364058.P10952737951601625562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A364058.P10952737951601625562

/-! ## A364058.P2174590485696859021

`lt[A045344(n+4), A181788(n)²]`
-/

namespace A364058.P2174590485696859021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181788 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A364058.P2174590485696859021

/-!
# A364059: Number of integer partitions of n whose rounded mean is > 1. Partitions with mean >= 3/2.

The programs for A364059, there is no canonical definition to state claims against.
-/

/-! ## A364059.P8328443882840726193

`record[A035444(n+1)]-A363947(n)`
-/

namespace A364059.P8328443882840726193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A363947 n

end

end A364059.P8328443882840726193

/-! ## A364059.P3437521430537682229

`A329548(A000041(n))-A010051(2*n+3)`
-/

namespace A364059.P3437521430537682229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329548 (A000041 n).toNat - A010051 (2 * n + 3)

end

end A364059.P3437521430537682229

/-! ## A364059.P1456466807845812912

`∑[A328391(A128750(n)+1)]`
-/

namespace A364059.P1456466807845812912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328391 (A128750 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364059.P1456466807845812912

/-! ## A364059.P5402089113089784620

`A000792(n)-A330887(A210671(n))`
-/

namespace A364059.P5402089113089784620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 n - A330887 (A210671 n).toNat

end

end A364059.P5402089113089784620

/-! ## A364059.P8929262463441420654

`A000792(n)-A285421(A335456(n))`
-/

namespace A364059.P8929262463441420654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 n - A285421 (A335456 n).toNat

end

end A364059.P8929262463441420654

/-!
# A364060: Triangle read by rows where T(n,k) is the number of integer partitions of n with rounded mean k.

The programs for A364060, there is no canonical definition to state claims against.
-/

/-! ## A364060.P963746798701715231

`A178691(A059283(n+1))`
-/

namespace A364060.P963746798701715231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178691 (A059283 (n + 1)).toNat

end

end A364060.P963746798701715231

/-! ## A364060.P16742564495595751215

`A360675(A249026(n+1))`
-/

namespace A364060.P16742564495595751215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360675 (A249026 (n + 1)).toNat

end

end A364060.P16742564495595751215

/-! ## A364060.P17962749747037982476

`A344739(A119725(n+1))+A344739(n)`
-/

namespace A364060.P17962749747037982476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344739 (A119725 (n + 1)).toNat + A344739 n

end

end A364060.P17962749747037982476

/-! ## A364060.P12320603732574365782

`A325592(n)*A351202(A014580(n+1))`
-/

namespace A364060.P12320603732574365782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325592 n * A351202 (A014580 (n + 1)).toNat

end

end A364060.P12320603732574365782

/-! ## A364060.P13221315005094324038

`A325280(n)*A347730(A236679(n+2))`
-/

namespace A364060.P13221315005094324038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325280 n * A347730 (A236679 (n + 2)).toNat

end

end A364060.P13221315005094324038

/-!
# A364061: Numbers whose exponent of 2 in their canonical prime factorization is smaller than all the other exponents.

The programs for A364061, there is no canonical definition to state claims against.
-/

/-! ## A364061.P2127844586490918639

`eq[2, A067695(A257088(n))]`
-/

namespace A364061.P2127844586490918639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067695 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A364061.P2127844586490918639

/-! ## A364061.P264391798056813124

`eq[A247477(n+1), A364191(A028310(2*n))]`
-/

namespace A364061.P264391798056813124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364191 (A028310 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A364061.P264391798056813124

/-! ## A364061.P10049108621151209896

`∩[2*n, A334965(n+1)]`
-/

namespace A364061.P10049108621151209896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364061.P10049108621151209896

/-! ## A364061.P5445409368053411865

`filter[A334965(n+1), A059841(#)]`
-/

namespace A364061.P5445409368053411865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A364061.P5445409368053411865

/-! ## A364061.P10095823725551124589

`filter[A334965(n+1), A379959(#)]`
-/

namespace A364061.P10095823725551124589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379959 (f1 j).toNat = 1) n)

end

end A364061.P10095823725551124589

/-!
# A364062: Number of integer partitions of n with unique co-mode 1.

The programs for A364062, there is no canonical definition to state claims against.
-/

/-! ## A364062.P6951415150206594846

`A364159(n+1)-A002865(n)`
-/

namespace A364062.P6951415150206594846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364159 (n + 1) - A002865 n

end

end A364062.P6951415150206594846

/-!
# A364063: Expansion of Sum_{k>0} k * x^k / (1 - x^(2*k-1)).

The programs for A364063, the canonical program `A364063.P4438084833510939295` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364063 has offset 1).

The definition of A364063 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364063.P18037278644198913527

`1/2*∑{d}[2*(n+1)-1, #+1]`
-/

namespace A364063.P18037278644198913527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((∑ d ∈ Nat.divisors (f1 n).natAbs, (d + 1) : ℕ) : ℚ)

end

end A364063.P18037278644198913527

namespace A364063

/-- `1/2*∑{d}[2*(n+1)-1, #+1]` -/
def P18037278644198913527.Spec : Prop :=
  ∀ n, P18037278644198913527.a n = (A364063 (n + 1) : ℚ)

end A364063

/-! ## A364063.P12322437755524786671

`A336840(A064216(n+1))`
-/

namespace A364063.P12322437755524786671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336840 (A064216 (n + 1)).toNat

end

end A364063.P12322437755524786671

namespace A364063

/-- `A336840(A064216(n+1))` -/
def P12322437755524786671.Spec : Prop :=
  ∀ n, P12322437755524786671.a n = A364063 (n + 1)

end A364063

/-! ## A364063.P4438084833510939295

`A007503(2*(n+1)-1)/2`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A364063

/-- `A007503(2*(n+1)-1)/2` -/
def P4438084833510939295.Spec : Prop :=
  ∀ n, P4438084833510939295.a n = (A364063 (n + 1) : ℚ)

end A364063

/-! ## A364063.P16108869729163515944

`∑{d}[Δ[n²], ceil(#/2)]`
-/

namespace A364063.P16108869729163515944
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ⌈(d : ℚ) / 2⌉

end

end A364063.P16108869729163515944

namespace A364063

/-- `∑{d}[Δ[n²], ceil(#/2)]` -/
def P16108869729163515944.Spec : Prop :=
  ∀ n, P16108869729163515944.a n = A364063 (n + 1)

end A364063

/-! ## A364063.P2415037363789648169

`∑{d}[2*n+1, #+1]/2`
-/

namespace A364063.P2415037363789648169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℚ) / 2

end

end A364063.P2415037363789648169

namespace A364063

/-- `∑{d}[2*n+1, #+1]/2` -/
def P2415037363789648169.Spec : Prop :=
  ∀ n, P2415037363789648169.a n = (A364063 (n + 1) : ℚ)

end A364063

/-! ## A364063.P1843044912712458320

`∑{d}[Δ[n²], (n+1)%#]+1`
-/

namespace A364063.P1843044912712458320
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (n + 1) % d + 1

end

end A364063.P1843044912712458320

namespace A364063

/-- `∑{d}[Δ[n²], (n+1)%#]+1` -/
def P1843044912712458320.Spec : Prop :=
  ∀ n, (P1843044912712458320.a n : ℤ) = A364063 (n + 1)

end A364063

/-! ## A364063.P15954045715667041976

`A113415(Δ[n²])`
-/

namespace A364063.P15954045715667041976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113415 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A364063.P15954045715667041976

namespace A364063

/-- `A113415(Δ[n²])` -/
def P15954045715667041976.Spec : Prop :=
  ∀ n, P15954045715667041976.a n = A364063 (n + 1)

end A364063

/-! ## A364063.P5507804112626876004

`A349371(Δ[n²])`
-/

namespace A364063.P5507804112626876004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349371 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A364063.P5507804112626876004

namespace A364063

/-- `A349371(Δ[n²])` -/
def P5507804112626876004.Spec : Prop :=
  ∀ n, P5507804112626876004.a n = A364063 (n + 1)

end A364063

/-! ## A364063.P8407078147061887656

`A349371(2*n+1)+A349136(2*(n+1))`
-/

namespace A364063.P8407078147061887656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349371 (2 * n + 1) + A349136 (2 * (n + 1))

end

end A364063.P8407078147061887656

namespace A364063

/-- `A349371(2*n+1)+A349136(2*(n+1))` -/
def P8407078147061887656.Spec : Prop :=
  ∀ n, P8407078147061887656.a n = A364063 (n + 1)

end A364063

/-! ## A364063.P12585576119044383411

`A353460(2*(n+1))+A349371(2*n+1)`
-/

namespace A364063.P12585576119044383411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353460 (2 * (n + 1)) + A349371 (2 * n + 1)

end

end A364063.P12585576119044383411

namespace A364063

/-- `A353460(2*(n+1))+A349371(2*n+1)` -/
def P12585576119044383411.Spec : Prop :=
  ∀ n, P12585576119044383411.a n = A364063 (n + 1)

end A364063

/-! ## A364063.P13026211111656275031

`A349916(2*n+1)-A349915(2*n+1)`
-/

namespace A364063.P13026211111656275031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349916 (2 * n + 1) - A349915 (2 * n + 1)

end

end A364063.P13026211111656275031

namespace A364063

/-- `A349916(2*n+1)-A349915(2*n+1)` -/
def P13026211111656275031.Spec : Prop :=
  ∀ n, P13026211111656275031.a n = A364063 (n + 1)

end A364063

/-! ## A364063.P15062487625772171352

`A069734(Δ[n²])`
-/

namespace A364063.P15062487625772171352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069734 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A364063.P15062487625772171352

namespace A364063

/-- `A069734(Δ[n²])` -/
def P15062487625772171352.Spec : Prop :=
  ∀ n, P15062487625772171352.a n = A364063 (n + 1)

end A364063

/-! ## A364063.P14068980914343464467

`A079247(Δ[n²])`
-/

namespace A364063.P14068980914343464467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079247 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A364063.P14068980914343464467

namespace A364063

/-- `A079247(Δ[n²])` -/
def P14068980914343464467.Spec : Prop :=
  ∀ n, P14068980914343464467.a n = A364063 (n + 1)

end A364063

/-! ## A364063.P1984742714351288971

`A145391(Δ[n²])`
-/

namespace A364063.P1984742714351288971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145391 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A364063.P1984742714351288971

namespace A364063

/-- `A145391(Δ[n²])` -/
def P1984742714351288971.Spec : Prop :=
  ∀ n, P1984742714351288971.a n = A364063 (n + 1)

end A364063

/-! ## A364063.P7288132459432770568

`A353341(Δ[n²])`
-/

namespace A364063.P7288132459432770568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353341 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A364063.P7288132459432770568

namespace A364063

/-- `A353341(Δ[n²])` -/
def P7288132459432770568.Spec : Prop :=
  ∀ n, P7288132459432770568.a n = A364063 (n + 1)

end A364063

/-! ## A364063.P1285293493632574644

`A354046(Δ[n²])`
-/

namespace A364063.P1285293493632574644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354046 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A364063.P1285293493632574644

namespace A364063

/-- `A354046(Δ[n²])` -/
def P1285293493632574644.Spec : Prop :=
  ∀ n, P1285293493632574644.a n = A364063 (n + 1)

end A364063

/-! ## A364063.P2417787259448859980

`A309731(2*n+1)/(2*n+1)`
-/

namespace A364063.P2417787259448859980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309731 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A364063.P2417787259448859980

namespace A364063

/-- `A309731(2*n+1)/(2*n+1)` -/
def P2417787259448859980.Spec : Prop :=
  ∀ n, P2417787259448859980.a n = (A364063 (n + 1) : ℚ)

end A364063

/-! ## A364063.P7789449517050017141

`A364343(2*n+1)/(2*n+1)`
-/

namespace A364063.P7789449517050017141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364343 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A364063.P7789449517050017141

namespace A364063

/-- `A364343(2*n+1)/(2*n+1)` -/
def P7789449517050017141.Spec : Prop :=
  ∀ n, P7789449517050017141.a n = (A364063 (n + 1) : ℚ)

end A364063

/-! ## A364063.P18422488115508494372

`A336840(A064989(2*n+1))`
-/

namespace A364063.P18422488115508494372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336840 (A064989 (2 * n + 1)).toNat

end

end A364063.P18422488115508494372

namespace A364063

/-- `A336840(A064989(2*n+1))` -/
def P18422488115508494372.Spec : Prop :=
  ∀ n, P18422488115508494372.a n = A364063 (n + 1)

end A364063

/-! ## A364063.P11891551555704917430

`A099774(n+1)+A086670(2*n+1)`
-/

namespace A364063.P11891551555704917430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (n + 1) + A086670 (2 * n + 1)

end

end A364063.P11891551555704917430

namespace A364063

/-- `A099774(n+1)+A086670(2*n+1)` -/
def P11891551555704917430.Spec : Prop :=
  ∀ n, P11891551555704917430.a n = A364063 (n + 1)

end A364063

/-!
# A364064: Expansion of Sum_{k>0} k * x^k / (1 - x^(3*k-2)).

The programs for A364064, the canonical program `A364064.P14026189382415134399` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364064 has offset 1).

The definition of A364064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364064.P14026189382415134399

`A363901(3*n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A364064

/-- `A363901(3*n+1)` -/
def P14026189382415134399.Spec : Prop :=
  ∀ n, P14026189382415134399.a n = A364064 (n + 1)

theorem P14026189382415134399.correct : P14026189382415134399.Spec := by
  intro n
  simp only [A364064, Nat.add_sub_cancel]

end A364064

/-! ## A364064.P1641605861234620012

`A363901(A016777(n))%A001248(n+1)`
-/

namespace A364064.P1641605861234620012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363901 (A016777 n).toNat) (A001248 (n + 1))

end

end A364064.P1641605861234620012

namespace A364064

/-- `A363901(A016777(n))%A001248(n+1)` -/
def P1641605861234620012.Spec : Prop :=
  ∀ n, P1641605861234620012.a n = A364064 (n + 1)

end A364064

/-! ## A364064.P2985273236110440804

`A363901(A016777(n))+floor(A000007(n)/2)`
-/

namespace A364064.P2985273236110440804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363901 (A016777 n).toNat + ⌊(A000007 n : ℚ) / 2⌋

end

end A364064.P2985273236110440804

namespace A364064

/-- `A363901(A016777(n))+floor(A000007(n)/2)` -/
def P2985273236110440804.Spec : Prop :=
  ∀ n, P2985273236110440804.a n = A364064 (n + 1)

end A364064

/-! ## A364064.P8515301340916483977

`A363901(A016777(n))+floor(A010054(n)/2)`
-/

namespace A364064.P8515301340916483977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363901 (A016777 n).toNat + ⌊(A010054 n : ℚ) / 2⌋

end

end A364064.P8515301340916483977

namespace A364064

/-- `A363901(A016777(n))+floor(A010054(n)/2)` -/
def P8515301340916483977.Spec : Prop :=
  ∀ n, P8515301340916483977.a n = A364064 (n + 1)

end A364064

/-! ## A364064.P4966911302233510942

`A363901(A016777(n))+floor((2-A348364(n+1))/2)`
-/

namespace A364064.P4966911302233510942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363901 (A016777 n).toNat + ⌊(2 - A348364 (n + 1) : ℚ) / 2⌋

end

end A364064.P4966911302233510942

namespace A364064

/-- `A363901(A016777(n))+floor((2-A348364(n+1))/2)` -/
def P4966911302233510942.Spec : Prop :=
  ∀ n, P4966911302233510942.a n = A364064 (n + 1)

end A364064

/-! ## A364064.P3923690190212633458

`A363901(A016777(n))+A023531(A031215(n+1))`
-/

namespace A364064.P3923690190212633458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363901 (A016777 n).toNat + A023531 (A031215 (n + 1)).toNat

end

end A364064.P3923690190212633458

namespace A364064

/-- `A363901(A016777(n))+A023531(A031215(n+1))` -/
def P3923690190212633458.Spec : Prop :=
  ∀ n, P3923690190212633458.a n = A364064 (n + 1)

end A364064

/-! ## A364064.P3351085861779058778

`A363901(A016777(n))+A008683(A070284(n+1))`
-/

namespace A364064.P3351085861779058778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363901 (A016777 n).toNat + A008683 (A070284 (n + 1)).toNat

end

end A364064.P3351085861779058778

namespace A364064

/-- `A363901(A016777(n))+A008683(A070284(n+1))` -/
def P3351085861779058778.Spec : Prop :=
  ∀ n, P3351085861779058778.a n = A364064 (n + 1)

end A364064

/-!
# A364065: Expansion of Sum_{k>0} k * x^(2*k-1) / (1 - x^(3*k-2)).

The programs for A364065, the canonical program `A364065.P7626182441879628720` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364065 has offset 1).

The definition of A364065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364065.P7626182441879628720

`A363901(3*n+2)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A364065

/-- `A363901(3*n+2)` -/
def P7626182441879628720.Spec : Prop :=
  ∀ n, P7626182441879628720.a n = A364065 (n + 1)

theorem P7626182441879628720.correct : P7626182441879628720.Spec := by
  intro n
  simp only [A364065, Nat.add_sub_cancel]

end A364065

/-! ## A364065.P3162558367329053267

`A364097(lt[A341483(n+6), A124550(3*n+4)])`
-/

namespace A364065.P3162558367329053267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341483 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124550 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364097 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A364065.P3162558367329053267

namespace A364065

/-- `A364097(lt[A341483(n+6), A124550(3*n+4)])` -/
def P3162558367329053267.Spec : Prop :=
  ∀ n, P3162558367329053267.a n = A364065 (n + 1)

end A364065

/-! ## A364065.P8859532254823953255

`A003557(A027642(n)*A204004(n+1))`
-/

namespace A364065.P8859532254823953255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A027642 n * A204004 (n + 1)).toNat

end

end A364065.P8859532254823953255

namespace A364065

/-- `A003557(A027642(n)*A204004(n+1))` -/
def P8859532254823953255.Spec : Prop :=
  ∀ n, P8859532254823953255.a n = A364065 (n + 1)

end A364065

/-!
# A364066: Expansion of Sum_{k>0} k * x^k / (1 - x^(3*k-1)).

The programs for A364066, the canonical program `A364066.P8597521373423272142` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364066 has offset 1).

The definition of A364066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364066.P8119519847800546041

`A363902(3*n+2)`
-/

namespace A364066.P8119519847800546041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363902 (3 * n + 2)

end

end A364066.P8119519847800546041

namespace A364066

/-- `A363902(3*n+2)` -/
def P8119519847800546041.Spec : Prop :=
  ∀ n, P8119519847800546041.a n = A364066 (n + 1)

end A364066

/-! ## A364066.P8597521373423272142

`∑{d}[A023443(3*(n+1)), A103627(#)]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A364066

/-- `∑{d}[A023443(3*(n+1)), A103627(#)]` -/
def P8597521373423272142.Spec : Prop :=
  ∀ n, P8597521373423272142.a n = A364066 (n + 1)

theorem P8597521373423272142.correct : P8597521373423272142.Spec := by
  intro n
  simp only [A364066, Nat.add_sub_cancel]

end A364066

/-! ## A364066.P16247110943407222716

`A352873(A363890(n+1))-A363890(n+1)`
-/

namespace A364066.P16247110943407222716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352873 (A363890 (n + 1)).toNat - A363890 (n + 1)

end

end A364066.P16247110943407222716

namespace A364066

/-- `A352873(A363890(n+1))-A363890(n+1)` -/
def P16247110943407222716.Spec : Prop :=
  ∀ n, P16247110943407222716.a n = A364066 (n + 1)

end A364066

/-! ## A364066.P16972658000187004977

`A008620(A363890(n+1))%A188199(3*n+5)`
-/

namespace A364066.P16972658000187004977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008620 (A363890 (n + 1)).toNat) (A188199 (3 * n + 5))

end

end A364066.P16972658000187004977

namespace A364066

/-- `A008620(A363890(n+1))%A188199(3*n+5)` -/
def P16972658000187004977.Spec : Prop :=
  ∀ n, P16972658000187004977.a n = A364066 (n + 1)

end A364066

/-!
# A364067: Expansion of Sum_{k>0} k * x^(2*k) / (1 - x^(3*k-1)).

The programs for A364067, the canonical program `A364067.P12319574783518078769` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364067 has offset 1).

The definition of A364067 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364067.P6792355403192584457

`A363902(3*n+1)`
-/

namespace A364067.P6792355403192584457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363902 (3 * n + 1)

end

end A364067.P6792355403192584457

namespace A364067

/-- `A363902(3*n+1)` -/
def P6792355403192584457.Spec : Prop :=
  ∀ n, P6792355403192584457.a n = A364067 (n + 1)

end A364067

/-! ## A364067.P12319574783518078769

`A103627(A363891(n+1)+∑{d}[9*n+3, C(#, 2)%3])`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A364067

/-- `A103627(A363891(n+1)+∑{d}[9*n+3, C(#, 2)%3])` -/
def P12319574783518078769.Spec : Prop :=
  ∀ n, P12319574783518078769.a n = A364067 (n + 1)

theorem P12319574783518078769.correct : P12319574783518078769.Spec := by
  intro n
  simp only [A364067, Nat.add_sub_cancel]

end A364067

/-! ## A364067.P10679076207996041868

`A103627(A363891(n+1)+A326395(3*n+1))`
-/

namespace A364067.P10679076207996041868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A363891 (n + 1) + A326395 (3 * n + 1)).toNat

end

end A364067.P10679076207996041868

namespace A364067

/-- `A103627(A363891(n+1)+A326395(3*n+1))` -/
def P10679076207996041868.Spec : Prop :=
  ∀ n, P10679076207996041868.a n = A364067 (n + 1)

end A364067

/-! ## A364067.P17268376911340864303

`A103627(A326395(3*n+1)+A082050(3*n+1))`
-/

namespace A364067.P17268376911340864303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A326395 (3 * n + 1) + A082050 (3 * n + 1)).toNat

end

end A364067.P17268376911340864303

namespace A364067

/-- `A103627(A326395(3*n+1)+A082050(3*n+1))` -/
def P17268376911340864303.Spec : Prop :=
  ∀ n, P17268376911340864303.a n = A364067 (n + 1)

end A364067

/-! ## A364067.P7484330765072711

`A103627(A363891(n+1)+∑{d}[3*n+1, A022003(#)])`
-/

namespace A364067.P7484330765072711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A363891 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A022003 d).toNat

end

end A364067.P7484330765072711

namespace A364067

/-- `A103627(A363891(n+1)+∑{d}[3*n+1, A022003(#)])` -/
def P7484330765072711.Spec : Prop :=
  ∀ n, P7484330765072711.a n = A364067 (n + 1)

end A364067

/-! ## A364067.P6472176922976800333

`A103627(A082050(3*n+1)+∑{d}[3*n+1, A022003(#)])`
-/

namespace A364067.P6472176922976800333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A082050 (3 * n + 1) + ∑ d ∈ Nat.divisors (f1 n), A022003 d).toNat

end

end A364067.P6472176922976800333

namespace A364067

/-- `A103627(A082050(3*n+1)+∑{d}[3*n+1, A022003(#)])` -/
def P6472176922976800333.Spec : Prop :=
  ∀ n, P6472176922976800333.a n = A364067 (n + 1)

end A364067

/-! ## A364067.P2000533116712283532

`A103627(A363891(n+1)+A359212(n+1)-A033687(n))`
-/

namespace A364067.P2000533116712283532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A363891 (n + 1) + (A359212 (n + 1) - A033687 n)).toNat

end

end A364067.P2000533116712283532

namespace A364067

/-- `A103627(A363891(n+1)+A359212(n+1)-A033687(n))` -/
def P2000533116712283532.Spec : Prop :=
  ∀ n, P2000533116712283532.a n = A364067 (n + 1)

end A364067

/-! ## A364067.P4323461592586627222

`A103627(A363891(n+1)+A372715(n+1)-A359212(n+1))`
-/

namespace A364067.P4323461592586627222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A363891 (n + 1) + (A372715 (n + 1) - A359212 (n + 1))).toNat

end

end A364067.P4323461592586627222

namespace A364067

/-- `A103627(A363891(n+1)+A372715(n+1)-A359212(n+1))` -/
def P4323461592586627222.Spec : Prop :=
  ∀ n, P4323461592586627222.a n = A364067 (n + 1)

end A364067

/-! ## A364067.P16779874347219120289

`A103627(A082050(3*n+1)+A359212(n+1)-A033687(n))`
-/

namespace A364067.P16779874347219120289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A082050 (3 * n + 1) + (A359212 (n + 1) - A033687 n)).toNat

end

end A364067.P16779874347219120289

namespace A364067

/-- `A103627(A082050(3*n+1)+A359212(n+1)-A033687(n))` -/
def P16779874347219120289.Spec : Prop :=
  ∀ n, P16779874347219120289.a n = A364067 (n + 1)

end A364067

/-! ## A364067.P10193387118095643854

`A103627(A082050(3*n+1)+A372715(n+1)-A359212(n+1))`
-/

namespace A364067.P10193387118095643854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A082050 (3 * n + 1) + (A372715 (n + 1) - A359212 (n + 1))).toNat

end

end A364067.P10193387118095643854

namespace A364067

/-- `A103627(A082050(3*n+1)+A372715(n+1)-A359212(n+1))` -/
def P10193387118095643854.Spec : Prop :=
  ∀ n, P10193387118095643854.a n = A364067 (n + 1)

end A364067

/-! ## A364067.P17980127344424358822

`A103627(A082050(3*n+1)+A359211(2*n+1)-A359308(n+1))`
-/

namespace A364067.P17980127344424358822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A082050 (3 * n + 1) + (A359211 (2 * n + 1) - A359308 (n + 1))).toNat

end

end A364067.P17980127344424358822

namespace A364067

/-- `A103627(A082050(3*n+1)+A359211(2*n+1)-A359308(n+1))` -/
def P17980127344424358822.Spec : Prop :=
  ∀ n, P17980127344424358822.a n = A364067 (n + 1)

end A364067

/-!
# A364068: Triangle T(n,k) read by rows: Number of traceless binary n X n matrices with all row and column sums equal to k, 0<=k<=n.

The programs for A364068, there is no canonical definition to state claims against.
-/

/-! ## A364068.P10765969148865392220

`A329450((T(n-1,k)+T(n-1,k-1))²)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A364068.P10765969148865392220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  A329450 ((SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n) ^ 2).toNat

end

end A364068.P10765969148865392220

/-! ## A364068.P841430537721911240

`A073200(A071919(n)^5)`
-/

namespace A364068.P841430537721911240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073200 (A071919 n ^ 5).toNat

end

end A364068.P841430537721911240

/-! ## A364068.P5260917445633382360

`A073200(A277666(n)^5)`
-/

namespace A364068.P5260917445633382360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073200 (A277666 n ^ 5).toNat

end

end A364068.P5260917445633382360

/-! ## A364068.P12865051515117236715

`A071919(n)^A035470(∏{p}[n+1, #])`
-/

namespace A364068.P12865051515117236715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071919 n : ℚ) ^ (A035470 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ)

end

end A364068.P12865051515117236715

/-! ## A364068.P5598160067967062445

`A071919(n)^A035470((n+1)/gcd(n+1, 256))`
-/

namespace A364068.P5598160067967062445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071919 n : ℚ) ^ (A035470 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd (n + 1) 256 : ℚ))).toNat : ℤ)

end

end A364068.P5598160067967062445

/-!
# A364069: Dowling numbers: e.g.f. exp(x + (exp(b*x)-1)/b) with b = 63.

The programs for A364069, there is no canonical definition to state claims against.
-/

/-! ## A364069.P8361521229763677218

`A364074(C(n+3, 2))`
-/

namespace A364069.P8361521229763677218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364074 (Nat.choose (n + 3) 2)

end

end A364069.P8361521229763677218

/-! ## A364069.P7132373752722345732

`A364074(∑[n+2]+1)`
-/

namespace A364069.P7132373752722345732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364074 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A364069.P7132373752722345732

/-! ## A364069.P10034713025672857766

`A364074(A000217(n+2))+A326452(n)`
-/

namespace A364069.P10034713025672857766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364074 (A000217 (n + 2)).toNat + A326452 n

end

end A364069.P10034713025672857766

/-! ## A364069.P609219801312894513

`lcm(A140994(n), A364074(A000217(n+2)))`
-/

namespace A364069.P609219801312894513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A140994 n) (A364074 (A000217 (n + 2)).toNat)

end

end A364069.P609219801312894513

/-!
# A364070: Dowling numbers: e.g.f. exp(x + (exp(b*x)-1)/b) with b=624.

The programs for A364070, there is no canonical definition to state claims against.
-/

/-! ## A364070.P5664089129073706146

`A364074(∑[n+2]+3+n)`
-/

namespace A364070.P5664089129073706146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364074 (∑ j ∈ Finset.range (n + 1), f1 j + 3 + n)

end

end A364070.P5664089129073706146

/-!
# A364071: Triangle read by rows: T(n, k) = Sum_{d=0..n-k} binomial(n, d)*StirlingS2(n-d, k)*8^(n-d-k), with 0 <= k <= n.

The programs for A364071, there is no canonical definition to state claims against.
-/

/-! ## A364071.P2017164642906356033

`A022173(n)%A007379(A232589(3*n+4))`
-/

namespace A364071.P2017164642906356033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022173 n) (A007379 (A232589 (3 * n + 4)).toNat)

end

end A364071.P2017164642906356033

/-!
# A364072: Triangle read by rows: T(n, k) = Sum_{d=0..n-k} binomial(n, d)*StirlingS2(n-d, k)*63^(n-d-k), with 0 <= k <= n.

The programs for A364072, there is no canonical definition to state claims against.
-/

/-! ## A364072.P16385474969505360711

`A071992(A327497(n))`
-/

namespace A364072.P16385474969505360711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071992 (A327497 n).toNat

end

end A364072.P16385474969505360711

/-! ## A364072.P8769449835253679097

`A351308(A150007(n))`
-/

namespace A364072.P8769449835253679097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351308 (A150007 n).toNat

end

end A364072.P8769449835253679097

/-! ## A364072.P11343191478927776595

`A351308(A150010(n))`
-/

namespace A364072.P11343191478927776595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351308 (A150010 n).toNat

end

end A364072.P11343191478927776595

/-! ## A364072.P9506785091787437118

`A351308(A150222(n))`
-/

namespace A364072.P9506785091787437118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351308 (A150222 n).toNat

end

end A364072.P9506785091787437118

/-!
# A364073: Triangle read by rows: T(n, k) = Sum_{d=0..n-k} binomial(n, d)*StirlingS2(n-d, k)*624^(n-d-k), with 0 <= k <= n.

The programs for A364073, there is no canonical definition to state claims against.
-/

/-! ## A364073.P6354586289180548949

`A103637(5^A373432(n))`
-/

namespace A364073.P6354586289180548949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103637 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A373432 n : ℤ))).toNat

end

end A364073.P6354586289180548949

/-! ## A364073.P12771516976184265395

`A351307(A005105(3*n+5)+3)`
-/

namespace A364073.P12771516976184265395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351307 (A005105 (3 * n + 5) + 3).toNat

end

end A364073.P12771516976184265395

/-! ## A364073.P12816937044855005223

`A351307(A190257(n)^A008288(n))`
-/

namespace A364073.P12816937044855005223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351307 (SequenceMachineLib.roundAway ((A190257 n : ℚ) ^ (A008288 n : ℤ))).toNat

end

end A364073.P12816937044855005223

/-! ## A364073.P5394772375629839351

`A347143(or(A000100(n), A001764(n)))`
-/

namespace A364073.P5394772375629839351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347143 (Int.lor (A000100 n) (A001764 n)).toNat

end

end A364073.P5394772375629839351

/-!
# A364074: Array read by ascending antidiagonals: A(m, n) = Sum_{i=0..n} Sum_{d=0..n-i} binomial(n, d)*StirlingS2(n-d, i)*(m^(m-1) - 1)^(n-d-i).

The programs for A364074, there is no canonical definition to state claims against.
-/

/-! ## A364074.P13303653426101788538

`A098101(A178300(n+1))`
-/

namespace A364074.P13303653426101788538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098101 (A178300 (n + 1)).toNat

end

end A364074.P13303653426101788538

/-! ## A364074.P17554479917701227731

`A056156(∏{d}[A361600(n), #])`
-/

namespace A364074.P17554479917701227731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056156 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A364074.P17554479917701227731

/-! ## A364074.P9441654641189159239

`A361858(2^A106683(n+1))`
-/

namespace A364074.P9441654641189159239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361858 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A106683 (n + 1) : ℤ))).toNat

end

end A364074.P9441654641189159239

/-! ## A364074.P1693647285017700720

`A000070(A180662(n)^A131704(n+1))`
-/

namespace A364074.P1693647285017700720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (SequenceMachineLib.roundAway ((A180662 n : ℚ) ^ (A131704 (n + 1) : ℤ))).toNat

end

end A364074.P1693647285017700720

/-!
# A364077: Numbers k such that (12^k + 1)^2 - 2 is prime.

The programs for A364077, there is no canonical definition to state claims against.
-/

/-! ## A364077.P4080732398115566661

`A136040(A150725(n))`
-/

namespace A364077.P4080732398115566661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136040 (A150725 n).toNat

end

end A364077.P4080732398115566661

/-!
# A364078: Numbers k such that (18^k - 1)^2 - 2 is prime.

The programs for A364078, there is no canonical definition to state claims against.
-/

/-! ## A364078.P11131681735381859416

`A374767(A368651(n+1))+3*n`
-/

namespace A364078.P11131681735381859416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374767 (A368651 (n + 1)).toNat + (3 * n : ℤ)

end

end A364078.P11131681735381859416

/-!
# A364080: Numbers k such that (20^k - 1)^2 - 2 is prime.

The programs for A364080, there is no canonical definition to state claims against.
-/

/-! ## A364080.P8946812901845370618

`A153733(A054413(n))+A151531(n+1)`
-/

namespace A364080.P8946812901845370618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 (A054413 n).toNat + A151531 (n + 1)

end

end A364080.P8946812901845370618

/-!
# A364081: Numbers k such that (20^k + 1)^2 - 2 is prime.

The programs for A364081, there is no canonical definition to state claims against.
-/

/-! ## A364081.P178932207936045168

`A175135(A360201(n+1))`
-/

namespace A364081.P178932207936045168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175135 (A360201 (n + 1)).toNat

end

end A364081.P178932207936045168

/-!
# A364082: Expansion of Sum_{k>0} k * x^(3*k-2) / (1 - x^(4*k-3)).

The programs for A364082, the canonical program `A364082.P5750381891829572794` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364082 has offset 1).

The definition of A364082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364082.P17917762910797622351

`A363258(2*(n+1))`
-/

namespace A364082.P17917762910797622351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363258 (2 * (n + 1))

end

end A364082.P17917762910797622351

namespace A364082

/-- `A363258(2*(n+1))` -/
def P17917762910797622351.Spec : Prop :=
  ∀ n, P17917762910797622351.a n = A364082 (n + 1)

end A364082

/-! ## A364082.P6474726940250570770

`A028310(A363258(2+n+n))`
-/

namespace A364082.P6474726940250570770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A363258 (2 + (n + n))).toNat

end

end A364082.P6474726940250570770

namespace A364082

/-- `A028310(A363258(2+n+n))` -/
def P6474726940250570770.Spec : Prop :=
  ∀ n, P6474726940250570770.a n = A364082 (n + 1)

end A364082

/-! ## A364082.P5750381891829572794

`A363903(3*(n+1)+n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A364082

/-- `A363903(3*(n+1)+n)` -/
def P5750381891829572794.Spec : Prop :=
  ∀ n, P5750381891829572794.a n = A364082 (n + 1)

theorem P5750381891829572794.correct : P5750381891829572794.Spec := by
  intro n
  simp only [A364082, Nat.add_sub_cancel]

end A364082

/-! ## A364082.P13671392468225174333

`A363903(A004767(n))%A004767(n)`
-/

namespace A364082.P13671392468225174333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363903 (A004767 n).toNat) (A004767 n)

end

end A364082.P13671392468225174333

namespace A364082

/-- `A363903(A004767(n))%A004767(n)` -/
def P13671392468225174333.Spec : Prop :=
  ∀ n, P13671392468225174333.a n = A364082 (n + 1)

end A364082

/-! ## A364082.P3260731086546951259

`A363903(A004767(n))^gcd(n, A065727(n+1))`
-/

namespace A364082.P3260731086546951259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363903 (A004767 n).toNat ^ Int.gcd (n : ℤ) (A065727 (n + 1))

end

end A364082.P3260731086546951259

namespace A364082

/-- `A363903(A004767(n))^gcd(n, A065727(n+1))` -/
def P3260731086546951259.Spec : Prop :=
  ∀ n, P3260731086546951259.a n = A364082 (n + 1)

end A364082

/-! ## A364082.P2441515215106764530

`A363903(A004767(n))/A007318(∑[n])`
-/

namespace A364082.P2441515215106764530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363903 (A004767 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A364082.P2441515215106764530

namespace A364082

/-- `A363903(A004767(n))/A007318(∑[n])` -/
def P2441515215106764530.Spec : Prop :=
  ∀ n, P2441515215106764530.a n = (A364082 (n + 1) : ℚ)

end A364082

/-!
# A364083: Expansion of Sum_{k>0} k * x^k / (1 - x^(4*k-3)).

The programs for A364083, the canonical program `A364083.P15159461776881463796` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364083 has offset 1).

The definition of A364083 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364083.P166227967789968070

`A363258(Δ[n²])`
-/

namespace A364083.P166227967789968070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363258 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A364083.P166227967789968070

namespace A364083

/-- `A363258(Δ[n²])` -/
def P166227967789968070.Spec : Prop :=
  ∀ n, P166227967789968070.a n = A364083 (n + 1)

end A364083

/-! ## A364083.P1855852367260425634

`A028310(A363258(1+2*n))`
-/

namespace A364083.P1855852367260425634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A363258 (1 + 2 * n)).toNat

end

end A364083.P1855852367260425634

namespace A364083

/-- `A028310(A363258(1+2*n))` -/
def P1855852367260425634.Spec : Prop :=
  ∀ n, P1855852367260425634.a n = A364083 (n + 1)

end A364083

/-! ## A364083.P11191060762152371569

`A363258(2*n+1)+A318880(2*n+1)`
-/

namespace A364083.P11191060762152371569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363258 (2 * n + 1) + A318880 (2 * n + 1)

end

end A364083.P11191060762152371569

namespace A364083

/-- `A363258(2*n+1)+A318880(2*n+1)` -/
def P11191060762152371569.Spec : Prop :=
  ∀ n, P11191060762152371569.a n = A364083 (n + 1)

end A364083

/-! ## A364083.P4009081820219735384

`A152271(2*(n+2))*A363258(2*n+1)`
-/

namespace A364083.P4009081820219735384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (2 * (n + 2)) * A363258 (2 * n + 1)

end

end A364083.P4009081820219735384

namespace A364083

/-- `A152271(2*(n+2))*A363258(2*n+1)` -/
def P4009081820219735384.Spec : Prop :=
  ∀ n, P4009081820219735384.a n = A364083 (n + 1)

end A364083

/-! ## A364083.P15159461776881463796

`A363903(4*n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A364083

/-- `A363903(4*n+1)` -/
def P15159461776881463796.Spec : Prop :=
  ∀ n, P15159461776881463796.a n = A364083 (n + 1)

theorem P15159461776881463796.correct : P15159461776881463796.Spec := by
  intro n
  simp only [A364083, Nat.add_sub_cancel]

end A364083

/-!
# A364084: Expansion of Sum_{k>0} k * x^(3*k) / (1 - x^(4*k-1)).

The programs for A364084, the canonical program `A364084.P12661241187166773764` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364084 has offset 1).

The definition of A364084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364084.P5225797282109524593

`A363259(Δ[n²])`
-/

namespace A364084.P5225797282109524593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363259 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A364084.P5225797282109524593

namespace A364084

/-- `A363259(Δ[n²])` -/
def P5225797282109524593.Spec : Prop :=
  ∀ n, P5225797282109524593.a n = A364084 (n + 1)

end A364084

/-! ## A364084.P4417650024565384428

`A363259(2*n+1)%(n+1)`
-/

namespace A364084.P4417650024565384428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363259 (2 * n + 1)) (n + 1 : ℤ)

end

end A364084.P4417650024565384428

namespace A364084

/-- `A363259(2*n+1)%(n+1)` -/
def P4417650024565384428.Spec : Prop :=
  ∀ n, P4417650024565384428.a n = A364084 (n + 1)

end A364084

/-! ## A364084.P17518349935758522387

`A363259(2*n+1)+A001842(A364567(n))`
-/

namespace A364084.P17518349935758522387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363259 (2 * n + 1) + A001842 (A364567 n).toNat

end

end A364084.P17518349935758522387

namespace A364084

/-- `A363259(2*n+1)+A001842(A364567(n))` -/
def P17518349935758522387.Spec : Prop :=
  ∀ n, P17518349935758522387.a n = A364084 (n + 1)

end A364084

/-! ## A364084.P2007348779621913421

`A363259(2*n+1)+A000007(2*(n+2))`
-/

namespace A364084.P2007348779621913421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363259 (2 * n + 1) + A000007 (2 * (n + 2))

end

end A364084.P2007348779621913421

namespace A364084

/-- `A363259(2*n+1)+A000007(2*(n+2))` -/
def P2007348779621913421.Spec : Prop :=
  ∀ n, P2007348779621913421.a n = A364084 (n + 1)

end A364084

/-! ## A364084.P12661241187166773764

`A363904(4*n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A364084

/-- `A363904(4*n+1)` -/
def P12661241187166773764.Spec : Prop :=
  ∀ n, P12661241187166773764.a n = A364084 (n + 1)

theorem P12661241187166773764.correct : P12661241187166773764.Spec := by
  intro n
  simp only [A364084, Nat.add_sub_cancel]

end A364084

/-! ## A364084.P11625875853392564421

`A363259(2*n+1)+A010052(A000040(n+1))`
-/

namespace A364084.P11625875853392564421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363259 (2 * n + 1) + A010052 (A000040 (n + 1)).toNat

end

end A364084.P11625875853392564421

namespace A364084

/-- `A363259(2*n+1)+A010052(A000040(n+1))` -/
def P11625875853392564421.Spec : Prop :=
  ∀ n, P11625875853392564421.a n = A364084 (n + 1)

end A364084

/-!
# A364085: Expansion of Sum_{k>0} k * x^k / (1 - x^(4*k-1)).

The programs for A364085, the canonical program `A364085.P4521992801007173167` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364085 has offset 1).

The definition of A364085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364085.P4530918810927770755

`A363259(2*(n+1))`
-/

namespace A364085.P4530918810927770755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363259 (2 * (n + 1))

end

end A364085.P4530918810927770755

namespace A364085

/-- `A363259(2*(n+1))` -/
def P4530918810927770755.Spec : Prop :=
  ∀ n, P4530918810927770755.a n = A364085 (n + 1)

end A364085

/-! ## A364085.P4521992801007173167

`A363904(4*(n+1)-1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A364085

/-- `A363904(4*(n+1)-1)` -/
def P4521992801007173167.Spec : Prop :=
  ∀ n, P4521992801007173167.a n = A364085 (n + 1)

theorem P4521992801007173167.correct : P4521992801007173167.Spec := by
  intro n
  simp only [A364085, Nat.add_sub_cancel]

end A364085

/-! ## A364085.P9851208878332459417

`A363904(A017137(n))%A017137(n)`
-/

namespace A364085.P9851208878332459417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363904 (A017137 n).toNat) (A017137 n)

end

end A364085.P9851208878332459417

namespace A364085

/-- `A363904(A017137(n))%A017137(n)` -/
def P9851208878332459417.Spec : Prop :=
  ∀ n, P9851208878332459417.a n = A364085 (n + 1)

end A364085

/-! ## A364085.P12497580952093638742

`A363904(A017137(n))+A110161(3*n)`
-/

namespace A364085.P12497580952093638742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363904 (A017137 n).toNat + A110161 (3 * n)

end

end A364085.P12497580952093638742

namespace A364085

/-- `A363904(A017137(n))+A110161(3*n)` -/
def P12497580952093638742.Spec : Prop :=
  ∀ n, P12497580952093638742.a n = A364085 (n + 1)

end A364085

/-! ## A364085.P14715972923919004521

`A020639(2*(n+1))/2*A363904(A017137(n))`
-/

namespace A364085.P14715972923919004521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (2 * (n + 1)) : ℚ) / 2 * (A363904 (A017137 n).toNat : ℚ)

end

end A364085.P14715972923919004521

namespace A364085

/-- `A020639(2*(n+1))/2*A363904(A017137(n))` -/
def P14715972923919004521.Spec : Prop :=
  ∀ n, P14715972923919004521.a n = (A364085 (n + 1) : ℚ)

end A364085

/-! ## A364085.P12583814008994832152

`A373148(A000040(n+1))+A363904(A017137(n))`
-/

namespace A364085.P12583814008994832152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373148 (A000040 (n + 1)).toNat + A363904 (A017137 n).toNat

end

end A364085.P12583814008994832152

namespace A364085

/-- `A373148(A000040(n+1))+A363904(A017137(n))` -/
def P12583814008994832152.Spec : Prop :=
  ∀ n, P12583814008994832152.a n = A364085 (n + 1)

end A364085

/-! ## A364085.P6022065816064512072

`A363904(A017137(n))*A373486(A373487(n+1))`
-/

namespace A364085.P6022065816064512072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363904 (A017137 n).toNat * A373486 (A373487 (n + 1)).toNat

end

end A364085.P6022065816064512072

namespace A364085

/-- `A363904(A017137(n))*A373486(A373487(n+1))` -/
def P6022065816064512072.Spec : Prop :=
  ∀ n, P6022065816064512072.a n = A364085 (n + 1)

end A364085

/-! ## A364085.P11338852961505956591

`A363904(A017137(n))*A373486(A373488(n+1))`
-/

namespace A364085.P11338852961505956591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363904 (A017137 n).toNat * A373486 (A373488 (n + 1)).toNat

end

end A364085.P11338852961505956591

namespace A364085

/-- `A363904(A017137(n))*A373486(A373488(n+1))` -/
def P11338852961505956591.Spec : Prop :=
  ∀ n, P11338852961505956591.a n = A364085 (n + 1)

end A364085

/-! ## A364085.P17396574512156239682

`and(A126646(n), A363904(A017137(n)))`
-/

namespace A364085.P17396574512156239682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A363904 (A017137 n).toNat)

end

end A364085.P17396574512156239682

namespace A364085

/-- `and(A126646(n), A363904(A017137(n)))` -/
def P17396574512156239682.Spec : Prop :=
  ∀ n, P17396574512156239682.a n = A364085 (n + 1)

end A364085

/-!
# A364086: Fixed points of A002326, i.e., numbers k such that A002326(k) = k.

The programs for A364086, there is no canonical definition to state claims against.
-/

/-! ## A364086.P12094883220756252080

`floor(A115591(n+1)/2)`
-/

namespace A364086.P12094883220756252080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A115591 (n + 1) : ℚ) / 2⌋

end

end A364086.P12094883220756252080

/-! ## A364086.P6141887833377523370

`(A000040(eq[2, A001917(n+2)]+2)-1)/2`
-/

namespace A364086.P6141887833377523370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001917 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2) - 1 : ℚ) / 2

end

end A364086.P6141887833377523370

/-! ## A364086.P10531577222521907394

`eq[6, A319350(2*n+1)]`
-/

namespace A364086.P10531577222521907394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319350 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A364086.P10531577222521907394

/-! ## A364086.P2866607486367681161

`A118106(2*A115591(n+1))`
-/

namespace A364086.P2866607486367681161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118106 (2 * A115591 (n + 1)).toNat

end

end A364086.P2866607486367681161

/-! ## A364086.P11293062333815100278

`eq[n, A002326(n)]`
-/

namespace A364086.P11293062333815100278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A364086.P11293062333815100278

/-! ## A364086.P1343103300876600613

`eq[A000096(n), A292249(n)]`
-/

namespace A364086.P1343103300876600613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292249 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A364086.P1343103300876600613

/-! ## A364086.P16466971570630787763

`eq[A002139(n+1), A002378(n)]`
-/

namespace A364086.P16466971570630787763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A364086.P16466971570630787763

/-! ## A364086.P4849552550064502547

`eq[A006694(n), A140685(n+1)]`
-/

namespace A364086.P4849552550064502547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140685 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A364086.P4849552550064502547

/-! ## A364086.P9906536192335538720

`eq[A037226(n), A119323(n+1)]`
-/

namespace A364086.P9906536192335538720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037226 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119323 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A364086.P9906536192335538720

/-! ## A364086.P12523667667834115600

`eq[n, A007733(2*n+1)]`
-/

namespace A364086.P12523667667834115600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A364086.P12523667667834115600

/-! ## A364086.P1369898023063655631

`eq[n, A024222(2*(n+1))]`
-/

namespace A364086.P1369898023063655631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A364086.P1369898023063655631

/-! ## A364086.P15727436457769597509

`eq[n, A054703(2*n+1)]`
-/

namespace A364086.P15727436457769597509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054703 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A364086.P15727436457769597509

/-! ## A364086.P17588068866778612280

`eq[n, A371531(2*n+1)]`
-/

namespace A364086.P17588068866778612280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371531 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A364086.P17588068866778612280

/-! ## A364086.P15723448000931340593

`A002616(A115591(n+1))`
-/

namespace A364086.P15723448000931340593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002616 (A115591 (n + 1)).toNat

end

end A364086.P15723448000931340593

/-! ## A364086.P10426447400459049699

`A024222(eq[A024222(n+1), A057979(n)])`
-/

namespace A364086.P10426447400459049699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A364086.P10426447400459049699

/-! ## A364086.P16107506475322259474

`A024222(eq[A024222(n+1), A174239(n)])`
-/

namespace A364086.P16107506475322259474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A364086.P16107506475322259474

/-! ## A364086.P12523554593715871818

`eq[n+1, A204987(2*n+1)]`
-/

namespace A364086.P12523554593715871818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204987 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A364086.P12523554593715871818

/-! ## A364086.P15071488939253535745

`eq[n+1, A204979(2*n+1)]`
-/

namespace A364086.P15071488939253535745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204979 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A364086.P15071488939253535745

/-!
# A364088: Number of directed multigraphs with loops containing n edges and an infinite number of vertices modulo isomorphism and reversal of all edge directions.

The programs for A364088, there is no canonical definition to state claims against.
-/

/-! ## A364088.P7622026366995921839

`A014085(A206624(n))-A170984(n)`
-/

namespace A364088.P7622026366995921839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A206624 n).toNat - A170984 n

end

end A364088.P7622026366995921839

/-! ## A364088.P11329827160512554590

`A014085(A206624(n))-A321429(n)`
-/

namespace A364088.P11329827160512554590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A206624 n).toNat - A321429 n

end

end A364088.P11329827160512554590

/-!
# A364090: Add each term m of the sequence to the last one m times starting with 1, 1.

The programs for A364090, there is no canonical definition to state claims against.
-/

/-! ## A364090.P1172689170539859545

`A168182(A122888(3*n+2))+floor((n/2)²)`
-/

namespace A364090.P1172689170539859545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168182 (A122888 (3 * n + 2)).toNat + ⌊((n : ℚ) / 2) ^ 2⌋

end

end A364090.P1172689170539859545

/-! ## A364090.P16328021574264965844

`A196368(A000081(n))+A002620(n)`
-/

namespace A364090.P16328021574264965844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 (A000081 n).toNat + A002620 n

end

end A364090.P16328021574264965844

/-! ## A364090.P3218834393935940354

`A344880(A016791(n))+A002620(n)`
-/

namespace A364090.P3218834393935940354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344880 (A016791 n).toNat + A002620 n

end

end A364090.P3218834393935940354

/-! ## A364090.P1531281019829892745

`A329746(A156889(n))+A002620(n)`
-/

namespace A364090.P1531281019829892745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329746 (A156889 n).toNat + A002620 n

end

end A364090.P1531281019829892745

/-! ## A364090.P16030213521253747816

`A186718(A316623(n))+A002620(n)`
-/

namespace A364090.P16030213521253747816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186718 (A316623 n).toNat + A002620 n

end

end A364090.P16030213521253747816

/-!
# A364092: Sum of divisors of 5*n-1 of form 5*k+1.

The programs for A364092, the canonical program `A364092.P276984293227753966` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364092 has offset 1).

The definition of A364092 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284097, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364092.P276984293227753966

`A284097(5*(n+1)-1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A364092

/-- `A284097(5*(n+1)-1)` -/
def P276984293227753966.Spec : Prop :=
  ∀ n, P276984293227753966.a n = A364092 (n + 1)

theorem P276984293227753966.correct : P276984293227753966.Spec := by
  intro n
  simp only [A364092, Nat.add_sub_cancel]

end A364092

/-! ## A364092.P15693325376637727458

`A363900(5*n+4)`
-/

namespace A364092.P15693325376637727458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363900 (5 * n + 4)

end

end A364092.P15693325376637727458

namespace A364092

/-- `A363900(5*n+4)` -/
def P15693325376637727458.Spec : Prop :=
  ∀ n, P15693325376637727458.a n = A364092 (n + 1)

end A364092

/-! ## A364092.P7317573987069945422

`A363900(A016897(n))%A004767(n)`
-/

namespace A364092.P7317573987069945422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363900 (A016897 n).toNat) (A004767 n)

end

end A364092.P7317573987069945422

namespace A364092

/-- `A363900(A016897(n))%A004767(n)` -/
def P7317573987069945422.Spec : Prop :=
  ∀ n, P7317573987069945422.a n = A364092 (n + 1)

end A364092

/-! ## A364092.P14357604552677688381

`A363900(A016897(n))/A020985(n)²`
-/

namespace A364092.P14357604552677688381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363900 (A016897 n).toNat : ℚ) / (A020985 n ^ 2 : ℚ)

end

end A364092.P14357604552677688381

namespace A364092

/-- `A363900(A016897(n))/A020985(n)²` -/
def P14357604552677688381.Spec : Prop :=
  ∀ n, P14357604552677688381.a n = (A364092 (n + 1) : ℚ)

end A364092

/-! ## A364092.P16436330295118051205

`A363900(A016897(n))/A158388(n+1)`
-/

namespace A364092.P16436330295118051205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363900 (A016897 n).toNat : ℚ) / (A158388 (n + 1) : ℚ)

end

end A364092.P16436330295118051205

namespace A364092

/-- `A363900(A016897(n))/A158388(n+1)` -/
def P16436330295118051205.Spec : Prop :=
  ∀ n, P16436330295118051205.a n = (A364092 (n + 1) : ℚ)

end A364092

/-! ## A364092.P8835006039940229362

`A363900(A016897(n))/A114197(∑[n])`
-/

namespace A364092.P8835006039940229362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363900 (A016897 n).toNat : ℚ) / (A114197 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A364092.P8835006039940229362

namespace A364092

/-- `A363900(A016897(n))/A114197(∑[n])` -/
def P8835006039940229362.Spec : Prop :=
  ∀ n, P8835006039940229362.a n = (A364092 (n + 1) : ℚ)

end A364092

/-!
# A364093: Sum of divisors of 5*n-2 of form 5*k+1.

The programs for A364093, the canonical program `A364093.P6985918061966599924` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364093 has offset 1).

The definition of A364093 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284097, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364093.P6985918061966599924

`A284097(5*(n+1)-2)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A364093

/-- `A284097(5*(n+1)-2)` -/
def P6985918061966599924.Spec : Prop :=
  ∀ n, P6985918061966599924.a n = A364093 (n + 1)

theorem P6985918061966599924.correct : P6985918061966599924.Spec := by
  intro n
  simp only [A364093, Nat.add_sub_cancel]

end A364093

/-! ## A364093.P18254566096750327495

`A363899(3+n+4*n)`
-/

namespace A364093.P18254566096750327495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363899 (3 + n + 4 * n)

end

end A364093.P18254566096750327495

namespace A364093

/-- `A363899(3+n+4*n)` -/
def P18254566096750327495.Spec : Prop :=
  ∀ n, P18254566096750327495.a n = A364093 (n + 1)

end A364093

/-!
# A364094: Sum of divisors of 5*n-3 of form 5*k+1.

The programs for A364094, the canonical program `A364094.P1687889937016555816` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364094 has offset 1).

The definition of A364094 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284097, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364094.P1687889937016555816

`A284097(5*(n+1)-3)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A364094

/-- `A284097(5*(n+1)-3)` -/
def P1687889937016555816.Spec : Prop :=
  ∀ n, P1687889937016555816.a n = A364094 (n + 1)

theorem P1687889937016555816.correct : P1687889937016555816.Spec := by
  intro n
  simp only [A364094, Nat.add_sub_cancel]

end A364094

/-! ## A364094.P7493035280630712576

`A363898(A008587(n)+2)`
-/

namespace A364094.P7493035280630712576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363898 (A008587 n + 2).toNat

end

end A364094.P7493035280630712576

namespace A364094

/-- `A363898(A008587(n)+2)` -/
def P7493035280630712576.Spec : Prop :=
  ∀ n, P7493035280630712576.a n = A364094 (n + 1)

end A364094

/-! ## A364094.P4318803437072799749

`A363898(A016825(n)+n)`
-/

namespace A364094.P4318803437072799749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363898 (A016825 n + (n : ℤ)).toNat

end

end A364094.P4318803437072799749

namespace A364094

/-- `A363898(A016825(n)+n)` -/
def P4318803437072799749.Spec : Prop :=
  ∀ n, P4318803437072799749.a n = A364094 (n + 1)

end A364094

/-! ## A364094.P10712011511280306816

`A363898(A005843(2*n+1)+n)`
-/

namespace A364094.P10712011511280306816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363898 (A005843 (2 * n + 1) + (n : ℤ)).toNat

end

end A364094.P10712011511280306816

namespace A364094

/-- `A363898(A005843(2*n+1)+n)` -/
def P10712011511280306816.Spec : Prop :=
  ∀ n, P10712011511280306816.a n = A364094 (n + 1)

end A364094

/-!
# A364095: Sum of divisors of 5*n-4 of form 5*k+1.

The programs for A364095, the canonical program `A364095.P7707059766730752190` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364095 has offset 1).

The definition of A364095 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284097, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364095.P7707059766730752190

`A284097(5*n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A364095

/-- `A284097(5*n+1)` -/
def P7707059766730752190.Spec : Prop :=
  ∀ n, P7707059766730752190.a n = A364095 (n + 1)

theorem P7707059766730752190.correct : P7707059766730752190.Spec := by
  intro n
  simp only [A364095, Nat.add_sub_cancel]

end A364095

/-! ## A364095.P800902842440254793

`A363897(5*n+1)`
-/

namespace A364095.P800902842440254793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363897 (5 * n + 1)

end

end A364095.P800902842440254793

namespace A364095

/-- `A363897(5*n+1)` -/
def P800902842440254793.Spec : Prop :=
  ∀ n, P800902842440254793.a n = A364095 (n + 1)

end A364095

/-! ## A364095.P3837077207108155324

`A363897(A016861(n))%A017293(n)`
-/

namespace A364095.P3837077207108155324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363897 (A016861 n).toNat) (A017293 n)

end

end A364095.P3837077207108155324

namespace A364095

/-- `A363897(A016861(n))%A017293(n)` -/
def P3837077207108155324.Spec : Prop :=
  ∀ n, P3837077207108155324.a n = A364095 (n + 1)

end A364095

/-! ## A364095.P2745784857506681810

`A284097(A016861(n))%A024450(n+1)`
-/

namespace A364095.P2745784857506681810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284097 (A016861 n).toNat) (A024450 (n + 1))

end

end A364095.P2745784857506681810

namespace A364095

/-- `A284097(A016861(n))%A024450(n+1)` -/
def P2745784857506681810.Spec : Prop :=
  ∀ n, P2745784857506681810.a n = A364095 (n + 1)

end A364095

/-! ## A364095.P12336713305108314980

`A284097(A016861(n))^A032742(A019337(n+1))`
-/

namespace A364095.P12336713305108314980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284097 (A016861 n).toNat : ℚ) ^ (A032742 (A019337 (n + 1)).toNat : ℤ)

end

end A364095.P12336713305108314980

namespace A364095

/-- `A284097(A016861(n))^A032742(A019337(n+1))` -/
def P12336713305108314980.Spec : Prop :=
  ∀ n, P12336713305108314980.a n = (A364095 (n + 1) : ℚ)

end A364095

/-! ## A364095.P6481454166951889976

`A284097(A016861(n))%A354663(n)`
-/

namespace A364095.P6481454166951889976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284097 (A016861 n).toNat) (A354663 n)

end

end A364095.P6481454166951889976

namespace A364095

/-- `A284097(A016861(n))%A354663(n)` -/
def P6481454166951889976.Spec : Prop :=
  ∀ n, P6481454166951889976.a n = A364095 (n + 1)

end A364095

/-!
# A364096: Expansion of Sum_{k>0} k * x^(4*k-3) / (1 - x^(5*k-4)).

The programs for A364096, the canonical program `A364096.P7742146963870490233` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364096 has offset 1).

The definition of A364096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364096.P7742146963870490233

`A363925(5*n+4)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A364096

/-- `A363925(5*n+4)` -/
def P7742146963870490233.Spec : Prop :=
  ∀ n, P7742146963870490233.a n = A364096 (n + 1)

theorem P7742146963870490233.correct : P7742146963870490233.Spec := by
  intro n
  simp only [A364096, Nat.add_sub_cancel]

end A364096

/-! ## A364096.P14067430423620255010

`A363925(A016897(n))%A004767(n)`
-/

namespace A364096.P14067430423620255010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363925 (A016897 n).toNat) (A004767 n)

end

end A364096.P14067430423620255010

namespace A364096

/-- `A363925(A016897(n))%A004767(n)` -/
def P14067430423620255010.Spec : Prop :=
  ∀ n, P14067430423620255010.a n = A364096 (n + 1)

end A364096

/-! ## A364096.P8354723407376414846

`A363925(A016897(n))^(A040000(n)-1)`
-/

namespace A364096.P8354723407376414846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363925 (A016897 n).toNat : ℚ) ^ (A040000 n - 1 : ℤ)

end

end A364096.P8354723407376414846

namespace A364096

/-- `A363925(A016897(n))^(A040000(n)-1)` -/
def P8354723407376414846.Spec : Prop :=
  ∀ n, P8354723407376414846.a n = (A364096 (n + 1) : ℚ)

end A364096

/-! ## A364096.P6926518006455695696

`A100795(A364092(n+1)%A364090(2*n+3))`
-/

namespace A364096.P6926518006455695696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100795 (Int.tmod (A364092 (n + 1)) (A364090 (2 * n + 3))).toNat

end

end A364096.P6926518006455695696

namespace A364096

/-- `A100795(A364092(n+1)%A364090(2*n+3))` -/
def P6926518006455695696.Spec : Prop :=
  ∀ n, P6926518006455695696.a n = A364096 (n + 1)

end A364096

/-! ## A364096.P13246711625412708210

`A106161(A364092(n+1))`
-/

namespace A364096.P13246711625412708210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106161 (A364092 (n + 1)).toNat

end

end A364096.P13246711625412708210

namespace A364096

/-- `A106161(A364092(n+1))` -/
def P13246711625412708210.Spec : Prop :=
  ∀ n, P13246711625412708210.a n = A364096 (n + 1)

end A364096

/-!
# A364097: Expansion of Sum_{k>0} k * x^(3*k-2) / (1 - x^(5*k-4)).

The programs for A364097, the canonical program `A364097.P16769132018237927195` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364097 has offset 1).

The definition of A364097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364097.P16769132018237927195

`A363925(A016885(n))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A364097

/-- `A363925(A016885(n))` -/
def P16769132018237927195.Spec : Prop :=
  ∀ n, P16769132018237927195.a n = A364097 (n + 1)

theorem P16769132018237927195.correct : P16769132018237927195.Spec := by
  intro n
  simp only [A364097, Nat.add_sub_cancel]

end A364097

/-! ## A364097.P5148487021625729126

`A363925(A016873(n)+1)`
-/

namespace A364097.P5148487021625729126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363925 (A016873 n + 1).toNat

end

end A364097.P5148487021625729126

namespace A364097

/-- `A363925(A016873(n)+1)` -/
def P5148487021625729126.Spec : Prop :=
  ∀ n, P5148487021625729126.a n = A364097 (n + 1)

theorem P5148487021625729126.correct : P5148487021625729126.Spec := by
  intro n
  simp only [A364097, Nat.add_sub_cancel, A364097.P5148487021625729126.a, A364097.P16769132018237927195.a, A016873, A016873.P366335242068170250.a, A016885, A016885.P12442016633976001399.a, A363925, A363925.P14665766915685615402.a, A001876, A001876.P1528332183595955459.f1, A001876.P1528332183595955459.a, A284097, A284097.P4703554069463701905.f1, A284097.P4703554069463701905.a, A079998, A079998.P5984370107414098605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A364097

/-! ## A364097.P7161079824520600043

`A363925(A016861(n)+2)`
-/

namespace A364097.P7161079824520600043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363925 (A016861 n + 2).toNat

end

end A364097.P7161079824520600043

namespace A364097

/-- `A363925(A016861(n)+2)` -/
def P7161079824520600043.Spec : Prop :=
  ∀ n, P7161079824520600043.a n = A364097 (n + 1)

theorem P7161079824520600043.correct : P7161079824520600043.Spec := by
  intro n
  simp only [A364097, Nat.add_sub_cancel, A364097.P7161079824520600043.a, A364097.P16769132018237927195.a, A016861, A016861.P12760207785627616280.a, A016885, A016885.P12442016633976001399.a, A363925, A363925.P14665766915685615402.a, A001876, A001876.P1528332183595955459.f1, A001876.P1528332183595955459.a, A284097, A284097.P4703554069463701905.f1, A284097.P4703554069463701905.a, A079998, A079998.P5984370107414098605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A364097

/-! ## A364097.P17124577254319616427

`A363925(A016897(n)-1)`
-/

namespace A364097.P17124577254319616427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363925 (A016897 n - 1).toNat

end

end A364097.P17124577254319616427

namespace A364097

/-- `A363925(A016897(n)-1)` -/
def P17124577254319616427.Spec : Prop :=
  ∀ n, P17124577254319616427.a n = A364097 (n + 1)

theorem P17124577254319616427.correct : P17124577254319616427.Spec := by
  intro n
  simp only [A364097, Nat.add_sub_cancel, A364097.P17124577254319616427.a, A364097.P16769132018237927195.a, A016885, A016885.P12442016633976001399.a, A016897, A016897.P9287350145607759688.a, A363925, A363925.P14665766915685615402.a, A001876, A001876.P1528332183595955459.f1, A001876.P1528332183595955459.a, A284097, A284097.P4703554069463701905.f1, A284097.P4703554069463701905.a, A079998, A079998.P5984370107414098605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A364097

/-! ## A364097.P17211296620382688414

`A363925(A047204(2*n+1))`
-/

namespace A364097.P17211296620382688414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363925 (A047204 (2 * n + 1)).toNat

end

end A364097.P17211296620382688414

namespace A364097

/-- `A363925(A047204(2*n+1))` -/
def P17211296620382688414.Spec : Prop :=
  ∀ n, P17211296620382688414.a n = A364097 (n + 1)

end A364097

/-!
# A364098: Expansion of Sum_{k>0} k * x^(2*k-1) / (1 - x^(5*k-4)).

The programs for A364098, the canonical program `A364098.P15621258973593762124` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364098 has offset 1).

The definition of A364098 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364098.P15621258973593762124

`A363925(5*n+2)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A364098

/-- `A363925(5*n+2)` -/
def P15621258973593762124.Spec : Prop :=
  ∀ n, P15621258973593762124.a n = A364098 (n + 1)

theorem P15621258973593762124.correct : P15621258973593762124.Spec := by
  intro n
  simp only [A364098, Nat.add_sub_cancel]

end A364098

/-! ## A364098.P12215095358252000425

`gcd(A056594(3*floor(2^n/3)), A069734(n+1))`
-/

namespace A364098.P12215095358252000425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056594 (3 * ⌊(2 ^ n : ℚ) / 3⌋).toNat) (A069734 (n + 1))

end

end A364098.P12215095358252000425

namespace A364098

/-- `gcd(A056594(3*floor(2^n/3)), A069734(n+1))` -/
def P12215095358252000425.Spec : Prop :=
  ∀ n, (P12215095358252000425.a n : ℤ) = A364098 (n + 1)

end A364098

/-! ## A364098.P5363465650741454740

`A070939(A000005(n+1)^(∑[n+1]%(n+2)))`
-/

namespace A364098.P5363465650741454740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A000005 (n + 1) ^ ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 2))).toNat

end

end A364098.P5363465650741454740

namespace A364098

/-- `A070939(A000005(n+1)^(∑[n+1]%(n+2)))` -/
def P5363465650741454740.Spec : Prop :=
  ∀ n, P5363465650741454740.a n = A364098 (n + 1)

end A364098

/-! ## A364098.P3364565837212955057

`A070939(A001227(n+1)^((n+2)*(n+1)%2/2))`
-/

namespace A364098.P3364565837212955057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.roundAway ((A001227 (n + 1) : ℝ) ^ ((n + 2 : ℚ) * ((((n + 1) % 2 : ℕ) : ℚ) / 2) : ℝ))).toNat

end

end A364098.P3364565837212955057

namespace A364098

/-- `A070939(A001227(n+1)^((n+2)*(n+1)%2/2))` -/
def P3364565837212955057.Spec : Prop :=
  ∀ n, P3364565837212955057.a n = A364098 (n + 1)

end A364098

/-! ## A364098.P1460104043242527420

`A136480(A040001(n)^A113415(n+1))`
-/

namespace A364098.P1460104043242527420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (SequenceMachineLib.roundAway ((A040001 n : ℚ) ^ (A113415 (n + 1) : ℤ))).toNat

end

end A364098.P1460104043242527420

namespace A364098

/-- `A136480(A040001(n)^A113415(n+1))` -/
def P1460104043242527420.Spec : Prop :=
  ∀ n, P1460104043242527420.a n = A364098 (n + 1)

end A364098

/-!
# A364099: Expansion of Sum_{k>0} k * x^k / (1 - x^(5*k-4)).

The programs for A364099, the canonical program `A364099.P10050703620716174614` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364099 has offset 1).

The definition of A364099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364099.P10050703620716174614

`A363925(5*n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A364099

/-- `A363925(5*n+1)` -/
def P10050703620716174614.Spec : Prop :=
  ∀ n, P10050703620716174614.a n = A364099 (n + 1)

theorem P10050703620716174614.correct : P10050703620716174614.Spec := by
  intro n
  simp only [A364099, Nat.add_sub_cancel]

end A364099

