import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C007
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A264600: Let S_n denote the list of decimal numbers 0 to n, written backwards (allowing leading zeros) and arranged in lexicographic order; a(n) = position where backwards-n appears, starting indexing at 0.

The programs for A264600, there is no canonical definition to state claims against.
-/

/-! ## A264600.P8835476300402614284

`A264668(n)+A061486(n)`
-/

namespace A264600.P8835476300402614284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A061486 n

end

end A264600.P8835476300402614284

/-! ## A264600.P8593139523896952886

`A264668(n)+A064553(A113581(n))-1`
-/

namespace A264600.P8593139523896952886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + (A064553 (A113581 n).toNat - 1)

end

end A264600.P8593139523896952886

/-! ## A264600.P17648019388512380614

`floor(∏{digits}[n, n/(n+1)+#])+A035930(n)-A257297(n)`
-/

namespace A264600.P17648019388512380614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (n : ℚ) / (n + 1 : ℚ) + (x : ℚ)).prod⌋ + (A035930 n - A257297 n)

end

end A264600.P17648019388512380614

/-!
# A264601: Coefficients of time series for the spin correlation function C(0,t) at the SEP (symmetric exclusion process) point.

The programs for A264601, there is no canonical definition to state claims against.
-/

/-! ## A264601.P1026495978936925341

`A285014(A020711(n))+A279568(n)`
-/

namespace A264601.P1026495978936925341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285014 (A020711 n).toNat + A279568 n

end

end A264601.P1026495978936925341

/-! ## A264601.P66556840803819237

`A004525(A017993(n)*A130018(n))`
-/

namespace A264601.P66556840803819237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A017993 n * A130018 n).toNat

end

end A264601.P66556840803819237

/-! ## A264601.P8328191211314447499

`xor(A053617(n), A111432(A099132(n)))`
-/

namespace A264601.P8328191211314447499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A053617 n) (A111432 (A099132 n).toNat)

end

end A264601.P8328191211314447499

/-! ## A264601.P1864761163187711565

`A053617(n)+A048377(A337889(n+2))`
-/

namespace A264601.P1864761163187711565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053617 n + A048377 (A337889 (n + 2)).toNat

end

end A264601.P1864761163187711565

/-!
# A264602: Coefficients of time series for the spin correlation function C(0,t) at a TASEP (totally asymmetric exclusion process) point.

The programs for A264602, there is no canonical definition to state claims against.
-/

/-! ## A264602.P10008005246284257554

`A070679(A365979(n)+A147722(n))`
-/

namespace A264602.P10008005246284257554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070679 (A365979 n + A147722 n).toNat

end

end A264602.P10008005246284257554

/-! ## A264602.P499266512651148098

`A072071(A000142(n)*A002620(n))`
-/

namespace A264602.P499266512651148098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072071 (A000142 n * A002620 n).toNat

end

end A264602.P499266512651148098

/-! ## A264602.P3472994784397278838

`and(A100824(A000166(n)), A370443(n))`
-/

namespace A264602.P3472994784397278838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A100824 (A000166 n).toNat) (A370443 n)

end

end A264602.P3472994784397278838

/-!
# A264603: Number of structurally distinct Latin squares of order n.

The programs for A264603, there is no canonical definition to state claims against.
-/

/-! ## A264603.P10621689619337240794

`∏[∏{e}[(n-1)^(2*n), 2*#]]`
-/

namespace A264603.P10621689619337240794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, 2 * Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A264603.P10621689619337240794

/-!
# A264604: a(n) = smallest square which is a concatenation of n and m, where m is a decimal number.

The programs for A264604, there is no canonical definition to state claims against.
-/

/-! ## A264604.P18411716005592371122

`A071177(n+1)²`
-/

namespace A264604.P18411716005592371122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071177 (n + 1) ^ 2

end

end A264604.P18411716005592371122

/-! ## A264604.P3682688300955458515

`A071177(A000027(n+1))^2`
-/

namespace A264604.P3682688300955458515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071177 (A000027 (n + 1)).toNat ^ 2

end

end A264604.P3682688300955458515

/-! ## A264604.P11525109068262478386

`A071177(n+1)^A020639(2*(n+1))`
-/

namespace A264604.P11525109068262478386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071177 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A264604.P11525109068262478386

/-! ## A264604.P4220252322502184054

`A071177(n+1)^A000040(gcd(n, n+1))`
-/

namespace A264604.P4220252322502184054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071177 (n + 1) : ℚ) ^ (A000040 (Nat.gcd n (n + 1)) : ℤ)

end

end A264604.P4220252322502184054

/-! ## A264604.P6874835891154571689

`A071177(n+1)^A000040((-1)^(2*n))`
-/

namespace A264604.P6874835891154571689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071177 (n + 1) : ℚ) ^ (A000040 ((-1) ^ (2 * n)).toNat : ℤ)

end

end A264604.P6874835891154571689

/-! ## A264604.P14873215906177270767

`A071177(A000027(n+1))*A071177(n+1)`
-/

namespace A264604.P14873215906177270767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071177 (A000027 (n + 1)).toNat * A071177 (n + 1)

end

end A264604.P14873215906177270767

/-! ## A264604.P15162926845091994919

`A002620(2*A071177(n+1))`
-/

namespace A264604.P15162926845091994919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A071177 (n + 1)).toNat

end

end A264604.P15162926845091994919

/-! ## A264604.P3668296267486572287

`A000290(A071177(C(n+1, n)))`
-/

namespace A264604.P3668296267486572287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A071177 (Nat.choose (n + 1) n)).toNat

end

end A264604.P3668296267486572287

/-! ## A264604.P12177229218683012190

`A071177(n+1)^2*A007318(∑[n])`
-/

namespace A264604.P12177229218683012190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071177 (n + 1) ^ 2 * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264604.P12177229218683012190

/-!
# A264605: Number of self-dual negacyclic codes of length 4n over GF(3), where 4n runs through the numbers congruent to 4 or 8 mod 12 (cf. A092259).

The programs for A264605, there is no canonical definition to state claims against.
-/

/-! ## A264605.P4843876998250060648

`A363831(A237642(n+1))`
-/

namespace A264605.P4843876998250060648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363831 (A237642 (n + 1)).toNat

end

end A264605.P4843876998250060648

/-! ## A264605.P9322310450520408868

`A225081(A050355(n+2))`
-/

namespace A264605.P9322310450520408868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225081 (A050355 (n + 2)).toNat

end

end A264605.P9322310450520408868

/-! ## A264605.P499926440753994652

`A225081(A164060(n+2))`
-/

namespace A264605.P499926440753994652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225081 (A164060 (n + 2)).toNat

end

end A264605.P499926440753994652

/-! ## A264605.P18102135827948930738

`A164281(2*A295065(n))`
-/

namespace A264605.P18102135827948930738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164281 (2 * A295065 n).toNat

end

end A264605.P18102135827948930738

/-! ## A264605.P6032699961760854255

`2^A321904(A177510(n))`
-/

namespace A264605.P6032699961760854255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A321904 (A177510 n).toNat : ℤ)

end

end A264605.P6032699961760854255

/-!
# A264606: Number of self-dual negacyclic codes of length 2n over GF(9), where 2n runs through the numbers congruent to 2 or 4 mod 6 (cf. A047235).

The programs for A264606, there is no canonical definition to state claims against.
-/

/-! ## A264606.P9366358114939663822

`A001316(A061098(n+1)+4)`
-/

namespace A264606.P9366358114939663822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A061098 (n + 1) + 4).toNat

end

end A264606.P9366358114939663822

/-! ## A264606.P69006134891095502

`A001316(A013619(n)*A045966(n+1))`
-/

namespace A264606.P69006134891095502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A013619 n * A045966 (n + 1)).toNat

end

end A264606.P69006134891095502

/-! ## A264606.P14394156112735295800

`A001316(lcm(A013619(n), A045966(n+1)))`
-/

namespace A264606.P14394156112735295800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (Int.lcm (A013619 n) (A045966 (n + 1)))

end

end A264606.P14394156112735295800

/-!
# A264607: Degeneracies of entanglement witness eigenstates for spin 3/2 particles.

The programs for A264607, there is no canonical definition to state claims against.
-/

/-! ## A264607.P7958580009478694605

`A005721(n)%A005724(A028310(n))`
-/

namespace A264607.P7958580009478694605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005721 n) (A005724 (A028310 n).toNat)

end

end A264607.P7958580009478694605

/-! ## A264607.P13681365975691599853

`A005721(A065033(2*n))-A005724(A028310(n))`
-/

namespace A264607.P13681365975691599853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005721 (A065033 (2 * n)).toNat - A005724 (A028310 n).toNat

end

end A264607.P13681365975691599853

/-! ## A264607.P906845720911406620

`A349934(∑[char[1]+1+n]+2)`
-/

namespace A264607.P906845720911406620
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349934 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264607.P906845720911406620

/-!
# A264608: Degeneracies of entanglement witness eigenstates for spin 3 particles.

The programs for A264608, there is no canonical definition to state claims against.
-/

/-! ## A264608.P13361885251677363843

`A156312(a(n-1))+2` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A264608.P13361885251677363843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n a =>
  A156312 (a (n - 1)).toNat + 2

end

end A264608.P13361885251677363843

/-! ## A264608.P17044405379733687837

`A194519(∑[n*a(n-1)]-1)` with `a(0)=2`
-/

namespace A264608.P17044405379733687837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194519 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A264608.P17044405379733687837

/-! ## A264608.P9305609929996931408

`A253249(A214970(round(ϕ*a(n-1))))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A264608.P9305609929996931408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n a =>
  A253249 (A214970 (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))).toNat).toNat

end

end A264608.P9305609929996931408

/-!
# A264609: A260685(4n).

The programs for A264609, there is no canonical definition to state claims against.
-/

/-! ## A264609.P16849017943302401098

`A260685(4*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A264609.P16849017943302401098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260685 (4 * (n + 1))

end

end A264609.P16849017943302401098

/-! ## A264609.P5964307278266108233

`A260685(A008586(n+1))+A178798(n)`
-/

namespace A264609.P5964307278266108233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260685 (A008586 (n + 1)).toNat + A178798 n

end

end A264609.P5964307278266108233

/-! ## A264609.P709694552901919043

`A260685(A008586(n+1))/A007318(∑[n])`
-/

namespace A264609.P709694552901919043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260685 (A008586 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A264609.P709694552901919043

/-! ## A264609.P3007654555374130988

`A260685(A008586(n+1))+val(A005117(n+1), 4)`
-/

namespace A264609.P3007654555374130988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260685 (A008586 (n + 1)).toNat + (SequenceMachineLib.valuation (A005117 (n + 1)).toNat 4 : ℤ)

end

end A264609.P3007654555374130988

/-! ## A264609.P14708891938026377525

`A260685(A008586(n+1))+val(A000045(n+1)+1, 84)`
-/

namespace A264609.P14708891938026377525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260685 (A008586 (n + 1)).toNat + (SequenceMachineLib.valuation (A000045 (n + 1) + 1).toNat 84 : ℤ)

end

end A264609.P14708891938026377525

/-!
# A264610: a(0)=1; thereafter a(n) = -Sum_{i=1..n} a(n-i)^(2^i).

The programs for A264610, there is no canonical definition to state claims against.
-/

/-! ## A264610.P3783359947158053403

`A260685(2^n)`
-/

namespace A264610.P3783359947158053403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260685 (2 ^ n)

end

end A264610.P3783359947158053403

/-! ## A264610.P14623460680033375580

`A263774(A046055(n+1))`
-/

namespace A264610.P14623460680033375580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263774 (A046055 (n + 1)).toNat

end

end A264610.P14623460680033375580

/-! ## A264610.P17621054675815764328

`A000038(n)-A006241(A000079(n))`
-/

namespace A264610.P17621054675815764328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A006241 (A000079 n).toNat

end

end A264610.P17621054675815764328

/-! ## A264610.P2228980609271094082

`or(A000122(n), A260685(A000079(n)))`
-/

namespace A264610.P2228980609271094082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 n) (A260685 (A000079 n).toNat)

end

end A264610.P2228980609271094082

/-! ## A264610.P4311333288410788877

`A014963(12*n+6)*A260685(A000079(n))`
-/

namespace A264610.P4311333288410788877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * n + 6) * A260685 (A000079 n).toNat

end

end A264610.P4311333288410788877

/-!
# A264613: Numbers n such that the Shevelev polynomial {m, n} has a root at m = -1.

The programs for A264613, there is no canonical definition to state claims against.
-/

/-! ## A264613.P2465922419204858437

`∪[2*4^n, 3*2^n-1]`
-/

namespace A264613.P2465922419204858437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 4 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A264613.P2465922419204858437

/-! ## A264613.P11352500439687583476

`3*floor(∑[4*a(n-3)]/3)+2` with `a(0)=1, a(1)=3, a(2)=2`
-/

namespace A264613.P11352500439687583476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2] fun n f1 =>
  4 * f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋ + 2

end

end A264613.P11352500439687583476

/-! ## A264613.P9265781760021735335

`3*A088163(n)+2`
-/

namespace A264613.P9265781760021735335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A088163 n + 2

end

end A264613.P9265781760021735335

/-! ## A264613.P8146337200297448178

`∪[A033484(n), A083420(n)]+1`
-/

namespace A264613.P8146337200297448178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083420 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A264613.P8146337200297448178

/-! ## A264613.P7591675637807223925

`A100063(n+1)+∑[A137824(n+1)]`
-/

namespace A264613.P7591675637807223925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100063 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264613.P7591675637807223925

/-!
# A264617: Irregular triangle read by rows: T(n,k) = number of signed unichromosonal genomes with n genes at 4-break distance k from a fixed genome, 0 <= k <= floor((n+1)/3).

The programs for A264617, there is no canonical definition to state claims against.
-/

/-! ## A264617.P14684388364706716250

`A086620(A320337(n)%A279312(n))`
-/

namespace A264617.P14684388364706716250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086620 (Int.tmod (A320337 n) (A279312 n)).toNat

end

end A264617.P14684388364706716250

/-! ## A264617.P5446132750227588310

`or(A086620(A187792(n+1)), A187783(n))`
-/

namespace A264617.P5446132750227588310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A086620 (A187792 (n + 1)).toNat) (A187783 n)

end

end A264617.P5446132750227588310

/-! ## A264617.P9159441944004956118

`or(A086620(A187792(n+1)), A187800(n+1))`
-/

namespace A264617.P9159441944004956118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A086620 (A187792 (n + 1)).toNat) (A187800 (n + 1))

end

end A264617.P9159441944004956118

/-! ## A264617.P3457668047939859760

`or(A086620(A187792(n+1)), A264616(n+1))`
-/

namespace A264617.P3457668047939859760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A086620 (A187792 (n + 1)).toNat) (A264616 (n + 1))

end

end A264617.P3457668047939859760

/-! ## A264617.P15001334130425593358

`or(A086620(A187792(n+1)), A097637(n+3))`
-/

namespace A264617.P15001334130425593358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A086620 (A187792 (n + 1)).toNat) (A097637 (n + 3))

end

end A264617.P15001334130425593358

/-!
# A264618: Working in binary, write n followed by 0 then n-reversed (including leading zeros); show result in base 10.

The programs for A264618, the canonical program `A264618.P3264753877006638992` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264618 has offset 0).

The definition of A264618 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264618.P17301684605525407904

`A264619(n)-A062383(n)`
-/

namespace A264618.P17301684605525407904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264619 n - A062383 n

end

end A264618.P17301684605525407904

namespace A264618

/-- `A264619(n)-A062383(n)` -/
def P17301684605525407904.Spec : Prop :=
  ∀ n, P17301684605525407904.a n = A264618 n

end A264618

/-! ## A264618.P11405319835782087928

`A264619(n)-(A003817(n)+1)`
-/

namespace A264618.P11405319835782087928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264619 n - (A003817 n + 1)

end

end A264618.P11405319835782087928

namespace A264618

/-- `A264619(n)-(A003817(n)+1)` -/
def P11405319835782087928.Spec : Prop :=
  ∀ n, P11405319835782087928.a n = A264618 n

end A264618

/-! ## A264618.P3264753877006638992

`2*A048701(n)-A030101(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A264618

/-- `2*A048701(n)-A030101(n)` -/
def P3264753877006638992.Spec : Prop :=
  ∀ n, P3264753877006638992.a n = A264618 n

theorem P3264753877006638992.correct : P3264753877006638992.Spec := by
  intro n
  simp only [A264618]

end A264618

/-! ## A264618.P17684322860815861168

`A030101(n)+4*n*A053644(n)`
-/

namespace A264618.P17684322860815861168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n + 4 * ((n : ℤ) * A053644 n)

end

end A264618.P17684322860815861168

namespace A264618

/-- `A030101(n)+4*n*A053644(n)` -/
def P17684322860815861168.Spec : Prop :=
  ∀ n, P17684322860815861168.a n = A264618 n

end A264618

/-! ## A264618.P12189300861011653083

`∑[A265028(n+1)]-A265028(n+1)`
-/

namespace A264618.P12189300861011653083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A265028 (n + 1)

end

end A264618.P12189300861011653083

namespace A264618

/-- `∑[A265028(n+1)]-A265028(n+1)` -/
def P12189300861011653083.Spec : Prop :=
  ∀ n, P12189300861011653083.a n = A264618 n

end A264618

/-! ## A264618.P7778908055302833518

`xor(A003817(A003817(n)+1), A276795(n+1))`
-/

namespace A264618.P7778908055302833518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003817 (A003817 n + 1).toNat) (A276795 (n + 1))

end

end A264618.P7778908055302833518

namespace A264618

/-- `xor(A003817(A003817(n)+1), A276795(n+1))` -/
def P7778908055302833518.Spec : Prop :=
  ∀ n, P7778908055302833518.a n = A264618 n

end A264618

/-! ## A264618.P2933589328856825124

`A175543(A004761(n+2))`
-/

namespace A264618.P2933589328856825124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175543 (A004761 (n + 2)).toNat

end

end A264618.P2933589328856825124

namespace A264618

/-- `A175543(A004761(n+2))` -/
def P2933589328856825124.Spec : Prop :=
  ∀ n, P2933589328856825124.a n = A264618 n

end A264618

/-! ## A264618.P3309052806251857175

`record[n%2*A048700(n+1)]`
-/

namespace A264618.P3309052806251857175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A048700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264618.P3309052806251857175

namespace A264618

/-- `record[n%2*A048700(n+1)]` -/
def P3309052806251857175.Spec : Prop :=
  ∀ n, P3309052806251857175.a n = A264618 n

end A264618

/-! ## A264618.P3406476270543092039

`A264619(n)-A053644(2*n+1)`
-/

namespace A264618.P3406476270543092039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264619 n - A053644 (2 * n + 1)

end

end A264618.P3406476270543092039

namespace A264618

/-- `A264619(n)-A053644(2*n+1)` -/
def P3406476270543092039.Spec : Prop :=
  ∀ n, P3406476270543092039.a n = A264618 n

end A264618

/-! ## A264618.P15807234403786038688

`A048700(2*n+1)+A030101(n)-A030101(2*n+1)`
-/

namespace A264618.P15807234403786038688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048700 (2 * n + 1) + (A030101 n - A030101 (2 * n + 1))

end

end A264618.P15807234403786038688

namespace A264618

/-- `A048700(2*n+1)+A030101(n)-A030101(2*n+1)` -/
def P15807234403786038688.Spec : Prop :=
  ∀ n, P15807234403786038688.a n = A264618 n

end A264618

/-! ## A264618.P3077695903744553357

`A048700(2*n+1)+A331891(2*n+1)-A331891(2*(n+1))`
-/

namespace A264618.P3077695903744553357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048700 (2 * n + 1) + (A331891 (2 * n + 1) - A331891 (2 * (n + 1)))

end

end A264618.P3077695903744553357

namespace A264618

/-- `A048700(2*n+1)+A331891(2*n+1)-A331891(2*(n+1))` -/
def P3077695903744553357.Spec : Prop :=
  ∀ n, P3077695903744553357.a n = A264618 n

end A264618

/-! ## A264618.P17287459391069003351

`A006995(A004761(2*(n+1)))`
-/

namespace A264618.P17287459391069003351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A004761 (2 * (n + 1))).toNat

end

end A264618.P17287459391069003351

namespace A264618

/-- `A006995(A004761(2*(n+1)))` -/
def P17287459391069003351.Spec : Prop :=
  ∀ n, P17287459391069003351.a n = A264618 n

end A264618

/-! ## A264618.P7148763774507712446

`A006995(A092754(2*n+1))`
-/

namespace A264618.P7148763774507712446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A092754 (2 * n + 1)).toNat

end

end A264618.P7148763774507712446

namespace A264618

/-- `A006995(A092754(2*n+1))` -/
def P7148763774507712446.Spec : Prop :=
  ∀ n, P7148763774507712446.a n = A264618 n

end A264618

/-! ## A264618.P15295066481980932092

`A006995(A004760(n+2)+n)`
-/

namespace A264618.P15295066481980932092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A004760 (n + 2) + (n : ℤ)).toNat

end

end A264618.P15295066481980932092

namespace A264618

/-- `A006995(A004760(n+2)+n)` -/
def P15295066481980932092.Spec : Prop :=
  ∀ n, P15295066481980932092.a n = A264618 n

end A264618

/-! ## A264618.P5688418939869687889

`A006995(A062383(n)+2*n)`
-/

namespace A264618.P5688418939869687889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A062383 n + (2 * n : ℤ)).toNat

end

end A264618.P5688418939869687889

namespace A264618

/-- `A006995(A062383(n)+2*n)` -/
def P5688418939869687889.Spec : Prop :=
  ∀ n, P5688418939869687889.a n = A264618 n

end A264618

/-! ## A264618.P9815282849406871757

`A006995(A062383(n)+n+n)`
-/

namespace A264618.P9815282849406871757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A062383 n + (n : ℤ) + (n : ℤ)).toNat

end

end A264618.P9815282849406871757

namespace A264618

/-- `A006995(A062383(n)+n+n)` -/
def P9815282849406871757.Spec : Prop :=
  ∀ n, P9815282849406871757.a n = A264618 n

end A264618

/-! ## A264618.P15136995464822867444

`A006995(A004754(2*n+1)-1)`
-/

namespace A264618.P15136995464822867444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A004754 (2 * n + 1) - 1).toNat

end

end A264618.P15136995464822867444

namespace A264618

/-- `A006995(A004754(2*n+1)-1)` -/
def P15136995464822867444.Spec : Prop :=
  ∀ n, P15136995464822867444.a n = A264618 n

end A264618

/-! ## A264618.P14584409348127838678

`A006995(A053644(2*n+1)+2*n)`
-/

namespace A264618.P14584409348127838678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A053644 (2 * n + 1) + (2 * n : ℤ)).toNat

end

end A264618.P14584409348127838678

namespace A264618

/-- `A006995(A053644(2*n+1)+2*n)` -/
def P14584409348127838678.Spec : Prop :=
  ∀ n, P14584409348127838678.a n = A264618 n

end A264618

/-! ## A264618.P2785040751783097276

`A006995(A055945(2*n)+A030101(2*n+1))`
-/

namespace A264618.P2785040751783097276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A055945 (2 * n) + A030101 (2 * n + 1)).toNat

end

end A264618.P2785040751783097276

namespace A264618

/-- `A006995(A055945(2*n)+A030101(2*n+1))` -/
def P2785040751783097276.Spec : Prop :=
  ∀ n, P2785040751783097276.a n = A264618 n

end A264618

/-!
# A264619: a(0) = 1; for n>0, working in binary, write n followed by 1 then n-reversed (including leading zeros); show result in base 10.

The programs for A264619, the canonical program `A264619.P7879630429741435189` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264619 has offset 0).

The definition of A264619 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264619.P8938581336595411497

`A265029(n)+a(n-1)` with `a(0)=1`
-/

namespace A264619.P8938581336595411497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A265029 n + a (n - 1)

end

end A264619.P8938581336595411497

namespace A264619

/-- `A265029(n)+a(n-1)` -/
def P8938581336595411497.Spec : Prop :=
  ∀ n, P8938581336595411497.a n = A264619 n

end A264619

/-! ## A264619.P9108459263642826200

`A264618(n)+2^ceil(log2(n+1))`
-/

namespace A264619.P9108459263642826200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264618 n : ℚ) + (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)

end

end A264619.P9108459263642826200

namespace A264619

/-- `A264618(n)+2^ceil(log2(n+1))` -/
def P9108459263642826200.Spec : Prop :=
  ∀ n, P9108459263642826200.a n = (A264619 n : ℚ)

end A264619

/-! ## A264619.P7879630429741435189

`xor(A062383(n), A264618(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A264619

/-- `xor(A062383(n), A264618(n))` -/
def P7879630429741435189.Spec : Prop :=
  ∀ n, P7879630429741435189.a n = A264619 n

theorem P7879630429741435189.correct : P7879630429741435189.Spec := by
  intro n
  simp only [A264619]

end A264619

/-! ## A264619.P4770529150205565288

`A003817(n)+A264618(n)+1`
-/

namespace A264619.P4770529150205565288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n + (A264618 n + 1)

end

end A264619.P4770529150205565288

namespace A264619

/-- `A003817(n)+A264618(n)+1` -/
def P4770529150205565288.Spec : Prop :=
  ∀ n, P4770529150205565288.a n = A264619 n

end A264619

/-! ## A264619.P13513766120271543304

`or(A145341(n+1), A264618(n))`
-/

namespace A264619.P13513766120271543304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A145341 (n + 1)) (A264618 n)

end

end A264619.P13513766120271543304

namespace A264619

/-- `or(A145341(n+1), A264618(n))` -/
def P13513766120271543304.Spec : Prop :=
  ∀ n, P13513766120271543304.a n = A264619 n

end A264619

/-! ## A264619.P11097237845579961022

`xor(A003817(n), A276795(n+1))`
-/

namespace A264619.P11097237845579961022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003817 n) (A276795 (n + 1))

end

end A264619.P11097237845579961022

namespace A264619

/-- `xor(A003817(n), A276795(n+1))` -/
def P11097237845579961022.Spec : Prop :=
  ∀ n, P11097237845579961022.a n = A264619 n

end A264619

/-! ## A264619.P3304163920309929949

`A048700(Δ[n²])`
-/

namespace A264619.P3304163920309929949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048700 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A264619.P3304163920309929949

namespace A264619

/-- `A048700(Δ[n²])` -/
def P3304163920309929949.Spec : Prop :=
  ∀ n, P3304163920309929949.a n = A264619 n

end A264619

/-! ## A264619.P5209752502939937878

`record[Δ[n*A030101(n)]]`
-/

namespace A264619.P5209752502939937878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A030101 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264619.P5209752502939937878

namespace A264619

/-- `record[Δ[n*A030101(n)]]` -/
def P5209752502939937878.Spec : Prop :=
  ∀ n, P5209752502939937878.a n = A264619 n

end A264619

/-! ## A264619.P3568054857939601207

`xor(1, A048700(2*n+1))+1`
-/

namespace A264619.P3568054857939601207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A048700 (2 * n + 1)) + 1

end

end A264619.P3568054857939601207

namespace A264619

/-- `xor(1, A048700(2*n+1))+1` -/
def P3568054857939601207.Spec : Prop :=
  ∀ n, P3568054857939601207.a n = A264619 n

end A264619

/-! ## A264619.P11388795034989327421

`∩[A048700(n+1), A175544(n+1)]`
-/

namespace A264619.P11388795034989327421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264619.P11388795034989327421

namespace A264619

/-- `∩[A048700(n+1), A175544(n+1)]` -/
def P11388795034989327421.Spec : Prop :=
  ∀ n, (P11388795034989327421.a n : ℤ) = A264619 n

end A264619

/-! ## A264619.P14496898427485919790

`A178225(2*(n+1))+A048700(2*n+1)`
-/

namespace A264619.P14496898427485919790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 (2 * (n + 1)) + A048700 (2 * n + 1)

end

end A264619.P14496898427485919790

namespace A264619

/-- `A178225(2*(n+1))+A048700(2*n+1)` -/
def P14496898427485919790.Spec : Prop :=
  ∀ n, P14496898427485919790.a n = A264619 n

end A264619

/-! ## A264619.P16965890585124998091

`A030101(2*n+1)+4*n*A053644(n)`
-/

namespace A264619.P16965890585124998091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (2 * n + 1) + 4 * ((n : ℤ) * A053644 n)

end

end A264619.P16965890585124998091

namespace A264619

/-- `A030101(2*n+1)+4*n*A053644(n)` -/
def P16965890585124998091.Spec : Prop :=
  ∀ n, P16965890585124998091.a n = A264619 n

end A264619

/-! ## A264619.P14255647614405753135

`A048700(n+1+n)+A025439(A023897(n+1))`
-/

namespace A264619.P14255647614405753135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048700 (n + 1 + n) + A025439 (A023897 (n + 1)).toNat

end

end A264619.P14255647614405753135

namespace A264619

/-- `A048700(n+1+n)+A025439(A023897(n+1))` -/
def P14255647614405753135.Spec : Prop :=
  ∀ n, P14255647614405753135.a n = A264619 n

end A264619

/-! ## A264619.P14109822503765969450

`record[Δ[n*A325401(2*n)]]`
-/

namespace A264619.P14109822503765969450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A325401 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264619.P14109822503765969450

namespace A264619

/-- `record[Δ[n*A325401(2*n)]]` -/
def P14109822503765969450.Spec : Prop :=
  ∀ n, P14109822503765969450.a n = A264619 n

end A264619

/-! ## A264619.P6450770644331397031

`A006995(A004754(Δ[n²]))`
-/

namespace A264619.P6450770644331397031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A004754 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A264619.P6450770644331397031

namespace A264619

/-- `A006995(A004754(Δ[n²]))` -/
def P6450770644331397031.Spec : Prop :=
  ∀ n, P6450770644331397031.a n = A264619 n

end A264619

/-! ## A264619.P12285083568792165126

`A006995(A062383(n)+Δ[n²])`
-/

namespace A264619.P12285083568792165126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A062383 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A264619.P12285083568792165126

namespace A264619

/-- `A006995(A062383(n)+Δ[n²])` -/
def P12285083568792165126.Spec : Prop :=
  ∀ n, P12285083568792165126.a n = A264619 n

end A264619

/-! ## A264619.P9693240425727972189

`A006995(A004761(2*(n+1))+1)`
-/

namespace A264619.P9693240425727972189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A004761 (2 * (n + 1)) + 1).toNat

end

end A264619.P9693240425727972189

namespace A264619

/-- `A006995(A004761(2*(n+1))+1)` -/
def P9693240425727972189.Spec : Prop :=
  ∀ n, P9693240425727972189.a n = A264619 n

end A264619

/-! ## A264619.P12841481318803408023

`A006995(A092754(2*n+1)+1)`
-/

namespace A264619.P12841481318803408023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A092754 (2 * n + 1) + 1).toNat

end

end A264619.P12841481318803408023

namespace A264619

/-- `A006995(A092754(2*n+1)+1)` -/
def P12841481318803408023.Spec : Prop :=
  ∀ n, P12841481318803408023.a n = A264619 n

end A264619

/-! ## A264619.P16879066562571160581

`A006995(A053644(2*n+1)+2*n+1)`
-/

namespace A264619.P16879066562571160581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A053644 (2 * n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A264619.P16879066562571160581

namespace A264619

/-- `A006995(A053644(2*n+1)+2*n+1)` -/
def P16879066562571160581.Spec : Prop :=
  ∀ n, P16879066562571160581.a n = A264619 n

end A264619

/-!
# A264620: Triangle read by rows: T(n,k) (0 <= k <= n) = number of principal ideals generated by an element of rank k in the 3-tonal partition monoid on n elements.

The programs for A264620, there is no canonical definition to state claims against.
-/

/-! ## A264620.P14823486169154175056

`and(A000217(A347834(n+1)), A139040(n+1))`
-/

namespace A264620.P14823486169154175056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000217 (A347834 (n + 1)).toNat) (A139040 (n + 1))

end

end A264620.P14823486169154175056

/-! ## A264620.P9165652130287889669

`A330166(lcm(A025677(n+1), A152714(n)))`
-/

namespace A264620.P9165652130287889669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330166 (Int.lcm (A025677 (n + 1)) (A152714 n))

end

end A264620.P9165652130287889669

/-! ## A264620.P1539159588031857414

`gcd(A004197(n), A331845(A220916(n+1)))`
-/

namespace A264620.P1539159588031857414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004197 n) (A331845 (A220916 (n + 1)).toNat)

end

end A264620.P1539159588031857414

/-! ## A264620.P9987901134142592243

`A003983(n+1)-A059841(A215060(n)²)`
-/

namespace A264620.P9987901134142592243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1) - A059841 (A215060 n ^ 2).toNat

end

end A264620.P9987901134142592243

/-! ## A264620.P12621057651132287270

`A344612(n)^A347617(A001204(n))`
-/

namespace A264620.P12621057651132287270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344612 n : ℚ) ^ (A347617 (A001204 n).toNat : ℤ)

end

end A264620.P12621057651132287270

/-!
# A264621: Number of (n+1) X (n+1) arrays of permutations of 0..(n+1)^2-1 with each element having directed index change -2,0 -1,0 0,-1 or 1,1.

The programs for A264621, there is no canonical definition to state claims against.
-/

/-! ## A264621.P8058568242544910795

`A264628(∑[4*n]+1)`
-/

namespace A264621.P8058568242544910795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264621.P8058568242544910795

/-! ## A264621.P11360923850536800837

`record[A264628(A272267(n+1))]`
-/

namespace A264621.P11360923850536800837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264621.P11360923850536800837

/-! ## A264621.P275614091692043992

`record[A264628(A330613(n+1))]`
-/

namespace A264621.P275614091692043992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264621.P275614091692043992

/-! ## A264621.P6873039523884459940

`A264628(A001844(n))+char[10]`
-/

namespace A264621.P6873039523884459940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A264621.P6873039523884459940

/-! ## A264621.P5229493481210128879

`record[A003982(n)*A264628(n+1)]`
-/

namespace A264621.P5229493481210128879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A264628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264621.P5229493481210128879

/-!
# A264622: Number of (n+1) X (1+1) arrays of permutations of 0..n*2+1 with each element having directed index change -2,0 -1,0 0,-1 or 1,1.

The programs for A264622, the canonical program `A264622.P8121172894792148276` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264622 has offset 1).

The definition of A264622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 652 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264622.P8121172894792148276

`a(n-3)+2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A264622

/-- `a(n-3)+2*a(n-4)+a(n-5)` -/
def P8121172894792148276.Spec : Prop :=
  ∀ n, (P8121172894792148276.a n : ℤ) = A264622 (n + 1)

theorem P8121172894792148276.correct : P8121172894792148276.Spec := by
  intro n
  simp only [A264622, Nat.add_sub_cancel]

end A264622

/-! ## A264622.P9553491460371203974

`A052920(2*(n+2))`
-/

namespace A264622.P9553491460371203974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052920 (2 * (n + 2))

end

end A264622.P9553491460371203974

namespace A264622

/-- `A052920(2*(n+2))` -/
def P9553491460371203974.Spec : Prop :=
  ∀ n, P9553491460371203974.a n = A264622 (n + 1)

end A264622

/-! ## A264622.P5189823188549666513

`or(char[1], A052920(A005843(n+2)))`
-/

namespace A264622.P5189823188549666513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A052920 (A005843 (n + 2)).toNat)

end

end A264622.P5189823188549666513

namespace A264622

/-- `or(char[1], A052920(A005843(n+2)))` -/
def P5189823188549666513.Spec : Prop :=
  ∀ n, P5189823188549666513.a n = A264622 (n + 1)

end A264622

/-! ## A264622.P1640007150205574086

`lcm(A033999(n), A052920(A005843(n+2)))`
-/

namespace A264622.P1640007150205574086
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A052920 (A005843 (n + 2)).toNat)

end

end A264622.P1640007150205574086

namespace A264622

/-- `lcm(A033999(n), A052920(A005843(n+2)))` -/
def P1640007150205574086.Spec : Prop :=
  ∀ n, (P1640007150205574086.a n : ℤ) = A264622 (n + 1)

end A264622

/-! ## A264622.P17304650012779127085

`A264628(∑[n+1])`
-/

namespace A264622.P17304650012779127085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264622.P17304650012779127085

namespace A264622

/-- `A264628(∑[n+1])` -/
def P17304650012779127085.Spec : Prop :=
  ∀ n, P17304650012779127085.a n = A264622 (n + 1)

end A264622

/-!
# A264623: Number of (n+1)X(3+1) arrays of permutations of 0..n*4+3 with each element having directed index change -2,0 -1,0 0,-1 or 1,1.

The programs for A264623, there is no canonical definition to state claims against.
-/

/-! ## A264623.P9008825835163900601

`A264628(∑[n+3]+1)`
-/

namespace A264623.P9008825835163900601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264623.P9008825835163900601

/-! ## A264623.P2096842612500075547

`A264628(A052905(n)+3)+char[19]`
-/

namespace A264623.P2096842612500075547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (A052905 n + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A264623.P2096842612500075547

/-! ## A264623.P10861947972025925652

`record[A010054(n+3)*A264628(n+1)]`
-/

namespace A264623.P10861947972025925652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A264628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264623.P10861947972025925652

/-! ## A264623.P214804704552146885

`A264628(A052905(n)+3)%A000108(n+2)`
-/

namespace A264623.P214804704552146885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264628 (A052905 n + 3).toNat) (A000108 (n + 2))

end

end A264623.P214804704552146885

/-!
# A264624: Number of (n+1)X(4+1) arrays of permutations of 0..n*5+4 with each element having directed index change -2,0 -1,0 0,-1 or 1,1.

The programs for A264624, there is no canonical definition to state claims against.
-/

/-! ## A264624.P5155600358793236346

`A264628(∑[n+4]+3)`
-/

namespace A264624.P5155600358793236346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A264624.P5155600358793236346

/-! ## A264624.P16704669897634260361

`record[A264628(A019304(n))]`
-/

namespace A264624.P16704669897634260361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (A019304 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264624.P16704669897634260361

/-! ## A264624.P10340894329820358865

`A264628(A155212(n)+5)+A007949(3*n+5)`
-/

namespace A264624.P10340894329820358865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (A155212 n + 5).toNat + A007949 (3 * n + 5)

end

end A264624.P10340894329820358865

/-!
# A264625: Number of (n+1)X(5+1) arrays of permutations of 0..n*6+5 with each element having directed index change -2,0 -1,0 0,-1 or 1,1.

The programs for A264625, there is no canonical definition to state claims against.
-/

/-! ## A264625.P9415140270898959755

`A264628(∑[n+5]+6)`
-/

namespace A264625.P9415140270898959755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A264625.P9415140270898959755

/-!
# A264626: Number of (n+1) X (6+1) arrays of permutations of 0..n*7+6 with each element having directed index change -2,0 -1,0 0,-1 or 1,1.

The programs for A264626, there is no canonical definition to state claims against.
-/

/-! ## A264626.P4072283553034895074

`A264628(A052905(n+3))`
-/

namespace A264626.P4072283553034895074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (A052905 (n + 3)).toNat

end

end A264626.P4072283553034895074

/-! ## A264626.P2679158395161490144

`A264628(A056119(n)+16)`
-/

namespace A264626.P2679158395161490144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (A056119 n + 16).toNat

end

end A264626.P2679158395161490144

/-! ## A264626.P12724053118152968563

`A264628(eq[3, A219347(n)])`
-/

namespace A264626.P12724053118152968563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264626.P12724053118152968563

/-! ## A264626.P15136775523777429267

`A264628(eq[5, A152157(n)])`
-/

namespace A264626.P15136775523777429267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264626.P15136775523777429267

/-! ## A264626.P9186292901324195241

`A264628(eq[5, A193592(n)])`
-/

namespace A264626.P9186292901324195241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264626.P9186292901324195241

/-!
# A264627: Number of (n+1)X(7+1) arrays of permutations of 0..n*8+7 with each element having directed index change -2,0 -1,0 0,-1 or 1,1.

The programs for A264627, there is no canonical definition to state claims against.
-/

/-! ## A264627.P750527588080695354

`A264628(A055999(n+4))`
-/

namespace A264627.P750527588080695354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (A055999 (n + 4)).toNat

end

end A264627.P750527588080695354

/-! ## A264627.P4069359325665421760

`A264628(eq[4, A219347(n)])`
-/

namespace A264627.P4069359325665421760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264627.P4069359325665421760

/-! ## A264627.P12336153318672948613

`A264628(eq[6, A193592(n)])`
-/

namespace A264627.P12336153318672948613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264627.P12336153318672948613

/-! ## A264627.P10754031958363398975

`A264628(Δ[A023551(n+2)])`
-/

namespace A264627.P10754031958363398975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (f1 (n + 1) - f1 n).toNat

end

end A264627.P10754031958363398975

/-! ## A264627.P4205309102207692360

`A264628(A056000(n+3)+4)`
-/

namespace A264627.P4205309102207692360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (A056000 (n + 3) + 4).toNat

end

end A264627.P4205309102207692360

/-!
# A264629: Number of (2+1) X (n+1) arrays of permutations of 0..n*3+2 with each element having directed index change -2,0 -1,0 0,-1 or 1,1.

The programs for A264629, the canonical program `A264629.P16663038096299187406` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264629 has offset 1).

The definition of A264629 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 311 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264629.P16663038096299187406

`2*a(n-1)+2*a(n-5)-2*a(n-6)+4*a(n-7)-a(n-10)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=9, a(4)=16, a(5)=37, a(6)=76, a(7)=160, a(8)=337, a(9)=704`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A264629

/-- `2*a(n-1)+2*a(n-5)-2*a(n-6)+4*a(n-7)-a(n-10)` -/
def P16663038096299187406.Spec : Prop :=
  ∀ n, P16663038096299187406.a n = A264629 (n + 1)

theorem P16663038096299187406.correct : P16663038096299187406.Spec := by
  intro n
  simp only [A264629, Nat.add_sub_cancel]

end A264629

/-! ## A264629.P15857278382153511681

`A264628(∑[n+1]+2)`
-/

namespace A264629.P15857278382153511681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264629.P15857278382153511681

namespace A264629

/-- `A264628(∑[n+1]+2)` -/
def P15857278382153511681.Spec : Prop :=
  ∀ n, P15857278382153511681.a n = A264629 (n + 1)

end A264629

/-! ## A264629.P4945731152922828653

`record[A264628(A133825(n)+2)]`
-/

namespace A264629.P4945731152922828653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (A133825 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264629.P4945731152922828653

namespace A264629

/-- `record[A264628(A133825(n)+2)]` -/
def P4945731152922828653.Spec : Prop :=
  ∀ n, P4945731152922828653.a n = A264629 (n + 1)

end A264629

/-! ## A264629.P8722718803625203680

`record[A264628(A160791(n)+2)]`
-/

namespace A264629.P8722718803625203680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (A160791 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264629.P8722718803625203680

namespace A264629

/-- `record[A264628(A160791(n)+2)]` -/
def P8722718803625203680.Spec : Prop :=
  ∀ n, P8722718803625203680.a n = A264629 (n + 1)

end A264629

/-! ## A264629.P4238026035227908712

`record[A264628(Δ[A038793(n+3)])]`
-/

namespace A264629.P4238026035227908712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038793 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264629.P4238026035227908712

namespace A264629

/-- `record[A264628(Δ[A038793(n+3)])]` -/
def P4238026035227908712.Spec : Prop :=
  ∀ n, P4238026035227908712.a n = A264629 (n + 1)

end A264629

/-!
# A264630: Number of (3+1)X(n+1) arrays of permutations of 0..n*4+3 with each element having directed index change -2,0 -1,0 0,-1 or 1,1.

The programs for A264630, there is no canonical definition to state claims against.
-/

/-! ## A264630.P2393383233569058732

`A264628(∑[n+2]+4)`
-/

namespace A264630.P2393383233569058732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264630.P2393383233569058732

/-! ## A264630.P15512268410936100528

`and(-1, A264628(A167614(n+1)))`
-/

namespace A264630.P15512268410936100528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A264628 (A167614 (n + 1)).toNat)

end

end A264630.P15512268410936100528

/-! ## A264630.P14741416149218595719

`A264628(A167499(n)+n)+floor(tanh(n))`
-/

namespace A264630.P14741416149218595719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (A167499 n + (n : ℤ)).toNat + ⌊Real.tanh (n : ℝ)⌋

end

end A264630.P14741416149218595719

/-! ## A264630.P5589673096714722922

`A326457(n)+A264628(A167614(n+1))`
-/

namespace A264630.P5589673096714722922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326457 n + A264628 (A167614 (n + 1)).toNat

end

end A264630.P5589673096714722922

/-! ## A264630.P11385336060867433302

`A326462(n)+A264628(A167614(n+1))`
-/

namespace A264630.P11385336060867433302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326462 n + A264628 (A167614 (n + 1)).toNat

end

end A264630.P11385336060867433302

/-!
# A264631: Number of (4+1)X(n+1) arrays of permutations of 0..n*5+4 with each element having directed index change -2,0 -1,0 0,-1 or 1,1.

The programs for A264631, there is no canonical definition to state claims against.
-/

/-! ## A264631.P6409978393146318364

`A264628(∑[n+3]+7)`
-/

namespace A264631.P6409978393146318364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A264631.P6409978393146318364

/-! ## A264631.P15237869796332096431

`A264628(A167614(n+2)+1)+char[18]`
-/

namespace A264631.P15237869796332096431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A264631.P15237869796332096431

/-! ## A264631.P17452498591511680717

`lcm(A001221(n+2), A264628(A167614(n+2)+1))`
-/

namespace A264631.P17452498591511680717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (n + 2)) (A264628 (A167614 (n + 2) + 1).toNat)

end

end A264631.P17452498591511680717

/-! ## A264631.P5893326584496201305

`A007318(C(2, n))*A264628(A167614(n+2)+1)`
-/

namespace A264631.P5893326584496201305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A264628 (A167614 (n + 2) + 1).toNat

end

end A264631.P5893326584496201305

/-! ## A264631.P17582081353758154480

`A264628(A000124(n+3)+3)/A007318(C(3, n))`
-/

namespace A264631.P17582081353758154480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264628 (A000124 (n + 3) + 3).toNat : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A264631.P17582081353758154480

/-!
# A264632: Number of (5+1)X(n+1) arrays of permutations of 0..n*6+5 with each element having directed index change -2,0 -1,0 0,-1 or 1,1.

The programs for A264632, there is no canonical definition to state claims against.
-/

/-! ## A264632.P6225139302832223931

`A264628(C(n+6, 2)-n)`
-/

namespace A264632.P6225139302832223931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (Nat.choose (n + 6) 2 - n)

end

end A264632.P6225139302832223931

/-! ## A264632.P11768731302966413961

`A264628(A167499(n+3))`
-/

namespace A264632.P11768731302966413961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (A167499 (n + 3)).toNat

end

end A264632.P11768731302966413961

/-! ## A264632.P2219968050431475359

`A264628(A155212(n)+13)`
-/

namespace A264632.P2219968050431475359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (A155212 n + 13).toNat

end

end A264632.P2219968050431475359

/-! ## A264632.P9876402439943822624

`A264628(A056000(n)+15)`
-/

namespace A264632.P9876402439943822624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (A056000 n + 15).toNat

end

end A264632.P9876402439943822624

/-! ## A264632.P9810569301681918399

`A264628(eq[7, A066657(n)])`
-/

namespace A264632.P9810569301681918399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264632.P9810569301681918399

/-!
# A264633: Number of (6+1)X(n+1) arrays of permutations of 0..n*7+6 with each element having directed index change -2,0 -1,0 0,-1 or 1,1.

The programs for A264633, there is no canonical definition to state claims against.
-/

/-! ## A264633.P7024932081213627774

`A264628(A166136(n+4))`
-/

namespace A264633.P7024932081213627774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (A166136 (n + 4)).toNat

end

end A264633.P7024932081213627774

/-! ## A264633.P5536445489791992846

`A264628(A056115(n)+21)`
-/

namespace A264633.P5536445489791992846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (A056115 n + 21).toNat

end

end A264633.P5536445489791992846

/-! ## A264633.P16348031841293067756

`A264628(Δ[A264443(n)]+10)`
-/

namespace A264633.P16348031841293067756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (f1 (n + 1) - f1 n + 10).toNat

end

end A264633.P16348031841293067756

/-! ## A264633.P14514476321082170409

`A264628(A167499(n+4)+1)`
-/

namespace A264633.P14514476321082170409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (A167499 (n + 4) + 1).toNat

end

end A264633.P14514476321082170409

/-! ## A264633.P15331529026886891537

`A264628(A112355(n+3)+6)`
-/

namespace A264633.P15331529026886891537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (A112355 (n + 3) + 6).toNat

end

end A264633.P15331529026886891537

/-!
# A264634: Number of (7+1)X(n+1) arrays of permutations of 0..n*8+7 with each element having directed index change -2,0 -1,0 0,-1 or 1,1.

The programs for A264634, there is no canonical definition to state claims against.
-/

/-! ## A264634.P1201089007355495922

`A264628(∑[n+7]+21-n)`
-/

namespace A264634.P1201089007355495922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (∑ j ∈ Finset.range (n + 1), f1 j + 21 - n)

end

end A264634.P1201089007355495922

/-!
# A264635: Number of n X 1 arrays of permutations of 0..n*1-1 with rows nondecreasing modulo 2 and columns nondecreasing modulo 4.

The programs for A264635, there is no canonical definition to state claims against.
-/

/-! ## A264635.P13231822426578868227

`∏[∑[char[4*n]]]`
-/

namespace A264635.P13231822426578868227
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A264635.P13231822426578868227

/-! ## A264635.P251425287668069701

`abs(∏[round((n-tan(2))/4)])`
-/

namespace A264635.P251425287668069701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℝ) - Real.tan (2 : ℝ)) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A264635.P251425287668069701

/-! ## A264635.P9739822317996389095

`a(n-1)*∑[char[4*n]]` with `a(0)=1`
-/

namespace A264635.P9739822317996389095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264635.P9739822317996389095

/-! ## A264635.P5223174460525152368

`(floor(n/4)+1)*a(n-1)` with `a(0)=1`
-/

namespace A264635.P5223174460525152368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (⌊(n : ℚ) / 4⌋ + 1) * a (n - 1)

end

end A264635.P5223174460525152368

/-! ## A264635.P11327384506266402726

`abs(a(n-1))*ceil((n+1)/4)` with `a(0)=1`
-/

namespace A264635.P11327384506266402726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1)| * ⌈(n + 1 : ℚ) / 4⌉

end

end A264635.P11327384506266402726

/-! ## A264635.P6096183202101547505

`a(n-1)-floor((3-n)/4)*a(n-1)` with `a(0)=1`
-/

namespace A264635.P6096183202101547505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ⌊(3 - (n : ℤ) : ℚ) / 4⌋ * a (n - 1)

end

end A264635.P6096183202101547505

/-! ## A264635.P11867426347258416451

`abs(∏[-A008621(n)])`
-/

namespace A264635.P11867426347258416451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A264635.P11867426347258416451

/-! ## A264635.P3022559106700699045

`abs(∏[-(A002265(n)+1)])`
-/

namespace A264635.P3022559106700699045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A002265 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A264635.P3022559106700699045

/-! ## A264635.P9224999864880294748

`abs(∏[Δ[A296141(n+2)]])`
-/

namespace A264635.P9224999864880294748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296141 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A264635.P9224999864880294748

/-! ## A264635.P12686153383255519389

`∏[A008621(n+1)]/A008621(n+1)`
-/

namespace A264635.P12686153383255519389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A008621 (n + 1) : ℚ)

end

end A264635.P12686153383255519389

/-!
# A264636: Number of nX2 arrays of permutations of 0..n*2-1 with rows nondecreasing modulo 2 and columns nondecreasing modulo 4.

The programs for A264636, there is no canonical definition to state claims against.
-/

/-! ## A264636.P3694241254248641480

`A264638(∑[n+2])`
-/

namespace A264636.P3694241254248641480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264638 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264636.P3694241254248641480

/-! ## A264636.P5546308466511389997

`record[A264638(∑[A152271(n)])]`
-/

namespace A264636.P5546308466511389997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264638 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264636.P5546308466511389997

/-! ## A264636.P604248018065459683

`record[gcd(A055137(n), A264638(n+1))]`
-/

namespace A264636.P604248018065459683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055137 n) (A264638 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264636.P604248018065459683

/-!
# A264637: Number of nX3 arrays of permutations of 0..n*3-1 with rows nondecreasing modulo 2 and columns nondecreasing modulo 4.

The programs for A264637, there is no canonical definition to state claims against.
-/

/-! ## A264637.P21194313656189472

`A264638(∑[n+3]+1)`
-/

namespace A264637.P21194313656189472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264638 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264637.P21194313656189472

/-! ## A264637.P6776651776536579510

`record[A264638(A198464(n+1))]`
-/

namespace A264637.P6776651776536579510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264638 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264637.P6776651776536579510

/-!
# A264639: Number of 2 X n arrays of permutations of 0..n*2-1 with rows nondecreasing modulo 2 and columns nondecreasing modulo 4.

The programs for A264639, there is no canonical definition to state claims against.
-/

/-! ## A264639.P11086858585795581134

`A264638(∑[n+1]+2)`
-/

namespace A264639.P11086858585795581134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264638 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264639.P11086858585795581134

/-! ## A264639.P10221287395885442363

`record[A010054(n)*A264638(n+2)]`
-/

namespace A264639.P10221287395885442363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A264638 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264639.P10221287395885442363

/-! ## A264639.P3829106003782609838

`record[gcd(A098825(n), A264638(n+1))]`
-/

namespace A264639.P3829106003782609838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098825 n) (A264638 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264639.P3829106003782609838

/-! ## A264639.P3187712651956189563

`record[gcd(A002262(n), A264638(n+2))]`
-/

namespace A264639.P3187712651956189563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A264638 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264639.P3187712651956189563

/-!
# A264640: Number of 3Xn arrays of permutations of 0..n*3-1 with rows nondecreasing modulo 2 and columns nondecreasing modulo 4.

The programs for A264640, there is no canonical definition to state claims against.
-/

/-! ## A264640.P7310154790923735774

`A264638(∑[n+2]+4)`
-/

namespace A264640.P7310154790923735774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264638 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264640.P7310154790923735774

/-! ## A264640.P2385628249997925375

`record[A264638(record[A194867(n+1)])]`
-/

namespace A264640.P2385628249997925375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194867 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264638 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264640.P2385628249997925375

/-! ## A264640.P4865771317262591644

`A264638(A167614(n+1))+A011730(n)`
-/

namespace A264640.P4865771317262591644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264638 (A167614 (n + 1)).toNat + A011730 n

end

end A264640.P4865771317262591644

/-!
# A264641: Number of nX2 arrays of permutations of 0..n*2-1 with rows nondecreasing modulo 3 and columns nondecreasing modulo 4.

The programs for A264641, there is no canonical definition to state claims against.
-/

/-! ## A264641.P11497089632577738011

`A264643(∑[n+2])`
-/

namespace A264641.P11497089632577738011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264643 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264641.P11497089632577738011

/-! ## A264641.P10955300343847815019

`A209211(A059966(n+1)*A348597(n))`
-/

namespace A264641.P10955300343847815019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209211 (A059966 (n + 1) * A348597 n).toNat

end

end A264641.P10955300343847815019

/-!
# A264642: Number of nX3 arrays of permutations of 0..n*3-1 with rows nondecreasing modulo 3 and columns nondecreasing modulo 4.

The programs for A264642, there is no canonical definition to state claims against.
-/

/-! ## A264642.P7359379562756655343

`A264643(∑[n+3]+1)`
-/

namespace A264642.P7359379562756655343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264643 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264642.P7359379562756655343

/-! ## A264642.P675228699100184289

`record[A264643(A101881(n))]`
-/

namespace A264642.P675228699100184289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264643 (A101881 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264642.P675228699100184289

/-!
# A264643: T(n,k)=Number of nXk arrays of permutations of 0..n*k-1 with rows nondecreasing modulo 3 and columns nondecreasing modulo 4.

The programs for A264643, there is no canonical definition to state claims against.
-/

/-! ## A264643.P8226298204420617334

`A117333(A264692(n+1))`
-/

namespace A264643.P8226298204420617334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117333 (A264692 (n + 1)).toNat

end

end A264643.P8226298204420617334

/-!
# A264644: Number of 2Xn arrays of permutations of 0..n*2-1 with rows nondecreasing modulo 3 and columns nondecreasing modulo 4.

The programs for A264644, there is no canonical definition to state claims against.
-/

/-! ## A264644.P7891989595016084153

`A264643(∑[n+1]+2)`
-/

namespace A264644.P7891989595016084153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264643 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264644.P7891989595016084153

/-!
# A264645: Number of 3Xn arrays of permutations of 0..n*3-1 with rows nondecreasing modulo 3 and columns nondecreasing modulo 4.

The programs for A264645, there is no canonical definition to state claims against.
-/

/-! ## A264645.P16641715807799622246

`A264643(∑[n+2]+4)`
-/

namespace A264645.P16641715807799622246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264643 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264645.P16641715807799622246

/-! ## A264645.P270174792575548793

`lcm((-1)^∑{e}[n+1, #], A264643(A167614(n+1)))`
-/

namespace A264645.P270174792575548793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) (A264643 (A167614 (n + 1)).toNat)

end

end A264645.P270174792575548793

/-! ## A264645.P4643871037869716671

`A264643(A167614(n+1))+A025466(n)`
-/

namespace A264645.P4643871037869716671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264643 (A167614 (n + 1)).toNat + A025466 n

end

end A264645.P4643871037869716671

/-!
# A264646: A simple self-describing sequence S: n concatenated with the n-th digit of S.

The programs for A264646, there is no canonical definition to state claims against.
-/

/-! ## A264646.P1801807636106045708

`10*A000005(2^n)+A025480(n)+1`
-/

namespace A264646.P1801807636106045708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A000005 (2 ^ n) + (A025480 n + 1)

end

end A264646.P1801807636106045708

/-! ## A264646.P8840889031260201888

`A326844(A137485(n+1))+A003602(n+1)`
-/

namespace A264646.P8840889031260201888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326844 (A137485 (n + 1)).toNat + A003602 (n + 1)

end

end A264646.P8840889031260201888

/-! ## A264646.P194264695549009962

`A003602(n+1)+10*A000005(A000079(n))`
-/

namespace A264646.P194264695549009962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) + 10 * A000005 (A000079 n).toNat

end

end A264646.P194264695549009962

/-! ## A264646.P10670862171597372767

`A008592(A001222(2^n)+1)+A003602(n+1)`
-/

namespace A264646.P10670862171597372767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A001222 (2 ^ n) + 1).toNat + A003602 (n + 1)

end

end A264646.P10670862171597372767

/-! ## A264646.P7685823403309425165

`A108685(n)+A059134(A016825(n)*A108685(n))`
-/

namespace A264646.P7685823403309425165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108685 n + A059134 (A016825 n * A108685 n).toNat

end

end A264646.P7685823403309425165

/-!
# A264648: Number of (n+1)X(n+1) arrays of permutations of 0..(n+1)^2-1 with each element having directed index change 1,1 2,2 -1,0 or 0,-1.

The programs for A264648, there is no canonical definition to state claims against.
-/

/-! ## A264648.P4115148147780129567

`A264655(∑[4*n]+1)`
-/

namespace A264648.P4115148147780129567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264655 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264648.P4115148147780129567

/-! ## A264648.P5869379160476570385

`lcm(2, A264655(A001844(n)))`
-/

namespace A264648.P5869379160476570385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A264655 (A001844 n).toNat)

end

end A264648.P5869379160476570385

/-! ## A264648.P16901761381152874595

`A264655(A001844(n))+A171765(n)`
-/

namespace A264648.P16901761381152874595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264655 (A001844 n).toNat + A171765 n

end

end A264648.P16901761381152874595

/-! ## A264648.P9187650959885814351

`A264655(A001844(n))+A000045(11*floor(n/10))`
-/

namespace A264648.P9187650959885814351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264655 (A001844 n).toNat + A000045 (11 * ⌊(n : ℚ) / 10⌋).toNat

end

end A264648.P9187650959885814351

/-! ## A264648.P10151824302216756565

`A000041(11*floor(n/10))*A264655(A001844(n))`
-/

namespace A264648.P10151824302216756565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (11 * ⌊(n : ℚ) / 10⌋).toNat * A264655 (A001844 n).toNat

end

end A264648.P10151824302216756565

/-!
# A264649: Number of (n+1) X (2+1) arrays of permutations of 0..n*3+2 with each element having directed index change 1,1 2,2 -1,0 or 0,-1.

The programs for A264649, the canonical program `A264649.P1015655128921721673` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264649 has offset 1).

The definition of A264649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 311 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264649.P1015655128921721673

`2*a(n-1)+2*a(n-5)-2*a(n-6)+4*a(n-7)-a(n-10)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=9, a(4)=18, a(5)=41, a(6)=84, a(7)=176, a(8)=369, a(9)=772`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A264649

/-- `2*a(n-1)+2*a(n-5)-2*a(n-6)+4*a(n-7)-a(n-10)` -/
def P1015655128921721673.Spec : Prop :=
  ∀ n, P1015655128921721673.a n = A264649 (n + 1)

theorem P1015655128921721673.correct : P1015655128921721673.Spec := by
  intro n
  simp only [A264649, Nat.add_sub_cancel]

end A264649

/-! ## A264649.P13741459592998534983

`A264655(∑[n+1]+2)`
-/

namespace A264649.P13741459592998534983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264655 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264649.P13741459592998534983

namespace A264649

/-- `A264655(∑[n+1]+2)` -/
def P13741459592998534983.Spec : Prop :=
  ∀ n, P13741459592998534983.a n = A264649 (n + 1)

end A264649

/-! ## A264649.P14302683888716999589

`record[A264655(A117142(n+1)+2)]`
-/

namespace A264649.P14302683888716999589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264655 (A117142 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264649.P14302683888716999589

namespace A264649

/-- `record[A264655(A117142(n+1)+2)]` -/
def P14302683888716999589.Spec : Prop :=
  ∀ n, P14302683888716999589.a n = A264649 (n + 1)

end A264649

/-! ## A264649.P4373761784681719662

`A264668(n)+A264655(A252460(2*(n+2)))`
-/

namespace A264649.P4373761784681719662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A264655 (A252460 (2 * (n + 2))).toNat

end

end A264649.P4373761784681719662

namespace A264649

/-- `A264668(n)+A264655(A252460(2*(n+2)))` -/
def P4373761784681719662.Spec : Prop :=
  ∀ n, P4373761784681719662.a n = A264649 (n + 1)

end A264649

/-! ## A264649.P8306828034731226066

`A264655(A252460(2*(n+2)))%A264630(n+1)`
-/

namespace A264649.P8306828034731226066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264655 (A252460 (2 * (n + 2))).toNat) (A264630 (n + 1))

end

end A264649.P8306828034731226066

namespace A264649

/-- `A264655(A252460(2*(n+2)))%A264630(n+1)` -/
def P8306828034731226066.Spec : Prop :=
  ∀ n, P8306828034731226066.a n = A264649 (n + 1)

end A264649

/-!
# A264650: Number of (n+1)X(3+1) arrays of permutations of 0..n*4+3 with each element having directed index change 1,1 2,2 -1,0 or 0,-1.

The programs for A264650, there is no canonical definition to state claims against.
-/

/-! ## A264650.P17598643737321095745

`A264655(∑[n+2]+4)`
-/

namespace A264650.P17598643737321095745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264655 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264650.P17598643737321095745

/-! ## A264650.P2374831725829847393

`lcm((-1)^n, A264655(A167614(n+1)))`
-/

namespace A264650.P2374831725829847393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A264655 (A167614 (n + 1)).toNat)

end

end A264650.P2374831725829847393

/-! ## A264650.P6944154156951291311

`A264655(A167614(n+1))+A185284(n)`
-/

namespace A264650.P6944154156951291311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264655 (A167614 (n + 1)).toNat + A185284 n

end

end A264650.P6944154156951291311

/-! ## A264650.P1557818195121763656

`A057427(n)*A264655(A167614(n+1))`
-/

namespace A264650.P1557818195121763656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A264655 (A167614 (n + 1)).toNat

end

end A264650.P1557818195121763656

/-! ## A264650.P13054655092000146056

`A264655(A167614(n+1))%A016260(n)`
-/

namespace A264650.P13054655092000146056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264655 (A167614 (n + 1)).toNat) (A016260 n)

end

end A264650.P13054655092000146056

/-!
# A264651: Number of (n+1)X(4+1) arrays of permutations of 0..n*5+4 with each element having directed index change 1,1 2,2 -1,0 or 0,-1.

The programs for A264651, there is no canonical definition to state claims against.
-/

/-! ## A264651.P7253977432021903503

`A264655(A374004(n+1))`
-/

namespace A264651.P7253977432021903503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264655 (A374004 (n + 1)).toNat

end

end A264651.P7253977432021903503

/-! ## A264651.P17066544714905828632

`A264655(A141214(n)+7)`
-/

namespace A264651.P17066544714905828632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264655 (A141214 n + 7).toNat

end

end A264651.P17066544714905828632

/-! ## A264651.P4144151534742351302

`A264655(A052905(n)+9)`
-/

namespace A264651.P4144151534742351302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264655 (A052905 n + 9).toNat

end

end A264651.P4144151534742351302

/-! ## A264651.P1442170161074346842

`A264655(A055999(n)+10)`
-/

namespace A264651.P1442170161074346842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264655 (A055999 n + 10).toNat

end

end A264651.P1442170161074346842

/-! ## A264651.P2976237493369090637

`A264655(A167614(n+2)+1)`
-/

namespace A264651.P2976237493369090637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264655 (A167614 (n + 2) + 1).toNat

end

end A264651.P2976237493369090637

/-!
# A264652: Number of (n+1)X(5+1) arrays of permutations of 0..n*6+5 with each element having directed index change 1,1 2,2 -1,0 or 0,-1.

The programs for A264652, there is no canonical definition to state claims against.
-/

/-! ## A264652.P13227491372104350668

`A264655(A374005(n+1))`
-/

namespace A264652.P13227491372104350668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264655 (A374005 (n + 1)).toNat

end

end A264652.P13227491372104350668

/-! ## A264652.P3196731460180364729

`A264655(A167499(n+3))`
-/

namespace A264652.P3196731460180364729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264655 (A167499 (n + 3)).toNat

end

end A264652.P3196731460180364729

/-! ## A264652.P15169860807762006848

`A264655(A155212(n)+13)`
-/

namespace A264652.P15169860807762006848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264655 (A155212 n + 13).toNat

end

end A264652.P15169860807762006848

/-! ## A264652.P10814999438435097061

`A264655(A167614(n+3)+2)`
-/

namespace A264652.P10814999438435097061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264655 (A167614 (n + 3) + 2).toNat

end

end A264652.P10814999438435097061

/-! ## A264652.P2752720297407631062

`A264655(A000217(n+4)+5)`
-/

namespace A264652.P2752720297407631062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264655 (A000217 (n + 4) + 5).toNat

end

end A264652.P2752720297407631062

/-!
# A264653: Number of (n+1)X(6+1) arrays of permutations of 0..n*7+6 with each element having directed index change 1,1 2,2 -1,0 or 0,-1.

The programs for A264653, there is no canonical definition to state claims against.
-/

/-! ## A264653.P13881756357985860615

`A264655(A374007(n+1))`
-/

namespace A264653.P13881756357985860615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264655 (A374007 (n + 1)).toNat

end

end A264653.P13881756357985860615

/-! ## A264653.P6754355684023415386

`A264655(A052905(n+3))`
-/

namespace A264653.P6754355684023415386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264655 (A052905 (n + 3)).toNat

end

end A264653.P6754355684023415386

/-! ## A264653.P14197359774591177701

`A264655(eq[3, A219347(n)])`
-/

namespace A264653.P14197359774591177701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264653.P14197359774591177701

/-! ## A264653.P6572194397440156678

`A264655(eq[5, A193592(n)])`
-/

namespace A264653.P6572194397440156678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264653.P6572194397440156678

/-! ## A264653.P4485040782597619488

`A264655(eq[6, A200370(n+1)])`
-/

namespace A264653.P4485040782597619488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264653.P4485040782597619488

/-!
# A264654: Number of (n+1)X(7+1) arrays of permutations of 0..n*8+7 with each element having directed index change 1,1 2,2 -1,0 or 0,-1.

The programs for A264654, there is no canonical definition to state claims against.
-/

/-! ## A264654.P12074948864072328709

`A264655(A374008(n+1))`
-/

namespace A264654.P12074948864072328709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264655 (A374008 (n + 1)).toNat

end

end A264654.P12074948864072328709

/-! ## A264654.P16892129627127697832

`A264655(eq[8, A131818(n+1)])`
-/

namespace A264654.P16892129627127697832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264654.P16892129627127697832

/-! ## A264654.P11152810039274742788

`A264655(A055999(n+4))`
-/

namespace A264654.P11152810039274742788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264655 (A055999 (n + 4)).toNat

end

end A264654.P11152810039274742788

/-! ## A264654.P17620907551680334380

`A264655(eq[4, A219347(n)])`
-/

namespace A264654.P17620907551680334380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264654.P17620907551680334380

/-! ## A264654.P108069417607538998

`A264655(eq[6, A193592(n)])`
-/

namespace A264654.P108069417607538998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264654.P108069417607538998

/-!
# A264655: T(n,k)=Number of (n+1)X(k+1) arrays of permutations of 0..(n+1)*(k+1)-1 with each element having directed index change 1,1 2,2 -1,0 or 0,-1.

The programs for A264655, there is no canonical definition to state claims against.
-/

/-! ## A264655.P11209483565891592114

`and(A047812(n+1), A059270(A146005(n)))`
-/

namespace A264655.P11209483565891592114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047812 (n + 1)) (A059270 (A146005 n).toNat)

end

end A264655.P11209483565891592114

/-! ## A264655.P14491331284364353009

`A264583(n+1)-A287372(A000716(n))`
-/

namespace A264655.P14491331284364353009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (n + 1) - A287372 (A000716 n).toNat

end

end A264655.P14491331284364353009

/-! ## A264655.P11189647374438301135

`A264583(n+1)-A010060(A011379(2*n))`
-/

namespace A264655.P11189647374438301135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (n + 1) - A010060 (A011379 (2 * n)).toNat

end

end A264655.P11189647374438301135

/-! ## A264655.P15375519096207308079

`and(A090618(A051250(n+5)), A188579(n+1))`
-/

namespace A264655.P15375519096207308079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A090618 (A051250 (n + 5)).toNat) (A188579 (n + 1))

end

end A264655.P15375519096207308079

/-!
# A264656: Number of n X 1 arrays of permutations of 0..n*1-1 with rows nondecreasing modulo 2 and columns nondecreasing modulo 5.

The programs for A264656, the canonical program `A264656.P18255538348481514195` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264656 has offset 1).

The definition of A264656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264656.P13243872222458055702

`∏[∑[char[5*n]]]`
-/

namespace A264656.P13243872222458055702
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A264656.P13243872222458055702

namespace A264656

/-- `∏[∑[char[5*n]]]` -/
def P13243872222458055702.Spec : Prop :=
  ∀ n, (P13243872222458055702.a n : ℤ) = A264656 (n + 1)

end A264656

/-! ## A264656.P5059428263141194183

`a(n-1)*∑[char[5*n]]` with `a(0)=1`
-/

namespace A264656.P5059428263141194183
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264656.P5059428263141194183

namespace A264656

/-- `a(n-1)*∑[char[5*n]]` -/
def P5059428263141194183.Spec : Prop :=
  ∀ n, (P5059428263141194183.a n : ℤ) = A264656 (n + 1)

end A264656

/-! ## A264656.P18255538348481514195

`(floor(n/5)+1)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A264656

/-- `(floor(n/5)+1)*a(n-1)` -/
def P18255538348481514195.Spec : Prop :=
  ∀ n, P18255538348481514195.a n = A264656 (n + 1)

theorem P18255538348481514195.correct : P18255538348481514195.Spec := by
  intro n
  simp only [A264656, Nat.add_sub_cancel]

end A264656

/-! ## A264656.P16067567713784262080

`A000007(3*n+1)+∏[A008616(2*n)]`
-/

namespace A264656.P16067567713784262080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (3 * n + 1) + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A264656.P16067567713784262080

namespace A264656

/-- `A000007(3*n+1)+∏[A008616(2*n)]` -/
def P16067567713784262080.Spec : Prop :=
  ∀ n, P16067567713784262080.a n = A264656 (n + 1)

end A264656

/-! ## A264656.P16602240731823845091

`lcm(∏[A008616(2*n)], A325931(n+1))`
-/

namespace A264656.P16602240731823845091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∏ j ∈ Finset.range (n + 1), f1 j) (A325931 (n + 1))

end

end A264656.P16602240731823845091

namespace A264656

/-- `lcm(∏[A008616(2*n)], A325931(n+1))` -/
def P16602240731823845091.Spec : Prop :=
  ∀ n, (P16602240731823845091.a n : ℤ) = A264656 (n + 1)

end A264656

/-! ## A264656.P10991215443578138111

`∏[A008616(2*n)]%A041224(3*n+2)`
-/

namespace A264656.P10991215443578138111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A041224 (3 * n + 2))

end

end A264656.P10991215443578138111

namespace A264656

/-- `∏[A008616(2*n)]%A041224(3*n+2)` -/
def P10991215443578138111.Spec : Prop :=
  ∀ n, P10991215443578138111.a n = A264656 (n + 1)

end A264656

/-! ## A264656.P7492648208349623366

`A275062(A000124(n+7)-7)`
-/

namespace A264656.P7492648208349623366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275062 (A000124 (n + 7) - 7).toNat

end

end A264656.P7492648208349623366

namespace A264656

/-- `A275062(A000124(n+7)-7)` -/
def P7492648208349623366.Spec : Prop :=
  ∀ n, P7492648208349623366.a n = A264656 (n + 1)

end A264656

/-! ## A264656.P9091305082356273649

`A275065(2*n+1)/sqrt(A275065(2*n))`
-/

namespace A264656.P9091305082356273649
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A275065 (2 * n + 1) : ℝ) / Real.sqrt (A275065 (2 * n) : ℝ)

end

end A264656.P9091305082356273649

namespace A264656

/-- `A275065(2*n+1)/sqrt(A275065(2*n))` -/
def P9091305082356273649.Spec : Prop :=
  ∀ n, P9091305082356273649.a n = (A264656 (n + 1) : ℝ)

end A264656

/-! ## A264656.P10401570813034533186

`sqrt(∏[A287392(n+1)])`
-/

namespace A264656.P10401570813034533186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287392 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)

end

end A264656.P10401570813034533186

namespace A264656

/-- `sqrt(∏[A287392(n+1)])` -/
def P10401570813034533186.Spec : Prop :=
  ∀ n, P10401570813034533186.a n = (A264656 (n + 1) : ℝ)

end A264656

/-! ## A264656.P18376805770220102484

`sqrt(A275065(2*(n+1)))`
-/

namespace A264656.P18376805770220102484
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A275065 (2 * (n + 1)) : ℝ)

end

end A264656.P18376805770220102484

namespace A264656

/-- `sqrt(A275065(2*(n+1)))` -/
def P18376805770220102484.Spec : Prop :=
  ∀ n, P18376805770220102484.a n = (A264656 (n + 1) : ℝ)

end A264656

/-!
# A264657: Number of nX2 arrays of permutations of 0..n*2-1 with rows nondecreasing modulo 2 and columns nondecreasing modulo 5.

The programs for A264657, there is no canonical definition to state claims against.
-/

/-! ## A264657.P17043373939005557688

`A264659(∑[n+2])`
-/

namespace A264657.P17043373939005557688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264659 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264657.P17043373939005557688

/-! ## A264657.P9007674377819640532

`record[A264659(∑[A152271(n)])]`
-/

namespace A264657.P9007674377819640532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264659 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264657.P9007674377819640532

/-! ## A264657.P12146571705317961202

`record[A264659(∑[A158821(n)])]`
-/

namespace A264657.P12146571705317961202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264659 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264657.P12146571705317961202

/-!
# A264658: Number of nX3 arrays of permutations of 0..n*3-1 with rows nondecreasing modulo 2 and columns nondecreasing modulo 5.

The programs for A264658, there is no canonical definition to state claims against.
-/

/-! ## A264658.P6219642220632627164

`A264659(∑[n+3]+1)`
-/

namespace A264658.P6219642220632627164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264659 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264658.P6219642220632627164

/-! ## A264658.P1460365375346744757

`A264659(A034856(n+2))+A228247(n+1)`
-/

namespace A264658.P1460365375346744757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264659 (A034856 (n + 2)).toNat + A228247 (n + 1)

end

end A264658.P1460365375346744757

/-!
# A264660: Number of 2Xn arrays of permutations of 0..n*2-1 with rows nondecreasing modulo 2 and columns nondecreasing modulo 5.

The programs for A264660, there is no canonical definition to state claims against.
-/

/-! ## A264660.P16609992727635486738

`A264659(∑[n+1]+2)`
-/

namespace A264660.P16609992727635486738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264659 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264660.P16609992727635486738

/-! ## A264660.P5889781203749526055

`record[gcd(A259776(n), A264659(n+1))]`
-/

namespace A264660.P5889781203749526055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A259776 n) (A264659 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264660.P5889781203749526055

/-! ## A264660.P1313899988997717328

`record[gcd(A002262(n), A264659(n+2))]`
-/

namespace A264660.P1313899988997717328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A264659 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264660.P1313899988997717328

/-! ## A264660.P16259495019699708040

`record[A010054(n+1)*A264659(n+3)]`
-/

namespace A264660.P16259495019699708040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A264659 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264660.P16259495019699708040

/-!
# A264661: Number of 3Xn arrays of permutations of 0..n*3-1 with rows nondecreasing modulo 2 and columns nondecreasing modulo 5.

The programs for A264661, there is no canonical definition to state claims against.
-/

/-! ## A264661.P9890589853994847583

`A264659(∑[n+2]+4)`
-/

namespace A264661.P9890589853994847583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264659 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264661.P9890589853994847583

/-! ## A264661.P5481929651355933

`A264659(A167614(n+1))+12*C(n, 12)`
-/

namespace A264661.P5481929651355933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264659 (A167614 (n + 1)).toNat + (12 * Nat.choose n 12 : ℤ)

end

end A264661.P5481929651355933

/-! ## A264661.P12584642772566416489

`A264659(A167614(n+1))+A011733(n)`
-/

namespace A264661.P12584642772566416489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264659 (A167614 (n + 1)).toNat + A011733 n

end

end A264661.P12584642772566416489

/-!
# A264662: Triangle read by rows: row n contains the first n primes in lexicographical order of their mirrored binary representation.

The programs for A264662, there is no canonical definition to state claims against.
-/

/-! ## A264662.P13090904788070196799

`p?[A019565(A325984(A000265(n+1)))]`
-/

namespace A264662.P13090904788070196799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A325984 (A000265 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A264662.P13090904788070196799

/-! ## A264662.P17274471631784108073

`p?[A059365(xor(4, A000265(n+1)))]`
-/

namespace A264662.P17274471631784108073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059365 (Int.xor 4 (A000265 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A264662.P17274471631784108073

/-! ## A264662.P16820307327638641695

`p?[A245452(A277813(n+1))]`
-/

namespace A264662.P16820307327638641695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245452 (A277813 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A264662.P16820307327638641695

/-! ## A264662.P3659016688608324420

`A100549(A377711(n+2))`
-/

namespace A264662.P3659016688608324420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100549 (A377711 (n + 2)).toNat

end

end A264662.P3659016688608324420

/-! ## A264662.P11079221917730458300

`A300383(12*A324107(n+1))`
-/

namespace A264662.P11079221917730458300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300383 (12 * A324107 (n + 1)).toNat

end

end A264662.P11079221917730458300

/-!
# A264663: Catalan numbers written in base 2.

The programs for A264663, the canonical program `A264663.P2079914734675243927` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264663 has offset 0).

The definition of A264663 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A264663.P2079914734675243927

`A007088(A000108(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A264663

/-- `A007088(A000108(n))` -/
def P2079914734675243927.Spec : Prop :=
  ∀ n, P2079914734675243927.a n = A264663 n

theorem P2079914734675243927.correct : P2079914734675243927.Spec := by
  intro n
  simp only [A264663]

end A264663

/-! ## A264663.P13095154352752120698

`A007088(C(2*n, n)/(n+1))`
-/

namespace A264663.P13095154352752120698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ))).toNat

end

end A264663.P13095154352752120698

namespace A264663

/-- `A007088(C(2*n, n)/(n+1))` -/
def P13095154352752120698.Spec : Prop :=
  ∀ n, P13095154352752120698.a n = A264663 n

end A264663

/-! ## A264663.P2509614818737229840

`A007088(record[a(n-1)/(floor(n/2)/n-1)]/(n+1))` with `a(0)=1`
-/

namespace A264663.P2509614818737229840
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / (n + 1 : ℚ))).toNat

end

end A264663.P2509614818737229840

namespace A264663

/-- `A007088(record[a(n-1)/(floor(n/2)/n-1)]/(n+1))` -/
def P2509614818737229840.Spec : Prop :=
  ∀ n, P2509614818737229840.a n = A264663 n

end A264663

/-! ## A264663.P17235388407732658790

`A007088(A287974(n))`
-/

namespace A264663.P17235388407732658790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287974 n).toNat

end

end A264663.P17235388407732658790

namespace A264663

/-- `A007088(A287974(n))` -/
def P17235388407732658790.Spec : Prop :=
  ∀ n, P17235388407732658790.a n = A264663 n

end A264663

/-! ## A264663.P16280403586993895116

`A007088(A291825(n))`
-/

namespace A264663.P16280403586993895116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A291825 n).toNat

end

end A264663.P16280403586993895116

namespace A264663

/-- `A007088(A291825(n))` -/
def P16280403586993895116.Spec : Prop :=
  ∀ n, P16280403586993895116.a n = A264663 n

end A264663

/-!
# A264668: a(n) = A264600(n) - A061486(n).

The programs for A264668, there is no canonical definition to state claims against.
-/

/-! ## A264668.P9059606764571141102

`A264600(n)-A061486(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A264668.P9059606764571141102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264600 n - A061486 n

end

end A264668.P9059606764571141102

/-! ## A264668.P3896766238250758705

`A264600(n)+1-A089898(n)`
-/

namespace A264668.P3896766238250758705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264600 n + (1 - A089898 n)

end

end A264668.P3896766238250758705

/-! ## A264668.P1552136732323729227

`A264600(n)-A023443(∏{digits}[n, #+1])`
-/

namespace A264668.P1552136732323729227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264600 n - A023443 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x + 1).prod

end

end A264668.P1552136732323729227

/-! ## A264668.P8150816162004753992

`A264600(n)-A023443(2^∑{digits}[n, log2(#+1)])`
-/

namespace A264668.P8150816162004753992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264600 n - A023443 (SequenceMachineLib.roundAway ((2 : ℝ) ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.logb 2 (x + 1 : ℝ)).sum)).toNat

end

end A264668.P8150816162004753992

/-! ## A264668.P1254757328015135218

`A264600(n)-A023443(A089898(n))`
-/

namespace A264668.P1254757328015135218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264600 n - A023443 (A089898 n).toNat

end

end A264668.P1254757328015135218

/-! ## A264668.P14649957859420048397

`A264600(n)-A140106(2*∏{digits}[n, #+1])`
-/

namespace A264668.P14649957859420048397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264600 n - A140106 (2 * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x + 1).prod)

end

end A264668.P14649957859420048397

/-! ## A264668.P1951082584069965968

`A056965(A059995(n))*A257297(A004185(n))`
-/

namespace A264668.P1951082584069965968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A059995 n).toNat * A257297 (A004185 n).toNat

end

end A264668.P1951082584069965968

/-! ## A264668.P10324452744901925072

`A066568(A033619(n+1))-A118759(A066568(n))`
-/

namespace A264668.P10324452744901925072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 (A033619 (n + 1)).toNat - A118759 (A066568 n).toNat

end

end A264668.P10324452744901925072

/-! ## A264668.P15205836404712818453

`A151949(∑[A055641(n)]-A139551(n))`
-/

namespace A264668.P15205836404712818453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 (∑ j ∈ Finset.range (n + 1), f1 j - A139551 n).toNat

end

end A264668.P15205836404712818453

/-! ## A264668.P16074988024185211296

`A035930(n)-A257297(n)`
-/

namespace A264668.P16074988024185211296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035930 n - A257297 n

end

end A264668.P16074988024185211296

/-!
# A264669: Number of (n+1)X(n+1) arrays of permutations of 0..(n+1)^2-1 with each element having directed index change -1,-1 1,0 -1,-2 -2,-2 or 0,1.

The programs for A264669, there is no canonical definition to state claims against.
-/

/-! ## A264669.P12698881340022142505

`A264676(∑[4*n]+1)`
-/

namespace A264669.P12698881340022142505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264669.P12698881340022142505

/-! ## A264669.P1732044046790849607

`record[A264676(Δ[A235355(n)])]`
-/

namespace A264669.P1732044046790849607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264669.P1732044046790849607

/-! ## A264669.P8630422972993388306

`record[A264676(A330613(n+1))]`
-/

namespace A264669.P8630422972993388306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264669.P8630422972993388306

/-! ## A264669.P3190628432312939916

`A264676(A001844(n))+char[8]`
-/

namespace A264669.P3190628432312939916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A264669.P3190628432312939916

/-!
# A264670: Number of (n+1) X (2+1) arrays of permutations of 0..n*3+2 with each element having directed index change -1,-1 1,0 -1,-2 -2,-2 or 0,1.

The programs for A264670, there is no canonical definition to state claims against.
-/

/-! ## A264670.P3180949634755918575

`A264676(∑[n+2])`
-/

namespace A264670.P3180949634755918575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264670.P3180949634755918575

/-! ## A264670.P6531085242852571606

`record[A264676(abs(A201163(n)))]`
-/

namespace A264670.P6531085242852571606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264670.P6531085242852571606

/-! ## A264670.P4831249774752766090

`record[A264676(Δ[A003453(n+5)])]`
-/

namespace A264670.P4831249774752766090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264670.P4831249774752766090

/-! ## A264670.P16932770426616467805

`record[gcd(A008290(n), A264676(n+1))]`
-/

namespace A264670.P16932770426616467805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008290 n) (A264676 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264670.P16932770426616467805

/-! ## A264670.P14666526946643351272

`record[A264676(lt[A264676(n+1), n])]`
-/

namespace A264670.P14666526946643351272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264670.P14666526946643351272

/-!
# A264671: Number of (n+1)X(3+1) arrays of permutations of 0..n*4+3 with each element having directed index change -1,-1 1,0 -1,-2 -2,-2 or 0,1.

The programs for A264671, there is no canonical definition to state claims against.
-/

/-! ## A264671.P8673378139077730661

`A264676(∑[n+3]+1)`
-/

namespace A264671.P8673378139077730661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264671.P8673378139077730661

/-! ## A264671.P1095320746057549734

`A264676(A034856(n+2))+char[20]`
-/

namespace A264671.P1095320746057549734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A264671.P1095320746057549734

/-! ## A264671.P17562209923016798178

`A264676(eq[2, A193592(n)])%A264674(n+1)`
-/

namespace A264671.P17562209923016798178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264676 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A264674 (n + 1))

end

end A264671.P17562209923016798178

/-! ## A264671.P1593302545184029044

`A007318(C(2, n+1))*A264676(A034856(n+2))`
-/

namespace A264671.P1593302545184029044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 1)) * A264676 (A034856 (n + 2)).toNat

end

end A264671.P1593302545184029044

/-! ## A264671.P15391710711110932301

`A000041(C(2, n+2))*A264676(A034856(n+2))`
-/

namespace A264671.P15391710711110932301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A264676 (A034856 (n + 2)).toNat

end

end A264671.P15391710711110932301

/-!
# A264672: Number of (n+1) X (4+1) arrays of permutations of 0..n*5+4 with each element having directed index change -1,-1 1,0 -1,-2 -2,-2 or 0,1.

The programs for A264672, there is no canonical definition to state claims against.
-/

/-! ## A264672.P17362239217306821987

`A264676(∑[n+4]+3)`
-/

namespace A264672.P17362239217306821987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A264672.P17362239217306821987

/-!
# A264673: Number of (n+1)X(5+1) arrays of permutations of 0..n*6+5 with each element having directed index change -1,-1 1,0 -1,-2 -2,-2 or 0,1.

The programs for A264673, there is no canonical definition to state claims against.
-/

/-! ## A264673.P9547737923088293650

`A264676(Δ[A264443(n)])`
-/

namespace A264673.P9547737923088293650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (f1 (n + 1) - f1 n).toNat

end

end A264673.P9547737923088293650

/-! ## A264673.P5849588734974432080

`A264676(A046691(n+3))`
-/

namespace A264673.P5849588734974432080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (A046691 (n + 3)).toNat

end

end A264673.P5849588734974432080

/-! ## A264673.P9817371138593449529

`A264676(A056115(n)+11)`
-/

namespace A264673.P9817371138593449529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (A056115 n + 11).toNat

end

end A264673.P9817371138593449529

/-! ## A264673.P15028123257666034127

`A264676(eq[2, A092921(n)])`
-/

namespace A264673.P15028123257666034127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264673.P15028123257666034127

/-! ## A264673.P15697805776083378107

`A264676(eq[3, A152157(n)])`
-/

namespace A264673.P15697805776083378107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264673.P15697805776083378107

/-!
# A264674: Number of (n+1)X(6+1) arrays of permutations of 0..n*7+6 with each element having directed index change -1,-1 1,0 -1,-2 -2,-2 or 0,1.

The programs for A264674, there is no canonical definition to state claims against.
-/

/-! ## A264674.P10431157825979209951

`A264676(A052905(n+3))`
-/

namespace A264674.P10431157825979209951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (A052905 (n + 3)).toNat

end

end A264674.P10431157825979209951

/-! ## A264674.P2462199563121884987

`A264676(A056119(n)+16)`
-/

namespace A264674.P2462199563121884987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (A056119 n + 16).toNat

end

end A264674.P2462199563121884987

/-! ## A264674.P2911995284367229854

`A264676(eq[3, A219347(n)])`
-/

namespace A264674.P2911995284367229854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264674.P2911995284367229854

/-! ## A264674.P16762664306053612171

`A264676(eq[5, A152157(n)])`
-/

namespace A264674.P16762664306053612171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264674.P16762664306053612171

/-! ## A264674.P3214664769727299506

`A264676(eq[5, A193592(n)])`
-/

namespace A264674.P3214664769727299506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264674.P3214664769727299506

/-!
# A264675: Number of (n+1)X(7+1) arrays of permutations of 0..n*8+7 with each element having directed index change -1,-1 1,0 -1,-2 -2,-2 or 0,1.

The programs for A264675, there is no canonical definition to state claims against.
-/

/-! ## A264675.P13470506342949579867

`A264676(A055999(n+4))`
-/

namespace A264675.P13470506342949579867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (A055999 (n + 4)).toNat

end

end A264675.P13470506342949579867

/-! ## A264675.P6879467414439538143

`A264676(eq[4, A219347(n)])`
-/

namespace A264675.P6879467414439538143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264675.P6879467414439538143

/-! ## A264675.P14778280550612494721

`A264676(eq[5, A332954(n)])`
-/

namespace A264675.P14778280550612494721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264675.P14778280550612494721

/-! ## A264675.P14613343673194946152

`A264676(eq[6, A193592(n)])`
-/

namespace A264675.P14613343673194946152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264675.P14613343673194946152

/-! ## A264675.P3486948981522045074

`A264676(Δ[A023551(n+2)])`
-/

namespace A264675.P3486948981522045074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (f1 (n + 1) - f1 n).toNat

end

end A264675.P3486948981522045074

/-!
# A264677: Number of (2+1) X (n+1) arrays of permutations of 0..n*3+2 with each element having directed index change -1,-1 1,0 -1,-2 -2,-2 or 0,1.

The programs for A264677, there is no canonical definition to state claims against.
-/

/-! ## A264677.P11612495925526201842

`A264676(∑[n+1]+2)`
-/

namespace A264677.P11612495925526201842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264677.P11612495925526201842

/-! ## A264677.P11738734677272627064

`record[A264676(A106247(n)+1)]`
-/

namespace A264677.P11738734677272627064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (A106247 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264677.P11738734677272627064

/-! ## A264677.P15619049922949529577

`record[A264676(A256910(n)+2)]`
-/

namespace A264677.P15619049922949529577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (A256910 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264677.P15619049922949529577

/-! ## A264677.P8069115682275648047

`record[A010054(n)*A264676(n+2)]`
-/

namespace A264677.P8069115682275648047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A264676 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264677.P8069115682275648047

/-! ## A264677.P1251180018494062914

`record[A264676(n+3)/A094587(n)]`
-/

namespace A264677.P1251180018494062914
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264676 (n + 3) : ℚ) / (A094587 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264677.P1251180018494062914

/-!
# A264678: Number of (3+1) X (n+1) arrays of permutations of 0..n*4+3 with each element having directed index change -1,-1 1,0 -1,-2 -2,-2 or 0,1.

The programs for A264678, there is no canonical definition to state claims against.
-/

/-! ## A264678.P15908837761183527217

`A264676(∑[n+2]+4)`
-/

namespace A264678.P15908837761183527217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264678.P15908837761183527217

/-! ## A264678.P3498339409580038858

`ceil(acot(n))*A264676(A167614(n+1))`
-/

namespace A264678.P3498339409580038858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A264676 (A167614 (n + 1)).toNat

end

end A264678.P3498339409580038858

/-! ## A264678.P1005570228523021071

`record[A264676(A167614(abs(round(sqrt(2*(n+1)))²-(2*n+1))+1))]`
-/

namespace A264678.P1005570228523021071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (A167614 (|SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)| + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264678.P1005570228523021071

/-! ## A264678.P1850413440727550084

`A264676(A167614(n+1))+A011738(n)`
-/

namespace A264678.P1850413440727550084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (A167614 (n + 1)).toNat + A011738 n

end

end A264678.P1850413440727550084

/-! ## A264678.P6017635089877543820

`A264676(A167614(n+1))+A011745(n)`
-/

namespace A264678.P6017635089877543820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (A167614 (n + 1)).toNat + A011745 n

end

end A264678.P6017635089877543820

/-!
# A264679: Number of (4+1)X(n+1) arrays of permutations of 0..n*5+4 with each element having directed index change -1,-1 1,0 -1,-2 -2,-2 or 0,1.

The programs for A264679, there is no canonical definition to state claims against.
-/

/-! ## A264679.P4082204725273680293

`A264676(∑[n+3]+7)`
-/

namespace A264679.P4082204725273680293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A264679.P4082204725273680293

/-! ## A264679.P13183030560981962546

`A264676(A167614(n+2)+1)*A279185(n+1)`
-/

namespace A264679.P13183030560981962546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (A167614 (n + 2) + 1).toNat * A279185 (n + 1)

end

end A264679.P13183030560981962546

/-! ## A264679.P3225589957997942598

`or(A024692(2*n+3), A264676(A167614(n+2)+1))`
-/

namespace A264679.P3225589957997942598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A024692 (2 * n + 3)) (A264676 (A167614 (n + 2) + 1).toNat)

end

end A264679.P3225589957997942598

/-!
# A264680: Number of (5+1)X(n+1) arrays of permutations of 0..n*6+5 with each element having directed index change -1,-1 1,0 -1,-2 -2,-2 or 0,1.

The programs for A264680, there is no canonical definition to state claims against.
-/

/-! ## A264680.P5394717847369378664

`A264676(A167499(n+3))`
-/

namespace A264680.P5394717847369378664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (A167499 (n + 3)).toNat

end

end A264680.P5394717847369378664

/-! ## A264680.P3895274028696943145

`A264676(A155212(n)+13)`
-/

namespace A264680.P3895274028696943145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (A155212 n + 13).toNat

end

end A264680.P3895274028696943145

/-! ## A264680.P3210154593662967866

`A264676(A056000(n)+15)`
-/

namespace A264680.P3210154593662967866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (A056000 n + 15).toNat

end

end A264680.P3210154593662967866

/-! ## A264680.P3192053014486921857

`A264676(eq[7, A066657(n)])`
-/

namespace A264680.P3192053014486921857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264680.P3192053014486921857

/-! ## A264680.P1093623638627669284

`A264676(A000124(n+4)+4)`
-/

namespace A264680.P1093623638627669284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (A000124 (n + 4) + 4).toNat

end

end A264680.P1093623638627669284

/-!
# A264681: Number of (6+1)X(n+1) arrays of permutations of 0..n*7+6 with each element having directed index change -1,-1 1,0 -1,-2 -2,-2 or 0,1.

The programs for A264681, there is no canonical definition to state claims against.
-/

/-! ## A264681.P1674141167129345890

`A264676(A166136(n+4))`
-/

namespace A264681.P1674141167129345890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (A166136 (n + 4)).toNat

end

end A264681.P1674141167129345890

/-! ## A264681.P8687658638982486224

`A264676(A056115(n)+21)`
-/

namespace A264681.P8687658638982486224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (A056115 n + 21).toNat

end

end A264681.P8687658638982486224

/-! ## A264681.P14073736540981217066

`A264676(eq[6, A256910(n)])`
-/

namespace A264681.P14073736540981217066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264681.P14073736540981217066

/-! ## A264681.P7224558998725006943

`A264676(Δ[A264443(n)]+10)`
-/

namespace A264681.P7224558998725006943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (f1 (n + 1) - f1 n + 10).toNat

end

end A264681.P7224558998725006943

/-! ## A264681.P3590887080302463669

`A264676(A167499(n+4)+1)`
-/

namespace A264681.P3590887080302463669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (A167499 (n + 4) + 1).toNat

end

end A264681.P3590887080302463669

/-!
# A264682: Number of (7+1)X(n+1) arrays of permutations of 0..n*8+7 with each element having directed index change -1,-1 1,0 -1,-2 -2,-2 or 0,1.

The programs for A264682, there is no canonical definition to state claims against.
-/

/-! ## A264682.P1115836627212641017

`A264676(C(n+8, 2)-n)`
-/

namespace A264682.P1115836627212641017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (Nat.choose (n + 8) 2 - n)

end

end A264682.P1115836627212641017

/-! ## A264682.P7477359982695505354

`A264676(A056119(n)+28)`
-/

namespace A264682.P7477359982695505354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (A056119 n + 28).toNat

end

end A264682.P7477359982695505354

/-! ## A264682.P4159165333231307879

`A264676(eq[11, A066657(n)])`
-/

namespace A264682.P4159165333231307879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264682.P4159165333231307879

/-! ## A264682.P14093072867103622001

`A264676(A166136(n+5)+1)`
-/

namespace A264682.P14093072867103622001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (A166136 (n + 5) + 1).toNat

end

end A264682.P14093072867103622001

/-! ## A264682.P18337873876512589895

`A264676(A167499(n+5)+2)`
-/

namespace A264682.P18337873876512589895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (A167499 (n + 5) + 2).toNat

end

end A264682.P18337873876512589895

/-!
# A264683: Number of simple graphs on n nodes which satisfy the Ore criterion for Hamiltonicity.

The programs for A264683, there is no canonical definition to state claims against.
-/

/-! ## A264683.P1906764877006408313

`A243273(n+1)+A028310(A243274(n+1))-A264684(n+1)`
-/

namespace A264683.P1906764877006408313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243273 (n + 1) + (A028310 (A243274 (n + 1)).toNat - A264684 (n + 1))

end

end A264683.P1906764877006408313

/-! ## A264683.P15825081347845583224

`A028310(A003216(n+1)-A264684(n+1))`
-/

namespace A264683.P15825081347845583224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A003216 (n + 1) - A264684 (n + 1)).toNat

end

end A264683.P15825081347845583224

/-! ## A264683.P6213566437475603520

`A028310(A001349(n+1)-A126149(n+1)-A264684(n+1))`
-/

namespace A264683.P6213566437475603520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A001349 (n + 1) - A126149 (n + 1) - A264684 (n + 1)).toNat

end

end A264683.P6213566437475603520

/-! ## A264683.P12451221730789306204

`A028310(A000088(n+1)-A246446(n+1)-A264684(n+1))`
-/

namespace A264683.P12451221730789306204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A000088 (n + 1) - A246446 (n + 1) - A264684 (n + 1)).toNat

end

end A264683.P12451221730789306204

/-!
# A264684: Number of simple Hamiltonian graphs on n nodes which do not satisfy the Ore criterion for Hamiltonicity.

The programs for A264684, there is no canonical definition to state claims against.
-/

/-! ## A264684.P432502784701516318

`(A003216(n+1)-A264683(n+1))%A006125(n)`
-/

namespace A264684.P432502784701516318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003216 (n + 1) - A264683 (n + 1)) (A006125 n)

end

end A264684.P432502784701516318

/-! ## A264684.P9999686987070858024

`A243273(n+1)+A028310(A243274(n+1))-A264683(n+1)`
-/

namespace A264684.P9999686987070858024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243273 (n + 1) + (A028310 (A243274 (n + 1)).toNat - A264683 (n + 1))

end

end A264684.P9999686987070858024

/-! ## A264684.P17876809984097248346

`A028310(A003216(n+1))-A264683(n+1)`
-/

namespace A264684.P17876809984097248346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A003216 (n + 1)).toNat - A264683 (n + 1)

end

end A264684.P17876809984097248346

/-! ## A264684.P3900742553195462499

`A028310(A001349(n+1)-A126149(n+1))-A264683(n+1)`
-/

namespace A264684.P3900742553195462499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A001349 (n + 1) - A126149 (n + 1)).toNat - A264683 (n + 1)

end

end A264684.P3900742553195462499

/-!
# A264685: Expansion of Product_{k>=1} (1 + x^k)/(1 - 2*x^k).

The programs for A264685, there is no canonical definition to state claims against.
-/

/-! ## A264685.P1927379923718956471

`A353169(n)+A163352(A088808(n))`
-/

namespace A264685.P1927379923718956471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353169 n + A163352 (A088808 n).toNat

end

end A264685.P1927379923718956471

/-! ## A264685.P5892139665808205243

`∑[A000006(A098619(n))]`
-/

namespace A264685.P5892139665808205243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A098619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264685.P5892139665808205243

/-! ## A264685.P9847189101749478757

`∑[A005041(A151217(n))]`
-/

namespace A264685.P9847189101749478757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A151217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264685.P9847189101749478757

/-!
# A264686: Expansion of Product_{k>=1} (1 + 2*x^k)/(1 - x^k).

The programs for A264686, there is no canonical definition to state claims against.
-/

/-! ## A264686.P15171169885933247943

`A321884(∑[n+4]+2)`
-/

namespace A264686.P15171169885933247943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321884 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264686.P15171169885933247943

/-! ## A264686.P2547198000227630281

`record[A321884(abs(A046691(n)))]`
-/

namespace A264686.P2547198000227630281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321884 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264686.P2547198000227630281

/-! ## A264686.P9359231192086536891

`lcm((-1)^n, A321884(A046691(n+2)))`
-/

namespace A264686.P9359231192086536891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A321884 (A046691 (n + 2)).toNat)

end

end A264686.P9359231192086536891

/-! ## A264686.P3426098761814984306

`A321884(A103517(n)+A000124(n+2))+A000007(n)`
-/

namespace A264686.P3426098761814984306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321884 (A103517 n + A000124 (n + 2)).toNat + A000007 n

end

end A264686.P3426098761814984306

/-! ## A264686.P6355428191498820607

`record[A321884(A038722(A167499(n)))]`
-/

namespace A264686.P6355428191498820607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321884 (A038722 (A167499 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264686.P6355428191498820607

/-!
# A264687: a(n) = 2^n - A006951(n).

The programs for A264687, there is no canonical definition to state claims against.
-/

/-! ## A264687.P3868941173221190108

`2^n-A006951(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A264687.P3868941173221190108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A006951 n

end

end A264687.P3868941173221190108

/-! ## A264687.P11758982106079688560

`and(-A006951(n), A000225(n))`
-/

namespace A264687.P11758982106079688560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A006951 n) (A000225 n)

end

end A264687.P11758982106079688560

/-! ## A264687.P11597863043422044982

`(A000079(n)-A006951(n))%A000079(n)`
-/

namespace A264687.P11597863043422044982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n - A006951 n) (A000079 n)

end

end A264687.P11597863043422044982

/-! ## A264687.P2836841899311424619

`A000079(n)-A006951(n)-and(2, A061858(n))`
-/

namespace A264687.P2836841899311424619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A006951 n - Int.land 2 (A061858 n)

end

end A264687.P2836841899311424619

/-! ## A264687.P10132979762183985612

`∑[A011782(n)]-A218698(∑[n])`
-/

namespace A264687.P10132979762183985612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A218698 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A264687.P10132979762183985612

/-! ## A264687.P11525118791289739465

`A099627(∑[n])-A218698(∑[n])`
-/

namespace A264687.P11525118791289739465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 (∑ j ∈ Finset.range (n + 1), f1 j) - A218698 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A264687.P11525118791289739465

/-! ## A264687.P3308484615628144546

`Δ[A000918(n)]-A218698(∑[n])`
-/

namespace A264687.P3308484615628144546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A218698 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A264687.P3308484615628144546

/-! ## A264687.P8566061248031184480

`A000079(n)-A218698(A000217(n))`
-/

namespace A264687.P8566061248031184480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A218698 (A000217 n).toNat

end

end A264687.P8566061248031184480

/-! ## A264687.P1587501140138577081

`A011782(n+1)-A218698(A000217(n))`
-/

namespace A264687.P1587501140138577081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) - A218698 (A000217 n).toNat

end

end A264687.P1587501140138577081

/-! ## A264687.P12746177044431557279

`A131577(n+1)-A218698(A000217(n))`
-/

namespace A264687.P12746177044431557279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 1) - A218698 (A000217 n).toNat

end

end A264687.P12746177044431557279

/-!
# A264689: Minimum of the Kamae-Xue measure of randomness for binary strings of length n.

The programs for A264689, there is no canonical definition to state claims against.
-/

/-! ## A264689.P11557641575453466466

`∑[∑[2*A105553(n+1)+1]]`
-/

namespace A264689.P11557641575453466466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105553 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264689.P11557641575453466466

/-! ## A264689.P5017969083320025660

`∑[∑[2*A103318(n+1)-1]]`
-/

namespace A264689.P5017969083320025660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103318 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264689.P5017969083320025660

/-! ## A264689.P14014449818314692572

`∑[∑[A072219(A033677(n+1))]]`
-/

namespace A264689.P14014449818314692572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072219 (A033677 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264689.P14014449818314692572

/-! ## A264689.P16323405729939507283

`∑[∑[A072219(A034699(n+1))]]`
-/

namespace A264689.P16323405729939507283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072219 (A034699 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264689.P16323405729939507283

/-! ## A264689.P230738230557052428

`∑[∑[A072219(A140271(n+1))]]`
-/

namespace A264689.P230738230557052428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072219 (A140271 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264689.P230738230557052428

/-!
# A264690: Number of nX2 arrays of permutations of 0..n*2-1 with rows nondecreasing modulo 3 and columns nondecreasing modulo 5.

The programs for A264690, there is no canonical definition to state claims against.
-/

/-! ## A264690.P13891675070854989499

`A264692(∑[n+2])`
-/

namespace A264690.P13891675070854989499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264692 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264690.P13891675070854989499

/-! ## A264690.P4654413771764913389

`A264692(A101881(2*n+1))*A264692(A264692(2*n+1))`
-/

namespace A264690.P4654413771764913389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264692 (A101881 (2 * n + 1)).toNat * A264692 (A264692 (2 * n + 1)).toNat

end

end A264690.P4654413771764913389

/-!
# A264691: Number of n X 3 arrays of permutations of 0..n*3-1 with rows nondecreasing modulo 3 and columns nondecreasing modulo 5.

The programs for A264691, there is no canonical definition to state claims against.
-/

/-! ## A264691.P2375570064894199214

`A264692(∑[n+3]+1)`
-/

namespace A264691.P2375570064894199214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264692 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264691.P2375570064894199214

/-! ## A264691.P4208707022318556682

`record[A264692(A101881(n))]`
-/

namespace A264691.P4208707022318556682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264692 (A101881 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264691.P4208707022318556682

/-!
# A264692: T(n,k)=Number of nXk arrays of permutations of 0..n*k-1 with rows nondecreasing modulo 3 and columns nondecreasing modulo 5.

The programs for A264692, there is no canonical definition to state claims against.
-/

/-! ## A264692.P16242377702965788456

`A117332(A264643(n+1))`
-/

namespace A264692.P16242377702965788456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117332 (A264643 (n + 1)).toNat

end

end A264692.P16242377702965788456

/-!
# A264693: Number of 2Xn arrays of permutations of 0..n*2-1 with rows nondecreasing modulo 3 and columns nondecreasing modulo 5.

The programs for A264693, there is no canonical definition to state claims against.
-/

/-! ## A264693.P16330836038872634212

`A264692(∑[n+1]+2)`
-/

namespace A264693.P16330836038872634212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264692 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264693.P16330836038872634212

/-!
# A264694: Number of 3Xn arrays of permutations of 0..n*3-1 with rows nondecreasing modulo 3 and columns nondecreasing modulo 5.

The programs for A264694, there is no canonical definition to state claims against.
-/

/-! ## A264694.P8474692545146572113

`A264692(∑[n+2]+4)`
-/

namespace A264694.P8474692545146572113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264692 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264694.P8474692545146572113

/-! ## A264694.P15730157572988513168

`record[A010054(n)*A264692(n+3)]`
-/

namespace A264694.P15730157572988513168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A264692 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264694.P15730157572988513168

/-! ## A264694.P16072096891915323359

`lcm((-1)^n, A264692(A167614(n+1)))`
-/

namespace A264694.P16072096891915323359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A264692 (A167614 (n + 1)).toNat)

end

end A264694.P16072096891915323359

/-!
# A264696: Number of nX2 arrays of permutations of 0..n*2-1 with rows nondecreasing modulo 4 and columns nondecreasing modulo 5.

The programs for A264696, there is no canonical definition to state claims against.
-/

/-! ## A264696.P18431035699788754975

`A264698(∑[n+2])`
-/

namespace A264696.P18431035699788754975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264698 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264696.P18431035699788754975

/-! ## A264696.P11198021844619295026

`record[A264698(∑[A007879(n)])]`
-/

namespace A264696.P11198021844619295026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007879 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264698 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264696.P11198021844619295026

/-! ## A264696.P9468436171146557507

`record[A264698(∑[A152271(n)])]`
-/

namespace A264696.P9468436171146557507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264698 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264696.P9468436171146557507

/-!
# A264697: Number of nX3 arrays of permutations of 0..n*3-1 with rows nondecreasing modulo 4 and columns nondecreasing modulo 5.

The programs for A264697, there is no canonical definition to state claims against.
-/

/-! ## A264697.P17411536525358997824

`A264698(∑[n+3]+1)`
-/

namespace A264697.P17411536525358997824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264698 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264697.P17411536525358997824

/-! ## A264697.P14604765982965636560

`record[A264698(gcd(n, A111941(n+1)))]`
-/

namespace A264697.P14604765982965636560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264698 (Int.gcd (n : ℤ) (A111941 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264697.P14604765982965636560

/-!
# A264699: Number of 2Xn arrays of permutations of 0..n*2-1 with rows nondecreasing modulo 4 and columns nondecreasing modulo 5.

The programs for A264699, there is no canonical definition to state claims against.
-/

/-! ## A264699.P11540740186221743098

`A264698(∑[n+1]+2)`
-/

namespace A264699.P11540740186221743098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264698 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264699.P11540740186221743098

/-! ## A264699.P4074942651408032301

`record[A264698(n+1)/A287215(n)]`
-/

namespace A264699.P4074942651408032301
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264698 (n + 1) : ℚ) / (A287215 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264699.P4074942651408032301

/-! ## A264699.P2536046311135174453

`record[A264698(n+1)/A294609(n)]`
-/

namespace A264699.P2536046311135174453
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264698 (n + 1) : ℚ) / (A294609 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264699.P2536046311135174453

/-! ## A264699.P690122179626126522

`record[A264698(n+1)/A294758(n)]`
-/

namespace A264699.P690122179626126522
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264698 (n + 1) : ℚ) / (A294758 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264699.P690122179626126522

