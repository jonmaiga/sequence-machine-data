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
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
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
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B005.C000
import Seq.B005.C001
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
# A297000: Numbers k such that A296992(k) = 1.

The programs for A297000, there is no canonical definition to state claims against.
-/

/-! ## A297000.P7922347298442937439

`eq[1, A296992(n+2)]+2`
-/

namespace A297000.P7922347298442937439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296992 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A297000.P7922347298442937439

/-! ## A297000.P250779687394513676

`A009056(eq[1, A296992(n+2)])`
-/

namespace A297000.P250779687394513676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296992 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297000.P250779687394513676

/-! ## A297000.P150810424126479752

`A009056(eq[1, val(abs(A289833(n+1)), n+2)])`
-/

namespace A297000.P150810424126479752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation |A289833 (n + 1)|.toNat (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A297000.P150810424126479752

/-! ## A297000.P16409813296343901032

`A009056(eq[1, val(abs(A000594(n+2)), n+2)])`
-/

namespace A297000.P16409813296343901032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation |A000594 (n + 2)|.toNat (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A297000.P16409813296343901032

/-! ## A297000.P3697354757281629660

`eq[1, A296992(A233583(n+1))]`
-/

namespace A297000.P3697354757281629660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296992 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A297000.P3697354757281629660

/-!
# A297001: Numbers k such that A296992(k) = 2.

The programs for A297001, there is no canonical definition to state claims against.
-/

/-! ## A297001.P7563547211243236968

`eq[2, A296992(n+2)]+2`
-/

namespace A297001.P7563547211243236968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296992 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A297001.P7563547211243236968

/-! ## A297001.P7780271358389551288

`A009056(eq[2, A296992(n+2)])`
-/

namespace A297001.P7780271358389551288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296992 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297001.P7780271358389551288

/-! ## A297001.P17855467953002485973

`∩[A296991(n+1), comp[A296993(n+1)]]`
-/

namespace A297001.P17855467953002485973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296991 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296993 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A297001.P17855467953002485973

/-! ## A297001.P5876840092313810231

`eq[2, A296992(A233583(n+1))]`
-/

namespace A297001.P5876840092313810231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296992 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A297001.P5876840092313810231

/-!
# A297002: Completely multiplicative with a(prime(k)) = prime(2 * k) (where prime(k) denotes the k-th prime).

The programs for A297002, there is no canonical definition to state claims against.
-/

/-! ## A297002.P4141027963059033056

`∏{d}[n+1, A045974(A014963(#))]`
-/

namespace A297002.P4141027963059033056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A045974 (A014963 d).toNat

end

end A297002.P4141027963059033056

/-! ## A297002.P14882179941645123521

`A061898(A319525(n+1))`
-/

namespace A297002.P14882179941645123521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061898 (A319525 (n + 1)).toNat

end

end A297002.P14882179941645123521

/-! ## A297002.P6292748134536146778

`A348994(A319525(n+1)%A004802(n+1))`
-/

namespace A297002.P6292748134536146778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348994 (Int.tmod (A319525 (n + 1)) (A004802 (n + 1))).toNat

end

end A297002.P6292748134536146778

/-! ## A297002.P12636311213353529244

`A348994(A319525(n+1))%A090090(n+1)`
-/

namespace A297002.P12636311213353529244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348994 (A319525 (n + 1)).toNat) (A090090 (n + 1))

end

end A297002.P12636311213353529244

/-! ## A297002.P8921498461913906622

`A003961(A319525(2*(n+1))/2)`
-/

namespace A297002.P8921498461913906622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (SequenceMachineLib.roundAway ((A319525 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A297002.P8921498461913906622

/-! ## A297002.P5843558046050739601

`gcd(A000038(n), A003961(A319525(n+1)))`
-/

namespace A297002.P5843558046050739601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A003961 (A319525 (n + 1)).toNat)

end

end A297002.P5843558046050739601

/-! ## A297002.P1882757288003281349

`A003961(A057427(n+1)*A319525(n+1))`
-/

namespace A297002.P1882757288003281349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A057427 (n + 1) * A319525 (n + 1)).toNat

end

end A297002.P1882757288003281349

/-! ## A297002.P7623064548162260609

`A003961(gcd(A319525(2*(n+1)), A319525(n+1)))`
-/

namespace A297002.P7623064548162260609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (Int.gcd (A319525 (2 * (n + 1))) (A319525 (n + 1)))

end

end A297002.P7623064548162260609

/-! ## A297002.P6622223940596713162

`A352001(∑[n+1]+2)`
-/

namespace A297002.P6622223940596713162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352001 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297002.P6622223940596713162

/-! ## A297002.P16651381040703740924

`or(1, A352001(A133263(n+1)))`
-/

namespace A297002.P16651381040703740924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A352001 (A133263 (n + 1)).toNat)

end

end A297002.P16651381040703740924

/-! ## A297002.P10244195586146140057

`∑{d}[A352001(A133263(n+1)), A000010(#)]`
-/

namespace A297002.P10244195586146140057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352001 (A133263 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A297002.P10244195586146140057

/-! ## A297002.P7819429188167891782

`A352001(A133263(n+1))+A000007(n+1)`
-/

namespace A297002.P7819429188167891782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352001 (A133263 (n + 1)).toNat + A000007 (n + 1)

end

end A297002.P7819429188167891782

/-! ## A297002.P9364735773870618948

`A000034(2*n)*A352001(A133263(n+1))`
-/

namespace A297002.P9364735773870618948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A352001 (A133263 (n + 1)).toNat

end

end A297002.P9364735773870618948

/-! ## A297002.P15442815364024425676

`A007318(C(2, n))*A352001(A133263(n+1))`
-/

namespace A297002.P15442815364024425676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A352001 (A133263 (n + 1)).toNat

end

end A297002.P15442815364024425676

/-! ## A297002.P6547966871269896496

`A352001(A133263(n+1))%A000040(n+1)²`
-/

namespace A297002.P6547966871269896496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352001 (A133263 (n + 1)).toNat) (A000040 (n + 1) ^ 2)

end

end A297002.P6547966871269896496

/-! ## A297002.P14045461622136589316

`A352001(A133263(n+1))+A008683(16*(n+1))`
-/

namespace A297002.P14045461622136589316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352001 (A133263 (n + 1)).toNat + A008683 (16 * (n + 1))

end

end A297002.P14045461622136589316

/-! ## A297002.P7843413551239763443

`A000041(C(2, 2*n))*A352001(A133263(n+1))`
-/

namespace A297002.P7843413551239763443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (2 * n)) * A352001 (A133263 (n + 1)).toNat

end

end A297002.P7843413551239763443

/-! ## A297002.P14865036818453502182

`gcd(n, A020639(n+1))*A352001(A133263(n+1))`
-/

namespace A297002.P14865036818453502182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A020639 (n + 1)) : ℤ) * A352001 (A133263 (n + 1)).toNat

end

end A297002.P14865036818453502182

/-! ## A297002.P6149737529566724195

`A007318(abs((-1)^n))*A352001(A133263(n+1))`
-/

namespace A297002.P6149737529566724195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 |(-1) ^ n|.toNat * A352001 (A133263 (n + 1)).toNat

end

end A297002.P6149737529566724195

/-!
# A297005: Values of n for which pi_{3,2}(p_n) - pi_{3,1}(p_n) = -1, where p_n is the n-th prime and pi_{m,a}(x) is the number of primes <= x which are congruent to a (mod m).

The programs for A297005, there is no canonical definition to state claims against.
-/

/-! ## A297005.P5466085968607967320

`A096630(A084589(n+1)+A004523(n))`
-/

namespace A297005.P5466085968607967320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096630 (A084589 (n + 1) + A004523 n).toNat

end

end A297005.P5466085968607967320

/-!
# A297006: Primes p for which pi_{3,2}(p) - pi_{3,1}(p) = -1, where pi_{m,a}(x) is the number of primes <= x which are congruent to a (mod m).

The programs for A297006, there is no canonical definition to state claims against.
-/

/-! ## A297006.P1325711957257704625

`A306891(∑[A306892(comp[2*n+3])%3])`
-/

namespace A297006.P1325711957257704625
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306892 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306891 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A297006.P1325711957257704625

/-!
# A297007: Number of edge covers in the n-barbell graph.

The programs for A297007, there is no canonical definition to state claims against.
-/

/-! ## A297007.P1708941715582377810

`A006129(n+1)²+(A006129(n+1)+A006129(n))²`
-/

namespace A297007.P1708941715582377810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006129 (n + 1) ^ 2 + (A006129 (n + 1) + A006129 n) ^ 2

end

end A297007.P1708941715582377810

/-!
# A297009: Expansion of e.g.f. arcsin(x*exp(x)).

The programs for A297009, there is no canonical definition to state claims against.
-/

/-! ## A297009.P4242734012408130110

`and(A047295(A144690(n)), A144691(n))`
-/

namespace A297009.P4242734012408130110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047295 (A144690 n).toNat) (A144691 n)

end

end A297009.P4242734012408130110

/-! ## A297009.P17350916614213298031

`and(A001065(A135068(n+1)), A144691(n))`
-/

namespace A297009.P17350916614213298031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001065 (A135068 (n + 1)).toNat) (A144691 n)

end

end A297009.P17350916614213298031

/-! ## A297009.P15888571323013578960

`and(A047295(A144690(n)), A135069(n+1))`
-/

namespace A297009.P15888571323013578960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047295 (A144690 n).toNat) (A135069 (n + 1))

end

end A297009.P15888571323013578960

/-!
# A297011: Solution of the complementary equation a(n) = 2*a(n-1) + a(n-2) - b(n), where a(0) = 3, a(1) = 5, b(0) = 1, b(1) = 2, b(2) = 4, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A297011, there is no canonical definition to state claims against.
-/

/-! ## A297011.P6098581205017708104

`A020915(A048739(n)+n+3)`
-/

namespace A297011.P6098581205017708104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (A048739 n + (n : ℤ) + 3).toNat

end

end A297011.P6098581205017708104

/-! ## A297011.P15669456040925751032

`A248231(A063957(a(n-1)))-n` with `a(0)=3`
-/

namespace A297011.P15669456040925751032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A248231 (A063957 (a (n - 1)).toNat).toNat - (n : ℤ)

end

end A297011.P15669456040925751032

/-! ## A297011.P10411827703474364825

`A360925(a(n-1))-(n+1)` with `a(0)=3`
-/

namespace A297011.P10411827703474364825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A360925 (a (n - 1)).toNat - (n + 1 : ℤ)

end

end A297011.P10411827703474364825

/-!
# A297014: Number of n X n 0..1 arrays with each 1 adjacent to 3, 4 or 6 king-move neighboring 1's.

The programs for A297014, there is no canonical definition to state claims against.
-/

/-! ## A297014.P15946067881395407395

`A297020(∑[4*n]+1)`
-/

namespace A297014.P15946067881395407395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297020 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297014.P15946067881395407395

/-! ## A297014.P14694272061874334529

`A297020(A001844(n))+char[9]`
-/

namespace A297014.P14694272061874334529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297020 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A297014.P14694272061874334529

/-! ## A297014.P17397730072016035795

`record[A003982(n)*A297020(n+1)]`
-/

namespace A297014.P17397730072016035795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A297020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297014.P17397730072016035795

/-! ## A297014.P5064682206624870180

`record[A214505(n)*A297020(n+1)]`
-/

namespace A297014.P5064682206624870180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A297020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297014.P5064682206624870180

/-! ## A297014.P2242151288247874055

`A332281(n)+A297020(A001844(n))`
-/

namespace A297014.P2242151288247874055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332281 n + A297020 (A001844 n).toNat

end

end A297014.P2242151288247874055

/-!
# A297015: Number of nX3 0..1 arrays with each 1 adjacent to 3, 4 or 6 king-move neighboring 1s.

The programs for A297015, there is no canonical definition to state claims against.
-/

/-! ## A297015.P3798201397295290228

`A297020(∑[n+2]+4)`
-/

namespace A297015.P3798201397295290228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297020 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297015.P3798201397295290228

/-! ## A297015.P11771952651653865436

`record[A297020(A133825(n)+3)]`
-/

namespace A297015.P11771952651653865436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297020 (A133825 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297015.P11771952651653865436

/-! ## A297015.P9744001629474771711

`A297020(A046691(n)+7)+char[17]`
-/

namespace A297015.P9744001629474771711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297020 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A297015.P9744001629474771711

/-! ## A297015.P15032861253648590164

`record[gcd(A208459(n), A297020(n+1))]`
-/

namespace A297015.P15032861253648590164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A208459 n) (A297020 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297015.P15032861253648590164

/-! ## A297015.P12633024182324199386

`record[gcd(A169603(n), A297020(n+3))]`
-/

namespace A297015.P12633024182324199386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A169603 n) (A297020 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297015.P12633024182324199386

/-!
# A297016: Number of nX4 0..1 arrays with each 1 adjacent to 3, 4 or 6 king-move neighboring 1s.

The programs for A297016, there is no canonical definition to state claims against.
-/

/-! ## A297016.P15693643756549478237

`A297020(∑[n+3]+7)`
-/

namespace A297016.P15693643756549478237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297020 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A297016.P15693643756549478237

/-! ## A297016.P14968861483732137747

`A297020(A141214(n)+7)%∏[n+2]`
-/

namespace A297016.P14968861483732137747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297020 (A141214 n + 7).toNat) ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A297016.P14968861483732137747

/-! ## A297016.P626633657502533361

`A297020(A141214(n)+7)+A025444(n)`
-/

namespace A297016.P626633657502533361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297020 (A141214 n + 7).toNat + A025444 n

end

end A297016.P626633657502533361

/-! ## A297016.P4371584742811622533

`A007318(A112367(n))*A297020(A141214(n)+7)`
-/

namespace A297016.P4371584742811622533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A112367 n).toNat * A297020 (A141214 n + 7).toNat

end

end A297016.P4371584742811622533

/-! ## A297016.P5399327357914328547

`A297020(A141214(n+1))%A137215(n)`
-/

namespace A297016.P5399327357914328547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297020 (A141214 (n + 1)).toNat) (A137215 n)

end

end A297016.P5399327357914328547

/-!
# A297017: Number of nX5 0..1 arrays with each 1 adjacent to 3, 4 or 6 king-move neighboring 1s.

The programs for A297017, there is no canonical definition to state claims against.
-/

/-! ## A297017.P6638735692765337533

`A297020(A374005(n+1))`
-/

namespace A297017.P6638735692765337533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297020 (A374005 (n + 1)).toNat

end

end A297017.P6638735692765337533

/-! ## A297017.P14569060119600139612

`A297020(A167499(n+3))`
-/

namespace A297017.P14569060119600139612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297020 (A167499 (n + 3)).toNat

end

end A297017.P14569060119600139612

/-! ## A297017.P18211654207789580303

`A297020(A155212(n)+13)`
-/

namespace A297017.P18211654207789580303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297020 (A155212 n + 13).toNat

end

end A297017.P18211654207789580303

/-! ## A297017.P3999723750157453880

`A297020(A056000(n)+15)`
-/

namespace A297017.P3999723750157453880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297020 (A056000 n + 15).toNat

end

end A297017.P3999723750157453880

/-! ## A297017.P5231543207338247910

`A297020(eq[7, A066657(n)])`
-/

namespace A297017.P5231543207338247910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297020 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297017.P5231543207338247910

/-!
# A297018: Number of n X 6 0..1 arrays with each 1 adjacent to 3, 4 or 6 king-move neighboring 1's.

The programs for A297018, there is no canonical definition to state claims against.
-/

/-! ## A297018.P16663180527078516351

`A297020(A374007(n+1))`
-/

namespace A297018.P16663180527078516351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297020 (A374007 (n + 1)).toNat

end

end A297018.P16663180527078516351

/-! ## A297018.P596159129993745939

`A297020(A000124(n+5)+5)`
-/

namespace A297018.P596159129993745939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297020 (A000124 (n + 5) + 5).toNat

end

end A297018.P596159129993745939

/-! ## A297018.P16815338907195734131

`A297020(A000217(n+5)+6)`
-/

namespace A297018.P16815338907195734131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297020 (A000217 (n + 5) + 6).toNat

end

end A297018.P16815338907195734131

/-! ## A297018.P10163304993227048575

`A297020(A046691(n+3)+10)`
-/

namespace A297018.P10163304993227048575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297020 (A046691 (n + 3) + 10).toNat

end

end A297018.P10163304993227048575

/-! ## A297018.P10906944511151891877

`A297020(A055999(n+2)+12)`
-/

namespace A297018.P10906944511151891877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297020 (A055999 (n + 2) + 12).toNat

end

end A297018.P10906944511151891877

/-!
# A297019: Number of nX7 0..1 arrays with each 1 adjacent to 3, 4 or 6 king-move neighboring 1s.

The programs for A297019, there is no canonical definition to state claims against.
-/

/-! ## A297019.P14897645133672868549

`A297020(A374008(n+1))`
-/

namespace A297019.P14897645133672868549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297020 (A374008 (n + 1)).toNat

end

end A297019.P14897645133672868549

/-! ## A297019.P9924626791627519134

`A297020(A056119(n)+28)`
-/

namespace A297019.P9924626791627519134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297020 (A056119 n + 28).toNat

end

end A297019.P9924626791627519134

/-! ## A297019.P9334499678712188873

`A297020(eq[11, A066657(n)])`
-/

namespace A297019.P9334499678712188873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297020 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297019.P9334499678712188873

/-! ## A297019.P15329348241958508000

`A297020(A167499(n+5)+2)`
-/

namespace A297019.P15329348241958508000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297020 (A167499 (n + 5) + 2).toNat

end

end A297019.P15329348241958508000

/-! ## A297019.P15436169440114115679

`A297020(A000124(n+6)+6)`
-/

namespace A297019.P15436169440114115679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297020 (A000124 (n + 6) + 6).toNat

end

end A297019.P15436169440114115679

/-!
# A297020: T(n,k)=Number of nXk 0..1 arrays with each 1 adjacent to 3, 4 or 6 king-move neighboring 1s.

The programs for A297020, there is no canonical definition to state claims against.
-/

/-! ## A297020.P4348837159880468214

`A120887(A117401(n))%23`
-/

namespace A297020.P4348837159880468214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120887 (A117401 n).toNat) 23

end

end A297020.P4348837159880468214

/-! ## A297020.P5228159650379858721

`A135772(A077028(n)%A352224(n+1))`
-/

namespace A297020.P5228159650379858721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135772 (Int.tmod (A077028 n) (A352224 (n + 1))).toNat

end

end A297020.P5228159650379858721

/-! ## A297020.P14141874095761733516

`A135772(A077028(n))%A325457(3*n+2)`
-/

namespace A297020.P14141874095761733516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135772 (A077028 n).toNat) (A325457 (3 * n + 2))

end

end A297020.P14141874095761733516

/-! ## A297020.P790665905340653278

`A384663(A051137(n)%A358137(3*n+5))`
-/

namespace A297020.P790665905340653278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384663 (Int.tmod (A051137 n) (A358137 (3 * n + 5))).toNat

end

end A297020.P790665905340653278

/-! ## A297020.P197829235725446097

`A171164(A196416(n)%A050964(n+1))`
-/

namespace A297020.P197829235725446097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171164 (Int.tmod (A196416 n) (A050964 (n + 1))).toNat

end

end A297020.P197829235725446097

/-!
# A297022: A permutation of the natural numbers: a(n) = A067565(A018252(n)).

The programs for A297022, there is no canonical definition to state claims against.
-/

/-! ## A297022.P12928397278950755964

`A067565(A018252(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A297022.P12928397278950755964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067565 (A018252 (n + 1)).toNat

end

end A297022.P12928397278950755964

/-! ## A297022.P6480659982951821646

`A067565(A141468(n+2))`
-/

namespace A297022.P6480659982951821646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067565 (A141468 (n + 2)).toNat

end

end A297022.P6480659982951821646

/-! ## A297022.P17818969667967913693

`A067565(eq[1, A049076(n+1)]+1)`
-/

namespace A297022.P17818969667967913693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067565 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A297022.P17818969667967913693

/-! ## A297022.P16460370378693047380

`A067565(A171523(n+1)/(n+1))`
-/

namespace A297022.P16460370378693047380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067565 (SequenceMachineLib.roundAway ((A171523 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A297022.P16460370378693047380

/-! ## A297022.P13947591072570618176

`A067565(record[(n+1)*(1-A010051(n+1))])`
-/

namespace A297022.P13947591072570618176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A010051 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067565 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A297022.P13947591072570618176

/-! ## A297022.P10606767271099388933

`A067565(record[(n+1)%(A067565(n+1)+n+1)])`
-/

namespace A297022.P10606767271099388933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A067565 (n + 1) + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067565 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A297022.P10606767271099388933

/-! ## A297022.P380871282641762411

`A067565(A297104(A067565(A102615(n+1))))`
-/

namespace A297022.P380871282641762411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067565 (A297104 (A067565 (A102615 (n + 1)).toNat).toNat).toNat

end

end A297022.P380871282641762411

/-!
# A297024: Sum of the smaller parts of the partitions of n into two parts such that the smaller part does not divide the larger.

The programs for A297024, the canonical program `A297024.P11946772240064417738` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297024 has offset 1).

The definition of A297024 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297024.P11946772240064417738

`∑[∑[n]%(n+1)]-A001065(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A297024

/-- `∑[∑[n]%(n+1)]-A001065(n+1)` -/
def P11946772240064417738.Spec : Prop :=
  ∀ n, P11946772240064417738.a n = A297024 (n + 1)

theorem P11946772240064417738.correct : P11946772240064417738.Spec := by
  intro n
  simp only [A297024, Nat.add_sub_cancel]

end A297024

/-! ## A297024.P5100502819623296108

`∑[∑[A001057(n)]]-(∑{d}[n+1, #]-(n+1))`
-/

namespace A297024.P5100502819623296108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ) - (n + 1 : ℤ))

end

end A297024.P5100502819623296108

namespace A297024

/-- `∑[∑[A001057(n)]]-(∑{d}[n+1, #]-(n+1))` -/
def P5100502819623296108.Spec : Prop :=
  ∀ n, P5100502819623296108.a n = A297024 (n + 1)

end A297024

/-! ## A297024.P8865059684355576845

`A024816(n+1)-A211539(n)`
-/

namespace A297024.P8865059684355576845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 1) - A211539 n

end

end A297024.P8865059684355576845

namespace A297024

/-- `A024816(n+1)-A211539(n)` -/
def P8865059684355576845.Spec : Prop :=
  ∀ n, P8865059684355576845.a n = A297024 (n + 1)

end A297024

/-! ## A297024.P1311511856642992989

`A235799(n+1)-A210978(n)`
-/

namespace A297024.P1311511856642992989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235799 (n + 1) - A210978 n

end

end A297024.P1311511856642992989

namespace A297024

/-- `A235799(n+1)-A210978(n)` -/
def P1311511856642992989.Spec : Prop :=
  ∀ n, P1311511856642992989.a n = A297024 (n + 1)

end A297024

/-! ## A297024.P18145369882123848974

`A165157(n+1)-A000203(n+1)`
-/

namespace A297024.P18145369882123848974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165157 (n + 1) - A000203 (n + 1)

end

end A297024.P18145369882123848974

namespace A297024

/-- `A165157(n+1)-A000203(n+1)` -/
def P18145369882123848974.Spec : Prop :=
  ∀ n, P18145369882123848974.a n = A297024 (n + 1)

end A297024

/-! ## A297024.P8230775453703195349

`∑[∑[A001057(n)]]-A001065(n+1)`
-/

namespace A297024.P8230775453703195349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001065 (n + 1)

end

end A297024.P8230775453703195349

namespace A297024

/-- `∑[∑[A001057(n)]]-A001065(n+1)` -/
def P8230775453703195349.Spec : Prop :=
  ∀ n, P8230775453703195349.a n = A297024 (n + 1)

end A297024

/-! ## A297024.P2903872593661410761

`A000217(∑[n%2])-A001065(n+1)`
-/

namespace A297024.P2903872593661410761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j) - A001065 (n + 1)

end

end A297024.P2903872593661410761

namespace A297024

/-- `A000217(∑[n%2])-A001065(n+1)` -/
def P2903872593661410761.Spec : Prop :=
  ∀ n, P2903872593661410761.a n = A297024 (n + 1)

end A297024

/-! ## A297024.P10910445304332972141

`A165157(n+1)-A245092(2*n+1)`
-/

namespace A297024.P10910445304332972141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165157 (n + 1) - A245092 (2 * n + 1)

end

end A297024.P10910445304332972141

namespace A297024

/-- `A165157(n+1)-A245092(2*n+1)` -/
def P10910445304332972141.Spec : Prop :=
  ∀ n, P10910445304332972141.a n = A297024 (n + 1)

end A297024

/-! ## A297024.P5529839073691686517

`∑[A080512(n+1)-n]-A000203(n+1)`
-/

namespace A297024.P5529839073691686517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000203 (n + 1)

end

end A297024.P5529839073691686517

namespace A297024

/-- `∑[A080512(n+1)-n]-A000203(n+1)` -/
def P5529839073691686517.Spec : Prop :=
  ∀ n, P5529839073691686517.a n = A297024 (n + 1)

end A297024

/-! ## A297024.P768882376065052481

`A000217(∑[char[2*n+1]])-A001065(n+1)`
-/

namespace A297024.P768882376065052481
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j) - A001065 (n + 1)

end

end A297024.P768882376065052481

namespace A297024

/-- `A000217(∑[char[2*n+1]])-A001065(n+1)` -/
def P768882376065052481.Spec : Prop :=
  ∀ n, P768882376065052481.a n = A297024 (n + 1)

end A297024

/-! ## A297024.P11335318538597451095

`A165157(n+1)-(A082052(n+1)+A050449(n+1))`
-/

namespace A297024.P11335318538597451095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165157 (n + 1) - (A082052 (n + 1) + A050449 (n + 1))

end

end A297024.P11335318538597451095

namespace A297024

/-- `A165157(n+1)-(A082052(n+1)+A050449(n+1))` -/
def P11335318538597451095.Spec : Prop :=
  ∀ n, P11335318538597451095.a n = A297024 (n + 1)

end A297024

/-! ## A297024.P14837179409594626519

`A165157(n+1)-(A146076(n+1)+A000593(n+1))`
-/

namespace A297024.P14837179409594626519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165157 (n + 1) - (A146076 (n + 1) + A000593 (n + 1))

end

end A297024.P14837179409594626519

namespace A297024

/-- `A165157(n+1)-(A146076(n+1)+A000593(n+1))` -/
def P14837179409594626519.Spec : Prop :=
  ∀ n, P14837179409594626519.a n = A297024 (n + 1)

end A297024

/-! ## A297024.P7184190148075872167

`A165157(n+1)-A146076(2*(n+1))/2`
-/

namespace A297024.P7184190148075872167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165157 (n + 1) : ℚ) - (A146076 (2 * (n + 1)) : ℚ) / 2

end

end A297024.P7184190148075872167

namespace A297024

/-- `A165157(n+1)-A146076(2*(n+1))/2` -/
def P7184190148075872167.Spec : Prop :=
  ∀ n, P7184190148075872167.a n = (A297024 (n + 1) : ℚ)

end A297024

/-! ## A297024.P580878235880954672

`lt[A124927(n+3), 3]+1-A000203(n+1)`
-/

namespace A297024.P580878235880954672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℤ) - A000203 (n + 1)

end

end A297024.P580878235880954672

namespace A297024

/-- `lt[A124927(n+3), 3]+1-A000203(n+1)` -/
def P580878235880954672.Spec : Prop :=
  ∀ n, P580878235880954672.a n = A297024 (n + 1)

end A297024

/-! ## A297024.P17269697035662353700

`eq[1, A007318(n+3)]+1-A000203(n+1)`
-/

namespace A297024.P17269697035662353700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + (1 - A000203 (n + 1))

end

end A297024.P17269697035662353700

namespace A297024

/-- `eq[1, A007318(n+3)]+1-A000203(n+1)` -/
def P17269697035662353700.Spec : Prop :=
  ∀ n, P17269697035662353700.a n = A297024 (n + 1)

end A297024

/-!
# A297025: Number of iterations of A220096 required to reach 0 starting from n.

The programs for A297025, there is no canonical definition to state claims against.
-/

/-! ## A297025.P7398456169126617577

`a(A220096(n))+1` with `a(0)=0`
-/

namespace A297025.P7398456169126617577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A220096 n).toNat + 1

end

end A297025.P7398456169126617577

/-! ## A297025.P15615723603756348963

`A192218(a(A220096(n)))` with `a(0)=0, a(1)=1`
-/

namespace A297025.P15615723603756348963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A192218 (a (A220096 n).toNat).toNat

end

end A297025.P15615723603756348963

/-! ## A297025.P1040604261517472760

`floor(a(A220096(n))-A057428(n))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A297025.P1040604261517472760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (A220096 n).toNat - A057428 n

end

end A297025.P1040604261517472760

/-! ## A297025.P3436385475832763097

`a(A220096(n))-A057428(n)-A000038(n)` with `a(0)=0`
-/

namespace A297025.P3436385475832763097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (A220096 n).toNat - A057428 n - A000038 n

end

end A297025.P3436385475832763097

/-! ## A297025.P7967321553323902461

`(a(A220096(n))-A057428(n))*A057427(n)` with `a(0)=0`
-/

namespace A297025.P7967321553323902461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a (A220096 n).toNat - A057428 n) * A057427 n

end

end A297025.P7967321553323902461

/-!
# A297026: Positions of records in A297025.

The programs for A297026, there is no canonical definition to state claims against.
-/

/-! ## A297026.P17929916136326052683

`record[A036561(n)-A005773(A283674(n))]`
-/

namespace A297026.P17929916136326052683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n - A005773 (A283674 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297026.P17929916136326052683

/-! ## A297026.P11561393250828809996

`lt[A038554(A226023(n)), A212120(n+1)]`
-/

namespace A297026.P11561393250828809996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 (A226023 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212120 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297026.P11561393250828809996

/-! ## A297026.P3481755190907431770

`eq[A002635(n)², A355368(n+6)]`
-/

namespace A297026.P3481755190907431770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355368 (n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297026.P3481755190907431770

/-! ## A297026.P9436772903419700476

`record[or(A261887(3*n+5), A261916(2*n))]`
-/

namespace A297026.P9436772903419700476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A261887 (3 * n + 5)) (A261916 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297026.P9436772903419700476

/-!
# A297030: Number of pieces in the list d(m), d(m-1), ..., d(0) of base-2 digits of n; see Comments.

The programs for A297030, the canonical program `A297030.P9397117529336368470` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297030 has offset 1).

The definition of A297030 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297030.P9397117529336368470

`∑[A342892(n+1)-A014707(n)]-1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A297030

/-- `∑[A342892(n+1)-A014707(n)]-1` -/
def P9397117529336368470.Spec : Prop :=
  ∀ n, P9397117529336368470.a n = A297030 (n + 1)

theorem P9397117529336368470.correct : P9397117529336368470.Spec := by
  intro n
  simp only [A297030, Nat.add_sub_cancel]

end A297030

/-! ## A297030.P11303878231092829362

`n-∑[A014709(n)-A342892(n+1)]`
-/

namespace A297030.P11303878231092829362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 n - A342892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297030.P11303878231092829362

namespace A297030

/-- `n-∑[A014709(n)-A342892(n+1)]` -/
def P11303878231092829362.Spec : Prop :=
  ∀ n, P11303878231092829362.a n = A297030 (n + 1)

end A297030

/-! ## A297030.P12452802789635909133

`A165316(n+1)-A320042(n+1)`
-/

namespace A297030.P12452802789635909133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165316 (n + 1) - A320042 (n + 1)

end

end A297030.P12452802789635909133

namespace A297030

/-- `A165316(n+1)-A320042(n+1)` -/
def P12452802789635909133.Spec : Prop :=
  ∀ n, P12452802789635909133.a n = A297030 (n + 1)

end A297030

/-! ## A297030.P7102420492889402846

`A037834(n+1)+A033264(A003188(n+1))`
-/

namespace A297030.P7102420492889402846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037834 (n + 1) + A033264 (A003188 (n + 1)).toNat

end

end A297030.P7102420492889402846

namespace A297030

/-- `A037834(n+1)+A033264(A003188(n+1))` -/
def P7102420492889402846.Spec : Prop :=
  ∀ n, P7102420492889402846.a n = A297030 (n + 1)

end A297030

/-! ## A297030.P9639524335480007446

`A005811(n+1)+A037834(n+1)-A165317(n+1)`
-/

namespace A297030.P9639524335480007446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (n + 1) + (A037834 (n + 1) - A165317 (n + 1))

end

end A297030.P9639524335480007446

namespace A297030

/-- `A005811(n+1)+A037834(n+1)-A165317(n+1)` -/
def P9639524335480007446.Spec : Prop :=
  ∀ n, P9639524335480007446.a n = A297030 (n + 1)

end A297030

/-! ## A297030.P3616765597317293977

`A297031(A005836(n+2))`
-/

namespace A297030.P3616765597317293977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297031 (A005836 (n + 2)).toNat

end

end A297030.P3616765597317293977

namespace A297030

/-- `A297031(A005836(n+2))` -/
def P3616765597317293977.Spec : Prop :=
  ∀ n, P3616765597317293977.a n = A297030 (n + 1)

end A297030

/-! ## A297030.P16350873638844299371

`A297031(A005823(n+2)/2)`
-/

namespace A297030.P16350873638844299371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297031 (SequenceMachineLib.roundAway ((A005823 (n + 2) : ℚ) / 2)).toNat

end

end A297030.P16350873638844299371

namespace A297030

/-- `A297031(A005823(n+2)/2)` -/
def P16350873638844299371.Spec : Prop :=
  ∀ n, P16350873638844299371.a n = A297030 (n + 1)

end A297030

/-! ## A297030.P12125384295924860560

`A297031(A005823(n+2))`
-/

namespace A297030.P12125384295924860560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297031 (A005823 (n + 2)).toNat

end

end A297030.P12125384295924860560

namespace A297030

/-- `A297031(A005823(n+2))` -/
def P12125384295924860560.Spec : Prop :=
  ∀ n, P12125384295924860560.a n = A297030 (n + 1)

end A297030

/-! ## A297030.P15473085887644857861

`A297032(A000695(n+1))`
-/

namespace A297030.P15473085887644857861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297032 (A000695 (n + 1)).toNat

end

end A297030.P15473085887644857861

namespace A297030

/-- `A297032(A000695(n+1))` -/
def P15473085887644857861.Spec : Prop :=
  ∀ n, P15473085887644857861.a n = A297030 (n + 1)

end A297030

/-! ## A297030.P564983573969567776

`A297032(A374625(n+1))`
-/

namespace A297030.P564983573969567776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297032 (A374625 (n + 1)).toNat

end

end A297030.P564983573969567776

namespace A297030

/-- `A297032(A374625(n+1))` -/
def P564983573969567776.Spec : Prop :=
  ∀ n, P564983573969567776.a n = A297030 (n + 1)

end A297030

/-! ## A297030.P15280140966455857368

`A297032(A062880(n+1)/2)`
-/

namespace A297030.P15280140966455857368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297032 (SequenceMachineLib.roundAway ((A062880 (n + 1) : ℚ) / 2)).toNat

end

end A297030.P15280140966455857368

namespace A297030

/-- `A297032(A062880(n+1)/2)` -/
def P15280140966455857368.Spec : Prop :=
  ∀ n, P15280140966455857368.a n = A297030 (n + 1)

end A297030

/-!
# A297031: Number of pieces in the list d(m), d(m-1), ..., d(0) of base-3 digits of n; see Comments.

The programs for A297031, there is no canonical definition to state claims against.
-/

/-! ## A297031.P5274736677525445306

`A297032(A023717(n+1))`
-/

namespace A297031.P5274736677525445306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297032 (A023717 (n + 1)).toNat

end

end A297031.P5274736677525445306

/-! ## A297031.P10257472231825217873

`A297032(A023713(n+2))`
-/

namespace A297031.P10257472231825217873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297032 (A023713 (n + 2)).toNat

end

end A297031.P10257472231825217873

/-! ## A297031.P11066835503351402411

`A297032(eq[A000038(n), A292372(n)])`
-/

namespace A297031.P11066835503351402411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297032 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A297031.P11066835503351402411

/-! ## A297031.P940009385705249910

`A297032(A006288(n+1))`
-/

namespace A297031.P940009385705249910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297032 (A006288 (n + 1)).toNat

end

end A297031.P940009385705249910

/-! ## A297031.P1114525159746501116

`A297032(A023709(n+2))`
-/

namespace A297031.P1114525159746501116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297032 (A023709 (n + 2)).toNat

end

end A297031.P1114525159746501116

/-! ## A297031.P14632066711666211472

`A297033(A037453(n+1))`
-/

namespace A297031.P14632066711666211472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297033 (A037453 (n + 1)).toNat

end

end A297031.P14632066711666211472

/-! ## A297031.P16231104533849368951

`A297034(A037454(n+1))`
-/

namespace A297031.P16231104533849368951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297034 (A037454 (n + 1)).toNat

end

end A297031.P16231104533849368951

/-! ## A297031.P6966255410984009423

`A297035(A037455(n+1))`
-/

namespace A297031.P6966255410984009423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297035 (A037455 (n + 1)).toNat

end

end A297031.P6966255410984009423

/-! ## A297031.P16609975106745386898

`A297036(A037456(n+1))`
-/

namespace A297031.P16609975106745386898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297036 (A037456 (n + 1)).toNat

end

end A297031.P16609975106745386898

/-! ## A297031.P7518091364274614375

`A297037(A037314(n+1))`
-/

namespace A297031.P7518091364274614375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297037 (A037314 (n + 1)).toNat

end

end A297031.P7518091364274614375

/-! ## A297031.P17797759837885025461

`A297037(A319497(n+1))`
-/

namespace A297031.P17797759837885025461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297037 (A319497 (n + 1)).toNat

end

end A297031.P17797759837885025461

/-!
# A297032: Number of pieces in the list d(m), d(m-1), ..., d(0) of base-4 digits of n; see Comments.

The programs for A297032, there is no canonical definition to state claims against.
-/

/-! ## A297032.P17577688903532720399

`A297033(A037459(n+1))`
-/

namespace A297032.P17577688903532720399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297033 (A037459 (n + 1)).toNat

end

end A297032.P17577688903532720399

/-! ## A297032.P6866167087133673353

`A297033(A020654(n+2))`
-/

namespace A297032.P6866167087133673353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297033 (A020654 (n + 2)).toNat

end

end A297032.P6866167087133673353

/-! ## A297032.P15620938664834915957

`A297033(A023733(n+2))`
-/

namespace A297032.P15620938664834915957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297033 (A023733 (n + 2)).toNat

end

end A297032.P15620938664834915957

/-! ## A297032.P1411355871110693086

`A297033(A023729(n+2))`
-/

namespace A297032.P1411355871110693086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297033 (A023729 (n + 2)).toNat

end

end A297032.P1411355871110693086

/-! ## A297032.P4366030207996772989

`A297033(A023725(n+2))`
-/

namespace A297032.P4366030207996772989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297033 (A023725 (n + 2)).toNat

end

end A297032.P4366030207996772989

/-! ## A297032.P18061018150115007719

`A297034(A037460(n+1))`
-/

namespace A297032.P18061018150115007719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297034 (A037460 (n + 1)).toNat

end

end A297032.P18061018150115007719

/-! ## A297032.P13677499575901540015

`A297035(A037461(n+1))`
-/

namespace A297032.P13677499575901540015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297035 (A037461 (n + 1)).toNat

end

end A297032.P13677499575901540015

/-! ## A297032.P14731732737529324788

`A297036(A037462(n+1))`
-/

namespace A297032.P14731732737529324788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297036 (A037462 (n + 1)).toNat

end

end A297032.P14731732737529324788

/-! ## A297032.P3589960177567299336

`A297037(A037463(n+1))`
-/

namespace A297032.P3589960177567299336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297037 (A037463 (n + 1)).toNat

end

end A297032.P3589960177567299336

/-! ## A297032.P5263707540903949986

`A297037(A005836(n+2))`
-/

namespace A297032.P5263707540903949986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297037 (A005836 (n + 2)).toNat

end

end A297032.P5263707540903949986

/-! ## A297032.P14069326728882553884

`A297037(A005823(n+2)/2)`
-/

namespace A297032.P14069326728882553884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297037 (SequenceMachineLib.roundAway ((A005823 (n + 2) : ℚ) / 2)).toNat

end

end A297032.P14069326728882553884

/-! ## A297032.P10170388301805676246

`A297038(A007090(n+1))`
-/

namespace A297032.P10170388301805676246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297038 (A007090 (n + 1)).toNat

end

end A297032.P10170388301805676246

/-! ## A297032.P6424150165706075645

`A297038(A007284(n+1))`
-/

namespace A297032.P6424150165706075645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297038 (A007284 (n + 1)).toNat

end

end A297032.P6424150165706075645

/-! ## A297032.P14519359578500465490

`A297038(A046030(n+2))`
-/

namespace A297032.P14519359578500465490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297038 (A046030 (n + 2)).toNat

end

end A297032.P14519359578500465490

/-! ## A297032.P11905529298771642703

`A297038(A001743(n+2))`
-/

namespace A297032.P11905529298771642703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297038 (A001743 (n + 2)).toNat

end

end A297032.P11905529298771642703

/-! ## A297032.P14374177197897939793

`A297037(A005823(n+2))`
-/

namespace A297032.P14374177197897939793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297037 (A005823 (n + 2)).toNat

end

end A297032.P14374177197897939793

/-! ## A297032.P17372905611868089707

`A297044(A000695(n+1))`
-/

namespace A297032.P17372905611868089707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297044 (A000695 (n + 1)).toNat

end

end A297032.P17372905611868089707

/-! ## A297032.P12027859776097649756

`A297044(A062880(n+1)/2)`
-/

namespace A297032.P12027859776097649756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297044 (SequenceMachineLib.roundAway ((A062880 (n + 1) : ℚ) / 2)).toNat

end

end A297032.P12027859776097649756

/-!
# A297033: Number of pieces in the list d(m), d(m-1), ..., d(0) of base-5 digits of n; see Comments.

The programs for A297033, there is no canonical definition to state claims against.
-/

/-! ## A297033.P7694194864300587541

`A297034(A037465(n+1))`
-/

namespace A297033.P7694194864300587541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297034 (A037465 (n + 1)).toNat

end

end A297033.P7694194864300587541

/-! ## A297033.P16302532241174050343

`A297035(A037466(n+1))`
-/

namespace A297033.P16302532241174050343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297035 (A037466 (n + 1)).toNat

end

end A297033.P16302532241174050343

/-! ## A297033.P16581483702876047037

`A297036(A037467(n+1))`
-/

namespace A297033.P16581483702876047037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297036 (A037467 (n + 1)).toNat

end

end A297033.P16581483702876047037

/-! ## A297033.P13800633797668353438

`A297037(A037468(n+1))`
-/

namespace A297033.P13800633797668353438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297037 (A037468 (n + 1)).toNat

end

end A297033.P13800633797668353438

/-! ## A297033.P862761317597055016

`A297038(A007091(n+1))`
-/

namespace A297033.P862761317597055016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297038 (A007091 (n + 1)).toNat

end

end A297033.P862761317597055016

/-! ## A297033.P18280216916453750526

`A297038(A054047(n+1))`
-/

namespace A297033.P18280216916453750526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297038 (A054047 (n + 1)).toNat

end

end A297033.P18280216916453750526

/-! ## A297033.P4260709869454954852

`A297038(A080228(n+2))`
-/

namespace A297033.P4260709869454954852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297038 (A080228 (n + 2)).toNat

end

end A297033.P4260709869454954852

/-! ## A297033.P3649176406800811779

`A297038(A014263(n+2)/2)`
-/

namespace A297033.P3649176406800811779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297038 (SequenceMachineLib.roundAway ((A014263 (n + 2) : ℚ) / 2)).toNat

end

end A297033.P3649176406800811779

/-! ## A297033.P2484986539591302302

`A297038(A001744(n+2))`
-/

namespace A297033.P2484986539591302302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297038 (A001744 (n + 2)).toNat

end

end A297033.P2484986539591302302

/-! ## A297033.P12375667936612218280

`A297038(A014263(n+2))`
-/

namespace A297033.P12375667936612218280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297038 (A014263 (n + 2)).toNat

end

end A297033.P12375667936612218280

/-! ## A297033.P5787464242313669084

`A297038(A072960(n+2))`
-/

namespace A297033.P5787464242313669084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297038 (A072960 (n + 2)).toNat

end

end A297033.P5787464242313669084

/-!
# A297034: Number of pieces in the list d(m), d(m-1), ..., d(0) of base-6 digits of n; see Comments.

The programs for A297034, there is no canonical definition to state claims against.
-/

/-! ## A297034.P6750235865697978615

`A297035(A020657(n+2))`
-/

namespace A297034.P6750235865697978615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297035 (A020657 (n + 2)).toNat

end

end A297034.P6750235865697978615

/-! ## A297034.P1553577366859054259

`A297036(A037471(n+1))`
-/

namespace A297034.P1553577366859054259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297036 (A037471 (n + 1)).toNat

end

end A297034.P1553577366859054259

/-! ## A297034.P9881917875490467958

`A297037(A037472(n+1))`
-/

namespace A297034.P9881917875490467958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297037 (A037472 (n + 1)).toNat

end

end A297034.P9881917875490467958

/-! ## A297034.P8254289763770471607

`A297038(A007092(n+1))`
-/

namespace A297034.P8254289763770471607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297038 (A007092 (n + 1)).toNat

end

end A297034.P8254289763770471607

/-! ## A297034.P16186404073625551033

`A297038(A084984(n+2))`
-/

namespace A297034.P16186404073625551033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297038 (A084984 (n + 2)).toNat

end

end A297034.P16186404073625551033

/-!
# A297035: Number of pieces in the list d(m), d(m-1), ..., d(0) of base-7 digits of n; see Comments.

The programs for A297035, there is no canonical definition to state claims against.
-/

/-! ## A297035.P3056395797370044049

`A297038(A007093(n+1))`
-/

namespace A297035.P3056395797370044049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297038 (A007093 (n + 1)).toNat

end

end A297035.P3056395797370044049

/-! ## A297035.P15304309162037702569

`A297037(lt[A257578(n+1), A110645(n)])`
-/

namespace A297035.P15304309162037702569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297037 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A297035.P15304309162037702569

/-! ## A297035.P13219369668013330322

`∑[val(A227540(n), 98)]`
-/

namespace A297035.P13219369668013330322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A227540 n).toNat 98

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297035.P13219369668013330322

/-! ## A297035.P184051116954711778

`∑[and(∏{d}[n+1, (#%3)%2], A191840(n+5))]`
-/

namespace A297035.P184051116954711778
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∏ d ∈ Nat.divisors (f2 n), d % 3 % 2 : ℕ) : ℤ) (A191840 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297035.P184051116954711778

/-! ## A297035.P3225940053090419339

`A057356(floor(log(A051221(n+4))))`
-/

namespace A297035.P3225940053090419339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 ⌊Real.log (A051221 (n + 4) : ℝ)⌋.toNat

end

end A297035.P3225940053090419339

/-! ## A297035.P13529045993015814094

`A000120(A347697(A347697(A347696(A007664(n+1)))))`
-/

namespace A297035.P13529045993015814094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A347697 (A347697 (A347696 (A007664 (n + 1)).toNat).toNat).toNat).toNat

end

end A297035.P13529045993015814094

/-!
# A297036: Number of pieces in the list d(m), d(m-1), ..., d(0) of base-8 digits of n; see Comments.

The programs for A297036, there is no canonical definition to state claims against.
-/

/-! ## A297036.P3255458694988955871

`round(sqrt(A127288(n)/28))`
-/

namespace A297036.P3255458694988955871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A127288 n : ℚ) / 28 : ℝ))

end

end A297036.P3255458694988955871

/-! ## A297036.P8273496646482652586

`A102679(A171723(n))`
-/

namespace A297036.P8273496646482652586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (A171723 n).toNat

end

end A297036.P8273496646482652586

/-! ## A297036.P6832775542071180664

`A055642(A361780(n+2))-1`
-/

namespace A297036.P6832775542071180664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A361780 (n + 2)).toNat - 1

end

end A297036.P6832775542071180664

/-! ## A297036.P14448726624871199903

`A195150(floor(sqrt(A175081(n+1))))`
-/

namespace A297036.P14448726624871199903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195150 (Int.sqrt (A175081 (n + 1))).toNat

end

end A297036.P14448726624871199903

/-! ## A297036.P9969746932281446093

`A032741(A048766(A091937(n+1)))`
-/

namespace A297036.P9969746932281446093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A048766 (A091937 (n + 1)).toNat).toNat

end

end A297036.P9969746932281446093

/-! ## A297036.P5948294344566187849

`A057367(A000523(n+1)%A029494(n+1))`
-/

namespace A297036.P5948294344566187849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057367 (Int.tmod (A000523 (n + 1)) (A029494 (n + 1))).toNat

end

end A297036.P5948294344566187849

/-! ## A297036.P2575833964019267907

`A001221(∏[Δ[A007094(n)]])`
-/

namespace A297036.P2575833964019267907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A297036.P2575833964019267907

/-! ## A297036.P14425964818850723775

`A277322(∏[A233202(val(n+1, 2)+1)])`
-/

namespace A297036.P14425964818850723775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233202 (SequenceMachineLib.valuation (n + 1) 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277322 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A297036.P14425964818850723775

/-! ## A297036.P2728544527229056135

`A308884(A113473(n+1)%A045506(n))`
-/

namespace A297036.P2728544527229056135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308884 (Int.tmod (A113473 (n + 1)) (A045506 n)).toNat

end

end A297036.P2728544527229056135

/-! ## A297036.P10258180022531951182

`A004216(A353852(n)+A081386(n+1))`
-/

namespace A297036.P10258180022531951182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A353852 n + A081386 (n + 1)).toNat

end

end A297036.P10258180022531951182

/-!
# A297037: Number of pieces in the list d(m), d(m-1), ..., d(0) of base-9 digits of n; see Comments.

The programs for A297037, there is no canonical definition to state claims against.
-/

/-! ## A297037.P17209730466598482575

`A297038(A007095(n+1))`
-/

namespace A297037.P17209730466598482575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297038 (A007095 (n + 1)).toNat

end

end A297037.P17209730466598482575

/-! ## A297037.P6546792391204550091

`A297038(record[A035043(n+1)])`
-/

namespace A297037.P6546792391204550091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297038 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A297037.P6546792391204550091

/-! ## A297037.P6230092709822451126

`A297038(eq[A000007(n), A316863(n)])`
-/

namespace A297037.P6230092709822451126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297038 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A297037.P6230092709822451126

/-! ## A297037.P18023605373554901592

`A297038(record[A004179(A008620(n))])`
-/

namespace A297037.P18023605373554901592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297038 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A297037.P18023605373554901592

/-! ## A297037.P1587166142890670550

`A297044(A023717(n+1))`
-/

namespace A297037.P1587166142890670550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297044 (A023717 (n + 1)).toNat

end

end A297037.P1587166142890670550

/-! ## A297037.P7953226055359882383

`val(A329383(A007918(n)), 9)`
-/

namespace A297037.P7953226055359882383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A329383 (A007918 n).toNat).toNat 9

end

end A297037.P7953226055359882383

/-! ## A297037.P12763108184734170003

`A001221(∏[Δ[A236403(n+1)]])`
-/

namespace A297037.P12763108184734170003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236403 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A297037.P12763108184734170003

/-! ## A297037.P15531090871304607155

`A324825(∏[Δ[A236403(n+1)]])`
-/

namespace A297037.P15531090871304607155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236403 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324825 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A297037.P15531090871304607155

/-! ## A297037.P5387582385869408587

`A297038(∑[A255648(A194138(n+1))])`
-/

namespace A297037.P5387582385869408587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255648 (A194138 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297038 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A297037.P5387582385869408587

/-!
# A297038: Number of pieces in the list d(m), d(m-1), ..., d(0) of base-10 digits of n; see Comments.

The programs for A297038, there is no canonical definition to state claims against.
-/

/-! ## A297038.P1244330510355972679

`A297039(A171397(n+2)-1)`
-/

namespace A297038.P1244330510355972679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297039 (A171397 (n + 2) - 1).toNat

end

end A297038.P1244330510355972679

/-! ## A297038.P18069017427095320921

`floor(log2(dr(A213217(n+1))))`
-/

namespace A297038.P18069017427095320921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (SequenceMachineLib.digitalRoot (A213217 (n + 1)))

end

end A297038.P18069017427095320921

/-!
# A297039: Number of pieces in the list d(m), d(m-1), ..., d(0) of base-11 digits of n; see Comments.

The programs for A297039, the canonical program `A297039.P12638679154659691886` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297039 has offset 1).

The definition of A297039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297039.P16504665168208332590

`val(∏[A074828(n+1)], 11)`
-/

namespace A297039.P16504665168208332590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ j ∈ Finset.range (n + 1), f1 j).toNat 11

end

end A297039.P16504665168208332590

namespace A297039

/-- `val(∏[A074828(n+1)], 11)` -/
def P16504665168208332590.Spec : Prop :=
  ∀ n, (P16504665168208332590.a n : ℤ) = A297039 (n + 1)

end A297039

/-! ## A297039.P12929909800746047863

`∑[A025468(A053307(∏{p}[n+1, #]))]`
-/

namespace A297039.P12929909800746047863
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 (A053307 (∏ p ∈ Nat.primeFactors (f2 n), p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297039.P12929909800746047863

namespace A297039

/-- `∑[A025468(A053307(∏{p}[n+1, #]))]` -/
def P12929909800746047863.Spec : Prop :=
  ∀ n, P12929909800746047863.a n = A297039 (n + 1)

end A297039

/-! ## A297039.P16246440399508096536

`∑[val(A115174(2*n+3), A224665(n+1))]`
-/

namespace A297039.P16246440399508096536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A115174 (2 * n + 3)).toNat (A224665 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297039.P16246440399508096536

namespace A297039

/-- `∑[val(A115174(2*n+3), A224665(n+1))]` -/
def P16246440399508096536.Spec : Prop :=
  ∀ n, (P16246440399508096536.a n : ℤ) = A297039 (n + 1)

end A297039

/-! ## A297039.P17962597514404166642

`A007968(abs(Δ[A055961(n)]))`
-/

namespace A297039.P17962597514404166642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 |f1 (n + 1) - f1 n|.toNat

end

end A297039.P17962597514404166642

namespace A297039

/-- `A007968(abs(Δ[A055961(n)]))` -/
def P17962597514404166642.Spec : Prop :=
  ∀ n, P17962597514404166642.a n = A297039 (n + 1)

end A297039

/-! ## A297039.P17018121374801516558

`A004427(Δ[A055961(n)]²)`
-/

namespace A297039.P17018121374801516558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A297039.P17018121374801516558

namespace A297039

/-- `A004427(Δ[A055961(n)]²)` -/
def P17018121374801516558.Spec : Prop :=
  ∀ n, P17018121374801516558.a n = A297039 (n + 1)

end A297039

/-! ## A297039.P17605953123070780568

`A278038(Δ[A055961(n)]²)%3`
-/

namespace A297039.P17605953123070780568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278038 ((f1 (n + 1) - f1 n) ^ 2).toNat) 3

end

end A297039.P17605953123070780568

namespace A297039

/-- `A278038(Δ[A055961(n)]²)%3` -/
def P17605953123070780568.Spec : Prop :=
  ∀ n, P17605953123070780568.a n = A297039 (n + 1)

end A297039

/-! ## A297039.P6051770991712091421

`A001221(∏{e}[Δ[A055961(n)]², #])`
-/

namespace A297039.P6051770991712091421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055961 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A297039.P6051770991712091421

namespace A297039

/-- `A001221(∏{e}[Δ[A055961(n)]², #])` -/
def P6051770991712091421.Spec : Prop :=
  ∀ n, P6051770991712091421.a n = A297039 (n + 1)

end A297039

/-! ## A297039.P18252584520818515643

`A210255(∏{e}[Δ[A055961(n)]², #])`
-/

namespace A297039.P18252584520818515643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055961 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210255 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A297039.P18252584520818515643

namespace A297039

/-- `A210255(∏{e}[Δ[A055961(n)]², #])` -/
def P18252584520818515643.Spec : Prop :=
  ∀ n, P18252584520818515643.a n = A297039 (n + 1)

end A297039

/-! ## A297039.P9341843410644407103

`A006530(∏{e}[Δ[A055961(n)]², #])-1`
-/

namespace A297039.P9341843410644407103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055961 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) - 1

end

end A297039.P9341843410644407103

namespace A297039

/-- `A006530(∏{e}[Δ[A055961(n)]², #])-1` -/
def P9341843410644407103.Spec : Prop :=
  ∀ n, P9341843410644407103.a n = A297039 (n + 1)

end A297039

/-! ## A297039.P3764165769090591906

`A073068(∏{e}[Δ[A055961(n)]², #]+5)`
-/

namespace A297039.P3764165769090591906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055961 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073068 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 5)

end

end A297039.P3764165769090591906

namespace A297039

/-- `A073068(∏{e}[Δ[A055961(n)]², #]+5)` -/
def P3764165769090591906.Spec : Prop :=
  ∀ n, P3764165769090591906.a n = A297039 (n + 1)

end A297039

/-! ## A297039.P134983551137657637

`A004216(A277192(n))^A014963(A000124(n))`
-/

namespace A297039.P134983551137657637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004216 (A277192 n).toNat : ℚ) ^ (A014963 (A000124 n).toNat : ℤ)

end

end A297039.P134983551137657637

namespace A297039

/-- `A004216(A277192(n))^A014963(A000124(n))` -/
def P134983551137657637.Spec : Prop :=
  ∀ n, P134983551137657637.a n = (A297039 (n + 1) : ℚ)

end A297039

/-! ## A297039.P16416377982946747257

`A001222(A348674(n))^A014963(A000124(n))`
-/

namespace A297039.P16416377982946747257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A348674 n).toNat : ℚ) ^ (A014963 (A000124 n).toNat : ℤ)

end

end A297039.P16416377982946747257

namespace A297039

/-- `A001222(A348674(n))^A014963(A000124(n))` -/
def P16416377982946747257.Spec : Prop :=
  ∀ n, P16416377982946747257.a n = (A297039 (n + 1) : ℚ)

end A297039

/-! ## A297039.P17501956323836168683

`A323022(ceil(cosh(A059995(n))))`
-/

namespace A297039.P17501956323836168683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 ⌈Real.cosh (A059995 n : ℝ)⌉.toNat

end

end A297039.P17501956323836168683

namespace A297039

/-- `A323022(ceil(cosh(A059995(n))))` -/
def P17501956323836168683.Spec : Prop :=
  ∀ n, P17501956323836168683.a n = A297039 (n + 1)

end A297039

/-! ## A297039.P12638679154659691886

`A051903(A052992(A179051(n)))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A297039

/-- `A051903(A052992(A179051(n)))` -/
def P12638679154659691886.Spec : Prop :=
  ∀ n, P12638679154659691886.a n = A297039 (n + 1)

theorem P12638679154659691886.correct : P12638679154659691886.Spec := by
  intro n
  simp only [A297039, Nat.add_sub_cancel]

end A297039

/-! ## A297039.P6729612186944206015

`∑[A173667(A087999(A020639(n+1)))]`
-/

namespace A297039.P6729612186944206015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173667 (A087999 (A020639 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297039.P6729612186944206015

namespace A297039

/-- `∑[A173667(A087999(A020639(n+1)))]` -/
def P6729612186944206015.Spec : Prop :=
  ∀ n, P6729612186944206015.a n = A297039 (n + 1)

end A297039

/-! ## A297039.P5947856698734086073

`∑[A323514(A099884(A117367(n+1)))]`
-/

namespace A297039.P5947856698734086073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323514 (A099884 (A117367 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297039.P5947856698734086073

namespace A297039

/-- `∑[A323514(A099884(A117367(n+1)))]` -/
def P5947856698734086073.Spec : Prop :=
  ∀ n, P5947856698734086073.a n = A297039 (n + 1)

end A297039

/-!
# A297040: Number of pieces in the list d(m), d(m-1), ..., d(0) of base-12 digits of n; see Comments.

The programs for A297040, the canonical program `A297040.P2860188233135443845` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297040 has offset 1).

The definition of A297040 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297040.P11568495315122224944

`A323022(A210449(p?[A064458(n)]))`
-/

namespace A297040.P11568495315122224944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (A210449 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A297040.P11568495315122224944

namespace A297040

/-- `A323022(A210449(p?[A064458(n)]))` -/
def P11568495315122224944.Spec : Prop :=
  ∀ n, P11568495315122224944.a n = A297040 (n + 1)

end A297040

/-! ## A297040.P12035185292109768420

`ceil(A161087(n+1)/A181807(n+1))`
-/

namespace A297040.P12035185292109768420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A161087 (n + 1) : ℚ) / (A181807 (n + 1) : ℚ)⌉

end

end A297040.P12035185292109768420

namespace A297040

/-- `ceil(A161087(n+1)/A181807(n+1))` -/
def P12035185292109768420.Spec : Prop :=
  ∀ n, P12035185292109768420.a n = A297040 (n + 1)

end A297040

/-! ## A297040.P5233850272645454528

`round(A001097(n+1)/A126622(n+1))`
-/

namespace A297040.P5233850272645454528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001097 (n + 1) : ℚ) / (A126622 (n + 1) : ℚ))

end

end A297040.P5233850272645454528

namespace A297040

/-- `round(A001097(n+1)/A126622(n+1))` -/
def P5233850272645454528.Spec : Prop :=
  ∀ n, P5233850272645454528.a n = A297040 (n + 1)

end A297040

/-! ## A297040.P11140179159933105146

`∑[val(A074606(n), A289059(n+1))]`
-/

namespace A297040.P11140179159933105146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A074606 n).toNat (A289059 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297040.P11140179159933105146

namespace A297040

/-- `∑[val(A074606(n), A289059(n+1))]` -/
def P11140179159933105146.Spec : Prop :=
  ∀ n, (P11140179159933105146.a n : ℤ) = A297040 (n + 1)

end A297040

/-! ## A297040.P15589033877740621110

`∑[A098108(A035930(A049872(n)))]`
-/

namespace A297040.P15589033877740621110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098108 (A035930 (A049872 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297040.P15589033877740621110

namespace A297040

/-- `∑[A098108(A035930(A049872(n)))]` -/
def P15589033877740621110.Spec : Prop :=
  ∀ n, P15589033877740621110.a n = A297040 (n + 1)

end A297040

/-! ## A297040.P2860188233135443845

`A020951(2^A064458(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A297040

/-- `A020951(2^A064458(n))` -/
def P2860188233135443845.Spec : Prop :=
  ∀ n, P2860188233135443845.a n = A297040 (n + 1)

theorem P2860188233135443845.correct : P2860188233135443845.Spec := by
  intro n
  simp only [A297040, Nat.add_sub_cancel]

end A297040

/-! ## A297040.P4681056099098894074

`A055396(2^A064458(n))`
-/

namespace A297040.P4681056099098894074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A064458 n : ℤ))).toNat

end

end A297040.P4681056099098894074

namespace A297040

/-- `A055396(2^A064458(n))` -/
def P4681056099098894074.Spec : Prop :=
  ∀ n, P4681056099098894074.a n = A297040 (n + 1)

end A297040

/-! ## A297040.P13183526586858002596

`A066882(2^A064458(n))`
-/

namespace A297040.P13183526586858002596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A064458 n : ℤ))).toNat

end

end A297040.P13183526586858002596

namespace A297040

/-- `A066882(2^A064458(n))` -/
def P13183526586858002596.Spec : Prop :=
  ∀ n, P13183526586858002596.a n = A297040 (n + 1)

end A297040

/-! ## A297040.P9943971725203882187

`A129308(2^A064458(n))`
-/

namespace A297040.P9943971725203882187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A064458 n : ℤ))).toNat

end

end A297040.P9943971725203882187

namespace A297040

/-- `A129308(2^A064458(n))` -/
def P9943971725203882187.Spec : Prop :=
  ∀ n, P9943971725203882187.a n = A297040 (n + 1)

end A297040

/-! ## A297040.P17290394202119804660

`A265859(2^A064458(n))`
-/

namespace A297040.P17290394202119804660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265859 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A064458 n : ℤ))).toNat

end

end A297040.P17290394202119804660

namespace A297040

/-- `A265859(2^A064458(n))` -/
def P17290394202119804660.Spec : Prop :=
  ∀ n, P17290394202119804660.a n = A297040 (n + 1)

end A297040

/-! ## A297040.P333209928342042093

`A043545(A055649(n)-n)`
-/

namespace A297040.P333209928342042093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (A055649 n - (n : ℤ)).toNat

end

end A297040.P333209928342042093

namespace A297040

/-- `A043545(A055649(n)-n)` -/
def P333209928342042093.Spec : Prop :=
  ∀ n, P333209928342042093.a n = A297040 (n + 1)

end A297040

/-! ## A297040.P8007952150854557117

`A057427(∑{e}[A025150(n), #])`
-/

namespace A297040.P8007952150854557117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A297040.P8007952150854557117

namespace A297040

/-- `A057427(∑{e}[A025150(n), #])` -/
def P8007952150854557117.Spec : Prop :=
  ∀ n, P8007952150854557117.a n = A297040 (n + 1)

end A297040

/-! ## A297040.P2155049719209389100

`A087974(A016116(A206245(n)))`
-/

namespace A297040.P2155049719209389100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087974 (A016116 (A206245 n).toNat).toNat

end

end A297040.P2155049719209389100

namespace A297040

/-- `A087974(A016116(A206245(n)))` -/
def P2155049719209389100.Spec : Prop :=
  ∀ n, P2155049719209389100.a n = A297040 (n + 1)

end A297040

/-! ## A297040.P2985900983781786000

`A178334(∑[A057918(A007318(n))])`
-/

namespace A297040.P2985900983781786000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A007318 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A297040.P2985900983781786000

namespace A297040

/-- `A178334(∑[A057918(A007318(n))])` -/
def P2985900983781786000.Spec : Prop :=
  ∀ n, P2985900983781786000.a n = A297040 (n + 1)

end A297040

/-!
# A297041: Number of pieces in the list d(m), d(m-1), ..., d(0) of base-13 digits of n; see Comments.

The programs for A297041, the canonical program `A297041.P4700405765211441045` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297041 has offset 1).

The definition of A297041 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297041.P13155558691735044360

`∑[val(A267667(n+1), A264976(2*n+3))]`
-/

namespace A297041.P13155558691735044360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A267667 (n + 1)).toNat (A264976 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297041.P13155558691735044360

namespace A297041

/-- `∑[val(A267667(n+1), A264976(2*n+3))]` -/
def P13155558691735044360.Spec : Prop :=
  ∀ n, (P13155558691735044360.a n : ℤ) = A297041 (n + 1)

end A297041

/-! ## A297041.P15133915496907316484

`∑[val(A073492(n+1), A252177(n+4))]`
-/

namespace A297041.P15133915496907316484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A073492 (n + 1)).toNat (A252177 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297041.P15133915496907316484

namespace A297041

/-- `∑[val(A073492(n+1), A252177(n+4))]` -/
def P15133915496907316484.Spec : Prop :=
  ∀ n, (P15133915496907316484.a n : ℤ) = A297041 (n + 1)

end A297041

/-! ## A297041.P6173409800105141539

`∑[val(A000720(n+5), A252177(n+4))]`
-/

namespace A297041.P6173409800105141539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000720 (n + 5)).toNat (A252177 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297041.P6173409800105141539

namespace A297041

/-- `∑[val(A000720(n+5), A252177(n+4))]` -/
def P6173409800105141539.Spec : Prop :=
  ∀ n, (P6173409800105141539.a n : ℤ) = A297041 (n + 1)

end A297041

/-! ## A297041.P14737108852754330274

`∑[A008347(n)%A035214(A343071(n))]`
-/

namespace A297041.P14737108852754330274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008347 n) (A035214 (A343071 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297041.P14737108852754330274

namespace A297041

/-- `∑[A008347(n)%A035214(A343071(n))]` -/
def P14737108852754330274.Spec : Prop :=
  ∀ n, P14737108852754330274.a n = A297041 (n + 1)

end A297041

/-! ## A297041.P6031367690179762131

`∑[A004754(n+1)%A035214(A343071(n))]`
-/

namespace A297041.P6031367690179762131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004754 (n + 1)) (A035214 (A343071 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297041.P6031367690179762131

namespace A297041

/-- `∑[A004754(n+1)%A035214(A343071(n))]` -/
def P6031367690179762131.Spec : Prop :=
  ∀ n, P6031367690179762131.a n = A297041 (n + 1)

end A297041

/-! ## A297041.P15937775653581258032

`∑[A004756(n+1)%A035214(A343071(n))]`
-/

namespace A297041.P15937775653581258032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004756 (n + 1)) (A035214 (A343071 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297041.P15937775653581258032

namespace A297041

/-- `∑[A004756(n+1)%A035214(A343071(n))]` -/
def P15937775653581258032.Spec : Prop :=
  ∀ n, P15937775653581258032.a n = A297041 (n + 1)

end A297041

/-! ## A297041.P6492366567896865095

`∑[A004758(n+1)%A035214(A343071(n))]`
-/

namespace A297041.P6492366567896865095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004758 (n + 1)) (A035214 (A343071 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297041.P6492366567896865095

namespace A297041

/-- `∑[A004758(n+1)%A035214(A343071(n))]` -/
def P6492366567896865095.Spec : Prop :=
  ∀ n, P6492366567896865095.a n = A297041 (n + 1)

end A297041

/-! ## A297041.P17994471212913339708

`∑[A024362(n+1)%A035214(A343071(n))]`
-/

namespace A297041.P17994471212913339708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024362 (n + 1)) (A035214 (A343071 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297041.P17994471212913339708

namespace A297041

/-- `∑[A024362(n+1)%A035214(A343071(n))]` -/
def P17994471212913339708.Spec : Prop :=
  ∀ n, P17994471212913339708.a n = A297041 (n + 1)

end A297041

/-! ## A297041.P7134337912978698647

`∑[val(A020639(A066638(n+1)), 13)]`
-/

namespace A297041.P7134337912978698647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020639 (A066638 (n + 1)).toNat).toNat 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297041.P7134337912978698647

namespace A297041

/-- `∑[val(A020639(A066638(n+1)), 13)]` -/
def P7134337912978698647.Spec : Prop :=
  ∀ n, (P7134337912978698647.a n : ℤ) = A297041 (n + 1)

end A297041

/-! ## A297041.P10678361758349345655

`∑[val(A063537(n+1), 25)]`
-/

namespace A297041.P10678361758349345655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A063537 (n + 1)).toNat 25

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297041.P10678361758349345655

namespace A297041

/-- `∑[val(A063537(n+1), 25)]` -/
def P10678361758349345655.Spec : Prop :=
  ∀ n, (P10678361758349345655.a n : ℤ) = A297041 (n + 1)

end A297041

/-! ## A297041.P4700405765211441045

`A056926(A000120(A064459(n)))^A034869(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A297041

/-- `A056926(A000120(A064459(n)))^A034869(n)` -/
def P4700405765211441045.Spec : Prop :=
  ∀ n, P4700405765211441045.a n = (A297041 (n + 1) : ℚ)

end A297041

/-! ## A297041.P5892499011071547362

`A201219(2^A064459(n))`
-/

namespace A297041.P5892499011071547362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201219 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A064459 n : ℤ))).toNat

end

end A297041.P5892499011071547362

namespace A297041

/-- `A201219(2^A064459(n))` -/
def P5892499011071547362.Spec : Prop :=
  ∀ n, P5892499011071547362.a n = A297041 (n + 1)

end A297041

/-! ## A297041.P7881580570322562288

`A043545(A049872(n)-n)`
-/

namespace A297041.P7881580570322562288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (A049872 n - (n : ℤ)).toNat

end

end A297041.P7881580570322562288

namespace A297041

/-- `A043545(A049872(n)-n)` -/
def P7881580570322562288.Spec : Prop :=
  ∀ n, P7881580570322562288.a n = A297041 (n + 1)

end A297041

/-! ## A297041.P12980361770867324609

`A064894(A049872(n)-n)`
-/

namespace A297041.P12980361770867324609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064894 (A049872 n - (n : ℤ)).toNat

end

end A297041.P12980361770867324609

namespace A297041

/-- `A064894(A049872(n)-n)` -/
def P12980361770867324609.Spec : Prop :=
  ∀ n, P12980361770867324609.a n = A297041 (n + 1)

end A297041

/-! ## A297041.P4781211720044107323

`A019425(A278348(A004526(n)))`
-/

namespace A297041.P4781211720044107323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A278348 (A004526 n).toNat).toNat

end

end A297041.P4781211720044107323

namespace A297041

/-- `A019425(A278348(A004526(n)))` -/
def P4781211720044107323.Spec : Prop :=
  ∀ n, P4781211720044107323.a n = A297041 (n + 1)

end A297041

/-! ## A297041.P10396010449513198453

`A001221(A008578(∑[A097798(n)]))`
-/

namespace A297041.P10396010449513198453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097798 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008578 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A297041.P10396010449513198453

namespace A297041

/-- `A001221(A008578(∑[A097798(n)]))` -/
def P10396010449513198453.Spec : Prop :=
  ∀ n, P10396010449513198453.a n = A297041 (n + 1)

end A297041

/-!
# A297042: Number of pieces in the list d(m), d(m-1), ..., d(0) of base-14 digits of n; see Comments.

The programs for A297042, the canonical program `A297042.P12230498484453205082` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297042 has offset 1).

The definition of A297042 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297042.P13545698923470496457

`val(A061799(A055647(n+1)), 7)`
-/

namespace A297042.P13545698923470496457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A061799 (A055647 (n + 1)).toNat).toNat 7

end

end A297042.P13545698923470496457

namespace A297042

/-- `val(A061799(A055647(n+1)), 7)` -/
def P13545698923470496457.Spec : Prop :=
  ∀ n, (P13545698923470496457.a n : ℤ) = A297042 (n + 1)

end A297042

/-! ## A297042.P12230498484453205082

`floor(log(log(A134986(n+6))))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A297042

/-- `floor(log(log(A134986(n+6))))` -/
def P12230498484453205082.Spec : Prop :=
  ∀ n, P12230498484453205082.a n = A297042 (n + 1)

theorem P12230498484453205082.correct : P12230498484453205082.Spec := by
  intro n
  simp only [A297042, Nat.add_sub_cancel]

end A297042

/-! ## A297042.P3513988197333549499

`ceil(sin(log2(A249550(n+4))))`
-/

namespace A297042.P3513988197333549499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (Real.logb 2 (A249550 (n + 4) : ℝ))⌉

end

end A297042.P3513988197333549499

namespace A297042

/-- `ceil(sin(log2(A249550(n+4))))` -/
def P3513988197333549499.Spec : Prop :=
  ∀ n, P3513988197333549499.a n = A297042 (n + 1)

end A297042

/-! ## A297042.P17112414290857628035

`A001221(∏[Δ[A043670(n+1)]])`
-/

namespace A297042.P17112414290857628035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043670 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A297042.P17112414290857628035

namespace A297042

/-- `A001221(∏[Δ[A043670(n+1)]])` -/
def P17112414290857628035.Spec : Prop :=
  ∀ n, P17112414290857628035.a n = A297042 (n + 1)

end A297042

/-! ## A297042.P11343267802080964345

`A001221(∏[Δ[A043672(n+1)]])`
-/

namespace A297042.P11343267802080964345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043672 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A297042.P11343267802080964345

namespace A297042

/-- `A001221(∏[Δ[A043672(n+1)]])` -/
def P11343267802080964345.Spec : Prop :=
  ∀ n, P11343267802080964345.a n = A297042 (n + 1)

end A297042

/-! ## A297042.P6563889052038115219

`A001221(∏[Δ[A043674(n+1)]])`
-/

namespace A297042.P6563889052038115219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043674 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A297042.P6563889052038115219

namespace A297042

/-- `A001221(∏[Δ[A043674(n+1)]])` -/
def P6563889052038115219.Spec : Prop :=
  ∀ n, P6563889052038115219.a n = A297042 (n + 1)

end A297042

/-! ## A297042.P6282612492899381223

`A057427(xor(n+1, A055647(n+1)))`
-/

namespace A297042.P6282612492899381223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (Int.xor (n + 1 : ℤ) (A055647 (n + 1))).toNat

end

end A297042.P6282612492899381223

namespace A297042

/-- `A057427(xor(n+1, A055647(n+1)))` -/
def P6282612492899381223.Spec : Prop :=
  ∀ n, P6282612492899381223.a n = A297042 (n + 1)

end A297042

/-!
# A297043: Number of pieces in the list d(m), d(m-1), ..., d(0) of base-15 digits of n; see Comments.

The programs for A297043, the canonical program `A297043.P77604833926978237` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297043 has offset 1).

The definition of A297043 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297043.P1996912622651798919

`ceil(A108611(A057360(n))/15)`
-/

namespace A297043.P1996912622651798919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A108611 (A057360 n).toNat : ℚ) / 15⌉

end

end A297043.P1996912622651798919

namespace A297043

/-- `ceil(A108611(A057360(n))/15)` -/
def P1996912622651798919.Spec : Prop :=
  ∀ n, P1996912622651798919.a n = A297043 (n + 1)

end A297043

/-! ## A297043.P77604833926978237

`∑[A341629(Δ[A017533(n)²])]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A297043

/-- `∑[A341629(Δ[A017533(n)²])]` -/
def P77604833926978237.Spec : Prop :=
  ∀ n, P77604833926978237.a n = A297043 (n + 1)

theorem P77604833926978237.correct : P77604833926978237.Spec := by
  intro n
  simp only [A297043, Nat.add_sub_cancel]

end A297043

/-! ## A297043.P2213859190284564567

`∑[A341629(Δ[A016922(2*n)])]`
-/

namespace A297043.P2213859190284564567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016922 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341629 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297043.P2213859190284564567

namespace A297043

/-- `∑[A341629(Δ[A016922(2*n)])]` -/
def P2213859190284564567.Spec : Prop :=
  ∀ n, P2213859190284564567.a n = A297043 (n + 1)

end A297043

/-! ## A297043.P6900216680306667204

`a(n-1)^A001113(n²)` with `a(0)=0`
-/

namespace A297043.P6900216680306667204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) ^ (A001113 (n ^ 2 + 1) : ℤ)

end

end A297043.P6900216680306667204

namespace A297043

/-- `a(n-1)^A001113(n²)` -/
def P6900216680306667204.Spec : Prop :=
  ∀ n, P6900216680306667204.a n = (A297043 (n + 1) : ℚ)

end A297043

/-! ## A297043.P692825528965200343

`A031346(floor(log(A038115(n))))`
-/

namespace A297043.P692825528965200343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 ⌊Real.log (A038115 n : ℝ)⌋.toNat

end

end A297043.P692825528965200343

namespace A297043

/-- `A031346(floor(log(A038115(n))))` -/
def P692825528965200343.Spec : Prop :=
  ∀ n, P692825528965200343.a n = A297043 (n + 1)

end A297043

/-! ## A297043.P2728819779869175346

`A031346(round(log(A038115(n))))`
-/

namespace A297043.P2728819779869175346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (SequenceMachineLib.roundAway (Real.log (A038115 n : ℝ))).toNat

end

end A297043.P2728819779869175346

namespace A297043

/-- `A031346(round(log(A038115(n))))` -/
def P2728819779869175346.Spec : Prop :=
  ∀ n, P2728819779869175346.a n = A297043 (n + 1)

end A297043

/-! ## A297043.P15325680758810932335

`p?[A008620(A143824(n))]%2`
-/

namespace A297043.P15325680758810932335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A143824 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 2

end

end A297043.P15325680758810932335

namespace A297043

/-- `p?[A008620(A143824(n))]%2` -/
def P15325680758810932335.Spec : Prop :=
  ∀ n, P15325680758810932335.a n = A297043 (n + 1)

end A297043

/-! ## A297043.P5012498287967260991

`A284256(7*A000040(n+2))`
-/

namespace A297043.P5012498287967260991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284256 (7 * A000040 (n + 2)).toNat

end

end A297043.P5012498287967260991

namespace A297043

/-- `A284256(7*A000040(n+2))` -/
def P5012498287967260991.Spec : Prop :=
  ∀ n, P5012498287967260991.a n = A297043 (n + 1)

end A297043

/-! ## A297043.P158396814311402251

`A284256(lcm(7, A000040(n+2)))`
-/

namespace A297043.P158396814311402251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284256 (Int.lcm 7 (A000040 (n + 2)))

end

end A297043.P158396814311402251

namespace A297043

/-- `A284256(lcm(7, A000040(n+2)))` -/
def P158396814311402251.Spec : Prop :=
  ∀ n, P158396814311402251.a n = A297043 (n + 1)

end A297043

/-! ## A297043.P1866401683140271945

`A039963(A187941(ceil((n+1)/14)))`
-/

namespace A297043.P1866401683140271945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (A187941 ⌈(n + 1 : ℚ) / 14⌉.toNat).toNat

end

end A297043.P1866401683140271945

namespace A297043

/-- `A039963(A187941(ceil((n+1)/14)))` -/
def P1866401683140271945.Spec : Prop :=
  ∀ n, P1866401683140271945.a n = A297043 (n + 1)

end A297043

/-! ## A297043.P5803379550871765176

`∑[A025455(A000124(2*n))]²%3`
-/

namespace A297043.P5803379550871765176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 (A000124 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) 3

end

end A297043.P5803379550871765176

namespace A297043

/-- `∑[A025455(A000124(2*n))]²%3` -/
def P5803379550871765176.Spec : Prop :=
  ∀ n, P5803379550871765176.a n = A297043 (n + 1)

end A297043

/-! ## A297043.P5620660705075456517

`A118175(A000196(A057356(n))!)`
-/

namespace A297043.P5620660705075456517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118175 (Nat.factorial (A000196 (A057356 n).toNat).toNat)

end

end A297043.P5620660705075456517

namespace A297043

/-- `A118175(A000196(A057356(n))!)` -/
def P5620660705075456517.Spec : Prop :=
  ∀ n, P5620660705075456517.a n = A297043 (n + 1)

end A297043

/-! ## A297043.P11371910921941075878

`A266502(A000196(A057356(n))!)`
-/

namespace A297043.P11371910921941075878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266502 (Nat.factorial (A000196 (A057356 n).toNat).toNat)

end

end A297043.P11371910921941075878

namespace A297043

/-- `A266502(A000196(A057356(n))!)` -/
def P11371910921941075878.Spec : Prop :=
  ∀ n, P11371910921941075878.a n = A297043 (n + 1)

end A297043

/-! ## A297043.P13660941591903427954

`A059995(A064097(p?[A007093(n)]))`
-/

namespace A297043.P13660941591903427954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A064097 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A297043.P13660941591903427954

namespace A297043

/-- `A059995(A064097(p?[A007093(n)]))` -/
def P13660941591903427954.Spec : Prop :=
  ∀ n, P13660941591903427954.a n = A297043 (n + 1)

end A297043

/-! ## A297043.P18332488657014871954

`A297497(∑[A025455(A000124(2*n))])`
-/

namespace A297043.P18332488657014871954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 (A000124 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297497 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A297043.P18332488657014871954

namespace A297043

/-- `A297497(∑[A025455(A000124(2*n))])` -/
def P18332488657014871954.Spec : Prop :=
  ∀ n, P18332488657014871954.a n = A297043 (n + 1)

end A297043

/-! ## A297043.P9378125374764957270

`val(A008578(n+3), A033677(A162527(n+9)))`
-/

namespace A297043.P9378125374764957270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008578 (n + 3)).toNat (A033677 (A162527 (n + 9)).toNat).toNat

end

end A297043.P9378125374764957270

namespace A297043

/-- `val(A008578(n+3), A033677(A162527(n+9)))` -/
def P9378125374764957270.Spec : Prop :=
  ∀ n, (P9378125374764957270.a n : ℤ) = A297043 (n + 1)

end A297043

/-! ## A297043.P1801429881369689593

`A001221(∏[A353786(n+1)])`
-/

namespace A297043.P1801429881369689593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A297043.P1801429881369689593

namespace A297043

/-- `A001221(∏[A353786(n+1)])` -/
def P1801429881369689593.Spec : Prop :=
  ∀ n, P1801429881369689593.a n = A297043 (n + 1)

end A297043

/-! ## A297043.P6018206434170047189

`A001222(A137355(∑[char[14*n]]))`
-/

namespace A297043.P6018206434170047189
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A137355 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A297043.P6018206434170047189

namespace A297043

/-- `A001222(A137355(∑[char[14*n]]))` -/
def P6018206434170047189.Spec : Prop :=
  ∀ n, P6018206434170047189.a n = A297043 (n + 1)

end A297043

/-!
# A297044: Number of pieces in the list d(m), d(m-1), ..., d(0) of base-16 digits of n; see Comments.

The programs for A297044, the canonical program `A297044.P13798135279491243698` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297044 has offset 1).

The definition of A297044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297044.P16524373060556509028

`A001221(∏[A001156(val(n+1, 2))])`
-/

namespace A297044.P16524373060556509028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A297044.P16524373060556509028

namespace A297044

/-- `A001221(∏[A001156(val(n+1, 2))])` -/
def P16524373060556509028.Spec : Prop :=
  ∀ n, P16524373060556509028.a n = A297044 (n + 1)

end A297044

/-! ## A297044.P2486672883131847930

`A001221(∏[A356758(val(n+1, 2))])`
-/

namespace A297044.P2486672883131847930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356758 (SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A297044.P2486672883131847930

namespace A297044

/-- `A001221(∏[A356758(val(n+1, 2))])` -/
def P2486672883131847930.Spec : Prop :=
  ∀ n, P2486672883131847930.a n = A297044 (n + 1)

end A297044

/-! ## A297044.P1289689016404863559

`A362422(4^floor(log2(sqrt(n+1))))`
-/

namespace A297044.P1289689016404863559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362422 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (⌊Real.logb 2 (Real.sqrt (n + 1 : ℝ))⌋ : ℤ))).toNat

end

end A297044.P1289689016404863559

namespace A297044

/-- `A362422(4^floor(log2(sqrt(n+1))))` -/
def P1289689016404863559.Spec : Prop :=
  ∀ n, P1289689016404863559.a n = A297044 (n + 1)

end A297044

/-! ## A297044.P14014509274212917018

`A319759(2^ceil(log2(log2(n+2))))%3`
-/

namespace A297044.P14014509274212917018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319759 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (Real.logb 2 (n + 2 : ℝ))⌉ : ℤ))).toNat) 3

end

end A297044.P14014509274212917018

namespace A297044

/-- `A319759(2^ceil(log2(log2(n+2))))%3` -/
def P14014509274212917018.Spec : Prop :=
  ∀ n, P14014509274212917018.a n = A297044 (n + 1)

end A297044

/-! ## A297044.P11084584115045299708

`1-A136522(A136494(n))`
-/

namespace A297044.P11084584115045299708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A136522 (A136494 n).toNat

end

end A297044.P11084584115045299708

namespace A297044

/-- `1-A136522(A136494(n))` -/
def P11084584115045299708.Spec : Prop :=
  ∀ n, P11084584115045299708.a n = A297044 (n + 1)

end A297044

/-! ## A297044.P14467932724626064124

`A294937(A000523(n+1)!)`
-/

namespace A297044.P14467932724626064124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294937 (Nat.factorial (A000523 (n + 1)).toNat)

end

end A297044.P14467932724626064124

namespace A297044

/-- `A294937(A000523(n+1)!)` -/
def P14467932724626064124.Spec : Prop :=
  ∀ n, P14467932724626064124.a n = A297044 (n + 1)

end A297044

/-! ## A297044.P17983345254347262740

`A251726(A212200(n+1))%2`
-/

namespace A297044.P17983345254347262740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251726 (A212200 (n + 1)).toNat) 2

end

end A297044.P17983345254347262740

namespace A297044

/-- `A251726(A212200(n+1))%2` -/
def P17983345254347262740.Spec : Prop :=
  ∀ n, P17983345254347262740.a n = A297044 (n + 1)

end A297044

/-! ## A297044.P9462639599629458099

`A353310(A288121(floor(log2(n+1))))`
-/

namespace A297044.P9462639599629458099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353310 (A288121 (Nat.log 2 (n + 1))).toNat

end

end A297044.P9462639599629458099

namespace A297044

/-- `A353310(A288121(floor(log2(n+1))))` -/
def P9462639599629458099.Spec : Prop :=
  ∀ n, P9462639599629458099.a n = A297044 (n + 1)

end A297044

/-! ## A297044.P3078296982478229092

`A005091(A035114(floor(log2(n+1))!))`
-/

namespace A297044.P3078296982478229092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005091 (A035114 (Nat.factorial (Nat.log 2 (n + 1)))).toNat

end

end A297044.P3078296982478229092

namespace A297044

/-- `A005091(A035114(floor(log2(n+1))!))` -/
def P3078296982478229092.Spec : Prop :=
  ∀ n, P3078296982478229092.a n = A297044 (n + 1)

end A297044

/-! ## A297044.P13798135279491243698

`A359326(A175144(floor(log2(n+1))!))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A297044

/-- `A359326(A175144(floor(log2(n+1))!))` -/
def P13798135279491243698.Spec : Prop :=
  ∀ n, P13798135279491243698.a n = A297044 (n + 1)

theorem P13798135279491243698.correct : P13798135279491243698.Spec := by
  intro n
  simp only [A297044, Nat.add_sub_cancel]

end A297044

/-! ## A297044.P6604484703053307885

`A004526(A004526(floor(log2(n+1))))^(3*(n+1))`
-/

namespace A297044.P6604484703053307885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004526 (Nat.log 2 (n + 1))).toNat ^ (3 * (n + 1))

end

end A297044.P6604484703053307885

namespace A297044

/-- `A004526(A004526(floor(log2(n+1))))^(3*(n+1))` -/
def P6604484703053307885.Spec : Prop :=
  ∀ n, P6604484703053307885.a n = A297044 (n + 1)

end A297044

/-! ## A297044.P4634804638388323697

`floor(atan(atan(A281545(4*n+3))))`
-/

namespace A297044.P4634804638388323697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (Real.arctan (A281545 (4 * n + 3) : ℝ))⌋

end

end A297044.P4634804638388323697

namespace A297044

/-- `floor(atan(atan(A281545(4*n+3))))` -/
def P4634804638388323697.Spec : Prop :=
  ∀ n, P4634804638388323697.a n = A297044 (n + 1)

end A297044

/-! ## A297044.P14678238727268290759

`A060967(val(∏[A014963(n+1)], 4))`
-/

namespace A297044.P14678238727268290759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060967 (SequenceMachineLib.valuation (∏ j ∈ Finset.range (n + 1), f1 j).toNat 4)

end

end A297044.P14678238727268290759

namespace A297044

/-- `A060967(val(∏[A014963(n+1)], 4))` -/
def P14678238727268290759.Spec : Prop :=
  ∀ n, P14678238727268290759.a n = A297044 (n + 1)

end A297044

/-! ## A297044.P14186270876524714773

`A309416(xor(1, A108037(n)))`
-/

namespace A297044.P14186270876524714773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309416 (Int.xor 1 (A108037 n)).toNat

end

end A297044.P14186270876524714773

namespace A297044

/-- `A309416(xor(1, A108037(n)))` -/
def P14186270876524714773.Spec : Prop :=
  ∀ n, P14186270876524714773.a n = A297044 (n + 1)

end A297044

/-! ## A297044.P1496572772984500076

`A297043(C(n, A297043(n+1)))`
-/

namespace A297044.P1496572772984500076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297043 (Nat.choose n (A297043 (n + 1)).toNat)

end

end A297044.P1496572772984500076

namespace A297044

/-- `A297043(C(n, A297043(n+1)))` -/
def P1496572772984500076.Spec : Prop :=
  ∀ n, P1496572772984500076.a n = A297044 (n + 1)

end A297044

/-! ## A297044.P2901679947720544114

`floor(∑[n/A230739(n+1)])`
-/

namespace A297044.P2901679947720544114
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A230739 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A297044.P2901679947720544114

namespace A297044

/-- `floor(∑[n/A230739(n+1)])` -/
def P2901679947720544114.Spec : Prop :=
  ∀ n, P2901679947720544114.a n = A297044 (n + 1)

end A297044

/-! ## A297044.P5504005634778429965

`floor(A225266(n+1)/A225265(n+3))`
-/

namespace A297044.P5504005634778429965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A225266 (n + 1) : ℚ) / (A225265 (n + 3) : ℚ)⌋

end

end A297044.P5504005634778429965

namespace A297044

/-- `floor(A225266(n+1)/A225265(n+3))` -/
def P5504005634778429965.Spec : Prop :=
  ∀ n, P5504005634778429965.a n = A297044 (n + 1)

end A297044

/-!
# A297045: Number of pieces in the list d(m), d(m-1), ..., d(0) of base-20 digits of n; see Comments.

The programs for A297045, the canonical program `A297045.P15563910075369030090` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297045 has offset 1).

The definition of A297045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 399 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297045.P15563910075369030090

`A025485(∑[A086080(n)]²)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A297045

/-- `A025485(∑[A086080(n)]²)` -/
def P15563910075369030090.Spec : Prop :=
  ∀ n, P15563910075369030090.a n = A297045 (n + 1)

theorem P15563910075369030090.correct : P15563910075369030090.Spec := by
  intro n
  simp only [A297045, Nat.add_sub_cancel]

end A297045

/-! ## A297045.P10178119141762074812

`round(A248638(n+2)/A039956(n+4))`
-/

namespace A297045.P10178119141762074812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A248638 (n + 2) : ℚ) / (A039956 (n + 4) : ℚ))

end

end A297045.P10178119141762074812

namespace A297045

/-- `round(A248638(n+2)/A039956(n+4))` -/
def P10178119141762074812.Spec : Prop :=
  ∀ n, P10178119141762074812.a n = A297045 (n + 1)

end A297045

/-! ## A297045.P7792587655516496344

`C(A078539(3*n+5), A161755(A207039(n+1)))`
-/

namespace A297045.P7792587655516496344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A078539 (3 * n + 5)).toNat (A161755 (A207039 (n + 1)).toNat).toNat

end

end A297045.P7792587655516496344

namespace A297045

/-- `C(A078539(3*n+5), A161755(A207039(n+1)))` -/
def P7792587655516496344.Spec : Prop :=
  ∀ n, (P7792587655516496344.a n : ℤ) = A297045 (n + 1)

end A297045

/-! ## A297045.P5086821866587896167

`A122204(∑[n*char[A002426(3*n+4)]])`
-/

namespace A297045.P5086821866587896167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (3 * n + 4)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122204 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A297045.P5086821866587896167

namespace A297045

/-- `A122204(∑[n*char[A002426(3*n+4)]])` -/
def P5086821866587896167.Spec : Prop :=
  ∀ n, P5086821866587896167.a n = A297045 (n + 1)

end A297045

/-! ## A297045.P4776717858484968482

`C(A034931(A161339(n+1)), A162211(3*n+1))`
-/

namespace A297045.P4776717858484968482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A034931 (A161339 (n + 1)).toNat).toNat (A162211 (3 * n + 1)).toNat

end

end A297045.P4776717858484968482

namespace A297045

/-- `C(A034931(A161339(n+1)), A162211(3*n+1))` -/
def P4776717858484968482.Spec : Prop :=
  ∀ n, (P4776717858484968482.a n : ℤ) = A297045 (n + 1)

end A297045

/-! ## A297045.P6949275419486665313

`A010059(p?[A048766(n)]!)`
-/

namespace A297045.P6949275419486665313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (Nat.factorial (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat)

end

end A297045.P6949275419486665313

namespace A297045

/-- `A010059(p?[A048766(n)]!)` -/
def P6949275419486665313.Spec : Prop :=
  ∀ n, P6949275419486665313.a n = A297045 (n + 1)

end A297045

/-! ## A297045.P5077211870404839930

`A267621(p?[A048766(n)]!)`
-/

namespace A297045.P5077211870404839930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267621 (Nat.factorial (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat)

end

end A297045.P5077211870404839930

namespace A297045

/-- `A267621(p?[A048766(n)]!)` -/
def P5077211870404839930.Spec : Prop :=
  ∀ n, P5077211870404839930.a n = A297045 (n + 1)

end A297045

/-! ## A297045.P8081003997359410596

`A000007(C(A295888(n+1), A296090(n+1)))`
-/

namespace A297045.P8081003997359410596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Nat.choose (A295888 (n + 1)).toNat (A296090 (n + 1)).toNat)

end

end A297045.P8081003997359410596

namespace A297045

/-- `A000007(C(A295888(n+1), A296090(n+1)))` -/
def P8081003997359410596.Spec : Prop :=
  ∀ n, P8081003997359410596.a n = A297045 (n + 1)

end A297045

/-! ## A297045.P2468418823033306759

`C(A258068(2*(n+1)), A162297(A108957(2*n+5)))`
-/

namespace A297045.P2468418823033306759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A258068 (2 * (n + 1))).toNat (A162297 (A108957 (2 * n + 5)).toNat).toNat

end

end A297045.P2468418823033306759

namespace A297045

/-- `C(A258068(2*(n+1)), A162297(A108957(2*n+5)))` -/
def P2468418823033306759.Spec : Prop :=
  ∀ n, (P2468418823033306759.a n : ℤ) = A297045 (n + 1)

end A297045

/-! ## A297045.P4337270449532360912

`A051904(A000041(A102684(n)))`
-/

namespace A297045.P4337270449532360912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A000041 (A102684 n).toNat).toNat

end

end A297045.P4337270449532360912

namespace A297045

/-- `A051904(A000041(A102684(n)))` -/
def P4337270449532360912.Spec : Prop :=
  ∀ n, P4337270449532360912.a n = A297045 (n + 1)

end A297045

/-! ## A297045.P10226765721883052859

`floor(atan(atan(A160808(n))))`
-/

namespace A297045.P10226765721883052859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (Real.arctan (A160808 n : ℝ))⌋

end

end A297045.P10226765721883052859

namespace A297045

/-- `floor(atan(atan(A160808(n))))` -/
def P10226765721883052859.Spec : Prop :=
  ∀ n, P10226765721883052859.a n = A297045 (n + 1)

end A297045

/-! ## A297045.P3732911598375952581

`val(A034386(n), 19)`
-/

namespace A297045.P3732911598375952581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A034386 n).toNat 19

end

end A297045.P3732911598375952581

namespace A297045

/-- `val(A034386(n), 19)` -/
def P3732911598375952581.Spec : Prop :=
  ∀ n, (P3732911598375952581.a n : ℤ) = A297045 (n + 1)

end A297045

/-! ## A297045.P10282861194325410071

`floor(∑[n/∑[A219525(n+5)²]])`
-/

namespace A297045.P10282861194325410071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219525 (n + 5) ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A297045.P10282861194325410071

namespace A297045

/-- `floor(∑[n/∑[A219525(n+5)²]])` -/
def P10282861194325410071.Spec : Prop :=
  ∀ n, P10282861194325410071.a n = A297045 (n + 1)

end A297045

/-!
# A297046: Number of pieces in the list d(m), d(m-1), ..., d(0) of base-60 digits of n; see Comments.

The programs for A297046, the canonical program `A297046.P2169155458548623246` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297046 has offset 1).

The definition of A297046 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297046.P4959574702262098115

`C(A163328(A077028(2*n+3)), A161776(2*(n+2)))`
-/

namespace A297046.P4959574702262098115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A163328 (A077028 (2 * n + 3)).toNat).toNat (A161776 (2 * (n + 2))).toNat

end

end A297046.P4959574702262098115

namespace A297046

/-- `C(A163328(A077028(2*n+3)), A161776(2*(n+2)))` -/
def P4959574702262098115.Spec : Prop :=
  ∀ n, (P4959574702262098115.a n : ℤ) = A297046 (n + 1)

end A297046

/-! ## A297046.P7446820326150489844

`C(A307012(3*n+1)², A161776(2*(n+2)))`
-/

namespace A297046.P7446820326150489844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A307012 (3 * n + 1) ^ 2).toNat (A161776 (2 * (n + 2))).toNat

end

end A297046.P7446820326150489844

namespace A297046

/-- `C(A307012(3*n+1)², A161776(2*(n+2)))` -/
def P7446820326150489844.Spec : Prop :=
  ∀ n, (P7446820326150489844.a n : ℤ) = A297046 (n + 1)

end A297046

/-! ## A297046.P2836872363875762527

`C(A112798(3*n+5), A162497(n+1))`
-/

namespace A297046.P2836872363875762527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A112798 (3 * n + 5)).toNat (A162497 (n + 1)).toNat

end

end A297046.P2836872363875762527

namespace A297046

/-- `C(A112798(3*n+5), A162497(n+1))` -/
def P2836872363875762527.Spec : Prop :=
  ∀ n, (P2836872363875762527.a n : ℤ) = A297046 (n + 1)

end A297046

/-! ## A297046.P17020943544379194280

`A233427(or(7, A218461(3*n+1)))`
-/

namespace A297046.P17020943544379194280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233427 (Int.lor 7 (A218461 (3 * n + 1))).toNat

end

end A297046.P17020943544379194280

namespace A297046

/-- `A233427(or(7, A218461(3*n+1)))` -/
def P17020943544379194280.Spec : Prop :=
  ∀ n, P17020943544379194280.a n = A297046 (n + 1)

end A297046

/-! ## A297046.P18298407516560948003

`A281116(or(7, A218461(3*n+1)))`
-/

namespace A297046.P18298407516560948003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (Int.lor 7 (A218461 (3 * n + 1))).toNat

end

end A297046.P18298407516560948003

namespace A297046

/-- `A281116(or(7, A218461(3*n+1)))` -/
def P18298407516560948003.Spec : Prop :=
  ∀ n, P18298407516560948003.a n = A297046 (n + 1)

end A297046

/-! ## A297046.P6657206801460053125

`floor(A004976(n)/A118950(3*n+1))`
-/

namespace A297046.P6657206801460053125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004976 n : ℚ) / (A118950 (3 * n + 1) : ℚ)⌋

end

end A297046.P6657206801460053125

namespace A297046

/-- `floor(A004976(n)/A118950(3*n+1))` -/
def P6657206801460053125.Spec : Prop :=
  ∀ n, P6657206801460053125.a n = A297046 (n + 1)

end A297046

/-! ## A297046.P94405686674559643

`C(A000030(3*n), A161776(2*(n+2)))`
-/

namespace A297046.P94405686674559643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000030 (3 * n)).toNat (A161776 (2 * (n + 2))).toNat

end

end A297046.P94405686674559643

namespace A297046

/-- `C(A000030(3*n), A161776(2*(n+2)))` -/
def P94405686674559643.Spec : Prop :=
  ∀ n, (P94405686674559643.a n : ℤ) = A297046 (n + 1)

end A297046

/-! ## A297046.P8405666046791363943

`floor(A274410(3*n+1)/A274362(n+1))`
-/

namespace A297046.P8405666046791363943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A274410 (3 * n + 1) : ℚ) / (A274362 (n + 1) : ℚ)⌋

end

end A297046.P8405666046791363943

namespace A297046

/-- `floor(A274410(3*n+1)/A274362(n+1))` -/
def P8405666046791363943.Spec : Prop :=
  ∀ n, P8405666046791363943.a n = A297046 (n + 1)

end A297046

/-! ## A297046.P8476930641637482412

`floor(A049482(3*n+1)/A320599(n+3))`
-/

namespace A297046.P8476930641637482412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049482 (3 * n + 1) : ℚ) / (A320599 (n + 3) : ℚ)⌋

end

end A297046.P8476930641637482412

namespace A297046

/-- `floor(A049482(3*n+1)/A320599(n+3))` -/
def P8476930641637482412.Spec : Prop :=
  ∀ n, P8476930641637482412.a n = A297046 (n + 1)

end A297046

/-! ## A297046.P15382320344519963255

`C(A000122(3*n+1), A161776(2*(n+2)))`
-/

namespace A297046.P15382320344519963255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000122 (3 * n + 1)).toNat (A161776 (2 * (n + 2))).toNat

end

end A297046.P15382320344519963255

namespace A297046

/-- `C(A000122(3*n+1), A161776(2*(n+2)))` -/
def P15382320344519963255.Spec : Prop :=
  ∀ n, (P15382320344519963255.a n : ℤ) = A297046 (n + 1)

end A297046

/-! ## A297046.P11591750442951052771

`A179184(A179184(3*n)+A178334(2*n+3))`
-/

namespace A297046.P11591750442951052771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 (A179184 (3 * n) + A178334 (2 * n + 3)).toNat

end

end A297046.P11591750442951052771

namespace A297046

/-- `A179184(A179184(3*n)+A178334(2*n+3))` -/
def P11591750442951052771.Spec : Prop :=
  ∀ n, P11591750442951052771.a n = A297046 (n + 1)

end A297046

/-! ## A297046.P2169155458548623246

`round(2*n/A188222(3*n+4))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A297046

/-- `round(2*n/A188222(3*n+4))` -/
def P2169155458548623246.Spec : Prop :=
  ∀ n, P2169155458548623246.a n = A297046 (n + 1)

theorem P2169155458548623246.correct : P2169155458548623246.Spec := by
  intro n
  simp only [A297046, Nat.add_sub_cancel]

end A297046

/-! ## A297046.P17851301096266225621

`floor(A297469(n)/A196276(3*n+2))`
-/

namespace A297046.P17851301096266225621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A297469 n : ℚ) / (A196276 (3 * n + 2) : ℚ)⌋

end

end A297046.P17851301096266225621

namespace A297046

/-- `floor(A297469(n)/A196276(3*n+2))` -/
def P17851301096266225621.Spec : Prop :=
  ∀ n, P17851301096266225621.a n = A297046 (n + 1)

end A297046

/-! ## A297046.P1976414074673319367

`floor(A297289(n+1)/A047615(3*n+4))`
-/

namespace A297046.P1976414074673319367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A297289 (n + 1) : ℚ) / (A047615 (3 * n + 4) : ℚ)⌋

end

end A297046.P1976414074673319367

namespace A297046

/-- `floor(A297289(n+1)/A047615(3*n+4))` -/
def P1976414074673319367.Spec : Prop :=
  ∀ n, P1976414074673319367.a n = A297046 (n + 1)

end A297046

/-! ## A297046.P6433319817341604549

`floor(A007504(3*n+1)/A299259(3*(n+1)))`
-/

namespace A297046.P6433319817341604549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007504 (3 * n + 1) : ℚ) / (A299259 (3 * (n + 1)) : ℚ)⌋

end

end A297046.P6433319817341604549

namespace A297046

/-- `floor(A007504(3*n+1)/A299259(3*(n+1)))` -/
def P6433319817341604549.Spec : Prop :=
  ∀ n, P6433319817341604549.a n = A297046 (n + 1)

end A297046

/-! ## A297046.P14960880482099565628

`floor(A096277(2*n+3)/A166370(3*(n+1)))`
-/

namespace A297046.P14960880482099565628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A096277 (2 * n + 3) : ℚ) / (A166370 (3 * (n + 1)) : ℚ)⌋

end

end A297046.P14960880482099565628

namespace A297046

/-- `floor(A096277(2*n+3)/A166370(3*(n+1)))` -/
def P14960880482099565628.Spec : Prop :=
  ∀ n, P14960880482099565628.a n = A297046 (n + 1)

end A297046

/-! ## A297046.P5760651176620810165

`round(A024787(2*n+1)/A024786(2*n+3))`
-/

namespace A297046.P5760651176620810165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A024787 (2 * n + 1) : ℚ) / (A024786 (2 * n + 3) : ℚ))

end

end A297046.P5760651176620810165

namespace A297046

/-- `round(A024787(2*n+1)/A024786(2*n+3))` -/
def P5760651176620810165.Spec : Prop :=
  ∀ n, P5760651176620810165.a n = A297046 (n + 1)

end A297046

/-! ## A297046.P7907510974316410413

`floor(A000040(n+3)/A313718(n+3))`
-/

namespace A297046.P7907510974316410413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 3) : ℚ) / (A313718 (n + 3) : ℚ)⌋

end

end A297046.P7907510974316410413

namespace A297046

/-- `floor(A000040(n+3)/A313718(n+3))` -/
def P7907510974316410413.Spec : Prop :=
  ∀ n, P7907510974316410413.a n = A297046 (n + 1)

end A297046

/-! ## A297046.P9619251036696638222

`floor(A111224(n+1)/A310444(n))`
-/

namespace A297046.P9619251036696638222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A111224 (n + 1) : ℚ) / (A310444 n : ℚ)⌋

end

end A297046.P9619251036696638222

namespace A297046

/-- `floor(A111224(n+1)/A310444(n))` -/
def P9619251036696638222.Spec : Prop :=
  ∀ n, P9619251036696638222.a n = A297046 (n + 1)

end A297046

/-!
# A297047: Number of edge covers in the n-wheel graph.

The programs for A297047, the canonical program `A297047.P2546281207521643737` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297047 has offset 1).

The definition of A297047 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A297047.P2546281207521643737

`4*a(n-1)-5*a(n-3)-2*a(n-4)` with `a(0)=0, a(1)=2, a(2)=10, a(3)=41`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A297047

/-- `4*a(n-1)-5*a(n-3)-2*a(n-4)` -/
def P2546281207521643737.Spec : Prop :=
  ∀ n, P2546281207521643737.a n = A297047 (n + 1)

theorem P2546281207521643737.correct : P2546281207521643737.Spec := by
  intro n
  simp only [A297047, Nat.add_sub_cancel]

end A297047

/-! ## A297047.P2016519885036064052

`A206776(n)-A000032(n)`
-/

namespace A297047.P2016519885036064052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206776 n - A000032 n

end

end A297047.P2016519885036064052

namespace A297047

/-- `A206776(n)-A000032(n)` -/
def P2016519885036064052.Spec : Prop :=
  ∀ n, P2016519885036064052.a n = A297047 (n + 1)

end A297047

/-! ## A297047.P14640097018594098174

`ogf((2x+2x^2+x^3)/(1-4x+5x^3+2x^4))`
-/

namespace A297047.P14640097018594098174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 2, 1] [1, -4, 0, 5, 2] n

end

end A297047.P14640097018594098174

namespace A297047

/-- `ogf((2x+2x^2+x^3)/(1-4x+5x^3+2x^4))` -/
def P14640097018594098174.Spec : Prop :=
  ∀ n, P14640097018594098174.a n = A297047 (n + 1)

end A297047

/-! ## A297047.P3651822203447129552

`A206776(n)-sqrt(A001254(n))`
-/

namespace A297047.P3651822203447129552
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206776 n : ℝ) - Real.sqrt (A001254 n : ℝ)

end

end A297047.P3651822203447129552

namespace A297047

/-- `A206776(n)-sqrt(A001254(n))` -/
def P3651822203447129552.Spec : Prop :=
  ∀ n, P3651822203447129552.a n = (A297047 (n + 1) : ℝ)

end A297047

/-! ## A297047.P16158873575020956803

`A206776(n)-Δ[A001610(n)]`
-/

namespace A297047.P16158873575020956803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206776 n - (f1 (n + 1) - f1 n)

end

end A297047.P16158873575020956803

namespace A297047

/-- `A206776(n)-Δ[A001610(n)]` -/
def P16158873575020956803.Spec : Prop :=
  ∀ n, P16158873575020956803.a n = A297047 (n + 1)

end A297047

/-! ## A297047.P10456915049460531858

`A206776(n)-Δ[A000204(n+1)]`
-/

namespace A297047.P10456915049460531858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206776 n - (f1 (n + 1) - f1 n)

end

end A297047.P10456915049460531858

namespace A297047

/-- `A206776(n)-Δ[A000204(n+1)]` -/
def P10456915049460531858.Spec : Prop :=
  ∀ n, P10456915049460531858.a n = A297047 (n + 1)

end A297047

/-! ## A297047.P1966963289867846983

`A000204(n+1)+A206776(n)-A000204(n+2)`
-/

namespace A297047.P1966963289867846983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) + (A206776 n - A000204 (n + 2))

end

end A297047.P1966963289867846983

namespace A297047

/-- `A000204(n+1)+A206776(n)-A000204(n+2)` -/
def P1966963289867846983.Spec : Prop :=
  ∀ n, P1966963289867846983.a n = A297047 (n + 1)

end A297047

/-! ## A297047.P6154686078340385132

`A364741(n)/(A206776(n)+A000032(n))`
-/

namespace A297047.P6154686078340385132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364741 n : ℚ) / (A206776 n + A000032 n : ℚ)

end

end A297047.P6154686078340385132

namespace A297047

/-- `A364741(n)/(A206776(n)+A000032(n))` -/
def P6154686078340385132.Spec : Prop :=
  ∀ n, P6154686078340385132.a n = (A297047 (n + 1) : ℚ)

end A297047

/-!
# A297053: Sum of the larger parts of the partitions of n into two parts such that the smaller part does not divide the larger.

The programs for A297053, the canonical program `A297053.P8960800206047863775` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297053 has offset 1).

The definition of A297053 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297053.P8960800206047863775

`∑[gcd(n, ∑[n])]-∑{d}[n+1, 1-#+n]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A297053

/-- `∑[gcd(n, ∑[n])]-∑{d}[n+1, 1-#+n]` -/
def P8960800206047863775.Spec : Prop :=
  ∀ n, P8960800206047863775.a n = A297053 (n + 1)

theorem P8960800206047863775.correct : P8960800206047863775.Spec := by
  intro n
  simp only [A297053, Nat.add_sub_cancel]

end A297053

/-! ## A297053.P5143199126244983979

`∑[lcm(2, n)/2]-∑{d}[n+1, 1-#+n]`
-/

namespace A297053.P5143199126244983979
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ d ∈ Nat.divisors (f2 n), (1 - (d : ℤ) + (n : ℤ)) : ℤ) : ℚ)

end

end A297053.P5143199126244983979

namespace A297053

/-- `∑[lcm(2, n)/2]-∑{d}[n+1, 1-#+n]` -/
def P5143199126244983979.Spec : Prop :=
  ∀ n, P5143199126244983979.a n = (A297053 (n + 1) : ℚ)

end A297053

/-! ## A297053.P14637769454383728543

`∑[n*2^((1-n)%2)]-∑{d}[n+1, 1-#+n]`
-/

namespace A297053.P14637769454383728543
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (2 : ℚ) ^ (Int.tmod (1 - (n : ℤ)) 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ d ∈ Nat.divisors (f2 n), (1 - (d : ℤ) + (n : ℤ)) : ℤ) : ℚ)

end

end A297053.P14637769454383728543

namespace A297053

/-- `∑[n*2^((1-n)%2)]-∑{d}[n+1, 1-#+n]` -/
def P14637769454383728543.Spec : Prop :=
  ∀ n, P14637769454383728543.a n = (A297053 (n + 1) : ℚ)

end A297053

/-! ## A297053.P5473444875780091591

`Δ[n/2*floor((n/2)²)]-∑{d}[n+1, 1-#+n]`
-/

namespace A297053.P5473444875780091591
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (⌊((n : ℚ) / 2) ^ 2⌋ : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((∑ d ∈ Nat.divisors (f2 n), (1 - (d : ℤ) + (n : ℤ)) : ℤ) : ℚ)

end

end A297053.P5473444875780091591

namespace A297053

/-- `Δ[n/2*floor((n/2)²)]-∑{d}[n+1, 1-#+n]` -/
def P5473444875780091591.Spec : Prop :=
  ∀ n, P5473444875780091591.a n = (A297053 (n + 1) : ℚ)

end A297053

/-! ## A297053.P14829455335254207157

`∑[gcd(n, ∑[n])]-A094471(n+1)`
-/

namespace A297053.P14829455335254207157
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A094471 (n + 1)

end

end A297053.P14829455335254207157

namespace A297053

/-- `∑[gcd(n, ∑[n])]-A094471(n+1)` -/
def P14829455335254207157.Spec : Prop :=
  ∀ n, P14829455335254207157.a n = A297053 (n + 1)

end A297053

/-! ## A297053.P9730982731912969073

`abs(∑{d}[n+1, 1-#+n]-A001318(n))`
-/

namespace A297053.P9730982731912969073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), (1 - (d : ℤ) + (n : ℤ)) - A001318 n|

end

end A297053.P9730982731912969073

namespace A297053

/-- `abs(∑{d}[n+1, 1-#+n]-A001318(n))` -/
def P9730982731912969073.Spec : Prop :=
  ∀ n, P9730982731912969073.a n = A297053 (n + 1)

end A297053

/-! ## A297053.P1208567880384816706

`A001318(n)-A094471(n+1)`
-/

namespace A297053.P1208567880384816706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n - A094471 (n + 1)

end

end A297053.P1208567880384816706

namespace A297053

/-- `A001318(n)-A094471(n+1)` -/
def P1208567880384816706.Spec : Prop :=
  ∀ n, P1208567880384816706.a n = A297053 (n + 1)

end A297053

/-! ## A297053.P3631504156647362866

`∑[A026741(n)]-A094471(n+1)`
-/

namespace A297053.P3631504156647362866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A094471 (n + 1)

end

end A297053.P3631504156647362866

namespace A297053

/-- `∑[A026741(n)]-A094471(n+1)` -/
def P3631504156647362866.Spec : Prop :=
  ∀ n, P3631504156647362866.a n = A297053 (n + 1)

end A297053

/-! ## A297053.P4033228341871266234

`A152749(n)/2-A094471(n+1)`
-/

namespace A297053.P4033228341871266234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152749 n : ℚ) / 2 - (A094471 (n + 1) : ℚ)

end

end A297053.P4033228341871266234

namespace A297053

/-- `A152749(n)/2-A094471(n+1)` -/
def P4033228341871266234.Spec : Prop :=
  ∀ n, P4033228341871266234.a n = (A297053 (n + 1) : ℚ)

end A297053

/-! ## A297053.P14405308505157613722

`Δ[A034828(n)]-A094471(n+1)`
-/

namespace A297053.P14405308505157613722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A094471 (n + 1)

end

end A297053.P14405308505157613722

namespace A297053

/-- `Δ[A034828(n)]-A094471(n+1)` -/
def P14405308505157613722.Spec : Prop :=
  ∀ n, P14405308505157613722.a n = A297053 (n + 1)

end A297053

/-!
# A297054: The coefficients of the product (1-x^2)(1-x^3)(1-x^4)... / (1+x).

The programs for A297054, the canonical program `A297054.P2331804208615802623` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297054 has offset 0).

The definition of A297054 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297054.P2331804208615802623

`A078616(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A297054

/-- `A078616(n)-a(n-1)` -/
def P2331804208615802623.Spec : Prop :=
  ∀ n, P2331804208615802623.a n = A297054 n

theorem P2331804208615802623.correct : P2331804208615802623.Spec := by
  intro n
  simp only [A297054]

end A297054

/-! ## A297054.P5299520206475541167

`∑[A010815(n)-a(n-1)]` with `a(0)=1`
-/

namespace A297054.P5299520206475541167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A010815 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297054.P5299520206475541167

namespace A297054

/-- `∑[A010815(n)-a(n-1)]` -/
def P5299520206475541167.Spec : Prop :=
  ∀ n, P5299520206475541167.a n = A297054 n

end A297054

/-! ## A297054.P6477478716266572021

`1-(∑[A257628(n)]+a(n-1))` with `a(0)=1`
-/

namespace A297054.P6477478716266572021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257628 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1))

end

end A297054.P6477478716266572021

namespace A297054

/-- `1-(∑[A257628(n)]+a(n-1))` -/
def P6477478716266572021.Spec : Prop :=
  ∀ n, P6477478716266572021.a n = A297054 n

end A297054

/-! ## A297054.P14545782821836436208

`∑[∑[A121373(n)]*A033999(n)]`
-/

namespace A297054.P14545782821836436208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297054.P14545782821836436208

namespace A297054

/-- `∑[∑[A121373(n)]*A033999(n)]` -/
def P14545782821836436208.Spec : Prop :=
  ∀ n, P14545782821836436208.a n = A297054 n

end A297054

/-! ## A297054.P16590604133687519075

`1-(A160096(n)+a(n-1))` with `a(0)=1`
-/

namespace A297054.P16590604133687519075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (A160096 n + a (n - 1))

end

end A297054.P16590604133687519075

namespace A297054

/-- `1-(A160096(n)+a(n-1))` -/
def P16590604133687519075.Spec : Prop :=
  ∀ n, P16590604133687519075.a n = A297054 n

end A297054

/-! ## A297054.P15087579627865114255

`∑[A067661(n)-A067659(n)-a(n-1)]` with `a(0)=1`
-/

namespace A297054.P15087579627865114255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A067661 n - A067659 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297054.P15087579627865114255

namespace A297054

/-- `∑[A067661(n)-A067659(n)-a(n-1)]` -/
def P15087579627865114255.Spec : Prop :=
  ∀ n, P15087579627865114255.a n = A297054 n

end A297054

/-! ## A297054.P16615135563693513100

`A238209(n+2)-A238217(n+2)`
-/

namespace A297054.P16615135563693513100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238209 (n + 2) - A238217 (n + 2)

end

end A297054.P16615135563693513100

namespace A297054

/-- `A238209(n+2)-A238217(n+2)` -/
def P16615135563693513100.Spec : Prop :=
  ∀ n, P16615135563693513100.a n = A297054 n

end A297054

/-! ## A297054.P17235154243795746787

`∑[A007706(n)-(a(n-1)+1)]` with `a(0)=1`
-/

namespace A297054.P17235154243795746787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A007706 n - (f1 (n - 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297054.P17235154243795746787

namespace A297054

/-- `∑[A007706(n)-(a(n-1)+1)]` -/
def P17235154243795746787.Spec : Prop :=
  ∀ n, P17235154243795746787.a n = A297054 n

end A297054

/-! ## A297054.P16627008340563383938

`-A322212(∑[n+3])`
-/

namespace A297054.P16627008340563383938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A322212 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A297054.P16627008340563383938

namespace A297054

/-- `-A322212(∑[n+3])` -/
def P16627008340563383938.Spec : Prop :=
  ∀ n, P16627008340563383938.a n = A297054 n

end A297054

/-!
# A297062: Starting with a(1) = 0, a(2) = 1, a(n) = smallest nonnegative integer that shares all digits with previous terms. No repeated digits are allowed.

The programs for A297062, there is no canonical definition to state claims against.
-/

/-! ## A297062.P14637785537999140787

`A199168(A028310(n))+char[1]`
-/

namespace A297062.P14637785537999140787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199168 (A028310 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A297062.P14637785537999140787

/-! ## A297062.P18252858035389295659

`∪[A199168(n+1), A016783(n)]`
-/

namespace A297062.P18252858035389295659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016783 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A297062.P18252858035389295659

/-! ## A297062.P16244036526737454193

`∪[A199168(n+1), A016818(n)]`
-/

namespace A297062.P16244036526737454193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016818 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A297062.P16244036526737454193

/-! ## A297062.P2808433341985558181

`∪[A199168(n+1), A016819(n)]`
-/

namespace A297062.P2808433341985558181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016819 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A297062.P2808433341985558181

/-! ## A297062.P18349694568635093462

`∪[A199168(n+1), A016866(n)]`
-/

namespace A297062.P18349694568635093462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016866 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A297062.P18349694568635093462

/-!
# A297063: Square roots of discriminants of Galois cubic number fields possessing a norm-Euclidean ideal class.

The programs for A297063, there is no canonical definition to state claims against.
-/

/-! ## A297063.P5405311111460291194

`∪[A185720(n+1), A139613(n)]`
-/

namespace A297063.P5405311111460291194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139613 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A297063.P5405311111460291194

/-! ## A297063.P9519010300280897032

`∪[A185720(n+1), Δ[A290813(n)]]`
-/

namespace A297063.P9519010300280897032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185720 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290813 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A297063.P9519010300280897032

/-! ## A297063.P2119149894245376398

`∪[A003215(n+1), A185720(n+1)]`
-/

namespace A297063.P2119149894245376398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A297063.P2119149894245376398

/-! ## A297063.P3441940929532429976

`∪[A185718(n+1)+3, A185720(n+1)]`
-/

namespace A297063.P3441940929532429976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185718 (n + 1) + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A297063.P3441940929532429976

/-! ## A297063.P3170716438425965122

`∪[A185375(3*(n+1)), A185720(n+1)]`
-/

namespace A297063.P3170716438425965122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185375 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A297063.P3170716438425965122

/-!
# A297064: Number of maximal matchings in the n-dipyramidal graph.

The programs for A297064, there is no canonical definition to state claims against.
-/

/-! ## A297064.P5307589302823399313

`A175027(A000079(n))+(n+1)*∏{p}[n+1, #-1/#]`
-/

namespace A297064.P5307589302823399313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175027 (A000079 n).toNat : ℚ) + (n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℚ) - 1 / (p : ℚ)))

end

end A297064.P5307589302823399313

/-! ## A297064.P16615929443380887274

`record[A000924(A178182(n+1)+A006504(n+1))]`
-/

namespace A297064.P16615929443380887274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000924 (A178182 (n + 1) + A006504 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297064.P16615929443380887274

/-! ## A297064.P545976780604600781

`A178858(A062355(3*(n+1)))/A237271(2*n+3)`
-/

namespace A297064.P545976780604600781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178858 (A062355 (3 * (n + 1))).toNat : ℚ) / (A237271 (2 * n + 3) : ℚ)

end

end A297064.P545976780604600781

/-!
# A297065: Starting with a(1) = 0, a(2) = 1, a(n) = smallest nonnegative integer not yet in the sequence that shares all digits with previous terms.

The programs for A297065, there is no canonical definition to state claims against.
-/

/-! ## A297065.P4379028866420153009

`∪[A107411(n), A028310(A107411(n))]`
-/

namespace A297065.P4379028866420153009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107411 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A107411 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A297065.P4379028866420153009

/-! ## A297065.P827657740730494909

`eq[A004427(n), A009531(A349141(n+1))]`
-/

namespace A297065.P827657740730494909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A349141 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297065.P827657740730494909

/-!
# A297066: Number of n X n 0..1 arrays with no 1 adjacent to 1 king-move neighboring 1.

The programs for A297066, there is no canonical definition to state claims against.
-/

/-! ## A297066.P6852237889459550983

`A297073(∑[4*n]+1)`
-/

namespace A297066.P6852237889459550983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297073 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297066.P6852237889459550983

/-! ## A297066.P4403828974773616118

`record[A297073(A330613(n+1))]`
-/

namespace A297066.P4403828974773616118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297073 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297066.P4403828974773616118

/-! ## A297066.P15427731305970118754

`record[A003982(n)*A297073(n+1)]`
-/

namespace A297066.P15427731305970118754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A297073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297066.P15427731305970118754

/-! ## A297066.P9905775377229882849

`lcm(A033999(n), A297073(A001844(n)))`
-/

namespace A297066.P9905775377229882849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A297073 (A001844 n).toNat)

end

end A297066.P9905775377229882849

/-! ## A297066.P12495366078826885715

`A297073(A001844(n))+A230533(n+1)`
-/

namespace A297066.P12495366078826885715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297073 (A001844 n).toNat + A230533 (n + 1)

end

end A297066.P12495366078826885715

/-!
# A297067: Number of n X 2 0..1 arrays with no 1 adjacent to 1 king-move neighboring 1.

The programs for A297067, the canonical program `A297067.P14311026702403769298` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297067 has offset 1).

The definition of A297067 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297067.P14311026702403769298

`4*a(n-1)-a(n-2)-a(n-3)-4*a(n-4)-8*a(n-5)` with `a(0)=3, a(1)=10, a(2)=32, a(3)=103, a(4)=350`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A297067

/-- `4*a(n-1)-a(n-2)-a(n-3)-4*a(n-4)-8*a(n-5)` -/
def P14311026702403769298.Spec : Prop :=
  ∀ n, P14311026702403769298.a n = A297067 (n + 1)

theorem P14311026702403769298.correct : P14311026702403769298.Spec := by
  intro n
  simp only [A297067, Nat.add_sub_cancel]

end A297067

/-! ## A297067.P9403743585898028614

`A297073(∑[n+1]+2)`
-/

namespace A297067.P9403743585898028614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297073 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297067.P9403743585898028614

namespace A297067

/-- `A297073(∑[n+1]+2)` -/
def P9403743585898028614.Spec : Prop :=
  ∀ n, P9403743585898028614.a n = A297067 (n + 1)

end A297067

/-! ## A297067.P5678824117566704643

`A291168(n)*A297073(A000096(n)+3)`
-/

namespace A297067.P5678824117566704643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291168 n * A297073 (A000096 n + 3).toNat

end

end A297067.P5678824117566704643

namespace A297067

/-- `A291168(n)*A297073(A000096(n)+3)` -/
def P5678824117566704643.Spec : Prop :=
  ∀ n, P5678824117566704643.a n = A297067 (n + 1)

end A297067

/-! ## A297067.P6932753559494060658

`A297073(A000096(n)+3)%A297068(n+1)`
-/

namespace A297067.P6932753559494060658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297073 (A000096 n + 3).toNat) (A297068 (n + 1))

end

end A297067.P6932753559494060658

namespace A297067

/-- `A297073(A000096(n)+3)%A297068(n+1)` -/
def P6932753559494060658.Spec : Prop :=
  ∀ n, P6932753559494060658.a n = A297067 (n + 1)

end A297067

/-! ## A297067.P10539710610704349726

`A297073(A000096(n+1))/A291168(n+1)`
-/

namespace A297067.P10539710610704349726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297073 (A000096 (n + 1)).toNat : ℚ) / (A291168 (n + 1) : ℚ)

end

end A297067.P10539710610704349726

namespace A297067

/-- `A297073(A000096(n+1))/A291168(n+1)` -/
def P10539710610704349726.Spec : Prop :=
  ∀ n, P10539710610704349726.a n = (A297067 (n + 1) : ℚ)

end A297067

/-!
# A297068: Number of nX3 0..1 arrays with no 1 adjacent to 1 king-move neighboring 1.

The programs for A297068, there is no canonical definition to state claims against.
-/

/-! ## A297068.P16881481684957649547

`A297073(∑[n+2]+4)`
-/

namespace A297068.P16881481684957649547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297073 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297068.P16881481684957649547

/-! ## A297068.P4434304949640245721

`or(A102683(n), A297073(A167614(n+1)))`
-/

namespace A297068.P4434304949640245721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102683 n) (A297073 (A167614 (n + 1)).toNat)

end

end A297068.P4434304949640245721

/-! ## A297068.P11602974094948414706

`A297073(A167614(n+1))%A251222(n+1)`
-/

namespace A297068.P11602974094948414706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297073 (A167614 (n + 1)).toNat) (A251222 (n + 1))

end

end A297068.P11602974094948414706

/-! ## A297068.P3034070216194787803

`lcm(A008836(n+1), A297073(A167614(n+1)))`
-/

namespace A297068.P3034070216194787803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A297073 (A167614 (n + 1)).toNat)

end

end A297068.P3034070216194787803

/-! ## A297068.P14326670082601892170

`or(floor(acot(n)), A297073(A034856(n+2)))`
-/

namespace A297068.P14326670082601892170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A297073 (A034856 (n + 2)).toNat)

end

end A297068.P14326670082601892170

/-!
# A297069: Number of nX4 0..1 arrays with no 1 adjacent to 1 king-move neighboring 1.

The programs for A297069, there is no canonical definition to state claims against.
-/

/-! ## A297069.P3179613544911386191

`A297073(A374004(n+1))`
-/

namespace A297069.P3179613544911386191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297073 (A374004 (n + 1)).toNat

end

end A297069.P3179613544911386191

/-! ## A297069.P349229698194873376

`A297073(A141214(n)+7)`
-/

namespace A297069.P349229698194873376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297073 (A141214 n + 7).toNat

end

end A297069.P349229698194873376

/-! ## A297069.P15668954638910933137

`A297073(A052905(n)+9)`
-/

namespace A297069.P15668954638910933137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297073 (A052905 n + 9).toNat

end

end A297069.P15668954638910933137

/-! ## A297069.P6030303324287225832

`A297073(A055999(n)+10)`
-/

namespace A297069.P6030303324287225832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297073 (A055999 n + 10).toNat

end

end A297069.P6030303324287225832

/-! ## A297069.P4609039478306009817

`A297073(A167614(n+2)+1)`
-/

namespace A297069.P4609039478306009817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297073 (A167614 (n + 2) + 1).toNat

end

end A297069.P4609039478306009817

/-!
# A297070: Number of nX5 0..1 arrays with no 1 adjacent to 1 king-move neighboring 1.

The programs for A297070, there is no canonical definition to state claims against.
-/

/-! ## A297070.P17536907012121100084

`A297073(A374005(n+1))`
-/

namespace A297070.P17536907012121100084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297073 (A374005 (n + 1)).toNat

end

end A297070.P17536907012121100084

/-! ## A297070.P17052850799714436496

`A297073(Δ[A264443(n)])`
-/

namespace A297070.P17052850799714436496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297073 (f1 (n + 1) - f1 n).toNat

end

end A297070.P17052850799714436496

/-! ## A297070.P14264706642753239150

`A297073(A046691(n+3))`
-/

namespace A297070.P14264706642753239150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297073 (A046691 (n + 3)).toNat

end

end A297070.P14264706642753239150

/-! ## A297070.P10659442626062598499

`A297073(eq[4, A193592(n)])`
-/

namespace A297070.P10659442626062598499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297073 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297070.P10659442626062598499

/-! ## A297070.P14468641271446932910

`A297073(Δ[A023545(n+1)])`
-/

namespace A297070.P14468641271446932910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297073 (f1 (n + 1) - f1 n).toNat

end

end A297070.P14468641271446932910

/-!
# A297071: Number of n X 6 0..1 arrays with no 1 adjacent to 1 king-move neighboring 1.

The programs for A297071, there is no canonical definition to state claims against.
-/

/-! ## A297071.P9597860003082195446

`A297073(A374007(n+1))`
-/

namespace A297071.P9597860003082195446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297073 (A374007 (n + 1)).toNat

end

end A297071.P9597860003082195446

/-! ## A297071.P16337820566373115170

`A297073(Δ[A023545(n+1)]+10)`
-/

namespace A297071.P16337820566373115170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297073 (f1 (n + 1) - f1 n + 10).toNat

end

end A297071.P16337820566373115170

/-! ## A297071.P9468009738673750947

`A297073(A052905(n+3))`
-/

namespace A297071.P9468009738673750947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297073 (A052905 (n + 3)).toNat

end

end A297071.P9468009738673750947

/-! ## A297071.P16259965229245744149

`A297073(eq[3, A219347(n)])`
-/

namespace A297071.P16259965229245744149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297073 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297071.P16259965229245744149

/-! ## A297071.P16171814893362729859

`A297073(eq[5, A193592(n)])`
-/

namespace A297071.P16171814893362729859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297073 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297071.P16171814893362729859

/-!
# A297072: Number of nX7 0..1 arrays with no 1 adjacent to 1 king-move neighboring 1.

The programs for A297072, there is no canonical definition to state claims against.
-/

/-! ## A297072.P18445690597403365271

`A297073(A374008(n+1))`
-/

namespace A297072.P18445690597403365271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297073 (A374008 (n + 1)).toNat

end

end A297072.P18445690597403365271

/-! ## A297072.P2629832932039932225

`A297073(A167614(n+5)+4)`
-/

namespace A297072.P2629832932039932225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297073 (A167614 (n + 5) + 4).toNat

end

end A297072.P2629832932039932225

/-! ## A297072.P6530296990938835772

`A297073(A000124(n+7)-(n+1))`
-/

namespace A297072.P6530296990938835772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297073 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A297072.P6530296990938835772

/-! ## A297072.P6955386235203347870

`A297073(A055999(n+4))`
-/

namespace A297072.P6955386235203347870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297073 (A055999 (n + 4)).toNat

end

end A297072.P6955386235203347870

/-! ## A297072.P7010923180595681809

`A297073(eq[4, A219347(n)])`
-/

namespace A297072.P7010923180595681809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297073 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297072.P7010923180595681809

/-!
# A297073: T(n,k)=Number of nXk 0..1 arrays with no 1 adjacent to 1 king-move neighboring 1.

The programs for A297073, there is no canonical definition to state claims against.
-/

/-! ## A297073.P397169658237562343

`A059473(n)+A047999(A082449(n))`
-/

namespace A297073.P397169658237562343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059473 n + A047999 (A082449 n).toNat

end

end A297073.P397169658237562343

/-! ## A297073.P2888717478909577054

`A336923(A004110(n))+A059473(n)`
-/

namespace A297073.P2888717478909577054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336923 (A004110 n).toNat + A059473 n

end

end A297073.P2888717478909577054

/-! ## A297073.P15679676570003454933

`A220070(A032555(n+1))+A022167(n)`
-/

namespace A297073.P15679676570003454933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220070 (A032555 (n + 1)).toNat + A022167 n

end

end A297073.P15679676570003454933

/-! ## A297073.P12534493159952607064

`A002024(A257623(n)+A032555(n+1))`
-/

namespace A297073.P12534493159952607064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A257623 n + A032555 (n + 1)).toNat

end

end A297073.P12534493159952607064

/-! ## A297073.P268060890824752311

`A302741(n+1)+A002654(A004110(n))`
-/

namespace A297073.P268060890824752311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (n + 1) + A002654 (A004110 n).toNat

end

end A297073.P268060890824752311

/-!
# A297074: Number of ways of inserting parentheses in x^x^...^x (with n x's) whose result is an integer where x = sqrt(2).

The programs for A297074, there is no canonical definition to state claims against.
-/

/-! ## A297074.P6743283908347942500

`floor(sqrt(∏[(∑[n+5]+6)/15]))`
-/

namespace A297074.P6743283908347942500
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j + 6 : ℕ) : ℚ) / 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((∏ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ)⌋

end

end A297074.P6743283908347942500

/-! ## A297074.P10140410043357762200

`round(sqrt(A263575(n)/11))`
-/

namespace A297074.P10140410043357762200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A263575 n : ℚ) / 11 : ℝ))

end

end A297074.P10140410043357762200

/-! ## A297074.P3872092676472100028

`Δ[round(root(A243953(n), 4))]`
-/

namespace A297074.P3872092676472100028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A243953 n : ℝ) ^ (1 / (4 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A297074.P3872092676472100028

/-! ## A297074.P10716771254015820251

`A076777(record[gcd(n, ∑[n])])`
-/

namespace A297074.P10716771254015820251
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076777 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A297074.P10716771254015820251

/-! ## A297074.P7007828840878012782

`A076777(abs(1-2*n))`
-/

namespace A297074.P7007828840878012782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076777 |1 - (2 * n : ℤ)|.toNat

end

end A297074.P7007828840878012782

/-!
# A297077: Number of distinct row and column sums for n X n (0, 1)-matrices.

The programs for A297077, there is no canonical definition to state claims against.
-/

/-! ## A297077.P281664511333935408

`A328887(∑[4*n])`
-/

namespace A297077.P281664511333935408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328887 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A297077.P281664511333935408

/-! ## A297077.P8547293453936627074

`record[A003982(n)*A328887(n)]`
-/

namespace A297077.P8547293453936627074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A328887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297077.P8547293453936627074

/-! ## A297077.P1688561031568955848

`record[gcd(A008482(n), A328887(n))]`
-/

namespace A297077.P1688561031568955848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A328887 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297077.P1688561031568955848

/-! ## A297077.P15092488062400655322

`record[root(A328887(n), A253146(n+1))]`
-/

namespace A297077.P15092488062400655322
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A328887 n : ℝ) ^ (1 / (A253146 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297077.P15092488062400655322

/-! ## A297077.P1049032790691959680

`gcd(A000038(n), A328887(A046092(n)))`
-/

namespace A297077.P1049032790691959680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A328887 (A046092 n).toNat)

end

end A297077.P1049032790691959680

/-!
# A297078: Number of n X n 0..1 arrays with no 1 adjacent to 2 king-move neighboring 1's.

The programs for A297078, there is no canonical definition to state claims against.
-/

/-! ## A297078.P3173748391018075037

`A297085(∑[4*n]+1)`
-/

namespace A297078.P3173748391018075037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297085 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297078.P3173748391018075037

/-! ## A297078.P14999263539347644115

`record[gcd(A114327(n), A297085(n+1))]`
-/

namespace A297078.P14999263539347644115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A297085 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297078.P14999263539347644115

/-! ## A297078.P11505707206193080441

`A007318(C(3, n))*A297085(A001844(n))`
-/

namespace A297078.P11505707206193080441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A297085 (A001844 n).toNat

end

end A297078.P11505707206193080441

/-! ## A297078.P1531804532178245403

`A297085(A001844(n))+A008683(4*(n+1))`
-/

namespace A297078.P1531804532178245403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297085 (A001844 n).toNat + A008683 (4 * (n + 1))

end

end A297078.P1531804532178245403

/-! ## A297078.P450783996899221213

`A297085(A001844(n))+A000045(C(n, n+1))`
-/

namespace A297078.P450783996899221213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297085 (A001844 n).toNat + A000045 (Nat.choose n (n + 1))

end

end A297078.P450783996899221213

/-!
# A297079: Number of n X 2 0..1 arrays with no 1 adjacent to 2 king-move neighboring 1s.

The programs for A297079, there is no canonical definition to state claims against.
-/

/-! ## A297079.P9202712340662154967

`A297085(∑[n+1]+2)`
-/

namespace A297079.P9202712340662154967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297085 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297079.P9202712340662154967

/-! ## A297079.P15574657648519195028

`lcm(2, A297085(A133263(n+1)))`
-/

namespace A297079.P15574657648519195028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A297085 (A133263 (n + 1)).toNat)

end

end A297079.P15574657648519195028

/-! ## A297079.P17191980809857839491

`A033999(2*n)*A297085(A133263(n+1))`
-/

namespace A297079.P17191980809857839491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A297085 (A133263 (n + 1)).toNat

end

end A297079.P17191980809857839491

/-! ## A297079.P5945319259877912679

`A297085(A133263(n+1))%A042112(n+1)`
-/

namespace A297079.P5945319259877912679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297085 (A133263 (n + 1)).toNat) (A042112 (n + 1))

end

end A297079.P5945319259877912679

/-! ## A297079.P808669653597032768

`record[A297085(Δ[A003453(n+5)])]`
-/

namespace A297079.P808669653597032768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297085 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297079.P808669653597032768

/-!
# A297080: Number of n X 3 0..1 arrays with no 1 adjacent to 2 king-move neighboring 1's.

The programs for A297080, there is no canonical definition to state claims against.
-/

/-! ## A297080.P11615234460680025905

`A297085(∑[n+2]+4)`
-/

namespace A297080.P11615234460680025905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297085 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297080.P11615234460680025905

/-! ## A297080.P12919025555181599901

`A297085(A167614(n+1))+A185284(n)`
-/

namespace A297080.P12919025555181599901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297085 (A167614 (n + 1)).toNat + A185284 n

end

end A297080.P12919025555181599901

/-! ## A297080.P17544037849299624039

`A297085(A167614(n+1))%A017456(n)`
-/

namespace A297080.P17544037849299624039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297085 (A167614 (n + 1)).toNat) (A017456 n)

end

end A297080.P17544037849299624039

/-! ## A297080.P644040559190120721

`or(A000007(n), A297085(A167614(n+1)))`
-/

namespace A297080.P644040559190120721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A297085 (A167614 (n + 1)).toNat)

end

end A297080.P644040559190120721

/-! ## A297080.P795055038734827931

`A297085(A167614(n+1))+A034490(n+1)`
-/

namespace A297080.P795055038734827931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297085 (A167614 (n + 1)).toNat + A034490 (n + 1)

end

end A297080.P795055038734827931

/-!
# A297081: Number of nX4 0..1 arrays with no 1 adjacent to 2 king-move neighboring 1s.

The programs for A297081, there is no canonical definition to state claims against.
-/

/-! ## A297081.P12900110153146940987

`A297085(A374004(n+1))`
-/

namespace A297081.P12900110153146940987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297085 (A374004 (n + 1)).toNat

end

end A297081.P12900110153146940987

/-! ## A297081.P16021616446546180905

`A297085(A141214(n)+7)`
-/

namespace A297081.P16021616446546180905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297085 (A141214 n + 7).toNat

end

end A297081.P16021616446546180905

/-! ## A297081.P7189397538175523006

`A297085(A055999(n)+10)`
-/

namespace A297081.P7189397538175523006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297085 (A055999 n + 10).toNat

end

end A297081.P7189397538175523006

/-! ## A297081.P10421874848270749543

`A297085(A167614(n+2)+1)`
-/

namespace A297081.P10421874848270749543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297085 (A167614 (n + 2) + 1).toNat

end

end A297081.P10421874848270749543

/-! ## A297081.P16998819344205778810

`A297085(A000124(n+3)+3)`
-/

namespace A297081.P16998819344205778810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297085 (A000124 (n + 3) + 3).toNat

end

end A297081.P16998819344205778810

/-!
# A297082: Number of nX5 0..1 arrays with no 1 adjacent to 2 king-move neighboring 1s.

The programs for A297082, there is no canonical definition to state claims against.
-/

/-! ## A297082.P5555274128922538503

`A297085(A374005(n+1))`
-/

namespace A297082.P5555274128922538503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297085 (A374005 (n + 1)).toNat

end

end A297082.P5555274128922538503

/-! ## A297082.P6424173006856556372

`A297085(A155212(n)+13)`
-/

namespace A297082.P6424173006856556372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297085 (A155212 n + 13).toNat

end

end A297082.P6424173006856556372

/-! ## A297082.P1789979519405196623

`A297085(A056000(n)+15)`
-/

namespace A297082.P1789979519405196623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297085 (A056000 n + 15).toNat

end

end A297082.P1789979519405196623

/-! ## A297082.P12943094443585554488

`A297085(eq[7, A066657(n)])`
-/

namespace A297082.P12943094443585554488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297085 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297082.P12943094443585554488

/-! ## A297082.P1540037922704445584

`A297085(A055999(n+1)+11)`
-/

namespace A297082.P1540037922704445584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297085 (A055999 (n + 1) + 11).toNat

end

end A297082.P1540037922704445584

/-!
# A297083: Number of nX6 0..1 arrays with no 1 adjacent to 2 king-move neighboring 1s.

The programs for A297083, there is no canonical definition to state claims against.
-/

/-! ## A297083.P9103953214682768583

`A297085(A374007(n+1))`
-/

namespace A297083.P9103953214682768583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297085 (A374007 (n + 1)).toNat

end

end A297083.P9103953214682768583

/-! ## A297083.P6147639796821594355

`A297085(A000096(n+4)+7)`
-/

namespace A297083.P6147639796821594355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297085 (A000096 (n + 4) + 7).toNat

end

end A297083.P6147639796821594355

/-! ## A297083.P9678658438838552916

`A297085(eq[7, A131818(n+1)])`
-/

namespace A297083.P9678658438838552916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297085 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297083.P9678658438838552916

/-! ## A297083.P7916648190075157586

`A297085(eq[5, A193592(n)])`
-/

namespace A297083.P7916648190075157586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297085 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297083.P7916648190075157586

/-! ## A297083.P15865213290379507756

`A297085(eq[6, A200370(n+1)])`
-/

namespace A297083.P15865213290379507756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297085 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297083.P15865213290379507756

/-!
# A297084: Number of nX7 0..1 arrays with no 1 adjacent to 2 king-move neighboring 1s.

The programs for A297084, there is no canonical definition to state claims against.
-/

/-! ## A297084.P3967679858187796880

`A297085(A374008(n+1))`
-/

namespace A297084.P3967679858187796880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297085 (A374008 (n + 1)).toNat

end

end A297084.P3967679858187796880

/-! ## A297084.P340403268146848827

`A297085(eq[11, A066657(n)])`
-/

namespace A297084.P340403268146848827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297085 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297084.P340403268146848827

/-! ## A297084.P4035418637427493169

`A297085(eq[8, A131818(n+1)])`
-/

namespace A297084.P4035418637427493169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297085 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297084.P4035418637427493169

/-! ## A297084.P4899864111853739125

`A297085(eq[6, A193592(n)])`
-/

namespace A297084.P4899864111853739125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297085 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297084.P4899864111853739125

/-! ## A297084.P12925368309517364253

`A297085(eq[7, A200370(n+1)])`
-/

namespace A297084.P12925368309517364253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297085 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297084.P12925368309517364253

/-!
# A297085: T(n,k)=Number of nXk 0..1 arrays with no 1 adjacent to 2 king-move neighboring 1s.

The programs for A297085, there is no canonical definition to state claims against.
-/

/-! ## A297085.P10024569797011208545

`A296651(n+1)+A185540(A172350(n))`
-/

namespace A297085.P10024569797011208545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296651 (n + 1) + A185540 (A172350 n).toNat

end

end A297085.P10024569797011208545

/-! ## A297085.P8729848484144963087

`A321378(A173887(n))+A296651(n+1)`
-/

namespace A297085.P8729848484144963087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321378 (A173887 n).toNat + A296651 (n + 1)

end

end A297085.P8729848484144963087

/-!
# A297086: a(n) = 1 if gcd(n, phi(n)) == 1 otherwise 0.

The programs for A297086, the canonical program `A297086.P2157316894102876955` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297086 has offset 1).

The definition of A297086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297086.P6075714371004805984

`A387363(n+1)%2`
-/

namespace A297086.P6075714371004805984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A387363 (n + 1)) 2

end

end A297086.P6075714371004805984

namespace A297086

/-- `A387363(n+1)%2` -/
def P6075714371004805984.Spec : Prop :=
  ∀ n, P6075714371004805984.a n = A297086 (n + 1)

end A297086

/-! ## A297086.P17568015743397479611

`round(acot(A009195(n+1)))`
-/

namespace A297086.P17568015743397479611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A009195 (n + 1) : ℝ))

end

end A297086.P17568015743397479611

namespace A297086

/-- `round(acot(A009195(n+1)))` -/
def P17568015743397479611.Spec : Prop :=
  ∀ n, P17568015743397479611.a n = A297086 (n + 1)

end A297086

/-! ## A297086.P6949921548522553621

`round(acot(A072994(n+1)))`
-/

namespace A297086.P6949921548522553621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A072994 (n + 1) : ℝ))

end

end A297086.P6949921548522553621

namespace A297086

/-- `round(acot(A072994(n+1)))` -/
def P6949921548522553621.Spec : Prop :=
  ∀ n, P6949921548522553621.a n = A297086 (n + 1)

end A297086

/-! ## A297086.P12157749345590742891

`C(2, A331176(n+1)²)`
-/

namespace A297086.P12157749345590742891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A331176 (n + 1) ^ 2).toNat

end

end A297086.P12157749345590742891

namespace A297086

/-- `C(2, A331176(n+1)²)` -/
def P12157749345590742891.Spec : Prop :=
  ∀ n, (P12157749345590742891.a n : ℤ) = A297086 (n + 1)

end A297086

/-! ## A297086.P16145439287745427095

`floor(1/A082061(n+1))`
-/

namespace A297086.P16145439287745427095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A082061 (n + 1) : ℚ)⌋

end

end A297086.P16145439287745427095

namespace A297086

/-- `floor(1/A082061(n+1))` -/
def P16145439287745427095.Spec : Prop :=
  ∀ n, P16145439287745427095.a n = A297086 (n + 1)

end A297086

/-! ## A297086.P17923676626895653798

`floor(1/A082067(n+1))`
-/

namespace A297086.P17923676626895653798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A082067 (n + 1) : ℚ)⌋

end

end A297086.P17923676626895653798

namespace A297086

/-- `floor(1/A082067(n+1))` -/
def P17923676626895653798.Spec : Prop :=
  ∀ n, P17923676626895653798.a n = A297086 (n + 1)

end A297086

/-! ## A297086.P5450550163345911707

`floor(1/A327979(n+1))`
-/

namespace A297086.P5450550163345911707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A327979 (n + 1) : ℚ)⌋

end

end A297086.P5450550163345911707

namespace A297086

/-- `floor(1/A327979(n+1))` -/
def P5450550163345911707.Spec : Prop :=
  ∀ n, P5450550163345911707.a n = A297086 (n + 1)

end A297086

/-! ## A297086.P4179673674360089558

`floor(1/A331175(n+1))`
-/

namespace A297086.P4179673674360089558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A331175 (n + 1) : ℚ)⌋

end

end A297086.P4179673674360089558

namespace A297086

/-- `floor(1/A331175(n+1))` -/
def P4179673674360089558.Spec : Prop :=
  ∀ n, P4179673674360089558.a n = A297086 (n + 1)

end A297086

/-! ## A297086.P7049122867897272958

`char[lt[A073811(n+1), 2]]`
-/

namespace A297086.P7049122867897272958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073811 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A297086.P7049122867897272958

namespace A297086

/-- `char[lt[A073811(n+1), 2]]` -/
def P7049122867897272958.Spec : Prop :=
  ∀ n, (P7049122867897272958.a n : ℤ) = A297086 (n + 1)

end A297086

/-! ## A297086.P9276097684327971960

`val(A074792(n+1), n+2)`
-/

namespace A297086.P9276097684327971960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A074792 (n + 1)).toNat (n + 2)

end

end A297086.P9276097684327971960

namespace A297086

/-- `val(A074792(n+1), n+2)` -/
def P9276097684327971960.Spec : Prop :=
  ∀ n, (P9276097684327971960.a n : ℤ) = A297086 (n + 1)

end A297086

/-! ## A297086.P8068129881280523025

`C(A109395(n+1), n+1)`
-/

namespace A297086.P8068129881280523025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A109395 (n + 1)).toNat (n + 1)

end

end A297086.P8068129881280523025

namespace A297086

/-- `C(A109395(n+1), n+1)` -/
def P8068129881280523025.Spec : Prop :=
  ∀ n, (P8068129881280523025.a n : ℤ) = A297086 (n + 1)

end A297086

/-! ## A297086.P13069371414992773487

`C(A185075(n+1), n+1)`
-/

namespace A297086.P13069371414992773487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A185075 (n + 1)).toNat (n + 1)

end

end A297086.P13069371414992773487

namespace A297086

/-- `C(A185075(n+1), n+1)` -/
def P13069371414992773487.Spec : Prop :=
  ∀ n, (P13069371414992773487.a n : ℤ) = A297086 (n + 1)

end A297086

/-! ## A297086.P14964052372736882262

`C(A195637(n+1), n+1)`
-/

namespace A297086.P14964052372736882262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A195637 (n + 1)).toNat (n + 1)

end

end A297086.P14964052372736882262

namespace A297086

/-- `C(A195637(n+1), n+1)` -/
def P14964052372736882262.Spec : Prop :=
  ∀ n, (P14964052372736882262.a n : ℤ) = A297086 (n + 1)

end A297086

/-! ## A297086.P2891862454796002268

`round(acot(gcd(n+1, A000010(n+1))))`
-/

namespace A297086.P2891862454796002268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (Int.gcd (n + 1 : ℤ) (A000010 (n + 1)) : ℝ))

end

end A297086.P2891862454796002268

namespace A297086

/-- `round(acot(gcd(n+1, A000010(n+1))))` -/
def P2891862454796002268.Spec : Prop :=
  ∀ n, P2891862454796002268.a n = A297086 (n + 1)

end A297086

/-! ## A297086.P2157316894102876955

`A063524(A009195(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A297086

/-- `A063524(A009195(n+1))` -/
def P2157316894102876955.Spec : Prop :=
  ∀ n, P2157316894102876955.a n = A297086 (n + 1)

theorem P2157316894102876955.correct : P2157316894102876955.Spec := by
  intro n
  simp only [A297086, Nat.add_sub_cancel]

end A297086

/-! ## A297086.P10505495092942886675

`A000007(A331176(n+1))`
-/

namespace A297086.P10505495092942886675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A331176 (n + 1)).toNat

end

end A297086.P10505495092942886675

namespace A297086

/-- `A000007(A331176(n+1))` -/
def P10505495092942886675.Spec : Prop :=
  ∀ n, P10505495092942886675.a n = A297086 (n + 1)

end A297086

/-! ## A297086.P2091094787155369946

`A329678(A326203(n+1))`
-/

namespace A297086.P2091094787155369946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329678 (A326203 (n + 1)).toNat

end

end A297086.P2091094787155369946

namespace A297086

/-- `A329678(A326203(n+1))` -/
def P2091094787155369946.Spec : Prop :=
  ∀ n, P2091094787155369946.a n = A297086 (n + 1)

end A297086

/-! ## A297086.P17346343552884339140

`A008966(A073811(n+1)²)`
-/

namespace A297086.P17346343552884339140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A073811 (n + 1) ^ 2).toNat

end

end A297086.P17346343552884339140

namespace A297086

/-- `A008966(A073811(n+1)²)` -/
def P17346343552884339140.Spec : Prop :=
  ∀ n, P17346343552884339140.a n = A297086 (n + 1)

end A297086

/-! ## A297086.P8116278021032244176

`and(A158388(n), A387363(n+1))`
-/

namespace A297086.P8116278021032244176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A387363 (n + 1))

end

end A297086.P8116278021032244176

namespace A297086

/-- `and(A158388(n), A387363(n+1))` -/
def P8116278021032244176.Spec : Prop :=
  ∀ n, P8116278021032244176.a n = A297086 (n + 1)

end A297086

/-! ## A297086.P8003714413748832210

`char[A295126(A005117(n+1))-1]`
-/

namespace A297086.P8003714413748832210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295126 (A005117 (n + 1)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A297086.P8003714413748832210

namespace A297086

/-- `char[A295126(A005117(n+1))-1]` -/
def P8003714413748832210.Spec : Prop :=
  ∀ n, (P8003714413748832210.a n : ℤ) = A297086 (n + 1)

end A297086

/-!
# A297087: Number of n X n 0..1 arrays with no 1 adjacent to 3 king-move neighboring 1's.

The programs for A297087, there is no canonical definition to state claims against.
-/

/-! ## A297087.P5953771264504977944

`A297094(∑[4*n]+1)`
-/

namespace A297087.P5953771264504977944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297094 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297087.P5953771264504977944

/-! ## A297087.P12164136821942804431

`record[A003982(n)*A297094(n+1)]`
-/

namespace A297087.P12164136821942804431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A297094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297087.P12164136821942804431

/-! ## A297087.P7174790683805807161

`record[gcd(A114327(n), A297094(n+1))]`
-/

namespace A297087.P7174790683805807161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A297094 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297087.P7174790683805807161

/-! ## A297087.P1169466943976931478

`gcd(A000038(n), A297094(A001844(n)))`
-/

namespace A297087.P1169466943976931478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A297094 (A001844 n).toNat)

end

end A297087.P1169466943976931478

/-! ## A297087.P7174550464807803881

`lcm(A033999(n), A297094(A001844(n)))`
-/

namespace A297087.P7174550464807803881
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A297094 (A001844 n).toNat)

end

end A297087.P7174550464807803881

/-!
# A297088: Number of n X 2 0..1 arrays with no 1 adjacent to 3 king-move neighboring 1s.

The programs for A297088, there is no canonical definition to state claims against.
-/

/-! ## A297088.P8609941506464088955

`A297094(∑[n+1]+2)`
-/

namespace A297088.P8609941506464088955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297094 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297088.P8609941506464088955

/-! ## A297088.P16912834335333420749

`record[A297094(A133263(abs(1-n)))]`
-/

namespace A297088.P16912834335333420749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297094 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297088.P16912834335333420749

/-! ## A297088.P12546107260813185857

`record[root(A297094(n+2), A059268(n))]`
-/

namespace A297088.P12546107260813185857
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A297094 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297088.P12546107260813185857

/-! ## A297088.P9256780097947362615

`record[gcd(A025581(n), A297094(n+3))]`
-/

namespace A297088.P9256780097947362615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A297094 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297088.P9256780097947362615

/-! ## A297088.P17346662618413950774

`record[A297094(Δ[A003453(n+5)])]`
-/

namespace A297088.P17346662618413950774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297094 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297088.P17346662618413950774

/-!
# A297089: Number of nX3 0..1 arrays with no 1 adjacent to 3 king-move neighboring 1s.

The programs for A297089, there is no canonical definition to state claims against.
-/

/-! ## A297089.P11295530626277252395

`A297094(∑[n+2]+4)`
-/

namespace A297089.P11295530626277252395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297094 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297089.P11295530626277252395

/-! ## A297089.P3795082768631210790

`A015082(n)*A297094(A167614(n+1))`
-/

namespace A297089.P3795082768631210790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015082 n * A297094 (A167614 (n + 1)).toNat

end

end A297089.P3795082768631210790

/-! ## A297089.P4565846789906937993

`A016182(n)*A297094(A167614(n+1))`
-/

namespace A297089.P4565846789906937993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016182 n * A297094 (A167614 (n + 1)).toNat

end

end A297089.P4565846789906937993

/-! ## A297089.P13140168892898238527

`A297094(A167614(n+1))^A015082(n+1)`
-/

namespace A297089.P13140168892898238527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297094 (A167614 (n + 1)).toNat : ℚ) ^ (A015082 (n + 1) : ℤ)

end

end A297089.P13140168892898238527

/-! ## A297089.P4942005673001831981

`A297094(A167614(n+1))%A210305(n+1)`
-/

namespace A297089.P4942005673001831981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297094 (A167614 (n + 1)).toNat) (A210305 (n + 1))

end

end A297089.P4942005673001831981

/-!
# A297090: Number of nX4 0..1 arrays with no 1 adjacent to 3 king-move neighboring 1s.

The programs for A297090, there is no canonical definition to state claims against.
-/

/-! ## A297090.P2931407753994863265

`A297094(A374004(n+1))`
-/

namespace A297090.P2931407753994863265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297094 (A374004 (n + 1)).toNat

end

end A297090.P2931407753994863265

/-! ## A297090.P1997488974533445942

`A297094(A141214(n)+7)`
-/

namespace A297090.P1997488974533445942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297094 (A141214 n + 7).toNat

end

end A297090.P1997488974533445942

/-! ## A297090.P16788359612824401903

`A297094(A167614(n+2)+1)`
-/

namespace A297090.P16788359612824401903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297094 (A167614 (n + 2) + 1).toNat

end

end A297090.P16788359612824401903

/-! ## A297090.P17626318365831787271

`A297094(A000124(n+3)+3)`
-/

namespace A297090.P17626318365831787271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297094 (A000124 (n + 3) + 3).toNat

end

end A297090.P17626318365831787271

/-! ## A297090.P1394295482390740263

`A297094(eq[5, A131818(n+1)])`
-/

namespace A297090.P1394295482390740263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297090.P1394295482390740263

/-!
# A297091: Number of nX5 0..1 arrays with no 1 adjacent to 3 king-move neighboring 1s.

The programs for A297091, there is no canonical definition to state claims against.
-/

/-! ## A297091.P17926599972167239840

`A297094(A374005(n+1))`
-/

namespace A297091.P17926599972167239840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297094 (A374005 (n + 1)).toNat

end

end A297091.P17926599972167239840

/-! ## A297091.P11712606578411651557

`A297094(eq[7, A066657(n)])`
-/

namespace A297091.P11712606578411651557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297091.P11712606578411651557

/-! ## A297091.P11604423767653346648

`A297094(A055999(n+1)+11)`
-/

namespace A297091.P11604423767653346648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297094 (A055999 (n + 1) + 11).toNat

end

end A297091.P11604423767653346648

/-! ## A297091.P7664971537368371113

`A297094(eq[6, A131818(n+1)])`
-/

namespace A297091.P7664971537368371113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297091.P7664971537368371113

/-! ## A297091.P8752288820446157633

`A297094(Δ[A264443(n)])`
-/

namespace A297091.P8752288820446157633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297094 (f1 (n + 1) - f1 n).toNat

end

end A297091.P8752288820446157633

/-!
# A297092: Number of nX6 0..1 arrays with no 1 adjacent to 3 king-move neighboring 1s.

The programs for A297092, there is no canonical definition to state claims against.
-/

/-! ## A297092.P5422989310910138971

`A297094(A374007(n+1))`
-/

namespace A297092.P5422989310910138971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297094 (A374007 (n + 1)).toNat

end

end A297092.P5422989310910138971

/-! ## A297092.P4892972500254179495

`A297094(eq[7, A131818(n+1)])`
-/

namespace A297092.P4892972500254179495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297092.P4892972500254179495

/-! ## A297092.P10441944413916812250

`A297094(Δ[A023545(n+1)]+10)`
-/

namespace A297092.P10441944413916812250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297094 (f1 (n + 1) - f1 n + 10).toNat

end

end A297092.P10441944413916812250

/-! ## A297092.P6816526475732321174

`A297094(eq[3, A219347(n)])`
-/

namespace A297092.P6816526475732321174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297092.P6816526475732321174

/-! ## A297092.P17201171161919345903

`A297094(eq[6, A200370(n+1)])`
-/

namespace A297092.P17201171161919345903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297092.P17201171161919345903

/-!
# A297093: Number of nX7 0..1 arrays with no 1 adjacent to 3 king-move neighboring 1s.

The programs for A297093, there is no canonical definition to state claims against.
-/

/-! ## A297093.P10758067294279500924

`A297094(A374008(n+1))`
-/

namespace A297093.P10758067294279500924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297094 (A374008 (n + 1)).toNat

end

end A297093.P10758067294279500924

/-! ## A297093.P10432552655605856775

`A297094(eq[11, A066657(n)])`
-/

namespace A297093.P10432552655605856775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297093.P10432552655605856775

/-! ## A297093.P9953326644622062381

`A297094(eq[8, A131818(n+1)])`
-/

namespace A297093.P9953326644622062381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297093.P9953326644622062381

/-! ## A297093.P7916563829388875279

`A297094(eq[4, A219347(n)])`
-/

namespace A297093.P7916563829388875279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297093.P7916563829388875279

/-! ## A297093.P4047102633543918827

`A297094(eq[6, A193592(n)])`
-/

namespace A297093.P4047102633543918827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297093.P4047102633543918827

/-!
# A297094: T(n,k)=Number of nXk 0..1 arrays with no 1 adjacent to 3 king-move neighboring 1s.

The programs for A297094, there is no canonical definition to state claims against.
-/

/-! ## A297094.P11355082347879523647

`A175948(A282528(n+1))`
-/

namespace A297094.P11355082347879523647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175948 (A282528 (n + 1)).toNat

end

end A297094.P11355082347879523647

/-! ## A297094.P13079718851209893228

`A328592(A296651(n+1))+1`
-/

namespace A297094.P13079718851209893228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328592 (A296651 (n + 1)).toNat + 1

end

end A297094.P13079718851209893228

/-! ## A297094.P6938424706889105644

`A264048(A134346(n))+A134346(n)`
-/

namespace A297094.P6938424706889105644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264048 (A134346 n).toNat + A134346 n

end

end A297094.P6938424706889105644

/-! ## A297094.P8420313705977368949

`A134346(n)-A027641(A154335(n))`
-/

namespace A297094.P8420313705977368949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134346 n - A027641 (A154335 n).toNat

end

end A297094.P8420313705977368949

/-! ## A297094.P2254107495762497097

`A145362(A124146(n+1))+A134346(n)`
-/

namespace A297094.P2254107495762497097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145362 (A124146 (n + 1)).toNat + A134346 n

end

end A297094.P2254107495762497097

/-!
# A297095: Number of n X n 0..1 arrays with no 1 adjacent to 4 king-move neighboring 1's.

The programs for A297095, there is no canonical definition to state claims against.
-/

/-! ## A297095.P7284843927360257253

`A297102(∑[4*n]+1)`
-/

namespace A297095.P7284843927360257253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297102 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297095.P7284843927360257253

/-! ## A297095.P11689384806726236956

`A025793(n)*A297102(A001844(n))`
-/

namespace A297095.P11689384806726236956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025793 n * A297102 (A001844 n).toNat

end

end A297095.P11689384806726236956

/-! ## A297095.P15774870899304821589

`gcd(A000038(n), A297102(A001844(n)))`
-/

namespace A297095.P15774870899304821589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A297102 (A001844 n).toNat)

end

end A297095.P15774870899304821589

/-! ## A297095.P10316455347887250223

`lcm(A033999(n), A297102(A001844(n)))`
-/

namespace A297095.P10316455347887250223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A297102 (A001844 n).toNat)

end

end A297095.P10316455347887250223

/-! ## A297095.P4123930120985691426

`A297102(A001844(n))+A211020(n+1)`
-/

namespace A297095.P4123930120985691426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297102 (A001844 n).toNat + A211020 (n + 1)

end

end A297095.P4123930120985691426

/-!
# A297096: Number of n X 2 0..1 arrays with no 1 adjacent to 4 king-move neighboring 1s.

The programs for A297096, there is no canonical definition to state claims against.
-/

/-! ## A297096.P12133732908054167672

`A297102(∑[n+1]+2)`
-/

namespace A297096.P12133732908054167672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297102 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297096.P12133732908054167672

/-! ## A297096.P16182693642279706159

`lcm(2, A297102(A000096(n)+3))`
-/

namespace A297096.P16182693642279706159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A297102 (A000096 n + 3).toNat)

end

end A297096.P16182693642279706159

/-! ## A297096.P11951793835849752606

`record[gcd(A002262(n), A297102(n+2))]`
-/

namespace A297096.P11951793835849752606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A297102 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297096.P11951793835849752606

/-! ## A297096.P14649934191937039467

`A297102(A000096(n)+3)%A289421(n+9)`
-/

namespace A297096.P14649934191937039467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297102 (A000096 n + 3).toNat) (A289421 (n + 9))

end

end A297096.P14649934191937039467

/-! ## A297096.P6001637886385925866

`record[A297102(Δ[A003453(n+5)])]`
-/

namespace A297096.P6001637886385925866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297102 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297096.P6001637886385925866

/-!
# A297097: Number of nX3 0..1 arrays with no 1 adjacent to 4 king-move neighboring 1s.

The programs for A297097, there is no canonical definition to state claims against.
-/

/-! ## A297097.P805163558734464983

`A297102(∑[n+2]+4)`
-/

namespace A297097.P805163558734464983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297102 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297097.P805163558734464983

/-! ## A297097.P17430847754051427891

`A297102(A167614(n+1))+A184946(n)`
-/

namespace A297097.P17430847754051427891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297102 (A167614 (n + 1)).toNat + A184946 n

end

end A297097.P17430847754051427891

/-! ## A297097.P16772738421067096030

`A297102(A167614(n+1))+A185284(n)`
-/

namespace A297097.P16772738421067096030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297102 (A167614 (n + 1)).toNat + A185284 n

end

end A297097.P16772738421067096030

/-! ## A297097.P8012140796508221991

`lcm(A033999(n), A297102(A167614(n+1)))`
-/

namespace A297097.P8012140796508221991
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A297102 (A167614 (n + 1)).toNat)

end

end A297097.P8012140796508221991

/-! ## A297097.P12128321886239771769

`A297102(A167614(n+1))%A181247(n+1)`
-/

namespace A297097.P12128321886239771769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297102 (A167614 (n + 1)).toNat) (A181247 (n + 1))

end

end A297097.P12128321886239771769

/-!
# A297098: Number of nX4 0..1 arrays with no 1 adjacent to 4 king-move neighboring 1s.

The programs for A297098, there is no canonical definition to state claims against.
-/

/-! ## A297098.P1673741812927982561

`A297102(A374004(n+1))`
-/

namespace A297098.P1673741812927982561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297102 (A374004 (n + 1)).toNat

end

end A297098.P1673741812927982561

/-! ## A297098.P8268894636742700932

`A297102(A141214(n)+7)`
-/

namespace A297098.P8268894636742700932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297102 (A141214 n + 7).toNat

end

end A297098.P8268894636742700932

/-! ## A297098.P13969011776670279529

`A297102(A052905(n)+9)`
-/

namespace A297098.P13969011776670279529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297102 (A052905 n + 9).toNat

end

end A297098.P13969011776670279529

/-! ## A297098.P2905262732444249181

`A297102(A055999(n)+10)`
-/

namespace A297098.P2905262732444249181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297102 (A055999 n + 10).toNat

end

end A297098.P2905262732444249181

/-! ## A297098.P10963120468715821341

`A297102(A167614(n+2)+1)`
-/

namespace A297098.P10963120468715821341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297102 (A167614 (n + 2) + 1).toNat

end

end A297098.P10963120468715821341

/-!
# A297099: Number of nX5 0..1 arrays with no 1 adjacent to 4 king-move neighboring 1s.

The programs for A297099, there is no canonical definition to state claims against.
-/

/-! ## A297099.P2343316754964822684

`A297102(A374005(n+1))`
-/

namespace A297099.P2343316754964822684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297102 (A374005 (n + 1)).toNat

end

end A297099.P2343316754964822684

/-! ## A297099.P5343873183284215825

`A297102(A167499(n+3))`
-/

namespace A297099.P5343873183284215825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297102 (A167499 (n + 3)).toNat

end

end A297099.P5343873183284215825

/-! ## A297099.P7242667285626776453

`A297102(A155212(n)+13)`
-/

namespace A297099.P7242667285626776453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297102 (A155212 n + 13).toNat

end

end A297099.P7242667285626776453

/-! ## A297099.P14188972180418440931

`A297102(A141214(n+1)+8)`
-/

namespace A297099.P14188972180418440931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297102 (A141214 (n + 1) + 8).toNat

end

end A297099.P14188972180418440931

/-! ## A297099.P1103999272738516728

`A297102(A027379(n+2)+8)`
-/

namespace A297099.P1103999272738516728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297102 (A027379 (n + 2) + 8).toNat

end

end A297099.P1103999272738516728

