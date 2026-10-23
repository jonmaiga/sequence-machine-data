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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
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
import Seq.Opaque.C025

/-!
# A343100: Number of partitions of n into 3 parts, at least 2 of which are coprime.

The programs for A343100, there is no canonical definition to state claims against.
-/

/-! ## A343100.P8843983033974794825

`∑[A008615(n)]-A337599(n+1)`
-/

namespace A343100.P8843983033974794825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A337599 (n + 1)

end

end A343100.P8843983033974794825

/-! ## A343100.P14676598825652402598

`Δ[A181120(n)]-A337599(n+1)`
-/

namespace A343100.P14676598825652402598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A337599 (n + 1)

end

end A343100.P14676598825652402598

/-! ## A343100.P9338293763979534876

`A069905(n+1)-A337599(n+1)`
-/

namespace A343100.P9338293763979534876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (n + 1) - A337599 (n + 1)

end

end A343100.P9338293763979534876

/-! ## A343100.P1968153708309577953

`A211540(n+3)-A337599(n+1)`
-/

namespace A343100.P1968153708309577953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (n + 3) - A337599 (n + 1)

end

end A343100.P1968153708309577953

/-! ## A343100.P3122176553777753724

`Δ[A181120(n)-A337599(n)]-A337599(n)`
-/

namespace A343100.P3122176553777753724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 n - A337599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A337599 n

end

end A343100.P3122176553777753724

/-!
# A343101: Pairs of integers (k, m) ordered by m with 1 < k < m such that k has the same prime divisors as m, and, k+1 has the same prime divisors as m+1.

The programs for A343101, there is no canonical definition to state claims against.
-/

/-! ## A343101.P16034682740048408601

`A001316(A000301(n))*A288011(n+1)`
-/

namespace A343101.P16034682740048408601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A000301 n).toNat * A288011 (n + 1)

end

end A343101.P16034682740048408601

/-! ## A343101.P6408443936866718785

`A053812(A133964(n+1))*A288664(n+1)`
-/

namespace A343101.P6408443936866718785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053812 (A133964 (n + 1)).toNat * A288664 (n + 1)

end

end A343101.P6408443936866718785

/-! ## A343101.P6194605507955467593

`A020639(A093357(n+2))*A288664(n+1)`
-/

namespace A343101.P6194605507955467593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A093357 (n + 2)).toNat * A288664 (n + 1)

end

end A343101.P6194605507955467593

/-!
# A343104: Smallest number having exactly n divisors of the form 8*k + 1.

The programs for A343104, there is no canonical definition to state claims against.
-/

/-! ## A343104.P12434108108234667254

`A343134(A100793(n))`
-/

namespace A343104.P12434108108234667254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343134 (A100793 n).toNat

end

end A343104.P12434108108234667254

/-! ## A343104.P11673852522377073080

`A343134(∑[A284568(n)])`
-/

namespace A343104.P11673852522377073080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343134 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A343104.P11673852522377073080

/-!
# A343105: Smallest number having exactly n divisors of the form 8*k + 3.

The programs for A343105, there is no canonical definition to state claims against.
-/

/-! ## A343105.P11856532865626930841

`A343135(n+1)%p?[2^n-1]`
-/

namespace A343105.P11856532865626930841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343135 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A343105.P11856532865626930841

/-! ## A343105.P1728936378748919108

`A343135(A024646(n+1))`
-/

namespace A343105.P1728936378748919108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343135 (A024646 (n + 1)).toNat

end

end A343105.P1728936378748919108

/-! ## A343105.P13355656537306323379

`A343135(A024647(n+1))`
-/

namespace A343105.P13355656537306323379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343135 (A024647 (n + 1)).toNat

end

end A343105.P13355656537306323379

/-!
# A343106: Smallest number having exactly n divisors of the form 8*k + 5.

The programs for A343106, there is no canonical definition to state claims against.
-/

/-! ## A343106.P12681712893414586149

`A343136((n+1)^gcd(7, n))`
-/

namespace A343106.P12681712893414586149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343136 ((n + 1) ^ Nat.gcd 7 n)

end

end A343106.P12681712893414586149

/-! ## A343106.P15233867600037804565

`A343136(A024646(n+1))`
-/

namespace A343106.P15233867600037804565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343136 (A024646 (n + 1)).toNat

end

end A343106.P15233867600037804565

/-! ## A343106.P342599230931015972

`A343136(A024647(n+1))`
-/

namespace A343106.P342599230931015972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343136 (A024647 (n + 1)).toNat

end

end A343106.P342599230931015972

/-!
# A343107: Numbers having exactly 1 divisor of the form 8*k + 1, that is, numbers with no divisor of the form 8*k + 1 other than 1.

The programs for A343107, the canonical program `A343107.P13830559437863902822` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343107 has offset 1).

The definition of A343107 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3983 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343107.P13830559437863902822

`eq[1, A188169(n+1)]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A343107

/-- `eq[1, A188169(n+1)]+1` -/
def P13830559437863902822.Spec : Prop :=
  ∀ n, (P13830559437863902822.a n : ℤ) = A343107 (n + 1)

theorem P13830559437863902822.correct : P13830559437863902822.Spec := by
  intro n
  simp only [A343107, Nat.add_sub_cancel]

end A343107

/-! ## A343107.P13572177198991820295

`eq[1, A284100(n+1)]+1`
-/

namespace A343107.P13572177198991820295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284100 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A343107.P13572177198991820295

namespace A343107

/-- `eq[1, A284100(n+1)]+1` -/
def P13572177198991820295.Spec : Prop :=
  ∀ n, (P13572177198991820295.a n : ℤ) = A343107 (n + 1)

end A343107

/-! ## A343107.P409363958335690521

`record[gcd(n+1, A158537(n+1)-A188169(n+1))]`
-/

namespace A343107.P409363958335690521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A158537 (n + 1) - A188169 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343107.P409363958335690521

namespace A343107

/-- `record[gcd(n+1, A158537(n+1)-A188169(n+1))]` -/
def P409363958335690521.Spec : Prop :=
  ∀ n, (P409363958335690521.a n : ℤ) = A343107 (n + 1)

end A343107

/-! ## A343107.P7553091835625405473

`eq[A057427(n), A188169(A028310(n))]`
-/

namespace A343107.P7553091835625405473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188169 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343107.P7553091835625405473

namespace A343107

/-- `eq[A057427(n), A188169(A028310(n))]` -/
def P7553091835625405473.Spec : Prop :=
  ∀ n, (P7553091835625405473.a n : ℤ) = A343107 (n + 1)

end A343107

/-! ## A343107.P10890873606032996489

`record[(n+1)/A188169(2*(n+1))]`
-/

namespace A343107.P10890873606032996489
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A188169 (2 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343107.P10890873606032996489

namespace A343107

/-- `record[(n+1)/A188169(2*(n+1))]` -/
def P10890873606032996489.Spec : Prop :=
  ∀ n, P10890873606032996489.a n = (A343107 (n + 1) : ℚ)

end A343107

/-! ## A343107.P300439504382936598

`record[(n+1)/A109703(2*A284100(n+1))]`
-/

namespace A343107.P300439504382936598
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A109703 (2 * A284100 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343107.P300439504382936598

namespace A343107

/-- `record[(n+1)/A109703(2*A284100(n+1))]` -/
def P300439504382936598.Spec : Prop :=
  ∀ n, P300439504382936598.a n = (A343107 (n + 1) : ℚ)

end A343107

/-!
# A343108: Numbers having no divisor of the form 8*k + 3.

The programs for A343108, the canonical program `A343108.P3085708699721612716` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343108 has offset 1).

The definition of A343108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3465 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343108.P3085708699721612716

`eq[0, A188170(n+1)]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A343108

/-- `eq[0, A188170(n+1)]+1` -/
def P3085708699721612716.Spec : Prop :=
  ∀ n, (P3085708699721612716.a n : ℤ) = A343108 (n + 1)

theorem P3085708699721612716.correct : P3085708699721612716.Spec := by
  intro n
  simp only [A343108, Nat.add_sub_cancel]

end A343108

/-! ## A343108.P3534508865750675373

`A000027(lt[A188170(n+1), 1]+1)`
-/

namespace A343108.P3534508865750675373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188170 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A343108.P3534508865750675373

namespace A343108

/-- `A000027(lt[A188170(n+1), 1]+1)` -/
def P3534508865750675373.Spec : Prop :=
  ∀ n, P3534508865750675373.a n = A343108 (n + 1)

end A343108

/-! ## A343108.P1080225682462792174

`record[n+1-A007522(n+1)*A188170(n+1)]`
-/

namespace A343108.P1080225682462792174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A007522 (n + 1) * A188170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343108.P1080225682462792174

namespace A343108

/-- `record[n+1-A007522(n+1)*A188170(n+1)]` -/
def P1080225682462792174.Spec : Prop :=
  ∀ n, P1080225682462792174.a n = A343108 (n + 1)

end A343108

/-! ## A343108.P2269050710161547207

`record[n+1-A188170(n+1)*A343107(n+1)]`
-/

namespace A343108.P2269050710161547207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A188170 (n + 1) * A343107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343108.P2269050710161547207

namespace A343108

/-- `record[n+1-A188170(n+1)*A343107(n+1)]` -/
def P2269050710161547207.Spec : Prop :=
  ∀ n, P2269050710161547207.a n = A343108 (n + 1)

end A343108

/-! ## A343108.P15742915682180541109

`record[n+1-A188170(n+1)*A343111(n+1)]`
-/

namespace A343108.P15742915682180541109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A188170 (n + 1) * A343111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343108.P15742915682180541109

namespace A343108

/-- `record[n+1-A188170(n+1)*A343111(n+1)]` -/
def P15742915682180541109.Spec : Prop :=
  ∀ n, P15742915682180541109.a n = A343108 (n + 1)

end A343108

/-!
# A343109: Numbers having no divisor of the form 8*k + 5.

The programs for A343109, the canonical program `A343109.P14668972200541254521` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343109 has offset 1).

The definition of A343109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4042 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343109.P14668972200541254521

`lt[A188171(n+1), 1]+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A343109

/-- `lt[A188171(n+1), 1]+1` -/
def P14668972200541254521.Spec : Prop :=
  ∀ n, (P14668972200541254521.a n : ℤ) = A343109 (n + 1)

theorem P14668972200541254521.correct : P14668972200541254521.Spec := by
  intro n
  simp only [A343109, Nat.add_sub_cancel]

end A343109

/-! ## A343109.P15219435219365944901

`eq[A001826(n+1), A188169(n+1)]+1`
-/

namespace A343109.P15219435219365944901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188169 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A343109.P15219435219365944901

namespace A343109

/-- `eq[A001826(n+1), A188169(n+1)]+1` -/
def P15219435219365944901.Spec : Prop :=
  ∀ n, (P15219435219365944901.a n : ℤ) = A343109 (n + 1)

end A343109

/-! ## A343109.P12380624007415540199

`record[n+1-A001311(n)*A188171(n+1)]`
-/

namespace A343109.P12380624007415540199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001311 n * A188171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343109.P12380624007415540199

namespace A343109

/-- `record[n+1-A001311(n)*A188171(n+1)]` -/
def P12380624007415540199.Spec : Prop :=
  ∀ n, P12380624007415540199.a n = A343109 (n + 1)

end A343109

/-! ## A343109.P8842432266857374403

`record[n+1-A017017(n)*A188171(n+1)]`
-/

namespace A343109.P8842432266857374403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A017017 n * A188171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343109.P8842432266857374403

namespace A343109

/-- `record[n+1-A017017(n)*A188171(n+1)]` -/
def P8842432266857374403.Spec : Prop :=
  ∀ n, P8842432266857374403.a n = A343109 (n + 1)

end A343109

/-! ## A343109.P6368777690782077477

`record[n+1-A188171(n+1)*A324186(n)]`
-/

namespace A343109.P6368777690782077477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A188171 (n + 1) * A324186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343109.P6368777690782077477

namespace A343109

/-- `record[n+1-A188171(n+1)*A324186(n)]` -/
def P6368777690782077477.Spec : Prop :=
  ∀ n, P6368777690782077477.a n = A343109 (n + 1)

end A343109

/-! ## A343109.P3682935623649004558

`record[n+1-A188171(n+1)*A284379(n+1)]`
-/

namespace A343109.P3682935623649004558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A188171 (n + 1) * A284379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343109.P3682935623649004558

namespace A343109

/-- `record[n+1-A188171(n+1)*A284379(n+1)]` -/
def P3682935623649004558.Spec : Prop :=
  ∀ n, P3682935623649004558.a n = A343109 (n + 1)

end A343109

/-!
# A343110: Numbers having no divisor of the form 8*k + 7.

The programs for A343110, the canonical program `A343110.P14036708916110220053` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343110 has offset 1).

The definition of A343110 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4347 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343110.P14036708916110220053

`eq[0, A188172(n+1)]+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A343110

/-- `eq[0, A188172(n+1)]+1` -/
def P14036708916110220053.Spec : Prop :=
  ∀ n, (P14036708916110220053.a n : ℤ) = A343110 (n + 1)

theorem P14036708916110220053.correct : P14036708916110220053.Spec := by
  intro n
  simp only [A343110, Nat.add_sub_cancel]

end A343110

/-! ## A343110.P5801775975702019618

`eq[1, A236384(a(A188172(n)))]` with `a(0)=3`
-/

namespace A343110.P5801775975702019618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A236384 (f2 (A188172 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343110.P5801775975702019618

namespace A343110

/-- `eq[1, A236384(a(A188172(n)))]` -/
def P5801775975702019618.Spec : Prop :=
  ∀ n, (P5801775975702019618.a n : ℤ) = A343110 (n + 1)

end A343110

/-! ## A343110.P208853335575452926

`record[n+1-A003056(n)*A188172(n+1)]`
-/

namespace A343110.P208853335575452926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A003056 n * A188172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343110.P208853335575452926

namespace A343110

/-- `record[n+1-A003056(n)*A188172(n+1)]` -/
def P208853335575452926.Spec : Prop :=
  ∀ n, P208853335575452926.a n = A343110 (n + 1)

end A343110

/-! ## A343110.P2242098065863825733

`record[n+1-A000010(n+1)*A188172(n+1)]`
-/

namespace A343110.P2242098065863825733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000010 (n + 1) * A188172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343110.P2242098065863825733

namespace A343110

/-- `record[n+1-A000010(n+1)*A188172(n+1)]` -/
def P2242098065863825733.Spec : Prop :=
  ∀ n, P2242098065863825733.a n = A343110 (n + 1)

end A343110

/-! ## A343110.P13561337063089421571

`record[n+1-A005117(n+1)*A188172(n+1)]`
-/

namespace A343110.P13561337063089421571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A005117 (n + 1) * A188172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343110.P13561337063089421571

namespace A343110

/-- `record[n+1-A005117(n+1)*A188172(n+1)]` -/
def P13561337063089421571.Spec : Prop :=
  ∀ n, P13561337063089421571.a n = A343110 (n + 1)

end A343110

/-! ## A343110.P7651303126608043159

`record[n+1-A078358(n+1)*A188172(n+1)]`
-/

namespace A343110.P7651303126608043159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A078358 (n + 1) * A188172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343110.P7651303126608043159

namespace A343110

/-- `record[n+1-A078358(n+1)*A188172(n+1)]` -/
def P7651303126608043159.Spec : Prop :=
  ∀ n, P7651303126608043159.a n = A343110 (n + 1)

end A343110

/-!
# A343111: Numbers having exactly 2 divisors of the form 8*k + 1, that is, numbers with exactly 1 divisor of the form 8*k + 1 other than 1.

The programs for A343111, the canonical program `A343111.P1889951364348391382` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343111 has offset 1).

The definition of A343111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4468 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343111.P1889951364348391382

`eq[2, A188169(n+1)]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A343111

/-- `eq[2, A188169(n+1)]+1` -/
def P1889951364348391382.Spec : Prop :=
  ∀ n, (P1889951364348391382.a n : ℤ) = A343111 (n + 1)

theorem P1889951364348391382.correct : P1889951364348391382.Spec := by
  intro n
  simp only [A343111, Nat.add_sub_cancel]

end A343111

/-! ## A343111.P7483094634947962725

`eq[2, A188169(A028310(n))]`
-/

namespace A343111.P7483094634947962725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188169 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343111.P7483094634947962725

namespace A343111

/-- `eq[2, A188169(A028310(n))]` -/
def P7483094634947962725.Spec : Prop :=
  ∀ n, (P7483094634947962725.a n : ℤ) = A343111 (n + 1)

end A343111

/-! ## A343111.P16744602541034918869

`A153152(eq[2, A188169(n+1)])`
-/

namespace A343111.P16744602541034918869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A343111.P16744602541034918869

namespace A343111

/-- `A153152(eq[2, A188169(n+1)])` -/
def P16744602541034918869.Spec : Prop :=
  ∀ n, P16744602541034918869.a n = A343111 (n + 1)

end A343111

/-! ## A343111.P15756299280763316455

`eq[2, A188169(A008574(n))]`
-/

namespace A343111.P15756299280763316455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188169 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343111.P15756299280763316455

namespace A343111

/-- `eq[2, A188169(A008574(n))]` -/
def P15756299280763316455.Spec : Prop :=
  ∀ n, (P15756299280763316455.a n : ℤ) = A343111 (n + 1)

end A343111

/-! ## A343111.P13411137953078466922

`eq[2, A188169(A022144(n))]`
-/

namespace A343111.P13411137953078466922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188169 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343111.P13411137953078466922

namespace A343111

/-- `eq[2, A188169(A022144(n))]` -/
def P13411137953078466922.Spec : Prop :=
  ∀ n, (P13411137953078466922.a n : ℤ) = A343111 (n + 1)

end A343111

/-! ## A343111.P15705417923871402521

`eq[2, A188169(A233583(n+1))]`
-/

namespace A343111.P15705417923871402521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188169 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343111.P15705417923871402521

namespace A343111

/-- `eq[2, A188169(A233583(n+1))]` -/
def P15705417923871402521.Spec : Prop :=
  ∀ n, (P15705417923871402521.a n : ℤ) = A343111 (n + 1)

end A343111

/-!
# A343112: Numbers having exactly 1 divisor of the form 8*k + 3.

The programs for A343112, the canonical program `A343112.P14825827213365996688` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343112 has offset 1).

The definition of A343112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2960 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343112.P14825827213365996688

`eq[1, A188170(n+1)]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A343112

/-- `eq[1, A188170(n+1)]+1` -/
def P14825827213365996688.Spec : Prop :=
  ∀ n, (P14825827213365996688.a n : ℤ) = A343112 (n + 1)

theorem P14825827213365996688.correct : P14825827213365996688.Spec := by
  intro n
  simp only [A343112, Nat.add_sub_cancel]

end A343112

/-! ## A343112.P14416887943093169889

`eq[1, A188170(A028310(n))]`
-/

namespace A343112.P14416887943093169889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188170 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343112.P14416887943093169889

namespace A343112

/-- `eq[1, A188170(A028310(n))]` -/
def P14416887943093169889.Spec : Prop :=
  ∀ n, (P14416887943093169889.a n : ℤ) = A343112 (n + 1)

end A343112

/-! ## A343112.P15987101752014753460

`A153152(eq[1, A188170(n+1)])`
-/

namespace A343112.P15987101752014753460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A343112.P15987101752014753460

namespace A343112

/-- `A153152(eq[1, A188170(n+1)])` -/
def P15987101752014753460.Spec : Prop :=
  ∀ n, P15987101752014753460.a n = A343112 (n + 1)

end A343112

/-! ## A343112.P17046308418616911040

`eq[1, A188170(A004273(n)+1)]`
-/

namespace A343112.P17046308418616911040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188170 (A004273 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343112.P17046308418616911040

namespace A343112

/-- `eq[1, A188170(A004273(n)+1)]` -/
def P17046308418616911040.Spec : Prop :=
  ∀ n, (P17046308418616911040.a n : ℤ) = A343112 (n + 1)

end A343112

/-! ## A343112.P10336741875825885385

`eq[1, A188170(A008574(n))]`
-/

namespace A343112.P10336741875825885385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188170 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343112.P10336741875825885385

namespace A343112

/-- `eq[1, A188170(A008574(n))]` -/
def P10336741875825885385.Spec : Prop :=
  ∀ n, (P10336741875825885385.a n : ℤ) = A343112 (n + 1)

end A343112

/-! ## A343112.P7516073021096559180

`eq[1, A188170(A022144(n))]`
-/

namespace A343112.P7516073021096559180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188170 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343112.P7516073021096559180

namespace A343112

/-- `eq[1, A188170(A022144(n))]` -/
def P7516073021096559180.Spec : Prop :=
  ∀ n, (P7516073021096559180.a n : ℤ) = A343112 (n + 1)

end A343112

/-!
# A343113: Numbers having exactly 1 divisor of the form 8*k + 5.

The programs for A343113, the canonical program `A343113.P7654673107795558321` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343113 has offset 1).

The definition of A343113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2903 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343113.P7654673107795558321

`eq[1, A188171(n+1)]+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A343113

/-- `eq[1, A188171(n+1)]+1` -/
def P7654673107795558321.Spec : Prop :=
  ∀ n, (P7654673107795558321.a n : ℤ) = A343113 (n + 1)

theorem P7654673107795558321.correct : P7654673107795558321.Spec := by
  intro n
  simp only [A343113, Nat.add_sub_cancel]

end A343113

/-! ## A343113.P16397938396345219687

`A153152(eq[1, A188171(n+1)])`
-/

namespace A343113.P16397938396345219687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A343113.P16397938396345219687

namespace A343113

/-- `A153152(eq[1, A188171(n+1)])` -/
def P16397938396345219687.Spec : Prop :=
  ∀ n, P16397938396345219687.a n = A343113 (n + 1)

end A343113

/-! ## A343113.P17256940551773329329

`A153152(eq[1, A001826(n+1)-A188169(n+1)])`
-/

namespace A343113.P17256940551773329329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001826 (n + 1) - A188169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A343113.P17256940551773329329

namespace A343113

/-- `A153152(eq[1, A001826(n+1)-A188169(n+1)])` -/
def P17256940551773329329.Spec : Prop :=
  ∀ n, P17256940551773329329.a n = A343113 (n + 1)

end A343113

/-! ## A343113.P808658099328346746

`eq[1, A188171(A004277(n))]`
-/

namespace A343113.P808658099328346746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188171 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343113.P808658099328346746

namespace A343113

/-- `eq[1, A188171(A004277(n))]` -/
def P808658099328346746.Spec : Prop :=
  ∀ n, (P808658099328346746.a n : ℤ) = A343113 (n + 1)

end A343113

/-! ## A343113.P3799200317649249775

`eq[1, A188171(A257088(n))]`
-/

namespace A343113.P3799200317649249775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188171 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343113.P3799200317649249775

namespace A343113

/-- `eq[1, A188171(A257088(n))]` -/
def P3799200317649249775.Spec : Prop :=
  ∀ n, (P3799200317649249775.a n : ℤ) = A343113 (n + 1)

end A343113

/-! ## A343113.P4681558396382683493

`eq[1, A188171(A008574(n))]`
-/

namespace A343113.P4681558396382683493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188171 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343113.P4681558396382683493

namespace A343113

/-- `eq[1, A188171(A008574(n))]` -/
def P4681558396382683493.Spec : Prop :=
  ∀ n, (P4681558396382683493.a n : ℤ) = A343113 (n + 1)

end A343113

/-! ## A343113.P5175481601880464019

`eq[1, A188171(A233583(n+1))]`
-/

namespace A343113.P5175481601880464019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188171 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343113.P5175481601880464019

namespace A343113

/-- `eq[1, A188171(A233583(n+1))]` -/
def P5175481601880464019.Spec : Prop :=
  ∀ n, (P5175481601880464019.a n : ℤ) = A343113 (n + 1)

end A343113

/-!
# A343114: a(n) = Sum_{i=1..n} gcd(n^i,i).

The programs for A343114, there is no canonical definition to state claims against.
-/

/-! ## A343114.P8031127514738476631

`A389102(n+1)-1`
-/

namespace A343114.P8031127514738476631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389102 (n + 1) - 1

end

end A343114.P8031127514738476631

/-! ## A343114.P1948671491886632020

`A343395(n+1)+n`
-/

namespace A343114.P1948671491886632020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343395 (n + 1) + (n : ℤ)

end

end A343114.P1948671491886632020

/-! ## A343114.P16073655589561596358

`A023443(A389102(n+1))`
-/

namespace A343114.P16073655589561596358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A389102 (n + 1)).toNat

end

end A343114.P16073655589561596358

/-!
# A343116: a(n) is the Pisano period of prime(n)^2.

The programs for A343116, there is no canonical definition to state claims against.
-/

/-! ## A343116.P1948104219774282995

`A001175(A001248(n+1))`
-/

namespace A343116.P1948104219774282995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (A001248 (n + 1)).toNat

end

end A343116.P1948104219774282995

/-! ## A343116.P14646718573559060995

`p?[ceil(2/acot(n))]*A060305(n+1)`
-/

namespace A343116.P14646718573559060995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A060305 (n + 1)

end

end A343116.P14646718573559060995

/-! ## A343116.P7604156848100688971

`A237836(Δ[A007504(n)])`
-/

namespace A343116.P7604156848100688971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237836 (f1 (n + 1) - f1 n).toNat

end

end A343116.P7604156848100688971

/-! ## A343116.P2205994937128919512

`A237836(comp[A282462(n)])`
-/

namespace A343116.P2205994937128919512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282462 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237836 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A343116.P2205994937128919512

/-! ## A343116.P9086676338689972948

`A237836(A000040(n+1))`
-/

namespace A343116.P9086676338689972948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237836 (A000040 (n + 1)).toNat

end

end A343116.P9086676338689972948

/-!
# A343117: a(n) is the absolute difference between the Pisano periods of prime(n)^2 and prime(n).

The programs for A343117, there is no canonical definition to state claims against.
-/

/-! ## A343117.P17358613674002383695

`A343116(n+1)-A060305(n+1)`
-/

namespace A343117.P17358613674002383695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343116 (n + 1) - A060305 (n + 1)

end

end A343117.P17358613674002383695

/-! ## A343117.P10087569069976278043

`A001175(A001248(n+1))-A001175(A000040(n+1))`
-/

namespace A343117.P10087569069976278043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (A001248 (n + 1)).toNat - A001175 (A000040 (n + 1)).toNat

end

end A343117.P10087569069976278043

/-! ## A343117.P6774421089842399937

`A006093(n+1)*A060305(n+1)`
-/

namespace A343117.P6774421089842399937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) * A060305 (n + 1)

end

end A343117.P6774421089842399937

/-! ## A343117.P10754551617255362947

`record[A000010(n+1)]*A060305(n+1)`
-/

namespace A343117.P10754551617255362947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A060305 (n + 1)

end

end A343117.P10754551617255362947

/-! ## A343117.P17994028420788090546

`record[A002322(n+1)]*A060305(n+1)`
-/

namespace A343117.P17994028420788090546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A060305 (n + 1)

end

end A343117.P17994028420788090546

/-!
# A343118: Length of the longest sequence of equidistant primes among the first n primes.

The programs for A343118, the canonical program `A343118.P17169934153863060718` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343118 has offset 2).

The definition of A343118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343118.P7374618703076963032

`∑[char[7*(a(n-1)-a(n-2))]]+2` with `a(0)=8, a(1)=2, a(2)=7`
-/

namespace A343118.P7374618703076963032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [8, 2, 7] fun n f2 =>
  7 * (f2 (n - 1) - f2 (n - 2))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A343118.P7374618703076963032

namespace A343118

/-- `∑[char[7*(a(n-1)-a(n-2))]]+2` -/
def P7374618703076963032.Spec : Prop :=
  ∀ n, (P7374618703076963032.a n : ℤ) = A343118 (n + 2)

end A343118

/-! ## A343118.P16852238539645006845

`comp[A000045(n)*A198715(n+1)]-n`
-/

namespace A343118.P16852238539645006845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A198715 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A343118.P16852238539645006845

namespace A343118

/-- `comp[A000045(n)*A198715(n+1)]-n` -/
def P16852238539645006845.Spec : Prop :=
  ∀ n, P16852238539645006845.a n = A343118 (n + 2)

end A343118

/-! ## A343118.P13223745651987804156

`∑[char[A030824(n+1)+A004016(n)]]+2`
-/

namespace A343118.P13223745651987804156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030824 (n + 1) + A004016 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A343118.P13223745651987804156

namespace A343118

/-- `∑[char[A030824(n+1)+A004016(n)]]+2` -/
def P13223745651987804156.Spec : Prop :=
  ∀ n, (P13223745651987804156.a n : ℤ) = A343118 (n + 2)

end A343118

/-! ## A343118.P11573433299481663174

`comp[∑[A114836(n+1)%A000712(n)]]-n+1`
-/

namespace A343118.P11573433299481663174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114836 (n + 1)) (A000712 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 1

end

end A343118.P11573433299481663174

namespace A343118

/-- `comp[∑[A114836(n+1)%A000712(n)]]-n+1` -/
def P11573433299481663174.Spec : Prop :=
  ∀ n, P11573433299481663174.a n = A343118 (n + 2)

end A343118

/-! ## A343118.P16066438140612621608

`comp[round((A263439(n+1)-A246173(n+3))²/12)]-n`
-/

namespace A343118.P16066438140612621608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A263439 (n + 1) - A246173 (n + 3)) ^ 2 : ℚ) / 12)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A343118.P16066438140612621608

namespace A343118

/-- `comp[round((A263439(n+1)-A246173(n+3))²/12)]-n` -/
def P16066438140612621608.Spec : Prop :=
  ∀ n, P16066438140612621608.a n = A343118 (n + 2)

end A343118

/-! ## A343118.P17169934153863060718

`A110592(a(n-1)+1)+A110592(A198270(n))` with `a(0)=2`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A343118

/-- `A110592(a(n-1)+1)+A110592(A198270(n))` -/
def P17169934153863060718.Spec : Prop :=
  ∀ n, P17169934153863060718.a n = A343118 (n + 2)

theorem P17169934153863060718.correct : P17169934153863060718.Spec := by
  intro n
  simp only [A343118, Nat.add_sub_cancel]

end A343118

/-! ## A343118.P10721800461998868510

`comp[A008000(A051953(n+1))*A036649(n+2)]-n`
-/

namespace A343118.P10721800461998868510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 (A051953 (n + 1)).toNat * A036649 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A343118.P10721800461998868510

namespace A343118

/-- `comp[A008000(A051953(n+1))*A036649(n+2)]-n` -/
def P10721800461998868510.Spec : Prop :=
  ∀ n, P10721800461998868510.a n = A343118 (n + 2)

end A343118

/-! ## A343118.P2827687178686263703

`A110592(A061420(n))+A110592(A198270(n))`
-/

namespace A343118.P2827687178686263703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 (A061420 n).toNat + A110592 (A198270 n).toNat

end

end A343118.P2827687178686263703

namespace A343118

/-- `A110592(A061420(n))+A110592(A198270(n))` -/
def P2827687178686263703.Spec : Prop :=
  ∀ n, P2827687178686263703.a n = A343118 (n + 2)

end A343118

/-! ## A343118.P12303586138114469604

`A130260(A095289(n+2))`
-/

namespace A343118.P12303586138114469604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130260 (A095289 (n + 2)).toNat

end

end A343118.P12303586138114469604

namespace A343118

/-- `A130260(A095289(n+2))` -/
def P12303586138114469604.Spec : Prop :=
  ∀ n, P12303586138114469604.a n = A343118 (n + 2)

end A343118

/-! ## A343118.P12778445903466614887

`A072643(record[A169931(n)])`
-/

namespace A343118.P12778445903466614887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A343118.P12778445903466614887

namespace A343118

/-- `A072643(record[A169931(n)])` -/
def P12778445903466614887.Spec : Prop :=
  ∀ n, P12778445903466614887.a n = A343118 (n + 2)

end A343118

/-!
# A343119: 

The programs for A343119, there is no canonical definition to state claims against.
-/

/-! ## A343119.P7478806237369139389

`A032020(A002110(n))`
-/

namespace A343119.P7478806237369139389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 (A002110 n).toNat

end

end A343119.P7478806237369139389

/-!
# A343122: Consider the longest arithmetic progressions of primes from among the first n primes; a(n) is the smallest constant difference of these arithmetic progressions.

The programs for A343122, there is no canonical definition to state claims against.
-/

/-! ## A343122.P15002072701707428079

`∏{p}[A127321(2*n+1)!, #]`
-/

namespace A343122.P15002072701707428079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A127321 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A343122.P15002072701707428079

/-! ## A343122.P2329053666862577349

`A300951(round(log2(∑[n+3]+1)))`
-/

namespace A343122.P2329053666862577349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300951 (SequenceMachineLib.roundAway (Real.logb 2 ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℝ))).toNat

end

end A343122.P2329053666862577349

/-! ## A343122.P16871950141513972396

`A260188(A066508(n+1))`
-/

namespace A343122.P16871950141513972396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260188 (A066508 (n + 1)).toNat

end

end A343122.P16871950141513972396

/-! ## A343122.P5068412513545630132

`A104588(A081063(n+2))`
-/

namespace A343122.P5068412513545630132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104588 (A081063 (n + 2)).toNat

end

end A343122.P5068412513545630132

/-! ## A343122.P11413355826849935934

`A034386(A127321(Δ[n²]))`
-/

namespace A343122.P11413355826849935934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A127321 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A343122.P11413355826849935934

/-! ## A343122.P16650848280532190922

`A034386(ceil(log(A045540(n+1))))`
-/

namespace A343122.P16650848280532190922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 ⌈Real.log (A045540 (n + 1) : ℝ)⌉.toNat

end

end A343122.P16650848280532190922

/-! ## A343122.P1536334803221930958

`A034386(∑[char[A227213(n+1)]])`
-/

namespace A343122.P1536334803221930958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227213 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A343122.P1536334803221930958

/-! ## A343122.P15385792877951685999

`A034386(ceil(log2(A244225(n+1)+1)))`
-/

namespace A343122.P15385792877951685999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 ⌈Real.logb 2 (A244225 (n + 1) + 1 : ℝ)⌉.toNat

end

end A343122.P15385792877951685999

/-! ## A343122.P8601171108593610403

`lcm(a(n-1), A014963(A001222(3*n+7)))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A343122.P8601171108593610403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A014963 (A001222 (3 * n + 7)).toNat)

end

end A343122.P8601171108593610403

/-! ## A343122.P3963387513896452402

`A260188(A232748(n+2))`
-/

namespace A343122.P3963387513896452402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260188 (A232748 (n + 2)).toNat

end

end A343122.P3963387513896452402

/-!
# A343123: Primes p such that the sum of A001414(k) for k strictly between p and the following prime is a proper prime power (a term of A246547).

The programs for A343123, there is no canonical definition to state claims against.
-/

/-! ## A343123.P1234846778447105790

`A006530(9^(n+1)-4^n+1)`
-/

namespace A343123.P1234846778447105790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((9 ^ (n + 1) : ℤ) - (4 ^ n : ℤ) + 1).toNat

end

end A343123.P1234846778447105790

/-!
# A343124: Total number of partitions of k*n into 3 parts for k = 1..n.

The programs for A343124, there is no canonical definition to state claims against.
-/

/-! ## A343124.P3488426669048207079

`∑[∑[A350178(A027171(n))]]`
-/

namespace A343124.P3488426669048207079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350178 (A027171 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343124.P3488426669048207079

/-! ## A343124.P8713465612276986415

`A352520(A188491(n))+A000537(n)`
-/

namespace A343124.P8713465612276986415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352520 (A188491 n).toNat + A000537 n

end

end A343124.P8713465612276986415

/-!
# A343125: Triangle T(k, n) = (n+3)*(k-n) - 4, k >= 2, 1 <= n <= k-1, read by rows.

The programs for A343125, the canonical program `A343125.P13911590155244152463` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343125 has offset 2).

The definition of A343125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343125.P13911590155244152463

`A209304(n+1)-A176270(n)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A343125

/-- `A209304(n+1)-A176270(n)` -/
def P13911590155244152463.Spec : Prop :=
  ∀ n, P13911590155244152463.a n = A343125 (n + 2)

theorem P13911590155244152463.correct : P13911590155244152463.Spec := by
  intro n
  simp only [A343125, Nat.add_sub_cancel]

end A343125

/-! ## A343125.P7025556664147985173

`A141432(n+1)+A111650(n+1)`
-/

namespace A343125.P7025556664147985173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141432 (n + 1) + A111650 (n + 1)

end

end A343125.P7025556664147985173

namespace A343125

/-- `A141432(n+1)+A111650(n+1)` -/
def P7025556664147985173.Spec : Prop :=
  ∀ n, P7025556664147985173.a n = A343125 (n + 2)

end A343125

/-! ## A343125.P5772516670405367074

`A209304(n+1)+A004247(n)-1`
-/

namespace A343125.P5772516670405367074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209304 (n + 1) + (A004247 n - 1)

end

end A343125.P5772516670405367074

namespace A343125

/-- `A209304(n+1)+A004247(n)-1` -/
def P5772516670405367074.Spec : Prop :=
  ∀ n, P5772516670405367074.a n = A343125 (n + 2)

end A343125

/-! ## A343125.P14207792997955952902

`A095833(n+1)-(1-A025581(n))²`
-/

namespace A343125.P14207792997955952902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095833 (n + 1) - (1 - A025581 n) ^ 2

end

end A343125.P14207792997955952902

namespace A343125

/-- `A095833(n+1)-(1-A025581(n))²` -/
def P14207792997955952902.Spec : Prop :=
  ∀ n, P14207792997955952902.a n = A343125 (n + 2)

end A343125

/-! ## A343125.P8522979531807231573

`A095833(n+1)-(2-A004736(n+1))²`
-/

namespace A343125.P8522979531807231573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095833 (n + 1) - (2 - A004736 (n + 1)) ^ 2

end

end A343125.P8522979531807231573

namespace A343125

/-- `A095833(n+1)-(2-A004736(n+1))²` -/
def P8522979531807231573.Spec : Prop :=
  ∀ n, P8522979531807231573.a n = A343125 (n + 2)

end A343125

/-! ## A343125.P2986630622453349066

`A059036(n)+A008585(A025581(n))`
-/

namespace A343125.P2986630622453349066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 n + A008585 (A025581 n).toNat

end

end A343125.P2986630622453349066

namespace A343125

/-- `A059036(n)+A008585(A025581(n))` -/
def P2986630622453349066.Spec : Prop :=
  ∀ n, P2986630622453349066.a n = A343125 (n + 2)

end A343125

/-! ## A343125.P17203876566024332517

`A002262(n)+(A002262(n)+4)*A025581(n)`
-/

namespace A343125.P17203876566024332517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (A002262 n + 4) * A025581 n

end

end A343125.P17203876566024332517

namespace A343125

/-- `A002262(n)+(A002262(n)+4)*A025581(n)` -/
def P17203876566024332517.Spec : Prop :=
  ∀ n, P17203876566024332517.a n = A343125 (n + 2)

end A343125

/-! ## A343125.P16322460858927412894

`A141432(n+1)+A204022(n+1)+A157454(n+1)`
-/

namespace A343125.P16322460858927412894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141432 (n + 1) + (A204022 (n + 1) + A157454 (n + 1))

end

end A343125.P16322460858927412894

namespace A343125

/-- `A141432(n+1)+A204022(n+1)+A157454(n+1)` -/
def P16322460858927412894.Spec : Prop :=
  ∀ n, P16322460858927412894.a n = A343125 (n + 2)

end A343125

/-! ## A343125.P3685832934355995135

`∑{d}[A036561(n), A081729(#)²]`
-/

namespace A343125.P3685832934355995135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A081729 d ^ 2

end

end A343125.P3685832934355995135

namespace A343125

/-- `∑{d}[A036561(n), A081729(#)²]` -/
def P3685832934355995135.Spec : Prop :=
  ∀ n, P3685832934355995135.a n = A343125 (n + 2)

end A343125

/-!
# A343126: Numbers of the form x + y + z such that (x+y) | x*y, (y+z) | y*z, and (y+z) | x*z where x,y,z are positive integers.

The programs for A343126, there is no canonical definition to state claims against.
-/

/-! ## A343126.P11040034230733810226

`eq[A017847(n), A145326(n+1)]`
-/

namespace A343126.P11040034230733810226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017847 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343126.P11040034230733810226

/-! ## A343126.P11839235143792604132

`∩[A208770(n+1), A346129(n+1)]`
-/

namespace A343126.P11839235143792604132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343126.P11839235143792604132

/-! ## A343126.P12213803618560104247

`∩[A346129(n+1), A219095(n+2)]`
-/

namespace A343126.P12213803618560104247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219095 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343126.P12213803618560104247

/-! ## A343126.P4384193230986827485

`lt[A146099(A240063(n)), A331927(n)]`
-/

namespace A343126.P4384193230986827485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146099 (A240063 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331927 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343126.P4384193230986827485

/-! ## A343126.P18202189299290899367

`eq[A017847(n), A134521(A001227(n+1))]`
-/

namespace A343126.P18202189299290899367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017847 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134521 (A001227 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343126.P18202189299290899367

/-!
# A343127: Number of solutions to n = x + y + z in positive integers x,y,z such that (x+y) does not divide any of x*y, y*z, or x*z.

The programs for A343127, there is no canonical definition to state claims against.
-/

/-! ## A343127.P10165961355032355599

`A123087(eq[A077342(n+1), A102441(n+1)])`
-/

namespace A343127.P10165961355032355599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123087 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A343127.P10165961355032355599

/-!
# A343129: Numbers that are palindromes in base 3/2.

The programs for A343129, there is no canonical definition to state claims against.
-/

/-! ## A343129.P16775173832406102229

`A247163(record[Δ[A018338(n+1)]])`
-/

namespace A343129.P16775173832406102229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018338 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247163 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A343129.P16775173832406102229

/-! ## A343129.P10781898426608909395

`A171611(or(A000124(n), A070428(n)))`
-/

namespace A343129.P10781898426608909395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171611 (Int.lor (A000124 n) (A070428 n)).toNat

end

end A343129.P10781898426608909395

/-!
# A343130: Number of permutations tau of {1,...,n} with tau(1) = 1 and tau(2) = 2 such that Product_{k=1..n} k^tau(k) = (p-1)^3 for some prime p.

The programs for A343130, there is no canonical definition to state claims against.
-/

/-! ## A343130.P9094893456945256006

`Δ[Δ[A265538(A137360(n))]]`
-/

namespace A343130.P9094893456945256006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265538 (A137360 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343130.P9094893456945256006

/-! ## A343130.P4232563717976547616

`A003988(A065605(n))*A059291(n)`
-/

namespace A343130.P4232563717976547616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003988 (A065605 n).toNat * A059291 n

end

end A343130.P4232563717976547616

/-! ## A343130.P14515889041558051974

`A003987(A336417(n))%A006966(n)`
-/

namespace A343130.P14515889041558051974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003987 (A336417 n).toNat) (A006966 n)

end

end A343130.P14515889041558051974

/-! ## A343130.P15546260223923662718

`A106228(n)%A261104(A328433(n))`
-/

namespace A343130.P15546260223923662718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106228 n) (A261104 (A328433 n).toNat)

end

end A343130.P15546260223923662718

/-! ## A343130.P2214490773935374366

`A324496(A000108(n))%A005940(3*n+2)`
-/

namespace A343130.P2214490773935374366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324496 (A000108 n).toNat) (A005940 (3 * n + 2))

end

end A343130.P2214490773935374366

/-!
# A343131: For m >= 1, the m-digit number k = d_m||...||d_2||d_1 is a term if it is divisible by f_m(k) that is the sum of the m elementary symmetric polynomials in m variables e_i(k): f_m(k) = Sum_{i=1..m} e_i(d_1, ..., d_m).

The programs for A343131, there is no canonical definition to state claims against.
-/

/-! ## A343131.P13758612180828134458

`lt[lcm(n, ∏{digits}[n, #+1]-1), 2*n]`
-/

namespace A343131.P13758612180828134458
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x + 1).prod : ℕ) : ℤ) - 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A343131.P13758612180828134458

/-! ## A343131.P7811147661343670610

`lt[(n+1)%A061486(n+1), 1]+1`
-/

namespace A343131.P7811147661343670610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A061486 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A343131.P7811147661343670610

/-! ## A343131.P9368826138464915356

`∑[∏{e}[A123023(n), #²]]`
-/

namespace A343131.P9368826138464915356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123023 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343131.P9368826138464915356

/-! ## A343131.P730504347225219040

`∑[A076840(C(n, 9)+1)²]`
-/

namespace A343131.P730504347225219040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076840 (Nat.choose n 9 + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343131.P730504347225219040

/-! ## A343131.P11024594056713192632

`∪[A119246(A001222(2^(n+2))), A038366(n+1)]`
-/

namespace A343131.P11024594056713192632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119246 (A001222 (2 ^ (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343131.P11024594056713192632

/-!
# A343132: a(n) is the quotient obtained when integer A343131(n) = k is divided by A061486(k).

The programs for A343132, there is no canonical definition to state claims against.
-/

/-! ## A343132.P14328928230082181786

`A343131(n+1)/A061486(A343131(n+1))`
-/

namespace A343132.P14328928230082181786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343131 (n + 1) : ℚ) / (A061486 (A343131 (n + 1)).toNat : ℚ)

end

end A343132.P14328928230082181786

/-!
# A343134: Positions of records in A188169.

The programs for A343134, there is no canonical definition to state claims against.
-/

/-! ## A343134.P15671383457652675482

`filter[A343104(n+1), A355823(#)]`
-/

namespace A343134.P15671383457652675482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A343134.P15671383457652675482

/-! ## A343134.P11090184660247379243

`filter[A343104(n+1), A355825(#)]`
-/

namespace A343134.P11090184660247379243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355825 (f1 j).toNat = 1) n)

end

end A343134.P11090184660247379243

/-! ## A343134.P2362021592528447627

`record[gcd(A282212(n+1), A343104(n+1))]`
-/

namespace A343134.P2362021592528447627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A282212 (n + 1)) (A343104 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343134.P2362021592528447627

/-! ## A343134.P9973344701125909827

`A343104(A250666(n)*A343110(n+1))`
-/

namespace A343134.P9973344701125909827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343104 (A250666 n * A343110 (n + 1)).toNat

end

end A343134.P9973344701125909827

/-! ## A343134.P6221009004029630567

`A343104(A343110(n+1)^A110656(n))`
-/

namespace A343134.P6221009004029630567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343104 (SequenceMachineLib.roundAway ((A343110 (n + 1) : ℚ) ^ (A110656 n : ℤ))).toNat

end

end A343134.P6221009004029630567

/-!
# A343135: Positions of records in A188170.

The programs for A343135, there is no canonical definition to state claims against.
-/

/-! ## A343135.P5870702691676844741

`A343105(record[A002325(n+1)-A002325(n+2)])`
-/

namespace A343135.P5870702691676844741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (n + 1) - A002325 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343105 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A343135.P5870702691676844741

/-! ## A343135.P7525955986846980268

`A343105(record[A002325(n+1)%A006322(n+1)])`
-/

namespace A343135.P7525955986846980268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002325 (n + 1)) (A006322 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343105 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A343135.P7525955986846980268

/-! ## A343135.P11428905092918995685

`A343105(lt[A026741(n), 7])`
-/

namespace A343135.P11428905092918995685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343105 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A343135.P11428905092918995685

/-! ## A343135.P17539715827632211778

`record[A343105(n)%A343116(3*(n+1))]`
-/

namespace A343135.P17539715827632211778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343105 n) (A343116 (3 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343135.P17539715827632211778

/-! ## A343135.P16216945610423116420

`A343105(lt[A326447(∑{d}[n+1, #]), n+1])`
-/

namespace A343135.P16216945610423116420
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326447 (∑ d ∈ Nat.divisors (f2 n), d)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343105 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n)

end

end A343135.P16216945610423116420

/-!
# A343136: Positions of records in A188171.

The programs for A343136, there is no canonical definition to state claims against.
-/

/-! ## A343136.P11071929682976127840

`A343106(lt[A046778(n), A237271(3*(n+1))])`
-/

namespace A343136.P11071929682976127840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046778 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343106 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A343136.P11071929682976127840

/-! ## A343136.P5389064138717362460

`A343106(lt[A188226(n), A255211(3*n+1)])`
-/

namespace A343136.P5389064138717362460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188226 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255211 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343106 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A343136.P5389064138717362460

/-! ## A343136.P9273080657022928145

`A343106(lt[A343106(n), A255211(3*n+1)])`
-/

namespace A343136.P9273080657022928145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343106 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255211 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343106 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A343136.P9273080657022928145

/-! ## A343136.P9867866249345797043

`A343106(lt[A000081(n), A075101(n+1)])`
-/

namespace A343136.P9867866249345797043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343106 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A343136.P9867866249345797043

/-! ## A343136.P14510130788515721903

`A343106(lt[A343106(n), A078946(n+1)])`
-/

namespace A343136.P14510130788515721903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343106 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343106 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A343136.P14510130788515721903

/-!
# A343137: Positions of records in A188172.

The programs for A343137, there is no canonical definition to state claims against.
-/

/-! ## A343137.P5607966742905165811

`A188226(lt[A188226(n), A188183(2*(n+1))])`
-/

namespace A343137.P5607966742905165811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188226 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188183 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188226 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A343137.P5607966742905165811

/-! ## A343137.P7508652381273975143

`A188226(lt[A188226(n), A255211(3*n+1)])`
-/

namespace A343137.P7508652381273975143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188226 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255211 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188226 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A343137.P7508652381273975143

/-! ## A343137.P1085641993202299230

`A188226(lt[A188226(n), A084661(3*n+4)])`
-/

namespace A343137.P1085641993202299230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188226 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084661 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188226 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A343137.P1085641993202299230

/-! ## A343137.P17037886021259659145

`A188226(lt[22^∑{e}[n+1, #], A119710(n+2)])`
-/

namespace A343137.P17037886021259659145
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119710 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188226 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n)

end

end A343137.P17037886021259659145

/-! ## A343137.P11975467472796283432

`A188226(lt[A188226(n), A045791(n+1)])`
-/

namespace A343137.P11975467472796283432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188226 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188226 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A343137.P11975467472796283432

/-!
# A343138: Array A(k, n) read by descending antidiagonals: A(k, n) = Sum_{m=0..n} F(k, m)^2, where F are the k-generalized Fibonacci numbers A092921.

The programs for A343138, there is no canonical definition to state claims against.
-/

/-! ## A343138.P9564259334916550769

`A227349(A323837(n))-A023531(n)`
-/

namespace A343138.P9564259334916550769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 (A323837 n).toNat - A023531 n

end

end A343138.P9564259334916550769

/-! ## A343138.P6859912563657889697

`A343095(n)%A056160(A078812(n))`
-/

namespace A343138.P6859912563657889697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343095 n) (A056160 (A078812 n).toNat)

end

end A343138.P6859912563657889697

/-! ## A343138.P1139948065688349366

`A227349(A323837(n))%A027467(n)`
-/

namespace A343138.P1139948065688349366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227349 (A323837 n).toNat) (A027467 n)

end

end A343138.P1139948065688349366

/-! ## A343138.P8207168513730691233

`A227349(A323837(n))-Δ[A003056(n)]`
-/

namespace A343138.P8207168513730691233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 (A323837 n).toNat - (f1 (n + 1) - f1 n)

end

end A343138.P8207168513730691233

/-! ## A343138.P16823265227540138156

`A214566(A319075(n))`
-/

namespace A343138.P16823265227540138156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214566 (A319075 n).toNat

end

end A343138.P16823265227540138156

/-!
# A343139: Numbers k that satisfy the condition digitsum(k) = digitsum(pi(k)) where pi is the prime counting function.

The programs for A343139, there is no canonical definition to state claims against.
-/

/-! ## A343139.P8286856534719524198

`A125006(A014486(n)+A004280(2*n+1))`
-/

namespace A343139.P8286856534719524198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125006 (A014486 n + A004280 (2 * n + 1)).toNat

end

end A343139.P8286856534719524198

/-!
# A343141: Numbers k such that k*A001414(k)+1 is the square of a prime.

The programs for A343141, there is no canonical definition to state claims against.
-/

/-! ## A343141.P6955646592607529642

`A372786(2*A134095(n+2))`
-/

namespace A343141.P6955646592607529642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372786 (2 * A134095 (n + 2)).toNat

end

end A343141.P6955646592607529642

/-!
# A343142: a(n) = sqrt(k*A001414(k)+1) for k in A343141.

The programs for A343142, there is no canonical definition to state claims against.
-/

/-! ## A343142.P368151528466717221

`sqrt(A343141(n+1)*A001414(A343141(n+1))+1)`
-/

namespace A343142.P368151528466717221
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A343141 (n + 1) * A001414 (A343141 (n + 1)).toNat + 1 : ℝ)

end

end A343142.P368151528466717221

/-!
# A343144: a(n) is the smallest number m with n divisors such that m + 1 has n + 1 divisors; or 0 if no such number exists.

The programs for A343144, there is no canonical definition to state claims against.
-/

/-! ## A343144.P16830203378483238561

`A285883(n+1)%A364492(A266765(n))`
-/

namespace A343144.P16830203378483238561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285883 (n + 1)) (A364492 (A266765 n).toNat)

end

end A343144.P16830203378483238561

/-!
# A343146: Number of move sequences of length 2n on the "8 Puzzle" which leave the final state unchanged when the empty cell starts in a corner.

The programs for A343146, there is no canonical definition to state claims against.
-/

/-! ## A343146.P1184525508263508368

`A027282(n)+A014405(A006125(n))`
-/

namespace A343146.P1184525508263508368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027282 n + A014405 (A006125 n).toNat

end

end A343146.P1184525508263508368

/-! ## A343146.P16218793491925746805

`A354662(n)+A325102(A000085(n))`
-/

namespace A343146.P16218793491925746805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354662 n + A325102 (A000085 n).toNat

end

end A343146.P16218793491925746805

/-!
# A343147: The number of partitions of the n-th primorial into distinct parts.

The programs for A343147, there is no canonical definition to state claims against.
-/

/-! ## A343147.P14270164075742841142

`A000009(A002110(n))`
-/

namespace A343147.P14270164075742841142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A002110 n).toNat

end

end A343147.P14270164075742841142

/-!
# A343148: Numbers k such that A083266(k) is prime.

The programs for A343148, there is no canonical definition to state claims against.
-/

/-! ## A343148.P8675456786478111790

`eq[2, A000005(A083266(n+1))]+1`
-/

namespace A343148.P8675456786478111790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A083266 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A343148.P8675456786478111790

/-! ## A343148.P1960024660981880872

`record[A181440(n+1)/A173455(A083266(n+1))]`
-/

namespace A343148.P1960024660981880872
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181440 (n + 1) : ℚ) / (A173455 (A083266 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343148.P1960024660981880872

/-! ## A343148.P16092648010110478979

`eq[A023972(n+1), A117209(n)]`
-/

namespace A343148.P16092648010110478979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117209 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343148.P16092648010110478979

/-! ## A343148.P3295722227545392684

`eq[A058305(A000523(n+1)), A117209(n)]`
-/

namespace A343148.P3295722227545392684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (A000523 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117209 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343148.P3295722227545392684

/-! ## A343148.P7098554588523239296

`eq[A185133(A346697(2*(n+2))), A391981(2*(n+3))]`
-/

namespace A343148.P7098554588523239296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185133 (A346697 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391981 (2 * (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343148.P7098554588523239296

/-!
# A343149: Floor-powerfree numbers: positive integers not expressible as a (nontrivially) nested floor function using the same positive real slope throughout the nesting.

The programs for A343149, there is no canonical definition to state claims against.
-/

/-! ## A343149.P15500774091511012236

`eq[A008612(n), A107261(A059537(n+1))]`
-/

namespace A343149.P15500774091511012236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107261 (A059537 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343149.P15500774091511012236

/-!
# A343150: Reverse the order of all but the most significant bits in the minimal Fibonacci expansion of n.

The programs for A343150, there is no canonical definition to state claims against.
-/

/-! ## A343150.P6808828969228470561

`A257962(∑[Δ[floor(ϕ*(n+1))]²+4]+1)`
-/

namespace A343150.P6808828969228470561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2 + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257962 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A343150.P6808828969228470561

/-! ## A343150.P1437540926710029928

`A338698(n+1)%A058794(A002411(n))`
-/

namespace A343150.P1437540926710029928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338698 (n + 1)) (A058794 (A002411 n).toNat)

end

end A343150.P1437540926710029928

/-! ## A343150.P1166779843970383807

`A338698(n+1)+A185144(A198317(n+1))`
-/

namespace A343150.P1166779843970383807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338698 (n + 1) + A185144 (A198317 (n + 1)).toNat

end

end A343150.P1166779843970383807

/-! ## A343150.P9406857740558163379

`lcm(A008683(A089174(n+1)), A338698(n+1))`
-/

namespace A343150.P9406857740558163379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A089174 (n + 1)).toNat) (A338698 (n + 1))

end

end A343150.P9406857740558163379

/-! ## A343150.P16708684917097784088

`A338698(A004526(2*(n+1)))%A002982(n+1)`
-/

namespace A343150.P16708684917097784088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338698 (A004526 (2 * (n + 1))).toNat) (A002982 (n + 1))

end

end A343150.P16708684917097784088

/-!
# A343151: Numbers k such that 1+A083266(k) is prime.

The programs for A343151, there is no canonical definition to state claims against.
-/

/-! ## A343151.P14884312605174781817

`eq[1, A001222(A083266(n+1)+1)]+1`
-/

namespace A343151.P14884312605174781817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A083266 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A343151.P14884312605174781817

/-! ## A343151.P4260912413827446173

`eq[2, A000005(A083266(n+1)+1)]+1`
-/

namespace A343151.P4260912413827446173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A083266 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A343151.P4260912413827446173

/-! ## A343151.P4672775407405432207

`eq[2, A316437(A083266(n+1)+1)]+1`
-/

namespace A343151.P4672775407405432207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316437 (A083266 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A343151.P4672775407405432207

/-! ## A343151.P9323282785971842480

`eq[A083266(n+1), A173557(A083266(n+1)+1)]+1`
-/

namespace A343151.P9323282785971842480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (A083266 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A343151.P9323282785971842480

/-!
# A343152: Reverse the order of all but the most significant bits in the maximal Fibonacci expansion of n.

The programs for A343152, there is no canonical definition to state claims against.
-/

/-! ## A343152.P1256694129728499793

`A344682(n)+1`
-/

namespace A343152.P1256694129728499793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344682 n + 1

end

end A343152.P1256694129728499793

/-! ## A343152.P5136963451273209167

`A344962(n)+a(floor(acot(n)))` with `a(0)=1`
-/

namespace A343152.P5136963451273209167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A344962 n + a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A343152.P5136963451273209167

/-! ## A343152.P10029336430712300598

`A344962(abs(1-n)+1)%Δ[n²]+1`
-/

namespace A343152.P10029336430712300598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344962 (|1 - (n : ℤ)| + 1).toNat) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + 1

end

end A343152.P10029336430712300598

/-! ## A343152.P13447049008532519705

`A232560(A385818(n+1))`
-/

namespace A343152.P13447049008532519705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232560 (A385818 (n + 1)).toNat

end

end A343152.P13447049008532519705

/-! ## A343152.P15711598987305113555

`A008619(2*A344682(n))`
-/

namespace A343152.P15711598987305113555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A344682 n).toNat

end

end A343152.P15711598987305113555

/-! ## A343152.P2723076486451531449

`A027656(2*A344682(n))`
-/

namespace A343152.P2723076486451531449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A344682 n).toNat

end

end A343152.P2723076486451531449

/-! ## A343152.P13195715920288571913

`A028242(2*A344682(n))`
-/

namespace A343152.P13195715920288571913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A344682 n).toNat

end

end A343152.P13195715920288571913

/-! ## A343152.P11960786076093043333

`A029579(2*A344682(n))`
-/

namespace A343152.P11960786076093043333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A344682 n).toNat

end

end A343152.P11960786076093043333

/-! ## A343152.P139520399496212985

`A052938(2*A344682(n))`
-/

namespace A343152.P139520399496212985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A344682 n).toNat

end

end A343152.P139520399496212985

/-! ## A343152.P14926628891156396955

`A080513(2*A344682(n))`
-/

namespace A343152.P14926628891156396955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * A344682 n).toNat

end

end A343152.P14926628891156396955

/-!
# A343156: Starting at n, a(n) = number of iterations of the map x -> A084317(x) (concatenate distinct prime factors of x) required to reach a prime, or -1 if no prime is ever reached.

The programs for A343156, there is no canonical definition to state claims against.
-/

/-! ## A343156.P15307155393574853632

`A097866(A032741(Δ[A089819(n+1)]))`
-/

namespace A343156.P15307155393574853632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097866 (A032741 (f1 (n + 1) - f1 n).toNat).toNat

end

end A343156.P15307155393574853632

/-! ## A343156.P15170212690869500857

`A138010(A054602(n+1))%A138009(n+1)`
-/

namespace A343156.P15170212690869500857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138010 (A054602 (n + 1)).toNat) (A138009 (n + 1))

end

end A343156.P15170212690869500857

/-! ## A343156.P15798266693061445514

`A067029(A027620(n))%A316436(n+2)`
-/

namespace A343156.P15798266693061445514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067029 (A027620 n).toNat) (A316436 (n + 2))

end

end A343156.P15798266693061445514

/-! ## A343156.P10388748123677623601

`A260732(and(A178488(n+1), A306209(n)))`
-/

namespace A343156.P10388748123677623601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260732 (Int.land (A178488 (n + 1)) (A306209 n)).toNat

end

end A343156.P10388748123677623601

/-! ## A343156.P13217356272313534254

`A002487(A323365(n+2)^A001511(n+5))`
-/

namespace A343156.P13217356272313534254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.roundAway ((A323365 (n + 2) : ℚ) ^ (A001511 (n + 5) : ℤ))).toNat

end

end A343156.P13217356272313534254

/-!
# A343159: (0,1)-array describing two-dimensional paper-folding construction of A342759, read by upward antidiagonals.

The programs for A343159, there is no canonical definition to state claims against.
-/

/-! ## A343159.P7682988319886659053

`A039963(A246200(n)+A077957(n))`
-/

namespace A343159.P7682988319886659053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (A246200 n + A077957 n).toNat

end

end A343159.P7682988319886659053

/-! ## A343159.P3466516529376431746

`A039963(xor(A077957(n), A246200(n)))`
-/

namespace A343159.P3466516529376431746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (Int.xor (A077957 n) (A246200 n)).toNat

end

end A343159.P3466516529376431746

/-! ## A343159.P11316503773754664691

`A011655(A321019(2*(n+1))-A093024(n+1))`
-/

namespace A343159.P11316503773754664691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A321019 (2 * (n + 1)) - A093024 (n + 1)).toNat

end

end A343159.P11316503773754664691

/-! ## A343159.P611433432859202545

`A010060(or(A004698(n+1), A127236(3*(n+1))))`
-/

namespace A343159.P611433432859202545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Int.lor (A004698 (n + 1)) (A127236 (3 * (n + 1)))).toNat

end

end A343159.P611433432859202545

/-! ## A343159.P381054540929348173

`A266623(A342643(n))`
-/

namespace A343159.P381054540929348173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266623 (A342643 n).toNat

end

end A343159.P381054540929348173

/-!
# A343160: a(n) is the product of the decimal digits of A343403(n).

The programs for A343160, there is no canonical definition to state claims against.
-/

/-! ## A343160.P18297993687536891723

`A007954(A343403(n+1))`
-/

namespace A343160.P18297993687536891723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A343403 (n + 1)).toNat

end

end A343160.P18297993687536891723

/-! ## A343160.P2085550700719546422

`A051801(A343403(n+1))-A000007(n)`
-/

namespace A343160.P2085550700719546422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A343403 (n + 1)).toNat - A000007 n

end

end A343160.P2085550700719546422

/-! ## A343160.P8303800180751588889

`A051801(A343403(n+1))%A008259(n)`
-/

namespace A343160.P8303800180751588889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051801 (A343403 (n + 1)).toNat) (A008259 n)

end

end A343160.P8303800180751588889

/-! ## A343160.P11009989808412455998

`A051801(A343403(n+1))-val(A019320(n), 2)`
-/

namespace A343160.P11009989808412455998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A343403 (n + 1)).toNat - (SequenceMachineLib.valuation (A019320 n).toNat 2 : ℤ)

end

end A343160.P11009989808412455998

/-! ## A343160.P14006357997298342211

`A051801(A343403(n+1))-C(2, A045944(n))`
-/

namespace A343160.P14006357997298342211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A343403 (n + 1)).toNat - (Nat.choose 2 (A045944 n).toNat : ℤ)

end

end A343160.P14006357997298342211

/-! ## A343160.P5320660166902309340

`A051801(A343403(n+1))-C(n, A365929(3*n))`
-/

namespace A343160.P5320660166902309340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A343403 (n + 1)).toNat - (Nat.choose n (A365929 (3 * n)).toNat : ℤ)

end

end A343160.P5320660166902309340

/-!
# A343161: Number of planar distributive lattices with n nodes.

The programs for A343161, there is no canonical definition to state claims against.
-/

/-! ## A343161.P18443318948685581133

`or(A003056(A019497(n)), A045830(n))`
-/

namespace A343161.P18443318948685581133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003056 (A019497 n).toNat) (A045830 n)

end

end A343161.P18443318948685581133

/-! ## A343161.P1803447165742934605

`A003056(A307789(n)+A002863(n+1))`
-/

namespace A343161.P1803447165742934605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A307789 n + A002863 (n + 1)).toNat

end

end A343161.P1803447165742934605

/-! ## A343161.P2267679448726035630

`A122156(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A343161.P2267679448726035630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A122156 (a (n - 1) + a (n - 2)).toNat

end

end A343161.P2267679448726035630

/-! ## A343161.P6737715639363499541

`A158037(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A343161.P6737715639363499541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A158037 (a (n - 1) + a (n - 2)).toNat

end

end A343161.P6737715639363499541

/-! ## A343161.P7496084302987430069

`A089646(A018058(n))`
-/

namespace A343161.P7496084302987430069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089646 (A018058 n).toNat

end

end A343161.P7496084302987430069

/-!
# A343162: The number of graphs on n nodes that can be isometrically embedded in a Hamming graph.

The programs for A343162, there is no canonical definition to state claims against.
-/

/-! ## A343162.P13995919252973059553

`or(A000700(n), A261770(A303279(n+1)))`
-/

namespace A343162.P13995919252973059553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000700 n) (A261770 (A303279 (n + 1)).toNat)

end

end A343162.P13995919252973059553

/-! ## A343162.P7786353934172143856

`or(A006928(n+3), A261770(A303279(n+1)))`
-/

namespace A343162.P7786353934172143856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006928 (n + 3)) (A261770 (A303279 (n + 1)).toNat)

end

end A343162.P7786353934172143856

/-! ## A343162.P540411779080622920

`or(A078880(n+3), A261770(A303279(n+1)))`
-/

namespace A343162.P540411779080622920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A078880 (n + 3)) (A261770 (A303279 (n + 1)).toNat)

end

end A343162.P540411779080622920

/-!
# A343164: Column 2 of triangle in A343168.

The programs for A343164, there is no canonical definition to state claims against.
-/

/-! ## A343164.P633259917709416597

`ogf((-1+3x-x^2+4x^3+3x^4+5x^5)/(-1+4x))`
-/

namespace A343164.P633259917709416597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 1, -4, -3, -5] [1, -4] n

end

end A343164.P633259917709416597

/-!
# A343166: Sum of columns 1 and 2 of triangle in A343168.

The programs for A343166, there is no canonical definition to state claims against.
-/

/-! ## A343166.P79610481236506631

`A087844(∑[A347497(n)])`
-/

namespace A343166.P79610481236506631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087844 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A343166.P79610481236506631

/-! ## A343166.P10027335104380868443

`A264749(A002262(n)+A000732(n))`
-/

namespace A343166.P10027335104380868443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A002262 n + A000732 n).toNat

end

end A343166.P10027335104380868443

/-! ## A343166.P3753495378593039222

`A264749(A053120(n)+A000732(n))`
-/

namespace A343166.P3753495378593039222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A053120 n + A000732 n).toNat

end

end A343166.P3753495378593039222

/-! ## A343166.P2359879448739708235

`A264749(A061462(n)+A000732(n))`
-/

namespace A343166.P2359879448739708235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A061462 n + A000732 n).toNat

end

end A343166.P2359879448739708235

/-!
# A343167: Sum of columns 1, 2, and 3 of triangle in A343168.

The programs for A343167, there is no canonical definition to state claims against.
-/

/-! ## A343167.P3121580880443938249

`A267307(ceil(2^(n-1))+floor(n/3))`
-/

namespace A343167.P3121580880443938249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267307 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ + ⌊(n : ℚ) / 3⌋).toNat

end

end A343167.P3121580880443938249

/-! ## A343167.P10201987290125288151

`A244360(round(a(n-2)/(1-2/n)))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A343167.P10201987290125288151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 5] fun n a =>
  A244360 (SequenceMachineLib.roundAway ((a (n - 2) : ℚ) / (1 - 2 / (n : ℚ)))).toNat

end

end A343167.P10201987290125288151

/-! ## A343167.P9654680187553438202

`A094727(A068184(n))`
-/

namespace A343167.P9654680187553438202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (A068184 n).toNat

end

end A343167.P9654680187553438202

/-!
# A343168: Irregular triangle read by rows: T(n,k) (n>=1, 2 <= k <= n for n >= 2) gives number of graphs on n nodes that are isometrically embeddable into the Hamming graph H(n,k).

The programs for A343168, there is no canonical definition to state claims against.
-/

/-! ## A343168.P17554295643670501456

`A233544(A211318(n+1)²+2)`
-/

namespace A343168.P17554295643670501456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233544 (A211318 (n + 1) ^ 2 + 2).toNat

end

end A343168.P17554295643670501456

/-!
# A343172: Least number k such that the sum of the n Moebius function values beginning at k reaches the minimum value -A083544(n).

The programs for A343172, there is no canonical definition to state claims against.
-/

/-! ## A343172.P10362820928248975760

`p?[and(A181160(n+1), A341135(n+6))]`
-/

namespace A343172.P10362820928248975760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A181160 (n + 1)) (A341135 (n + 6))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A343172.P10362820928248975760

/-! ## A343172.P16496007514370438276

`A164918(A033950(n+1)+A000108(n))`
-/

namespace A343172.P16496007514370438276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164918 (A033950 (n + 1) + A000108 n).toNat

end

end A343172.P16496007514370438276

/-!
# A343173: First differences of paper-folding sequence A014577.

The programs for A343173, the canonical program `A343173.P1546018528656102890` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343173 has offset 0).

The definition of A343173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343173.P1546018528656102890

`Δ[gcd(2, floor(n/(xor(n, n+1)+1)))]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A343173

/-- `Δ[gcd(2, floor(n/(xor(n, n+1)+1)))]` -/
def P1546018528656102890.Spec : Prop :=
  ∀ n, P1546018528656102890.a n = A343173 n

theorem P1546018528656102890.correct : P1546018528656102890.Spec := by
  intro n
  simp only [A343173]

end A343173

/-! ## A343173.P16320301137088864637

`Δ[-(floor(n/(xor(n, n+1)+1))%2)]`
-/

namespace A343173.P16320301137088864637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343173.P16320301137088864637

namespace A343173

/-- `Δ[-(floor(n/(xor(n, n+1)+1))%2)]` -/
def P16320301137088864637.Spec : Prop :=
  ∀ n, P16320301137088864637.a n = A343173 n

end A343173

/-! ## A343173.P11832259318752875001

`Δ[(floor(n/(xor(n, n+1)+1))+1)%2]`
-/

namespace A343173.P11832259318752875001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343173.P11832259318752875001

namespace A343173

/-- `Δ[(floor(n/(xor(n, n+1)+1))+1)%2]` -/
def P11832259318752875001.Spec : Prop :=
  ∀ n, P11832259318752875001.a n = A343173 n

end A343173

/-! ## A343173.P6480833027092952070

`Δ[ceil((n+1)/(xor(n, n+1)+1))%2]`
-/

namespace A343173.P6480833027092952070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(n + 1 : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌉ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343173.P6480833027092952070

namespace A343173

/-- `Δ[ceil((n+1)/(xor(n, n+1)+1))%2]` -/
def P6480833027092952070.Spec : Prop :=
  ∀ n, P6480833027092952070.a n = A343173 n

end A343173

/-! ## A343173.P12133655535831213446

`Δ[round((n+1)/(xor(n, n+1)+1))%2]`
-/

namespace A343173.P12133655535831213446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343173.P12133655535831213446

namespace A343173

/-- `Δ[round((n+1)/(xor(n, n+1)+1))%2]` -/
def P12133655535831213446.Spec : Prop :=
  ∀ n, P12133655535831213446.a n = A343173 n

end A343173

/-! ## A343173.P4586919856564936054

`Δ[and(1, floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A343173.P4586919856564936054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343173.P4586919856564936054

namespace A343173

/-- `Δ[and(1, floor(n/(xor(n, n+1)+1))+1)]` -/
def P4586919856564936054.Spec : Prop :=
  ∀ n, P4586919856564936054.a n = A343173 n

end A343173

/-! ## A343173.P8503593981646582790

`Δ[or(floor(n/(xor(n, n+1)+1))+1, -2)]`
-/

namespace A343173.P8503593981646582790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343173.P8503593981646582790

namespace A343173

/-- `Δ[or(floor(n/(xor(n, n+1)+1))+1, -2)]` -/
def P8503593981646582790.Spec : Prop :=
  ∀ n, P8503593981646582790.a n = A343173 n

end A343173

/-! ## A343173.P17708710400425839451

`Δ[(floor(n/and(n+1, -(n+1)))/2+1)%2]`
-/

namespace A343173.P17708710400425839451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((⌊(n : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌋ : ℚ) / 2 + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343173.P17708710400425839451

namespace A343173

/-- `Δ[(floor(n/and(n+1, -(n+1)))/2+1)%2]` -/
def P17708710400425839451.Spec : Prop :=
  ∀ n, P17708710400425839451.a n = A343173 n

end A343173

/-! ## A343173.P5520344037662694093

`Δ[and(1, floor(n/and(n+1, -(n+1)))/2+1)]`
-/

namespace A343173.P5520344037662694093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (SequenceMachineLib.roundAway ((⌊(n : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌋ : ℚ) / 2 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343173.P5520344037662694093

namespace A343173

/-- `Δ[and(1, floor(n/and(n+1, -(n+1)))/2+1)]` -/
def P5520344037662694093.Spec : Prop :=
  ∀ n, P5520344037662694093.a n = A343173 n

end A343173

/-! ## A343173.P14894642218332159403

`Δ[A014577(n)]`
-/

namespace A343173.P14894642218332159403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343173.P14894642218332159403

namespace A343173

/-- `Δ[A014577(n)]` -/
def P14894642218332159403.Spec : Prop :=
  ∀ n, P14894642218332159403.a n = A343173 n

end A343173

/-! ## A343173.P3977229805463722447

`Δ[A014710(n)]`
-/

namespace A343173.P3977229805463722447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343173.P3977229805463722447

namespace A343173

/-- `Δ[A014710(n)]` -/
def P3977229805463722447.Spec : Prop :=
  ∀ n, P3977229805463722447.a n = A343173 n

end A343173

/-! ## A343173.P6011944877419131468

`Δ[-A014707(n)]`
-/

namespace A343173.P6011944877419131468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A014707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343173.P6011944877419131468

namespace A343173

/-- `Δ[-A014707(n)]` -/
def P6011944877419131468.Spec : Prop :=
  ∀ n, P6011944877419131468.a n = A343173 n

end A343173

/-! ## A343173.P17657199418492872157

`Δ[-A014709(n)]`
-/

namespace A343173.P17657199418492872157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A014709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343173.P17657199418492872157

namespace A343173

/-- `Δ[-A014709(n)]` -/
def P17657199418492872157.Spec : Prop :=
  ∀ n, P17657199418492872157.a n = A343173 n

end A343173

/-! ## A343173.P10236773496809550275

`Δ[gcd(2, A025480(n))]`
-/

namespace A343173.P10236773496809550275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A025480 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A343173.P10236773496809550275

namespace A343173

/-- `Δ[gcd(2, A025480(n))]` -/
def P10236773496809550275.Spec : Prop :=
  ∀ n, P10236773496809550275.a n = A343173 n

end A343173

/-! ## A343173.P7857555665869100389

`Δ[A317331(n+1)]-4`
-/

namespace A343173.P7857555665869100389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 4

end

end A343173.P7857555665869100389

namespace A343173

/-- `Δ[A317331(n+1)]-4` -/
def P7857555665869100389.Spec : Prop :=
  ∀ n, P7857555665869100389.a n = A343173 n

end A343173

/-! ## A343173.P18217117046335921780

`Δ[A317335(n+1)/3]`
-/

namespace A343173.P18217117046335921780
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317335 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343173.P18217117046335921780

namespace A343173

/-- `Δ[A317335(n+1)/3]` -/
def P18217117046335921780.Spec : Prop :=
  ∀ n, P18217117046335921780.a n = (A343173 n : ℚ)

end A343173

/-! ## A343173.P1338497960239053761

`Δ[A317332(n+1)%2]`
-/

namespace A343173.P1338497960239053761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317332 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343173.P1338497960239053761

namespace A343173

/-- `Δ[A317332(n+1)%2]` -/
def P1338497960239053761.Spec : Prop :=
  ∀ n, P1338497960239053761.a n = A343173 n

end A343173

/-! ## A343173.P6333914243001263682

`Δ[C(A322016(n+1), n)]`
-/

namespace A343173.P6333914243001263682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A322016 (n + 1)).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A343173.P6333914243001263682

namespace A343173

/-- `Δ[C(A322016(n+1), n)]` -/
def P6333914243001263682.Spec : Prop :=
  ∀ n, P6333914243001263682.a n = A343173 n

end A343173

/-! ## A343173.P11963309088907216050

`Δ[A000035(floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A343173.P11963309088907216050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343173.P11963309088907216050

namespace A343173

/-- `Δ[A000035(floor(n/(xor(n, n+1)+1))+1)]` -/
def P11963309088907216050.Spec : Prop :=
  ∀ n, P11963309088907216050.a n = A343173 n

end A343173

/-! ## A343173.P4676386051930423224

`Δ[and(1, A000217((n+1)/2^val(n+1, 2)))]`
-/

namespace A343173.P4676386051930423224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000217 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343173.P4676386051930423224

namespace A343173

/-- `Δ[and(1, A000217((n+1)/2^val(n+1, 2)))]` -/
def P4676386051930423224.Spec : Prop :=
  ∀ n, P4676386051930423224.a n = A343173 n

end A343173

/-!
# A343174: Partial sums of paper-folding sequence A014577.

The programs for A343174, the canonical program `A343174.P1593472062629477177` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343174 has offset 0).

The definition of A343174 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033264, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A343174.P1593472062629477177

`A004526(n+2)+A033264(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A343174

/-- `A004526(n+2)+A033264(n+1)` -/
def P1593472062629477177.Spec : Prop :=
  ∀ n, P1593472062629477177.a n = A343174 n

theorem P1593472062629477177.correct : P1593472062629477177.Spec := by
  intro n
  simp only [A343174]

end A343174

/-! ## A343174.P9211309872749264123

`∑[char[and(n, n+1)+n]]`
-/

namespace A343174.P9211309872749264123
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343174.P9211309872749264123

namespace A343174

/-- `∑[char[and(n, n+1)+n]]` -/
def P9211309872749264123.Spec : Prop :=
  ∀ n, (P9211309872749264123.a n : ℤ) = A343174 n

end A343174

/-! ## A343174.P8135329631879144900

`∑[ceil(acot(Δ[xor(n, 2*n)]))]`
-/

namespace A343174.P8135329631879144900
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343174.P8135329631879144900

namespace A343174

/-- `∑[ceil(acot(Δ[xor(n, 2*n)]))]` -/
def P8135329631879144900.Spec : Prop :=
  ∀ n, P8135329631879144900.a n = A343174 n

end A343174

/-! ## A343174.P13603599593096629765

`∑[1-char[or(n, n-1)+n]]`
-/

namespace A343174.P13603599593096629765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343174.P13603599593096629765

namespace A343174

/-- `∑[1-char[or(n, n-1)+n]]` -/
def P13603599593096629765.Spec : Prop :=
  ∀ n, P13603599593096629765.a n = A343174 n

end A343174

/-! ## A343174.P794371624409149939

`∑[floor(ratio[sqrt(xor(n, 2*n+1))])]`
-/

namespace A343174.P794371624409149939
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor n (2 * n + 1) : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f2 (n + 1) / f2 n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343174.P794371624409149939

namespace A343174

/-- `∑[floor(ratio[sqrt(xor(n, 2*n+1))])]` -/
def P794371624409149939.Spec : Prop :=
  ∀ n, P794371624409149939.a n = A343174 n

end A343174

/-! ## A343174.P17612009445387980223

`∑[ceil(Δ[atan(xor(n, 2*n+1))])]`
-/

namespace A343174.P17612009445387980223
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (Nat.xor n (2 * n + 1) : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f2 (n + 1) - f2 n⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343174.P17612009445387980223

namespace A343174

/-- `∑[ceil(Δ[atan(xor(n, 2*n+1))])]` -/
def P17612009445387980223.Spec : Prop :=
  ∀ n, P17612009445387980223.a n = A343174 n

end A343174

/-! ## A343174.P5140966325141745670

`∑[1-floor(ratio[acot(xor(n, 2*n))])]`
-/

namespace A343174.P5140966325141745670
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (Nat.xor n (2 * n) : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊f2 (n + 1) / f2 n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343174.P5140966325141745670

namespace A343174

/-- `∑[1-floor(ratio[acot(xor(n, 2*n))])]` -/
def P5140966325141745670.Spec : Prop :=
  ∀ n, P5140966325141745670.a n = A343174 n

end A343174

/-! ## A343174.P15484778582995891322

`∑[2-ceil(ratio[acot(xor(n, 2*n))])]`
-/

namespace A343174.P15484778582995891322
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (Nat.xor n (2 * n) : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌈f2 (n + 1) / f2 n⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343174.P15484778582995891322

namespace A343174

/-- `∑[2-ceil(ratio[acot(xor(n, 2*n))])]` -/
def P15484778582995891322.Spec : Prop :=
  ∀ n, P15484778582995891322.a n = A343174 n

end A343174

/-! ## A343174.P6852335479401690247

`∑[ceil(sin(Δ[xor(n, 2*n)]%2))]`
-/

namespace A343174.P6852335479401690247
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (Int.tmod ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) 2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343174.P6852335479401690247

namespace A343174

/-- `∑[ceil(sin(Δ[xor(n, 2*n)]%2))]` -/
def P6852335479401690247.Spec : Prop :=
  ∀ n, P6852335479401690247.a n = A343174 n

end A343174

/-! ## A343174.P9318048175999114175

`ceil(sqrt((n+1)*a(floor((n-1)/2))))` with `a(0)=1`
-/

namespace A343174.P9318048175999114175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.sqrt ((n + 1 : ℤ) * a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat : ℝ)⌉

end

end A343174.P9318048175999114175

namespace A343174

/-- `ceil(sqrt((n+1)*a(floor((n-1)/2))))` -/
def P9318048175999114175.Spec : Prop :=
  ∀ n, P9318048175999114175.a n = A343174 n

end A343174

/-! ## A343174.P17292890038603454395

`∑[A014577(n)]`
-/

namespace A343174.P17292890038603454395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343174.P17292890038603454395

namespace A343174

/-- `∑[A014577(n)]` -/
def P17292890038603454395.Spec : Prop :=
  ∀ n, P17292890038603454395.a n = A343174 n

end A343174

/-! ## A343174.P4843565667312764639

`∑[log2(A014710(n))]`
-/

namespace A343174.P4843565667312764639
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A014710 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343174.P4843565667312764639

namespace A343174

/-- `∑[log2(A014710(n))]` -/
def P4843565667312764639.Spec : Prop :=
  ∀ n, P4843565667312764639.a n = (A343174 n : ℝ)

end A343174

/-! ## A343174.P5803249783886892109

`∑[1-A014707(n)]`
-/

namespace A343174.P5803249783886892109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A014707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343174.P5803249783886892109

namespace A343174

/-- `∑[1-A014707(n)]` -/
def P5803249783886892109.Spec : Prop :=
  ∀ n, P5803249783886892109.a n = A343174 n

end A343174

/-! ## A343174.P5032354396525040068

`∑[2-A014709(n)]`
-/

namespace A343174.P5032354396525040068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A014709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343174.P5032354396525040068

namespace A343174

/-- `∑[2-A014709(n)]` -/
def P5032354396525040068.Spec : Prop :=
  ∀ n, P5032354396525040068.a n = A343174 n

end A343174

/-! ## A343174.P16040561130037517987

`∑[1-char[A255068(n)]]`
-/

namespace A343174.P16040561130037517987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255068 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343174.P16040561130037517987

namespace A343174

/-- `∑[1-char[A255068(n)]]` -/
def P16040561130037517987.Spec : Prop :=
  ∀ n, P16040561130037517987.a n = A343174 n

end A343174

/-! ## A343174.P12383397321448000612

`∑[1-A038189(n+1)]`
-/

namespace A343174.P12383397321448000612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A038189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343174.P12383397321448000612

namespace A343174

/-- `∑[1-A038189(n+1)]` -/
def P12383397321448000612.Spec : Prop :=
  ∀ n, P12383397321448000612.a n = A343174 n

end A343174

/-! ## A343174.P17061556197288796618

`∑[A099545(n+1)%3]`
-/

namespace A343174.P17061556197288796618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099545 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343174.P17061556197288796618

namespace A343174

/-- `∑[A099545(n+1)%3]` -/
def P17061556197288796618.Spec : Prop :=
  ∀ n, P17061556197288796618.a n = A343174 n

end A343174

/-! ## A343174.P8159144934963322222

`∑[char[n-A322015(n)]]`
-/

namespace A343174.P8159144934963322222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A322015 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343174.P8159144934963322222

namespace A343174

/-- `∑[char[n-A322015(n)]]` -/
def P8159144934963322222.Spec : Prop :=
  ∀ n, (P8159144934963322222.a n : ℤ) = A343174 n

end A343174

/-! ## A343174.P1046299686091046641

`∑[char[A322016(n)]]`
-/

namespace A343174.P1046299686091046641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322016 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343174.P1046299686091046641

namespace A343174

/-- `∑[char[A322016(n)]]` -/
def P1046299686091046641.Spec : Prop :=
  ∀ n, (P1046299686091046641.a n : ℤ) = A343174 n

end A343174

/-! ## A343174.P3282684112121487123

`∑[char[A339597(n)-1]]`
-/

namespace A343174.P3282684112121487123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339597 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343174.P3282684112121487123

namespace A343174

/-- `∑[char[A339597(n)-1]]` -/
def P3282684112121487123.Spec : Prop :=
  ∀ n, (P3282684112121487123.a n : ℤ) = A343174 n

end A343174

/-!
# A343175: a(0)=2; for n > 0, a(n) = 2^(2*n-1) + 2^n + 1.

The programs for A343175, the canonical program `A343175.P10641088784924267401` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343175 has offset 0).

The definition of A343175 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343175.P10641088784924267401

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=2, a(1)=5, a(2)=13, a(3)=41`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A343175

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P10641088784924267401.Spec : Prop :=
  ∀ n, P10641088784924267401.a n = A343175 n

theorem P10641088784924267401.correct : P10641088784924267401.Spec := by
  intro n
  simp only [A343175]

end A343175

/-! ## A343175.P11182155777270564745

`ceil((2^n+1)²/2)`
-/

namespace A343175.P11182155777270564745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 ^ n + 1) ^ 2 : ℚ) / 2⌉

end

end A343175.P11182155777270564745

namespace A343175

/-- `ceil((2^n+1)²/2)` -/
def P11182155777270564745.Spec : Prop :=
  ∀ n, P11182155777270564745.a n = A343175 n

end A343175

/-! ## A343175.P6697346962364881346

`round(xor(-1, 2^n)²/2)`
-/

namespace A343175.P6697346962364881346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.xor (-1) (2 ^ n : ℤ) ^ 2 : ℚ) / 2)

end

end A343175.P6697346962364881346

namespace A343175

/-- `round(xor(-1, 2^n)²/2)` -/
def P6697346962364881346.Spec : Prop :=
  ∀ n, P6697346962364881346.a n = A343175 n

end A343175

/-! ## A343175.P11415729386061662430

`4*a(n-1)-or(3, 2^n)` with `a(0)=2`
-/

namespace A343175.P11415729386061662430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  4 * a (n - 1) - (Nat.lor 3 (2 ^ n) : ℤ)

end

end A343175.P11415729386061662430

namespace A343175

/-- `4*a(n-1)-or(3, 2^n)` -/
def P11415729386061662430.Spec : Prop :=
  ∀ n, P11415729386061662430.a n = A343175 n

end A343175

/-! ## A343175.P7668690077788982181

`(or(1, 2^n)+1)*2^n/2+1`
-/

namespace A343175.P7668690077788982181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (2 ^ n) + 1 : ℚ) * ((2 ^ n : ℚ) / 2) + 1

end

end A343175.P7668690077788982181

namespace A343175

/-- `(or(1, 2^n)+1)*2^n/2+1` -/
def P7668690077788982181.Spec : Prop :=
  ∀ n, P7668690077788982181.a n = (A343175 n : ℚ)

end A343175

/-! ## A343175.P1048182009025470609

`xor(3, 4^(n-1)+2*a(n-1))` with `a(0)=2, a(1)=5`
-/

namespace A343175.P1048182009025470609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  Int.xor 3 (SequenceMachineLib.roundAway ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (2 * a (n - 1) : ℚ)))

end

end A343175.P1048182009025470609

namespace A343175

/-- `xor(3, 4^(n-1)+2*a(n-1))` -/
def P1048182009025470609.Spec : Prop :=
  ∀ n, P1048182009025470609.a n = A343175 n

end A343175

/-! ## A343175.P18248043527250406161

`xor(3, 3*a(n-1))-(2^n-a(n-1))` with `a(0)=2`
-/

namespace A343175.P18248043527250406161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.xor 3 (3 * a (n - 1)) - ((2 ^ n : ℤ) - a (n - 1))

end

end A343175.P18248043527250406161

namespace A343175

/-- `xor(3, 3*a(n-1))-(2^n-a(n-1))` -/
def P18248043527250406161.Spec : Prop :=
  ∀ n, P18248043527250406161.a n = A343175 n

end A343175

/-! ## A343175.P11872413664115041689

`A257418(2*n)`
-/

namespace A343175.P11872413664115041689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257418 (2 * n)

end

end A343175.P11872413664115041689

namespace A343175

/-- `A257418(2*n)` -/
def P11872413664115041689.Spec : Prop :=
  ∀ n, P11872413664115041689.a n = A343175 n

end A343175

/-! ## A343175.P10041260122013914966

`round(A028400(n)/2)`
-/

namespace A343175.P10041260122013914966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A028400 n : ℚ) / 2)

end

end A343175.P10041260122013914966

namespace A343175

/-- `round(A028400(n)/2)` -/
def P10041260122013914966.Spec : Prop :=
  ∀ n, P10041260122013914966.a n = A343175 n

end A343175

/-! ## A343175.P17245945248919230361

`A116362(2*n)+2`
-/

namespace A343175.P17245945248919230361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116362 (2 * n) + 2

end

end A343175.P17245945248919230361

namespace A343175

/-- `A116362(2*n)+2` -/
def P17245945248919230361.Spec : Prop :=
  ∀ n, P17245945248919230361.a n = A343175 n

end A343175

/-! ## A343175.P8102443989292982860

`round(A000051(n)²/2)`
-/

namespace A343175.P8102443989292982860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000051 n ^ 2 : ℚ) / 2)

end

end A343175.P8102443989292982860

namespace A343175

/-- `round(A000051(n)²/2)` -/
def P8102443989292982860.Spec : Prop :=
  ∀ n, P8102443989292982860.a n = A343175 n

end A343175

/-! ## A343175.P14315718113915735917

`round(Δ[A005126(n)]²/2)`
-/

namespace A343175.P14315718113915735917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((f1 (n + 1) - f1 n) ^ 2 : ℚ) / 2)

end

end A343175.P14315718113915735917

namespace A343175

/-- `round(Δ[A005126(n)]²/2)` -/
def P14315718113915735917.Spec : Prop :=
  ∀ n, P14315718113915735917.a n = A343175 n

end A343175

/-! ## A343175.P9040190018581871536

`A084508(n+1)+2^n`
-/

namespace A343175.P9040190018581871536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084508 (n + 1) + (2 ^ n : ℤ)

end

end A343175.P9040190018581871536

namespace A343175

/-- `A084508(n+1)+2^n` -/
def P9040190018581871536.Spec : Prop :=
  ∀ n, P9040190018581871536.a n = A343175 n

end A343175

/-! ## A343175.P11406875336123592665

`A094373(2*n)+2^n`
-/

namespace A343175.P11406875336123592665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 (2 * n) + (2 ^ n : ℤ)

end

end A343175.P11406875336123592665

namespace A343175

/-- `A094373(2*n)+2^n` -/
def P11406875336123592665.Spec : Prop :=
  ∀ n, P11406875336123592665.a n = A343175 n

end A343175

/-! ## A343175.P10310981177100541474

`A093356(n)+a(n-1)` with `a(0)=2`
-/

namespace A343175.P10310981177100541474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A093356 n + a (n - 1)

end

end A343175.P10310981177100541474

namespace A343175

/-- `A093356(n)+a(n-1)` -/
def P10310981177100541474.Spec : Prop :=
  ∀ n, P10310981177100541474.a n = A343175 n

end A343175

/-! ## A343175.P17503188403575824003

`round((A000225(n)+2)²/2)`
-/

namespace A343175.P17503188403575824003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A000225 n + 2) ^ 2 : ℚ) / 2)

end

end A343175.P17503188403575824003

namespace A343175

/-- `round((A000225(n)+2)²/2)` -/
def P17503188403575824003.Spec : Prop :=
  ∀ n, P17503188403575824003.a n = A343175 n

end A343175

/-! ## A343175.P18378120167824559497

`A001576(n)-ceil(4^n/2)`
-/

namespace A343175.P18378120167824559497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001576 n - ⌈(4 ^ n : ℚ) / 2⌉

end

end A343175.P18378120167824559497

namespace A343175

/-- `A001576(n)-ceil(4^n/2)` -/
def P18378120167824559497.Spec : Prop :=
  ∀ n, P18378120167824559497.a n = A343175 n

end A343175

/-! ## A343175.P12197686083749037961

`record[A052552(n)]+floor(4^n/2)`
-/

namespace A343175.P12197686083749037961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ⌊(4 ^ n : ℚ) / 2⌋

end

end A343175.P12197686083749037961

namespace A343175

/-- `record[A052552(n)]+floor(4^n/2)` -/
def P12197686083749037961.Spec : Prop :=
  ∀ n, P12197686083749037961.a n = A343175 n

end A343175

/-! ## A343175.P17157975225321996198

`A052552(2*n)+floor(4^n/2)`
-/

namespace A343175.P17157975225321996198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 (2 * n) + ⌊(4 ^ n : ℚ) / 2⌋

end

end A343175.P17157975225321996198

namespace A343175

/-- `A052552(2*n)+floor(4^n/2)` -/
def P17157975225321996198.Spec : Prop :=
  ∀ n, P17157975225321996198.a n = A343175 n

end A343175

/-! ## A343175.P3040528954168095530

`A079319(n)+A039301(n)`
-/

namespace A343175.P3040528954168095530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079319 n + A039301 n

end

end A343175.P3040528954168095530

namespace A343175

/-- `A079319(n)+A039301(n)` -/
def P3040528954168095530.Spec : Prop :=
  ∀ n, P3040528954168095530.a n = A343175 n

end A343175

/-!
# A343176: a(0)=3; for n > 0, a(n) = 2^(2*n) + 3*2^(n-1) + 1.

The programs for A343176, the canonical program `A343176.P7820225642060671971` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343176 has offset 0).

The definition of A343176 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343176.P7820225642060671971

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=3, a(1)=8, a(2)=23, a(3)=77`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A343176

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P7820225642060671971.Spec : Prop :=
  ∀ n, P7820225642060671971.a n = A343176 n

theorem P7820225642060671971.correct : P7820225642060671971.Spec := by
  intro n
  simp only [A343176]

end A343176

/-! ## A343176.P17868773575911115183

`round((2^n+3/4)²)`
-/

namespace A343176.P17868773575911115183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 ^ n : ℚ) + (3 : ℚ) / 4) ^ 2)

end

end A343176.P17868773575911115183

namespace A343176

/-- `round((2^n+3/4)²)` -/
def P17868773575911115183.Spec : Prop :=
  ∀ n, P17868773575911115183.a n = A343176 n

end A343176

/-! ## A343176.P1997140505553010133

`(2^n+1)²-floor(sqrt(a(n-1)))` with `a(0)=3`
-/

namespace A343176.P1997140505553010133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ((2 ^ n + 1) ^ 2 : ℤ) - Int.sqrt (a (n - 1))

end

end A343176.P1997140505553010133

namespace A343176

/-- `(2^n+1)²-floor(sqrt(a(n-1)))` -/
def P1997140505553010133.Spec : Prop :=
  ∀ n, P1997140505553010133.a n = A343176 n

end A343176

/-! ## A343176.P11319957291200204785

`A257418(Δ[n²])`
-/

namespace A343176.P11319957291200204785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257418 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A343176.P11319957291200204785

namespace A343176

/-- `A257418(Δ[n²])` -/
def P11319957291200204785.Spec : Prop :=
  ∀ n, P11319957291200204785.a n = A343176 n

end A343176

/-! ## A343176.P6302352370738384012

`A003945(n)+4^n+1`
-/

namespace A343176.P6302352370738384012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n + (4 ^ n + 1 : ℤ)

end

end A343176.P6302352370738384012

namespace A343176

/-- `A003945(n)+4^n+1` -/
def P6302352370738384012.Spec : Prop :=
  ∀ n, P6302352370738384012.a n = A343176 n

end A343176

/-! ## A343176.P11486435505873673640

`A103204(n+1)+4^n`
-/

namespace A343176.P11486435505873673640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103204 (n + 1) + (4 ^ n : ℤ)

end

end A343176.P11486435505873673640

namespace A343176

/-- `A103204(n+1)+4^n` -/
def P11486435505873673640.Spec : Prop :=
  ∀ n, P11486435505873673640.a n = A343176 n

end A343176

/-! ## A343176.P9897688674643669278

`(2^n+1)²-A011782(n)`
-/

namespace A343176.P9897688674643669278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ n + 1) ^ 2 : ℤ) - A011782 n

end

end A343176.P9897688674643669278

namespace A343176

/-- `(2^n+1)²-A011782(n)` -/
def P9897688674643669278.Spec : Prop :=
  ∀ n, P9897688674643669278.a n = A343176 n

end A343176

/-! ## A343176.P532199320481108446

`A000051(n)²-ceil(2^(n-1))`
-/

namespace A343176.P532199320481108446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n ^ 2 - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A343176.P532199320481108446

namespace A343176

/-- `A000051(n)²-ceil(2^(n-1))` -/
def P532199320481108446.Spec : Prop :=
  ∀ n, P532199320481108446.a n = A343176 n

end A343176

/-! ## A343176.P6251209850398908265

`A052539(n)+A003945(n)`
-/

namespace A343176.P6251209850398908265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052539 n + A003945 n

end

end A343176.P6251209850398908265

namespace A343176

/-- `A052539(n)+A003945(n)` -/
def P6251209850398908265.Spec : Prop :=
  ∀ n, P6251209850398908265.a n = A343176 n

end A343176

/-! ## A343176.P13950157119245639852

`A131577(n)+A001576(n)`
-/

namespace A343176.P13950157119245639852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A001576 n

end

end A343176.P13950157119245639852

namespace A343176

/-- `A131577(n)+A001576(n)` -/
def P13950157119245639852.Spec : Prop :=
  ∀ n, P13950157119245639852.a n = A343176 n

end A343176

/-! ## A343176.P10738845842020037964

`A099393(n)+A056469(n)`
-/

namespace A343176.P10738845842020037964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099393 n + A056469 n

end

end A343176.P10738845842020037964

namespace A343176

/-- `A099393(n)+A056469(n)` -/
def P10738845842020037964.Spec : Prop :=
  ∀ n, P10738845842020037964.a n = A343176 n

end A343176

/-! ## A343176.P15945317468012022578

`A155543(n)+A004119(n)`
-/

namespace A343176.P15945317468012022578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155543 n + A004119 n

end

end A343176.P15945317468012022578

namespace A343176

/-- `A155543(n)+A004119(n)` -/
def P15945317468012022578.Spec : Prop :=
  ∀ n, P15945317468012022578.a n = A343176 n

end A343176

/-! ## A343176.P13022090084183106072

`A000302(n)+A003945(n)+1`
-/

namespace A343176.P13022090084183106072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n + (A003945 n + 1)

end

end A343176.P13022090084183106072

namespace A343176

/-- `A000302(n)+A003945(n)+1` -/
def P13022090084183106072.Spec : Prop :=
  ∀ n, P13022090084183106072.a n = A343176 n

end A343176

/-! ## A343176.P16253127425186392685

`A242985(n)+1-A011782(n)`
-/

namespace A343176.P16253127425186392685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242985 n + (1 - A011782 n)

end

end A343176.P16253127425186392685

namespace A343176

/-- `A242985(n)+1-A011782(n)` -/
def P16253127425186392685.Spec : Prop :=
  ∀ n, P16253127425186392685.a n = A343176 n

end A343176

/-! ## A343176.P8301942750268421591

`A014551(2*n)+A003945(n)`
-/

namespace A343176.P8301942750268421591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 (2 * n) + A003945 n

end

end A343176.P8301942750268421591

namespace A343176

/-- `A014551(2*n)+A003945(n)` -/
def P8301942750268421591.Spec : Prop :=
  ∀ n, P8301942750268421591.a n = A343176 n

end A343176

/-! ## A343176.P16273478847058009485

`A052531(2*n)+A003945(n)`
-/

namespace A343176.P16273478847058009485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052531 (2 * n) + A003945 n

end

end A343176.P16273478847058009485

namespace A343176

/-- `A052531(2*n)+A003945(n)` -/
def P16273478847058009485.Spec : Prop :=
  ∀ n, P16273478847058009485.a n = A343176 n

end A343176

/-! ## A343176.P9386430245150574992

`A094373(n)+2*A007582(n)`
-/

namespace A343176.P9386430245150574992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n + 2 * A007582 n

end

end A343176.P9386430245150574992

namespace A343176

/-- `A094373(n)+2*A007582(n)` -/
def P9386430245150574992.Spec : Prop :=
  ∀ n, P9386430245150574992.a n = A343176 n

end A343176

/-! ## A343176.P12385010023700552924

`A094373(n)*A126646(n)+2`
-/

namespace A343176.P12385010023700552924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n * A126646 n + 2

end

end A343176.P12385010023700552924

namespace A343176

/-- `A094373(n)*A126646(n)+2` -/
def P12385010023700552924.Spec : Prop :=
  ∀ n, P12385010023700552924.a n = A343176 n

end A343176

/-! ## A343176.P17668394961829978150

`A001576(n)+A155559(n)/2`
-/

namespace A343176.P17668394961829978150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001576 n : ℚ) + (A155559 n : ℚ) / 2

end

end A343176.P17668394961829978150

namespace A343176

/-- `A001576(n)+A155559(n)/2` -/
def P17668394961829978150.Spec : Prop :=
  ∀ n, P17668394961829978150.a n = (A343176 n : ℚ)

end A343176

/-!
# A343177: a(0)=4; if n > 0 is even then a(n) = 2^(n/2+1)+3, otherwise a(n) = 3*(2^((n-1)/2)+1).

The programs for A343177, the canonical program `A343177.P12591027814131562382` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343177 has offset 0).

The definition of A343177 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343177.P12591027814131562382

`2*a(n-2)-3` with `a(0)=4, a(1)=6, a(2)=7`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A343177

/-- `2*a(n-2)-3` -/
def P12591027814131562382.Spec : Prop :=
  ∀ n, P12591027814131562382.a n = A343177 n

theorem P12591027814131562382.correct : P12591027814131562382.Spec := by
  intro n
  simp only [A343177]

end A343177

/-! ## A343177.P17241763112143367433

`∑[2^ceil(abs(2-n)/2)]+2`
-/

namespace A343177.P17241763112143367433
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(|2 - (n : ℤ)| : ℚ) / 2⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A343177.P17241763112143367433

namespace A343177

/-- `∑[2^ceil(abs(2-n)/2)]+2` -/
def P17241763112143367433.Spec : Prop :=
  ∀ n, P17241763112143367433.a n = (A343177 n : ℚ)

end A343177

/-! ## A343177.P17049467745494117713

`∑[a(n-2)+a(n-2)]` with `a(0)=4, a(1)=2, a(2)=1, a(3)=2`
-/

namespace A343177.P17049467745494117713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 2, 1, 2] fun n f1 =>
  f1 (n - 2) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343177.P17049467745494117713

namespace A343177

/-- `∑[a(n-2)+a(n-2)]` -/
def P17049467745494117713.Spec : Prop :=
  ∀ n, (P17049467745494117713.a n : ℤ) = A343177 n

end A343177

/-! ## A343177.P10414102471152365286

`∑[a(n-2)/(1-1/2)]` with `a(0)=4, a(1)=2, a(2)=1, a(3)=2`
-/

namespace A343177.P10414102471152365286
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 2, 1, 2] fun n f1 =>
  f1 (n - 2) / (1 - (1 : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343177.P10414102471152365286

namespace A343177

/-- `∑[a(n-2)/(1-1/2)]` -/
def P10414102471152365286.Spec : Prop :=
  ∀ n, P10414102471152365286.a n = (A343177 n : ℚ)

end A343177

/-! ## A343177.P5060415075675507024

`∑[a(n-2)-xor(3-3%n, -a(n-2))]` with `a(0)=4, a(1)=2, a(2)=1, a(3)=2`
-/

namespace A343177.P5060415075675507024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 2, 1, 2] fun n f1 =>
  f1 (n - 2) - Int.xor (3 - ((3 % n : ℕ) : ℤ)) (-f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343177.P5060415075675507024

namespace A343177

/-- `∑[a(n-2)-xor(3-3%n, -a(n-2))]` -/
def P5060415075675507024.Spec : Prop :=
  ∀ n, P5060415075675507024.a n = A343177 n

end A343177

/-! ## A343177.P1391630285531064833

`Δ[A070875(n)+A008486(n)]`
-/

namespace A343177.P1391630285531064833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070875 n + A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343177.P1391630285531064833

namespace A343177

/-- `Δ[A070875(n)+A008486(n)]` -/
def P1391630285531064833.Spec : Prop :=
  ∀ n, P1391630285531064833.a n = A343177 n

end A343177

/-!
# A343178: On a spirally numbered square grid, with labels starting at 1, this is the number of steps that an (n,n+1) leaper makes before getting trapped, or -1 if it never gets trapped.

The programs for A343178, there is no canonical definition to state claims against.
-/

/-! ## A343178.P10664798640510754085

`A323749(∑[n+1]+1)`
-/

namespace A343178.P10664798640510754085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323749 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A343178.P10664798640510754085

/-!
# A343179: On a spirally numbered square grid, with labels starting at 1, this is the number of the last cell that an (n,n+1) leaper reaches before getting trapped, or -1 if it never gets trapped.

The programs for A343179, there is no canonical definition to state claims against.
-/

/-! ## A343179.P10957248976000369747

`A323750(∑[n+1]+1)`
-/

namespace A343179.P10957248976000369747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323750 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A343179.P10957248976000369747

/-!
# A343180: Trajectory of 1 under the morphism 1 -> 12, 2 -> 32, 3 -> 14, 4 -> 34.

The programs for A343180, the canonical program `A343180.P10495282842916940469` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343180 has offset 0).

The definition of A343180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343180.P10495282842916940469

`n%2+2-Δ[xor(n, 2*n)]%2`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A343180

/-- `n%2+2-Δ[xor(n, 2*n)]%2` -/
def P10495282842916940469.Spec : Prop :=
  ∀ n, P10495282842916940469.a n = A343180 n

theorem P10495282842916940469.correct : P10495282842916940469.Spec := by
  intro n
  simp only [A343180]

end A343180

/-! ## A343180.P5599916692857507353

`A112658(n+1)+1`
-/

namespace A343180.P5599916692857507353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112658 (n + 1) + 1

end

end A343180.P5599916692857507353

namespace A343180

/-- `A112658(n+1)+1` -/
def P5599916692857507353.Spec : Prop :=
  ∀ n, P5599916692857507353.a n = A343180 n

end A343180

/-! ## A343180.P1047493268208988398

`A099545(n+1)+n%2`
-/

namespace A343180.P1047493268208988398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099545 (n + 1) + ((n % 2 : ℕ) : ℤ)

end

end A343180.P1047493268208988398

namespace A343180

/-- `A099545(n+1)+n%2` -/
def P1047493268208988398.Spec : Prop :=
  ∀ n, P1047493268208988398.a n = A343180 n

end A343180

/-! ## A343180.P16015076557910241122

`2*A014709(n)-char[2*n]`
-/

namespace A343180.P16015076557910241122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014709 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A343180.P16015076557910241122

namespace A343180

/-- `2*A014709(n)-char[2*n]` -/
def P16015076557910241122.Spec : Prop :=
  ∀ n, P16015076557910241122.a n = A343180 n

end A343180

/-! ## A343180.P2208771801873784660

`3-A034947(n+1)-char[2*n]`
-/

namespace A343180.P2208771801873784660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A034947 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A343180.P2208771801873784660

namespace A343180

/-- `3-A034947(n+1)-char[2*n]` -/
def P2208771801873784660.Spec : Prop :=
  ∀ n, P2208771801873784660.a n = A343180 n

end A343180

/-! ## A343180.P7152007445136973803

`A000035(n)+2-Δ[xor(n, 2*n)]%2`
-/

namespace A343180.P7152007445136973803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (2 - Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 2)

end

end A343180.P7152007445136973803

namespace A343180

/-- `A000035(n)+2-Δ[xor(n, 2*n)]%2` -/
def P7152007445136973803.Spec : Prop :=
  ∀ n, P7152007445136973803.a n = A343180 n

end A343180

/-! ## A343180.P11104880784011881224

`(A166466(n+1)/3*gcd(8, n))%4+1`
-/

namespace A343180.P11104880784011881224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A166466 (n + 1) : ℚ) / 3 * (Nat.gcd 8 n : ℚ))) 4 + 1

end

end A343180.P11104880784011881224

namespace A343180

/-- `(A166466(n+1)/3*gcd(8, n))%4+1` -/
def P11104880784011881224.Spec : Prop :=
  ∀ n, P11104880784011881224.a n = A343180 n

end A343180

/-! ## A343180.P7512310965327037006

`A003324(A090078(n+1))`
-/

namespace A343180.P7512310965327037006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003324 (A090078 (n + 1)).toNat

end

end A343180.P7512310965327037006

namespace A343180

/-- `A003324(A090078(n+1))` -/
def P7512310965327037006.Spec : Prop :=
  ∀ n, P7512310965327037006.a n = A343180 n

end A343180

/-! ## A343180.P7078584311686767440

`A003324(A259445(n+1))`
-/

namespace A343180.P7078584311686767440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003324 (A259445 (n + 1)).toNat

end

end A343180.P7078584311686767440

namespace A343180

/-- `A003324(A259445(n+1))` -/
def P7078584311686767440.Spec : Prop :=
  ∀ n, P7078584311686767440.a n = A343180 n

end A343180

/-! ## A343180.P18409248257083794248

`A193682(A090077(n))+1`
-/

namespace A343180.P18409248257083794248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193682 (A090077 n).toNat + 1

end

end A343180.P18409248257083794248

namespace A343180

/-- `A193682(A090077(n))+1` -/
def P18409248257083794248.Spec : Prop :=
  ∀ n, P18409248257083794248.a n = A343180 n

end A343180

/-! ## A343180.P2639291956587117721

`A336126(A065338(n+1))`
-/

namespace A343180.P2639291956587117721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336126 (A065338 (n + 1)).toNat

end

end A343180.P2639291956587117721

namespace A343180

/-- `A336126(A065338(n+1))` -/
def P2639291956587117721.Spec : Prop :=
  ∀ n, P2639291956587117721.a n = A343180 n

end A343180

/-! ## A343180.P10898963136863235125

`A158515(A336126(n+1))`
-/

namespace A343180.P10898963136863235125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158515 (A336126 (n + 1)).toNat

end

end A343180.P10898963136863235125

namespace A343180

/-- `A158515(A336126(n+1))` -/
def P10898963136863235125.Spec : Prop :=
  ∀ n, P10898963136863235125.a n = A343180 n

end A343180

/-! ## A343180.P1195928207860592336

`A010873(A306546(n+1))+1`
-/

namespace A343180.P1195928207860592336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A306546 (n + 1)).toNat + 1

end

end A343180.P1195928207860592336

namespace A343180

/-- `A010873(A306546(n+1))+1` -/
def P1195928207860592336.Spec : Prop :=
  ∀ n, P1195928207860592336.a n = A343180 n

end A343180

/-! ## A343180.P372410102224611344

`A099545(n+1)+A000035(n)`
-/

namespace A343180.P372410102224611344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099545 (n + 1) + A000035 n

end

end A343180.P372410102224611344

namespace A343180

/-- `A099545(n+1)+A000035(n)` -/
def P372410102224611344.Spec : Prop :=
  ∀ n, P372410102224611344.a n = A343180 n

end A343180

/-! ## A343180.P3341017432911186121

`A010693(n)-A034947(n+1)`
-/

namespace A343180.P3341017432911186121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 n - A034947 (n + 1)

end

end A343180.P3341017432911186121

namespace A343180

/-- `A010693(n)-A034947(n+1)` -/
def P3341017432911186121.Spec : Prop :=
  ∀ n, P3341017432911186121.a n = A343180 n

end A343180

/-! ## A343180.P12303851205980837022

`A000035(n)+2-Δ[A005811(n)]`
-/

namespace A343180.P12303851205980837022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (2 - (f1 (n + 1) - f1 n))

end

end A343180.P12303851205980837022

namespace A343180

/-- `A000035(n)+2-Δ[A005811(n)]` -/
def P12303851205980837022.Spec : Prop :=
  ∀ n, P12303851205980837022.a n = A343180 n

end A343180

/-! ## A343180.P16531265450163158667

`A099545(n+1)+char[A005408(n)]`
-/

namespace A343180.P16531265450163158667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099545 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A343180.P16531265450163158667

namespace A343180

/-- `A099545(n+1)+char[A005408(n)]` -/
def P16531265450163158667.Spec : Prop :=
  ∀ n, P16531265450163158667.a n = A343180 n

end A343180

/-! ## A343180.P8199691185329471618

`A000034(n)+1-A034947(n+1)`
-/

namespace A343180.P8199691185329471618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + (1 - A034947 (n + 1))

end

end A343180.P8199691185329471618

namespace A343180

/-- `A000034(n)+1-A034947(n+1)` -/
def P8199691185329471618.Spec : Prop :=
  ∀ n, P8199691185329471618.a n = A343180 n

end A343180

/-! ## A343180.P7889592699176027231

`A000035(n)+2-A034947(n+1)`
-/

namespace A343180.P7889592699176027231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (2 - A034947 (n + 1))

end

end A343180.P7889592699176027231

namespace A343180

/-- `A000035(n)+2-A034947(n+1)` -/
def P7889592699176027231.Spec : Prop :=
  ∀ n, P7889592699176027231.a n = A343180 n

end A343180

/-! ## A343180.P12827231017581963525

`A166486(2*n)+A099545(n+1)`
-/

namespace A343180.P12827231017581963525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (2 * n) + A099545 (n + 1)

end

end A343180.P12827231017581963525

namespace A343180

/-- `A166486(2*n)+A099545(n+1)` -/
def P12827231017581963525.Spec : Prop :=
  ∀ n, P12827231017581963525.a n = A343180 n

end A343180

/-!
# A343183: A343182(n) converted from base 2 to base 10.

The programs for A343183, there is no canonical definition to state claims against.
-/

/-! ## A343183.P146873136366638920

`A337580(n+1)-A011782(A000079(n))`
-/

namespace A343183.P146873136366638920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337580 (n + 1) - A011782 (A000079 n).toNat

end

end A343183.P146873136366638920

/-! ## A343183.P8763586987609028059

`A337580(n+1)-A000079(A000079(n)-1)`
-/

namespace A343183.P8763586987609028059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337580 (n + 1) - A000079 (A000079 n - 1).toNat

end

end A343183.P8763586987609028059

/-! ## A343183.P7813541296388255157

`and(A337580(n+1), A337580(n+2))`
-/

namespace A343183.P7813541296388255157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A337580 (n + 1)) (A337580 (n + 2))

end

end A343183.P7813541296388255157

/-!
# A343184: Positions of records in A001178.

The programs for A343184, there is no canonical definition to state claims against.
-/

/-! ## A343184.P9655946142606493896

`record[A006530(4^n-A326683(5*n))]`
-/

namespace A343184.P9655946142606493896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((4 ^ n : ℤ) - A326683 (5 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343184.P9655946142606493896

/-!
# A343191: Squiggle Dot Numbers: numbers generated in a similar way to those in A010790 except that every prime number is divided instead of multiplied. The result is then rounded to the closest integer.

The programs for A343191, the canonical program `A343191.P3852017148646265571` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343191 has offset 1).

The definition of A343191 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A034386, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A343191.P3852017148646265571

`round((n+1)^(2*A010051(n+1)-1)*(A000142(n+1)/A034386(n+1)²)²)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A343191

/-- `round((n+1)^(2*A010051(n+1)-1)*(A000142(n+1)/A034386(n+1)²)²)` -/
def P3852017148646265571.Spec : Prop :=
  ∀ n, P3852017148646265571.a n = A343191 (n + 1)

theorem P3852017148646265571.correct : P3852017148646265571.Spec := by
  intro n
  simp only [A343191, Nat.add_sub_cancel]

end A343191

/-! ## A343191.P3982405523882914161

`A294219(or(10, A285013(n)))`
-/

namespace A343191.P3982405523882914161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294219 (Int.lor 10 (A285013 n)).toNat

end

end A343191.P3982405523882914161

namespace A343191

/-- `A294219(or(10, A285013(n)))` -/
def P3982405523882914161.Spec : Prop :=
  ∀ n, P3982405523882914161.a n = A343191 (n + 1)

end A343191

/-!
# A343192: Happy Honaker primes.

The programs for A343192, there is no canonical definition to state claims against.
-/

/-! ## A343192.P17122475248590885513

`∩[A033548(n+1), A035497(n+1)]`
-/

namespace A343192.P17122475248590885513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343192.P17122475248590885513

/-! ## A343192.P8174388234748185201

`∩[A035497(n+1), A343139(n+1)]`
-/

namespace A343192.P8174388234748185201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343192.P8174388234748185201

/-! ## A343192.P1981683696887029740

`∩[A065091(A033549(n+1)-1), A035497(n+1)]`
-/

namespace A343192.P1981683696887029740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A033549 (n + 1) - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343192.P1981683696887029740

/-! ## A343192.P12663719830612097142

`∩[A004139(A033549(n+1)-2), A035497(n+1)]`
-/

namespace A343192.P12663719830612097142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A033549 (n + 1) - 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343192.P12663719830612097142

/-!
# A343193: 

The programs for A343193, there is no canonical definition to state claims against.
-/

/-! ## A343193.P282663945213192791

`A082540(10^n)`
-/

namespace A343193.P282663945213192791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082540 (10 ^ n)

end

end A343193.P282663945213192791

/-!
# A343194: a(n) is the parameter b in the three-parameter description of 3 X 3 magic squares of consecutive primes (see comment).

The programs for A343194, there is no canonical definition to state claims against.
-/

/-! ## A343194.P14788190776390560537

`(A166113(n+1)-A256891(n+1)-A343195(n+1))/3`
-/

namespace A343194.P14788190776390560537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166113 (n + 1) - A256891 (n + 1) - A343195 (n + 1) : ℚ) / 3

end

end A343194.P14788190776390560537

/-! ## A343194.P2939279982501963396

`(A270305(n+1)-3*A256891(n+1)-3*A343195(n+1))/9`
-/

namespace A343194.P2939279982501963396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270305 (n + 1) - 3 * A256891 (n + 1) - 3 * A343195 (n + 1) : ℚ) / 9

end

end A343194.P2939279982501963396

/-!
# A343195: a(n) is the parameter c in the three parameter description of 3 X 3 magic squares of consecutive primes (see comment).

The programs for A343195, there is no canonical definition to state claims against.
-/

/-! ## A343195.P12838722152065579894

`A166113(n+1)-A256891(n+1)-3*A343194(n+1)`
-/

namespace A343195.P12838722152065579894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166113 (n + 1) - A256891 (n + 1) - 3 * A343194 (n + 1)

end

end A343195.P12838722152065579894

/-! ## A343195.P17179695100607138787

`(A270305(n+1)-3*A256891(n+1)-9*A343194(n+1))/3`
-/

namespace A343195.P17179695100607138787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270305 (n + 1) - 3 * A256891 (n + 1) - 9 * A343194 (n + 1) : ℚ) / 3

end

end A343195.P17179695100607138787

/-!
# A343197: Numbers k such that A025281(k) is prime.

The programs for A343197, there is no canonical definition to state claims against.
-/

/-! ## A343197.P6948813641012545237

`eq[1, A343196(n+1)]+1`
-/

namespace A343197.P6948813641012545237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343196 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A343197.P6948813641012545237

/-! ## A343197.P1840415934649135279

`record[root(n+2, A343196(n+2))]`
-/

namespace A343197.P1840415934649135279
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℝ) ^ (1 / (A343196 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343197.P1840415934649135279

/-! ## A343197.P13355629749211849058

`eq[1, A343196(A028310(n))]`
-/

namespace A343197.P13355629749211849058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343196 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343197.P13355629749211849058

/-! ## A343197.P9504698745789052879

`eq[0, A237053(A025281(n))]`
-/

namespace A343197.P9504698745789052879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 (A025281 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343197.P9504698745789052879

/-! ## A343197.P1569151600297099355

`eq[2, A000005(A025281(n+2))]+2`
-/

namespace A343197.P1569151600297099355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A025281 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A343197.P1569151600297099355

/-! ## A343197.P7976849351079063646

`eq[A107393(A025281(n)), A260196(n)]`
-/

namespace A343197.P7976849351079063646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A025281 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343197.P7976849351079063646

/-!
# A343199: Decimal expansion of 6+2*sqrt(3).

The programs for A343199, there is no canonical definition to state claims against.
-/

/-! ## A343199.P1440944254546990854

`A010469(n)^A000038(n)!`
-/

namespace A343199.P1440944254546990854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010469 (n + 1) ^ Nat.factorial (A000038 n).toNat

end

end A343199.P1440944254546990854

/-! ## A343199.P18280416573648679816

`A176394(n)+3*A000007(n)`
-/

namespace A343199.P18280416573648679816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176394 (n + 1) + 3 * A000007 n

end

end A343199.P18280416573648679816

/-! ## A343199.P13242270986355847186

`2*A176394(n)-A010469(n)`
-/

namespace A343199.P13242270986355847186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A176394 (n + 1) - A010469 (n + 1)

end

end A343199.P13242270986355847186

/-! ## A343199.P8106198298697219869

`A010469(n)+6*A000007(n)`
-/

namespace A343199.P8106198298697219869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010469 (n + 1) + 6 * A000007 n

end

end A343199.P8106198298697219869

/-! ## A343199.P7396677621232888746

`A010469(n)+12-A040030(n)`
-/

namespace A343199.P7396677621232888746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010469 (n + 1) + (12 - A040030 n)

end

end A343199.P7396677621232888746

/-! ## A343199.P1078596931727533170

`A010469(n)^(3-A040001(2*n))`
-/

namespace A343199.P1078596931727533170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010469 (n + 1) : ℚ) ^ (3 - A040001 (2 * n) : ℤ)

end

end A343199.P1078596931727533170

/-! ## A343199.P6487987651218549507

`A010469(n)^A040001(A040001(n)+1+n)`
-/

namespace A343199.P6487987651218549507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010469 (n + 1) : ℚ) ^ (A040001 (A040001 n + 1 + (n : ℤ)).toNat : ℤ)

end

end A343199.P6487987651218549507

/-! ## A343199.P4777568267109851647

`A010696(n+1)+A176394(n)-A040008(n)`
-/

namespace A343199.P4777568267109851647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010696 (n + 1) + (A176394 (n + 1) - A040008 n)

end

end A343199.P4777568267109851647

