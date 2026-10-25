import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A105800: Greatest Fibonacci number that is a proper divisor of the n-th Fibonacci number; a(1) = a(2) = 1.

The programs for A105800, there is no canonical definition to state claims against.
-/

/-! ## A105800.P16311660683541653825

`A000045(A032742(n+1))`
-/

namespace A105800.P16311660683541653825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A032742 (n + 1)).toNat

end

end A105800.P16311660683541653825

/-! ## A105800.P4573164044566864604

`A280686(A000045(n+1))`
-/

namespace A105800.P4573164044566864604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280686 (A000045 (n + 1)).toNat

end

end A105800.P4573164044566864604

/-! ## A105800.P14715112674172204698

`A280688(2*(n+1))`
-/

namespace A105800.P14715112674172204698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280688 (2 * (n + 1))

end

end A105800.P14715112674172204698

/-! ## A105800.P449907805524864883

`A212804(A032742(n+1)+1)`
-/

namespace A105800.P449907805524864883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A032742 (n + 1) + 1).toNat

end

end A105800.P449907805524864883

/-! ## A105800.P5782317506387127350

`A000045(A054576(2*(n+1)))`
-/

namespace A105800.P5782317506387127350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A054576 (2 * (n + 1))).toNat

end

end A105800.P5782317506387127350

/-! ## A105800.P7931865687788693606

`A103609(2*A054576(2*(n+1)))`
-/

namespace A105800.P7931865687788693606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A054576 (2 * (n + 1))).toNat

end

end A105800.P7931865687788693606

/-! ## A105800.P1143714687278354419

`A000045(1-A060681(n+1)+n)`
-/

namespace A105800.P1143714687278354419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (1 - A060681 (n + 1) + (n : ℤ)).toNat

end

end A105800.P1143714687278354419

/-! ## A105800.P16473888402710433227

`A000045((n+1)/A020639(n+1))`
-/

namespace A105800.P16473888402710433227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat

end

end A105800.P16473888402710433227

/-! ## A105800.P2817394349604705522

`A000045(gcd(n+1, A060681(n+1)))`
-/

namespace A105800.P2817394349604705522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.gcd (n + 1 : ℤ) (A060681 (n + 1)))

end

end A105800.P2817394349604705522

/-! ## A105800.P15923808528245875898

`A000045((n+1)*A020639(n+1)^-1)`
-/

namespace A105800.P15923808528245875898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (A020639 (n + 1) : ℚ) ^ (-1 : ℤ))).toNat

end

end A105800.P15923808528245875898

/-! ## A105800.P13820701808308768192

`A000045(A108738(A080512(n+1)))`
-/

namespace A105800.P13820701808308768192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A108738 (A080512 (n + 1)).toNat).toNat

end

end A105800.P13820701808308768192

/-! ## A105800.P7423084078423280708

`A000045(A004525(A286472(n+1)))`
-/

namespace A105800.P7423084078423280708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004525 (A286472 (n + 1)).toNat).toNat

end

end A105800.P7423084078423280708

/-! ## A105800.P5275276936596572421

`A000045(A108738(A257143(n+1)))`
-/

namespace A105800.P5275276936596572421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A108738 (A257143 (n + 1)).toNat).toNat

end

end A105800.P5275276936596572421

/-! ## A105800.P989205209707824049

`A000045(xor(A318505(n+1), A318507(n+1)))`
-/

namespace A105800.P989205209707824049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.xor (A318505 (n + 1)) (A318507 (n + 1))).toNat

end

end A105800.P989205209707824049

/-! ## A105800.P16200253474052207781

`A123231(2*A032742(n+1)-1)`
-/

namespace A105800.P16200253474052207781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 (2 * A032742 (n + 1) - 1).toNat

end

end A105800.P16200253474052207781

/-! ## A105800.P18082558137070251411

`A123231(A032742(n+1)+A032742(n+1)-1)`
-/

namespace A105800.P18082558137070251411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 (A032742 (n + 1) + (A032742 (n + 1) - 1)).toNat

end

end A105800.P18082558137070251411

/-! ## A105800.P563659156887775771

`A000045(n+1)/A280690(n+1)`
-/

namespace A105800.P563659156887775771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / (A280690 (n + 1) : ℚ)

end

end A105800.P563659156887775771

/-! ## A105800.P7821639591411299924

`A000045(n+1)/A280689(2*(n+1))`
-/

namespace A105800.P7821639591411299924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / (A280689 (2 * (n + 1)) : ℚ)

end

end A105800.P7821639591411299924

/-!
# A105801: Fibonacci-Collatz sequence: a(1)=1, a(2)=2; for n > 2, let fib = a(n-1) + a(n-2); if fib is odd then a(n) = 3*fib + 1 else a(n) = fib/2.

The programs for A105801, there is no canonical definition to state claims against.
-/

/-! ## A105801.P8158515794333935945

`A006370(a(n-1)+a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A105801.P8158515794333935945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A006370 (a (n - 1) + a (n - 2)).toNat

end

end A105801.P8158515794333935945

/-! ## A105801.P11207705666008187502

`A006370(a(n-1)-floor(-a(n-2)))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A105801.P11207705666008187502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A006370 (a (n - 1) - (-a (n - 2))).toNat

end

end A105801.P11207705666008187502

/-! ## A105801.P15966473814325486126

`A006370(a(n-1)-ceil(-a(n-2)))` with `a(0)=1, a(1)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A105801.P15966473814325486126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A006370 (a (n - 1) - (-a (n - 2))).toNat

end

end A105801.P15966473814325486126

/-! ## A105801.P15074283437294169498

`A006370(a(n-1)-round(-a(n-2)))` with `a(0)=1, a(1)=2`

`round` is left out, it is the identity on integers.
-/

namespace A105801.P15074283437294169498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A006370 (a (n - 1) - (-a (n - 2))).toNat

end

end A105801.P15074283437294169498

/-! ## A105801.P12131097019163387615

`A006370(a(n-1)-(char[1]-a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A105801.P12131097019163387615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A006370 (a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))).toNat

end

end A105801.P12131097019163387615

/-!
# A105804: a(n)=F(n-1)a(n-1)+F(n)a(n-2), where F = A000045 (Fibonacci numbers), a(0)=0, a(1)=1.

The programs for A105804, there is no canonical definition to state claims against.
-/

/-! ## A105804.P13027801043442386166

`∑[A103221(Δ[A307725(n)])]`
-/

namespace A105804.P13027801043442386166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307725 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105804.P13027801043442386166

/-! ## A105804.P3277136507271437846

`A008615(Δ[A159603(n)]+n)`
-/

namespace A105804.P3277136507271437846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A105804.P3277136507271437846

/-! ## A105804.P6296988257222039874

`A103221(A307725(n+1)+∑[n])`
-/

namespace A105804.P6296988257222039874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A307725 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A105804.P6296988257222039874

/-!
# A105805: Irregular triangle read by rows: T(n,k) is the Dyson's rank of the k-th partition of n in Abramowitz-Stegun order.

The programs for A105805, there is no canonical definition to state claims against.
-/

/-! ## A105805.P407305076265825199

`A257541(A185974(n+1))`
-/

namespace A105805.P407305076265825199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257541 (A185974 (n + 1)).toNat

end

end A105805.P407305076265825199

/-! ## A105805.P499617835654842746

`A049085(n+1)-A036043(n+1)`
-/

namespace A105805.P499617835654842746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049085 (n + 1) - A036043 (n + 1)

end

end A105805.P499617835654842746

/-! ## A105805.P14671436875311508189

`A049085(n+1)-A001222(A185974(n+1))`
-/

namespace A105805.P14671436875311508189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049085 (n + 1) - A001222 (A185974 (n + 1)).toNat

end

end A105805.P14671436875311508189

/-! ## A105805.P17962126155252629258

`A061395(A185974(n+1))-A036043(n+1)`
-/

namespace A105805.P17962126155252629258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A185974 (n + 1)).toNat - A036043 (n + 1)

end

end A105805.P17962126155252629258

/-! ## A105805.P9281309726375755968

`A001222(A334434(n+1))-A036043(n+1)`
-/

namespace A105805.P9281309726375755968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A334434 (n + 1)).toNat - A036043 (n + 1)

end

end A105805.P9281309726375755968

/-! ## A105805.P72358650828212014

`A036036(∑[A036043(n+1)])-A036043(n+1)`
-/

namespace A105805.P72358650828212014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036036 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A036043 (n + 1)

end

end A105805.P72358650828212014

/-! ## A105805.P1211050764645896296

`A036037(∑[A036043(n)]+1)-A036043(n+1)`
-/

namespace A105805.P1211050764645896296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036037 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat - A036043 (n + 1)

end

end A105805.P1211050764645896296

/-! ## A105805.P16464639429948564290

`A049085(n+1)-A080576(∑[A049085(n+1)])`
-/

namespace A105805.P16464639429948564290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049085 (n + 1) - A080576 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A105805.P16464639429948564290

/-!
# A105806: Triangle of number of partitions of n with nonnegative Dyson rank r=0,1,...,n-1.

The programs for A105806, there is no canonical definition to state claims against.
-/

/-! ## A105806.P8126357223573686825

`A063995(A004201(n+1))`
-/

namespace A105806.P8126357223573686825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063995 (A004201 (n + 1)).toNat

end

end A105806.P8126357223573686825

/-! ## A105806.P5757262201616820497

`A063995(A061885(n)+1)`
-/

namespace A105806.P5757262201616820497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063995 (A061885 n + 1).toNat

end

end A105806.P5757262201616820497

/-! ## A105806.P15090625969506480666

`A063995(A057944(n)+1+n)`
-/

namespace A105806.P15090625969506480666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063995 (A057944 n + 1 + (n : ℤ)).toNat

end

end A105806.P15090625969506480666

/-! ## A105806.P742388370159949783

`A063995(2*n+1-A002262(n))`
-/

namespace A105806.P742388370159949783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063995 ((2 * n + 1 : ℤ) - A002262 n).toNat

end

end A105806.P742388370159949783

/-! ## A105806.P1867274127029547767

`A063995(n-A002262(n)+n+1)`
-/

namespace A105806.P1867274127029547767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063995 ((n : ℤ) - A002262 n + (n + 1 : ℤ)).toNat

end

end A105806.P1867274127029547767

/-! ## A105806.P17579594928743514210

`A330374(n+1)/A238303(n)`
-/

namespace A105806.P17579594928743514210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330374 (n + 1) : ℚ) / (A238303 n : ℚ)

end

end A105806.P17579594928743514210

/-! ## A105806.P17126332603284826111

`A330374(n+1)/A014963(A059268(n))`
-/

namespace A105806.P17126332603284826111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330374 (n + 1) : ℚ) / (A014963 (A059268 n).toNat : ℚ)

end

end A105806.P17126332603284826111

/-! ## A105806.P11646629116298034701

`A330374(n+1)/A020639(A124927(n))`
-/

namespace A105806.P11646629116298034701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330374 (n + 1) : ℚ) / (A020639 (A124927 n).toNat : ℚ)

end

end A105806.P11646629116298034701

/-!
# A105809: Riordan array (1/(1 - x - x^2), x/(1 - x)).

The programs for A105809, there is no canonical definition to state claims against.
-/

/-! ## A105809.P11138368547104042137

`A228074(gcd(n+1, Δ[A002024(n+1)]))`
-/

namespace A105809.P11138368547104042137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228074 (Int.gcd (n + 1 : ℤ) (f1 (n + 1) - f1 n))

end

end A105809.P11138368547104042137

/-! ## A105809.P4697843996043767003

`A108617(A007401(n+1))-A136431(A007401(n+1))`
-/

namespace A105809.P4697843996043767003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108617 (A007401 (n + 1)).toNat - A136431 (A007401 (n + 1)).toNat

end

end A105809.P4697843996043767003

/-! ## A105809.P7323140739958869407

`A354267(A014132(n+1))`
-/

namespace A105809.P7323140739958869407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354267 (A014132 (n + 1)).toNat

end

end A105809.P7323140739958869407

/-! ## A105809.P13651599830542199296

`A354267(A007401(n+1)+1)`
-/

namespace A105809.P13651599830542199296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354267 (A007401 (n + 1) + 1).toNat

end

end A105809.P13651599830542199296

/-! ## A105809.P14650511125527916043

`A354267(A003056(n)+2+n)`
-/

namespace A105809.P14650511125527916043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354267 (A003056 n + 2 + (n : ℤ)).toNat

end

end A105809.P14650511125527916043

/-! ## A105809.P16772111869852870340

`A228074(A014132(n+1))-A228074(n)`
-/

namespace A105809.P16772111869852870340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228074 (A014132 (n + 1)).toNat - A228074 n

end

end A105809.P16772111869852870340

/-! ## A105809.P7834658287375380340

`A136431(2*A004736(n+1)+n)`
-/

namespace A105809.P7834658287375380340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136431 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A105809.P7834658287375380340

/-! ## A105809.P9073078279319731205

`A136431(A004736(n+1)+A004736(n+1)+n)`
-/

namespace A105809.P9073078279319731205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136431 (A004736 (n + 1) + (A004736 (n + 1) + (n : ℤ))).toNat

end

end A105809.P9073078279319731205

/-! ## A105809.P6431683187062162225

`A027926(A061885(n))`
-/

namespace A105809.P6431683187062162225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 (A061885 n).toNat

end

end A105809.P6431683187062162225

/-! ## A105809.P6172427849895725149

`A027926(A057944(n)+n)`
-/

namespace A105809.P6172427849895725149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 (A057944 n + (n : ℤ)).toNat

end

end A105809.P6172427849895725149

/-! ## A105809.P17945468179508128247

`A027926(A004201(n+1)-1)`
-/

namespace A105809.P17945468179508128247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 (A004201 (n + 1) - 1).toNat

end

end A105809.P17945468179508128247

/-! ## A105809.P5118476430683396172

`A027926(2*n-A002262(n))`
-/

namespace A105809.P5118476430683396172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 ((2 * n : ℤ) - A002262 n).toNat

end

end A105809.P5118476430683396172

/-! ## A105809.P9878930666840979457

`A027926(n-A002262(n)+n)`
-/

namespace A105809.P9878930666840979457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 ((n : ℤ) - A002262 n + (n : ℤ)).toNat

end

end A105809.P9878930666840979457

/-! ## A105809.P7226085987761953401

`A027926(n-(A002262(n)-n))`
-/

namespace A105809.P7226085987761953401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 ((n : ℤ) - (A002262 n - (n : ℤ))).toNat

end

end A105809.P7226085987761953401

/-! ## A105809.P9494754699296126792

`A027926(2*n+1-A002260(n+1))`
-/

namespace A105809.P9494754699296126792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 ((2 * n + 1 : ℤ) - A002260 (n + 1)).toNat

end

end A105809.P9494754699296126792

/-! ## A105809.P9241349652936842023

`A028310(A228074(n+1)%A105278(n+1))`
-/

namespace A105809.P9241349652936842023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A228074 (n + 1)) (A105278 (n + 1))).toNat

end

end A105809.P9241349652936842023

/-!
# A105810: Inverse of a Fibonacci-Pascal matrix A105809.

The programs for A105810, the canonical program `A105810.P17803328996045714001` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105810 has offset 0).

The definition of A105810 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105810.P17803328996045714001

`A097808(n)+∑[A130595(n)]-1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A105810

/-- `A097808(n)+∑[A130595(n)]-1` -/
def P17803328996045714001.Spec : Prop :=
  ∀ n, P17803328996045714001.a n = A105810 n

theorem P17803328996045714001.correct : P17803328996045714001.Spec := by
  intro n
  simp only [A105810]

end A105810

/-! ## A105810.P1131537831126530831

`A097808(n)-∑[A057428(n)*A130595(n)]`
-/

namespace A105810.P1131537831126530831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A130595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097808 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105810.P1131537831126530831

namespace A105810

/-- `A097808(n)-∑[A057428(n)*A130595(n)]` -/
def P1131537831126530831.Spec : Prop :=
  ∀ n, P1131537831126530831.a n = A105810 n

end A105810

/-! ## A105810.P2294836786025869834

`(A028326(n)-A209561(n+1))*A097807(n)`
-/

namespace A105810.P2294836786025869834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028326 n - A209561 (n + 1)) * A097807 n

end

end A105810.P2294836786025869834

namespace A105810

/-- `(A028326(n)-A209561(n+1))*A097807(n)` -/
def P2294836786025869834.Spec : Prop :=
  ∀ n, P2294836786025869834.a n = A105810 n

end A105810

/-! ## A105810.P9288252467480967892

`A097808(n)+(A130595(n)-A112466(n))/2`
-/

namespace A105810.P9288252467480967892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097808 n : ℚ) + (A130595 n - A112466 n : ℚ) / 2

end

end A105810.P9288252467480967892

namespace A105810

/-- `A097808(n)+(A130595(n)-A112466(n))/2` -/
def P9288252467480967892.Spec : Prop :=
  ∀ n, P9288252467480967892.a n = (A105810 n : ℚ)

end A105810

/-! ## A105810.P16747830214793320221

`A057428(2*(n+1))+A097808(n)+∑[A130595(n)]`
-/

namespace A105810.P16747830214793320221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (2 * (n + 1)) + (A097808 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105810.P16747830214793320221

namespace A105810

/-- `A057428(2*(n+1))+A097808(n)+∑[A130595(n)]` -/
def P16747830214793320221.Spec : Prop :=
  ∀ n, P16747830214793320221.a n = A105810 n

theorem P16747830214793320221.correct : P16747830214793320221.Spec := by
  intro n
  simp only [A105810, Nat.add_sub_cancel, A105810.P16747830214793320221.f1, A105810.P16747830214793320221.a, A105810.P17803328996045714001.f1, A105810.P17803328996045714001.a, A057428, A057428.P2999489532230392221.a, A097808, A097808.P4376253910493636811.a, A130595, A130595.P3475276304996858965.a, A007318, A007318.P302227728145965961.a, A057427, A057427.P3058147525557661423.a, A097807, A097807.P14328121779268374373.a, A156644, A156644.P8680727843130991433.a, A000007, A000007.P6599383543502402472.a, A009531, A009531.P14285492072244400176.a, A051601, A051601.P16211897946955376091.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A099375, A099375.P13700148065993022910.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A004736, A004736.P10337537277358081527.a, A010054, A010054.P18347828677204923252.a, A028276, A028276.P15109551320821074576.a, A028327, A028327.P9835590816428302231.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A105810

/-! ## A105810.P513317279197358943

`∑[A137396(n+1)]-Δ[A097808(n)]`
-/

namespace A105810.P513317279197358943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (f2 (n + 1) - f2 n)

end

end A105810.P513317279197358943

namespace A105810

/-- `∑[A137396(n+1)]-Δ[A097808(n)]` -/
def P513317279197358943.Spec : Prop :=
  ∀ n, P513317279197358943.a n = A105810 n

end A105810

/-!
# A105811: Expansion of g.f. (1+x-x^2)/(1+x)^2.

The programs for A105811, the canonical program `A105811.P15059507839076881346` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105811 has offset 0).

The definition of A105811 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-x^2)/(1+2x+x^2))` (program `A105811.P15059507839076881346`, by `A105811.P15059507839076881346.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105811.P15059507839076881346

`ogf((1+x-x^2)/(1+2x+x^2))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A105811

/-- `ogf((1+x-x^2)/(1+2x+x^2))` -/
def P15059507839076881346.Spec : Prop :=
  ∀ n, P15059507839076881346.a n = A105811 n

theorem P15059507839076881346.correct : P15059507839076881346.Spec := by
  intro n
  simp only [A105811]

end A105811

/-! ## A105811.P13427857727389041318

`xor(1, -a(n-1))` with `a(0)=1, a(1)=-1`
-/

namespace A105811.P13427857727389041318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  Int.xor 1 (-a (n - 1))

end

end A105811.P13427857727389041318

namespace A105811

/-- `xor(1, -a(n-1))` -/
def P13427857727389041318.Spec : Prop :=
  ∀ n, P13427857727389041318.a n = A105811 n

end A105811

/-! ## A105811.P6372058823783301819

`(n-2)*a(log2(gcd(2, n)))` with `a(0)=1`
-/

namespace A105811.P6372058823783301819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - 2) * a (SequenceMachineLib.roundAway (Real.logb 2 (Nat.gcd 2 n : ℝ))).toNat

end

end A105811.P6372058823783301819

namespace A105811

/-- `(n-2)*a(log2(gcd(2, n)))` -/
def P6372058823783301819.Spec : Prop :=
  ∀ n, P6372058823783301819.a n = A105811 n

end A105811

/-! ## A105811.P10625678162203323680

`(n-2)*a(∑[(-1)^n])` with `a(0)=1`
-/

namespace A105811.P10625678162203323680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - 2) * a (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A105811.P10625678162203323680

namespace A105811

/-- `(n-2)*a(∑[(-1)^n])` -/
def P10625678162203323680.Spec : Prop :=
  ∀ n, P10625678162203323680.a n = A105811 n

end A105811

/-! ## A105811.P16003179257547863424

`(n-2)/a(∑[(-1)^n])` with `a(0)=1`
-/

namespace A105811.P16003179257547863424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - 2 : ℚ) / a (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A105811.P16003179257547863424

namespace A105811

/-- `(n-2)/a(∑[(-1)^n])` -/
def P16003179257547863424.Spec : Prop :=
  ∀ n, P16003179257547863424.a n = (A105811 n : ℚ)

end A105811

/-! ## A105811.P16055181905673360475

`floor((n-2)*a(and(1, n+1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A105811.P16055181905673360475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - 2) * a (Nat.land 1 (n + 1))

end

end A105811.P16055181905673360475

namespace A105811

/-- `floor((n-2)*a(and(1, n+1)))` -/
def P16055181905673360475.Spec : Prop :=
  ∀ n, P16055181905673360475.a n = A105811 n

end A105811

/-! ## A105811.P8332119918780251801

`floor((n-2)/a(and(1, n+1)))` with `a(0)=1`
-/

namespace A105811.P8332119918780251801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((n : ℤ) - 2 : ℚ) / (a (Nat.land 1 (n + 1)) : ℚ)⌋

end

end A105811.P8332119918780251801

namespace A105811

/-- `floor((n-2)/a(and(1, n+1)))` -/
def P8332119918780251801.Spec : Prop :=
  ∀ n, P8332119918780251801.a n = A105811 n

end A105811

/-! ## A105811.P14737152700879142820

`(-1)^(n+1)-a(n-1)` with `a(0)=1, a(1)=-1`
-/

namespace A105811.P14737152700879142820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  (-1) ^ (n + 1) - a (n - 1)

end

end A105811.P14737152700879142820

namespace A105811

/-- `(-1)^(n+1)-a(n-1)` -/
def P14737152700879142820.Spec : Prop :=
  ∀ n, P14737152700879142820.a n = A105811 n

end A105811

/-! ## A105811.P8129645168974483829

`(n-2)*(-1)^a(n-1)` with `a(0)=1, a(1)=-1`
-/

namespace A105811.P8129645168974483829
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, -1] fun n a =>
  ((n : ℤ) - 2 : ℝ) * (-1 : ℝ) ^ (a (n - 1))

end

end A105811.P8129645168974483829

namespace A105811

/-- `(n-2)*(-1)^a(n-1)` -/
def P8129645168974483829.Spec : Prop :=
  ∀ n, P8129645168974483829.a n = (A105811 n : ℝ)

end A105811

/-! ## A105811.P6156184427247302031

`(n-2)/(-1)^a(n-1)` with `a(0)=1, a(1)=-1`
-/

namespace A105811.P6156184427247302031
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, -1] fun n a =>
  ((n : ℤ) - 2 : ℝ) / (-1 : ℝ) ^ (a (n - 1))

end

end A105811.P6156184427247302031

namespace A105811

/-- `(n-2)/(-1)^a(n-1)` -/
def P6156184427247302031.Spec : Prop :=
  ∀ n, P6156184427247302031.a n = (A105811 n : ℝ)

end A105811

/-! ## A105811.P10619151589860877605

`Δ[and(1, n+1)-a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A105811.P10619151589860877605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (Nat.land 1 (n + 1) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105811.P10619151589860877605

namespace A105811

/-- `Δ[and(1, n+1)-a(n-1)]` -/
def P10619151589860877605.Spec : Prop :=
  ∀ n, P10619151589860877605.a n = A105811 n

end A105811

/-! ## A105811.P1320571381121742605

`n+1-or(3, a(n-1)+n)` with `a(0)=1`
-/

namespace A105811.P1320571381121742605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) - Int.lor 3 (a (n - 1) + (n : ℤ))

end

end A105811.P1320571381121742605

namespace A105811

/-- `n+1-or(3, a(n-1)+n)` -/
def P1320571381121742605.Spec : Prop :=
  ∀ n, P1320571381121742605.a n = A105811 n

end A105811

/-! ## A105811.P3413772750950197914

`floor((-1)^(1-n)-a(n-1))` with `a(0)=1, a(1)=-1`
-/

namespace A105811.P3413772750950197914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  ⌊(-1 : ℚ) ^ (1 - (n : ℤ) : ℤ) - (a (n - 1) : ℚ)⌋

end

end A105811.P3413772750950197914

namespace A105811

/-- `floor((-1)^(1-n)-a(n-1))` -/
def P3413772750950197914.Spec : Prop :=
  ∀ n, P3413772750950197914.a n = A105811 n

end A105811

/-! ## A105811.P5870117384687798616

`Δ[and(1, n-1)²-a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A105811.P5870117384687798616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Int.land 1 ((n : ℤ) - 1) ^ 2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105811.P5870117384687798616

namespace A105811

/-- `Δ[and(1, n-1)²-a(n-1)]` -/
def P5870117384687798616.Spec : Prop :=
  ∀ n, P5870117384687798616.a n = A105811 n

end A105811

/-! ## A105811.P8561802045105924067

`(a(n-1)+a(n-2))*(2-n)` with `a(0)=1, a(1)=-1`
-/

namespace A105811.P8561802045105924067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  (a (n - 1) + a (n - 2)) * (2 - (n : ℤ))

end

end A105811.P8561802045105924067

namespace A105811

/-- `(a(n-1)+a(n-2))*(2-n)` -/
def P8561802045105924067.Spec : Prop :=
  ∀ n, P8561802045105924067.a n = A105811 n

end A105811

/-! ## A105811.P10875569042599860580

`a(∑[floor(a(n-2))])-floor(a(n-1))` with `a(0)=1, a(1)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A105811.P10875569042599860580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j).toNat - a (n - 1)

end

end A105811.P10875569042599860580

namespace A105811

/-- `a(∑[floor(a(n-2))])-floor(a(n-1))` -/
def P10875569042599860580.Spec : Prop :=
  ∀ n, P10875569042599860580.a n = A105811 n

end A105811

/-! ## A105811.P6891723623832831837

`(a(n-1)+n)%4-(a(n-1)+2)` with `a(0)=1`
-/

namespace A105811.P6891723623832831837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1) + (n : ℤ)) 4 - (a (n - 1) + 2)

end

end A105811.P6891723623832831837

namespace A105811

/-- `(a(n-1)+n)%4-(a(n-1)+2)` -/
def P6891723623832831837.Spec : Prop :=
  ∀ n, P6891723623832831837.a n = A105811 n

end A105811

/-! ## A105811.P16410451217493733157

`(2-n)/(a(n-1)+a(n-2))` with `a(0)=1, a(1)=-1, a(2)=0`
-/

namespace A105811.P16410451217493733157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, -1, 0] fun n a =>
  (2 - (n : ℤ) : ℚ) / (a (n - 1) + a (n - 2))

end

end A105811.P16410451217493733157

namespace A105811

/-- `(2-n)/(a(n-1)+a(n-2))` -/
def P16410451217493733157.Spec : Prop :=
  ∀ n, P16410451217493733157.a n = (A105811 n : ℚ)

end A105811

/-! ## A105811.P5401135168573008096

`or(1, n)-A266258(n)`
-/

namespace A105811.P5401135168573008096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - A266258 n

end

end A105811.P5401135168573008096

namespace A105811

/-- `or(1, n)-A266258(n)` -/
def P5401135168573008096.Spec : Prop :=
  ∀ n, P5401135168573008096.a n = A105811 n

end A105811

/-! ## A105811.P1795217129094348170

`xor(1, n)-A266724(n)`
-/

namespace A105811.P1795217129094348170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℤ) - A266724 n

end

end A105811.P1795217129094348170

namespace A105811

/-- `xor(1, n)-A266724(n)` -/
def P1795217129094348170.Spec : Prop :=
  ∀ n, P1795217129094348170.a n = A105811 n

end A105811

/-!
# A105812: Expansion of (1+x-x^2)/(1+x).

The programs for A105812, the canonical program `A105812.P7161717771964409208` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105812 has offset 0).

The definition of A105812 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-x^2)/(1+x))` (program `A105812.P7161717771964409208`, by `A105812.P7161717771964409208.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105812.P7161717771964409208

`ogf((1+x-x^2)/(1+x))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A105812

/-- `ogf((1+x-x^2)/(1+x))` -/
def P7161717771964409208.Spec : Prop :=
  ∀ n, P7161717771964409208.a n = A105812 n

theorem P7161717771964409208.correct : P7161717771964409208.Spec := by
  intro n
  simp only [A105812]

end A105812

/-!
# A105814: a(n) = n^2 + (n concatenated with n).

The programs for A105814, the canonical program `A105814.P234231382886839007` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105814 has offset 1).

The definition of A105814 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105814.P234231382886839007

`(n+1)²+(n+1)*(1+10^(1+floor(log(n+1)/log(10))))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A105814

/-- `(n+1)²+(n+1)*(1+10^(1+floor(log(n+1)/log(10))))` -/
def P234231382886839007.Spec : Prop :=
  ∀ n, P234231382886839007.a n = (A105814 (n + 1) : ℚ)

end A105814

/-! ## A105814.P5366171902472307414

`record[A020338(A328399(n))+A328399(n)²]`
-/

namespace A105814.P5366171902472307414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (A328399 n).toNat + A328399 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105814.P5366171902472307414

namespace A105814

/-- `record[A020338(A328399(n))+A328399(n)²]` -/
def P5366171902472307414.Spec : Prop :=
  ∀ n, P5366171902472307414.a n = A105814 (n + 1)

end A105814

/-! ## A105814.P5223516395410357310

`record[A020338(A133310(n))+A133310(n)²]`
-/

namespace A105814.P5223516395410357310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (A133310 n).toNat + A133310 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105814.P5223516395410357310

namespace A105814

/-- `record[A020338(A133310(n))+A133310(n)²]` -/
def P5223516395410357310.Spec : Prop :=
  ∀ n, P5223516395410357310.a n = A105814 (n + 1)

end A105814

/-! ## A105814.P5508941994847993593

`A000027(A020338(n+1)+∑[2*n+1])`
-/

namespace A105814.P5508941994847993593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A020338 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A105814.P5508941994847993593

namespace A105814

/-- `A000027(A020338(n+1)+∑[2*n+1])` -/
def P5508941994847993593.Spec : Prop :=
  ∀ n, P5508941994847993593.a n = A105814 (n + 1)

end A105814

/-! ## A105814.P17205293338087909970

`record[A020338(A020986(n))+A020986(n)²]`
-/

namespace A105814.P17205293338087909970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (A020986 n).toNat + A020986 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105814.P17205293338087909970

namespace A105814

/-- `record[A020338(A020986(n))+A020986(n)²]` -/
def P17205293338087909970.Spec : Prop :=
  ∀ n, P17205293338087909970.a n = A105814 (n + 1)

end A105814

/-!
# A105819: Triangle of the numbers of different forests of m rooted trees of smallest order 2, i.e., without isolated vertices, on N labeled nodes.

The programs for A105819, there is no canonical definition to state claims against.
-/

/-! ## A105819.P11041247011284614007

`A001511(A106241(n+1))*A105786(n+1)`
-/

namespace A105819.P11041247011284614007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A106241 (n + 1)).toNat * A105786 (n + 1)

end

end A105819.P11041247011284614007

/-! ## A105819.P5740362437097753381

`A051715(n)*A105786(A351870(n)+1)`
-/

namespace A105819.P5740362437097753381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051715 n * A105786 (A351870 n + 1).toNat

end

end A105819.P5740362437097753381

/-!
# A105820: Triangle giving the numbers of different forests of m trees of smallest order 2, i.e., without isolated vertices.

The programs for A105820, there is no canonical definition to state claims against.
-/

/-! ## A105820.P11449739354714897432

`A095133(n+1)-A105821(n+1)`
-/

namespace A105820.P11449739354714897432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095133 (n + 1) - A105821 (n + 1)

end

end A105820.P11449739354714897432

/-! ## A105820.P622957218406095298

`A136605(A038722(n+1))-A105821(n+1)`
-/

namespace A105820.P622957218406095298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136605 (A038722 (n + 1)).toNat - A105821 (n + 1)

end

end A105820.P622957218406095298

/-! ## A105820.P11483097227644198321

`A136605(A061579(n)+1)-A105821(n+1)`
-/

namespace A105820.P11483097227644198321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136605 (A061579 n + 1).toNat - A105821 (n + 1)

end

end A105820.P11483097227644198321

/-! ## A105820.P7290093964609522875

`A136605(A002024(n+1)²-n)-A105821(n+1)`
-/

namespace A105820.P7290093964609522875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136605 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat - A105821 (n + 1)

end

end A105820.P7290093964609522875

/-! ## A105820.P18219834151749805468

`A105821(A080036(n+1))-A105821(n+1)`
-/

namespace A105820.P18219834151749805468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105821 (A080036 (n + 1)).toNat - A105821 (n + 1)

end

end A105820.P18219834151749805468

/-! ## A105820.P10750854471782989251

`A136605(A278818(n))-A105821(n+1)`
-/

namespace A105820.P10750854471782989251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136605 (A278818 n).toNat - A105821 (n + 1)

end

end A105820.P10750854471782989251

/-!
# A105821: Triangle of the numbers of different forests with one or more isolated vertices. Those forests have order N and m trees.

The programs for A105821, there is no canonical definition to state claims against.
-/

/-! ## A105821.P6325742065400429461

`A095133(n+1)-A105820(n+1)`
-/

namespace A105821.P6325742065400429461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095133 (n + 1) - A105820 (n + 1)

end

end A105821.P6325742065400429461

/-! ## A105821.P316824840053721686

`A136605(A038722(n+1))-A105820(n+1)`
-/

namespace A105821.P316824840053721686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136605 (A038722 (n + 1)).toNat - A105820 (n + 1)

end

end A105821.P316824840053721686

/-! ## A105821.P15074050870539520258

`A136605(A061579(n)+1)-A105820(n+1)`
-/

namespace A105821.P15074050870539520258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136605 (A061579 n + 1).toNat - A105820 (n + 1)

end

end A105821.P15074050870539520258

/-! ## A105821.P2176141104519323043

`A136605(A002024(n+1)²-n)-A105820(n+1)`
-/

namespace A105821.P2176141104519323043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136605 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat - A105820 (n + 1)

end

end A105821.P2176141104519323043

/-! ## A105821.P3237311958287621185

`A136605(A278818(n))-A105820(n+1)`
-/

namespace A105821.P3237311958287621185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136605 (A278818 n).toNat - A105820 (n + 1)

end

end A105821.P3237311958287621185

/-! ## A105821.P1327941742484735880

`A095133(n+1)+-A105820(n+1)%A000244(n)`
-/

namespace A105821.P1327941742484735880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095133 (n + 1) + Int.tmod (-A105820 (n + 1)) (A000244 n)

end

end A105821.P1327941742484735880

/-!
# A105822: For n > 2, a(n) > 0 not appeared previously is such that a(n-1)^2+4*a(n-2)*a(n) = d^2 is a minimal square, a(1)=1, a(2)=2.

The programs for A105822, there is no canonical definition to state claims against.
-/

/-! ## A105822.P3075336239537445215

`∏{e}[2^n, A105836(#)]`
-/

namespace A105822.P3075336239537445215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A105836 (Nat.factorization (f1 n) p)

end

end A105822.P3075336239537445215

/-!
# A105823: Perfect squares in A105822.

The programs for A105823, there is no canonical definition to state claims against.
-/

/-! ## A105823.P17123210167084003427

`A105822(n+2)²+4*A105822(n+1)*A105822(n+3)`
-/

namespace A105823.P17123210167084003427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105822 (n + 2) ^ 2 + 4 * A105822 (n + 1) * A105822 (n + 3)

end

end A105823.P17123210167084003427

/-! ## A105823.P14378681306979142642

`Δ[A362622(A205727(2*n+5))]²`
-/

namespace A105823.P14378681306979142642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362622 (A205727 (2 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A105823.P14378681306979142642

/-!
# A105824: a(n) = sigma(n) mod 4.

The programs for A105824, the canonical program `A105824.P473493758431257763` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105824 has offset 1).

The definition of A105824 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105824.P473493758431257763

`A010873(A000203(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A105824

/-- `A010873(A000203(n+1))` -/
def P473493758431257763.Spec : Prop :=
  ∀ n, P473493758431257763.a n = A105824 (n + 1)

theorem P473493758431257763.correct : P473493758431257763.Spec := by
  intro n
  simp only [A105824, Nat.add_sub_cancel]

end A105824

/-! ## A105824.P4614483571214086938

`∑{d}[n+1, #]%4`
-/

namespace A105824.P4614483571214086938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) % 4

end

end A105824.P4614483571214086938

namespace A105824

/-- `∑{d}[n+1, #]%4` -/
def P4614483571214086938.Spec : Prop :=
  ∀ n, (P4614483571214086938.a n : ℤ) = A105824 (n + 1)

end A105824

/-! ## A105824.P2211477148290214975

`and(3, ∑{d}[n+1, #])`
-/

namespace A105824.P2211477148290214975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A105824.P2211477148290214975

namespace A105824

/-- `and(3, ∑{d}[n+1, #])` -/
def P2211477148290214975.Spec : Prop :=
  ∀ n, (P2211477148290214975.a n : ℤ) = A105824 (n + 1)

end A105824

/-! ## A105824.P15656045068918517086

`or(-4, ∑{d}[n+1, #])+4`
-/

namespace A105824.P15656045068918517086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-4) ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) + 4

end

end A105824.P15656045068918517086

namespace A105824

/-- `or(-4, ∑{d}[n+1, #])+4` -/
def P15656045068918517086.Spec : Prop :=
  ∀ n, P15656045068918517086.a n = A105824 (n + 1)

end A105824

/-! ## A105824.P10513955052863009607

`Δ[A160664(n)]%4`
-/

namespace A105824.P10513955052863009607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 4

end

end A105824.P10513955052863009607

namespace A105824

/-- `Δ[A160664(n)]%4` -/
def P10513955052863009607.Spec : Prop :=
  ∀ n, P10513955052863009607.a n = A105824 (n + 1)

end A105824

/-! ## A105824.P9453551816782424820

`A008457(n+1)%4`
-/

namespace A105824.P9453551816782424820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008457 (n + 1)) 4

end

end A105824.P9453551816782424820

namespace A105824

/-- `A008457(n+1)%4` -/
def P9453551816782424820.Spec : Prop :=
  ∀ n, P9453551816782424820.a n = A105824 (n + 1)

end A105824

/-! ## A105824.P15285152507250728573

`A046897(n+1)%4`
-/

namespace A105824.P15285152507250728573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046897 (n + 1)) 4

end

end A105824.P15285152507250728573

namespace A105824

/-- `A046897(n+1)%4` -/
def P15285152507250728573.Spec : Prop :=
  ∀ n, P15285152507250728573.a n = A105824 (n + 1)

end A105824

/-! ## A105824.P4913026503912677681

`A078307(n+1)%4`
-/

namespace A105824.P4913026503912677681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078307 (n + 1)) 4

end

end A105824.P4913026503912677681

namespace A105824

/-- `A078307(n+1)%4` -/
def P4913026503912677681.Spec : Prop :=
  ∀ n, P4913026503912677681.a n = A105824 (n + 1)

end A105824

/-! ## A105824.P9904294403542698153

`A105827(n+1)%4`
-/

namespace A105824.P9904294403542698153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105827 (n + 1)) 4

end

end A105824.P9904294403542698153

namespace A105824

/-- `A105827(n+1)%4` -/
def P9904294403542698153.Spec : Prop :=
  ∀ n, P9904294403542698153.a n = A105824 (n + 1)

end A105824

/-! ## A105824.P163380129712116919

`A203556(n+1)%4`
-/

namespace A105824.P163380129712116919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203556 (n + 1)) 4

end

end A105824.P163380129712116919

namespace A105824

/-- `A203556(n+1)%4` -/
def P163380129712116919.Spec : Prop :=
  ∀ n, P163380129712116919.a n = A105824 (n + 1)

end A105824

/-! ## A105824.P16587258675359144615

`A274535(n+1)%4`
-/

namespace A105824.P16587258675359144615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274535 (n + 1)) 4

end

end A105824.P16587258675359144615

namespace A105824

/-- `A274535(n+1)%4` -/
def P16587258675359144615.Spec : Prop :=
  ∀ n, P16587258675359144615.a n = A105824 (n + 1)

end A105824

/-! ## A105824.P8997646285937979341

`A278945(n+1)%4`
-/

namespace A105824.P8997646285937979341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278945 (n + 1)) 4

end

end A105824.P8997646285937979341

namespace A105824

/-- `A278945(n+1)%4` -/
def P8997646285937979341.Spec : Prop :=
  ∀ n, P8997646285937979341.a n = A105824 (n + 1)

end A105824

/-! ## A105824.P4120626841921703027

`A283123(n+1)%4`
-/

namespace A105824.P4120626841921703027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283123 (n + 1)) 4

end

end A105824.P4120626841921703027

namespace A105824

/-- `A283123(n+1)%4` -/
def P4120626841921703027.Spec : Prop :=
  ∀ n, P4120626841921703027.a n = A105824 (n + 1)

end A105824

/-! ## A105824.P6183002577201506875

`A284341(n+1)%4`
-/

namespace A105824.P6183002577201506875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284341 (n + 1)) 4

end

end A105824.P6183002577201506875

namespace A105824

/-- `A284341(n+1)%4` -/
def P6183002577201506875.Spec : Prop :=
  ∀ n, P6183002577201506875.a n = A105824 (n + 1)

end A105824

/-! ## A105824.P7369074250402571115

`A284926(n+1)%4`
-/

namespace A105824.P7369074250402571115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284926 (n + 1)) 4

end

end A105824.P7369074250402571115

namespace A105824

/-- `A284926(n+1)%4` -/
def P7369074250402571115.Spec : Prop :=
  ∀ n, P7369074250402571115.a n = A105824 (n + 1)

end A105824

/-! ## A105824.P7329398372313367619

`A302855(n+1)%4`
-/

namespace A105824.P7329398372313367619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302855 (n + 1)) 4

end

end A105824.P7329398372313367619

namespace A105824

/-- `A302855(n+1)%4` -/
def P7329398372313367619.Spec : Prop :=
  ∀ n, P7329398372313367619.a n = A105824 (n + 1)

end A105824

/-! ## A105824.P13750643567922846664

`A302857(n+1)%4`
-/

namespace A105824.P13750643567922846664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302857 (n + 1)) 4

end

end A105824.P13750643567922846664

namespace A105824

/-- `A302857(n+1)%4` -/
def P13750643567922846664.Spec : Prop :=
  ∀ n, P13750643567922846664.a n = A105824 (n + 1)

end A105824

/-! ## A105824.P12621665399097668371

`A321552(n+1)%4`
-/

namespace A105824.P12621665399097668371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321552 (n + 1)) 4

end

end A105824.P12621665399097668371

namespace A105824

/-- `A321552(n+1)%4` -/
def P12621665399097668371.Spec : Prop :=
  ∀ n, P12621665399097668371.a n = A105824 (n + 1)

end A105824

/-! ## A105824.P10078488590968283946

`A321554(n+1)%4`
-/

namespace A105824.P10078488590968283946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321554 (n + 1)) 4

end

end A105824.P10078488590968283946

namespace A105824

/-- `A321554(n+1)%4` -/
def P10078488590968283946.Spec : Prop :=
  ∀ n, P10078488590968283946.a n = A105824 (n + 1)

end A105824

/-! ## A105824.P16133395080989860222

`A321556(n+1)%4`
-/

namespace A105824.P16133395080989860222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321556 (n + 1)) 4

end

end A105824.P16133395080989860222

namespace A105824

/-- `A321556(n+1)%4` -/
def P16133395080989860222.Spec : Prop :=
  ∀ n, P16133395080989860222.a n = A105824 (n + 1)

end A105824

/-!
# A105825: a(n) = sigma(n) (mod 5).

The programs for A105825, the canonical program `A105825.P4179706734857981735` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105825 has offset 1).

The definition of A105825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105825.P4179706734857981735

`∑{d}[n+1, #]%5`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A105825

/-- `∑{d}[n+1, #]%5` -/
def P4179706734857981735.Spec : Prop :=
  ∀ n, (P4179706734857981735.a n : ℤ) = A105825 (n + 1)

theorem P4179706734857981735.correct : P4179706734857981735.Spec := by
  intro n
  simp only [A105825, Nat.add_sub_cancel]

end A105825

/-! ## A105825.P12841521173255631205

`Δ[A160664(n)]%5`
-/

namespace A105825.P12841521173255631205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 5

end

end A105825.P12841521173255631205

namespace A105825

/-- `Δ[A160664(n)]%5` -/
def P12841521173255631205.Spec : Prop :=
  ∀ n, P12841521173255631205.a n = A105825 (n + 1)

end A105825

/-! ## A105825.P18334966274872667793

`A000203(n+1)%5`
-/

namespace A105825.P18334966274872667793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) 5

end

end A105825.P18334966274872667793

namespace A105825

/-- `A000203(n+1)%5` -/
def P18334966274872667793.Spec : Prop :=
  ∀ n, P18334966274872667793.a n = A105825 (n + 1)

end A105825

/-! ## A105825.P628268776058766194

`A001160(n+1)%5`
-/

namespace A105825.P628268776058766194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001160 (n + 1)) 5

end

end A105825.P628268776058766194

namespace A105825

/-- `A001160(n+1)%5` -/
def P628268776058766194.Spec : Prop :=
  ∀ n, P628268776058766194.a n = A105825 (n + 1)

end A105825

/-! ## A105825.P3341621597057175489

`A013957(n+1)%5`
-/

namespace A105825.P3341621597057175489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013957 (n + 1)) 5

end

end A105825.P3341621597057175489

namespace A105825

/-- `A013957(n+1)%5` -/
def P3341621597057175489.Spec : Prop :=
  ∀ n, P3341621597057175489.a n = A105825 (n + 1)

end A105825

/-! ## A105825.P12663153423685590700

`A013961(n+1)%5`
-/

namespace A105825.P12663153423685590700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013961 (n + 1)) 5

end

end A105825.P12663153423685590700

namespace A105825

/-- `A013961(n+1)%5` -/
def P12663153423685590700.Spec : Prop :=
  ∀ n, P12663153423685590700.a n = A105825 (n + 1)

end A105825

/-! ## A105825.P12366550234482411790

`A013969(n+1)%5`
-/

namespace A105825.P12366550234482411790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013969 (n + 1)) 5

end

end A105825.P12366550234482411790

namespace A105825

/-- `A013969(n+1)%5` -/
def P12366550234482411790.Spec : Prop :=
  ∀ n, P12366550234482411790.a n = A105825 (n + 1)

end A105825

/-! ## A105825.P9198475553086898063

`A097011(n+1)%5`
-/

namespace A105825.P9198475553086898063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097011 (n + 1)) 5

end

end A105825.P9198475553086898063

namespace A105825

/-- `A097011(n+1)%5` -/
def P9198475553086898063.Spec : Prop :=
  ∀ n, P9198475553086898063.a n = A105825 (n + 1)

end A105825

/-! ## A105825.P10989985429673271790

`A097012(n+1)%5`
-/

namespace A105825.P10989985429673271790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097012 (n + 1)) 5

end

end A105825.P10989985429673271790

namespace A105825

/-- `A097012(n+1)%5` -/
def P10989985429673271790.Spec : Prop :=
  ∀ n, P10989985429673271790.a n = A105825 (n + 1)

end A105825

/-! ## A105825.P14056784329860971909

`A105853(n+1)%5`
-/

namespace A105825.P14056784329860971909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105853 (n + 1)) 5

end

end A105825.P14056784329860971909

namespace A105825

/-- `A105853(n+1)%5` -/
def P14056784329860971909.Spec : Prop :=
  ∀ n, P14056784329860971909.a n = A105825 (n + 1)

end A105825

/-! ## A105825.P4883135872146890724

`A116073(n+1)%5`
-/

namespace A105825.P4883135872146890724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116073 (n + 1)) 5

end

end A105825.P4883135872146890724

namespace A105825

/-- `A116073(n+1)%5` -/
def P4883135872146890724.Spec : Prop :=
  ∀ n, P4883135872146890724.a n = A105825 (n + 1)

end A105825

/-! ## A105825.P9133541097734626826

`A122162(n+1)%5`
-/

namespace A105825.P9133541097734626826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122162 (n + 1)) 5

end

end A105825.P9133541097734626826

namespace A105825

/-- `A122162(n+1)%5` -/
def P9133541097734626826.Spec : Prop :=
  ∀ n, P9133541097734626826.a n = A105825 (n + 1)

end A105825

/-! ## A105825.P16943431553728472877

`A227131(n+1)%5`
-/

namespace A105825.P16943431553728472877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227131 (n + 1)) 5

end

end A105825.P16943431553728472877

namespace A105825

/-- `A227131(n+1)%5` -/
def P16943431553728472877.Spec : Prop :=
  ∀ n, P16943431553728472877.a n = A105825 (n + 1)

end A105825

/-! ## A105825.P9509828249385943350

`A274536(n+1)%5`
-/

namespace A105825.P9509828249385943350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274536 (n + 1)) 5

end

end A105825.P9509828249385943350

namespace A105825

/-- `A274536(n+1)%5` -/
def P9509828249385943350.Spec : Prop :=
  ∀ n, P9509828249385943350.a n = A105825 (n + 1)

end A105825

/-! ## A105825.P13143767811389746275

`A278947(n+1)%5`
-/

namespace A105825.P13143767811389746275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278947 (n + 1)) 5

end

end A105825.P13143767811389746275

namespace A105825

/-- `A278947(n+1)%5` -/
def P13143767811389746275.Spec : Prop :=
  ∀ n, P13143767811389746275.a n = A105825 (n + 1)

end A105825

/-! ## A105825.P519308055759078469

`A283118(n+1)%5`
-/

namespace A105825.P519308055759078469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283118 (n + 1)) 5

end

end A105825.P519308055759078469

namespace A105825

/-- `A283118(n+1)%5` -/
def P519308055759078469.Spec : Prop :=
  ∀ n, P519308055759078469.a n = A105825 (n + 1)

end A105825

/-! ## A105825.P8050956003626809356

`A284344(n+1)%5`
-/

namespace A105825.P8050956003626809356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284344 (n + 1)) 5

end

end A105825.P8050956003626809356

namespace A105825

/-- `A284344(n+1)%5` -/
def P8050956003626809356.Spec : Prop :=
  ∀ n, P8050956003626809356.a n = A105825 (n + 1)

end A105825

/-! ## A105825.P3778640637860610129

`A323394(n+1)%5`
-/

namespace A105825.P3778640637860610129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323394 (n + 1)) 5

end

end A105825.P3778640637860610129

namespace A105825

/-- `A323394(n+1)%5` -/
def P3778640637860610129.Spec : Prop :=
  ∀ n, P3778640637860610129.a n = A105825 (n + 1)

end A105825

/-! ## A105825.P14411596706833384855

`A344139(n+1)%5`
-/

namespace A105825.P14411596706833384855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344139 (n + 1)) 5

end

end A105825.P14411596706833384855

namespace A105825

/-- `A344139(n+1)%5` -/
def P14411596706833384855.Spec : Prop :=
  ∀ n, P14411596706833384855.a n = A105825 (n + 1)

end A105825

/-! ## A105825.P9383457085701945865

`A367466(n+1)%5`
-/

namespace A105825.P9383457085701945865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367466 (n + 1)) 5

end

end A105825.P9383457085701945865

namespace A105825

/-- `A367466(n+1)%5` -/
def P9383457085701945865.Spec : Prop :=
  ∀ n, P9383457085701945865.a n = A105825 (n + 1)

end A105825

/-!
# A105826: a(n) = sigma(n) (mod 7).

The programs for A105826, the canonical program `A105826.P2023942831599077024` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105826 has offset 1).

The definition of A105826 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105826.P2023942831599077024

`∑{d}[n+1, #]%7`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A105826

/-- `∑{d}[n+1, #]%7` -/
def P2023942831599077024.Spec : Prop :=
  ∀ n, (P2023942831599077024.a n : ℤ) = A105826 (n + 1)

theorem P2023942831599077024.correct : P2023942831599077024.Spec := by
  intro n
  simp only [A105826, Nat.add_sub_cancel]

end A105826

/-! ## A105826.P2358325056921257135

`Δ[A160664(n)]%7`
-/

namespace A105826.P2358325056921257135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 7

end

end A105826.P2358325056921257135

namespace A105826

/-- `Δ[A160664(n)]%7` -/
def P2358325056921257135.Spec : Prop :=
  ∀ n, P2358325056921257135.a n = A105826 (n + 1)

end A105826

/-! ## A105826.P18081941959561263848

`A000203(n+1)%7`
-/

namespace A105826.P18081941959561263848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) 7

end

end A105826.P18081941959561263848

namespace A105826

/-- `A000203(n+1)%7` -/
def P18081941959561263848.Spec : Prop :=
  ∀ n, P18081941959561263848.a n = A105826 (n + 1)

end A105826

/-! ## A105826.P5729105159767690360

`A013955(n+1)%7`
-/

namespace A105826.P5729105159767690360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013955 (n + 1)) 7

end

end A105826.P5729105159767690360

namespace A105826

/-- `A013955(n+1)%7` -/
def P5729105159767690360.Spec : Prop :=
  ∀ n, P5729105159767690360.a n = A105826 (n + 1)

end A105826

/-! ## A105826.P7615036827247602574

`A013961(n+1)%7`
-/

namespace A105826.P7615036827247602574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013961 (n + 1)) 7

end

end A105826.P7615036827247602574

namespace A105826

/-- `A013961(n+1)%7` -/
def P7615036827247602574.Spec : Prop :=
  ∀ n, P7615036827247602574.a n = A105826 (n + 1)

end A105826

/-! ## A105826.P5101868797616427643

`A013967(n+1)%7`
-/

namespace A105826.P5101868797616427643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013967 (n + 1)) 7

end

end A105826.P5101868797616427643

namespace A105826

/-- `A013967(n+1)%7` -/
def P5101868797616427643.Spec : Prop :=
  ∀ n, P5101868797616427643.a n = A105826 (n + 1)

end A105826

/-! ## A105826.P8198789943146969515

`A097012(n+1)%7`
-/

namespace A105826.P8198789943146969515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097012 (n + 1)) 7

end

end A105826.P8198789943146969515

namespace A105826

/-- `A097012(n+1)%7` -/
def P8198789943146969515.Spec : Prop :=
  ∀ n, P8198789943146969515.a n = A105826 (n + 1)

end A105826

/-! ## A105826.P1409593333525888487

`A113957(n+1)%7`
-/

namespace A105826.P1409593333525888487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113957 (n + 1)) 7

end

end A105826.P1409593333525888487

namespace A105826

/-- `A113957(n+1)%7` -/
def P1409593333525888487.Spec : Prop :=
  ∀ n, P1409593333525888487.a n = A105826 (n + 1)

end A105826

/-! ## A105826.P15606832297747889928

`A283078(n+1)%7`
-/

namespace A105826.P15606832297747889928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283078 (n + 1)) 7

end

end A105826.P15606832297747889928

namespace A105826

/-- `A283078(n+1)%7` -/
def P15606832297747889928.Spec : Prop :=
  ∀ n, P15606832297747889928.a n = A105826 (n + 1)

end A105826

/-! ## A105826.P9085322403186494303

`A283122(n+1)%7`
-/

namespace A105826.P9085322403186494303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283122 (n + 1)) 7

end

end A105826.P9085322403186494303

namespace A105826

/-- `A283122(n+1)%7` -/
def P9085322403186494303.Spec : Prop :=
  ∀ n, P9085322403186494303.a n = A105826 (n + 1)

end A105826

/-! ## A105826.P2793516147762542349

`A287926(n+1)%7`
-/

namespace A105826.P2793516147762542349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287926 (n + 1)) 7

end

end A105826.P2793516147762542349

namespace A105826

/-- `A287926(n+1)%7` -/
def P2793516147762542349.Spec : Prop :=
  ∀ n, P2793516147762542349.a n = A105826 (n + 1)

end A105826

/-! ## A105826.P18097014901761980525

`A319528(n+1)%7`
-/

namespace A105826.P18097014901761980525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319528 (n + 1)) 7

end

end A105826.P18097014901761980525

namespace A105826

/-- `A319528(n+1)%7` -/
def P18097014901761980525.Spec : Prop :=
  ∀ n, P18097014901761980525.a n = A105826 (n + 1)

end A105826

/-! ## A105826.P10537972652338505560

`(A088580(n+1)-1)%7`
-/

namespace A105826.P10537972652338505560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088580 (n + 1) - 1) 7

end

end A105826.P10537972652338505560

namespace A105826

/-- `(A088580(n+1)-1)%7` -/
def P10537972652338505560.Spec : Prop :=
  ∀ n, P10537972652338505560.a n = A105826 (n + 1)

end A105826

/-! ## A105826.P13810308274395627764

`A245092(2*n+1)%7`
-/

namespace A105826.P13810308274395627764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245092 (2 * n + 1)) 7

end

end A105826.P13810308274395627764

namespace A105826

/-- `A245092(2*n+1)%7` -/
def P13810308274395627764.Spec : Prop :=
  ∀ n, P13810308274395627764.a n = A105826 (n + 1)

end A105826

/-! ## A105826.P3711574192657261730

`(A001065(n+1)+1+n)%7`
-/

namespace A105826.P3711574192657261730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001065 (n + 1) + 1 + (n : ℤ)) 7

end

end A105826.P3711574192657261730

namespace A105826

/-- `(A001065(n+1)+1+n)%7` -/
def P3711574192657261730.Spec : Prop :=
  ∀ n, P3711574192657261730.a n = A105826 (n + 1)

end A105826

/-! ## A105826.P7738865202133498554

`(A155085(n+1)-(n+1))%7`
-/

namespace A105826.P7738865202133498554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155085 (n + 1) - (n + 1 : ℤ)) 7

end

end A105826.P7738865202133498554

namespace A105826

/-- `(A155085(n+1)-(n+1))%7` -/
def P7738865202133498554.Spec : Prop :=
  ∀ n, P7738865202133498554.a n = A105826 (n + 1)

end A105826

/-! ## A105826.P2560406994663329292

`(A064987(n+1)/(n+1))%7`
-/

namespace A105826.P2560406994663329292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))) 7

end

end A105826.P2560406994663329292

namespace A105826

/-- `(A064987(n+1)/(n+1))%7` -/
def P2560406994663329292.Spec : Prop :=
  ∀ n, P2560406994663329292.a n = A105826 (n + 1)

end A105826

/-! ## A105826.P2305969293345216017

`dr(A000203(2*n-(n-1))%7)`
-/

namespace A105826.P2305969293345216017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A000203 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat) 7)

end

end A105826.P2305969293345216017

namespace A105826

/-- `dr(A000203(2*n-(n-1))%7)` -/
def P2305969293345216017.Spec : Prop :=
  ∀ n, (P2305969293345216017.a n : ℤ) = A105826 (n + 1)

end A105826

/-! ## A105826.P7912554995546798466

`(A152770(n+1)+∏{e}[n+1, #+1]+n)%7`
-/

namespace A105826.P7912554995546798466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152770 (n + 1) + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) + (n : ℤ)) 7

end

end A105826.P7912554995546798466

namespace A105826

/-- `(A152770(n+1)+∏{e}[n+1, #+1]+n)%7` -/
def P7912554995546798466.Spec : Prop :=
  ∀ n, P7912554995546798466.a n = A105826 (n + 1)

end A105826

/-! ## A105826.P6322913629402128570

`A010876(A097012(n+1))`
-/

namespace A105826.P6322913629402128570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A097012 (n + 1)).toNat

end

end A105826.P6322913629402128570

namespace A105826

/-- `A010876(A097012(n+1))` -/
def P6322913629402128570.Spec : Prop :=
  ∀ n, P6322913629402128570.a n = A105826 (n + 1)

end A105826

/-!
# A105827: a(n) = sigma(n) (mod 8).

The programs for A105827, the canonical program `A105827.P15637483697645196999` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105827 has offset 1).

The definition of A105827 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105827.P15637483697645196999

`∑{d}[n+1, #]%8`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A105827

/-- `∑{d}[n+1, #]%8` -/
def P15637483697645196999.Spec : Prop :=
  ∀ n, (P15637483697645196999.a n : ℤ) = A105827 (n + 1)

theorem P15637483697645196999.correct : P15637483697645196999.Spec := by
  intro n
  simp only [A105827, Nat.add_sub_cancel]

end A105827

/-! ## A105827.P4166198079338142977

`and(7, ∑{d}[n+1, #])`
-/

namespace A105827.P4166198079338142977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 7 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A105827.P4166198079338142977

namespace A105827

/-- `and(7, ∑{d}[n+1, #])` -/
def P4166198079338142977.Spec : Prop :=
  ∀ n, (P4166198079338142977.a n : ℤ) = A105827 (n + 1)

end A105827

/-! ## A105827.P13828393301286137199

`Δ[A160664(n)]%8`
-/

namespace A105827.P13828393301286137199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 8

end

end A105827.P13828393301286137199

namespace A105827

/-- `Δ[A160664(n)]%8` -/
def P13828393301286137199.Spec : Prop :=
  ∀ n, P13828393301286137199.a n = A105827 (n + 1)

end A105827

/-! ## A105827.P15349551040280238463

`A000203(n+1)%8`
-/

namespace A105827.P15349551040280238463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) 8

end

end A105827.P15349551040280238463

namespace A105827

/-- `A000203(n+1)%8` -/
def P15349551040280238463.Spec : Prop :=
  ∀ n, P15349551040280238463.a n = A105827 (n + 1)

end A105827

/-! ## A105827.P15715257799554628563

`A284341(n+1)%8`
-/

namespace A105827.P15715257799554628563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284341 (n + 1)) 8

end

end A105827.P15715257799554628563

namespace A105827

/-- `A284341(n+1)%8` -/
def P15715257799554628563.Spec : Prop :=
  ∀ n, P15715257799554628563.a n = A105827 (n + 1)

end A105827

/-! ## A105827.P16810200178781350625

`A325299(n+1)%8`
-/

namespace A105827.P16810200178781350625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325299 (n + 1)) 8

end

end A105827.P16810200178781350625

namespace A105827

/-- `A325299(n+1)%8` -/
def P16810200178781350625.Spec : Prop :=
  ∀ n, P16810200178781350625.a n = A105827 (n + 1)

end A105827

/-! ## A105827.P17057724579834257902

`A010877(∑{d}[n+1, #])`
-/

namespace A105827.P17057724579834257902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A105827.P17057724579834257902

namespace A105827

/-- `A010877(∑{d}[n+1, #])` -/
def P17057724579834257902.Spec : Prop :=
  ∀ n, P17057724579834257902.a n = A105827 (n + 1)

end A105827

/-! ## A105827.P13793394594729566439

`A245092(2*n+1)%8`
-/

namespace A105827.P13793394594729566439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245092 (2 * n + 1)) 8

end

end A105827.P13793394594729566439

namespace A105827

/-- `A245092(2*n+1)%8` -/
def P13793394594729566439.Spec : Prop :=
  ∀ n, P13793394594729566439.a n = A105827 (n + 1)

end A105827

/-! ## A105827.P1252092709186142137

`and(7, A000203(C(n+1, n)))`
-/

namespace A105827.P1252092709186142137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A000203 (Nat.choose (n + 1) n))

end

end A105827.P1252092709186142137

namespace A105827

/-- `and(7, A000203(C(n+1, n)))` -/
def P1252092709186142137.Spec : Prop :=
  ∀ n, P1252092709186142137.a n = A105827 (n + 1)

end A105827

/-! ## A105827.P299947442488720902

`(A001065(n+1)+n+1)%8`
-/

namespace A105827.P299947442488720902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001065 (n + 1) + (n + 1 : ℤ)) 8

end

end A105827.P299947442488720902

namespace A105827

/-- `(A001065(n+1)+n+1)%8` -/
def P299947442488720902.Spec : Prop :=
  ∀ n, P299947442488720902.a n = A105827 (n + 1)

end A105827

/-! ## A105827.P13959947744522586610

`and(7, A000203(2*n+1-n))`
-/

namespace A105827.P13959947744522586610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A000203 (2 * n + 1 - n))

end

end A105827.P13959947744522586610

namespace A105827

/-- `and(7, A000203(2*n+1-n))` -/
def P13959947744522586610.Spec : Prop :=
  ∀ n, P13959947744522586610.a n = A105827 (n + 1)

end A105827

/-! ## A105827.P2587573848043472025

`dr(A000203(2*n-(n-1))%8)`
-/

namespace A105827.P2587573848043472025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A000203 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat) 8)

end

end A105827.P2587573848043472025

namespace A105827

/-- `dr(A000203(2*n-(n-1))%8)` -/
def P2587573848043472025.Spec : Prop :=
  ∀ n, (P2587573848043472025.a n : ℤ) = A105827 (n + 1)

end A105827

/-! ## A105827.P1638136818178674128

`A010877(A000203(n+1))`
-/

namespace A105827.P1638136818178674128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (A000203 (n + 1)).toNat

end

end A105827.P1638136818178674128

namespace A105827

/-- `A010877(A000203(n+1))` -/
def P1638136818178674128.Spec : Prop :=
  ∀ n, P1638136818178674128.a n = A105827 (n + 1)

end A105827

/-! ## A105827.P5132765418351029725

`A010877(A284341(n+1))`
-/

namespace A105827.P5132765418351029725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (A284341 (n + 1)).toNat

end

end A105827.P5132765418351029725

namespace A105827

/-- `A010877(A284341(n+1))` -/
def P5132765418351029725.Spec : Prop :=
  ∀ n, P5132765418351029725.a n = A105827 (n + 1)

end A105827

/-! ## A105827.P10327052410092662542

`A010877(A001065(n+1)+n+1)`
-/

namespace A105827.P10327052410092662542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (A001065 (n + 1) + (n + 1 : ℤ)).toNat

end

end A105827.P10327052410092662542

namespace A105827

/-- `A010877(A001065(n+1)+n+1)` -/
def P10327052410092662542.Spec : Prop :=
  ∀ n, P10327052410092662542.a n = A105827 (n + 1)

end A105827

/-! ## A105827.P17132487205854249889

`A326065(2*(n+1))%8`
-/

namespace A105827.P17132487205854249889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326065 (2 * (n + 1))) 8

end

end A105827.P17132487205854249889

namespace A105827

/-- `A326065(2*(n+1))%8` -/
def P17132487205854249889.Spec : Prop :=
  ∀ n, P17132487205854249889.a n = A105827 (n + 1)

end A105827

/-! ## A105827.P12879508278944320874

`and(A000203(n+1), A088839(2*n+1))`
-/

namespace A105827.P12879508278944320874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (n + 1)) (A088839 (2 * n + 1))

end

end A105827.P12879508278944320874

namespace A105827

/-- `and(A000203(n+1), A088839(2*n+1))` -/
def P12879508278944320874.Spec : Prop :=
  ∀ n, P12879508278944320874.a n = A105827 (n + 1)

end A105827

/-! ## A105827.P16480924218832292325

`A262610(2*n+1)%8`
-/

namespace A105827.P16480924218832292325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262610 (2 * n + 1)) 8

end

end A105827.P16480924218832292325

namespace A105827

/-- `A262610(2*n+1)%8` -/
def P16480924218832292325.Spec : Prop :=
  ∀ n, P16480924218832292325.a n = A105827 (n + 1)

end A105827

/-! ## A105827.P13708393897350315180

`and(A000203(n+1), A065916(2*n+1))`
-/

namespace A105827.P13708393897350315180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (n + 1)) (A065916 (2 * n + 1))

end

end A105827.P13708393897350315180

namespace A105827

/-- `and(A000203(n+1), A065916(2*n+1))` -/
def P13708393897350315180.Spec : Prop :=
  ∀ n, P13708393897350315180.a n = A105827 (n + 1)

end A105827

/-! ## A105827.P6887516445757463128

`A010877(A325299(n+1))`
-/

namespace A105827.P6887516445757463128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (A325299 (n + 1)).toNat

end

end A105827.P6887516445757463128

namespace A105827

/-- `A010877(A325299(n+1))` -/
def P6887516445757463128.Spec : Prop :=
  ∀ n, P6887516445757463128.a n = A105827 (n + 1)

end A105827

/-!
# A105836: For n>2, a(n) not appeared previously is such that a(n-1)^2+4*a(n-2)*a(n) is a minimal square, a(1)=2, a(2)=3.

The programs for A105836, there is no canonical definition to state claims against.
-/

/-! ## A105836.P18119973178532442224

`A105822(n+2)%A252656(n+1)`
-/

namespace A105836.P18119973178532442224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105822 (n + 2)) (A252656 (n + 1))

end

end A105836.P18119973178532442224

/-! ## A105836.P584358649241657856

`A105822((n+1)%A325860(2*(n+2))+1)`
-/

namespace A105836.P584358649241657856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105822 (Int.tmod (n + 1 : ℤ) (A325860 (2 * (n + 2))) + 1).toNat

end

end A105836.P584358649241657856

/-! ## A105836.P4590271472592917504

`A105822(n+2)+A000038(A027383(n))`
-/

namespace A105836.P4590271472592917504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105822 (n + 2) + A000038 (A027383 n).toNat

end

end A105836.P4590271472592917504

/-! ## A105836.P1812877137843324545

`A105822(n+2)+A000038(A103997(n))`
-/

namespace A105836.P1812877137843324545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105822 (n + 2) + A000038 (A103997 n).toNat

end

end A105836.P1812877137843324545

/-! ## A105836.P4012347896758873752

`A105822(n+2)+A000038(A259392(n))`
-/

namespace A105836.P4012347896758873752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105822 (n + 2) + A000038 (A259392 n).toNat

end

end A105836.P4012347896758873752

/-!
# A105840: Primes of the form r(r(n)+1)+1, where r(n) = A141468(n) = n-th nonprime.

The programs for A105840, there is no canonical definition to state claims against.
-/

/-! ## A105840.P7098525008584239388

`p?[A141436(n+1)+1]`
-/

namespace A105840.P7098525008584239388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141436 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105840.P7098525008584239388

/-! ## A105840.P14397011665624556852

`p?[A004442(A141436(n+1))]`
-/

namespace A105840.P14397011665624556852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A141436 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105840.P14397011665624556852

/-! ## A105840.P17463121121381510048

`p?[A018252(A018252(n+1))+1]`
-/

namespace A105840.P17463121121381510048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A018252 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105840.P17463121121381510048

/-! ## A105840.P4382992974260397124

`record[A006530(A050435(n+1)-1)]`
-/

namespace A105840.P4382992974260397124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A050435 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105840.P4382992974260397124

/-! ## A105840.P9664287707487953837

`record[A014963(A050435(n+1)-1)]`
-/

namespace A105840.P9664287707487953837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A050435 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105840.P9664287707487953837

/-! ## A105840.P12043952699488516165

`record[A020639(A050435(n+1)-1)]`
-/

namespace A105840.P12043952699488516165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A050435 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105840.P12043952699488516165

/-! ## A105840.P7310219502265318062

`p?[A056653(A060462(n+1))+1]`
-/

namespace A105840.P7310219502265318062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (A060462 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105840.P7310219502265318062

/-! ## A105840.P8999139818200359617

`record[A006530(A004275(A050435(n+1)))]`
-/

namespace A105840.P8999139818200359617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004275 (A050435 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105840.P8999139818200359617

/-! ## A105840.P10749257150974283476

`∩[A000040(n+1), A018252(A018252(n+1))+1]`
-/

namespace A105840.P10749257150974283476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A018252 (n + 1)).toNat + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105840.P10749257150974283476

/-! ## A105840.P17490116989998271761

`∩[A018252(A018252(n+1)), A006093(n+1)]+1`
-/

namespace A105840.P17490116989998271761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A018252 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A105840.P17490116989998271761

/-!
# A105847: Inverse binomial transform of number triangle A105632.

The programs for A105847, there is no canonical definition to state claims against.
-/

/-! ## A105847.P8609349043133957726

`A130595(n)+A016378(A156960(n))`
-/

namespace A105847.P8609349043133957726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n + A016378 (A156960 n).toNat

end

end A105847.P8609349043133957726

/-! ## A105847.P13499631227454176351

`A130595(n)+A119467(A185415(n+1)²)`
-/

namespace A105847.P13499631227454176351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n + A119467 (A185415 (n + 1) ^ 2).toNat

end

end A105847.P13499631227454176351

/-! ## A105847.P18107574899738235357

`A130595(n)+A128890(A185415(n+1)²)`
-/

namespace A105847.P18107574899738235357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n + A128890 (A185415 (n + 1) ^ 2).toNat

end

end A105847.P18107574899738235357

/-! ## A105847.P1028733335280757400

`A168561(A185415(n+1)²)+A130595(n)`
-/

namespace A105847.P1028733335280757400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168561 (A185415 (n + 1) ^ 2).toNat + A130595 n

end

end A105847.P1028733335280757400

/-! ## A105847.P17594309408850296726

`A130595(n)+A058710(A058710(n+2))`
-/

namespace A105847.P17594309408850296726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n + A058710 (A058710 (n + 2)).toNat

end

end A105847.P17594309408850296726

/-!
# A105848: Binomial transform of number triangle A105632.

The programs for A105848, there is no canonical definition to state claims against.
-/

/-! ## A105848.P13856692802853875771

`A054445(n)+A010051(A123288(n))`
-/

namespace A105848.P13856692802853875771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054445 n + A010051 (A123288 (n + 62)).toNat

end

end A105848.P13856692802853875771

/-! ## A105848.P7617095089504847920

`A241466(A225816(n))+A054445(n)`
-/

namespace A105848.P7617095089504847920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241466 (A225816 n).toNat + A054445 n

end

end A105848.P7617095089504847920

/-! ## A105848.P5919075416521028750

`or(A054445(n), A093956(A039755(n)))`
-/

namespace A105848.P5919075416521028750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054445 n) (A093956 (A039755 n).toNat)

end

end A105848.P5919075416521028750

/-! ## A105848.P8381528276125171403

`or(A010060(A346081(n)), A054445(n))`
-/

namespace A105848.P8381528276125171403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010060 (A346081 n).toNat) (A054445 n)

end

end A105848.P8381528276125171403

/-! ## A105848.P8478944251380961762

`A121373(A006261(n+2))+A054445(n)`
-/

namespace A105848.P8478944251380961762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A006261 (n + 2)).toNat + A054445 n

end

end A105848.P8478944251380961762

/-!
# A105849: Row sums of number triangle A105848.

The programs for A105849, there is no canonical definition to state claims against.
-/

/-! ## A105849.P16152433693234669723

`A004525(floor(4^n/3)+2^n+3^n)`
-/

namespace A105849.P16152433693234669723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (⌊(4 ^ n : ℚ) / 3⌋ + (2 ^ n + 3 ^ n : ℤ)).toNat

end

end A105849.P16152433693234669723

/-! ## A105849.P9724563001729834553

`A004526(floor(4^n/3)+2^n+3^n)`
-/

namespace A105849.P9724563001729834553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (⌊(4 ^ n : ℚ) / 3⌋ + (2 ^ n + 3 ^ n : ℤ)).toNat

end

end A105849.P9724563001729834553

/-! ## A105849.P9259709516188027371

`A078898(floor(2^n+4^n/3)+3^n)`
-/

namespace A105849.P9259709516188027371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (⌊(2 ^ n : ℚ) + (4 ^ n : ℚ) / 3⌋ + (3 ^ n : ℤ)).toNat

end

end A105849.P9259709516188027371

/-! ## A105849.P15691379361653599294

`A110654(floor(3^n+4^n/3)+2^n)`
-/

namespace A105849.P15691379361653599294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (⌊(3 ^ n : ℚ) + (4 ^ n : ℚ) / 3⌋ + (2 ^ n : ℤ)).toNat

end

end A105849.P15691379361653599294

/-!
# A105850: a(n+1) = a(n)^2 - 2^(2^n+1) with a(1) = 8.

The programs for A105850, there is no canonical definition to state claims against.
-/

/-! ## A105850.P15960331244237100485

`2*A084594(n+1)`
-/

namespace A105850.P15960331244237100485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084594 (n + 1)

end

end A105850.P15960331244237100485

/-! ## A105850.P9989660383938226946

`A080040(2^(n+1))`
-/

namespace A105850.P9989660383938226946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080040 (2 ^ (n + 1))

end

end A105850.P9989660383938226946

/-! ## A105850.P6729225256971498832

`2*A026150(2^(n+1))`
-/

namespace A105850.P6729225256971498832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026150 (2 ^ (n + 1))

end

end A105850.P6729225256971498832

/-!
# A105851: Binomial transform triangle, read by rows.

The programs for A105851, the canonical program `A105851.P4257875818357330000` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105851 has offset 0).

The definition of A105851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105851.P4257875818357330000

`A134394(n+1)/A004736(n+1)*A130321(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A105851

/-- `A134394(n+1)/A004736(n+1)*A130321(n)` -/
def P4257875818357330000.Spec : Prop :=
  ∀ n, P4257875818357330000.a n = (A105851 n : ℚ)

end A105851

/-! ## A105851.P17192452388299617573

`A057145(n+2)/A002260(n+1)*A130321(n)`
-/

namespace A105851.P17192452388299617573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057145 (n + 2) : ℚ) / (A002260 (n + 1) : ℚ) * (A130321 n : ℚ)

end

end A105851.P17192452388299617573

namespace A105851

/-- `A057145(n+2)/A002260(n+1)*A130321(n)` -/
def P17192452388299617573.Spec : Prop :=
  ∀ n, P17192452388299617573.a n = (A105851 n : ℚ)

end A105851

/-! ## A105851.P522023822919330744

`A130321(n)+A004247(n)*A130321(n+1)`
-/

namespace A105851.P522023822919330744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n + A004247 n * A130321 (n + 1)

end

end A105851.P522023822919330744

namespace A105851

/-- `A130321(n)+A004247(n)*A130321(n+1)` -/
def P522023822919330744.Spec : Prop :=
  ∀ n, P522023822919330744.a n = A105851 n

end A105851

/-! ## A105851.P4332010549848642641

`ceil(A142240(n+1)/2*A130321(n))`
-/

namespace A105851.P4332010549848642641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A142240 (n + 1) : ℚ) / 2 * (A130321 n : ℚ)⌉

end

end A105851.P4332010549848642641

namespace A105851

/-- `ceil(A142240(n+1)/2*A130321(n))` -/
def P4332010549848642641.Spec : Prop :=
  ∀ n, P4332010549848642641.a n = A105851 n

end A105851

/-! ## A105851.P7645899214242721533

`A004525(A130321(n)*A142240(n+1))`
-/

namespace A105851.P7645899214242721533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A130321 n * A142240 (n + 1)).toNat

end

end A105851.P7645899214242721533

namespace A105851

/-- `A004525(A130321(n)*A142240(n+1))` -/
def P7645899214242721533.Spec : Prop :=
  ∀ n, P7645899214242721533.a n = A105851 n

end A105851

/-! ## A105851.P1679889442292367377

`A026741(A130321(n)*A142240(n+1))`
-/

namespace A105851.P1679889442292367377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A130321 n * A142240 (n + 1)).toNat

end

end A105851.P1679889442292367377

namespace A105851

/-- `A026741(A130321(n)*A142240(n+1))` -/
def P1679889442292367377.Spec : Prop :=
  ∀ n, P1679889442292367377.a n = A105851 n

end A105851

/-! ## A105851.P12805813880104235508

`A008619(A130321(n)*A142240(n+1)-1)`
-/

namespace A105851.P12805813880104235508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A130321 n * A142240 (n + 1) - 1).toNat

end

end A105851.P12805813880104235508

namespace A105851

/-- `A008619(A130321(n)*A142240(n+1)-1)` -/
def P12805813880104235508.Spec : Prop :=
  ∀ n, P12805813880104235508.a n = A105851 n

end A105851

/-! ## A105851.P5816900950588851775

`round(A130321(n)*A142240(n+1)/A020639(2*(n+1)))`
-/

namespace A105851.P5816900950588851775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A130321 n * A142240 (n + 1) : ℚ) / (A020639 (2 * (n + 1)) : ℚ))

end

end A105851.P5816900950588851775

namespace A105851

/-- `round(A130321(n)*A142240(n+1)/A020639(2*(n+1)))` -/
def P5816900950588851775.Spec : Prop :=
  ∀ n, P5816900950588851775.a n = A105851 n

end A105851

/-! ## A105851.P14427262004210115086

`A142240(n+1)/A014963(A001316(n))*A130321(n)`
-/

namespace A105851.P14427262004210115086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142240 (n + 1) : ℚ) / (A014963 (A001316 n).toNat : ℚ) * (A130321 n : ℚ)

end

end A105851.P14427262004210115086

namespace A105851

/-- `A142240(n+1)/A014963(A001316(n))*A130321(n)` -/
def P14427262004210115086.Spec : Prop :=
  ∀ n, P14427262004210115086.a n = (A105851 n : ℚ)

end A105851

/-! ## A105851.P1991299572864302876

`A142240(n+1)/A020639(A001223(n+1))*A130321(n)`
-/

namespace A105851.P1991299572864302876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142240 (n + 1) : ℚ) / (A020639 (A001223 (n + 1)).toNat : ℚ) * (A130321 n : ℚ)

end

end A105851.P1991299572864302876

namespace A105851

/-- `A142240(n+1)/A020639(A001223(n+1))*A130321(n)` -/
def P1991299572864302876.Spec : Prop :=
  ∀ n, P1991299572864302876.a n = (A105851 n : ℚ)

end A105851

/-!
# A105852: a(n) = sigma(n) mod 9.

The programs for A105852, the canonical program `A105852.P2447880312981508747` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105852 has offset 1).

The definition of A105852 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105852.P2447880312981508747

`A010878(A000203(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A105852

/-- `A010878(A000203(n+1))` -/
def P2447880312981508747.Spec : Prop :=
  ∀ n, P2447880312981508747.a n = A105852 (n + 1)

theorem P2447880312981508747.correct : P2447880312981508747.Spec := by
  intro n
  simp only [A105852, Nat.add_sub_cancel]

end A105852

/-! ## A105852.P8507269593636344982

`∑{d}[n+1, #]%9`
-/

namespace A105852.P8507269593636344982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) % 9

end

end A105852.P8507269593636344982

namespace A105852

/-- `∑{d}[n+1, #]%9` -/
def P8507269593636344982.Spec : Prop :=
  ∀ n, (P8507269593636344982.a n : ℤ) = A105852 (n + 1)

end A105852

/-! ## A105852.P5544215267830932868

`dr(∑{d}[n+1, #]+1)-1`
-/

namespace A105852.P5544215267830932868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot ((∑ d ∈ Nat.divisors (f1 n), d + 1 : ℕ) : ℤ) : ℤ) - 1

end

end A105852.P5544215267830932868

namespace A105852

/-- `dr(∑{d}[n+1, #]+1)-1` -/
def P5544215267830932868.Spec : Prop :=
  ∀ n, P5544215267830932868.a n = A105852 (n + 1)

end A105852

/-! ## A105852.P3086308768427567024

`Δ[A160664(n)]%9`
-/

namespace A105852.P3086308768427567024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 9

end

end A105852.P3086308768427567024

namespace A105852

/-- `Δ[A160664(n)]%9` -/
def P3086308768427567024.Spec : Prop :=
  ∀ n, P3086308768427567024.a n = A105852 (n + 1)

end A105852

/-! ## A105852.P9725233491102161721

`A034690(n+1)%9`
-/

namespace A105852.P9725233491102161721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034690 (n + 1)) 9

end

end A105852.P9725233491102161721

namespace A105852

/-- `A034690(n+1)%9` -/
def P9725233491102161721.Spec : Prop :=
  ∀ n, P9725233491102161721.a n = A105852 (n + 1)

end A105852

/-! ## A105852.P4788701913525532162

`A067342(n+1)%9`
-/

namespace A105852.P4788701913525532162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067342 (n + 1)) 9

end

end A105852.P4788701913525532162

namespace A105852

/-- `A067342(n+1)%9` -/
def P4788701913525532162.Spec : Prop :=
  ∀ n, P4788701913525532162.a n = A105852 (n + 1)

end A105852

/-! ## A105852.P803708532008262578

`A069192(n+1)%9`
-/

namespace A105852.P803708532008262578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069192 (n + 1)) 9

end

end A105852.P803708532008262578

namespace A105852

/-- `A069192(n+1)%9` -/
def P803708532008262578.Spec : Prop :=
  ∀ n, P803708532008262578.a n = A105852 (n + 1)

end A105852

/-! ## A105852.P18156501294863488953

`A116607(n+1)%9`
-/

namespace A105852.P18156501294863488953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116607 (n + 1)) 9

end

end A105852.P18156501294863488953

namespace A105852

/-- `A116607(n+1)%9` -/
def P18156501294863488953.Spec : Prop :=
  ∀ n, P18156501294863488953.a n = A105852 (n + 1)

end A105852

/-! ## A105852.P7442093567337499104

`A190998(n+1)%9`
-/

namespace A105852.P7442093567337499104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190998 (n + 1)) 9

end

end A105852.P7442093567337499104

namespace A105852

/-- `A190998(n+1)%9` -/
def P7442093567337499104.Spec : Prop :=
  ∀ n, P7442093567337499104.a n = A105852 (n + 1)

end A105852

/-! ## A105852.P11987519269485661886

`A326122(n+1)%9`
-/

namespace A105852.P11987519269485661886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326122 (n + 1)) 9

end

end A105852.P11987519269485661886

namespace A105852

/-- `A326122(n+1)%9` -/
def P11987519269485661886.Spec : Prop :=
  ∀ n, P11987519269485661886.a n = A105852 (n + 1)

end A105852

/-! ## A105852.P4234694202232041489

`dr(A088580(n+1))-1`
-/

namespace A105852.P4234694202232041489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A088580 (n + 1)) : ℤ) - 1

end

end A105852.P4234694202232041489

namespace A105852

/-- `dr(A088580(n+1))-1` -/
def P4234694202232041489.Spec : Prop :=
  ∀ n, P4234694202232041489.a n = A105852 (n + 1)

end A105852

/-! ## A105852.P7280454568840413756

`A245092(2*n+1)%9`
-/

namespace A105852.P7280454568840413756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245092 (2 * n + 1)) 9

end

end A105852.P7280454568840413756

namespace A105852

/-- `A245092(2*n+1)%9` -/
def P7280454568840413756.Spec : Prop :=
  ∀ n, P7280454568840413756.a n = A105852 (n + 1)

end A105852

/-! ## A105852.P14138293492873307573

`dr(A155085(n+1)-n)-1`
-/

namespace A105852.P14138293492873307573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A155085 (n + 1) - (n : ℤ)) : ℤ) - 1

end

end A105852.P14138293492873307573

namespace A105852

/-- `dr(A155085(n+1)-n)-1` -/
def P14138293492873307573.Spec : Prop :=
  ∀ n, P14138293492873307573.a n = A105852 (n + 1)

end A105852

/-! ## A105852.P11635951536011675993

`(A001065(n+1)+1+n)%9`
-/

namespace A105852.P11635951536011675993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001065 (n + 1) + 1 + (n : ℤ)) 9

end

end A105852.P11635951536011675993

namespace A105852

/-- `(A001065(n+1)+1+n)%9` -/
def P11635951536011675993.Spec : Prop :=
  ∀ n, P11635951536011675993.a n = A105852 (n + 1)

end A105852

/-! ## A105852.P14212226781262336141

`dr(A000203(2*n-(n-1))%9)`
-/

namespace A105852.P14212226781262336141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A000203 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat) 9)

end

end A105852.P14212226781262336141

namespace A105852

/-- `dr(A000203(2*n-(n-1))%9)` -/
def P14212226781262336141.Spec : Prop :=
  ∀ n, (P14212226781262336141.a n : ℤ) = A105852 (n + 1)

end A105852

/-! ## A105852.P4750953447587169019

`(A152770(n+1)+∏{e}[n+1, #+1]+n)%9`
-/

namespace A105852.P4750953447587169019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152770 (n + 1) + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) + (n : ℤ)) 9

end

end A105852.P4750953447587169019

namespace A105852

/-- `(A152770(n+1)+∏{e}[n+1, #+1]+n)%9` -/
def P4750953447587169019.Spec : Prop :=
  ∀ n, P4750953447587169019.a n = A105852 (n + 1)

end A105852

/-! ## A105852.P14861247096396127365

`A010878(A034690(n+1))`
-/

namespace A105852.P14861247096396127365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (A034690 (n + 1)).toNat

end

end A105852.P14861247096396127365

namespace A105852

/-- `A010878(A034690(n+1))` -/
def P14861247096396127365.Spec : Prop :=
  ∀ n, P14861247096396127365.a n = A105852 (n + 1)

end A105852

/-! ## A105852.P8102023701914290449

`A010878(A067342(n+1))`
-/

namespace A105852.P8102023701914290449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (A067342 (n + 1)).toNat

end

end A105852.P8102023701914290449

namespace A105852

/-- `A010878(A067342(n+1))` -/
def P8102023701914290449.Spec : Prop :=
  ∀ n, P8102023701914290449.a n = A105852 (n + 1)

end A105852

/-! ## A105852.P17603743829545375818

`A141726(∑{d}[n+1, A141726(#)])`
-/

namespace A105852.P17603743829545375818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141726 (∑ d ∈ Nat.divisors (f1 n), A141726 d).toNat

end

end A105852.P17603743829545375818

namespace A105852

/-- `A141726(∑{d}[n+1, A141726(#)])` -/
def P17603743829545375818.Spec : Prop :=
  ∀ n, P17603743829545375818.a n = A105852 (n + 1)

end A105852

/-! ## A105852.P10255272220375415540

`A000203(n+1)%A066586(n+1)`
-/

namespace A105852.P10255272220375415540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (A066586 (n + 1))

end

end A105852.P10255272220375415540

namespace A105852

/-- `A000203(n+1)%A066586(n+1)` -/
def P10255272220375415540.Spec : Prop :=
  ∀ n, P10255272220375415540.a n = A105852 (n + 1)

end A105852

/-!
# A105853: a(n) = sigma(n) (mod 10), i.e., unit's digit of sigma(n).

The programs for A105853, the canonical program `A105853.P14164389647555721919` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105853 has offset 1).

The definition of A105853 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105853.P14164389647555721919

`A010879(A000203(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A105853

/-- `A010879(A000203(n+1))` -/
def P14164389647555721919.Spec : Prop :=
  ∀ n, P14164389647555721919.a n = A105853 (n + 1)

theorem P14164389647555721919.correct : P14164389647555721919.Spec := by
  intro n
  simp only [A105853, Nat.add_sub_cancel]

end A105853

/-! ## A105853.P4769988670410763483

`∑{d}[n+1, #]%10`
-/

namespace A105853.P4769988670410763483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) % 10

end

end A105853.P4769988670410763483

namespace A105853

/-- `∑{d}[n+1, #]%10` -/
def P4769988670410763483.Spec : Prop :=
  ∀ n, (P4769988670410763483.a n : ℤ) = A105853 (n + 1)

end A105853

/-! ## A105853.P4712696390322890557

`Δ[A160664(n)]%10`
-/

namespace A105853.P4712696390322890557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 10

end

end A105853.P4712696390322890557

namespace A105853

/-- `Δ[A160664(n)]%10` -/
def P4712696390322890557.Spec : Prop :=
  ∀ n, P4712696390322890557.a n = A105853 (n + 1)

end A105853

/-! ## A105853.P10322426400252045636

`A001160(n+1)%10`
-/

namespace A105853.P10322426400252045636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001160 (n + 1)) 10

end

end A105853.P10322426400252045636

namespace A105853

/-- `A001160(n+1)%10` -/
def P10322426400252045636.Spec : Prop :=
  ∀ n, P10322426400252045636.a n = A105853 (n + 1)

end A105853

/-! ## A105853.P16977139966953349169

`A013957(n+1)%10`
-/

namespace A105853.P16977139966953349169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013957 (n + 1)) 10

end

end A105853.P16977139966953349169

namespace A105853

/-- `A013957(n+1)%10` -/
def P16977139966953349169.Spec : Prop :=
  ∀ n, P16977139966953349169.a n = A105853 (n + 1)

end A105853

/-! ## A105853.P17837529387855683196

`A097012(n+1)%10`
-/

namespace A105853.P17837529387855683196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097012 (n + 1)) 10

end

end A105853.P17837529387855683196

namespace A105853

/-- `A097012(n+1)%10` -/
def P17837529387855683196.Spec : Prop :=
  ∀ n, P17837529387855683196.a n = A105853 (n + 1)

end A105853

/-! ## A105853.P14308078986731663851

`A245092(2*n+1)%10`
-/

namespace A105853.P14308078986731663851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245092 (2 * n + 1)) 10

end

end A105853.P14308078986731663851

namespace A105853

/-- `A245092(2*n+1)%10` -/
def P14308078986731663851.Spec : Prop :=
  ∀ n, P14308078986731663851.a n = A105853 (n + 1)

end A105853

/-! ## A105853.P5371138019396885440

`(A001065(n+1)+n+1)%10`
-/

namespace A105853.P5371138019396885440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001065 (n + 1) + (n + 1 : ℤ)) 10

end

end A105853.P5371138019396885440

namespace A105853

/-- `(A001065(n+1)+n+1)%10` -/
def P5371138019396885440.Spec : Prop :=
  ∀ n, P5371138019396885440.a n = A105853 (n + 1)

end A105853

/-! ## A105853.P7191722436106749908

`dr(A000203(2*n-(n-1))%10)`
-/

namespace A105853.P7191722436106749908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A000203 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat) 10)

end

end A105853.P7191722436106749908

namespace A105853

/-- `dr(A000203(2*n-(n-1))%10)` -/
def P7191722436106749908.Spec : Prop :=
  ∀ n, (P7191722436106749908.a n : ℤ) = A105853 (n + 1)

end A105853

/-! ## A105853.P5843172239396740861

`A010879(A097011(n+1))`
-/

namespace A105853.P5843172239396740861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A097011 (n + 1)).toNat

end

end A105853.P5843172239396740861

namespace A105853

/-- `A010879(A097011(n+1))` -/
def P5843172239396740861.Spec : Prop :=
  ∀ n, P5843172239396740861.a n = A105853 (n + 1)

end A105853

/-! ## A105853.P8615814937127947777

`A010879(A097012(n+1))`
-/

namespace A105853.P8615814937127947777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A097012 (n + 1)).toNat

end

end A105853.P8615814937127947777

namespace A105853

/-- `A010879(A097012(n+1))` -/
def P8615814937127947777.Spec : Prop :=
  ∀ n, P8615814937127947777.a n = A105853 (n + 1)

end A105853

/-! ## A105853.P10924120866555462230

`A010879(A367466(n+1))`
-/

namespace A105853.P10924120866555462230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A367466 (n + 1)).toNat

end

end A105853.P10924120866555462230

namespace A105853

/-- `A010879(A367466(n+1))` -/
def P10924120866555462230.Spec : Prop :=
  ∀ n, P10924120866555462230.a n = A105853 (n + 1)

end A105853

/-! ## A105853.P1308657268597962316

`A000203(n+1)%A040020(n)`
-/

namespace A105853.P1308657268597962316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (A040020 n)

end

end A105853.P1308657268597962316

namespace A105853

/-- `A000203(n+1)%A040020(n)` -/
def P1308657268597962316.Spec : Prop :=
  ∀ n, P1308657268597962316.a n = A105853 (n + 1)

end A105853

/-! ## A105853.P2678817609402591019

`A097011(n+1)%A040020(n)`
-/

namespace A105853.P2678817609402591019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097011 (n + 1)) (A040020 n)

end

end A105853.P2678817609402591019

namespace A105853

/-- `A097011(n+1)%A040020(n)` -/
def P2678817609402591019.Spec : Prop :=
  ∀ n, P2678817609402591019.a n = A105853 (n + 1)

end A105853

/-! ## A105853.P14295852205396233189

`A122162(n+1)%A040020(n)`
-/

namespace A105853.P14295852205396233189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122162 (n + 1)) (A040020 n)

end

end A105853.P14295852205396233189

namespace A105853

/-- `A122162(n+1)%A040020(n)` -/
def P14295852205396233189.Spec : Prop :=
  ∀ n, P14295852205396233189.a n = A105853 (n + 1)

end A105853

/-! ## A105853.P4844448399739317129

`A284344(n+1)%A040020(n)`
-/

namespace A105853.P4844448399739317129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284344 (n + 1)) (A040020 n)

end

end A105853.P4844448399739317129

namespace A105853

/-- `A284344(n+1)%A040020(n)` -/
def P4844448399739317129.Spec : Prop :=
  ∀ n, P4844448399739317129.a n = A105853 (n + 1)

end A105853

/-! ## A105853.P1623524983221456953

`A323394(n+1)%A040020(n)`
-/

namespace A105853.P1623524983221456953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323394 (n + 1)) (A040020 n)

end

end A105853.P1623524983221456953

namespace A105853

/-- `A323394(n+1)%A040020(n)` -/
def P1623524983221456953.Spec : Prop :=
  ∀ n, P1623524983221456953.a n = A105853 (n + 1)

end A105853

/-! ## A105853.P12187672211967742724

`A344139(n+1)%A040020(n)`
-/

namespace A105853.P12187672211967742724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344139 (n + 1)) (A040020 n)

end

end A105853.P12187672211967742724

namespace A105853

/-- `A344139(n+1)%A040020(n)` -/
def P12187672211967742724.Spec : Prop :=
  ∀ n, P12187672211967742724.a n = A105853 (n + 1)

end A105853

/-! ## A105853.P10229969929154066734

`A367466(n+1)%A040020(n)`
-/

namespace A105853.P10229969929154066734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367466 (n + 1)) (A040020 n)

end

end A105853.P10229969929154066734

namespace A105853

/-- `A367466(n+1)%A040020(n)` -/
def P10229969929154066734.Spec : Prop :=
  ∀ n, P10229969929154066734.a n = A105853 (n + 1)

end A105853

/-!
# A105854: Primes of the form 20*k + 3.

The programs for A105854, the canonical program `A105854.P12072149843490517274` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105854 has offset 1).

The definition of A105854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9835 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105854.P2329856538054341908

`∪[A142184(n+1), A142192(n+1)]`
-/

namespace A105854.P2329856538054341908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A105854.P2329856538054341908

namespace A105854

/-- `∪[A142184(n+1), A142192(n+1)]` -/
def P2329856538054341908.Spec : Prop :=
  ∀ n, (P2329856538054341908.a n : ℤ) = A105854 (n + 1)

end A105854

/-! ## A105854.P12072149843490517274

`p?[20*n+3]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A105854

/-- `p?[20*n+3]` -/
def P12072149843490517274.Spec : Prop :=
  ∀ n, (P12072149843490517274.a n : ℤ) = A105854 (n + 1)

theorem P12072149843490517274.correct : P12072149843490517274.Spec := by
  intro n
  simp only [A105854, Nat.add_sub_cancel]

end A105854

/-! ## A105854.P349516035335203558

`or(1, p?[a(n-1)+20])` with `a(0)=3`
-/

namespace A105854.P349516035335203558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A105854.P349516035335203558

namespace A105854

/-- `or(1, p?[a(n-1)+20])` -/
def P349516035335203558.Spec : Prop :=
  ∀ n, (P349516035335203558.a n : ℤ) = A105854 (n + 1)

end A105854

/-! ## A105854.P18241398334289749733

`∩[A030431(n+1), A106865(n+1)]`
-/

namespace A105854.P18241398334289749733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105854.P18241398334289749733

namespace A105854

/-- `∩[A030431(n+1), A106865(n+1)]` -/
def P18241398334289749733.Spec : Prop :=
  ∀ n, (P18241398334289749733.a n : ℤ) = A105854 (n + 1)

end A105854

/-! ## A105854.P2734635474598512933

`∩[A045414(n+1), A106865(n+1)]`
-/

namespace A105854.P2734635474598512933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105854.P2734635474598512933

namespace A105854

/-- `∩[A045414(n+1), A106865(n+1)]` -/
def P2734635474598512933.Spec : Prop :=
  ∀ n, (P2734635474598512933.a n : ℤ) = A105854 (n + 1)

end A105854

/-! ## A105854.P4351554917027135273

`∩[A045414(n+1), A122870(n+1)]`
-/

namespace A105854.P4351554917027135273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105854.P4351554917027135273

namespace A105854

/-- `∩[A045414(n+1), A122870(n+1)]` -/
def P4351554917027135273.Spec : Prop :=
  ∀ n, (P4351554917027135273.a n : ℤ) = A105854 (n + 1)

end A105854

/-! ## A105854.P13715895862376316604

`∩[A030431(n+1), A053027(n+1)]`
-/

namespace A105854.P13715895862376316604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105854.P13715895862376316604

namespace A105854

/-- `∩[A030431(n+1), A053027(n+1)]` -/
def P13715895862376316604.Spec : Prop :=
  ∀ n, (P13715895862376316604.a n : ℤ) = A105854 (n + 1)

end A105854

/-! ## A105854.P12193302184142038195

`∩[A045414(n+1), A053027(n+1)]`
-/

namespace A105854.P12193302184142038195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105854.P12193302184142038195

namespace A105854

/-- `∩[A045414(n+1), A053027(n+1)]` -/
def P12193302184142038195.Spec : Prop :=
  ∀ n, (P12193302184142038195.a n : ℤ) = A105854 (n + 1)

end A105854

/-! ## A105854.P9387972753287625532

`∩[A030431(n+1), A139513(n+1)]`
-/

namespace A105854.P9387972753287625532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105854.P9387972753287625532

namespace A105854

/-- `∩[A030431(n+1), A139513(n+1)]` -/
def P9387972753287625532.Spec : Prop :=
  ∀ n, (P9387972753287625532.a n : ℤ) = A105854 (n + 1)

end A105854

/-! ## A105854.P1707665106898244600

`∩[A030431(n+1), A240920(n+1)]`
-/

namespace A105854.P1707665106898244600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105854.P1707665106898244600

namespace A105854

/-- `∩[A030431(n+1), A240920(n+1)]` -/
def P1707665106898244600.Spec : Prop :=
  ∀ n, (P1707665106898244600.a n : ℤ) = A105854 (n + 1)

end A105854

/-! ## A105854.P6927410083803272914

`∩[A045407(n+1), A106865(n+1)]`
-/

namespace A105854.P6927410083803272914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105854.P6927410083803272914

namespace A105854

/-- `∩[A045407(n+1), A106865(n+1)]` -/
def P6927410083803272914.Spec : Prop :=
  ∀ n, (P6927410083803272914.a n : ℤ) = A105854 (n + 1)

end A105854

/-! ## A105854.P1375914801646275366

`∩[A045429(n+1), A106865(n+1)]`
-/

namespace A105854.P1375914801646275366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105854.P1375914801646275366

namespace A105854

/-- `∩[A045429(n+1), A106865(n+1)]` -/
def P1375914801646275366.Spec : Prop :=
  ∀ n, (P1375914801646275366.a n : ℤ) = A105854 (n + 1)

end A105854

/-! ## A105854.P3072530276466898658

`∩[A045413(n+1), A106865(n+1)]`
-/

namespace A105854.P3072530276466898658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105854.P3072530276466898658

namespace A105854

/-- `∩[A045413(n+1), A106865(n+1)]` -/
def P3072530276466898658.Spec : Prop :=
  ∀ n, (P3072530276466898658.a n : ℤ) = A105854 (n + 1)

end A105854

/-! ## A105854.P8290929667889305425

`∩[A045435(n+1), A106865(n+1)]`
-/

namespace A105854.P8290929667889305425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105854.P8290929667889305425

namespace A105854

/-- `∩[A045435(n+1), A106865(n+1)]` -/
def P8290929667889305425.Spec : Prop :=
  ∀ n, (P8290929667889305425.a n : ℤ) = A105854 (n + 1)

end A105854

/-! ## A105854.P12826484740828562269

`∩[A002145(n+1), A030431(n+1)]`
-/

namespace A105854.P12826484740828562269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105854.P12826484740828562269

namespace A105854

/-- `∩[A002145(n+1), A030431(n+1)]` -/
def P12826484740828562269.Spec : Prop :=
  ∀ n, (P12826484740828562269.a n : ℤ) = A105854 (n + 1)

end A105854

/-! ## A105854.P13610551342087423945

`∩[A002145(n+1), A045414(n+1)]`
-/

namespace A105854.P13610551342087423945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105854.P13610551342087423945

namespace A105854

/-- `∩[A002145(n+1), A045414(n+1)]` -/
def P13610551342087423945.Spec : Prop :=
  ∀ n, (P13610551342087423945.a n : ℤ) = A105854 (n + 1)

end A105854

/-! ## A105854.P12907110065255933037

`∩[A030431(n+1), A045326(n+1)]`
-/

namespace A105854.P12907110065255933037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105854.P12907110065255933037

namespace A105854

/-- `∩[A030431(n+1), A045326(n+1)]` -/
def P12907110065255933037.Spec : Prop :=
  ∀ n, (P12907110065255933037.a n : ℤ) = A105854 (n + 1)

end A105854

/-! ## A105854.P8440149163021732182

`∩[A045326(n+1), A045414(n+1)]`
-/

namespace A105854.P8440149163021732182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105854.P8440149163021732182

namespace A105854

/-- `∩[A045326(n+1), A045414(n+1)]` -/
def P8440149163021732182.Spec : Prop :=
  ∀ n, (P8440149163021732182.a n : ℤ) = A105854 (n + 1)

end A105854

/-! ## A105854.P1124650326821628494

`∩[A030431(n+1), A091727(n+1)]`
-/

namespace A105854.P1124650326821628494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105854.P1124650326821628494

namespace A105854

/-- `∩[A030431(n+1), A091727(n+1)]` -/
def P1124650326821628494.Spec : Prop :=
  ∀ n, (P1124650326821628494.a n : ℤ) = A105854 (n + 1)

end A105854

/-! ## A105854.P14038861603688278734

`∩[A030431(n+1), A085760(n+1)]`
-/

namespace A105854.P14038861603688278734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105854.P14038861603688278734

namespace A105854

/-- `∩[A030431(n+1), A085760(n+1)]` -/
def P14038861603688278734.Spec : Prop :=
  ∀ n, (P14038861603688278734.a n : ℤ) = A105854 (n + 1)

end A105854

/-!
# A105855: A104647(n+1) - A104647(n).

The programs for A105855, the canonical program `A105855.P14524528389678712476` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105855 has offset 0).

The definition of A105855 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104647, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A105855.P14524528389678712476

`A104647(n+1)-A104647(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A105855

/-- `A104647(n+1)-A104647(n)` -/
def P14524528389678712476.Spec : Prop :=
  ∀ n, P14524528389678712476.a n = A105855 n

theorem P14524528389678712476.correct : P14524528389678712476.Spec := by
  intro n
  simp only [A105855]

end A105855

/-! ## A105855.P6451183521301942310

`Δ[a(n-2)%n+a(n-1)%n]` with `a(0)=0, a(1)=1`
-/

namespace A105855.P6451183521301942310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) % n + f1 (n - 1) % n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A105855.P6451183521301942310

namespace A105855

/-- `Δ[a(n-2)%n+a(n-1)%n]` -/
def P6451183521301942310.Spec : Prop :=
  ∀ n, P6451183521301942310.a n = A105855 n

end A105855

/-! ## A105855.P13733056695563152438

`Δ[A104647(n)]`
-/

namespace A105855.P13733056695563152438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104647 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105855.P13733056695563152438

namespace A105855

/-- `Δ[A104647(n)]` -/
def P13733056695563152438.Spec : Prop :=
  ∀ n, P13733056695563152438.a n = A105855 n

theorem P13733056695563152438.correct : P13733056695563152438.Spec := by
  intro n
  simp only [A105855, Nat.add_sub_cancel, A105855.P13733056695563152438.f1, A105855.P13733056695563152438.a, A105855.P14524528389678712476.a, SequenceMachineLib.memo_apply]

end A105855

/-! ## A105855.P9266311055969732165

`Δ[Δ[A105856(A028310(n)-1)]]`
-/

namespace A105855.P9266311055969732165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105856 (A028310 n - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105855.P9266311055969732165

namespace A105855

/-- `Δ[Δ[A105856(A028310(n)-1)]]` -/
def P9266311055969732165.Spec : Prop :=
  ∀ n, P9266311055969732165.a n = A105855 n

end A105855

/-! ## A105855.P3425990763512302068

`Δ[Δ[A105856(n-A019429(2*n))]]`
-/

namespace A105855.P3425990763512302068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105856 ((n : ℤ) - A019429 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105855.P3425990763512302068

namespace A105855

/-- `Δ[Δ[A105856(n-A019429(2*n))]]` -/
def P3425990763512302068.Spec : Prop :=
  ∀ n, P3425990763512302068.a n = A105855 n

end A105855

/-!
# A105856: a(n) = a(n-1) + A104647(n), a(0) = 0.

The programs for A105856, the canonical program `A105856.P10679960069310382758` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105856 has offset 0).

The definition of A105856 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104647, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A105856.P10679960069310382758

`a(n-1)+A104647(n)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A105856

/-- `a(n-1)+A104647(n)` -/
def P10679960069310382758.Spec : Prop :=
  ∀ n, P10679960069310382758.a n = A105856 n

theorem P10679960069310382758.correct : P10679960069310382758.Spec := by
  intro n
  simp only [A105856]

end A105856

/-! ## A105856.P15948112340303503726

`∑[a(n-2)%n+a(n-1)%n]` with `a(0)=0, a(1)=1`
-/

namespace A105856.P15948112340303503726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) % n + f1 (n - 1) % n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105856.P15948112340303503726

namespace A105856

/-- `∑[a(n-2)%n+a(n-1)%n]` -/
def P15948112340303503726.Spec : Prop :=
  ∀ n, (P15948112340303503726.a n : ℤ) = A105856 n

end A105856

/-! ## A105856.P3037031686026203375

`∑[A104647(n)]`
-/

namespace A105856.P3037031686026203375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104647 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105856.P3037031686026203375

namespace A105856

/-- `∑[A104647(n)]` -/
def P3037031686026203375.Spec : Prop :=
  ∀ n, P3037031686026203375.a n = A105856 n

end A105856

/-! ## A105856.P15648921617483410426

`∑[∑[A105855(abs(1-n))]]`
-/

namespace A105856.P15648921617483410426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105855 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105856.P15648921617483410426

namespace A105856

/-- `∑[∑[A105855(abs(1-n))]]` -/
def P15648921617483410426.Spec : Prop :=
  ∀ n, P15648921617483410426.a n = A105856 n

end A105856

/-! ## A105856.P5744214037692790540

`∑[A105855(n-1)+a(n-1)]` with `a(0)=0`
-/

namespace A105856.P5744214037692790540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A105855 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105856.P5744214037692790540

namespace A105856

/-- `∑[A105855(n-1)+a(n-1)]` -/
def P5744214037692790540.Spec : Prop :=
  ∀ n, P5744214037692790540.a n = A105856 n

end A105856

/-! ## A105856.P12118816205390799749

`A104647(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A105856.P12118816205390799749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A104647 n + a (A023443 n).toNat

end

end A105856.P12118816205390799749

namespace A105856

/-- `A104647(n)+a(A023443(n))` -/
def P12118816205390799749.Spec : Prop :=
  ∀ n, P12118816205390799749.a n = A105856 n

end A105856

/-! ## A105856.P15048730527581146281

`∑[∑[A105855(n)]-A105855(n)]`
-/

namespace A105856.P15048730527581146281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105855 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A105855 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105856.P15048730527581146281

namespace A105856

/-- `∑[∑[A105855(n)]-A105855(n)]` -/
def P15048730527581146281.Spec : Prop :=
  ∀ n, P15048730527581146281.a n = A105856 n

end A105856

/-!
# A105858: Records in A104647.

The programs for A105858, the canonical program `A105858.P3602743126431140910` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105858 has offset 0).

The definition of A105858 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105858.P3602743126431140910

`record[a(n-2)%n+a(n-1)%n]` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A105858

/-- `record[a(n-2)%n+a(n-1)%n]` -/
def P3602743126431140910.Spec : Prop :=
  ∀ n, (P3602743126431140910.a n : ℤ) = A105858 n

theorem P3602743126431140910.correct : P3602743126431140910.Spec := by
  intro n
  simp only [A105858]

end A105858

/-! ## A105858.P1320434035806953893

`record[A104647(n)]`
-/

namespace A105858.P1320434035806953893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104647 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105858.P1320434035806953893

namespace A105858

/-- `record[A104647(n)]` -/
def P1320434035806953893.Spec : Prop :=
  ∀ n, P1320434035806953893.a n = A105858 n

end A105858

/-! ## A105858.P14108857876790178455

`A104647(A105857(n))`
-/

namespace A105858.P14108857876790178455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104647 (A105857 n).toNat

end

end A105858.P14108857876790178455

namespace A105858

/-- `A104647(A105857(n))` -/
def P14108857876790178455.Spec : Prop :=
  ∀ n, P14108857876790178455.a n = A105858 n

end A105858

/-! ## A105858.P11569987569393185809

`record[Δ[A105856(A028310(n))]]`
-/

namespace A105858.P11569987569393185809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105856 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105858.P11569987569393185809

namespace A105858

/-- `record[Δ[A105856(A028310(n))]]` -/
def P11569987569393185809.Spec : Prop :=
  ∀ n, P11569987569393185809.a n = A105858 n

end A105858

/-! ## A105858.P7320618385863029622

`record[Δ[A105856(A187329(n))]]`
-/

namespace A105858.P7320618385863029622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105856 (A187329 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105858.P7320618385863029622

namespace A105858

/-- `record[Δ[A105856(A187329(n))]]` -/
def P7320618385863029622.Spec : Prop :=
  ∀ n, P7320618385863029622.a n = A105858 n

end A105858

/-!
# A105860: Numbers m such that A104647(m) < A104647(m-1) + A104647(m-2).

The programs for A105860, there is no canonical definition to state claims against.
-/

/-! ## A105860.P14962417955005884736

`comp[A105859(n+1)-2]+2`
-/

namespace A105860.P14962417955005884736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105859 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A105860.P14962417955005884736

/-! ## A105860.P8014951657541178260

`comp[∪[A105859(n+1), A105857(n)]]`
-/

namespace A105860.P8014951657541178260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105859 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105857 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A105860.P8014951657541178260

/-! ## A105860.P13979502292036428468

`lt[14, A001055(A054436(n+3))]`
-/

namespace A105860.P13979502292036428468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A054436 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A105860.P13979502292036428468

/-! ## A105860.P2475561369202043235

`A346693(A022842(n+5))-A346693(n+3)`
-/

namespace A105860.P2475561369202043235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346693 (A022842 (n + 5)).toNat - A346693 (n + 3)

end

end A105860.P2475561369202043235

/-!
# A105861: a(n) = (n/2) * Sum_{k=0..n} binomial(n,k)/gcd(n,k).

The programs for A105861, there is no canonical definition to state claims against.
-/

/-! ## A105861.P17778174200141166492

`∑[A122308(A132461(n)+n)]`
-/

namespace A105861.P17778174200141166492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122308 (A132461 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105861.P17778174200141166492

/-!
# A105862: a(n) = n * Sum_{d|n} binomial(n,d)/gcd(n,d).

The programs for A105862, there is no canonical definition to state claims against.
-/

/-! ## A105862.P12836423280204197060

`A338662(∑[A332344(n)!])`
-/

namespace A105862.P12836423280204197060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A332344 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338662 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105862.P12836423280204197060

/-! ## A105862.P363801104729077247

`A338662(∑[A351822(n)!])`
-/

namespace A105862.P363801104729077247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A351822 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338662 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105862.P363801104729077247

/-!
# A105863: a(n) = n * Sum_{d|n} (binomial(n,d) / gcd(n,d)).

The programs for A105863, the canonical program `A105863.P815048038742356543` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105863 has offset 1).

The definition of A105863 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056045, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A105863.P815048038742356543

`(n+1)*A056045(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A105863

/-- `(n+1)*A056045(n+1)` -/
def P815048038742356543.Spec : Prop :=
  ∀ n, P815048038742356543.a n = A105863 (n + 1)

theorem P815048038742356543.correct : P815048038742356543.Spec := by
  intro n
  simp only [A105863, Nat.add_sub_cancel]

end A105863

/-! ## A105863.P17557404818181788032

`(n+1)*(2^(n+1)-A056200(n+1))`
-/

namespace A105863.P17557404818181788032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((2 ^ (n + 1) : ℤ) - A056200 (n + 1))

end

end A105863.P17557404818181788032

namespace A105863

/-- `(n+1)*(2^(n+1)-A056200(n+1))` -/
def P17557404818181788032.Spec : Prop :=
  ∀ n, P17557404818181788032.a n = A105863 (n + 1)

theorem P17557404818181788032.correct : P17557404818181788032.Spec := by
  intro n
  simp only [A105863, Nat.add_sub_cancel, A105863.P17557404818181788032.a, A105863.P815048038742356543.a, A056045, A056045.P5899715325518009035.f1, A056045.P5899715325518009035.a, A056200, A056200.P3887230577951053264.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A105863

/-! ## A105863.P4191952719973620474

`∑{d}[n+1, (n+1)*C(n+1, #)]`
-/

namespace A105863.P4191952719973620474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1) * Nat.choose (n + 1) d

end

end A105863.P4191952719973620474

namespace A105863

/-- `∑{d}[n+1, (n+1)*C(n+1, #)]` -/
def P4191952719973620474.Spec : Prop :=
  ∀ n, (P4191952719973620474.a n : ℤ) = A105863 (n + 1)

end A105863

/-! ## A105863.P11714878035841354284

`∑{d}[n+1, (n+1)*A007318(A000217(n+1)+#)]`
-/

namespace A105863.P11714878035841354284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℤ) * A007318 (A000217 (n + 1) + (d : ℤ)).toNat

end

end A105863.P11714878035841354284

namespace A105863

/-- `∑{d}[n+1, (n+1)*A007318(A000217(n+1)+#)]` -/
def P11714878035841354284.Spec : Prop :=
  ∀ n, P11714878035841354284.a n = A105863 (n + 1)

end A105863

/-! ## A105863.P9336945121177349095

`(n+1)*∑{d}[n+1, A007318(A000096(n+1)-#)]`
-/

namespace A105863.P9336945121177349095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A007318 (A000096 (n + 1) - (d : ℤ)).toNat)

end

end A105863.P9336945121177349095

namespace A105863

/-- `(n+1)*∑{d}[n+1, A007318(A000096(n+1)-#)]` -/
def P9336945121177349095.Spec : Prop :=
  ∀ n, P9336945121177349095.a n = A105863 (n + 1)

end A105863

/-!
# A105864: Expansion of (1/(1-x^2))*c(x/(1-x^2)), where c(x) is the g.f. of A000108.

The programs for A105864, there is no canonical definition to state claims against.
-/

/-! ## A105864.P11366959133178966014

`∑[A128750(n)]`
-/

namespace A105864.P11366959133178966014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128750 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105864.P11366959133178966014

/-! ## A105864.P5091180949592927480

`A085139(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A105864.P5091180949592927480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A085139 n + a (n - 2)

end

end A105864.P5091180949592927480

/-! ## A105864.P6194313471657477119

`a(n-2)+2*A247172(n)` with `a(0)=1, a(1)=1`
-/

namespace A105864.P6194313471657477119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + 2 * A247172 n

end

end A105864.P6194313471657477119

/-! ## A105864.P2923396848060624757

`A128750(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A105864.P2923396848060624757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A128750 n + a (A023443 n).toNat

end

end A105864.P2923396848060624757

/-! ## A105864.P899825821471707177

`A128750(A004524(2*n+1))+a(n-1)` with `a(0)=1`
-/

namespace A105864.P899825821471707177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A128750 (A004524 (2 * n + 1)).toNat + a (n - 1)

end

end A105864.P899825821471707177

/-!
# A105865: Expansion of (1/(1-2*x^2))*c(x/(1-2*x^2)), where c(x) is the g.f. of A000108.

The programs for A105865, there is no canonical definition to state claims against.
-/

/-! ## A105865.P11604618572400253650

`A007719(n)-A391642(A119330(n))`
-/

namespace A105865.P11604618572400253650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007719 n - A391642 (A119330 n).toNat

end

end A105865.P11604618572400253650

/-! ## A105865.P4176968936351920691

`A089576(A150658(n))-A007814(n+1)`
-/

namespace A105865.P4176968936351920691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089576 (A150658 n).toNat - A007814 (n + 1)

end

end A105865.P4176968936351920691

/-! ## A105865.P2778275363319250616

`A339225(n+1)-A209640(A267515(n))`
-/

namespace A105865.P2778275363319250616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339225 (n + 1) - A209640 (A267515 n).toNat

end

end A105865.P2778275363319250616

/-!
# A105866: A generalized Chebyshev transform of the Fibonacci numbers.

The programs for A105866, the canonical program `A105866.P2413868437218026661` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105866 has offset 0).

The definition of A105866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105866.P2413868437218026661

`ogf(x/(1-x-5x^2+2x^3+4x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A105866

/-- `ogf(x/(1-x-5x^2+2x^3+4x^4))` -/
def P2413868437218026661.Spec : Prop :=
  ∀ n, P2413868437218026661.a n = A105866 n

theorem P2413868437218026661.correct : P2413868437218026661.Spec := by
  intro n
  simp only [A105866]

end A105866

/-!
# A105867: A generalized Chebyshev transform of the Jacobsthal numbers.

The programs for A105867, the canonical program `A105867.P10847074344426061968` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105867 has offset 0).

The definition of A105867 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105867.P10847074344426061968

`ogf(x/(1-x-6x^2+2x^3+4x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A105867

/-- `ogf(x/(1-x-6x^2+2x^3+4x^4))` -/
def P10847074344426061968.Spec : Prop :=
  ∀ n, P10847074344426061968.a n = A105867 n

theorem P10847074344426061968.correct : P10847074344426061968.Spec := by
  intro n
  simp only [A105867]

end A105867

/-! ## A105867.P11921425114144853264

`A073353(2*a(n-3)+3*a(n-2))+1` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A105867.P11921425114144853264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  A073353 (2 * a (n - 3) + 3 * a (n - 2)).toNat + 1

end

end A105867.P11921425114144853264

namespace A105867

/-- `A073353(2*a(n-3)+3*a(n-2))+1` -/
def P11921425114144853264.Spec : Prop :=
  ∀ n, P11921425114144853264.a n = A105867 n

end A105867

/-! ## A105867.P11395873836895575682

`A130497(5*(2*a(n-3)+3*a(n-2)))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A105867.P11395873836895575682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  A130497 (5 * (2 * a (n - 3) + 3 * a (n - 2))).toNat

end

end A105867.P11395873836895575682

namespace A105867

/-- `A130497(5*(2*a(n-3)+3*a(n-2)))` -/
def P11395873836895575682.Spec : Prop :=
  ∀ n, P11395873836895575682.a n = A105867 n

end A105867

/-!
# A105868: Triangle read by rows, T(n,k) = C(n,k)*C(k,n-k).

The programs for A105868, the canonical program `A105868.P10539936422106588351` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105868 has offset 0).

The definition of A105868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105868.P10539936422106588351

`A089627(A061579(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A105868

/-- `A089627(A061579(n))` -/
def P10539936422106588351.Spec : Prop :=
  ∀ n, P10539936422106588351.a n = A105868 n

theorem P10539936422106588351.correct : P10539936422106588351.Spec := by
  intro n
  simp only [A105868]

end A105868

/-! ## A105868.P11004634371968663220

`A089627(A038722(n+2))`
-/

namespace A105868.P11004634371968663220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089627 (A038722 (n + 2)).toNat

end

end A105868.P11004634371968663220

namespace A105868

/-- `A089627(A038722(n+2))` -/
def P11004634371968663220.Spec : Prop :=
  ∀ n, P11004634371968663220.a n = A105868 n

end A105868

/-! ## A105868.P8435923452256789491

`A007318(n)*A026729(n)`
-/

namespace A105868.P8435923452256789491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A026729 n

end

end A105868.P8435923452256789491

namespace A105868

/-- `A007318(n)*A026729(n)` -/
def P8435923452256789491.Spec : Prop :=
  ∀ n, P8435923452256789491.a n = A105868 n

end A105868

/-! ## A105868.P9101025694935346798

`A026729(n)*A091918(n)`
-/

namespace A105868.P9101025694935346798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A091918 n

end

end A105868.P9101025694935346798

namespace A105868

/-- `A026729(n)*A091918(n)` -/
def P9101025694935346798.Spec : Prop :=
  ∀ n, P9101025694935346798.a n = A105868 n

end A105868

/-! ## A105868.P18427487929750931854

`A026729(n)*A101508(n)`
-/

namespace A105868.P18427487929750931854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A101508 n

end

end A105868.P18427487929750931854

namespace A105868

/-- `A026729(n)*A101508(n)` -/
def P18427487929750931854.Spec : Prop :=
  ∀ n, P18427487929750931854.a n = A105868 n

end A105868

/-! ## A105868.P527191548982372432

`A026729(n)*A111505(n)`
-/

namespace A105868.P527191548982372432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A111505 n

end

end A105868.P527191548982372432

namespace A105868

/-- `A026729(n)*A111505(n)` -/
def P527191548982372432.Spec : Prop :=
  ∀ n, P527191548982372432.a n = A105868 n

end A105868

/-! ## A105868.P10986201989724168976

`A026729(n)*A128807(n)`
-/

namespace A105868.P10986201989724168976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A128807 n

end

end A105868.P10986201989724168976

namespace A105868

/-- `A026729(n)*A128807(n)` -/
def P10986201989724168976.Spec : Prop :=
  ∀ n, P10986201989724168976.a n = A105868 n

end A105868

/-! ## A105868.P2430781494366464508

`A026729(n)*A132749(n)`
-/

namespace A105868.P2430781494366464508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A132749 n

end

end A105868.P2430781494366464508

namespace A105868

/-- `A026729(n)*A132749(n)` -/
def P2430781494366464508.Spec : Prop :=
  ∀ n, P2430781494366464508.a n = A105868 n

end A105868

/-! ## A105868.P15622545700012831705

`A026729(n)*A135227(n)`
-/

namespace A105868.P15622545700012831705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A135227 n

end

end A105868.P15622545700012831705

namespace A105868

/-- `A026729(n)*A135227(n)` -/
def P15622545700012831705.Spec : Prop :=
  ∀ n, P15622545700012831705.a n = A105868 n

end A105868

/-! ## A105868.P18005747977839693684

`A059674(n)*A111505(n)`
-/

namespace A105868.P18005747977839693684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 n * A111505 n

end

end A105868.P18005747977839693684

namespace A105868

/-- `A059674(n)*A111505(n)` -/
def P18005747977839693684.Spec : Prop :=
  ∀ n, P18005747977839693684.a n = A105868 n

end A105868

/-! ## A105868.P8902615316912383827

`A097805(n)*A098599(n)`
-/

namespace A105868.P8902615316912383827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A098599 n

end

end A105868.P8902615316912383827

namespace A105868

/-- `A097805(n)*A098599(n)` -/
def P8902615316912383827.Spec : Prop :=
  ∀ n, P8902615316912383827.a n = A105868 n

end A105868

/-! ## A105868.P3071261968051739053

`A089688(n)*A107131(n)`
-/

namespace A105868.P3071261968051739053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089688 n * A107131 n

end

end A105868.P3071261968051739053

namespace A105868

/-- `A089688(n)*A107131(n)` -/
def P3071261968051739053.Spec : Prop :=
  ∀ n, P3071261968051739053.a n = A105868 n

end A105868

/-! ## A105868.P5863337991814155245

`A091917(n)*A109466(n)`
-/

namespace A105868.P5863337991814155245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091917 n * A109466 n

end

end A105868.P5863337991814155245

namespace A105868

/-- `A091917(n)*A109466(n)` -/
def P5863337991814155245.Spec : Prop :=
  ∀ n, P5863337991814155245.a n = A105868 n

end A105868

/-! ## A105868.P15524781841390485200

`A098158(n)*A106187(n)`
-/

namespace A105868.P15524781841390485200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 n * A106187 n

end

end A105868.P15524781841390485200

namespace A105868

/-- `A098158(n)*A106187(n)` -/
def P15524781841390485200.Spec : Prop :=
  ∀ n, P15524781841390485200.a n = A105868 n

end A105868

/-! ## A105868.P17012267576545053579

`A026729(n)*A183154(n)`
-/

namespace A105868.P17012267576545053579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A183154 n

end

end A105868.P17012267576545053579

namespace A105868

/-- `A026729(n)*A183154(n)` -/
def P17012267576545053579.Spec : Prop :=
  ∀ n, P17012267576545053579.a n = A105868 n

end A105868

/-! ## A105868.P17584963320718595982

`A026729(n)*A206735(n)`
-/

namespace A105868.P17584963320718595982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A206735 n

end

end A105868.P17584963320718595982

namespace A105868

/-- `A026729(n)*A206735(n)` -/
def P17584963320718595982.Spec : Prop :=
  ∀ n, P17584963320718595982.a n = A105868 n

end A105868

/-! ## A105868.P11576236496555103874

`A109466(n)*A130595(n)`
-/

namespace A105868.P11576236496555103874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109466 n * A130595 n

end

end A105868.P11576236496555103874

namespace A105868

/-- `A109466(n)*A130595(n)` -/
def P11576236496555103874.Spec : Prop :=
  ∀ n, P11576236496555103874.a n = A105868 n

end A105868

/-! ## A105868.P9227574164765853977

`A109466(n)*A137683(n)`
-/

namespace A105868.P9227574164765853977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109466 n * A137683 n

end

end A105868.P9227574164765853977

namespace A105868

/-- `A109466(n)*A137683(n)` -/
def P9227574164765853977.Spec : Prop :=
  ∀ n, P9227574164765853977.a n = A105868 n

end A105868

/-! ## A105868.P970925819806288687

`A107131(n)*A193592(n)`
-/

namespace A105868.P970925819806288687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107131 n * A193592 n

end

end A105868.P970925819806288687

namespace A105868

/-- `A107131(n)*A193592(n)` -/
def P970925819806288687.Spec : Prop :=
  ∀ n, P970925819806288687.a n = A105868 n

end A105868

/-! ## A105868.P16104287740461249737

`A107131(n)*A193739(n)`
-/

namespace A105868.P16104287740461249737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107131 n * A193739 n

end

end A105868.P16104287740461249737

namespace A105868

/-- `A107131(n)*A193739(n)` -/
def P16104287740461249737.Spec : Prop :=
  ∀ n, P16104287740461249737.a n = A105868 n

end A105868

/-!
# A105870: Fibonacci sequence (mod 7).

The programs for A105870, the canonical program `A105870.P13855094138663942023` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105870 has offset 0).

The definition of A105870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105870.P13855094138663942023

`(a(n-1)+a(n-2))%7` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A105870

/-- `(a(n-1)+a(n-2))%7` -/
def P13855094138663942023.Spec : Prop :=
  ∀ n, (P13855094138663942023.a n : ℤ) = A105870 n

theorem P13855094138663942023.correct : P13855094138663942023.Spec := by
  intro n
  simp only [A105870]

end A105870

/-!
# A105871: a(n) = sum{k=0..floor(n/2), C(2*n-3*k, n)*C(n-k, k)}.

The programs for A105871, there is no canonical definition to state claims against.
-/

/-! ## A105871.P4106420531092119734

`A194960(A087811(n+1)+4^n-2^n)`
-/

namespace A105871.P4106420531092119734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194960 (A087811 (n + 1) + ((4 ^ n : ℤ) - (2 ^ n : ℤ))).toNat

end

end A105871.P4106420531092119734

/-! ## A105871.P13126619393707495138

`A005185(A319752(n)+A014445(n))`
-/

namespace A105871.P13126619393707495138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A319752 n + A014445 n).toNat

end

end A105871.P13126619393707495138

/-! ## A105871.P12603808811439938491

`xor(A126176(A126182(n)), A150249(n))`
-/

namespace A105871.P12603808811439938491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A126176 (A126182 n).toNat) (A150249 n)

end

end A105871.P12603808811439938491

/-!
# A105872: a(n) = Sum_{k=0..floor(n/3)} binomial(2*n-3*k, n).

The programs for A105872, there is no canonical definition to state claims against.
-/

/-! ## A105872.P4803225082544270961

`A371758(n+1)-A371871(n+1)`
-/

namespace A105872.P4803225082544270961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371758 (n + 1) - A371871 (n + 1)

end

end A105872.P4803225082544270961

/-! ## A105872.P10925178031250389467

`A118923((2*n+1)²-2*n²)`
-/

namespace A105872.P10925178031250389467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118923 ((2 * n + 1) ^ 2 - 2 * n ^ 2)

end

end A105872.P10925178031250389467

/-! ## A105872.P3114240883490736560

`A366107(2*n+3)`
-/

namespace A105872.P3114240883490736560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366107 (2 * n + 3)

end

end A105872.P3114240883490736560

/-! ## A105872.P111448084461564510

`record[A118923(A136193(n+2)-1)]`
-/

namespace A105872.P111448084461564510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118923 (A136193 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105872.P111448084461564510

/-!
# A105874: Primes for which -2 is a primitive root.

The programs for A105874, there is no canonical definition to state claims against.
-/

/-! ## A105874.P7385661048864142102

`2*A163781(n+1)+1`
-/

namespace A105874.P7385661048864142102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163781 (n + 1) + 1

end

end A105874.P7385661048864142102

/-! ## A105874.P11514964660266064943

`2*∪[A163777(n+1), A163780(n+1)]+1`
-/

namespace A105874.P11514964660266064943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A105874.P11514964660266064943

/-! ## A105874.P10736129915232957910

`p?[A167798(n+1)]`
-/

namespace A105874.P10736129915232957910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105874.P10736129915232957910

/-! ## A105874.P13300399028336229601

`∩[A003628(n+1), A167798(n+1)]`
-/

namespace A105874.P13300399028336229601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105874.P13300399028336229601

/-! ## A105874.P16071634113830989559

`∩[A015919(n+1), A167798(n+1)]`
-/

namespace A105874.P16071634113830989559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105874.P16071634113830989559

/-! ## A105874.P1463965438771994187

`∩[A003628(n+1), A179538(n+1)]`
-/

namespace A105874.P1463965438771994187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105874.P1463965438771994187

/-! ## A105874.P14183479320179391942

`∩[A003628(n+1), A007885(n+1)]`
-/

namespace A105874.P14183479320179391942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105874.P14183479320179391942

/-! ## A105874.P13660270220468270759

`∩[A007885(n+1), A167798(n+1)]`
-/

namespace A105874.P13660270220468270759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105874.P13660270220468270759

/-! ## A105874.P4357820333404526624

`∩[A007885(n+1), A045442(n+1)]`
-/

namespace A105874.P4357820333404526624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105874.P4357820333404526624

/-! ## A105874.P2761494062318316545

`∩[A179538(n+1), A045352(n+1)]`
-/

namespace A105874.P2761494062318316545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105874.P2761494062318316545

/-! ## A105874.P5750112685664957723

`∩[A042987(n+1), A167798(n+1)]`
-/

namespace A105874.P5750112685664957723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105874.P5750112685664957723

/-! ## A105874.P3646144065593298509

`∩[A045395(n+1), A167798(n+1)]`
-/

namespace A105874.P3646144065593298509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105874.P3646144065593298509

/-! ## A105874.P10348666135528376626

`∩[A007885(n+1), A216747(n+1)]`
-/

namespace A105874.P10348666135528376626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105874.P10348666135528376626

/-! ## A105874.P11465292129141732841

`∩[A000040(n+1), A167798(n+1)]`
-/

namespace A105874.P11465292129141732841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105874.P11465292129141732841

/-! ## A105874.P3410555941890795910

`∩[A006005(n+1), A167798(n+1)]`
-/

namespace A105874.P3410555941890795910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105874.P3410555941890795910

/-! ## A105874.P10797905862805019374

`∩[A008578(n+1), A167798(n+1)]`
-/

namespace A105874.P10797905862805019374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105874.P10797905862805019374

/-! ## A105874.P480244409874800142

`∩[A045344(n+1), A167798(n+1)]`
-/

namespace A105874.P480244409874800142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105874.P480244409874800142

/-! ## A105874.P6805506809072673944

`∩[A033946(n+1), A167798(n+1)]`
-/

namespace A105874.P6805506809072673944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105874.P6805506809072673944

/-! ## A105874.P482777647648459039

`∩[A067126(n+1), A167798(n+1)]`
-/

namespace A105874.P482777647648459039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105874.P482777647648459039

/-! ## A105874.P80440312510949317

`∩[A167798(n+1), A260442(n)]`
-/

namespace A105874.P80440312510949317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105874.P80440312510949317

/-!
# A105875: Primes for which -3 is a primitive root.

The programs for A105875, there is no canonical definition to state claims against.
-/

/-! ## A105875.P17247352195827370209

`p?[A167799(n+1)]`
-/

namespace A105875.P17247352195827370209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105875.P17247352195827370209

/-! ## A105875.P5097130592524532847

`∩[A003627(n+1), A167799(n+1)]`
-/

namespace A105875.P5097130592524532847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105875.P5097130592524532847

/-! ## A105875.P2270180563371436467

`∩[A015919(n+1), A167799(n+1)]`
-/

namespace A105875.P2270180563371436467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105875.P2270180563371436467

/-! ## A105875.P10968261636852760992

`∩[A040028(n+1), A167799(n+1)]`
-/

namespace A105875.P10968261636852760992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105875.P10968261636852760992

/-! ## A105875.P1289155620141764848

`∩[A040036(n+1), A167799(n+1)]`
-/

namespace A105875.P1289155620141764848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105875.P1289155620141764848

/-! ## A105875.P16289544948056179859

`∩[A040044(n+1), A167799(n+1)]`
-/

namespace A105875.P16289544948056179859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105875.P16289544948056179859

/-! ## A105875.P5977522094164012618

`∩[A040046(n+1), A167799(n+1)]`
-/

namespace A105875.P5977522094164012618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105875.P5977522094164012618

/-! ## A105875.P14464062842824812730

`∩[A040049(n+1), A167799(n+1)]`
-/

namespace A105875.P14464062842824812730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105875.P14464062842824812730

/-! ## A105875.P14074737927022986574

`∩[A040054(n+1), A167799(n+1)]`
-/

namespace A105875.P14074737927022986574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105875.P14074737927022986574

/-! ## A105875.P7880446442320594829

`∩[A040060(n+1), A167799(n+1)]`
-/

namespace A105875.P7880446442320594829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105875.P7880446442320594829

/-! ## A105875.P1579724544634493405

`∩[A040062(n+1), A167799(n+1)]`
-/

namespace A105875.P1579724544634493405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105875.P1579724544634493405

/-! ## A105875.P10046708053148408342

`∩[A040065(n+1), A167799(n+1)]`
-/

namespace A105875.P10046708053148408342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105875.P10046708053148408342

/-! ## A105875.P6844362667550726071

`∩[A040078(n+1), A167799(n+1)]`
-/

namespace A105875.P6844362667550726071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105875.P6844362667550726071

/-! ## A105875.P7280030694813417663

`∩[A040085(n+1), A167799(n+1)]`
-/

namespace A105875.P7280030694813417663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105875.P7280030694813417663

/-! ## A105875.P14414928411016820234

`∩[A040087(n+1), A167799(n+1)]`
-/

namespace A105875.P14414928411016820234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105875.P14414928411016820234

/-! ## A105875.P6420752711558582062

`∩[A045309(n+1), A167799(n+1)]`
-/

namespace A105875.P6420752711558582062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105875.P6420752711558582062

/-! ## A105875.P1455336778340805787

`∩[A166744(n+1), A167799(n+1)]`
-/

namespace A105875.P1455336778340805787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105875.P1455336778340805787

/-! ## A105875.P6143122173064246573

`∩[A000040(n+1), A167799(n+1)]`
-/

namespace A105875.P6143122173064246573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105875.P6143122173064246573

/-! ## A105875.P8604430807719680605

`∩[A008578(n+1), A167799(n+1)]`
-/

namespace A105875.P8604430807719680605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105875.P8604430807719680605

/-! ## A105875.P13043545865927970254

`∩[A033946(n+1), A167799(n+1)]`
-/

namespace A105875.P13043545865927970254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105875.P13043545865927970254

/-!
# A105876: Primes for which -4 is a primitive root.

The programs for A105876, there is no canonical definition to state claims against.
-/

/-! ## A105876.P14433526820813696000

`4*A294434(n)+3`
-/

namespace A105876.P14433526820813696000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A294434 n + 3

end

end A105876.P14433526820813696000

/-! ## A105876.P5577914683013045323

`(A114564(n+1)+2)/3`
-/

namespace A105876.P5577914683013045323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114564 (n + 1) + 2 : ℚ) / 3

end

end A105876.P5577914683013045323

/-! ## A105876.P14005980871992095971

`p?[A167800(n+1)]`
-/

namespace A105876.P14005980871992095971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105876.P14005980871992095971

/-! ## A105876.P9896873076423051878

`∩[A002145(n+1), A167800(n+1)]`
-/

namespace A105876.P9896873076423051878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105876.P9896873076423051878

/-! ## A105876.P10846932111082884702

`∩[A002145(n+1), A216371(n+1)]`
-/

namespace A105876.P10846932111082884702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105876.P10846932111082884702

/-! ## A105876.P11793530050795675119

`∩[A002145(n+1), A179538(n+1)]`
-/

namespace A105876.P11793530050795675119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105876.P11793530050795675119

/-! ## A105876.P7495325940600840538

`A179538(eq[2, and(2, A179538(n+1))]+1)`
-/

namespace A105876.P7495325940600840538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A179538 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179538 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A105876.P7495325940600840538

/-! ## A105876.P15936199668900449771

`∩[A002145(n+1), A007885(n+1)]`
-/

namespace A105876.P15936199668900449771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105876.P15936199668900449771

/-! ## A105876.P7468876949640422844

`∩[A007885(n+1), A085760(n+1)]`
-/

namespace A105876.P7468876949640422844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105876.P7468876949640422844

/-! ## A105876.P18438163518263954158

`∩[A007885(n+1), A045419(n+1)]`
-/

namespace A105876.P18438163518263954158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105876.P18438163518263954158

/-! ## A105876.P10518437317949791463

`∩[A040116(n+1), A167800(n+1)]`
-/

namespace A105876.P10518437317949791463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105876.P10518437317949791463

/-! ## A105876.P16412775349225208530

`∩[A045395(n+1), A167800(n+1)]`
-/

namespace A105876.P16412775349225208530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105876.P16412775349225208530

/-! ## A105876.P6523574709786336554

`∩[A007885(n+1), A094179(n+1)]`
-/

namespace A105876.P6523574709786336554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105876.P6523574709786336554

/-! ## A105876.P2492663112080622009

`∩[A004139(n+1), A167800(n+1)]`
-/

namespace A105876.P2492663112080622009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105876.P2492663112080622009

/-! ## A105876.P7672942250367841529

`∩[A000040(n+1), A167800(n+1)]`
-/

namespace A105876.P7672942250367841529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105876.P7672942250367841529

/-! ## A105876.P11151298646848913627

`∩[A006005(n+1), A167800(n+1)]`
-/

namespace A105876.P11151298646848913627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105876.P11151298646848913627

/-! ## A105876.P5777445433672599950

`∩[A093515(n+1), A167800(n+1)]`
-/

namespace A105876.P5777445433672599950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105876.P5777445433672599950

/-! ## A105876.P9511705252024363107

`∩[A167800(n+1), A260442(n)]`
-/

namespace A105876.P9511705252024363107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105876.P9511705252024363107

/-! ## A105876.P5945484362996433922

`filter[A167800(n+1), A008966(#)]`
-/

namespace A105876.P5945484362996433922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A105876.P5945484362996433922

/-! ## A105876.P15078695978272140020

`filter[A167800(n+1), A010051(#)]`
-/

namespace A105876.P15078695978272140020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A105876.P15078695978272140020

/-!
# A105877: Primes for which -5 is a primitive root.

The programs for A105877, there is no canonical definition to state claims against.
-/

/-! ## A105877.P3377619196372348832

`p?[A167801(n+1)]`
-/

namespace A105877.P3377619196372348832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105877.P3377619196372348832

/-! ## A105877.P14733460980831109358

`∩[A015919(n+1), A167801(n+1)]`
-/

namespace A105877.P14733460980831109358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105877.P14733460980831109358

/-! ## A105877.P14586143351170580534

`∩[A073485(n+1), A167801(n+1)]`
-/

namespace A105877.P14586143351170580534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105877.P14586143351170580534

/-! ## A105877.P7604608670625654613

`A167801(eq[1, ∑{e}[A167801(n+1), #]]+1)`
-/

namespace A105877.P7604608670625654613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167801 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167801 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A105877.P7604608670625654613

/-! ## A105877.P8219365178101202418

`∩[A138837(n+1), A167801(n+1)]`
-/

namespace A105877.P8219365178101202418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105877.P8219365178101202418

/-! ## A105877.P3746125856583381264

`∩[A000040(n+1), A167801(n+1)]`
-/

namespace A105877.P3746125856583381264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105877.P3746125856583381264

/-! ## A105877.P9603648366084952493

`∩[A008578(n+1), A167801(n+1)]`
-/

namespace A105877.P9603648366084952493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105877.P9603648366084952493

/-! ## A105877.P10233148448034400530

`∩[A045319(n+1), A167801(n+1)]`
-/

namespace A105877.P10233148448034400530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105877.P10233148448034400530

/-! ## A105877.P15654231398094192172

`∩[A045344(n+1), A167801(n+1)]`
-/

namespace A105877.P15654231398094192172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105877.P15654231398094192172

/-! ## A105877.P7858343853503205968

`∩[A167801(n+1), A182986(n+1)]`
-/

namespace A105877.P7858343853503205968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105877.P7858343853503205968

/-! ## A105877.P12300689975049163372

`∩[A053813(n+1), A167801(n+1)]`
-/

namespace A105877.P12300689975049163372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105877.P12300689975049163372

/-! ## A105877.P14634582237745901045

`∩[A189710(n+1), A167801(n+1)]`
-/

namespace A105877.P14634582237745901045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105877.P14634582237745901045

/-! ## A105877.P10441948761442351245

`∩[A055977(n+1), A167801(n+1)]`
-/

namespace A105877.P10441948761442351245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105877.P10441948761442351245

/-! ## A105877.P8720751406754163533

`∩[A167801(n+1), A340076(n+1)]`
-/

namespace A105877.P8720751406754163533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105877.P8720751406754163533

/-! ## A105877.P2679705136975236623

`∩[A067934(n+1), A167801(n+1)]`
-/

namespace A105877.P2679705136975236623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105877.P2679705136975236623

/-! ## A105877.P15999527679085793811

`∩[A167801(n+1), A260442(n)]`
-/

namespace A105877.P15999527679085793811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105877.P15999527679085793811

/-! ## A105877.P6059756488786781669

`∩[A117289(n+1), A167801(n+1)]`
-/

namespace A105877.P6059756488786781669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105877.P6059756488786781669

/-! ## A105877.P18171728560798041566

`record[A006530(A167801(n+2))]`
-/

namespace A105877.P18171728560798041566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A167801 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105877.P18171728560798041566

/-! ## A105877.P5453403158187309849

`filter[A167801(n+1), A010051(#)]`
-/

namespace A105877.P5453403158187309849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A105877.P5453403158187309849

/-! ## A105877.P16288428058948634785

`filter[A167801(n+1), A359158(#)]`
-/

namespace A105877.P16288428058948634785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359158 (f1 j).toNat = 1) n)

end

end A105877.P16288428058948634785

/-!
# A105878: Primes for which -6 is a primitive root.

The programs for A105878, there is no canonical definition to state claims against.
-/

/-! ## A105878.P17432924469910865998

`p?[A167802(n+1)]`
-/

namespace A105878.P17432924469910865998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105878.P17432924469910865998

/-! ## A105878.P17847363509666630568

`∩[A015919(n+1), A167802(n+1)]`
-/

namespace A105878.P17847363509666630568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105878.P17847363509666630568

/-! ## A105878.P18001897548537736082

`∩[A004139(n+1), A167802(n+1)]`
-/

namespace A105878.P18001897548537736082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105878.P18001897548537736082

/-! ## A105878.P15592140587971511098

`∩[A000040(n+1), A167802(n+1)]`
-/

namespace A105878.P15592140587971511098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105878.P15592140587971511098

/-! ## A105878.P1661415761507640704

`∩[A006005(n+1), A167802(n+1)]`
-/

namespace A105878.P1661415761507640704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105878.P1661415761507640704

/-! ## A105878.P6151300705633813400

`∩[A008578(n+1), A167802(n+1)]`
-/

namespace A105878.P6151300705633813400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105878.P6151300705633813400

/-! ## A105878.P13655496169064943725

`∩[A033946(n+1), A167802(n+1)]`
-/

namespace A105878.P13655496169064943725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105878.P13655496169064943725

/-! ## A105878.P8516172021787697139

`∩[A045319(n+1), A167802(n+1)]`
-/

namespace A105878.P8516172021787697139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105878.P8516172021787697139

/-! ## A105878.P2575065385144348100

`∩[A045344(n+1), A167802(n+1)]`
-/

namespace A105878.P2575065385144348100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105878.P2575065385144348100

/-! ## A105878.P4808782795731793371

`∩[A046022(n+1), A167802(n+1)]`
-/

namespace A105878.P4808782795731793371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105878.P4808782795731793371

/-! ## A105878.P17739743261533183818

`∩[A051948(n+1), A167802(n+1)]`
-/

namespace A105878.P17739743261533183818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105878.P17739743261533183818

/-! ## A105878.P9210630566977146994

`∩[A053813(n+1), A167802(n+1)]`
-/

namespace A105878.P9210630566977146994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105878.P9210630566977146994

/-! ## A105878.P14483570139985090526

`∩[A066050(n+1), A167802(n+1)]`
-/

namespace A105878.P14483570139985090526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105878.P14483570139985090526

/-! ## A105878.P2782186035112301189

`∩[A067126(n+1), A167802(n+1)]`
-/

namespace A105878.P2782186035112301189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105878.P2782186035112301189

/-! ## A105878.P9209061314209773989

`∩[A093515(n+1), A167802(n+1)]`
-/

namespace A105878.P9209061314209773989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105878.P9209061314209773989

/-! ## A105878.P4157393535681888722

`∩[A055977(n+1), A167802(n+1)]`
-/

namespace A105878.P4157393535681888722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105878.P4157393535681888722

/-! ## A105878.P17209906105813545531

`∩[A053577(n+1), A167802(n+1)]`
-/

namespace A105878.P17209906105813545531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105878.P17209906105813545531

/-! ## A105878.P661413257479819254

`∩[A167802(n+1), A340076(n+1)]`
-/

namespace A105878.P661413257479819254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105878.P661413257479819254

/-! ## A105878.P18236986134643724827

`∩[A167802(n+1), A260442(n)]`
-/

namespace A105878.P18236986134643724827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105878.P18236986134643724827

/-! ## A105878.P1654906242804244937

`filter[A167802(n+1), A008966(#)]`
-/

namespace A105878.P1654906242804244937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A105878.P1654906242804244937

/-!
# A105879: Primes for which -7 is a primitive root.

The programs for A105879, there is no canonical definition to state claims against.
-/

/-! ## A105879.P12485134197928419392

`p?[A167803(n+1)]`
-/

namespace A105879.P12485134197928419392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105879.P12485134197928419392

/-! ## A105879.P572482902873269621

`∩[A015919(n+1), A167803(n+1)]`
-/

namespace A105879.P572482902873269621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105879.P572482902873269621

/-! ## A105879.P1923932211426587081

`∩[A042992(n+1), A167803(n+1)]`
-/

namespace A105879.P1923932211426587081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105879.P1923932211426587081

/-! ## A105879.P2633681416412443715

`∩[A045312(n+1), A167803(n+1)]`
-/

namespace A105879.P2633681416412443715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105879.P2633681416412443715

/-! ## A105879.P17683243306331004575

`∩[A042997(n+1), A167803(n+1)]`
-/

namespace A105879.P17683243306331004575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105879.P17683243306331004575

/-! ## A105879.P6995510978049794556

`∩[A045311(n+1), A167803(n+1)]`
-/

namespace A105879.P6995510978049794556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105879.P6995510978049794556

/-! ## A105879.P4136517286797770043

`∩[A167803(n+1), A042990(n)]`
-/

namespace A105879.P4136517286797770043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105879.P4136517286797770043

/-! ## A105879.P13270352642809017189

`∩[A167803(n+1), A216882(n+1)]`
-/

namespace A105879.P13270352642809017189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105879.P13270352642809017189

/-! ## A105879.P836251003932421931

`∩[A167803(n+1), A216881(n+1)]`
-/

namespace A105879.P836251003932421931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105879.P836251003932421931

/-! ## A105879.P14868226275932780899

`∩[A042966(n+1), A167803(n+1)]`
-/

namespace A105879.P14868226275932780899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105879.P14868226275932780899

/-! ## A105879.P14612862681301671075

`∩[A000040(n+1), A167803(n+1)]`
-/

namespace A105879.P14612862681301671075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105879.P14612862681301671075

/-! ## A105879.P8916423975433053714

`∩[A008578(n+1), A167803(n+1)]`
-/

namespace A105879.P8916423975433053714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105879.P8916423975433053714

/-! ## A105879.P8485452721498681423

`∩[A167803(n+1), A182986(n+1)]`
-/

namespace A105879.P8485452721498681423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105879.P8485452721498681423

/-! ## A105879.P13938827758383099295

`∩[A046022(n+1), A167803(n+1)]`
-/

namespace A105879.P13938827758383099295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105879.P13938827758383099295

/-! ## A105879.P7393767929074984347

`∩[A062972(n+1), A167803(n+1)]`
-/

namespace A105879.P7393767929074984347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105879.P7393767929074984347

/-! ## A105879.P3273665371064024812

`∩[A182140(n+1), A167803(n+1)]`
-/

namespace A105879.P3273665371064024812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105879.P3273665371064024812

/-! ## A105879.P15907524440561541720

`∩[A174090(n+1), A167803(n+1)]`
-/

namespace A105879.P15907524440561541720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105879.P15907524440561541720

/-! ## A105879.P1121414597604602471

`∩[A097605(n+1), A167803(n+1)]`
-/

namespace A105879.P1121414597604602471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105879.P1121414597604602471

/-! ## A105879.P4868494955972860890

`∩[A167803(n+1), A201879(n+1)]`
-/

namespace A105879.P4868494955972860890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105879.P4868494955972860890

/-! ## A105879.P1962194570356271974

`∩[A070159(n+1), A167803(n+1)]`
-/

namespace A105879.P1962194570356271974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105879.P1962194570356271974

/-!
# A105880: Primes for which -8 is a primitive root.

The programs for A105880, there is no canonical definition to state claims against.
-/

/-! ## A105880.P1594504758611708702

`p?[A167804(n+1)]`
-/

namespace A105880.P1594504758611708702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105880.P1594504758611708702

/-! ## A105880.P346696723959550778

`∩[A097934(n+1), A105874(n+1)]`
-/

namespace A105880.P346696723959550778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105880.P346696723959550778

/-! ## A105880.P13816738655754274431

`∩[A038876(n+1), A105874(n+1)]`
-/

namespace A105880.P13816738655754274431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105880.P13816738655754274431

/-! ## A105880.P15796219484887467442

`∩[A007528(n+1), A105874(n+1)]`
-/

namespace A105880.P15796219484887467442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105880.P15796219484887467442

/-! ## A105880.P16743970670290591095

`∩[A003628(n+1), A167804(n+1)]`
-/

namespace A105880.P16743970670290591095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105880.P16743970670290591095

/-! ## A105880.P3596124721910735999

`∩[A007528(n+1), A167798(n+1)]`
-/

namespace A105880.P3596124721910735999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105880.P3596124721910735999

/-! ## A105880.P13546227415708117630

`∩[A007528(n+1), A167804(n+1)]`
-/

namespace A105880.P13546227415708117630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105880.P13546227415708117630

/-! ## A105880.P14697199151630406008

`∩[A003627(n+1), A105874(n+1)]`
-/

namespace A105880.P14697199151630406008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105880.P14697199151630406008

/-! ## A105880.P2864494994969718426

`∩[A045410(n+1), A105874(n+1)]`
-/

namespace A105880.P2864494994969718426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105880.P2864494994969718426

/-! ## A105880.P3788899840651797449

`∩[A056955(n+1), A105874(n+1)]`
-/

namespace A105880.P3788899840651797449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105880.P3788899840651797449

/-! ## A105880.P10590598710065756307

`∩[A003627(n+1), A167798(n+1)]`
-/

namespace A105880.P10590598710065756307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105880.P10590598710065756307

/-! ## A105880.P3301273914675977979

`∩[A003627(n+1), A167804(n+1)]`
-/

namespace A105880.P3301273914675977979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105880.P3301273914675977979

/-! ## A105880.P9740142548534917990

`∩[A045309(n+1), A105874(n+1)]`
-/

namespace A105880.P9740142548534917990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105880.P9740142548534917990

/-! ## A105880.P6133898961522865307

`∩[A001915(n+1), A167804(n+1)]`
-/

namespace A105880.P6133898961522865307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105880.P6133898961522865307

/-! ## A105880.P7988072317551378955

`∩[A049596(n+1), A105874(n+1)]`
-/

namespace A105880.P7988072317551378955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105880.P7988072317551378955

/-! ## A105880.P10405063265852555253

`∩[A167804(n+1), A380468(n+1)]`
-/

namespace A105880.P10405063265852555253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105880.P10405063265852555253

/-! ## A105880.P15472258318591509793

`∩[A040028(n+1), A105874(n+1)]`
-/

namespace A105880.P15472258318591509793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105880.P15472258318591509793

/-! ## A105880.P4992123153515795774

`∩[A167804(n+1), A380525(n+1)]`
-/

namespace A105880.P4992123153515795774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105880.P4992123153515795774

/-! ## A105880.P463109235244592265

`∩[A066501(n+1), A105874(n+1)]`
-/

namespace A105880.P463109235244592265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105880.P463109235244592265

/-!
# A105881: Primes for which -9 is a primitive root.

The programs for A105881, there is no canonical definition to state claims against.
-/

/-! ## A105881.P9996559170737172681

`p?[A167805(n+1)]`
-/

namespace A105881.P9996559170737172681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105881.P9996559170737172681

/-! ## A105881.P12623279567652868226

`∩[A015919(n+1), A167805(n+1)]`
-/

namespace A105881.P12623279567652868226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105881.P12623279567652868226

/-! ## A105881.P12988957256539443863

`∩[A045326(n+1), A167805(n+1)]`
-/

namespace A105881.P12988957256539443863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105881.P12988957256539443863

/-! ## A105881.P12841378794237566718

`∩[A045323(n+1), A167805(n+1)]`
-/

namespace A105881.P12841378794237566718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105881.P12841378794237566718

/-! ## A105881.P12532956873798843922

`∩[A040116(n+1), A167805(n+1)]`
-/

namespace A105881.P12532956873798843922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105881.P12532956873798843922

/-! ## A105881.P17418941273949756747

`∩[A042987(n+1), A167805(n+1)]`
-/

namespace A105881.P17418941273949756747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105881.P17418941273949756747

/-! ## A105881.P15551940715334675515

`∩[A167135(n+1), A167805(n+1)]`
-/

namespace A105881.P15551940715334675515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105881.P15551940715334675515

/-! ## A105881.P13509983598306256438

`∩[A216286(n+1), A167805(n+1)]`
-/

namespace A105881.P13509983598306256438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105881.P13509983598306256438

/-! ## A105881.P16178000180613325578

`∩[A045319(n+1), A167805(n+1)]`
-/

namespace A105881.P16178000180613325578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105881.P16178000180613325578

/-! ## A105881.P11244069323203150545

`∩[A045344(n+1), A167805(n+1)]`
-/

namespace A105881.P11244069323203150545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105881.P11244069323203150545

/-! ## A105881.P11975754481133857389

`∩[A000040(n+1), A167805(n+1)]`
-/

namespace A105881.P11975754481133857389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105881.P11975754481133857389

/-! ## A105881.P11651628550279759759

`∩[A008578(n+1), A167805(n+1)]`
-/

namespace A105881.P11651628550279759759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105881.P11651628550279759759

/-! ## A105881.P8795668454859074063

`∩[A033946(n+1), A167805(n+1)]`
-/

namespace A105881.P8795668454859074063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105881.P8795668454859074063

/-! ## A105881.P9002063589284875175

`∩[A053813(n+1), A167805(n+1)]`
-/

namespace A105881.P9002063589284875175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105881.P9002063589284875175

/-! ## A105881.P3268262401484952505

`∩[A060634(n+1), A167805(n+1)]`
-/

namespace A105881.P3268262401484952505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105881.P3268262401484952505

/-! ## A105881.P4962591288875254516

`∩[A182140(n+1), A167805(n+1)]`
-/

namespace A105881.P4962591288875254516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105881.P4962591288875254516

/-! ## A105881.P4473363147621704786

`∩[A055977(n+1), A167805(n+1)]`
-/

namespace A105881.P4473363147621704786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105881.P4473363147621704786

/-! ## A105881.P7879015742467909908

`∩[A145739(n+1), A167805(n+1)]`
-/

namespace A105881.P7879015742467909908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105881.P7879015742467909908

/-! ## A105881.P3695664254989604867

`∩[A067934(n+1), A167805(n+1)]`
-/

namespace A105881.P3695664254989604867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105881.P3695664254989604867

/-! ## A105881.P7412902602865520500

`∩[A167805(n+1), A260442(n)]`
-/

namespace A105881.P7412902602865520500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105881.P7412902602865520500

/-!
# A105882: Nonprimes of the form r(r(n)+1)+1, where A141468(n)=r(n)=n-th nonprime.

The programs for A105882, there is no canonical definition to state claims against.
-/

/-! ## A105882.P5312074456535208680

`record[A181569(A018252(A089088(n)))]`
-/

namespace A105882.P5312074456535208680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (A018252 (A089088 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105882.P5312074456535208680

/-! ## A105882.P7492628675211246228

`record[A181569(A018252(A014683(n+1)))]`
-/

namespace A105882.P7492628675211246228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (A018252 (A014683 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105882.P7492628675211246228

/-! ## A105882.P6955089716468482307

`record[A181569(A018252(A063928(n+1)))]`
-/

namespace A105882.P6955089716468482307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (A018252 (A063928 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105882.P6955089716468482307

/-! ## A105882.P6796357377342540257

`record[A181569(A018252(A073900(n+1)))]`
-/

namespace A105882.P6796357377342540257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (A018252 (A073900 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105882.P6796357377342540257

/-! ## A105882.P3829798026444720902

`∩[A018252(n+1), A065475(A102615(n+1))]`
-/

namespace A105882.P3829798026444720902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A102615 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105882.P3829798026444720902

/-!
# A105883: Primes for which -11 is a primitive root.

The programs for A105883, there is no canonical definition to state claims against.
-/

/-! ## A105883.P14465991311605322265

`p?[A240029(n+1)]`
-/

namespace A105883.P14465991311605322265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105883.P14465991311605322265

/-! ## A105883.P35494652012048590

`∩[A015919(n+1), A240029(n+1)]`
-/

namespace A105883.P35494652012048590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105883.P35494652012048590

/-! ## A105883.P17383727174777380383

`∩[A073485(n+1), A240029(n+1)]`
-/

namespace A105883.P17383727174777380383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105883.P17383727174777380383

/-! ## A105883.P872459408579807071

`∩[A000040(n+1), A240029(n+1)]`
-/

namespace A105883.P872459408579807071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105883.P872459408579807071

/-! ## A105883.P5756303252040333917

`∩[A008578(n+1), A240029(n+1)]`
-/

namespace A105883.P5756303252040333917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105883.P5756303252040333917

/-! ## A105883.P3199084370679712566

`∩[A045319(n+1), A240029(n+1)]`
-/

namespace A105883.P3199084370679712566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105883.P3199084370679712566

/-! ## A105883.P17161334638652343252

`∩[A045344(n+1), A240029(n+1)]`
-/

namespace A105883.P17161334638652343252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105883.P17161334638652343252

/-! ## A105883.P2698763099620881427

`∩[A046022(n+1), A240029(n+1)]`
-/

namespace A105883.P2698763099620881427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105883.P2698763099620881427

/-! ## A105883.P13823044268049064134

`∩[A033946(n+1), A240029(n+1)]`
-/

namespace A105883.P13823044268049064134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105883.P13823044268049064134

/-! ## A105883.P8636234762989826373

`∩[A051948(n+1), A240029(n+1)]`
-/

namespace A105883.P8636234762989826373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105883.P8636234762989826373

/-! ## A105883.P16215427812531526927

`∩[A053813(n+1), A240029(n+1)]`
-/

namespace A105883.P16215427812531526927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105883.P16215427812531526927

/-! ## A105883.P17227462728130532806

`∩[A062972(n+1), A240029(n+1)]`
-/

namespace A105883.P17227462728130532806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105883.P17227462728130532806

/-! ## A105883.P18299336065516044036

`∩[A066050(n+1), A240029(n+1)]`
-/

namespace A105883.P18299336065516044036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105883.P18299336065516044036

/-! ## A105883.P4954429906635064331

`∩[A067126(n+1), A240029(n+1)]`
-/

namespace A105883.P4954429906635064331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105883.P4954429906635064331

/-! ## A105883.P14986854861735680150

`∩[A174090(n+1), A240029(n+1)]`
-/

namespace A105883.P14986854861735680150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105883.P14986854861735680150

/-! ## A105883.P18365818744663832356

`∩[A055977(n+1), A240029(n+1)]`
-/

namespace A105883.P18365818744663832356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105883.P18365818744663832356

/-! ## A105883.P16643459811489025356

`∩[A240029(n+1), A260442(n)]`
-/

namespace A105883.P16643459811489025356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105883.P16643459811489025356

/-! ## A105883.P17645822025791484765

`∩[A143578(n+1), A240029(n+1)]`
-/

namespace A105883.P17645822025791484765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105883.P17645822025791484765

/-! ## A105883.P8176370637685286836

`∩[A117289(n+1), A240029(n+1)]`
-/

namespace A105883.P8176370637685286836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105883.P8176370637685286836

/-! ## A105883.P7623675244428359512

`filter[A240029(n+1), A010051(#)]`
-/

namespace A105883.P7623675244428359512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A105883.P7623675244428359512

/-!
# A105884: Primes for which -12 is a primitive root.

The programs for A105884, there is no canonical definition to state claims against.
-/

/-! ## A105884.P5653545026254274703

`p?[A240031(n+1)]`
-/

namespace A105884.P5653545026254274703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105884.P5653545026254274703

/-! ## A105884.P15180414959825728466

`∩[A007528(n+1), A240031(n+1)]`
-/

namespace A105884.P15180414959825728466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105884.P15180414959825728466

/-! ## A105884.P2564481866541767255

`∩[A003627(n+1), A240031(n+1)]`
-/

namespace A105884.P2564481866541767255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105884.P2564481866541767255

/-! ## A105884.P15891126131346806686

`∩[A045410(n+1), A240031(n+1)]`
-/

namespace A105884.P15891126131346806686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105884.P15891126131346806686

/-! ## A105884.P9961184491652811301

`∩[A045309(n+1), A240031(n+1)]`
-/

namespace A105884.P9961184491652811301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105884.P9961184491652811301

/-! ## A105884.P13821266257720034216

`∩[A015919(n+1), A240031(n+1)]`
-/

namespace A105884.P13821266257720034216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105884.P13821266257720034216

/-! ## A105884.P6377072036345768304

`∩[A049596(n+1), A240031(n+1)]`
-/

namespace A105884.P6377072036345768304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105884.P6377072036345768304

/-! ## A105884.P8127288285104857269

`∩[A040087(n+1), A240031(n+1)]`
-/

namespace A105884.P8127288285104857269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105884.P8127288285104857269

/-! ## A105884.P8528480035632885940

`∩[A040036(n+1), A240031(n+1)]`
-/

namespace A105884.P8528480035632885940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105884.P8528480035632885940

/-! ## A105884.P12171900948389305538

`∩[A040028(n+1), A240031(n+1)]`
-/

namespace A105884.P12171900948389305538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105884.P12171900948389305538

/-! ## A105884.P12781136000093667956

`∩[A040049(n+1), A240031(n+1)]`
-/

namespace A105884.P12781136000093667956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105884.P12781136000093667956

/-! ## A105884.P10461468084492767766

`∩[A040078(n+1), A240031(n+1)]`
-/

namespace A105884.P10461468084492767766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105884.P10461468084492767766

/-! ## A105884.P9708914229454412913

`∩[A040054(n+1), A240031(n+1)]`
-/

namespace A105884.P9708914229454412913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105884.P9708914229454412913

/-! ## A105884.P6265825520711901322

`∩[A040062(n+1), A240031(n+1)]`
-/

namespace A105884.P6265825520711901322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105884.P6265825520711901322

/-! ## A105884.P12582772503993415851

`∩[A040085(n+1), A240031(n+1)]`
-/

namespace A105884.P12582772503993415851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105884.P12582772503993415851

/-! ## A105884.P17315536846255085885

`∩[A166744(n+1), A240031(n+1)]`
-/

namespace A105884.P17315536846255085885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105884.P17315536846255085885

/-! ## A105884.P15180796058943930322

`∩[A000040(n+1), A240031(n+1)]`
-/

namespace A105884.P15180796058943930322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105884.P15180796058943930322

/-! ## A105884.P157756628337438893

`∩[A006005(n+1), A240031(n+1)]`
-/

namespace A105884.P157756628337438893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105884.P157756628337438893

/-! ## A105884.P14827252579525113772

`∩[A008578(n+1), A240031(n+1)]`
-/

namespace A105884.P14827252579525113772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105884.P14827252579525113772

/-! ## A105884.P11623045499026979309

`∩[A033946(n+1), A240031(n+1)]`
-/

namespace A105884.P11623045499026979309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105884.P11623045499026979309

/-!
# A105885: Primes for which -13 is a primitive root.

The programs for A105885, there is no canonical definition to state claims against.
-/

/-! ## A105885.P3756934241977787060

`p?[A240093(n+1)]`
-/

namespace A105885.P3756934241977787060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105885.P3756934241977787060

/-! ## A105885.P14714318906891854041

`∩[A015919(n+1), A240093(n+1)]`
-/

namespace A105885.P14714318906891854041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105885.P14714318906891854041

/-! ## A105885.P16177261117679740625

`∩[A000040(n+1), A240093(n+1)]`
-/

namespace A105885.P16177261117679740625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105885.P16177261117679740625

/-! ## A105885.P8591996312172798447

`∩[A008578(n+1), A240093(n+1)]`
-/

namespace A105885.P8591996312172798447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105885.P8591996312172798447

/-! ## A105885.P1830099298705929058

`∩[A158611(n+1), A240093(n+1)]`
-/

namespace A105885.P1830099298705929058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105885.P1830099298705929058

/-! ## A105885.P1990011238802828617

`∩[A182986(n+1), A240093(n+1)]`
-/

namespace A105885.P1990011238802828617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105885.P1990011238802828617

/-! ## A105885.P1773847213801691122

`∩[A326715(n+1), A240093(n+1)]`
-/

namespace A105885.P1773847213801691122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105885.P1773847213801691122

/-! ## A105885.P10543938125364611886

`∩[A060634(n+1), A240093(n+1)]`
-/

namespace A105885.P10543938125364611886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105885.P10543938125364611886

/-! ## A105885.P4056024353180373970

`∩[A182140(n+1), A240093(n+1)]`
-/

namespace A105885.P4056024353180373970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105885.P4056024353180373970

/-! ## A105885.P11793458403602292776

`∩[A097605(n+1), A240093(n+1)]`
-/

namespace A105885.P11793458403602292776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105885.P11793458403602292776

/-! ## A105885.P4789901025434682810

`∩[A201879(n+1), A240093(n+1)]`
-/

namespace A105885.P4789901025434682810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105885.P4789901025434682810

/-! ## A105885.P17871922653481092601

`∩[A070159(n+1), A240093(n+1)]`
-/

namespace A105885.P17871922653481092601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105885.P17871922653481092601

/-! ## A105885.P13383602538294345078

`∩[A143578(n+1), A240093(n+1)]`
-/

namespace A105885.P13383602538294345078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105885.P13383602538294345078

/-! ## A105885.P16609239320959686932

`∩[A117288(n+1), A240093(n+1)]`
-/

namespace A105885.P16609239320959686932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105885.P16609239320959686932

/-! ## A105885.P2980783499636665294

`filter[A240093(n+1), A010051(#)]`
-/

namespace A105885.P2980783499636665294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A105885.P2980783499636665294

/-! ## A105885.P17166463566403579364

`filter[A240093(n+1), A359158(#)]`
-/

namespace A105885.P17166463566403579364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359158 (f1 j).toNat = 1) n)

end

end A105885.P17166463566403579364

/-! ## A105885.P14449209920814148226

`filter[A240093(n+1), A374130(#)]`
-/

namespace A105885.P14449209920814148226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374130 (f1 j).toNat = 1) n)

end

end A105885.P14449209920814148226

/-! ## A105885.P13316442851478070514

`∩[A187731(n+1), A240093(n+1)]`
-/

namespace A105885.P13316442851478070514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105885.P13316442851478070514

/-! ## A105885.P13066199719801226899

`record[A006530(A240093(A008619(n)))]`
-/

namespace A105885.P13066199719801226899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A240093 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105885.P13066199719801226899

/-! ## A105885.P7659619414421420307

`record[A006530(A240093(A003602(n+1)))]`
-/

namespace A105885.P7659619414421420307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A240093 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105885.P7659619414421420307

/-!
# A105886: Primes for which -14 is a primitive root.

The programs for A105886, there is no canonical definition to state claims against.
-/

/-! ## A105886.P14664458867036819640

`p?[A240095(n+1)]`
-/

namespace A105886.P14664458867036819640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105886.P14664458867036819640

/-! ## A105886.P5433206616076516025

`∩[A015919(n+1), A240095(n+1)]`
-/

namespace A105886.P5433206616076516025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105886.P5433206616076516025

/-! ## A105886.P17145717954990038292

`∩[A000040(n+1), A240095(n+1)]`
-/

namespace A105886.P17145717954990038292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105886.P17145717954990038292

/-! ## A105886.P4353895122318792282

`∩[A004139(n+1), A240095(n+1)]`
-/

namespace A105886.P4353895122318792282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105886.P4353895122318792282

/-! ## A105886.P16870352053881558857

`∩[A006005(n+1), A240095(n+1)]`
-/

namespace A105886.P16870352053881558857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105886.P16870352053881558857

/-! ## A105886.P15595249683145859410

`∩[A008578(n+1), A240095(n+1)]`
-/

namespace A105886.P15595249683145859410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105886.P15595249683145859410

/-! ## A105886.P10121273961448555596

`∩[A045319(n+1), A240095(n+1)]`
-/

namespace A105886.P10121273961448555596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105886.P10121273961448555596

/-! ## A105886.P7289010302630248374

`∩[A045344(n+1), A240095(n+1)]`
-/

namespace A105886.P7289010302630248374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105886.P7289010302630248374

/-! ## A105886.P12095821289929462996

`∩[A046022(n+1), A240095(n+1)]`
-/

namespace A105886.P12095821289929462996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105886.P12095821289929462996

/-! ## A105886.P9176103571724485970

`∩[A093515(n+1), A240095(n+1)]`
-/

namespace A105886.P9176103571724485970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105886.P9176103571724485970

/-! ## A105886.P15759743852810524711

`∩[A067126(n+1), A240095(n+1)]`
-/

namespace A105886.P15759743852810524711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105886.P15759743852810524711

/-! ## A105886.P8967228666185966328

`∩[A053813(n+1), A240095(n+1)]`
-/

namespace A105886.P8967228666185966328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105886.P8967228666185966328

/-! ## A105886.P11138879849195574113

`∩[A066050(n+1), A240095(n+1)]`
-/

namespace A105886.P11138879849195574113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105886.P11138879849195574113

/-! ## A105886.P3435912859890930381

`∩[A055977(n+1), A240095(n+1)]`
-/

namespace A105886.P3435912859890930381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105886.P3435912859890930381

/-! ## A105886.P4160570235511895332

`∩[A053577(n+1), A240095(n+1)]`
-/

namespace A105886.P4160570235511895332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105886.P4160570235511895332

/-! ## A105886.P11402313167201883313

`∩[A240095(n+1), A260442(n)]`
-/

namespace A105886.P11402313167201883313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105886.P11402313167201883313

/-! ## A105886.P14478389953587528394

`∩[A143578(n+1), A240095(n+1)]`
-/

namespace A105886.P14478389953587528394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105886.P14478389953587528394

/-! ## A105886.P10239947806331598492

`filter[A240095(n+1), A008966(#)]`
-/

namespace A105886.P10239947806331598492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A105886.P10239947806331598492

/-! ## A105886.P15655176862786849035

`filter[A240095(n+1), A010051(#)]`
-/

namespace A105886.P15655176862786849035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A105886.P15655176862786849035

/-! ## A105886.P102646487817755676

`∩[A045745(n+1), A240095(n+1)]`
-/

namespace A105886.P102646487817755676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105886.P102646487817755676

/-!
# A105887: Primes for which -15 is a primitive root.

The programs for A105887, there is no canonical definition to state claims against.
-/

/-! ## A105887.P622073482419870781

`p?[A240097(n+1)]`
-/

namespace A105887.P622073482419870781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105887.P622073482419870781

/-! ## A105887.P10089255395139068396

`∩[A015919(n+1), A240097(n+1)]`
-/

namespace A105887.P10089255395139068396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105887.P10089255395139068396

/-! ## A105887.P13810945841299809365

`∩[A073485(n+1), A240097(n+1)]`
-/

namespace A105887.P13810945841299809365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105887.P13810945841299809365

/-! ## A105887.P5229020381862083075

`∩[A045319(n+1), A240097(n+1)]`
-/

namespace A105887.P5229020381862083075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105887.P5229020381862083075

/-! ## A105887.P5269411396400423760

`∩[A045344(n+1), A240097(n+1)]`
-/

namespace A105887.P5269411396400423760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105887.P5269411396400423760

/-! ## A105887.P14123225234385049712

`∩[A000040(n+1), A240097(n+1)]`
-/

namespace A105887.P14123225234385049712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105887.P14123225234385049712

/-! ## A105887.P9435272806850131917

`∩[A008578(n+1), A240097(n+1)]`
-/

namespace A105887.P9435272806850131917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105887.P9435272806850131917

/-! ## A105887.P8487225391180668691

`∩[A046022(n+1), A240097(n+1)]`
-/

namespace A105887.P8487225391180668691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105887.P8487225391180668691

/-! ## A105887.P10221584327534533760

`∩[A067126(n+1), A240097(n+1)]`
-/

namespace A105887.P10221584327534533760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105887.P10221584327534533760

/-! ## A105887.P7136783618079119642

`∩[A053813(n+1), A240097(n+1)]`
-/

namespace A105887.P7136783618079119642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105887.P7136783618079119642

/-! ## A105887.P11979736405982348027

`∩[A062972(n+1), A240097(n+1)]`
-/

namespace A105887.P11979736405982348027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105887.P11979736405982348027

/-! ## A105887.P15630283422463956377

`∩[A066050(n+1), A240097(n+1)]`
-/

namespace A105887.P15630283422463956377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105887.P15630283422463956377

/-! ## A105887.P7943291674361804611

`∩[A070159(n+1), A240097(n+1)]`
-/

namespace A105887.P7943291674361804611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105887.P7943291674361804611

/-! ## A105887.P16389778428439867552

`∩[A055977(n+1), A240097(n+1)]`
-/

namespace A105887.P16389778428439867552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105887.P16389778428439867552

/-! ## A105887.P10024478164100908436

`∩[A067934(n+1), A240097(n+1)]`
-/

namespace A105887.P10024478164100908436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105887.P10024478164100908436

/-! ## A105887.P7376745479887398646

`∩[A240097(n+1), A260442(n)]`
-/

namespace A105887.P7376745479887398646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105887.P7376745479887398646

/-! ## A105887.P8538090529815160633

`∩[A143578(n+1), A240097(n+1)]`
-/

namespace A105887.P8538090529815160633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105887.P8538090529815160633

/-! ## A105887.P1055412115351457201

`∩[A117289(n+1), A240097(n+1)]`
-/

namespace A105887.P1055412115351457201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105887.P1055412115351457201

/-! ## A105887.P13400555171523197480

`∩[A117287(n+1), A240097(n+1)]`
-/

namespace A105887.P13400555171523197480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105887.P13400555171523197480

/-! ## A105887.P12568360896471038774

`filter[A240097(n+1), A010051(#)]`
-/

namespace A105887.P12568360896471038774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A105887.P12568360896471038774

/-!
# A105889: Primes for which -17 is a primitive root.

The programs for A105889, there is no canonical definition to state claims against.
-/

/-! ## A105889.P15816026022596355817

`p?[A240100(n+1)]`
-/

namespace A105889.P15816026022596355817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105889.P15816026022596355817

/-! ## A105889.P1820723240912297415

`∩[A015919(n+1), A240100(n+1)]`
-/

namespace A105889.P1820723240912297415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105889.P1820723240912297415

/-! ## A105889.P12786791522433877771

`∩[A073485(n+1), A240100(n+1)]`
-/

namespace A105889.P12786791522433877771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105889.P12786791522433877771

/-! ## A105889.P14083441528061815317

`∩[A000040(n+1), A240100(n+1)]`
-/

namespace A105889.P14083441528061815317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105889.P14083441528061815317

/-! ## A105889.P13187280227564792780

`∩[A008578(n+1), A240100(n+1)]`
-/

namespace A105889.P13187280227564792780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105889.P13187280227564792780

/-! ## A105889.P17446126828313417444

`∩[A045344(n+1), A240100(n+1)]`
-/

namespace A105889.P17446126828313417444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105889.P17446126828313417444

/-! ## A105889.P9620617984894369728

`∩[A106118(n+1), A240100(n+1)]`
-/

namespace A105889.P9620617984894369728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105889.P9620617984894369728

/-! ## A105889.P15305888970632668396

`∩[A116974(n+1), A240100(n+1)]`
-/

namespace A105889.P15305888970632668396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105889.P15305888970632668396

/-! ## A105889.P3171659752483814769

`∩[A182986(n+1), A240100(n+1)]`
-/

namespace A105889.P3171659752483814769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105889.P3171659752483814769

/-! ## A105889.P4905189902999785236

`∩[A033946(n+1), A240100(n+1)]`
-/

namespace A105889.P4905189902999785236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105889.P4905189902999785236

/-! ## A105889.P12479096428116500650

`∩[A053813(n+1), A240100(n+1)]`
-/

namespace A105889.P12479096428116500650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105889.P12479096428116500650

/-! ## A105889.P2410581814173036512

`∩[A060634(n+1), A240100(n+1)]`
-/

namespace A105889.P2410581814173036512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105889.P2410581814173036512

/-! ## A105889.P14799504712876863514

`∩[A182140(n+1), A240100(n+1)]`
-/

namespace A105889.P14799504712876863514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105889.P14799504712876863514

/-! ## A105889.P1309100875791892382

`∩[A189710(n+1), A240100(n+1)]`
-/

namespace A105889.P1309100875791892382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105889.P1309100875791892382

/-! ## A105889.P11928986522245492738

`∩[A240100(n+1), A301987(n+1)]`
-/

namespace A105889.P11928986522245492738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105889.P11928986522245492738

/-! ## A105889.P9910664438777636024

`∩[A097605(n+1), A240100(n+1)]`
-/

namespace A105889.P9910664438777636024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105889.P9910664438777636024

/-! ## A105889.P9385301597782170642

`∩[A070159(n+1), A240100(n+1)]`
-/

namespace A105889.P9385301597782170642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105889.P9385301597782170642

/-! ## A105889.P6856285421068611211

`∩[A145739(n+1), A240100(n+1)]`
-/

namespace A105889.P6856285421068611211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105889.P6856285421068611211

/-! ## A105889.P16641551619571601869

`∩[A240100(n+1), A260442(n)]`
-/

namespace A105889.P16641551619571601869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105889.P16641551619571601869

/-! ## A105889.P13709037473588522446

`∩[A143578(n+1), A240100(n+1)]`
-/

namespace A105889.P13709037473588522446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105889.P13709037473588522446

/-!
# A105890: Primes for which -18 is a primitive root.

The programs for A105890, there is no canonical definition to state claims against.
-/

/-! ## A105890.P17929762676602085444

`p?[A240102(n+1)]`
-/

namespace A105890.P17929762676602085444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105890.P17929762676602085444

/-! ## A105890.P12078019775386926777

`∩[A003628(n+1), A240102(n+1)]`
-/

namespace A105890.P12078019775386926777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105890.P12078019775386926777

/-! ## A105890.P12486356309158830881

`∩[A045355(n+1), A240102(n+1)]`
-/

namespace A105890.P12486356309158830881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105890.P12486356309158830881

/-! ## A105890.P14134388556724326997

`∩[A015919(n+1), A240102(n+1)]`
-/

namespace A105890.P14134388556724326997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105890.P14134388556724326997

/-! ## A105890.P1538231483796208873

`∩[A045352(n+1), A240102(n+1)]`
-/

namespace A105890.P1538231483796208873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105890.P1538231483796208873

/-! ## A105890.P12783639591000789609

`∩[A042987(n+1), A240102(n+1)]`
-/

namespace A105890.P12783639591000789609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105890.P12783639591000789609

/-! ## A105890.P4585664213608875752

`∩[A045395(n+1), A240102(n+1)]`
-/

namespace A105890.P4585664213608875752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105890.P4585664213608875752

/-! ## A105890.P11512231944056687974

`∩[A045344(n+1), A240102(n+1)]`
-/

namespace A105890.P11512231944056687974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105890.P11512231944056687974

/-! ## A105890.P215359622308117847

`∩[A000040(n+1), A240102(n+1)]`
-/

namespace A105890.P215359622308117847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105890.P215359622308117847

/-! ## A105890.P15939232870139935347

`∩[A006005(n+1), A240102(n+1)]`
-/

namespace A105890.P15939232870139935347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105890.P15939232870139935347

/-! ## A105890.P4910908101681636363

`∩[A008578(n+1), A240102(n+1)]`
-/

namespace A105890.P4910908101681636363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105890.P4910908101681636363

/-! ## A105890.P11732829386197589880

`∩[A033946(n+1), A240102(n+1)]`
-/

namespace A105890.P11732829386197589880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105890.P11732829386197589880

/-! ## A105890.P14200487356903898081

`∩[A053813(n+1), A240102(n+1)]`
-/

namespace A105890.P14200487356903898081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105890.P14200487356903898081

/-! ## A105890.P2085895143686147856

`∩[A066050(n+1), A240102(n+1)]`
-/

namespace A105890.P2085895143686147856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105890.P2085895143686147856

/-! ## A105890.P17580219051632825077

`∩[A067126(n+1), A240102(n+1)]`
-/

namespace A105890.P17580219051632825077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105890.P17580219051632825077

/-! ## A105890.P409744114572301307

`∩[A055977(n+1), A240102(n+1)]`
-/

namespace A105890.P409744114572301307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105890.P409744114572301307

/-! ## A105890.P13878526076363176048

`∩[A053577(n+1), A240102(n+1)]`
-/

namespace A105890.P13878526076363176048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105890.P13878526076363176048

/-! ## A105890.P5420771510293937044

`∩[A240102(n+1), A260442(n)]`
-/

namespace A105890.P5420771510293937044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105890.P5420771510293937044

/-! ## A105890.P12758473211415676707

`filter[A240102(n+1), A008966(#)]`
-/

namespace A105890.P12758473211415676707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A105890.P12758473211415676707

/-! ## A105890.P8819758712541211501

`filter[A240102(n+1), A010051(#)]`
-/

namespace A105890.P8819758712541211501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A105890.P8819758712541211501

/-!
# A105891: Primes for which -19 is a primitive root.

The programs for A105891, there is no canonical definition to state claims against.
-/

/-! ## A105891.P9988992836363748310

`p?[A240104(n+1)]`
-/

namespace A105891.P9988992836363748310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105891.P9988992836363748310

/-! ## A105891.P11571401240817514768

`∩[A015919(n+1), A240104(n+1)]`
-/

namespace A105891.P11571401240817514768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105891.P11571401240817514768

/-! ## A105891.P3864982215962925774

`∩[A049551(n+1), A240104(n+1)]`
-/

namespace A105891.P3864982215962925774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105891.P3864982215962925774

/-! ## A105891.P9332128455345038968

`∩[A000040(n+1), A240104(n+1)]`
-/

namespace A105891.P9332128455345038968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105891.P9332128455345038968

/-! ## A105891.P3039129005651461325

`∩[A008578(n+1), A240104(n+1)]`
-/

namespace A105891.P3039129005651461325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105891.P3039129005651461325

/-! ## A105891.P13531301947036334582

`∩[A045319(n+1), A240104(n+1)]`
-/

namespace A105891.P13531301947036334582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105891.P13531301947036334582

/-! ## A105891.P14214750215997067048

`∩[A046022(n+1), A240104(n+1)]`
-/

namespace A105891.P14214750215997067048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105891.P14214750215997067048

/-! ## A105891.P17382729541868366921

`∩[A033946(n+1), A240104(n+1)]`
-/

namespace A105891.P17382729541868366921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105891.P17382729541868366921

/-! ## A105891.P4536682944393474291

`∩[A067126(n+1), A240104(n+1)]`
-/

namespace A105891.P4536682944393474291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105891.P4536682944393474291

/-! ## A105891.P6901471892543974736

`∩[A062972(n+1), A240104(n+1)]`
-/

namespace A105891.P6901471892543974736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105891.P6901471892543974736

/-! ## A105891.P1180522521445395959

`∩[A066050(n+1), A240104(n+1)]`
-/

namespace A105891.P1180522521445395959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105891.P1180522521445395959

/-! ## A105891.P2669972052522479541

`∩[A240104(n+1), A284696(n+1)]`
-/

namespace A105891.P2669972052522479541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105891.P2669972052522479541

/-! ## A105891.P15021270591063627650

`∩[A055977(n+1), A240104(n+1)]`
-/

namespace A105891.P15021270591063627650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105891.P15021270591063627650

/-! ## A105891.P4068267243708219923

`filter[A240104(n+1), A010051(#)]`
-/

namespace A105891.P4068267243708219923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A105891.P4068267243708219923

/-! ## A105891.P3140029433775293530

`record[A006530(A240104(A022447(n+1)))]`
-/

namespace A105891.P3140029433775293530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A240104 (A022447 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105891.P3140029433775293530

/-! ## A105891.P5477292594612052397

`A000040(record[A061395(A240104(n+1))])`
-/

namespace A105891.P5477292594612052397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A240104 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105891.P5477292594612052397

/-! ## A105891.P17037191952054029104

`∩[A117285(n+1), A240104(n+1)]`
-/

namespace A105891.P17037191952054029104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105891.P17037191952054029104

/-! ## A105891.P7854181572587129091

`∩[A036844(n+1), A240104(n+1)]`
-/

namespace A105891.P7854181572587129091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105891.P7854181572587129091

/-! ## A105891.P10416694629839218027

`filter[A240104(n+1), A252233(#)]`
-/

namespace A105891.P10416694629839218027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A105891.P10416694629839218027

/-! ## A105891.P13488365513888283432

`∩[A240104(n+1), A374467(n+1)]`
-/

namespace A105891.P13488365513888283432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105891.P13488365513888283432

/-!
# A105892: Primes for which -20 is a primitive root.

The programs for A105892, there is no canonical definition to state claims against.
-/

/-! ## A105892.P6082072548256739209

`p?[A240107(n+1)]`
-/

namespace A105892.P6082072548256739209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105892.P6082072548256739209

/-! ## A105892.P10320886014313516692

`∩[A003626(n+1), A240107(n+1)]`
-/

namespace A105892.P10320886014313516692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105892.P10320886014313516692

/-! ## A105892.P17333323819859448464

`∩[A015919(n+1), A240107(n+1)]`
-/

namespace A105892.P17333323819859448464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105892.P17333323819859448464

/-! ## A105892.P13169677796680162850

`∩[A230359(n+1), A240107(n+1)]`
-/

namespace A105892.P13169677796680162850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105892.P13169677796680162850

/-! ## A105892.P6193363807747241714

`∩[A004139(n+1), A240107(n+1)]`
-/

namespace A105892.P6193363807747241714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105892.P6193363807747241714

/-! ## A105892.P8635524854454021256

`∩[A000040(n+1), A240107(n+1)]`
-/

namespace A105892.P8635524854454021256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105892.P8635524854454021256

/-! ## A105892.P5180495178728099188

`∩[A006005(n+1), A240107(n+1)]`
-/

namespace A105892.P5180495178728099188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105892.P5180495178728099188

/-! ## A105892.P11017188717017816827

`∩[A008578(n+1), A240107(n+1)]`
-/

namespace A105892.P11017188717017816827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105892.P11017188717017816827

/-! ## A105892.P4881681025119533310

`∩[A045319(n+1), A240107(n+1)]`
-/

namespace A105892.P4881681025119533310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105892.P4881681025119533310

/-! ## A105892.P1808229492644159982

`∩[A045344(n+1), A240107(n+1)]`
-/

namespace A105892.P1808229492644159982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105892.P1808229492644159982

/-! ## A105892.P135553308248819879

`∩[A093515(n+1), A240107(n+1)]`
-/

namespace A105892.P135553308248819879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105892.P135553308248819879

/-! ## A105892.P6103390197129768941

`∩[A067126(n+1), A240107(n+1)]`
-/

namespace A105892.P6103390197129768941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105892.P6103390197129768941

/-! ## A105892.P3060894191197559675

`∩[A053813(n+1), A240107(n+1)]`
-/

namespace A105892.P3060894191197559675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105892.P3060894191197559675

/-! ## A105892.P3563924049954069210

`∩[A066050(n+1), A240107(n+1)]`
-/

namespace A105892.P3563924049954069210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105892.P3563924049954069210

/-! ## A105892.P11976183721277595527

`∩[A162787(n+1), A240107(n+1)]`
-/

namespace A105892.P11976183721277595527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105892.P11976183721277595527

/-! ## A105892.P10166791948086232051

`∩[A055977(n+1), A240107(n+1)]`
-/

namespace A105892.P10166791948086232051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105892.P10166791948086232051

/-! ## A105892.P12417295600171201023

`∩[A053577(n+1), A240107(n+1)]`
-/

namespace A105892.P12417295600171201023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105892.P12417295600171201023

/-! ## A105892.P12497814633387879680

`∩[A240107(n+1), A260442(n)]`
-/

namespace A105892.P12497814633387879680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105892.P12497814633387879680

/-! ## A105892.P17190397783529507558

`filter[A240107(n+1), A008966(#)]`
-/

namespace A105892.P17190397783529507558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A105892.P17190397783529507558

/-! ## A105892.P6512145532202147097

`filter[A240107(n+1), A010051(#)]`
-/

namespace A105892.P6512145532202147097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A105892.P6512145532202147097

/-!
# A105895: Primes for which -23 is a primitive root.

The programs for A105895, there is no canonical definition to state claims against.
-/

/-! ## A105895.P4515317722661996551

`record[p?[A291769(A163990(n+1))]]`
-/

namespace A105895.P4515317722661996551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 (A163990 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105895.P4515317722661996551

/-!
# A105896: Primes for which -24 is a primitive root.

The programs for A105896, there is no canonical definition to state claims against.
-/

/-! ## A105896.P323546673127156497

`record[A217581(A046013(n+1)+A045959(n+1))]`
-/

namespace A105896.P323546673127156497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (A046013 (n + 1) + A045959 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105896.P323546673127156497

/-!
# A105897: Primes for which -25 is a primitive root.

The programs for A105897, there is no canonical definition to state claims against.
-/

/-! ## A105897.P11835855589174607687

`eq[A103491(n), A129756(n)]`
-/

namespace A105897.P11835855589174607687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103491 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105897.P11835855589174607687

/-! ## A105897.P1874082645846765698

`record[A321220(record[A103491(n)])]`
-/

namespace A105897.P1874082645846765698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103491 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321220 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105897.P1874082645846765698

/-! ## A105897.P15674135618625028973

`p?[eq[A004525(n), A103491(n)]]`
-/

namespace A105897.P15674135618625028973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103491 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A105897.P15674135618625028973

/-! ## A105897.P4909262973965379640

`eq[A004525(n+1), A103491(n+1)]+1`
-/

namespace A105897.P4909262973965379640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103491 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A105897.P4909262973965379640

/-! ## A105897.P18035067274363397564

`eq[A005408(A002265(n)), A103491(n)]`
-/

namespace A105897.P18035067274363397564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A002265 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103491 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105897.P18035067274363397564

/-! ## A105897.P5374566951695412243

`eq[A103491(n), A267458(A266977(n))]`
-/

namespace A105897.P5374566951695412243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103491 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 (A266977 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105897.P5374566951695412243

/-! ## A105897.P6962264930445103986

`eq[A004525(A004525(2*n+1)), A103491(n)]`
-/

namespace A105897.P6962264930445103986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103491 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105897.P6962264930445103986

/-!
# A105898: Primes for which -26 is a primitive root.

The programs for A105898, there is no canonical definition to state claims against.
-/

/-! ## A105898.P2839908931046400019

`p?[A135662(A157956(n+1))]`
-/

namespace A105898.P2839908931046400019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (A157956 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105898.P2839908931046400019

/-! ## A105898.P9816521867806539398

`A216495(lt[A071256(n+1), A085587(3*(n+1))])`
-/

namespace A105898.P9816521867806539398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085587 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216495 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A105898.P9816521867806539398

/-! ## A105898.P17857030403854084717

`p?[A195172(A002157(n+1))*A319510(n+1)]`
-/

namespace A105898.P17857030403854084717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195172 (A002157 (n + 1)).toNat * A319510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105898.P17857030403854084717

/-! ## A105898.P14744421416131902356

`record[p?[A228651(n+1)]%A132955(n+2)]`
-/

namespace A105898.P14744421416131902356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228651 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)) (A132955 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105898.P14744421416131902356

/-!
# A105899: Period 6: repeat [1, 1, 2, 2, 3, 3].

The programs for A105899, the canonical program `A105899.P6783073523908753185` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105899 has offset 0).

The definition of A105899 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105899.P6783073523908753185

`floor(n/2)-3*floor(n/6)+1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A105899

/-- `floor(n/2)-3*floor(n/6)+1` -/
def P6783073523908753185.Spec : Prop :=
  ∀ n, P6783073523908753185.a n = A105899 n

theorem P6783073523908753185.correct : P6783073523908753185.Spec := by
  intro n
  simp only [A105899]

end A105899

