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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
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
import Seq.B000.C037
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
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A097900: Number of runs of length 1 in all permutations of [n]. (The permutation 3574162 has two runs of length 1: 357/4/16/2.)

The programs for A097900, the canonical program `A097900.P12085346404430038093` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097900 has offset 1).

The definition of A097900 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097900.P12085346404430038093

`ceil((n+1)!*(n+5)/6)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097900

/-- `ceil((n+1)!*(n+5)/6)` -/
def P12085346404430038093.Spec : Prop :=
  ∀ n, P12085346404430038093.a n = A097900 (n + 1)

theorem P12085346404430038093.correct : P12085346404430038093.Spec := by
  intro n
  simp only [A097900, Nat.add_sub_cancel]

end A097900

/-! ## A097900.P18103653593400306770

`A122843(∑[n]+1)`
-/

namespace A097900.P18103653593400306770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122843 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A097900.P18103653593400306770

namespace A097900

/-- `A122843(∑[n]+1)` -/
def P18103653593400306770.Spec : Prop :=
  ∀ n, P18103653593400306770.a n = A097900 (n + 1)

end A097900

/-! ## A097900.P16137269361766065956

`record[A122843(gcd(n, A039991(n)))]`
-/

namespace A097900.P16137269361766065956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122843 (Int.gcd (n : ℤ) (A039991 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097900.P16137269361766065956

namespace A097900

/-- `record[A122843(gcd(n, A039991(n)))]` -/
def P16137269361766065956.Spec : Prop :=
  ∀ n, P16137269361766065956.a n = A097900 (n + 1)

end A097900

/-! ## A097900.P8340629977184632764

`record[A122843(n+1)/A007318(n)]`
-/

namespace A097900.P8340629977184632764
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122843 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097900.P8340629977184632764

namespace A097900

/-- `record[A122843(n+1)/A007318(n)]` -/
def P8340629977184632764.Spec : Prop :=
  ∀ n, P8340629977184632764.a n = (A097900 (n + 1) : ℚ)

end A097900

/-! ## A097900.P11906238569521616029

`record[A122843(n+1)/A047969(n)]`
-/

namespace A097900.P11906238569521616029
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122843 (n + 1) : ℚ) / (A047969 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097900.P11906238569521616029

namespace A097900

/-- `record[A122843(n+1)/A047969(n)]` -/
def P11906238569521616029.Spec : Prop :=
  ∀ n, P11906238569521616029.a n = (A097900 (n + 1) : ℚ)

end A097900

/-! ## A097900.P14106977361745360541

`record[gcd(A048993(n), A122843(n+1))]`
-/

namespace A097900.P14106977361745360541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048993 n) (A122843 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097900.P14106977361745360541

namespace A097900

/-- `record[gcd(A048993(n), A122843(n+1))]` -/
def P14106977361745360541.Spec : Prop :=
  ∀ n, (P14106977361745360541.a n : ℤ) = A097900 (n + 1)

end A097900

/-! ## A097900.P4063589748588817940

`record[A103452(n)²*A122843(n+1)]`
-/

namespace A097900.P4063589748588817940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n ^ 2 * A122843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097900.P4063589748588817940

namespace A097900

/-- `record[A103452(n)²*A122843(n+1)]` -/
def P4063589748588817940.Spec : Prop :=
  ∀ n, P4063589748588817940.a n = A097900 (n + 1)

end A097900

/-! ## A097900.P12847948292309044517

`record[A122843(n+1)/A008292(n+1)]`
-/

namespace A097900.P12847948292309044517
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122843 (n + 1) : ℚ) / (A008292 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097900.P12847948292309044517

namespace A097900

/-- `record[A122843(n+1)/A008292(n+1)]` -/
def P12847948292309044517.Spec : Prop :=
  ∀ n, P12847948292309044517.a n = (A097900 (n + 1) : ℚ)

end A097900

/-! ## A097900.P7759905526558140822

`record[A122843(n+1)/A122843(A080036(n))]`
-/

namespace A097900.P7759905526558140822
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122843 (n + 1) : ℚ) / (A122843 (A080036 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097900.P7759905526558140822

namespace A097900

/-- `record[A122843(n+1)/A122843(A080036(n))]` -/
def P7759905526558140822.Spec : Prop :=
  ∀ n, P7759905526558140822.a n = (A097900 (n + 1) : ℚ)

end A097900

/-!
# A097902: Multiplication table of the digits of Pi read by antidiagonals.

The programs for A097902, the canonical program `A097902.P17574819608236868466` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097902 has offset 0).

The definition of A097902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097902.P1879740342595607778

`A095709(n+1)*A138114(n+1)`
-/

namespace A097902.P1879740342595607778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095709 (n + 1) * A138114 (n + 1)

end

end A097902.P1879740342595607778

namespace A097902

/-- `A095709(n+1)*A138114(n+1)` -/
def P1879740342595607778.Spec : Prop :=
  ∀ n, P1879740342595607778.a n = A097902 n

end A097902

/-! ## A097902.P13121164188189121774

`A000796(A002262(n))*A095709(n+1)`
-/

namespace A097902.P13121164188189121774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A002262 n).toNat + 1) * A095709 (n + 1)

end

end A097902.P13121164188189121774

namespace A097902

/-- `A000796(A002262(n))*A095709(n+1)` -/
def P13121164188189121774.Spec : Prop :=
  ∀ n, P13121164188189121774.a n = A097902 n

end A097902

/-! ## A097902.P15136453058303766160

`A000796(A025581(n))*A138114(n+1)`
-/

namespace A097902.P15136453058303766160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A025581 n).toNat + 1) * A138114 (n + 1)

end

end A097902.P15136453058303766160

namespace A097902

/-- `A000796(A025581(n))*A138114(n+1)` -/
def P15136453058303766160.Spec : Prop :=
  ∀ n, P15136453058303766160.a n = A097902 n

end A097902

/-! ## A097902.P2767719568972455546

`A000796(A002262(n))*A000796(A025581(n))`
-/

namespace A097902.P2767719568972455546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A002262 n).toNat + 1) * A000796 ((A025581 n).toNat + 1)

end

end A097902.P2767719568972455546

namespace A097902

/-- `A000796(A002262(n))*A000796(A025581(n))` -/
def P2767719568972455546.Spec : Prop :=
  ∀ n, P2767719568972455546.a n = A097902 n

end A097902

/-! ## A097902.P1595364728760756401

`A095709(A038722(n+1))*A095709(n+1)`
-/

namespace A097902.P1595364728760756401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095709 (A038722 (n + 1)).toNat * A095709 (n + 1)

end

end A097902.P1595364728760756401

namespace A097902

/-- `A095709(A038722(n+1))*A095709(n+1)` -/
def P1595364728760756401.Spec : Prop :=
  ∀ n, P1595364728760756401.a n = A097902 n

end A097902

/-! ## A097902.P13876737674661344215

`A095709(n+1)*A095709(A061579(n)+1)`
-/

namespace A097902.P13876737674661344215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095709 (n + 1) * A095709 (A061579 n + 1).toNat

end

end A097902.P13876737674661344215

namespace A097902

/-- `A095709(n+1)*A095709(A061579(n)+1)` -/
def P13876737674661344215.Spec : Prop :=
  ∀ n, P13876737674661344215.a n = A097902 n

end A097902

/-! ## A097902.P17574819608236868466

`A138114(A038722(n+1))*A138114(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A097902

/-- `A138114(A038722(n+1))*A138114(n+1)` -/
def P17574819608236868466.Spec : Prop :=
  ∀ n, P17574819608236868466.a n = A097902 n

theorem P17574819608236868466.correct : P17574819608236868466.Spec := by
  intro n
  simp only [A097902]

end A097902

/-! ## A097902.P17793264918678473277

`A095709(n+1)*A095709(A114327(n)+1+n)`
-/

namespace A097902.P17793264918678473277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095709 (n + 1) * A095709 (A114327 n + 1 + (n : ℤ)).toNat

end

end A097902.P17793264918678473277

namespace A097902

/-- `A095709(n+1)*A095709(A114327(n)+1+n)` -/
def P17793264918678473277.Spec : Prop :=
  ∀ n, P17793264918678473277.a n = A097902 n

end A097902

/-! ## A097902.P9127716381526466739

`A138114(n+1)*A138114(A278818(n))`
-/

namespace A097902.P9127716381526466739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138114 (n + 1) * A138114 (A278818 n).toNat

end

end A097902.P9127716381526466739

namespace A097902

/-- `A138114(n+1)*A138114(A278818(n))` -/
def P9127716381526466739.Spec : Prop :=
  ∀ n, P9127716381526466739.a n = A097902 n

end A097902

/-! ## A097902.P9710155913682269994

`A095709(n+1)*A110766(A054582(n))`
-/

namespace A097902.P9710155913682269994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095709 (n + 1) * A110766 (A054582 n).toNat

end

end A097902.P9710155913682269994

namespace A097902

/-- `A095709(n+1)*A110766(A054582(n))` -/
def P9710155913682269994.Spec : Prop :=
  ∀ n, P9710155913682269994.a n = A097902 n

end A097902

/-!
# A097903: Multiplication table of the digits of the square root of 3 read by antidiagonals.

The programs for A097903, there is no canonical definition to state claims against.
-/

/-! ## A097903.P10165417320582114695

`∏{e}[A036561(n), A002194(#)]`
-/

namespace A097903.P10165417320582114695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002194 (Nat.factorization (f1 n).natAbs p + 1)

end

end A097903.P10165417320582114695

/-! ## A097903.P12832110105094553667

`∏{e}[A036561(n), A090388(#)]`
-/

namespace A097903.P12832110105094553667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A090388 (Nat.factorization (f1 n).natAbs p + 1)

end

end A097903.P12832110105094553667

/-! ## A097903.P9269825919307482551

`∏{e}[A175840(n), A002194(#)]`
-/

namespace A097903.P9269825919307482551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002194 (Nat.factorization (f1 n).natAbs p + 1)

end

end A097903.P9269825919307482551

/-! ## A097903.P16623346596322691091

`∏{e}[A175840(n), A090388(#)]`
-/

namespace A097903.P16623346596322691091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A090388 (Nat.factorization (f1 n).natAbs p + 1)

end

end A097903.P16623346596322691091

/-! ## A097903.P4721136218241365627

`∏{e}[A175840(n), A340209(A099656(#))]`
-/

namespace A097903.P4721136218241365627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A340209 (A099656 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A097903.P4721136218241365627

/-!
# A097904: Right-truncatable deficient numbers (zeros not permitted).

The programs for A097904, there is no canonical definition to state claims against.
-/

/-! ## A097904.P16448747598604404471

`eq[A015158(A033630(n)), A055641(n)]`
-/

namespace A097904.P16448747598604404471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015158 (A033630 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097904.P16448747598604404471

/-! ## A097904.P757687952044007510

`eq[A015158(A033630(n)), A067898(n)]`
-/

namespace A097904.P757687952044007510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015158 (A033630 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097904.P757687952044007510

/-! ## A097904.P13295663265434991821

`eq[A000217(A331927(n)), A040790(n)]`
-/

namespace A097904.P13295663265434991821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A331927 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040790 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097904.P13295663265434991821

/-! ## A097904.P14311682549398883866

`eq[A006949(A331928(n)), A040790(n)]`
-/

namespace A097904.P14311682549398883866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006949 (A331928 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040790 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097904.P14311682549398883866

/-! ## A097904.P2504797561388008161

`eq[A000720(A331927(n)), A055641(n)]`
-/

namespace A097904.P2504797561388008161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A331927 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097904.P2504797561388008161

/-!
# A097905: Triangle where T(n,m) = largest divisor of n! coprime to m.

The programs for A097905, there is no canonical definition to state claims against.
-/

/-! ## A097905.P12372881517773873083

`gcd(Δ[A200748(n)], A153274(n+1))`
-/

namespace A097905.P12372881517773873083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200748 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A153274 (n + 1))

end

end A097905.P12372881517773873083

/-! ## A097905.P13255241710316760018

`gcd(A153274(n+1)², A094310(n+1))`
-/

namespace A097905.P13255241710316760018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A153274 (n + 1) ^ 2) (A094310 (n + 1))

end

end A097905.P13255241710316760018

/-! ## A097905.P15874977840031366903

`gcd(A153274(n+1)+A051683(n+1), A051683(n+1))`
-/

namespace A097905.P15874977840031366903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A153274 (n + 1) + A051683 (n + 1)) (A051683 (n + 1))

end

end A097905.P15874977840031366903

/-! ## A097905.P3529186975044383012

`gcd(A028310(A153274(n+1)), A051683(n+1))`
-/

namespace A097905.P3529186975044383012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 (A153274 (n + 1)).toNat) (A051683 (n + 1))

end

end A097905.P3529186975044383012

/-!
# A097910: Number of parts in all compositions of n into distinct parts.

The programs for A097910, there is no canonical definition to state claims against.
-/

/-! ## A097910.P11119677242786577035

`A072576(n+1)-Δ[A303664(n)]`
-/

namespace A097910.P11119677242786577035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072576 (n + 1) - (f1 (n + 1) - f1 n)

end

end A097910.P11119677242786577035

/-! ## A097910.P10960420833528176134

`A072576(n+1)-A032020(n+1)`
-/

namespace A097910.P10960420833528176134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072576 (n + 1) - A032020 (n + 1)

end

end A097910.P10960420833528176134

/-! ## A097910.P14236626526170962737

`A072576(n+1)-(A216695(n+1)+1)`
-/

namespace A097910.P14236626526170962737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072576 (n + 1) - (A216695 (n + 1) + 1)

end

end A097910.P14236626526170962737

/-! ## A097910.P15190025020615240524

`A072576(n)-Δ[A303664(n)-A072576(n)]`
-/

namespace A097910.P15190025020615240524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303664 n - A072576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072576 n - (f1 (n + 1) - f1 n)

end

end A097910.P15190025020615240524

/-! ## A097910.P980322464572044969

`A216708(n+1)-(A216695(n+1)+A032020(n+1))`
-/

namespace A097910.P980322464572044969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216708 (n + 1) - (A216695 (n + 1) + A032020 (n + 1))

end

end A097910.P980322464572044969

/-! ## A097910.P10685110678902836100

`A072576(n+1)+A282694(n+1)-A000045(n+1)`
-/

namespace A097910.P10685110678902836100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072576 (n + 1) + (A282694 (n + 1) - A000045 (n + 1))

end

end A097910.P10685110678902836100

/-! ## A097910.P693145015149968182

`A072576(n+1)-A242447(A000124(n+1))`
-/

namespace A097910.P693145015149968182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072576 (n + 1) - A242447 (A000124 (n + 1)).toNat

end

end A097910.P693145015149968182

/-! ## A097910.P18408203036586964924

`A072576(n+1)-A242447(A152947(n+3))`
-/

namespace A097910.P18408203036586964924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072576 (n + 1) - A242447 (A152947 (n + 3)).toNat

end

end A097910.P18408203036586964924

/-! ## A097910.P11720299323931041447

`A072576(n+1)-A243081(A034856(n+2))`
-/

namespace A097910.P11720299323931041447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072576 (n + 1) - A243081 (A034856 (n + 2)).toNat

end

end A097910.P11720299323931041447

/-!
# A097912: Look at the first 10 digits of the sequence: they are all different. The same for the next 10. And the next 10, etc. This sequence is the slowest increasing one with that property.

The programs for A097912, there is no canonical definition to state claims against.
-/

/-! ## A097912.P4827593550326953324

`lt[A230865(A262087(2*n)), A073731(n)]`
-/

namespace A097912.P4827593550326953324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230865 (A262087 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073731 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A097912.P4827593550326953324

/-! ## A097912.P7984213703540202179

`lt[A262087(2*n), A073731(A262087(n))]`
-/

namespace A097912.P7984213703540202179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073731 ((A262087 n).toNat + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A097912.P7984213703540202179

/-! ## A097912.P16976934910844900072

`(∑[A180171(A219766(n+1)+1)%(n+1)]+1)%(n+1)²`
-/

namespace A097912.P16976934910844900072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180171 (A219766 (n + 1) + 1).toNat) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 1) ((n + 1) ^ 2 : ℤ)

end

end A097912.P16976934910844900072

/-! ## A097912.P1122235467204538007

`A057427(A000081(n))+A048406(n)`
-/

namespace A097912.P1122235467204538007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A000081 n).toNat + A048406 n

end

end A097912.P1122235467204538007

/-! ## A097912.P18240499256851955596

`A055396(A287951(n))+A048406(n)`
-/

namespace A097912.P18240499256851955596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A287951 n).toNat + A048406 n

end

end A097912.P18240499256851955596

/-!
# A097913: G.f.: (1+x^18)/((1-x)*(1-x^8)*(1-x^12)*(1-x^24)).

The programs for A097913, the canonical program `A097913.P2756264875088054421` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097913 has offset 0).

The definition of A097913 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097913.P2756264875088054421

`A008718(floor(n/2))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A097913

/-- `A008718(floor(n/2))` -/
def P2756264875088054421.Spec : Prop :=
  ∀ n, P2756264875088054421.a n = A097913 n

theorem P2756264875088054421.correct : P2756264875088054421.Spec := by
  intro n
  simp only [A097913]

end A097913

/-! ## A097913.P865662832863160676

`A336396(A286586(n+1))+A008718(A004526(n))`
-/

namespace A097913.P865662832863160676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336396 (A286586 (n + 1)).toNat + A008718 (A004526 n).toNat

end

end A097913.P865662832863160676

namespace A097913

/-- `A336396(A286586(n+1))+A008718(A004526(n))` -/
def P865662832863160676.Spec : Prop :=
  ∀ n, P865662832863160676.a n = A097913 n

end A097913

/-! ## A097913.P17194913823081706494

`and(-1, A008718(A002265(2*n)))`
-/

namespace A097913.P17194913823081706494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A008718 (A002265 (2 * n)).toNat)

end

end A097913.P17194913823081706494

namespace A097913

/-- `and(-1, A008718(A002265(2*n)))` -/
def P17194913823081706494.Spec : Prop :=
  ∀ n, P17194913823081706494.a n = A097913 n

end A097913

/-! ## A097913.P7883300707625400354

`gcd(A008718(A004526(n)), A049084(2*(n+1)))`
-/

namespace A097913.P7883300707625400354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008718 (A004526 n).toNat) (A049084 (2 * (n + 1)))

end

end A097913.P7883300707625400354

namespace A097913

/-- `gcd(A008718(A004526(n)), A049084(2*(n+1)))` -/
def P7883300707625400354.Spec : Prop :=
  ∀ n, (P7883300707625400354.a n : ℤ) = A097913 n

end A097913

/-! ## A097913.P1168962277365419561

`A008718(A004526(n))+A000122(3*n+2)`
-/

namespace A097913.P1168962277365419561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008718 (A004526 n).toNat + A000122 (3 * n + 2)

end

end A097913.P1168962277365419561

namespace A097913

/-- `A008718(A004526(n))+A000122(3*n+2)` -/
def P1168962277365419561.Spec : Prop :=
  ∀ n, P1168962277365419561.a n = A097913 n

end A097913

/-! ## A097913.P17165971652679697059

`A008718(A004526(n))%A041742(n)`
-/

namespace A097913.P17165971652679697059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008718 (A004526 n).toNat) (A041742 n)

end

end A097913.P17165971652679697059

namespace A097913

/-- `A008718(A004526(n))%A041742(n)` -/
def P17165971652679697059.Spec : Prop :=
  ∀ n, P17165971652679697059.a n = A097913 n

end A097913

/-!
# A097919: a(1)=1; a(n+1) = Sum_{k=1 to n} a(k) a(ceiling(n/k)).

The programs for A097919, there is no canonical definition to state claims against.
-/

/-! ## A097919.P9898906206854387781

`A110656(A002906(n)+2-n)`
-/

namespace A097919.P9898906206854387781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A002906 n + (2 - (n : ℤ))).toNat

end

end A097919.P9898906206854387781

/-! ## A097919.P11754466053664109428

`A110656(2-(n-A002906(n)))`
-/

namespace A097919.P11754466053664109428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (2 - ((n : ℤ) - A002906 n)).toNat

end

end A097919.P11754466053664109428

/-! ## A097919.P8741019099861209013

`A054846(A387734(n)-n)`
-/

namespace A097919.P8741019099861209013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A387734 n - (n : ℤ)).toNat

end

end A097919.P8741019099861209013

/-! ## A097919.P17557959373882521832

`A001462(∑[A192811(n)]+1)`
-/

namespace A097919.P17557959373882521832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A097919.P17557959373882521832

/-!
# A097920: G.f.: (1+x^10)/((1-x)*(1-x^3)*(1-x^5)).

The programs for A097920, the canonical program `A097920.P16070333679688351481` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097920 has offset 0).

The definition of A097920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097920.P16070333679688351481

`A211524(A289207(n))+A008672(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A097920

/-- `A211524(A289207(n))+A008672(n)` -/
def P16070333679688351481.Spec : Prop :=
  ∀ n, P16070333679688351481.a n = A097920 n

theorem P16070333679688351481.correct : P16070333679688351481.Spec := by
  intro n
  simp only [A097920]

end A097920

/-! ## A097920.P12363861246914950759

`A194509(A097922(n)+4)`
-/

namespace A097920.P12363861246914950759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194509 (A097922 n + 4).toNat

end

end A097920.P12363861246914950759

namespace A097920

/-- `A194509(A097922(n)+4)` -/
def P12363861246914950759.Spec : Prop :=
  ∀ n, P12363861246914950759.a n = A097920 n

end A097920

/-! ## A097920.P6870238236078228798

`A008676(A103505(n))+1`
-/

namespace A097920.P6870238236078228798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A103505 n).toNat + 1

end

end A097920.P6870238236078228798

namespace A097920

/-- `A008676(A103505(n))+1` -/
def P6870238236078228798.Spec : Prop :=
  ∀ n, P6870238236078228798.a n = A097920 n

end A097920

/-! ## A097920.P2191500774034502059

`2-(A007318(C(2, n))-A254011(A103505(n)))`
-/

namespace A097920.P2191500774034502059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A007318 (Nat.choose 2 n) - A254011 (A103505 n).toNat)

end

end A097920.P2191500774034502059

namespace A097920

/-- `2-(A007318(C(2, n))-A254011(A103505(n)))` -/
def P2191500774034502059.Spec : Prop :=
  ∀ n, P2191500774034502059.a n = A097920 n

end A097920

/-! ## A097920.P13848093882858033961

`2-(a(A348264(n))-A254011(A103505(n)))` with `a(0)=1`
-/

namespace A097920.P13848093882858033961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - (a (A348264 n).toNat - A254011 (A103505 n).toNat)

end

end A097920.P13848093882858033961

namespace A097920

/-- `2-(a(A348264(n))-A254011(A103505(n)))` -/
def P13848093882858033961.Spec : Prop :=
  ∀ n, P13848093882858033961.a n = A097920 n

end A097920

/-!
# A097921: G.f.: (1-x^6)*(1-x^8)/((1-x)*(1-x^2)*(1-x^3)^2*(1-x^4)).

The programs for A097921, the canonical program `A097921.P2396556420812877474` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097921 has offset 0).

The definition of A097921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097921.P2396556420812877474

`∑[a(n-3)+2]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2, a(4)=2, a(5)=2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097921

/-- `∑[a(n-3)+2]` -/
def P2396556420812877474.Spec : Prop :=
  ∀ n, (P2396556420812877474.a n : ℤ) = A097921 n

theorem P2396556420812877474.correct : P2396556420812877474.Spec := by
  intro n
  simp only [A097921]

end A097921

/-! ## A097921.P905534574006569109

`a(n-1)+2*floor(n/3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A097921.P905534574006569109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) + 2 * ⌊(n : ℚ) / 3⌋

end

end A097921.P905534574006569109

namespace A097921

/-- `a(n-1)+2*floor(n/3)` -/
def P905534574006569109.Spec : Prop :=
  ∀ n, P905534574006569109.a n = A097921 n

end A097921

/-! ## A097921.P17254433220719379989

`ceil(((n²/(n+1))²+n+1)/3)`
-/

namespace A097921.P17254433220719379989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n ^ 2 : ℚ) / (n + 1 : ℚ)) ^ 2 + (n + 1 : ℚ)) / 3⌉

end

end A097921.P17254433220719379989

namespace A097921

/-- `ceil(((n²/(n+1))²+n+1)/3)` -/
def P17254433220719379989.Spec : Prop :=
  ∀ n, P17254433220719379989.a n = A097921 n

end A097921

/-! ## A097921.P1892313912892132158

`∑[A130823(n+1)+char[2]]-n`
-/

namespace A097921.P1892313912892132158
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A097921.P1892313912892132158

namespace A097921

/-- `∑[A130823(n+1)+char[2]]-n` -/
def P1892313912892132158.Spec : Prop :=
  ∀ n, P1892313912892132158.a n = A097921 n

end A097921

/-! ## A097921.P397321592572673613

`A302402(n-2)+a(n-1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A097921.P397321592572673613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A302402 (n - 2) + a (n - 1)

end

end A097921.P397321592572673613

namespace A097921

/-- `A302402(n-2)+a(n-1)` -/
def P397321592572673613.Spec : Prop :=
  ∀ n, P397321592572673613.a n = A097921 n

end A097921

/-! ## A097921.P2391016541154030855

`A096777(n+1)-A131737(n)`
-/

namespace A097921.P2391016541154030855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096777 (n + 1) - A131737 n

end

end A097921.P2391016541154030855

namespace A097921

/-- `A096777(n+1)-A131737(n)` -/
def P2391016541154030855.Spec : Prop :=
  ∀ n, P2391016541154030855.a n = A097921 n

end A097921

/-! ## A097921.P16322043959307148495

`A238531(n)-A007997(n+3)`
-/

namespace A097921.P16322043959307148495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238531 n - A007997 (n + 3)

end

end A097921.P16322043959307148495

namespace A097921

/-- `A238531(n)-A007997(n+3)` -/
def P16322043959307148495.Spec : Prop :=
  ∀ n, P16322043959307148495.a n = A097921 n

end A097921

/-! ## A097921.P6678564847032074030

`∑[A131737(n+1)]-A131737(n)`
-/

namespace A097921.P6678564847032074030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A131737 n

end

end A097921.P6678564847032074030

namespace A097921

/-- `∑[A131737(n+1)]-A131737(n)` -/
def P6678564847032074030.Spec : Prop :=
  ∀ n, P6678564847032074030.a n = A097921 n

end A097921

/-! ## A097921.P5262056803231991472

`∑[A008611(A004274(n))]`
-/

namespace A097921.P5262056803231991472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A004274 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097921.P5262056803231991472

namespace A097921

/-- `∑[A008611(A004274(n))]` -/
def P5262056803231991472.Spec : Prop :=
  ∀ n, P5262056803231991472.a n = A097921 n

end A097921

/-! ## A097921.P6450183913584054654

`∑[A008611(record[A212831(n)])]`
-/

namespace A097921.P6450183913584054654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212831 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097921.P6450183913584054654

namespace A097921

/-- `∑[A008611(record[A212831(n)])]` -/
def P6450183913584054654.Spec : Prop :=
  ∀ n, P6450183913584054654.a n = A097921 n

end A097921

/-! ## A097921.P12687727819684573483

`round(A008751(2*n)/2)`
-/

namespace A097921.P12687727819684573483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008751 (2 * n) : ℚ) / 2)

end

end A097921.P12687727819684573483

namespace A097921

/-- `round(A008751(2*n)/2)` -/
def P12687727819684573483.Spec : Prop :=
  ∀ n, P12687727819684573483.a n = A097921 n

end A097921

/-! ## A097921.P3019801095817268989

`A374702(n)+A026834(n+1)`
-/

namespace A097921.P3019801095817268989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374702 n + A026834 (n + 1)

end

end A097921.P3019801095817268989

namespace A097921

/-- `A374702(n)+A026834(n+1)` -/
def P3019801095817268989.Spec : Prop :=
  ∀ n, P3019801095817268989.a n = A097921 n

end A097921

/-! ## A097921.P4678278485550915314

`∑[2*floor(n/3)]+A020639(A103505(n))`
-/

namespace A097921.P4678278485550915314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A020639 (A103505 n).toNat

end

end A097921.P4678278485550915314

namespace A097921

/-- `∑[2*floor(n/3)]+A020639(A103505(n))` -/
def P4678278485550915314.Spec : Prop :=
  ∀ n, P4678278485550915314.a n = A097921 n

end A097921

/-! ## A097921.P4722733474737544674

`A032765(n)+A020639(A103505(n))-n`
-/

namespace A097921.P4722733474737544674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 n + (A020639 (A103505 n).toNat - (n : ℤ))

end

end A097921.P4722733474737544674

namespace A097921

/-- `A032765(n)+A020639(A103505(n))-n` -/
def P4722733474737544674.Spec : Prop :=
  ∀ n, P4722733474737544674.a n = A097921 n

end A097921

/-! ## A097921.P17188665176208880725

`A004275(A008750(n))`
-/

namespace A097921.P17188665176208880725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A008750 n).toNat

end

end A097921.P17188665176208880725

namespace A097921

/-- `A004275(A008750(n))` -/
def P17188665176208880725.Spec : Prop :=
  ∀ n, P17188665176208880725.a n = A097921 n

end A097921

/-! ## A097921.P2836058935736277731

`A004277(A008750(n)-1)`
-/

namespace A097921.P2836058935736277731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A008750 n - 1).toNat

end

end A097921.P2836058935736277731

namespace A097921

/-- `A004277(A008750(n)-1)` -/
def P2836058935736277731.Spec : Prop :=
  ∀ n, P2836058935736277731.a n = A097921 n

end A097921

/-! ## A097921.P12669229807683480405

`A185048(∑[A185048(A130823(n+1))])`
-/

namespace A097921.P12669229807683480405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (A130823 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A097921.P12669229807683480405

namespace A097921

/-- `A185048(∑[A185048(A130823(n+1))])` -/
def P12669229807683480405.Spec : Prop :=
  ∀ n, P12669229807683480405.a n = A097921 n

end A097921

/-! ## A097921.P3722213526296774844

`A004275(∑[A008620(n)])-A004275(n)`
-/

namespace A097921.P3722213526296774844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A004275 n

end

end A097921.P3722213526296774844

namespace A097921

/-- `A004275(∑[A008620(n)])-A004275(n)` -/
def P3722213526296774844.Spec : Prop :=
  ∀ n, P3722213526296774844.a n = A097921 n

end A097921

/-! ## A097921.P3085423913247743287

`A131055(A097922(n))`
-/

namespace A097921.P3085423913247743287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131055 (A097922 n).toNat

end

end A097921.P3085423913247743287

namespace A097921

/-- `A131055(A097922(n))` -/
def P3085423913247743287.Spec : Prop :=
  ∀ n, P3085423913247743287.a n = A097921 n

end A097921

/-!
# A097922: G.f.: (1-x^4)*(1-x^10)/((1-x)*(1-x^2)^2*(1-x^3)*(1-x^5)).

The programs for A097922, the canonical program `A097922.P8732252699869397794` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097922 has offset 0).

The definition of A097922 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097922.P8732252699869397794

`∑[a(n-3)+2]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=1, a(4)=2, a(5)=3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097922

/-- `∑[a(n-3)+2]` -/
def P8732252699869397794.Spec : Prop :=
  ∀ n, (P8732252699869397794.a n : ℤ) = A097922 n

theorem P8732252699869397794.correct : P8732252699869397794.Spec := by
  intro n
  simp only [A097922]

end A097922

/-! ## A097922.P6169668739911266151

`A238531(n)-∑[A002264(n)]`
-/

namespace A097922.P6169668739911266151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238531 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097922.P6169668739911266151

namespace A097922

/-- `A238531(n)-∑[A002264(n)]` -/
def P6169668739911266151.Spec : Prop :=
  ∀ n, P6169668739911266151.a n = A097922 n

end A097922

/-! ## A097922.P15316353496921598404

`A183861(n+1)-A004275(n)`
-/

namespace A097922.P15316353496921598404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183861 (n + 1) - A004275 n

end

end A097922.P15316353496921598404

namespace A097922

/-- `A183861(n+1)-A004275(n)` -/
def P15316353496921598404.Spec : Prop :=
  ∀ n, P15316353496921598404.a n = A097922 n

end A097922

/-! ## A097922.P15259429037967736963

`A008750(n)+A007997(n+3)`
-/

namespace A097922.P15259429037967736963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008750 n + A007997 (n + 3)

end

end A097922.P15259429037967736963

namespace A097922

/-- `A008750(n)+A007997(n+3)` -/
def P15259429037967736963.Spec : Prop :=
  ∀ n, P15259429037967736963.a n = A097922 n

end A097922

/-! ## A097922.P14283635576248815281

`A020639(A000010(n+1))+A000212(n+1)-n`
-/

namespace A097922.P14283635576248815281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 1)).toNat + (A000212 (n + 1) - (n : ℤ))

end

end A097922.P14283635576248815281

namespace A097922

/-- `A020639(A000010(n+1))+A000212(n+1)-n` -/
def P14283635576248815281.Spec : Prop :=
  ∀ n, P14283635576248815281.a n = A097922 n

end A097922

/-! ## A097922.P11322350562407372188

`A087483(n)-A004525(A004275(n))`
-/

namespace A097922.P11322350562407372188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087483 n - A004525 (A004275 n).toNat

end

end A097922.P11322350562407372188

namespace A097922

/-- `A087483(n)-A004525(A004275(n))` -/
def P11322350562407372188.Spec : Prop :=
  ∀ n, P11322350562407372188.a n = A097922 n

end A097922

/-! ## A097922.P1040549430486894492

`A087483(n)-A004526(A004278(n+1))`
-/

namespace A097922.P1040549430486894492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087483 n - A004526 (A004278 (n + 1)).toNat

end

end A097922.P1040549430486894492

namespace A097922

/-- `A087483(n)-A004526(A004278(n+1))` -/
def P1040549430486894492.Spec : Prop :=
  ∀ n, P1040549430486894492.a n = A097922 n

end A097922

/-! ## A097922.P16456953009961223924

`A343941(Δ[n²])+1`
-/

namespace A097922.P16456953009961223924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343941 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A097922.P16456953009961223924

namespace A097922

/-- `A343941(Δ[n²])+1` -/
def P16456953009961223924.Spec : Prop :=
  ∀ n, P16456953009961223924.a n = A097922 n

end A097922

/-! ## A097922.P6852538631678944386

`A008753(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A097922.P6852538631678944386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008753 (2 * n) - a (n - 1)

end

end A097922.P6852538631678944386

namespace A097922

/-- `A008753(2*n)-a(n-1)` -/
def P6852538631678944386.Spec : Prop :=
  ∀ n, P6852538631678944386.a n = A097922 n

end A097922

/-! ## A097922.P327479925345216678

`A001399(A289207(2*n+1))-A289207(n)`
-/

namespace A097922.P327479925345216678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A289207 (2 * n + 1)).toNat - A289207 n

end

end A097922.P327479925345216678

namespace A097922

/-- `A001399(A289207(2*n+1))-A289207(n)` -/
def P327479925345216678.Spec : Prop :=
  ∀ n, P327479925345216678.a n = A097922 n

end A097922

/-! ## A097922.P15533450668324918262

`A331307(∑[n+1])-n`
-/

namespace A097922.P15533450668324918262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331307 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A097922.P15533450668324918262

namespace A097922

/-- `A331307(∑[n+1])-n` -/
def P15533450668324918262.Spec : Prop :=
  ∀ n, P15533450668324918262.a n = A097922 n

end A097922

/-! ## A097922.P12345275105825802614

`A267808(A238531(n))`
-/

namespace A097922.P12345275105825802614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267808 (A238531 n).toNat

end

end A097922.P12345275105825802614

namespace A097922

/-- `A267808(A238531(n))` -/
def P12345275105825802614.Spec : Prop :=
  ∀ n, P12345275105825802614.a n = A097922 n

end A097922

/-! ## A097922.P12511258001541144363

`A004396(A016028(n+2)-char[1])`
-/

namespace A097922.P12511258001541144363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A016028 (n + 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A097922.P12511258001541144363

namespace A097922

/-- `A004396(A016028(n+2)-char[1])` -/
def P12511258001541144363.Spec : Prop :=
  ∀ n, P12511258001541144363.a n = A097922 n

end A097922

/-! ## A097922.P2049328268367585668

`A238531(n)-A002264(A238531(n)-1)`
-/

namespace A097922.P2049328268367585668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238531 n - A002264 (A238531 n - 1).toNat

end

end A097922.P2049328268367585668

namespace A097922

/-- `A238531(n)-A002264(A238531(n)-1)` -/
def P2049328268367585668.Spec : Prop :=
  ∀ n, P2049328268367585668.a n = A097922 n

end A097922

/-! ## A097922.P9674925671447212395

`A002264(2*A238531(n))+1`
-/

namespace A097922.P9674925671447212395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * A238531 n).toNat + 1

end

end A097922.P9674925671447212395

namespace A097922

/-- `A002264(2*A238531(n))+1` -/
def P9674925671447212395.Spec : Prop :=
  ∀ n, P9674925671447212395.a n = A097922 n

end A097922

/-! ## A097922.P3096138658173569232

`A086161(2*A238531(n)-1)`
-/

namespace A097922.P3096138658173569232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 (2 * A238531 n - 1).toNat

end

end A097922.P3096138658173569232

namespace A097922

/-- `A086161(2*A238531(n)-1)` -/
def P3096138658173569232.Spec : Prop :=
  ∀ n, P3096138658173569232.a n = A097922 n

end A097922

/-! ## A097922.P8678976484242598046

`A086161(A238531(n)+A238531(n)-1)`
-/

namespace A097922.P8678976484242598046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 (A238531 n + (A238531 n - 1)).toNat

end

end A097922.P8678976484242598046

namespace A097922

/-- `A086161(A238531(n)+A238531(n)-1)` -/
def P8678976484242598046.Spec : Prop :=
  ∀ n, P8678976484242598046.a n = A097922 n

end A097922

/-! ## A097922.P13545781287647646282

`A086161(A238531(n)-(1-A238531(n)))`
-/

namespace A097922.P13545781287647646282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 (A238531 n - (1 - A238531 n)).toNat

end

end A097922.P13545781287647646282

namespace A097922

/-- `A086161(A238531(n)-(1-A238531(n)))` -/
def P13545781287647646282.Spec : Prop :=
  ∀ n, P13545781287647646282.a n = A097922 n

end A097922

/-! ## A097922.P3647079859343832427

`A238531(n)-A230197(2*A238531(n))`
-/

namespace A097922.P3647079859343832427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238531 n - A230197 (2 * A238531 n).toNat

end

end A097922.P3647079859343832427

namespace A097922

/-- `A238531(n)-A230197(2*A238531(n))` -/
def P3647079859343832427.Spec : Prop :=
  ∀ n, P3647079859343832427.a n = A097922 n

end A097922

/-!
# A097923: Expansion of (1+x^20)/((1-x)*(1-x^3)*(1-x^5)).

The programs for A097923, there is no canonical definition to state claims against.
-/

/-! ## A097923.P793042629925230557

`A276568(A008672(n)^A333254(2*n+3))`
-/

namespace A097923.P793042629925230557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276568 (SequenceMachineLib.roundAway ((A008672 n : ℚ) ^ (A333254 (2 * n + 3) : ℤ))).toNat

end

end A097923.P793042629925230557

/-! ## A097923.P6593560708801095328

`A298359(A008672(n)^A333254(2*n+3))`
-/

namespace A097923.P6593560708801095328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298359 (SequenceMachineLib.roundAway ((A008672 n : ℚ) ^ (A333254 (2 * n + 3) : ℤ))).toNat

end

end A097923.P6593560708801095328

/-! ## A097923.P4583207231811850652

`A281116(A146876(n+1))+round((n+3)*(n+6)/30)`
-/

namespace A097923.P4583207231811850652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (A146876 (n + 1)).toNat + SequenceMachineLib.roundAway ((n + 3 : ℚ) * ((n + 6 : ℚ) / 30))

end

end A097923.P4583207231811850652

/-! ## A097923.P4582508916921738171

`A151795(A034296(n))+A008672(n)`
-/

namespace A097923.P4582508916921738171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151795 (A034296 n).toNat + A008672 n

end

end A097923.P4582508916921738171

/-! ## A097923.P6607439284289457880

`A151795(A034296(n))+A025799(2*n)`
-/

namespace A097923.P6607439284289457880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151795 (A034296 n).toNat + A025799 (2 * n)

end

end A097923.P6607439284289457880

/-!
# A097924: a(n) = 4*a(n-1) + a(n-2), n>=2, a(0) = 2, a(1) = 7.

The programs for A097924, the canonical program `A097924.P5810216713398720791` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097924 has offset 0).

The definition of A097924 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+a(n-2)` (program `A097924.P5810216713398720791`, by `A097924.P5810216713398720791.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097924.P5810216713398720791

`4*a(n-1)+a(n-2)` with `a(0)=2, a(1)=7`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097924

/-- `4*a(n-1)+a(n-2)` -/
def P5810216713398720791.Spec : Prop :=
  ∀ n, (P5810216713398720791.a n : ℤ) = A097924 n

theorem P5810216713398720791.correct : P5810216713398720791.Spec := by
  intro n
  simp only [A097924]

end A097924

/-! ## A097924.P17321044987391114858

`A001077(n+1)-2*A001076(n)`
-/

namespace A097924.P17321044987391114858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001077 (n + 1) - 2 * A001076 n

end

end A097924.P17321044987391114858

namespace A097924

/-- `A001077(n+1)-2*A001076(n)` -/
def P17321044987391114858.Spec : Prop :=
  ∀ n, P17321044987391114858.a n = A097924 n

end A097924

/-! ## A097924.P8621527406611631532

`ogf((-2+x)/(-1+4x+x^2))`
-/

namespace A097924.P8621527406611631532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1] [1, -4, -1] n

end

end A097924.P8621527406611631532

namespace A097924

/-- `ogf((-2+x)/(-1+4x+x^2))` -/
def P8621527406611631532.Spec : Prop :=
  ∀ n, P8621527406611631532.a n = A097924 n

end A097924

/-! ## A097924.P3242678881043408993

`round(ϕ^3*a(n-1))` with `a(0)=2, a(1)=7`
-/

namespace A097924.P3242678881043408993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 3 * (a (n - 1) : ℝ))

end

end A097924.P3242678881043408993

namespace A097924

/-- `round(ϕ^3*a(n-1))` -/
def P3242678881043408993.Spec : Prop :=
  ∀ n, P3242678881043408993.a n = A097924 n

end A097924

/-! ## A097924.P6143125695147601623

`a(n-2)+a(n-1)/(1/2)²` with `a(0)=2, a(1)=7`
-/

namespace A097924.P6143125695147601623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 7] fun n a =>
  a (n - 2) + a (n - 1) / ((1 : ℚ) / 2) ^ 2

end

end A097924.P6143125695147601623

namespace A097924

/-- `a(n-2)+a(n-1)/(1/2)²` -/
def P6143125695147601623.Spec : Prop :=
  ∀ n, P6143125695147601623.a n = (A097924 n : ℚ)

end A097924

/-! ## A097924.P793743846577094392

`abs(4*a(n-1)-floor(-a(n-2)))` with `a(0)=2, a(1)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A097924.P793743846577094392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  |4 * a (n - 1) - (-a (n - 2))|

end

end A097924.P793743846577094392

namespace A097924

/-- `abs(4*a(n-1)-floor(-a(n-2)))` -/
def P793743846577094392.Spec : Prop :=
  ∀ n, P793743846577094392.a n = A097924 n

end A097924

/-! ## A097924.P7370379261648500768

`floor(4*a(n-1)-floor(-a(n-2)))` with `a(0)=2, a(1)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A097924.P7370379261648500768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  4 * a (n - 1) - (-a (n - 2))

end

end A097924.P7370379261648500768

namespace A097924

/-- `floor(4*a(n-1)-floor(-a(n-2)))` -/
def P7370379261648500768.Spec : Prop :=
  ∀ n, P7370379261648500768.a n = A097924 n

end A097924

/-! ## A097924.P17541766392503093285

`5*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=2, a(1)=7`
-/

namespace A097924.P17541766392503093285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  5 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A097924.P17541766392503093285

namespace A097924

/-- `5*a(n-1)-(a(n-1)-a(n-2))` -/
def P17541766392503093285.Spec : Prop :=
  ∀ n, P17541766392503093285.a n = A097924 n

end A097924

/-! ## A097924.P8591424698613711829

`A291660(3*n)`
-/

namespace A097924.P8591424698613711829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291660 (3 * n)

end

end A097924.P8591424698613711829

namespace A097924

/-- `A291660(3*n)` -/
def P8591424698613711829.Spec : Prop :=
  ∀ n, P8591424698613711829.a n = A097924 n

end A097924

/-! ## A097924.P4063569724696619850

`A027976(3*n)+1`
-/

namespace A097924.P4063569724696619850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027976 (3 * n) + 1

end

end A097924.P4063569724696619850

namespace A097924

/-- `A027976(3*n)+1` -/
def P4063569724696619850.Spec : Prop :=
  ∀ n, P4063569724696619850.a n = A097924 n

end A097924

/-! ## A097924.P16843124491954082718

`∑[A104449(3*n)]-1`
-/

namespace A097924.P16843124491954082718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A097924.P16843124491954082718

namespace A097924

/-- `∑[A104449(3*n)]-1` -/
def P16843124491954082718.Spec : Prop :=
  ∀ n, P16843124491954082718.a n = A097924 n

end A097924

/-! ## A097924.P3491831963568354487

`A048875(n)+A015448(n)`
-/

namespace A097924.P3491831963568354487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048875 n + A015448 n

end

end A097924.P3491831963568354487

namespace A097924

/-- `A048875(n)+A015448(n)` -/
def P3491831963568354487.Spec : Prop :=
  ∀ n, P3491831963568354487.a n = A097924 n

end A097924

/-! ## A097924.P13978853615102440538

`A306672(n)+A049651(n)`
-/

namespace A097924.P13978853615102440538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306672 n + A049651 n

end

end A097924.P13978853615102440538

namespace A097924

/-- `A306672(n)+A049651(n)` -/
def P13978853615102440538.Spec : Prop :=
  ∀ n, P13978853615102440538.a n = A097924 n

end A097924

/-! ## A097924.P374164384534522293

`A033887(n)+∑[A033887(n)]`
-/

namespace A097924.P374164384534522293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033887 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097924.P374164384534522293

namespace A097924

/-- `A033887(n)+∑[A033887(n)]` -/
def P374164384534522293.Spec : Prop :=
  ∀ n, P374164384534522293.a n = A097924 n

end A097924

/-! ## A097924.P17671906411972281686

`A015448(n+1)+A001077(n)`
-/

namespace A097924.P17671906411972281686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015448 (n + 1) + A001077 n

end

end A097924.P17671906411972281686

namespace A097924

/-- `A015448(n+1)+A001077(n)` -/
def P17671906411972281686.Spec : Prop :=
  ∀ n, P17671906411972281686.a n = A097924 n

end A097924

/-! ## A097924.P8893147469420496930

`A033887(n)+A001076(n+1)`
-/

namespace A097924.P8893147469420496930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033887 n + A001076 (n + 1)

end

end A097924.P8893147469420496930

namespace A097924

/-- `A033887(n)+A001076(n+1)` -/
def P8893147469420496930.Spec : Prop :=
  ∀ n, P8893147469420496930.a n = A097924 n

end A097924

/-! ## A097924.P16694013698176437266

`A294262(n)+A120775(n+1)`
-/

namespace A097924.P16694013698176437266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294262 n + A120775 (n + 1)

end

end A097924.P16694013698176437266

namespace A097924

/-- `A294262(n)+A120775(n+1)` -/
def P16694013698176437266.Spec : Prop :=
  ∀ n, P16694013698176437266.a n = A097924 n

end A097924

/-! ## A097924.P221014849774883327

`A364754(n+1)+A232970(n)`
-/

namespace A097924.P221014849774883327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364754 (n + 1) + A232970 n

end

end A097924.P221014849774883327

namespace A097924

/-- `A364754(n+1)+A232970(n)` -/
def P221014849774883327.Spec : Prop :=
  ∀ n, P221014849774883327.a n = A097924 n

end A097924

/-! ## A097924.P11720585024761190065

`A014445(n+1)-A001076(n)`
-/

namespace A097924.P11720585024761190065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 (n + 1) - A001076 n

end

end A097924.P11720585024761190065

namespace A097924

/-- `A014445(n+1)-A001076(n)` -/
def P11720585024761190065.Spec : Prop :=
  ∀ n, P11720585024761190065.a n = A097924 n

end A097924

/-! ## A097924.P12298412320597898634

`A001076(n+1)+Δ[A001076(n)]`
-/

namespace A097924.P12298412320597898634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 (n + 1) + (f1 (n + 1) - f1 n)

end

end A097924.P12298412320597898634

namespace A097924

/-- `A001076(n+1)+Δ[A001076(n)]` -/
def P12298412320597898634.Spec : Prop :=
  ∀ n, P12298412320597898634.a n = A097924 n

end A097924

/-!
# A097925: Number of (n,3) Freiman-Wyner sequences.

The programs for A097925, there is no canonical definition to state claims against.
-/

/-! ## A097925.P8549759401194209950

`A299595(A167614(n+4))-a(n-1)` with `a(0)=7`
-/

namespace A097925.P8549759401194209950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A299595 (A167614 (n + 4)).toNat - a (n - 1)

end

end A097925.P8549759401194209950

/-! ## A097925.P5094102992116336024

`A103221(A275778(n+7))-A192804(n)`
-/

namespace A097925.P5094102992116336024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A275778 (n + 7)).toNat - A192804 n

end

end A097925.P5094102992116336024

/-! ## A097925.P14413133440290598381

`A249728(A251319(n+1))+record[2^val(n+1, 2)]`
-/

namespace A097925.P14413133440290598381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (A251319 (n + 1)).toNat + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A097925.P14413133440290598381

/-!
# A097926: Number of (n,4) Freiman-Wyner sequences.

The programs for A097926, the canonical program `A097926.P11923288587698775998` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097926 has offset 5).

The definition of A097926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097926.P17186409822927251118

`2*A251704(n+6)`
-/

namespace A097926.P17186409822927251118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A251704 (n + 6)

end

end A097926.P17186409822927251118

namespace A097926

/-- `2*A251704(n+6)` -/
def P17186409822927251118.Spec : Prop :=
  ∀ n, P17186409822927251118.a n = A097926 (n + 5)

end A097926

/-! ## A097926.P11923288587698775998

`A001630(n)+3*A001630(n+5)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A097926

/-- `A001630(n)+3*A001630(n+5)` -/
def P11923288587698775998.Spec : Prop :=
  ∀ n, P11923288587698775998.a n = A097926 (n + 5)

theorem P11923288587698775998.correct : P11923288587698775998.Spec := by
  intro n
  simp only [A097926, Nat.add_sub_cancel]

end A097926

/-! ## A097926.P4658982731788236462

`A135492(n+2)+Δ[A135492(n+4)]`
-/

namespace A097926.P4658982731788236462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135492 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135492 (n + 2) + (f1 (n + 1) - f1 n)

end

end A097926.P4658982731788236462

namespace A097926

/-- `A135492(n+2)+Δ[A135492(n+4)]` -/
def P4658982731788236462.Spec : Prop :=
  ∀ n, P4658982731788236462.a n = A097926 (n + 5)

end A097926

/-! ## A097926.P515346128784914537

`Δ[A001630(n+7)]-A251704(n+4)`
-/

namespace A097926.P515346128784914537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001630 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A251704 (n + 4)

end

end A097926.P515346128784914537

namespace A097926

/-- `Δ[A001630(n+7)]-A251704(n+4)` -/
def P515346128784914537.Spec : Prop :=
  ∀ n, P515346128784914537.a n = A097926 (n + 5)

end A097926

/-! ## A097926.P6586965782717381670

`A005843(A251704(n+6))`
-/

namespace A097926.P6586965782717381670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A251704 (n + 6)).toNat

end

end A097926.P6586965782717381670

namespace A097926

/-- `A005843(A251704(n+6))` -/
def P6586965782717381670.Spec : Prop :=
  ∀ n, P6586965782717381670.a n = A097926 (n + 5)

end A097926

/-!
# A097928: Numbers in base 10 that are palindromic in bases 3 and 4.

The programs for A097928, there is no canonical definition to state claims against.
-/

/-! ## A097928.P2656673554774691475

`∩[A014190(n+1), A014192(n+1)]`
-/

namespace A097928.P2656673554774691475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097928.P2656673554774691475

/-! ## A097928.P11421787595425433887

`eq[A055947(n)², A055949(n)]`
-/

namespace A097928.P11421787595425433887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055947 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055949 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097928.P11421787595425433887

/-!
# A097929: Numbers in base 10 that are palindromic in bases 4 and 5.

The programs for A097929, there is no canonical definition to state claims against.
-/

/-! ## A097929.P17812435251910337897

`∩[A014192(n+1), A029952(n+1)]`
-/

namespace A097929.P17812435251910337897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097929.P17812435251910337897

/-! ## A097929.P4493348827278112002

`xor(A000010(A060001(n+1)), A283402(n))`
-/

namespace A097929.P4493348827278112002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000010 (A060001 (n + 1)).toNat) (A283402 n)

end

end A097929.P4493348827278112002

/-!
# A097930: Numbers in base 10 that are palindromic in bases 5 and 6.

The programs for A097930, there is no canonical definition to state claims against.
-/

/-! ## A097930.P13786373057493382022

`∩[A029952(n+1), A029953(n+1)]`
-/

namespace A097930.P13786373057493382022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097930.P13786373057493382022

/-! ## A097930.P3090602200369570657

`eq[n, A030105(A030104(n))]`
-/

namespace A097930.P3090602200369570657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030105 (A030104 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097930.P3090602200369570657

/-! ## A097930.P17350504273586923627

`eq[A055951(n)², A055953(n)]`
-/

namespace A097930.P17350504273586923627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055951 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097930.P17350504273586923627

/-! ## A097930.P16619170337922118957

`eq[2*A030104(n), A055952(n)]`
-/

namespace A097930.P16619170337922118957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A030104 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097930.P16619170337922118957

/-! ## A097930.P18384799555779395694

`eq[A005843(n), A055952(A030104(n))]`
-/

namespace A097930.P18384799555779395694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055952 (A030104 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097930.P18384799555779395694

/-!
# A097931: Numbers in base 10 that are palindromic in bases 6 and 7.

The programs for A097931, there is no canonical definition to state claims against.
-/

/-! ## A097931.P5759522006920707894

`∩[A029953(n+1), A029954(n+1)]`
-/

namespace A097931.P5759522006920707894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097931.P5759522006920707894

/-! ## A097931.P11809038106054948055

`eq[A055953(n)², A055955(n)]`
-/

namespace A097931.P11809038106054948055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055953 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097931.P11809038106054948055

/-! ## A097931.P2399833926933627810

`eq[A030105(n)-n, A055955(n)]`
-/

namespace A097931.P2399833926933627810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030105 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097931.P2399833926933627810

/-! ## A097931.P7443665173113688383

`eq[n, A030105(3*A055954(n))]`
-/

namespace A097931.P7443665173113688383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030105 (3 * A055954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097931.P7443665173113688383

/-! ## A097931.P14386513664240637643

`eq[n, A030105(A055954(n)/2)]`
-/

namespace A097931.P14386513664240637643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030105 (SequenceMachineLib.roundAway ((A055954 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097931.P14386513664240637643

/-!
# A097932: Positive integers n such that 2n-19 is prime.

The programs for A097932, the canonical program `A097932.P11808137079334481808` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097932 has offset 1).

The definition of A097932 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097932.P10097312917859667917

`A098605(n+1)+1`
-/

namespace A097932.P10097312917859667917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098605 (n + 1) + 1

end

end A097932.P10097312917859667917

namespace A097932

/-- `A098605(n+1)+1` -/
def P10097312917859667917.Spec : Prop :=
  ∀ n, P10097312917859667917.a n = A097932 (n + 1)

theorem P10097312917859667917.correct : P10097312917859667917.Spec := by
  intro n
  simp only [A097932, Nat.add_sub_cancel, A097932.P10097312917859667917.a, A097932.P11808137079334481808.a, A097480, A097480.P24898552055680441.a, A098605, A098605.P7733621595314557542.a, A097363, A097363.P9324045915537457052.a, A097338, A097338.P887064449779485792.a, A097069, A097069.P18192174897570610825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097932

/-! ## A097932.P11808137079334481808

`A097480(n+1)+2`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A097932

/-- `A097480(n+1)+2` -/
def P11808137079334481808.Spec : Prop :=
  ∀ n, P11808137079334481808.a n = A097932 (n + 1)

theorem P11808137079334481808.correct : P11808137079334481808.Spec := by
  intro n
  simp only [A097932, Nat.add_sub_cancel]

end A097932

/-! ## A097932.P13566180717431323492

`A097363(n+1)+3`
-/

namespace A097932.P13566180717431323492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097363 (n + 1) + 3

end

end A097932.P13566180717431323492

namespace A097932

/-- `A097363(n+1)+3` -/
def P13566180717431323492.Spec : Prop :=
  ∀ n, P13566180717431323492.a n = A097932 (n + 1)

theorem P13566180717431323492.correct : P13566180717431323492.Spec := by
  intro n
  simp only [A097932, Nat.add_sub_cancel, A097932.P13566180717431323492.a, A097932.P11808137079334481808.a, A097363, A097363.P9324045915537457052.a, A097480, A097480.P24898552055680441.a, A097338, A097338.P887064449779485792.a, A097069, A097069.P18192174897570610825.a, A089192, A089192.P5097066678155882464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097932

/-! ## A097932.P1423596852806256181

`A097338(n+1)+4`
-/

namespace A097932.P1423596852806256181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 1) + 4

end

end A097932.P1423596852806256181

namespace A097932

/-- `A097338(n+1)+4` -/
def P1423596852806256181.Spec : Prop :=
  ∀ n, P1423596852806256181.a n = A097932 (n + 1)

theorem P1423596852806256181.correct : P1423596852806256181.Spec := by
  intro n
  simp only [A097932, Nat.add_sub_cancel, A097932.P1423596852806256181.a, A097932.P11808137079334481808.a, A097338, A097338.P887064449779485792.a, A097480, A097480.P24898552055680441.a, A097069, A097069.P18192174897570610825.a, A097363, A097363.P9324045915537457052.a, A089192, A089192.P5097066678155882464.a, A006254, A006254.P17336495081768971287.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097932

/-! ## A097932.P899226293304363581

`A097069(n+1)+5`
-/

namespace A097932.P899226293304363581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1) + 5

end

end A097932.P899226293304363581

namespace A097932

/-- `A097069(n+1)+5` -/
def P899226293304363581.Spec : Prop :=
  ∀ n, P899226293304363581.a n = A097932 (n + 1)

theorem P899226293304363581.correct : P899226293304363581.Spec := by
  intro n
  simp only [A097932, Nat.add_sub_cancel, A097932.P899226293304363581.a, A097932.P11808137079334481808.a, A097069, A097069.P18192174897570610825.a, A097480, A097480.P24898552055680441.a, A089192, A089192.P5097066678155882464.a, A097363, A097363.P9324045915537457052.a, A006254, A006254.P17336495081768971287.a, A097338, A097338.P887064449779485792.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097932

/-! ## A097932.P14650328839020043379

`A089192(n+1)+6`
-/

namespace A097932.P14650328839020043379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1) + 6

end

end A097932.P14650328839020043379

namespace A097932

/-- `A089192(n+1)+6` -/
def P14650328839020043379.Spec : Prop :=
  ∀ n, P14650328839020043379.a n = A097932 (n + 1)

theorem P14650328839020043379.correct : P14650328839020043379.Spec := by
  intro n
  simp only [A097932, Nat.add_sub_cancel, A097932.P14650328839020043379.a, A097932.P11808137079334481808.a, A089192, A089192.P5097066678155882464.a, A097480, A097480.P24898552055680441.a, A006254, A006254.P17336495081768971287.a, A097363, A097363.P9324045915537457052.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A097338, A097338.P887064449779485792.a, A097069, A097069.P18192174897570610825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097932

/-! ## A097932.P11448316173631549527

`A089253(n+1)+7`
-/

namespace A097932.P11448316173631549527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1) + 7

end

end A097932.P11448316173631549527

namespace A097932

/-- `A089253(n+1)+7` -/
def P11448316173631549527.Spec : Prop :=
  ∀ n, P11448316173631549527.a n = A097932 (n + 1)

end A097932

/-! ## A097932.P3312932635772729802

`A098090(n+1)+8`
-/

namespace A097932.P3312932635772729802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) + 8

end

end A097932.P3312932635772729802

namespace A097932

/-- `A098090(n+1)+8` -/
def P3312932635772729802.Spec : Prop :=
  ∀ n, P3312932635772729802.a n = A097932 (n + 1)

end A097932

/-! ## A097932.P7095102171886200878

`A006254(n+1)+9`
-/

namespace A097932.P7095102171886200878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) + 9

end

end A097932.P7095102171886200878

namespace A097932

/-- `A006254(n+1)+9` -/
def P7095102171886200878.Spec : Prop :=
  ∀ n, P7095102171886200878.a n = A097932 (n + 1)

end A097932

/-! ## A097932.P2894414752403983676

`A005097(n+1)+10`
-/

namespace A097932.P2894414752403983676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + 10

end

end A097932.P2894414752403983676

namespace A097932

/-- `A005097(n+1)+10` -/
def P2894414752403983676.Spec : Prop :=
  ∀ n, P2894414752403983676.a n = A097932 (n + 1)

end A097932

/-! ## A097932.P2161951128858401172

`A177018(n+1)+n+8`
-/

namespace A097932.P2161951128858401172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177018 (n + 1) + (n + 8 : ℤ)

end

end A097932.P2161951128858401172

namespace A097932

/-- `A177018(n+1)+n+8` -/
def P2161951128858401172.Spec : Prop :=
  ∀ n, P2161951128858401172.a n = A097932 (n + 1)

end A097932

/-! ## A097932.P17331065757796095005

`A163057(n+1)+9-n`
-/

namespace A097932.P17331065757796095005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163057 (n + 1) + (9 - (n : ℤ))

end

end A097932.P17331065757796095005

namespace A097932

/-- `A163057(n+1)+9-n` -/
def P17331065757796095005.Spec : Prop :=
  ∀ n, P17331065757796095005.a n = A097932 (n + 1)

end A097932

/-! ## A097932.P13549593691396195001

`A008507(n+1)+n+11`
-/

namespace A097932.P13549593691396195001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008507 (n + 1) + (n + 11 : ℤ)

end

end A097932.P13549593691396195001

namespace A097932

/-- `A008507(n+1)+n+11` -/
def P13549593691396195001.Spec : Prop :=
  ∀ n, P13549593691396195001.a n = A097932 (n + 1)

end A097932

/-! ## A097932.P15810185978041225164

`A175540(n+1)+10-n`
-/

namespace A097932.P15810185978041225164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175540 (n + 1) + (10 - (n : ℤ))

end

end A097932.P15810185978041225164

namespace A097932

/-- `A175540(n+1)+10-n` -/
def P15810185978041225164.Spec : Prop :=
  ∀ n, P15810185978041225164.a n = A097932 (n + 1)

end A097932

/-! ## A097932.P2837080878734642336

`A124678(n+2)+7`
-/

namespace A097932.P2837080878734642336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124678 (n + 2) + 7

end

end A097932.P2837080878734642336

namespace A097932

/-- `A124678(n+2)+7` -/
def P2837080878734642336.Spec : Prop :=
  ∀ n, P2837080878734642336.a n = A097932 (n + 1)

end A097932

/-! ## A097932.P2382848587434101321

`A111333(n+2)+9`
-/

namespace A097932.P2382848587434101321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 2) + 9

end

end A097932.P2382848587434101321

namespace A097932

/-- `A111333(n+2)+9` -/
def P2382848587434101321.Spec : Prop :=
  ∀ n, P2382848587434101321.a n = A097932 (n + 1)

end A097932

/-! ## A097932.P1532299791504123734

`A130291(n+2)+9`
-/

namespace A097932.P1532299791504123734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130291 (n + 2) + 9

end

end A097932.P1532299791504123734

namespace A097932

/-- `A130291(n+2)+9` -/
def P1532299791504123734.Spec : Prop :=
  ∀ n, P1532299791504123734.a n = A097932 (n + 1)

end A097932

/-! ## A097932.P17470627103562071604

`A020723(A006254(n+1))`
-/

namespace A097932.P17470627103562071604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020723 (A006254 (n + 1)).toNat

end

end A097932.P17470627103562071604

namespace A097932

/-- `A020723(A006254(n+1))` -/
def P17470627103562071604.Spec : Prop :=
  ∀ n, P17470627103562071604.a n = A097932 (n + 1)

end A097932

/-! ## A097932.P11228184156940133126

`A020723(A111333(n+2))`
-/

namespace A097932.P11228184156940133126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020723 (A111333 (n + 2)).toNat

end

end A097932.P11228184156940133126

namespace A097932

/-- `A020723(A111333(n+2))` -/
def P11228184156940133126.Spec : Prop :=
  ∀ n, P11228184156940133126.a n = A097932 (n + 1)

end A097932

/-! ## A097932.P1327898902414575104

`A020723(A130291(n+2))`
-/

namespace A097932.P1327898902414575104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020723 (A130291 (n + 2)).toNat

end

end A097932.P1327898902414575104

namespace A097932

/-- `A020723(A130291(n+2))` -/
def P1327898902414575104.Spec : Prop :=
  ∀ n, P1327898902414575104.a n = A097932 (n + 1)

end A097932

/-!
# A097933: Primes p that divide 3^((p-1)/2) - 1.

The programs for A097933, the canonical program `A097933.P17175891625962251067` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097933 has offset 1).

The definition of A097933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097933.P17175891625962251067

`p?[xor(2, 3*(n+1))]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097933

/-- `p?[xor(2, 3*(n+1))]` -/
def P17175891625962251067.Spec : Prop :=
  ∀ n, (P17175891625962251067.a n : ℤ) = A097933 (n + 1)

theorem P17175891625962251067.correct : P17175891625962251067.Spec := by
  intro n
  simp only [A097933, Nat.add_sub_cancel]

end A097933

/-! ## A097933.P11622761736638240267

`p?[xor(2, 3*n)-3]`
-/

namespace A097933.P11622761736638240267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (3 * n) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097933.P11622761736638240267

namespace A097933

/-- `p?[xor(2, 3*n)-3]` -/
def P11622761736638240267.Spec : Prop :=
  ∀ n, P11622761736638240267.a n = A097933 (n + 1)

end A097933

/-! ## A097933.P2512981143900677480

`p?[or(5, 2*n)+n+3]`
-/

namespace A097933.P2512981143900677480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 (2 * n) + (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A097933.P2512981143900677480

namespace A097933

/-- `p?[or(5, 2*n)+n+3]` -/
def P2512981143900677480.Spec : Prop :=
  ∀ n, (P2512981143900677480.a n : ℤ) = A097933 (n + 1)

end A097933

/-! ## A097933.P2888671850704056471

`p?[floor(3*(4*n+3)/5)]`
-/

namespace A097933.P2888671850704056471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((4 * n + 3 : ℚ) / 5)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097933.P2888671850704056471

namespace A097933

/-- `p?[floor(3*(4*n+3)/5)]` -/
def P2888671850704056471.Spec : Prop :=
  ∀ n, P2888671850704056471.a n = A097933 (n + 1)

end A097933

/-! ## A097933.P17207780372686161145

`A296933(n+2)`
-/

namespace A097933.P17207780372686161145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296933 (n + 2)

end

end A097933.P17207780372686161145

namespace A097933

/-- `A296933(n+2)` -/
def P17207780372686161145.Spec : Prop :=
  ∀ n, P17207780372686161145.a n = A097933 (n + 1)

end A097933

/-! ## A097933.P11859888265721156401

`A038874(n+3)`
-/

namespace A097933.P11859888265721156401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 3)

end

end A097933.P11859888265721156401

namespace A097933

/-- `A038874(n+3)` -/
def P11859888265721156401.Spec : Prop :=
  ∀ n, P11859888265721156401.a n = A097933 (n + 1)

end A097933

/-! ## A097933.P8935253813514540076

`∩[A000040(n+1), A072330(n+1)]`
-/

namespace A097933.P8935253813514540076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097933.P8935253813514540076

namespace A097933

/-- `∩[A000040(n+1), A072330(n+1)]` -/
def P8935253813514540076.Spec : Prop :=
  ∀ n, (P8935253813514540076.a n : ℤ) = A097933 (n + 1)

end A097933

/-! ## A097933.P5875738921666712503

`∩[A365313(n+1), A260442(n)]`
-/

namespace A097933.P5875738921666712503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097933.P5875738921666712503

namespace A097933

/-- `∩[A365313(n+1), A260442(n)]` -/
def P5875738921666712503.Spec : Prop :=
  ∀ n, (P5875738921666712503.a n : ℤ) = A097933 (n + 1)

end A097933

/-! ## A097933.P6728510296091870606

`record[A006530(A072330(n+2))]`
-/

namespace A097933.P6728510296091870606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A072330 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097933.P6728510296091870606

namespace A097933

/-- `record[A006530(A072330(n+2))]` -/
def P6728510296091870606.Spec : Prop :=
  ∀ n, P6728510296091870606.a n = A097933 (n + 1)

end A097933

/-! ## A097933.P17816836742015550378

`filter[A072330(n+1), A010051(#)]`
-/

namespace A097933.P17816836742015550378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A097933.P17816836742015550378

namespace A097933

/-- `filter[A072330(n+1), A010051(#)]` -/
def P17816836742015550378.Spec : Prop :=
  ∀ n, P17816836742015550378.a n = A097933 (n + 1)

end A097933

/-! ## A097933.P17431407021161142008

`filter[A365313(n+1), A008966(#)]`
-/

namespace A097933.P17431407021161142008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365313 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A097933.P17431407021161142008

namespace A097933

/-- `filter[A365313(n+1), A008966(#)]` -/
def P17431407021161142008.Spec : Prop :=
  ∀ n, P17431407021161142008.a n = A097933 (n + 1)

end A097933

/-! ## A097933.P15785534034174305801

`filter[A365313(n+1), A010051(#)]`
-/

namespace A097933.P15785534034174305801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365313 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A097933.P15785534034174305801

namespace A097933

/-- `filter[A365313(n+1), A010051(#)]` -/
def P15785534034174305801.Spec : Prop :=
  ∀ n, P15785534034174305801.a n = A097933 (n + 1)

end A097933

/-! ## A097933.P6092773425380743682

`filter[A072330(n+1), A358751(#)]`
-/

namespace A097933.P6092773425380743682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A097933.P6092773425380743682

namespace A097933

/-- `filter[A072330(n+1), A358751(#)]` -/
def P6092773425380743682.Spec : Prop :=
  ∀ n, P6092773425380743682.a n = A097933 (n + 1)

end A097933

/-! ## A097933.P14887447265769947805

`filter[A072330(n+1), A358771(#)]`
-/

namespace A097933.P14887447265769947805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358771 (f1 j).toNat = 1) n)

end

end A097933.P14887447265769947805

namespace A097933

/-- `filter[A072330(n+1), A358771(#)]` -/
def P14887447265769947805.Spec : Prop :=
  ∀ n, P14887447265769947805.a n = A097933 (n + 1)

end A097933

/-! ## A097933.P11015630475719260598

`filter[A391369(n+2), A359172(#)]`
-/

namespace A097933.P11015630475719260598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359172 (f1 j).toNat = 1) n)

end

end A097933.P11015630475719260598

namespace A097933

/-- `filter[A391369(n+2), A359172(#)]` -/
def P11015630475719260598.Spec : Prop :=
  ∀ n, P11015630475719260598.a n = A097933 (n + 1)

end A097933

/-! ## A097933.P685555309211674898

`filter[A391369(n+2), A359377(#)]`
-/

namespace A097933.P685555309211674898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A097933.P685555309211674898

namespace A097933

/-- `filter[A391369(n+2), A359377(#)]` -/
def P685555309211674898.Spec : Prop :=
  ∀ n, P685555309211674898.a n = A097933 (n + 1)

end A097933

/-! ## A097933.P5033159890787225111

`filter[A391369(n+2), A373154(#)]`
-/

namespace A097933.P5033159890787225111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373154 (f1 j).toNat = 1) n)

end

end A097933.P5033159890787225111

namespace A097933

/-- `filter[A391369(n+2), A373154(#)]` -/
def P5033159890787225111.Spec : Prop :=
  ∀ n, P5033159890787225111.a n = A097933 (n + 1)

end A097933

/-! ## A097933.P17821010104815361078

`filter[A391369(n+3), A008966(#)]`
-/

namespace A097933.P17821010104815361078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A097933.P17821010104815361078

namespace A097933

/-- `filter[A391369(n+3), A008966(#)]` -/
def P17821010104815361078.Spec : Prop :=
  ∀ n, P17821010104815361078.a n = A097933 (n + 1)

end A097933

/-! ## A097933.P3066663831691864575

`filter[A391369(n+3), A010051(#)]`
-/

namespace A097933.P3066663831691864575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A097933.P3066663831691864575

namespace A097933

/-- `filter[A391369(n+3), A010051(#)]` -/
def P3066663831691864575.Spec : Prop :=
  ∀ n, P3066663831691864575.a n = A097933 (n + 1)

end A097933

/-! ## A097933.P18236775326014638870

`filter[A391369(n+3), A066829(#)]`
-/

namespace A097933.P18236775326014638870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A097933.P18236775326014638870

namespace A097933

/-- `filter[A391369(n+3), A066829(#)]` -/
def P18236775326014638870.Spec : Prop :=
  ∀ n, P18236775326014638870.a n = A097933 (n + 1)

end A097933

/-!
# A097934: Primes p that divide 3^((p-1)/2) - 2^((p-1)/2).

The programs for A097934, the canonical program `A097934.P12595539914495329438` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097934 has offset 1).

The definition of A097934 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097934.P12595539914495329438

`p?[a(n-1)+a(n-4)-a(n-5)]` with `a(0)=1, a(1)=5, a(2)=19, a(3)=23, a(4)=25`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097934

/-- `p?[a(n-1)+a(n-4)-a(n-5)]` -/
def P12595539914495329438.Spec : Prop :=
  ∀ n, P12595539914495329438.a n = A097934 (n + 1)

theorem P12595539914495329438.correct : P12595539914495329438.Spec := by
  intro n
  simp only [A097934, Nat.add_sub_cancel]

end A097934

/-! ## A097934.P14991753440947778373

`∪[A141170(n+2), A141171(n+2)]`
-/

namespace A097934.P14991753440947778373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097934.P14991753440947778373

namespace A097934

/-- `∪[A141170(n+2), A141171(n+2)]` -/
def P14991753440947778373.Spec : Prop :=
  ∀ n, (P14991753440947778373.a n : ℤ) = A097934 (n + 1)

end A097934

/-! ## A097934.P11006107960144849884

`A038876(n+3)`
-/

namespace A097934.P11006107960144849884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 3)

end

end A097934.P11006107960144849884

namespace A097934

/-- `A038876(n+3)` -/
def P11006107960144849884.Spec : Prop :=
  ∀ n, P11006107960144849884.a n = A097934 (n + 1)

end A097934

/-! ## A097934.P6492134530428814460

`p?[A391371(n+3)]`
-/

namespace A097934.P6492134530428814460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391371 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097934.P6492134530428814460

namespace A097934

/-- `p?[A391371(n+3)]` -/
def P6492134530428814460.Spec : Prop :=
  ∀ n, P6492134530428814460.a n = A097934 (n + 1)

end A097934

/-! ## A097934.P17439092646854950958

`p?[A262931(n+4)]`
-/

namespace A097934.P17439092646854950958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262931 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097934.P17439092646854950958

namespace A097934

/-- `p?[A262931(n+4)]` -/
def P17439092646854950958.Spec : Prop :=
  ∀ n, P17439092646854950958.a n = A097934 (n + 1)

end A097934

/-! ## A097934.P9508924059837385404

`filter[A391371(n+1), A373154(#)]`
-/

namespace A097934.P9508924059837385404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373154 (f1 j).toNat = 1) n)

end

end A097934.P9508924059837385404

namespace A097934

/-- `filter[A391371(n+1), A373154(#)]` -/
def P9508924059837385404.Spec : Prop :=
  ∀ n, P9508924059837385404.a n = A097934 (n + 1)

end A097934

/-! ## A097934.P14827137496954099695

`filter[A391371(n+2), A359172(#)]`
-/

namespace A097934.P14827137496954099695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391371 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359172 (f1 j).toNat = 1) n)

end

end A097934.P14827137496954099695

namespace A097934

/-- `filter[A391371(n+2), A359172(#)]` -/
def P14827137496954099695.Spec : Prop :=
  ∀ n, P14827137496954099695.a n = A097934 (n + 1)

end A097934

/-! ## A097934.P6443529570662555376

`filter[A391371(n+2), A359377(#)]`
-/

namespace A097934.P6443529570662555376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391371 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A097934.P6443529570662555376

namespace A097934

/-- `filter[A391371(n+2), A359377(#)]` -/
def P6443529570662555376.Spec : Prop :=
  ∀ n, P6443529570662555376.a n = A097934 (n + 1)

end A097934

/-! ## A097934.P3168013572296693003

`filter[A391371(n+3), A008966(#)]`
-/

namespace A097934.P3168013572296693003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391371 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A097934.P3168013572296693003

namespace A097934

/-- `filter[A391371(n+3), A008966(#)]` -/
def P3168013572296693003.Spec : Prop :=
  ∀ n, P3168013572296693003.a n = A097934 (n + 1)

end A097934

/-! ## A097934.P15200112171947185174

`filter[A391371(n+3), A010051(#)]`
-/

namespace A097934.P15200112171947185174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391371 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A097934.P15200112171947185174

namespace A097934

/-- `filter[A391371(n+3), A010051(#)]` -/
def P15200112171947185174.Spec : Prop :=
  ∀ n, P15200112171947185174.a n = A097934 (n + 1)

end A097934

/-! ## A097934.P9553464930793481982

`filter[A391371(n+3), A066829(#)]`
-/

namespace A097934.P9553464930793481982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391371 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A097934.P9553464930793481982

namespace A097934

/-- `filter[A391371(n+3), A066829(#)]` -/
def P9553464930793481982.Spec : Prop :=
  ∀ n, P9553464930793481982.a n = A097934 (n + 1)

end A097934

/-! ## A097934.P3996599042526976080

`filter[A391371(n+3), A257531(#)]`
-/

namespace A097934.P3996599042526976080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391371 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A097934.P3996599042526976080

namespace A097934

/-- `filter[A391371(n+3), A257531(#)]` -/
def P3996599042526976080.Spec : Prop :=
  ∀ n, P3996599042526976080.a n = A097934 (n + 1)

end A097934

/-! ## A097934.P6116913021416054380

`p?[n*A322796(n)]`
-/

namespace A097934.P6116913021416054380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A322796 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097934.P6116913021416054380

namespace A097934

/-- `p?[n*A322796(n)]` -/
def P6116913021416054380.Spec : Prop :=
  ∀ n, P6116913021416054380.a n = A097934 (n + 1)

end A097934

/-! ## A097934.P7791146148024028234

`filter[A391371(n+2), A323511(#)]`
-/

namespace A097934.P7791146148024028234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391371 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323511 (f1 j).toNat = 1) n)

end

end A097934.P7791146148024028234

namespace A097934

/-- `filter[A391371(n+2), A323511(#)]` -/
def P7791146148024028234.Spec : Prop :=
  ∀ n, P7791146148024028234.a n = A097934 (n + 1)

end A097934

/-! ## A097934.P4391271343218925438

`filter[A391371(n+2), A323512(#)]`
-/

namespace A097934.P4391271343218925438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391371 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323512 (f1 j).toNat = 1) n)

end

end A097934.P4391271343218925438

namespace A097934

/-- `filter[A391371(n+2), A323512(#)]` -/
def P4391271343218925438.Spec : Prop :=
  ∀ n, P4391271343218925438.a n = A097934 (n + 1)

end A097934

/-! ## A097934.P844861880101288378

`filter[A391371(n+2), A364250(#)]`
-/

namespace A097934.P844861880101288378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391371 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364250 (f1 j).toNat = 1) n)

end

end A097934.P844861880101288378

namespace A097934

/-- `filter[A391371(n+2), A364250(#)]` -/
def P844861880101288378.Spec : Prop :=
  ∀ n, P844861880101288378.a n = A097934 (n + 1)

end A097934

/-! ## A097934.P9164988699665153318

`filter[A391371(n+3), A049240(#)]`
-/

namespace A097934.P9164988699665153318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391371 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A097934.P9164988699665153318

namespace A097934

/-- `filter[A391371(n+3), A049240(#)]` -/
def P9164988699665153318.Spec : Prop :=
  ∀ n, P9164988699665153318.a n = A097934 (n + 1)

end A097934

/-! ## A097934.P4843286738414376144

`filter[A391371(n+3), A099104(#)]`
-/

namespace A097934.P4843286738414376144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391371 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A097934.P4843286738414376144

namespace A097934

/-- `filter[A391371(n+3), A099104(#)]` -/
def P4843286738414376144.Spec : Prop :=
  ∀ n, P4843286738414376144.a n = A097934 (n + 1)

end A097934

/-! ## A097934.P3637924262422726849

`filter[A391371(n+3), A174897(#)]`
-/

namespace A097934.P3637924262422726849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391371 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A097934.P3637924262422726849

namespace A097934

/-- `filter[A391371(n+3), A174897(#)]` -/
def P3637924262422726849.Spec : Prop :=
  ∀ n, P3637924262422726849.a n = A097934 (n + 1)

end A097934

/-! ## A097934.P5012195582915464722

`filter[A391371(n+3), A181183(#)]`
-/

namespace A097934.P5012195582915464722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391371 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A097934.P5012195582915464722

namespace A097934

/-- `filter[A391371(n+3), A181183(#)]` -/
def P5012195582915464722.Spec : Prop :=
  ∀ n, P5012195582915464722.a n = A097934 (n + 1)

end A097934

/-!
# A097938: Primes of the form prime(n)^2 - prime(n+1) - 1.

The programs for A097938, there is no canonical definition to state claims against.
-/

/-! ## A097938.P8365329505164683917

`p?[A062235(n+1)-1]`
-/

namespace A097938.P8365329505164683917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062235 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097938.P8365329505164683917

/-! ## A097938.P9914934740099394374

`p?[A158611(n+1)²-A028815(n)]`
-/

namespace A097938.P9914934740099394374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1) ^ 2 - A028815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097938.P9914934740099394374

/-! ## A097938.P14024884045736335355

`p?[A084920(n+1)-A045344(n+1)]`
-/

namespace A097938.P14024884045736335355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) - A045344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097938.P14024884045736335355

/-! ## A097938.P2731660992424886370

`p?[A084920(n+1)-A065091(n+1)]`
-/

namespace A097938.P2731660992424886370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) - A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097938.P2731660992424886370

/-! ## A097938.P18402298426845767076

`p?[A001248(n+1)-A008864(n+2)]`
-/

namespace A097938.P18402298426845767076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A008864 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097938.P18402298426845767076

/-! ## A097938.P13382680332976762601

`p?[A084920(n+1)-A000040(n+2)]`
-/

namespace A097938.P13382680332976762601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) - A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097938.P13382680332976762601

/-! ## A097938.P12544465898467421579

`p?[A008578(n+1)²-A008864(n+1)]`
-/

namespace A097938.P12544465898467421579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) ^ 2 - A008864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097938.P12544465898467421579

/-! ## A097938.P14384644151126198444

`p?[A000040(n+1)²-A135731(n+1)]`
-/

namespace A097938.P14384644151126198444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - A135731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097938.P14384644151126198444

/-! ## A097938.P7126833382031801193

`p?[A008578(n+1)²-A175216(n+1)]`
-/

namespace A097938.P7126833382031801193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) ^ 2 - A175216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097938.P7126833382031801193

/-! ## A097938.P11800202623649145553

`p?[A182986(n+1)²-A008864(n+1)]`
-/

namespace A097938.P11800202623649145553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1) ^ 2 - A008864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097938.P11800202623649145553

/-!
# A097939: Sum of the smallest parts of all compositions of n.

The programs for A097939, there is no canonical definition to state claims against.
-/

/-! ## A097939.P9614597314276014812

`∑[A171682(n+1)]`
-/

namespace A097939.P9614597314276014812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097939.P9614597314276014812

/-! ## A097939.P3182489422554482832

`∑[record[A171682(A291769(n))]]`
-/

namespace A097939.P3182489422554482832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171682 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097939.P3182489422554482832

/-! ## A097939.P14651439619105098960

`∑[record[A171682(A344180(n))]]`
-/

namespace A097939.P14651439619105098960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171682 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097939.P14651439619105098960

/-! ## A097939.P3927651769772394090

`∑[A238859(n)+A008930(n)]-1`
-/

namespace A097939.P3927651769772394090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238859 n + A008930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A097939.P3927651769772394090

/-! ## A097939.P13513876665322281460

`∑[A008930(n)+A238859(n)%A238859(n+1)]`
-/

namespace A097939.P13513876665322281460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008930 n + Int.tmod (A238859 n) (A238859 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097939.P13513876665322281460

/-! ## A097939.P3164067646871467387

`∑[A224960(n+2)-2^n]`
-/

namespace A097939.P3164067646871467387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224960 (n + 2) - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097939.P3164067646871467387

/-! ## A097939.P15600548141589785629

`A394677(n+1)/A000142(n+1)`
-/

namespace A097939.P15600548141589785629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A394677 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ)

end

end A097939.P15600548141589785629

/-! ## A097939.P4130841549864248357

`A322427(∑[n]+1)`
-/

namespace A097939.P4130841549864248357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322427 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A097939.P4130841549864248357

/-! ## A097939.P12926243305290004857

`record[A322427(n+1)/A141539(n)]`
-/

namespace A097939.P12926243305290004857
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322427 (n + 1) : ℚ) / (A141539 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097939.P12926243305290004857

/-! ## A097939.P605202498396156736

`or(A000079(n), A322427(A000124(n)))`
-/

namespace A097939.P605202498396156736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 n) (A322427 (A000124 n).toNat)

end

end A097939.P605202498396156736

/-!
# A097940: Sum of smallest parts (counted with multiplicity) of all compositions of n.

The programs for A097940, there is no canonical definition to state claims against.
-/

/-! ## A097940.P3391721419463876906

`A064934(n+1)-A245541(A006906(n))`
-/

namespace A097940.P3391721419463876906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064934 (n + 1) - A245541 (A006906 n).toNat

end

end A097940.P3391721419463876906

/-!
# A097941: Total number of smallest parts in all compositions of n.

The programs for A097941, there is no canonical definition to state claims against.
-/

/-! ## A097941.P15576711564646214805

`A323111(n+1)+A105039(n+1)`
-/

namespace A097941.P15576711564646214805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323111 (n + 1) + A105039 (n + 1)

end

end A097941.P15576711564646214805

/-! ## A097941.P16711834673576694420

`A323111(n+1)+A001792(n)-∑[A323111(n+1)]`
-/

namespace A097941.P16711834673576694420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323111 (n + 1) + (A001792 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097941.P16711834673576694420

/-! ## A097941.P8727334234680209226

`A323111(n+1)+∑[A045623(n)-A323111(n+1)]`
-/

namespace A097941.P8727334234680209226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n - A323111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323111 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097941.P8727334234680209226

/-! ## A097941.P1170283813156096613

`A238342(∑[n]+1)+A045623(n)`
-/

namespace A097941.P1170283813156096613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + A045623 n

end

end A097941.P1170283813156096613

/-! ## A097941.P16318863265213407908

`A214258(A058331(n+1))+A105039(n+1)`
-/

namespace A097941.P16318863265213407908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (A058331 (n + 1)).toNat + A105039 (n + 1)

end

end A097941.P16318863265213407908

/-! ## A097941.P7275783384115953598

`A214258(A064226(n))+A105039(n+1)`
-/

namespace A097941.P7275783384115953598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (A064226 n).toNat + A105039 (n + 1)

end

end A097941.P7275783384115953598

/-! ## A097941.P16764443696432431663

`A214258(A006137(n+1))+A105039(n+1)`
-/

namespace A097941.P16764443696432431663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (A006137 (n + 1)).toNat + A105039 (n + 1)

end

end A097941.P16764443696432431663

/-!
# A097942: Highly totient numbers: each number k on this list has more solutions to the equation phi(x) = k than any preceding k (where phi is Euler's totient function, A000010).

The programs for A097942, there is no canonical definition to state claims against.
-/

/-! ## A097942.P4603800998021583921

`A007374(A131934(n+1))`
-/

namespace A097942.P4603800998021583921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007374 (A131934 (n + 1)).toNat

end

end A097942.P4603800998021583921

/-! ## A097942.P17622595678871139076

`A007374(record[A058277(n+1)])`
-/

namespace A097942.P17622595678871139076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007374 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097942.P17622595678871139076

/-! ## A097942.P15737624890404031335

`A014573(record[A058277(n+1)])`
-/

namespace A097942.P15737624890404031335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014573 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097942.P15737624890404031335

/-! ## A097942.P16078274578785792870

`A014573(A131934(n+1)/A139551(n))`
-/

namespace A097942.P16078274578785792870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014573 (SequenceMachineLib.roundAway ((A131934 (n + 1) : ℚ) / (A139551 n : ℚ))).toNat

end

end A097942.P16078274578785792870

/-! ## A097942.P8110655301422607123

`A014573(A131934(n+1)^A139551(n))`
-/

namespace A097942.P8110655301422607123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014573 (SequenceMachineLib.roundAway ((A131934 (n + 1) : ℚ) ^ (A139551 n : ℤ))).toNat

end

end A097942.P8110655301422607123

/-!
# A097944: Number of digits in n-th prime.

The programs for A097944, the canonical program `A097944.P13040113314910335954` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097944 has offset 1).

The definition of A097944 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097944.P5704329387061010162

`A068670(n+1)-A068670(n)`
-/

namespace A097944.P5704329387061010162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068670 (n + 1) - A068670 n

end

end A097944.P5704329387061010162

namespace A097944

/-- `A068670(n+1)-A068670(n)` -/
def P5704329387061010162.Spec : Prop :=
  ∀ n, P5704329387061010162.a n = A097944 (n + 1)

end A097944

/-! ## A097944.P13040113314910335954

`A055642(A000040(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A097944

/-- `A055642(A000040(n+1))` -/
def P13040113314910335954.Spec : Prop :=
  ∀ n, P13040113314910335954.a n = A097944 (n + 1)

theorem P13040113314910335954.correct : P13040113314910335954.Spec := by
  intro n
  simp only [A097944, Nat.add_sub_cancel]

end A097944

/-! ## A097944.P6250407711957042942

`Δ[A068670(n)]`
-/

namespace A097944.P6250407711957042942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097944.P6250407711957042942

namespace A097944

/-- `Δ[A068670(n)]` -/
def P6250407711957042942.Spec : Prop :=
  ∀ n, P6250407711957042942.a n = A097944 (n + 1)

end A097944

/-! ## A097944.P13915846760306213817

`∑[char[A006880(n)]]`
-/

namespace A097944.P13915846760306213817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097944.P13915846760306213817

namespace A097944

/-- `∑[char[A006880(n)]]` -/
def P13915846760306213817.Spec : Prop :=
  ∀ n, (P13915846760306213817.a n : ℤ) = A097944 (n + 1)

end A097944

/-! ## A097944.P5286372049806010125

`∑[char[∑[A006879(n)]]]`
-/

namespace A097944.P5286372049806010125
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097944.P5286372049806010125

namespace A097944

/-- `∑[char[∑[A006879(n)]]]` -/
def P5286372049806010125.Spec : Prop :=
  ∀ n, (P5286372049806010125.a n : ℤ) = A097944 (n + 1)

end A097944

/-! ## A097944.P14401051594146176471

`∑[char[A122121(2*n)]]`
-/

namespace A097944.P14401051594146176471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097944.P14401051594146176471

namespace A097944

/-- `∑[char[A122121(2*n)]]` -/
def P14401051594146176471.Spec : Prop :=
  ∀ n, (P14401051594146176471.a n : ℤ) = A097944 (n + 1)

end A097944

/-! ## A097944.P10871116902512278321

`∑[char[A090226(n+1)-1]]`
-/

namespace A097944.P10871116902512278321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090226 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097944.P10871116902512278321

namespace A097944

/-- `∑[char[A090226(n+1)-1]]` -/
def P10871116902512278321.Spec : Prop :=
  ∀ n, (P10871116902512278321.a n : ℤ) = A097944 (n + 1)

end A097944

/-! ## A097944.P17668700871423904281

`∑{digits}[A000040(n+1), A036370(#)]`
-/

namespace A097944.P17668700871423904281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A036370 x).sum

end

end A097944.P17668700871423904281

namespace A097944

/-- `∑{digits}[A000040(n+1), A036370(#)]` -/
def P17668700871423904281.Spec : Prop :=
  ∀ n, P17668700871423904281.a n = A097944 (n + 1)

end A097944

/-! ## A097944.P974183397990847635

`∑[char[A058289(n)-A058290(n)]]`
-/

namespace A097944.P974183397990847635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058289 n - A058290 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097944.P974183397990847635

namespace A097944

/-- `∑[char[A058289(n)-A058290(n)]]` -/
def P974183397990847635.Spec : Prop :=
  ∀ n, (P974183397990847635.a n : ℤ) = A097944 (n + 1)

end A097944

/-! ## A097944.P10693005613368031322

`∑{digits}[∑[A054541(n+1)], A036370(#)]`
-/

namespace A097944.P10693005613368031322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A036370 x).sum

end

end A097944.P10693005613368031322

namespace A097944

/-- `∑{digits}[∑[A054541(n+1)], A036370(#)]` -/
def P10693005613368031322.Spec : Prop :=
  ∀ n, P10693005613368031322.a n = A097944 (n + 1)

end A097944

/-! ## A097944.P1183211204752120123

`∑{digits}[A000040(n+1), A007318(A007318(#))]`
-/

namespace A097944.P1183211204752120123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007318 (A007318 x).toNat).sum

end

end A097944.P1183211204752120123

namespace A097944

/-- `∑{digits}[A000040(n+1), A007318(A007318(#))]` -/
def P1183211204752120123.Spec : Prop :=
  ∀ n, P1183211204752120123.a n = A097944 (n + 1)

end A097944

/-! ## A097944.P17437566810804174154

`∑[char[A000720(10^n)]]`
-/

namespace A097944.P17437566810804174154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (10 ^ n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097944.P17437566810804174154

namespace A097944

/-- `∑[char[A000720(10^n)]]` -/
def P17437566810804174154.Spec : Prop :=
  ∀ n, (P17437566810804174154.a n : ℤ) = A097944 (n + 1)

end A097944

/-! ## A097944.P9923453995083141396

`A004218(A028911(n))`
-/

namespace A097944.P9923453995083141396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A028911 n).toNat

end

end A097944.P9923453995083141396

namespace A097944

/-- `A004218(A028911(n))` -/
def P9923453995083141396.Spec : Prop :=
  ∀ n, P9923453995083141396.a n = A097944 (n + 1)

end A097944

/-! ## A097944.P683307628333670698

`A055642(A004087(n+1))`
-/

namespace A097944.P683307628333670698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A004087 (n + 1)).toNat

end

end A097944.P683307628333670698

namespace A097944

/-- `A055642(A004087(n+1))` -/
def P683307628333670698.Spec : Prop :=
  ∀ n, P683307628333670698.a n = A097944 (n + 1)

end A097944

/-! ## A097944.P1391168131758705996

`A055642(A074895(n+1))`
-/

namespace A097944.P1391168131758705996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A074895 (n + 1)).toNat

end

end A097944.P1391168131758705996

namespace A097944

/-- `A055642(A074895(n+1))` -/
def P1391168131758705996.Spec : Prop :=
  ∀ n, P1391168131758705996.a n = A097944 (n + 1)

end A097944

/-! ## A097944.P12938426539374337111

`A050252(A008578(n+2))`
-/

namespace A097944.P12938426539374337111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050252 (A008578 (n + 2)).toNat

end

end A097944.P12938426539374337111

namespace A097944

/-- `A050252(A008578(n+2))` -/
def P12938426539374337111.Spec : Prop :=
  ∀ n, P12938426539374337111.a n = A097944 (n + 1)

end A097944

/-! ## A097944.P5282187118000798118

`A055642(record[A000010(n+1)])`
-/

namespace A097944.P5282187118000798118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097944.P5282187118000798118

namespace A097944

/-- `A055642(record[A000010(n+1)])` -/
def P5282187118000798118.Spec : Prop :=
  ∀ n, P5282187118000798118.a n = A097944 (n + 1)

end A097944

/-! ## A097944.P16832151978968145541

`A004218(record[A006530(n+2)])`
-/

namespace A097944.P16832151978968145541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097944.P16832151978968145541

namespace A097944

/-- `A004218(record[A006530(n+2)])` -/
def P16832151978968145541.Spec : Prop :=
  ∀ n, P16832151978968145541.a n = A097944 (n + 1)

end A097944

/-! ## A097944.P10157396342112499385

`A004216(A000040(n+1)+1)+1`
-/

namespace A097944.P10157396342112499385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A000040 (n + 1) + 1).toNat + 1

end

end A097944.P10157396342112499385

namespace A097944

/-- `A004216(A000040(n+1)+1)+1` -/
def P10157396342112499385.Spec : Prop :=
  ∀ n, P10157396342112499385.a n = A097944 (n + 1)

end A097944

/-!
# A097945: a(n) = mu(n)*phi(n) where mu(n) is the Mobius function (A008683) and phi(n) is the Euler totient function (A000010).

The programs for A097945, the canonical program `A097945.P17891307065150780827` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097945 has offset 1).

The definition of A097945 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A008683, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A097945.P3480901331948338850

`A322581(n+1)-A003958(n+1)`
-/

namespace A097945.P3480901331948338850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322581 (n + 1) - A003958 (n + 1)

end

end A097945.P3480901331948338850

namespace A097945

/-- `A322581(n+1)-A003958(n+1)` -/
def P3480901331948338850.Spec : Prop :=
  ∀ n, P3480901331948338850.a n = A097945 (n + 1)

end A097945

/-! ## A097945.P17891307065150780827

`A008683(n+1)*A000010(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A097945

/-- `A008683(n+1)*A000010(n+1)` -/
def P17891307065150780827.Spec : Prop :=
  ∀ n, P17891307065150780827.a n = A097945 (n + 1)

theorem P17891307065150780827.correct : P17891307065150780827.Spec := by
  intro n
  simp only [A097945, Nat.add_sub_cancel]

end A097945

/-! ## A097945.P15669452508347660554

`A008683(n+1)*A003958(n+1)`
-/

namespace A097945.P15669452508347660554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A003958 (n + 1)

end

end A097945.P15669452508347660554

namespace A097945

/-- `A008683(n+1)*A003958(n+1)` -/
def P15669452508347660554.Spec : Prop :=
  ∀ n, P15669452508347660554.a n = A097945 (n + 1)

end A097945

/-! ## A097945.P10305260904060648773

`A008966(n+1)*A023900(n+1)`
-/

namespace A097945.P10305260904060648773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A023900 (n + 1)

end

end A097945.P10305260904060648773

namespace A097945

/-- `A008966(n+1)*A023900(n+1)` -/
def P10305260904060648773.Spec : Prop :=
  ∀ n, P10305260904060648773.a n = A097945 (n + 1)

end A097945

/-! ## A097945.P15700440451195160202

`A008683(n+1)*A047994(n+1)`
-/

namespace A097945.P15700440451195160202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A047994 (n + 1)

end

end A097945.P15700440451195160202

namespace A097945

/-- `A008683(n+1)*A047994(n+1)` -/
def P15700440451195160202.Spec : Prop :=
  ∀ n, P15700440451195160202.a n = A097945 (n + 1)

end A097945

/-! ## A097945.P10200633164256796742

`A008683(n+1)*A173557(n+1)`
-/

namespace A097945.P10200633164256796742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A173557 (n + 1)

end

end A097945.P10200633164256796742

namespace A097945

/-- `A008683(n+1)*A173557(n+1)` -/
def P10200633164256796742.Spec : Prop :=
  ∀ n, P10200633164256796742.a n = A097945 (n + 1)

end A097945

/-! ## A097945.P12946881504343962369

`abs(A008683(n+1))*A023900(n+1)`
-/

namespace A097945.P12946881504343962369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (n + 1)| * A023900 (n + 1)

end

end A097945.P12946881504343962369

namespace A097945

/-- `abs(A008683(n+1))*A023900(n+1)` -/
def P12946881504343962369.Spec : Prop :=
  ∀ n, P12946881504343962369.a n = A097945 (n + 1)

end A097945

/-! ## A097945.P1643060093212345843

`Δ[A054585(n)]`
-/

namespace A097945.P1643060093212345843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097945.P1643060093212345843

namespace A097945

/-- `Δ[A054585(n)]` -/
def P1643060093212345843.Spec : Prop :=
  ∀ n, P1643060093212345843.a n = A097945 (n + 1)

end A097945

/-! ## A097945.P2385083781380844285

`∑{d}[n+1, A341635(#)]`
-/

namespace A097945.P2385083781380844285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341635 d

end

end A097945.P2385083781380844285

namespace A097945

/-- `∑{d}[n+1, A341635(#)]` -/
def P2385083781380844285.Spec : Prop :=
  ∀ n, P2385083781380844285.a n = A097945 (n + 1)

end A097945

/-! ## A097945.P14878114462419417467

`A054585(n+1)-A054585(n)`
-/

namespace A097945.P14878114462419417467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054585 (n + 1) - A054585 n

end

end A097945.P14878114462419417467

namespace A097945

/-- `A054585(n+1)-A054585(n)` -/
def P14878114462419417467.Spec : Prop :=
  ∀ n, P14878114462419417467.a n = A097945 (n + 1)

end A097945

/-! ## A097945.P11506511368767407695

`∑{d}[A055615(n+1), A055615(#)]`
-/

namespace A097945.P11506511368767407695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055615 d

end

end A097945.P11506511368767407695

namespace A097945

/-- `∑{d}[A055615(n+1), A055615(#)]` -/
def P11506511368767407695.Spec : Prop :=
  ∀ n, P11506511368767407695.a n = A097945 (n + 1)

end A097945

/-! ## A097945.P4619017931571555313

`A008683(n+1)*Δ[A002088(n)]`
-/

namespace A097945.P4619017931571555313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * (f1 (n + 1) - f1 n)

end

end A097945.P4619017931571555313

namespace A097945

/-- `A008683(n+1)*Δ[A002088(n)]` -/
def P4619017931571555313.Spec : Prop :=
  ∀ n, P4619017931571555313.a n = A097945 (n + 1)

end A097945

/-! ## A097945.P16483618435415536257

`A008683(n+1)*Δ[A005728(n)]`
-/

namespace A097945.P16483618435415536257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * (f1 (n + 1) - f1 n)

end

end A097945.P16483618435415536257

namespace A097945

/-- `A008683(n+1)*Δ[A005728(n)]` -/
def P16483618435415536257.Spec : Prop :=
  ∀ n, P16483618435415536257.a n = A097945 (n + 1)

end A097945

/-! ## A097945.P8730355672210697226

`A008683(n+1)*A049060(n+1)`
-/

namespace A097945.P8730355672210697226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A049060 (n + 1)

end

end A097945.P8730355672210697226

namespace A097945

/-- `A008683(n+1)*A049060(n+1)` -/
def P8730355672210697226.Spec : Prop :=
  ∀ n, P8730355672210697226.a n = A097945 (n + 1)

end A097945

/-! ## A097945.P6775036672150139920

`A008966(n+1)*A061020(n+1)`
-/

namespace A097945.P6775036672150139920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A061020 (n + 1)

end

end A097945.P6775036672150139920

namespace A097945

/-- `A008966(n+1)*A061020(n+1)` -/
def P6775036672150139920.Spec : Prop :=
  ∀ n, P6775036672150139920.a n = A097945 (n + 1)

end A097945

/-! ## A097945.P5043050363853105711

`A008683(n+1)*A061350(n+1)`
-/

namespace A097945.P5043050363853105711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A061350 (n + 1)

end

end A097945.P5043050363853105711

namespace A097945

/-- `A008683(n+1)*A061350(n+1)` -/
def P5043050363853105711.Spec : Prop :=
  ∀ n, P5043050363853105711.a n = A097945 (n + 1)

end A097945

/-! ## A097945.P17139703218103201220

`A008683(n+1)*A076686(n+1)`
-/

namespace A097945.P17139703218103201220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A076686 (n + 1)

end

end A097945.P17139703218103201220

namespace A097945

/-- `A008683(n+1)*A076686(n+1)` -/
def P17139703218103201220.Spec : Prop :=
  ∀ n, P17139703218103201220.a n = A097945 (n + 1)

end A097945

/-! ## A097945.P16767297373372336818

`A008683(n+1)*A078429(n+1)`
-/

namespace A097945.P16767297373372336818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A078429 (n + 1)

end

end A097945.P16767297373372336818

namespace A097945

/-- `A008683(n+1)*A078429(n+1)` -/
def P16767297373372336818.Spec : Prop :=
  ∀ n, P16767297373372336818.a n = A097945 (n + 1)

end A097945

/-! ## A097945.P5854453201404732657

`A008683(n+1)*A091732(n+1)`
-/

namespace A097945.P5854453201404732657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A091732 (n + 1)

end

end A097945.P5854453201404732657

namespace A097945

/-- `A008683(n+1)*A091732(n+1)` -/
def P5854453201404732657.Spec : Prop :=
  ∀ n, P5854453201404732657.a n = A097945 (n + 1)

end A097945

/-! ## A097945.P16106557871820662766

`A008683(n+1)*A114810(n+1)`
-/

namespace A097945.P16106557871820662766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A114810 (n + 1)

end

end A097945.P16106557871820662766

namespace A097945

/-- `A008683(n+1)*A114810(n+1)` -/
def P16106557871820662766.Spec : Prop :=
  ∀ n, P16106557871820662766.a n = A097945 (n + 1)

end A097945

/-!
# A097946: a(n) = A008683(n)*A014197(n) where A008683 is the Moebius (or Mobius) function mu(n) and A014197 is the number of numbers m with Euler phi(m) = n.

The programs for A097946, there is no canonical definition to state claims against.
-/

/-! ## A097946.P15479224219602576639

`A008683(n+1)*A014197(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A097946.P15479224219602576639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A014197 (n + 1)

end

end A097946.P15479224219602576639

/-! ## A097946.P17959665695588560628

`floor(A262804(n+1)/2)*A014197(n+1)`
-/

namespace A097946.P17959665695588560628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A262804 (n + 1) : ℚ) / 2⌋ * A014197 (n + 1)

end

end A097946.P17959665695588560628

/-! ## A097946.P15126683638962917514

`A004718(A074823(n+1))*A014197(n+1)`
-/

namespace A097946.P15126683638962917514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A074823 (n + 1)).toNat * A014197 (n + 1)

end

end A097946.P15126683638962917514

/-! ## A097946.P6770146211679089078

`A014197(n+1)*A133639(A046523(n+1))`
-/

namespace A097946.P6770146211679089078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1) * A133639 (A046523 (n + 1)).toNat

end

end A097946.P6770146211679089078

/-! ## A097946.P13421238297551265984

`A014197(n+1)*A133639(A089247(n+1))`
-/

namespace A097946.P13421238297551265984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1) * A133639 (A089247 (n + 1)).toNat

end

end A097946.P13421238297551265984

/-! ## A097946.P5589257393985132244

`A014197(n+1)*A154271(A145501(n+1))`
-/

namespace A097946.P5589257393985132244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1) * A154271 (A145501 (n + 1)).toNat

end

end A097946.P5589257393985132244

/-! ## A097946.P5661353341912622911

`A014197(n+1)/A000010(n+1)*A097945(n+1)`
-/

namespace A097946.P5661353341912622911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014197 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A097945 (n + 1) : ℚ)

end

end A097946.P5661353341912622911

/-! ## A097946.P16633913470930566319

`A181434(n+1)*A280712(n+1)`
-/

namespace A097946.P16633913470930566319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181434 (n + 1) * A280712 (n + 1)

end

end A097946.P16633913470930566319

/-! ## A097946.P1262528381286731398

`A014197(n+1)*A054533(A000124(n))`
-/

namespace A097946.P1262528381286731398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1) * A054533 (A000124 n).toNat

end

end A097946.P1262528381286731398

/-! ## A097946.P1051438088728662108

`A014197(n+1)*A054527(A034856(n+1)-n)`
-/

namespace A097946.P1051438088728662108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1) * A054527 (A034856 (n + 1) - (n : ℤ)).toNat

end

end A097946.P1051438088728662108

/-! ## A097946.P2011308492983518342

`A014197(n+1)*A054527(A034856(n+2))`
-/

namespace A097946.P2011308492983518342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1) * A054527 (A034856 (n + 2)).toNat

end

end A097946.P2011308492983518342

/-!
# A097947: Expansion of g.f. (2+7*x+2*x^2)/((x^2-1)*(1+4*x+x^2)).

The programs for A097947, the canonical program `A097947.P6097206759401125817` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097947 has offset 0).

The definition of A097947 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((-2-7x-2x^2)/(1+4x-4x^3-x^4))` (program `A097947.P6097206759401125817`, by `A097947.P6097206759401125817.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097947.P6097206759401125817

`ogf((-2-7x-2x^2)/(1+4x-4x^3-x^4))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097947

/-- `ogf((-2-7x-2x^2)/(1+4x-4x^3-x^4))` -/
def P6097206759401125817.Spec : Prop :=
  ∀ n, P6097206759401125817.a n = A097947 n

theorem P6097206759401125817.correct : P6097206759401125817.Spec := by
  intro n
  simp only [A097947]

end A097947

/-! ## A097947.P9017310774011974101

`xor(-A112832(n), A033999(n))`
-/

namespace A097947.P9017310774011974101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A112832 n) (A033999 n)

end

end A097947.P9017310774011974101

namespace A097947

/-- `xor(-A112832(n), A033999(n))` -/
def P9017310774011974101.Spec : Prop :=
  ∀ n, P9017310774011974101.a n = A097947 n

end A097947

/-! ## A097947.P11898725815036350316

`xor(-A112832(n), A062157(n+1))`
-/

namespace A097947.P11898725815036350316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A112832 n) (A062157 (n + 1))

end

end A097947.P11898725815036350316

namespace A097947

/-- `xor(-A112832(n), A062157(n+1))` -/
def P11898725815036350316.Spec : Prop :=
  ∀ n, P11898725815036350316.a n = A097947 n

end A097947

/-! ## A097947.P1320547261754311583

`xor(-A112832(n), A165326(n+1))`
-/

namespace A097947.P1320547261754311583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A112832 n) (A165326 (n + 1))

end

end A097947.P1320547261754311583

namespace A097947

/-- `xor(-A112832(n), A165326(n+1))` -/
def P1320547261754311583.Spec : Prop :=
  ∀ n, P1320547261754311583.a n = A097947 n

end A097947

/-! ## A097947.P14255421653355704765

`A010892(3*n+4)*A112832(n)-1`
-/

namespace A097947.P14255421653355704765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (3 * n + 4) * A112832 n - 1

end

end A097947.P14255421653355704765

namespace A097947

/-- `A010892(3*n+4)*A112832(n)-1` -/
def P14255421653355704765.Spec : Prop :=
  ∀ n, P14255421653355704765.a n = A097947 n

end A097947

/-! ## A097947.P3159167202855716604

`xor(A008346(n)-A000045(n), -A112832(n))`
-/

namespace A097947.P3159167202855716604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008346 n - A000045 n) (-A112832 n)

end

end A097947.P3159167202855716604

namespace A097947

/-- `xor(A008346(n)-A000045(n), -A112832(n))` -/
def P3159167202855716604.Spec : Prop :=
  ∀ n, P3159167202855716604.a n = A097947 n

end A097947

/-!
# A097948: G.f.: -(1-3*x^2-x^3)/(1+4*x-4*x^3-x^4).

The programs for A097948, the canonical program `A097948.P5859470112091419350` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097948 has offset 0).

The definition of A097948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097948.P2011294526477464146

`ogf((-1+3x^2+x^3)/(1+4x-4x^3-x^4))`
-/

namespace A097948.P2011294526477464146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 0, 3, 1] [1, 4, 0, -4, -1] n

end

end A097948.P2011294526477464146

namespace A097948

/-- `ogf((-1+3x^2+x^3)/(1+4x-4x^3-x^4))` -/
def P2011294526477464146.Spec : Prop :=
  ∀ n, P2011294526477464146.a n = A097948 n

end A097948

/-! ## A097948.P12831963734314455060

`n%2-A108946(n)`
-/

namespace A097948.P12831963734314455060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) - A108946 n

end

end A097948.P12831963734314455060

namespace A097948

/-- `n%2-A108946(n)` -/
def P12831963734314455060.Spec : Prop :=
  ∀ n, P12831963734314455060.a n = A097948 n

theorem P12831963734314455060.correct : P12831963734314455060.Spec := by
  intro n
  simp only [A097948, Nat.add_sub_cancel, A097948.P12831963734314455060.a, A097948.P5859470112091419350.a, A097947, A097947.P6097206759401125817.a, A108946, A108946.P7071863590462326529.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097948

/-! ## A097948.P5859470112091419350

`xor(2, 3*(A097947(n)+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A097948

/-- `xor(2, 3*(A097947(n)+1))` -/
def P5859470112091419350.Spec : Prop :=
  ∀ n, P5859470112091419350.a n = A097948 n

theorem P5859470112091419350.correct : P5859470112091419350.Spec := by
  intro n
  simp only [A097948]

end A097948

/-! ## A097948.P15563783611774351977

`A000035(n)-A108946(n)`
-/

namespace A097948.P15563783611774351977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n - A108946 n

end

end A097948.P15563783611774351977

namespace A097948

/-- `A000035(n)-A108946(n)` -/
def P15563783611774351977.Spec : Prop :=
  ∀ n, P15563783611774351977.a n = A097948 n

theorem P15563783611774351977.correct : P15563783611774351977.Spec := by
  intro n
  simp only [A097948, Nat.add_sub_cancel, A097948.P15563783611774351977.a, A097948.P5859470112091419350.a, A000035, A000035.P2023072528413494694.a, A097947, A097947.P6097206759401125817.a, A108946, A108946.P7071863590462326529.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097948

/-! ## A097948.P13016330235338289294

`log2(A000034(n))-A108946(n)`
-/

namespace A097948.P13016330235338289294
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000034 n : ℝ) - (A108946 n : ℝ)

end

end A097948.P13016330235338289294

namespace A097948

/-- `log2(A000034(n))-A108946(n)` -/
def P13016330235338289294.Spec : Prop :=
  ∀ n, P13016330235338289294.a n = (A097948 n : ℝ)

end A097948

/-! ## A097948.P413763488841613047

`A007814(∏{p}[n+1, #])-A108946(n)`
-/

namespace A097948.P413763488841613047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (∏ p ∈ Nat.primeFactors (f1 n), p) - A108946 n

end

end A097948.P413763488841613047

namespace A097948

/-- `A007814(∏{p}[n+1, #])-A108946(n)` -/
def P413763488841613047.Spec : Prop :=
  ∀ n, P413763488841613047.a n = A097948 n

end A097948

/-! ## A097948.P16439336297451550050

`A007814(n²+1)-A108946(n)`
-/

namespace A097948.P16439336297451550050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n ^ 2 + 1) - A108946 n

end

end A097948.P16439336297451550050

namespace A097948

/-- `A007814(n²+1)-A108946(n)` -/
def P16439336297451550050.Spec : Prop :=
  ∀ n, P16439336297451550050.a n = A097948 n

end A097948

/-!
# A097949: G.f.: -(2+7*x-x^3)/(1+4*x-4*x^3-x^4).

The programs for A097949, the canonical program `A097949.P14965958809356418113` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097949 has offset 0).

The definition of A097949 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 177 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097949.P14965958809356418113

`xor(n-xor(1, n), A120892(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A097949

/-- `xor(n-xor(1, n), A120892(n))` -/
def P14965958809356418113.Spec : Prop :=
  ∀ n, P14965958809356418113.a n = A097949 n

theorem P14965958809356418113.correct : P14965958809356418113.Spec := by
  intro n
  simp only [A097949]

end A097949

/-! ## A097949.P3748035106866687336

`xor(-A033999(n), A120892(n))`
-/

namespace A097949.P3748035106866687336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A033999 n) (A120892 n)

end

end A097949.P3748035106866687336

namespace A097949

/-- `xor(-A033999(n), A120892(n))` -/
def P3748035106866687336.Spec : Prop :=
  ∀ n, P3748035106866687336.a n = A097949 n

end A097949

/-! ## A097949.P16160429601214393311

`xor(A033999(n+1), A120892(n))`
-/

namespace A097949.P16160429601214393311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033999 (n + 1)) (A120892 n)

end

end A097949.P16160429601214393311

namespace A097949

/-- `xor(A033999(n+1), A120892(n))` -/
def P16160429601214393311.Spec : Prop :=
  ∀ n, P16160429601214393311.a n = A097949 n

end A097949

/-! ## A097949.P13181051660573956801

`xor(A034947(2*n+3), A120892(n))`
-/

namespace A097949.P13181051660573956801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A034947 (2 * n + 3)) (A120892 n)

end

end A097949.P13181051660573956801

namespace A097949

/-- `xor(A034947(2*n+3), A120892(n))` -/
def P13181051660573956801.Spec : Prop :=
  ∀ n, P13181051660573956801.a n = A097949 n

end A097949

/-! ## A097949.P7582797858513273656

`xor(A009001(2*A033951(n)), A120892(n))`
-/

namespace A097949.P7582797858513273656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A009001 (2 * A033951 n).toNat) (A120892 n)

end

end A097949.P7582797858513273656

namespace A097949

/-- `xor(A009001(2*A033951(n)), A120892(n))` -/
def P7582797858513273656.Spec : Prop :=
  ∀ n, P7582797858513273656.a n = A097949 n

end A097949

/-!
# A097950: G.f.: (1+x^5+x^10)/((1-x)*(1-x^3)).

The programs for A097950, the canonical program `A097950.P5849547532479907261` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097950 has offset 0).

The definition of A097950 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097950.P5849547532479907261

`floor((a(n-3)+n)/2)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097950

/-- `floor((a(n-3)+n)/2)` -/
def P5849547532479907261.Spec : Prop :=
  ∀ n, P5849547532479907261.a n = A097950 n

theorem P5849547532479907261.correct : P5849547532479907261.Spec := by
  intro n
  simp only [A097950]

end A097950

/-!
# A097951: Positive integer values of a chaotic fractional Pisot.

The programs for A097951, there is no canonical definition to state claims against.
-/

/-! ## A097951.P6816335110002006766

`A156542(∑[A133263(A082772(n+1))])`
-/

namespace A097951.P6816335110002006766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 (A082772 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156542 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A097951.P6816335110002006766

/-! ## A097951.P13623953300639937948

`A326764(A219531(n))%3`
-/

namespace A097951.P13623953300639937948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326764 (A219531 n).toNat) 3

end

end A097951.P13623953300639937948

/-! ## A097951.P11891603741138664347

`A271224(∑[∑[A077168(n)]])`
-/

namespace A097951.P11891603741138664347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271224 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A097951.P11891603741138664347

/-! ## A097951.P5629781102160817472

`A073484(A020249(n+2)+1)`
-/

namespace A097951.P5629781102160817472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073484 (A020249 (n + 2) + 1).toNat

end

end A097951.P5629781102160817472

/-! ## A097951.P2131405781595885233

`A044617(A285261(n+1))%3`
-/

namespace A097951.P2131405781595885233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044617 (A285261 (n + 1)).toNat) 3

end

end A097951.P2131405781595885233

/-!
# A097952: Sum of the number of digits in the prime numbers less than 10^n.

The programs for A097952, there is no canonical definition to state claims against.
-/

/-! ## A097952.P17595572464480731925

`∑[n*A006879(n)]`
-/

namespace A097952.P17595572464480731925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A006879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097952.P17595572464480731925

/-! ## A097952.P4581037143730275702

`∑[n*Δ[A090226(A028310(n))]]`
-/

namespace A097952.P4581037143730275702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090226 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097952.P4581037143730275702

/-! ## A097952.P17722050966537146933

`∑[n*(A090226(n+1)-A090226(A028310(n)))]`
-/

namespace A097952.P17722050966537146933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A090226 (n + 1) - A090226 (A028310 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097952.P17722050966537146933

/-! ## A097952.P1680860440600405475

`∑[A046719(n+1)]-A046719(n+1)`
-/

namespace A097952.P1680860440600405475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A046719 (n + 1)

end

end A097952.P1680860440600405475

/-! ## A097952.P2889665753576689176

`∑[(n+1)*Δ[A006880(n)]]%A046719(n+1)`
-/

namespace A097952.P2889665753576689176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A046719 (n + 1))

end

end A097952.P2889665753576689176

/-!
# A097953: Boustrophedon transform of ((-2)^n+0^n)/2.

The programs for A097953, there is no canonical definition to state claims against.
-/

/-! ## A097953.P16647945117148672301

`A050315(A000142(n))-A195152(n)`
-/

namespace A097953.P16647945117148672301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 (A000142 n).toNat - A195152 n

end

end A097953.P16647945117148672301

/-! ## A097953.P4411620922109723179

`A050315(A000045(3*n))-A195152(n)`
-/

namespace A097953.P4411620922109723179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 (A000045 (3 * n)).toNat - A195152 n

end

end A097953.P4411620922109723179

/-!
# A097954: Numbers k such that 7*10^k + 9 is prime.

The programs for A097954, there is no canonical definition to state claims against.
-/

/-! ## A097954.P3382070977115752995

`A101130(n+1)+1`
-/

namespace A097954.P3382070977115752995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101130 (n + 1) + 1

end

end A097954.P3382070977115752995

/-! ## A097954.P16789651338974945847

`A199343(A101130(n+1))`
-/

namespace A097954.P16789651338974945847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 (A101130 (n + 1)).toNat

end

end A097954.P16789651338974945847

/-!
# A097955: Primes p such that p divides 5^((p-1)/2) - 2^((p-1)/2).

The programs for A097955, the canonical program `A097955.P1775132031417090442` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097955 has offset 1).

The definition of A097955 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097955.P1775132031417090442

`A038879(3-A000007(n)+n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A097955

/-- `A038879(3-A000007(n)+n)` -/
def P1775132031417090442.Spec : Prop :=
  ∀ n, P1775132031417090442.a n = A097955 (n + 1)

theorem P1775132031417090442.correct : P1775132031417090442.Spec := by
  intro n
  simp only [A097955, Nat.add_sub_cancel]

end A097955

/-! ## A097955.P12478954140922353684

`A038879((A005818(n+1)+1)/2)`
-/

namespace A097955.P12478954140922353684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038879 (SequenceMachineLib.roundAway ((A005818 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A097955.P12478954140922353684

namespace A097955

/-- `A038879((A005818(n+1)+1)/2)` -/
def P12478954140922353684.Spec : Prop :=
  ∀ n, P12478954140922353684.a n = A097955 (n + 1)

end A097955

/-! ## A097955.P6119840063348253841

`A038879(A016789(n)-A004273(n))`
-/

namespace A097955.P6119840063348253841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038879 (A016789 n - A004273 n).toNat

end

end A097955.P6119840063348253841

namespace A097955

/-- `A038879(A016789(n)-A004273(n))` -/
def P6119840063348253841.Spec : Prop :=
  ∀ n, P6119840063348253841.a n = A097955 (n + 1)

end A097955

/-! ## A097955.P2109697125667202972

`A038879(A000720(A004139(n+1)))`
-/

namespace A097955.P2109697125667202972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038879 (A000720 (A004139 (n + 1)).toNat).toNat

end

end A097955.P2109697125667202972

namespace A097955

/-- `A038879(A000720(A004139(n+1)))` -/
def P2109697125667202972.Spec : Prop :=
  ∀ n, P2109697125667202972.a n = A097955 (n + 1)

end A097955

/-! ## A097955.P17887151551782441521

`∩[A006559(n+1), A038879(n+1)]`
-/

namespace A097955.P17887151551782441521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097955.P17887151551782441521

namespace A097955

/-- `∩[A006559(n+1), A038879(n+1)]` -/
def P17887151551782441521.Spec : Prop :=
  ∀ n, (P17887151551782441521.a n : ℤ) = A097955 (n + 1)

end A097955

/-! ## A097955.P11925331584095773899

`∩[A006559(n+1), A391367(n+1)]`
-/

namespace A097955.P11925331584095773899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097955.P11925331584095773899

namespace A097955

/-- `∩[A006559(n+1), A391367(n+1)]` -/
def P11925331584095773899.Spec : Prop :=
  ∀ n, (P11925331584095773899.a n : ℤ) = A097955 (n + 1)

end A097955

/-! ## A097955.P625912758568874667

`∩[A004139(n+1), A038879(n+1)]`
-/

namespace A097955.P625912758568874667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097955.P625912758568874667

namespace A097955

/-- `∩[A004139(n+1), A038879(n+1)]` -/
def P625912758568874667.Spec : Prop :=
  ∀ n, (P625912758568874667.a n : ℤ) = A097955 (n + 1)

end A097955

/-! ## A097955.P16607614675669654548

`∩[A004139(n+1), A391367(n+1)]`
-/

namespace A097955.P16607614675669654548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097955.P16607614675669654548

namespace A097955

/-- `∩[A004139(n+1), A391367(n+1)]` -/
def P16607614675669654548.Spec : Prop :=
  ∀ n, (P16607614675669654548.a n : ℤ) = A097955 (n + 1)

end A097955

/-! ## A097955.P16407692714886291679

`∩[A038879(n+1), A104381(n+1)]`
-/

namespace A097955.P16407692714886291679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097955.P16407692714886291679

namespace A097955

/-- `∩[A038879(n+1), A104381(n+1)]` -/
def P16407692714886291679.Spec : Prop :=
  ∀ n, (P16407692714886291679.a n : ℤ) = A097955 (n + 1)

end A097955

/-! ## A097955.P16985108704195434946

`∩[A104381(n+1), A391367(n+1)]`
-/

namespace A097955.P16985108704195434946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097955.P16985108704195434946

namespace A097955

/-- `∩[A104381(n+1), A391367(n+1)]` -/
def P16985108704195434946.Spec : Prop :=
  ∀ n, (P16985108704195434946.a n : ℤ) = A097955 (n + 1)

end A097955

/-! ## A097955.P3184464132801946230

`filter[A038879(n+2), A358847(#)]`
-/

namespace A097955.P3184464132801946230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038879 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358847 (f1 j).toNat = 1) n)

end

end A097955.P3184464132801946230

namespace A097955

/-- `filter[A038879(n+2), A358847(#)]` -/
def P3184464132801946230.Spec : Prop :=
  ∀ n, P3184464132801946230.a n = A097955 (n + 1)

end A097955

/-! ## A097955.P11389457259454826871

`filter[A038879(n+2), A011558(#)]`
-/

namespace A097955.P11389457259454826871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038879 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A097955.P11389457259454826871

namespace A097955

/-- `filter[A038879(n+2), A011558(#)]` -/
def P11389457259454826871.Spec : Prop :=
  ∀ n, P11389457259454826871.a n = A097955 (n + 1)

end A097955

/-! ## A097955.P15031083335367990987

`∩[A038879(n+1), A133621(n+1)]`
-/

namespace A097955.P15031083335367990987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097955.P15031083335367990987

namespace A097955

/-- `∩[A038879(n+1), A133621(n+1)]` -/
def P15031083335367990987.Spec : Prop :=
  ∀ n, (P15031083335367990987.a n : ℤ) = A097955 (n + 1)

end A097955

/-! ## A097955.P3241160880691358030

`p?[A016825(n)-A133310(A004443(n))]`
-/

namespace A097955.P3241160880691358030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - A133310 (A004443 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097955.P3241160880691358030

namespace A097955

/-- `p?[A016825(n)-A133310(A004443(n))]` -/
def P3241160880691358030.Spec : Prop :=
  ∀ n, P3241160880691358030.a n = A097955 (n + 1)

end A097955

/-! ## A097955.P4287012723053832931

`∩[A038879(n+1), A235583(n+1)]`
-/

namespace A097955.P4287012723053832931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097955.P4287012723053832931

namespace A097955

/-- `∩[A038879(n+1), A235583(n+1)]` -/
def P4287012723053832931.Spec : Prop :=
  ∀ n, (P4287012723053832931.a n : ℤ) = A097955 (n + 1)

end A097955

/-! ## A097955.P13830771104969714838

`∩[A038879(n+1), A236208(n+1)]`
-/

namespace A097955.P13830771104969714838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097955.P13830771104969714838

namespace A097955

/-- `∩[A038879(n+1), A236208(n+1)]` -/
def P13830771104969714838.Spec : Prop :=
  ∀ n, (P13830771104969714838.a n : ℤ) = A097955 (n + 1)

end A097955

/-! ## A097955.P1749093495509512921

`∩[A038879(n+1), A158942(n+1)]`
-/

namespace A097955.P1749093495509512921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097955.P1749093495509512921

namespace A097955

/-- `∩[A038879(n+1), A158942(n+1)]` -/
def P1749093495509512921.Spec : Prop :=
  ∀ n, (P1749093495509512921.a n : ℤ) = A097955 (n + 1)

end A097955

/-! ## A097955.P10322183775176939755

`∩[A158942(n+1), A391367(n+1)]`
-/

namespace A097955.P10322183775176939755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097955.P10322183775176939755

namespace A097955

/-- `∩[A158942(n+1), A391367(n+1)]` -/
def P10322183775176939755.Spec : Prop :=
  ∀ n, (P10322183775176939755.a n : ℤ) = A097955 (n + 1)

end A097955

/-! ## A097955.P11584965403666924366

`∩[A038879(n+1), A045572(n+1)]`
-/

namespace A097955.P11584965403666924366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097955.P11584965403666924366

namespace A097955

/-- `∩[A038879(n+1), A045572(n+1)]` -/
def P11584965403666924366.Spec : Prop :=
  ∀ n, (P11584965403666924366.a n : ℤ) = A097955 (n + 1)

end A097955

/-!
# A097956: Primes p such that p divides 5^(p-1)/2 - 3^(p-1)/2.

The programs for A097956, there is no canonical definition to state claims against.
-/

/-! ## A097956.P14361890695923019805

`A038887(n+4)`
-/

namespace A097956.P14361890695923019805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038887 (n + 4)

end

end A097956.P14361890695923019805

/-! ## A097956.P7214678291309561357

`p?[A100050(n)*A226162(n)]`
-/

namespace A097956.P7214678291309561357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100050 n * A226162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097956.P7214678291309561357

/-! ## A097956.P15595025086425290844

`p?[A100050(n)*A289741(n)]`
-/

namespace A097956.P15595025086425290844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100050 n * A289741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097956.P15595025086425290844

/-! ## A097956.P155254224073054771

`p?[A004442(n)*A010892(A076314(n))]`
-/

namespace A097956.P155254224073054771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n * A010892 (A076314 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097956.P155254224073054771

/-! ## A097956.P6687210836919521180

`eq[(A323161(n+1)-A309070(n))², A323161(n+1)]`
-/

namespace A097956.P6687210836919521180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A323161 (n + 1) - A309070 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323161 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097956.P6687210836919521180

/-!
# A097957: Primes p such that p divides 5^((p-1)/2) + 4^((p-1)/2).

The programs for A097957, the canonical program `A097957.P16382794806573658665` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097957 has offset 1).

The definition of A097957 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097957.P16382794806573658665

`p?[or(1, 5*n+2)]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097957

/-- `p?[or(1, 5*n+2)]` -/
def P16382794806573658665.Spec : Prop :=
  ∀ n, (P16382794806573658665.a n : ℤ) = A097957 (n + 1)

theorem P16382794806573658665.correct : P16382794806573658665.Spec := by
  intro n
  simp only [A097957, Nat.add_sub_cancel]

end A097957

/-! ## A097957.P13711432153228211729

`p?[a(n-2)+5]` with `a(0)=3, a(1)=7`
-/

namespace A097957.P13711432153228211729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 7] fun n f1 =>
  f1 (n - 2) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A097957.P13711432153228211729

namespace A097957

/-- `p?[a(n-2)+5]` -/
def P13711432153228211729.Spec : Prop :=
  ∀ n, (P13711432153228211729.a n : ℤ) = A097957 (n + 1)

end A097957

/-! ## A097957.P11922768924581036320

`p?[ceil((10*n-1)/3)]`
-/

namespace A097957.P11922768924581036320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((10 * n : ℤ) - 1 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097957.P11922768924581036320

namespace A097957

/-- `p?[ceil((10*n-1)/3)]` -/
def P11922768924581036320.Spec : Prop :=
  ∀ n, P11922768924581036320.a n = A097957 (n + 1)

end A097957

/-! ## A097957.P16242084481744538993

`record[A051831(n+2)+1]`
-/

namespace A097957.P16242084481744538993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051831 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097957.P16242084481744538993

namespace A097957

/-- `record[A051831(n+2)+1]` -/
def P16242084481744538993.Spec : Prop :=
  ∀ n, P16242084481744538993.a n = A097957 (n + 1)

end A097957

/-! ## A097957.P14587716589449374691

`A003631(n+2)`
-/

namespace A097957.P14587716589449374691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 2)

end

end A097957.P14587716589449374691

namespace A097957

/-- `A003631(n+2)` -/
def P14587716589449374691.Spec : Prop :=
  ∀ n, P14587716589449374691.a n = A097957 (n + 1)

end A097957

/-! ## A097957.P6572247704562310007

`record[A006530(or(1, 5*n+2))]`
-/

namespace A097957.P6572247704562310007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.lor 1 (5 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097957.P6572247704562310007

namespace A097957

/-- `record[A006530(or(1, 5*n+2))]` -/
def P6572247704562310007.Spec : Prop :=
  ∀ n, P6572247704562310007.a n = A097957 (n + 1)

end A097957

/-! ## A097957.P1921197717549710209

`record[A020639(or(1, 5*n+2))]`
-/

namespace A097957.P1921197717549710209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.lor 1 (5 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097957.P1921197717549710209

namespace A097957

/-- `record[A020639(or(1, 5*n+2))]` -/
def P1921197717549710209.Spec : Prop :=
  ∀ n, P1921197717549710209.a n = A097957 (n + 1)

end A097957

/-! ## A097957.P6006312756457881583

`record[A006530(gcd(2, n)+5*n+1)]`
-/

namespace A097957.P6006312756457881583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.gcd 2 n + 5 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097957.P6006312756457881583

namespace A097957

/-- `record[A006530(gcd(2, n)+5*n+1)]` -/
def P6006312756457881583.Spec : Prop :=
  ∀ n, P6006312756457881583.a n = A097957 (n + 1)

end A097957

/-! ## A097957.P15412054572115009126

`record[A006530(2*(n-(1-n)²%5)+5)]`
-/

namespace A097957.P15412054572115009126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * ((n : ℤ) - Int.tmod ((1 - (n : ℤ)) ^ 2) 5) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097957.P15412054572115009126

namespace A097957

/-- `record[A006530(2*(n-(1-n)²%5)+5)]` -/
def P15412054572115009126.Spec : Prop :=
  ∀ n, P15412054572115009126.a n = A097957 (n + 1)

end A097957

/-! ## A097957.P7751678085829574076

`filter[A023162(n+1), A358770(#)]`
-/

namespace A097957.P7751678085829574076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358770 (f1 j).toNat = 1) n)

end

end A097957.P7751678085829574076

namespace A097957

/-- `filter[A023162(n+1), A358770(#)]` -/
def P7751678085829574076.Spec : Prop :=
  ∀ n, P7751678085829574076.a n = A097957 (n + 1)

end A097957

/-! ## A097957.P14910239664185960764

`filter[A069104(n+1), A358770(#)]`
-/

namespace A097957.P14910239664185960764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358770 (f1 j).toNat = 1) n)

end

end A097957.P14910239664185960764

namespace A097957

/-- `filter[A069104(n+1), A358770(#)]` -/
def P14910239664185960764.Spec : Prop :=
  ∀ n, P14910239664185960764.a n = A097957 (n + 1)

end A097957

/-! ## A097957.P6952207653689930574

`filter[A069104(n+1), A379969(#)]`
-/

namespace A097957.P6952207653689930574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A097957.P6952207653689930574

namespace A097957

/-- `filter[A069104(n+1), A379969(#)]` -/
def P6952207653689930574.Spec : Prop :=
  ∀ n, P6952207653689930574.a n = A097957 (n + 1)

end A097957

/-! ## A097957.P9266313601909121221

`filter[A023162(n+3), A010051(#)]`
-/

namespace A097957.P9266313601909121221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A097957.P9266313601909121221

namespace A097957

/-- `filter[A023162(n+3), A010051(#)]` -/
def P9266313601909121221.Spec : Prop :=
  ∀ n, P9266313601909121221.a n = A097957 (n + 1)

end A097957

/-! ## A097957.P2437137630284990681

`filter[A069104(n+3), A010051(#)]`
-/

namespace A097957.P2437137630284990681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069104 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A097957.P2437137630284990681

namespace A097957

/-- `filter[A069104(n+3), A010051(#)]` -/
def P2437137630284990681.Spec : Prop :=
  ∀ n, P2437137630284990681.a n = A097957 (n + 1)

end A097957

/-! ## A097957.P5531725803743250028

`filter[A069104(n+3), A069513(#)]`
-/

namespace A097957.P5531725803743250028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069104 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A097957.P5531725803743250028

namespace A097957

/-- `filter[A069104(n+3), A069513(#)]` -/
def P5531725803743250028.Spec : Prop :=
  ∀ n, P5531725803743250028.a n = A097957 (n + 1)

end A097957

/-! ## A097957.P10248443850131988035

`filter[A023162(n+1), A257531(#)]`
-/

namespace A097957.P10248443850131988035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A097957.P10248443850131988035

namespace A097957

/-- `filter[A023162(n+1), A257531(#)]` -/
def P10248443850131988035.Spec : Prop :=
  ∀ n, P10248443850131988035.a n = A097957 (n + 1)

end A097957

/-! ## A097957.P8623763691758214378

`filter[A069104(n+1), A257531(#)]`
-/

namespace A097957.P8623763691758214378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A097957.P8623763691758214378

namespace A097957

/-- `filter[A069104(n+1), A257531(#)]` -/
def P8623763691758214378.Spec : Prop :=
  ∀ n, P8623763691758214378.a n = A097957 (n + 1)

end A097957

/-! ## A097957.P13839043468153741918

`filter[A023162(n+1), A353558(#)]`
-/

namespace A097957.P13839043468153741918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353558 (f1 j).toNat = 1) n)

end

end A097957.P13839043468153741918

namespace A097957

/-- `filter[A023162(n+1), A353558(#)]` -/
def P13839043468153741918.Spec : Prop :=
  ∀ n, P13839043468153741918.a n = A097957 (n + 1)

end A097957

/-! ## A097957.P16474447347028321548

`filter[A023162(n+1), A353673(#)]`
-/

namespace A097957.P16474447347028321548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353673 (f1 j).toNat = 1) n)

end

end A097957.P16474447347028321548

namespace A097957

/-- `filter[A023162(n+1), A353673(#)]` -/
def P16474447347028321548.Spec : Prop :=
  ∀ n, P16474447347028321548.a n = A097957 (n + 1)

end A097957

/-! ## A097957.P5966622458786343361

`filter[A069104(n+1), A340373(#)]`
-/

namespace A097957.P5966622458786343361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A097957.P5966622458786343361

namespace A097957

/-- `filter[A069104(n+1), A340373(#)]` -/
def P5966622458786343361.Spec : Prop :=
  ∀ n, P5966622458786343361.a n = A097957 (n + 1)

end A097957

/-!
# A097958: Primes p such that p divides 6^((p-1)/2) - 3^((p-1)/2).

The programs for A097958, the canonical program `A097958.P17129512614101071789` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097958 has offset 1).

The definition of A097958 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097958.P17129512614101071789

`p?[a(n-2)+8]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=7`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097958

/-- `p?[a(n-2)+8]` -/
def P17129512614101071789.Spec : Prop :=
  ∀ n, (P17129512614101071789.a n : ℤ) = A097958 (n + 1)

theorem P17129512614101071789.correct : P17129512614101071789.Spec := by
  intro n
  simp only [A097958, Nat.add_sub_cancel]

end A097958

/-! ## A097958.P14985973381848879636

`or(1, A038873(n+1))`
-/

namespace A097958.P14985973381848879636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A038873 (n + 1))

end

end A097958.P14985973381848879636

namespace A097958

/-- `or(1, A038873(n+1))` -/
def P14985973381848879636.Spec : Prop :=
  ∀ n, P14985973381848879636.a n = A097958 (n + 1)

end A097958

/-! ## A097958.P6439191823827202789

`A001132(n%a(n-1))` with `a(0)=3`
-/

namespace A097958.P6439191823827202789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A001132 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A097958.P6439191823827202789

namespace A097958

/-- `A001132(n%a(n-1))` -/
def P6439191823827202789.Spec : Prop :=
  ∀ n, P6439191823827202789.a n = A097958 (n + 1)

end A097958

/-! ## A097958.P7161923465093713903

`A038873(n+1)+A000007(n)`
-/

namespace A097958.P7161923465093713903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1) + A000007 n

end

end A097958.P7161923465093713903

namespace A097958

/-- `A038873(n+1)+A000007(n)` -/
def P7161923465093713903.Spec : Prop :=
  ∀ n, P7161923465093713903.a n = A097958 (n + 1)

end A097958

/-! ## A097958.P7712650026023426698

`A038873(n+1)+1-A057427(n)`
-/

namespace A097958.P7712650026023426698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1) + (1 - A057427 n)

end

end A097958.P7712650026023426698

namespace A097958

/-- `A038873(n+1)+1-A057427(n)` -/
def P7712650026023426698.Spec : Prop :=
  ∀ n, P7712650026023426698.a n = A097958 (n + 1)

end A097958

/-! ## A097958.P14772499030013016834

`∪[A001132(n+1), A074714(n+1)]`
-/

namespace A097958.P14772499030013016834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097958.P14772499030013016834

namespace A097958

/-- `∪[A001132(n+1), A074714(n+1)]` -/
def P14772499030013016834.Spec : Prop :=
  ∀ n, (P14772499030013016834.a n : ℤ) = A097958 (n + 1)

end A097958

/-! ## A097958.P5037678299221743945

`∪[A001132(n+1), A088193(n+1)]`
-/

namespace A097958.P5037678299221743945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097958.P5037678299221743945

namespace A097958

/-- `∪[A001132(n+1), A088193(n+1)]` -/
def P5037678299221743945.Spec : Prop :=
  ∀ n, (P5037678299221743945.a n : ℤ) = A097958 (n + 1)

end A097958

/-! ## A097958.P15742117316810493990

`∪[A001132(n+1), A118940(n+1)]`
-/

namespace A097958.P15742117316810493990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097958.P15742117316810493990

namespace A097958

/-- `∪[A001132(n+1), A118940(n+1)]` -/
def P15742117316810493990.Spec : Prop :=
  ∀ n, (P15742117316810493990.a n : ℤ) = A097958 (n + 1)

end A097958

/-! ## A097958.P3585915871210766115

`∪[A001132(n+1), A122094(n+1)]`
-/

namespace A097958.P3585915871210766115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097958.P3585915871210766115

namespace A097958

/-- `∪[A001132(n+1), A122094(n+1)]` -/
def P3585915871210766115.Spec : Prop :=
  ∀ n, (P3585915871210766115.a n : ℤ) = A097958 (n + 1)

end A097958

/-! ## A097958.P3902184750931767909

`∪[A001132(n+1), A209554(n+1)]`
-/

namespace A097958.P3902184750931767909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097958.P3902184750931767909

namespace A097958

/-- `∪[A001132(n+1), A209554(n+1)]` -/
def P3902184750931767909.Spec : Prop :=
  ∀ n, (P3902184750931767909.a n : ℤ) = A097958 (n + 1)

end A097958

/-! ## A097958.P8240550349944067387

`∪[A001132(n+1), A292447(n+1)]`
-/

namespace A097958.P8240550349944067387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097958.P8240550349944067387

namespace A097958

/-- `∪[A001132(n+1), A292447(n+1)]` -/
def P8240550349944067387.Spec : Prop :=
  ∀ n, (P8240550349944067387.a n : ℤ) = A097958 (n + 1)

end A097958

/-! ## A097958.P6864959449493722411

`or(1, p?[or(3, n+1)-3+n])`
-/

namespace A097958.P6864959449493722411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (n + 1) : ℤ) - 3 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A097958.P6864959449493722411

namespace A097958

/-- `or(1, p?[or(3, n+1)-3+n])` -/
def P6864959449493722411.Spec : Prop :=
  ∀ n, P6864959449493722411.a n = A097958 (n + 1)

end A097958

/-! ## A097958.P4220744405777518574

`p?[(abs(1-n)+2)%4+2*n]`
-/

namespace A097958.P4220744405777518574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (|1 - (n : ℤ)| + 2) 4 + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097958.P4220744405777518574

namespace A097958

/-- `p?[(abs(1-n)+2)%4+2*n]` -/
def P4220744405777518574.Spec : Prop :=
  ∀ n, P4220744405777518574.a n = A097958 (n + 1)

end A097958

/-! ## A097958.P14818101362629882831

`or(1, p?[or(3, n-4)+n])`
-/

namespace A097958.P14818101362629882831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 ((n : ℤ) - 4) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A097958.P14818101362629882831

namespace A097958

/-- `or(1, p?[or(3, n-4)+n])` -/
def P14818101362629882831.Spec : Prop :=
  ∀ n, P14818101362629882831.a n = A097958 (n + 1)

end A097958

/-! ## A097958.P16919228147883853089

`p?[lcm(n, sqrt(and(9, n²)))]`
-/

namespace A097958.P16919228147883853089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (SequenceMachineLib.roundAway (Real.sqrt (Nat.land 9 (n ^ 2) : ℝ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A097958.P16919228147883853089

namespace A097958

/-- `p?[lcm(n, sqrt(and(9, n²)))]` -/
def P16919228147883853089.Spec : Prop :=
  ∀ n, (P16919228147883853089.a n : ℤ) = A097958 (n + 1)

end A097958

/-! ## A097958.P5415586034666344943

`record[A006530(or(4, n)+2)]`
-/

namespace A097958.P5415586034666344943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.lor 4 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097958.P5415586034666344943

namespace A097958

/-- `record[A006530(or(4, n)+2)]` -/
def P5415586034666344943.Spec : Prop :=
  ∀ n, P5415586034666344943.a n = A097958 (n + 1)

end A097958

/-! ## A097958.P2001701910118232450

`record[or(1, A020639(or(4, n)+2))]`
-/

namespace A097958.P2001701910118232450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A020639 (Nat.lor 4 n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097958.P2001701910118232450

namespace A097958

/-- `record[or(1, A020639(or(4, n)+2))]` -/
def P2001701910118232450.Spec : Prop :=
  ∀ n, P2001701910118232450.a n = A097958 (n + 1)

end A097958

/-! ## A097958.P10155939218573547675

`record[A006530(n*and(2, n)+3)]`
-/

namespace A097958.P10155939218573547675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n * Nat.land 2 n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097958.P10155939218573547675

namespace A097958

/-- `record[A006530(n*and(2, n)+3)]` -/
def P10155939218573547675.Spec : Prop :=
  ∀ n, P10155939218573547675.a n = A097958 (n + 1)

end A097958

/-! ## A097958.P11605955602916741937

`record[A020639(n*and(2, n)+3)]`
-/

namespace A097958.P11605955602916741937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n * Nat.land 2 n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097958.P11605955602916741937

namespace A097958

/-- `record[A020639(n*and(2, n)+3)]` -/
def P11605955602916741937.Spec : Prop :=
  ∀ n, P11605955602916741937.a n = A097958 (n + 1)

end A097958

/-! ## A097958.P8176373676486293029

`record[A006530(xor(2, n+5)+n+2)]`
-/

namespace A097958.P8176373676486293029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.xor 2 (n + 5) + n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097958.P8176373676486293029

namespace A097958

/-- `record[A006530(xor(2, n+5)+n+2)]` -/
def P8176373676486293029.Spec : Prop :=
  ∀ n, P8176373676486293029.a n = A097958 (n + 1)

end A097958

/-!
# A097959: Primes p such that p divides 6^((p-1)/2) - 5^((p-1)/2).

The programs for A097959, there is no canonical definition to state claims against.
-/

/-! ## A097959.P7438446202952292254

`A038903(n+4)`
-/

namespace A097959.P7438446202952292254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038903 (n + 4)

end

end A097959.P7438446202952292254

/-! ## A097959.P8912324582186927195

`A038903(A020705(n))%A031927(n)`
-/

namespace A097959.P8912324582186927195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038903 (A020705 n).toNat) (A031927 n)

end

end A097959.P8912324582186927195

/-! ## A097959.P9445033121996584382

`p?[eq[A109017(n), A226162(n)]]`
-/

namespace A097959.P9445033121996584382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109017 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226162 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A097959.P9445033121996584382

/-! ## A097959.P13815281498885267525

`eq[A035212(n+1), A319410(n+1)]+1`
-/

namespace A097959.P13815281498885267525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A097959.P13815281498885267525

/-! ## A097959.P15872009059230057113

`eq[A035212(A028310(n)), A319410(n)]`
-/

namespace A097959.P15872009059230057113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035212 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097959.P15872009059230057113

/-! ## A097959.P12968948551025072076

`eq[A035212(A008574(n)), A319410(n)]`
-/

namespace A097959.P12968948551025072076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035212 (A008574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097959.P12968948551025072076

/-!
# A097962: Slowest increasing sequence where the digits, taken one by one, show the pattern even/odd/even/odd/even...

The programs for A097962, there is no canonical definition to state claims against.
-/

/-! ## A097962.P6062680103154331675

`record[A098951(A128282(n))]`
-/

namespace A097962.P6062680103154331675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098951 (A128282 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097962.P6062680103154331675

/-! ## A097962.P1493112826904230279

`A098951(n+1)%A001567(A097333(n))`
-/

namespace A097962.P1493112826904230279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098951 (n + 1)) (A001567 (A097333 n).toNat)

end

end A097962.P1493112826904230279

/-! ## A097962.P16842357649764630439

`A118759(A098951(n+1))`
-/

namespace A097962.P16842357649764630439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A098951 (n + 1)).toNat

end

end A097962.P16842357649764630439

/-! ## A097962.P11166107130474573434

`filter[A024657(n), A228710(#)]`
-/

namespace A097962.P11166107130474573434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A097962.P11166107130474573434

/-!
# A097965: Number of compositions (ordered partitions) of n into n parts, allowing zeros, with distinct nonzero parts.

The programs for A097965, there is no canonical definition to state claims against.
-/

/-! ## A097965.P4575802863825452388

`A163530(xor(4, A041449(n)))`
-/

namespace A097965.P4575802863825452388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163530 (Int.xor 4 (A041449 n)).toNat

end

end A097965.P4575802863825452388

/-! ## A097965.P10991453477880902787

`∑[A083754(or(n, A233203(n)))]`
-/

namespace A097965.P10991453477880902787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083754 (Int.lor (n : ℤ) (A233203 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097965.P10991453477880902787

/-!
# A097966: Rectangular array read by rows (n > 0, 1 <= k <= 3): T(n,k) = floor(b(n,k)/6^(2*(A002264(n) + 1)/3)), where b(n,k) = b(n-3,k) + 13*b (n-6,k) + 36*b(n-9,k), with initial values given in comments.

The programs for A097966, there is no canonical definition to state claims against.
-/

/-! ## A097966.P6847263138145538341

`A053735(n)+A035263(A209357(n))`
-/

namespace A097966.P6847263138145538341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n + A035263 (A209357 n).toNat

end

end A097966.P6847263138145538341

/-! ## A097966.P16220777537237941901

`A133872(A211809(n))+A053735(n)`
-/

namespace A097966.P16220777537237941901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A211809 n).toNat + A053735 n

end

end A097966.P16220777537237941901

/-! ## A097966.P11358343425969339925

`A240231(A000079(n))+A096493(n+1)`
-/

namespace A097966.P11358343425969339925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240231 (A000079 n).toNat + A096493 (n + 1)

end

end A097966.P11358343425969339925

/-! ## A097966.P11561239703254501321

`A240231(A135318(2*n+1))+A096493(n+1)`
-/

namespace A097966.P11561239703254501321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240231 (A135318 (2 * n + 1)).toNat + A096493 (n + 1)

end

end A097966.P11561239703254501321

/-! ## A097966.P13151240404302634177

`A104609(A191218(n+1)+4)`
-/

namespace A097966.P13151240404302634177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104609 (A191218 (n + 1) + 4).toNat

end

end A097966.P13151240404302634177

/-!
# A097967: a(n) = Sum_{k=1..n} (P(n,k) + C(n,k)).

The programs for A097967, there is no canonical definition to state claims against.
-/

/-! ## A097967.P567209774523486697

`A097656(n)-2`
-/

namespace A097967.P567209774523486697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097656 n - 2

end

end A097967.P567209774523486697

/-! ## A097967.P12493264155444255854

`2^n+n!*∑[1/n!]-2`
-/

namespace A097967.P12493264155444255854
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) + (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j) - 2

end

end A097967.P12493264155444255854

/-! ## A097967.P17456805278860295309

`2^n+A007526(n)-1`
-/

namespace A097967.P17456805278860295309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (A007526 n - 1)

end

end A097967.P17456805278860295309

/-! ## A097967.P15333647350409977987

`2^n+A000522(n)-2`
-/

namespace A097967.P15333647350409977987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (A000522 n - 2)

end

end A097967.P15333647350409977987

/-! ## A097967.P2512424962260111102

`Δ[A002104(n)]+2^n-2`
-/

namespace A097967.P2512424962260111102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002104 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((2 ^ n : ℤ) - 2)

end

end A097967.P2512424962260111102

/-! ## A097967.P2450364868427528944

`A000225(n)+A073591(n)-2`
-/

namespace A097967.P2450364868427528944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A073591 n - 2)

end

end A097967.P2450364868427528944

/-!
# A097970: Numbers n such that 7*10^n + 3 is prime.

The programs for A097970, there is no canonical definition to state claims against.
-/

/-! ## A097970.P9257586580049187473

`A101129(n+1)+1`
-/

namespace A097970.P9257586580049187473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101129 (n + 1) + 1

end

end A097970.P9257586580049187473

/-!
# A097971: Number of alternating runs in all permutations of [n] (the permutation 732569148 has four alternating runs: 732, 2569, 91 and 148).

The programs for A097971, the canonical program `A097971.P7573448234429370416` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097971 has offset 2).

The definition of A097971 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097971.P7573448234429370416

`2*A006157(n+2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A097971

/-- `2*A006157(n+2)` -/
def P7573448234429370416.Spec : Prop :=
  ∀ n, P7573448234429370416.a n = A097971 (n + 2)

theorem P7573448234429370416.correct : P7573448234429370416.Spec := by
  intro n
  simp only [A097971, Nat.add_sub_cancel]

end A097971

/-! ## A097971.P13945339140182179033

`(n+2)!*(2*(n+2)-1)/3`
-/

namespace A097971.P13945339140182179033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 2) : ℤ) * ((2 * (n + 2) : ℤ) - 1) : ℚ) / 3

end

end A097971.P13945339140182179033

namespace A097971

/-- `(n+2)!*(2*(n+2)-1)/3` -/
def P13945339140182179033.Spec : Prop :=
  ∀ n, P13945339140182179033.a n = (A097971 (n + 2) : ℚ)

end A097971

/-! ## A097971.P17687699063915987788

`2*∑[(n+1)²]*n!`
-/

namespace A097971.P17687699063915987788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) * Nat.factorial n

end

end A097971.P17687699063915987788

namespace A097971

/-- `2*∑[(n+1)²]*n!` -/
def P17687699063915987788.Spec : Prop :=
  ∀ n, (P17687699063915987788.a n : ℤ) = A097971 (n + 2)

end A097971

/-! ## A097971.P11270498634749462188

`(2*n+3)*(n+2)!/3`
-/

namespace A097971.P11270498634749462188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℚ) * ((Nat.factorial (n + 2) : ℚ) / 3)

end

end A097971.P11270498634749462188

namespace A097971

/-- `(2*n+3)*(n+2)!/3` -/
def P11270498634749462188.Spec : Prop :=
  ∀ n, P11270498634749462188.a n = (A097971 (n + 2) : ℚ)

end A097971

/-! ## A097971.P12431606463104588571

`(2*n/3+1)*∏[n+2]`
-/

namespace A097971.P12431606463104588571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℚ) / 3 + 1) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A097971.P12431606463104588571

namespace A097971

/-- `(2*n/3+1)*∏[n+2]` -/
def P12431606463104588571.Spec : Prop :=
  ∀ n, P12431606463104588571.a n = (A097971 (n + 2) : ℚ)

end A097971

/-! ## A097971.P1090924047478656000

`(n+1)!+(n+3)*a(n-1)` with `a(0)=2`
-/

namespace A097971.P1090924047478656000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.factorial (n + 1) + (n + 3) * a (n - 1)

end

end A097971.P1090924047478656000

namespace A097971

/-- `(n+1)!+(n+3)*a(n-1)` -/
def P1090924047478656000.Spec : Prop :=
  ∀ n, (P1090924047478656000.a n : ℤ) = A097971 (n + 2)

end A097971

/-! ## A097971.P14913848465595406424

`∏[n+1]+(n+3)*a(n-1)` with `a(0)=2`
-/

namespace A097971.P14913848465595406424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (n + 3) * a (n - 1)

end

end A097971.P14913848465595406424

namespace A097971

/-- `∏[n+1]+(n+3)*a(n-1)` -/
def P14913848465595406424.Spec : Prop :=
  ∀ n, (P14913848465595406424.a n : ℤ) = A097971 (n + 2)

end A097971

/-! ## A097971.P13986411553758448650

`Δ[2*A350309(n)]`
-/

namespace A097971.P13986411553758448650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A350309 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097971.P13986411553758448650

namespace A097971

/-- `Δ[2*A350309(n)]` -/
def P13986411553758448650.Spec : Prop :=
  ∀ n, P13986411553758448650.a n = A097971 (n + 2)

end A097971

/-! ## A097971.P18404587630344471046

`A001715(n+3)+A001286(n+2)`
-/

namespace A097971.P18404587630344471046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001715 (n + 3) + A001286 (n + 2)

end

end A097971.P18404587630344471046

namespace A097971

/-- `A001715(n+3)+A001286(n+2)` -/
def P18404587630344471046.Spec : Prop :=
  ∀ n, P18404587630344471046.a n = A097971 (n + 2)

end A097971

/-! ## A097971.P10778090996026909273

`A090672(n+1)+2*A001715(n+3)`
-/

namespace A097971.P10778090996026909273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090672 (n + 1) + 2 * A001715 (n + 3)

end

end A097971.P10778090996026909273

namespace A097971

/-- `A090672(n+1)+2*A001715(n+3)` -/
def P10778090996026909273.Spec : Prop :=
  ∀ n, P10778090996026909273.a n = A097971 (n + 2)

end A097971

/-!
# A097972: Least m such that both p|m and p+2|m+2 for twin prime pairs (p,p+2) (p=A001359).

The programs for A097972, there is no canonical definition to state claims against.
-/

/-! ## A097972.P16108463408485472893

`A328493(n+1)-1`
-/

namespace A097972.P16108463408485472893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328493 (n + 1) - 1

end

end A097972.P16108463408485472893

/-! ## A097972.P6548208121707122844

`A126251(n+1)-2`
-/

namespace A097972.P6548208121707122844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126251 (n + 1) - 2

end

end A097972.P6548208121707122844

/-! ## A097972.P8916340186665740487

`2*(A082669(n+1)-1)`
-/

namespace A097972.P8916340186665740487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A082669 (n + 1) - 1)

end

end A097972.P8916340186665740487

/-! ## A097972.P3153889840099333646

`abs(2-A126251(Δ[n²]-n))`
-/

namespace A097972.P3153889840099333646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A126251 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat|

end

end A097972.P3153889840099333646

/-! ## A097972.P8624289654450383641

`2*(C(A006512(n+1), 2)-1)`
-/

namespace A097972.P8624289654450383641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.choose (A006512 (n + 1)).toNat 2 : ℤ) - 1)

end

end A097972.P8624289654450383641

/-!
# A097973: Least m>p such that p|m, p+1|m+1 and p+2|m+2, for twin prime pairs (p, p+2), p in A001359.

The programs for A097973, the canonical program `A097973.P7662642282859607044` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097973 has offset 1).

The definition of A097973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097973.P7662642282859607044

`A014574(n+1)^3-1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A097973

/-- `A014574(n+1)^3-1` -/
def P7662642282859607044.Spec : Prop :=
  ∀ n, P7662642282859607044.a n = A097973 (n + 1)

theorem P7662642282859607044.correct : P7662642282859607044.Spec := by
  intro n
  simp only [A097973, Nat.add_sub_cancel]

end A097973

/-! ## A097973.P16878221683699056891

`(A001359(n+1)+1)^3-1`
-/

namespace A097973.P16878221683699056891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001359 (n + 1) + 1) ^ 3 - 1

end

end A097973.P16878221683699056891

namespace A097973

/-- `(A001359(n+1)+1)^3-1` -/
def P16878221683699056891.Spec : Prop :=
  ∀ n, P16878221683699056891.a n = A097973 (n + 1)

end A097973

/-! ## A097973.P17627742601716464234

`(A006512(n+1)-1)^3-1`
-/

namespace A097973.P17627742601716464234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006512 (n + 1) - 1) ^ 3 - 1

end

end A097973.P17627742601716464234

namespace A097973

/-- `(A006512(n+1)-1)^3-1` -/
def P17627742601716464234.Spec : Prop :=
  ∀ n, P17627742601716464234.a n = A097973 (n + 1)

end A097973

/-! ## A097973.P1191020460797948183

`(A144834(n+1)+2)^3-1`
-/

namespace A097973.P1191020460797948183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A144834 (n + 1) + 2) ^ 3 - 1

end

end A097973.P1191020460797948183

namespace A097973

/-- `(A144834(n+1)+2)^3-1` -/
def P1191020460797948183.Spec : Prop :=
  ∀ n, P1191020460797948183.a n = A097973 (n + 1)

end A097973

/-! ## A097973.P1336910460312675384

`A126248(n+1)+A001359(n+1)`
-/

namespace A097973.P1336910460312675384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126248 (n + 1) + A001359 (n + 1)

end

end A097973.P1336910460312675384

namespace A097973

/-- `A126248(n+1)+A001359(n+1)` -/
def P1336910460312675384.Spec : Prop :=
  ∀ n, P1336910460312675384.a n = A097973 (n + 1)

end A097973

/-! ## A097973.P7411439748312701829

`A014574(n+1)+A126248(n+1)-1`
-/

namespace A097973.P7411439748312701829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) + (A126248 (n + 1) - 1)

end

end A097973.P7411439748312701829

namespace A097973

/-- `A014574(n+1)+A126248(n+1)-1` -/
def P7411439748312701829.Spec : Prop :=
  ∀ n, P7411439748312701829.a n = A097973 (n + 1)

end A097973

/-! ## A097973.P8034538099166318576

`(A126251(n+1)+1)*A001359(n+1)`
-/

namespace A097973.P8034538099166318576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A126251 (n + 1) + 1) * A001359 (n + 1)

end

end A097973.P8034538099166318576

namespace A097973

/-- `(A126251(n+1)+1)*A001359(n+1)` -/
def P8034538099166318576.Spec : Prop :=
  ∀ n, P8034538099166318576.a n = A097973 (n + 1)

end A097973

/-! ## A097973.P15306351987717360751

`A006512(n+1)+A126248(n+1)-2`
-/

namespace A097973.P15306351987717360751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) + (A126248 (n + 1) - 2)

end

end A097973.P15306351987717360751

namespace A097973

/-- `A006512(n+1)+A126248(n+1)-2` -/
def P15306351987717360751.Spec : Prop :=
  ∀ n, P15306351987717360751.a n = A097973 (n + 1)

end A097973

/-! ## A097973.P13499140151828533676

`A014574(n+1)*A075369(n+1)-1`
-/

namespace A097973.P13499140151828533676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) * A075369 (n + 1) - 1

end

end A097973.P13499140151828533676

namespace A097973

/-- `A014574(n+1)*A075369(n+1)-1` -/
def P13499140151828533676.Spec : Prop :=
  ∀ n, P13499140151828533676.a n = A097973 (n + 1)

end A097973

/-! ## A097973.P3558112121366482701

`A040040(n+1)²*A111046(n+1)-1`
-/

namespace A097973.P3558112121366482701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 1) ^ 2 * A111046 (n + 1) - 1

end

end A097973.P3558112121366482701

namespace A097973

/-- `A040040(n+1)²*A111046(n+1)-1` -/
def P3558112121366482701.Spec : Prop :=
  ∀ n, P3558112121366482701.a n = A097973 (n + 1)

end A097973

/-! ## A097973.P5805820622015583600

`A001359(n+1)+A014574(n+1)*A037074(n+1)`
-/

namespace A097973.P5805820622015583600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + A014574 (n + 1) * A037074 (n + 1)

end

end A097973.P5805820622015583600

namespace A097973

/-- `A001359(n+1)+A014574(n+1)*A037074(n+1)` -/
def P5805820622015583600.Spec : Prop :=
  ∀ n, P5805820622015583600.a n = A097973 (n + 1)

end A097973

/-! ## A097973.P15276825518198643060

`(A075369(n+1)+A006512(n+1))*A001359(n+1)`
-/

namespace A097973.P15276825518198643060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075369 (n + 1) + A006512 (n + 1)) * A001359 (n + 1)

end

end A097973.P15276825518198643060

namespace A097973

/-- `(A075369(n+1)+A006512(n+1))*A001359(n+1)` -/
def P15276825518198643060.Spec : Prop :=
  ∀ n, P15276825518198643060.a n = A097973 (n + 1)

end A097973

/-! ## A097973.P13188466232997593441

`A037074(n+1)+A001359(n+1)*A075369(n+1)`
-/

namespace A097973.P13188466232997593441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037074 (n + 1) + A001359 (n + 1) * A075369 (n + 1)

end

end A097973.P13188466232997593441

namespace A097973

/-- `A037074(n+1)+A001359(n+1)*A075369(n+1)` -/
def P13188466232997593441.Spec : Prop :=
  ∀ n, P13188466232997593441.a n = A097973 (n + 1)

end A097973

/-! ## A097973.P14241733437683258059

`(A108604(n+1)-A014574(n+1))*A001359(n+1)`
-/

namespace A097973.P14241733437683258059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108604 (n + 1) - A014574 (n + 1)) * A001359 (n + 1)

end

end A097973.P14241733437683258059

namespace A097973

/-- `(A108604(n+1)-A014574(n+1))*A001359(n+1)` -/
def P14241733437683258059.Spec : Prop :=
  ∀ n, P14241733437683258059.a n = A097973 (n + 1)

end A097973

/-! ## A097973.P5292813458164388758

`A126248(n+1)+A037074(n+1)/A006512(n+1)`
-/

namespace A097973.P5292813458164388758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126248 (n + 1) : ℚ) + (A037074 (n + 1) : ℚ) / (A006512 (n + 1) : ℚ)

end

end A097973.P5292813458164388758

namespace A097973

/-- `A126248(n+1)+A037074(n+1)/A006512(n+1)` -/
def P5292813458164388758.Spec : Prop :=
  ∀ n, P5292813458164388758.a n = (A097973 (n + 1) : ℚ)

end A097973

/-! ## A097973.P1321157451138058787

`(A362941(n+1)-A001359(n+1))*A001359(n+1)`
-/

namespace A097973.P1321157451138058787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A362941 (n + 1) - A001359 (n + 1)) * A001359 (n + 1)

end

end A097973.P1321157451138058787

namespace A097973

/-- `(A362941(n+1)-A001359(n+1))*A001359(n+1)` -/
def P1321157451138058787.Spec : Prop :=
  ∀ n, P1321157451138058787.a n = A097973 (n + 1)

end A097973

/-! ## A097973.P536213694139907333

`(A006512(n+1)+A014574(n+1)²)*A001359(n+1)`
-/

namespace A097973.P536213694139907333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006512 (n + 1) + A014574 (n + 1) ^ 2) * A001359 (n + 1)

end

end A097973.P536213694139907333

namespace A097973

/-- `(A006512(n+1)+A014574(n+1)²)*A001359(n+1)` -/
def P536213694139907333.Spec : Prop :=
  ∀ n, P536213694139907333.a n = A097973 (n + 1)

end A097973

/-! ## A097973.P3201560680050081020

`A126248(n+1)+A077800(2*n+1)`
-/

namespace A097973.P3201560680050081020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126248 (n + 1) + A077800 (2 * n + 1)

end

end A097973.P3201560680050081020

namespace A097973

/-- `A126248(n+1)+A077800(2*n+1)` -/
def P3201560680050081020.Spec : Prop :=
  ∀ n, P3201560680050081020.a n = A097973 (n + 1)

end A097973

/-! ## A097973.P15917143851955585360

`(p?[A040976(n+1)]+1)^3-1`
-/

namespace A097973.P15917143851955585360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1) ^ 3 - 1

end

end A097973.P15917143851955585360

namespace A097973

/-- `(p?[A040976(n+1)]+1)^3-1` -/
def P15917143851955585360.Spec : Prop :=
  ∀ n, P15917143851955585360.a n = A097973 (n + 1)

end A097973

/-! ## A097973.P12827531846638237913

`A000203(A001359(n+1))*A075369(n+1)-1`
-/

namespace A097973.P12827531846638237913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A001359 (n + 1)).toNat * A075369 (n + 1) - 1

end

end A097973.P12827531846638237913

namespace A097973

/-- `A000203(A001359(n+1))*A075369(n+1)-1` -/
def P12827531846638237913.Spec : Prop :=
  ∀ n, P12827531846638237913.a n = A097973 (n + 1)

end A097973

/-!
# A097974: Sum of distinct prime divisors of n which are <= sqrt(n).

The programs for A097974, the canonical program `A097974.P5758962285217898307` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097974 has offset 1).

The definition of A097974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097974.P5758962285217898307

`∑{p}[A072504(n+1), #]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A097974

/-- `∑{p}[A072504(n+1), #]` -/
def P5758962285217898307.Spec : Prop :=
  ∀ n, (P5758962285217898307.a n : ℤ) = A097974 (n + 1)

theorem P5758962285217898307.correct : P5758962285217898307.Spec := by
  intro n
  simp only [A097974, Nat.add_sub_cancel]

end A097974

/-! ## A097974.P13506891497859704209

`∑{p}[A382486(n+1), #]`
-/

namespace A097974.P13506891497859704209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382486 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A097974.P13506891497859704209

namespace A097974

/-- `∑{p}[A382486(n+1), #]` -/
def P13506891497859704209.Spec : Prop :=
  ∀ n, (P13506891497859704209.a n : ℤ) = A097974 (n + 1)

end A097974

/-! ## A097974.P6091214199546687123

`∑{p}[(n+1)/A072505(n+1), #]`
-/

namespace A097974.P6091214199546687123
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A072505 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A097974.P6091214199546687123

namespace A097974

/-- `∑{p}[(n+1)/A072505(n+1), #]` -/
def P6091214199546687123.Spec : Prop :=
  ∀ n, (P6091214199546687123.a n : ℤ) = A097974 (n + 1)

end A097974

/-! ## A097974.P12717876091885230225

`A008472(A072504(n+1))`
-/

namespace A097974.P12717876091885230225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A072504 (n + 1)).toNat

end

end A097974.P12717876091885230225

namespace A097974

/-- `A008472(A072504(n+1))` -/
def P12717876091885230225.Spec : Prop :=
  ∀ n, P12717876091885230225.a n = A097974 (n + 1)

end A097974

/-! ## A097974.P7121082955254714955

`A001414(A382486(n+1))`
-/

namespace A097974.P7121082955254714955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A382486 (n + 1)).toNat

end

end A097974.P7121082955254714955

namespace A097974

/-- `A001414(A382486(n+1))` -/
def P7121082955254714955.Spec : Prop :=
  ∀ n, P7121082955254714955.a n = A097974 (n + 1)

end A097974

/-! ## A097974.P8640846832845916486

`A066839(n+1)-A333751(n+1)`
-/

namespace A097974.P8640846832845916486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066839 (n + 1) - A333751 (n + 1)

end

end A097974.P8640846832845916486

namespace A097974

/-- `A066839(n+1)-A333751(n+1)` -/
def P8640846832845916486.Spec : Prop :=
  ∀ n, P8640846832845916486.a n = A097974 (n + 1)

end A097974

/-! ## A097974.P17613556403448339305

`∑{p}[n+1, #]-A061397(A140271(n+1))`
-/

namespace A097974.P17613556403448339305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) - A061397 (A140271 (n + 1)).toNat

end

end A097974.P17613556403448339305

namespace A097974

/-- `∑{p}[n+1, #]-A061397(A140271(n+1))` -/
def P17613556403448339305.Spec : Prop :=
  ∀ n, P17613556403448339305.a n = A097974 (n + 1)

end A097974

/-! ## A097974.P13687594890608056586

`∑{p}[gcd(A072499(n+1), A144907(n+1)), #]`
-/

namespace A097974.P13687594890608056586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072499 (n + 1)) (A144907 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A097974.P13687594890608056586

namespace A097974

/-- `∑{p}[gcd(A072499(n+1), A144907(n+1)), #]` -/
def P13687594890608056586.Spec : Prop :=
  ∀ n, (P13687594890608056586.a n : ℤ) = A097974 (n + 1)

end A097974

/-! ## A097974.P3247277501655560367

`A008472(n+1)-A061397(A140271(n+1))`
-/

namespace A097974.P3247277501655560367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) - A061397 (A140271 (n + 1)).toNat

end

end A097974.P3247277501655560367

namespace A097974

/-- `A008472(n+1)-A061397(A140271(n+1))` -/
def P3247277501655560367.Spec : Prop :=
  ∀ n, P3247277501655560367.a n = A097974 (n + 1)

end A097974

/-! ## A097974.P13099831519042630737

`∑{d}[n+1, A061397(#)]-A061397(A140271(n+1))`
-/

namespace A097974.P13099831519042630737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061397 d - A061397 (A140271 (n + 1)).toNat

end

end A097974.P13099831519042630737

namespace A097974

/-- `∑{d}[n+1, A061397(#)]-A061397(A140271(n+1))` -/
def P13099831519042630737.Spec : Prop :=
  ∀ n, P13099831519042630737.a n = A097974 (n + 1)

end A097974

/-! ## A097974.P1444692284022558961

`A001414(∏{p}[n+1, #])-A061397(A140271(n+1))`
-/

namespace A097974.P1444692284022558961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (∏ p ∈ Nat.primeFactors (f1 n), p) - A061397 (A140271 (n + 1)).toNat

end

end A097974.P1444692284022558961

namespace A097974

/-- `A001414(∏{p}[n+1, #])-A061397(A140271(n+1))` -/
def P1444692284022558961.Spec : Prop :=
  ∀ n, P1444692284022558961.a n = A097974 (n + 1)

end A097974

/-! ## A097974.P14842289586103682056

`A001414(A007947(n+1))-A061397(A140271(n+1))`
-/

namespace A097974.P14842289586103682056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A007947 (n + 1)).toNat - A061397 (A140271 (n + 1)).toNat

end

end A097974.P14842289586103682056

namespace A097974

/-- `A001414(A007947(n+1))-A061397(A140271(n+1))` -/
def P14842289586103682056.Spec : Prop :=
  ∀ n, P14842289586103682056.a n = A097974 (n + 1)

end A097974

/-! ## A097974.P3758720727807328956

`A344931(n+1)+A344908(n+1)-A061397(A140271(n+1))`
-/

namespace A097974.P3758720727807328956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344931 (n + 1) + A344908 (n + 1) - A061397 (A140271 (n + 1)).toNat

end

end A097974.P3758720727807328956

namespace A097974

/-- `A344931(n+1)+A344908(n+1)-A061397(A140271(n+1))` -/
def P3758720727807328956.Spec : Prop :=
  ∀ n, P3758720727807328956.a n = A097974 (n + 1)

end A097974

/-! ## A097974.P3262577236441100681

`A181894(n%A007947(n+1)+1)-A061397(A140271(n+1))`
-/

namespace A097974.P3262577236441100681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181894 (Int.tmod (n : ℤ) (A007947 (n + 1)) + 1).toNat - A061397 (A140271 (n + 1)).toNat

end

end A097974.P3262577236441100681

namespace A097974

/-- `A181894(n%A007947(n+1)+1)-A061397(A140271(n+1))` -/
def P3262577236441100681.Spec : Prop :=
  ∀ n, P3262577236441100681.a n = A097974 (n + 1)

end A097974

/-! ## A097974.P9767911560770600148

`∑{p}[n+1, #%A033677(#+n+1)]`
-/

namespace A097974.P9767911560770600148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Int.tmod (p : ℤ) (A033677 (p + n + 1))

end

end A097974.P9767911560770600148

namespace A097974

/-- `∑{p}[n+1, #%A033677(#+n+1)]` -/
def P9767911560770600148.Spec : Prop :=
  ∀ n, P9767911560770600148.a n = A097974 (n + 1)

end A097974

/-! ## A097974.P14393843396548356683

`∑{p}[gcd(n+1, floor(sqrt(n+1))!), #]`
-/

namespace A097974.P14393843396548356683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (Nat.factorial (Nat.sqrt (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A097974.P14393843396548356683

namespace A097974

/-- `∑{p}[gcd(n+1, floor(sqrt(n+1))!), #]` -/
def P14393843396548356683.Spec : Prop :=
  ∀ n, (P14393843396548356683.a n : ℤ) = A097974 (n + 1)

end A097974

/-! ## A097974.P4385790791606693217

`∑{p}[A396068(n+1), #]`
-/

namespace A097974.P4385790791606693217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396068 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A097974.P4385790791606693217

namespace A097974

/-- `∑{p}[A396068(n+1), #]` -/
def P4385790791606693217.Spec : Prop :=
  ∀ n, (P4385790791606693217.a n : ℤ) = A097974 (n + 1)

end A097974

/-! ## A097974.P13317903130262809068

`∑{p}[A072499(n+1), #]`
-/

namespace A097974.P13317903130262809068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072499 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A097974.P13317903130262809068

namespace A097974

/-- `∑{p}[A072499(n+1), #]` -/
def P13317903130262809068.Spec : Prop :=
  ∀ n, (P13317903130262809068.a n : ℤ) = A097974 (n + 1)

end A097974

/-! ## A097974.P3927036772949797486

`∑{p}[A072500(n+1)/A072501(n+1), #]`
-/

namespace A097974.P3927036772949797486
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072500 (n + 1) : ℚ) / (A072501 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A097974.P3927036772949797486

namespace A097974

/-- `∑{p}[A072500(n+1)/A072501(n+1), #]` -/
def P3927036772949797486.Spec : Prop :=
  ∀ n, (P3927036772949797486.a n : ℤ) = A097974 (n + 1)

end A097974

/-! ## A097974.P964231652354155561

`A008472(A396068(n+1))`
-/

namespace A097974.P964231652354155561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A396068 (n + 1)).toNat

end

end A097974.P964231652354155561

namespace A097974

/-- `A008472(A396068(n+1))` -/
def P964231652354155561.Spec : Prop :=
  ∀ n, P964231652354155561.a n = A097974 (n + 1)

end A097974

/-!
# A097975: a(n) is the prime divisor of n which is >= sqrt(n), or 0 if there is no such prime divisor.

The programs for A097975, the canonical program `A097975.P3584933818732001972` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097975 has offset 1).

The definition of A097975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097975.P16095814481225721212

`A061397(A033677(n+1))`
-/

namespace A097975.P16095814481225721212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A033677 (n + 1)).toNat

end

end A097975.P16095814481225721212

namespace A097975

/-- `A061397(A033677(n+1))` -/
def P16095814481225721212.Spec : Prop :=
  ∀ n, P16095814481225721212.a n = A097975 (n + 1)

end A097975

/-! ## A097975.P8059531190420529067

`A327667(n)*A341591(n+1)`
-/

namespace A097975.P8059531190420529067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327667 n * A341591 (n + 1)

end

end A097975.P8059531190420529067

namespace A097975

/-- `A327667(n)*A341591(n+1)` -/
def P8059531190420529067.Spec : Prop :=
  ∀ n, P8059531190420529067.a n = A097975 (n + 1)

end A097975

/-! ## A097975.P3584933818732001972

`A006530(n+1)*A341591(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A097975

/-- `A006530(n+1)*A341591(n+1)` -/
def P3584933818732001972.Spec : Prop :=
  ∀ n, P3584933818732001972.a n = A097975 (n + 1)

theorem P3584933818732001972.correct : P3584933818732001972.Spec := by
  intro n
  simp only [A097975, Nat.add_sub_cancel]

end A097975

/-! ## A097975.P6156556843624110297

`A033677(n+1)*A341591(n+1)`
-/

namespace A097975.P6156556843624110297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1) * A341591 (n + 1)

end

end A097975.P6156556843624110297

namespace A097975

/-- `A033677(n+1)*A341591(n+1)` -/
def P6156556843624110297.Spec : Prop :=
  ∀ n, P6156556843624110297.a n = A097975 (n + 1)

end A097975

/-! ## A097975.P4405663900275319495

`A072505(n+1)*A341591(n+1)`
-/

namespace A097975.P4405663900275319495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072505 (n + 1) * A341591 (n + 1)

end

end A097975.P4405663900275319495

namespace A097975

/-- `A072505(n+1)*A341591(n+1)` -/
def P4405663900275319495.Spec : Prop :=
  ∀ n, P4405663900275319495.a n = A097975 (n + 1)

end A097975

/-! ## A097975.P9584168478620706328

`A088387(n+1)*A341591(n+1)`
-/

namespace A097975.P9584168478620706328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (n + 1) * A341591 (n + 1)

end

end A097975.P9584168478620706328

namespace A097975

/-- `A088387(n+1)*A341591(n+1)` -/
def P9584168478620706328.Spec : Prop :=
  ∀ n, P9584168478620706328.a n = A097975 (n + 1)

end A097975

/-! ## A097975.P12792740947401596936

`A111089(n+1)*A341591(n+1)`
-/

namespace A097975.P12792740947401596936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1) * A341591 (n + 1)

end

end A097975.P12792740947401596936

namespace A097975

/-- `A111089(n+1)*A341591(n+1)` -/
def P12792740947401596936.Spec : Prop :=
  ∀ n, P12792740947401596936.a n = A097975 (n + 1)

end A097975

/-! ## A097975.P8009639537387110952

`A116548(n+1)*A341591(n+1)`
-/

namespace A097975.P8009639537387110952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116548 (n + 1) * A341591 (n + 1)

end

end A097975.P8009639537387110952

namespace A097975

/-- `A116548(n+1)*A341591(n+1)` -/
def P8009639537387110952.Spec : Prop :=
  ∀ n, P8009639537387110952.a n = A097975 (n + 1)

end A097975

/-! ## A097975.P3333740667989620788

`A256267(n+1)*A341591(n+1)`
-/

namespace A097975.P3333740667989620788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256267 (n + 1) * A341591 (n + 1)

end

end A097975.P3333740667989620788

namespace A097975

/-- `A256267(n+1)*A341591(n+1)` -/
def P3333740667989620788.Spec : Prop :=
  ∀ n, P3333740667989620788.a n = A097975 (n + 1)

end A097975

/-! ## A097975.P1587592696769861455

`A284695(n+1)*A341591(n+1)`
-/

namespace A097975.P1587592696769861455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284695 (n + 1) * A341591 (n + 1)

end

end A097975.P1587592696769861455

namespace A097975

/-- `A284695(n+1)*A341591(n+1)` -/
def P1587592696769861455.Spec : Prop :=
  ∀ n, P1587592696769861455.a n = A097975 (n + 1)

end A097975

/-! ## A097975.P17106935338935598317

`A341591(n+1)*A346152(n+1)`
-/

namespace A097975.P17106935338935598317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341591 (n + 1) * A346152 (n + 1)

end

end A097975.P17106935338935598317

namespace A097975

/-- `A341591(n+1)*A346152(n+1)` -/
def P17106935338935598317.Spec : Prop :=
  ∀ n, P17106935338935598317.a n = A097975 (n + 1)

end A097975

/-! ## A097975.P1624275778743863305

`A061397((n+1)/A033676(n+1))`
-/

namespace A097975.P1624275778743863305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A033676 (n + 1) : ℚ))).toNat

end

end A097975.P1624275778743863305

namespace A097975

/-- `A061397((n+1)/A033676(n+1))` -/
def P1624275778743863305.Spec : Prop :=
  ∀ n, P1624275778743863305.a n = A097975 (n + 1)

end A097975

/-! ## A097975.P7452251126035855442

`A006530(n+1)*A010051(A033677(n+1))`
-/

namespace A097975.P7452251126035855442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * A010051 (A033677 (n + 1)).toNat

end

end A097975.P7452251126035855442

namespace A097975

/-- `A006530(n+1)*A010051(A033677(n+1))` -/
def P7452251126035855442.Spec : Prop :=
  ∀ n, P7452251126035855442.a n = A097975 (n + 1)

end A097975

/-! ## A097975.P17285577735485992041

`A020639(A140271(n+1))*A341591(n+1)`
-/

namespace A097975.P17285577735485992041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A140271 (n + 1)).toNat * A341591 (n + 1)

end

end A097975.P17285577735485992041

namespace A097975

/-- `A020639(A140271(n+1))*A341591(n+1)` -/
def P17285577735485992041.Spec : Prop :=
  ∀ n, P17285577735485992041.a n = A097975 (n + 1)

end A097975

/-! ## A097975.P3190971988113734361

`A033677(n+1)*A064911(2*A033677(n+1))`
-/

namespace A097975.P3190971988113734361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1) * A064911 (2 * A033677 (n + 1)).toNat

end

end A097975.P3190971988113734361

namespace A097975

/-- `A033677(n+1)*A064911(2*A033677(n+1))` -/
def P3190971988113734361.Spec : Prop :=
  ∀ n, P3190971988113734361.a n = A097975 (n + 1)

end A097975

/-! ## A097975.P17199734505249234567

`A033677(n+1)*A302048(A033677(n+1)²)`
-/

namespace A097975.P17199734505249234567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1) * A302048 (A033677 (n + 1) ^ 2).toNat

end

end A097975.P17199734505249234567

namespace A097975

/-- `A033677(n+1)*A302048(A033677(n+1)²)` -/
def P17199734505249234567.Spec : Prop :=
  ∀ n, P17199734505249234567.a n = A097975 (n + 1)

end A097975

/-! ## A097975.P2381578514869178637

`A033677(n+1)*A064911(A033677(n+1)²)`
-/

namespace A097975.P2381578514869178637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1) * A064911 (A033677 (n + 1) ^ 2).toNat

end

end A097975.P2381578514869178637

namespace A097975

/-- `A033677(n+1)*A064911(A033677(n+1)²)` -/
def P2381578514869178637.Spec : Prop :=
  ∀ n, P2381578514869178637.a n = A097975 (n + 1)

end A097975

/-!
# A097976: Sum of largest parts (counted with multiplicity) in all compositions of n.

The programs for A097976, there is no canonical definition to state claims against.
-/

/-! ## A097976.P14292374259082932763

`∑[A003056(Δ[A150910(n)])]`
-/

namespace A097976.P14292374259082932763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150910 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097976.P14292374259082932763

/-! ## A097976.P4560043718086303461

`∑[A172471(Δ[A150907(n)])]`
-/

namespace A097976.P4560043718086303461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150907 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097976.P4560043718086303461

/-! ## A097976.P1285832751811497403

`A329150(n+1)+A046155(A094829(n+2))`
-/

namespace A097976.P1285832751811497403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329150 (n + 1) + A046155 (A094829 (n + 2)).toNat

end

end A097976.P1285832751811497403

/-!
# A097978: a(n) = least m such that m and m+n are both products of exactly n distinct primes.

The programs for A097978, there is no canonical definition to state claims against.
-/

/-! ## A097978.P8160494874968809515

`A179110(A092896(n))+A003056(n)`
-/

namespace A097978.P8160494874968809515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179110 (A092896 n).toNat + A003056 n

end

end A097978.P8160494874968809515

/-!
# A097979: Total number of largest parts in all compositions of n.

The programs for A097979, there is no canonical definition to state claims against.
-/

/-! ## A097979.P6058690134324384193

`record[A238341(n)]`
-/

namespace A097979.P6058690134324384193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097979.P6058690134324384193

/-! ## A097979.P1157151792327766497

`A238341(∑[n+2]+2)`
-/

namespace A097979.P1157151792327766497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A097979.P1157151792327766497

/-! ## A097979.P9419605008635179069

`or(char[1], A238341(A000124(n+2)))`
-/

namespace A097979.P9419605008635179069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A238341 (A000124 (n + 2)).toNat)

end

end A097979.P9419605008635179069

/-! ## A097979.P7527103257910339807

`and(A238341(A167614(n+1)-2), A263806(n))`
-/

namespace A097979.P7527103257910339807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A238341 (A167614 (n + 1) - 2).toNat) (A263806 n)

end

end A097979.P7527103257910339807

/-! ## A097979.P9102641322306221535

`A238341(A000124(n+2))%Δ[A137447(2*n)]`
-/

namespace A097979.P9102641322306221535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137447 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238341 (A000124 (n + 2)).toNat) (f1 (n + 1) - f1 n)

end

end A097979.P9102641322306221535

/-! ## A097979.P15610215084313632992

`A238341(A000124(n+2))+2%A087960(n+1)`
-/

namespace A097979.P15610215084313632992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A000124 (n + 2)).toNat + Int.tmod 2 (A087960 (n + 1))

end

end A097979.P15610215084313632992

/-! ## A097979.P10765760868065110484

`A238341(A000124(n+2))+(n+1)%A020639(n+1)`
-/

namespace A097979.P10765760868065110484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A000124 (n + 2)).toNat + Int.tmod (n + 1 : ℤ) (A020639 (n + 1))

end

end A097979.P10765760868065110484

/-! ## A097979.P16882998374617222067

`A001222(A002148(n))*A238341(A000124(n+2))`
-/

namespace A097979.P16882998374617222067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002148 n).toNat * A238341 (A000124 (n + 2)).toNat

end

end A097979.P16882998374617222067

/-!
# A097980: Number of weakly eutactic lattices in dimension n.

The programs for A097980, there is no canonical definition to state claims against.
-/

/-! ## A097980.P7888951815029546671

`9*a(n-1)-26` with `a(0)=1, a(1)=2, a(2)=5, a(3)=17`
-/

namespace A097980.P7888951815029546671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 17] fun n a =>
  9 * a (n - 1) - 26

end

end A097980.P7888951815029546671

/-!
# A097982: Numbers n such that (phi(n) + sigma(n))/(rad(n))^2 is an integer > 1 (phi=A000010, sigma=A000203, rad=A007947).

The programs for A097982, there is no canonical definition to state claims against.
-/

/-! ## A097982.P10942427232682009110

`gcd(floor(acot(n)), A121850(n+3))`
-/

namespace A097982.P10942427232682009110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A121850 (n + 3))

end

end A097982.P10942427232682009110

/-! ## A097982.P9783226050421089942

`A121850((n+3)^ceil(sin(n)²))`
-/

namespace A097982.P9783226050421089942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121850 (SequenceMachineLib.roundAway ((n + 3 : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ))).toNat

end

end A097982.P9783226050421089942

/-! ## A097982.P12165733667872379615

`A121850(n+3-floor(acot(n)²))`
-/

namespace A097982.P12165733667872379615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121850 ((n + 3 : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋).toNat

end

end A097982.P12165733667872379615

/-! ## A097982.P15949480043506714659

`A121850(floor(acot(a(n-1))+n)+3)` with `a(0)=1`
-/

namespace A097982.P15949480043506714659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A121850 (⌊SequenceMachineLib.acot (a (n - 1) : ℝ) + (n : ℝ)⌋ + 3).toNat

end

end A097982.P15949480043506714659

/-! ## A097982.P10905457360809320220

`A121850(A171463(n+1))`
-/

namespace A097982.P10905457360809320220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121850 (A171463 (n + 1)).toNat

end

end A097982.P10905457360809320220

/-! ## A097982.P16966650742421342081

`A121850(A122553(n)+n)`
-/

namespace A097982.P16966650742421342081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121850 (A122553 n + (n : ℤ)).toNat

end

end A097982.P16966650742421342081

/-! ## A097982.P10840895495565029108

`A121850(3-A000038(n)+n)`
-/

namespace A097982.P10840895495565029108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121850 (3 - A000038 n + (n : ℤ)).toNat

end

end A097982.P10840895495565029108

/-! ## A097982.P4595510621337892120

`A121850(xor(n+3, A000038(n)))`
-/

namespace A097982.P4595510621337892120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121850 (Int.xor (n + 3 : ℤ) (A000038 n)).toNat

end

end A097982.P4595510621337892120

/-! ## A097982.P6275099112075314114

`A121850((n+3)^A019427(2*n))`
-/

namespace A097982.P6275099112075314114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121850 (SequenceMachineLib.roundAway ((n + 3 : ℚ) ^ (A019427 (2 * n) : ℤ))).toNat

end

end A097982.P6275099112075314114

/-! ## A097982.P8567534334256513452

`record[char[A121854(n)]*A121850(n+1)]`
-/

namespace A097982.P8567534334256513452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121854 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A121850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097982.P8567534334256513452

/-! ## A097982.P14742049753214771464

`record[char[A121857(n)]*A121850(n+1)]`
-/

namespace A097982.P14742049753214771464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121857 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A121850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097982.P14742049753214771464

/-! ## A097982.P13616680485953168177

`A121850(A048250(A034444(n+1))+n)`
-/

namespace A097982.P13616680485953168177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121850 (A048250 (A034444 (n + 1)).toNat + (n : ℤ)).toNat

end

end A097982.P13616680485953168177

/-! ## A097982.P16008221565208373533

`A121850(A103517(n)+n-A004273(n))`
-/

namespace A097982.P16008221565208373533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121850 (A103517 n + ((n : ℤ) - A004273 n)).toNat

end

end A097982.P16008221565208373533

/-! ## A097982.P6461692503309385108

`A121850(n-(A004273(n)-A103517(n)))`
-/

namespace A097982.P6461692503309385108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121850 ((n : ℤ) - (A004273 n - A103517 n)).toNat

end

end A097982.P6461692503309385108

/-! ## A097982.P11409370172439454201

`A121850((n+3)^A178334(n))`
-/

namespace A097982.P11409370172439454201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121850 (SequenceMachineLib.roundAway ((n + 3 : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A097982.P11409370172439454201

/-!
# A097983: Largest partition number not exceeding 10^n.

The programs for A097983, there is no canonical definition to state claims against.
-/

/-! ## A097983.P13527394274329502549

`A000041(A097984(n+1))`
-/

namespace A097983.P13527394274329502549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A097984 (n + 1)).toNat

end

end A097983.P13527394274329502549

/-! ## A097983.P17321260851605748997

`A000041(∑[A097985(n+1)])`
-/

namespace A097983.P17321260851605748997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A097983.P17321260851605748997

/-! ## A097983.P15447372116143012175

`A000041(A072212(n+1)-1)`
-/

namespace A097983.P15447372116143012175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A072212 (n + 1) - 1).toNat

end

end A097983.P15447372116143012175

/-! ## A097983.P3578498561693175829

`∑{d}[A097984(n+1), A000837(#)]`
-/

namespace A097983.P3578498561693175829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000837 d

end

end A097983.P3578498561693175829

/-! ## A097983.P435566684554873413

`A000065(∑[A097985(n+1)])+1`
-/

namespace A097983.P435566684554873413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A097983.P435566684554873413

/-!
# A097984: Largest m such that p(m)< 10^n, where p(m) is the partition function A000041(m).

The programs for A097984, there is no canonical definition to state claims against.
-/

/-! ## A097984.P15926785136986278348

`∑[A097985(1+n)]`
-/

namespace A097984.P15926785136986278348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097985 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097984.P15926785136986278348

/-! ## A097984.P15743953341802698653

`A072212(n+1)-1`
-/

namespace A097984.P15743953341802698653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072212 (n + 1) - 1

end

end A097984.P15743953341802698653

/-! ## A097984.P1709404372247286094

`A023443(A072212(n+1))`
-/

namespace A097984.P1709404372247286094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A072212 (n + 1)).toNat

end

end A097984.P1709404372247286094

/-!
# A097985: Number of partition numbers with n digits.

The programs for A097985, there is no canonical definition to state claims against.
-/

/-! ## A097985.P17847186405989809458

`Δ[A097984(A028310(n))%Δ[n²]²]`
-/

namespace A097985.P17847186405989809458
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097984 (A028310 n).toNat) (((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097985.P17847186405989809458

/-! ## A097985.P6715176791950973998

`Δ[A057427(n)*A097984(A028310(n))]`
-/

namespace A097985.P6715176791950973998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A097984 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097985.P6715176791950973998

/-! ## A097985.P17635647990778384495

`A097984(n+1)-A057427(n)*A097984(A028310(n))`
-/

namespace A097985.P17635647990778384495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097984 (n + 1) - A057427 n * A097984 (A028310 n).toNat

end

end A097985.P17635647990778384495

/-! ## A097985.P6415397035221760041

`Δ[∏{e}[2^n, A072212(#)]]`
-/

namespace A097985.P6415397035221760041
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A072212 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097985.P6415397035221760041

/-!
# A097986: Number of strict integer partitions of n with a part dividing all the other parts.

The programs for A097986, there is no canonical definition to state claims against.
-/

/-! ## A097986.P8604445785516787807

`∑{d}[n+1, A025147(#-1)]`
-/

namespace A097986.P8604445785516787807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A025147 (d - 1)

end

end A097986.P8604445785516787807

/-! ## A097986.P7363482292761469428

`A098965(n+1)+A025147(n)`
-/

namespace A097986.P7363482292761469428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098965 (n + 1) + A025147 n

end

end A097986.P7363482292761469428

/-! ## A097986.P6726053670608971708

`A047966(n+1)-A329436(n+1)`
-/

namespace A097986.P6726053670608971708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047966 (n + 1) - A329436 (n + 1)

end

end A097986.P6726053670608971708

/-! ## A097986.P15760594592320595304

`∑{d}[n+1, A096765(#)]`
-/

namespace A097986.P15760594592320595304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A096765 d

end

end A097986.P15760594592320595304

/-! ## A097986.P13488939555802673593

`A098965(n+1)+A096765(n+1)`
-/

namespace A097986.P13488939555802673593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098965 (n + 1) + A096765 (n + 1)

end

end A097986.P13488939555802673593

/-! ## A097986.P5803737519696775562

`A098965(n+1)+A270144(n+1)+A270144(n)`
-/

namespace A097986.P5803737519696775562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098965 (n + 1) + (A270144 (n + 1) + A270144 n)

end

end A097986.P5803737519696775562

/-! ## A097986.P5114939394528681064

`A047966(n+1)-(A334652(n+1)+A000040(n+1)%2)`
-/

namespace A097986.P5114939394528681064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047966 (n + 1) - (A334652 (n + 1) + Int.tmod (A000040 (n + 1)) 2)

end

end A097986.P5114939394528681064

/-! ## A097986.P12709392214255377681

`A343381(n+1)+A343378(n+1)`
-/

namespace A097986.P12709392214255377681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343381 (n + 1) + A343378 (n + 1)

end

end A097986.P12709392214255377681

/-! ## A097986.P9420006204083131659

`A000009(n+1)-A341450(n+1)`
-/

namespace A097986.P9420006204083131659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - A341450 (n + 1)

end

end A097986.P9420006204083131659

/-! ## A097986.P13344129940502157458

`A047966(n+1)-(A341450(n+1)+A024994(n+1))`
-/

namespace A097986.P13344129940502157458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047966 (n + 1) - (A341450 (n + 1) + A024994 (n + 1))

end

end A097986.P13344129940502157458

/-!
# A097987: Numbers k such that 4 does not divide phi(k), where phi is Euler's totient function (A000010).

The programs for A097987, there is no canonical definition to state claims against.
-/

/-! ## A097987.P451566517560758936

`∪[A025192(n), A066499(n+1)]`
-/

namespace A097987.P451566517560758936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097987.P451566517560758936

/-! ## A097987.P7610976284913633927

`∪[A038754(n), A066499(n+1)]`
-/

namespace A097987.P7610976284913633927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097987.P7610976284913633927

/-! ## A097987.P126943881949122932

`∪[A049149(n+1), A066499(n+1)]`
-/

namespace A097987.P126943881949122932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097987.P126943881949122932

/-! ## A097987.P15221168067424006541

`∪[A049196(n+1), A066499(n+1)]`
-/

namespace A097987.P15221168067424006541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097987.P15221168067424006541

/-! ## A097987.P782689436363253606

`∪[A065299(n+1), A066499(n+1)]`
-/

namespace A097987.P782689436363253606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097987.P782689436363253606

/-! ## A097987.P962016997934989220

`∩[A004144(n+1), A033948(n+1)]`
-/

namespace A097987.P962016997934989220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097987.P962016997934989220

/-! ## A097987.P7834202641842914054

`lt[0, A000010(n+1)%4]+1`
-/

namespace A097987.P7834202641842914054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A097987.P7834202641842914054

/-! ## A097987.P11035804649030914637

`lt[A121358(A000010(n+1)+1), 3]+1`
-/

namespace A097987.P11035804649030914637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121358 (A000010 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A097987.P11035804649030914637

/-! ## A097987.P17953167391559111223

`eq[1, A001222(and(3, -(A000010(n+1)+1))+1)]+1`
-/

namespace A097987.P17953167391559111223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land 3 (-(A000010 (n + 1) + 1)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A097987.P17953167391559111223

/-! ## A097987.P8929875503551621625

`∩[A033948(n+1), A081754(n+1)]`
-/

namespace A097987.P8929875503551621625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097987.P8929875503551621625

/-! ## A097987.P1368566852529756116

`∩[A081754(n+1), A300064(n+1)]`
-/

namespace A097987.P1368566852529756116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097987.P1368566852529756116

/-! ## A097987.P9924191222640696578

`eq[1, A086669(n+1)]+1`
-/

namespace A097987.P9924191222640696578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086669 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A097987.P9924191222640696578

/-! ## A097987.P10115513443198957211

`∩[A004439(n+1), A033948(n+1)]`
-/

namespace A097987.P10115513443198957211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097987.P10115513443198957211

/-! ## A097987.P13973108852649960622

`lt[1, A177499(A000010(n+1))]+1`
-/

namespace A097987.P13973108852649960622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177499 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A097987.P13973108852649960622

/-! ## A097987.P18382341863685749451

`lt[A078112(A000010(n+1)+2), 5]+1`
-/

namespace A097987.P18382341863685749451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078112 (A000010 (n + 1) + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A097987.P18382341863685749451

/-! ## A097987.P8470124029834728614

`lt[A053574(n+1), 2]+1`
-/

namespace A097987.P8470124029834728614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053574 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A097987.P8470124029834728614

/-! ## A097987.P3222063355588446394

`lt[A073103(n+1)², 14]+1`
-/

namespace A097987.P3222063355588446394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073103 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A097987.P3222063355588446394

/-! ## A097987.P4120394969917237128

`eq[2, and(2, A039649(n+1))]+1`
-/

namespace A097987.P4120394969917237128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A039649 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A097987.P4120394969917237128

/-! ## A097987.P3541964819453624882

`eq[1, A069177(A069177(n+1))]+1`
-/

namespace A097987.P3541964819453624882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069177 (A069177 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A097987.P3541964819453624882

/-! ## A097987.P2882800681234393024

`eq[1, A060594(A247257(n+1))]+1`
-/

namespace A097987.P2882800681234393024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (A247257 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A097987.P2882800681234393024

/-!
# A097988: a(n) = Sum_{d dividing n} tau(d)^3 = (Sum_{d dividing n} tau(d))^2.

The programs for A097988, the canonical program `A097988.P8818768520283579158` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097988 has offset 1).

The definition of A097988 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007425, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A097988.P8818768520283579158

`A007425(n+1)²`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A097988

/-- `A007425(n+1)²` -/
def P8818768520283579158.Spec : Prop :=
  ∀ n, P8818768520283579158.a n = A097988 (n + 1)

theorem P8818768520283579158.correct : P8818768520283579158.Spec := by
  intro n
  simp only [A097988, Nat.add_sub_cancel]

end A097988

/-! ## A097988.P4062184782170198888

`∏{e}[n+1, C(#+2, 2)²]`
-/

namespace A097988.P4062184782170198888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 2) 2 ^ 2

end

end A097988.P4062184782170198888

namespace A097988

/-- `∏{e}[n+1, C(#+2, 2)²]` -/
def P4062184782170198888.Spec : Prop :=
  ∀ n, (P4062184782170198888.a n : ℤ) = A097988 (n + 1)

end A097988

/-! ## A097988.P15751175827297949025

`∑{d}[n+1, A319089(#)]`
-/

namespace A097988.P15751175827297949025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A319089 d

end

end A097988.P15751175827297949025

namespace A097988

/-- `∑{d}[n+1, A319089(#)]` -/
def P15751175827297949025.Spec : Prop :=
  ∀ n, P15751175827297949025.a n = A097988 (n + 1)

end A097988

/-! ## A097988.P13114379978839910060

`∑{d}[n+1, A000005(#)]²`
-/

namespace A097988.P13114379978839910060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A000005 d) ^ 2

end

end A097988.P13114379978839910060

namespace A097988

/-- `∑{d}[n+1, A000005(#)]²` -/
def P13114379978839910060.Spec : Prop :=
  ∀ n, P13114379978839910060.a n = A097988 (n + 1)

end A097988

/-! ## A097988.P10098528127540542184

`∏{e}[n+1, A025747(#)²]`
-/

namespace A097988.P10098528127540542184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A025747 (Nat.factorization (f1 n) p) ^ 2

end

end A097988.P10098528127540542184

namespace A097988

/-- `∏{e}[n+1, A025747(#)²]` -/
def P10098528127540542184.Spec : Prop :=
  ∀ n, P10098528127540542184.a n = A097988 (n + 1)

end A097988

/-! ## A097988.P2539284855794517628

`∏{e}[n+1, A253145(#)²]`
-/

namespace A097988.P2539284855794517628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A253145 (Nat.factorization (f1 n) p) ^ 2

end

end A097988.P2539284855794517628

namespace A097988

/-- `∏{e}[n+1, A253145(#)²]` -/
def P2539284855794517628.Spec : Prop :=
  ∀ n, P2539284855794517628.a n = A097988 (n + 1)

end A097988

/-! ## A097988.P16206025029191011839

`∏{e}[n+1, sqrt(A059977(#))]`
-/

namespace A097988.P16206025029191011839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Real.sqrt (A059977 (Nat.factorization (f1 n) p) : ℝ)

end

end A097988.P16206025029191011839

namespace A097988

/-- `∏{e}[n+1, sqrt(A059977(#))]` -/
def P16206025029191011839.Spec : Prop :=
  ∀ n, P16206025029191011839.a n = (A097988 (n + 1) : ℝ)

end A097988

/-! ## A097988.P15160909763671974077

`(A034718(n+1)/(n+1))²`
-/

namespace A097988.P15160909763671974077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A034718 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A097988.P15160909763671974077

namespace A097988

/-- `(A034718(n+1)/(n+1))²` -/
def P15160909763671974077.Spec : Prop :=
  ∀ n, P15160909763671974077.a n = (A097988 (n + 1) : ℚ)

end A097988

/-! ## A097988.P9853113225038703297

`∏{e}[n+1, A000217(#+1)]²`
-/

namespace A097988.P9853113225038703297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), A000217 (Nat.factorization (f1 n) p + 1)) ^ 2

end

end A097988.P9853113225038703297

namespace A097988

/-- `∏{e}[n+1, A000217(#+1)]²` -/
def P9853113225038703297.Spec : Prop :=
  ∀ n, P9853113225038703297.a n = A097988 (n + 1)

theorem P9853113225038703297.correct : P9853113225038703297.Spec := by
  intro n
  simp only [A097988, Nat.add_sub_cancel, A097988.P9853113225038703297.f1, A097988.P9853113225038703297.a, A097988.P8818768520283579158.a, A000217, A000217.P10269402890581615239.a, A007425, A007425.P3441111155356079205.f1, A007425.P3441111155356079205.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A097988

/-! ## A097988.P10237276232794743935

`∑{d}[n+1, A000005((n+1)/#)^3]`
-/

namespace A097988.P10237276232794743935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ 3

end

end A097988.P10237276232794743935

namespace A097988

/-- `∑{d}[n+1, A000005((n+1)/#)^3]` -/
def P10237276232794743935.Spec : Prop :=
  ∀ n, P10237276232794743935.a n = A097988 (n + 1)

end A097988

/-! ## A097988.P5550110025725258529

`∑{d}[A007425(n+1), A007434(#)]`
-/

namespace A097988.P5550110025725258529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007434 d

end

end A097988.P5550110025725258529

namespace A097988

/-- `∑{d}[A007425(n+1), A007434(#)]` -/
def P5550110025725258529.Spec : Prop :=
  ∀ n, P5550110025725258529.a n = A097988 (n + 1)

end A097988

/-! ## A097988.P3455450469600103774

`A000290(A034718(n+1)/(n+1))`
-/

namespace A097988.P3455450469600103774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.roundAway ((A034718 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A097988.P3455450469600103774

namespace A097988

/-- `A000290(A034718(n+1)/(n+1))` -/
def P3455450469600103774.Spec : Prop :=
  ∀ n, P3455450469600103774.a n = A097988 (n + 1)

end A097988

/-! ## A097988.P15196263155786386376

`(A238952(n+1)+A000005(n+1))²`
-/

namespace A097988.P15196263155786386376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A238952 (n + 1) + A000005 (n + 1)) ^ 2

end

end A097988.P15196263155786386376

namespace A097988

/-- `(A238952(n+1)+A000005(n+1))²` -/
def P15196263155786386376.Spec : Prop :=
  ∀ n, P15196263155786386376.a n = A097988 (n + 1)

theorem P15196263155786386376.correct : P15196263155786386376.Spec := by
  intro n
  simp only [A097988, Nat.add_sub_cancel, A097988.P15196263155786386376.a, A097988.P8818768520283579158.a, A000005, A000005.P16091521709108585461.a, A007425, A007425.P3441111155356079205.f1, A007425.P3441111155356079205.a, A238952, A238952.P6937701478012677279.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A097988

/-! ## A097988.P8944187245366154525

`(A007429(n+1)-A069913(n+1))²`
-/

namespace A097988.P8944187245366154525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007429 (n + 1) - A069913 (n + 1)) ^ 2

end

end A097988.P8944187245366154525

namespace A097988

/-- `(A007429(n+1)-A069913(n+1))²` -/
def P8944187245366154525.Spec : Prop :=
  ∀ n, P8944187245366154525.a n = A097988 (n + 1)

theorem P8944187245366154525.correct : P8944187245366154525.Spec := by
  intro n
  simp only [A097988, Nat.add_sub_cancel, A097988.P8944187245366154525.a, A097988.P8818768520283579158.a, A007425, A007425.P3441111155356079205.f1, A007425.P3441111155356079205.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A069913, A069913.P4643640867168244816.a, A001065, A001065.P4097147489331274860.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A097988

/-! ## A097988.P14421891448862717093

`∑{d}[n+1, A000005(#)]*A007425(n+1)`
-/

namespace A097988.P14421891448862717093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A000005 d) * A007425 (n + 1)

end

end A097988.P14421891448862717093

namespace A097988

/-- `∑{d}[n+1, A000005(#)]*A007425(n+1)` -/
def P14421891448862717093.Spec : Prop :=
  ∀ n, P14421891448862717093.a n = A097988 (n + 1)

end A097988

/-! ## A097988.P1949856323994351359

`∑{d}[n+1, A000005(#)*A070919((n+1)/#)]`
-/

namespace A097988.P1949856323994351359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A070919 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A097988.P1949856323994351359

namespace A097988

/-- `∑{d}[n+1, A000005(#)*A070919((n+1)/#)]` -/
def P1949856323994351359.Spec : Prop :=
  ∀ n, P1949856323994351359.a n = A097988 (n + 1)

end A097988

/-! ## A097988.P10440833022546497090

`∑{d}[n+1, A007425(#)*A247513((n+1)/#)]`
-/

namespace A097988.P10440833022546497090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A247513 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A097988.P10440833022546497090

namespace A097988

/-- `∑{d}[n+1, A007425(#)*A247513((n+1)/#)]` -/
def P10440833022546497090.Spec : Prop :=
  ∀ n, P10440833022546497090.a n = A097988 (n + 1)

end A097988

/-! ## A097988.P10093032436476290956

`∑{d}[n+1, A023900(#)*A344082((n+1)/#)]`
-/

namespace A097988.P10093032436476290956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A344082 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A097988.P10093032436476290956

namespace A097988

/-- `∑{d}[n+1, A023900(#)*A344082((n+1)/#)]` -/
def P10093032436476290956.Spec : Prop :=
  ∀ n, P10093032436476290956.a n = A097988 (n + 1)

end A097988

/-! ## A097988.P4120886251376476690

`∑{d}[n+1, A130054(#)*A344132((n+1)/#)]`
-/

namespace A097988.P4120886251376476690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A344132 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A097988.P4120886251376476690

namespace A097988

/-- `∑{d}[n+1, A130054(#)*A344132((n+1)/#)]` -/
def P4120886251376476690.Spec : Prop :=
  ∀ n, P4120886251376476690.a n = A097988 (n + 1)

end A097988

/-! ## A097988.P16044072980587308061

`∑{d}[n+1, A000005(#)]*∏{e}[n+1, A000217(#+1)]`
-/

namespace A097988.P16044072980587308061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A000005 d) * (∏ p ∈ Nat.primeFactors (f2 n), A000217 (Nat.factorization (f2 n) p + 1))

end

end A097988.P16044072980587308061

namespace A097988

/-- `∑{d}[n+1, A000005(#)]*∏{e}[n+1, A000217(#+1)]` -/
def P16044072980587308061.Spec : Prop :=
  ∀ n, P16044072980587308061.a n = A097988 (n + 1)

end A097988

/-!
# A097990: A puzzle: reverse digits of n^2 + 10.

The programs for A097990, there is no canonical definition to state claims against.
-/

/-! ## A097990.P15157950295685166299

`A097991(n)+9*A000007(n)`
-/

namespace A097990.P15157950295685166299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097991 n + 9 * A000007 n

end

end A097990.P15157950295685166299

/-! ## A097990.P1137894852374990202

`A097991(A028310(n))-C(2, n+2)`
-/

namespace A097990.P1137894852374990202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097991 (A028310 n).toNat - (Nat.choose 2 (n + 2) : ℤ)

end

end A097990.P1137894852374990202

/-! ## A097990.P3673748848723253578

`A097991(A028310(n))-A000007(n)`
-/

namespace A097990.P3673748848723253578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097991 (A028310 n).toNat - A000007 n

end

end A097990.P3673748848723253578

/-! ## A097990.P16488920728684455571

`A097991(A000007(n)+n)-A000007(n)`
-/

namespace A097990.P16488920728684455571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097991 (A000007 n + (n : ℤ)).toNat - A000007 n

end

end A097990.P16488920728684455571

/-! ## A097990.P14045538679978830499

`A097991(n)+A022275(A151878(n))`
-/

namespace A097990.P14045538679978830499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097991 n + A022275 (A151878 n).toNat

end

end A097990.P14045538679978830499

/-! ## A097990.P11354861967584804559

`A135020(A005893(n)+18)`
-/

namespace A097990.P11354861967584804559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135020 (A005893 n + 18).toNat

end

end A097990.P11354861967584804559

/-!
# A097991: A puzzle: reverse digits of n^2 + 10.

The programs for A097991, there is no canonical definition to state claims against.
-/

/-! ## A097991.P2344094627697089666

`gcd(floor(acot(n)), A097990(n))`
-/

namespace A097991.P2344094627697089666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A097990 n)

end

end A097991.P2344094627697089666

/-! ## A097991.P12150641470361898201

`A097990(gcd(n*a(n-1), 3*n))` with `a(0)=1`
-/

namespace A097991.P12150641470361898201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A097990 (Int.gcd ((n : ℤ) * a (n - 1)) (3 * n : ℤ))

end

end A097991.P12150641470361898201

/-! ## A097991.P3078946771552113955

`A097990(n)%A001535(n)`
-/

namespace A097991.P3078946771552113955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097990 n) (A001535 n)

end

end A097991.P3078946771552113955

/-! ## A097991.P5693699935921054527

`A097990(n)^A001221(A001316(n))`
-/

namespace A097991.P5693699935921054527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097990 n : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

end

end A097991.P5693699935921054527

/-! ## A097991.P2535188466118768239

`A004086(n²+10)`
-/

namespace A097991.P2535188466118768239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n ^ 2 + 10)

end

end A097991.P2535188466118768239

/-! ## A097991.P11014385559045563039

`A056964(n²+10)-(n²+10)`
-/

namespace A097991.P11014385559045563039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (n ^ 2 + 10) - (n ^ 2 + 10 : ℤ)

end

end A097991.P11014385559045563039

/-! ## A097991.P2294863550133977667

`A004151(A097990(n))`
-/

namespace A097991.P2294863550133977667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A097990 n).toNat

end

end A097991.P2294863550133977667

/-! ## A097991.P15900481298338754912

`A135020(2*(n²+10))`
-/

namespace A097991.P15900481298338754912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135020 (2 * (n ^ 2 + 10))

end

end A097991.P15900481298338754912

/-!
# A097992: G.f.: 1/((1-x)*(1-x^6)) = 1/ ( (1+x)*(x^2-x+1)*(1+x+x^2)*(x-1)^2 ).

The programs for A097992, the canonical program `A097992.P5927850816154856736` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097992 has offset 0).

The definition of A097992 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097992.P5927850816154856736

`1+floor(n/6)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097992

/-- `1+floor(n/6)` -/
def P5927850816154856736.Spec : Prop :=
  ∀ n, P5927850816154856736.a n = A097992 n

theorem P5927850816154856736.correct : P5927850816154856736.Spec := by
  intro n
  simp only [A097992]

end A097992

/-! ## A097992.P14561891382321378000

`ceil(or(1, n)/6)`
-/

namespace A097992.P14561891382321378000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 n : ℚ) / 6⌉

end

end A097992.P14561891382321378000

namespace A097992

/-- `ceil(or(1, n)/6)` -/
def P14561891382321378000.Spec : Prop :=
  ∀ n, P14561891382321378000.a n = A097992 n

end A097992

/-! ## A097992.P16111977246877077466

`∑[val(xor(3, n²), 3)]`
-/

namespace A097992.P16111977246877077466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.xor 3 (n ^ 2)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097992.P16111977246877077466

namespace A097992

/-- `∑[val(xor(3, n²), 3)]` -/
def P16111977246877077466.Spec : Prop :=
  ∀ n, (P16111977246877077466.a n : ℤ) = A097992 n

end A097992

/-! ## A097992.P13141087823589389532

`ceil((cos(1)+n)/6)`
-/

namespace A097992.P13141087823589389532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.cos (1 : ℝ) + (n : ℝ)) / 6⌉

end

end A097992.P13141087823589389532

namespace A097992

/-- `ceil((cos(1)+n)/6)` -/
def P13141087823589389532.Spec : Prop :=
  ∀ n, P13141087823589389532.a n = A097992 n

end A097992

/-! ## A097992.P16241264841682820876

`round(cos(1)+n/6)`
-/

namespace A097992.P16241264841682820876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (1 : ℝ) + ((n : ℚ) / 6 : ℝ))

end

end A097992.P16241264841682820876

namespace A097992

/-- `round(cos(1)+n/6)` -/
def P16241264841682820876.Spec : Prop :=
  ∀ n, P16241264841682820876.a n = A097992 n

end A097992

/-! ## A097992.P4777468875323632131

`ceil((sin(1)+n)/6)`
-/

namespace A097992.P4777468875323632131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sin (1 : ℝ) + (n : ℝ)) / 6⌉

end

end A097992.P4777468875323632131

namespace A097992

/-- `ceil((sin(1)+n)/6)` -/
def P4777468875323632131.Spec : Prop :=
  ∀ n, P4777468875323632131.a n = A097992 n

end A097992

/-! ## A097992.P11517896922980514176

`ceil((n-cos(2))/6)`
-/

namespace A097992.P11517896922980514176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℝ) - Real.cos (2 : ℝ)) / 6⌉

end

end A097992.P11517896922980514176

namespace A097992

/-- `ceil((n-cos(2))/6)` -/
def P11517896922980514176.Spec : Prop :=
  ∀ n, P11517896922980514176.a n = A097992 n

end A097992

/-! ## A097992.P12553044477334518054

`ceil((atan(1)+n)/6)`
-/

namespace A097992.P12553044477334518054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.arctan (1 : ℝ) + (n : ℝ)) / 6⌉

end

end A097992.P12553044477334518054

namespace A097992

/-- `ceil((atan(1)+n)/6)` -/
def P12553044477334518054.Spec : Prop :=
  ∀ n, P12553044477334518054.a n = A097992 n

end A097992

/-! ## A097992.P17760416384210807681

`ceil((n-tan(3))/6)`
-/

namespace A097992.P17760416384210807681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℝ) - Real.tan (3 : ℝ)) / 6⌉

end

end A097992.P17760416384210807681

namespace A097992

/-- `ceil((n-tan(3))/6)` -/
def P17760416384210807681.Spec : Prop :=
  ∀ n, P17760416384210807681.a n = A097992 n

end A097992

/-! ## A097992.P11260513910040948767

`ceil((n-sin(4))/6)`
-/

namespace A097992.P11260513910040948767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℝ) - Real.sin (4 : ℝ)) / 6⌉

end

end A097992.P11260513910040948767

namespace A097992

/-- `ceil((n-sin(4))/6)` -/
def P11260513910040948767.Spec : Prop :=
  ∀ n, P11260513910040948767.a n = A097992 n

end A097992

/-! ## A097992.P6619892060387989270

`round(n/6-cos(4))`
-/

namespace A097992.P6619892060387989270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℚ) / 6 : ℝ) - Real.cos (4 : ℝ))

end

end A097992.P6619892060387989270

namespace A097992

/-- `round(n/6-cos(4))` -/
def P6619892060387989270.Spec : Prop :=
  ∀ n, P6619892060387989270.a n = A097992 n

end A097992

/-! ## A097992.P15164710203244375655

`ceil((tanh(1)+n)/6)`
-/

namespace A097992.P15164710203244375655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.tanh (1 : ℝ) + (n : ℝ)) / 6⌉

end

end A097992.P15164710203244375655

namespace A097992

/-- `ceil((tanh(1)+n)/6)` -/
def P15164710203244375655.Spec : Prop :=
  ∀ n, P15164710203244375655.a n = A097992 n

end A097992

/-! ## A097992.P18301011788196877397

`round((cosh(2)+n)/6)`
-/

namespace A097992.P18301011788196877397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.cosh (2 : ℝ) + (n : ℝ)) / 6)

end

end A097992.P18301011788196877397

namespace A097992

/-- `round((cosh(2)+n)/6)` -/
def P18301011788196877397.Spec : Prop :=
  ∀ n, P18301011788196877397.a n = A097992 n

end A097992

/-! ## A097992.P6283737387369100837

`round(sin(7)+n/6)`
-/

namespace A097992.P6283737387369100837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (7 : ℝ) + ((n : ℚ) / 6 : ℝ))

end

end A097992.P6283737387369100837

namespace A097992

/-- `round(sin(7)+n/6)` -/
def P6283737387369100837.Spec : Prop :=
  ∀ n, P6283737387369100837.a n = A097992 n

end A097992

/-! ## A097992.P15441353410461262423

`ceil((tan(7)+n)/6)`
-/

namespace A097992.P15441353410461262423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.tan (7 : ℝ) + (n : ℝ)) / 6⌉

end

end A097992.P15441353410461262423

namespace A097992

/-- `ceil((tan(7)+n)/6)` -/
def P15441353410461262423.Spec : Prop :=
  ∀ n, P15441353410461262423.a n = A097992 n

end A097992

/-! ## A097992.P10300176855586813958

`round((n-tan(5))/6)`
-/

namespace A097992.P10300176855586813958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℝ) - Real.tan (5 : ℝ)) / 6)

end

end A097992.P10300176855586813958

namespace A097992

/-- `round((n-tan(5))/6)` -/
def P10300176855586813958.Spec : Prop :=
  ∀ n, P10300176855586813958.a n = A097992 n

end A097992

/-! ## A097992.P13931465398709553275

`ceil((cot(1)+n)/6)`
-/

namespace A097992.P13931465398709553275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.cot (1 : ℝ) + (n : ℝ)) / 6⌉

end

end A097992.P13931465398709553275

namespace A097992

/-- `ceil((cot(1)+n)/6)` -/
def P13931465398709553275.Spec : Prop :=
  ∀ n, P13931465398709553275.a n = A097992 n

end A097992

/-! ## A097992.P4038886253511617236

`round((sinh(2)+n)/6)`
-/

namespace A097992.P4038886253511617236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.sinh (2 : ℝ) + (n : ℝ)) / 6)

end

end A097992.P4038886253511617236

namespace A097992

/-- `round((sinh(2)+n)/6)` -/
def P4038886253511617236.Spec : Prop :=
  ∀ n, P4038886253511617236.a n = A097992 n

end A097992

/-! ## A097992.P10755333372979430657

`(n+6-n%6)/6`
-/

namespace A097992.P10755333372979430657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 6 : ℤ) - ((n % 6 : ℕ) : ℤ) : ℚ) / 6

end

end A097992.P10755333372979430657

namespace A097992

/-- `(n+6-n%6)/6` -/
def P10755333372979430657.Spec : Prop :=
  ∀ n, P10755333372979430657.a n = (A097992 n : ℚ)

end A097992

/-! ## A097992.P3966151086652289768

`round(∑[∑[n+1]%3/2])`
-/

namespace A097992.P3966151086652289768
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) % 3 : ℕ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097992.P3966151086652289768

namespace A097992

/-- `round(∑[∑[n+1]%3/2])` -/
def P3966151086652289768.Spec : Prop :=
  ∀ n, P3966151086652289768.a n = A097992 n

end A097992

/-!
# A097997: Primes of the form prime(n) + prime(n+1) + prime(n+4).

The programs for A097997, the canonical program `A097997.P8265961898692889889` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097997 has offset 1).

The definition of A097997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2241 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097997.P8265961898692889889

`p?[A034961(n+1)+A031167(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A097997

/-- `p?[A034961(n+1)+A031167(n+1)]` -/
def P8265961898692889889.Spec : Prop :=
  ∀ n, P8265961898692889889.a n = A097997 (n + 1)

theorem P8265961898692889889.correct : P8265961898692889889.Spec := by
  intro n
  simp only [A097997, Nat.add_sub_cancel]

end A097997

/-! ## A097997.P5268969201049020806

`p?[A011974(n+1)+A000040(n+4)]`
-/

namespace A097997.P5268969201049020806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1) + A000040 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097997.P5268969201049020806

namespace A097997

/-- `p?[A011974(n+1)+A000040(n+4)]` -/
def P5268969201049020806.Spec : Prop :=
  ∀ n, P5268969201049020806.a n = A097997 (n + 1)

end A097997

/-! ## A097997.P16812087651464987886

`p?[A034964(n+1)-A001043(n+3)]`
-/

namespace A097997.P16812087651464987886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 1) - A001043 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097997.P16812087651464987886

namespace A097997

/-- `p?[A034964(n+1)-A001043(n+3)]` -/
def P16812087651464987886.Spec : Prop :=
  ∀ n, P16812087651464987886.a n = A097997 (n + 1)

end A097997

/-! ## A097997.P1450646267646343768

`p?[A001043(n+1)+A000040(n+5)]`
-/

namespace A097997.P1450646267646343768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + A000040 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097997.P1450646267646343768

namespace A097997

/-- `p?[A001043(n+1)+A000040(n+5)]` -/
def P1450646267646343768.Spec : Prop :=
  ∀ n, P1450646267646343768.a n = A097997 (n + 1)

end A097997

/-! ## A097997.P2767075600622122899

`p?[A008578(n+6)+A001043(n+1)]`
-/

namespace A097997.P2767075600622122899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 6) + A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097997.P2767075600622122899

namespace A097997

/-- `p?[A008578(n+6)+A001043(n+1)]` -/
def P2767075600622122899.Spec : Prop :=
  ∀ n, P2767075600622122899.a n = A097997 (n + 1)

end A097997

/-!
# A097998: Number of connected outerplanar graphs on n labeled nodes.

The programs for A097998, there is no canonical definition to state claims against.
-/

/-! ## A097998.P10869335189552025825

`ceil(A062610(n^n+1)/2)`
-/

namespace A097998.P10869335189552025825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A062610 (n ^ n + 1) : ℚ) / 2⌉

end

end A097998.P10869335189552025825

/-! ## A097998.P5460405406598040920

`A289988(n*a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A097998.P5460405406598040920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A289988 ((n : ℤ) * a (n - 3)).toNat

end

end A097998.P5460405406598040920

/-!
# A097999: Number of 2-connected outerplanar graphs on n labeled nodes.

The programs for A097999, there is no canonical definition to state claims against.
-/

/-! ## A097999.P10589364554010222693

`A032037(n+2)/2`
-/

namespace A097999.P10589364554010222693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032037 (n + 2) : ℚ) / 2

end

end A097999.P10589364554010222693

/-! ## A097999.P8544209091326238253

`A052716(n+2)/4`
-/

namespace A097999.P8544209091326238253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052716 (n + 2) : ℚ) / 4

end

end A097999.P8544209091326238253

/-! ## A097999.P349862160786409193

`n!*A002695(n+1)`
-/

namespace A097999.P349862160786409193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A002695 (n + 1)

end

end A097999.P349862160786409193

/-! ## A097999.P16251922241772291680

`n!*∑[A108666(n+1)]`
-/

namespace A097999.P16251922241772291680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097999.P16251922241772291680

/-! ## A097999.P12996634949977564694

`A000142(n)*A002695(n+1)`
-/

namespace A097999.P12996634949977564694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A002695 (n + 1)

end

end A097999.P12996634949977564694

