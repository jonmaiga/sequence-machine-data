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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
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
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A063400: Largest n-digit Carmichael numbers.

The programs for A063400, there is no canonical definition to state claims against.
-/

/-! ## A063400.P674312074566786092

`A002997(A055553(n+3))`
-/

namespace A063400.P674312074566786092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (A055553 (n + 3)).toNat

end

end A063400.P674312074566786092

/-!
# A063401: a(n) = a(n-1)*a(n-2)*a(n-3) with a(0)=1, a(1)=2, a(2)=2.

The programs for A063401, the canonical program `A063401.P17678042544295066128` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063401 has offset 0).

The definition of A063401 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)*a(n-3)` (program `A063401.P17678042544295066128`, by `A063401.P17678042544295066128.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A063401.P17678042544295066128

`a(n-1)*a(n-2)*a(n-3)` with `a(0)=1, a(1)=2, a(2)=2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063401

/-- `a(n-1)*a(n-2)*a(n-3)` -/
def P17678042544295066128.Spec : Prop :=
  ∀ n, (P17678042544295066128.a n : ℤ) = A063401 n

theorem P17678042544295066128.correct : P17678042544295066128.Spec := by
  intro n
  simp only [A063401]

end A063401

/-! ## A063401.P18071218993372883949

`2^A000073(n+1)`
-/

namespace A063401.P18071218993372883949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000073 (n + 1) : ℤ)

end

end A063401.P18071218993372883949

namespace A063401

/-- `2^A000073(n+1)` -/
def P18071218993372883949.Spec : Prop :=
  ∀ n, P18071218993372883949.a n = (A063401 n : ℚ)

end A063401

/-! ## A063401.P17302825835511456143

`a(n-1)²/a(n-4)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4`
-/

namespace A063401.P17302825835511456143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 2, 4] fun n a =>
  a (n - 1) ^ 2 / a (n - 4)

end

end A063401.P17302825835511456143

namespace A063401

/-- `a(n-1)²/a(n-4)` -/
def P17302825835511456143.Spec : Prop :=
  ∀ n, P17302825835511456143.a n = (A063401 n : ℚ)

end A063401

/-! ## A063401.P15827988252140885622

`2^Δ[a(n-3)+a(n-2)+a(n-1)+1]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A063401.P15827988252140885622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 (n - 3) + (f1 (n - 2) + f1 (n - 1) + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)

end

end A063401.P15827988252140885622

namespace A063401

/-- `2^Δ[a(n-3)+a(n-2)+a(n-1)+1]` -/
def P15827988252140885622.Spec : Prop :=
  ∀ n, P15827988252140885622.a n = (A063401 n : ℚ)

end A063401

/-! ## A063401.P7341601594014605822

`2^∑[A001590(n)]`
-/

namespace A063401.P7341601594014605822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A063401.P7341601594014605822

namespace A063401

/-- `2^∑[A001590(n)]` -/
def P7341601594014605822.Spec : Prop :=
  ∀ n, P7341601594014605822.a n = (A063401 n : ℚ)

end A063401

/-!
# A063402: a(0)=0; a(1)=1; a(2)=2; a(n)= a(n-1) + a(n-2)*a(n-3).

The programs for A063402, there is no canonical definition to state claims against.
-/

/-! ## A063402.P13626313927673439850

`a(n-1)+a(n-2)*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A063402.P13626313927673439850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 1) + a (n - 2) * a (n - 3)

end

end A063402.P13626313927673439850

/-! ## A063402.P13738307625986915167

`a(n-1)-floor(-a(n-3))*a(n-2)` with `a(0)=0, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A063402.P13738307625986915167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 1) - (-a (n - 3)) * a (n - 2)

end

end A063402.P13738307625986915167

/-! ## A063402.P17607725237763967439

`a(n-1)+a(n-3)/a(n-2)^(-1)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A063402.P17607725237763967439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 1) + a (n - 3) / a (n - 2) ^ (-1 : ℤ)

end

end A063402.P17607725237763967439

/-!
# A063404: a(0)=1; a(1)=1; a(2)=1; a(n) = a(n-1) + (1 + a(n-2))*(1 + a(n-3)).

The programs for A063404, the canonical program `A063404.P11346250842822155209` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063404 has offset 0).

The definition of A063404 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+(1+a(n-2))*(1+a(n-3))` (program `A063404.P11346250842822155209`, by `A063404.P11346250842822155209.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A063404.P11346250842822155209

`a(n-1)+(1+a(n-2))*(1+a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063404

/-- `a(n-1)+(1+a(n-2))*(1+a(n-3))` -/
def P11346250842822155209.Spec : Prop :=
  ∀ n, (P11346250842822155209.a n : ℤ) = A063404 n

theorem P11346250842822155209.correct : P11346250842822155209.Spec := by
  intro n
  simp only [A063404]

end A063404

/-!
# A063405: T(n,m) for positive n,m is the first integer we get when iterating f starting with f(n/m), where function f on rationals is defined as f(p/q)=abs(p-q)/NextOddCollatz(p)(we assume p,q coprime), where NextOddCollatz(p) is the next odd number that is found in the Collatz trajectory of p. When no integer is reached by iteration, T(n,m)=0.

The programs for A063405, there is no canonical definition to state claims against.
-/

/-! ## A063405.P8834317827865997276

`A296354(n)%A050815(A146908(n+1))`
-/

namespace A063405.P8834317827865997276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296354 n) (A050815 (A146908 (n + 1)).toNat)

end

end A063405.P8834317827865997276

/-! ## A063405.P11137060526322674018

`A252736(A276921(n)+A055496(n+1))`
-/

namespace A063405.P11137060526322674018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A276921 n + A055496 (n + 1)).toNat

end

end A063405.P11137060526322674018

/-!
# A063406: Number of cyclic subgroups of order 3 of general affine group AGL(n,2).

The programs for A063406, there is no canonical definition to state claims against.
-/

/-! ## A063406.P17259896509942287159

`(A063386(n+1)-1)/2`
-/

namespace A063406.P17259896509942287159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063386 (n + 1) - 1 : ℚ) / 2

end

end A063406.P17259896509942287159

/-! ## A063406.P16171846906618827265

`floor(A063386(n+1)/2)`
-/

namespace A063406.P16171846906618827265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A063386 (n + 1) : ℚ) / 2⌋

end

end A063406.P16171846906618827265

/-! ## A063406.P2715326668651399486

`floor((A063392(n+1)-6*A063412(n+1))/2)`
-/

namespace A063406.P2715326668651399486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A063392 (n + 1) - 6 * A063412 (n + 1) : ℚ) / 2⌋

end

end A063406.P2715326668651399486

/-!
# A063407: Number of cyclic subgroups of order 4 of general affine group AGL(n,2).

The programs for A063407, there is no canonical definition to state claims against.
-/

/-! ## A063407.P18172906660935264975

`(A063387(n+1)-A063385(n+1))/2`
-/

namespace A063407.P18172906660935264975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063387 (n + 1) - A063385 (n + 1) : ℚ) / 2

end

end A063407.P18172906660935264975

/-!
# A063408: Number of cyclic subgroups of order 5 of general affine group AGL(n,2).

The programs for A063408, there is no canonical definition to state claims against.
-/

/-! ## A063408.P1271799886453515212

`(A063388(n+1)-1)/4`
-/

namespace A063408.P1271799886453515212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063388 (n + 1) - 1 : ℚ) / 4

end

end A063408.P1271799886453515212

/-! ## A063408.P17153546946650831175

`floor(A063388(n+1)/4)`
-/

namespace A063408.P17153546946650831175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A063388 (n + 1) : ℚ) / 4⌋

end

end A063408.P17153546946650831175

/-! ## A063408.P15558457491629884130

`round(A063388(A187829(n+1))/4)`
-/

namespace A063408.P15558457491629884130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A063388 (A187829 (n + 1)).toNat : ℚ) / 4)

end

end A063408.P15558457491629884130

/-!
# A063409: Number of cyclic subgroups of order 6 of general affine group AGL(n,2).

The programs for A063409, there is no canonical definition to state claims against.
-/

/-! ## A063409.P125859511464455970

`(A063389(n+1)-A063386(n+1)-A063385(n+1)+1)/2`
-/

namespace A063409.P125859511464455970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063389 (n + 1) - A063386 (n + 1) - A063385 (n + 1) + 1 : ℚ) / 2

end

end A063409.P125859511464455970

/-!
# A063410: Number of cyclic subgroups of order 7 of general affine group AGL(n,2).

The programs for A063410, there is no canonical definition to state claims against.
-/

/-! ## A063410.P15125593238246336960

`(A063390(n+1)-1)/6`
-/

namespace A063410.P15125593238246336960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063390 (n + 1) - 1 : ℚ) / 6

end

end A063410.P15125593238246336960

/-! ## A063410.P18369967786768186635

`floor(A063390(n+1)/6)`
-/

namespace A063410.P18369967786768186635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A063390 (n + 1) : ℚ) / 6⌋

end

end A063410.P18369967786768186635

/-! ## A063410.P4258878222358887830

`round(A000035(gcd(2, n)²+n)+A063390(n+1)/6)`
-/

namespace A063410.P4258878222358887830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000035 (Nat.gcd 2 n ^ 2 + n) : ℚ) + (A063390 (n + 1) : ℚ) / 6)

end

end A063410.P4258878222358887830

/-! ## A063410.P3015772920583566662

`round(A185284(A007989(n))+A063390(n+1)/6)`
-/

namespace A063410.P3015772920583566662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A185284 (A007989 n).toNat : ℚ) + (A063390 (n + 1) : ℚ) / 6)

end

end A063410.P3015772920583566662

/-! ## A063410.P2911258120468835075

`round(A162518(A119788(n+1))+A063390(n+1)/6)`
-/

namespace A063410.P2911258120468835075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A162518 (A119788 (n + 1)).toNat : ℚ) + (A063390 (n + 1) : ℚ) / 6)

end

end A063410.P2911258120468835075

/-!
# A063411: Number of cyclic subgroups of order 8 of general affine group AGL(n,2).

The programs for A063411, there is no canonical definition to state claims against.
-/

/-! ## A063411.P18430038999118458745

`(A063391(n+1)-A063387(n+1))/4`
-/

namespace A063411.P18430038999118458745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063391 (n + 1) - A063387 (n + 1) : ℚ) / 4

end

end A063411.P18430038999118458745

/-!
# A063412: Number of cyclic subgroups of order 9 of general affine group AGL(n,2).

The programs for A063412, there is no canonical definition to state claims against.
-/

/-! ## A063412.P18383517747456138161

`(A063392(n+1)-A063386(n+1))/6`
-/

namespace A063412.P18383517747456138161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063392 (n + 1) - A063386 (n + 1) : ℚ) / 6

end

end A063412.P18383517747456138161

/-!
# A063413: Number of cyclic subgroups of order 10 of general affine group AGL(n,2).

The programs for A063413, there is no canonical definition to state claims against.
-/

/-! ## A063413.P10745517016076420214

`(A063393(n+1)-A063388(n+1)-A063385(n+1)+1)/4`
-/

namespace A063413.P10745517016076420214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063393 (n + 1) - A063388 (n + 1) - A063385 (n + 1) + 1 : ℚ) / 4

end

end A063413.P10745517016076420214

/-! ## A063413.P13368907034678033977

`(A063388(n+1)-1)/4*A243148(A050351(n))`
-/

namespace A063413.P13368907034678033977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063388 (n + 1) - 1 : ℚ) / 4 * (A243148 (A050351 n).toNat : ℚ)

end

end A063413.P13368907034678033977

/-!
# A063414: Number of digits in prime(n)! (A039716).

The programs for A063414, there is no canonical definition to state claims against.
-/

/-! ## A063414.P278612891900900528

`A034886(record[A051698(n)])`
-/

namespace A063414.P278612891900900528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A063414.P278612891900900528

/-! ## A063414.P836799025952251394

`A034886(A000040(n+1))`
-/

namespace A063414.P836799025952251394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (A000040 (n + 1)).toNat

end

end A063414.P836799025952251394

/-! ## A063414.P2436815941024216097

`A034886(A006005(n+1))`
-/

namespace A063414.P2436815941024216097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (A006005 (n + 1)).toNat

end

end A063414.P2436815941024216097

/-! ## A063414.P1233212330879411982

`A034886(A171577(n+1))`
-/

namespace A063414.P1233212330879411982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (A171577 (n + 1)).toNat

end

end A063414.P1233212330879411982

/-! ## A063414.P16187954794079877980

`A034886(A008578(n+2))`
-/

namespace A063414.P16187954794079877980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (A008578 (n + 2)).toNat

end

end A063414.P16187954794079877980

/-! ## A063414.P17163177999405098323

`A034886(A075643(n+2))`
-/

namespace A063414.P17163177999405098323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (A075643 (n + 2)).toNat

end

end A063414.P17163177999405098323

/-! ## A063414.P7447216125284620171

`A034886(A171525(n+2))`
-/

namespace A063414.P7447216125284620171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (A171525 (n + 2)).toNat

end

end A063414.P7447216125284620171

/-! ## A063414.P6961079427141006032

`A034886(A182986(n+2))`
-/

namespace A063414.P6961079427141006032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (A182986 (n + 2)).toNat

end

end A063414.P6961079427141006032

/-! ## A063414.P13636120069869411058

`A034886(eq[1, A003415(n)])`
-/

namespace A063414.P13636120069869411058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A063414.P13636120069869411058

/-! ## A063414.P1865432872898149456

`A034886(record[A006530(n+2)])`
-/

namespace A063414.P1865432872898149456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A063414.P1865432872898149456

/-! ## A063414.P18089812791027310714

`A034886(record[A014963(n+2)])`
-/

namespace A063414.P18089812791027310714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A063414.P18089812791027310714

/-! ## A063414.P9377217241004559185

`A034886(record[A020639(n+2)])`
-/

namespace A063414.P9377217241004559185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A063414.P9377217241004559185

/-! ## A063414.P13995274860798408934

`A034886(A040976(n+1)+2)`
-/

namespace A063414.P13995274860798408934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (A040976 (n + 1) + 2).toNat

end

end A063414.P13995274860798408934

/-! ## A063414.P17427840599052728324

`A034886(eq[1, A001222(n+1)]+1)`
-/

namespace A063414.P17427840599052728324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A063414.P17427840599052728324

/-! ## A063414.P14389860671389421992

`A034886(eq[1, A306927(n+1)]+1)`
-/

namespace A063414.P14389860671389421992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A063414.P14389860671389421992

/-! ## A063414.P11280730728422740583

`A034886(eq[2, A000005(n+1)]+1)`
-/

namespace A063414.P11280730728422740583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A063414.P11280730728422740583

/-! ## A063414.P6005539299098063291

`A034886(eq[A000007(n), A349354(n+1)]+1)`
-/

namespace A063414.P6005539299098063291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A063414.P6005539299098063291

/-! ## A063414.P668293994180927524

`A034886(eq[2, A324202(n+1)]+1)`
-/

namespace A063414.P668293994180927524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A063414.P668293994180927524

/-! ## A063414.P11662185007316020122

`A034886(record[A051664(n+1)])`
-/

namespace A063414.P11662185007316020122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A063414.P11662185007316020122

/-!
# A063415: Triangle of coefficients of di-Boustrophedon transform (see A063179) read by rows: Let the original sequence be (U0,U1,...) and the transformed sequence (V0,V2,...), then Vn is a linear combination of U0,...,Un. T(n,m) is the coefficient that goes with Um to get Vn.

The programs for A063415, there is no canonical definition to state claims against.
-/

/-! ## A063415.P2209328463799511332

`A260999(A154829(n))`
-/

namespace A063415.P2209328463799511332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (A154829 n).toNat

end

end A063415.P2209328463799511332

/-! ## A063415.P771217834607034739

`A260999(A215241(n+1))`
-/

namespace A063415.P771217834607034739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (A215241 (n + 1)).toNat

end

end A063415.P771217834607034739

/-! ## A063415.P6376501613096654313

`A120835(ceil(sqrt(A290319(n))))`
-/

namespace A063415.P6376501613096654313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120835 ⌈Real.sqrt (A290319 n : ℝ)⌉.toNat

end

end A063415.P6376501613096654313

/-! ## A063415.P1497963744108472647

`A001222(2^(A190252(n)-char[6]))`
-/

namespace A063415.P1497963744108472647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A190252 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℤ))).toNat

end

end A063415.P1497963744108472647

/-! ## A063415.P4193615044779211725

`A000005(2^(A190252(n)-char[6]))-1`
-/

namespace A063415.P4193615044779211725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A190252 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℤ))).toNat - 1

end

end A063415.P4193615044779211725

/-!
# A063416: Multiples of 7 whose sum of digits is equal to 7.

The programs for A063416, there is no canonical definition to state claims against.
-/

/-! ## A063416.P16936759960266809021

`7*A088409(n+1)`
-/

namespace A063416.P16936759960266809021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A088409 (n + 1)

end

end A063416.P16936759960266809021

/-! ## A063416.P2043007446369738871

`∩[A052221(n+1), A062713(n+1)]`
-/

namespace A063416.P2043007446369738871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063416.P2043007446369738871

/-! ## A063416.P14229202037856859741

`∩[A052221(n+1), A216994(n+1)]`
-/

namespace A063416.P14229202037856859741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063416.P14229202037856859741

/-! ## A063416.P16507124925307266769

`∩[A062713(n+1), A216994(n+1)]`
-/

namespace A063416.P16507124925307266769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063416.P16507124925307266769

/-! ## A063416.P15090139811750122160

`∩[A052221(n+1), A085370(n+1)]`
-/

namespace A063416.P15090139811750122160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063416.P15090139811750122160

/-! ## A063416.P13625289586468373679

`∩[A052222(n+1)-1, A085370(n+1)]`
-/

namespace A063416.P13625289586468373679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052222 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063416.P13625289586468373679

/-! ## A063416.P4256417076823026884

`∩[A052221(n+1), A061823(n+1)]`
-/

namespace A063416.P4256417076823026884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063416.P4256417076823026884

/-! ## A063416.P778911203571163277

`∩[A062713(n+1), A217009(n+1)]`
-/

namespace A063416.P778911203571163277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063416.P778911203571163277

/-! ## A063416.P13792187741324520776

`∩[A052221(n+1), A139607(n)]`
-/

namespace A063416.P13792187741324520776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139607 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063416.P13792187741324520776

/-! ## A063416.P6305186359633816296

`∩[A052221(n+1), A285829(n+1)]`
-/

namespace A063416.P6305186359633816296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063416.P6305186359633816296

/-!
# A063417: Ninth column (k=8) of septinomial array A063265.

The programs for A063417, the canonical program `A063417.P4702373015135659206` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063417 has offset 0).

The definition of A063417 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063417.P4702373015135659206

`∑[∑[C(n+7, 6)-2]]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063417

/-- `∑[∑[C(n+7, 6)-2]]` -/
def P4702373015135659206.Spec : Prop :=
  ∀ n, P4702373015135659206.a n = A063417 n

theorem P4702373015135659206.correct : P4702373015135659206.Spec := by
  intro n
  simp only [A063417]

end A063417

/-! ## A063417.P7430183789709922069

`C(n+9, 8)-(n+2)²`
-/

namespace A063417.P7430183789709922069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 9) 8 : ℤ) - ((n + 2) ^ 2 : ℤ)

end

end A063417.P7430183789709922069

namespace A063417

/-- `C(n+9, 8)-(n+2)²` -/
def P7430183789709922069.Spec : Prop :=
  ∀ n, P7430183789709922069.a n = A063417 n

end A063417

/-! ## A063417.P2453768560948686579

`∑[∑[A166810(n+1)]]`
-/

namespace A063417.P2453768560948686579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166810 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063417.P2453768560948686579

namespace A063417

/-- `∑[∑[A166810(n+1)]]` -/
def P2453768560948686579.Spec : Prop :=
  ∀ n, P2453768560948686579.a n = A063417 n

end A063417

/-! ## A063417.P5810411280548086367

`∑[A062990(n)+∑[n]]`
-/

namespace A063417.P5810411280548086367
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062990 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063417.P5810411280548086367

namespace A063417

/-- `∑[A062990(n)+∑[n]]` -/
def P5810411280548086367.Spec : Prop :=
  ∀ n, P5810411280548086367.a n = A063417 n

end A063417

/-! ## A063417.P11108528227347722624

`∑[A063267(n)-(n+1)]`
-/

namespace A063417.P11108528227347722624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063267 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063417.P11108528227347722624

namespace A063417

/-- `∑[A063267(n)-(n+1)]` -/
def P11108528227347722624.Spec : Prop :=
  ∀ n, P11108528227347722624.a n = A063417 n

end A063417

/-! ## A063417.P3459885742067700148

`∑[A063262(n)+(n+1)²]`
-/

namespace A063417.P3459885742067700148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063262 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063417.P3459885742067700148

namespace A063417

/-- `∑[A063262(n)+(n+1)²]` -/
def P3459885742067700148.Spec : Prop :=
  ∀ n, P3459885742067700148.a n = A063417 n

end A063417

/-! ## A063417.P13882183577979854645

`∑[A166812(n+1)-Δ[n²]]`
-/

namespace A063417.P13882183577979854645
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166812 (n + 1) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063417.P13882183577979854645

namespace A063417

/-- `∑[A166812(n+1)-Δ[n²]]` -/
def P13882183577979854645.Spec : Prop :=
  ∀ n, P13882183577979854645.a n = A063417 n

end A063417

/-! ## A063417.P8905679101062927986

`A063262(n)+A000581(n+8)`
-/

namespace A063417.P8905679101062927986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063262 n + A000581 (n + 8)

end

end A063417.P8905679101062927986

namespace A063417

/-- `A063262(n)+A000581(n+8)` -/
def P8905679101062927986.Spec : Prop :=
  ∀ n, P8905679101062927986.a n = A063417 n

end A063417

/-! ## A063417.P11668458446315319112

`∑[∑[A124089(n+7)-1]]`
-/

namespace A063417.P11668458446315319112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124089 (n + 7) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063417.P11668458446315319112

namespace A063417

/-- `∑[∑[A124089(n+7)-1]]` -/
def P11668458446315319112.Spec : Prop :=
  ∀ n, P11668458446315319112.a n = A063417 n

end A063417

/-! ## A063417.P2945750280301771661

`Δ[A035927(n)]-(n+2)²`
-/

namespace A063417.P2945750280301771661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((n + 2) ^ 2 : ℤ)

end

end A063417.P2945750280301771661

namespace A063417

/-- `Δ[A035927(n)]-(n+2)²` -/
def P2945750280301771661.Spec : Prop :=
  ∀ n, P2945750280301771661.a n = A063417 n

end A063417

/-! ## A063417.P6847110617104375674

`∑[∑[A062989(n+1)+n]]`
-/

namespace A063417.P6847110617104375674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062989 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063417.P6847110617104375674

namespace A063417

/-- `∑[∑[A062989(n+1)+n]]` -/
def P6847110617104375674.Spec : Prop :=
  ∀ n, P6847110617104375674.a n = A063417 n

end A063417

/-! ## A063417.P12006381885335631464

`A000581(n+9)-(n+2)²`
-/

namespace A063417.P12006381885335631464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 9) - ((n + 2) ^ 2 : ℤ)

end

end A063417.P12006381885335631464

namespace A063417

/-- `A000581(n+9)-(n+2)²` -/
def P12006381885335631464.Spec : Prop :=
  ∀ n, P12006381885335631464.a n = A063417 n

end A063417

/-! ## A063417.P5195587914384726804

`Δ[A000582(n+9)]-(n+2)²`
-/

namespace A063417.P5195587914384726804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((n + 2) ^ 2 : ℤ)

end

end A063417.P5195587914384726804

namespace A063417

/-- `Δ[A000582(n+9)]-(n+2)²` -/
def P5195587914384726804.Spec : Prop :=
  ∀ n, P5195587914384726804.a n = A063417 n

end A063417

/-! ## A063417.P18203527077458896885

`∑[A000580(n+8)-(2*n+3)]`
-/

namespace A063417.P18203527077458896885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 8) - (2 * n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063417.P18203527077458896885

namespace A063417

/-- `∑[A000580(n+8)-(2*n+3)]` -/
def P18203527077458896885.Spec : Prop :=
  ∀ n, P18203527077458896885.a n = A063417 n

end A063417

/-! ## A063417.P15789207587262148453

`A165618(n+1)-(n+1)*(n+3)`
-/

namespace A063417.P15789207587262148453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165618 (n + 1) - ((n + 1) * (n + 3) : ℤ)

end

end A063417.P15789207587262148453

namespace A063417

/-- `A165618(n+1)-(n+1)*(n+3)` -/
def P15789207587262148453.Spec : Prop :=
  ∀ n, P15789207587262148453.a n = A063417 n

end A063417

/-!
# A063418: Tenth column (k=9) of septinomial array A063265.

The programs for A063418, the canonical program `A063418.P3031915557263829765` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063418 has offset 0).

The definition of A063418 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063418.P3031915557263829765

`∑[A063417(n)-∑[n+1]]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A063418

/-- `∑[A063417(n)-∑[n+1]]` -/
def P3031915557263829765.Spec : Prop :=
  ∀ n, P3031915557263829765.a n = A063418 n

theorem P3031915557263829765.correct : P3031915557263829765.Spec := by
  intro n
  simp only [A063418]

end A063418

/-! ## A063418.P16149997082567197318

`A063263(n)+A000582(n+9)`
-/

namespace A063418.P16149997082567197318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063263 n + A000582 (n + 9)

end

end A063418.P16149997082567197318

namespace A063418

/-- `A063263(n)+A000582(n+9)` -/
def P16149997082567197318.Spec : Prop :=
  ∀ n, P16149997082567197318.a n = A063418 n

end A063418

/-! ## A063418.P4081352377144677892

`∑[∑[A063262(n)+A002378(n)]]`
-/

namespace A063418.P4081352377144677892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063262 n + A002378 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063418.P4081352377144677892

namespace A063418

/-- `∑[∑[A063262(n)+A002378(n)]]` -/
def P4081352377144677892.Spec : Prop :=
  ∀ n, P4081352377144677892.a n = A063418 n

end A063418

/-! ## A063418.P11936968869140855175

`∑[∑[A062990(n)-A080956(n)]]`
-/

namespace A063418.P11936968869140855175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062990 n - A080956 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063418.P11936968869140855175

namespace A063418

/-- `∑[∑[A062990(n)-A080956(n)]]` -/
def P11936968869140855175.Spec : Prop :=
  ∀ n, P11936968869140855175.a n = A063418 n

end A063418

/-! ## A063418.P12738419996148557763

`A063263(n)+∑[A000581(n+8)]`
-/

namespace A063418.P12738419996148557763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063263 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063418.P12738419996148557763

namespace A063418

/-- `A063263(n)+∑[A000581(n+8)]` -/
def P12738419996148557763.Spec : Prop :=
  ∀ n, P12738419996148557763.a n = A063418 n

end A063418

/-! ## A063418.P2245977949580841584

`A063263(n)+∑[∑[A000580(n+7)]]`
-/

namespace A063418.P2245977949580841584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063263 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063418.P2245977949580841584

namespace A063418

/-- `A063263(n)+∑[∑[A000580(n+7)]]` -/
def P2245977949580841584.Spec : Prop :=
  ∀ n, P2245977949580841584.a n = A063418 n

end A063418

/-! ## A063418.P5551698419444822064

`Δ[A001287(n)-A001296(n+1)]`
-/

namespace A063418.P5551698419444822064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10) - A001296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063418.P5551698419444822064

namespace A063418

/-- `Δ[A001287(n)-A001296(n+1)]` -/
def P5551698419444822064.Spec : Prop :=
  ∀ n, P5551698419444822064.a n = A063418 n

end A063418

/-! ## A063418.P5580562507415511228

`A000582(n+10)-Δ[A001296(n+1)]`
-/

namespace A063418.P5580562507415511228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 10) - (f1 (n + 1) - f1 n)

end

end A063418.P5580562507415511228

namespace A063418

/-- `A000582(n+10)-Δ[A001296(n+1)]` -/
def P5580562507415511228.Spec : Prop :=
  ∀ n, P5580562507415511228.a n = A063418 n

end A063418

/-!
# A063419: Central sextinomial coefficients.

The programs for A063419, there is no canonical definition to state claims against.
-/

/-! ## A063419.P14744223175779926696

`A018901(2*n)`
-/

namespace A063419.P14744223175779926696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018901 (2 * n)

end

end A063419.P14744223175779926696

/-! ## A063419.P11812881707389827070

`record[A018901(A014681(n))]`
-/

namespace A063419.P11812881707389827070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018901 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063419.P11812881707389827070

/-! ## A063419.P10354488105573615417

`record[A018901(A110090(n))]`
-/

namespace A063419.P10354488105573615417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018901 (A110090 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063419.P10354488105573615417

/-! ## A063419.P14895562968226920956

`record[A018901(Δ[A110660(n)])]`
-/

namespace A063419.P14895562968226920956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018901 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063419.P14895562968226920956

/-! ## A063419.P9396145022038227326

`record[A018901(n)/A033999(n)]`
-/

namespace A063419.P9396145022038227326
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018901 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063419.P9396145022038227326

/-! ## A063419.P4601086575732568648

`record[A018901(n)/A018901(A001511(n+1))]`
-/

namespace A063419.P4601086575732568648
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018901 n : ℚ) / (A018901 (A001511 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063419.P4601086575732568648

/-!
# A063424: a(1) = 10, a(n) = concatenation of two closest factors of a(n-1) whose product equals a(n-1) or if a(n-1) is a prime then the concatenation of 1 and a(n-1).

The programs for A063424, there is no canonical definition to state claims against.
-/

/-! ## A063424.P13070211605692028666

`record[A037276(a(floor(n/2)))]` with `a(0)=10, a(1)=1, a(2)=10`
-/

namespace A063424.P13070211605692028666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10, 1, 10] fun n f1 =>
  A037276 (f1 ⌊(n : ℚ) / 2⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063424.P13070211605692028666

/-!
# A063425: Unattainable numbers: integers not expressible as k + product of nonzero digits of k (A063114).

The programs for A063425, the canonical program `A063425.P10763160283365763615` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063425 has offset 1).

The definition of A063425 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4069 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063425.P10763160283365763615

`A028310(comp[A051801(n)+n])`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A063425

/-- `A028310(comp[A051801(n)+n])` -/
def P10763160283365763615.Spec : Prop :=
  ∀ n, P10763160283365763615.a n = A063425 (n + 1)

theorem P10763160283365763615.correct : P10763160283365763615.Spec := by
  intro n
  simp only [A063425, Nat.add_sub_cancel]

end A063425

/-! ## A063425.P5560848109960895310

`comp[A051801(n)+n]+((2*A313683(n))%2)^n`
-/

namespace A063425.P5560848109960895310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + Int.tmod (2 * A313683 n) 2 ^ n

end

end A063425.P5560848109960895310

namespace A063425

/-- `comp[A051801(n)+n]+((2*A313683(n))%2)^n` -/
def P5560848109960895310.Spec : Prop :=
  ∀ n, P5560848109960895310.a n = A063425 (n + 1)

end A063425

/-! ## A063425.P8140185641980069312

`A008683(A147582(n+1))+comp[A051801(n)+n]`
-/

namespace A063425.P8140185641980069312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A147582 (n + 1)).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A063425.P8140185641980069312

namespace A063425

/-- `A008683(A147582(n+1))+comp[A051801(n)+n]` -/
def P8140185641980069312.Spec : Prop :=
  ∀ n, P8140185641980069312.a n = A063425 (n + 1)

end A063425

/-! ## A063425.P10123798894294058418

`A008683((n+1)²)+comp[A051801(n)+n]`
-/

namespace A063425.P10123798894294058418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A063425.P10123798894294058418

namespace A063425

/-- `A008683((n+1)²)+comp[A051801(n)+n]` -/
def P10123798894294058418.Spec : Prop :=
  ∀ n, P10123798894294058418.a n = A063425 (n + 1)

end A063425

/-! ## A063425.P16050233804711395281

`eq[2, sqrt(a(A096972(n)))]` with `a(0)=4`
-/

namespace A063425.P16050233804711395281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.rec [4] fun n f2 =>
  Real.sqrt (f2 (A096972 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A063425.P16050233804711395281

namespace A063425

/-- `eq[2, sqrt(a(A096972(n)))]` -/
def P16050233804711395281.Spec : Prop :=
  ∀ n, (P16050233804711395281.a n : ℤ) = A063425 (n + 1)

end A063425

/-!
# A063427: a(n) is the smallest positive integer k such that n*k/(n+k) is an integer.

The programs for A063427, there is no canonical definition to state claims against.
-/

/-! ## A063427.P14368172819363326935

`(n+2)*A063428(n+2)/(n+2-A063428(n+2))`
-/

namespace A063427.P14368172819363326935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A063428 (n + 2) : ℚ) / ((n + 2 : ℤ) - A063428 (n + 2) : ℚ)

end

end A063427.P14368172819363326935

/-! ## A063427.P10478895378686891890

`A063718(n+2)-(n+2)`
-/

namespace A063427.P10478895378686891890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063718 (n + 2) - (n + 2 : ℤ)

end

end A063427.P10478895378686891890

/-! ## A063427.P841796357587120056

`A063648(n+2)-2*(n+2)`
-/

namespace A063427.P841796357587120056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063648 (n + 2) - (2 * (n + 2) : ℤ)

end

end A063427.P841796357587120056

/-! ## A063427.P16933177986595230798

`A082986(n+1)%A063718(n+2)`
-/

namespace A063427.P16933177986595230798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082986 (n + 1)) (A063718 (n + 2))

end

end A063427.P16933177986595230798

/-! ## A063427.P4664282759921709378

`A179824(n+2)%A063718(n+2)`
-/

namespace A063427.P4664282759921709378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179824 (n + 2)) (A063718 (n + 2))

end

end A063427.P4664282759921709378

/-! ## A063427.P16659360267836966564

`A218993(n+2)²*A219094(n+2)-(n+2)`
-/

namespace A063427.P16659360267836966564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218993 (n + 2) ^ 2 * A219094 (n + 2) - (n + 2 : ℤ)

end

end A063427.P16659360267836966564

/-! ## A063427.P5060205886015170009

`A063428(n+2)+A063428(n+2)²/A063717(n+2)`
-/

namespace A063427.P5060205886015170009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063428 (n + 2) : ℚ) + (A063428 (n + 2) ^ 2 : ℚ) / (A063717 (n + 2) : ℚ)

end

end A063427.P5060205886015170009

/-! ## A063427.P17305132367396784940

`A127730(∑[A063647(n+1)]+2)`
-/

namespace A063427.P17305132367396784940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127730 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A063427.P17305132367396784940

/-! ## A063427.P8777941368696995807

`record[A127730(n+2)]%A063718(n+2)`
-/

namespace A063427.P8777941368696995807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127730 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A063718 (n + 2))

end

end A063427.P8777941368696995807

/-! ## A063427.P7160949631176776035

`A140271((n+2)²)-(n+2)`
-/

namespace A063427.P7160949631176776035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140271 ((n + 2) ^ 2) - (n + 2 : ℤ)

end

end A063427.P7160949631176776035

/-!
# A063428: a(n) is the smallest positive integer of the form n*k/(n+k).

The programs for A063428, there is no canonical definition to state claims against.
-/

/-! ## A063428.P3408588493479367412

`2*(n+2)-A063649(n+2)`
-/

namespace A063428.P3408588493479367412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A063649 (n + 2)

end

end A063428.P3408588493479367412

/-! ## A063428.P1285190681961538141

`(n+2)*A063427(n+2)/(n+2+A063427(n+2))`
-/

namespace A063428.P1285190681961538141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A063427 (n + 2) : ℚ) / ((n + 2 : ℤ) + A063427 (n + 2) : ℚ)

end

end A063428.P1285190681961538141

/-! ## A063428.P4320997841706012144

`2-A063717(n+2)+n`
-/

namespace A063428.P4320997841706012144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A063717 (n + 2) + (n : ℤ)

end

end A063428.P4320997841706012144

/-! ## A063428.P6186356596996714018

`n+2-(n+2)²/A063718(n+2)`
-/

namespace A063428.P6186356596996714018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) - ((n + 2) ^ 2 : ℚ) / (A063718 (n + 2) : ℚ)

end

end A063428.P6186356596996714018

/-! ## A063428.P15155825906044477243

`A004277(n+2)%A063649(n+2)`
-/

namespace A063428.P15155825906044477243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004277 (n + 2)) (A063649 (n + 2))

end

end A063428.P15155825906044477243

/-! ## A063428.P15144782978435473540

`A005843(n+2)%A063649(n+2)`
-/

namespace A063428.P15144782978435473540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (n + 2)) (A063649 (n + 2))

end

end A063428.P15144782978435473540

/-! ## A063428.P9765225603954575858

`A004275(n+3)%A063649(n+2)`
-/

namespace A063428.P9765225603954575858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004275 (n + 3)) (A063649 (n + 2))

end

end A063428.P9765225603954575858

/-! ## A063428.P11395831760661755897

`A020705(2*n)%A063649(n+2)`
-/

namespace A063428.P11395831760661755897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020705 (2 * n)) (A063649 (n + 2))

end

end A063428.P11395831760661755897

/-! ## A063428.P8183947439544823182

`A020705(n)-A063649(n+2)+n`
-/

namespace A063428.P8183947439544823182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n - A063649 (n + 2) + (n : ℤ)

end

end A063428.P8183947439544823182

/-! ## A063428.P3070462943517937560

`Δ[A002378(n)]+2-A063649(n+2)`
-/

namespace A063428.P3070462943517937560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (2 - A063649 (n + 2))

end

end A063428.P3070462943517937560

/-! ## A063428.P666097880951140971

`Δ[A002378(n+1)]%A063649(n+2)`
-/

namespace A063428.P666097880951140971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A063649 (n + 2))

end

end A063428.P666097880951140971

/-! ## A063428.P15566343819063755771

`A063648(n+2)-(A063649(n+2)+A063427(n+2))`
-/

namespace A063428.P15566343819063755771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063648 (n + 2) - (A063649 (n + 2) + A063427 (n + 2))

end

end A063428.P15566343819063755771

/-! ## A063428.P8068653161658464147

`A063718(n+2)%(A063717(n+2)+A063427(n+2))`
-/

namespace A063428.P8068653161658464147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063718 (n + 2)) (A063717 (n + 2) + A063427 (n + 2))

end

end A063428.P8068653161658464147

/-! ## A063428.P14132454666469871704

`A191973(∑[A146564(n+1)+1]+1)`
-/

namespace A063428.P14132454666469871704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146564 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191973 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A063428.P14132454666469871704

/-! ## A063428.P5610308935033457837

`A004736(A063717(n+2)+∑[n])`
-/

namespace A063428.P5610308935033457837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A063717 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A063428.P5610308935033457837

/-! ## A063428.P10936391749215523073

`A060794(A140651(n+2))`
-/

namespace A063428.P10936391749215523073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060794 (A140651 (n + 2)).toNat

end

end A063428.P10936391749215523073

/-! ## A063428.P16041569912763417162

`A060794(A170826(n+2))`
-/

namespace A063428.P16041569912763417162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060794 (A170826 (n + 2)).toNat

end

end A063428.P16041569912763417162

/-!
# A063431: Square array read by antidiagonals of n written in base k (n,k>0).

The programs for A063431, there is no canonical definition to state claims against.
-/

/-! ## A063431.P2025178064006888557

`A181143(A285280(n+3))*A214676(n+1)`
-/

namespace A063431.P2025178064006888557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181143 (A285280 (n + 3)).toNat * A214676 (n + 1)

end

end A063431.P2025178064006888557

/-! ## A063431.P8518990248760676727

`or(A028590(A000045(2*(n+1))), A214676(n+1))`
-/

namespace A063431.P8518990248760676727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A028590 (A000045 (2 * (n + 1))).toNat) (A214676 (n + 1))

end

end A063431.P8518990248760676727

/-!
# A063432: Triangle read by rows in which k-th entry in row n is representation of n in base k, for 1 <= k <= n.

The programs for A063432, there is no canonical definition to state claims against.
-/

/-! ## A063432.P15170542286226966620

`A082492(∑[char[∑[n]]]²-n)`
-/

namespace A063432.P15170542286226966620
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082492 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A063432.P15170542286226966620

/-! ## A063432.P141615644685251626

`and(-1, A082492(A038722(n+1)))`
-/

namespace A063432.P141615644685251626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A082492 (A038722 (n + 1)).toNat)

end

end A063432.P141615644685251626

/-! ## A063432.P17515307444646390995

`or(char[1], A082492(A061579(n)+1))`
-/

namespace A063432.P17515307444646390995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A082492 (A061579 n + 1).toNat)

end

end A063432.P17515307444646390995

/-! ## A063432.P13928161671931622010

`abs(1-A082492(A093995(n+1)-n))+1`
-/

namespace A063432.P13928161671931622010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A082492 (A093995 (n + 1) - (n : ℤ)).toNat| + 1

end

end A063432.P13928161671931622010

/-! ## A063432.P5841373086211755933

`A082492(A038722(n+1))+C(2, A000203(n+2))`
-/

namespace A063432.P5841373086211755933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082492 (A038722 (n + 1)).toNat + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A063432.P5841373086211755933

/-! ## A063432.P15035446371216184189

`and(-1, A082492(A278818(n)))`
-/

namespace A063432.P15035446371216184189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A082492 (A278818 n).toNat)

end

end A063432.P15035446371216184189

/-! ## A063432.P13252755828942349171

`A000108(C(2, n+2))*A082492(A278818(n))`
-/

namespace A063432.P13252755828942349171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A082492 (A278818 n).toNat

end

end A063432.P13252755828942349171

/-! ## A063432.P15197591592407074862

`A007318(∑[n])*A082492(A278818(n))`
-/

namespace A063432.P15197591592407074862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A082492 (A278818 n).toNat

end

end A063432.P15197591592407074862

/-! ## A063432.P12397751770404679244

`A007318(∑[n])*A082492(A038722(n+1))`
-/

namespace A063432.P12397751770404679244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A082492 (A038722 (n + 1)).toNat

end

end A063432.P12397751770404679244

/-!
# A063435: Number of 'Reverse and Add!' operations that have to be applied to the n-th term of A063434 in order to obtain a term in the trajectory of 10577.

The programs for A063435, there is no canonical definition to state claims against.
-/

/-! ## A063435.P7919627761612045116

`A055642(gcd(A008585(n+3), A330113(n+1)))`
-/

namespace A063435.P7919627761612045116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Int.gcd (A008585 (n + 3)) (A330113 (n + 1)))

end

end A063435.P7919627761612045116

/-! ## A063435.P9587512426444586857

`A050320(A000035(2*n)-A175792(n+1))^A015231(n)`
-/

namespace A063435.P9587512426444586857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050320 (A000035 (2 * n) - A175792 (n + 1)).toNat : ℚ) ^ (A015231 n : ℤ)

end

end A063435.P9587512426444586857

/-! ## A063435.P5503503173338445679

`A050320(A007814(2*n+3)-A175792(n+1))^A015231(n)`
-/

namespace A063435.P5503503173338445679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050320 (A007814 (2 * n + 3) - A175792 (n + 1)).toNat : ℚ) ^ (A015231 n : ℤ)

end

end A063435.P5503503173338445679

/-! ## A063435.P77654535010343850

`∏{e}[A096852(A032742(n+1)), #]`
-/

namespace A063435.P77654535010343850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096852 (A032742 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A063435.P77654535010343850

/-! ## A063435.P4758744883809311724

`A112706(C(floor(n/2), A360655(n+2)))`
-/

namespace A063435.P4758744883809311724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112706 (Nat.choose ⌊(n : ℚ) / 2⌋.toNat (A360655 (n + 2)).toNat)

end

end A063435.P4758744883809311724

/-! ## A063435.P14383421139397276425

`gcd(char[2*n+47]+1, A088153(A224218(n+1)))`
-/

namespace A063435.P14383421139397276425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 47

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) (A088153 (A224218 (n + 1)).toNat)

end

end A063435.P14383421139397276425

/-! ## A063435.P10949364145476173875

`A360702(C(A360692(n), A360655(n+2)))`
-/

namespace A063435.P10949364145476173875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360702 (Nat.choose (A360692 n).toNat (A360655 (n + 2)).toNat)

end

end A063435.P10949364145476173875

/-! ## A063435.P3683798108619710594

`A167964(n*A069859(n+3)+1)`
-/

namespace A063435.P3683798108619710594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167964 ((n : ℤ) * A069859 (n + 3) + 1).toNat

end

end A063435.P3683798108619710594

/-! ## A063435.P1823815555933043045

`A167964(n+1)^(2-A167964(A068398(n)+1))`
-/

namespace A063435.P1823815555933043045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167964 (n + 1) : ℚ) ^ (2 - A167964 (A068398 n + 1).toNat : ℤ)

end

end A063435.P1823815555933043045

/-!
# A063436: Write 1, 2, 3, 4, ... counterclockwise in a hexagonal spiral around 0 starting left down, then a(n) is the sequence found by reading from 0 in the vertical upward direction.

The programs for A063436, the canonical program `A063436.P6856054806736193048` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063436 has offset 0).

The definition of A063436 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063436.P6856054806736193048

`n*(12*n+3)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063436

/-- `n*(12*n+3)` -/
def P6856054806736193048.Spec : Prop :=
  ∀ n, (P6856054806736193048.a n : ℤ) = A063436 n

theorem P6856054806736193048.correct : P6856054806736193048.Spec := by
  intro n
  simp only [A063436]

end A063436

/-! ## A063436.P13260928714464360792

`A272399(n+1)-A003154(n+1)`
-/

namespace A063436.P13260928714464360792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272399 (n + 1) - A003154 (n + 1)

end

end A063436.P13260928714464360792

namespace A063436

/-- `A272399(n+1)-A003154(n+1)` -/
def P13260928714464360792.Spec : Prop :=
  ∀ n, P13260928714464360792.a n = A063436 n

end A063436

/-! ## A063436.P13909189840306623475

`∑[a(n-1)+24]` with `a(0)=0, a(1)=15`
-/

namespace A063436.P13909189840306623475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 15] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063436.P13909189840306623475

namespace A063436

/-- `∑[a(n-1)+24]` -/
def P13909189840306623475.Spec : Prop :=
  ∀ n, (P13909189840306623475.a n : ℤ) = A063436 n

end A063436

/-! ## A063436.P6168465861511757784

`abs(3*n*Δ[C(2*n, 2)])`
-/

namespace A063436.P6168465861511757784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))|

end

end A063436.P6168465861511757784

namespace A063436

/-- `abs(3*n*Δ[C(2*n, 2)])` -/
def P6168465861511757784.Spec : Prop :=
  ∀ n, P6168465861511757784.a n = A063436 n

end A063436

/-! ## A063436.P6502682136896991479

`Δ[lcm(2, (n-1)*(2*n)²)]-n`
-/

namespace A063436.P6502682136896991479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (((n : ℤ) - 1) * ((2 * n) ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)

end

end A063436.P6502682136896991479

namespace A063436

/-- `Δ[lcm(2, (n-1)*(2*n)²)]-n` -/
def P6502682136896991479.Spec : Prop :=
  ∀ n, P6502682136896991479.a n = A063436 n

end A063436

/-! ## A063436.P14484734909574381570

`Δ[(n-1)*(2*n)²-C(n, 2)]`
-/

namespace A063436.P14484734909574381570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((2 * n) ^ 2 : ℤ) - (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063436.P14484734909574381570

namespace A063436

/-- `Δ[(n-1)*(2*n)²-C(n, 2)]` -/
def P14484734909574381570.Spec : Prop :=
  ∀ n, P14484734909574381570.a n = A063436 n

end A063436

/-! ## A063436.P4353409219535437051

`Δ[(n-1)*(2*n)²]-gcd(n, 2*n)`
-/

namespace A063436.P4353409219535437051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((2 * n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (Nat.gcd n (2 * n) : ℤ)

end

end A063436.P4353409219535437051

namespace A063436

/-- `Δ[(n-1)*(2*n)²]-gcd(n, 2*n)` -/
def P4353409219535437051.Spec : Prop :=
  ∀ n, P4353409219535437051.a n = A063436 n

theorem P4353409219535437051.correct : P4353409219535437051.Spec := by
  intro n
  simp only [A063436, Nat.add_sub_cancel, A063436.P4353409219535437051.f1, A063436.P4353409219535437051.a, A063436.P6856054806736193048.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A063436

/-! ## A063436.P9315811869739179388

`A244805(n+1)-1`
-/

namespace A063436.P9315811869739179388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244805 (n + 1) - 1

end

end A063436.P9315811869739179388

namespace A063436

/-- `A244805(n+1)-1` -/
def P9315811869739179388.Spec : Prop :=
  ∀ n, P9315811869739179388.a n = A063436 n

end A063436

/-! ## A063436.P6443339819249658777

`(A381424(n)-1)/2`
-/

namespace A063436.P6443339819249658777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381424 n - 1 : ℚ) / 2

end

end A063436.P6443339819249658777

namespace A063436

/-- `(A381424(n)-1)/2` -/
def P6443339819249658777.Spec : Prop :=
  ∀ n, P6443339819249658777.a n = (A063436 n : ℚ)

end A063436

/-! ## A063436.P1166835136783582648

`A068628(n+1)/4`
-/

namespace A063436.P1166835136783582648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068628 (n + 1) : ℚ) / 4

end

end A063436.P1166835136783582648

namespace A063436

/-- `A068628(n+1)/4` -/
def P1166835136783582648.Spec : Prop :=
  ∀ n, P1166835136783582648.a n = (A063436 n : ℚ)

end A063436

/-! ## A063436.P9700158296930944350

`A179741(n)+1-n`
-/

namespace A063436.P9700158296930944350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179741 n + (1 - (n : ℤ))

end

end A063436.P9700158296930944350

namespace A063436

/-- `A179741(n)+1-n` -/
def P9700158296930944350.Spec : Prop :=
  ∀ n, P9700158296930944350.a n = A063436 n

end A063436

/-! ## A063436.P12823260927897141507

`A194454(n)-1+n`
-/

namespace A063436.P12823260927897141507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194454 n - 1 + (n : ℤ)

end

end A063436.P12823260927897141507

namespace A063436

/-- `A194454(n)-1+n` -/
def P12823260927897141507.Spec : Prop :=
  ∀ n, P12823260927897141507.a n = A063436 n

end A063436

/-! ## A063436.P6318122817043374031

`A381390(n)-(n+1)`
-/

namespace A063436.P6318122817043374031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381390 n - (n + 1 : ℤ)

end

end A063436.P6318122817043374031

namespace A063436

/-- `A381390(n)-(n+1)` -/
def P6318122817043374031.Spec : Prop :=
  ∀ n, P6318122817043374031.a n = A063436 n

end A063436

/-! ## A063436.P2291590175688731326

`2*A049453(n)+n`
-/

namespace A063436.P2291590175688731326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049453 n + (n : ℤ)

end

end A063436.P2291590175688731326

namespace A063436

/-- `2*A049453(n)+n` -/
def P2291590175688731326.Spec : Prop :=
  ∀ n, P2291590175688731326.a n = A063436 n

end A063436

/-! ## A063436.P5442488316651961576

`A396289(n)+2*n`
-/

namespace A063436.P5442488316651961576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396289 n + (2 * n : ℤ)

end

end A063436.P5442488316651961576

namespace A063436

/-- `A396289(n)+2*n` -/
def P5442488316651961576.Spec : Prop :=
  ∀ n, P5442488316651961576.a n = A063436 n

end A063436

/-! ## A063436.P773773847766015700

`2*A033580(n)-n`
-/

namespace A063436.P773773847766015700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033580 n - (n : ℤ)

end

end A063436.P773773847766015700

namespace A063436

/-- `2*A033580(n)-n` -/
def P773773847766015700.Spec : Prop :=
  ∀ n, P773773847766015700.a n = A063436 n

end A063436

/-! ## A063436.P524187139002212217

`A135453(n)+3*n`
-/

namespace A063436.P524187139002212217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135453 n + (3 * n : ℤ)

end

end A063436.P524187139002212217

namespace A063436

/-- `A135453(n)+3*n` -/
def P524187139002212217.Spec : Prop :=
  ∀ n, P524187139002212217.a n = A063436 n

end A063436

/-! ## A063436.P18097955067735980190

`A396290(n)-2*n`
-/

namespace A063436.P18097955067735980190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396290 n - (2 * n : ℤ)

end

end A063436.P18097955067735980190

namespace A063436

/-- `A396290(n)-2*n` -/
def P18097955067735980190.Spec : Prop :=
  ∀ n, P18097955067735980190.a n = A063436 n

end A063436

/-! ## A063436.P15324892627054418438

`4*A049451(n)-n`
-/

namespace A063436.P15324892627054418438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A049451 n - (n : ℤ)

end

end A063436.P15324892627054418438

namespace A063436

/-- `4*A049451(n)-n` -/
def P15324892627054418438.Spec : Prop :=
  ∀ n, P15324892627054418438.a n = A063436 n

end A063436

/-!
# A063438: a(n) = floor((n+1)*Pi) - floor(n*Pi).

The programs for A063438, the canonical program `A063438.P16780072889950511457` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063438 has offset 1).

The definition of A063438 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+2)*π)-floor((n+1)*π)` (program `A063438.P16780072889950511457`, by `A063438.P16780072889950511457.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A063438.P16780072889950511457

`floor((n+2)*π)-floor((n+1)*π)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063438

/-- `floor((n+2)*π)-floor((n+1)*π)` -/
def P16780072889950511457.Spec : Prop :=
  ∀ n, P16780072889950511457.a n = A063438 (n + 1)

theorem P16780072889950511457.correct : P16780072889950511457.Spec := by
  intro n
  simp only [A063438, Nat.add_sub_cancel]

end A063438

/-!
# A063439: a(n) = phi(n)^phi(n).

The programs for A063439, there is no canonical definition to state claims against.
-/

/-! ## A063439.P11998048332425107342

`((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])^((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A063439.P11998048332425107342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) : ℝ) ^ ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f4 n), ((p : ℤ) - 1) : ℤ) : ℚ) : ℝ)

end

end A063439.P11998048332425107342

/-! ## A063439.P8191069683215771694

`((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])^A000010(n+1)`
-/

namespace A063439.P8191069683215771694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)) ^ (A000010 (n + 1) : ℤ)

end

end A063439.P8191069683215771694

/-! ## A063439.P5325953336685266789

`A000312(A000010(n+1))`
-/

namespace A063439.P5325953336685266789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A000010 (n + 1)).toNat

end

end A063439.P5325953336685266789

/-! ## A063439.P2429107392862305456

`A094054(A127473(n+1))`
-/

namespace A063439.P2429107392862305456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094054 (A127473 (n + 1)).toNat

end

end A063439.P2429107392862305456

/-! ## A063439.P8292793214103963760

`A110138(A140434(n+1))`
-/

namespace A063439.P8292793214103963760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110138 (A140434 (n + 1)).toNat

end

end A063439.P8292793214103963760

/-! ## A063439.P7651428973735123582

`A033918(A286144(n+1))`
-/

namespace A063439.P7651428973735123582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033918 (A286144 (n + 1)).toNat

end

end A063439.P7651428973735123582

/-! ## A063439.P11112473029198642129

`A033918(A286568(n+1))`
-/

namespace A063439.P11112473029198642129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033918 (A286568 (n + 1)).toNat

end

end A063439.P11112473029198642129

/-! ## A063439.P14023278214593662007

`A095891(A291756(n+1))`
-/

namespace A063439.P14023278214593662007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095891 (A291756 (n + 1)).toNat

end

end A063439.P14023278214593662007

/-! ## A063439.P14545799612640519093

`A094054(A000010(n+1)²)`
-/

namespace A063439.P14545799612640519093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094054 (A000010 (n + 1) ^ 2).toNat

end

end A063439.P14545799612640519093

/-! ## A063439.P12831562387232167831

`A094092(A000010(n+1)²)`
-/

namespace A063439.P12831562387232167831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094092 (A000010 (n + 1) ^ 2).toNat

end

end A063439.P12831562387232167831

/-!
# A063440: Number of divisors of n-th triangular number.

The programs for A063440, the canonical program `A063440.P9396226981426582522` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063440 has offset 1).

The definition of A063440 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A063440.P9396226981426582522

`A000005(A000217(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A063440

/-- `A000005(A000217(n+1))` -/
def P9396226981426582522.Spec : Prop :=
  ∀ n, P9396226981426582522.a n = A063440 (n + 1)

theorem P9396226981426582522.correct : P9396226981426582522.Spec := by
  intro n
  simp only [A063440, Nat.add_sub_cancel]

end A063440

/-! ## A063440.P13085685242511734947

`A133950(n+1)+A133949(n+1)`
-/

namespace A063440.P13085685242511734947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133950 (n + 1) + A133949 (n + 1)

end

end A063440.P13085685242511734947

namespace A063440

/-- `A133950(n+1)+A133949(n+1)` -/
def P13085685242511734947.Spec : Prop :=
  ∀ n, P13085685242511734947.a n = A063440 (n + 1)

end A063440

/-! ## A063440.P2914289714026151303

`A320111(n+1)*A320111(n+2)`
-/

namespace A063440.P2914289714026151303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (n + 1) * A320111 (n + 2)

end

end A063440.P2914289714026151303

namespace A063440

/-- `A320111(n+1)*A320111(n+2)` -/
def P2914289714026151303.Spec : Prop :=
  ∀ n, P2914289714026151303.a n = A063440 (n + 1)

end A063440

/-! ## A063440.P9725518207359287396

`∏{e}[∑[n+1], #+1]`
-/

namespace A063440.P9725518207359287396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A063440.P9725518207359287396

namespace A063440

/-- `∏{e}[∑[n+1], #+1]` -/
def P9725518207359287396.Spec : Prop :=
  ∀ n, (P9725518207359287396.a n : ℤ) = A063440 (n + 1)

end A063440

/-! ## A063440.P7364221482684062451

`∑{d}[∑[n+1], ceil(acot(#))]`
-/

namespace A063440.P7364221482684062451
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉

end

end A063440.P7364221482684062451

namespace A063440

/-- `∑{d}[∑[n+1], ceil(acot(#))]` -/
def P7364221482684062451.Spec : Prop :=
  ∀ n, P7364221482684062451.a n = A063440 (n + 1)

end A063440

/-! ## A063440.P4833610307095201492

`∑{d}[∑[n+1], ceil(1/#)]`
-/

namespace A063440.P4833610307095201492
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉

end

end A063440.P4833610307095201492

namespace A063440

/-- `∑{d}[∑[n+1], ceil(1/#)]` -/
def P4833610307095201492.Spec : Prop :=
  ∀ n, P4833610307095201492.a n = A063440 (n + 1)

end A063440

/-! ## A063440.P1527318491971812247

`∏{e}[C(n+2, 2), #+1]%(2*n+3)`
-/

namespace A063440.P1527318491971812247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) % (2 * n + 3)

end

end A063440.P1527318491971812247

namespace A063440

/-- `∏{e}[C(n+2, 2), #+1]%(2*n+3)` -/
def P1527318491971812247.Spec : Prop :=
  ∀ n, (P1527318491971812247.a n : ℤ) = A063440 (n + 1)

end A063440

/-! ## A063440.P16685234839542516444

`A069799(A069799(∏{e}[C(n+2, 2), #+1]))`
-/

namespace A063440.P16685234839542516444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069799 (A069799 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))).toNat

end

end A063440.P16685234839542516444

namespace A063440

/-- `A069799(A069799(∏{e}[C(n+2, 2), #+1]))` -/
def P16685234839542516444.Spec : Prop :=
  ∀ n, P16685234839542516444.a n = A063440 (n + 1)

end A063440

/-! ## A063440.P9503777830053427328

`∏{e}[A000217(n+1), #+1]%A014612(n+1)`
-/

namespace A063440.P9503777830053427328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℤ) (A014612 (n + 1))

end

end A063440.P9503777830053427328

namespace A063440

/-- `∏{e}[A000217(n+1), #+1]%A014612(n+1)` -/
def P9503777830053427328.Spec : Prop :=
  ∀ n, P9503777830053427328.a n = A063440 (n + 1)

end A063440

/-! ## A063440.P1782366392888153761

`A000005(A278253(n+1))`
-/

namespace A063440.P1782366392888153761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278253 (n + 1)).toNat

end

end A063440.P1782366392888153761

namespace A063440

/-- `A000005(A278253(n+1))` -/
def P1782366392888153761.Spec : Prop :=
  ∀ n, P1782366392888153761.a n = A063440 (n + 1)

end A063440

/-! ## A063440.P5689188217448687418

`A000005(∑[n+1])`
-/

namespace A063440.P5689188217448687418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063440.P5689188217448687418

namespace A063440

/-- `A000005(∑[n+1])` -/
def P5689188217448687418.Spec : Prop :=
  ∀ n, P5689188217448687418.a n = A063440 (n + 1)

end A063440

/-! ## A063440.P18271795145760950393

`A000005(C(n+2, 2))%(n+3)`
-/

namespace A063440.P18271795145760950393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (Nat.choose (n + 2) 2)) (n + 3 : ℤ)

end

end A063440.P18271795145760950393

namespace A063440

/-- `A000005(C(n+2, 2))%(n+3)` -/
def P18271795145760950393.Spec : Prop :=
  ∀ n, P18271795145760950393.a n = A063440 (n + 1)

end A063440

/-! ## A063440.P4059960851813690961

`A000005(C(n+2, n))+and(2, n²)`
-/

namespace A063440.P4059960851813690961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose (n + 2) n) + (Nat.land 2 (n ^ 2) : ℤ)

end

end A063440.P4059960851813690961

namespace A063440

/-- `A000005(C(n+2, n))+and(2, n²)` -/
def P4059960851813690961.Spec : Prop :=
  ∀ n, P4059960851813690961.a n = A063440 (n + 1)

end A063440

/-! ## A063440.P447212246454429473

`A000005(∑[2*n-(n-1)])-and(1, 2*n)`
-/

namespace A063440.P447212246454429473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (Nat.land 1 (2 * n) : ℤ)

end

end A063440.P447212246454429473

namespace A063440

/-- `A000005(∑[2*n-(n-1)])-and(1, 2*n)` -/
def P447212246454429473.Spec : Prop :=
  ∀ n, P447212246454429473.a n = A063440 (n + 1)

end A063440

/-! ## A063440.P4165209107507946982

`A000027(A000005(C(n+2, 2)))`
-/

namespace A063440.P4165209107507946982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000005 (Nat.choose (n + 2) 2)).toNat

end

end A063440.P4165209107507946982

namespace A063440

/-- `A000027(A000005(C(n+2, 2)))` -/
def P4165209107507946982.Spec : Prop :=
  ∀ n, P4165209107507946982.a n = A063440 (n + 1)

end A063440

/-! ## A063440.P10446119600877960403

`2-A378216(∑[n+1])`
-/

namespace A063440.P10446119600877960403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A378216 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063440.P10446119600877960403

namespace A063440

/-- `2-A378216(∑[n+1])` -/
def P10446119600877960403.Spec : Prop :=
  ∀ n, P10446119600877960403.a n = A063440 (n + 1)

end A063440

/-! ## A063440.P16710324222871046722

`A320111(A257942(n))`
-/

namespace A063440.P16710324222871046722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A257942 n).toNat

end

end A063440.P16710324222871046722

namespace A063440

/-- `A320111(A257942(n))` -/
def P16710324222871046722.Spec : Prop :=
  ∀ n, P16710324222871046722.a n = A063440 (n + 1)

end A063440

/-! ## A063440.P3794616899807503716

`A320111(∑[2*(n+1)])`
-/

namespace A063440.P3794616899807503716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063440.P3794616899807503716

namespace A063440

/-- `A320111(∑[2*(n+1)])` -/
def P3794616899807503716.Spec : Prop :=
  ∀ n, P3794616899807503716.a n = A063440 (n + 1)

end A063440

/-! ## A063440.P3005902902684214530

`A338117((n+1)*(n+2))+1`
-/

namespace A063440.P3005902902684214530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338117 ((n + 1) * (n + 2)) + 1

end

end A063440.P3005902902684214530

namespace A063440

/-- `A338117((n+1)*(n+2))+1` -/
def P3005902902684214530.Spec : Prop :=
  ∀ n, P3005902902684214530.a n = A063440 (n + 1)

end A063440

/-! ## A063440.P6737508126394861320

`A143235(A266725(n+1))`
-/

namespace A063440.P6737508126394861320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143235 (A266725 (n + 1)).toNat

end

end A063440.P6737508126394861320

namespace A063440

/-- `A143235(A266725(n+1))` -/
def P6737508126394861320.Spec : Prop :=
  ∀ n, P6737508126394861320.a n = A063440 (n + 1)

end A063440

/-!
# A063441: a(n) = sigma(n) * mu(n).

The programs for A063441, the canonical program `A063441.P8144974622723550703` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063441 has offset 1).

The definition of A063441 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008683, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A063441.P8144974622723550703

`A000203(n+1)*A008683(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A063441

/-- `A000203(n+1)*A008683(n+1)` -/
def P8144974622723550703.Spec : Prop :=
  ∀ n, P8144974622723550703.a n = A063441 (n + 1)

theorem P8144974622723550703.correct : P8144974622723550703.Spec := by
  intro n
  simp only [A063441, Nat.add_sub_cancel]

end A063441

/-! ## A063441.P1274178768153399366

`A003959(n+1)*A008683(n+1)`
-/

namespace A063441.P1274178768153399366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A008683 (n + 1)

end

end A063441.P1274178768153399366

namespace A063441

/-- `A003959(n+1)*A008683(n+1)` -/
def P1274178768153399366.Spec : Prop :=
  ∀ n, P1274178768153399366.a n = A063441 (n + 1)

end A063441

/-! ## A063441.P8063830849475081387

`A008683(2*n+1-n)*∑{d}[n+1, #]`
-/

namespace A063441.P8063830849475081387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * n + 1 - n) * ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A063441.P8063830849475081387

namespace A063441

/-- `A008683(2*n+1-n)*∑{d}[n+1, #]` -/
def P8063830849475081387.Spec : Prop :=
  ∀ n, P8063830849475081387.a n = A063441 (n + 1)

end A063441

/-! ## A063441.P10034430927123269251

`A008683(n+1)*Δ[A160664(n)]`
-/

namespace A063441.P10034430927123269251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * (f1 (n + 1) - f1 n)

end

end A063441.P10034430927123269251

namespace A063441

/-- `A008683(n+1)*Δ[A160664(n)]` -/
def P10034430927123269251.Spec : Prop :=
  ∀ n, P10034430927123269251.a n = A063441 (n + 1)

end A063441

/-! ## A063441.P13325046632695025700

`A000113(n+1)*A008683(n+1)`
-/

namespace A063441.P13325046632695025700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000113 (n + 1) * A008683 (n + 1)

end

end A063441.P13325046632695025700

namespace A063441

/-- `A000113(n+1)*A008683(n+1)` -/
def P13325046632695025700.Spec : Prop :=
  ∀ n, P13325046632695025700.a n = A063441 (n + 1)

end A063441

/-! ## A063441.P823352851936524260

`A001615(n+1)*A008683(n+1)`
-/

namespace A063441.P823352851936524260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) * A008683 (n + 1)

end

end A063441.P823352851936524260

namespace A063441

/-- `A001615(n+1)*A008683(n+1)` -/
def P823352851936524260.Spec : Prop :=
  ∀ n, P823352851936524260.a n = A063441 (n + 1)

end A063441

/-! ## A063441.P5527388602067553179

`A008473(n+1)*A008683(n+1)`
-/

namespace A063441.P5527388602067553179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008473 (n + 1) * A008683 (n + 1)

end

end A063441.P5527388602067553179

namespace A063441

/-- `A008473(n+1)*A008683(n+1)` -/
def P5527388602067553179.Spec : Prop :=
  ∀ n, P5527388602067553179.a n = A063441 (n + 1)

end A063441

/-! ## A063441.P15547633826315564298

`A008683(n+1)*A033634(n+1)`
-/

namespace A063441.P15547633826315564298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A033634 (n + 1)

end

end A063441.P15547633826315564298

namespace A063441

/-- `A008683(n+1)*A033634(n+1)` -/
def P15547633826315564298.Spec : Prop :=
  ∀ n, P15547633826315564298.a n = A063441 (n + 1)

end A063441

/-! ## A063441.P15492589442067348624

`A008683(n+1)*A034448(n+1)`
-/

namespace A063441.P15492589442067348624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A034448 (n + 1)

end

end A063441.P15492589442067348624

namespace A063441

/-- `A008683(n+1)*A034448(n+1)` -/
def P15492589442067348624.Spec : Prop :=
  ∀ n, P15492589442067348624.a n = A063441 (n + 1)

end A063441

/-! ## A063441.P2539690857271984390

`A008683(n+1)*A046897(n+1)`
-/

namespace A063441.P2539690857271984390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A046897 (n + 1)

end

end A063441.P2539690857271984390

namespace A063441

/-- `A008683(n+1)*A046897(n+1)` -/
def P2539690857271984390.Spec : Prop :=
  ∀ n, P2539690857271984390.a n = A063441 (n + 1)

end A063441

/-! ## A063441.P13211671801383261586

`A008966(n+1)*A046692(n+1)`
-/

namespace A063441.P13211671801383261586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A046692 (n + 1)

end

end A063441.P13211671801383261586

namespace A063441

/-- `A008966(n+1)*A046692(n+1)` -/
def P13211671801383261586.Spec : Prop :=
  ∀ n, P13211671801383261586.a n = A063441 (n + 1)

end A063441

/-! ## A063441.P3774088171118186740

`A008683(n+1)*A048250(n+1)`
-/

namespace A063441.P3774088171118186740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A048250 (n + 1)

end

end A063441.P3774088171118186740

namespace A063441

/-- `A008683(n+1)*A048250(n+1)` -/
def P3774088171118186740.Spec : Prop :=
  ∀ n, P3774088171118186740.a n = A063441 (n + 1)

end A063441

/-! ## A063441.P9034561200725708745

`A008683(n+1)*A049417(n+1)`
-/

namespace A063441.P9034561200725708745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A049417 (n + 1)

end

end A063441.P9034561200725708745

namespace A063441

/-- `A008683(n+1)*A049417(n+1)` -/
def P9034561200725708745.Spec : Prop :=
  ∀ n, P9034561200725708745.a n = A063441 (n + 1)

end A063441

/-! ## A063441.P4352632617352013549

`A008683(n+1)*A049418(n+1)`
-/

namespace A063441.P4352632617352013549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A049418 (n + 1)

end

end A063441.P4352632617352013549

namespace A063441

/-- `A008683(n+1)*A049418(n+1)` -/
def P4352632617352013549.Spec : Prop :=
  ∀ n, P4352632617352013549.a n = A063441 (n + 1)

end A063441

/-! ## A063441.P13033739917772676801

`A008683(n+1)*A051378(n+1)`
-/

namespace A063441.P13033739917772676801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A051378 (n + 1)

end

end A063441.P13033739917772676801

namespace A063441

/-- `A008683(n+1)*A051378(n+1)` -/
def P13033739917772676801.Spec : Prop :=
  ∀ n, P13033739917772676801.a n = A063441 (n + 1)

end A063441

/-! ## A063441.P9516627799315961244

`A008683(n+1)*A069088(n+1)`
-/

namespace A063441.P9516627799315961244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A069088 (n + 1)

end

end A063441.P9516627799315961244

namespace A063441

/-- `A008683(n+1)*A069088(n+1)` -/
def P9516627799315961244.Spec : Prop :=
  ∀ n, P9516627799315961244.a n = A063441 (n + 1)

end A063441

/-! ## A063441.P14163533838422323531

`A008683(n+1)*A069184(n+1)`
-/

namespace A063441.P14163533838422323531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A069184 (n + 1)

end

end A063441.P14163533838422323531

namespace A063441

/-- `A008683(n+1)*A069184(n+1)` -/
def P14163533838422323531.Spec : Prop :=
  ∀ n, P14163533838422323531.a n = A063441 (n + 1)

end A063441

/-! ## A063441.P3605207721001384298

`A008683(n+1)*A069915(n+1)`
-/

namespace A063441.P3605207721001384298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A069915 (n + 1)

end

end A063441.P3605207721001384298

namespace A063441

/-- `A008683(n+1)*A069915(n+1)` -/
def P3605207721001384298.Spec : Prop :=
  ∀ n, P3605207721001384298.a n = A063441 (n + 1)

end A063441

/-! ## A063441.P16585674830763847859

`A008683(n+1)*A069934(n+1)`
-/

namespace A063441.P16585674830763847859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A069934 (n + 1)

end

end A063441.P16585674830763847859

namespace A063441

/-- `A008683(n+1)*A069934(n+1)` -/
def P16585674830763847859.Spec : Prop :=
  ∀ n, P16585674830763847859.a n = A063441 (n + 1)

end A063441

/-! ## A063441.P3542890924590001421

`A008683(n+1)*A073181(n+1)`
-/

namespace A063441.P3542890924590001421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A073181 (n + 1)

end

end A063441.P3542890924590001421

namespace A063441

/-- `A008683(n+1)*A073181(n+1)` -/
def P3542890924590001421.Spec : Prop :=
  ∀ n, P3542890924590001421.a n = A063441 (n + 1)

end A063441

/-!
# A063442: Primes of the form p*q+4 where p and q are consecutive primes.

The programs for A063442, there is no canonical definition to state claims against.
-/

/-! ## A063442.P15071441600935488546

`A006094(A074926(n+1))+4`
-/

namespace A063442.P15071441600935488546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (A074926 (n + 1)).toNat + 4

end

end A063442.P15071441600935488546

/-! ## A063442.P1731676436907395658

`p?[p?[xor(1, n)+1]*p?[2*n+1]+4]`
-/

namespace A063442.P1731676436907395658
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) * f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A063442.P1731676436907395658

/-! ## A063442.P18126514796584939096

`p?[A023523(n+1)+3]`
-/

namespace A063442.P18126514796584939096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063442.P18126514796584939096

/-! ## A063442.P504417260307213538

`p?[A006094(n+1)+4]`
-/

namespace A063442.P504417260307213538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063442.P504417260307213538

/-! ## A063442.P6141707425448014886

`p?[A023515(n+1)+5]`
-/

namespace A063442.P6141707425448014886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063442.P6141707425448014886

/-!
# A063443: Number of ways to tile an n X n square with 1 X 1 and 2 X 2 tiles.

The programs for A063443, there is no canonical definition to state claims against.
-/

/-! ## A063443.P9910749557877350767

`A245013(∑[4*n])`
-/

namespace A063443.P9910749557877350767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063443.P9910749557877350767

/-! ## A063443.P9229378797141903514

`gcd(A000038(n), A245013(A046092(n)))`
-/

namespace A063443.P9229378797141903514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A245013 (A046092 n).toNat)

end

end A063443.P9229378797141903514

/-! ## A063443.P11281901935860553110

`lcm(A106400(n), A245013(A046092(n)))`
-/

namespace A063443.P11281901935860553110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106400 n) (A245013 (A046092 n).toNat)

end

end A063443.P11281901935860553110

/-! ## A063443.P5183290925296119427

`or(A000007(n), A245013(A046092(n)))`
-/

namespace A063443.P5183290925296119427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A245013 (A046092 n).toNat)

end

end A063443.P5183290925296119427

/-! ## A063443.P2609243625462546275

`A141483(2*n)`
-/

namespace A063443.P2609243625462546275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141483 (2 * n)

end

end A063443.P2609243625462546275

/-!
# A063444: Smallest number such that GCD of EulerPhi of 2 consecutive integer equals 2n.

The programs for A063444, there is no canonical definition to state claims against.
-/

/-! ## A063444.P1875824848162909400

`∑[A119894((n-1)*a(n-1)/floor(n/2))]` with `a(0)=3, a(1)=9, a(2)=1, a(3)=2`
-/

namespace A063444.P1875824848162909400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 9, 1, 2] fun n f1 =>
  A119894 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) * ((f1 (n - 1) : ℚ) / (⌊(n : ℚ) / 2⌋ : ℚ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063444.P1875824848162909400

/-!
# A063445: Moebius transform of f(x) = EulerPhi(x^2) function (A002618).

The programs for A063445, the canonical program `A063445.P5027649940616317829` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063445 has offset 1).

The definition of A063445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063445.P2096309813950216031

`∑{d}[n+1, A002618(#)*A008683((n+1)/#)]`
-/

namespace A063445.P2096309813950216031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063445.P2096309813950216031

namespace A063445

/-- `∑{d}[n+1, A002618(#)*A008683((n+1)/#)]` -/
def P2096309813950216031.Spec : Prop :=
  ∀ n, P2096309813950216031.a n = A063445 (n + 1)

end A063445

/-! ## A063445.P5327526778249709129

`∑{d}[n+1, A000290(#)*A046692((n+1)/#)]`
-/

namespace A063445.P5327526778249709129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000290 d * A046692 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063445.P5327526778249709129

namespace A063445

/-- `∑{d}[n+1, A000290(#)*A046692((n+1)/#)]` -/
def P5327526778249709129.Spec : Prop :=
  ∀ n, P5327526778249709129.a n = A063445 (n + 1)

end A063445

/-! ## A063445.P8080712492342588708

`∑{d}[n+1, A007434(#)*A055615((n+1)/#)]`
-/

namespace A063445.P8080712492342588708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063445.P8080712492342588708

namespace A063445

/-- `∑{d}[n+1, A007434(#)*A055615((n+1)/#)]` -/
def P8080712492342588708.Spec : Prop :=
  ∀ n, P8080712492342588708.a n = A063445 (n + 1)

end A063445

/-! ## A063445.P5027649940616317829

`∑{d}[n+1, A007427(#)*A057660((n+1)/#)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A063445

/-- `∑{d}[n+1, A007427(#)*A057660((n+1)/#)]` -/
def P5027649940616317829.Spec : Prop :=
  ∀ n, P5027649940616317829.a n = A063445 (n + 1)

theorem P5027649940616317829.correct : P5027649940616317829.Spec := by
  intro n
  simp only [A063445, Nat.add_sub_cancel]

end A063445

/-! ## A063445.P13829333942800160968

`∑{d}[n+1, A020478(#)*A053825((n+1)/#)]`
-/

namespace A063445.P13829333942800160968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A020478 d * A053825 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063445.P13829333942800160968

namespace A063445

/-- `∑{d}[n+1, A020478(#)*A053825((n+1)/#)]` -/
def P13829333942800160968.Spec : Prop :=
  ∀ n, P13829333942800160968.a n = A063445 (n + 1)

end A063445

/-! ## A063445.P8178191175142478955

`∑{d}[n+1, A023900(#)*A321322((n+1)/#)]`
-/

namespace A063445.P8178191175142478955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A321322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063445.P8178191175142478955

namespace A063445

/-- `∑{d}[n+1, A023900(#)*A321322((n+1)/#)]` -/
def P8178191175142478955.Spec : Prop :=
  ∀ n, P8178191175142478955.a n = A063445 (n + 1)

end A063445

/-! ## A063445.P16246504422921810664

`∑{d}[n+1, A034714(#)*A328254((n+1)/#)]`
-/

namespace A063445.P16246504422921810664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034714 d * A328254 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063445.P16246504422921810664

namespace A063445

/-- `∑{d}[n+1, A034714(#)*A328254((n+1)/#)]` -/
def P16246504422921810664.Spec : Prop :=
  ∀ n, P16246504422921810664.a n = A063445 (n + 1)

end A063445

/-! ## A063445.P11007228328921038762

`∑{d}[n+1, A064987(#)*A327960((n+1)/#)]`
-/

namespace A063445.P11007228328921038762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064987 d * A327960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063445.P11007228328921038762

namespace A063445

/-- `∑{d}[n+1, A064987(#)*A327960((n+1)/#)]` -/
def P11007228328921038762.Spec : Prop :=
  ∀ n, P11007228328921038762.a n = A063445 (n + 1)

end A063445

/-! ## A063445.P13178610863397324460

`∑{d}[n+1, A069097(#)*A328722((n+1)/#)]`
-/

namespace A063445.P13178610863397324460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069097 d * A328722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063445.P13178610863397324460

namespace A063445

/-- `∑{d}[n+1, A069097(#)*A328722((n+1)/#)]` -/
def P13178610863397324460.Spec : Prop :=
  ∀ n, P13178610863397324460.a n = A063445 (n + 1)

end A063445

/-! ## A063445.P10015941006573783517

`∑{d}[n+1, A078747(#)*A327274((n+1)/#)]`
-/

namespace A063445.P10015941006573783517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078747 d * A327274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063445.P10015941006573783517

namespace A063445

/-- `∑{d}[n+1, A078747(#)*A327274((n+1)/#)]` -/
def P10015941006573783517.Spec : Prop :=
  ∀ n, P10015941006573783517.a n = A063445 (n + 1)

end A063445

/-! ## A063445.P15313767583616748930

`∑{d}[n+1, A158523(#)*A254520((n+1)/#)]`
-/

namespace A063445.P15313767583616748930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158523 d * A254520 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063445.P15313767583616748930

namespace A063445

/-- `∑{d}[n+1, A158523(#)*A254520((n+1)/#)]` -/
def P15313767583616748930.Spec : Prop :=
  ∀ n, P15313767583616748930.a n = A063445 (n + 1)

end A063445

/-! ## A063445.P15658954739620834901

`∑{d}[n+1, A140697(#)*A298473((n+1)/#)]`
-/

namespace A063445.P15658954739620834901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A140697 d * A298473 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063445.P15658954739620834901

namespace A063445

/-- `∑{d}[n+1, A140697(#)*A298473((n+1)/#)]` -/
def P15658954739620834901.Spec : Prop :=
  ∀ n, P15658954739620834901.a n = A063445 (n + 1)

end A063445

/-! ## A063445.P4985444932321183090

`∑{d}[n+1, A101035(#)*A341772((n+1)/#)]`
-/

namespace A063445.P4985444932321183090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101035 d * A341772 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063445.P4985444932321183090

namespace A063445

/-- `∑{d}[n+1, A101035(#)*A341772((n+1)/#)]` -/
def P4985444932321183090.Spec : Prop :=
  ∀ n, P4985444932321183090.a n = A063445 (n + 1)

end A063445

/-! ## A063445.P3411965615955956183

`∑{d}[n+1, A308422(#)*A326938((n+1)/#)]`
-/

namespace A063445.P3411965615955956183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A308422 d * A326938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063445.P3411965615955956183

namespace A063445

/-- `∑{d}[n+1, A308422(#)*A326938((n+1)/#)]` -/
def P3411965615955956183.Spec : Prop :=
  ∀ n, P3411965615955956183.a n = A063445 (n + 1)

end A063445

/-! ## A063445.P18303552982945090723

`∑{d}[n+1, A328271(#)*A347090((n+1)/#)]`
-/

namespace A063445.P18303552982945090723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328271 d * A347090 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063445.P18303552982945090723

namespace A063445

/-- `∑{d}[n+1, A328271(#)*A347090((n+1)/#)]` -/
def P18303552982945090723.Spec : Prop :=
  ∀ n, P18303552982945090723.a n = A063445 (n + 1)

end A063445

/-! ## A063445.P6901725874515354847

`∑{d}[n+1, A338164(#)*A351654((n+1)/#)]`
-/

namespace A063445.P6901725874515354847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A338164 d * A351654 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063445.P6901725874515354847

namespace A063445

/-- `∑{d}[n+1, A338164(#)*A351654((n+1)/#)]` -/
def P6901725874515354847.Spec : Prop :=
  ∀ n, P6901725874515354847.a n = A063445 (n + 1)

end A063445

/-! ## A063445.P9375420551707725411

`A130107((n+1)²)`
-/

namespace A063445.P9375420551707725411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130107 ((n + 1) ^ 2)

end

end A063445.P9375420551707725411

namespace A063445

/-- `A130107((n+1)²)` -/
def P9375420551707725411.Spec : Prop :=
  ∀ n, P9375420551707725411.a n = A063445 (n + 1)

end A063445

/-!
# A063446: Integers m such that d(m+1) = 2*d(m), where d(m) = A000005(m).

The programs for A063446, the canonical program `A063446.P12120454612501902942` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063446 has offset 1).

The definition of A063446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4747 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063446.P12120454612501902942

`eq[2*A000005(n+1), A000005(n+2)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A063446

/-- `eq[2*A000005(n+1), A000005(n+2)]+1` -/
def P12120454612501902942.Spec : Prop :=
  ∀ n, (P12120454612501902942.a n : ℤ) = A063446 (n + 1)

theorem P12120454612501902942.correct : P12120454612501902942.Spec := by
  intro n
  simp only [A063446, Nat.add_sub_cancel]

end A063446

/-! ## A063446.P399462004566581322

`eq[A000005(n+1), A051950(n+2)]+1`
-/

namespace A063446.P399462004566581322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A063446.P399462004566581322

namespace A063446

/-- `eq[A000005(n+1), A051950(n+2)]+1` -/
def P399462004566581322.Spec : Prop :=
  ∀ n, (P399462004566581322.a n : ℤ) = A063446 (n + 1)

end A063446

/-! ## A063446.P3062474940662492204

`eq[A062011(n+1), A145154(n)]`
-/

namespace A063446.P3062474940662492204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063446.P3062474940662492204

namespace A063446

/-- `eq[A062011(n+1), A145154(n)]` -/
def P3062474940662492204.Spec : Prop :=
  ∀ n, (P3062474940662492204.a n : ℤ) = A063446 (n + 1)

end A063446

/-! ## A063446.P12697306682360404412

`eq[A114003(n+1)+1, A145154(n)]`
-/

namespace A063446.P12697306682360404412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114003 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063446.P12697306682360404412

namespace A063446

/-- `eq[A114003(n+1)+1, A145154(n)]` -/
def P12697306682360404412.Spec : Prop :=
  ∀ n, (P12697306682360404412.a n : ℤ) = A063446 (n + 1)

end A063446

/-! ## A063446.P10461644476620995012

`eq[2*A000005(n+1), A145154(n)]`
-/

namespace A063446.P10461644476620995012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063446.P10461644476620995012

namespace A063446

/-- `eq[2*A000005(n+1), A145154(n)]` -/
def P10461644476620995012.Spec : Prop :=
  ∀ n, (P10461644476620995012.a n : ℤ) = A063446 (n + 1)

end A063446

/-! ## A063446.P7498199496304377844

`eq[2*A145154(n), A145154(n+1)]`
-/

namespace A063446.P7498199496304377844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145154 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063446.P7498199496304377844

namespace A063446

/-- `eq[2*A145154(n), A145154(n+1)]` -/
def P7498199496304377844.Spec : Prop :=
  ∀ n, (P7498199496304377844.a n : ℤ) = A063446 (n + 1)

end A063446

/-! ## A063446.P5339298291011184483

`eq[A000005(n+1)², A063123(n+1)]+1`
-/

namespace A063446.P5339298291011184483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063123 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A063446.P5339298291011184483

namespace A063446

/-- `eq[A000005(n+1)², A063123(n+1)]+1` -/
def P5339298291011184483.Spec : Prop :=
  ∀ n, (P5339298291011184483.a n : ℤ) = A063446 (n + 1)

end A063446

/-! ## A063446.P17909949605411749798

`eq[A025480(A145154(n+1)), A145154(n)]`
-/

namespace A063446.P17909949605411749798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A145154 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063446.P17909949605411749798

namespace A063446

/-- `eq[A025480(A145154(n+1)), A145154(n)]` -/
def P17909949605411749798.Spec : Prop :=
  ∀ n, (P17909949605411749798.a n : ℤ) = A063446 (n + 1)

end A063446

/-! ## A063446.P1147364842239450894

`eq[A338506(A028310(n))², A338506(n+1)]`
-/

namespace A063446.P1147364842239450894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338506 (A028310 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338506 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063446.P1147364842239450894

namespace A063446

/-- `eq[A338506(A028310(n))², A338506(n+1)]` -/
def P1147364842239450894.Spec : Prop :=
  ∀ n, (P1147364842239450894.a n : ℤ) = A063446 (n + 1)

end A063446

/-! ## A063446.P5723213379316760927

`eq[2*A000005(A028310(n)), A000005(n+1)]`
-/

namespace A063446.P5723213379316760927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063446.P5723213379316760927

namespace A063446

/-- `eq[2*A000005(A028310(n)), A000005(n+1)]` -/
def P5723213379316760927.Spec : Prop :=
  ∀ n, (P5723213379316760927.a n : ℤ) = A063446 (n + 1)

end A063446

/-! ## A063446.P1810069954093766056

`A028310(eq[2*A341062(n+1), A096737(n+1)])`
-/

namespace A063446.P1810069954093766056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A341062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A063446.P1810069954093766056

namespace A063446

/-- `A028310(eq[2*A341062(n+1), A096737(n+1)])` -/
def P1810069954093766056.Spec : Prop :=
  ∀ n, P1810069954093766056.a n = A063446 (n + 1)

end A063446

/-! ## A063446.P3196651683284327468

`A028310(eq[A096737(n+1)/2, A341062(n+1)])`
-/

namespace A063446.P3196651683284327468
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096737 (n + 1) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A063446.P3196651683284327468

namespace A063446

/-- `A028310(eq[A096737(n+1)/2, A341062(n+1)])` -/
def P3196651683284327468.Spec : Prop :=
  ∀ n, P3196651683284327468.a n = A063446 (n + 1)

end A063446

/-!
# A063449: Numbers k for which d(k+1) > 2*d(k), where d(j) = A000005(j).

The programs for A063449, the canonical program `A063449.P15389851829037356267` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063449 has offset 1).

The definition of A063449 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5451 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063449.P15389851829037356267

`lt[A000005(n+1), A051950(n+2)]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A063449

/-- `lt[A000005(n+1), A051950(n+2)]+1` -/
def P15389851829037356267.Spec : Prop :=
  ∀ n, (P15389851829037356267.a n : ℤ) = A063449 (n + 1)

theorem P15389851829037356267.correct : P15389851829037356267.Spec := by
  intro n
  simp only [A063449, Nat.add_sub_cancel]

end A063449

/-! ## A063449.P14699697505036920766

`lt[2, ratio[A000005(n+1)]]+1`
-/

namespace A063449.P14699697505036920766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℚ) / (f3 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A063449.P14699697505036920766

namespace A063449

/-- `lt[2, ratio[A000005(n+1)]]+1` -/
def P14699697505036920766.Spec : Prop :=
  ∀ n, (P14699697505036920766.a n : ℤ) = A063449 (n + 1)

end A063449

/-! ## A063449.P12839076921807548448

`lt[A032741(n), A072670(n)]`
-/

namespace A063449.P12839076921807548448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063449.P12839076921807548448

namespace A063449

/-- `lt[A032741(n), A072670(n)]` -/
def P12839076921807548448.Spec : Prop :=
  ∀ n, (P12839076921807548448.a n : ℤ) = A063449 (n + 1)

end A063449

/-! ## A063449.P3452516621056425758

`lt[A319410(n), A070824(n+1)]`
-/

namespace A063449.P3452516621056425758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063449.P3452516621056425758

namespace A063449

/-- `lt[A319410(n), A070824(n+1)]` -/
def P3452516621056425758.Spec : Prop :=
  ∀ n, (P3452516621056425758.a n : ℤ) = A063449 (n + 1)

end A063449

/-! ## A063449.P12278569060389885839

`lt[A032741(n)+1, A038548(n+1)]`
-/

namespace A063449.P12278569060389885839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063449.P12278569060389885839

namespace A063449

/-- `lt[A032741(n)+1, A038548(n+1)]` -/
def P12278569060389885839.Spec : Prop :=
  ∀ n, (P12278569060389885839.a n : ℤ) = A063449 (n + 1)

end A063449

/-! ## A063449.P16091317252582529671

`lt[A319410(n)+2, A000005(n+1)]`
-/

namespace A063449.P16091317252582529671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063449.P16091317252582529671

namespace A063449

/-- `lt[A319410(n)+2, A000005(n+1)]` -/
def P16091317252582529671.Spec : Prop :=
  ∀ n, (P16091317252582529671.a n : ℤ) = A063449 (n + 1)

end A063449

/-! ## A063449.P13126844065105391287

`lt[2*A032741(n), A070824(n+1)]`
-/

namespace A063449.P13126844065105391287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063449.P13126844065105391287

namespace A063449

/-- `lt[2*A032741(n), A070824(n+1)]` -/
def P13126844065105391287.Spec : Prop :=
  ∀ n, (P13126844065105391287.a n : ℤ) = A063449 (n + 1)

end A063449

/-! ## A063449.P15542616487226613580

`lt[2*A032741(n), A161840(n+1)]`
-/

namespace A063449.P15542616487226613580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161840 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063449.P15542616487226613580

namespace A063449

/-- `lt[2*A032741(n), A161840(n+1)]` -/
def P15542616487226613580.Spec : Prop :=
  ∀ n, (P15542616487226613580.a n : ℤ) = A063449 (n + 1)

end A063449

/-! ## A063449.P17158619315982880813

`eq[0, C(A145154(n), A114003(n+1))]`
-/

namespace A063449.P17158619315982880813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A145154 n).toNat (A114003 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063449.P17158619315982880813

namespace A063449

/-- `eq[0, C(A145154(n), A114003(n+1))]` -/
def P17158619315982880813.Spec : Prop :=
  ∀ n, (P17158619315982880813.a n : ℤ) = A063449 (n + 1)

end A063449

/-! ## A063449.P14545277268619091520

`lt[A032741(n), A000005(n+1)/2-1]`
-/

namespace A063449.P14545277268619091520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / 2 - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A063449.P14545277268619091520

namespace A063449

/-- `lt[A032741(n), A000005(n+1)/2-1]` -/
def P14545277268619091520.Spec : Prop :=
  ∀ n, (P14545277268619091520.a n : ℤ) = A063449 (n + 1)

end A063449

/-! ## A063449.P3691581028970801240

`lt[A000005(A028310(n)), A038548(n+1)]`
-/

namespace A063449.P3691581028970801240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063449.P3691581028970801240

namespace A063449

/-- `lt[A000005(A028310(n)), A038548(n+1)]` -/
def P3691581028970801240.Spec : Prop :=
  ∀ n, (P3691581028970801240.a n : ℤ) = A063449 (n + 1)

end A063449

/-! ## A063449.P13971199460079988000

`lt[A032741(n), A004524(A032741(n+1))]`
-/

namespace A063449.P13971199460079988000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A032741 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063449.P13971199460079988000

namespace A063449

/-- `lt[A032741(n), A004524(A032741(n+1))]` -/
def P13971199460079988000.Spec : Prop :=
  ∀ n, (P13971199460079988000.a n : ℤ) = A063449 (n + 1)

end A063449

/-! ## A063449.P16856068282248605058

`lt[A000005(A028310(n)), A072670(n)+1]`
-/

namespace A063449.P16856068282248605058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063449.P16856068282248605058

namespace A063449

/-- `lt[A000005(A028310(n)), A072670(n)+1]` -/
def P16856068282248605058.Spec : Prop :=
  ∀ n, (P16856068282248605058.a n : ℤ) = A063449 (n + 1)

end A063449

/-! ## A063449.P10779039356562486820

`lt[2*A000005(A028310(n)), A000005(n+1)]`
-/

namespace A063449.P10779039356562486820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063449.P10779039356562486820

namespace A063449

/-- `lt[2*A000005(A028310(n)), A000005(n+1)]` -/
def P10779039356562486820.Spec : Prop :=
  ∀ n, (P10779039356562486820.a n : ℤ) = A063449 (n + 1)

end A063449

/-! ## A063449.P6472645888827861965

`lt[A032741(n), A002265(2*(A000005(n+1)-3)+4)]`
-/

namespace A063449.P6472645888827861965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A000005 (n + 1) - 3) + 4).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063449.P6472645888827861965

namespace A063449

/-- `lt[A032741(n), A002265(2*(A000005(n+1)-3)+4)]` -/
def P6472645888827861965.Spec : Prop :=
  ∀ n, (P6472645888827861965.a n : ℤ) = A063449 (n + 1)

end A063449

/-! ## A063449.P8475366086146938195

`lt[∏{e}[n, #+1], Δ[∏{e}[n, #+1]]]`
-/

namespace A063449.P8475366086146938195
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f5 n), (Nat.factorization (f5 n) p + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f4 (n + 1) : ℤ) - (f4 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A063449.P8475366086146938195

namespace A063449

/-- `lt[∏{e}[n, #+1], Δ[∏{e}[n, #+1]]]` -/
def P8475366086146938195.Spec : Prop :=
  ∀ n, (P8475366086146938195.a n : ℤ) = A063449 (n + 1)

end A063449

/-! ## A063449.P11794987067004582487

`lt[A056924(n+1), Δ[∏{e}[n, #+1]]]`
-/

namespace A063449.P11794987067004582487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), (Nat.factorization (f4 n) p + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063449.P11794987067004582487

namespace A063449

/-- `lt[A056924(n+1), Δ[∏{e}[n, #+1]]]` -/
def P11794987067004582487.Spec : Prop :=
  ∀ n, (P11794987067004582487.a n : ℤ) = A063449 (n + 1)

end A063449

/-! ## A063449.P3290045295865176262

`lt[A000005(A233583(n+1)), A341062(n+1)]`
-/

namespace A063449.P3290045295865176262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063449.P3290045295865176262

namespace A063449

/-- `lt[A000005(A233583(n+1)), A341062(n+1)]` -/
def P3290045295865176262.Spec : Prop :=
  ∀ n, (P3290045295865176262.a n : ℤ) = A063449 (n + 1)

end A063449

/-! ## A063449.P14203424529827997235

`lt[2*A000005(A233583(n+1)), A000005(n+1)]`
-/

namespace A063449.P14203424529827997235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063449.P14203424529827997235

namespace A063449

/-- `lt[2*A000005(A233583(n+1)), A000005(n+1)]` -/
def P14203424529827997235.Spec : Prop :=
  ∀ n, (P14203424529827997235.a n : ℤ) = A063449 (n + 1)

end A063449

/-!
# A063450: Numbers k such that d(k+1) < 2*d(k), where d() is the number of divisors function A000005.

The programs for A063450, the canonical program `A063450.P12247619196585758918` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063450 has offset 1).

The definition of A063450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6349 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063450.P10653368360179411855

`lt[A051950(n+2), A000005(n+1)]+1`
-/

namespace A063450.P10653368360179411855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A063450.P10653368360179411855

namespace A063450

/-- `lt[A051950(n+2), A000005(n+1)]+1` -/
def P10653368360179411855.Spec : Prop :=
  ∀ n, (P10653368360179411855.a n : ℤ) = A063450 (n + 1)

end A063450

/-! ## A063450.P16614855793611936540

`lt[A000005(n+2)/2, A000005(n+1)]+1`
-/

namespace A063450.P16614855793611936540
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 2) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A063450.P16614855793611936540

namespace A063450

/-- `lt[A000005(n+2)/2, A000005(n+1)]+1` -/
def P16614855793611936540.Spec : Prop :=
  ∀ n, (P16614855793611936540.a n : ℤ) = A063450 (n + 1)

end A063450

/-! ## A063450.P847896212143347249

`lt[ratio[A000005(n+1)], 2]+1`
-/

namespace A063450.P847896212143347249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n + 1

end

end A063450.P847896212143347249

namespace A063450

/-- `lt[ratio[A000005(n+1)], 2]+1` -/
def P847896212143347249.Spec : Prop :=
  ∀ n, (P847896212143347249.a n : ℤ) = A063450 (n + 1)

end A063450

/-! ## A063450.P16807228126759959496

`lt[2*A000005(n+1), A145154(n)]`
-/

namespace A063450.P16807228126759959496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063450.P16807228126759959496

namespace A063450

/-- `lt[2*A000005(n+1), A145154(n)]` -/
def P16807228126759959496.Spec : Prop :=
  ∀ n, (P16807228126759959496.a n : ℤ) = A063450 (n + 1)

end A063450

/-! ## A063450.P9118748490900907716

`lt[A014601(A000005(n+1)), A145154(n)]`
-/

namespace A063450.P9118748490900907716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (A000005 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063450.P9118748490900907716

namespace A063450

/-- `lt[A014601(A000005(n+1)), A145154(n)]` -/
def P9118748490900907716.Spec : Prop :=
  ∀ n, (P9118748490900907716.a n : ℤ) = A063450 (n + 1)

end A063450

/-! ## A063450.P12247619196585758918

`lt[A070824(n+1), A319410(n)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A063450

/-- `lt[A070824(n+1), A319410(n)]` -/
def P12247619196585758918.Spec : Prop :=
  ∀ n, (P12247619196585758918.a n : ℤ) = A063450 (n + 1)

theorem P12247619196585758918.correct : P12247619196585758918.Spec := by
  intro n
  simp only [A063450, Nat.add_sub_cancel]

end A063450

/-! ## A063450.P4524864356065265713

`lt[A070824(n+1), 2*A032741(n)]`
-/

namespace A063450.P4524864356065265713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063450.P4524864356065265713

namespace A063450

/-- `lt[A070824(n+1), 2*A032741(n)]` -/
def P4524864356065265713.Spec : Prop :=
  ∀ n, (P4524864356065265713.a n : ℤ) = A063450 (n + 1)

end A063450

/-! ## A063450.P15240441519010110750

`lt[2*A341062(n+1), A000005(n+1)]`
-/

namespace A063450.P15240441519010110750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A341062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063450.P15240441519010110750

namespace A063450

/-- `lt[2*A341062(n+1), A000005(n+1)]` -/
def P15240441519010110750.Spec : Prop :=
  ∀ n, (P15240441519010110750.a n : ℤ) = A063450 (n + 1)

end A063450

/-! ## A063450.P18414466373232229896

`lt[A004524(A032741(n+1)), A032741(n)]`
-/

namespace A063450.P18414466373232229896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A032741 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063450.P18414466373232229896

namespace A063450

/-- `lt[A004524(A032741(n+1)), A032741(n)]` -/
def P18414466373232229896.Spec : Prop :=
  ∀ n, (P18414466373232229896.a n : ℤ) = A063450 (n + 1)

end A063450

/-! ## A063450.P9876886136571786691

`lt[A145154(n+1), A004277(A145154(n))]`
-/

namespace A063450.P9876886136571786691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063450.P9876886136571786691

namespace A063450

/-- `lt[A145154(n+1), A004277(A145154(n))]` -/
def P9876886136571786691.Spec : Prop :=
  ∀ n, (P9876886136571786691.a n : ℤ) = A063450 (n + 1)

end A063450

/-! ## A063450.P11785256136483667332

`eq[A062011(n+1)%A145154(n), A062011(n+1)]`
-/

namespace A063450.P11785256136483667332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062011 (n + 1)) (A145154 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063450.P11785256136483667332

namespace A063450

/-- `eq[A062011(n+1)%A145154(n), A062011(n+1)]` -/
def P11785256136483667332.Spec : Prop :=
  ∀ n, (P11785256136483667332.a n : ℤ) = A063450 (n + 1)

end A063450

/-! ## A063450.P7173664506576931775

`lt[∏{d}[n+1, #], ∏{d}[n, #²]]`
-/

namespace A063450.P7173664506576931775
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), d

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A063450.P7173664506576931775

namespace A063450

/-- `lt[∏{d}[n+1, #], ∏{d}[n, #²]]` -/
def P7173664506576931775.Spec : Prop :=
  ∀ n, (P7173664506576931775.a n : ℤ) = A063450 (n + 1)

end A063450

/-! ## A063450.P1113723246971980611

`lt[A007955(n+2), A007955(n+1)²]+1`
-/

namespace A063450.P1113723246971980611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A063450.P1113723246971980611

namespace A063450

/-- `lt[A007955(n+2), A007955(n+1)²]+1` -/
def P1113723246971980611.Spec : Prop :=
  ∀ n, (P1113723246971980611.a n : ℤ) = A063450 (n + 1)

end A063450

/-!
# A063451: Numbers k such that k*sigma(k) - 1 is a prime.

The programs for A063451, there is no canonical definition to state claims against.
-/

/-! ## A063451.P14385478979051427791

`eq[1, A231820(A064987(n+1))]+1`
-/

namespace A063451.P14385478979051427791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (A064987 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063451.P14385478979051427791

/-!
# A063452: Numbers k such that k - mu(k) is prime.

The programs for A063452, the canonical program `A063452.P9477363027529647391` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063452 has offset 1).

The definition of A063452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063452.P9477363027529647391

`or(2, A062304(n+1)-1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A063452

/-- `or(2, A062304(n+1)-1)` -/
def P9477363027529647391.Spec : Prop :=
  ∀ n, P9477363027529647391.a n = A063452 (n + 1)

theorem P9477363027529647391.correct : P9477363027529647391.Spec := by
  intro n
  simp only [A063452, Nat.add_sub_cancel]

end A063452

/-! ## A063452.P14080023643070139262

`eq[1, A001222(n+2-A008683(n+2))]+2`
-/

namespace A063452.P14080023643070139262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 2 : ℤ) - A008683 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A063452.P14080023643070139262

namespace A063452

/-- `eq[1, A001222(n+2-A008683(n+2))]+2` -/
def P14080023643070139262.Spec : Prop :=
  ∀ n, (P14080023643070139262.a n : ℤ) = A063452 (n + 1)

end A063452

/-! ## A063452.P17281515808060074511

`eq[2, A000005(n+2-A008683(n+2))]+2`
-/

namespace A063452.P17281515808060074511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 2 : ℤ) - A008683 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A063452.P17281515808060074511

namespace A063452

/-- `eq[2, A000005(n+2-A008683(n+2))]+2` -/
def P17281515808060074511.Spec : Prop :=
  ∀ n, (P17281515808060074511.a n : ℤ) = A063452 (n + 1)

end A063452

/-! ## A063452.P10458893930211102549

`A050469(A062304(n+1))`
-/

namespace A063452.P10458893930211102549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050469 (A062304 (n + 1)).toNat

end

end A063452.P10458893930211102549

namespace A063452

/-- `A050469(A062304(n+1))` -/
def P10458893930211102549.Spec : Prop :=
  ∀ n, P10458893930211102549.a n = A063452 (n + 1)

end A063452

/-! ## A063452.P11608109402696426133

`A004442(or(2, A062304(n+1)))`
-/

namespace A063452.P11608109402696426133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (Int.lor 2 (A062304 (n + 1))).toNat

end

end A063452.P11608109402696426133

namespace A063452

/-- `A004442(or(2, A062304(n+1)))` -/
def P11608109402696426133.Spec : Prop :=
  ∀ n, P11608109402696426133.a n = A063452 (n + 1)

end A063452

/-! ## A063452.P3288455086212968409

`2*A004525(p?[n+1-A008683(n+1)])`
-/

namespace A063452.P3288455086212968409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004525 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A063452.P3288455086212968409

namespace A063452

/-- `2*A004525(p?[n+1-A008683(n+1)])` -/
def P3288455086212968409.Spec : Prop :=
  ∀ n, P3288455086212968409.a n = A063452 (n + 1)

end A063452

/-!
# A063453: Multiplicative with a(p^e) = 1 - p^3.

The programs for A063453, the canonical program `A063453.P7272092198875575783` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063453 has offset 1).

The definition of A063453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063453.P7272092198875575783

`∏{p}[n+1, 1-#^3]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063453

/-- `∏{p}[n+1, 1-#^3]` -/
def P7272092198875575783.Spec : Prop :=
  ∀ n, P7272092198875575783.a n = A063453 (n + 1)

theorem P7272092198875575783.correct : P7272092198875575783.Spec := by
  intro n
  simp only [A063453, Nat.add_sub_cancel]

end A063453

/-! ## A063453.P15349403141804821170

`∑{d}[n+1, A334659(#)]`
-/

namespace A063453.P15349403141804821170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A334659 d

end

end A063453.P15349403141804821170

namespace A063453

/-- `∑{d}[n+1, A334659(#)]` -/
def P15349403141804821170.Spec : Prop :=
  ∀ n, P15349403141804821170.a n = A063453 (n + 1)

end A063453

/-! ## A063453.P17345248365440937263

`∑{d}[n+1, #*A334657(#)]`
-/

namespace A063453.P17345248365440937263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A334657 d

end

end A063453.P17345248365440937263

namespace A063453

/-- `∑{d}[n+1, #*A334657(#)]` -/
def P17345248365440937263.Spec : Prop :=
  ∀ n, P17345248365440937263.a n = A063453 (n + 1)

end A063453

/-! ## A063453.P9524717663711090384

`∑{d}[n+1, #^3*A008683(#)]`
-/

namespace A063453.P9524717663711090384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d ^ 3 : ℤ) * A008683 d

end

end A063453.P9524717663711090384

namespace A063453

/-- `∑{d}[n+1, #^3*A008683(#)]` -/
def P9524717663711090384.Spec : Prop :=
  ∀ n, P9524717663711090384.a n = A063453 (n + 1)

end A063453

/-! ## A063453.P6376099321351706447

`A023900(n+1)*A367866(n+1)`
-/

namespace A063453.P6376099321351706447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (n + 1) * A367866 (n + 1)

end

end A063453.P6376099321351706447

namespace A063453

/-- `A023900(n+1)*A367866(n+1)` -/
def P6376099321351706447.Spec : Prop :=
  ∀ n, P6376099321351706447.a n = A063453 (n + 1)

end A063453

/-! ## A063453.P2988748435352924611

`∑{d}[n+1, A000005(#)*A053825((n+1)/#)]`
-/

namespace A063453.P2988748435352924611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A053825 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063453.P2988748435352924611

namespace A063453

/-- `∑{d}[n+1, A000005(#)*A053825((n+1)/#)]` -/
def P2988748435352924611.Spec : Prop :=
  ∀ n, P2988748435352924611.a n = A063453 (n + 1)

end A063453

/-! ## A063453.P12492458215836997841

`∑{d}[n+1, A001511(#)*A359531((n+1)/#)]`
-/

namespace A063453.P12492458215836997841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A359531 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063453.P12492458215836997841

namespace A063453

/-- `∑{d}[n+1, A001511(#)*A359531((n+1)/#)]` -/
def P12492458215836997841.Spec : Prop :=
  ∀ n, P12492458215836997841.a n = A063453 (n + 1)

end A063453

/-! ## A063453.P6663280647175941778

`∑{d}[n+1, A034444(#)*A328640((n+1)/#)]`
-/

namespace A063453.P6663280647175941778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A328640 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063453.P6663280647175941778

namespace A063453

/-- `∑{d}[n+1, A034444(#)*A328640((n+1)/#)]` -/
def P6663280647175941778.Spec : Prop :=
  ∀ n, P6663280647175941778.a n = A063453 (n + 1)

end A063453

/-! ## A063453.P4726699530550908241

`∑{d}[n+1, A189393(#)*A189922((n+1)/#)]`
-/

namespace A063453.P4726699530550908241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A189393 d * A189922 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063453.P4726699530550908241

namespace A063453

/-- `∑{d}[n+1, A189393(#)*A189922((n+1)/#)]` -/
def P4726699530550908241.Spec : Prop :=
  ∀ n, P4726699530550908241.a n = A063453 (n + 1)

end A063453

/-! ## A063453.P16572663360984215215

`∑{d}[n+1, A068970(#)*A334660((n+1)/#)]`
-/

namespace A063453.P16572663360984215215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068970 d * A334660 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063453.P16572663360984215215

namespace A063453

/-- `∑{d}[n+1, A068970(#)*A334660((n+1)/#)]` -/
def P16572663360984215215.Spec : Prop :=
  ∀ n, P16572663360984215215.a n = A063453 (n + 1)

end A063453

/-! ## A063453.P6354180621615084283

`∑{d}[A007947(n+1)², #*A023900(n+1)]`
-/

namespace A063453.P6354180621615084283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A023900 (n + 1)

end

end A063453.P6354180621615084283

namespace A063453

/-- `∑{d}[A007947(n+1)², #*A023900(n+1)]` -/
def P6354180621615084283.Spec : Prop :=
  ∀ n, P6354180621615084283.a n = A063453 (n + 1)

end A063453

/-! ## A063453.P10987428177620294053

`A000203(A007947(n+1)²)*A023900(n+1)`
-/

namespace A063453.P10987428177620294053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007947 (n + 1) ^ 2).toNat * A023900 (n + 1)

end

end A063453.P10987428177620294053

namespace A063453

/-- `A000203(A007947(n+1)²)*A023900(n+1)` -/
def P10987428177620294053.Spec : Prop :=
  ∀ n, P10987428177620294053.a n = A063453 (n + 1)

end A063453

/-!
# A063454: Number of solutions to x^3 + y^3 = z^3 mod n.

The programs for A063454, there is no canonical definition to state claims against.
-/

/-! ## A063454.P4336547053711585630

`A288104(A187829(n+1))`
-/

namespace A063454.P4336547053711585630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288104 (A187829 (n + 1)).toNat

end

end A063454.P4336547053711585630

/-! ## A063454.P4600589338636856326

`A056926(A288104(n+1)²)`
-/

namespace A063454.P4600589338636856326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A288104 (n + 1) ^ 2).toNat

end

end A063454.P4600589338636856326

/-! ## A063454.P1979674062365729575

`A157271(2*A288104(n+1))`
-/

namespace A063454.P1979674062365729575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (2 * A288104 (n + 1)).toNat

end

end A063454.P1979674062365729575

/-! ## A063454.P4789118578674142549

`A106617(16*A288104(n+1))`
-/

namespace A063454.P4789118578674142549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (16 * A288104 (n + 1)).toNat

end

end A063454.P4789118578674142549

/-! ## A063454.P12355431900839029961

`A288104(n+1)%A371132(3*n+4)`
-/

namespace A063454.P12355431900839029961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288104 (n + 1)) (A371132 (3 * n + 4))

end

end A063454.P12355431900839029961

/-!
# A063457: a(n) = floor(a(n-1)*(Pi-1)); a(1) = 1.

The programs for A063457, the canonical program `A063457.P10658367742645819765` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063457 has offset 1).

The definition of A063457 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)*(π-1))` (program `A063457.P10658367742645819765`, by `A063457.P10658367742645819765.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A063457.P10658367742645819765

`floor(a(n-1)*(π-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063457

/-- `floor(a(n-1)*(π-1))` -/
def P10658367742645819765.Spec : Prop :=
  ∀ n, P10658367742645819765.a n = A063457 (n + 1)

theorem P10658367742645819765.correct : P10658367742645819765.Spec := by
  intro n
  simp only [A063457, Nat.add_sub_cancel]

end A063457

/-! ## A063457.P5209089439483015567

`-ceil((1-π)*a(n-1))` with `a(0)=1`
-/

namespace A063457.P5209089439483015567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -⌈(1 - Real.pi) * (a (n - 1) : ℝ)⌉

end

end A063457.P5209089439483015567

namespace A063457

/-- `-ceil((1-π)*a(n-1))` -/
def P5209089439483015567.Spec : Prop :=
  ∀ n, P5209089439483015567.a n = A063457 (n + 1)

end A063457

/-! ## A063457.P13513378830282874214

`floor(2*a(n-1)*acos(0))-a(n-1)` with `a(0)=1`
-/

namespace A063457.P13513378830282874214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊2 * ((a (n - 1) : ℝ) * Real.arccos (0 : ℝ))⌋ - a (n - 1)

end

end A063457.P13513378830282874214

namespace A063457

/-- `floor(2*a(n-1)*acos(0))-a(n-1)` -/
def P13513378830282874214.Spec : Prop :=
  ∀ n, P13513378830282874214.a n = A063457 (n + 1)

end A063457

/-! ## A063457.P17527846069830239475

`floor(2*a(n-1)*asin(1))-a(n-1)` with `a(0)=1`
-/

namespace A063457.P17527846069830239475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(2 * a (n - 1) : ℝ) * Real.arcsin (1 : ℝ)⌋ - a (n - 1)

end

end A063457.P17527846069830239475

namespace A063457

/-- `floor(2*a(n-1)*asin(1))-a(n-1)` -/
def P17527846069830239475.Spec : Prop :=
  ∀ n, P17527846069830239475.a n = A063457 (n + 1)

end A063457

/-!
# A063458: a(n) = floor(a(n-1)^(Pi-1)); a(1) = 2.

The programs for A063458, the canonical program `A063458.P17405332967880915097` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063458 has offset 1).

The definition of A063458 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)^(π-1))` (program `A063458.P17405332967880915097`, by `A063458.P17405332967880915097.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A063458.P17405332967880915097

`floor(a(n-1)^(π-1))` with `a(0)=2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063458

/-- `floor(a(n-1)^(π-1))` -/
def P17405332967880915097.Spec : Prop :=
  ∀ n, P17405332967880915097.a n = A063458 (n + 1)

theorem P17405332967880915097.correct : P17405332967880915097.Spec := by
  intro n
  simp only [A063458, Nat.add_sub_cancel]

end A063458

/-!
# A063459: A Beatty sequence: a(n) = floor(n*(Pi - 1)).

The programs for A063459, the canonical program `A063459.P17423234819915296512` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063459 has offset 0).

The definition of A063459 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063459.P12500997570778053555

`floor(n*(π-1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A063459.P12500997570778053555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (Real.pi - 1)⌋

end

end A063459.P12500997570778053555

namespace A063459

/-- `floor(n*(π-1))` -/
def P12500997570778053555.Spec : Prop :=
  ∀ n, P12500997570778053555.a n = A063459 n

end A063459

/-! ## A063459.P17423234819915296512

`A022844(n)-n`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A063459

/-- `A022844(n)-n` -/
def P17423234819915296512.Spec : Prop :=
  ∀ n, P17423234819915296512.a n = A063459 n

theorem P17423234819915296512.correct : P17423234819915296512.Spec := by
  intro n
  simp only [A063459]

end A063459

/-! ## A063459.P148491013602349604

`floor(2*n*acos(0))-n`
-/

namespace A063459.P148491013602349604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℝ) * Real.arccos (0 : ℝ)⌋ - (n : ℤ)

end

end A063459.P148491013602349604

namespace A063459

/-- `floor(2*n*acos(0))-n` -/
def P148491013602349604.Spec : Prop :=
  ∀ n, P148491013602349604.a n = A063459 n

end A063459

/-! ## A063459.P13815875392970363105

`floor(2*n*asin(1))-n`
-/

namespace A063459.P13815875392970363105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℝ) * Real.arcsin (1 : ℝ)⌋ - (n : ℤ)

end

end A063459.P13815875392970363105

namespace A063459

/-- `floor(2*n*asin(1))-n` -/
def P13815875392970363105.Spec : Prop :=
  ∀ n, P13815875392970363105.a n = A063459 n

end A063459

/-! ## A063459.P2109933262208042216

`floor(4*n*atan(1))-n`
-/

namespace A063459.P2109933262208042216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 * n : ℝ) * Real.arctan (1 : ℝ)⌋ - (n : ℤ)

end

end A063459.P2109933262208042216

namespace A063459

/-- `floor(4*n*atan(1))-n` -/
def P2109933262208042216.Spec : Prop :=
  ∀ n, P2109933262208042216.a n = A063459 n

end A063459

/-! ## A063459.P14444455217135391429

`ceil(2*n*atan(2*n)-n)`
-/

namespace A063459.P14444455217135391429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℝ) * Real.arctan (2 * n : ℝ) - (n : ℝ)⌉

end

end A063459.P14444455217135391429

namespace A063459

/-- `ceil(2*n*atan(2*n)-n)` -/
def P14444455217135391429.Spec : Prop :=
  ∀ n, P14444455217135391429.a n = A063459 n

end A063459

/-! ## A063459.P5779529091667821134

`A187320(n)+n`
-/

namespace A063459.P5779529091667821134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187320 n + (n : ℤ)

end

end A063459.P5779529091667821134

namespace A063459

/-- `A187320(n)+n` -/
def P5779529091667821134.Spec : Prop :=
  ∀ n, P5779529091667821134.a n = A063459 n

end A063459

/-! ## A063459.P14229224162439464206

`4*n-A195125(n)`
-/

namespace A063459.P14229224162439464206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A195125 n

end

end A063459.P14229224162439464206

namespace A063459

/-- `4*n-A195125(n)` -/
def P14229224162439464206.Spec : Prop :=
  ∀ n, P14229224162439464206.a n = A063459 n

end A063459

/-! ## A063459.P6575330556344713479

`comp[A186544(n+1)]+n`
-/

namespace A063459.P6575330556344713479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A063459.P6575330556344713479

namespace A063459

/-- `comp[A186544(n+1)]+n` -/
def P6575330556344713479.Spec : Prop :=
  ∀ n, (P6575330556344713479.a n : ℤ) = A063459 n

end A063459

/-! ## A063459.P8967595268438795526

`A004084(n+1)-(n+1)`
-/

namespace A063459.P8967595268438795526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 (n + 1) - (n + 1 : ℤ)

end

end A063459.P8967595268438795526

namespace A063459

/-- `A004084(n+1)-(n+1)` -/
def P8967595268438795526.Spec : Prop :=
  ∀ n, P8967595268438795526.a n = A063459 n

end A063459

/-! ## A063459.P9685736526478211584

`A140758(2*n)-n`
-/

namespace A063459.P9685736526478211584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 (2 * n) - (n : ℤ)

end

end A063459.P9685736526478211584

namespace A063459

/-- `A140758(2*n)-n` -/
def P9685736526478211584.Spec : Prop :=
  ∀ n, P9685736526478211584.a n = A063459 n

end A063459

/-! ## A063459.P16542239194713376008

`A028310(A121381(n)-n)-1`
-/

namespace A063459.P16542239194713376008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A121381 n - (n : ℤ)).toNat - 1

end

end A063459.P16542239194713376008

namespace A063459

/-- `A028310(A121381(n)-n)-1` -/
def P16542239194713376008.Spec : Prop :=
  ∀ n, P16542239194713376008.a n = A063459 n

end A063459

/-! ## A063459.P8043708410086154613

`A274399(3*n)-n`
-/

namespace A063459.P8043708410086154613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274399 (3 * n) - (n : ℤ)

end

end A063459.P8043708410086154613

namespace A063459

/-- `A274399(3*n)-n` -/
def P8043708410086154613.Spec : Prop :=
  ∀ n, P8043708410086154613.a n = A063459 n

end A063459

/-! ## A063459.P8066937431659517321

`A004524(A132222(2*n))-n`
-/

namespace A063459.P8066937431659517321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A132222 (2 * n)).toNat - (n : ℤ)

end

end A063459.P8066937431659517321

namespace A063459

/-- `A004524(A132222(2*n))-n` -/
def P8066937431659517321.Spec : Prop :=
  ∀ n, P8066937431659517321.a n = A063459 n

end A063459

/-! ## A063459.P6107743108203176018

`A065033(A004082(n+1))-(n+1)`
-/

namespace A063459.P6107743108203176018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A004082 (n + 1)).toNat - (n + 1 : ℤ)

end

end A063459.P6107743108203176018

namespace A063459

/-- `A065033(A004082(n+1))-(n+1)` -/
def P6107743108203176018.Spec : Prop :=
  ∀ n, P6107743108203176018.a n = A063459 n

end A063459

/-! ## A063459.P14494982915931927731

`A002265(A038130(2*n))-n`
-/

namespace A063459.P14494982915931927731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A038130 (2 * n)).toNat - (n : ℤ)

end

end A063459.P14494982915931927731

namespace A063459

/-- `A002265(A038130(2*n))-n` -/
def P14494982915931927731.Spec : Prop :=
  ∀ n, P14494982915931927731.a n = A063459 n

end A063459

/-! ## A063459.P7738247081372361426

`lt[2, 3^cot(n+1)]-n`
-/

namespace A063459.P7738247081372361426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 : ℝ) ^ (Real.cot (n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n : ℤ) - (n : ℤ)

end

end A063459.P7738247081372361426

namespace A063459

/-- `lt[2, 3^cot(n+1)]-n` -/
def P7738247081372361426.Spec : Prop :=
  ∀ n, P7738247081372361426.a n = A063459 n

end A063459

/-! ## A063459.P7436431321613496843

`round(log(A077919(2*n)))`
-/

namespace A063459.P7436431321613496843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A077919 (2 * n) : ℝ))

end

end A063459.P7436431321613496843

namespace A063459

/-- `round(log(A077919(2*n)))` -/
def P7436431321613496843.Spec : Prop :=
  ∀ n, P7436431321613496843.a n = A063459 n

end A063459

/-! ## A063459.P12517417052768231679

`A121854(n²)-n`
-/

namespace A063459.P12517417052768231679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121854 (n ^ 2) - (n : ℤ)

end

end A063459.P12517417052768231679

namespace A063459

/-- `A121854(n²)-n` -/
def P12517417052768231679.Spec : Prop :=
  ∀ n, P12517417052768231679.a n = A063459 n

end A063459

/-!
# A063460: A Beatty sequence: a(n) = floor(n * (Pi-1)/(Pi-2)).

The programs for A063460, the canonical program `A063460.P5079764106570345208` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063460 has offset 1).

The definition of A063460 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*(π-1)/(π-2))` (program `A063460.P5079764106570345208`, by `A063460.P5079764106570345208.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A063460.P5079764106570345208

`floor((n+1)*(π-1)/(π-2))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063460

/-- `floor((n+1)*(π-1)/(π-2))` -/
def P5079764106570345208.Spec : Prop :=
  ∀ n, P5079764106570345208.a n = A063460 (n + 1)

theorem P5079764106570345208.correct : P5079764106570345208.Spec := by
  intro n
  simp only [A063460, Nat.add_sub_cancel]

end A063460

/-! ## A063460.P6845886850693308335

`∑[char[A187320(n)]]+n`
-/

namespace A063460.P6845886850693308335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187320 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A063460.P6845886850693308335

namespace A063460

/-- `∑[char[A187320(n)]]+n` -/
def P6845886850693308335.Spec : Prop :=
  ∀ n, (P6845886850693308335.a n : ℤ) = A063460 (n + 1)

end A063460

/-! ## A063460.P13642349344628740272

`comp[A184591(n+1)]+1`
-/

namespace A063460.P13642349344628740272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A063460.P13642349344628740272

namespace A063460

/-- `comp[A184591(n+1)]+1` -/
def P13642349344628740272.Spec : Prop :=
  ∀ n, (P13642349344628740272.a n : ℤ) = A063460 (n + 1)

end A063460

/-! ## A063460.P263550640705111771

`comp[A063459(n)-1]+1`
-/

namespace A063460.P263550640705111771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063459 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A063460.P263550640705111771

namespace A063460

/-- `comp[A063459(n)-1]+1` -/
def P263550640705111771.Spec : Prop :=
  ∀ n, (P263550640705111771.a n : ℤ) = A063460 (n + 1)

end A063460

/-! ## A063460.P4207200689750928889

`or(comp[A063459(n)], A000007(n))`
-/

namespace A063460.P4207200689750928889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063459 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A000007 n)

end

end A063460.P4207200689750928889

namespace A063460

/-- `or(comp[A063459(n)], A000007(n))` -/
def P4207200689750928889.Spec : Prop :=
  ∀ n, P4207200689750928889.a n = A063460 (n + 1)

end A063460

/-! ## A063460.P17344844575617318891

`or(comp[A063459(n)], A322586(3*n+4))`
-/

namespace A063460.P17344844575617318891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063459 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A322586 (3 * n + 4))

end

end A063460.P17344844575617318891

namespace A063460

/-- `or(comp[A063459(n)], A322586(3*n+4))` -/
def P17344844575617318891.Spec : Prop :=
  ∀ n, P17344844575617318891.a n = A063460 (n + 1)

end A063460

/-! ## A063460.P6200200580642069794

`A000007(n+2)+comp[A063459(n)]`
-/

namespace A063460.P6200200580642069794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063459 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 2) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A063460.P6200200580642069794

namespace A063460

/-- `A000007(n+2)+comp[A063459(n)]` -/
def P6200200580642069794.Spec : Prop :=
  ∀ n, P6200200580642069794.a n = A063460 (n + 1)

end A063460

/-! ## A063460.P4039842295079406560

`abs(A001478(comp[A063459(n)]))`
-/

namespace A063460.P4039842295079406560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063459 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001478 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)|

end

end A063460.P4039842295079406560

namespace A063460

/-- `abs(A001478(comp[A063459(n)]))` -/
def P4039842295079406560.Spec : Prop :=
  ∀ n, P4039842295079406560.a n = A063460 (n + 1)

end A063460

/-! ## A063460.P1593493635362551318

`A140106(A108589(n+1)+n+3)`
-/

namespace A063460.P1593493635362551318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A108589 (n + 1) + (n + 3 : ℤ)).toNat

end

end A063460.P1593493635362551318

namespace A063460

/-- `A140106(A108589(n+1)+n+3)` -/
def P1593493635362551318.Spec : Prop :=
  ∀ n, P1593493635362551318.a n = A063460 (n + 1)

end A063460

/-! ## A063460.P6413095895889887885

`ceil(log(A158797(n)))+1`
-/

namespace A063460.P6413095895889887885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A158797 n : ℝ)⌉ + 1

end

end A063460.P6413095895889887885

namespace A063460

/-- `ceil(log(A158797(n)))+1` -/
def P6413095895889887885.Spec : Prop :=
  ∀ n, P6413095895889887885.a n = A063460 (n + 1)

end A063460

/-! ## A063460.P5782237981016962260

`ceil(log(∑[A299164(2*(n+1))]))`
-/

namespace A063460.P5782237981016962260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299164 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌉

end

end A063460.P5782237981016962260

namespace A063460

/-- `ceil(log(∑[A299164(2*(n+1))]))` -/
def P5782237981016962260.Spec : Prop :=
  ∀ n, P5782237981016962260.a n = A063460 (n + 1)

end A063460

/-! ## A063460.P2184977511601184043

`∑[A014695(A181318(n))]`
-/

namespace A063460.P2184977511601184043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (A181318 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063460.P2184977511601184043

namespace A063460

/-- `∑[A014695(A181318(n))]` -/
def P2184977511601184043.Spec : Prop :=
  ∀ n, P2184977511601184043.a n = A063460 (n + 1)

end A063460

/-! ## A063460.P7199047949758989694

`∑[A014695(A051724(n)²)]`
-/

namespace A063460.P7199047949758989694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (A051724 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063460.P7199047949758989694

namespace A063460

/-- `∑[A014695(A051724(n)²)]` -/
def P7199047949758989694.Spec : Prop :=
  ∀ n, P7199047949758989694.a n = A063460 (n + 1)

end A063460

/-! ## A063460.P8886150613650765154

`∑[2-A240351(n²)]`
-/

namespace A063460.P8886150613650765154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A240351 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063460.P8886150613650765154

namespace A063460

/-- `∑[2-A240351(n²)]` -/
def P8886150613650765154.Spec : Prop :=
  ∀ n, P8886150613650765154.a n = A063460 (n + 1)

end A063460

/-!
# A063461: Primes of the form k^2 + prime(k) + 1.

The programs for A063461, there is no canonical definition to state claims against.
-/

/-! ## A063461.P2417815547348098876

`p?[A004232(n+1)+1]`
-/

namespace A063461.P2417815547348098876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004232 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063461.P2417815547348098876

/-! ## A063461.P11516254061590853051

`p?[A078916(n+1)+n²]`
-/

namespace A063461.P11516254061590853051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078916 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063461.P11516254061590853051

/-! ## A063461.P3448166670937745945

`p?[A299763(n+1)+n²]`
-/

namespace A063461.P3448166670937745945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063461.P3448166670937745945

/-! ## A063461.P17644194616535199418

`p?[A008864(n+1)+(n+1)²]`
-/

namespace A063461.P17644194616535199418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063461.P17644194616535199418

/-! ## A063461.P465000185989355680

`p?[comp[A018252(n+1)]+n²+1]`
-/

namespace A063461.P465000185989355680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A063461.P465000185989355680

/-! ## A063461.P7720869012165787994

`p?[(n+1)²+A000040(n+1)+1]`
-/

namespace A063461.P7720869012165787994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (A000040 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063461.P7720869012165787994

/-! ## A063461.P13705406663247838448

`p?[(n+1)²+A040976(n+1)+3]`
-/

namespace A063461.P13705406663247838448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (A040976 (n + 1) + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063461.P13705406663247838448

/-! ## A063461.P6207265499282852261

`p?[(n+1)²+p?[A167171(n+1)]+1]`
-/

namespace A063461.P6207265499282852261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167171 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063461.P6207265499282852261

/-! ## A063461.P9151819098350270875

`p?[A000203(A008578(n+1))+n²]`
-/

namespace A063461.P9151819098350270875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A008578 (n + 1)).toNat + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063461.P9151819098350270875

/-! ## A063461.P1192578383439051218

`p?[A069894(n)+A000040(2*n+1)]`
-/

namespace A063461.P1192578383439051218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069894 n + A000040 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063461.P1192578383439051218

/-!
# A063462: a(n) = n * last digit of n.

The programs for A063462, the canonical program `A063462.P14791275031351594588` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063462 has offset 0).

The definition of A063462 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063462.P14791275031351594588

`n%10*n`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063462

/-- `n%10*n` -/
def P14791275031351594588.Spec : Prop :=
  ∀ n, (P14791275031351594588.a n : ℤ) = A063462 n

theorem P14791275031351594588.correct : P14791275031351594588.Spec := by
  intro n
  simp only [A063462]

end A063462

/-! ## A063462.P27741709343998481

`n*A010879(n)`
-/

namespace A063462.P27741709343998481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010879 n

end

end A063462.P27741709343998481

namespace A063462

/-- `n*A010879(n)` -/
def P27741709343998481.Spec : Prop :=
  ∀ n, P27741709343998481.a n = A063462 n

end A063462

/-! ## A063462.P16278550021658411163

`n*(n-10*ceil((n-9)/10))`
-/

namespace A063462.P16278550021658411163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - 10 * ⌈((n : ℤ) - 9 : ℚ) / 10⌉)

end

end A063462.P16278550021658411163

namespace A063462

/-- `n*(n-10*ceil((n-9)/10))` -/
def P16278550021658411163.Spec : Prop :=
  ∀ n, P16278550021658411163.a n = A063462 n

end A063462

/-! ## A063462.P11830092747593571393

`n*A010889(n)-n`
-/

namespace A063462.P11830092747593571393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010889 n - (n : ℤ)

end

end A063462.P11830092747593571393

namespace A063462

/-- `n*A010889(n)-n` -/
def P11830092747593571393.Spec : Prop :=
  ∀ n, P11830092747593571393.a n = A063462 n

end A063462

/-! ## A063462.P14386302148180050088

`n²-n*A169932(n)`
-/

namespace A063462.P14386302148180050088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (n : ℤ) * A169932 n

end

end A063462.P14386302148180050088

namespace A063462

/-- `n²-n*A169932(n)` -/
def P14386302148180050088.Spec : Prop :=
  ∀ n, P14386302148180050088.a n = A063462 n

end A063462

/-! ## A063462.P2999471410757826785

`n²%A008706(comp[or(1, n)])`
-/

namespace A063462.P2999471410757826785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (A008706 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A063462.P2999471410757826785

namespace A063462

/-- `n²%A008706(comp[or(1, n)])` -/
def P2999471410757826785.Spec : Prop :=
  ∀ n, P2999471410757826785.a n = A063462 n

end A063462

/-! ## A063462.P2913768834953879956

`n²%A008706(A005843(n))`
-/

namespace A063462.P2913768834953879956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (A008706 (A005843 n).toNat)

end

end A063462.P2913768834953879956

namespace A063462

/-- `n²%A008706(A005843(n))` -/
def P2913768834953879956.Spec : Prop :=
  ∀ n, P2913768834953879956.a n = A063462 n

end A063462

/-! ## A063462.P220526593278116676

`∑[A004273(n)]%A184418(A008574(n))`
-/

namespace A063462.P220526593278116676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A184418 (A008574 n).toNat)

end

end A063462.P220526593278116676

namespace A063462

/-- `∑[A004273(n)]%A184418(A008574(n))` -/
def P220526593278116676.Spec : Prop :=
  ∀ n, P220526593278116676.a n = A063462 n

end A063462

/-! ## A063462.P3931707557910302721

`(n^2)%A005843(A008706(n))`
-/

namespace A063462.P3931707557910302721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (A005843 (A008706 n).toNat)

end

end A063462.P3931707557910302721

namespace A063462

/-- `(n^2)%A005843(A008706(n))` -/
def P3931707557910302721.Spec : Prop :=
  ∀ n, P3931707557910302721.a n = A063462 n

end A063462

/-!
# A063463: Squarefree numbers arising in A024110.

The programs for A063463, there is no canonical definition to state claims against.
-/

/-! ## A063463.P9853946106132185471

`A024110(A254960(2*n+1)+A001222(2*n+5))`
-/

namespace A063463.P9853946106132185471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024110 (A254960 (2 * n + 1) + A001222 (2 * n + 5)).toNat

end

end A063463.P9853946106132185471

/-!
# A063464: Numbers k such that omega(k) = omega(k+2), where omega(k) is the number of distinct prime divisors of k.

The programs for A063464, the canonical program `A063464.P10174242227482092936` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063464 has offset 1).

The definition of A063464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063464.P3845632568053925646

`A088070(n+1)-1`
-/

namespace A063464.P3845632568053925646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088070 (n + 1) - 1

end

end A063464.P3845632568053925646

namespace A063464

/-- `A088070(n+1)-1` -/
def P3845632568053925646.Spec : Prop :=
  ∀ n, P3845632568053925646.a n = A063464 (n + 1)

end A063464

/-! ## A063464.P12344751713273770765

`A115166(n+1)/2-1`
-/

namespace A063464.P12344751713273770765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115166 (n + 1) : ℚ) / 2 - 1

end

end A063464.P12344751713273770765

namespace A063464

/-- `A115166(n+1)/2-1` -/
def P12344751713273770765.Spec : Prop :=
  ∀ n, P12344751713273770765.a n = (A063464 (n + 1) : ℚ)

end A063464

/-! ## A063464.P10174242227482092936

`eq[A001221(n+1), A001221(n+3)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A063464

/-- `eq[A001221(n+1), A001221(n+3)]+1` -/
def P10174242227482092936.Spec : Prop :=
  ∀ n, (P10174242227482092936.a n : ℤ) = A063464 (n + 1)

theorem P10174242227482092936.correct : P10174242227482092936.Spec := by
  intro n
  simp only [A063464, Nat.add_sub_cancel]

end A063464

/-! ## A063464.P4701340062243471246

`A020725(eq[A001221(n+1), A001221(n+3)])`
-/

namespace A063464.P4701340062243471246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A063464.P4701340062243471246

namespace A063464

/-- `A020725(eq[A001221(n+1), A001221(n+3)])` -/
def P4701340062243471246.Spec : Prop :=
  ∀ n, P4701340062243471246.a n = A063464 (n + 1)

end A063464

/-! ## A063464.P9301255983798505383

`A023443(A088070(n+1))`
-/

namespace A063464.P9301255983798505383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A088070 (n + 1)).toNat

end

end A063464.P9301255983798505383

namespace A063464

/-- `A023443(A088070(n+1))` -/
def P9301255983798505383.Spec : Prop :=
  ∀ n, P9301255983798505383.a n = A063464 (n + 1)

end A063464

/-! ## A063464.P6668423980244279259

`eq[A059957(n+2), A059957(n+1)]+1`
-/

namespace A063464.P6668423980244279259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059957 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059957 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A063464.P6668423980244279259

namespace A063464

/-- `eq[A059957(n+2), A059957(n+1)]+1` -/
def P6668423980244279259.Spec : Prop :=
  ∀ n, (P6668423980244279259.a n : ℤ) = A063464 (n + 1)

end A063464

/-! ## A063464.P1084870426147148079

`eq[A001221(n+2), A001221(A028310(n))]`
-/

namespace A063464.P1084870426147148079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063464.P1084870426147148079

namespace A063464

/-- `eq[A001221(n+2), A001221(A028310(n))]` -/
def P1084870426147148079.Spec : Prop :=
  ∀ n, (P1084870426147148079.a n : ℤ) = A063464 (n + 1)

end A063464

/-! ## A063464.P6121713472678436094

`eq[A001221(n+2), A001221(A257088(n))]`
-/

namespace A063464.P6121713472678436094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063464.P6121713472678436094

namespace A063464

/-- `eq[A001221(n+2), A001221(A257088(n))]` -/
def P6121713472678436094.Spec : Prop :=
  ∀ n, (P6121713472678436094.a n : ℤ) = A063464 (n + 1)

end A063464

/-! ## A063464.P5172450831076669822

`eq[A292586(n+2), A292586(A028310(n))]`
-/

namespace A063464.P5172450831076669822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292586 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292586 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063464.P5172450831076669822

namespace A063464

/-- `eq[A292586(n+2), A292586(A028310(n))]` -/
def P5172450831076669822.Spec : Prop :=
  ∀ n, (P5172450831076669822.a n : ℤ) = A063464 (n + 1)

end A063464

/-! ## A063464.P6959139540639797996

`eq[A292586(n+2), A292586(A257088(n))]`
-/

namespace A063464.P6959139540639797996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292586 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292586 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063464.P6959139540639797996

namespace A063464

/-- `eq[A292586(n+2), A292586(A257088(n))]` -/
def P6959139540639797996.Spec : Prop :=
  ∀ n, (P6959139540639797996.a n : ℤ) = A063464 (n + 1)

end A063464

/-! ## A063464.P1564357896221727835

`A046667(A115166(n+1))`
-/

namespace A063464.P1564357896221727835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (A115166 (n + 1)).toNat

end

end A063464.P1564357896221727835

namespace A063464

/-- `A046667(A115166(n+1))` -/
def P1564357896221727835.Spec : Prop :=
  ∀ n, P1564357896221727835.a n = A063464 (n + 1)

end A063464

/-! ## A063464.P1241820409391075865

`A004524(A115166(n+1)-1)`
-/

namespace A063464.P1241820409391075865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A115166 (n + 1) - 1).toNat

end

end A063464.P1241820409391075865

namespace A063464

/-- `A004524(A115166(n+1)-1)` -/
def P1241820409391075865.Spec : Prop :=
  ∀ n, P1241820409391075865.a n = A063464 (n + 1)

end A063464

/-! ## A063464.P1008038105281861607

`A029578(A115166(n+1)-2)`
-/

namespace A063464.P1008038105281861607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A115166 (n + 1) - 2).toNat

end

end A063464.P1008038105281861607

namespace A063464

/-- `A029578(A115166(n+1)-2)` -/
def P1008038105281861607.Spec : Prop :=
  ∀ n, P1008038105281861607.a n = A063464 (n + 1)

end A063464

/-! ## A063464.P6307040717704975549

`A110654(A115166(n+1)-2)`
-/

namespace A063464.P6307040717704975549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A115166 (n + 1) - 2).toNat

end

end A063464.P6307040717704975549

namespace A063464

/-- `A110654(A115166(n+1)-2)` -/
def P6307040717704975549.Spec : Prop :=
  ∀ n, P6307040717704975549.a n = A063464 (n + 1)

end A063464

/-! ## A063464.P8754835028002323549

`eq[A001221(A065033(2*n)), A001221(n+2)]`
-/

namespace A063464.P8754835028002323549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A065033 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063464.P8754835028002323549

namespace A063464

/-- `eq[A001221(A065033(2*n)), A001221(n+2)]` -/
def P8754835028002323549.Spec : Prop :=
  ∀ n, (P8754835028002323549.a n : ℤ) = A063464 (n + 1)

end A063464

/-! ## A063464.P7234212124818237865

`eq[A001221(A123108(2*n)), A001221(n+2)]`
-/

namespace A063464.P7234212124818237865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A123108 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063464.P7234212124818237865

namespace A063464

/-- `eq[A001221(A123108(2*n)), A001221(n+2)]` -/
def P7234212124818237865.Spec : Prop :=
  ∀ n, (P7234212124818237865.a n : ℤ) = A063464 (n + 1)

end A063464

/-!
# A063465: Number k such that omega(k) = omega(k+3), where omega(k) is the number of distinct prime divisors of k.

The programs for A063465, the canonical program `A063465.P9723463034351895648` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063465 has offset 1).

The definition of A063465 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063465.P9723463034351895648

`eq[A001221(n+1), A001221(n+4)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A063465

/-- `eq[A001221(n+1), A001221(n+4)]+1` -/
def P9723463034351895648.Spec : Prop :=
  ∀ n, (P9723463034351895648.a n : ℤ) = A063465 (n + 1)

theorem P9723463034351895648.correct : P9723463034351895648.Spec := by
  intro n
  simp only [A063465, Nat.add_sub_cancel]

end A063465

/-! ## A063465.P10566068639073922476

`eq[A297155(n+2), A297155(n+5)]+2`
-/

namespace A063465.P10566068639073922476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A063465.P10566068639073922476

namespace A063465

/-- `eq[A297155(n+2), A297155(n+5)]+2` -/
def P10566068639073922476.Spec : Prop :=
  ∀ n, (P10566068639073922476.a n : ℤ) = A063465 (n + 1)

end A063465

/-! ## A063465.P11470080530268285990

`eq[A001221(n+3), A001221(A028310(n))]`
-/

namespace A063465.P11470080530268285990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063465.P11470080530268285990

namespace A063465

/-- `eq[A001221(n+3), A001221(A028310(n))]` -/
def P11470080530268285990.Spec : Prop :=
  ∀ n, (P11470080530268285990.a n : ℤ) = A063465 (n + 1)

end A063465

/-! ## A063465.P10186705886897437686

`A020725(eq[A001221(n+1), A001221(n+4)])`
-/

namespace A063465.P10186705886897437686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A063465.P10186705886897437686

namespace A063465

/-- `A020725(eq[A001221(n+1), A001221(n+4)])` -/
def P10186705886897437686.Spec : Prop :=
  ∀ n, P10186705886897437686.a n = A063465 (n + 1)

end A063465

/-! ## A063465.P13508392817114869690

`eq[A001222(∏{p}[n, #]), A001221(n+3)]`
-/

namespace A063465.P13508392817114869690
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f2 n), p)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A063465.P13508392817114869690

namespace A063465

/-- `eq[A001222(∏{p}[n, #]), A001221(n+3)]` -/
def P13508392817114869690.Spec : Prop :=
  ∀ n, (P13508392817114869690.a n : ℤ) = A063465 (n + 1)

end A063465

/-! ## A063465.P7886340750535029048

`eq[A034444(n+1), A034444(n+4)]+1`
-/

namespace A063465.P7886340750535029048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A063465.P7886340750535029048

namespace A063465

/-- `eq[A034444(n+1), A034444(n+4)]+1` -/
def P7886340750535029048.Spec : Prop :=
  ∀ n, (P7886340750535029048.a n : ℤ) = A063465 (n + 1)

end A063465

/-! ## A063465.P10779574833319275783

`eq[A007875(n+2), A007875(n+5)]+2`
-/

namespace A063465.P10779574833319275783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A063465.P10779574833319275783

namespace A063465

/-- `eq[A007875(n+2), A007875(n+5)]+2` -/
def P10779574833319275783.Spec : Prop :=
  ∀ n, (P10779574833319275783.a n : ℤ) = A063465 (n + 1)

end A063465

/-! ## A063465.P1816956492611125085

`eq[A333175(n+2), A333175(n+5)]+2`
-/

namespace A063465.P1816956492611125085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333175 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333175 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A063465.P1816956492611125085

namespace A063465

/-- `eq[A333175(n+2), A333175(n+5)]+2` -/
def P1816956492611125085.Spec : Prop :=
  ∀ n, (P1816956492611125085.a n : ℤ) = A063465 (n + 1)

end A063465

/-!
# A063466: Numbers k such that 2*phi(k) + 8 = sigma(k).

The programs for A063466, the canonical program `A063466.P11095662545612657757` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063466 has offset 1).

The definition of A063466 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 859 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063466.P1628500895720860824

`∩[A015793(n+1), A280862(n+1)]`
-/

namespace A063466.P1628500895720860824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063466.P1628500895720860824

namespace A063466

/-- `∩[A015793(n+1), A280862(n+1)]` -/
def P1628500895720860824.Spec : Prop :=
  ∀ n, (P1628500895720860824.a n : ℤ) = A063466 (n + 1)

end A063466

/-! ## A063466.P8595893017217535673

`∩[A015793(n+1), A296205(n+1)]`
-/

namespace A063466.P8595893017217535673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063466.P8595893017217535673

namespace A063466

/-- `∩[A015793(n+1), A296205(n+1)]` -/
def P8595893017217535673.Spec : Prop :=
  ∀ n, (P8595893017217535673.a n : ℤ) = A063466 (n + 1)

end A063466

/-! ## A063466.P11095662545612657757

`eq[n+9, A324048(n+1)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A063466

/-- `eq[n+9, A324048(n+1)]+1` -/
def P11095662545612657757.Spec : Prop :=
  ∀ n, (P11095662545612657757.a n : ℤ) = A063466 (n + 1)

theorem P11095662545612657757.correct : P11095662545612657757.Spec := by
  intro n
  simp only [A063466, Nat.add_sub_cancel]

end A063466

/-! ## A063466.P11097978311139823746

`A153152(eq[n+9, A324048(n+1)])`
-/

namespace A063466.P11097978311139823746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A063466.P11097978311139823746

namespace A063466

/-- `A153152(eq[n+9, A324048(n+1)])` -/
def P11097978311139823746.Spec : Prop :=
  ∀ n, P11097978311139823746.a n = A063466 (n + 1)

end A063466

/-! ## A063466.P15452852065045655396

`∩[A015793(n+1), A364728(n+1)]`
-/

namespace A063466.P15452852065045655396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063466.P15452852065045655396

namespace A063466

/-- `∩[A015793(n+1), A364728(n+1)]` -/
def P15452852065045655396.Spec : Prop :=
  ∀ n, (P15452852065045655396.a n : ℤ) = A063466 (n + 1)

end A063466

/-! ## A063466.P3535375761818712238

`∩[A015793(n+1), A048242(n+1)]`
-/

namespace A063466.P3535375761818712238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063466.P3535375761818712238

namespace A063466

/-- `∩[A015793(n+1), A048242(n+1)]` -/
def P3535375761818712238.Spec : Prop :=
  ∀ n, (P3535375761818712238.a n : ℤ) = A063466 (n + 1)

end A063466

/-! ## A063466.P7503858160072361430

`∩[A015793(n+1), A283550(n+1)]`
-/

namespace A063466.P7503858160072361430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063466.P7503858160072361430

namespace A063466

/-- `∩[A015793(n+1), A283550(n+1)]` -/
def P7503858160072361430.Spec : Prop :=
  ∀ n, (P7503858160072361430.a n : ℤ) = A063466 (n + 1)

end A063466

/-! ## A063466.P5731723978380929505

`∩[A015793(n+1), A368007(n+1)]`
-/

namespace A063466.P5731723978380929505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063466.P5731723978380929505

namespace A063466

/-- `∩[A015793(n+1), A368007(n+1)]` -/
def P5731723978380929505.Spec : Prop :=
  ∀ n, (P5731723978380929505.a n : ℤ) = A063466 (n + 1)

end A063466

/-!
# A063468: Number of Pythagorean triples in the range [1..n], i.e., the number of integer solutions to x^2 + y^2 = z^2 with 1 <= x,y,z <= n.

The programs for A063468, the canonical program `A063468.P15347473074005438293` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063468 has offset 1).

The definition of A063468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063468.P246662099541475922

`∑[A256452(n+1)-1]`
-/

namespace A063468.P246662099541475922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256452 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063468.P246662099541475922

namespace A063468

/-- `∑[A256452(n+1)-1]` -/
def P246662099541475922.Spec : Prop :=
  ∀ n, P246662099541475922.a n = A063468 (n + 1)

end A063468

/-! ## A063468.P7066510813459254776

`∑[2*A046080(n+1)]`
-/

namespace A063468.P7066510813459254776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063468.P7066510813459254776

namespace A063468

/-- `∑[2*A046080(n+1)]` -/
def P7066510813459254776.Spec : Prop :=
  ∀ n, P7066510813459254776.a n = A063468 (n + 1)

end A063468

/-! ## A063468.P4893328309272203495

`∑[A005843(A046080(n+1))]`
-/

namespace A063468.P4893328309272203495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A046080 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063468.P4893328309272203495

namespace A063468

/-- `∑[A005843(A046080(n+1))]` -/
def P4893328309272203495.Spec : Prop :=
  ∀ n, P4893328309272203495.a n = A063468 (n + 1)

end A063468

/-! ## A063468.P15347473074005438293

`∑[A092147(A000265(n+1))]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A063468

/-- `∑[A092147(A000265(n+1))]` -/
def P15347473074005438293.Spec : Prop :=
  ∀ n, P15347473074005438293.a n = A063468 (n + 1)

theorem P15347473074005438293.correct : P15347473074005438293.Spec := by
  intro n
  simp only [A063468, Nat.add_sub_cancel]

end A063468

/-! ## A063468.P3830945540875901969

`∑[A004442(A256452(n+1))]`
-/

namespace A063468.P3830945540875901969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A256452 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063468.P3830945540875901969

namespace A063468

/-- `∑[A004442(A256452(n+1))]` -/
def P3830945540875901969.Spec : Prop :=
  ∀ n, P3830945540875901969.a n = A063468 (n + 1)

end A063468

/-! ## A063468.P2782716880425079893

`2*(A224921(n+1)+A046080(n+1))`
-/

namespace A063468.P2782716880425079893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A224921 (n + 1) + A046080 (n + 1))

end

end A063468.P2782716880425079893

namespace A063468

/-- `2*(A224921(n+1)+A046080(n+1))` -/
def P2782716880425079893.Spec : Prop :=
  ∀ n, P2782716880425079893.a n = A063468 (n + 1)

end A063468

/-! ## A063468.P16551545027895719007

`2*A224921(n+2)`
-/

namespace A063468.P16551545027895719007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A224921 (n + 2)

end

end A063468.P16551545027895719007

namespace A063468

/-- `2*A224921(n+2)` -/
def P16551545027895719007.Spec : Prop :=
  ∀ n, P16551545027895719007.a n = A063468 (n + 1)

end A063468

/-! ## A063468.P7374724405220736506

`∑[A000265(A046109(n+1))-1]`
-/

namespace A063468.P7374724405220736506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A046109 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063468.P7374724405220736506

namespace A063468

/-- `∑[A000265(A046109(n+1))-1]` -/
def P7374724405220736506.Spec : Prop :=
  ∀ n, P7374724405220736506.a n = A063468 (n + 1)

end A063468

/-! ## A063468.P18410912569008777012

`A046080(n+1)+A224921(n+1)+A224921(n+2)`
-/

namespace A063468.P18410912569008777012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (n + 1) + (A224921 (n + 1) + A224921 (n + 2))

end

end A063468.P18410912569008777012

namespace A063468

/-- `A046080(n+1)+A224921(n+1)+A224921(n+2)` -/
def P18410912569008777012.Spec : Prop :=
  ∀ n, P18410912569008777012.a n = A063468 (n + 1)

end A063468

/-! ## A063468.P1251544485341085173

`A005843(A224921(n+2))`
-/

namespace A063468.P1251544485341085173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A224921 (n + 2)).toNat

end

end A063468.P1251544485341085173

namespace A063468

/-- `A005843(A224921(n+2))` -/
def P1251544485341085173.Spec : Prop :=
  ∀ n, P1251544485341085173.a n = A063468 (n + 1)

end A063468

/-! ## A063468.P8738826032113598029

`∑[A338939(2*(n+1))-1]`
-/

namespace A063468.P8738826032113598029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338939 (2 * (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063468.P8738826032113598029

namespace A063468

/-- `∑[A338939(2*(n+1))-1]` -/
def P8738826032113598029.Spec : Prop :=
  ∀ n, P8738826032113598029.a n = A063468 (n + 1)

end A063468

/-! ## A063468.P13035891577682427910

`∑[2*A328712(2*(n+1))]`
-/

namespace A063468.P13035891577682427910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A328712 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063468.P13035891577682427910

namespace A063468

/-- `∑[2*A328712(2*(n+1))]` -/
def P13035891577682427910.Spec : Prop :=
  ∀ n, P13035891577682427910.a n = A063468 (n + 1)

end A063468

/-! ## A063468.P1299554134479417220

`∑[A001222((2^A046080(n+1))²)]`
-/

namespace A063468.P1299554134479417220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (((2 : ℚ) ^ (A046080 (n + 1) : ℤ)) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063468.P1299554134479417220

namespace A063468

/-- `∑[A001222((2^A046080(n+1))²)]` -/
def P1299554134479417220.Spec : Prop :=
  ∀ n, P1299554134479417220.a n = A063468 (n + 1)

end A063468

/-! ## A063468.P16314785916175149942

`A211636(n+1)-A211637(n+1)`
-/

namespace A063468.P16314785916175149942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211636 (n + 1) - A211637 (n + 1)

end

end A063468.P16314785916175149942

namespace A063468

/-- `A211636(n+1)-A211637(n+1)` -/
def P16314785916175149942.Spec : Prop :=
  ∀ n, P16314785916175149942.a n = A063468 (n + 1)

end A063468

/-! ## A063468.P10133506413055904499

`A211634(n+1)-A211635(n+1)`
-/

namespace A063468.P10133506413055904499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211634 (n + 1) - A211635 (n + 1)

end

end A063468.P10133506413055904499

namespace A063468

/-- `A211634(n+1)-A211635(n+1)` -/
def P10133506413055904499.Spec : Prop :=
  ∀ n, P10133506413055904499.a n = A063468 (n + 1)

end A063468

/-! ## A063468.P2263895993083845168

`∑[A000005(A170818(n+1)²)-1]`
-/

namespace A063468.P2263895993083845168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A170818 (n + 1) ^ 2).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063468.P2263895993083845168

namespace A063468

/-- `∑[A000005(A170818(n+1)²)-1]` -/
def P2263895993083845168.Spec : Prop :=
  ∀ n, P2263895993083845168.a n = A063468 (n + 1)

end A063468

/-! ## A063468.P289438231622625836

`∑[2*A025426((n+1)²)]`
-/

namespace A063468.P289438231622625836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025426 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063468.P289438231622625836

namespace A063468

/-- `∑[2*A025426((n+1)²)]` -/
def P289438231622625836.Spec : Prop :=
  ∀ n, P289438231622625836.a n = A063468 (n + 1)

end A063468

/-! ## A063468.P5407199248560474180

`∑[A063725((n+1)²)]`
-/

namespace A063468.P5407199248560474180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063468.P5407199248560474180

namespace A063468

/-- `∑[A063725((n+1)²)]` -/
def P5407199248560474180.Spec : Prop :=
  ∀ n, P5407199248560474180.a n = A063468 (n + 1)

end A063468

/-! ## A063468.P12070848030022349431

`∑[A002654((n+1)²)-1]`
-/

namespace A063468.P12070848030022349431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 ((n + 1) ^ 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063468.P12070848030022349431

namespace A063468

/-- `∑[A002654((n+1)²)-1]` -/
def P12070848030022349431.Spec : Prop :=
  ∀ n, P12070848030022349431.a n = A063468 (n + 1)

end A063468

/-! ## A063468.P10481564466479722667

`∑[A035154((n+1)²)-1]`
-/

namespace A063468.P10481564466479722667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035154 ((n + 1) ^ 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063468.P10481564466479722667

namespace A063468

/-- `∑[A035154((n+1)²)-1]` -/
def P10481564466479722667.Spec : Prop :=
  ∀ n, P10481564466479722667.a n = A063468 (n + 1)

end A063468

/-!
# A063469: Numbers n such that tau(n)*3 = phi(n).

The programs for A063469, there is no canonical definition to state claims against.
-/

/-! ## A063469.P1262583304025477866

`A378089(A296757(n+1))`
-/

namespace A063469.P1262583304025477866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378089 (A296757 (n + 1)).toNat

end

end A063469.P1262583304025477866

/-! ## A063469.P2908338475103255627

`A378089(A297287(n+1))`
-/

namespace A063469.P2908338475103255627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378089 (A297287 (n + 1)).toNat

end

end A063469.P2908338475103255627

/-! ## A063469.P17435189141810202828

`A378089(A043669(n+2))`
-/

namespace A063469.P17435189141810202828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378089 (A043669 (n + 2)).toNat

end

end A063469.P17435189141810202828

/-! ## A063469.P8846251530075254015

`A378089(A115420(n+2))`
-/

namespace A063469.P8846251530075254015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378089 (A115420 (n + 2)).toNat

end

end A063469.P8846251530075254015

/-!
# A063470: Numbers n such that tau(n)*4 = phi(n).

The programs for A063470, there is no canonical definition to state claims against.
-/

/-! ## A063470.P6294168876144235762

`A378089(A034067(n+1))`
-/

namespace A063470.P6294168876144235762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378089 (A034067 (n + 1)).toNat

end

end A063470.P6294168876144235762

/-! ## A063470.P8039696369942046579

`eq[A145154(n), A384710(n)]`
-/

namespace A063470.P8039696369942046579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063470.P8039696369942046579

/-! ## A063470.P1804378586318649373

`eq[A000010(n+1), A145154(n+1)]+1`
-/

namespace A063470.P1804378586318649373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A063470.P1804378586318649373

/-! ## A063470.P13637144746894565717

`eq[A062011(n+1), A092502(n+1)]+1`
-/

namespace A063470.P13637144746894565717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092502 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A063470.P13637144746894565717

/-! ## A063470.P6338923319942688839

`eq[A000010(n+1)/4, A000005(n+1)]+1`
-/

namespace A063470.P6338923319942688839
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A063470.P6338923319942688839

/-!
# A063472: Primes of the form 666*k - 1.

The programs for A063472, the canonical program `A063472.P15172457332249542488` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063472 has offset 1).

The definition of A063472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 356 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063472.P15172457332249542488

`p?[9*37*n-1]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063472

/-- `p?[9*37*n-1]` -/
def P15172457332249542488.Spec : Prop :=
  ∀ n, P15172457332249542488.a n = A063472 (n + 1)

theorem P15172457332249542488.correct : P15172457332249542488.Spec := by
  intro n
  simp only [A063472, Nat.add_sub_cancel]

end A063472

/-! ## A063472.P1868730400881019318

`∩[A061242(n+1), A142145(n+1)]`
-/

namespace A063472.P1868730400881019318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063472.P1868730400881019318

namespace A063472

/-- `∩[A061242(n+1), A142145(n+1)]` -/
def P1868730400881019318.Spec : Prop :=
  ∀ n, (P1868730400881019318.a n : ℤ) = A063472 (n + 1)

end A063472

/-! ## A063472.P9239527281516226746

`∩[9*37*n-1, A000040(n+1)]`
-/

namespace A063472.P9239527281516226746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * (37 * n) : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063472.P9239527281516226746

namespace A063472

/-- `∩[9*37*n-1, A000040(n+1)]` -/
def P9239527281516226746.Spec : Prop :=
  ∀ n, (P9239527281516226746.a n : ℤ) = A063472 (n + 1)

end A063472

/-!
# A063473: a(n) = M(2*n-1), where M(n) is Mertens's function (A002321): Sum_{k=1..n} mu(k), where mu = Moebius function (A008683).

The programs for A063473, the canonical program `A063473.P11387380042524476190` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063473 has offset 1).

The definition of A063473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063473.P11387380042524476190

`A181587(Δ[n²])`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A063473

/-- `A181587(Δ[n²])` -/
def P11387380042524476190.Spec : Prop :=
  ∀ n, P11387380042524476190.a n = A063473 (n + 1)

theorem P11387380042524476190.correct : P11387380042524476190.Spec := by
  intro n
  simp only [A063473, Nat.add_sub_cancel]

end A063473

/-! ## A063473.P14503034666287693812

`A008683(2*n+1)+A008683(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A063473.P14503034666287693812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008683 (2 * n + 1) + (A008683 (2 * n) + a (n - 1))

end

end A063473.P14503034666287693812

namespace A063473

/-- `A008683(2*n+1)+A008683(2*n)+a(n-1)` -/
def P14503034666287693812.Spec : Prop :=
  ∀ n, P14503034666287693812.a n = A063473 (n + 1)

end A063473

/-! ## A063473.P10513203381402455332

`A002321(Δ[n²])`
-/

namespace A063473.P10513203381402455332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A063473.P10513203381402455332

namespace A063473

/-- `A002321(Δ[n²])` -/
def P10513203381402455332.Spec : Prop :=
  ∀ n, P10513203381402455332.a n = A063473 (n + 1)

end A063473

/-! ## A063473.P660230677537205833

`or(char[1], A002321(2*n+1))`
-/

namespace A063473.P660230677537205833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A002321 (2 * n + 1))

end

end A063473.P660230677537205833

namespace A063473

/-- `or(char[1], A002321(2*n+1))` -/
def P660230677537205833.Spec : Prop :=
  ∀ n, P660230677537205833.a n = A063473 (n + 1)

end A063473

/-! ## A063473.P550524254745172849

`A002321(comp[2*n])%(n+2)`
-/

namespace A063473.P550524254745172849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002321 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (n + 2 : ℤ)

end

end A063473.P550524254745172849

namespace A063473

/-- `A002321(comp[2*n])%(n+2)` -/
def P550524254745172849.Spec : Prop :=
  ∀ n, P550524254745172849.a n = A063473 (n + 1)

end A063473

/-! ## A063473.P2673563992276717388

`A143443(2*n+1)/Δ[n²]`
-/

namespace A063473.P2673563992276717388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143443 (2 * n + 1) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A063473.P2673563992276717388

namespace A063473

/-- `A143443(2*n+1)/Δ[n²]` -/
def P2673563992276717388.Spec : Prop :=
  ∀ n, P2673563992276717388.a n = (A063473 (n + 1) : ℚ)

end A063473

/-! ## A063473.P3902563574667545858

`A002321(2*n+1)+A000007(n+1)`
-/

namespace A063473.P3902563574667545858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (2 * n + 1) + A000007 (n + 1)

end

end A063473.P3902563574667545858

namespace A063473

/-- `A002321(2*n+1)+A000007(n+1)` -/
def P3902563574667545858.Spec : Prop :=
  ∀ n, P3902563574667545858.a n = A063473 (n + 1)

end A063473

/-! ## A063473.P1741784528172065978

`A063524(n+2)+A002321(2*n+1)`
-/

namespace A063473.P1741784528172065978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 2) + A002321 (2 * n + 1)

end

end A063473.P1741784528172065978

namespace A063473

/-- `A063524(n+2)+A002321(2*n+1)` -/
def P1741784528172065978.Spec : Prop :=
  ∀ n, P1741784528172065978.a n = A063473 (n + 1)

end A063473

/-! ## A063473.P13663136413784793047

`A002321(2*n+1)*A057427(n+1)`
-/

namespace A063473.P13663136413784793047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (2 * n + 1) * A057427 (n + 1)

end

end A063473.P13663136413784793047

namespace A063473

/-- `A002321(2*n+1)*A057427(n+1)` -/
def P13663136413784793047.Spec : Prop :=
  ∀ n, P13663136413784793047.a n = A063473 (n + 1)

end A063473

/-! ## A063473.P3451308483735887079

`A002321(2*n+1)+A000035(2*n)`
-/

namespace A063473.P3451308483735887079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (2 * n + 1) + A000035 (2 * n)

end

end A063473.P3451308483735887079

namespace A063473

/-- `A002321(2*n+1)+A000035(2*n)` -/
def P3451308483735887079.Spec : Prop :=
  ∀ n, P3451308483735887079.a n = A063473 (n + 1)

end A063473

/-! ## A063473.P10888288014128480379

`A008437(2*n)+A002321(2*n+1)`
-/

namespace A063473.P10888288014128480379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008437 (2 * n) + A002321 (2 * n + 1)

end

end A063473.P10888288014128480379

namespace A063473

/-- `A008437(2*n)+A002321(2*n+1)` -/
def P10888288014128480379.Spec : Prop :=
  ∀ n, P10888288014128480379.a n = A063473 (n + 1)

end A063473

/-! ## A063473.P3047713540677352906

`A002321(2*n+1)*A157928(n+2)`
-/

namespace A063473.P3047713540677352906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (2 * n + 1) * A157928 (n + 2)

end

end A063473.P3047713540677352906

namespace A063473

/-- `A002321(2*n+1)*A157928(n+2)` -/
def P3047713540677352906.Spec : Prop :=
  ∀ n, P3047713540677352906.a n = A063473 (n + 1)

end A063473

/-! ## A063473.P9158410651072670286

`A002321(2*n+1)*A053381(2*n)`
-/

namespace A063473.P9158410651072670286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (2 * n + 1) * A053381 (2 * n)

end

end A063473.P9158410651072670286

namespace A063473

/-- `A002321(2*n+1)*A053381(2*n)` -/
def P9158410651072670286.Spec : Prop :=
  ∀ n, P9158410651072670286.a n = A063473 (n + 1)

end A063473

/-! ## A063473.P5274505170286616267

`A002321(2*n+1)*A059841(2*n)`
-/

namespace A063473.P5274505170286616267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (2 * n + 1) * A059841 (2 * n)

end

end A063473.P5274505170286616267

namespace A063473

/-- `A002321(2*n+1)*A059841(2*n)` -/
def P5274505170286616267.Spec : Prop :=
  ∀ n, P5274505170286616267.a n = A063473 (n + 1)

end A063473

/-! ## A063473.P14513819836707855454

`A002321(2*n+1)*A133186(2*n)`
-/

namespace A063473.P14513819836707855454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (2 * n + 1) * A133186 (2 * n)

end

end A063473.P14513819836707855454

namespace A063473

/-- `A002321(2*n+1)*A133186(2*n)` -/
def P14513819836707855454.Spec : Prop :=
  ∀ n, P14513819836707855454.a n = A063473 (n + 1)

end A063473

/-! ## A063473.P2727164569940056764

`A002321(2*n+1)*A266591(2*n)`
-/

namespace A063473.P2727164569940056764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (2 * n + 1) * A266591 (2 * n)

end

end A063473.P2727164569940056764

namespace A063473

/-- `A002321(2*n+1)*A266591(2*n)` -/
def P2727164569940056764.Spec : Prop :=
  ∀ n, P2727164569940056764.a n = A063473 (n + 1)

end A063473

/-! ## A063473.P14828117979851060228

`A056594(2*n)²*A002321(2*n+1)`
-/

namespace A063473.P14828117979851060228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) ^ 2 * A002321 (2 * n + 1)

end

end A063473.P14828117979851060228

namespace A063473

/-- `A056594(2*n)²*A002321(2*n+1)` -/
def P14828117979851060228.Spec : Prop :=
  ∀ n, P14828117979851060228.a n = A063473 (n + 1)

end A063473

/-! ## A063473.P967835483252853770

`A056594(2*n+1)+A002321(2*n+1)`
-/

namespace A063473.P967835483252853770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n + 1) + A002321 (2 * n + 1)

end

end A063473.P967835483252853770

namespace A063473

/-- `A056594(2*n+1)+A002321(2*n+1)` -/
def P967835483252853770.Spec : Prop :=
  ∀ n, P967835483252853770.a n = A063473 (n + 1)

end A063473

/-! ## A063473.P6427403003868615860

`A133944(2*n+1)+A002321(2*n+1)`
-/

namespace A063473.P6427403003868615860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133944 (2 * n + 1) + A002321 (2 * n + 1)

end

end A063473.P6427403003868615860

namespace A063473

/-- `A133944(2*n+1)+A002321(2*n+1)` -/
def P6427403003868615860.Spec : Prop :=
  ∀ n, P6427403003868615860.a n = A063473 (n + 1)

end A063473

/-! ## A063473.P6032910717509400098

`A002321(2*(n+1))-A008683(2*(n+1))`
-/

namespace A063473.P6032910717509400098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (2 * (n + 1)) - A008683 (2 * (n + 1))

end

end A063473.P6032910717509400098

namespace A063473

/-- `A002321(2*(n+1))-A008683(2*(n+1))` -/
def P6032910717509400098.Spec : Prop :=
  ∀ n, P6032910717509400098.a n = A063473 (n + 1)

end A063473

/-!
# A063474: Half totient of 2^n+1.

The programs for A063474, the canonical program `A063474.P1256532106464464767` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063474 has offset 1).

The definition of A063474 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023022, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A063474.P1256532106464464767

`A023022(A000051(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A063474

/-- `A023022(A000051(n+1))` -/
def P1256532106464464767.Spec : Prop :=
  ∀ n, P1256532106464464767.a n = A063474 (n + 1)

theorem P1256532106464464767.correct : P1256532106464464767.Spec := by
  intro n
  simp only [A063474, Nat.add_sub_cancel]

end A063474

/-! ## A063474.P185314369021761438

`(n+1)*A069925(n+1)`
-/

namespace A063474.P185314369021761438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A069925 (n + 1)

end

end A063474.P185314369021761438

namespace A063474

/-- `(n+1)*A069925(n+1)` -/
def P185314369021761438.Spec : Prop :=
  ∀ n, P185314369021761438.a n = A063474 (n + 1)

end A063474

/-! ## A063474.P7903833019885389035

`A053285(n+1)/2`
-/

namespace A063474.P7903833019885389035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053285 (n + 1) : ℚ) / 2

end

end A063474.P7903833019885389035

namespace A063474

/-- `A053285(n+1)/2` -/
def P7903833019885389035.Spec : Prop :=
  ∀ n, P7903833019885389035.a n = (A063474 (n + 1) : ℚ)

end A063474

/-! ## A063474.P16443077096974778725

`Δ[∑[A053285(n)]/2]`
-/

namespace A063474.P16443077096974778725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053285 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063474.P16443077096974778725

namespace A063474

/-- `Δ[∑[A053285(n)]/2]` -/
def P16443077096974778725.Spec : Prop :=
  ∀ n, P16443077096974778725.a n = (A063474 (n + 1) : ℚ)

end A063474

/-! ## A063474.P13085816216537887724

`A324104(A100484(n+1))/2`
-/

namespace A063474.P13085816216537887724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324104 (A100484 (n + 1)).toNat : ℚ) / 2

end

end A063474.P13085816216537887724

namespace A063474

/-- `A324104(A100484(n+1))/2` -/
def P13085816216537887724.Spec : Prop :=
  ∀ n, P13085816216537887724.a n = (A063474 (n + 1) : ℚ)

end A063474

/-! ## A063474.P3544645951536987526

`A324104(A001747(n+2))/2`
-/

namespace A063474.P3544645951536987526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324104 (A001747 (n + 2)).toNat : ℚ) / 2

end

end A063474.P3544645951536987526

namespace A063474

/-- `A324104(A001747(n+2))/2` -/
def P3544645951536987526.Spec : Prop :=
  ∀ n, P3544645951536987526.a n = (A063474 (n + 1) : ℚ)

end A063474

/-! ## A063474.P2632063142668780051

`A324104(2*A000040(n+1))/2`
-/

namespace A063474.P2632063142668780051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324104 (2 * A000040 (n + 1)).toNat : ℚ) / 2

end

end A063474.P2632063142668780051

namespace A063474

/-- `A324104(2*A000040(n+1))/2` -/
def P2632063142668780051.Spec : Prop :=
  ∀ n, P2632063142668780051.a n = (A063474 (n + 1) : ℚ)

end A063474

/-! ## A063474.P12934636800243701059

`A027742(n+1)/A011260(n+1)`
-/

namespace A063474.P12934636800243701059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027742 (n + 1) : ℚ) / (A011260 (n + 1) : ℚ)

end

end A063474.P12934636800243701059

namespace A063474

/-- `A027742(n+1)/A011260(n+1)` -/
def P12934636800243701059.Spec : Prop :=
  ∀ n, P12934636800243701059.a n = (A063474 (n + 1) : ℚ)

end A063474

/-! ## A063474.P2130308452733266070

`A000020(2*(n+1))/A011260(n+1)`
-/

namespace A063474.P2130308452733266070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000020 (2 * (n + 1)) : ℚ) / (A011260 (n + 1) : ℚ)

end

end A063474.P2130308452733266070

namespace A063474

/-- `A000020(2*(n+1))/A011260(n+1)` -/
def P2130308452733266070.Spec : Prop :=
  ∀ n, P2130308452733266070.a n = (A063474 (n + 1) : ℚ)

end A063474

/-! ## A063474.P17781678282243541058

`A011260(2*(n+1))/A011260(n+1)`
-/

namespace A063474.P17781678282243541058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011260 (2 * (n + 1)) : ℚ) / (A011260 (n + 1) : ℚ)

end

end A063474.P17781678282243541058

namespace A063474

/-- `A011260(2*(n+1))/A011260(n+1)` -/
def P17781678282243541058.Spec : Prop :=
  ∀ n, P17781678282243541058.a n = (A063474 (n + 1) : ℚ)

end A063474

/-! ## A063474.P5295216551317066644

`A000020(2*(n+1))/A000020(A254667(n+1))`
-/

namespace A063474.P5295216551317066644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000020 (2 * (n + 1)) : ℚ) / (A000020 (A254667 (n + 1)).toNat : ℚ)

end

end A063474.P5295216551317066644

namespace A063474

/-- `A000020(2*(n+1))/A000020(A254667(n+1))` -/
def P5295216551317066644.Spec : Prop :=
  ∀ n, P5295216551317066644.a n = (A063474 (n + 1) : ℚ)

end A063474

/-! ## A063474.P1650629723069138193

`A000020(2*(n+1))/A000020(A233583(n+2))`
-/

namespace A063474.P1650629723069138193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000020 (2 * (n + 1)) : ℚ) / (A000020 (A233583 (n + 2)).toNat : ℚ)

end

end A063474.P1650629723069138193

namespace A063474

/-- `A000020(2*(n+1))/A000020(A233583(n+2))` -/
def P1650629723069138193.Spec : Prop :=
  ∀ n, P1650629723069138193.a n = (A063474 (n + 1) : ℚ)

end A063474

/-! ## A063474.P11284209139491849457

`A027695(n+1)/(A011260(n+1)+A011260(n+1))`
-/

namespace A063474.P11284209139491849457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027695 (n + 1) : ℚ) / (A011260 (n + 1) + A011260 (n + 1) : ℚ)

end

end A063474.P11284209139491849457

namespace A063474

/-- `A027695(n+1)/(A011260(n+1)+A011260(n+1))` -/
def P11284209139491849457.Spec : Prop :=
  ∀ n, P11284209139491849457.a n = (A063474 (n + 1) : ℚ)

end A063474

/-! ## A063474.P18184891820371236730

`A056742(2*(n+1))/A053287(n+1)`
-/

namespace A063474.P18184891820371236730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056742 (2 * (n + 1)) : ℚ) / (A053287 (n + 1) : ℚ)

end

end A063474.P18184891820371236730

namespace A063474

/-- `A056742(2*(n+1))/A053287(n+1)` -/
def P18184891820371236730.Spec : Prop :=
  ∀ n, P18184891820371236730.a n = (A063474 (n + 1) : ℚ)

end A063474

/-!
# A063475: Sum_{d | H(n)} d^2, where H(n) is the Half-Totient function (A023022).

The programs for A063475, the canonical program `A063475.P17155963557761105303` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063475 has offset 3).

The definition of A063475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063475.P16234908077123621046

`∑{d}[A000010(n+3)/2, #²]`
-/

namespace A063475.P16234908077123621046
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 3) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d ^ 2

end

end A063475.P16234908077123621046

namespace A063475

/-- `∑{d}[A000010(n+3)/2, #²]` -/
def P16234908077123621046.Spec : Prop :=
  ∀ n, (P16234908077123621046.a n : ℤ) = A063475 (n + 3)

end A063475

/-! ## A063475.P17155963557761105303

`A001157(A055684(n+3)+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A063475

/-- `A001157(A055684(n+3)+1)` -/
def P17155963557761105303.Spec : Prop :=
  ∀ n, P17155963557761105303.a n = A063475 (n + 3)

theorem P17155963557761105303.correct : P17155963557761105303.Spec := by
  intro n
  simp only [A063475, Nat.add_sub_cancel]

end A063475

/-! ## A063475.P10793553393797950546

`A001157(A000010(n+3)/2)`
-/

namespace A063475.P10793553393797950546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (SequenceMachineLib.roundAway ((A000010 (n + 3) : ℚ) / 2)).toNat

end

end A063475.P10793553393797950546

namespace A063475

/-- `A001157(A000010(n+3)/2)` -/
def P10793553393797950546.Spec : Prop :=
  ∀ n, P10793553393797950546.a n = A063475 (n + 3)

end A063475

/-! ## A063475.P11313705093045832515

`∑{d}[A023022(n+3), #²]`
-/

namespace A063475.P11313705093045832515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A063475.P11313705093045832515

namespace A063475

/-- `∑{d}[A023022(n+3), #²]` -/
def P11313705093045832515.Spec : Prop :=
  ∀ n, (P11313705093045832515.a n : ℤ) = A063475 (n + 3)

end A063475

/-! ## A063475.P11491718422952715077

`∑{d}[Δ[A046657(n+2)], #²]`
-/

namespace A063475.P11491718422952715077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046657 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A063475.P11491718422952715077

namespace A063475

/-- `∑{d}[Δ[A046657(n+2)], #²]` -/
def P11491718422952715077.Spec : Prop :=
  ∀ n, (P11491718422952715077.a n : ℤ) = A063475 (n + 3)

end A063475

/-! ## A063475.P7637314426313937688

`A001157(A023022(n+3))`
-/

namespace A063475.P7637314426313937688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A023022 (n + 3)).toNat

end

end A063475.P7637314426313937688

namespace A063475

/-- `A001157(A023022(n+3))` -/
def P7637314426313937688.Spec : Prop :=
  ∀ n, P7637314426313937688.a n = A063475 (n + 3)

end A063475

/-! ## A063475.P9211588951410452391

`A001157(Δ[A046657(n+2)])`
-/

namespace A063475.P9211588951410452391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046657 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (f1 (n + 1) - f1 n).toNat

end

end A063475.P9211588951410452391

namespace A063475

/-- `A001157(Δ[A046657(n+2)])` -/
def P9211588951410452391.Spec : Prop :=
  ∀ n, P9211588951410452391.a n = A063475 (n + 3)

end A063475

/-! ## A063475.P15396556922206668287

`∑{d}[Δ[A049806(n+2)], #²]`
-/

namespace A063475.P15396556922206668287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049806 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A063475.P15396556922206668287

namespace A063475

/-- `∑{d}[Δ[A049806(n+2)], #²]` -/
def P15396556922206668287.Spec : Prop :=
  ∀ n, (P15396556922206668287.a n : ℤ) = A063475 (n + 3)

end A063475

/-! ## A063475.P5480193425231113699

`∑{d}[Δ[A015614(n+2)/2], #²]`
-/

namespace A063475.P5480193425231113699
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015614 (n + 2) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d ^ 2

end

end A063475.P5480193425231113699

namespace A063475

/-- `∑{d}[Δ[A015614(n+2)/2], #²]` -/
def P5480193425231113699.Spec : Prop :=
  ∀ n, (P5480193425231113699.a n : ℤ) = A063475 (n + 3)

end A063475

/-! ## A063475.P8211918687720038142

`A035316(A245497(n+3)/2)`
-/

namespace A063475.P8211918687720038142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (SequenceMachineLib.roundAway ((A245497 (n + 3) : ℚ) / 2)).toNat

end

end A063475.P8211918687720038142

namespace A063475

/-- `A035316(A245497(n+3)/2)` -/
def P8211918687720038142.Spec : Prop :=
  ∀ n, P8211918687720038142.a n = A063475 (n + 3)

end A063475

/-! ## A063475.P5562729285081856374

`A035316((A000010(n+3)/2)²)`
-/

namespace A063475.P5562729285081856374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (SequenceMachineLib.roundAway (((A000010 (n + 3) : ℚ) / 2) ^ 2)).toNat

end

end A063475.P5562729285081856374

namespace A063475

/-- `A035316((A000010(n+3)/2)²)` -/
def P5562729285081856374.Spec : Prop :=
  ∀ n, P5562729285081856374.a n = A063475 (n + 3)

end A063475

/-! ## A063475.P12622216771427910204

`A076752((A000010(n+3)/2)²)`
-/

namespace A063475.P12622216771427910204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076752 (SequenceMachineLib.roundAway (((A000010 (n + 3) : ℚ) / 2) ^ 2)).toNat

end

end A063475.P12622216771427910204

namespace A063475

/-- `A076752((A000010(n+3)/2)²)` -/
def P12622216771427910204.Spec : Prop :=
  ∀ n, P12622216771427910204.a n = A063475 (n + 3)

end A063475

/-! ## A063475.P15550318426648938453

`A293235(A245497(n+3))`
-/

namespace A063475.P15550318426648938453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293235 (A245497 (n + 3)).toNat

end

end A063475.P15550318426648938453

namespace A063475

/-- `A293235(A245497(n+3))` -/
def P15550318426648938453.Spec : Prop :=
  ∀ n, P15550318426648938453.a n = A063475 (n + 3)

end A063475

/-! ## A063475.P11083087059776595296

`A293235(A000010(n+3)²/2)`
-/

namespace A063475.P11083087059776595296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293235 (SequenceMachineLib.roundAway ((A000010 (n + 3) ^ 2 : ℚ) / 2)).toNat

end

end A063475.P11083087059776595296

namespace A063475

/-- `A293235(A000010(n+3)²/2)` -/
def P11083087059776595296.Spec : Prop :=
  ∀ n, P11083087059776595296.a n = A063475 (n + 3)

end A063475

/-!
# A063476: Sum_{d |C(n)} d^2, where C(n) is the Cototient function n - phi(n) (A051953).

The programs for A063476, the canonical program `A063476.P8277533662658363674` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063476 has offset 1).

The definition of A063476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063476.P8277533662658363674

`∑{d}[1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n, #²]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063476

/-- `∑{d}[1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n, #²]` -/
def P8277533662658363674.Spec : Prop :=
  ∀ n, (P8277533662658363674.a n : ℤ) = A063476 (n + 1)

theorem P8277533662658363674.correct : P8277533662658363674.Spec := by
  intro n
  simp only [A063476, Nat.add_sub_cancel]

end A063476

/-! ## A063476.P11104982533647602568

`∑{d}[A051953(n+1), #²]`
-/

namespace A063476.P11104982533647602568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A063476.P11104982533647602568

namespace A063476

/-- `∑{d}[A051953(n+1), #²]` -/
def P11104982533647602568.Spec : Prop :=
  ∀ n, (P11104982533647602568.a n : ℤ) = A063476 (n + 1)

end A063476

/-! ## A063476.P16937582653474511028

`∑{d}[A219428(n+1)+1, #²]`
-/

namespace A063476.P16937582653474511028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A063476.P16937582653474511028

namespace A063476

/-- `∑{d}[A219428(n+1)+1, #²]` -/
def P16937582653474511028.Spec : Prop :=
  ∀ n, (P16937582653474511028.a n : ℤ) = A063476 (n + 1)

end A063476

/-! ## A063476.P11705093463266932097

`∑{d}[A109606(n+1)-n, #²]`
-/

namespace A063476.P11705093463266932097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A063476.P11705093463266932097

namespace A063476

/-- `∑{d}[A109606(n+1)-n, #²]` -/
def P11705093463266932097.Spec : Prop :=
  ∀ n, (P11705093463266932097.a n : ℤ) = A063476 (n + 1)

end A063476

/-! ## A063476.P3029414279305227144

`∑{d}[n+1-A000010(n+1), #²]`
-/

namespace A063476.P3029414279305227144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A063476.P3029414279305227144

namespace A063476

/-- `∑{d}[n+1-A000010(n+1), #²]` -/
def P3029414279305227144.Spec : Prop :=
  ∀ n, (P3029414279305227144.a n : ℤ) = A063476 (n + 1)

end A063476

/-! ## A063476.P13952348061154580361

`∑{d}[n+1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], A000290(#)]`
-/

namespace A063476.P13952348061154580361
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000290 d

end

end A063476.P13952348061154580361

namespace A063476

/-- `∑{d}[n+1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], A000290(#)]` -/
def P13952348061154580361.Spec : Prop :=
  ∀ n, P13952348061154580361.a n = A063476 (n + 1)

end A063476

/-! ## A063476.P16501096225708943563

`∑{d}[A001065(n+1)-A051709(n+1), #²]`
-/

namespace A063476.P16501096225708943563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A051709 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A063476.P16501096225708943563

namespace A063476

/-- `∑{d}[A001065(n+1)-A051709(n+1), #²]` -/
def P16501096225708943563.Spec : Prop :=
  ∀ n, (P16501096225708943563.a n : ℤ) = A063476 (n + 1)

end A063476

/-!
# A063477: a(n) is the sum of the divisors of Fibonacci(n) (A000045).

The programs for A063477, the canonical program `A063477.P7827917804109814506` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063477 has offset 1).

The definition of A063477 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063477.P7827917804109814506

`A000203(A000045(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A063477

/-- `A000203(A000045(n+1))` -/
def P7827917804109814506.Spec : Prop :=
  ∀ n, P7827917804109814506.a n = A063477 (n + 1)

theorem P7827917804109814506.correct : P7827917804109814506.Spec := by
  intro n
  simp only [A063477, Nat.add_sub_cancel]

end A063477

/-! ## A063477.P4826262338579094304

`A074283(n+1)+∑[A212804(n)]`
-/

namespace A063477.P4826262338579094304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074283 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063477.P4826262338579094304

namespace A063477

/-- `A074283(n+1)+∑[A212804(n)]` -/
def P4826262338579094304.Spec : Prop :=
  ∀ n, P4826262338579094304.a n = A063477 (n + 1)

end A063477

/-! ## A063477.P12651733412332337435

`A074283(n+1)+A000045(n+1)`
-/

namespace A063477.P12651733412332337435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074283 (n + 1) + A000045 (n + 1)

end

end A063477.P12651733412332337435

namespace A063477

/-- `A074283(n+1)+A000045(n+1)` -/
def P12651733412332337435.Spec : Prop :=
  ∀ n, P12651733412332337435.a n = A063477 (n + 1)

end A063477

/-! ## A063477.P4418525956687655834

`A193294(n+1)+A193293(n+1)`
-/

namespace A063477.P4418525956687655834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193294 (n + 1) + A193293 (n + 1)

end

end A063477.P4418525956687655834

namespace A063477

/-- `A193294(n+1)+A193293(n+1)` -/
def P4418525956687655834.Spec : Prop :=
  ∀ n, P4418525956687655834.a n = A063477 (n + 1)

end A063477

/-! ## A063477.P12401158057026541946

`A212804(n+2)+A074283(n+1)`
-/

namespace A063477.P12401158057026541946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) + A074283 (n + 1)

end

end A063477.P12401158057026541946

namespace A063477

/-- `A212804(n+2)+A074283(n+1)` -/
def P12401158057026541946.Spec : Prop :=
  ∀ n, P12401158057026541946.a n = A063477 (n + 1)

end A063477

/-! ## A063477.P13668298776135642865

`A000071(n+1)+A074283(n+1)+1`
-/

namespace A063477.P13668298776135642865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (A074283 (n + 1) + 1)

end

end A063477.P13668298776135642865

namespace A063477

/-- `A000071(n+1)+A074283(n+1)+1` -/
def P13668298776135642865.Spec : Prop :=
  ∀ n, P13668298776135642865.a n = A063477 (n + 1)

end A063477

/-! ## A063477.P4407360398394754577

`(A146076(A060865(n+1))+1)*A193293(n+1)`
-/

namespace A063477.P4407360398394754577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A146076 (A060865 (n + 1)).toNat + 1) * A193293 (n + 1)

end

end A063477.P4407360398394754577

namespace A063477

/-- `(A146076(A060865(n+1))+1)*A193293(n+1)` -/
def P4407360398394754577.Spec : Prop :=
  ∀ n, P4407360398394754577.a n = A063477 (n + 1)

end A063477

/-! ## A063477.P14887910841943267487

`A000045(n+1)+A152990(n+1)+A152774(n+1)`
-/

namespace A063477.P14887910841943267487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A152990 (n + 1) + A152774 (n + 1))

end

end A063477.P14887910841943267487

namespace A063477

/-- `A000045(n+1)+A152990(n+1)+A152774(n+1)` -/
def P14887910841943267487.Spec : Prop :=
  ∀ n, P14887910841943267487.a n = A063477 (n + 1)

end A063477

/-! ## A063477.P10729576738741034232

`A074283(n+1)+A062114(n+1)-A074331(n)`
-/

namespace A063477.P10729576738741034232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074283 (n + 1) + (A062114 (n + 1) - A074331 n)

end

end A063477.P10729576738741034232

namespace A063477

/-- `A074283(n+1)+A062114(n+1)-A074331(n)` -/
def P10729576738741034232.Spec : Prop :=
  ∀ n, P10729576738741034232.a n = A063477 (n + 1)

end A063477

/-! ## A063477.P12126453226116770319

`A074283(n+1)+A058071(A000096(n))`
-/

namespace A063477.P12126453226116770319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074283 (n + 1) + A058071 (A000096 n).toNat

end

end A063477.P12126453226116770319

namespace A063477

/-- `A074283(n+1)+A058071(A000096(n))` -/
def P12126453226116770319.Spec : Prop :=
  ∀ n, P12126453226116770319.a n = A063477 (n + 1)

end A063477

/-!
# A063478: a(n) = Sum_{d|Fibonacci(n)} d^2.

The programs for A063478, the canonical program `A063478.P17431467518286176009` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063478 has offset 1).

The definition of A063478 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A063478.P17431467518286176009

`A001157(A000045(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A063478

/-- `A001157(A000045(n+1))` -/
def P17431467518286176009.Spec : Prop :=
  ∀ n, P17431467518286176009.a n = A063478 (n + 1)

theorem P17431467518286176009.correct : P17431467518286176009.Spec := by
  intro n
  simp only [A063478, Nat.add_sub_cancel]

end A063478

/-! ## A063478.P16616075475972997195

`∑{d}[round(ϕ*a(n-1)), #²]` with `a(0)=1, a(1)=1`
-/

namespace A063478.P16616075475972997195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A063478.P16616075475972997195

namespace A063478

/-- `∑{d}[round(ϕ*a(n-1)), #²]` -/
def P16616075475972997195.Spec : Prop :=
  ∀ n, (P16616075475972997195.a n : ℤ) = A063478 (n + 1)

end A063478

/-! ## A063478.P11891093945498605014

`∑{d}[a(n-1)+a(n-2), #²]` with `a(0)=1, a(1)=1`
-/

namespace A063478.P11891093945498605014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ 2

end

end A063478.P11891093945498605014

namespace A063478

/-- `∑{d}[a(n-1)+a(n-2), #²]` -/
def P11891093945498605014.Spec : Prop :=
  ∀ n, (P11891093945498605014.a n : ℤ) = A063478 (n + 1)

end A063478

/-! ## A063478.P10477943969643503079

`∑{d}[a(n-1)-floor(-a(n-2)), #²]` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A063478.P10477943969643503079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) - (-f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A063478.P10477943969643503079

namespace A063478

/-- `∑{d}[a(n-1)-floor(-a(n-2)), #²]` -/
def P10477943969643503079.Spec : Prop :=
  ∀ n, (P10477943969643503079.a n : ℤ) = A063478 (n + 1)

end A063478

/-! ## A063478.P12742603352230320665

`∑{d}[1-floor(1-a(n-1)-a(n-2)), #²]` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A063478.P12742603352230320665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  1 - (1 - f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A063478.P12742603352230320665

namespace A063478

/-- `∑{d}[1-floor(1-a(n-1)-a(n-2)), #²]` -/
def P12742603352230320665.Spec : Prop :=
  ∀ n, (P12742603352230320665.a n : ℤ) = A063478 (n + 1)

end A063478

/-!
# A063479: Numbers k such that omega(k+1) = 2*omega(k), where omega is the number of distinct prime factors.

The programs for A063479, the canonical program `A063479.P3402868684958619055` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063479 has offset 1).

The definition of A063479 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 769 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063479.P5207087192624500270

`eq[A001221(n+2), A278222(A292586(n+1))]+1`
-/

namespace A063479.P5207087192624500270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A292586 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A063479.P5207087192624500270

namespace A063479

/-- `eq[A001221(n+2), A278222(A292586(n+1))]+1` -/
def P5207087192624500270.Spec : Prop :=
  ∀ n, (P5207087192624500270.a n : ℤ) = A063479 (n + 1)

end A063479

/-! ## A063479.P3402868684958619055

`eq[A034444(n+1)², A034444(n+2)]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A063479

/-- `eq[A034444(n+1)², A034444(n+2)]+1` -/
def P3402868684958619055.Spec : Prop :=
  ∀ n, (P3402868684958619055.a n : ℤ) = A063479 (n + 1)

theorem P3402868684958619055.correct : P3402868684958619055.Spec := by
  intro n
  simp only [A063479, Nat.add_sub_cancel]

end A063479

/-! ## A063479.P17498406086341443924

`eq[A001221(n+1), Δ[A001221(n+1)]]+1`
-/

namespace A063479.P17498406086341443924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A063479.P17498406086341443924

namespace A063479

/-- `eq[A001221(n+1), Δ[A001221(n+1)]]+1` -/
def P17498406086341443924.Spec : Prop :=
  ∀ n, (P17498406086341443924.a n : ℤ) = A063479 (n + 1)

end A063479

/-! ## A063479.P4997653794115589946

`eq[A001221(n+1), A034444(A036987(n)+n)]`
-/

namespace A063479.P4997653794115589946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A036987 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063479.P4997653794115589946

namespace A063479

/-- `eq[A001221(n+1), A034444(A036987(n)+n)]` -/
def P4997653794115589946.Spec : Prop :=
  ∀ n, (P4997653794115589946.a n : ℤ) = A063479 (n + 1)

end A063479

/-! ## A063479.P11942565586746912092

`eq[A000079(A050320(n+1)), A001221(n+2)]+1`
-/

namespace A063479.P11942565586746912092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A050320 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A063479.P11942565586746912092

namespace A063479

/-- `eq[A000079(A050320(n+1)), A001221(n+2)]+1` -/
def P11942565586746912092.Spec : Prop :=
  ∀ n, (P11942565586746912092.a n : ℤ) = A063479 (n + 1)

end A063479

/-! ## A063479.P12458070403712401714

`eq[A000015(A325446(n+1)+1), A001221(n+2)]+1`
-/

namespace A063479.P12458070403712401714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A325446 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A063479.P12458070403712401714

namespace A063479

/-- `eq[A000015(A325446(n+1)+1), A001221(n+2)]+1` -/
def P12458070403712401714.Spec : Prop :=
  ∀ n, (P12458070403712401714.a n : ℤ) = A063479 (n + 1)

end A063479

/-! ## A063479.P4703517036019628614

`A004151(eq[A001221(n+2)/2, A001221(n+1)]+1)`
-/

namespace A063479.P4703517036019628614
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (n + 2) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1)

end

end A063479.P4703517036019628614

namespace A063479

/-- `A004151(eq[A001221(n+2)/2, A001221(n+1)]+1)` -/
def P4703517036019628614.Spec : Prop :=
  ∀ n, P4703517036019628614.a n = A063479 (n + 1)

end A063479

/-! ## A063479.P5745360579265340573

`eq[2*A001221(A028310(n)), A087802(n+1)]`
-/

namespace A063479.P5745360579265340573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001221 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087802 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063479.P5745360579265340573

namespace A063479

/-- `eq[2*A001221(A028310(n)), A087802(n+1)]` -/
def P5745360579265340573.Spec : Prop :=
  ∀ n, (P5745360579265340573.a n : ℤ) = A063479 (n + 1)

end A063479

/-! ## A063479.P1898302608526349550

`eq[2, A001221(n+1)/A087802(A028310(n))]`
-/

namespace A063479.P1898302608526349550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (n + 1) : ℚ) / (A087802 (A028310 n).toNat : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A063479.P1898302608526349550

namespace A063479

/-- `eq[2, A001221(n+1)/A087802(A028310(n))]` -/
def P1898302608526349550.Spec : Prop :=
  ∀ n, (P1898302608526349550.a n : ℤ) = A063479 (n + 1)

end A063479

/-! ## A063479.P18211647684515931397

`eq[2*A001221(A233583(n+1)), A001221(n+1)]`
-/

namespace A063479.P18211647684515931397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001221 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063479.P18211647684515931397

namespace A063479

/-- `eq[2*A001221(A233583(n+1)), A001221(n+1)]` -/
def P18211647684515931397.Spec : Prop :=
  ∀ n, (P18211647684515931397.a n : ℤ) = A063479 (n + 1)

end A063479

/-!
# A063480: C(n+3)=2*C(n), where C(n) is Cototient(n) := n - phi(n) (A051953).

The programs for A063480, there is no canonical definition to state claims against.
-/

/-! ## A063480.P6051075624744602862

`A354714(A362250(n+2))`
-/

namespace A063480.P6051075624744602862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354714 (A362250 (n + 2)).toNat

end

end A063480.P6051075624744602862

/-!
# A063481: a(n) = 4^n + 8^n.

The programs for A063481, the canonical program `A063481.P8654168379830397221` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063481 has offset 0).

The definition of A063481 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+8^n` (program `A063481.P8654168379830397221`, by `A063481.P8654168379830397221.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A063481.P8654168379830397221

`4^n+8^n`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063481

/-- `4^n+8^n` -/
def P8654168379830397221.Spec : Prop :=
  ∀ n, (P8654168379830397221.a n : ℤ) = A063481 n

theorem P8654168379830397221.correct : P8654168379830397221.Spec := by
  intro n
  simp only [A063481]

end A063481

/-! ## A063481.P10545367952262340475

`lcm(2, 4^n)*or(1, 2^n)`
-/

namespace A063481.P10545367952262340475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (4 ^ n) * Nat.lor 1 (2 ^ n)

end

end A063481.P10545367952262340475

namespace A063481

/-- `lcm(2, 4^n)*or(1, 2^n)` -/
def P10545367952262340475.Spec : Prop :=
  ∀ n, (P10545367952262340475.a n : ℤ) = A063481 n

end A063481

/-! ## A063481.P14128132994394240663

`floor(8*a(n-1)-4^n)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A063481.P14128132994394240663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  8 * a (n - 1) - (4 ^ n : ℤ)

end

end A063481.P14128132994394240663

namespace A063481

/-- `floor(8*a(n-1)-4^n)` -/
def P14128132994394240663.Spec : Prop :=
  ∀ n, P14128132994394240663.a n = A063481 n

theorem P14128132994394240663.correct : P14128132994394240663.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A063481, Nat.add_sub_cancel, A063481.P14128132994394240663.a, A063481.P8654168379830397221.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A063481, Nat.add_sub_cancel, A063481.P14128132994394240663.a, A063481.P8654168379830397221.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A063481

/-! ## A063481.P6738593095479429664

`4^n*∑[2*a(n-1)]` with `a(0)=2, a(1)=1`
-/

namespace A063481.P6738593095479429664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063481.P6738593095479429664

namespace A063481

/-- `4^n*∑[2*a(n-1)]` -/
def P6738593095479429664.Spec : Prop :=
  ∀ n, (P6738593095479429664.a n : ℤ) = A063481 n

end A063481

/-! ## A063481.P16593830814799462653

`2*A081337(n)`
-/

namespace A063481.P16593830814799462653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081337 n

end

end A063481.P16593830814799462653

namespace A063481

/-- `2*A081337(n)` -/
def P16593830814799462653.Spec : Prop :=
  ∀ n, P16593830814799462653.a n = A063481 n

end A063481

/-! ## A063481.P2439940223756639597

`xor(1, A074514(n))`
-/

namespace A063481.P2439940223756639597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A074514 n)

end

end A063481.P2439940223756639597

namespace A063481

/-- `xor(1, A074514(n))` -/
def P2439940223756639597.Spec : Prop :=
  ∀ n, P2439940223756639597.a n = A063481 n

end A063481

/-! ## A063481.P2523228791857868317

`record[2*A098657(n)]`
-/

namespace A063481.P2523228791857868317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063481.P2523228791857868317

namespace A063481

/-- `record[2*A098657(n)]` -/
def P2523228791857868317.Spec : Prop :=
  ∀ n, P2523228791857868317.a n = A063481 n

end A063481

/-! ## A063481.P4785653087111393005

`2*A098657(2*n)`
-/

namespace A063481.P4785653087111393005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098657 (2 * n)

end

end A063481.P4785653087111393005

namespace A063481

/-- `2*A098657(2*n)` -/
def P4785653087111393005.Spec : Prop :=
  ∀ n, P4785653087111393005.a n = A063481 n

end A063481

/-! ## A063481.P10695326347465583389

`2^n*A161168(n)`
-/

namespace A063481.P10695326347465583389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A161168 n

end

end A063481.P10695326347465583389

namespace A063481

/-- `2^n*A161168(n)` -/
def P10695326347465583389.Spec : Prop :=
  ∀ n, P10695326347465583389.a n = A063481 n

end A063481

/-! ## A063481.P16356021083414160382

`4^n*A000051(n)`
-/

namespace A063481.P16356021083414160382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A000051 n

end

end A063481.P16356021083414160382

namespace A063481

/-- `4^n*A000051(n)` -/
def P16356021083414160382.Spec : Prop :=
  ∀ n, P16356021083414160382.a n = A063481 n

end A063481

/-! ## A063481.P14243926069404036737

`A000051(n)*A000302(n)`
-/

namespace A063481.P14243926069404036737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A000302 n

end

end A063481.P14243926069404036737

namespace A063481

/-- `A000051(n)*A000302(n)` -/
def P14243926069404036737.Spec : Prop :=
  ∀ n, P14243926069404036737.a n = A063481 n

end A063481

/-! ## A063481.P4283824226284975253

`A083318(n)*A155543(n)`
-/

namespace A063481.P4283824226284975253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 n * A155543 n

end

end A063481.P4283824226284975253

namespace A063481

/-- `A083318(n)*A155543(n)` -/
def P4283824226284975253.Spec : Prop :=
  ∀ n, P4283824226284975253.a n = A063481 n

end A063481

/-! ## A063481.P13241670193611250498

`lcm(A007582(n), A155543(n))`
-/

namespace A063481.P13241670193611250498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007582 n) (A155543 n)

end

end A063481.P13241670193611250498

namespace A063481

/-- `lcm(A007582(n), A155543(n))` -/
def P13241670193611250498.Spec : Prop :=
  ∀ n, (P13241670193611250498.a n : ℤ) = A063481 n

end A063481

/-! ## A063481.P13171664289029390132

`lcm(A161168(n), A262710(n))`
-/

namespace A063481.P13171664289029390132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A161168 n) (A262710 n)

end

end A063481.P13171664289029390132

namespace A063481

/-- `lcm(A161168(n), A262710(n))` -/
def P13171664289029390132.Spec : Prop :=
  ∀ n, (P13171664289029390132.a n : ℤ) = A063481 n

end A063481

/-! ## A063481.P11645555721240374161

`record[A094014(n)+A000079(n)]`
-/

namespace A063481.P11645555721240374161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094014 n + A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063481.P11645555721240374161

namespace A063481

/-- `record[A094014(n)+A000079(n)]` -/
def P11645555721240374161.Spec : Prop :=
  ∀ n, P11645555721240374161.a n = A063481 n

end A063481

/-! ## A063481.P16946030147257910719

`record[A052552(n)*A122803(n)]`
-/

namespace A063481.P16946030147257910719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 n * A122803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063481.P16946030147257910719

namespace A063481

/-- `record[A052552(n)*A122803(n)]` -/
def P16946030147257910719.Spec : Prop :=
  ∀ n, P16946030147257910719.a n = A063481 n

end A063481

/-! ## A063481.P7976658298916034834

`(A000079(n)+1)*A000302(n)`
-/

namespace A063481.P7976658298916034834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n + 1) * A000302 n

end

end A063481.P7976658298916034834

namespace A063481

/-- `(A000079(n)+1)*A000302(n)` -/
def P7976658298916034834.Spec : Prop :=
  ∀ n, P7976658298916034834.a n = A063481 n

end A063481

/-! ## A063481.P2285544932688875410

`A000079(n+1)*A007582(n)`
-/

namespace A063481.P2285544932688875410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A007582 n

end

end A063481.P2285544932688875410

namespace A063481

/-- `A000079(n+1)*A007582(n)` -/
def P2285544932688875410.Spec : Prop :=
  ∀ n, P2285544932688875410.a n = A063481 n

end A063481

/-!
# A063482: a(n) = prime(n) * last digit of prime(n).

The programs for A063482, the canonical program `A063482.P1666683509388537250` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063482 has offset 1).

The definition of A063482 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063482.P12194975540625917103

`Δ[A007504(n)]*A007652(n+1)`
-/

namespace A063482.P12194975540625917103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A007652 (n + 1)

end

end A063482.P12194975540625917103

namespace A063482

/-- `Δ[A007504(n)]*A007652(n+1)` -/
def P12194975540625917103.Spec : Prop :=
  ∀ n, P12194975540625917103.a n = A063482 (n + 1)

end A063482

/-! ## A063482.P1666683509388537250

`A000040(n+1)*A007652(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A063482

/-- `A000040(n+1)*A007652(n+1)` -/
def P1666683509388537250.Spec : Prop :=
  ∀ n, P1666683509388537250.a n = A063482 (n + 1)

theorem P1666683509388537250.correct : P1666683509388537250.Spec := by
  intro n
  simp only [A063482, Nat.add_sub_cancel]

end A063482

/-! ## A063482.P5638533384757350761

`A001248(n+1)%A142342(n+1)`
-/

namespace A063482.P5638533384757350761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001248 (n + 1)) (A142342 (n + 1))

end

end A063482.P5638533384757350761

namespace A063482

/-- `A001248(n+1)%A142342(n+1)` -/
def P5638533384757350761.Spec : Prop :=
  ∀ n, P5638533384757350761.a n = A063482 (n + 1)

end A063482

/-! ## A063482.P15173148558810641551

`A030516(n+1)%A142342(n+1)`
-/

namespace A063482.P15173148558810641551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030516 (n + 1)) (A142342 (n + 1))

end

end A063482.P15173148558810641551

namespace A063482

/-- `A030516(n+1)%A142342(n+1)` -/
def P15173148558810641551.Spec : Prop :=
  ∀ n, P15173148558810641551.a n = A063482 (n + 1)

end A063482

/-! ## A063482.P13351795694775035431

`A271422(n+1)%A142342(n+1)`
-/

namespace A063482.P13351795694775035431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271422 (n + 1)) (A142342 (n + 1))

end

end A063482.P13351795694775035431

namespace A063482

/-- `A271422(n+1)%A142342(n+1)` -/
def P13351795694775035431.Spec : Prop :=
  ∀ n, P13351795694775035431.a n = A063482 (n + 1)

end A063482

/-! ## A063482.P16204895412906513417

`abs(Δ[A022837(n)]*A007652(n+1))`
-/

namespace A063482.P16204895412906513417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A007652 (n + 1)|

end

end A063482.P16204895412906513417

namespace A063482

/-- `abs(Δ[A022837(n)]*A007652(n+1))` -/
def P16204895412906513417.Spec : Prop :=
  ∀ n, P16204895412906513417.a n = A063482 (n + 1)

end A063482

/-! ## A063482.P4615552142704404267

`(A006093(n+1)+1)*A007652(n+1)`
-/

namespace A063482.P4615552142704404267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * A007652 (n + 1)

end

end A063482.P4615552142704404267

namespace A063482

/-- `(A006093(n+1)+1)*A007652(n+1)` -/
def P4615552142704404267.Spec : Prop :=
  ∀ n, P4615552142704404267.a n = A063482 (n + 1)

end A063482

/-! ## A063482.P1592584232298524267

`(A040976(n+1)+2)*A007652(n+1)`
-/

namespace A063482.P1592584232298524267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040976 (n + 1) + 2) * A007652 (n + 1)

end

end A063482.P1592584232298524267

namespace A063482

/-- `(A040976(n+1)+2)*A007652(n+1)` -/
def P1592584232298524267.Spec : Prop :=
  ∀ n, P1592584232298524267.a n = A063482 (n + 1)

end A063482

/-! ## A063482.P14575019276665935230

`(A095116(n+1)-n)*A007652(n+1)`
-/

namespace A063482.P14575019276665935230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A095116 (n + 1) - (n : ℤ)) * A007652 (n + 1)

end

end A063482.P14575019276665935230

namespace A063482

/-- `(A095116(n+1)-n)*A007652(n+1)` -/
def P14575019276665935230.Spec : Prop :=
  ∀ n, P14575019276665935230.a n = A063482 (n + 1)

end A063482

/-! ## A063482.P15398172686531762803

`A000040(n+1)*A010879(A137589(n+1))`
-/

namespace A063482.P15398172686531762803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A010879 (A137589 (n + 1)).toNat

end

end A063482.P15398172686531762803

namespace A063482

/-- `A000040(n+1)*A010879(A137589(n+1))` -/
def P15398172686531762803.Spec : Prop :=
  ∀ n, P15398172686531762803.a n = A063482 (n + 1)

end A063482

/-! ## A063482.P2992040415291785640

`A000040(n+1)*A002024(A161625(n+1))`
-/

namespace A063482.P2992040415291785640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A002024 (A161625 (n + 1)).toNat

end

end A063482.P2992040415291785640

namespace A063482

/-- `A000040(n+1)*A002024(A161625(n+1))` -/
def P2992040415291785640.Spec : Prop :=
  ∀ n, P2992040415291785640.a n = A063482 (n + 1)

end A063482

/-! ## A063482.P5743167946931765421

`(A065073(n+1)-A007605(n+1))*A007652(n+1)`
-/

namespace A063482.P5743167946931765421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065073 (n + 1) - A007605 (n + 1)) * A007652 (n + 1)

end

end A063482.P5743167946931765421

namespace A063482

/-- `(A065073(n+1)-A007605(n+1))*A007652(n+1)` -/
def P5743167946931765421.Spec : Prop :=
  ∀ n, P5743167946931765421.a n = A063482 (n + 1)

end A063482

/-! ## A063482.P16022358081098899854

`(A082542(n+1)-A070750(n+1))*A007652(n+1)`
-/

namespace A063482.P16022358081098899854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A082542 (n + 1) - A070750 (n + 1)) * A007652 (n + 1)

end

end A063482.P16022358081098899854

namespace A063482

/-- `(A082542(n+1)-A070750(n+1))*A007652(n+1)` -/
def P16022358081098899854.Spec : Prop :=
  ∀ n, P16022358081098899854.a n = A063482 (n + 1)

end A063482

/-! ## A063482.P1860590645102039955

`(A268185(n+1)-A000040(n+1))*A000040(n+1)`
-/

namespace A063482.P1860590645102039955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A268185 (n + 1) - A000040 (n + 1)) * A000040 (n + 1)

end

end A063482.P1860590645102039955

namespace A063482

/-- `(A268185(n+1)-A000040(n+1))*A000040(n+1)` -/
def P1860590645102039955.Spec : Prop :=
  ∀ n, P1860590645102039955.a n = A063482 (n + 1)

end A063482

/-! ## A063482.P242502737691716421

`(A268185(n+1)-A007652(n+1))*A007652(n+1)`
-/

namespace A063482.P242502737691716421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A268185 (n + 1) - A007652 (n + 1)) * A007652 (n + 1)

end

end A063482.P242502737691716421

namespace A063482

/-- `(A268185(n+1)-A007652(n+1))*A007652(n+1)` -/
def P242502737691716421.Spec : Prop :=
  ∀ n, P242502737691716421.a n = A063482 (n + 1)

end A063482

/-! ## A063482.P17058144688588613278

`(A263483(n+1)-A039704(n+1))*A007652(n+1)`
-/

namespace A063482.P17058144688588613278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A263483 (n + 1) - A039704 (n + 1)) * A007652 (n + 1)

end

end A063482.P17058144688588613278

namespace A063482

/-- `(A263483(n+1)-A039704(n+1))*A007652(n+1)` -/
def P17058144688588613278.Spec : Prop :=
  ∀ n, P17058144688588613278.a n = A063482 (n + 1)

end A063482

/-! ## A063482.P8532205018662091005

`(A267573(n+1)-A039702(n+1))*A007652(n+1)`
-/

namespace A063482.P8532205018662091005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A267573 (n + 1) - A039702 (n + 1)) * A007652 (n + 1)

end

end A063482.P8532205018662091005

namespace A063482

/-- `(A267573(n+1)-A039702(n+1))*A007652(n+1)` -/
def P8532205018662091005.Spec : Prop :=
  ∀ n, P8532205018662091005.a n = A063482 (n + 1)

end A063482

/-! ## A063482.P5631889586948057063

`(A302660(n+1)-A038194(n+1))*A000040(n+1)`
-/

namespace A063482.P5631889586948057063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A302660 (n + 1) - A038194 (n + 1)) * A000040 (n + 1)

end

end A063482.P5631889586948057063

namespace A063482

/-- `(A302660(n+1)-A038194(n+1))*A000040(n+1)` -/
def P5631889586948057063.Spec : Prop :=
  ∀ n, P5631889586948057063.a n = A063482 (n + 1)

end A063482

/-! ## A063482.P3590751224782423213

`A007652(n+1)*A008578(n+2)`
-/

namespace A063482.P3590751224782423213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 1) * A008578 (n + 2)

end

end A063482.P3590751224782423213

namespace A063482

/-- `A007652(n+1)*A008578(n+2)` -/
def P3590751224782423213.Spec : Prop :=
  ∀ n, P3590751224782423213.a n = A063482 (n + 1)

end A063482

/-! ## A063482.P15973411307184670287

`record[A006530(n+2)]*A007652(n+1)`
-/

namespace A063482.P15973411307184670287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A007652 (n + 1)

end

end A063482.P15973411307184670287

namespace A063482

/-- `record[A006530(n+2)]*A007652(n+1)` -/
def P15973411307184670287.Spec : Prop :=
  ∀ n, P15973411307184670287.a n = A063482 (n + 1)

end A063482

/-!
# A063483: S[A002808(n)] where S[] is Boris Stechkin's function (A055004) and A002808(n) are the composites.

The programs for A063483, there is no canonical definition to state claims against.
-/

/-! ## A063483.P18394762583900874793

`A055004(A141468(n+1))`
-/

namespace A063483.P18394762583900874793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055004 (A141468 (n + 1)).toNat

end

end A063483.P18394762583900874793

/-! ## A063483.P9592562920145668248

`A055004(eq[0, A055671(n)])`
-/

namespace A063483.P9592562920145668248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055004 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A063483.P9592562920145668248

/-! ## A063483.P10579507741133743689

`A055004(eq[0, A055672(n)])`
-/

namespace A063483.P10579507741133743689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055004 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A063483.P10579507741133743689

/-! ## A063483.P8199020909442861128

`A055004(A161843(n+1)-A002808(n+1))`
-/

namespace A063483.P8199020909442861128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055004 (A161843 (n + 1) - A002808 (n + 1)).toNat

end

end A063483.P8199020909442861128

/-! ## A063483.P18023379247331080739

`A055004(A161843(n+1)%A002808(n+1))`
-/

namespace A063483.P18023379247331080739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055004 (Int.tmod (A161843 (n + 1)) (A002808 (n + 1))).toNat

end

end A063483.P18023379247331080739

/-!
# A063484: Numbers k such that Omega(k+1) = 2*Omega(k), where Omega(k) is the number of prime divisors of k (with repetition).

The programs for A063484, the canonical program `A063484.P9182144271419891807` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063484 has offset 1).

The definition of A063484 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3970 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063484.P9182144271419891807

`eq[2*A001222(n+1), A001222(n+2)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A063484

/-- `eq[2*A001222(n+1), A001222(n+2)]+1` -/
def P9182144271419891807.Spec : Prop :=
  ∀ n, (P9182144271419891807.a n : ℤ) = A063484 (n + 1)

theorem P9182144271419891807.correct : P9182144271419891807.Spec := by
  intro n
  simp only [A063484, Nat.add_sub_cancel]

end A063484

/-! ## A063484.P17795295125727742688

`eq[2, A001222(n+3)/A001222(n+2)]+2`
-/

namespace A063484.P17795295125727742688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 3) : ℚ) / (A001222 (n + 2) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 2

end

end A063484.P17795295125727742688

namespace A063484

/-- `eq[2, A001222(n+3)/A001222(n+2)]+2` -/
def P17795295125727742688.Spec : Prop :=
  ∀ n, (P17795295125727742688.a n : ℤ) = A063484 (n + 1)

end A063484

/-! ## A063484.P2235650283606242499

`eq[log2(A165825(n+1)), A001222(n+2)]+1`
-/

namespace A063484.P2235650283606242499
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A165825 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n + 1

end

end A063484.P2235650283606242499

namespace A063484

/-- `eq[log2(A165825(n+1)), A001222(n+2)]+1` -/
def P2235650283606242499.Spec : Prop :=
  ∀ n, (P2235650283606242499.a n : ℤ) = A063484 (n + 1)

end A063484

/-! ## A063484.P9860025115226967732

`eq[2*A086436(A028310(n)), A001222(n+1)]`
-/

namespace A063484.P9860025115226967732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086436 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063484.P9860025115226967732

namespace A063484

/-- `eq[2*A086436(A028310(n)), A001222(n+1)]` -/
def P9860025115226967732.Spec : Prop :=
  ∀ n, (P9860025115226967732.a n : ℤ) = A063484 (n + 1)

end A063484

/-! ## A063484.P11227970465793714712

`eq[A073093(n+1), A105560(A168101(n))]`
-/

namespace A063484.P11227970465793714712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (A168101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063484.P11227970465793714712

namespace A063484

/-- `eq[A073093(n+1), A105560(A168101(n))]` -/
def P11227970465793714712.Spec : Prop :=
  ∀ n, (P11227970465793714712.a n : ℤ) = A063484 (n + 1)

end A063484

/-! ## A063484.P2229325404531202249

`eq[A061142(n+1), A165825(A233583(n+1))]`
-/

namespace A063484.P2229325404531202249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063484.P2229325404531202249

namespace A063484

/-- `eq[A061142(n+1), A165825(A233583(n+1))]` -/
def P2229325404531202249.Spec : Prop :=
  ∀ n, (P2229325404531202249.a n : ℤ) = A063484 (n + 1)

end A063484

/-! ## A063484.P1882460469077202056

`eq[A165824(A233583(n+1))², A165824(n+1)]`
-/

namespace A063484.P1882460469077202056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (A233583 (n + 1)).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063484.P1882460469077202056

namespace A063484

/-- `eq[A165824(A233583(n+1))², A165824(n+1)]` -/
def P1882460469077202056.Spec : Prop :=
  ∀ n, (P1882460469077202056.a n : ℤ) = A063484 (n + 1)

end A063484

/-! ## A063484.P12031395444388342494

`eq[A165825(A233583(n+1))², A165825(n+1)]`
-/

namespace A063484.P12031395444388342494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (A233583 (n + 1)).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063484.P12031395444388342494

namespace A063484

/-- `eq[A165825(A233583(n+1))², A165825(n+1)]` -/
def P12031395444388342494.Spec : Prop :=
  ∀ n, (P12031395444388342494.a n : ℤ) = A063484 (n + 1)

end A063484

/-! ## A063484.P13521500059936274138

`eq[A165830(A233583(n+1))², A165830(n+1)]`
-/

namespace A063484.P13521500059936274138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165830 (A233583 (n + 1)).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165830 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063484.P13521500059936274138

namespace A063484

/-- `eq[A165830(A233583(n+1))², A165830(n+1)]` -/
def P13521500059936274138.Spec : Prop :=
  ∀ n, (P13521500059936274138.a n : ℤ) = A063484 (n + 1)

end A063484

/-! ## A063484.P14040523065434022981

`eq[A165831(A233583(n+1))², A165831(n+1)]`
-/

namespace A063484.P14040523065434022981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165831 (A233583 (n + 1)).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165831 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063484.P14040523065434022981

namespace A063484

/-- `eq[A165831(A233583(n+1))², A165831(n+1)]` -/
def P14040523065434022981.Spec : Prop :=
  ∀ n, (P14040523065434022981.a n : ℤ) = A063484 (n + 1)

end A063484

/-!
# A063485: 

The programs for A063485, there is no canonical definition to state claims against.
-/

/-! ## A063485.P1457375831816721078

`A177334(A005583(n+2))+3`
-/

namespace A063485.P1457375831816721078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177334 (A005583 (n + 2)).toNat + 3

end

end A063485.P1457375831816721078

/-!
# A063486: a(n) = 2^(2^n) + 5.

The programs for A063486, the canonical program `A063486.P8364557207783819813` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063486 has offset 0).

The definition of A063486 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^2^n+5` (program `A063486.P8364557207783819813`, by `A063486.P8364557207783819813.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A063486.P8364557207783819813

`2^2^n+5`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063486

/-- `2^2^n+5` -/
def P8364557207783819813.Spec : Prop :=
  ∀ n, (P8364557207783819813.a n : ℤ) = A063486 n

theorem P8364557207783819813.correct : P8364557207783819813.Spec := by
  intro n
  simp only [A063486]

end A063486

/-! ## A063486.P14816914820591068810

`A168614(2^n)`
-/

namespace A063486.P14816914820591068810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168614 (2 ^ n)

end

end A063486.P14816914820591068810

namespace A063486

/-- `A168614(2^n)` -/
def P14816914820591068810.Spec : Prop :=
  ∀ n, P14816914820591068810.a n = A063486 n

end A063486

/-! ## A063486.P15535367014384857314

`abs(2-A130730(n))`
-/

namespace A063486.P15535367014384857314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A130730 n|

end

end A063486.P15535367014384857314

namespace A063486

/-- `abs(2-A130730(n))` -/
def P15535367014384857314.Spec : Prop :=
  ∀ n, P15535367014384857314.a n = A063486 n

end A063486

/-! ## A063486.P3907827048197466463

`abs(A232460(n)+10)`
-/

namespace A063486.P3907827048197466463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A232460 n + 10|

end

end A063486.P3907827048197466463

namespace A063486

/-- `abs(A232460(n)+10)` -/
def P3907827048197466463.Spec : Prop :=
  ∀ n, P3907827048197466463.a n = A063486 n

end A063486

/-! ## A063486.P6230175672386459019

`record[A329050(n)+5]`
-/

namespace A063486.P6230175672386459019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329050 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063486.P6230175672386459019

namespace A063486

/-- `record[A329050(n)+5]` -/
def P6230175672386459019.Spec : Prop :=
  ∀ n, P6230175672386459019.a n = A063486 n

end A063486

/-!
# A063488: a(n) = (2*n-1)*(n^2 -n +2)/2.

The programs for A063488, the canonical program `A063488.P11110899129665486277` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063488 has offset 1).

The definition of A063488 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063488.P1778504264731201326

`∑[round(3/acot(n)²)]`
-/

namespace A063488.P1778504264731201326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 / SequenceMachineLib.acot (n : ℝ) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063488.P1778504264731201326

namespace A063488

/-- `∑[round(3/acot(n)²)]` -/
def P1778504264731201326.Spec : Prop :=
  ∀ n, P1778504264731201326.a n = A063488 (n + 1)

end A063488

/-! ## A063488.P11110899129665486277

`(∑[n]+1)*Δ[n²]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063488

/-- `(∑[n]+1)*Δ[n²]` -/
def P11110899129665486277.Spec : Prop :=
  ∀ n, P11110899129665486277.a n = A063488 (n + 1)

theorem P11110899129665486277.correct : P11110899129665486277.Spec := by
  intro n
  simp only [A063488, Nat.add_sub_cancel]

end A063488

/-! ## A063488.P11238683152432563681

`Δ[C(n²+2, 2)/2]`
-/

namespace A063488.P11238683152432563681
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2 + 2) 2 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063488.P11238683152432563681

namespace A063488

/-- `Δ[C(n²+2, 2)/2]` -/
def P11238683152432563681.Spec : Prop :=
  ∀ n, P11238683152432563681.a n = (A063488 (n + 1) : ℚ)

end A063488

/-! ## A063488.P18223818783459949415

`comp[lcm(2, n)]+∑[3*n²]`
-/

namespace A063488.P18223818783459949415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A063488.P18223818783459949415

namespace A063488

/-- `comp[lcm(2, n)]+∑[3*n²]` -/
def P18223818783459949415.Spec : Prop :=
  ∀ n, (P18223818783459949415.a n : ℤ) = A063488 (n + 1)

end A063488

/-! ## A063488.P8893296378575543073

`∑[-xor(3*n², -1)]+n`
-/

namespace A063488.P8893296378575543073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (3 * n ^ 2 : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A063488.P8893296378575543073

namespace A063488

/-- `∑[-xor(3*n², -1)]+n` -/
def P8893296378575543073.Spec : Prop :=
  ∀ n, P8893296378575543073.a n = A063488 (n + 1)

end A063488

/-! ## A063488.P6928906648946503372

`∑[∑[a(n-1)+6]]` with `a(0)=1, a(1)=4, a(2)=9`
-/

namespace A063488.P6928906648946503372
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 9] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063488.P6928906648946503372

namespace A063488

/-- `∑[∑[a(n-1)+6]]` -/
def P6928906648946503372.Spec : Prop :=
  ∀ n, (P6928906648946503372.a n : ℤ) = A063488 (n + 1)

end A063488

/-! ## A063488.P10870145584300480469

`3*n²+a(n-1)+2` with `a(0)=1`
-/

namespace A063488.P10870145584300480469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * n ^ 2 + (a (n - 1) + 2)

end

end A063488.P10870145584300480469

namespace A063488

/-- `3*n²+a(n-1)+2` -/
def P10870145584300480469.Spec : Prop :=
  ∀ n, (P10870145584300480469.a n : ℤ) = A063488 (n + 1)

end A063488

/-! ## A063488.P14965281149289630586

`-(2*n+1)*xor(-1, ∑[n])`
-/

namespace A063488.P14965281149289630586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((2 * n + 1 : ℤ) * Int.xor (-1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A063488.P14965281149289630586

namespace A063488

/-- `-(2*n+1)*xor(-1, ∑[n])` -/
def P14965281149289630586.Spec : Prop :=
  ∀ n, P14965281149289630586.a n = A063488 (n + 1)

end A063488

/-! ## A063488.P16758664476181867043

`n^3-∑[a(n-1)-3]` with `a(0)=-1`
-/

namespace A063488.P16758664476181867043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  f1 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063488.P16758664476181867043

namespace A063488

/-- `n^3-∑[a(n-1)-3]` -/
def P16758664476181867043.Spec : Prop :=
  ∀ n, P16758664476181867043.a n = A063488 (n + 1)

end A063488

/-! ## A063488.P11090215258720235970

`a(n-1)+3*n*n+2` with `a(0)=1`
-/

namespace A063488.P11090215258720235970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (3 * (n * n) + 2)

end

end A063488.P11090215258720235970

namespace A063488

/-- `a(n-1)+3*n*n+2` -/
def P11090215258720235970.Spec : Prop :=
  ∀ n, (P11090215258720235970.a n : ℤ) = A063488 (n + 1)

end A063488

/-! ## A063488.P14732340272877700319

`lcm(n+1, n²)+∑[n+2]-1`
-/

namespace A063488.P14732340272877700319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (n ^ 2) : ℤ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A063488.P14732340272877700319

namespace A063488

/-- `lcm(n+1, n²)+∑[n+2]-1` -/
def P14732340272877700319.Spec : Prop :=
  ∀ n, P14732340272877700319.a n = A063488 (n + 1)

end A063488

/-! ## A063488.P9842005889160532119

`abs((2*n+1)*(C(n+2, 2)-n))`
-/

namespace A063488.P9842005889160532119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n + 1 : ℤ) * ((Nat.choose (n + 2) 2 : ℤ) - (n : ℤ))|

end

end A063488.P9842005889160532119

namespace A063488

/-- `abs((2*n+1)*(C(n+2, 2)-n))` -/
def P9842005889160532119.Spec : Prop :=
  ∀ n, P9842005889160532119.a n = A063488 (n + 1)

end A063488

/-! ## A063488.P6279883718649722792

`-(2*n+1)*(n-C(n+2, 2))`
-/

namespace A063488.P6279883718649722792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((2 * n + 1 : ℤ) * ((n : ℤ) - (Nat.choose (n + 2) 2 : ℤ)))

end

end A063488.P6279883718649722792

namespace A063488

/-- `-(2*n+1)*(n-C(n+2, 2))` -/
def P6279883718649722792.Spec : Prop :=
  ∀ n, P6279883718649722792.a n = A063488 (n + 1)

end A063488

/-! ## A063488.P15872273876101516563

`or(1, 2*n)+(2*n+1)*∑[n]`
-/

namespace A063488.P15872273876101516563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * n) + (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063488.P15872273876101516563

namespace A063488

/-- `or(1, 2*n)+(2*n+1)*∑[n]` -/
def P15872273876101516563.Spec : Prop :=
  ∀ n, (P15872273876101516563.a n : ℤ) = A063488 (n + 1)

end A063488

/-! ## A063488.P4704946016577663112

`xor(1, 2*n)+(2*n+1)*∑[n]`
-/

namespace A063488.P4704946016577663112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n) + (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063488.P4704946016577663112

namespace A063488

/-- `xor(1, 2*n)+(2*n+1)*∑[n]` -/
def P4704946016577663112.Spec : Prop :=
  ∀ n, (P4704946016577663112.a n : ℤ) = A063488 (n + 1)

end A063488

/-! ## A063488.P4433571640815925507

`C(n+1, 2)*Δ[n²]+2*n+1`
-/

namespace A063488.P4433571640815925507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 2 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + (2 * n + 1 : ℤ)

end

end A063488.P4433571640815925507

namespace A063488

/-- `C(n+1, 2)*Δ[n²]+2*n+1` -/
def P4433571640815925507.Spec : Prop :=
  ∀ n, P4433571640815925507.a n = A063488 (n + 1)

end A063488

/-! ## A063488.P14329002850117938436

`(2*n+1)*C(n+1, 2)+2*n+1`
-/

namespace A063488.P14329002850117938436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.choose (n + 1) 2 + (2 * n + 1)

end

end A063488.P14329002850117938436

namespace A063488

/-- `(2*n+1)*C(n+1, 2)+2*n+1` -/
def P14329002850117938436.Spec : Prop :=
  ∀ n, (P14329002850117938436.a n : ℤ) = A063488 (n + 1)

end A063488

/-! ## A063488.P1452529752036935268

`lcm(2*n+1, n²+n)/2+2*n+1`
-/

namespace A063488.P1452529752036935268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (2 * n + 1) (n ^ 2 + n) : ℚ) / 2 + (2 * n + 1 : ℚ)

end

end A063488.P1452529752036935268

namespace A063488

/-- `lcm(2*n+1, n²+n)/2+2*n+1` -/
def P1452529752036935268.Spec : Prop :=
  ∀ n, P1452529752036935268.a n = (A063488 (n + 1) : ℚ)

end A063488

/-! ## A063488.P5083006209094175859

`(2*n+1)*∑[n%(n+1)]+2*n+1`
-/

namespace A063488.P5083006209094175859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) + (2 * n + 1)

end

end A063488.P5083006209094175859

namespace A063488

/-- `(2*n+1)*∑[n%(n+1)]+2*n+1` -/
def P5083006209094175859.Spec : Prop :=
  ∀ n, (P5083006209094175859.a n : ℤ) = A063488 (n + 1)

theorem P5083006209094175859.correct : P5083006209094175859.Spec := by
  intro n
  simp only [A063488, Nat.add_sub_cancel, A063488.P5083006209094175859.f1, A063488.P5083006209094175859.a, A063488.P11110899129665486277.f1, A063488.P11110899129665486277.f2, A063488.P11110899129665486277.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A063488

/-! ## A063488.P13528566748719568217

`(2*n+1)*∑[gcd(n, 2*n)]+2*n+1`
-/

namespace A063488.P13528566748719568217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) + (2 * n + 1)

end

end A063488.P13528566748719568217

namespace A063488

/-- `(2*n+1)*∑[gcd(n, 2*n)]+2*n+1` -/
def P13528566748719568217.Spec : Prop :=
  ∀ n, (P13528566748719568217.a n : ℤ) = A063488 (n + 1)

theorem P13528566748719568217.correct : P13528566748719568217.Spec := by
  intro n
  simp only [A063488, Nat.add_sub_cancel, A063488.P13528566748719568217.f1, A063488.P13528566748719568217.a, A063488.P11110899129665486277.f1, A063488.P11110899129665486277.f2, A063488.P11110899129665486277.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A063488

/-!
# A063489: a(n) = (2*n-1)*(5*n^2-5*n+6)/6.

The programs for A063489, the canonical program `A063489.P9136806150699106916` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063489 has offset 1).

The definition of A063489 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)-1)*(5*(n+1)²-5*(n+1)+6)/6` (program `A063489.P1856527707604124216`, by `A063489.P1856527707604124216.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A063489.P1856527707604124216

`(2*(n+1)-1)*(5*(n+1)²-5*(n+1)+6)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A063489.P1856527707604124216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - 1 : ℚ) * (((5 * (n + 1) ^ 2 : ℤ) - (5 * (n + 1) : ℤ) + 6 : ℚ) / 6)

end

end A063489.P1856527707604124216

namespace A063489

/-- `(2*(n+1)-1)*(5*(n+1)²-5*(n+1)+6)/6` -/
def P1856527707604124216.Spec : Prop :=
  ∀ n, P1856527707604124216.a n = (A063489 (n + 1) : ℚ)

theorem P1856527707604124216.correct : P1856527707604124216.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A063489, Nat.add_sub_cancel, A063489.P1856527707604124216.a, A063489.P9136806150699106916.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A063489, Nat.add_sub_cancel, A063489.P1856527707604124216.a, A063489.P9136806150699106916.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A063489

/-! ## A063489.P9136806150699106916

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=8, a(2)=30, a(3)=77`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063489

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P9136806150699106916.Spec : Prop :=
  ∀ n, P9136806150699106916.a n = A063489 (n + 1)

theorem P9136806150699106916.correct : P9136806150699106916.Spec := by
  intro n
  simp only [A063489, Nat.add_sub_cancel]

end A063489

/-! ## A063489.P10513632047358946859

`∑[∑[a(n-1)+10]]` with `a(0)=1, a(1)=6, a(2)=15`
-/

namespace A063489.P10513632047358946859
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 15] fun n f2 =>
  f2 (n - 1) + 10

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063489.P10513632047358946859

namespace A063489

/-- `∑[∑[a(n-1)+10]]` -/
def P10513632047358946859.Spec : Prop :=
  ∀ n, (P10513632047358946859.a n : ℤ) = A063489 (n + 1)

end A063489

/-! ## A063489.P3136946405720781027

`floor(5*n²+a(n-1)+2)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A063489.P3136946405720781027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  5 * n ^ 2 + (a (n - 1) + 2)

end

end A063489.P3136946405720781027

namespace A063489

/-- `floor(5*n²+a(n-1)+2)` -/
def P3136946405720781027.Spec : Prop :=
  ∀ n, (P3136946405720781027.a n : ℤ) = A063489 (n + 1)

end A063489

/-! ## A063489.P11073900178497295510

`∑[A010001(n)]`
-/

namespace A063489.P11073900178497295510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063489.P11073900178497295510

namespace A063489

/-- `∑[A010001(n)]` -/
def P11073900178497295510.Spec : Prop :=
  ∀ n, P11073900178497295510.a n = A063489 (n + 1)

end A063489

/-! ## A063489.P15376024926361943274

`∑[A005899(n)+n²]`
-/

namespace A063489.P15376024926361943274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063489.P15376024926361943274

namespace A063489

/-- `∑[A005899(n)+n²]` -/
def P15376024926361943274.Spec : Prop :=
  ∀ n, P15376024926361943274.a n = A063489 (n + 1)

end A063489

/-! ## A063489.P5593452141161166550

`∑[A005897(n)-n²]`
-/

namespace A063489.P5593452141161166550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063489.P5593452141161166550

namespace A063489

/-- `∑[A005897(n)-n²]` -/
def P5593452141161166550.Spec : Prop :=
  ∀ n, P5593452141161166550.a n = A063489 (n + 1)

end A063489

/-! ## A063489.P5051663543617577530

`ceil(A005902(n)/2+n)`
-/

namespace A063489.P5051663543617577530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005902 n : ℚ) / 2 + (n : ℚ)⌉

end

end A063489.P5051663543617577530

namespace A063489

/-- `ceil(A005902(n)/2+n)` -/
def P5051663543617577530.Spec : Prop :=
  ∀ n, P5051663543617577530.a n = A063489 (n + 1)

end A063489

/-! ## A063489.P3441626626340010335

`∑[∑[A086570(n)]+n²]`
-/

namespace A063489.P3441626626340010335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086570 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063489.P3441626626340010335

namespace A063489

/-- `∑[∑[A086570(n)]+n²]` -/
def P3441626626340010335.Spec : Prop :=
  ∀ n, P3441626626340010335.a n = A063489 (n + 1)

end A063489

/-! ## A063489.P10794170817495055012

`(∑[A158187(n)+1]+2*n)/2`
-/

namespace A063489.P10794170817495055012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158187 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + (2 * n : ℤ) : ℤ) : ℚ) / 2

end

end A063489.P10794170817495055012

namespace A063489

/-- `(∑[A158187(n)+1]+2*n)/2` -/
def P10794170817495055012.Spec : Prop :=
  ∀ n, P10794170817495055012.a n = (A063489 (n + 1) : ℚ)

end A063489

/-! ## A063489.P2043182354344270760

`∑[n*(5*n+2)+2-A004277(n)]`
-/

namespace A063489.P2043182354344270760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (5 * n + 2) + 2 : ℤ) - A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063489.P2043182354344270760

namespace A063489

/-- `∑[n*(5*n+2)+2-A004277(n)]` -/
def P2043182354344270760.Spec : Prop :=
  ∀ n, P2043182354344270760.a n = A063489 (n + 1)

end A063489

/-! ## A063489.P8500809927413295314

`(A005898(n)+A001845(n))/2`
-/

namespace A063489.P8500809927413295314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005898 n + A001845 n : ℚ) / 2

end

end A063489.P8500809927413295314

namespace A063489

/-- `(A005898(n)+A001845(n))/2` -/
def P8500809927413295314.Spec : Prop :=
  ∀ n, P8500809927413295314.a n = (A063489 (n + 1) : ℚ)

end A063489

/-! ## A063489.P12266824739853632777

`∑[A157532(n+1)+Δ[A152064(n)]-n²]`
-/

namespace A063489.P12266824739853632777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152064 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1) + (f2 (n + 1) - f2 n) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063489.P12266824739853632777

namespace A063489

/-- `∑[A157532(n+1)+Δ[A152064(n)]-n²]` -/
def P12266824739853632777.Spec : Prop :=
  ∀ n, P12266824739853632777.a n = A063489 (n + 1)

end A063489

/-! ## A063489.P6495063999308280299

`Δ[A139594(n)]`
-/

namespace A063489.P6495063999308280299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063489.P6495063999308280299

namespace A063489

/-- `Δ[A139594(n)]` -/
def P6495063999308280299.Spec : Prop :=
  ∀ n, P6495063999308280299.a n = A063489 (n + 1)

end A063489

/-! ## A063489.P3255530363610872198

`(A143131(n+2)-3)/2`
-/

namespace A063489.P3255530363610872198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143131 (n + 2) - 3 : ℚ) / 2

end

end A063489.P3255530363610872198

namespace A063489

/-- `(A143131(n+2)-3)/2` -/
def P3255530363610872198.Spec : Prop :=
  ∀ n, P3255530363610872198.a n = (A063489 (n + 1) : ℚ)

end A063489

/-! ## A063489.P9527207062865951067

`∑[∑[A357778(2*(n+1))]]`
-/

namespace A063489.P9527207062865951067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357778 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063489.P9527207062865951067

namespace A063489

/-- `∑[∑[A357778(2*(n+1))]]` -/
def P9527207062865951067.Spec : Prop :=
  ∀ n, P9527207062865951067.a n = A063489 (n + 1)

end A063489

/-! ## A063489.P16258880971510998786

`∑[A010000(2*n)+n²]`
-/

namespace A063489.P16258880971510998786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 (2 * n) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063489.P16258880971510998786

namespace A063489

/-- `∑[A010000(2*n)+n²]` -/
def P16258880971510998786.Spec : Prop :=
  ∀ n, P16258880971510998786.a n = A063489 (n + 1)

end A063489

/-! ## A063489.P7234846210265252709

`∑[A066714(2*n)+n²]`
-/

namespace A063489.P7234846210265252709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066714 (2 * n) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063489.P7234846210265252709

namespace A063489

/-- `∑[A066714(2*n)+n²]` -/
def P7234846210265252709.Spec : Prop :=
  ∀ n, P7234846210265252709.a n = A063489 (n + 1)

end A063489

/-! ## A063489.P12022822658349559815

`A029387(A249674(n))`
-/

namespace A063489.P12022822658349559815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029387 (A249674 n).toNat

end

end A063489.P12022822658349559815

namespace A063489

/-- `A029387(A249674(n))` -/
def P12022822658349559815.Spec : Prop :=
  ∀ n, P12022822658349559815.a n = A063489 (n + 1)

end A063489

/-! ## A063489.P14073448402211456864

`∑[A020639(A145853(n+1))+5*n²]`
-/

namespace A063489.P14073448402211456864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A145853 (n + 1)).toNat + (5 * n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063489.P14073448402211456864

namespace A063489

/-- `∑[A020639(A145853(n+1))+5*n²]` -/
def P14073448402211456864.Spec : Prop :=
  ∀ n, P14073448402211456864.a n = A063489 (n + 1)

end A063489

/-!
# A063490: a(n) = (2*n - 1)*(7*n^2 - 7*n + 6)/6.

The programs for A063490, the canonical program `A063490.P3741481667960660483` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063490 has offset 1).

The definition of A063490 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)-1)*(7*(n+1)²-7*(n+1)+6)/6` (program `A063490.P16776524260869191749`, by `A063490.P16776524260869191749.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A063490.P16776524260869191749

`(2*(n+1)-1)*(7*(n+1)²-7*(n+1)+6)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A063490.P16776524260869191749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - 1 : ℚ) * (((7 * (n + 1) ^ 2 : ℤ) - (7 * (n + 1) : ℤ) + 6 : ℚ) / 6)

end

end A063490.P16776524260869191749

namespace A063490

/-- `(2*(n+1)-1)*(7*(n+1)²-7*(n+1)+6)/6` -/
def P16776524260869191749.Spec : Prop :=
  ∀ n, P16776524260869191749.a n = (A063490 (n + 1) : ℚ)

theorem P16776524260869191749.correct : P16776524260869191749.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A063490, Nat.add_sub_cancel, A063490.P16776524260869191749.a, A063490.P3741481667960660483.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A063490, Nat.add_sub_cancel, A063490.P16776524260869191749.a, A063490.P3741481667960660483.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A063490

/-! ## A063490.P3741481667960660483

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=10, a(2)=40, a(3)=105`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063490

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P3741481667960660483.Spec : Prop :=
  ∀ n, P3741481667960660483.a n = A063490 (n + 1)

theorem P3741481667960660483.correct : P3741481667960660483.Spec := by
  intro n
  simp only [A063490, Nat.add_sub_cancel]

end A063490

/-! ## A063490.P15971190220164560417

`∑[∑[a(n-1)+14]+n+1]` with `a(0)=0, a(1)=7, a(2)=20`
-/

namespace A063490.P15971190220164560417
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 7, 20] fun n f2 =>
  f2 (n - 1) + 14

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063490.P15971190220164560417

namespace A063490

/-- `∑[∑[a(n-1)+14]+n+1]` -/
def P15971190220164560417.Spec : Prop :=
  ∀ n, (P15971190220164560417.a n : ℤ) = A063490 (n + 1)

end A063490

/-! ## A063490.P17610713651424602967

`∑[A005919(n)]`
-/

namespace A063490.P17610713651424602967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063490.P17610713651424602967

namespace A063490

/-- `∑[A005919(n)]` -/
def P17610713651424602967.Spec : Prop :=
  ∀ n, P17610713651424602967.a n = A063490 (n + 1)

end A063490

/-! ## A063490.P11038127145844769100

`∑[A005897(n)+n²]`
-/

namespace A063490.P11038127145844769100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063490.P11038127145844769100

namespace A063490

/-- `∑[A005897(n)+n²]` -/
def P11038127145844769100.Spec : Prop :=
  ∀ n, P11038127145844769100.a n = A063490 (n + 1)

end A063490

/-! ## A063490.P6130893755684150285

`∑[A008527(n)-n²]`
-/

namespace A063490.P6130893755684150285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008527 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063490.P6130893755684150285

namespace A063490

/-- `∑[A008527(n)-n²]` -/
def P6130893755684150285.Spec : Prop :=
  ∀ n, P6130893755684150285.a n = A063490 (n + 1)

end A063490

/-! ## A063490.P7709853525860931496

`abs(1-∑[7*A000290(n)+2])`
-/

namespace A063490.P7709853525860931496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A000290 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A063490.P7709853525860931496

namespace A063490

/-- `abs(1-∑[7*A000290(n)+2])` -/
def P7709853525860931496.Spec : Prop :=
  ∀ n, P7709853525860931496.a n = A063490 (n + 1)

end A063490

/-! ## A063490.P5014817395447570717

`(A005902(n)+A001845(n))/2`
-/

namespace A063490.P5014817395447570717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005902 n + A001845 n : ℚ) / 2

end

end A063490.P5014817395447570717

namespace A063490

/-- `(A005902(n)+A001845(n))/2` -/
def P5014817395447570717.Spec : Prop :=
  ∀ n, P5014817395447570717.a n = (A063490 (n + 1) : ℚ)

end A063490

/-! ## A063490.P11343257554256361260

`∑[A005893(2*n)-n²]`
-/

namespace A063490.P11343257554256361260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (2 * n) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063490.P11343257554256361260

namespace A063490

/-- `∑[A005893(2*n)-n²]` -/
def P11343257554256361260.Spec : Prop :=
  ∀ n, P11343257554256361260.a n = A063490 (n + 1)

end A063490

/-! ## A063490.P17089474676938620706

`record[∑[A270694(n)+1]]`
-/

namespace A063490.P17089474676938620706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270694 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063490.P17089474676938620706

namespace A063490

/-- `record[∑[A270694(n)+1]]` -/
def P17089474676938620706.Spec : Prop :=
  ∀ n, P17089474676938620706.a n = A063490 (n + 1)

end A063490

/-! ## A063490.P3975128149060889083

`∑[A163989(2*n+1)+n²]`
-/

namespace A063490.P3975128149060889083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163989 (2 * n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063490.P3975128149060889083

namespace A063490

/-- `∑[A163989(2*n+1)+n²]` -/
def P3975128149060889083.Spec : Prop :=
  ∀ n, P3975128149060889083.a n = A063490 (n + 1)

end A063490

/-! ## A063490.P5030988656566218466

`∑[A089071(3*n+1+n)+2*n-A000290(n)]`
-/

namespace A063490.P5030988656566218466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089071 (3 * n + 1 + n) + (2 * n : ℤ) - A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063490.P5030988656566218466

namespace A063490

/-- `∑[A089071(3*n+1+n)+2*n-A000290(n)]` -/
def P5030988656566218466.Spec : Prop :=
  ∀ n, P5030988656566218466.a n = A063490 (n + 1)

end A063490

/-!
# A063491: a(n) = (2*n - 1)*(3*n^2 - 3*n + 2)/2.

The programs for A063491, the canonical program `A063491.P10484467690369194705` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063491 has offset 1).

The definition of A063491 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)-1)*(3*(n+1)²-3*(n+1)+2)/2` (program `A063491.P6792749238991495000`, by `A063491.P6792749238991495000.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A063491.P6792749238991495000

`(2*(n+1)-1)*(3*(n+1)²-3*(n+1)+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A063491.P6792749238991495000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - 1 : ℚ) * (((3 * (n + 1) ^ 2 : ℤ) - (3 * (n + 1) : ℤ) + 2 : ℚ) / 2)

end

end A063491.P6792749238991495000

namespace A063491

/-- `(2*(n+1)-1)*(3*(n+1)²-3*(n+1)+2)/2` -/
def P6792749238991495000.Spec : Prop :=
  ∀ n, P6792749238991495000.a n = (A063491 (n + 1) : ℚ)

theorem P6792749238991495000.correct : P6792749238991495000.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A063491, Nat.add_sub_cancel, A063491.P6792749238991495000.a, A063491.P10484467690369194705.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A063491, Nat.add_sub_cancel, A063491.P6792749238991495000.a, A063491.P10484467690369194705.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A063491

/-! ## A063491.P10484467690369194705

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=12, a(2)=50, a(3)=133`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063491

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P10484467690369194705.Spec : Prop :=
  ∀ n, P10484467690369194705.a n = A063491 (n + 1)

theorem P10484467690369194705.correct : P10484467690369194705.Spec := by
  intro n
  simp only [A063491, Nat.add_sub_cancel]

end A063491

/-! ## A063491.P10738867994433689227

`A004188(n+1)+A004188(n)`
-/

namespace A063491.P10738867994433689227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004188 (n + 1) + A004188 n

end

end A063491.P10738867994433689227

namespace A063491

/-- `A004188(n+1)+A004188(n)` -/
def P10738867994433689227.Spec : Prop :=
  ∀ n, P10738867994433689227.a n = A063491 (n + 1)

end A063491

/-! ## A063491.P13342434356203838163

`∑[ceil(atan(n+1)+(3*n)²)]`
-/

namespace A063491.P13342434356203838163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n + 1 : ℝ) + ((3 * n) ^ 2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063491.P13342434356203838163

namespace A063491

/-- `∑[ceil(atan(n+1)+(3*n)²)]` -/
def P13342434356203838163.Spec : Prop :=
  ∀ n, P13342434356203838163.a n = A063491 (n + 1)

end A063491

/-! ## A063491.P8393465116426842758

`floor((3*n)²+a(n-1)+2)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A063491.P8393465116426842758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (3 * n) ^ 2 + (a (n - 1) + 2)

end

end A063491.P8393465116426842758

namespace A063491

/-- `floor((3*n)²+a(n-1)+2)` -/
def P8393465116426842758.Spec : Prop :=
  ∀ n, (P8393465116426842758.a n : ℤ) = A063491 (n + 1)

end A063491

/-! ## A063491.P13948005305408322599

`lcm(∑[(3*n)²]+2*n+1, 2*n+1)`
-/

namespace A063491.P13948005305408322599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1)) (2 * n + 1)

end

end A063491.P13948005305408322599

namespace A063491

/-- `lcm(∑[(3*n)²]+2*n+1, 2*n+1)` -/
def P13948005305408322599.Spec : Prop :=
  ∀ n, (P13948005305408322599.a n : ℤ) = A063491 (n + 1)

end A063491

/-! ## A063491.P12080364074390576937

`∑[A010002(n)]`
-/

namespace A063491.P12080364074390576937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063491.P12080364074390576937

namespace A063491

/-- `∑[A010002(n)]` -/
def P12080364074390576937.Spec : Prop :=
  ∀ n, P12080364074390576937.a n = A063491 (n + 1)

end A063491

/-! ## A063491.P6469113347384860297

`∑[A008527(n)+n²]`
-/

namespace A063491.P6469113347384860297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008527 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063491.P6469113347384860297

namespace A063491

/-- `∑[A008527(n)+n²]` -/
def P6469113347384860297.Spec : Prop :=
  ∀ n, P6469113347384860297.a n = A063491 (n + 1)

end A063491

/-! ## A063491.P7955870846114967285

`∑[A005901(n)-n²]`
-/

namespace A063491.P7955870846114967285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005901 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063491.P7955870846114967285

namespace A063491

/-- `∑[A005901(n)-n²]` -/
def P7955870846114967285.Spec : Prop :=
  ∀ n, P7955870846114967285.a n = A063491 (n + 1)

end A063491

/-! ## A063491.P10486369318137151757

`Δ[n²²-A006011(n)]`
-/

namespace A063491.P10486369318137151757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A006011 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063491.P10486369318137151757

namespace A063491

/-- `Δ[n²²-A006011(n)]` -/
def P10486369318137151757.Spec : Prop :=
  ∀ n, P10486369318137151757.a n = A063491 (n + 1)

end A063491

/-! ## A063491.P4216634290389014017

`(A352756(n+1)+n+1)/4`
-/

namespace A063491.P4216634290389014017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352756 (n + 1) + (n + 1 : ℤ) : ℚ) / 4

end

end A063491.P4216634290389014017

namespace A063491

/-- `(A352756(n+1)+n+1)/4` -/
def P4216634290389014017.Spec : Prop :=
  ∀ n, P4216634290389014017.a n = (A063491 (n + 1) : ℚ)

end A063491

/-!
# A063492: a(n) = (2*n - 1)*(11*n^2 - 11*n + 6)/6.

The programs for A063492, the canonical program `A063492.P10643875222042233622` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063492 has offset 1).

The definition of A063492 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)-1)*(11*(n+1)²-11*(n+1)+6)/6` (program `A063492.P9983821533982398515`, by `A063492.P9983821533982398515.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A063492.P9983821533982398515

`(2*(n+1)-1)*(11*(n+1)²-11*(n+1)+6)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A063492.P9983821533982398515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - 1 : ℚ) * (((11 * (n + 1) ^ 2 : ℤ) - (11 * (n + 1) : ℤ) + 6 : ℚ) / 6)

end

end A063492.P9983821533982398515

namespace A063492

/-- `(2*(n+1)-1)*(11*(n+1)²-11*(n+1)+6)/6` -/
def P9983821533982398515.Spec : Prop :=
  ∀ n, P9983821533982398515.a n = (A063492 (n + 1) : ℚ)

theorem P9983821533982398515.correct : P9983821533982398515.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A063492, Nat.add_sub_cancel, A063492.P9983821533982398515.a, A063492.P10643875222042233622.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A063492, Nat.add_sub_cancel, A063492.P9983821533982398515.a, A063492.P10643875222042233622.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A063492

/-! ## A063492.P10643875222042233622

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=14, a(2)=60, a(3)=161`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063492

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P10643875222042233622.Spec : Prop :=
  ∀ n, P10643875222042233622.a n = A063492 (n + 1)

theorem P10643875222042233622.correct : P10643875222042233622.Spec := by
  intro n
  simp only [A063492, Nat.add_sub_cancel]

end A063492

/-! ## A063492.P4298522407068266492

`∑[A010003(n)]`
-/

namespace A063492.P4298522407068266492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063492.P4298522407068266492

namespace A063492

/-- `∑[A010003(n)]` -/
def P4298522407068266492.Spec : Prop :=
  ∀ n, P4298522407068266492.a n = A063492 (n + 1)

end A063492

/-! ## A063492.P6511706192079439362

`∑[A005901(n)+n²]`
-/

namespace A063492.P6511706192079439362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005901 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063492.P6511706192079439362

namespace A063492

/-- `∑[A005901(n)+n²]` -/
def P6511706192079439362.Spec : Prop :=
  ∀ n, P6511706192079439362.a n = A063492 (n + 1)

end A063492

/-! ## A063492.P601870264388889223

`∑[A005914(n)-n²]`
-/

namespace A063492.P601870264388889223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005914 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063492.P601870264388889223

namespace A063492

/-- `∑[A005914(n)-n²]` -/
def P601870264388889223.Spec : Prop :=
  ∀ n, P601870264388889223.a n = A063492 (n + 1)

end A063492

/-! ## A063492.P13672068934057931230

`∑[A005893(n)+(3*n)²]`
-/

namespace A063492.P13672068934057931230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n + ((3 * n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063492.P13672068934057931230

namespace A063492

/-- `∑[A005893(n)+(3*n)²]` -/
def P13672068934057931230.Spec : Prop :=
  ∀ n, P13672068934057931230.a n = A063492 (n + 1)

end A063492

/-! ## A063492.P4015021339344822154

`∑[∑[A101103(n+1)]-n²]`
-/

namespace A063492.P4015021339344822154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101103 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063492.P4015021339344822154

namespace A063492

/-- `∑[∑[A101103(n+1)]-n²]` -/
def P4015021339344822154.Spec : Prop :=
  ∀ n, P4015021339344822154.a n = A063492 (n + 1)

end A063492

/-! ## A063492.P11581535173920701097

`∑[A016766(n)+A005893(n)]`
-/

namespace A063492.P11581535173920701097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016766 n + A005893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063492.P11581535173920701097

namespace A063492

/-- `∑[A016766(n)+A005893(n)]` -/
def P11581535173920701097.Spec : Prop :=
  ∀ n, P11581535173920701097.a n = A063492 (n + 1)

end A063492

/-! ## A063492.P16264224620130076659

`∑[A010005(n)-A005843(n)²]`
-/

namespace A063492.P16264224620130076659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010005 n - A005843 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063492.P16264224620130076659

namespace A063492

/-- `∑[A010005(n)-A005843(n)²]` -/
def P16264224620130076659.Spec : Prop :=
  ∀ n, P16264224620130076659.a n = A063492 (n + 1)

end A063492

/-! ## A063492.P10641152194503782235

`(∑[A020639(A004277(n))+(2*n)²]+A169711(n+1)+n)/2`
-/

namespace A063492.P10641152194503782235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat + ((2 * n) ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + (A169711 (n + 1) + (n : ℤ)) : ℤ) : ℚ) / 2

end

end A063492.P10641152194503782235

namespace A063492

/-- `(∑[A020639(A004277(n))+(2*n)²]+A169711(n+1)+n)/2` -/
def P10641152194503782235.Spec : Prop :=
  ∀ n, P10641152194503782235.a n = (A063492 (n + 1) : ℚ)

end A063492

/-! ## A063492.P18050315284138918284

`(∑[A020639(A004277(n))+(2*n)²]+(A000384(n)+(2*n+1)²)*(n+1)+n)/2`
-/

namespace A063492.P18050315284138918284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat + ((2 * n) ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + ((A000384 n + ((2 * n + 1) ^ 2 : ℤ)) * (n + 1 : ℤ) + (n : ℤ)) : ℤ) : ℚ) / 2

end

end A063492.P18050315284138918284

namespace A063492

/-- `(∑[A020639(A004277(n))+(2*n)²]+(A000384(n)+(2*n+1)²)*(n+1)+n)/2` -/
def P18050315284138918284.Spec : Prop :=
  ∀ n, P18050315284138918284.a n = (A063492 (n + 1) : ℚ)

end A063492

/-! ## A063492.P15828977189220605292

`Δ[n²²-A002415(n)]`
-/

namespace A063492.P15828977189220605292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A002415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063492.P15828977189220605292

namespace A063492

/-- `Δ[n²²-A002415(n)]` -/
def P15828977189220605292.Spec : Prop :=
  ∀ n, P15828977189220605292.a n = A063492 (n + 1)

end A063492

/-! ## A063492.P18130600741704984955

`∑[A008253(2*n)+n²]`
-/

namespace A063492.P18130600741704984955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008253 (2 * n) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063492.P18130600741704984955

namespace A063492

/-- `∑[A008253(2*n)+n²]` -/
def P18130600741704984955.Spec : Prop :=
  ∀ n, P18130600741704984955.a n = A063492 (n + 1)

end A063492

/-! ## A063492.P10126516691848131912

`∑[A009926(2*n)+n²]`
-/

namespace A063492.P10126516691848131912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009926 (2 * n) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063492.P10126516691848131912

namespace A063492

/-- `∑[A009926(2*n)+n²]` -/
def P10126516691848131912.Spec : Prop :=
  ∀ n, P10126516691848131912.a n = A063492 (n + 1)

end A063492

/-! ## A063492.P10536583133747265149

`∑[A005918(2*n)-n²]`
-/

namespace A063492.P10536583133747265149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 (2 * n) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063492.P10536583133747265149

namespace A063492

/-- `∑[A005918(2*n)-n²]` -/
def P10536583133747265149.Spec : Prop :=
  ∀ n, P10536583133747265149.a n = A063492 (n + 1)

end A063492

/-!
# A063493: a(n) = (2*n-1)*(13*n^2-13*n+6)/6.

The programs for A063493, the canonical program `A063493.P1331803190446192830` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063493 has offset 1).

The definition of A063493 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)-1)*(13*(n+1)²-13*(n+1)+6)/6` (program `A063493.P10713378664696090563`, by `A063493.P10713378664696090563.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A063493.P10713378664696090563

`(2*(n+1)-1)*(13*(n+1)²-13*(n+1)+6)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A063493.P10713378664696090563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - 1 : ℚ) * (((13 * (n + 1) ^ 2 : ℤ) - (13 * (n + 1) : ℤ) + 6 : ℚ) / 6)

end

end A063493.P10713378664696090563

namespace A063493

/-- `(2*(n+1)-1)*(13*(n+1)²-13*(n+1)+6)/6` -/
def P10713378664696090563.Spec : Prop :=
  ∀ n, P10713378664696090563.a n = (A063493 (n + 1) : ℚ)

theorem P10713378664696090563.correct : P10713378664696090563.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A063493, Nat.add_sub_cancel, A063493.P10713378664696090563.a, A063493.P1331803190446192830.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A063493, Nat.add_sub_cancel, A063493.P10713378664696090563.a, A063493.P1331803190446192830.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A063493

/-! ## A063493.P1331803190446192830

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=16, a(2)=70, a(3)=189`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063493

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P1331803190446192830.Spec : Prop :=
  ∀ n, P1331803190446192830.a n = A063493 (n + 1)

theorem P1331803190446192830.correct : P1331803190446192830.Spec := by
  intro n
  simp only [A063493, Nat.add_sub_cancel]

end A063493

/-! ## A063493.P3289152700500192670

`∑[A010004(n)]`
-/

namespace A063493.P3289152700500192670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063493.P3289152700500192670

namespace A063493

/-- `∑[A010004(n)]` -/
def P3289152700500192670.Spec : Prop :=
  ∀ n, P3289152700500192670.a n = A063493 (n + 1)

end A063493

/-! ## A063493.P12670863427176821416

`∑[A005914(n)+n²]`
-/

namespace A063493.P12670863427176821416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005914 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063493.P12670863427176821416

namespace A063493

/-- `∑[A005914(n)+n²]` -/
def P12670863427176821416.Spec : Prop :=
  ∀ n, P12670863427176821416.a n = A063493 (n + 1)

end A063493

/-! ## A063493.P731531894462681940

`∑[A005905(n)-n²]`
-/

namespace A063493.P731531894462681940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005905 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063493.P731531894462681940

namespace A063493

/-- `∑[A005905(n)-n²]` -/
def P731531894462681940.Spec : Prop :=
  ∀ n, P731531894462681940.a n = A063493 (n + 1)

end A063493

/-! ## A063493.P10826902684460423678

`∑[A010003(n)+2*n²]`
-/

namespace A063493.P10826902684460423678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010003 n + (2 * n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063493.P10826902684460423678

namespace A063493

/-- `∑[A010003(n)+2*n²]` -/
def P10826902684460423678.Spec : Prop :=
  ∀ n, P10826902684460423678.a n = A063493 (n + 1)

end A063493

/-! ## A063493.P8391801032395245603

`∑[A010005(n)-2*n²]`
-/

namespace A063493.P8391801032395245603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010005 n - (2 * n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063493.P8391801032395245603

namespace A063493

/-- `∑[A010005(n)-2*n²]` -/
def P8391801032395245603.Spec : Prop :=
  ∀ n, P8391801032395245603.a n = A063493 (n + 1)

end A063493

/-! ## A063493.P6961231772116171192

`∑[∑[A101103(n+1)]+n²]`
-/

namespace A063493.P6961231772116171192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101103 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063493.P6961231772116171192

namespace A063493

/-- `∑[∑[A101103(n+1)]+n²]` -/
def P6961231772116171192.Spec : Prop :=
  ∀ n, P6961231772116171192.a n = A063493 (n + 1)

end A063493

/-! ## A063493.P14370466661814101266

`floor(∑[(A010015(n)+n²)/2+1])`
-/

namespace A063493.P14370466661814101266
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010015 n + (n ^ 2 : ℤ) : ℚ) / 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A063493.P14370466661814101266

namespace A063493

/-- `floor(∑[(A010015(n)+n²)/2+1])` -/
def P14370466661814101266.Spec : Prop :=
  ∀ n, P14370466661814101266.a n = A063493 (n + 1)

end A063493

/-! ## A063493.P3900901165440030067

`Δ[A002415(n)+n²²]`
-/

namespace A063493.P3900901165440030067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 n + ((n ^ 2) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063493.P3900901165440030067

namespace A063493

/-- `Δ[A002415(n)+n²²]` -/
def P3900901165440030067.Spec : Prop :=
  ∀ n, P3900901165440030067.a n = A063493 (n + 1)

end A063493

/-! ## A063493.P14144252789966181644

`Δ[A000583(n)+n/2*∑[C(n, 2)]]`
-/

namespace A063493.P14144252789966181644
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 n : ℚ) + (n : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063493.P14144252789966181644

namespace A063493

/-- `Δ[A000583(n)+n/2*∑[C(n, 2)]]` -/
def P14144252789966181644.Spec : Prop :=
  ∀ n, P14144252789966181644.a n = (A063493 (n + 1) : ℚ)

end A063493

/-! ## A063493.P9578271090918065024

`∑[A005918(2*n)+n²]`
-/

namespace A063493.P9578271090918065024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 (2 * n) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063493.P9578271090918065024

namespace A063493

/-- `∑[A005918(2*n)+n²]` -/
def P9578271090918065024.Spec : Prop :=
  ∀ n, P9578271090918065024.a n = A063493 (n + 1)

end A063493

/-!
# A063494: a(n) = (2*n - 1)*(7*n^2 - 7*n + 3)/3.

The programs for A063494, the canonical program `A063494.P9121033367143698868` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063494 has offset 1).

The definition of A063494 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)-1)*(7*(n+1)²-7*(n+1)+3)/3` (program `A063494.P651550034393316257`, by `A063494.P651550034393316257.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A063494.P651550034393316257

`(2*(n+1)-1)*(7*(n+1)²-7*(n+1)+3)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A063494.P651550034393316257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - 1 : ℚ) * (((7 * (n + 1) ^ 2 : ℤ) - (7 * (n + 1) : ℤ) + 3 : ℚ) / 3)

end

end A063494.P651550034393316257

namespace A063494

/-- `(2*(n+1)-1)*(7*(n+1)²-7*(n+1)+3)/3` -/
def P651550034393316257.Spec : Prop :=
  ∀ n, P651550034393316257.a n = (A063494 (n + 1) : ℚ)

theorem P651550034393316257.correct : P651550034393316257.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A063494, Nat.add_sub_cancel, A063494.P651550034393316257.a, A063494.P9121033367143698868.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A063494, Nat.add_sub_cancel, A063494.P651550034393316257.a, A063494.P9121033367143698868.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A063494

/-! ## A063494.P9121033367143698868

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=17, a(2)=75, a(3)=203`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063494

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P9121033367143698868.Spec : Prop :=
  ∀ n, P9121033367143698868.a n = A063494 (n + 1)

theorem P9121033367143698868.correct : P9121033367143698868.Spec := by
  intro n
  simp only [A063494, Nat.add_sub_cancel]

end A063494

/-! ## A063494.P17088142617504149097

`∑[A005905(n)]`
-/

namespace A063494.P17088142617504149097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063494.P17088142617504149097

namespace A063494

/-- `∑[A005905(n)]` -/
def P17088142617504149097.Spec : Prop :=
  ∀ n, P17088142617504149097.a n = A063494 (n + 1)

end A063494

/-! ## A063494.P14087932142270134214

`∑[A010004(n)+n²]`
-/

namespace A063494.P14087932142270134214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010004 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063494.P14087932142270134214

namespace A063494

/-- `∑[A010004(n)+n²]` -/
def P14087932142270134214.Spec : Prop :=
  ∀ n, P14087932142270134214.a n = A063494 (n + 1)

end A063494

/-! ## A063494.P2932544405892726354

`∑[A010005(n)-n²]`
-/

namespace A063494.P2932544405892726354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010005 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063494.P2932544405892726354

namespace A063494

/-- `∑[A010005(n)-n²]` -/
def P2932544405892726354.Spec : Prop :=
  ∀ n, P2932544405892726354.a n = A063494 (n + 1)

end A063494

/-! ## A063494.P3117194393323657277

`Δ[A008911(n)+n²²]`
-/

namespace A063494.P3117194393323657277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008911 n + ((n ^ 2) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063494.P3117194393323657277

namespace A063494

/-- `Δ[A008911(n)+n²²]` -/
def P3117194393323657277.Spec : Prop :=
  ∀ n, P3117194393323657277.a n = A063494 (n + 1)

end A063494

/-! ## A063494.P1355168546712803252

`∑[A005901(n)+(2*n)²]`
-/

namespace A063494.P1355168546712803252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005901 n + ((2 * n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063494.P1355168546712803252

namespace A063494

/-- `∑[A005901(n)+(2*n)²]` -/
def P1355168546712803252.Spec : Prop :=
  ∀ n, P1355168546712803252.a n = A063494 (n + 1)

end A063494

/-! ## A063494.P2008170515812942106

`∑[A010014(n)-A033583(n)]`
-/

namespace A063494.P2008170515812942106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010014 n - A033583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063494.P2008170515812942106

namespace A063494

/-- `∑[A010014(n)-A033583(n)]` -/
def P2008170515812942106.Spec : Prop :=
  ∀ n, P2008170515812942106.a n = A063494 (n + 1)

end A063494

/-! ## A063494.P3918066019218936807

`Δ[n*A004126(n)]`
-/

namespace A063494.P3918066019218936807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063494.P3918066019218936807

namespace A063494

/-- `Δ[n*A004126(n)]` -/
def P3918066019218936807.Spec : Prop :=
  ∀ n, P3918066019218936807.a n = A063494 (n + 1)

end A063494

/-! ## A063494.P11279934328478253936

`A212968(2*n)`
-/

namespace A063494.P11279934328478253936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212968 (2 * n)

end

end A063494.P11279934328478253936

namespace A063494

/-- `A212968(2*n)` -/
def P11279934328478253936.Spec : Prop :=
  ∀ n, P11279934328478253936.a n = A063494 (n + 1)

end A063494

/-! ## A063494.P1092573004071814262

`A061349(Δ[n²])`
-/

namespace A063494.P1092573004071814262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061349 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A063494.P1092573004071814262

namespace A063494

/-- `A061349(Δ[n²])` -/
def P1092573004071814262.Spec : Prop :=
  ∀ n, P1092573004071814262.a n = A063494 (n + 1)

end A063494

/-! ## A063494.P3782398191257153728

`A185505(2*n+1)/Δ[n²]`
-/

namespace A063494.P3782398191257153728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185505 (2 * n + 1) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A063494.P3782398191257153728

namespace A063494

/-- `A185505(2*n+1)/Δ[n²]` -/
def P3782398191257153728.Spec : Prop :=
  ∀ n, P3782398191257153728.a n = (A063494 (n + 1) : ℚ)

end A063494

/-! ## A063494.P12520097632100080532

`∩[A061349(n), A212968(n)]`
-/

namespace A063494.P12520097632100080532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061349 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212968 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063494.P12520097632100080532

namespace A063494

/-- `∩[A061349(n), A212968(n)]` -/
def P12520097632100080532.Spec : Prop :=
  ∀ n, (P12520097632100080532.a n : ℤ) = A063494 (n + 1)

end A063494

/-! ## A063494.P4183301416855881477

`∑[A005918(2*n)+A000982(2*n)]`
-/

namespace A063494.P4183301416855881477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 (2 * n) + A000982 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063494.P4183301416855881477

namespace A063494

/-- `∑[A005918(2*n)+A000982(2*n)]` -/
def P4183301416855881477.Spec : Prop :=
  ∀ n, P4183301416855881477.a n = A063494 (n + 1)

end A063494

/-! ## A063494.P1670836526797730169

`(A006331(2*n+1)+A002411(2*n))/2`
-/

namespace A063494.P1670836526797730169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006331 (2 * n + 1) + A002411 (2 * n) : ℚ) / 2

end

end A063494.P1670836526797730169

namespace A063494

/-- `(A006331(2*n+1)+A002411(2*n))/2` -/
def P1670836526797730169.Spec : Prop :=
  ∀ n, P1670836526797730169.a n = (A063494 (n + 1) : ℚ)

end A063494

/-! ## A063494.P673880592699092689

`(A006331(2*n)+A006002(2*n+1))/2`
-/

namespace A063494.P673880592699092689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006331 (2 * n) + A006002 (2 * n + 1) : ℚ) / 2

end

end A063494.P673880592699092689

namespace A063494

/-- `(A006331(2*n)+A006002(2*n+1))/2` -/
def P673880592699092689.Spec : Prop :=
  ∀ n, P673880592699092689.a n = (A063494 (n + 1) : ℚ)

end A063494

/-! ## A063494.P16999591042089051359

`(A006003(2*n+1)+A005900(2*n+1))/2`
-/

namespace A063494.P16999591042089051359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006003 (2 * n + 1) + A005900 (2 * n + 1) : ℚ) / 2

end

end A063494.P16999591042089051359

namespace A063494

/-- `(A006003(2*n+1)+A005900(2*n+1))/2` -/
def P16999591042089051359.Spec : Prop :=
  ∀ n, P16999591042089051359.a n = (A063494 (n + 1) : ℚ)

end A063494

/-! ## A063494.P11422445067399616816

`∑[A005893(3*n)-(2*n)²]`
-/

namespace A063494.P11422445067399616816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (3 * n) - ((2 * n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063494.P11422445067399616816

namespace A063494

/-- `∑[A005893(3*n)-(2*n)²]` -/
def P11422445067399616816.Spec : Prop :=
  ∀ n, P11422445067399616816.a n = A063494 (n + 1)

end A063494

/-!
# A063495: a(n) = (2*n-1)*(5*n^2-5*n+2)/2.

The programs for A063495, the canonical program `A063495.P9934370336374609921` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063495 has offset 1).

The definition of A063495 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)-1)*(5*(n+1)²-5*(n+1)+2)/2` (program `A063495.P14655603667879209989`, by `A063495.P14655603667879209989.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A063495.P14655603667879209989

`(2*(n+1)-1)*(5*(n+1)²-5*(n+1)+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A063495.P14655603667879209989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - 1 : ℚ) * (((5 * (n + 1) ^ 2 : ℤ) - (5 * (n + 1) : ℤ) + 2 : ℚ) / 2)

end

end A063495.P14655603667879209989

namespace A063495

/-- `(2*(n+1)-1)*(5*(n+1)²-5*(n+1)+2)/2` -/
def P14655603667879209989.Spec : Prop :=
  ∀ n, P14655603667879209989.a n = (A063495 (n + 1) : ℚ)

theorem P14655603667879209989.correct : P14655603667879209989.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A063495, Nat.add_sub_cancel, A063495.P14655603667879209989.a, A063495.P9934370336374609921.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A063495, Nat.add_sub_cancel, A063495.P14655603667879209989.a, A063495.P9934370336374609921.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A063495

/-! ## A063495.P9934370336374609921

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=18, a(2)=80, a(3)=217`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063495

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P9934370336374609921.Spec : Prop :=
  ∀ n, P9934370336374609921.a n = A063495 (n + 1)

theorem P9934370336374609921.correct : P9934370336374609921.Spec := by
  intro n
  simp only [A063495, Nat.add_sub_cancel]

end A063495

/-! ## A063495.P8059836956316915831

`∑[A010005(n)]`
-/

namespace A063495.P8059836956316915831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063495.P8059836956316915831

namespace A063495

/-- `∑[A010005(n)]` -/
def P8059836956316915831.Spec : Prop :=
  ∀ n, P8059836956316915831.a n = A063495 (n + 1)

end A063495

/-! ## A063495.P13963333771793018342

`∑[A005905(n)+n²]`
-/

namespace A063495.P13963333771793018342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005905 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063495.P13963333771793018342

namespace A063495

/-- `∑[A005905(n)+n²]` -/
def P13963333771793018342.Spec : Prop :=
  ∀ n, P13963333771793018342.a n = A063495 (n + 1)

end A063495

/-! ## A063495.P4991337701581470876

`∑[A010006(n)-n²]`
-/

namespace A063495.P4991337701581470876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010006 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063495.P4991337701581470876

namespace A063495

/-- `∑[A010006(n)-n²]` -/
def P4991337701581470876.Spec : Prop :=
  ∀ n, P4991337701581470876.a n = A063495 (n + 1)

end A063495

/-! ## A063495.P17746422686931751903

`ceil(A005904(n)/2+n)`
-/

namespace A063495.P17746422686931751903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005904 n : ℚ) / 2 + (n : ℚ)⌉

end

end A063495.P17746422686931751903

namespace A063495

/-- `ceil(A005904(n)/2+n)` -/
def P17746422686931751903.Spec : Prop :=
  ∀ n, P17746422686931751903.a n = A063495 (n + 1)

end A063495

/-! ## A063495.P3421667094874540673

`Δ[A006011(n)+n²²]`
-/

namespace A063495.P3421667094874540673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006011 n + ((n ^ 2) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063495.P3421667094874540673

namespace A063495

/-- `Δ[A006011(n)+n²²]` -/
def P3421667094874540673.Spec : Prop :=
  ∀ n, P3421667094874540673.a n = A063495 (n + 1)

end A063495

/-! ## A063495.P9114943258027001975

`∑[A005897(n)+(3*n)²]`
-/

namespace A063495.P9114943258027001975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n + ((3 * n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063495.P9114943258027001975

namespace A063495

/-- `∑[A005897(n)+(3*n)²]` -/
def P9114943258027001975.Spec : Prop :=
  ∀ n, P9114943258027001975.a n = A063495 (n + 1)

end A063495

/-! ## A063495.P3654535288877706821

`∑[A008527(n)+7*n²]`
-/

namespace A063495.P3654535288877706821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008527 n + (7 * n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063495.P3654535288877706821

namespace A063495

/-- `∑[A008527(n)+7*n²]` -/
def P3654535288877706821.Spec : Prop :=
  ∀ n, P3654535288877706821.a n = A063495 (n + 1)

end A063495

/-! ## A063495.P17809795212454257451

`∑[A016766(n)+A005897(n)]`
-/

namespace A063495.P17809795212454257451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016766 n + A005897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063495.P17809795212454257451

namespace A063495

/-- `∑[A016766(n)+A005897(n)]` -/
def P17809795212454257451.Spec : Prop :=
  ∀ n, P17809795212454257451.a n = A063495 (n + 1)

end A063495

/-! ## A063495.P2586870275464966106

`∑[A010008(n)-A033428(n)]`
-/

namespace A063495.P2586870275464966106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010008 n - A033428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063495.P2586870275464966106

namespace A063495

/-- `∑[A010008(n)-A033428(n)]` -/
def P2586870275464966106.Spec : Prop :=
  ∀ n, P2586870275464966106.a n = A063495 (n + 1)

end A063495

/-! ## A063495.P9693351981895642286

`Δ[A187756(n)-n/2*∑[C(n, 2)]]`
-/

namespace A063495.P9693351981895642286
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187756 n : ℚ) - (n : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063495.P9693351981895642286

namespace A063495

/-- `Δ[A187756(n)-n/2*∑[C(n, 2)]]` -/
def P9693351981895642286.Spec : Prop :=
  ∀ n, P9693351981895642286.a n = (A063495 (n + 1) : ℚ)

end A063495

/-!
# A063496: a(n) = (2*n - 1)*(8*n^2 - 8*n + 3)/3.

The programs for A063496, the canonical program `A063496.P4774736945877541079` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063496 has offset 1).

The definition of A063496 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063496.P14163153357494252218

`(2*(n+1)-1)*(8*(n+1)²-8*(n+1)+3)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A063496.P14163153357494252218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - 1 : ℚ) * (((8 * (n + 1) ^ 2 : ℤ) - (8 * (n + 1) : ℤ) + 3 : ℚ) / 3)

end

end A063496.P14163153357494252218

namespace A063496

/-- `(2*(n+1)-1)*(8*(n+1)²-8*(n+1)+3)/3` -/
def P14163153357494252218.Spec : Prop :=
  ∀ n, P14163153357494252218.a n = (A063496 (n + 1) : ℚ)

end A063496

/-! ## A063496.P4774736945877541079

`A005900(2*(n+1)-1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A063496

/-- `A005900(2*(n+1)-1)` -/
def P4774736945877541079.Spec : Prop :=
  ∀ n, P4774736945877541079.a n = A063496 (n + 1)

theorem P4774736945877541079.correct : P4774736945877541079.Spec := by
  intro n
  simp only [A063496, Nat.add_sub_cancel]

end A063496

/-! ## A063496.P2657989412869563056

`Δ[C((2*n)², 2)/6]`
-/

namespace A063496.P2657989412869563056
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((2 * n) ^ 2) 2 : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063496.P2657989412869563056

namespace A063496

/-- `Δ[C((2*n)², 2)/6]` -/
def P2657989412869563056.Spec : Prop :=
  ∀ n, P2657989412869563056.a n = (A063496 (n + 1) : ℚ)

end A063496

/-! ## A063496.P39160896605967913

`∑[floor((2/acot(2*n))²)]`
-/

namespace A063496.P39160896605967913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 / SequenceMachineLib.acot (2 * n : ℝ)) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063496.P39160896605967913

namespace A063496

/-- `∑[floor((2/acot(2*n))²)]` -/
def P39160896605967913.Spec : Prop :=
  ∀ n, P39160896605967913.a n = A063496 (n + 1)

end A063496

/-! ## A063496.P16127102710014266902

`Δ[n*C(2*n+1, 3)]`
-/

namespace A063496.P16127102710014266902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (2 * n + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A063496.P16127102710014266902

namespace A063496

/-- `Δ[n*C(2*n+1, 3)]` -/
def P16127102710014266902.Spec : Prop :=
  ∀ n, P16127102710014266902.a n = A063496 (n + 1)

end A063496

/-! ## A063496.P1940625184630068999

`floor((4*n)²+a(n-1)+2)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A063496.P1940625184630068999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (4 * n) ^ 2 + (a (n - 1) + 2)

end

end A063496.P1940625184630068999

namespace A063496

/-- `floor((4*n)²+a(n-1)+2)` -/
def P1940625184630068999.Spec : Prop :=
  ∀ n, (P1940625184630068999.a n : ℤ) = A063496 (n + 1)

end A063496

/-! ## A063496.P8730414329167975805

`∑[A010006(n)]`
-/

namespace A063496.P8730414329167975805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063496.P8730414329167975805

namespace A063496

/-- `∑[A010006(n)]` -/
def P8730414329167975805.Spec : Prop :=
  ∀ n, P8730414329167975805.a n = A063496 (n + 1)

end A063496

/-! ## A063496.P6474488812429024252

`(A167498(n)-2)/4`
-/

namespace A063496.P6474488812429024252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167498 n - 2 : ℚ) / 4

end

end A063496.P6474488812429024252

namespace A063496

/-- `(A167498(n)-2)/4` -/
def P6474488812429024252.Spec : Prop :=
  ∀ n, P6474488812429024252.a n = (A063496 (n + 1) : ℚ)

end A063496

/-! ## A063496.P8863255723955818568

`∑[A010005(n)+n²]`
-/

namespace A063496.P8863255723955818568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010005 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063496.P8863255723955818568

namespace A063496

/-- `∑[A010005(n)+n²]` -/
def P8863255723955818568.Spec : Prop :=
  ∀ n, P8863255723955818568.a n = A063496 (n + 1)

end A063496

/-! ## A063496.P13189623887724599594

`∑[A010007(n)-n²]`
-/

namespace A063496.P13189623887724599594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010007 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063496.P13189623887724599594

namespace A063496

/-- `∑[A010007(n)-n²]` -/
def P13189623887724599594.Spec : Prop :=
  ∀ n, P13189623887724599594.a n = A063496 (n + 1)

end A063496

/-! ## A063496.P4407132176100386048

`Δ[n*(A035597(n)-n)]`
-/

namespace A063496.P4407132176100386048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A035597 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063496.P4407132176100386048

namespace A063496

/-- `Δ[n*(A035597(n)-n)]` -/
def P4407132176100386048.Spec : Prop :=
  ∀ n, P4407132176100386048.a n = A063496 (n + 1)

end A063496

/-! ## A063496.P4530042588117411473

`Δ[Δ[C(2*n+1, 5)]]`
-/

namespace A063496.P4530042588117411473
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063496.P4530042588117411473

namespace A063496

/-- `Δ[Δ[C(2*n+1, 5)]]` -/
def P4530042588117411473.Spec : Prop :=
  ∀ n, P4530042588117411473.a n = A063496 (n + 1)

end A063496

/-! ## A063496.P11083412037927897680

`Δ[A187756(n)]`
-/

namespace A063496.P11083412037927897680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063496.P11083412037927897680

namespace A063496

/-- `Δ[A187756(n)]` -/
def P11083412037927897680.Spec : Prop :=
  ∀ n, P11083412037927897680.a n = A063496 (n + 1)

end A063496

/-! ## A063496.P14851468412695602538

`Δ[n*A000447(n)]`
-/

namespace A063496.P14851468412695602538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063496.P14851468412695602538

namespace A063496

/-- `Δ[n*A000447(n)]` -/
def P14851468412695602538.Spec : Prop :=
  ∀ n, P14851468412695602538.a n = A063496 (n + 1)

end A063496

/-! ## A063496.P5753708883488928573

`Δ[n/2*A259110(n)]`
-/

namespace A063496.P5753708883488928573
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A259110 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063496.P5753708883488928573

namespace A063496

/-- `Δ[n/2*A259110(n)]` -/
def P5753708883488928573.Spec : Prop :=
  ∀ n, P5753708883488928573.a n = (A063496 (n + 1) : ℚ)

end A063496

/-! ## A063496.P8247844041011993757

`Δ[A112742(n)+n²²]`
-/

namespace A063496.P8247844041011993757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112742 n + ((n ^ 2) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063496.P8247844041011993757

namespace A063496

/-- `Δ[A112742(n)+n²²]` -/
def P8247844041011993757.Spec : Prop :=
  ∀ n, P8247844041011993757.a n = A063496 (n + 1)

end A063496

/-! ## A063496.P5631965201535414541

`Δ[n*∑[A004273(n)²]]`
-/

namespace A063496.P5631965201535414541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063496.P5631965201535414541

namespace A063496

/-- `Δ[n*∑[A004273(n)²]]` -/
def P5631965201535414541.Spec : Prop :=
  ∀ n, P5631965201535414541.a n = A063496 (n + 1)

end A063496

/-! ## A063496.P3070591899912991827

`(A166911(2*n)-1)/2`
-/

namespace A063496.P3070591899912991827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166911 (2 * n) - 1 : ℚ) / 2

end

end A063496.P3070591899912991827

namespace A063496

/-- `(A166911(2*n)-1)/2` -/
def P3070591899912991827.Spec : Prop :=
  ∀ n, P3070591899912991827.a n = (A063496 (n + 1) : ℚ)

end A063496

/-! ## A063496.P11487476210893470839

`A352116(Δ[n²])`
-/

namespace A063496.P11487476210893470839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352116 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A063496.P11487476210893470839

namespace A063496

/-- `A352116(Δ[n²])` -/
def P11487476210893470839.Spec : Prop :=
  ∀ n, P11487476210893470839.a n = A063496 (n + 1)

end A063496

/-! ## A063496.P4474141881094999383

`∑[A005899(2*n)]`
-/

namespace A063496.P4474141881094999383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063496.P4474141881094999383

namespace A063496

/-- `∑[A005899(2*n)]` -/
def P4474141881094999383.Spec : Prop :=
  ∀ n, P4474141881094999383.a n = A063496 (n + 1)

end A063496

/-!
# A063497: Number of atoms in first n shells of type I hyperfullerene.

The programs for A063497, the canonical program `A063497.P14189921204005272401` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063497 has offset 0).

The definition of A063497 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063497.P14189921204005272401

`20*n^3+30*n²+10*n`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063497

/-- `20*n^3+30*n²+10*n` -/
def P14189921204005272401.Spec : Prop :=
  ∀ n, (P14189921204005272401.a n : ℤ) = A063497 n

theorem P14189921204005272401.correct : P14189921204005272401.Spec := by
  intro n
  simp only [A063497]

end A063497

/-! ## A063497.P1853609517841846183

`Δ[10*C(n², 2)]`
-/

namespace A063497.P1853609517841846183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * Nat.choose (n ^ 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A063497.P1853609517841846183

namespace A063497

/-- `Δ[10*C(n², 2)]` -/
def P1853609517841846183.Spec : Prop :=
  ∀ n, P1853609517841846183.a n = A063497 n

end A063497

/-! ## A063497.P13137396779644077381

`3*5*C(2*(n+1), 3)`
-/

namespace A063497.P13137396779644077381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (5 * Nat.choose (2 * (n + 1)) 3)

end

end A063497.P13137396779644077381

namespace A063497

/-- `3*5*C(2*(n+1), 3)` -/
def P13137396779644077381.Spec : Prop :=
  ∀ n, (P13137396779644077381.a n : ℤ) = A063497 n

end A063497

/-! ## A063497.P4319110103175445547

`lcm(4, 2*n+1)*∑[5*n]`
-/

namespace A063497.P4319110103175445547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063497.P4319110103175445547

namespace A063497

/-- `lcm(4, 2*n+1)*∑[5*n]` -/
def P4319110103175445547.Spec : Prop :=
  ∀ n, (P4319110103175445547.a n : ℤ) = A063497 n

end A063497

/-! ## A063497.P4663935633832397343

`5*n*∑[a(n-1)+8]` with `a(0)=2`
-/

namespace A063497.P4663935633832397343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A063497.P4663935633832397343

namespace A063497

/-- `5*n*∑[a(n-1)+8]` -/
def P4663935633832397343.Spec : Prop :=
  ∀ n, (P4663935633832397343.a n : ℤ) = A063497 n

end A063497

/-! ## A063497.P4106227125622708847

`10*(2*n+1)*lcm(n, n+1)`
-/

namespace A063497.P4106227125622708847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (2 * n + 1) * Nat.lcm n (n + 1)

end

end A063497.P4106227125622708847

namespace A063497

/-- `10*(2*n+1)*lcm(n, n+1)` -/
def P4106227125622708847.Spec : Prop :=
  ∀ n, (P4106227125622708847.a n : ℤ) = A063497 n

end A063497

/-! ## A063497.P11049403596590377114

`3*A188050(n)`
-/

namespace A063497.P11049403596590377114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A188050 n

end

end A063497.P11049403596590377114

namespace A063497

/-- `3*A188050(n)` -/
def P11049403596590377114.Spec : Prop :=
  ∀ n, P11049403596590377114.a n = A063497 n

end A063497

/-! ## A063497.P17385860114723555975

`5*A300758(n)`
-/

namespace A063497.P17385860114723555975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A300758 n

end

end A063497.P17385860114723555975

namespace A063497

/-- `5*A300758(n)` -/
def P17385860114723555975.Spec : Prop :=
  ∀ n, P17385860114723555975.a n = A063497 n

end A063497

/-! ## A063497.P17204861667092833018

`10*A055112(n)`
-/

namespace A063497.P17204861667092833018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A055112 n

end

end A063497.P17204861667092833018

namespace A063497

/-- `10*A055112(n)` -/
def P17204861667092833018.Spec : Prop :=
  ∀ n, P17204861667092833018.a n = A063497 n

end A063497

/-! ## A063497.P13032132627009177395

`20*A059270(n)`
-/

namespace A063497.P13032132627009177395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 * A059270 n

end

end A063497.P13032132627009177395

namespace A063497

/-- `20*A059270(n)` -/
def P13032132627009177395.Spec : Prop :=
  ∀ n, P13032132627009177395.a n = A063497 n

end A063497

/-! ## A063497.P7094708786402702025

`30*A006331(n)`
-/

namespace A063497.P7094708786402702025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * A006331 n

end

end A063497.P7094708786402702025

namespace A063497

/-- `30*A006331(n)` -/
def P7094708786402702025.Spec : Prop :=
  ∀ n, P7094708786402702025.a n = A063497 n

end A063497

/-! ## A063497.P18417024958043916629

`60*A000330(n)`
-/

namespace A063497.P18417024958043916629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  60 * A000330 n

end

end A063497.P18417024958043916629

namespace A063497

/-- `60*A000330(n)` -/
def P18417024958043916629.Spec : Prop :=
  ∀ n, P18417024958043916629.a n = A063497 n

end A063497

/-! ## A063497.P6952917069673595088

`∑[A158673(n)-1]`
-/

namespace A063497.P6952917069673595088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158673 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063497.P6952917069673595088

namespace A063497

/-- `∑[A158673(n)-1]` -/
def P6952917069673595088.Spec : Prop :=
  ∀ n, P6952917069673595088.a n = A063497 n

end A063497

/-! ## A063497.P8018134663999150761

`∑[2*A244636(n)]`
-/

namespace A063497.P8018134663999150761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244636 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063497.P8018134663999150761

namespace A063497

/-- `∑[2*A244636(n)]` -/
def P8018134663999150761.Spec : Prop :=
  ∀ n, P8018134663999150761.a n = A063497 n

end A063497

/-! ## A063497.P3565662936066157199

`∑[3*A195322(n)]`
-/

namespace A063497.P3565662936066157199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A195322 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063497.P3565662936066157199

namespace A063497

/-- `∑[3*A195322(n)]` -/
def P3565662936066157199.Spec : Prop :=
  ∀ n, P3565662936066157199.a n = A063497 n

end A063497

/-! ## A063497.P7044492258984653651

`∑[5*A135453(n)]`
-/

namespace A063497.P7044492258984653651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A135453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063497.P7044492258984653651

namespace A063497

/-- `∑[5*A135453(n)]` -/
def P7044492258984653651.Spec : Prop :=
  ∀ n, P7044492258984653651.a n = A063497 n

end A063497

/-! ## A063497.P10625391825248827303

`∑[n*A169823(n)]`
-/

namespace A063497.P10625391825248827303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A169823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063497.P10625391825248827303

namespace A063497

/-- `∑[n*A169823(n)]` -/
def P10625391825248827303.Spec : Prop :=
  ∀ n, P10625391825248827303.a n = A063497 n

end A063497

/-! ## A063497.P7219032521421313294

`3*5*A002492(n)`
-/

namespace A063497.P7219032521421313294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (5 * A002492 n)

end

end A063497.P7219032521421313294

namespace A063497

/-- `3*5*A002492(n)` -/
def P7219032521421313294.Spec : Prop :=
  ∀ n, P7219032521421313294.a n = A063497 n

end A063497

/-! ## A063497.P1267666241986562267

`5*n*A280344(n)`
-/

namespace A063497.P1267666241986562267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ((n : ℤ) * A280344 n)

end

end A063497.P1267666241986562267

namespace A063497

/-- `5*n*A280344(n)` -/
def P1267666241986562267.Spec : Prop :=
  ∀ n, P1267666241986562267.a n = A063497 n

end A063497

/-!
# A063498: Number of atoms in cluster of n layers around C_60.

The programs for A063498, the canonical program `A063498.P1596618943449873521` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063498 has offset 0).

The definition of A063498 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063498.P1596618943449873521

`10*n²+(10*n^3+56*n)/3`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063498

/-- `10*n²+(10*n^3+56*n)/3` -/
def P1596618943449873521.Spec : Prop :=
  ∀ n, P1596618943449873521.a n = (A063498 n : ℚ)

end A063498

/-! ## A063498.P6803097572280879292

`2*(5*A145069(n)+n)`
-/

namespace A063498.P6803097572280879292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (5 * A145069 n + (n : ℤ))

end

end A063498.P6803097572280879292

namespace A063498

/-- `2*(5*A145069(n)+n)` -/
def P6803097572280879292.Spec : Prop :=
  ∀ n, P6803097572280879292.a n = A063498 n

end A063498

/-! ## A063498.P9572086399607616307

`4*(A008585(n)+∑[∑[5*n]])`
-/

namespace A063498.P9572086399607616307
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A008585 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A063498.P9572086399607616307

namespace A063498

/-- `4*(A008585(n)+∑[∑[5*n]])` -/
def P9572086399607616307.Spec : Prop :=
  ∀ n, P9572086399607616307.a n = A063498 n

end A063498

/-! ## A063498.P4350235219594741113

`4*(A092185(n)+A005843(n))`
-/

namespace A063498.P4350235219594741113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A092185 n + A005843 n)

end

end A063498.P4350235219594741113

namespace A063498

/-- `4*(A092185(n)+A005843(n))` -/
def P4350235219594741113.Spec : Prop :=
  ∀ n, P4350235219594741113.a n = A063498 n

end A063498

/-! ## A063498.P3974465726530476205

`2*(A008588(n)+∑[A124080(n)])`
-/

namespace A063498.P3974465726530476205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A008588 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063498.P3974465726530476205

namespace A063498

/-- `2*(A008588(n)+∑[A124080(n)])` -/
def P3974465726530476205.Spec : Prop :=
  ∀ n, P3974465726530476205.a n = A063498 n

end A063498

/-! ## A063498.P13430388691461327237

`4*(∑[A016885(∑[n])]-3)`
-/

namespace A063498.P13430388691461327237
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j - 3)

end

end A063498.P13430388691461327237

namespace A063498

/-- `4*(∑[A016885(∑[n])]-3)` -/
def P13430388691461327237.Spec : Prop :=
  ∀ n, P13430388691461327237.a n = A063498 n

end A063498

/-! ## A063498.P16314487022551382347

`2*(∑[A017341(∑[n])]-6)`
-/

namespace A063498.P16314487022551382347
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - 6)

end

end A063498.P16314487022551382347

namespace A063498

/-- `2*(∑[A017341(∑[n])]-6)` -/
def P16314487022551382347.Spec : Prop :=
  ∀ n, P16314487022551382347.a n = A063498 n

end A063498

/-!
# A063499: Primes of the form prime(n) + n!.

The programs for A063499, there is no canonical definition to state claims against.
-/

/-! ## A063499.P18368717748056551838

`A121926(A064278(n+1))`
-/

namespace A063499.P18368717748056551838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121926 (A064278 (n + 1)).toNat

end

end A063499.P18368717748056551838

/-! ## A063499.P15919599501239090203

`A121926(A325323(n+1))`
-/

namespace A063499.P15919599501239090203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121926 (A325323 (n + 1)).toNat

end

end A063499.P15919599501239090203

/-! ## A063499.P6193707946952797055

`A000040(A064278(n+1))+A325323(n+1)!`
-/

namespace A063499.P6193707946952797055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A064278 (n + 1)).toNat + (Nat.factorial (A325323 (n + 1)).toNat : ℤ)

end

end A063499.P6193707946952797055

