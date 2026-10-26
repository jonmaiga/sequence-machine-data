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
import Seq.B000.C009
import Seq.B000.C010
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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A283000: Expansion of chi(-x)^2 * chi(x^3)^2 * chi(-x^4) / chi(x^6) in powers of x where chi() is a Ramanujan theta function.

The programs for A283000, there is no canonical definition to state claims against.
-/

/-! ## A283000.P13022609485187479043

`A134178(2*n+1)`
-/

namespace A283000.P13022609485187479043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134178 (2 * n + 1)

end

end A283000.P13022609485187479043

/-! ## A283000.P16266724489534713897

`A093085(A026185(n))`
-/

namespace A283000.P16266724489534713897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093085 (A026185 n).toNat

end

end A283000.P16266724489534713897

/-! ## A283000.P13496145114550769477

`or(A000007(n), A134178(A005843(n)+1))`
-/

namespace A283000.P13496145114550769477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A134178 (A005843 n + 1).toNat)

end

end A283000.P13496145114550769477

/-! ## A283000.P2034378686235314006

`A134178(n+1+n)/A214579(A007918(n))`
-/

namespace A283000.P2034378686235314006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134178 (n + 1 + n) : ℚ) / (A214579 (A007918 n).toNat : ℚ)

end

end A283000.P2034378686235314006

/-! ## A283000.P17937257435127986595

`A134178(n+1+n)+A034541(A053735(n)+1)`
-/

namespace A283000.P17937257435127986595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134178 (n + 1 + n) + A034541 (A053735 n + 1).toNat

end

end A283000.P17937257435127986595

/-! ## A283000.P11929997624210820223

`A134178(n+1+n)+A067157(A214567(n+1))`
-/

namespace A283000.P11929997624210820223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134178 (n + 1 + n) + A067157 ((A214567 (n + 1)).toNat + 10)

end

end A283000.P11929997624210820223

/-!
# A283001: a(n) = (A004186(n) - n)/9.

The programs for A283001, there is no canonical definition to state claims against.
-/

/-! ## A283001.P12420209029954667433

`(A004186(n)-n)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A283001.P12420209029954667433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004186 n - (n : ℤ) : ℚ) / 9

end

end A283001.P12420209029954667433

/-! ## A283001.P10280815901800243328

`A108782(n)/9`
-/

namespace A283001.P10280815901800243328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108782 n : ℚ) / 9

end

end A283001.P10280815901800243328

/-! ## A283001.P1285642839752383489

`A106610(A004186(n)-n)`
-/

namespace A283001.P1285642839752383489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A004186 n - (n : ℤ)).toNat

end

end A283001.P1285642839752383489

/-! ## A283001.P14606295151123108912

`A008611(A008611(A004186(n)-n))`
-/

namespace A283001.P14606295151123108912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A008611 (A004186 n - (n : ℤ)).toNat).toNat

end

end A283001.P14606295151123108912

/-! ## A283001.P13461562947517474403

`A054899(A004186(n))-A054899(n)`
-/

namespace A283001.P13461562947517474403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A004186 n).toNat - A054899 n

end

end A283001.P13461562947517474403

/-! ## A283001.P6464170303032020157

`A271497(A271497(A004186(n)-n))`
-/

namespace A283001.P6464170303032020157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271497 (A271497 (A004186 n - (n : ℤ)).toNat).toNat

end

end A283001.P6464170303032020157

/-! ## A283001.P15217275411670047529

`A286326(16*A108782(n))`
-/

namespace A283001.P15217275411670047529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286326 (16 * A108782 n).toNat

end

end A283001.P15217275411670047529

/-! ## A283001.P12452883247311177514

`A010879(n-A010879(A244112(n)))`
-/

namespace A283001.P12452883247311177514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 ((n : ℤ) - A010879 (A244112 n).toNat).toNat

end

end A283001.P12452883247311177514

/-! ## A283001.P2657695421832282486

`A265525(n-A118759(A265525(n)))`
-/

namespace A283001.P2657695421832282486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 ((n : ℤ) - A118759 (A265525 n).toNat).toNat

end

end A283001.P2657695421832282486

/-! ## A283001.P9931983141715288124

`n-A009996(A357030(n))`
-/

namespace A283001.P9931983141715288124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A009996 (A357030 n).toNat

end

end A283001.P9931983141715288124

/-!
# A283002: Numbers that are not of the form m + (sum of base-100 digits of m).

The programs for A283002, there is no canonical definition to state claims against.
-/

/-! ## A283002.P1369107748079397236

`(2*n)^A102683(A306100(n))+2*n`
-/

namespace A283002.P1369107748079397236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) ^ (A102683 (A306100 n).toNat : ℤ) + (2 * n : ℚ)

end

end A283002.P1369107748079397236

/-! ## A283002.P17876444495744188522

`C(2*n, A185284(A006257(n)))+n+n`
-/

namespace A283002.P17876444495744188522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) (A185284 (A006257 n).toNat).toNat + n + n

end

end A283002.P17876444495744188522

/-! ## A283002.P8828610647640741885

`A125162(2*n+1)^val(A097619(2*(n+1))+1, 2)+2*n`
-/

namespace A283002.P8828610647640741885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125162 (2 * n + 1) ^ SequenceMachineLib.valuation (A097619 (2 * (n + 1)) + 1).toNat 2 + (2 * n : ℤ)

end

end A283002.P8828610647640741885

/-! ## A283002.P12531579634111250493

`A125162(2*n+1)^val(A179644(2*(n+2))+1, 2)+2*n`
-/

namespace A283002.P12531579634111250493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125162 (2 * n + 1) ^ SequenceMachineLib.valuation (A179644 (2 * (n + 2)) + 1).toNat 2 + (2 * n : ℤ)

end

end A283002.P12531579634111250493

/-! ## A283002.P12023675941143784442

`A022998(lt[A004442(n), A118759(n)])`
-/

namespace A283002.P12023675941143784442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A283002.P12023675941143784442

/-! ## A283002.P8521534097943964938

`A304042(A160109(n+2))+A118759(2*n)`
-/

namespace A283002.P8521534097943964938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 (A160109 (n + 2)).toNat + A118759 (2 * n)

end

end A283002.P8521534097943964938

/-! ## A283002.P2160126134772558961

`A118759(2*n)+A029134(A196222(2*n))`
-/

namespace A283002.P2160126134772558961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (2 * n) + A029134 (A196222 (2 * n)).toNat

end

end A283002.P2160126134772558961

/-! ## A283002.P13256571061066912568

`A005843(n)+(2*n)^A102683(A306100(n))`
-/

namespace A283002.P13256571061066912568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 n : ℚ) + (2 * n : ℚ) ^ (A102683 (A306100 n).toNat : ℤ)

end

end A283002.P13256571061066912568

/-!
# A283003: Intersection of A003052 and A283002.

The programs for A283003, there is no canonical definition to state claims against.
-/

/-! ## A283003.P15043290209529806684

`A061513(A043315(n+1))-1`
-/

namespace A283003.P15043290209529806684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061513 (A043315 (n + 1)).toNat - 1

end

end A283003.P15043290209529806684

/-! ## A283003.P1212713299579697825

`A061513(A085908(n+1))-1`
-/

namespace A283003.P1212713299579697825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061513 (A085908 (n + 1)).toNat - 1

end

end A283003.P1212713299579697825

/-! ## A283003.P10433512827346959324

`A061512(A061479(n)+1)-2`
-/

namespace A283003.P10433512827346959324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061512 (A061479 n + 1).toNat - 2

end

end A283003.P10433512827346959324

/-! ## A283003.P7911576482315104323

`A061513(A271569(n+1)+1)-1`
-/

namespace A283003.P7911576482315104323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061513 (A271569 (n + 1) + 1).toNat - 1

end

end A283003.P7911576482315104323

/-! ## A283003.P15195712623698827991

`A061513(A278944(n+1)+1)-1`
-/

namespace A283003.P15195712623698827991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061513 (A278944 (n + 1) + 1).toNat - 1

end

end A283003.P15195712623698827991

/-!
# A283005: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 542", based on the 5-celled von Neumann neighborhood.

The programs for A283005, there is no canonical definition to state claims against.
-/

/-! ## A283005.P16041383259778580291

`A007088(A283007(n))`
-/

namespace A283005.P16041383259778580291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283007 n).toNat

end

end A283005.P16041383259778580291

/-! ## A283005.P1818155048595680242

`A305989(A283008(n))`
-/

namespace A283005.P1818155048595680242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283008 n).toNat

end

end A283005.P1818155048595680242

/-! ## A283005.P7306218233300200114

`A169966(A283007(n)+1)/3`
-/

namespace A283005.P7306218233300200114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169966 (A283007 n + 1).toNat : ℚ) / 3

end

end A283005.P7306218233300200114

/-! ## A283005.P14160553468887429543

`A185544(2*A283007(n))`
-/

namespace A283005.P14160553468887429543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283007 n).toNat

end

end A283005.P14160553468887429543

/-! ## A283005.P10023655659385655198

`A185544(lcm(2, A283007(n)))`
-/

namespace A283005.P10023655659385655198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283007 n))

end

end A283005.P10023655659385655198

/-!
# A283006: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 542", based on the 5-celled von Neumann neighborhood.

The programs for A283006, there is no canonical definition to state claims against.
-/

/-! ## A283006.P3504049270074136996

`A007088(A283008(n))`
-/

namespace A283006.P3504049270074136996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283008 n).toNat

end

end A283006.P3504049270074136996

/-! ## A283006.P8241498390856911746

`A305989(A283007(n))`
-/

namespace A283006.P8241498390856911746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283007 n).toNat

end

end A283006.P8241498390856911746

/-! ## A283006.P13592699535961082803

`A169966(A283008(n)+1)/3`
-/

namespace A283006.P13592699535961082803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169966 (A283008 n + 1).toNat : ℚ) / 3

end

end A283006.P13592699535961082803

/-! ## A283006.P4521941165669175209

`A185544(2*A283008(n))`
-/

namespace A283006.P4521941165669175209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283008 n).toNat

end

end A283006.P4521941165669175209

/-! ## A283006.P17887991102156458130

`A185544(lcm(2, A283008(n)))`
-/

namespace A283006.P17887991102156458130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283008 n))

end

end A283006.P17887991102156458130

/-!
# A283007: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 542", based on the 5-celled von Neumann neighborhood.

The programs for A283007, there is no canonical definition to state claims against.
-/

/-! ## A283007.P9544308349403789305

`A057889(A283008(n))`
-/

namespace A283007.P9544308349403789305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A283008 n).toNat

end

end A283007.P9544308349403789305

/-! ## A283007.P15999414550669217717

`A325402(or(1, A283008(n)))`
-/

namespace A283007.P15999414550669217717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325402 (Int.lor 1 (A283008 n)).toNat

end

end A283007.P15999414550669217717

/-! ## A283007.P17580217282657186464

`A325402(A283008(n)^(n-abs(1-n)))`
-/

namespace A283007.P17580217282657186464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325402 (SequenceMachineLib.roundAway ((A283008 n : ℚ) ^ ((n : ℤ) - |1 - (n : ℤ)| : ℤ))).toNat

end

end A283007.P17580217282657186464

/-! ## A283007.P15496470232644281511

`A325402(A283008(n)%(30*2^n+1))`
-/

namespace A283007.P15496470232644281511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325402 (Int.tmod (A283008 n) (30 * 2 ^ n + 1 : ℤ)).toNat

end

end A283007.P15496470232644281511

/-! ## A283007.P11085798226963959501

`A325402(A271839(n)*A283008(n))`
-/

namespace A283007.P11085798226963959501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325402 (A271839 n * A283008 n).toNat

end

end A283007.P11085798226963959501

/-!
# A283008: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 542", based on the 5-celled von Neumann neighborhood.

The programs for A283008, there is no canonical definition to state claims against.
-/

/-! ## A283008.P13403408673953304547

`A057889(A283007(n))`
-/

namespace A283008.P13403408673953304547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A283007 n).toNat

end

end A283008.P13403408673953304547

/-! ## A283008.P1286996212752627389

`A030101(or(1, A283007(n)))`
-/

namespace A283008.P1286996212752627389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.lor 1 (A283007 n)).toNat

end

end A283008.P1286996212752627389

/-! ## A283008.P9872131032858660005

`A030101(A283007(n)+char[30])`
-/

namespace A283008.P9872131032858660005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A283007 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A283008.P9872131032858660005

/-! ## A283008.P5378758917188527397

`A030101(abs(A283007(n)-n)+n)`
-/

namespace A283008.P5378758917188527397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (|A283007 n - (n : ℤ)| + (n : ℤ)).toNat

end

end A283008.P5378758917188527397

/-! ## A283008.P2844058518546076803

`A030101(lcm((n+1)/∏{p}[n+1, #], A283007(n)))`
-/

namespace A283008.P2844058518546076803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A283007 n))

end

end A283008.P2844058518546076803

/-!
# A283009: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 545", based on the 5-celled von Neumann neighborhood.

The programs for A283009, there is no canonical definition to state claims against.
-/

/-! ## A283009.P5510544985169849298

`A000042(n+1)%or(2, A282660(n))`
-/

namespace A283009.P5510544985169849298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000042 (n + 1)) (Int.lor 2 (A282660 n))

end

end A283009.P5510544985169849298

/-! ## A283009.P7724488120785044270

`A000042(n+1)%A282660(A028310(n))`
-/

namespace A283009.P7724488120785044270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000042 (n + 1)) (A282660 (A028310 n).toNat)

end

end A283009.P7724488120785044270

/-! ## A283009.P593266949339684855

`A002275(n+1)%A282660(A028310(n))`
-/

namespace A283009.P593266949339684855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002275 (n + 1)) (A282660 (A028310 n).toNat)

end

end A283009.P593266949339684855

/-! ## A283009.P12167048016303709

`A282661(n)+A283010(n)-A282660(n)`
-/

namespace A283009.P12167048016303709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282661 n + (A283010 n - A282660 n)

end

end A283009.P12167048016303709

/-! ## A283009.P5589097045214113429

`A000042(n+1)+A000007(n)-A282660(n)`
-/

namespace A283009.P5589097045214113429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + (A000007 n - A282660 n)

end

end A283009.P5589097045214113429

/-!
# A283010: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 545", based on the 5-celled von Neumann neighborhood.

The programs for A283010, there is no canonical definition to state claims against.
-/

/-! ## A283010.P9973522109309594398

`A282660(n)+A283009(n)-A282661(n)`
-/

namespace A283010.P9973522109309594398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282660 n + (A283009 n - A282661 n)

end

end A283010.P9973522109309594398

/-! ## A283010.P6026678587319223922

`A000007(n)+∑[A011557(n)]-A282661(n)`
-/

namespace A283010.P6026678587319223922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (∑ j ∈ Finset.range (n + 1), f1 j - A282661 n)

end

end A283010.P6026678587319223922

/-! ## A283010.P10888608267682033163

`A000042(n+1)+A000007(n)-A282661(n)`
-/

namespace A283010.P10888608267682033163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + (A000007 n - A282661 n)

end

end A283010.P10888608267682033163

/-! ## A283010.P3053545070810570311

`A000042(n+1)+A057428(n)*A282661(n)`
-/

namespace A283010.P3053545070810570311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + A057428 n * A282661 n

end

end A283010.P3053545070810570311

/-! ## A283010.P558604692315308396

`A000042(n+1)-A057427(n)*A282661(n)`
-/

namespace A283010.P558604692315308396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A057427 n * A282661 n

end

end A283010.P558604692315308396

/-!
# A283011: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 545", based on the 5-celled von Neumann neighborhood.

The programs for A283011, there is no canonical definition to state claims against.
-/

/-! ## A283011.P8139079801380066061

`A095121(n)+1-A282662(n)`
-/

namespace A283011.P8139079801380066061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A282662 n)

end

end A283011.P8139079801380066061

/-! ## A283011.P15454644067195571022

`A126646(n)%A282662(A028310(n))`
-/

namespace A283011.P15454644067195571022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126646 n) (A282662 (A028310 n).toNat)

end

end A283011.P15454644067195571022

/-! ## A283011.P15607358600153170420

`A282663(n)+A283012(n)-A282662(n)`
-/

namespace A283011.P15607358600153170420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282663 n + (A283012 n - A282662 n)

end

end A283011.P15607358600153170420

/-! ## A283011.P4656307650954640472

`A126646(n)+A057428(n)*A282662(n)`
-/

namespace A283011.P4656307650954640472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + A057428 n * A282662 n

end

end A283011.P4656307650954640472

/-! ## A283011.P15701955864575173993

`A126646(n)-A057427(n)*A282662(n)`
-/

namespace A283011.P15701955864575173993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A057427 n * A282662 n

end

end A283011.P15701955864575173993

/-! ## A283011.P13290932995066720622

`∑[A000079(n)]-A057427(n)*A282662(n)`
-/

namespace A283011.P13290932995066720622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057427 n * A282662 n

end

end A283011.P13290932995066720622

/-!
# A283012: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 545", based on the 5-celled von Neumann neighborhood.

The programs for A283012, there is no canonical definition to state claims against.
-/

/-! ## A283012.P6097730366450187076

`A282662(n)+A283011(n)-A282663(n)`
-/

namespace A283012.P6097730366450187076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282662 n + (A283011 n - A282663 n)

end

end A283012.P6097730366450187076

/-! ## A283012.P2032201831426696262

`A126646(n)+A057428(n)*A282663(n)`
-/

namespace A283012.P2032201831426696262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + A057428 n * A282663 n

end

end A283012.P2032201831426696262

/-! ## A283012.P15336676856776104899

`A126646(n)-A057427(n)*A282663(n)`
-/

namespace A283012.P15336676856776104899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A057427 n * A282663 n

end

end A283012.P15336676856776104899

/-! ## A283012.P58743710358190848

`∑[A000079(n)]+A057428(n)*A282663(n)`
-/

namespace A283012.P58743710358190848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A057428 n * A282663 n

end

end A283012.P58743710358190848

/-! ## A283012.P17905577257748463132

`∑[A000079(n)]-A057427(n)*A282663(n)`
-/

namespace A283012.P17905577257748463132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057427 n * A282663 n

end

end A283012.P17905577257748463132

/-! ## A283012.P3758627435679683644

`∑[∑[A011782(n)]]+A057428(n)*A282663(n)`
-/

namespace A283012.P3758627435679683644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A057428 n * A282663 n

end

end A283012.P3758627435679683644

/-!
# A283013: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 549", based on the 5-celled von Neumann neighborhood.

The programs for A283013, there is no canonical definition to state claims against.
-/

/-! ## A283013.P11204324539672436264

`A007088(A283015(n))`
-/

namespace A283013.P11204324539672436264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283015 n).toNat

end

end A283013.P11204324539672436264

/-! ## A283013.P17405971357714437785

`A007088(A184616(round(2^n/3))+2^n)`
-/

namespace A283013.P17405971357714437785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A184616 (SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3)).toNat + (2 ^ n : ℤ)).toNat

end

end A283013.P17405971357714437785

/-! ## A283013.P11257447256188572764

`A007088(A097992((n%2+1)^n)+2^n-1)`
-/

namespace A283013.P11257447256188572764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A097992 ((n % 2 + 1) ^ n) + ((2 ^ n : ℤ) - 1)).toNat

end

end A283013.P11257447256188572764

/-! ## A283013.P12467928472272126321

`A007088(A277954(n)-A000975(n))`
-/

namespace A283013.P12467928472272126321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A277954 n - A000975 n).toNat

end

end A283013.P12467928472272126321

/-! ## A283013.P6952218705805296190

`A007088(A266873(n)%A020737(n))`
-/

namespace A283013.P6952218705805296190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A266873 n) (A020737 n)).toNat

end

end A283013.P6952218705805296190

/-!
# A283014: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 549", based on the 5-celled von Neumann neighborhood.

The programs for A283014, there is no canonical definition to state claims against.
-/

/-! ## A283014.P7082947521732209323

`A007088(A283016(n))`
-/

namespace A283014.P7082947521732209323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283016 n).toNat

end

end A283014.P7082947521732209323

/-! ## A283014.P5923966710803114529

`A007088(A058281(2^n-1))`
-/

namespace A283014.P5923966710803114529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A058281 (2 ^ n - 1)).toNat

end

end A283014.P5923966710803114529

/-! ## A283014.P4965590393471617718

`A007088(A084639(n^(n%2)))`
-/

namespace A283014.P4965590393471617718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A084639 (n ^ (n % 2))).toNat

end

end A283014.P4965590393471617718

/-! ## A283014.P7627358380268741760

`A007088(A084639(n))^and(1, n)`
-/

namespace A283014.P7627358380268741760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A084639 n).toNat ^ Nat.land 1 n

end

end A283014.P7627358380268741760

/-! ## A283014.P9656422024218802951

`A267599(∑[n]%A044917(n+1))`
-/

namespace A283014.P9656422024218802951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267599 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A044917 (n + 1))).toNat

end

end A283014.P9656422024218802951

/-!
# A283015: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 549", based on the 5-celled von Neumann neighborhood.

The programs for A283015, there is no canonical definition to state claims against.
-/

/-! ## A283015.P6990811213307094893

`A284120(2*a(n-1))` with `a(0)=1`
-/

namespace A283015.P6990811213307094893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A284120 (2 * a (n - 1)).toNat

end

end A283015.P6990811213307094893

/-! ## A283015.P11144479101220059382

`A184616(round(2^n/3))+2^n`
-/

namespace A283015.P11144479101220059382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184616 (SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3)).toNat + (2 ^ n : ℤ)

end

end A283015.P11144479101220059382

/-! ## A283015.P10447284611899323652

`A097992((n%2+1)^n)+2^n-1`
-/

namespace A283015.P10447284611899323652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 ((n % 2 + 1) ^ n) + ((2 ^ n : ℤ) - 1)

end

end A283015.P10447284611899323652

/-! ## A283015.P16274268140929501188

`A338252(floor(∑[2^n/3]))+ceil(2^(n-1))`
-/

namespace A283015.P16274268140929501188
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338252 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A283015.P16274268140929501188

/-! ## A283015.P14142092713457976342

`∑[A005408(a(n-2)+a(n-2)+(1-n)%2)]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A283015.P14142092713457976342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  A005408 (f1 (n - 2) + (f1 (n - 2) + Int.tmod (1 - (n : ℤ)) 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283015.P14142092713457976342

/-!
# A283016: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 549", based on the 5-celled von Neumann neighborhood.

The programs for A283016, there is no canonical definition to state claims against.
-/

/-! ## A283016.P9123094399026667729

`A058281(2^n-1)`
-/

namespace A283016.P9123094399026667729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 (2 ^ n - 1)

end

end A283016.P9123094399026667729

/-! ## A283016.P3577390485767231490

`A042965(2^n^(n%2))`
-/

namespace A283016.P3577390485767231490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (2 ^ n ^ (n % 2))

end

end A283016.P3577390485767231490

/-! ## A283016.P6705655419017298087

`A047396(gcd(2, n+1)^(n-1))`
-/

namespace A283016.P6705655419017298087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047396 (SequenceMachineLib.roundAway ((Nat.gcd 2 (n + 1) : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A283016.P6705655419017298087

/-! ## A283016.P818224148956116495

`A047465((and(1, n)+1)^(n-1))`
-/

namespace A283016.P818224148956116495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047465 (SequenceMachineLib.roundAway ((Nat.land 1 n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A283016.P818224148956116495

/-! ## A283016.P14631113449320051290

`or(1, A058281(abs(xor(1, (-2)^n))))`
-/

namespace A283016.P14631113449320051290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A058281 |Int.xor 1 ((-2) ^ n)|.toNat)

end

end A283016.P14631113449320051290

/-!
# A283017: Primes which are the sum of three nonzero 6th powers.

The programs for A283017, there is no canonical definition to state claims against.
-/

/-! ## A283017.P17851869854053066687

`p?[A003359(n+1)]`
-/

namespace A283017.P17851869854053066687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A283017.P17851869854053066687

/-! ## A283017.P10375463138944731727

`p?[A004854(n+4)]`
-/

namespace A283017.P10375463138944731727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004854 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A283017.P10375463138944731727

/-! ## A283017.P3991282978731255158

`p?[record[A003359(A052938(n))]]`
-/

namespace A283017.P3991282978731255158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003359 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A283017.P3991282978731255158

/-! ## A283017.P16339405894009575355

`p?[record[A003359(A106466(n))]]`
-/

namespace A283017.P16339405894009575355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003359 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A283017.P16339405894009575355

/-! ## A283017.P12509002994905563268

`p?[record[A003359(A126759(n))]]`
-/

namespace A283017.P12509002994905563268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003359 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A283017.P12509002994905563268

/-!
# A283019: Primes which are the sum of three nonzero 8th powers.

The programs for A283019, there is no canonical definition to state claims against.
-/

/-! ## A283019.P9044228225769814201

`∩[A004877(n+1), A085318(n+1)]`
-/

namespace A283019.P9044228225769814201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283019.P9044228225769814201

/-!
# A283020: For p = prime(n), number of iterations of the function f(x) = 2*x^3-1 that leave p prime.

The programs for A283020, there is no canonical definition to state claims against.
-/

/-! ## A283020.P15302485900456408345

`A224609(n+1)^-A209209(n+1)`
-/

namespace A283020.P15302485900456408345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224609 (n + 1) : ℚ) ^ (-A209209 (n + 1) : ℤ)

end

end A283020.P15302485900456408345

/-! ## A283020.P5509184491152445670

`A063524(A224609(n+1)%A209209(n+1))`
-/

namespace A283020.P5509184491152445670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (Int.tmod (A224609 (n + 1)) (A209209 (n + 1))).toNat

end

end A283020.P5509184491152445670

/-! ## A283020.P804061351983319331

`C(A040001(A008288(2*n)), A224609(n+1))`
-/

namespace A283020.P804061351983319331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A040001 (A008288 (2 * n)).toNat).toNat (A224609 (n + 1)).toNat

end

end A283020.P804061351983319331

/-! ## A283020.P15788220723952139273

`and(A005179(A224609(n+1)), A390030(2*(n+1)))`
-/

namespace A283020.P15788220723952139273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005179 (A224609 (n + 1)).toNat) (A390030 (2 * (n + 1)))

end

end A283020.P15788220723952139273

/-! ## A283020.P1975750709848689090

`A284757(A224609(n+1))`
-/

namespace A283020.P1975750709848689090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284757 (A224609 (n + 1)).toNat

end

end A283020.P1975750709848689090

/-!
# A283022: Numbers k such that the number of primes of the form k - x is not equal to the number of primes of the form k + y where x, y are divisors of k.

The programs for A283022, there is no canonical definition to state claims against.
-/

/-! ## A283022.P15103403670879551426

`lt[A000070(A000120(n)), A086639(3*(n+1))]`
-/

namespace A283022.P15103403670879551426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (A000120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086639 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A283022.P15103403670879551426

/-! ## A283022.P11716059786007051994

`eq[A135895(A318361(2*n+3)), A329313(n)]`
-/

namespace A283022.P11716059786007051994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135895 (A318361 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283022.P11716059786007051994

/-!
# A283023: Expansion of f(-x, -x^5)^2 / (f(x^2, x^10) * f(x^6, x^18)) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A283023, there is no canonical definition to state claims against.
-/

/-! ## A283023.P7034468729554090693

`A134178(2*n)`
-/

namespace A283023.P7034468729554090693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134178 (2 * n)

end

end A283023.P7034468729554090693

/-! ## A283023.P5439689754640395743

`-(A134178(A005843(n))/(1-4/2))`
-/

namespace A283023.P5439689754640395743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A134178 (A005843 n).toNat : ℚ) / (1 - (4 : ℚ) / 2))

end

end A283023.P5439689754640395743

/-! ## A283023.P5483279522971499434

`or(A000007(n), A134178(A004277(n)))`
-/

namespace A283023.P5483279522971499434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A134178 (A004277 n).toNat)

end

end A283023.P5483279522971499434

/-! ## A283023.P15897009352260885222

`or(A000007(n), A134178(A005843(n)))`
-/

namespace A283023.P15897009352260885222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A134178 (A005843 n).toNat)

end

end A283023.P15897009352260885222

/-! ## A283023.P2915176118428504016

`A134178(A005843(n))+A000007(n+1)`
-/

namespace A283023.P2915176118428504016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134178 (A005843 n).toNat + A000007 (n + 1)

end

end A283023.P2915176118428504016

/-! ## A283023.P3804691920527854157

`A134178(A005843(n))%A029842(n+1)`
-/

namespace A283023.P3804691920527854157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134178 (A005843 n).toNat) (A029842 (n + 1))

end

end A283023.P3804691920527854157

/-! ## A283023.P10434527837854070699

`and(A057428(n+1), A134178(A005843(n)))`
-/

namespace A283023.P10434527837854070699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 (n + 1)) (A134178 (A005843 n).toNat)

end

end A283023.P10434527837854070699

/-! ## A283023.P7077921625937629906

`A134178(A005843(n))/A001511(Δ[n²])`
-/

namespace A283023.P7077921625937629906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134178 (A005843 n).toNat : ℚ) / (A001511 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A283023.P7077921625937629906

/-! ## A283023.P11928561203129092141

`A134178(A005843(n))/A019426(lcm(2, n+1))`
-/

namespace A283023.P11928561203129092141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134178 (A005843 n).toNat : ℚ) / (A019426 (Nat.lcm 2 (n + 1)) : ℚ)

end

end A283023.P11928561203129092141

/-! ## A283023.P12481286680518103814

`A134178(n+n)+A034541(A053735(n)+1)`
-/

namespace A283023.P12481286680518103814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134178 (n + n) + A034541 (A053735 n + 1).toNat

end

end A283023.P12481286680518103814

/-! ## A283023.P16383111530263433402

`A134178(n+n)/A003557(A000040(n+1))`
-/

namespace A283023.P16383111530263433402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134178 (n + n) : ℚ) / (A003557 (A000040 (n + 1)).toNat : ℚ)

end

end A283023.P16383111530263433402

/-! ## A283023.P5977749996933731424

`A134178(A004277(n))%A238674(n+1)`
-/

namespace A283023.P5977749996933731424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134178 (A004277 n).toNat) (A238674 (n + 1))

end

end A283023.P5977749996933731424

/-!
# A283025: Remainder when sum of first n terms of A005185 is divided by n.

The programs for A283025, the canonical program `A283025.P6503046752952569404` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283025 has offset 1).

The definition of A283025 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076268, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A283025.P6503046752952569404

`A076268(n+1)%(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A283025

/-- `A076268(n+1)%(n+1)` -/
def P6503046752952569404.Spec : Prop :=
  ∀ n, P6503046752952569404.a n = A283025 (n + 1)

theorem P6503046752952569404.correct : P6503046752952569404.Spec := by
  intro n
  simp only [A283025, Nat.add_sub_cancel]

end A283025

/-! ## A283025.P4629600584022881221

`A283509(n+1)%(n+1)`
-/

namespace A283025.P4629600584022881221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283509 (n + 1)) (n + 1 : ℤ)

end

end A283025.P4629600584022881221

namespace A283025

/-- `A283509(n+1)%(n+1)` -/
def P4629600584022881221.Spec : Prop :=
  ∀ n, P4629600584022881221.a n = A283025 (n + 1)

end A283025

/-! ## A283025.P9906981844124624161

`∑[A005185(n+1)]%(n+1)`
-/

namespace A283025.P9906981844124624161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A283025.P9906981844124624161

namespace A283025

/-- `∑[A005185(n+1)]%(n+1)` -/
def P9906981844124624161.Spec : Prop :=
  ∀ n, P9906981844124624161.a n = A283025 (n + 1)

theorem P9906981844124624161.correct : P9906981844124624161.Spec := by
  intro n
  simp only [A283025, Nat.add_sub_cancel, A283025.P9906981844124624161.f1, A283025.P9906981844124624161.a, A283025.P6503046752952569404.a, A005185, A005185.P15523785795587217945.a, A076268, A076268.P1633902473855064170.f1, A076268.P1633902473855064170.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A283025

/-! ## A283025.P9025597217817384659

`∑[n-A239913(n+1)]%(n+1)`
-/

namespace A283025.P9025597217817384659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A239913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A283025.P9025597217817384659

namespace A283025

/-- `∑[n-A239913(n+1)]%(n+1)` -/
def P9025597217817384659.Spec : Prop :=
  ∀ n, P9025597217817384659.a n = A283025 (n + 1)

end A283025

/-! ## A283025.P17017514446777613243

`∑[A004001(n+1)-A284019(n+1)]%(n+1)`
-/

namespace A283025.P17017514446777613243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1) - A284019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A283025.P17017514446777613243

namespace A283025

/-- `∑[A004001(n+1)-A284019(n+1)]%(n+1)` -/
def P17017514446777613243.Spec : Prop :=
  ∀ n, P17017514446777613243.a n = A283025 (n + 1)

theorem P17017514446777613243.correct : P17017514446777613243.Spec := by
  intro n
  simp only [A283025, Nat.add_sub_cancel, A283025.P17017514446777613243.f1, A283025.P17017514446777613243.a, A283025.P6503046752952569404.a, A004001, A004001.P15027099775036681873.a, A076268, A076268.P1633902473855064170.f1, A076268.P1633902473855064170.a, A284019, A284019.P8425388726725023330.a, A005185, A005185.P15523785795587217945.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A283025

/-! ## A283025.P3743431872373308219

`∑[∑[A081827(A065033(2*n))]]%(n+1)`
-/

namespace A283025.P3743431872373308219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081827 (A065033 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A283025.P3743431872373308219

namespace A283025

/-- `∑[∑[A081827(A065033(2*n))]]%(n+1)` -/
def P3743431872373308219.Spec : Prop :=
  ∀ n, P3743431872373308219.a n = A283025 (n + 1)

end A283025

/-! ## A283025.P14479688313134956235

`∑[∑[A081827(A123108(2*n))]]%(n+1)`
-/

namespace A283025.P14479688313134956235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081827 (A123108 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A283025.P14479688313134956235

namespace A283025

/-- `∑[∑[A081827(A123108(2*n))]]%(n+1)` -/
def P14479688313134956235.Spec : Prop :=
  ∀ n, P14479688313134956235.a n = A283025 (n + 1)

end A283025

/-! ## A283025.P16079900915769642391

`A002262(A283509(n+1)+∑[n])`
-/

namespace A283025.P16079900915769642391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A283509 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A283025.P16079900915769642391

namespace A283025

/-- `A002262(A283509(n+1)+∑[n])` -/
def P16079900915769642391.Spec : Prop :=
  ∀ n, P16079900915769642391.a n = A283025 (n + 1)

end A283025

/-!
# A283026: Number of inequivalent 4 X 4 matrices with entries in {1,2,3,..,n} up to row permutations.

The programs for A283026, the canonical program `A283026.P7287364182722236223` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283026 has offset 0).

The definition of A283026 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283026.P7287364182722236223

`n^4*(n^4+1)*(n^4+2)*(n^4+3)/24`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283026

/-- `n^4*(n^4+1)*(n^4+2)*(n^4+3)/24` -/
def P7287364182722236223.Spec : Prop :=
  ∀ n, P7287364182722236223.a n = (A283026 n : ℚ)

end A283026

/-! ## A283026.P7627462007280792103

`C(n^4+3, 4)`
-/

namespace A283026.P7627462007280792103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 4 + 3) 4

end

end A283026.P7627462007280792103

namespace A283026

/-- `C(n^4+3, 4)` -/
def P7627462007280792103.Spec : Prop :=
  ∀ n, (P7627462007280792103.a n : ℤ) = A283026 n

end A283026

/-! ## A283026.P10836381359774476939

`∑{d}[n^4, A117109(#)]`
-/

namespace A283026.P10836381359774476939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117109 d

end

end A283026.P10836381359774476939

namespace A283026

/-- `∑{d}[n^4, A117109(#)]` -/
def P10836381359774476939.Spec : Prop :=
  ∀ n, P10836381359774476939.a n = A283026 n

end A283026

/-! ## A283026.P5258429080789977976

`A145126(n²²)-1`
-/

namespace A283026.P5258429080789977976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145126 ((n ^ 2) ^ 2) - 1

end

end A283026.P5258429080789977976

namespace A283026

/-- `A145126(n²²)-1` -/
def P5258429080789977976.Spec : Prop :=
  ∀ n, P5258429080789977976.a n = A283026 n

end A283026

/-! ## A283026.P16464301775472591528

`A000332(n²²+3)`
-/

namespace A283026.P16464301775472591528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 ((n ^ 2) ^ 2 + 3)

end

end A283026.P16464301775472591528

namespace A283026

/-- `A000332(n²²+3)` -/
def P16464301775472591528.Spec : Prop :=
  ∀ n, P16464301775472591528.a n = A283026 n

end A283026

/-!
# A283027: Number of inequivalent 4 X 4 matrices with entries in {1,2,3,...,n} up to rotations.

The programs for A283027, the canonical program `A283027.P9274503695005756074` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283027 has offset 0).

The definition of A283027 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283027.P9274503695005756074

`n^4*(n^12+n^4+2)/4`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283027

/-- `n^4*(n^12+n^4+2)/4` -/
def P9274503695005756074.Spec : Prop :=
  ∀ n, P9274503695005756074.a n = (A283027 n : ℚ)

end A283027

/-! ## A283027.P569104539454478695

`A343095(A056000(n)+14)`
-/

namespace A283027.P569104539454478695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343095 (A056000 n + 14).toNat

end

end A283027.P569104539454478695

namespace A283027

/-- `A343095(A056000(n)+14)` -/
def P569104539454478695.Spec : Prop :=
  ∀ n, P569104539454478695.a n = A283027 n

end A283027

/-! ## A283027.P17721467638964316175

`A343095(eq[4, A002262(n)])`
-/

namespace A283027.P17721467638964316175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283027.P17721467638964316175

namespace A283027

/-- `A343095(eq[4, A002262(n)])` -/
def P17721467638964316175.Spec : Prop :=
  ∀ n, P17721467638964316175.a n = A283027 n

end A283027

/-! ## A283027.P15144555981908174686

`A343095(eq[4, A144328(n+1)])`
-/

namespace A283027.P15144555981908174686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283027.P15144555981908174686

namespace A283027

/-- `A343095(eq[4, A144328(n+1)])` -/
def P15144555981908174686.Spec : Prop :=
  ∀ n, P15144555981908174686.a n = A283027 n

end A283027

/-! ## A283027.P9746022899922353715

`A006528(n^4)`
-/

namespace A283027.P9746022899922353715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006528 (n ^ 4)

end

end A283027.P9746022899922353715

namespace A283027

/-- `A006528(n^4)` -/
def P9746022899922353715.Spec : Prop :=
  ∀ n, P9746022899922353715.a n = A283027 n

end A283027

/-!
# A283028: Number of inequivalent 4 X 4 matrices with entries in {1,2,3,...,n} up to vertical and horizontal reflections.

The programs for A283028, the canonical program `A283028.P1006658599174693810` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283028 has offset 0).

The definition of A283028 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283028.P1006658599174693810

`n^8*(n^8+3)/4`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283028

/-- `n^8*(n^8+3)/4` -/
def P1006658599174693810.Spec : Prop :=
  ∀ n, P1006658599174693810.a n = (A283028 n : ℚ)

end A283028

/-! ## A283028.P10082617062179445545

`A170776(n)+C(n^4, 2)²`
-/

namespace A283028.P10082617062179445545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170776 n + (Nat.choose (n ^ 4) 2 ^ 2 : ℤ)

end

end A283028.P10082617062179445545

namespace A283028

/-- `A170776(n)+C(n^4, 2)²` -/
def P10082617062179445545.Spec : Prop :=
  ∀ n, P10082617062179445545.a n = A283028 n

end A283028

/-! ## A283028.P3926212973709309197

`A006011(n^4)+n^8`
-/

namespace A283028.P3926212973709309197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006011 (n ^ 4) + (n ^ 8 : ℤ)

end

end A283028.P3926212973709309197

namespace A283028

/-- `A006011(n^4)+n^8` -/
def P3926212973709309197.Spec : Prop :=
  ∀ n, P3926212973709309197.a n = A283028 n

end A283028

/-!
# A283029: Number of inequivalent 5 X 5 matrices with entries in {1,2,3,..,n} when a matrix and its transpose are considered equivalent.

The programs for A283029, the canonical program `A283029.P11719763272757902097` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283029 has offset 0).

The definition of A283029 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283029.P11719763272757902097

`n^15*(n²+1)*(n^8-n^6+n^4-n²+1)/2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283029

/-- `n^15*(n²+1)*(n^8-n^6+n^4-n²+1)/2` -/
def P11719763272757902097.Spec : Prop :=
  ∀ n, P11719763272757902097.a n = (A283029 n : ℚ)

end A283029

/-! ## A283029.P10257728932474541272

`n*A168662(n²)`
-/

namespace A283029.P10257728932474541272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168662 (n ^ 2)

end

end A283029.P10257728932474541272

namespace A283029

/-- `n*A168662(n²)` -/
def P10257728932474541272.Spec : Prop :=
  ∀ n, P10257728932474541272.a n = A283029 n

end A283029

/-! ## A283029.P16721689176221285227

`A168178(n^5)`
-/

namespace A283029.P16721689176221285227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168178 (n ^ 5)

end

end A283029.P16721689176221285227

namespace A283029

/-- `A168178(n^5)` -/
def P16721689176221285227.Spec : Prop :=
  ∀ n, P16721689176221285227.a n = A283029 n

end A283029

/-!
# A283030: Number of inequivalent 5 X 5 matrices with entries in {1,2,3,...,n} up to row permutations.

The programs for A283030, the canonical program `A283030.P7252568780871920582` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283030 has offset 0).

The definition of A283030 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283030.P7252568780871920582

`n^5*(n^20+10*n^15+35*n^10+50*n^5+24)/120`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283030

/-- `n^5*(n^20+10*n^15+35*n^10+50*n^5+24)/120` -/
def P7252568780871920582.Spec : Prop :=
  ∀ n, P7252568780871920582.a n = (A283030 n : ℚ)

end A283030

/-! ## A283030.P13710412526622933473

`C(n^5+4, 5)`
-/

namespace A283030.P13710412526622933473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 5 + 4) 5

end

end A283030.P13710412526622933473

namespace A283030

/-- `C(n^5+4, 5)` -/
def P13710412526622933473.Spec : Prop :=
  ∀ n, (P13710412526622933473.a n : ℤ) = A283030 n

end A283030

/-!
# A283031: Number of inequivalent 5 X 5 matrices with entries in {1,2,3,...,n} up to rotations.

The programs for A283031, the canonical program `A283031.P15233143420614235109` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283031 has offset 0).

The definition of A283031 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283031.P15233143420614235109

`n^7*(n^18+n^6+2)/4`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283031

/-- `n^7*(n^18+n^6+2)/4` -/
def P15233143420614235109.Spec : Prop :=
  ∀ n, P15233143420614235109.a n = (A283031 n : ℚ)

end A283031

/-!
# A283032: Number of inequivalent 5 X 5 matrices with entries in {1,2,3,...,n} up to vertical and horizontal reflections.

The programs for A283032, the canonical program `A283032.P1190141095015820089` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283032 has offset 0).

The definition of A283032 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283032.P1190141095015820089

`n^13*(n²+1)*(n^10-n^8+n^6-n^4+n²+1)/4`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283032

/-- `n^13*(n²+1)*(n^10-n^8+n^6-n^4+n²+1)/4` -/
def P1190141095015820089.Spec : Prop :=
  ∀ n, P1190141095015820089.a n = (A283032 n : ℚ)

end A283032

/-!
# A283033: Number of inequivalent 5 X 5 matrices with entries in {1,2,3,...,n} up to rotations and reflections.

The programs for A283033, the canonical program `A283033.P12933590102882558737` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283033 has offset 0).

The definition of A283033 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283033.P12933590102882558737

`n^7*(n^18+4*n^8+n^6+2)/8`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283033

/-- `n^7*(n^18+4*n^8+n^6+2)/8` -/
def P12933590102882558737.Spec : Prop :=
  ∀ n, P12933590102882558737.a n = (A283033 n : ℚ)

end A283033

/-! ## A283033.P14751618966295704174

`A343097(eq[5, A144328(n+1)])`
-/

namespace A283033.P14751618966295704174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283033.P14751618966295704174

namespace A283033

/-- `A343097(eq[5, A144328(n+1)])` -/
def P14751618966295704174.Spec : Prop :=
  ∀ n, P14751618966295704174.a n = A283033 n

end A283033

/-! ## A283033.P1996621316597952262

`A343097(eq[6, A002260(n+1)])`
-/

namespace A283033.P1996621316597952262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283033.P1996621316597952262

namespace A283033

/-- `A343097(eq[6, A002260(n+1)])` -/
def P1996621316597952262.Spec : Prop :=
  ∀ n, P1996621316597952262.a n = A283033 n

end A283033

/-! ## A283033.P15663544121547649427

`A343097(eq[6, A134868(n+1)])`
-/

namespace A283033.P15663544121547649427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283033.P15663544121547649427

namespace A283033

/-- `A343097(eq[6, A134868(n+1)])` -/
def P15663544121547649427.Spec : Prop :=
  ∀ n, P15663544121547649427.a n = A283033 n

end A283033

/-!
# A283034: Numbers k such that k = (sum of digits of k)^(last digit of k).

The programs for A283034, there is no canonical definition to state claims against.
-/

/-! ## A283034.P3203514173984300274

`A128912(∑[A061579(n)+2])`
-/

namespace A283034.P3203514173984300274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128912 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A283034.P3203514173984300274

/-!
# A283035: Number of n X n 0..1 arrays with no 1 equal to more than one of its horizontal and vertical neighbors, with the exception of exactly one element.

The programs for A283035, there is no canonical definition to state claims against.
-/

/-! ## A283035.P709274736424359066

`A283042(∑[4*n]+1)`
-/

namespace A283035.P709274736424359066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283042 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A283035.P709274736424359066

/-! ## A283035.P1786218471014546100

`A326461(n)+A283042(A001844(n))`
-/

namespace A283035.P1786218471014546100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326461 n + A283042 (A001844 n).toNat

end

end A283035.P1786218471014546100

/-! ## A283035.P5868840602481417607

`record[A014963(n+2)]%2*A283042(A001844(n))`
-/

namespace A283035.P5868840602481417607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2 * A283042 (A001844 n).toNat

end

end A283035.P5868840602481417607

/-! ## A283035.P10395545190385334424

`A283042(A001844(n))+8%∑{d}[n+1, A008683(#)²]`
-/

namespace A283035.P10395545190385334424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283042 (A001844 n).toNat + Int.tmod 8 (∑ d ∈ Nat.divisors (f1 n), A008683 d ^ 2)

end

end A283035.P10395545190385334424

/-! ## A283035.P6776260523192853726

`A007318(A007318(n))*A283042(A001844(n))`
-/

namespace A283035.P6776260523192853726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007318 n).toNat * A283042 (A001844 n).toNat

end

end A283035.P6776260523192853726

/-!
# A283036: Number of n X 2 0..1 arrays with no 1 equal to more than one of its horizontal and vertical neighbors, with the exception of exactly one element.

The programs for A283036, there is no canonical definition to state claims against.
-/

/-! ## A283036.P17584392934885654417

`A283572(∑[n+2])`
-/

namespace A283036.P17584392934885654417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283036.P17584392934885654417

/-! ## A283036.P3077368651226744676

`A283042(∑[n+1]+2)`
-/

namespace A283036.P3077368651226744676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283042 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A283036.P3077368651226744676

/-! ## A283036.P12622091011077956475

`record[A129186(n)*A283572(n+1)]`
-/

namespace A283036.P12622091011077956475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129186 n * A283572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283036.P12622091011077956475

/-! ## A283036.P1426638730556600120

`record[A283042(A133263(A002262(n)))]`
-/

namespace A283036.P1426638730556600120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283042 (A133263 (A002262 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283036.P1426638730556600120

/-! ## A283036.P2773778882797440452

`A001222(A060308(n+1))*A283572(A000096(n+1))`
-/

namespace A283036.P2773778882797440452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A060308 (n + 1)).toNat * A283572 (A000096 (n + 1)).toNat

end

end A283036.P2773778882797440452

/-!
# A283037: Number of nX3 0..1 arrays with no 1 equal to more than one of its horizontal and vertical neighbors, with the exception of exactly one element.

The programs for A283037, there is no canonical definition to state claims against.
-/

/-! ## A283037.P16905155923661718735

`A283042(∑[n+2]+4)`
-/

namespace A283037.P16905155923661718735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283042 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A283037.P16905155923661718735

/-! ## A283037.P9951665441430624774

`and(-1, A283042(A167614(n+1)))`
-/

namespace A283037.P9951665441430624774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A283042 (A167614 (n + 1)).toNat)

end

end A283037.P9951665441430624774

/-! ## A283037.P755870921765872128

`A283042(A167614(n+1))+A025469(n)`
-/

namespace A283037.P755870921765872128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283042 (A167614 (n + 1)).toNat + A025469 n

end

end A283037.P755870921765872128

/-! ## A283037.P2124569176171091644

`gcd(A000038(n), A283042(A167614(n+1)))`
-/

namespace A283037.P2124569176171091644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A283042 (A167614 (n + 1)).toNat)

end

end A283037.P2124569176171091644

/-! ## A283037.P5471449019099749356

`lcm(A033999(n), A283042(A167614(n+1)))`
-/

namespace A283037.P5471449019099749356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A283042 (A167614 (n + 1)).toNat)

end

end A283037.P5471449019099749356

/-!
# A283038: Number of nX4 0..1 arrays with no 1 equal to more than one of its horizontal and vertical neighbors, with the exception of exactly one element.

The programs for A283038, there is no canonical definition to state claims against.
-/

/-! ## A283038.P18403012450888874369

`A283042(A374004(n+1))`
-/

namespace A283038.P18403012450888874369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283042 (A374004 (n + 1)).toNat

end

end A283038.P18403012450888874369

/-! ## A283038.P3665920804899902016

`A283042(A141214(n)+7)`
-/

namespace A283038.P3665920804899902016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283042 (A141214 n + 7).toNat

end

end A283038.P3665920804899902016

/-! ## A283038.P7446697659061556999

`A283042(A055999(n)+10)`
-/

namespace A283038.P7446697659061556999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283042 (A055999 n + 10).toNat

end

end A283038.P7446697659061556999

/-! ## A283038.P14016294470941941342

`A283042(A167614(n+2)+1)`
-/

namespace A283038.P14016294470941941342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283042 (A167614 (n + 2) + 1).toNat

end

end A283038.P14016294470941941342

/-! ## A283038.P952766759506286768

`A283042(Δ[A264443(n)-n²])`
-/

namespace A283038.P952766759506286768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283042 (f1 (n + 1) - f1 n).toNat

end

end A283038.P952766759506286768

/-!
# A283039: Number of n X 5 0..1 arrays with no 1 equal to more than one of its horizontal and vertical neighbors, with the exception of exactly one element.

The programs for A283039, there is no canonical definition to state claims against.
-/

/-! ## A283039.P7015110468325428471

`A283042(A374005(n+1))`
-/

namespace A283039.P7015110468325428471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283042 (A374005 (n + 1)).toNat

end

end A283039.P7015110468325428471

/-! ## A283039.P3964446939415262959

`A283042(A056000(n)+15)`
-/

namespace A283039.P3964446939415262959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283042 (A056000 n + 15).toNat

end

end A283039.P3964446939415262959

/-! ## A283039.P8703349328108907967

`A283042(Δ[A264443(n)])`
-/

namespace A283039.P8703349328108907967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283042 (f1 (n + 1) - f1 n).toNat

end

end A283039.P8703349328108907967

/-! ## A283039.P1505800972922040780

`A283042(A046691(n+3))`
-/

namespace A283039.P1505800972922040780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283042 (A046691 (n + 3)).toNat

end

end A283039.P1505800972922040780

/-! ## A283039.P9875487208285356882

`A283042(eq[4, A193592(n)])`
-/

namespace A283039.P9875487208285356882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283039.P9875487208285356882

/-!
# A283040: Number of nX6 0..1 arrays with no 1 equal to more than one of its horizontal and vertical neighbors, with the exception of exactly one element.

The programs for A283040, there is no canonical definition to state claims against.
-/

/-! ## A283040.P17357493933541013309

`A283042(A374007(n+1))`
-/

namespace A283040.P17357493933541013309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283042 (A374007 (n + 1)).toNat

end

end A283040.P17357493933541013309

/-! ## A283040.P14869525583635390181

`A283042(A052905(n+2)+11)`
-/

namespace A283040.P14869525583635390181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283042 (A052905 (n + 2) + 11).toNat

end

end A283040.P14869525583635390181

/-! ## A283040.P3902082203565858878

`A283042(eq[7, A131818(n+1)])`
-/

namespace A283040.P3902082203565858878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283040.P3902082203565858878

/-! ## A283040.P12071927345582433423

`A283042(eq[3, A219347(n)])`
-/

namespace A283040.P12071927345582433423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283040.P12071927345582433423

/-! ## A283040.P3685312578618817458

`A283042(eq[5, A193592(n)])`
-/

namespace A283040.P3685312578618817458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283040.P3685312578618817458

/-!
# A283041: Number of nX7 0..1 arrays with no 1 equal to more than one of its horizontal and vertical neighbors, with the exception of exactly one element.

The programs for A283041, there is no canonical definition to state claims against.
-/

/-! ## A283041.P13669747257459224517

`A283042(A374008(n+1))`
-/

namespace A283041.P13669747257459224517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283042 (A374008 (n + 1)).toNat

end

end A283041.P13669747257459224517

/-! ## A283041.P13866321919621599051

`A283042(eq[8, A131818(n+1)])`
-/

namespace A283041.P13866321919621599051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283041.P13866321919621599051

/-! ## A283041.P3877564687433996849

`A283042(eq[4, A219347(n)])`
-/

namespace A283041.P3877564687433996849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283041.P3877564687433996849

/-! ## A283041.P12125381093663490183

`A283042(eq[6, A193592(n)])`
-/

namespace A283041.P12125381093663490183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283041.P12125381093663490183

/-! ## A283041.P557120521101566731

`A283042(eq[7, A200370(n+1)])`
-/

namespace A283041.P557120521101566731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283041.P557120521101566731

/-!
# A283042: T(n,k)=Number of nXk 0..1 arrays with no 1 equal to more than one of its horizontal and vertical neighbors, with the exception of exactly one element.

The programs for A283042, there is no canonical definition to state claims against.
-/

/-! ## A283042.P2155746780056593899

`A326875(A016095(n)%A135979(3*n+5))`
-/

namespace A283042.P2155746780056593899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326875 (Int.tmod (A016095 n) (A135979 (3 * n + 5))).toNat

end

end A283042.P2155746780056593899

/-!
# A283043: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 557", based on the 5-celled von Neumann neighborhood.

The programs for A283043, there is no canonical definition to state claims against.
-/

/-! ## A283043.P65665792777627094

`A030101(A282776(n))`
-/

namespace A283043.P65665792777627094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A282776 n).toNat

end

end A283043.P65665792777627094

/-! ## A283043.P3596350253026085862

`A325401(2*A282776(n))`
-/

namespace A283043.P3596350253026085862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A282776 n).toNat

end

end A283043.P3596350253026085862

/-! ## A283043.P2935200362627108782

`A325401(lcm(2, A282776(n)))`
-/

namespace A283043.P2935200362627108782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm 2 (A282776 n))

end

end A283043.P2935200362627108782

/-!
# A283044: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 563", based on the 5-celled von Neumann neighborhood.

The programs for A283044, there is no canonical definition to state claims against.
-/

/-! ## A283044.P11349890560849623787

`A007088(A283046(n))`
-/

namespace A283044.P11349890560849623787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283046 n).toNat

end

end A283044.P11349890560849623787

/-! ## A283044.P12419202633125912567

`A007088(or(1, A126646(n)-A279828(n)))`
-/

namespace A283044.P12419202633125912567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor 1 (A126646 n - A279828 n)).toNat

end

end A283044.P12419202633125912567

/-! ## A283044.P9675862281553533531

`A007088(A003418(n)%2+A126646(n)-A279828(n))`
-/

namespace A283044.P9675862281553533531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A003418 n) 2 + (A126646 n - A279828 n)).toNat

end

end A283044.P9675862281553533531

/-! ## A283044.P2691890786660009372

`A007088(A000010(n+1)%2+A126646(n)-A279828(n))`
-/

namespace A283044.P2691890786660009372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A000010 (n + 1)) 2 + (A126646 n - A279828 n)).toNat

end

end A283044.P2691890786660009372

/-! ## A283044.P1070506240114679703

`A305989(ceil(A283047(n)/4))`
-/

namespace A283044.P1070506240114679703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 ⌈(A283047 n : ℚ) / 4⌉.toNat

end

end A283044.P1070506240114679703

/-!
# A283045: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 563", based on the 5-celled von Neumann neighborhood.

The programs for A283045, there is no canonical definition to state claims against.
-/

/-! ## A283045.P7745017745865944167

`A007088(A283047(n))`
-/

namespace A283045.P7745017745865944167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283047 n).toNat

end

end A283045.P7745017745865944167

/-! ## A283045.P3178571386769160829

`A185544(2*A283047(n))`
-/

namespace A283045.P3178571386769160829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283047 n).toNat

end

end A283045.P3178571386769160829

/-!
# A283046: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 563", based on the 5-celled von Neumann neighborhood.

The programs for A283046, there is no canonical definition to state claims against.
-/

/-! ## A283046.P13156479033368089685

`or(1, A126646(n)-A279828(n))`
-/

namespace A283046.P13156479033368089685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A126646 n - A279828 n)

end

end A283046.P13156479033368089685

/-! ## A283046.P6589415904243590266

`or(A024000(n)+n, A126646(n)%A279828(n))`
-/

namespace A283046.P6589415904243590266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A024000 n + (n : ℤ)) (Int.tmod (A126646 n) (A279828 n))

end

end A283046.P6589415904243590266

/-! ## A283046.P14267521048784871378

`A126646(n)-A279828(n)+A002322(n+1)%2`
-/

namespace A283046.P14267521048784871378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A279828 n + Int.tmod (A002322 (n + 1)) 2

end

end A283046.P14267521048784871378

/-! ## A283046.P9028282630439219526

`A262501(A028310(n))%2+A126646(n)-A279828(n)`
-/

namespace A283046.P9028282630439219526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262501 (A028310 n).toNat) 2 + (A126646 n - A279828 n)

end

end A283046.P9028282630439219526

/-! ## A283046.P16482327255007172336

`A003418(n)%2+A126646(n)-A279828(n)`
-/

namespace A283046.P16482327255007172336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003418 n) 2 + (A126646 n - A279828 n)

end

end A283046.P16482327255007172336

/-!
# A283047: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 563", based on the 5-celled von Neumann neighborhood.

The programs for A283047, there is no canonical definition to state claims against.
-/

/-! ## A283047.P8965677890202483659

`A265106(n)+A007895(A007482(n))`
-/

namespace A283047.P8965677890202483659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265106 n + A007895 (A007482 n).toNat

end

end A283047.P8965677890202483659

/-! ## A283047.P2706962386584868052

`A193358(xor(A000203(n+1), A006318(n)))`
-/

namespace A283047.P2706962386584868052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193358 (Int.xor (A000203 (n + 1)) (A006318 n)).toNat

end

end A283047.P2706962386584868052

/-!
# A283048: 

The programs for A283048, there is no canonical definition to state claims against.
-/

/-! ## A283048.P6864957090201589869

`A008979(n²)`
-/

namespace A283048.P6864957090201589869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008979 (n ^ 2)

end

end A283048.P6864957090201589869

/-!
# A283049: Numbers of configurations of A'Campo forests with co-dimension 1 and degree n > 0.

The programs for A283049, there is no canonical definition to state claims against.
-/

/-! ## A283049.P6544026456187060034

`4*A116088(A064226(n))`
-/

namespace A283049.P6544026456187060034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A116088 (A064226 n).toNat

end

end A283049.P6544026456187060034

/-!
# A283050: Integers that are divisible by the square of their least prime factor.

The programs for A283050, the canonical program `A283050.P5018539412400332798` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283050 has offset 1).

The definition of A283050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283050.P5018539412400332798

`eq[1, A319710(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A283050

/-- `eq[1, A319710(n+1)]+1` -/
def P5018539412400332798.Spec : Prop :=
  ∀ n, (P5018539412400332798.a n : ℤ) = A283050 (n + 1)

theorem P5018539412400332798.correct : P5018539412400332798.Spec := by
  intro n
  simp only [A283050, Nat.add_sub_cancel]

end A283050

/-! ## A283050.P1360481610256130236

`eq[1, gcd(2, A305897(n+2))]+2`
-/

namespace A283050.P1360481610256130236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A305897 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A283050.P1360481610256130236

namespace A283050

/-- `eq[1, gcd(2, A305897(n+2))]+2` -/
def P1360481610256130236.Spec : Prop :=
  ∀ n, (P1360481610256130236.a n : ℤ) = A283050 (n + 1)

end A283050

/-! ## A283050.P9057260093684420898

`filter[A013929(n+1), A319710(#)]`
-/

namespace A283050.P9057260093684420898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A283050.P9057260093684420898

namespace A283050

/-- `filter[A013929(n+1), A319710(#)]` -/
def P9057260093684420898.Spec : Prop :=
  ∀ n, P9057260093684420898.a n = A283050 (n + 1)

end A283050

/-! ## A283050.P12822742443162159607

`∪[A080366(n+1), A389144(n+1)]`
-/

namespace A283050.P12822742443162159607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A283050.P12822742443162159607

namespace A283050

/-- `∪[A080366(n+1), A389144(n+1)]` -/
def P12822742443162159607.Spec : Prop :=
  ∀ n, (P12822742443162159607.a n : ℤ) = A283050 (n + 1)

end A283050

/-! ## A283050.P6971174438416113400

`∪[A365866(n+1), A365869(n+1)]`
-/

namespace A283050.P6971174438416113400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A283050.P6971174438416113400

namespace A283050

/-- `∪[A365866(n+1), A365869(n+1)]` -/
def P6971174438416113400.Spec : Prop :=
  ∀ n, (P6971174438416113400.a n : ℤ) = A283050 (n + 1)

end A283050

/-! ## A283050.P7201271424731644327

`filter[A162966(n+1), A319710(#)]`
-/

namespace A283050.P7201271424731644327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A283050.P7201271424731644327

namespace A283050

/-- `filter[A162966(n+1), A319710(#)]` -/
def P7201271424731644327.Spec : Prop :=
  ∀ n, P7201271424731644327.a n = A283050 (n + 1)

end A283050

/-! ## A283050.P9028642432761630792

`filter[A354360(n+1), A319710(#)]`
-/

namespace A283050.P9028642432761630792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A283050.P9028642432761630792

namespace A283050

/-- `filter[A354360(n+1), A319710(#)]` -/
def P9028642432761630792.Spec : Prop :=
  ∀ n, P9028642432761630792.a n = A283050 (n + 1)

end A283050

/-! ## A283050.P14463966644627460228

`filter[A389462(n+1), A319710(#)]`
-/

namespace A283050.P14463966644627460228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A283050.P14463966644627460228

namespace A283050

/-- `filter[A389462(n+1), A319710(#)]` -/
def P14463966644627460228.Spec : Prop :=
  ∀ n, P14463966644627460228.a n = A283050 (n + 1)

end A283050

/-! ## A283050.P3942339928327054915

`lt[A107286(n), gcd(n, A107286(n)²)]`
-/

namespace A283050.P3942339928327054915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A107286 n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A283050.P3942339928327054915

namespace A283050

/-- `lt[A107286(n), gcd(n, A107286(n)²)]` -/
def P3942339928327054915.Spec : Prop :=
  ∀ n, (P3942339928327054915.a n : ℤ) = A283050 (n + 1)

end A283050

/-! ## A283050.P6681397922341679759

`filter[A363597(n+1), A319710(#)]`
-/

namespace A283050.P6681397922341679759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A283050.P6681397922341679759

namespace A283050

/-- `filter[A363597(n+1), A319710(#)]` -/
def P6681397922341679759.Spec : Prop :=
  ∀ n, P6681397922341679759.a n = A283050 (n + 1)

end A283050

/-! ## A283050.P6460027235786157153

`filter[A366288(n+1), A319710(#)]`
-/

namespace A283050.P6460027235786157153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A283050.P6460027235786157153

namespace A283050

/-- `filter[A366288(n+1), A319710(#)]` -/
def P6460027235786157153.Spec : Prop :=
  ∀ n, P6460027235786157153.a n = A283050 (n + 1)

end A283050

/-! ## A283050.P269367046151651972

`filter[A341749(n+2), A319710(#)]`
-/

namespace A283050.P269367046151651972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341749 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A283050.P269367046151651972

namespace A283050

/-- `filter[A341749(n+2), A319710(#)]` -/
def P269367046151651972.Spec : Prop :=
  ∀ n, P269367046151651972.a n = A283050 (n + 1)

end A283050

/-! ## A283050.P9011104405898885840

`lt[1, A087179(n+1)]+1`
-/

namespace A283050.P9011104405898885840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087179 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A283050.P9011104405898885840

namespace A283050

/-- `lt[1, A087179(n+1)]+1` -/
def P9011104405898885840.Spec : Prop :=
  ∀ n, (P9011104405898885840.a n : ℤ) = A283050 (n + 1)

end A283050

/-! ## A283050.P4056868965375412185

`filter[A289553(n+1), A319710(#)]`
-/

namespace A283050.P4056868965375412185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A283050.P4056868965375412185

namespace A283050

/-- `filter[A289553(n+1), A319710(#)]` -/
def P4056868965375412185.Spec : Prop :=
  ∀ n, P4056868965375412185.a n = A283050 (n + 1)

end A283050

/-! ## A283050.P3111350358016774826

`filter[A088609(n+2), A319710(#)]`
-/

namespace A283050.P3111350358016774826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088609 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A283050.P3111350358016774826

namespace A283050

/-- `filter[A088609(n+2), A319710(#)]` -/
def P3111350358016774826.Spec : Prop :=
  ∀ n, P3111350358016774826.a n = A283050 (n + 1)

end A283050

/-! ## A283050.P13418475691585792955

`filter[A060679(n+1), A319710(#)]`
-/

namespace A283050.P13418475691585792955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A283050.P13418475691585792955

namespace A283050

/-- `filter[A060679(n+1), A319710(#)]` -/
def P13418475691585792955.Spec : Prop :=
  ∀ n, P13418475691585792955.a n = A283050 (n + 1)

end A283050

/-! ## A283050.P3094588225272367051

`filter[A174891(n+1), A319710(#)]`
-/

namespace A283050.P3094588225272367051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A283050.P3094588225272367051

namespace A283050

/-- `filter[A174891(n+1), A319710(#)]` -/
def P3094588225272367051.Spec : Prop :=
  ∀ n, P3094588225272367051.a n = A283050 (n + 1)

end A283050

/-! ## A283050.P17306517810179806323

`filter[A179891(n+1), A319710(#)]`
-/

namespace A283050.P17306517810179806323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A283050.P17306517810179806323

namespace A283050

/-- `filter[A179891(n+1), A319710(#)]` -/
def P17306517810179806323.Spec : Prop :=
  ∀ n, P17306517810179806323.a n = A283050 (n + 1)

end A283050

/-! ## A283050.P1207188006840755246

`filter[A246716(n+1), A319710(#)]`
-/

namespace A283050.P1207188006840755246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A283050.P1207188006840755246

namespace A283050

/-- `filter[A246716(n+1), A319710(#)]` -/
def P1207188006840755246.Spec : Prop :=
  ∀ n, P1207188006840755246.a n = A283050 (n + 1)

end A283050

/-! ## A283050.P1462249907054658689

`filter[A107750(n+1), A319710(#)]`
-/

namespace A283050.P1462249907054658689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A283050.P1462249907054658689

namespace A283050

/-- `filter[A107750(n+1), A319710(#)]` -/
def P1462249907054658689.Spec : Prop :=
  ∀ n, P1462249907054658689.a n = A283050 (n + 1)

end A283050

/-!
# A283052: Numbers k such that uphi(k)/phi(k) > uphi(m)/phi(m) for all m < k, where phi(k) is the Euler totient function (A000010) and uphi(k) is the unitary totient function (A047994).

The programs for A283052, there is no canonical definition to state claims against.
-/

/-! ## A283052.P261861794089969985

`record[A212173(A331200(n+1))]`
-/

namespace A283052.P261861794089969985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212173 (A331200 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283052.P261861794089969985

/-! ## A283052.P17673634728951521079

`A377138(A077741(n+1))`
-/

namespace A283052.P17673634728951521079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377138 (A077741 (n + 1)).toNat

end

end A283052.P17673634728951521079

/-! ## A283052.P16474682556122514757

`A377138(A004906(n+2))`
-/

namespace A283052.P16474682556122514757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377138 (A004906 (n + 2)).toNat

end

end A283052.P16474682556122514757

/-! ## A283052.P12819453243978860986

`A377138(A004917(n+2))`
-/

namespace A283052.P12819453243978860986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377138 (A004917 (n + 2)).toNat

end

end A283052.P12819453243978860986

/-! ## A283052.P13357606624339496380

`A377138(A062399(n+1))`
-/

namespace A283052.P13357606624339496380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377138 (A062399 (n + 1)).toNat

end

end A283052.P13357606624339496380

/-!
# A283054: Triangle read by rows: T(n,k) = T(n,k-1) + T(n-1,k), T(n,0)=1, T(n,n) = T(n,n-1) + 1.

The programs for A283054, there is no canonical definition to state claims against.
-/

/-! ## A283054.P5322278098623163183

`A096465(round(sqrt(2*n)+n))`
-/

namespace A283054.P5322278098623163183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ) + (n : ℝ))).toNat

end

end A283054.P5322278098623163183

/-! ## A283054.P1803866451389107271

`A091491(A099375(n)+1+n)`
-/

namespace A283054.P1803866451389107271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091491 (A099375 n + 1 + (n : ℤ)).toNat

end

end A283054.P1803866451389107271

/-! ## A283054.P4111211266847634372

`A323224(2*A014132(n+1)-n)`
-/

namespace A283054.P4111211266847634372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323224 (2 * A014132 (n + 1) - (n : ℤ)).toNat

end

end A283054.P4111211266847634372

/-! ## A283054.P13445904253108905268

`A091491(A061579(n)+A003057(n+2))`
-/

namespace A283054.P13445904253108905268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091491 (A061579 n + A003057 (n + 2)).toNat

end

end A283054.P13445904253108905268

/-! ## A283054.P9180150921225805714

`lcm(A033999(n), A096465(A007401(n+1)))`
-/

namespace A283054.P9180150921225805714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A096465 (A007401 (n + 1)).toNat)

end

end A283054.P9180150921225805714

/-! ## A283054.P5404657391652716544

`A096465(A007401(n+1))+A000007(n+1)`
-/

namespace A283054.P5404657391652716544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 (A007401 (n + 1)).toNat + A000007 (n + 1)

end

end A283054.P5404657391652716544

/-! ## A283054.P17712228051961117328

`A091491(A038722(n+1)+A002024(n+1))`
-/

namespace A283054.P17712228051961117328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091491 (A038722 (n + 1) + A002024 (n + 1)).toNat

end

end A283054.P17712228051961117328

/-! ## A283054.P8662356902481481490

`A091491(A002024(n+1)+A114327(n)+1+n)`
-/

namespace A283054.P8662356902481481490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091491 (A002024 (n + 1) + (A114327 n + 1 + (n : ℤ))).toNat

end

end A283054.P8662356902481481490

/-! ## A283054.P10796946483198784963

`A323224(A014132(n+1)+A014132(n+1)-n)`
-/

namespace A283054.P10796946483198784963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323224 (A014132 (n + 1) + (A014132 (n + 1) - (n : ℤ))).toNat

end

end A283054.P10796946483198784963

/-! ## A283054.P2776643588382939221

`A096465(eq[0, A023531(n)])%A000051(n)`
-/

namespace A283054.P2776643588382939221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A000051 n)

end

end A283054.P2776643588382939221

/-!
# A283056: Size of the smallest polyomino that admits a hole of size n.

The programs for A283056, there is no canonical definition to state claims against.
-/

/-! ## A283056.P10418839932920723303

`comp[A173151(n)]-n`
-/

namespace A283056.P10418839932920723303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173151 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A283056.P10418839932920723303

/-! ## A283056.P2099998246450012714

`lt[n, A014462(n+1)]-n`
-/

namespace A283056.P2099998246450012714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n : ℤ)

end

end A283056.P2099998246450012714

/-! ## A283056.P5297456790574678970

`A359506(A027709(n))`
-/

namespace A283056.P5297456790574678970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359506 (A027709 n).toNat

end

end A283056.P5297456790574678970

/-! ## A283056.P5447259131917935056

`A062545(A360924(n))`
-/

namespace A283056.P5447259131917935056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 (A360924 n).toNat

end

end A283056.P5447259131917935056

/-! ## A283056.P13188452780604481464

`A265412(n)-A028310(n)`
-/

namespace A283056.P13188452780604481464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265412 n - A028310 n

end

end A283056.P13188452780604481464

/-! ## A283056.P14536337781324454451

`∑[A265411(n)]-A028310(n)`
-/

namespace A283056.P14536337781324454451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A028310 n

end

end A283056.P14536337781324454451

/-! ## A283056.P16478379510054845674

`comp[A025828(n+3)+1-A157687(n+1)]-n`
-/

namespace A283056.P16478379510054845674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025828 (n + 3) + (1 - A157687 (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A283056.P16478379510054845674

/-! ## A283056.P1740540212017290468

`comp[A025828(n+3)+7%A078929(n+1)]-n`
-/

namespace A283056.P1740540212017290468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025828 (n + 3) + Int.tmod 7 (A078929 (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A283056.P1740540212017290468

/-! ## A283056.P7336973325594040297

`A265400(A265413(A265412(n)-n))`
-/

namespace A283056.P7336973325594040297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265400 (A265413 (A265412 n - (n : ℤ)).toNat).toNat

end

end A283056.P7336973325594040297

/-! ## A283056.P6685809910060581676

`A265400(A265413(A265413(n+1)-(n+1)))`
-/

namespace A283056.P6685809910060581676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265400 (A265413 (A265413 (n + 1) - (n + 1 : ℤ)).toNat).toNat

end

end A283056.P6685809910060581676

/-!
# A283057: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 565", based on the 5-celled von Neumann neighborhood.

The programs for A283057, there is no canonical definition to state claims against.
-/

/-! ## A283057.P8502726028416691314

`A007088(A283059(n))`
-/

namespace A283057.P8502726028416691314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283059 n).toNat

end

end A283057.P8502726028416691314

/-! ## A283057.P3760718326176865121

`A185544(2*A283059(n))`
-/

namespace A283057.P3760718326176865121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283059 n).toNat

end

end A283057.P3760718326176865121

/-!
# A283058: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 565", based on the 5-celled von Neumann neighborhood.

The programs for A283058, there is no canonical definition to state claims against.
-/

/-! ## A283058.P16139547927324386296

`A007088(A283060(n))`
-/

namespace A283058.P16139547927324386296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283060 n).toNat

end

end A283058.P16139547927324386296

/-! ## A283058.P7534415309196395458

`A305989(A283059(n))`
-/

namespace A283058.P7534415309196395458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283059 n).toNat

end

end A283058.P7534415309196395458

/-! ## A283058.P7547081417001011839

`A185544(2*A283060(n))`
-/

namespace A283058.P7547081417001011839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283060 n).toNat

end

end A283058.P7547081417001011839

/-! ## A283058.P1900588374387239679

`A185544(lcm(2, A283060(n)))`
-/

namespace A283058.P1900588374387239679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283060 n))

end

end A283058.P1900588374387239679

/-!
# A283059: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 565", based on the 5-celled von Neumann neighborhood.

The programs for A283059, there is no canonical definition to state claims against.
-/

/-! ## A283059.P11545477897753291968

`or(A002262(A122961(n+1)), A283015(n))`
-/

namespace A283059.P11545477897753291968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 (A122961 (n + 1)).toNat) (A283015 n)

end

end A283059.P11545477897753291968

/-! ## A283059.P7883057093429396060

`A325677(A073133(3*(n+1)))+A000225(n)`
-/

namespace A283059.P7883057093429396060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325677 (A073133 (3 * (n + 1))).toNat + A000225 n

end

end A283059.P7883057093429396060

/-!
# A283060: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 565", based on the 5-celled von Neumann neighborhood.

The programs for A283060, there is no canonical definition to state claims against.
-/

/-! ## A283060.P4261432315015173328

`A030101(A283059(n))`
-/

namespace A283060.P4261432315015173328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A283059 n).toNat

end

end A283060.P4261432315015173328

/-! ## A283060.P11339960835061993462

`A325401(lcm(2, A283059(n)))`
-/

namespace A283060.P11339960835061993462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm 2 (A283059 n))

end

end A283060.P11339960835061993462

/-! ## A283060.P10473961132296118550

`A325401(2*A283059(n))`
-/

namespace A283060.P10473961132296118550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A283059 n).toNat

end

end A283060.P10473961132296118550

/-! ## A283060.P9095219507278804845

`and(A004768(A018648(n+1)), A126646(n))`
-/

namespace A283060.P9095219507278804845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004768 (A018648 (n + 1)).toNat) (A126646 n)

end

end A283060.P9095219507278804845

/-!
# A283061: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 566", based on the 5-celled von Neumann neighborhood.

The programs for A283061, there is no canonical definition to state claims against.
-/

/-! ## A283061.P7852527081845394546

`A007088(A283063(n))`
-/

namespace A283061.P7852527081845394546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283063 n).toNat

end

end A283061.P7852527081845394546

/-! ## A283061.P11047754995316186809

`A305989(A283064(n))`
-/

namespace A283061.P11047754995316186809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283064 n).toNat

end

end A283061.P11047754995316186809

/-! ## A283061.P10886447967842367738

`A185544(2*A283063(n))`
-/

namespace A283061.P10886447967842367738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283063 n).toNat

end

end A283061.P10886447967842367738

/-! ## A283061.P4547836808682211141

`A185544(lcm(2, A283063(n)))`
-/

namespace A283061.P4547836808682211141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283063 n))

end

end A283061.P4547836808682211141

/-!
# A283062: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 566", based on the 5-celled von Neumann neighborhood.

The programs for A283062, there is no canonical definition to state claims against.
-/

/-! ## A283062.P6810943772217248160

`A007088(A283064(n))`
-/

namespace A283062.P6810943772217248160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283064 n).toNat

end

end A283062.P6810943772217248160

/-! ## A283062.P2065203423544869595

`A305989(A283063(n))`
-/

namespace A283062.P2065203423544869595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283063 n).toNat

end

end A283062.P2065203423544869595

/-! ## A283062.P13808238396573166740

`A185544(2*A283064(n))`
-/

namespace A283062.P13808238396573166740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283064 n).toNat

end

end A283062.P13808238396573166740

/-! ## A283062.P8969798295225495027

`A185544(lcm(2, A283064(n)))`
-/

namespace A283062.P8969798295225495027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283064 n))

end

end A283062.P8969798295225495027

/-!
# A283063: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 566", based on the 5-celled von Neumann neighborhood.

The programs for A283063, there is no canonical definition to state claims against.
-/

/-! ## A283063.P3516856307019829036

`A145341(ceil(A283064(n)/2))`
-/

namespace A283063.P3516856307019829036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145341 ⌈(A283064 n : ℚ) / 2⌉.toNat

end

end A283063.P3516856307019829036

/-! ## A283063.P13631645095027368810

`A145341(round(A283064(n)/2))`
-/

namespace A283063.P13631645095027368810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145341 (SequenceMachineLib.roundAway ((A283064 n : ℚ) / 2)).toNat

end

end A283063.P13631645095027368810

/-! ## A283063.P1558890621201246772

`A145341((A283064(n)+1)/2)`
-/

namespace A283063.P1558890621201246772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145341 (SequenceMachineLib.roundAway ((A283064 n + 1 : ℚ) / 2)).toNat

end

end A283063.P1558890621201246772

/-! ## A283063.P11546070680824337377

`A030101(A283064(n))`
-/

namespace A283063.P11546070680824337377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A283064 n).toNat

end

end A283063.P11546070680824337377

/-! ## A283063.P4565679822215070476

`A057889(or(1, A283064(n)))`
-/

namespace A283063.P4565679822215070476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (Int.lor 1 (A283064 n)).toNat

end

end A283063.P4565679822215070476

/-!
# A283064: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 566", based on the 5-celled von Neumann neighborhood.

The programs for A283064, there is no canonical definition to state claims against.
-/

/-! ## A283064.P10080234469274921514

`A145341(ceil(A283063(n)/2))`
-/

namespace A283064.P10080234469274921514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145341 ⌈(A283063 n : ℚ) / 2⌉.toNat

end

end A283064.P10080234469274921514

/-! ## A283064.P502633532085018607

`A145341(round(A283063(n)/2))`
-/

namespace A283064.P502633532085018607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145341 (SequenceMachineLib.roundAway ((A283063 n : ℚ) / 2)).toNat

end

end A283064.P502633532085018607

/-! ## A283064.P7710452459401546945

`A145341((A283063(n)+1)/2)`
-/

namespace A283064.P7710452459401546945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145341 (SequenceMachineLib.roundAway ((A283063 n + 1 : ℚ) / 2)).toNat

end

end A283064.P7710452459401546945

/-! ## A283064.P9446888368546045241

`A057889(A283063(n))`
-/

namespace A283064.P9446888368546045241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A283063 n).toNat

end

end A283064.P9446888368546045241

/-! ## A283064.P4070126946962751040

`A030101(2*A283063(n))`
-/

namespace A283064.P4070126946962751040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (2 * A283063 n).toNat

end

end A283064.P4070126946962751040

/-!
# A283065: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 569", based on the 5-celled von Neumann neighborhood.

The programs for A283065, there is no canonical definition to state claims against.
-/

/-! ## A283065.P13763754343330898191

`A007088(A283067(n))`
-/

namespace A283065.P13763754343330898191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283067 n).toNat

end

end A283065.P13763754343330898191

/-! ## A283065.P13081417311952559666

`A007088(A095121(n)+1-A281758(n))`
-/

namespace A283065.P13081417311952559666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 n + (1 - A281758 n)).toNat

end

end A283065.P13081417311952559666

/-! ## A283065.P2679799073732640417

`A007088(1-(A281758(n)-A095121(n)))`
-/

namespace A283065.P2679799073732640417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (1 - (A281758 n - A095121 n)).toNat

end

end A283065.P2679799073732640417

/-! ## A283065.P10076334757537932841

`A007088(A281759(n)+A283068(n)-A281758(n))`
-/

namespace A283065.P10076334757537932841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281759 n + (A283068 n - A281758 n)).toNat

end

end A283065.P10076334757537932841

/-! ## A283065.P14011879021509119818

`A007088(A282264(n)+A282829(n)-A281758(n))`
-/

namespace A283065.P14011879021509119818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282264 n + (A282829 n - A281758 n)).toNat

end

end A283065.P14011879021509119818

/-!
# A283066: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 569", based on the 5-celled von Neumann neighborhood.

The programs for A283066, there is no canonical definition to state claims against.
-/

/-! ## A283066.P12032243226645202555

`A007088(A283068(n))`
-/

namespace A283066.P12032243226645202555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283068 n).toNat

end

end A283066.P12032243226645202555

/-! ## A283066.P16903414876565637490

`A007088(and(-A281759(n), A095121(n)))`
-/

namespace A283066.P16903414876565637490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (-A281759 n) (A095121 n)).toNat

end

end A283066.P16903414876565637490

/-! ## A283066.P2774221539061324980

`A007088(A095121(n)+1-A281759(n))`
-/

namespace A283066.P2774221539061324980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 n + (1 - A281759 n)).toNat

end

end A283066.P2774221539061324980

/-! ## A283066.P11871414345337249684

`A007088(1-(A281759(n)-A095121(n)))`
-/

namespace A283066.P11871414345337249684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (1 - (A281759 n - A095121 n)).toNat

end

end A283066.P11871414345337249684

/-! ## A283066.P10928877688640780616

`A007088(A281758(n)+A283067(n)-A281759(n))`
-/

namespace A283066.P10928877688640780616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281758 n + (A283067 n - A281759 n)).toNat

end

end A283066.P10928877688640780616

/-!
# A283067: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 569", based on the 5-celled von Neumann neighborhood.

The programs for A283067, there is no canonical definition to state claims against.
-/

/-! ## A283067.P6022096949164095508

`A095121(n)+1-A281758(n)`
-/

namespace A283067.P6022096949164095508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A281758 n)

end

end A283067.P6022096949164095508

/-! ## A283067.P13517341621232327948

`A281759(n)+A283068(n)-A281758(n)`
-/

namespace A283067.P13517341621232327948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281759 n + (A283068 n - A281758 n)

end

end A283067.P13517341621232327948

/-! ## A283067.P7312747248172761712

`A282264(n)+A282829(n)-A281758(n)`
-/

namespace A283067.P7312747248172761712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282264 n + (A282829 n - A281758 n)

end

end A283067.P7312747248172761712

/-! ## A283067.P15421901292268184417

`A126646(n)+A057428(n)*A281758(n)`
-/

namespace A283067.P15421901292268184417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + A057428 n * A281758 n

end

end A283067.P15421901292268184417

/-! ## A283067.P8510078221987709583

`A126646(n)-A281758(n)%A007070(n)`
-/

namespace A283067.P8510078221987709583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A281758 n) (A007070 n)

end

end A283067.P8510078221987709583

/-! ## A283067.P17014877418205630984

`A127330(A000124(n))-A281758(n)`
-/

namespace A283067.P17014877418205630984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127330 (A000124 n).toNat - A281758 n

end

end A283067.P17014877418205630984

/-!
# A283068: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 569", based on the 5-celled von Neumann neighborhood.

The programs for A283068, there is no canonical definition to state claims against.
-/

/-! ## A283068.P2302738943990663185

`and(-A281759(n), A095121(n))`
-/

namespace A283068.P2302738943990663185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A281759 n) (A095121 n)

end

end A283068.P2302738943990663185

/-! ## A283068.P5578764606383236844

`A281758(n)+A283067(n)-A281759(n)`
-/

namespace A283068.P5578764606383236844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281758 n + (A283067 n - A281759 n)

end

end A283068.P5578764606383236844

/-! ## A283068.P3773310474758810470

`A282264(n)+A282829(n)-A281759(n)`
-/

namespace A283068.P3773310474758810470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282264 n + (A282829 n - A281759 n)

end

end A283068.P3773310474758810470

/-! ## A283068.P15687637430172930828

`A126646(n)+A057428(n)*A281759(n)`
-/

namespace A283068.P15687637430172930828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + A057428 n * A281759 n

end

end A283068.P15687637430172930828

/-! ## A283068.P592435947345528206

`and(A057428(n)-A281759(n), A095121(n))`
-/

namespace A283068.P592435947345528206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n - A281759 n) (A095121 n)

end

end A283068.P592435947345528206

/-! ## A283068.P13959740775707952999

`A126646(n)-A281759(n)%A007070(n)`
-/

namespace A283068.P13959740775707952999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A281759 n) (A007070 n)

end

end A283068.P13959740775707952999

/-! ## A283068.P5323179107586874213

`and(A126646(n)*A281759(n), A095121(n))`
-/

namespace A283068.P5323179107586874213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n * A281759 n) (A095121 n)

end

end A283068.P5323179107586874213

/-! ## A283068.P13873745427455339975

`A127330(A000124(n))-A281759(n)`
-/

namespace A283068.P13873745427455339975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127330 (A000124 n).toNat - A281759 n

end

end A283068.P13873745427455339975

/-!
# A283069: A283050(n) divided by the square of its least prime factor.

The programs for A283069, there is no canonical definition to state claims against.
-/

/-! ## A283069.P4090989519738089227

`A283050(n+1)/A020639(A283050(n+1))²`
-/

namespace A283069.P4090989519738089227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283050 (n + 1) : ℚ) / (A020639 (A283050 (n + 1)).toNat ^ 2 : ℚ)

end

end A283069.P4090989519738089227

/-! ## A283069.P11876263408078845847

`A032742(A283050(n+1)/A020639(A283050(n+1)))`
-/

namespace A283069.P11876263408078845847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (SequenceMachineLib.roundAway ((A283050 (n + 1) : ℚ) / (A020639 (A283050 (n + 1)).toNat : ℚ))).toNat

end

end A283069.P11876263408078845847

/-! ## A283069.P16004743455224396112

`A054576(A283050(n+1))`
-/

namespace A283069.P16004743455224396112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A283050 (n + 1)).toNat

end

end A283069.P16004743455224396112

/-! ## A283069.P11222353163441318672

`A032742(A032742(A283050(n+1)%A002144(n+1)))`
-/

namespace A283069.P11222353163441318672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A032742 (Int.tmod (A283050 (n + 1)) (A002144 (n + 1))).toNat).toNat

end

end A283069.P11222353163441318672

/-! ## A283069.P495604388241378925

`A032742(A032742(A283050(n+1))%A002145(n+1))`
-/

namespace A283069.P495604388241378925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (Int.tmod (A032742 (A283050 (n + 1)).toNat) (A002145 (n + 1))).toNat

end

end A283069.P495604388241378925

/-! ## A283069.P2946601094984800125

`A032742(A032742(A283050(n+1)))%A038179(n+1)`
-/

namespace A283069.P2946601094984800125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032742 (A032742 (A283050 (n + 1)).toNat).toNat) (A038179 (n + 1))

end

end A283069.P2946601094984800125

/-!
# A283070: Sierpinski tetrahedron or tetrix numbers: a(n) = 2*4^n + 2.

The programs for A283070, the canonical program `A283070.P730277057158743359` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283070 has offset 0).

The definition of A283070 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*4^n+2` (program `A283070.P730277057158743359`, by `A283070.P730277057158743359.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A283070.P730277057158743359

`2*4^n+2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283070

/-- `2*4^n+2` -/
def P730277057158743359.Spec : Prop :=
  ∀ n, (P730277057158743359.a n : ℤ) = A283070 n

theorem P730277057158743359.correct : P730277057158743359.Spec := by
  intro n
  simp only [A283070]

end A283070

/-! ## A283070.P13067367452635937634

`2*A052539(n)`
-/

namespace A283070.P13067367452635937634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052539 n

end

end A283070.P13067367452635937634

namespace A283070

/-- `2*A052539(n)` -/
def P13067367452635937634.Spec : Prop :=
  ∀ n, P13067367452635937634.a n = A283070 n

theorem P13067367452635937634.correct : P13067367452635937634.Spec := by
  intro n
  simp only [A283070, Nat.add_sub_cancel, A283070.P13067367452635937634.a, A283070.P730277057158743359.a, A052539, A052539.P3422248518252475595.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A283070

/-! ## A283070.P2944010475439498964

`A056469(2*n+2)`
-/

namespace A283070.P2944010475439498964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 (2 * n + 2)

end

end A283070.P2944010475439498964

namespace A283070

/-- `A056469(2*n+2)` -/
def P2944010475439498964.Spec : Prop :=
  ∀ n, P2944010475439498964.a n = A283070 n

end A283070

/-! ## A283070.P15264636677687341697

`A261723(4*n+1)`
-/

namespace A283070.P15264636677687341697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261723 (4 * n + 1)

end

end A283070.P15264636677687341697

namespace A283070

/-- `A261723(4*n+1)` -/
def P15264636677687341697.Spec : Prop :=
  ∀ n, P15264636677687341697.a n = A283070 n

end A283070

/-! ## A283070.P16430563911403179403

`ogf((4-10x)/(1-5x+4x^2))`
-/

namespace A283070.P16430563911403179403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -10] [1, -5, 4] n

end

end A283070.P16430563911403179403

namespace A283070

/-- `ogf((4-10x)/(1-5x+4x^2))` -/
def P16430563911403179403.Spec : Prop :=
  ∀ n, P16430563911403179403.a n = A283070 n

end A283070

/-! ## A283070.P13276227986570016392

`record[2^xor(1, n)+2]`
-/

namespace A283070.P13276227986570016392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.xor 1 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283070.P13276227986570016392

namespace A283070

/-- `record[2^xor(1, n)+2]` -/
def P13276227986570016392.Spec : Prop :=
  ∀ n, (P13276227986570016392.a n : ℤ) = A283070 n

end A283070

/-! ## A283070.P510566828392420630

`abs(xor(2*4^n, -2))`
-/

namespace A283070.P510566828392420630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (2 * 4 ^ n : ℤ) (-2)|

end

end A283070.P510566828392420630

namespace A283070

/-- `abs(xor(2*4^n, -2))` -/
def P510566828392420630.Spec : Prop :=
  ∀ n, P510566828392420630.a n = A283070 n

end A283070

/-! ## A283070.P5911210612721679048

`record[2-(-2)^(n+1)]`
-/

namespace A283070.P5911210612721679048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (-2) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283070.P5911210612721679048

namespace A283070

/-- `record[2-(-2)^(n+1)]` -/
def P5911210612721679048.Spec : Prop :=
  ∀ n, P5911210612721679048.a n = A283070 n

end A283070

/-! ## A283070.P4026487900868845590

`ceil(or(3, 4^(n+1))/2)`
-/

namespace A283070.P4026487900868845590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 3 (4 ^ (n + 1)) : ℚ) / 2⌉

end

end A283070.P4026487900868845590

namespace A283070

/-- `ceil(or(3, 4^(n+1))/2)` -/
def P4026487900868845590.Spec : Prop :=
  ∀ n, P4026487900868845590.a n = A283070 n

end A283070

/-! ## A283070.P1969917204804701903

`round(or(3, 4^(n+1))/2)`
-/

namespace A283070.P1969917204804701903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 3 (4 ^ (n + 1)) : ℚ) / 2)

end

end A283070.P1969917204804701903

namespace A283070

/-- `round(or(3, 4^(n+1))/2)` -/
def P1969917204804701903.Spec : Prop :=
  ∀ n, P1969917204804701903.a n = A283070 n

end A283070

/-! ## A283070.P3965110000982856241

`ceil(xor(3, 4^(n+1))/2)`
-/

namespace A283070.P3965110000982856241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 3 (4 ^ (n + 1)) : ℚ) / 2⌉

end

end A283070.P3965110000982856241

namespace A283070

/-- `ceil(xor(3, 4^(n+1))/2)` -/
def P3965110000982856241.Spec : Prop :=
  ∀ n, P3965110000982856241.a n = A283070 n

end A283070

/-! ## A283070.P1964963084990617031

`round(xor(3, 4^(n+1))/2)`
-/

namespace A283070.P1964963084990617031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 3 (4 ^ (n + 1)) : ℚ) / 2)

end

end A283070.P1964963084990617031

namespace A283070

/-- `round(xor(3, 4^(n+1))/2)` -/
def P1964963084990617031.Spec : Prop :=
  ∀ n, P1964963084990617031.a n = A283070 n

end A283070

/-! ## A283070.P8209379564362451512

`A087288(2*n)`
-/

namespace A283070.P8209379564362451512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087288 (2 * n)

end

end A283070.P8209379564362451512

namespace A283070

/-- `A087288(2*n)` -/
def P8209379564362451512.Spec : Prop :=
  ∀ n, P8209379564362451512.a n = A283070 n

end A283070

/-! ## A283070.P5616815487279552649

`A049332(Δ[n²])`
-/

namespace A283070.P5616815487279552649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049332 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A283070.P5616815487279552649

namespace A283070

/-- `A049332(Δ[n²])` -/
def P5616815487279552649.Spec : Prop :=
  ∀ n, P5616815487279552649.a n = A283070 n

end A283070

/-! ## A283070.P9220324255929924114

`A052548(Δ[n²])`
-/

namespace A283070.P9220324255929924114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052548 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A283070.P9220324255929924114

namespace A283070

/-- `A052548(Δ[n²])` -/
def P9220324255929924114.Spec : Prop :=
  ∀ n, P9220324255929924114.a n = A283070 n

end A283070

/-! ## A283070.P5852071405489523381

`A133140(Δ[n²])`
-/

namespace A283070.P5852071405489523381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133140 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A283070.P5852071405489523381

namespace A283070

/-- `A133140(Δ[n²])` -/
def P5852071405489523381.Spec : Prop :=
  ∀ n, P5852071405489523381.a n = A283070 n

end A283070

/-! ## A283070.P165614099015694086

`A135440(Δ[n²])`
-/

namespace A283070.P165614099015694086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135440 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A283070.P165614099015694086

namespace A283070

/-- `A135440(Δ[n²])` -/
def P165614099015694086.Spec : Prop :=
  ∀ n, P165614099015694086.a n = A283070 n

end A283070

/-! ## A283070.P9487841143973879009

`Δ[A081660(2*n)]`
-/

namespace A283070.P9487841143973879009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081660 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283070.P9487841143973879009

namespace A283070

/-- `Δ[A081660(2*n)]` -/
def P9487841143973879009.Spec : Prop :=
  ∀ n, P9487841143973879009.a n = A283070 n

end A283070

/-! ## A283070.P3409725956369206386

`2*(A000302(n)+1)`
-/

namespace A283070.P3409725956369206386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000302 n + 1)

end

end A283070.P3409725956369206386

namespace A283070

/-- `2*(A000302(n)+1)` -/
def P3409725956369206386.Spec : Prop :=
  ∀ n, P3409725956369206386.a n = A283070 n

theorem P3409725956369206386.correct : P3409725956369206386.Spec := by
  intro n
  simp only [A283070, Nat.add_sub_cancel, A283070.P3409725956369206386.a, A283070.P730277057158743359.a, A000302, A000302.P5166485833484575275.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A283070

/-! ## A283070.P18136536248457719029

`2*A123166(n+1)`
-/

namespace A283070.P18136536248457719029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123166 (n + 1)

end

end A283070.P18136536248457719029

namespace A283070

/-- `2*A123166(n+1)` -/
def P18136536248457719029.Spec : Prop :=
  ∀ n, P18136536248457719029.a n = A283070 n

end A283070

/-!
# A283075: Number of time intervals that can be measured with n ropes and a lighter from the moment when the first rope begins burning.

The programs for A283075, there is no canonical definition to state claims against.
-/

/-! ## A283075.P6452634214469170280

`A210357(A111586(n+2)+A005940(n+1))`
-/

namespace A283075.P6452634214469170280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (A111586 (n + 2) + A005940 (n + 1)).toNat

end

end A283075.P6452634214469170280

/-! ## A283075.P4893942658175740535

`A104103(2*A014325(n))`
-/

namespace A283075.P4893942658175740535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104103 (2 * A014325 n).toNat

end

end A283075.P4893942658175740535

/-! ## A283075.P4992254488233065609

`∑[A094192(∑[A200538(n)])]`
-/

namespace A283075.P4992254488233065609
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200538 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094192 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283075.P4992254488233065609

/-!
# A283077: Expansion of Product_{n>=1} (1 - x^(7*n))/(1 - x^n)^8 in powers of x.

The programs for A283077, there is no canonical definition to state claims against.
-/

/-! ## A283077.P18229591314061163880

`A178798(A006128(n))+A023007(n)`
-/

namespace A283077.P18229591314061163880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A006128 n).toNat + A023007 n

end

end A283077.P18229591314061163880

/-! ## A283077.P6662991809869815783

`A178798(A152046(n))+A023007(n)`
-/

namespace A283077.P6662991809869815783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A152046 n).toNat + A023007 n

end

end A283077.P6662991809869815783

/-! ## A283077.P2519744253770173301

`A178798(A227884(n))+A023007(n)`
-/

namespace A283077.P2519744253770173301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A227884 n).toNat + A023007 n

end

end A283077.P2519744253770173301

/-! ## A283077.P15552807161844545922

`A285007(A113703(n))+A277958(n)`
-/

namespace A283077.P15552807161844545922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285007 (A113703 n).toNat + A277958 n

end

end A283077.P15552807161844545922

/-!
# A283078: a(n) = sigma(7*n).

The programs for A283078, the canonical program `A283078.P17181704227828323299` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283078 has offset 1).

The definition of A283078 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(7*(n+1))` (program `A283078.P17181704227828323299`, by `A283078.P17181704227828323299.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A283078.P17181704227828323299

`A000203(7*(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A283078

/-- `A000203(7*(n+1))` -/
def P17181704227828323299.Spec : Prop :=
  ∀ n, P17181704227828323299.a n = A283078 (n + 1)

theorem P17181704227828323299.correct : P17181704227828323299.Spec := by
  intro n
  simp only [A283078, Nat.add_sub_cancel]

end A283078

/-! ## A283078.P14286016551775881573

`∑{d}[7*(n+1), #]`
-/

namespace A283078.P14286016551775881573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A283078.P14286016551775881573

namespace A283078

/-- `∑{d}[7*(n+1), #]` -/
def P14286016551775881573.Spec : Prop :=
  ∀ n, (P14286016551775881573.a n : ℤ) = A283078 (n + 1)

end A283078

/-! ## A283078.P15469199398975310188

`A319527(n+1)+A113957(n+1)`
-/

namespace A283078.P15469199398975310188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319527 (n + 1) + A113957 (n + 1)

end

end A283078.P15469199398975310188

namespace A283078

/-- `A319527(n+1)+A113957(n+1)` -/
def P15469199398975310188.Spec : Prop :=
  ∀ n, P15469199398975310188.a n = A283078 (n + 1)

end A283078

/-! ## A283078.P606185623012899349

`A088841(n+1)*A113957(n+1)`
-/

namespace A283078.P606185623012899349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088841 (n + 1) * A113957 (n + 1)

end

end A283078.P606185623012899349

namespace A283078

/-- `A088841(n+1)*A113957(n+1)` -/
def P606185623012899349.Spec : Prop :=
  ∀ n, P606185623012899349.a n = A283078 (n + 1)

end A283078

/-! ## A283078.P3706889684520213386

`A074400(A008589(n+1))/2`
-/

namespace A283078.P3706889684520213386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (A008589 (n + 1)).toNat : ℚ) / 2

end

end A283078.P3706889684520213386

namespace A283078

/-- `A074400(A008589(n+1))/2` -/
def P3706889684520213386.Spec : Prop :=
  ∀ n, P3706889684520213386.a n = (A283078 (n + 1) : ℚ)

end A283078

/-! ## A283078.P16030512149669335151

`A242962(7*(n+1))`
-/

namespace A283078.P16030512149669335151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242962 (7 * (n + 1))

end

end A283078.P16030512149669335151

namespace A283078

/-- `A242962(7*(n+1))` -/
def P16030512149669335151.Spec : Prop :=
  ∀ n, P16030512149669335151.a n = A283078 (n + 1)

end A283078

/-! ## A283078.P4402298843652158432

`A039653(7*(n+1))+1`
-/

namespace A283078.P4402298843652158432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (7 * (n + 1)) + 1

end

end A283078.P4402298843652158432

namespace A283078

/-- `A039653(7*(n+1))+1` -/
def P4402298843652158432.Spec : Prop :=
  ∀ n, P4402298843652158432.a n = A283078 (n + 1)

end A283078

/-! ## A283078.P6902777749297667243

`A088580(7*(n+1))-1`
-/

namespace A283078.P6902777749297667243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (7 * (n + 1)) - 1

end

end A283078.P6902777749297667243

namespace A283078

/-- `A088580(7*(n+1))-1` -/
def P6902777749297667243.Spec : Prop :=
  ∀ n, P6902777749297667243.a n = A283078 (n + 1)

theorem P6902777749297667243.correct : P6902777749297667243.Spec := by
  intro n
  simp only [A283078, Nat.add_sub_cancel, A283078.P6902777749297667243.a, A283078.P17181704227828323299.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A088580, A088580.P3089093194242277422.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A283078

/-! ## A283078.P14630840537303673527

`A245092(2*n+12*(n+1)+1)`
-/

namespace A283078.P14630840537303673527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 12 * (n + 1) + 1)

end

end A283078.P14630840537303673527

namespace A283078

/-- `A245092(2*n+12*(n+1)+1)` -/
def P14630840537303673527.Spec : Prop :=
  ∀ n, P14630840537303673527.a n = A283078 (n + 1)

end A283078

/-! ## A283078.P10663479023394529385

`A326065(A008596(n+1))`
-/

namespace A283078.P10663479023394529385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (A008596 (n + 1)).toNat

end

end A283078.P10663479023394529385

namespace A283078

/-- `A326065(A008596(n+1))` -/
def P10663479023394529385.Spec : Prop :=
  ∀ n, P10663479023394529385.a n = A283078 (n + 1)

end A283078

/-! ## A283078.P7413973387926981419

`A319526(A374008(n+1))`
-/

namespace A283078.P7413973387926981419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319526 (A374008 (n + 1)).toNat

end

end A283078.P7413973387926981419

namespace A283078

/-- `A319526(A374008(n+1))` -/
def P7413973387926981419.Spec : Prop :=
  ∀ n, P7413973387926981419.a n = A283078 (n + 1)

end A283078

/-!
# A283079: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 573", based on the 5-celled von Neumann neighborhood.

The programs for A283079, there is no canonical definition to state claims against.
-/

/-! ## A283079.P525775604769876386

`A007088(A283081(n))`
-/

namespace A283079.P525775604769876386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283081 n).toNat

end

end A283079.P525775604769876386

/-! ## A283079.P16728570910794506780

`A185544(2*A283081(n))`
-/

namespace A283079.P16728570910794506780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283081 n).toNat

end

end A283079.P16728570910794506780

/-!
# A283080: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 573", based on the 5-celled von Neumann neighborhood.

The programs for A283080, there is no canonical definition to state claims against.
-/

/-! ## A283080.P6274488635821477237

`A007088(A283082(n))`
-/

namespace A283080.P6274488635821477237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283082 n).toNat

end

end A283080.P6274488635821477237

/-! ## A283080.P417475482315097355

`A305989(A283081(n))`
-/

namespace A283080.P417475482315097355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283081 n).toNat

end

end A283080.P417475482315097355

/-! ## A283080.P168423176234127638

`A185544(2*A283082(n))`
-/

namespace A283080.P168423176234127638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283082 n).toNat

end

end A283080.P168423176234127638

/-! ## A283080.P6642137035770584955

`A185544(lcm(2, A283082(n)))`
-/

namespace A283080.P6642137035770584955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283082 n))

end

end A283080.P6642137035770584955

/-! ## A283080.P6512846511022024430

`A185544(A283082(n)+A283082(n))`
-/

namespace A283080.P6512846511022024430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A283082 n + A283082 n).toNat

end

end A283080.P6512846511022024430

/-!
# A283082: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 573", based on the 5-celled von Neumann neighborhood.

The programs for A283082, there is no canonical definition to state claims against.
-/

/-! ## A283082.P14604833898090812126

`A030101(A283081(n))`
-/

namespace A283082.P14604833898090812126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A283081 n).toNat

end

end A283082.P14604833898090812126

/-! ## A283082.P16956550202735763821

`A325401(2*A283081(n))`
-/

namespace A283082.P16956550202735763821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A283081 n).toNat

end

end A283082.P16956550202735763821

/-! ## A283082.P14518871899356911969

`A325401(lcm(2, A283081(n)))`
-/

namespace A283082.P14518871899356911969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm 2 (A283081 n))

end

end A283082.P14518871899356911969

/-! ## A283082.P14311390933236868060

`and(A016813(A028994(3*n+4)), A288975(n))`
-/

namespace A283082.P14311390933236868060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016813 (A028994 (3 * n + 4)).toNat) (A288975 n)

end

end A283082.P14311390933236868060

/-!
# A283083: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 577", based on the 5-celled von Neumann neighborhood.

The programs for A283083, there is no canonical definition to state claims against.
-/

/-! ## A283083.P13205426604335159484

`A000042(n+1)%A282682(A028310(n))`
-/

namespace A283083.P13205426604335159484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000042 (n + 1)) (A282682 (A028310 n).toNat)

end

end A283083.P13205426604335159484

/-! ## A283083.P14120708136435566901

`A282683(n)+A283084(n)-A282682(n)`
-/

namespace A283083.P14120708136435566901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282683 n + (A283084 n - A282682 n)

end

end A283083.P14120708136435566901

/-! ## A283083.P6859727366095804832

`A007088(A283085(n))`
-/

namespace A283083.P6859727366095804832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283085 n).toNat

end

end A283083.P6859727366095804832

/-! ## A283083.P8098049472257794796

`A007088(A282421(n)+A283181(n)-A282684(n))`
-/

namespace A283083.P8098049472257794796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282421 n + (A283181 n - A282684 n)).toNat

end

end A283083.P8098049472257794796

/-! ## A283083.P4036275596506418318

`A007088(A282685(n)+A283086(n)-A282684(n))`
-/

namespace A283083.P4036275596506418318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282685 n + (A283086 n - A282684 n)).toNat

end

end A283083.P4036275596506418318

/-!
# A283084: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 577", based on the 5-celled von Neumann neighborhood.

The programs for A283084, there is no canonical definition to state claims against.
-/

/-! ## A283084.P4471748572231305930

`A282682(n)+A283083(n)-A282683(n)`
-/

namespace A283084.P4471748572231305930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282682 n + (A283083 n - A282683 n)

end

end A283084.P4471748572231305930

/-! ## A283084.P6951041594341352251

`A007088(A283086(n))`
-/

namespace A283084.P6951041594341352251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283086 n).toNat

end

end A283084.P6951041594341352251

/-! ## A283084.P12466810660569917160

`A007088(A282421(n)+A283181(n)-A282685(n))`
-/

namespace A283084.P12466810660569917160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282421 n + (A283181 n - A282685 n)).toNat

end

end A283084.P12466810660569917160

/-! ## A283084.P11874490424409521273

`A007088(A282422(n)+A283182(n)-A282685(n))`
-/

namespace A283084.P11874490424409521273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282422 n + (A283182 n - A282685 n)).toNat

end

end A283084.P11874490424409521273

/-! ## A283084.P3180368857049067107

`A007088(A282684(n)+A283085(n)-A282685(n))`
-/

namespace A283084.P3180368857049067107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282684 n + (A283085 n - A282685 n)).toNat

end

end A283084.P3180368857049067107

/-!
# A283085: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 577", based on the 5-celled von Neumann neighborhood.

The programs for A283085, there is no canonical definition to state claims against.
-/

/-! ## A283085.P5733917944909348161

`A282685(n)+A283086(n)-A282684(n)`
-/

namespace A283085.P5733917944909348161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282685 n + (A283086 n - A282684 n)

end

end A283085.P5733917944909348161

/-! ## A283085.P16664319653776320351

`xor(record[A077896(n+1)], A282684(n))`
-/

namespace A283085.P16664319653776320351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A282684 n)

end

end A283085.P16664319653776320351

/-! ## A283085.P7428730171740962955

`xor(record[A324715(n+1)], A282684(n))`
-/

namespace A283085.P7428730171740962955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A282684 n)

end

end A283085.P7428730171740962955

/-! ## A283085.P3715075607597270534

`xor(A077896(A004277(n)), A282684(n))`
-/

namespace A283085.P3715075607597270534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077896 (A004277 n).toNat) (A282684 n)

end

end A283085.P3715075607597270534

/-! ## A283085.P13060218789465601259

`A282421(n)+A283181(n)-A282684(n)`
-/

namespace A283085.P13060218789465601259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282421 n + (A283181 n - A282684 n)

end

end A283085.P13060218789465601259

/-! ## A283085.P15775567193795483221

`or(A000225(n), A052531(n))-A282684(n)`
-/

namespace A283085.P15775567193795483221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000225 n) (A052531 n) - A282684 n

end

end A283085.P15775567193795483221

/-! ## A283085.P9788878517860706790

`A126646(n)-A282684(n)%A282682(n)`
-/

namespace A283085.P9788878517860706790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A282684 n) (A282682 n)

end

end A283085.P9788878517860706790

/-!
# A283086: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 577", based on the 5-celled von Neumann neighborhood.

The programs for A283086, there is no canonical definition to state claims against.
-/

/-! ## A283086.P2842614146518682177

`A282684(n)+A283085(n)-A282685(n)`
-/

namespace A283086.P2842614146518682177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282684 n + (A283085 n - A282685 n)

end

end A283086.P2842614146518682177

/-! ## A283086.P11258608036727865908

`xor(record[A077896(n+1)], A282685(n))`
-/

namespace A283086.P11258608036727865908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A282685 n)

end

end A283086.P11258608036727865908

/-! ## A283086.P12257507339971433745

`xor(record[A324715(n+1)], A282685(n))`
-/

namespace A283086.P12257507339971433745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A282685 n)

end

end A283086.P12257507339971433745

/-! ## A283086.P2236389671575170201

`xor(A077896(A004277(n)), A282685(n))`
-/

namespace A283086.P2236389671575170201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077896 (A004277 n).toNat) (A282685 n)

end

end A283086.P2236389671575170201

/-! ## A283086.P12138685959260774835

`A282421(n)+A283181(n)-A282685(n)`
-/

namespace A283086.P12138685959260774835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282421 n + (A283181 n - A282685 n)

end

end A283086.P12138685959260774835

/-! ## A283086.P1001942603261060532

`A282422(n)+A283182(n)-A282685(n)`
-/

namespace A283086.P1001942603261060532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282422 n + (A283182 n - A282685 n)

end

end A283086.P1001942603261060532

/-! ## A283086.P7019759991249172581

`or(A000225(n), A052531(n))-A282685(n)`
-/

namespace A283086.P7019759991249172581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000225 n) (A052531 n) - A282685 n

end

end A283086.P7019759991249172581

/-! ## A283086.P10457518565543328202

`A126646(n)-A282685(n)%A282682(n)`
-/

namespace A283086.P10457518565543328202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A282685 n) (A282682 n)

end

end A283086.P10457518565543328202

/-!
# A283087: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 579", based on the 5-celled von Neumann neighborhood.

The programs for A283087, there is no canonical definition to state claims against.
-/

/-! ## A283087.P9669990814003930984

`A007088(A283089(n))`
-/

namespace A283087.P9669990814003930984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283089 n).toNat

end

end A283087.P9669990814003930984

/-! ## A283087.P7635751119367880600

`A305989(A283090(n))`
-/

namespace A283087.P7635751119367880600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283090 n).toNat

end

end A283087.P7635751119367880600

/-! ## A283087.P4749026771802215958

`A185544(2*A283089(n))`
-/

namespace A283087.P4749026771802215958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283089 n).toNat

end

end A283087.P4749026771802215958

/-! ## A283087.P2433835253989180761

`A185544(lcm(2, A283089(n)))`
-/

namespace A283087.P2433835253989180761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283089 n))

end

end A283087.P2433835253989180761

/-!
# A283088: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 579", based on the 5-celled von Neumann neighborhood.

The programs for A283088, there is no canonical definition to state claims against.
-/

/-! ## A283088.P18269965250014125806

`A007088(A283090(n))`
-/

namespace A283088.P18269965250014125806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283090 n).toNat

end

end A283088.P18269965250014125806

/-! ## A283088.P11961346933904272233

`A185544(2*A283090(n))`
-/

namespace A283088.P11961346933904272233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283090 n).toNat

end

end A283088.P11961346933904272233

/-! ## A283088.P1384554170981331803

`A283141(n^A006723(n))`
-/

namespace A283088.P1384554170981331803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283141 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A006723 n : ℤ))).toNat

end

end A283088.P1384554170981331803

/-!
# A283089: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 579", based on the 5-celled von Neumann neighborhood.

The programs for A283089, there is no canonical definition to state claims against.
-/

/-! ## A283089.P17264427891906368676

`A030101(A283090(n))`
-/

namespace A283089.P17264427891906368676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A283090 n).toNat

end

end A283089.P17264427891906368676

/-! ## A283089.P13213573040920700459

`A325401(lcm(2, A283090(n)))`
-/

namespace A283089.P13213573040920700459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm 2 (A283090 n))

end

end A283089.P13213573040920700459

/-! ## A283089.P17676980819231174826

`A325401(and(A126646(n), A283090(n)))`
-/

namespace A283089.P17676980819231174826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.land (A126646 n) (A283090 n)).toNat

end

end A283089.P17676980819231174826

/-! ## A283089.P3500952006395955403

`A325401(A283090(n)%A283053(n+1))`
-/

namespace A283089.P3500952006395955403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.tmod (A283090 n) (A283053 (n + 1))).toNat

end

end A283089.P3500952006395955403

/-! ## A283089.P18387472646263032987

`A325401(A283090(n))%A283047(n+3)`
-/

namespace A283089.P18387472646263032987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325401 (A283090 n).toNat) (A283047 (n + 3))

end

end A283089.P18387472646263032987

/-!
# A283091: Maximal order of the trinomials of degree n over GF(2).

The programs for A283091, there is no canonical definition to state claims against.
-/

/-! ## A283091.P15362147784680236067

`A127287(2^(n+2)-1)`
-/

namespace A283091.P15362147784680236067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (2 ^ (n + 2) - 1)

end

end A283091.P15362147784680236067

/-! ## A283091.P676474522630864775

`record[A127287(∑[A270107(n)])]`
-/

namespace A283091.P676474522630864775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270107 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283091.P676474522630864775

/-! ## A283091.P8207950708497517313

`record[A127287(A038712(2*(n+1)))]`
-/

namespace A283091.P8207950708497517313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (A038712 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283091.P8207950708497517313

/-! ## A283091.P3750936358596713661

`record[A127287(A243071(2*n+3))]`
-/

namespace A283091.P3750936358596713661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (A243071 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283091.P3750936358596713661

/-! ## A283091.P2006963889580325739

`record[A127287(A174238(2*comp[3*n]))]`
-/

namespace A283091.P2006963889580325739
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (A174238 (2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283091.P2006963889580325739

/-!
# A283092: The smallest square referenced in A280296 (Squarefree numbers n such that 2^n - 1 is divisible by a square > 1).

The programs for A283092, there is no canonical definition to state claims against.
-/

/-! ## A283092.P10407302125333350598

`A283245(n+1)²`
-/

namespace A283092.P10407302125333350598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283245 (n + 1) ^ 2

end

end A283092.P10407302125333350598

/-! ## A283092.P5203856327802304619

`A080335(A283245(n+1)-1)`
-/

namespace A283092.P5203856327802304619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080335 (A283245 (n + 1) - 1).toNat

end

end A283092.P5203856327802304619

/-! ## A283092.P13373920380665792442

`A002620(2*A283245(n+1))`
-/

namespace A283092.P13373920380665792442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A283245 (n + 1)).toNat

end

end A283092.P13373920380665792442

/-! ## A283092.P14276457314038485557

`A000265(A283245(n+1)^2)`
-/

namespace A283092.P14276457314038485557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A283245 (n + 1) ^ 2).toNat

end

end A283092.P14276457314038485557

/-! ## A283092.P269583068927044601

`A129598(2*A283245(n+1))/2`
-/

namespace A283092.P269583068927044601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129598 (2 * A283245 (n + 1)).toNat : ℚ) / 2

end

end A283092.P269583068927044601

/-! ## A283092.P3619471720576447495

`A283245(n+1)^A020639(2*(n+1))`
-/

namespace A283092.P3619471720576447495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283245 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A283092.P3619471720576447495

/-! ## A283092.P4477617474421027979

`A283245(n+1)^A000040(gcd(n, n+1))`
-/

namespace A283092.P4477617474421027979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283245 (n + 1) : ℚ) ^ (A000040 (Nat.gcd n (n + 1)) : ℤ)

end

end A283092.P4477617474421027979

/-!
# A283093: Number of n X n 0..1 arrays with no 1 equal to more than one of its horizontal and vertical neighbors, with the exception of exactly two elements.

The programs for A283093, there is no canonical definition to state claims against.
-/

/-! ## A283093.P17284657627008906798

`A283100(∑[4*n]+1)`
-/

namespace A283093.P17284657627008906798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283100 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A283093.P17284657627008906798

/-! ## A283093.P15993893894970171894

`lcm(2, A283100(A001844(n)))`
-/

namespace A283093.P15993893894970171894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A283100 (A001844 n).toNat)

end

end A283093.P15993893894970171894

/-! ## A283093.P3235189821009615918

`A283100(A001844(n))+A025466(n)`
-/

namespace A283093.P3235189821009615918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283100 (A001844 n).toNat + A025466 n

end

end A283093.P3235189821009615918

/-! ## A283093.P14071737763882216482

`A283100(A001844(n))+A085861(n)`
-/

namespace A283093.P14071737763882216482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283100 (A001844 n).toNat + A085861 n

end

end A283093.P14071737763882216482

/-! ## A283093.P15902928043810097119

`A283100(A001844(n))%(A000040(n+3)+4)!`
-/

namespace A283093.P15902928043810097119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283100 (A001844 n).toNat) (Nat.factorial (A000040 (n + 3) + 4).toNat : ℤ)

end

end A283093.P15902928043810097119

/-!
# A283094: Number of n X 2 0..1 arrays with no 1 equal to more than one of its horizontal and vertical neighbors, with the exception of exactly two elements.

The programs for A283094, there is no canonical definition to state claims against.
-/

/-! ## A283094.P11038173408291124813

`A283100(∑[n+1]+2)`
-/

namespace A283094.P11038173408291124813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283100 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A283094.P11038173408291124813

/-! ## A283094.P16808078025944719031

`lcm(2, A283100(A000096(n)+3))`
-/

namespace A283094.P16808078025944719031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A283100 (A000096 n + 3).toNat)

end

end A283094.P16808078025944719031

/-! ## A283094.P225104565798457568

`A283100(A000096(n)+3)+A000007(n+1)`
-/

namespace A283094.P225104565798457568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283100 (A000096 n + 3).toNat + A000007 (n + 1)

end

end A283094.P225104565798457568

/-! ## A283094.P1937559413642752468

`A283100(A000096(n)+3)+A000038(n+1)`
-/

namespace A283094.P1937559413642752468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283100 (A000096 n + 3).toNat + A000038 (n + 1)

end

end A283094.P1937559413642752468

/-! ## A283094.P14152280536779655343

`A007318(C(2, n))*A283100(A000096(n)+3)`
-/

namespace A283094.P14152280536779655343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A283100 (A000096 n + 3).toNat

end

end A283094.P14152280536779655343

/-!
# A283095: Number of nX3 0..1 arrays with no 1 equal to more than one of its horizontal and vertical neighbors, with the exception of exactly two elements.

The programs for A283095, there is no canonical definition to state claims against.
-/

/-! ## A283095.P3838945182148366693

`A283100(∑[n+2]+4)`
-/

namespace A283095.P3838945182148366693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283100 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A283095.P3838945182148366693

/-! ## A283095.P7020262097842251454

`A283100(A167614(n+1))+A025443(n)`
-/

namespace A283095.P7020262097842251454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283100 (A167614 (n + 1)).toNat + A025443 n

end

end A283095.P7020262097842251454

/-! ## A283095.P18038892273701445514

`A283100(A167614(n+1))+A025466(n)`
-/

namespace A283095.P18038892273701445514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283100 (A167614 (n + 1)).toNat + A025466 n

end

end A283095.P18038892273701445514

/-! ## A283095.P9764005568005730731

`A283100(A167614(n+1))+A025469(n)`
-/

namespace A283095.P9764005568005730731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283100 (A167614 (n + 1)).toNat + A025469 n

end

end A283095.P9764005568005730731

/-! ## A283095.P16261635685552169678

`A016068(n)*A283100(A167614(n+1))`
-/

namespace A283095.P16261635685552169678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016068 n * A283100 (A167614 (n + 1)).toNat

end

end A283095.P16261635685552169678

/-!
# A283096: Number of nX4 0..1 arrays with no 1 equal to more than one of its horizontal and vertical neighbors, with the exception of exactly two elements.

The programs for A283096, there is no canonical definition to state claims against.
-/

/-! ## A283096.P2661827629884691903

`A283100(A374004(n+1))`
-/

namespace A283096.P2661827629884691903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283100 (A374004 (n + 1)).toNat

end

end A283096.P2661827629884691903

/-! ## A283096.P14509447338251756029

`A283100(A141214(n)+7)`
-/

namespace A283096.P14509447338251756029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283100 (A141214 n + 7).toNat

end

end A283096.P14509447338251756029

/-! ## A283096.P12704506986304056272

`A283100(A052905(n)+9)`
-/

namespace A283096.P12704506986304056272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283100 (A052905 n + 9).toNat

end

end A283096.P12704506986304056272

/-! ## A283096.P12464608660318695830

`A283100(A055999(n)+10)`
-/

namespace A283096.P12464608660318695830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283100 (A055999 n + 10).toNat

end

end A283096.P12464608660318695830

/-! ## A283096.P1554239996475259210

`A283100(A167614(n+2)+1)`
-/

namespace A283096.P1554239996475259210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283100 (A167614 (n + 2) + 1).toNat

end

end A283096.P1554239996475259210

/-!
# A283097: Number of nX5 0..1 arrays with no 1 equal to more than one of its horizontal and vertical neighbors, with the exception of exactly two elements.

The programs for A283097, there is no canonical definition to state claims against.
-/

/-! ## A283097.P8467340709592707830

`A283100(A374005(n+1))`
-/

namespace A283097.P8467340709592707830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283100 (A374005 (n + 1)).toNat

end

end A283097.P8467340709592707830

/-! ## A283097.P17294758050653711736

`A283100(A056000(n)+15)`
-/

namespace A283097.P17294758050653711736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283100 (A056000 n + 15).toNat

end

end A283097.P17294758050653711736

/-! ## A283097.P843224005409641354

`A283100(Δ[A264443(n)])`
-/

namespace A283097.P843224005409641354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283100 (f1 (n + 1) - f1 n).toNat

end

end A283097.P843224005409641354

/-! ## A283097.P11626016487404443183

`A283100(eq[4, A193592(n)])`
-/

namespace A283097.P11626016487404443183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283097.P11626016487404443183

/-! ## A283097.P6556748419302835576

`A283100(eq[5, A239144(n)])`
-/

namespace A283097.P6556748419302835576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283097.P6556748419302835576

/-!
# A283098: Number of nX6 0..1 arrays with no 1 equal to more than one of its horizontal and vertical neighbors, with the exception of exactly two elements.

The programs for A283098, there is no canonical definition to state claims against.
-/

/-! ## A283098.P2356340408071096587

`A283100(A374007(n+1))`
-/

namespace A283098.P2356340408071096587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283100 (A374007 (n + 1)).toNat

end

end A283098.P2356340408071096587

/-! ## A283098.P14018073851216456179

`A283100(Δ[A264443(n)]+10)`
-/

namespace A283098.P14018073851216456179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283100 (f1 (n + 1) - f1 n + 10).toNat

end

end A283098.P14018073851216456179

/-! ## A283098.P9164877467329782010

`A283100(A000124(n+5)+5)`
-/

namespace A283098.P9164877467329782010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283100 (A000124 (n + 5) + 5).toNat

end

end A283098.P9164877467329782010

/-! ## A283098.P1061530381976720203

`A283100(eq[7, A131818(n+1)])`
-/

namespace A283098.P1061530381976720203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283098.P1061530381976720203

/-! ## A283098.P2395622035293286671

`A283100(eq[3, A219347(n)])`
-/

namespace A283098.P2395622035293286671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283098.P2395622035293286671

/-!
# A283099: Number of nX7 0..1 arrays with no 1 equal to more than one of its horizontal and vertical neighbors, with the exception of exactly two elements.

The programs for A283099, there is no canonical definition to state claims against.
-/

/-! ## A283099.P15890673012390371961

`A283100(A374008(n+1))`
-/

namespace A283099.P15890673012390371961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283100 (A374008 (n + 1)).toNat

end

end A283099.P15890673012390371961

/-! ## A283099.P15955640327510694801

`A283100(A056119(n)+28)`
-/

namespace A283099.P15955640327510694801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283100 (A056119 n + 28).toNat

end

end A283099.P15955640327510694801

/-! ## A283099.P10915454620027378529

`A283100(eq[11, A066657(n)])`
-/

namespace A283099.P10915454620027378529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283099.P10915454620027378529

/-! ## A283099.P695422002380008170

`A283100(A000217(n+6)+7)`
-/

namespace A283099.P695422002380008170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283100 (A000217 (n + 6) + 7).toNat

end

end A283099.P695422002380008170

/-! ## A283099.P13117331322684228589

`A283100(eq[8, A131818(n+1)])`
-/

namespace A283099.P13117331322684228589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283099.P13117331322684228589

