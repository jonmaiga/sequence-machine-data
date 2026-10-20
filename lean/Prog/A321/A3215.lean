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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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

/-!
# A321500: Triangular table T(n,k) = (n+k)*(n^2+k^2), n >= k >= 0; read by rows n = 0, 1, 2, ...

The programs for A321500, the canonical program `A321500.P13328065906800071465` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321500 has offset 0).

The definition of A321500 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321500.P13328065906800071465

`A051162(n)*A069011(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A321500

/-- `A051162(n)*A069011(n)` -/
def P13328065906800071465.Spec : Prop :=
  ∀ n, P13328065906800071465.a n = A321500 n

theorem P13328065906800071465.correct : P13328065906800071465.Spec := by
  intro n
  simp only [A321500]

end A321500

/-! ## A321500.P2395421443048367480

`A069011(n)*A134478(n)`
-/

namespace A321500.P2395421443048367480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 n * A134478 n

end

end A321500.P2395421443048367480

namespace A321500

/-- `A069011(n)*A134478(n)` -/
def P2395421443048367480.Spec : Prop :=
  ∀ n, P2395421443048367480.a n = A321500 n

end A321500

/-! ## A321500.P13620108263123871547

`(A094727(n+1)-1)*A069011(n)`
-/

namespace A321500.P13620108263123871547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094727 (n + 1) - 1) * A069011 n

end

end A321500.P13620108263123871547

namespace A321500

/-- `(A094727(n+1)-1)*A069011(n)` -/
def P13620108263123871547.Spec : Prop :=
  ∀ n, P13620108263123871547.a n = A321500 n

end A321500

/-! ## A321500.P7694264730111320264

`(A003056(n)+A002262(n))*A069011(n)`
-/

namespace A321500.P7694264730111320264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n + A002262 n) * A069011 n

end

end A321500.P7694264730111320264

namespace A321500

/-- `(A003056(n)+A002262(n))*A069011(n)` -/
def P7694264730111320264.Spec : Prop :=
  ∀ n, P7694264730111320264.a n = A321500 n

end A321500

/-! ## A321500.P7824136940126830405

`A105125(n)+A051162(n)*A079904(n)`
-/

namespace A321500.P7824136940126830405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105125 n + A051162 n * A079904 n

end

end A321500.P7824136940126830405

namespace A321500

/-- `A105125(n)+A051162(n)*A079904(n)` -/
def P7824136940126830405.Spec : Prop :=
  ∀ n, P7824136940126830405.a n = A321500 n

end A321500

/-! ## A321500.P11885177137308951716

`A053186(A061885(n))*A069011(n)`
-/

namespace A321500.P11885177137308951716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A061885 n).toNat * A069011 n

end

end A321500.P11885177137308951716

namespace A321500

/-- `A053186(A061885(n))*A069011(n)` -/
def P11885177137308951716.Spec : Prop :=
  ∀ n, P11885177137308951716.a n = A321500 n

end A321500

/-! ## A321500.P7679355817995895378

`A198063(A245300(n))`
-/

namespace A321500.P7679355817995895378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198063 (A245300 n).toNat

end

end A321500.P7679355817995895378

namespace A321500

/-- `A198063(A245300(n))` -/
def P7679355817995895378.Spec : Prop :=
  ∀ n, P7679355817995895378.a n = A321500 n

end A321500

/-!
# A321501: Numbers not of the form (x - y)(x^2 - y^2) with x > y > 0; complement of A321499.

The programs for A321501, the canonical program `A321501.P17906033643972775992` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321501 has offset 1).

The definition of A321501 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321501.P17906033643972775992

`comp[(n+1)*gcd(4, a(n-2))]` with `a(0)=3, a(1)=16`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A321501

/-- `comp[(n+1)*gcd(4, a(n-2))]` -/
def P17906033643972775992.Spec : Prop :=
  ∀ n, (P17906033643972775992.a n : ℤ) = A321501 (n + 1)

theorem P17906033643972775992.correct : P17906033643972775992.Spec := by
  intro n
  simp only [A321501, Nat.add_sub_cancel]

end A321501

/-! ## A321501.P14686343568528321561

`A004275(comp[Δ[A167614(2*(n+1))]])`
-/

namespace A321501.P14686343568528321561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167614 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A321501.P14686343568528321561

namespace A321501

/-- `A004275(comp[Δ[A167614(2*(n+1))]])` -/
def P14686343568528321561.Spec : Prop :=
  ∀ n, P14686343568528321561.a n = A321501 (n + 1)

end A321501

/-! ## A321501.P11485366476769077252

`A004275(comp[Δ[A266259(2*n+3)]])`
-/

namespace A321501.P11485366476769077252
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266259 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A321501.P11485366476769077252

namespace A321501

/-- `A004275(comp[Δ[A266259(2*n+3)]])` -/
def P11485366476769077252.Spec : Prop :=
  ∀ n, P11485366476769077252.a n = A321501 (n + 1)

end A321501

/-! ## A321501.P17957496144756198411

`lt[Δ[A352783(n+1)], 6]`
-/

namespace A321501.P17957496144756198411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352783 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A321501.P17957496144756198411

namespace A321501

/-- `lt[Δ[A352783(n+1)], 6]` -/
def P17957496144756198411.Spec : Prop :=
  ∀ n, (P17957496144756198411.a n : ℤ) = A321501 (n + 1)

end A321501

/-! ## A321501.P13943710515945365012

`record[gcd(A001621(n), A302405(n))]`
-/

namespace A321501.P13943710515945365012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001621 n) (A302405 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321501.P13943710515945365012

namespace A321501

/-- `record[gcd(A001621(n), A302405(n))]` -/
def P13943710515945365012.Spec : Prop :=
  ∀ n, (P13943710515945365012.a n : ℤ) = A321501 (n + 1)

end A321501

/-! ## A321501.P390606581640372910

`record[gcd(A099479(n), A254407(n))]`
-/

namespace A321501.P390606581640372910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099479 n) (A254407 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321501.P390606581640372910

namespace A321501

/-- `record[gcd(A099479(n), A254407(n))]` -/
def P390606581640372910.Spec : Prop :=
  ∀ n, (P390606581640372910.a n : ℤ) = A321501 (n + 1)

end A321501

/-! ## A321501.P13246961343833545587

`record[A047217(n+1)%A117120(n+1)]`
-/

namespace A321501.P13246961343833545587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047217 (n + 1)) (A117120 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321501.P13246961343833545587

namespace A321501

/-- `record[A047217(n+1)%A117120(n+1)]` -/
def P13246961343833545587.Spec : Prop :=
  ∀ n, P13246961343833545587.a n = A321501 (n + 1)

end A321501

/-! ## A321501.P5995192671883665347

`comp[A195161(n+3)]%A028310(3*n+1)`
-/

namespace A321501.P5995192671883665347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195161 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A028310 (3 * n + 1))

end

end A321501.P5995192671883665347

namespace A321501

/-- `comp[A195161(n+3)]%A028310(3*n+1)` -/
def P5995192671883665347.Spec : Prop :=
  ∀ n, P5995192671883665347.a n = A321501 (n + 1)

end A321501

/-! ## A321501.P9477783147043044051

`record[A247555(A247555(n))%(n+4)]`
-/

namespace A321501.P9477783147043044051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247555 (A247555 n).toNat) (n + 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321501.P9477783147043044051

namespace A321501

/-- `record[A247555(A247555(n))%(n+4)]` -/
def P9477783147043044051.Spec : Prop :=
  ∀ n, P9477783147043044051.a n = A321501 (n + 1)

end A321501

/-! ## A321501.P11519692171808709257

`eq[and(1, n), A022068(abs(1-n))]`
-/

namespace A321501.P11519692171808709257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022068 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A321501.P11519692171808709257

namespace A321501

/-- `eq[and(1, n), A022068(abs(1-n))]` -/
def P11519692171808709257.Spec : Prop :=
  ∀ n, (P11519692171808709257.a n : ℤ) = A321501 (n + 1)

end A321501

/-! ## A321501.P10408522654203828330

`record[A124625(n)-A022070(n)]`
-/

namespace A321501.P10408522654203828330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n - A022070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321501.P10408522654203828330

namespace A321501

/-- `record[A124625(n)-A022070(n)]` -/
def P10408522654203828330.Spec : Prop :=
  ∀ n, P10408522654203828330.a n = A321501 (n + 1)

end A321501

/-! ## A321501.P5007709256715994015

`eq[A000035(n), A022070(A004442(n))]`
-/

namespace A321501.P5007709256715994015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022070 (A004442 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A321501.P5007709256715994015

namespace A321501

/-- `eq[A000035(n), A022070(A004442(n))]` -/
def P5007709256715994015.Spec : Prop :=
  ∀ n, (P5007709256715994015.a n : ℤ) = A321501 (n + 1)

end A321501

/-! ## A321501.P1307984722882729011

`lt[Δ[A306921(2*(n+1))], 2]`
-/

namespace A321501.P1307984722882729011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306921 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A321501.P1307984722882729011

namespace A321501

/-- `lt[Δ[A306921(2*(n+1))], 2]` -/
def P1307984722882729011.Spec : Prop :=
  ∀ n, (P1307984722882729011.a n : ℤ) = A321501 (n + 1)

end A321501

/-! ## A321501.P6921870831712618558

`lt[gcd(8, n)*∑[n-1], A270793(n)]`
-/

namespace A321501.P6921870831712618558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 8 n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270793 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A321501.P6921870831712618558

namespace A321501

/-- `lt[gcd(8, n)*∑[n-1], A270793(n)]` -/
def P6921870831712618558.Spec : Prop :=
  ∀ n, (P6921870831712618558.a n : ℤ) = A321501 (n + 1)

end A321501

/-! ## A321501.P15070033821210701663

`lt[A315899(n), A315881(n+1)]`
-/

namespace A321501.P15070033821210701663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315899 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315881 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A321501.P15070033821210701663

namespace A321501

/-- `lt[A315899(n), A315881(n+1)]` -/
def P15070033821210701663.Spec : Prop :=
  ∀ n, (P15070033821210701663.a n : ℤ) = A321501 (n + 1)

end A321501

/-! ## A321501.P16138742103168985997

`A004275(record[A308178(A004275(n))])`
-/

namespace A321501.P16138742103168985997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308178 (A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A321501.P16138742103168985997

namespace A321501

/-- `A004275(record[A308178(A004275(n))])` -/
def P16138742103168985997.Spec : Prop :=
  ∀ n, P16138742103168985997.a n = A321501 (n + 1)

end A321501

/-! ## A321501.P10443930052091268716

`lt[Δ[A281672(n)], A281685(n+2)]`
-/

namespace A321501.P10443930052091268716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281672 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281685 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A321501.P10443930052091268716

namespace A321501

/-- `lt[Δ[A281672(n)], A281685(n+2)]` -/
def P10443930052091268716.Spec : Prop :=
  ∀ n, (P10443930052091268716.a n : ℤ) = A321501 (n + 1)

end A321501

/-!
# A321502: Numbers m such that m and m+1 have at least 2, but m or m+1 has at least 3 prime divisors.

The programs for A321502, there is no canonical definition to state claims against.
-/

/-! ## A321502.P1729640255872376726

`eq[5, A001221(A273334(n))]`
-/

namespace A321502.P1729640255872376726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A273334 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A321502.P1729640255872376726

/-! ## A321502.P17207388698600083628

`lt[4, A001221(A273443(n))]`
-/

namespace A321502.P17207388698600083628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A273443 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A321502.P17207388698600083628

/-! ## A321502.P11708045647547396184

`eq[52, A259936(n²+abs(1-n)+1)]`
-/

namespace A321502.P11708045647547396184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  52

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259936 ((n ^ 2 : ℤ) + (|1 - (n : ℤ)| + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A321502.P11708045647547396184

/-!
# A321503: Numbers m such that m and m+1 both have at least 3 distinct prime factors.

The programs for A321503, the canonical program `A321503.P6387010611333371333` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321503 has offset 1).

The definition of A321503 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3559 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321503.P6387010611333371333

`∩[A000977(n+1)-1, A000977(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A321503

/-- `∩[A000977(n+1)-1, A000977(n+1)]` -/
def P6387010611333371333.Spec : Prop :=
  ∀ n, (P6387010611333371333.a n : ℤ) = A321503 (n + 1)

theorem P6387010611333371333.correct : P6387010611333371333.Spec := by
  intro n
  simp only [A321503, Nat.add_sub_cancel]

end A321503

/-! ## A321503.P8556419509626519310

`∩[A000977(n+1), A233583(A000977(n+1))]`
-/

namespace A321503.P8556419509626519310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A000977 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321503.P8556419509626519310

namespace A321503

/-- `∩[A000977(n+1), A233583(A000977(n+1))]` -/
def P8556419509626519310.Spec : Prop :=
  ∀ n, (P8556419509626519310.a n : ℤ) = A321503 (n + 1)

end A321503

/-!
# A321506: 

The programs for A321506, there is no canonical definition to state claims against.
-/

/-! ## A321506.P108997895226175071

`A273879(n+1)+A000007(A155212(n))`
-/

namespace A321506.P108997895226175071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273879 (n + 1) + A000007 (A155212 n).toNat

end

end A321506.P108997895226175071

/-! ## A321506.P5748482284828899797

`A273879(n+1)*A325632(A107174(3*n+2))`
-/

namespace A321506.P5748482284828899797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273879 (n + 1) * A325632 (A107174 (3 * n + 2)).toNat

end

end A321506.P5748482284828899797

/-! ## A321506.P10511659467743580873

`A309873(n+1)²*A273879(n+1)%A273879(A155212(n))`
-/

namespace A321506.P10511659467743580873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (n + 1) ^ 2 * Int.tmod (A273879 (n + 1)) (A273879 (A155212 n).toNat)

end

end A321506.P10511659467743580873

/-! ## A321506.P11741369185490330475

`A000038(3*n+3)+A273879(n+1)+A000122(A155212(n))`
-/

namespace A321506.P11741369185490330475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (3 * n + 3) + (A273879 (n + 1) + A000122 (A155212 n).toNat)

end

end A321506.P11741369185490330475

/-! ## A321506.P255623948673190128

`A273879(n+1)+A000007(A027082(n+3))`
-/

namespace A321506.P255623948673190128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273879 (n + 1) + A000007 (A027082 (n + 3)).toNat

end

end A321506.P255623948673190128

/-! ## A321506.P11398234870775203328

`A273879(n+1)%A273879(A105041(n+4))`
-/

namespace A321506.P11398234870775203328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273879 (n + 1)) (A273879 (A105041 (n + 4)).toNat)

end

end A321506.P11398234870775203328

/-! ## A321506.P5181679785953758453

`A309873(A035444(n)+1)²*A273879(n+1)`
-/

namespace A321506.P5181679785953758453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (A035444 n + 1).toNat ^ 2 * A273879 (n + 1)

end

end A321506.P5181679785953758453

/-! ## A321506.P11812622667716255269

`A332671(A006519(n+1))+A273879(n+1)`
-/

namespace A321506.P11812622667716255269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332671 (A006519 (n + 1)).toNat + A273879 (n + 1)

end

end A321506.P11812622667716255269

/-! ## A321506.P6239246030465660523

`A057427(A205134(n+1))*A273879(n+1)`
-/

namespace A321506.P6239246030465660523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A205134 (n + 1)).toNat * A273879 (n + 1)

end

end A321506.P6239246030465660523

/-! ## A321506.P66409774484639195

`A034460(A024785(2*n+5))*A273879(n+1)`
-/

namespace A321506.P66409774484639195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (A024785 (2 * n + 5)).toNat * A273879 (n + 1)

end

end A321506.P66409774484639195

/-! ## A321506.P1287732228383298653

`A057427(A074829(n+1))*A273879(n+1)`
-/

namespace A321506.P1287732228383298653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A074829 (n + 1)).toNat * A273879 (n + 1)

end

end A321506.P1287732228383298653

/-! ## A321506.P7063909172839150119

`A008966(A002327(n+1))*A273879(n+1)`
-/

namespace A321506.P7063909172839150119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A002327 (n + 1)).toNat * A273879 (n + 1)

end

end A321506.P7063909172839150119

/-! ## A321506.P5798981315522524925

`A034178(A273906(2*(n+2)))*A273879(n+1)`
-/

namespace A321506.P5798981315522524925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (A273906 (2 * (n + 2))).toNat * A273879 (n + 1)

end

end A321506.P5798981315522524925

/-! ## A321506.P16733129625768079766

`A006519(A000057(2*n+5))*A273879(n+1)`
-/

namespace A321506.P16733129625768079766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A000057 (2 * n + 5)).toNat * A273879 (n + 1)

end

end A321506.P16733129625768079766

/-! ## A321506.P12419848714570500307

`A332671(A038500(2*n+1))+A273879(n+1)`
-/

namespace A321506.P12419848714570500307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332671 (A038500 (2 * n + 1)).toNat + A273879 (n + 1)

end

end A321506.P12419848714570500307

/-! ## A321506.P16637531057383686810

`A034178(A343479(n+1))*A273879(n+1)`
-/

namespace A321506.P16637531057383686810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (A343479 (n + 1)).toNat * A273879 (n + 1)

end

end A321506.P16637531057383686810

/-! ## A321506.P14318358673191529036

`A071974(A178339(n+1))*A273879(n+1)`
-/

namespace A321506.P14318358673191529036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (A178339 (n + 1)).toNat * A273879 (n + 1)

end

end A321506.P14318358673191529036

/-! ## A321506.P9632457022972042072

`A273879(n+1)*A290103(A130321(n))`
-/

namespace A321506.P9632457022972042072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273879 (n + 1) * A290103 (A130321 n).toNat

end

end A321506.P9632457022972042072

/-! ## A321506.P3170152087072652512

`A273879(A071974((n+1)²))`
-/

namespace A321506.P3170152087072652512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273879 (A071974 ((n + 1) ^ 2)).toNat

end

end A321506.P3170152087072652512

/-!
# A321509: a(1) = 1 and for any n > 1, a(n) = A321485(a(n-1)).

The programs for A321509, there is no canonical definition to state claims against.
-/

/-! ## A321509.P1204808806717501602

`A321485(a(n-1))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A321509.P1204808806717501602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A321485 (a (n - 1)).toNat

end

end A321509.P1204808806717501602

/-!
# A321510: Primes p for which there exists a prime q < p such that 3*q == 1 (mod p).

The programs for A321510, there is no canonical definition to state claims against.
-/

/-! ## A321510.P5933613241855565470

`p?[A079313(p?[2*n+1])]`
-/

namespace A321510.P5933613241855565470
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079313 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321510.P5933613241855565470

/-! ## A321510.P68426791720013073

`A075677(A158708(n+1))`
-/

namespace A321510.P68426791720013073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075677 (A158708 (n + 1)).toNat

end

end A321510.P68426791720013073

/-! ## A321510.P3480947750584871541

`p?[A166517(p?[A166517(n)])]`
-/

namespace A321510.P3480947750584871541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321510.P3480947750584871541

/-! ## A321510.P2077685316358091903

`record[A051552(A006093(n+1))]`
-/

namespace A321510.P2077685316358091903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051552 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321510.P2077685316358091903

/-! ## A321510.P16346136205375524802

`p?[A084964(A001748(n+1))]`
-/

namespace A321510.P16346136205375524802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 (A001748 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321510.P16346136205375524802

/-! ## A321510.P16793320177079223626

`p?[A079313(A000040(n+2))]`
-/

namespace A321510.P16793320177079223626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079313 (A000040 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321510.P16793320177079223626

/-! ## A321510.P5180568441744829067

`A259650(record[A259649(n+3)])`
-/

namespace A321510.P5180568441744829067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259649 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259650 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A321510.P5180568441744829067

/-! ## A321510.P17911214119164590251

`record[A006530(A001748(n+1)-1)]`
-/

namespace A321510.P17911214119164590251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001748 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321510.P17911214119164590251

/-! ## A321510.P3983507889041677250

`p?[A001651(A039915(n+1)+1)]`
-/

namespace A321510.P3983507889041677250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A039915 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321510.P3983507889041677250

/-! ## A321510.P163435353830899969

`record[A051552(A000040(n+1)-1)]`
-/

namespace A321510.P163435353830899969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051552 (A000040 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321510.P163435353830899969

/-!
# A321511: Number of alternating sign n X n matrices excluding permutation matrices.

The programs for A321511, there is no canonical definition to state claims against.
-/

/-! ## A321511.P13138808934156546558

`A005130(n)-n!`
-/

namespace A321511.P13138808934156546558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005130 n - (Nat.factorial n : ℤ)

end

end A321511.P13138808934156546558

/-! ## A321511.P1048488585048232330

`A048601(∑[n]+1)-n!`
-/

namespace A321511.P1048488585048232330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048601 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - (Nat.factorial n : ℤ)

end

end A321511.P1048488585048232330

/-! ## A321511.P4956532953311292622

`A005130(n)-A000142(n)`
-/

namespace A321511.P4956532953311292622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005130 n - A000142 n

end

end A321511.P4956532953311292622

/-! ## A321511.P16838221295932473982

`A005130(n)-∏[A007318(∑[n]+1)]`
-/

namespace A321511.P16838221295932473982
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005130 n - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A321511.P16838221295932473982

/-! ## A321511.P3912236131778491862

`A005130(n)-∏[val(A000040(n+1), 2)+n]`
-/

namespace A321511.P3912236131778491862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005130 n - ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A321511.P3912236131778491862

/-!
# A321512: Characteristic function of the reverse in the shuffle (perfect faro shuffle with cut): 1 if the sequence of shuffles of n cards contains the reverse of the original order of cards, 0 if not.

The programs for A321512, there is no canonical definition to state claims against.
-/

/-! ## A321512.P8175048161740890734

`char[A321580(n+1)-1]`
-/

namespace A321512.P8175048161740890734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321580 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A321512.P8175048161740890734

/-! ## A321512.P11775792522601933419

`char[A014657(n+1)-2]`
-/

namespace A321512.P11775792522601933419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A321512.P11775792522601933419

/-! ## A321512.P16413686131061942420

`A057427(A195470(n+2))`
-/

namespace A321512.P16413686131061942420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A195470 (n + 2)).toNat

end

end A321512.P16413686131061942420

/-! ## A321512.P13418548728192057911

`C(A327649(n+2), n+1)`
-/

namespace A321512.P13418548728192057911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A327649 (n + 2)).toNat (n + 1)

end

end A321512.P13418548728192057911

/-! ## A321512.P2469409238362143712

`A000007(n+1-A327649(n+2))`
-/

namespace A321512.P2469409238362143712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n + 1 : ℤ) - A327649 (n + 2)).toNat

end

end A321512.P2469409238362143712

/-! ## A321512.P2641030669608859401

`A230403(2^A195470(n+2))`
-/

namespace A321512.P2641030669608859401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230403 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A195470 (n + 2) : ℤ))).toNat

end

end A321512.P2641030669608859401

/-!
# A321513: Numbers that are periodic in base 4, written in decimal, where the base-4 expansion contains at least two periods.

The programs for A321513, there is no canonical definition to state claims against.
-/

/-! ## A321513.P16423078489466046604

`eq[A141709(n+1), A265562(n)]+1`
-/

namespace A321513.P16423078489466046604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A321513.P16423078489466046604

/-! ## A321513.P14497514399891429942

`A153152(eq[A141709(n+1), A265562(n)])`
-/

namespace A321513.P14497514399891429942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A321513.P14497514399891429942

/-! ## A321513.P12107875354436603629

`A265562(eq[A141709(n+1), A265562(n)])`
-/

namespace A321513.P12107875354436603629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265562 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A321513.P12107875354436603629

/-!
# A321514: Number of ways to choose a factorization of each integer from 2 to n into factors > 1.

The programs for A321514, there is no canonical definition to state claims against.
-/

/-! ## A321514.P11003117541911119822

`∏[Δ[A096276(n)]]`
-/

namespace A321514.P11003117541911119822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A321514.P11003117541911119822

/-! ## A321514.P2744275367789760530

`∏[A001055(n+1)]`
-/

namespace A321514.P2744275367789760530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A321514.P2744275367789760530

/-! ## A321514.P3267185828970551816

`∏[A347438((n+1)²)]`
-/

namespace A321514.P3267185828970551816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347438 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A321514.P3267185828970551816

/-! ## A321514.P11564328958482115523

`∏[A066032(∑[n+1])]`
-/

namespace A321514.P11564328958482115523
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066032 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A321514.P11564328958482115523

/-! ## A321514.P7324139898910799380

`∏[A108455(∑[n+1])]`
-/

namespace A321514.P7324139898910799380
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108455 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A321514.P7324139898910799380

/-! ## A321514.P16078431038596710311

`∏[A108461(∑[n+1])]`
-/

namespace A321514.P16078431038596710311
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108461 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A321514.P16078431038596710311

/-!
# A321515: Number of nonnegative integer matrices with sum of entries equal to n, no zero rows or columns, and distinct rows and columns.

The programs for A321515, there is no canonical definition to state claims against.
-/

/-! ## A321515.P4547067887151727509

`A060384(A087912(n)+A003266(n))`
-/

namespace A321515.P4547067887151727509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A087912 n + A003266 n).toNat

end

end A321515.P4547067887151727509

/-! ## A321515.P10609165973026713099

`A080833(n)-A160124(A327504(n))`
-/

namespace A321515.P10609165973026713099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080833 n - A160124 (A327504 n).toNat

end

end A321515.P10609165973026713099

/-!
# A321516: Number of composite divisors of n that are < n.

The programs for A321516, the canonical program `A321516.P138228601672142670` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321516 has offset 1).

The definition of A321516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321516.P5440966076579155573

`floor(log(cosh(A055212(n+1))))`
-/

namespace A321516.P5440966076579155573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.cosh (A055212 (n + 1) : ℝ))⌋

end

end A321516.P5440966076579155573

namespace A321516

/-- `floor(log(cosh(A055212(n+1))))` -/
def P5440966076579155573.Spec : Prop :=
  ∀ n, P5440966076579155573.a n = A321516 (n + 1)

end A321516

/-! ## A321516.P7406681217480570931

`A289207(A033273(n+1))`
-/

namespace A321516.P7406681217480570931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A033273 (n + 1)).toNat

end

end A321516.P7406681217480570931

namespace A321516

/-- `A289207(A033273(n+1))` -/
def P7406681217480570931.Spec : Prop :=
  ∀ n, P7406681217480570931.a n = A321516 (n + 1)

end A321516

/-! ## A321516.P1704249843832074770

`A259361(A055212(n+1)²)`
-/

namespace A321516.P1704249843832074770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A055212 (n + 1) ^ 2).toNat

end

end A321516.P1704249843832074770

namespace A321516

/-- `A259361(A055212(n+1)²)` -/
def P1704249843832074770.Spec : Prop :=
  ∀ n, P1704249843832074770.a n = A321516 (n + 1)

end A321516

/-! ## A321516.P11729278617187576014

`A134478(C(A033273(n+1), 2))-1`
-/

namespace A321516.P11729278617187576014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (Nat.choose (A033273 (n + 1)).toNat 2) - 1

end

end A321516.P11729278617187576014

namespace A321516

/-- `A134478(C(A033273(n+1), 2))-1` -/
def P11729278617187576014.Spec : Prop :=
  ∀ n, P11729278617187576014.a n = A321516 (n + 1)

end A321516

/-! ## A321516.P9401055884254634941

`A055212(n+1)-A066247(n+1)`
-/

namespace A321516.P9401055884254634941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055212 (n + 1) - A066247 (n + 1)

end

end A321516.P9401055884254634941

namespace A321516

/-- `A055212(n+1)-A066247(n+1)` -/
def P9401055884254634941.Spec : Prop :=
  ∀ n, P9401055884254634941.a n = A321516 (n + 1)

end A321516

/-! ## A321516.P138228601672142670

`A070824(n+1)-A087624(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A321516

/-- `A070824(n+1)-A087624(n+1)` -/
def P138228601672142670.Spec : Prop :=
  ∀ n, P138228601672142670.a n = A321516 (n + 1)

theorem P138228601672142670.correct : P138228601672142670.Spec := by
  intro n
  simp only [A321516, Nat.add_sub_cancel]

end A321516

/-! ## A321516.P5451818098352467627

`A057860(n+1)%A046640(n+1)`
-/

namespace A321516.P5451818098352467627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057860 (n + 1)) (A046640 (n + 1))

end

end A321516.P5451818098352467627

namespace A321516

/-- `A057860(n+1)%A046640(n+1)` -/
def P5451818098352467627.Spec : Prop :=
  ∀ n, P5451818098352467627.a n = A321516 (n + 1)

end A321516

/-! ## A321516.P14599995691387478639

`∑{d}[n+1, A055212(#)*A157658((n+1)/#)]`
-/

namespace A321516.P14599995691387478639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055212 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321516.P14599995691387478639

namespace A321516

/-- `∑{d}[n+1, A055212(#)*A157658((n+1)/#)]` -/
def P14599995691387478639.Spec : Prop :=
  ∀ n, P14599995691387478639.a n = A321516 (n + 1)

end A321516

/-! ## A321516.P7780054304247680930

`A264440(n+1)-A087802(n+1)`
-/

namespace A321516.P7780054304247680930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264440 (n + 1) - A087802 (n + 1)

end

end A321516.P7780054304247680930

namespace A321516

/-- `A264440(n+1)-A087802(n+1)` -/
def P7780054304247680930.Spec : Prop :=
  ∀ n, P7780054304247680930.a n = A321516 (n + 1)

end A321516

/-! ## A321516.P15690749612803612116

`A254078(n+2)%A033273(n+1)`
-/

namespace A321516.P15690749612803612116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254078 (n + 2)) (A033273 (n + 1))

end

end A321516.P15690749612803612116

namespace A321516

/-- `A254078(n+2)%A033273(n+1)` -/
def P15690749612803612116.Spec : Prop :=
  ∀ n, P15690749612803612116.a n = A321516 (n + 1)

end A321516

/-! ## A321516.P6017952431253652736

`A055212(n+1)-A055212(A014673(n+1)²)`
-/

namespace A321516.P6017952431253652736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055212 (n + 1) - A055212 (A014673 (n + 1) ^ 2).toNat

end

end A321516.P6017952431253652736

namespace A321516

/-- `A055212(n+1)-A055212(A014673(n+1)²)` -/
def P6017952431253652736.Spec : Prop :=
  ∀ n, P6017952431253652736.a n = A321516 (n + 1)

end A321516

/-! ## A321516.P322853918332022959

`A055212(2^A055212(n+1))`
-/

namespace A321516.P322853918332022959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055212 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A055212 (n + 1) : ℤ))).toNat

end

end A321516.P322853918332022959

namespace A321516

/-- `A055212(2^A055212(n+1))` -/
def P322853918332022959.Spec : Prop :=
  ∀ n, P322853918332022959.a n = A321516 (n + 1)

end A321516

/-! ## A321516.P13704286402263246909

`A055212(n+1)-A011765(A100577(n+1))`
-/

namespace A321516.P13704286402263246909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055212 (n + 1) - A011765 (A100577 (n + 1)).toNat

end

end A321516.P13704286402263246909

namespace A321516

/-- `A055212(n+1)-A011765(A100577(n+1))` -/
def P13704286402263246909.Spec : Prop :=
  ∀ n, P13704286402263246909.a n = A321516 (n + 1)

end A321516

/-!
# A321519: Let d(n,i), i = 1..k be the k divisors of n^2 + 1 (the number 1 is not counted). a(n) is the number of ordered pairs d(n,i) < d(n,j) such that gcd(d(n,i), d(n,j)) = 1.

The programs for A321519, the canonical program `A321519.P724523528517111217` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321519 has offset 1).

The definition of A321519 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089233, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A321519.P724523528517111217

`A089233((n+1)²+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A321519

/-- `A089233((n+1)²+1)` -/
def P724523528517111217.Spec : Prop :=
  ∀ n, P724523528517111217.a n = A321519 (n + 1)

theorem P724523528517111217.correct : P724523528517111217.Spec := by
  intro n
  simp only [A321519, Nat.add_sub_cancel]

end A321519

/-! ## A321519.P5337667849938184310

`A089233(∑[comp[2*n]]+1)%(n+1)`
-/

namespace A321519.P5337667849938184310
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089233 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) (n + 1 : ℤ)

end

end A321519.P5337667849938184310

namespace A321519

/-- `A089233(∑[comp[2*n]]+1)%(n+1)` -/
def P5337667849938184310.Spec : Prop :=
  ∀ n, P5337667849938184310.a n = A321519 (n + 1)

end A321519

/-! ## A321519.P16585590631829179126

`and(-1, A089233(A033638(2*(n+1))))`
-/

namespace A321519.P16585590631829179126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A089233 (A033638 (2 * (n + 1))).toNat)

end

end A321519.P16585590631829179126

namespace A321519

/-- `and(-1, A089233(A033638(2*(n+1))))` -/
def P16585590631829179126.Spec : Prop :=
  ∀ n, P16585590631829179126.a n = A321519 (n + 1)

end A321519

/-! ## A321519.P15917832629163991450

`C(2, n)!*A089233(A098748(n+1))`
-/

namespace A321519.P15917832629163991450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.choose 2 n) : ℤ) * A089233 (A098748 (n + 1)).toNat

end

end A321519.P15917832629163991450

namespace A321519

/-- `C(2, n)!*A089233(A098748(n+1))` -/
def P15917832629163991450.Spec : Prop :=
  ∀ n, P15917832629163991450.a n = A321519 (n + 1)

end A321519

/-! ## A321519.P647139456778217221

`∑{d}[A089233(A098748(n+1)), A000010(#)]`
-/

namespace A321519.P647139456778217221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089233 (A098748 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A321519.P647139456778217221

namespace A321519

/-- `∑{d}[A089233(A098748(n+1)), A000010(#)]` -/
def P647139456778217221.Spec : Prop :=
  ∀ n, P647139456778217221.a n = A321519 (n + 1)

end A321519

/-! ## A321519.P6774506749812862390

`A000108(C(2, n))*A089233(A098748(n+1))`
-/

namespace A321519.P6774506749812862390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 n) * A089233 (A098748 (n + 1)).toNat

end

end A321519.P6774506749812862390

namespace A321519

/-- `A000108(C(2, n))*A089233(A098748(n+1))` -/
def P6774506749812862390.Spec : Prop :=
  ∀ n, P6774506749812862390.a n = A321519 (n + 1)

end A321519

/-! ## A321519.P5620517024547678401

`A007318(C(2, n))*A089233(A098748(n+1))`
-/

namespace A321519.P5620517024547678401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A089233 (A098748 (n + 1)).toNat

end

end A321519.P5620517024547678401

namespace A321519

/-- `A007318(C(2, n))*A089233(A098748(n+1))` -/
def P5620517024547678401.Spec : Prop :=
  ∀ n, P5620517024547678401.a n = A321519 (n + 1)

end A321519

/-! ## A321519.P3806504856321940462

`∏{p}[n, A001221(#)]*A089233(A098748(n+1))`
-/

namespace A321519.P3806504856321940462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), A001221 p) * A089233 (A098748 (n + 1)).toNat

end

end A321519.P3806504856321940462

namespace A321519

/-- `∏{p}[n, A001221(#)]*A089233(A098748(n+1))` -/
def P3806504856321940462.Spec : Prop :=
  ∀ n, P3806504856321940462.a n = A321519 (n + 1)

end A321519

/-! ## A321519.P67438976244907159

`A089233(A098748(n+1))^ceil(1/A000041(n))`
-/

namespace A321519.P67438976244907159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089233 (A098748 (n + 1)).toNat : ℚ) ^ (⌈1 / (A000041 n : ℚ)⌉ : ℤ)

end

end A321519.P67438976244907159

namespace A321519

/-- `A089233(A098748(n+1))^ceil(1/A000041(n))` -/
def P67438976244907159.Spec : Prop :=
  ∀ n, P67438976244907159.a n = (A321519 (n + 1) : ℚ)

end A321519

/-! ## A321519.P7630671515078784112

`A014963(∑[n+1])*A089233(A098748(n+1))`
-/

namespace A321519.P7630671515078784112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ j ∈ Finset.range (n + 1), f1 j) * A089233 (A098748 (n + 1)).toNat

end

end A321519.P7630671515078784112

namespace A321519

/-- `A014963(∑[n+1])*A089233(A098748(n+1))` -/
def P7630671515078784112.Spec : Prop :=
  ∀ n, P7630671515078784112.a n = A321519 (n + 1)

end A321519

/-!
# A321520: Expansion of Product_{k>=1} (1 + (k - 1)!*x^k).

The programs for A321520, there is no canonical definition to state claims against.
-/

/-! ## A321520.P6487080568352585666

`A244479(4*A321522(n))`
-/

namespace A321520.P6487080568352585666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244479 (4 * A321522 n).toNat

end

end A321520.P6487080568352585666

/-! ## A321520.P10595770566290077077

`A321522(n)+A178798(A321475(n))`
-/

namespace A321520.P10595770566290077077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321522 n + A178798 (A321475 n).toNat

end

end A321520.P10595770566290077077

/-! ## A321520.P10018228987814844948

`A321522(n)-A065202(A189886(n))`
-/

namespace A321520.P10018228987814844948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321522 n - A065202 (A189886 n).toNat

end

end A321520.P10018228987814844948

/-!
# A321521: a(n) = Sum_{d|n} (-1)^(n/d+1)*d!.

The programs for A321521, there is no canonical definition to state claims against.
-/

/-! ## A321521.P2686011228542612939

`∑{d}[n+1, A048272(#)*A062794((n+1)/#)]`
-/

namespace A321521.P2686011228542612939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048272 d * A062794 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321521.P2686011228542612939

/-! ## A321521.P15244756883302579404

`A026741((n+1)*(n!-and(1, n))+1)`
-/

namespace A321521.P15244756883302579404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ((n + 1 : ℤ) * ((Nat.factorial n : ℤ) - (Nat.land 1 n : ℤ)) + 1).toNat

end

end A321521.P15244756883302579404

/-! ## A321521.P13758958475893476669

`or(1, A114112(A062794(n+1)))`
-/

namespace A321521.P13758958475893476669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A114112 (A062794 (n + 1)).toNat)

end

end A321521.P13758958475893476669

/-!
# A321522: Expansion of Product_{k>=1} (1 + x^k)^((k-1)!).

The programs for A321522, there is no canonical definition to state claims against.
-/

/-! ## A321522.P3804593182081074823

`A321520(n)+A065202(A189886(n))`
-/

namespace A321522.P3804593182081074823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321520 n + A065202 (A189886 n).toNat

end

end A321522.P3804593182081074823

/-! ## A321522.P15222113446967538650

`or(A010059(A111425(n)), A321520(n))`
-/

namespace A321522.P15222113446967538650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010059 (A111425 n).toNat) (A321520 n)

end

end A321522.P15222113446967538650

/-! ## A321522.P16365040702144436930

`or(A264739(A001764(n)), A321520(n))`
-/

namespace A321522.P16365040702144436930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A264739 (A001764 n).toNat) (A321520 n)

end

end A321522.P16365040702144436930

/-!
# A321523: List of pairs: primes whose reversal is also prime, each followed by its reversal.

The programs for A321523, there is no canonical definition to state claims against.
-/

/-! ## A321523.P9793300923853410975

`p?[A107602(A135020(n+1))]`
-/

namespace A321523.P9793300923853410975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107602 (A135020 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321523.P9793300923853410975

/-! ## A321523.P11811934681819720626

`p?[A113219(A135020(n+2))]`
-/

namespace A321523.P11811934681819720626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113219 (A135020 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321523.P11811934681819720626

/-! ## A321523.P14532626329768344875

`p?[floor(A033892(n+1)/2)]`
-/

namespace A321523.P14532626329768344875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033892 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321523.P14532626329768344875

/-! ## A321523.P6792939702641088937

`p?[or(floor(n/2), A185037(n))]`
-/

namespace A321523.P6792939702641088937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(n : ℚ) / 2⌋ (A185037 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321523.P6792939702641088937

/-! ## A321523.P6863383485898563355

`p?[or(floor(n/2), A185237(n))]`
-/

namespace A321523.P6863383485898563355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(n : ℚ) / 2⌋ (A185237 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321523.P6863383485898563355

/-!
# A321524: Right-rotate nonzero digits in ternary expansion of n and convert back to decimal.

The programs for A321524, there is no canonical definition to state claims against.
-/

/-! ## A321524.P5592200045425095091

`A263273(A321525(A263273(n)))`
-/

namespace A321524.P5592200045425095091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A321525 (A263273 n).toNat).toNat

end

end A321524.P5592200045425095091

/-! ## A321524.P11360583873628930004

`A321464(A321525(A321464(n)))`
-/

namespace A321524.P11360583873628930004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321464 (A321525 (A321464 n).toNat).toNat

end

end A321524.P11360583873628930004

/-! ## A321524.P3500808335358421807

`A263273(n)-A046145(A185063(n))`
-/

namespace A321524.P3500808335358421807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 n - A046145 (A185063 n).toNat

end

end A321524.P3500808335358421807

/-! ## A321524.P14922787274682622583

`A321464(n)-A046145(A185063(n))`
-/

namespace A321524.P14922787274682622583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321464 n - A046145 (A185063 n).toNat

end

end A321524.P14922787274682622583

/-! ## A321524.P85118698924103496

`A321767(A321726(n))-A046145(A185063(n))`
-/

namespace A321524.P85118698924103496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321767 (A321726 n).toNat - A046145 (A185063 n).toNat

end

end A321524.P85118698924103496

/-!
# A321525: Left-rotate nonzero digits in ternary expansion of n and convert back to decimal.

The programs for A321525, there is no canonical definition to state claims against.
-/

/-! ## A321525.P12556219733076591646

`A321464(A321524(A321464(n)))`
-/

namespace A321525.P12556219733076591646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321464 (A321524 (A321464 n).toNat).toNat

end

end A321525.P12556219733076591646

/-! ## A321525.P7876872208553545033

`A263273(n)-A335446(A094103(n+1))`
-/

namespace A321525.P7876872208553545033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 n - A335446 (A094103 (n + 1)).toNat

end

end A321525.P7876872208553545033

/-! ## A321525.P13870015487579424637

`A321464(n)-A335446(A094103(n+1))`
-/

namespace A321525.P13870015487579424637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321464 n - A335446 (A094103 (n + 1)).toNat

end

end A321525.P13870015487579424637

/-! ## A321525.P9924389113348638687

`A321524(n)-A335446(A094103(n+1))`
-/

namespace A321525.P9924389113348638687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321524 n - A335446 (A094103 (n + 1)).toNat

end

end A321525.P9924389113348638687

/-! ## A321525.P18422734243360131853

`xor(A070097(A055584(2*(n+2))), A263273(n))`
-/

namespace A321525.P18422734243360131853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A070097 (A055584 (2 * (n + 2))).toNat) (A263273 n)

end

end A321525.P18422734243360131853

/-!
# A321526: Number of partitioned graphs on n labeled nodes.

The programs for A321526, there is no canonical definition to state claims against.
-/

/-! ## A321526.P5916872518952575070

`A000110(n+1)*A006125(n+1)`
-/

namespace A321526.P5916872518952575070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) * A006125 (n + 1)

end

end A321526.P5916872518952575070

/-! ## A321526.P10355046123206944145

`∏[2^n]*A011972(∑[n])`
-/

namespace A321526.P10355046123206944145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A011972 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A321526.P10355046123206944145

/-! ## A321526.P12782620916602254023

`2^∑[n]*record[A186020(n)]`
-/

namespace A321526.P12782620916602254023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A321526.P12782620916602254023

/-! ## A321526.P1706425402879656161

`record[2^n*A282988(n+1)]`
-/

namespace A321526.P1706425402879656161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A282988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321526.P1706425402879656161

/-! ## A321526.P6870910167786648307

`record[A095149(n)]*A000079(∑[n])`
-/

namespace A321526.P6870910167786648307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000079 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A321526.P6870910167786648307

/-!
# A321527: Expansion of x^3 * c(x^2) * c(x^4)^2 / (9 * c(x)) in powers of x where c() is a cubic AGM theta function.

The programs for A321527, there is no canonical definition to state claims against.
-/

/-! ## A321527.P12452383025246195815

`A224226(n)%(n+1)`
-/

namespace A321527.P12452383025246195815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224226 n) (n + 1 : ℤ)

end

end A321527.P12452383025246195815

/-! ## A321527.P5484221253696723817

`A224226(abs(1-n)+1)`
-/

namespace A321527.P5484221253696723817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224226 (|1 - (n : ℤ)| + 1).toNat

end

end A321527.P5484221253696723817

/-! ## A321527.P17142821442489375030

`A224226(n)-A000007(n)`
-/

namespace A321527.P17142821442489375030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224226 n - A000007 n

end

end A321527.P17142821442489375030

/-! ## A321527.P11303316309639038126

`A057427(n)*A224226(n)`
-/

namespace A321527.P11303316309639038126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A224226 n

end

end A321527.P11303316309639038126

/-! ## A321527.P11656857467661734302

`A157928(n)*A224226(n)`
-/

namespace A321527.P11656857467661734302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n * A224226 n

end

end A321527.P11656857467661734302

/-! ## A321527.P14181152291501942107

`A224226(n)*A294619(n)`
-/

namespace A321527.P14181152291501942107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224226 n * A294619 n

end

end A321527.P14181152291501942107

/-! ## A321527.P951179808046725618

`A328788(n)/A176040(n)`
-/

namespace A321527.P951179808046725618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328788 n : ℚ) / (A176040 n : ℚ)

end

end A321527.P951179808046725618

/-! ## A321527.P5819277286905048854

`and(A057428(n), A224226(n))`
-/

namespace A321527.P5819277286905048854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A224226 n)

end

end A321527.P5819277286905048854

/-! ## A321527.P17899551498344751922

`and(A134824(n), A224226(n))`
-/

namespace A321527.P17899551498344751922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134824 n) (A224226 n)

end

end A321527.P17899551498344751922

/-! ## A321527.P749620438207027670

`A132126(n+1)*A224226(n)`
-/

namespace A321527.P749620438207027670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132126 (n + 1) * A224226 n

end

end A321527.P749620438207027670

/-! ## A321527.P337934871275681429

`A328788(n)/A153284(n+1)`
-/

namespace A321527.P337934871275681429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328788 n : ℚ) / (A153284 (n + 1) : ℚ)

end

end A321527.P337934871275681429

/-! ## A321527.P2276714907054346600

`A019427(2*n)*A224226(n)`
-/

namespace A321527.P2276714907054346600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 (2 * n) * A224226 n

end

end A321527.P2276714907054346600

/-! ## A321527.P16229222873790227499

`A224226(n)+n-A028310(n)`
-/

namespace A321527.P16229222873790227499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224226 n + ((n : ℤ) - A028310 n)

end

end A321527.P16229222873790227499

/-! ## A321527.P7862044169017881049

`xor(A000007(2*n), A224226(n))`
-/

namespace A321527.P7862044169017881049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (2 * n)) (A224226 n)

end

end A321527.P7862044169017881049

/-! ## A321527.P3009249776968774702

`A224226(n)-A224226(A224229(n+1))`
-/

namespace A321527.P3009249776968774702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224226 n - A224226 (A224229 (n + 1)).toNat

end

end A321527.P3009249776968774702

/-! ## A321527.P9686342639580598501

`A010873(A004273(n)²)*A224226(n)`
-/

namespace A321527.P9686342639580598501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A004273 n ^ 2).toNat * A224226 n

end

end A321527.P9686342639580598501

/-!
# A321528: Expansion of b(x)^2 * b(x^2) / b(x^4) where b is a cubic AGM theta function.

The programs for A321528, there is no canonical definition to state claims against.
-/

/-! ## A321528.P13927481204162678966

`A096727(n)+2*A329651(n)`
-/

namespace A321528.P13927481204162678966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096727 n + 2 * A329651 n

end

end A321528.P13927481204162678966

/-!
# A321531: a(n) is the maximum number of distinct directions between n non-attacking rooks on an n X n chessboard.

The programs for A321531, there is no canonical definition to state claims against.
-/

/-! ## A321531.P6187961921263975587

`A194224(n+2)`
-/

namespace A321531.P6187961921263975587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194224 (n + 2)

end

end A321531.P6187961921263975587

/-! ## A321531.P496120121920175815

`∑[A194223(n+2)]`
-/

namespace A321531.P496120121920175815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194223 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321531.P496120121920175815

/-! ## A321531.P5866531401774588122

`∑[∑[A357448(∑[n])]]`
-/

namespace A321531.P5866531401774588122
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357448 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321531.P5866531401774588122

/-! ## A321531.P10811586481707799432

`∑[∑[A296657(n+1)]]`
-/

namespace A321531.P10811586481707799432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296657 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321531.P10811586481707799432

/-! ## A321531.P10928623270501314036

`A121385(2*n+3)+n`
-/

namespace A321531.P10928623270501314036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121385 (2 * n + 3) + (n : ℤ)

end

end A321531.P10928623270501314036

/-!
# A321532: a(n) gives the number of configurations of non-attacking rooks on an n X n chessboard such that the number of distinct directions between the rooks is given by A321531(n).

The programs for A321532, there is no canonical definition to state claims against.
-/

/-! ## A321532.P5728942054905253667

`A340747(a(n-1))` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16`
-/

namespace A321532.P5728942054905253667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8, 16] fun n a =>
  A340747 (a (n - 1)).toNat

end

end A321532.P5728942054905253667

/-! ## A321532.P10448869165628364764

`A268448(a(n-1)-1)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16`
-/

namespace A321532.P10448869165628364764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8, 16] fun n a =>
  A268448 (a (n - 1) - 1).toNat

end

end A321532.P10448869165628364764

/-!
# A321535: Number of different ways a grasshopper can take n hops without landing on the same point more than once.

The programs for A321535, there is no canonical definition to state claims against.
-/

/-! ## A321535.P10160563983357098688

`A084618(A263358(n)+2)`
-/

namespace A321535.P10160563983357098688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084618 (A263358 n + 2).toNat

end

end A321535.P10160563983357098688

/-! ## A321535.P5628270545147232538

`or(A170980(n), A204164(A228862(n+1)))`
-/

namespace A321535.P5628270545147232538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A170980 n) (A204164 (A228862 (n + 1)).toNat)

end

end A321535.P5628270545147232538

/-! ## A321535.P12036570385292211710

`floor(A001792(n)/A131753(n+1))`
-/

namespace A321535.P12036570385292211710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001792 n : ℚ) / (A131753 (n + 1) : ℚ)⌋

end

end A321535.P12036570385292211710

/-! ## A321535.P1599656639309746595

`A329129(or(A329146(n+2), A329163(n)))`
-/

namespace A321535.P1599656639309746595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329129 (Int.lor (A329146 (n + 2)) (A329163 n)).toNat

end

end A321535.P1599656639309746595

/-!
# A321536: Write n in base 10, lengthen all the runs of successive identical digits by 1.

The programs for A321536, there is no canonical definition to state claims against.
-/

/-! ## A321536.P785688843830008010

`A106612(A338754(n)-n)+n`
-/

namespace A321536.P785688843830008010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (A338754 n - (n : ℤ)).toNat + (n : ℤ)

end

end A321536.P785688843830008010

/-! ## A321536.P12656764494406393079

`A321797(A338754(n)-(n-n*(1-val(∏{p}[n, #], 11)))/11)`
-/

namespace A321536.P12656764494406393079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 (SequenceMachineLib.roundAway ((A338754 n : ℚ) - ((n : ℤ) - (n : ℤ) * (1 - (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), p) 11 : ℤ)) : ℚ) / 11)).toNat

end

end A321536.P12656764494406393079

/-! ## A321536.P3974113100758771461

`A321797(A338754(n)-(n-n*(1-val(∏{p}[n, #], 11)))%10)`
-/

namespace A321536.P3974113100758771461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 (A338754 n - Int.tmod ((n : ℤ) - (n : ℤ) * (1 - (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), p) 11 : ℤ))) 10).toNat

end

end A321536.P3974113100758771461

/-! ## A321536.P12053015187937758413

`A321538(A338754(n)-A107846(n))`
-/

namespace A321536.P12053015187937758413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321538 (A338754 n - A107846 n).toNat

end

end A321536.P12053015187937758413

/-! ## A321536.P8919091078672676539

`A321797(A338754(n)-A107846(n))`
-/

namespace A321536.P8919091078672676539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 (A338754 n - A107846 n).toNat

end

end A321536.P8919091078672676539

/-! ## A321536.P494434938138296881

`A321538(A338754(n)-A321537(n))`
-/

namespace A321536.P494434938138296881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321538 (A338754 n - A321537 n).toNat

end

end A321536.P494434938138296881

/-! ## A321536.P4414504897804540788

`A321797(A338754(n)-A321537(n))`
-/

namespace A321536.P4414504897804540788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 (A338754 n - A321537 n).toNat

end

end A321536.P4414504897804540788

/-! ## A321536.P12386922515512772514

`A321538(xor(A015582(n), A338754(n)))`
-/

namespace A321536.P12386922515512772514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321538 (Int.xor (A015582 n) (A338754 n)).toNat

end

end A321536.P12386922515512772514

/-! ## A321536.P11390008247921609372

`A321797(xor(A015582(n), A338754(n)))`
-/

namespace A321536.P11390008247921609372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 (Int.xor (A015582 n) (A338754 n)).toNat

end

end A321536.P11390008247921609372

/-! ## A321536.P3194329772676585466

`A321538(xor(A100910(n), A338754(n)))`
-/

namespace A321536.P3194329772676585466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321538 (Int.xor (A100910 n) (A338754 n)).toNat

end

end A321536.P3194329772676585466

/-! ## A321536.P7459240962535044009

`A321797(xor(A100910(n), A338754(n)))`
-/

namespace A321536.P7459240962535044009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 (Int.xor (A100910 n) (A338754 n)).toNat

end

end A321536.P7459240962535044009

/-! ## A321536.P10826348665194747365

`A321538(xor(A107846(n), A338754(n)))`
-/

namespace A321536.P10826348665194747365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321538 (Int.xor (A107846 n) (A338754 n)).toNat

end

end A321536.P10826348665194747365

/-!
# A321537: Write n in base 10, shorten all the runs of successive identical digits by 1.

The programs for A321537, there is no canonical definition to state claims against.
-/

/-! ## A321537.P18386108833129781491

`A217657(A233583(n+1)-(n-A321538(n)))`
-/

namespace A321537.P18386108833129781491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 (A233583 (n + 1) - ((n : ℤ) - A321538 n)).toNat

end

end A321537.P18386108833129781491

/-! ## A321537.P10046993142427519377

`ceil(A321804(n)/11)`
-/

namespace A321537.P10046993142427519377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A321804 n : ℚ) / 11⌉

end

end A321537.P10046993142427519377

/-! ## A321537.P4117583166845708546

`A059995(abs(A321804(n)))`
-/

namespace A321537.P4117583166845708546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 |A321804 n|.toNat

end

end A321537.P4117583166845708546

/-! ## A321537.P15229206106493582005

`A217657(abs(A321804(n)))`
-/

namespace A321537.P15229206106493582005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 |A321804 n|.toNat

end

end A321537.P15229206106493582005

/-! ## A321537.P64292330699401017

`floor(A016825(abs(A321804(n)))/40)`
-/

namespace A321537.P64292330699401017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A016825 |A321804 n|.toNat : ℚ) / 40⌋

end

end A321537.P64292330699401017

/-! ## A321537.P2657108925707086462

`A217657(lcm(A000030(n), A321804(n)))`
-/

namespace A321537.P2657108925707086462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 (Int.lcm (A000030 n) (A321804 n))

end

end A321537.P2657108925707086462

/-! ## A321537.P4244244874033418842

`A059995(gcd(A047813(n), A347689(n)))`
-/

namespace A321537.P4244244874033418842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (Int.gcd (A047813 n) (A347689 n))

end

end A321537.P4244244874033418842

/-! ## A321537.P16392219044503257535

`A000030(4*23*A321538(n))`
-/

namespace A321537.P16392219044503257535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (4 * (23 * A321538 n)).toNat

end

end A321537.P16392219044503257535

/-! ## A321537.P15670387587246533269

`A137564(A321538(n)^A107846(n)!)`
-/

namespace A321537.P15670387587246533269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A321538 n ^ Nat.factorial (A107846 n).toNat).toNat

end

end A321537.P15670387587246533269

/-! ## A321537.P3708547669481573359

`A000030(lcm(n-A000030(n), A321538(n)))`
-/

namespace A321537.P3708547669481573359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (Int.lcm ((n : ℤ) - A000030 n) (A321538 n))

end

end A321537.P3708547669481573359

/-! ## A321537.P9099416298118192152

`A000079(A094497(n))*A137564(A321538(n))`
-/

namespace A321537.P9099416298118192152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A094497 n).toNat * A137564 (A321538 n).toNat

end

end A321537.P9099416298118192152

/-! ## A321537.P15416706358425981806

`A010880(A321536(n))`
-/

namespace A321537.P15416706358425981806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010880 (A321536 n).toNat

end

end A321537.P15416706358425981806

/-! ## A321537.P17036957210863612372

`A137564(A321797(n)%A256824(n+1))`
-/

namespace A321537.P17036957210863612372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (Int.tmod (A321797 n) (A256824 (n + 1))).toNat

end

end A321537.P17036957210863612372

/-!
# A321538: a(n) = A321536(A321537(n)).

The programs for A321538, there is no canonical definition to state claims against.
-/

/-! ## A321538.P12773204998626313119

`A321536(A321537(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A321538.P12773204998626313119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321536 (A321537 n).toNat

end

end A321538.P12773204998626313119

/-! ## A321538.P1541708037264835218

`A321797(10*(1-A196368(n))*A321797(n))`
-/

namespace A321538.P1541708037264835218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 (10 * ((1 - A196368 n) * A321797 n)).toNat

end

end A321538.P1541708037264835218

/-! ## A321538.P12650351400230509552

`A178358(A321537(n))%A120776(n+1)`
-/

namespace A321538.P12650351400230509552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178358 (A321537 n).toNat) (A120776 (n + 1))

end

end A321538.P12650351400230509552

/-! ## A321538.P5574071854109344236

`A178358(A321537(n))%A321780(n)`
-/

namespace A321538.P5574071854109344236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178358 (A321537 n).toNat) (A321780 (n + 10))

end

end A321538.P5574071854109344236

/-! ## A321538.P13102315859335349741

`A321800(n)%(A332550(n)^A321537(n))`
-/

namespace A321538.P13102315859335349741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321800 n) (SequenceMachineLib.roundAway ((A332550 n : ℚ) ^ (A321537 n : ℤ)))

end

end A321538.P13102315859335349741

/-! ## A321538.P10255286281201875294

`A321797(abs(A321804(n)))`
-/

namespace A321538.P10255286281201875294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 |A321804 n|.toNat

end

end A321538.P10255286281201875294

/-! ## A321538.P13752362494295731332

`A321804(n)+A196368(n)`
-/

namespace A321538.P13752362494295731332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 n + A196368 n

end

end A321538.P13752362494295731332

/-! ## A321538.P7690781719483952011

`A003056(A161680(A321804(n)+1))`
-/

namespace A321538.P7690781719483952011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A161680 (A321804 n + 1).toNat).toNat

end

end A321538.P7690781719483952011

/-! ## A321538.P16318254563418282406

`A321797(gcd(A321797(n), A321804(n)))`
-/

namespace A321538.P16318254563418282406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 (Int.gcd (A321797 n) (A321804 n))

end

end A321538.P16318254563418282406

/-! ## A321538.P592599964817882569

`A321804(n)+A000007(A321804(n)+1)`
-/

namespace A321538.P592599964817882569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 n + A000007 (A321804 n + 1).toNat

end

end A321538.P592599964817882569

/-! ## A321538.P6892066408446702929

`C(A321797(n), A014963(A261906(n+2)))`
-/

namespace A321538.P6892066408446702929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A321797 n).toNat (A014963 (A261906 (n + 2)).toNat).toNat

end

end A321538.P6892066408446702929

/-!
# A321539: 3^n with digits rearranged into nonincreasing order.

The programs for A321539, there is no canonical definition to state claims against.
-/

/-! ## A321539.P16928972954459467389

`A004186(A000244(n))`
-/

namespace A321539.P16928972954459467389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A000244 n).toNat

end

end A321539.P16928972954459467389

/-! ## A321539.P11128672607942250050

`A321540(n)+A151949(3^n)`
-/

namespace A321539.P11128672607942250050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321540 n + A151949 (3 ^ n)

end

end A321539.P11128672607942250050

/-! ## A321539.P13816882242515286650

`A004086(A321540(n*A139337(n)))`
-/

namespace A321539.P13816882242515286650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A321540 ((n : ℤ) * A139337 n).toNat).toNat

end

end A321539.P13816882242515286650

/-! ## A321539.P10308857700565576226

`A004086(A213217(n)*A321540(n))`
-/

namespace A321539.P10308857700565576226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A213217 n * A321540 n).toNat

end

end A321539.P10308857700565576226

/-! ## A321539.P9027942584498265120

`A004086(A321540(n)^A139337(n))`
-/

namespace A321539.P9027942584498265120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway ((A321540 n : ℚ) ^ (A139337 n : ℤ))).toNat

end

end A321539.P9027942584498265120

/-!
# A321540: 3^n with digits rearranged into nondecreasing order.

The programs for A321540, there is no canonical definition to state claims against.
-/

/-! ## A321540.P14800652841276362566

`A004185(A000244(n))`
-/

namespace A321540.P14800652841276362566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A000244 n).toNat

end

end A321540.P14800652841276362566

/-! ## A321540.P17294740221943977205

`A321539(n)-A151949(3^n)`
-/

namespace A321540.P17294740221943977205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321539 n - A151949 (3 ^ n)

end

end A321540.P17294740221943977205

/-! ## A321540.P12074550768463656042

`A004185(3^n)`
-/

namespace A321540.P12074550768463656042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (3 ^ n)

end

end A321540.P12074550768463656042

/-! ## A321540.P8145678234469170471

`A328447(3^n)`
-/

namespace A321540.P8145678234469170471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 (3 ^ n)

end

end A321540.P8145678234469170471

/-! ## A321540.P11690057579596669543

`A070196(3^n)-3^n`
-/

namespace A321540.P11690057579596669543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070196 (3 ^ n) - (3 ^ n : ℤ)

end

end A321540.P11690057579596669543

/-!
# A321541: a(0)=1; thereafter a(n) = 3*a(n-1) with digits rearranged into nonincreasing order.

The programs for A321541, there is no canonical definition to state claims against.
-/

/-! ## A321541.P9623507269906865209

`A004186(3*a(n-1))` with `a(0)=1`
-/

namespace A321541.P9623507269906865209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004186 (3 * a (n - 1)).toNat

end

end A321541.P9623507269906865209

/-! ## A321541.P6442235340379242664

`A227362(3*a(n-1))` with `a(0)=1`
-/

namespace A321541.P6442235340379242664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A227362 (3 * a (n - 1)).toNat

end

end A321541.P6442235340379242664

/-!
# A321542: a(0)=1; thereafter a(n) = 3*a(n-1) with digits rearranged into nondecreasing order.

The programs for A321542, there is no canonical definition to state claims against.
-/

/-! ## A321542.P14967046236759059310

`A004185(3*a(n-1))` with `a(0)=1`
-/

namespace A321542.P14967046236759059310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004185 (3 * a (n - 1)).toNat

end

end A321542.P14967046236759059310

/-!
# A321543: a(n) = Sum_{d|n} (-1)^(d-1)*d^2.

The programs for A321543, the canonical program `A321543.P5394241305421290770` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321543 has offset 1).

The definition of A321543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321543.P4350299050362542218

`-∑{d}[n+1, #²*(-1)^#]`
-/

namespace A321543.P4350299050362542218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n), (d ^ 2 : ℤ) * (-1) ^ d)

end

end A321543.P4350299050362542218

namespace A321543

/-- `-∑{d}[n+1, #²*(-1)^#]` -/
def P4350299050362542218.Spec : Prop :=
  ∀ n, P4350299050362542218.a n = A321543 (n + 1)

end A321543

/-! ## A321543.P5394241305421290770

`∑{d}[n+1, A162395(#)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A321543

/-- `∑{d}[n+1, A162395(#)]` -/
def P5394241305421290770.Spec : Prop :=
  ∀ n, P5394241305421290770.a n = A321543 (n + 1)

theorem P5394241305421290770.correct : P5394241305421290770.Spec := by
  intro n
  simp only [A321543, Nat.add_sub_cancel]

end A321543

/-! ## A321543.P9961220359052777634

`(-1)^n*A064027(n+1)`
-/

namespace A321543.P9961220359052777634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A064027 (n + 1)

end

end A321543.P9961220359052777634

namespace A321543

/-- `(-1)^n*A064027(n+1)` -/
def P9961220359052777634.Spec : Prop :=
  ∀ n, P9961220359052777634.a n = A321543 (n + 1)

end A321543

/-! ## A321543.P17727396218990121604

`A320900(n+1)-A363022(n+1)`
-/

namespace A321543.P17727396218990121604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320900 (n + 1) - A363022 (n + 1)

end

end A321543.P17727396218990121604

namespace A321543

/-- `A320900(n+1)-A363022(n+1)` -/
def P17727396218990121604.Spec : Prop :=
  ∀ n, P17727396218990121604.a n = A321543 (n + 1)

end A321543

/-! ## A321543.P401781842885456430

`A320901(n+1)-A363617(n+1)`
-/

namespace A321543.P401781842885456430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320901 (n + 1) - A363617 (n + 1)

end

end A321543.P401781842885456430

namespace A321543

/-- `A320901(n+1)-A363617(n+1)` -/
def P401781842885456430.Spec : Prop :=
  ∀ n, P401781842885456430.a n = A321543 (n + 1)

end A321543

/-! ## A321543.P11889211516999840641

`2*A050999(n+1)-A001157(n+1)`
-/

namespace A321543.P11889211516999840641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050999 (n + 1) - A001157 (n + 1)

end

end A321543.P11889211516999840641

namespace A321543

/-- `2*A050999(n+1)-A001157(n+1)` -/
def P11889211516999840641.Spec : Prop :=
  ∀ n, P11889211516999840641.a n = A321543 (n + 1)

end A321543

/-! ## A321543.P17140567468789242917

`2*A320900(n+1)-A002129(n+1)`
-/

namespace A321543.P17140567468789242917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A320900 (n + 1) - A002129 (n + 1)

end

end A321543.P17140567468789242917

namespace A321543

/-- `2*A320900(n+1)-A002129(n+1)` -/
def P17140567468789242917.Spec : Prop :=
  ∀ n, P17140567468789242917.a n = A321543 (n + 1)

end A321543

/-! ## A321543.P9088355702782627282

`(2-A296306(n+1))*A050999(n+1)`
-/

namespace A321543.P9088355702782627282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A296306 (n + 1)) * A050999 (n + 1)

end

end A321543.P9088355702782627282

namespace A321543

/-- `(2-A296306(n+1))*A050999(n+1)` -/
def P9088355702782627282.Spec : Prop :=
  ∀ n, P9088355702782627282.a n = A321543 (n + 1)

end A321543

/-! ## A321543.P14231586291901321247

`A002129(n+1)-2*A363022(n+1)`
-/

namespace A321543.P14231586291901321247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (n + 1) - 2 * A363022 (n + 1)

end

end A321543.P14231586291901321247

namespace A321543

/-- `A002129(n+1)-2*A363022(n+1)` -/
def P14231586291901321247.Spec : Prop :=
  ∀ n, P14231586291901321247.a n = A321543 (n + 1)

end A321543

/-! ## A321543.P14348445692661212791

`∑{d}[n+1, A000005(#)*A338547((n+1)/#)]`
-/

namespace A321543.P14348445692661212791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A338547 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321543.P14348445692661212791

namespace A321543

/-- `∑{d}[n+1, A000005(#)*A338547((n+1)/#)]` -/
def P14348445692661212791.Spec : Prop :=
  ∀ n, P14348445692661212791.a n = A321543 (n + 1)

end A321543

/-! ## A321543.P9707558948600548908

`∑{d}[n+1, A023900(#)*A326238((n+1)/#)]`
-/

namespace A321543.P9707558948600548908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A326238 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321543.P9707558948600548908

namespace A321543

/-- `∑{d}[n+1, A023900(#)*A326238((n+1)/#)]` -/
def P9707558948600548908.Spec : Prop :=
  ∀ n, P9707558948600548908.a n = A321543 (n + 1)

end A321543

/-! ## A321543.P838905443410832407

`∑{d}[n+1, A048298(#)*A321558((n+1)/#)]`
-/

namespace A321543.P838905443410832407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048298 d * A321558 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321543.P838905443410832407

namespace A321543

/-- `∑{d}[n+1, A048298(#)*A321558((n+1)/#)]` -/
def P838905443410832407.Spec : Prop :=
  ∀ n, P838905443410832407.a n = A321543 (n + 1)

end A321543

/-! ## A321543.P4243463666168670543

`∑{d}[n+1, A138501(#)*A374366((n+1)/#)]`
-/

namespace A321543.P4243463666168670543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A138501 d * A374366 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321543.P4243463666168670543

namespace A321543

/-- `∑{d}[n+1, A138501(#)*A374366((n+1)/#)]` -/
def P4243463666168670543.Spec : Prop :=
  ∀ n, P4243463666168670543.a n = A321543 (n + 1)

end A321543

/-! ## A321543.P5660390408879070470

`∑{d}[n+1, A099894(#-1)*A321558((n+1)/#)]`
-/

namespace A321543.P5660390408879070470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099894 (d - 1) * A321558 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321543.P5660390408879070470

namespace A321543

/-- `∑{d}[n+1, A099894(#-1)*A321558((n+1)/#)]` -/
def P5660390408879070470.Spec : Prop :=
  ∀ n, P5660390408879070470.a n = A321543 (n + 1)

end A321543

/-! ## A321543.P10875466864539291789

`2*A001157(A000265(n+1))-A001157(n+1)`
-/

namespace A321543.P10875466864539291789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001157 (A000265 (n + 1)).toNat - A001157 (n + 1)

end

end A321543.P10875466864539291789

namespace A321543

/-- `2*A001157(A000265(n+1))-A001157(n+1)` -/
def P10875466864539291789.Spec : Prop :=
  ∀ n, P10875466864539291789.a n = A321543 (n + 1)

end A321543

/-! ## A321543.P16730821911071177402

`(2-A002450(A001511(n+1)))*A050999(n+1)`
-/

namespace A321543.P16730821911071177402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A002450 (A001511 (n + 1)).toNat) * A050999 (n + 1)

end

end A321543.P16730821911071177402

namespace A321543

/-- `(2-A002450(A001511(n+1)))*A050999(n+1)` -/
def P16730821911071177402.Spec : Prop :=
  ∀ n, P16730821911071177402.a n = A321543 (n + 1)

end A321543

/-! ## A321543.P13315633250205036323

`A321558(n+1)+A328667(n+1)-A064027(n+1)`
-/

namespace A321543.P13315633250205036323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321558 (n + 1) + (A328667 (n + 1) - A064027 (n + 1))

end

end A321543.P13315633250205036323

namespace A321543

/-- `A321558(n+1)+A328667(n+1)-A064027(n+1)` -/
def P13315633250205036323.Spec : Prop :=
  ∀ n, P13315633250205036323.a n = A321543 (n + 1)

end A321543

/-! ## A321543.P3380223880835808932

`A320900(n+1)+A363615(n+1)-A325940(n+1)`
-/

namespace A321543.P3380223880835808932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320900 (n + 1) + (A363615 (n + 1) - A325940 (n + 1))

end

end A321543.P3380223880835808932

namespace A321543

/-- `A320900(n+1)+A363615(n+1)-A325940(n+1)` -/
def P3380223880835808932.Spec : Prop :=
  ∀ n, P3380223880835808932.a n = A321543 (n + 1)

end A321543

/-! ## A321543.P10602689949849475016

`A320901(n+1)+A363598(n+1)-A363022(n+1)`
-/

namespace A321543.P10602689949849475016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320901 (n + 1) + (A363598 (n + 1) - A363022 (n + 1))

end

end A321543.P10602689949849475016

namespace A321543

/-- `A320901(n+1)+A363598(n+1)-A363022(n+1)` -/
def P10602689949849475016.Spec : Prop :=
  ∀ n, P10602689949849475016.a n = A321543 (n + 1)

end A321543

/-! ## A321543.P5427468304754788454

`A320901(n+1)+A363616(n+1)-A363615(n+1)`
-/

namespace A321543.P5427468304754788454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320901 (n + 1) + (A363616 (n + 1) - A363615 (n + 1))

end

end A321543.P5427468304754788454

namespace A321543

/-- `A320901(n+1)+A363616(n+1)-A363615(n+1)` -/
def P5427468304754788454.Spec : Prop :=
  ∀ n, P5427468304754788454.a n = A321543 (n + 1)

end A321543

/-!
# A321544: a(n) = Sum_{d|n} (-1)^(d-1)*d^5.

The programs for A321544, the canonical program `A321544.P13685944617958708160` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321544 has offset 1).

The definition of A321544 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321544.P13685944617958708160

`2*A051002(n+1)-A001160(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A321544

/-- `2*A051002(n+1)-A001160(n+1)` -/
def P13685944617958708160.Spec : Prop :=
  ∀ n, P13685944617958708160.a n = A321544 (n + 1)

theorem P13685944617958708160.correct : P13685944617958708160.Spec := by
  intro n
  simp only [A321544, Nat.add_sub_cancel]

end A321544

/-! ## A321544.P235078408416332517

`∑{d}[n+1, A048298(#)*A321561((n+1)/#)]`
-/

namespace A321544.P235078408416332517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048298 d * A321561 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321544.P235078408416332517

namespace A321544

/-- `∑{d}[n+1, A048298(#)*A321561((n+1)/#)]` -/
def P235078408416332517.Spec : Prop :=
  ∀ n, P235078408416332517.a n = A321544 (n + 1)

end A321544

/-! ## A321544.P4474835841589953362

`∑{d}[n+1, A099894(#-1)*A321561((n+1)/#)]`
-/

namespace A321544.P4474835841589953362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099894 (d - 1) * A321561 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321544.P4474835841589953362

namespace A321544

/-- `∑{d}[n+1, A099894(#-1)*A321561((n+1)/#)]` -/
def P4474835841589953362.Spec : Prop :=
  ∀ n, P4474835841589953362.a n = A321544 (n + 1)

end A321544

/-! ## A321544.P1507093800430834407

`2*A001160(A000265(n+1))-A001160(n+1)`
-/

namespace A321544.P1507093800430834407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001160 (A000265 (n + 1)).toNat - A001160 (n + 1)

end

end A321544.P1507093800430834407

namespace A321544

/-- `2*A001160(A000265(n+1))-A001160(n+1)` -/
def P1507093800430834407.Spec : Prop :=
  ∀ n, P1507093800430834407.a n = A321544 (n + 1)

end A321544

/-! ## A321544.P6838614060037490206

`A035036(n+1)/8`
-/

namespace A321544.P6838614060037490206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035036 (n + 1) : ℚ) / 8

end

end A321544.P6838614060037490206

namespace A321544

/-- `A035036(n+1)/8` -/
def P6838614060037490206.Spec : Prop :=
  ∀ n, P6838614060037490206.a n = (A321544 (n + 1) : ℚ)

end A321544

/-! ## A321544.P10470032692003454759

`∑{d}[n+1, #²²*A181983(#)]`
-/

namespace A321544.P10470032692003454759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d ^ 2) ^ 2 : ℤ) * A181983 d

end

end A321544.P10470032692003454759

namespace A321544

/-- `∑{d}[n+1, #²²*A181983(#)]` -/
def P10470032692003454759.Spec : Prop :=
  ∀ n, P10470032692003454759.a n = A321544 (n + 1)

end A321544

/-!
# A321545: a(n) = Sum_{d|n} (-1)^(d-1)*d^6.

The programs for A321545, the canonical program `A321545.P12467316956730240130` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321545 has offset 1).

The definition of A321545 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321545.P12467316956730240130

`∑{d}[n+1, #²²*A162395(#)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A321545

/-- `∑{d}[n+1, #²²*A162395(#)]` -/
def P12467316956730240130.Spec : Prop :=
  ∀ n, P12467316956730240130.a n = A321545 (n + 1)

theorem P12467316956730240130.correct : P12467316956730240130.Spec := by
  intro n
  simp only [A321545, Nat.add_sub_cancel]

end A321545

/-! ## A321545.P8334419241841162135

`2*A321810(n+1)-A013954(n+1)`
-/

namespace A321545.P8334419241841162135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321810 (n + 1) - A013954 (n + 1)

end

end A321545.P8334419241841162135

namespace A321545

/-- `2*A321810(n+1)-A013954(n+1)` -/
def P8334419241841162135.Spec : Prop :=
  ∀ n, P8334419241841162135.a n = A321545 (n + 1)

end A321545

/-! ## A321545.P14470273410483334097

`∑{d}[n+1, A099894(#-1)*A321562((n+1)/#)]`
-/

namespace A321545.P14470273410483334097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099894 (d - 1) * A321562 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321545.P14470273410483334097

namespace A321545

/-- `∑{d}[n+1, A099894(#-1)*A321562((n+1)/#)]` -/
def P14470273410483334097.Spec : Prop :=
  ∀ n, P14470273410483334097.a n = A321545 (n + 1)

end A321545

/-! ## A321545.P7818168031691531444

`2*A013954(A000265(n+1))-A013954(n+1)`
-/

namespace A321545.P7818168031691531444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013954 (A000265 (n + 1)).toNat - A013954 (n + 1)

end

end A321545.P7818168031691531444

namespace A321545

/-- `2*A013954(A000265(n+1))-A013954(n+1)` -/
def P7818168031691531444.Spec : Prop :=
  ∀ n, P7818168031691531444.a n = A321545 (n + 1)

end A321545

/-! ## A321545.P3697106327177088812

`∑{d}[n+1, (#*A181983(#))^3]`
-/

namespace A321545.P3697106327177088812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) * A181983 d) ^ 3

end

end A321545.P3697106327177088812

namespace A321545

/-- `∑{d}[n+1, (#*A181983(#))^3]` -/
def P3697106327177088812.Spec : Prop :=
  ∀ n, P3697106327177088812.a n = A321545 (n + 1)

end A321545

/-!
# A321546: a(n) = Sum_{d|n} (-1)^(d-1)*d^7.

The programs for A321546, the canonical program `A321546.P12649713767068310389` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321546 has offset 1).

The definition of A321546 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321546.P12649713767068310389

`∑{d}[n+1, #*#²²*A162395(#)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A321546

/-- `∑{d}[n+1, #*#²²*A162395(#)]` -/
def P12649713767068310389.Spec : Prop :=
  ∀ n, P12649713767068310389.a n = A321546 (n + 1)

theorem P12649713767068310389.correct : P12649713767068310389.Spec := by
  intro n
  simp only [A321546, Nat.add_sub_cancel]

end A321546

/-! ## A321546.P9007297727625061506

`2*A321811(n+1)-A013955(n+1)`
-/

namespace A321546.P9007297727625061506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321811 (n + 1) - A013955 (n + 1)

end

end A321546.P9007297727625061506

namespace A321546

/-- `2*A321811(n+1)-A013955(n+1)` -/
def P9007297727625061506.Spec : Prop :=
  ∀ n, P9007297727625061506.a n = A321546 (n + 1)

end A321546

/-! ## A321546.P7615174909544956291

`∑{d}[n+1, A099894(#-1)*A321563((n+1)/#)]`
-/

namespace A321546.P7615174909544956291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099894 (d - 1) * A321563 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321546.P7615174909544956291

namespace A321546

/-- `∑{d}[n+1, A099894(#-1)*A321563((n+1)/#)]` -/
def P7615174909544956291.Spec : Prop :=
  ∀ n, P7615174909544956291.a n = A321546 (n + 1)

end A321546

/-! ## A321546.P185949057244792951

`2*A013955(A000265(n+1))-A013955(n+1)`
-/

namespace A321546.P185949057244792951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013955 (A000265 (n + 1)).toNat - A013955 (n + 1)

end

end A321546.P185949057244792951

namespace A321546

/-- `2*A013955(A000265(n+1))-A013955(n+1)` -/
def P185949057244792951.Spec : Prop :=
  ∀ n, P185949057244792951.a n = A321546 (n + 1)

end A321546

/-! ## A321546.P10388215590860398185

`∑{d}[n+1, A181983(#)^7]`
-/

namespace A321546.P10388215590860398185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A181983 d ^ 7

end

end A321546.P10388215590860398185

namespace A321546

/-- `∑{d}[n+1, A181983(#)^7]` -/
def P10388215590860398185.Spec : Prop :=
  ∀ n, P10388215590860398185.a n = A321546 (n + 1)

end A321546

/-!
# A321547: a(n) = Sum_{d|n} (-1)^(d-1)*d^8.

The programs for A321547, the canonical program `A321547.P15690247661382810148` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321547 has offset 1).

The definition of A321547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321547.P15690247661382810148

`2*A321812(n+1)-A013956(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A321547

/-- `2*A321812(n+1)-A013956(n+1)` -/
def P15690247661382810148.Spec : Prop :=
  ∀ n, P15690247661382810148.a n = A321547 (n + 1)

theorem P15690247661382810148.correct : P15690247661382810148.Spec := by
  intro n
  simp only [A321547, Nat.add_sub_cancel]

end A321547

/-! ## A321547.P13260179879158480851

`∑{d}[n+1, A099894(#-1)*A321564((n+1)/#)]`
-/

namespace A321547.P13260179879158480851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099894 (d - 1) * A321564 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321547.P13260179879158480851

namespace A321547

/-- `∑{d}[n+1, A099894(#-1)*A321564((n+1)/#)]` -/
def P13260179879158480851.Spec : Prop :=
  ∀ n, P13260179879158480851.a n = A321547 (n + 1)

end A321547

/-! ## A321547.P14197965175310657371

`2*A013956(A000265(n+1))-A013956(n+1)`
-/

namespace A321547.P14197965175310657371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013956 (A000265 (n + 1)).toNat - A013956 (n + 1)

end

end A321547.P14197965175310657371

namespace A321547

/-- `2*A013956(A000265(n+1))-A013956(n+1)` -/
def P14197965175310657371.Spec : Prop :=
  ∀ n, P14197965175310657371.a n = A321547 (n + 1)

end A321547

/-!
# A321548: a(n) = Sum_{d|n} (-1)^(d-1)*d^9.

The programs for A321548, the canonical program `A321548.P14602039721236023997` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321548 has offset 1).

The definition of A321548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321548.P14602039721236023997

`2*A321813(n+1)-A013957(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A321548

/-- `2*A321813(n+1)-A013957(n+1)` -/
def P14602039721236023997.Spec : Prop :=
  ∀ n, P14602039721236023997.a n = A321548 (n + 1)

theorem P14602039721236023997.correct : P14602039721236023997.Spec := by
  intro n
  simp only [A321548, Nat.add_sub_cancel]

end A321548

/-! ## A321548.P14112595440473455073

`∑{d}[n+1, A099894(#-1)*A321565((n+1)/#)]`
-/

namespace A321548.P14112595440473455073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099894 (d - 1) * A321565 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321548.P14112595440473455073

namespace A321548

/-- `∑{d}[n+1, A099894(#-1)*A321565((n+1)/#)]` -/
def P14112595440473455073.Spec : Prop :=
  ∀ n, P14112595440473455073.a n = A321548 (n + 1)

end A321548

/-! ## A321548.P939977529362611752

`2*A013957(A000265(n+1))-A013957(n+1)`
-/

namespace A321548.P939977529362611752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013957 (A000265 (n + 1)).toNat - A013957 (n + 1)

end

end A321548.P939977529362611752

namespace A321548

/-- `2*A013957(A000265(n+1))-A013957(n+1)` -/
def P939977529362611752.Spec : Prop :=
  ∀ n, P939977529362611752.a n = A321548 (n + 1)

end A321548

/-! ## A321548.P14746676341410294415

`∑{d}[n+1, (A181983(#)^3)^3]`
-/

namespace A321548.P14746676341410294415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A181983 d ^ 3) ^ 3

end

end A321548.P14746676341410294415

namespace A321548

/-- `∑{d}[n+1, (A181983(#)^3)^3]` -/
def P14746676341410294415.Spec : Prop :=
  ∀ n, P14746676341410294415.a n = A321548 (n + 1)

end A321548

/-!
# A321549: a(n) = Sum_{d|n} (-1)^(d-1)*d^10.

The programs for A321549, the canonical program `A321549.P10078138351214375187` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321549 has offset 1).

The definition of A321549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321549.P10078138351214375187

`2*A321814(n+1)-A013958(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A321549

/-- `2*A321814(n+1)-A013958(n+1)` -/
def P10078138351214375187.Spec : Prop :=
  ∀ n, P10078138351214375187.a n = A321549 (n + 1)

theorem P10078138351214375187.correct : P10078138351214375187.Spec := by
  intro n
  simp only [A321549, Nat.add_sub_cancel]

end A321549

/-! ## A321549.P4224283437262084550

`∑{d}[n+1, A099894(#-1)*A321807((n+1)/#)]`
-/

namespace A321549.P4224283437262084550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099894 (d - 1) * A321807 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321549.P4224283437262084550

namespace A321549

/-- `∑{d}[n+1, A099894(#-1)*A321807((n+1)/#)]` -/
def P4224283437262084550.Spec : Prop :=
  ∀ n, P4224283437262084550.a n = A321549 (n + 1)

end A321549

/-! ## A321549.P5162664772073246269

`2*A013958(A000265(n+1))-A013958(n+1)`
-/

namespace A321549.P5162664772073246269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013958 (A000265 (n + 1)).toNat - A013958 (n + 1)

end

end A321549.P5162664772073246269

namespace A321549

/-- `2*A013958(A000265(n+1))-A013958(n+1)` -/
def P5162664772073246269.Spec : Prop :=
  ∀ n, P5162664772073246269.a n = A321549 (n + 1)

end A321549

/-! ## A321549.P1306705747563027574

`∑{d}[n+1, #*(A181983(#)^3)^3]`
-/

namespace A321549.P1306705747563027574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * (A181983 d ^ 3) ^ 3

end

end A321549.P1306705747563027574

namespace A321549

/-- `∑{d}[n+1, #*(A181983(#)^3)^3]` -/
def P1306705747563027574.Spec : Prop :=
  ∀ n, P1306705747563027574.a n = A321549 (n + 1)

end A321549

/-! ## A321549.P1649481292901098164

`abs(A321807(2*(n+1)))-A321819(2*(n+1))`
-/

namespace A321549.P1649481292901098164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321807 (2 * (n + 1))| - A321819 (2 * (n + 1))

end

end A321549.P1649481292901098164

namespace A321549

/-- `abs(A321807(2*(n+1)))-A321819(2*(n+1))` -/
def P1649481292901098164.Spec : Prop :=
  ∀ n, P1649481292901098164.a n = A321549 (n + 1)

end A321549

/-! ## A321549.P5444664935532242685

`-(A321819(2*n+2)+A321807(2*n+2))`
-/

namespace A321549.P5444664935532242685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A321819 (2 * n + 2) + A321807 (2 * n + 2))

end

end A321549.P5444664935532242685

namespace A321549

/-- `-(A321819(2*n+2)+A321807(2*n+2))` -/
def P5444664935532242685.Spec : Prop :=
  ∀ n, P5444664935532242685.a n = A321549 (n + 1)

end A321549

/-!
# A321550: a(n) = Sum_{d|n} (-1)^(d-1)*d^11.

The programs for A321550, the canonical program `A321550.P13648365977055260050` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321550 has offset 1).

The definition of A321550 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321550.P1168249871135258223

`2*A321815(n+1)-A013959(n+1)`
-/

namespace A321550.P1168249871135258223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321815 (n + 1) - A013959 (n + 1)

end

end A321550.P1168249871135258223

namespace A321550

/-- `2*A321815(n+1)-A013959(n+1)` -/
def P1168249871135258223.Spec : Prop :=
  ∀ n, P1168249871135258223.a n = A321550 (n + 1)

end A321550

/-! ## A321550.P4516891319491036112

`2*A321815(n+1)-A282548(n+1)/(n+1)`
-/

namespace A321550.P4516891319491036112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A321815 (n + 1) : ℚ) - (A282548 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A321550.P4516891319491036112

namespace A321550

/-- `2*A321815(n+1)-A282548(n+1)/(n+1)` -/
def P4516891319491036112.Spec : Prop :=
  ∀ n, P4516891319491036112.a n = (A321550 (n + 1) : ℚ)

end A321550

/-! ## A321550.P8103364336213734843

`∑{d}[n+1, A099894(#-1)*A321808((n+1)/#)]`
-/

namespace A321550.P8103364336213734843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099894 (d - 1) * A321808 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321550.P8103364336213734843

namespace A321550

/-- `∑{d}[n+1, A099894(#-1)*A321808((n+1)/#)]` -/
def P8103364336213734843.Spec : Prop :=
  ∀ n, P8103364336213734843.a n = A321550 (n + 1)

end A321550

/-! ## A321550.P13648365977055260050

`2*A013959(A000265(n+1))-A013959(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A321550

/-- `2*A013959(A000265(n+1))-A013959(n+1)` -/
def P13648365977055260050.Spec : Prop :=
  ∀ n, P13648365977055260050.a n = A321550 (n + 1)

theorem P13648365977055260050.correct : P13648365977055260050.Spec := by
  intro n
  simp only [A321550, Nat.add_sub_cancel]

end A321550

/-!
# A321551: a(n) = Sum_{d|n} (-1)^(d-1)*d^12.

The programs for A321551, the canonical program `A321551.P1996104429312605513` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321551 has offset 1).

The definition of A321551 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321551.P1996104429312605513

`∑{d}[n+1, #^12*#%2]+∑{d}[n+1, #^12*#%2]-∑{d}[n+1, #^12]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A321551

/-- `∑{d}[n+1, #^12*#%2]+∑{d}[n+1, #^12*#%2]-∑{d}[n+1, #^12]` -/
def P1996104429312605513.Spec : Prop :=
  ∀ n, P1996104429312605513.a n = A321551 (n + 1)

theorem P1996104429312605513.correct : P1996104429312605513.Spec := by
  intro n
  simp only [A321551, Nat.add_sub_cancel]

end A321551

/-! ## A321551.P7896069961296785116

`2*A321816(n+1)-A013960(n+1)`
-/

namespace A321551.P7896069961296785116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321816 (n + 1) - A013960 (n + 1)

end

end A321551.P7896069961296785116

namespace A321551

/-- `2*A321816(n+1)-A013960(n+1)` -/
def P7896069961296785116.Spec : Prop :=
  ∀ n, P7896069961296785116.a n = A321551 (n + 1)

end A321551

/-! ## A321551.P7607137627522009171

`∑{d}[n+1, A099894(#-1)*A321809((n+1)/#)]`
-/

namespace A321551.P7607137627522009171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099894 (d - 1) * A321809 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321551.P7607137627522009171

namespace A321551

/-- `∑{d}[n+1, A099894(#-1)*A321809((n+1)/#)]` -/
def P7607137627522009171.Spec : Prop :=
  ∀ n, P7607137627522009171.a n = A321551 (n + 1)

end A321551

/-! ## A321551.P9146997091064616154

`2*A013960(A000265(n+1))-A013960(n+1)`
-/

namespace A321551.P9146997091064616154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013960 (A000265 (n + 1)).toNat - A013960 (n + 1)

end

end A321551.P9146997091064616154

namespace A321551

/-- `2*A013960(A000265(n+1))-A013960(n+1)` -/
def P9146997091064616154.Spec : Prop :=
  ∀ n, P9146997091064616154.a n = A321551 (n + 1)

end A321551

/-! ## A321551.P17146980293367752472

`abs(A321809(2*(n+1)))-A321820(2*(n+1))`
-/

namespace A321551.P17146980293367752472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321809 (2 * (n + 1))| - A321820 (2 * (n + 1))

end

end A321551.P17146980293367752472

namespace A321551

/-- `abs(A321809(2*(n+1)))-A321820(2*(n+1))` -/
def P17146980293367752472.Spec : Prop :=
  ∀ n, P17146980293367752472.a n = A321551 (n + 1)

end A321551

/-!
# A321552: a(n) = Sum_{d|n} (-1)^(n/d+1)*d^7.

The programs for A321552, the canonical program `A321552.P13686257285163986569` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321552 has offset 1).

The definition of A321552 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321552.P13686257285163986569

`∑{d}[2*(n+1), ((n+1)%#)^7]+∑{d}[2*(n+1), ((n+1)%#)^7]-∑{d}[n+1, #^7]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A321552

/-- `∑{d}[2*(n+1), ((n+1)%#)^7]+∑{d}[2*(n+1), ((n+1)%#)^7]-∑{d}[n+1, #^7]` -/
def P13686257285163986569.Spec : Prop :=
  ∀ n, P13686257285163986569.a n = A321552 (n + 1)

theorem P13686257285163986569.correct : P13686257285163986569.Spec := by
  intro n
  simp only [A321552, Nat.add_sub_cancel]

end A321552

/-! ## A321552.P15889404683069450117

`2*A096961(n+1)-A013955(n+1)`
-/

namespace A321552.P15889404683069450117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096961 (n + 1) - A013955 (n + 1)

end

end A321552.P15889404683069450117

namespace A321552

/-- `2*A096961(n+1)-A013955(n+1)` -/
def P15889404683069450117.Spec : Prop :=
  ∀ n, P15889404683069450117.a n = A321552 (n + 1)

end A321552

/-! ## A321552.P14911760048374339689

`∑{d}[n+1, A048272(#)*A069092((n+1)/#)]`
-/

namespace A321552.P14911760048374339689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048272 d * A069092 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321552.P14911760048374339689

namespace A321552

/-- `∑{d}[n+1, A048272(#)*A069092((n+1)/#)]` -/
def P14911760048374339689.Spec : Prop :=
  ∀ n, P14911760048374339689.a n = A321552 (n + 1)

end A321552

/-! ## A321552.P15442234263726800718

`∑{d}[n+1, A239442(#)*A284927((n+1)/#)]`
-/

namespace A321552.P15442234263726800718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A239442 d * A284927 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321552.P15442234263726800718

namespace A321552

/-- `∑{d}[n+1, A239442(#)*A284927((n+1)/#)]` -/
def P15442234263726800718.Spec : Prop :=
  ∀ n, P15442234263726800718.a n = A321552 (n + 1)

end A321552

/-! ## A321552.P17267564612818834875

`A322081(A056000(n+4)+3)`
-/

namespace A321552.P17267564612818834875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322081 (A056000 (n + 4) + 3).toNat

end

end A321552.P17267564612818834875

namespace A321552

/-- `A322081(A056000(n+4)+3)` -/
def P17267564612818834875.Spec : Prop :=
  ∀ n, P17267564612818834875.a n = A321552 (n + 1)

end A321552

/-!
# A321553: a(n) = Sum_{d|n} (-1)^(n/d+1)*d^8.

The programs for A321553, the canonical program `A321553.P1101805715336315510` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321553 has offset 1).

The definition of A321553 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321553.P9568494621007179044

`∑{d}[n+1, A048272(#)*A069093((n+1)/#)]`
-/

namespace A321553.P9568494621007179044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048272 d * A069093 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321553.P9568494621007179044

namespace A321553

/-- `∑{d}[n+1, A048272(#)*A069093((n+1)/#)]` -/
def P9568494621007179044.Spec : Prop :=
  ∀ n, P9568494621007179044.a n = A321553 (n + 1)

end A321553

/-! ## A321553.P1101805715336315510

`∑{d}[n+1, A306412(#)*A321552((n+1)/#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A321553

/-- `∑{d}[n+1, A306412(#)*A321552((n+1)/#)]` -/
def P1101805715336315510.Spec : Prop :=
  ∀ n, P1101805715336315510.a n = A321553 (n + 1)

theorem P1101805715336315510.correct : P1101805715336315510.Spec := by
  intro n
  simp only [A321553, Nat.add_sub_cancel]

end A321553

/-!
# A321554: a(n) = Sum_{d|n} (-1)^(n/d+1)*d^9.

The programs for A321554, the canonical program `A321554.P17355879643679807199` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321554 has offset 1).

The definition of A321554 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321554.P17355879643679807199

`2*∑{d}[2*(n+1), ((n+1)%#)^9]-∑{d}[n+1, #^9]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A321554

/-- `2*∑{d}[2*(n+1), ((n+1)%#)^9]-∑{d}[n+1, #^9]` -/
def P17355879643679807199.Spec : Prop :=
  ∀ n, P17355879643679807199.a n = A321554 (n + 1)

theorem P17355879643679807199.correct : P17355879643679807199.Spec := by
  intro n
  simp only [A321554, Nat.add_sub_cancel]

end A321554

/-! ## A321554.P8588223326968403098

`2*A096962(n+1)-A013957(n+1)`
-/

namespace A321554.P8588223326968403098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096962 (n + 1) - A013957 (n + 1)

end

end A321554.P8588223326968403098

namespace A321554

/-- `2*A096962(n+1)-A013957(n+1)` -/
def P8588223326968403098.Spec : Prop :=
  ∀ n, P8588223326968403098.a n = A321554 (n + 1)

end A321554

/-! ## A321554.P2316483539364101823

`∑{d}[n+1, A048272(#)*A069094((n+1)/#)]`
-/

namespace A321554.P2316483539364101823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048272 d * A069094 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321554.P2316483539364101823

namespace A321554

/-- `∑{d}[n+1, A048272(#)*A069094((n+1)/#)]` -/
def P2316483539364101823.Spec : Prop :=
  ∀ n, P2316483539364101823.a n = A321554 (n + 1)

end A321554

/-! ## A321554.P11296022816653466458

`∑{d}[n+1, A239443(#)*A321553((n+1)/#)]`
-/

namespace A321554.P11296022816653466458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A239443 d * A321553 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321554.P11296022816653466458

namespace A321554

/-- `∑{d}[n+1, A239443(#)*A321553((n+1)/#)]` -/
def P11296022816653466458.Spec : Prop :=
  ∀ n, P11296022816653466458.a n = A321554 (n + 1)

end A321554

/-!
# A321555: a(n) = Sum_{d|n} (-1)^(n/d+1)*d^10.

The programs for A321555, the canonical program `A321555.P2088311004678496036` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321555 has offset 1).

The definition of A321555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321555.P2088311004678496036

`2*A321819(n+1)-A013958(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A321555

/-- `2*A321819(n+1)-A013958(n+1)` -/
def P2088311004678496036.Spec : Prop :=
  ∀ n, P2088311004678496036.a n = A321555 (n + 1)

theorem P2088311004678496036.correct : P2088311004678496036.Spec := by
  intro n
  simp only [A321555, Nat.add_sub_cancel]

end A321555

/-! ## A321555.P17563034170974851862

`∑{d}[n+1, A048272(#)*A069095((n+1)/#)]`
-/

namespace A321555.P17563034170974851862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048272 d * A069095 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321555.P17563034170974851862

namespace A321555

/-- `∑{d}[n+1, A048272(#)*A069095((n+1)/#)]` -/
def P17563034170974851862.Spec : Prop :=
  ∀ n, P17563034170974851862.a n = A321555 (n + 1)

end A321555

/-!
# A321556: a(n) = Sum_{d|n} (-1)^(n/d+1)*d^11.

The programs for A321556, the canonical program `A321556.P12238147563848284171` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321556 has offset 1).

The definition of A321556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321556.P12238147563848284171

`2*A096963(n+1)-A013959(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A321556

/-- `2*A096963(n+1)-A013959(n+1)` -/
def P12238147563848284171.Spec : Prop :=
  ∀ n, P12238147563848284171.a n = A321556 (n + 1)

theorem P12238147563848284171.correct : P12238147563848284171.Spec := by
  intro n
  simp only [A321556, Nat.add_sub_cancel]

end A321556

/-! ## A321556.P16652440529087961626

`A322081(eq[12, A193739(n)]+1)`
-/

namespace A321556.P16652440529087961626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322081 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A321556.P16652440529087961626

namespace A321556

/-- `A322081(eq[12, A193739(n)]+1)` -/
def P16652440529087961626.Spec : Prop :=
  ∀ n, P16652440529087961626.a n = A321556 (n + 1)

end A321556

/-!
# A321557: a(n) = Sum_{d|n} (-1)^(n/d+1)*d^12.

The programs for A321557, the canonical program `A321557.P6768147823998546681` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321557 has offset 1).

The definition of A321557 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321557.P6768147823998546681

`2*∑{d}[2*(n+1), ((n+1)%#)^12]-∑{d}[n+1, #^12]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A321557

/-- `2*∑{d}[2*(n+1), ((n+1)%#)^12]-∑{d}[n+1, #^12]` -/
def P6768147823998546681.Spec : Prop :=
  ∀ n, P6768147823998546681.a n = A321557 (n + 1)

theorem P6768147823998546681.correct : P6768147823998546681.Spec := by
  intro n
  simp only [A321557, Nat.add_sub_cancel]

end A321557

/-! ## A321557.P10833142314869754308

`2*A321820(n+1)-A013960(n+1)`
-/

namespace A321557.P10833142314869754308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321820 (n + 1) - A013960 (n + 1)

end

end A321557.P10833142314869754308

namespace A321557

/-- `2*A321820(n+1)-A013960(n+1)` -/
def P10833142314869754308.Spec : Prop :=
  ∀ n, P10833142314869754308.a n = A321557 (n + 1)

end A321557

/-!
# A321558: a(n) = Sum_{d divides n} (-1)^(d + n/d) * d^2.

The programs for A321558, the canonical program `A321558.P12462631284997704157` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321558 has offset 1).

The definition of A321558 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321558.P12462631284997704157

`∑{d}[n+1, (-1)^(#+(n+1)/#)*#²]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A321558

/-- `∑{d}[n+1, (-1)^(#+(n+1)/#)*#²]` -/
def P12462631284997704157.Spec : Prop :=
  ∀ n, P12462631284997704157.a n = (A321558 (n + 1) : ℝ)

end A321558

/-! ## A321558.P11297647531171652247

`A033999(n)*A328667(n+1)`
-/

namespace A321558.P11297647531171652247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A328667 (n + 1)

end

end A321558.P11297647531171652247

namespace A321558

/-- `A033999(n)*A328667(n+1)` -/
def P11297647531171652247.Spec : Prop :=
  ∀ n, P11297647531171652247.a n = A321558 (n + 1)

end A321558

/-! ## A321558.P15371840452300738968

`(1-A010673(n))*A328667(n+1)`
-/

namespace A321558.P15371840452300738968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010673 n) * A328667 (n + 1)

end

end A321558.P15371840452300738968

namespace A321558

/-- `(1-A010673(n))*A328667(n+1)` -/
def P15371840452300738968.Spec : Prop :=
  ∀ n, P15371840452300738968.a n = A321558 (n + 1)

end A321558

/-! ## A321558.P9530197417154369878

`A057077(A057077(n)+n)*A328667(n+1)`
-/

namespace A321558.P9530197417154369878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A057077 n + (n : ℤ)).toNat * A328667 (n + 1)

end

end A321558.P9530197417154369878

namespace A321558

/-- `A057077(A057077(n)+n)*A328667(n+1)` -/
def P9530197417154369878.Spec : Prop :=
  ∀ n, P9530197417154369878.a n = A321558 (n + 1)

end A321558

/-! ## A321558.P5975342375158949758

`ratio[A057077(n)]*A328667(n+1)`
-/

namespace A321558.P5975342375158949758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A328667 (n + 1) : ℚ)

end

end A321558.P5975342375158949758

namespace A321558

/-- `ratio[A057077(n)]*A328667(n+1)` -/
def P5975342375158949758.Spec : Prop :=
  ∀ n, P5975342375158949758.a n = (A321558 (n + 1) : ℚ)

end A321558

/-! ## A321558.P13397571567716800145

`A328667(n+1)/A033999(n+2)`
-/

namespace A321558.P13397571567716800145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328667 (n + 1) : ℚ) / (A033999 (n + 2) : ℚ)

end

end A321558.P13397571567716800145

namespace A321558

/-- `A328667(n+1)/A033999(n+2)` -/
def P13397571567716800145.Spec : Prop :=
  ∀ n, P13397571567716800145.a n = (A321558 (n + 1) : ℚ)

end A321558

/-! ## A321558.P10147512216599014757

`A057077(2*n)*A328667(n+1)`
-/

namespace A321558.P10147512216599014757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A328667 (n + 1)

end

end A321558.P10147512216599014757

namespace A321558

/-- `A057077(2*n)*A328667(n+1)` -/
def P10147512216599014757.Spec : Prop :=
  ∀ n, P10147512216599014757.a n = A321558 (n + 1)

end A321558

/-! ## A321558.P7520707884518953835

`A034947(A005408(n))*A328667(n+1)`
-/

namespace A321558.P7520707884518953835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A005408 n).toNat * A328667 (n + 1)

end

end A321558.P7520707884518953835

namespace A321558

/-- `A034947(A005408(n))*A328667(n+1)` -/
def P7520707884518953835.Spec : Prop :=
  ∀ n, P7520707884518953835.a n = A321558 (n + 1)

end A321558

/-!
# A321559: a(n) = Sum_{d divides n} (-1)^(d + n/d) * d^3.

The programs for A321559, the canonical program `A321559.P11317829133015055579` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321559 has offset 1).

The definition of A321559 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321559.P11317829133015055579

`∑{d}[n+1, (-1)^(#+(n+1)/#)*#^3]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A321559

/-- `∑{d}[n+1, (-1)^(#+(n+1)/#)*#^3]` -/
def P11317829133015055579.Spec : Prop :=
  ∀ n, P11317829133015055579.a n = (A321559 (n + 1) : ℝ)

end A321559

/-! ## A321559.P6271691355027224157

`A291124(2*(n+1))/16`
-/

namespace A321559.P6271691355027224157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291124 (2 * (n + 1)) : ℚ) / 16

end

end A321559.P6271691355027224157

namespace A321559

/-- `A291124(2*(n+1))/16` -/
def P6271691355027224157.Spec : Prop :=
  ∀ n, P6271691355027224157.a n = (A321559 (n + 1) : ℚ)

end A321559

/-! ## A321559.P18081902807440047388

`A322083(∑[n+4]+3)`
-/

namespace A321559.P18081902807440047388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322083 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A321559.P18081902807440047388

namespace A321559

/-- `A322083(∑[n+4]+3)` -/
def P18081902807440047388.Spec : Prop :=
  ∀ n, P18081902807440047388.a n = A321559 (n + 1)

end A321559

/-! ## A321559.P17229407892984112226

`A322083(A027379(n+2))+A063524(2*(n+2))`
-/

namespace A321559.P17229407892984112226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322083 (A027379 (n + 2)).toNat + A063524 (2 * (n + 2))

end

end A321559.P17229407892984112226

namespace A321559

/-- `A322083(A027379(n+2))+A063524(2*(n+2))` -/
def P17229407892984112226.Spec : Prop :=
  ∀ n, P17229407892984112226.a n = A321559 (n + 1)

end A321559

/-!
# A321560: a(n) = Sum_{d divides n} (-1)^(d + n/d) * d^4.

The programs for A321560, the canonical program `A321560.P2665513989729621072` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321560 has offset 1).

The definition of A321560 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321560.P2665513989729621072

`∑{d}[n+1, (-1)^(#+(n+1)/#)*#^4]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A321560

/-- `∑{d}[n+1, (-1)^(#+(n+1)/#)*#^4]` -/
def P2665513989729621072.Spec : Prop :=
  ∀ n, P2665513989729621072.a n = (A321560 (n + 1) : ℝ)

end A321560

/-! ## A321560.P2944725677723286954

`A322083(∑[n+5]+6)`
-/

namespace A321560.P2944725677723286954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322083 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A321560.P2944725677723286954

namespace A321560

/-- `A322083(∑[n+5]+6)` -/
def P2944725677723286954.Spec : Prop :=
  ∀ n, P2944725677723286954.a n = A321560 (n + 1)

end A321560

/-!
# A321561: a(n) = Sum_{d divides n} (-1)^(d + n/d) * d^5.

The programs for A321561, the canonical program `A321561.P14391384673962346235` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321561 has offset 1).

The definition of A321561 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321561.P14391384673962346235

`∑{d}[n+1, (-1)^(#+(n+1)/#)*#^5]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A321561

/-- `∑{d}[n+1, (-1)^(#+(n+1)/#)*#^5]` -/
def P14391384673962346235.Spec : Prop :=
  ∀ n, P14391384673962346235.a n = (A321561 (n + 1) : ℝ)

end A321561

/-! ## A321561.P15519389517044307407

`A322083(C(n+7, 2)-5)`
-/

namespace A321561.P15519389517044307407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322083 (Nat.choose (n + 7) 2 - 5)

end

end A321561.P15519389517044307407

namespace A321561

/-- `A322083(C(n+7, 2)-5)` -/
def P15519389517044307407.Spec : Prop :=
  ∀ n, P15519389517044307407.a n = A321561 (n + 1)

end A321561

/-! ## A321561.P4617513654522691882

`A322083(eq[3, A219347(n)])`
-/

namespace A321561.P4617513654522691882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322083 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321561.P4617513654522691882

namespace A321561

/-- `A322083(eq[3, A219347(n)])` -/
def P4617513654522691882.Spec : Prop :=
  ∀ n, P4617513654522691882.a n = A321561 (n + 1)

end A321561

/-! ## A321561.P13745579872892783403

`A322083(eq[5, A193592(n)])`
-/

namespace A321561.P13745579872892783403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322083 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321561.P13745579872892783403

namespace A321561

/-- `A322083(eq[5, A193592(n)])` -/
def P13745579872892783403.Spec : Prop :=
  ∀ n, P13745579872892783403.a n = A321561 (n + 1)

end A321561

/-!
# A321562: a(n) = Sum_{d divides n} (-1)^(d + n/d) * d^6.

The programs for A321562, the canonical program `A321562.P3792317256419595123` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321562 has offset 1).

The definition of A321562 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321562.P3792317256419595123

`∑{d}[n+1, (-1)^(#+(n+1)/#)*#^6]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A321562

/-- `∑{d}[n+1, (-1)^(#+(n+1)/#)*#^6]` -/
def P3792317256419595123.Spec : Prop :=
  ∀ n, P3792317256419595123.a n = (A321562 (n + 1) : ℝ)

end A321562

/-! ## A321562.P7266840866548169292

`A322083(C(n+7, 2)+n+1)`
-/

namespace A321562.P7266840866548169292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322083 (Nat.choose (n + 7) 2 + (n + 1))

end

end A321562.P7266840866548169292

namespace A321562

/-- `A322083(C(n+7, 2)+n+1)` -/
def P7266840866548169292.Spec : Prop :=
  ∀ n, P7266840866548169292.a n = A321562 (n + 1)

end A321562

/-! ## A321562.P14673171869948623117

`A322083(eq[6, A193592(n)])`
-/

namespace A321562.P14673171869948623117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322083 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321562.P14673171869948623117

namespace A321562

/-- `A322083(eq[6, A193592(n)])` -/
def P14673171869948623117.Spec : Prop :=
  ∀ n, P14673171869948623117.a n = A321562 (n + 1)

end A321562

/-! ## A321562.P6445384101127710117

`A322083(eq[7, A152157(n)])`
-/

namespace A321562.P6445384101127710117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322083 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321562.P6445384101127710117

namespace A321562

/-- `A322083(eq[7, A152157(n)])` -/
def P6445384101127710117.Spec : Prop :=
  ∀ n, P6445384101127710117.a n = A321562 (n + 1)

end A321562

/-!
# A321563: a(n) = Sum_{d divides n} (-1)^(d + n/d) * d^7.

The programs for A321563, the canonical program `A321563.P9336933713652051471` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321563 has offset 1).

The definition of A321563 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321563.P9336933713652051471

`∑{d}[n+1, (-1)^(#+(n+1)/#)*#^7]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A321563

/-- `∑{d}[n+1, (-1)^(#+(n+1)/#)*#^7]` -/
def P9336933713652051471.Spec : Prop :=
  ∀ n, P9336933713652051471.a n = (A321563 (n + 1) : ℝ)

end A321563

/-! ## A321563.P11297018709289586568

`A322083(eq[7, A193592(n)])`
-/

namespace A321563.P11297018709289586568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322083 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321563.P11297018709289586568

namespace A321563

/-- `A322083(eq[7, A193592(n)])` -/
def P11297018709289586568.Spec : Prop :=
  ∀ n, P11297018709289586568.a n = A321563 (n + 1)

end A321563

/-!
# A321564: a(n) = Sum_{d divides n} (-1)^(d + n/d) * d^8.

The programs for A321564, the canonical program `A321564.P4482586884843372727` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321564 has offset 1).

The definition of A321564 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321564.P4482586884843372727

`∑{d}[n+1, (-1)^(#+(n+1)/#)*#^8]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A321564

/-- `∑{d}[n+1, (-1)^(#+(n+1)/#)*#^8]` -/
def P4482586884843372727.Spec : Prop :=
  ∀ n, P4482586884843372727.a n = (A321564 (n + 1) : ℝ)

end A321564

/-! ## A321564.P3679305680480434342

`A322083(A000217(n+8)+n+1)`
-/

namespace A321564.P3679305680480434342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322083 (A000217 (n + 8) + (n + 1 : ℤ)).toNat

end

end A321564.P3679305680480434342

namespace A321564

/-- `A322083(A000217(n+8)+n+1)` -/
def P3679305680480434342.Spec : Prop :=
  ∀ n, P3679305680480434342.a n = A321564 (n + 1)

end A321564

/-!
# A321565: a(n) = Sum_{d divides n} (-1)^(d + n/d) * d^9.

The programs for A321565, the canonical program `A321565.P16856931828979008566` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321565 has offset 1).

The definition of A321565 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321565.P16856931828979008566

`∑{d}[n+1, (-1)^(#+(n+1)/#)*#^9]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A321565

/-- `∑{d}[n+1, (-1)^(#+(n+1)/#)*#^9]` -/
def P16856931828979008566.Spec : Prop :=
  ∀ n, P16856931828979008566.a n = (A321565 (n + 1) : ℝ)

end A321565

/-! ## A321565.P5341224163726700815

`A322083(A000217(n+9)+n+1)`
-/

namespace A321565.P5341224163726700815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322083 (A000217 (n + 9) + (n + 1 : ℤ)).toNat

end

end A321565.P5341224163726700815

namespace A321565

/-- `A322083(A000217(n+9)+n+1)` -/
def P5341224163726700815.Spec : Prop :=
  ∀ n, P5341224163726700815.a n = A321565 (n + 1)

end A321565

/-!
# A321566: Expansion of Product_{1 <= i_1 <= i_2 <= i_3 <= i_4} 1/(1 - x^(i_1*i_2*i_3*i_4)).

The programs for A321566, there is no canonical definition to state claims against.
-/

/-! ## A321566.P5196655123495371948

`A066739(n)-A044941(A016116(n))`
-/

namespace A321566.P5196655123495371948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066739 n - A044941 (A016116 n).toNat

end

end A321566.P5196655123495371948

/-! ## A321566.P2050966022719075679

`A066739(n)-A185284(A087731(n))`
-/

namespace A321566.P2050966022719075679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066739 n - A185284 (A087731 n).toNat

end

end A321566.P2050966022719075679

/-! ## A321566.P12479593906107812630

`A066739(n)+A010815((3*(n+1))²)`
-/

namespace A321566.P12479593906107812630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066739 n + A010815 ((3 * (n + 1)) ^ 2)

end

end A321566.P12479593906107812630

/-! ## A321566.P1005284892865259957

`A066739(n)-A185284(A325132(n))`
-/

namespace A321566.P1005284892865259957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066739 n - A185284 (A325132 n).toNat

end

end A321566.P1005284892865259957

/-! ## A321566.P18225385896418044550

`A066739(n)-A121373(A000290(3*(n+1)))`
-/

namespace A321566.P18225385896418044550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066739 n - A121373 (A000290 (3 * (n + 1))).toNat

end

end A321566.P18225385896418044550

/-!
# A321567: Expansion of Product_{1 <= i_1 <= i_2 <= i_3 <= i_4} (1 + x^(i_1*i_2*i_3*i_4)).

The programs for A321567, there is no canonical definition to state claims against.
-/

/-! ## A321567.P16407050033948516307

`A066806(n)-A044941(A016116(n))`
-/

namespace A321567.P16407050033948516307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066806 n - A044941 (A016116 n).toNat

end

end A321567.P16407050033948516307

/-! ## A321567.P6457574323256985650

`A066806(n)-A185284(A087731(n))`
-/

namespace A321567.P6457574323256985650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066806 n - A185284 (A087731 n).toNat

end

end A321567.P6457574323256985650

/-! ## A321567.P14134560235438435317

`A066806(n)-A185284(A325132(n))`
-/

namespace A321567.P14134560235438435317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066806 n - A185284 (A325132 n).toNat

end

end A321567.P14134560235438435317

/-!
# A321573: Row sums of A321624.

The programs for A321573, the canonical program `A321573.P16205666929647914005` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321573 has offset 0).

The definition of A321573 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321573.P16205666929647914005

`2*a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=2, a(2)=8`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A321573

/-- `2*a(n-1)+3*a(n-2)` -/
def P16205666929647914005.Spec : Prop :=
  ∀ n, (P16205666929647914005.a n : ℤ) = A321573 n

theorem P16205666929647914005.correct : P16205666929647914005.Spec := by
  intro n
  simp only [A321573]

end A321573

/-! ## A321573.P3887967270469137417

`ogf((1+x^2)/(1-2x-3x^2))`
-/

namespace A321573.P3887967270469137417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -2, -3] n

end

end A321573.P3887967270469137417

namespace A321573

/-- `ogf((1+x^2)/(1-2x-3x^2))` -/
def P3887967270469137417.Spec : Prop :=
  ∀ n, P3887967270469137417.a n = A321573 n

end A321573

/-! ## A321573.P7244374350820087307

`-xor(2, -(3*a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A321573.P7244374350820087307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  -Int.xor 2 (-(3 * a (n - 1)))

end

end A321573.P7244374350820087307

namespace A321573

/-- `-xor(2, -(3*a(n-1)))` -/
def P7244374350820087307.Spec : Prop :=
  ∀ n, P7244374350820087307.a n = A321573 n

end A321573

/-! ## A321573.P8643595955085422863

`xor(2, 3*a(n-1)-1)+1` with `a(0)=1, a(1)=2`
-/

namespace A321573.P8643595955085422863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.xor 2 (3 * a (n - 1) - 1) + 1

end

end A321573.P8643595955085422863

namespace A321573

/-- `xor(2, 3*a(n-1)-1)+1` -/
def P8643595955085422863.Spec : Prop :=
  ∀ n, P8643595955085422863.a n = A321573 n

end A321573

/-! ## A321573.P17284074831081178280

`1-xor(2, 1-3*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A321573.P17284074831081178280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 - Int.xor 2 (1 - 3 * a (n - 1))

end

end A321573.P17284074831081178280

namespace A321573

/-- `1-xor(2, 1-3*a(n-1))` -/
def P17284074831081178280.Spec : Prop :=
  ∀ n, P17284074831081178280.a n = A321573 n

end A321573

/-! ## A321573.P10852216153807399185

`A062107(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A321573.P10852216153807399185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A062107 (n + 2) - a (n - 1)

end

end A321573.P10852216153807399185

namespace A321573

/-- `A062107(n+2)-a(n-1)` -/
def P10852216153807399185.Spec : Prop :=
  ∀ n, P10852216153807399185.a n = A321573 n

end A321573

/-! ## A321573.P14570147133768031488

`A005052(n-2)-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A321573.P14570147133768031488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A005052 (n - 2) - a (n - 1)

end

end A321573.P14570147133768031488

namespace A321573

/-- `A005052(n-2)-a(n-1)` -/
def P14570147133768031488.Spec : Prop :=
  ∀ n, P14570147133768031488.a n = A321573 n

end A321573

/-! ## A321573.P17062574711745906797

`A140429(n)+A046717(n)`
-/

namespace A321573.P17062574711745906797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + A046717 n

end

end A321573.P17062574711745906797

namespace A321573

/-- `A140429(n)+A046717(n)` -/
def P17062574711745906797.Spec : Prop :=
  ∀ n, P17062574711745906797.a n = A321573 n

end A321573

/-! ## A321573.P5683858293065657763

`A133494(n)+A080925(n)`
-/

namespace A321573.P5683858293065657763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 n + A080925 n

end

end A321573.P5683858293065657763

namespace A321573

/-- `A133494(n)+A080925(n)` -/
def P5683858293065657763.Spec : Prop :=
  ∀ n, P5683858293065657763.a n = A321573 n

end A321573

/-! ## A321573.P14703257397966599218

`A052929(n)-A124302(n)`
-/

namespace A321573.P14703257397966599218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052929 n - A124302 n

end

end A321573.P14703257397966599218

namespace A321573

/-- `A052929(n)-A124302(n)` -/
def P14703257397966599218.Spec : Prop :=
  ∀ n, P14703257397966599218.a n = A321573 n

end A321573

/-! ## A321573.P2756052687240473143

`A123183(n+1)+A052929(n)`
-/

namespace A321573.P2756052687240473143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123183 (n + 1) + A052929 n

end

end A321573.P2756052687240473143

namespace A321573

/-- `A123183(n+1)+A052929(n)` -/
def P2756052687240473143.Spec : Prop :=
  ∀ n, P2756052687240473143.a n = A321573 n

end A321573

/-! ## A321573.P14306166012175296004

`A090327(n+1)-A166920(n)`
-/

namespace A321573.P14306166012175296004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090327 (n + 1) - A166920 n

end

end A321573.P14306166012175296004

namespace A321573

/-- `A090327(n+1)-A166920(n)` -/
def P14306166012175296004.Spec : Prop :=
  ∀ n, P14306166012175296004.a n = A321573 n

end A321573

/-! ## A321573.P6306196887735088416

`A120463(2*n)+A040001(n)`
-/

namespace A321573.P6306196887735088416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120463 (2 * n) + A040001 n

end

end A321573.P6306196887735088416

namespace A321573

/-- `A120463(2*n)+A040001(n)` -/
def P6306196887735088416.Spec : Prop :=
  ∀ n, P6306196887735088416.a n = A321573 n

end A321573

/-! ## A321573.P13796213735540629522

`A246360(2*n+1)+1-A040001(n+1)`
-/

namespace A321573.P13796213735540629522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246360 (2 * n + 1) + (1 - A040001 (n + 1))

end

end A321573.P13796213735540629522

namespace A321573

/-- `A246360(2*n+1)+1-A040001(n+1)` -/
def P13796213735540629522.Spec : Prop :=
  ∀ n, P13796213735540629522.a n = A321573 n

end A321573

/-! ## A321573.P7154784925534413720

`A000244(n)+A046717(n)-A025192(n)`
-/

namespace A321573.P7154784925534413720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n + (A046717 n - A025192 n)

end

end A321573.P7154784925534413720

namespace A321573

/-- `A000244(n)+A046717(n)-A025192(n)` -/
def P7154784925534413720.Spec : Prop :=
  ∀ n, P7154784925534413720.a n = A321573 n

end A321573

/-! ## A321573.P11767000615240801298

`A001045(n+1)+A004054(n)-A025192(n)`
-/

namespace A321573.P11767000615240801298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + (A004054 n - A025192 n)

end

end A321573.P11767000615240801298

namespace A321573

/-- `A001045(n+1)+A004054(n)-A025192(n)` -/
def P11767000615240801298.Spec : Prop :=
  ∀ n, P11767000615240801298.a n = A321573 n

end A321573

/-! ## A321573.P16367516443628666528

`A087211(n+1)-(A094039(n)+A011782(n))`
-/

namespace A321573.P16367516443628666528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087211 (n + 1) - (A094039 n + A011782 n)

end

end A321573.P16367516443628666528

namespace A321573

/-- `A087211(n+1)-(A094039(n)+A011782(n))` -/
def P16367516443628666528.Spec : Prop :=
  ∀ n, P16367516443628666528.a n = A321573 n

end A321573

/-! ## A321573.P2455604836094181228

`A094039(n+1)+A025192(n)-A087211(n)`
-/

namespace A321573.P2455604836094181228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094039 (n + 1) + (A025192 n - A087211 n)

end

end A321573.P2455604836094181228

namespace A321573

/-- `A094039(n+1)+A025192(n)-A087211(n)` -/
def P2455604836094181228.Spec : Prop :=
  ∀ n, P2455604836094181228.a n = A321573 n

end A321573

/-! ## A321573.P9473393796107929721

`A015518(n+1)+A015518(n+1)-A025192(n)`
-/

namespace A321573.P9473393796107929721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 (n + 1) + (A015518 (n + 1) - A025192 n)

end

end A321573.P9473393796107929721

namespace A321573

/-- `A015518(n+1)+A015518(n+1)-A025192(n)` -/
def P9473393796107929721.Spec : Prop :=
  ∀ n, P9473393796107929721.a n = A321573 n

end A321573

/-! ## A321573.P17384428449599144573

`Δ[A025192(n)]-2*A015518(n)`
-/

namespace A321573.P17384428449599144573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A015518 n

end

end A321573.P17384428449599144573

namespace A321573

/-- `Δ[A025192(n)]-2*A015518(n)` -/
def P17384428449599144573.Spec : Prop :=
  ∀ n, P17384428449599144573.a n = A321573 n

end A321573

/-!
# A321574: Row sums of A321623.

The programs for A321574, there is no canonical definition to state claims against.
-/

/-! ## A321574.P15447805621998681364

`A004526(A002203(2*n))+floor(3^(n-1))`
-/

namespace A321574.P15447805621998681364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002203 (2 * n)).toNat + ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A321574.P15447805621998681364

/-! ## A321574.P3341491809246574003

`A072747(A067500(n+1))+A001541(n)`
-/

namespace A321574.P3341491809246574003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072747 (A067500 (n + 1)).toNat + A001541 n

end

end A321574.P3341491809246574003

/-!
# A321577: a(n) = F_n mod M_n, where F_n = 2^(2^n) + 1 and M_n = 2^n - 1.

The programs for A321577, the canonical program `A321577.P6866558407066734621` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321577 has offset 1).

The definition of A321577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 370 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321577.P6866558407066734621

`A000051(A015910(n+1))*A057427(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A321577

/-- `A000051(A015910(n+1))*A057427(n)` -/
def P6866558407066734621.Spec : Prop :=
  ∀ n, P6866558407066734621.a n = A321577 (n + 1)

theorem P6866558407066734621.correct : P6866558407066734621.Spec := by
  intro n
  simp only [A321577, Nat.add_sub_cancel]

end A321577

/-! ## A321577.P5198713523907948261

`A000051(A000325(n+1)%(n+1))%A006127(n)`
-/

namespace A321577.P5198713523907948261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000051 (Int.tmod (A000325 (n + 1)) (n + 1 : ℤ)).toNat) (A006127 n)

end

end A321577.P5198713523907948261

namespace A321577

/-- `A000051(A000325(n+1)%(n+1))%A006127(n)` -/
def P5198713523907948261.Spec : Prop :=
  ∀ n, P5198713523907948261.a n = A321577 (n + 1)

end A321577

/-! ## A321577.P4171373704346104150

`A000051(A005803(n+1)%(n+1))%A006127(n)`
-/

namespace A321577.P4171373704346104150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000051 (Int.tmod (A005803 (n + 1)) (n + 1 : ℤ)).toNat) (A006127 n)

end

end A321577.P4171373704346104150

namespace A321577

/-- `A000051(A005803(n+1)%(n+1))%A006127(n)` -/
def P4171373704346104150.Spec : Prop :=
  ∀ n, P4171373704346104150.a n = A321577 (n + 1)

end A321577

/-! ## A321577.P17498546010929063949

`A000051(A001792(n+1)%(n+1))%A001792(n)`
-/

namespace A321577.P17498546010929063949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000051 (Int.tmod (A001792 (n + 1)) (n + 1 : ℤ)).toNat) (A001792 n)

end

end A321577.P17498546010929063949

namespace A321577

/-- `A000051(A001792(n+1)%(n+1))%A001792(n)` -/
def P17498546010929063949.Spec : Prop :=
  ∀ n, P17498546010929063949.a n = A321577 (n + 1)

end A321577

/-! ## A321577.P11220166758541278113

`A000051(A015910(n+1))%A001700(n)`
-/

namespace A321577.P11220166758541278113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000051 (A015910 (n + 1)).toNat) (A001700 n)

end

end A321577.P11220166758541278113

namespace A321577

/-- `A000051(A015910(n+1))%A001700(n)` -/
def P11220166758541278113.Spec : Prop :=
  ∀ n, P11220166758541278113.a n = A321577 (n + 1)

end A321577

/-! ## A321577.P3352342624192271597

`A000051(A000079(n+1)%(n+1))%A000302(n)`
-/

namespace A321577.P3352342624192271597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000051 (Int.tmod (A000079 (n + 1)) (n + 1 : ℤ)).toNat) (A000302 n)

end

end A321577.P3352342624192271597

namespace A321577

/-- `A000051(A000079(n+1)%(n+1))%A000302(n)` -/
def P3352342624192271597.Spec : Prop :=
  ∀ n, P3352342624192271597.a n = A321577 (n + 1)

end A321577

/-!
# A321578: a(n) is the maximum value of k such that A007504(k) <= prime(n).

The programs for A321578, the canonical program `A321578.P6125892634772298071` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321578 has offset 1).

The definition of A321578 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321578.P17593440980312002045

`A350174(Δ[A007504(n)])`
-/

namespace A321578.P17593440980312002045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350174 (f1 (n + 1) - f1 n).toNat

end

end A321578.P17593440980312002045

namespace A321578

/-- `A350174(Δ[A007504(n)])` -/
def P17593440980312002045.Spec : Prop :=
  ∀ n, P17593440980312002045.a n = A321578 (n + 1)

end A321578

/-! ## A321578.P6125892634772298071

`A350174(A000040(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A321578

/-- `A350174(A000040(n+1))` -/
def P6125892634772298071.Spec : Prop :=
  ∀ n, P6125892634772298071.a n = A321578 (n + 1)

theorem P6125892634772298071.correct : P6125892634772298071.Spec := by
  intro n
  simp only [A321578, Nat.add_sub_cancel]

end A321578

/-! ## A321578.P294572283594921048

`A350174(A008578(n+2))`
-/

namespace A321578.P294572283594921048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350174 (A008578 (n + 2)).toNat

end

end A321578.P294572283594921048

namespace A321578

/-- `A350174(A008578(n+2))` -/
def P294572283594921048.Spec : Prop :=
  ∀ n, P294572283594921048.a n = A321578 (n + 1)

end A321578

/-! ## A321578.P15175169713792389559

`A350174(abs(Δ[A008348(n)]))`
-/

namespace A321578.P15175169713792389559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350174 |f1 (n + 1) - f1 n|.toNat

end

end A321578.P15175169713792389559

namespace A321578

/-- `A350174(abs(Δ[A008348(n)]))` -/
def P15175169713792389559.Spec : Prop :=
  ∀ n, P15175169713792389559.a n = A321578 (n + 1)

end A321578

/-! ## A321578.P1283585756972477486

`A350174(∑{d}[n+1, A007444(#)])`
-/

namespace A321578.P1283585756972477486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350174 (∑ d ∈ Nat.divisors (f1 n), A007444 d).toNat

end

end A321578.P1283585756972477486

namespace A321578

/-- `A350174(∑{d}[n+1, A007444(#)])` -/
def P1283585756972477486.Spec : Prop :=
  ∀ n, P1283585756972477486.a n = A321578 (n + 1)

end A321578

/-! ## A321578.P2341066945267651695

`A350174(A007504(n+1)-A007504(n))`
-/

namespace A321578.P2341066945267651695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350174 (A007504 (n + 1) - A007504 n).toNat

end

end A321578.P2341066945267651695

namespace A321578

/-- `A350174(A007504(n+1)-A007504(n))` -/
def P2341066945267651695.Spec : Prop :=
  ∀ n, P2341066945267651695.a n = A321578 (n + 1)

end A321578

/-! ## A321578.P11214249298682424398

`A350174(A073423(3*(n+1))+A008864(n+1)-1)`
-/

namespace A321578.P11214249298682424398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350174 (A073423 (3 * (n + 1)) + (A008864 (n + 1) - 1)).toNat

end

end A321578.P11214249298682424398

namespace A321578

/-- `A350174(A073423(3*(n+1))+A008864(n+1)-1)` -/
def P11214249298682424398.Spec : Prop :=
  ∀ n, P11214249298682424398.a n = A321578 (n + 1)

end A321578

/-! ## A321578.P12213487662824460114

`A350174(A331417(n+1))`
-/

namespace A321578.P12213487662824460114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350174 (A331417 (n + 1)).toNat

end

end A321578.P12213487662824460114

namespace A321578

/-- `A350174(A331417(n+1))` -/
def P12213487662824460114.Spec : Prop :=
  ∀ n, P12213487662824460114.a n = A321578 (n + 1)

end A321578

/-! ## A321578.P3795088934242873040

`A000523(A003586(A081063(A000961(n+2))))`
-/

namespace A321578.P3795088934242873040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A003586 (A081063 (A000961 (n + 2)).toNat).toNat).toNat

end

end A321578.P3795088934242873040

namespace A321578

/-- `A000523(A003586(A081063(A000961(n+2))))` -/
def P3795088934242873040.Spec : Prop :=
  ∀ n, P3795088934242873040.a n = A321578 (n + 1)

end A321578

/-!
# A321579: Number of n-tuples of 4 elements excluding reverse duplicates and those consisting of repetitions of the same element only.

The programs for A321579, the canonical program `A321579.P4705182213232457677` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321579 has offset 0).

The definition of A321579 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321579.P4705182213232457677

`5*a(n-1)-20*a(n-3)+16*a(n-4)` with `a(0)=0, a(1)=0, a(2)=6, a(3)=36, a(4)=132`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A321579

/-- `5*a(n-1)-20*a(n-3)+16*a(n-4)` -/
def P4705182213232457677.Spec : Prop :=
  ∀ n, P4705182213232457677.a n = A321579 n

theorem P4705182213232457677.correct : P4705182213232457677.Spec := by
  intro n
  simp only [A321579]

end A321579

/-! ## A321579.P7980043545884692348

`(4^∑[n%2]+4^n)/2-ceil(cosh(sin(n)))²`
-/

namespace A321579.P7980043545884692348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ (∑ j ∈ Finset.range (n + 1), f1 j) + 4 ^ n : ℚ) / 2 - (⌈Real.cosh (Real.sin (n : ℝ))⌉ ^ 2 : ℚ)

end

end A321579.P7980043545884692348

namespace A321579

/-- `(4^∑[n%2]+4^n)/2-ceil(cosh(sin(n)))²` -/
def P7980043545884692348.Spec : Prop :=
  ∀ n, P7980043545884692348.a n = (A321579 n : ℚ)

end A321579

/-! ## A321579.P4743555446453042613

`A032121(n)-A123932(n)`
-/

namespace A321579.P4743555446453042613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032121 n - A123932 n

end

end A321579.P4743555446453042613

namespace A321579

/-- `A032121(n)-A123932(n)` -/
def P4743555446453042613.Spec : Prop :=
  ∀ n, P4743555446453042613.a n = A321579 n

end A321579

/-! ## A321579.P9097852428781996373

`A032121(n)-gcd(4, A056450(n))`
-/

namespace A321579.P9097852428781996373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032121 n - (Int.gcd 4 (A056450 n) : ℤ)

end

end A321579.P9097852428781996373

namespace A321579

/-- `A032121(n)-gcd(4, A056450(n))` -/
def P9097852428781996373.Spec : Prop :=
  ∀ n, P9097852428781996373.a n = A321579 n

end A321579

/-! ## A321579.P9155617966821033520

`A032121(n)-(A057427(n)+1)²`
-/

namespace A321579.P9155617966821033520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032121 n - (A057427 n + 1) ^ 2

end

end A321579.P9155617966821033520

namespace A321579

/-- `A032121(n)-(A057427(n)+1)²` -/
def P9155617966821033520.Spec : Prop :=
  ∀ n, P9155617966821033520.a n = A321579 n

end A321579

/-! ## A321579.P2626796258974239561

`A032121(n)-A020639(A008574(n))²`
-/

namespace A321579.P2626796258974239561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032121 n - A020639 (A008574 n).toNat ^ 2

end

end A321579.P2626796258974239561

namespace A321579

/-- `A032121(n)-A020639(A008574(n))²` -/
def P2626796258974239561.Spec : Prop :=
  ∀ n, P2626796258974239561.a n = A321579 n

end A321579

/-! ## A321579.P17356426941618920325

`A032121(n)-A010685(A000040(n+1))`
-/

namespace A321579.P17356426941618920325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032121 n - A010685 (A000040 (n + 1)).toNat

end

end A321579.P17356426941618920325

namespace A321579

/-- `A032121(n)-A010685(A000040(n+1))` -/
def P17356426941618920325.Spec : Prop :=
  ∀ n, P17356426941618920325.a n = A321579 n

end A321579

/-! ## A321579.P13110307195877349828

`A032121(n)-A007426(A006530(n+1))`
-/

namespace A321579.P13110307195877349828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032121 n - A007426 (A006530 (n + 1)).toNat

end

end A321579.P13110307195877349828

namespace A321579

/-- `A032121(n)-A007426(A006530(n+1))` -/
def P13110307195877349828.Spec : Prop :=
  ∀ n, P13110307195877349828.a n = A321579 n

end A321579

/-! ## A321579.P1928673325241974078

`A032121(n)-A007426(A244080(n+1))`
-/

namespace A321579.P1928673325241974078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032121 n - A007426 (A244080 (n + 1)).toNat

end

end A321579.P1928673325241974078

namespace A321579

/-- `A032121(n)-A007426(A244080(n+1))` -/
def P1928673325241974078.Spec : Prop :=
  ∀ n, P1928673325241974078.a n = A321579 n

end A321579

/-!
# A321580: Numbers k such that it is possible to reverse a deck of k cards by a sequence of perfect Faro shuffles with cut.

The programs for A321580, there is no canonical definition to state claims against.
-/

/-! ## A321580.P14137329458050312325

`A014657(n+2)-1`
-/

namespace A321580.P14137329458050312325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 2) - 1

end

end A321580.P14137329458050312325

/-! ## A321580.P3479331990233076277

`∑[abs(Δ[A014657(n+1)])]`
-/

namespace A321580.P3479331990233076277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321580.P3479331990233076277

/-! ## A321580.P16306404284167135481

`eq[1, A321512(n+1)]+1`
-/

namespace A321580.P16306404284167135481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321512 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A321580.P16306404284167135481

/-! ## A321580.P11873513382544944251

`filter[A003485(n), A321512(#)]`
-/

namespace A321580.P11873513382544944251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A321512 (f1 j).toNat = 1) n)

end

end A321580.P11873513382544944251

/-! ## A321580.P1772353063754343302

`filter[A004277(n), A321512(#)]`
-/

namespace A321580.P1772353063754343302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A321512 (f1 j).toNat = 1) n)

end

end A321580.P1772353063754343302

/-! ## A321580.P426343977724018210

`filter[A004279(n), A321512(#)]`
-/

namespace A321580.P426343977724018210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A321512 (f1 j).toNat = 1) n)

end

end A321580.P426343977724018210

/-! ## A321580.P18042070303503827629

`filter[A004271(n+1), A321512(#)]`
-/

namespace A321580.P18042070303503827629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A321512 (f1 j).toNat = 1) n)

end

end A321580.P18042070303503827629

/-! ## A321580.P210930471040369136

`filter[A004272(n+1), A321512(#)]`
-/

namespace A321580.P210930471040369136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A321512 (f1 j).toNat = 1) n)

end

end A321580.P210930471040369136

/-! ## A321580.P1882423515201395646

`filter[A004275(n+1), A321512(#)]`
-/

namespace A321580.P1882423515201395646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A321512 (f1 j).toNat = 1) n)

end

end A321580.P1882423515201395646

/-! ## A321580.P5701807823790633054

`filter[A004278(n+1), A321512(#)]`
-/

namespace A321580.P5701807823790633054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A321512 (f1 j).toNat = 1) n)

end

end A321580.P5701807823790633054

/-! ## A321580.P442322490051007114

`filter[A026200(n+1), A321512(#)]`
-/

namespace A321580.P442322490051007114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A321512 (f1 j).toNat = 1) n)

end

end A321580.P442322490051007114

/-! ## A321580.P15770691356407661371

`filter[A030173(n+1), A321512(#)]`
-/

namespace A321580.P15770691356407661371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A321512 (f1 j).toNat = 1) n)

end

end A321580.P15770691356407661371

/-! ## A321580.P13112009788630153425

`filter[A064745(n+1), A321512(#)]`
-/

namespace A321580.P13112009788630153425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A321512 (f1 j).toNat = 1) n)

end

end A321580.P13112009788630153425

/-! ## A321580.P14062137768881784743

`filter[A066250(n+1), A321512(#)]`
-/

namespace A321580.P14062137768881784743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A321512 (f1 j).toNat = 1) n)

end

end A321580.P14062137768881784743

/-! ## A321580.P1893455271153565761

`filter[A066507(n+1), A321512(#)]`
-/

namespace A321580.P1893455271153565761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A321512 (f1 j).toNat = 1) n)

end

end A321580.P1893455271153565761

/-! ## A321580.P4647080486614749201

`filter[A073897(n+1), A321512(#)]`
-/

namespace A321580.P4647080486614749201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A321512 (f1 j).toNat = 1) n)

end

end A321580.P4647080486614749201

/-! ## A321580.P11933668182475360626

`filter[A080645(n+1), A321512(#)]`
-/

namespace A321580.P11933668182475360626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A321512 (f1 j).toNat = 1) n)

end

end A321580.P11933668182475360626

/-! ## A321580.P9615981631268476398

`filter[A115836(n+1), A321512(#)]`
-/

namespace A321580.P9615981631268476398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A321512 (f1 j).toNat = 1) n)

end

end A321580.P9615981631268476398

/-! ## A321580.P11541162004894653042

`filter[A121538(n+1), A321512(#)]`
-/

namespace A321580.P11541162004894653042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A321512 (f1 j).toNat = 1) n)

end

end A321580.P11541162004894653042

/-! ## A321580.P5693605845251512847

`filter[A171086(n+1), A321512(#)]`
-/

namespace A321580.P5693605845251512847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A321512 (f1 j).toNat = 1) n)

end

end A321580.P5693605845251512847

/-!
# A321581: 

The programs for A321581, there is no canonical definition to state claims against.
-/

/-! ## A321581.P1222587247007343545

`∑[n]^n!`
-/

namespace A321581.P1222587247007343545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ Nat.factorial n

end

end A321581.P1222587247007343545

/-!
# A321582: Primes p such that (4*p+1)/5 is prime.

The programs for A321582, there is no canonical definition to state claims against.
-/

/-! ## A321582.P17035889266657979465

`∩[A030430(n+1), A320774(n+1)]`
-/

namespace A321582.P17035889266657979465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321582.P17035889266657979465

/-! ## A321582.P1483048881579086978

`∩[A132230(n+1), A320774(n+1)]`
-/

namespace A321582.P1483048881579086978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321582.P1483048881579086978

/-! ## A321582.P17979784188309132083

`p?[A107008(n+1)+6*A111174(n+1)]`
-/

namespace A321582.P17979784188309132083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1) + 6 * A111174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321582.P17979784188309132083

/-! ## A321582.P12579317171296401695

`p?[10*A005123(n+1)+1]`
-/

namespace A321582.P12579317171296401695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A005123 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321582.P12579317171296401695

/-! ## A321582.P7547403265303190737

`∩[A179446(n+1), A320774(n+1)]`
-/

namespace A321582.P7547403265303190737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321582.P7547403265303190737

/-! ## A321582.P9588908145583685681

`∩[A033212(n+1), A320774(n+1)]`
-/

namespace A321582.P9588908145583685681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321582.P9588908145583685681

/-! ## A321582.P15916557108850098168

`∩[A045453(n+1), A320774(n+1)]`
-/

namespace A321582.P15916557108850098168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321582.P15916557108850098168

/-! ## A321582.P1304095780503257863

`∩[A132240(n+1), A320774(n+1)]`
-/

namespace A321582.P1304095780503257863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321582.P1304095780503257863

/-! ## A321582.P10211744699374306448

`∩[A090756(n+1), A320774(n+1)]`
-/

namespace A321582.P10211744699374306448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321582.P10211744699374306448

/-! ## A321582.P2811507748379919974

`∩[A320774(n+1), A327752(n+1)]`
-/

namespace A321582.P2811507748379919974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321582.P2811507748379919974

/-! ## A321582.P11583945954016669768

`∩[A004615(n+1), A320774(n+1)]`
-/

namespace A321582.P11583945954016669768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321582.P11583945954016669768

/-! ## A321582.P6916577518596767770

`∩[A320774(n+1), A128470(n)]`
-/

namespace A321582.P6916577518596767770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321582.P6916577518596767770

/-! ## A321582.P7251731917789586494

`p?[5*A005098(n+1)+1]`
-/

namespace A321582.P7251731917789586494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A005098 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321582.P7251731917789586494

/-! ## A321582.P4657606733218798153

`p?[5*(A111215(n+1)+1)+1]`
-/

namespace A321582.P4657606733218798153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A111215 (n + 1) + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321582.P4657606733218798153

/-! ## A321582.P1387145496629271996

`p?[A005098(n+1)+A002144(n+1)]`
-/

namespace A321582.P1387145496629271996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1) + A002144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321582.P1387145496629271996

/-! ## A321582.P10666518603093233017

`p?[A005098(n+1)+A002313(n+2)]`
-/

namespace A321582.P10666518603093233017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1) + A002313 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321582.P10666518603093233017

/-! ## A321582.P5576253769934264250

`∩[A038872(n+1), A320774(n+1)]`
-/

namespace A321582.P5576253769934264250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321582.P5576253769934264250

/-! ## A321582.P10893259445623106058

`∩[A045468(n+1), A320774(n+1)]`
-/

namespace A321582.P10893259445623106058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321582.P10893259445623106058

/-! ## A321582.P2438783020889859941

`∩[A064739(n+1), A320774(n+1)]`
-/

namespace A321582.P2438783020889859941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321582.P2438783020889859941

/-! ## A321582.P3396304886979192362

`∩[A076518(n+1), A320774(n+1)]`
-/

namespace A321582.P3396304886979192362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321582.P3396304886979192362

/-!
# A321584: Number of connected (0,1)-matrices with n ones and no zero rows or columns.

The programs for A321584, there is no canonical definition to state claims against.
-/

/-! ## A321584.P7903317721299607839

`floor(sqrt(A278590(n)))`
-/

namespace A321584.P7903317721299607839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A278590 n)

end

end A321584.P7903317721299607839

/-! ## A321584.P10803407756175205218

`A051534(A033321(n))`
-/

namespace A321584.P10803407756175205218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051534 (A033321 n).toNat

end

end A321584.P10803407756175205218

/-!
# A321585: Number of connected nonnegative integer matrices with sum of entries equal to n and no zero rows or columns.

The programs for A321585, there is no canonical definition to state claims against.
-/

/-! ## A321585.P9409181357598168709

`A339274(A000108(n))+A233537(n)`
-/

namespace A321585.P9409181357598168709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339274 (A000108 n).toNat + A233537 n

end

end A321585.P9409181357598168709

/-! ## A321585.P18038934698052100268

`A247908(A000666(n)-n)`
-/

namespace A321585.P18038934698052100268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (A000666 n - (n : ℤ)).toNat

end

end A321585.P18038934698052100268

/-!
# A321586: Number of nonnegative integer matrices with sum of entries equal to n, no zero rows or columns, and distinct rows (or distinct columns).

The programs for A321586, there is no canonical definition to state claims against.
-/

/-! ## A321586.P10942727684182392080

`A065361(A052635(n))+A052640(n)`
-/

namespace A321586.P10942727684182392080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A052635 n).toNat + A052640 n

end

end A321586.P10942727684182392080

/-! ## A321586.P13672235336530980376

`A359369(A016116(n)+A002866(n))`
-/

namespace A321586.P13672235336530980376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359369 (A016116 n + A002866 n).toNat

end

end A321586.P13672235336530980376

/-!
# A321587: Number of (0,1)-matrices with n ones, no zero rows or columns, and distinct rows.

The programs for A321587, there is no canonical definition to state claims against.
-/

/-! ## A321587.P8289348105125644056

`A160542(A220352(n))`
-/

namespace A321587.P8289348105125644056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (A220352 n).toNat

end

end A321587.P8289348105125644056

/-! ## A321587.P15851411538445036734

`A005378(∑[A106174(n)])`
-/

namespace A321587.P15851411538445036734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106174 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A321587.P15851411538445036734

/-!
# A321588: Number of connected nonnegative integer matrices with sum of entries equal to n, no zero rows or columns, and distinct rows and columns.

The programs for A321588, there is no canonical definition to state claims against.
-/

/-! ## A321588.P10041840105384716792

`A059496(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=9`
-/

namespace A321588.P10041840105384716792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 9] fun n a =>
  A059496 (a (n - 1)).toNat

end

end A321588.P10041840105384716792

/-! ## A321588.P7402017919001474171

`A131419(A225606(n))`
-/

namespace A321588.P7402017919001474171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131419 (A225606 n).toNat

end

end A321588.P7402017919001474171

/-!
# A321589: Number of tilings of a 6 X n rectangle using pentominoes of shapes X, Y, T and dominoes.

The programs for A321589, there is no canonical definition to state claims against.
-/

/-! ## A321589.P15171304299370914317

`A008364(A244360(n!))`
-/

namespace A321589.P15171304299370914317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (A244360 (Nat.factorial n)).toNat

end

end A321589.P15171304299370914317

/-!
# A321596: Primes that are not base-2 deletable primes (written in base 10).

The programs for A321596, there is no canonical definition to state claims against.
-/

/-! ## A321596.P3752723752367525346

`filter[A060254(n+1), A248392(#)]`
-/

namespace A321596.P3752723752367525346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A248392 (f1 j).toNat = 1) n)

end

end A321596.P3752723752367525346

/-! ## A321596.P59097247460068426

`filter[A167915(n+2), A248392(#)]`
-/

namespace A321596.P59097247460068426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167915 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A248392 (f1 j).toNat = 1) n)

end

end A321596.P59097247460068426

/-! ## A321596.P10430632798521782086

`filter[A176902(n+2), A248392(#)]`
-/

namespace A321596.P10430632798521782086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176902 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A248392 (f1 j).toNat = 1) n)

end

end A321596.P10430632798521782086

/-!
# A321598: a(n) = Sum_{d|n} d*binomial(d+2,3).

The programs for A321598, the canonical program `A321598.P5844903314696032527` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321598 has offset 1).

The definition of A321598 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321598.P5844903314696032527

`∑{d}[n+1, #*C(#+2, 3)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A321598

/-- `∑{d}[n+1, #*C(#+2, 3)]` -/
def P5844903314696032527.Spec : Prop :=
  ∀ n, (P5844903314696032527.a n : ℤ) = A321598 (n + 1)

theorem P5844903314696032527.correct : P5844903314696032527.Spec := by
  intro n
  simp only [A321598, Nat.add_sub_cancel]

end A321598

/-! ## A321598.P8392307077148370780

`∑{d}[n+1, A002417(#)]`
-/

namespace A321598.P8392307077148370780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002417 d

end

end A321598.P8392307077148370780

namespace A321598

/-- `∑{d}[n+1, A002417(#)]` -/
def P8392307077148370780.Spec : Prop :=
  ∀ n, P8392307077148370780.a n = A321598 (n + 1)

end A321598

/-! ## A321598.P8314420075045232497

`∑{d}[n+1, #*A000292(#)]`
-/

namespace A321598.P8314420075045232497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000292 d

end

end A321598.P8314420075045232497

namespace A321598

/-- `∑{d}[n+1, #*A000292(#)]` -/
def P8314420075045232497.Spec : Prop :=
  ∀ n, P8314420075045232497.a n = A321598 (n + 1)

end A321598

/-! ## A321598.P11044972647250892879

`∑{d}[n+1, #*(A005581(#)+#)]`
-/

namespace A321598.P11044972647250892879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * (A005581 d + (d : ℤ))

end

end A321598.P11044972647250892879

namespace A321598

/-- `∑{d}[n+1, #*(A005581(#)+#)]` -/
def P11044972647250892879.Spec : Prop :=
  ∀ n, P11044972647250892879.a n = A321598 (n + 1)

end A321598

