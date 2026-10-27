import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A360300: a(n) is the least term in the n-th row of A360298.

The programs for A360300, there is no canonical definition to state claims against.
-/

/-! ## A360300.P5282343296669751202

`A360298(lt[A002988(n), A180662(3*n+2)])`
-/

namespace A360300.P5282343296669751202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002988 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180662 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360298 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A360300.P5282343296669751202

/-! ## A360300.P306417721056113842

`filter[A360298(n+1), A307430(#)]`
-/

namespace A360300.P306417721056113842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A360300.P306417721056113842

/-! ## A360300.P10469559820235101195

`filter[A360298(n+1), A343999(#)]`
-/

namespace A360300.P10469559820235101195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A343999 (f1 j).toNat = 1) n)

end

end A360300.P10469559820235101195

/-! ## A360300.P8424774577272667520

`filter[A360298(n+1), A363344(#)]`
-/

namespace A360300.P8424774577272667520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A363344 (f1 j).toNat = 1) n)

end

end A360300.P8424774577272667520

/-!
# A360302: T(n,k) is the position of the set encoded in the binary expansion of k within the shortlex order for the powerset of [n]; triangle T(n,k), n>=0, 0<=k<=2^n-1, read by rows.

The programs for A360302, there is no canonical definition to state claims against.
-/

/-! ## A360302.P3662380812921270700

`A209861(n+1)-A053644(n+1)`
-/

namespace A360302.P3662380812921270700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209861 (n + 1) - A053644 (n + 1)

end

end A360302.P3662380812921270700

/-! ## A360302.P6711235786962642610

`A053645(A209861(n+1))`
-/

namespace A360302.P6711235786962642610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A209861 (n + 1)).toNat

end

end A360302.P6711235786962642610

/-!
# A360303: a(n) = Sum_{k=1..floor(sqrt(n))} 2^floor(n/k-k).

The programs for A360303, there is no canonical definition to state claims against.
-/

/-! ## A360303.P6388401853927932920

`A002265(A067659(n)+A001445(n+2))`
-/

namespace A360303.P6388401853927932920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A067659 n + A001445 (n + 2)).toNat

end

end A360303.P6388401853927932920

/-! ## A360303.P5755364344125157427

`A002265(xor(A001445(n+2), A263361(n)))`
-/

namespace A360303.P5755364344125157427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.xor (A001445 (n + 2)) (A263361 n)).toNat

end

end A360303.P5755364344125157427

/-! ## A360303.P14382016931158330486

`A132292(A005418(n+4)+n)`
-/

namespace A360303.P14382016931158330486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (A005418 (n + 4) + (n : ℤ)).toNat

end

end A360303.P14382016931158330486

/-! ## A360303.P14393846770824472486

`A308952(n+3)+A131577(A046469(n))`
-/

namespace A360303.P14393846770824472486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308952 (n + 3) + A131577 (A046469 n).toNat

end

end A360303.P14393846770824472486

/-! ## A360303.P16788267877845734266

`A126257(A051493(2*n+1)+A000079(n))`
-/

namespace A360303.P16788267877845734266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A051493 (2 * n + 1) + A000079 n).toNat

end

end A360303.P16788267877845734266

/-!
# A360304: Expansion of 1/sqrt(1 - 4*1*x/(1 - 4*2*x/(1 - 4*3*x/(1 - 4*4*x/(1 - 4*5*x/(1 - ...)))))), a continued fraction.

The programs for A360304, there is no canonical definition to state claims against.
-/

/-! ## A360304.P5469728136880369856

`A022559(A006905(n))+A000108(n)`
-/

namespace A360304.P5469728136880369856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (A006905 n).toNat + A000108 n

end

end A360304.P5469728136880369856

/-!
# A360305: Lexicographically earliest sequence of integers > 1 such that the products Product_{i = 1+k*2^e..(k+1)*2^e} a(i) with k, e >= 0 are all distinct.

The programs for A360305, there is no canonical definition to state claims against.
-/

/-! ## A360305.P1570891118753889820

`comp[C(n, 5)-char[7]]`
-/

namespace A360305.P1570891118753889820
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 5 : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A360305.P1570891118753889820

/-! ## A360305.P17625572794997454826

`comp[C(n, 5)]+char[17]`
-/

namespace A360305.P17625572794997454826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (if ∃ j, f2 j = n then 1 else 0)

end

end A360305.P17625572794997454826

/-! ## A360305.P12520421186158759566

`comp[xor(C(n, 5), char[7])]`
-/

namespace A360305.P12520421186158759566
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (Nat.choose n 5) (if ∃ j, f2 j = n then 1 else 0)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A360305.P12520421186158759566

/-! ## A360305.P13606706006811583335

`comp[xor(n%2, C(n, 5))]`
-/

namespace A360305.P13606706006811583335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n % 2) (Nat.choose n 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A360305.P13606706006811583335

/-! ## A360305.P3202776103087300233

`ceil(log(log(30)+n)+n)`
-/

namespace A360305.P3202776103087300233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (Real.log (30 : ℝ) + (n : ℝ)) + (n : ℝ)⌉

end

end A360305.P3202776103087300233

/-! ## A360305.P1620678617460625236

`comp[xor(val(n+1, 4), C(n, 5))]`
-/

namespace A360305.P1620678617460625236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (SequenceMachineLib.valuation (n + 1) 4) (Nat.choose n 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A360305.P1620678617460625236

/-! ## A360305.P12371177149760226710

`comp[C(2*n, ceil(sqrt(n+2)))]`
-/

namespace A360305.P12371177149760226710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) ⌈Real.sqrt (n + 2 : ℝ)⌉.toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A360305.P12371177149760226710

/-! ## A360305.P11676661589231540824

`comp[A292480(n)]`
-/

namespace A360305.P11676661589231540824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292480 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A360305.P11676661589231540824

/-! ## A360305.P1229338398483667922

`comp[n*A131575(n)]`
-/

namespace A360305.P1229338398483667922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A131575 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A360305.P1229338398483667922

/-! ## A360305.P3348089190795401079

`comp[Δ[A104880(n)]-n]`
-/

namespace A360305.P3348089190795401079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104880 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A360305.P3348089190795401079

/-!
# A360308: Number T(n,k) of permutations of [n] whose descent set is the k-th finite subset of positive integers in Gray order; triangle T(n,k), n>=0, 0<=k<=ceiling(2^(n-1))-1, read by rows.

The programs for A360308, there is no canonical definition to state claims against.
-/

/-! ## A360308.P1926820771754516745

`A060351(A233280(n))`
-/

namespace A360308.P1926820771754516745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (A233280 n).toNat

end

end A360308.P1926820771754516745

/-! ## A360308.P6512798522919598486

`A060351(A154436(n))`
-/

namespace A360308.P6512798522919598486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (A154436 n).toNat

end

end A360308.P6512798522919598486

/-! ## A360308.P5900950718910926889

`A327399(A121748(n+2))`
-/

namespace A360308.P5900950718910926889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327399 (A121748 (n + 2)).toNat

end

end A360308.P5900950718910926889

/-!
# A360309: a(n) = Sum_{k=0..floor(n/3)} binomial(n-1-2*k,n-3*k) * binomial(2*k,k).

The programs for A360309, there is no canonical definition to state claims against.
-/

/-! ## A360309.P3808418300429954269

`Δ[Δ[A371564(n)]-A371358(n)]`
-/

namespace A360309.P3808418300429954269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371564 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A371358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A360309.P3808418300429954269

/-!
# A360312: The dividing prime prime(n+k+1) in A360297.

The programs for A360312, there is no canonical definition to state claims against.
-/

/-! ## A360312.P2354015737906635515

`A215848(A360297(n+1)+n)`
-/

namespace A360312.P2354015737906635515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (A360297 (n + 1) + (n : ℤ)).toNat

end

end A360312.P2354015737906635515

/-! ## A360312.P8883369599068798511

`A045344(A360297(n+1)+n+1)`
-/

namespace A360312.P8883369599068798511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A360297 (n + 1) + (n : ℤ) + 1).toNat

end

end A360312.P8883369599068798511

/-! ## A360312.P9308655736172630090

`A065091(A360297(n+1)+n+1)`
-/

namespace A360312.P9308655736172630090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A360297 (n + 1) + (n + 1 : ℤ)).toNat

end

end A360312.P9308655736172630090

/-! ## A360312.P12906835485290369189

`A000040(A360297(n+1)+2+n)`
-/

namespace A360312.P12906835485290369189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A360297 (n + 1) + 2 + (n : ℤ)).toNat

end

end A360312.P12906835485290369189

/-! ## A360312.P14625677825663453152

`A008578(A360297(n+1)+n+3)`
-/

namespace A360312.P14625677825663453152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A360297 (n + 1) + (n + 3 : ℤ)).toNat

end

end A360312.P14625677825663453152

/-!
# A360316: a(n) is the smallest k such that k!'s prime(n)-smooth part is less than its prime(n+1)-rough part.

The programs for A360316, there is no canonical definition to state claims against.
-/

/-! ## A360316.P9013864575640664054

`A335448(A001844(n))-A295142(n)`
-/

namespace A360316.P9013864575640664054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335448 (A001844 n).toNat - A295142 n

end

end A360316.P9013864575640664054

/-!
# A360317: a(n) = Sum_{k=0..n} 2^(n-k) * binomial(n-1,n-k) * binomial(2*k,k).

The programs for A360317, there is no canonical definition to state claims against.
-/

/-! ## A360317.P14812081450213351830

`A011782(n+1)/A000142(n)*A317618(n)`
-/

namespace A360317.P14812081450213351830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) : ℚ) / (A000142 n : ℚ) * (A317618 n : ℚ)

end

end A360317.P14812081450213351830

/-! ## A360317.P10150353406160018828

`A046699(A291089(n)-A374633(n+1))`
-/

namespace A360317.P10150353406160018828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (A291089 n - A374633 (n + 1)).toNat

end

end A360317.P10150353406160018828

/-!
# A360318: a(n) = Sum_{k=0..n} 3^(n-k) * binomial(n-1,n-k) * binomial(2*k,k).

The programs for A360318, there is no canonical definition to state claims against.
-/

/-! ## A360318.P5917007980892160087

`A090701(A357402(n+1)-A308985(n))`
-/

namespace A360318.P5917007980892160087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090701 (A357402 (n + 1) - A308985 n).toNat

end

end A360318.P5917007980892160087

/-!
# A360319: a(n) = Sum_{k=0..n} 4^(n-k) * binomial(n-1,n-k) * binomial(2*k,k).

The programs for A360319, there is no canonical definition to state claims against.
-/

/-! ## A360319.P15216431121390412953

`A001316(n)*A317935(A000079(n))`
-/

namespace A360319.P15216431121390412953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A317935 (A000079 n).toNat

end

end A360319.P15216431121390412953

/-! ## A360319.P1211896006806315588

`record[A037445(n+1)*A317925(n+1)]`
-/

namespace A360319.P1211896006806315588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (n + 1) * A317925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360319.P1211896006806315588

/-! ## A360319.P14688306873229007489

`record[A037445(n+1)*A317935(n+1)]`
-/

namespace A360319.P14688306873229007489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (n + 1) * A317935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360319.P14688306873229007489

/-!
# A360321: a(n) = Sum_{k=0..n} 5^(n-k) * binomial(n-1,n-k) * binomial(2*k,k).

The programs for A360321, there is no canonical definition to state claims against.
-/

/-! ## A360321.P9311233231160094387

`A055748(A344840(n))`
-/

namespace A360321.P9311233231160094387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055748 (A344840 n).toNat

end

end A360321.P9311233231160094387

/-!
# A360322: a(n) = Sum_{k=0..n} (-5)^(n-k) * binomial(n-1,n-k) * binomial(2*k,k).

The programs for A360322, there is no canonical definition to state claims against.
-/

/-! ## A360322.P16080587423615409508

`A057197(2^n)/A000367(n)`
-/

namespace A360322.P16080587423615409508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057197 (2 ^ n) : ℚ) / (A000367 n : ℚ)

end

end A360322.P16080587423615409508

/-! ## A360322.P6376579842280902106

`A274232(n)*A316441(A109055(n))`
-/

namespace A360322.P6376579842280902106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274232 n * A316441 (A109055 n).toNat

end

end A360322.P6376579842280902106

/-!
# A360323: a(n) is the number of solutions to gcd(a^2 + b^2, p) = 1 where p is the n-th prime and 0 <= a,b <= p-1.

The programs for A360323, the canonical program `A360323.P5397994935056253969` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360323 has offset 1).

The definition of A360323 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079458, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A360323.P5397994935056253969

`A079458(A000040(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A360323

/-- `A079458(A000040(n+1))` -/
def P5397994935056253969.Spec : Prop :=
  ∀ n, P5397994935056253969.a n = A360323 (n + 1)

theorem P5397994935056253969.correct : P5397994935056253969.Spec := by
  intro n
  simp only [A360323, Nat.add_sub_cancel]

end A360323

/-! ## A360323.P246349588085984246

`A006093(n+1)*A076342(n+1)`
-/

namespace A360323.P246349588085984246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) * A076342 (n + 1)

end

end A360323.P246349588085984246

namespace A360323

/-- `A006093(n+1)*A076342(n+1)` -/
def P246349588085984246.Spec : Prop :=
  ∀ n, P246349588085984246.a n = A360323 (n + 1)

end A360323

/-! ## A360323.P15721620355861560206

`(A000040(n+1)-1)*A076342(n+1)`
-/

namespace A360323.P15721620355861560206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - 1) * A076342 (n + 1)

end

end A360323.P15721620355861560206

namespace A360323

/-- `(A000040(n+1)-1)*A076342(n+1)` -/
def P15721620355861560206.Spec : Prop :=
  ∀ n, P15721620355861560206.a n = A360323 (n + 1)

end A360323

/-! ## A360323.P15706509729469475216

`A079458(p?[xor(1, n)+1])`
-/

namespace A360323.P15706509729469475216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079458 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A360323.P15706509729469475216

namespace A360323

/-- `A079458(p?[xor(1, n)+1])` -/
def P15706509729469475216.Spec : Prop :=
  ∀ n, P15706509729469475216.a n = A360323 (n + 1)

end A360323

/-! ## A360323.P4386772987909130485

`A079458(p?[gcd(1-n, floor(n/2))])`
-/

namespace A360323.P4386772987909130485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079458 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A360323.P4386772987909130485

namespace A360323

/-- `A079458(p?[gcd(1-n, floor(n/2))])` -/
def P4386772987909130485.Spec : Prop :=
  ∀ n, P4386772987909130485.a n = A360323 (n + 1)

end A360323

/-! ## A360323.P16014473892493109471

`A079458(Δ[A007504(n)])`
-/

namespace A360323.P16014473892493109471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079458 (f1 (n + 1) - f1 n).toNat

end

end A360323.P16014473892493109471

namespace A360323

/-- `A079458(Δ[A007504(n)])` -/
def P16014473892493109471.Spec : Prop :=
  ∀ n, P16014473892493109471.a n = A360323 (n + 1)

end A360323

/-! ## A360323.P10674113968180788354

`A079458(A008578(n+2))`
-/

namespace A360323.P10674113968180788354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079458 (A008578 (n + 2)).toNat

end

end A360323.P10674113968180788354

namespace A360323

/-- `A079458(A008578(n+2))` -/
def P10674113968180788354.Spec : Prop :=
  ∀ n, P10674113968180788354.a n = A360323 (n + 1)

end A360323

/-! ## A360323.P13147187792558088449

`A079458(A182986(n+2))`
-/

namespace A360323.P13147187792558088449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079458 (A182986 (n + 2)).toNat

end

end A360323.P13147187792558088449

namespace A360323

/-- `A079458(A182986(n+2))` -/
def P13147187792558088449.Spec : Prop :=
  ∀ n, P13147187792558088449.a n = A360323 (n + 1)

end A360323

/-! ## A360323.P5658959499606060285

`A079458(A067747(2*n+1))`
-/

namespace A360323.P5658959499606060285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079458 (A067747 (2 * n + 1)).toNat

end

end A360323.P5658959499606060285

namespace A360323

/-- `A079458(A067747(2*n+1))` -/
def P5658959499606060285.Spec : Prop :=
  ∀ n, P5658959499606060285.a n = A360323 (n + 1)

end A360323

/-! ## A360323.P13311078846192830268

`A079458(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A360323.P13311078846192830268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079458 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A360323.P13311078846192830268

namespace A360323

/-- `A079458(∑{p}[p?[round(8*n/7)]², #])` -/
def P13311078846192830268.Spec : Prop :=
  ∀ n, P13311078846192830268.a n = A360323 (n + 1)

end A360323

/-! ## A360323.P15556437687920162866

`A079458(∏{p}[p?[round(8*n/7)]², #])`
-/

namespace A360323.P15556437687920162866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079458 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A360323.P15556437687920162866

namespace A360323

/-- `A079458(∏{p}[p?[round(8*n/7)]², #])` -/
def P15556437687920162866.Spec : Prop :=
  ∀ n, P15556437687920162866.a n = A360323 (n + 1)

end A360323

/-!
# A360325: a(n) is the largest divisor of n that has only prime-indexed prime factors.

The programs for A360325, the canonical program `A360325.P5141515659105753962` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360325 has offset 1).

The definition of A360325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360325.P15972169950253281994

`(n+1)/A360329(n+1)`
-/

namespace A360325.P15972169950253281994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A360329 (n + 1) : ℚ)

end

end A360325.P15972169950253281994

namespace A360325

/-- `(n+1)/A360329(n+1)` -/
def P15972169950253281994.Spec : Prop :=
  ∀ n, P15972169950253281994.a n = (A360325 (n + 1) : ℚ)

end A360325

/-! ## A360325.P16376916232492089016

`A064988(A295665(n+1))`
-/

namespace A360325.P16376916232492089016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (A295665 (n + 1)).toNat

end

end A360325.P16376916232492089016

namespace A360325

/-- `A064988(A295665(n+1))` -/
def P16376916232492089016.Spec : Prop :=
  ∀ n, P16376916232492089016.a n = A360325 (n + 1)

end A360325

/-! ## A360325.P45342398794747928

`gcd(A064988(A003963(n+1)), A080697(n+1))`
-/

namespace A360325.P45342398794747928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064988 (A003963 (n + 1)).toNat) (A080697 (n + 1))

end

end A360325.P45342398794747928

namespace A360325

/-- `gcd(A064988(A003963(n+1)), A080697(n+1))` -/
def P45342398794747928.Spec : Prop :=
  ∀ n, (P45342398794747928.a n : ℤ) = A360325 (n + 1)

end A360325

/-! ## A360325.P5141515659105753962

`gcd(A003602(2*n+1), A321874(A003963(n+1)))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A360325

/-- `gcd(A003602(2*n+1), A321874(A003963(n+1)))` -/
def P5141515659105753962.Spec : Prop :=
  ∀ n, (P5141515659105753962.a n : ℤ) = A360325 (n + 1)

theorem P5141515659105753962.correct : P5141515659105753962.Spec := by
  intro n
  simp only [A360325, Nat.add_sub_cancel]

end A360325

/-! ## A360325.P15057401709496252451

`A295665(A357983(n+1))`
-/

namespace A360325.P15057401709496252451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295665 (A357983 (n + 1)).toNat

end

end A360325.P15057401709496252451

namespace A360325

/-- `A295665(A357983(n+1))` -/
def P15057401709496252451.Spec : Prop :=
  ∀ n, P15057401709496252451.a n = A360325 (n + 1)

end A360325

/-! ## A360325.P6560108683071224673

`gcd(n+1, ∏[A000040(A020639(n+2))])`
-/

namespace A360325.P6560108683071224673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A020639 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A360325.P6560108683071224673

namespace A360325

/-- `gcd(n+1, ∏[A000040(A020639(n+2))])` -/
def P6560108683071224673.Spec : Prop :=
  ∀ n, (P6560108683071224673.a n : ℤ) = A360325 (n + 1)

end A360325

/-!
# A360326: a(n) is the number of divisors of n that have only prime-indexed prime factors.

The programs for A360326, the canonical program `A360326.P13145754518491007000` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360326 has offset 1).

The definition of A360326 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360325, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A360326.P13145754518491007000

`A000005(A360325(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A360326

/-- `A000005(A360325(n+1))` -/
def P13145754518491007000.Spec : Prop :=
  ∀ n, P13145754518491007000.a n = A360326 (n + 1)

theorem P13145754518491007000.correct : P13145754518491007000.Spec := by
  intro n
  simp only [A360326, Nat.add_sub_cancel]

end A360326

/-! ## A360326.P13966094785692084446

`∏{e}[A295665(n+1), #+1]`
-/

namespace A360326.P13966094785692084446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295665 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A360326.P13966094785692084446

namespace A360326

/-- `∏{e}[A295665(n+1), #+1]` -/
def P13966094785692084446.Spec : Prop :=
  ∀ n, (P13966094785692084446.a n : ℤ) = A360326 (n + 1)

end A360326

/-! ## A360326.P2421656067655230962

`A000005(A295665(n+1))`
-/

namespace A360326.P2421656067655230962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A295665 (n + 1)).toNat

end

end A360326.P2421656067655230962

namespace A360326

/-- `A000005(A295665(n+1))` -/
def P2421656067655230962.Spec : Prop :=
  ∀ n, P2421656067655230962.a n = A360326 (n + 1)

end A360326

/-! ## A360326.P15231528354443358085

`∑{d}[A295665(n+1), A057427(#)]`
-/

namespace A360326.P15231528354443358085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A360326.P15231528354443358085

namespace A360326

/-- `∑{d}[A295665(n+1), A057427(#)]` -/
def P15231528354443358085.Spec : Prop :=
  ∀ n, P15231528354443358085.a n = A360326 (n + 1)

end A360326

/-! ## A360326.P9113099651857228521

`∑{d}[A360325(n+1), A001511(#)]`
-/

namespace A360326.P9113099651857228521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001511 d

end

end A360326.P9113099651857228521

namespace A360326

/-- `∑{d}[A360325(n+1), A001511(#)]` -/
def P9113099651857228521.Spec : Prop :=
  ∀ n, P9113099651857228521.a n = A360326 (n + 1)

end A360326

/-! ## A360326.P4710414356622317626

`∑{d}[A360325(n+1), A360329(#)]`
-/

namespace A360326.P4710414356622317626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A360329 d

end

end A360326.P4710414356622317626

namespace A360326

/-- `∑{d}[A360325(n+1), A360329(#)]` -/
def P4710414356622317626.Spec : Prop :=
  ∀ n, P4710414356622317626.a n = A360326 (n + 1)

end A360326

/-! ## A360326.P3946405427561362140

`A000005((n+1)/A360329(n+1))`
-/

namespace A360326.P3946405427561362140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A360329 (n + 1) : ℚ))).toNat

end

end A360326.P3946405427561362140

namespace A360326

/-- `A000005((n+1)/A360329(n+1))` -/
def P3946405427561362140.Spec : Prop :=
  ∀ n, P3946405427561362140.a n = A360326 (n + 1)

end A360326

/-! ## A360326.P1127364062699771826

`A000005(n+1)/A360330(n+1)`
-/

namespace A360326.P1127364062699771826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A360330 (n + 1) : ℚ)

end

end A360326.P1127364062699771826

namespace A360326

/-- `A000005(n+1)/A360330(n+1)` -/
def P1127364062699771826.Spec : Prop :=
  ∀ n, P1127364062699771826.a n = (A360326 (n + 1) : ℚ)

end A360326

/-! ## A360326.P16764347837493615977

`(∑{d}[n+1, 1-#]+A000203(n+1))/A360330(n+1)`
-/

namespace A360326.P16764347837493615977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (1 - (d : ℤ)) + A000203 (n + 1) : ℤ) : ℚ) / (A360330 (n + 1) : ℚ)

end

end A360326.P16764347837493615977

namespace A360326

/-- `(∑{d}[n+1, 1-#]+A000203(n+1))/A360330(n+1)` -/
def P16764347837493615977.Spec : Prop :=
  ∀ n, P16764347837493615977.a n = (A360326 (n + 1) : ℚ)

end A360326

/-!
# A360327: a(n) is the sum of divisors of n that have only prime-indexed prime factors.

The programs for A360327, the canonical program `A360327.P7971652656865103253` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360327 has offset 1).

The definition of A360327 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360325, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A360327.P7971652656865103253

`A000203(A360325(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A360327

/-- `A000203(A360325(n+1))` -/
def P7971652656865103253.Spec : Prop :=
  ∀ n, P7971652656865103253.a n = A360327 (n + 1)

theorem P7971652656865103253.correct : P7971652656865103253.Spec := by
  intro n
  simp only [A360327, Nat.add_sub_cancel]

end A360327

/-! ## A360327.P5838832097944962664

`A002129(or(1, A360325(n+1)))`
-/

namespace A360327.P5838832097944962664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (Int.lor 1 (A360325 (n + 1))).toNat

end

end A360327.P5838832097944962664

namespace A360327

/-- `A002129(or(1, A360325(n+1)))` -/
def P5838832097944962664.Spec : Prop :=
  ∀ n, P5838832097944962664.a n = A360327 (n + 1)

end A360327

/-! ## A360327.P232637079450386857

`A000203((n+1)/A360329(n+1))`
-/

namespace A360327.P232637079450386857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A360329 (n + 1) : ℚ))).toNat

end

end A360327.P232637079450386857

namespace A360327

/-- `A000203((n+1)/A360329(n+1))` -/
def P232637079450386857.Spec : Prop :=
  ∀ n, P232637079450386857.a n = A360327 (n + 1)

end A360327

/-! ## A360327.P5211923723219155176

`A000203(n+1)/A360331(n+1)`
-/

namespace A360327.P5211923723219155176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A360331 (n + 1) : ℚ)

end

end A360327.P5211923723219155176

namespace A360327

/-- `A000203(n+1)/A360331(n+1)` -/
def P5211923723219155176.Spec : Prop :=
  ∀ n, P5211923723219155176.a n = (A360327 (n + 1) : ℚ)

end A360327

/-! ## A360327.P13844176474311786931

`A143348(A360325(2*(n+1)))`
-/

namespace A360327.P13844176474311786931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (A360325 (2 * (n + 1))).toNat

end

end A360327.P13844176474311786931

namespace A360327

/-- `A143348(A360325(2*(n+1)))` -/
def P13844176474311786931.Spec : Prop :=
  ∀ n, P13844176474311786931.a n = A360327 (n + 1)

end A360327

/-!
# A360329: a(n) is the largest divisor of n that has only prime factors that are not prime-indexed primes.

The programs for A360329, the canonical program `A360329.P2369050767270655281` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360329 has offset 1).

The definition of A360329 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360325, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A360329.P2369050767270655281

`(n+1)/A360325(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A360329

/-- `(n+1)/A360325(n+1)` -/
def P2369050767270655281.Spec : Prop :=
  ∀ n, P2369050767270655281.a n = (A360329 (n + 1) : ℚ)

end A360329

/-! ## A360329.P10162135560460569560

`(n+1)/A064988(A295665(n+1))`
-/

namespace A360329.P10162135560460569560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A064988 (A295665 (n + 1)).toNat : ℚ)

end

end A360329.P10162135560460569560

namespace A360329

/-- `(n+1)/A064988(A295665(n+1))` -/
def P10162135560460569560.Spec : Prop :=
  ∀ n, P10162135560460569560.a n = (A360329 (n + 1) : ℚ)

end A360329

/-! ## A360329.P2395519685155002538

`(n+1)/A295665(A357983(n+1))`
-/

namespace A360329.P2395519685155002538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A295665 (A357983 (n + 1)).toNat : ℚ)

end

end A360329.P2395519685155002538

namespace A360329

/-- `(n+1)/A295665(A357983(n+1))` -/
def P2395519685155002538.Spec : Prop :=
  ∀ n, P2395519685155002538.a n = (A360329 (n + 1) : ℚ)

end A360329

/-! ## A360329.P9667715068590440507

`log2(root(A000079(n+1), A360325(n+1)))`
-/

namespace A360329.P9667715068590440507
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A000079 (n + 1) : ℝ) ^ (1 / (A360325 (n + 1) : ℝ)))

end

end A360329.P9667715068590440507

namespace A360329

/-- `log2(root(A000079(n+1), A360325(n+1)))` -/
def P9667715068590440507.Spec : Prop :=
  ∀ n, P9667715068590440507.a n = (A360329 (n + 1) : ℝ)

end A360329

/-! ## A360329.P11800270352951060619

`A010766(A360325(n+1)+A000217(n))`
-/

namespace A360329.P11800270352951060619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A360325 (n + 1) + A000217 n).toNat

end

end A360329.P11800270352951060619

namespace A360329

/-- `A010766(A360325(n+1)+A000217(n))` -/
def P11800270352951060619.Spec : Prop :=
  ∀ n, P11800270352951060619.a n = A360329 (n + 1)

end A360329

/-! ## A360329.P4115330075282695708

`gcd(∏[A320628(n+1)], A038502(n+1))`
-/

namespace A360329.P4115330075282695708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A038502 (n + 1))

end

end A360329.P4115330075282695708

namespace A360329

/-- `gcd(∏[A320628(n+1)], A038502(n+1))` -/
def P4115330075282695708.Spec : Prop :=
  ∀ n, (P4115330075282695708.a n : ℤ) = A360329 (n + 1)

end A360329

/-!
# A360330: a(n) is the number of divisors of n that have only prime factors that are not prime-indexed primes.

The programs for A360330, the canonical program `A360330.P13454129155691304934` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360330 has offset 1).

The definition of A360330 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360329, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A360330.P13454129155691304934

`A000005(A360329(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A360330

/-- `A000005(A360329(n+1))` -/
def P13454129155691304934.Spec : Prop :=
  ∀ n, P13454129155691304934.a n = A360330 (n + 1)

theorem P13454129155691304934.correct : P13454129155691304934.Spec := by
  intro n
  simp only [A360330, Nat.add_sub_cancel]

end A360330

/-! ## A360330.P7848183075443864065

`∏{e}[n+1, #+1]/A360326(n+1)`
-/

namespace A360330.P7848183075443864065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / (A360326 (n + 1) : ℚ)

end

end A360330.P7848183075443864065

namespace A360330

/-- `∏{e}[n+1, #+1]/A360326(n+1)` -/
def P7848183075443864065.Spec : Prop :=
  ∀ n, P7848183075443864065.a n = (A360330 (n + 1) : ℚ)

end A360330

/-! ## A360330.P8089977462240743493

`∑{d}[A360329(n+1), A360325(#)]`
-/

namespace A360330.P8089977462240743493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A360325 d

end

end A360330.P8089977462240743493

namespace A360330

/-- `∑{d}[A360329(n+1), A360325(#)]` -/
def P8089977462240743493.Spec : Prop :=
  ∀ n, P8089977462240743493.a n = A360330 (n + 1)

end A360330

/-! ## A360330.P9961612103478462181

`A000005((n+1)/A360325(n+1))`
-/

namespace A360330.P9961612103478462181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A360325 (n + 1) : ℚ))).toNat

end

end A360330.P9961612103478462181

namespace A360330

/-- `A000005((n+1)/A360325(n+1))` -/
def P9961612103478462181.Spec : Prop :=
  ∀ n, P9961612103478462181.a n = A360330 (n + 1)

end A360330

/-! ## A360330.P1160300036334373766

`A000005(n+1)/A360326(n+1)`
-/

namespace A360330.P1160300036334373766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A360326 (n + 1) : ℚ)

end

end A360330.P1160300036334373766

namespace A360330

/-- `A000005(n+1)/A360326(n+1)` -/
def P1160300036334373766.Spec : Prop :=
  ∀ n, P1160300036334373766.a n = (A360330 (n + 1) : ℚ)

end A360330

/-! ## A360330.P13850859228243061510

`(∑{d}[n+1, 1-#]+A000203(n+1))/A360326(n+1)`
-/

namespace A360330.P13850859228243061510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (1 - (d : ℤ)) + A000203 (n + 1) : ℤ) : ℚ) / (A360326 (n + 1) : ℚ)

end

end A360330.P13850859228243061510

namespace A360330

/-- `(∑{d}[n+1, 1-#]+A000203(n+1))/A360326(n+1)` -/
def P13850859228243061510.Spec : Prop :=
  ∀ n, P13850859228243061510.a n = (A360330 (n + 1) : ℚ)

end A360330

/-! ## A360330.P8494336197318867651

`A000005(n+1)/A000005(A295665(n+1))`
-/

namespace A360330.P8494336197318867651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A000005 (A295665 (n + 1)).toNat : ℚ)

end

end A360330.P8494336197318867651

namespace A360330

/-- `A000005(n+1)/A000005(A295665(n+1))` -/
def P8494336197318867651.Spec : Prop :=
  ∀ n, P8494336197318867651.a n = (A360330 (n + 1) : ℚ)

end A360330

/-!
# A360331: a(n) is the sum of divisors of n that have only prime factors that are not prime-indexed primes.

The programs for A360331, the canonical program `A360331.P16160315613356519482` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360331 has offset 1).

The definition of A360331 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360329, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A360331.P16160315613356519482

`A000203(A360329(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A360331

/-- `A000203(A360329(n+1))` -/
def P16160315613356519482.Spec : Prop :=
  ∀ n, P16160315613356519482.a n = A360331 (n + 1)

theorem P16160315613356519482.correct : P16160315613356519482.Spec := by
  intro n
  simp only [A360331, Nat.add_sub_cancel]

end A360331

/-! ## A360331.P10910504408237363128

`∑{d}[(n+1)/A360325(n+1), #]`
-/

namespace A360331.P10910504408237363128
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A360325 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A360331.P10910504408237363128

namespace A360331

/-- `∑{d}[(n+1)/A360325(n+1), #]` -/
def P10910504408237363128.Spec : Prop :=
  ∀ n, (P10910504408237363128.a n : ℤ) = A360331 (n + 1)

end A360331

/-! ## A360331.P14523419311983923859

`∑{d}[n+1, #]/A360327((n+1)/2^val(n+1, 2))`
-/

namespace A360331.P14523419311983923859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (A360327 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat : ℚ)

end

end A360331.P14523419311983923859

namespace A360331

/-- `∑{d}[n+1, #]/A360327((n+1)/2^val(n+1, 2))` -/
def P14523419311983923859.Spec : Prop :=
  ∀ n, P14523419311983923859.a n = (A360331 (n + 1) : ℚ)

end A360331

/-! ## A360331.P7592048623962517988

`A000203((n+1)/A360325(n+1))`
-/

namespace A360331.P7592048623962517988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A360325 (n + 1) : ℚ))).toNat

end

end A360331.P7592048623962517988

namespace A360331

/-- `A000203((n+1)/A360325(n+1))` -/
def P7592048623962517988.Spec : Prop :=
  ∀ n, P7592048623962517988.a n = A360331 (n + 1)

end A360331

/-! ## A360331.P16467519914345668361

`A000203(n+1)/A360327(n+1)`
-/

namespace A360331.P16467519914345668361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A360327 (n + 1) : ℚ)

end

end A360331.P16467519914345668361

namespace A360331

/-- `A000203(n+1)/A360327(n+1)` -/
def P16467519914345668361.Spec : Prop :=
  ∀ n, P16467519914345668361.a n = (A360331 (n + 1) : ℚ)

end A360331

/-!
# A360332: Numbers k such that A360331(k) > 2*k.

The programs for A360332, the canonical program `A360332.P14499633331821807603` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360332 has offset 1).

The definition of A360332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1043 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360332.P11340515166747224252

`∩[A087245(n+1), A322030(n+1)]`
-/

namespace A360332.P11340515166747224252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360332.P11340515166747224252

namespace A360332

/-- `∩[A087245(n+1), A322030(n+1)]` -/
def P11340515166747224252.Spec : Prop :=
  ∀ n, (P11340515166747224252.a n : ℤ) = A360332 (n + 1)

end A360332

/-! ## A360332.P14499633331821807603

`∩[2*A320628(n+1), A087245(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A360332

/-- `∩[2*A320628(n+1), A087245(n+1)]` -/
def P14499633331821807603.Spec : Prop :=
  ∀ n, (P14499633331821807603.a n : ℤ) = A360332 (n + 1)

theorem P14499633331821807603.correct : P14499633331821807603.Spec := by
  intro n
  simp only [A360332, Nat.add_sub_cancel]

end A360332

/-! ## A360332.P12468745261674103118

`∩[A005101(n+1), A322030(n+1)]`
-/

namespace A360332.P12468745261674103118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360332.P12468745261674103118

namespace A360332

/-- `∩[A005101(n+1), A322030(n+1)]` -/
def P12468745261674103118.Spec : Prop :=
  ∀ n, (P12468745261674103118.a n : ℤ) = A360332 (n + 1)

end A360332

/-! ## A360332.P10941699877068530646

`∩[2*A320628(n+1), A005101(n+1)]`
-/

namespace A360332.P10941699877068530646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A320628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360332.P10941699877068530646

namespace A360332

/-- `∩[2*A320628(n+1), A005101(n+1)]` -/
def P10941699877068530646.Spec : Prop :=
  ∀ n, (P10941699877068530646.a n : ℤ) = A360332 (n + 1)

end A360332

/-! ## A360332.P13673401368371654348

`∩[A005101(n+1), A320628(n+1)]`
-/

namespace A360332.P13673401368371654348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360332.P13673401368371654348

namespace A360332

/-- `∩[A005101(n+1), A320628(n+1)]` -/
def P13673401368371654348.Spec : Prop :=
  ∀ n, (P13673401368371654348.a n : ℤ) = A360332 (n + 1)

end A360332

/-! ## A360332.P8738818339206898192

`∩[A087245(n+1), A320628(n+1)]`
-/

namespace A360332.P8738818339206898192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360332.P8738818339206898192

namespace A360332

/-- `∩[A087245(n+1), A320628(n+1)]` -/
def P8738818339206898192.Spec : Prop :=
  ∀ n, (P8738818339206898192.a n : ℤ) = A360332 (n + 1)

end A360332

/-! ## A360332.P5173407136447814539

`∩[A320628(n+1), A395014(n+1)]`
-/

namespace A360332.P5173407136447814539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360332.P5173407136447814539

namespace A360332

/-- `∩[A320628(n+1), A395014(n+1)]` -/
def P5173407136447814539.Spec : Prop :=
  ∀ n, (P5173407136447814539.a n : ℤ) = A360332 (n + 1)

end A360332

/-!
# A360333: Array read by antidiagonals downwards: A(n,m) = number of set partitions of [4n] into 4-element subsets {i, i+k, i+2k, i+3k} with 1 <= k <= m.

The programs for A360333, there is no canonical definition to state claims against.
-/

/-! ## A360333.P3232012176990419377

`A360492(n+1)+A181340(A360492(n+3))`
-/

namespace A360333.P3232012176990419377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360492 (n + 1) + A181340 (A360492 (n + 3)).toNat

end

end A360333.P3232012176990419377

/-! ## A360333.P16000034809978599867

`or(A295884(A031285(n)), A360493(n+1))`
-/

namespace A360333.P16000034809978599867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A295884 (A031285 n).toNat) (A360493 (n + 1))

end

end A360333.P16000034809978599867

/-! ## A360333.P13283434822621721244

`A360491(n+1)+A277165(A277198(n+4))`
-/

namespace A360333.P13283434822621721244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360491 (n + 1) + A277165 (A277198 (n + 4)).toNat

end

end A360333.P13283434822621721244

/-! ## A360333.P10935266652652803621

`A360492(n+1)-A010815(A101775(n+1))`
-/

namespace A360333.P10935266652652803621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360492 (n + 1) - A010815 (A101775 (n + 1)).toNat

end

end A360333.P10935266652652803621

/-! ## A360333.P874773655809457409

`A360493(n+1)-A010815(A101775(n+1))`
-/

namespace A360333.P874773655809457409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360493 (n + 1) - A010815 (A101775 (n + 1)).toNat

end

end A360333.P874773655809457409

/-!
# A360334: Array read by antidiagonals downwards: A(n,m) = number of set partitions of [3n] into 3-element subsets {i, i+k, i+2k} with 1 <= k <= m.

The programs for A360334, there is no canonical definition to state claims against.
-/

/-! ## A360334.P11227020188041018193

`A360333(n+1)+A025441(A221114(n+1))`
-/

namespace A360334.P11227020188041018193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360333 (n + 1) + A025441 (A221114 (n + 1)).toNat

end

end A360334.P11227020188041018193

/-! ## A360334.P2918097746543383309

`A226029(A195522(n+2))`
-/

namespace A360334.P2918097746543383309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226029 (A195522 (n + 2)).toNat

end

end A360334.P2918097746543383309

/-! ## A360334.P7418680389198764459

`A360491(n+1)+A332671(A003961(n+1))`
-/

namespace A360334.P7418680389198764459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360491 (n + 1) + A332671 (A003961 (n + 1)).toNat

end

end A360334.P7418680389198764459

/-! ## A360334.P9474684903478683992

`A360491(n+1)+A358670(A249844(n+1))`
-/

namespace A360334.P9474684903478683992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360491 (n + 1) + A358670 (A249844 (n + 1)).toNat

end

end A360334.P9474684903478683992

/-! ## A360334.P1993822886919517593

`A360333(n+1)+A336835(A222317(n+5))`
-/

namespace A360334.P1993822886919517593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360333 (n + 1) + A336835 (A222317 (n + 5)).toNat

end

end A360334.P1993822886919517593

/-!
# A360335: Array read by antidiagonals downwards: A(n,m) = number of set partitions of [2n] into 2-element subsets {i, i+k} with 1 <= k <= m.

The programs for A360335, there is no canonical definition to state claims against.
-/

/-! ## A360335.P10938122494996827573

`A161358(A287318(n)+A274581(n))`
-/

namespace A360335.P10938122494996827573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161358 (A287318 n + A274581 n).toNat

end

end A360335.P10938122494996827573

/-! ## A360335.P3500341532283095122

`A161358(A287318(n)+A245558(n+1))`
-/

namespace A360335.P3500341532283095122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161358 (A287318 n + A245558 (n + 1)).toNat

end

end A360335.P3500341532283095122

/-! ## A360335.P3844337821289963259

`A135621(A288874(n))`
-/

namespace A360335.P3844337821289963259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135621 (A288874 n).toNat

end

end A360335.P3844337821289963259

/-! ## A360335.P71988973465462194

`A318357(A132813(n))`
-/

namespace A360335.P71988973465462194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318357 (A132813 n).toNat

end

end A360335.P71988973465462194

/-! ## A360335.P6174680263318592735

`A097688(A255009(n+1))`
-/

namespace A360335.P6174680263318592735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097688 (A255009 (n + 1)).toNat

end

end A360335.P6174680263318592735

/-!
# A360336: G.f. A(x) satisfies: [x^n] A(x)^(n+1) = [x^n] (1 + x*A(x)^(3*n))^(n+1) for n >= 0.

The programs for A360336, there is no canonical definition to state claims against.
-/

/-! ## A360336.P15547312633340181401

`A007947(A011248(n))-A342988(n)`
-/

namespace A360336.P15547312633340181401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A011248 n).toNat - A342988 n

end

end A360336.P15547312633340181401

/-!
# A360337: G.f. A(x) satisfies: [x^n] A(x)^(n+1) = [x^n] (1 + x*A(x)^(3*n+1))^(n+1) for n >= 0.

The programs for A360337, there is no canonical definition to state claims against.
-/

/-! ## A360337.P10761630784909345719

`A071668(A121337(n)-A261195(n))`
-/

namespace A360337.P10761630784909345719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071668 (A121337 n - A261195 n).toNat

end

end A360337.P10761630784909345719

/-!
# A360338: G.f. A(x) satisfies: [x^n] A(x)^(n+1) = [x^n] (1 + x*A(x)^(3*n+2))^(n+1) for n >= 0.

The programs for A360338, there is no canonical definition to state claims against.
-/

/-! ## A360338.P18435509439931040723

`A003959(A113089(n)-∑[n%3])`
-/

namespace A360338.P18435509439931040723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A113089 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A360338.P18435509439931040723

/-!
# A360342: G.f. A(x) satisfies: [x^n] A(x)^(n+1) = [x^n] (1 + x*A(x)^(2*n-2))^(n+1) for n >= 0.

The programs for A360342, there is no canonical definition to state claims against.
-/

/-! ## A360342.P962211696214139284

`ceil(A087686(n!²)/4)`
-/

namespace A360342.P962211696214139284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A087686 (Nat.factorial n ^ 2) : ℚ) / 4⌉

end

end A360342.P962211696214139284

/-!
# A360343: G.f. A(x) satisfies: [x^n] A(x)^(n+1) = [x^n] (1 + x*A(x)^(2*n-1))^(n+1) for n >= 0.

The programs for A360343, there is no canonical definition to state claims against.
-/

/-! ## A360343.P1374557775012686593

`n!²-A267771(n!)`
-/

namespace A360343.P1374557775012686593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ 2 : ℤ) - A267771 (Nat.factorial n)

end

end A360343.P1374557775012686593

/-!
# A360344: G.f. A(x) satisfies: [x^n] A(x)^(n+1) = [x^n] (1 + x*A(x)^(2*n))^(n+1) for n >= 0.

The programs for A360344, there is no canonical definition to state claims against.
-/

/-! ## A360344.P2954835058410460013

`A262443(a(n-1)+4)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A360344.P2954835058410460013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A262443 (a (n - 1) + 4).toNat

end

end A360344.P2954835058410460013

/-!
# A360345: G.f. A(x) satisfies: [x^n] A(x)^(n+1) = [x^n] (1 + x*A(x)^(2*n+1))^(n+1) for n >= 0.

The programs for A360345, there is no canonical definition to state claims against.
-/

/-! ## A360345.P15603108210590463823

`A278057(comp[2*(n+1)]^n)`
-/

namespace A360345.P15603108210590463823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278057 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ n)

end

end A360345.P15603108210590463823

/-!
# A360346: G.f. A(x) satisfies: [x^n] A(x)^(n+1) = [x^n] (1 + x*A(x)^(2*n+2))^(n+1) for n >= 0.

The programs for A360346, there is no canonical definition to state claims against.
-/

/-! ## A360346.P16672007487303214913

`A067627(A297861(n+2))`
-/

namespace A360346.P16672007487303214913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067627 (A297861 (n + 2)).toNat

end

end A360346.P16672007487303214913

/-!
# A360347: G.f. A(x) satisfies: [x^n] A(x)^(n+1) = [x^n] (1 + x*A(x)^(2*n+3))^(n+1) for n >= 0.

The programs for A360347, there is no canonical definition to state claims against.
-/

/-! ## A360347.P1056413606334961939

`A201734(A322661(n)+1)`
-/

namespace A360347.P1056413606334961939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201734 (A322661 n + 1).toNat

end

end A360347.P1056413606334961939

/-!
# A360349: G.f. A(x) = exp( Sum_{k>=1} A360348(k) * x^k/k ), where A360348(k) = [y^k*x^k/k] log( Sum_{m>=0} (1 + m*y + y^2)^m * x^m ) for k >= 1.

The programs for A360349, there is no canonical definition to state claims against.
-/

/-! ## A360349.P11731650044698896866

`A060683(or(A000111(n), A374601(n+1)))`
-/

namespace A360349.P11731650044698896866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060683 (Int.lor (A000111 n) (A374601 (n + 1))).toNat

end

end A360349.P11731650044698896866

/-!
# A360350: Number of distinct circles that can be constructed from an n X n square grid of points when each pair of points is connected by a circle and the points lie at the ends of a diameter of the circle.

The programs for A360350, there is no canonical definition to state claims against.
-/

/-! ## A360350.P3232995638242427296

`A132366(n)+∑[A357501(3*(n+1))]`
-/

namespace A360350.P3232995638242427296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357501 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132366 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360350.P3232995638242427296

/-!
# A360351: Number of vertices among all distinct circles that can be constructed from an n X n square grid of points when each pair of points is connected by a circle and the points lie at the ends of a diameter of the circle.

The programs for A360351, there is no canonical definition to state claims against.
-/

/-! ## A360351.P14771619750654457761

`A360353(n+2)-A360352(n+2)+1`
-/

namespace A360351.P14771619750654457761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360353 (n + 2) - A360352 (n + 2) + 1

end

end A360351.P14771619750654457761

/-!
# A360352: Number of regions among all distinct circles that can be constructed from an n X n square grid of points when each pair of points is connected by a circle and the points lie at the ends of a diameter of the circle.

The programs for A360352, there is no canonical definition to state claims against.
-/

/-! ## A360352.P8668140004896917564

`A360353(n+2)-A360351(n+2)+1`
-/

namespace A360352.P8668140004896917564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360353 (n + 2) - A360351 (n + 2) + 1

end

end A360352.P8668140004896917564

/-!
# A360353: Number of edges among all distinct circles that can be constructed from an n X n square grid of points when each pair of points is connected by a circle and the points lie at the ends of a diameter of the circle.

The programs for A360353, there is no canonical definition to state claims against.
-/

/-! ## A360353.P3323531793940667650

`A360351(n+2)+A360352(n+2)-1`
-/

namespace A360353.P3323531793940667650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360351 (n + 2) + A360352 (n + 2) - 1

end

end A360353.P3323531793940667650

/-!
# A360355: Primitive terms of A360328: terms of A360328 with no proper divisor in A360328.

The programs for A360355, there is no canonical definition to state claims against.
-/

/-! ## A360355.P6165699298114043605

`∩[A006038(n+1), A360328(n+1)]`
-/

namespace A360355.P6165699298114043605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360355.P6165699298114043605

/-!
# A360356: Primitive terms of A360332: terms of A360332 with no proper divisor in A360332.

The programs for A360356, there is no canonical definition to state claims against.
-/

/-! ## A360356.P1998919230515746065

`∩[A091191(n+1), A360332(n+1)]`
-/

namespace A360356.P1998919230515746065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360356.P1998919230515746065

/-! ## A360356.P973905004922633034

`filter[A360332(n+1), A294930(#)]`
-/

namespace A360356.P973905004922633034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)

end

end A360356.P973905004922633034

/-! ## A360356.P2741307640816632113

`∩[2*A320628(n+1), A091191(n+1)]`
-/

namespace A360356.P2741307640816632113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A320628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360356.P2741307640816632113

/-! ## A360356.P7562783186000535446

`∩[A091191(n+1), A322030(n+1)]`
-/

namespace A360356.P7562783186000535446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360356.P7562783186000535446

/-! ## A360356.P5653709373254755394

`∩[record[A091196(n+1)], A360332(n+1)]`
-/

namespace A360356.P5653709373254755394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091196 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A360356.P5653709373254755394

/-! ## A360356.P10632294644004866063

`∩[A091191(n+1), A320628(n+1)]`
-/

namespace A360356.P10632294644004866063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360356.P10632294644004866063

/-!
# A360357: Numbers k such that k and k+1 are both products of primes of nonprime index (A320628).

The programs for A360357, the canonical program `A360357.P9556245212806872942` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360357 has offset 1).

The definition of A360357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2382 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360357.P9556245212806872942

`∩[A320628(n+1)-1, A320628(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A360357

/-- `∩[A320628(n+1)-1, A320628(n+1)]` -/
def P9556245212806872942.Spec : Prop :=
  ∀ n, (P9556245212806872942.a n : ℤ) = A360357 (n + 1)

theorem P9556245212806872942.correct : P9556245212806872942.Spec := by
  intro n
  simp only [A360357, Nat.add_sub_cancel]

end A360357

/-! ## A360357.P7494416430674711467

`eq[A360325(n+1), A360325(n+2)]+1`
-/

namespace A360357.P7494416430674711467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360325 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A360357.P7494416430674711467

namespace A360357

/-- `eq[A360325(n+1), A360325(n+2)]+1` -/
def P7494416430674711467.Spec : Prop :=
  ∀ n, (P7494416430674711467.a n : ℤ) = A360357 (n + 1)

end A360357

/-! ## A360357.P16639461461407237030

`∩[eq[1, A360327(n+1)], A320628(n+1)]`
-/

namespace A360357.P16639461461407237030
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360327 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A360357.P16639461461407237030

namespace A360357

/-- `∩[eq[1, A360327(n+1)], A320628(n+1)]` -/
def P16639461461407237030.Spec : Prop :=
  ∀ n, (P16639461461407237030.a n : ℤ) = A360357 (n + 1)

end A360357

/-! ## A360357.P8865347384330482801

`∩[A320628(n+1), A023443(A320628(n+1))]`
-/

namespace A360357.P8865347384330482801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A320628 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360357.P8865347384330482801

namespace A360357

/-- `∩[A320628(n+1), A023443(A320628(n+1))]` -/
def P8865347384330482801.Spec : Prop :=
  ∀ n, (P8865347384330482801.a n : ℤ) = A360357 (n + 1)

end A360357

/-! ## A360357.P6501245748850514546

`eq[1, A322027((n+2)*(n+1))]+1`
-/

namespace A360357.P6501245748850514546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322027 ((n + 2) * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A360357.P6501245748850514546

namespace A360357

/-- `eq[1, A322027((n+2)*(n+1))]+1` -/
def P6501245748850514546.Spec : Prop :=
  ∀ n, (P6501245748850514546.a n : ℤ) = A360357 (n + 1)

end A360357

/-!
# A360360: Given a deck of colored cards, move the top card below the bottom-most card of the same color, with one other card between them. (If the top and bottom cards have the same color, the top card is moved to the bottom of the deck; if there is no other card of the same color, the top card is moved one step down in the deck.) a(n) is the maximum, over all initial color configurations of a deck of n cards, of the length of the eventual cycle when repeatedly applying this move.

The programs for A360360, there is no canonical definition to state claims against.
-/

/-! ## A360360.P4584076856065487835

`2^round(acot(2)/acot(n))`
-/

namespace A360360.P4584076856065487835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (SequenceMachineLib.roundAway (SequenceMachineLib.acot (2 : ℝ) / SequenceMachineLib.acot (n : ℝ)) : ℤ)

end

end A360360.P4584076856065487835

/-! ## A360360.P17845615953587666905

`2^round(log(round(ϕ^n)))`
-/

namespace A360360.P17845615953587666905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (SequenceMachineLib.roundAway (Real.log (SequenceMachineLib.roundAway (Real.goldenRatio ^ n) : ℝ)) : ℤ)

end

end A360360.P17845615953587666905

/-! ## A360360.P15773159714188658263

`∏[Δ[floor(∑[atan(n+1)])]]`
-/

namespace A360360.P15773159714188658263
noncomputable section

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n + 1 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f3 j⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A360360.P15773159714188658263

/-! ## A360360.P9808749645521400988

`∏[Δ[ceil(∑[atan(n+1)])]]`
-/

namespace A360360.P9808749645521400988
noncomputable section

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n + 1 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f3 j⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A360360.P9808749645521400988

/-!
# A360361: Maximum length of the transient part when repeatedly applying the move described in A360360 to a deck of n colored cards.

The programs for A360361, there is no canonical definition to state claims against.
-/

/-! ## A360361.P11337078878572626047

`A233204(A007097(n))+A002620(n)`
-/

namespace A360361.P11337078878572626047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233204 (A007097 n).toNat + A002620 n

end

end A360361.P11337078878572626047

/-! ## A360361.P113127361408446967

`A001993(n)-A373953(A374631(n))`
-/

namespace A360361.P113127361408446967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001993 n - A373953 (A374631 n).toNat

end

end A360361.P113127361408446967

/-!
# A360362: Maximum number of moves required to reach an already visited color configuration, when applying the move described in A360360 to a deck of n colored cards.

The programs for A360362, there is no canonical definition to state claims against.
-/

/-! ## A360362.P11826993417388857715

`A247431(A185648(n)+n)`
-/

namespace A360362.P11826993417388857715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247431 (A185648 n + (n : ℤ)).toNat

end

end A360362.P11826993417388857715

/-! ## A360362.P10052188370969659824

`A056303(n+1)+A036042(A066315(n+1))`
-/

namespace A360362.P10052188370969659824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056303 (n + 1) + A036042 (A066315 (n + 1)).toNat

end

end A360362.P10052188370969659824

/-! ## A360362.P7177096257000780817

`A071626(A000598(n)*A115510(3*(n+1)))`
-/

namespace A360362.P7177096257000780817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071626 (A000598 n * A115510 (3 * (n + 1))).toNat

end

end A360362.P7177096257000780817

/-! ## A360362.P17508533911959643384

`A025047(n)+lt[A343380(2*n+3), A091840(n+1)]`
-/

namespace A360362.P17508533911959643384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343380 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025047 n + (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)

end

end A360362.P17508533911959643384

/-! ## A360362.P2973509273362826317

`A363678(A291235(n))`
-/

namespace A360362.P2973509273362826317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363678 (A291235 n).toNat

end

end A360362.P2973509273362826317

/-!
# A360365: a(n) = sum of the products of the digits of the first n positive multiples of 3.

The programs for A360365, the canonical program `A360365.P9480937568062918641` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360365 has offset 1).

The definition of A360365 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360365.P9480937568062918641

`∑[∏{digits}[3*(n+1), #]]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A360365

/-- `∑[∏{digits}[3*(n+1), #]]` -/
def P9480937568062918641.Spec : Prop :=
  ∀ n, (P9480937568062918641.a n : ℤ) = A360365 (n + 1)

theorem P9480937568062918641.correct : P9480937568062918641.Spec := by
  intro n
  simp only [A360365, Nat.add_sub_cancel]

end A360365

/-! ## A360365.P4786087529963422760

`∏{digits}[3*(n+1), #]+a(n-1)` with `a(0)=3`
-/

namespace A360365.P4786087529963422760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod + a (n - 1)

end

end A360365.P4786087529963422760

namespace A360365

/-- `∏{digits}[3*(n+1), #]+a(n-1)` -/
def P4786087529963422760.Spec : Prop :=
  ∀ n, (P4786087529963422760.a n : ℤ) = A360365 (n + 1)

end A360365

/-! ## A360365.P169295409275120234

`∑[sqrt(∏{digits}[A248038(n+1), #])]`
-/

namespace A360365.P169295409275120234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248038 (n + 1)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).prod : ℕ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360365.P169295409275120234

namespace A360365

/-- `∑[sqrt(∏{digits}[A248038(n+1), #])]` -/
def P169295409275120234.Spec : Prop :=
  ∀ n, P169295409275120234.a n = (A360365 (n + 1) : ℝ)

end A360365

/-! ## A360365.P15277002086554850626

`∑[abs(A187844(3*(n+1)))]`
-/

namespace A360365.P15277002086554850626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A187844 (3 * (n + 1))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360365.P15277002086554850626

namespace A360365

/-- `∑[abs(A187844(3*(n+1)))]` -/
def P15277002086554850626.Spec : Prop :=
  ∀ n, P15277002086554850626.a n = A360365 (n + 1)

end A360365

/-! ## A360365.P16059017549166457065

`∑[A007954(3*(n+1))]`
-/

namespace A360365.P16059017549166457065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360365.P16059017549166457065

namespace A360365

/-- `∑[A007954(3*(n+1))]` -/
def P16059017549166457065.Spec : Prop :=
  ∀ n, P16059017549166457065.a n = A360365 (n + 1)

end A360365

/-! ## A360365.P7057782921609492550

`A007954(3*n+3)+a(n-1)` with `a(0)=3`
-/

namespace A360365.P7057782921609492550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A007954 (3 * n + 3) + a (n - 1)

end

end A360365.P7057782921609492550

namespace A360365

/-- `A007954(3*n+3)+a(n-1)` -/
def P7057782921609492550.Spec : Prop :=
  ∀ n, P7057782921609492550.a n = A360365 (n + 1)

end A360365

/-! ## A360365.P17462969479443640075

`∑[A230099(3*(n+1))-3*(n+1)]`
-/

namespace A360365.P17462969479443640075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 (3 * (n + 1)) - (3 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360365.P17462969479443640075

namespace A360365

/-- `∑[A230099(3*(n+1))-3*(n+1)]` -/
def P17462969479443640075.Spec : Prop :=
  ∀ n, P17462969479443640075.a n = A360365 (n + 1)

theorem P17462969479443640075.correct : P17462969479443640075.Spec := by
  intro n
  simp only [A360365, Nat.add_sub_cancel, A360365.P17462969479443640075.f1, A360365.P17462969479443640075.a, A360365.P9480937568062918641.f2, A360365.P9480937568062918641.f1, A360365.P9480937568062918641.a, A230099, A230099.P7094775947428333460.f1, A230099.P7094775947428333460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360365

/-!
# A360366: a(n) is the numerator of the rational number with the smallest denominator that lies within 1/10^n of Pi.

The programs for A360366, there is no canonical definition to state claims against.
-/

/-! ## A360366.P17045541786247493042

`round(π*A360367(n))`
-/

namespace A360366.P17045541786247493042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * (A360367 n : ℝ))

end

end A360366.P17045541786247493042

/-! ## A360366.P2230469319989800438

`A022853(A360367(n))`
-/

namespace A360366.P2230469319989800438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022853 (A360367 n).toNat

end

end A360366.P2230469319989800438

/-! ## A360366.P12826020913789277924

`A248521(2*A360367(n))`
-/

namespace A360366.P12826020913789277924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248521 (2 * A360367 n).toNat

end

end A360366.P12826020913789277924

/-!
# A360367: a(n) is the denominator of the rational number with the smallest denominator that lies within 1/10^n of Pi.

The programs for A360367, there is no canonical definition to state claims against.
-/

/-! ## A360367.P9813313668947362320

`round(A360366(n)/π)`
-/

namespace A360367.P9813313668947362320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A360366 n : ℝ) / Real.pi)

end

end A360367.P9813313668947362320

/-! ## A360367.P13611856302824817533

`A062299(A360366(n))`
-/

namespace A360367.P13611856302824817533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062299 (A360366 n).toNat

end

end A360367.P13611856302824817533

/-! ## A360367.P7490012697762882028

`A082964(A360366(n)+1)`
-/

namespace A360367.P7490012697762882028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082964 (A360366 n + 1).toNat

end

end A360367.P7490012697762882028

/-!
# A360369: Intersection of A002485 and A360366.

The programs for A360369, there is no canonical definition to state claims against.
-/

/-! ## A360369.P14324106977390780570

`round(π*A360370(n+1))`
-/

namespace A360369.P14324106977390780570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * (A360370 (n + 1) : ℝ))

end

end A360369.P14324106977390780570

/-! ## A360369.P5975238881729438153

`A046947(lt[A153006(2*n+3), A114396(3*n+1)])`
-/

namespace A360369.P5975238881729438153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114396 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046947 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A360369.P5975238881729438153

/-! ## A360369.P2604099361923209110

`A360366(lt[A360377(2*(n+1)), A360360(n+2)])`
-/

namespace A360369.P2604099361923209110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360377 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360360 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360366 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A360369.P2604099361923209110

/-!
# A360370: Intersection of A002486 and A360367.

The programs for A360370, there is no canonical definition to state claims against.
-/

/-! ## A360370.P14983197366301255115

`round(A360369(n+1)/π)`
-/

namespace A360370.P14983197366301255115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A360369 (n + 1) : ℝ) / Real.pi)

end

end A360370.P14983197366301255115

/-! ## A360370.P3429912207983139251

`A360367(lt[A360377(2*(n+1)), A360360(n+2)])`
-/

namespace A360370.P3429912207983139251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360377 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360360 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360367 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A360370.P3429912207983139251

/-! ## A360370.P9402651609981708067

`A036417(A027193(n)+n+1)`
-/

namespace A360370.P9402651609981708067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036417 (A027193 n + (n + 1 : ℤ)).toNat

end

end A360370.P9402651609981708067

/-!
# A360373: Triangular array T read by rows related to the multiplication table.

The programs for A360373, there is no canonical definition to state claims against.
-/

/-! ## A360373.P6688281133301138552

`∑[char[n²]]*A004737(n+1)`
-/

namespace A360373.P6688281133301138552
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A004737 (n + 1)

end

end A360373.P6688281133301138552

/-! ## A360373.P13098935165266270414

`∑[char[n²]]*A004739(comp[n²])`
-/

namespace A360373.P13098935165266270414
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A004739 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n)

end

end A360373.P13098935165266270414

/-! ## A360373.P2032054197304816903

`A003991(A064788(n+1))`
-/

namespace A360373.P2032054197304816903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A064788 (n + 1)).toNat

end

end A360373.P2032054197304816903

/-! ## A360373.P17848739288362034600

`A003991(A064790(n+1))`
-/

namespace A360373.P17848739288362034600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A064790 (n + 1)).toNat

end

end A360373.P17848739288362034600

/-! ## A360373.P12637488010944578032

`A003991(A194280(n+1))`
-/

namespace A360373.P12637488010944578032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A194280 (n + 1)).toNat

end

end A360373.P12637488010944578032

/-! ## A360373.P9446629746345280024

`A194195(n+1)*A194258(n+1)`
-/

namespace A360373.P9446629746345280024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194195 (n + 1) * A194258 (n + 1)

end

end A360373.P9446629746345280024

/-! ## A360373.P3366372989634564239

`A220603(n+1)*A220604(n+1)`
-/

namespace A360373.P3366372989634564239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220603 (n + 1) * A220604 (n + 1)

end

end A360373.P3366372989634564239

/-! ## A360373.P14199075065799766874

`(A319289(n)+1)*A220603(n+1)`
-/

namespace A360373.P14199075065799766874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A319289 n + 1) * A220603 (n + 1)

end

end A360373.P14199075065799766874

/-! ## A360373.P8050576496871260630

`(A319290(n)+1)*A220604(n+1)`
-/

namespace A360373.P8050576496871260630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A319290 n + 1) * A220604 (n + 1)

end

end A360373.P8050576496871260630

/-! ## A360373.P5524972731363498882

`A194195(A020703(n+1))*A194195(n+1)`
-/

namespace A360373.P5524972731363498882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194195 (A020703 (n + 1)).toNat * A194195 (n + 1)

end

end A360373.P5524972731363498882

/-!
# A360374: Indices of the nonprimitive rows of the Wythoff array (A035513); see Comments.

The programs for A360374, there is no canonical definition to state claims against.
-/

/-! ## A360374.P4725733971397983949

`lt[1, A332937(n+1)]+1`
-/

namespace A360374.P4725733971397983949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332937 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A360374.P4725733971397983949

/-! ## A360374.P4001771341077565087

`lt[1, gcd(n, A022344(n))]+1`
-/

namespace A360374.P4001771341077565087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A022344 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A360374.P4001771341077565087

/-! ## A360374.P5187831911438895161

`lt[1, A332937(A028310(n))]`
-/

namespace A360374.P5187831911438895161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332937 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A360374.P5187831911438895161

/-!
# A360377: a(n) = number of the row of the Wythoff array (A035513) that includes prime(n).

The programs for A360377, there is no canonical definition to state claims against.
-/

/-! ## A360377.P16774973966392778302

`A003603(Δ[A007504(n)]%A156902(n+1))`
-/

namespace A360377.P16774973966392778302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (Int.tmod (f1 (n + 1) - f1 n) (A156902 (n + 1))).toNat

end

end A360377.P16774973966392778302

/-! ## A360377.P11685021764795477642

`A003603(A158611(n+3)%A156902(n+1))`
-/

namespace A360377.P11685021764795477642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (Int.tmod (A158611 (n + 3)) (A156902 (n + 1))).toNat

end

end A360377.P11685021764795477642

/-! ## A360377.P11629262976192798481

`A003603(A000040(n+1)%A342719(n+3))`
-/

namespace A360377.P11629262976192798481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (Int.tmod (A000040 (n + 1)) (A342719 (n + 3))).toNat

end

end A360377.P11629262976192798481

/-! ## A360377.P15017703678799919784

`A003603(A000040(n+1))%A330112(n+5)`
-/

namespace A360377.P15017703678799919784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003603 (A000040 (n + 1)).toNat) (A330112 (n + 5))

end

end A360377.P15017703678799919784

/-! ## A360377.P8209990652305971218

`A003603(∑[A054541(n+1)]%A156902(n+1))`
-/

namespace A360377.P8209990652305971218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A156902 (n + 1))).toNat

end

end A360377.P8209990652305971218

/-! ## A360377.P1008068694971446130

`A003603((A008864(n+1)-1)%A156902(n+1))`
-/

namespace A360377.P1008068694971446130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (Int.tmod (A008864 (n + 1) - 1) (A156902 (n + 1))).toNat

end

end A360377.P1008068694971446130

/-! ## A360377.P12706888367334733265

`A003603((A086801(n+1)+3)%A214399(n+2))`
-/

namespace A360377.P12706888367334733265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (Int.tmod (A086801 (n + 1) + 3) (A214399 (n + 2))).toNat

end

end A360377.P12706888367334733265

/-! ## A360377.P16291081549487174296

`A003603((A001748(n+1)/3)%A214399(n+2))`
-/

namespace A360377.P16291081549487174296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (Int.tmod (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)) (A214399 (n + 2))).toNat

end

end A360377.P16291081549487174296

/-! ## A360377.P2971179197559116236

`A003603((A175225(n+1)-10)%A214399(n+2))`
-/

namespace A360377.P2971179197559116236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (Int.tmod (A175225 (n + 1) - 10) (A214399 (n + 2))).toNat

end

end A360377.P2971179197559116236

/-!
# A360378: a(n) = number of the column of the Wythoff array (A035513) that includes prime(n).

The programs for A360378, there is no canonical definition to state claims against.
-/

/-! ## A360378.P9563095239698959631

`A035612(p?[xor(1, n)+1])`
-/

namespace A360378.P9563095239698959631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A360378.P9563095239698959631

/-! ## A360378.P7112021084204258330

`A035612(p?[n-(-1)^n])`
-/

namespace A360378.P7112021084204258330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A360378.P7112021084204258330

/-! ## A360378.P6424977837020586136

`A035612(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A360378.P6424977837020586136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A360378.P6424977837020586136

/-! ## A360378.P17255603350070355292

`A035612(∏{p}[p?[round(8*n/7)]², #])`
-/

namespace A360378.P17255603350070355292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A360378.P17255603350070355292

/-! ## A360378.P12963394899214424461

`A035612(A000040(n+1))`
-/

namespace A360378.P12963394899214424461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (A000040 (n + 1)).toNat

end

end A360378.P12963394899214424461

/-! ## A360378.P1564696132969911866

`A035612(A138182(n+1))`
-/

namespace A360378.P1564696132969911866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (A138182 (n + 1)).toNat

end

end A360378.P1564696132969911866

/-! ## A360378.P10364183565315158501

`A035612(A008578(n+2))`
-/

namespace A360378.P10364183565315158501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (A008578 (n + 2)).toNat

end

end A360378.P10364183565315158501

/-! ## A360378.P8281652488119328167

`A035612(A182986(n+2))`
-/

namespace A360378.P8281652488119328167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (A182986 (n + 2)).toNat

end

end A360378.P8281652488119328167

/-!
# A360379: a(n) = number of the antidiagonal of the Wythoff array (A035513) that includes prime(n).

The programs for A360379, there is no canonical definition to state claims against.
-/

/-! ## A360379.P10379667362039252779

`A360485(A000040(n+1))`
-/

namespace A360379.P10379667362039252779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360485 (A000040 (n + 1)).toNat

end

end A360379.P10379667362039252779

/-! ## A360379.P15017584374739503533

`A360485(A216884(n+1))`
-/

namespace A360379.P15017584374739503533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360485 (A216884 (n + 1)).toNat

end

end A360379.P15017584374739503533

/-! ## A360379.P17114941744861991279

`A360485(A008578(n+2))`
-/

namespace A360379.P17114941744861991279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360485 (A008578 (n + 2)).toNat

end

end A360379.P17114941744861991279

/-! ## A360379.P15639472772340898523

`A360485(A015919(n+2))`
-/

namespace A360379.P15639472772340898523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360485 (A015919 (n + 2)).toNat

end

end A360379.P15639472772340898523

/-! ## A360379.P4124230335956686372

`A360485(A182986(n+2))`
-/

namespace A360379.P4124230335956686372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360485 (A182986 (n + 2)).toNat

end

end A360379.P4124230335956686372

/-! ## A360379.P13725346649763803924

`A360485(A324050(n+2))`
-/

namespace A360379.P13725346649763803924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360485 (A324050 (n + 2)).toNat

end

end A360379.P13725346649763803924

/-! ## A360379.P4366427321686183778

`A360378(n+1)+A019586(Δ[A007504(n)])`
-/

namespace A360379.P4366427321686183778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360378 (n + 1) + A019586 (f1 (n + 1) - f1 n).toNat

end

end A360379.P4366427321686183778

/-! ## A360379.P3462899033875057087

`A360378(n+1)+A019586(A000040(n+1))`
-/

namespace A360379.P3462899033875057087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360378 (n + 1) + A019586 (A000040 (n + 1)).toNat

end

end A360379.P3462899033875057087

/-! ## A360379.P993857605014115451

`A360378(n+1)+A019586(∑{d}[n+1, A007444(#)])`
-/

namespace A360379.P993857605014115451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360378 (n + 1) + A019586 (∑ d ∈ Nat.divisors (f1 n), A007444 d).toNat

end

end A360379.P993857605014115451

/-!
# A360380: a(n) = number of the diagonal of the Wythoff array, A035513, that includes prime(n). See Comments.

The programs for A360380, there is no canonical definition to state claims against.
-/

/-! ## A360380.P1955316635295152006

`A191360(A000040(n+1))`
-/

namespace A360380.P1955316635295152006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191360 (A000040 (n + 1)).toNat

end

end A360380.P1955316635295152006

/-! ## A360380.P8946145240892751636

`A191360(A216883(n+1))`
-/

namespace A360380.P8946145240892751636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191360 (A216883 (n + 1)).toNat

end

end A360380.P8946145240892751636

/-! ## A360380.P6850188410665616193

`A191360(A216884(n+1))`
-/

namespace A360380.P6850188410665616193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191360 (A216884 (n + 1)).toNat

end

end A360380.P6850188410665616193

/-! ## A360380.P9810000677064186951

`A191360(A216885(n+1))`
-/

namespace A360380.P9810000677064186951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191360 (A216885 (n + 1)).toNat

end

end A360380.P9810000677064186951

/-! ## A360380.P8715050964504793905

`A191360(A385492(n+1))`
-/

namespace A360380.P8715050964504793905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191360 (A385492 (n + 1)).toNat

end

end A360380.P8715050964504793905

/-! ## A360380.P11367638015578127589

`A191360(A008578(n+2))`
-/

namespace A360380.P11367638015578127589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191360 (A008578 (n + 2)).toNat

end

end A360380.P11367638015578127589

/-! ## A360380.P2371174686483352413

`A191360(A015919(n+2))`
-/

namespace A360380.P2371174686483352413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191360 (A015919 (n + 2)).toNat

end

end A360380.P2371174686483352413

/-! ## A360380.P15554139045445417965

`A191360(A064555(n+2))`
-/

namespace A360380.P15554139045445417965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191360 (A064555 (n + 2)).toNat

end

end A360380.P15554139045445417965

/-! ## A360380.P14079689933754536323

`A191360(A182986(n+2))`
-/

namespace A360380.P14079689933754536323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191360 (A182986 (n + 2)).toNat

end

end A360380.P14079689933754536323

/-!
# A360381: Generalized Somos-5 sequence a(n) = (a(n-1)*a(n-4) + a(n-2)*a(n-3))/a(n-5) = -a(-n), a(1) = 1, a(2) = -1, a(3) = a(4) = 1, a(5) = -7.

The programs for A360381, the canonical program `A360381.P13237931493369748347` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360381 has offset 0).

The definition of A360381 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360381.P13237931493369748347

`(a(n-1)*a(n-4)+a(n-2)*a(n-3))/a(n-5)` with `a(0)=0, a(1)=1, a(2)=-1, a(3)=1, a(4)=1, a(5)=-7`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A360381

/-- `(a(n-1)*a(n-4)+a(n-2)*a(n-3))/a(n-5)` -/
def P13237931493369748347.Spec : Prop :=
  ∀ n, P13237931493369748347.a n = (A360381 n : ℚ)

end A360381

/-!
# A360383: prime(k) such that (k BitOR prime(k)) is prime, where BitOR is the binary bitwise OR.

The programs for A360383, there is no canonical definition to state claims against.
-/

/-! ## A360383.P6388888956332059972

`∩[A080608(n+1), A382393(n+1)]`
-/

namespace A360383.P6388888956332059972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080608 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360383.P6388888956332059972

/-! ## A360383.P3542392060721733723

`∩[A137812(n+1), A382393(n+1)]`
-/

namespace A360383.P3542392060721733723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360383.P3542392060721733723

/-! ## A360383.P17653842412004516705

`∩[A179336(n+1), A382393(n+1)]`
-/

namespace A360383.P17653842412004516705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360383.P17653842412004516705

/-! ## A360383.P18036250583336278649

`∩[A347864(n+1), A382393(n+1)]`
-/

namespace A360383.P18036250583336278649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360383.P18036250583336278649

/-!
# A360385: prime(k) such that (k BitXOR prime(k)) is prime, where BitXOR is the binary bitwise XOR.

The programs for A360385, there is no canonical definition to state claims against.
-/

/-! ## A360385.P14828337298402174818

`A000040(record[A216764(2*n+1)]+n)`
-/

namespace A360385.P14828337298402174818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216764 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)).toNat

end

end A360385.P14828337298402174818

/-! ## A360385.P13547360018209832374

`A000040(eq[A010054(n), A355905(3*n+4)])`
-/

namespace A360385.P13547360018209832374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355905 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A360385.P13547360018209832374

/-! ## A360385.P11891451721815436036

`A020639(A000040(2*(n+2))*A262727(n+1))`
-/

namespace A360385.P11891451721815436036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000040 (2 * (n + 2)) * A262727 (n + 1)).toNat

end

end A360385.P11891451721815436036

/-! ## A360385.P15928833157972540310

`A000040(lt[A349177(3*(n+1)), A046970(3*(n+1))])`
-/

namespace A360385.P15928833157972540310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349177 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046970 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A360385.P15928833157972540310

/-! ## A360385.P5935340181676937242

`eq[A051996(n+1)², A003415(n)]`
-/

namespace A360385.P5935340181676937242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051996 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A360385.P5935340181676937242

/-!
# A360387: a(1) = 1, and for n > 1, a(n) is the number of ways that a(1..n-1) can be divided into contiguous subsequences of equal sum.

The programs for A360387, there is no canonical definition to state claims against.
-/

/-! ## A360387.P15457094005166526838

`A385213(A327140(n+1))`
-/

namespace A360387.P15457094005166526838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385213 (A327140 (n + 1)).toNat

end

end A360387.P15457094005166526838

/-! ## A360387.P12580892902131411753

`A305079(A344110(n)+A000005(n+1))`
-/

namespace A360387.P12580892902131411753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A344110 n + A000005 (n + 1)).toNat

end

end A360387.P12580892902131411753

/-! ## A360387.P18358815560572219841

`A245908(n+1)-A297155(A372889(n))`
-/

namespace A360387.P18358815560572219841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245908 (n + 1) - A297155 (A372889 n).toNat

end

end A360387.P18358815560572219841

/-! ## A360387.P7611825252107853912

`A001221(A332337(n+3)+A068293(n+1))`
-/

namespace A360387.P7611825252107853912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A332337 (n + 3) + A068293 (n + 1)).toNat

end

end A360387.P7611825252107853912

/-! ## A360387.P15448486313772298896

`∑{e}[A275630(n+1), #]-A297155(A372889(n))`
-/

namespace A360387.P15448486313772298896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - A297155 (A372889 n).toNat

end

end A360387.P15448486313772298896

/-!
# A360389: The orders of 4-transitive permutation groups.

The programs for A360389, there is no canonical definition to state claims against.
-/

/-! ## A360389.P13111995602290425652

`record[lcm(24, A023676(n+3))]`
-/

namespace A360389.P13111995602290425652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 24 (A023676 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360389.P13111995602290425652

/-!
# A360390: a(1) = 1; a(n) = -Sum_{k=2..n} k^2 * a(floor(n/k)).

The programs for A360390, the canonical program `A360390.P9795167924610291332` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360390 has offset 1).

The definition of A360390 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360390.P9795167924610291332

`∑[A359485(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A360390

/-- `∑[A359485(n+1)]` -/
def P9795167924610291332.Spec : Prop :=
  ∀ n, P9795167924610291332.a n = A360390 (n + 1)

theorem P9795167924610291332.correct : P9795167924610291332.Spec := by
  intro n
  simp only [A360390, Nat.add_sub_cancel]

end A360390

/-! ## A360390.P3816620377217171427

`A359485(n+1)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A360390.P3816620377217171427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A359485 (n + 1) + a (A028310 n - 1).toNat

end

end A360390.P3816620377217171427

namespace A360390

/-- `A359485(n+1)+a(A028310(n)-1)` -/
def P3816620377217171427.Spec : Prop :=
  ∀ n, P3816620377217171427.a n = A360390 (n + 1)

end A360390

/-! ## A360390.P5110286750242104100

`A359485(n+1)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A360390.P5110286750242104100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A359485 (n + 1) + a (A004273 n - (n : ℤ)).toNat

end

end A360390.P5110286750242104100

namespace A360390

/-- `A359485(n+1)+a(A004273(n)-n)` -/
def P5110286750242104100.Spec : Prop :=
  ∀ n, P5110286750242104100.a n = A360390 (n + 1)

end A360390

/-! ## A360390.P8153651243545461223

`∑[∑{d}[n+1, A046970(#)*A092673((n+1)/#)]]`
-/

namespace A360390.P8153651243545461223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A046970 d * A092673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360390.P8153651243545461223

namespace A360390

/-- `∑[∑{d}[n+1, A046970(#)*A092673((n+1)/#)]]` -/
def P8153651243545461223.Spec : Prop :=
  ∀ n, P8153651243545461223.a n = A360390 (n + 1)

end A360390

/-! ## A360390.P9217054758691832534

`∑[∑{d}[n+1, A326305(#)*A351654((n+1)/#)]]`
-/

namespace A360390.P9217054758691832534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A326305 d * A351654 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360390.P9217054758691832534

namespace A360390

/-- `∑[∑{d}[n+1, A326305(#)*A351654((n+1)/#)]]` -/
def P9217054758691832534.Spec : Prop :=
  ∀ n, P9217054758691832534.a n = A360390 (n + 1)

end A360390

/-!
# A360391: a(n) is the number of distinct sums of nonempty subsets of the digits of n.

The programs for A360391, the canonical program `A360391.P11272878335720519072` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360391 has offset 0).

The definition of A360391 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360391.P244377442156685919

`A126304(A123895(n))+1`
-/

namespace A360391.P244377442156685919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126304 (A123895 n).toNat + 1

end

end A360391.P244377442156685919

namespace A360391

/-- `A126304(A123895(n))+1` -/
def P244377442156685919.Spec : Prop :=
  ∀ n, P244377442156685919.a n = A360391 n

end A360391

/-! ## A360391.P16389812064532463842

`A377191(n)+A055642(A265525(n))`
-/

namespace A360391.P16389812064532463842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377191 n + A055642 (A265525 n).toNat

end

end A360391.P16389812064532463842

namespace A360391

/-- `A377191(n)+A055642(A265525(n))` -/
def P16389812064532463842.Spec : Prop :=
  ∀ n, P16389812064532463842.a n = A360391 n

end A360391

/-! ## A360391.P3772032712138232047

`A055640(A047842(n)-A007953(n))`
-/

namespace A360391.P3772032712138232047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A047842 n - A007953 n).toNat

end

end A360391.P3772032712138232047

namespace A360391

/-- `A055640(A047842(n)-A007953(n))` -/
def P3772032712138232047.Spec : Prop :=
  ∀ n, P3772032712138232047.a n = A360391 n

end A360391

/-! ## A360391.P6358938515238533209

`ceil((A061901(n)+A025581(A196222(n)))/2)`
-/

namespace A360391.P6358938515238533209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A061901 n + A025581 (A196222 n).toNat : ℚ) / 2⌉

end

end A360391.P6358938515238533209

namespace A360391

/-- `ceil((A061901(n)+A025581(A196222(n)))/2)` -/
def P6358938515238533209.Spec : Prop :=
  ∀ n, P6358938515238533209.a n = A360391 n

end A360391

/-! ## A360391.P11272878335720519072

`A043537(A051022(n)+floor(1/(n+1)))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A360391

/-- `A043537(A051022(n)+floor(1/(n+1)))` -/
def P11272878335720519072.Spec : Prop :=
  ∀ n, P11272878335720519072.a n = A360391 n

theorem P11272878335720519072.correct : P11272878335720519072.Spec := by
  intro n
  simp only [A360391]

end A360391

/-! ## A360391.P17701859151010162268

`A262190(A123895(n)^A043562(n))`
-/

namespace A360391.P17701859151010162268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262190 (SequenceMachineLib.roundAway ((A123895 n : ℚ) ^ (A043562 n : ℤ))).toNat

end

end A360391.P17701859151010162268

namespace A360391

/-- `A262190(A123895(n)^A043562(n))` -/
def P17701859151010162268.Spec : Prop :=
  ∀ n, P17701859151010162268.a n = A360391 n

end A360391

/-! ## A360391.P707371665841062029

`A111633(A123895(n))`
-/

namespace A360391.P707371665841062029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111633 (A123895 n).toNat

end

end A360391.P707371665841062029

namespace A360391

/-- `A111633(A123895(n))` -/
def P707371665841062029.Spec : Prop :=
  ∀ n, P707371665841062029.a n = A360391 n

end A360391

/-! ## A360391.P2737334817478606590

`A324918(A123895(n)+1)`
-/

namespace A360391.P2737334817478606590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324918 (A123895 n + 1).toNat

end

end A360391.P2737334817478606590

namespace A360391

/-- `A324918(A123895(n)+1)` -/
def P2737334817478606590.Spec : Prop :=
  ∀ n, P2737334817478606590.a n = A360391 n

end A360391

/-! ## A360391.P584730815925161786

`A169993(or(1, A123895(n)))`
-/

namespace A360391.P584730815925161786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169993 (Int.lor 1 (A123895 n)).toNat

end

end A360391.P584730815925161786

namespace A360391

/-- `A169993(or(1, A123895(n)))` -/
def P584730815925161786.Spec : Prop :=
  ∀ n, P584730815925161786.a n = A360391 n

end A360391

/-! ## A360391.P12835659750703292148

`A055642(C(A123895(n), 9))`
-/

namespace A360391.P12835659750703292148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Nat.choose (A123895 n).toNat 9)

end

end A360391.P12835659750703292148

namespace A360391

/-- `A055642(C(A123895(n), 9))` -/
def P12835659750703292148.Spec : Prop :=
  ∀ n, P12835659750703292148.a n = A360391 n

end A360391

/-! ## A360391.P10120291870931760213

`A198318(2*A123895(n))+1`
-/

namespace A360391.P10120291870931760213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198318 (2 * A123895 n).toNat + 1

end

end A360391.P10120291870931760213

namespace A360391

/-- `A198318(2*A123895(n))+1` -/
def P10120291870931760213.Spec : Prop :=
  ∀ n, P10120291870931760213.a n = A360391 n

end A360391

/-! ## A360391.P3642973300398823357

`A090822(2*∏{d}[A123895(n), #])`
-/

namespace A360391.P3642973300398823357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (2 * (∏ d ∈ Nat.divisors (f1 n).natAbs, d))

end

end A360391.P3642973300398823357

namespace A360391

/-- `A090822(2*∏{d}[A123895(n), #])` -/
def P3642973300398823357.Spec : Prop :=
  ∀ n, P3642973300398823357.a n = A360391 n

end A360391

/-! ## A360391.P12778704542791932782

`A135717(∏{d}[A123895(n), #]+4)-2`
-/

namespace A360391.P12778704542791932782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135717 (∏ d ∈ Nat.divisors (f1 n).natAbs, d + 4) - 2

end

end A360391.P12778704542791932782

namespace A360391

/-- `A135717(∏{d}[A123895(n), #]+4)-2` -/
def P12778704542791932782.Spec : Prop :=
  ∀ n, P12778704542791932782.a n = A360391 n

end A360391

/-! ## A360391.P14055973642219202724

`A169993(A123895(n)+A000122(n))`
-/

namespace A360391.P14055973642219202724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169993 (A123895 n + A000122 n).toNat

end

end A360391.P14055973642219202724

namespace A360391

/-- `A169993(A123895(n)+A000122(n))` -/
def P14055973642219202724.Spec : Prop :=
  ∀ n, P14055973642219202724.a n = A360391 n

end A360391

/-! ## A360391.P4785694157164234330

`A043562(A240237(n)-A151950(n))`
-/

namespace A360391.P4785694157164234330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A240237 n - A151950 n).toNat

end

end A360391.P4785694157164234330

namespace A360391

/-- `A043562(A240237(n)-A151950(n))` -/
def P4785694157164234330.Spec : Prop :=
  ∀ n, P4785694157164234330.a n = A360391 n

end A360391

/-! ## A360391.P524805981834530521

`A124736(A344511(n)^A061901(n))`
-/

namespace A360391.P524805981834530521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124736 (SequenceMachineLib.roundAway ((A344511 n : ℚ) ^ (A061901 n : ℤ))).toNat

end

end A360391.P524805981834530521

namespace A360391

/-- `A124736(A344511(n)^A061901(n))` -/
def P524805981834530521.Spec : Prop :=
  ∀ n, P524805981834530521.a n = A360391 n

end A360391

/-! ## A360391.P14079850070597212554

`A326843(A061901(n))+A000007(A202018(n))`
-/

namespace A360391.P14079850070597212554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326843 (A061901 n).toNat + A000007 (A202018 n).toNat

end

end A360391.P14079850070597212554

namespace A360391

/-- `A326843(A061901(n))+A000007(A202018(n))` -/
def P14079850070597212554.Spec : Prop :=
  ∀ n, P14079850070597212554.a n = A360391 n

end A360391

/-!
# A360392: a(n) = 2 + A026430(n); complement of A360393.

The programs for A360392, the canonical program `A360392.P6145566539357259399` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360392 has offset 1).

The definition of A360392 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2+A026430(n+1)` (program `A360392.P6145566539357259399`, by `A360392.P6145566539357259399.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A360392.P6145566539357259399

`2+A026430(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A360392

/-- `2+A026430(n+1)` -/
def P6145566539357259399.Spec : Prop :=
  ∀ n, P6145566539357259399.a n = A360392 (n + 1)

theorem P6145566539357259399.correct : P6145566539357259399.Spec := by
  intro n
  simp only [A360392, Nat.add_sub_cancel]

end A360392

/-! ## A360392.P13114821539929168996

`∑[2-char[xor(n, 2*n)]]+2`
-/

namespace A360392.P13114821539929168996
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A360392.P13114821539929168996

namespace A360392

/-- `∑[2-char[xor(n, 2*n)]]+2` -/
def P13114821539929168996.Spec : Prop :=
  ∀ n, P13114821539929168996.a n = A360392 (n + 1)

end A360392

/-! ## A360392.P10033939100470373093

`∑[2-(a(floor(n/2))+n)%2]` with `a(0)=3`
-/

namespace A360392.P10033939100470373093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  2 - Int.tmod (f1 ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360392.P10033939100470373093

namespace A360392

/-- `∑[2-(a(floor(n/2))+n)%2]` -/
def P10033939100470373093.Spec : Prop :=
  ∀ n, P10033939100470373093.a n = A360392 (n + 1)

end A360392

/-! ## A360392.P1012171841215717571

`a(n-1)+2-char[xor(n, 2*n)]` with `a(0)=3`
-/

namespace A360392.P1012171841215717571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A360392.P1012171841215717571

namespace A360392

/-- `a(n-1)+2-char[xor(n, 2*n)]` -/
def P1012171841215717571.Spec : Prop :=
  ∀ n, P1012171841215717571.a n = A360392 (n + 1)

end A360392

/-! ## A360392.P7073537664297534264

`∑[A001285(n)]+2`
-/

namespace A360392.P7073537664297534264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A360392.P7073537664297534264

namespace A360392

/-- `∑[A001285(n)]+2` -/
def P7073537664297534264.Spec : Prop :=
  ∀ n, P7073537664297534264.a n = A360392 (n + 1)

end A360392

/-! ## A360392.P761653286387258438

`A115384(n)+3+n`
-/

namespace A360392.P761653286387258438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 n + 3 + (n : ℤ)

end

end A360392.P761653286387258438

namespace A360392

/-- `A115384(n)+3+n` -/
def P761653286387258438.Spec : Prop :=
  ∀ n, P761653286387258438.a n = A360392 (n + 1)

end A360392

/-! ## A360392.P14722336364043915380

`2*n+3-A245710(n)`
-/

namespace A360392.P14722336364043915380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A245710 n

end

end A360392.P14722336364043915380

namespace A360392

/-- `2*n+3-A245710(n)` -/
def P14722336364043915380.Spec : Prop :=
  ∀ n, P14722336364043915380.a n = A360392 (n + 1)

end A360392

/-! ## A360392.P4803179960817066939

`A285954(n+1)+A001285(n)+1`
-/

namespace A360392.P4803179960817066939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285954 (n + 1) + (A001285 n + 1)

end

end A360392.P4803179960817066939

namespace A360392

/-- `A285954(n+1)+A001285(n)+1` -/
def P4803179960817066939.Spec : Prop :=
  ∀ n, P4803179960817066939.a n = A360392 (n + 1)

end A360392

/-! ## A360392.P11353680249089038642

`∪[A360394(n+1), A360396(n+1)]`
-/

namespace A360392.P11353680249089038642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360392.P11353680249089038642

namespace A360392

/-- `∪[A360394(n+1), A360396(n+1)]` -/
def P11353680249089038642.Spec : Prop :=
  ∀ n, (P11353680249089038642.a n : ℤ) = A360392 (n + 1)

end A360392

/-! ## A360392.P8038388077398894060

`A285951(n+1)+2-A285950(n+1)`
-/

namespace A360392.P8038388077398894060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285951 (n + 1) + (2 - A285950 (n + 1))

end

end A360392.P8038388077398894060

namespace A360392

/-- `A285951(n+1)+2-A285950(n+1)` -/
def P8038388077398894060.Spec : Prop :=
  ∀ n, P8038388077398894060.a n = A360392 (n + 1)

end A360392

/-! ## A360392.P3115148130774655553

`A010060(n+1)+A000069(n+2)-A245710(n)`
-/

namespace A360392.P3115148130774655553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (n + 1) + (A000069 (n + 2) - A245710 n)

end

end A360392.P3115148130774655553

namespace A360392

/-- `A010060(n+1)+A000069(n+2)-A245710(n)` -/
def P3115148130774655553.Spec : Prop :=
  ∀ n, P3115148130774655553.a n = A360392 (n + 1)

end A360392

/-! ## A360392.P13881362278430334441

`A285954(n+2)+1`
-/

namespace A360392.P13881362278430334441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285954 (n + 2) + 1

end

end A360392.P13881362278430334441

namespace A360392

/-- `A285954(n+2)+1` -/
def P13881362278430334441.Spec : Prop :=
  ∀ n, P13881362278430334441.a n = A360392 (n + 1)

theorem P13881362278430334441.correct : P13881362278430334441.Spec := by
  intro n
  simp only [A360392, Nat.add_sub_cancel, A360392.P13881362278430334441.a, A360392.P6145566539357259399.a, A026430, A026430.P14890685957938381463.a, A285954, A285954.P14356408792107538698.a, A000069, A000069.P3917626109476666468.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360392

/-! ## A360392.P1082022255807921235

`A285950(n+2)+A076826(n)`
-/

namespace A360392.P1082022255807921235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285950 (n + 2) + A076826 n

end

end A360392.P1082022255807921235

namespace A360392

/-- `A285950(n+2)+A076826(n)` -/
def P1082022255807921235.Spec : Prop :=
  ∀ n, P1082022255807921235.a n = A360392 (n + 1)

end A360392

/-! ## A360392.P12868913724189879313

`A010059(n+1)+A001969(n+2)-A245710(n)`
-/

namespace A360392.P12868913724189879313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (n + 1) + (A001969 (n + 2) - A245710 n)

end

end A360392.P12868913724189879313

namespace A360392

/-- `A010059(n+1)+A001969(n+2)-A245710(n)` -/
def P12868913724189879313.Spec : Prop :=
  ∀ n, P12868913724189879313.a n = A360392 (n + 1)

end A360392

/-! ## A360392.P832248792696195851

`A010060(n+1)+A285953(n+2)-A285950(n+2)`
-/

namespace A360392.P832248792696195851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (n + 1) + (A285953 (n + 2) - A285950 (n + 2))

end

end A360392.P832248792696195851

namespace A360392

/-- `A010060(n+1)+A285953(n+2)-A285950(n+2)` -/
def P832248792696195851.Spec : Prop :=
  ∀ n, P832248792696195851.a n = A360392 (n + 1)

end A360392

/-! ## A360392.P10857073256920591267

`∑[char[xor(n, Δ[n²])]]+3+n`
-/

namespace A360392.P10857073256920591267
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3 + n

end

end A360392.P10857073256920591267

namespace A360392

/-- `∑[char[xor(n, Δ[n²])]]+3+n` -/
def P10857073256920591267.Spec : Prop :=
  ∀ n, (P10857073256920591267.a n : ℤ) = A360392 (n + 1)

end A360392

/-! ## A360392.P4621847377197944126

`∑[A277822(2*n+1)]+2`
-/

namespace A360392.P4621847377197944126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A360392.P4621847377197944126

namespace A360392

/-- `∑[A277822(2*n+1)]+2` -/
def P4621847377197944126.Spec : Prop :=
  ∀ n, P4621847377197944126.a n = A360392 (n + 1)

end A360392

/-! ## A360392.P14441742114982806615

`A009056(A026430(n+1))`
-/

namespace A360392.P14441742114982806615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A026430 (n + 1)).toNat

end

end A360392.P14441742114982806615

namespace A360392

/-- `A009056(A026430(n+1))` -/
def P14441742114982806615.Spec : Prop :=
  ∀ n, P14441742114982806615.a n = A360392 (n + 1)

end A360392

/-!
# A360393: Complement of A360392.

The programs for A360393, the canonical program `A360393.P1701064018632553590` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360393 has offset 1).

The definition of A360393 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360393.P1701064018632553590

`∪[A360395(n+1), A360397(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A360393

/-- `∪[A360395(n+1), A360397(n+1)]` -/
def P1701064018632553590.Spec : Prop :=
  ∀ n, (P1701064018632553590.a n : ℤ) = A360393 (n + 1)

theorem P1701064018632553590.correct : P1701064018632553590.Spec := by
  intro n
  simp only [A360393, Nat.add_sub_cancel]

end A360393

/-! ## A360393.P1023920978007642932

`∪[A360403(n+1), A360405(n+1)]`
-/

namespace A360393.P1023920978007642932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360393.P1023920978007642932

namespace A360393

/-- `∪[A360403(n+1), A360405(n+1)]` -/
def P1023920978007642932.Spec : Prop :=
  ∀ n, (P1023920978007642932.a n : ℤ) = A360393 (n + 1)

end A360393

/-! ## A360393.P1891931323308812382

`A004396(A360399(n+1))`
-/

namespace A360393.P1891931323308812382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A360399 (n + 1)).toNat

end

end A360393.P1891931323308812382

namespace A360393

/-- `A004396(A360399(n+1))` -/
def P1891931323308812382.Spec : Prop :=
  ∀ n, P1891931323308812382.a n = A360393 (n + 1)

end A360393

/-! ## A360393.P15810695872590566869

`ceil(A360401(n+1)/3)`
-/

namespace A360393.P15810695872590566869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A360401 (n + 1) : ℚ) / 3⌉

end

end A360393.P15810695872590566869

namespace A360393

/-- `ceil(A360401(n+1)/3)` -/
def P15810695872590566869.Spec : Prop :=
  ∀ n, P15810695872590566869.a n = A360393 (n + 1)

end A360393

/-! ## A360393.P18334815903487680840

`A008620(A360401(n+1))`
-/

namespace A360393.P18334815903487680840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A360401 (n + 1)).toNat

end

end A360393.P18334815903487680840

namespace A360393

/-- `A008620(A360401(n+1))` -/
def P18334815903487680840.Spec : Prop :=
  ∀ n, P18334815903487680840.a n = A360393 (n + 1)

end A360393

/-! ## A360393.P14299060005787045700

`A002264(A360401(n+1)+3)`
-/

namespace A360393.P14299060005787045700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A360401 (n + 1) + 3).toNat

end

end A360393.P14299060005787045700

namespace A360393

/-- `A002264(A360401(n+1)+3)` -/
def P14299060005787045700.Spec : Prop :=
  ∀ n, P14299060005787045700.a n = A360393 (n + 1)

end A360393

/-! ## A360393.P14739495185803515857

`A008615(2*A360401(n+1))`
-/

namespace A360393.P14739495185803515857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * A360401 (n + 1)).toNat

end

end A360393.P14739495185803515857

namespace A360393

/-- `A008615(2*A360401(n+1))` -/
def P14739495185803515857.Spec : Prop :=
  ∀ n, P14739495185803515857.a n = A360393 (n + 1)

end A360393

/-!
# A360394: Intersection of A026430 and A360392.

The programs for A360394, the canonical program `A360394.P3572718822950874198` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360394 has offset 1).

The definition of A360394 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360394.P3572718822950874198

`A285980(n+1)+1+n`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A360394

/-- `A285980(n+1)+1+n` -/
def P3572718822950874198.Spec : Prop :=
  ∀ n, P3572718822950874198.a n = A360394 (n + 1)

theorem P3572718822950874198.correct : P3572718822950874198.Spec := by
  intro n
  simp only [A360394, Nat.add_sub_cancel]

end A360394

/-! ## A360394.P9611243611302277386

`eq[1, A285978(n+1)]+n+2`
-/

namespace A360394.P9611243611302277386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285978 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 2)

end

end A360394.P9611243611302277386

namespace A360394

/-- `eq[1, A285978(n+1)]+n+2` -/
def P9611243611302277386.Spec : Prop :=
  ∀ n, (P9611243611302277386.a n : ℤ) = A360394 (n + 1)

end A360394

/-! ## A360394.P14727562637366491354

`A020725(A285980(n+1))+n`
-/

namespace A360394.P14727562637366491354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A285980 (n + 1)).toNat + (n : ℤ)

end

end A360394.P14727562637366491354

namespace A360394

/-- `A020725(A285980(n+1))+n` -/
def P14727562637366491354.Spec : Prop :=
  ∀ n, P14727562637366491354.a n = A360394 (n + 1)

end A360394

/-! ## A360394.P16705660288187301601

`A360392(lt[0, A036580(n)])`
-/

namespace A360394.P16705660288187301601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036580 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360392 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A360394.P16705660288187301601

namespace A360394

/-- `A360392(lt[0, A036580(n)])` -/
def P16705660288187301601.Spec : Prop :=
  ∀ n, P16705660288187301601.a n = A360394 (n + 1)

end A360394

/-! ## A360394.P11033596500134895781

`A360392(lt[1, A036583(n)])`
-/

namespace A360394.P11033596500134895781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360392 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A360394.P11033596500134895781

namespace A360394

/-- `A360392(lt[1, A036583(n)])` -/
def P11033596500134895781.Spec : Prop :=
  ∀ n, P11033596500134895781.a n = A360394 (n + 1)

end A360394

/-! ## A360394.P10470340047170232655

`A360392(lt[2, A354384(n+1)])`
-/

namespace A360394.P10470340047170232655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360392 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A360394.P10470340047170232655

namespace A360394

/-- `A360392(lt[2, A354384(n+1)])` -/
def P10470340047170232655.Spec : Prop :=
  ∀ n, P10470340047170232655.a n = A360394 (n + 1)

end A360394

/-! ## A360394.P17077434324597551397

`∩[A360392(n+1), A026430(n)]`
-/

namespace A360394.P17077434324597551397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360394.P17077434324597551397

namespace A360394

/-- `∩[A360392(n+1), A026430(n)]` -/
def P17077434324597551397.Spec : Prop :=
  ∀ n, (P17077434324597551397.a n : ℤ) = A360394 (n + 1)

end A360394

/-! ## A360394.P8417077213088879213

`A066530(A091785(n+1))`
-/

namespace A360394.P8417077213088879213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066530 (A091785 (n + 1)).toNat

end

end A360394.P8417077213088879213

namespace A360394

/-- `A066530(A091785(n+1))` -/
def P8417077213088879213.Spec : Prop :=
  ∀ n, P8417077213088879213.a n = A360394 (n + 1)

end A360394

/-! ## A360394.P15931187094631556693

`A066530(A248056(n+1)/2)`
-/

namespace A360394.P15931187094631556693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066530 (SequenceMachineLib.roundAway ((A248056 (n + 1) : ℚ) / 2)).toNat

end

end A360394.P15931187094631556693

namespace A360394

/-- `A066530(A248056(n+1)/2)` -/
def P15931187094631556693.Spec : Prop :=
  ∀ n, P15931187094631556693.a n = A360394 (n + 1)

end A360394

/-! ## A360394.P6828967478250687869

`A065033(A360395(n+2))`
-/

namespace A360394.P6828967478250687869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A360395 (n + 2)).toNat

end

end A360394.P6828967478250687869

namespace A360394

/-- `A065033(A360395(n+2))` -/
def P6828967478250687869.Spec : Prop :=
  ∀ n, P6828967478250687869.a n = A360394 (n + 1)

end A360394

/-! ## A360394.P5687640600877779396

`A108356(A248056(n+1))`
-/

namespace A360394.P5687640600877779396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108356 (A248056 (n + 1)).toNat

end

end A360394.P5687640600877779396

namespace A360394

/-- `A108356(A248056(n+1))` -/
def P5687640600877779396.Spec : Prop :=
  ∀ n, P5687640600877779396.a n = A360394 (n + 1)

end A360394

/-! ## A360394.P17464879373074404929

`A108356(2*A091785(n+1))`
-/

namespace A360394.P17464879373074404929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108356 (2 * A091785 (n + 1)).toNat

end

end A360394.P17464879373074404929

namespace A360394

/-- `A108356(2*A091785(n+1))` -/
def P17464879373074404929.Spec : Prop :=
  ∀ n, P17464879373074404929.a n = A360394 (n + 1)

end A360394

/-! ## A360394.P7912704853533107589

`A092278(A108269(2*(n+1)))+1`
-/

namespace A360394.P7912704853533107589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092278 (A108269 (2 * (n + 1))).toNat + 1

end

end A360394.P7912704853533107589

namespace A360394

/-- `A092278(A108269(2*(n+1)))+1` -/
def P7912704853533107589.Spec : Prop :=
  ∀ n, P7912704853533107589.a n = A360394 (n + 1)

end A360394

/-!
# A360395: Intersection of A026430 and A360393.

The programs for A360395, the canonical program `A360395.P2153048624438428772` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360395 has offset 1).

The definition of A360395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360395.P2153048624438428772

`floor(3*(A285973(n+1)-n)/2)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A360395

/-- `floor(3*(A285973(n+1)-n)/2)` -/
def P2153048624438428772.Spec : Prop :=
  ∀ n, P2153048624438428772.a n = A360395 (n + 1)

theorem P2153048624438428772.correct : P2153048624438428772.Spec := by
  intro n
  simp only [A360395, Nat.add_sub_cancel]

end A360395

/-! ## A360395.P10155671302382066062

`A026430(A285973(n+1)-n)`
-/

namespace A360395.P10155671302382066062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (A285973 (n + 1) - (n : ℤ)).toNat

end

end A360395.P10155671302382066062

namespace A360395

/-- `A026430(A285973(n+1)-n)` -/
def P10155671302382066062.Spec : Prop :=
  ∀ n, P10155671302382066062.a n = A360395 (n + 1)

end A360395

/-! ## A360395.P14399360988071748568

`A032766(A285973(n+1)-n)`
-/

namespace A360395.P14399360988071748568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A285973 (n + 1) - (n : ℤ)).toNat

end

end A360395.P14399360988071748568

namespace A360395

/-- `A032766(A285973(n+1)-n)` -/
def P14399360988071748568.Spec : Prop :=
  ∀ n, P14399360988071748568.a n = A360395 (n + 1)

end A360395

/-! ## A360395.P2488719131861444004

`A285954(A285973(n+1)-n)`
-/

namespace A360395.P2488719131861444004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285954 (A285973 (n + 1) - (n : ℤ)).toNat

end

end A360395.P2488719131861444004

namespace A360395

/-- `A285954(A285973(n+1)-n)` -/
def P2488719131861444004.Spec : Prop :=
  ∀ n, P2488719131861444004.a n = A360395 (n + 1)

end A360395

/-! ## A360395.P13692034240878064072

`A286727(A285973(n+1)-n)`
-/

namespace A360395.P13692034240878064072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286727 (A285973 (n + 1) - (n : ℤ)).toNat

end

end A360395.P13692034240878064072

namespace A360395

/-- `A286727(A285973(n+1)-n)` -/
def P13692034240878064072.Spec : Prop :=
  ∀ n, P13692034240878064072.a n = A360395 (n + 1)

end A360395

/-! ## A360395.P5282584612162045717

`∩[A360393(n+1), A026430(n)]`
-/

namespace A360395.P5282584612162045717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360395.P5282584612162045717

namespace A360395

/-- `∩[A360393(n+1), A026430(n)]` -/
def P5282584612162045717.Spec : Prop :=
  ∀ n, (P5282584612162045717.a n : ℤ) = A360395 (n + 1)

end A360395

/-! ## A360395.P17681901909574330286

`∩[A360393(n+1), a(n-1)+n-A161560(n)]` with `a(0)=0`
-/

namespace A360395.P17681901909574330286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) + ((n : ℤ) - A161560 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360395.P17681901909574330286

namespace A360395

/-- `∩[A360393(n+1), a(n-1)+n-A161560(n)]` -/
def P17681901909574330286.Spec : Prop :=
  ∀ n, (P17681901909574330286.a n : ℤ) = A360395 (n + 1)

end A360395

/-! ## A360395.P2943831994831998363

`∩[comp[A356133(n+1)], A360393(n+1)]`
-/

namespace A360395.P2943831994831998363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A360395.P2943831994831998363

namespace A360395

/-- `∩[comp[A356133(n+1)], A360393(n+1)]` -/
def P2943831994831998363.Spec : Prop :=
  ∀ n, (P2943831994831998363.a n : ℤ) = A360395 (n + 1)

end A360395

/-! ## A360395.P6325499408960632842

`∩[A285954(n+1)-1, A360393(n+1)]`
-/

namespace A360395.P6325499408960632842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285954 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360395.P6325499408960632842

namespace A360395

/-- `∩[A285954(n+1)-1, A360393(n+1)]` -/
def P6325499408960632842.Spec : Prop :=
  ∀ n, (P6325499408960632842.a n : ℤ) = A360395 (n + 1)

end A360395

/-! ## A360395.P561446057075376644

`∩[A360393(n+1), comp[A360397(n+1)]]`
-/

namespace A360395.P561446057075376644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360397 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A360395.P561446057075376644

namespace A360395

/-- `∩[A360393(n+1), comp[A360397(n+1)]]` -/
def P561446057075376644.Spec : Prop :=
  ∀ n, (P561446057075376644.a n : ℤ) = A360395 (n + 1)

end A360395

/-!
# A360396: Intersection of A356133 and A360392.

The programs for A360396, the canonical program `A360396.P1664411454202365035` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360396 has offset 1).

The definition of A360396 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360396.P13776083317284376950

`A026430(A091855(n+2))+1`
-/

namespace A360396.P13776083317284376950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (A091855 (n + 2)).toNat + 1

end

end A360396.P13776083317284376950

namespace A360396

/-- `A026430(A091855(n+2))+1` -/
def P13776083317284376950.Spec : Prop :=
  ∀ n, P13776083317284376950.a n = A360396 (n + 1)

end A360396

/-! ## A360396.P17991241694597989265

`A360392(A091855(n+2)-1)`
-/

namespace A360396.P17991241694597989265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360392 (A091855 (n + 2) - 1).toNat

end

end A360396.P17991241694597989265

namespace A360396

/-- `A360392(A091855(n+2)-1)` -/
def P17991241694597989265.Spec : Prop :=
  ∀ n, P17991241694597989265.a n = A360396 (n + 1)

end A360396

/-! ## A360396.P1664411454202365035

`∩[A356133(n+1), A360392(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A360396

/-- `∩[A356133(n+1), A360392(n+1)]` -/
def P1664411454202365035.Spec : Prop :=
  ∀ n, (P1664411454202365035.a n : ℤ) = A360396 (n + 1)

theorem P1664411454202365035.correct : P1664411454202365035.Spec := by
  intro n
  simp only [A360396, Nat.add_sub_cancel]

end A360396

/-! ## A360396.P9058040656473301492

`∩[A356133(n+1), comp[A360393(n+1)]]`
-/

namespace A360396.P9058040656473301492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A360396.P9058040656473301492

namespace A360396

/-- `∩[A356133(n+1), comp[A360393(n+1)]]` -/
def P9058040656473301492.Spec : Prop :=
  ∀ n, (P9058040656473301492.a n : ℤ) = A360396 (n + 1)

end A360396

/-! ## A360396.P15874957337685382654

`A285954(A091855(n+2)+1)`
-/

namespace A360396.P15874957337685382654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285954 (A091855 (n + 2) + 1).toNat

end

end A360396.P15874957337685382654

namespace A360396

/-- `A285954(A091855(n+2)+1)` -/
def P15874957337685382654.Spec : Prop :=
  ∀ n, P15874957337685382654.a n = A360396 (n + 1)

end A360396

/-! ## A360396.P7440011353402486348

`A285954(A285959(n+2)-(n+1))`
-/

namespace A360396.P7440011353402486348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285954 (A285959 (n + 2) - (n + 1 : ℤ)).toNat

end

end A360396.P7440011353402486348

namespace A360396

/-- `A285954(A285959(n+2)-(n+1))` -/
def P7440011353402486348.Spec : Prop :=
  ∀ n, P7440011353402486348.a n = A360396 (n + 1)

end A360396

/-! ## A360396.P18175205056719416946

`A037915(A248057(n+2))`
-/

namespace A360396.P18175205056719416946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037915 (A248057 (n + 2)).toNat

end

end A360396.P18175205056719416946

namespace A360396

/-- `A037915(A248057(n+2))` -/
def P18175205056719416946.Spec : Prop :=
  ∀ n, P18175205056719416946.a n = A360396 (n + 1)

end A360396

/-! ## A360396.P9545627391071549873

`A265428(A157971(n+2))`
-/

namespace A360396.P9545627391071549873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265428 (A157971 (n + 2)).toNat

end

end A360396.P9545627391071549873

namespace A360396

/-- `A265428(A157971(n+2))` -/
def P9545627391071549873.Spec : Prop :=
  ∀ n, P9545627391071549873.a n = A360396 (n + 1)

end A360396

/-!
# A360397: Intersection of A356133 and A360393.

The programs for A360397, the canonical program `A360397.P4343971559024488872` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360397 has offset 1).

The definition of A360397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360397.P4343971559024488872

`record[(n+1)*(A316826(n)+1)-2]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A360397

/-- `record[(n+1)*(A316826(n)+1)-2]` -/
def P4343971559024488872.Spec : Prop :=
  ∀ n, P4343971559024488872.a n = A360397 (n + 1)

theorem P4343971559024488872.correct : P4343971559024488872.Spec := by
  intro n
  simp only [A360397, Nat.add_sub_cancel]

end A360397

/-! ## A360397.P18298666819359984271

`A356133(eq[2, Δ[A360393(n+1)]])`
-/

namespace A360397.P18298666819359984271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A360397.P18298666819359984271

namespace A360397

/-- `A356133(eq[2, Δ[A360393(n+1)]])` -/
def P18298666819359984271.Spec : Prop :=
  ∀ n, P18298666819359984271.a n = A360397 (n + 1)

end A360397

/-! ## A360397.P7436285485324275443

`∩[A356133(n+1), A360393(n+1)]`
-/

namespace A360397.P7436285485324275443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360397.P7436285485324275443

namespace A360397

/-- `∩[A356133(n+1), A360393(n+1)]` -/
def P7436285485324275443.Spec : Prop :=
  ∀ n, (P7436285485324275443.a n : ℤ) = A360397 (n + 1)

end A360397

/-! ## A360397.P10652304176570723747

`record[gcd(A356133(n+1), A360393(n+2))]`
-/

namespace A360397.P10652304176570723747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A356133 (n + 1)) (A360393 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360397.P10652304176570723747

namespace A360397

/-- `record[gcd(A356133(n+1), A360393(n+2))]` -/
def P10652304176570723747.Spec : Prop :=
  ∀ n, (P10652304176570723747.a n : ℤ) = A360397 (n + 1)

end A360397

/-! ## A360397.P11979704192973746349

`∩[A285953(n+1)-1, A360393(n+1)]`
-/

namespace A360397.P11979704192973746349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285953 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360397.P11979704192973746349

namespace A360397

/-- `∩[A285953(n+1)-1, A360393(n+1)]` -/
def P11979704192973746349.Spec : Prop :=
  ∀ n, (P11979704192973746349.a n : ℤ) = A360397 (n + 1)

end A360397

/-! ## A360397.P5613345861480917084

`∩[A181155(n+1)+n, A360393(n+1)]`
-/

namespace A360397.P5613345861480917084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181155 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360397.P5613345861480917084

namespace A360397

/-- `∩[A181155(n+1)+n, A360393(n+1)]` -/
def P5613345861480917084.Spec : Prop :=
  ∀ n, (P5613345861480917084.a n : ℤ) = A360397 (n + 1)

end A360397

/-! ## A360397.P8332343757054441760

`∩[A000069(n+1)+1+n, A360393(n+1)]`
-/

namespace A360397.P8332343757054441760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1) + 1 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360397.P8332343757054441760

namespace A360397

/-- `∩[A000069(n+1)+1+n, A360393(n+1)]` -/
def P8332343757054441760.Spec : Prop :=
  ∀ n, (P8332343757054441760.a n : ℤ) = A360397 (n + 1)

end A360397

/-! ## A360397.P15944512763234165276

`∩[A285950(2*(n+1))-1, A360393(n+1)]`
-/

namespace A360397.P15944512763234165276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285950 (2 * (n + 1)) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360397.P15944512763234165276

namespace A360397

/-- `∩[A285950(2*(n+1))-1, A360393(n+1)]` -/
def P15944512763234165276.Spec : Prop :=
  ∀ n, (P15944512763234165276.a n : ℤ) = A360397 (n + 1)

end A360397

/-!
# A360398: a(n) = A026430(1 + A360392(n)).

The programs for A360398, there is no canonical definition to state claims against.
-/

/-! ## A360398.P2884230398778711419

`A026430(∑[2-char[xor(n, 2*n)]]+2)`
-/

namespace A360398.P2884230398778711419
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A360398.P2884230398778711419

/-! ## A360398.P975201549900628504

`A026430(∑[2-(a(floor(n/2))+n)%2])` with `a(0)=3`
-/

namespace A360398.P975201549900628504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  2 - Int.tmod (f1 ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A360398.P975201549900628504

/-! ## A360398.P4113741388373341313

`A360392(∑[2-char[xor(n, 2*n)]]+2)-2`
-/

namespace A360398.P4113741388373341313
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360392 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat - 2

end

end A360398.P4113741388373341313

/-! ## A360398.P9004760584493749674

`A026430(∑[2-(n-a(floor(n/2)))%2])` with `a(0)=3`
-/

namespace A360398.P9004760584493749674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  2 - Int.tmod ((n : ℤ) - f1 ⌊(n : ℚ) / 2⌋.toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A360398.P9004760584493749674

/-! ## A360398.P653020682657139900

`A026430(A360392(n+1))`
-/

namespace A360398.P653020682657139900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (A360392 (n + 1)).toNat

end

end A360398.P653020682657139900

/-! ## A360398.P5941991973973116520

`A026430(∑[A001285(n)]+2)`
-/

namespace A360398.P5941991973973116520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A360398.P5941991973973116520

/-! ## A360398.P11465834350027043845

`A026430(A026430(n+1)+2)`
-/

namespace A360398.P11465834350027043845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (A026430 (n + 1) + 2).toNat

end

end A360398.P11465834350027043845

/-! ## A360398.P2402364553429723699

`A285954(A360392(n+1)+1)-1`
-/

namespace A360398.P2402364553429723699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285954 (A360392 (n + 1) + 1).toNat - 1

end

end A360398.P2402364553429723699

/-! ## A360398.P15399097328945221845

`abs(1-A285954(A285954(n+2)+2))`
-/

namespace A360398.P15399097328945221845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A285954 (A285954 (n + 2) + 2).toNat|

end

end A360398.P15399097328945221845

/-! ## A360398.P14108903609339543472

`A360392(∑[A036578(2*n)]+2)-2`
-/

namespace A360398.P14108903609339543472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036578 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360392 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat - 2

end

end A360398.P14108903609339543472

/-!
# A360399: a(n) = A026430(1 + A360393(n)).

The programs for A360399, there is no canonical definition to state claims against.
-/

/-! ## A360399.P12833164972746237922

`A026430(A360393(n+1))`
-/

namespace A360399.P12833164972746237922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (A360393 (n + 1)).toNat

end

end A360399.P12833164972746237922

/-! ## A360399.P5233083132498488378

`A285954(A360393(n+1)+1)-1`
-/

namespace A360399.P5233083132498488378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285954 (A360393 (n + 1) + 1).toNat - 1

end

end A360399.P5233083132498488378

/-! ## A360399.P14342994627300067655

`A360392(A360393(n+1))-A010693(2*n)`
-/

namespace A360399.P14342994627300067655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360392 (A360393 (n + 1)).toNat - A010693 (2 * n)

end

end A360399.P14342994627300067655

/-! ## A360399.P863868310832698181

`A026430(∪[A360395(n+1), A360397(n+1)])`
-/

namespace A360399.P863868310832698181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360397 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A360399.P863868310832698181

/-! ## A360399.P5112845005578319096

`A026430(∪[A360403(n+1), A360405(n+1)])`
-/

namespace A360399.P5112845005578319096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360405 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A360399.P5112845005578319096

/-! ## A360399.P13759497853248983390

`A137719(A360401(n+1))`
-/

namespace A360399.P13759497853248983390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137719 (A360401 (n + 1)).toNat

end

end A360399.P13759497853248983390

