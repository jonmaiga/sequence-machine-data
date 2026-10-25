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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A193507: Ramanujan primes of the second kind: a(n) is the smallest prime such that if prime x >= a(n), then pi(x) - pi(x/2) >= n, where pi(x) is the number of primes <= x.

The programs for A193507, there is no canonical definition to state claims against.
-/

/-! ## A193507.P11561116704452701849

`A168425(n%a(n-1))` with `a(0)=2`
-/

namespace A193507.P11561116704452701849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A168425 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A193507.P11561116704452701849

/-! ## A193507.P17155363555125624256

`p?[∪[2*n, A168425(n+1)]]`
-/

namespace A193507.P17155363555125624256
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168425 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A193507.P17155363555125624256

/-! ## A193507.P1932885871093678240

`A168425(n)+val(n, a(n-1))` with `a(0)=2`
-/

namespace A193507.P1932885871093678240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A168425 n + (SequenceMachineLib.valuation n (a (n - 1)).toNat : ℤ)

end

end A193507.P1932885871093678240

/-! ## A193507.P7947847252683846196

`A168425(A056171(a(n-1)))` with `a(0)=2`
-/

namespace A193507.P7947847252683846196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A168425 (A056171 (a (n - 1)).toNat).toNat

end

end A193507.P7947847252683846196

/-! ## A193507.P2133494960991153095

`∪[A168425(n+1), A109119(n)]`
-/

namespace A193507.P2133494960991153095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109119 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A193507.P2133494960991153095

/-! ## A193507.P13094274385126362616

`A168425(A028310(n))-floor(acot(n))`
-/

namespace A193507.P13094274385126362616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168425 (A028310 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A193507.P13094274385126362616

/-! ## A193507.P13201264236566620814

`p?[∪[A168425(n+1), A004277(n)]]`
-/

namespace A193507.P13201264236566620814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168425 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A193507.P13201264236566620814

/-! ## A193507.P18291306617789236404

`p?[∪[A168425(n+1), A005843(n)]]`
-/

namespace A193507.P18291306617789236404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168425 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A193507.P18291306617789236404

/-! ## A193507.P12965932622300508046

`A194186(n+1)+A080359(n+1)`
-/

namespace A193507.P12965932622300508046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194186 (n + 1) + A080359 (n + 1)

end

end A193507.P12965932622300508046

/-! ## A193507.P7090711952691922445

`A104272(n+1)-A194184(n+1)`
-/

namespace A193507.P7090711952691922445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1) - A194184 (n + 1)

end

end A193507.P7090711952691922445

/-!
# A193508: a(n) = n if n is not a power of 2 and a(2^n) = a(n).

The programs for A193508, there is no canonical definition to state claims against.
-/

/-! ## A193508.P13331261809909046502

`n%(n*A000120(n)-a(A073642(n)))` with `a(0)=0`
-/

namespace A193508.P13331261809909046502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (n : ℤ) ((n : ℤ) * A000120 n - a (A073642 n).toNat)

end

end A193508.P13331261809909046502

/-! ## A193508.P15269432633189401371

`n%A042948(A000523(n+1)^A000120(n))`
-/

namespace A193508.P15269432633189401371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A042948 (SequenceMachineLib.roundAway ((A000523 (n + 1) : ℚ) ^ (A000120 n : ℤ))).toNat)

end

end A193508.P15269432633189401371

/-! ## A193508.P5332730163569617223

`A233583(n+1)%A325325(A052330(n))`
-/

namespace A193508.P5332730163569617223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233583 (n + 1)) (A325325 (A052330 n).toNat)

end

end A193508.P5332730163569617223

/-! ## A193508.P2192729998375969395

`n%A009238(A064433(n+1))`
-/

namespace A193508.P2192729998375969395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A009238 (A064433 (n + 1)).toNat)

end

end A193508.P2192729998375969395

/-!
# A193509: Number of odd divisors of Omega(n).

The programs for A193509, the canonical program `A193509.P11790490675340874648` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193509 has offset 1).

The definition of A193509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193509.P11790490675340874648

`∑{d}[A001222(n+1), #%2]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A193509

/-- `∑{d}[A001222(n+1), #%2]` -/
def P11790490675340874648.Spec : Prop :=
  ∀ n, (P11790490675340874648.a n : ℤ) = A193509 (n + 1)

theorem P11790490675340874648.correct : P11790490675340874648.Spec := by
  intro n
  simp only [A193509, Nat.add_sub_cancel]

end A193509

/-! ## A193509.P1714333343785530783

`∑{e}[A297165(∑{e}[n+1, #]), #]`
-/

namespace A193509.P1714333343785530783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297165 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A193509.P1714333343785530783

namespace A193509

/-- `∑{e}[A297165(∑{e}[n+1, #]), #]` -/
def P1714333343785530783.Spec : Prop :=
  ∀ n, (P1714333343785530783.a n : ℤ) = A193509 (n + 1)

end A193509

/-! ## A193509.P5862624605351646295

`∑{d}[A001222(n+1), A000035(#)]`
-/

namespace A193509.P5862624605351646295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000035 d

end

end A193509.P5862624605351646295

namespace A193509

/-- `∑{d}[A001222(n+1), A000035(#)]` -/
def P5862624605351646295.Spec : Prop :=
  ∀ n, P5862624605351646295.a n = A193509 (n + 1)

theorem P5862624605351646295.correct : P5862624605351646295.Spec := by
  intro n
  simp only [A193509, Nat.add_sub_cancel, A193509.P5862624605351646295.f1, A193509.P5862624605351646295.a, A193509.P11790490675340874648.f1, A193509.P11790490675340874648.a, A000035, A000035.P2023072528413494694.a, A001222, A001222.P11318177267732088261.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193509

/-! ## A193509.P11930325688277226946

`A001227(A086436(n+1))%A008498(n)`
-/

namespace A193509.P11930325688277226946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001227 (A086436 (n + 1)).toNat) (A008498 n)

end

end A193509.P11930325688277226946

namespace A193509

/-- `A001227(A086436(n+1))%A008498(n)` -/
def P11930325688277226946.Spec : Prop :=
  ∀ n, P11930325688277226946.a n = A193509 (n + 1)

end A193509

/-! ## A193509.P14390600029703129251

`A105149(A001222(n+1)%A282727(2*n+1))`
-/

namespace A193509.P14390600029703129251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105149 (Int.tmod (A001222 (n + 1)) (A282727 (2 * n + 1))).toNat

end

end A193509.P14390600029703129251

namespace A193509

/-- `A105149(A001222(n+1)%A282727(2*n+1))` -/
def P14390600029703129251.Spec : Prop :=
  ∀ n, P14390600029703129251.a n = A193509 (n + 1)

end A193509

/-! ## A193509.P1521755324438910985

`A354582(A001222(n+1)²)`
-/

namespace A193509.P1521755324438910985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354582 (A001222 (n + 1) ^ 2).toNat

end

end A193509.P1521755324438910985

namespace A193509

/-- `A354582(A001222(n+1)²)` -/
def P1521755324438910985.Spec : Prop :=
  ∀ n, P1521755324438910985.a n = A193509 (n + 1)

end A193509

/-! ## A193509.P2148323267525091454

`A354907(A001222(n+1)²)`
-/

namespace A193509.P2148323267525091454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354907 (A001222 (n + 1) ^ 2).toNat

end

end A193509.P2148323267525091454

namespace A193509

/-- `A354907(A001222(n+1)²)` -/
def P2148323267525091454.Spec : Prop :=
  ∀ n, P2148323267525091454.a n = A193509 (n + 1)

end A193509

/-! ## A193509.P779582378563634478

`A354907(A001222(n+1)*A001222(n+1))`
-/

namespace A193509.P779582378563634478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354907 (A001222 (n + 1) * A001222 (n + 1)).toNat

end

end A193509.P779582378563634478

namespace A193509

/-- `A354907(A001222(n+1)*A001222(n+1))` -/
def P779582378563634478.Spec : Prop :=
  ∀ n, P779582378563634478.a n = A193509 (n + 1)

end A193509

/-! ## A193509.P18042051974128108092

`A105149(A001222(n+1)%A100968(n+1))`
-/

namespace A193509.P18042051974128108092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105149 (Int.tmod (A001222 (n + 1)) (A100968 (n + 1))).toNat

end

end A193509.P18042051974128108092

namespace A193509

/-- `A105149(A001222(n+1)%A100968(n+1))` -/
def P18042051974128108092.Spec : Prop :=
  ∀ n, P18042051974128108092.a n = A193509 (n + 1)

end A193509

/-! ## A193509.P2686279839135827726

`A105149(A001222(n+1))%A132631(n+1)`
-/

namespace A193509.P2686279839135827726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105149 (A001222 (n + 1)).toNat) (A132631 (n + 1))

end

end A193509.P2686279839135827726

namespace A193509

/-- `A105149(A001222(n+1))%A132631(n+1)` -/
def P2686279839135827726.Spec : Prop :=
  ∀ n, P2686279839135827726.a n = A193509 (n + 1)

end A193509

/-! ## A193509.P8147526838839470538

`A007302(A001222((n+1)²))`
-/

namespace A193509.P8147526838839470538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A001222 ((n + 1) ^ 2)).toNat

end

end A193509.P8147526838839470538

namespace A193509

/-- `A007302(A001222((n+1)²))` -/
def P8147526838839470538.Spec : Prop :=
  ∀ n, P8147526838839470538.a n = A193509 (n + 1)

end A193509

/-! ## A193509.P769019981687496115

`∑{p}[A001222((n+1)²), A001222(#)]`
-/

namespace A193509.P769019981687496115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A193509.P769019981687496115

namespace A193509

/-- `∑{p}[A001222((n+1)²), A001222(#)]` -/
def P769019981687496115.Spec : Prop :=
  ∀ n, P769019981687496115.a n = A193509 (n + 1)

end A193509

/-! ## A193509.P2135726817125286564

`A001222(∏{p}[A001222((n+1)²), #])`
-/

namespace A193509.P2135726817125286564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A193509.P2135726817125286564

namespace A193509

/-- `A001222(∏{p}[A001222((n+1)²), #])` -/
def P2135726817125286564.Spec : Prop :=
  ∀ n, P2135726817125286564.a n = A193509 (n + 1)

end A193509

/-! ## A193509.P1457416524534349401

`floor(log2(∑{e}[A086568(n+1)+2, #]))`
-/

namespace A193509.P1457416524534349401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086568 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A193509.P1457416524534349401

namespace A193509

/-- `floor(log2(∑{e}[A086568(n+1)+2, #]))` -/
def P1457416524534349401.Spec : Prop :=
  ∀ n, (P1457416524534349401.a n : ℤ) = A193509 (n + 1)

end A193509

/-! ## A193509.P18378048709252482133

`gcd(A290080(n+1), A319880(n))`
-/

namespace A193509.P18378048709252482133
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A290080 (n + 1)) (A319880 n)

end

end A193509.P18378048709252482133

namespace A193509

/-- `gcd(A290080(n+1), A319880(n))` -/
def P18378048709252482133.Spec : Prop :=
  ∀ n, (P18378048709252482133.a n : ℤ) = A193509 (n + 1)

end A193509

/-! ## A193509.P7322945744447444227

`gcd(A140725(n), A193512(n+1))`
-/

namespace A193509.P7322945744447444227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A140725 n) (A193512 (n + 1))

end

end A193509.P7322945744447444227

namespace A193509

/-- `gcd(A140725(n), A193512(n+1))` -/
def P7322945744447444227.Spec : Prop :=
  ∀ n, (P7322945744447444227.a n : ℤ) = A193509 (n + 1)

end A193509

/-! ## A193509.P6594464860571363283

`A305832(2^A001222(n+1))`
-/

namespace A193509.P6594464860571363283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305832 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A001222 (n + 1) : ℤ))).toNat

end

end A193509.P6594464860571363283

namespace A193509

/-- `A305832(2^A001222(n+1))` -/
def P6594464860571363283.Spec : Prop :=
  ∀ n, P6594464860571363283.a n = A193509 (n + 1)

end A193509

/-! ## A193509.P13410551003056379447

`A001222(A049417(A061142(n+1)²))`
-/

namespace A193509.P13410551003056379447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A049417 (A061142 (n + 1) ^ 2).toNat).toNat

end

end A193509.P13410551003056379447

namespace A193509

/-- `A001222(A049417(A061142(n+1)²))` -/
def P13410551003056379447.Spec : Prop :=
  ∀ n, P13410551003056379447.a n = A193509 (n + 1)

end A193509

/-! ## A193509.P17700057719746771231

`A324190(A019565(A324190(A332462(n+1))))`
-/

namespace A193509.P17700057719746771231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324190 (A019565 (A324190 (A332462 (n + 1)).toNat).toNat).toNat

end

end A193509.P17700057719746771231

namespace A193509

/-- `A324190(A019565(A324190(A332462(n+1))))` -/
def P17700057719746771231.Spec : Prop :=
  ∀ n, P17700057719746771231.a n = A193509 (n + 1)

end A193509

/-! ## A193509.P7983053256303342334

`A001221(A086436((n+1)²))`
-/

namespace A193509.P7983053256303342334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A086436 ((n + 1) ^ 2)).toNat

end

end A193509.P7983053256303342334

namespace A193509

/-- `A001221(A086436((n+1)²))` -/
def P7983053256303342334.Spec : Prop :=
  ∀ n, P7983053256303342334.a n = A193509 (n + 1)

end A193509

/-!
# A193510: Number of even divisors of Omega(n).

The programs for A193510, the canonical program `A193510.P8592847620150791733` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193510 has offset 1).

The definition of A193510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193510.P8592847620150791733

`∑{d}[∑{e}[n+1, #], A196563(#)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A193510

/-- `∑{d}[∑{e}[n+1, #], A196563(#)]` -/
def P8592847620150791733.Spec : Prop :=
  ∀ n, P8592847620150791733.a n = A193510 (n + 1)

theorem P8592847620150791733.correct : P8592847620150791733.Spec := by
  intro n
  simp only [A193510, Nat.add_sub_cancel]

end A193510

/-! ## A193510.P4103371084151749506

`∑{d}[A001222(n+1), log2(gcd(2, #))]`
-/

namespace A193510.P4103371084151749506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Real.logb 2 (Nat.gcd 2 d : ℝ)

end

end A193510.P4103371084151749506

namespace A193510

/-- `∑{d}[A001222(n+1), log2(gcd(2, #))]` -/
def P4103371084151749506.Spec : Prop :=
  ∀ n, P4103371084151749506.a n = (A193510 (n + 1) : ℝ)

end A193510

/-! ## A193510.P13955305785342747036

`A183063(A252736(n+1)+1)`
-/

namespace A193510.P13955305785342747036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A252736 (n + 1) + 1).toNat

end

end A193510.P13955305785342747036

namespace A193510

/-- `A183063(A252736(n+1)+1)` -/
def P13955305785342747036.Spec : Prop :=
  ∀ n, P13955305785342747036.a n = A193510 (n + 1)

end A193510

/-! ## A193510.P337627639426431976

`∑{d}[A001222(n+1), A059841(#)]`
-/

namespace A193510.P337627639426431976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A059841 d

end

end A193510.P337627639426431976

namespace A193510

/-- `∑{d}[A001222(n+1), A059841(#)]` -/
def P337627639426431976.Spec : Prop :=
  ∀ n, P337627639426431976.a n = A193510 (n + 1)

end A193510

/-! ## A193510.P16622974688807866859

`A183063(A001222(n+1)+C(2, n+2))`
-/

namespace A193510.P16622974688807866859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A001222 (n + 1) + (Nat.choose 2 (n + 2) : ℤ)).toNat

end

end A193510.P16622974688807866859

namespace A193510

/-- `A183063(A001222(n+1)+C(2, n+2))` -/
def P16622974688807866859.Spec : Prop :=
  ∀ n, P16622974688807866859.a n = A193510 (n + 1)

end A193510

/-! ## A193510.P14733334803256813806

`∑{d}[A001222(n+1), A000007(lcm(2, #)-#)]`
-/

namespace A193510.P14733334803256813806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000007 (Nat.lcm 2 d - d)

end

end A193510.P14733334803256813806

namespace A193510

/-- `∑{d}[A001222(n+1), A000007(lcm(2, #)-#)]` -/
def P14733334803256813806.Spec : Prop :=
  ∀ n, P14733334803256813806.a n = A193510 (n + 1)

end A193510

/-! ## A193510.P18042643786582065700

`A347042(A347046(A061142(n+1)))`
-/

namespace A193510.P18042643786582065700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347042 (A347046 (A061142 (n + 1)).toNat).toNat

end

end A193510.P18042643786582065700

namespace A193510

/-- `A347042(A347046(A061142(n+1)))` -/
def P18042643786582065700.Spec : Prop :=
  ∀ n, P18042643786582065700.a n = A193510 (n + 1)

end A193510

/-! ## A193510.P9997229860517292933

`A183063(A001222(n+1)+A000007(n))`
-/

namespace A193510.P9997229860517292933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A001222 (n + 1) + A000007 n).toNat

end

end A193510.P9997229860517292933

namespace A193510

/-- `A183063(A001222(n+1)+A000007(n))` -/
def P9997229860517292933.Spec : Prop :=
  ∀ n, P9997229860517292933.a n = A193510 (n + 1)

end A193510

/-! ## A193510.P2024672831421979323

`A347042(A347046(A123667(n+1)/(n+1)))`
-/

namespace A193510.P2024672831421979323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347042 (A347046 (SequenceMachineLib.roundAway ((A123667 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A193510.P2024672831421979323

namespace A193510

/-- `A347042(A347046(A123667(n+1)/(n+1)))` -/
def P2024672831421979323.Spec : Prop :=
  ∀ n, P2024672831421979323.a n = A193510 (n + 1)

end A193510

/-! ## A193510.P17437616607299031801

`A193509(A329605(A003418(A193511(n+1))))`
-/

namespace A193510.P17437616607299031801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193509 (A329605 (A003418 (A193511 (n + 1)).toNat).toNat).toNat

end

end A193510.P17437616607299031801

namespace A193510

/-- `A193509(A329605(A003418(A193511(n+1))))` -/
def P17437616607299031801.Spec : Prop :=
  ∀ n, P17437616607299031801.a n = A193510 (n + 1)

end A193510

/-! ## A193510.P18092793053110265853

`A001222(A001222(A193356(A001222(n+1)+1)!)+1)`
-/

namespace A193510.P18092793053110265853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001222 (Nat.factorial (A193356 (A001222 (n + 1) + 1).toNat).toNat) + 1).toNat

end

end A193510.P18092793053110265853

namespace A193510

/-- `A001222(A001222(A193356(A001222(n+1)+1)!)+1)` -/
def P18092793053110265853.Spec : Prop :=
  ∀ n, P18092793053110265853.a n = A193510 (n + 1)

end A193510

/-! ## A193510.P13086496080761233544

`A277735(A322411(∑{e}[n+1, #])²)`
-/

namespace A193510.P13086496080761233544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277735 (A322411 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) ^ 2).toNat

end

end A193510.P13086496080761233544

namespace A193510

/-- `A277735(A322411(∑{e}[n+1, #])²)` -/
def P13086496080761233544.Spec : Prop :=
  ∀ n, P13086496080761233544.a n = A193510 (n + 1)

end A193510

/-! ## A193510.P6702702305320347821

`A048105(A086436((n+1)²))`
-/

namespace A193510.P6702702305320347821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (A086436 ((n + 1) ^ 2)).toNat

end

end A193510.P6702702305320347821

namespace A193510

/-- `A048105(A086436((n+1)²))` -/
def P6702702305320347821.Spec : Prop :=
  ∀ n, P6702702305320347821.a n = A193510 (n + 1)

end A193510

/-!
# A193511: a(n) = Sum of even divisors of Omega(n), a(1) = 0.

The programs for A193511, the canonical program `A193511.P8678682823205615366` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193511 has offset 1).

The definition of A193511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193511.P8678682823205615366

`A146076(A252736(n+1)+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A193511

/-- `A146076(A252736(n+1)+1)` -/
def P8678682823205615366.Spec : Prop :=
  ∀ n, P8678682823205615366.a n = A193511 (n + 1)

theorem P8678682823205615366.correct : P8678682823205615366.Spec := by
  intro n
  simp only [A193511, Nat.add_sub_cancel]

end A193511

/-! ## A193511.P12585163635119594284

`A290080(n+1)-A193512(n+1)`
-/

namespace A193511.P12585163635119594284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290080 (n + 1) - A193512 (n + 1)

end

end A193511.P12585163635119594284

namespace A193511

/-- `A290080(n+1)-A193512(n+1)` -/
def P12585163635119594284.Spec : Prop :=
  ∀ n, P12585163635119594284.a n = A193511 (n + 1)

theorem P12585163635119594284.correct : P12585163635119594284.Spec := by
  intro n
  simp only [A193511, Nat.add_sub_cancel, A193511.P12585163635119594284.a, A193511.P8678682823205615366.a, A146076, A146076.P5513778411624192836.a, A193512, A193512.P15962775555748110919.f1, A193512.P15962775555748110919.a, A252736, A252736.P2865412191134230649.f1, A252736.P2865412191134230649.a, A290080, A290080.P6472983260701268477.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000593, A000593.P13640346029616979906.a, A001222, A001222.P11318177267732088261.a, A038712, A038712.P3404197303190209645.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193511

/-! ## A193511.P14226035589128291227

`2*∑{d}[A001222(n+1), A142150(#)]`
-/

namespace A193511.P14226035589128291227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n).natAbs, A142150 d)

end

end A193511.P14226035589128291227

namespace A193511

/-- `2*∑{d}[A001222(n+1), A142150(#)]` -/
def P14226035589128291227.Spec : Prop :=
  ∀ n, P14226035589128291227.a n = A193511 (n + 1)

end A193511

/-! ## A193511.P11082465761163599763

`∑{d}[A001222(n+1), #*A059841(#)]`
-/

namespace A193511.P11082465761163599763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A059841 d

end

end A193511.P11082465761163599763

namespace A193511

/-- `∑{d}[A001222(n+1), #*A059841(#)]` -/
def P11082465761163599763.Spec : Prop :=
  ∀ n, P11082465761163599763.a n = A193511 (n + 1)

end A193511

/-! ## A193511.P10722915479392543032

`∑{d}[A001222(n+1), #%A063994(#²+1)]`
-/

namespace A193511.P10722915479392543032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.tmod (d : ℤ) (A063994 (d ^ 2 + 1))

end

end A193511.P10722915479392543032

namespace A193511

/-- `∑{d}[A001222(n+1), #%A063994(#²+1)]` -/
def P10722915479392543032.Spec : Prop :=
  ∀ n, P10722915479392543032.a n = A193511 (n + 1)

end A193511

/-! ## A193511.P965955855728909344

`A146076(A001222(n+1)+A000007(n))`
-/

namespace A193511.P965955855728909344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A001222 (n + 1) + A000007 n).toNat

end

end A193511.P965955855728909344

namespace A193511

/-- `A146076(A001222(n+1)+A000007(n))` -/
def P965955855728909344.Spec : Prop :=
  ∀ n, P965955855728909344.a n = A193511 (n + 1)

end A193511

/-! ## A193511.P10367749451906305315

`∑{e}[A068795(n+1), A146076(#)]`
-/

namespace A193511.P10367749451906305315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A146076 (Nat.factorization (f1 n).natAbs p)

end

end A193511.P10367749451906305315

namespace A193511

/-- `∑{e}[A068795(n+1), A146076(#)]` -/
def P10367749451906305315.Spec : Prop :=
  ∀ n, P10367749451906305315.a n = A193511 (n + 1)

end A193511

/-! ## A193511.P15550892185787164368

`A001222(6^A035544(A001222(n+1)))%(n+1)`
-/

namespace A193511.P15550892185787164368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A035544 (A001222 (n + 1)).toNat : ℤ))).toNat) (n + 1 : ℤ)

end

end A193511.P15550892185787164368

namespace A193511

/-- `A001222(6^A035544(A001222(n+1)))%(n+1)` -/
def P15550892185787164368.Spec : Prop :=
  ∀ n, P15550892185787164368.a n = A193511 (n + 1)

end A193511

/-! ## A193511.P5199096247387605085

`A048146(A086436((n+1)²))`
-/

namespace A193511.P5199096247387605085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (A086436 ((n + 1) ^ 2)).toNat

end

end A193511.P5199096247387605085

namespace A193511

/-- `A048146(A086436((n+1)²))` -/
def P5199096247387605085.Spec : Prop :=
  ∀ n, P5199096247387605085.a n = A193511 (n + 1)

end A193511

/-! ## A193511.P12588660510634244991

`A193510((n+1)²)*A193510(n+1)`
-/

namespace A193511.P12588660510634244991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193510 ((n + 1) ^ 2) * A193510 (n + 1)

end

end A193511.P12588660510634244991

namespace A193511

/-- `A193510((n+1)²)*A193510(n+1)` -/
def P12588660510634244991.Spec : Prop :=
  ∀ n, P12588660510634244991.a n = A193511 (n + 1)

end A193511

/-!
# A193512: a(n) = Sum of odd divisors of Omega(n), a(1) = 0.

The programs for A193512, the canonical program `A193512.P15962775555748110919` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193512 has offset 1).

The definition of A193512 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193512.P15962775555748110919

`∑{d}[A001222(n+1), lcm(2, #)-#]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A193512

/-- `∑{d}[A001222(n+1), lcm(2, #)-#]` -/
def P15962775555748110919.Spec : Prop :=
  ∀ n, P15962775555748110919.a n = A193512 (n + 1)

theorem P15962775555748110919.correct : P15962775555748110919.Spec := by
  intro n
  simp only [A193512, Nat.add_sub_cancel]

end A193512

/-! ## A193512.P13821878543317764342

`∑{e}[A061142(n+1), A000593(#)]`
-/

namespace A193512.P13821878543317764342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000593 (Nat.factorization (f1 n).natAbs p)

end

end A193512.P13821878543317764342

namespace A193512

/-- `∑{e}[A061142(n+1), A000593(#)]` -/
def P13821878543317764342.Spec : Prop :=
  ∀ n, P13821878543317764342.a n = A193512 (n + 1)

end A193512

/-! ## A193512.P4800336225368104730

`∑{e}[A068794(n+1), A000593(#)]`
-/

namespace A193512.P4800336225368104730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000593 (Nat.factorization (f1 n).natAbs p)

end

end A193512.P4800336225368104730

namespace A193512

/-- `∑{e}[A068794(n+1), A000593(#)]` -/
def P4800336225368104730.Spec : Prop :=
  ∀ n, P4800336225368104730.a n = A193512 (n + 1)

end A193512

/-! ## A193512.P5554833882853548108

`-A098986(2*A001222(n+1))`
-/

namespace A193512.P5554833882853548108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A098986 (2 * A001222 (n + 1)).toNat

end

end A193512.P5554833882853548108

namespace A193512

/-- `-A098986(2*A001222(n+1))` -/
def P5554833882853548108.Spec : Prop :=
  ∀ n, P5554833882853548108.a n = A193512 (n + 1)

end A193512

/-! ## A193512.P6947158614532405781

`A290080(n+1)-A193511(n+1)`
-/

namespace A193512.P6947158614532405781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290080 (n + 1) - A193511 (n + 1)

end

end A193512.P6947158614532405781

namespace A193512

/-- `A290080(n+1)-A193511(n+1)` -/
def P6947158614532405781.Spec : Prop :=
  ∀ n, P6947158614532405781.a n = A193512 (n + 1)

theorem P6947158614532405781.correct : P6947158614532405781.Spec := by
  intro n
  simp only [A193512, Nat.add_sub_cancel, A193512.P6947158614532405781.a, A193512.P15962775555748110919.f1, A193512.P15962775555748110919.a, A001222, A001222.P11318177267732088261.a, A193511, A193511.P8678682823205615366.a, A290080, A290080.P6472983260701268477.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A146076, A146076.P5513778411624192836.a, A252736, A252736.P2865412191134230649.f1, A252736.P2865412191134230649.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000593, A000593.P13640346029616979906.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A038712, A038712.P3404197303190209645.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193512

/-! ## A193512.P1943552121068527187

`∑{d}[A001222(n+1), #*A000035(#)]`
-/

namespace A193512.P1943552121068527187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A000035 d

end

end A193512.P1943552121068527187

namespace A193512

/-- `∑{d}[A001222(n+1), #*A000035(#)]` -/
def P1943552121068527187.Spec : Prop :=
  ∀ n, P1943552121068527187.a n = A193512 (n + 1)

end A193512

/-! ## A193512.P8394400090735722465

`∑{e}[A165825(n+1), A000593(#)]`
-/

namespace A193512.P8394400090735722465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000593 (Nat.factorization (f1 n).natAbs p)

end

end A193512.P8394400090735722465

namespace A193512

/-- `∑{e}[A165825(n+1), A000593(#)]` -/
def P8394400090735722465.Spec : Prop :=
  ∀ n, P8394400090735722465.a n = A193512 (n + 1)

end A193512

/-! ## A193512.P2776233207196456513

`∑{e}[A165825(n+1), A326135(#)]`
-/

namespace A193512.P2776233207196456513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A326135 (Nat.factorization (f1 n).natAbs p)

end

end A193512.P2776233207196456513

namespace A193512

/-- `∑{e}[A165825(n+1), A326135(#)]` -/
def P2776233207196456513.Spec : Prop :=
  ∀ n, P2776233207196456513.a n = A193512 (n + 1)

end A193512

/-! ## A193512.P18052515044506888059

`-A098986(A001222((n+1)²))`
-/

namespace A193512.P18052515044506888059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A098986 (A001222 ((n + 1) ^ 2)).toNat

end

end A193512.P18052515044506888059

namespace A193512

/-- `-A098986(A001222((n+1)²))` -/
def P18052515044506888059.Spec : Prop :=
  ∀ n, P18052515044506888059.a n = A193512 (n + 1)

end A193512

/-! ## A193512.P15981673239607932580

`A007302(A001222(n+1)²²*A001222(n+1))`
-/

namespace A193512.P15981673239607932580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 ((A001222 (n + 1) ^ 2) ^ 2 * A001222 (n + 1)).toNat

end

end A193512.P15981673239607932580

namespace A193512

/-- `A007302(A001222(n+1)²²*A001222(n+1))` -/
def P15981673239607932580.Spec : Prop :=
  ∀ n, P15981673239607932580.a n = A193512 (n + 1)

end A193512

/-!
# A193513: Number of partitions of n into parts having at least one common digit in decimal representation.

The programs for A193513, there is no canonical definition to state claims against.
-/

/-! ## A193513.P2213541923947543304

`A331245(A218704(n)²)`
-/

namespace A193513.P2213541923947543304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331245 (A218704 n ^ 2).toNat

end

end A193513.P2213541923947543304

/-! ## A193513.P2834744856931726882

`A218704(n)-A025469(A000225(n))`
-/

namespace A193513.P2834744856931726882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218704 n - A025469 (A000225 n).toNat

end

end A193513.P2834744856931726882

/-! ## A193513.P15587865320156295300

`A218704(n)-A254379(A005043(n))`
-/

namespace A193513.P15587865320156295300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218704 n - A254379 (A005043 n).toNat

end

end A193513.P15587865320156295300

/-! ## A193513.P14079205504559099644

`A218704(n)-A025469(A255047(n))`
-/

namespace A193513.P14079205504559099644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218704 n - A025469 (A255047 n).toNat

end

end A193513.P14079205504559099644

/-! ## A193513.P10656454336097453801

`A218704(n)-A014707(A293025(n))`
-/

namespace A193513.P10656454336097453801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218704 n - A014707 (A293025 n).toNat

end

end A193513.P10656454336097453801

/-!
# A193514: Expansion of phi(-q)^2 * phi(-q^9) / phi(-q^3) in powers of q where phi() is a Ramanujan theta function.

The programs for A193514, there is no canonical definition to state claims against.
-/

/-! ## A193514.P3012545375845840956

`A123330(n)-A217219(n)`
-/

namespace A193514.P3012545375845840956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123330 n - A217219 n

end

end A193514.P3012545375845840956

/-! ## A193514.P841795027223605565

`A057079(n)*A113973(n)`
-/

namespace A193514.P841795027223605565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A113973 n

end

end A193514.P841795027223605565

/-! ## A193514.P14363102918010742098

`A123330(n)*A131713(n)`
-/

namespace A193514.P14363102918010742098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123330 n * A131713 n

end

end A193514.P14363102918010742098

/-! ## A193514.P16852082203593496001

`abs(A113973(n))-A217219(n)`
-/

namespace A193514.P16852082203593496001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A113973 n| - A217219 n

end

end A193514.P16852082203593496001

/-! ## A193514.P2492778908925635758

`∑[A100051(n)]*A113973(n)`
-/

namespace A193514.P2492778908925635758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A113973 n

end

end A193514.P2492778908925635758

/-! ## A193514.P4445149588165013215

`A122860(A100833(n+1))*A123330(n)`
-/

namespace A193514.P4445149588165013215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122860 (A100833 (n + 1)).toNat * A123330 n

end

end A193514.P4445149588165013215

/-! ## A193514.P1761091127881963702

`A061347(n+2)*A123330(n)`
-/

namespace A193514.P1761091127881963702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 2) * A123330 n

end

end A193514.P1761091127881963702

/-! ## A193514.P9123732053897320748

`A123330(n)-2*A033685(n)`
-/

namespace A193514.P9123732053897320748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123330 n - 2 * A033685 n

end

end A193514.P9123732053897320748

/-! ## A193514.P16403463778863745835

`A123330(n)-A005843(A033685(n))`
-/

namespace A193514.P16403463778863745835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123330 n - A005843 (A033685 n).toNat

end

end A193514.P16403463778863745835

/-! ## A193514.P9495314062471339430

`A117188(2*n)*A123330(n)`
-/

namespace A193514.P9495314062471339430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117188 (2 * n) * A123330 n

end

end A193514.P9495314062471339430

/-!
# A193515: T(n,k) = number of ways to place any number of 3X1 tiles of k distinguishable colors into an nX1 grid.

The programs for A193515, there is no canonical definition to state claims against.
-/

/-! ## A193515.P2503756737383088648

`A000523(A131689(n)%A145548(n+1)+2)`
-/

namespace A193515.P2503756737383088648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (Int.tmod (A131689 n) (A145548 (n + 1)) + 2).toNat

end

end A193515.P2503756737383088648

/-! ## A193515.P16348187133805345765

`A072789(A291261(n))`
-/

namespace A193515.P16348187133805345765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072789 (A291261 n).toNat

end

end A193515.P16348187133805345765

/-! ## A193515.P9510058891386379068

`A331246(A294582(n))`
-/

namespace A193515.P9510058891386379068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331246 (A294582 n).toNat

end

end A193515.P9510058891386379068

/-! ## A193515.P9741854130490891227

`A070939(A094456(n)%A091421(n+1))`
-/

namespace A193515.P9741854130490891227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.tmod (A094456 n) (A091421 (n + 1))).toNat

end

end A193515.P9741854130490891227

/-! ## A193515.P10167624688376827619

`A110591(A266183(n+1))`
-/

namespace A193515.P10167624688376827619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A266183 (n + 1)).toNat

end

end A193515.P10167624688376827619

/-!
# A193516: T(n,k) = number of ways to place any number of 4X1 tiles of k distinguishable colors into an nX1 grid.

The programs for A193516, there is no canonical definition to state claims against.
-/

/-! ## A193516.P15830093797525387073

`A090529(A187783(log2(ceil(2^(n-1)))))`
-/

namespace A193516.P15830093797525387073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090529 (A187783 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat).toNat

end

end A193516.P15830093797525387073

/-! ## A193516.P13522399354181472906

`A296554(lt[1, A060637(n)])`
-/

namespace A193516.P13522399354181472906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060637 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A193516.P13522399354181472906

/-! ## A193516.P2676958821063041052

`A296554(lt[A088496(3*(n+1)), A124814(n)])`
-/

namespace A193516.P2676958821063041052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088496 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296554 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A193516.P2676958821063041052

/-! ## A193516.P9079586770338128822

`A110591(A266994(n+1))`
-/

namespace A193516.P9079586770338128822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A266994 (n + 1)).toNat

end

end A193516.P9079586770338128822

/-! ## A193516.P9110518087670888447

`A059957(A063851(n+3))`
-/

namespace A193516.P9110518087670888447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059957 (A063851 (n + 3)).toNat

end

end A193516.P9110518087670888447

/-!
# A193517: T(n,k) = number of ways to place any number of 5X1 tiles of k distinguishable colors into an nX1 grid.

The programs for A193517, there is no canonical definition to state claims against.
-/

/-! ## A193517.P17375880922674371514

`A373717(A057428(n)+n)%A048290(n+4)`
-/

namespace A193517.P17375880922674371514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373717 (A057428 n + (n : ℤ)).toNat) (A048290 (n + 4))

end

end A193517.P17375880922674371514

/-!
# A193518: T(n,k) = number of ways to place any number of 6X1 tiles of k distinguishable colors into an nX1 grid.

The programs for A193518, there is no canonical definition to state claims against.
-/

/-! ## A193518.P3125992291122730232

`A055642(C(A054923(n), 4))`
-/

namespace A193518.P3125992291122730232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Nat.choose (A054923 n).toNat 4)

end

end A193518.P3125992291122730232

/-! ## A193518.P14984166253602120789

`gcd(A144209(A144209(n)), A167383(n))`
-/

namespace A193518.P14984166253602120789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144209 (A144209 n).toNat) (A167383 n)

end

end A193518.P14984166253602120789

/-! ## A193518.P14436961407657908634

`gcd(A002635(A216460(n+5)), A178568(n+1))`
-/

namespace A193518.P14436961407657908634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002635 (A216460 (n + 5)).toNat) (A178568 (n + 1))

end

end A193518.P14436961407657908634

/-! ## A193518.P16373607304542450571

`floor((∏{p}[A208447(n)^3, #-1]+3)/4)`
-/

namespace A193518.P16373607304542450571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1) + 3 : ℤ) : ℚ) / 4⌋

end

end A193518.P16373607304542450571

/-! ## A193518.P8475568254287523036

`∏{e}[A204933(A000041(n)), #]`
-/

namespace A193518.P8475568254287523036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204933 (A000041 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A193518.P8475568254287523036

/-!
# A193519: a(n) = (2/3)*Sum_{i=1..n-1} A000129(i)*3^(n-i).

The programs for A193519, the canonical program `A193519.P6489713517993777021` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193519 has offset 0).

The definition of A193519 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193519.P6489713517993777021

`5*a(n-1)-5*a(n-2)-3*a(n-3)` with `a(0)=0, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193519

/-- `5*a(n-1)-5*a(n-2)-3*a(n-3)` -/
def P6489713517993777021.Spec : Prop :=
  ∀ n, P6489713517993777021.a n = A193519 n

theorem P6489713517993777021.correct : P6489713517993777021.Spec := by
  intro n
  simp only [A193519]

end A193519

/-! ## A193519.P15658272166839684706

`2*A137212(n)`
-/

namespace A193519.P15658272166839684706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A137212 n

end

end A193519.P15658272166839684706

namespace A193519

/-- `2*A137212(n)` -/
def P15658272166839684706.Spec : Prop :=
  ∀ n, P15658272166839684706.a n = A193519 n

end A193519

/-! ## A193519.P5119087336934426753

`1/2*(2*3^n-A002203(n+1))`
-/

namespace A193519.P5119087336934426753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((2 * 3 ^ n : ℤ) - A002203 (n + 1) : ℚ)

end

end A193519.P5119087336934426753

namespace A193519

/-- `1/2*(2*3^n-A002203(n+1))` -/
def P5119087336934426753.Spec : Prop :=
  ∀ n, P5119087336934426753.a n = (A193519 n : ℚ)

end A193519

/-! ## A193519.P13131987282251823221

`ogf(2x^2/(1-5x+5x^2+3x^3))`
-/

namespace A193519.P13131987282251823221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2] [1, -5, 5, 3] n

end

end A193519.P13131987282251823221

namespace A193519

/-- `ogf(2x^2/(1-5x+5x^2+3x^3))` -/
def P13131987282251823221.Spec : Prop :=
  ∀ n, P13131987282251823221.a n = A193519 n

end A193519

/-! ## A193519.P16291557925461168386

`3^n-A078057(n)`
-/

namespace A193519.P16291557925461168386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A078057 n

end

end A193519.P16291557925461168386

namespace A193519

/-- `3^n-A078057(n)` -/
def P16291557925461168386.Spec : Prop :=
  ∀ n, P16291557925461168386.a n = A193519 n

end A193519

/-! ## A193519.P4390745106227295221

`3^n-∑[A052542(n)]`
-/

namespace A193519.P4390745106227295221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193519.P4390745106227295221

namespace A193519

/-- `3^n-∑[A052542(n)]` -/
def P4390745106227295221.Spec : Prop :=
  ∀ n, P4390745106227295221.a n = A193519 n

end A193519

/-! ## A193519.P6766081423377507839

`3^n-Δ[A052937(n)]`
-/

namespace A193519.P6766081423377507839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - (f1 (n + 1) - f1 n)

end

end A193519.P6766081423377507839

namespace A193519

/-- `3^n-Δ[A052937(n)]` -/
def P6766081423377507839.Spec : Prop :=
  ∀ n, P6766081423377507839.a n = A193519 n

end A193519

/-! ## A193519.P6168497696915397852

`3^n-A001333(n+1)`
-/

namespace A193519.P6168497696915397852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A001333 (n + 1)

end

end A193519.P6168497696915397852

namespace A193519

/-- `3^n-A001333(n+1)` -/
def P6168497696915397852.Spec : Prop :=
  ∀ n, P6168497696915397852.a n = A193519 n

end A193519

/-! ## A193519.P16327034126311126668

`3^n-Δ[A000129(n+1)]`
-/

namespace A193519.P16327034126311126668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - (f1 (n + 1) - f1 n)

end

end A193519.P16327034126311126668

namespace A193519

/-- `3^n-Δ[A000129(n+1)]` -/
def P16327034126311126668.Spec : Prop :=
  ∀ n, P16327034126311126668.a n = A193519 n

end A193519

/-! ## A193519.P4035996395317775896

`A137213(n)-A000129(n)`
-/

namespace A193519.P4035996395317775896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137213 n - A000129 n

end

end A193519.P4035996395317775896

namespace A193519

/-- `A137213(n)-A000129(n)` -/
def P4035996395317775896.Spec : Prop :=
  ∀ n, P4035996395317775896.a n = A193519 n

end A193519

/-! ## A193519.P1695425677935645757

`A034472(n)-A182780(n)`
-/

namespace A193519.P1695425677935645757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034472 n - A182780 n

end

end A193519.P1695425677935645757

namespace A193519

/-- `A034472(n)-A182780(n)` -/
def P1695425677935645757.Spec : Prop :=
  ∀ n, P1695425677935645757.a n = A193519 n

end A193519

/-! ## A193519.P5978878328349787682

`A212323(n)-A106515(n)`
-/

namespace A193519.P5978878328349787682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212323 n - A106515 n

end

end A193519.P5978878328349787682

namespace A193519

/-- `A212323(n)-A106515(n)` -/
def P5978878328349787682.Spec : Prop :=
  ∀ n, P5978878328349787682.a n = A193519 n

end A193519

/-! ## A193519.P739818997536195118

`Δ[A137212(n)]-A000129(n)`
-/

namespace A193519.P739818997536195118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000129 n

end

end A193519.P739818997536195118

namespace A193519

/-- `Δ[A137212(n)]-A000129(n)` -/
def P739818997536195118.Spec : Prop :=
  ∀ n, P739818997536195118.a n = A193519 n

end A193519

/-! ## A193519.P13231326536801726383

`A102345(n)-A228797(n+1)`
-/

namespace A193519.P13231326536801726383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102345 n - A228797 (n + 1)

end

end A193519.P13231326536801726383

namespace A193519

/-- `A102345(n)-A228797(n+1)` -/
def P13231326536801726383.Spec : Prop :=
  ∀ n, P13231326536801726383.a n = A193519 n

end A193519

/-! ## A193519.P4442123960955056320

`2*(A007051(n)-A024537(n))`
-/

namespace A193519.P4442123960955056320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007051 n - A024537 n)

end

end A193519.P4442123960955056320

namespace A193519

/-- `2*(A007051(n)-A024537(n))` -/
def P4442123960955056320.Spec : Prop :=
  ∀ n, P4442123960955056320.a n = A193519 n

end A193519

/-! ## A193519.P3003328778842123768

`2*(A003462(n)-∑[A000129(n)])`
-/

namespace A193519.P3003328778842123768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003462 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A193519.P3003328778842123768

namespace A193519

/-- `2*(A003462(n)-∑[A000129(n)])` -/
def P3003328778842123768.Spec : Prop :=
  ∀ n, P3003328778842123768.a n = A193519 n

end A193519

/-! ## A193519.P5224513124405014195

`2*(A007051(n)-∑[A215928(n)])`
-/

namespace A193519.P5224513124405014195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007051 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A193519.P5224513124405014195

namespace A193519

/-- `2*(A007051(n)-∑[A215928(n)])` -/
def P5224513124405014195.Spec : Prop :=
  ∀ n, P5224513124405014195.a n = A193519 n

end A193519

/-! ## A193519.P15052848385536728134

`A000244(n)-A152113(2*(n+1))`
-/

namespace A193519.P15052848385536728134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - A152113 (2 * (n + 1))

end

end A193519.P15052848385536728134

namespace A193519

/-- `A000244(n)-A152113(2*(n+1))` -/
def P15052848385536728134.Spec : Prop :=
  ∀ n, P15052848385536728134.a n = A193519 n

end A193519

/-! ## A193519.P5544632460839541879

`A000244(n)-Δ[Δ[A171842(n+1)]]`
-/

namespace A193519.P5544632460839541879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - (f1 (n + 1) - f1 n)

end

end A193519.P5544632460839541879

namespace A193519

/-- `A000244(n)-Δ[Δ[A171842(n+1)]]` -/
def P5544632460839541879.Spec : Prop :=
  ∀ n, P5544632460839541879.a n = A193519 n

end A193519

/-! ## A193519.P8177806737233636274

`A137212(A005843(n)/2)+A137212(n)`
-/

namespace A193519.P8177806737233636274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137212 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A137212 n

end

end A193519.P8177806737233636274

namespace A193519

/-- `A137212(A005843(n)/2)+A137212(n)` -/
def P8177806737233636274.Spec : Prop :=
  ∀ n, P8177806737233636274.a n = A193519 n

end A193519

/-!
# A193520: a(n) = Sum_{k=0..n} G(n)/(G(k)*G(n-k)) where G(n) = Product_{k=0..n} k!.

The programs for A193520, there is no canonical definition to state claims against.
-/

/-! ## A193520.P14283656709911127960

`∑[A152076((n-1)*a(n-1)+2)-1]` with `a(0)=1`
-/

namespace A193520.P14283656709911127960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A152076 (((n : ℤ) - 1) * f1 (n - 1) + 2).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193520.P14283656709911127960

/-!
# A193521: G.f.: A(x) = ( Sum_{n>=0} x^n/sf(n) )^3 where A(x) = Sum_{n>=0} a(n)*x^n/sf(n), and sf(n) = Product_{k=0..n} k! is the superfactorial of n (A000178).

The programs for A193521, there is no canonical definition to state claims against.
-/

/-! ## A193521.P6623162829988209204

`A323089(3*2^n+1)`
-/

namespace A193521.P6623162829988209204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323089 (3 * 2 ^ n + 1)

end

end A193521.P6623162829988209204

/-!
# A193523: Number of odd divisors of Sopf(n).

The programs for A193523, the canonical program `A193523.P14009253969050852722` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193523 has offset 1).

The definition of A193523 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193523.P14009253969050852722

`∑{d}[∑{p}[n+1, #], #%2]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193523

/-- `∑{d}[∑{p}[n+1, #], #%2]` -/
def P14009253969050852722.Spec : Prop :=
  ∀ n, (P14009253969050852722.a n : ℤ) = A193523 (n + 1)

theorem P14009253969050852722.correct : P14009253969050852722.Spec := by
  intro n
  simp only [A193523, Nat.add_sub_cancel]

end A193523

/-! ## A193523.P13053547169174716177

`∑{d}[∑{p}[n+1, #], and(1, #)]`
-/

namespace A193523.P13053547169174716177
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.land 1 d

end

end A193523.P13053547169174716177

namespace A193523

/-- `∑{d}[∑{p}[n+1, #], and(1, #)]` -/
def P13053547169174716177.Spec : Prop :=
  ∀ n, (P13053547169174716177.a n : ℤ) = A193523 (n + 1)

theorem P13053547169174716177.correct : P13053547169174716177.Spec := by
  intro n
  simp only [A193523, Nat.add_sub_cancel, A193523.P13053547169174716177.f2, A193523.P13053547169174716177.f1, A193523.P13053547169174716177.a, A193523.P14009253969050852722.f2, A193523.P14009253969050852722.f1, A193523.P14009253969050852722.a, SequenceMachineLib.memo_apply]
  try simp

end A193523

/-! ## A193523.P16530838468110693865

`∑{d}[A008472(n+1), #%2]`
-/

namespace A193523.P16530838468110693865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d % 2

end

end A193523.P16530838468110693865

namespace A193523

/-- `∑{d}[A008472(n+1), #%2]` -/
def P16530838468110693865.Spec : Prop :=
  ∀ n, (P16530838468110693865.a n : ℤ) = A193523 (n + 1)

end A193523

/-! ## A193523.P11615481191823248909

`∑{d}[∑{p}[n+1, #], A000035(#)]`
-/

namespace A193523.P11615481191823248909
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000035 d

end

end A193523.P11615481191823248909

namespace A193523

/-- `∑{d}[∑{p}[n+1, #], A000035(#)]` -/
def P11615481191823248909.Spec : Prop :=
  ∀ n, P11615481191823248909.a n = A193523 (n + 1)

theorem P11615481191823248909.correct : P11615481191823248909.Spec := by
  intro n
  simp only [A193523, Nat.add_sub_cancel, A193523.P11615481191823248909.f2, A193523.P11615481191823248909.f1, A193523.P11615481191823248909.a, A193523.P14009253969050852722.f2, A193523.P14009253969050852722.f1, A193523.P14009253969050852722.a, A000035, A000035.P2023072528413494694.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193523

/-! ## A193523.P11532966642513311535

`∑{d}[∑{p}[n+1, #], A000007(val(#, 2))]`
-/

namespace A193523.P11532966642513311535
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000007 (SequenceMachineLib.valuation d 2)

end

end A193523.P11532966642513311535

namespace A193523

/-- `∑{d}[∑{p}[n+1, #], A000007(val(#, 2))]` -/
def P11532966642513311535.Spec : Prop :=
  ∀ n, P11532966642513311535.a n = A193523 (n + 1)

end A193523

/-! ## A193523.P10185301187077010740

`∑{d}[A008472(n+1), A000035(#)]`
-/

namespace A193523.P10185301187077010740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000035 d

end

end A193523.P10185301187077010740

namespace A193523

/-- `∑{d}[A008472(n+1), A000035(#)]` -/
def P10185301187077010740.Spec : Prop :=
  ∀ n, P10185301187077010740.a n = A193523 (n + 1)

end A193523

/-! ## A193523.P4935831988948238534

`∑{d}[A008472(n+1), A193356(#)/#]`
-/

namespace A193523.P4935831988948238534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A193356 d : ℚ) / (d : ℚ)

end

end A193523.P4935831988948238534

namespace A193523

/-- `∑{d}[A008472(n+1), A193356(#)/#]` -/
def P4935831988948238534.Spec : Prop :=
  ∀ n, P4935831988948238534.a n = (A193523 (n + 1) : ℚ)

end A193523

/-!
# A193525: Number of even divisors of sopf(n).

The programs for A193525, the canonical program `A193525.P14773178593545496055` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193525 has offset 1).

The definition of A193525 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193525.P14773178593545496055

`∑{d}[∑{p}[n+1, #], (#+1)%2]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193525

/-- `∑{d}[∑{p}[n+1, #], (#+1)%2]` -/
def P14773178593545496055.Spec : Prop :=
  ∀ n, (P14773178593545496055.a n : ℤ) = A193525 (n + 1)

theorem P14773178593545496055.correct : P14773178593545496055.Spec := by
  intro n
  simp only [A193525, Nat.add_sub_cancel]

end A193525

/-! ## A193525.P9230375379255507532

`A183063((∑{p}[n+1, #]+n)%(n+1)+1)`
-/

namespace A193525.P9230375379255507532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 ((∑ p ∈ Nat.primeFactors (f1 n), p + n) % (n + 1) + 1)

end

end A193525.P9230375379255507532

namespace A193525

/-- `A183063((∑{p}[n+1, #]+n)%(n+1)+1)` -/
def P9230375379255507532.Spec : Prop :=
  ∀ n, P9230375379255507532.a n = A193525 (n + 1)

end A193525

/-! ## A193525.P12181404654703742819

`∑{d}[A008472(n+1), A000035(#+1)]`
-/

namespace A193525.P12181404654703742819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000035 (d + 1)

end

end A193525.P12181404654703742819

namespace A193525

/-- `∑{d}[A008472(n+1), A000035(#+1)]` -/
def P12181404654703742819.Spec : Prop :=
  ∀ n, P12181404654703742819.a n = A193525 (n + 1)

end A193525

/-! ## A193525.P2076661797365431094

`∑{d}[A008472(n+1), A007504(#)%2]`
-/

namespace A193525.P2076661797365431094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.tmod (A007504 d) 2

end

end A193525.P2076661797365431094

namespace A193525

/-- `∑{d}[A008472(n+1), A007504(#)%2]` -/
def P2076661797365431094.Spec : Prop :=
  ∀ n, P2076661797365431094.a n = A193525 (n + 1)

end A193525

/-! ## A193525.P18219487808211039826

`∑{d}[A008472(n+1), A237420(#)/#]`
-/

namespace A193525.P18219487808211039826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A237420 d : ℚ) / (d : ℚ)

end

end A193525.P18219487808211039826

namespace A193525

/-- `∑{d}[A008472(n+1), A237420(#)/#]` -/
def P18219487808211039826.Spec : Prop :=
  ∀ n, P18219487808211039826.a n = (A193525 (n + 1) : ℚ)

end A193525

/-! ## A193525.P17706922447025342543

`∑{d}[A008472(n+1), A033286(#+1)%2]`
-/

namespace A193525.P17706922447025342543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.tmod (A033286 (d + 1)) 2

end

end A193525.P17706922447025342543

namespace A193525

/-- `∑{d}[A008472(n+1), A033286(#+1)%2]` -/
def P17706922447025342543.Spec : Prop :=
  ∀ n, P17706922447025342543.a n = A193525 (n + 1)

end A193525

/-!
# A193526: Sum of even divisors of sopf(n).

The programs for A193526, the canonical program `A193526.P4700897298278670448` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193526 has offset 1).

The definition of A193526 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193526.P8386853828521770184

`∑{d}[A008472(n+1), #%or(1, #)]`
-/

namespace A193526.P8386853828521770184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d % Nat.lor 1 d

end

end A193526.P8386853828521770184

namespace A193526

/-- `∑{d}[A008472(n+1), #%or(1, #)]` -/
def P8386853828521770184.Spec : Prop :=
  ∀ n, (P8386853828521770184.a n : ℤ) = A193526 (n + 1)

end A193526

/-! ## A193526.P4700897298278670448

`∑{d}[∑{p}[n+1, #], #*A059841(#)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A193526

/-- `∑{d}[∑{p}[n+1, #], #*A059841(#)]` -/
def P4700897298278670448.Spec : Prop :=
  ∀ n, P4700897298278670448.a n = A193526 (n + 1)

theorem P4700897298278670448.correct : P4700897298278670448.Spec := by
  intro n
  simp only [A193526, Nat.add_sub_cancel]

end A193526

/-! ## A193526.P9658972256061458598

`∑{d}[A008472(n+1), A237420(#)]`
-/

namespace A193526.P9658972256061458598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A237420 d

end

end A193526.P9658972256061458598

namespace A193526

/-- `∑{d}[A008472(n+1), A237420(#)]` -/
def P9658972256061458598.Spec : Prop :=
  ∀ n, P9658972256061458598.a n = A193526 (n + 1)

end A193526

/-! ## A193526.P4082781862385084039

`∑{d}[A008472(n+1), #-A193356(#)]`
-/

namespace A193526.P4082781862385084039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d : ℤ) - A193356 d)

end

end A193526.P4082781862385084039

namespace A193526

/-- `∑{d}[A008472(n+1), #-A193356(#)]` -/
def P4082781862385084039.Spec : Prop :=
  ∀ n, P4082781862385084039.a n = A193526 (n + 1)

end A193526

/-! ## A193526.P14908422394843218597

`A146076(A008472(n+1)+A000007(n))`
-/

namespace A193526.P14908422394843218597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A008472 (n + 1) + A000007 n).toNat

end

end A193526.P14908422394843218597

namespace A193526

/-- `A146076(A008472(n+1)+A000007(n))` -/
def P14908422394843218597.Spec : Prop :=
  ∀ n, P14908422394843218597.a n = A193526 (n + 1)

end A193526

/-!
# A193527: G.f. A(x) satisfies 0 = f(A(x), A(x^2)) where f(u, v) = u * (u - 2) - (v + 2).

The programs for A193527, there is no canonical definition to state claims against.
-/

/-! ## A193527.P17231948319085372836

`A107088(n-char[1])`
-/

namespace A193527.P17231948319085372836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107088 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A193527.P17231948319085372836

/-! ## A193527.P13546310305101443934

`A107088(n)^(n-1)^(n%2)`
-/

namespace A193527.P13546310305101443934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107088 n : ℚ) ^ (((n : ℤ) - 1) ^ (n % 2) : ℤ)

end

end A193527.P13546310305101443934

/-! ## A193527.P16157491918883108215

`A107088(n)/A010685(n)`
-/

namespace A193527.P16157491918883108215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107088 n : ℚ) / (A010685 n : ℚ)

end

end A193527.P16157491918883108215

/-! ## A193527.P13792789387833268253

`A107088(n)/A019303(n)`
-/

namespace A193527.P13792789387833268253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107088 n : ℚ) / (A019303 n : ℚ)

end

end A193527.P13792789387833268253

/-! ## A193527.P12883780778660095016

`A107088(n)/A019304(n)`
-/

namespace A193527.P12883780778660095016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107088 n : ℚ) / (A019304 n : ℚ)

end

end A193527.P12883780778660095016

/-!
# A193528: Numbers k such that the quartic elliptic curve y^2 = 5*x^4 + 4*k does not have integer solutions.

The programs for A193528, there is no canonical definition to state claims against.
-/

/-! ## A193528.P17611075481010510849

`comp[∪[A193584(n+1), n²]]`
-/

namespace A193528.P17611075481010510849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193584 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A193528.P17611075481010510849

/-! ## A193528.P15621598082795185122

`eq[char[A193584(n+1)], A000122(n)]`
-/

namespace A193528.P15621598082795185122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193584 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A193528.P15621598082795185122

/-! ## A193528.P4219531023950639529

`comp[∪[A072471(n), A193584(n+1)]]`
-/

namespace A193528.P4219531023950639529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072471 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193584 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A193528.P4219531023950639529

/-! ## A193528.P248357684402472363

`∪[A227874(n+1), comp[A281385(n)]]`
-/

namespace A193528.P248357684402472363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227874 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281385 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A193528.P248357684402472363

/-! ## A193528.P13102845433234415351

`∪[A227874(n+1), A232681(n+1)]`
-/

namespace A193528.P13102845433234415351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A193528.P13102845433234415351

/-! ## A193528.P1166925677780183869

`eq[0, A193524(n+1)]+1`
-/

namespace A193528.P1166925677780183869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A193528.P1166925677780183869

/-! ## A193528.P16022259781473181502

`record[n+2-A193524(n+2)]`
-/

namespace A193528.P16022259781473181502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A193524 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193528.P16022259781473181502

/-! ## A193528.P1881898000944478051

`eq[0, A193524(A028310(n))]`
-/

namespace A193528.P1881898000944478051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193524 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193528.P1881898000944478051

/-!
# A193529: Sum of odd divisors of sopf(n).

The programs for A193529, the canonical program `A193529.P10218442033702974794` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193529 has offset 1).

The definition of A193529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193529.P10218442033702974794

`∑{d}[∑{p}[n+1, #], #*#%2]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193529

/-- `∑{d}[∑{p}[n+1, #], #*#%2]` -/
def P10218442033702974794.Spec : Prop :=
  ∀ n, (P10218442033702974794.a n : ℤ) = A193529 (n + 1)

theorem P10218442033702974794.correct : P10218442033702974794.Spec := by
  intro n
  simp only [A193529, Nat.add_sub_cancel]

end A193529

/-! ## A193529.P2135771026983109623

`∑{d}[∑{p}[n+1, #], lcm(2, #)-#]`
-/

namespace A193529.P2135771026983109623
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((Nat.lcm 2 d : ℤ) - (d : ℤ))

end

end A193529.P2135771026983109623

namespace A193529

/-- `∑{d}[∑{p}[n+1, #], lcm(2, #)-#]` -/
def P2135771026983109623.Spec : Prop :=
  ∀ n, P2135771026983109623.a n = A193529 (n + 1)

end A193529

/-! ## A193529.P6091266906766439842

`∑{d}[∑{p}[n+1, #], #*and(1, #)]`
-/

namespace A193529.P6091266906766439842
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d * Nat.land 1 d

end

end A193529.P6091266906766439842

namespace A193529

/-- `∑{d}[∑{p}[n+1, #], #*and(1, #)]` -/
def P6091266906766439842.Spec : Prop :=
  ∀ n, (P6091266906766439842.a n : ℤ) = A193529 (n + 1)

theorem P6091266906766439842.correct : P6091266906766439842.Spec := by
  intro n
  simp only [A193529, Nat.add_sub_cancel, A193529.P6091266906766439842.f2, A193529.P6091266906766439842.f1, A193529.P6091266906766439842.a, A193529.P10218442033702974794.f2, A193529.P10218442033702974794.f1, A193529.P10218442033702974794.a, SequenceMachineLib.memo_apply]
  try simp

end A193529

/-! ## A193529.P773032352535534268

`∑{d}[∑{p}[n+1, #], A193356(#)]`
-/

namespace A193529.P773032352535534268
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A193356 d

end

end A193529.P773032352535534268

namespace A193529

/-- `∑{d}[∑{p}[n+1, #], A193356(#)]` -/
def P773032352535534268.Spec : Prop :=
  ∀ n, P773032352535534268.a n = A193529 (n + 1)

end A193529

/-! ## A193529.P14001547228448356915

`∑{d}[A008472(n+1), lcm(2, #)-#]`
-/

namespace A193529.P14001547228448356915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((Nat.lcm 2 d : ℤ) - (d : ℤ))

end

end A193529.P14001547228448356915

namespace A193529

/-- `∑{d}[A008472(n+1), lcm(2, #)-#]` -/
def P14001547228448356915.Spec : Prop :=
  ∀ n, P14001547228448356915.a n = A193529 (n + 1)

end A193529

/-! ## A193529.P4235990598041296306

`∑{d}[Δ[A024924(n)], A193356(#)]`
-/

namespace A193529.P4235990598041296306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024924 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A193356 d

end

end A193529.P4235990598041296306

namespace A193529

/-- `∑{d}[Δ[A024924(n)], A193356(#)]` -/
def P4235990598041296306.Spec : Prop :=
  ∀ n, P4235990598041296306.a n = A193529 (n + 1)

end A193529

/-! ## A193529.P12893346232762740198

`∑{d}[A008472(n+1), A193356(#)]`
-/

namespace A193529.P12893346232762740198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A193356 d

end

end A193529.P12893346232762740198

namespace A193529

/-- `∑{d}[A008472(n+1), A193356(#)]` -/
def P12893346232762740198.Spec : Prop :=
  ∀ n, P12893346232762740198.a n = A193529 (n + 1)

end A193529

/-! ## A193529.P16731899662335299093

`∑{d}[sqrt(A235323(n+1)), A193356(#)]`
-/

namespace A193529.P16731899662335299093
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A235323 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A193356 d

end

end A193529.P16731899662335299093

namespace A193529

/-- `∑{d}[sqrt(A235323(n+1)), A193356(#)]` -/
def P16731899662335299093.Spec : Prop :=
  ∀ n, P16731899662335299093.a n = A193529 (n + 1)

end A193529

/-! ## A193529.P12550943436861620240

`∑{d}[A074372(n+1)-1, A193356(#)]`
-/

namespace A193529.P12550943436861620240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074372 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A193356 d

end

end A193529.P12550943436861620240

namespace A193529

/-- `∑{d}[A074372(n+1)-1, A193356(#)]` -/
def P12550943436861620240.Spec : Prop :=
  ∀ n, P12550943436861620240.a n = A193529 (n + 1)

end A193529

/-! ## A193529.P6977970305190555302

`∑{d}[A001414(∏{p}[n+1, #]), A193356(#)]`
-/

namespace A193529.P6977970305190555302
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A193356 d

end

end A193529.P6977970305190555302

namespace A193529

/-- `∑{d}[A001414(∏{p}[n+1, #]), A193356(#)]` -/
def P6977970305190555302.Spec : Prop :=
  ∀ n, P6977970305190555302.a n = A193529 (n + 1)

end A193529

/-! ## A193529.P11219874228527013406

`∑{d}[A023889(∏{p}[n+1, #]), A193356(#)]`
-/

namespace A193529.P11219874228527013406
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023889 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A193356 d

end

end A193529.P11219874228527013406

namespace A193529

/-- `∑{d}[A023889(∏{p}[n+1, #]), A193356(#)]` -/
def P11219874228527013406.Spec : Prop :=
  ∀ n, P11219874228527013406.a n = A193529 (n + 1)

end A193529

/-! ## A193529.P4243053101391649896

`∑{d}[A106492(∏{p}[n+1, #]), A193356(#)]`
-/

namespace A193529.P4243053101391649896
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106492 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A193356 d

end

end A193529.P4243053101391649896

namespace A193529

/-- `∑{d}[A106492(∏{p}[n+1, #]), A193356(#)]` -/
def P4243053101391649896.Spec : Prop :=
  ∀ n, P4243053101391649896.a n = A193529 (n + 1)

end A193529

/-!
# A193530: Expansion of (1 - 2*x - 2*x^2 + 3*x^3 + x^5)/((1-x)*(1-2*x-x^2)*(1-2*x^2-x^4)).

The programs for A193530, the canonical program `A193530.P10406927489602866115` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193530 has offset 0).

The definition of A193530 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x-2x^2+3x^3+x^5)/(1-3x-x^2+7x^3-3x^4+x^5-x^6-x^7))` (program `A193530.P10406927489602866115`, by `A193530.P10406927489602866115.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A193530.P10406927489602866115

`ogf((1-2x-2x^2+3x^3+x^5)/(1-3x-x^2+7x^3-3x^4+x^5-x^6-x^7))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193530

/-- `ogf((1-2x-2x^2+3x^3+x^5)/(1-3x-x^2+7x^3-3x^4+x^5-x^6-x^7))` -/
def P10406927489602866115.Spec : Prop :=
  ∀ n, P10406927489602866115.a n = A193530 n

theorem P10406927489602866115.correct : P10406927489602866115.Spec := by
  intro n
  simp only [A193530]

end A193530

/-! ## A193530.P10420957842725818021

`(A171842(n)+A135153(n+2))/2`
-/

namespace A193530.P10420957842725818021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171842 n + A135153 (n + 2) : ℚ) / 2

end

end A193530.P10420957842725818021

namespace A193530

/-- `(A171842(n)+A135153(n+2))/2` -/
def P10420957842725818021.Spec : Prop :=
  ∀ n, P10420957842725818021.a n = (A193530 n : ℚ)

end A193530

/-! ## A193530.P13807663387188664457

`A014682(A171842(n)+A135153(n+2))`
-/

namespace A193530.P13807663387188664457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A171842 n + A135153 (n + 2)).toNat

end

end A193530.P13807663387188664457

namespace A193530

/-- `A014682(A171842(n)+A135153(n+2))` -/
def P13807663387188664457.Spec : Prop :=
  ∀ n, P13807663387188664457.a n = A193530 n

end A193530

/-! ## A193530.P15294492422389243956

`A004526(A171842(n)+A135153(n+2))`
-/

namespace A193530.P15294492422389243956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A171842 n + A135153 (n + 2)).toNat

end

end A193530.P15294492422389243956

namespace A193530

/-- `A004526(A171842(n)+A135153(n+2))` -/
def P15294492422389243956.Spec : Prop :=
  ∀ n, P15294492422389243956.a n = A193530 n

end A193530

/-! ## A193530.P5005674922889075866

`A029578(A171842(n)+A135153(n+2))`
-/

namespace A193530.P5005674922889075866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A171842 n + A135153 (n + 2)).toNat

end

end A193530.P5005674922889075866

namespace A193530

/-- `A029578(A171842(n)+A135153(n+2))` -/
def P5005674922889075866.Spec : Prop :=
  ∀ n, P5005674922889075866.a n = A193530 n

end A193530

/-!
# A193532: G.f.: x = Sum_{n>=1} x^n * ((1+x)^(n+1) - x^(n+1)) / (1+x)^a(n).

The programs for A193532, the canonical program `A193532.P14021246929730773787` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193532 has offset 1).

The definition of A193532 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193532.P14021246929730773787

`n+1+floor(log2(n+2))+A011371(n+2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A193532

/-- `n+1+floor(log2(n+2))+A011371(n+2)` -/
def P14021246929730773787.Spec : Prop :=
  ∀ n, P14021246929730773787.a n = A193532 (n + 1)

theorem P14021246929730773787.correct : P14021246929730773787.Spec := by
  intro n
  simp only [A193532, Nat.add_sub_cancel]

end A193532

/-! ## A193532.P12109743222310607847

`record[a(ceil(n/2))+n]` with `a(0)=3, a(1)=-2`
-/

namespace A193532.P12109743222310607847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -2] fun n f1 =>
  f1 ⌈(n : ℚ) / 2⌉.toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193532.P12109743222310607847

namespace A193532

/-- `record[a(ceil(n/2))+n]` -/
def P12109743222310607847.Spec : Prop :=
  ∀ n, P12109743222310607847.a n = A193532 (n + 1)

end A193532

/-! ## A193532.P14728329974768917745

`record[a(floor(n/2))+1+n]` with `a(0)=3, a(1)=0`
-/

namespace A193532.P14728329974768917745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193532.P14728329974768917745

namespace A193532

/-- `record[a(floor(n/2))+1+n]` -/
def P14728329974768917745.Spec : Prop :=
  ∀ n, (P14728329974768917745.a n : ℤ) = A193532 (n + 1)

end A193532

/-! ## A193532.P15541156209953458560

`a(floor(n/2)-1)+3+n` with `a(0)=3, a(1)=4`
-/

namespace A193532.P15541156209953458560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (⌊(n : ℚ) / 2⌋ - 1).toNat + 3 + n

end

end A193532.P15541156209953458560

namespace A193532

/-- `a(floor(n/2)-1)+3+n` -/
def P15541156209953458560.Spec : Prop :=
  ∀ n, (P15541156209953458560.a n : ℤ) = A193532 (n + 1)

end A193532

/-! ## A193532.P17024038973141828636

`a(ceil((n-3)/2))+n+3` with `a(0)=3, a(1)=4`
-/

namespace A193532.P17024038973141828636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n a =>
  a ⌈((n : ℤ) - 3 : ℚ) / 2⌉.toNat + (n + 3)

end

end A193532.P17024038973141828636

namespace A193532

/-- `a(ceil((n-3)/2))+n+3` -/
def P17024038973141828636.Spec : Prop :=
  ∀ n, (P17024038973141828636.a n : ℤ) = A193532 (n + 1)

end A193532

/-! ## A193532.P2079737941306984079

`∑[val(n+2, 2)+1]+floor(log2(n+2))`
-/

namespace A193532.P2079737941306984079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 2) 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.log 2 (n + 2)

end

end A193532.P2079737941306984079

namespace A193532

/-- `∑[val(n+2, 2)+1]+floor(log2(n+2))` -/
def P2079737941306984079.Spec : Prop :=
  ∀ n, (P2079737941306984079.a n : ℤ) = A193532 (n + 1)

end A193532

/-! ## A193532.P6806691157012822323

`record[2-floor(1-a(floor(n/2))-n)]` with `a(0)=3, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A193532.P6806691157012822323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n f1 =>
  2 - (1 - f1 ⌊(n : ℚ) / 2⌋.toNat - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193532.P6806691157012822323

namespace A193532

/-- `record[2-floor(1-a(floor(n/2))-n)]` -/
def P6806691157012822323.Spec : Prop :=
  ∀ n, P6806691157012822323.a n = A193532 (n + 1)

end A193532

/-! ## A193532.P7030240214295195591

`∑[val(lt[n, 2*and(n, 2*n)]+1, 2)+1]`
-/

namespace A193532.P7030240214295195591
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => f2 j < f3 j) n + 1) 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193532.P7030240214295195591

namespace A193532

/-- `∑[val(lt[n, 2*and(n, 2*n)]+1, 2)+1]` -/
def P7030240214295195591.Spec : Prop :=
  ∀ n, (P7030240214295195591.a n : ℤ) = A193532 (n + 1)

end A193532

/-! ## A193532.P2465305631342021657

`∑[A135560(n+2)]`
-/

namespace A193532.P2465305631342021657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135560 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193532.P2465305631342021657

namespace A193532

/-- `∑[A135560(n+2)]` -/
def P2465305631342021657.Spec : Prop :=
  ∀ n, P2465305631342021657.a n = A193532 (n + 1)

end A193532

/-! ## A193532.P15877637865375686392

`∑[A241235(n+2)]`
-/

namespace A193532.P15877637865375686392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241235 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193532.P15877637865375686392

namespace A193532

/-- `∑[A241235(n+2)]` -/
def P15877637865375686392.Spec : Prop :=
  ∀ n, P15877637865375686392.a n = A193532 (n + 1)

end A193532

/-!
# A193533: Numbers k such that the quartic elliptic curve y^2 = 5x^4 - 4k has no integer solutions.

The programs for A193533, there is no canonical definition to state claims against.
-/

/-! ## A193533.P5906710268142278751

`eq[0, A193531(n+1)]+1`
-/

namespace A193533.P5906710268142278751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193531 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A193533.P5906710268142278751

/-! ## A193533.P5862860311847299583

`lt[A193531(n+2), 1]+2`
-/

namespace A193533.P5862860311847299583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193531 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A193533.P5862860311847299583

/-! ## A193533.P14653286888106307457

`eq[1, exp(a(A193531(n)))]` with `a(0)=0, a(1)=0`
-/

namespace A193533.P14653286888106307457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  Real.exp (f2 (A193531 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A193533.P14653286888106307457

/-! ## A193533.P8279608620765156578

`comp[A193587(n+1)-1]+1`
-/

namespace A193533.P8279608620765156578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193587 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A193533.P8279608620765156578

/-! ## A193533.P665781541271907184

`eq[0, A193531(A028310(n))]`
-/

namespace A193533.P665781541271907184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193531 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193533.P665781541271907184

/-! ## A193533.P15957949992730186082

`eq[0, A193531(A000007(n)+n)]`
-/

namespace A193533.P15957949992730186082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193531 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193533.P15957949992730186082

/-! ## A193533.P17889711091829920391

`eq[0, A193531(or(n, A000007(n)))]`
-/

namespace A193533.P17889711091829920391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193531 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193533.P17889711091829920391

/-! ## A193533.P9989422472880014025

`eq[1, A000079(a(A193531(n)))]` with `a(0)=0, a(1)=0`
-/

namespace A193533.P9989422472880014025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  A000079 (f2 (A193531 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193533.P9989422472880014025

/-! ## A193533.P6016277821937139267

`eq[1, A000118(a(A193531(n)))]` with `a(0)=0, a(1)=0`
-/

namespace A193533.P6016277821937139267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  A000118 (f2 (A193531 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193533.P6016277821937139267

/-! ## A193533.P5208365030115653582

`eq[1, A007318(a(A193531(n)))-1]` with `a(0)=4, a(1)=0`
-/

namespace A193533.P5208365030115653582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 0] fun n f2 =>
  A007318 (f2 (A193531 n).toNat).toNat - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193533.P5208365030115653582

/-!
# A193538: O.g.f.: exp( Sum_{n>=1} (sigma(2*n)-sigma(n))^2/2 * x^n/n ).

The programs for A193538, there is no canonical definition to state claims against.
-/

/-! ## A193538.P12009546698752924403

`A048621(A166060(n)+A010815(n))`
-/

namespace A193538.P12009546698752924403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048621 (A166060 n + A010815 n).toNat

end

end A193538.P12009546698752924403

/-! ## A193538.P16854820011189347511

`∑[A172311(a(n-1)+n)]` with `a(0)=1, a(1)=1`
-/

namespace A193538.P16854820011189347511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A172311 (f1 (n - 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193538.P16854820011189347511

/-!
# A193539: O.g.f.: exp( Sum_{n>=1} (sigma(2*n)-sigma(n))^3 * x^n/n ).

The programs for A193539, there is no canonical definition to state claims against.
-/

/-! ## A193539.P12893499085327800010

`A042965(∑{d}[7^n-2, #]+1)`
-/

namespace A193539.P12893499085327800010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (∑ d ∈ Nat.divisors (f1 n).natAbs, d + 1)

end

end A193539.P12893499085327800010

/-!
# A193540: E.g.f.: Pi/(sqrt(2)*L) * (1 + 2*Sum_{n>=1} cos(2*Pi*n*x/L)/cosh(n*Pi)) where L = Lemniscate constant.

The programs for A193540, there is no canonical definition to state claims against.
-/

/-! ## A193540.P13486235176820073439

`A033999(n)*A193543(n)`
-/

namespace A193540.P13486235176820073439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A193543 n

end

end A193540.P13486235176820073439

/-! ## A193540.P3725476097684635189

`A087960(n²)*A193543(n)`
-/

namespace A193540.P3725476097684635189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (n ^ 2) * A193543 n

end

end A193540.P3725476097684635189

/-! ## A193540.P13571517957131425661

`A193543(n)/A033999(n²)`
-/

namespace A193540.P13571517957131425661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193543 n : ℚ) / (A033999 (n ^ 2) : ℚ)

end

end A193540.P13571517957131425661

/-! ## A193540.P6068130678997057652

`A113446(A164073(n+1))*A193543(n)`
-/

namespace A193540.P6068130678997057652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113446 (A164073 (n + 1)).toNat * A193543 n

end

end A193540.P6068130678997057652

/-! ## A193540.P3153902648077420699

`A128834(A056578(n))*A193543(n)`
-/

namespace A193540.P3153902648077420699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (A056578 n).toNat * A193543 n

end

end A193540.P3153902648077420699

/-!
# A193541: E.g.f.: sqrt(2)*L / (Pi*(1 + 2*Sum_{n>=1} cos(2*Pi*n*x/L)/cosh(n*Pi) )) where L = Lemniscate constant.

The programs for A193541, there is no canonical definition to state claims against.
-/

/-! ## A193541.P1834751236567711402

`A190904(2*n)`
-/

namespace A193541.P1834751236567711402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190904 (2 * n)

end

end A193541.P1834751236567711402

/-! ## A193541.P11176467382252297822

`A033999(n)*A193544(n)`
-/

namespace A193541.P11176467382252297822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A193544 n

end

end A193541.P11176467382252297822

/-! ## A193541.P5892257863028608309

`A056594(2*n)*A193544(n)`
-/

namespace A193541.P5892257863028608309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A193544 n

end

end A193541.P5892257863028608309

/-! ## A193541.P9856084011390429123

`A100051(n²+1)*A193544(n)`
-/

namespace A193541.P9856084011390429123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 (n ^ 2 + 1) * A193544 n

end

end A193541.P9856084011390429123

/-! ## A193541.P1781023879617110470

`A193544(n)/A056594(A017365(n))`
-/

namespace A193541.P1781023879617110470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193544 n : ℚ) / (A056594 (A017365 n).toNat : ℚ)

end

end A193541.P1781023879617110470

/-!
# A193542: E.g.f.: 2*L^2/(Pi^2*(1 + 2*Sum_{n>=1} cos(2*Pi*n*x/L)/cosh(n*Pi) )^2) where L = Lemniscate constant.

The programs for A193542, there is no canonical definition to state claims against.
-/

/-! ## A193542.P9438219564212298285

`(a(n-1)-1)*A193545(n)` with `a(0)=1`
-/

namespace A193542.P9438219564212298285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - 1) * A193545 n

end

end A193542.P9438219564212298285

/-! ## A193542.P9824008520704094360

`A000038(n)-A193545(n)`
-/

namespace A193542.P9824008520704094360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A193545 n

end

end A193542.P9824008520704094360

/-! ## A193542.P14341008629091611837

`A056594(n)*A193545(n)`
-/

namespace A193542.P14341008629091611837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A193545 n

end

end A193542.P14341008629091611837

/-! ## A193542.P13155345604921778927

`A057077(n)*A193545(n)`
-/

namespace A193542.P13155345604921778927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A193545 n

end

end A193542.P13155345604921778927

/-! ## A193542.P16517533527481807631

`A000122(A053438(n))-A193545(n)`
-/

namespace A193542.P16517533527481807631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A053438 n).toNat - A193545 n

end

end A193542.P16517533527481807631

/-!
# A193543: E.g.f.: Pi/(sqrt(2)*L) * (1 + 2*Sum_{n>=1} cosh(2*Pi*n*x/L)/cosh(n*Pi)) where L = Lemniscate constant.

The programs for A193543, there is no canonical definition to state claims against.
-/

/-! ## A193543.P17753332279436931505

`abs(A193540(n))`
-/

namespace A193543.P17753332279436931505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A193540 n|

end

end A193543.P17753332279436931505

/-! ## A193543.P17443096819096667488

`gcd(A000038(n), A193540(n))`
-/

namespace A193543.P17443096819096667488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A193540 n)

end

end A193543.P17443096819096667488

/-! ## A193543.P16829879719041530945

`A087960(n²)*A193540(n)`
-/

namespace A193543.P16829879719041530945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (n ^ 2) * A193540 n

end

end A193543.P16829879719041530945

/-! ## A193543.P15809791032873208634

`A193540(n)/A087960(2*n)`
-/

namespace A193543.P15809791032873208634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193540 n : ℚ) / (A087960 (2 * n) : ℚ)

end

end A193543.P15809791032873208634

/-! ## A193543.P8373585908052667324

`A085143(A001511(n+1))*A193540(n)`
-/

namespace A193543.P8373585908052667324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085143 (A001511 (n + 1)).toNat * A193540 n

end

end A193543.P8373585908052667324

/-!
# A193544: E.g.f.: sqrt(2)*(L/Pi) / (1 + 2*Sum_{n>=1} cosh(2*Pi*n*x/L)/cosh(n*Pi)) where L = Lemniscate constant.

The programs for A193544, there is no canonical definition to state claims against.
-/

/-! ## A193544.P13500612144834236596

`A033999(n)*A193541(n)`
-/

namespace A193544.P13500612144834236596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A193541 n

end

end A193544.P13500612144834236596

/-! ## A193544.P17181728311638278542

`abs(A193541(n))*A087960(n)`
-/

namespace A193544.P17181728311638278542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A193541 n| * A087960 n

end

end A193544.P17181728311638278542

/-! ## A193544.P12087443189127070042

`A087960(n²)*A193541(n)`
-/

namespace A193544.P12087443189127070042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (n ^ 2) * A193541 n

end

end A193544.P12087443189127070042

/-! ## A193544.P1390405764793225527

`A057077(2*n)*A193541(n)`
-/

namespace A193544.P1390405764793225527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A193541 n

end

end A193544.P1390405764793225527

/-! ## A193544.P13091198363861674756

`A159601(n+1)/A286306(n+1)*A193541(n)`
-/

namespace A193544.P13091198363861674756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159601 (n + 1) : ℚ) / (A286306 (n + 1) : ℚ) * (A193541 n : ℚ)

end

end A193544.P13091198363861674756

/-!
# A193545: E.g.f.: 2*L^2/(Pi^2*(1 + 2*Sum_{n>=1} cosh(2*Pi*n*x/L)/cosh(n*Pi) )^2) where L = Lemniscate constant.

The programs for A193545, there is no canonical definition to state claims against.
-/

/-! ## A193545.P3017021229399731525

`xor(1, 1-A193542(n))`
-/

namespace A193545.P3017021229399731525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (1 - A193542 n)

end

end A193545.P3017021229399731525

/-! ## A193545.P17063650493161995337

`A000038(n)-A193542(n)`
-/

namespace A193545.P17063650493161995337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A193542 n

end

end A193545.P17063650493161995337

/-! ## A193545.P8128445009800986506

`A056594(n)*A193542(n)`
-/

namespace A193545.P8128445009800986506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A193542 n

end

end A193545.P8128445009800986506

/-! ## A193545.P17447879481383741731

`A117569(n+1)*A193542(n)`
-/

namespace A193545.P17447879481383741731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 (n + 1) * A193542 n

end

end A193545.P17447879481383741731

/-! ## A193545.P11391954507481414588

`A062157(A000203(n+1))*A193542(n)`
-/

namespace A193545.P11391954507481414588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A000203 (n + 1)).toNat * A193542 n

end

end A193545.P11391954507481414588

/-!
# A193549: E.g.f.: Sum_{n>=0} (1/n!) * Product_{k=1..n} tan(k*x).

The programs for A193549, there is no canonical definition to state claims against.
-/

/-! ## A193549.P17349211370302208408

`A228354(A148354(n))`
-/

namespace A193549.P17349211370302208408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228354 (A148354 n).toNat

end

end A193549.P17349211370302208408

/-! ## A193549.P7420215687795830856

`A325792(A179257(n))`
-/

namespace A193549.P7420215687795830856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325792 (A179257 n).toNat

end

end A193549.P7420215687795830856

/-!
# A193550: O.g.f.: 1/(1 - x/(1 - x/(1 - 9*x/(1 - 9*x/(1 - 25*x/(1 - 25*x/(1 - 49*x/(1 - 49*x/(1-...))))))))), a continued fraction involving the odd squares.

The programs for A193550, there is no canonical definition to state claims against.
-/

/-! ## A193550.P18138713644612361195

`A187183(2^∑[n])`
-/

namespace A193550.P18138713644612361195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187183 (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A193550.P18138713644612361195

/-!
# A193551: Smallest number with n as multiplicative projection.

The programs for A193551, there is no canonical definition to state claims against.
-/

/-! ## A193551.P10268820546082970407

`A284583(A167490(n+1))^A284582(A167490(n+1))`
-/

namespace A193551.P10268820546082970407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284583 (A167490 (n + 1)).toNat : ℚ) ^ (A284582 (A167490 (n + 1)).toNat : ℤ)

end

end A193551.P10268820546082970407

/-! ## A193551.P17997936607991287093

`A007947(n+1)^A003557(n+1)/A005135(A085771(n))`
-/

namespace A193551.P17997936607991287093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) ^ (A003557 (n + 1) : ℤ) / (A005135 (A085771 n).toNat : ℚ)

end

end A193551.P17997936607991287093

/-!
# A193552: Prime numbers ending in James Bond number ''007''.

The programs for A193552, the canonical program `A193552.P9809748821041931480` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193552 has offset 1).

The definition of A193552 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193552.P9809748821041931480

`p?[25*40*(n+1)+7]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193552

/-- `p?[25*40*(n+1)+7]` -/
def P9809748821041931480.Spec : Prop :=
  ∀ n, (P9809748821041931480.a n : ℤ) = A193552 (n + 1)

theorem P9809748821041931480.correct : P9809748821041931480.Spec := by
  intro n
  simp only [A193552, Nat.add_sub_cancel]

end A193552

/-! ## A193552.P7952799422970997768

`∩[A224718(n+1), A386240(n+1)]`
-/

namespace A193552.P7952799422970997768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193552.P7952799422970997768

namespace A193552

/-- `∩[A224718(n+1), A386240(n+1)]` -/
def P7952799422970997768.Spec : Prop :=
  ∀ n, (P7952799422970997768.a n : ℤ) = A193552 (n + 1)

end A193552

/-! ## A193552.P3427430571649491376

`p?[A168650(n+1)+7]%A168640(n+1)`
-/

namespace A193552.P3427430571649491376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168650 (n + 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A168640 (n + 1))

end

end A193552.P3427430571649491376

namespace A193552

/-- `p?[A168650(n+1)+7]%A168640(n+1)` -/
def P3427430571649491376.Spec : Prop :=
  ∀ n, P3427430571649491376.a n = A193552 (n + 1)

end A193552

/-!
# A193553: Sum of divisors of 4*n.

The programs for A193553, the canonical program `A193553.P12275866111934530140` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193553 has offset 1).

The definition of A193553 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193553.P12275866111934530140

`A000203(4*(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A193553

/-- `A000203(4*(n+1))` -/
def P12275866111934530140.Spec : Prop :=
  ∀ n, P12275866111934530140.a n = A193553 (n + 1)

theorem P12275866111934530140.correct : P12275866111934530140.Spec := by
  intro n
  simp only [A193553, Nat.add_sub_cancel]

end A193553

/-! ## A193553.P10872245213984525551

`∑{d}[4*(n+1), #]`
-/

namespace A193553.P10872245213984525551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A193553.P10872245213984525551

namespace A193553

/-- `∑{d}[4*(n+1), #]` -/
def P10872245213984525551.Spec : Prop :=
  ∀ n, (P10872245213984525551.a n : ℤ) = A193553 (n + 1)

end A193553

/-! ## A193553.P3286027468910940064

`A062731(2*(n+1))`
-/

namespace A193553.P3286027468910940064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062731 (2 * (n + 1))

end

end A193553.P3286027468910940064

namespace A193553

/-- `A062731(2*(n+1))` -/
def P3286027468910940064.Spec : Prop :=
  ∀ n, P3286027468910940064.a n = A193553 (n + 1)

end A193553

/-! ## A193553.P6707320878270756362

`abs(A000203(A004767(n)+1)-1)+1`
-/

namespace A193553.P6707320878270756362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000203 (A004767 n + 1).toNat - 1| + 1

end

end A193553.P6707320878270756362

namespace A193553

/-- `abs(A000203(A004767(n)+1)-1)+1` -/
def P6707320878270756362.Spec : Prop :=
  ∀ n, P6707320878270756362.a n = A193553 (n + 1)

end A193553

/-! ## A193553.P2583875625787767867

`abs(A000203(A016777(n+1)+n)-1)+1`
-/

namespace A193553.P2583875625787767867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000203 (A016777 (n + 1) + (n : ℤ)).toNat - 1| + 1

end

end A193553.P2583875625787767867

namespace A193553

/-- `abs(A000203(A016777(n+1)+n)-1)+1` -/
def P2583875625787767867.Spec : Prop :=
  ∀ n, P2583875625787767867.a n = A193553 (n + 1)

end A193553

/-! ## A193553.P10289607494830634596

`A378994(2*(n+1))*A378995(2*(n+1))`
-/

namespace A193553.P10289607494830634596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378994 (2 * (n + 1)) * A378995 (2 * (n + 1))

end

end A193553.P10289607494830634596

namespace A193553

/-- `A378994(2*(n+1))*A378995(2*(n+1))` -/
def P10289607494830634596.Spec : Prop :=
  ∀ n, P10289607494830634596.a n = A193553 (n + 1)

end A193553

/-! ## A193553.P13800310785991550612

`∑{d}[A004767(n)+1, #]%(A093074(n+1)^6)`
-/

namespace A193553.P13800310785991550612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) (A093074 (n + 1) ^ 6)

end

end A193553.P13800310785991550612

namespace A193553

/-- `∑{d}[A004767(n)+1, #]%(A093074(n+1)^6)` -/
def P13800310785991550612.Spec : Prop :=
  ∀ n, P13800310785991550612.a n = A193553 (n + 1)

end A193553

/-! ## A193553.P2362268886896147868

`A000593(n+1)+A062731(n+1)+A062731(n+1)`
-/

namespace A193553.P2362268886896147868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + (A062731 (n + 1) + A062731 (n + 1))

end

end A193553.P2362268886896147868

namespace A193553

/-- `A000593(n+1)+A062731(n+1)+A062731(n+1)` -/
def P2362268886896147868.Spec : Prop :=
  ∀ n, P2362268886896147868.a n = A193553 (n + 1)

end A193553

/-! ## A193553.P12463361572541802313

`A054785(n+1)+A062731(n+1)+A054785(n+1)`
-/

namespace A193553.P12463361572541802313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054785 (n + 1) + (A062731 (n + 1) + A054785 (n + 1))

end

end A193553.P12463361572541802313

namespace A193553

/-- `A054785(n+1)+A062731(n+1)+A054785(n+1)` -/
def P12463361572541802313.Spec : Prop :=
  ∀ n, P12463361572541802313.a n = A193553 (n + 1)

end A193553

/-! ## A193553.P10391664985285401635

`A074400(2*(n+1))+A000593(n+1)`
-/

namespace A193553.P10391664985285401635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (2 * (n + 1)) + A000593 (n + 1)

end

end A193553.P10391664985285401635

namespace A193553

/-- `A074400(2*(n+1))+A000593(n+1)` -/
def P10391664985285401635.Spec : Prop :=
  ∀ n, P10391664985285401635.a n = A193553 (n + 1)

end A193553

/-! ## A193553.P14855741895737949295

`A000593(n+1)*A088837(2*(n+1))`
-/

namespace A193553.P14855741895737949295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) * A088837 (2 * (n + 1))

end

end A193553.P14855741895737949295

namespace A193553

/-- `A000593(n+1)*A088837(2*(n+1))` -/
def P14855741895737949295.Spec : Prop :=
  ∀ n, P14855741895737949295.a n = A193553 (n + 1)

end A193553

/-! ## A193553.P2345887667199772246

`A346878(2*(n+1))+4*(n+1)`
-/

namespace A193553.P2345887667199772246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346878 (2 * (n + 1)) + (4 * (n + 1) : ℤ)

end

end A193553.P2345887667199772246

namespace A193553

/-- `A346878(2*(n+1))+4*(n+1)` -/
def P2345887667199772246.Spec : Prop :=
  ∀ n, P2345887667199772246.a n = A193553 (n + 1)

end A193553

/-! ## A193553.P15035697063260339789

`A272027(2*(n+1))-A074400(n+1)`
-/

namespace A193553.P15035697063260339789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272027 (2 * (n + 1)) - A074400 (n + 1)

end

end A193553.P15035697063260339789

namespace A193553

/-- `A272027(2*(n+1))-A074400(n+1)` -/
def P15035697063260339789.Spec : Prop :=
  ∀ n, P15035697063260339789.a n = A193553 (n + 1)

end A193553

/-! ## A193553.P8197889443909863234

`A091570(2*(n+1))+A074400(2*(n+1))`
-/

namespace A193553.P8197889443909863234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091570 (2 * (n + 1)) + A074400 (2 * (n + 1))

end

end A193553.P8197889443909863234

namespace A193553

/-- `A091570(2*(n+1))+A074400(2*(n+1))` -/
def P8197889443909863234.Spec : Prop :=
  ∀ n, P8197889443909863234.a n = A193553 (n + 1)

end A193553

/-! ## A193553.P9698942697828618180

`A355750(2*(n+1))+A099777(2*(n+1))`
-/

namespace A193553.P9698942697828618180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355750 (2 * (n + 1)) + A099777 (2 * (n + 1))

end

end A193553.P9698942697828618180

namespace A193553

/-- `A355750(2*(n+1))+A099777(2*(n+1))` -/
def P9698942697828618180.Spec : Prop :=
  ∀ n, P9698942697828618180.a n = A193553 (n + 1)

end A193553

/-! ## A193553.P7298380376661528268

`A272027(2*(n+1))-A146076(2*(n+1))`
-/

namespace A193553.P7298380376661528268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272027 (2 * (n + 1)) - A146076 (2 * (n + 1))

end

end A193553.P7298380376661528268

namespace A193553

/-- `A272027(2*(n+1))-A146076(2*(n+1))` -/
def P7298380376661528268.Spec : Prop :=
  ∀ n, P7298380376661528268.a n = A193553 (n + 1)

end A193553

/-! ## A193553.P3200765271910561963

`A239050(2*(n+1))-A215947(2*(n+1))`
-/

namespace A193553.P3200765271910561963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239050 (2 * (n + 1)) - A215947 (2 * (n + 1))

end

end A193553.P3200765271910561963

namespace A193553

/-- `A239050(2*(n+1))-A215947(2*(n+1))` -/
def P3200765271910561963.Spec : Prop :=
  ∀ n, P3200765271910561963.a n = A193553 (n + 1)

end A193553

/-! ## A193553.P8258138206912379569

`A326124(2*(n+1))-A326124(2*n+1)`
-/

namespace A193553.P8258138206912379569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326124 (2 * (n + 1)) - A326124 (2 * n + 1)

end

end A193553.P8258138206912379569

namespace A193553

/-- `A326124(2*(n+1))-A326124(2*n+1)` -/
def P8258138206912379569.Spec : Prop :=
  ∀ n, P8258138206912379569.a n = A193553 (n + 1)

end A193553

/-! ## A193553.P8167606725260656847

`A074400(A008586(n+1))/2`
-/

namespace A193553.P8167606725260656847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (A008586 (n + 1)).toNat : ℚ) / 2

end

end A193553.P8167606725260656847

namespace A193553

/-- `A074400(A008586(n+1))/2` -/
def P8167606725260656847.Spec : Prop :=
  ∀ n, P8167606725260656847.a n = (A193553 (n + 1) : ℚ)

end A193553

/-! ## A193553.P7902215048666341074

`A073255(A065896(2*(n+1)))`
-/

namespace A193553.P7902215048666341074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073255 (A065896 (2 * (n + 1))).toNat

end

end A193553.P7902215048666341074

namespace A193553

/-- `A073255(A065896(2*(n+1)))` -/
def P7902215048666341074.Spec : Prop :=
  ∀ n, P7902215048666341074.a n = A193553 (n + 1)

end A193553

/-!
# A193554: Triangle read by rows: first column: top entry is 1, then powers of 2; rest of triangle is Pascal's triangle A007318.

The programs for A193554, the canonical program `A193554.P2296603449366778039` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193554 has offset 0).

The definition of A193554 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193554.P2296603449366778039

`A011782(A158821(n))*A135225(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A193554

/-- `A011782(A158821(n))*A135225(n)` -/
def P2296603449366778039.Spec : Prop :=
  ∀ n, P2296603449366778039.a n = A193554 n

theorem P2296603449366778039.correct : P2296603449366778039.Spec := by
  intro n
  simp only [A193554]

end A193554

/-! ## A193554.P9834064104973108222

`or(A097805(n), A131577(A158821(n)))`
-/

namespace A193554.P9834064104973108222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A097805 n) (A131577 (A158821 n).toNat)

end

end A193554.P9834064104973108222

namespace A193554

/-- `or(A097805(n), A131577(A158821(n)))` -/
def P9834064104973108222.Spec : Prop :=
  ∀ n, P9834064104973108222.a n = A193554 n

end A193554

/-! ## A193554.P12458512055310555377

`A193787(A061579(n))`
-/

namespace A193554.P12458512055310555377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193787 (A061579 n).toNat

end

end A193554.P12458512055310555377

namespace A193554

/-- `A193787(A061579(n))` -/
def P12458512055310555377.Spec : Prop :=
  ∀ n, P12458512055310555377.a n = A193554 n

end A193554

/-! ## A193554.P4830288659907662586

`A193787(A038722(n+1)-1)`
-/

namespace A193554.P4830288659907662586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193787 (A038722 (n + 1) - 1).toNat

end

end A193554.P4830288659907662586

namespace A193554

/-- `A193787(A038722(n+1)-1)` -/
def P4830288659907662586.Spec : Prop :=
  ∀ n, P4830288659907662586.a n = A193554 n

end A193554

/-! ## A193554.P2018857978673022758

`or(A097805(n), A134309(A061579(n)))`
-/

namespace A193554.P2018857978673022758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A097805 n) (A134309 (A061579 n).toNat)

end

end A193554.P2018857978673022758

namespace A193554

/-- `or(A097805(n), A134309(A061579(n)))` -/
def P2018857978673022758.Spec : Prop :=
  ∀ n, P2018857978673022758.a n = A193554 n

end A193554

/-! ## A193554.P16703480680608987074

`A193787(A038722(n+2))`
-/

namespace A193554.P16703480680608987074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193787 (A038722 (n + 2)).toNat

end

end A193554.P16703480680608987074

namespace A193554

/-- `A193787(A038722(n+2))` -/
def P16703480680608987074.Spec : Prop :=
  ∀ n, P16703480680608987074.a n = A193554 n

end A193554

/-! ## A193554.P15214563395510442976

`gcd(A059297(n), A091918(A056943(n)))`
-/

namespace A193554.P15214563395510442976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059297 n) (A091918 (A056943 n).toNat)

end

end A193554.P15214563395510442976

namespace A193554

/-- `gcd(A059297(n), A091918(A056943(n)))` -/
def P15214563395510442976.Spec : Prop :=
  ∀ n, (P15214563395510442976.a n : ℤ) = A193554 n

end A193554

/-! ## A193554.P14665265489109305694

`gcd(A090802(A083920(n)), A097805(n))`
-/

namespace A193554.P14665265489109305694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A090802 (A083920 n).toNat) (A097805 n)

end

end A193554.P14665265489109305694

namespace A193554

/-- `gcd(A090802(A083920(n)), A097805(n))` -/
def P14665265489109305694.Spec : Prop :=
  ∀ n, (P14665265489109305694.a n : ℤ) = A193554 n

end A193554

/-! ## A193554.P15513971439876901793

`A091918(A056943(n)%A248669(n+1))`
-/

namespace A193554.P15513971439876901793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091918 (Int.tmod (A056943 n) (A248669 (n + 1))).toNat

end

end A193554.P15513971439876901793

namespace A193554

/-- `A091918(A056943(n)%A248669(n+1))` -/
def P15513971439876901793.Spec : Prop :=
  ∀ n, P15513971439876901793.a n = A193554 n

end A193554

/-! ## A193554.P5398067899389615870

`(A139524(n)-A029653(n))/A035214(n)`
-/

namespace A193554.P5398067899389615870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139524 n - A029653 n : ℚ) / (A035214 n : ℚ)

end

end A193554.P5398067899389615870

namespace A193554

/-- `(A139524(n)-A029653(n))/A035214(n)` -/
def P5398067899389615870.Spec : Prop :=
  ∀ n, P5398067899389615870.a n = (A193554 n : ℚ)

end A193554

/-! ## A193554.P1060248750866718530

`or(A097805(n), A185740(A233583(n+1)))`
-/

namespace A193554.P1060248750866718530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A097805 n) (A185740 (A233583 (n + 1)).toNat)

end

end A193554.P1060248750866718530

namespace A193554

/-- `or(A097805(n), A185740(A233583(n+1)))` -/
def P1060248750866718530.Spec : Prop :=
  ∀ n, P1060248750866718530.a n = A193554 n

end A193554

/-! ## A193554.P602815693805802137

`A273943(A139524(n))-A071919(n)`
-/

namespace A193554.P602815693805802137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A139524 n).toNat - A071919 n

end

end A193554.P602815693805802137

namespace A193554

/-- `A273943(A139524(n))-A071919(n)` -/
def P602815693805802137.Spec : Prop :=
  ∀ n, P602815693805802137.a n = A193554 n

end A193554

/-! ## A193554.P4156405523321521888

`A110654(A091918(n)-A037012(n))`
-/

namespace A193554.P4156405523321521888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A091918 n - A037012 n).toNat

end

end A193554.P4156405523321521888

namespace A193554

/-- `A110654(A091918(n)-A037012(n))` -/
def P4156405523321521888.Spec : Prop :=
  ∀ n, P4156405523321521888.a n = A193554 n

end A193554

/-!
# A193555: Numerators of the squared radii of the smallest enclosing circles of n points with integer coordinates and distinct mutual distances, arranged such that the radius of their enclosing circle is minimized. Denominators are given in A193556.

The programs for A193555, there is no canonical definition to state claims against.
-/

/-! ## A193555.P9382928932175282514

`A209442(a(n-1))` with `a(0)=1, a(1)=5, a(2)=5, a(3)=5`
-/

namespace A193555.P9382928932175282514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 5, 5] fun n a =>
  A209442 (a (n - 1)).toNat

end

end A193555.P9382928932175282514

/-!
# A193556: Denominators of the squared radii of the smallest enclosing circles of n points with integer coordinates and distinct mutual distances, arranged such that the radius of their enclosing circle is minimized. Numerators are given in A193555.

The programs for A193556, there is no canonical definition to state claims against.
-/

/-! ## A193556.P10965825813972337359

`A108300(a(n-1)+4)` with `a(0)=4, a(1)=4, a(2)=2, a(3)=1`
-/

namespace A193556.P10965825813972337359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 4, 2, 1] fun n a =>
  A108300 (a (n - 1) + 4).toNat

end

end A193556.P10965825813972337359

/-!
# A193558: Differences between consecutive primes of the form k^2+1.

The programs for A193558, the canonical program `A193558.P5296547298766818004` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193558 has offset 1).

The definition of A193558 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193558.P5296547298766818004

`A121326(n+1)-A002496(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A193558

/-- `A121326(n+1)-A002496(n+1)` -/
def P5296547298766818004.Spec : Prop :=
  ∀ n, P5296547298766818004.a n = A193558 (n + 1)

theorem P5296547298766818004.correct : P5296547298766818004.Spec := by
  intro n
  simp only [A193558, Nat.add_sub_cancel]

end A193558

/-! ## A193558.P17432029461417221903

`A121326(n+1)-(A075408(n+1)+1)`
-/

namespace A193558.P17432029461417221903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121326 (n + 1) - (A075408 (n + 1) + 1)

end

end A193558.P17432029461417221903

namespace A193558

/-- `A121326(n+1)-(A075408(n+1)+1)` -/
def P17432029461417221903.Spec : Prop :=
  ∀ n, P17432029461417221903.a n = A193558 (n + 1)

theorem P17432029461417221903.correct : P17432029461417221903.Spec := by
  intro n
  simp only [A193558, Nat.add_sub_cancel, A193558.P17432029461417221903.a, A193558.P5296547298766818004.a, A002496, A002496.P13667531374760205001.a, A075408, A075408.P15345791535842021127.a, A121326, A121326.P7190985811209929169.a, A009005, A009005.P4556890301061570360.a, A054964, A054964.P645230808875844543.f1, A054964.P645230808875844543.a, A002522, A002522.P3778392011853271743.a, A333167, A333167.P7830250556896041600.a, A333169, A333169.P8041061752242929731.a, A000010, A000010.P4673923239450215316.a, A105397, A105397.P12786109591907576801.a, A193432, A193432.P15803049534732017682.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193558

/-! ## A193558.P16934240099061362972

`A121326(n+1)-(A005574(n+1)²+1)`
-/

namespace A193558.P16934240099061362972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121326 (n + 1) - (A005574 (n + 1) ^ 2 + 1)

end

end A193558.P16934240099061362972

namespace A193558

/-- `A121326(n+1)-(A005574(n+1)²+1)` -/
def P16934240099061362972.Spec : Prop :=
  ∀ n, P16934240099061362972.a n = A193558 (n + 1)

end A193558

/-! ## A193558.P16541127988294076112

`A121326(n+1)-((A090693(n+1)-1)²+1)`
-/

namespace A193558.P16541127988294076112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121326 (n + 1) - ((A090693 (n + 1) - 1) ^ 2 + 1)

end

end A193558.P16541127988294076112

namespace A193558

/-- `A121326(n+1)-((A090693(n+1)-1)²+1)` -/
def P16541127988294076112.Spec : Prop :=
  ∀ n, P16541127988294076112.a n = A193558 (n + 1)

end A193558

/-! ## A193558.P4339045855531554117

`A121326(n+1)-(A090693(n+1)+A005574(n+1)*A089593(n+1))`
-/

namespace A193558.P4339045855531554117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121326 (n + 1) - (A090693 (n + 1) + A005574 (n + 1) * A089593 (n + 1))

end

end A193558.P4339045855531554117

namespace A193558

/-- `A121326(n+1)-(A090693(n+1)+A005574(n+1)*A089593(n+1))` -/
def P4339045855531554117.Spec : Prop :=
  ∀ n, P4339045855531554117.a n = A193558 (n + 1)

end A193558

/-! ## A193558.P8833362915762912390

`Δ[A002496(n+1)]`
-/

namespace A193558.P8833362915762912390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193558.P8833362915762912390

namespace A193558

/-- `Δ[A002496(n+1)]` -/
def P8833362915762912390.Spec : Prop :=
  ∀ n, P8833362915762912390.a n = A193558 (n + 1)

end A193558

/-! ## A193558.P13936067669338946217

`Δ[A075408(n+1)]`
-/

namespace A193558.P13936067669338946217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193558.P13936067669338946217

namespace A193558

/-- `Δ[A075408(n+1)]` -/
def P13936067669338946217.Spec : Prop :=
  ∀ n, P13936067669338946217.a n = A193558 (n + 1)

end A193558

/-! ## A193558.P3083119230849174121

`Δ[A005574(n+1)²]`
-/

namespace A193558.P3083119230849174121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193558.P3083119230849174121

namespace A193558

/-- `Δ[A005574(n+1)²]` -/
def P3083119230849174121.Spec : Prop :=
  ∀ n, P3083119230849174121.a n = A193558 (n + 1)

end A193558

/-! ## A193558.P5246819129988641044

`Δ[(A059793(n)/2)²]`
-/

namespace A193558.P5246819129988641044
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A059793 n : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193558.P5246819129988641044

namespace A193558

/-- `Δ[(A059793(n)/2)²]` -/
def P5246819129988641044.Spec : Prop :=
  ∀ n, P5246819129988641044.a n = (A193558 (n + 1) : ℚ)

end A193558

/-! ## A193558.P12800735224369421688

`Δ[(A089593(n+1)+1)²]`
-/

namespace A193558.P12800735224369421688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A089593 (n + 1) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193558.P12800735224369421688

namespace A193558

/-- `Δ[(A089593(n+1)+1)²]` -/
def P12800735224369421688.Spec : Prop :=
  ∀ n, P12800735224369421688.a n = A193558 (n + 1)

end A193558

/-! ## A193558.P7646264427686939046

`Δ[(1-A090693(n+1))²]`
-/

namespace A193558.P7646264427686939046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A090693 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193558.P7646264427686939046

namespace A193558

/-- `Δ[(1-A090693(n+1))²]` -/
def P7646264427686939046.Spec : Prop :=
  ∀ n, P7646264427686939046.a n = A193558 (n + 1)

end A193558

/-! ## A193558.P183304647198141102

`A002496(n+2)-A002496(n+1)`
-/

namespace A193558.P183304647198141102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 2) - A002496 (n + 1)

end

end A193558.P183304647198141102

namespace A193558

/-- `A002496(n+2)-A002496(n+1)` -/
def P183304647198141102.Spec : Prop :=
  ∀ n, P183304647198141102.a n = A193558 (n + 1)

end A193558

/-! ## A193558.P8716651944582961257

`A075408(n+2)-A075408(n+1)`
-/

namespace A193558.P8716651944582961257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075408 (n + 2) - A075408 (n + 1)

end

end A193558.P8716651944582961257

namespace A193558

/-- `A075408(n+2)-A075408(n+1)` -/
def P8716651944582961257.Spec : Prop :=
  ∀ n, P8716651944582961257.a n = A193558 (n + 1)

end A193558

/-! ## A193558.P13310578816556553903

`A005574(n+2)²-A005574(n+1)²`
-/

namespace A193558.P13310578816556553903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 2) ^ 2 - A005574 (n + 1) ^ 2

end

end A193558.P13310578816556553903

namespace A193558

/-- `A005574(n+2)²-A005574(n+1)²` -/
def P13310578816556553903.Spec : Prop :=
  ∀ n, P13310578816556553903.a n = A193558 (n + 1)

end A193558

/-! ## A193558.P11797661292582795645

`(A005574(n+1)+A005574(n+2))*A214516(n+1)`
-/

namespace A193558.P11797661292582795645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005574 (n + 1) + A005574 (n + 2)) * A214516 (n + 1)

end

end A193558.P11797661292582795645

namespace A193558

/-- `(A005574(n+1)+A005574(n+2))*A214516(n+1)` -/
def P11797661292582795645.Spec : Prop :=
  ∀ n, P11797661292582795645.a n = A193558 (n + 1)

end A193558

/-! ## A193558.P320405437682722268

`A121326(n+1)-A002522(A005574(n+1))`
-/

namespace A193558.P320405437682722268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121326 (n + 1) - A002522 (A005574 (n + 1)).toNat

end

end A193558.P320405437682722268

namespace A193558

/-- `A121326(n+1)-A002522(A005574(n+1))` -/
def P320405437682722268.Spec : Prop :=
  ∀ n, P320405437682722268.a n = A193558 (n + 1)

end A193558

/-! ## A193558.P2874043524899871951

`Δ[record[A089120(n+1)]]`
-/

namespace A193558.P2874043524899871951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193558.P2874043524899871951

namespace A193558

/-- `Δ[record[A089120(n+1)]]` -/
def P2874043524899871951.Spec : Prop :=
  ∀ n, P2874043524899871951.a n = A193558 (n + 1)

end A193558

/-! ## A193558.P10671004311050354243

`Δ[eq[1, A193330(n)]²]`
-/

namespace A193558.P10671004311050354243
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A193558.P10671004311050354243

namespace A193558

/-- `Δ[eq[1, A193330(n)]²]` -/
def P10671004311050354243.Spec : Prop :=
  ∀ n, P10671004311050354243.a n = A193558 (n + 1)

end A193558

/-! ## A193558.P9472141794546512515

`Δ[eq[1, A284376(n)]²]`
-/

namespace A193558.P9472141794546512515
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284376 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A193558.P9472141794546512515

namespace A193558

/-- `Δ[eq[1, A284376(n)]²]` -/
def P9472141794546512515.Spec : Prop :=
  ∀ n, P9472141794546512515.a n = A193558 (n + 1)

end A193558

/-! ## A193558.P14722866353141581998

`Δ[eq[2, A193432(n)]²]`
-/

namespace A193558.P14722866353141581998
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A193558.P14722866353141581998

namespace A193558

/-- `Δ[eq[2, A193432(n)]²]` -/
def P14722866353141581998.Spec : Prop :=
  ∀ n, P14722866353141581998.a n = A193558 (n + 1)

end A193558

/-!
# A193560: Augmentation of the Catalan triangle, A009766. See Comments.

The programs for A193560, there is no canonical definition to state claims against.
-/

/-! ## A193560.P17816689937098815052

`or(A039798(n), A103489(A294876(n+1)))`
-/

namespace A193560.P17816689937098815052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A039798 n) (A103489 (A294876 (n + 1)).toNat)

end

end A193560.P17816689937098815052

/-! ## A193560.P2922390335016529531

`A102681(A051049(n))+A039798(n)`
-/

namespace A193560.P2922390335016529531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (A051049 n).toNat + A039798 n

end

end A193560.P2922390335016529531

/-! ## A193560.P9940726284068506925

`A122282(A039798(n))`
-/

namespace A193560.P9940726284068506925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122282 (A039798 n).toNat

end

end A193560.P9940726284068506925

/-! ## A193560.P7954881119904083618

`A194057(A001498(n))`
-/

namespace A193560.P7954881119904083618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194057 (A001498 n).toNat

end

end A193560.P7954881119904083618

/-! ## A193560.P14156704318942834783

`A353495(A000225(n+4))+A039798(n)`
-/

namespace A193560.P14156704318942834783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353495 (A000225 (n + 4)).toNat + A039798 n

end

end A193560.P14156704318942834783

/-!
# A193561: Augmentation of the triangle A004736. See Comments.

The programs for A193561, the canonical program `A193561.P13429840221131930164` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193561 has offset 0).

The definition of A193561 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1920 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193561.P13429840221131930164

`(C(comp[∑[n]]-n, 2)-n)!*A001498(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A193561

/-- `(C(comp[∑[n]]-n, 2)-n)!*A001498(n)` -/
def P13429840221131930164.Spec : Prop :=
  ∀ n, P13429840221131930164.a n = A193561 n

theorem P13429840221131930164.correct : P13429840221131930164.Spec := by
  intro n
  simp only [A193561]

end A193561

/-! ## A193561.P10064479696396490238

`A102625(∑[2*n]%comp[∑[n]])`
-/

namespace A193561.P10064479696396490238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102625 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A193561.P10064479696396490238

namespace A193561

/-- `A102625(∑[2*n]%comp[∑[n]])` -/
def P10064479696396490238.Spec : Prop :=
  ∀ n, P10064479696396490238.a n = A193561 n

end A193561

/-! ## A193561.P17597978487052392682

`A102625(∑[char[∑[n]]]²-(n+1))`
-/

namespace A193561.P17597978487052392682
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102625 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A193561.P17597978487052392682

namespace A193561

/-- `A102625(∑[char[∑[n]]]²-(n+1))` -/
def P17597978487052392682.Spec : Prop :=
  ∀ n, P17597978487052392682.a n = A193561 n

end A193561

/-! ## A193561.P1543752591261578188

`floor((n-C(∑[char[∑[n+1]]], 2))!/((n-C(∑[char[∑[n]]], 2))!*(C(comp[∑[n]]-n, 2)-(n+1))!))/2^(n-C(∑[char[∑[n]]], 2))*(C(comp[∑[n]]-n, 2)-n)!`
-/

namespace A193561.P1543752591261578188
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f11 j

open Classical in
def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f10 j = n then 1 else 0

def f13 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f13 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat : ℚ) / (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)).toNat * Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f7 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℚ)⌋ : ℚ) / (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f9 j) 2 : ℤ) : ℤ) * (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f12 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)).toNat : ℚ)

end

end A193561.P1543752591261578188

namespace A193561

/-- `floor((n-C(∑[char[∑[n+1]]], 2))!/((n-C(∑[char[∑[n]]], 2))!*(C(comp[∑[n]]-n, 2)-(n+1))!))/2^(n-C(∑[char[∑[n]]], 2))*(C(comp[∑[n]]-n, 2)-n)!` -/
def P1543752591261578188.Spec : Prop :=
  ∀ n, P1543752591261578188.a n = (A193561 n : ℚ)

end A193561

/-! ## A193561.P2666743775154761142

`floor((n-C(∑[char[∑[n+1]]], 2))!/((n-C(∑[char[∑[n]]], 2))!*(C(comp[∑[n]]-n, 2)-(n+1))!))/2^(n-C(∑[char[∑[n]]], 2))*A004736(n+1)!`
-/

namespace A193561.P2666743775154761142
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f11 j

open Classical in
def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f10 j = n then 1 else 0

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat : ℚ) / (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)).toNat * Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f7 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℚ)⌋ : ℚ) / (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f9 j) 2 : ℤ) : ℤ) * (Nat.factorial (A004736 (n + 1)).toNat : ℚ)

end

end A193561.P2666743775154761142

namespace A193561

/-- `floor((n-C(∑[char[∑[n+1]]], 2))!/((n-C(∑[char[∑[n]]], 2))!*(C(comp[∑[n]]-n, 2)-(n+1))!))/2^(n-C(∑[char[∑[n]]], 2))*A004736(n+1)!` -/
def P2666743775154761142.Spec : Prop :=
  ∀ n, P2666743775154761142.a n = (A193561 n : ℚ)

end A193561

/-!
# A193562: Number of divisors of n^4+1.

The programs for A193562, the canonical program `A193562.P320638825937170034` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193562 has offset 0).

The definition of A193562 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193562.P320638825937170034

`A000005(A002523(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A193562

/-- `A000005(A002523(n))` -/
def P320638825937170034.Spec : Prop :=
  ∀ n, P320638825937170034.a n = A193562 n

theorem P320638825937170034.correct : P320638825937170034.Spec := by
  intro n
  simp only [A193562]

end A193562

/-! ## A193562.P14626346211374498187

`A036453(A024621(n+1))^A193929(n)`
-/

namespace A193562.P14626346211374498187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036453 (A024621 (n + 1)).toNat : ℚ) ^ (A193929 n : ℤ)

end

end A193562.P14626346211374498187

namespace A193562

/-- `A036453(A024621(n+1))^A193929(n)` -/
def P14626346211374498187.Spec : Prop :=
  ∀ n, P14626346211374498187.a n = (A193562 n : ℚ)

end A193562

/-! ## A193562.P8371282415663126202

`A036453(A039836(n+1))^A193929(n)`
-/

namespace A193562.P8371282415663126202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036453 (A039836 (n + 1)).toNat : ℚ) ^ (A193929 n : ℤ)

end

end A193562.P8371282415663126202

namespace A193562

/-- `A036453(A039836(n+1))^A193929(n)` -/
def P8371282415663126202.Spec : Prop :=
  ∀ n, P8371282415663126202.a n = (A193562 n : ℚ)

end A193562

/-! ## A193562.P7595530284577623046

`A036453(A044345(n+1))^A193929(n)`
-/

namespace A193562.P7595530284577623046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036453 (A044345 (n + 1)).toNat : ℚ) ^ (A193929 n : ℤ)

end

end A193562.P7595530284577623046

namespace A193562

/-- `A036453(A044345(n+1))^A193929(n)` -/
def P7595530284577623046.Spec : Prop :=
  ∀ n, P7595530284577623046.a n = (A193562 n : ℚ)

end A193562

/-! ## A193562.P2722857180612940058

`A020639(A335249(A266977(n)))^A193929(n)`
-/

namespace A193562.P2722857180612940058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A335249 (A266977 n).toNat).toNat : ℚ) ^ (A193929 n : ℤ)

end

end A193562.P2722857180612940058

namespace A193562

/-- `A020639(A335249(A266977(n)))^A193929(n)` -/
def P2722857180612940058.Spec : Prop :=
  ∀ n, P2722857180612940058.a n = (A193562 n : ℚ)

end A193562

/-! ## A193562.P7089228800992761933

`A000034(A014442(n+1))^A193929(n)`
-/

namespace A193562.P7089228800992761933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 (A014442 (n + 1)).toNat : ℚ) ^ (A193929 n : ℤ)

end

end A193562.P7089228800992761933

namespace A193562

/-- `A000034(A014442(n+1))^A193929(n)` -/
def P7089228800992761933.Spec : Prop :=
  ∀ n, P7089228800992761933.a n = (A193562 n : ℚ)

end A193562

/-! ## A193562.P12483410736862204450

`A001227(A235154(n+1))^A193929(n)`
-/

namespace A193562.P12483410736862204450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001227 (A235154 (n + 1)).toNat : ℚ) ^ (A193929 n : ℤ)

end

end A193562.P12483410736862204450

namespace A193562

/-- `A001227(A235154(n+1))^A193929(n)` -/
def P12483410736862204450.Spec : Prop :=
  ∀ n, P12483410736862204450.a n = (A193562 n : ℚ)

end A193562

/-! ## A193562.P7837105861048835954

`A126241(A191116(n+1))^A193929(n)`
-/

namespace A193562.P7837105861048835954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126241 (A191116 (n + 1)).toNat : ℚ) ^ (A193929 n : ℤ)

end

end A193562.P7837105861048835954

namespace A193562

/-- `A126241(A191116(n+1))^A193929(n)` -/
def P7837105861048835954.Spec : Prop :=
  ∀ n, P7837105861048835954.a n = (A193562 n : ℚ)

end A193562

/-! ## A193562.P2086029355954507974

`A107393(A033581(n))^A193929(n)`
-/

namespace A193562.P2086029355954507974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107393 (A033581 n).toNat : ℚ) ^ (A193929 n : ℤ)

end

end A193562.P2086029355954507974

namespace A193562

/-- `A107393(A033581(n))^A193929(n)` -/
def P2086029355954507974.Spec : Prop :=
  ∀ n, P2086029355954507974.a n = (A193562 n : ℚ)

end A193562

/-! ## A193562.P12426932446162256606

`A193432(n²)`
-/

namespace A193562.P12426932446162256606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 (n ^ 2)

end

end A193562.P12426932446162256606

namespace A193562

/-- `A193432(n²)` -/
def P12426932446162256606.Spec : Prop :=
  ∀ n, P12426932446162256606.a n = A193562 n

theorem P12426932446162256606.correct : P12426932446162256606.Spec := by
  intro n
  simp only [A193562, Nat.add_sub_cancel, A193562.P12426932446162256606.a, A193562.P320638825937170034.a, A000005, A000005.P16091521709108585461.a, A002523, A002523.P178649398705969946.a, A193432, A193432.P15803049534732017682.a, A002522, A002522.P3778392011853271743.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193562

/-! ## A193562.P17629154037650840220

`2^A193330(n²)`
-/

namespace A193562.P17629154037650840220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A193330 (n ^ 2) : ℤ)

end

end A193562.P17629154037650840220

namespace A193562

/-- `2^A193330(n²)` -/
def P17629154037650840220.Spec : Prop :=
  ∀ n, P17629154037650840220.a n = (A193562 n : ℚ)

end A193562

/-! ## A193562.P12170287168243986838

`A000005(A278162(n²))`
-/

namespace A193562.P12170287168243986838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278162 (n ^ 2)).toNat

end

end A193562.P12170287168243986838

namespace A193562

/-- `A000005(A278162(n²))` -/
def P12170287168243986838.Spec : Prop :=
  ∀ n, P12170287168243986838.a n = A193562 n

end A193562

/-! ## A193562.P15721624489665197362

`A333167(n²)/A105397(n)`
-/

namespace A193562.P15721624489665197362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333167 (n ^ 2) : ℚ) / (A105397 n : ℚ)

end

end A193562.P15721624489665197362

namespace A193562

/-- `A333167(n²)/A105397(n)` -/
def P15721624489665197362.Spec : Prop :=
  ∀ n, P15721624489665197362.a n = (A193562 n : ℚ)

end A193562

/-!
# A193563: a(0) = 0, a(n) = n^2 * (a(n-1) + 1).

The programs for A193563, the canonical program `A193563.P11756582701344874052` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193563 has offset 0).

The definition of A193563 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(a(n-1)+1)` (program `A193563.P11756582701344874052`, by `A193563.P11756582701344874052.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A193563.P11756582701344874052

`n²*(a(n-1)+1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193563

/-- `n²*(a(n-1)+1)` -/
def P11756582701344874052.Spec : Prop :=
  ∀ n, (P11756582701344874052.a n : ℤ) = A193563 n

theorem P11756582701344874052.correct : P11756582701344874052.Spec := by
  intro n
  simp only [A193563]

end A193563

/-! ## A193563.P34769966651464261

`n*n*(a(n-1)+1)` with `a(0)=0`
-/

namespace A193563.P34769966651464261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * (n * (a (n - 1) + 1))

end

end A193563.P34769966651464261

namespace A193563

/-- `n*n*(a(n-1)+1)` -/
def P34769966651464261.Spec : Prop :=
  ∀ n, (P34769966651464261.a n : ℤ) = A193563 n

theorem P34769966651464261.correct : P34769966651464261.Spec := by
  intro n
  simp only [A193563, Nat.add_sub_cancel, A193563.P34769966651464261.a, A193563.P11756582701344874052.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A193563

/-! ## A193563.P17294318166264035437

`lcm(n², a(n-1))+n²` with `a(0)=0`
-/

namespace A193563.P17294318166264035437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm (n ^ 2) (a (n - 1)) + n ^ 2

end

end A193563.P17294318166264035437

namespace A193563

/-- `lcm(n², a(n-1))+n²` -/
def P17294318166264035437.Spec : Prop :=
  ∀ n, (P17294318166264035437.a n : ℤ) = A193563 n

end A193563

/-! ## A193563.P7452512997923440290

`(a(n-1)+1)/n^(-2)` with `a(0)=0`
-/

namespace A193563.P7452512997923440290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 1) / (n : ℚ) ^ (-2 : ℤ)

end

end A193563.P7452512997923440290

namespace A193563

/-- `(a(n-1)+1)/n^(-2)` -/
def P7452512997923440290.Spec : Prop :=
  ∀ n, P7452512997923440290.a n = (A193563 n : ℚ)

end A193563

/-! ## A193563.P625498920647480634

`(or(2, a(n-1))-1)*n²` with `a(0)=0, a(1)=1`
-/

namespace A193563.P625498920647480634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (Int.lor 2 (a (n - 1)) - 1) * (n ^ 2 : ℤ)

end

end A193563.P625498920647480634

namespace A193563

/-- `(or(2, a(n-1))-1)*n²` -/
def P625498920647480634.Spec : Prop :=
  ∀ n, P625498920647480634.a n = A193563 n

end A193563

/-!
# A193564: In A014675, replace the n-th occurrence of 1 with n-1 and also replace the n-th occurrence of 2 with n-1.

The programs for A193564, the canonical program `A193564.P10859496068576138660` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193564 has offset 1).

The definition of A193564 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193564.P7428461359431683456

`abs(Δ[(n-1)*floor((n+1)/ϕ)]-n)`
-/

namespace A193564.P7428461359431683456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - (n : ℤ)|

end

end A193564.P7428461359431683456

namespace A193564

/-- `abs(Δ[(n-1)*floor((n+1)/ϕ)]-n)` -/
def P7428461359431683456.Spec : Prop :=
  ∀ n, P7428461359431683456.a n = A193564 (n + 1)

end A193564

/-! ## A193564.P10859496068576138660

`A026242(n+1)-1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A193564

/-- `A026242(n+1)-1` -/
def P10859496068576138660.Spec : Prop :=
  ∀ n, P10859496068576138660.a n = A193564 (n + 1)

theorem P10859496068576138660.correct : P10859496068576138660.Spec := by
  intro n
  simp only [A193564, Nat.add_sub_cancel]

end A193564

/-! ## A193564.P17262895424476256285

`floor(sinh(log(A064786(n+1))))`
-/

namespace A193564.P17262895424476256285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (A064786 (n + 1) : ℝ))⌋

end

end A193564.P17262895424476256285

namespace A193564

/-- `floor(sinh(log(A064786(n+1))))` -/
def P17262895424476256285.Spec : Prop :=
  ∀ n, P17262895424476256285.a n = A193564 (n + 1)

end A193564

/-! ## A193564.P13999136682953264565

`floor(sinh(log(A072062(n+1))))`
-/

namespace A193564.P13999136682953264565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (A072062 (n + 1) : ℝ))⌋

end

end A193564.P13999136682953264565

namespace A193564

/-- `floor(sinh(log(A072062(n+1))))` -/
def P13999136682953264565.Spec : Prop :=
  ∀ n, P13999136682953264565.a n = A193564 (n + 1)

end A193564

/-! ## A193564.P13986421637302604125

`(A050411(n+1)-1)%(n+3)`
-/

namespace A193564.P13986421637302604125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050411 (n + 1) - 1) (n + 3 : ℤ)

end

end A193564.P13986421637302604125

namespace A193564

/-- `(A050411(n+1)-1)%(n+3)` -/
def P13986421637302604125.Spec : Prop :=
  ∀ n, P13986421637302604125.a n = A193564 (n + 1)

end A193564

/-! ## A193564.P7102782374613829694

`A023443(A026242(n+1))`
-/

namespace A193564.P7102782374613829694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A026242 (n + 1)).toNat

end

end A193564.P7102782374613829694

namespace A193564

/-- `A023443(A026242(n+1))` -/
def P7102782374613829694.Spec : Prop :=
  ∀ n, P7102782374613829694.a n = A193564 (n + 1)

end A193564

/-! ## A193564.P6553038027669480426

`A003603(A026273(n+1))-1`
-/

namespace A193564.P6553038027669480426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A026273 (n + 1)).toNat - 1

end

end A193564.P6553038027669480426

namespace A193564

/-- `A003603(A026273(n+1))-1` -/
def P6553038027669480426.Spec : Prop :=
  ∀ n, P6553038027669480426.a n = A193564 (n + 1)

end A193564

/-! ## A193564.P5443696228076818362

`A026350(n+2)-2`
-/

namespace A193564.P5443696228076818362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026350 (n + 2) - 2

end

end A193564.P5443696228076818362

namespace A193564

/-- `A026350(n+2)-2` -/
def P5443696228076818362.Spec : Prop :=
  ∀ n, P5443696228076818362.a n = A193564 (n + 1)

end A193564

/-! ## A193564.P5209200273028638127

`A023444(A026350(n+2))`
-/

namespace A193564.P5209200273028638127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A026350 (n + 2)).toNat

end

end A193564.P5209200273028638127

namespace A193564

/-- `A023444(A026350(n+2))` -/
def P5209200273028638127.Spec : Prop :=
  ∀ n, P5209200273028638127.a n = A193564 (n + 1)

end A193564

/-! ## A193564.P6040751644830926037

`A026354(n+3)-3`
-/

namespace A193564.P6040751644830926037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026354 (n + 3) - 3

end

end A193564.P6040751644830926037

namespace A193564

/-- `A026354(n+3)-3` -/
def P6040751644830926037.Spec : Prop :=
  ∀ n, P6040751644830926037.a n = A193564 (n + 1)

end A193564

/-! ## A193564.P11129250445031563415

`A019586(A026273(n+1))`
-/

namespace A193564.P11129250445031563415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (A026273 (n + 1)).toNat

end

end A193564.P11129250445031563415

namespace A193564

/-- `A019586(A026273(n+1))` -/
def P11129250445031563415.Spec : Prop :=
  ∀ n, P11129250445031563415.a n = A193564 (n + 1)

end A193564

/-! ## A193564.P14037076565973339901

`A019586(A022342(n+2)-1)`
-/

namespace A193564.P14037076565973339901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (A022342 (n + 2) - 1).toNat

end

end A193564.P14037076565973339901

namespace A193564

/-- `A019586(A022342(n+2)-1)` -/
def P14037076565973339901.Spec : Prop :=
  ∀ n, P14037076565973339901.a n = A193564 (n + 1)

end A193564

/-! ## A193564.P13432606388412111144

`A019586(A000201(n+2)-2)`
-/

namespace A193564.P13432606388412111144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (A000201 (n + 2) - 2).toNat

end

end A193564.P13432606388412111144

namespace A193564

/-- `A019586(A000201(n+2)-2)` -/
def P13432606388412111144.Spec : Prop :=
  ∀ n, P13432606388412111144.a n = A193564 (n + 1)

end A193564

/-! ## A193564.P2003917379955906775

`A019586(A066096(n+2)-2)`
-/

namespace A193564.P2003917379955906775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (A066096 (n + 2) - 2).toNat

end

end A193564.P2003917379955906775

namespace A193564

/-- `A019586(A066096(n+2)-2)` -/
def P2003917379955906775.Spec : Prop :=
  ∀ n, P2003917379955906775.a n = A193564 (n + 1)

end A193564

/-! ## A193564.P1185394580861755799

`A019586(A022342(A022342(n+2)))`
-/

namespace A193564.P1185394580861755799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (A022342 (A022342 (n + 2)).toNat).toNat

end

end A193564.P1185394580861755799

namespace A193564

/-- `A019586(A022342(A022342(n+2)))` -/
def P1185394580861755799.Spec : Prop :=
  ∀ n, P1185394580861755799.a n = A193564 (n + 1)

end A193564

/-! ## A193564.P8695390781354897603

`A060144(A002251(A002251(n+1)+n))`
-/

namespace A193564.P8695390781354897603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A002251 (A002251 (n + 1) + (n : ℤ)).toNat).toNat

end

end A193564.P8695390781354897603

namespace A193564

/-- `A060144(A002251(A002251(n+1)+n))` -/
def P8695390781354897603.Spec : Prop :=
  ∀ n, P8695390781354897603.a n = A193564 (n + 1)

end A193564

/-! ## A193564.P12240897063964398900

`A060145(A019444(n+2)+n)`
-/

namespace A193564.P12240897063964398900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060145 (A019444 (n + 2) + (n : ℤ)).toNat

end

end A193564.P12240897063964398900

namespace A193564

/-- `A060145(A019444(n+2)+n)` -/
def P12240897063964398900.Spec : Prop :=
  ∀ n, P12240897063964398900.a n = A193564 (n + 1)

end A193564

/-! ## A193564.P13379499369165294477

`A339765(A019444(n+2)+n+1)`
-/

namespace A193564.P13379499369165294477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339765 (A019444 (n + 2) + (n + 1 : ℤ)).toNat

end

end A193564.P13379499369165294477

namespace A193564

/-- `A339765(A019444(n+2)+n+1)` -/
def P13379499369165294477.Spec : Prop :=
  ∀ n, P13379499369165294477.a n = A193564 (n + 1)

end A193564

/-! ## A193564.P4664886896828790527

`A106743(A000040(n+1))+A026242(n+1)`
-/

namespace A193564.P4664886896828790527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106743 (A000040 (n + 1)).toNat + A026242 (n + 1)

end

end A193564.P4664886896828790527

namespace A193564

/-- `A106743(A000040(n+1))+A026242(n+1)` -/
def P4664886896828790527.Spec : Prop :=
  ∀ n, P4664886896828790527.a n = A193564 (n + 1)

end A193564

/-! ## A193564.P16492961911434792318

`A070198(n)%A026242(n+1)`
-/

namespace A193564.P16492961911434792318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A026242 (n + 1))

end

end A193564.P16492961911434792318

namespace A193564

/-- `A070198(n)%A026242(n+1)` -/
def P16492961911434792318.Spec : Prop :=
  ∀ n, P16492961911434792318.a n = A193564 (n + 1)

end A193564

/-!
# A193565: Unhappy numbers which enter the cycle (4, 16, 37, 58, 89, 145, 42, 20) at 4.

The programs for A193565, there is no canonical definition to state claims against.
-/

/-! ## A193565.P3580916666967170171

`eq[4, A103369(n+1)]+1`
-/

namespace A193565.P3580916666967170171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A193565.P3580916666967170171

/-! ## A193565.P12504698508302426015

`eq[4, A103369(A028310(n))]`
-/

namespace A193565.P12504698508302426015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193565.P12504698508302426015

/-! ## A193565.P11618491189132818742

`A020725(eq[4, A103369(n+1)])`
-/

namespace A193565.P11618491189132818742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A193565.P11618491189132818742

/-! ## A193565.P756828790166658613

`eq[4, A103369(A123108(2*n))]`
-/

namespace A193565.P756828790166658613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193565.P756828790166658613

/-! ## A193565.P14908583035332198837

`eq[4, A103369(A000007(n)+n)]`
-/

namespace A193565.P14908583035332198837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193565.P14908583035332198837

/-!
# A193566: Unhappy numbers which enter the cycle (4, 16, 37, 58, 89, 145, 42, 20) at 16.

The programs for A193566, there is no canonical definition to state claims against.
-/

/-! ## A193566.P5787911223977367457

`eq[16, A103369(n+1)]+1`
-/

namespace A193566.P5787911223977367457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A193566.P5787911223977367457

/-! ## A193566.P14194152407655686206

`eq[16, A103369(A028310(n))]`
-/

namespace A193566.P14194152407655686206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193566.P14194152407655686206

/-! ## A193566.P17154929512303953694

`A020725(eq[16, A103369(n+1)])`
-/

namespace A193566.P17154929512303953694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A193566.P17154929512303953694

/-! ## A193566.P5893850972000296481

`eq[16, A103369(A233583(n+1))]`
-/

namespace A193566.P5893850972000296481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193566.P5893850972000296481

/-! ## A193566.P7769092918792070591

`eq[16, A103369(A123108(2*n))]`
-/

namespace A193566.P7769092918792070591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193566.P7769092918792070591

/-! ## A193566.P5637033200949341397

`eq[16, A103369(A000007(n)+n)]`
-/

namespace A193566.P5637033200949341397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193566.P5637033200949341397

/-!
# A193567: Unhappy numbers which enter the cycle (4, 16, 37, 58, 89, 145, 42, 20) at 37.

The programs for A193567, there is no canonical definition to state claims against.
-/

/-! ## A193567.P3299045232950317158

`eq[37, A103369(n+1)]+1`
-/

namespace A193567.P3299045232950317158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A193567.P3299045232950317158

/-! ## A193567.P2187492683915690080

`eq[37, A103369(A028310(n))]`
-/

namespace A193567.P2187492683915690080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193567.P2187492683915690080

/-! ## A193567.P6465636953944037322

`A020725(eq[37, A103369(n+1)])`
-/

namespace A193567.P6465636953944037322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A193567.P6465636953944037322

/-! ## A193567.P6028325123666754853

`eq[37, A103369(A233583(n+1))]`
-/

namespace A193567.P6028325123666754853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193567.P6028325123666754853

/-! ## A193567.P6637853849220036556

`eq[37, A103369(A123108(2*n))]`
-/

namespace A193567.P6637853849220036556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193567.P6637853849220036556

/-!
# A193568: Unhappy numbers which enter the cycle (4, 16, 37, 58, 89, 145, 42, 20) at 58.

The programs for A193568, there is no canonical definition to state claims against.
-/

/-! ## A193568.P7066385691974537591

`eq[58, A103369(n+1)]+1`
-/

namespace A193568.P7066385691974537591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  58

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A193568.P7066385691974537591

/-! ## A193568.P14752128257555344646

`lt[A334892(A103369(n+1)+1), 1]+1`
-/

namespace A193568.P14752128257555344646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334892 (A103369 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A193568.P14752128257555344646

/-! ## A193568.P14431786388184698488

`lt[2, A159257(A103369(n+1)+1)]+1`
-/

namespace A193568.P14431786388184698488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159257 (A103369 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A193568.P14431786388184698488

/-! ## A193568.P15815140665705736058

`lt[A083245(A103369(n+1)+2), A000007(n)]+1`
-/

namespace A193568.P15815140665705736058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083245 (A103369 (n + 1) + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A193568.P15815140665705736058

/-!
# A193569: Unhappy numbers which enter the cycle (4, 16, 37, 58, 89, 145, 42, 20) at 89.

The programs for A193569, there is no canonical definition to state claims against.
-/

/-! ## A193569.P17212195049425209925

`eq[89, A103369(n+1)]+1`
-/

namespace A193569.P17212195049425209925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  89

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A193569.P17212195049425209925

/-! ## A193569.P15586455070367898578

`eq[89, A103369(A028310(n))]`
-/

namespace A193569.P15586455070367898578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  89

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193569.P15586455070367898578

/-! ## A193569.P6182915448629204814

`A326178(eq[89, A103369(n+1)])`
-/

namespace A193569.P6182915448629204814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  89

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A193569.P6182915448629204814

/-! ## A193569.P9670701393156863768

`eq[8, dr(A103369(A123108(2*n)))]`
-/

namespace A193569.P9670701393156863768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A103369 (A123108 (2 * n)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A193569.P9670701393156863768

/-! ## A193569.P11150124830244808270

`lt[2, A001222(A103369(n+1)+1)]+1`
-/

namespace A193569.P11150124830244808270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A103369 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A193569.P11150124830244808270

/-! ## A193569.P2383497486945166658

`lt[4, A000005(A103369(n+1)+1)]+1`
-/

namespace A193569.P2383497486945166658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A103369 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A193569.P2383497486945166658

/-!
# A193570: Unhappy numbers which enter the cycle (4, 16, 37, 58, 89, 145, 42, 20) at 145.

The programs for A193570, there is no canonical definition to state claims against.
-/

/-! ## A193570.P377872932357361763

`lt[89, A103369(A028310(n))]`
-/

namespace A193570.P377872932357361763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  89

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A193570.P377872932357361763

/-! ## A193570.P10646124381418326336

`A326178(lt[89, A103369(n+1)])`
-/

namespace A193570.P10646124381418326336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  89

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A193570.P10646124381418326336

/-! ## A193570.P6603058845285417074

`eq[4, A060689(A103369(n+1)+2)]+1`
-/

namespace A193570.P6603058845285417074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060689 (A103369 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A193570.P6603058845285417074

/-! ## A193570.P14448420313949081556

`eq[6, A025581(floor(A103369(n+1)/5))]+1`
-/

namespace A193570.P14448420313949081556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 ⌊(A103369 (n + 1) : ℚ) / 5⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A193570.P14448420313949081556

/-! ## A193570.P9181081768429865487

`A010051(2*(n+2))+lt[89, A103369(n+1)]+1`
-/

namespace A193570.P9181081768429865487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  89

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 2)) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ)

end

end A193570.P9181081768429865487

/-!
# A193571: Unhappy numbers which enter the cycle (4, 16, 37, 58, 89, 145, 42, 20) at 42.

The programs for A193571, there is no canonical definition to state claims against.
-/

/-! ## A193571.P17842356658816009438

`A020725(eq[42, A103369(n+1)])`
-/

namespace A193571.P17842356658816009438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  42

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A193571.P17842356658816009438

/-!
# A193572: Unhappy numbers which enter the cycle (4, 16, 37, 58, 89, 145, 42, 20) at 20.

The programs for A193572, there is no canonical definition to state claims against.
-/

/-! ## A193572.P4294051196956336541

`eq[20, A103369(n+1)]+1`
-/

namespace A193572.P4294051196956336541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A193572.P4294051196956336541

/-! ## A193572.P5482621094361518171

`eq[20, A103369(A028310(n))]`
-/

namespace A193572.P5482621094361518171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193572.P5482621094361518171

/-! ## A193572.P1024124050568095357

`A020725(eq[20, A103369(n+1)])`
-/

namespace A193572.P1024124050568095357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A193572.P1024124050568095357

/-! ## A193572.P14573782485017797513

`A326178(eq[20, A103369(n+1)])`
-/

namespace A193572.P14573782485017797513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A193572.P14573782485017797513

/-! ## A193572.P13685130510723984215

`eq[2, dr(A103369(A123108(2*n)))]`
-/

namespace A193572.P13685130510723984215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A103369 (A123108 (2 * n)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A193572.P13685130510723984215

/-!
# A193575: T(n)^3 - n^3 where T(n) is a triangular number.

The programs for A193575, the canonical program `A193575.P18000792037216841104` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193575 has offset 1).

The definition of A193575 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193575.P11341191032827671191

`1/8*n*((n+1)²+4*(n+1)+7)*(n+1)^3`
-/

namespace A193575.P11341191032827671191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 8 * (n : ℚ) * ((n + 1) ^ 2 + 4 * (n + 1) + 7 : ℚ) * ((n + 1) ^ 3 : ℚ)

end

end A193575.P11341191032827671191

namespace A193575

/-- `1/8*n*((n+1)²+4*(n+1)+7)*(n+1)^3` -/
def P11341191032827671191.Spec : Prop :=
  ∀ n, P11341191032827671191.a n = (A193575 (n + 1) : ℚ)

theorem P11341191032827671191.correct : P11341191032827671191.Spec := by
  intro n
  simp only [A193575, Nat.add_sub_cancel, A193575.P11341191032827671191.a, A193575.P18000792037216841104.a, A000217, A000217.P10269402890581615239.a, A000578, A000578.P12162961755414704816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A193575

/-! ## A193575.P18000792037216841104

`A000217(n+1)^3-A000578(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A193575

/-- `A000217(n+1)^3-A000578(n+1)` -/
def P18000792037216841104.Spec : Prop :=
  ∀ n, P18000792037216841104.a n = A193575 (n + 1)

theorem P18000792037216841104.correct : P18000792037216841104.Spec := by
  intro n
  simp only [A193575, Nat.add_sub_cancel]

end A193575

/-! ## A193575.P12908392403457390797

`A071910(n)+∑[n]²`
-/

namespace A193575.P12908392403457390797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071910 n + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A193575.P12908392403457390797

namespace A193575

/-- `A071910(n)+∑[n]²` -/
def P12908392403457390797.Spec : Prop :=
  ∀ n, P12908392403457390797.a n = A193575 (n + 1)

end A193575

/-! ## A193575.P15507903416505532190

`A059827(n+1)-(n+1)^3`
-/

namespace A193575.P15507903416505532190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059827 (n + 1) - ((n + 1) ^ 3 : ℤ)

end

end A193575.P15507903416505532190

namespace A193575

/-- `A059827(n+1)-(n+1)^3` -/
def P15507903416505532190.Spec : Prop :=
  ∀ n, P15507903416505532190.a n = A193575 (n + 1)

end A193575

/-! ## A193575.P15287137798062150324

`A059978(n)/A059827(n+1)-A000578(n+1)`
-/

namespace A193575.P15287137798062150324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059978 n : ℚ) / (A059827 (n + 1) : ℚ) - (A000578 (n + 1) : ℚ)

end

end A193575.P15287137798062150324

namespace A193575

/-- `A059978(n)/A059827(n+1)-A000578(n+1)` -/
def P15287137798062150324.Spec : Prop :=
  ∀ n, P15287137798062150324.a n = (A193575 (n + 1) : ℚ)

end A193575

/-! ## A193575.P10924276001948694802

`A193576(n+1)-A000578(n+1)-A000578(n+1)`
-/

namespace A193575.P10924276001948694802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193576 (n + 1) - A000578 (n + 1) - A000578 (n + 1)

end

end A193575.P10924276001948694802

namespace A193575

/-- `A193576(n+1)-A000578(n+1)-A000578(n+1)` -/
def P10924276001948694802.Spec : Prop :=
  ∀ n, P10924276001948694802.a n = A193575 (n + 1)

end A193575

/-! ## A193575.P9170297338060853710

`abs(A059827(n+1)-Δ[A000537(n)])`
-/

namespace A193575.P9170297338060853710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A059827 (n + 1) - (f1 (n + 1) - f1 n)|

end

end A193575.P9170297338060853710

namespace A193575

/-- `abs(A059827(n+1)-Δ[A000537(n)])` -/
def P9170297338060853710.Spec : Prop :=
  ∀ n, P9170297338060853710.a n = A193575 (n + 1)

end A193575

/-! ## A193575.P14165000303146261609

`A000578(A000217(n+1))-A000578(n+1)`
-/

namespace A193575.P14165000303146261609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A000217 (n + 1)).toNat - A000578 (n + 1)

end

end A193575.P14165000303146261609

namespace A193575

/-- `A000578(A000217(n+1))-A000578(n+1)` -/
def P14165000303146261609.Spec : Prop :=
  ∀ n, P14165000303146261609.a n = A193575 (n + 1)

end A193575

/-! ## A193575.P18146387660168156340

`A068601(A000217(n+1))-A068601(n+1)`
-/

namespace A193575.P18146387660168156340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (A000217 (n + 1)).toNat - A068601 (n + 1)

end

end A193575.P18146387660168156340

namespace A193575

/-- `A068601(A000217(n+1))-A068601(n+1)` -/
def P18146387660168156340.Spec : Prop :=
  ∀ n, P18146387660168156340.a n = A193575 (n + 1)

end A193575

/-!
# A193576: a(n) = T(n)^3 + n^3 where T(n) is a triangular number.

The programs for A193576, the canonical program `A193576.P5139563510093624662` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193576 has offset 1).

The definition of A193576 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193576.P628126299261427576

`1/8*(n+4)*((n+1)²+3)*(n+1)^3`
-/

namespace A193576.P628126299261427576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 8 * (n + 4 : ℚ) * ((n + 1) ^ 2 + 3 : ℚ) * ((n + 1) ^ 3 : ℚ)

end

end A193576.P628126299261427576

namespace A193576

/-- `1/8*(n+4)*((n+1)²+3)*(n+1)^3` -/
def P628126299261427576.Spec : Prop :=
  ∀ n, P628126299261427576.a n = (A193576 (n + 1) : ℚ)

end A193576

/-! ## A193576.P5139563510093624662

`A000578(n+1)+A059827(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A193576

/-- `A000578(n+1)+A059827(n+1)` -/
def P5139563510093624662.Spec : Prop :=
  ∀ n, P5139563510093624662.a n = A193576 (n + 1)

theorem P5139563510093624662.correct : P5139563510093624662.Spec := by
  intro n
  simp only [A193576, Nat.add_sub_cancel]

end A193576

/-! ## A193576.P7137943394438424193

`A000578(n+1)+A193575(n+1)+A000578(n+1)`
-/

namespace A193576.P7137943394438424193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) + (A193575 (n + 1) + A000578 (n + 1))

end

end A193576.P7137943394438424193

namespace A193576

/-- `A000578(n+1)+A193575(n+1)+A000578(n+1)` -/
def P7137943394438424193.Spec : Prop :=
  ∀ n, P7137943394438424193.a n = A193576 (n + 1)

end A193576

/-! ## A193576.P15278524281266337157

`A000537(n+1)+A059827(n+1)-A000537(n)`
-/

namespace A193576.P15278524281266337157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (n + 1) + (A059827 (n + 1) - A000537 n)

end

end A193576.P15278524281266337157

namespace A193576

/-- `A000537(n+1)+A059827(n+1)-A000537(n)` -/
def P15278524281266337157.Spec : Prop :=
  ∀ n, P15278524281266337157.a n = A193576 (n + 1)

theorem P15278524281266337157.correct : P15278524281266337157.Spec := by
  intro n
  simp only [A193576, Nat.add_sub_cancel, A193576.P15278524281266337157.a, A193576.P5139563510093624662.a, A000537, A000537.P7887993002585723883.a, A000578, A000578.P12162961755414704816.a, A059827, A059827.P11953740460129512783.a, A000217, A000217.P10269402890581615239.a, A000332, A000332.P5946310388023661265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A193576

/-! ## A193576.P11877797843401433430

`A000578(A000217(n+1))+A000578(n+1)`
-/

namespace A193576.P11877797843401433430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A000217 (n + 1)).toNat + A000578 (n + 1)

end

end A193576.P11877797843401433430

namespace A193576

/-- `A000578(A000217(n+1))+A000578(n+1)` -/
def P11877797843401433430.Spec : Prop :=
  ∀ n, P11877797843401433430.a n = A193576 (n + 1)

end A193576

/-!
# A193577: a(n) = 5*7^n.

The programs for A193577, the canonical program `A193577.P11660969655800786122` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193577 has offset 0).

The definition of A193577 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*7^n` (program `A193577.P11660969655800786122`, by `A193577.P11660969655800786122.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A193577.P11660969655800786122

`5*7^n`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193577

/-- `5*7^n` -/
def P11660969655800786122.Spec : Prop :=
  ∀ n, (P11660969655800786122.a n : ℤ) = A193577 n

theorem P11660969655800786122.correct : P11660969655800786122.Spec := by
  intro n
  simp only [A193577]

end A193577

/-!
# A193578: a(n) = (13^n + 1)/2.

The programs for A193578, the canonical program `A193578.P5948242850723218831` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193578 has offset 0).

The definition of A193578 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(13^n+1)/2` (program `A193578.P8466743383523254757`, by `A193578.P8466743383523254757.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A193578.P5948242850723218831

`13*a(n-1)-6` with `a(0)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193578

/-- `13*a(n-1)-6` -/
def P5948242850723218831.Spec : Prop :=
  ∀ n, P5948242850723218831.a n = A193578 n

theorem P5948242850723218831.correct : P5948242850723218831.Spec := by
  intro n
  simp only [A193578]

end A193578

/-! ## A193578.P8466743383523254757

`(13^n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A193578.P8466743383523254757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (13 ^ n + 1 : ℚ) / 2

end

end A193578.P8466743383523254757

namespace A193578

/-- `(13^n+1)/2` -/
def P8466743383523254757.Spec : Prop :=
  ∀ n, P8466743383523254757.a n = (A193578 n : ℚ)

theorem P8466743383523254757.correct : P8466743383523254757.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A193578, Nat.add_sub_cancel, A193578.P8466743383523254757.a, A193578.P5948242850723218831.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A193578, Nat.add_sub_cancel, A193578.P8466743383523254757.a, A193578.P5948242850723218831.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A193578

/-! ## A193578.P17534594778246048799

`ogf((1-7x)/(1-14x+13x^2))`
-/

namespace A193578.P17534594778246048799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -7] [1, -14, 13] n

end

end A193578.P17534594778246048799

namespace A193578

/-- `ogf((1-7x)/(1-14x+13x^2))` -/
def P17534594778246048799.Spec : Prop :=
  ∀ n, P17534594778246048799.a n = A193578 n

end A193578

/-! ## A193578.P5348863055564094625

`lcm(13, a(n-1))-6` with `a(0)=1`
-/

namespace A193578.P5348863055564094625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 13 (a (n - 1)) : ℤ) - 6

end

end A193578.P5348863055564094625

namespace A193578

/-- `lcm(13, a(n-1))-6` -/
def P5348863055564094625.Spec : Prop :=
  ∀ n, P5348863055564094625.a n = A193578 n

end A193578

/-! ## A193578.P1767240035944753507

`A073220(∑[n]+1)`
-/

namespace A193578.P1767240035944753507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073220 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A193578.P1767240035944753507

namespace A193578

/-- `A073220(∑[n]+1)` -/
def P1767240035944753507.Spec : Prop :=
  ∀ n, P1767240035944753507.a n = A193578 n

end A193578

/-! ## A193578.P15275184649607853397

`A297182(6*n+1)`
-/

namespace A193578.P15275184649607853397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297182 (6 * n + 1)

end

end A193578.P15275184649607853397

namespace A193578

/-- `A297182(6*n+1)` -/
def P15275184649607853397.Spec : Prop :=
  ∀ n, P15275184649607853397.a n = A193578 n

end A193578

/-! ## A193578.P5484115562090630537

`∩[A073220(n+1), A297182(n+1)]`
-/

namespace A193578.P5484115562090630537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A193578.P5484115562090630537

namespace A193578

/-- `∩[A073220(n+1), A297182(n+1)]` -/
def P5484115562090630537.Spec : Prop :=
  ∀ n, (P5484115562090630537.a n : ℤ) = A193578 n

end A193578

/-! ## A193578.P5629186838465310666

`floor(A153079(n)/2)`
-/

namespace A193578.P5629186838465310666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A153079 n : ℚ) / 2⌋

end

end A193578.P5629186838465310666

namespace A193578

/-- `floor(A153079(n)/2)` -/
def P5629186838465310666.Spec : Prop :=
  ∀ n, P5629186838465310666.a n = A193578 n

end A193578

/-!
# A193579: a(n) = 2*4^n + 7.

The programs for A193579, the canonical program `A193579.P15852962502631534823` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193579 has offset 0).

The definition of A193579 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*4^n+7` (program `A193579.P15852962502631534823`, by `A193579.P15852962502631534823.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A193579.P15852962502631534823

`2*4^n+7`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193579

/-- `2*4^n+7` -/
def P15852962502631534823.Spec : Prop :=
  ∀ n, (P15852962502631534823.a n : ℤ) = A193579 n

theorem P15852962502631534823.correct : P15852962502631534823.Spec := by
  intro n
  simp only [A193579]

end A193579

/-! ## A193579.P13855249924658703510

`3*(A020988(n)+3)`
-/

namespace A193579.P13855249924658703510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A020988 n + 3)

end

end A193579.P13855249924658703510

namespace A193579

/-- `3*(A020988(n)+3)` -/
def P13855249924658703510.Spec : Prop :=
  ∀ n, P13855249924658703510.a n = A193579 n

end A193579

/-! ## A193579.P13670179000038628008

`A085688(A016969(n))`
-/

namespace A193579.P13670179000038628008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085688 (A016969 n).toNat

end

end A193579.P13670179000038628008

namespace A193579

/-- `A085688(A016969(n))` -/
def P13670179000038628008.Spec : Prop :=
  ∀ n, P13670179000038628008.a n = A193579 n

end A193579

/-! ## A193579.P1290281204879428265

`record[2^xor(1, n)+7]`
-/

namespace A193579.P1290281204879428265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.xor 1 n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193579.P1290281204879428265

namespace A193579

/-- `record[2^xor(1, n)+7]` -/
def P1290281204879428265.Spec : Prop :=
  ∀ n, (P1290281204879428265.a n : ℤ) = A193579 n

end A193579

/-! ## A193579.P4524070528737814472

`∑[4*a(n-1)]` with `a(0)=9, a(1)=6`
-/

namespace A193579.P4524070528737814472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9, 6] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193579.P4524070528737814472

namespace A193579

/-- `∑[4*a(n-1)]` -/
def P4524070528737814472.Spec : Prop :=
  ∀ n, (P4524070528737814472.a n : ℤ) = A193579 n

end A193579

/-! ## A193579.P6438749301794826742

`record[7-(-2)^(n+1)]`
-/

namespace A193579.P6438749301794826742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - (-2) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193579.P6438749301794826742

namespace A193579

/-- `record[7-(-2)^(n+1)]` -/
def P6438749301794826742.Spec : Prop :=
  ∀ n, P6438749301794826742.a n = A193579 n

end A193579

/-! ## A193579.P15393107809328809899

`∑[a(n-1)/(1/2)²]` with `a(0)=9, a(1)=6`
-/

namespace A193579.P15393107809328809899
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [9, 6] fun n f1 =>
  f1 (n - 1) / ((1 : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193579.P15393107809328809899

namespace A193579

/-- `∑[a(n-1)/(1/2)²]` -/
def P15393107809328809899.Spec : Prop :=
  ∀ n, P15393107809328809899.a n = (A193579 n : ℚ)

end A193579

/-! ## A193579.P12207772477383683899

`3*A321358(n)`
-/

namespace A193579.P12207772477383683899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A321358 n

end

end A193579.P12207772477383683899

namespace A193579

/-- `3*A321358(n)` -/
def P12207772477383683899.Spec : Prop :=
  ∀ n, P12207772477383683899.a n = A193579 n

end A193579

/-! ## A193579.P12426146289250711895

`A168415(Δ[n²])`
-/

namespace A193579.P12426146289250711895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168415 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A193579.P12426146289250711895

namespace A193579

/-- `A168415(Δ[n²])` -/
def P12426146289250711895.Spec : Prop :=
  ∀ n, P12426146289250711895.a n = A193579 n

end A193579

/-! ## A193579.P13121960291103687903

`3*(A007583(n)+2)`
-/

namespace A193579.P13121960291103687903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A007583 n + 2)

end

end A193579.P13121960291103687903

namespace A193579

/-- `3*(A007583(n)+2)` -/
def P13121960291103687903.Spec : Prop :=
  ∀ n, P13121960291103687903.a n = A193579 n

end A193579

/-! ## A193579.P9975261227275394402

`3*A171382(2*n)`
-/

namespace A193579.P9975261227275394402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A171382 (2 * n)

end

end A193579.P9975261227275394402

namespace A193579

/-- `3*A171382(2*n)` -/
def P9975261227275394402.Spec : Prop :=
  ∀ n, P9975261227275394402.a n = A193579 n

end A193579

/-! ## A193579.P3412306784893381837

`3*(∑[A081294(n)]+2)`
-/

namespace A193579.P3412306784893381837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A193579.P3412306784893381837

namespace A193579

/-- `3*(∑[A081294(n)]+2)` -/
def P3412306784893381837.Spec : Prop :=
  ∀ n, P3412306784893381837.a n = A193579 n

end A193579

/-! ## A193579.P765985335668165163

`3*(A039301(n+1)+1)`
-/

namespace A193579.P765985335668165163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A039301 (n + 1) + 1)

end

end A193579.P765985335668165163

namespace A193579

/-- `3*(A039301(n+1)+1)` -/
def P765985335668165163.Spec : Prop :=
  ∀ n, P765985335668165163.a n = A193579 n

end A193579

/-! ## A193579.P13002134811936476030

`3*A153643(2*n+1)`
-/

namespace A193579.P13002134811936476030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A153643 (2 * n + 1)

end

end A193579.P13002134811936476030

namespace A193579

/-- `3*A153643(2*n+1)` -/
def P13002134811936476030.Spec : Prop :=
  ∀ n, P13002134811936476030.a n = A193579 n

end A193579

/-! ## A193579.P8962088211176640280

`A250737(2*n+1)/2`
-/

namespace A193579.P8962088211176640280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250737 (2 * n + 1) : ℚ) / 2

end

end A193579.P8962088211176640280

namespace A193579

/-- `A250737(2*n+1)/2` -/
def P8962088211176640280.Spec : Prop :=
  ∀ n, P8962088211176640280.a n = (A193579 n : ℚ)

end A193579

/-! ## A193579.P14022895611904596402

`3*(A077925(2*n)+2)`
-/

namespace A193579.P14022895611904596402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A077925 (2 * n) + 2)

end

end A193579.P14022895611904596402

namespace A193579

/-- `3*(A077925(2*n)+2)` -/
def P14022895611904596402.Spec : Prop :=
  ∀ n, P14022895611904596402.a n = A193579 n

end A193579

/-! ## A193579.P435238189006894829

`3*(2*A002450(n)+3)`
-/

namespace A193579.P435238189006894829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (2 * A002450 n + 3)

end

end A193579.P435238189006894829

namespace A193579

/-- `3*(2*A002450(n)+3)` -/
def P435238189006894829.Spec : Prop :=
  ∀ n, P435238189006894829.a n = A193579 n

end A193579

/-! ## A193579.P14667961761829458667

`or(1, A153972(2*n+1))`
-/

namespace A193579.P14667961761829458667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A153972 (2 * n + 1))

end

end A193579.P14667961761829458667

namespace A193579

/-- `or(1, A153972(2*n+1))` -/
def P14667961761829458667.Spec : Prop :=
  ∀ n, P14667961761829458667.a n = A193579 n

end A193579

/-! ## A193579.P439861098556824954

`3*(A001045(Δ[n²])+2)`
-/

namespace A193579.P439861098556824954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A001045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2)

end

end A193579.P439861098556824954

namespace A193579

/-- `3*(A001045(Δ[n²])+2)` -/
def P439861098556824954.Spec : Prop :=
  ∀ n, P439861098556824954.a n = A193579 n

end A193579

/-! ## A193579.P1762742910939018497

`abs(A000918(2*n+1)+9)`
-/

namespace A193579.P1762742910939018497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000918 (2 * n + 1) + 9|

end

end A193579.P1762742910939018497

namespace A193579

/-- `abs(A000918(2*n+1)+9)` -/
def P1762742910939018497.Spec : Prop :=
  ∀ n, P1762742910939018497.a n = A193579 n

end A193579

/-!
# A193581: Sort-and-subtract: a(n) = n - A004185(n).

The programs for A193581, there is no canonical definition to state claims against.
-/

/-! ## A193581.P3753217962969039345

`n-A004185(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A193581.P3753217962969039345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004185 n

end

end A193581.P3753217962969039345

/-! ## A193581.P7154874492149436732

`2*n-A070196(n)`
-/

namespace A193581.P7154874492149436732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A070196 n

end

end A193581.P7154874492149436732

/-! ## A193581.P12318584538223830493

`n-A004086(A004186(n))`
-/

namespace A193581.P12318584538223830493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004086 (A004186 n).toNat

end

end A193581.P12318584538223830493

/-! ## A193581.P14253719775191682725

`A151949(n)-A108782(n)`
-/

namespace A193581.P14253719775191682725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 n - A108782 n

end

end A193581.P14253719775191682725

/-! ## A193581.P9468086040751677361

`A004186(n)+n-A052008(n)`
-/

namespace A193581.P9468086040751677361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n + ((n : ℤ) - A052008 n)

end

end A193581.P9468086040751677361

/-! ## A193581.P16834900406895833653

`A001489(A070196(n)-n)+n`
-/

namespace A193581.P16834900406895833653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A070196 n - (n : ℤ)).toNat + (n : ℤ)

end

end A193581.P16834900406895833653

/-! ## A193581.P13044985047818004408

`n-A004086(A108782(n)+n)`
-/

namespace A193581.P13044985047818004408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004086 (A108782 n + (n : ℤ)).toNat

end

end A193581.P13044985047818004408

/-! ## A193581.P15189243510861236850

`A151949(n)+n-A004186(n)`
-/

namespace A193581.P15189243510861236850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 n + ((n : ℤ) - A004186 n)

end

end A193581.P15189243510861236850

/-! ## A193581.P6469969013066648198

`abs(A328447(A070196(n)-n)-n)`
-/

namespace A193581.P6469969013066648198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A328447 (A070196 n - (n : ℤ)).toNat - (n : ℤ)|

end

end A193581.P6469969013066648198

/-! ## A193581.P1158092584229724158

`(A004767(n)-(A070196(n)-n))%(n+1)`
-/

namespace A193581.P1158092584229724158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004767 n - (A070196 n - (n : ℤ))) (n + 1 : ℤ)

end

end A193581.P1158092584229724158

/-! ## A193581.P15002523363175867991

`A056965(A108782(n)+n)-A108782(n)`
-/

namespace A193581.P15002523363175867991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A108782 n + (n : ℤ)).toNat - A108782 n

end

end A193581.P15002523363175867991

/-! ## A193581.P18412515202103889102

`n-A056967(A047842(n))`
-/

namespace A193581.P18412515202103889102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A056967 (A047842 n).toNat

end

end A193581.P18412515202103889102

/-! ## A193581.P10829502768538101630

`A097601(n)/A168095(n²)`
-/

namespace A193581.P10829502768538101630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097601 n : ℚ) / (A168095 (n ^ 2) : ℚ)

end

end A193581.P10829502768538101630

/-!
# A193582: Persistence of n for sort-and-subtract (A193581).

The programs for A193582, there is no canonical definition to state claims against.
-/

/-! ## A193582.P13026573586065127042

`a(A193581(n))+1` with `a(0)=0`
-/

namespace A193582.P13026573586065127042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A193581 n).toNat + 1

end

end A193582.P13026573586065127042

/-! ## A193582.P14867354520689014495

`a(n-A004185(n))+1` with `a(0)=0`
-/

namespace A193582.P14867354520689014495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A004185 n).toNat + 1

end

end A193582.P14867354520689014495

/-! ## A193582.P11042808316094714252

`A005496(a(A193581(n)))` with `a(0)=0`
-/

namespace A193582.P11042808316094714252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005496 (a (A193581 n).toNat).toNat

end

end A193582.P11042808316094714252

/-! ## A193582.P13783445844618200391

`A005555(a(A193581(n)))` with `a(0)=0`
-/

namespace A193582.P13783445844618200391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005555 (a (A193581 n).toNat).toNat

end

end A193582.P13783445844618200391

/-! ## A193582.P11238600360987928105

`A291769(a(A193581(n)))` with `a(0)=0`
-/

namespace A193582.P11238600360987928105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A291769 (a (A193581 n).toNat).toNat

end

end A193582.P11238600360987928105

/-! ## A193582.P16568511382072500606

`A348553(a(A193581(n)))` with `a(0)=0`
-/

namespace A193582.P16568511382072500606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A348553 (a (A193581 n).toNat).toNat

end

end A193582.P16568511382072500606

/-! ## A193582.P9844533201895497065

`and(A094841(n+1), A095827(n+1))`
-/

namespace A193582.P9844533201895497065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094841 (n + 1)) (A095827 (n + 1))

end

end A193582.P9844533201895497065

/-! ## A193582.P1921116406789306351

`and(A002223(n+1), A095827(n+1))`
-/

namespace A193582.P1921116406789306351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002223 (n + 1)) (A095827 (n + 1))

end

end A193582.P1921116406789306351

/-! ## A193582.P9234445889977000131

`and(A001986(n+1), A095827(n+1))`
-/

namespace A193582.P9234445889977000131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001986 (n + 1)) (A095827 (n + 1))

end

end A193582.P9234445889977000131

/-! ## A193582.P9569723402167788911

`A095827((n+1)*A095827(n+2))`
-/

namespace A193582.P9569723402167788911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095827 ((n + 1 : ℤ) * A095827 (n + 2)).toNat

end

end A193582.P9569723402167788911

/-!
# A193583: Number of fixed points under iteration of sum of squares of digits in base b.

The programs for A193583, the canonical program `A193583.P1735472173273638827` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193583 has offset 2).

The definition of A193583 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193583.P15012473502486852460

`A193432(n+2)-1`
-/

namespace A193583.P15012473502486852460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 (n + 2) - 1

end

end A193583.P15012473502486852460

namespace A193583

/-- `A193432(n+2)-1` -/
def P15012473502486852460.Spec : Prop :=
  ∀ n, P15012473502486852460.a n = A193583 (n + 2)

end A193583

/-! ## A193583.P16391326956774317281

`Δ[A333171(n+1)]-1`
-/

namespace A193583.P16391326956774317281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A193583.P16391326956774317281

namespace A193583

/-- `Δ[A333171(n+1)]-1` -/
def P16391326956774317281.Spec : Prop :=
  ∀ n, P16391326956774317281.a n = A193583 (n + 2)

end A193583

/-! ## A193583.P11759278745914358904

`2*A147809(n+2)+1`
-/

namespace A193583.P11759278745914358904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A147809 (n + 2) + 1

end

end A193583.P11759278745914358904

namespace A193583

/-- `2*A147809(n+2)+1` -/
def P11759278745914358904.Spec : Prop :=
  ∀ n, P11759278745914358904.a n = A193583 (n + 2)

end A193583

/-! ## A193583.P833437782355546369

`2*A147810(n+2)-1`
-/

namespace A193583.P833437782355546369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A147810 (n + 2) - 1

end

end A193583.P833437782355546369

namespace A193583

/-- `2*A147810(n+2)-1` -/
def P833437782355546369.Spec : Prop :=
  ∀ n, P833437782355546369.a n = A193583 (n + 2)

end A193583

/-! ## A193583.P1735472173273638827

`Δ[2*A147806(n+1)]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A193583

/-- `Δ[2*A147806(n+1)]+1` -/
def P1735472173273638827.Spec : Prop :=
  ∀ n, P1735472173273638827.a n = A193583 (n + 2)

theorem P1735472173273638827.correct : P1735472173273638827.Spec := by
  intro n
  simp only [A193583, Nat.add_sub_cancel]

end A193583

/-! ## A193583.P15710686548290813089

`Δ[2*A147807(n+1)]-1`
-/

namespace A193583.P15710686548290813089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A147807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A193583.P15710686548290813089

namespace A193583

/-- `Δ[2*A147807(n+1)]-1` -/
def P15710686548290813089.Spec : Prop :=
  ∀ n, P15710686548290813089.a n = A193583 (n + 2)

theorem P15710686548290813089.correct : P15710686548290813089.Spec := by
  intro n
  simp only [A193583, Nat.add_sub_cancel, A193583.P15710686548290813089.f1, A193583.P15710686548290813089.a, A193583.P1735472173273638827.f1, A193583.P1735472173273638827.a, A147806, A147806.P12689677907134375891.f1, A147806.P12689677907134375891.a, A147807, A147807.P3053565621181724089.a, A193432, A193432.P15803049534732017682.a, A000005, A000005.P16091521709108585461.a, A002522, A002522.P3778392011853271743.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193583

/-! ## A193583.P499833827091499541

`A004273(A147810(n+2))`
-/

namespace A193583.P499833827091499541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A147810 (n + 2)).toNat

end

end A193583.P499833827091499541

namespace A193583

/-- `A004273(A147810(n+2))` -/
def P499833827091499541.Spec : Prop :=
  ∀ n, P499833827091499541.a n = A193583 (n + 2)

end A193583

/-! ## A193583.P5092346782590008067

`A000005(A278162(n+2))-1`
-/

namespace A193583.P5092346782590008067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278162 (n + 2)).toNat - 1

end

end A193583.P5092346782590008067

namespace A193583

/-- `A000005(A278162(n+2))-1` -/
def P5092346782590008067.Spec : Prop :=
  ∀ n, P5092346782590008067.a n = A193583 (n + 2)

end A193583

/-! ## A193583.P6156531873410152830

`A174239(2*A147809(n+2))`
-/

namespace A193583.P6156531873410152830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174239 (2 * A147809 (n + 2)).toNat

end

end A193583.P6156531873410152830

namespace A193583

/-- `A174239(2*A147809(n+2))` -/
def P6156531873410152830.Spec : Prop :=
  ∀ n, P6156531873410152830.a n = A193583 (n + 2)

end A193583

/-! ## A193583.P12150325750562962399

`A147810(n+2)+A147809(n+2)`
-/

namespace A193583.P12150325750562962399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147810 (n + 2) + A147809 (n + 2)

end

end A193583.P12150325750562962399

namespace A193583

/-- `A147810(n+2)+A147809(n+2)` -/
def P12150325750562962399.Spec : Prop :=
  ∀ n, P12150325750562962399.a n = A193583 (n + 2)

end A193583

/-! ## A193583.P12688152151753362936

`A261609(n+2)+A128428(n+2)`
-/

namespace A193583.P12688152151753362936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261609 (n + 2) + A128428 (n + 2)

end

end A193583.P12688152151753362936

namespace A193583

/-- `A261609(n+2)+A128428(n+2)` -/
def P12688152151753362936.Spec : Prop :=
  ∀ n, P12688152151753362936.a n = A193583 (n + 2)

end A193583

/-! ## A193583.P1930082505979877882

`Δ[A147807(n+1)+A147806(n+1)]`
-/

namespace A193583.P1930082505979877882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147807 (n + 1) + A147806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193583.P1930082505979877882

namespace A193583

/-- `Δ[A147807(n+1)+A147806(n+1)]` -/
def P1930082505979877882.Spec : Prop :=
  ∀ n, P1930082505979877882.a n = A193583 (n + 2)

theorem P1930082505979877882.correct : P1930082505979877882.Spec := by
  intro n
  simp only [A193583, Nat.add_sub_cancel, A193583.P1930082505979877882.f1, A193583.P1930082505979877882.a, A193583.P1735472173273638827.f1, A193583.P1735472173273638827.a, A147806, A147806.P12689677907134375891.f1, A147806.P12689677907134375891.a, A147807, A147807.P3053565621181724089.a, A193432, A193432.P15803049534732017682.a, A000005, A000005.P16091521709108585461.a, A002522, A002522.P3778392011853271743.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193583

/-! ## A193583.P18236444810298294454

`A147806(n+2)+A147810(n+2)-A147806(n+1)`
-/

namespace A193583.P18236444810298294454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147806 (n + 2) + (A147810 (n + 2) - A147806 (n + 1))

end

end A193583.P18236444810298294454

namespace A193583

/-- `A147806(n+2)+A147810(n+2)-A147806(n+1)` -/
def P18236444810298294454.Spec : Prop :=
  ∀ n, P18236444810298294454.a n = A193583 (n + 2)

end A193583

/-! ## A193583.P15401546580773258

`A147807(n+2)+A147809(n+2)-A147807(n+1)`
-/

namespace A193583.P15401546580773258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147807 (n + 2) + (A147809 (n + 2) - A147807 (n + 1))

end

end A193583.P15401546580773258

namespace A193583

/-- `A147807(n+2)+A147809(n+2)-A147807(n+1)` -/
def P15401546580773258.Spec : Prop :=
  ∀ n, P15401546580773258.a n = A193583 (n + 2)

end A193583

/-! ## A193583.P9023720048501161653

`∏{e}[(n+2)²+1, #+1]-1`
-/

namespace A193583.P9023720048501161653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - 1

end

end A193583.P9023720048501161653

namespace A193583

/-- `∏{e}[(n+2)²+1, #+1]-1` -/
def P9023720048501161653.Spec : Prop :=
  ∀ n, P9023720048501161653.a n = A193583 (n + 2)

end A193583

/-! ## A193583.P18170587512980079610

`log2(A011782(∏{e}[(n+2)²+1, #+1]))`
-/

namespace A193583.P18170587512980079610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2 + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A011782 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℝ)

end

end A193583.P18170587512980079610

namespace A193583

/-- `log2(A011782(∏{e}[(n+2)²+1, #+1]))` -/
def P18170587512980079610.Spec : Prop :=
  ∀ n, P18170587512980079610.a n = (A193583 (n + 2) : ℝ)

end A193583

/-! ## A193583.P16803279551458721091

`abs(1-∏{e}[A000290(n+2)+1, #+1])`
-/

namespace A193583.P16803279551458721091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℤ)|

end

end A193583.P16803279551458721091

namespace A193583

/-- `abs(1-∏{e}[A000290(n+2)+1, #+1])` -/
def P16803279551458721091.Spec : Prop :=
  ∀ n, P16803279551458721091.a n = A193583 (n + 2)

end A193583

/-! ## A193583.P5728308585466420552

`A000005((n+2)²+1)-1`
-/

namespace A193583.P5728308585466420552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 2) ^ 2 + 1) - 1

end

end A193583.P5728308585466420552

namespace A193583

/-- `A000005((n+2)²+1)-1` -/
def P5728308585466420552.Spec : Prop :=
  ∀ n, P5728308585466420552.a n = A193583 (n + 2)

end A193583

/-! ## A193583.P1928102479920250013

`abs(1-A000005(A005563(n+1)+2))`
-/

namespace A193583.P1928102479920250013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A000005 (A005563 (n + 1) + 2).toNat|

end

end A193583.P1928102479920250013

namespace A193583

/-- `abs(1-A000005(A005563(n+1)+2))` -/
def P1928102479920250013.Spec : Prop :=
  ∀ n, P1928102479920250013.a n = A193583 (n + 2)

end A193583

/-!
# A193584: Numbers k such that quartic elliptic curve y^2 = 5x^4 + 4k have integer solutions.

The programs for A193584, there is no canonical definition to state claims against.
-/

/-! ## A193584.P2125357891311761570

`lt[0, A193524(n+1)]+1`
-/

namespace A193584.P2125357891311761570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A193584.P2125357891311761570

/-! ## A193584.P6036141965017952647

`eq[char[A193528(n+1)], A151933(n)]`
-/

namespace A193584.P6036141965017952647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193528 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A193584.P6036141965017952647

/-! ## A193584.P6161723795274450689

`eq[char[eq[0, A193524(n+1)]+1], A151933(n)]`
-/

namespace A193584.P6161723795274450689
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193524 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f5 j) n

end

end A193584.P6161723795274450689

/-! ## A193584.P12070939733008691999

`eq[char[eq[0, A193524(A028310(n))]], A151933(n)]`
-/

namespace A193584.P12070939733008691999
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193524 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f5 j) n

end

end A193584.P12070939733008691999

/-! ## A193584.P585592291136303182

`record[A281385(A098240(n+1))]%A141214(2*n)`
-/

namespace A193584.P585592291136303182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281385 (A098240 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A141214 (2 * n))

end

end A193584.P585592291136303182

/-!
# A193585: Number of cycles under iteration of sum of squares of digits in base b.

The programs for A193585, there is no canonical definition to state claims against.
-/

/-! ## A193585.P7101886086302573657

`A161772(n+2)-(∏{e}[(n+2)²+1, #+1]-1)`
-/

namespace A193585.P7101886086302573657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161772 (n + 2) - (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - 1)

end

end A193585.P7101886086302573657

/-! ## A193585.P11947374836267142391

`A161772(n+2)-A193583(n+2)`
-/

namespace A193585.P11947374836267142391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161772 (n + 2) - A193583 (n + 2)

end

end A193585.P11947374836267142391

/-! ## A193585.P6590152458715700473

`A161772(n+2)-(A193432(n+2)-1)`
-/

namespace A193585.P6590152458715700473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161772 (n + 2) - (A193432 (n + 2) - 1)

end

end A193585.P6590152458715700473

/-! ## A193585.P6370866935378762329

`A161772(n+2)-(Δ[A333171(n+1)]-1)`
-/

namespace A193585.P6370866935378762329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161772 (n + 2) - (f1 (n + 1) - f1 n - 1)

end

end A193585.P6370866935378762329

/-! ## A193585.P16035382718107617049

`A161772(n+2)-(2*A147809(n+2)+1)`
-/

namespace A193585.P16035382718107617049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161772 (n + 2) - (2 * A147809 (n + 2) + 1)

end

end A193585.P16035382718107617049

/-!
# A193587: Numbers k such that the quartic elliptic curve y^2 = 5x^4 - 4k has integer solutions.

The programs for A193587, there is no canonical definition to state claims against.
-/

/-! ## A193587.P13543533555209912

`lt[0, A193531(n+1)]+1`
-/

namespace A193587.P13543533555209912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193531 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A193587.P13543533555209912

/-! ## A193587.P4833718720020193154

`lt[2, exp(a(A193531(n)))]` with `a(0)=0, a(1)=3`
-/

namespace A193587.P4833718720020193154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  Real.exp (f2 (A193531 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A193587.P4833718720020193154

/-! ## A193587.P11247106576113108219

`eq[1, A000010(a(A193531(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A193587.P11247106576113108219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000010 (f2 (A193531 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193587.P11247106576113108219

/-! ## A193587.P4434958156478138565

`eq[1, A000045(a(A193531(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A193587.P4434958156478138565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000045 (f2 (A193531 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193587.P4434958156478138565

/-! ## A193587.P9633224954223633662

`eq[1, A001222(a(A193531(n))+1)]` with `a(0)=3, a(1)=1`
-/

namespace A193587.P9633224954223633662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A001222 (f2 (A193531 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193587.P9633224954223633662

/-!
# A193588: A Fibonacci triangle: T(n,k) = Fib(k+2) for 0 <= k <= n.

The programs for A193588, the canonical program `A193588.P17609543549557560662` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193588 has offset 0).

The definition of A193588 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A115346, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A193588.P17609543549557560662

`A115346(n)+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A193588

/-- `A115346(n)+1` -/
def P17609543549557560662.Spec : Prop :=
  ∀ n, P17609543549557560662.a n = A193588 n

theorem P17609543549557560662.correct : P17609543549557560662.Spec := by
  intro n
  simp only [A193588]

end A193588

/-! ## A193588.P16287815967736792069

`A000045(n-C(round(sqrt(2*(n+1))), 2)+2)`
-/

namespace A193588.P16287815967736792069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((n : ℤ) - (Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat 2 : ℤ) + 2).toNat

end

end A193588.P16287815967736792069

namespace A193588

/-- `A000045(n-C(round(sqrt(2*(n+1))), 2)+2)` -/
def P16287815967736792069.Spec : Prop :=
  ∀ n, P16287815967736792069.a n = A193588 n

end A193588

/-! ## A193588.P13239944940021245515

`A035506(A112367(n))`
-/

namespace A193588.P13239944940021245515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035506 (A112367 n).toNat

end

end A193588.P13239944940021245515

namespace A193588

/-- `A035506(A112367(n))` -/
def P13239944940021245515.Spec : Prop :=
  ∀ n, P13239944940021245515.a n = A193588 n

end A193588

/-! ## A193588.P5360035392410157996

`A097575(A174028(n))`
-/

namespace A193588.P5360035392410157996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097575 (A174028 n).toNat

end

end A193588.P5360035392410157996

namespace A193588

/-- `A097575(A174028(n))` -/
def P5360035392410157996.Spec : Prop :=
  ∀ n, P5360035392410157996.a n = A193588 n

end A193588

/-! ## A193588.P16896321712023229262

`A120250(A037126(n+1))`
-/

namespace A193588.P16896321712023229262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120250 (A037126 (n + 1)).toNat

end

end A193588.P16896321712023229262

namespace A193588

/-- `A120250(A037126(n+1))` -/
def P16896321712023229262.Spec : Prop :=
  ∀ n, P16896321712023229262.a n = A193588 n

end A193588

/-! ## A193588.P17603824722661673879

`A053602(A158405(n+1))`
-/

namespace A193588.P17603824722661673879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A158405 (n + 1)).toNat

end

end A193588.P17603824722661673879

namespace A193588

/-- `A053602(A158405(n+1))` -/
def P17603824722661673879.Spec : Prop :=
  ∀ n, P17603824722661673879.a n = A193588 n

end A193588

/-! ## A193588.P4516656592580219551

`A108035(A112367(n)+1)`
-/

namespace A193588.P4516656592580219551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108035 (A112367 n + 1).toNat

end

end A193588.P4516656592580219551

namespace A193588

/-- `A108035(A112367(n)+1)` -/
def P4516656592580219551.Spec : Prop :=
  ∀ n, P4516656592580219551.a n = A193588 n

end A193588

/-! ## A193588.P16691363444553557936

`A000045(A002262(n)+2)`
-/

namespace A193588.P16691363444553557936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002262 n + 2).toNat

end

end A193588.P16691363444553557936

namespace A193588

/-- `A000045(A002262(n)+2)` -/
def P16691363444553557936.Spec : Prop :=
  ∀ n, P16691363444553557936.a n = A193588 n

end A193588

/-! ## A193588.P9010976096947204516

`A212804(A002262(n)+3)`
-/

namespace A193588.P9010976096947204516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A002262 n + 3).toNat

end

end A193588.P9010976096947204516

namespace A193588

/-- `A212804(A002262(n)+3)` -/
def P9010976096947204516.Spec : Prop :=
  ∀ n, P9010976096947204516.a n = A193588 n

end A193588

/-! ## A193588.P11124794102363691227

`A053602(A174028(n)/2)`
-/

namespace A193588.P11124794102363691227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (SequenceMachineLib.roundAway ((A174028 n : ℚ) / 2)).toNat

end

end A193588.P11124794102363691227

namespace A193588

/-- `A053602(A174028(n)/2)` -/
def P11124794102363691227.Spec : Prop :=
  ∀ n, P11124794102363691227.a n = A193588 n

end A193588

/-! ## A193588.P1980090299615179341

`A094437(n)/A007318(n)`
-/

namespace A193588.P1980090299615179341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094437 n : ℚ) / (A007318 n : ℚ)

end

end A193588.P1980090299615179341

namespace A193588

/-- `A094437(n)/A007318(n)` -/
def P1980090299615179341.Spec : Prop :=
  ∀ n, P1980090299615179341.a n = (A193588 n : ℚ)

end A193588

/-! ## A193588.P3943785537218197612

`A000045(sqrt(A143844(n))+2)`
-/

namespace A193588.P3943785537218197612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (Real.sqrt (A143844 n : ℝ) + 2)).toNat

end

end A193588.P3943785537218197612

namespace A193588

/-- `A000045(sqrt(A143844(n))+2)` -/
def P3943785537218197612.Spec : Prop :=
  ∀ n, P3943785537218197612.a n = A193588 n

end A193588

/-! ## A193588.P14762238564972003211

`A000045(log2(A059268(n))+2)`
-/

namespace A193588.P14762238564972003211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ) + 2)).toNat

end

end A193588.P14762238564972003211

namespace A193588

/-- `A000045(log2(A059268(n))+2)` -/
def P14762238564972003211.Spec : Prop :=
  ∀ n, P14762238564972003211.a n = A193588 n

end A193588

/-! ## A193588.P2882239773310739070

`A000045(A002260(n+1)+1)`
-/

namespace A193588.P2882239773310739070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002260 (n + 1) + 1).toNat

end

end A193588.P2882239773310739070

namespace A193588

/-- `A000045(A002260(n+1)+1)` -/
def P2882239773310739070.Spec : Prop :=
  ∀ n, P2882239773310739070.a n = A193588 n

end A193588

/-! ## A193588.P6390081036205520556

`A131524(A131225(n+1))+1`
-/

namespace A193588.P6390081036205520556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131524 (A131225 (n + 1)).toNat + 1

end

end A193588.P6390081036205520556

namespace A193588

/-- `A131524(A131225(n+1))+1` -/
def P6390081036205520556.Spec : Prop :=
  ∀ n, P6390081036205520556.a n = A193588 n

end A193588

/-! ## A193588.P185804759471958775

`A212804(A002260(n+1)+2)`
-/

namespace A193588.P185804759471958775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A002260 (n + 1) + 2).toNat

end

end A193588.P185804759471958775

namespace A193588

/-- `A212804(A002260(n+1)+2)` -/
def P185804759471958775.Spec : Prop :=
  ∀ n, P185804759471958775.a n = A193588 n

end A193588

/-! ## A193588.P10837975964396792466

`A324969(A002260(n+1)+2)`
-/

namespace A193588.P10837975964396792466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (A002260 (n + 1) + 2).toNat

end

end A193588.P10837975964396792466

namespace A193588

/-- `A324969(A002260(n+1)+2)` -/
def P10837975964396792466.Spec : Prop :=
  ∀ n, P10837975964396792466.a n = A193588 n

end A193588

/-! ## A193588.P13010942991259118835

`A001611(A002262(n)+2)-1`
-/

namespace A193588.P13010942991259118835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (A002262 n + 2).toNat - 1

end

end A193588.P13010942991259118835

namespace A193588

/-- `A001611(A002262(n)+2)-1` -/
def P13010942991259118835.Spec : Prop :=
  ∀ n, P13010942991259118835.a n = A193588 n

end A193588

/-! ## A193588.P2367471130530696336

`A000045(val(A175840(n), 2)+2)`
-/

namespace A193588.P2367471130530696336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.valuation (A175840 n).toNat 2 + 2)

end

end A193588.P2367471130530696336

namespace A193588

/-- `A000045(val(A175840(n), 2)+2)` -/
def P2367471130530696336.Spec : Prop :=
  ∀ n, P2367471130530696336.a n = A193588 n

end A193588

/-!
# A193589: Augmentation of the Fibonacci triangle A193588. See Comments.

The programs for A193589, there is no canonical definition to state claims against.
-/

/-! ## A193589.P11805803887551462469

`A011274(∑[char[∑[n]]]²-n)`
-/

namespace A193589.P11805803887551462469
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011274 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A193589.P11805803887551462469

/-! ## A193589.P8645717981820443259

`or(char[1], A011274(A038722(n+1)))`
-/

namespace A193589.P8645717981820443259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A011274 (A038722 (n + 1)).toNat)

end

end A193589.P8645717981820443259

/-! ## A193589.P13579803203700298389

`A007318(C(2, n))*A011274(A038722(n+1))`
-/

namespace A193589.P13579803203700298389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A011274 (A038722 (n + 1)).toNat

end

end A193589.P13579803203700298389

/-! ## A193589.P9439652672980483725

`A011274(A038722(n+1))+A008683(4*(n+1))`
-/

namespace A193589.P9439652672980483725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011274 (A038722 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A193589.P9439652672980483725

/-! ## A193589.P16206091466929325650

`A011274(A038722(n+1))^(A000040(n+1)%2)`
-/

namespace A193589.P16206091466929325650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011274 (A038722 (n + 1)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A193589.P16206091466929325650

/-! ## A193589.P11345233642169612540

`A018252(gcd(n, n+1))*A011274(A038722(n+1))`
-/

namespace A193589.P11345233642169612540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (Nat.gcd n (n + 1)) * A011274 (A038722 (n + 1)).toNat

end

end A193589.P11345233642169612540

/-! ## A193589.P17343174367642548263

`Δ[A011274(A038722(n))+a(n-1)]` with `a(0)=0`
-/

namespace A193589.P17343174367642548263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A011274 (A038722 n).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193589.P17343174367642548263

/-! ## A193589.P3022290800931069407

`A011274(A038722(n+1))%A000051(n)`
-/

namespace A193589.P3022290800931069407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011274 (A038722 (n + 1)).toNat) (A000051 n)

end

end A193589.P3022290800931069407

/-!
# A193590: Augmentation of the Euler triangle A008292. See Comments.

The programs for A193590, there is no canonical definition to state claims against.
-/

/-! ## A193590.P16502936305115490680

`A304382(Δ[A000961(n+1)²])`
-/

namespace A193590.P16502936305115490680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304382 (f1 (n + 1) - f1 n).toNat

end

end A193590.P16502936305115490680

/-! ## A193590.P11871997279661947472

`A304382(Δ[A316476(n+1)²])`
-/

namespace A193590.P11871997279661947472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316476 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304382 (f1 (n + 1) - f1 n).toNat

end

end A193590.P11871997279661947472

/-! ## A193590.P4525794994929816632

`A304382(Δ[A378696(n+1)²])`
-/

namespace A193590.P4525794994929816632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378696 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304382 (f1 (n + 1) - f1 n).toNat

end

end A193590.P4525794994929816632

/-! ## A193590.P10840156074682242379

`A304382(Δ[record[A229997(n+1)]])`
-/

namespace A193590.P10840156074682242379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229997 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304382 (f1 (n + 1) - f1 n).toNat

end

end A193590.P10840156074682242379

/-! ## A193590.P9274718345068786462

`gcd(A151994(n+2)²+n, A312324(3*n+4))`
-/

namespace A193590.P9274718345068786462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151994 (n + 2) ^ 2 + (n : ℤ)) (A312324 (3 * n + 4))

end

end A193590.P9274718345068786462

/-!
# A193591: Augmentation of the Euler partition triangle A026820. See Comments.

The programs for A193591, there is no canonical definition to state claims against.
-/

/-! ## A193591.P17902913444921123617

`A121722(lt[A121701(n+1), 6])`
-/

namespace A193591.P17902913444921123617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121701 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121722 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A193591.P17902913444921123617

/-! ## A193591.P18276448325885682300

`or(A071948(n), A241471(n+1))`
-/

namespace A193591.P18276448325885682300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A071948 n) (A241471 (n + 1))

end

end A193591.P18276448325885682300

/-! ## A193591.P2098699566835205037

`A121722(lt[A121697(2*n+1), 15])`
-/

namespace A193591.P2098699566835205037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121697 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121722 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A193591.P2098699566835205037

/-! ## A193591.P7110597053716283473

`or(A129872(n+1)%2, A071948(n))`
-/

namespace A193591.P7110597053716283473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A129872 (n + 1)) 2) (A071948 n)

end

end A193591.P7110597053716283473

/-! ## A193591.P10139129925615407426

`A071948(n)+A005088(A074260(n))`
-/

namespace A193591.P10139129925615407426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071948 n + A005088 (A074260 n).toNat

end

end A193591.P10139129925615407426

/-!
# A193592: Triangle read by rows having n-th row 1, n, n-1, n-2,..., 2, 1 for n>=0.

The programs for A193592, the canonical program `A193592.P7249153181096996018` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193592 has offset 0).

The definition of A193592 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193592.P17329546650359838305

`log2(A057728(n+1))+1`
-/

namespace A193592.P17329546650359838305
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A057728 (n + 1) : ℝ) + 1

end

end A193592.P17329546650359838305

namespace A193592

/-- `log2(A057728(n+1))+1` -/
def P17329546650359838305.Spec : Prop :=
  ∀ n, P17329546650359838305.a n = (A193592 n : ℝ)

end A193592

/-! ## A193592.P3033957089089605336

`a(n-1)+A316669(n)-n` with `a(0)=1`
-/

namespace A193592.P3033957089089605336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A316669 n - (n : ℤ))

end

end A193592.P3033957089089605336

namespace A193592

/-- `a(n-1)+A316669(n)-n` -/
def P3033957089089605336.Spec : Prop :=
  ∀ n, P3033957089089605336.a n = A193592 n

end A193592

/-! ## A193592.P12807989180365029253

`A004736(n+1-char[∑[n+1]])`
-/

namespace A193592.P12807989180365029253
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1 - (if ∃ j, f1 j = n then 1 else 0))

end

end A193592.P12807989180365029253

namespace A193592

/-- `A004736(n+1-char[∑[n+1]])` -/
def P12807989180365029253.Spec : Prop :=
  ∀ n, P12807989180365029253.a n = A193592 n

end A193592

/-! ## A193592.P1643943175788812305

`A025581((n-1)^(1-char[∑[n]]))`
-/

namespace A193592.P1643943175788812305
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) ^ (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℤ))).toNat

end

end A193592.P1643943175788812305

namespace A193592

/-- `A025581((n-1)^(1-char[∑[n]]))` -/
def P1643943175788812305.Spec : Prop :=
  ∀ n, P1643943175788812305.a n = A193592 n

end A193592

/-! ## A193592.P3733776014466611489

`comp[∑[n]]-n-A131818(n+1)`
-/

namespace A193592.P3733776014466611489
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) - A131818 (n + 1)

end

end A193592.P3733776014466611489

namespace A193592

/-- `comp[∑[n]]-n-A131818(n+1)` -/
def P3733776014466611489.Spec : Prop :=
  ∀ n, P3733776014466611489.a n = A193592 n

end A193592

/-! ## A193592.P10046715162496978006

`(C(comp[∑[n]]-n, 2)-n)/A130296(n+1)`
-/

namespace A193592.P10046715162496978006
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ) / (A130296 (n + 1) : ℚ)

end

end A193592.P10046715162496978006

namespace A193592

/-- `(C(comp[∑[n]]-n, 2)-n)/A130296(n+1)` -/
def P10046715162496978006.Spec : Prop :=
  ∀ n, P10046715162496978006.a n = (A193592 n : ℚ)

end A193592

/-! ## A193592.P7249153181096996018

`A002262(A056943(n))+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A193592

/-- `A002262(A056943(n))+1` -/
def P7249153181096996018.Spec : Prop :=
  ∀ n, P7249153181096996018.a n = A193592 n

theorem P7249153181096996018.correct : P7249153181096996018.Spec := by
  intro n
  simp only [A193592]

end A193592

/-! ## A193592.P3376456641111743840

`A158416(A185782(n+1))`
-/

namespace A193592.P3376456641111743840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A185782 (n + 1)).toNat

end

end A193592.P3376456641111743840

namespace A193592

/-- `A158416(A185782(n+1))` -/
def P3376456641111743840.Spec : Prop :=
  ∀ n, P3376456641111743840.a n = A193592 n

end A193592

/-! ## A193592.P15050654713570120072

`A131922(n)-A051162(n)`
-/

namespace A193592.P15050654713570120072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131922 n - A051162 n

end

end A193592.P15050654713570120072

namespace A193592

/-- `A131922(n)-A051162(n)` -/
def P15050654713570120072.Spec : Prop :=
  ∀ n, P15050654713570120072.a n = A193592 n

end A193592

/-! ## A193592.P10414526594796235364

`A167407(n)+A144257(n+1)`
-/

namespace A193592.P10414526594796235364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167407 n + A144257 (n + 1)

end

end A193592.P10414526594796235364

namespace A193592

/-- `A167407(n)+A144257(n+1)` -/
def P10414526594796235364.Spec : Prop :=
  ∀ n, P10414526594796235364.a n = A193592 n

end A193592

/-! ## A193592.P3067013621590146575

`A002262(n-A056944(n))+1`
-/

namespace A193592.P3067013621590146575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 ((n : ℤ) - A056944 n).toNat + 1

end

end A193592.P3067013621590146575

namespace A193592

/-- `A002262(n-A056944(n))+1` -/
def P3067013621590146575.Spec : Prop :=
  ∀ n, P3067013621590146575.a n = A193592 n

theorem P3067013621590146575.correct : P3067013621590146575.Spec := by
  intro n
  simp only [A193592, Nat.add_sub_cancel, A193592.P3067013621590146575.a, A193592.P7249153181096996018.a, A002262, A002262.P12129691700837801527.a, A056943, A056943.P2657344456391598982.a, A056944, A056944.P15541445897934142795.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A193592

/-! ## A193592.P12902535266766945429

`A002262(A056942(n)-n)+1`
-/

namespace A193592.P12902535266766945429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A056942 n - (n : ℤ)).toNat + 1

end

end A193592.P12902535266766945429

namespace A193592

/-- `A002262(A056942(n)-n)+1` -/
def P12902535266766945429.Spec : Prop :=
  ∀ n, P12902535266766945429.a n = A193592 n

end A193592

/-! ## A193592.P13512638009675355826

`A025581(n-A073424(n))+1`
-/

namespace A193592.P13512638009675355826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 ((n : ℤ) - A073424 n).toNat + 1

end

end A193592.P13512638009675355826

namespace A193592

/-- `A025581(n-A073424(n))+1` -/
def P13512638009675355826.Spec : Prop :=
  ∀ n, P13512638009675355826.a n = A193592 n

end A193592

/-! ## A193592.P4654946701692547029

`A094727(n+1)-A056944(n)`
-/

namespace A193592.P4654946701692547029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) - A056944 n

end

end A193592.P4654946701692547029

namespace A193592

/-- `A094727(n+1)-A056944(n)` -/
def P4654946701692547029.Spec : Prop :=
  ∀ n, P4654946701692547029.a n = A193592 n

end A193592

/-! ## A193592.P4941109288083263709

`A193974(n)-A131819(n+1)`
-/

namespace A193592.P4941109288083263709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193974 n - A131819 (n + 1)

end

end A193592.P4941109288083263709

namespace A193592

/-- `A193974(n)-A131819(n+1)` -/
def P4941109288083263709.Spec : Prop :=
  ∀ n, P4941109288083263709.a n = A193592 n

end A193592

/-! ## A193592.P6729550922648147748

`A025581(n*A123110(n))+1`
-/

namespace A193592.P6729550922648147748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 ((n : ℤ) * A123110 n).toNat + 1

end

end A193592.P6729550922648147748

namespace A193592

/-- `A025581(n*A123110(n))+1` -/
def P6729550922648147748.Spec : Prop :=
  ∀ n, P6729550922648147748.a n = A193592 n

end A193592

/-! ## A193592.P8123266857381647385

`A025581(n)*A166124(n)+1`
-/

namespace A193592.P8123266857381647385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n * A166124 n + 1

end

end A193592.P8123266857381647385

namespace A193592

/-- `A025581(n)*A166124(n)+1` -/
def P8123266857381647385.Spec : Prop :=
  ∀ n, P8123266857381647385.a n = A193592 n

end A193592

/-! ## A193592.P10720324373980570250

`A093375(n+1)/A135227(n)`
-/

namespace A193592.P10720324373980570250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093375 (n + 1) : ℚ) / (A135227 n : ℚ)

end

end A193592.P10720324373980570250

namespace A193592

/-- `A093375(n+1)/A135227(n)` -/
def P10720324373980570250.Spec : Prop :=
  ∀ n, P10720324373980570250.a n = (A193592 n : ℚ)

end A193592

/-! ## A193592.P15305228220690327865

`A025581(n)%A007318(n)+1`
-/

namespace A193592.P15305228220690327865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025581 n) (A007318 n) + 1

end

end A193592.P15305228220690327865

namespace A193592

/-- `A025581(n)%A007318(n)+1` -/
def P15305228220690327865.Spec : Prop :=
  ∀ n, P15305228220690327865.a n = A193592 n

end A193592

/-! ## A193592.P3836817680876773149

`A130303(n+1)%A028326(n)`
-/

namespace A193592.P3836817680876773149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130303 (n + 1)) (A028326 n)

end

end A193592.P3836817680876773149

namespace A193592

/-- `A130303(n+1)%A028326(n)` -/
def P3836817680876773149.Spec : Prop :=
  ∀ n, P3836817680876773149.a n = A193592 n

end A193592

/-!
# A193593: Augmentation of the triangle A193592. See Comments.

The programs for A193593, there is no canonical definition to state claims against.
-/

/-! ## A193593.P46239974800493141

`xor(A102681(A000225(n)), A156367(n))`
-/

namespace A193593.P46239974800493141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A102681 (A000225 n).toNat) (A156367 n)

end

end A193593.P46239974800493141

/-! ## A193593.P3248932174843000876

`xor(A102681(A000225(n)), A190909(n))`
-/

namespace A193593.P3248932174843000876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A102681 (A000225 n).toNat) (A190909 n)

end

end A193593.P3248932174843000876

/-! ## A193593.P703078590282749071

`A156367(n)+A108997(n+3)%2`
-/

namespace A193593.P703078590282749071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156367 n + Int.tmod (A108997 (n + 3)) 2

end

end A193593.P703078590282749071

/-! ## A193593.P5900131858709774719

`A181853(n)-A368413(A008277(n+5))`
-/

namespace A193593.P5900131858709774719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181853 n - A368413 (A008277 (n + 5)).toNat

end

end A193593.P5900131858709774719

/-! ## A193593.P5661532024687479845

`A156367(n)+A101637(A296725(3*n+2))`
-/

namespace A193593.P5661532024687479845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156367 n + A101637 (A296725 (3 * n + 2)).toNat

end

end A193593.P5661532024687479845

/-!
# A193596: Triangle given by p(n,k) = ceiling(C(n,k)/2).

The programs for A193596, the canonical program `A193596.P1147588452493627920` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193596 has offset 0).

The definition of A193596 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193596.P6292031668130477506

`ceil(A007318(n)/2)`
-/

namespace A193596.P6292031668130477506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007318 n : ℚ) / 2⌉

end

end A193596.P6292031668130477506

namespace A193596

/-- `ceil(A007318(n)/2)` -/
def P6292031668130477506.Spec : Prop :=
  ∀ n, P6292031668130477506.a n = A193596 n

end A193596

/-! ## A193596.P15029704889758341841

`ceil(A132749(n)/2)`
-/

namespace A193596.P15029704889758341841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A132749 n : ℚ) / 2⌉

end

end A193596.P15029704889758341841

namespace A193596

/-- `ceil(A132749(n)/2)` -/
def P15029704889758341841.Spec : Prop :=
  ∀ n, P15029704889758341841.a n = A193596 n

end A193596

/-! ## A193596.P12073185587740239031

`ceil(A028326(n)/4)`
-/

namespace A193596.P12073185587740239031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A028326 n : ℚ) / 4⌉

end

end A193596.P12073185587740239031

namespace A193596

/-- `ceil(A028326(n)/4)` -/
def P12073185587740239031.Spec : Prop :=
  ∀ n, P12073185587740239031.a n = A193596 n

end A193596

/-! ## A193596.P12170228095846293347

`ceil(A109128(n)/4)`
-/

namespace A193596.P12170228095846293347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A109128 n : ℚ) / 4⌉

end

end A193596.P12170228095846293347

namespace A193596

/-- `ceil(A109128(n)/4)` -/
def P12170228095846293347.Spec : Prop :=
  ∀ n, P12170228095846293347.a n = A193596 n

end A193596

/-! ## A193596.P14367614467889631576

`ceil(A124927(n)/4)`
-/

namespace A193596.P14367614467889631576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A124927 n : ℚ) / 4⌉

end

end A193596.P14367614467889631576

namespace A193596

/-- `ceil(A124927(n)/4)` -/
def P14367614467889631576.Spec : Prop :=
  ∀ n, P14367614467889631576.a n = A193596 n

end A193596

/-! ## A193596.P1859485314378893457

`ceil(A134058(n)/4)`
-/

namespace A193596.P1859485314378893457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134058 n : ℚ) / 4⌉

end

end A193596.P1859485314378893457

namespace A193596

/-- `ceil(A134058(n)/4)` -/
def P1859485314378893457.Spec : Prop :=
  ∀ n, P1859485314378893457.a n = A193596 n

end A193596

/-! ## A193596.P12528188453371305980

`ceil(A124928(n)/6)`
-/

namespace A193596.P12528188453371305980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A124928 n : ℚ) / 6⌉

end

end A193596.P12528188453371305980

namespace A193596

/-- `ceil(A124928(n)/6)` -/
def P12528188453371305980.Spec : Prop :=
  ∀ n, P12528188453371305980.a n = A193596 n

end A193596

/-! ## A193596.P12614377406465090294

`ceil(abs(A108086(n)/2))`
-/

namespace A193596.P12614377406465090294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(A108086 n : ℚ) / 2|⌉

end

end A193596.P12614377406465090294

namespace A193596

/-- `ceil(abs(A108086(n)/2))` -/
def P12614377406465090294.Spec : Prop :=
  ∀ n, P12614377406465090294.a n = A193596 n

end A193596

/-! ## A193596.P2663007918338520728

`ceil(abs(A117440(n)/2))`
-/

namespace A193596.P2663007918338520728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(A117440 n : ℚ) / 2|⌉

end

end A193596.P2663007918338520728

namespace A193596

/-- `ceil(abs(A117440(n)/2))` -/
def P2663007918338520728.Spec : Prop :=
  ∀ n, P2663007918338520728.a n = A193596 n

end A193596

/-! ## A193596.P17843926104709532783

`ceil(sqrt(A008459(n))/2)`
-/

namespace A193596.P17843926104709532783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A008459 n : ℝ) / 2⌉

end

end A193596.P17843926104709532783

namespace A193596

/-- `ceil(sqrt(A008459(n))/2)` -/
def P17843926104709532783.Spec : Prop :=
  ∀ n, P17843926104709532783.a n = A193596 n

end A193596

/-! ## A193596.P1212491917341733548

`ceil(Δ[A102363(n)/2])`
-/

namespace A193596.P1212491917341733548
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102363 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A193596.P1212491917341733548

namespace A193596

/-- `ceil(Δ[A102363(n)/2])` -/
def P1212491917341733548.Spec : Prop :=
  ∀ n, P1212491917341733548.a n = A193596 n

end A193596

/-! ## A193596.P13350292592215454489

`round(A007318(2*n-n)/2)`
-/

namespace A193596.P13350292592215454489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007318 (2 * n - n) : ℚ) / 2)

end

end A193596.P13350292592215454489

namespace A193596

/-- `round(A007318(2*n-n)/2)` -/
def P13350292592215454489.Spec : Prop :=
  ∀ n, P13350292592215454489.a n = A193596 n

end A193596

/-! ## A193596.P2839981037109069226

`round(A055372(n)/A137688(n))`
-/

namespace A193596.P2839981037109069226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A055372 n : ℚ) / (A137688 n : ℚ))

end

end A193596.P2839981037109069226

namespace A193596

/-- `round(A055372(n)/A137688(n))` -/
def P2839981037109069226.Spec : Prop :=
  ∀ n, P2839981037109069226.a n = A193596 n

end A193596

/-! ## A193596.P14025629237176317274

`(A047999(n)+A007318(n))/2`
-/

namespace A193596.P14025629237176317274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047999 n + A007318 n : ℚ) / 2

end

end A193596.P14025629237176317274

namespace A193596

/-- `(A047999(n)+A007318(n))/2` -/
def P14025629237176317274.Spec : Prop :=
  ∀ n, P14025629237176317274.a n = (A193596 n : ℚ)

end A193596

/-! ## A193596.P1147588452493627920

`ceil(C(A003056(n), A004736(n+1)-1)/2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A193596

/-- `ceil(C(A003056(n), A004736(n+1)-1)/2)` -/
def P1147588452493627920.Spec : Prop :=
  ∀ n, P1147588452493627920.a n = A193596 n

theorem P1147588452493627920.correct : P1147588452493627920.Spec := by
  intro n
  simp only [A193596]

end A193596

/-! ## A193596.P7800532554417973368

`ceil(A134060(n)/6)`
-/

namespace A193596.P7800532554417973368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134060 n : ℚ) / 6⌉

end

end A193596.P7800532554417973368

namespace A193596

/-- `ceil(A134060(n)/6)` -/
def P7800532554417973368.Spec : Prop :=
  ∀ n, P7800532554417973368.a n = A193596 n

end A193596

/-! ## A193596.P7638802705785051332

`A174446(n)-A219463(n)`
-/

namespace A193596.P7638802705785051332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174446 n - A219463 n

end

end A193596.P7638802705785051332

namespace A193596

/-- `A174446(n)-A219463(n)` -/
def P7638802705785051332.Spec : Prop :=
  ∀ n, P7638802705785051332.a n = A193596 n

end A193596

/-! ## A193596.P14695200995548097550

`(A132044(n)+A040001(A132044(n)))/2`
-/

namespace A193596.P14695200995548097550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132044 n + A040001 (A132044 n).toNat : ℚ) / 2

end

end A193596.P14695200995548097550

namespace A193596

/-- `(A132044(n)+A040001(A132044(n)))/2` -/
def P14695200995548097550.Spec : Prop :=
  ∀ n, P14695200995548097550.a n = (A193596 n : ℚ)

end A193596

/-! ## A193596.P7378551035582164168

`A008619(A014473(n))`
-/

namespace A193596.P7378551035582164168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A014473 n).toNat

end

end A193596.P7378551035582164168

namespace A193596

/-- `A008619(A014473(n))` -/
def P7378551035582164168.Spec : Prop :=
  ∀ n, P7378551035582164168.a n = A193596 n

end A193596

/-! ## A193596.P4947218266593506787

`A065033(A007318(n))`
-/

namespace A193596.P4947218266593506787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A007318 n).toNat

end

end A193596.P4947218266593506787

namespace A193596

/-- `A065033(A007318(n))` -/
def P4947218266593506787.Spec : Prop :=
  ∀ n, P4947218266593506787.a n = A193596 n

end A193596

/-!
# A193598: Even numbers k such that r(k) < r(k/2), where r(n) is the distance from n to the nearest prime.

The programs for A193598, the canonical program `A193598.P1487973512130670812` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193598 has offset 1).

The definition of A193598 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1966 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193598.P1487973512130670812

`lt[A051699(n), A051699(A026741(n))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A193598

/-- `lt[A051699(n), A051699(A026741(n))]` -/
def P1487973512130670812.Spec : Prop :=
  ∀ n, (P1487973512130670812.a n : ℤ) = A193598 (n + 1)

theorem P1487973512130670812.correct : P1487973512130670812.Spec := by
  intro n
  simp only [A193598, Nat.add_sub_cancel]

end A193598

/-! ## A193598.P5016661472910202900

`A005843(lt[A051699(2*n), A051699(n)])`
-/

namespace A193598.P5016661472910202900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A193598.P5016661472910202900

namespace A193598

/-- `A005843(lt[A051699(2*n), A051699(n)])` -/
def P5016661472910202900.Spec : Prop :=
  ∀ n, P5016661472910202900.a n = A193598 (n + 1)

end A193598

/-!
# A193599: Indices n such that Padovan(n) > R^n/(2*R+3) where R is the only real root of the polynomial x^3-x-1.

The programs for A193599, there is no canonical definition to state claims against.
-/

/-! ## A193599.P5466965036183979428

`lt[a(n-3)-a(n-1), 2]` with `a(0)=1, a(1)=3, a(2)=3`
-/

namespace A193599.P5466965036183979428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3] fun n f1 =>
  f1 (n - 3) - f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A193599.P5466965036183979428

/-! ## A193599.P15081045894537588799

`comp[A051016(n+1)-41]`
-/

namespace A193599.P15081045894537588799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051016 (n + 1) - 41

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A193599.P15081045894537588799

/-! ## A193599.P3876421715173096851

`comp[A051017(n+1)-166]`
-/

namespace A193599.P3876421715173096851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051017 (n + 1) - 166

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A193599.P3876421715173096851

/-! ## A193599.P8972023997506055319

`comp[A172274(n+1)+abs(or(1, 1-n))]`
-/

namespace A193599.P8972023997506055319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172274 (n + 1) + |Int.lor 1 (1 - (n : ℤ))|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A193599.P8972023997506055319

/-! ## A193599.P2439881760477105116

`lt[Δ[A104770(n+2)], A007318(n)]`
-/

namespace A193599.P2439881760477105116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104770 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A193599.P2439881760477105116

/-! ## A193599.P10782061362334154159

`lt[Δ[A104770(n+2)], A104778(n)]`
-/

namespace A193599.P10782061362334154159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104770 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A193599.P10782061362334154159

/-! ## A193599.P17927843457883935867

`record[A028242(A189407(n+1))+n%2]`
-/

namespace A193599.P17927843457883935867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A189407 (n + 1)).toNat + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193599.P17927843457883935867

/-! ## A193599.P13641571450266982068

`lt[Δ[A104770(n+2)], A104763(n+1)]`
-/

namespace A193599.P13641571450266982068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104770 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A193599.P13641571450266982068

/-! ## A193599.P13988833889205806723

`comp[A193600(n+1)]`
-/

namespace A193599.P13988833889205806723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A193599.P13988833889205806723

/-! ## A193599.P7695372807469934755

`comp[record[A193600(A117910(n))]]`
-/

namespace A193599.P7695372807469934755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193600 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A193599.P7695372807469934755

