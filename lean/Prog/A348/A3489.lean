import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C033
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
# A348901: G.f. A(x) satisfies: A(x) = 1 / (1 + x - 2 * x * A(2*x)).

The programs for A348901, there is no canonical definition to state claims against.
-/

/-! ## A348901.P13301178748865696905

`A186219(A248828(n))`
-/

namespace A348901.P13301178748865696905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186219 (A248828 n).toNat

end

end A348901.P13301178748865696905

/-!
# A348903: G.f. A(x) satisfies: A(x) = 1 / (1 - 2*x - x * A(2*x)).

The programs for A348903, there is no canonical definition to state claims against.
-/

/-! ## A348903.P17007170531183771620

`A165704(A135079(n)-1)`
-/

namespace A348903.P17007170531183771620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165704 (A135079 n - 1).toNat

end

end A348903.P17007170531183771620

/-!
# A348904: G.f. A(x) satisfies: A(x) = 1 / (1 - 3*x - x * A(2*x)).

The programs for A348904, there is no canonical definition to state claims against.
-/

/-! ## A348904.P2644586026282480368

`5*A170882(a(n-1))-1` with `a(0)=1`
-/

namespace A348904.P2644586026282480368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * A170882 (a (n - 1)).toNat - 1

end

end A348904.P2644586026282480368

/-!
# A348905: Number of permutations of size n that require exactly n-1 iterations of the pop-stack sorting map to reach the identity.

The programs for A348905, there is no canonical definition to state claims against.
-/

/-! ## A348905.P18104346371267822887

`A359413(∑[n+1])`
-/

namespace A348905.P18104346371267822887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359413 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A348905.P18104346371267822887

/-! ## A348905.P15853217186796060617

`A008621(A162664(n!))`
-/

namespace A348905.P15853217186796060617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A162664 (Nat.factorial n)).toNat

end

end A348905.P15853217186796060617

/-! ## A348905.P6607225619839982533

`A008611(A125657(n)+A000138(n))`
-/

namespace A348905.P6607225619839982533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A125657 n + A000138 n).toNat

end

end A348905.P6607225619839982533

/-!
# A348906: Squares with a square number of 1's in their binary expansion.

The programs for A348906, the canonical program `A348906.P13398329411411546203` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348906 has offset 1).

The definition of A348906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1563 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348906.P13398329411411546203

`eq[1, A010052(A159918(n))]²`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A348906

/-- `eq[1, A010052(A159918(n))]²` -/
def P13398329411411546203.Spec : Prop :=
  ∀ n, (P13398329411411546203.a n : ℤ) = A348906 (n + 1)

theorem P13398329411411546203.correct : P13398329411411546203.Spec := by
  intro n
  simp only [A348906, Nat.add_sub_cancel]

end A348906

/-! ## A348906.P3631681434539224316

`eq[A002828(A159918(n)), A057427(n)]²`
-/

namespace A348906.P3631681434539224316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A159918 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A348906.P3631681434539224316

namespace A348906

/-- `eq[A002828(A159918(n)), A057427(n)]²` -/
def P3631681434539224316.Spec : Prop :=
  ∀ n, (P3631681434539224316.a n : ℤ) = A348906 (n + 1)

end A348906

/-! ## A348906.P15068988244690514104

`record[A008683(4*(n+1))+n^A000122(A159918(n))]`
-/

namespace A348906.P15068988244690514104
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (4 * (n + 1)) : ℚ) + (n : ℚ) ^ (A000122 (A159918 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348906.P15068988244690514104

namespace A348906

/-- `record[A008683(4*(n+1))+n^A000122(A159918(n))]` -/
def P15068988244690514104.Spec : Prop :=
  ∀ n, P15068988244690514104.a n = (A348906 (n + 1) : ℚ)

end A348906

/-! ## A348906.P17787326654096239249

`∩[A084561(n+1), n²]`
-/

namespace A348906.P17787326654096239249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084561 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A348906.P17787326654096239249

namespace A348906

/-- `∩[A084561(n+1), n²]` -/
def P17787326654096239249.Spec : Prop :=
  ∀ n, (P17787326654096239249.a n : ℤ) = A348906 (n + 1)

end A348906

/-!
# A348907: If n is prime, a(n) = n, else a(n) = a(n-pi(n)), n >= 2; where pi is the prime counting function A000720.

The programs for A348907, the canonical program `A348907.P8875665345231982490` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348907 has offset 2).

The definition of A348907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348907.P5341103467123971693

`A000040(A349191(n+1))`
-/

namespace A348907.P5341103467123971693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A349191 (n + 1)).toNat

end

end A348907.P5341103467123971693

namespace A348907

/-- `A000040(A349191(n+1))` -/
def P5341103467123971693.Spec : Prop :=
  ∀ n, P5341103467123971693.a n = A348907 (n + 2)

end A348907

/-! ## A348907.P17000422215083289435

`A008578(A349191(n+1)+1)`
-/

namespace A348907.P17000422215083289435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A349191 (n + 1) + 1).toNat

end

end A348907.P17000422215083289435

namespace A348907

/-- `A008578(A349191(n+1)+1)` -/
def P17000422215083289435.Spec : Prop :=
  ∀ n, P17000422215083289435.a n = A348907 (n + 2)

end A348907

/-! ## A348907.P10706907229739446528

`A158611(A349191(n+1)+2)`
-/

namespace A348907.P10706907229739446528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A349191 (n + 1) + 2).toNat

end

end A348907.P10706907229739446528

namespace A348907

/-- `A158611(A349191(n+1)+2)` -/
def P10706907229739446528.Spec : Prop :=
  ∀ n, P10706907229739446528.a n = A348907 (n + 2)

end A348907

/-! ## A348907.P11246726081462137911

`A207790(2*A349191(n+1))`
-/

namespace A348907.P11246726081462137911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A349191 (n + 1)).toNat

end

end A348907.P11246726081462137911

namespace A348907

/-- `A207790(2*A349191(n+1))` -/
def P11246726081462137911.Spec : Prop :=
  ∀ n, P11246726081462137911.a n = A348907 (n + 2)

end A348907

/-! ## A348907.P8875665345231982490

`A008578(A342165(n+2))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A348907

/-- `A008578(A342165(n+2))` -/
def P8875665345231982490.Spec : Prop :=
  ∀ n, P8875665345231982490.a n = A348907 (n + 2)

theorem P8875665345231982490.correct : P8875665345231982490.Spec := by
  intro n
  simp only [A348907, Nat.add_sub_cancel]

end A348907

/-! ## A348907.P2161262955780966491

`A000040(A342165(n+2)-1)`
-/

namespace A348907.P2161262955780966491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A342165 (n + 2) - 1).toNat

end

end A348907.P2161262955780966491

namespace A348907

/-- `A000040(A342165(n+2)-1)` -/
def P2161262955780966491.Spec : Prop :=
  ∀ n, P2161262955780966491.a n = A348907 (n + 2)

end A348907

/-! ## A348907.P5834852350327083789

`A237739(A000265(A071574(n+2)))`
-/

namespace A348907.P5834852350327083789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237739 (A000265 (A071574 (n + 2)).toNat).toNat

end

end A348907.P5834852350327083789

namespace A348907

/-- `A237739(A000265(A071574(n+2)))` -/
def P5834852350327083789.Spec : Prop :=
  ∀ n, P5834852350327083789.a n = A348907 (n + 2)

end A348907

/-! ## A348907.P9730370088600338258

`A000040(A269848(A064989(A269847(n+2))))`
-/

namespace A348907.P9730370088600338258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A269848 (A064989 (A269847 (n + 2)).toNat).toNat).toNat

end

end A348907.P9730370088600338258

namespace A348907

/-- `A000040(A269848(A064989(A269847(n+2))))` -/
def P9730370088600338258.Spec : Prop :=
  ∀ n, P9730370088600338258.a n = A348907 (n + 2)

end A348907

/-!
# A348910: a(n) is the "real" part of f(n) = Sum_{k>=0, d_k>0} w^(d_k-1) * (-2)^k where Sum_{k>=0} d_k * 4^k is the base-4 representation of n and w = -1/2 + sqrt(-3)/2 is a primitive cube root of unity; sequence A348911 gives "w" parts.

The programs for A348910, there is no canonical definition to state claims against.
-/

/-! ## A348910.P17970593725130292645

`A348911(A057300(n))`
-/

namespace A348910.P17970593725130292645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348911 (A057300 n).toNat

end

end A348910.P17970593725130292645

/-! ## A348910.P4665178888632138857

`-A348911(A004468(n))`
-/

namespace A348910.P4665178888632138857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A348911 (A004468 n).toNat

end

end A348910.P4665178888632138857

/-! ## A348910.P4372682863729646584

`-A348911(xor(n, A006015(n)))`
-/

namespace A348910.P4372682863729646584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A348911 (Int.xor (n : ℤ) (A006015 n)).toNat

end

end A348910.P4372682863729646584

/-! ## A348910.P5579940429199495115

`-A348911(A006015(A006015(n)))`
-/

namespace A348910.P5579940429199495115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A348911 (A006015 (A006015 n).toNat).toNat

end

end A348910.P5579940429199495115

/-! ## A348910.P3751625340515346443

`A318702(A048728(n))+A318702(n)`
-/

namespace A348910.P3751625340515346443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318702 (A048728 n).toNat + A318702 n

end

end A348910.P3751625340515346443

/-! ## A348910.P1362299916187630612

`A348911(A006015(n))+A348911(n)`
-/

namespace A348910.P1362299916187630612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348911 (A006015 n).toNat + A348911 n

end

end A348910.P1362299916187630612

/-! ## A348910.P12353318788851984923

`A318702(A003188(n))-A318703(n)`
-/

namespace A348910.P12353318788851984923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318702 (A003188 n).toNat - A318703 n

end

end A348910.P12353318788851984923

/-! ## A348910.P7101990237593188367

`A318702(A004468(n))-A318703(n)`
-/

namespace A348910.P7101990237593188367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318702 (A004468 n).toNat - A318703 n

end

end A348910.P7101990237593188367

/-! ## A348910.P10198245175284441132

`A318703(A006015(n))-A318703(n)`
-/

namespace A348910.P10198245175284441132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318703 (A006015 n).toNat - A318703 n

end

end A348910.P10198245175284441132

/-! ## A348910.P16789402805858417733

`A318703(A048647(n))-A318703(n)`
-/

namespace A348910.P16789402805858417733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318703 (A048647 n).toNat - A318703 n

end

end A348910.P16789402805858417733

/-! ## A348910.P2072409938418169504

`A348911(n)-A348911(A048647(n))`
-/

namespace A348910.P2072409938418169504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348911 n - A348911 (A048647 n).toNat

end

end A348910.P2072409938418169504

/-! ## A348910.P9061206253664768063

`A318702(A163241(n))-A318703(n)`
-/

namespace A348910.P9061206253664768063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318702 (A163241 n).toNat - A318703 n

end

end A348910.P9061206253664768063

/-! ## A348910.P2907082098712182698

`A318703(A003188(2*n))-A318703(n)`
-/

namespace A348910.P2907082098712182698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318703 (A003188 (2 * n)).toNat - A318703 n

end

end A348910.P2907082098712182698

/-! ## A348910.P8519627003645576023

`A318703(2*A163241(n))-A318703(n)`
-/

namespace A348910.P8519627003645576023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318703 (2 * A163241 n).toNat - A318703 n

end

end A348910.P8519627003645576023

/-! ## A348910.P15620888633163397078

`A318703(2*A004468(n))-A318703(n)`
-/

namespace A348910.P15620888633163397078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318703 (2 * A004468 n).toNat - A318703 n

end

end A348910.P15620888633163397078

/-! ## A348910.P3509552533018938138

`A348911(A048647(A163241(A048647(n))))`
-/

namespace A348910.P3509552533018938138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348911 (A048647 (A163241 (A048647 n).toNat).toNat).toNat

end

end A348910.P3509552533018938138

/-!
# A348911: a(n) is the "w" part of f(n) = Sum_{k>=0, d_k>0} w^(d_k-1) * (-2)^k where Sum_{k>=0} d_k * 4^k is the base-4 representation of n and w = -1/2 + sqrt(-3)/2 is a primitive cube root of unity; sequence A348910 gives "real" parts.

The programs for A348911, there is no canonical definition to state claims against.
-/

/-! ## A348911.P18375967865132133378

`A348910(A057300(n))`
-/

namespace A348911.P18375967865132133378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348910 (A057300 n).toNat

end

end A348911.P18375967865132133378

/-! ## A348911.P2460438212136558032

`-A348910(A006015(n))`
-/

namespace A348911.P2460438212136558032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A348910 (A006015 n).toNat

end

end A348911.P2460438212136558032

/-! ## A348911.P5234566540626781046

`A318702(A003188(n))-A318702(n)`
-/

namespace A348911.P5234566540626781046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318702 (A003188 n).toNat - A318702 n

end

end A348911.P5234566540626781046

/-! ## A348911.P1765023996595041211

`A318702(A004468(n))-A318702(n)`
-/

namespace A348911.P1765023996595041211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318702 (A004468 n).toNat - A318702 n

end

end A348911.P1765023996595041211

/-! ## A348911.P2762437790558286868

`A318702(A163241(n))-A318702(n)`
-/

namespace A348911.P2762437790558286868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318702 (A163241 n).toNat - A318702 n

end

end A348911.P2762437790558286868

/-! ## A348911.P6517714254032024275

`A318702(A163355(n))-A318702(n)`
-/

namespace A348911.P6517714254032024275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318702 (A163355 n).toNat - A318702 n

end

end A348911.P6517714254032024275

/-! ## A348911.P1716171458321940869

`A053985(A292372(n))-A053985(A292373(n))`
-/

namespace A348911.P1716171458321940869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 (A292372 n).toNat - A053985 (A292373 n).toNat

end

end A348911.P1716171458321940869

/-! ## A348911.P16989711464876312469

`A318703(A006015(n))-A318703(2*n)`
-/

namespace A348911.P16989711464876312469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318703 (A006015 n).toNat - A318703 (2 * n)

end

end A348911.P16989711464876312469

/-! ## A348911.P7914133823823833317

`A318703(A048647(n))-A318703(2*n)`
-/

namespace A348911.P7914133823823833317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318703 (A048647 n).toNat - A318703 (2 * n)

end

end A348911.P7914133823823833317

/-! ## A348911.P6154135775515025634

`A318703(A003188(2*n))-A318703(2*n)`
-/

namespace A348911.P6154135775515025634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318703 (A003188 (2 * n)).toNat - A318703 (2 * n)

end

end A348911.P6154135775515025634

/-!
# A348912: G.f. A(x) satisfies A(x) = (1 + 2 * x * A(x)^3) / (1 - x).

The programs for A348912, there is no canonical definition to state claims against.
-/

/-! ## A348912.P18413952344674131190

`A187318(A009232(n))`
-/

namespace A348912.P18413952344674131190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187318 (A009232 n).toNat

end

end A348912.P18413952344674131190

/-!
# A348913: Number of N(0,1) variables needed for a 1/2 chance that their maximum exceeds the maximum of n N(1,1) variables.

The programs for A348913, there is no canonical definition to state claims against.
-/

/-! ## A348913.P4206053520525511657

`A225852(A308699(3*n+2))-A307513(n+1)`
-/

namespace A348913.P4206053520525511657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225852 (A308699 (3 * n + 2)).toNat - A307513 (n + 1)

end

end A348913.P4206053520525511657

/-! ## A348913.P1095878029935675173

`round(log(A337808(n+2)))`
-/

namespace A348913.P1095878029935675173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A337808 (n + 2) : ℝ))

end

end A348913.P1095878029935675173

/-! ## A348913.P2450582679101931341

`∑[A085423(A085459(n+1)²)]`
-/

namespace A348913.P2450582679101931341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085423 (A085459 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348913.P2450582679101931341

/-! ## A348913.P9061025058668674453

`∑[A061775(A317705(n+1)*A317719(2*n+1))]`
-/

namespace A348913.P9061025058668674453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A317705 (n + 1) * A317719 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348913.P9061025058668674453

/-! ## A348913.P7232025407895995378

`A000196(∑[A001106(3*(n+1))])`
-/

namespace A348913.P7232025407895995378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A348913.P7232025407895995378

/-!
# A348915: a(n) = Sum_{d|n} d^(d mod 2).

The programs for A348915, the canonical program `A348915.P13373623292540873174` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348915 has offset 1).

The definition of A348915 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A348915.P13471986623422295234

`∑{d}[n+1, #^(#%2)]`
-/

namespace A348915.P13471986623422295234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ (d % 2)

end

end A348915.P13471986623422295234

namespace A348915

/-- `∑{d}[n+1, #^(#%2)]` -/
def P13471986623422295234.Spec : Prop :=
  ∀ n, (P13471986623422295234.a n : ℤ) = A348915 (n + 1)

end A348915

/-! ## A348915.P13373623292540873174

`A000593(n+1)+A183063(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A348915

/-- `A000593(n+1)+A183063(n+1)` -/
def P13373623292540873174.Spec : Prop :=
  ∀ n, P13373623292540873174.a n = A348915 (n + 1)

theorem P13373623292540873174.correct : P13373623292540873174.Spec := by
  intro n
  simp only [A348915, Nat.add_sub_cancel]

end A348915

/-! ## A348915.P18073091690286102356

`A065608(2*(n+1))-2*A065608(n+1)`
-/

namespace A348915.P18073091690286102356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (2 * (n + 1)) - 2 * A065608 (n + 1)

end

end A348915.P18073091690286102356

namespace A348915

/-- `A065608(2*(n+1))-2*A065608(n+1)` -/
def P18073091690286102356.Spec : Prop :=
  ∀ n, P18073091690286102356.a n = A348915 (n + 1)

end A348915

/-! ## A348915.P868567467164854689

`A000203(A000265(n+1))+A000005(A000265(n+1))*A007814(n+1)`
-/

namespace A348915.P868567467164854689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000265 (n + 1)).toNat + A000005 (A000265 (n + 1)).toNat * A007814 (n + 1)

end

end A348915.P868567467164854689

namespace A348915

/-- `A000203(A000265(n+1))+A000005(A000265(n+1))*A007814(n+1)` -/
def P868567467164854689.Spec : Prop :=
  ∀ n, P868567467164854689.a n = A348915 (n + 1)

end A348915

/-! ## A348915.P10026937206829633813

`∑{d}[n+1, #^and(1, #)]`
-/

namespace A348915.P10026937206829633813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ Nat.land 1 d

end

end A348915.P10026937206829633813

namespace A348915

/-- `∑{d}[n+1, #^and(1, #)]` -/
def P10026937206829633813.Spec : Prop :=
  ∀ n, (P10026937206829633813.a n : ℤ) = A348915 (n + 1)

end A348915

/-! ## A348915.P1436271618941002533

`∑{d}[n+1, gcd(#, or(1, #))]`
-/

namespace A348915.P1436271618941002533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.gcd d (Nat.lor 1 d)

end

end A348915.P1436271618941002533

namespace A348915

/-- `∑{d}[n+1, gcd(#, or(1, #))]` -/
def P1436271618941002533.Spec : Prop :=
  ∀ n, (P1436271618941002533.a n : ℤ) = A348915 (n + 1)

end A348915

/-! ## A348915.P503739851849034920

`∑{d}[n+1, C(#, and(1, #))]`
-/

namespace A348915.P503739851849034920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose d (Nat.land 1 d)

end

end A348915.P503739851849034920

namespace A348915

/-- `∑{d}[n+1, C(#, and(1, #))]` -/
def P503739851849034920.Spec : Prop :=
  ∀ n, (P503739851849034920.a n : ℤ) = A348915 (n + 1)

end A348915

/-! ## A348915.P4161674712519212095

`∑{d}[2*(n+1), xor(1, #)%#]`
-/

namespace A348915.P4161674712519212095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.xor 1 d % d

end

end A348915.P4161674712519212095

namespace A348915

/-- `∑{d}[2*(n+1), xor(1, #)%#]` -/
def P4161674712519212095.Spec : Prop :=
  ∀ n, (P4161674712519212095.a n : ℤ) = A348915 (n + 1)

end A348915

/-! ## A348915.P11094666228460204961

`∑{d}[n+1, #^val(#²+1, 2)]`
-/

namespace A348915.P11094666228460204961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ SequenceMachineLib.valuation (d ^ 2 + 1) 2

end

end A348915.P11094666228460204961

namespace A348915

/-- `∑{d}[n+1, #^val(#²+1, 2)]` -/
def P11094666228460204961.Spec : Prop :=
  ∀ n, (P11094666228460204961.a n : ℤ) = A348915 (n + 1)

end A348915

/-! ## A348915.P2635018213273992818

`∑{d}[(n+1)/2^val(n+1, 2), val(n+1, 2)+#]`
-/

namespace A348915.P2635018213273992818
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, (SequenceMachineLib.valuation (n + 1) 2 + d)

end

end A348915.P2635018213273992818

namespace A348915

/-- `∑{d}[(n+1)/2^val(n+1, 2), val(n+1, 2)+#]` -/
def P2635018213273992818.Spec : Prop :=
  ∀ n, (P2635018213273992818.a n : ℤ) = A348915 (n + 1)

end A348915

/-! ## A348915.P6770891877168695774

`∑{d}[n+1, A093178(#)]`
-/

namespace A348915.P6770891877168695774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A093178 d

end

end A348915.P6770891877168695774

namespace A348915

/-- `∑{d}[n+1, A093178(#)]` -/
def P6770891877168695774.Spec : Prop :=
  ∀ n, P6770891877168695774.a n = A348915 (n + 1)

end A348915

/-! ## A348915.P17473778153198036603

`∑{d}[n+1, abs(A009001(#))]`
-/

namespace A348915.P17473778153198036603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), |A009001 d|

end

end A348915.P17473778153198036603

namespace A348915

/-- `∑{d}[n+1, abs(A009001(#))]` -/
def P17473778153198036603.Spec : Prop :=
  ∀ n, P17473778153198036603.a n = A348915 (n + 1)

end A348915

/-! ## A348915.P14513302909121461615

`A007503(n+1)-A349211(n+1)`
-/

namespace A348915.P14513302909121461615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) - A349211 (n + 1)

end

end A348915.P14513302909121461615

namespace A348915

/-- `A007503(n+1)-A349211(n+1)` -/
def P14513302909121461615.Spec : Prop :=
  ∀ n, P14513302909121461615.a n = A348915 (n + 1)

end A348915

/-! ## A348915.P2920608136928774460

`A349211(n+1)-A325940(n+1)`
-/

namespace A348915.P2920608136928774460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349211 (n + 1) - A325940 (n + 1)

end

end A348915.P2920608136928774460

namespace A348915

/-- `A349211(n+1)-A325940(n+1)` -/
def P2920608136928774460.Spec : Prop :=
  ∀ n, P2920608136928774460.a n = A348915 (n + 1)

end A348915

/-! ## A348915.P13383987938485935049

`A349212(n+1)-A367870(n+1)`
-/

namespace A348915.P13383987938485935049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349212 (n + 1) - A367870 (n + 1)

end

end A348915.P13383987938485935049

namespace A348915

/-- `A349212(n+1)-A367870(n+1)` -/
def P13383987938485935049.Spec : Prop :=
  ∀ n, P13383987938485935049.a n = A348915 (n + 1)

end A348915

/-! ## A348915.P15020017933725580304

`A355750(n+1)-2*A065608(n+1)`
-/

namespace A348915.P15020017933725580304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355750 (n + 1) - 2 * A065608 (n + 1)

end

end A348915.P15020017933725580304

namespace A348915

/-- `A355750(n+1)-2*A065608(n+1)` -/
def P15020017933725580304.Spec : Prop :=
  ∀ n, P15020017933725580304.a n = A348915 (n + 1)

end A348915

/-! ## A348915.P17167373593940991236

`∑{d}[n+1, A033999(#-1)*A086799((n+1)/#)]`
-/

namespace A348915.P17167373593940991236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033999 (d - 1) * A086799 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A348915.P17167373593940991236

namespace A348915

/-- `∑{d}[n+1, A033999(#-1)*A086799((n+1)/#)]` -/
def P17167373593940991236.Spec : Prop :=
  ∀ n, P17167373593940991236.a n = A348915 (n + 1)

end A348915

/-! ## A348915.P6624211161276923235

`∑{d}[n+1, A059841(#-1)*A119674((n+1)/#)]`
-/

namespace A348915.P6624211161276923235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d - 1) * A119674 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A348915.P6624211161276923235

namespace A348915

/-- `∑{d}[n+1, A059841(#-1)*A119674((n+1)/#)]` -/
def P6624211161276923235.Spec : Prop :=
  ∀ n, P6624211161276923235.a n = A348915 (n + 1)

end A348915

/-! ## A348915.P6227125012828356549

`∑{d}[n+1, (#+1)%2]+gcd(A000203(2*(n+1)), A000203(n+1))`
-/

namespace A348915.P6227125012828356549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d + 1) % 2 + Int.gcd (A000203 (2 * (n + 1))) (A000203 (n + 1))

end

end A348915.P6227125012828356549

namespace A348915

/-- `∑{d}[n+1, (#+1)%2]+gcd(A000203(2*(n+1)), A000203(n+1))` -/
def P6227125012828356549.Spec : Prop :=
  ∀ n, (P6227125012828356549.a n : ℤ) = A348915 (n + 1)

end A348915

/-! ## A348915.P8351817137796907064

`A000005(n+1)+A000593(n+1)-A001227(n+1)`
-/

namespace A348915.P8351817137796907064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A000593 (n + 1) - A001227 (n + 1))

end

end A348915.P8351817137796907064

namespace A348915

/-- `A000005(n+1)+A000593(n+1)-A001227(n+1)` -/
def P8351817137796907064.Spec : Prop :=
  ∀ n, P8351817137796907064.a n = A348915 (n + 1)

theorem P8351817137796907064.correct : P8351817137796907064.Spec := by
  intro n
  simp only [A348915, Nat.add_sub_cancel, A348915.P8351817137796907064.a, A348915.P13373623292540873174.a, A000005, A000005.P16091521709108585461.a, A000593, A000593.P13640346029616979906.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A183063, A183063.P14549643650991336837.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A038712, A038712.P3404197303190209645.a, A062011, A062011.P17525320077853469406.a, A099777, A099777.P11792433152824821401.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348915

/-!
# A348919: Sum of the middle parts of the partitions of k into 3 parts for all 0 <= k <= n.

The programs for A348919, the canonical program `A348919.P10211732213500185262` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348919 has offset 0).

The definition of A348919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348919.P10211732213500185262

`A308266(n)+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A348919

/-- `A308266(n)+a(n-1)` -/
def P10211732213500185262.Spec : Prop :=
  ∀ n, P10211732213500185262.a n = A348919 n

theorem P10211732213500185262.correct : P10211732213500185262.Spec := by
  intro n
  simp only [A348919]

end A348919

/-! ## A348919.P7617738303445365086

`∑[A308266(abs(1-n)+1)]`
-/

namespace A348919.P7617738303445365086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308266 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348919.P7617738303445365086

namespace A348919

/-- `∑[A308266(abs(1-n)+1)]` -/
def P7617738303445365086.Spec : Prop :=
  ∀ n, P7617738303445365086.a n = A348919 n

end A348919

/-! ## A348919.P10496650328336101995

`∑[A309690(n)+A309688(n)]`
-/

namespace A348919.P10496650328336101995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309690 n + A309688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348919.P10496650328336101995

namespace A348919

/-- `∑[A309690(n)+A309688(n)]` -/
def P10496650328336101995.Spec : Prop :=
  ∀ n, P10496650328336101995.a n = A348919 n

end A348919

/-! ## A348919.P2140257921322119879

`∑[A308266(n+1)]-A308266(n+1)`
-/

namespace A348919.P2140257921322119879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A308266 (n + 1)

end

end A348919.P2140257921322119879

namespace A348919

/-- `∑[A308266(n+1)]-A308266(n+1)` -/
def P2140257921322119879.Spec : Prop :=
  ∀ n, P2140257921322119879.a n = A348919 n

end A348919

/-! ## A348919.P6972471451399268287

`∑[A309690(2*n)/4]`
-/

namespace A348919.P6972471451399268287
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309690 (2 * n) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348919.P6972471451399268287

namespace A348919

/-- `∑[A309690(2*n)/4]` -/
def P6972471451399268287.Spec : Prop :=
  ∀ n, P6972471451399268287.a n = (A348919 n : ℚ)

end A348919

/-!
# A348922: Numbers that are both infinitary and noninfinitary harmonic numbers.

The programs for A348922, there is no canonical definition to state claims against.
-/

/-! ## A348922.P13097893369876160822

`∩[A348918(2*(n+2)), A063947(n+1)]`
-/

namespace A348922.P13097893369876160822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348918 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348922.P13097893369876160822

/-!
# A348924: Paschal full moon dates expressed as days after March 21 (Gregorian calendar).

The programs for A348924, there is no canonical definition to state claims against.
-/

/-! ## A348924.P7308797915365286123

`A349710(n)+A000122(A142717(n+1))`
-/

namespace A348924.P7308797915365286123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349710 n + A000122 (A142717 (n + 1)).toNat

end

end A348924.P7308797915365286123

/-! ## A348924.P5783615831685024829

`A349710(n)+A000122(A239416(3*n+4))`
-/

namespace A348924.P5783615831685024829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349710 n + A000122 (A239416 (3 * n + 4)).toNat

end

end A348924.P5783615831685024829

/-! ## A348924.P8043964380415748155

`A347463(A006512(3*n+1))*A349710(n)`
-/

namespace A348924.P8043964380415748155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347463 (A006512 (3 * n + 1)).toNat * A349710 n

end

end A348924.P8043964380415748155

/-! ## A348924.P5201203238937627630

`A369869(A054807(3*n+5))+A349710(n)`
-/

namespace A348924.P5201203238937627630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369869 (A054807 (3 * n + 5)).toNat + A349710 n

end

end A348924.P5201203238937627630

/-! ## A348924.P15750004697682198175

`A349710(n)+A335453(A129761(n))`
-/

namespace A348924.P15750004697682198175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349710 n + A335453 (A129761 n).toNat

end

end A348924.P15750004697682198175

/-! ## A348924.P9813380363180489312

`A349710(n)+A335453(A335450(n+1))`
-/

namespace A348924.P9813380363180489312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349710 n + A335453 (A335450 (n + 1)).toNat

end

end A348924.P9813380363180489312

/-! ## A348924.P12620474170306535938

`A349710(n)+A339846(A167442(2*n+5))`
-/

namespace A348924.P12620474170306535938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349710 n + A339846 (A167442 (2 * n + 5)).toNat

end

end A348924.P12620474170306535938

/-! ## A348924.P9648479501784616895

`A349710(n)+A066247(A217044(n+1))`
-/

namespace A348924.P9648479501784616895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349710 n + A066247 (A217044 (n + 1)).toNat

end

end A348924.P9648479501784616895

/-! ## A348924.P619055706817483332

`A349710(n)+A335453(A335465(n))`
-/

namespace A348924.P619055706817483332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349710 n + A335453 (A335465 n).toNat

end

end A348924.P619055706817483332

/-! ## A348924.P1135307707513390663

`A066247(A000292(n+2))*A349710(n)`
-/

namespace A348924.P1135307707513390663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (A000292 (n + 2)).toNat * A349710 n

end

end A348924.P1135307707513390663

/-!
# A348925: Number of 4-sided prudent polygons of area n.

The programs for A348925, there is no canonical definition to state claims against.
-/

/-! ## A348925.P17999790103888492606

`∑[8*A326536(A066982(n+1))]`
-/

namespace A348925.P17999790103888492606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A326536 (A066982 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348925.P17999790103888492606

/-! ## A348925.P7132581170565401448

`Δ[A337441(n+1)%A034006(2*n+1)]`
-/

namespace A348925.P7132581170565401448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337441 (n + 1)) (A034006 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348925.P7132581170565401448

/-! ## A348925.P15018616842250215486

`Δ[A337441(n+1)]%A038726(2*n+1)`
-/

namespace A348925.P15018616842250215486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A038726 (2 * n + 1))

end

end A348925.P15018616842250215486

/-!
# A348927: a(n) is the smallest prime followed by n prime gaps in arithmetic progression with a common difference of 2.

The programs for A348927, there is no canonical definition to state claims against.
-/

/-! ## A348927.P10395757940958413704

`A094749(∑[char[1]+n]+1+n)`
-/

namespace A348927.P10395757940958413704
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094749 (∑ j ∈ Finset.range (n + 1), f1 j + 1 + n)

end

end A348927.P10395757940958413704

/-! ## A348927.P12789466844718981225

`A349642(n+1)+A164597(A029494(n+1))`
-/

namespace A348927.P12789466844718981225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349642 (n + 1) + A164597 (A029494 (n + 1)).toNat

end

end A348927.P12789466844718981225

/-!
# A348928: a(n) = gcd(n, A003958(n)), where A003958 is multiplicative with a(p^e) = (p-1)^e.

The programs for A348928, the canonical program `A348928.P1977074338902689538` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348928 has offset 1).

The definition of A348928 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348928.P1977074338902689538

`gcd(n+1, A003958(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A348928

/-- `gcd(n+1, A003958(n+1))` -/
def P1977074338902689538.Spec : Prop :=
  ∀ n, (P1977074338902689538.a n : ℤ) = A348928 (n + 1)

theorem P1977074338902689538.correct : P1977074338902689538.Spec := by
  intro n
  simp only [A348928, Nat.add_sub_cancel]

end A348928

/-! ## A348928.P10346099737382322952

`gcd((n+1)², A079579(n+1))/(n+1)`
-/

namespace A348928.P10346099737382322952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd ((n + 1) ^ 2 : ℤ) (A079579 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A348928.P10346099737382322952

namespace A348928

/-- `gcd((n+1)², A079579(n+1))/(n+1)` -/
def P10346099737382322952.Spec : Prop :=
  ∀ n, P10346099737382322952.a n = (A348928 (n + 1) : ℚ)

end A348928

/-! ## A348928.P8723044636876282171

`gcd(A003958(n+1), A131738(n))`
-/

namespace A348928.P8723044636876282171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003958 (n + 1)) (A131738 n)

end

end A348928.P8723044636876282171

namespace A348928

/-- `gcd(A003958(n+1), A131738(n))` -/
def P8723044636876282171.Spec : Prop :=
  ∀ n, (P8723044636876282171.a n : ℤ) = A348928 (n + 1)

end A348928

/-! ## A348928.P605849613382781288

`gcd(A125131(n+1), A153152(n))`
-/

namespace A348928.P605849613382781288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A125131 (n + 1)) (A153152 n)

end

end A348928.P605849613382781288

namespace A348928

/-- `gcd(A125131(n+1), A153152(n))` -/
def P605849613382781288.Spec : Prop :=
  ∀ n, (P605849613382781288.a n : ℤ) = A348928 (n + 1)

end A348928

/-! ## A348928.P14710087347727840879

`gcd(A005451(n+1), A322582(n+1))`
-/

namespace A348928.P14710087347727840879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005451 (n + 1)) (A322582 (n + 1))

end

end A348928.P14710087347727840879

namespace A348928

/-- `gcd(A005451(n+1), A322582(n+1))` -/
def P14710087347727840879.Spec : Prop :=
  ∀ n, (P14710087347727840879.a n : ℤ) = A348928 (n + 1)

end A348928

/-! ## A348928.P2733653085016009388

`gcd(A075828(n+1), A340082(n+1))`
-/

namespace A348928.P2733653085016009388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A075828 (n + 1)) (A340082 (n + 1))

end

end A348928.P2733653085016009388

namespace A348928

/-- `gcd(A075828(n+1), A340082(n+1))` -/
def P2733653085016009388.Spec : Prop :=
  ∀ n, (P2733653085016009388.a n : ℤ) = A348928 (n + 1)

end A348928

/-! ## A348928.P15251698345709644173

`A109004(A003958(n+1)+∑[n+1])`
-/

namespace A348928.P15251698345709644173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (A003958 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A348928.P15251698345709644173

namespace A348928

/-- `A109004(A003958(n+1)+∑[n+1])` -/
def P15251698345709644173.Spec : Prop :=
  ∀ n, P15251698345709644173.a n = A348928 (n + 1)

end A348928

/-! ## A348928.P15377695970044831453

`gcd(A131209(n), A345046(n+1))`
-/

namespace A348928.P15377695970044831453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131209 n) (A345046 (n + 1))

end

end A348928.P15377695970044831453

namespace A348928

/-- `gcd(A131209(n), A345046(n+1))` -/
def P15377695970044831453.Spec : Prop :=
  ∀ n, (P15377695970044831453.a n : ℤ) = A348928 (n + 1)

end A348928

/-!
# A348929: a(n) = gcd(n, A003959(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e.

The programs for A348929, the canonical program `A348929.P10911149095243660924` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348929 has offset 1).

The definition of A348929 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348929.P10911149095243660924

`gcd(n+1, A003959(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A348929

/-- `gcd(n+1, A003959(n+1))` -/
def P10911149095243660924.Spec : Prop :=
  ∀ n, (P10911149095243660924.a n : ℤ) = A348929 (n + 1)

theorem P10911149095243660924.correct : P10911149095243660924.Spec := by
  intro n
  simp only [A348929, Nat.add_sub_cancel]

end A348929

/-! ## A348929.P2305848467656408047

`sqrt(gcd((n+1)², A167349(n+1)))`
-/

namespace A348929.P2305848467656408047
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.gcd ((n + 1) ^ 2 : ℤ) (A167349 (n + 1)) : ℝ)

end

end A348929.P2305848467656408047

namespace A348929

/-- `sqrt(gcd((n+1)², A167349(n+1)))` -/
def P2305848467656408047.Spec : Prop :=
  ∀ n, P2305848467656408047.a n = (A348929 (n + 1) : ℝ)

end A348929

/-! ## A348929.P9360582401922563523

`gcd(A003959(n+1), A131738(n))`
-/

namespace A348929.P9360582401922563523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003959 (n + 1)) (A131738 n)

end

end A348929.P9360582401922563523

namespace A348929

/-- `gcd(A003959(n+1), A131738(n))` -/
def P9360582401922563523.Spec : Prop :=
  ∀ n, (P9360582401922563523.a n : ℤ) = A348929 (n + 1)

end A348929

/-! ## A348929.P13788357227795168701

`gcd(A000027(n+1), A348507(n+1))`
-/

namespace A348929.P13788357227795168701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A348507 (n + 1))

end

end A348929.P13788357227795168701

namespace A348929

/-- `gcd(A000027(n+1), A348507(n+1))` -/
def P13788357227795168701.Spec : Prop :=
  ∀ n, (P13788357227795168701.a n : ℤ) = A348929 (n + 1)

end A348929

/-! ## A348929.P14630265293983605113

`gcd(A087156(n+1), A348508(n+1))`
-/

namespace A348929.P14630265293983605113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A087156 (n + 1)) (A348508 (n + 1))

end

end A348929.P14630265293983605113

namespace A348929

/-- `gcd(A087156(n+1), A348508(n+1))` -/
def P14630265293983605113.Spec : Prop :=
  ∀ n, (P14630265293983605113.a n : ℤ) = A348929 (n + 1)

end A348929

/-! ## A348929.P6537379639693632382

`gcd(xor(n, -1), A064478(n+1))`
-/

namespace A348929.P6537379639693632382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor (n : ℤ) (-1)) (A064478 (n + 1))

end

end A348929.P6537379639693632382

namespace A348929

/-- `gcd(xor(n, -1), A064478(n+1))` -/
def P6537379639693632382.Spec : Prop :=
  ∀ n, (P6537379639693632382.a n : ℤ) = A348929 (n + 1)

end A348929

/-! ## A348929.P451360193898932717

`gcd(ϕ²-(ϕ-n), A064478(ϕ²-(ϕ-n)))`
-/

namespace A348929.P451360193898932717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))) (A064478 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat)

end

end A348929.P451360193898932717

namespace A348929

/-- `gcd(ϕ²-(ϕ-n), A064478(ϕ²-(ϕ-n)))` -/
def P451360193898932717.Spec : Prop :=
  ∀ n, (P451360193898932717.a n : ℤ) = A348929 (n + 1)

end A348929

/-! ## A348929.P13900634026432418440

`A348039((n+1)*∏{p}[n+1, #])`
-/

namespace A348929.P13900634026432418440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348039 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A348929.P13900634026432418440

namespace A348929

/-- `A348039((n+1)*∏{p}[n+1, #])` -/
def P13900634026432418440.Spec : Prop :=
  ∀ n, P13900634026432418440.a n = A348929 (n + 1)

end A348929

/-! ## A348929.P16150808703805388711

`A348039(A064549(n+1))`
-/

namespace A348929.P16150808703805388711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348039 (A064549 (n + 1)).toNat

end

end A348929.P16150808703805388711

namespace A348929

/-- `A348039(A064549(n+1))` -/
def P16150808703805388711.Spec : Prop :=
  ∀ n, P16150808703805388711.a n = A348929 (n + 1)

end A348929

/-! ## A348929.P12059875531837102745

`A348039(A078310(n+1)-1)`
-/

namespace A348929.P12059875531837102745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348039 (A078310 (n + 1) - 1).toNat

end

end A348929.P12059875531837102745

namespace A348929

/-- `A348039(A078310(n+1)-1)` -/
def P12059875531837102745.Spec : Prop :=
  ∀ n, P12059875531837102745.a n = A348929 (n + 1)

end A348929

/-! ## A348929.P5434431281423182466

`A348039((n+1)*A007947(n+1))`
-/

namespace A348929.P5434431281423182466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348039 ((n + 1 : ℤ) * A007947 (n + 1)).toNat

end

end A348929.P5434431281423182466

namespace A348929

/-- `A348039((n+1)*A007947(n+1))` -/
def P5434431281423182466.Spec : Prop :=
  ∀ n, P5434431281423182466.a n = A348929 (n + 1)

end A348929

/-! ## A348929.P9441468610021715137

`A348039((n+1)*A015052(n+1))`
-/

namespace A348929.P9441468610021715137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348039 ((n + 1 : ℤ) * A015052 (n + 1)).toNat

end

end A348929.P9441468610021715137

namespace A348929

/-- `A348039((n+1)*A015052(n+1))` -/
def P9441468610021715137.Spec : Prop :=
  ∀ n, P9441468610021715137.a n = A348929 (n + 1)

end A348929

/-! ## A348929.P9706715431147209762

`A348039((n+1)*A015053(n+1))`
-/

namespace A348929.P9706715431147209762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348039 ((n + 1 : ℤ) * A015053 (n + 1)).toNat

end

end A348929.P9706715431147209762

namespace A348929

/-- `A348039((n+1)*A015053(n+1))` -/
def P9706715431147209762.Spec : Prop :=
  ∀ n, P9706715431147209762.a n = A348929 (n + 1)

end A348929

/-! ## A348929.P1979593640201668630

`A003557(A348036((n+1)*A007947(n+1)))`
-/

namespace A348929.P1979593640201668630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A348036 ((n + 1 : ℤ) * A007947 (n + 1)).toNat).toNat

end

end A348929.P1979593640201668630

namespace A348929

/-- `A003557(A348036((n+1)*A007947(n+1)))` -/
def P1979593640201668630.Spec : Prop :=
  ∀ n, P1979593640201668630.a n = A348929 (n + 1)

end A348929

/-!
# A348930: a(n) = A038502(sigma(n)), where A038502 is fully multiplicative with a(3) = 1, and a(p) = p for any other prime p.

The programs for A348930, the canonical program `A348930.P8572798974817480864` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348930 has offset 1).

The definition of A348930 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A348930.P8572798974817480864

`A038502(A000203(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A348930

/-- `A038502(A000203(n+1))` -/
def P8572798974817480864.Spec : Prop :=
  ∀ n, P8572798974817480864.a n = A348930 (n + 1)

theorem P8572798974817480864.correct : P8572798974817480864.Spec := by
  intro n
  simp only [A348930, Nat.add_sub_cancel]

end A348930

/-! ## A348930.P7767834011832428355

`∑{d}[n+1, #]/3^val(∑{d}[n+1, #], 3)`
-/

namespace A348930.P7767834011832428355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (3 ^ SequenceMachineLib.valuation (∑ d ∈ Nat.divisors (f2 n), d) 3 : ℚ)

end

end A348930.P7767834011832428355

namespace A348930

/-- `∑{d}[n+1, #]/3^val(∑{d}[n+1, #], 3)` -/
def P7767834011832428355.Spec : Prop :=
  ∀ n, P7767834011832428355.a n = (A348930 (n + 1) : ℚ)

end A348930

/-! ## A348930.P8948464561060056832

`∑{d}[n+1, #]/A379473(n+1)`
-/

namespace A348930.P8948464561060056832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (A379473 (n + 1) : ℚ)

end

end A348930.P8948464561060056832

namespace A348930

/-- `∑{d}[n+1, #]/A379473(n+1)` -/
def P8948464561060056832.Spec : Prop :=
  ∀ n, P8948464561060056832.a n = (A348930 (n + 1) : ℚ)

end A348930

/-! ## A348930.P13744510776749015673

`A082903(n+1)*A336457(n+1)`
-/

namespace A348930.P13744510776749015673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082903 (n + 1) * A336457 (n + 1)

end

end A348930.P13744510776749015673

namespace A348930

/-- `A082903(n+1)*A336457(n+1)` -/
def P13744510776749015673.Spec : Prop :=
  ∀ n, P13744510776749015673.a n = A348930 (n + 1)

end A348930

/-! ## A348930.P14380428359632889404

`A000203(n+1)/A379473(n+1)`
-/

namespace A348930.P14380428359632889404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A379473 (n + 1) : ℚ)

end

end A348930.P14380428359632889404

namespace A348930

/-- `A000203(n+1)/A379473(n+1)` -/
def P14380428359632889404.Spec : Prop :=
  ∀ n, P14380428359632889404.a n = (A348930 (n + 1) : ℚ)

end A348930

/-! ## A348930.P12968909070883107495

`A038502(∑{d}[n+1, #])`
-/

namespace A348930.P12968909070883107495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A348930.P12968909070883107495

namespace A348930

/-- `A038502(∑{d}[n+1, #])` -/
def P12968909070883107495.Spec : Prop :=
  ∀ n, P12968909070883107495.a n = A348930 (n + 1)

end A348930

/-! ## A348930.P11427810106053820785

`∑{d}[n+1, #]/A038500(∑{d}[n+1, #])`
-/

namespace A348930.P11427810106053820785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (A038500 (∑ d ∈ Nat.divisors (f2 n), d) : ℚ)

end

end A348930.P11427810106053820785

namespace A348930

/-- `∑{d}[n+1, #]/A038500(∑{d}[n+1, #])` -/
def P11427810106053820785.Spec : Prop :=
  ∀ n, P11427810106053820785.a n = (A348930 (n + 1) : ℚ)

end A348930

/-! ## A348930.P13913461148517815122

`A038502(A272027(n+1))`
-/

namespace A348930.P13913461148517815122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A272027 (n + 1)).toNat

end

end A348930.P13913461148517815122

namespace A348930

/-- `A038502(A272027(n+1))` -/
def P13913461148517815122.Spec : Prop :=
  ∀ n, P13913461148517815122.a n = A348930 (n + 1)

end A348930

/-! ## A348930.P4022943409132429611

`A038502(A325299(n+1))`
-/

namespace A348930.P4022943409132429611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A325299 (n + 1)).toNat

end

end A348930.P4022943409132429611

namespace A348930

/-- `A038502(A325299(n+1))` -/
def P4022943409132429611.Spec : Prop :=
  ∀ n, P4022943409132429611.a n = A348930 (n + 1)

end A348930

/-!
# A348931: Numbers k congruent to 1 or 5 mod 6, for which A348930(k) < k.

The programs for A348931, the canonical program `A348931.P4884177580303367857` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348931 has offset 1).

The definition of A348931 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2969 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348931.P4884177580303367857

`∩[or(1, 3*n+1), A087943(n+1)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A348931

/-- `∩[or(1, 3*n+1), A087943(n+1)]` -/
def P4884177580303367857.Spec : Prop :=
  ∀ n, (P4884177580303367857.a n : ℤ) = A348931 (n + 1)

theorem P4884177580303367857.correct : P4884177580303367857.Spec := by
  intro n
  simp only [A348931, Nat.add_sub_cancel]

end A348931

/-! ## A348931.P11837123866998025620

`filter[A087943(n+1), A354354(#)]`
-/

namespace A348931.P11837123866998025620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A348931.P11837123866998025620

namespace A348931

/-- `filter[A087943(n+1), A354354(#)]` -/
def P11837123866998025620.Spec : Prop :=
  ∀ n, P11837123866998025620.a n = A348931 (n + 1)

end A348931

/-! ## A348931.P16983162428881943159

`∩[A007310(n+1), A087943(n+1)]`
-/

namespace A348931.P16983162428881943159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348931.P16983162428881943159

namespace A348931

/-- `∩[A007310(n+1), A087943(n+1)]` -/
def P16983162428881943159.Spec : Prop :=
  ∀ n, (P16983162428881943159.a n : ℤ) = A348931 (n + 1)

end A348931

/-! ## A348931.P5144477384471859955

`∩[A087349(3*n+2), A087943(n+1)]`
-/

namespace A348931.P5144477384471859955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087349 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348931.P5144477384471859955

namespace A348931

/-- `∩[A087349(3*n+2), A087943(n+1)]` -/
def P5144477384471859955.Spec : Prop :=
  ∀ n, (P5144477384471859955.a n : ℤ) = A348931 (n + 1)

end A348931

/-! ## A348931.P4710928055086352836

`eq[lcm(9, A229616(n)), A008653(n)]`
-/

namespace A348931.P4710928055086352836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 9 (A229616 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A348931.P4710928055086352836

namespace A348931

/-- `eq[lcm(9, A229616(n)), A008653(n)]` -/
def P4710928055086352836.Spec : Prop :=
  ∀ n, (P4710928055086352836.a n : ℤ) = A348931 (n + 1)

end A348931

/-! ## A348931.P2371706209045587097

`lt[A220129(n)+A236924(n)%3, 2]`
-/

namespace A348931.P2371706209045587097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220129 n + Int.tmod (A236924 n) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A348931.P2371706209045587097

namespace A348931

/-- `lt[A220129(n)+A236924(n)%3, 2]` -/
def P2371706209045587097.Spec : Prop :=
  ∀ n, (P2371706209045587097.a n : ℤ) = A348931 (n + 1)

end A348931

/-!
# A348932: Numbers k congruent to 1 or 5 mod 6, for which A348930(k) > k.

The programs for A348932, the canonical program `A348932.P8495340966039162489` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348932 has offset 1).

The definition of A348932 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9610 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348932.P8495340966039162489

`filter[A260682(n+2), A070563(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A348932

/-- `filter[A260682(n+2), A070563(#)]` -/
def P8495340966039162489.Spec : Prop :=
  ∀ n, P8495340966039162489.a n = A348932 (n + 1)

theorem P8495340966039162489.correct : P8495340966039162489.Spec := by
  intro n
  simp only [A348932, Nat.add_sub_cancel]

end A348932

/-! ## A348932.P6913015218906836972

`∩[2*n+1, A374135(n+2)]`
-/

namespace A348932.P6913015218906836972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374135 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348932.P6913015218906836972

namespace A348932

/-- `∩[2*n+1, A374135(n+2)]` -/
def P6913015218906836972.Spec : Prop :=
  ∀ n, (P6913015218906836972.a n : ℤ) = A348932 (n + 1)

end A348932

/-! ## A348932.P9936769641223711181

`filter[A260682(n+2), A353815(#)]`
-/

namespace A348932.P9936769641223711181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260682 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A348932.P9936769641223711181

namespace A348932

/-- `filter[A260682(n+2), A353815(#)]` -/
def P9936769641223711181.Spec : Prop :=
  ∀ n, P9936769641223711181.a n = A348932 (n + 1)

end A348932

/-! ## A348932.P447195696545437954

`filter[A374135(n+2), A355450(#)]`
-/

namespace A348932.P447195696545437954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374135 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A348932.P447195696545437954

namespace A348932

/-- `filter[A374135(n+2), A355450(#)]` -/
def P447195696545437954.Spec : Prop :=
  ∀ n, P447195696545437954.a n = A348932 (n + 1)

end A348932

/-! ## A348932.P12694992087566426394

`filter[A374135(n+2), A359374(#)]`
-/

namespace A348932.P12694992087566426394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374135 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A348932.P12694992087566426394

namespace A348932

/-- `filter[A374135(n+2), A359374(#)]` -/
def P12694992087566426394.Spec : Prop :=
  ∀ n, P12694992087566426394.a n = A348932 (n + 1)

end A348932

/-! ## A348932.P4474808477544232252

`filter[A374135(n+2), A359832(#)]`
-/

namespace A348932.P4474808477544232252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374135 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359832 (f1 j).toNat = 1) n)

end

end A348932.P4474808477544232252

namespace A348932

/-- `filter[A374135(n+2), A359832(#)]` -/
def P4474808477544232252.Spec : Prop :=
  ∀ n, P4474808477544232252.a n = A348932 (n + 1)

end A348932

/-! ## A348932.P8719841643270345304

`filter[A374135(n+2), A373156(#)]`
-/

namespace A348932.P8719841643270345304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374135 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A348932.P8719841643270345304

namespace A348932

/-- `filter[A374135(n+2), A373156(#)]` -/
def P8719841643270345304.Spec : Prop :=
  ∀ n, P8719841643270345304.a n = A348932 (n + 1)

end A348932

/-! ## A348932.P5857776248127216639

`filter[A266836(n+2), A070563(#)]`
-/

namespace A348932.P5857776248127216639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266836 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A348932.P5857776248127216639

namespace A348932

/-- `filter[A266836(n+2), A070563(#)]` -/
def P5857776248127216639.Spec : Prop :=
  ∀ n, P5857776248127216639.a n = A348932 (n + 1)

end A348932

/-! ## A348932.P2224668569643590923

`filter[A374135(n+2), A039982(#)]`
-/

namespace A348932.P2224668569643590923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374135 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A348932.P2224668569643590923

namespace A348932

/-- `filter[A374135(n+2), A039982(#)]` -/
def P2224668569643590923.Spec : Prop :=
  ∀ n, P2224668569643590923.a n = A348932 (n + 1)

end A348932

/-! ## A348932.P5419090618687940199

`filter[A374135(n+2), A093719(#)]`
-/

namespace A348932.P5419090618687940199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374135 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A348932.P5419090618687940199

namespace A348932

/-- `filter[A374135(n+2), A093719(#)]` -/
def P5419090618687940199.Spec : Prop :=
  ∀ n, P5419090618687940199.a n = A348932 (n + 1)

end A348932

/-! ## A348932.P11733850673277760089

`filter[A374135(n+2), A098725(#)]`
-/

namespace A348932.P11733850673277760089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374135 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A348932.P11733850673277760089

namespace A348932

/-- `filter[A374135(n+2), A098725(#)]` -/
def P11733850673277760089.Spec : Prop :=
  ∀ n, P11733850673277760089.a n = A348932 (n + 1)

end A348932

/-! ## A348932.P13049785799062515309

`filter[A374135(n+2), A166486(#)]`
-/

namespace A348932.P13049785799062515309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374135 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A348932.P13049785799062515309

namespace A348932

/-- `filter[A374135(n+2), A166486(#)]` -/
def P13049785799062515309.Spec : Prop :=
  ∀ n, P13049785799062515309.a n = A348932 (n + 1)

end A348932

/-! ## A348932.P3067046519500861581

`filter[A374135(n+2), A320106(#)]`
-/

namespace A348932.P3067046519500861581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374135 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A348932.P3067046519500861581

namespace A348932

/-- `filter[A374135(n+2), A320106(#)]` -/
def P3067046519500861581.Spec : Prop :=
  ∀ n, P3067046519500861581.a n = A348932 (n + 1)

end A348932

/-! ## A348932.P6178985512195899511

`filter[A374135(n+2), A354354(#)]`
-/

namespace A348932.P6178985512195899511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374135 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A348932.P6178985512195899511

namespace A348932

/-- `filter[A374135(n+2), A354354(#)]` -/
def P6178985512195899511.Spec : Prop :=
  ∀ n, P6178985512195899511.a n = A348932 (n + 1)

end A348932

/-! ## A348932.P8292531293242078102

`filter[A271114(n), A070563(#)]`
-/

namespace A348932.P8292531293242078102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A348932.P8292531293242078102

namespace A348932

/-- `filter[A271114(n), A070563(#)]` -/
def P8292531293242078102.Spec : Prop :=
  ∀ n, P8292531293242078102.a n = A348932 (n + 1)

end A348932

/-! ## A348932.P12260321923833776684

`filter[A271114(n), A353815(#)]`
-/

namespace A348932.P12260321923833776684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A348932.P12260321923833776684

namespace A348932

/-- `filter[A271114(n), A353815(#)]` -/
def P12260321923833776684.Spec : Prop :=
  ∀ n, P12260321923833776684.a n = A348932 (n + 1)

end A348932

/-! ## A348932.P14933450054386282187

`filter[A016921(n+1), A070563(#)]`
-/

namespace A348932.P14933450054386282187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A348932.P14933450054386282187

namespace A348932

/-- `filter[A016921(n+1), A070563(#)]` -/
def P14933450054386282187.Spec : Prop :=
  ∀ n, P14933450054386282187.a n = A348932 (n + 1)

end A348932

/-! ## A348932.P13765456284873756444

`filter[A016921(n+1), A353815(#)]`
-/

namespace A348932.P13765456284873756444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A348932.P13765456284873756444

namespace A348932

/-- `filter[A016921(n+1), A353815(#)]` -/
def P13765456284873756444.Spec : Prop :=
  ∀ n, P13765456284873756444.a n = A348932 (n + 1)

end A348932

/-! ## A348932.P11391731257835309827

`filter[A100764(n+2), A070563(#)]`
-/

namespace A348932.P11391731257835309827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100764 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A348932.P11391731257835309827

namespace A348932

/-- `filter[A100764(n+2), A070563(#)]` -/
def P11391731257835309827.Spec : Prop :=
  ∀ n, P11391731257835309827.a n = A348932 (n + 1)

end A348932

/-! ## A348932.P18137229267646003647

`∩[A374135(n+1), A271114(n)]`
-/

namespace A348932.P18137229267646003647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348932.P18137229267646003647

namespace A348932

/-- `∩[A374135(n+1), A271114(n)]` -/
def P18137229267646003647.Spec : Prop :=
  ∀ n, (P18137229267646003647.a n : ℤ) = A348932 (n + 1)

end A348932

/-!
# A348933: Numbers k congruent to 1 or 5 mod 6, for which A348930(k^2) < k^2.

The programs for A348933, the canonical program `A348933.P13259023024269002684` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348933 has offset 1).

The definition of A348933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3517 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348933.P14596817451248585864

`filter[A072864(n+1), A354354(#)]`
-/

namespace A348933.P14596817451248585864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A348933.P14596817451248585864

namespace A348933

/-- `filter[A072864(n+1), A354354(#)]` -/
def P14596817451248585864.Spec : Prop :=
  ∀ n, P14596817451248585864.a n = A348933 (n + 1)

end A348933

/-! ## A348933.P13259023024269002684

`∩[A007310(n+1), A072864(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A348933

/-- `∩[A007310(n+1), A072864(n+1)]` -/
def P13259023024269002684.Spec : Prop :=
  ∀ n, (P13259023024269002684.a n : ℤ) = A348933 (n + 1)

theorem P13259023024269002684.correct : P13259023024269002684.Spec := by
  intro n
  simp only [A348933, Nat.add_sub_cancel]

end A348933

/-! ## A348933.P594233266880062230

`∩[A038179(n+1), A072864(n+1)]`
-/

namespace A348933.P594233266880062230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348933.P594233266880062230

namespace A348933

/-- `∩[A038179(n+1), A072864(n+1)]` -/
def P594233266880062230.Spec : Prop :=
  ∀ n, (P594233266880062230.a n : ℤ) = A348933 (n + 1)

end A348933

/-! ## A348933.P4255491789500676410

`record[A051724(sqrt(A074216(n+1)))]`
-/

namespace A348933.P4255491789500676410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (SequenceMachineLib.roundAway (Real.sqrt (A074216 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348933.P4255491789500676410

namespace A348933

/-- `record[A051724(sqrt(A074216(n+1)))]` -/
def P4255491789500676410.Spec : Prop :=
  ∀ n, P4255491789500676410.a n = A348933 (n + 1)

end A348933

/-! ## A348933.P4301767352504073959

`record[A060789(sqrt(A074216(n+1)))]`
-/

namespace A348933.P4301767352504073959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (SequenceMachineLib.roundAway (Real.sqrt (A074216 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348933.P4301767352504073959

namespace A348933

/-- `record[A060789(sqrt(A074216(n+1)))]` -/
def P4301767352504073959.Spec : Prop :=
  ∀ n, P4301767352504073959.a n = A348933 (n + 1)

end A348933

/-! ## A348933.P12154581907077627087

`record[A065330(sqrt(A074216(n+1)))]`
-/

namespace A348933.P12154581907077627087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (SequenceMachineLib.roundAway (Real.sqrt (A074216 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348933.P12154581907077627087

namespace A348933

/-- `record[A065330(sqrt(A074216(n+1)))]` -/
def P12154581907077627087.Spec : Prop :=
  ∀ n, P12154581907077627087.a n = A348933 (n + 1)

end A348933

/-! ## A348933.P15399555665777529441

`record[A106619(sqrt(A074216(n+1)))]`
-/

namespace A348933.P15399555665777529441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (SequenceMachineLib.roundAway (Real.sqrt (A074216 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348933.P15399555665777529441

namespace A348933

/-- `record[A106619(sqrt(A074216(n+1)))]` -/
def P15399555665777529441.Spec : Prop :=
  ∀ n, P15399555665777529441.a n = A348933 (n + 1)

end A348933

/-!
# A348934: Numbers k congruent to 1 or 5 mod 6, for which A348930(k^2) > k^2.

The programs for A348934, there is no canonical definition to state claims against.
-/

/-! ## A348934.P5066256906930318900

`eq[A033721(a(n-2)), A323436(n)]` with `a(0)=2, a(1)=2, a(2)=9`
-/

namespace A348934.P5066256906930318900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 9] fun n f1 =>
  A033721 (f1 (n - 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323436 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348934.P5066256906930318900

/-! ## A348934.P4132093962702773030

`eq[A033739(a(n-2)), A323436(n)]` with `a(0)=0, a(1)=8, a(2)=9`
-/

namespace A348934.P4132093962702773030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 8, 9] fun n f1 =>
  A033739 (f1 (n - 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323436 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348934.P4132093962702773030

/-! ## A348934.P1036250504825484994

`eq[A033999(A323436(n)), A134667(n)]`
-/

namespace A348934.P1036250504825484994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A323436 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348934.P1036250504825484994

/-! ## A348934.P15722607535256168235

`eq[A163804(A057979(n)), A332029(n+1)]`
-/

namespace A348934.P15722607535256168235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163804 (A057979 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332029 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348934.P15722607535256168235

/-! ## A348934.P11229473852782249331

`eq[A263834(n), A341982(n+2)]`
-/

namespace A348934.P11229473852782249331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263834 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341982 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348934.P11229473852782249331

/-!
# A348935: Numbers k congruent to 1 or 5 mod 6, for which A064989(A064989(sigma(k^2))) < A064989(A064989(k^2)), where A064989 shifts the prime factorization one step towards lower primes, and sigma is the sum of divisors function.

The programs for A348935, there is no canonical definition to state claims against.
-/

/-! ## A348935.P8431272733559896605

`∩[A040999(n+1), A396293(n)]`
-/

namespace A348935.P8431272733559896605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396293 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348935.P8431272733559896605

/-! ## A348935.P15889622340992308924

`A040999(n+5)%A165383(n+2)`
-/

namespace A348935.P15889622340992308924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040999 (n + 5)) (A165383 (n + 2))

end

end A348935.P15889622340992308924

/-! ## A348935.P9121089661257559528

`∩[A040999(n+1), A224535(n+1)]`
-/

namespace A348935.P9121089661257559528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348935.P9121089661257559528

/-! ## A348935.P18039931122211386279

`A006530(A040999(n+5)*A108131(n))`
-/

namespace A348935.P18039931122211386279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A040999 (n + 5) * A108131 n).toNat

end

end A348935.P18039931122211386279

/-! ## A348935.P14475118478547835522

`A040999(n+5)%A175761(A028321(n))`
-/

namespace A348935.P14475118478547835522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040999 (n + 5)) (A175761 (A028321 n).toNat)

end

end A348935.P14475118478547835522

/-!
# A348936: Numbers k congruent to 1 or 5 mod 6, for which A064989(A064989(sigma(k^2))) > A064989(A064989(k^2)), where A064989 shifts the prime factorization one step towards lower primes, and sigma is the sum of divisors function.

The programs for A348936, there is no canonical definition to state claims against.
-/

/-! ## A348936.P10815174346796242725

`sqrt(∩[A348754(n+1), A016754(n)])`
-/

namespace A348936.P10815174346796242725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A348936.P10815174346796242725

/-! ## A348936.P7562237679691753794

`sqrt(∩[A007310(n+1)², A348754(n+1)])`
-/

namespace A348936.P7562237679691753794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348754 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A348936.P7562237679691753794

/-! ## A348936.P11560713710734114623

`sqrt(∩[A000290(2*n+1), A348754(n+1)])`
-/

namespace A348936.P11560713710734114623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348754 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A348936.P11560713710734114623

/-! ## A348936.P1697019367992930229

`record[A056926(A348754(n+1))]`
-/

namespace A348936.P1697019367992930229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A348754 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348936.P1697019367992930229

/-! ## A348936.P1227547641818908826

`sqrt(∩[A348742(n+1), A348754(n+1)])`
-/

namespace A348936.P1227547641818908826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348754 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A348936.P1227547641818908826

/-!
# A348937: a(n) = A003961(n) - A003415(n), where A003961 shifts the prime factorization of n one step towards larger primes, and A003415 gives the arithmetic derivative of n.

The programs for A348937, the canonical program `A348937.P9014571055681436291` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348937 has offset 1).

The definition of A348937 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A003961, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348937.P17771658624631470803

`A286385(n+1)+A343224(n+1)`
-/

namespace A348937.P17771658624631470803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286385 (n + 1) + A343224 (n + 1)

end

end A348937.P17771658624631470803

namespace A348937

/-- `A286385(n+1)+A343224(n+1)` -/
def P17771658624631470803.Spec : Prop :=
  ∀ n, P17771658624631470803.a n = A348937 (n + 1)

theorem P17771658624631470803.correct : P17771658624631470803.Spec := by
  intro n
  simp only [A348937, Nat.add_sub_cancel, A348937.P17771658624631470803.a, A348937.P9014571055681436291.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A003961, A003961.P5996473960037614004.a, A286385, A286385.P7583078268767377745.a, A343224, A343224.P18101851413978261599.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A252749, A252749.P15054942815197957636.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A252748, A252748.P16209281916487994805.a, A349394, A349394.P210516795435731064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A348937

/-! ## A348937.P9014571055681436291

`A003961(n+1)-A003415(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A348937

/-- `A003961(n+1)-A003415(n+1)` -/
def P9014571055681436291.Spec : Prop :=
  ∀ n, P9014571055681436291.a n = A348937 (n + 1)

theorem P9014571055681436291.correct : P9014571055681436291.Spec := by
  intro n
  simp only [A348937, Nat.add_sub_cancel]

end A348937

/-! ## A348937.P15036615018694200102

`A336853(n+1)-A168036(n+1)`
-/

namespace A348937.P15036615018694200102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336853 (n + 1) - A168036 (n + 1)

end

end A348937.P15036615018694200102

namespace A348937

/-- `A336853(n+1)-A168036(n+1)` -/
def P15036615018694200102.Spec : Prop :=
  ∀ n, P15036615018694200102.a n = A348937 (n + 1)

end A348937

/-! ## A348937.P3346761888018218055

`A003961(n+1)-∑[A258057(n)]`
-/

namespace A348937.P3346761888018218055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348937.P3346761888018218055

namespace A348937

/-- `A003961(n+1)-∑[A258057(n)]` -/
def P3346761888018218055.Spec : Prop :=
  ∀ n, P3346761888018218055.a n = A348937 (n + 1)

end A348937

/-! ## A348937.P11441341581318616462

`A253885(n)+1-A003415(n+1)`
-/

namespace A348937.P11441341581318616462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n + 1 - A003415 (n + 1)

end

end A348937.P11441341581318616462

namespace A348937

/-- `A253885(n)+1-A003415(n+1)` -/
def P11441341581318616462.Spec : Prop :=
  ∀ n, P11441341581318616462.a n = A348937 (n + 1)

end A348937

/-! ## A348937.P6798758030607933155

`A003961(n+1)+n+1-A129283(n+1)`
-/

namespace A348937.P6798758030607933155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) + ((n + 1 : ℤ) - A129283 (n + 1))

end

end A348937.P6798758030607933155

namespace A348937

/-- `A003961(n+1)+n+1-A129283(n+1)` -/
def P6798758030607933155.Spec : Prop :=
  ∀ n, P6798758030607933155.a n = A348937 (n + 1)

theorem P6798758030607933155.correct : P6798758030607933155.Spec := by
  intro n
  simp only [A348937, Nat.add_sub_cancel, A348937.P6798758030607933155.a, A348937.P9014571055681436291.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A003961, A003961.P5996473960037614004.a, A129283, A129283.P3962818557550655141.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A252749, A252749.P15054942815197957636.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A252748, A252748.P16209281916487994805.a, A349394, A349394.P210516795435731064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A348937

/-! ## A348937.P15067036077223637590

`A000203(n+1)+A286385(n+1)-A003415(n+1)`
-/

namespace A348937.P15067036077223637590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A286385 (n + 1) - A003415 (n + 1))

end

end A348937.P15067036077223637590

namespace A348937

/-- `A000203(n+1)+A286385(n+1)-A003415(n+1)` -/
def P15067036077223637590.Spec : Prop :=
  ∀ n, P15067036077223637590.a n = A348937 (n + 1)

theorem P15067036077223637590.correct : P15067036077223637590.Spec := by
  intro n
  simp only [A348937, Nat.add_sub_cancel, A348937.P15067036077223637590.a, A348937.P9014571055681436291.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A003961, A003961.P5996473960037614004.a, A286385, A286385.P7583078268767377745.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A252749, A252749.P15054942815197957636.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A252748, A252748.P16209281916487994805.a, A349394, A349394.P210516795435731064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A348937

/-! ## A348937.P18057274363602289871

`A003961(n+1)-A003557(n+1)*A342001(n+1)`
-/

namespace A348937.P18057274363602289871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) - A003557 (n + 1) * A342001 (n + 1)

end

end A348937.P18057274363602289871

namespace A348937

/-- `A003961(n+1)-A003557(n+1)*A342001(n+1)` -/
def P18057274363602289871.Spec : Prop :=
  ∀ n, P18057274363602289871.a n = A348937 (n + 1)

end A348937

/-! ## A348937.P1732479902849768853

`A093178(A045965(n+1))-A003415(n+1)`
-/

namespace A348937.P1732479902849768853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A045965 (n + 1)).toNat - A003415 (n + 1)

end

end A348937.P1732479902849768853

namespace A348937

/-- `A093178(A045965(n+1))-A003415(n+1)` -/
def P1732479902849768853.Spec : Prop :=
  ∀ n, P1732479902849768853.a n = A348937 (n + 1)

end A348937

/-! ## A348937.P4058866275865390670

`A266646(2*(n+1))-(A003415(n+1)+1)`
-/

namespace A348937.P4058866275865390670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266646 (2 * (n + 1)) - (A003415 (n + 1) + 1)

end

end A348937.P4058866275865390670

namespace A348937

/-- `A266646(2*(n+1))-(A003415(n+1)+1)` -/
def P4058866275865390670.Spec : Prop :=
  ∀ n, P4058866275865390670.a n = A348937 (n + 1)

end A348937

/-!
# A348938: Odd numbers k for which A064989(sigma(k)) < A064989(k), and which are of the form p^(1+4k) * r^2, where p is prime of the form 1+4m, r > 1, and gcd(p,r) = 1.

The programs for A348938, there is no canonical definition to state claims against.
-/

/-! ## A348938.P11823785522378492332

`filter[A228058(n+1), A353638(#)]`
-/

namespace A348938.P11823785522378492332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353638 (f1 j).toNat = 1) n)

end

end A348938.P11823785522378492332

/-!
# A348939: Odd numbers k for which A064989(sigma(k)) > A064989(k), and which are of the form p^(1+4k) * r^2, where p is prime of the form 1+4m, r > 1, and gcd(p,r) = 1.

The programs for A348939, there is no canonical definition to state claims against.
-/

/-! ## A348939.P16508775770114170681

`filter[A228058(n+1), A353639(#)]`
-/

namespace A348939.P16508775770114170681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353639 (f1 j).toNat = 1) n)

end

end A348939.P16508775770114170681

/-! ## A348939.P12464729166381852968

`filter[A389458(n+1), A353639(#)]`
-/

namespace A348939.P12464729166381852968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353639 (f1 j).toNat = 1) n)

end

end A348939.P12464729166381852968

/-! ## A348939.P7193717007685463110

`filter[A389459(n+1), A353639(#)]`
-/

namespace A348939.P7193717007685463110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353639 (f1 j).toNat = 1) n)

end

end A348939.P7193717007685463110

/-! ## A348939.P10601294905210442686

`∩[A228058(n+1), A348749(n+1)]`
-/

namespace A348939.P10601294905210442686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348939.P10601294905210442686

/-! ## A348939.P12853578857618990321

`∩[A348749(n+1), A389458(n+1)]`
-/

namespace A348939.P12853578857618990321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348939.P12853578857618990321

/-! ## A348939.P10983606708343961659

`∩[A348749(n+1), A389459(n+1)]`
-/

namespace A348939.P10983606708343961659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348939.P10983606708343961659

/-!
# A348940: a(n) = gcd(n, A326042(n)), where A326042 is multiplicative function A064989(sigma(A003961(n))).

The programs for A348940, the canonical program `A348940.P7101903597430363459` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348940 has offset 1).

The definition of A348940 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326042, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348940.P9028803597796532867

`(n+1)/A348941(n+1)`
-/

namespace A348940.P9028803597796532867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A348941 (n + 1) : ℚ)

end

end A348940.P9028803597796532867

namespace A348940

/-- `(n+1)/A348941(n+1)` -/
def P9028803597796532867.Spec : Prop :=
  ∀ n, P9028803597796532867.a n = (A348940 (n + 1) : ℚ)

end A348940

/-! ## A348940.P7101903597430363459

`gcd(n+1, A326042(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A348940

/-- `gcd(n+1, A326042(n+1))` -/
def P7101903597430363459.Spec : Prop :=
  ∀ n, (P7101903597430363459.a n : ℤ) = A348940 (n + 1)

theorem P7101903597430363459.correct : P7101903597430363459.Spec := by
  intro n
  simp only [A348940, Nat.add_sub_cancel]

end A348940

/-! ## A348940.P2989781797626853823

`A326042(n+1)/A348942(n+1)`
-/

namespace A348940.P2989781797626853823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326042 (n + 1) : ℚ) / (A348942 (n + 1) : ℚ)

end

end A348940.P2989781797626853823

namespace A348940

/-- `A326042(n+1)/A348942(n+1)` -/
def P2989781797626853823.Spec : Prop :=
  ∀ n, P2989781797626853823.a n = (A348940 (n + 1) : ℚ)

end A348940

/-! ## A348940.P5438707345631088023

`A064989(A336850(n+1))`
-/

namespace A348940.P5438707345631088023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A336850 (n + 1)).toNat

end

end A348940.P5438707345631088023

namespace A348940

/-- `A064989(A336850(n+1))` -/
def P5438707345631088023.Spec : Prop :=
  ∀ n, P5438707345631088023.a n = A348940 (n + 1)

end A348940

/-! ## A348940.P2472403908175836431

`A064216((A336850(n+1)+1)/2)`
-/

namespace A348940.P2472403908175836431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (SequenceMachineLib.roundAway ((A336850 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A348940.P2472403908175836431

namespace A348940

/-- `A064216((A336850(n+1)+1)/2)` -/
def P2472403908175836431.Spec : Prop :=
  ∀ n, P2472403908175836431.a n = A348940 (n + 1)

end A348940

/-! ## A348940.P6377723708924419759

`gcd(A005451(n+1), A348736(n+1))`
-/

namespace A348940.P6377723708924419759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005451 (n + 1)) (A348736 (n + 1))

end

end A348940.P6377723708924419759

namespace A348940

/-- `gcd(A005451(n+1), A348736(n+1))` -/
def P6377723708924419759.Spec : Prop :=
  ∀ n, (P6377723708924419759.a n : ℤ) = A348940 (n + 1)

end A348940

/-! ## A348940.P15654618011827010653

`A064989(gcd(A003961(n+1), A003973(n+1)))`
-/

namespace A348940.P15654618011827010653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (Int.gcd (A003961 (n + 1)) (A003973 (n + 1)))

end

end A348940.P15654618011827010653

namespace A348940

/-- `A064989(gcd(A003961(n+1), A003973(n+1)))` -/
def P15654618011827010653.Spec : Prop :=
  ∀ n, P15654618011827010653.a n = A348940 (n + 1)

end A348940

/-! ## A348940.P1502142484809411882

`A064989(A325636(A003961(n+1)))`
-/

namespace A348940.P1502142484809411882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A325636 (A003961 (n + 1)).toNat).toNat

end

end A348940.P1502142484809411882

namespace A348940

/-- `A064989(A325636(A003961(n+1)))` -/
def P1502142484809411882.Spec : Prop :=
  ∀ n, P1502142484809411882.a n = A348940 (n + 1)

end A348940

/-! ## A348940.P7180238077917299234

`A350073(A003961(n+1))/A348942(n+1)`
-/

namespace A348940.P7180238077917299234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350073 (A003961 (n + 1)).toNat : ℚ) / (A348942 (n + 1) : ℚ)

end

end A348940.P7180238077917299234

namespace A348940

/-- `A350073(A003961(n+1))/A348942(n+1)` -/
def P7180238077917299234.Spec : Prop :=
  ∀ n, P7180238077917299234.a n = (A348940 (n + 1) : ℚ)

end A348940

/-! ## A348940.P10487790098089007814

`(n+1)/A064989(A336849(n+1))`
-/

namespace A348940.P10487790098089007814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A064989 (A336849 (n + 1)).toNat : ℚ)

end

end A348940.P10487790098089007814

namespace A348940

/-- `(n+1)/A064989(A336849(n+1))` -/
def P10487790098089007814.Spec : Prop :=
  ∀ n, P10487790098089007814.a n = (A348940 (n + 1) : ℚ)

end A348940

/-! ## A348940.P7918555292532084469

`A064989(A003973(n+1))/A348942(n+1)`
-/

namespace A348940.P7918555292532084469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064989 (A003973 (n + 1)).toNat : ℚ) / (A348942 (n + 1) : ℚ)

end

end A348940.P7918555292532084469

namespace A348940

/-- `A064989(A003973(n+1))/A348942(n+1)` -/
def P7918555292532084469.Spec : Prop :=
  ∀ n, P7918555292532084469.a n = (A348940 (n + 1) : ℚ)

end A348940

/-!
# A348941: a(n) = n / gcd(n, A326042(n)).

The programs for A348941, the canonical program `A348941.P16476962796183016569` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348941 has offset 1).

The definition of A348941 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348940, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348941.P16476962796183016569

`(n+1)/A348940(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A348941

/-- `(n+1)/A348940(n+1)` -/
def P16476962796183016569.Spec : Prop :=
  ∀ n, P16476962796183016569.a n = (A348941 (n + 1) : ℚ)

end A348941

/-! ## A348941.P9306297522847446484

`(n+1)/gcd(n+1, A326042(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348941.P9306297522847446484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A326042 (n + 1)) : ℚ)

end

end A348941.P9306297522847446484

namespace A348941

/-- `(n+1)/gcd(n+1, A326042(n+1))` -/
def P9306297522847446484.Spec : Prop :=
  ∀ n, P9306297522847446484.a n = (A348941 (n + 1) : ℚ)

end A348941

/-! ## A348941.P6292534349985726504

`(n+1)/A064989(A336850(n+1))`
-/

namespace A348941.P6292534349985726504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A064989 (A336850 (n + 1)).toNat : ℚ)

end

end A348941.P6292534349985726504

namespace A348941

/-- `(n+1)/A064989(A336850(n+1))` -/
def P6292534349985726504.Spec : Prop :=
  ∀ n, P6292534349985726504.a n = (A348941 (n + 1) : ℚ)

end A348941

/-! ## A348941.P9650063322301228716

`(n+1)/A064989(A325636(A003961(n+1)))`
-/

namespace A348941.P9650063322301228716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A064989 (A325636 (A003961 (n + 1)).toNat).toNat : ℚ)

end

end A348941.P9650063322301228716

namespace A348941

/-- `(n+1)/A064989(A325636(A003961(n+1)))` -/
def P9650063322301228716.Spec : Prop :=
  ∀ n, P9650063322301228716.a n = (A348941 (n + 1) : ℚ)

end A348941

/-! ## A348941.P14772967647774238105

`A064989(A336849(n+1))`
-/

namespace A348941.P14772967647774238105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A336849 (n + 1)).toNat

end

end A348941.P14772967647774238105

namespace A348941

/-- `A064989(A336849(n+1))` -/
def P14772967647774238105.Spec : Prop :=
  ∀ n, P14772967647774238105.a n = A348941 (n + 1)

end A348941

/-! ## A348941.P11248624220609591256

`A064989(A017666(A003961(n+1)))`
-/

namespace A348941.P11248624220609591256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A017666 (A003961 (n + 1)).toNat).toNat

end

end A348941.P11248624220609591256

namespace A348941

/-- `A064989(A017666(A003961(n+1)))` -/
def P11248624220609591256.Spec : Prop :=
  ∀ n, P11248624220609591256.a n = A348941 (n + 1)

end A348941

/-!
# A348942: a(n) = A326042(n) / gcd(n, A326042(n)).

The programs for A348942, the canonical program `A348942.P4298548663594448972` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348942 has offset 1).

The definition of A348942 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326042, A348940, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348942.P4298548663594448972

`A326042(n+1)/A348940(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A348942

/-- `A326042(n+1)/A348940(n+1)` -/
def P4298548663594448972.Spec : Prop :=
  ∀ n, P4298548663594448972.a n = (A348942 (n + 1) : ℚ)

end A348942

/-! ## A348942.P13974362590072216735

`A326042(n+1)/gcd(n+1, A326042(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348942.P13974362590072216735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326042 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A326042 (n + 1)) : ℚ)

end

end A348942.P13974362590072216735

namespace A348942

/-- `A326042(n+1)/gcd(n+1, A326042(n+1))` -/
def P13974362590072216735.Spec : Prop :=
  ∀ n, P13974362590072216735.a n = (A348942 (n + 1) : ℚ)

end A348942

/-! ## A348942.P3022351500570261742

`(n+1-A348736(n+1))/A348940(n+1)`
-/

namespace A348942.P3022351500570261742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A348736 (n + 1) : ℚ) / (A348940 (n + 1) : ℚ)

end

end A348942.P3022351500570261742

namespace A348942

/-- `(n+1-A348736(n+1))/A348940(n+1)` -/
def P3022351500570261742.Spec : Prop :=
  ∀ n, P3022351500570261742.a n = (A348942 (n + 1) : ℚ)

end A348942

/-! ## A348942.P11206224074237373951

`A326042(n+1)/A064989(A336850(n+1))`
-/

namespace A348942.P11206224074237373951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326042 (n + 1) : ℚ) / (A064989 (A336850 (n + 1)).toNat : ℚ)

end

end A348942.P11206224074237373951

namespace A348942

/-- `A326042(n+1)/A064989(A336850(n+1))` -/
def P11206224074237373951.Spec : Prop :=
  ∀ n, P11206224074237373951.a n = (A348942 (n + 1) : ℚ)

end A348942

/-! ## A348942.P2305379771771763637

`A064989(A341525(n+1))`
-/

namespace A348942.P2305379771771763637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A341525 (n + 1)).toNat

end

end A348942.P2305379771771763637

namespace A348942

/-- `A064989(A341525(n+1))` -/
def P2305379771771763637.Spec : Prop :=
  ∀ n, P2305379771771763637.a n = A348942 (n + 1)

end A348942

/-! ## A348942.P12589526664117942541

`A064989(A017665(A003961(n+1)))`
-/

namespace A348942.P12589526664117942541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A017665 (A003961 (n + 1)).toNat).toNat

end

end A348942.P12589526664117942541

namespace A348942

/-- `A064989(A017665(A003961(n+1)))` -/
def P12589526664117942541.Spec : Prop :=
  ∀ n, P12589526664117942541.a n = A348942 (n + 1)

end A348942

/-! ## A348942.P3908054183689960448

`A064989(A003973(n+1)/A336850(n+1))`
-/

namespace A348942.P3908054183689960448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (SequenceMachineLib.roundAway ((A003973 (n + 1) : ℚ) / (A336850 (n + 1) : ℚ))).toNat

end

end A348942.P3908054183689960448

namespace A348942

/-- `A064989(A003973(n+1)/A336850(n+1))` -/
def P3908054183689960448.Spec : Prop :=
  ∀ n, P3908054183689960448.a n = A348942 (n + 1)

end A348942

/-!
# A348943: Odd numbers k for which A348942(A064989(k)) = 1.

The programs for A348943, there is no canonical definition to state claims against.
-/

/-! ## A348943.P572052982637226526

`eq[1, A355943(n+1)]+1`
-/

namespace A348943.P572052982637226526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355943 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A348943.P572052982637226526

/-! ## A348943.P12457330906179785168

`filter[2*n+1, A355943(#)]`
-/

namespace A348943.P12457330906179785168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355943 (f1 j) = 1) n)

end

end A348943.P12457330906179785168

/-! ## A348943.P2549803784814417266

`filter[2*n+1, A361465(#)]`
-/

namespace A348943.P2549803784814417266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361465 (f1 j) = 1) n)

end

end A348943.P2549803784814417266

/-! ## A348943.P17190075141584254934

`∩[2*n+1, A043305(n+1)]`
-/

namespace A348943.P17190075141584254934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348943.P17190075141584254934

/-! ## A348943.P7719175152527151489

`record[A000265(A043305(n+1))]`
-/

namespace A348943.P7719175152527151489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A043305 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348943.P7719175152527151489

/-! ## A348943.P2583205320644417821

`filter[A043305(n+1), A000035(#)]`
-/

namespace A348943.P2583205320644417821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A348943.P2583205320644417821

/-! ## A348943.P15446620502767725267

`filter[A043305(n+1), A118102(#)]`
-/

namespace A348943.P15446620502767725267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A118102 (f1 j).toNat = 1) n)

end

end A348943.P15446620502767725267

/-! ## A348943.P1967165259730298959

`filter[A043305(n+1), A347871(#)]`
-/

namespace A348943.P1967165259730298959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347871 (f1 j).toNat = 1) n)

end

end A348943.P1967165259730298959

/-! ## A348943.P1158766282880047210

`filter[A043305(n+1), A373157(#)]`
-/

namespace A348943.P1158766282880047210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A348943.P1158766282880047210

/-! ## A348943.P12267023225480693671

`filter[A043305(n+1), A379952(#)]`
-/

namespace A348943.P12267023225480693671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A348943.P12267023225480693671

/-!
# A348944: a(n) = (1/2) * (A003959(n)+A034448(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e and A034448 (usigma) is multiplicative with a(p^e) = (p^e)+1.

The programs for A348944, the canonical program `A348944.P9603351630688322908` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348944 has offset 1).

The definition of A348944 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348944.P9603351630688322908

`1/2*(A003959(n+1)+A034448(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A348944

/-- `1/2*(A003959(n+1)+A034448(n+1))` -/
def P9603351630688322908.Spec : Prop :=
  ∀ n, P9603351630688322908.a n = (A348944 (n + 1) : ℚ)

end A348944

/-! ## A348944.P3600997794131957298

`A348945(n+1)+Δ[A160664(n)]`
-/

namespace A348944.P3600997794131957298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348945 (n + 1) + (f1 (n + 1) - f1 n)

end

end A348944.P3600997794131957298

namespace A348944

/-- `A348945(n+1)+Δ[A160664(n)]` -/
def P3600997794131957298.Spec : Prop :=
  ∀ n, P3600997794131957298.a n = A348944 (n + 1)

end A348944

/-! ## A348944.P12163670184772637611

`A348945(n+1)+A000203(n+1)`
-/

namespace A348944.P12163670184772637611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348945 (n + 1) + A000203 (n + 1)

end

end A348944.P12163670184772637611

namespace A348944

/-- `A348945(n+1)+A000203(n+1)` -/
def P12163670184772637611.Spec : Prop :=
  ∀ n, P12163670184772637611.a n = A348944 (n + 1)

end A348944

/-! ## A348944.P11678154053290138734

`A348946(n+1)*A348947(n+1)`
-/

namespace A348944.P11678154053290138734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348946 (n + 1) * A348947 (n + 1)

end

end A348944.P11678154053290138734

namespace A348944

/-- `A348946(n+1)*A348947(n+1)` -/
def P11678154053290138734.Spec : Prop :=
  ∀ n, P11678154053290138734.a n = A348944 (n + 1)

end A348944

/-! ## A348944.P2011691265868991815

`A348945(n+1)+sqrt(A072861(n+1))`
-/

namespace A348944.P2011691265868991815
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A348945 (n + 1) : ℝ) + Real.sqrt (A072861 (n + 1) : ℝ)

end

end A348944.P2011691265868991815

namespace A348944

/-- `A348945(n+1)+sqrt(A072861(n+1))` -/
def P2011691265868991815.Spec : Prop :=
  ∀ n, P2011691265868991815.a n = (A348944 (n + 1) : ℝ)

end A348944

/-! ## A348944.P9790242354186564068

`(A003959(n+1)+A034448(n+1))/2`
-/

namespace A348944.P9790242354186564068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) + A034448 (n + 1) : ℚ) / 2

end

end A348944.P9790242354186564068

namespace A348944

/-- `(A003959(n+1)+A034448(n+1))/2` -/
def P9790242354186564068.Spec : Prop :=
  ∀ n, P9790242354186564068.a n = (A348944 (n + 1) : ℚ)

end A348944

/-! ## A348944.P10628008589748568470

`A034448(n+1)+A348732(n+1)/2`
-/

namespace A348944.P10628008589748568470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) + (A348732 (n + 1) : ℚ) / 2

end

end A348944.P10628008589748568470

namespace A348944

/-- `A034448(n+1)+A348732(n+1)/2` -/
def P10628008589748568470.Spec : Prop :=
  ∀ n, P10628008589748568470.a n = (A348944 (n + 1) : ℚ)

end A348944

/-! ## A348944.P3672560542492326380

`A003959(n+1)-A348732(n+1)/2`
-/

namespace A348944.P3672560542492326380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) - (A348732 (n + 1) : ℚ) / 2

end

end A348944.P3672560542492326380

namespace A348944

/-- `A003959(n+1)-A348732(n+1)/2` -/
def P3672560542492326380.Spec : Prop :=
  ∀ n, P3672560542492326380.a n = (A348944 (n + 1) : ℚ)

end A348944

/-! ## A348944.P12598589362194884501

`A348945(n+1)+A245092(A005408(n))`
-/

namespace A348944.P12598589362194884501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348945 (n + 1) + A245092 (A005408 n).toNat

end

end A348944.P12598589362194884501

namespace A348944

/-- `A348945(n+1)+A245092(A005408(n))` -/
def P12598589362194884501.Spec : Prop :=
  ∀ n, P12598589362194884501.a n = A348944 (n + 1)

end A348944

/-! ## A348944.P10483802614906243451

`A034448(n+1)+A348945(n+1)+A048146(n+1)`
-/

namespace A348944.P10483802614906243451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A348945 (n + 1) + A048146 (n + 1))

end

end A348944.P10483802614906243451

namespace A348944

/-- `A034448(n+1)+A348945(n+1)+A048146(n+1)` -/
def P10483802614906243451.Spec : Prop :=
  ∀ n, P10483802614906243451.a n = A348944 (n + 1)

end A348944

/-! ## A348944.P1499469571884164086

`A003959(n+1)-(A348945(n+1)+A048146(n+1))`
-/

namespace A348944.P1499469571884164086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) - (A348945 (n + 1) + A048146 (n + 1))

end

end A348944.P1499469571884164086

namespace A348944

/-- `A003959(n+1)-(A348945(n+1)+A048146(n+1))` -/
def P1499469571884164086.Spec : Prop :=
  ∀ n, P1499469571884164086.a n = A348944 (n + 1)

end A348944

/-! ## A348944.P4094419299610220265

`A003959(n+1)+A348945(n+1)-A348029(n+1)`
-/

namespace A348944.P4094419299610220265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) + (A348945 (n + 1) - A348029 (n + 1))

end

end A348944.P4094419299610220265

namespace A348944

/-- `A003959(n+1)+A348945(n+1)-A348029(n+1)` -/
def P4094419299610220265.Spec : Prop :=
  ∀ n, P4094419299610220265.a n = A348944 (n + 1)

end A348944

/-! ## A348944.P11369089146540312549

`A034448(n+1)+A348029(n+1)-A348945(n+1)`
-/

namespace A348944.P11369089146540312549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A348029 (n + 1) - A348945 (n + 1))

end

end A348944.P11369089146540312549

namespace A348944

/-- `A034448(n+1)+A348029(n+1)-A348945(n+1)` -/
def P11369089146540312549.Spec : Prop :=
  ∀ n, P11369089146540312549.a n = A348944 (n + 1)

end A348944

/-! ## A348944.P3045258624476587091

`A348945(n+1)+A348946(n+1)*A348948(n+1)`
-/

namespace A348944.P3045258624476587091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348945 (n + 1) + A348946 (n + 1) * A348948 (n + 1)

end

end A348944.P3045258624476587091

namespace A348944

/-- `A348945(n+1)+A348946(n+1)*A348948(n+1)` -/
def P3045258624476587091.Spec : Prop :=
  ∀ n, P3045258624476587091.a n = A348944 (n + 1)

end A348944

/-! ## A348944.P1844606172958759460

`A348945(n+1)+A348984(n+1)*A348985(n+1)`
-/

namespace A348944.P1844606172958759460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348945 (n + 1) + A348984 (n + 1) * A348985 (n + 1)

end

end A348944.P1844606172958759460

namespace A348944

/-- `A348945(n+1)+A348984(n+1)*A348985(n+1)` -/
def P1844606172958759460.Spec : Prop :=
  ∀ n, P1844606172958759460.a n = A348944 (n + 1)

end A348944

/-! ## A348944.P14250842949455730320

`A000203(n+1)*A348947(n+1)/A348948(n+1)`
-/

namespace A348944.P14250842949455730320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) * A348947 (n + 1) : ℚ) / (A348948 (n + 1) : ℚ)

end

end A348944.P14250842949455730320

namespace A348944

/-- `A000203(n+1)*A348947(n+1)/A348948(n+1)` -/
def P14250842949455730320.Spec : Prop :=
  ∀ n, P14250842949455730320.a n = (A348944 (n + 1) : ℚ)

end A348944

/-! ## A348944.P2845785789934345978

`A348945(n+1)+A326065(A103517(n))`
-/

namespace A348944.P2845785789934345978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348945 (n + 1) + A326065 (A103517 n).toNat

end

end A348944.P2845785789934345978

namespace A348944

/-- `A348945(n+1)+A326065(A103517(n))` -/
def P2845785789934345978.Spec : Prop :=
  ∀ n, P2845785789934345978.a n = A348944 (n + 1)

end A348944

/-! ## A348944.P15908448411343752259

`A348945(n+1)+A216627(A000124(n))`
-/

namespace A348944.P15908448411343752259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348945 (n + 1) + A216627 (A000124 n).toNat

end

end A348944.P15908448411343752259

namespace A348944

/-- `A348945(n+1)+A216627(A000124(n))` -/
def P15908448411343752259.Spec : Prop :=
  ∀ n, P15908448411343752259.a n = A348944 (n + 1)

end A348944

/-!
# A348945: a(n) = A348944(n) - sigma(n), where A348944 is the arithmetic mean of A003959 and A034448, and sigma is the sum of divisors function.

The programs for A348945, the canonical program `A348945.P12569609886156020164` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348945 has offset 1).

The definition of A348945 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348944, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348945.P12569609886156020164

`A348944(n+1)-A000203(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A348945

/-- `A348944(n+1)-A000203(n+1)` -/
def P12569609886156020164.Spec : Prop :=
  ∀ n, P12569609886156020164.a n = A348945 (n + 1)

theorem P12569609886156020164.correct : P12569609886156020164.Spec := by
  intro n
  simp only [A348945, Nat.add_sub_cancel]

end A348945

/-! ## A348945.P7738277460505583151

`1/2*(A348029(n+1)-A048146(n+1))`
-/

namespace A348945.P7738277460505583151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A348029 (n + 1) - A048146 (n + 1) : ℚ)

end

end A348945.P7738277460505583151

namespace A348945

/-- `1/2*(A348029(n+1)-A048146(n+1))` -/
def P7738277460505583151.Spec : Prop :=
  ∀ n, P7738277460505583151.a n = (A348945 (n + 1) : ℚ)

end A348945

/-! ## A348945.P3747429782963401465

`1/2*(A003959(n+1)+A034448(n+1))-A000203(n+1)`
-/

namespace A348945.P3747429782963401465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A003959 (n + 1) + A034448 (n + 1) : ℚ) - (A000203 (n + 1) : ℚ)

end

end A348945.P3747429782963401465

namespace A348945

/-- `1/2*(A003959(n+1)+A034448(n+1))-A000203(n+1)` -/
def P3747429782963401465.Spec : Prop :=
  ∀ n, P3747429782963401465.a n = (A348945 (n + 1) : ℚ)

end A348945

/-! ## A348945.P17390644491026764771

`A348944(n+1)-Δ[A160664(n)]`
-/

namespace A348945.P17390644491026764771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348944 (n + 1) - (f1 (n + 1) - f1 n)

end

end A348945.P17390644491026764771

namespace A348945

/-- `A348944(n+1)-Δ[A160664(n)]` -/
def P17390644491026764771.Spec : Prop :=
  ∀ n, P17390644491026764771.a n = A348945 (n + 1)

end A348945

/-! ## A348945.P14889925840431536853

`A348944(n+1)+1-A088580(n+1)`
-/

namespace A348945.P14889925840431536853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348944 (n + 1) + (1 - A088580 (n + 1))

end

end A348945.P14889925840431536853

namespace A348945

/-- `A348944(n+1)+1-A088580(n+1)` -/
def P14889925840431536853.Spec : Prop :=
  ∀ n, P14889925840431536853.a n = A348945 (n + 1)

theorem P14889925840431536853.correct : P14889925840431536853.Spec := by
  intro n
  simp only [A348945, Nat.add_sub_cancel, A348945.P14889925840431536853.a, A348945.P12569609886156020164.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A088580, A088580.P3089093194242277422.a, A348944, A348944.P9603351630688322908.a, A003959, A003959.P10480308691352807012.f1, A003959.P10480308691352807012.a, A034448, A034448.P17017727775393200719.a, A003968, A003968.P10961526323602588276.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A001615, A001615.P12078511981713404634.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A167338, A167338.P17492942069736666981.f1, A167338.P17492942069736666981.a, A379812, A379812.P10955070158037639960.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348945

/-! ## A348945.P968515219870796532

`(A348029(n+1)-A048146(n+1))/2`
-/

namespace A348945.P968515219870796532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348029 (n + 1) - A048146 (n + 1) : ℚ) / 2

end

end A348945.P968515219870796532

namespace A348945

/-- `(A348029(n+1)-A048146(n+1))/2` -/
def P968515219870796532.Spec : Prop :=
  ∀ n, P968515219870796532.a n = (A348945 (n + 1) : ℚ)

end A348945

/-! ## A348945.P13477299063736285768

`A348732(n+1)/2-A048146(n+1)`
-/

namespace A348945.P13477299063736285768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348732 (n + 1) : ℚ) / 2 - (A048146 (n + 1) : ℚ)

end

end A348945.P13477299063736285768

namespace A348945

/-- `A348732(n+1)/2-A048146(n+1)` -/
def P13477299063736285768.Spec : Prop :=
  ∀ n, P13477299063736285768.a n = (A348945 (n + 1) : ℚ)

end A348945

/-! ## A348945.P16263281959584700199

`A348029(n+1)-A348732(n+1)/2`
-/

namespace A348945.P16263281959584700199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348029 (n + 1) : ℚ) - (A348732 (n + 1) : ℚ) / 2

end

end A348945.P16263281959584700199

namespace A348945

/-- `A348029(n+1)-A348732(n+1)/2` -/
def P16263281959584700199.Spec : Prop :=
  ∀ n, P16263281959584700199.a n = (A348945 (n + 1) : ℚ)

end A348945

/-! ## A348945.P9019864388317138617

`A003959(n+1)-(A348944(n+1)+A048146(n+1))`
-/

namespace A348945.P9019864388317138617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) - (A348944 (n + 1) + A048146 (n + 1))

end

end A348945.P9019864388317138617

namespace A348945

/-- `A003959(n+1)-(A348944(n+1)+A048146(n+1))` -/
def P9019864388317138617.Spec : Prop :=
  ∀ n, P9019864388317138617.a n = A348945 (n + 1)

end A348945

/-! ## A348945.P5033241174562303889

`A348944(n+1)-(A048146(n+1)+A034448(n+1))`
-/

namespace A348945.P5033241174562303889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348944 (n + 1) - (A048146 (n + 1) + A034448 (n + 1))

end

end A348945.P5033241174562303889

namespace A348945

/-- `A348944(n+1)-(A048146(n+1)+A034448(n+1))` -/
def P5033241174562303889.Spec : Prop :=
  ∀ n, P5033241174562303889.a n = A348945 (n + 1)

theorem P5033241174562303889.correct : P5033241174562303889.Spec := by
  intro n
  simp only [A348945, Nat.add_sub_cancel, A348945.P5033241174562303889.a, A348945.P12569609886156020164.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P17017727775393200719.a, A048146, A048146.P9985884013456677192.a, A348944, A348944.P9603351630688322908.a, A003959, A003959.P10480308691352807012.f1, A003959.P10480308691352807012.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A003968, A003968.P10961526323602588276.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A001615, A001615.P12078511981713404634.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, A167338, A167338.P17492942069736666981.f1, A167338.P17492942069736666981.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A348945

/-! ## A348945.P11490098947339222519

`A348029(n+1)+A348944(n+1)-A003959(n+1)`
-/

namespace A348945.P11490098947339222519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348029 (n + 1) + (A348944 (n + 1) - A003959 (n + 1))

end

end A348945.P11490098947339222519

namespace A348945

/-- `A348029(n+1)+A348944(n+1)-A003959(n+1)` -/
def P11490098947339222519.Spec : Prop :=
  ∀ n, P11490098947339222519.a n = A348945 (n + 1)

theorem P11490098947339222519.correct : P11490098947339222519.Spec := by
  intro n
  simp only [A348945, Nat.add_sub_cancel, A348945.P11490098947339222519.a, A348945.P12569609886156020164.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003959, A003959.P10480308691352807012.f1, A003959.P10480308691352807012.a, A348029, A348029.P15301953817482989203.a, A348944, A348944.P9603351630688322908.a, A003968, A003968.P10961526323602588276.a, A034448, A034448.P17017727775393200719.a, A001615, A001615.P12078511981713404634.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A167338, A167338.P17492942069736666981.f1, A167338.P17492942069736666981.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A014963, A014963.P5975177236000282614.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348945

/-! ## A348945.P13194863649097762857

`A034448(n+1)+A348029(n+1)-A348944(n+1)`
-/

namespace A348945.P13194863649097762857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A348029 (n + 1) - A348944 (n + 1))

end

end A348945.P13194863649097762857

namespace A348945

/-- `A034448(n+1)+A348029(n+1)-A348944(n+1)` -/
def P13194863649097762857.Spec : Prop :=
  ∀ n, P13194863649097762857.a n = A348945 (n + 1)

end A348945

/-! ## A348945.P2624574762827604736

`A348946(n+1)*A348947(n+1)-A000203(n+1)`
-/

namespace A348945.P2624574762827604736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348946 (n + 1) * A348947 (n + 1) - A000203 (n + 1)

end

end A348945.P2624574762827604736

namespace A348945

/-- `A348946(n+1)*A348947(n+1)-A000203(n+1)` -/
def P2624574762827604736.Spec : Prop :=
  ∀ n, P2624574762827604736.a n = A348945 (n + 1)

end A348945

/-! ## A348945.P4031009977439200553

`A348944(n+1)-A348946(n+1)*A348948(n+1)`
-/

namespace A348945.P4031009977439200553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348944 (n + 1) - A348946 (n + 1) * A348948 (n + 1)

end

end A348945.P4031009977439200553

namespace A348945

/-- `A348944(n+1)-A348946(n+1)*A348948(n+1)` -/
def P4031009977439200553.Spec : Prop :=
  ∀ n, P4031009977439200553.a n = A348945 (n + 1)

end A348945

/-! ## A348945.P16547177475266874488

`(A348947(n+1)-A348948(n+1))*A348946(n+1)`
-/

namespace A348945.P16547177475266874488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A348947 (n + 1) - A348948 (n + 1)) * A348946 (n + 1)

end

end A348945.P16547177475266874488

namespace A348945

/-- `(A348947(n+1)-A348948(n+1))*A348946(n+1)` -/
def P16547177475266874488.Spec : Prop :=
  ∀ n, P16547177475266874488.a n = A348945 (n + 1)

end A348945

/-! ## A348945.P10426965595026113969

`A004525(A348029(n+1)-A048146(n+1))`
-/

namespace A348945.P10426965595026113969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A348029 (n + 1) - A048146 (n + 1)).toNat

end

end A348945.P10426965595026113969

namespace A348945

/-- `A004525(A348029(n+1)-A048146(n+1))` -/
def P10426965595026113969.Spec : Prop :=
  ∀ n, P10426965595026113969.a n = A348945 (n + 1)

end A348945

/-! ## A348945.P837019428739762384

`A004526(A348029(n+1)-A048146(n+1))`
-/

namespace A348945.P837019428739762384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A348029 (n + 1) - A048146 (n + 1)).toNat

end

end A348945.P837019428739762384

namespace A348945

/-- `A004526(A348029(n+1)-A048146(n+1))` -/
def P837019428739762384.Spec : Prop :=
  ∀ n, P837019428739762384.a n = A348945 (n + 1)

end A348945

/-! ## A348945.P11556936369783669124

`A004525(A348732(n+1))-A048146(n+1)`
-/

namespace A348945.P11556936369783669124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A348732 (n + 1)).toNat - A048146 (n + 1)

end

end A348945.P11556936369783669124

namespace A348945

/-- `A004525(A348732(n+1))-A048146(n+1)` -/
def P11556936369783669124.Spec : Prop :=
  ∀ n, P11556936369783669124.a n = A348945 (n + 1)

end A348945

/-! ## A348945.P147710463092471698

`A025480(A348029(n+1)-A048146(n+1))`
-/

namespace A348945.P147710463092471698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A348029 (n + 1) - A048146 (n + 1)).toNat

end

end A348945.P147710463092471698

namespace A348945

/-- `A025480(A348029(n+1)-A048146(n+1))` -/
def P147710463092471698.Spec : Prop :=
  ∀ n, P147710463092471698.a n = A348945 (n + 1)

end A348945

/-! ## A348945.P9787309779015410598

`A026741(A348029(n+1)-A048146(n+1))`
-/

namespace A348945.P9787309779015410598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A348029 (n + 1) - A048146 (n + 1)).toNat

end

end A348945.P9787309779015410598

namespace A348945

/-- `A026741(A348029(n+1)-A048146(n+1))` -/
def P9787309779015410598.Spec : Prop :=
  ∀ n, P9787309779015410598.a n = A348945 (n + 1)

end A348945

/-!
# A348946: a(n) = gcd(sigma(n), A348944(n)), where A348944 is the arithmetic mean of A003959 and A034448, and sigma is the sum of divisors function.

The programs for A348946, the canonical program `A348946.P4778457590290959046` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348946 has offset 1).

The definition of A348946 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348944, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348946.P10810927573799680286

`A000203(n+1)/A348948(n+1)`
-/

namespace A348946.P10810927573799680286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A348948 (n + 1) : ℚ)

end

end A348946.P10810927573799680286

namespace A348946

/-- `A000203(n+1)/A348948(n+1)` -/
def P10810927573799680286.Spec : Prop :=
  ∀ n, P10810927573799680286.a n = (A348946 (n + 1) : ℚ)

end A348946

/-! ## A348946.P12125820414042109777

`A348944(n+1)/A348947(n+1)`
-/

namespace A348946.P12125820414042109777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348944 (n + 1) : ℚ) / (A348947 (n + 1) : ℚ)

end

end A348946.P12125820414042109777

namespace A348946

/-- `A348944(n+1)/A348947(n+1)` -/
def P12125820414042109777.Spec : Prop :=
  ∀ n, P12125820414042109777.a n = (A348946 (n + 1) : ℚ)

end A348946

/-! ## A348946.P4778457590290959046

`gcd(A000203(n+1), A348944(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A348946

/-- `gcd(A000203(n+1), A348944(n+1))` -/
def P4778457590290959046.Spec : Prop :=
  ∀ n, (P4778457590290959046.a n : ℤ) = A348946 (n + 1)

theorem P4778457590290959046.correct : P4778457590290959046.Spec := by
  intro n
  simp only [A348946, Nat.add_sub_cancel]

end A348946

/-! ## A348946.P8820128204731192498

`Δ[A160664(n)]/A348948(n+1)`
-/

namespace A348946.P8820128204731192498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A348948 (n + 1) : ℚ)

end

end A348946.P8820128204731192498

namespace A348946

/-- `Δ[A160664(n)]/A348948(n+1)` -/
def P8820128204731192498.Spec : Prop :=
  ∀ n, P8820128204731192498.a n = (A348946 (n + 1) : ℚ)

end A348946

/-! ## A348946.P1097876487276514908

`gcd(Δ[A160664(n)], A348944(n+1))`
-/

namespace A348946.P1097876487276514908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A348944 (n + 1))

end

end A348946.P1097876487276514908

namespace A348946

/-- `gcd(Δ[A160664(n)], A348944(n+1))` -/
def P1097876487276514908.Spec : Prop :=
  ∀ n, (P1097876487276514908.a n : ℤ) = A348946 (n + 1)

end A348946

/-! ## A348946.P7923833101239123983

`(A162296(n+1)+A048250(n+1))/A348948(n+1)`
-/

namespace A348946.P7923833101239123983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162296 (n + 1) + A048250 (n + 1) : ℚ) / (A348948 (n + 1) : ℚ)

end

end A348946.P7923833101239123983

namespace A348946

/-- `(A162296(n+1)+A048250(n+1))/A348948(n+1)` -/
def P7923833101239123983.Spec : Prop :=
  ∀ n, P7923833101239123983.a n = (A348946 (n + 1) : ℚ)

end A348946

/-! ## A348946.P2635425541874940342

`(A348945(n+1)+A000203(n+1))/A348947(n+1)`
-/

namespace A348946.P2635425541874940342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348945 (n + 1) + A000203 (n + 1) : ℚ) / (A348947 (n + 1) : ℚ)

end

end A348946.P2635425541874940342

namespace A348946

/-- `(A348945(n+1)+A000203(n+1))/A348947(n+1)` -/
def P2635425541874940342.Spec : Prop :=
  ∀ n, P2635425541874940342.a n = (A348946 (n + 1) : ℚ)

end A348946

/-! ## A348946.P4146937453743263565

`(A003959(n+1)-A348029(n+1))/A348948(n+1)`
-/

namespace A348946.P4146937453743263565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) - A348029 (n + 1) : ℚ) / (A348948 (n + 1) : ℚ)

end

end A348946.P4146937453743263565

namespace A348946

/-- `(A003959(n+1)-A348029(n+1))/A348948(n+1)` -/
def P4146937453743263565.Spec : Prop :=
  ∀ n, P4146937453743263565.a n = (A348946 (n + 1) : ℚ)

end A348946

/-! ## A348946.P6104988258440742216

`(A348944(n+1)-A348945(n+1))/A348948(n+1)`
-/

namespace A348946.P6104988258440742216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348944 (n + 1) - A348945 (n + 1) : ℚ) / (A348948 (n + 1) : ℚ)

end

end A348946.P6104988258440742216

namespace A348946

/-- `(A348944(n+1)-A348945(n+1))/A348948(n+1)` -/
def P6104988258440742216.Spec : Prop :=
  ∀ n, P6104988258440742216.a n = (A348946 (n + 1) : ℚ)

end A348946

/-! ## A348946.P795582325569566867

`A348984(n+1)/A348948(n+1)*A348985(n+1)`
-/

namespace A348946.P795582325569566867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348984 (n + 1) : ℚ) / (A348948 (n + 1) : ℚ) * (A348985 (n + 1) : ℚ)

end

end A348946.P795582325569566867

namespace A348946

/-- `A348984(n+1)/A348948(n+1)*A348985(n+1)` -/
def P795582325569566867.Spec : Prop :=
  ∀ n, P795582325569566867.a n = (A348946 (n + 1) : ℚ)

end A348946

/-!
# A348947: a(n) = A348944(n) / gcd(sigma(n), A348944(n)), where A348944 is the arithmetic mean of A003959 and A034448, and sigma is the sum of divisors function.

The programs for A348947, the canonical program `A348947.P920008061016305859` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348947 has offset 1).

The definition of A348947 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348944, A348946, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348947.P920008061016305859

`A348944(n+1)/A348946(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A348947

/-- `A348944(n+1)/A348946(n+1)` -/
def P920008061016305859.Spec : Prop :=
  ∀ n, P920008061016305859.a n = (A348947 (n + 1) : ℚ)

end A348947

/-! ## A348947.P18213537564264058332

`A348944(n+1)/gcd(A000203(n+1), A348944(n+1))`
-/

namespace A348947.P18213537564264058332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348944 (n + 1) : ℚ) / (Int.gcd (A000203 (n + 1)) (A348944 (n + 1)) : ℚ)

end

end A348947.P18213537564264058332

namespace A348947

/-- `A348944(n+1)/gcd(A000203(n+1), A348944(n+1))` -/
def P18213537564264058332.Spec : Prop :=
  ∀ n, P18213537564264058332.a n = (A348947 (n + 1) : ℚ)

end A348947

/-! ## A348947.P3106155296069029602

`A348948(n+1)+A348945(n+1)/A348946(n+1)`
-/

namespace A348947.P3106155296069029602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348948 (n + 1) : ℚ) + (A348945 (n + 1) : ℚ) / (A348946 (n + 1) : ℚ)

end

end A348947.P3106155296069029602

namespace A348947

/-- `A348948(n+1)+A348945(n+1)/A348946(n+1)` -/
def P3106155296069029602.Spec : Prop :=
  ∀ n, P3106155296069029602.a n = (A348947 (n + 1) : ℚ)

end A348947

/-! ## A348947.P13969455082581276714

`A348944(n+1)/A000203(n+1)*A348948(n+1)`
-/

namespace A348947.P13969455082581276714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348944 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A348948 (n + 1) : ℚ)

end

end A348947.P13969455082581276714

namespace A348947

/-- `A348944(n+1)/A000203(n+1)*A348948(n+1)` -/
def P13969455082581276714.Spec : Prop :=
  ∀ n, P13969455082581276714.a n = (A348947 (n + 1) : ℚ)

end A348947

/-! ## A348947.P3046291701220065005

`(A003959(n+1)-A348732(n+1)/2)/A348946(n+1)`
-/

namespace A348947.P3046291701220065005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A003959 (n + 1) : ℚ) - (A348732 (n + 1) : ℚ) / 2) / (A348946 (n + 1) : ℚ)

end

end A348947.P3046291701220065005

namespace A348947

/-- `(A003959(n+1)-A348732(n+1)/2)/A348946(n+1)` -/
def P3046291701220065005.Spec : Prop :=
  ∀ n, P3046291701220065005.a n = (A348947 (n + 1) : ℚ)

end A348947

/-! ## A348947.P823425731035205643

`(A034448(n+1)+A348029(n+1)-A348945(n+1))/A348946(n+1)`
-/

namespace A348947.P823425731035205643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) + (A348029 (n + 1) - A348945 (n + 1)) : ℚ) / (A348946 (n + 1) : ℚ)

end

end A348947.P823425731035205643

namespace A348947

/-- `(A034448(n+1)+A348029(n+1)-A348945(n+1))/A348946(n+1)` -/
def P823425731035205643.Spec : Prop :=
  ∀ n, P823425731035205643.a n = (A348947 (n + 1) : ℚ)

end A348947

/-! ## A348947.P14101417398807711412

`(A348945(n+1)+A216627(A000124(n)))/A348946(n+1)`
-/

namespace A348947.P14101417398807711412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348945 (n + 1) + A216627 (A000124 n).toNat : ℚ) / (A348946 (n + 1) : ℚ)

end

end A348947.P14101417398807711412

namespace A348947

/-- `(A348945(n+1)+A216627(A000124(n)))/A348946(n+1)` -/
def P14101417398807711412.Spec : Prop :=
  ∀ n, P14101417398807711412.a n = (A348947 (n + 1) : ℚ)

end A348947

/-!
# A348948: a(n) = sigma(n) / gcd(sigma(n), A348944(n)), where A348944 is the arithmetic mean of A003959 and A034448, and sigma is the sum of divisors function.

The programs for A348948, the canonical program `A348948.P10997058227197864734` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348948 has offset 1).

The definition of A348948 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348946, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348948.P10997058227197864734

`A000203(n+1)/A348946(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A348948

/-- `A000203(n+1)/A348946(n+1)` -/
def P10997058227197864734.Spec : Prop :=
  ∀ n, P10997058227197864734.a n = (A348948 (n + 1) : ℚ)

end A348948

/-! ## A348948.P1091468312050945062

`A000203(n+1)/gcd(A000203(n+1), A348944(n+1))`
-/

namespace A348948.P1091468312050945062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (Int.gcd (A000203 (n + 1)) (A348944 (n + 1)) : ℚ)

end

end A348948.P1091468312050945062

namespace A348948

/-- `A000203(n+1)/gcd(A000203(n+1), A348944(n+1))` -/
def P1091468312050945062.Spec : Prop :=
  ∀ n, P1091468312050945062.a n = (A348948 (n + 1) : ℚ)

end A348948

/-! ## A348948.P137431477917318118

`abs(A143348(n+1)/A348946(n+1))`
-/

namespace A348948.P137431477917318118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A143348 (n + 1) : ℚ) / (A348946 (n + 1) : ℚ)|

end

end A348948.P137431477917318118

namespace A348948

/-- `abs(A143348(n+1)/A348946(n+1))` -/
def P137431477917318118.Spec : Prop :=
  ∀ n, P137431477917318118.a n = (A348948 (n + 1) : ℚ)

end A348948

/-! ## A348948.P287096815335679708

`sqrt(A072861(n+1))/A348946(n+1)`
-/

namespace A348948.P287096815335679708
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) / (A348946 (n + 1) : ℝ)

end

end A348948.P287096815335679708

namespace A348948

/-- `sqrt(A072861(n+1))/A348946(n+1)` -/
def P287096815335679708.Spec : Prop :=
  ∀ n, P287096815335679708.a n = (A348948 (n + 1) : ℝ)

end A348948

/-! ## A348948.P12065321861514632152

`A074400(n+1)/(2*A348946(n+1))`
-/

namespace A348948.P12065321861514632152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / (2 * A348946 (n + 1) : ℚ)

end

end A348948.P12065321861514632152

namespace A348948

/-- `A074400(n+1)/(2*A348946(n+1))` -/
def P12065321861514632152.Spec : Prop :=
  ∀ n, P12065321861514632152.a n = (A348948 (n + 1) : ℚ)

end A348948

/-! ## A348948.P5706240220380730723

`(A048146(n+1)+A034448(n+1))/A348946(n+1)`
-/

namespace A348948.P5706240220380730723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048146 (n + 1) + A034448 (n + 1) : ℚ) / (A348946 (n + 1) : ℚ)

end

end A348948.P5706240220380730723

namespace A348948

/-- `(A048146(n+1)+A034448(n+1))/A348946(n+1)` -/
def P5706240220380730723.Spec : Prop :=
  ∀ n, P5706240220380730723.a n = (A348948 (n + 1) : ℚ)

end A348948

/-! ## A348948.P17401698354825495324

`(A003959(n+1)-A348029(n+1))/A348946(n+1)`
-/

namespace A348948.P17401698354825495324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) - A348029 (n + 1) : ℚ) / (A348946 (n + 1) : ℚ)

end

end A348948.P17401698354825495324

namespace A348948

/-- `(A003959(n+1)-A348029(n+1))/A348946(n+1)` -/
def P17401698354825495324.Spec : Prop :=
  ∀ n, P17401698354825495324.a n = (A348948 (n + 1) : ℚ)

end A348948

/-! ## A348948.P10365588553407360426

`(A348944(n+1)-A348945(n+1))/A348946(n+1)`
-/

namespace A348948.P10365588553407360426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348944 (n + 1) - A348945 (n + 1) : ℚ) / (A348946 (n + 1) : ℚ)

end

end A348948.P10365588553407360426

namespace A348948

/-- `(A348944(n+1)-A348945(n+1))/A348946(n+1)` -/
def P10365588553407360426.Spec : Prop :=
  ∀ n, P10365588553407360426.a n = (A348948 (n + 1) : ℚ)

end A348948

/-! ## A348948.P12756792859565011461

`A348947(n+1)-A348945(n+1)/A348946(n+1)`
-/

namespace A348948.P12756792859565011461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348947 (n + 1) : ℚ) - (A348945 (n + 1) : ℚ) / (A348946 (n + 1) : ℚ)

end

end A348948.P12756792859565011461

namespace A348948

/-- `A348947(n+1)-A348945(n+1)/A348946(n+1)` -/
def P12756792859565011461.Spec : Prop :=
  ∀ n, P12756792859565011461.a n = (A348948 (n + 1) : ℚ)

end A348948

/-! ## A348948.P6642419753846802326

`A000203(n+1)/A348944(n+1)*A348947(n+1)`
-/

namespace A348948.P6642419753846802326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A348944 (n + 1) : ℚ) * (A348947 (n + 1) : ℚ)

end

end A348948.P6642419753846802326

namespace A348948

/-- `A000203(n+1)/A348944(n+1)*A348947(n+1)` -/
def P6642419753846802326.Spec : Prop :=
  ∀ n, P6642419753846802326.a n = (A348948 (n + 1) : ℚ)

end A348948

/-! ## A348948.P14124647870461872900

`A348047(n+1)*A348048(n+1)/A348946(n+1)`
-/

namespace A348948.P14124647870461872900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348047 (n + 1) * A348048 (n + 1) : ℚ) / (A348946 (n + 1) : ℚ)

end

end A348948.P14124647870461872900

namespace A348948

/-- `A348047(n+1)*A348048(n+1)/A348946(n+1)` -/
def P14124647870461872900.Spec : Prop :=
  ∀ n, P14124647870461872900.a n = (A348948 (n + 1) : ℚ)

end A348948

/-! ## A348948.P4945246785477657310

`A348503(n+1)*A348504(n+1)/A348946(n+1)`
-/

namespace A348948.P4945246785477657310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348503 (n + 1) * A348504 (n + 1) : ℚ) / (A348946 (n + 1) : ℚ)

end

end A348948.P4945246785477657310

namespace A348948

/-- `A348503(n+1)*A348504(n+1)/A348946(n+1)` -/
def P4945246785477657310.Spec : Prop :=
  ∀ n, P4945246785477657310.a n = (A348948 (n + 1) : ℚ)

end A348948

/-! ## A348948.P13038114672774737254

`A348984(n+1)/A348946(n+1)*A348985(n+1)`
-/

namespace A348948.P13038114672774737254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348984 (n + 1) : ℚ) / (A348946 (n + 1) : ℚ) * (A348985 (n + 1) : ℚ)

end

end A348948.P13038114672774737254

namespace A348948

/-- `A348984(n+1)/A348946(n+1)*A348985(n+1)` -/
def P13038114672774737254.Spec : Prop :=
  ∀ n, P13038114672774737254.a n = (A348948 (n + 1) : ℚ)

end A348948

/-! ## A348948.P12053456883520567960

`A326065(A103517(n))/A348946(n+1)`
-/

namespace A348948.P12053456883520567960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326065 (A103517 n).toNat : ℚ) / (A348946 (n + 1) : ℚ)

end

end A348948.P12053456883520567960

namespace A348948

/-- `A326065(A103517(n))/A348946(n+1)` -/
def P12053456883520567960.Spec : Prop :=
  ∀ n, P12053456883520567960.a n = (A348948 (n + 1) : ℚ)

end A348948

/-! ## A348948.P7695874676859969700

`A239050(n+1)/A008574(A348946(n+1))`
-/

namespace A348948.P7695874676859969700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239050 (n + 1) : ℚ) / (A008574 (A348946 (n + 1)).toNat : ℚ)

end

end A348948.P7695874676859969700

namespace A348948

/-- `A239050(n+1)/A008574(A348946(n+1))` -/
def P7695874676859969700.Spec : Prop :=
  ∀ n, P7695874676859969700.a n = (A348948 (n + 1) : ℚ)

end A348948

/-! ## A348948.P3693882969075476483

`A004525(A074400(n+1)/A348946(n+1))`
-/

namespace A348948.P3693882969075476483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / (A348946 (n + 1) : ℚ))).toNat

end

end A348948.P3693882969075476483

namespace A348948

/-- `A004525(A074400(n+1)/A348946(n+1))` -/
def P3693882969075476483.Spec : Prop :=
  ∀ n, P3693882969075476483.a n = A348948 (n + 1)

end A348948

/-! ## A348948.P6143416689730171588

`A025480(A074400(n+1)/A348946(n+1))`
-/

namespace A348948.P6143416689730171588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / (A348946 (n + 1) : ℚ))).toNat

end

end A348948.P6143416689730171588

namespace A348948

/-- `A025480(A074400(n+1)/A348946(n+1))` -/
def P6143416689730171588.Spec : Prop :=
  ∀ n, P6143416689730171588.a n = A348948 (n + 1)

end A348948

/-! ## A348948.P5638664363804459635

`A216627(A000124(n))/A348946(n+1)`
-/

namespace A348948.P5638664363804459635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216627 (A000124 n).toNat : ℚ) / (A348946 (n + 1) : ℚ)

end

end A348948.P5638664363804459635

namespace A348948

/-- `A216627(A000124(n))/A348946(n+1)` -/
def P5638664363804459635.Spec : Prop :=
  ∀ n, P5638664363804459635.a n = (A348948 (n + 1) : ℚ)

end A348948

/-!
# A348949: a(n) = A003959(A276086(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e, and A276086 gives the prime product form of primorial base expansion of n.

The programs for A348949, there is no canonical definition to state claims against.
-/

/-! ## A348949.P17546838062986530236

`A276086(n)+A348950(n)`
-/

namespace A348949.P17546838062986530236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n + A348950 n

end

end A348949.P17546838062986530236

/-! ## A348949.P12293856470781191875

`A003959(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348949.P12293856470781191875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A276086 n).toNat

end

end A348949.P12293856470781191875

/-! ## A348949.P10288259806907021775

`A348950(n)+A351225(n)+n`
-/

namespace A348949.P10288259806907021775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348950 n + (A351225 n + (n : ℤ))

end

end A348949.P10288259806907021775

/-! ## A348949.P3317943956627311984

`A348950(n)+A328571(n)*A328572(n)`
-/

namespace A348949.P3317943956627311984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348950 n + A328571 n * A328572 n

end

end A348949.P3317943956627311984

/-! ## A348949.P103569374488761828

`A348950(n)+A327858(n)*A351231(n)`
-/

namespace A348949.P103569374488761828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348950 n + A327858 n * A351231 n

end

end A348949.P103569374488761828

/-! ## A348949.P377763510282133639

`A348950(n)+A346101(A289234(n))`
-/

namespace A348949.P377763510282133639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348950 n + A346101 (A289234 n).toNat

end

end A348949.P377763510282133639

/-! ## A348949.P3691014569585331303

`A328476(n)+A348950(n)+A328580(n)`
-/

namespace A348949.P3691014569585331303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328476 n + (A348950 n + A328580 n)

end

end A348949.P3691014569585331303

/-! ## A348949.P5095487764780040544

`A348950(n)+A328627(A328625(n))`
-/

namespace A348949.P5095487764780040544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348950 n + A328627 (A328625 n).toNat

end

end A348949.P5095487764780040544

/-! ## A348949.P17088205503182214982

`A348950(n)+A328624(A328626(n))`
-/

namespace A348949.P17088205503182214982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348950 n + A328624 (A328626 n).toNat

end

end A348949.P17088205503182214982

/-! ## A348949.P17236425781049695590

`A348950(n)+A054842(A049345(n))`
-/

namespace A348949.P17236425781049695590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348950 n + A054842 (A049345 n).toNat

end

end A348949.P17236425781049695590

/-!
# A348950: a(n) = A348507(A276086(n)), where A348507(n) = A003959(n) - n, A003959 is multiplicative with a(p^e) = (p+1)^e, and A276086 gives the prime product form of primorial base expansion of n.

The programs for A348950, there is no canonical definition to state claims against.
-/

/-! ## A348950.P16045140294854936490

`A348949(n)-A276086(n)`
-/

namespace A348950.P16045140294854936490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348949 n - A276086 n

end

end A348950.P16045140294854936490

/-! ## A348950.P17893735188543256066

`A348507(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348950.P17893735188543256066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348507 (A276086 n).toNat

end

end A348950.P17893735188543256066

/-! ## A348950.P950527413480157938

`A348949(n)-(A351225(n)+n)`
-/

namespace A348950.P950527413480157938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348949 n - (A351225 n + (n : ℤ))

end

end A348950.P950527413480157938

/-! ## A348950.P10624237799492763481

`A342016(n)+A348949(n)-A327860(n)`
-/

namespace A348950.P10624237799492763481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342016 n + (A348949 n - A327860 n)

end

end A348950.P10624237799492763481

/-! ## A348950.P1818889233694791746

`A348949(n)-A346101(A289234(n))`
-/

namespace A348950.P1818889233694791746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348949 n - A346101 (A289234 n).toNat

end

end A348950.P1818889233694791746

/-! ## A348950.P7024370445127784893

`A348949(n)-A328627(A328625(n))`
-/

namespace A348950.P7024370445127784893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348949 n - A328627 (A328625 n).toNat

end

end A348950.P7024370445127784893

/-! ## A348950.P8573514136637112306

`A348949(n)-A328624(A328626(n))`
-/

namespace A348950.P8573514136637112306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348949 n - A328624 (A328626 n).toNat

end

end A348950.P8573514136637112306

/-! ## A348950.P3131357257963320669

`∑{d}[A276086(n), A348971(#)]`
-/

namespace A348950.P3131357257963320669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A348971 d

end

end A348950.P3131357257963320669

/-!
# A348951: a(n) = Sum_{d|n, d < sqrt(n)} (-1)^(n/d).

The programs for A348951, there is no canonical definition to state claims against.
-/

/-! ## A348951.P6849495059577640426

`A333781(n+1)-A048272(n+1)`
-/

namespace A348951.P6849495059577640426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333781 (n + 1) - A048272 (n + 1)

end

end A348951.P6849495059577640426

/-! ## A348951.P1296186405947804317

`A258998(n+1)-A348515(n+1)`
-/

namespace A348951.P1296186405947804317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258998 (n + 1) - A348515 (n + 1)

end

end A348951.P1296186405947804317

/-! ## A348951.P258453500947327173

`A056924(n+1)-2*A341594(n+1)`
-/

namespace A348951.P258453500947327173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (n + 1) - 2 * A341594 (n + 1)

end

end A348951.P258453500947327173

/-! ## A348951.P6340765830448517279

`A048272(n+1)%2-A348515(n+1)`
-/

namespace A348951.P6340765830448517279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048272 (n + 1)) 2 - A348515 (n + 1)

end

end A348951.P6340765830448517279

/-! ## A348951.P774633775335078954

`Δ[A000034(A000196(n))]-A348515(n+1)`
-/

namespace A348951.P774633775335078954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A000196 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A348515 (n + 1)

end

end A348951.P774633775335078954

/-! ## A348951.P3334366283495743232

`A056924(n+1)-A005843(A341594(n+1))`
-/

namespace A348951.P3334366283495743232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (n + 1) - A005843 (A341594 (n + 1)).toNat

end

end A348951.P3334366283495743232

/-! ## A348951.P6645542494889750438

`A010052(n+1)*A033999(n)-A348515(n+1)`
-/

namespace A348951.P6645542494889750438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n + 1) * A033999 n - A348515 (n + 1)

end

end A348951.P6645542494889750438

/-! ## A348951.P9622212055068189306

`A333781(n+1)-(A348515(n+1)+A333809(n+1))`
-/

namespace A348951.P9622212055068189306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333781 (n + 1) - (A348515 (n + 1) + A333809 (n + 1))

end

end A348951.P9622212055068189306

/-! ## A348951.P4939709561069721922

`A258998(n+1)+A333809(n+1)-A048272(n+1)`
-/

namespace A348951.P4939709561069721922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258998 (n + 1) + (A333809 (n + 1) - A048272 (n + 1))

end

end A348951.P4939709561069721922

/-!
# A348952: a(n) = -Sum_{d|n, d < sqrt(n)} (-1)^(d + n/d).

The programs for A348952, the canonical program `A348952.P11377291942820923715` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348952 has offset 1).

The definition of A348952 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, A305152, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348952.P11377291942820923715

`A010052(n+1)-A305152(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A348952

/-- `A010052(n+1)-A305152(n+1)` -/
def P11377291942820923715.Spec : Prop :=
  ∀ n, P11377291942820923715.a n = A348952 (n + 1)

theorem P11377291942820923715.correct : P11377291942820923715.Spec := by
  intro n
  simp only [A348952, Nat.add_sub_cancel]

end A348952

/-! ## A348952.P10899834542002696670

`(A010052(n+1)-A228441(n+1))/2`
-/

namespace A348952.P10899834542002696670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010052 (n + 1) - A228441 (n + 1) : ℚ) / 2

end

end A348952.P10899834542002696670

namespace A348952

/-- `(A010052(n+1)-A228441(n+1))/2` -/
def P10899834542002696670.Spec : Prop :=
  ∀ n, P10899834542002696670.a n = (A348952 (n + 1) : ℚ)

theorem P10899834542002696670.correct : P10899834542002696670.Spec := by
  intro n
  simp only [A348952, Nat.add_sub_cancel, A348952.P10899834542002696670.a, A348952.P11377291942820923715.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A228441, A228441.P14298159713898062808.a, A305152, A305152.P2584362092211639077.a, A056924, A056924.P8846060015044098494.a, A112329, A112329.P9266863657397997386.a, A000005, A000005.P16091521709108585461.a, A094572, A094572.P10849570997538913090.f1, A094572.P10849570997538913090.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348952

/-! ## A348952.P9754097570343753165

`-floor(A228441(n+1)/2)`
-/

namespace A348952.P9754097570343753165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊(A228441 (n + 1) : ℚ) / 2⌋

end

end A348952.P9754097570343753165

namespace A348952

/-- `-floor(A228441(n+1)/2)` -/
def P9754097570343753165.Spec : Prop :=
  ∀ n, P9754097570343753165.a n = A348952 (n + 1)

end A348952

/-! ## A348952.P8554637893616273279

`Δ[A000196(n)]-A305152(n+1)`
-/

namespace A348952.P8554637893616273279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A305152 (n + 1)

end

end A348952.P8554637893616273279

namespace A348952

/-- `Δ[A000196(n)]-A305152(n+1)` -/
def P8554637893616273279.Spec : Prop :=
  ∀ n, P8554637893616273279.a n = A348952 (n + 1)

end A348952

/-! ## A348952.P65820019243644204

`char[A005563(n)]-A305152(n+1)`
-/

namespace A348952.P65820019243644204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A305152 (n + 1)

end

end A348952.P65820019243644204

namespace A348952

/-- `char[A005563(n)]-A305152(n+1)` -/
def P65820019243644204.Spec : Prop :=
  ∀ n, P65820019243644204.a n = A348952 (n + 1)

end A348952

/-! ## A348952.P11627071304827197387

`char[A067998(n)]-A305152(n+1)`
-/

namespace A348952.P11627071304827197387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067998 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A305152 (n + 1)

end

end A348952.P11627071304827197387

namespace A348952

/-- `char[A067998(n)]-A305152(n+1)` -/
def P11627071304827197387.Spec : Prop :=
  ∀ n, P11627071304827197387.a n = A348952 (n + 1)

end A348952

/-! ## A348952.P159926949497555147

`A038548(n+1)-A112329(n+1)`
-/

namespace A348952.P159926949497555147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) - A112329 (n + 1)

end

end A348952.P159926949497555147

namespace A348952

/-- `A038548(n+1)-A112329(n+1)` -/
def P159926949497555147.Spec : Prop :=
  ∀ n, P159926949497555147.a n = A348952 (n + 1)

end A348952

/-! ## A348952.P3403035799421179534

`A305152(n+1)-A228441(n+1)`
-/

namespace A348952.P3403035799421179534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305152 (n + 1) - A228441 (n + 1)

end

end A348952.P3403035799421179534

namespace A348952

/-- `A305152(n+1)-A228441(n+1)` -/
def P3403035799421179534.Spec : Prop :=
  ∀ n, P3403035799421179534.a n = A348952 (n + 1)

theorem P3403035799421179534.correct : P3403035799421179534.Spec := by
  intro n
  simp only [A348952, Nat.add_sub_cancel, A348952.P3403035799421179534.a, A348952.P11377291942820923715.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A228441, A228441.P14298159713898062808.a, A305152, A305152.P2584362092211639077.a, A056924, A056924.P8846060015044098494.a, A112329, A112329.P9266863657397997386.a, A000005, A000005.P16091521709108585461.a, A094572, A094572.P10849570997538913090.f1, A094572.P10849570997538913090.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348952

/-! ## A348952.P9845925225461265523

`A038548(n+1)-abs(A048272(n+1))`
-/

namespace A348952.P9845925225461265523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) - |A048272 (n + 1)|

end

end A348952.P9845925225461265523

namespace A348952

/-- `A038548(n+1)-abs(A048272(n+1))` -/
def P9845925225461265523.Spec : Prop :=
  ∀ n, P9845925225461265523.a n = A348952 (n + 1)

end A348952

/-! ## A348952.P4026945005595814167

`A056924(n+1)-2*A100073(n+1)`
-/

namespace A348952.P4026945005595814167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (n + 1) - 2 * A100073 (n + 1)

end

end A348952.P4026945005595814167

namespace A348952

/-- `A056924(n+1)-2*A100073(n+1)` -/
def P4026945005595814167.Spec : Prop :=
  ∀ n, P4026945005595814167.a n = A348952 (n + 1)

end A348952

/-! ## A348952.P15028458887531351286

`A000035(A302707(n))-A305152(n+1)`
-/

namespace A348952.P15028458887531351286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A302707 n).toNat - A305152 (n + 1)

end

end A348952.P15028458887531351286

namespace A348952

/-- `A000035(A302707(n))-A305152(n+1)` -/
def P15028458887531351286.Spec : Prop :=
  ∀ n, P15028458887531351286.a n = A348952 (n + 1)

end A348952

/-! ## A348952.P9635507284614897308

`A000035(A000005(n+1))-A305152(n+1)`
-/

namespace A348952.P9635507284614897308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000005 (n + 1)).toNat - A305152 (n + 1)

end

end A348952.P9635507284614897308

namespace A348952

/-- `A000035(A000005(n+1))-A305152(n+1)` -/
def P9635507284614897308.Spec : Prop :=
  ∀ n, P9635507284614897308.a n = A348952 (n + 1)

end A348952

/-! ## A348952.P5052635160403947039

`A000035(A112329(n+1))-A305152(n+1)`
-/

namespace A348952.P5052635160403947039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A112329 (n + 1)).toNat - A305152 (n + 1)

end

end A348952.P5052635160403947039

namespace A348952

/-- `A000035(A112329(n+1))-A305152(n+1)` -/
def P5052635160403947039.Spec : Prop :=
  ∀ n, P5052635160403947039.a n = A348952 (n + 1)

end A348952

/-! ## A348952.P3584674779443020825

`A000196(n+1)-(A305152(n+1)+A000196(n))`
-/

namespace A348952.P3584674779443020825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1) - (A305152 (n + 1) + A000196 n)

end

end A348952.P3584674779443020825

namespace A348952

/-- `A000196(n+1)-(A305152(n+1)+A000196(n))` -/
def P3584674779443020825.Spec : Prop :=
  ∀ n, P3584674779443020825.a n = A348952 (n + 1)

end A348952

/-! ## A348952.P15498768583743898390

`A038548(n+1)-(A100073(n+1)+A034178(n+1))`
-/

namespace A348952.P15498768583743898390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) - (A100073 (n + 1) + A034178 (n + 1))

end

end A348952.P15498768583743898390

namespace A348952

/-- `A038548(n+1)-(A100073(n+1)+A034178(n+1))` -/
def P15498768583743898390.Spec : Prop :=
  ∀ n, P15498768583743898390.a n = A348952 (n + 1)

end A348952

/-! ## A348952.P5454189118053389381

`A220400(A008574(n+1))-A112329(n+1)`
-/

namespace A348952.P5454189118053389381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 (A008574 (n + 1)).toNat - A112329 (n + 1)

end

end A348952.P5454189118053389381

namespace A348952

/-- `A220400(A008574(n+1))-A112329(n+1)` -/
def P5454189118053389381.Spec : Prop :=
  ∀ n, P5454189118053389381.a n = A348952 (n + 1)

end A348952

/-! ## A348952.P15796926050996611927

`A220400(A008586(n+1))-A112329(n+1)`
-/

namespace A348952.P15796926050996611927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 (A008586 (n + 1)).toNat - A112329 (n + 1)

end

end A348952.P15796926050996611927

namespace A348952

/-- `A220400(A008586(n+1))-A112329(n+1)` -/
def P15796926050996611927.Spec : Prop :=
  ∀ n, P15796926050996611927.a n = A348952 (n + 1)

end A348952

/-!
# A348953: a(n) = -Sum_{d|n, d < sqrt(n)} (-1)^(d + n/d) * d.

The programs for A348953, there is no canonical definition to state claims against.
-/

/-! ## A348953.P17652461663936249815

`A037213(n+1)-A348608(n+1)`
-/

namespace A348953.P17652461663936249815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (n + 1) - A348608 (n + 1)

end

end A348953.P17652461663936249815

/-! ## A348953.P9720991917825698647

`Δ[A000217(A000196(n))]-A348608(n+1)`
-/

namespace A348953.P9720991917825698647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000196 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A348608 (n + 1)

end

end A348953.P9720991917825698647

/-! ## A348953.P15782157396329300001

`A066839(n+1)-(A348608(n+1)+A070039(n+1))`
-/

namespace A348953.P15782157396329300001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066839 (n + 1) - (A348608 (n + 1) + A070039 (n + 1))

end

end A348953.P15782157396329300001

/-! ## A348953.P5198580860845307561

`A070038(n+1)-(A348608(n+1)+A238535(n+1))`
-/

namespace A348953.P5198580860845307561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070038 (n + 1) - (A348608 (n + 1) + A238535 (n + 1))

end

end A348953.P5198580860845307561

/-! ## A348953.P17729604192445779345

`2*A070038(n+1)-A079667(n+1)-(A348608(n+1)+A272027(n+1)/3)`
-/

namespace A348953.P17729604192445779345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A070038 (n + 1) - A079667 (n + 1) : ℚ) - ((A348608 (n + 1) : ℚ) + (A272027 (n + 1) : ℚ) / 3)

end

end A348953.P17729604192445779345

/-! ## A348953.P14786814089560343936

`A224777(A000124(n))-A348608(n+1)`
-/

namespace A348953.P14786814089560343936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224777 (A000124 n).toNat - A348608 (n + 1)

end

end A348953.P14786814089560343936

/-!
# A348954: a(n) = Sum_{d|n, d < sqrt(n)} (-1)^(n/d) * d.

The programs for A348954, there is no canonical definition to state claims against.
-/

/-! ## A348954.P15991051091640211812

`A333782(n+1)-(A348660(n+1)+A333810(n+1))`
-/

namespace A348954.P15991051091640211812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333782 (n + 1) - (A348660 (n + 1) + A333810 (n + 1))

end

end A348954.P15991051091640211812

/-! ## A348954.P429724780189406081

`-(A348660(n+1)%A128502(n))`
-/

namespace A348954.P429724780189406081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A348660 (n + 1)) (A128502 n)

end

end A348954.P429724780189406081

/-!
# A348955: a(1) = 1; a(n) = Sum_{d|n, d <= sqrt(n)} a(d)^2.

The programs for A348955, there is no canonical definition to state claims against.
-/

/-! ## A348955.P7044362703174819748

`A046660(A072499(n+1)²)+1`
-/

namespace A348955.P7044362703174819748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A072499 (n + 1) ^ 2).toNat + 1

end

end A348955.P7044362703174819748

/-! ## A348955.P9760285778664076380

`A349326(A072499(n+1)²)+1`
-/

namespace A348955.P9760285778664076380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349326 (A072499 (n + 1) ^ 2).toNat + 1

end

end A348955.P9760285778664076380

/-! ## A348955.P8718769021464762365

`A000005(A162510(A072499(n+1)²))`
-/

namespace A348955.P8718769021464762365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A162510 (A072499 (n + 1) ^ 2).toNat).toNat

end

end A348955.P8718769021464762365

/-! ## A348955.P6072319627376628418

`A000005(A162512(A072499(n+1)²))`
-/

namespace A348955.P6072319627376628418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A162512 (A072499 (n + 1) ^ 2).toNat).toNat

end

end A348955.P6072319627376628418

/-! ## A348955.P8984026843697448096

`∑{d}[A162510(A072499(n+1)²), A083312(#)]`
-/

namespace A348955.P8984026843697448096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162510 (A072499 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A083312 d

end

end A348955.P8984026843697448096

/-!
# A348956: a(0) = 1; a(n) = Sum_{d|n, d < n} (-1)^(n/d + 1) * a(d - 1).

The programs for A348956, there is no canonical definition to state claims against.
-/

/-! ## A348956.P13713686745857318898

`Δ[A099475(∑[A326117(n)])]`
-/

namespace A348956.P13713686745857318898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326117 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099475 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348956.P13713686745857318898

/-! ## A348956.P7793402366591100672

`A353329(A352912(n+1))-A317531(n+1)`
-/

namespace A348956.P7793402366591100672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353329 (A352912 (n + 1)).toNat - A317531 (n + 1)

end

end A348956.P7793402366591100672

/-! ## A348956.P4672435252211769361

`Δ[A153246(A342089(n+1)+n)]`
-/

namespace A348956.P4672435252211769361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153246 (A342089 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348956.P4672435252211769361

/-! ## A348956.P5917418694562157207

`A066099(A223202(n+1))-A333768(n)`
-/

namespace A348956.P5917418694562157207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A223202 (n + 1)).toNat - A333768 n

end

end A348956.P5917418694562157207

/-!
# A348957: G.f. A(x) satisfies A(x) = (1 + x * A(-x)) / (1 - x * A(x)).

The programs for A348957, there is no canonical definition to state claims against.
-/

/-! ## A348957.P10591658624095109381

`A143555(n)-(-1)^n*a(n-1)` with `a(0)=1`
-/

namespace A348957.P10591658624095109381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A143555 n - (-1) ^ n * a (n - 1)

end

end A348957.P10591658624095109381

/-! ## A348957.P9308376100783576807

`A204890(or(A158691(n), A205845(n+1)))`
-/

namespace A348957.P9308376100783576807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 (Int.lor (A158691 n) (A205845 (n + 1))).toNat

end

end A348957.P9308376100783576807

/-!
# A348958: Triangular array read by rows. T(n,k) = A002884(n)/A002884(n-k)*2^((n-k)(n-k-1)), n>=0, 0<=k<=n.

The programs for A348958, there is no canonical definition to state claims against.
-/

/-! ## A348958.P8797416292116191432

`A385355(A061579(n))`
-/

namespace A348958.P8797416292116191432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385355 (A061579 n).toNat

end

end A348958.P8797416292116191432

/-! ## A348958.P14321329966149070861

`A296548(n)*A349545(n)`
-/

namespace A348958.P14321329966149070861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296548 n * A349545 n

end

end A348958.P14321329966149070861

/-! ## A348958.P4682535641296625492

`A022166(n)*A117401(n)*A349545(n)`
-/

namespace A348958.P4682535641296625492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n * A117401 n * A349545 n

end

end A348958.P4682535641296625492

/-! ## A348958.P12882489456782094492

`lcm(A117401(n)*A349545(n), A288853(n))`
-/

namespace A348958.P12882489456782094492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A117401 n * A349545 n) (A288853 n)

end

end A348958.P12882489456782094492

/-!
# A348959: Childless terminal Wiener index of the rooted tree with Matula-Goebel number n.

The programs for A348959, there is no canonical definition to state claims against.
-/

/-! ## A348959.P17595288807628353035

`A196055(A288469(n+1))`
-/

namespace A348959.P17595288807628353035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196055 (A288469 (n + 1)).toNat

end

end A348959.P17595288807628353035

/-! ## A348959.P15411941186827441259

`A196055(n+1)-A196048(A089026(n+1))`
-/

namespace A348959.P15411941186827441259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196055 (n + 1) - A196048 (A089026 (n + 1)).toNat

end

end A348959.P15411941186827441259

/-! ## A348959.P16370464840740897306

`A196055(n+1)-A010051(n+1)*A196048(n+1)`
-/

namespace A348959.P16370464840740897306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196055 (n + 1) - A010051 (n + 1) * A196048 (n + 1)

end

end A348959.P16370464840740897306

/-! ## A348959.P8587337105868407096

`A196055(A000040(n+1))-A196048(A000040(n+1))`
-/

namespace A348959.P8587337105868407096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196055 (A000040 (n + 1)).toNat - A196048 (A000040 (n + 1)).toNat

end

end A348959.P8587337105868407096

/-!
# A348960: a(n) = floor(log_10(Pi*n!)).

The programs for A348960, there is no canonical definition to state claims against.
-/

/-! ## A348960.P4085814916252097086

`∑{digits}[n*a(n-1), A036370(#)]-1` with `a(0)=3`
-/

namespace A348960.P4085814916252097086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A036370 x).sum - 1

end

end A348960.P4085814916252097086

/-! ## A348960.P6532258460501090805

`A137579(A286001(3*n+5))+A127034(n+1)`
-/

namespace A348960.P6532258460501090805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 (A286001 (3 * n + 5)).toNat + A127034 (n + 1)

end

end A348960.P6532258460501090805

/-! ## A348960.P13433247940061798293

`A127034(n+1)+A070109(A018128(n))`
-/

namespace A348960.P13433247940061798293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127034 (n + 1) + A070109 (A018128 n).toNat

end

end A348960.P13433247940061798293

/-! ## A348960.P16345354783579637694

`A164292(A347621(n))+A127034(n+1)`
-/

namespace A348960.P16345354783579637694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164292 (A347621 n).toNat + A127034 (n + 1)

end

end A348960.P16345354783579637694

/-! ## A348960.P14707155100023620581

`A185238(A332769(n+1))+A127034(n+1)`
-/

namespace A348960.P14707155100023620581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A332769 (n + 1)).toNat + A127034 (n + 1)

end

end A348960.P14707155100023620581

/-!
# A348961: Exponential harmonic (or e-harmonic) numbers of type 1: numbers k such that esigma(k) | k * d_e(k), where d_e(k) is the number of exponential divisors of k (A049419) and esigma(k) is their sum (A051377).

The programs for A348961, the canonical program `A348961.P8503093187257780372` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348961 has offset 1).

The definition of A348961 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 387 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348961.P8503093187257780372

`eq[1, A004736(A000190(n+1)²)]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A348961

/-- `eq[1, A004736(A000190(n+1)²)]+1` -/
def P8503093187257780372.Spec : Prop :=
  ∀ n, (P8503093187257780372.a n : ℤ) = A348961 (n + 1)

theorem P8503093187257780372.correct : P8503093187257780372.Spec := by
  intro n
  simp only [A348961, Nat.add_sub_cancel]

end A348961

/-! ## A348961.P3022716304378190699

`record[A050985(A050985(n+1)*A348037(n+1))]`
-/

namespace A348961.P3022716304378190699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (A050985 (n + 1) * A348037 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348961.P3022716304378190699

namespace A348961

/-- `record[A050985(A050985(n+1)*A348037(n+1))]` -/
def P3022716304378190699.Spec : Prop :=
  ∀ n, P3022716304378190699.a n = A348961 (n + 1)

end A348961

/-! ## A348961.P2136740925644835494

`record[A066990(A066990(n+1)*A348037(n+1))]`
-/

namespace A348961.P2136740925644835494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (A066990 (n + 1) * A348037 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348961.P2136740925644835494

namespace A348961

/-- `record[A066990(A066990(n+1)*A348037(n+1))]` -/
def P2136740925644835494.Spec : Prop :=
  ∀ n, P2136740925644835494.a n = A348961 (n + 1)

end A348961

/-! ## A348961.P13639837219166433256

`eq[A000188(A003968(n+1)), A000190(n+1)]+1`
-/

namespace A348961.P13639837219166433256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A003968 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A348961.P13639837219166433256

namespace A348961

/-- `eq[A000188(A003968(n+1)), A000190(n+1)]+1` -/
def P13639837219166433256.Spec : Prop :=
  ∀ n, (P13639837219166433256.a n : ℤ) = A348961 (n + 1)

end A348961

/-! ## A348961.P10505315675665626400

`eq[A000188(A003968(n+1)), A003557(n+1)]+1`
-/

namespace A348961.P10505315675665626400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A003968 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A348961.P10505315675665626400

namespace A348961

/-- `eq[A000188(A003968(n+1)), A003557(n+1)]+1` -/
def P10505315675665626400.Spec : Prop :=
  ∀ n, (P10505315675665626400.a n : ℤ) = A348961 (n + 1)

end A348961

/-! ## A348961.P9688552292574054254

`eq[1, A054531(A003557(n+1)²)]+1`
-/

namespace A348961.P9688552292574054254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A003557 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A348961.P9688552292574054254

namespace A348961

/-- `eq[1, A054531(A003557(n+1)²)]+1` -/
def P9688552292574054254.Spec : Prop :=
  ∀ n, (P9688552292574054254.a n : ℤ) = A348961 (n + 1)

end A348961

/-! ## A348961.P435481335411340000

`eq[1, A209278(A003557(n+1)²)]+1`
-/

namespace A348961.P435481335411340000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209278 (A003557 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A348961.P435481335411340000

namespace A348961

/-- `eq[1, A209278(A003557(n+1)²)]+1` -/
def P435481335411340000.Spec : Prop :=
  ∀ n, (P435481335411340000.a n : ℤ) = A348961 (n + 1)

end A348961

/-! ## A348961.P9851095150478362870

`filter[A360247(n+1), A353559(#)]`
-/

namespace A348961.P9851095150478362870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A348961.P9851095150478362870

namespace A348961

/-- `filter[A360247(n+1), A353559(#)]` -/
def P9851095150478362870.Spec : Prop :=
  ∀ n, P9851095150478362870.a n = A348961 (n + 1)

end A348961

/-! ## A348961.P6142280850250654430

`filter[A383106(n+1), A353559(#)]`
-/

namespace A348961.P6142280850250654430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A348961.P6142280850250654430

namespace A348961

/-- `filter[A383106(n+1), A353559(#)]` -/
def P6142280850250654430.Spec : Prop :=
  ∀ n, P6142280850250654430.a n = A348961 (n + 1)

end A348961

/-!
# A348962: Exponential harmonic numbers of type 1 (A348961) that are not squarefree.

The programs for A348962, there is no canonical definition to state claims against.
-/

/-! ## A348962.P4347803420124299524

`A054979(n+1)-A185293(A318644(n))`
-/

namespace A348962.P4347803420124299524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054979 (n + 1) - A185293 (A318644 n).toNat

end

end A348962.P4347803420124299524

/-! ## A348962.P7839101027093634287

`A318100(n+1)-A327146(A001631(n))`
-/

namespace A348962.P7839101027093634287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1) - A327146 (A001631 n).toNat

end

end A348962.P7839101027093634287

/-! ## A348962.P7160496406288917540

`A054979(n+1)-A294902(A000045(3*n+2))`
-/

namespace A348962.P7160496406288917540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054979 (n + 1) - A294902 (A000045 (3 * n + 2)).toNat

end

end A348962.P7160496406288917540

/-!
# A348963: a(n) is multiplicative with a(p^e) = Sum_{d|e} p^(e-d).

The programs for A348963, there is no canonical definition to state claims against.
-/

/-! ## A348963.P11372675913332957072

`A189803(n+1)%(2^∑{e}[n+1, #-1])+(n+1)/∏{p}[n+1, #]`
-/

namespace A348963.P11372675913332957072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A189803 (n + 1)) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1) : ℤ))) : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

end

end A348963.P11372675913332957072

/-! ## A348963.P18103070657175124506

`A320053(2^∑{e}[n+1, #-1])+floor(n/∏{p}[n+1, #])`
-/

namespace A348963.P18103070657175124506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320053 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1) : ℤ))).toNat + ⌊(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)⌋

end

end A348963.P18103070657175124506

/-! ## A348963.P8420627301388027947

`A070939(∏{e}[n+1, floor(#/2)+1]^((n+1)/∏{p}[n+1, #]))`
-/

namespace A348963.P8420627301388027947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), (⌊(Nat.factorization (f1 n) p : ℚ) / 2⌋ + 1) : ℤ) : ℝ) ^ ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) : ℝ))).toNat

end

end A348963.P8420627301388027947

/-! ## A348963.P15155964904078111802

`A113473(A046951(n+1)^((n+1)/∏{p}[n+1, #]))`
-/

namespace A348963.P15155964904078111802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113473 (SequenceMachineLib.roundAway ((A046951 (n + 1) : ℝ) ^ ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) : ℝ))).toNat

end

end A348963.P15155964904078111802

/-! ## A348963.P3570741237688159988

`A000005((2^∑{e}[n+1, val(#!, 2)])^A000189(n+1))`
-/

namespace A348963.P3570741237688159988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 ^ (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2) : ℚ) ^ (A000189 (n + 1) : ℤ))).toNat

end

end A348963.P3570741237688159988

/-!
# A348964: Exponential harmonic (or e-harmonic) numbers of type 2: numbers k such that the harmonic mean of the exponential divisors of k is an integer.

The programs for A348964, there is no canonical definition to state claims against.
-/

/-! ## A348964.P6973958011789635415

`∪[A005117(n+1), A348965(n+1)]`
-/

namespace A348964.P6973958011789635415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A348964.P6973958011789635415

/-! ## A348964.P11543859684924377121

`∪[A348965(n+1), A349019(n+1)]`
-/

namespace A348964.P11543859684924377121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A348964.P11543859684924377121

/-! ## A348964.P8371277068478320552

`∪[record[A007913(n+1)], A348965(n+1)]`
-/

namespace A348964.P8371277068478320552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A348964.P8371277068478320552

/-! ## A348964.P4317492654978440486

`∪[record[A007947(n+1)], A348965(n+1)]`
-/

namespace A348964.P4317492654978440486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A348964.P4317492654978440486

/-! ## A348964.P3383083408476343232

`∪[record[(n+1)*A008683(2*n+1-n)²], A348965(n+1)]`
-/

namespace A348964.P3383083408476343232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008683 (2 * n + 1 - n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A348964.P3383083408476343232

/-! ## A348964.P13399276137332684800

`or(A014707(A196222(n)), A349026(n+1))`
-/

namespace A348964.P13399276137332684800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014707 (A196222 n).toNat) (A349026 (n + 1))

end

end A348964.P13399276137332684800

/-! ## A348964.P2467694140391939844

`or(A102683(A196222(n)²), A349026(n+1))`
-/

namespace A348964.P2467694140391939844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102683 (A196222 n ^ 2).toNat) (A349026 (n + 1))

end

end A348964.P2467694140391939844

/-! ## A348964.P14892995287851831702

`A349026(n+1)+A014707(n²)`
-/

namespace A348964.P14892995287851831702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349026 (n + 1) + A014707 (n ^ 2)

end

end A348964.P14892995287851831702

/-! ## A348964.P10732026584474144593

`A349026(n+1)+A053186(n²)`
-/

namespace A348964.P10732026584474144593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349026 (n + 1) + A053186 (n ^ 2)

end

end A348964.P10732026584474144593

/-! ## A348964.P7497526326795920428

`A349026(n+1)%p?[A000328(n)]`
-/

namespace A348964.P7497526326795920428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349026 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A348964.P7497526326795920428

/-! ## A348964.P7686783947299158797

`abs(A349026(n+1)-A000038(n²))`
-/

namespace A348964.P7686783947299158797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A349026 (n + 1) - A000038 (n ^ 2)|

end

end A348964.P7686783947299158797

/-! ## A348964.P14761477795456145141

`A349026(n+1)+A196199(A002378(n))`
-/

namespace A348964.P14761477795456145141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349026 (n + 1) + A196199 (A002378 n).toNat

end

end A348964.P14761477795456145141

/-! ## A348964.P13758173331584207856

`A093178(A001105(n))*A349026(n+1)`
-/

namespace A348964.P13758173331584207856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A001105 n).toNat * A349026 (n + 1)

end

end A348964.P13758173331584207856

/-! ## A348964.P13102890261737090228

`or(A000007(A118759(n)), A349026(n+1))`
-/

namespace A348964.P13102890261737090228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A118759 n).toNat) (A349026 (n + 1))

end

end A348964.P13102890261737090228

/-! ## A348964.P18352955030210460546

`A349026((n+1)^A208645(∑[n+n]))`
-/

namespace A348964.P18352955030210460546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349026 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A208645 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ))).toNat

end

end A348964.P18352955030210460546

/-!
# A348965: Exponential harmonic numbers of type 2 that are not squarefree.

The programs for A348965, there is no canonical definition to state claims against.
-/

/-! ## A348965.P10235419058206127421

`∩[A013929(n+1), A348964(n+1)]`
-/

namespace A348965.P10235419058206127421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348965.P10235419058206127421

/-! ## A348965.P9969127511871817055

`∩[A080756(n+1), A348964(n+1)]`
-/

namespace A348965.P9969127511871817055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348965.P9969127511871817055

/-! ## A348965.P6346528735613749230

`∩[A126706(n+1), A348964(n+1)]`
-/

namespace A348965.P6346528735613749230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348965.P6346528735613749230

/-! ## A348965.P12781056826598164399

`∩[A284342(n+1), A348964(n+1)]`
-/

namespace A348965.P12781056826598164399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348965.P12781056826598164399

/-! ## A348965.P16227382953560051947

`∩[A348964(n+5), A078147(n)+a(n-1)]` with `a(0)=4`
-/

namespace A348965.P16227382953560051947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348964 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A078147 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348965.P16227382953560051947

/-! ## A348965.P9386476342926016892

`∩[A015049(n+1)*A087050(n+1), A348964(n+1)]`
-/

namespace A348965.P9386476342926016892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015049 (n + 1) * A087050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348965.P9386476342926016892

/-!
# A348966: Variation on the Inventory Sequence A342585: record the number of occurrences of the pair sum of all adjacent terms until 0 is recorded, then restart the count from 0. Start with a(0) = 0. See the Comments.

The programs for A348966, there is no canonical definition to state claims against.
-/

/-! ## A348966.P695414257704789885

`A057427(A304638(n+1))*A317988(n+1)`
-/

namespace A348966.P695414257704789885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A304638 (n + 1)).toNat * A317988 (n + 1)

end

end A348966.P695414257704789885

/-! ## A348966.P7773698127881660688

`A317988(n+1)%A263152(A281296(n+4)+1)`
-/

namespace A348966.P7773698127881660688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317988 (n + 1)) (A263152 (A281296 (n + 4) + 1).toNat)

end

end A348966.P7773698127881660688

/-! ## A348966.P13568816009837021849

`A255517(lt[A246169(3*n+13), A227819(4*n+9)])`
-/

namespace A348966.P13568816009837021849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246169 (3 * n + 13 + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (4 * n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348966.P13568816009837021849

/-! ## A348966.P8482370092452168357

`A228050(n+2)%A007895(A225171(n+1))`
-/

namespace A348966.P8482370092452168357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228050 (n + 2)) (A007895 (A225171 (n + 1)).toNat)

end

end A348966.P8482370092452168357

/-! ## A348966.P4425338951053507306

`A026239(A006002(2*(n+1)))%A000119(2*(n+1))`
-/

namespace A348966.P4425338951053507306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026239 (A006002 (2 * (n + 1))).toNat) (A000119 (2 * (n + 1)))

end

end A348966.P4425338951053507306

/-!
# A348967: Variation on the Inventory Sequence A342585: record the number of occurrences of the pair difference of all adjacent terms until 0 is recorded, then restart the count from 0. Start with a(0) = 0. See the Comments.

The programs for A348967, there is no canonical definition to state claims against.
-/

/-! ## A348967.P236176042701891403

`A054991(A110681(n+1))`
-/

namespace A348967.P236176042701891403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054991 (A110681 (n + 1)).toNat

end

end A348967.P236176042701891403

/-! ## A348967.P12953922099330730759

`A136568(A111544(n+1))`
-/

namespace A348967.P12953922099330730759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136568 (A111544 (n + 1)).toNat

end

end A348967.P12953922099330730759

/-! ## A348967.P7273420072609430203

`A363455(A103240(n+2))`
-/

namespace A348967.P7273420072609430203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363455 (A103240 (n + 2)).toNat

end

end A348967.P7273420072609430203

/-! ## A348967.P9508802611552573420

`A276167(A317674(n+2))`
-/

namespace A348967.P9508802611552573420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276167 (A317674 (n + 2)).toNat

end

end A348967.P9508802611552573420

/-! ## A348967.P18324138728911738909

`∑{e}[A063114(A168422(n+1))-1, #]`
-/

namespace A348967.P18324138728911738909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063114 (A168422 (n + 1)).toNat - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A348967.P18324138728911738909

/-!
# A348968: a(n) = gcd(n, A099377(n)), where A099377(n) is the numerator of the harmonic mean of the divisors of n.

The programs for A348968, the canonical program `A348968.P179748498785656082` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348968 has offset 1).

The definition of A348968 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099377, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348968.P17971233082425560369

`(n+1)/A348969(n+1)`
-/

namespace A348968.P17971233082425560369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A348969 (n + 1) : ℚ)

end

end A348968.P17971233082425560369

namespace A348968

/-- `(n+1)/A348969(n+1)` -/
def P17971233082425560369.Spec : Prop :=
  ∀ n, P17971233082425560369.a n = (A348968 (n + 1) : ℚ)

end A348968

/-! ## A348968.P179748498785656082

`gcd(n+1, A099377(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A348968

/-- `gcd(n+1, A099377(n+1))` -/
def P179748498785656082.Spec : Prop :=
  ∀ n, (P179748498785656082.a n : ℤ) = A348968 (n + 1)

theorem P179748498785656082.correct : P179748498785656082.Spec := by
  intro n
  simp only [A348968, Nat.add_sub_cancel]

end A348968

/-! ## A348968.P9124505196003160058

`A099377(n+1)/A057021(n+1)`
-/

namespace A348968.P9124505196003160058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099377 (n + 1) : ℚ) / (A057021 (n + 1) : ℚ)

end

end A348968.P9124505196003160058

namespace A348968

/-- `A099377(n+1)/A057021(n+1)` -/
def P9124505196003160058.Spec : Prop :=
  ∀ n, P9124505196003160058.a n = (A348968 (n + 1) : ℚ)

end A348968

/-! ## A348968.P13042486007346184555

`gcd(C(n+1, n), A348510(n+1))`
-/

namespace A348968.P13042486007346184555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose (n + 1) n : ℤ) (A348510 (n + 1))

end

end A348968.P13042486007346184555

namespace A348968

/-- `gcd(C(n+1, n), A348510(n+1))` -/
def P13042486007346184555.Spec : Prop :=
  ∀ n, (P13042486007346184555.a n : ℤ) = A348968 (n + 1)

end A348968

/-! ## A348968.P4469022420308430676

`gcd(A099377(n+1), A131738(n))`
-/

namespace A348968.P4469022420308430676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099377 (n + 1)) (A131738 n)

end

end A348968.P4469022420308430676

namespace A348968

/-- `gcd(A099377(n+1), A131738(n))` -/
def P4469022420308430676.Spec : Prop :=
  ∀ n, (P4469022420308430676.a n : ℤ) = A348968 (n + 1)

end A348968

/-! ## A348968.P4261947729407215203

`gcd(A000027(n+1), A348510(n+1))`
-/

namespace A348968.P4261947729407215203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A348510 (n + 1))

end

end A348968.P4261947729407215203

namespace A348968

/-- `gcd(A000027(n+1), A348510(n+1))` -/
def P4261947729407215203.Spec : Prop :=
  ∀ n, (P4261947729407215203.a n : ℤ) = A348968 (n + 1)

end A348968

/-! ## A348968.P10424504043816600291

`(n+1)/gcd(A057020(n+1), A153152(n))`
-/

namespace A348968.P10424504043816600291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A057020 (n + 1)) (A153152 n) : ℚ)

end

end A348968.P10424504043816600291

namespace A348968

/-- `(n+1)/gcd(A057020(n+1), A153152(n))` -/
def P10424504043816600291.Spec : Prop :=
  ∀ n, P10424504043816600291.a n = (A348968 (n + 1) : ℚ)

end A348968

/-! ## A348968.P8378482230392699346

`A234575(A348969(n+1)+∑[n])`
-/

namespace A348968.P8378482230392699346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A348969 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A348968.P8378482230392699346

namespace A348968

/-- `A234575(A348969(n+1)+∑[n])` -/
def P8378482230392699346.Spec : Prop :=
  ∀ n, P8378482230392699346.a n = A348968 (n + 1)

end A348968

/-!
# A348969: a(n) = n / gcd(n, A099377(n)).

The programs for A348969, the canonical program `A348969.P3434171516532769019` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348969 has offset 1).

The definition of A348969 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348968, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348969.P3434171516532769019

`(n+1)/A348968(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A348969

/-- `(n+1)/A348968(n+1)` -/
def P3434171516532769019.Spec : Prop :=
  ∀ n, P3434171516532769019.a n = (A348969 (n + 1) : ℚ)

end A348969

/-! ## A348969.P10415695897454632589

`(n+1)/gcd(n+1, A099377(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348969.P10415695897454632589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A099377 (n + 1)) : ℚ)

end

end A348969.P10415695897454632589

namespace A348969

/-- `(n+1)/gcd(n+1, A099377(n+1))` -/
def P10415695897454632589.Spec : Prop :=
  ∀ n, P10415695897454632589.a n = (A348969 (n + 1) : ℚ)

end A348969

/-! ## A348969.P17922304389416423388

`gcd(n+1, A057020(n+1))`
-/

namespace A348969.P17922304389416423388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A057020 (n + 1))

end

end A348969.P17922304389416423388

namespace A348969

/-- `gcd(n+1, A057020(n+1))` -/
def P17922304389416423388.Spec : Prop :=
  ∀ n, (P17922304389416423388.a n : ℤ) = A348969 (n + 1)

end A348969

/-! ## A348969.P6576245099965439248

`(n+1)/gcd(1-(n-2*n), A348510(n+1))`
-/

namespace A348969.P6576245099965439248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (1 - ((n : ℤ) - (2 * n : ℤ))) (A348510 (n + 1)) : ℚ)

end

end A348969.P6576245099965439248

namespace A348969

/-- `(n+1)/gcd(1-(n-2*n), A348510(n+1))` -/
def P6576245099965439248.Spec : Prop :=
  ∀ n, P6576245099965439248.a n = (A348969 (n + 1) : ℚ)

end A348969

/-! ## A348969.P1206859165228189833

`gcd(A057020(n+1), A131738(n))`
-/

namespace A348969.P1206859165228189833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057020 (n + 1)) (A131738 n)

end

end A348969.P1206859165228189833

namespace A348969

/-- `gcd(A057020(n+1), A131738(n))` -/
def P1206859165228189833.Spec : Prop :=
  ∀ n, (P1206859165228189833.a n : ℤ) = A348969 (n + 1)

end A348969

/-! ## A348969.P8727671183703979310

`A057020(n+1)/A099378(n+1)`
-/

namespace A348969.P8727671183703979310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057020 (n + 1) : ℚ) / (A099378 (n + 1) : ℚ)

end

end A348969.P8727671183703979310

namespace A348969

/-- `A057020(n+1)/A099378(n+1)` -/
def P8727671183703979310.Spec : Prop :=
  ∀ n, P8727671183703979310.a n = (A348969 (n + 1) : ℚ)

end A348969

/-! ## A348969.P9678368642028141759

`A324121(n+1)/A009205(n+1)`
-/

namespace A348969.P9678368642028141759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324121 (n + 1) : ℚ) / (A009205 (n + 1) : ℚ)

end

end A348969.P9678368642028141759

namespace A348969

/-- `A324121(n+1)/A009205(n+1)` -/
def P9678368642028141759.Spec : Prop :=
  ∀ n, P9678368642028141759.a n = (A348969 (n + 1) : ℚ)

end A348969

/-! ## A348969.P13116212271604473549

`(n+1)*A057021(n+1)/A099377(n+1)`
-/

namespace A348969.P13116212271604473549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A057021 (n + 1) : ℚ) / (A099377 (n + 1) : ℚ))

end

end A348969.P13116212271604473549

namespace A348969

/-- `(n+1)*A057021(n+1)/A099377(n+1)` -/
def P13116212271604473549.Spec : Prop :=
  ∀ n, P13116212271604473549.a n = (A348969 (n + 1) : ℚ)

end A348969

/-! ## A348969.P12885928222364505393

`A324121(n+1)/gcd(A000005(n+1), ∑{d}[n+1, #])`
-/

namespace A348969.P12885928222364505393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324121 (n + 1) : ℚ) / (Int.gcd (A000005 (n + 1)) ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) : ℚ)

end

end A348969.P12885928222364505393

namespace A348969

/-- `A324121(n+1)/gcd(A000005(n+1), ∑{d}[n+1, #])` -/
def P12885928222364505393.Spec : Prop :=
  ∀ n, P12885928222364505393.a n = (A348969 (n + 1) : ℚ)

end A348969

/-! ## A348969.P14538478262204805052

`A324121(n+1)/gcd(A000005(n+1), A000203(n+1))`
-/

namespace A348969.P14538478262204805052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324121 (n + 1) : ℚ) / (Int.gcd (A000005 (n + 1)) (A000203 (n + 1)) : ℚ)

end

end A348969.P14538478262204805052

namespace A348969

/-- `A324121(n+1)/gcd(A000005(n+1), A000203(n+1))` -/
def P14538478262204805052.Spec : Prop :=
  ∀ n, P14538478262204805052.a n = (A348969 (n + 1) : ℚ)

end A348969

/-!
# A348970: a(n) = A003959(n) - A129283(n), where A003959 is multiplicative with a(p^e) = (p+1)^e and A129283(n) is sum of n and its arithmetic derivative.

The programs for A348970, the canonical program `A348970.P15142957412835109765` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348970 has offset 1).

The definition of A348970 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A129283, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348970.P15142957412835109765

`A003959(n+1)-A129283(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A348970

/-- `A003959(n+1)-A129283(n+1)` -/
def P15142957412835109765.Spec : Prop :=
  ∀ n, P15142957412835109765.a n = A348970 (n + 1)

theorem P15142957412835109765.correct : P15142957412835109765.Spec := by
  intro n
  simp only [A348970, Nat.add_sub_cancel]

end A348970

/-! ## A348970.P16229421281866914847

`A348507(n+1)-A003415(n+1)`
-/

namespace A348970.P16229421281866914847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348507 (n + 1) - A003415 (n + 1)

end

end A348970.P16229421281866914847

namespace A348970

/-- `A348507(n+1)-A003415(n+1)` -/
def P16229421281866914847.Spec : Prop :=
  ∀ n, P16229421281866914847.a n = A348970 (n + 1)

theorem P16229421281866914847.correct : P16229421281866914847.Spec := by
  intro n
  simp only [A348970, Nat.add_sub_cancel, A348970.P16229421281866914847.a, A348970.P15142957412835109765.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A003959, A003959.P10480308691352807012.f1, A003959.P10480308691352807012.a, A129283, A129283.P3962818557550655141.a, A348507, A348507.P8468116905144779811.a, A003968, A003968.P10961526323602588276.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A001615, A001615.P12078511981713404634.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A167338, A167338.P17492942069736666981.f1, A167338.P17492942069736666981.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A014963, A014963.P5975177236000282614.a, A349394, A349394.P210516795435731064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A348970

/-! ## A348970.P9872609502105985313

`A348029(n+1)-A211991(n+1)`
-/

namespace A348970.P9872609502105985313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348029 (n + 1) - A211991 (n + 1)

end

end A348970.P9872609502105985313

namespace A348970

/-- `A348029(n+1)-A211991(n+1)` -/
def P9872609502105985313.Spec : Prop :=
  ∀ n, P9872609502105985313.a n = A348970 (n + 1)

theorem P9872609502105985313.correct : P9872609502105985313.Spec := by
  intro n
  simp only [A348970, Nat.add_sub_cancel, A348970.P9872609502105985313.a, A348970.P15142957412835109765.a, A003959, A003959.P10480308691352807012.f1, A003959.P10480308691352807012.a, A129283, A129283.P3962818557550655141.a, A211991, A211991.P15084257827643114560.a, A348029, A348029.P15301953817482989203.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A003968, A003968.P10961526323602588276.a, A001615, A001615.P12078511981713404634.a, A167338, A167338.P17492942069736666981.f1, A167338.P17492942069736666981.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A014963, A014963.P5975177236000282614.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A348970

/-! ## A348970.P3475617832861695787

`A003959(n+1)-(n+1+A003415(n+1))`
-/

namespace A348970.P3475617832861695787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) - ((n + 1 : ℤ) + A003415 (n + 1))

end

end A348970.P3475617832861695787

namespace A348970

/-- `A003959(n+1)-(n+1+A003415(n+1))` -/
def P3475617832861695787.Spec : Prop :=
  ∀ n, P3475617832861695787.a n = A348970 (n + 1)

theorem P3475617832861695787.correct : P3475617832861695787.Spec := by
  intro n
  simp only [A348970, Nat.add_sub_cancel, A348970.P3475617832861695787.a, A348970.P15142957412835109765.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A003959, A003959.P10480308691352807012.f1, A003959.P10480308691352807012.a, A129283, A129283.P3962818557550655141.a, A003968, A003968.P10961526323602588276.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A001615, A001615.P12078511981713404634.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A167338, A167338.P17492942069736666981.f1, A167338.P17492942069736666981.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A014963, A014963.P5975177236000282614.a, A349394, A349394.P210516795435731064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A348970

/-! ## A348970.P10062377318336281880

`A348508(n+1)-A168036(n+1)`
-/

namespace A348970.P10062377318336281880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348508 (n + 1) - A168036 (n + 1)

end

end A348970.P10062377318336281880

namespace A348970

/-- `A348508(n+1)-A168036(n+1)` -/
def P10062377318336281880.Spec : Prop :=
  ∀ n, P10062377318336281880.a n = A348970 (n + 1)

theorem P10062377318336281880.correct : P10062377318336281880.Spec := by
  intro n
  simp only [A348970, Nat.add_sub_cancel, A348970.P10062377318336281880.a, A348970.P15142957412835109765.a, A003959, A003959.P10480308691352807012.f1, A003959.P10480308691352807012.a, A129283, A129283.P3962818557550655141.a, A168036, A168036.P2098310487666722677.a, A348508, A348508.P7080885370460745572.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A003968, A003968.P10961526323602588276.a, A001615, A001615.P12078511981713404634.a, A167338, A167338.P17492942069736666981.f1, A167338.P17492942069736666981.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A014963, A014963.P5975177236000282614.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A348970

/-! ## A348970.P16553771201225640230

`A348507(n+1)+n+1-A129283(n+1)`
-/

namespace A348970.P16553771201225640230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348507 (n + 1) + ((n + 1 : ℤ) - A129283 (n + 1))

end

end A348970.P16553771201225640230

namespace A348970

/-- `A348507(n+1)+n+1-A129283(n+1)` -/
def P16553771201225640230.Spec : Prop :=
  ∀ n, P16553771201225640230.a n = A348970 (n + 1)

theorem P16553771201225640230.correct : P16553771201225640230.Spec := by
  intro n
  simp only [A348970, Nat.add_sub_cancel, A348970.P16553771201225640230.a, A348970.P15142957412835109765.a, A003959, A003959.P10480308691352807012.f1, A003959.P10480308691352807012.a, A129283, A129283.P3962818557550655141.a, A348507, A348507.P8468116905144779811.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A003968, A003968.P10961526323602588276.a, A001615, A001615.P12078511981713404634.a, A167338, A167338.P17492942069736666981.f1, A167338.P17492942069736666981.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A014963, A014963.P5975177236000282614.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A348970

/-! ## A348970.P12170061503353959237

`A348507(n+1)-(A348975(n+1)+A322582(n+1))`
-/

namespace A348970.P12170061503353959237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348507 (n + 1) - (A348975 (n + 1) + A322582 (n + 1))

end

end A348970.P12170061503353959237

namespace A348970

/-- `A348507(n+1)-(A348975(n+1)+A322582(n+1))` -/
def P12170061503353959237.Spec : Prop :=
  ∀ n, P12170061503353959237.a n = A348970 (n + 1)

theorem P12170061503353959237.correct : P12170061503353959237.Spec := by
  intro n
  simp only [A348970, Nat.add_sub_cancel, A348970.P12170061503353959237.a, A348970.P15142957412835109765.a, A003959, A003959.P10480308691352807012.f1, A003959.P10480308691352807012.a, A129283, A129283.P3962818557550655141.a, A322582, A322582.P8560399753878851377.a, A348507, A348507.P8468116905144779811.a, A348975, A348975.P14334171170777144493.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A003958, A003958.P196685604458257440.a, A003968, A003968.P10961526323602588276.a, A001615, A001615.P12078511981713404634.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A167338, A167338.P17492942069736666981.f1, A167338.P17492942069736666981.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A014963, A014963.P5975177236000282614.a, A120007, A120007.P17212889191585270917.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A348970

/-! ## A348970.P2512732309261085371

`A003959(n+1)-A348972(n+1)*A348973(n+1)`
-/

namespace A348970.P2512732309261085371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) - A348972 (n + 1) * A348973 (n + 1)

end

end A348970.P2512732309261085371

namespace A348970

/-- `A003959(n+1)-A348972(n+1)*A348973(n+1)` -/
def P2512732309261085371.Spec : Prop :=
  ∀ n, P2512732309261085371.a n = A348970 (n + 1)

end A348970

/-! ## A348970.P9985496986285509976

`A348972(n+1)*A348974(n+1)-A129283(n+1)`
-/

namespace A348970.P9985496986285509976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348972 (n + 1) * A348974 (n + 1) - A129283 (n + 1)

end

end A348970.P9985496986285509976

namespace A348970

/-- `A348972(n+1)*A348974(n+1)-A129283(n+1)` -/
def P9985496986285509976.Spec : Prop :=
  ∀ n, P9985496986285509976.a n = A348970 (n + 1)

end A348970

/-! ## A348970.P3378774621717019789

`(A348974(n+1)-A348973(n+1))*A348972(n+1)`
-/

namespace A348970.P3378774621717019789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A348974 (n + 1) - A348973 (n + 1)) * A348972 (n + 1)

end

end A348970.P3378774621717019789

namespace A348970

/-- `(A348974(n+1)-A348973(n+1))*A348972(n+1)` -/
def P3378774621717019789.Spec : Prop :=
  ∀ n, P3378774621717019789.a n = A348970 (n + 1)

end A348970

/-! ## A348970.P18233328957255889931

`A348507(n+1)-A319703(2*(n+1))`
-/

namespace A348970.P18233328957255889931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348507 (n + 1) - A319703 (2 * (n + 1))

end

end A348970.P18233328957255889931

namespace A348970

/-- `A348507(n+1)-A319703(2*(n+1))` -/
def P18233328957255889931.Spec : Prop :=
  ∀ n, P18233328957255889931.a n = A348970 (n + 1)

end A348970

/-!
# A348971: a(n) = Product(p*(p+1)^(e-1)) - Product((p-1)*p^(e-1)), when n = Product(p^e), with p primes, and e their exponents.

The programs for A348971, the canonical program `A348971.P11156141318395468406` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348971 has offset 1).

The definition of A348971 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A003968, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348971.P11156141318395468406

`A003968(n+1)-A000010(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A348971

/-- `A003968(n+1)-A000010(n+1)` -/
def P11156141318395468406.Spec : Prop :=
  ∀ n, P11156141318395468406.a n = A348971 (n + 1)

theorem P11156141318395468406.correct : P11156141318395468406.Spec := by
  intro n
  simp only [A348971, Nat.add_sub_cancel]

end A348971

/-! ## A348971.P8243440953041860247

`A003968(n+1)-Δ[A005728(n)]`
-/

namespace A348971.P8243440953041860247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003968 (n + 1) - (f1 (n + 1) - f1 n)

end

end A348971.P8243440953041860247

namespace A348971

/-- `A003968(n+1)-Δ[A005728(n)]` -/
def P8243440953041860247.Spec : Prop :=
  ∀ n, P8243440953041860247.a n = A348971 (n + 1)

end A348971

/-! ## A348971.P564228580527625141

`A348030(n+1)+A051953(n+1)`
-/

namespace A348971.P564228580527625141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348030 (n + 1) + A051953 (n + 1)

end

end A348971.P564228580527625141

namespace A348971

/-- `A348030(n+1)+A051953(n+1)` -/
def P564228580527625141.Spec : Prop :=
  ∀ n, P564228580527625141.a n = A348971 (n + 1)

end A348971

/-! ## A348971.P10239602180351868309

`A003968(n+1)-Δ[A100449(n)/4]`
-/

namespace A348971.P10239602180351868309
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100449 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003968 (n + 1) : ℚ) - (f1 (n + 1) - f1 n)

end

end A348971.P10239602180351868309

namespace A348971

/-- `A003968(n+1)-Δ[A100449(n)/4]` -/
def P10239602180351868309.Spec : Prop :=
  ∀ n, P10239602180351868309.a n = (A348971 (n + 1) : ℚ)

end A348971

/-! ## A348971.P170037933489156758

`A003968(n+1)-(A109606(n+1)+1)`
-/

namespace A348971.P170037933489156758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003968 (n + 1) - (A109606 (n + 1) + 1)

end

end A348971.P170037933489156758

namespace A348971

/-- `A003968(n+1)-(A109606(n+1)+1)` -/
def P170037933489156758.Spec : Prop :=
  ∀ n, P170037933489156758.a n = A348971 (n + 1)

theorem P170037933489156758.correct : P170037933489156758.Spec := by
  intro n
  simp only [A348971, Nat.add_sub_cancel, A348971.P170037933489156758.a, A348971.P11156141318395468406.a, A000010, A000010.P4673923239450215316.a, A003968, A003968.P10961526323602588276.a, A109606, A109606.P2415810041766612210.a, A001615, A001615.P12078511981713404634.a, A003557, A003557.P6364735403900941810.a, A167338, A167338.P17492942069736666981.f1, A167338.P17492942069736666981.a, A173557, A173557.P15666735857375843373.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A014963, A014963.P5975177236000282614.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, A166140, A166140.P17649384582351937107.f1, A166140.P17649384582351937107.a, A166142, A166142.P10122674445425206392.f1, A166142.P10122674445425206392.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A348971

/-! ## A348971.P5967513644776835032

`A003968(n+1)+A219428(n+1)-n`
-/

namespace A348971.P5967513644776835032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003968 (n + 1) + (A219428 (n + 1) - (n : ℤ))

end

end A348971.P5967513644776835032

namespace A348971

/-- `A003968(n+1)+A219428(n+1)-n` -/
def P5967513644776835032.Spec : Prop :=
  ∀ n, P5967513644776835032.a n = A348971 (n + 1)

end A348971

/-! ## A348971.P12010173667937777502

`A003968(n+1)-round(A002246(n+1)/4)`
-/

namespace A348971.P12010173667937777502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003968 (n + 1) - SequenceMachineLib.roundAway ((A002246 (n + 1) : ℚ) / 4)

end

end A348971.P12010173667937777502

namespace A348971

/-- `A003968(n+1)-round(A002246(n+1)/4)` -/
def P12010173667937777502.Spec : Prop :=
  ∀ n, P12010173667937777502.a n = A348971 (n + 1)

end A348971

/-! ## A348971.P7300261968919717433

`A003968(n+1)-(1-A051953(n+1)+n)`
-/

namespace A348971.P7300261968919717433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003968 (n + 1) - (1 - A051953 (n + 1) + (n : ℤ))

end

end A348971.P7300261968919717433

namespace A348971

/-- `A003968(n+1)-(1-A051953(n+1)+n)` -/
def P7300261968919717433.Spec : Prop :=
  ∀ n, P7300261968919717433.a n = A348971 (n + 1)

end A348971

/-! ## A348971.P5395542114615059952

`∑{d}[n+1, A008683(#)*A348507((n+1)/#)]`
-/

namespace A348971.P5395542114615059952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A348507 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A348971.P5395542114615059952

namespace A348971

/-- `∑{d}[n+1, A008683(#)*A348507((n+1)/#)]` -/
def P5395542114615059952.Spec : Prop :=
  ∀ n, P5395542114615059952.a n = A348971 (n + 1)

end A348971

/-! ## A348971.P6311048595339442904

`∑{d}[n+1, A046692(#)*A349140((n+1)/#)]`
-/

namespace A348971.P6311048595339442904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A349140 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A348971.P6311048595339442904

namespace A348971

/-- `∑{d}[n+1, A046692(#)*A349140((n+1)/#)]` -/
def P6311048595339442904.Spec : Prop :=
  ∀ n, P6311048595339442904.a n = A348971 (n + 1)

end A348971

/-! ## A348971.P4421264305831572986

`∑{d}[n+1, A055615(#)*A349141((n+1)/#)]`
-/

namespace A348971.P4421264305831572986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A349141 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A348971.P4421264305831572986

namespace A348971

/-- `∑{d}[n+1, A055615(#)*A349141((n+1)/#)]` -/
def P4421264305831572986.Spec : Prop :=
  ∀ n, P4421264305831572986.a n = A348971 (n + 1)

end A348971

/-! ## A348971.P8286172858902769064

`∑{d}[n+1, A327960(#)*A349143((n+1)/#)]`
-/

namespace A348971.P8286172858902769064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327960 d * A349143 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A348971.P8286172858902769064

namespace A348971

/-- `∑{d}[n+1, A327960(#)*A349143((n+1)/#)]` -/
def P8286172858902769064.Spec : Prop :=
  ∀ n, P8286172858902769064.a n = A348971 (n + 1)

end A348971

/-! ## A348971.P6325335905692130439

`A003968(n+1)-(n+1)/∏{p}[n+1, #]*A173557(n+1)`
-/

namespace A348971.P6325335905692130439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003968 (n + 1) : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A173557 (n + 1) : ℚ)

end

end A348971.P6325335905692130439

namespace A348971

/-- `A003968(n+1)-(n+1)/∏{p}[n+1, #]*A173557(n+1)` -/
def P6325335905692130439.Spec : Prop :=
  ∀ n, P6325335905692130439.a n = (A348971 (n + 1) : ℚ)

end A348971

/-! ## A348971.P3955270282165914723

`A003968(n+1)-(A005728(n+1)-A005728(n))`
-/

namespace A348971.P3955270282165914723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003968 (n + 1) - (A005728 (n + 1) - A005728 n)

end

end A348971.P3955270282165914723

namespace A348971

/-- `A003968(n+1)-(A005728(n+1)-A005728(n))` -/
def P3955270282165914723.Spec : Prop :=
  ∀ n, P3955270282165914723.a n = A348971 (n + 1)

end A348971

/-! ## A348971.P13350617252809444715

`A007947(n+1)*A327564(n+1)-A000010(n+1)`
-/

namespace A348971.P13350617252809444715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A327564 (n + 1) - A000010 (n + 1)

end

end A348971.P13350617252809444715

namespace A348971

/-- `A007947(n+1)*A327564(n+1)-A000010(n+1)` -/
def P13350617252809444715.Spec : Prop :=
  ∀ n, P13350617252809444715.a n = A348971 (n + 1)

end A348971

/-! ## A348971.P15122187982596729356

`A348036(n+1)*A348038(n+1)-A000010(n+1)`
-/

namespace A348971.P15122187982596729356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348036 (n + 1) * A348038 (n + 1) - A000010 (n + 1)

end

end A348971.P15122187982596729356

namespace A348971

/-- `A348036(n+1)*A348038(n+1)-A000010(n+1)` -/
def P15122187982596729356.Spec : Prop :=
  ∀ n, P15122187982596729356.a n = A348971 (n + 1)

end A348971

/-! ## A348971.P899865673763265020

`A003968(n+1)-A353643(n+1)*A353644(n+1)`
-/

namespace A348971.P899865673763265020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003968 (n + 1) - A353643 (n + 1) * A353644 (n + 1)

end

end A348971.P899865673763265020

namespace A348971

/-- `A003968(n+1)-A353643(n+1)*A353644(n+1)` -/
def P899865673763265020.Spec : Prop :=
  ∀ n, P899865673763265020.a n = A348971 (n + 1)

end A348971

/-! ## A348971.P4537756566197623297

`A003968(n+1)+Δ[A057427(n)-A049643(n)]`
-/

namespace A348971.P4537756566197623297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A049643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003968 (n + 1) + (f1 (n + 1) - f1 n)

end

end A348971.P4537756566197623297

namespace A348971

/-- `A003968(n+1)+Δ[A057427(n)-A049643(n)]` -/
def P4537756566197623297.Spec : Prop :=
  ∀ n, P4537756566197623297.a n = A348971 (n + 1)

end A348971

/-!
# A348972: a(n) = gcd(A003959(n), A129283(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e and A129283(n) is sum of n and its arithmetic derivative.

The programs for A348972, the canonical program `A348972.P942558158600498541` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348972 has offset 1).

The definition of A348972 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A129283, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348972.P1316690560583007656

`A003959(n+1)/A348974(n+1)`
-/

namespace A348972.P1316690560583007656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A348974 (n + 1) : ℚ)

end

end A348972.P1316690560583007656

namespace A348972

/-- `A003959(n+1)/A348974(n+1)` -/
def P1316690560583007656.Spec : Prop :=
  ∀ n, P1316690560583007656.a n = (A348972 (n + 1) : ℚ)

end A348972

/-! ## A348972.P17366871842466118113

`A129283(n+1)/A348973(n+1)`
-/

namespace A348972.P17366871842466118113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129283 (n + 1) : ℚ) / (A348973 (n + 1) : ℚ)

end

end A348972.P17366871842466118113

namespace A348972

/-- `A129283(n+1)/A348973(n+1)` -/
def P17366871842466118113.Spec : Prop :=
  ∀ n, P17366871842466118113.a n = (A348972 (n + 1) : ℚ)

end A348972

/-! ## A348972.P942558158600498541

`gcd(A003959(n+1), A129283(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A348972

/-- `gcd(A003959(n+1), A129283(n+1))` -/
def P942558158600498541.Spec : Prop :=
  ∀ n, (P942558158600498541.a n : ℤ) = A348972 (n + 1)

theorem P942558158600498541.correct : P942558158600498541.Spec := by
  intro n
  simp only [A348972, Nat.add_sub_cancel]

end A348972

/-! ## A348972.P14959340088692672936

`sqrt(A167349(n+1))/A348974(n+1)`
-/

namespace A348972.P14959340088692672936
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A167349 (n + 1) : ℝ) / (A348974 (n + 1) : ℝ)

end

end A348972.P14959340088692672936

namespace A348972

/-- `sqrt(A167349(n+1))/A348974(n+1)` -/
def P14959340088692672936.Spec : Prop :=
  ∀ n, P14959340088692672936.a n = (A348972 (n + 1) : ℝ)

end A348972

/-! ## A348972.P77792483451332566

`gcd(sqrt(A167349(n+1)), A348970(n+1))`
-/

namespace A348972.P77792483451332566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (Real.sqrt (A167349 (n + 1) : ℝ))) (A348970 (n + 1))

end

end A348972.P77792483451332566

namespace A348972

/-- `gcd(sqrt(A167349(n+1)), A348970(n+1))` -/
def P77792483451332566.Spec : Prop :=
  ∀ n, (P77792483451332566.a n : ℤ) = A348972 (n + 1)

end A348972

/-! ## A348972.P10151257273280726721

`(A003415(n+1)+n+1)/A348973(n+1)`
-/

namespace A348972.P10151257273280726721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 1) + (n + 1 : ℤ) : ℚ) / (A348973 (n + 1) : ℚ)

end

end A348972.P10151257273280726721

namespace A348972

/-- `(A003415(n+1)+n+1)/A348973(n+1)` -/
def P10151257273280726721.Spec : Prop :=
  ∀ n, P10151257273280726721.a n = (A348972 (n + 1) : ℚ)

end A348972

/-! ## A348972.P13090965251074433776

`(A348970(n+1)+A129283(n+1))/A348974(n+1)`
-/

namespace A348972.P13090965251074433776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348970 (n + 1) + A129283 (n + 1) : ℚ) / (A348974 (n + 1) : ℚ)

end

end A348972.P13090965251074433776

namespace A348972

/-- `(A348970(n+1)+A129283(n+1))/A348974(n+1)` -/
def P13090965251074433776.Spec : Prop :=
  ∀ n, P13090965251074433776.a n = (A348972 (n + 1) : ℚ)

end A348972

/-! ## A348972.P4757055958522324599

`(A003959(n+1)-A348970(n+1))/A348973(n+1)`
-/

namespace A348972.P4757055958522324599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) - A348970 (n + 1) : ℚ) / (A348973 (n + 1) : ℚ)

end

end A348972.P4757055958522324599

namespace A348972

/-- `(A003959(n+1)-A348970(n+1))/A348973(n+1)` -/
def P4757055958522324599.Spec : Prop :=
  ∀ n, P4757055958522324599.a n = (A348972 (n + 1) : ℚ)

end A348972

/-! ## A348972.P14765987199040491144

`A343226(n+1)*A345059(n+1)/A348973(n+1)`
-/

namespace A348972.P14765987199040491144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343226 (n + 1) * A345059 (n + 1) : ℚ) / (A348973 (n + 1) : ℚ)

end

end A348972.P14765987199040491144

namespace A348972

/-- `A343226(n+1)*A345059(n+1)/A348973(n+1)` -/
def P14765987199040491144.Spec : Prop :=
  ∀ n, P14765987199040491144.a n = (A348972 (n + 1) : ℚ)

end A348972

/-! ## A348972.P15326842463192382680

`A327564(A064549(n+1))/A348974(n+1)`
-/

namespace A348972.P15326842463192382680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327564 (A064549 (n + 1)).toNat : ℚ) / (A348974 (n + 1) : ℚ)

end

end A348972.P15326842463192382680

namespace A348972

/-- `A327564(A064549(n+1))/A348974(n+1)` -/
def P15326842463192382680.Spec : Prop :=
  ∀ n, P15326842463192382680.a n = (A348972 (n + 1) : ℚ)

end A348972

/-!
# A348973: Numerator of ratio A129283(n) / A003959(n), where A003959 is multiplicative with a(p^e) = (p+1)^e and A129283(n) is sum of n and its arithmetic derivative.

The programs for A348973, the canonical program `A348973.P427689290796728672` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348973 has offset 1).

The definition of A348973 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129283, A348972, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348973.P427689290796728672

`A129283(n+1)/A348972(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A348973

/-- `A129283(n+1)/A348972(n+1)` -/
def P427689290796728672.Spec : Prop :=
  ∀ n, P427689290796728672.a n = (A348973 (n + 1) : ℚ)

end A348973

/-! ## A348973.P13996971135624639134

`A129283(n+1)/gcd(A003959(n+1), A129283(n+1))`
-/

namespace A348973.P13996971135624639134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129283 (n + 1) : ℚ) / (Int.gcd (A003959 (n + 1)) (A129283 (n + 1)) : ℚ)

end

end A348973.P13996971135624639134

namespace A348973

/-- `A129283(n+1)/gcd(A003959(n+1), A129283(n+1))` -/
def P13996971135624639134.Spec : Prop :=
  ∀ n, P13996971135624639134.a n = (A348973 (n + 1) : ℚ)

end A348973

/-! ## A348973.P8218740500359097700

`∑[A258057(n)+1]/A348972(n+1)`
-/

namespace A348973.P8218740500359097700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A348972 (n + 1) : ℚ)

end

end A348973.P8218740500359097700

namespace A348973

/-- `∑[A258057(n)+1]/A348972(n+1)` -/
def P8218740500359097700.Spec : Prop :=
  ∀ n, P8218740500359097700.a n = (A348973 (n + 1) : ℚ)

end A348973

/-! ## A348973.P2354410178411256151

`(A003415(n+1)+n+1)/A348972(n+1)`
-/

namespace A348973.P2354410178411256151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 1) + (n + 1 : ℤ) : ℚ) / (A348972 (n + 1) : ℚ)

end

end A348973.P2354410178411256151

namespace A348973

/-- `(A003415(n+1)+n+1)/A348972(n+1)` -/
def P2354410178411256151.Spec : Prop :=
  ∀ n, P2354410178411256151.a n = (A348973 (n + 1) : ℚ)

end A348973

/-! ## A348973.P16448608260925373126

`(A211991(n+1)+A000203(n+1))/A348972(n+1)`
-/

namespace A348973.P16448608260925373126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211991 (n + 1) + A000203 (n + 1) : ℚ) / (A348972 (n + 1) : ℚ)

end

end A348973.P16448608260925373126

namespace A348973

/-- `(A211991(n+1)+A000203(n+1))/A348972(n+1)` -/
def P16448608260925373126.Spec : Prop :=
  ∀ n, P16448608260925373126.a n = (A348973 (n + 1) : ℚ)

end A348973

/-! ## A348973.P12821060685677295778

`(A003959(n+1)-A348970(n+1))/A348972(n+1)`
-/

namespace A348973.P12821060685677295778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) - A348970 (n + 1) : ℚ) / (A348972 (n + 1) : ℚ)

end

end A348973.P12821060685677295778

namespace A348973

/-- `(A003959(n+1)-A348970(n+1))/A348972(n+1)` -/
def P12821060685677295778.Spec : Prop :=
  ∀ n, P12821060685677295778.a n = (A348973 (n + 1) : ℚ)

end A348973

/-! ## A348973.P4335147526423322398

`A348974(n+1)-A348970(n+1)/A348972(n+1)`
-/

namespace A348973.P4335147526423322398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348974 (n + 1) : ℚ) - (A348970 (n + 1) : ℚ) / (A348972 (n + 1) : ℚ)

end

end A348973.P4335147526423322398

namespace A348973

/-- `A348974(n+1)-A348970(n+1)/A348972(n+1)` -/
def P4335147526423322398.Spec : Prop :=
  ∀ n, P4335147526423322398.a n = (A348973 (n + 1) : ℚ)

end A348973

/-! ## A348973.P17673001379626797125

`A129283(n+1)/A003959(n+1)*A348974(n+1)`
-/

namespace A348973.P17673001379626797125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129283 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A348974 (n + 1) : ℚ)

end

end A348973.P17673001379626797125

namespace A348973

/-- `A129283(n+1)/A003959(n+1)*A348974(n+1)` -/
def P17673001379626797125.Spec : Prop :=
  ∀ n, P17673001379626797125.a n = (A348973 (n + 1) : ℚ)

end A348973

/-! ## A348973.P3610978795130361758

`A343226(n+1)*A345059(n+1)/A348972(n+1)`
-/

namespace A348973.P3610978795130361758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343226 (n + 1) * A345059 (n + 1) : ℚ) / (A348972 (n + 1) : ℚ)

end

end A348973.P3610978795130361758

namespace A348973

/-- `A343226(n+1)*A345059(n+1)/A348972(n+1)` -/
def P3610978795130361758.Spec : Prop :=
  ∀ n, P3610978795130361758.a n = (A348973 (n + 1) : ℚ)

end A348973

/-!
# A348974: Denominator of ratio A129283(n) / A003959(n), where A003959 is multiplicative with a(p^e) = (p+1)^e and A129283(n) is sum of n and its arithmetic derivative.

The programs for A348974, the canonical program `A348974.P12713574773461642602` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348974 has offset 1).

The definition of A348974 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A348972, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348974.P12713574773461642602

`A003959(n+1)/A348972(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A348974

/-- `A003959(n+1)/A348972(n+1)` -/
def P12713574773461642602.Spec : Prop :=
  ∀ n, P12713574773461642602.a n = (A348974 (n + 1) : ℚ)

end A348974

/-! ## A348974.P3432451987182436874

`A003959(n+1)/gcd(A003959(n+1), A129283(n+1))`
-/

namespace A348974.P3432451987182436874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (Int.gcd (A003959 (n + 1)) (A129283 (n + 1)) : ℚ)

end

end A348974.P3432451987182436874

namespace A348974

/-- `A003959(n+1)/gcd(A003959(n+1), A129283(n+1))` -/
def P3432451987182436874.Spec : Prop :=
  ∀ n, P3432451987182436874.a n = (A348974 (n + 1) : ℚ)

end A348974

/-! ## A348974.P1440329416634386248

`sqrt(A167349(n+1))/A348972(n+1)`
-/

namespace A348974.P1440329416634386248
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A167349 (n + 1) : ℝ) / (A348972 (n + 1) : ℝ)

end

end A348974.P1440329416634386248

namespace A348974

/-- `sqrt(A167349(n+1))/A348972(n+1)` -/
def P1440329416634386248.Spec : Prop :=
  ∀ n, P1440329416634386248.a n = (A348974 (n + 1) : ℝ)

end A348974

/-! ## A348974.P3409922176639251844

`(A348970(n+1)+A129283(n+1))/A348972(n+1)`
-/

namespace A348974.P3409922176639251844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348970 (n + 1) + A129283 (n + 1) : ℚ) / (A348972 (n + 1) : ℚ)

end

end A348974.P3409922176639251844

namespace A348974

/-- `(A348970(n+1)+A129283(n+1))/A348972(n+1)` -/
def P3409922176639251844.Spec : Prop :=
  ∀ n, P3409922176639251844.a n = (A348974 (n + 1) : ℚ)

end A348974

/-! ## A348974.P13130597491289303440

`A348973(n+1)+A348970(n+1)/A348972(n+1)`
-/

namespace A348974.P13130597491289303440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348973 (n + 1) : ℚ) + (A348970 (n + 1) : ℚ) / (A348972 (n + 1) : ℚ)

end

end A348974.P13130597491289303440

namespace A348974

/-- `A348973(n+1)+A348970(n+1)/A348972(n+1)` -/
def P13130597491289303440.Spec : Prop :=
  ∀ n, P13130597491289303440.a n = (A348974 (n + 1) : ℚ)

end A348974

/-! ## A348974.P1066521456339418551

`A003959(n+1)/A129283(n+1)*A348973(n+1)`
-/

namespace A348974.P1066521456339418551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A129283 (n + 1) : ℚ) * (A348973 (n + 1) : ℚ)

end

end A348974.P1066521456339418551

namespace A348974

/-- `A003959(n+1)/A129283(n+1)*A348973(n+1)` -/
def P1066521456339418551.Spec : Prop :=
  ∀ n, P1066521456339418551.a n = (A348974 (n + 1) : ℚ)

end A348974

/-! ## A348974.P6843077553199354232

`A167351(n+1)/(A166590(n+1)*A348972(n+1))`
-/

namespace A348974.P6843077553199354232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167351 (n + 1) : ℚ) / (A166590 (n + 1) * A348972 (n + 1) : ℚ)

end

end A348974.P6843077553199354232

namespace A348974

/-- `A167351(n+1)/(A166590(n+1)*A348972(n+1))` -/
def P6843077553199354232.Spec : Prop :=
  ∀ n, P6843077553199354232.a n = (A348974 (n + 1) : ℚ)

end A348974

/-! ## A348974.P4756230168224751246

`A167353(n+1)/(A166591(n+1)*A348972(n+1))`
-/

namespace A348974.P4756230168224751246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167353 (n + 1) : ℚ) / (A166591 (n + 1) * A348972 (n + 1) : ℚ)

end

end A348974.P4756230168224751246

namespace A348974

/-- `A167353(n+1)/(A166591(n+1)*A348972(n+1))` -/
def P4756230168224751246.Spec : Prop :=
  ∀ n, P4756230168224751246.a n = (A348974 (n + 1) : ℚ)

end A348974

/-! ## A348974.P17551851562944981414

`A327564(A064549(n+1))/A348972(n+1)`
-/

namespace A348974.P17551851562944981414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327564 (A064549 (n + 1)).toNat : ℚ) / (A348972 (n + 1) : ℚ)

end

end A348974.P17551851562944981414

namespace A348974

/-- `A327564(A064549(n+1))/A348972(n+1)` -/
def P17551851562944981414.Spec : Prop :=
  ∀ n, P17551851562944981414.a n = (A348974 (n + 1) : ℚ)

end A348974

/-!
# A348975: a(n) = A003415(n) + A003958(n) - n, where A003415 is the arithmetic derivative and A003958 is fully multiplicative with a(p) = (p-1).

The programs for A348975, the canonical program `A348975.P14334171170777144493` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348975 has offset 1).

The definition of A348975 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A003958, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348975.P1740557142164826519

`A003958(n+1)+A168036(n+1)`
-/

namespace A348975.P1740557142164826519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) + A168036 (n + 1)

end

end A348975.P1740557142164826519

namespace A348975

/-- `A003958(n+1)+A168036(n+1)` -/
def P1740557142164826519.Spec : Prop :=
  ∀ n, P1740557142164826519.a n = A348975 (n + 1)

theorem P1740557142164826519.correct : P1740557142164826519.Spec := by
  intro n
  simp only [A348975, Nat.add_sub_cancel, A348975.P1740557142164826519.a, A348975.P14334171170777144493.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A003958, A003958.P196685604458257440.a, A168036, A168036.P2098310487666722677.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A120007, A120007.P17212889191585270917.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A061397, A061397.P17730824645895443051.a, A349394, A349394.P210516795435731064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A348975

/-! ## A348975.P5482740021028728824

`A003415(n+1)-A322582(n+1)`
-/

namespace A348975.P5482740021028728824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) - A322582 (n + 1)

end

end A348975.P5482740021028728824

namespace A348975

/-- `A003415(n+1)-A322582(n+1)` -/
def P5482740021028728824.Spec : Prop :=
  ∀ n, P5482740021028728824.a n = A348975 (n + 1)

theorem P5482740021028728824.correct : P5482740021028728824.Spec := by
  intro n
  simp only [A348975, Nat.add_sub_cancel, A348975.P5482740021028728824.a, A348975.P14334171170777144493.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A003958, A003958.P196685604458257440.a, A322582, A322582.P8560399753878851377.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A120007, A120007.P17212889191585270917.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A061397, A061397.P17730824645895443051.a, A349394, A349394.P210516795435731064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A348975

/-! ## A348975.P14334171170777144493

`A003415(n+1)+A003958(n+1)-(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A348975

/-- `A003415(n+1)+A003958(n+1)-(n+1)` -/
def P14334171170777144493.Spec : Prop :=
  ∀ n, P14334171170777144493.a n = A348975 (n + 1)

theorem P14334171170777144493.correct : P14334171170777144493.Spec := by
  intro n
  simp only [A348975, Nat.add_sub_cancel]

end A348975

/-! ## A348975.P156753054982051324

`A324044(n+1)+A211991(n+1)`
-/

namespace A348975.P156753054982051324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324044 (n + 1) + A211991 (n + 1)

end

end A348975.P156753054982051324

namespace A348975

/-- `A324044(n+1)+A211991(n+1)` -/
def P156753054982051324.Spec : Prop :=
  ∀ n, P156753054982051324.a n = A348975 (n + 1)

theorem P156753054982051324.correct : P156753054982051324.Spec := by
  intro n
  simp only [A348975, Nat.add_sub_cancel, A348975.P156753054982051324.a, A348975.P14334171170777144493.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A003958, A003958.P196685604458257440.a, A211991, A211991.P15084257827643114560.a, A324044, A324044.P16013423005150912487.a, A001065, A001065.P4097147489331274860.a, A033879, A033879.P11735613842914743111.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A033880, A033880.P6005875780263802708.a, A120007, A120007.P17212889191585270917.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A061397, A061397.P17730824645895443051.a, A349394, A349394.P210516795435731064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A348975

/-! ## A348975.P4841953641711443155

`A333787(A000265(n+1))+A168036(n+1)`
-/

namespace A348975.P4841953641711443155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333787 (A000265 (n + 1)).toNat + A168036 (n + 1)

end

end A348975.P4841953641711443155

namespace A348975

/-- `A333787(A000265(n+1))+A168036(n+1)` -/
def P4841953641711443155.Spec : Prop :=
  ∀ n, P4841953641711443155.a n = A348975 (n + 1)

end A348975

/-! ## A348975.P9130362110382109005

`A339905(A064989(n+1))+A168036(n+1)`
-/

namespace A348975.P9130362110382109005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339905 (A064989 (n + 1)).toNat + A168036 (n + 1)

end

end A348975.P9130362110382109005

namespace A348975

/-- `A339905(A064989(n+1))+A168036(n+1)` -/
def P9130362110382109005.Spec : Prop :=
  ∀ n, P9130362110382109005.a n = A348975 (n + 1)

end A348975

/-! ## A348975.P7303011770063183283

`A168036(n+1)+lcm(A006466(n), A125131(n+1))`
-/

namespace A348975.P7303011770063183283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (n + 1) + (Int.lcm (A006466 n) (A125131 (n + 1)) : ℤ)

end

end A348975.P7303011770063183283

namespace A348975

/-- `A168036(n+1)+lcm(A006466(n), A125131(n+1))` -/
def P7303011770063183283.Spec : Prop :=
  ∀ n, P7303011770063183283.a n = A348975 (n + 1)

end A348975

/-! ## A348975.P18286306787459746829

`A348507(n+1)-(A348970(n+1)+A322582(n+1))`
-/

namespace A348975.P18286306787459746829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348507 (n + 1) - (A348970 (n + 1) + A322582 (n + 1))

end

end A348975.P18286306787459746829

namespace A348975

/-- `A348507(n+1)-(A348970(n+1)+A322582(n+1))` -/
def P18286306787459746829.Spec : Prop :=
  ∀ n, P18286306787459746829.a n = A348975 (n + 1)

theorem P18286306787459746829.correct : P18286306787459746829.Spec := by
  intro n
  simp only [A348975, Nat.add_sub_cancel, A348975.P18286306787459746829.a, A348975.P14334171170777144493.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A003958, A003958.P196685604458257440.a, A322582, A322582.P8560399753878851377.a, A348507, A348507.P8468116905144779811.a, A348970, A348970.P15142957412835109765.a, A003959, A003959.P10480308691352807012.f1, A003959.P10480308691352807012.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A129283, A129283.P3962818557550655141.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A003968, A003968.P10961526323602588276.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A120007, A120007.P17212889191585270917.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001615, A001615.P12078511981713404634.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A061397, A061397.P17730824645895443051.a, A167338, A167338.P17492942069736666981.f1, A167338.P17492942069736666981.a, A349394, A349394.P210516795435731064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A348975

/-! ## A348975.P8739807487073721272

`A129283(n+1)-A322582(2*(n+1))`
-/

namespace A348975.P8739807487073721272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 (n + 1) - A322582 (2 * (n + 1))

end

end A348975.P8739807487073721272

namespace A348975

/-- `A129283(n+1)-A322582(2*(n+1))` -/
def P8739807487073721272.Spec : Prop :=
  ∀ n, P8739807487073721272.a n = A348975 (n + 1)

end A348975

/-!
# A348976: Möbius transform of A129283, which is sum of n and its arithmetic derivative.

The programs for A348976, the canonical program `A348976.P9987790780550882752` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348976 has offset 1).

The definition of A348976 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A300251, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348976.P9987790780550882752

`A000010(n+1)+A300251(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A348976

/-- `A000010(n+1)+A300251(n+1)` -/
def P9987790780550882752.Spec : Prop :=
  ∀ n, P9987790780550882752.a n = A348976 (n + 1)

theorem P9987790780550882752.correct : P9987790780550882752.Spec := by
  intro n
  simp only [A348976, Nat.add_sub_cancel]

end A348976

/-! ## A348976.P5725193848149466677

`A300251(n+1)+Δ[A002088(n)]`
-/

namespace A348976.P5725193848149466677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300251 (n + 1) + (f1 (n + 1) - f1 n)

end

end A348976.P5725193848149466677

namespace A348976

/-- `A300251(n+1)+Δ[A002088(n)]` -/
def P5725193848149466677.Spec : Prop :=
  ∀ n, P5725193848149466677.a n = A348976 (n + 1)

end A348976

/-! ## A348976.P17199081110450312515

`A109606(n+1)+A300251(n+1)+1`
-/

namespace A348976.P17199081110450312515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + (A300251 (n + 1) + 1)

end

end A348976.P17199081110450312515

namespace A348976

/-- `A109606(n+1)+A300251(n+1)+1` -/
def P17199081110450312515.Spec : Prop :=
  ∀ n, P17199081110450312515.a n = A348976 (n + 1)

theorem P17199081110450312515.correct : P17199081110450312515.Spec := by
  intro n
  simp only [A348976, Nat.add_sub_cancel, A348976.P17199081110450312515.a, A348976.P9987790780550882752.a, A000010, A000010.P4673923239450215316.a, A109606, A109606.P2415810041766612210.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A003557, A003557.P6364735403900941810.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A173557, A173557.P15666735857375843373.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A349394, A349394.P210516795435731064.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A348976

/-! ## A348976.P16589392549840969184

`A300251(n+1)+A002618(n+1)/(n+1)`
-/

namespace A348976.P16589392549840969184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300251 (n + 1) : ℚ) + (A002618 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A348976.P16589392549840969184

namespace A348976

/-- `A300251(n+1)+A002618(n+1)/(n+1)` -/
def P16589392549840969184.Spec : Prop :=
  ∀ n, P16589392549840969184.a n = (A348976 (n + 1) : ℚ)

end A348976

/-! ## A348976.P15908060877680409945

`A300251(n+1)+A053191(n+1)%(n+2)`
-/

namespace A348976.P15908060877680409945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300251 (n + 1) + Int.tmod (A053191 (n + 1)) (n + 2 : ℤ)

end

end A348976.P15908060877680409945

namespace A348976

/-- `A300251(n+1)+A053191(n+1)%(n+2)` -/
def P15908060877680409945.Spec : Prop :=
  ∀ n, P15908060877680409945.a n = A348976 (n + 1)

end A348976

/-! ## A348976.P17935751887374901120

`∑{d}[n+1, A008683(#)*A129283((n+1)/#)]`
-/

namespace A348976.P17935751887374901120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A129283 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A348976.P17935751887374901120

namespace A348976

/-- `∑{d}[n+1, A008683(#)*A129283((n+1)/#)]` -/
def P17935751887374901120.Spec : Prop :=
  ∀ n, P17935751887374901120.a n = A348976 (n + 1)

end A348976

/-! ## A348976.P6491174081677865270

`∑{d}[n+1, A349338(#)*A349434((n+1)/#)]`
-/

namespace A348976.P6491174081677865270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349338 d * A349434 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A348976.P6491174081677865270

namespace A348976

/-- `∑{d}[n+1, A349338(#)*A349434((n+1)/#)]` -/
def P6491174081677865270.Spec : Prop :=
  ∀ n, P6491174081677865270.a n = A348976 (n + 1)

end A348976

/-! ## A348976.P16032728210385893209

`A003968(n+1)+A300251(n+1)-A348971(n+1)`
-/

namespace A348976.P16032728210385893209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003968 (n + 1) + (A300251 (n + 1) - A348971 (n + 1))

end

end A348976.P16032728210385893209

namespace A348976

/-- `A003968(n+1)+A300251(n+1)-A348971(n+1)` -/
def P16032728210385893209.Spec : Prop :=
  ∀ n, P16032728210385893209.a n = A348976 (n + 1)

theorem P16032728210385893209.correct : P16032728210385893209.Spec := by
  intro n
  simp only [A348976, Nat.add_sub_cancel, A348976.P16032728210385893209.a, A348976.P9987790780550882752.a, A000010, A000010.P4673923239450215316.a, A003968, A003968.P10961526323602588276.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A348971, A348971.P11156141318395468406.a, A001615, A001615.P12078511981713404634.a, A003557, A003557.P6364735403900941810.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A167338, A167338.P17492942069736666981.f1, A167338.P17492942069736666981.a, A173557, A173557.P15666735857375843373.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A014963, A014963.P5975177236000282614.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A349394, A349394.P210516795435731064.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A166140, A166140.P17649384582351937107.f1, A166140.P17649384582351937107.a, A166142, A166142.P10122674445425206392.f1, A166142.P10122674445425206392.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A348976

/-!
# A348977: a(n) = gcd(sigma(n), A332993(n)).

The programs for A348977, there is no canonical definition to state claims against.
-/

/-! ## A348977.P10278223635483561749

`A000203(n+1)/A348979(n+1)`
-/

namespace A348977.P10278223635483561749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A348979 (n + 1) : ℚ)

end

end A348977.P10278223635483561749

/-! ## A348977.P8812920227552278924

`A332993(n+1)/A348978(n+1)`
-/

namespace A348977.P8812920227552278924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332993 (n + 1) : ℚ) / (A348978 (n + 1) : ℚ)

end

end A348977.P8812920227552278924

/-! ## A348977.P9442463870436647820

`gcd(A000203(n+1), A332993(n+1))`
-/

namespace A348977.P9442463870436647820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A332993 (n + 1))

end

end A348977.P9442463870436647820

/-! ## A348977.P6407621477863196778

`gcd(∑{d}[n+1, #], A333783(n+1))`
-/

namespace A348977.P6407621477863196778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A333783 (n + 1))

end

end A348977.P6407621477863196778

/-! ## A348977.P7607567915515781766

`Δ[A160664(n)]/A348979(n+1)`
-/

namespace A348977.P7607567915515781766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A348979 (n + 1) : ℚ)

end

end A348977.P7607567915515781766

/-! ## A348977.P4306230535057581866

`gcd(Δ[A160664(n)], A332993(n+1))`
-/

namespace A348977.P4306230535057581866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A332993 (n + 1))

end

end A348977.P4306230535057581866

/-! ## A348977.P4729500565802706003

`gcd(Δ[A330725(n)], A333783(n+1))`
-/

namespace A348977.P4729500565802706003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A333783 (n + 1))

end

end A348977.P4729500565802706003

/-! ## A348977.P1866693529987914348

`gcd(A006022(n+1)+1+n, A143348(n+1))`
-/

namespace A348977.P1866693529987914348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006022 (n + 1) + 1 + (n : ℤ)) (A143348 (n + 1))

end

end A348977.P1866693529987914348

/-! ## A348977.P8952870100624526068

`(A333783(n+1)+A332993(n+1))/A348979(n+1)`
-/

namespace A348977.P8952870100624526068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333783 (n + 1) + A332993 (n + 1) : ℚ) / (A348979 (n + 1) : ℚ)

end

end A348977.P8952870100624526068

/-! ## A348977.P2733209718673615155

`(A333784(n+1)+A332994(n+1))/A348979(n+1)`
-/

namespace A348977.P2733209718673615155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333784 (n + 1) + A332994 (n + 1) : ℚ) / (A348979 (n + 1) : ℚ)

end

end A348977.P2733209718673615155

/-! ## A348977.P7640849178180961682

`(A333791(n+1)+A332994(n+1))/A348978(n+1)`
-/

namespace A348977.P7640849178180961682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333791 (n + 1) + A332994 (n + 1) : ℚ) / (A348978 (n + 1) : ℚ)

end

end A348977.P7640849178180961682

/-! ## A348977.P10701421777106342042

`(A000203(n+1)-A333783(n+1))/A348978(n+1)`
-/

namespace A348977.P10701421777106342042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A333783 (n + 1) : ℚ) / (A348978 (n + 1) : ℚ)

end

end A348977.P10701421777106342042

/-! ## A348977.P4428991253115698627

`gcd(A006022(A285109(n+1)), A143348(n+1))`
-/

namespace A348977.P4428991253115698627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006022 (A285109 (n + 1)).toNat) (A143348 (n + 1))

end

end A348977.P4428991253115698627

/-!
# A348978: Numerator of ratio A332993(n) / sigma(n).

The programs for A348978, there is no canonical definition to state claims against.
-/

/-! ## A348978.P606956241417076387

`A332993(n+1)/A348977(n+1)`
-/

namespace A348978.P606956241417076387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332993 (n + 1) : ℚ) / (A348977 (n + 1) : ℚ)

end

end A348978.P606956241417076387

/-! ## A348978.P13306379573488656633

`A332993(n+1)/gcd(A000203(n+1), A332993(n+1))`
-/

namespace A348978.P13306379573488656633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332993 (n + 1) : ℚ) / (Int.gcd (A000203 (n + 1)) (A332993 (n + 1)) : ℚ)

end

end A348978.P13306379573488656633

/-! ## A348978.P4213317798548436261

`(A006022(n+1)+1+n)/A348977(n+1)`
-/

namespace A348978.P4213317798548436261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006022 (n + 1) + 1 + (n : ℤ) : ℚ) / (A348977 (n + 1) : ℚ)

end

end A348978.P4213317798548436261

/-! ## A348978.P15277957155413455674

`(A333791(n+1)+A332994(n+1))/A348977(n+1)`
-/

namespace A348978.P15277957155413455674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333791 (n + 1) + A332994 (n + 1) : ℚ) / (A348977 (n + 1) : ℚ)

end

end A348978.P15277957155413455674

/-! ## A348978.P7339265494957207226

`(A000203(n+1)-A333783(n+1))/A348977(n+1)`
-/

namespace A348978.P7339265494957207226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A333783 (n + 1) : ℚ) / (A348977 (n + 1) : ℚ)

end

end A348978.P7339265494957207226

/-! ## A348978.P10432069764280220504

`A348979(n+1)-A333783(n+1)/A348977(n+1)`
-/

namespace A348978.P10432069764280220504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348979 (n + 1) : ℚ) - (A333783 (n + 1) : ℚ) / (A348977 (n + 1) : ℚ)

end

end A348978.P10432069764280220504

/-! ## A348978.P1929746522148020279

`A332993(n+1)/A000203(n+1)*A348979(n+1)`
-/

namespace A348978.P1929746522148020279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332993 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A348979 (n + 1) : ℚ)

end

end A348978.P1929746522148020279

/-! ## A348978.P14558879277743417738

`A006022(2*(n+1))/A348977(n+1)`
-/

namespace A348978.P14558879277743417738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006022 (2 * (n + 1)) : ℚ) / (A348977 (n + 1) : ℚ)

end

end A348978.P14558879277743417738

/-!
# A348979: Denominator of ratio A332993(n) / sigma(n).

The programs for A348979, there is no canonical definition to state claims against.
-/

/-! ## A348979.P15532692036909443139

`A000203(n+1)/A348977(n+1)`
-/

namespace A348979.P15532692036909443139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A348977 (n + 1) : ℚ)

end

end A348979.P15532692036909443139

/-! ## A348979.P9160873856125445689

`A000203(n+1)/gcd(A000203(n+1), A332993(n+1))`
-/

namespace A348979.P9160873856125445689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (Int.gcd (A000203 (n + 1)) (A332993 (n + 1)) : ℚ)

end

end A348979.P9160873856125445689

/-! ## A348979.P9194416756182079827

`∑{d}[n+1, #]/gcd(∑{d}[n+1, #], A333783(n+1))`
-/

namespace A348979.P9194416756182079827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (Int.gcd ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) (A333783 (n + 1)) : ℚ)

end

end A348979.P9194416756182079827

/-! ## A348979.P6052884066249219612

`Δ[A160664(n)]/A348977(n+1)`
-/

namespace A348979.P6052884066249219612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A348977 (n + 1) : ℚ)

end

end A348979.P6052884066249219612

/-! ## A348979.P10591373722846092685

`abs(Δ[A330725(n)]/A348977(n+1))`
-/

namespace A348979.P10591373722846092685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n : ℚ) / (A348977 (n + 1) : ℚ)|

end

end A348979.P10591373722846092685

/-! ## A348979.P3983174238810701356

`abs(A143348(n+1)/A348977(n+1))`
-/

namespace A348979.P3983174238810701356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A143348 (n + 1) : ℚ) / (A348977 (n + 1) : ℚ)|

end

end A348979.P3983174238810701356

/-! ## A348979.P6787332959893531044

`sqrt(A072861(n+1))/A348977(n+1)`
-/

namespace A348979.P6787332959893531044
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) / (A348977 (n + 1) : ℝ)

end

end A348979.P6787332959893531044

/-! ## A348979.P13892827439104624126

`(A333783(n+1)+A332993(n+1))/A348977(n+1)`
-/

namespace A348979.P13892827439104624126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333783 (n + 1) + A332993 (n + 1) : ℚ) / (A348977 (n + 1) : ℚ)

end

end A348979.P13892827439104624126

/-! ## A348979.P16380413786832130784

`(A333784(n+1)+A332994(n+1))/A348977(n+1)`
-/

namespace A348979.P16380413786832130784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333784 (n + 1) + A332994 (n + 1) : ℚ) / (A348977 (n + 1) : ℚ)

end

end A348979.P16380413786832130784

/-! ## A348979.P7116010803627608863

`A348978(n+1)+A333783(n+1)/A348977(n+1)`
-/

namespace A348979.P7116010803627608863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348978 (n + 1) : ℚ) + (A333783 (n + 1) : ℚ) / (A348977 (n + 1) : ℚ)

end

end A348979.P7116010803627608863

/-! ## A348979.P9360188464473824848

`A000203(n+1)/A332993(n+1)*A348978(n+1)`
-/

namespace A348979.P9360188464473824848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A332993 (n + 1) : ℚ) * (A348978 (n + 1) : ℚ)

end

end A348979.P9360188464473824848

/-! ## A348979.P8572980202352531599

`A000720(A067161(n+1))/A348977(n+1)`
-/

namespace A348979.P8572980202352531599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000720 (A067161 (n + 1)).toNat : ℚ) / (A348977 (n + 1) : ℚ)

end

end A348979.P8572980202352531599

/-! ## A348979.P8186458493050553965

`A003602(A002659(n+1))/A348977(n+1)`
-/

namespace A348979.P8186458493050553965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003602 (A002659 (n + 1)).toNat : ℚ) / (A348977 (n + 1) : ℚ)

end

end A348979.P8186458493050553965

/-!
# A348980: a(n) = Sum_{d|n} d * A322582(n/d), where A322582(n) = n - A003958(n), and A003958 is fully multiplicative with a(p) = (p-1).

The programs for A348980, the canonical program `A348980.P7651113664669267661` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348980 has offset 1).

The definition of A348980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348980.P10011471114815597672

`A038040(n+1)-A349130(n+1)`
-/

namespace A348980.P10011471114815597672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) - A349130 (n + 1)

end

end A348980.P10011471114815597672

namespace A348980

/-- `A038040(n+1)-A349130(n+1)` -/
def P10011471114815597672.Spec : Prop :=
  ∀ n, P10011471114815597672.a n = A348980 (n + 1)

theorem P10011471114815597672.correct : P10011471114815597672.Spec := by
  intro n
  simp only [A348980, Nat.add_sub_cancel, A348980.P10011471114815597672.a, A348980.P7651113664669267661.f1, A348980.P7651113664669267661.a, A038040, A038040.P16512896840577774730.a, A322582, A322582.P8560399753878851377.a, A349130, A349130.P16374043146752204545.a, A000005, A000005.P16091521709108585461.a, A003958, A003958.P196685604458257440.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A120007, A120007.P17212889191585270917.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348980

/-! ## A348980.P5519611857969239288

`∑{d}[n+1, A348981(#)]`
-/

namespace A348980.P5519611857969239288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A348981 d

end

end A348980.P5519611857969239288

namespace A348980

/-- `∑{d}[n+1, A348981(#)]` -/
def P5519611857969239288.Spec : Prop :=
  ∀ n, P5519611857969239288.a n = A348980 (n + 1)

end A348980

/-! ## A348980.P7651113664669267661

`∑{d}[n+1, #*A322582((n+1)/#)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A348980

/-- `∑{d}[n+1, #*A322582((n+1)/#)]` -/
def P7651113664669267661.Spec : Prop :=
  ∀ n, P7651113664669267661.a n = A348980 (n + 1)

theorem P7651113664669267661.correct : P7651113664669267661.Spec := by
  intro n
  simp only [A348980, Nat.add_sub_cancel]

end A348980

/-! ## A348980.P3053625040404509589

`∑{d}[n+1, A008836(#)*A348982((n+1)/#)]`
-/

namespace A348980.P3053625040404509589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A348982 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A348980.P3053625040404509589

namespace A348980

/-- `∑{d}[n+1, A008836(#)*A348982((n+1)/#)]` -/
def P3053625040404509589.Spec : Prop :=
  ∀ n, P3053625040404509589.a n = A348980 (n + 1)

end A348980

/-! ## A348980.P17403205084847561968

`∑{d}[n+1, A055615(#)*A348983((n+1)/#)]`
-/

namespace A348980.P17403205084847561968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A348983 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A348980.P17403205084847561968

namespace A348980

/-- `∑{d}[n+1, A055615(#)*A348983((n+1)/#)]` -/
def P17403205084847561968.Spec : Prop :=
  ∀ n, P17403205084847561968.a n = A348980 (n + 1)

end A348980

/-! ## A348980.P9865564039723738977

`A349170(n+1)-(A349139(n+1)+A349129(n+1))`
-/

namespace A348980.P9865564039723738977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349170 (n + 1) - (A349139 (n + 1) + A349129 (n + 1))

end

end A348980.P9865564039723738977

namespace A348980

/-- `A349170(n+1)-(A349139(n+1)+A349129(n+1))` -/
def P9865564039723738977.Spec : Prop :=
  ∀ n, P9865564039723738977.a n = A348980 (n + 1)

end A348980

/-! ## A348980.P7052172138149769431

`A349170(n+1)-(A349140(n+1)+A349130(n+1))`
-/

namespace A348980.P7052172138149769431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349170 (n + 1) - (A349140 (n + 1) + A349130 (n + 1))

end

end A348980.P7052172138149769431

namespace A348980

/-- `A349170(n+1)-(A349140(n+1)+A349130(n+1))` -/
def P7052172138149769431.Spec : Prop :=
  ∀ n, P7052172138149769431.a n = A348980 (n + 1)

theorem P7052172138149769431.correct : P7052172138149769431.Spec := by
  intro n
  simp only [A348980, Nat.add_sub_cancel, A348980.P7052172138149769431.a, A348980.P7651113664669267661.f1, A348980.P7651113664669267661.a, A322582, A322582.P8560399753878851377.a, A349130, A349130.P16374043146752204545.a, A349140, A349140.P14032987347697036060.f1, A349140.P14032987347697036060.a, A349170, A349170.P6347552032259399460.a, A003958, A003958.P196685604458257440.a, A038040, A038040.P16512896840577774730.a, A348507, A348507.P8468116905144779811.a, A000005, A000005.P16091521709108585461.a, A003959, A003959.P10480308691352807012.f1, A003959.P10480308691352807012.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A003968, A003968.P10961526323602588276.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A120007, A120007.P17212889191585270917.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348980

/-!
# A348981: a(n) = Sum_{d|n} phi(n/d) * A322582(d), where A322582(n) = n - A003958(n), and A003958 is fully multiplicative with a(p) = (p-1).

The programs for A348981, the canonical program `A348981.P12574129807038690460` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348981 has offset 1).

The definition of A348981 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348981.P16476763877953404374

`A018804(n+1)-A349131(n+1)`
-/

namespace A348981.P16476763877953404374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) - A349131 (n + 1)

end

end A348981.P16476763877953404374

namespace A348981

/-- `A018804(n+1)-A349131(n+1)` -/
def P16476763877953404374.Spec : Prop :=
  ∀ n, P16476763877953404374.a n = A348981 (n + 1)

theorem P16476763877953404374.correct : P16476763877953404374.Spec := by
  intro n
  simp only [A348981, Nat.add_sub_cancel, A348981.P16476763877953404374.a, A348981.P12574129807038690460.f1, A348981.P12574129807038690460.a, A008683, A008683.P18254306604665478110.a, A018804, A018804.P15177010680010264719.f1, A018804.P15177010680010264719.a, A348980, A348980.P7651113664669267661.f1, A348980.P7651113664669267661.a, A349131, A349131.P8964480584891997283.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A322582, A322582.P8560399753878851377.a, A001065, A001065.P4097147489331274860.a, A003958, A003958.P196685604458257440.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005940, A005940.P5942875842694471387.a, A008966, A008966.P884693903657889754.a, A010060, A010060.P3080921269106500717.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A247343, A247343.P16054937885260863727.f1, A247343.P16054937885260863727.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A348981

/-! ## A348981.P15537009504574232442

`Δ[A209981(n)/32]-A349131(n+1)`
-/

namespace A348981.P15537009504574232442
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209981 n : ℚ) / 32

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A349131 (n + 1) : ℚ)

end

end A348981.P15537009504574232442

namespace A348981

/-- `Δ[A209981(n)/32]-A349131(n+1)` -/
def P15537009504574232442.Spec : Prop :=
  ∀ n, P15537009504574232442.a n = (A348981 (n + 1) : ℚ)

end A348981

/-! ## A348981.P8325140113687369237

`∑[Δ[A209295(n)]-1]-A349131(n+1)`
-/

namespace A348981.P8325140113687369237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209295 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A349131 (n + 1)

end

end A348981.P8325140113687369237

namespace A348981

/-- `∑[Δ[A209295(n)]-1]-A349131(n+1)` -/
def P8325140113687369237.Spec : Prop :=
  ∀ n, P8325140113687369237.a n = A348981 (n + 1)

end A348981

/-! ## A348981.P4351516111828879643

`A006579(n+1)+1+n-A349131(n+1)`
-/

namespace A348981.P4351516111828879643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006579 (n + 1) + 1 + (n : ℤ) - A349131 (n + 1)

end

end A348981.P4351516111828879643

namespace A348981

/-- `A006579(n+1)+1+n-A349131(n+1)` -/
def P4351516111828879643.Spec : Prop :=
  ∀ n, P4351516111828879643.a n = A348981 (n + 1)

theorem P4351516111828879643.correct : P4351516111828879643.Spec := by
  intro n
  simp only [A348981, Nat.add_sub_cancel, A348981.P4351516111828879643.a, A348981.P12574129807038690460.f1, A348981.P12574129807038690460.a, A006579, A006579.P17134374714227435969.a, A008683, A008683.P18254306604665478110.a, A348980, A348980.P7651113664669267661.f1, A348980.P7651113664669267661.a, A349131, A349131.P8964480584891997283.a, A018804, A018804.P15177010680010264719.f1, A018804.P15177010680010264719.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A322582, A322582.P8560399753878851377.a, A003958, A003958.P196685604458257440.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A001065, A001065.P4097147489331274860.a, A005940, A005940.P5942875842694471387.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, A008966, A008966.P884693903657889754.a, A010060, A010060.P3080921269106500717.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A348981

/-! ## A348981.P14167212745628849083

`A209295(n+1)-(n+1)-A349131(n+1)`
-/

namespace A348981.P14167212745628849083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209295 (n + 1) - (n + 1 : ℤ) - A349131 (n + 1)

end

end A348981.P14167212745628849083

namespace A348981

/-- `A209295(n+1)-(n+1)-A349131(n+1)` -/
def P14167212745628849083.Spec : Prop :=
  ∀ n, P14167212745628849083.a n = A348981 (n + 1)

end A348981

/-! ## A348981.P156538209563570506

`A268631(n+1)+Δ[n²]-A349131(n+1)`
-/

namespace A348981.P156538209563570506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268631 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - A349131 (n + 1)

end

end A348981.P156538209563570506

namespace A348981

/-- `A268631(n+1)+Δ[n²]-A349131(n+1)` -/
def P156538209563570506.Spec : Prop :=
  ∀ n, P156538209563570506.a n = A348981 (n + 1)

theorem P156538209563570506.correct : P156538209563570506.Spec := by
  intro n
  simp only [A348981, Nat.add_sub_cancel, A348981.P156538209563570506.f1, A348981.P156538209563570506.a, A348981.P12574129807038690460.f1, A348981.P12574129807038690460.a, A008683, A008683.P18254306604665478110.a, A268631, A268631.P11656545596258421338.a, A348980, A348980.P7651113664669267661.f1, A348980.P7651113664669267661.a, A349131, A349131.P8964480584891997283.a, A006579, A006579.P17134374714227435969.a, A018804, A018804.P15177010680010264719.f1, A018804.P15177010680010264719.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A322582, A322582.P8560399753878851377.a, A003958, A003958.P196685604458257440.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A001065, A001065.P4097147489331274860.a, A005940, A005940.P5942875842694471387.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, A008966, A008966.P884693903657889754.a, A010060, A010060.P3080921269106500717.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A348981

/-! ## A348981.P640234421073345287

`∑{d}[n+1, A000010(#)*A322582((n+1)/#)]`
-/

namespace A348981.P640234421073345287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A322582 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A348981.P640234421073345287

namespace A348981

/-- `∑{d}[n+1, A000010(#)*A322582((n+1)/#)]` -/
def P640234421073345287.Spec : Prop :=
  ∀ n, P640234421073345287.a n = A348981 (n + 1)

end A348981

/-! ## A348981.P12574129807038690460

`∑{d}[n+1, A008683(#)*A348980((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A348981

/-- `∑{d}[n+1, A008683(#)*A348980((n+1)/#)]` -/
def P12574129807038690460.Spec : Prop :=
  ∀ n, P12574129807038690460.a n = A348981 (n + 1)

theorem P12574129807038690460.correct : P12574129807038690460.Spec := by
  intro n
  simp only [A348981, Nat.add_sub_cancel]

end A348981

/-! ## A348981.P394970985029802263

`∑{d}[n+1, A046692(#)*A348983((n+1)/#)]`
-/

namespace A348981.P394970985029802263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A348983 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A348981.P394970985029802263

namespace A348981

/-- `∑{d}[n+1, A046692(#)*A348983((n+1)/#)]` -/
def P394970985029802263.Spec : Prop :=
  ∀ n, P394970985029802263.a n = A348981 (n + 1)

end A348981

/-! ## A348981.P14486265515763799849

`∑{d}[n+1, A158522(#)*A348982((n+1)/#)]`
-/

namespace A348981.P14486265515763799849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A348982 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A348981.P14486265515763799849

namespace A348981

/-- `∑{d}[n+1, A158522(#)*A348982((n+1)/#)]` -/
def P14486265515763799849.Spec : Prop :=
  ∀ n, P14486265515763799849.a n = A348981 (n + 1)

end A348981

/-! ## A348981.P653221506863132968

`A349171(n+1)-(A349141(n+1)+A349131(n+1))`
-/

namespace A348981.P653221506863132968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349171 (n + 1) - (A349141 (n + 1) + A349131 (n + 1))

end

end A348981.P653221506863132968

namespace A348981

/-- `A349171(n+1)-(A349141(n+1)+A349131(n+1))` -/
def P653221506863132968.Spec : Prop :=
  ∀ n, P653221506863132968.a n = A348981 (n + 1)

theorem P653221506863132968.correct : P653221506863132968.Spec := by
  intro n
  simp only [A348981, Nat.add_sub_cancel, A348981.P653221506863132968.a, A348981.P12574129807038690460.f1, A348981.P12574129807038690460.a, A008683, A008683.P18254306604665478110.a, A348980, A348980.P7651113664669267661.f1, A348980.P7651113664669267661.a, A349131, A349131.P8964480584891997283.a, A349141, A349141.P2326115559744657206.f1, A349141.P2326115559744657206.a, A349171, A349171.P4420363583333488221.a, A018804, A018804.P15177010680010264719.f1, A018804.P15177010680010264719.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A322582, A322582.P8560399753878851377.a, A348971, A348971.P11156141318395468406.a, A000010, A000010.P4673923239450215316.a, A003958, A003958.P196685604458257440.a, A003968, A003968.P10961526323602588276.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A001065, A001065.P4097147489331274860.a, A001615, A001615.P12078511981713404634.a, A003557, A003557.P6364735403900941810.a, A005940, A005940.P5942875842694471387.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, A008966, A008966.P884693903657889754.a, A010060, A010060.P3080921269106500717.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A167338, A167338.P17492942069736666981.f1, A167338.P17492942069736666981.a, A173557, A173557.P15666735857375843373.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A348981

/-!
# A348982: a(n) = Sum_{d|n} psi(n/d) * A322582(d), where psi is Dedekind psi (A001615), A322582(n) = n - A003958(n), and A003958 is fully multiplicative with a(p) = (p-1).

The programs for A348982, the canonical program `A348982.P2529502468728272317` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348982 has offset 1).

The definition of A348982 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348982.P11925930229995224239

`A327251(n+1)-A349132(n+1)`
-/

namespace A348982.P11925930229995224239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327251 (n + 1) - A349132 (n + 1)

end

end A348982.P11925930229995224239

namespace A348982

/-- `A327251(n+1)-A349132(n+1)` -/
def P11925930229995224239.Spec : Prop :=
  ∀ n, P11925930229995224239.a n = A348982 (n + 1)

theorem P11925930229995224239.correct : P11925930229995224239.Spec := by
  intro n
  simp only [A348982, Nat.add_sub_cancel, A348982.P11925930229995224239.a, A348982.P2529502468728272317.f1, A348982.P2529502468728272317.a, A001615, A001615.P12078511981713404634.a, A322582, A322582.P8560399753878851377.a, A327251, A327251.P13631091954083186129.f1, A327251.P13631091954083186129.a, A349132, A349132.P869711925521774844.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003958, A003958.P196685604458257440.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A322577, A322577.P2466038700097355167.f1, A322577.P2466038700097355167.a, A063659, A063659.P17976112420004081821.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A063658, A063658.P15417569516115138274.f1, A063658.P15417569516115138274.a, A120007, A120007.P17212889191585270917.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348982

/-! ## A348982.P2529502468728272317

`∑{d}[n+1, A001615(#)*A322582((n+1)/#)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A348982

/-- `∑{d}[n+1, A001615(#)*A322582((n+1)/#)]` -/
def P2529502468728272317.Spec : Prop :=
  ∀ n, P2529502468728272317.a n = A348982 (n + 1)

theorem P2529502468728272317.correct : P2529502468728272317.Spec := by
  intro n
  simp only [A348982, Nat.add_sub_cancel]

end A348982

/-! ## A348982.P12132534447976322005

`∑{d}[n+1, A008966(#)*A348980((n+1)/#)]`
-/

namespace A348982.P12132534447976322005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A348980 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A348982.P12132534447976322005

namespace A348982

/-- `∑{d}[n+1, A008966(#)*A348980((n+1)/#)]` -/
def P12132534447976322005.Spec : Prop :=
  ∀ n, P12132534447976322005.a n = A348982 (n + 1)

end A348982

/-! ## A348982.P18085015728826135697

`∑{d}[n+1, A034444(#)*A348981((n+1)/#)]`
-/

namespace A348982.P18085015728826135697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A348981 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A348982.P18085015728826135697

namespace A348982

/-- `∑{d}[n+1, A034444(#)*A348981((n+1)/#)]` -/
def P18085015728826135697.Spec : Prop :=
  ∀ n, P18085015728826135697.a n = A348982 (n + 1)

end A348982

/-! ## A348982.P13899031078466745015

`∑{d}[n+1, A328729(#)*A348983((n+1)/#)]`
-/

namespace A348982.P13899031078466745015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328729 d * A348983 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A348982.P13899031078466745015

namespace A348982

/-- `∑{d}[n+1, A328729(#)*A348983((n+1)/#)]` -/
def P13899031078466745015.Spec : Prop :=
  ∀ n, P13899031078466745015.a n = A348982 (n + 1)

end A348982

/-! ## A348982.P12186756328817959518

`A349172(n+1)-(A349142(n+1)+A349132(n+1))`
-/

namespace A348982.P12186756328817959518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349172 (n + 1) - (A349142 (n + 1) + A349132 (n + 1))

end

end A348982.P12186756328817959518

namespace A348982

/-- `A349172(n+1)-(A349142(n+1)+A349132(n+1))` -/
def P12186756328817959518.Spec : Prop :=
  ∀ n, P12186756328817959518.a n = A348982 (n + 1)

theorem P12186756328817959518.correct : P12186756328817959518.Spec := by
  intro n
  simp only [A348982, Nat.add_sub_cancel, A348982.P12186756328817959518.a, A348982.P2529502468728272317.f1, A348982.P2529502468728272317.a, A001615, A001615.P12078511981713404634.a, A322582, A322582.P8560399753878851377.a, A349132, A349132.P869711925521774844.a, A349142, A349142.P9302978881308882123.f1, A349142.P9302978881308882123.a, A349172, A349172.P9409775987477653705.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003958, A003958.P196685604458257440.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A327251, A327251.P13631091954083186129.f1, A327251.P13631091954083186129.a, A348507, A348507.P8468116905144779811.a, A003959, A003959.P10480308691352807012.f1, A003959.P10480308691352807012.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A322577, A322577.P2466038700097355167.f1, A322577.P2466038700097355167.a, A003968, A003968.P10961526323602588276.a, A063659, A063659.P17976112420004081821.a, A120007, A120007.P17212889191585270917.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348982

/-!
# A348983: a(n) = Sum_{d|n} A038040(d) * A322582(n/d), where A038040(n) = n*d(n), A322582(n) = n - A003958(n), and A003958 is fully multiplicative with a(p) = (p-1).

The programs for A348983, the canonical program `A348983.P13130046007357734622` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348983 has offset 1).

The definition of A348983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348983.P13130046007357734622

`∑{d}[n+1, #*A348980((n+1)/#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A348983

/-- `∑{d}[n+1, #*A348980((n+1)/#)]` -/
def P13130046007357734622.Spec : Prop :=
  ∀ n, P13130046007357734622.a n = A348983 (n + 1)

theorem P13130046007357734622.correct : P13130046007357734622.Spec := by
  intro n
  simp only [A348983, Nat.add_sub_cancel]

end A348983

/-! ## A348983.P8768533226890208014

`∑{d}[n+1, A000203(#)*A348981((n+1)/#)]`
-/

namespace A348983.P8768533226890208014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A348981 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A348983.P8768533226890208014

namespace A348983

/-- `∑{d}[n+1, A000203(#)*A348981((n+1)/#)]` -/
def P8768533226890208014.Spec : Prop :=
  ∀ n, P8768533226890208014.a n = A348983 (n + 1)

end A348983

/-! ## A348983.P369901415120582114

`∑{d}[n+1, A038040(#)*A322582((n+1)/#)]`
-/

namespace A348983.P369901415120582114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038040 d * A322582 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A348983.P369901415120582114

namespace A348983

/-- `∑{d}[n+1, A038040(#)*A322582((n+1)/#)]` -/
def P369901415120582114.Spec : Prop :=
  ∀ n, P369901415120582114.a n = A348983 (n + 1)

end A348983

/-! ## A348983.P9684505624203060798

`∑{d}[n+1, A206369(#)*A348982((n+1)/#)]`
-/

namespace A348983.P9684505624203060798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A206369 d * A348982 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A348983.P9684505624203060798

namespace A348983

/-- `∑{d}[n+1, A206369(#)*A348982((n+1)/#)]` -/
def P9684505624203060798.Spec : Prop :=
  ∀ n, P9684505624203060798.a n = A348983 (n + 1)

end A348983

/-!
# A348984: a(n) = gcd(sigma(n), A325973(n)), where A325973 is the arithmetic mean of {sum of squarefree divisors} and {sum of unitary divisors}.

The programs for A348984, the canonical program `A348984.P8034432277354798354` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348984 has offset 1).

The definition of A348984 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325973, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348984.P1667696245684693176

`A000203(n+1)/A348985(n+1)`
-/

namespace A348984.P1667696245684693176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A348985 (n + 1) : ℚ)

end

end A348984.P1667696245684693176

namespace A348984

/-- `A000203(n+1)/A348985(n+1)` -/
def P1667696245684693176.Spec : Prop :=
  ∀ n, P1667696245684693176.a n = (A348984 (n + 1) : ℚ)

end A348984

/-! ## A348984.P6996869251808947074

`A325973(n+1)/A348986(n+1)`
-/

namespace A348984.P6996869251808947074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325973 (n + 1) : ℚ) / (A348986 (n + 1) : ℚ)

end

end A348984.P6996869251808947074

namespace A348984

/-- `A325973(n+1)/A348986(n+1)` -/
def P6996869251808947074.Spec : Prop :=
  ∀ n, P6996869251808947074.a n = (A348984 (n + 1) : ℚ)

end A348984

/-! ## A348984.P8034432277354798354

`gcd(A000203(n+1), A325973(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A348984

/-- `gcd(A000203(n+1), A325973(n+1))` -/
def P8034432277354798354.Spec : Prop :=
  ∀ n, (P8034432277354798354.a n : ℤ) = A348984 (n + 1)

theorem P8034432277354798354.correct : P8034432277354798354.Spec := by
  intro n
  simp only [A348984, Nat.add_sub_cancel]

end A348984

/-! ## A348984.P3556035340743222132

`A074400(n+1)/(2*A348985(n+1))`
-/

namespace A348984.P3556035340743222132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / (2 * A348985 (n + 1) : ℚ)

end

end A348984.P3556035340743222132

namespace A348984

/-- `A074400(n+1)/(2*A348985(n+1))` -/
def P3556035340743222132.Spec : Prop :=
  ∀ n, P3556035340743222132.a n = (A348984 (n + 1) : ℚ)

end A348984

/-! ## A348984.P14418896861938357615

`(A048146(n+1)+A034448(n+1))/A348985(n+1)`
-/

namespace A348984.P14418896861938357615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048146 (n + 1) + A034448 (n + 1) : ℚ) / (A348985 (n + 1) : ℚ)

end

end A348984.P14418896861938357615

namespace A348984

/-- `(A048146(n+1)+A034448(n+1))/A348985(n+1)` -/
def P14418896861938357615.Spec : Prop :=
  ∀ n, P14418896861938357615.a n = (A348984 (n + 1) : ℚ)

end A348984

/-! ## A348984.P16479600584962268718

`(A162296(n+1)+A048250(n+1))/A348985(n+1)`
-/

namespace A348984.P16479600584962268718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162296 (n + 1) + A048250 (n + 1) : ℚ) / (A348985 (n + 1) : ℚ)

end

end A348984.P16479600584962268718

namespace A348984

/-- `(A162296(n+1)+A048250(n+1))/A348985(n+1)` -/
def P16479600584962268718.Spec : Prop :=
  ∀ n, P16479600584962268718.a n = (A348984 (n + 1) : ℚ)

end A348984

/-! ## A348984.P6330502472492805735

`(A003959(n+1)-A348029(n+1))/A348985(n+1)`
-/

namespace A348984.P6330502472492805735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) - A348029 (n + 1) : ℚ) / (A348985 (n + 1) : ℚ)

end

end A348984.P6330502472492805735

namespace A348984

/-- `(A003959(n+1)-A348029(n+1))/A348985(n+1)` -/
def P6330502472492805735.Spec : Prop :=
  ∀ n, P6330502472492805735.a n = (A348984 (n + 1) : ℚ)

end A348984

/-! ## A348984.P996859535837271413

`A348503(n+1)*A348504(n+1)/A348985(n+1)`
-/

namespace A348984.P996859535837271413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348503 (n + 1) * A348504 (n + 1) : ℚ) / (A348985 (n + 1) : ℚ)

end

end A348984.P996859535837271413

namespace A348984

/-- `A348503(n+1)*A348504(n+1)/A348985(n+1)` -/
def P996859535837271413.Spec : Prop :=
  ∀ n, P996859535837271413.a n = (A348984 (n + 1) : ℚ)

end A348984

/-! ## A348984.P14128063330420655716

`A348946(n+1)*A348948(n+1)/A348985(n+1)`
-/

namespace A348984.P14128063330420655716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348946 (n + 1) * A348948 (n + 1) : ℚ) / (A348985 (n + 1) : ℚ)

end

end A348984.P14128063330420655716

namespace A348984

/-- `A348946(n+1)*A348948(n+1)/A348985(n+1)` -/
def P14128063330420655716.Spec : Prop :=
  ∀ n, P14128063330420655716.a n = (A348984 (n + 1) : ℚ)

end A348984

/-! ## A348984.P1829731965838360859

`A004526(A074400(n+1)/A348985(n+1))`
-/

namespace A348984.P1829731965838360859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / (A348985 (n + 1) : ℚ))).toNat

end

end A348984.P1829731965838360859

namespace A348984

/-- `A004526(A074400(n+1)/A348985(n+1))` -/
def P1829731965838360859.Spec : Prop :=
  ∀ n, P1829731965838360859.a n = A348984 (n + 1)

end A348984

/-!
# A348985: Numerator of ratio sigma(n) / A325973(n), where A325973 is the arithmetic mean of {sum of squarefree divisors} and {sum of unitary divisors}.

The programs for A348985, the canonical program `A348985.P13379498630196334524` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348985 has offset 1).

The definition of A348985 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348984, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348985.P13379498630196334524

`A000203(n+1)/A348984(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A348985

/-- `A000203(n+1)/A348984(n+1)` -/
def P13379498630196334524.Spec : Prop :=
  ∀ n, P13379498630196334524.a n = (A348985 (n + 1) : ℚ)

end A348985

/-! ## A348985.P2823396828257914860

`(A048146(n+1)+A034448(n+1))/A348984(n+1)`
-/

namespace A348985.P2823396828257914860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048146 (n + 1) + A034448 (n + 1) : ℚ) / (A348984 (n + 1) : ℚ)

end

end A348985.P2823396828257914860

namespace A348985

/-- `(A048146(n+1)+A034448(n+1))/A348984(n+1)` -/
def P2823396828257914860.Spec : Prop :=
  ∀ n, P2823396828257914860.a n = (A348985 (n + 1) : ℚ)

end A348985

/-! ## A348985.P8142710960863726915

`(A162296(n+1)+A048250(n+1))/A348984(n+1)`
-/

namespace A348985.P8142710960863726915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162296 (n + 1) + A048250 (n + 1) : ℚ) / (A348984 (n + 1) : ℚ)

end

end A348985.P8142710960863726915

namespace A348985

/-- `(A162296(n+1)+A048250(n+1))/A348984(n+1)` -/
def P8142710960863726915.Spec : Prop :=
  ∀ n, P8142710960863726915.a n = (A348985 (n + 1) : ℚ)

end A348985

/-! ## A348985.P4126870708172823278

`(A325974(n+1)+A325973(n+1))/A348984(n+1)`
-/

namespace A348985.P4126870708172823278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325974 (n + 1) + A325973 (n + 1) : ℚ) / (A348984 (n + 1) : ℚ)

end

end A348985.P4126870708172823278

namespace A348985

/-- `(A325974(n+1)+A325973(n+1))/A348984(n+1)` -/
def P4126870708172823278.Spec : Prop :=
  ∀ n, P4126870708172823278.a n = (A348985 (n + 1) : ℚ)

end A348985

/-! ## A348985.P16908877529017099796

`A348986(n+1)+A325974(n+1)/A348984(n+1)`
-/

namespace A348985.P16908877529017099796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348986 (n + 1) : ℚ) + (A325974 (n + 1) : ℚ) / (A348984 (n + 1) : ℚ)

end

end A348985.P16908877529017099796

namespace A348985

/-- `A348986(n+1)+A325974(n+1)/A348984(n+1)` -/
def P16908877529017099796.Spec : Prop :=
  ∀ n, P16908877529017099796.a n = (A348985 (n + 1) : ℚ)

end A348985

/-! ## A348985.P7091217028528935000

`(A348944(n+1)-A348945(n+1))/A348984(n+1)`
-/

namespace A348985.P7091217028528935000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348944 (n + 1) - A348945 (n + 1) : ℚ) / (A348984 (n + 1) : ℚ)

end

end A348985.P7091217028528935000

namespace A348985

/-- `(A348944(n+1)-A348945(n+1))/A348984(n+1)` -/
def P7091217028528935000.Spec : Prop :=
  ∀ n, P7091217028528935000.a n = (A348985 (n + 1) : ℚ)

end A348985

/-! ## A348985.P3023451491189401440

`A000203(n+1)/A325973(n+1)*A348986(n+1)`
-/

namespace A348985.P3023451491189401440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A325973 (n + 1) : ℚ) * (A348986 (n + 1) : ℚ)

end

end A348985.P3023451491189401440

namespace A348985

/-- `A000203(n+1)/A325973(n+1)*A348986(n+1)` -/
def P3023451491189401440.Spec : Prop :=
  ∀ n, P3023451491189401440.a n = (A348985 (n + 1) : ℚ)

end A348985

/-! ## A348985.P17320772224725736784

`A348946(n+1)*A348948(n+1)/A348984(n+1)`
-/

namespace A348985.P17320772224725736784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348946 (n + 1) * A348948 (n + 1) : ℚ) / (A348984 (n + 1) : ℚ)

end

end A348985.P17320772224725736784

namespace A348985

/-- `A348946(n+1)*A348948(n+1)/A348984(n+1)` -/
def P17320772224725736784.Spec : Prop :=
  ∀ n, P17320772224725736784.a n = (A348985 (n + 1) : ℚ)

end A348985

/-!
# A348986: Denominator of ratio sigma(n) / A325973(n), where A325973 is the arithmetic mean of {sum of squarefree divisors} and {sum of unitary divisors}.

The programs for A348986, the canonical program `A348986.P14080058604187377946` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348986 has offset 1).

The definition of A348986 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325973, A348984, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348986.P14080058604187377946

`A325973(n+1)/A348984(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A348986

/-- `A325973(n+1)/A348984(n+1)` -/
def P14080058604187377946.Spec : Prop :=
  ∀ n, P14080058604187377946.a n = (A348986 (n + 1) : ℚ)

end A348986

/-! ## A348986.P395471853416804583

`A325973(n+1)/gcd(A000203(n+1), A325973(n+1))`
-/

namespace A348986.P395471853416804583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325973 (n + 1) : ℚ) / (Int.gcd (A000203 (n + 1)) (A325973 (n + 1)) : ℚ)

end

end A348986.P395471853416804583

namespace A348986

/-- `A325973(n+1)/gcd(A000203(n+1), A325973(n+1))` -/
def P395471853416804583.Spec : Prop :=
  ∀ n, P395471853416804583.a n = (A348986 (n + 1) : ℚ)

end A348986

/-! ## A348986.P10140688725297492099

`(A000203(n+1)-A325974(n+1))/A348984(n+1)`
-/

namespace A348986.P10140688725297492099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A325974 (n + 1) : ℚ) / (A348984 (n + 1) : ℚ)

end

end A348986.P10140688725297492099

namespace A348986

/-- `(A000203(n+1)-A325974(n+1))/A348984(n+1)` -/
def P10140688725297492099.Spec : Prop :=
  ∀ n, P10140688725297492099.a n = (A348986 (n + 1) : ℚ)

end A348986

/-! ## A348986.P9627123273588643212

`A348985(n+1)-A325974(n+1)/A348984(n+1)`
-/

namespace A348986.P9627123273588643212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348985 (n + 1) : ℚ) - (A325974 (n + 1) : ℚ) / (A348984 (n + 1) : ℚ)

end

end A348986.P9627123273588643212

namespace A348986

/-- `A348985(n+1)-A325974(n+1)/A348984(n+1)` -/
def P9627123273588643212.Spec : Prop :=
  ∀ n, P9627123273588643212.a n = (A348986 (n + 1) : ℚ)

end A348986

/-! ## A348986.P5758655434235168904

`A325973(n+1)/A000203(n+1)*A348985(n+1)`
-/

namespace A348986.P5758655434235168904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325973 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A348985 (n + 1) : ℚ)

end

end A348986.P5758655434235168904

namespace A348986

/-- `A325973(n+1)/A000203(n+1)*A348985(n+1)` -/
def P5758655434235168904.Spec : Prop :=
  ∀ n, P5758655434235168904.a n = (A348986 (n + 1) : ℚ)

end A348986

/-!
# A348987: a(n) = gcd(sigma(n), A332994(n)).

The programs for A348987, the canonical program `A348987.P11263144025970980905` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348987 has offset 1).

The definition of A348987 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348989, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348987.P11263144025970980905

`A000203(n+1)/A348989(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A348987

/-- `A000203(n+1)/A348989(n+1)` -/
def P11263144025970980905.Spec : Prop :=
  ∀ n, P11263144025970980905.a n = (A348987 (n + 1) : ℚ)

end A348987

/-! ## A348987.P6074189298832527709

`A332994(n+1)/A348988(n+1)`
-/

namespace A348987.P6074189298832527709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332994 (n + 1) : ℚ) / (A348988 (n + 1) : ℚ)

end

end A348987.P6074189298832527709

namespace A348987

/-- `A332994(n+1)/A348988(n+1)` -/
def P6074189298832527709.Spec : Prop :=
  ∀ n, P6074189298832527709.a n = (A348987 (n + 1) : ℚ)

end A348987

/-! ## A348987.P12412784051833771184

`gcd(A000203(n+1), A332994(n+1))`
-/

namespace A348987.P12412784051833771184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A332994 (n + 1))

end

end A348987.P12412784051833771184

namespace A348987

/-- `gcd(A000203(n+1), A332994(n+1))` -/
def P12412784051833771184.Spec : Prop :=
  ∀ n, (P12412784051833771184.a n : ℤ) = A348987 (n + 1)

end A348987

/-! ## A348987.P1984823674174473313

`gcd(∑{d}[n+1, #], A333784(n+1))`
-/

namespace A348987.P1984823674174473313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A333784 (n + 1))

end

end A348987.P1984823674174473313

namespace A348987

/-- `gcd(∑{d}[n+1, #], A333784(n+1))` -/
def P1984823674174473313.Spec : Prop :=
  ∀ n, (P1984823674174473313.a n : ℤ) = A348987 (n + 1)

end A348987

/-! ## A348987.P13094134067729077591

`gcd(Δ[A160664(n)], A332994(n+1))`
-/

namespace A348987.P13094134067729077591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A332994 (n + 1))

end

end A348987.P13094134067729077591

namespace A348987

/-- `gcd(Δ[A160664(n)], A332994(n+1))` -/
def P13094134067729077591.Spec : Prop :=
  ∀ n, (P13094134067729077591.a n : ℤ) = A348987 (n + 1)

end A348987

/-! ## A348987.P1779896153335825199

`gcd(Δ[A330725(n)], A333784(n+1))`
-/

namespace A348987.P1779896153335825199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A333784 (n + 1))

end

end A348987.P1779896153335825199

namespace A348987

/-- `gcd(Δ[A330725(n)], A333784(n+1))` -/
def P1779896153335825199.Spec : Prop :=
  ∀ n, (P1779896153335825199.a n : ℤ) = A348987 (n + 1)

end A348987

/-! ## A348987.P11737691331343873644

`gcd(A322382(n+1)+1+n, A009278(n+1))`
-/

namespace A348987.P11737691331343873644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A322382 (n + 1) + 1 + (n : ℤ)) (A009278 (n + 1))

end

end A348987.P11737691331343873644

namespace A348987

/-- `gcd(A322382(n+1)+1+n, A009278(n+1))` -/
def P11737691331343873644.Spec : Prop :=
  ∀ n, (P11737691331343873644.a n : ℤ) = A348987 (n + 1)

end A348987

/-! ## A348987.P16366579370513563711

`gcd(A009278(n+1), A332994(A000027(n+1)))`
-/

namespace A348987.P16366579370513563711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009278 (n + 1)) (A332994 (A000027 (n + 1)).toNat)

end

end A348987.P16366579370513563711

namespace A348987

/-- `gcd(A009278(n+1), A332994(A000027(n+1)))` -/
def P16366579370513563711.Spec : Prop :=
  ∀ n, (P16366579370513563711.a n : ℤ) = A348987 (n + 1)

end A348987

/-! ## A348987.P6758536360106431740

`gcd(A000027(A332994(n+1)), A074400(n+1))`
-/

namespace A348987.P6758536360106431740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (A332994 (n + 1)).toNat) (A074400 (n + 1))

end

end A348987.P6758536360106431740

namespace A348987

/-- `gcd(A000027(A332994(n+1)), A074400(n+1))` -/
def P6758536360106431740.Spec : Prop :=
  ∀ n, (P6758536360106431740.a n : ℤ) = A348987 (n + 1)

end A348987

/-! ## A348987.P11770279920210971268

`(A333783(n+1)+A332993(n+1))/A348989(n+1)`
-/

namespace A348987.P11770279920210971268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333783 (n + 1) + A332993 (n + 1) : ℚ) / (A348989 (n + 1) : ℚ)

end

end A348987.P11770279920210971268

namespace A348987

/-- `(A333783(n+1)+A332993(n+1))/A348989(n+1)` -/
def P11770279920210971268.Spec : Prop :=
  ∀ n, P11770279920210971268.a n = (A348987 (n + 1) : ℚ)

end A348987

/-!
# A348988: Numerator of A332994(n) / sigma(n).

The programs for A348988, the canonical program `A348988.P10464308939748732985` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348988 has offset 1).

The definition of A348988 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332994, A348987, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348988.P2726916133006105015

`A332994(n+1)/gcd(A000203(n+1), A332994(n+1))`
-/

namespace A348988.P2726916133006105015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332994 (n + 1) : ℚ) / (Int.gcd (A000203 (n + 1)) (A332994 (n + 1)) : ℚ)

end

end A348988.P2726916133006105015

namespace A348988

/-- `A332994(n+1)/gcd(A000203(n+1), A332994(n+1))` -/
def P2726916133006105015.Spec : Prop :=
  ∀ n, P2726916133006105015.a n = (A348988 (n + 1) : ℚ)

end A348988

/-! ## A348988.P10464308939748732985

`A332994(n+1)/A348987(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A348988

/-- `A332994(n+1)/A348987(n+1)` -/
def P10464308939748732985.Spec : Prop :=
  ∀ n, P10464308939748732985.a n = (A348988 (n + 1) : ℚ)

end A348988

/-! ## A348988.P13917999410914078846

`A332994(n+1)/gcd(∑{d}[n+1, #], A333784(n+1))`
-/

namespace A348988.P13917999410914078846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332994 (n + 1) : ℚ) / (Int.gcd ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A333784 (n + 1)) : ℚ)

end

end A348988.P13917999410914078846

namespace A348988

/-- `A332994(n+1)/gcd(∑{d}[n+1, #], A333784(n+1))` -/
def P13917999410914078846.Spec : Prop :=
  ∀ n, P13917999410914078846.a n = (A348988 (n + 1) : ℚ)

end A348988

/-! ## A348988.P439819208000551740

`A332994(n+1)/A000203(n+1)*A348989(n+1)`
-/

namespace A348988.P439819208000551740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332994 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A348989 (n + 1) : ℚ)

end

end A348988.P439819208000551740

namespace A348988

/-- `A332994(n+1)/A000203(n+1)*A348989(n+1)` -/
def P439819208000551740.Spec : Prop :=
  ∀ n, P439819208000551740.a n = (A348988 (n + 1) : ℚ)

end A348988

/-! ## A348988.P6923234773765725257

`(A322382(n+1)+1+n)/A348987(n+1)`
-/

namespace A348988.P6923234773765725257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322382 (n + 1) + 1 + (n : ℤ) : ℚ) / (A348987 (n + 1) : ℚ)

end

end A348988.P6923234773765725257

namespace A348988

/-- `(A322382(n+1)+1+n)/A348987(n+1)` -/
def P6923234773765725257.Spec : Prop :=
  ∀ n, P6923234773765725257.a n = (A348988 (n + 1) : ℚ)

end A348988

/-! ## A348988.P3407740093511474283

`A322382(A020338(n+1))/A348987(n+1)`
-/

namespace A348988.P3407740093511474283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322382 (A020338 (n + 1)).toNat : ℚ) / (A348987 (n + 1) : ℚ)

end

end A348988.P3407740093511474283

namespace A348988

/-- `A322382(A020338(n+1))/A348987(n+1)` -/
def P3407740093511474283.Spec : Prop :=
  ∀ n, P3407740093511474283.a n = (A348988 (n + 1) : ℚ)

end A348988

/-! ## A348988.P346019125121852851

`A322382(A053024(n+1))/A348987(n+1)`
-/

namespace A348988.P346019125121852851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322382 (A053024 (n + 1)).toNat : ℚ) / (A348987 (n + 1) : ℚ)

end

end A348988.P346019125121852851

namespace A348988

/-- `A322382(A053024(n+1))/A348987(n+1)` -/
def P346019125121852851.Spec : Prop :=
  ∀ n, P346019125121852851.a n = (A348988 (n + 1) : ℚ)

end A348988

/-! ## A348988.P8821675643492764630

`A322382(A119416(n+1))/A348987(n+1)`
-/

namespace A348988.P8821675643492764630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322382 (A119416 (n + 1)).toNat : ℚ) / (A348987 (n + 1) : ℚ)

end

end A348988.P8821675643492764630

namespace A348988

/-- `A322382(A119416(n+1))/A348987(n+1)` -/
def P8821675643492764630.Spec : Prop :=
  ∀ n, P8821675643492764630.a n = (A348988 (n + 1) : ℚ)

end A348988

/-! ## A348988.P15087536426017513832

`A322382(A129598(n+1))/A348987(n+1)`
-/

namespace A348988.P15087536426017513832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322382 (A129598 (n + 1)).toNat : ℚ) / (A348987 (n + 1) : ℚ)

end

end A348988.P15087536426017513832

namespace A348988

/-- `A322382(A129598(n+1))/A348987(n+1)` -/
def P15087536426017513832.Spec : Prop :=
  ∀ n, P15087536426017513832.a n = (A348988 (n + 1) : ℚ)

end A348988

/-! ## A348988.P9597961584371175909

`A322382(A256017(n+1))/A348987(n+1)`
-/

namespace A348988.P9597961584371175909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322382 (A256017 (n + 1)).toNat : ℚ) / (A348987 (n + 1) : ℚ)

end

end A348988.P9597961584371175909

namespace A348988

/-- `A322382(A256017(n+1))/A348987(n+1)` -/
def P9597961584371175909.Spec : Prop :=
  ∀ n, P9597961584371175909.a n = (A348988 (n + 1) : ℚ)

end A348988

/-!
# A348989: Denominator of A332994(n) / sigma(n).

The programs for A348989, the canonical program `A348989.P3881012856814254505` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348989 has offset 1).

The definition of A348989 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332994, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348989.P3881012856814254505

`A000203(n+1)/gcd(A000203(n+1), A332994(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A348989

/-- `A000203(n+1)/gcd(A000203(n+1), A332994(n+1))` -/
def P3881012856814254505.Spec : Prop :=
  ∀ n, P3881012856814254505.a n = (A348989 (n + 1) : ℚ)

end A348989

/-! ## A348989.P18168702730243023677

`A000203(n+1)/A348987(n+1)`
-/

namespace A348989.P18168702730243023677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A348987 (n + 1) : ℚ)

end

end A348989.P18168702730243023677

namespace A348989

/-- `A000203(n+1)/A348987(n+1)` -/
def P18168702730243023677.Spec : Prop :=
  ∀ n, P18168702730243023677.a n = (A348989 (n + 1) : ℚ)

end A348989

/-! ## A348989.P1795867362388107223

`A000203(n+1)/gcd(∑{d}[n+1, #], A333784(n+1))`
-/

namespace A348989.P1795867362388107223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (Int.gcd ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A333784 (n + 1)) : ℚ)

end

end A348989.P1795867362388107223

namespace A348989

/-- `A000203(n+1)/gcd(∑{d}[n+1, #], A333784(n+1))` -/
def P1795867362388107223.Spec : Prop :=
  ∀ n, P1795867362388107223.a n = (A348989 (n + 1) : ℚ)

end A348989

/-! ## A348989.P3780381588493577990

`A000203(n+1)/A332994(n+1)*A348988(n+1)`
-/

namespace A348989.P3780381588493577990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A332994 (n + 1) : ℚ) * (A348988 (n + 1) : ℚ)

end

end A348989.P3780381588493577990

namespace A348989

/-- `A000203(n+1)/A332994(n+1)*A348988(n+1)` -/
def P3780381588493577990.Spec : Prop :=
  ∀ n, P3780381588493577990.a n = (A348989 (n + 1) : ℚ)

end A348989

/-! ## A348989.P10941794415670651138

`(A039653(n+1)+1)/A000027(A332994(n+1)/A348988(n+1))`
-/

namespace A348989.P10941794415670651138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039653 (n + 1) + 1 : ℚ) / (A000027 (SequenceMachineLib.roundAway ((A332994 (n + 1) : ℚ) / (A348988 (n + 1) : ℚ))).toNat : ℚ)

end

end A348989.P10941794415670651138

namespace A348989

/-- `(A039653(n+1)+1)/A000027(A332994(n+1)/A348988(n+1))` -/
def P10941794415670651138.Spec : Prop :=
  ∀ n, P10941794415670651138.a n = (A348989 (n + 1) : ℚ)

end A348989

/-! ## A348989.P12760020172884410861

`Δ[A160664(n)]/A348987(n+1)`
-/

namespace A348989.P12760020172884410861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A348987 (n + 1) : ℚ)

end

end A348989.P12760020172884410861

namespace A348989

/-- `Δ[A160664(n)]/A348987(n+1)` -/
def P12760020172884410861.Spec : Prop :=
  ∀ n, P12760020172884410861.a n = (A348989 (n + 1) : ℚ)

end A348989

/-! ## A348989.P12464344993294600931

`abs(Δ[A330725(n)]/A348987(n+1))`
-/

namespace A348989.P12464344993294600931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n : ℚ) / (A348987 (n + 1) : ℚ)|

end

end A348989.P12464344993294600931

namespace A348989

/-- `abs(Δ[A330725(n)]/A348987(n+1))` -/
def P12464344993294600931.Spec : Prop :=
  ∀ n, P12464344993294600931.a n = (A348989 (n + 1) : ℚ)

end A348989

/-! ## A348989.P9224785584875063864

`abs(A143348(n+1)/A348987(n+1))`
-/

namespace A348989.P9224785584875063864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A143348 (n + 1) : ℚ) / (A348987 (n + 1) : ℚ)|

end

end A348989.P9224785584875063864

namespace A348989

/-- `abs(A143348(n+1)/A348987(n+1))` -/
def P9224785584875063864.Spec : Prop :=
  ∀ n, P9224785584875063864.a n = (A348989 (n + 1) : ℚ)

end A348989

/-! ## A348989.P4730022703253735553

`sqrt(A072861(n+1))/A348987(n+1)`
-/

namespace A348989.P4730022703253735553
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) / (A348987 (n + 1) : ℝ)

end

end A348989.P4730022703253735553

namespace A348989

/-- `sqrt(A072861(n+1))/A348987(n+1)` -/
def P4730022703253735553.Spec : Prop :=
  ∀ n, P4730022703253735553.a n = (A348989 (n + 1) : ℝ)

end A348989

/-! ## A348989.P6347482659956818500

`(A333783(n+1)+A332993(n+1))/A348987(n+1)`
-/

namespace A348989.P6347482659956818500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333783 (n + 1) + A332993 (n + 1) : ℚ) / (A348987 (n + 1) : ℚ)

end

end A348989.P6347482659956818500

namespace A348989

/-- `(A333783(n+1)+A332993(n+1))/A348987(n+1)` -/
def P6347482659956818500.Spec : Prop :=
  ∀ n, P6347482659956818500.a n = (A348989 (n + 1) : ℚ)

end A348989

/-!
# A348990: a(n) = n / gcd(n, A003961(n)), where A003961(n) is fully multiplicative function with a(prime(k)) = prime(k+1).

The programs for A348990, the canonical program `A348990.P9008814680679274139` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348990 has offset 1).

The definition of A348990 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322361, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348990.P9008814680679274139

`(n+1)/A322361(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A348990

/-- `(n+1)/A322361(n+1)` -/
def P9008814680679274139.Spec : Prop :=
  ∀ n, P9008814680679274139.a n = (A348990 (n + 1) : ℚ)

end A348990

/-! ## A348990.P17866336784379451296

`(n+1)/gcd(n+1, A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348990.P17866336784379451296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A003961 (n + 1)) : ℚ)

end

end A348990.P17866336784379451296

namespace A348990

/-- `(n+1)/gcd(n+1, A003961(n+1))` -/
def P17866336784379451296.Spec : Prop :=
  ∀ n, P17866336784379451296.a n = (A348990 (n + 1) : ℚ)

end A348990

/-! ## A348990.P4693931127466771511

`A319627(A003961(n+1))`
-/

namespace A348990.P4693931127466771511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319627 (A003961 (n + 1)).toNat

end

end A348990.P4693931127466771511

namespace A348990

/-- `A319627(A003961(n+1))` -/
def P4693931127466771511.Spec : Prop :=
  ∀ n, P4693931127466771511.a n = A348990 (n + 1)

end A348990

/-! ## A348990.P7609955646824751529

`(n+1)/A003961(A330749(n+1))`
-/

namespace A348990.P7609955646824751529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A003961 (A330749 (n + 1)).toNat : ℚ)

end

end A348990.P7609955646824751529

namespace A348990

/-- `(n+1)/A003961(A330749(n+1))` -/
def P7609955646824751529.Spec : Prop :=
  ∀ n, P7609955646824751529.a n = (A348990 (n + 1) : ℚ)

end A348990

/-! ## A348990.P5003597062375584389

`(n+1)/A330749(A045965(n+1))`
-/

namespace A348990.P5003597062375584389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A330749 (A045965 (n + 1)).toNat : ℚ)

end

end A348990.P5003597062375584389

namespace A348990

/-- `(n+1)/A330749(A045965(n+1))` -/
def P5003597062375584389.Spec : Prop :=
  ∀ n, P5003597062375584389.a n = (A348990 (n + 1) : ℚ)

end A348990

/-! ## A348990.P12715860845256327494

`A319627(A045965(n+1))`
-/

namespace A348990.P12715860845256327494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319627 (A045965 (n + 1)).toNat

end

end A348990.P12715860845256327494

namespace A348990

/-- `A319627(A045965(n+1))` -/
def P12715860845256327494.Spec : Prop :=
  ∀ n, P12715860845256327494.a n = A348990 (n + 1)

end A348990

/-! ## A348990.P16616011056058013219

`A319627(A286385(n+1)+A000203(n+1))`
-/

namespace A348990.P16616011056058013219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319627 (A286385 (n + 1) + A000203 (n + 1)).toNat

end

end A348990.P16616011056058013219

namespace A348990

/-- `A319627(A286385(n+1)+A000203(n+1))` -/
def P16616011056058013219.Spec : Prop :=
  ∀ n, P16616011056058013219.a n = A348990 (n + 1)

end A348990

/-! ## A348990.P5251322172631001388

`A319627(A322361(n+1)*A348994(n+1))`
-/

namespace A348990.P5251322172631001388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319627 (A322361 (n + 1) * A348994 (n + 1)).toNat

end

end A348990.P5251322172631001388

namespace A348990

/-- `A319627(A322361(n+1)*A348994(n+1))` -/
def P5251322172631001388.Spec : Prop :=
  ∀ n, P5251322172631001388.a n = A348990 (n + 1)

end A348990

/-!
# A348991: a(n) = A333791(A276086(n)).

The programs for A348991, there is no canonical definition to state claims against.
-/

/-! ## A348991.P15825205112431336988

`A333791(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348991.P15825205112431336988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333791 (A276086 n).toNat

end

end A348991.P15825205112431336988

/-! ## A348991.P877922835830925665

`A333791(A348949(n)-A348950(n))`
-/

namespace A348991.P877922835830925665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333791 (A348949 n - A348950 n).toNat

end

end A348991.P877922835830925665

/-! ## A348991.P10200943392781362513

`A333791(A276076(n))%A350850(n+1)`
-/

namespace A348991.P10200943392781362513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333791 (A276076 n).toNat) (A350850 (n + 1))

end

end A348991.P10200943392781362513

/-! ## A348991.P261196095371852162

`A333791(A276076(n)%A271269(2*(n+2)))`
-/

namespace A348991.P261196095371852162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333791 (Int.tmod (A276076 n) (A271269 (2 * (n + 2)))).toNat

end

end A348991.P261196095371852162

/-! ## A348991.P3916344355014353823

`A333791(A276076(n)%A333788(n+1))`
-/

namespace A348991.P3916344355014353823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333791 (Int.tmod (A276076 n) (A333788 (n + 1))).toNat

end

end A348991.P3916344355014353823

/-!
# A348992: a(n) = A000265(sigma(n)) / gcd(sigma(n), A003961(n)), where A003961(n) is fully multiplicative with a(prime(k)) = prime(k+1), and sigma is the sum of divisors function.

The programs for A348992, the canonical program `A348992.P12661163686237205488` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348992 has offset 1).

The definition of A348992 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161942, A342671, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348992.P5399930928589844674

`A000265(A349162(n+1))`
-/

namespace A348992.P5399930928589844674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A349162 (n + 1)).toNat

end

end A348992.P5399930928589844674

namespace A348992

/-- `A000265(A349162(n+1))` -/
def P5399930928589844674.Spec : Prop :=
  ∀ n, P5399930928589844674.a n = A348992 (n + 1)

end A348992

/-! ## A348992.P12661163686237205488

`A161942(n+1)/A342671(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A348992

/-- `A161942(n+1)/A342671(n+1)` -/
def P12661163686237205488.Spec : Prop :=
  ∀ n, P12661163686237205488.a n = (A348992 (n + 1) : ℚ)

end A348992

/-! ## A348992.P3810960138921772485

`A003961(A348993(n+1))`
-/

namespace A348992.P3810960138921772485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A348993 (n + 1)).toNat

end

end A348992.P3810960138921772485

namespace A348992

/-- `A003961(A348993(n+1))` -/
def P3810960138921772485.Spec : Prop :=
  ∀ n, P3810960138921772485.a n = A348992 (n + 1)

end A348992

/-! ## A348992.P17743710561783295338

`A349162(n+1)/A082903(n+1)`
-/

namespace A348992.P17743710561783295338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349162 (n + 1) : ℚ) / (A082903 (n + 1) : ℚ)

end

end A348992.P17743710561783295338

namespace A348992

/-- `A349162(n+1)/A082903(n+1)` -/
def P17743710561783295338.Spec : Prop :=
  ∀ n, P17743710561783295338.a n = (A348992 (n + 1) : ℚ)

end A348992

/-! ## A348992.P9664240456657368547

`gcd(A161942(n+1), A349162(n+1))`
-/

namespace A348992.P9664240456657368547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A161942 (n + 1)) (A349162 (n + 1))

end

end A348992.P9664240456657368547

namespace A348992

/-- `gcd(A161942(n+1), A349162(n+1))` -/
def P9664240456657368547.Spec : Prop :=
  ∀ n, (P9664240456657368547.a n : ℤ) = A348992 (n + 1)

end A348992

/-! ## A348992.P9647376576471357866

`A000265(A000203(n+1)/A342671(n+1))`
-/

namespace A348992.P9647376576471357866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (A342671 (n + 1) : ℚ))).toNat

end

end A348992.P9647376576471357866

namespace A348992

/-- `A000265(A000203(n+1)/A342671(n+1))` -/
def P9647376576471357866.Spec : Prop :=
  ∀ n, P9647376576471357866.a n = A348992 (n + 1)

end A348992

/-! ## A348992.P3560685338588946633

`A000265(A342672(n+1)/A003961(n+1))`
-/

namespace A348992.P3560685338588946633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A342672 (n + 1) : ℚ) / (A003961 (n + 1) : ℚ))).toNat

end

end A348992.P3560685338588946633

namespace A348992

/-- `A000265(A342672(n+1)/A003961(n+1))` -/
def P3560685338588946633.Spec : Prop :=
  ∀ n, P3560685338588946633.a n = A348992 (n + 1)

end A348992

/-! ## A348992.P8368181744118520579

`A161942(n+1)/A003961(n+1)*A349161(n+1)`
-/

namespace A348992.P8368181744118520579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161942 (n + 1) : ℚ) / (A003961 (n + 1) : ℚ) * (A349161 (n + 1) : ℚ)

end

end A348992.P8368181744118520579

namespace A348992

/-- `A161942(n+1)/A003961(n+1)*A349161(n+1)` -/
def P8368181744118520579.Spec : Prop :=
  ∀ n, P8368181744118520579.a n = (A348992 (n + 1) : ℚ)

end A348992

/-! ## A348992.P10151836821151105929

`A003961(A350073(n+1))/A342671(n+1)`
-/

namespace A348992.P10151836821151105929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (A350073 (n + 1)).toNat : ℚ) / (A342671 (n + 1) : ℚ)

end

end A348992.P10151836821151105929

namespace A348992

/-- `A003961(A350073(n+1))/A342671(n+1)` -/
def P10151836821151105929.Spec : Prop :=
  ∀ n, P10151836821151105929.a n = (A348992 (n + 1) : ℚ)

end A348992

/-! ## A348992.P10147890222769336909

`A003961(A064989(A349162(A064989(A003961(n+1)))))`
-/

namespace A348992.P10147890222769336909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A064989 (A349162 (A064989 (A003961 (n + 1)).toNat).toNat).toNat).toNat

end

end A348992.P10147890222769336909

namespace A348992

/-- `A003961(A064989(A349162(A064989(A003961(n+1)))))` -/
def P10147890222769336909.Spec : Prop :=
  ∀ n, P10147890222769336909.a n = A348992 (n + 1)

end A348992

/-!
# A348993: a(n) = A064989(sigma(n) / gcd(sigma(n), A003961(n))), where A003961 shifts the prime factorization of n one step towards larger primes, while A064989 shifts it back towards smaller primes, and sigma is the sum of divisors function.

The programs for A348993, the canonical program `A348993.P13881550542698472109` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348993 has offset 1).

The definition of A348993 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, A348992, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348993.P13881550542698472109

`A064989(A348992(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A348993

/-- `A064989(A348992(n+1))` -/
def P13881550542698472109.Spec : Prop :=
  ∀ n, P13881550542698472109.a n = A348993 (n + 1)

theorem P13881550542698472109.correct : P13881550542698472109.Spec := by
  intro n
  simp only [A348993, Nat.add_sub_cancel]

end A348993

/-! ## A348993.P7983426067509428432

`A064989(A349162(n+1))`
-/

namespace A348993.P7983426067509428432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A349162 (n + 1)).toNat

end

end A348993.P7983426067509428432

namespace A348993

/-- `A064989(A349162(n+1))` -/
def P7983426067509428432.Spec : Prop :=
  ∀ n, P7983426067509428432.a n = A348993 (n + 1)

end A348993

/-! ## A348993.P13150873070643502152

`A350073(n+1)/A349163(n+1)`
-/

namespace A348993.P13150873070643502152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350073 (n + 1) : ℚ) / (A349163 (n + 1) : ℚ)

end

end A348993.P13150873070643502152

namespace A348993

/-- `A350073(n+1)/A349163(n+1)` -/
def P13150873070643502152.Spec : Prop :=
  ∀ n, P13150873070643502152.a n = (A348993 (n + 1) : ℚ)

end A348993

/-! ## A348993.P1976217312599741573

`A350073(n+1)/A064989(A342671(n+1))`
-/

namespace A348993.P1976217312599741573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350073 (n + 1) : ℚ) / (A064989 (A342671 (n + 1)).toNat : ℚ)

end

end A348993.P1976217312599741573

namespace A348993

/-- `A350073(n+1)/A064989(A342671(n+1))` -/
def P1976217312599741573.Spec : Prop :=
  ∀ n, P1976217312599741573.a n = (A348993 (n + 1) : ℚ)

end A348993

/-! ## A348993.P2025052675777934519

`A064989(A161942(n+1)/A342671(n+1))`
-/

namespace A348993.P2025052675777934519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (SequenceMachineLib.roundAway ((A161942 (n + 1) : ℚ) / (A342671 (n + 1) : ℚ))).toNat

end

end A348993.P2025052675777934519

namespace A348993

/-- `A064989(A161942(n+1)/A342671(n+1))` -/
def P2025052675777934519.Spec : Prop :=
  ∀ n, P2025052675777934519.a n = A348993 (n + 1)

end A348993

/-! ## A348993.P6622669987194350

`A064989(A000203(n+1)/A342671(n+1))`
-/

namespace A348993.P6622669987194350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (A342671 (n + 1) : ℚ))).toNat

end

end A348993.P6622669987194350

namespace A348993

/-- `A064989(A000203(n+1)/A342671(n+1))` -/
def P6622669987194350.Spec : Prop :=
  ∀ n, P6622669987194350.a n = A348993 (n + 1)

end A348993

/-! ## A348993.P17679733624609343528

`A064989(A000203(n+1))/A349163(n+1)`
-/

namespace A348993.P17679733624609343528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064989 (A000203 (n + 1)).toNat : ℚ) / (A349163 (n + 1) : ℚ)

end

end A348993.P17679733624609343528

namespace A348993

/-- `A064989(A000203(n+1))/A349163(n+1)` -/
def P17679733624609343528.Spec : Prop :=
  ∀ n, P17679733624609343528.a n = (A348993 (n + 1) : ℚ)

end A348993

/-!
# A348994: a(n) = A003961(n) / gcd(n, A003961(n)), where A003961(n) is fully multiplicative with a(prime(k)) = prime(k+1).

The programs for A348994, the canonical program `A348994.P10230310546806871422` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348994 has offset 1).

The definition of A348994 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A319626, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348994.P11208360725147384970

`A003961(n+1)/gcd(n+1, A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348994.P11208360725147384970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A003961 (n + 1)) : ℚ)

end

end A348994.P11208360725147384970

namespace A348994

/-- `A003961(n+1)/gcd(n+1, A003961(n+1))` -/
def P11208360725147384970.Spec : Prop :=
  ∀ n, P11208360725147384970.a n = (A348994 (n + 1) : ℚ)

end A348994

/-! ## A348994.P10230310546806871422

`A319626(A003961(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A348994

/-- `A319626(A003961(n+1))` -/
def P10230310546806871422.Spec : Prop :=
  ∀ n, P10230310546806871422.a n = A348994 (n + 1)

theorem P10230310546806871422.correct : P10230310546806871422.Spec := by
  intro n
  simp only [A348994, Nat.add_sub_cancel]

end A348994

/-! ## A348994.P15657657979194362100

`lcm(n+1, A253885(n)+1)/(n+1)`
-/

namespace A348994.P15657657979194362100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A253885 n + 1) : ℚ) / (n + 1 : ℚ)

end

end A348994.P15657657979194362100

namespace A348994

/-- `lcm(n+1, A253885(n)+1)/(n+1)` -/
def P15657657979194362100.Spec : Prop :=
  ∀ n, P15657657979194362100.a n = (A348994 (n + 1) : ℚ)

end A348994

/-! ## A348994.P1049629030192807891

`A003961(n+1)/A322361(n+1)`
-/

namespace A348994.P1049629030192807891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) : ℚ) / (A322361 (n + 1) : ℚ)

end

end A348994.P1049629030192807891

namespace A348994

/-- `A003961(n+1)/A322361(n+1)` -/
def P1049629030192807891.Spec : Prop :=
  ∀ n, P1049629030192807891.a n = (A348994 (n + 1) : ℚ)

end A348994

/-! ## A348994.P12514296496104634421

`A003961((n+1)/A330749(n+1))`
-/

namespace A348994.P12514296496104634421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A330749 (n + 1) : ℚ))).toNat

end

end A348994.P12514296496104634421

namespace A348994

/-- `A003961((n+1)/A330749(n+1))` -/
def P12514296496104634421.Spec : Prop :=
  ∀ n, P12514296496104634421.a n = A348994 (n + 1)

end A348994

/-! ## A348994.P2201873632500003114

`A003961(n+1)/gcd(A003961(n+1), A030640(n))`
-/

namespace A348994.P2201873632500003114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) : ℚ) / (Int.gcd (A003961 (n + 1)) (A030640 n) : ℚ)

end

end A348994.P2201873632500003114

namespace A348994

/-- `A003961(n+1)/gcd(A003961(n+1), A030640(n))` -/
def P2201873632500003114.Spec : Prop :=
  ∀ n, P2201873632500003114.a n = (A348994 (n + 1) : ℚ)

end A348994

/-! ## A348994.P15176182457363495822

`(A348937(n+1)+A003415(n+1))/A322361(n+1)`
-/

namespace A348994.P15176182457363495822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348937 (n + 1) + A003415 (n + 1) : ℚ) / (A322361 (n + 1) : ℚ)

end

end A348994.P15176182457363495822

namespace A348994

/-- `(A348937(n+1)+A003415(n+1))/A322361(n+1)` -/
def P15176182457363495822.Spec : Prop :=
  ∀ n, P15176182457363495822.a n = (A348994 (n + 1) : ℚ)

end A348994

/-! ## A348994.P3825085013338873415

`A003961(n+1)*A324644(n+1)/A379487(n+1)`
-/

namespace A348994.P3825085013338873415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) * A324644 (n + 1) : ℚ) / (A379487 (n + 1) : ℚ)

end

end A348994.P3825085013338873415

namespace A348994

/-- `A003961(n+1)*A324644(n+1)/A379487(n+1)` -/
def P3825085013338873415.Spec : Prop :=
  ∀ n, P3825085013338873415.a n = (A348994 (n + 1) : ℚ)

end A348994

/-! ## A348994.P15263237353360713843

`A342671(n+1)/A322361(n+1)*A349161(n+1)`
-/

namespace A348994.P15263237353360713843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342671 (n + 1) : ℚ) / (A322361 (n + 1) : ℚ) * (A349161 (n + 1) : ℚ)

end

end A348994.P15263237353360713843

namespace A348994

/-- `A342671(n+1)/A322361(n+1)*A349161(n+1)` -/
def P15263237353360713843.Spec : Prop :=
  ∀ n, P15263237353360713843.a n = (A348994 (n + 1) : ℚ)

end A348994

/-! ## A348994.P2318429152827311413

`lcm(A000265(n+1), A003961(n+1))/A000265(n+1)`
-/

namespace A348994.P2318429152827311413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000265 (n + 1)) (A003961 (n + 1)) : ℚ) / (A000265 (n + 1) : ℚ)

end

end A348994.P2318429152827311413

namespace A348994

/-- `lcm(A000265(n+1), A003961(n+1))/A000265(n+1)` -/
def P2318429152827311413.Spec : Prop :=
  ∀ n, P2318429152827311413.a n = (A348994 (n + 1) : ℚ)

end A348994

/-! ## A348994.P5644772668020342704

`A003961(n+1)/A000265(n+1)*A003961(A319627(n+1))`
-/

namespace A348994.P5644772668020342704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) : ℚ) / (A000265 (n + 1) : ℚ) * (A003961 (A319627 (n + 1)).toNat : ℚ)

end

end A348994.P5644772668020342704

namespace A348994

/-- `A003961(n+1)/A000265(n+1)*A003961(A319627(n+1))` -/
def P5644772668020342704.Spec : Prop :=
  ∀ n, P5644772668020342704.a n = (A348994 (n + 1) : ℚ)

end A348994

/-! ## A348994.P14149112118635239511

`A297166(2*(n+1))/gcd(2*(n+1), A297166(2*(n+1)))`
-/

namespace A348994.P14149112118635239511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297166 (2 * (n + 1)) : ℚ) / (Int.gcd (2 * (n + 1) : ℤ) (A297166 (2 * (n + 1))) : ℚ)

end

end A348994.P14149112118635239511

namespace A348994

/-- `A297166(2*(n+1))/gcd(2*(n+1), A297166(2*(n+1)))` -/
def P14149112118635239511.Spec : Prop :=
  ∀ n, P14149112118635239511.a n = (A348994 (n + 1) : ℚ)

end A348994

/-! ## A348994.P14049541006254375122

`A319626(A286385(n+1)+A000203(n+1))`
-/

namespace A348994.P14049541006254375122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (A286385 (n + 1) + A000203 (n + 1)).toNat

end

end A348994.P14049541006254375122

namespace A348994

/-- `A319626(A286385(n+1)+A000203(n+1))` -/
def P14049541006254375122.Spec : Prop :=
  ∀ n, P14049541006254375122.a n = A348994 (n + 1)

theorem P14049541006254375122.correct : P14049541006254375122.Spec := by
  intro n
  simp only [A348994, Nat.add_sub_cancel, A348994.P14049541006254375122.a, A348994.P10230310546806871422.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A286385, A286385.P7583078268767377745.a, A319626, A319626.P18353085358541407591.a, A064989, A064989.P13349672914146769936.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A252749, A252749.P15054942815197957636.a, A006530, A006530.P13372528560459906635.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A158611, A158611.P9275629407611603775.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348994

/-! ## A348994.P12878498403083887891

`A319626(A342671(n+1)*A349161(n+1))`
-/

namespace A348994.P12878498403083887891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (A342671 (n + 1) * A349161 (n + 1)).toNat

end

end A348994.P12878498403083887891

namespace A348994

/-- `A319626(A342671(n+1)*A349161(n+1))` -/
def P12878498403083887891.Spec : Prop :=
  ∀ n, P12878498403083887891.a n = A348994 (n + 1)

end A348994

/-!
# A348995: Positions of ones in A347084, which is the Dirichlet inverse of (n + arithmetic derivative of n).

The programs for A348995, there is no canonical definition to state claims against.
-/

/-! ## A348995.P4807762602994427051

`eq[1, A347084(n+1)]+1`
-/

namespace A348995.P4807762602994427051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347084 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A348995.P4807762602994427051

/-! ## A348995.P3400110525757395422

`record[A249817(A096458(A025475(n+1)))]`
-/

namespace A348995.P3400110525757395422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249817 (A096458 (A025475 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348995.P3400110525757395422

/-! ## A348995.P4425624052513438170

`record[A250245(A025475(A274533(n+1)))]`
-/

namespace A348995.P4425624052513438170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250245 (A025475 (A274533 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348995.P4425624052513438170

/-! ## A348995.P3677379905053082094

`∩[A001597(n+1), A125007(n+1)]`
-/

namespace A348995.P3677379905053082094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348995.P3677379905053082094

/-! ## A348995.P11108464351154352671

`∩[A001694(n+1), A125007(n+1)]`
-/

namespace A348995.P11108464351154352671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348995.P11108464351154352671

/-!
# A348996: a(n) = usigma(A276086(n)), where usigma (A034448) is multiplicative with a(p^e) = (p^e)+1, and A276086 gives the prime product form of primorial base expansion of n.

The programs for A348996, there is no canonical definition to state claims against.
-/

/-! ## A348996.P7613641597238718429

`A034448(A276086(n))`
-/

namespace A348996.P7613641597238718429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A276086 n).toNat

end

end A348996.P7613641597238718429

/-! ## A348996.P5483054916555418097

`A324653(n)-A048146(A276086(n))`
-/

namespace A348996.P5483054916555418097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324653 n - A048146 (A276086 n).toNat

end

end A348996.P5483054916555418097

/-! ## A348996.P7785728895359567885

`A348949(n)-A348732(A276086(n))`
-/

namespace A348996.P7785728895359567885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348949 n - A348732 (A276086 n).toNat

end

end A348996.P7785728895359567885

/-! ## A348996.P13410463499344508968

`A332882(A276086(n))*A349000(n)`
-/

namespace A348996.P13410463499344508968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332882 (A276086 n).toNat * A349000 n

end

end A348996.P13410463499344508968

/-! ## A348996.P2614766252571905551

`lcm(A161946(A276086(n)), A348997(n))`
-/

namespace A348996.P2614766252571905551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A161946 (A276086 n).toNat) (A348997 n)

end

end A348996.P2614766252571905551

/-!
# A348997: a(n) = A348733(A276086(n)), where A348733(n) = gcd(A003959(n), A034448(n)), and A276086 gives the prime product form of primorial base expansion of n.

The programs for A348997, there is no canonical definition to state claims against.
-/

/-! ## A348997.P14424703722906261760

`gcd(A348949(n), A348996(n))`
-/

namespace A348997.P14424703722906261760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A348949 n) (A348996 n)

end

end A348997.P14424703722906261760

/-! ## A348997.P9513318544021167722

`A348733(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348997.P9513318544021167722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348733 (A276086 n).toNat

end

end A348997.P9513318544021167722

/-! ## A348997.P13728488548290248790

`gcd(A348996(n)+A107904(n), A107904(n))`
-/

namespace A348997.P13728488548290248790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A348996 n + A107904 n) (A107904 n)

end

end A348997.P13728488548290248790

/-! ## A348997.P13104171462996401706

`A348733(A351225(n)+n)`
-/

namespace A348997.P13104171462996401706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348733 (A351225 n + (n : ℤ)).toNat

end

end A348997.P13104171462996401706

/-! ## A348997.P9873672460786916189

`A348733(A328844(n)+A328843(n))`
-/

namespace A348997.P9873672460786916189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348733 (A328844 n + A328843 n).toNat

end

end A348997.P9873672460786916189

/-! ## A348997.P5396067670930796743

`A348733(A327860(n)-A342016(n))`
-/

namespace A348997.P5396067670930796743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348733 (A327860 n - A342016 n).toNat

end

end A348997.P5396067670930796743

/-! ## A348997.P18220737848005995309

`A348733(A348949(n)-A348950(n))`
-/

namespace A348997.P18220737848005995309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348733 (A348949 n - A348950 n).toNat

end

end A348997.P18220737848005995309

/-! ## A348997.P13781648052140941377

`A348949(n)/A348734(A276086(n))`
-/

namespace A348997.P13781648052140941377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348949 n : ℚ) / (A348734 (A276086 n).toNat : ℚ)

end

end A348997.P13781648052140941377

/-! ## A348997.P12952078894509361331

`A348996(n)/A348735(A276086(n))`
-/

namespace A348997.P12952078894509361331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348996 n : ℚ) / (A348735 (A276086 n).toNat : ℚ)

end

end A348997.P12952078894509361331

/-!
# A348998: a(n) = A348928(A276086(n)), where A348928(n) = gcd(n, A003958(n)), and A003958 is multiplicative with a(p^e) = (p-1)^e, and A276086 gives the prime product form of primorial base expansion of n.

The programs for A348998, there is no canonical definition to state claims against.
-/

/-! ## A348998.P6663999690063335087

`A348928(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348998.P6663999690063335087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348928 (A276086 n).toNat

end

end A348998.P6663999690063335087

/-! ## A348998.P15264605968518415092

`gcd(A003958(A276086(n)), A276076(n))`
-/

namespace A348998.P15264605968518415092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003958 (A276086 n).toNat) (A276076 n)

end

end A348998.P15264605968518415092

/-! ## A348998.P9428540896632063717

`gcd(A003958(A346101(n)), A276086(n))`
-/

namespace A348998.P9428540896632063717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003958 (A346101 n).toNat) (A276086 n)

end

end A348998.P9428540896632063717

/-! ## A348998.P5020206228466920895

`A009195(A328571(n))%p?[A054225(n)]`
-/

namespace A348998.P5020206228466920895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009195 (A328571 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A348998.P5020206228466920895

/-! ## A348998.P126258346218909551

`A033683(A001539(n))+A009195(A328571(n))`
-/

namespace A348998.P126258346218909551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033683 (A001539 n).toNat + A009195 (A328571 n).toNat

end

end A348998.P126258346218909551

/-! ## A348998.P15886885694562296479

`A005171(A157446(n+1))*A009195(A328571(n))`
-/

namespace A348998.P15886885694562296479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A157446 (n + 1)).toNat * A009195 (A328571 n).toNat

end

end A348998.P15886885694562296479

/-! ## A348998.P14824859316472874936

`A126864(A346101(n))`
-/

namespace A348998.P14824859316472874936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126864 (A346101 n).toNat

end

end A348998.P14824859316472874936

/-!
# A348999: a(n) = A348929(A276086(n)), where A348929(n) = gcd(n, A003959(n)), A003959 is multiplicative with a(p^e) = (p+1)^e, and A276086 gives the prime product form of primorial base expansion of n.

The programs for A348999, there is no canonical definition to state claims against.
-/

/-! ## A348999.P11248897473908311200

`gcd(A276086(n), A348949(n))`
-/

namespace A348999.P11248897473908311200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276086 n) (A348949 n)

end

end A348999.P11248897473908311200

/-! ## A348999.P2155400523060654918

`A348929(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348999.P2155400523060654918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348929 (A276086 n).toNat

end

end A348999.P2155400523060654918

/-! ## A348999.P10280668770330613282

`gcd(A346101(n), A348949(A289234(n)))`
-/

namespace A348999.P10280668770330613282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A346101 n) (A348949 (A289234 n).toNat)

end

end A348999.P10280668770330613282

/-! ## A348999.P903364395875228355

`gcd(A003959(A276086(n)), A276076(n))`
-/

namespace A348999.P903364395875228355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003959 (A276086 n).toNat) (A276076 n)

end

end A348999.P903364395875228355

/-! ## A348999.P15597527828540511011

`A348929(A346101(n))`
-/

namespace A348999.P15597527828540511011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348929 (A346101 n).toNat

end

end A348999.P15597527828540511011

/-! ## A348999.P3190677620521050594

`A348929(A324350((n+1)*2*n))`
-/

namespace A348999.P3190677620521050594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348929 (A324350 ((n + 1) * (2 * n))).toNat

end

end A348999.P3190677620521050594

/-! ## A348999.P498949320311674847

`A348929(A348949(n)-A348950(n))`
-/

namespace A348999.P498949320311674847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348929 (A348949 n - A348950 n).toNat

end

end A348999.P498949320311674847

