import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.Opaque.C026

/-!
# A322300: a(n) is the least k such that A001222(k)=n and A001222(k+1)=n+1.

The programs for A322300, there is no canonical definition to state claims against.
-/

/-! ## A322300.P1733378207246526719

`∑[A198444(comp[A008472(2*n+1)])]`
-/

namespace A322300.P1733378207246526719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (2 * n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198444 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322300.P1733378207246526719

/-!
# A322301: Primes p such that 5*2^p + 1 is also prime.

The programs for A322301, there is no canonical definition to state claims against.
-/

/-! ## A322301.P7009061200721724215

`p?[A002254(n+1)]`
-/

namespace A322301.P7009061200721724215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A322301.P7009061200721724215

/-! ## A322301.P5917630986830062039

`p?[record[A002254(A020986(n))]]`
-/

namespace A322301.P5917630986830062039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002254 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A322301.P5917630986830062039

/-! ## A322301.P10970476462408773326

`p?[record[A002254(A028920(n))]]`
-/

namespace A322301.P10970476462408773326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002254 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A322301.P10970476462408773326

/-!
# A322302: Primes p such that 11*2^p + 1 is also prime.

The programs for A322302, there is no canonical definition to state claims against.
-/

/-! ## A322302.P8966308013512479442

`p?[A002261(n+1)]`
-/

namespace A322302.P8966308013512479442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A322302.P8966308013512479442

/-! ## A322302.P2894010327734678609

`p?[record[A002261(A065648(n))]]`
-/

namespace A322302.P2894010327734678609
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002261 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A322302.P2894010327734678609

/-! ## A322302.P12583525597064980424

`record[p?[A002261(A099386(n))]]`
-/

namespace A322302.P12583525597064980424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002261 (A099386 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322302.P12583525597064980424

/-! ## A322302.P4087679643789482433

`p?[record[A002261(A109785(n))]]`
-/

namespace A322302.P4087679643789482433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002261 (A109785 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A322302.P4087679643789482433

/-! ## A322302.P683581874290701867

`record[A001414(A002261(n+2))]`
-/

namespace A322302.P683581874290701867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A002261 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322302.P683581874290701867

/-!
# A322303: a(n) = Fibonacci(semiprime(n)).

The programs for A322303, the canonical program `A322303.P6523526261375080362` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322303 has offset 1).

The definition of A322303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322303.P6523526261375080362

`A000045(eq[2, ∑{e}[n, #]])`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A322303

/-- `A000045(eq[2, ∑{e}[n, #]])` -/
def P6523526261375080362.Spec : Prop :=
  ∀ n, P6523526261375080362.a n = A322303 (n + 1)

theorem P6523526261375080362.correct : P6523526261375080362.Spec := by
  intro n
  simp only [A322303, Nat.add_sub_cancel]

end A322303

/-! ## A322303.P7280371442537081213

`A000045(A001358(n+1))`
-/

namespace A322303.P7280371442537081213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A001358 (n + 1)).toNat

end

end A322303.P7280371442537081213

namespace A322303

/-- `A000045(A001358(n+1))` -/
def P7280371442537081213.Spec : Prop :=
  ∀ n, P7280371442537081213.a n = A322303 (n + 1)

end A322303

/-! ## A322303.P5290782602495221104

`A053602(A075818(n+1))`
-/

namespace A322303.P5290782602495221104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A075818 (n + 1)).toNat

end

end A322303.P5290782602495221104

namespace A322303

/-- `A053602(A075818(n+1))` -/
def P5290782602495221104.Spec : Prop :=
  ∀ n, P5290782602495221104.a n = A322303 (n + 1)

end A322303

/-! ## A322303.P1205047638824784688

`A059974(A106349(n+1))`
-/

namespace A322303.P1205047638824784688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059974 (A106349 (n + 1)).toNat

end

end A322303.P1205047638824784688

namespace A322303

/-- `A059974(A106349(n+1))` -/
def P1205047638824784688.Spec : Prop :=
  ∀ n, P1205047638824784688.a n = A322303 (n + 1)

end A322303

/-! ## A322303.P5617832861597746061

`A212804(A088707(n+1))`
-/

namespace A322303.P5617832861597746061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A088707 (n + 1)).toNat

end

end A322303.P5617832861597746061

namespace A322303

/-- `A212804(A088707(n+1))` -/
def P5617832861597746061.Spec : Prop :=
  ∀ n, P5617832861597746061.a n = A322303 (n + 1)

end A322303

/-! ## A322303.P16343776756038016700

`A135992(A176629(n+1))`
-/

namespace A322303.P16343776756038016700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135992 (A176629 (n + 1)).toNat

end

end A322303.P16343776756038016700

namespace A322303

/-- `A135992(A176629(n+1))` -/
def P16343776756038016700.Spec : Prop :=
  ∀ n, P16343776756038016700.a n = A322303 (n + 1)

end A322303

/-! ## A322303.P1691270945388272334

`A000045(A176540(n+2))`
-/

namespace A322303.P1691270945388272334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A176540 (n + 2)).toNat

end

end A322303.P1691270945388272334

namespace A322303

/-- `A000045(A176540(n+2))` -/
def P1691270945388272334.Spec : Prop :=
  ∀ n, P1691270945388272334.a n = A322303 (n + 1)

end A322303

/-! ## A322303.P16657674552948876197

`A000045(eq[2, A105700(n)])`
-/

namespace A322303.P16657674552948876197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322303.P16657674552948876197

namespace A322303

/-- `A000045(eq[2, A105700(n)])` -/
def P16657674552948876197.Spec : Prop :=
  ∀ n, P16657674552948876197.a n = A322303 (n + 1)

end A322303

/-! ## A322303.P7584428495888963934

`A000045(sqrt(A074985(n+1)))`
-/

namespace A322303.P7584428495888963934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat

end

end A322303.P7584428495888963934

namespace A322303

/-- `A000045(sqrt(A074985(n+1)))` -/
def P7584428495888963934.Spec : Prop :=
  ∀ n, P7584428495888963934.a n = A322303 (n + 1)

end A322303

/-! ## A322303.P12106882713271923667

`A000045(record[A088739(n+1)])`
-/

namespace A322303.P12106882713271923667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A322303.P12106882713271923667

namespace A322303

/-- `A000045(record[A088739(n+1)])` -/
def P12106882713271923667.Spec : Prop :=
  ∀ n, P12106882713271923667.a n = A322303 (n + 1)

end A322303

/-! ## A322303.P13147299162844514842

`A000045(record[A088740(n+1)])`
-/

namespace A322303.P13147299162844514842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A322303.P13147299162844514842

namespace A322303

/-- `A000045(record[A088740(n+1)])` -/
def P13147299162844514842.Spec : Prop :=
  ∀ n, P13147299162844514842.a n = A322303 (n + 1)

end A322303

/-! ## A322303.P16132856976733957023

`A000045(eq[2, A001222(n+1)]+1)`
-/

namespace A322303.P16132856976733957023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A322303.P16132856976733957023

namespace A322303

/-- `A000045(eq[2, A001222(n+1)]+1)` -/
def P16132856976733957023.Spec : Prop :=
  ∀ n, P16132856976733957023.a n = A322303 (n + 1)

end A322303

/-! ## A322303.P15422438438124235495

`A000045(record[n/a(A001222(n))])` with `a(0)=4, a(1)=2`
-/

namespace A322303.P15422438438124235495
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  (n : ℚ) / f1 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A322303.P15422438438124235495

namespace A322303

/-- `A000045(record[n/a(A001222(n))])` -/
def P15422438438124235495.Spec : Prop :=
  ∀ n, P15422438438124235495.a n = A322303 (n + 1)

end A322303

/-! ## A322303.P11349713384119311595

`A000045(eq[n, n-a(A001222(n))])` with `a(0)=-1`
-/

namespace A322303.P11349713384119311595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f2 =>
  (n : ℤ) - f2 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322303.P11349713384119311595

namespace A322303

/-- `A000045(eq[n, n-a(A001222(n))])` -/
def P11349713384119311595.Spec : Prop :=
  ∀ n, P11349713384119311595.a n = A322303 (n + 1)

end A322303

/-! ## A322303.P61799457947744180

`A000045(eq[4, a(A001222(n))²])` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A322303.P61799457947744180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n f2 =>
  f2 (A001222 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A322303.P61799457947744180

namespace A322303

/-- `A000045(eq[4, a(A001222(n))²])` -/
def P61799457947744180.Spec : Prop :=
  ∀ n, P61799457947744180.a n = A322303 (n + 1)

end A322303

/-! ## A322303.P11210015113668233923

`A000045(A131749(∑[n+1]))`
-/

namespace A322303.P11210015113668233923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A131749 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A322303.P11210015113668233923

namespace A322303

/-- `A000045(A131749(∑[n+1]))` -/
def P11210015113668233923.Spec : Prop :=
  ∀ n, P11210015113668233923.a n = A322303 (n + 1)

end A322303

/-! ## A322303.P1846978780390684136

`A000045(record[A131749(n+1)])`
-/

namespace A322303.P1846978780390684136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A322303.P1846978780390684136

namespace A322303

/-- `A000045(record[A131749(n+1)])` -/
def P1846978780390684136.Spec : Prop :=
  ∀ n, P1846978780390684136.a n = A322303 (n + 1)

end A322303

/-!
# A322304: Total number of colors in all partitions of n into colored blocks of equal parts, such that all colors from a given set are used and the colors are introduced in increasing order.

The programs for A322304, there is no canonical definition to state claims against.
-/

/-! ## A322304.P8754628346747229765

`A089361(A000117(n+1))`
-/

namespace A322304.P8754628346747229765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089361 (A000117 (n + 1)).toNat

end

end A322304.P8754628346747229765

/-! ## A322304.P13147105024226416083

`A259361(∑[∑[A003013(n)]])`
-/

namespace A322304.P13147105024226416083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003013 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A322304.P13147105024226416083

/-! ## A322304.P16284650292038878643

`∑[A011371(record[A157424(n+1)])]`
-/

namespace A322304.P16284650292038878643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157424 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322304.P16284650292038878643

/-! ## A322304.P17392295560815064568

`round(A194524(24*A000041(2*n+1)+1)/7)`
-/

namespace A322304.P17392295560815064568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A194524 (24 * A000041 (2 * n + 1) + 1).toNat : ℚ) / 7)

end

end A322304.P17392295560815064568

/-! ## A322304.P5884197486673512201

`A000196(A004773(n)*A192873(n))`
-/

namespace A322304.P5884197486673512201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A004773 n * A192873 n).toNat

end

end A322304.P5884197486673512201

/-!
# A322305: a(0) = 1 & a(1) = 0; for n > 0, a(2n) = a(n) + a(n-1); if a(n) is even then a(2n+1) = a(n)/2, but if a(n) is odd then a(2n+1) = (3a(n)-1)/2.

The programs for A322305, there is no canonical definition to state claims against.
-/

/-! ## A322305.P16970419085888247392

`A000030(A020951(n)^A010691(n))`
-/

namespace A322305.P16970419085888247392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.roundAway ((A020951 n : ℚ) ^ (A010691 n : ℤ))).toNat

end

end A322305.P16970419085888247392

/-! ## A322305.P4766288175916149773

`ceil(A020951(n)/A007998(A328580(n)))`
-/

namespace A322305.P4766288175916149773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020951 n : ℚ) / (A007998 (A328580 n).toNat : ℚ)⌉

end

end A322305.P4766288175916149773

/-! ## A322305.P14012978253848010870

`A020951(n)^A014998(A137795(n+1))`
-/

namespace A322305.P14012978253848010870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020951 n : ℚ) ^ (A014998 (A137795 (n + 1)).toNat : ℤ)

end

end A322305.P14012978253848010870

/-! ## A322305.P2608918071891267221

`A020951(n)^A001014(A213725(2*n))`
-/

namespace A322305.P2608918071891267221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020951 n : ℚ) ^ (A001014 (A213725 (2 * n)).toNat : ℤ)

end

end A322305.P2608918071891267221

/-! ## A322305.P3903644777864777488

`A000120(A004074(n+1)^A000005(n+1))`
-/

namespace A322305.P3903644777864777488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A004074 (n + 1) : ℚ) ^ (A000005 (n + 1) : ℤ))).toNat

end

end A322305.P3903644777864777488

/-!
# A322306: Number of connected divisors of n. Number of connected submultisets of the n-th multiset multisystem (A302242).

The programs for A322306, there is no canonical definition to state claims against.
-/

/-! ## A322306.P16874688962712851749

`A327390(n+1)-1`
-/

namespace A322306.P16874688962712851749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327390 (n + 1) - 1

end

end A322306.P16874688962712851749

/-! ## A322306.P16797335449286813633

`A327657(n+1)-log2(gcd(2, n))`
-/

namespace A322306.P16797335449286813633
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A327657 (n + 1) : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A322306.P16797335449286813633

/-! ## A322306.P10610513112140161780

`A327657(2*(n+1))-(n+1)%2`
-/

namespace A322306.P10610513112140161780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327657 (2 * (n + 1)) - (((n + 1) % 2 : ℕ) : ℤ)

end

end A322306.P10610513112140161780

/-! ## A322306.P8207218090959919504

`A327657(4*(n+1))+and(1, n)-1`
-/

namespace A322306.P8207218090959919504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327657 (4 * (n + 1)) + ((Nat.land 1 n : ℤ) - 1)

end

end A322306.P8207218090959919504

/-! ## A322306.P8177570783132137543

`A327657(n+1)-A059841(n)`
-/

namespace A322306.P8177570783132137543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327657 (n + 1) - A059841 n

end

end A322306.P8177570783132137543

/-! ## A322306.P13701723046699528686

`A070198(n)%A327390(n+1)`
-/

namespace A322306.P13701723046699528686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A327390 (n + 1))

end

end A322306.P13701723046699528686

/-! ## A322306.P4854357941199272041

`A196305(n)%A327390(n+1)`
-/

namespace A322306.P4854357941199272041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196305 n) (A327390 (n + 1))

end

end A322306.P4854357941199272041

/-! ## A322306.P4035960050129068579

`A198277(n)%A327390(n+1)`
-/

namespace A322306.P4035960050129068579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A327390 (n + 1))

end

end A322306.P4035960050129068579

/-! ## A322306.P8062682038511971527

`A200748(n)%A327390(n+1)`
-/

namespace A322306.P8062682038511971527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A327390 (n + 1))

end

end A322306.P8062682038511971527

/-! ## A322306.P13223986383661048286

`A327657(n+1)+A000035(n)-1`
-/

namespace A322306.P13223986383661048286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327657 (n + 1) + (A000035 n - 1)

end

end A322306.P13223986383661048286

/-!
# A322307: Number of multisets in the swell of the n-th multiset multisystem.

The programs for A322307, there is no canonical definition to state claims against.
-/

/-! ## A322307.P13537279719273239756

`∑{e}[n+1, gcd(7, #)]`
-/

namespace A322307.P13537279719273239756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd 7 (Nat.factorization (f1 n) p)

end

end A322307.P13537279719273239756

/-! ## A322307.P7528897521240018357

`floor(∑{p}[n+1, atan(#)])`
-/

namespace A322307.P7528897521240018357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ p ∈ Nat.primeFactors (f1 n), Real.arctan (p : ℝ)⌋

end

end A322307.P7528897521240018357

/-! ## A322307.P10007621966589933903

`∑{e}[n+1, ceil(#/6)]`
-/

namespace A322307.P10007621966589933903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈(Nat.factorization (f1 n) p : ℚ) / 6⌉

end

end A322307.P10007621966589933903

/-! ## A322307.P15303795069199710180

`floor(∑{e}[n+1, root(#, 3)])`
-/

namespace A322307.P15303795069199710180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A322307.P15303795069199710180

/-! ## A322307.P3585588029899174269

`ceil(∑{e}[n+1, sin(sqrt(#))])`
-/

namespace A322307.P3585588029899174269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ p ∈ Nat.primeFactors (f1 n), Real.sin (Real.sqrt (Nat.factorization (f1 n) p : ℝ))⌉

end

end A322307.P3585588029899174269

/-! ## A322307.P17642295843352960239

`ceil(∑{e}[n+1, cos(cos(#))])`
-/

namespace A322307.P17642295843352960239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ p ∈ Nat.primeFactors (f1 n), Real.cos (Real.cos (Nat.factorization (f1 n) p : ℝ))⌉

end

end A322307.P17642295843352960239

/-! ## A322307.P12658469764320796904

`floor(∑{p}[n+1, acot(acot(#))])`
-/

namespace A322307.P12658469764320796904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.acot (SequenceMachineLib.acot (p : ℝ))⌋

end

end A322307.P12658469764320796904

/-! ## A322307.P3928614061400111928

`round(∑{e}[n+1, acot(acot(#))])`
-/

namespace A322307.P3928614061400111928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.acot (SequenceMachineLib.acot (Nat.factorization (f1 n) p : ℝ)))

end

end A322307.P3928614061400111928

/-! ## A322307.P1461314133040839301

`∑{e}[n+1, 5^#]%4`
-/

namespace A322307.P1461314133040839301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), 5 ^ Nat.factorization (f1 n) p) % 4

end

end A322307.P1461314133040839301

/-! ## A322307.P10749844924812375743

`and(3, ∑{e}[∏{p}[n+1, #], #])`
-/

namespace A322307.P10749844924812375743
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A322307.P10749844924812375743

/-!
# A322308: Number of permutations sigma such that |sigma(i+j)-sigma(i)| >= 5 for 1 <= i <= n - j, 1 <= j <= 4.

The programs for A322308, there is no canonical definition to state claims against.
-/

/-! ## A322308.P17406934264150203655

`and(A000930(A185037(n)), A065960(n+1))`
-/

namespace A322308.P17406934264150203655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000930 (A185037 n).toNat) (A065960 (n + 1))

end

end A322308.P17406934264150203655

/-!
# A322309: Largest automorphism group size for a binary self-dual code of length 2n.

The programs for A322309, there is no canonical definition to state claims against.
-/

/-! ## A322309.P13801626258839363071

`A000203(A001147(n+1))*A020639(A247555(3*n+4))`
-/

namespace A322309.P13801626258839363071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A001147 (n + 1)).toNat * A020639 (A247555 (3 * n + 4)).toNat

end

end A322309.P13801626258839363071

/-!
# A322311: Lexicographically earliest such sequence a that a(i) = a(j) => A322310(i) = A322310(j) for all i, j.

The programs for A322311, there is no canonical definition to state claims against.
-/

/-! ## A322311.P14227783217999829779

`A319701(∑[A266434(A056449(n))])`
-/

namespace A322311.P14227783217999829779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266434 (A056449 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319701 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A322311.P14227783217999829779

/-! ## A322311.P11957656939703053380

`A323237(A161951(n+1))%13`
-/

namespace A322311.P11957656939703053380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323237 (A161951 (n + 1)).toNat) 13

end

end A322311.P11957656939703053380

/-! ## A322311.P11859264226462468601

`A323237(∑[A339104(n)!²²])`
-/

namespace A322311.P11859264226462468601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A339104 n).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323237 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A322311.P11859264226462468601

/-! ## A322311.P6786411024014278978

`gcd(A176383(n+2)!, A319701(n+1))`
-/

namespace A322311.P6786411024014278978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A176383 (n + 2)).toNat : ℤ) (A319701 (n + 1))

end

end A322311.P6786411024014278978

/-! ## A322311.P14023563311622832968

`A319701(∑[A000041(A120042(n))])`
-/

namespace A322311.P14023563311622832968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A120042 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319701 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A322311.P14023563311622832968

/-!
# A322312: a(n) = Product_{d|n, d+1 is prime} prime(1+A286561(n,d+1)), where A286561(n,k) gives the k-valuation of n (for k > 1).

The programs for A322312, there is no canonical definition to state claims against.
-/

/-! ## A322312.P9773360399146267926

`∏{e}[A185633(n+1), A000040(#)]`
-/

namespace A322312.P9773360399146267926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A322312.P9773360399146267926

/-! ## A322312.P8880149820054678713

`∏{e}[A185633(n+1), A004051(#)]`
-/

namespace A322312.P8880149820054678713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A004051 (Nat.factorization (f1 n).natAbs p)

end

end A322312.P8880149820054678713

/-! ## A322312.P9903697119655863549

`∏{e}[A185633(n+1), A005728(#)]`
-/

namespace A322312.P9903697119655863549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A005728 (Nat.factorization (f1 n).natAbs p)

end

end A322312.P9903697119655863549

/-! ## A322312.P13408410032241818268

`∏{e}[A185633(n+1), A029981(#)]`
-/

namespace A322312.P13408410032241818268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A029981 (Nat.factorization (f1 n).natAbs p)

end

end A322312.P13408410032241818268

/-! ## A322312.P11677513445118022040

`∏{e}[A185633(n+1), A030059(#)]`
-/

namespace A322312.P11677513445118022040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A030059 (Nat.factorization (f1 n).natAbs p)

end

end A322312.P11677513445118022040

/-!
# A322313: Lexicographically earliest such sequence a that a(i) = a(j) => A322312(i) = A322312(j) for all i, j.

The programs for A322313, there is no canonical definition to state claims against.
-/

/-! ## A322313.P8198680528636526271

`dr(A032579(A032579(A322315(n+1))))`
-/

namespace A322313.P8198680528636526271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A032579 (A032579 (A322315 (n + 1)).toNat).toNat)

end

end A322313.P8198680528636526271

/-! ## A322313.P9372397505034965999

`A322315(n+1)-A099362(A278241(n))`
-/

namespace A322313.P9372397505034965999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322315 (n + 1) - A099362 (A278241 n).toNat

end

end A322313.P9372397505034965999

/-! ## A322313.P13419531838216048169

`A322315(n+1)-A160753(A326526(n))`
-/

namespace A322313.P13419531838216048169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322315 (n + 1) - A160753 (A326526 n).toNat

end

end A322313.P13419531838216048169

/-! ## A322313.P14428153320306810598

`A322315(n+1)-A319988(A352806(n+4))`
-/

namespace A322313.P14428153320306810598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322315 (n + 1) - A319988 (A352806 (n + 4)).toNat

end

end A322313.P14428153320306810598

/-! ## A322313.P12604047629370044968

`A365395(A393464(n+2))`
-/

namespace A322313.P12604047629370044968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365395 (A393464 (n + 2)).toNat

end

end A322313.P12604047629370044968

/-!
# A322314: Lexicographically earliest such sequence a that a(i) = a(j) => A046523(i) = A046523(j) and A322312(i) = A322312(j), for all i, j.

The programs for A322314, there is no canonical definition to state claims against.
-/

/-! ## A322314.P1684639216399751081

`A300232(n+1)+A157928(A089259(n))`
-/

namespace A322314.P1684639216399751081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300232 (n + 1) + A157928 (A089259 n).toNat

end

end A322314.P1684639216399751081

/-! ## A322314.P17210599490224041065

`A300232(n+1)+A014306(A285460(n))`
-/

namespace A322314.P17210599490224041065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300232 (n + 1) + A014306 (A285460 n).toNat

end

end A322314.P17210599490224041065

/-! ## A322314.P10149123506520718485

`A305896(n+1)+A305892(A000213(n))`
-/

namespace A322314.P10149123506520718485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305896 (n + 1) + A305892 (A000213 n).toNat

end

end A322314.P10149123506520718485

/-! ## A322314.P3325393609694969794

`A352898(n+1)-A025466(A303852(n))`
-/

namespace A322314.P3325393609694969794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352898 (n + 1) - A025466 (A303852 n).toNat

end

end A322314.P3325393609694969794

/-!
# A322315: Lexicographically earliest such sequence a that a(i) = a(j) => A185633(i) = A185633(j) for all i, j.

The programs for A322315, there is no canonical definition to state claims against.
-/

/-! ## A322315.P2253895730619806194

`A322313(n+1)+A099362(A278241(n))`
-/

namespace A322315.P2253895730619806194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322313 (n + 1) + A099362 (A278241 n).toNat

end

end A322315.P2253895730619806194

/-! ## A322315.P18438396071545412210

`A322313(n+1)+A000007(A258643(n+2))`
-/

namespace A322315.P18438396071545412210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322313 (n + 1) + A000007 (A258643 (n + 2)).toNat

end

end A322315.P18438396071545412210

/-! ## A322315.P16836888368888007782

`A322313(n+1)+A020987(A028303(n))`
-/

namespace A322315.P16836888368888007782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322313 (n + 1) + A020987 (A028303 n).toNat

end

end A322315.P16836888368888007782

/-!
# A322316: Lexicographically earliest such sequence a that a(i) = a(j) => A122841(i) = A122841(j) and A244417(i) = A244417(j), for all i, j.

The programs for A322316, there is no canonical definition to state claims against.
-/

/-! ## A322316.P10183949990986674157

`A101296(A065331(n+1)%A198443(n+1))`
-/

namespace A322316.P10183949990986674157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (Int.tmod (A065331 (n + 1)) (A198443 (n + 1))).toNat

end

end A322316.P10183949990986674157

/-! ## A322316.P16164852122860171420

`A101296(A066262(n+1)%A198443(n+1))`
-/

namespace A322316.P16164852122860171420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (Int.tmod (A066262 (n + 1)) (A198443 (n + 1))).toNat

end

end A322316.P16164852122860171420

/-! ## A322316.P2009216295570614388

`A101296(A065331(n+1))%A295499(n+1)`
-/

namespace A322316.P2009216295570614388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101296 (A065331 (n + 1)).toNat) (A295499 (n + 1))

end

end A322316.P2009216295570614388

/-! ## A322316.P11563256437850656938

`A101296(A066262(n+1))%A295499(n+1)`
-/

namespace A322316.P11563256437850656938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101296 (A066262 (n + 1)).toNat) (A295499 (n + 1))

end

end A322316.P11563256437850656938

/-! ## A322316.P2097744082665789468

`A101296(A065331(n+1))^A034563(n+1)!`
-/

namespace A322316.P2097744082665789468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A065331 (n + 1)).toNat ^ Nat.factorial (A034563 (n + 1)).toNat

end

end A322316.P2097744082665789468

/-!
# A322317: Ordinal transform of A322316.

The programs for A322317, there is no canonical definition to state claims against.
-/

/-! ## A322317.P4910584737779443740

`A058933(n+1)-A285383(A126324(n))`
-/

namespace A322317.P4910584737779443740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (n + 1) - A285383 (A126324 n).toNat

end

end A322317.P4910584737779443740

/-! ## A322317.P9972553867367488058

`A263259(n^A068494(∏{p}[n+1, #]))`
-/

namespace A322317.P9972553867367488058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263259 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A068494 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ))).toNat

end

end A322317.P9972553867367488058

/-! ## A322317.P10572272348287263505

`A318995(n+1)+A100672(A002013(n))`
-/

namespace A322317.P10572272348287263505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (n + 1) + A100672 (A002013 n).toNat

end

end A322317.P10572272348287263505

/-! ## A322317.P8218556106596818873

`A328167(n+1)+A088911(A153237(n))`
-/

namespace A322317.P8218556106596818873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328167 (n + 1) + A088911 (A153237 n).toNat

end

end A322317.P8218556106596818873

/-! ## A322317.P17823800848940706457

`A000720(n+5)-A000005(A324886(n+1))`
-/

namespace A322317.P17823800848940706457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 5) - A000005 (A324886 (n + 1)).toNat

end

end A322317.P17823800848940706457

/-!
# A322318: a(n) = gcd(A003557(n), A048250(n)).

The programs for A322318, the canonical program `A322318.P10846880820075654951` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322318 has offset 1).

The definition of A322318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322318.P14283335863933518906

`A001615(n+1)/A322319(n+1)`
-/

namespace A322318.P14283335863933518906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (A322319 (n + 1) : ℚ)

end

end A322318.P14283335863933518906

namespace A322318

/-- `A001615(n+1)/A322319(n+1)` -/
def P14283335863933518906.Spec : Prop :=
  ∀ n, P14283335863933518906.a n = (A322318 (n + 1) : ℚ)

end A322318

/-! ## A322318.P10846880820075654951

`gcd((n+1)/∏{p}[n+1, #], ∏{p}[n+1, #+1])`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A322318

/-- `gcd((n+1)/∏{p}[n+1, #], ∏{p}[n+1, #+1])` -/
def P10846880820075654951.Spec : Prop :=
  ∀ n, (P10846880820075654951.a n : ℤ) = A322318 (n + 1)

theorem P10846880820075654951.correct : P10846880820075654951.Spec := by
  intro n
  simp only [A322318, Nat.add_sub_cancel]

end A322318

/-! ## A322318.P9811280636748821068

`gcd((n+1)/∏{p}[n+1, #], A000203(∏{p}[n+1, #]))`
-/

namespace A322318.P9811280636748821068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A000203 (∏ p ∈ Nat.primeFactors (f2 n), p))

end

end A322318.P9811280636748821068

namespace A322318

/-- `gcd((n+1)/∏{p}[n+1, #], A000203(∏{p}[n+1, #]))` -/
def P9811280636748821068.Spec : Prop :=
  ∀ n, (P9811280636748821068.a n : ℤ) = A322318 (n + 1)

end A322318

/-! ## A322318.P16102184007919765089

`gcd(A003557(n+1), A048250(n+1))`
-/

namespace A322318.P16102184007919765089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003557 (n + 1)) (A048250 (n + 1))

end

end A322318.P16102184007919765089

namespace A322318

/-- `gcd(A003557(n+1), A048250(n+1))` -/
def P16102184007919765089.Spec : Prop :=
  ∀ n, (P16102184007919765089.a n : ℤ) = A322318 (n + 1)

end A322318

/-! ## A322318.P5329248482578286039

`gcd(A010848(n+1), A126795(n+1))`
-/

namespace A322318.P5329248482578286039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010848 (n + 1)) (A126795 (n + 1))

end

end A322318.P5329248482578286039

namespace A322318

/-- `gcd(A010848(n+1), A126795(n+1))` -/
def P5329248482578286039.Spec : Prop :=
  ∀ n, (P5329248482578286039.a n : ℤ) = A322318 (n + 1)

end A322318

/-! ## A322318.P13224436651731904235

`gcd((n+1)/∏{p}[n+1, #], A000203(A007947(n+1)))`
-/

namespace A322318.P13224436651731904235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A000203 (A007947 (n + 1)).toNat)

end

end A322318.P13224436651731904235

namespace A322318

/-- `gcd((n+1)/∏{p}[n+1, #], A000203(A007947(n+1)))` -/
def P13224436651731904235.Spec : Prop :=
  ∀ n, (P13224436651731904235.a n : ℤ) = A322318 (n + 1)

end A322318

/-! ## A322318.P13773126810158765119

`A003557(n+1)*A048250(n+1)/A322319(n+1)`
-/

namespace A322318.P13773126810158765119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) * A048250 (n + 1) : ℚ) / (A322319 (n + 1) : ℚ)

end

end A322318.P13773126810158765119

namespace A322318

/-- `A003557(n+1)*A048250(n+1)/A322319(n+1)` -/
def P13773126810158765119.Spec : Prop :=
  ∀ n, P13773126810158765119.a n = (A322318 (n + 1) : ℚ)

end A322318

/-! ## A322318.P13608882466272361473

`A003989(A291750(n+1))`
-/

namespace A322318.P13608882466272361473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (A291750 (n + 1)).toNat

end

end A322318.P13608882466272361473

namespace A322318

/-- `A003989(A291750(n+1))` -/
def P13608882466272361473.Spec : Prop :=
  ∀ n, P13608882466272361473.a n = A322318 (n + 1)

end A322318

/-!
# A322319: a(n) = lcm(A003557(n), A048250(n)).

The programs for A322319, the canonical program `A322319.P9788050323533239167` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322319 has offset 1).

The definition of A322319 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, A322318, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A322319.P9788050323533239167

`A001615(n+1)/A322318(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A322319

/-- `A001615(n+1)/A322318(n+1)` -/
def P9788050323533239167.Spec : Prop :=
  ∀ n, P9788050323533239167.a n = (A322319 (n + 1) : ℚ)

end A322319

/-! ## A322319.P10296050883544826689

`lcm((n+1)/∏{p}[n+1, #], ∏{p}[n+1, #+1])`
-/

namespace A322319.P10296050883544826689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) ((∏ p ∈ Nat.primeFactors (f2 n), (p + 1) : ℕ) : ℤ)

end

end A322319.P10296050883544826689

namespace A322319

/-- `lcm((n+1)/∏{p}[n+1, #], ∏{p}[n+1, #+1])` -/
def P10296050883544826689.Spec : Prop :=
  ∀ n, (P10296050883544826689.a n : ℤ) = A322319 (n + 1)

end A322319

/-! ## A322319.P2152045237046722900

`lcm((n+1)/∏{p}[n+1, #], A000203(∏{p}[n+1, #]))`
-/

namespace A322319.P2152045237046722900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A000203 (∏ p ∈ Nat.primeFactors (f2 n), p))

end

end A322319.P2152045237046722900

namespace A322319

/-- `lcm((n+1)/∏{p}[n+1, #], A000203(∏{p}[n+1, #]))` -/
def P2152045237046722900.Spec : Prop :=
  ∀ n, (P2152045237046722900.a n : ℤ) = A322319 (n + 1)

end A322319

/-! ## A322319.P2436386183818854909

`lcm(A003557(n+1), A048250(n+1))`
-/

namespace A322319.P2436386183818854909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003557 (n + 1)) (A048250 (n + 1))

end

end A322319.P2436386183818854909

namespace A322319

/-- `lcm(A003557(n+1), A048250(n+1))` -/
def P2436386183818854909.Spec : Prop :=
  ∀ n, (P2436386183818854909.a n : ℤ) = A322319 (n + 1)

end A322319

/-! ## A322319.P11825802414088371472

`lcm((n+1)/∏{p}[n+1, #], A000203(A007947(n+1)))`
-/

namespace A322319.P11825802414088371472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A000203 (A007947 (n + 1)).toNat)

end

end A322319.P11825802414088371472

namespace A322319

/-- `lcm((n+1)/∏{p}[n+1, #], A000203(A007947(n+1)))` -/
def P11825802414088371472.Spec : Prop :=
  ∀ n, (P11825802414088371472.a n : ℤ) = A322319 (n + 1)

end A322319

/-! ## A322319.P17056898349031566297

`A003557(n+1)*A048250(n+1)/A322318(n+1)`
-/

namespace A322319.P17056898349031566297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) * A048250 (n + 1) : ℚ) / (A322318 (n + 1) : ℚ)

end

end A322319.P17056898349031566297

namespace A322319

/-- `A003557(n+1)*A048250(n+1)/A322318(n+1)` -/
def P17056898349031566297.Spec : Prop :=
  ∀ n, P17056898349031566297.a n = (A322319 (n + 1) : ℚ)

end A322319

/-! ## A322319.P23205464406051655

`lcm((n+1)/A007947(n+1), A000203(A007947(n+1)))`
-/

namespace A322319.P23205464406051655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))) (A000203 (A007947 (n + 1)).toNat)

end

end A322319.P23205464406051655

namespace A322319

/-- `lcm((n+1)/A007947(n+1), A000203(A007947(n+1)))` -/
def P23205464406051655.Spec : Prop :=
  ∀ n, (P23205464406051655.a n : ℤ) = A322319 (n + 1)

end A322319

/-! ## A322319.P15750173613030205030

`lcm(A048250(n+1)², A342917(n+1))/A048250(n+1)`
-/

namespace A322319.P15750173613030205030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A048250 (n + 1) ^ 2) (A342917 (n + 1)) : ℚ) / (A048250 (n + 1) : ℚ)

end

end A322319.P15750173613030205030

namespace A322319

/-- `lcm(A048250(n+1)², A342917(n+1))/A048250(n+1)` -/
def P15750173613030205030.Spec : Prop :=
  ∀ n, P15750173613030205030.a n = (A322319 (n + 1) : ℚ)

end A322319

/-! ## A322319.P8246078104007787389

`A003990(A291750(n+1))`
-/

namespace A322319.P8246078104007787389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003990 (A291750 (n + 1)).toNat

end

end A322319.P8246078104007787389

namespace A322319

/-- `A003990(A291750(n+1))` -/
def P8246078104007787389.Spec : Prop :=
  ∀ n, P8246078104007787389.a n = A322319 (n + 1)

end A322319

/-!
# A322320: a(n) = gcd(A003557(n), A173557(n)).

The programs for A322320, the canonical program `A322320.P2352245234434089838` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322320 has offset 1).

The definition of A322320 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A322321, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A322320.P2352245234434089838

`A000010(n+1)/A322321(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A322320

/-- `A000010(n+1)/A322321(n+1)` -/
def P2352245234434089838.Spec : Prop :=
  ∀ n, P2352245234434089838.a n = (A322320 (n + 1) : ℚ)

end A322320

/-! ## A322320.P3390576413959670697

`gcd((n+1)/∏{p}[n+1, #], ∏{p}[n+1, 1-#])`
-/

namespace A322320.P3390576413959670697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (∏ p ∈ Nat.primeFactors (f2 n), (1 - (p : ℤ)))

end

end A322320.P3390576413959670697

namespace A322320

/-- `gcd((n+1)/∏{p}[n+1, #], ∏{p}[n+1, 1-#])` -/
def P3390576413959670697.Spec : Prop :=
  ∀ n, (P3390576413959670697.a n : ℤ) = A322320 (n + 1)

end A322320

/-! ## A322320.P8039577365549510197

`gcd((n+1)/∏{p}[n+1, #], A173557(n+1))`
-/

namespace A322320.P8039577365549510197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A173557 (n + 1))

end

end A322320.P8039577365549510197

namespace A322320

/-- `gcd((n+1)/∏{p}[n+1, #], A173557(n+1))` -/
def P8039577365549510197.Spec : Prop :=
  ∀ n, (P8039577365549510197.a n : ℤ) = A322320 (n + 1)

end A322320

/-! ## A322320.P11491194511154340609

`Δ[A005728(n)]/A322321(n+1)`
-/

namespace A322320.P11491194511154340609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A322321 (n + 1) : ℚ)

end

end A322320.P11491194511154340609

namespace A322320

/-- `Δ[A005728(n)]/A322321(n+1)` -/
def P11491194511154340609.Spec : Prop :=
  ∀ n, P11491194511154340609.a n = (A322320 (n + 1) : ℚ)

end A322320

/-! ## A322320.P1119286115494447582

`gcd(A003557(n+1), A023900(n+1))`
-/

namespace A322320.P1119286115494447582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003557 (n + 1)) (A023900 (n + 1))

end

end A322320.P1119286115494447582

namespace A322320

/-- `gcd(A003557(n+1), A023900(n+1))` -/
def P1119286115494447582.Spec : Prop :=
  ∀ n, (P1119286115494447582.a n : ℤ) = A322320 (n + 1)

end A322320

/-! ## A322320.P12284920391576196733

`gcd(A322351(n+1), A322352(n+1))`
-/

namespace A322320.P12284920391576196733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A322351 (n + 1)) (A322352 (n + 1))

end

end A322320.P12284920391576196733

namespace A322320

/-- `gcd(A322351(n+1), A322352(n+1))` -/
def P12284920391576196733.Spec : Prop :=
  ∀ n, (P12284920391576196733.a n : ℤ) = A322320 (n + 1)

end A322320

/-! ## A322320.P18306984600838005162

`A003557((n+1)/A003557(A295126(n+1)))`
-/

namespace A322320.P18306984600838005162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (A295126 (n + 1)).toNat : ℚ))).toNat

end

end A322320.P18306984600838005162

namespace A322320

/-- `A003557((n+1)/A003557(A295126(n+1)))` -/
def P18306984600838005162.Spec : Prop :=
  ∀ n, P18306984600838005162.a n = A322320 (n + 1)

end A322320

/-! ## A322320.P10608620033879669495

`A003557(n+1)*A173557(n+1)/A322321(n+1)`
-/

namespace A322320.P10608620033879669495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) * A173557 (n + 1) : ℚ) / (A322321 (n + 1) : ℚ)

end

end A322320.P10608620033879669495

namespace A322320

/-- `A003557(n+1)*A173557(n+1)/A322321(n+1)` -/
def P10608620033879669495.Spec : Prop :=
  ∀ n, P10608620033879669495.a n = (A322320 (n + 1) : ℚ)

end A322320

/-! ## A322320.P1748420738068946845

`A322351(n+1)/A322321(n+1)*A322352(n+1)`
-/

namespace A322320.P1748420738068946845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322351 (n + 1) : ℚ) / (A322321 (n + 1) : ℚ) * (A322352 (n + 1) : ℚ)

end

end A322320.P1748420738068946845

namespace A322320

/-- `A322351(n+1)/A322321(n+1)*A322352(n+1)` -/
def P1748420738068946845.Spec : Prop :=
  ∀ n, P1748420738068946845.a n = (A322320 (n + 1) : ℚ)

end A322320

/-! ## A322320.P654595642882804346

`A109004(A291750(n+1))`
-/

namespace A322320.P654595642882804346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (A291750 (n + 1)).toNat

end

end A322320.P654595642882804346

namespace A322320

/-- `A109004(A291750(n+1))` -/
def P654595642882804346.Spec : Prop :=
  ∀ n, P654595642882804346.a n = A322320 (n + 1)

end A322320

/-!
# A322321: a(n) = lcm(A003557(n), A173557(n)).

The programs for A322321, the canonical program `A322321.P13488208681620788507` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322321 has offset 1).

The definition of A322321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322321.P12845105732497234305

`A000010(n+1)/A322320(n+1)`
-/

namespace A322321.P12845105732497234305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A322320 (n + 1) : ℚ)

end

end A322321.P12845105732497234305

namespace A322321

/-- `A000010(n+1)/A322320(n+1)` -/
def P12845105732497234305.Spec : Prop :=
  ∀ n, P12845105732497234305.a n = (A322321 (n + 1) : ℚ)

end A322321

/-! ## A322321.P13488208681620788507

`lcm((n+1)/∏{p}[n+1, #], ∏{p}[n+1, 1-#])`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A322321

/-- `lcm((n+1)/∏{p}[n+1, #], ∏{p}[n+1, 1-#])` -/
def P13488208681620788507.Spec : Prop :=
  ∀ n, (P13488208681620788507.a n : ℤ) = A322321 (n + 1)

theorem P13488208681620788507.correct : P13488208681620788507.Spec := by
  intro n
  simp only [A322321, Nat.add_sub_cancel]

end A322321

/-! ## A322321.P2949302919547438906

`lcm((n+1)/∏{p}[n+1, #], A173557(n+1))`
-/

namespace A322321.P2949302919547438906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A173557 (n + 1))

end

end A322321.P2949302919547438906

namespace A322321

/-- `lcm((n+1)/∏{p}[n+1, #], A173557(n+1))` -/
def P2949302919547438906.Spec : Prop :=
  ∀ n, (P2949302919547438906.a n : ℤ) = A322321 (n + 1)

end A322321

/-! ## A322321.P8313582183455133727

`lcm(A003557(n+1), A023900(n+1))`
-/

namespace A322321.P8313582183455133727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003557 (n + 1)) (A023900 (n + 1))

end

end A322321.P8313582183455133727

namespace A322321

/-- `lcm(A003557(n+1), A023900(n+1))` -/
def P8313582183455133727.Spec : Prop :=
  ∀ n, (P8313582183455133727.a n : ℤ) = A322321 (n + 1)

end A322321

/-! ## A322321.P9984021812270437935

`lcm(A011773(n+1), A173557(n+1))`
-/

namespace A322321.P9984021812270437935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011773 (n + 1)) (A173557 (n + 1))

end

end A322321.P9984021812270437935

namespace A322321

/-- `lcm(A011773(n+1), A173557(n+1))` -/
def P9984021812270437935.Spec : Prop :=
  ∀ n, (P9984021812270437935.a n : ℤ) = A322321 (n + 1)

end A322321

/-! ## A322321.P12822206892926598153

`lcm(A322351(n+1), A322352(n+1))`
-/

namespace A322321.P12822206892926598153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A322351 (n + 1)) (A322352 (n + 1))

end

end A322321.P12822206892926598153

namespace A322321

/-- `lcm(A322351(n+1), A322352(n+1))` -/
def P12822206892926598153.Spec : Prop :=
  ∀ n, (P12822206892926598153.a n : ℤ) = A322321 (n + 1)

end A322321

/-! ## A322321.P237324073463329291

`A000010(lcm(∏{p}[n+1, -#], A295126(n+1)))`
-/

namespace A322321.P237324073463329291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.lcm (∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ))) (A295126 (n + 1)))

end

end A322321.P237324073463329291

namespace A322321

/-- `A000010(lcm(∏{p}[n+1, -#], A295126(n+1)))` -/
def P237324073463329291.Spec : Prop :=
  ∀ n, P237324073463329291.a n = A322321 (n + 1)

end A322321

/-! ## A322321.P8595300960322804122

`A003557(A295126(n+1))*A173557(n+1)`
-/

namespace A322321.P8595300960322804122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A295126 (n + 1)).toNat * A173557 (n + 1)

end

end A322321.P8595300960322804122

namespace A322321

/-- `A003557(A295126(n+1))*A173557(n+1)` -/
def P8595300960322804122.Spec : Prop :=
  ∀ n, P8595300960322804122.a n = A322321 (n + 1)

end A322321

/-! ## A322321.P6411597592805714368

`A002322(n+1)*A034380(n+1)/A322320(n+1)`
-/

namespace A322321.P6411597592805714368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002322 (n + 1) * A034380 (n + 1) : ℚ) / (A322320 (n + 1) : ℚ)

end

end A322321.P6411597592805714368

namespace A322321

/-- `A002322(n+1)*A034380(n+1)/A322320(n+1)` -/
def P6411597592805714368.Spec : Prop :=
  ∀ n, P6411597592805714368.a n = (A322321 (n + 1) : ℚ)

end A322321

/-! ## A322321.P18125482859473300598

`A003557(n+1)*A173557(n+1)/A322320(n+1)`
-/

namespace A322321.P18125482859473300598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) * A173557 (n + 1) : ℚ) / (A322320 (n + 1) : ℚ)

end

end A322321.P18125482859473300598

namespace A322321

/-- `A003557(n+1)*A173557(n+1)/A322320(n+1)` -/
def P18125482859473300598.Spec : Prop :=
  ∀ n, P18125482859473300598.a n = (A322321 (n + 1) : ℚ)

end A322321

/-! ## A322321.P13001435595609016957

`A322351(n+1)/A322320(n+1)*A322352(n+1)`
-/

namespace A322321.P13001435595609016957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322351 (n + 1) : ℚ) / (A322320 (n + 1) : ℚ) * (A322352 (n + 1) : ℚ)

end

end A322321.P13001435595609016957

namespace A322321

/-- `A322351(n+1)/A322320(n+1)*A322352(n+1)` -/
def P13001435595609016957.Spec : Prop :=
  ∀ n, P13001435595609016957.a n = (A322321 (n + 1) : ℚ)

end A322321

/-!
# A322322: Stuffable numbers (see the Comments section for definition).

The programs for A322322, there is no canonical definition to state claims against.
-/

/-! ## A322322.P2449994185072215605

`eq[1, A000045(a(A322515(n)))]` with `a(0)=3`
-/

namespace A322322.P2449994185072215605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A322515 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322322.P2449994185072215605

/-! ## A322322.P13591003169107725311

`eq[3, A324030(a(A322515(n)))]` with `a(0)=1`
-/

namespace A322322.P13591003169107725311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A324030 (f2 (A322515 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322322.P13591003169107725311

/-! ## A322322.P10902814190490305570

`eq[2, A205378(a(A322515(n)))]` with `a(0)=5`
-/

namespace A322322.P10902814190490305570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f2 =>
  A205378 (f2 (A322515 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322322.P10902814190490305570

/-! ## A322322.P17741588551172870785

`eq[2, A000005(a(A322515(n)))]` with `a(0)=4, a(1)=3`
-/

namespace A322322.P17741588551172870785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 3] fun n f2 =>
  A000005 (f2 (A322515 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322322.P17741588551172870785

/-! ## A322322.P8153078844163386200

`eq[1, A057427(A322515(n+1))]+1`
-/

namespace A322322.P8153078844163386200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A322515 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A322322.P8153078844163386200

/-!
# A322324: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals: A(n,k) = Product_{p|n, p prime} (1 - p^k).

The programs for A322324, there is no canonical definition to state claims against.
-/

/-! ## A322324.P6057130159243972042

`A093521((n+1)*Δ[n^3])-A322080(n+1)`
-/

namespace A322324.P6057130159243972042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093521 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat - A322080 (n + 1)

end

end A322324.P6057130159243972042

/-! ## A322324.P4617604084021194344

`A000035(A001588(n))-A322080(n+1)`
-/

namespace A322324.P4617604084021194344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A001588 n).toNat - A322080 (n + 1)

end

end A322324.P4617604084021194344

/-! ## A322324.P13273012413731197451

`A057427(A010017(n))-A322080(n+1)`
-/

namespace A322324.P13273012413731197451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A010017 n).toNat - A322080 (n + 1)

end

end A322324.P13273012413731197451

/-! ## A322324.P2964923357745975386

`A057427(A026636(n))-A322080(n+1)`
-/

namespace A322324.P2964923357745975386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A026636 n).toNat - A322080 (n + 1)

end

end A322324.P2964923357745975386

/-! ## A322324.P5023833324605278399

`A115364(A050268(n+1))-A322080(n+1)`
-/

namespace A322324.P5023833324605278399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115364 (A050268 (n + 1)).toNat - A322080 (n + 1)

end

end A322324.P5023833324605278399

/-!
# A322325: Number of nondecreasing Motzkin paths of length n.

The programs for A322325, the canonical program `A322325.P16754585651807856184` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322325 has offset 0).

The definition of A322325 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322325.P16754585651807856184

`2*a(n-1)+2*a(n-2)-3*a(n-3)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=9`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A322325

/-- `2*a(n-1)+2*a(n-2)-3*a(n-3)+a(n-5)` -/
def P16754585651807856184.Spec : Prop :=
  ∀ n, P16754585651807856184.a n = A322325 n

theorem P16754585651807856184.correct : P16754585651807856184.Spec := by
  intro n
  simp only [A322325]

end A322325

/-! ## A322325.P15972427762591705660

`A322329(∑[n])`
-/

namespace A322325.P15972427762591705660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322329 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A322325.P15972427762591705660

namespace A322325

/-- `A322329(∑[n])` -/
def P15972427762591705660.Spec : Prop :=
  ∀ n, P15972427762591705660.a n = A322325 n

end A322325

/-! ## A322325.P8090861701418575539

`A322329(A000217(n))%A173657(n)`
-/

namespace A322325.P8090861701418575539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322329 (A000217 n).toNat) (A173657 n)

end

end A322325.P8090861701418575539

namespace A322325

/-- `A322329(A000217(n))%A173657(n)` -/
def P8090861701418575539.Spec : Prop :=
  ∀ n, P8090861701418575539.a n = A322325 n

end A322325

/-! ## A322325.P16775539991419171390

`lcm(A087960(n), A322329(A000217(n)))`
-/

namespace A322325.P16775539991419171390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A322329 (A000217 n).toNat)

end

end A322325.P16775539991419171390

namespace A322325

/-- `lcm(A087960(n), A322329(A000217(n)))` -/
def P16775539991419171390.Spec : Prop :=
  ∀ n, (P16775539991419171390.a n : ℤ) = A322325 n

end A322325

/-! ## A322325.P3749599737978077283

`or(A000007(n), A322329(A000217(n)))`
-/

namespace A322325.P3749599737978077283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A322329 (A000217 n).toNat)

end

end A322325.P3749599737978077283

namespace A322325

/-- `or(A000007(n), A322329(A000217(n)))` -/
def P3749599737978077283.Spec : Prop :=
  ∀ n, P3749599737978077283.a n = A322325 n

end A322325

/-! ## A322325.P12614256735170233175

`A322329(A000217(n))+A182492(2*(n+2))`
-/

namespace A322325.P12614256735170233175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322329 (A000217 n).toNat + A182492 (2 * (n + 2))

end

end A322325.P12614256735170233175

namespace A322325

/-- `A322329(A000217(n))+A182492(2*(n+2))` -/
def P12614256735170233175.Spec : Prop :=
  ∀ n, P12614256735170233175.a n = A322325 n

end A322325

/-! ## A322325.P11267274723463260036

`A057427(2*n+3)*A322329(A000217(n))`
-/

namespace A322325.P11267274723463260036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * n + 3) * A322329 (A000217 n).toNat

end

end A322325.P11267274723463260036

namespace A322325

/-- `A057427(2*n+3)*A322329(A000217(n))` -/
def P11267274723463260036.Spec : Prop :=
  ∀ n, P11267274723463260036.a n = A322325 n

end A322325

/-! ## A322325.P3774831328659848590

`gcd(n, A000188(n+1))*A322329(A000217(n))`
-/

namespace A322325.P3774831328659848590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A000188 (n + 1)) : ℤ) * A322329 (A000217 n).toNat

end

end A322325.P3774831328659848590

namespace A322325

/-- `gcd(n, A000188(n+1))*A322329(A000217(n))` -/
def P3774831328659848590.Spec : Prop :=
  ∀ n, P3774831328659848590.a n = A322325 n

end A322325

/-! ## A322325.P17143051770645703737

`A256263(A001316(n))*A322329(A000217(n))`
-/

namespace A322325.P17143051770645703737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256263 (A001316 n).toNat * A322329 (A000217 n).toNat

end

end A322325.P17143051770645703737

namespace A322325

/-- `A256263(A001316(n))*A322329(A000217(n))` -/
def P17143051770645703737.Spec : Prop :=
  ∀ n, P17143051770645703737.a n = A322325 n

end A322325

/-! ## A322325.P757513643307173856

`A014963(A139249(n+1))*A322329(A000217(n))`
-/

namespace A322325.P757513643307173856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A139249 (n + 1)).toNat * A322329 (A000217 n).toNat

end

end A322325.P757513643307173856

namespace A322325

/-- `A014963(A139249(n+1))*A322329(A000217(n))` -/
def P757513643307173856.Spec : Prop :=
  ∀ n, P757513643307173856.a n = A322325 n

end A322325

/-!
# A322327: a(n) = A005361(n) * A034444(n).

The programs for A322327, the canonical program `A322327.P7023019064319529347` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322327 has offset 1).

The definition of A322327 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A322327.P7023019064319529347

`A005361(n+1)*A034444(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A322327

/-- `A005361(n+1)*A034444(n+1)` -/
def P7023019064319529347.Spec : Prop :=
  ∀ n, P7023019064319529347.a n = A322327 (n + 1)

theorem P7023019064319529347.correct : P7023019064319529347.Spec := by
  intro n
  simp only [A322327, Nat.add_sub_cancel]

end A322327

/-! ## A322327.P13055251721603658464

`∏{e}[n+1, 2*#]`
-/

namespace A322327.P13055251721603658464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 2 * Nat.factorization (f1 n) p

end

end A322327.P13055251721603658464

namespace A322327

/-- `∏{e}[n+1, 2*#]` -/
def P13055251721603658464.Spec : Prop :=
  ∀ n, (P13055251721603658464.a n : ℤ) = A322327 (n + 1)

end A322327

/-! ## A322327.P17650313707512469310

`∏{p}[n+1, val((n+1)², #)]`
-/

namespace A322327.P17650313707512469310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation ((n + 1) ^ 2) p

end

end A322327.P17650313707512469310

namespace A322327

/-- `∏{p}[n+1, val((n+1)², #)]` -/
def P17650313707512469310.Spec : Prop :=
  ∀ n, (P17650313707512469310.a n : ℤ) = A322327 (n + 1)

end A322327

/-! ## A322327.P187886051979193358

`∏{p}[n+1, 2*val(n+1, #)]`
-/

namespace A322327.P187886051979193358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 2 * SequenceMachineLib.valuation (n + 1) p

end

end A322327.P187886051979193358

namespace A322327

/-- `∏{p}[n+1, 2*val(n+1, #)]` -/
def P187886051979193358.Spec : Prop :=
  ∀ n, (P187886051979193358.a n : ℤ) = A322327 (n + 1)

end A322327

/-! ## A322327.P1955502297286642801

`∑{d}[n+1, A323308(#)]`
-/

namespace A322327.P1955502297286642801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323308 d

end

end A322327.P1955502297286642801

namespace A322327

/-- `∑{d}[n+1, A323308(#)]` -/
def P1955502297286642801.Spec : Prop :=
  ∀ n, P1955502297286642801.a n = A322327 (n + 1)

end A322327

/-! ## A322327.P4451335316100649662

`A158522(n+1)*A303915(n+1)`
-/

namespace A322327.P4451335316100649662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158522 (n + 1) * A303915 (n + 1)

end

end A322327.P4451335316100649662

namespace A322327

/-- `A158522(n+1)*A303915(n+1)` -/
def P4451335316100649662.Spec : Prop :=
  ∀ n, P4451335316100649662.a n = A322327 (n + 1)

end A322327

/-! ## A322327.P5143738812030435978

`A323308(n+1)*A366763(n+1)`
-/

namespace A322327.P5143738812030435978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323308 (n + 1) * A366763 (n + 1)

end

end A322327.P5143738812030435978

namespace A322327

/-- `A323308(n+1)*A366763(n+1)` -/
def P5143738812030435978.Spec : Prop :=
  ∀ n, P5143738812030435978.a n = A322327 (n + 1)

end A322327

/-! ## A322327.P15845441386138235220

`A247513(n+1)/A074816(n+1)`
-/

namespace A322327.P15845441386138235220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247513 (n + 1) : ℚ) / (A074816 (n + 1) : ℚ)

end

end A322327.P15845441386138235220

namespace A322327

/-- `A247513(n+1)/A074816(n+1)` -/
def P15845441386138235220.Spec : Prop :=
  ∀ n, P15845441386138235220.a n = (A322327 (n + 1) : ℚ)

end A322327

/-! ## A322327.P7826814902458751945

`A322328(n+1)/A034444(n+1)`
-/

namespace A322327.P7826814902458751945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322328 (n + 1) : ℚ) / (A034444 (n + 1) : ℚ)

end

end A322327.P7826814902458751945

namespace A322327

/-- `A322328(n+1)/A034444(n+1)` -/
def P7826814902458751945.Spec : Prop :=
  ∀ n, P7826814902458751945.a n = (A322327 (n + 1) : ℚ)

end A322327

/-! ## A322327.P3362479767220895541

`gcd(A247513(n+1), A322328(n+1))`
-/

namespace A322327.P3362479767220895541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A247513 (n + 1)) (A322328 (n + 1))

end

end A322327.P3362479767220895541

namespace A322327

/-- `gcd(A247513(n+1), A322328(n+1))` -/
def P3362479767220895541.Spec : Prop :=
  ∀ n, (P3362479767220895541.a n : ℤ) = A322327 (n + 1)

end A322327

/-! ## A322327.P3169685825573536870

`(A183094(n+1)+1)*A034444(n+1)`
-/

namespace A322327.P3169685825573536870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A183094 (n + 1) + 1) * A034444 (n + 1)

end

end A322327.P3169685825573536870

namespace A322327

/-- `(A183094(n+1)+1)*A034444(n+1)` -/
def P3169685825573536870.Spec : Prop :=
  ∀ n, P3169685825573536870.a n = A322327 (n + 1)

end A322327

/-! ## A322327.P14345277941067694153

`(A309307(n+1)+1)*A005361(n+1)`
-/

namespace A322327.P14345277941067694153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A309307 (n + 1) + 1) * A005361 (n + 1)

end

end A322327.P14345277941067694153

namespace A322327

/-- `(A309307(n+1)+1)*A005361(n+1)` -/
def P14345277941067694153.Spec : Prop :=
  ∀ n, P14345277941067694153.a n = A322327 (n + 1)

end A322327

/-! ## A322327.P10054980453793861361

`∑{d}[n+1, A000005(#)*A227291((n+1)/#)]`
-/

namespace A322327.P10054980453793861361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A227291 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322327.P10054980453793861361

namespace A322327

/-- `∑{d}[n+1, A000005(#)*A227291((n+1)/#)]` -/
def P10054980453793861361.Spec : Prop :=
  ∀ n, P10054980453793861361.a n = A322327 (n + 1)

end A322327

/-! ## A322327.P4340786858147627304

`∑{d}[n+1, A046951(#)*A307430((n+1)/#)]`
-/

namespace A322327.P4340786858147627304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A307430 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322327.P4340786858147627304

namespace A322327

/-- `∑{d}[n+1, A046951(#)*A307430((n+1)/#)]` -/
def P4340786858147627304.Spec : Prop :=
  ∀ n, P4340786858147627304.a n = A322327 (n + 1)

end A322327

/-! ## A322327.P8624472409151101635

`∑{d}[n+1, A007425(#)*A363552((n+1)/#)]`
-/

namespace A322327.P8624472409151101635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A363552 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322327.P8624472409151101635

namespace A322327

/-- `∑{d}[n+1, A007425(#)*A363552((n+1)/#)]` -/
def P8624472409151101635.Spec : Prop :=
  ∀ n, P8624472409151101635.a n = A322327 (n + 1)

end A322327

/-! ## A322327.P9826074706376075758

`∑{d}[n+1, A008966(#)*A365331((n+1)/#)]`
-/

namespace A322327.P9826074706376075758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A365331 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322327.P9826074706376075758

namespace A322327

/-- `∑{d}[n+1, A008966(#)*A365331((n+1)/#)]` -/
def P9826074706376075758.Spec : Prop :=
  ∀ n, P9826074706376075758.a n = A322327 (n + 1)

end A322327

/-! ## A322327.P6803884304814057354

`∑{d}[n+1, A008683(#)*A370296((n+1)/#)]`
-/

namespace A322327.P6803884304814057354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A370296 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322327.P6803884304814057354

namespace A322327

/-- `∑{d}[n+1, A008683(#)*A370296((n+1)/#)]` -/
def P6803884304814057354.Spec : Prop :=
  ∀ n, P6803884304814057354.a n = A322327 (n + 1)

end A322327

/-! ## A322327.P9142156914438323381

`∑{d}[n+1, A005361(#)*A387298((n+1)/#)]`
-/

namespace A322327.P9142156914438323381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A005361 d * A387298 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322327.P9142156914438323381

namespace A322327

/-- `∑{d}[n+1, A005361(#)*A387298((n+1)/#)]` -/
def P9142156914438323381.Spec : Prop :=
  ∀ n, P9142156914438323381.a n = A322327 (n + 1)

end A322327

/-! ## A322327.P11242160106528293872

`∑{d}[n+1, A073184(#)*A355448((n+1)/#)]`
-/

namespace A322327.P11242160106528293872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A073184 d * A355448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322327.P11242160106528293872

namespace A322327

/-- `∑{d}[n+1, A073184(#)*A355448((n+1)/#)]` -/
def P11242160106528293872.Spec : Prop :=
  ∀ n, P11242160106528293872.a n = A322327 (n + 1)

end A322327

/-! ## A322327.P6284349226104717709

`∑{d}[n+1, A158522(#)*A286779((n+1)/#)]`
-/

namespace A322327.P6284349226104717709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A286779 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322327.P6284349226104717709

namespace A322327

/-- `∑{d}[n+1, A158522(#)*A286779((n+1)/#)]` -/
def P6284349226104717709.Spec : Prop :=
  ∀ n, P6284349226104717709.a n = A322327 (n + 1)

end A322327

/-!
# A322328: a(n) = A005361(n) * 4^A001221(n) for n > 0.

The programs for A322328, the canonical program `A322328.P406640115135084941` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322328 has offset 1).

The definition of A322328 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A005361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A322328.P406640115135084941

`A005361(n+1)*4^A001221(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A322328

/-- `A005361(n+1)*4^A001221(n+1)` -/
def P406640115135084941.Spec : Prop :=
  ∀ n, P406640115135084941.a n = (A322328 (n + 1) : ℚ)

end A322328

/-! ## A322328.P7043866215987415730

`∏{e}[n+1, 4*#]`
-/

namespace A322328.P7043866215987415730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 4 * Nat.factorization (f1 n) p

end

end A322328.P7043866215987415730

namespace A322328

/-- `∏{e}[n+1, 4*#]` -/
def P7043866215987415730.Spec : Prop :=
  ∀ n, (P7043866215987415730.a n : ℤ) = A322328 (n + 1)

end A322328

/-! ## A322328.P11325970036684180598

`2^∑{e}[n+1, log2(#)+2]`
-/

namespace A322328.P11325970036684180598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), (Real.logb 2 (Nat.factorization (f1 n) p : ℝ) + 2))

end

end A322328.P11325970036684180598

namespace A322328

/-- `2^∑{e}[n+1, log2(#)+2]` -/
def P11325970036684180598.Spec : Prop :=
  ∀ n, P11325970036684180598.a n = (A322328 (n + 1) : ℝ)

end A322328

/-! ## A322328.P16228675820392932112

`∏{p}[n+1, 4*val(n+1, #)]`
-/

namespace A322328.P16228675820392932112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 4 * SequenceMachineLib.valuation (n + 1) p

end

end A322328.P16228675820392932112

namespace A322328

/-- `∏{p}[n+1, 4*val(n+1, #)]` -/
def P16228675820392932112.Spec : Prop :=
  ∀ n, (P16228675820392932112.a n : ℤ) = A322328 (n + 1)

end A322328

/-! ## A322328.P14766860732384693596

`∏{p}[n+1, val((n+1)^4, #)]`
-/

namespace A322328.P14766860732384693596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation ((n + 1) ^ 4) p

end

end A322328.P14766860732384693596

namespace A322328

/-- `∏{p}[n+1, val((n+1)^4, #)]` -/
def P14766860732384693596.Spec : Prop :=
  ∀ n, (P14766860732384693596.a n : ℤ) = A322328 (n + 1)

end A322328

/-! ## A322328.P4555043080175452967

`A034444(n+1)*A322327(n+1)`
-/

namespace A322328.P4555043080175452967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A322327 (n + 1)

end

end A322328.P4555043080175452967

namespace A322328

/-- `A034444(n+1)*A322327(n+1)` -/
def P4555043080175452967.Spec : Prop :=
  ∀ n, P4555043080175452967.a n = A322328 (n + 1)

end A322328

/-! ## A322328.P14953053333420321348

`A034444(n+1)²*A005361(n+1)`
-/

namespace A322328.P14953053333420321348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) ^ 2 * A005361 (n + 1)

end

end A322328.P14953053333420321348

namespace A322328

/-- `A034444(n+1)²*A005361(n+1)` -/
def P14953053333420321348.Spec : Prop :=
  ∀ n, P14953053333420321348.a n = A322328 (n + 1)

end A322328

/-! ## A322328.P14305344804875450249

`A322327(n+1)²/A005361(n+1)`
-/

namespace A322328.P14305344804875450249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322327 (n + 1) ^ 2 : ℚ) / (A005361 (n + 1) : ℚ)

end

end A322328.P14305344804875450249

namespace A322328

/-- `A322327(n+1)²/A005361(n+1)` -/
def P14305344804875450249.Spec : Prop :=
  ∀ n, P14305344804875450249.a n = (A322328 (n + 1) : ℚ)

end A322328

/-! ## A322328.P11868716768683217801

`(A183094(n+1)+1)*A034444(n+1)²`
-/

namespace A322328.P11868716768683217801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A183094 (n + 1) + 1) * A034444 (n + 1) ^ 2

end

end A322328.P11868716768683217801

namespace A322328

/-- `(A183094(n+1)+1)*A034444(n+1)²` -/
def P11868716768683217801.Spec : Prop :=
  ∀ n, P11868716768683217801.a n = A322328 (n + 1)

end A322328

/-! ## A322328.P2395770267498985818

`(A309307(n+1)+1)²*A005361(n+1)`
-/

namespace A322328.P2395770267498985818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A309307 (n + 1) + 1) ^ 2 * A005361 (n + 1)

end

end A322328.P2395770267498985818

namespace A322328

/-- `(A309307(n+1)+1)²*A005361(n+1)` -/
def P2395770267498985818.Spec : Prop :=
  ∀ n, P2395770267498985818.a n = A322328 (n + 1)

end A322328

/-! ## A322328.P14115727763865481266

`∑{d}[n+1, A008966(#)*A048691((n+1)/#)]`
-/

namespace A322328.P14115727763865481266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A048691 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322328.P14115727763865481266

namespace A322328

/-- `∑{d}[n+1, A008966(#)*A048691((n+1)/#)]` -/
def P14115727763865481266.Spec : Prop :=
  ∀ n, P14115727763865481266.a n = A322328 (n + 1)

end A322328

/-! ## A322328.P7796723984864658694

`∑{d}[n+1, A034444(#)*A034444((n+1)/#)]`
-/

namespace A322328.P7796723984864658694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A034444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322328.P7796723984864658694

namespace A322328

/-- `∑{d}[n+1, A034444(#)*A034444((n+1)/#)]` -/
def P7796723984864658694.Spec : Prop :=
  ∀ n, P7796723984864658694.a n = A322328 (n + 1)

end A322328

/-! ## A322328.P6922234395134087795

`∑{d}[n+1, A035116(#)*A271102((n+1)/#)]`
-/

namespace A322328.P6922234395134087795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035116 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322328.P6922234395134087795

namespace A322328

/-- `∑{d}[n+1, A035116(#)*A271102((n+1)/#)]` -/
def P6922234395134087795.Spec : Prop :=
  ∀ n, P6922234395134087795.a n = A322328 (n + 1)

end A322328

/-! ## A322328.P8650900437807058011

`∑{d}[n+1, A001616(#)*A344326((n+1)/#)]`
-/

namespace A322328.P8650900437807058011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001616 d * A344326 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322328.P8650900437807058011

namespace A322328

/-- `∑{d}[n+1, A001616(#)*A344326((n+1)/#)]` -/
def P8650900437807058011.Spec : Prop :=
  ∀ n, P8650900437807058011.a n = A322328 (n + 1)

end A322328

/-! ## A322328.P14491341436396339980

`∑{d}[n+1, A062367(#)*A307445((n+1)/#)]`
-/

namespace A322328.P14491341436396339980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062367 d * A307445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322328.P14491341436396339980

namespace A322328

/-- `∑{d}[n+1, A062367(#)*A307445((n+1)/#)]` -/
def P14491341436396339980.Spec : Prop :=
  ∀ n, P14491341436396339980.a n = A322328 (n + 1)

end A322328

/-! ## A322328.P15703418255735134094

`∑{d}[n+1, A068068(#)*A304182((n+1)/#)]`
-/

namespace A322328.P15703418255735134094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068068 d * A304182 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322328.P15703418255735134094

namespace A322328

/-- `∑{d}[n+1, A068068(#)*A304182((n+1)/#)]` -/
def P15703418255735134094.Spec : Prop :=
  ∀ n, P15703418255735134094.a n = A322328 (n + 1)

end A322328

/-! ## A322328.P12185735811131355931

`∑{d}[n+1, A008683(#)*A370297((n+1)/#)]`
-/

namespace A322328.P12185735811131355931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A370297 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322328.P12185735811131355931

namespace A322328

/-- `∑{d}[n+1, A008683(#)*A370297((n+1)/#)]` -/
def P12185735811131355931.Spec : Prop :=
  ∀ n, P12185735811131355931.a n = A322328 (n + 1)

end A322328

/-! ## A322328.P6087629732198160086

`∑{d}[n+1, A060724(#)*A328729((n+1)/#)]`
-/

namespace A322328.P6087629732198160086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060724 d * A328729 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322328.P6087629732198160086

namespace A322328

/-- `∑{d}[n+1, A060724(#)*A328729((n+1)/#)]` -/
def P6087629732198160086.Spec : Prop :=
  ∀ n, P6087629732198160086.a n = A322328 (n + 1)

end A322328

/-! ## A322328.P6996701631891298430

`∑{d}[n+1, A023900(#)*A390317((n+1)/#)]`
-/

namespace A322328.P6996701631891298430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A390317 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322328.P6996701631891298430

namespace A322328

/-- `∑{d}[n+1, A023900(#)*A390317((n+1)/#)]` -/
def P6996701631891298430.Spec : Prop :=
  ∀ n, P6996701631891298430.a n = A322328 (n + 1)

end A322328

/-! ## A322328.P14029890594577397874

`∑{d}[n+1, A073184(#)*A387960((n+1)/#)]`
-/

namespace A322328.P14029890594577397874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A073184 d * A387960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322328.P14029890594577397874

namespace A322328

/-- `∑{d}[n+1, A073184(#)*A387960((n+1)/#)]` -/
def P14029890594577397874.Spec : Prop :=
  ∀ n, P14029890594577397874.a n = A322328 (n + 1)

end A322328

/-!
# A322329: Triangle read by rows: T(n,k) is the number of nondecreasing Motzkin prefixes (i.e., left factors of nondecreasing Motzkin paths) of length n and final height k (0 <= k <= n).

The programs for A322329, there is no canonical definition to state claims against.
-/

/-! ## A322329.P3800605486415229172

`A064189(n)-A178798(A105632(n))`
-/

namespace A322329.P3800605486415229172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 n - A178798 (A105632 n).toNat

end

end A322329.P3800605486415229172

/-! ## A322329.P13073811613715826918

`A339067(n+1)+A185238(A216914(n+1))`
-/

namespace A322329.P13073811613715826918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (n + 1) + A185238 (A216914 (n + 1)).toNat

end

end A322329.P13073811613715826918

/-! ## A322329.P12040225166708844467

`A064189(n)-A002262(A051699(A060546(n)))`
-/

namespace A322329.P12040225166708844467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 n - A002262 (A051699 (A060546 n).toNat).toNat

end

end A322329.P12040225166708844467

/-! ## A322329.P17234890155972956019

`A089868(A339067(n+1)+1)-1`
-/

namespace A322329.P17234890155972956019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (A339067 (n + 1) + 1).toNat - 1

end

end A322329.P17234890155972956019

/-!
# A322330: Number of 3-colored connected graphs on n labeled nodes up to permutation of the colors.

The programs for A322330, there is no canonical definition to state claims against.
-/

/-! ## A322330.P12208638569517008346

`A322278(∑[n+2]+4)`
-/

namespace A322330.P12208638569517008346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322278 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A322330.P12208638569517008346

/-! ## A322330.P8651302050885917327

`lcm(2, A322278(A167614(n+1)))`
-/

namespace A322330.P8651302050885917327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A322278 (A167614 (n + 1)).toNat)

end

end A322330.P8651302050885917327

/-! ## A322330.P8058685390337257573

`abs(A033999(n)*A322278(A055998(n)+6))`
-/

namespace A322330.P8058685390337257573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A322278 (A055998 n + 6).toNat|

end

end A322330.P8058685390337257573

/-! ## A322330.P921834105763581034

`A322278(A167614(n+1))%A322278(A052905(n)+9)`
-/

namespace A322330.P921834105763581034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322278 (A167614 (n + 1)).toNat) (A322278 (A052905 n + 9).toNat)

end

end A322330.P921834105763581034

/-! ## A322330.P895608670961030268

`A322278(A167614(n+1))%A139160(n+3)`
-/

namespace A322330.P895608670961030268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322278 (A167614 (n + 1)).toNat) (A139160 (n + 3))

end

end A322330.P895608670961030268

/-!
# A322331: Number of 4-colored connected graphs on n labeled nodes up to permutation of the colors.

The programs for A322331, there is no canonical definition to state claims against.
-/

/-! ## A322331.P14415830835655274552

`A322278(A141214(n)+7)`
-/

namespace A322331.P14415830835655274552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322278 (A141214 n + 7).toNat

end

end A322331.P14415830835655274552

/-! ## A322331.P2659378519128192982

`A322278(A052905(n)+9)`
-/

namespace A322331.P2659378519128192982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322278 (A052905 n + 9).toNat

end

end A322331.P2659378519128192982

/-! ## A322331.P13027775425106607109

`A322278(A055999(n)+10)`
-/

namespace A322331.P13027775425106607109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322278 (A055999 n + 10).toNat

end

end A322331.P13027775425106607109

/-! ## A322331.P7070442448605479128

`A322278(A167614(n+2)+1)`
-/

namespace A322331.P7070442448605479128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322278 (A167614 (n + 2) + 1).toNat

end

end A322331.P7070442448605479128

/-! ## A322331.P3193109967601836686

`A322278(A046691(n+3)-(2*n+1))`
-/

namespace A322331.P3193109967601836686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322278 (A046691 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A322331.P3193109967601836686

/-!
# A322332: 'Geobonnaci' sequence: a(1)=a(2)=1, thereafter a(n) = round( 2 * sqrt(a(n-1) * a(n-2)) ).

The programs for A322332, the canonical program `A322332.P13833702841373991310` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322332 has offset 1).

The definition of A322332 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(2*sqrt(a(n-1)*a(n-2)))` (program `A322332.P13833702841373991310`, by `A322332.P13833702841373991310.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A322332.P13833702841373991310

`round(2*sqrt(a(n-1)*a(n-2)))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A322332

/-- `round(2*sqrt(a(n-1)*a(n-2)))` -/
def P13833702841373991310.Spec : Prop :=
  ∀ n, P13833702841373991310.a n = A322332 (n + 1)

theorem P13833702841373991310.correct : P13833702841373991310.Spec := by
  intro n
  simp only [A322332, Nat.add_sub_cancel]

end A322332

/-! ## A322332.P4152157434786208701

`A225394(n)-A098852(A000009(n))`
-/

namespace A322332.P4152157434786208701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225394 n - A098852 (A000009 n).toNat

end

end A322332.P4152157434786208701

namespace A322332

/-- `A225394(n)-A098852(A000009(n))` -/
def P4152157434786208701.Spec : Prop :=
  ∀ n, P4152157434786208701.a n = A322332 (n + 1)

end A322332

/-! ## A322332.P16402193138301673153

`A225394(n)-A353639(A001519(n+1))`
-/

namespace A322332.P16402193138301673153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225394 n - A353639 (A001519 (n + 1)).toNat

end

end A322332.P16402193138301673153

namespace A322332

/-- `A225394(n)-A353639(A001519(n+1))` -/
def P16402193138301673153.Spec : Prop :=
  ∀ n, P16402193138301673153.a n = A322332 (n + 1)

end A322332

/-! ## A322332.P8073525269407712920

`A225394(n)-A010054(A213249(n+2))`
-/

namespace A322332.P8073525269407712920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225394 n - A010054 (A213249 (n + 2)).toNat

end

end A322332.P8073525269407712920

namespace A322332

/-- `A225394(n)-A010054(A213249(n+2))` -/
def P8073525269407712920.Spec : Prop :=
  ∀ n, P8073525269407712920.a n = A322332 (n + 1)

end A322332

/-!
# A322335: Number of 2-edge-connected integer partitions of n.

The programs for A322335, there is no canonical definition to state claims against.
-/

/-! ## A322335.P3900116399444980061

`A218970(n+1)-A322391(n+1)`
-/

namespace A322335.P3900116399444980061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218970 (n + 1) - A322391 (n + 1)

end

end A322335.P3900116399444980061

/-! ## A322335.P4296594773279125165

`A108572(n+1)+A025466(A003116(n))`
-/

namespace A322335.P4296594773279125165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108572 (n + 1) + A025466 (A003116 n).toNat

end

end A322335.P4296594773279125165

/-! ## A322335.P11760069506978153453

`A108572(n+1)+A025466(A218543(n))`
-/

namespace A322335.P11760069506978153453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108572 (n + 1) + A025466 (A218543 n).toNat

end

end A322335.P11760069506978153453

/-! ## A322335.P6784597615669228151

`A108572(n+1)+A025466(A238389(n+2))`
-/

namespace A322335.P6784597615669228151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108572 (n + 1) + A025466 (A238389 (n + 2)).toNat

end

end A322335.P6784597615669228151

/-! ## A322335.P8501398523830362037

`A010054(A000032(n+2))+A018783(n+1)-1`
-/

namespace A322335.P8501398523830362037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A000032 (n + 2)).toNat + (A018783 (n + 1) - 1)

end

end A322335.P8501398523830362037

/-!
# A322336: Heinz numbers of 2-edge-connected integer partitions.

The programs for A322336, there is no canonical definition to state claims against.
-/

/-! ## A322336.P16325372451333260725

`record[A327656(A005381(n+1))]`
-/

namespace A322336.P16325372451333260725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (A005381 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322336.P16325372451333260725

/-! ## A322336.P5849312525992139771

`record[A327656(A039769(n+1))]`
-/

namespace A322336.P5849312525992139771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (A039769 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322336.P5849312525992139771

/-! ## A322336.P16013997240156993975

`record[A327656(A071904(n+1))]`
-/

namespace A322336.P16013997240156993975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (A071904 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322336.P16013997240156993975

/-! ## A322336.P11243338394660762511

`record[A327656(A105441(n+1))]`
-/

namespace A322336.P11243338394660762511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (A105441 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322336.P11243338394660762511

/-! ## A322336.P4840974885881158529

`record[A327656(A056653(n+4))]`
-/

namespace A322336.P4840974885881158529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (A056653 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322336.P4840974885881158529

/-! ## A322336.P2805968944953786684

`record[A327656(A018252(n+5))]`
-/

namespace A322336.P2805968944953786684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (A018252 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322336.P2805968944953786684

/-! ## A322336.P17158996155760475557

`filter[A328336(n+1), A066247(#)]`
-/

namespace A322336.P17158996155760475557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A322336.P17158996155760475557

/-! ## A322336.P8699061844114606137

`filter[A328336(n+1), A202238(#)]`
-/

namespace A322336.P8699061844114606137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A322336.P8699061844114606137

/-!
# A322337: Number of strict 2-edge-connected integer partitions of n.

The programs for A322337, there is no canonical definition to state claims against.
-/

/-! ## A322337.P10510034301463621760

`A304714(n+1)-A322401(n+1)`
-/

namespace A322337.P10510034301463621760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304714 (n + 1) - A322401 (n + 1)

end

end A322337.P10510034301463621760

/-! ## A322337.P12859331483793776342

`(A303280(n+1)-1)%A187001(n)`
-/

namespace A322337.P12859331483793776342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303280 (n + 1) - 1) (A187001 n)

end

end A322337.P12859331483793776342

/-! ## A322337.P2528138711178546609

`abs((1-A303280(n+1))%A339174(n+1))`
-/

namespace A322337.P2528138711178546609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (1 - A303280 (n + 1)) (A339174 (n + 1))|

end

end A322337.P2528138711178546609

/-! ## A322337.P18138931574406545740

`A303280(n+1)+A057428(A000578(n))`
-/

namespace A322337.P18138931574406545740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303280 (n + 1) + A057428 (A000578 n).toNat

end

end A322337.P18138931574406545740

/-! ## A322337.P5619753602774295902

`A303280(n+1)-A001221(A211890(n))`
-/

namespace A322337.P5619753602774295902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303280 (n + 1) - A001221 (A211890 n).toNat

end

end A322337.P5619753602774295902

/-!
# A322338: Edge-connectivity of the integer partition with Heinz number n.

The programs for A322338, there is no canonical definition to state claims against.
-/

/-! ## A322338.P16128224717471643061

`C(∑{e}[n+1, #], A305079(n+1)^∑{e}[n+1, #])`
-/

namespace A322338.P16128224717471643061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) (A305079 (n + 1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

end

end A322338.P16128224717471643061

/-! ## A322338.P13352932615724578148

`round(A317531(n+1)/A327512(n+1))`
-/

namespace A322338.P13352932615724578148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A317531 (n + 1) : ℚ) / (A327512 (n + 1) : ℚ))

end

end A322338.P13352932615724578148

/-! ## A322338.P1583918678072166266

`round(A317531(n+1)/A327529(n+1))`
-/

namespace A322338.P1583918678072166266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A317531 (n + 1) : ℚ) / (A327529 (n + 1) : ℚ))

end

end A322338.P1583918678072166266

/-! ## A322338.P1204140653646468177

`round(A327407(n+1)/A327529(n+1))`
-/

namespace A322338.P1204140653646468177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A327407 (n + 1) : ℚ) / (A327529 (n + 1) : ℚ))

end

end A322338.P1204140653646468177

/-! ## A322338.P7310326150074466798

`round(A327538(n+1)/A327512(n+1))`
-/

namespace A322338.P7310326150074466798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A327538 (n + 1) : ℚ) / (A327512 (n + 1) : ℚ))

end

end A322338.P7310326150074466798

/-! ## A322338.P6229653114621383244

`round(A327538(n+1)/A327529(n+1))`
-/

namespace A322338.P6229653114621383244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A327538 (n + 1) : ℚ) / (A327529 (n + 1) : ℚ))

end

end A322338.P6229653114621383244

/-! ## A322338.P7413001180482238883

`A001222(n+1)*A033683(A305079(n+1))`
-/

namespace A322338.P7413001180482238883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) * A033683 (A305079 (n + 1)).toNat

end

end A322338.P7413001180482238883

/-! ## A322338.P11089106601231484232

`val(A061142(n+1), A007918(A327512(n+1)))`
-/

namespace A322338.P11089106601231484232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A061142 (n + 1)).toNat (A007918 (A327512 (n + 1)).toNat).toNat

end

end A322338.P11089106601231484232

/-! ## A322338.P17351716050364873381

`val(A124508(n+1), A000040(A327529(n+1)))`
-/

namespace A322338.P17351716050364873381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A124508 (n + 1)).toNat (A000040 (A327529 (n + 1)).toNat).toNat

end

end A322338.P17351716050364873381

/-! ## A322338.P7918109374279713517

`C(A001222(n+1), A000045(A327529(n+1)))`
-/

namespace A322338.P7918109374279713517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (n + 1)).toNat (A000045 (A327529 (n + 1)).toNat).toNat

end

end A322338.P7918109374279713517

/-!
# A322339: Smallest automorphism group size for a binary self-dual code of length 2n.

The programs for A322339, there is no canonical definition to state claims against.
-/

/-! ## A322339.P9013997482024071704

`A000010(∏[dr(n^n)+3])`
-/

namespace A322339.P9013997482024071704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n ^ n : ℤ) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A322339.P9013997482024071704

/-!
# A322340: Number of compositions (ordered partitions) of n into square pyramidal numbers (A000330).

The programs for A322340, there is no canonical definition to state claims against.
-/

/-! ## A322340.P52655614725804077

`A351846(or(A286108(n), A374679(n)))`
-/

namespace A322340.P52655614725804077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351846 (Int.lor (A286108 n) (A374679 n)).toNat

end

end A322340.P52655614725804077

/-! ## A322340.P16047388202240788412

`A003520(n)+A001222(∏[A147016(n+1)])`
-/

namespace A322340.P16047388202240788412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 n + A001222 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A322340.P16047388202240788412

/-! ## A322340.P16670087626431070878

`A373811(A079963(n))`
-/

namespace A322340.P16670087626431070878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373811 (A079963 n).toNat

end

end A322340.P16670087626431070878

/-!
# A322342: Expansion of e.g.f. 1/(1 - log(1 + x)/(1 - log(1 + x)^2/(1 - log(1 + x)^3/(1 - ...)))), a continued fraction.

The programs for A322342, there is no canonical definition to state claims against.
-/

/-! ## A322342.P4385066970422482882

`A349782(A337665(n))+A005445(n)`
-/

namespace A322342.P4385066970422482882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349782 (A337665 n).toNat + A005445 n

end

end A322342.P4385066970422482882

/-! ## A322342.P2550279008232987837

`A320166(A241770(n+3)*A275734(n))`
-/

namespace A322342.P2550279008232987837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320166 (A241770 (n + 3) * A275734 n).toNat

end

end A322342.P2550279008232987837

/-!
# A322343: Number of equivalence classes of convex lattice polygons of genus n.

The programs for A322343, there is no canonical definition to state claims against.
-/

/-! ## A322343.P17883408307493939695

`A265134(A000711(n))-A169780(n)`
-/

namespace A322343.P17883408307493939695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265134 (A000711 n).toNat - A169780 n

end

end A322343.P17883408307493939695

/-!
# A322344: Number of equivalence classes of convex lattice polygons of genus n, restricting the count to those polygons that are interior to another polygon.

The programs for A322344, there is no canonical definition to state claims against.
-/

/-! ## A322344.P7437272208123064192

`A214493(n)-A269526(A145089(n))`
-/

namespace A322344.P7437272208123064192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214493 n - A269526 (A145089 n).toNat

end

end A322344.P7437272208123064192

/-!
# A322345: Maximal number of vertices of a convex lattice polygon containing n lattice points in its interior.

The programs for A322345, there is no canonical definition to state claims against.
-/

/-! ## A322345.P13971325427181138627

`A298562(n)%A185980(3*n+1)`
-/

namespace A322345.P13971325427181138627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298562 n) (A185980 (3 * n + 1))

end

end A322345.P13971325427181138627

/-! ## A322345.P4821919959486844437

`A298562(n)+A000007(A000712(n))`
-/

namespace A322345.P4821919959486844437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298562 n + A000007 (A000712 n).toNat

end

end A322345.P4821919959486844437

/-! ## A322345.P2258443039946706269

`A298562(n)+A000038(A001037(n))`
-/

namespace A322345.P2258443039946706269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298562 n + A000038 (A001037 n).toNat

end

end A322345.P2258443039946706269

/-! ## A322345.P11150148626051291666

`A298755(n)+A000038(A001037(n))`
-/

namespace A322345.P11150148626051291666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298755 n + A000038 (A001037 n).toNat

end

end A322345.P11150148626051291666

/-! ## A322345.P7114497713461084360

`A298562(n)+A139600(A050534(n))`
-/

namespace A322345.P7114497713461084360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298562 n + A139600 (A050534 n).toNat

end

end A322345.P7114497713461084360

/-!
# A322346: Maximal number of vertices of a convex lattice polygon of genus n, restricted to those polygons that are interior to another polygon.

The programs for A322346, there is no canonical definition to state claims against.
-/

/-! ## A322346.P5405799379392325243

`A322345(lt[A094299(n), A007088(3*n)])`
-/

namespace A322346.P5405799379392325243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094299 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322345 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A322346.P5405799379392325243

/-! ## A322346.P1239952004833777258

`A322345(A242474(n+1))`
-/

namespace A322346.P1239952004833777258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322345 (A242474 (n + 1)).toNat

end

end A322346.P1239952004833777258

/-! ## A322346.P10376352995294408880

`A322345(A351374(n+1))`
-/

namespace A322346.P10376352995294408880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322345 (A351374 (n + 1)).toNat

end

end A322346.P10376352995294408880

/-! ## A322346.P2513119777201298204

`A322345(n+1)%A326623(3*n+5)`
-/

namespace A322346.P2513119777201298204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322345 (n + 1)) (A326623 (3 * n + 5))

end

end A322346.P2513119777201298204

/-! ## A322346.P6104248162613487149

`A322345(n+1)%A003368(A026007(n))`
-/

namespace A322346.P6104248162613487149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322345 (n + 1)) (A003368 (A026007 n).toNat)

end

end A322346.P6104248162613487149

/-!
# A322347: Minimal number of vertices of a convex lattice polygon of genus n, restricted to those polygons that are interior to another polygon.

The programs for A322347, there is no canonical definition to state claims against.
-/

/-! ## A322347.P5378571592656464579

`A267447(gcd(2^n, A032172(n+1)))`
-/

namespace A322347.P5378571592656464579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267447 (Int.gcd (2 ^ n : ℤ) (A032172 (n + 1)))

end

end A322347.P5378571592656464579

/-! ## A322347.P9622289856172506829

`4-A285305(A033576(n))`
-/

namespace A322347.P9622289856172506829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A285305 (A033576 n).toNat

end

end A322347.P9622289856172506829

/-! ## A322347.P10348087390928044491

`A333229(A022295(3*n+5)-1)`
-/

namespace A322347.P10348087390928044491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333229 (A022295 (3 * n + 5) - 1).toNat

end

end A322347.P10348087390928044491

/-! ## A322347.P11326889476124268443

`A010702(A000045(n%A248779(n+1)))`
-/

namespace A322347.P11326889476124268443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010702 (A000045 (Int.tmod (n : ℤ) (A248779 (n + 1))).toNat).toNat

end

end A322347.P11326889476124268443

/-! ## A322347.P17475115218868067985

`A023402(record[A340579(n+4)])`
-/

namespace A322347.P17475115218868067985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340579 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023402 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A322347.P17475115218868067985

/-!
# A322348: Maximal lattice width of a convex lattice polygon containing n lattice points in its interior ("of genus n").

The programs for A322348, there is no canonical definition to state claims against.
-/

/-! ## A322348.P3113552181393164875

`A054521(A342192(3*n+5))+A002024(n+1)`
-/

namespace A322348.P3113552181393164875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (A342192 (3 * n + 5)).toNat + A002024 (n + 1)

end

end A322348.P3113552181393164875

/-! ## A322348.P11980213069123191326

`A244220(A244214(n+1))+A002024(n+1)`
-/

namespace A322348.P11980213069123191326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244220 (A244214 (n + 1)).toNat + A002024 (n + 1)

end

end A322348.P11980213069123191326

/-! ## A322348.P3125092666449769362

`A116543(A074399(n+1)*A173241(n+4))`
-/

namespace A322348.P3125092666449769362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 (A074399 (n + 1) * A173241 (n + 4)).toNat

end

end A322348.P3125092666449769362

/-! ## A322348.P13006388855148027017

`A050252(A335770(2*(n+1))-A360457(n+1))`
-/

namespace A322348.P13006388855148027017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050252 (A335770 (2 * (n + 1)) - A360457 (n + 1)).toNat

end

end A322348.P13006388855148027017

/-! ## A322348.P10133772196841851239

`A294901(A025047(n)*A111206(n+1))`
-/

namespace A322348.P10133772196841851239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294901 (A025047 n * A111206 (n + 1)).toNat

end

end A322348.P10133772196841851239

/-!
# A322349: Maximal lattice width of a convex lattice polygon of genus n, restricted to those polygons that are interior to another polygon.

The programs for A322349, there is no canonical definition to state claims against.
-/

/-! ## A322349.P1892863238467161845

`A322348(n+1)-char[22]`
-/

namespace A322349.P1892863238467161845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322348 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A322349.P1892863238467161845

/-! ## A322349.P8179402658898436027

`abs(A076142(n+1)-A322348(n+1))`
-/

namespace A322349.P8179402658898436027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A076142 (n + 1) - A322348 (n + 1)|

end

end A322349.P8179402658898436027

/-! ## A322349.P15587802553786698368

`xor(A035322(2*n+1), A322348(n+1))`
-/

namespace A322349.P15587802553786698368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A035322 (2 * n + 1)) (A322348 (n + 1))

end

end A322349.P15587802553786698368

/-! ## A322349.P14802136211162099745

`abs(A322358(3*n+4)-A322348(n+1))`
-/

namespace A322349.P14802136211162099745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A322358 (3 * n + 4) - A322348 (n + 1)|

end

end A322349.P14802136211162099745

/-! ## A322349.P14078257155240910055

`lcm(A033999(n+1)², xor(A035322(A005408(n)), A322348(n+1)))`
-/

namespace A322349.P14078257155240910055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 (n + 1) ^ 2) (Int.xor (A035322 (A005408 n).toNat) (A322348 (n + 1)))

end

end A322349.P14078257155240910055

/-!
# A322351: a(n) = min(A003557(n), A173557(n)).

The programs for A322351, there is no canonical definition to state claims against.
-/

/-! ## A322351.P18367618891538833307

`A000010(n+1)/A322352(n+1)`
-/

namespace A322351.P18367618891538833307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A322352 (n + 1) : ℚ)

end

end A322351.P18367618891538833307

/-! ## A322351.P16940392384016859932

`Δ[A002088(n)]/A322352(n+1)`
-/

namespace A322351.P16940392384016859932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A322352 (n + 1) : ℚ)

end

end A322351.P16940392384016859932

/-! ## A322351.P678862977507528644

`(A109606(n+1)+1)/A322352(n+1)`
-/

namespace A322351.P678862977507528644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1 : ℚ) / (A322352 (n + 1) : ℚ)

end

end A322351.P678862977507528644

/-! ## A322351.P5095257933096079993

`(A039649(n+1)-1)/A322352(n+1)`
-/

namespace A322351.P5095257933096079993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1 : ℚ) / (A322352 (n + 1) : ℚ)

end

end A322351.P5095257933096079993

/-! ## A322351.P13391314528047131545

`(n-A219428(n+1))/A322352(n+1)`
-/

namespace A322351.P13391314528047131545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A219428 (n + 1) : ℚ) / (A322352 (n + 1) : ℚ)

end

end A322351.P13391314528047131545

/-! ## A322351.P11381018549360502917

`∏{p}[n+1, #-1]*A003557(n+1)/A322352(n+1)`
-/

namespace A322351.P11381018549360502917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) * A003557 (n + 1) : ℤ) : ℚ) / (A322352 (n + 1) : ℚ)

end

end A322351.P11381018549360502917

/-! ## A322351.P2498024693557727122

`∑{d}[n+1, (n+1)/#*A008683(#)]/A322352(n+1)`
-/

namespace A322351.P2498024693557727122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ)) / (A322352 (n + 1) : ℚ)

end

end A322351.P2498024693557727122

/-! ## A322351.P9616679907990595413

`(n+1)/∏{p}[n+1, #]*A173557(n+1)/A322352(n+1)`
-/

namespace A322351.P9616679907990595413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A173557 (n + 1) : ℚ) / (A322352 (n + 1) : ℚ)

end

end A322351.P9616679907990595413

/-! ## A322351.P12005198009359146791

`A003557(n+1)+A173557(n+1)-A322352(n+1)`
-/

namespace A322351.P12005198009359146791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) + (A173557 (n + 1) - A322352 (n + 1))

end

end A322351.P12005198009359146791

/-! ## A322351.P8461944088637889699

`(A048865(n+1)+A048864(n+1))/A322352(n+1)`
-/

namespace A322351.P8461944088637889699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048865 (n + 1) + A048864 (n + 1) : ℚ) / (A322352 (n + 1) : ℚ)

end

end A322351.P8461944088637889699

/-! ## A322351.P5653936833644002712

`A002322(n+1)*A034380(n+1)/A322352(n+1)`
-/

namespace A322351.P5653936833644002712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002322 (n + 1) * A034380 (n + 1) : ℚ) / (A322352 (n + 1) : ℚ)

end

end A322351.P5653936833644002712

/-! ## A322351.P1389891584875287495

`A322320(n+1)*A322321(n+1)/A322352(n+1)`
-/

namespace A322351.P1389891584875287495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322320 (n + 1) * A322321 (n + 1) : ℚ) / (A322352 (n + 1) : ℚ)

end

end A322351.P1389891584875287495

/-! ## A322351.P10966719900304543867

`Δ[A049632(n)-A049643(n)]/A322352(n+1)`
-/

namespace A322351.P10966719900304543867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049632 n - A049643 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A322352 (n + 1) : ℚ)

end

end A322351.P10966719900304543867

/-! ## A322351.P15819991370101972908

`(A049633(n)-A049632(n))/A322352(n+1)`
-/

namespace A322351.P15819991370101972908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049633 n - A049632 n : ℚ) / (A322352 (n + 1) : ℚ)

end

end A322351.P15819991370101972908

/-!
# A322352: a(n) = max(A003557(n), A173557(n)).

The programs for A322352, there is no canonical definition to state claims against.
-/

/-! ## A322352.P2374317884418000960

`A000010(n+1)/A322351(n+1)`
-/

namespace A322352.P2374317884418000960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A322351 (n + 1) : ℚ)

end

end A322352.P2374317884418000960

/-! ## A322352.P9518595690052232461

`Δ[A002088(n)]/A322351(n+1)`
-/

namespace A322352.P9518595690052232461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A322351 (n + 1) : ℚ)

end

end A322352.P9518595690052232461

/-! ## A322352.P9244110961028993688

`(A109606(n+1)+1)/A322351(n+1)`
-/

namespace A322352.P9244110961028993688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1 : ℚ) / (A322351 (n + 1) : ℚ)

end

end A322352.P9244110961028993688

/-! ## A322352.P17050922701710646521

`(A039649(n+1)-1)/A322351(n+1)`
-/

namespace A322352.P17050922701710646521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1 : ℚ) / (A322351 (n + 1) : ℚ)

end

end A322352.P17050922701710646521

/-! ## A322352.P6761198334273080757

`(n-A219428(n+1))/A322351(n+1)`
-/

namespace A322352.P6761198334273080757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A219428 (n + 1) : ℚ) / (A322351 (n + 1) : ℚ)

end

end A322352.P6761198334273080757

/-! ## A322352.P10815928014935480173

`(n+1-A051953(n+1))/A322351(n+1)`
-/

namespace A322352.P10815928014935480173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A051953 (n + 1) : ℚ) / (A322351 (n + 1) : ℚ)

end

end A322352.P10815928014935480173

/-! ## A322352.P9985013407172813327

`∏{p}[n+1, #-1]*A003557(n+1)/A322351(n+1)`
-/

namespace A322352.P9985013407172813327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) * A003557 (n + 1) : ℤ) : ℚ) / (A322351 (n + 1) : ℚ)

end

end A322352.P9985013407172813327

/-! ## A322352.P282237492402029061

`(n+1)/∏{p}[n+1, #]*A173557(n+1)/A322351(n+1)`
-/

namespace A322352.P282237492402029061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A173557 (n + 1) : ℚ) / (A322351 (n + 1) : ℚ)

end

end A322352.P282237492402029061

/-! ## A322352.P12369973406501984371

`A003557(n+1)+A173557(n+1)-A322351(n+1)`
-/

namespace A322352.P12369973406501984371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) + (A173557 (n + 1) - A322351 (n + 1))

end

end A322352.P12369973406501984371

/-! ## A322352.P14415076027305682212

`(A048865(n+1)+A048864(n+1))/A322351(n+1)`
-/

namespace A322352.P14415076027305682212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048865 (n + 1) + A048864 (n + 1) : ℚ) / (A322351 (n + 1) : ℚ)

end

end A322352.P14415076027305682212

/-! ## A322352.P14849621825722817606

`A002322(n+1)*A034380(n+1)/A322351(n+1)`
-/

namespace A322352.P14849621825722817606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002322 (n + 1) * A034380 (n + 1) : ℚ) / (A322351 (n + 1) : ℚ)

end

end A322352.P14849621825722817606

/-! ## A322352.P13894779156630753380

`A322320(n+1)*A322321(n+1)/A322351(n+1)`
-/

namespace A322352.P13894779156630753380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322320 (n + 1) * A322321 (n + 1) : ℚ) / (A322351 (n + 1) : ℚ)

end

end A322352.P13894779156630753380

/-! ## A322352.P641095081332235702

`Δ[A049632(n)-A049643(n)]/A322351(n+1)`
-/

namespace A322352.P641095081332235702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049632 n - A049643 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A322351 (n + 1) : ℚ)

end

end A322352.P641095081332235702

/-! ## A322352.P4572704823481453285

`(A049633(n)-A049632(n))/A322351(n+1)`
-/

namespace A322352.P4572704823481453285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049633 n - A049632 n : ℚ) / (A322351 (n + 1) : ℚ)

end

end A322352.P4572704823481453285

/-!
# A322353: Number of factorizations of n into distinct semiprimes; a(1) = 1 by convention.

The programs for A322353, there is no canonical definition to state claims against.
-/

/-! ## A322353.P18264401515403139309

`abs(A359785(n+1))`
-/

namespace A322353.P18264401515403139309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A359785 (n + 1)|

end

end A322353.P18264401515403139309

/-! ## A322353.P347004735507350835

`gcd(A000038(n), A359785(n+1))`
-/

namespace A322353.P347004735507350835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A359785 (n + 1))

end

end A322353.P347004735507350835

/-! ## A322353.P13883327947847072726

`∑{d}[n+1, A008836(#)*A339839((n+1)/#)]`
-/

namespace A322353.P13883327947847072726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A339839 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322353.P13883327947847072726

/-! ## A322353.P5319880127234603468

`∑{d}[n+1, A227291(#)*A339661((n+1)/#)]`
-/

namespace A322353.P5319880127234603468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A227291 d * A339661 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322353.P5319880127234603468

/-! ## A322353.P7500393998536371906

`∑{d}[n+1, A339742(#)*A390490((n+1)/#)]`
-/

namespace A322353.P7500393998536371906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339742 d * A390490 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322353.P7500393998536371906

/-! ## A322353.P10817267312940456305

`gcd(A135416(3*n+5), A359785(A004526(2*(n+1))))`
-/

namespace A322353.P10817267312940456305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A135416 (3 * n + 5)) (A359785 (A004526 (2 * (n + 1))).toNat)

end

end A322353.P10817267312940456305

/-! ## A322353.P9492681379527797110

`A224444(A007428(n+1)*A353337(n+1))`
-/

namespace A322353.P9492681379527797110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224444 (A007428 (n + 1) * A353337 (n + 1)).toNat

end

end A322353.P9492681379527797110

/-! ## A322353.P5996668753703772491

`A224444(A007428(n+1)+abs(A007428(n+1)))`
-/

namespace A322353.P5996668753703772491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224444 (A007428 (n + 1) + |A007428 (n + 1)|).toNat

end

end A322353.P5996668753703772491

/-! ## A322353.P11472817600822902883

`and(A181796(n+1), A344606(A238745(n+1)))`
-/

namespace A322353.P11472817600822902883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A181796 (n + 1)) (A344606 (A238745 (n + 1)).toNat)

end

end A322353.P11472817600822902883

/-! ## A322353.P15343880110429774547

`and(A181796(n+1), A335452(A069626(n+1)))`
-/

namespace A322353.P15343880110429774547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A181796 (n + 1)) (A335452 (A069626 (n + 1)).toNat)

end

end A322353.P15343880110429774547

/-!
# A322354: Greatest common divisor of product p and product (p+2), where p ranges over distinct prime divisors of n; a(n) = gcd(A007947(n), A166590(A007947(n))).

The programs for A322354, the canonical program `A322354.P5525418348868795754` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322354 has offset 1).

The definition of A322354 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322354.P4543897510035569495

`A322356(n+1)*A322357(n+1)`
-/

namespace A322354.P4543897510035569495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322356 (n + 1) * A322357 (n + 1)

end

end A322354.P4543897510035569495

namespace A322354

/-- `A322356(n+1)*A322357(n+1)` -/
def P4543897510035569495.Spec : Prop :=
  ∀ n, P4543897510035569495.a n = A322354 (n + 1)

end A322354

/-! ## A322354.P14997030616349248074

`A322362(∏{p}[n+1, #])`
-/

namespace A322354.P14997030616349248074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322362 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A322354.P14997030616349248074

namespace A322354

/-- `A322362(∏{p}[n+1, #])` -/
def P14997030616349248074.Spec : Prop :=
  ∀ n, P14997030616349248074.a n = A322354 (n + 1)

end A322354

/-! ## A322354.P5525418348868795754

`∏{p}[n+1, gcd(#, A167305(n+1))]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A322354

/-- `∏{p}[n+1, gcd(#, A167305(n+1))]` -/
def P5525418348868795754.Spec : Prop :=
  ∀ n, (P5525418348868795754.a n : ℤ) = A322354 (n + 1)

theorem P5525418348868795754.correct : P5525418348868795754.Spec := by
  intro n
  simp only [A322354, Nat.add_sub_cancel]

end A322354

/-! ## A322354.P12061007955395842254

`A322362(A007947(n+1))`
-/

namespace A322354.P12061007955395842254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322362 (A007947 (n + 1)).toNat

end

end A322354.P12061007955395842254

namespace A322354

/-- `A322362(A007947(n+1))` -/
def P12061007955395842254.Spec : Prop :=
  ∀ n, P12061007955395842254.a n = A322354 (n + 1)

end A322354

/-! ## A322354.P3198462690981837311

`A322362(gcd(n+1, A144845(n)))`
-/

namespace A322354.P3198462690981837311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322362 (Int.gcd (n + 1 : ℤ) (A144845 n))

end

end A322354.P3198462690981837311

namespace A322354

/-- `A322362(gcd(n+1, A144845(n)))` -/
def P3198462690981837311.Spec : Prop :=
  ∀ n, P3198462690981837311.a n = A322354 (n + 1)

end A322354

/-! ## A322354.P3898648649427411498

`A322362((n+1)/A003557(n+1))`
-/

namespace A322354.P3898648649427411498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322362 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A322354.P3898648649427411498

namespace A322354

/-- `A322362((n+1)/A003557(n+1))` -/
def P3898648649427411498.Spec : Prop :=
  ∀ n, P3898648649427411498.a n = A322354 (n + 1)

end A322354

/-! ## A322354.P14638469204640585855

`gcd(A007947(n+1), A166590(n+1))`
-/

namespace A322354.P14638469204640585855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007947 (n + 1)) (A166590 (n + 1))

end

end A322354.P14638469204640585855

namespace A322354

/-- `gcd(A007947(n+1), A166590(n+1))` -/
def P14638469204640585855.Spec : Prop :=
  ∀ n, (P14638469204640585855.a n : ℤ) = A322354 (n + 1)

end A322354

/-! ## A322354.P2601458294514552087

`gcd(A062953(n+1), A167303(n+1))`
-/

namespace A322354.P2601458294514552087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062953 (n + 1)) (A167303 (n + 1))

end

end A322354.P2601458294514552087

namespace A322354

/-- `gcd(A062953(n+1), A167303(n+1))` -/
def P2601458294514552087.Spec : Prop :=
  ∀ n, (P2601458294514552087.a n : ℤ) = A322354 (n + 1)

end A322354

/-! ## A322354.P377337940957817244

`gcd(A099985(n+1), A167358(n+1))`
-/

namespace A322354.P377337940957817244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099985 (n + 1)) (A167358 (n + 1))

end

end A322354.P377337940957817244

namespace A322354

/-- `gcd(A099985(n+1), A167358(n+1))` -/
def P377337940957817244.Spec : Prop :=
  ∀ n, (P377337940957817244.a n : ℤ) = A322354 (n + 1)

end A322354

/-! ## A322354.P10469079471548693160

`A322362(A015052(A015052(n+1)))`
-/

namespace A322354.P10469079471548693160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322362 (A015052 (A015052 (n + 1)).toNat).toNat

end

end A322354.P10469079471548693160

namespace A322354

/-- `A322362(A015052(A015052(n+1)))` -/
def P10469079471548693160.Spec : Prop :=
  ∀ n, P10469079471548693160.a n = A322354 (n + 1)

end A322354

/-! ## A322354.P15654162059886993313

`A322362(A015053(A015053(n+1)))`
-/

namespace A322354.P15654162059886993313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322362 (A015053 (A015053 (n + 1)).toNat).toNat

end

end A322354.P15654162059886993313

namespace A322354

/-- `A322362(A015053(A015053(n+1)))` -/
def P15654162059886993313.Spec : Prop :=
  ∀ n, P15654162059886993313.a n = A322354 (n + 1)

end A322354

/-! ## A322354.P13701278521066498191

`gcd(A186944(n+1), A322362(n+1))`
-/

namespace A322354.P13701278521066498191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A186944 (n + 1)) (A322362 (n + 1))

end

end A322354.P13701278521066498191

namespace A322354

/-- `gcd(A186944(n+1), A322362(n+1))` -/
def P13701278521066498191.Spec : Prop :=
  ∀ n, (P13701278521066498191.a n : ℤ) = A322354 (n + 1)

end A322354

/-! ## A322354.P17549931906473661102

`gcd(A322362(n+1)+A068510(n+1), A068510(n+1))`
-/

namespace A322354.P17549931906473661102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A322362 (n + 1) + A068510 (n + 1)) (A068510 (n + 1))

end

end A322354.P17549931906473661102

namespace A322354

/-- `gcd(A322362(n+1)+A068510(n+1), A068510(n+1))` -/
def P17549931906473661102.Spec : Prop :=
  ∀ n, (P17549931906473661102.a n : ℤ) = A322354 (n + 1)

end A322354

/-! ## A322354.P12487415492404589600

`gcd(A080397(n), A322362(n+1))`
-/

namespace A322354.P12487415492404589600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080397 n) (A322362 (n + 1))

end

end A322354.P12487415492404589600

namespace A322354

/-- `gcd(A080397(n), A322362(n+1))` -/
def P12487415492404589600.Spec : Prop :=
  ∀ n, (P12487415492404589600.a n : ℤ) = A322354 (n + 1)

end A322354

/-! ## A322354.P12346694143058526485

`A007947(n+1)/A322966(A007947(n+1)²)`
-/

namespace A322354.P12346694143058526485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A322966 (A007947 (n + 1) ^ 2).toNat : ℚ)

end

end A322354.P12346694143058526485

namespace A322354

/-- `A007947(n+1)/A322966(A007947(n+1)²)` -/
def P12346694143058526485.Spec : Prop :=
  ∀ n, P12346694143058526485.a n = (A322354 (n + 1) : ℚ)

end A322354

/-!
# A322355: Lexicographically earliest such sequence a that a(i) = a(j) => A322351(i) = A322351(j) and A322352(i) = A322352(j), for all i, j.

The programs for A322355, there is no canonical definition to state claims against.
-/

/-! ## A322355.P8651507627121058815

`A116543(A034691(n)+6)`
-/

namespace A322355.P8651507627121058815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 (A034691 n + 6).toNat

end

end A322355.P8651507627121058815

/-! ## A322355.P2938467126517777500

`A341594(3*A133027(n+1))`
-/

namespace A322355.P2938467126517777500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341594 (3 * A133027 (n + 1)).toNat

end

end A322355.P2938467126517777500

/-! ## A322355.P4205018050818174328

`A000120(A329723(a(n-1)-(2-a(n-2)-n)))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A322355.P4205018050818174328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A000120 (A329723 (a (n - 1) - (2 - a (n - 2) - (n : ℤ))).toNat).toNat

end

end A322355.P4205018050818174328

/-!
# A322356: Product of such primes p that both p and p-2 divide n, and p-2 is also prime.

The programs for A322356, there is no canonical definition to state claims against.
-/

/-! ## A322356.P14558087163842884181

`A322354(n+1)/A322357(n+1)`
-/

namespace A322356.P14558087163842884181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322354 (n + 1) : ℚ) / (A322357 (n + 1) : ℚ)

end

end A322356.P14558087163842884181

/-! ## A322356.P10722952776630915221

`A322362(∏{p}[n+1, #])/A322357(n+1)`
-/

namespace A322356.P10722952776630915221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322362 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ) / (A322357 (n + 1) : ℚ)

end

end A322356.P10722952776630915221

/-! ## A322356.P2967097948738330723

`A322362(A007947(n+1))/A322357(n+1)`
-/

namespace A322356.P2967097948738330723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322362 (A007947 (n + 1)).toNat : ℚ) / (A322357 (n + 1) : ℚ)

end

end A322356.P2967097948738330723

/-! ## A322356.P14195463695162033313

`gcd(A000096(A167487(n)), A322361(n+1))`
-/

namespace A322356.P14195463695162033313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000096 (A167487 n).toNat) (A322361 (n + 1))

end

end A322356.P14195463695162033313

/-! ## A322356.P12931599885670243612

`gcd(A028234(n+1), A065330(A166590(n+1)))`
-/

namespace A322356.P12931599885670243612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028234 (n + 1)) (A065330 (A166590 (n + 1)).toNat)

end

end A322356.P12931599885670243612

/-! ## A322356.P9636051139556436233

`A098985(A322354(n+1)^A322358(n+1))`
-/

namespace A322356.P9636051139556436233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098985 (SequenceMachineLib.roundAway ((A322354 (n + 1) : ℚ) ^ (A322358 (n + 1) : ℤ))).toNat

end

end A322356.P9636051139556436233

/-! ## A322356.P14554527818502094799

`A136655(A322354(n+1)^A322358(n+1))`
-/

namespace A322356.P14554527818502094799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136655 (SequenceMachineLib.roundAway ((A322354 (n + 1) : ℚ) ^ (A322358 (n + 1) : ℤ))).toNat

end

end A322356.P14554527818502094799

/-! ## A322356.P7270208040456415623

`gcd(A065330(A140211(n+1)), A167303(n+1))`
-/

namespace A322356.P7270208040456415623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065330 (A140211 (n + 1)).toNat) (A167303 (n + 1))

end

end A322356.P7270208040456415623

/-! ## A322356.P3516221114452585207

`gcd(A109395(n+1), A166590(A140211(n+1)))`
-/

namespace A322356.P3516221114452585207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109395 (n + 1)) (A166590 (A140211 (n + 1)).toNat)

end

end A322356.P3516221114452585207

/-! ## A322356.P4641620467958495861

`A344970(A208644(n+1))`
-/

namespace A322356.P4641620467958495861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344970 (A208644 (n + 1)).toNat

end

end A322356.P4641620467958495861

/-!
# A322357: a(n) = A322354(n) / A322356(n).

The programs for A322357, there is no canonical definition to state claims against.
-/

/-! ## A322357.P13066356849029405206

`A322354(n+1)/A322356(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322357.P13066356849029405206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322354 (n + 1) : ℚ) / (A322356 (n + 1) : ℚ)

end

end A322357.P13066356849029405206

/-! ## A322357.P8234365313416432498

`A322362(∏{p}[n+1, #])/A322356(n+1)`
-/

namespace A322357.P8234365313416432498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322362 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ) / (A322356 (n + 1) : ℚ)

end

end A322357.P8234365313416432498

/-! ## A322357.P548712100780810884

`A322362(A007947(n+1))/A322356(n+1)`
-/

namespace A322357.P548712100780810884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322362 (A007947 (n + 1)).toNat : ℚ) / (A322356 (n + 1) : ℚ)

end

end A322357.P548712100780810884

/-! ## A322357.P16640764168214258061

`gcd(A007947(n+1), A166590(n+1))/A322356(n+1)`
-/

namespace A322357.P16640764168214258061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A007947 (n + 1)) (A166590 (n + 1)) : ℚ) / (A322356 (n + 1) : ℚ)

end

end A322357.P16640764168214258061

/-! ## A322357.P17313217967862355650

`A322354((A322356(n+1)+n)²)`
-/

namespace A322357.P17313217967862355650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322354 ((A322356 (n + 1) + (n : ℤ)) ^ 2).toNat

end

end A322357.P17313217967862355650

/-! ## A322357.P13447374762621732666

`A322354((A006530(n+1)*A322354(n+1))²)`
-/

namespace A322357.P13447374762621732666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322354 ((A006530 (n + 1) * A322354 (n + 1)) ^ 2).toNat

end

end A322357.P13447374762621732666

/-! ## A322357.P16072067604074450735

`A322354(A072965((n+1)²))`
-/

namespace A322357.P16072067604074450735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322354 (A072965 ((n + 1) ^ 2)).toNat

end

end A322357.P16072067604074450735

/-! ## A322357.P10301643010900114469

`gcd(A057405(n), A322354(n+1))`
-/

namespace A322357.P10301643010900114469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057405 n) (A322354 (n + 1))

end

end A322357.P10301643010900114469

/-!
# A322358: Number of distinct twin prime pairs p, p+2 such that both of them divide n.

The programs for A322358, there is no canonical definition to state claims against.
-/

/-! ## A322358.P7657776562652898708

`∑{e}[A322356(n+1), #]`
-/

namespace A322358.P7657776562652898708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322356 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A322358.P7657776562652898708

/-! ## A322358.P1433165875018348795

`A001221(A322356(n+1))`
-/

namespace A322358.P1433165875018348795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A322356 (n + 1)).toNat

end

end A322358.P1433165875018348795

/-! ## A322358.P8572200031888560029

`∑{p}[A322356(n+1), A322356(#)]`
-/

namespace A322358.P8572200031888560029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A322356 p

end

end A322358.P8572200031888560029

/-! ## A322358.P13921834685958922351

`A001222(A322356(n+1)²)/2`
-/

namespace A322358.P13921834685958922351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A322356 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A322358.P13921834685958922351

/-! ## A322358.P3888244046227226967

`A323068(A000005(A322356(n+1))²)`
-/

namespace A322358.P3888244046227226967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323068 (A000005 (A322356 (n + 1)).toNat ^ 2).toNat

end

end A322358.P3888244046227226967

/-! ## A322358.P574867070696638190

`A120256(∏{e}[A008585(A322356(n+1))², #])`
-/

namespace A322358.P574867070696638190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A322356 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120256 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A322358.P574867070696638190

/-! ## A322358.P4940043264774903364

`A001221(A322354(n+1)/A322357(n+1))`
-/

namespace A322358.P4940043264774903364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A322354 (n + 1) : ℚ) / (A322357 (n + 1) : ℚ))).toNat

end

end A322358.P4940043264774903364

/-! ## A322358.P15861362339067379716

`A001222(A322354(n+1)/A322357(n+1))`
-/

namespace A322358.P15861362339067379716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A322354 (n + 1) : ℚ) / (A322357 (n + 1) : ℚ))).toNat

end

end A322358.P15861362339067379716

/-! ## A322358.P12148102237136661252

`A001222(A322356(2*(n+1)))`
-/

namespace A322358.P12148102237136661252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A322356 (2 * (n + 1))).toNat

end

end A322358.P12148102237136661252

/-! ## A322358.P8248894880433878575

`A322389(A322356(n+1)²)`
-/

namespace A322358.P8248894880433878575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322389 (A322356 (n + 1) ^ 2).toNat

end

end A322358.P8248894880433878575

/-! ## A322358.P16721201210596938821

`A350899(4*A322356(n+1))`
-/

namespace A322358.P16721201210596938821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350899 (4 * A322356 (n + 1)).toNat

end

end A322358.P16721201210596938821

/-! ## A322358.P2708779643503176614

`A322389(A322356(n+1)^2)`
-/

namespace A322358.P2708779643503176614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322389 (A322356 (n + 1) ^ 2).toNat

end

end A322358.P2708779643503176614

/-! ## A322358.P4904765835176522887

`A325938(A322356(n+1)²²)`
-/

namespace A322358.P4904765835176522887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325938 ((A322356 (n + 1) ^ 2) ^ 2).toNat

end

end A322358.P4904765835176522887

/-! ## A322358.P15040556972461566739

`A088951(A330749((n+1)²)-1)`
-/

namespace A322358.P15040556972461566739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088951 (A330749 ((n + 1) ^ 2) - 1).toNat

end

end A322358.P15040556972461566739

/-! ## A322358.P17169097909951838990

`A005088(A322356(n+1)²²+1)`
-/

namespace A322358.P17169097909951838990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005088 ((A322356 (n + 1) ^ 2) ^ 2 + 1).toNat

end

end A322358.P17169097909951838990

/-! ## A322358.P18020031865498592282

`ceil(1/A174863(A322356(n+1)^3+5))`
-/

namespace A322358.P18020031865498592282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A174863 (A322356 (n + 1) ^ 3 + 5).toNat : ℚ)⌉

end

end A322358.P18020031865498592282

/-! ## A322358.P9557090478210558373

`A005088(A006512(A322356(n+1)²))`
-/

namespace A322358.P9557090478210558373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005088 (A006512 (A322356 (n + 1) ^ 2).toNat).toNat

end

end A322358.P9557090478210558373

/-! ## A322358.P1091936731171495901

`A322361(n+5)%A322342(A322356(n+1))`
-/

namespace A322358.P1091936731171495901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322361 (n + 5)) (A322342 (A322356 (n + 1)).toNat)

end

end A322358.P1091936731171495901

/-! ## A322358.P10724293508433435193

`A322356(n+1)-A120256(A322356(n+1)²)`
-/

namespace A322358.P10724293508433435193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322356 (n + 1) - A120256 (A322356 (n + 1) ^ 2).toNat

end

end A322358.P10724293508433435193

/-! ## A322358.P9360365778457062149

`A079979(A252463(A064989((n+1)²)))`
-/

namespace A322358.P9360365778457062149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 (A252463 (A064989 ((n + 1) ^ 2)).toNat).toNat

end

end A322358.P9360365778457062149

/-!
# A322359: Least common multiple of product (p-1) and product (p+1), where p ranges over distinct prime divisors of n.

The programs for A322359, the canonical program `A322359.P4809427501009130692` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322359 has offset 1).

The definition of A322359 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066086, A322360, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A322359.P4809427501009130692

`A322360(n+1)/A066086(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A322359

/-- `A322360(n+1)/A066086(n+1)` -/
def P4809427501009130692.Spec : Prop :=
  ∀ n, P4809427501009130692.a n = (A322359 (n + 1) : ℚ)

end A322359

/-! ## A322359.P11440968729433492058

`A009286(∏{p}[n+1, #])`
-/

namespace A322359.P11440968729433492058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009286 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A322359.P11440968729433492058

namespace A322359

/-- `A009286(∏{p}[n+1, #])` -/
def P11440968729433492058.Spec : Prop :=
  ∀ n, P11440968729433492058.a n = A322359 (n + 1)

end A322359

/-! ## A322359.P3308472697789073217

`lcm(A000010(∏{p}[n+1, #]), ∏{p}[n+1, #+1])`
-/

namespace A322359.P3308472697789073217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000010 (∏ p ∈ Nat.primeFactors (f1 n), p)) ((∏ p ∈ Nat.primeFactors (f2 n), (p + 1) : ℕ) : ℤ)

end

end A322359.P3308472697789073217

namespace A322359

/-- `lcm(A000010(∏{p}[n+1, #]), ∏{p}[n+1, #+1])` -/
def P3308472697789073217.Spec : Prop :=
  ∀ n, (P3308472697789073217.a n : ℤ) = A322359 (n + 1)

end A322359

/-! ## A322359.P15384603082041992897

`lcm(A000203(∏{p}[n+1, #]), ∏{p}[n+1, #-1])`
-/

namespace A322359.P15384603082041992897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000203 (∏ p ∈ Nat.primeFactors (f1 n), p)) (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1))

end

end A322359.P15384603082041992897

namespace A322359

/-- `lcm(A000203(∏{p}[n+1, #]), ∏{p}[n+1, #-1])` -/
def P15384603082041992897.Spec : Prop :=
  ∀ n, (P15384603082041992897.a n : ℤ) = A322359 (n + 1)

end A322359

/-! ## A322359.P17611807787881104318

`A009286(A007947(n+1))`
-/

namespace A322359.P17611807787881104318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009286 (A007947 (n + 1)).toNat

end

end A322359.P17611807787881104318

namespace A322359

/-- `A009286(A007947(n+1))` -/
def P17611807787881104318.Spec : Prop :=
  ∀ n, P17611807787881104318.a n = A322359 (n + 1)

end A322359

/-! ## A322359.P2406278140616485782

`A345052(n+1)/A175732(n+1)`
-/

namespace A322359.P2406278140616485782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345052 (n + 1) : ℚ) / (A175732 (n + 1) : ℚ)

end

end A322359.P2406278140616485782

namespace A322359

/-- `A345052(n+1)/A175732(n+1)` -/
def P2406278140616485782.Spec : Prop :=
  ∀ n, P2406278140616485782.a n = (A322359 (n + 1) : ℚ)

end A322359

/-! ## A322359.P17324961491861867899

`lcm(A023900(n+1), A048250(n+1))`
-/

namespace A322359.P17324961491861867899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A023900 (n + 1)) (A048250 (n + 1))

end

end A322359.P17324961491861867899

namespace A322359

/-- `lcm(A023900(n+1), A048250(n+1))` -/
def P17324961491861867899.Spec : Prop :=
  ∀ n, (P17324961491861867899.a n : ℤ) = A322359 (n + 1)

end A322359

/-! ## A322359.P4512455383060096991

`lcm(A173557(n+1), A323363(n+1))`
-/

namespace A322359.P4512455383060096991
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A173557 (n + 1)) (A323363 (n + 1))

end

end A322359.P4512455383060096991

namespace A322359

/-- `lcm(A173557(n+1), A323363(n+1))` -/
def P4512455383060096991.Spec : Prop :=
  ∀ n, (P4512455383060096991.a n : ℤ) = A322359 (n + 1)

end A322359

/-! ## A322359.P8383628922611771776

`A322360(n+1)/A126865(A007947(n+1))`
-/

namespace A322359.P8383628922611771776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322360 (n + 1) : ℚ) / (A126865 (A007947 (n + 1)).toNat : ℚ)

end

end A322359.P8383628922611771776

namespace A322359

/-- `A322360(n+1)/A126865(A007947(n+1))` -/
def P8383628922611771776.Spec : Prop :=
  ∀ n, P8383628922611771776.a n = (A322359 (n + 1) : ℚ)

end A322359

/-! ## A322359.P7466329354254720428

`A322360(n+1)/(A009223(n+1)-A066087(n+1))`
-/

namespace A322359.P7466329354254720428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322360 (n + 1) : ℚ) / (A009223 (n + 1) - A066087 (n + 1) : ℚ)

end

end A322359.P7466329354254720428

namespace A322359

/-- `A322360(n+1)/(A009223(n+1)-A066087(n+1))` -/
def P7466329354254720428.Spec : Prop :=
  ∀ n, P7466329354254720428.a n = (A322359 (n + 1) : ℚ)

end A322359

/-! ## A322359.P15082868943342260731

`A048250(n+1)/A066086(n+1)*A173557(n+1)`
-/

namespace A322359.P15082868943342260731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A066086 (n + 1) : ℚ) * (A173557 (n + 1) : ℚ)

end

end A322359.P15082868943342260731

namespace A322359

/-- `A048250(n+1)/A066086(n+1)*A173557(n+1)` -/
def P15082868943342260731.Spec : Prop :=
  ∀ n, P15082868943342260731.a n = (A322359 (n + 1) : ℚ)

end A322359

/-!
# A322360: Multiplicative with a(p^e) = p^2 - 1.

The programs for A322360, the canonical program `A322360.P129739376014566701` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322360 has offset 1).

The definition of A322360 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046970, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A322360.P129739376014566701

`abs(A046970(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A322360

/-- `abs(A046970(n+1))` -/
def P129739376014566701.Spec : Prop :=
  ∀ n, P129739376014566701.a n = A322360 (n + 1)

theorem P129739376014566701.correct : P129739376014566701.Spec := by
  intro n
  simp only [A322360, Nat.add_sub_cancel]

end A322360

/-! ## A322360.P15425799142851960252

`A048250(n+1)*A173557(n+1)`
-/

namespace A322360.P15425799142851960252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) * A173557 (n + 1)

end

end A322360.P15425799142851960252

namespace A322360

/-- `A048250(n+1)*A173557(n+1)` -/
def P15425799142851960252.Spec : Prop :=
  ∀ n, P15425799142851960252.a n = A322360 (n + 1)

end A322360

/-! ## A322360.P43861928332920415

`A066086(n+1)*A322359(n+1)`
-/

namespace A322360.P43861928332920415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066086 (n + 1) * A322359 (n + 1)

end

end A322360.P43861928332920415

namespace A322360

/-- `A066086(n+1)*A322359(n+1)` -/
def P43861928332920415.Spec : Prop :=
  ∀ n, P43861928332920415.a n = A322360 (n + 1)

end A322360

/-! ## A322360.P9706408197725166665

`∏{p}[n+1, #²-1]`
-/

namespace A322360.P9706408197725166665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((p ^ 2 : ℤ) - 1)

end

end A322360.P9706408197725166665

namespace A322360

/-- `∏{p}[n+1, #²-1]` -/
def P9706408197725166665.Spec : Prop :=
  ∀ n, P9706408197725166665.a n = A322360 (n + 1)

end A322360

/-! ## A322360.P7156925080630468200

`∑{d}[∏{p}[n+1, -#], #]*∏{p}[n+1, #-1]`
-/

namespace A322360.P7156925080630468200
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) * (∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1))

end

end A322360.P7156925080630468200

namespace A322360

/-- `∑{d}[∏{p}[n+1, -#], #]*∏{p}[n+1, #-1]` -/
def P7156925080630468200.Spec : Prop :=
  ∀ n, P7156925080630468200.a n = A322360 (n + 1)

end A322360

/-! ## A322360.P14674829056851701592

`(n+1)*∏{p}[n+1, #-1/#]/floor((n+1)/∏{p}[n+1, #])`
-/

namespace A322360.P14674829056851701592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℚ) - 1 / (p : ℚ))) / (⌊(n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)⌋ : ℚ)

end

end A322360.P14674829056851701592

namespace A322360

/-- `(n+1)*∏{p}[n+1, #-1/#]/floor((n+1)/∏{p}[n+1, #])` -/
def P14674829056851701592.Spec : Prop :=
  ∀ n, P14674829056851701592.a n = (A322360 (n + 1) : ℚ)

end A322360

/-! ## A322360.P2995188774237669406

`(n+1)*∏{p}[n+1, #-1/#]/round((n+1)/∏{p}[n+1, #])`
-/

namespace A322360.P2995188774237669406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℚ) - 1 / (p : ℚ))) / (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)) : ℚ)

end

end A322360.P2995188774237669406

namespace A322360

/-- `(n+1)*∏{p}[n+1, #-1/#]/round((n+1)/∏{p}[n+1, #])` -/
def P2995188774237669406.Spec : Prop :=
  ∀ n, P2995188774237669406.a n = (A322360 (n + 1) : ℚ)

end A322360

/-! ## A322360.P13140856590360805933

`A007434(∏{p}[n+1, #])`
-/

namespace A322360.P13140856590360805933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A322360.P13140856590360805933

namespace A322360

/-- `A007434(∏{p}[n+1, #])` -/
def P13140856590360805933.Spec : Prop :=
  ∀ n, P13140856590360805933.a n = A322360 (n + 1)

end A322360

/-! ## A322360.P2548915920515081452

`A062354(∏{p}[n+1, #])`
-/

namespace A322360.P2548915920515081452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062354 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A322360.P2548915920515081452

namespace A322360

/-- `A062354(∏{p}[n+1, #])` -/
def P2548915920515081452.Spec : Prop :=
  ∀ n, P2548915920515081452.a n = A322360 (n + 1)

end A322360

/-! ## A322360.P6608535412164727676

`A167344(∏{p}[n+1, #])`
-/

namespace A322360.P6608535412164727676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167344 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A322360.P6608535412164727676

namespace A322360

/-- `A167344(∏{p}[n+1, #])` -/
def P6608535412164727676.Spec : Prop :=
  ∀ n, P6608535412164727676.a n = A322360 (n + 1)

end A322360

/-! ## A322360.P18388443617411206589

`A191414(∏{p}[n+1, #])`
-/

namespace A322360.P18388443617411206589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191414 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A322360.P18388443617411206589

namespace A322360

/-- `A191414(∏{p}[n+1, #])` -/
def P18388443617411206589.Spec : Prop :=
  ∀ n, P18388443617411206589.a n = A322360 (n + 1)

end A322360

/-! ## A322360.P5424558647231875249

`A345052(∏{p}[n+1, #])`
-/

namespace A322360.P5424558647231875249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345052 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A322360.P5424558647231875249

namespace A322360

/-- `A345052(∏{p}[n+1, #])` -/
def P5424558647231875249.Spec : Prop :=
  ∀ n, P5424558647231875249.a n = A322360 (n + 1)

end A322360

/-! ## A322360.P6362576072209233898

`A392087(∏{p}[n+1, #])`
-/

namespace A322360.P6362576072209233898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392087 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A322360.P6362576072209233898

namespace A322360

/-- `A392087(∏{p}[n+1, #])` -/
def P6362576072209233898.Spec : Prop :=
  ∀ n, P6362576072209233898.a n = A322360 (n + 1)

end A322360

/-! ## A322360.P18112549734132927838

`A392089(∏{p}[n+1, #])`
-/

namespace A322360.P18112549734132927838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392089 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A322360.P18112549734132927838

namespace A322360

/-- `A392089(∏{p}[n+1, #])` -/
def P18112549734132927838.Spec : Prop :=
  ∀ n, P18112549734132927838.a n = A322360 (n + 1)

end A322360

/-! ## A322360.P17741682823222248460

`abs(∑{d}[n+1, #*#*A008683(#)])`
-/

namespace A322360.P17741682823222248460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * ((d : ℤ) * A008683 d)|

end

end A322360.P17741682823222248460

namespace A322360

/-- `abs(∑{d}[n+1, #*#*A008683(#)])` -/
def P17741682823222248460.Spec : Prop :=
  ∀ n, P17741682823222248460.a n = A322360 (n + 1)

end A322360

/-! ## A322360.P12416727114216415752

`A000010(∏{p}[n+1, #])*∏{p}[n+1, #+1]`
-/

namespace A322360.P12416727114216415752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∏ p ∈ Nat.primeFactors (f1 n), p) * ((∏ p ∈ Nat.primeFactors (f2 n), (p + 1) : ℕ) : ℤ)

end

end A322360.P12416727114216415752

namespace A322360

/-- `A000010(∏{p}[n+1, #])*∏{p}[n+1, #+1]` -/
def P12416727114216415752.Spec : Prop :=
  ∀ n, P12416727114216415752.a n = A322360 (n + 1)

end A322360

/-! ## A322360.P3395307139793483857

`A000203(∏{p}[n+1, #])*∏{p}[n+1, #-1]`
-/

namespace A322360.P3395307139793483857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∏ p ∈ Nat.primeFactors (f1 n), p) * (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1))

end

end A322360.P3395307139793483857

namespace A322360

/-- `A000203(∏{p}[n+1, #])*∏{p}[n+1, #-1]` -/
def P3395307139793483857.Spec : Prop :=
  ∀ n, P3395307139793483857.a n = A322360 (n + 1)

end A322360

/-! ## A322360.P3124336223202359859

`A007434(A007947(n+1))`
-/

namespace A322360.P3124336223202359859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (A007947 (n + 1)).toNat

end

end A322360.P3124336223202359859

namespace A322360

/-- `A007434(A007947(n+1))` -/
def P3124336223202359859.Spec : Prop :=
  ∀ n, P3124336223202359859.a n = A322360 (n + 1)

end A322360

/-! ## A322360.P10139420787761572578

`A392087(A007948(n+1))`
-/

namespace A322360.P10139420787761572578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392087 (A007948 (n + 1)).toNat

end

end A322360.P10139420787761572578

namespace A322360

/-- `A392087(A007948(n+1))` -/
def P10139420787761572578.Spec : Prop :=
  ∀ n, P10139420787761572578.a n = A322360 (n + 1)

end A322360

/-! ## A322360.P3767427166814655184

`A392087(A066990(n+1))`
-/

namespace A322360.P3767427166814655184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392087 (A066990 (n + 1)).toNat

end

end A322360.P3767427166814655184

namespace A322360

/-- `A392087(A066990(n+1))` -/
def P3767427166814655184.Spec : Prop :=
  ∀ n, P3767427166814655184.a n = A322360 (n + 1)

end A322360

/-!
# A322361: a(n) = gcd(n, A003961(n)), where A003961 is completely multiplicative with a(prime(k)) = prime(k+1).

The programs for A322361, the canonical program `A322361.P2076853650536418514` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322361 has offset 1).

The definition of A322361 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322361.P2076853650536418514

`gcd(n+1, Δ[A252749(n)])`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A322361

/-- `gcd(n+1, Δ[A252749(n)])` -/
def P2076853650536418514.Spec : Prop :=
  ∀ n, (P2076853650536418514.a n : ℤ) = A322361 (n + 1)

theorem P2076853650536418514.correct : P2076853650536418514.Spec := by
  intro n
  simp only [A322361, Nat.add_sub_cancel]

end A322361

/-! ## A322361.P4003375034608607487

`(n+1)/A348990(n+1)`
-/

namespace A322361.P4003375034608607487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A348990 (n + 1) : ℚ)

end

end A322361.P4003375034608607487

namespace A322361

/-- `(n+1)/A348990(n+1)` -/
def P4003375034608607487.Spec : Prop :=
  ∀ n, P4003375034608607487.a n = (A322361 (n + 1) : ℚ)

end A322361

/-! ## A322361.P13298012973864929291

`gcd(xor(n, -1), A003961(n+1))`
-/

namespace A322361.P13298012973864929291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor (n : ℤ) (-1)) (A003961 (n + 1))

end

end A322361.P13298012973864929291

namespace A322361

/-- `gcd(xor(n, -1), A003961(n+1))` -/
def P13298012973864929291.Spec : Prop :=
  ∀ n, (P13298012973864929291.a n : ℤ) = A322361 (n + 1)

end A322361

/-! ## A322361.P4643710047048858250

`gcd(A253885(n)+1, 2*(n+1))`
-/

namespace A322361.P4643710047048858250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A253885 n + 1) (2 * (n + 1) : ℤ)

end

end A322361.P4643710047048858250

namespace A322361

/-- `gcd(A253885(n)+1, 2*(n+1))` -/
def P4643710047048858250.Spec : Prop :=
  ∀ n, (P4643710047048858250.a n : ℤ) = A322361 (n + 1)

end A322361

/-! ## A322361.P14575343418761705280

`gcd((n+1)*a(n-1), A045965(n+1))` with `a(0)=1`
-/

namespace A322361.P14575343418761705280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd ((n + 1) * a (n - 1) : ℤ) (A045965 (n + 1))

end

end A322361.P14575343418761705280

namespace A322361

/-- `gcd((n+1)*a(n-1), A045965(n+1))` -/
def P14575343418761705280.Spec : Prop :=
  ∀ n, (P14575343418761705280.a n : ℤ) = A322361 (n + 1)

end A322361

/-! ## A322361.P1288755464149204629

`gcd((n+1)/2^val(n+1, 2), A252748(n+1))`
-/

namespace A322361.P1288755464149204629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) (A252748 (n + 1))

end

end A322361.P1288755464149204629

namespace A322361

/-- `gcd((n+1)/2^val(n+1, 2), A252748(n+1))` -/
def P1288755464149204629.Spec : Prop :=
  ∀ n, (P1288755464149204629.a n : ℤ) = A322361 (n + 1)

end A322361

/-! ## A322361.P10029068734641290612

`A003961(A330749(n+1))`
-/

namespace A322361.P10029068734641290612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A330749 (n + 1)).toNat

end

end A322361.P10029068734641290612

namespace A322361

/-- `A003961(A330749(n+1))` -/
def P10029068734641290612.Spec : Prop :=
  ∀ n, P10029068734641290612.a n = A322361 (n + 1)

end A322361

/-! ## A322361.P14936625624546347428

`gcd(A003961(n+1), A030640(n))`
-/

namespace A322361.P14936625624546347428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003961 (n + 1)) (A030640 n)

end

end A322361.P14936625624546347428

namespace A322361

/-- `gcd(A003961(n+1), A030640(n))` -/
def P14936625624546347428.Spec : Prop :=
  ∀ n, (P14936625624546347428.a n : ℤ) = A322361 (n + 1)

end A322361

/-! ## A322361.P10237294813356450201

`gcd(A045965(n+1), A103517(n))`
-/

namespace A322361.P10237294813356450201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A045965 (n + 1)) (A103517 n)

end

end A322361.P10237294813356450201

namespace A322361

/-- `gcd(A045965(n+1), A103517(n))` -/
def P10237294813356450201.Spec : Prop :=
  ∀ n, (P10237294813356450201.a n : ℤ) = A322361 (n + 1)

end A322361

/-! ## A322361.P8888502160808550826

`A253885(A330749(n+1)-1)+1`
-/

namespace A322361.P8888502160808550826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 (A330749 (n + 1) - 1).toNat + 1

end

end A322361.P8888502160808550826

namespace A322361

/-- `A253885(A330749(n+1)-1)+1` -/
def P8888502160808550826.Spec : Prop :=
  ∀ n, P8888502160808550826.a n = A322361 (n + 1)

end A322361

/-! ## A322361.P10328610938049798723

`A003961((n+1)/A319626(n+1))`
-/

namespace A322361.P10328610938049798723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A319626 (n + 1) : ℚ))).toNat

end

end A322361.P10328610938049798723

namespace A322361

/-- `A003961((n+1)/A319626(n+1))` -/
def P10328610938049798723.Spec : Prop :=
  ∀ n, P10328610938049798723.a n = A322361 (n + 1)

end A322361

/-! ## A322361.P5735678131983741110

`A003961(n+1)/A348994(n+1)`
-/

namespace A322361.P5735678131983741110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) : ℚ) / (A348994 (n + 1) : ℚ)

end

end A322361.P5735678131983741110

namespace A322361

/-- `A003961(n+1)/A348994(n+1)` -/
def P5735678131983741110.Spec : Prop :=
  ∀ n, P5735678131983741110.a n = (A322361 (n + 1) : ℚ)

end A322361

/-! ## A322361.P2458040879062923732

`A379487(n+1)/A324644(n+1)`
-/

namespace A322361.P2458040879062923732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379487 (n + 1) : ℚ) / (A324644 (n + 1) : ℚ)

end

end A322361.P2458040879062923732

namespace A322361

/-- `A379487(n+1)/A324644(n+1)` -/
def P2458040879062923732.Spec : Prop :=
  ∀ n, P2458040879062923732.a n = (A322361 (n + 1) : ℚ)

end A322361

/-! ## A322361.P1341128518869652557

`gcd(A000265(n+1), A283980(n+1))`
-/

namespace A322361.P1341128518869652557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000265 (n + 1)) (A283980 (n + 1))

end

end A322361.P1341128518869652557

namespace A322361

/-- `gcd(A000265(n+1), A283980(n+1))` -/
def P1341128518869652557.Spec : Prop :=
  ∀ n, (P1341128518869652557.a n : ℤ) = A322361 (n + 1)

end A322361

/-! ## A322361.P1726603685015066752

`gcd(A214681(n+1), A249734(n+1))`
-/

namespace A322361.P1726603685015066752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A214681 (n + 1)) (A249734 (n + 1))

end

end A322361.P1726603685015066752

namespace A322361

/-- `gcd(A214681(n+1), A249734(n+1))` -/
def P1726603685015066752.Spec : Prop :=
  ∀ n, (P1726603685015066752.a n : ℤ) = A322361 (n + 1)

end A322361

/-! ## A322361.P12012243143357421076

`gcd(n²*A003961(n+1), A032742(n+1))`
-/

namespace A322361.P12012243143357421076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n ^ 2 : ℤ) * A003961 (n + 1)) (A032742 (n + 1))

end

end A322361.P12012243143357421076

namespace A322361

/-- `gcd(n²*A003961(n+1), A032742(n+1))` -/
def P12012243143357421076.Spec : Prop :=
  ∀ n, (P12012243143357421076.a n : ℤ) = A322361 (n + 1)

end A322361

/-! ## A322361.P299771394159809423

`gcd(2*A048673(n+1)-1, A353667(n+1))`
-/

namespace A322361.P299771394159809423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A048673 (n + 1) - 1) (A353667 (n + 1))

end

end A322361.P299771394159809423

namespace A322361

/-- `gcd(2*A048673(n+1)-1, A353667(n+1))` -/
def P299771394159809423.Spec : Prop :=
  ∀ n, (P299771394159809423.a n : ℤ) = A322361 (n + 1)

end A322361

/-! ## A322361.P1103096130557423868

`A000265(n+1)/A003961(A319627(n+1))`
-/

namespace A322361.P1103096130557423868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) : ℚ) / (A003961 (A319627 (n + 1)).toNat : ℚ)

end

end A322361.P1103096130557423868

namespace A322361

/-- `A000265(n+1)/A003961(A319627(n+1))` -/
def P1103096130557423868.Spec : Prop :=
  ∀ n, P1103096130557423868.a n = (A322361 (n + 1) : ℚ)

end A322361

/-! ## A322361.P10472827269132719030

`A369445(n+1)/A000203(n+1)*A379487(n+1)`
-/

namespace A322361.P10472827269132719030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369445 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A379487 (n + 1) : ℚ)

end

end A322361.P10472827269132719030

namespace A322361

/-- `A369445(n+1)/A000203(n+1)*A379487(n+1)` -/
def P10472827269132719030.Spec : Prop :=
  ∀ n, P10472827269132719030.a n = (A322361 (n + 1) : ℚ)

end A322361

/-! ## A322361.P15687525660470168211

`A342671(n+1)/A348994(n+1)*A349161(n+1)`
-/

namespace A322361.P15687525660470168211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342671 (n + 1) : ℚ) / (A348994 (n + 1) : ℚ) * (A349161 (n + 1) : ℚ)

end

end A322361.P15687525660470168211

namespace A322361

/-- `A342671(n+1)/A348994(n+1)*A349161(n+1)` -/
def P15687525660470168211.Spec : Prop :=
  ∀ n, P15687525660470168211.a n = (A322361 (n + 1) : ℚ)

end A322361

/-!
# A322362: a(n) = gcd(n, A166590(n)), where A166590 is completely multiplicative with a(p) = p+2 for prime p.

The programs for A322362, the canonical program `A322362.P1867814400525235391` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322362 has offset 1).

The definition of A322362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322362.P1867814400525235391

`gcd(n+1, A166590(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A322362

/-- `gcd(n+1, A166590(n+1))` -/
def P1867814400525235391.Spec : Prop :=
  ∀ n, (P1867814400525235391.a n : ℤ) = A322362 (n + 1)

theorem P1867814400525235391.correct : P1867814400525235391.Spec := by
  intro n
  simp only [A322362, Nat.add_sub_cancel]

end A322362

/-! ## A322362.P1186574977113444834

`gcd(abs(1-n)+2, A167305(n+1))`
-/

namespace A322362.P1186574977113444834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (|1 - (n : ℤ)| + 2) (A167305 (n + 1))

end

end A322362.P1186574977113444834

namespace A322362

/-- `gcd(abs(1-n)+2, A167305(n+1))` -/
def P1186574977113444834.Spec : Prop :=
  ∀ n, (P1186574977113444834.a n : ℤ) = A322362 (n + 1)

end A322362

/-! ## A322362.P17639690243856426658

`gcd(2*n+1-n, A167303(n+1))`
-/

namespace A322362.P17639690243856426658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * n + 1 : ℤ) - (n : ℤ)) (A167303 (n + 1))

end

end A322362.P17639690243856426658

namespace A322362

/-- `gcd(2*n+1-n, A167303(n+1))` -/
def P17639690243856426658.Spec : Prop :=
  ∀ n, (P17639690243856426658.a n : ℤ) = A322362 (n + 1)

end A322362

/-! ## A322362.P1871891518761960055

`gcd((n+1)², A167340(n+1))/(n+1)`
-/

namespace A322362.P1871891518761960055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd ((n + 1) ^ 2 : ℤ) (A167340 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A322362.P1871891518761960055

namespace A322362

/-- `gcd((n+1)², A167340(n+1))/(n+1)` -/
def P1871891518761960055.Spec : Prop :=
  ∀ n, P1871891518761960055.a n = (A322362 (n + 1) : ℚ)

end A322362

/-! ## A322362.P14435040561751354098

`gcd(A061019(n+1), A167309(n+1))`
-/

namespace A322362.P14435040561751354098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061019 (n + 1)) (A167309 (n + 1))

end

end A322362.P14435040561751354098

namespace A322362

/-- `gcd(A061019(n+1), A167309(n+1))` -/
def P14435040561751354098.Spec : Prop :=
  ∀ n, (P14435040561751354098.a n : ℤ) = A322362 (n + 1)

end A322362

/-! ## A322362.P15009111867906389873

`gcd(sqrt(A167358(n+1)), A008611(3*n))`
-/

namespace A322362.P15009111867906389873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (Real.sqrt (A167358 (n + 1) : ℝ))) (A008611 (3 * n))

end

end A322362.P15009111867906389873

namespace A322362

/-- `gcd(sqrt(A167358(n+1)), A008611(3*n))` -/
def P15009111867906389873.Spec : Prop :=
  ∀ n, (P15009111867906389873.a n : ℤ) = A322362 (n + 1)

end A322362

/-!
# A322364: Numerator of the sum of inverse products of parts in all partitions of n.

The programs for A322364, there is no canonical definition to state claims against.
-/

/-! ## A322364.P17598755640314115970

`A007841(n)/A000142(n)*A322365(n)`
-/

namespace A322364.P17598755640314115970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007841 n : ℚ) / (A000142 n : ℚ) * (A322365 n : ℚ)

end

end A322364.P17598755640314115970

/-! ## A322364.P13080773543121485927

`A000265(A007841(n)/A294609(n))`
-/

namespace A322364.P13080773543121485927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A007841 n : ℚ) / (A294609 n : ℚ))).toNat

end

end A322364.P13080773543121485927

/-! ## A322364.P885719152020633982

`A000265(A007841(n)/A083202(n))`
-/

namespace A322364.P885719152020633982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A007841 n : ℚ) / (A083202 n : ℚ))).toNat

end

end A322364.P885719152020633982

/-! ## A322364.P4726561023220126193

`A000265(A007841(n))/A294589(n)`
-/

namespace A322364.P4726561023220126193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (A007841 n).toNat : ℚ) / (A294589 n : ℚ)

end

end A322364.P4726561023220126193

/-!
# A322365: Denominator of the sum of inverse products of parts in all partitions of n.

The programs for A322365, there is no canonical definition to state claims against.
-/

/-! ## A322365.P9394738959526099822

`A000142(n)/A007841(n)*A322364(n)`
-/

namespace A322365.P9394738959526099822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A007841 n : ℚ) * (A322364 n : ℚ)

end

end A322365.P9394738959526099822

/-! ## A322365.P8720181238716054514

`A273712(2*(n+1))!*A177209(n)`
-/

namespace A322365.P8720181238716054514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A273712 (2 * (n + 1))).toNat : ℤ) * A177209 n

end

end A322365.P8720181238716054514

/-! ## A322365.P592186172353310513

`A177209(n)*A208203(A322670(n))`
-/

namespace A322365.P592186172353310513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177209 n * A208203 (A322670 n).toNat

end

end A322365.P592186172353310513

/-!
# A322366: Number of integers k in {0,1,...,n} such that k identical test tubes can be balanced in a centrifuge with n equally spaced holes.

The programs for A322366, there is no canonical definition to state claims against.
-/

/-! ## A322366.P4368459124410889220

`A181440(n+1)-A306275(A028310(n))`
-/

namespace A322366.P4368459124410889220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (n + 1) - A306275 (A028310 n).toNat

end

end A322366.P4368459124410889220

/-! ## A322366.P16671733663466949402

`A363886(A001405(n))+A062830(n)`
-/

namespace A322366.P16671733663466949402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363886 (A001405 n).toNat + A062830 n

end

end A322366.P16671733663466949402

/-! ## A322366.P14507277458199501445

`A062830(n)+A056626(A089977(n))`
-/

namespace A322366.P14507277458199501445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 n + A056626 (A089977 n).toNat

end

end A322366.P14507277458199501445

/-! ## A322366.P968736805535737754

`A062830(n)+A025441(A367072(n))`
-/

namespace A322366.P968736805535737754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 n + A025441 (A367072 n).toNat

end

end A322366.P968736805535737754

/-! ## A322366.P4677094643771691176

`A062830(n)+A000122(A096507(2*(n+1)))`
-/

namespace A322366.P4677094643771691176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 n + A000122 (A096507 (2 * (n + 1))).toNat

end

end A322366.P4677094643771691176

/-!
# A322367: Number of disconnected or empty integer partitions of n.

The programs for A322367, there is no canonical definition to state claims against.
-/

/-! ## A322367.P3638261697137586306

`A000007(n)+A000041(n)-A218970(n)`
-/

namespace A322367.P3638261697137586306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A000041 n - A218970 n)

end

end A322367.P3638261697137586306

/-! ## A322367.P12308150384627240132

`A000837(n)+A200976(n)-A218970(n)`
-/

namespace A322367.P12308150384627240132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 n + (A200976 n - A218970 n)

end

end A322367.P12308150384627240132

/-! ## A322367.P13850165441838222435

`A000041(n)-A218970(n)%A000041(2*n)`
-/

namespace A322367.P13850165441838222435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - Int.tmod (A218970 n) (A000041 (2 * n))

end

end A322367.P13850165441838222435

/-! ## A322367.P17789406262787119922

`A322393(∑[n])`
-/

namespace A322367.P17789406262787119922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322393 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A322367.P17789406262787119922

/-! ## A322367.P17968808415177320749

`and(or(1, 2^n-1), A322393(and(n²+n, -2)/2))`
-/

namespace A322367.P17968808415177320749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.lor 1 ((2 ^ n : ℤ) - 1)) (A322393 (SequenceMachineLib.roundAway ((Int.land (n ^ 2 + n : ℤ) (-2) : ℚ) / 2)).toNat)

end

end A322367.P17968808415177320749

/-!
# A322368: Heinz numbers of disconnected integer partitions.

The programs for A322368, there is no canonical definition to state claims against.
-/

/-! ## A322368.P8008073601418667829

`record[A327529(n+3)]`
-/

namespace A322368.P8008073601418667829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327529 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322368.P8008073601418667829

/-! ## A322368.P17883980083384840090

`A289509(n+1)-floor(acot(n))`
-/

namespace A322368.P17883980083384840090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289509 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A322368.P17883980083384840090

/-! ## A322368.P2523303227186091557

`comp[A305078(n+1)-1]+1`
-/

namespace A322368.P2523303227186091557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305078 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A322368.P2523303227186091557

/-! ## A322368.P2957148794927945837

`comp[A305103(n+1)-1]+1`
-/

namespace A322368.P2957148794927945837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305103 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A322368.P2957148794927945837

/-! ## A322368.P4027585874699989010

`comp[A328336(n+2)-1]+1`
-/

namespace A322368.P4027585874699989010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328336 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A322368.P4027585874699989010

/-! ## A322368.P1722827743579346206

`record[A316437(n+2)]-floor(acot(n))`
-/

namespace A322368.P1722827743579346206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316437 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A322368.P1722827743579346206

/-! ## A322368.P9376270114264405550

`comp[A328336(n+1)]+floor(acot(n))`
-/

namespace A322368.P9376270114264405550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328336 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A322368.P9376270114264405550

/-! ## A322368.P13932151379539909289

`record[C(2, n)!*A316437(n+1)]`
-/

namespace A322368.P13932151379539909289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.choose 2 n) : ℤ) * A316437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322368.P13932151379539909289

/-! ## A322368.P11965657074082222718

`A005451(A289509(n+1))`
-/

namespace A322368.P11965657074082222718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (A289509 (n + 1)).toNat

end

end A322368.P11965657074082222718

/-!
# A322370: For any n > 4: let p be the n-th prime number; a(n) is the least squarefree p-smooth integer congruent to 4 modulo p.

The programs for A322370, there is no canonical definition to state claims against.
-/

/-! ## A322370.P2485147063044847795

`A358576(A224962(2*(n+2))-A261214(n))`
-/

namespace A322370.P2485147063044847795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358576 (A224962 (2 * (n + 2)) - A261214 n).toNat

end

end A322370.P2485147063044847795

/-!
# A322371: a(n) is the least practical number that is divisible by prime(n).

The programs for A322371, there is no canonical definition to state claims against.
-/

/-! ## A322371.P7090704649573759951

`A000040(n+1)*A322372(n+1)`
-/

namespace A322371.P7090704649573759951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A322372 (n + 1)

end

end A322371.P7090704649573759951

/-! ## A322371.P1580639267731948200

`A008578(n+2)*A322372(n+1)`
-/

namespace A322371.P1580639267731948200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) * A322372 (n + 1)

end

end A322371.P1580639267731948200

/-! ## A322371.P16066251955387758672

`record[A275121(n+2)]`
-/

namespace A322371.P16066251955387758672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275121 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322371.P16066251955387758672

/-! ## A322371.P18057339250470708322

`A275121(A000040(n+1))`
-/

namespace A322371.P18057339250470708322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275121 (A000040 (n + 1)).toNat

end

end A322371.P18057339250470708322

/-! ## A322371.P9976340018522654635

`A275121(A008578(n+2))`
-/

namespace A322371.P9976340018522654635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275121 (A008578 (n + 2)).toNat

end

end A322371.P9976340018522654635

/-! ## A322371.P13067130862464010891

`A275121(A182986(n+2))`
-/

namespace A322371.P13067130862464010891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275121 (A182986 (n + 2)).toNat

end

end A322371.P13067130862464010891

/-! ## A322371.P7371870925929236654

`A275121(eq[n+1, A129283(n)])`
-/

namespace A322371.P7371870925929236654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275121 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322371.P7371870925929236654

/-! ## A322371.P12355905148988489134

`A275121(eq[1, A129283(n)-n])`
-/

namespace A322371.P12355905148988489134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275121 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322371.P12355905148988489134

/-! ## A322371.P11565277285030529059

`record[A006530(n+2)*A210445(n+2)]`
-/

namespace A322371.P11565277285030529059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) * A210445 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322371.P11565277285030529059

/-! ## A322371.P17705132521575441443

`record[A014963(n+2)*A210445(n+2)]`
-/

namespace A322371.P17705132521575441443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) * A210445 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322371.P17705132521575441443

/-! ## A322371.P2251212816699382222

`record[A020639(n+2)*A210445(n+2)]`
-/

namespace A322371.P2251212816699382222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) * A210445 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322371.P2251212816699382222

/-! ## A322371.P4870973273557676515

`record[(A000010(n+1)+1)*A210445(n+1)]`
-/

namespace A322371.P4870973273557676515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) + 1) * A210445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322371.P4870973273557676515

/-! ## A322371.P16056704499607020753

`A275121(A077017(n+2))`
-/

namespace A322371.P16056704499607020753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275121 (A077017 (n + 2)).toNat

end

end A322371.P16056704499607020753

/-! ## A322371.P3448725240339837460

`A275121(eq[n+1, A238505(n)])`
-/

namespace A322371.P3448725240339837460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275121 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322371.P3448725240339837460

/-! ## A322371.P7743864715102266746

`A275121(eq[1, A238505(n)-n])`
-/

namespace A322371.P7743864715102266746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238505 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275121 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322371.P7743864715102266746

/-!
# A322372: Least positive integer c such that c*prime(n) is practical.

The programs for A322372, there is no canonical definition to state claims against.
-/

/-! ## A322372.P267286267166473911

`A322371(n+1)/A000040(n+1)`
-/

namespace A322372.P267286267166473911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322371 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A322372.P267286267166473911

/-! ## A322372.P14994413116436286616

`A322371(n+1)/A008578(n+2)`
-/

namespace A322372.P14994413116436286616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322371 (n + 1) : ℚ) / (A008578 (n + 2) : ℚ)

end

end A322372.P14994413116436286616

/-! ## A322372.P12540816483817123356

`A210445(Δ[A007504(n)])`
-/

namespace A322372.P12540816483817123356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210445 (f1 (n + 1) - f1 n).toNat

end

end A322372.P12540816483817123356

/-! ## A322372.P4791454405492120178

`A210445(A000040(n+1))`
-/

namespace A322372.P4791454405492120178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210445 (A000040 (n + 1)).toNat

end

end A322372.P4791454405492120178

/-! ## A322372.P8790406492149303096

`A210445(A006005(n+1))`
-/

namespace A322372.P8790406492149303096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210445 (A006005 (n + 1)).toNat

end

end A322372.P8790406492149303096

/-! ## A322372.P6732387794026159317

`A210445(A063884(n+1))`
-/

namespace A322372.P6732387794026159317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210445 (A063884 (n + 1)).toNat

end

end A322372.P6732387794026159317

/-! ## A322372.P5302212609471107575

`A210445(A063904(n+1))`
-/

namespace A322372.P5302212609471107575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210445 (A063904 (n + 1)).toNat

end

end A322372.P5302212609471107575

/-! ## A322372.P8726164687562088765

`A210445(A008578(n+2))`
-/

namespace A322372.P8726164687562088765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210445 (A008578 (n + 2)).toNat

end

end A322372.P8726164687562088765

/-! ## A322372.P9098029827675168540

`A210445(A075643(n+2))`
-/

namespace A322372.P9098029827675168540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210445 (A075643 (n + 2)).toNat

end

end A322372.P9098029827675168540

/-! ## A322372.P11620501366951481279

`A210445(A182986(n+2))`
-/

namespace A322372.P11620501366951481279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210445 (A182986 (n + 2)).toNat

end

end A322372.P11620501366951481279

/-! ## A322372.P5645012762919999667

`A210445(record[A006530(n+2)])`
-/

namespace A322372.P5645012762919999667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210445 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A322372.P5645012762919999667

/-! ## A322372.P13450013637472932305

`A210445(record[A014963(n+2)])`
-/

namespace A322372.P13450013637472932305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210445 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A322372.P13450013637472932305

/-! ## A322372.P9694245324870879791

`A210445(record[A020639(n+2)])`
-/

namespace A322372.P9694245324870879791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210445 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A322372.P9694245324870879791

/-! ## A322372.P13411997812793029881

`A210445(record[A000010(n+1)+1])`
-/

namespace A322372.P13411997812793029881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210445 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A322372.P13411997812793029881

/-! ## A322372.P5190764826778328084

`A210445(eq[2, A000005(n+1)]+1)`
-/

namespace A322372.P5190764826778328084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210445 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A322372.P5190764826778328084

/-! ## A322372.P6587750287768551685

`record[A275121(n+2)]/record[A006530(n+2)]`
-/

namespace A322372.P6587750287768551685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275121 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ)

end

end A322372.P6587750287768551685

/-! ## A322372.P12372799184079838810

`A210445(A008347(n+1)+A008347(n))`
-/

namespace A322372.P12372799184079838810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210445 (A008347 (n + 1) + A008347 n).toNat

end

end A322372.P12372799184079838810

/-! ## A322372.P9639011872699193772

`gcd(A046952(n+1), A322371(n+1))`
-/

namespace A322372.P9639011872699193772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046952 (n + 1)) (A322371 (n + 1))

end

end A322372.P9639011872699193772

/-! ## A322372.P6225305087353574073

`gcd(A025543(n), A322371(n+1))`
-/

namespace A322372.P6225305087353574073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025543 n) (A322371 (n + 1))

end

end A322372.P6225305087353574073

/-! ## A322372.P5561748042218427600

`A210445(A383578(n+1))`
-/

namespace A322372.P5561748042218427600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210445 (A383578 (n + 1)).toNat

end

end A322372.P5561748042218427600

/-!
# A322373: Let d_i be the i-th divisor of n. Then a(n) is the largest k such that gcd(d_k, ..., d_tau(n)) = 1.

The programs for A322373, there is no canonical definition to state claims against.
-/

/-! ## A322373.P15032219568053824398

`A334954(n+1)-A222084(n+1)`
-/

namespace A322373.P15032219568053824398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - A222084 (n + 1)

end

end A322373.P15032219568053824398

/-! ## A322373.P13389814260586495171

`Δ[A006218(n)]+1-A222084(n+1)`
-/

namespace A322373.P13389814260586495171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (1 - A222084 (n + 1))

end

end A322373.P13389814260586495171

/-! ## A322373.P5972482025254728973

`A000005(n+1)+1-A222084(n+1)`
-/

namespace A322373.P5972482025254728973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (1 - A222084 (n + 1))

end

end A322373.P5972482025254728973

/-! ## A322373.P8970741088661342487

`A018856(A338506(n+1))+1-A222084(n+1)`
-/

namespace A322373.P8970741088661342487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018856 (A338506 (n + 1)).toNat + (1 - A222084 (n + 1))

end

end A322373.P8970741088661342487

/-! ## A322373.P14125397945476899509

`A005555(A018856(A338506(n+1))-A222084(n+1))`
-/

namespace A322373.P14125397945476899509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A018856 (A338506 (n + 1)).toNat - A222084 (n + 1)).toNat

end

end A322373.P14125397945476899509

/-!
# A322374: Where records occur in A322373.

The programs for A322374, there is no canonical definition to state claims against.
-/

/-! ## A322374.P12224804608658537993

`A119500(lt[A000009(n), A265516(n+1)])`
-/

namespace A322374.P12224804608658537993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119500 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A322374.P12224804608658537993

/-! ## A322374.P17959999608192902440

`A119500(∑[A173440(3*(n+1))^A173440(n+1)])`
-/

namespace A322374.P17959999608192902440
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173440 (3 * (n + 1)) : ℚ) ^ (A173440 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119500 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A322374.P17959999608192902440

/-! ## A322374.P3489872611934378962

`record[A124774(gcd(n, A192174(n)))]`
-/

namespace A322374.P3489872611934378962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124774 (Int.gcd (n : ℤ) (A192174 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322374.P3489872611934378962

/-! ## A322374.P8800774545252632371

`A119500(∑[A119842((n+3)²)])`
-/

namespace A322374.P8800774545252632371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119842 ((n + 3) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119500 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A322374.P8800774545252632371

/-!
# A322375: a(n) = A318366(A025487(n)).

The programs for A322375, there is no canonical definition to state claims against.
-/

/-! ## A322375.P16480323893514398994

`A318366(A025487(n+1))`
-/

namespace A322375.P16480323893514398994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318366 (A025487 (n + 1)).toNat

end

end A322375.P16480323893514398994

/-! ## A322375.P10666506509088467741

`A318366(record[A329899(n+1)])`
-/

namespace A322375.P10666506509088467741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318366 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A322375.P10666506509088467741

/-! ## A322375.P11678399754153036233

`A318366(record[A051466(n+2)])`
-/

namespace A322375.P11678399754153036233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318366 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A322375.P11678399754153036233

/-! ## A322375.P3635292674170100823

`A318366(A247451(n+1)*A307107(n+1))`
-/

namespace A322375.P3635292674170100823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318366 (A247451 (n + 1) * A307107 (n + 1)).toNat

end

end A322375.P3635292674170100823

/-! ## A322375.P3783902202307679362

`A318366(A181817(n+1)/A181816(n+1))`
-/

namespace A322375.P3783902202307679362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318366 (SequenceMachineLib.roundAway ((A181817 (n + 1) : ℚ) / (A181816 (n + 1) : ℚ))).toNat

end

end A322375.P3783902202307679362

/-! ## A322375.P3086271861973070218

`A318366(record[A046523(n+1)])`
-/

namespace A322375.P3086271861973070218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318366 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A322375.P3086271861973070218

/-! ## A322375.P9274767067714033210

`A318366(record[A083258(n+1)])`
-/

namespace A322375.P9274767067714033210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318366 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A322375.P9274767067714033210

/-!
# A322376: Positive integers k that are the sum of divisors of some positive integer but there exists no divisor d where 1 < d, k/d of k such that d and k/d have this property.

The programs for A322376, there is no canonical definition to state claims against.
-/

/-! ## A322376.P4560541293669048146

`A002191(A051037(n+1)%A320883(n+1))`
-/

namespace A322376.P4560541293669048146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (Int.tmod (A051037 (n + 1)) (A320883 (n + 1))).toNat

end

end A322376.P4560541293669048146

/-!
# A322377: Numbers n whose divisors can be partitioned into three disjoint sets whose sums are all sigma(n)/3 but no divisor of n has this property.

The programs for A322377, there is no canonical definition to state claims against.
-/

/-! ## A322377.P18417042969735265667

`∩[A204830(n+1), A388019(n+1)]`
-/

namespace A322377.P18417042969735265667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322377.P18417042969735265667

/-! ## A322377.P4342957783929598946

`∩[A225730(n+1), A388019(n+1)]`
-/

namespace A322377.P4342957783929598946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322377.P4342957783929598946

/-!
# A322378: Triangle read by rows: T(n,k) is the number of nondecreasing Dyck prefixes (i.e., left factors of nondecreasing Dyck paths) of length n and final height k (0 <= k <= n).

The programs for A322378, there is no canonical definition to state claims against.
-/

/-! ## A322378.P13515394264939203987

`A053121(n)-A107846(A137298(n+1)²)`
-/

namespace A322378.P13515394264939203987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 n - A107846 (A137298 (n + 1) ^ 2).toNat

end

end A322378.P13515394264939203987

/-! ## A322378.P16966311307086731216

`A178798(A247622(n))+A052173(A038722(n+1)-1)`
-/

namespace A322378.P16966311307086731216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A247622 n).toNat + A052173 (A038722 (n + 1) - 1).toNat

end

end A322378.P16966311307086731216

/-! ## A322378.P7860061232217737155

`A053121(n)-A107846(A213206(n))`
-/

namespace A322378.P7860061232217737155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 n - A107846 (A213206 n).toNat

end

end A322378.P7860061232217737155

/-! ## A322378.P16984702202594155448

`A053121(n)-A055641(A220614(2*n+3))`
-/

namespace A322378.P16984702202594155448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 n - A055641 (A220614 (2 * n + 3)).toNat

end

end A322378.P16984702202594155448

/-! ## A322378.P6168285604335436173

`A053121(n)-A010052(A293598(n+5))`
-/

namespace A322378.P6168285604335436173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 n - A010052 (A293598 (n + 5)).toNat

end

end A322378.P6168285604335436173

/-!
# A322379: Triangle T(s,d) read by rows: the number of 2-connected labeled cubic graphs with s simple edges and d double edges.

The programs for A322379, there is no canonical definition to state claims against.
-/

/-! ## A322379.P10316999889310753304

`A081123(n+1)%A093178(A113374(n+1))`
-/

namespace A322379.P10316999889310753304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081123 (n + 1)) (A093178 (A113374 (n + 1)).toNat)

end

end A322379.P10316999889310753304

/-! ## A322379.P3686096960329587084

`A000142(A008578(A011772(n+1)))%A000142(n)`
-/

namespace A322379.P3686096960329587084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000142 (A008578 (A011772 (n + 1)).toNat).toNat) (A000142 n)

end

end A322379.P3686096960329587084

/-! ## A322379.P3886403747132689005

`A260492(xor(n, (n+2)*or(1, n)))`
-/

namespace A322379.P3886403747132689005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260492 (Nat.xor n ((n + 2) * Nat.lor 1 n))

end

end A322379.P3886403747132689005

/-! ## A322379.P1838696125510732300

`C(n+1, A124938(3*n+4)+3)`
-/

namespace A322379.P1838696125510732300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A124938 (3 * n + 4) + 3).toNat

end

end A322379.P1838696125510732300

/-! ## A322379.P1654882561999640006

`A339629(floor(n/(xor(n, n+1)+1))*Δ[n²])`
-/

namespace A322379.P1654882561999640006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339629 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A322379.P1654882561999640006

/-!
# A322380: Numerator of the sum of inverse products of parts in all strict partitions of n.

The programs for A322380, there is no canonical definition to state claims against.
-/

/-! ## A322380.P5506115478280963978

`A007838(n)/gcd(A001710(n), A007838(n))`
-/

namespace A322380.P5506115478280963978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007838 n : ℚ) / (Int.gcd (A001710 n) (A007838 n) : ℚ)

end

end A322380.P5506115478280963978

/-! ## A322380.P12796794855407019086

`A007838(n)/A000142(n)*A322381(n)`
-/

namespace A322380.P12796794855407019086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007838 n : ℚ) / (A000142 n : ℚ) * (A322381 n : ℚ)

end

end A322380.P12796794855407019086

/-! ## A322380.P17370236779632087553

`(n!-A351901(n))/A000142(n)*A322381(n)`
-/

namespace A322380.P17370236779632087553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) - A351901 n : ℚ) / (A000142 n : ℚ) * (A322381 n : ℚ)

end

end A322380.P17370236779632087553

/-! ## A322380.P12086440852532004177

`A129177(A000125(n)+n)/A000142(n)*A322381(n)`
-/

namespace A322380.P12086440852532004177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129177 (A000125 n + (n : ℤ)).toNat : ℚ) / (A000142 n : ℚ) * (A322381 n : ℚ)

end

end A322380.P12086440852532004177

/-! ## A322380.P11279232553417835853

`A129177(A000292(n+1)-n²)/A000142(n)*A322381(n)`
-/

namespace A322380.P11279232553417835853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129177 (A000292 (n + 1) - (n ^ 2 : ℤ)).toNat : ℚ) / (A000142 n : ℚ) * (A322381 n : ℚ)

end

end A322380.P11279232553417835853

/-!
# A322381: Denominator of the sum of inverse products of parts in all strict partitions of n.

The programs for A322381, there is no canonical definition to state claims against.
-/

/-! ## A322381.P14425632959628740812

`A000142(n)/A007838(n)*A322380(n)`
-/

namespace A322381.P14425632959628740812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A007838 n : ℚ) * (A322380 n : ℚ)

end

end A322381.P14425632959628740812

/-! ## A322381.P12812455831845791720

`A000142(n)/gcd(A001710(n), A007838(n))`
-/

namespace A322381.P12812455831845791720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (Int.gcd (A001710 n) (A007838 n) : ℚ)

end

end A322381.P12812455831845791720

/-! ## A322381.P4609049862513052272

`A000142(n)/(n!-A351901(n))*A322380(n)`
-/

namespace A322381.P4609049862513052272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / ((Nat.factorial n : ℤ) - A351901 n : ℚ) * (A322380 n : ℚ)

end

end A322381.P4609049862513052272

/-! ## A322381.P4528869996129960166

`A000142(n)/A129177(A000125(n)+n)*A322380(n)`
-/

namespace A322381.P4528869996129960166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A129177 (A000125 n + (n : ℤ)).toNat : ℚ) * (A322380 n : ℚ)

end

end A322381.P4528869996129960166

/-! ## A322381.P18226803575382044953

`A000142(n)/A129177(A000292(n+1)-n²)*A322380(n)`
-/

namespace A322381.P18226803575382044953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A129177 (A000292 (n + 1) - (n ^ 2 : ℤ)).toNat : ℚ) * (A322380 n : ℚ)

end

end A322381.P18226803575382044953

/-!
# A322382: a(n) = p*a(n/p) + 1, where p is the smallest prime divisor of n; a(1)=0.

The programs for A322382, the canonical program `A322382.P2818672771090894339` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322382 has offset 1).

The definition of A322382 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322382.P2818672771090894339

`A332994(n+1)-(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A322382

/-- `A332994(n+1)-(n+1)` -/
def P2818672771090894339.Spec : Prop :=
  ∀ n, P2818672771090894339.a n = A322382 (n + 1)

theorem P2818672771090894339.correct : P2818672771090894339.Spec := by
  intro n
  simp only [A322382, Nat.add_sub_cancel]

end A322382

/-! ## A322382.P1486067169262490614

`A339423(n+1)+A057427(n)`
-/

namespace A322382.P1486067169262490614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339423 (n + 1) + A057427 n

end

end A322382.P1486067169262490614

namespace A322382

/-- `A339423(n+1)+A057427(n)` -/
def P1486067169262490614.Spec : Prop :=
  ∀ n, P1486067169262490614.a n = A322382 (n + 1)

end A322382

/-! ## A322382.P5045455470650751958

`A339423(n+1)-A057428(n)`
-/

namespace A322382.P5045455470650751958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339423 (n + 1) - A057428 n

end

end A322382.P5045455470650751958

namespace A322382

/-- `A339423(n+1)-A057428(n)` -/
def P5045455470650751958.Spec : Prop :=
  ∀ n, P5045455470650751958.a n = A322382 (n + 1)

end A322382

/-! ## A322382.P15384316507280563958

`A001065(n+1)-A333784(n+1)`
-/

namespace A322382.P15384316507280563958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A333784 (n + 1)

end

end A322382.P15384316507280563958

namespace A322382

/-- `A001065(n+1)-A333784(n+1)` -/
def P15384316507280563958.Spec : Prop :=
  ∀ n, P15384316507280563958.a n = A322382 (n + 1)

end A322382

/-! ## A322382.P1542273763467037068

`A006022(n+1)-A333791(n+1)`
-/

namespace A322382.P1542273763467037068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006022 (n + 1) - A333791 (n + 1)

end

end A322382.P1542273763467037068

namespace A322382

/-- `A006022(n+1)-A333791(n+1)` -/
def P1542273763467037068.Spec : Prop :=
  ∀ n, P1542273763467037068.a n = A322382 (n + 1)

end A322382

/-! ## A322382.P15309574551270465039

`A332994(n+1)%A000027(n+1)`
-/

namespace A322382.P15309574551270465039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332994 (n + 1)) (A000027 (n + 1))

end

end A322382.P15309574551270465039

namespace A322382

/-- `A332994(n+1)%A000027(n+1)` -/
def P15309574551270465039.Spec : Prop :=
  ∀ n, P15309574551270465039.a n = A322382 (n + 1)

end A322382

/-! ## A322382.P12923138291438054161

`A001065(n+1)-(A333791(n+1)+A333783(n+1))`
-/

namespace A322382.P12923138291438054161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - (A333791 (n + 1) + A333783 (n + 1))

end

end A322382.P12923138291438054161

namespace A322382

/-- `A001065(n+1)-(A333791(n+1)+A333783(n+1))` -/
def P12923138291438054161.Spec : Prop :=
  ∀ n, P12923138291438054161.a n = A322382 (n + 1)

end A322382

/-! ## A322382.P14822691693613360693

`A006022(n+1)+A333783(n+1)-A333784(n+1)`
-/

namespace A322382.P14822691693613360693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006022 (n + 1) + (A333783 (n + 1) - A333784 (n + 1))

end

end A322382.P14822691693613360693

namespace A322382

/-- `A006022(n+1)+A333783(n+1)-A333784(n+1)` -/
def P14822691693613360693.Spec : Prop :=
  ∀ n, P14822691693613360693.a n = A322382 (n + 1)

end A322382

/-! ## A322382.P787100173251088419

`A065475(A065475(n+1))+A339423(n+1)-A065475(n+1)`
-/

namespace A322382.P787100173251088419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A065475 (n + 1)).toNat + (A339423 (n + 1) - A065475 (n + 1))

end

end A322382.P787100173251088419

namespace A322382

/-- `A065475(A065475(n+1))+A339423(n+1)-A065475(n+1)` -/
def P787100173251088419.Spec : Prop :=
  ∀ n, P787100173251088419.a n = A322382 (n + 1)

end A322382

/-! ## A322382.P5231713201045146967

`A339423(2*(n+1))/2`
-/

namespace A322382.P5231713201045146967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339423 (2 * (n + 1)) : ℚ) / 2

end

end A322382.P5231713201045146967

namespace A322382

/-- `A339423(2*(n+1))/2` -/
def P5231713201045146967.Spec : Prop :=
  ∀ n, P5231713201045146967.a n = (A322382 (n + 1) : ℚ)

end A322382

/-! ## A322382.P9888091020036795012

`A004526(A339423(2*(n+1)))`
-/

namespace A322382.P9888091020036795012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A339423 (2 * (n + 1))).toNat

end

end A322382.P9888091020036795012

namespace A322382

/-- `A004526(A339423(2*(n+1)))` -/
def P9888091020036795012.Spec : Prop :=
  ∀ n, P9888091020036795012.a n = A322382 (n + 1)

end A322382

/-! ## A322382.P10194672445142396490

`(A048050(2*(n+1))-A333784(2*(n+1)))/2`
-/

namespace A322382.P10194672445142396490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048050 (2 * (n + 1)) - A333784 (2 * (n + 1)) : ℚ) / 2

end

end A322382.P10194672445142396490

namespace A322382

/-- `(A048050(2*(n+1))-A333784(2*(n+1)))/2` -/
def P10194672445142396490.Spec : Prop :=
  ∀ n, P10194672445142396490.a n = (A322382 (n + 1) : ℚ)

end A322382

/-!
# A322385: 2 and prime numbers whose prime index is a product of at least two not necessarily distinct prime numbers already in the sequence.

The programs for A322385, there is no canonical definition to state claims against.
-/

/-! ## A322385.P9575669987348030909

`p?[A322386(n+1)]`
-/

namespace A322385.P9575669987348030909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A322385.P9575669987348030909

/-! ## A322385.P7733196269847461529

`∩[A007821(n+1), A322386(n+1)]`
-/

namespace A322385.P7733196269847461529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322385.P7733196269847461529

/-! ## A322385.P1745515238023708861

`∩[A322386(n+1), A333242(n+1)]`
-/

namespace A322385.P1745515238023708861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322385.P1745515238023708861

/-! ## A322385.P13801221366908566391

`∩[A322386(n+1), A333364(n+1)]`
-/

namespace A322385.P13801221366908566391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322385.P13801221366908566391

/-! ## A322385.P1505760207217895693

`∩[A000040(n+1), A322386(n+1)]`
-/

namespace A322385.P1505760207217895693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322385.P1505760207217895693

/-! ## A322385.P15852575917310063179

`∩[A045319(n+1), A322386(n+1)]`
-/

namespace A322385.P15852575917310063179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322385.P15852575917310063179

/-! ## A322385.P15181047798618518782

`∩[A045344(n+1), A322386(n+1)]`
-/

namespace A322385.P15181047798618518782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322385.P15181047798618518782

/-! ## A322385.P216865801404745859

`∩[A106118(n+1), A322386(n+1)]`
-/

namespace A322385.P216865801404745859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322385.P216865801404745859

/-! ## A322385.P12571969331974325000

`∩[A116974(n+1), A322386(n+1)]`
-/

namespace A322385.P12571969331974325000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322385.P12571969331974325000

/-! ## A322385.P13771349879186462728

`∩[A182986(n+1), A322386(n+1)]`
-/

namespace A322385.P13771349879186462728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322385.P13771349879186462728

/-! ## A322385.P5473405210963055245

`∩[A197636(n+1), A322386(n+1)]`
-/

namespace A322385.P5473405210963055245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322385.P5473405210963055245

/-! ## A322385.P267137640748137375

`∩[A132630(n+1), A322386(n+1)]`
-/

namespace A322385.P267137640748137375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322385.P267137640748137375

/-! ## A322385.P7186750903808987608

`∩[A182140(n+1), A322386(n+1)]`
-/

namespace A322385.P7186750903808987608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322385.P7186750903808987608

/-! ## A322385.P10687291842324902194

`∩[A189710(n+1), A322386(n+1)]`
-/

namespace A322385.P10687291842324902194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322385.P10687291842324902194

/-! ## A322385.P14747948481828921590

`∩[A322386(n+1), A328232(n+1)]`
-/

namespace A322385.P14747948481828921590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322385.P14747948481828921590

/-! ## A322385.P13733772216317145234

`record[A006530(A322386(n+2))]`
-/

namespace A322385.P13733772216317145234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A322386 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322385.P13733772216317145234

/-! ## A322385.P6415717388165567054

`record[A020639(A322386(n+3))]`
-/

namespace A322385.P6415717388165567054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A322386 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322385.P6415717388165567054

/-! ## A322385.P7754701142201947226

`filter[A322386(n+1), A010051(#)]`
-/

namespace A322385.P7754701142201947226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A322385.P7754701142201947226

/-! ## A322385.P6337511551850172982

`filter[A322386(n+1), A373338(#)]`
-/

namespace A322385.P6337511551850172982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373338 (f1 j).toNat = 1) n)

end

end A322385.P6337511551850172982

/-! ## A322385.P3670761580212374133

`filter[A322386(n+2), A389449(#)]`
-/

namespace A322385.P3670761580212374133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322386 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389449 (f1 j).toNat = 1) n)

end

end A322385.P3670761580212374133

/-!
# A322386: Numbers whose prime indices are not prime and already belong to the sequence.

The programs for A322386, there is no canonical definition to state claims against.
-/

/-! ## A322386.P9052807410346239099

`record[A032742(A323164(A322385(n+1)))]`
-/

namespace A322386.P9052807410346239099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A323164 (A322385 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322386.P9052807410346239099

/-! ## A322386.P6462937736831966530

`∪[A291636(n+1), A331489(n+2)]`
-/

namespace A322386.P6462937736831966530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331489 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A322386.P6462937736831966530

/-! ## A322386.P297869153093585705

`∪[A000720(A322385(n+1)), A331489(n+1)]`
-/

namespace A322386.P297869153093585705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A322385 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331489 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A322386.P297869153093585705

/-! ## A322386.P8149517189011789253

`record[A032742(A291636(n+1))]`
-/

namespace A322386.P8149517189011789253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A291636 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322386.P8149517189011789253

/-! ## A322386.P11047690243803114307

`record[A291636(n+1)+1-A000463(A291636(n+1)+1)]`
-/

namespace A322386.P11047690243803114307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291636 (n + 1) + 1 - A000463 (A291636 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322386.P11047690243803114307

/-!
# A322387: Number of 2-vertex-connected integer partitions of n.

The programs for A322387, there is no canonical definition to state claims against.
-/

/-! ## A322387.P17416006457933903481

`A304716(n+1)-(A322390(n+1)+1)`
-/

namespace A322387.P17416006457933903481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304716 (n + 1) - (A322390 (n + 1) + 1)

end

end A322387.P17416006457933903481

/-!
# A322388: Heinz numbers of 2-vertex-connected integer partitions.

The programs for A322388, there is no canonical definition to state claims against.
-/

/-! ## A322388.P7516511044358092186

`∩[A305103(n+1), A356064(n+1)]`
-/

namespace A322388.P7516511044358092186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322388.P7516511044358092186

/-! ## A322388.P17483007051237160464

`∩[A318978(n+1), A356064(n+1)]`
-/

namespace A322388.P17483007051237160464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322388.P17483007051237160464

/-! ## A322388.P7488632336424282993

`∩[A356064(n+1), A328336(n+2)]`
-/

namespace A322388.P7488632336424282993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328336 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322388.P7488632336424282993

/-! ## A322388.P14348673568116687432

`∩[A113909(n+1), A356064(n+1)]`
-/

namespace A322388.P14348673568116687432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322388.P14348673568116687432

/-!
# A322389: Vertex-connectivity of the integer partition with Heinz number n.

The programs for A322389, there is no canonical definition to state claims against.
-/

/-! ## A322389.P16289258929581110357

`A303975(2-A327529(n+1)+n)`
-/

namespace A322389.P16289258929581110357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (2 - A327529 (n + 1) + (n : ℤ)).toNat

end

end A322389.P16289258929581110357

/-! ## A322389.P14704871612161693130

`A303975((n+1)/A327529(n+1))`
-/

namespace A322389.P14704871612161693130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A327529 (n + 1) : ℚ))).toNat

end

end A322389.P14704871612161693130

/-! ## A322389.P11145505969696420451

`C(A303975(n+1), A327512(n+1))`
-/

namespace A322389.P11145505969696420451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A303975 (n + 1)).toNat (A327512 (n + 1)).toNat

end

end A322389.P11145505969696420451

/-! ## A322389.P3208847139837160139

`A303975(C(n+1, A327529(n+1)))`
-/

namespace A322389.P3208847139837160139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (Nat.choose (n + 1) (A327529 (n + 1)).toNat)

end

end A322389.P3208847139837160139

/-! ## A322389.P9469171273035165303

`and(A303975(n+1), A355741(n+1))`
-/

namespace A322389.P9469171273035165303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A303975 (n + 1)) (A355741 (n + 1))

end

end A322389.P9469171273035165303

/-! ## A322389.P6246230115042517321

`C(A001221(A003963(n+1)), A327512(n+1))`
-/

namespace A322389.P6246230115042517321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001221 (A003963 (n + 1)).toNat).toNat (A327512 (n + 1)).toNat

end

end A322389.P6246230115042517321

/-! ## A322389.P1015144658581630451

`C(A001221(A003963(n+1)), A327529(n+1))`
-/

namespace A322389.P1015144658581630451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001221 (A003963 (n + 1)).toNat).toNat (A327529 (n + 1)).toNat

end

end A322389.P1015144658581630451

/-! ## A322389.P10618864798443994211

`C(A303975(n+1), A000032(A305079(n+1)))`
-/

namespace A322389.P10618864798443994211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A303975 (n + 1)).toNat (A000032 (A305079 (n + 1)).toNat).toNat

end

end A322389.P10618864798443994211

/-! ## A322389.P9439017025035967585

`C(A001221(A290103(n+1)), A327512(n+1))`
-/

namespace A322389.P9439017025035967585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001221 (A290103 (n + 1)).toNat).toNat (A327512 (n + 1)).toNat

end

end A322389.P9439017025035967585

/-!
# A322390: Number of integer partitions of n with vertex-connectivity 1.

The programs for A322390, there is no canonical definition to state claims against.
-/

/-! ## A322390.P10317098413010219133

`A304716(n+1)-(A322387(n+1)+1)`
-/

namespace A322390.P10317098413010219133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304716 (n + 1) - (A322387 (n + 1) + 1)

end

end A322390.P10317098413010219133

/-! ## A322390.P7633996063085576419

`A023443(A304716(n+1)-A322387(n+1))`
-/

namespace A322390.P7633996063085576419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A304716 (n + 1) - A322387 (n + 1)).toNat

end

end A322390.P7633996063085576419

/-! ## A322390.P9684718647840869475

`Δ[A064573(A187829(A028310(n)))]`
-/

namespace A322390.P9684718647840869475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064573 (A187829 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A322390.P9684718647840869475

/-! ## A322390.P6188440227530842

`A246277(n+1)+A007949(A283174(n))`
-/

namespace A322390.P6188440227530842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (n + 1) + A007949 (A283174 n).toNat

end

end A322390.P6188440227530842

/-! ## A322390.P12554575476199651586

`A337509(A370204(n))+A246277(n+1)`
-/

namespace A322390.P12554575476199651586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337509 (A370204 n).toNat + A246277 (n + 1)

end

end A322390.P12554575476199651586

/-!
# A322391: Number of integer partitions of n with edge-connectivity 1.

The programs for A322391, there is no canonical definition to state claims against.
-/

/-! ## A322391.P3423426809332390464

`A218970(n+1)-A322335(n+1)`
-/

namespace A322391.P3423426809332390464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218970 (n + 1) - A322335 (n + 1)

end

end A322391.P3423426809332390464

/-!
# A322393: Regular triangle read by rows where T(n,k) is the number of integer partitions of n with edge-connectivity k, for 0 <= k <= n.

The programs for A322393, there is no canonical definition to state claims against.
-/

/-! ## A322393.P8442715379916262307

`C(A238349(n), A238354(A238389(n)))`
-/

namespace A322393.P8442715379916262307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A238349 n).toNat (A238354 (A238389 n).toNat).toNat

end

end A322393.P8442715379916262307

/-! ## A322393.P10870020225392423723

`C(A079440(n), A135313(A267480(n)))`
-/

namespace A322393.P10870020225392423723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A079440 n).toNat (A135313 (A267480 n).toNat).toNat

end

end A322393.P10870020225392423723

/-! ## A322393.P17118305666904441654

`C(A238349(n), A296188(A296188(n+1)))`
-/

namespace A322393.P17118305666904441654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A238349 n).toNat (A296188 (A296188 (n + 1)).toNat).toNat

end

end A322393.P17118305666904441654

/-! ## A322393.P17102109677319066034

`A238349(n)%A133932(A264758(2*n+1))`
-/

namespace A322393.P17102109677319066034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238349 n) (A133932 (A264758 (2 * n + 1)).toNat)

end

end A322393.P17102109677319066034

/-! ## A322393.P14658989658178384786

`C(A238349(n), A212121(A284100(3*n+1)))`
-/

namespace A322393.P14658989658178384786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A238349 n).toNat (A212121 (A284100 (3 * n + 1)).toNat).toNat

end

end A322393.P14658989658178384786

/-!
# A322394: Heinz numbers of integer partitions with edge-connectivity 1.

The programs for A322394, there is no canonical definition to state claims against.
-/

/-! ## A322394.P12376684644695009913

`A001281(A207574(n+1))`
-/

namespace A322394.P12376684644695009913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A207574 (n + 1)).toNat

end

end A322394.P12376684644695009913

/-! ## A322394.P17856927395956488291

`eq[A014306(n), A181859(n)]`
-/

namespace A322394.P17856927395956488291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A322394.P17856927395956488291

/-! ## A322394.P10788166938935910425

`eq[A141044(n), A181859(n)]`
-/

namespace A322394.P10788166938935910425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A322394.P10788166938935910425

/-! ## A322394.P2327775784278335362

`eq[A157928(n), A181859(n)]`
-/

namespace A322394.P2327775784278335362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A322394.P2327775784278335362

/-! ## A322394.P14027594616390648805

`eq[A165560(n), A181859(n)]`
-/

namespace A322394.P14027594616390648805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A322394.P14027594616390648805

/-! ## A322394.P3337755024611739621

`eq[A181859(n), A354874(n)]`
-/

namespace A322394.P3337755024611739621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181859 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354874 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A322394.P3337755024611739621

/-! ## A322394.P13284524584089226814

`eq[A181859(n), A356428(n)]`
-/

namespace A322394.P13284524584089226814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181859 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A322394.P13284524584089226814

/-! ## A322394.P9926077146838728754

`eq[A181859(n), A230773(n+1)]`
-/

namespace A322394.P9926077146838728754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181859 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230773 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A322394.P9926077146838728754

/-! ## A322394.P14251000068864993634

`eq[A181859(n), A393569(n+1)]`
-/

namespace A322394.P14251000068864993634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181859 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393569 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A322394.P14251000068864993634

/-!
# A322395: Number of labeled simple connected graphs with n vertices whose bridges are all leaves, meaning at least one end of any bridge is an endpoint of the graph.

The programs for A322395, there is no canonical definition to state claims against.
-/

/-! ## A322395.P4291402510939758432

`A001187(n)-A327079(n%A001187(n))`
-/

namespace A322395.P4291402510939758432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001187 n - A327079 (Int.tmod (n : ℤ) (A001187 n)).toNat

end

end A322395.P4291402510939758432

/-! ## A322395.P14859978994070442394

`A001187(n)-A052928(A327079(n))`
-/

namespace A322395.P14859978994070442394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001187 n - A052928 (A327079 n).toNat

end

end A322395.P14859978994070442394

/-! ## A322395.P2961421962596848179

`A062740(n)/2^n-A052928(A327079(n))`
-/

namespace A322395.P2961421962596848179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062740 n : ℚ) / (2 ^ n : ℚ) - (A052928 (A327079 n).toNat : ℚ)

end

end A322395.P2961421962596848179

/-!
# A322396: Number of unlabeled simple connected graphs with n vertices whose bridges are all leaves, meaning at least one end of any bridge is an endpoint of the graph.

The programs for A322396, there is no canonical definition to state claims against.
-/

/-! ## A322396.P13422165138265719725

`A055253(A218288(n+1)+A000142(n))`
-/

namespace A322396.P13422165138265719725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055253 (A218288 (n + 1) + A000142 n).toNat

end

end A322396.P13422165138265719725

/-!
# A322397: Number of 2-edge-connected clutters spanning n vertices.

The programs for A322397, there is no canonical definition to state claims against.
-/

/-! ## A322397.P17123398635523354002

`A326870(n)-A096948(A072445(n))`
-/

namespace A322397.P17123398635523354002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326870 n - A096948 (A072445 n).toNat

end

end A322397.P17123398635523354002

/-!
# A322399: Number of non-isomorphic 2-edge-connected clutters spanning n vertices.

The programs for A322399, there is no canonical definition to state claims against.
-/

/-! ## A322399.P12055290757058118325

`a(n-1)²+5` with `a(0)=0, a(1)=0, a(2)=2, a(3)=12`
-/

namespace A322399.P12055290757058118325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 12] fun n a =>
  a (n - 1) ^ 2 + 5

end

end A322399.P12055290757058118325

