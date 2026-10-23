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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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
# A142800: Primes congruent to 2 mod 61.

The programs for A142800, the canonical program `A142800.P9102499254012989498` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142800 has offset 1).

The definition of A142800 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142800.P9102499254012989498

`p?[61*n+2]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142800

/-- `p?[61*n+2]` -/
def P9102499254012989498.Spec : Prop :=
  ∀ n, (P9102499254012989498.a n : ℤ) = A142800 (n + 1)

theorem P9102499254012989498.correct : P9102499254012989498.Spec := by
  intro n
  simp only [A142800, Nat.add_sub_cancel]

end A142800

/-! ## A142800.P8684297142007235450

`or(p?[A304839(n+1)-21], A000035(n))`
-/

namespace A142800.P8684297142007235450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 21

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000035 n)

end

end A142800.P8684297142007235450

namespace A142800

/-- `or(p?[A304839(n+1)-21], A000035(n))` -/
def P8684297142007235450.Spec : Prop :=
  ∀ n, P8684297142007235450.a n = A142800 (n + 1)

end A142800

/-! ## A142800.P5932308540356530794

`p?[A304839(n+1)-21]/A001222(A002144(n+1))`
-/

namespace A142800.P5932308540356530794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 21

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A001222 (A002144 (n + 1)).toNat : ℚ)

end

end A142800.P5932308540356530794

namespace A142800

/-- `p?[A304839(n+1)-21]/A001222(A002144(n+1))` -/
def P5932308540356530794.Spec : Prop :=
  ∀ n, P5932308540356530794.a n = (A142800 (n + 1) : ℚ)

end A142800

/-! ## A142800.P6532595771696141557

`p?[A304839(n+1)-21]/A001222(A002145(n+1))`
-/

namespace A142800.P6532595771696141557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 21

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A001222 (A002145 (n + 1)).toNat : ℚ)

end

end A142800.P6532595771696141557

namespace A142800

/-- `p?[A304839(n+1)-21]/A001222(A002145(n+1))` -/
def P6532595771696141557.Spec : Prop :=
  ∀ n, P6532595771696141557.a n = (A142800 (n + 1) : ℚ)

end A142800

/-! ## A142800.P11515320889832368054

`A000027(p?[A304839(n+1)-21])`
-/

namespace A142800.P11515320889832368054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 21

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142800.P11515320889832368054

namespace A142800

/-- `A000027(p?[A304839(n+1)-21])` -/
def P11515320889832368054.Spec : Prop :=
  ∀ n, P11515320889832368054.a n = A142800 (n + 1)

end A142800

/-! ## A142800.P579516496113056442

`A002262(A000217(n))+p?[A304839(n+1)-21]`
-/

namespace A142800.P579516496113056442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 21

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A000217 n).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142800.P579516496113056442

namespace A142800

/-- `A002262(A000217(n))+p?[A304839(n+1)-21]` -/
def P579516496113056442.Spec : Prop :=
  ∀ n, P579516496113056442.a n = A142800 (n + 1)

end A142800

/-!
# A142801: Primes congruent to 3 mod 61.

The programs for A142801, the canonical program `A142801.P17512731339889488162` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142801 has offset 1).

The definition of A142801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1277 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142801.P17512731339889488162

`p?[61*n+3]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142801

/-- `p?[61*n+3]` -/
def P17512731339889488162.Spec : Prop :=
  ∀ n, (P17512731339889488162.a n : ℤ) = A142801 (n + 1)

theorem P17512731339889488162.correct : P17512731339889488162.Spec := by
  intro n
  simp only [A142801, Nat.add_sub_cancel]

end A142801

/-! ## A142801.P9082539224647259571

`or(1, p?[a(n-1)+61])` with `a(0)=3`
-/

namespace A142801.P9082539224647259571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 61

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142801.P9082539224647259571

namespace A142801

/-- `or(1, p?[a(n-1)+61])` -/
def P9082539224647259571.Spec : Prop :=
  ∀ n, (P9082539224647259571.a n : ℤ) = A142801 (n + 1)

end A142801

/-! ## A142801.P3078120521485759967

`or(1, p?[A304839(n+1)-20])`
-/

namespace A142801.P3078120521485759967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142801.P3078120521485759967

namespace A142801

/-- `or(1, p?[A304839(n+1)-20])` -/
def P3078120521485759967.Spec : Prop :=
  ∀ n, P3078120521485759967.a n = A142801 (n + 1)

end A142801

/-! ## A142801.P14830243925962143678

`p?[A304839(n+1)-20]/A007318(C(2, n))`
-/

namespace A142801.P14830243925962143678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 20

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A142801.P14830243925962143678

namespace A142801

/-- `p?[A304839(n+1)-20]/A007318(C(2, n))` -/
def P14830243925962143678.Spec : Prop :=
  ∀ n, P14830243925962143678.a n = (A142801 (n + 1) : ℚ)

end A142801

/-! ## A142801.P3067294284810599219

`A000027(p?[A304839(n+1)-20])`
-/

namespace A142801.P3067294284810599219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142801.P3067294284810599219

namespace A142801

/-- `A000027(p?[A304839(n+1)-20])` -/
def P3067294284810599219.Spec : Prop :=
  ∀ n, P3067294284810599219.a n = A142801 (n + 1)

end A142801

/-! ## A142801.P7334061578588563313

`A000027(p?[A139222(n+1)+A135631(n)])`
-/

namespace A142801.P7334061578588563313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139222 (n + 1) + A135631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142801.P7334061578588563313

namespace A142801

/-- `A000027(p?[A139222(n+1)+A135631(n)])` -/
def P7334061578588563313.Spec : Prop :=
  ∀ n, P7334061578588563313.a n = A142801 (n + 1)

end A142801

/-! ## A142801.P61988713856330201

`A000265(p?[A304839(n+1)-20])`
-/

namespace A142801.P61988713856330201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142801.P61988713856330201

namespace A142801

/-- `A000265(p?[A304839(n+1)-20])` -/
def P61988713856330201.Spec : Prop :=
  ∀ n, P61988713856330201.a n = A142801 (n + 1)

end A142801

/-! ## A142801.P196820782309204617

`A001414(p?[A304839(n+1)-20])`
-/

namespace A142801.P196820782309204617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142801.P196820782309204617

namespace A142801

/-- `A001414(p?[A304839(n+1)-20])` -/
def P196820782309204617.Spec : Prop :=
  ∀ n, P196820782309204617.a n = A142801 (n + 1)

end A142801

/-! ## A142801.P10940367957004016566

`A007913(p?[A304839(n+1)-20])`
-/

namespace A142801.P10940367957004016566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142801.P10940367957004016566

namespace A142801

/-- `A007913(p?[A304839(n+1)-20])` -/
def P10940367957004016566.Spec : Prop :=
  ∀ n, P10940367957004016566.a n = A142801 (n + 1)

end A142801

/-! ## A142801.P6117258530425639993

`A000265(p?[A227863(n+1)+n+2])`
-/

namespace A142801.P6117258530425639993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227863 (n + 1) + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142801.P6117258530425639993

namespace A142801

/-- `A000265(p?[A227863(n+1)+n+2])` -/
def P6117258530425639993.Spec : Prop :=
  ∀ n, P6117258530425639993.a n = A142801 (n + 1)

end A142801

/-! ## A142801.P10210061851903721797

`∑{d}[p?[A304839(n+1)-20], A000010(#)]`
-/

namespace A142801.P10210061851903721797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 20

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A142801.P10210061851903721797

namespace A142801

/-- `∑{d}[p?[A304839(n+1)-20], A000010(#)]` -/
def P10210061851903721797.Spec : Prop :=
  ∀ n, P10210061851903721797.a n = A142801 (n + 1)

end A142801

/-! ## A142801.P5727640534233104273

`A000265(p?[A139222(n+1)+A026741(n)])`
-/

namespace A142801.P5727640534233104273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139222 (n + 1) + A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142801.P5727640534233104273

namespace A142801

/-- `A000265(p?[A139222(n+1)+A026741(n)])` -/
def P5727640534233104273.Spec : Prop :=
  ∀ n, P5727640534233104273.a n = A142801 (n + 1)

end A142801

/-! ## A142801.P15561099282724683143

`A001414(p?[A139222(n+1)+A026741(n)])`
-/

namespace A142801.P15561099282724683143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139222 (n + 1) + A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142801.P15561099282724683143

namespace A142801

/-- `A001414(p?[A139222(n+1)+A026741(n)])` -/
def P15561099282724683143.Spec : Prop :=
  ∀ n, P15561099282724683143.a n = A142801 (n + 1)

end A142801

/-! ## A142801.P13280938032331091342

`A008472(p?[A139222(n+1)+A026741(n)])`
-/

namespace A142801.P13280938032331091342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139222 (n + 1) + A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142801.P13280938032331091342

namespace A142801

/-- `A008472(p?[A139222(n+1)+A026741(n)])` -/
def P13280938032331091342.Spec : Prop :=
  ∀ n, P13280938032331091342.a n = A142801 (n + 1)

end A142801

/-! ## A142801.P5848092871799078564

`A000265(p?[A139222(n+1)+A135631(n)])`
-/

namespace A142801.P5848092871799078564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139222 (n + 1) + A135631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142801.P5848092871799078564

namespace A142801

/-- `A000265(p?[A139222(n+1)+A135631(n)])` -/
def P5848092871799078564.Spec : Prop :=
  ∀ n, P5848092871799078564.a n = A142801 (n + 1)

end A142801

/-!
# A142802: Primes congruent to 4 mod 61.

The programs for A142802, the canonical program `A142802.P925025068234265492` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142802 has offset 1).

The definition of A142802 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1300 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142802.P925025068234265492

`p?[61*n+4]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142802

/-- `p?[61*n+4]` -/
def P925025068234265492.Spec : Prop :=
  ∀ n, (P925025068234265492.a n : ℤ) = A142802 (n + 1)

theorem P925025068234265492.correct : P925025068234265492.Spec := by
  intro n
  simp only [A142802, Nat.add_sub_cancel]

end A142802

/-! ## A142802.P9089862477896163291

`or(1, p?[a(n-1)+61])` with `a(0)=4`
-/

namespace A142802.P9089862477896163291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) + 61

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142802.P9089862477896163291

namespace A142802

/-- `or(1, p?[a(n-1)+61])` -/
def P9089862477896163291.Spec : Prop :=
  ∀ n, (P9089862477896163291.a n : ℤ) = A142802 (n + 1)

end A142802

/-! ## A142802.P3267620407149710333

`p?[A158071(n+1)-A008486(n)]%A157826(n+1)`
-/

namespace A142802.P3267620407149710333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (n + 1) - A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A157826 (n + 1))

end

end A142802.P3267620407149710333

namespace A142802

/-- `p?[A158071(n+1)-A008486(n)]%A157826(n+1)` -/
def P3267620407149710333.Spec : Prop :=
  ∀ n, P3267620407149710333.a n = A142802 (n + 1)

end A142802

/-! ## A142802.P15023839192242073489

`A000027(p?[A304839(n+1)-19])`
-/

namespace A142802.P15023839192242073489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142802.P15023839192242073489

namespace A142802

/-- `A000027(p?[A304839(n+1)-19])` -/
def P15023839192242073489.Spec : Prop :=
  ∀ n, P15023839192242073489.a n = A142802 (n + 1)

end A142802

/-! ## A142802.P15368136394438524980

`A000027(p?[A158071(n+1)-A008486(n)])`
-/

namespace A142802.P15368136394438524980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (n + 1) - A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142802.P15368136394438524980

namespace A142802

/-- `A000027(p?[A158071(n+1)-A008486(n)])` -/
def P15368136394438524980.Spec : Prop :=
  ∀ n, P15368136394438524980.a n = A142802 (n + 1)

end A142802

/-! ## A142802.P17325439076625313397

`A007913(p?[a(n-1)+61])` with `a(0)=1, a(1)=4`
-/

namespace A142802.P17325439076625313397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + 61

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142802.P17325439076625313397

namespace A142802

/-- `A007913(p?[a(n-1)+61])` -/
def P17325439076625313397.Spec : Prop :=
  ∀ n, P17325439076625313397.a n = A142802 (n + 1)

end A142802

/-! ## A142802.P16888065909943181761

`A001414(p?[A139264(n+1)-A017197(n)])`
-/

namespace A142802.P16888065909943181761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139264 (n + 1) - A017197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142802.P16888065909943181761

namespace A142802

/-- `A001414(p?[A139264(n+1)-A017197(n)])` -/
def P16888065909943181761.Spec : Prop :=
  ∀ n, P16888065909943181761.a n = A142802 (n + 1)

end A142802

/-! ## A142802.P5086789122661153840

`A008472(p?[A139264(n+1)-A017197(n)])`
-/

namespace A142802.P5086789122661153840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139264 (n + 1) - A017197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142802.P5086789122661153840

namespace A142802

/-- `A008472(p?[A139264(n+1)-A017197(n)])` -/
def P5086789122661153840.Spec : Prop :=
  ∀ n, P5086789122661153840.a n = A142802 (n + 1)

end A142802

/-! ## A142802.P9840712212717232828

`A001414(p?[A158071(n+1)-A008486(n)])`
-/

namespace A142802.P9840712212717232828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (n + 1) - A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142802.P9840712212717232828

namespace A142802

/-- `A001414(p?[A158071(n+1)-A008486(n)])` -/
def P9840712212717232828.Spec : Prop :=
  ∀ n, P9840712212717232828.a n = A142802 (n + 1)

end A142802

/-! ## A142802.P12158235962113139323

`A008472(p?[A158071(n+1)-A008486(n)])`
-/

namespace A142802.P12158235962113139323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (n + 1) - A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142802.P12158235962113139323

namespace A142802

/-- `A008472(p?[A158071(n+1)-A008486(n)])` -/
def P12158235962113139323.Spec : Prop :=
  ∀ n, P12158235962113139323.a n = A142802 (n + 1)

end A142802

/-!
# A142803: Primes congruent to 5 mod 61.

The programs for A142803, the canonical program `A142803.P16037689655801771418` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142803 has offset 1).

The definition of A142803 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1306 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142803.P16037689655801771418

`p?[61*n+5]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142803

/-- `p?[61*n+5]` -/
def P16037689655801771418.Spec : Prop :=
  ∀ n, (P16037689655801771418.a n : ℤ) = A142803 (n + 1)

theorem P16037689655801771418.correct : P16037689655801771418.Spec := by
  intro n
  simp only [A142803, Nat.add_sub_cancel]

end A142803

/-! ## A142803.P4151885452365171680

`or(1, p?[a(n-1)+61])` with `a(0)=5`
-/

namespace A142803.P4151885452365171680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 61

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142803.P4151885452365171680

namespace A142803

/-- `or(1, p?[a(n-1)+61])` -/
def P4151885452365171680.Spec : Prop :=
  ∀ n, (P4151885452365171680.a n : ℤ) = A142803 (n + 1)

end A142803

/-! ## A142803.P13145515145559949019

`∏{p}[p?[a(n-1)+61], #]` with `a(0)=5`
-/

namespace A142803.P13145515145559949019
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f2 =>
  f2 (n - 1) + 61

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A142803.P13145515145559949019

namespace A142803

/-- `∏{p}[p?[a(n-1)+61], #]` -/
def P13145515145559949019.Spec : Prop :=
  ∀ n, (P13145515145559949019.a n : ℤ) = A142803 (n + 1)

end A142803

/-! ## A142803.P4823455141988421183

`round(sqrt(p?[a(n-1)+61]²+1))` with `a(0)=5`
-/

namespace A142803.P4823455141988421183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 61

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 + 1 : ℝ))

end

end A142803.P4823455141988421183

namespace A142803

/-- `round(sqrt(p?[a(n-1)+61]²+1))` -/
def P4823455141988421183.Spec : Prop :=
  ∀ n, P4823455141988421183.a n = A142803 (n + 1)

end A142803

/-! ## A142803.P11811057766940257258

`A000027(p?[a(n-1)+61])` with `a(0)=5`
-/

namespace A142803.P11811057766940257258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 61

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142803.P11811057766940257258

namespace A142803

/-- `A000027(p?[a(n-1)+61])` -/
def P11811057766940257258.Spec : Prop :=
  ∀ n, P11811057766940257258.a n = A142803 (n + 1)

end A142803

/-! ## A142803.P11117059603226373090

`record[A020639(61*n+5)]`
-/

namespace A142803.P11117059603226373090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (61 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142803.P11117059603226373090

namespace A142803

/-- `record[A020639(61*n+5)]` -/
def P11117059603226373090.Spec : Prop :=
  ∀ n, P11117059603226373090.a n = A142803 (n + 1)

end A142803

/-! ## A142803.P17664568432328719273

`record[A006530(A161709(n)+A102439(n))]`
-/

namespace A142803.P17664568432328719273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A161709 n + A102439 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142803.P17664568432328719273

namespace A142803

/-- `record[A006530(A161709(n)+A102439(n))]` -/
def P17664568432328719273.Spec : Prop :=
  ∀ n, P17664568432328719273.a n = A142803 (n + 1)

end A142803

/-!
# A142804: Primes congruent to 6 mod 61.

The programs for A142804, the canonical program `A142804.P14932335239259171558` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142804 has offset 1).

The definition of A142804 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1320 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142804.P14932335239259171558

`p?[61*n+6]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142804

/-- `p?[61*n+6]` -/
def P14932335239259171558.Spec : Prop :=
  ∀ n, (P14932335239259171558.a n : ℤ) = A142804 (n + 1)

theorem P14932335239259171558.correct : P14932335239259171558.Spec := by
  intro n
  simp only [A142804, Nat.add_sub_cancel]

end A142804

/-! ## A142804.P4910550140057955835

`∑{p}[p?[a(n-1)+61], #]` with `a(0)=6`
-/

namespace A142804.P4910550140057955835
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f2 =>
  f2 (n - 1) + 61

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A142804.P4910550140057955835

namespace A142804

/-- `∑{p}[p?[a(n-1)+61], #]` -/
def P4910550140057955835.Spec : Prop :=
  ∀ n, (P4910550140057955835.a n : ℤ) = A142804 (n + 1)

end A142804

/-! ## A142804.P9669101104512242767

`∏{p}[p?[a(n-1)+61], #]` with `a(0)=6`
-/

namespace A142804.P9669101104512242767
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f2 =>
  f2 (n - 1) + 61

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A142804.P9669101104512242767

namespace A142804

/-- `∏{p}[p?[a(n-1)+61], #]` -/
def P9669101104512242767.Spec : Prop :=
  ∀ n, (P9669101104512242767.a n : ℤ) = A142804 (n + 1)

end A142804

/-! ## A142804.P120077200129348894

`lcm(1-4/2, p?[a(n-1)+61])` with `a(0)=8, a(1)=6`
-/

namespace A142804.P120077200129348894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 6] fun n f1 =>
  f1 (n - 1) + 61

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (1 - (4 : ℚ) / 2)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A142804.P120077200129348894

namespace A142804

/-- `lcm(1-4/2, p?[a(n-1)+61])` -/
def P120077200129348894.Spec : Prop :=
  ∀ n, (P120077200129348894.a n : ℤ) = A142804 (n + 1)

end A142804

/-! ## A142804.P12681828315778204865

`∑{p}[p?[A304839(n+1)-17], #]`
-/

namespace A142804.P12681828315778204865
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 17

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142804.P12681828315778204865

namespace A142804

/-- `∑{p}[p?[A304839(n+1)-17], #]` -/
def P12681828315778204865.Spec : Prop :=
  ∀ n, (P12681828315778204865.a n : ℤ) = A142804 (n + 1)

end A142804

/-! ## A142804.P473790748876580587

`record[A006530(61*(n+1)+6)]`
-/

namespace A142804.P473790748876580587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (61 * (n + 1) + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142804.P473790748876580587

namespace A142804

/-- `record[A006530(61*(n+1)+6)]` -/
def P473790748876580587.Spec : Prop :=
  ∀ n, P473790748876580587.a n = A142804 (n + 1)

end A142804

/-! ## A142804.P14674759936507712245

`record[A020639(61*(n+1)+6)]`
-/

namespace A142804.P14674759936507712245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (61 * (n + 1) + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142804.P14674759936507712245

namespace A142804

/-- `record[A020639(61*(n+1)+6)]` -/
def P14674759936507712245.Spec : Prop :=
  ∀ n, P14674759936507712245.a n = A142804 (n + 1)

end A142804

/-! ## A142804.P12656603494754980536

`A000265(p?[A304839(n+1)-17])`
-/

namespace A142804.P12656603494754980536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142804.P12656603494754980536

namespace A142804

/-- `A000265(p?[A304839(n+1)-17])` -/
def P12656603494754980536.Spec : Prop :=
  ∀ n, P12656603494754980536.a n = A142804 (n + 1)

end A142804

/-!
# A142805: Primes congruent to 7 mod 61.

The programs for A142805, the canonical program `A142805.P7916996523121626458` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142805 has offset 1).

The definition of A142805 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1315 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142805.P7916996523121626458

`p?[61*n+7]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142805

/-- `p?[61*n+7]` -/
def P7916996523121626458.Spec : Prop :=
  ∀ n, (P7916996523121626458.a n : ℤ) = A142805 (n + 1)

theorem P7916996523121626458.correct : P7916996523121626458.Spec := by
  intro n
  simp only [A142805, Nat.add_sub_cancel]

end A142805

/-! ## A142805.P17318749005450743193

`or(1, p?[a(n-1)+61])` with `a(0)=7`
-/

namespace A142805.P17318749005450743193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  f1 (n - 1) + 61

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142805.P17318749005450743193

namespace A142805

/-- `or(1, p?[a(n-1)+61])` -/
def P17318749005450743193.Spec : Prop :=
  ∀ n, (P17318749005450743193.a n : ℤ) = A142805 (n + 1)

end A142805

/-! ## A142805.P13057460424775961110

`or(1, p?[A139610(n)+A008598(n)-3])`
-/

namespace A142805.P13057460424775961110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A008598 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142805.P13057460424775961110

namespace A142805

/-- `or(1, p?[A139610(n)+A008598(n)-3])` -/
def P13057460424775961110.Spec : Prop :=
  ∀ n, P13057460424775961110.a n = A142805 (n + 1)

end A142805

/-! ## A142805.P17618655504262144146

`p?[A139610(n)+A008598(n)-3]%A189988(n+1)`
-/

namespace A142805.P17618655504262144146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A008598 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A189988 (n + 1))

end

end A142805.P17618655504262144146

namespace A142805

/-- `p?[A139610(n)+A008598(n)-3]%A189988(n+1)` -/
def P17618655504262144146.Spec : Prop :=
  ∀ n, P17618655504262144146.a n = A142805 (n + 1)

end A142805

/-! ## A142805.P14345429419964921461

`record[A020639(61*n+7)]`
-/

namespace A142805.P14345429419964921461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (61 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142805.P14345429419964921461

namespace A142805

/-- `record[A020639(61*n+7)]` -/
def P14345429419964921461.Spec : Prop :=
  ∀ n, P14345429419964921461.a n = A142805 (n + 1)

end A142805

/-! ## A142805.P7193648005261450764

`A000265(p?[A139610(n)+A008598(n)-3])`
-/

namespace A142805.P7193648005261450764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A008598 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142805.P7193648005261450764

namespace A142805

/-- `A000265(p?[A139610(n)+A008598(n)-3])` -/
def P7193648005261450764.Spec : Prop :=
  ∀ n, P7193648005261450764.a n = A142805 (n + 1)

end A142805

/-!
# A142806: Primes congruent to 8 mod 61.

The programs for A142806, the canonical program `A142806.P17008932734811522984` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142806 has offset 1).

The definition of A142806 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1321 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142806.P17008932734811522984

`p?[61*n+8]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142806

/-- `p?[61*n+8]` -/
def P17008932734811522984.Spec : Prop :=
  ∀ n, (P17008932734811522984.a n : ℤ) = A142806 (n + 1)

theorem P17008932734811522984.correct : P17008932734811522984.Spec := by
  intro n
  simp only [A142806, Nat.add_sub_cancel]

end A142806

/-! ## A142806.P5748630443422207062

`or(1, p?[a(n-1)+61])` with `a(0)=8`
-/

namespace A142806.P5748630443422207062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f1 =>
  f1 (n - 1) + 61

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142806.P5748630443422207062

namespace A142806

/-- `or(1, p?[a(n-1)+61])` -/
def P5748630443422207062.Spec : Prop :=
  ∀ n, (P5748630443422207062.a n : ℤ) = A142806 (n + 1)

end A142806

/-! ## A142806.P8727431046777747506

`or(1, p?[A304839(n+1)-15])`
-/

namespace A142806.P8727431046777747506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142806.P8727431046777747506

namespace A142806

/-- `or(1, p?[A304839(n+1)-15])` -/
def P8727431046777747506.Spec : Prop :=
  ∀ n, P8727431046777747506.a n = A142806 (n + 1)

end A142806

/-! ## A142806.P8394506450332451877

`p?[A304839(n+1)-15]%A100846(n)²`
-/

namespace A142806.P8394506450332451877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A100846 n ^ 2)

end

end A142806.P8394506450332451877

namespace A142806

/-- `p?[A304839(n+1)-15]%A100846(n)²` -/
def P8394506450332451877.Spec : Prop :=
  ∀ n, P8394506450332451877.a n = A142806 (n + 1)

end A142806

/-! ## A142806.P12804416457568465024

`p?[A304839(n+1)-15]/A093178(A266303(n))`
-/

namespace A142806.P12804416457568465024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 15

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A093178 (A266303 n).toNat : ℚ)

end

end A142806.P12804416457568465024

namespace A142806

/-- `p?[A304839(n+1)-15]/A093178(A266303(n))` -/
def P12804416457568465024.Spec : Prop :=
  ∀ n, P12804416457568465024.a n = (A142806 (n + 1) : ℚ)

end A142806

/-! ## A142806.P16876165995856227501

`A000027(p?[A304839(n+1)-15])`
-/

namespace A142806.P16876165995856227501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142806.P16876165995856227501

namespace A142806

/-- `A000027(p?[A304839(n+1)-15])` -/
def P16876165995856227501.Spec : Prop :=
  ∀ n, P16876165995856227501.a n = A142806 (n + 1)

end A142806

/-! ## A142806.P11928941484869908094

`A000027(p?[A157336(n+1)-A016777(n)-2])`
-/

namespace A142806.P11928941484869908094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157336 (n + 1) - A016777 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142806.P11928941484869908094

namespace A142806

/-- `A000027(p?[A157336(n+1)-A016777(n)-2])` -/
def P11928941484869908094.Spec : Prop :=
  ∀ n, P11928941484869908094.a n = A142806 (n + 1)

end A142806

/-! ## A142806.P2737826605147556079

`A000265(p?[A304839(n+1)-15])`
-/

namespace A142806.P2737826605147556079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142806.P2737826605147556079

namespace A142806

/-- `A000265(p?[A304839(n+1)-15])` -/
def P2737826605147556079.Spec : Prop :=
  ∀ n, P2737826605147556079.a n = A142806 (n + 1)

end A142806

/-! ## A142806.P10780828276318819620

`A001414(p?[A304839(n+1)-15])`
-/

namespace A142806.P10780828276318819620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142806.P10780828276318819620

namespace A142806

/-- `A001414(p?[A304839(n+1)-15])` -/
def P10780828276318819620.Spec : Prop :=
  ∀ n, P10780828276318819620.a n = A142806 (n + 1)

end A142806

/-! ## A142806.P13246593298321215789

`A007913(p?[A304839(n+1)-15])`
-/

namespace A142806.P13246593298321215789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142806.P13246593298321215789

namespace A142806

/-- `A007913(p?[A304839(n+1)-15])` -/
def P13246593298321215789.Spec : Prop :=
  ∀ n, P13246593298321215789.a n = A142806 (n + 1)

end A142806

/-! ## A142806.P2594308426251679886

`A007947(p?[A304839(n+1)-15])`
-/

namespace A142806.P2594308426251679886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142806.P2594308426251679886

namespace A142806

/-- `A007947(p?[A304839(n+1)-15])` -/
def P2594308426251679886.Spec : Prop :=
  ∀ n, P2594308426251679886.a n = A142806 (n + 1)

end A142806

/-! ## A142806.P13912210878795592148

`A008475(p?[A304839(n+1)-15])`
-/

namespace A142806.P13912210878795592148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142806.P13912210878795592148

namespace A142806

/-- `A008475(p?[A304839(n+1)-15])` -/
def P13912210878795592148.Spec : Prop :=
  ∀ n, P13912210878795592148.a n = A142806 (n + 1)

end A142806

/-! ## A142806.P10655660004502692709

`∑{d}[p?[A304839(n+1)-15], A000010(#)]`
-/

namespace A142806.P10655660004502692709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 15

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A142806.P10655660004502692709

namespace A142806

/-- `∑{d}[p?[A304839(n+1)-15], A000010(#)]` -/
def P10655660004502692709.Spec : Prop :=
  ∀ n, P10655660004502692709.a n = A142806 (n + 1)

end A142806

/-! ## A142806.P9711730594323757694

`record[A006530(A008592(6*(n+3)+1)+n+1)]`
-/

namespace A142806.P9711730594323757694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008592 (6 * (n + 3) + 1) + (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142806.P9711730594323757694

namespace A142806

/-- `record[A006530(A008592(6*(n+3)+1)+n+1)]` -/
def P9711730594323757694.Spec : Prop :=
  ∀ n, P9711730594323757694.a n = A142806 (n + 1)

end A142806

/-! ## A142806.P15260876277593468073

`A000265(p?[A139607(n)+A139279(n+1)-7])`
-/

namespace A142806.P15260876277593468073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139607 n + A139279 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142806.P15260876277593468073

namespace A142806

/-- `A000265(p?[A139607(n)+A139279(n+1)-7])` -/
def P15260876277593468073.Spec : Prop :=
  ∀ n, P15260876277593468073.a n = A142806 (n + 1)

end A142806

/-!
# A142807: Primes congruent to 9 mod 61.

The programs for A142807, the canonical program `A142807.P3249392603131882975` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142807 has offset 1).

The definition of A142807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1306 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142807.P3249392603131882975

`p?[61*n+9]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142807

/-- `p?[61*n+9]` -/
def P3249392603131882975.Spec : Prop :=
  ∀ n, (P3249392603131882975.a n : ℤ) = A142807 (n + 1)

theorem P3249392603131882975.correct : P3249392603131882975.Spec := by
  intro n
  simp only [A142807, Nat.add_sub_cancel]

end A142807

/-! ## A142807.P8076707312763942749

`or(1, p?[A139609(n)+A008607(n)])`
-/

namespace A142807.P8076707312763942749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A008607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142807.P8076707312763942749

namespace A142807

/-- `or(1, p?[A139609(n)+A008607(n)])` -/
def P8076707312763942749.Spec : Prop :=
  ∀ n, P8076707312763942749.a n = A142807 (n + 1)

end A142807

/-! ## A142807.P3156263979993750836

`p?[A139609(n)+A008607(n)]%A016973(n)`
-/

namespace A142807.P3156263979993750836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A008607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A016973 n)

end

end A142807.P3156263979993750836

namespace A142807

/-- `p?[A139609(n)+A008607(n)]%A016973(n)` -/
def P3156263979993750836.Spec : Prop :=
  ∀ n, P3156263979993750836.a n = A142807 (n + 1)

end A142807

/-! ## A142807.P7337233359169938556

`A000007(n+1)+p?[A139609(n)+A008607(n)]`
-/

namespace A142807.P7337233359169938556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A008607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142807.P7337233359169938556

namespace A142807

/-- `A000007(n+1)+p?[A139609(n)+A008607(n)]` -/
def P7337233359169938556.Spec : Prop :=
  ∀ n, P7337233359169938556.a n = A142807 (n + 1)

end A142807

/-! ## A142807.P138084689883031094

`p?[A139609(n)+A008607(n)]/((-1)^A001222(n+1))²`
-/

namespace A142807.P138084689883031094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A008607 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / ((-1 : ℚ) ^ (A001222 (n + 1) : ℤ)) ^ 2

end

end A142807.P138084689883031094

namespace A142807

/-- `p?[A139609(n)+A008607(n)]/((-1)^A001222(n+1))²` -/
def P138084689883031094.Spec : Prop :=
  ∀ n, P138084689883031094.a n = (A142807 (n + 1) : ℚ)

end A142807

/-! ## A142807.P6173830898455040133

`record[A020639(A157951(n+1)-(6*n-2))]`
-/

namespace A142807.P6173830898455040133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A157951 (n + 1) - ((6 * n : ℤ) - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142807.P6173830898455040133

namespace A142807

/-- `record[A020639(A157951(n+1)-(6*n-2))]` -/
def P6173830898455040133.Spec : Prop :=
  ∀ n, P6173830898455040133.a n = A142807 (n + 1)

end A142807

/-! ## A142807.P14284418615798603280

`A000265(p?[A139609(n)+A008607(n)])`
-/

namespace A142807.P14284418615798603280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A008607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142807.P14284418615798603280

namespace A142807

/-- `A000265(p?[A139609(n)+A008607(n)])` -/
def P14284418615798603280.Spec : Prop :=
  ∀ n, P14284418615798603280.a n = A142807 (n + 1)

end A142807

/-! ## A142807.P1921876750630625768

`A001414(p?[A139609(n)+A008607(n)])`
-/

namespace A142807.P1921876750630625768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A008607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142807.P1921876750630625768

namespace A142807

/-- `A001414(p?[A139609(n)+A008607(n)])` -/
def P1921876750630625768.Spec : Prop :=
  ∀ n, P1921876750630625768.a n = A142807 (n + 1)

end A142807

/-! ## A142807.P5309631165971433790

`A007947(p?[A139609(n)+A008607(n)])`
-/

namespace A142807.P5309631165971433790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A008607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142807.P5309631165971433790

namespace A142807

/-- `A007947(p?[A139609(n)+A008607(n)])` -/
def P5309631165971433790.Spec : Prop :=
  ∀ n, P5309631165971433790.a n = A142807 (n + 1)

end A142807

/-! ## A142807.P1114114500517286228

`A008472(p?[A139609(n)+A008607(n)])`
-/

namespace A142807.P1114114500517286228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A008607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142807.P1114114500517286228

namespace A142807

/-- `A008472(p?[A139609(n)+A008607(n)])` -/
def P1114114500517286228.Spec : Prop :=
  ∀ n, P1114114500517286228.a n = A142807 (n + 1)

end A142807

/-!
# A142808: Primes congruent to 10 mod 61.

The programs for A142808, the canonical program `A142808.P11157494017108577309` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142808 has offset 1).

The definition of A142808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1312 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142808.P11157494017108577309

`p?[61*n+10]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142808

/-- `p?[61*n+10]` -/
def P11157494017108577309.Spec : Prop :=
  ∀ n, (P11157494017108577309.a n : ℤ) = A142808 (n + 1)

theorem P11157494017108577309.correct : P11157494017108577309.Spec := by
  intro n
  simp only [A142808, Nat.add_sub_cancel]

end A142808

/-! ## A142808.P8878409010965197623

`∏{p}[p?[a(n-1)+61], #]` with `a(0)=10, a(1)=10`
-/

namespace A142808.P8878409010965197623
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [10, 10] fun n f2 =>
  f2 (n - 1) + 61

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A142808.P8878409010965197623

namespace A142808

/-- `∏{p}[p?[a(n-1)+61], #]` -/
def P8878409010965197623.Spec : Prop :=
  ∀ n, (P8878409010965197623.a n : ℤ) = A142808 (n + 1)

end A142808

/-! ## A142808.P2832805177718716144

`lcm(p?[a(n-1)+61], A020985(n))` with `a(0)=10`
-/

namespace A142808.P2832805177718716144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10] fun n f1 =>
  f1 (n - 1) + 61

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (A020985 n)

end

end A142808.P2832805177718716144

namespace A142808

/-- `lcm(p?[a(n-1)+61], A020985(n))` -/
def P2832805177718716144.Spec : Prop :=
  ∀ n, (P2832805177718716144.a n : ℤ) = A142808 (n + 1)

end A142808

/-! ## A142808.P3349389999485919673

`A000027(p?[A139610(n)+A008598(n)])`
-/

namespace A142808.P3349389999485919673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A008598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142808.P3349389999485919673

namespace A142808

/-- `A000027(p?[A139610(n)+A008598(n)])` -/
def P3349389999485919673.Spec : Prop :=
  ∀ n, P3349389999485919673.a n = A142808 (n + 1)

end A142808

/-! ## A142808.P13767865798528741730

`A000027(p?[A270296(n+1)+A135631(n)])`
-/

namespace A142808.P13767865798528741730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270296 (n + 1) + A135631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142808.P13767865798528741730

namespace A142808

/-- `A000027(p?[A270296(n+1)+A135631(n)])` -/
def P13767865798528741730.Spec : Prop :=
  ∀ n, P13767865798528741730.a n = A142808 (n + 1)

end A142808

/-! ## A142808.P3187391194915602290

`record[A020639(61*(n+1)+10)]`
-/

namespace A142808.P3187391194915602290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (61 * (n + 1) + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142808.P3187391194915602290

namespace A142808

/-- `record[A020639(61*(n+1)+10)]` -/
def P3187391194915602290.Spec : Prop :=
  ∀ n, P3187391194915602290.a n = A142808 (n + 1)

end A142808

/-! ## A142808.P4699721812944142601

`A008472(p?[A139610(n)+A008598(n)])`
-/

namespace A142808.P4699721812944142601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A008598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142808.P4699721812944142601

namespace A142808

/-- `A008472(p?[A139610(n)+A008598(n)])` -/
def P4699721812944142601.Spec : Prop :=
  ∀ n, P4699721812944142601.a n = A142808 (n + 1)

end A142808

/-! ## A142808.P11675630878598308931

`A000265(p?[A157336(n+1)-A166138(n)])`
-/

namespace A142808.P11675630878598308931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157336 (n + 1) - A166138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142808.P11675630878598308931

namespace A142808

/-- `A000265(p?[A157336(n+1)-A166138(n)])` -/
def P11675630878598308931.Spec : Prop :=
  ∀ n, P11675630878598308931.a n = A142808 (n + 1)

end A142808

/-! ## A142808.P5503094588638840413

`A034699(p?[A157921(n+1)-A008593(n)])`
-/

namespace A142808.P5503094588638840413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157921 (n + 1) - A008593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142808.P5503094588638840413

namespace A142808

/-- `A034699(p?[A157921(n+1)-A008593(n)])` -/
def P5503094588638840413.Spec : Prop :=
  ∀ n, P5503094588638840413.a n = A142808 (n + 1)

end A142808

/-!
# A142809: Primes congruent to 11 mod 61.

The programs for A142809, the canonical program `A142809.P10013660271663785681` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142809 has offset 1).

The definition of A142809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1288 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142809.P10013660271663785681

`p?[61*n+11]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142809

/-- `p?[61*n+11]` -/
def P10013660271663785681.Spec : Prop :=
  ∀ n, (P10013660271663785681.a n : ℤ) = A142809 (n + 1)

theorem P10013660271663785681.correct : P10013660271663785681.Spec := by
  intro n
  simp only [A142809, Nat.add_sub_cancel]

end A142809

/-! ## A142809.P16527842181002105040

`or(1, p?[A139611(n)+A016969(n)-5])`
-/

namespace A142809.P16527842181002105040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n + A016969 n - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142809.P16527842181002105040

namespace A142809

/-- `or(1, p?[A139611(n)+A016969(n)-5])` -/
def P16527842181002105040.Spec : Prop :=
  ∀ n, P16527842181002105040.a n = A142809 (n + 1)

end A142809

/-! ## A142809.P10236760996633152288

`p?[A139611(n)+A016969(n)-5]%A017115(n)`
-/

namespace A142809.P10236760996633152288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n + A016969 n - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017115 n)

end

end A142809.P10236760996633152288

namespace A142809

/-- `p?[A139611(n)+A016969(n)-5]%A017115(n)` -/
def P10236760996633152288.Spec : Prop :=
  ∀ n, P10236760996633152288.a n = A142809 (n + 1)

end A142809

/-! ## A142809.P10796212977078900187

`p?[A139611(n)+A008588(n)]%A074985(n+1)²`
-/

namespace A142809.P10796212977078900187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n + A008588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A074985 (n + 1) ^ 2)

end

end A142809.P10796212977078900187

namespace A142809

/-- `p?[A139611(n)+A008588(n)]%A074985(n+1)²` -/
def P10796212977078900187.Spec : Prop :=
  ∀ n, P10796212977078900187.a n = A142809 (n + 1)

end A142809

/-! ## A142809.P5529504052705022609

`A000027(p?[A139611(n)+A008588(n)])`
-/

namespace A142809.P5529504052705022609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n + A008588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142809.P5529504052705022609

namespace A142809

/-- `A000027(p?[A139611(n)+A008588(n)])` -/
def P5529504052705022609.Spec : Prop :=
  ∀ n, P5529504052705022609.a n = A142809 (n + 1)

end A142809

/-! ## A142809.P17140269773560985033

`filter[A241406(2*n+1), A010051(#)]`
-/

namespace A142809.P17140269773560985033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241406 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A142809.P17140269773560985033

namespace A142809

/-- `filter[A241406(2*n+1), A010051(#)]` -/
def P17140269773560985033.Spec : Prop :=
  ∀ n, P17140269773560985033.a n = A142809 (n + 1)

end A142809

/-! ## A142809.P18235222803697482262

`A007947(p?[A139611(n)+A008588(n)])`
-/

namespace A142809.P18235222803697482262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n + A008588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142809.P18235222803697482262

namespace A142809

/-- `A007947(p?[A139611(n)+A008588(n)])` -/
def P18235222803697482262.Spec : Prop :=
  ∀ n, P18235222803697482262.a n = A142809 (n + 1)

end A142809

/-! ## A142809.P14724161577285374824

`A000265(p?[A139611(n)+A016969(n)-5])`
-/

namespace A142809.P14724161577285374824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n + A016969 n - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142809.P14724161577285374824

namespace A142809

/-- `A000265(p?[A139611(n)+A016969(n)-5])` -/
def P14724161577285374824.Spec : Prop :=
  ∀ n, P14724161577285374824.a n = A142809 (n + 1)

end A142809

/-! ## A142809.P3122888016616862543

`A000265(p?[A139607(n)+A139279(n+1)-4])`
-/

namespace A142809.P3122888016616862543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139607 n + A139279 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142809.P3122888016616862543

namespace A142809

/-- `A000265(p?[A139607(n)+A139279(n+1)-4])` -/
def P3122888016616862543.Spec : Prop :=
  ∀ n, P3122888016616862543.a n = A142809 (n + 1)

end A142809

/-! ## A142809.P14765964734649833642

`filter[A241406(2*n+1), A302777(#)]`
-/

namespace A142809.P14765964734649833642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241406 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A142809.P14765964734649833642

namespace A142809

/-- `filter[A241406(2*n+1), A302777(#)]` -/
def P14765964734649833642.Spec : Prop :=
  ∀ n, P14765964734649833642.a n = A142809 (n + 1)

end A142809

/-!
# A142810: Primes congruent to 12 mod 61.

The programs for A142810, the canonical program `A142810.P4981445707121693173` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142810 has offset 1).

The definition of A142810 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1320 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142810.P4981445707121693173

`p?[61*n+12]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142810

/-- `p?[61*n+12]` -/
def P4981445707121693173.Spec : Prop :=
  ∀ n, (P4981445707121693173.a n : ℤ) = A142810 (n + 1)

theorem P4981445707121693173.correct : P4981445707121693173.Spec := by
  intro n
  simp only [A142810, Nat.add_sub_cancel]

end A142810

/-! ## A142810.P11036473107006969885

`or(1, p?[a(n-1)+61])` with `a(0)=12`
-/

namespace A142810.P11036473107006969885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [12] fun n f1 =>
  f1 (n - 1) + 61

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142810.P11036473107006969885

namespace A142810

/-- `or(1, p?[a(n-1)+61])` -/
def P11036473107006969885.Spec : Prop :=
  ∀ n, (P11036473107006969885.a n : ℤ) = A142810 (n + 1)

end A142810

/-! ## A142810.P14438189227628727265

`∏{p}[p?[a(n-1)+61], #]` with `a(0)=12`
-/

namespace A142810.P14438189227628727265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [12] fun n f2 =>
  f2 (n - 1) + 61

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A142810.P14438189227628727265

namespace A142810

/-- `∏{p}[p?[a(n-1)+61], #]` -/
def P14438189227628727265.Spec : Prop :=
  ∀ n, (P14438189227628727265.a n : ℤ) = A142810 (n + 1)

end A142810

/-! ## A142810.P9969286146269452819

`round(sqrt(p?[a(n-1)+61]²+1))` with `a(0)=12`
-/

namespace A142810.P9969286146269452819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [12] fun n f1 =>
  f1 (n - 1) + 61

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 + 1 : ℝ))

end

end A142810.P9969286146269452819

namespace A142810

/-- `round(sqrt(p?[a(n-1)+61]²+1))` -/
def P9969286146269452819.Spec : Prop :=
  ∀ n, P9969286146269452819.a n = A142810 (n + 1)

end A142810

/-! ## A142810.P6018795597002689968

`∑{p}[p?[A053741(n)+A017437(n)+49], #]`
-/

namespace A142810.P6018795597002689968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017437 n + 49

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142810.P6018795597002689968

namespace A142810

/-- `∑{p}[p?[A053741(n)+A017437(n)+49], #]` -/
def P6018795597002689968.Spec : Prop :=
  ∀ n, (P6018795597002689968.a n : ℤ) = A142810 (n + 1)

end A142810

/-! ## A142810.P1269603697518722448

`record[A006530(61*(n+1)+12)]`
-/

namespace A142810.P1269603697518722448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (61 * (n + 1) + 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142810.P1269603697518722448

namespace A142810

/-- `record[A006530(61*(n+1)+12)]` -/
def P1269603697518722448.Spec : Prop :=
  ∀ n, P1269603697518722448.a n = A142810 (n + 1)

end A142810

/-! ## A142810.P15636777520963300970

`record[A020639(61*(n+1)+12)]`
-/

namespace A142810.P15636777520963300970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (61 * (n + 1) + 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142810.P15636777520963300970

namespace A142810

/-- `record[A020639(61*(n+1)+12)]` -/
def P15636777520963300970.Spec : Prop :=
  ∀ n, P15636777520963300970.a n = A142810 (n + 1)

end A142810

/-! ## A142810.P899889673182383349

`A007913(p?[a(n-1)+61])` with `a(0)=0, a(1)=12`
-/

namespace A142810.P899889673182383349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 12] fun n f1 =>
  f1 (n - 1) + 61

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142810.P899889673182383349

namespace A142810

/-- `A007913(p?[a(n-1)+61])` -/
def P899889673182383349.Spec : Prop :=
  ∀ n, P899889673182383349.a n = A142810 (n + 1)

end A142810

/-! ## A142810.P7551357921848540741

`A008472(p?[A304839(n+1)-11])`
-/

namespace A142810.P7551357921848540741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142810.P7551357921848540741

namespace A142810

/-- `A008472(p?[A304839(n+1)-11])` -/
def P7551357921848540741.Spec : Prop :=
  ∀ n, P7551357921848540741.a n = A142810 (n + 1)

end A142810

/-! ## A142810.P9077488486846034112

`record[A001414(A082369(2*n+3)+n)]`
-/

namespace A142810.P9077488486846034112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A082369 (2 * n + 3) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142810.P9077488486846034112

namespace A142810

/-- `record[A001414(A082369(2*n+3)+n)]` -/
def P9077488486846034112.Spec : Prop :=
  ∀ n, P9077488486846034112.a n = A142810 (n + 1)

end A142810

/-!
# A142811: Primes congruent to 13 mod 61.

The programs for A142811, the canonical program `A142811.P10089377442052219553` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142811 has offset 1).

The definition of A142811 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1314 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142811.P10089377442052219553

`p?[61*n+13]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142811

/-- `p?[61*n+13]` -/
def P10089377442052219553.Spec : Prop :=
  ∀ n, (P10089377442052219553.a n : ℤ) = A142811 (n + 1)

theorem P10089377442052219553.correct : P10089377442052219553.Spec := by
  intro n
  simp only [A142811, Nat.add_sub_cancel]

end A142811

/-! ## A142811.P8996055665346391921

`or(1, p?[a(n-1)+61])` with `a(0)=13`
-/

namespace A142811.P8996055665346391921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [13] fun n f1 =>
  f1 (n - 1) + 61

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142811.P8996055665346391921

namespace A142811

/-- `or(1, p?[a(n-1)+61])` -/
def P8996055665346391921.Spec : Prop :=
  ∀ n, (P8996055665346391921.a n : ℤ) = A142811 (n + 1)

end A142811

/-! ## A142811.P244056832397393160

`or(1, p?[A304839(n+1)-10])`
-/

namespace A142811.P244056832397393160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142811.P244056832397393160

namespace A142811

/-- `or(1, p?[A304839(n+1)-10])` -/
def P244056832397393160.Spec : Prop :=
  ∀ n, P244056832397393160.a n = A142811 (n + 1)

end A142811

/-! ## A142811.P8534384034056861709

`A215339(A215355(n+1))+p?[A304839(n+1)-10]`
-/

namespace A142811.P8534384034056861709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215339 (A215355 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142811.P8534384034056861709

namespace A142811

/-- `A215339(A215355(n+1))+p?[A304839(n+1)-10]` -/
def P8534384034056861709.Spec : Prop :=
  ∀ n, P8534384034056861709.a n = A142811 (n + 1)

end A142811

/-! ## A142811.P17605041828133205028

`A215339(A215359(n+1))+p?[A304839(n+1)-10]`
-/

namespace A142811.P17605041828133205028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215339 (A215359 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142811.P17605041828133205028

namespace A142811

/-- `A215339(A215359(n+1))+p?[A304839(n+1)-10]` -/
def P17605041828133205028.Spec : Prop :=
  ∀ n, P17605041828133205028.a n = A142811 (n + 1)

end A142811

/-! ## A142811.P14672367710201842843

`record[A020639(61*n+13)]`
-/

namespace A142811.P14672367710201842843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (61 * n + 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142811.P14672367710201842843

namespace A142811

/-- `record[A020639(61*n+13)]` -/
def P14672367710201842843.Spec : Prop :=
  ∀ n, P14672367710201842843.a n = A142811 (n + 1)

end A142811

/-! ## A142811.P10037673298812924520

`A007913(p?[A304839(n+1)-10])`
-/

namespace A142811.P10037673298812924520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142811.P10037673298812924520

namespace A142811

/-- `A007913(p?[A304839(n+1)-10])` -/
def P10037673298812924520.Spec : Prop :=
  ∀ n, P10037673298812924520.a n = A142811 (n + 1)

end A142811

/-! ## A142811.P3359477570009672952

`A000265(p?[A139611(n)+A016969(n)-3])`
-/

namespace A142811.P3359477570009672952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n + A016969 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142811.P3359477570009672952

namespace A142811

/-- `A000265(p?[A139611(n)+A016969(n)-3])` -/
def P3359477570009672952.Spec : Prop :=
  ∀ n, P3359477570009672952.a n = A142811 (n + 1)

end A142811

/-!
# A142812: Primes congruent to 14 mod 61.

The programs for A142812, the canonical program `A142812.P4748277480661010641` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142812 has offset 1).

The definition of A142812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1312 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142812.P4748277480661010641

`p?[61*n+14]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142812

/-- `p?[61*n+14]` -/
def P4748277480661010641.Spec : Prop :=
  ∀ n, (P4748277480661010641.a n : ℤ) = A142812 (n + 1)

theorem P4748277480661010641.correct : P4748277480661010641.Spec := by
  intro n
  simp only [A142812, Nat.add_sub_cancel]

end A142812

/-! ## A142812.P5112309933791608593

`∏{d}[p?[A304205(n+1)+A017545(n)], #]`
-/

namespace A142812.P5112309933791608593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A017545 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A142812.P5112309933791608593

namespace A142812

/-- `∏{d}[p?[A304205(n+1)+A017545(n)], #]` -/
def P5112309933791608593.Spec : Prop :=
  ∀ n, (P5112309933791608593.a n : ℤ) = A142812 (n + 1)

end A142812

/-! ## A142812.P13507790165551578455

`p?[A304205(n+1)+A017545(n)]%A017343(n)`
-/

namespace A142812.P13507790165551578455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A017545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017343 n)

end

end A142812.P13507790165551578455

namespace A142812

/-- `p?[A304205(n+1)+A017545(n)]%A017343(n)` -/
def P13507790165551578455.Spec : Prop :=
  ∀ n, P13507790165551578455.a n = A142812 (n + 1)

end A142812

/-! ## A142812.P40865979420504191

`p?[A139610(n)+A119413(n+1)]%A157619(n+1)`
-/

namespace A142812.P40865979420504191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A119413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A157619 (n + 1))

end

end A142812.P40865979420504191

namespace A142812

/-- `p?[A139610(n)+A119413(n+1)]%A157619(n+1)` -/
def P40865979420504191.Spec : Prop :=
  ∀ n, P40865979420504191.a n = A142812 (n + 1)

end A142812

/-! ## A142812.P12148836511764893911

`p?[A139610(n)+A119413(n+1)]/A241099(n+1)%2`
-/

namespace A142812.P12148836511764893911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A119413 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Int.tmod (A241099 (n + 1)) 2 : ℚ)

end

end A142812.P12148836511764893911

namespace A142812

/-- `p?[A139610(n)+A119413(n+1)]/A241099(n+1)%2` -/
def P12148836511764893911.Spec : Prop :=
  ∀ n, P12148836511764893911.a n = (A142812 (n + 1) : ℚ)

end A142812

/-! ## A142812.P3667435832935210371

`A000027(p?[A139610(n)+A119413(n+1)])`
-/

namespace A142812.P3667435832935210371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A119413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142812.P3667435832935210371

namespace A142812

/-- `A000027(p?[A139610(n)+A119413(n+1)])` -/
def P3667435832935210371.Spec : Prop :=
  ∀ n, P3667435832935210371.a n = A142812 (n + 1)

end A142812

/-! ## A142812.P7132065499344977924

`A000027(p?[A304205(n+1)+A017545(n)])`
-/

namespace A142812.P7132065499344977924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A017545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142812.P7132065499344977924

namespace A142812

/-- `A000027(p?[A304205(n+1)+A017545(n)])` -/
def P7132065499344977924.Spec : Prop :=
  ∀ n, P7132065499344977924.a n = A142812 (n + 1)

end A142812

/-! ## A142812.P1951119328156524793

`A001414(p?[A139610(n)+A119413(n+1)])`
-/

namespace A142812.P1951119328156524793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A119413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142812.P1951119328156524793

namespace A142812

/-- `A001414(p?[A139610(n)+A119413(n+1)])` -/
def P1951119328156524793.Spec : Prop :=
  ∀ n, P1951119328156524793.a n = A142812 (n + 1)

end A142812

/-! ## A142812.P14329311614000871260

`A007913(p?[A139610(n)+A119413(n+1)])`
-/

namespace A142812.P14329311614000871260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A119413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142812.P14329311614000871260

namespace A142812

/-- `A007913(p?[A139610(n)+A119413(n+1)])` -/
def P14329311614000871260.Spec : Prop :=
  ∀ n, P14329311614000871260.a n = A142812 (n + 1)

end A142812

/-! ## A142812.P12838882455069825389

`A008472(p?[A139610(n)+A119413(n+1)])`
-/

namespace A142812.P12838882455069825389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A119413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142812.P12838882455069825389

namespace A142812

/-- `A008472(p?[A139610(n)+A119413(n+1)])` -/
def P12838882455069825389.Spec : Prop :=
  ∀ n, P12838882455069825389.a n = A142812 (n + 1)

end A142812

/-! ## A142812.P16228653589899915411

`A001414(p?[A304205(n+1)+A017545(n)])`
-/

namespace A142812.P16228653589899915411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A017545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142812.P16228653589899915411

namespace A142812

/-- `A001414(p?[A304205(n+1)+A017545(n)])` -/
def P16228653589899915411.Spec : Prop :=
  ∀ n, P16228653589899915411.a n = A142812 (n + 1)

end A142812

/-! ## A142812.P10218236696436615647

`A007913(p?[A304205(n+1)+A017545(n)])`
-/

namespace A142812.P10218236696436615647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A017545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142812.P10218236696436615647

namespace A142812

/-- `A007913(p?[A304205(n+1)+A017545(n)])` -/
def P10218236696436615647.Spec : Prop :=
  ∀ n, P10218236696436615647.a n = A142812 (n + 1)

end A142812

/-! ## A142812.P12818509473709064763

`A008472(p?[A304205(n+1)+A017545(n)])`
-/

namespace A142812.P12818509473709064763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A017545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142812.P12818509473709064763

namespace A142812

/-- `A008472(p?[A304205(n+1)+A017545(n)])` -/
def P12818509473709064763.Spec : Prop :=
  ∀ n, P12818509473709064763.a n = A142812 (n + 1)

end A142812

/-!
# A142813: Primes congruent to 15 mod 61.

The programs for A142813, the canonical program `A142813.P3118689322364856327` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142813 has offset 1).

The definition of A142813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1302 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142813.P3118689322364856327

`p?[61*n+15]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142813

/-- `p?[61*n+15]` -/
def P3118689322364856327.Spec : Prop :=
  ∀ n, (P3118689322364856327.a n : ℤ) = A142813 (n + 1)

theorem P3118689322364856327.correct : P3118689322364856327.Spec := by
  intro n
  simp only [A142813, Nat.add_sub_cancel]

end A142813

/-! ## A142813.P6099679794192947676

`∑{p}[p?[A139616(n)+A004273(n)], #]`
-/

namespace A142813.P6099679794192947676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139616 n + A004273 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142813.P6099679794192947676

namespace A142813

/-- `∑{p}[p?[A139616(n)+A004273(n)], #]` -/
def P6099679794192947676.Spec : Prop :=
  ∀ n, (P6099679794192947676.a n : ℤ) = A142813 (n + 1)

end A142813

/-! ## A142813.P12508961632415053597

`p?[A139616(n)+A004273(n)]%A017499(n)`
-/

namespace A142813.P12508961632415053597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139616 n + A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017499 n)

end

end A142813.P12508961632415053597

namespace A142813

/-- `p?[A139616(n)+A004273(n)]%A017499(n)` -/
def P12508961632415053597.Spec : Prop :=
  ∀ n, P12508961632415053597.a n = A142813 (n + 1)

end A142813

/-! ## A142813.P3162099795920060831

`p?[A139616(n)+A004273(n)]^A160357(n)²`
-/

namespace A142813.P3162099795920060831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139616 n + A004273 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A160357 n ^ 2 : ℤ)

end

end A142813.P3162099795920060831

namespace A142813

/-- `p?[A139616(n)+A004273(n)]^A160357(n)²` -/
def P3162099795920060831.Spec : Prop :=
  ∀ n, P3162099795920060831.a n = (A142813 (n + 1) : ℚ)

end A142813

/-! ## A142813.P4891452647560596097

`p?[A139616(n)+A004273(n)]+A005926(n)%2`
-/

namespace A142813.P4891452647560596097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139616 n + A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A005926 n) 2

end

end A142813.P4891452647560596097

namespace A142813

/-- `p?[A139616(n)+A004273(n)]+A005926(n)%2` -/
def P4891452647560596097.Spec : Prop :=
  ∀ n, P4891452647560596097.a n = A142813 (n + 1)

end A142813

/-! ## A142813.P17625573286914960416

`p?[A139616(n)+A004273(n)]+A008585(n)%3`
-/

namespace A142813.P17625573286914960416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139616 n + A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A008585 n) 3

end

end A142813.P17625573286914960416

namespace A142813

/-- `p?[A139616(n)+A004273(n)]+A008585(n)%3` -/
def P17625573286914960416.Spec : Prop :=
  ∀ n, P17625573286914960416.a n = A142813 (n + 1)

end A142813

/-! ## A142813.P7273918775704171350

`A001489(n)+p?[A139616(n)+A004273(n)]+n`
-/

namespace A142813.P7273918775704171350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139616 n + A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n : ℤ))

end

end A142813.P7273918775704171350

namespace A142813

/-- `A001489(n)+p?[A139616(n)+A004273(n)]+n` -/
def P7273918775704171350.Spec : Prop :=
  ∀ n, P7273918775704171350.a n = A142813 (n + 1)

end A142813

/-! ## A142813.P13046988476322375459

`p?[A139616(n)+A004273(n)]+2%(A036987(n)+1)`
-/

namespace A142813.P13046988476322375459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139616 n + A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod 2 (A036987 n + 1)

end

end A142813.P13046988476322375459

namespace A142813

/-- `p?[A139616(n)+A004273(n)]+2%(A036987(n)+1)` -/
def P13046988476322375459.Spec : Prop :=
  ∀ n, P13046988476322375459.a n = A142813 (n + 1)

end A142813

/-! ## A142813.P15958088614977749591

`p?[A139616(n)+A004273(n)]/A158128(n+1)%2`
-/

namespace A142813.P15958088614977749591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139616 n + A004273 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Int.tmod (A158128 (n + 1)) 2 : ℚ)

end

end A142813.P15958088614977749591

namespace A142813

/-- `p?[A139616(n)+A004273(n)]/A158128(n+1)%2` -/
def P15958088614977749591.Spec : Prop :=
  ∀ n, P15958088614977749591.a n = (A142813 (n + 1) : ℚ)

end A142813

/-! ## A142813.P1924389210398884750

`p?[A139616(n)+A004273(n)]+A020338(n+1)%(n+1)`
-/

namespace A142813.P1924389210398884750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139616 n + A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A020338 (n + 1)) (n + 1 : ℤ)

end

end A142813.P1924389210398884750

namespace A142813

/-- `p?[A139616(n)+A004273(n)]+A020338(n+1)%(n+1)` -/
def P1924389210398884750.Spec : Prop :=
  ∀ n, P1924389210398884750.a n = A142813 (n + 1)

end A142813

/-! ## A142813.P16339186905945994669

`p?[A139616(n)+A004273(n)]+(A016861(n)+4)%(n+1)`
-/

namespace A142813.P16339186905945994669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139616 n + A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A016861 n + 4) (n + 1 : ℤ)

end

end A142813.P16339186905945994669

namespace A142813

/-- `p?[A139616(n)+A004273(n)]+(A016861(n)+4)%(n+1)` -/
def P16339186905945994669.Spec : Prop :=
  ∀ n, P16339186905945994669.a n = A142813 (n + 1)

end A142813

/-! ## A142813.P104669160931293161

`p?[A139616(n)+A004273(n)]^(-1%A181732(n+2))²`
-/

namespace A142813.P104669160931293161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139616 n + A004273 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (Int.tmod (-1) (A181732 (n + 2)) ^ 2 : ℤ)

end

end A142813.P104669160931293161

namespace A142813

/-- `p?[A139616(n)+A004273(n)]^(-1%A181732(n+2))²` -/
def P104669160931293161.Spec : Prop :=
  ∀ n, P104669160931293161.a n = (A142813 (n + 1) : ℚ)

end A142813

/-! ## A142813.P103749345400799683

`A000265(p?[A139616(n)+A004273(n)])`
-/

namespace A142813.P103749345400799683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139616 n + A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142813.P103749345400799683

namespace A142813

/-- `A000265(p?[A139616(n)+A004273(n)])` -/
def P103749345400799683.Spec : Prop :=
  ∀ n, P103749345400799683.a n = A142813 (n + 1)

end A142813

/-! ## A142813.P3089723474691331222

`A008472(p?[A139616(n)+A004273(n)])`
-/

namespace A142813.P3089723474691331222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139616 n + A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142813.P3089723474691331222

namespace A142813

/-- `A008472(p?[A139616(n)+A004273(n)])` -/
def P3089723474691331222.Spec : Prop :=
  ∀ n, P3089723474691331222.a n = A142813 (n + 1)

end A142813

/-! ## A142813.P4949527273773248798

`A000265(p?[A139607(n)+A139279(n+1)])`
-/

namespace A142813.P4949527273773248798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139607 n + A139279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142813.P4949527273773248798

namespace A142813

/-- `A000265(p?[A139607(n)+A139279(n+1)])` -/
def P4949527273773248798.Spec : Prop :=
  ∀ n, P4949527273773248798.a n = A142813 (n + 1)

end A142813

/-! ## A142813.P10051309410483519990

`A007913(p?[A139607(n)+A139279(n+1)])`
-/

namespace A142813.P10051309410483519990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139607 n + A139279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142813.P10051309410483519990

namespace A142813

/-- `A007913(p?[A139607(n)+A139279(n+1)])` -/
def P10051309410483519990.Spec : Prop :=
  ∀ n, P10051309410483519990.a n = A142813 (n + 1)

end A142813

/-! ## A142813.P11561268198202749693

`A299149(p?[A139607(n)+A139279(n+1)])`
-/

namespace A142813.P11561268198202749693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139607 n + A139279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299149 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142813.P11561268198202749693

namespace A142813

/-- `A299149(p?[A139607(n)+A139279(n+1)])` -/
def P11561268198202749693.Spec : Prop :=
  ∀ n, P11561268198202749693.a n = A142813 (n + 1)

end A142813

/-!
# A142814: Primes congruent to 16 mod 61.

The programs for A142814, the canonical program `A142814.P8653414959725100491` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142814 has offset 1).

The definition of A142814 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1314 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142814.P8653414959725100491

`p?[61*n+16]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142814

/-- `p?[61*n+16]` -/
def P8653414959725100491.Spec : Prop :=
  ∀ n, (P8653414959725100491.a n : ℤ) = A142814 (n + 1)

theorem P8653414959725100491.correct : P8653414959725100491.Spec := by
  intro n
  simp only [A142814, Nat.add_sub_cancel]

end A142814

/-! ## A142814.P479572805403692079

`p?[A139611(n)+A016969(n)]+A017197(n)%3`
-/

namespace A142814.P479572805403692079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n + A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A017197 n) 3

end

end A142814.P479572805403692079

namespace A142814

/-- `p?[A139611(n)+A016969(n)]+A017197(n)%3` -/
def P479572805403692079.Spec : Prop :=
  ∀ n, P479572805403692079.a n = A142814 (n + 1)

end A142814

/-! ## A142814.P8923031233692353995

`p?[A139611(n)+A016969(n)]/A077546(n+2)%2`
-/

namespace A142814.P8923031233692353995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n + A016969 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Int.tmod (A077546 (n + 2)) 2 : ℚ)

end

end A142814.P8923031233692353995

namespace A142814

/-- `p?[A139611(n)+A016969(n)]/A077546(n+2)%2` -/
def P8923031233692353995.Spec : Prop :=
  ∀ n, P8923031233692353995.a n = (A142814 (n + 1) : ℚ)

end A142814

/-! ## A142814.P7765023262096927737

`A000027(p?[A304839(n+1)-7])`
-/

namespace A142814.P7765023262096927737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142814.P7765023262096927737

namespace A142814

/-- `A000027(p?[A304839(n+1)-7])` -/
def P7765023262096927737.Spec : Prop :=
  ∀ n, P7765023262096927737.a n = A142814 (n + 1)

end A142814

/-! ## A142814.P2994755084849445631

`A000027(p?[A139611(n)+A016969(n)])`
-/

namespace A142814.P2994755084849445631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n + A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142814.P2994755084849445631

namespace A142814

/-- `A000027(p?[A139611(n)+A016969(n)])` -/
def P2994755084849445631.Spec : Prop :=
  ∀ n, P2994755084849445631.a n = A142814 (n + 1)

end A142814

/-! ## A142814.P17129918848801625314

`A000027(p?[A139611(n)+A091998(n+1)])`
-/

namespace A142814.P17129918848801625314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n + A091998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142814.P17129918848801625314

namespace A142814

/-- `A000027(p?[A139611(n)+A091998(n+1)])` -/
def P17129918848801625314.Spec : Prop :=
  ∀ n, P17129918848801625314.a n = A142814 (n + 1)

end A142814

/-! ## A142814.P7521361436279464349

`A000027(p?[A304205(n+1)+A017569(n)])`
-/

namespace A142814.P7521361436279464349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A017569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142814.P7521361436279464349

namespace A142814

/-- `A000027(p?[A304205(n+1)+A017569(n)])` -/
def P7521361436279464349.Spec : Prop :=
  ∀ n, P7521361436279464349.a n = A142814 (n + 1)

end A142814

/-! ## A142814.P11860894570906288548

`p?[A139611(n)+A016969(n)]%A251923(n+7)`
-/

namespace A142814.P11860894570906288548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n + A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A251923 (n + 7))

end

end A142814.P11860894570906288548

namespace A142814

/-- `p?[A139611(n)+A016969(n)]%A251923(n+7)` -/
def P11860894570906288548.Spec : Prop :=
  ∀ n, P11860894570906288548.a n = A142814 (n + 1)

end A142814

/-! ## A142814.P15145646233389471549

`A000265(p?[A304839(n+1)-7])`
-/

namespace A142814.P15145646233389471549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142814.P15145646233389471549

namespace A142814

/-- `A000265(p?[A304839(n+1)-7])` -/
def P15145646233389471549.Spec : Prop :=
  ∀ n, P15145646233389471549.a n = A142814 (n + 1)

end A142814

/-! ## A142814.P5668614619884134120

`A001414(p?[A304839(n+1)-7])`
-/

namespace A142814.P5668614619884134120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142814.P5668614619884134120

namespace A142814

/-- `A001414(p?[A304839(n+1)-7])` -/
def P5668614619884134120.Spec : Prop :=
  ∀ n, P5668614619884134120.a n = A142814 (n + 1)

end A142814

/-! ## A142814.P15438040688857569662

`A007913(p?[A304839(n+1)-7])`
-/

namespace A142814.P15438040688857569662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142814.P15438040688857569662

namespace A142814

/-- `A007913(p?[A304839(n+1)-7])` -/
def P15438040688857569662.Spec : Prop :=
  ∀ n, P15438040688857569662.a n = A142814 (n + 1)

end A142814

/-! ## A142814.P14981225848313235749

`A008475(p?[A304839(n+1)-7])`
-/

namespace A142814.P14981225848313235749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142814.P14981225848313235749

namespace A142814

/-- `A008475(p?[A304839(n+1)-7])` -/
def P14981225848313235749.Spec : Prop :=
  ∀ n, P14981225848313235749.a n = A142814 (n + 1)

end A142814

/-! ## A142814.P10878465887969370215

`A000265(p?[A139611(n)+A016969(n)])`
-/

namespace A142814.P10878465887969370215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n + A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142814.P10878465887969370215

namespace A142814

/-- `A000265(p?[A139611(n)+A016969(n)])` -/
def P10878465887969370215.Spec : Prop :=
  ∀ n, P10878465887969370215.a n = A142814 (n + 1)

end A142814

/-! ## A142814.P12224010933424855645

`A007913(p?[A139611(n)+A016969(n)])`
-/

namespace A142814.P12224010933424855645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n + A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142814.P12224010933424855645

namespace A142814

/-- `A007913(p?[A139611(n)+A016969(n)])` -/
def P12224010933424855645.Spec : Prop :=
  ∀ n, P12224010933424855645.a n = A142814 (n + 1)

end A142814

/-! ## A142814.P79479072580723666

`A008472(p?[A139611(n)+A016969(n)])`
-/

namespace A142814.P79479072580723666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n + A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142814.P79479072580723666

namespace A142814

/-- `A008472(p?[A139611(n)+A016969(n)])` -/
def P79479072580723666.Spec : Prop :=
  ∀ n, P79479072580723666.a n = A142814 (n + 1)

end A142814

/-! ## A142814.P17019382496450058906

`A000265(p?[A139611(n)+A091998(n+1)])`
-/

namespace A142814.P17019382496450058906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n + A091998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142814.P17019382496450058906

namespace A142814

/-- `A000265(p?[A139611(n)+A091998(n+1)])` -/
def P17019382496450058906.Spec : Prop :=
  ∀ n, P17019382496450058906.a n = A142814 (n + 1)

end A142814

/-! ## A142814.P1703778056406439177

`A008472(p?[A139611(n)+A091998(n+1)])`
-/

namespace A142814.P1703778056406439177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n + A091998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142814.P1703778056406439177

namespace A142814

/-- `A008472(p?[A139611(n)+A091998(n+1)])` -/
def P1703778056406439177.Spec : Prop :=
  ∀ n, P1703778056406439177.a n = A142814 (n + 1)

end A142814

/-!
# A142815: Primes congruent to 17 mod 61.

The programs for A142815, the canonical program `A142815.P15485703844262481352` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142815 has offset 1).

The definition of A142815 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1306 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142815.P15485703844262481352

`p?[61*n+17]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142815

/-- `p?[61*n+17]` -/
def P15485703844262481352.Spec : Prop :=
  ∀ n, (P15485703844262481352.a n : ℤ) = A142815 (n + 1)

theorem P15485703844262481352.correct : P15485703844262481352.Spec := by
  intro n
  simp only [A142815, Nat.add_sub_cancel]

end A142815

/-! ## A142815.P15976671236201803050

`record[A020639(A304839(n+1)-6)]`
-/

namespace A142815.P15976671236201803050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304839 (n + 1) - 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142815.P15976671236201803050

namespace A142815

/-- `record[A020639(A304839(n+1)-6)]` -/
def P15976671236201803050.Spec : Prop :=
  ∀ n, P15976671236201803050.a n = A142815 (n + 1)

end A142815

/-! ## A142815.P4472130581772340915

`record[A006530(A128468(2*n)+n)]`
-/

namespace A142815.P4472130581772340915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A128468 (2 * n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142815.P4472130581772340915

namespace A142815

/-- `record[A006530(A128468(2*n)+n)]` -/
def P4472130581772340915.Spec : Prop :=
  ∀ n, P4472130581772340915.a n = A142815 (n + 1)

end A142815

/-! ## A142815.P3430708435942413362

`record[A020639(A128468(2*n)+n)]`
-/

namespace A142815.P3430708435942413362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A128468 (2 * n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142815.P3430708435942413362

namespace A142815

/-- `record[A020639(A128468(2*n)+n)]` -/
def P3430708435942413362.Spec : Prop :=
  ∀ n, P3430708435942413362.a n = A142815 (n + 1)

end A142815

/-! ## A142815.P14824579815005321970

`record[A006530(A139616(n)+A005408(n))]`
-/

namespace A142815.P14824579815005321970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A139616 n + A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142815.P14824579815005321970

namespace A142815

/-- `record[A006530(A139616(n)+A005408(n))]` -/
def P14824579815005321970.Spec : Prop :=
  ∀ n, P14824579815005321970.a n = A142815 (n + 1)

end A142815

/-! ## A142815.P476778919771101396

`record[A020639(A139616(n)+A005408(n))]`
-/

namespace A142815.P476778919771101396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A139616 n + A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142815.P476778919771101396

namespace A142815

/-- `record[A020639(A139616(n)+A005408(n))]` -/
def P476778919771101396.Spec : Prop :=
  ∀ n, P476778919771101396.a n = A142815 (n + 1)

end A142815

/-! ## A142815.P14861018102221877091

`A000265(p?[A139616(n)+A005408(n)])`
-/

namespace A142815.P14861018102221877091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139616 n + A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142815.P14861018102221877091

namespace A142815

/-- `A000265(p?[A139616(n)+A005408(n)])` -/
def P14861018102221877091.Spec : Prop :=
  ∀ n, P14861018102221877091.a n = A142815 (n + 1)

end A142815

/-! ## A142815.P7314531141748295007

`A008472(p?[A139616(n)+A005408(n)])`
-/

namespace A142815.P7314531141748295007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139616 n + A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142815.P7314531141748295007

namespace A142815

/-- `A008472(p?[A139616(n)+A005408(n)])` -/
def P7314531141748295007.Spec : Prop :=
  ∀ n, P7314531141748295007.a n = A142815 (n + 1)

end A142815

/-!
# A142816: Primes congruent to 18 mod 61.

The programs for A142816, the canonical program `A142816.P1837982766238215271` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142816 has offset 1).

The definition of A142816 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1318 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142816.P1837982766238215271

`p?[61*n+18]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142816

/-- `p?[61*n+18]` -/
def P1837982766238215271.Spec : Prop :=
  ∀ n, (P1837982766238215271.a n : ℤ) = A142816 (n + 1)

theorem P1837982766238215271.correct : P1837982766238215271.Spec := by
  intro n
  simp only [A142816, Nat.add_sub_cancel]

end A142816

/-! ## A142816.P2762186873329998924

`or(1, p?[a(n-1)+61])` with `a(0)=18`
-/

namespace A142816.P2762186873329998924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [18] fun n f1 =>
  f1 (n - 1) + 61

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142816.P2762186873329998924

namespace A142816

/-- `or(1, p?[a(n-1)+61])` -/
def P2762186873329998924.Spec : Prop :=
  ∀ n, (P2762186873329998924.a n : ℤ) = A142816 (n + 1)

end A142816

/-! ## A142816.P6537031541104185110

`or(1, p?[A139611(n)+A016969(n)+2])`
-/

namespace A142816.P6537031541104185110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n + A016969 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142816.P6537031541104185110

namespace A142816

/-- `or(1, p?[A139611(n)+A016969(n)+2])` -/
def P6537031541104185110.Spec : Prop :=
  ∀ n, P6537031541104185110.a n = A142816 (n + 1)

end A142816

/-! ## A142816.P5101979264794666090

`p?[A156376(n+2)+A135631(n)]%A017248(n)`
-/

namespace A142816.P5101979264794666090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 (n + 2) + A135631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017248 n)

end

end A142816.P5101979264794666090

namespace A142816

/-- `p?[A156376(n+2)+A135631(n)]%A017248(n)` -/
def P5101979264794666090.Spec : Prop :=
  ∀ n, P5101979264794666090.a n = A142816 (n + 1)

end A142816

/-! ## A142816.P15122998439333139340

`A000027(p?[A304839(n+1)-5])`
-/

namespace A142816.P15122998439333139340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142816.P15122998439333139340

namespace A142816

/-- `A000027(p?[A304839(n+1)-5])` -/
def P15122998439333139340.Spec : Prop :=
  ∀ n, P15122998439333139340.a n = A142816 (n + 1)

end A142816

/-! ## A142816.P13216751701524706522

`record[A020639(61*(n+1)+18)]`
-/

namespace A142816.P13216751701524706522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (61 * (n + 1) + 18)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142816.P13216751701524706522

namespace A142816

/-- `record[A020639(61*(n+1)+18)]` -/
def P13216751701524706522.Spec : Prop :=
  ∀ n, P13216751701524706522.a n = A142816 (n + 1)

end A142816

/-! ## A142816.P9065274016639337265

`A007913(p?[a(n-1)+61])` with `a(0)=0, a(1)=18`
-/

namespace A142816.P9065274016639337265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 18] fun n f1 =>
  f1 (n - 1) + 61

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142816.P9065274016639337265

namespace A142816

/-- `A007913(p?[a(n-1)+61])` -/
def P9065274016639337265.Spec : Prop :=
  ∀ n, P9065274016639337265.a n = A142816 (n + 1)

end A142816

/-! ## A142816.P12135920288034710894

`A000265(p?[A304839(n+1)-5])`
-/

namespace A142816.P12135920288034710894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142816.P12135920288034710894

namespace A142816

/-- `A000265(p?[A304839(n+1)-5])` -/
def P12135920288034710894.Spec : Prop :=
  ∀ n, P12135920288034710894.a n = A142816 (n + 1)

end A142816

/-! ## A142816.P17747556511684767167

`A001414(p?[A304839(n+1)-5])`
-/

namespace A142816.P17747556511684767167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142816.P17747556511684767167

namespace A142816

/-- `A001414(p?[A304839(n+1)-5])` -/
def P17747556511684767167.Spec : Prop :=
  ∀ n, P17747556511684767167.a n = A142816 (n + 1)

end A142816

/-! ## A142816.P8799194023848356241

`A007913(p?[A304839(n+1)-5])`
-/

namespace A142816.P8799194023848356241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142816.P8799194023848356241

namespace A142816

/-- `A007913(p?[A304839(n+1)-5])` -/
def P8799194023848356241.Spec : Prop :=
  ∀ n, P8799194023848356241.a n = A142816 (n + 1)

end A142816

/-! ## A142816.P15754460125088784478

`A000265(p?[A139611(n)+A016969(n)+2])`
-/

namespace A142816.P15754460125088784478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n + A016969 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142816.P15754460125088784478

namespace A142816

/-- `A000265(p?[A139611(n)+A016969(n)+2])` -/
def P15754460125088784478.Spec : Prop :=
  ∀ n, P15754460125088784478.a n = A142816 (n + 1)

end A142816

/-! ## A142816.P10792651943149741585

`A000265(p?[A139607(n)+A139279(n+1)+3])`
-/

namespace A142816.P10792651943149741585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139607 n + A139279 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142816.P10792651943149741585

namespace A142816

/-- `A000265(p?[A139607(n)+A139279(n+1)+3])` -/
def P10792651943149741585.Spec : Prop :=
  ∀ n, P10792651943149741585.a n = A142816 (n + 1)

end A142816

/-!
# A142817: Primes congruent to 19 mod 61.

The programs for A142817, the canonical program `A142817.P10524498803158292204` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142817 has offset 1).

The definition of A142817 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1296 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142817.P10524498803158292204

`p?[61*n+19]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142817

/-- `p?[61*n+19]` -/
def P10524498803158292204.Spec : Prop :=
  ∀ n, (P10524498803158292204.a n : ℤ) = A142817 (n + 1)

theorem P10524498803158292204.correct : P10524498803158292204.Spec := by
  intro n
  simp only [A142817, Nat.add_sub_cancel]

end A142817

/-! ## A142817.P5062990978429136113

`∑{d}[p?[a(n-1)+61], #]-1` with `a(0)=0, a(1)=1, a(2)=18, a(3)=19`
-/

namespace A142817.P5062990978429136113
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 18, 19] fun n f2 =>
  f2 (n - 1) + 61

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - 1

end

end A142817.P5062990978429136113

namespace A142817

/-- `∑{d}[p?[a(n-1)+61], #]-1` -/
def P5062990978429136113.Spec : Prop :=
  ∀ n, P5062990978429136113.a n = A142817 (n + 1)

end A142817

/-! ## A142817.P8690957316182808934

`p?[A156376(n)+A135631(n)]%A017248(n)`
-/

namespace A142817.P8690957316182808934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n + A135631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017248 n)

end

end A142817.P8690957316182808934

namespace A142817

/-- `p?[A156376(n)+A135631(n)]%A017248(n)` -/
def P8690957316182808934.Spec : Prop :=
  ∀ n, P8690957316182808934.a n = A142817 (n + 1)

end A142817

/-! ## A142817.P3877229715640212929

`p?[A139611(n)+A016969(n)+3]%A188185(n+5)`
-/

namespace A142817.P3877229715640212929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n + A016969 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A188185 (n + 5))

end

end A142817.P3877229715640212929

namespace A142817

/-- `p?[A139611(n)+A016969(n)+3]%A188185(n+5)` -/
def P3877229715640212929.Spec : Prop :=
  ∀ n, P3877229715640212929.a n = A142817 (n + 1)

end A142817

/-! ## A142817.P3777866801921735761

`A000027(p?[A304839(n+1)-4])`
-/

namespace A142817.P3777866801921735761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142817.P3777866801921735761

namespace A142817

/-- `A000027(p?[A304839(n+1)-4])` -/
def P3777866801921735761.Spec : Prop :=
  ∀ n, P3777866801921735761.a n = A142817 (n + 1)

end A142817

/-! ## A142817.P5458934191162777355

`A000027(p?[A156376(n)+A135631(n)])`
-/

namespace A142817.P5458934191162777355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n + A135631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142817.P5458934191162777355

namespace A142817

/-- `A000027(p?[A156376(n)+A135631(n)])` -/
def P5458934191162777355.Spec : Prop :=
  ∀ n, P5458934191162777355.a n = A142817 (n + 1)

end A142817

/-! ## A142817.P16188427148291273879

`A000027(p?[A139611(n)+A016969(n)+3])`
-/

namespace A142817.P16188427148291273879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n + A016969 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142817.P16188427148291273879

namespace A142817

/-- `A000027(p?[A139611(n)+A016969(n)+3])` -/
def P16188427148291273879.Spec : Prop :=
  ∀ n, P16188427148291273879.a n = A142817 (n + 1)

end A142817

/-! ## A142817.P14981097360640696608

`record[A020639(11*11*n+19+n)]`
-/

namespace A142817.P14981097360640696608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (11 * (11 * n) + 19 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142817.P14981097360640696608

namespace A142817

/-- `record[A020639(11*11*n+19+n)]` -/
def P14981097360640696608.Spec : Prop :=
  ∀ n, P14981097360640696608.a n = A142817 (n + 1)

end A142817

/-! ## A142817.P14302644812589115873

`A000265(p?[A304839(n+1)-4])`
-/

namespace A142817.P14302644812589115873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142817.P14302644812589115873

namespace A142817

/-- `A000265(p?[A304839(n+1)-4])` -/
def P14302644812589115873.Spec : Prop :=
  ∀ n, P14302644812589115873.a n = A142817 (n + 1)

end A142817

/-! ## A142817.P9241345528281362007

`A007913(p?[A304839(n+1)-4])`
-/

namespace A142817.P9241345528281362007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142817.P9241345528281362007

namespace A142817

/-- `A007913(p?[A304839(n+1)-4])` -/
def P9241345528281362007.Spec : Prop :=
  ∀ n, P9241345528281362007.a n = A142817 (n + 1)

end A142817

/-! ## A142817.P4481563801443325648

`A008475(p?[A304839(n+1)-4])`
-/

namespace A142817.P4481563801443325648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142817.P4481563801443325648

namespace A142817

/-- `A008475(p?[A304839(n+1)-4])` -/
def P4481563801443325648.Spec : Prop :=
  ∀ n, P4481563801443325648.a n = A142817 (n + 1)

end A142817

/-! ## A142817.P11871239288939905328

`A000265(p?[A156376(n)+A135631(n)])`
-/

namespace A142817.P11871239288939905328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n + A135631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142817.P11871239288939905328

namespace A142817

/-- `A000265(p?[A156376(n)+A135631(n)])` -/
def P11871239288939905328.Spec : Prop :=
  ∀ n, P11871239288939905328.a n = A142817 (n + 1)

end A142817

/-! ## A142817.P12010526117060144411

`A007913(p?[A156376(n)+A135631(n)])`
-/

namespace A142817.P12010526117060144411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n + A135631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142817.P12010526117060144411

namespace A142817

/-- `A007913(p?[A156376(n)+A135631(n)])` -/
def P12010526117060144411.Spec : Prop :=
  ∀ n, P12010526117060144411.a n = A142817 (n + 1)

end A142817

/-! ## A142817.P6501889840880482952

`A008472(p?[A156376(n)+A135631(n)])`
-/

namespace A142817.P6501889840880482952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n + A135631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142817.P6501889840880482952

namespace A142817

/-- `A008472(p?[A156376(n)+A135631(n)])` -/
def P6501889840880482952.Spec : Prop :=
  ∀ n, P6501889840880482952.a n = A142817 (n + 1)

end A142817

/-! ## A142817.P16560843472194605362

`A000265(p?[A139611(n)+A016969(n)+3])`
-/

namespace A142817.P16560843472194605362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n + A016969 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142817.P16560843472194605362

namespace A142817

/-- `A000265(p?[A139611(n)+A016969(n)+3])` -/
def P16560843472194605362.Spec : Prop :=
  ∀ n, P16560843472194605362.a n = A142817 (n + 1)

end A142817

/-! ## A142817.P5794718391265780296

`A052410(p?[A053741(n)+A017425(n)-4])`
-/

namespace A142817.P5794718391265780296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017425 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142817.P5794718391265780296

namespace A142817

/-- `A052410(p?[A053741(n)+A017425(n)-4])` -/
def P5794718391265780296.Spec : Prop :=
  ∀ n, P5794718391265780296.a n = A142817 (n + 1)

end A142817

/-!
# A142818: Primes congruent to 20 mod 61.

The programs for A142818, the canonical program `A142818.P17172144998852855688` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142818 has offset 1).

The definition of A142818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1288 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142818.P17172144998852855688

`p?[61*n+20]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142818

/-- `p?[61*n+20]` -/
def P17172144998852855688.Spec : Prop :=
  ∀ n, (P17172144998852855688.a n : ℤ) = A142818 (n + 1)

theorem P17172144998852855688.correct : P17172144998852855688.Spec := by
  intro n
  simp only [A142818, Nat.add_sub_cancel]

end A142818

/-! ## A142818.P2144165781373556511

`or(1, p?[A053741(n)+A008593(n)])`
-/

namespace A142818.P2144165781373556511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A008593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142818.P2144165781373556511

namespace A142818

/-- `or(1, p?[A053741(n)+A008593(n)])` -/
def P2144165781373556511.Spec : Prop :=
  ∀ n, P2144165781373556511.a n = A142818 (n + 1)

end A142818

/-! ## A142818.P3911474074485408336

`or(1, p?[A270296(n+1)+A270296(n+1)+n])`
-/

namespace A142818.P3911474074485408336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270296 (n + 1) + (A270296 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142818.P3911474074485408336

namespace A142818

/-- `or(1, p?[A270296(n+1)+A270296(n+1)+n])` -/
def P3911474074485408336.Spec : Prop :=
  ∀ n, P3911474074485408336.a n = A142818 (n + 1)

end A142818

/-! ## A142818.P8484085179219105335

`p?[A053741(n)+A008593(n)]%A017057(n)`
-/

namespace A142818.P8484085179219105335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A008593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017057 n)

end

end A142818.P8484085179219105335

namespace A142818

/-- `p?[A053741(n)+A008593(n)]%A017057(n)` -/
def P8484085179219105335.Spec : Prop :=
  ∀ n, P8484085179219105335.a n = A142818 (n + 1)

end A142818

/-! ## A142818.P12791143972335622966

`p?[A053741(n)+A008593(n)]+A000038(n)%2`
-/

namespace A142818.P12791143972335622966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A008593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A000038 n) 2

end

end A142818.P12791143972335622966

namespace A142818

/-- `p?[A053741(n)+A008593(n)]+A000038(n)%2` -/
def P12791143972335622966.Spec : Prop :=
  ∀ n, P12791143972335622966.a n = A142818 (n + 1)

end A142818

/-! ## A142818.P14849485697201908040

`p?[A053741(n)+A008593(n)]+A253885(n)%2`
-/

namespace A142818.P14849485697201908040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A008593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A253885 n) 2

end

end A142818.P14849485697201908040

namespace A142818

/-- `p?[A053741(n)+A008593(n)]+A253885(n)%2` -/
def P14849485697201908040.Spec : Prop :=
  ∀ n, P14849485697201908040.a n = A142818 (n + 1)

end A142818

/-! ## A142818.P14172523947300245474

`p?[A053741(n)+A008593(n)]/A102376(n)%3`
-/

namespace A142818.P14172523947300245474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A008593 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Int.tmod (A102376 n) 3 : ℚ)

end

end A142818.P14172523947300245474

namespace A142818

/-- `p?[A053741(n)+A008593(n)]/A102376(n)%3` -/
def P14172523947300245474.Spec : Prop :=
  ∀ n, P14172523947300245474.a n = (A142818 (n + 1) : ℚ)

end A142818

/-! ## A142818.P17519790624392239167

`p?[A053741(n)+A008593(n)]/A034947(n+1)²`
-/

namespace A142818.P17519790624392239167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A008593 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A034947 (n + 1) ^ 2 : ℚ)

end

end A142818.P17519790624392239167

namespace A142818

/-- `p?[A053741(n)+A008593(n)]/A034947(n+1)²` -/
def P17519790624392239167.Spec : Prop :=
  ∀ n, P17519790624392239167.a n = (A142818 (n + 1) : ℚ)

end A142818

/-! ## A142818.P1332635713285398095

`A000027(p?[A304839(n+1)-3])`
-/

namespace A142818.P1332635713285398095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142818.P1332635713285398095

namespace A142818

/-- `A000027(p?[A304839(n+1)-3])` -/
def P1332635713285398095.Spec : Prop :=
  ∀ n, P1332635713285398095.a n = A142818 (n + 1)

end A142818

/-! ## A142818.P2229507631295417868

`A001414(p?[A053741(n)+A008593(n)])`
-/

namespace A142818.P2229507631295417868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A008593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142818.P2229507631295417868

namespace A142818

/-- `A001414(p?[A053741(n)+A008593(n)])` -/
def P2229507631295417868.Spec : Prop :=
  ∀ n, P2229507631295417868.a n = A142818 (n + 1)

end A142818

/-!
# A142819: Primes congruent to 21 mod 61.

The programs for A142819, the canonical program `A142819.P2383881570244080223` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142819 has offset 1).

The definition of A142819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1320 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142819.P2383881570244080223

`p?[61*n+21]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142819

/-- `p?[61*n+21]` -/
def P2383881570244080223.Spec : Prop :=
  ∀ n, (P2383881570244080223.a n : ℤ) = A142819 (n + 1)

theorem P2383881570244080223.correct : P2383881570244080223.Spec := by
  intro n
  simp only [A142819, Nat.add_sub_cancel]

end A142819

/-! ## A142819.P17962850612999716804

`p?[A053741(n)+A017401(n)]/A106400(n)²`
-/

namespace A142819.P17962850612999716804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017401 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A106400 n ^ 2 : ℚ)

end

end A142819.P17962850612999716804

namespace A142819

/-- `p?[A053741(n)+A017401(n)]/A106400(n)²` -/
def P17962850612999716804.Spec : Prop :=
  ∀ n, P17962850612999716804.a n = (A142819 (n + 1) : ℚ)

end A142819

/-! ## A142819.P8972928492468760919

`p?[A053741(n)+A017401(n)]%A017342(n)²`
-/

namespace A142819.P8972928492468760919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017342 n ^ 2)

end

end A142819.P8972928492468760919

namespace A142819

/-- `p?[A053741(n)+A017401(n)]%A017342(n)²` -/
def P8972928492468760919.Spec : Prop :=
  ∀ n, P8972928492468760919.a n = A142819 (n + 1)

end A142819

/-! ## A142819.P12745693074623526686

`p?[A053741(n)+A017401(n)]+A046092(n)%2`
-/

namespace A142819.P12745693074623526686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A046092 n) 2

end

end A142819.P12745693074623526686

namespace A142819

/-- `p?[A053741(n)+A017401(n)]+A046092(n)%2` -/
def P12745693074623526686.Spec : Prop :=
  ∀ n, P12745693074623526686.a n = A142819 (n + 1)

end A142819

/-! ## A142819.P3258864720313441995

`p?[A053741(n)+A017401(n)]+4%A010685(n)`
-/

namespace A142819.P3258864720313441995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod 4 (A010685 n)

end

end A142819.P3258864720313441995

namespace A142819

/-- `p?[A053741(n)+A017401(n)]+4%A010685(n)` -/
def P3258864720313441995.Spec : Prop :=
  ∀ n, P3258864720313441995.a n = A142819 (n + 1)

end A142819

/-! ## A142819.P14556622514104960178

`A001489(n)+p?[A053741(n)+A017401(n)]+n`
-/

namespace A142819.P14556622514104960178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n : ℤ))

end

end A142819.P14556622514104960178

namespace A142819

/-- `A001489(n)+p?[A053741(n)+A017401(n)]+n` -/
def P14556622514104960178.Spec : Prop :=
  ∀ n, P14556622514104960178.a n = A142819 (n + 1)

end A142819

/-! ## A142819.P1696349567750063962

`p?[A053741(n)+A017401(n)]+2%(A004442(n)-n)`
-/

namespace A142819.P1696349567750063962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod 2 (A004442 n - (n : ℤ))

end

end A142819.P1696349567750063962

namespace A142819

/-- `p?[A053741(n)+A017401(n)]+2%(A004442(n)-n)` -/
def P1696349567750063962.Spec : Prop :=
  ∀ n, P1696349567750063962.a n = A142819 (n + 1)

end A142819

/-! ## A142819.P9388650004406709617

`p?[A053741(n)+A017401(n)]+A007318(n)%((-1)^n)`
-/

namespace A142819.P9388650004406709617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A007318 n) ((-1) ^ n)

end

end A142819.P9388650004406709617

namespace A142819

/-- `p?[A053741(n)+A017401(n)]+A007318(n)%((-1)^n)` -/
def P9388650004406709617.Spec : Prop :=
  ∀ n, P9388650004406709617.a n = A142819 (n + 1)

end A142819

/-! ## A142819.P7925474695914503942

`p?[A053741(n)+A017401(n)]+A008778(n)%((-1)^n)`
-/

namespace A142819.P7925474695914503942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A008778 n) ((-1) ^ n)

end

end A142819.P7925474695914503942

namespace A142819

/-- `p?[A053741(n)+A017401(n)]+A008778(n)%((-1)^n)` -/
def P7925474695914503942.Spec : Prop :=
  ∀ n, P7925474695914503942.a n = A142819 (n + 1)

end A142819

/-! ## A142819.P1768681868390687299

`p?[A053741(n)+A017401(n)]+A124625(n)%((-1)^n)`
-/

namespace A142819.P1768681868390687299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A124625 n) ((-1) ^ n)

end

end A142819.P1768681868390687299

namespace A142819

/-- `p?[A053741(n)+A017401(n)]+A124625(n)%((-1)^n)` -/
def P1768681868390687299.Spec : Prop :=
  ∀ n, P1768681868390687299.a n = A142819 (n + 1)

end A142819

/-! ## A142819.P9019084941413484861

`p?[A053741(n)+A017401(n)]+A014963(n+2)%((-1)^n)`
-/

namespace A142819.P9019084941413484861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A014963 (n + 2)) ((-1) ^ n)

end

end A142819.P9019084941413484861

namespace A142819

/-- `p?[A053741(n)+A017401(n)]+A014963(n+2)%((-1)^n)` -/
def P9019084941413484861.Spec : Prop :=
  ∀ n, P9019084941413484861.a n = A142819 (n + 1)

end A142819

/-! ## A142819.P4706025169461823681

`A000027(p?[A304839(n+1)-2])`
-/

namespace A142819.P4706025169461823681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142819.P4706025169461823681

namespace A142819

/-- `A000027(p?[A304839(n+1)-2])` -/
def P4706025169461823681.Spec : Prop :=
  ∀ n, P4706025169461823681.a n = A142819 (n + 1)

end A142819

/-! ## A142819.P11257881566934641068

`A000027(p?[A053741(n)+A017401(n)])`
-/

namespace A142819.P11257881566934641068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142819.P11257881566934641068

namespace A142819

/-- `A000027(p?[A053741(n)+A017401(n)])` -/
def P11257881566934641068.Spec : Prop :=
  ∀ n, P11257881566934641068.a n = A142819 (n + 1)

end A142819

/-! ## A142819.P13575680857811622910

`∩[A038942(n+1), A304839(n+1)-2]`
-/

namespace A142819.P13575680857811622910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142819.P13575680857811622910

namespace A142819

/-- `∩[A038942(n+1), A304839(n+1)-2]` -/
def P13575680857811622910.Spec : Prop :=
  ∀ n, (P13575680857811622910.a n : ℤ) = A142819 (n + 1)

end A142819

/-! ## A142819.P14043566715634058227

`A000265(p?[A304839(n+1)-2])`
-/

namespace A142819.P14043566715634058227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142819.P14043566715634058227

namespace A142819

/-- `A000265(p?[A304839(n+1)-2])` -/
def P14043566715634058227.Spec : Prop :=
  ∀ n, P14043566715634058227.a n = A142819 (n + 1)

end A142819

/-! ## A142819.P7963736667476777845

`A001414(p?[A304839(n+1)-2])`
-/

namespace A142819.P7963736667476777845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142819.P7963736667476777845

namespace A142819

/-- `A001414(p?[A304839(n+1)-2])` -/
def P7963736667476777845.Spec : Prop :=
  ∀ n, P7963736667476777845.a n = A142819 (n + 1)

end A142819

/-! ## A142819.P15211391658129721539

`A007913(p?[A304839(n+1)-2])`
-/

namespace A142819.P15211391658129721539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142819.P15211391658129721539

namespace A142819

/-- `A007913(p?[A304839(n+1)-2])` -/
def P15211391658129721539.Spec : Prop :=
  ∀ n, P15211391658129721539.a n = A142819 (n + 1)

end A142819

/-! ## A142819.P4917583522420657415

`A000265(p?[A053741(n)+A017401(n)])`
-/

namespace A142819.P4917583522420657415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142819.P4917583522420657415

namespace A142819

/-- `A000265(p?[A053741(n)+A017401(n)])` -/
def P4917583522420657415.Spec : Prop :=
  ∀ n, P4917583522420657415.a n = A142819 (n + 1)

end A142819

/-! ## A142819.P9721145652740544341

`A007947(p?[A053741(n)+A017401(n)])`
-/

namespace A142819.P9721145652740544341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142819.P9721145652740544341

namespace A142819

/-- `A007947(p?[A053741(n)+A017401(n)])` -/
def P9721145652740544341.Spec : Prop :=
  ∀ n, P9721145652740544341.a n = A142819 (n + 1)

end A142819

/-!
# A142820: Primes congruent to 22 mod 61.

The programs for A142820, the canonical program `A142820.P8547957382570766057` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142820 has offset 1).

The definition of A142820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1315 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142820.P8547957382570766057

`p?[61*n+22]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142820

/-- `p?[61*n+22]` -/
def P8547957382570766057.Spec : Prop :=
  ∀ n, (P8547957382570766057.a n : ℤ) = A142820 (n + 1)

theorem P8547957382570766057.correct : P8547957382570766057.Spec := by
  intro n
  simp only [A142820, Nat.add_sub_cancel]

end A142820

/-! ## A142820.P15721045016791091070

`p?[A053741(n)+A017413(n)]%A197906(n+1)`
-/

namespace A142820.P15721045016791091070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A197906 (n + 1))

end

end A142820.P15721045016791091070

namespace A142820

/-- `p?[A053741(n)+A017413(n)]%A197906(n+1)` -/
def P15721045016791091070.Spec : Prop :=
  ∀ n, P15721045016791091070.a n = A142820 (n + 1)

end A142820

/-! ## A142820.P14123829468622442817

`A000027(p?[A304839(n+1)-1])`
-/

namespace A142820.P14123829468622442817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142820.P14123829468622442817

namespace A142820

/-- `A000027(p?[A304839(n+1)-1])` -/
def P14123829468622442817.Spec : Prop :=
  ∀ n, P14123829468622442817.a n = A142820 (n + 1)

end A142820

/-! ## A142820.P267548070618452833

`A000027(p?[A053741(n)+A017413(n)])`
-/

namespace A142820.P267548070618452833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142820.P267548070618452833

namespace A142820

/-- `A000027(p?[A053741(n)+A017413(n)])` -/
def P267548070618452833.Spec : Prop :=
  ∀ n, P267548070618452833.a n = A142820 (n + 1)

end A142820

/-! ## A142820.P14421795097565854685

`A000265(p?[A304839(n+1)-1])`
-/

namespace A142820.P14421795097565854685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142820.P14421795097565854685

namespace A142820

/-- `A000265(p?[A304839(n+1)-1])` -/
def P14421795097565854685.Spec : Prop :=
  ∀ n, P14421795097565854685.a n = A142820 (n + 1)

end A142820

/-! ## A142820.P3356242660892938601

`A007913(p?[A304839(n+1)-1])`
-/

namespace A142820.P3356242660892938601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142820.P3356242660892938601

namespace A142820

/-- `A007913(p?[A304839(n+1)-1])` -/
def P3356242660892938601.Spec : Prop :=
  ∀ n, P3356242660892938601.a n = A142820 (n + 1)

end A142820

/-! ## A142820.P4644141678146652528

`A008475(p?[A304839(n+1)-1])`
-/

namespace A142820.P4644141678146652528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142820.P4644141678146652528

namespace A142820

/-- `A008475(p?[A304839(n+1)-1])` -/
def P4644141678146652528.Spec : Prop :=
  ∀ n, P4644141678146652528.a n = A142820 (n + 1)

end A142820

/-! ## A142820.P5864926562181439609

`record[A020639(A304839(n+2)-1)]`
-/

namespace A142820.P5864926562181439609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304839 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142820.P5864926562181439609

namespace A142820

/-- `record[A020639(A304839(n+2)-1)]` -/
def P5864926562181439609.Spec : Prop :=
  ∀ n, P5864926562181439609.a n = A142820 (n + 1)

end A142820

/-! ## A142820.P4865135033065136455

`A000265(p?[A053741(n)+A017413(n)])`
-/

namespace A142820.P4865135033065136455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142820.P4865135033065136455

namespace A142820

/-- `A000265(p?[A053741(n)+A017413(n)])` -/
def P4865135033065136455.Spec : Prop :=
  ∀ n, P4865135033065136455.a n = A142820 (n + 1)

end A142820

/-! ## A142820.P8276797286067090765

`A007947(p?[A053741(n)+A017413(n)])`
-/

namespace A142820.P8276797286067090765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142820.P8276797286067090765

namespace A142820

/-- `A007947(p?[A053741(n)+A017413(n)])` -/
def P8276797286067090765.Spec : Prop :=
  ∀ n, P8276797286067090765.a n = A142820 (n + 1)

end A142820

/-! ## A142820.P5976188126918310877

`A008475(p?[A053741(n)+A017413(n)])`
-/

namespace A142820.P5976188126918310877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142820.P5976188126918310877

namespace A142820

/-- `A008475(p?[A053741(n)+A017413(n)])` -/
def P5976188126918310877.Spec : Prop :=
  ∀ n, P5976188126918310877.a n = A142820 (n + 1)

end A142820

/-!
# A142821: Primes congruent to 23 mod 61.

The programs for A142821, the canonical program `A142821.P17408734384682648918` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142821 has offset 1).

The definition of A142821 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1303 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142821.P17408734384682648918

`p?[61*n+23]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142821

/-- `p?[61*n+23]` -/
def P17408734384682648918.Spec : Prop :=
  ∀ n, (P17408734384682648918.a n : ℤ) = A142821 (n + 1)

theorem P17408734384682648918.correct : P17408734384682648918.Spec := by
  intro n
  simp only [A142821, Nat.add_sub_cancel]

end A142821

/-! ## A142821.P13062630354674567847

`or(1, p?[a(n-1)+61])` with `a(0)=23`
-/

namespace A142821.P13062630354674567847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [23] fun n f1 =>
  f1 (n - 1) + 61

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142821.P13062630354674567847

namespace A142821

/-- `or(1, p?[a(n-1)+61])` -/
def P13062630354674567847.Spec : Prop :=
  ∀ n, (P13062630354674567847.a n : ℤ) = A142821 (n + 1)

end A142821

/-! ## A142821.P11821236853789235068

`∏{d}[p?[a(n-1)+61], #]` with `a(0)=23`
-/

namespace A142821.P11821236853789235068
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [23] fun n f2 =>
  f2 (n - 1) + 61

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A142821.P11821236853789235068

namespace A142821

/-- `∏{d}[p?[a(n-1)+61], #]` -/
def P11821236853789235068.Spec : Prop :=
  ∀ n, (P11821236853789235068.a n : ℤ) = A142821 (n + 1)

end A142821

/-! ## A142821.P1019739446673162669

`∑{p}[p?[a(n-1)+61], #]` with `a(0)=23`
-/

namespace A142821.P1019739446673162669
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [23] fun n f2 =>
  f2 (n - 1) + 61

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A142821.P1019739446673162669

namespace A142821

/-- `∑{p}[p?[a(n-1)+61], #]` -/
def P1019739446673162669.Spec : Prop :=
  ∀ n, (P1019739446673162669.a n : ℤ) = A142821 (n + 1)

end A142821

/-! ## A142821.P6221744138479075693

`∩[A038942(n+1), A304839(n+1)]`
-/

namespace A142821.P6221744138479075693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142821.P6221744138479075693

namespace A142821

/-- `∩[A038942(n+1), A304839(n+1)]` -/
def P6221744138479075693.Spec : Prop :=
  ∀ n, (P6221744138479075693.a n : ℤ) = A142821 (n + 1)

end A142821

/-! ## A142821.P6311050704212961589

`record[A020639(61*n+23)]`
-/

namespace A142821.P6311050704212961589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (61 * n + 23)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142821.P6311050704212961589

namespace A142821

/-- `record[A020639(61*n+23)]` -/
def P6311050704212961589.Spec : Prop :=
  ∀ n, P6311050704212961589.a n = A142821 (n + 1)

end A142821

/-! ## A142821.P16530498672655541158

`filter[A304839(n+1), A010051(#)]`
-/

namespace A142821.P16530498672655541158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A142821.P16530498672655541158

namespace A142821

/-- `filter[A304839(n+1), A010051(#)]` -/
def P16530498672655541158.Spec : Prop :=
  ∀ n, P16530498672655541158.a n = A142821 (n + 1)

end A142821

/-! ## A142821.P13562254407120241279

`filter[A304839(n+1), A302777(#)]`
-/

namespace A142821.P13562254407120241279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A142821.P13562254407120241279

namespace A142821

/-- `filter[A304839(n+1), A302777(#)]` -/
def P13562254407120241279.Spec : Prop :=
  ∀ n, P13562254407120241279.a n = A142821 (n + 1)

end A142821

/-! ## A142821.P5223147365749896964

`filter[A304839(n+1), A323152(#)]`
-/

namespace A142821.P5223147365749896964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A142821.P5223147365749896964

namespace A142821

/-- `filter[A304839(n+1), A323152(#)]` -/
def P5223147365749896964.Spec : Prop :=
  ∀ n, P5223147365749896964.a n = A142821 (n + 1)

end A142821

/-! ## A142821.P3534839790462420878

`filter[A304839(n+1), A323153(#)]`
-/

namespace A142821.P3534839790462420878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A142821.P3534839790462420878

namespace A142821

/-- `filter[A304839(n+1), A323153(#)]` -/
def P3534839790462420878.Spec : Prop :=
  ∀ n, P3534839790462420878.a n = A142821 (n + 1)

end A142821

/-! ## A142821.P12308666366595135479

`filter[A304839(2*n+1), A327861(#)]`
-/

namespace A142821.P12308666366595135479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A142821.P12308666366595135479

namespace A142821

/-- `filter[A304839(2*n+1), A327861(#)]` -/
def P12308666366595135479.Spec : Prop :=
  ∀ n, P12308666366595135479.a n = A142821 (n + 1)

end A142821

/-!
# A142822: Primes congruent to 24 mod 61.

The programs for A142822, the canonical program `A142822.P7367106811697207096` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142822 has offset 1).

The definition of A142822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142822.P7367106811697207096

`p?[61*n+24]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142822

/-- `p?[61*n+24]` -/
def P7367106811697207096.Spec : Prop :=
  ∀ n, (P7367106811697207096.a n : ℤ) = A142822 (n + 1)

theorem P7367106811697207096.correct : P7367106811697207096.Spec := by
  intro n
  simp only [A142822, Nat.add_sub_cancel]

end A142822

/-! ## A142822.P7079421328701475242

`p?[A053741(n)+A017437(n)]+A005843(n)%2`
-/

namespace A142822.P7079421328701475242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A005843 n) 2

end

end A142822.P7079421328701475242

namespace A142822

/-- `p?[A053741(n)+A017437(n)]+A005843(n)%2` -/
def P7079421328701475242.Spec : Prop :=
  ∀ n, P7079421328701475242.a n = A142822 (n + 1)

end A142822

/-! ## A142822.P7235804559790884736

`p?[A053741(n)+A017437(n)]+A139609(n)%3`
-/

namespace A142822.P7235804559790884736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A139609 n) 3

end

end A142822.P7235804559790884736

namespace A142822

/-- `p?[A053741(n)+A017437(n)]+A139609(n)%3` -/
def P7235804559790884736.Spec : Prop :=
  ∀ n, P7235804559790884736.a n = A142822 (n + 1)

end A142822

/-! ## A142822.P9415065060194456964

`p?[A053741(n)+A017437(n)]+n%A093178(n)`
-/

namespace A142822.P9415065060194456964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (n : ℤ) (A093178 n)

end

end A142822.P9415065060194456964

namespace A142822

/-- `p?[A053741(n)+A017437(n)]+n%A093178(n)` -/
def P9415065060194456964.Spec : Prop :=
  ∀ n, P9415065060194456964.a n = A142822 (n + 1)

end A142822

/-! ## A142822.P2893827393643462881

`p?[A053741(n)+A017437(n)]+A000217(n)%-1`
-/

namespace A142822.P2893827393643462881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A000217 n) (-1)

end

end A142822.P2893827393643462881

namespace A142822

/-- `p?[A053741(n)+A017437(n)]+A000217(n)%-1` -/
def P2893827393643462881.Spec : Prop :=
  ∀ n, P2893827393643462881.a n = A142822 (n + 1)

end A142822

/-! ## A142822.P14452954529070056432

`p?[A053741(n)+A017437(n)]+A020915(n)%-1`
-/

namespace A142822.P14452954529070056432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A020915 n) (-1)

end

end A142822.P14452954529070056432

namespace A142822

/-- `p?[A053741(n)+A017437(n)]+A020915(n)%-1` -/
def P14452954529070056432.Spec : Prop :=
  ∀ n, P14452954529070056432.a n = A142822 (n + 1)

end A142822

/-! ## A142822.P7323916491318133942

`p?[A053741(n)+A017437(n)]+A259677(n+1)%-1`
-/

namespace A142822.P7323916491318133942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A259677 (n + 1)) (-1)

end

end A142822.P7323916491318133942

namespace A142822

/-- `p?[A053741(n)+A017437(n)]+A259677(n+1)%-1` -/
def P7323916491318133942.Spec : Prop :=
  ∀ n, P7323916491318133942.a n = A142822 (n + 1)

end A142822

/-! ## A142822.P7925454985173868560

`p?[A053741(n)+A017437(n)]%(A000124(n+11)-11)²`
-/

namespace A142822.P7925454985173868560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ((A000124 (n + 11) - 11) ^ 2)

end

end A142822.P7925454985173868560

namespace A142822

/-- `p?[A053741(n)+A017437(n)]%(A000124(n+11)-11)²` -/
def P7925454985173868560.Spec : Prop :=
  ∀ n, P7925454985173868560.a n = A142822 (n + 1)

end A142822

/-! ## A142822.P7113673319149240520

`p?[A053741(n)+A017437(n)]/((-1)^A005117(n+2))²`
-/

namespace A142822.P7113673319149240520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017437 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / ((-1 : ℚ) ^ (A005117 (n + 2) : ℤ)) ^ 2

end

end A142822.P7113673319149240520

namespace A142822

/-- `p?[A053741(n)+A017437(n)]/((-1)^A005117(n+2))²` -/
def P7113673319149240520.Spec : Prop :=
  ∀ n, P7113673319149240520.a n = (A142822 (n + 1) : ℚ)

end A142822

/-! ## A142822.P12133505661327999907

`A000027(p?[A304839(n+1)+1])`
-/

namespace A142822.P12133505661327999907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142822.P12133505661327999907

namespace A142822

/-- `A000027(p?[A304839(n+1)+1])` -/
def P12133505661327999907.Spec : Prop :=
  ∀ n, P12133505661327999907.a n = A142822 (n + 1)

end A142822

/-! ## A142822.P6022789190984720974

`A000027(p?[A304158(n+1)+n])`
-/

namespace A142822.P6022789190984720974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304158 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142822.P6022789190984720974

namespace A142822

/-- `A000027(p?[A304158(n+1)+n])` -/
def P6022789190984720974.Spec : Prop :=
  ∀ n, P6022789190984720974.a n = A142822 (n + 1)

end A142822

/-! ## A142822.P12047042987928321904

`A000027(p?[A053741(n)+A017437(n)])`
-/

namespace A142822.P12047042987928321904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142822.P12047042987928321904

namespace A142822

/-- `A000027(p?[A053741(n)+A017437(n)])` -/
def P12047042987928321904.Spec : Prop :=
  ∀ n, P12047042987928321904.a n = A142822 (n + 1)

end A142822

/-! ## A142822.P10711664436205743593

`∩[A038942(n+1), A304839(n+1)+1]`
-/

namespace A142822.P10711664436205743593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142822.P10711664436205743593

namespace A142822

/-- `∩[A038942(n+1), A304839(n+1)+1]` -/
def P10711664436205743593.Spec : Prop :=
  ∀ n, (P10711664436205743593.a n : ℤ) = A142822 (n + 1)

end A142822

/-! ## A142822.P14609861064074385992

`or(1, p?[A017473(A017473(n))+n+1])`
-/

namespace A142822.P14609861064074385992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 (A017473 n).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142822.P14609861064074385992

namespace A142822

/-- `or(1, p?[A017473(A017473(n))+n+1])` -/
def P14609861064074385992.Spec : Prop :=
  ∀ n, P14609861064074385992.a n = A142822 (n + 1)

end A142822

/-! ## A142822.P1986943819624141982

`A000265(p?[A304839(n+1)+1])`
-/

namespace A142822.P1986943819624141982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142822.P1986943819624141982

namespace A142822

/-- `A000265(p?[A304839(n+1)+1])` -/
def P1986943819624141982.Spec : Prop :=
  ∀ n, P1986943819624141982.a n = A142822 (n + 1)

end A142822

/-! ## A142822.P6841831409364585382

`A001414(p?[A304839(n+1)+1])`
-/

namespace A142822.P6841831409364585382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142822.P6841831409364585382

namespace A142822

/-- `A001414(p?[A304839(n+1)+1])` -/
def P6841831409364585382.Spec : Prop :=
  ∀ n, P6841831409364585382.a n = A142822 (n + 1)

end A142822

/-! ## A142822.P17037699394756140779

`A007913(p?[A304839(n+1)+1])`
-/

namespace A142822.P17037699394756140779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142822.P17037699394756140779

namespace A142822

/-- `A007913(p?[A304839(n+1)+1])` -/
def P17037699394756140779.Spec : Prop :=
  ∀ n, P17037699394756140779.a n = A142822 (n + 1)

end A142822

/-! ## A142822.P14939060625576865396

`A008475(p?[A304839(n+1)+1])`
-/

namespace A142822.P14939060625576865396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142822.P14939060625576865396

namespace A142822

/-- `A008475(p?[A304839(n+1)+1])` -/
def P14939060625576865396.Spec : Prop :=
  ∀ n, P14939060625576865396.a n = A142822 (n + 1)

end A142822

/-! ## A142822.P13482629393208822350

`A000265(p?[A304158(n+1)+n])`
-/

namespace A142822.P13482629393208822350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304158 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142822.P13482629393208822350

namespace A142822

/-- `A000265(p?[A304158(n+1)+n])` -/
def P13482629393208822350.Spec : Prop :=
  ∀ n, P13482629393208822350.a n = A142822 (n + 1)

end A142822

/-! ## A142822.P2479488381253027962

`A000265(p?[A053741(n)+A017437(n)])`
-/

namespace A142822.P2479488381253027962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142822.P2479488381253027962

namespace A142822

/-- `A000265(p?[A053741(n)+A017437(n)])` -/
def P2479488381253027962.Spec : Prop :=
  ∀ n, P2479488381253027962.a n = A142822 (n + 1)

end A142822

/-!
# A142823: Primes congruent to 25 mod 61.

The programs for A142823, the canonical program `A142823.P14633950026413410704` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142823 has offset 1).

The definition of A142823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142823.P14633950026413410704

`p?[61*n+25]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142823

/-- `p?[61*n+25]` -/
def P14633950026413410704.Spec : Prop :=
  ∀ n, (P14633950026413410704.a n : ℤ) = A142823 (n + 1)

theorem P14633950026413410704.correct : P14633950026413410704.Spec := by
  intro n
  simp only [A142823, Nat.add_sub_cancel]

end A142823

/-! ## A142823.P16107769332315593235

`∑{p}[p?[A053742(n)+A008593(n)], #]`
-/

namespace A142823.P16107769332315593235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A008593 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142823.P16107769332315593235

namespace A142823

/-- `∑{p}[p?[A053742(n)+A008593(n)], #]` -/
def P16107769332315593235.Spec : Prop :=
  ∀ n, (P16107769332315593235.a n : ℤ) = A142823 (n + 1)

end A142823

/-! ## A142823.P917493639799569706

`p?[A053742(n)+A008593(n)]%A017236(n)`
-/

namespace A142823.P917493639799569706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A008593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017236 n)

end

end A142823.P917493639799569706

namespace A142823

/-- `p?[A053742(n)+A008593(n)]%A017236(n)` -/
def P917493639799569706.Spec : Prop :=
  ∀ n, P917493639799569706.a n = A142823 (n + 1)

end A142823

/-! ## A142823.P18229855789160543983

`A000007(n+1)+p?[A053742(n)+A008593(n)]`
-/

namespace A142823.P18229855789160543983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A008593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142823.P18229855789160543983

namespace A142823

/-- `A000007(n+1)+p?[A053742(n)+A008593(n)]` -/
def P18229855789160543983.Spec : Prop :=
  ∀ n, P18229855789160543983.a n = A142823 (n + 1)

end A142823

/-! ## A142823.P10040767311383201150

`A000027(p?[A304839(n+1)+2])`
-/

namespace A142823.P10040767311383201150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142823.P10040767311383201150

namespace A142823

/-- `A000027(p?[A304839(n+1)+2])` -/
def P10040767311383201150.Spec : Prop :=
  ∀ n, P10040767311383201150.a n = A142823 (n + 1)

end A142823

/-! ## A142823.P17102055292958936319

`A000027(p?[A053742(n)+A008593(n)])`
-/

namespace A142823.P17102055292958936319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A008593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142823.P17102055292958936319

namespace A142823

/-- `A000027(p?[A053742(n)+A008593(n)])` -/
def P17102055292958936319.Spec : Prop :=
  ∀ n, P17102055292958936319.a n = A142823 (n + 1)

end A142823

/-! ## A142823.P9577088228122161915

`A000265(p?[A304839(n+1)+2])`
-/

namespace A142823.P9577088228122161915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142823.P9577088228122161915

namespace A142823

/-- `A000265(p?[A304839(n+1)+2])` -/
def P9577088228122161915.Spec : Prop :=
  ∀ n, P9577088228122161915.a n = A142823 (n + 1)

end A142823

/-! ## A142823.P9917732245639573821

`A001414(p?[A304839(n+1)+2])`
-/

namespace A142823.P9917732245639573821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142823.P9917732245639573821

namespace A142823

/-- `A001414(p?[A304839(n+1)+2])` -/
def P9917732245639573821.Spec : Prop :=
  ∀ n, P9917732245639573821.a n = A142823 (n + 1)

end A142823

/-! ## A142823.P4739785830188051453

`A007913(p?[A304839(n+1)+2])`
-/

namespace A142823.P4739785830188051453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142823.P4739785830188051453

namespace A142823

/-- `A007913(p?[A304839(n+1)+2])` -/
def P4739785830188051453.Spec : Prop :=
  ∀ n, P4739785830188051453.a n = A142823 (n + 1)

end A142823

/-! ## A142823.P1214330952844183543

`A008475(p?[A304839(n+1)+2])`
-/

namespace A142823.P1214330952844183543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142823.P1214330952844183543

namespace A142823

/-- `A008475(p?[A304839(n+1)+2])` -/
def P1214330952844183543.Spec : Prop :=
  ∀ n, P1214330952844183543.a n = A142823 (n + 1)

end A142823

/-! ## A142823.P6326459927608624409

`A001414(p?[A082284(A304839(n+1))])`
-/

namespace A142823.P6326459927608624409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 (A304839 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142823.P6326459927608624409

namespace A142823

/-- `A001414(p?[A082284(A304839(n+1))])` -/
def P6326459927608624409.Spec : Prop :=
  ∀ n, P6326459927608624409.a n = A142823 (n + 1)

end A142823

/-! ## A142823.P5579270704353624922

`A008472(p?[A053742(n)+A008593(n)])`
-/

namespace A142823.P5579270704353624922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A008593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142823.P5579270704353624922

namespace A142823

/-- `A008472(p?[A053742(n)+A008593(n)])` -/
def P5579270704353624922.Spec : Prop :=
  ∀ n, P5579270704353624922.a n = A142823 (n + 1)

end A142823

/-! ## A142823.P1768052529028968673

`A052410(p?[A053741(n)+A017425(n)+2])`
-/

namespace A142823.P1768052529028968673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017425 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142823.P1768052529028968673

namespace A142823

/-- `A052410(p?[A053741(n)+A017425(n)+2])` -/
def P1768052529028968673.Spec : Prop :=
  ∀ n, P1768052529028968673.a n = A142823 (n + 1)

end A142823

/-!
# A142824: Primes congruent to 26 mod 61.

The programs for A142824, the canonical program `A142824.P1235275182454826355` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142824 has offset 1).

The definition of A142824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1313 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142824.P1235275182454826355

`p?[61*n+26]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142824

/-- `p?[61*n+26]` -/
def P1235275182454826355.Spec : Prop :=
  ∀ n, (P1235275182454826355.a n : ℤ) = A142824 (n + 1)

theorem P1235275182454826355.correct : P1235275182454826355.Spec := by
  intro n
  simp only [A142824, Nat.add_sub_cancel]

end A142824

/-! ## A142824.P8269415184850050617

`p?[A053742(n)+A017401(n)]+A045991(n)%2`
-/

namespace A142824.P8269415184850050617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A045991 n) 2

end

end A142824.P8269415184850050617

namespace A142824

/-- `p?[A053742(n)+A017401(n)]+A045991(n)%2` -/
def P8269415184850050617.Spec : Prop :=
  ∀ n, P8269415184850050617.a n = A142824 (n + 1)

end A142824

/-! ## A142824.P11001889964780137873

`p?[A053742(n)+A017401(n)]/A064179(n+1)²`
-/

namespace A142824.P11001889964780137873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017401 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A064179 (n + 1) ^ 2 : ℚ)

end

end A142824.P11001889964780137873

namespace A142824

/-- `p?[A053742(n)+A017401(n)]/A064179(n+1)²` -/
def P11001889964780137873.Spec : Prop :=
  ∀ n, P11001889964780137873.a n = (A142824 (n + 1) : ℚ)

end A142824

/-! ## A142824.P8508082970931680506

`p?[A053742(n)+A017401(n)]^A008836(n+1)²`
-/

namespace A142824.P8508082970931680506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017401 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A008836 (n + 1) ^ 2 : ℤ)

end

end A142824.P8508082970931680506

namespace A142824

/-- `p?[A053742(n)+A017401(n)]^A008836(n+1)²` -/
def P8508082970931680506.Spec : Prop :=
  ∀ n, P8508082970931680506.a n = (A142824 (n + 1) : ℚ)

end A142824

/-! ## A142824.P10681177305963525096

`p?[A053742(n)+A017401(n)]%A100775(n+1)²`
-/

namespace A142824.P10681177305963525096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A100775 (n + 1) ^ 2)

end

end A142824.P10681177305963525096

namespace A142824

/-- `p?[A053742(n)+A017401(n)]%A100775(n+1)²` -/
def P10681177305963525096.Spec : Prop :=
  ∀ n, P10681177305963525096.a n = A142824 (n + 1)

end A142824

/-! ## A142824.P9075871854977444223

`A000027(p?[A053742(n)+A017401(n)])`
-/

namespace A142824.P9075871854977444223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142824.P9075871854977444223

namespace A142824

/-- `A000027(p?[A053742(n)+A017401(n)])` -/
def P9075871854977444223.Spec : Prop :=
  ∀ n, P9075871854977444223.a n = A142824 (n + 1)

end A142824

/-! ## A142824.P10260803343073167848

`A000027(p?[A250024(n+1)+A139607(n)])`
-/

namespace A142824.P10260803343073167848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250024 (n + 1) + A139607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142824.P10260803343073167848

namespace A142824

/-- `A000027(p?[A250024(n+1)+A139607(n)])` -/
def P10260803343073167848.Spec : Prop :=
  ∀ n, P10260803343073167848.a n = A142824 (n + 1)

end A142824

/-! ## A142824.P2754891338112910126

`A000265(p?[A053742(n)+A017401(n)])`
-/

namespace A142824.P2754891338112910126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142824.P2754891338112910126

namespace A142824

/-- `A000265(p?[A053742(n)+A017401(n)])` -/
def P2754891338112910126.Spec : Prop :=
  ∀ n, P2754891338112910126.a n = A142824 (n + 1)

end A142824

/-! ## A142824.P771004896699693319

`A001414(p?[A053742(n)+A017401(n)])`
-/

namespace A142824.P771004896699693319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142824.P771004896699693319

namespace A142824

/-- `A001414(p?[A053742(n)+A017401(n)])` -/
def P771004896699693319.Spec : Prop :=
  ∀ n, P771004896699693319.a n = A142824 (n + 1)

end A142824

/-! ## A142824.P6254413643266767337

`A007947(p?[A053742(n)+A017401(n)])`
-/

namespace A142824.P6254413643266767337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142824.P6254413643266767337

namespace A142824

/-- `A007947(p?[A053742(n)+A017401(n)])` -/
def P6254413643266767337.Spec : Prop :=
  ∀ n, P6254413643266767337.a n = A142824 (n + 1)

end A142824

/-! ## A142824.P15911792146207471821

`A008472(p?[A053742(n)+A017401(n)])`
-/

namespace A142824.P15911792146207471821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142824.P15911792146207471821

namespace A142824

/-- `A008472(p?[A053742(n)+A017401(n)])` -/
def P15911792146207471821.Spec : Prop :=
  ∀ n, P15911792146207471821.a n = A142824 (n + 1)

end A142824

/-!
# A142825: Primes congruent to 27 mod 61.

The programs for A142825, the canonical program `A142825.P9734466294644144013` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142825 has offset 1).

The definition of A142825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1310 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142825.P9734466294644144013

`p?[61*n-34]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142825

/-- `p?[61*n-34]` -/
def P9734466294644144013.Spec : Prop :=
  ∀ n, P9734466294644144013.a n = A142825 (n + 1)

theorem P9734466294644144013.correct : P9734466294644144013.Spec := by
  intro n
  simp only [A142825, Nat.add_sub_cancel]

end A142825

/-! ## A142825.P10468209315250219957

`A000007(n+1)+p?[A053742(n)+A017413(n)]`
-/

namespace A142825.P10468209315250219957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142825.P10468209315250219957

namespace A142825

/-- `A000007(n+1)+p?[A053742(n)+A017413(n)]` -/
def P10468209315250219957.Spec : Prop :=
  ∀ n, P10468209315250219957.a n = A142825 (n + 1)

end A142825

/-! ## A142825.P18292473204572794612

`A000038(n+1)+p?[A053742(n)+A017413(n)]`
-/

namespace A142825.P18292473204572794612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142825.P18292473204572794612

namespace A142825

/-- `A000038(n+1)+p?[A053742(n)+A017413(n)]` -/
def P18292473204572794612.Spec : Prop :=
  ∀ n, P18292473204572794612.a n = A142825 (n + 1)

end A142825

/-! ## A142825.P14729660361357151817

`p?[A053742(n)+A017413(n)]%A123921(n+2)`
-/

namespace A142825.P14729660361357151817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A123921 (n + 2))

end

end A142825.P14729660361357151817

namespace A142825

/-- `p?[A053742(n)+A017413(n)]%A123921(n+2)` -/
def P14729660361357151817.Spec : Prop :=
  ∀ n, P14729660361357151817.a n = A142825 (n + 1)

end A142825

/-! ## A142825.P15990957435520850088

`A008836(n+1)²*p?[A053742(n)+A017413(n)]`
-/

namespace A142825.P15990957435520850088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142825.P15990957435520850088

namespace A142825

/-- `A008836(n+1)²*p?[A053742(n)+A017413(n)]` -/
def P15990957435520850088.Spec : Prop :=
  ∀ n, P15990957435520850088.a n = A142825 (n + 1)

end A142825

/-! ## A142825.P11105290213205238172

`A009001(2*n)²*p?[A053742(n)+A017413(n)]`
-/

namespace A142825.P11105290213205238172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142825.P11105290213205238172

namespace A142825

/-- `A009001(2*n)²*p?[A053742(n)+A017413(n)]` -/
def P11105290213205238172.Spec : Prop :=
  ∀ n, P11105290213205238172.a n = A142825 (n + 1)

end A142825

/-! ## A142825.P5243011105280352973

`p?[A053742(n)+A017413(n)]*A006519(2*n+1)`
-/

namespace A142825.P5243011105280352973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A006519 (2 * n + 1)

end

end A142825.P5243011105280352973

namespace A142825

/-- `p?[A053742(n)+A017413(n)]*A006519(2*n+1)` -/
def P5243011105280352973.Spec : Prop :=
  ∀ n, P5243011105280352973.a n = A142825 (n + 1)

end A142825

/-! ## A142825.P17190703343602083795

`A000027(p?[A304839(n+1)+4])`
-/

namespace A142825.P17190703343602083795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142825.P17190703343602083795

namespace A142825

/-- `A000027(p?[A304839(n+1)+4])` -/
def P17190703343602083795.Spec : Prop :=
  ∀ n, P17190703343602083795.a n = A142825 (n + 1)

end A142825

/-! ## A142825.P983309905101175615

`A000027(p?[A053742(n)+A017413(n)])`
-/

namespace A142825.P983309905101175615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142825.P983309905101175615

namespace A142825

/-- `A000027(p?[A053742(n)+A017413(n)])` -/
def P983309905101175615.Spec : Prop :=
  ∀ n, P983309905101175615.a n = A142825 (n + 1)

end A142825

/-! ## A142825.P5843680162885799899

`A014963(20*n+14)*p?[A053742(n)+A017413(n)]`
-/

namespace A142825.P5843680162885799899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (20 * n + 14) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142825.P5843680162885799899

namespace A142825

/-- `A014963(20*n+14)*p?[A053742(n)+A017413(n)]` -/
def P5843680162885799899.Spec : Prop :=
  ∀ n, P5843680162885799899.a n = A142825 (n + 1)

end A142825

/-! ## A142825.P5322621826300802481

`A000265(p?[A304839(n+1)+4])`
-/

namespace A142825.P5322621826300802481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142825.P5322621826300802481

namespace A142825

/-- `A000265(p?[A304839(n+1)+4])` -/
def P5322621826300802481.Spec : Prop :=
  ∀ n, P5322621826300802481.a n = A142825 (n + 1)

end A142825

/-! ## A142825.P12640043784516049802

`A007913(p?[A304839(n+1)+4])`
-/

namespace A142825.P12640043784516049802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142825.P12640043784516049802

namespace A142825

/-- `A007913(p?[A304839(n+1)+4])` -/
def P12640043784516049802.Spec : Prop :=
  ∀ n, P12640043784516049802.a n = A142825 (n + 1)

end A142825

/-! ## A142825.P15637005914318021955

`A007947(p?[A304839(n+1)+4])`
-/

namespace A142825.P15637005914318021955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142825.P15637005914318021955

namespace A142825

/-- `A007947(p?[A304839(n+1)+4])` -/
def P15637005914318021955.Spec : Prop :=
  ∀ n, P15637005914318021955.a n = A142825 (n + 1)

end A142825

/-! ## A142825.P9922584415067727887

`A008472(p?[A304839(n+1)+4])`
-/

namespace A142825.P9922584415067727887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142825.P9922584415067727887

namespace A142825

/-- `A008472(p?[A304839(n+1)+4])` -/
def P9922584415067727887.Spec : Prop :=
  ∀ n, P9922584415067727887.a n = A142825 (n + 1)

end A142825

/-! ## A142825.P15932606578935895170

`A008475(p?[A304839(n+1)+4])`
-/

namespace A142825.P15932606578935895170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142825.P15932606578935895170

namespace A142825

/-- `A008475(p?[A304839(n+1)+4])` -/
def P15932606578935895170.Spec : Prop :=
  ∀ n, P15932606578935895170.a n = A142825 (n + 1)

end A142825

/-! ## A142825.P2414413834992611842

`A000265(p?[A053742(n)+A017413(n)])`
-/

namespace A142825.P2414413834992611842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142825.P2414413834992611842

namespace A142825

/-- `A000265(p?[A053742(n)+A017413(n)])` -/
def P2414413834992611842.Spec : Prop :=
  ∀ n, P2414413834992611842.a n = A142825 (n + 1)

end A142825

/-! ## A142825.P17874366852187795125

`A007947(p?[A053742(n)+A017413(n)])`
-/

namespace A142825.P17874366852187795125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142825.P17874366852187795125

namespace A142825

/-- `A007947(p?[A053742(n)+A017413(n)])` -/
def P17874366852187795125.Spec : Prop :=
  ∀ n, P17874366852187795125.a n = A142825 (n + 1)

end A142825

/-! ## A142825.P5271386373852611222

`A008472(p?[A053742(n)+A017413(n)])`
-/

namespace A142825.P5271386373852611222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142825.P5271386373852611222

namespace A142825

/-- `A008472(p?[A053742(n)+A017413(n)])` -/
def P5271386373852611222.Spec : Prop :=
  ∀ n, P5271386373852611222.a n = A142825 (n + 1)

end A142825

/-!
# A142826: Primes congruent to 28 mod 61.

The programs for A142826, the canonical program `A142826.P1417636724773366379` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142826 has offset 1).

The definition of A142826 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142826.P1417636724773366379

`p?[61*n+28]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142826

/-- `p?[61*n+28]` -/
def P1417636724773366379.Spec : Prop :=
  ∀ n, (P1417636724773366379.a n : ℤ) = A142826 (n + 1)

theorem P1417636724773366379.correct : P1417636724773366379.Spec := by
  intro n
  simp only [A142826, Nat.add_sub_cancel]

end A142826

/-! ## A142826.P13516820130261067091

`or(1, p?[A304839(n+1)+5])`
-/

namespace A142826.P13516820130261067091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142826.P13516820130261067091

namespace A142826

/-- `or(1, p?[A304839(n+1)+5])` -/
def P13516820130261067091.Spec : Prop :=
  ∀ n, P13516820130261067091.a n = A142826 (n + 1)

end A142826

/-! ## A142826.P4944689874808399022

`p?[A304839(n+1)+5]%A006010(n+8)`
-/

namespace A142826.P4944689874808399022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A006010 (n + 8))

end

end A142826.P4944689874808399022

namespace A142826

/-- `p?[A304839(n+1)+5]%A006010(n+8)` -/
def P4944689874808399022.Spec : Prop :=
  ∀ n, P4944689874808399022.a n = A142826 (n + 1)

end A142826

/-! ## A142826.P9451080839222825328

`p?[A304839(n+1)+5]/A001222(A001359(n+1))`
-/

namespace A142826.P9451080839222825328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A001222 (A001359 (n + 1)).toNat : ℚ)

end

end A142826.P9451080839222825328

namespace A142826

/-- `p?[A304839(n+1)+5]/A001222(A001359(n+1))` -/
def P9451080839222825328.Spec : Prop :=
  ∀ n, P9451080839222825328.a n = (A142826 (n + 1) : ℚ)

end A142826

/-! ## A142826.P1337936375270402600

`A000027(p?[A304839(n+1)+5])`
-/

namespace A142826.P1337936375270402600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142826.P1337936375270402600

namespace A142826

/-- `A000027(p?[A304839(n+1)+5])` -/
def P1337936375270402600.Spec : Prop :=
  ∀ n, P1337936375270402600.a n = A142826 (n + 1)

end A142826

/-! ## A142826.P1484475511361657110

`A000265(p?[A304839(n+1)+5])`
-/

namespace A142826.P1484475511361657110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142826.P1484475511361657110

namespace A142826

/-- `A000265(p?[A304839(n+1)+5])` -/
def P1484475511361657110.Spec : Prop :=
  ∀ n, P1484475511361657110.a n = A142826 (n + 1)

end A142826

/-! ## A142826.P5991397302606069663

`A001414(p?[A304839(n+1)+5])`
-/

namespace A142826.P5991397302606069663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142826.P5991397302606069663

namespace A142826

/-- `A001414(p?[A304839(n+1)+5])` -/
def P5991397302606069663.Spec : Prop :=
  ∀ n, P5991397302606069663.a n = A142826 (n + 1)

end A142826

/-! ## A142826.P16034260927922031509

`A007913(p?[A304839(n+1)+5])`
-/

namespace A142826.P16034260927922031509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142826.P16034260927922031509

namespace A142826

/-- `A007913(p?[A304839(n+1)+5])` -/
def P16034260927922031509.Spec : Prop :=
  ∀ n, P16034260927922031509.a n = A142826 (n + 1)

end A142826

/-! ## A142826.P2438150101630001135

`A007947(p?[A304839(n+1)+5])`
-/

namespace A142826.P2438150101630001135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142826.P2438150101630001135

namespace A142826

/-- `A007947(p?[A304839(n+1)+5])` -/
def P2438150101630001135.Spec : Prop :=
  ∀ n, P2438150101630001135.a n = A142826 (n + 1)

end A142826

/-! ## A142826.P1077400849726769680

`A008475(p?[A304839(n+1)+5])`
-/

namespace A142826.P1077400849726769680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142826.P1077400849726769680

namespace A142826

/-- `A008475(p?[A304839(n+1)+5])` -/
def P1077400849726769680.Spec : Prop :=
  ∀ n, P1077400849726769680.a n = A142826 (n + 1)

end A142826

/-! ## A142826.P9874897106699787623

`∑{d}[p?[A304839(n+1)+5], A000010(#)]`
-/

namespace A142826.P9874897106699787623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A142826.P9874897106699787623

namespace A142826

/-- `∑{d}[p?[A304839(n+1)+5], A000010(#)]` -/
def P9874897106699787623.Spec : Prop :=
  ∀ n, P9874897106699787623.a n = A142826 (n + 1)

end A142826

/-!
# A142827: Primes congruent to 29 mod 61.

The programs for A142827, the canonical program `A142827.P9610161280895861040` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142827 has offset 1).

The definition of A142827 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1318 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142827.P9610161280895861040

`p?[61*n+29]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142827

/-- `p?[61*n+29]` -/
def P9610161280895861040.Spec : Prop :=
  ∀ n, (P9610161280895861040.a n : ℤ) = A142827 (n + 1)

theorem P9610161280895861040.correct : P9610161280895861040.Spec := by
  intro n
  simp only [A142827, Nat.add_sub_cancel]

end A142827

/-! ## A142827.P8647379485821294608

`or(1, p?[A304839(n+1)+6])`
-/

namespace A142827.P8647379485821294608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142827.P8647379485821294608

namespace A142827

/-- `or(1, p?[A304839(n+1)+6])` -/
def P8647379485821294608.Spec : Prop :=
  ∀ n, P8647379485821294608.a n = A142827 (n + 1)

end A142827

/-! ## A142827.P10492760727566207593

`p?[A053742(n)+A017437(n)]%A158406(n+1)`
-/

namespace A142827.P10492760727566207593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A158406 (n + 1))

end

end A142827.P10492760727566207593

namespace A142827

/-- `p?[A053742(n)+A017437(n)]%A158406(n+1)` -/
def P10492760727566207593.Spec : Prop :=
  ∀ n, P10492760727566207593.a n = A142827 (n + 1)

end A142827

/-! ## A142827.P2765763235900273275

`A000027(p?[A053742(n)+A017437(n)])`
-/

namespace A142827.P2765763235900273275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142827.P2765763235900273275

namespace A142827

/-- `A000027(p?[A053742(n)+A017437(n)])` -/
def P2765763235900273275.Spec : Prop :=
  ∀ n, P2765763235900273275.a n = A142827 (n + 1)

end A142827

/-! ## A142827.P8303348532380389002

`record[A020639(61*n+29)]`
-/

namespace A142827.P8303348532380389002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (61 * n + 29)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142827.P8303348532380389002

namespace A142827

/-- `record[A020639(61*n+29)]` -/
def P8303348532380389002.Spec : Prop :=
  ∀ n, P8303348532380389002.a n = A142827 (n + 1)

end A142827

/-! ## A142827.P9482810759958297012

`A000265(p?[A304839(n+1)+6])`
-/

namespace A142827.P9482810759958297012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142827.P9482810759958297012

namespace A142827

/-- `A000265(p?[A304839(n+1)+6])` -/
def P9482810759958297012.Spec : Prop :=
  ∀ n, P9482810759958297012.a n = A142827 (n + 1)

end A142827

/-! ## A142827.P8784216944733783420

`A007913(p?[A304839(n+1)+6])`
-/

namespace A142827.P8784216944733783420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142827.P8784216944733783420

namespace A142827

/-- `A007913(p?[A304839(n+1)+6])` -/
def P8784216944733783420.Spec : Prop :=
  ∀ n, P8784216944733783420.a n = A142827 (n + 1)

end A142827

/-! ## A142827.P6112391518624785624

`A000265(p?[A053742(n)+A017437(n)])`
-/

namespace A142827.P6112391518624785624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142827.P6112391518624785624

namespace A142827

/-- `A000265(p?[A053742(n)+A017437(n)])` -/
def P6112391518624785624.Spec : Prop :=
  ∀ n, P6112391518624785624.a n = A142827 (n + 1)

end A142827

/-!
# A142828: Primes congruent to 30 mod 61.

The programs for A142828, the canonical program `A142828.P240119688388233592` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142828 has offset 1).

The definition of A142828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1327 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142828.P240119688388233592

`p?[61*n+30]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142828

/-- `p?[61*n+30]` -/
def P240119688388233592.Spec : Prop :=
  ∀ n, (P240119688388233592.a n : ℤ) = A142828 (n + 1)

theorem P240119688388233592.correct : P240119688388233592.Spec := by
  intro n
  simp only [A142828, Nat.add_sub_cancel]

end A142828

/-! ## A142828.P18207124256455365120

`p?[A053742(n)+A017449(n)]%A038461(n+1)²`
-/

namespace A142828.P18207124256455365120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A038461 (n + 1) ^ 2)

end

end A142828.P18207124256455365120

namespace A142828

/-- `p?[A053742(n)+A017449(n)]%A038461(n+1)²` -/
def P18207124256455365120.Spec : Prop :=
  ∀ n, P18207124256455365120.a n = A142828 (n + 1)

end A142828

/-! ## A142828.P5573164467331152494

`p?[A053741(n)+A017509(n)]%A052905(n+8)²`
-/

namespace A142828.P5573164467331152494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A052905 (n + 8) ^ 2)

end

end A142828.P5573164467331152494

namespace A142828

/-- `p?[A053741(n)+A017509(n)]%A052905(n+8)²` -/
def P5573164467331152494.Spec : Prop :=
  ∀ n, P5573164467331152494.a n = A142828 (n + 1)

end A142828

/-! ## A142828.P12698393057056747374

`A000027(p?[A304839(n+1)+7])`
-/

namespace A142828.P12698393057056747374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142828.P12698393057056747374

namespace A142828

/-- `A000027(p?[A304839(n+1)+7])` -/
def P12698393057056747374.Spec : Prop :=
  ∀ n, P12698393057056747374.a n = A142828 (n + 1)

end A142828

/-! ## A142828.P4449959906193274027

`A000027(p?[A053742(n)+A017449(n)])`
-/

namespace A142828.P4449959906193274027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142828.P4449959906193274027

namespace A142828

/-- `A000027(p?[A053742(n)+A017449(n)])` -/
def P4449959906193274027.Spec : Prop :=
  ∀ n, P4449959906193274027.a n = A142828 (n + 1)

end A142828

/-! ## A142828.P9987860184099537301

`A000027(p?[A053741(n)+A017509(n)])`
-/

namespace A142828.P9987860184099537301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142828.P9987860184099537301

namespace A142828

/-- `A000027(p?[A053741(n)+A017509(n)])` -/
def P9987860184099537301.Spec : Prop :=
  ∀ n, P9987860184099537301.a n = A142828 (n + 1)

end A142828

/-! ## A142828.P1173077606184017236

`A000265(p?[A304839(n+1)+7])`
-/

namespace A142828.P1173077606184017236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142828.P1173077606184017236

namespace A142828

/-- `A000265(p?[A304839(n+1)+7])` -/
def P1173077606184017236.Spec : Prop :=
  ∀ n, P1173077606184017236.a n = A142828 (n + 1)

end A142828

/-! ## A142828.P4641340452728562170

`A000265(p?[A053742(n)+A017449(n)])`
-/

namespace A142828.P4641340452728562170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142828.P4641340452728562170

namespace A142828

/-- `A000265(p?[A053742(n)+A017449(n)])` -/
def P4641340452728562170.Spec : Prop :=
  ∀ n, P4641340452728562170.a n = A142828 (n + 1)

end A142828

/-! ## A142828.P11852149333934630217

`A000265(p?[A053741(n)+A017509(n)])`
-/

namespace A142828.P11852149333934630217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142828.P11852149333934630217

namespace A142828

/-- `A000265(p?[A053741(n)+A017509(n)])` -/
def P11852149333934630217.Spec : Prop :=
  ∀ n, P11852149333934630217.a n = A142828 (n + 1)

end A142828

/-! ## A142828.P14431271756256241800

`A008472(p?[A053742(n)+A017449(n)])`
-/

namespace A142828.P14431271756256241800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142828.P14431271756256241800

namespace A142828

/-- `A008472(p?[A053742(n)+A017449(n)])` -/
def P14431271756256241800.Spec : Prop :=
  ∀ n, P14431271756256241800.a n = A142828 (n + 1)

end A142828

/-!
# A142829: Primes congruent to 31 mod 61.

The programs for A142829, the canonical program `A142829.P4429976672204541894` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142829 has offset 1).

The definition of A142829 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1318 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142829.P4429976672204541894

`p?[61*n-30]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142829

/-- `p?[61*n-30]` -/
def P4429976672204541894.Spec : Prop :=
  ∀ n, P4429976672204541894.a n = A142829 (n + 1)

theorem P4429976672204541894.correct : P4429976672204541894.Spec := by
  intro n
  simp only [A142829, Nat.add_sub_cancel]

end A142829

/-! ## A142829.P17346842468623557996

`or(1, p?[A053742(n)+A017461(n)])`
-/

namespace A142829.P17346842468623557996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142829.P17346842468623557996

namespace A142829

/-- `or(1, p?[A053742(n)+A017461(n)])` -/
def P17346842468623557996.Spec : Prop :=
  ∀ n, P17346842468623557996.a n = A142829 (n + 1)

end A142829

/-! ## A142829.P10019031360777630439

`p?[A053742(n)+A017461(n)]%A017246(2*n)`
-/

namespace A142829.P10019031360777630439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017246 (2 * n))

end

end A142829.P10019031360777630439

namespace A142829

/-- `p?[A053742(n)+A017461(n)]%A017246(2*n)` -/
def P10019031360777630439.Spec : Prop :=
  ∀ n, P10019031360777630439.a n = A142829 (n + 1)

end A142829

/-! ## A142829.P12731318780625892028

`A276084(2*n+1)+p?[A053742(n)+A017461(n)]`
-/

namespace A142829.P12731318780625892028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276084 (2 * n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142829.P12731318780625892028

namespace A142829

/-- `A276084(2*n+1)+p?[A053742(n)+A017461(n)]` -/
def P12731318780625892028.Spec : Prop :=
  ∀ n, P12731318780625892028.a n = A142829 (n + 1)

end A142829

/-! ## A142829.P11561952712753580447

`A000027(p?[A304839(n+1)+8])`
-/

namespace A142829.P11561952712753580447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142829.P11561952712753580447

namespace A142829

/-- `A000027(p?[A304839(n+1)+8])` -/
def P11561952712753580447.Spec : Prop :=
  ∀ n, P11561952712753580447.a n = A142829 (n + 1)

end A142829

/-! ## A142829.P11532913437053323515

`record[A020639(A304839(n+1)+8)]`
-/

namespace A142829.P11532913437053323515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304839 (n + 1) + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142829.P11532913437053323515

namespace A142829

/-- `record[A020639(A304839(n+1)+8)]` -/
def P11532913437053323515.Spec : Prop :=
  ∀ n, P11532913437053323515.a n = A142829 (n + 1)

end A142829

/-! ## A142829.P15591879720581768069

`A000265(p?[A304839(n+1)+8])`
-/

namespace A142829.P15591879720581768069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142829.P15591879720581768069

namespace A142829

/-- `A000265(p?[A304839(n+1)+8])` -/
def P15591879720581768069.Spec : Prop :=
  ∀ n, P15591879720581768069.a n = A142829 (n + 1)

end A142829

/-! ## A142829.P2425659587631388124

`A001414(p?[A304839(n+1)+8])`
-/

namespace A142829.P2425659587631388124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142829.P2425659587631388124

namespace A142829

/-- `A001414(p?[A304839(n+1)+8])` -/
def P2425659587631388124.Spec : Prop :=
  ∀ n, P2425659587631388124.a n = A142829 (n + 1)

end A142829

/-! ## A142829.P10933893404049157818

`A007913(p?[A304839(n+1)+8])`
-/

namespace A142829.P10933893404049157818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142829.P10933893404049157818

namespace A142829

/-- `A007913(p?[A304839(n+1)+8])` -/
def P10933893404049157818.Spec : Prop :=
  ∀ n, P10933893404049157818.a n = A142829 (n + 1)

end A142829

/-! ## A142829.P11610358483801619261

`A008475(p?[A304839(n+1)+8])`
-/

namespace A142829.P11610358483801619261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142829.P11610358483801619261

namespace A142829

/-- `A008475(p?[A304839(n+1)+8])` -/
def P11610358483801619261.Spec : Prop :=
  ∀ n, P11610358483801619261.a n = A142829 (n + 1)

end A142829

/-! ## A142829.P4401020048705826211

`record[A020639(A128470(2*n+1)+n)]`
-/

namespace A142829.P4401020048705826211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A128470 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142829.P4401020048705826211

namespace A142829

/-- `record[A020639(A128470(2*n+1)+n)]` -/
def P4401020048705826211.Spec : Prop :=
  ∀ n, P4401020048705826211.a n = A142829 (n + 1)

end A142829

/-! ## A142829.P4715881184864359685

`record[A020639(A053742(n)+A017461(n))]`
-/

namespace A142829.P4715881184864359685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A053742 n + A017461 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142829.P4715881184864359685

namespace A142829

/-- `record[A020639(A053742(n)+A017461(n))]` -/
def P4715881184864359685.Spec : Prop :=
  ∀ n, P4715881184864359685.a n = A142829 (n + 1)

end A142829

/-! ## A142829.P4268175178970271806

`A000265(p?[A053742(n)+A017461(n)])`
-/

namespace A142829.P4268175178970271806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142829.P4268175178970271806

namespace A142829

/-- `A000265(p?[A053742(n)+A017461(n)])` -/
def P4268175178970271806.Spec : Prop :=
  ∀ n, P4268175178970271806.a n = A142829 (n + 1)

end A142829

/-! ## A142829.P17141172721184230964

`A008472(p?[A053742(n)+A017461(n)])`
-/

namespace A142829.P17141172721184230964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142829.P17141172721184230964

namespace A142829

/-- `A008472(p?[A053742(n)+A017461(n)])` -/
def P17141172721184230964.Spec : Prop :=
  ∀ n, P17141172721184230964.a n = A142829 (n + 1)

end A142829

/-! ## A142829.P6648662193972027768

`record[A020639(A139609(2*n+1)-A017425(n+1))]`
-/

namespace A142829.P6648662193972027768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A139609 (2 * n + 1) - A017425 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142829.P6648662193972027768

namespace A142829

/-- `record[A020639(A139609(2*n+1)-A017425(n+1))]` -/
def P6648662193972027768.Spec : Prop :=
  ∀ n, P6648662193972027768.a n = A142829 (n + 1)

end A142829

/-!
# A142830: Primes congruent to 32 mod 61.

The programs for A142830, the canonical program `A142830.P13461365843527250451` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142830 has offset 1).

The definition of A142830 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1291 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142830.P13461365843527250451

`p?[61*n-29]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142830

/-- `p?[61*n-29]` -/
def P13461365843527250451.Spec : Prop :=
  ∀ n, P13461365843527250451.a n = A142830 (n + 1)

theorem P13461365843527250451.correct : P13461365843527250451.Spec := by
  intro n
  simp only [A142830, Nat.add_sub_cancel]

end A142830

/-! ## A142830.P15952944213189466006

`∑{p}[p?[A304609(n+2)+A004771(n)], #]`
-/

namespace A142830.P15952944213189466006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304609 (n + 2) + A004771 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142830.P15952944213189466006

namespace A142830

/-- `∑{p}[p?[A304609(n+2)+A004771(n)], #]` -/
def P15952944213189466006.Spec : Prop :=
  ∀ n, (P15952944213189466006.a n : ℤ) = A142830 (n + 1)

end A142830

/-! ## A142830.P1053220322852529039

`∏{p}[p?[A304839(2*(n+1))+9], #]`
-/

namespace A142830.P1053220322852529039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (2 * (n + 1)) + 9

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142830.P1053220322852529039

namespace A142830

/-- `∏{p}[p?[A304839(2*(n+1))+9], #]` -/
def P1053220322852529039.Spec : Prop :=
  ∀ n, (P1053220322852529039.a n : ℤ) = A142830 (n + 1)

end A142830

/-! ## A142830.P11151154803793760256

`A000027(p?[A304839(n+1)+9])`
-/

namespace A142830.P11151154803793760256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142830.P11151154803793760256

namespace A142830

/-- `A000027(p?[A304839(n+1)+9])` -/
def P11151154803793760256.Spec : Prop :=
  ∀ n, P11151154803793760256.a n = A142830 (n + 1)

end A142830

/-! ## A142830.P13499686693333073495

`A000265(p?[A304839(n+1)+9])`
-/

namespace A142830.P13499686693333073495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142830.P13499686693333073495

namespace A142830

/-- `A000265(p?[A304839(n+1)+9])` -/
def P13499686693333073495.Spec : Prop :=
  ∀ n, P13499686693333073495.a n = A142830 (n + 1)

end A142830

/-! ## A142830.P9684577407410799658

`A007913(p?[A304839(n+1)+9])`
-/

namespace A142830.P9684577407410799658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142830.P9684577407410799658

namespace A142830

/-- `A007913(p?[A304839(n+1)+9])` -/
def P9684577407410799658.Spec : Prop :=
  ∀ n, P9684577407410799658.a n = A142830 (n + 1)

end A142830

/-! ## A142830.P12027427998342937062

`A008475(p?[A304839(n+1)+9])`
-/

namespace A142830.P12027427998342937062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142830.P12027427998342937062

namespace A142830

/-- `A008475(p?[A304839(n+1)+9])` -/
def P12027427998342937062.Spec : Prop :=
  ∀ n, P12027427998342937062.a n = A142830 (n + 1)

end A142830

/-!
# A142831: Primes congruent to 33 mod 61.

The programs for A142831, the canonical program `A142831.P15581421332111852108` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142831 has offset 1).

The definition of A142831 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1322 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142831.P15581421332111852108

`p?[a(n-1)+61]` with `a(0)=33`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142831

/-- `p?[a(n-1)+61]` -/
def P15581421332111852108.Spec : Prop :=
  ∀ n, (P15581421332111852108.a n : ℤ) = A142831 (n + 1)

theorem P15581421332111852108.correct : P15581421332111852108.Spec := by
  intro n
  simp only [A142831, Nat.add_sub_cancel]

end A142831

/-! ## A142831.P7556985158544928177

`p?[62*n+33-n]`
-/

namespace A142831.P7556985158544928177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (62 * n : ℤ) + (33 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142831.P7556985158544928177

namespace A142831

/-- `p?[62*n+33-n]` -/
def P7556985158544928177.Spec : Prop :=
  ∀ n, P7556985158544928177.a n = A142831 (n + 1)

end A142831

/-! ## A142831.P2795637342356393635

`or(p?[A304839(n+1)+10], A000035(n))`
-/

namespace A142831.P2795637342356393635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000035 n)

end

end A142831.P2795637342356393635

namespace A142831

/-- `or(p?[A304839(n+1)+10], A000035(n))` -/
def P2795637342356393635.Spec : Prop :=
  ∀ n, P2795637342356393635.a n = A142831 (n + 1)

end A142831

/-! ## A142831.P7233917840065056359

`A063524(n+2)+p?[A304839(n+1)+10]`
-/

namespace A142831.P7233917840065056359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 2) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142831.P7233917840065056359

namespace A142831

/-- `A063524(n+2)+p?[A304839(n+1)+10]` -/
def P7233917840065056359.Spec : Prop :=
  ∀ n, P7233917840065056359.a n = A142831 (n + 1)

end A142831

/-! ## A142831.P1929333946137226074

`p?[A304839(n+1)+10]+A008683(9*(n+1))`
-/

namespace A142831.P1929333946137226074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (9 * (n + 1))

end

end A142831.P1929333946137226074

namespace A142831

/-- `p?[A304839(n+1)+10]+A008683(9*(n+1))` -/
def P1929333946137226074.Spec : Prop :=
  ∀ n, P1929333946137226074.a n = A142831 (n + 1)

end A142831

/-! ## A142831.P647710974023049078

`p?[A304839(n+1)+10]/A007318(and(2, n-2))`
-/

namespace A142831.P647710974023049078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 (Int.land 2 ((n : ℤ) - 2)).toNat : ℚ)

end

end A142831.P647710974023049078

namespace A142831

/-- `p?[A304839(n+1)+10]/A007318(and(2, n-2))` -/
def P647710974023049078.Spec : Prop :=
  ∀ n, P647710974023049078.a n = (A142831 (n + 1) : ℚ)

end A142831

/-! ## A142831.P1152523224968810860

`A000007(A143269(n+1))+p?[A304839(n+1)+10]`
-/

namespace A142831.P1152523224968810860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A143269 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142831.P1152523224968810860

namespace A142831

/-- `A000007(A143269(n+1))+p?[A304839(n+1)+10]` -/
def P1152523224968810860.Spec : Prop :=
  ∀ n, P1152523224968810860.a n = A142831 (n + 1)

end A142831

/-! ## A142831.P5904744996560343847

`A000027(p?[A304839(n+1)+10])`
-/

namespace A142831.P5904744996560343847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142831.P5904744996560343847

namespace A142831

/-- `A000027(p?[A304839(n+1)+10])` -/
def P5904744996560343847.Spec : Prop :=
  ∀ n, P5904744996560343847.a n = A142831 (n + 1)

end A142831

/-! ## A142831.P2088724936781494354

`A007318(∑[n])*p?[A304839(n+1)+10]`
-/

namespace A142831.P2088724936781494354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A142831.P2088724936781494354

namespace A142831

/-- `A007318(∑[n])*p?[A304839(n+1)+10]` -/
def P2088724936781494354.Spec : Prop :=
  ∀ n, P2088724936781494354.a n = A142831 (n + 1)

end A142831

/-!
# A142832: Primes congruent to 34 mod 61.

The programs for A142832, the canonical program `A142832.P132076529308838864` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142832 has offset 1).

The definition of A142832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1308 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142832.P132076529308838864

`p?[61*n+34]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142832

/-- `p?[61*n+34]` -/
def P132076529308838864.Spec : Prop :=
  ∀ n, (P132076529308838864.a n : ℤ) = A142832 (n + 1)

theorem P132076529308838864.correct : P132076529308838864.Spec := by
  intro n
  simp only [A142832, Nat.add_sub_cancel]

end A142832

/-! ## A142832.P17581829714594663646

`p?[A053742(n)+A017497(n)]%A016901(n)`
-/

namespace A142832.P17581829714594663646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A016901 n)

end

end A142832.P17581829714594663646

namespace A142832

/-- `p?[A053742(n)+A017497(n)]%A016901(n)` -/
def P17581829714594663646.Spec : Prop :=
  ∀ n, P17581829714594663646.a n = A142832 (n + 1)

end A142832

/-! ## A142832.P11781081919558535307

`p?[A053742(n)+A017497(n)]/A020985(n)²`
-/

namespace A142832.P11781081919558535307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017497 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A020985 n ^ 2 : ℚ)

end

end A142832.P11781081919558535307

namespace A142832

/-- `p?[A053742(n)+A017497(n)]/A020985(n)²` -/
def P11781081919558535307.Spec : Prop :=
  ∀ n, P11781081919558535307.a n = (A142832 (n + 1) : ℚ)

end A142832

/-! ## A142832.P15637551928913420900

`p?[A053742(n)+A017497(n)]+A066568(n)%3`
-/

namespace A142832.P15637551928913420900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A066568 n) 3

end

end A142832.P15637551928913420900

namespace A142832

/-- `p?[A053742(n)+A017497(n)]+A066568(n)%3` -/
def P15637551928913420900.Spec : Prop :=
  ∀ n, P15637551928913420900.a n = A142832 (n + 1)

end A142832

/-! ## A142832.P9849714248337425323

`p?[A053742(n)+A017497(n)]+2%(A285133(n+1)+1)`
-/

namespace A142832.P9849714248337425323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod 2 (A285133 (n + 1) + 1)

end

end A142832.P9849714248337425323

namespace A142832

/-- `p?[A053742(n)+A017497(n)]+2%(A285133(n+1)+1)` -/
def P9849714248337425323.Spec : Prop :=
  ∀ n, P9849714248337425323.a n = A142832 (n + 1)

end A142832

/-! ## A142832.P11758877898268495793

`A000027(p?[A053742(n)+A017497(n)])`
-/

namespace A142832.P11758877898268495793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142832.P11758877898268495793

namespace A142832

/-- `A000027(p?[A053742(n)+A017497(n)])` -/
def P11758877898268495793.Spec : Prop :=
  ∀ n, P11758877898268495793.a n = A142832 (n + 1)

end A142832

/-! ## A142832.P13065408274389298237

`A000265(p?[A304839(n+1)+11])`
-/

namespace A142832.P13065408274389298237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142832.P13065408274389298237

namespace A142832

/-- `A000265(p?[A304839(n+1)+11])` -/
def P13065408274389298237.Spec : Prop :=
  ∀ n, P13065408274389298237.a n = A142832 (n + 1)

end A142832

/-! ## A142832.P16459916724427994662

`A007913(p?[A304839(n+1)+11])`
-/

namespace A142832.P16459916724427994662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142832.P16459916724427994662

namespace A142832

/-- `A007913(p?[A304839(n+1)+11])` -/
def P16459916724427994662.Spec : Prop :=
  ∀ n, P16459916724427994662.a n = A142832 (n + 1)

end A142832

/-! ## A142832.P18365069816546031780

`A008475(p?[A304839(n+1)+11])`
-/

namespace A142832.P18365069816546031780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142832.P18365069816546031780

namespace A142832

/-- `A008475(p?[A304839(n+1)+11])` -/
def P18365069816546031780.Spec : Prop :=
  ∀ n, P18365069816546031780.a n = A142832 (n + 1)

end A142832

/-! ## A142832.P17945417804378316414

`A000265(p?[A053742(n)+A017497(n)])`
-/

namespace A142832.P17945417804378316414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142832.P17945417804378316414

namespace A142832

/-- `A000265(p?[A053742(n)+A017497(n)])` -/
def P17945417804378316414.Spec : Prop :=
  ∀ n, P17945417804378316414.a n = A142832 (n + 1)

end A142832

/-!
# A142833: Primes congruent to 35 mod 61.

The programs for A142833, the canonical program `A142833.P15840218021613281995` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142833 has offset 1).

The definition of A142833 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1321 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142833.P15840218021613281995

`p?[61*n-26]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142833

/-- `p?[61*n-26]` -/
def P15840218021613281995.Spec : Prop :=
  ∀ n, P15840218021613281995.a n = A142833 (n + 1)

theorem P15840218021613281995.correct : P15840218021613281995.Spec := by
  intro n
  simp only [A142833, Nat.add_sub_cancel]

end A142833

/-! ## A142833.P18006954295848787484

`p?[A053742(n)+A017509(n)]%A016901(n)`
-/

namespace A142833.P18006954295848787484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A016901 n)

end

end A142833.P18006954295848787484

namespace A142833

/-- `p?[A053742(n)+A017509(n)]%A016901(n)` -/
def P18006954295848787484.Spec : Prop :=
  ∀ n, P18006954295848787484.a n = A142833 (n + 1)

end A142833

/-! ## A142833.P4939466011371359089

`A020985(n)²*p?[A053742(n)+A017509(n)]`
-/

namespace A142833.P4939466011371359089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142833.P4939466011371359089

namespace A142833

/-- `A020985(n)²*p?[A053742(n)+A017509(n)]` -/
def P4939466011371359089.Spec : Prop :=
  ∀ n, P4939466011371359089.a n = A142833 (n + 1)

end A142833

/-! ## A142833.P15569669903727645969

`A000007(n+1)+p?[A053742(n)+A017509(n)]`
-/

namespace A142833.P15569669903727645969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142833.P15569669903727645969

namespace A142833

/-- `A000007(n+1)+p?[A053742(n)+A017509(n)]` -/
def P15569669903727645969.Spec : Prop :=
  ∀ n, P15569669903727645969.a n = A142833 (n + 1)

end A142833

/-! ## A142833.P5249724418001935392

`p?[A053742(n)+A017509(n)]+A046092(n)%2`
-/

namespace A142833.P5249724418001935392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A046092 n) 2

end

end A142833.P5249724418001935392

namespace A142833

/-- `p?[A053742(n)+A017509(n)]+A046092(n)%2` -/
def P5249724418001935392.Spec : Prop :=
  ∀ n, P5249724418001935392.a n = A142833 (n + 1)

end A142833

/-! ## A142833.P9043133183487727200

`A028387(n)%2*p?[A053742(n)+A017509(n)]`
-/

namespace A142833.P9043133183487727200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028387 n) 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142833.P9043133183487727200

namespace A142833

/-- `A028387(n)%2*p?[A053742(n)+A017509(n)]` -/
def P9043133183487727200.Spec : Prop :=
  ∀ n, P9043133183487727200.a n = A142833 (n + 1)

end A142833

/-! ## A142833.P4584791094527248385

`A098547(n)%2*p?[A053742(n)+A017509(n)]`
-/

namespace A142833.P4584791094527248385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098547 n) 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142833.P4584791094527248385

namespace A142833

/-- `A098547(n)%2*p?[A053742(n)+A017509(n)]` -/
def P4584791094527248385.Spec : Prop :=
  ∀ n, P4584791094527248385.a n = A142833 (n + 1)

end A142833

/-! ## A142833.P8832704791999023675

`A099375(n)%2*p?[A053742(n)+A017509(n)]`
-/

namespace A142833.P8832704791999023675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099375 n) 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142833.P8832704791999023675

namespace A142833

/-- `A099375(n)%2*p?[A053742(n)+A017509(n)]` -/
def P8832704791999023675.Spec : Prop :=
  ∀ n, P8832704791999023675.a n = A142833 (n + 1)

end A142833

/-! ## A142833.P17780926558648530521

`A002061(n+1)%2*p?[A053742(n)+A017509(n)]`
-/

namespace A142833.P17780926558648530521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002061 (n + 1)) 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142833.P17780926558648530521

namespace A142833

/-- `A002061(n+1)%2*p?[A053742(n)+A017509(n)]` -/
def P17780926558648530521.Spec : Prop :=
  ∀ n, P17780926558648530521.a n = A142833 (n + 1)

end A142833

/-! ## A142833.P16610599234246098479

`p?[A053742(n)+A017509(n)]+(2*A004525(n))%2`
-/

namespace A142833.P16610599234246098479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (2 * A004525 n) 2

end

end A142833.P16610599234246098479

namespace A142833

/-- `p?[A053742(n)+A017509(n)]+(2*A004525(n))%2` -/
def P16610599234246098479.Spec : Prop :=
  ∀ n, P16610599234246098479.a n = A142833 (n + 1)

end A142833

/-! ## A142833.P15486807909131477230

`p?[A053742(n)+A017509(n)]+(n+1)%A300826(n+1)`
-/

namespace A142833.P15486807909131477230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (n + 1 : ℤ) (A300826 (n + 1))

end

end A142833.P15486807909131477230

namespace A142833

/-- `p?[A053742(n)+A017509(n)]+(n+1)%A300826(n+1)` -/
def P15486807909131477230.Spec : Prop :=
  ∀ n, P15486807909131477230.a n = A142833 (n + 1)

end A142833

/-! ## A142833.P8868781127300811755

`A000027(p?[A304839(n+1)+12])`
-/

namespace A142833.P8868781127300811755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142833.P8868781127300811755

namespace A142833

/-- `A000027(p?[A304839(n+1)+12])` -/
def P8868781127300811755.Spec : Prop :=
  ∀ n, P8868781127300811755.a n = A142833 (n + 1)

end A142833

/-! ## A142833.P3653947658253630477

`A000027(p?[A053742(n)+A017509(n)])`
-/

namespace A142833.P3653947658253630477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142833.P3653947658253630477

namespace A142833

/-- `A000027(p?[A053742(n)+A017509(n)])` -/
def P3653947658253630477.Spec : Prop :=
  ∀ n, P3653947658253630477.a n = A142833 (n + 1)

end A142833

/-! ## A142833.P7619748782810417137

`A000265(p?[A304839(n+1)+12])`
-/

namespace A142833.P7619748782810417137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142833.P7619748782810417137

namespace A142833

/-- `A000265(p?[A304839(n+1)+12])` -/
def P7619748782810417137.Spec : Prop :=
  ∀ n, P7619748782810417137.a n = A142833 (n + 1)

end A142833

/-! ## A142833.P16376495807543748644

`A007913(p?[A304839(n+1)+12])`
-/

namespace A142833.P16376495807543748644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142833.P16376495807543748644

namespace A142833

/-- `A007913(p?[A304839(n+1)+12])` -/
def P16376495807543748644.Spec : Prop :=
  ∀ n, P16376495807543748644.a n = A142833 (n + 1)

end A142833

/-! ## A142833.P6293175658645282045

`A000265(p?[A053742(n)+A017509(n)])`
-/

namespace A142833.P6293175658645282045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142833.P6293175658645282045

namespace A142833

/-- `A000265(p?[A053742(n)+A017509(n)])` -/
def P6293175658645282045.Spec : Prop :=
  ∀ n, P6293175658645282045.a n = A142833 (n + 1)

end A142833

/-! ## A142833.P11938658471817530846

`A001414(p?[A053742(n)+A017509(n)])`
-/

namespace A142833.P11938658471817530846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142833.P11938658471817530846

namespace A142833

/-- `A001414(p?[A053742(n)+A017509(n)])` -/
def P11938658471817530846.Spec : Prop :=
  ∀ n, P11938658471817530846.a n = A142833 (n + 1)

end A142833

/-! ## A142833.P3832980244696263057

`A007913(p?[A053742(n)+A017509(n)])`
-/

namespace A142833.P3832980244696263057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142833.P3832980244696263057

namespace A142833

/-- `A007913(p?[A053742(n)+A017509(n)])` -/
def P3832980244696263057.Spec : Prop :=
  ∀ n, P3832980244696263057.a n = A142833 (n + 1)

end A142833

/-! ## A142833.P2517815046495810276

`A007947(p?[A053742(n)+A017509(n)])`
-/

namespace A142833.P2517815046495810276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142833.P2517815046495810276

namespace A142833

/-- `A007947(p?[A053742(n)+A017509(n)])` -/
def P2517815046495810276.Spec : Prop :=
  ∀ n, P2517815046495810276.a n = A142833 (n + 1)

end A142833

/-! ## A142833.P11693717829017721339

`A299149(p?[A304839(n+1)+12])`
-/

namespace A142833.P11693717829017721339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299149 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142833.P11693717829017721339

namespace A142833

/-- `A299149(p?[A304839(n+1)+12])` -/
def P11693717829017721339.Spec : Prop :=
  ∀ n, P11693717829017721339.a n = A142833 (n + 1)

end A142833

/-!
# A142834: Primes congruent to 36 mod 61.

The programs for A142834, the canonical program `A142834.P6523830976216642014` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142834 has offset 1).

The definition of A142834 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1293 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142834.P6523830976216642014

`p?[61*n-25]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142834

/-- `p?[61*n-25]` -/
def P6523830976216642014.Spec : Prop :=
  ∀ n, P6523830976216642014.a n = A142834 (n + 1)

theorem P6523830976216642014.correct : P6523830976216642014.Spec := by
  intro n
  simp only [A142834, Nat.add_sub_cancel]

end A142834

/-! ## A142834.P1072701701924350684

`or(1, p?[A304839(n+1)+13])`
-/

namespace A142834.P1072701701924350684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142834.P1072701701924350684

namespace A142834

/-- `or(1, p?[A304839(n+1)+13])` -/
def P1072701701924350684.Spec : Prop :=
  ∀ n, P1072701701924350684.a n = A142834 (n + 1)

end A142834

/-! ## A142834.P16770840254124069730

`p?[A304839(n+1)+13]+A001489(n)+n`
-/

namespace A142834.P16770840254124069730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (A001489 n + (n : ℤ))

end

end A142834.P16770840254124069730

namespace A142834

/-- `p?[A304839(n+1)+13]+A001489(n)+n` -/
def P16770840254124069730.Spec : Prop :=
  ∀ n, P16770840254124069730.a n = A142834 (n + 1)

end A142834

/-! ## A142834.P7964132166188040948

`p?[A304839(n+1)+13]/A038500(A104917(n+5))`
-/

namespace A142834.P7964132166188040948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 13

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A038500 (A104917 (n + 5)).toNat : ℚ)

end

end A142834.P7964132166188040948

namespace A142834

/-- `p?[A304839(n+1)+13]/A038500(A104917(n+5))` -/
def P7964132166188040948.Spec : Prop :=
  ∀ n, P7964132166188040948.a n = (A142834 (n + 1) : ℚ)

end A142834

/-! ## A142834.P12793512123084712488

`A000027(p?[A304839(n+1)+13])`
-/

namespace A142834.P12793512123084712488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142834.P12793512123084712488

namespace A142834

/-- `A000027(p?[A304839(n+1)+13])` -/
def P12793512123084712488.Spec : Prop :=
  ∀ n, P12793512123084712488.a n = A142834 (n + 1)

end A142834

/-! ## A142834.P6705004963422895195

`A000265(p?[A304839(n+1)+13])`
-/

namespace A142834.P6705004963422895195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142834.P6705004963422895195

namespace A142834

/-- `A000265(p?[A304839(n+1)+13])` -/
def P6705004963422895195.Spec : Prop :=
  ∀ n, P6705004963422895195.a n = A142834 (n + 1)

end A142834

/-! ## A142834.P5221879740303682143

`A007913(p?[A304839(n+1)+13])`
-/

namespace A142834.P5221879740303682143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142834.P5221879740303682143

namespace A142834

/-- `A007913(p?[A304839(n+1)+13])` -/
def P5221879740303682143.Spec : Prop :=
  ∀ n, P5221879740303682143.a n = A142834 (n + 1)

end A142834

/-! ## A142834.P17175635322636400096

`A007947(p?[A304839(n+1)+13])`
-/

namespace A142834.P17175635322636400096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142834.P17175635322636400096

namespace A142834

/-- `A007947(p?[A304839(n+1)+13])` -/
def P17175635322636400096.Spec : Prop :=
  ∀ n, P17175635322636400096.a n = A142834 (n + 1)

end A142834

/-! ## A142834.P13149536971899912246

`A008472(p?[A304839(n+1)+13])`
-/

namespace A142834.P13149536971899912246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142834.P13149536971899912246

namespace A142834

/-- `A008472(p?[A304839(n+1)+13])` -/
def P13149536971899912246.Spec : Prop :=
  ∀ n, P13149536971899912246.a n = A142834 (n + 1)

end A142834

/-! ## A142834.P6364343252520011145

`A008475(p?[A304839(n+1)+13])`
-/

namespace A142834.P6364343252520011145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142834.P6364343252520011145

namespace A142834

/-- `A008475(p?[A304839(n+1)+13])` -/
def P6364343252520011145.Spec : Prop :=
  ∀ n, P6364343252520011145.a n = A142834 (n + 1)

end A142834

/-! ## A142834.P12931113345250959301

`∏{p}[p?[A304839(n+1)+13], A020639(#)]`
-/

namespace A142834.P12931113345250959301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 13

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A020639 p

end

end A142834.P12931113345250959301

namespace A142834

/-- `∏{p}[p?[A304839(n+1)+13], A020639(#)]` -/
def P12931113345250959301.Spec : Prop :=
  ∀ n, P12931113345250959301.a n = A142834 (n + 1)

end A142834

/-!
# A142835: Primes congruent to 37 mod 61.

The programs for A142835, the canonical program `A142835.P15901031311554015010` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142835 has offset 1).

The definition of A142835 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1310 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142835.P15901031311554015010

`p?[61*n-24]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142835

/-- `p?[61*n-24]` -/
def P15901031311554015010.Spec : Prop :=
  ∀ n, P15901031311554015010.a n = A142835 (n + 1)

theorem P15901031311554015010.correct : P15901031311554015010.Spec := by
  intro n
  simp only [A142835, Nat.add_sub_cancel]

end A142835

/-! ## A142835.P16234156765197924700

`or(1, p?[61*n+37])`
-/

namespace A142835.P16234156765197924700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 37

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142835.P16234156765197924700

namespace A142835

/-- `or(1, p?[61*n+37])` -/
def P16234156765197924700.Spec : Prop :=
  ∀ n, (P16234156765197924700.a n : ℤ) = A142835 (n + 1)

end A142835

/-! ## A142835.P3367834194583229009

`root(p?[61*n+37], 2)²`
-/

namespace A142835.P3367834194583229009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 37

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A142835.P3367834194583229009

namespace A142835

/-- `root(p?[61*n+37], 2)²` -/
def P3367834194583229009.Spec : Prop :=
  ∀ n, P3367834194583229009.a n = (A142835 (n + 1) : ℝ)

end A142835

/-! ## A142835.P17786990163074197594

`p?[61*n+37]%p?[61*n+37]²`
-/

namespace A142835.P17786990163074197594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 37

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 37

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) % f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ 2

end

end A142835.P17786990163074197594

namespace A142835

/-- `p?[61*n+37]%p?[61*n+37]²` -/
def P17786990163074197594.Spec : Prop :=
  ∀ n, (P17786990163074197594.a n : ℤ) = A142835 (n + 1)

end A142835

/-! ## A142835.P8872325273484333488

`p?[61*n+37]*A000034(2*n)`
-/

namespace A142835.P8872325273484333488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 37

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) * A000034 (2 * n)

end

end A142835.P8872325273484333488

namespace A142835

/-- `p?[61*n+37]*A000034(2*n)` -/
def P8872325273484333488.Spec : Prop :=
  ∀ n, P8872325273484333488.a n = A142835 (n + 1)

end A142835

/-! ## A142835.P15148144503354171442

`char[A089007(n+1)]+p?[61*n+37]`
-/

namespace A142835.P15148144503354171442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089007 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 37

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

end

end A142835.P15148144503354171442

namespace A142835

/-- `char[A089007(n+1)]+p?[61*n+37]` -/
def P15148144503354171442.Spec : Prop :=
  ∀ n, (P15148144503354171442.a n : ℤ) = A142835 (n + 1)

end A142835

/-! ## A142835.P2560635859422537769

`p?[61*n+37]*A001511(2*n+1)`
-/

namespace A142835.P2560635859422537769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 37

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) * A001511 (2 * n + 1)

end

end A142835.P2560635859422537769

namespace A142835

/-- `p?[61*n+37]*A001511(2*n+1)` -/
def P2560635859422537769.Spec : Prop :=
  ∀ n, P2560635859422537769.a n = A142835 (n + 1)

end A142835

/-! ## A142835.P7916256518939504622

`p?[61*n+37]*A006519(2*n+1)`
-/

namespace A142835.P7916256518939504622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 37

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) * A006519 (2 * n + 1)

end

end A142835.P7916256518939504622

namespace A142835

/-- `p?[61*n+37]*A006519(2*n+1)` -/
def P7916256518939504622.Spec : Prop :=
  ∀ n, P7916256518939504622.a n = A142835 (n + 1)

end A142835

/-! ## A142835.P14764168371838099482

`A008683(A001097(n+1))²*p?[61*n+37]`
-/

namespace A142835.P14764168371838099482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 37

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001097 (n + 1)).toNat ^ 2 * (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A142835.P14764168371838099482

namespace A142835

/-- `A008683(A001097(n+1))²*p?[61*n+37]` -/
def P14764168371838099482.Spec : Prop :=
  ∀ n, P14764168371838099482.a n = A142835 (n + 1)

end A142835

/-! ## A142835.P17883603094427765737

`A000027(p?[A304839(n+1)-47])`
-/

namespace A142835.P17883603094427765737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 47

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142835.P17883603094427765737

namespace A142835

/-- `A000027(p?[A304839(n+1)-47])` -/
def P17883603094427765737.Spec : Prop :=
  ∀ n, P17883603094427765737.a n = A142835 (n + 1)

end A142835

/-! ## A142835.P15651959014296550068

`A000265(p?[61*n+37])`
-/

namespace A142835.P15651959014296550068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 37

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142835.P15651959014296550068

namespace A142835

/-- `A000265(p?[61*n+37])` -/
def P15651959014296550068.Spec : Prop :=
  ∀ n, P15651959014296550068.a n = A142835 (n + 1)

end A142835

/-! ## A142835.P14123594734249306996

`record[A020639(A304839(n+1)+14)]`
-/

namespace A142835.P14123594734249306996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304839 (n + 1) + 14).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142835.P14123594734249306996

namespace A142835

/-- `record[A020639(A304839(n+1)+14)]` -/
def P14123594734249306996.Spec : Prop :=
  ∀ n, P14123594734249306996.a n = A142835 (n + 1)

end A142835

/-! ## A142835.P2615215268179755225

`A001414(p?[A304839(n+1)+14])`
-/

namespace A142835.P2615215268179755225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142835.P2615215268179755225

namespace A142835

/-- `A001414(p?[A304839(n+1)+14])` -/
def P2615215268179755225.Spec : Prop :=
  ∀ n, P2615215268179755225.a n = A142835 (n + 1)

end A142835

/-! ## A142835.P13482504076036027646

`record[A020639(A304157(n+1)+A139613(n))]`
-/

namespace A142835.P13482504076036027646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304157 (n + 1) + A139613 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142835.P13482504076036027646

namespace A142835

/-- `record[A020639(A304157(n+1)+A139613(n))]` -/
def P13482504076036027646.Spec : Prop :=
  ∀ n, P13482504076036027646.a n = A142835 (n + 1)

end A142835

/-!
# A142836: Primes congruent to 38 mod 61.

The programs for A142836, the canonical program `A142836.P10505046727369022589` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142836 has offset 1).

The definition of A142836 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1307 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142836.P10505046727369022589

`p?[61*n-23]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142836

/-- `p?[61*n-23]` -/
def P10505046727369022589.Spec : Prop :=
  ∀ n, P10505046727369022589.a n = A142836 (n + 1)

theorem P10505046727369022589.correct : P10505046727369022589.Spec := by
  intro n
  simp only [A142836, Nat.add_sub_cancel]

end A142836

/-! ## A142836.P12241638287912868108

`or(1, p?[A304839(n+1)+15])`
-/

namespace A142836.P12241638287912868108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142836.P12241638287912868108

namespace A142836

/-- `or(1, p?[A304839(n+1)+15])` -/
def P12241638287912868108.Spec : Prop :=
  ∀ n, P12241638287912868108.a n = A142836 (n + 1)

end A142836

/-! ## A142836.P17339797763600378838

`or(1, p?[A146081(n)-A269100(n)])`
-/

namespace A142836.P17339797763600378838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A269100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142836.P17339797763600378838

namespace A142836

/-- `or(1, p?[A146081(n)-A269100(n)])` -/
def P17339797763600378838.Spec : Prop :=
  ∀ n, P17339797763600378838.a n = A142836 (n + 1)

end A142836

/-! ## A142836.P9147343810568218100

`p?[A146081(n)-A269100(n)]/A033999(n)²`
-/

namespace A142836.P9147343810568218100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A269100 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A142836.P9147343810568218100

namespace A142836

/-- `p?[A146081(n)-A269100(n)]/A033999(n)²` -/
def P9147343810568218100.Spec : Prop :=
  ∀ n, P9147343810568218100.a n = (A142836 (n + 1) : ℚ)

end A142836

/-! ## A142836.P12778743629559249014

`p?[A146081(n)-A269100(n)]%(2-A000330(n+4))²`
-/

namespace A142836.P12778743629559249014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A269100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ((2 - A000330 (n + 4)) ^ 2)

end

end A142836.P12778743629559249014

namespace A142836

/-- `p?[A146081(n)-A269100(n)]%(2-A000330(n+4))²` -/
def P12778743629559249014.Spec : Prop :=
  ∀ n, P12778743629559249014.a n = A142836 (n + 1)

end A142836

/-! ## A142836.P5423530511286096034

`A000027(p?[A146081(n)-A269100(n)])`
-/

namespace A142836.P5423530511286096034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A269100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142836.P5423530511286096034

namespace A142836

/-- `A000027(p?[A146081(n)-A269100(n)])` -/
def P5423530511286096034.Spec : Prop :=
  ∀ n, P5423530511286096034.a n = A142836 (n + 1)

end A142836

/-! ## A142836.P4139663849775633967

`A000027(p?[A304609(n+1)+A004770(n+1)])`
-/

namespace A142836.P4139663849775633967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304609 (n + 1) + A004770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142836.P4139663849775633967

namespace A142836

/-- `A000027(p?[A304609(n+1)+A004770(n+1)])` -/
def P4139663849775633967.Spec : Prop :=
  ∀ n, P4139663849775633967.a n = A142836 (n + 1)

end A142836

/-! ## A142836.P16432647138970031885

`A001414(p?[A304839(n+1)+15])`
-/

namespace A142836.P16432647138970031885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142836.P16432647138970031885

namespace A142836

/-- `A001414(p?[A304839(n+1)+15])` -/
def P16432647138970031885.Spec : Prop :=
  ∀ n, P16432647138970031885.a n = A142836 (n + 1)

end A142836

/-! ## A142836.P14353391475610078764

`A008475(p?[A304839(n+1)+15])`
-/

namespace A142836.P14353391475610078764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142836.P14353391475610078764

namespace A142836

/-- `A008475(p?[A304839(n+1)+15])` -/
def P14353391475610078764.Spec : Prop :=
  ∀ n, P14353391475610078764.a n = A142836 (n + 1)

end A142836

/-! ## A142836.P2577336815450576039

`A000265(p?[A146081(n)-A269100(n)])`
-/

namespace A142836.P2577336815450576039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A269100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142836.P2577336815450576039

namespace A142836

/-- `A000265(p?[A146081(n)-A269100(n)])` -/
def P2577336815450576039.Spec : Prop :=
  ∀ n, P2577336815450576039.a n = A142836 (n + 1)

end A142836

/-! ## A142836.P2586269579887948883

`A001414(p?[A146081(n)-A269100(n)])`
-/

namespace A142836.P2586269579887948883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A269100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142836.P2586269579887948883

namespace A142836

/-- `A001414(p?[A146081(n)-A269100(n)])` -/
def P2586269579887948883.Spec : Prop :=
  ∀ n, P2586269579887948883.a n = A142836 (n + 1)

end A142836

/-! ## A142836.P1893379504862491898

`A007947(p?[A304609(n+1)+A004770(n+1)])`
-/

namespace A142836.P1893379504862491898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304609 (n + 1) + A004770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142836.P1893379504862491898

namespace A142836

/-- `A007947(p?[A304609(n+1)+A004770(n+1)])` -/
def P1893379504862491898.Spec : Prop :=
  ∀ n, P1893379504862491898.a n = A142836 (n + 1)

end A142836

/-! ## A142836.P6766932500865624347

`A299149(p?[A146081(n)-A269100(n)])`
-/

namespace A142836.P6766932500865624347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A269100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299149 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142836.P6766932500865624347

namespace A142836

/-- `A299149(p?[A146081(n)-A269100(n)])` -/
def P6766932500865624347.Spec : Prop :=
  ∀ n, P6766932500865624347.a n = A142836 (n + 1)

end A142836

/-!
# A142837: Primes congruent to 39 mod 61.

The programs for A142837, the canonical program `A142837.P9880264004782884500` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142837 has offset 1).

The definition of A142837 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1316 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142837.P9880264004782884500

`p?[61*n-22]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142837

/-- `p?[61*n-22]` -/
def P9880264004782884500.Spec : Prop :=
  ∀ n, P9880264004782884500.a n = A142837 (n + 1)

theorem P9880264004782884500.correct : P9880264004782884500.Spec := by
  intro n
  simp only [A142837, Nat.add_sub_cancel]

end A142837

/-! ## A142837.P238676981531399191

`or(1, p?[A304839(n+1)+16])`
-/

namespace A142837.P238676981531399191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142837.P238676981531399191

namespace A142837

/-- `or(1, p?[A304839(n+1)+16])` -/
def P238676981531399191.Spec : Prop :=
  ∀ n, P238676981531399191.a n = A142837 (n + 1)

end A142837

/-! ## A142837.P10538721688696490595

`A000038(n+1)+p?[A304839(n+1)+16]`
-/

namespace A142837.P10538721688696490595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142837.P10538721688696490595

namespace A142837

/-- `A000038(n+1)+p?[A304839(n+1)+16]` -/
def P10538721688696490595.Spec : Prop :=
  ∀ n, P10538721688696490595.a n = A142837 (n + 1)

end A142837

/-! ## A142837.P9080107883722022849

`A001221(A006093(n+1)+1)*p?[A304839(n+1)+16]`
-/

namespace A142837.P9080107883722022849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A006093 (n + 1) + 1).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142837.P9080107883722022849

namespace A142837

/-- `A001221(A006093(n+1)+1)*p?[A304839(n+1)+16]` -/
def P9080107883722022849.Spec : Prop :=
  ∀ n, P9080107883722022849.a n = A142837 (n + 1)

end A142837

/-! ## A142837.P5611955998524597191

`A000027(p?[A304839(n+1)+16])`
-/

namespace A142837.P5611955998524597191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142837.P5611955998524597191

namespace A142837

/-- `A000027(p?[A304839(n+1)+16])` -/
def P5611955998524597191.Spec : Prop :=
  ∀ n, P5611955998524597191.a n = A142837 (n + 1)

end A142837

/-! ## A142837.P15446142298778786495

`A000265(p?[A304839(n+1)+16])`
-/

namespace A142837.P15446142298778786495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142837.P15446142298778786495

namespace A142837

/-- `A000265(p?[A304839(n+1)+16])` -/
def P15446142298778786495.Spec : Prop :=
  ∀ n, P15446142298778786495.a n = A142837 (n + 1)

end A142837

/-! ## A142837.P8650938681578103088

`A001414(p?[A304839(n+1)+16])`
-/

namespace A142837.P8650938681578103088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142837.P8650938681578103088

namespace A142837

/-- `A001414(p?[A304839(n+1)+16])` -/
def P8650938681578103088.Spec : Prop :=
  ∀ n, P8650938681578103088.a n = A142837 (n + 1)

end A142837

/-! ## A142837.P13226451770747840207

`A007913(p?[A304839(n+1)+16])`
-/

namespace A142837.P13226451770747840207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142837.P13226451770747840207

namespace A142837

/-- `A007913(p?[A304839(n+1)+16])` -/
def P13226451770747840207.Spec : Prop :=
  ∀ n, P13226451770747840207.a n = A142837 (n + 1)

end A142837

/-! ## A142837.P293094685124865924

`A008475(p?[A304839(n+1)+16])`
-/

namespace A142837.P293094685124865924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142837.P293094685124865924

namespace A142837

/-- `A008475(p?[A304839(n+1)+16])` -/
def P293094685124865924.Spec : Prop :=
  ∀ n, P293094685124865924.a n = A142837 (n + 1)

end A142837

/-!
# A142838: Primes congruent to 40 mod 61.

The programs for A142838, the canonical program `A142838.P8063950462163677651` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142838 has offset 1).

The definition of A142838 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142838.P8063950462163677651

`p?[61*n-21]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142838

/-- `p?[61*n-21]` -/
def P8063950462163677651.Spec : Prop :=
  ∀ n, P8063950462163677651.a n = A142838 (n + 1)

theorem P8063950462163677651.correct : P8063950462163677651.Spec := by
  intro n
  simp only [A142838, Nat.add_sub_cancel]

end A142838

/-! ## A142838.P1704407739471631866

`or(1, p?[a(n-1)+61])` with `a(0)=40`
-/

namespace A142838.P1704407739471631866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [40] fun n f1 =>
  f1 (n - 1) + 61

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142838.P1704407739471631866

namespace A142838

/-- `or(1, p?[a(n-1)+61])` -/
def P1704407739471631866.Spec : Prop :=
  ∀ n, (P1704407739471631866.a n : ℤ) = A142838 (n + 1)

end A142838

/-! ## A142838.P13316774588256672553

`or(1, p?[A304609(n+1)+A004771(n)])`
-/

namespace A142838.P13316774588256672553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304609 (n + 1) + A004771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142838.P13316774588256672553

namespace A142838

/-- `or(1, p?[A304609(n+1)+A004771(n)])` -/
def P13316774588256672553.Spec : Prop :=
  ∀ n, P13316774588256672553.a n = A142838 (n + 1)

end A142838

/-! ## A142838.P5193004900663108752

`p?[A304609(n+1)+A004771(n)]%A017475(n)`
-/

namespace A142838.P5193004900663108752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304609 (n + 1) + A004771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017475 n)

end

end A142838.P5193004900663108752

namespace A142838

/-- `p?[A304609(n+1)+A004771(n)]%A017475(n)` -/
def P5193004900663108752.Spec : Prop :=
  ∀ n, P5193004900663108752.a n = A142838 (n + 1)

end A142838

/-! ## A142838.P3445982528374493606

`A056594(2*n)²*p?[A304609(n+1)+A004771(n)]`
-/

namespace A142838.P3445982528374493606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304609 (n + 1) + A004771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142838.P3445982528374493606

namespace A142838

/-- `A056594(2*n)²*p?[A304609(n+1)+A004771(n)]` -/
def P3445982528374493606.Spec : Prop :=
  ∀ n, P3445982528374493606.a n = A142838 (n + 1)

end A142838

/-! ## A142838.P13436411673574716407

`p?[A053742(n)+A017449(n)+10]%A027470(n+3)`
-/

namespace A142838.P13436411673574716407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017449 n + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A027470 (n + 3))

end

end A142838.P13436411673574716407

namespace A142838

/-- `p?[A053742(n)+A017449(n)+10]%A027470(n+3)` -/
def P13436411673574716407.Spec : Prop :=
  ∀ n, P13436411673574716407.a n = A142838 (n + 1)

end A142838

/-! ## A142838.P7390063835217713355

`A000027(p?[A304839(n+1)+17])`
-/

namespace A142838.P7390063835217713355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142838.P7390063835217713355

namespace A142838

/-- `A000027(p?[A304839(n+1)+17])` -/
def P7390063835217713355.Spec : Prop :=
  ∀ n, P7390063835217713355.a n = A142838 (n + 1)

end A142838

/-! ## A142838.P14615331180866696860

`A000027(p?[A304609(n+1)+A004771(n)])`
-/

namespace A142838.P14615331180866696860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304609 (n + 1) + A004771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142838.P14615331180866696860

namespace A142838

/-- `A000027(p?[A304609(n+1)+A004771(n)])` -/
def P14615331180866696860.Spec : Prop :=
  ∀ n, P14615331180866696860.a n = A142838 (n + 1)

end A142838

/-! ## A142838.P10229950116008960960

`A000027(p?[A053742(n)+A017449(n)+10])`
-/

namespace A142838.P10229950116008960960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017449 n + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142838.P10229950116008960960

namespace A142838

/-- `A000027(p?[A053742(n)+A017449(n)+10])` -/
def P10229950116008960960.Spec : Prop :=
  ∀ n, P10229950116008960960.a n = A142838 (n + 1)

end A142838

/-! ## A142838.P1573552829119712460

`A000265(p?[A304839(n+1)+17])`
-/

namespace A142838.P1573552829119712460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142838.P1573552829119712460

namespace A142838

/-- `A000265(p?[A304839(n+1)+17])` -/
def P1573552829119712460.Spec : Prop :=
  ∀ n, P1573552829119712460.a n = A142838 (n + 1)

end A142838

/-! ## A142838.P7554597991752935118

`A007913(p?[A304839(n+1)+17])`
-/

namespace A142838.P7554597991752935118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142838.P7554597991752935118

namespace A142838

/-- `A007913(p?[A304839(n+1)+17])` -/
def P7554597991752935118.Spec : Prop :=
  ∀ n, P7554597991752935118.a n = A142838 (n + 1)

end A142838

/-! ## A142838.P9127928956414557837

`A008475(p?[A304839(n+1)+17])`
-/

namespace A142838.P9127928956414557837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142838.P9127928956414557837

namespace A142838

/-- `A008475(p?[A304839(n+1)+17])` -/
def P9127928956414557837.Spec : Prop :=
  ∀ n, P9127928956414557837.a n = A142838 (n + 1)

end A142838

/-! ## A142838.P6460510562526017613

`record[A006530(20*A016969(n)+2*n+1)]`
-/

namespace A142838.P6460510562526017613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (20 * A016969 n + (2 * n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142838.P6460510562526017613

namespace A142838

/-- `record[A006530(20*A016969(n)+2*n+1)]` -/
def P6460510562526017613.Spec : Prop :=
  ∀ n, P6460510562526017613.a n = A142838 (n + 1)

end A142838

/-! ## A142838.P10366642078331561282

`record[A006530(A304609(n+1)+A004771(n))]`
-/

namespace A142838.P10366642078331561282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A304609 (n + 1) + A004771 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142838.P10366642078331561282

namespace A142838

/-- `record[A006530(A304609(n+1)+A004771(n))]` -/
def P10366642078331561282.Spec : Prop :=
  ∀ n, P10366642078331561282.a n = A142838 (n + 1)

end A142838

/-! ## A142838.P17473572789926999384

`record[A020639(A304609(n+1)+A004771(n))]`
-/

namespace A142838.P17473572789926999384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304609 (n + 1) + A004771 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142838.P17473572789926999384

namespace A142838

/-- `record[A020639(A304609(n+1)+A004771(n))]` -/
def P17473572789926999384.Spec : Prop :=
  ∀ n, P17473572789926999384.a n = A142838 (n + 1)

end A142838

/-!
# A142839: Primes congruent to 41 mod 61.

The programs for A142839, the canonical program `A142839.P8312266947308202852` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142839 has offset 1).

The definition of A142839 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1319 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142839.P8312266947308202852

`p?[61*n-20]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142839

/-- `p?[61*n-20]` -/
def P8312266947308202852.Spec : Prop :=
  ∀ n, P8312266947308202852.a n = A142839 (n + 1)

theorem P8312266947308202852.correct : P8312266947308202852.Spec := by
  intro n
  simp only [A142839, Nat.add_sub_cancel]

end A142839

/-! ## A142839.P13956344848464257079

`or(1, p?[A304839(n+1)+18])`
-/

namespace A142839.P13956344848464257079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142839.P13956344848464257079

namespace A142839

/-- `or(1, p?[A304839(n+1)+18])` -/
def P13956344848464257079.Spec : Prop :=
  ∀ n, P13956344848464257079.a n = A142839 (n + 1)

end A142839

/-! ## A142839.P2481326603471925381

`A346607(A001222(n+1)+1)+p?[A304839(n+1)+18]`
-/

namespace A142839.P2481326603471925381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346607 (A001222 (n + 1) + 1).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142839.P2481326603471925381

namespace A142839

/-- `A346607(A001222(n+1)+1)+p?[A304839(n+1)+18]` -/
def P2481326603471925381.Spec : Prop :=
  ∀ n, P2481326603471925381.a n = A142839 (n + 1)

end A142839

/-! ## A142839.P9778499875310553823

`A346607(A253893(n+1)+1)+p?[A304839(n+1)+18]`
-/

namespace A142839.P9778499875310553823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346607 (A253893 (n + 1) + 1).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142839.P9778499875310553823

namespace A142839

/-- `A346607(A253893(n+1)+1)+p?[A304839(n+1)+18]` -/
def P9778499875310553823.Spec : Prop :=
  ∀ n, P9778499875310553823.a n = A142839 (n + 1)

end A142839

/-! ## A142839.P17635719846392668760

`A000027(p?[A304839(n+1)+18])`
-/

namespace A142839.P17635719846392668760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142839.P17635719846392668760

namespace A142839

/-- `A000027(p?[A304839(n+1)+18])` -/
def P17635719846392668760.Spec : Prop :=
  ∀ n, P17635719846392668760.a n = A142839 (n + 1)

end A142839

/-! ## A142839.P5454892398077628883

`record[A020639(A304839(n+1)+18)]`
-/

namespace A142839.P5454892398077628883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304839 (n + 1) + 18).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142839.P5454892398077628883

namespace A142839

/-- `record[A020639(A304839(n+1)+18)]` -/
def P5454892398077628883.Spec : Prop :=
  ∀ n, P5454892398077628883.a n = A142839 (n + 1)

end A142839

/-! ## A142839.P1852372976722096628

`A007947(p?[A304839(n+1)-43])`
-/

namespace A142839.P1852372976722096628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 43

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142839.P1852372976722096628

namespace A142839

/-- `A007947(p?[A304839(n+1)-43])` -/
def P1852372976722096628.Spec : Prop :=
  ∀ n, P1852372976722096628.a n = A142839 (n + 1)

end A142839

/-! ## A142839.P2438654714251966030

`record[A020639(A195033(3*(n+1))-(n+1))]`
-/

namespace A142839.P2438654714251966030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A195033 (3 * (n + 1)) - (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142839.P2438654714251966030

namespace A142839

/-- `record[A020639(A195033(3*(n+1))-(n+1))]` -/
def P2438654714251966030.Spec : Prop :=
  ∀ n, P2438654714251966030.a n = A142839 (n + 1)

end A142839

/-!
# A142840: Primes congruent to 42 mod 61.

The programs for A142840, the canonical program `A142840.P4352705550183834374` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142840 has offset 1).

The definition of A142840 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142840.P4352705550183834374

`p?[61*n-80]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142840

/-- `p?[61*n-80]` -/
def P4352705550183834374.Spec : Prop :=
  ∀ n, P4352705550183834374.a n = A142840 (n + 1)

theorem P4352705550183834374.correct : P4352705550183834374.Spec := by
  intro n
  simp only [A142840, Nat.add_sub_cancel]

end A142840

/-! ## A142840.P16975184186259514760

`or(1, p?[A304839(n+1)+19])`
-/

namespace A142840.P16975184186259514760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142840.P16975184186259514760

namespace A142840

/-- `or(1, p?[A304839(n+1)+19])` -/
def P16975184186259514760.Spec : Prop :=
  ∀ n, P16975184186259514760.a n = A142840 (n + 1)

end A142840

/-! ## A142840.P4494605121215998540

`or(1, p?[A146081(n)-A269044(n)])`
-/

namespace A142840.P4494605121215998540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A269044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142840.P4494605121215998540

namespace A142840

/-- `or(1, p?[A146081(n)-A269044(n)])` -/
def P4494605121215998540.Spec : Prop :=
  ∀ n, P4494605121215998540.a n = A142840 (n + 1)

end A142840

/-! ## A142840.P5276893004665442963

`lcm(p?[A304839(n+1)+19], A008836(n+1))`
-/

namespace A142840.P5276893004665442963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A008836 (n + 1))

end

end A142840.P5276893004665442963

namespace A142840

/-- `lcm(p?[A304839(n+1)+19], A008836(n+1))` -/
def P5276893004665442963.Spec : Prop :=
  ∀ n, (P5276893004665442963.a n : ℤ) = A142840 (n + 1)

end A142840

/-! ## A142840.P6966169707659506432

`char[A048958(n+1)]+p?[A304839(n+1)+19]`
-/

namespace A142840.P6966169707659506432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A142840.P6966169707659506432

namespace A142840

/-- `char[A048958(n+1)]+p?[A304839(n+1)+19]` -/
def P6966169707659506432.Spec : Prop :=
  ∀ n, P6966169707659506432.a n = A142840 (n + 1)

end A142840

/-! ## A142840.P1764186358703346408

`char[A048959(n+1)]+p?[A304839(n+1)+19]`
-/

namespace A142840.P1764186358703346408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A142840.P1764186358703346408

namespace A142840

/-- `char[A048959(n+1)]+p?[A304839(n+1)+19]` -/
def P1764186358703346408.Spec : Prop :=
  ∀ n, P1764186358703346408.a n = A142840 (n + 1)

end A142840

/-! ## A142840.P1846112898851017865

`A014963(A008458(n))*p?[A304839(n+1)+19]`
-/

namespace A142840.P1846112898851017865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142840.P1846112898851017865

namespace A142840

/-- `A014963(A008458(n))*p?[A304839(n+1)+19]` -/
def P1846112898851017865.Spec : Prop :=
  ∀ n, P1846112898851017865.a n = A142840 (n + 1)

end A142840

/-! ## A142840.P15311064978284245643

`A000027(p?[A304839(n+1)+19])`
-/

namespace A142840.P15311064978284245643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142840.P15311064978284245643

namespace A142840

/-- `A000027(p?[A304839(n+1)+19])` -/
def P15311064978284245643.Spec : Prop :=
  ∀ n, P15311064978284245643.a n = A142840 (n + 1)

end A142840

/-! ## A142840.P7960240039666907233

`A000027(p?[A146081(n)-A269044(n)])`
-/

namespace A142840.P7960240039666907233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A269044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142840.P7960240039666907233

namespace A142840

/-- `A000027(p?[A146081(n)-A269044(n)])` -/
def P7960240039666907233.Spec : Prop :=
  ∀ n, P7960240039666907233.a n = A142840 (n + 1)

end A142840

/-! ## A142840.P16538375249364864472

`∑{d}[p?[A304839(n+1)+19], A000010(#)]`
-/

namespace A142840.P16538375249364864472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 19

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A142840.P16538375249364864472

namespace A142840

/-- `∑{d}[p?[A304839(n+1)+19], A000010(#)]` -/
def P16538375249364864472.Spec : Prop :=
  ∀ n, P16538375249364864472.a n = A142840 (n + 1)

end A142840

/-! ## A142840.P1860630657652170760

`record[A020639(A146081(n)-A269044(n))]`
-/

namespace A142840.P1860630657652170760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A146081 n - A269044 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142840.P1860630657652170760

namespace A142840

/-- `record[A020639(A146081(n)-A269044(n))]` -/
def P1860630657652170760.Spec : Prop :=
  ∀ n, P1860630657652170760.a n = A142840 (n + 1)

end A142840

/-! ## A142840.P6828089422706334315

`A000265(p?[A146081(n)-A269044(n)])`
-/

namespace A142840.P6828089422706334315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A269044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142840.P6828089422706334315

namespace A142840

/-- `A000265(p?[A146081(n)-A269044(n)])` -/
def P6828089422706334315.Spec : Prop :=
  ∀ n, P6828089422706334315.a n = A142840 (n + 1)

end A142840

/-! ## A142840.P5624405628812290982

`A007913(p?[A146081(n)-A269044(n)])`
-/

namespace A142840.P5624405628812290982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A269044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142840.P5624405628812290982

namespace A142840

/-- `A007913(p?[A146081(n)-A269044(n)])` -/
def P5624405628812290982.Spec : Prop :=
  ∀ n, P5624405628812290982.a n = A142840 (n + 1)

end A142840

/-! ## A142840.P1833954784577696488

`A007947(p?[A146081(n)-A269044(n)])`
-/

namespace A142840.P1833954784577696488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A269044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142840.P1833954784577696488

namespace A142840

/-- `A007947(p?[A146081(n)-A269044(n)])` -/
def P1833954784577696488.Spec : Prop :=
  ∀ n, P1833954784577696488.a n = A142840 (n + 1)

end A142840

/-! ## A142840.P15432766257239753184

`record[A006530(A304609(n+1)+A004771(n)+2)]`
-/

namespace A142840.P15432766257239753184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A304609 (n + 1) + A004771 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142840.P15432766257239753184

namespace A142840

/-- `record[A006530(A304609(n+1)+A004771(n)+2)]` -/
def P15432766257239753184.Spec : Prop :=
  ∀ n, P15432766257239753184.a n = A142840 (n + 1)

end A142840

/-! ## A142840.P12997145711239502970

`A299149(p?[A146081(n)-A269044(n)])`
-/

namespace A142840.P12997145711239502970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A269044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299149 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142840.P12997145711239502970

namespace A142840

/-- `A299149(p?[A146081(n)-A269044(n)])` -/
def P12997145711239502970.Spec : Prop :=
  ∀ n, P12997145711239502970.a n = A142840 (n + 1)

end A142840

/-!
# A142841: Primes congruent to 43 mod 61.

The programs for A142841, the canonical program `A142841.P1101289160815567107` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142841 has offset 1).

The definition of A142841 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1307 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142841.P1101289160815567107

`p?[61*n-18]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142841

/-- `p?[61*n-18]` -/
def P1101289160815567107.Spec : Prop :=
  ∀ n, P1101289160815567107.a n = A142841 (n + 1)

theorem P1101289160815567107.correct : P1101289160815567107.Spec := by
  intro n
  simp only [A142841, Nat.add_sub_cancel]

end A142841

/-! ## A142841.P11764847295344129048

`A000005(gcd(n, n+1))*p?[A304839(n+1)+20]`
-/

namespace A142841.P11764847295344129048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd n (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142841.P11764847295344129048

namespace A142841

/-- `A000005(gcd(n, n+1))*p?[A304839(n+1)+20]` -/
def P11764847295344129048.Spec : Prop :=
  ∀ n, P11764847295344129048.a n = A142841 (n + 1)

end A142841

/-! ## A142841.P4283441800118502147

`A001222(A185934(n+1))*p?[A304839(n+1)+20]`
-/

namespace A142841.P4283441800118502147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A185934 (n + 1)).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142841.P4283441800118502147

namespace A142841

/-- `A001222(A185934(n+1))*p?[A304839(n+1)+20]` -/
def P4283441800118502147.Spec : Prop :=
  ∀ n, P4283441800118502147.a n = A142841 (n + 1)

end A142841

/-! ## A142841.P16046980210937960858

`A000027(p?[A304839(n+1)+20])`
-/

namespace A142841.P16046980210937960858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142841.P16046980210937960858

namespace A142841

/-- `A000027(p?[A304839(n+1)+20])` -/
def P16046980210937960858.Spec : Prop :=
  ∀ n, P16046980210937960858.a n = A142841 (n + 1)

end A142841

/-! ## A142841.P1077338380657439678

`record[A020639(61*(n+1)-18)]`
-/

namespace A142841.P1077338380657439678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (61 * (n + 1) - 18)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142841.P1077338380657439678

namespace A142841

/-- `record[A020639(61*(n+1)-18)]` -/
def P1077338380657439678.Spec : Prop :=
  ∀ n, P1077338380657439678.a n = A142841 (n + 1)

end A142841

/-! ## A142841.P17227950000151725576

`record[A008472(A008472(61*(n+1)-18))]`
-/

namespace A142841.P17227950000151725576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A008472 (61 * (n + 1) - 18)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142841.P17227950000151725576

namespace A142841

/-- `record[A008472(A008472(61*(n+1)-18))]` -/
def P17227950000151725576.Spec : Prop :=
  ∀ n, P17227950000151725576.a n = A142841 (n + 1)

end A142841

/-!
# A142842: Primes congruent to 44 mod 61.

The programs for A142842, the canonical program `A142842.P12374244394291574945` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142842 has offset 1).

The definition of A142842 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1323 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142842.P12374244394291574945

`p?[61*n+44]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142842

/-- `p?[61*n+44]` -/
def P12374244394291574945.Spec : Prop :=
  ∀ n, (P12374244394291574945.a n : ℤ) = A142842 (n + 1)

theorem P12374244394291574945.correct : P12374244394291574945.Spec := by
  intro n
  simp only [A142842, Nat.add_sub_cancel]

end A142842

/-! ## A142842.P10382254019296982359

`or(1, p?[A304609(n+1)+A004769(n)])`
-/

namespace A142842.P10382254019296982359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304609 (n + 1) + A004769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142842.P10382254019296982359

namespace A142842

/-- `or(1, p?[A304609(n+1)+A004769(n)])` -/
def P10382254019296982359.Spec : Prop :=
  ∀ n, P10382254019296982359.a n = A142842 (n + 1)

end A142842

/-! ## A142842.P6191321724280267344

`A000027(p?[A304839(n+1)+21])`
-/

namespace A142842.P6191321724280267344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 21

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142842.P6191321724280267344

namespace A142842

/-- `A000027(p?[A304839(n+1)+21])` -/
def P6191321724280267344.Spec : Prop :=
  ∀ n, P6191321724280267344.a n = A142842 (n + 1)

end A142842

/-! ## A142842.P2212097428839356230

`A000027(p?[A304609(n+1)+A004769(n)])`
-/

namespace A142842.P2212097428839356230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304609 (n + 1) + A004769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142842.P2212097428839356230

namespace A142842

/-- `A000027(p?[A304609(n+1)+A004769(n)])` -/
def P2212097428839356230.Spec : Prop :=
  ∀ n, P2212097428839356230.a n = A142842 (n + 1)

end A142842

/-! ## A142842.P13456573371812181204

`A000027(p?[A082369(n+1)+A032742(n+1)])`
-/

namespace A142842.P13456573371812181204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1) + A032742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142842.P13456573371812181204

namespace A142842

/-- `A000027(p?[A082369(n+1)+A032742(n+1)])` -/
def P13456573371812181204.Spec : Prop :=
  ∀ n, P13456573371812181204.a n = A142842 (n + 1)

end A142842

/-! ## A142842.P13275642009132013457

`A000265(p?[A304839(n+1)+21])`
-/

namespace A142842.P13275642009132013457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 21

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142842.P13275642009132013457

namespace A142842

/-- `A000265(p?[A304839(n+1)+21])` -/
def P13275642009132013457.Spec : Prop :=
  ∀ n, P13275642009132013457.a n = A142842 (n + 1)

end A142842

/-! ## A142842.P4613962851487069066

`A001414(p?[A304609(n+1)+A004769(n)])`
-/

namespace A142842.P4613962851487069066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304609 (n + 1) + A004769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142842.P4613962851487069066

namespace A142842

/-- `A001414(p?[A304609(n+1)+A004769(n)])` -/
def P4613962851487069066.Spec : Prop :=
  ∀ n, P4613962851487069066.a n = A142842 (n + 1)

end A142842

/-! ## A142842.P967074097136212466

`A007913(p?[A082369(n+1)+A032742(n+1)])`
-/

namespace A142842.P967074097136212466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1) + A032742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142842.P967074097136212466

namespace A142842

/-- `A007913(p?[A082369(n+1)+A032742(n+1)])` -/
def P967074097136212466.Spec : Prop :=
  ∀ n, P967074097136212466.a n = A142842 (n + 1)

end A142842

/-!
# A142843: Primes congruent to 45 mod 61.

The programs for A142843, the canonical program `A142843.P17669793635415896109` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142843 has offset 1).

The definition of A142843 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1290 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142843.P17669793635415896109

`p?[61*n-16]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142843

/-- `p?[61*n-16]` -/
def P17669793635415896109.Spec : Prop :=
  ∀ n, P17669793635415896109.a n = A142843 (n + 1)

theorem P17669793635415896109.correct : P17669793635415896109.Spec := by
  intro n
  simp only [A142843, Nat.add_sub_cancel]

end A142843

/-! ## A142843.P6349975166393860516

`or(1, p?[A304839(2*n+1)+22])`
-/

namespace A142843.P6349975166393860516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (2 * n + 1) + 22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142843.P6349975166393860516

namespace A142843

/-- `or(1, p?[A304839(2*n+1)+22])` -/
def P6349975166393860516.Spec : Prop :=
  ∀ n, P6349975166393860516.a n = A142843 (n + 1)

end A142843

/-! ## A142843.P12514577607857585875

`∏{p}[p?[A304839(2*(n+1)+1)+22], #]`
-/

namespace A142843.P12514577607857585875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (2 * (n + 1) + 1) + 22

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142843.P12514577607857585875

namespace A142843

/-- `∏{p}[p?[A304839(2*(n+1)+1)+22], #]` -/
def P12514577607857585875.Spec : Prop :=
  ∀ n, (P12514577607857585875.a n : ℤ) = A142843 (n + 1)

end A142843

/-! ## A142843.P149610689572292329

`abs(1-p?[A304839(n+1+n)+22])+1`
-/

namespace A142843.P149610689572292329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1 + n) + 22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)| + 1

end

end A142843.P149610689572292329

namespace A142843

/-- `abs(1-p?[A304839(n+1+n)+22])+1` -/
def P149610689572292329.Spec : Prop :=
  ∀ n, P149610689572292329.a n = A142843 (n + 1)

end A142843

/-! ## A142843.P15056542746944554258

`A000027(p?[A304839(n+1)+22])`
-/

namespace A142843.P15056542746944554258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142843.P15056542746944554258

namespace A142843

/-- `A000027(p?[A304839(n+1)+22])` -/
def P15056542746944554258.Spec : Prop :=
  ∀ n, P15056542746944554258.a n = A142843 (n + 1)

end A142843

/-! ## A142843.P6288347531572084127

`A000265(p?[A304839(n+1)+22])`
-/

namespace A142843.P6288347531572084127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142843.P6288347531572084127

namespace A142843

/-- `A000265(p?[A304839(n+1)+22])` -/
def P6288347531572084127.Spec : Prop :=
  ∀ n, P6288347531572084127.a n = A142843 (n + 1)

end A142843

/-! ## A142843.P12499909763278829909

`A007913(p?[A304839(n+1)+22])`
-/

namespace A142843.P12499909763278829909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142843.P12499909763278829909

namespace A142843

/-- `A007913(p?[A304839(n+1)+22])` -/
def P12499909763278829909.Spec : Prop :=
  ∀ n, P12499909763278829909.a n = A142843 (n + 1)

end A142843

/-! ## A142843.P929266657734545145

`A008475(p?[A304839(n+1)+22])`
-/

namespace A142843.P929266657734545145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142843.P929266657734545145

namespace A142843

/-- `A008475(p?[A304839(n+1)+22])` -/
def P929266657734545145.Spec : Prop :=
  ∀ n, P929266657734545145.a n = A142843 (n + 1)

end A142843

/-!
# A142844: Primes congruent to 46 mod 61.

The programs for A142844, the canonical program `A142844.P11545309121442495509` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142844 has offset 1).

The definition of A142844 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1317 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142844.P11545309121442495509

`p?[61*n-15]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142844

/-- `p?[61*n-15]` -/
def P11545309121442495509.Spec : Prop :=
  ∀ n, P11545309121442495509.a n = A142844 (n + 1)

theorem P11545309121442495509.correct : P11545309121442495509.Spec := by
  intro n
  simp only [A142844, Nat.add_sub_cancel]

end A142844

/-! ## A142844.P17763751024800608470

`or(1, p?[A146081(n)-A190991(n)-2])`
-/

namespace A142844.P17763751024800608470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A190991 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142844.P17763751024800608470

namespace A142844

/-- `or(1, p?[A146081(n)-A190991(n)-2])` -/
def P17763751024800608470.Spec : Prop :=
  ∀ n, P17763751024800608470.a n = A142844 (n + 1)

end A142844

/-! ## A142844.P13477046700227982686

`p?[A146081(n)-A190991(n)-2]%A051302(n+1)`
-/

namespace A142844.P13477046700227982686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A190991 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A051302 (n + 1))

end

end A142844.P13477046700227982686

namespace A142844

/-- `p?[A146081(n)-A190991(n)-2]%A051302(n+1)` -/
def P13477046700227982686.Spec : Prop :=
  ∀ n, P13477046700227982686.a n = A142844 (n + 1)

end A142844

/-! ## A142844.P7887836015105771124

`A000027(p?[A304839(n+1)+23])`
-/

namespace A142844.P7887836015105771124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 23

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142844.P7887836015105771124

namespace A142844

/-- `A000027(p?[A304839(n+1)+23])` -/
def P7887836015105771124.Spec : Prop :=
  ∀ n, P7887836015105771124.a n = A142844 (n + 1)

end A142844

/-! ## A142844.P3744113272810632554

`A000265(p?[A304839(n+1)+23])`
-/

namespace A142844.P3744113272810632554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 23

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142844.P3744113272810632554

namespace A142844

/-- `A000265(p?[A304839(n+1)+23])` -/
def P3744113272810632554.Spec : Prop :=
  ∀ n, P3744113272810632554.a n = A142844 (n + 1)

end A142844

/-! ## A142844.P5135974479160627947

`A007913(p?[A304839(n+1)+23])`
-/

namespace A142844.P5135974479160627947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 23

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142844.P5135974479160627947

namespace A142844

/-- `A007913(p?[A304839(n+1)+23])` -/
def P5135974479160627947.Spec : Prop :=
  ∀ n, P5135974479160627947.a n = A142844 (n + 1)

end A142844

/-! ## A142844.P4856514239901646380

`A007947(p?[A304839(n+1)+23])`
-/

namespace A142844.P4856514239901646380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 23

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142844.P4856514239901646380

namespace A142844

/-- `A007947(p?[A304839(n+1)+23])` -/
def P4856514239901646380.Spec : Prop :=
  ∀ n, P4856514239901646380.a n = A142844 (n + 1)

end A142844

/-! ## A142844.P6108342090883355981

`record[A020639(A146081(n)-A190991(n)-2)]`
-/

namespace A142844.P6108342090883355981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A146081 n - A190991 n - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142844.P6108342090883355981

namespace A142844

/-- `record[A020639(A146081(n)-A190991(n)-2)]` -/
def P6108342090883355981.Spec : Prop :=
  ∀ n, P6108342090883355981.a n = A142844 (n + 1)

end A142844

/-! ## A142844.P13706593905338415202

`record[A020639(A304839(n+1)+A304839(n+2))]`
-/

namespace A142844.P13706593905338415202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304839 (n + 1) + A304839 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142844.P13706593905338415202

namespace A142844

/-- `record[A020639(A304839(n+1)+A304839(n+2))]` -/
def P13706593905338415202.Spec : Prop :=
  ∀ n, P13706593905338415202.a n = A142844 (n + 1)

end A142844

/-!
# A142845: Primes congruent to 47 mod 61.

The programs for A142845, the canonical program `A142845.P9259017569777467203` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142845 has offset 1).

The definition of A142845 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1311 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142845.P9259017569777467203

`p?[61*n+47]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142845

/-- `p?[61*n+47]` -/
def P9259017569777467203.Spec : Prop :=
  ∀ n, (P9259017569777467203.a n : ℤ) = A142845 (n + 1)

theorem P9259017569777467203.correct : P9259017569777467203.Spec := by
  intro n
  simp only [A142845, Nat.add_sub_cancel]

end A142845

/-! ## A142845.P997957682708530139

`or(1, p?[a(n-1)+61])` with `a(0)=47`
-/

namespace A142845.P997957682708530139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [47] fun n f1 =>
  f1 (n - 1) + 61

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142845.P997957682708530139

namespace A142845

/-- `or(1, p?[a(n-1)+61])` -/
def P997957682708530139.Spec : Prop :=
  ∀ n, (P997957682708530139.a n : ℤ) = A142845 (n + 1)

end A142845

/-! ## A142845.P5587934020130311631

`∏{p}[p?[a(n-1)+61], #]` with `a(0)=47`
-/

namespace A142845.P5587934020130311631
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [47] fun n f2 =>
  f2 (n - 1) + 61

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A142845.P5587934020130311631

namespace A142845

/-- `∏{p}[p?[a(n-1)+61], #]` -/
def P5587934020130311631.Spec : Prop :=
  ∀ n, (P5587934020130311631.a n : ℤ) = A142845 (n + 1)

end A142845

/-! ## A142845.P12375671017100777560

`round(sqrt(p?[a(n-1)+61]²+1))` with `a(0)=47`
-/

namespace A142845.P12375671017100777560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [47] fun n f1 =>
  f1 (n - 1) + 61

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 + 1 : ℝ))

end

end A142845.P12375671017100777560

namespace A142845

/-- `round(sqrt(p?[a(n-1)+61]²+1))` -/
def P12375671017100777560.Spec : Prop :=
  ∀ n, P12375671017100777560.a n = A142845 (n + 1)

end A142845

/-! ## A142845.P9541074306434367225

`record[A020639(61*n+47)]`
-/

namespace A142845.P9541074306434367225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (61 * n + 47)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142845.P9541074306434367225

namespace A142845

/-- `record[A020639(61*n+47)]` -/
def P9541074306434367225.Spec : Prop :=
  ∀ n, P9541074306434367225.a n = A142845 (n + 1)

end A142845

/-! ## A142845.P5945546212301234162

`A007913(p?[a(n-1)+61])` with `a(0)=0, a(1)=47`
-/

namespace A142845.P5945546212301234162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 47] fun n f1 =>
  f1 (n - 1) + 61

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142845.P5945546212301234162

namespace A142845

/-- `A007913(p?[a(n-1)+61])` -/
def P5945546212301234162.Spec : Prop :=
  ∀ n, P5945546212301234162.a n = A142845 (n + 1)

end A142845

/-!
# A142846: Primes congruent to 48 mod 61.

The programs for A142846, the canonical program `A142846.P16974594867481302952` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142846 has offset 1).

The definition of A142846 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1271 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142846.P16974594867481302952

`p?[61*n-13]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142846

/-- `p?[61*n-13]` -/
def P16974594867481302952.Spec : Prop :=
  ∀ n, P16974594867481302952.a n = A142846 (n + 1)

theorem P16974594867481302952.correct : P16974594867481302952.Spec := by
  intro n
  simp only [A142846, Nat.add_sub_cancel]

end A142846

/-! ## A142846.P13738921631053009424

`or(1, p?[A146081(n)-A190991(n)])`
-/

namespace A142846.P13738921631053009424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A190991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142846.P13738921631053009424

namespace A142846

/-- `or(1, p?[A146081(n)-A190991(n)])` -/
def P13738921631053009424.Spec : Prop :=
  ∀ n, P13738921631053009424.a n = A142846 (n + 1)

end A142846

/-! ## A142846.P6683689233966504676

`p?[A146081(n)-A190991(n)]/A020985(n)²`
-/

namespace A142846.P6683689233966504676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A190991 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A020985 n ^ 2 : ℚ)

end

end A142846.P6683689233966504676

namespace A142846

/-- `p?[A146081(n)-A190991(n)]/A020985(n)²` -/
def P6683689233966504676.Spec : Prop :=
  ∀ n, P6683689233966504676.a n = (A142846 (n + 1) : ℚ)

end A142846

/-! ## A142846.P16459251173573528178

`A000007(n+1)+p?[A146081(n)-A190991(n)]`
-/

namespace A142846.P16459251173573528178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A190991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142846.P16459251173573528178

namespace A142846

/-- `A000007(n+1)+p?[A146081(n)-A190991(n)]` -/
def P16459251173573528178.Spec : Prop :=
  ∀ n, P16459251173573528178.a n = A142846 (n + 1)

end A142846

/-! ## A142846.P6330262954390222159

`A000027(p?[A146081(n)-A190991(n)])`
-/

namespace A142846.P6330262954390222159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A190991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142846.P6330262954390222159

namespace A142846

/-- `A000027(p?[A146081(n)-A190991(n)])` -/
def P6330262954390222159.Spec : Prop :=
  ∀ n, P6330262954390222159.a n = A142846 (n + 1)

end A142846

/-! ## A142846.P6452187740657450225

`record[A001414(A146081(n)-A190991(n))]`
-/

namespace A142846.P6452187740657450225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A146081 n - A190991 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142846.P6452187740657450225

namespace A142846

/-- `record[A001414(A146081(n)-A190991(n))]` -/
def P6452187740657450225.Spec : Prop :=
  ∀ n, P6452187740657450225.a n = A142846 (n + 1)

end A142846

/-! ## A142846.P18145941603577779211

`record[A006530(A146081(n)-A190991(n))]`
-/

namespace A142846.P18145941603577779211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A146081 n - A190991 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142846.P18145941603577779211

namespace A142846

/-- `record[A006530(A146081(n)-A190991(n))]` -/
def P18145941603577779211.Spec : Prop :=
  ∀ n, P18145941603577779211.a n = A142846 (n + 1)

end A142846

/-! ## A142846.P9586650238777412408

`record[A008472(A146081(n)-A190991(n))]`
-/

namespace A142846.P9586650238777412408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A146081 n - A190991 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142846.P9586650238777412408

namespace A142846

/-- `record[A008472(A146081(n)-A190991(n))]` -/
def P9586650238777412408.Spec : Prop :=
  ∀ n, P9586650238777412408.a n = A142846 (n + 1)

end A142846

/-! ## A142846.P11621907676787581198

`record[A020639(A146081(n)-A190991(n))]`
-/

namespace A142846.P11621907676787581198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A146081 n - A190991 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142846.P11621907676787581198

namespace A142846

/-- `record[A020639(A146081(n)-A190991(n))]` -/
def P11621907676787581198.Spec : Prop :=
  ∀ n, P11621907676787581198.a n = A142846 (n + 1)

end A142846

/-!
# A142847: Primes congruent to 49 mod 61.

The programs for A142847, the canonical program `A142847.P8995699921699467177` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142847 has offset 1).

The definition of A142847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1300 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142847.P8995699921699467177

`p?[61*n-12]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142847

/-- `p?[61*n-12]` -/
def P8995699921699467177.Spec : Prop :=
  ∀ n, P8995699921699467177.a n = A142847 (n + 1)

theorem P8995699921699467177.correct : P8995699921699467177.Spec := by
  intro n
  simp only [A142847, Nat.add_sub_cancel]

end A142847

/-! ## A142847.P15488913959502949999

`or(1, p?[A304839(n+1)+26])`
-/

namespace A142847.P15488913959502949999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 26

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142847.P15488913959502949999

namespace A142847

/-- `or(1, p?[A304839(n+1)+26])` -/
def P15488913959502949999.Spec : Prop :=
  ∀ n, P15488913959502949999.a n = A142847 (n + 1)

end A142847

/-! ## A142847.P4825908516711553890

`∏{p}[p?[A304839(2*n+1)+26], #]`
-/

namespace A142847.P4825908516711553890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (2 * n + 1) + 26

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142847.P4825908516711553890

namespace A142847

/-- `∏{p}[p?[A304839(2*n+1)+26], #]` -/
def P4825908516711553890.Spec : Prop :=
  ∀ n, (P4825908516711553890.a n : ℤ) = A142847 (n + 1)

end A142847

/-! ## A142847.P7245494900859163724

`p?[A156376(n+1)+A135631(n)]%A017248(n)`
-/

namespace A142847.P7245494900859163724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 (n + 1) + A135631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017248 n)

end

end A142847.P7245494900859163724

namespace A142847

/-- `p?[A156376(n+1)+A135631(n)]%A017248(n)` -/
def P7245494900859163724.Spec : Prop :=
  ∀ n, P7245494900859163724.a n = A142847 (n + 1)

end A142847

/-! ## A142847.P9501115534833853044

`A000027(p?[A304839(n+1)+26])`
-/

namespace A142847.P9501115534833853044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 26

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142847.P9501115534833853044

namespace A142847

/-- `A000027(p?[A304839(n+1)+26])` -/
def P9501115534833853044.Spec : Prop :=
  ∀ n, P9501115534833853044.a n = A142847 (n + 1)

end A142847

/-! ## A142847.P4724565620075595209

`or(1, p?[A017437(A017437(n))+n+1])`
-/

namespace A142847.P4724565620075595209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 (A017437 n).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142847.P4724565620075595209

namespace A142847

/-- `or(1, p?[A017437(A017437(n))+n+1])` -/
def P4724565620075595209.Spec : Prop :=
  ∀ n, P4724565620075595209.a n = A142847 (n + 1)

end A142847

/-! ## A142847.P5131700626912694768

`A000265(p?[A304839(n+1)+26])`
-/

namespace A142847.P5131700626912694768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 26

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142847.P5131700626912694768

namespace A142847

/-- `A000265(p?[A304839(n+1)+26])` -/
def P5131700626912694768.Spec : Prop :=
  ∀ n, P5131700626912694768.a n = A142847 (n + 1)

end A142847

/-! ## A142847.P11062154192775733531

`A007913(p?[A304839(n+1)+26])`
-/

namespace A142847.P11062154192775733531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 26

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142847.P11062154192775733531

namespace A142847

/-- `A007913(p?[A304839(n+1)+26])` -/
def P11062154192775733531.Spec : Prop :=
  ∀ n, P11062154192775733531.a n = A142847 (n + 1)

end A142847

/-! ## A142847.P17969741397745841890

`∑{p}[p?[A304839(n+1)+26], A020639(#)]`
-/

namespace A142847.P17969741397745841890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 26

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A020639 p

end

end A142847.P17969741397745841890

namespace A142847

/-- `∑{p}[p?[A304839(n+1)+26], A020639(#)]` -/
def P17969741397745841890.Spec : Prop :=
  ∀ n, P17969741397745841890.a n = A142847 (n + 1)

end A142847

/-! ## A142847.P9710582273309658583

`A007947(p?[A227863(n+1)+A153151(n)])`
-/

namespace A142847.P9710582273309658583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227863 (n + 1) + A153151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142847.P9710582273309658583

namespace A142847

/-- `A007947(p?[A227863(n+1)+A153151(n)])` -/
def P9710582273309658583.Spec : Prop :=
  ∀ n, P9710582273309658583.a n = A142847 (n + 1)

end A142847

/-!
# A142848: Primes congruent to 50 mod 61.

The programs for A142848, the canonical program `A142848.P16697657649416996143` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142848 has offset 1).

The definition of A142848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1319 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142848.P16697657649416996143

`p?[61*n-11]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142848

/-- `p?[61*n-11]` -/
def P16697657649416996143.Spec : Prop :=
  ∀ n, P16697657649416996143.a n = A142848 (n + 1)

theorem P16697657649416996143.correct : P16697657649416996143.Spec := by
  intro n
  simp only [A142848, Nat.add_sub_cancel]

end A142848

/-! ## A142848.P10189651785494061117

`or(1, p?[A304839(n+1)-34])`
-/

namespace A142848.P10189651785494061117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142848.P10189651785494061117

namespace A142848

/-- `or(1, p?[A304839(n+1)-34])` -/
def P10189651785494061117.Spec : Prop :=
  ∀ n, P10189651785494061117.a n = A142848 (n + 1)

end A142848

/-! ## A142848.P8165864114589860086

`p?[A304839(n+1)-34]/A008683(gcd(n, n+1))`
-/

namespace A142848.P8165864114589860086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 34

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A008683 (Nat.gcd n (n + 1)) : ℚ)

end

end A142848.P8165864114589860086

namespace A142848

/-- `p?[A304839(n+1)-34]/A008683(gcd(n, n+1))` -/
def P8165864114589860086.Spec : Prop :=
  ∀ n, P8165864114589860086.a n = (A142848 (n + 1) : ℚ)

end A142848

/-! ## A142848.P17816777053355748834

`lcm(A008683(n+1)²!, p?[A304839(n+1)-34])`
-/

namespace A142848.P17816777053355748834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 34

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A008683 (n + 1) ^ 2).toNat : ℤ) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142848.P17816777053355748834

namespace A142848

/-- `lcm(A008683(n+1)²!, p?[A304839(n+1)-34])` -/
def P17816777053355748834.Spec : Prop :=
  ∀ n, (P17816777053355748834.a n : ℤ) = A142848 (n + 1)

end A142848

/-! ## A142848.P17355495399116131298

`A000027(p?[A304839(n+1)-34])`
-/

namespace A142848.P17355495399116131298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142848.P17355495399116131298

namespace A142848

/-- `A000027(p?[A304839(n+1)-34])` -/
def P17355495399116131298.Spec : Prop :=
  ∀ n, P17355495399116131298.a n = A142848 (n + 1)

end A142848

/-! ## A142848.P10072906466291093867

`A000265(p?[A304839(n+1)-34])`
-/

namespace A142848.P10072906466291093867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142848.P10072906466291093867

namespace A142848

/-- `A000265(p?[A304839(n+1)-34])` -/
def P10072906466291093867.Spec : Prop :=
  ∀ n, P10072906466291093867.a n = A142848 (n + 1)

end A142848

/-! ## A142848.P3341331555872627565

`A007913(p?[A304839(n+1)-34])`
-/

namespace A142848.P3341331555872627565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142848.P3341331555872627565

namespace A142848

/-- `A007913(p?[A304839(n+1)-34])` -/
def P3341331555872627565.Spec : Prop :=
  ∀ n, P3341331555872627565.a n = A142848 (n + 1)

end A142848

/-! ## A142848.P8890143219033355035

`A007947(p?[A304839(n+1)-34])`
-/

namespace A142848.P8890143219033355035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142848.P8890143219033355035

namespace A142848

/-- `A007947(p?[A304839(n+1)-34])` -/
def P8890143219033355035.Spec : Prop :=
  ∀ n, P8890143219033355035.a n = A142848 (n + 1)

end A142848

/-! ## A142848.P828383554140342063

`A008475(p?[A304839(n+1)-34])`
-/

namespace A142848.P828383554140342063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142848.P828383554140342063

namespace A142848

/-- `A008475(p?[A304839(n+1)-34])` -/
def P828383554140342063.Spec : Prop :=
  ∀ n, P828383554140342063.a n = A142848 (n + 1)

end A142848

/-! ## A142848.P7845654532320814063

`filter[A241406(2*(n+1)), A010051(#)]`
-/

namespace A142848.P7845654532320814063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241406 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A142848.P7845654532320814063

namespace A142848

/-- `filter[A241406(2*(n+1)), A010051(#)]` -/
def P7845654532320814063.Spec : Prop :=
  ∀ n, P7845654532320814063.a n = A142848 (n + 1)

end A142848

/-! ## A142848.P4284682073192218976

`filter[A241406(2*(n+1)), A355937(#)]`
-/

namespace A142848.P4284682073192218976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241406 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A142848.P4284682073192218976

namespace A142848

/-- `filter[A241406(2*(n+1)), A355937(#)]` -/
def P4284682073192218976.Spec : Prop :=
  ∀ n, P4284682073192218976.a n = A142848 (n + 1)

end A142848

/-! ## A142848.P4692192754009259087

`record[A020639(A158130(n+2)+n-8)]`
-/

namespace A142848.P4692192754009259087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A158130 (n + 2) + (n : ℤ) - 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142848.P4692192754009259087

namespace A142848

/-- `record[A020639(A158130(n+2)+n-8)]` -/
def P4692192754009259087.Spec : Prop :=
  ∀ n, P4692192754009259087.a n = A142848 (n + 1)

end A142848

/-! ## A142848.P616819287722299929

`∑{d}[p?[A304839(n+1)-34], A000010(#)]`
-/

namespace A142848.P616819287722299929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 34

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A142848.P616819287722299929

namespace A142848

/-- `∑{d}[p?[A304839(n+1)-34], A000010(#)]` -/
def P616819287722299929.Spec : Prop :=
  ∀ n, P616819287722299929.a n = A142848 (n + 1)

end A142848

/-! ## A142848.P11362807297268991932

`filter[A241406(2*(n+1)), A257531(#)]`
-/

namespace A142848.P11362807297268991932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241406 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A142848.P11362807297268991932

namespace A142848

/-- `filter[A241406(2*(n+1)), A257531(#)]` -/
def P11362807297268991932.Spec : Prop :=
  ∀ n, P11362807297268991932.a n = A142848 (n + 1)

end A142848

/-! ## A142848.P8924576741566286615

`filter[A241406(2*(n+1)), A302777(#)]`
-/

namespace A142848.P8924576741566286615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241406 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A142848.P8924576741566286615

namespace A142848

/-- `filter[A241406(2*(n+1)), A302777(#)]` -/
def P8924576741566286615.Spec : Prop :=
  ∀ n, P8924576741566286615.a n = A142848 (n + 1)

end A142848

/-! ## A142848.P13306153616790065143

`filter[A241406(2*(n+1)), A323152(#)]`
-/

namespace A142848.P13306153616790065143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241406 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A142848.P13306153616790065143

namespace A142848

/-- `filter[A241406(2*(n+1)), A323152(#)]` -/
def P13306153616790065143.Spec : Prop :=
  ∀ n, P13306153616790065143.a n = A142848 (n + 1)

end A142848

/-! ## A142848.P6289975365856089382

`filter[A241406(2*(n+1)), A323153(#)]`
-/

namespace A142848.P6289975365856089382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241406 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A142848.P6289975365856089382

namespace A142848

/-- `filter[A241406(2*(n+1)), A323153(#)]` -/
def P6289975365856089382.Spec : Prop :=
  ∀ n, P6289975365856089382.a n = A142848 (n + 1)

end A142848

/-! ## A142848.P5416306385615009592

`filter[A241406(2*(n+1)), A351957(#)]`
-/

namespace A142848.P5416306385615009592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241406 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A142848.P5416306385615009592

namespace A142848

/-- `filter[A241406(2*(n+1)), A351957(#)]` -/
def P5416306385615009592.Spec : Prop :=
  ∀ n, P5416306385615009592.a n = A142848 (n + 1)

end A142848

/-! ## A142848.P14875602659443692817

`filter[A241406(2*(n+1)), A389449(#)]`
-/

namespace A142848.P14875602659443692817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241406 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389449 (f1 j).toNat = 1) n)

end

end A142848.P14875602659443692817

namespace A142848

/-- `filter[A241406(2*(n+1)), A389449(#)]` -/
def P14875602659443692817.Spec : Prop :=
  ∀ n, P14875602659443692817.a n = A142848 (n + 1)

end A142848

/-!
# A142849: Primes congruent to 51 mod 61.

The programs for A142849, the canonical program `A142849.P17666790552011313718` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142849 has offset 1).

The definition of A142849 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1310 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142849.P17666790552011313718

`p?[61*n-10]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142849

/-- `p?[61*n-10]` -/
def P17666790552011313718.Spec : Prop :=
  ∀ n, P17666790552011313718.a n = A142849 (n + 1)

theorem P17666790552011313718.correct : P17666790552011313718.Spec := by
  intro n
  simp only [A142849, Nat.add_sub_cancel]

end A142849

/-! ## A142849.P16998491842630854441

`or(1, p?[A158066(n+1)+A017533(n)])`
-/

namespace A142849.P16998491842630854441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + A017533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142849.P16998491842630854441

namespace A142849

/-- `or(1, p?[A158066(n+1)+A017533(n)])` -/
def P16998491842630854441.Spec : Prop :=
  ∀ n, P16998491842630854441.a n = A142849 (n + 1)

end A142849

/-! ## A142849.P16500867942455034217

`A000027(p?[A304839(n+1)-33])`
-/

namespace A142849.P16500867942455034217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 33

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142849.P16500867942455034217

namespace A142849

/-- `A000027(p?[A304839(n+1)-33])` -/
def P16500867942455034217.Spec : Prop :=
  ∀ n, P16500867942455034217.a n = A142849 (n + 1)

end A142849

/-! ## A142849.P16774717726404175911

`A000027(p?[A158066(n+1)+A017533(n)])`
-/

namespace A142849.P16774717726404175911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + A017533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142849.P16774717726404175911

namespace A142849

/-- `A000027(p?[A158066(n+1)+A017533(n)])` -/
def P16774717726404175911.Spec : Prop :=
  ∀ n, P16774717726404175911.a n = A142849 (n + 1)

end A142849

/-! ## A142849.P16806382201845599200

`A000027(p?[A227863(n+1)+A014681(n)])`
-/

namespace A142849.P16806382201845599200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227863 (n + 1) + A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142849.P16806382201845599200

namespace A142849

/-- `A000027(p?[A227863(n+1)+A014681(n)])` -/
def P16806382201845599200.Spec : Prop :=
  ∀ n, P16806382201845599200.a n = A142849 (n + 1)

end A142849

/-! ## A142849.P9527724874720923514

`A000265(p?[A304839(n+1)-33])`
-/

namespace A142849.P9527724874720923514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 33

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142849.P9527724874720923514

namespace A142849

/-- `A000265(p?[A304839(n+1)-33])` -/
def P9527724874720923514.Spec : Prop :=
  ∀ n, P9527724874720923514.a n = A142849 (n + 1)

end A142849

/-! ## A142849.P9560864734498770793

`A001414(p?[A304839(n+1)-33])`
-/

namespace A142849.P9560864734498770793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 33

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142849.P9560864734498770793

namespace A142849

/-- `A001414(p?[A304839(n+1)-33])` -/
def P9560864734498770793.Spec : Prop :=
  ∀ n, P9560864734498770793.a n = A142849 (n + 1)

end A142849

/-! ## A142849.P9193164100631677549

`A000265(p?[A158066(n+1)+A017533(n)])`
-/

namespace A142849.P9193164100631677549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + A017533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142849.P9193164100631677549

namespace A142849

/-- `A000265(p?[A158066(n+1)+A017533(n)])` -/
def P9193164100631677549.Spec : Prop :=
  ∀ n, P9193164100631677549.a n = A142849 (n + 1)

end A142849

/-! ## A142849.P4365305563811752982

`A001414(p?[A158066(n+1)+A017533(n)])`
-/

namespace A142849.P4365305563811752982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + A017533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142849.P4365305563811752982

namespace A142849

/-- `A001414(p?[A158066(n+1)+A017533(n)])` -/
def P4365305563811752982.Spec : Prop :=
  ∀ n, P4365305563811752982.a n = A142849 (n + 1)

end A142849

/-! ## A142849.P4368886272035741412

`A007913(p?[A158066(n+1)+A017533(n)])`
-/

namespace A142849.P4368886272035741412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + A017533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142849.P4368886272035741412

namespace A142849

/-- `A007913(p?[A158066(n+1)+A017533(n)])` -/
def P4368886272035741412.Spec : Prop :=
  ∀ n, P4368886272035741412.a n = A142849 (n + 1)

end A142849

/-! ## A142849.P12259467187711303279

`A008472(p?[A158066(n+1)+A017533(n)])`
-/

namespace A142849.P12259467187711303279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + A017533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142849.P12259467187711303279

namespace A142849

/-- `A008472(p?[A158066(n+1)+A017533(n)])` -/
def P12259467187711303279.Spec : Prop :=
  ∀ n, P12259467187711303279.a n = A142849 (n + 1)

end A142849

/-! ## A142849.P17367443225541931263

`A000265(p?[A227863(n+1)+A014681(n)])`
-/

namespace A142849.P17367443225541931263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227863 (n + 1) + A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142849.P17367443225541931263

namespace A142849

/-- `A000265(p?[A227863(n+1)+A014681(n)])` -/
def P17367443225541931263.Spec : Prop :=
  ∀ n, P17367443225541931263.a n = A142849 (n + 1)

end A142849

/-! ## A142849.P2931001148327820444

`A007913(p?[A227863(n+1)+A014681(n)])`
-/

namespace A142849.P2931001148327820444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227863 (n + 1) + A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142849.P2931001148327820444

namespace A142849

/-- `A007913(p?[A227863(n+1)+A014681(n)])` -/
def P2931001148327820444.Spec : Prop :=
  ∀ n, P2931001148327820444.a n = A142849 (n + 1)

end A142849

/-!
# A142850: Primes congruent to 52 mod 61.

The programs for A142850, the canonical program `A142850.P13887535984116023840` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142850 has offset 1).

The definition of A142850 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1310 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142850.P13887535984116023840

`p?[61*n-9]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142850

/-- `p?[61*n-9]` -/
def P13887535984116023840.Spec : Prop :=
  ∀ n, P13887535984116023840.a n = A142850 (n + 1)

theorem P13887535984116023840.correct : P13887535984116023840.Spec := by
  intro n
  simp only [A142850, Nat.add_sub_cancel]

end A142850

/-! ## A142850.P17611226738335313038

`or(1, p?[a(n-1)+61])` with `a(0)=52`
-/

namespace A142850.P17611226738335313038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [52] fun n f1 =>
  f1 (n - 1) + 61

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142850.P17611226738335313038

namespace A142850

/-- `or(1, p?[a(n-1)+61])` -/
def P17611226738335313038.Spec : Prop :=
  ∀ n, (P17611226738335313038.a n : ℤ) = A142850 (n + 1)

end A142850

/-! ## A142850.P1650316131551148142

`or(1, p?[A158066(n+1)+A017545(n)])`
-/

namespace A142850.P1650316131551148142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + A017545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142850.P1650316131551148142

namespace A142850

/-- `or(1, p?[A158066(n+1)+A017545(n)])` -/
def P1650316131551148142.Spec : Prop :=
  ∀ n, P1650316131551148142.a n = A142850 (n + 1)

end A142850

/-! ## A142850.P11347582683124747042

`p?[A158066(n+1)+A017545(n)]%A016960(n)`
-/

namespace A142850.P11347582683124747042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + A017545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A016960 n)

end

end A142850.P11347582683124747042

namespace A142850

/-- `p?[A158066(n+1)+A017545(n)]%A016960(n)` -/
def P11347582683124747042.Spec : Prop :=
  ∀ n, P11347582683124747042.a n = A142850 (n + 1)

end A142850

/-! ## A142850.P5389711000635052194

`A000007(n+1)+p?[A158066(n+1)+A017545(n)]`
-/

namespace A142850.P5389711000635052194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + A017545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142850.P5389711000635052194

namespace A142850

/-- `A000007(n+1)+p?[A158066(n+1)+A017545(n)]` -/
def P5389711000635052194.Spec : Prop :=
  ∀ n, P5389711000635052194.a n = A142850 (n + 1)

end A142850

/-! ## A142850.P12519072588760916628

`A014963(6*(n+1))*p?[A158066(n+1)+A017545(n)]`
-/

namespace A142850.P12519072588760916628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + A017545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142850.P12519072588760916628

namespace A142850

/-- `A014963(6*(n+1))*p?[A158066(n+1)+A017545(n)]` -/
def P12519072588760916628.Spec : Prop :=
  ∀ n, P12519072588760916628.a n = A142850 (n + 1)

end A142850

/-! ## A142850.P1135062827084832031

`A000027(p?[A304839(n+1)-32])`
-/

namespace A142850.P1135062827084832031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142850.P1135062827084832031

namespace A142850

/-- `A000027(p?[A304839(n+1)-32])` -/
def P1135062827084832031.Spec : Prop :=
  ∀ n, P1135062827084832031.a n = A142850 (n + 1)

end A142850

/-! ## A142850.P16243179023419124868

`A000027(p?[A158066(n+1)+A017545(n)])`
-/

namespace A142850.P16243179023419124868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + A017545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142850.P16243179023419124868

namespace A142850

/-- `A000027(p?[A158066(n+1)+A017545(n)])` -/
def P16243179023419124868.Spec : Prop :=
  ∀ n, P16243179023419124868.a n = A142850 (n + 1)

end A142850

/-! ## A142850.P12281899031378567099

`A000265(p?[A304839(n+1)+29])`
-/

namespace A142850.P12281899031378567099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142850.P12281899031378567099

namespace A142850

/-- `A000265(p?[A304839(n+1)+29])` -/
def P12281899031378567099.Spec : Prop :=
  ∀ n, P12281899031378567099.a n = A142850 (n + 1)

end A142850

/-! ## A142850.P8051147068880895722

`A007913(p?[A304839(n+1)+29])`
-/

namespace A142850.P8051147068880895722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142850.P8051147068880895722

namespace A142850

/-- `A007913(p?[A304839(n+1)+29])` -/
def P8051147068880895722.Spec : Prop :=
  ∀ n, P8051147068880895722.a n = A142850 (n + 1)

end A142850

/-! ## A142850.P14945942162316346613

`A008472(p?[A304839(n+1)+29])`
-/

namespace A142850.P14945942162316346613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142850.P14945942162316346613

namespace A142850

/-- `A008472(p?[A304839(n+1)+29])` -/
def P14945942162316346613.Spec : Prop :=
  ∀ n, P14945942162316346613.a n = A142850 (n + 1)

end A142850

/-! ## A142850.P14541328844547177439

`A000265(p?[A158066(n+1)+A017545(n)])`
-/

namespace A142850.P14541328844547177439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + A017545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142850.P14541328844547177439

namespace A142850

/-- `A000265(p?[A158066(n+1)+A017545(n)])` -/
def P14541328844547177439.Spec : Prop :=
  ∀ n, P14541328844547177439.a n = A142850 (n + 1)

end A142850

/-! ## A142850.P4364688815737461691

`A001414(p?[A158066(n+1)+A017545(n)])`
-/

namespace A142850.P4364688815737461691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + A017545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142850.P4364688815737461691

namespace A142850

/-- `A001414(p?[A158066(n+1)+A017545(n)])` -/
def P4364688815737461691.Spec : Prop :=
  ∀ n, P4364688815737461691.a n = A142850 (n + 1)

end A142850

/-! ## A142850.P8315711866769298153

`A007913(p?[A158066(n+1)+A017545(n)])`
-/

namespace A142850.P8315711866769298153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + A017545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142850.P8315711866769298153

namespace A142850

/-- `A007913(p?[A158066(n+1)+A017545(n)])` -/
def P8315711866769298153.Spec : Prop :=
  ∀ n, P8315711866769298153.a n = A142850 (n + 1)

end A142850

/-! ## A142850.P11279464270014732257

`A034699(p?[A304839(n+1)+29])`
-/

namespace A142850.P11279464270014732257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142850.P11279464270014732257

namespace A142850

/-- `A034699(p?[A304839(n+1)+29])` -/
def P11279464270014732257.Spec : Prop :=
  ∀ n, P11279464270014732257.a n = A142850 (n + 1)

end A142850

/-!
# A142851: Primes congruent to 53 mod 61.

The programs for A142851, the canonical program `A142851.P10278692083776061170` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142851 has offset 1).

The definition of A142851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1299 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142851.P10278692083776061170

`p?[61*n-8]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142851

/-- `p?[61*n-8]` -/
def P10278692083776061170.Spec : Prop :=
  ∀ n, P10278692083776061170.a n = A142851 (n + 1)

theorem P10278692083776061170.correct : P10278692083776061170.Spec := by
  intro n
  simp only [A142851, Nat.add_sub_cancel]

end A142851

/-! ## A142851.P9195625017131550530

`or(1, p?[A304839(n+1)+30])`
-/

namespace A142851.P9195625017131550530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142851.P9195625017131550530

namespace A142851

/-- `or(1, p?[A304839(n+1)+30])` -/
def P9195625017131550530.Spec : Prop :=
  ∀ n, P9195625017131550530.a n = A142851 (n + 1)

end A142851

/-! ## A142851.P10436194181109181074

`A000038(n+1)+p?[A304839(n+1)+30]`
-/

namespace A142851.P10436194181109181074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142851.P10436194181109181074

namespace A142851

/-- `A000038(n+1)+p?[A304839(n+1)+30]` -/
def P10436194181109181074.Spec : Prop :=
  ∀ n, P10436194181109181074.a n = A142851 (n + 1)

end A142851

/-! ## A142851.P15989512880909187187

`and(p?[A304839(2*n+1)+30], A153881(n+2))`
-/

namespace A142851.P15989512880909187187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (2 * n + 1) + 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A153881 (n + 2))

end

end A142851.P15989512880909187187

namespace A142851

/-- `and(p?[A304839(2*n+1)+30], A153881(n+2))` -/
def P15989512880909187187.Spec : Prop :=
  ∀ n, P15989512880909187187.a n = A142851 (n + 1)

end A142851

/-! ## A142851.P7521618495021308094

`A000027(p?[A304839(n+1)+30])`
-/

namespace A142851.P7521618495021308094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142851.P7521618495021308094

namespace A142851

/-- `A000027(p?[A304839(n+1)+30])` -/
def P7521618495021308094.Spec : Prop :=
  ∀ n, P7521618495021308094.a n = A142851 (n + 1)

end A142851

/-! ## A142851.P15675084317334765673

`record[A020639(61*(n+1)-8)]`
-/

namespace A142851.P15675084317334765673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (61 * (n + 1) - 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142851.P15675084317334765673

namespace A142851

/-- `record[A020639(61*(n+1)-8)]` -/
def P15675084317334765673.Spec : Prop :=
  ∀ n, P15675084317334765673.a n = A142851 (n + 1)

end A142851

/-! ## A142851.P12560497550311689000

`A000265(p?[A304839(n+1)+30])`
-/

namespace A142851.P12560497550311689000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142851.P12560497550311689000

namespace A142851

/-- `A000265(p?[A304839(n+1)+30])` -/
def P12560497550311689000.Spec : Prop :=
  ∀ n, P12560497550311689000.a n = A142851 (n + 1)

end A142851

/-! ## A142851.P1728443733358642229

`A007913(p?[A304839(n+1)+30])`
-/

namespace A142851.P1728443733358642229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142851.P1728443733358642229

namespace A142851

/-- `A007913(p?[A304839(n+1)+30])` -/
def P1728443733358642229.Spec : Prop :=
  ∀ n, P1728443733358642229.a n = A142851 (n + 1)

end A142851

/-!
# A142852: Primes congruent to 54 mod 61.

The programs for A142852, the canonical program `A142852.P2298445679294056846` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142852 has offset 1).

The definition of A142852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1294 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142852.P2298445679294056846

`p?[61*n-7]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142852

/-- `p?[61*n-7]` -/
def P2298445679294056846.Spec : Prop :=
  ∀ n, P2298445679294056846.a n = A142852 (n + 1)

theorem P2298445679294056846.correct : P2298445679294056846.Spec := by
  intro n
  simp only [A142852, Nat.add_sub_cancel]

end A142852

/-! ## A142852.P3151858343364748032

`p?[A157330(n+1)-A016789(n)]%A243819(n+1)`
-/

namespace A142852.P3151858343364748032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) - A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A243819 (n + 1))

end

end A142852.P3151858343364748032

namespace A142852

/-- `p?[A157330(n+1)-A016789(n)]%A243819(n+1)` -/
def P3151858343364748032.Spec : Prop :=
  ∀ n, P3151858343364748032.a n = A142852 (n + 1)

end A142852

/-! ## A142852.P11344434310796867349

`p?[A158066(n+1)+A017569(n)]%A016848(2*n)`
-/

namespace A142852.P11344434310796867349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + A017569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A016848 (2 * n))

end

end A142852.P11344434310796867349

namespace A142852

/-- `p?[A158066(n+1)+A017569(n)]%A016848(2*n)` -/
def P11344434310796867349.Spec : Prop :=
  ∀ n, P11344434310796867349.a n = A142852 (n + 1)

end A142852

/-! ## A142852.P8728006505947982560

`A000027(p?[A304839(n+1)-30])`
-/

namespace A142852.P8728006505947982560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142852.P8728006505947982560

namespace A142852

/-- `A000027(p?[A304839(n+1)-30])` -/
def P8728006505947982560.Spec : Prop :=
  ∀ n, P8728006505947982560.a n = A142852 (n + 1)

end A142852

/-! ## A142852.P5730939721990307937

`A000027(p?[A158066(n+1)+A017569(n)])`
-/

namespace A142852.P5730939721990307937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + A017569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142852.P5730939721990307937

namespace A142852

/-- `A000027(p?[A158066(n+1)+A017569(n)])` -/
def P5730939721990307937.Spec : Prop :=
  ∀ n, P5730939721990307937.a n = A142852 (n + 1)

end A142852

/-! ## A142852.P15554036566709609916

`A000027(p?[A157330(n+1)-A016789(n)])`
-/

namespace A142852.P15554036566709609916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) - A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142852.P15554036566709609916

namespace A142852

/-- `A000027(p?[A157330(n+1)-A016789(n)])` -/
def P15554036566709609916.Spec : Prop :=
  ∀ n, P15554036566709609916.a n = A142852 (n + 1)

end A142852

/-! ## A142852.P6288862785247431426

`A000265(p?[A304839(n+1)-30])`
-/

namespace A142852.P6288862785247431426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142852.P6288862785247431426

namespace A142852

/-- `A000265(p?[A304839(n+1)-30])` -/
def P6288862785247431426.Spec : Prop :=
  ∀ n, P6288862785247431426.a n = A142852 (n + 1)

end A142852

/-! ## A142852.P9487010715670594236

`A007913(p?[A304839(n+1)-30])`
-/

namespace A142852.P9487010715670594236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142852.P9487010715670594236

namespace A142852

/-- `A007913(p?[A304839(n+1)-30])` -/
def P9487010715670594236.Spec : Prop :=
  ∀ n, P9487010715670594236.a n = A142852 (n + 1)

end A142852

/-! ## A142852.P9561460378647574833

`A008475(p?[A304839(n+1)-30])`
-/

namespace A142852.P9561460378647574833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142852.P9561460378647574833

namespace A142852

/-- `A008475(p?[A304839(n+1)-30])` -/
def P9561460378647574833.Spec : Prop :=
  ∀ n, P9561460378647574833.a n = A142852 (n + 1)

end A142852

/-! ## A142852.P12710534264234964243

`A007913(p?[A158066(n+1)+A017569(n)])`
-/

namespace A142852.P12710534264234964243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + A017569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142852.P12710534264234964243

namespace A142852

/-- `A007913(p?[A158066(n+1)+A017569(n)])` -/
def P12710534264234964243.Spec : Prop :=
  ∀ n, P12710534264234964243.a n = A142852 (n + 1)

end A142852

/-! ## A142852.P16244371616299953396

`A000265(p?[A157330(n+1)-A016789(n)])`
-/

namespace A142852.P16244371616299953396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) - A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142852.P16244371616299953396

namespace A142852

/-- `A000265(p?[A157330(n+1)-A016789(n)])` -/
def P16244371616299953396.Spec : Prop :=
  ∀ n, P16244371616299953396.a n = A142852 (n + 1)

end A142852

/-! ## A142852.P7420307662122440413

`A007913(p?[A157330(n+1)-A016789(n)])`
-/

namespace A142852.P7420307662122440413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) - A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142852.P7420307662122440413

namespace A142852

/-- `A007913(p?[A157330(n+1)-A016789(n)])` -/
def P7420307662122440413.Spec : Prop :=
  ∀ n, P7420307662122440413.a n = A142852 (n + 1)

end A142852

/-! ## A142852.P1701608340083883427

`A008475(p?[A157330(n+1)-A016789(n)])`
-/

namespace A142852.P1701608340083883427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) - A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142852.P1701608340083883427

namespace A142852

/-- `A008475(p?[A157330(n+1)-A016789(n)])` -/
def P1701608340083883427.Spec : Prop :=
  ∀ n, P1701608340083883427.a n = A142852 (n + 1)

end A142852

/-!
# A142853: Primes congruent to 55 mod 61.

The programs for A142853, the canonical program `A142853.P6212993732306037194` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142853 has offset 1).

The definition of A142853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1313 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142853.P6212993732306037194

`p?[61*n-6]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142853

/-- `p?[61*n-6]` -/
def P6212993732306037194.Spec : Prop :=
  ∀ n, P6212993732306037194.a n = A142853 (n + 1)

theorem P6212993732306037194.correct : P6212993732306037194.Spec := by
  intro n
  simp only [A142853, Nat.add_sub_cancel]

end A142853

/-! ## A142853.P12125421042624711983

`or(1, p?[A157330(n+1)-A016777(n)])`
-/

namespace A142853.P12125421042624711983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) - A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142853.P12125421042624711983

namespace A142853

/-- `or(1, p?[A157330(n+1)-A016777(n)])` -/
def P12125421042624711983.Spec : Prop :=
  ∀ n, P12125421042624711983.a n = A142853 (n + 1)

end A142853

/-! ## A142853.P12706114381241896822

`A000007(n+1)+p?[A157330(n+1)-A016777(n)]`
-/

namespace A142853.P12706114381241896822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) - A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142853.P12706114381241896822

namespace A142853

/-- `A000007(n+1)+p?[A157330(n+1)-A016777(n)]` -/
def P12706114381241896822.Spec : Prop :=
  ∀ n, P12706114381241896822.a n = A142853 (n + 1)

end A142853

/-! ## A142853.P9086100546875245217

`p?[A157330(n+1)-A016777(n)]%A145292(n+1)`
-/

namespace A142853.P9086100546875245217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) - A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A145292 (n + 1))

end

end A142853.P9086100546875245217

namespace A142853

/-- `p?[A157330(n+1)-A016777(n)]%A145292(n+1)` -/
def P9086100546875245217.Spec : Prop :=
  ∀ n, P9086100546875245217.a n = A142853 (n + 1)

end A142853

/-! ## A142853.P9511400807329800986

`p?[A157330(n+1)-A016777(n)]+A011379(n)%2`
-/

namespace A142853.P9511400807329800986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) - A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A011379 n) 2

end

end A142853.P9511400807329800986

namespace A142853

/-- `p?[A157330(n+1)-A016777(n)]+A011379(n)%2` -/
def P9511400807329800986.Spec : Prop :=
  ∀ n, P9511400807329800986.a n = A142853 (n + 1)

end A142853

/-! ## A142853.P10630191702363746243

`A000027(p?[A304839(n+1)+32])`
-/

namespace A142853.P10630191702363746243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142853.P10630191702363746243

namespace A142853

/-- `A000027(p?[A304839(n+1)+32])` -/
def P10630191702363746243.Spec : Prop :=
  ∀ n, P10630191702363746243.a n = A142853 (n + 1)

end A142853

/-! ## A142853.P8657627091661354462

`A000265(p?[A304839(n+1)-29])`
-/

namespace A142853.P8657627091661354462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142853.P8657627091661354462

namespace A142853

/-- `A000265(p?[A304839(n+1)-29])` -/
def P8657627091661354462.Spec : Prop :=
  ∀ n, P8657627091661354462.a n = A142853 (n + 1)

end A142853

/-! ## A142853.P16211254557490164706

`A008472(p?[A304839(n+1)-29])`
-/

namespace A142853.P16211254557490164706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142853.P16211254557490164706

namespace A142853

/-- `A008472(p?[A304839(n+1)-29])` -/
def P16211254557490164706.Spec : Prop :=
  ∀ n, P16211254557490164706.a n = A142853 (n + 1)

end A142853

/-! ## A142853.P896241908688543256

`A000265(p?[A157330(n+1)-A016777(n)])`
-/

namespace A142853.P896241908688543256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) - A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142853.P896241908688543256

namespace A142853

/-- `A000265(p?[A157330(n+1)-A016777(n)])` -/
def P896241908688543256.Spec : Prop :=
  ∀ n, P896241908688543256.a n = A142853 (n + 1)

end A142853

/-! ## A142853.P8929729508526403917

`A034699(p?[A304839(n+1)-29])`
-/

namespace A142853.P8929729508526403917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142853.P8929729508526403917

namespace A142853

/-- `A034699(p?[A304839(n+1)-29])` -/
def P8929729508526403917.Spec : Prop :=
  ∀ n, P8929729508526403917.a n = A142853 (n + 1)

end A142853

/-!
# A142854: Primes congruent to 56 mod 61.

The programs for A142854, the canonical program `A142854.P17682631815115864914` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142854 has offset 1).

The definition of A142854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1298 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142854.P17682631815115864914

`p?[61*n-5]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142854

/-- `p?[61*n-5]` -/
def P17682631815115864914.Spec : Prop :=
  ∀ n, P17682631815115864914.a n = A142854 (n + 1)

theorem P17682631815115864914.correct : P17682631815115864914.Spec := by
  intro n
  simp only [A142854, Nat.add_sub_cancel]

end A142854

/-! ## A142854.P14610561376280584549

`or(1, p?[A304839(n+1)+33])`
-/

namespace A142854.P14610561376280584549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 33

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142854.P14610561376280584549

namespace A142854

/-- `or(1, p?[A304839(n+1)+33])` -/
def P14610561376280584549.Spec : Prop :=
  ∀ n, P14610561376280584549.a n = A142854 (n + 1)

end A142854

/-! ## A142854.P5073635723118908329

`A000027(p?[A304839(n+1)+33])`
-/

namespace A142854.P5073635723118908329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 33

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142854.P5073635723118908329

namespace A142854

/-- `A000027(p?[A304839(n+1)+33])` -/
def P5073635723118908329.Spec : Prop :=
  ∀ n, P5073635723118908329.a n = A142854 (n + 1)

end A142854

/-! ## A142854.P5656158944583980073

`A000265(p?[A304839(n+1)+33])`
-/

namespace A142854.P5656158944583980073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 33

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142854.P5656158944583980073

namespace A142854

/-- `A000265(p?[A304839(n+1)+33])` -/
def P5656158944583980073.Spec : Prop :=
  ∀ n, P5656158944583980073.a n = A142854 (n + 1)

end A142854

/-! ## A142854.P15283693579798502386

`A001414(p?[A304839(n+1)+33])`
-/

namespace A142854.P15283693579798502386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 33

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142854.P15283693579798502386

namespace A142854

/-- `A001414(p?[A304839(n+1)+33])` -/
def P15283693579798502386.Spec : Prop :=
  ∀ n, P15283693579798502386.a n = A142854 (n + 1)

end A142854

/-! ## A142854.P15007407902050370067

`A008472(p?[A304839(n+1)+33])`
-/

namespace A142854.P15007407902050370067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 33

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142854.P15007407902050370067

namespace A142854

/-- `A008472(p?[A304839(n+1)+33])` -/
def P15007407902050370067.Spec : Prop :=
  ∀ n, P15007407902050370067.a n = A142854 (n + 1)

end A142854

/-! ## A142854.P5980209014495730379

`record[A006530(A158130(n+2)+n-2)]`
-/

namespace A142854.P5980209014495730379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A158130 (n + 2) + (n : ℤ) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142854.P5980209014495730379

namespace A142854

/-- `record[A006530(A158130(n+2)+n-2)]` -/
def P5980209014495730379.Spec : Prop :=
  ∀ n, P5980209014495730379.a n = A142854 (n + 1)

end A142854

/-! ## A142854.P12307500246722536288

`record[A020639(A158130(n+2)+n-2)]`
-/

namespace A142854.P12307500246722536288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A158130 (n + 2) + (n : ℤ) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142854.P12307500246722536288

namespace A142854

/-- `record[A020639(A158130(n+2)+n-2)]` -/
def P12307500246722536288.Spec : Prop :=
  ∀ n, P12307500246722536288.a n = A142854 (n + 1)

end A142854

/-! ## A142854.P9675169068792442329

`A006530(2*p?[A304839(n+1)+33])`
-/

namespace A142854.P9675169068792442329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 33

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142854.P9675169068792442329

namespace A142854

/-- `A006530(2*p?[A304839(n+1)+33])` -/
def P9675169068792442329.Spec : Prop :=
  ∀ n, P9675169068792442329.a n = A142854 (n + 1)

end A142854

/-!
# A142855: Primes congruent to 57 mod 61.

The programs for A142855, the canonical program `A142855.P4280594476695647565` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142855 has offset 1).

The definition of A142855 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1305 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142855.P4280594476695647565

`p?[61*n-4]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142855

/-- `p?[61*n-4]` -/
def P4280594476695647565.Spec : Prop :=
  ∀ n, P4280594476695647565.a n = A142855 (n + 1)

theorem P4280594476695647565.correct : P4280594476695647565.Spec := by
  intro n
  simp only [A142855, Nat.add_sub_cancel]

end A142855

/-! ## A142855.P9832402847623028406

`or(1, p?[A304839(n+1)+34])`
-/

namespace A142855.P9832402847623028406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142855.P9832402847623028406

namespace A142855

/-- `or(1, p?[A304839(n+1)+34])` -/
def P9832402847623028406.Spec : Prop :=
  ∀ n, P9832402847623028406.a n = A142855 (n + 1)

end A142855

/-! ## A142855.P10773095385375692844

`A000007(n+1)+p?[A304839(n+1)+34]`
-/

namespace A142855.P10773095385375692844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142855.P10773095385375692844

namespace A142855

/-- `A000007(n+1)+p?[A304839(n+1)+34]` -/
def P10773095385375692844.Spec : Prop :=
  ∀ n, P10773095385375692844.a n = A142855 (n + 1)

end A142855

/-! ## A142855.P15429580451630260249

`A000035(2*n)+p?[A304839(n+1)+34]`
-/

namespace A142855.P15429580451630260249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142855.P15429580451630260249

namespace A142855

/-- `A000035(2*n)+p?[A304839(n+1)+34]` -/
def P15429580451630260249.Spec : Prop :=
  ∀ n, P15429580451630260249.a n = A142855 (n + 1)

end A142855

/-! ## A142855.P18191782975077861164

`p?[A304839(n+1)+34]*A001511(Δ[n²])`
-/

namespace A142855.P18191782975077861164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 34

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A001511 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

end

end A142855.P18191782975077861164

namespace A142855

/-- `p?[A304839(n+1)+34]*A001511(Δ[n²])` -/
def P18191782975077861164.Spec : Prop :=
  ∀ n, P18191782975077861164.a n = A142855 (n + 1)

end A142855

/-! ## A142855.P12921300902971334912

`p?[A304839(n+1)+34]*A003557(A005117(n+1))`
-/

namespace A142855.P12921300902971334912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A003557 (A005117 (n + 1)).toNat

end

end A142855.P12921300902971334912

namespace A142855

/-- `p?[A304839(n+1)+34]*A003557(A005117(n+1))` -/
def P12921300902971334912.Spec : Prop :=
  ∀ n, P12921300902971334912.a n = A142855 (n + 1)

end A142855

/-! ## A142855.P14721040068061835079

`p?[A304839(n+1)+34]*A003557(A020639(n+2))`
-/

namespace A142855.P14721040068061835079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A003557 (A020639 (n + 2)).toNat

end

end A142855.P14721040068061835079

namespace A142855

/-- `p?[A304839(n+1)+34]*A003557(A020639(n+2))` -/
def P14721040068061835079.Spec : Prop :=
  ∀ n, P14721040068061835079.a n = A142855 (n + 1)

end A142855

/-! ## A142855.P12262379885834966324

`A000027(p?[A304839(n+1)+34])`
-/

namespace A142855.P12262379885834966324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142855.P12262379885834966324

namespace A142855

/-- `A000027(p?[A304839(n+1)+34])` -/
def P12262379885834966324.Spec : Prop :=
  ∀ n, P12262379885834966324.a n = A142855 (n + 1)

end A142855

/-! ## A142855.P13632930037552179573

`A000265(p?[A304839(n+1)+34])`
-/

namespace A142855.P13632930037552179573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142855.P13632930037552179573

namespace A142855

/-- `A000265(p?[A304839(n+1)+34])` -/
def P13632930037552179573.Spec : Prop :=
  ∀ n, P13632930037552179573.a n = A142855 (n + 1)

end A142855

/-! ## A142855.P2474889986829890070

`A007913(p?[A304839(n+1)+34])`
-/

namespace A142855.P2474889986829890070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142855.P2474889986829890070

namespace A142855

/-- `A007913(p?[A304839(n+1)+34])` -/
def P2474889986829890070.Spec : Prop :=
  ∀ n, P2474889986829890070.a n = A142855 (n + 1)

end A142855

/-! ## A142855.P15649211440131143294

`A007947(p?[A304839(n+1)+34])`
-/

namespace A142855.P15649211440131143294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142855.P15649211440131143294

namespace A142855

/-- `A007947(p?[A304839(n+1)+34])` -/
def P15649211440131143294.Spec : Prop :=
  ∀ n, P15649211440131143294.a n = A142855 (n + 1)

end A142855

/-! ## A142855.P16215851357471010353

`A008475(p?[A304839(n+1)+34])`
-/

namespace A142855.P16215851357471010353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142855.P16215851357471010353

namespace A142855

/-- `A008475(p?[A304839(n+1)+34])` -/
def P16215851357471010353.Spec : Prop :=
  ∀ n, P16215851357471010353.a n = A142855 (n + 1)

end A142855

/-!
# A142856: Primes congruent to 58 mod 61.

The programs for A142856, the canonical program `A142856.P8665103313429403818` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142856 has offset 1).

The definition of A142856 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1307 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142856.P8665103313429403818

`p?[61*n-3]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142856

/-- `p?[61*n-3]` -/
def P8665103313429403818.Spec : Prop :=
  ∀ n, P8665103313429403818.a n = A142856 (n + 1)

theorem P8665103313429403818.correct : P8665103313429403818.Spec := by
  intro n
  simp only [A142856, Nat.add_sub_cancel]

end A142856

/-! ## A142856.P1943849775391564437

`lcm(p?[A158130(n+2)+n], A020985(n))`
-/

namespace A142856.P1943849775391564437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158130 (n + 2) + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A020985 n)

end

end A142856.P1943849775391564437

namespace A142856

/-- `lcm(p?[A158130(n+2)+n], A020985(n))` -/
def P1943849775391564437.Spec : Prop :=
  ∀ n, (P1943849775391564437.a n : ℤ) = A142856 (n + 1)

end A142856

/-! ## A142856.P8165882950361477848

`or(p?[A158130(n+2)+n], A000007(n))`
-/

namespace A142856.P8165882950361477848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158130 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000007 n)

end

end A142856.P8165882950361477848

namespace A142856

/-- `or(p?[A158130(n+2)+n], A000007(n))` -/
def P8165882950361477848.Spec : Prop :=
  ∀ n, P8165882950361477848.a n = A142856 (n + 1)

end A142856

/-! ## A142856.P15223263778533313220

`or(p?[A158130(n+2)+n], A179081(n))`
-/

namespace A142856.P15223263778533313220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158130 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A179081 n)

end

end A142856.P15223263778533313220

namespace A142856

/-- `or(p?[A158130(n+2)+n], A179081(n))` -/
def P15223263778533313220.Spec : Prop :=
  ∀ n, P15223263778533313220.a n = A142856 (n + 1)

end A142856

/-! ## A142856.P5414620058012353815

`or(p?[A158130(n+2)+n], A342892(n))`
-/

namespace A142856.P5414620058012353815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158130 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A342892 n)

end

end A142856.P5414620058012353815

namespace A142856

/-- `or(p?[A158130(n+2)+n], A342892(n))` -/
def P5414620058012353815.Spec : Prop :=
  ∀ n, P5414620058012353815.a n = A142856 (n + 1)

end A142856

/-! ## A142856.P1745322413107081392

`p?[A158130(n+2)+n]%A158407(n+1)`
-/

namespace A142856.P1745322413107081392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158130 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A158407 (n + 1))

end

end A142856.P1745322413107081392

namespace A142856

/-- `p?[A158130(n+2)+n]%A158407(n+1)` -/
def P1745322413107081392.Spec : Prop :=
  ∀ n, P1745322413107081392.a n = A142856 (n + 1)

end A142856

/-! ## A142856.P11008200063441024962

`or(p?[A158130(n+2)+n], A066247(n+1))`
-/

namespace A142856.P11008200063441024962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158130 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A066247 (n + 1))

end

end A142856.P11008200063441024962

namespace A142856

/-- `or(p?[A158130(n+2)+n], A066247(n+1))` -/
def P11008200063441024962.Spec : Prop :=
  ∀ n, P11008200063441024962.a n = A142856 (n + 1)

end A142856

/-! ## A142856.P17417968391383732036

`A000045(gcd(n, n+1))*p?[A158130(n+2)+n]`
-/

namespace A142856.P17417968391383732036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158130 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142856.P17417968391383732036

namespace A142856

/-- `A000045(gcd(n, n+1))*p?[A158130(n+2)+n]` -/
def P17417968391383732036.Spec : Prop :=
  ∀ n, P17417968391383732036.a n = A142856 (n + 1)

end A142856

/-! ## A142856.P17434091352845581573

`A001222(A007918(n))*p?[A158130(n+2)+n]`
-/

namespace A142856.P17434091352845581573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158130 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007918 n).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142856.P17434091352845581573

namespace A142856

/-- `A001222(A007918(n))*p?[A158130(n+2)+n]` -/
def P17434091352845581573.Spec : Prop :=
  ∀ n, P17434091352845581573.a n = A142856 (n + 1)

end A142856

/-! ## A142856.P15858994626303636772

`record[A006530(A158130(n+2)+n)]`
-/

namespace A142856.P15858994626303636772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A158130 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142856.P15858994626303636772

namespace A142856

/-- `record[A006530(A158130(n+2)+n)]` -/
def P15858994626303636772.Spec : Prop :=
  ∀ n, P15858994626303636772.a n = A142856 (n + 1)

end A142856

/-! ## A142856.P16017549639612409059

`record[A020639(A158130(n+2)+n)]`
-/

namespace A142856.P16017549639612409059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A158130 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142856.P16017549639612409059

namespace A142856

/-- `record[A020639(A158130(n+2)+n)]` -/
def P16017549639612409059.Spec : Prop :=
  ∀ n, P16017549639612409059.a n = A142856 (n + 1)

end A142856

/-! ## A142856.P10306717398591715127

`A000265(p?[A158130(n+2)+n])`
-/

namespace A142856.P10306717398591715127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158130 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142856.P10306717398591715127

namespace A142856

/-- `A000265(p?[A158130(n+2)+n])` -/
def P10306717398591715127.Spec : Prop :=
  ∀ n, P10306717398591715127.a n = A142856 (n + 1)

end A142856

/-! ## A142856.P8070716655066288394

`A007947(p?[A158130(n+2)+n])`
-/

namespace A142856.P8070716655066288394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158130 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142856.P8070716655066288394

namespace A142856

/-- `A007947(p?[A158130(n+2)+n])` -/
def P8070716655066288394.Spec : Prop :=
  ∀ n, P8070716655066288394.a n = A142856 (n + 1)

end A142856

/-! ## A142856.P2945390445131835884

`∑{d}[p?[A158130(n+2)+n], A000010(#)]`
-/

namespace A142856.P2945390445131835884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158130 (n + 2) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A142856.P2945390445131835884

namespace A142856

/-- `∑{d}[p?[A158130(n+2)+n], A000010(#)]` -/
def P2945390445131835884.Spec : Prop :=
  ∀ n, P2945390445131835884.a n = A142856 (n + 1)

end A142856

/-! ## A142856.P1739408316565464879

`record[A006530(A017509(A017509(n+1))+n)]`
-/

namespace A142856.P1739408316565464879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A017509 (A017509 (n + 1)).toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142856.P1739408316565464879

namespace A142856

/-- `record[A006530(A017509(A017509(n+1))+n)]` -/
def P1739408316565464879.Spec : Prop :=
  ∀ n, P1739408316565464879.a n = A142856 (n + 1)

end A142856

/-!
# A142857: Primes congruent to 59 mod 61.

The programs for A142857, the canonical program `A142857.P17008751147517384597` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142857 has offset 1).

The definition of A142857 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1284 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142857.P17008751147517384597

`p?[61*n-2]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142857

/-- `p?[61*n-2]` -/
def P17008751147517384597.Spec : Prop :=
  ∀ n, P17008751147517384597.a n = A142857 (n + 1)

theorem P17008751147517384597.correct : P17008751147517384597.Spec := by
  intro n
  simp only [A142857, Nat.add_sub_cancel]

end A142857

/-! ## A142857.P16092974272595460706

`or(1, p?[a(n-1)+61])` with `a(0)=59`
-/

namespace A142857.P16092974272595460706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [59] fun n f1 =>
  f1 (n - 1) + 61

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142857.P16092974272595460706

namespace A142857

/-- `or(1, p?[a(n-1)+61])` -/
def P16092974272595460706.Spec : Prop :=
  ∀ n, (P16092974272595460706.a n : ℤ) = A142857 (n + 1)

end A142857

/-! ## A142857.P16190283001164692040

`A000027(p?[A304839(n+1)-25])`
-/

namespace A142857.P16190283001164692040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - 25

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142857.P16190283001164692040

namespace A142857

/-- `A000027(p?[A304839(n+1)-25])` -/
def P16190283001164692040.Spec : Prop :=
  ∀ n, P16190283001164692040.a n = A142857 (n + 1)

end A142857

/-! ## A142857.P7381602298839895293

`record[A020639(61*n+59)]`
-/

namespace A142857.P7381602298839895293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (61 * n + 59)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142857.P7381602298839895293

namespace A142857

/-- `record[A020639(61*n+59)]` -/
def P7381602298839895293.Spec : Prop :=
  ∀ n, P7381602298839895293.a n = A142857 (n + 1)

end A142857

/-! ## A142857.P10944246120704306647

`record[A006530(61*(n+1)-2)]`
-/

namespace A142857.P10944246120704306647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (61 * (n + 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142857.P10944246120704306647

namespace A142857

/-- `record[A006530(61*(n+1)-2)]` -/
def P10944246120704306647.Spec : Prop :=
  ∀ n, P10944246120704306647.a n = A142857 (n + 1)

end A142857

/-! ## A142857.P16362444565320298760

`A007913(p?[a(n-1)+61])` with `a(0)=0, a(1)=59`
-/

namespace A142857.P16362444565320298760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 59] fun n f1 =>
  f1 (n - 1) + 61

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142857.P16362444565320298760

namespace A142857

/-- `A007913(p?[a(n-1)+61])` -/
def P16362444565320298760.Spec : Prop :=
  ∀ n, P16362444565320298760.a n = A142857 (n + 1)

end A142857

/-! ## A142857.P15288289760127501124

`A000265(p?[A152691(n)-A016789(n)])`
-/

namespace A142857.P15288289760127501124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142857.P15288289760127501124

namespace A142857

/-- `A000265(p?[A152691(n)-A016789(n)])` -/
def P15288289760127501124.Spec : Prop :=
  ∀ n, P15288289760127501124.a n = A142857 (n + 1)

end A142857

/-!
# A142858: Primes congruent to 60 mod 61.

The programs for A142858, the canonical program `A142858.P14644552258889670954` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142858 has offset 1).

The definition of A142858 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1312 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142858.P14644552258889670954

`p?[61*n-1]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142858

/-- `p?[61*n-1]` -/
def P14644552258889670954.Spec : Prop :=
  ∀ n, P14644552258889670954.a n = A142858 (n + 1)

theorem P14644552258889670954.correct : P14644552258889670954.Spec := by
  intro n
  simp only [A142858, Nat.add_sub_cancel]

end A142858

/-! ## A142858.P12360308478426848939

`or(1, p?[60*(n+1)+n])`
-/

namespace A142858.P12360308478426848939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  60 * (n + 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142858.P12360308478426848939

namespace A142858

/-- `or(1, p?[60*(n+1)+n])` -/
def P12360308478426848939.Spec : Prop :=
  ∀ n, (P12360308478426848939.a n : ℤ) = A142858 (n + 1)

end A142858

/-! ## A142858.P3934426385606718443

`∏{p}[p?[60*(n+1)+n], #]`
-/

namespace A142858.P3934426385606718443
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  60 * (n + 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A142858.P3934426385606718443

namespace A142858

/-- `∏{p}[p?[60*(n+1)+n], #]` -/
def P3934426385606718443.Spec : Prop :=
  ∀ n, (P3934426385606718443.a n : ℤ) = A142858 (n + 1)

end A142858

/-! ## A142858.P10342745495749772066

`and(log2(1/2), p?[60*(n+1)+n])`
-/

namespace A142858.P10342745495749772066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  60 * (n + 1) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A142858.P10342745495749772066

namespace A142858

/-- `and(log2(1/2), p?[60*(n+1)+n])` -/
def P10342745495749772066.Spec : Prop :=
  ∀ n, P10342745495749772066.a n = A142858 (n + 1)

end A142858

/-! ## A142858.P18346277590020845472

`A000027(p?[A158130(n+1)+n+1])`
-/

namespace A142858.P18346277590020845472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158130 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142858.P18346277590020845472

namespace A142858

/-- `A000027(p?[A158130(n+1)+n+1])` -/
def P18346277590020845472.Spec : Prop :=
  ∀ n, P18346277590020845472.a n = A142858 (n + 1)

end A142858

/-! ## A142858.P15962826426647455395

`p?[60*(n+1)+n]*A032742(A213521(n+1))`
-/

namespace A142858.P15962826426647455395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  60 * (n + 1) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) * A032742 (A213521 (n + 1)).toNat

end

end A142858.P15962826426647455395

namespace A142858

/-- `p?[60*(n+1)+n]*A032742(A213521(n+1))` -/
def P15962826426647455395.Spec : Prop :=
  ∀ n, P15962826426647455395.a n = A142858 (n + 1)

end A142858

/-! ## A142858.P7919899514085716293

`A000265(p?[60*(n+1)+n])`
-/

namespace A142858.P7919899514085716293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  60 * (n + 1) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142858.P7919899514085716293

namespace A142858

/-- `A000265(p?[60*(n+1)+n])` -/
def P7919899514085716293.Spec : Prop :=
  ∀ n, P7919899514085716293.a n = A142858 (n + 1)

end A142858

/-! ## A142858.P16003715603975457084

`A007947(p?[A158130(n+1)+n+1])`
-/

namespace A142858.P16003715603975457084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158130 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142858.P16003715603975457084

namespace A142858

/-- `A007947(p?[A158130(n+1)+n+1])` -/
def P16003715603975457084.Spec : Prop :=
  ∀ n, P16003715603975457084.a n = A142858 (n + 1)

end A142858

/-!
# A142859: Number of fully gated graphs on n nodes.

The programs for A142859, there is no canonical definition to state claims against.
-/

/-! ## A142859.P11587633163918194309

`A142861(n+5)+A142860(n+5)`
-/

namespace A142859.P11587633163918194309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142861 (n + 5) + A142860 (n + 5)

end

end A142859.P11587633163918194309

/-! ## A142859.P17253082362631509826

`A142860(n+5)+(7*C(2*n, 2))%A008619(A274711(n+1))`
-/

namespace A142859.P17253082362631509826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142860 (n + 5) + Int.tmod (7 * Nat.choose (2 * n) 2 : ℤ) (A008619 (A274711 (n + 1)).toNat)

end

end A142859.P17253082362631509826

/-!
# A142860: Number of trivially fully gated graphs on n nodes.

The programs for A142860, there is no canonical definition to state claims against.
-/

/-! ## A142860.P14177399115070580614

`A142859(n+5)-A142861(n+5)`
-/

namespace A142860.P14177399115070580614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142859 (n + 5) - A142861 (n + 5)

end

end A142860.P14177399115070580614

/-!
# A142861: Number of nontrivially fully gated graphs on n nodes.

The programs for A142861, there is no canonical definition to state claims against.
-/

/-! ## A142861.P8444464174271221432

`A142859(n+5)-A142860(n+5)`
-/

namespace A142861.P8444464174271221432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142859 (n + 5) - A142860 (n + 5)

end

end A142861.P8444464174271221432

/-! ## A142861.P12230023797759866126

`record[A276727(∑[A147225(n+1)])]`
-/

namespace A142861.P12230023797759866126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147225 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276727 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142861.P12230023797759866126

/-!
# A142862: Semiprimes n (A001358) for which A000001(n) is 1.

The programs for A142862, the canonical program `A142862.P11022761200002495153` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142862 has offset 1).

The definition of A142862 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142862.P6664520424571645411

`record[A109395(A046388(n+1))]`
-/

namespace A142862.P6664520424571645411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (A046388 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142862.P6664520424571645411

namespace A142862

/-- `record[A109395(A046388(n+1))]` -/
def P6664520424571645411.Spec : Prop :=
  ∀ n, P6664520424571645411.a n = A142862 (n + 1)

end A142862

/-! ## A142862.P12171427427100290812

`filter[A003277(n+1), A064911(#)]`
-/

namespace A142862.P12171427427100290812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A142862.P12171427427100290812

namespace A142862

/-- `filter[A003277(n+1), A064911(#)]` -/
def P12171427427100290812.Spec : Prop :=
  ∀ n, P12171427427100290812.a n = A142862 (n + 1)

end A142862

/-! ## A142862.P1460006974468249929

`filter[A050384(n+1), A064911(#)]`
-/

namespace A142862.P1460006974468249929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A142862.P1460006974468249929

namespace A142862

/-- `filter[A050384(n+1), A064911(#)]` -/
def P1460006974468249929.Spec : Prop :=
  ∀ n, P1460006974468249929.a n = A142862 (n + 1)

end A142862

/-! ## A142862.P4975384699150394197

`filter[A050384(n+1), A101040(#)]`
-/

namespace A142862.P4975384699150394197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A142862.P4975384699150394197

namespace A142862

/-- `filter[A050384(n+1), A101040(#)]` -/
def P4975384699150394197.Spec : Prop :=
  ∀ n, P4975384699150394197.a n = A142862 (n + 1)

end A142862

/-! ## A142862.P10892424379088980296

`filter[A003277(n+1), A215480(#)]`
-/

namespace A142862.P10892424379088980296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A142862.P10892424379088980296

namespace A142862

/-- `filter[A003277(n+1), A215480(#)]` -/
def P10892424379088980296.Spec : Prop :=
  ∀ n, P10892424379088980296.a n = A142862 (n + 1)

end A142862

/-! ## A142862.P11236112370437487035

`filter[A050384(n+1), A215480(#)]`
-/

namespace A142862.P11236112370437487035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A142862.P11236112370437487035

namespace A142862

/-- `filter[A050384(n+1), A215480(#)]` -/
def P11236112370437487035.Spec : Prop :=
  ∀ n, P11236112370437487035.a n = A142862 (n + 1)

end A142862

/-! ## A142862.P7189280541307951860

`filter[A003277(n+1), A280710(#)]`
-/

namespace A142862.P7189280541307951860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A142862.P7189280541307951860

namespace A142862

/-- `filter[A003277(n+1), A280710(#)]` -/
def P7189280541307951860.Spec : Prop :=
  ∀ n, P7189280541307951860.a n = A142862 (n + 1)

end A142862

/-! ## A142862.P12709283632234824942

`filter[A230918(n+1), A064911(#)]`
-/

namespace A142862.P12709283632234824942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A142862.P12709283632234824942

namespace A142862

/-- `filter[A230918(n+1), A064911(#)]` -/
def P12709283632234824942.Spec : Prop :=
  ∀ n, P12709283632234824942.a n = A142862 (n + 1)

end A142862

/-! ## A142862.P11022761200002495153

`filter[A001358(n+1), A297086(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A142862

/-- `filter[A001358(n+1), A297086(#)]` -/
def P11022761200002495153.Spec : Prop :=
  ∀ n, P11022761200002495153.a n = A142862 (n + 1)

theorem P11022761200002495153.correct : P11022761200002495153.Spec := by
  intro n
  simp only [A142862, Nat.add_sub_cancel]

end A142862

/-! ## A142862.P10157757495137243774

`filter[A006881(n+1), A297086(#)]`
-/

namespace A142862.P10157757495137243774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A142862.P10157757495137243774

namespace A142862

/-- `filter[A006881(n+1), A297086(#)]` -/
def P10157757495137243774.Spec : Prop :=
  ∀ n, P10157757495137243774.a n = A142862 (n + 1)

end A142862

/-! ## A142862.P6178912553555401828

`filter[A007774(n+1), A297086(#)]`
-/

namespace A142862.P6178912553555401828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A142862.P6178912553555401828

namespace A142862

/-- `filter[A007774(n+1), A297086(#)]` -/
def P6178912553555401828.Spec : Prop :=
  ∀ n, P6178912553555401828.a n = A142862 (n + 1)

end A142862

/-! ## A142862.P7531365097971061851

`filter[A253235(n+1), A064911(#)]`
-/

namespace A142862.P7531365097971061851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A142862.P7531365097971061851

namespace A142862

/-- `filter[A253235(n+1), A064911(#)]` -/
def P7531365097971061851.Spec : Prop :=
  ∀ n, P7531365097971061851.a n = A142862 (n + 1)

end A142862

/-! ## A142862.P11243693311805513263

`filter[A030513(n+1), A297086(#)]`
-/

namespace A142862.P11243693311805513263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A142862.P11243693311805513263

namespace A142862

/-- `filter[A030513(n+1), A297086(#)]` -/
def P11243693311805513263.Spec : Prop :=
  ∀ n, P11243693311805513263.a n = A142862 (n + 1)

end A142862

/-! ## A142862.P15072595503879440781

`filter[A033872(n+1), A297086(#)]`
-/

namespace A142862.P15072595503879440781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A142862.P15072595503879440781

namespace A142862

/-- `filter[A033872(n+1), A297086(#)]` -/
def P15072595503879440781.Spec : Prop :=
  ∀ n, P15072595503879440781.a n = A142862 (n + 1)

end A142862

/-! ## A142862.P10198970460770035356

`filter[A050384(n+1), A280710(#)]`
-/

namespace A142862.P10198970460770035356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A142862.P10198970460770035356

namespace A142862

/-- `filter[A050384(n+1), A280710(#)]` -/
def P10198970460770035356.Spec : Prop :=
  ∀ n, P10198970460770035356.a n = A142862 (n + 1)

end A142862

/-! ## A142862.P14103855998436147205

`filter[A051532(n+1), A280710(#)]`
-/

namespace A142862.P14103855998436147205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A142862.P14103855998436147205

namespace A142862

/-- `filter[A051532(n+1), A280710(#)]` -/
def P14103855998436147205.Spec : Prop :=
  ∀ n, P14103855998436147205.a n = A142862 (n + 1)

end A142862

/-! ## A142862.P10391100281029072679

`filter[A056867(n+1), A280710(#)]`
-/

namespace A142862.P10391100281029072679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A142862.P10391100281029072679

namespace A142862

/-- `filter[A056867(n+1), A280710(#)]` -/
def P10391100281029072679.Spec : Prop :=
  ∀ n, P10391100281029072679.a n = A142862 (n + 1)

end A142862

/-! ## A142862.P13457652594181959852

`filter[A046315(n+1), A297086(#)]`
-/

namespace A142862.P13457652594181959852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A142862.P13457652594181959852

namespace A142862

/-- `filter[A046315(n+1), A297086(#)]` -/
def P13457652594181959852.Spec : Prop :=
  ∀ n, P13457652594181959852.a n = A142862 (n + 1)

end A142862

/-! ## A142862.P3294594676015856152

`filter[A046388(n+1), A297086(#)]`
-/

namespace A142862.P3294594676015856152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A142862.P3294594676015856152

namespace A142862

/-- `filter[A046388(n+1), A297086(#)]` -/
def P3294594676015856152.Spec : Prop :=
  ∀ n, P3294594676015856152.a n = A142862 (n + 1)

end A142862

/-!
# A142863: Semiprimes n (A001358) for which A000001(n) is 2.

The programs for A142863, the canonical program `A142863.P620794168205063834` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142863 has offset 1).

The definition of A142863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142863.P14453273915016474210

`eq[2, A354992(n+1)]+1`
-/

namespace A142863.P14453273915016474210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354992 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A142863.P14453273915016474210

namespace A142863

/-- `eq[2, A354992(n+1)]+1` -/
def P14453273915016474210.Spec : Prop :=
  ∀ n, (P14453273915016474210.a n : ℤ) = A142863 (n + 1)

end A142863

/-! ## A142863.P12857812740590128443

`record[A066048(A060679(n+1))]`
-/

namespace A142863.P12857812740590128443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (A060679 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142863.P12857812740590128443

namespace A142863

/-- `record[A066048(A060679(n+1))]` -/
def P12857812740590128443.Spec : Prop :=
  ∀ n, P12857812740590128443.a n = A142863 (n + 1)

end A142863

/-! ## A142863.P4361211625980999893

`filter[A054395(n+1), A064911(#)]`
-/

namespace A142863.P4361211625980999893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A142863.P4361211625980999893

namespace A142863

/-- `filter[A054395(n+1), A064911(#)]` -/
def P4361211625980999893.Spec : Prop :=
  ∀ n, P4361211625980999893.a n = A142863 (n + 1)

end A142863

/-! ## A142863.P10479911550086933309

`filter[A060679(n+1), A064911(#)]`
-/

namespace A142863.P10479911550086933309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A142863.P10479911550086933309

namespace A142863

/-- `filter[A060679(n+1), A064911(#)]` -/
def P10479911550086933309.Spec : Prop :=
  ∀ n, P10479911550086933309.a n = A142863 (n + 1)

end A142863

/-! ## A142863.P1791267710832016515

`filter[A054395(n+1), A101040(#)]`
-/

namespace A142863.P1791267710832016515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A142863.P1791267710832016515

namespace A142863

/-- `filter[A054395(n+1), A101040(#)]` -/
def P1791267710832016515.Spec : Prop :=
  ∀ n, P1791267710832016515.a n = A142863 (n + 1)

end A142863

/-! ## A142863.P3121771004777752222

`filter[A060679(n+1), A101040(#)]`
-/

namespace A142863.P3121771004777752222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A142863.P3121771004777752222

namespace A142863

/-- `filter[A060679(n+1), A101040(#)]` -/
def P3121771004777752222.Spec : Prop :=
  ∀ n, P3121771004777752222.a n = A142863 (n + 1)

end A142863

/-! ## A142863.P2961327590346558336

`filter[A054395(n+1), A123927(#)]`
-/

namespace A142863.P2961327590346558336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A142863.P2961327590346558336

namespace A142863

/-- `filter[A054395(n+1), A123927(#)]` -/
def P2961327590346558336.Spec : Prop :=
  ∀ n, P2961327590346558336.a n = A142863 (n + 1)

end A142863

/-! ## A142863.P1256348051853068001

`filter[A342256(n+1), A064911(#)]`
-/

namespace A142863.P1256348051853068001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A142863.P1256348051853068001

namespace A142863

/-- `filter[A342256(n+1), A064911(#)]` -/
def P1256348051853068001.Spec : Prop :=
  ∀ n, P1256348051853068001.a n = A142863 (n + 1)

end A142863

/-! ## A142863.P15203946384245176948

`filter[A054395(n+1), A353799(#)]`
-/

namespace A142863.P15203946384245176948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A142863.P15203946384245176948

namespace A142863

/-- `filter[A054395(n+1), A353799(#)]` -/
def P15203946384245176948.Spec : Prop :=
  ∀ n, P15203946384245176948.a n = A142863 (n + 1)

end A142863

/-! ## A142863.P9224266137873117259

`filter[A394433(n+1), A064911(#)]`
-/

namespace A142863.P9224266137873117259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A142863.P9224266137873117259

namespace A142863

/-- `filter[A394433(n+1), A064911(#)]` -/
def P9224266137873117259.Spec : Prop :=
  ∀ n, P9224266137873117259.a n = A142863 (n + 1)

end A142863

/-! ## A142863.P17237578609225572841

`filter[A394433(n+1), A101040(#)]`
-/

namespace A142863.P17237578609225572841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A142863.P17237578609225572841

namespace A142863

/-- `filter[A394433(n+1), A101040(#)]` -/
def P17237578609225572841.Spec : Prop :=
  ∀ n, P17237578609225572841.a n = A142863 (n + 1)

end A142863

/-! ## A142863.P1761573909178171568

`filter[A394433(n+1), A123927(#)]`
-/

namespace A142863.P1761573909178171568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A142863.P1761573909178171568

namespace A142863

/-- `filter[A394433(n+1), A123927(#)]` -/
def P1761573909178171568.Spec : Prop :=
  ∀ n, P1761573909178171568.a n = A142863 (n + 1)

end A142863

/-! ## A142863.P726107595443946041

`filter[A394433(n+1), A353799(#)]`
-/

namespace A142863.P726107595443946041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A142863.P726107595443946041

namespace A142863

/-- `filter[A394433(n+1), A353799(#)]` -/
def P726107595443946041.Spec : Prop :=
  ∀ n, P726107595443946041.a n = A142863 (n + 1)

end A142863

/-! ## A142863.P13476288105246894431

`∩[A001358(n+1), A054395(n+1)]`
-/

namespace A142863.P13476288105246894431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142863.P13476288105246894431

namespace A142863

/-- `∩[A001358(n+1), A054395(n+1)]` -/
def P13476288105246894431.Spec : Prop :=
  ∀ n, (P13476288105246894431.a n : ℤ) = A142863 (n + 1)

end A142863

/-! ## A142863.P10027764139144598918

`∩[A001358(n+1), A060679(n+1)]`
-/

namespace A142863.P10027764139144598918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142863.P10027764139144598918

namespace A142863

/-- `∩[A001358(n+1), A060679(n+1)]` -/
def P10027764139144598918.Spec : Prop :=
  ∀ n, (P10027764139144598918.a n : ℤ) = A142863 (n + 1)

end A142863

/-! ## A142863.P17907567361724397854

`∩[A007964(n+1), A054395(n+1)]`
-/

namespace A142863.P17907567361724397854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142863.P17907567361724397854

namespace A142863

/-- `∩[A007964(n+1), A054395(n+1)]` -/
def P17907567361724397854.Spec : Prop :=
  ∀ n, (P17907567361724397854.a n : ℤ) = A142863 (n + 1)

end A142863

/-! ## A142863.P7572212486455041250

`∩[A037143(n+1), A054395(n+1)]`
-/

namespace A142863.P7572212486455041250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142863.P7572212486455041250

namespace A142863

/-- `∩[A037143(n+1), A054395(n+1)]` -/
def P7572212486455041250.Spec : Prop :=
  ∀ n, (P7572212486455041250.a n : ℤ) = A142863 (n + 1)

end A142863

/-! ## A142863.P620794168205063834

`∩[A037143(n+1), A060679(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A142863

/-- `∩[A037143(n+1), A060679(n+1)]` -/
def P620794168205063834.Spec : Prop :=
  ∀ n, (P620794168205063834.a n : ℤ) = A142863 (n + 1)

theorem P620794168205063834.correct : P620794168205063834.Spec := by
  intro n
  simp only [A142863, Nat.add_sub_cancel]

end A142863

/-! ## A142863.P3485682982000439302

`∩[A054395(n+1), A077135(n+1)]`
-/

namespace A142863.P3485682982000439302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142863.P3485682982000439302

namespace A142863

/-- `∩[A054395(n+1), A077135(n+1)]` -/
def P3485682982000439302.Spec : Prop :=
  ∀ n, (P3485682982000439302.a n : ℤ) = A142863 (n + 1)

end A142863

/-! ## A142863.P8393576136755732167

`∩[A054395(n+1), A077136(n+1)]`
-/

namespace A142863.P8393576136755732167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142863.P8393576136755732167

namespace A142863

/-- `∩[A054395(n+1), A077136(n+1)]` -/
def P8393576136755732167.Spec : Prop :=
  ∀ n, (P8393576136755732167.a n : ℤ) = A142863 (n + 1)

end A142863

/-!
# A142864: Value of A000001(n) as n runs through the triprimes (A014612).

The programs for A142864, there is no canonical definition to state claims against.
-/

/-! ## A142864.P16899660567552949559

`A000001(A014612(n+1))`
-/

namespace A142864.P16899660567552949559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A014612 (n + 1)).toNat

end

end A142864.P16899660567552949559

/-! ## A142864.P7924420752621583946

`A201733(A014612(n+1)+char[9])`
-/

namespace A142864.P7924420752621583946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (A014612 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A142864.P7924420752621583946

/-! ## A142864.P5258535626709348511

`A000001(eq[3, A001222(n+1)]+1)`
-/

namespace A142864.P5258535626709348511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142864.P5258535626709348511

/-! ## A142864.P15766625407112069280

`A000001(eq[3, A008481(n+1)]+1)`
-/

namespace A142864.P15766625407112069280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142864.P15766625407112069280

/-! ## A142864.P9895646515319828152

`A201733(A014612(2*n+1-n))`
-/

namespace A142864.P9895646515319828152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (A014612 (2 * n + 1 - n)).toNat

end

end A142864.P9895646515319828152

/-! ## A142864.P16088552800333524660

`A000001(record[n/a(A001222(n))])` with `a(0)=8, a(1)=3, a(2)=2`
-/

namespace A142864.P16088552800333524660
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [8, 3, 2] fun n f1 =>
  (n : ℚ) / f1 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A142864.P16088552800333524660

/-! ## A142864.P17850951249703504716

`A000001(eq[n, n-a(A001222(n))])` with `a(0)=1, a(1)=3`
-/

namespace A142864.P17850951249703504716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  (n : ℤ) - f2 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A142864.P17850951249703504716

/-! ## A142864.P9260584505431329667

`A201733(eq[n, n-a(A001222(n))])` with `a(0)=1, a(1)=3`
-/

namespace A142864.P9260584505431329667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  (n : ℤ) - f2 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A142864.P9260584505431329667

/-! ## A142864.P7449370037528857203

`A000001(eq[4, A001222(A008706(n))])`
-/

namespace A142864.P7449370037528857203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008706 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A142864.P7449370037528857203

/-! ## A142864.P18292066610244636122

`A201733(A014612(n+1)%A002063(n))`
-/

namespace A142864.P18292066610244636122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (Int.tmod (A014612 (n + 1)) (A002063 n)).toNat

end

end A142864.P18292066610244636122

/-! ## A142864.P7173374954793860477

`A201733(A014612(n+1))%A020742(n)`
-/

namespace A142864.P7173374954793860477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201733 (A014612 (n + 1)).toNat) (A020742 n)

end

end A142864.P7173374954793860477

/-! ## A142864.P7292023283307030561

`∑{d}[A201733(A014612(n+1)), A000010(#)]`
-/

namespace A142864.P7292023283307030561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (A014612 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A142864.P7292023283307030561

/-! ## A142864.P4821990610749188553

`∏{d}[A201733(A014612(n+1)), A014963(#)]`
-/

namespace A142864.P4821990610749188553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (A014612 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A142864.P4821990610749188553

/-!
# A142865: Value of A000001(n) as n runs through the quadruprimes (A014613).

The programs for A142865, there is no canonical definition to state claims against.
-/

/-! ## A142865.P15700320126881399077

`A000001(A014613(n+1))`
-/

namespace A142865.P15700320126881399077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A014613 (n + 1)).toNat

end

end A142865.P15700320126881399077

/-! ## A142865.P13766320917071649376

`A000001(A207790(4*4*n+9))`
-/

namespace A142865.P13766320917071649376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A207790 (4 * (4 * n) + 9)).toNat

end

end A142865.P13766320917071649376

/-! ## A142865.P5654881914182346325

`A000001(eq[1, A101637(n+1)]+1)`
-/

namespace A142865.P5654881914182346325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142865.P5654881914182346325

/-! ## A142865.P10161243052798896171

`A000001(eq[4, A001222(n+1)]+1)`
-/

namespace A142865.P10161243052798896171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142865.P10161243052798896171

/-! ## A142865.P13502976355095579912

`A000001(A056239(A124282(n+1)))`
-/

namespace A142865.P13502976355095579912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A056239 (A124282 (n + 1)).toNat).toNat

end

end A142865.P13502976355095579912

/-!
# A142866: Number of permutation symbols of type a(n) for hyperbolic archimedean tessellations of rank n.

The programs for A142866, there is no canonical definition to state claims against.
-/

/-! ## A142866.P10560417563920603496

`A275727(ceil(n!/2))`
-/

namespace A142866.P10560417563920603496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275727 ⌈(Nat.factorial n : ℚ) / 2⌉.toNat

end

end A142866.P10560417563920603496

/-! ## A142866.P1855303033727696671

`A275727(∏[gcd(n, C(2, n))])`
-/

namespace A142866.P1855303033727696671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.choose 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275727 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A142866.P1855303033727696671

/-! ## A142866.P7851670449551498890

`A175127(2*a(n-2))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A142866.P7851670449551498890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3] fun n a =>
  A175127 (2 * a (n - 2)).toNat

end

end A142866.P7851670449551498890

/-! ## A142866.P17200094480114339709

`A137735((4*a(n-2))²)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A142866.P17200094480114339709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3] fun n a =>
  A137735 ((4 * a (n - 2)) ^ 2).toNat

end

end A142866.P17200094480114339709

/-! ## A142866.P13869123205930132657

`A275727(A001710(n))`
-/

namespace A142866.P13869123205930132657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275727 (A001710 n).toNat

end

end A142866.P13869123205930132657

/-!
# A142868: Number of permutation symbols of type .a(n) for hyperbolic archimedean tessellations of rank 2n.

The programs for A142868, there is no canonical definition to state claims against.
-/

/-! ## A142868.P14419298028997445456

`Δ[A261585(A049163(n))]`
-/

namespace A142868.P14419298028997445456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A049163 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A142868.P14419298028997445456

/-! ## A142868.P16380211192180088964

`A059995(A150987(n)+A004442(n))`
-/

namespace A142868.P16380211192180088964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A150987 n + A004442 n).toNat

end

end A142868.P16380211192180088964

/-! ## A142868.P17250842576883883215

`A142873(n)+A038608(A142876(n))`
-/

namespace A142868.P17250842576883883215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142873 n + A038608 (A142876 n).toNat

end

end A142868.P17250842576883883215

/-!
# A142869: Number of permutation symbols of type .r(n) for hyperbolic archimedean tessellations of rank 2n.

The programs for A142869, there is no canonical definition to state claims against.
-/

/-! ## A142869.P9648294782843435364

`A326607(n)+A178210(A013989(n))`
-/

namespace A142869.P9648294782843435364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326607 n + A178210 (A013989 n).toNat

end

end A142869.P9648294782843435364

/-! ## A142869.P1480263564684991559

`A070165(n+1)+A002473(A029519(n+1))`
-/

namespace A142869.P1480263564684991559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070165 (n + 1) + A002473 (A029519 (n + 1)).toNat

end

end A142869.P1480263564684991559

/-!
# A142870: Number of permutation symbols of type *a(n) for hyperbolic archimedean tessellations of rank n.

The programs for A142870, there is no canonical definition to state claims against.
-/

/-! ## A142870.P10903424391491493481

`A113619(A056516(n+1))`
-/

namespace A142870.P10903424391491493481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113619 (A056516 (n + 1)).toNat

end

end A142870.P10903424391491493481

/-! ## A142870.P14788455532302986120

`A113619(A056517(n+1))`
-/

namespace A142870.P14788455532302986120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113619 (A056517 (n + 1)).toNat

end

end A142870.P14788455532302986120

/-! ## A142870.P17622171655088241381

`A113619(A285042(n+1))`
-/

namespace A142870.P17622171655088241381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113619 (A285042 (n + 1)).toNat

end

end A142870.P17622171655088241381

/-! ## A142870.P12070246256793461935

`A087061(xor(3, A148435(n)))`
-/

namespace A142870.P12070246256793461935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087061 (Int.xor 3 (A148435 n)).toNat

end

end A142870.P12070246256793461935

/-!
# A142872: A bisection of A142866.

The programs for A142872, there is no canonical definition to state claims against.
-/

/-! ## A142872.P12332914360717896260

`A142866(Δ[n²])`
-/

namespace A142872.P12332914360717896260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142866 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A142872.P12332914360717896260

/-! ## A142872.P424836075131207253

`A142870(Δ[n²])`
-/

namespace A142872.P424836075131207253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142870 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A142872.P424836075131207253

/-! ## A142872.P14849697475960760900

`and(-1, A142870(2*n+1))`
-/

namespace A142872.P14849697475960760900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A142870 (2 * n + 1))

end

end A142872.P14849697475960760900

/-! ## A142872.P3670427298452236044

`and(-3, A142866(2*n+1))`
-/

namespace A142872.P3670427298452236044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A142866 (2 * n + 1))

end

end A142872.P3670427298452236044

/-! ## A142872.P13930726519476900548

`∑{e}[A004171(n), A142866(#)]`
-/

namespace A142872.P13930726519476900548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A142866 (Nat.factorization (f1 n).natAbs p)

end

end A142872.P13930726519476900548

/-!
# A142873: A bisection of A142866.

The programs for A142873, there is no canonical definition to state claims against.
-/

/-! ## A142873.P18087649504873782513

`A142866(2*(n+1))`
-/

namespace A142873.P18087649504873782513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142866 (2 * (n + 1))

end

end A142873.P18087649504873782513

/-! ## A142873.P1340327100136176095

`record[A142866(n+1)^and(1, n)]`
-/

namespace A142873.P1340327100136176095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142866 (n + 1) ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142873.P1340327100136176095

/-! ## A142873.P12915345946488847979

`record[A142866(A003417(n))]`
-/

namespace A142873.P12915345946488847979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142866 (A003417 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142873.P12915345946488847979

/-! ## A142873.P10662170797710233854

`record[A142866(A133265(n))]`
-/

namespace A142873.P10662170797710233854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142866 (A133265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142873.P10662170797710233854

/-!
# A142874: Primes congruent to 33 mod 62.

The programs for A142874, there is no canonical definition to state claims against.
-/

/-! ## A142874.P8966102913046225566

`A142006(n+2)`
-/

namespace A142874.P8966102913046225566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142006 (n + 2)

end

end A142874.P8966102913046225566

/-! ## A142874.P13103657866487151652

`p?[62*n+33]`
-/

namespace A142874.P13103657866487151652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  62 * n + 33

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142874.P13103657866487151652

/-! ## A142874.P9264156688334915232

`ratio[p?[31*n-29]]*p?[31*n-29]`
-/

namespace A142874.P9264156688334915232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (31 * n : ℤ) - 29

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (31 * n : ℤ) - 29

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) : ℚ)

end

end A142874.P9264156688334915232

/-! ## A142874.P2419989248857345

`∏{d}[p?[A128470(A014681(n))+n], #]`
-/

namespace A142874.P2419989248857345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 (A014681 n).toNat + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A142874.P2419989248857345

/-! ## A142874.P15354237311878301896

`A000027(p?[A128470(A014681(n))+n])`
-/

namespace A142874.P15354237311878301896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 (A014681 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142874.P15354237311878301896

/-! ## A142874.P14539565551068272885

`p?[A128470(A014681(n))+n]%A017355(n)`
-/

namespace A142874.P14539565551068272885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 (A014681 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017355 n)

end

end A142874.P14539565551068272885

/-! ## A142874.P2850836941759766647

`A000038(n+1)+p?[A128470(A014681(n))+n]`
-/

namespace A142874.P2850836941759766647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 (A014681 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142874.P2850836941759766647

/-! ## A142874.P6141398596118861095

`p?[A128470(A014681(n))+n]/(A002522(n)-n²)`
-/

namespace A142874.P6141398596118861095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 (A014681 n).toNat + (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A002522 n - (n ^ 2 : ℤ) : ℚ)

end

end A142874.P6141398596118861095

/-! ## A142874.P5436087140390143415

`p?[A128470(A014681(n))+n]+2%(A004442(n)-n)`
-/

namespace A142874.P5436087140390143415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 (A014681 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod 2 (A004442 n - (n : ℤ))

end

end A142874.P5436087140390143415

/-! ## A142874.P8639020851433512642

`∩[A051040(n+1)+1, A318158(n+1)]`
-/

namespace A142874.P8639020851433512642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051040 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142874.P8639020851433512642

/-! ## A142874.P11814638011979415048

`∩[A051040(n+1)+1, A071621(n+1)]`
-/

namespace A142874.P11814638011979415048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051040 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142874.P11814638011979415048

/-! ## A142874.P15339248606691141671

`∩[A051040(2*(n+1))+1, A004139(n+2)]`
-/

namespace A142874.P15339248606691141671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051040 (2 * (n + 1)) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142874.P15339248606691141671

/-! ## A142874.P1787813161225174079

`∩[A051040(2*(n+1))+1, A065091(n+2)]`
-/

namespace A142874.P1787813161225174079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051040 (2 * (n + 1)) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142874.P1787813161225174079

/-! ## A142874.P3615352584119878267

`∩[A051040(2*(n+1))+1, A157996(n+2)]`
-/

namespace A142874.P3615352584119878267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051040 (2 * (n + 1)) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142874.P3615352584119878267

/-! ## A142874.P8745523126206225579

`∩[A051040(2*(n+1))+1, A162789(n+2)]`
-/

namespace A142874.P8745523126206225579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051040 (2 * (n + 1)) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162789 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142874.P8745523126206225579

/-! ## A142874.P6479696950274443130

`∩[A051040(2*(n+1))+1, A215848(n+2)]`
-/

namespace A142874.P6479696950274443130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051040 (2 * (n + 1)) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142874.P6479696950274443130

/-! ## A142874.P13604372859101093839

`∩[A051040(2*(n+1))+1, A216495(n+2)]`
-/

namespace A142874.P13604372859101093839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051040 (2 * (n + 1)) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216495 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142874.P13604372859101093839

/-! ## A142874.P13808789074780029012

`∩[A191024(n+1), A310511(n)+2]`
-/

namespace A142874.P13808789074780029012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310511 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142874.P13808789074780029012

/-!
# A142875: A bisection of A142867.

The programs for A142875, there is no canonical definition to state claims against.
-/

/-! ## A142875.P14283929801041112632

`A142867(2*(n+1))`
-/

namespace A142875.P14283929801041112632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142867 (2 * (n + 1))

end

end A142875.P14283929801041112632

/-! ## A142875.P3968865204564002480

`lcm((-1)^val(n+1, 2), A142867(n+2+n))`
-/

namespace A142875.P3968865204564002480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ SequenceMachineLib.valuation (n + 1) 2) (A142867 (n + 2 + n))

end

end A142875.P3968865204564002480

/-! ## A142875.P13893439051261447789

`record[A142867(A337945(n+1))]`
-/

namespace A142875.P13893439051261447789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142867 (A337945 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142875.P13893439051261447789

/-! ## A142875.P12977820928214827011

`record[A142867(A353683(n+1))]`
-/

namespace A142875.P12977820928214827011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142867 (A353683 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142875.P12977820928214827011

/-!
# A142876: A bisection of A142870.

The programs for A142876, there is no canonical definition to state claims against.
-/

/-! ## A142876.P14021098367646790407

`A142870(2*(n+1))`
-/

namespace A142876.P14021098367646790407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142870 (2 * (n + 1))

end

end A142876.P14021098367646790407

/-! ## A142876.P6482694779809582286

`record[A142870(xor(1, n)+1)]`
-/

namespace A142876.P6482694779809582286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142870 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142876.P6482694779809582286

/-! ## A142876.P5650492767673466336

`or(1, A142870(n+2+n))`
-/

namespace A142876.P5650492767673466336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A142870 (n + 2 + n))

end

end A142876.P5650492767673466336

/-! ## A142876.P6084213659917722981

`record[A142870(lcm(2, n)/2+1)]`
-/

namespace A142876.P6084213659917722981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142870 (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142876.P6084213659917722981

/-!
# A142877: A bisection of A142871.

The programs for A142877, there is no canonical definition to state claims against.
-/

/-! ## A142877.P16910533707473607525

`A142871(2*(n+1))`
-/

namespace A142877.P16910533707473607525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142871 (2 * (n + 1))

end

end A142877.P16910533707473607525

/-! ## A142877.P5268216458583547165

`record[A142871((n+1)/2^val(n+1, 2)+1)]`
-/

namespace A142877.P5268216458583547165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142871 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142877.P5268216458583547165

/-! ## A142877.P15259005458541683728

`record[A142871(A103889(n+1))]`
-/

namespace A142877.P15259005458541683728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142871 (A103889 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142877.P15259005458541683728

/-! ## A142877.P2652225156050095965

`record[A142871(A193356(n+1)+1)]`
-/

namespace A142877.P2652225156050095965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142871 (A193356 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142877.P2652225156050095965

/-!
# A142878: a(n) = 1 if a(n-1) is prime, otherwise a(n-1) + a(n-2), with a(0) = 0 and a(1) = 1.

The programs for A142878, there is no canonical definition to state claims against.
-/

/-! ## A142878.P17434559868354099002

`A005206(n^A190436(A215109(n)))`
-/

namespace A142878.P17434559868354099002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A190436 (A215109 n).toNat : ℤ))).toNat

end

end A142878.P17434559868354099002

/-! ## A142878.P18107390011712981382

`A205574(eq[A104714(n), A169946(n)])`
-/

namespace A142878.P18107390011712981382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104714 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205574 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A142878.P18107390011712981382

/-! ## A142878.P16018727571762149202

`A057979(A265410(n+1)+A187829(n+1))`
-/

namespace A142878.P16018727571762149202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A265410 (n + 1) + A187829 (n + 1)).toNat

end

end A142878.P16018727571762149202

/-! ## A142878.P17448704867735749074

`A057979(A288992(n+1)%A288985(n+1))`
-/

namespace A142878.P17448704867735749074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (Int.tmod (A288992 (n + 1)) (A288985 (n + 1))).toNat

end

end A142878.P17448704867735749074

/-! ## A142878.P11350992160164030023

`A057979(A099354(n+1)%A375997(n+2))`
-/

namespace A142878.P11350992160164030023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (Int.tmod (A099354 (n + 1)) (A375997 (n + 2))).toNat

end

end A142878.P11350992160164030023

/-!
# A142879: a(n) = 5*a(n-3) - a(n-6) with terms 1..6 as 0, 1, 2, 5, 7, 9.

The programs for A142879, the canonical program `A142879.P17811025243095048848` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142879 has offset 1).

The definition of A142879 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-3)-a(n-6)` (program `A142879.P17811025243095048848`, by `A142879.P17811025243095048848.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142879.P17811025243095048848

`5*a(n-3)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5, a(4)=7, a(5)=9`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142879

/-- `5*a(n-3)-a(n-6)` -/
def P17811025243095048848.Spec : Prop :=
  ∀ n, P17811025243095048848.a n = A142879 (n + 1)

theorem P17811025243095048848.correct : P17811025243095048848.Spec := by
  intro n
  simp only [A142879, Nat.add_sub_cancel]

end A142879

/-! ## A142879.P586732367822906204

`eq[A218698(n), A252665(A005941(n+1))]`
-/

namespace A142879.P586732367822906204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218698 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252665 (A005941 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A142879.P586732367822906204

namespace A142879

/-- `eq[A218698(n), A252665(A005941(n+1))]` -/
def P586732367822906204.Spec : Prop :=
  ∀ n, (P586732367822906204.a n : ℤ) = A142879 (n + 1)

end A142879

/-!
# A142880: a(n) = 7*a(n-3) - a(n-6).

The programs for A142880, the canonical program `A142880.P18428407147059641141` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142880 has offset 0).

The definition of A142880 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-3)-a(n-6)` (program `A142880.P18428407147059641141`, by `A142880.P18428407147059641141.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142880.P18428407147059641141

`7*a(n-3)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=8, a(5)=13`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142880

/-- `7*a(n-3)-a(n-6)` -/
def P18428407147059641141.Spec : Prop :=
  ∀ n, P18428407147059641141.a n = A142880 n

theorem P18428407147059641141.correct : P18428407147059641141.Spec := by
  intro n
  simp only [A142880]

end A142880

/-! ## A142880.P16229273108443903340

`A247309(2*(n+1))`
-/

namespace A142880.P16229273108443903340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247309 (2 * (n + 1))

end

end A142880.P16229273108443903340

namespace A142880

/-- `A247309(2*(n+1))` -/
def P16229273108443903340.Spec : Prop :=
  ∀ n, P16229273108443903340.a n = A142880 n

end A142880

/-! ## A142880.P16167269858336543039

`A000045(ceil(4*n/3))`
-/

namespace A142880.P16167269858336543039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈4 * ((n : ℚ) / 3)⌉.toNat

end

end A142880.P16167269858336543039

namespace A142880

/-- `A000045(ceil(4*n/3))` -/
def P16167269858336543039.Spec : Prop :=
  ∀ n, P16167269858336543039.a n = A142880 n

end A142880

/-! ## A142880.P5533270671365945633

`A247049(3*(n+1)+n)`
-/

namespace A142880.P5533270671365945633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247049 (3 * (n + 1) + n)

end

end A142880.P5533270671365945633

namespace A142880

/-- `A247049(3*(n+1)+n)` -/
def P5533270671365945633.Spec : Prop :=
  ∀ n, P5533270671365945633.a n = A142880 n

end A142880

/-! ## A142880.P5276118665331985324

`record[A000045(floor(lcm(2, n)/3))]`
-/

namespace A142880.P5276118665331985324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌊(Nat.lcm 2 n : ℚ) / 3⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142880.P5276118665331985324

namespace A142880

/-- `record[A000045(floor(lcm(2, n)/3))]` -/
def P5276118665331985324.Spec : Prop :=
  ∀ n, P5276118665331985324.a n = A142880 n

end A142880

/-! ## A142880.P9771099121994997944

`A001611(ceil(4*n/3))-1`
-/

namespace A142880.P9771099121994997944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 ⌈4 * ((n : ℚ) / 3)⌉.toNat - 1

end

end A142880.P9771099121994997944

namespace A142880

/-- `A001611(ceil(4*n/3))-1` -/
def P9771099121994997944.Spec : Prop :=
  ∀ n, P9771099121994997944.a n = A142880 n

end A142880

/-! ## A142880.P3517207305728531531

`A212804(comp[comp[2*n]+2*n]+1)`
-/

namespace A142880.P3517207305728531531
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A142880.P3517207305728531531

namespace A142880

/-- `A212804(comp[comp[2*n]+2*n]+1)` -/
def P3517207305728531531.Spec : Prop :=
  ∀ n, P3517207305728531531.a n = A142880 n

end A142880

/-! ## A142880.P12651394035956662954

`record[A000045(A080412(n))]`
-/

namespace A142880.P12651394035956662954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A080412 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142880.P12651394035956662954

namespace A142880

/-- `record[A000045(A080412(n))]` -/
def P12651394035956662954.Spec : Prop :=
  ∀ n, P12651394035956662954.a n = A142880 n

end A142880

/-! ## A142880.P2396299226123699075

`A103609(A047408(n+1))`
-/

namespace A142880.P2396299226123699075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A047408 (n + 1)).toNat

end

end A142880.P2396299226123699075

namespace A142880

/-- `A103609(A047408(n+1))` -/
def P2396299226123699075.Spec : Prop :=
  ∀ n, P2396299226123699075.a n = A142880 n

end A142880

/-! ## A142880.P17308162330010090824

`A103609(A047437(n+1))`
-/

namespace A142880.P17308162330010090824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A047437 (n + 1)).toNat

end

end A142880.P17308162330010090824

namespace A142880

/-- `A103609(A047437(n+1))` -/
def P17308162330010090824.Spec : Prop :=
  ∀ n, P17308162330010090824.a n = A142880 n

end A142880

/-! ## A142880.P18183628980111855938

`A103609(A047438(n+1))`
-/

namespace A142880.P18183628980111855938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A047438 (n + 1)).toNat

end

end A142880.P18183628980111855938

namespace A142880

/-- `A103609(A047438(n+1))` -/
def P18183628980111855938.Spec : Prop :=
  ∀ n, P18183628980111855938.a n = A142880 n

end A142880

/-! ## A142880.P13939567342048611064

`A103609(A047477(n+1))`
-/

namespace A142880.P13939567342048611064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A047477 (n + 1)).toNat

end

end A142880.P13939567342048611064

namespace A142880

/-- `A103609(A047477(n+1))` -/
def P13939567342048611064.Spec : Prop :=
  ∀ n, P13939567342048611064.a n = A142880 n

end A142880

/-! ## A142880.P1857433688650927722

`A103609(A047478(n+1))`
-/

namespace A142880.P1857433688650927722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A047478 (n + 1)).toNat

end

end A142880.P1857433688650927722

namespace A142880

/-- `A103609(A047478(n+1))` -/
def P1857433688650927722.Spec : Prop :=
  ∀ n, P1857433688650927722.a n = A142880 n

end A142880

/-! ## A142880.P15584777353976382696

`A103609(A047536(n+1))`
-/

namespace A142880.P15584777353976382696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A047536 (n + 1)).toNat

end

end A142880.P15584777353976382696

namespace A142880

/-- `A103609(A047536(n+1))` -/
def P15584777353976382696.Spec : Prop :=
  ∀ n, P15584777353976382696.a n = A142880 n

end A142880

/-! ## A142880.P8113571511025141736

`A103609(A047537(n+1))`
-/

namespace A142880.P8113571511025141736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A047537 (n + 1)).toNat

end

end A142880.P8113571511025141736

namespace A142880

/-- `A103609(A047537(n+1))` -/
def P8113571511025141736.Spec : Prop :=
  ∀ n, P8113571511025141736.a n = A142880 n

end A142880

/-! ## A142880.P10272893705837246117

`record[A000045(A002264(lcm(2, n)))]`
-/

namespace A142880.P10272893705837246117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002264 (Nat.lcm 2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142880.P10272893705837246117

namespace A142880

/-- `record[A000045(A002264(lcm(2, n)))]` -/
def P10272893705837246117.Spec : Prop :=
  ∀ n, P10272893705837246117.a n = A142880 n

end A142880

/-! ## A142880.P14743442765825793050

`record[A000045(A004523(xor(1, n)))]`
-/

namespace A142880.P14743442765825793050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004523 (Nat.xor 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142880.P14743442765825793050

namespace A142880

/-- `record[A000045(A004523(xor(1, n)))]` -/
def P14743442765825793050.Spec : Prop :=
  ∀ n, P14743442765825793050.a n = A142880 n

end A142880

/-! ## A142880.P1604875078995787734

`A103609(A047399(n+1)+1)`
-/

namespace A142880.P1604875078995787734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A047399 (n + 1) + 1).toNat

end

end A142880.P1604875078995787734

namespace A142880

/-- `A103609(A047399(n+1)+1)` -/
def P1604875078995787734.Spec : Prop :=
  ∀ n, P1604875078995787734.a n = A142880 n

end A142880

/-! ## A142880.P14066927638909905782

`A103609(A047396(n+2)-2)`
-/

namespace A142880.P14066927638909905782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A047396 (n + 2) - 2).toNat

end

end A142880.P14066927638909905782

namespace A142880

/-- `A103609(A047396(n+2)-2)` -/
def P14066927638909905782.Spec : Prop :=
  ∀ n, P14066927638909905782.a n = A142880 n

end A142880

/-! ## A142880.P14171509430469327247

`A103609(A047400(n+2)-2)`
-/

namespace A142880.P14171509430469327247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A047400 (n + 2) - 2).toNat

end

end A142880.P14171509430469327247

namespace A142880

/-- `A103609(A047400(n+2)-2)` -/
def P14171509430469327247.Spec : Prop :=
  ∀ n, P14171509430469327247.a n = A142880 n

end A142880

/-!
# A142881: a(0) = 0, a(1) = 1, after which, if n=3k: a(n) = 2*a(n-1) - a(n-2), if n=3k+1: a(n) = a(n-1) + a(n-2), if n=3k+2: a(n) = 2*a(n-1) + a(n-2).

The programs for A142881, the canonical program `A142881.P12448374588262497165` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142881 has offset 0).

The definition of A142881 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A142881.P12448374588262497165

`7*a(n-3)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=13`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142881

/-- `7*a(n-3)-a(n-6)` -/
def P12448374588262497165.Spec : Prop :=
  ∀ n, P12448374588262497165.a n = A142881 n

theorem P12448374588262497165.correct : P12448374588262497165.Spec := by
  intro n
  simp only [A142881]

end A142881

/-! ## A142881.P16211768089025096701

`A247049(4*n+2)`
-/

namespace A142881.P16211768089025096701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247049 (4 * n + 2)

end

end A142881.P16211768089025096701

namespace A142881

/-- `A247049(4*n+2)` -/
def P16211768089025096701.Spec : Prop :=
  ∀ n, P16211768089025096701.a n = A142881 n

end A142881

/-! ## A142881.P17498761395532561845

`A000045(round(4*n/3))`
-/

namespace A142881.P17498761395532561845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (4 * ((n : ℚ) / 3))).toNat

end

end A142881.P17498761395532561845

namespace A142881

/-- `A000045(round(4*n/3))` -/
def P17498761395532561845.Spec : Prop :=
  ∀ n, P17498761395532561845.a n = A142881 n

end A142881

/-! ## A142881.P3236547165495664443

`A001611(round(4*n/3))-1`
-/

namespace A142881.P3236547165495664443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (SequenceMachineLib.roundAway (4 * ((n : ℚ) / 3))).toNat - 1

end

end A142881.P3236547165495664443

namespace A142881

/-- `A001611(round(4*n/3))-1` -/
def P3236547165495664443.Spec : Prop :=
  ∀ n, P3236547165495664443.a n = A142881 n

end A142881

/-! ## A142881.P408155565079636912

`record[A000045(n/gcd(4, n)%3)]`
-/

namespace A142881.P408155565079636912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((n : ℚ) / ((Nat.gcd 4 n % 3 : ℕ) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142881.P408155565079636912

namespace A142881

/-- `record[A000045(n/gcd(4, n)%3)]` -/
def P408155565079636912.Spec : Prop :=
  ∀ n, P408155565079636912.a n = A142881 n

end A142881

/-! ## A142881.P8789398756187829840

`record[A000045(and(n, and(4, n²)-1))]`
-/

namespace A142881.P8789398756187829840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land (n : ℤ) ((Nat.land 4 (n ^ 2) : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142881.P8789398756187829840

namespace A142881

/-- `record[A000045(and(n, and(4, n²)-1))]` -/
def P8789398756187829840.Spec : Prop :=
  ∀ n, P8789398756187829840.a n = A142881 n

end A142881

/-! ## A142881.P6363240999319081659

`record[A000045(A216972(n))]`
-/

namespace A142881.P6363240999319081659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A216972 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142881.P6363240999319081659

namespace A142881

/-- `record[A000045(A216972(n))]` -/
def P6363240999319081659.Spec : Prop :=
  ∀ n, P6363240999319081659.a n = A142881 n

end A142881

/-! ## A142881.P2219286354400545210

`record[A000045(A283971(n))]`
-/

namespace A142881.P2219286354400545210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A283971 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142881.P2219286354400545210

namespace A142881

/-- `record[A000045(A283971(n))]` -/
def P2219286354400545210.Spec : Prop :=
  ∀ n, P2219286354400545210.a n = A142881 n

end A142881

/-! ## A142881.P1322694524855314317

`A103609(A047396(n+1))`
-/

namespace A142881.P1322694524855314317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A047396 (n + 1)).toNat

end

end A142881.P1322694524855314317

namespace A142881

/-- `A103609(A047396(n+1))` -/
def P1322694524855314317.Spec : Prop :=
  ∀ n, P1322694524855314317.a n = A142881 n

end A142881

/-! ## A142881.P844728981067420906

`A103609(A047399(n+1))`
-/

namespace A142881.P844728981067420906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A047399 (n + 1)).toNat

end

end A142881.P844728981067420906

namespace A142881

/-- `A103609(A047399(n+1))` -/
def P844728981067420906.Spec : Prop :=
  ∀ n, P844728981067420906.a n = A142881 n

end A142881

/-! ## A142881.P14736808791927712791

`A103609(A047400(n+1))`
-/

namespace A142881.P14736808791927712791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A047400 (n + 1)).toNat

end

end A142881.P14736808791927712791

namespace A142881

/-- `A103609(A047400(n+1))` -/
def P14736808791927712791.Spec : Prop :=
  ∀ n, P14736808791927712791.a n = A142881 n

end A142881

/-! ## A142881.P15979613830652676466

`A103609(A047525(n+1))`
-/

namespace A142881.P15979613830652676466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A047525 (n + 1)).toNat

end

end A142881.P15979613830652676466

namespace A142881

/-- `A103609(A047525(n+1))` -/
def P15979613830652676466.Spec : Prop :=
  ∀ n, P15979613830652676466.a n = A142881 n

end A142881

/-! ## A142881.P7364025189679234500

`A103609(A047526(n+1))`
-/

namespace A142881.P7364025189679234500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A047526 (n + 1)).toNat

end

end A142881.P7364025189679234500

namespace A142881

/-- `A103609(A047526(n+1))` -/
def P7364025189679234500.Spec : Prop :=
  ∀ n, P7364025189679234500.a n = A142881 n

end A142881

/-! ## A142881.P8912805671668993642

`A103609(A047528(n+1))`
-/

namespace A142881.P8912805671668993642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A047528 (n + 1)).toNat

end

end A142881.P8912805671668993642

namespace A142881

/-- `A103609(A047528(n+1))` -/
def P8912805671668993642.Spec : Prop :=
  ∀ n, P8912805671668993642.a n = A142881 n

end A142881

/-! ## A142881.P1848643557122881377

`A103609(A047529(n+1))`
-/

namespace A142881.P1848643557122881377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A047529 (n + 1)).toNat

end

end A142881.P1848643557122881377

namespace A142881

/-- `A103609(A047529(n+1))` -/
def P1848643557122881377.Spec : Prop :=
  ∀ n, P1848643557122881377.a n = A142881 n

end A142881

/-! ## A142881.P8689596278742594604

`A212804(A004773(n+1))`
-/

namespace A142881.P8689596278742594604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A004773 (n + 1)).toNat

end

end A142881.P8689596278742594604

namespace A142881

/-- `A212804(A004773(n+1))` -/
def P8689596278742594604.Spec : Prop :=
  ∀ n, P8689596278742594604.a n = A142881 n

end A142881

/-! ## A142881.P1235919903497339827

`A247309(A047242(n+2))`
-/

namespace A142881.P1235919903497339827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247309 (A047242 (n + 2)).toNat

end

end A142881.P1235919903497339827

namespace A142881

/-- `A247309(A047242(n+2))` -/
def P1235919903497339827.Spec : Prop :=
  ∀ n, P1235919903497339827.a n = A142881 n

end A142881

/-! ## A142881.P5582819068069711706

`A247309(A047244(n+2))`
-/

namespace A142881.P5582819068069711706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247309 (A047244 (n + 2)).toNat

end

end A142881.P5582819068069711706

namespace A142881

/-- `A247309(A047244(n+2))` -/
def P5582819068069711706.Spec : Prop :=
  ∀ n, P5582819068069711706.a n = A142881 n

end A142881

/-! ## A142881.P3643644237492254470

`A103609(A168052(4*n))`
-/

namespace A142881.P3643644237492254470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A168052 (4 * n)).toNat

end

end A142881.P3643644237492254470

namespace A142881

/-- `A103609(A168052(4*n))` -/
def P3643644237492254470.Spec : Prop :=
  ∀ n, P3643644237492254470.a n = A142881 n

end A142881

/-! ## A142881.P12116437572272719697

`A212804(A042965(n+1)+1)`
-/

namespace A142881.P12116437572272719697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A042965 (n + 1) + 1).toNat

end

end A142881.P12116437572272719697

namespace A142881

/-- `A212804(A042965(n+1)+1)` -/
def P12116437572272719697.Spec : Prop :=
  ∀ n, P12116437572272719697.a n = A142881 n

end A142881

/-!
# A142882: First trisection of A120070.

The programs for A142882, the canonical program `A142882.P13423732587579757471` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142882 has offset 1).

The definition of A142882 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142882.P13423732587579757471

`A120070(3*n+2)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A142882

/-- `A120070(3*n+2)` -/
def P13423732587579757471.Spec : Prop :=
  ∀ n, P13423732587579757471.a n = A142882 (n + 1)

theorem P13423732587579757471.correct : P13423732587579757471.Spec := by
  intro n
  simp only [A142882, Nat.add_sub_cancel]

end A142882

/-! ## A142882.P3543874674685544799

`lcm(3, A120070(A016789(n)))`
-/

namespace A142882.P3543874674685544799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A120070 (A016789 n).toNat)

end

end A142882.P3543874674685544799

namespace A142882

/-- `lcm(3, A120070(A016789(n)))` -/
def P3543874674685544799.Spec : Prop :=
  ∀ n, (P3543874674685544799.a n : ℤ) = A142882 (n + 1)

end A142882

/-! ## A142882.P5969697717713090

`or(A000007(n), A120070(A016789(n)))`
-/

namespace A142882.P5969697717713090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A120070 (A016789 n).toNat)

end

end A142882.P5969697717713090

namespace A142882

/-- `or(A000007(n), A120070(A016789(n)))` -/
def P5969697717713090.Spec : Prop :=
  ∀ n, P5969697717713090.a n = A142882 (n + 1)

end A142882

/-! ## A142882.P10330135636383007759

`∑{d}[A120070(A016789(n)), A000010(#)]`
-/

namespace A142882.P10330135636383007759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A142882.P10330135636383007759

namespace A142882

/-- `∑{d}[A120070(A016789(n)), A000010(#)]` -/
def P10330135636383007759.Spec : Prop :=
  ∀ n, P10330135636383007759.a n = A142882 (n + 1)

end A142882

/-! ## A142882.P11239663361379474236

`A120070(A016789(n))%A273221(n+1)`
-/

namespace A142882.P11239663361379474236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120070 (A016789 n).toNat) (A273221 (n + 1))

end

end A142882.P11239663361379474236

namespace A142882

/-- `A120070(A016789(n))%A273221(n+1)` -/
def P11239663361379474236.Spec : Prop :=
  ∀ n, P11239663361379474236.a n = A142882 (n + 1)

end A142882

/-! ## A142882.P776104826888984541

`A120070(A016789(n))/A000041(C(2, n+2))`
-/

namespace A142882.P776104826888984541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120070 (A016789 n).toNat : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A142882.P776104826888984541

namespace A142882

/-- `A120070(A016789(n))/A000041(C(2, n+2))` -/
def P776104826888984541.Spec : Prop :=
  ∀ n, P776104826888984541.a n = (A142882 (n + 1) : ℚ)

end A142882

/-! ## A142882.P4209376064544070439

`A120070(A016789(n))+A000045(C(n, n+1))`
-/

namespace A142882.P4209376064544070439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (A016789 n).toNat + A000045 (Nat.choose n (n + 1))

end

end A142882.P4209376064544070439

namespace A142882

/-- `A120070(A016789(n))+A000045(C(n, n+1))` -/
def P4209376064544070439.Spec : Prop :=
  ∀ n, P4209376064544070439.a n = A142882 (n + 1)

end A142882

/-! ## A142882.P16438259672230780620

`sqrt(A165447(3*n+2))`
-/

namespace A142882.P16438259672230780620
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165447 (3 * n + 2) : ℝ)

end

end A142882.P16438259672230780620

namespace A142882

/-- `sqrt(A165447(3*n+2))` -/
def P16438259672230780620.Spec : Prop :=
  ∀ n, P16438259672230780620.a n = (A142882 (n + 1) : ℝ)

end A142882

/-! ## A142882.P10493048102888581471

`A094728(A080036(3*n+1))`
-/

namespace A142882.P10493048102888581471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094728 (A080036 (3 * n + 1)).toNat

end

end A142882.P10493048102888581471

namespace A142882

/-- `A094728(A080036(3*n+1))` -/
def P10493048102888581471.Spec : Prop :=
  ∀ n, P10493048102888581471.a n = A142882 (n + 1)

end A142882

/-!
# A142883: a(n) = A142590(n)/3.

The programs for A142883, the canonical program `A142883.P8119179199355655471` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142883 has offset 0).

The definition of A142883 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A142883.P8119179199355655471

`A142590(n)/3`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A142883

/-- `A142590(n)/3` -/
def P8119179199355655471.Spec : Prop :=
  ∀ n, P8119179199355655471.a n = (A142883 n : ℚ)

end A142883

/-! ## A142883.P11819707641709656130

`n*(3*n+4)*(37-27*cos(π*n)-6*cos(π*n/2))/64`
-/

namespace A142883.P11819707641709656130
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * ((3 * n + 4 : ℝ) * ((37 - 27 * Real.cos (Real.pi * (n : ℝ)) - 6 * Real.cos (Real.pi * ((n : ℚ) / 2 : ℝ))) / 64))

end

end A142883.P11819707641709656130

namespace A142883

/-- `n*(3*n+4)*(37-27*cos(π*n)-6*cos(π*n/2))/64` -/
def P11819707641709656130.Spec : Prop :=
  ∀ n, P11819707641709656130.a n = (A142883 n : ℝ)

end A142883

/-! ## A142883.P10845194223449986656

`A140676(n)/gcd(4, n)²`
-/

namespace A142883.P10845194223449986656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140676 n : ℚ) / (Nat.gcd 4 n ^ 2 : ℚ)

end

end A142883.P10845194223449986656

namespace A142883

/-- `A140676(n)/gcd(4, n)²` -/
def P10845194223449986656.Spec : Prop :=
  ∀ n, P10845194223449986656.a n = (A142883 n : ℚ)

end A142883

/-! ## A142883.P2575812506472511518

`A191567(n)+A181318(n)`
-/

namespace A142883.P2575812506472511518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191567 n + A181318 n

end

end A142883.P2575812506472511518

namespace A142883

/-- `A191567(n)+A181318(n)` -/
def P2575812506472511518.Spec : Prop :=
  ∀ n, P2575812506472511518.a n = A142883 n

end A142883

/-! ## A142883.P10703038721094479653

`A140676(n)/A010156(n)`
-/

namespace A142883.P10703038721094479653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140676 n : ℚ) / (A010156 n : ℚ)

end

end A142883.P10703038721094479653

namespace A142883

/-- `A140676(n)/A010156(n)` -/
def P10703038721094479653.Spec : Prop :=
  ∀ n, P10703038721094479653.a n = (A142883 n : ℚ)

end A142883

/-! ## A142883.P7134106347643521494

`gcd(A140676(n), A142590(n))`
-/

namespace A142883.P7134106347643521494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A140676 n) (A142590 n)

end

end A142883.P7134106347643521494

namespace A142883

/-- `gcd(A140676(n), A142590(n))` -/
def P7134106347643521494.Spec : Prop :=
  ∀ n, (P7134106347643521494.a n : ℤ) = A142883 n

end A142883

/-! ## A142883.P10503765371502544995

`A061037(n+2)+2*A181318(n)`
-/

namespace A142883.P10503765371502544995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061037 (n + 2) + 2 * A181318 n

end

end A142883.P10503765371502544995

namespace A142883

/-- `A061037(n+2)+2*A181318(n)` -/
def P10503765371502544995.Spec : Prop :=
  ∀ n, P10503765371502544995.a n = A142883 n

end A142883

/-! ## A142883.P15134915312310658281

`2*A191567(n)-A061037(n+2)`
-/

namespace A142883.P15134915312310658281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191567 n - A061037 (n + 2)

end

end A142883.P15134915312310658281

namespace A142883

/-- `2*A191567(n)-A061037(n+2)` -/
def P15134915312310658281.Spec : Prop :=
  ∀ n, P15134915312310658281.a n = A142883 n

end A142883

/-! ## A142883.P11245519736976343514

`(A054000(n+1)+n²)/A010156(n)`
-/

namespace A142883.P11245519736976343514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054000 (n + 1) + (n ^ 2 : ℤ) : ℚ) / (A010156 n : ℚ)

end

end A142883.P11245519736976343514

namespace A142883

/-- `(A054000(n+1)+n²)/A010156(n)` -/
def P11245519736976343514.Spec : Prop :=
  ∀ n, P11245519736976343514.a n = (A142883 n : ℚ)

end A142883

/-! ## A142883.P6252812285763559379

`A191567(n)+A026741(A026741(n))²`
-/

namespace A142883.P6252812285763559379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191567 n + A026741 (A026741 n).toNat ^ 2

end

end A142883.P6252812285763559379

namespace A142883

/-- `A191567(n)+A026741(A026741(n))²` -/
def P6252812285763559379.Spec : Prop :=
  ∀ n, P6252812285763559379.a n = A142883 n

end A142883

/-! ## A142883.P11019674441929014234

`A191567(n)+(A191567(n)/A145979(n))²`
-/

namespace A142883.P11019674441929014234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191567 n : ℚ) + ((A191567 n : ℚ) / (A145979 n : ℚ)) ^ 2

end

end A142883.P11019674441929014234

namespace A142883

/-- `A191567(n)+(A191567(n)/A145979(n))²` -/
def P11019674441929014234.Spec : Prop :=
  ∀ n, P11019674441929014234.a n = (A142883 n : ℚ)

end A142883

/-! ## A142883.P4297490204988900759

`A061037(n+2)+2*A168077(A026741(n))`
-/

namespace A142883.P4297490204988900759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061037 (n + 2) + 2 * A168077 (A026741 n).toNat

end

end A142883.P4297490204988900759

namespace A142883

/-- `A061037(n+2)+2*A168077(A026741(n))` -/
def P4297490204988900759.Spec : Prop :=
  ∀ n, P4297490204988900759.a n = A142883 n

end A142883

/-! ## A142883.P17663103910306061309

`A191567(n)+A191567(n)²/A061038(n+2)`
-/

namespace A142883.P17663103910306061309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191567 n : ℚ) + (A191567 n ^ 2 : ℚ) / (A061038 (n + 2) : ℚ)

end

end A142883.P17663103910306061309

namespace A142883

/-- `A191567(n)+A191567(n)²/A061038(n+2)` -/
def P17663103910306061309.Spec : Prop :=
  ∀ n, P17663103910306061309.a n = (A142883 n : ℚ)

end A142883

/-! ## A142883.P1330719619656008495

`(A176672(n+1)-A145979(n))*A176672(n+1)`
-/

namespace A142883.P1330719619656008495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176672 (n + 1) - A145979 n) * A176672 (n + 1)

end

end A142883.P1330719619656008495

namespace A142883

/-- `(A176672(n+1)-A145979(n))*A176672(n+1)` -/
def P1330719619656008495.Spec : Prop :=
  ∀ n, P1330719619656008495.a n = A142883 n

end A142883

/-! ## A142883.P3734954381313093383

`A064038(n+1)/A060819(n+1)*A176672(n+1)`
-/

namespace A142883.P3734954381313093383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064038 (n + 1) : ℚ) / (A060819 (n + 1) : ℚ) * (A176672 (n + 1) : ℚ)

end

end A142883.P3734954381313093383

namespace A142883

/-- `A064038(n+1)/A060819(n+1)*A176672(n+1)` -/
def P3734954381313093383.Spec : Prop :=
  ∀ n, P3734954381313093383.a n = (A142883 n : ℚ)

end A142883

/-! ## A142883.P11037047751277880710

`A191567(n)+A168077(A064680(n))`
-/

namespace A142883.P11037047751277880710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191567 n + A168077 (A064680 n).toNat

end

end A142883.P11037047751277880710

namespace A142883

/-- `A191567(n)+A168077(A064680(n))` -/
def P11037047751277880710.Spec : Prop :=
  ∀ n, P11037047751277880710.a n = A142883 n

end A142883

/-! ## A142883.P16011319962281830736

`A061037(n+2)+A214392(A188167(n))*A214392(n)`
-/

namespace A142883.P16011319962281830736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061037 (n + 2) + A214392 (A188167 n).toNat * A214392 n

end

end A142883.P16011319962281830736

namespace A142883

/-- `A061037(n+2)+A214392(A188167(n))*A214392(n)` -/
def P16011319962281830736.Spec : Prop :=
  ∀ n, P16011319962281830736.a n = A142883 n

end A142883

/-! ## A142883.P5631020744654616768

`A061037(3*n+2)/3`
-/

namespace A142883.P5631020744654616768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061037 (3 * n + 2) : ℚ) / 3

end

end A142883.P5631020744654616768

namespace A142883

/-- `A061037(3*n+2)/3` -/
def P5631020744654616768.Spec : Prop :=
  ∀ n, P5631020744654616768.a n = (A142883 n : ℚ)

end A142883

/-! ## A142883.P11236967851245961832

`sqrt(A181318(n))*A060819(3*n+4)`
-/

namespace A142883.P11236967851245961832
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A181318 n : ℝ) * (A060819 (3 * n + 4) : ℝ)

end

end A142883.P11236967851245961832

namespace A142883

/-- `sqrt(A181318(n))*A060819(3*n+4)` -/
def P11236967851245961832.Spec : Prop :=
  ∀ n, P11236967851245961832.a n = (A142883 n : ℝ)

end A142883

/-! ## A142883.P3463266163195620804

`3*n*A188134(3*n+4)/12`
-/

namespace A142883.P3463266163195620804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n : ℚ) * ((A188134 (3 * n + 4) : ℚ) / 12)

end

end A142883.P3463266163195620804

namespace A142883

/-- `3*n*A188134(3*n+4)/12` -/
def P3463266163195620804.Spec : Prop :=
  ∀ n, P3463266163195620804.a n = (A142883 n : ℚ)

end A142883

/-!
# A142884: a(n) = 1 if a(n-1) is prime, else a(n) = a(n-2)+a(n-3); starting with a(0) = 0, a(1) = a(2) = 1.

The programs for A142884, there is no canonical definition to state claims against.
-/

/-! ## A142884.P14902447470408602800

`A370592(C(A246081(n+1), A138342(n+1)))`
-/

namespace A142884.P14902447470408602800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370592 (Nat.choose (A246081 (n + 1)).toNat (A138342 (n + 1)).toNat)

end

end A142884.P14902447470408602800

/-!
# A142885: Primes that appear in the sequence: a(n) = 1 if a(n-1) is prime; otherwise a(n) = a(n-1)+a(n-2), with a(1) = 1.

The programs for A142885, there is no canonical definition to state claims against.
-/

/-! ## A142885.P334766313981685877

`A142878(lt[A142878(n+1), A142878(n)])`
-/

namespace A142885.P334766313981685877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142878 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A142885.P334766313981685877

/-! ## A142885.P17384027863211512596

`p?[A142878(n)]`
-/

namespace A142885.P17384027863211512596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142885.P17384027863211512596

/-! ## A142885.P13326804356518601044

`record[A020639(A142878(n+3))]`
-/

namespace A142885.P13326804356518601044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A142878 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142885.P13326804356518601044

/-! ## A142885.P12998592310176787727

`filter[A142878(n+1), A010051(#)]`
-/

namespace A142885.P12998592310176787727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A142885.P12998592310176787727

/-! ## A142885.P11765503311448386100

`filter[A142878(n+1), A327861(#)]`
-/

namespace A142885.P11765503311448386100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A142885.P11765503311448386100

/-!
# A142886: Number of polyominoes with n cells that have the symmetry group D_8.

The programs for A142886, there is no canonical definition to state claims against.
-/

/-! ## A142886.P16569155580712367564

`A180160(A347811(n))+A137676(n)`
-/

namespace A142886.P16569155580712367564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 (A347811 n).toNat + A137676 n

end

end A142886.P16569155580712367564

/-! ## A142886.P4471712271594617832

`A137676(n)+A004111(A283666(n+1))`
-/

namespace A142886.P4471712271594617832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137676 n + A004111 (A283666 (n + 1)).toNat

end

end A142886.P4471712271594617832

/-! ## A142886.P1353076146190797320

`A249615(A283666(n+1)²)+A137676(n)`
-/

namespace A142886.P1353076146190797320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249615 (A283666 (n + 1) ^ 2).toNat + A137676 n

end

end A142886.P1353076146190797320

/-! ## A142886.P16343672351087400032

`A147968(A283666(n+1))+A137676(A028310(n))`
-/

namespace A142886.P16343672351087400032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147968 (A283666 (n + 1)).toNat + A137676 (A028310 n).toNat

end

end A142886.P16343672351087400032

/-! ## A142886.P16813945403594136557

`A249615(A075866(n))`
-/

namespace A142886.P16813945403594136557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249615 (A075866 n).toNat

end

end A142886.P16813945403594136557

/-!
# A142888: First differences of A142705.

The programs for A142888, the canonical program `A142888.P1802572120345251366` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142888 has offset 1).

The definition of A142888 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A142888.P9464464639810065283

`(5+3*(-1)^(n+1)+(10-6*(-1)^(n+1))*(n+1)-6*(-1)^(n+1)*(n+1)²)/8`
-/

namespace A142888.P9464464639810065283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 + 3 * (-1) ^ (n + 1) + (10 - 6 * (-1) ^ (n + 1)) * (n + 1 : ℤ) - 6 * (-1) ^ (n + 1) * ((n + 1) ^ 2 : ℤ) : ℚ) / 8

end

end A142888.P9464464639810065283

namespace A142888

/-- `(5+3*(-1)^(n+1)+(10-6*(-1)^(n+1))*(n+1)-6*(-1)^(n+1)*(n+1)²)/8` -/
def P9464464639810065283.Spec : Prop :=
  ∀ n, P9464464639810065283.a n = (A142888 (n + 1) : ℚ)

end A142888

/-! ## A142888.P1802572120345251366

`A142705(n+2)-A142705(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A142888

/-- `A142705(n+2)-A142705(n+1)` -/
def P1802572120345251366.Spec : Prop :=
  ∀ n, P1802572120345251366.a n = A142888 (n + 1)

theorem P1802572120345251366.correct : P1802572120345251366.Spec := by
  intro n
  simp only [A142888, Nat.add_sub_cancel]

end A142888

/-! ## A142888.P7740257490408234909

`Δ[lcm(4, n*(n+2))/4]`
-/

namespace A142888.P7740257490408234909
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (n * (n + 2)) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A142888.P7740257490408234909

namespace A142888

/-- `Δ[lcm(4, n*(n+2))/4]` -/
def P7740257490408234909.Spec : Prop :=
  ∀ n, P7740257490408234909.a n = (A142888 (n + 1) : ℚ)

end A142888

/-! ## A142888.P8002275394902611805

`Δ[(n+2)*n/gcd(2, n)²]`
-/

namespace A142888.P8002275394902611805
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((n : ℚ) / (Nat.gcd 2 n ^ 2 : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A142888.P8002275394902611805

namespace A142888

/-- `Δ[(n+2)*n/gcd(2, n)²]` -/
def P8002275394902611805.Spec : Prop :=
  ∀ n, P8002275394902611805.a n = (A142888 (n + 1) : ℚ)

end A142888

/-! ## A142888.P9911282739476747031

`lcm(n+1, gcd(4, 2*n))-a(n-1)` with `a(0)=3`
-/

namespace A142888.P9911282739476747031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (Nat.lcm (n + 1) (Nat.gcd 4 (2 * n)) : ℤ) - a (n - 1)

end

end A142888.P9911282739476747031

namespace A142888

/-- `lcm(n+1, gcd(4, 2*n))-a(n-1)` -/
def P9911282739476747031.Spec : Prop :=
  ∀ n, P9911282739476747031.a n = A142888 (n + 1)

end A142888

/-! ## A142888.P4900525858455843253

`(n+1)*4^((n+1)%2)-a(n-1)` with `a(0)=3`
-/

namespace A142888.P4900525858455843253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ((n + 1) * 4 ^ ((n + 1) % 2) : ℤ) - a (n - 1)

end

end A142888.P4900525858455843253

namespace A142888

/-- `(n+1)*4^((n+1)%2)-a(n-1)` -/
def P4900525858455843253.Spec : Prop :=
  ∀ n, P4900525858455843253.a n = A142888 (n + 1)

end A142888

/-! ## A142888.P18380544112101667668

`Δ[A142705(n+1)]`
-/

namespace A142888.P18380544112101667668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A142888.P18380544112101667668

namespace A142888

/-- `Δ[A142705(n+1)]` -/
def P18380544112101667668.Spec : Prop :=
  ∀ n, P18380544112101667668.a n = A142888 (n + 1)

theorem P18380544112101667668.correct : P18380544112101667668.Spec := by
  intro n
  simp only [A142888, Nat.add_sub_cancel, A142888.P18380544112101667668.f1, A142888.P18380544112101667668.a, A142888.P1802572120345251366.a, SequenceMachineLib.memo_apply]

end A142888

/-! ## A142888.P960464587302485950

`Δ[gcd(A005563(n), A033487(n))]`
-/

namespace A142888.P960464587302485950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005563 n) (A033487 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A142888.P960464587302485950

namespace A142888

/-- `Δ[gcd(A005563(n), A033487(n))]` -/
def P960464587302485950.Spec : Prop :=
  ∀ n, P960464587302485950.a n = A142888 (n + 1)

end A142888

/-! ## A142888.P11369385407430301852

`Δ[A004652(n+1)*A010685(n)]`
-/

namespace A142888.P11369385407430301852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (n + 1) * A010685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A142888.P11369385407430301852

namespace A142888

/-- `Δ[A004652(n+1)*A010685(n)]` -/
def P11369385407430301852.Spec : Prop :=
  ∀ n, P11369385407430301852.a n = A142888 (n + 1)

end A142888

/-! ## A142888.P11078996262302354223

`Δ[∑[n]*ratio[gcd(n+1, ∑[n])]]`
-/

namespace A142888.P11078996262302354223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f4 j)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) * ((f3 (n + 1) : ℚ) / (f3 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A142888.P11078996262302354223

namespace A142888

/-- `Δ[∑[n]*ratio[gcd(n+1, ∑[n])]]` -/
def P11078996262302354223.Spec : Prop :=
  ∀ n, P11078996262302354223.a n = (A142888 (n + 1) : ℚ)

end A142888

/-! ## A142888.P4015431340657107219

`Δ[A026741(n+2)*A026741(n)]`
-/

namespace A142888.P4015431340657107219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 2) * A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A142888.P4015431340657107219

namespace A142888

/-- `Δ[A026741(n+2)*A026741(n)]` -/
def P4015431340657107219.Spec : Prop :=
  ∀ n, P4015431340657107219.a n = A142888 (n + 1)

end A142888

/-! ## A142888.P15966561540144926304

`Δ[A176447(n+2)*A176447(n)]`
-/

namespace A142888.P15966561540144926304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176447 (n + 2) * A176447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A142888.P15966561540144926304

namespace A142888

/-- `Δ[A176447(n+2)*A176447(n)]` -/
def P15966561540144926304.Spec : Prop :=
  ∀ n, P15966561540144926304.a n = A142888 (n + 1)

end A142888

/-! ## A142888.P3102554685530243014

`Δ[A129647(A022998(n+1))]`
-/

namespace A142888.P3102554685530243014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129647 (A022998 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A142888.P3102554685530243014

namespace A142888

/-- `Δ[A129647(A022998(n+1))]` -/
def P3102554685530243014.Spec : Prop :=
  ∀ n, P3102554685530243014.a n = A142888 (n + 1)

end A142888

/-! ## A142888.P9221437535106809043

`A004277(A064680(n+1))-a(n-1)` with `a(0)=3`
-/

namespace A142888.P9221437535106809043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A004277 (A064680 (n + 1)).toNat - a (n - 1)

end

end A142888.P9221437535106809043

namespace A142888

/-- `A004277(A064680(n+1))-a(n-1)` -/
def P9221437535106809043.Spec : Prop :=
  ∀ n, P9221437535106809043.a n = A142888 (n + 1)

end A142888

/-! ## A142888.P10559398046258186670

`A070262(2*(n+1))-A061037(2*(n+1))`
-/

namespace A142888.P10559398046258186670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070262 (2 * (n + 1)) - A061037 (2 * (n + 1))

end

end A142888.P10559398046258186670

namespace A142888

/-- `A070262(2*(n+1))-A061037(2*(n+1))` -/
def P10559398046258186670.Spec : Prop :=
  ∀ n, P10559398046258186670.a n = A142888 (n + 1)

end A142888

/-! ## A142888.P12139587176791104979

`Δ[A061037(2*(n+1))]`
-/

namespace A142888.P12139587176791104979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061037 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A142888.P12139587176791104979

namespace A142888

/-- `Δ[A061037(2*(n+1))]` -/
def P12139587176791104979.Spec : Prop :=
  ∀ n, P12139587176791104979.a n = A142888 (n + 1)

end A142888

/-! ## A142888.P1313188777431349840

`Δ[sqrt(A181763(2*(n+1)))]`
-/

namespace A142888.P1313188777431349840
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A181763 (2 * (n + 1)) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A142888.P1313188777431349840

namespace A142888

/-- `Δ[sqrt(A181763(2*(n+1)))]` -/
def P1313188777431349840.Spec : Prop :=
  ∀ n, P1313188777431349840.a n = (A142888 (n + 1) : ℝ)

end A142888

/-! ## A142888.P3993045304792889550

`Δ[A129647(A145979(2*n))]`
-/

namespace A142888.P3993045304792889550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129647 (A145979 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A142888.P3993045304792889550

namespace A142888

/-- `Δ[A129647(A145979(2*n))]` -/
def P3993045304792889550.Spec : Prop :=
  ∀ n, P3993045304792889550.a n = A142888 (n + 1)

end A142888

/-! ## A142888.P1804729571704945182

`Δ[A188134(2*n)+A181318(2*n)]`
-/

namespace A142888.P1804729571704945182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (2 * n) + A181318 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A142888.P1804729571704945182

namespace A142888

/-- `Δ[A188134(2*n)+A181318(2*n)]` -/
def P1804729571704945182.Spec : Prop :=
  ∀ n, P1804729571704945182.a n = A142888 (n + 1)

end A142888

/-! ## A142888.P7543491012642860144

`Δ[A214630(2*(n+1))]`
-/

namespace A142888.P7543491012642860144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214630 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A142888.P7543491012642860144

namespace A142888

/-- `Δ[A214630(2*(n+1))]` -/
def P7543491012642860144.Spec : Prop :=
  ∀ n, P7543491012642860144.a n = A142888 (n + 1)

end A142888

/-!
# A142889: Primes congruent to 1 mod 63.

The programs for A142889, the canonical program `A142889.P7376232517788267466` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142889 has offset 1).

The definition of A142889 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2190 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142889.P7376232517788267466

`p?[63*n+1]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142889

/-- `p?[63*n+1]` -/
def P7376232517788267466.Spec : Prop :=
  ∀ n, (P7376232517788267466.a n : ℤ) = A142889 (n + 1)

theorem P7376232517788267466.correct : P7376232517788267466.Spec := by
  intro n
  simp only [A142889, Nat.add_sub_cancel]

end A142889

/-! ## A142889.P8309862573262895254

`∏{p}[p?[1-63*(1-n)], #]`
-/

namespace A142889.P8309862573262895254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 63 * (1 - (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142889.P8309862573262895254

namespace A142889

/-- `∏{p}[p?[1-63*(1-n)], #]` -/
def P8309862573262895254.Spec : Prop :=
  ∀ n, (P8309862573262895254.a n : ℤ) = A142889 (n + 1)

end A142889

/-! ## A142889.P11758293688444372440

`∩[A045465(n+1), A061237(n+1)]`
-/

namespace A142889.P11758293688444372440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142889.P11758293688444372440

namespace A142889

/-- `∩[A045465(n+1), A061237(n+1)]` -/
def P11758293688444372440.Spec : Prop :=
  ∀ n, (P11758293688444372440.a n : ℤ) = A142889 (n + 1)

end A142889

/-! ## A142889.P10874682559772216017

`∩[A061237(n+1), A124826(n+1)]`
-/

namespace A142889.P10874682559772216017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142889.P10874682559772216017

namespace A142889

/-- `∩[A061237(n+1), A124826(n+1)]` -/
def P10874682559772216017.Spec : Prop :=
  ∀ n, (P10874682559772216017.a n : ℤ) = A142889 (n + 1)

end A142889

/-! ## A142889.P7870318085057805056

`∩[A061237(n+1), A140444(n+1)]`
-/

namespace A142889.P7870318085057805056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142889.P7870318085057805056

namespace A142889

/-- `∩[A061237(n+1), A140444(n+1)]` -/
def P7870318085057805056.Spec : Prop :=
  ∀ n, (P7870318085057805056.a n : ℤ) = A142889 (n + 1)

end A142889

/-! ## A142889.P11772602616258167953

`∩[A004619(n+1), A061237(n+1)]`
-/

namespace A142889.P11772602616258167953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142889.P11772602616258167953

namespace A142889

/-- `∩[A004619(n+1), A061237(n+1)]` -/
def P11772602616258167953.Spec : Prop :=
  ∀ n, (P11772602616258167953.a n : ℤ) = A142889 (n + 1)

end A142889

/-! ## A142889.P15794400572875248080

`∩[A124826(n+1), A129805(n+1)]`
-/

namespace A142889.P15794400572875248080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142889.P15794400572875248080

namespace A142889

/-- `∩[A124826(n+1), A129805(n+1)]` -/
def P15794400572875248080.Spec : Prop :=
  ∀ n, (P15794400572875248080.a n : ℤ) = A142889 (n + 1)

end A142889

/-! ## A142889.P3314591104593076328

`∩[A045465(n+1), A301617(n+1)]`
-/

namespace A142889.P3314591104593076328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142889.P3314591104593076328

namespace A142889

/-- `∩[A045465(n+1), A301617(n+1)]` -/
def P3314591104593076328.Spec : Prop :=
  ∀ n, (P3314591104593076328.a n : ℤ) = A142889 (n + 1)

end A142889

/-! ## A142889.P14153783629972190948

`∩[A124826(n+1), A301617(n+1)]`
-/

namespace A142889.P14153783629972190948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142889.P14153783629972190948

namespace A142889

/-- `∩[A124826(n+1), A301617(n+1)]` -/
def P14153783629972190948.Spec : Prop :=
  ∀ n, (P14153783629972190948.a n : ℤ) = A142889 (n + 1)

end A142889

/-! ## A142889.P4587273518734241990

`∩[A140444(n+1), A301617(n+1)]`
-/

namespace A142889.P4587273518734241990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142889.P4587273518734241990

namespace A142889

/-- `∩[A140444(n+1), A301617(n+1)]` -/
def P4587273518734241990.Spec : Prop :=
  ∀ n, (P4587273518734241990.a n : ℤ) = A142889 (n + 1)

end A142889

/-! ## A142889.P12304577818055436593

`or(1, p?[A215146(3*n)])`
-/

namespace A142889.P12304577818055436593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215146 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142889.P12304577818055436593

namespace A142889

/-- `or(1, p?[A215146(3*n)])` -/
def P12304577818055436593.Spec : Prop :=
  ∀ n, P12304577818055436593.a n = A142889 (n + 1)

end A142889

/-! ## A142889.P14531583900593998126

`∩[A061237(n+1), A215146(n)]`
-/

namespace A142889.P14531583900593998126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215146 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142889.P14531583900593998126

namespace A142889

/-- `∩[A061237(n+1), A215146(n)]` -/
def P14531583900593998126.Spec : Prop :=
  ∀ n, (P14531583900593998126.a n : ℤ) = A142889 (n + 1)

end A142889

/-! ## A142889.P4178086174568028292

`∩[A129805(n+1), A215146(n)]`
-/

namespace A142889.P4178086174568028292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215146 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142889.P4178086174568028292

namespace A142889

/-- `∩[A129805(n+1), A215146(n)]` -/
def P4178086174568028292.Spec : Prop :=
  ∀ n, (P4178086174568028292.a n : ℤ) = A142889 (n + 1)

end A142889

/-! ## A142889.P13424248854795754637

`∩[A045465(n+1), A161705(n)]`
-/

namespace A142889.P13424248854795754637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142889.P13424248854795754637

namespace A142889

/-- `∩[A045465(n+1), A161705(n)]` -/
def P13424248854795754637.Spec : Prop :=
  ∀ n, (P13424248854795754637.a n : ℤ) = A142889 (n + 1)

end A142889

/-! ## A142889.P9478458209921008329

`∩[A124826(n+1), A161705(n)]`
-/

namespace A142889.P9478458209921008329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142889.P9478458209921008329

namespace A142889

/-- `∩[A124826(n+1), A161705(n)]` -/
def P9478458209921008329.Spec : Prop :=
  ∀ n, (P9478458209921008329.a n : ℤ) = A142889 (n + 1)

end A142889

/-! ## A142889.P4492117783028955260

`∩[A140444(n+1), A161705(n)]`
-/

namespace A142889.P4492117783028955260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142889.P4492117783028955260

namespace A142889

/-- `∩[A140444(n+1), A161705(n)]` -/
def P4492117783028955260.Spec : Prop :=
  ∀ n, (P4492117783028955260.a n : ℤ) = A142889 (n + 1)

end A142889

/-! ## A142889.P8624383792798561196

`∩[A045465(n+1), A239129(n+1)+2]`
-/

namespace A142889.P8624383792798561196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142889.P8624383792798561196

namespace A142889

/-- `∩[A045465(n+1), A239129(n+1)+2]` -/
def P8624383792798561196.Spec : Prop :=
  ∀ n, (P8624383792798561196.a n : ℤ) = A142889 (n + 1)

end A142889

/-! ## A142889.P4757307627550644413

`∩[A140444(n+1), A239129(n+1)+2]`
-/

namespace A142889.P4757307627550644413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142889.P4757307627550644413

namespace A142889

/-- `∩[A140444(n+1), A239129(n+1)+2]` -/
def P4757307627550644413.Spec : Prop :=
  ∀ n, (P4757307627550644413.a n : ℤ) = A142889 (n + 1)

end A142889

/-! ## A142889.P12163546703328941832

`∩[A061237(n+1), A131877(n)]`
-/

namespace A142889.P12163546703328941832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142889.P12163546703328941832

namespace A142889

/-- `∩[A061237(n+1), A131877(n)]` -/
def P12163546703328941832.Spec : Prop :=
  ∀ n, (P12163546703328941832.a n : ℤ) = A142889 (n + 1)

end A142889

/-! ## A142889.P14576363951888111176

`filter[A215146(3*n), A010051(#)]`
-/

namespace A142889.P14576363951888111176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215146 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A142889.P14576363951888111176

namespace A142889

/-- `filter[A215146(3*n), A010051(#)]` -/
def P14576363951888111176.Spec : Prop :=
  ∀ n, P14576363951888111176.a n = A142889 (n + 1)

end A142889

/-!
# A142890: Primes congruent to 2 mod 63.

The programs for A142890, the canonical program `A142890.P9846475722823215660` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142890 has offset 1).

The definition of A142890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2203 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142890.P9846475722823215660

`p?[63*n+2]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142890

/-- `p?[63*n+2]` -/
def P9846475722823215660.Spec : Prop :=
  ∀ n, (P9846475722823215660.a n : ℤ) = A142890 (n + 1)

theorem P9846475722823215660.correct : P9846475722823215660.Spec := by
  intro n
  simp only [A142890, Nat.add_sub_cancel]

end A142890

/-! ## A142890.P12941203696956290683

`∏{p}[p?[2-63*(1-n)], #]`
-/

namespace A142890.P12941203696956290683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - 63 * (1 - (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142890.P12941203696956290683

namespace A142890

/-- `∏{p}[p?[2-63*(1-n)], #]` -/
def P12941203696956290683.Spec : Prop :=
  ∀ n, (P12941203696956290683.a n : ℤ) = A142890 (n + 1)

end A142890

/-! ## A142890.P13325059020174628771

`lcm((-1)^n, p?[2-63*(1-n)])`
-/

namespace A142890.P13325059020174628771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - 63 * (1 - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142890.P13325059020174628771

namespace A142890

/-- `lcm((-1)^n, p?[2-63*(1-n)])` -/
def P13325059020174628771.Spec : Prop :=
  ∀ n, (P13325059020174628771.a n : ℤ) = A142890 (n + 1)

end A142890

/-! ## A142890.P15454792675198530629

`∩[A045383(n+1), A061238(n+1)]`
-/

namespace A142890.P15454792675198530629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142890.P15454792675198530629

namespace A142890

/-- `∩[A045383(n+1), A061238(n+1)]` -/
def P15454792675198530629.Spec : Prop :=
  ∀ n, (P15454792675198530629.a n : ℤ) = A142890 (n + 1)

end A142890

/-! ## A142890.P14338535958747446828

`∩[A045392(n+1), A061238(n+1)]`
-/

namespace A142890.P14338535958747446828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142890.P14338535958747446828

namespace A142890

/-- `∩[A045392(n+1), A061238(n+1)]` -/
def P14338535958747446828.Spec : Prop :=
  ∀ n, (P14338535958747446828.a n : ℤ) = A142890 (n + 1)

end A142890

/-! ## A142890.P8666259119808257173

`∩[A061238(n+1), A141888(n+1)]`
-/

namespace A142890.P8666259119808257173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142890.P8666259119808257173

namespace A142890

/-- `∩[A061238(n+1), A141888(n+1)]` -/
def P8666259119808257173.Spec : Prop :=
  ∀ n, (P8666259119808257173.a n : ℤ) = A142890 (n + 1)

end A142890

/-! ## A142890.P11231733987428743921

`∩[A004620(n+1), A061238(n+1)]`
-/

namespace A142890.P11231733987428743921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142890.P11231733987428743921

namespace A142890

/-- `∩[A004620(n+1), A061238(n+1)]` -/
def P11231733987428743921.Spec : Prop :=
  ∀ n, (P11231733987428743921.a n : ℤ) = A142890 (n + 1)

end A142890

/-! ## A142890.P14990478196877179704

`∩[A045383(n+1), A076206(n+1)]`
-/

namespace A142890.P14990478196877179704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142890.P14990478196877179704

namespace A142890

/-- `∩[A045383(n+1), A076206(n+1)]` -/
def P14990478196877179704.Spec : Prop :=
  ∀ n, (P14990478196877179704.a n : ℤ) = A142890 (n + 1)

end A142890

/-! ## A142890.P3506642743147631592

`∩[A045392(n+1), A076206(n+1)]`
-/

namespace A142890.P3506642743147631592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142890.P3506642743147631592

namespace A142890

/-- `∩[A045392(n+1), A076206(n+1)]` -/
def P3506642743147631592.Spec : Prop :=
  ∀ n, (P3506642743147631592.a n : ℤ) = A142890 (n + 1)

end A142890

/-! ## A142890.P6962908765320516272

`∩[A076206(n+1), A141888(n+1)]`
-/

namespace A142890.P6962908765320516272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142890.P6962908765320516272

namespace A142890

/-- `∩[A076206(n+1), A141888(n+1)]` -/
def P6962908765320516272.Spec : Prop :=
  ∀ n, (P6962908765320516272.a n : ℤ) = A142890 (n + 1)

end A142890

/-! ## A142890.P10324248849121589402

`record[A006530(A152691(n+2)-n)]`
-/

namespace A142890.P10324248849121589402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A152691 (n + 2) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142890.P10324248849121589402

namespace A142890

/-- `record[A006530(A152691(n+2)-n)]` -/
def P10324248849121589402.Spec : Prop :=
  ∀ n, P10324248849121589402.a n = A142890 (n + 1)

end A142890

/-! ## A142890.P13373425353317456164

`∩[A045383(n+1), A017185(n)]`
-/

namespace A142890.P13373425353317456164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142890.P13373425353317456164

namespace A142890

/-- `∩[A045383(n+1), A017185(n)]` -/
def P13373425353317456164.Spec : Prop :=
  ∀ n, (P13373425353317456164.a n : ℤ) = A142890 (n + 1)

end A142890

/-! ## A142890.P12782400662562578001

`∩[A045392(n+1), A017185(n)]`
-/

namespace A142890.P12782400662562578001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142890.P12782400662562578001

namespace A142890

/-- `∩[A045392(n+1), A017185(n)]` -/
def P12782400662562578001.Spec : Prop :=
  ∀ n, (P12782400662562578001.a n : ℤ) = A142890 (n + 1)

end A142890

/-! ## A142890.P3134797714259322266

`∩[A141888(n+1), A017185(n)]`
-/

namespace A142890.P3134797714259322266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142890.P3134797714259322266

namespace A142890

/-- `∩[A141888(n+1), A017185(n)]` -/
def P3134797714259322266.Spec : Prop :=
  ∀ n, (P3134797714259322266.a n : ℤ) = A142890 (n + 1)

end A142890

/-! ## A142890.P5909299952857915261

`or(p?[A017005(9*n)], char[1])`
-/

namespace A142890.P5909299952857915261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 (9 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A142890.P5909299952857915261

namespace A142890

/-- `or(p?[A017005(9*n)], char[1])` -/
def P5909299952857915261.Spec : Prop :=
  ∀ n, P5909299952857915261.a n = A142890 (n + 1)

end A142890

/-! ## A142890.P8238434173714366370

`A007913(p?[A017005(9*n)])`
-/

namespace A142890.P8238434173714366370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 (9 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142890.P8238434173714366370

namespace A142890

/-- `A007913(p?[A017005(9*n)])` -/
def P8238434173714366370.Spec : Prop :=
  ∀ n, P8238434173714366370.a n = A142890 (n + 1)

end A142890

/-! ## A142890.P14451983461615879349

`∩[A061238(n+1), A017005(n)]`
-/

namespace A142890.P14451983461615879349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142890.P14451983461615879349

namespace A142890

/-- `∩[A061238(n+1), A017005(n)]` -/
def P14451983461615879349.Spec : Prop :=
  ∀ n, (P14451983461615879349.a n : ℤ) = A142890 (n + 1)

end A142890

/-! ## A142890.P4638264154929678380

`∩[A061238(n+1), A016993(n)+1]`
-/

namespace A142890.P4638264154929678380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142890.P4638264154929678380

namespace A142890

/-- `∩[A061238(n+1), A016993(n)+1]` -/
def P4638264154929678380.Spec : Prop :=
  ∀ n, (P4638264154929678380.a n : ℤ) = A142890 (n + 1)

end A142890

/-! ## A142890.P12703942667561661560

`∩[A061238(n+1), A017029(n)-2]`
-/

namespace A142890.P12703942667561661560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142890.P12703942667561661560

namespace A142890

/-- `∩[A061238(n+1), A017029(n)-2]` -/
def P12703942667561661560.Spec : Prop :=
  ∀ n, (P12703942667561661560.a n : ℤ) = A142890 (n + 1)

end A142890

/-! ## A142890.P11026979356932457031

`∩[A045383(n+1), A193910(n+1)]`
-/

namespace A142890.P11026979356932457031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142890.P11026979356932457031

namespace A142890

/-- `∩[A045383(n+1), A193910(n+1)]` -/
def P11026979356932457031.Spec : Prop :=
  ∀ n, (P11026979356932457031.a n : ℤ) = A142890 (n + 1)

end A142890

/-!
# A142891: Primes congruent to 4 mod 63.

The programs for A142891, the canonical program `A142891.P14977050463523529214` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142891 has offset 1).

The definition of A142891 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142891.P14977050463523529214

`p?[63*n+4]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142891

/-- `p?[63*n+4]` -/
def P14977050463523529214.Spec : Prop :=
  ∀ n, (P14977050463523529214.a n : ℤ) = A142891 (n + 1)

theorem P14977050463523529214.correct : P14977050463523529214.Spec := by
  intro n
  simp only [A142891, Nat.add_sub_cancel]

end A142891

/-! ## A142891.P2494175231248801715

`∩[A061239(n+1), A141889(n+1)]`
-/

namespace A142891.P2494175231248801715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142891.P2494175231248801715

namespace A142891

/-- `∩[A061239(n+1), A141889(n+1)]` -/
def P2494175231248801715.Spec : Prop :=
  ∀ n, (P2494175231248801715.a n : ℤ) = A142891 (n + 1)

end A142891

/-! ## A142891.P7329177547091909940

`∩[A045471(n+1), A061239(n+1)]`
-/

namespace A142891.P7329177547091909940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142891.P7329177547091909940

namespace A142891

/-- `∩[A045471(n+1), A061239(n+1)]` -/
def P7329177547091909940.Spec : Prop :=
  ∀ n, (P7329177547091909940.a n : ℤ) = A142891 (n + 1)

end A142891

/-! ## A142891.P3920116486147207543

`∩[A045462(n+1), A061239(n+1)]`
-/

namespace A142891.P3920116486147207543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142891.P3920116486147207543

namespace A142891

/-- `∩[A045462(n+1), A061239(n+1)]` -/
def P3920116486147207543.Spec : Prop :=
  ∀ n, (P3920116486147207543.a n : ℤ) = A142891 (n + 1)

end A142891

/-! ## A142891.P3500310798766398894

`∩[A004622(n+1), A061239(n+1)]`
-/

namespace A142891.P3500310798766398894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142891.P3500310798766398894

namespace A142891

/-- `∩[A004622(n+1), A061239(n+1)]` -/
def P3500310798766398894.Spec : Prop :=
  ∀ n, (P3500310798766398894.a n : ℤ) = A142891 (n + 1)

end A142891

/-! ## A142891.P2221343211430786525

`∩[A129806(n+1), A141889(n+1)]`
-/

namespace A142891.P2221343211430786525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142891.P2221343211430786525

namespace A142891

/-- `∩[A129806(n+1), A141889(n+1)]` -/
def P2221343211430786525.Spec : Prop :=
  ∀ n, (P2221343211430786525.a n : ℤ) = A142891 (n + 1)

end A142891

/-! ## A142891.P15271581564290855847

`∩[A045462(n+1), A301622(n+1)]`
-/

namespace A142891.P15271581564290855847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142891.P15271581564290855847

namespace A142891

/-- `∩[A045462(n+1), A301622(n+1)]` -/
def P15271581564290855847.Spec : Prop :=
  ∀ n, (P15271581564290855847.a n : ℤ) = A142891 (n + 1)

end A142891

/-! ## A142891.P9072369418928372391

`∩[A045471(n+1), A301622(n+1)]`
-/

namespace A142891.P9072369418928372391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142891.P9072369418928372391

namespace A142891

/-- `∩[A045471(n+1), A301622(n+1)]` -/
def P9072369418928372391.Spec : Prop :=
  ∀ n, (P9072369418928372391.a n : ℤ) = A142891 (n + 1)

end A142891

/-! ## A142891.P2917919513401568299

`∩[A141889(n+1), A301622(n+1)]`
-/

namespace A142891.P2917919513401568299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142891.P2917919513401568299

namespace A142891

/-- `∩[A141889(n+1), A301622(n+1)]` -/
def P2917919513401568299.Spec : Prop :=
  ∀ n, (P2917919513401568299.a n : ℤ) = A142891 (n + 1)

end A142891

/-! ## A142891.P17543242966337498278

`∩[A079132(n+1), A141889(n+1)]`
-/

namespace A142891.P17543242966337498278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142891.P17543242966337498278

namespace A142891

/-- `∩[A079132(n+1), A141889(n+1)]` -/
def P17543242966337498278.Spec : Prop :=
  ∀ n, (P17543242966337498278.a n : ℤ) = A142891 (n + 1)

end A142891

/-! ## A142891.P7859166646439075583

`∩[A045462(n+1), A063305(n+2)]`
-/

namespace A142891.P7859166646439075583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142891.P7859166646439075583

namespace A142891

/-- `∩[A045462(n+1), A063305(n+2)]` -/
def P7859166646439075583.Spec : Prop :=
  ∀ n, (P7859166646439075583.a n : ℤ) = A142891 (n + 1)

end A142891

/-! ## A142891.P15743075199905559432

`∩[A045471(n+1), A063305(n+2)]`
-/

namespace A142891.P15743075199905559432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142891.P15743075199905559432

namespace A142891

/-- `∩[A045471(n+1), A063305(n+2)]` -/
def P15743075199905559432.Spec : Prop :=
  ∀ n, (P15743075199905559432.a n : ℤ) = A142891 (n + 1)

end A142891

/-! ## A142891.P17745087358643884647

`∩[A141889(n+1), A063305(n+2)]`
-/

namespace A142891.P17745087358643884647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142891.P17745087358643884647

namespace A142891

/-- `∩[A141889(n+1), A063305(n+2)]` -/
def P17745087358643884647.Spec : Prop :=
  ∀ n, (P17745087358643884647.a n : ℤ) = A142891 (n + 1)

end A142891

/-! ## A142891.P3604489892846889983

`∩[A061239(n+1), A358053(n+1)-2]`
-/

namespace A142891.P3604489892846889983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358053 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142891.P3604489892846889983

namespace A142891

/-- `∩[A061239(n+1), A358053(n+1)-2]` -/
def P3604489892846889983.Spec : Prop :=
  ∀ n, (P3604489892846889983.a n : ℤ) = A142891 (n + 1)

end A142891

/-! ## A142891.P14990945982637150866

`record[A006530(63*(n+1)+4)]`
-/

namespace A142891.P14990945982637150866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (63 * (n + 1) + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142891.P14990945982637150866

namespace A142891

/-- `record[A006530(63*(n+1)+4)]` -/
def P14990945982637150866.Spec : Prop :=
  ∀ n, P14990945982637150866.a n = A142891 (n + 1)

end A142891

/-! ## A142891.P18096505231163611609

`record[A020639(63*(n+1)+4)]`
-/

namespace A142891.P18096505231163611609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (63 * (n + 1) + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142891.P18096505231163611609

namespace A142891

/-- `record[A020639(63*(n+1)+4)]` -/
def P18096505231163611609.Spec : Prop :=
  ∀ n, P18096505231163611609.a n = A142891 (n + 1)

end A142891

/-! ## A142891.P14438518921136091203

`A007947(p?[A139264(n+1)-A017017(n)])`
-/

namespace A142891.P14438518921136091203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139264 (n + 1) - A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142891.P14438518921136091203

namespace A142891

/-- `A007947(p?[A139264(n+1)-A017017(n)])` -/
def P14438518921136091203.Spec : Prop :=
  ∀ n, P14438518921136091203.a n = A142891 (n + 1)

end A142891

/-! ## A142891.P6485824082211804413

`∑{p}[p?[A017209(7*n)], #]`
-/

namespace A142891.P6485824082211804413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 (7 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142891.P6485824082211804413

namespace A142891

/-- `∑{p}[p?[A017209(7*n)], #]` -/
def P6485824082211804413.Spec : Prop :=
  ∀ n, (P6485824082211804413.a n : ℤ) = A142891 (n + 1)

end A142891

/-! ## A142891.P17558495409477185661

`∩[A045462(n+1), A017209(n)]`
-/

namespace A142891.P17558495409477185661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142891.P17558495409477185661

namespace A142891

/-- `∩[A045462(n+1), A017209(n)]` -/
def P17558495409477185661.Spec : Prop :=
  ∀ n, (P17558495409477185661.a n : ℤ) = A142891 (n + 1)

end A142891

/-! ## A142891.P227721830308699620

`∩[A045471(n+1), A017209(n)]`
-/

namespace A142891.P227721830308699620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142891.P227721830308699620

namespace A142891

/-- `∩[A045471(n+1), A017209(n)]` -/
def P227721830308699620.Spec : Prop :=
  ∀ n, (P227721830308699620.a n : ℤ) = A142891 (n + 1)

end A142891

/-!
# A142892: Primes congruent to 5 mod 63.

The programs for A142892, the canonical program `A142892.P9881392065937177943` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142892 has offset 1).

The definition of A142892 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2177 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142892.P9881392065937177943

`p?[63*n+5]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142892

/-- `p?[63*n+5]` -/
def P9881392065937177943.Spec : Prop :=
  ∀ n, (P9881392065937177943.a n : ℤ) = A142892 (n + 1)

theorem P9881392065937177943.correct : P9881392065937177943.Spec := by
  intro n
  simp only [A142892, Nat.add_sub_cancel]

end A142892

/-! ## A142892.P6866900111150619006

`or(1, p?[or(5, 64*n)-n])`
-/

namespace A142892.P6866900111150619006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 5 (64 * n) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142892.P6866900111150619006

namespace A142892

/-- `or(1, p?[or(5, 64*n)-n])` -/
def P6866900111150619006.Spec : Prop :=
  ∀ n, P6866900111150619006.a n = A142892 (n + 1)

end A142892

/-! ## A142892.P9051116918477696088

`∩[A045447(n+1), A061240(n+1)]`
-/

namespace A142892.P9051116918477696088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142892.P9051116918477696088

namespace A142892

/-- `∩[A045447(n+1), A061240(n+1)]` -/
def P9051116918477696088.Spec : Prop :=
  ∀ n, (P9051116918477696088.a n : ℤ) = A142892 (n + 1)

end A142892

/-! ## A142892.P6516489533071698449

`∩[A045458(n+1), A061240(n+1)]`
-/

namespace A142892.P6516489533071698449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142892.P6516489533071698449

namespace A142892

/-- `∩[A045458(n+1), A061240(n+1)]` -/
def P6516489533071698449.Spec : Prop :=
  ∀ n, (P6516489533071698449.a n : ℤ) = A142892 (n + 1)

end A142892

/-! ## A142892.P11194159600798358862

`∩[A061240(n+1), A141890(n+1)]`
-/

namespace A142892.P11194159600798358862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142892.P11194159600798358862

namespace A142892

/-- `∩[A061240(n+1), A141890(n+1)]` -/
def P11194159600798358862.Spec : Prop :=
  ∀ n, (P11194159600798358862.a n : ℤ) = A142892 (n + 1)

end A142892

/-! ## A142892.P7447656475985141521

`∩[A004623(n+1), A061240(n+1)]`
-/

namespace A142892.P7447656475985141521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142892.P7447656475985141521

namespace A142892

/-- `∩[A004623(n+1), A061240(n+1)]` -/
def P7447656475985141521.Spec : Prop :=
  ∀ n, (P7447656475985141521.a n : ℤ) = A142892 (n + 1)

end A142892

/-! ## A142892.P13595921571820485738

`∩[A129806(n+1), A141890(n+1)]`
-/

namespace A142892.P13595921571820485738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142892.P13595921571820485738

namespace A142892

/-- `∩[A129806(n+1), A141890(n+1)]` -/
def P13595921571820485738.Spec : Prop :=
  ∀ n, (P13595921571820485738.a n : ℤ) = A142892 (n + 1)

end A142892

/-! ## A142892.P9365820966806980301

`∩[A079131(n+1), A141890(n+1)]`
-/

namespace A142892.P9365820966806980301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142892.P9365820966806980301

namespace A142892

/-- `∩[A079131(n+1), A141890(n+1)]` -/
def P9365820966806980301.Spec : Prop :=
  ∀ n, (P9365820966806980301.a n : ℤ) = A142892 (n + 1)

end A142892

/-! ## A142892.P9318092073566236607

`∩[A045447(n+1), A242215(n)]`
-/

namespace A142892.P9318092073566236607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142892.P9318092073566236607

namespace A142892

/-- `∩[A045447(n+1), A242215(n)]` -/
def P9318092073566236607.Spec : Prop :=
  ∀ n, (P9318092073566236607.a n : ℤ) = A142892 (n + 1)

end A142892

/-! ## A142892.P12942021798677820822

`∩[A045458(n+1), A242215(n)]`
-/

namespace A142892.P12942021798677820822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142892.P12942021798677820822

namespace A142892

/-- `∩[A045458(n+1), A242215(n)]` -/
def P12942021798677820822.Spec : Prop :=
  ∀ n, (P12942021798677820822.a n : ℤ) = A142892 (n + 1)

end A142892

/-! ## A142892.P12745931100245702053

`∩[A141890(n+1), A242215(n)]`
-/

namespace A142892.P12745931100245702053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142892.P12745931100245702053

namespace A142892

/-- `∩[A141890(n+1), A242215(n)]` -/
def P12745931100245702053.Spec : Prop :=
  ∀ n, (P12745931100245702053.a n : ℤ) = A142892 (n + 1)

end A142892

/-! ## A142892.P14116999589418410109

`record[A020639(63*n+5)]`
-/

namespace A142892.P14116999589418410109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (63 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142892.P14116999589418410109

namespace A142892

/-- `record[A020639(63*n+5)]` -/
def P14116999589418410109.Spec : Prop :=
  ∀ n, P14116999589418410109.a n = A142892 (n + 1)

end A142892

/-! ## A142892.P17580042637060580051

`record[A006530(3*42*n+5)]`
-/

namespace A142892.P17580042637060580051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * (42 * n) + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142892.P17580042637060580051

namespace A142892

/-- `record[A006530(3*42*n+5)]` -/
def P17580042637060580051.Spec : Prop :=
  ∀ n, P17580042637060580051.a n = A142892 (n + 1)

end A142892

/-! ## A142892.P3884239194210944100

`∩[A045447(n+1), A017221(n)]`
-/

namespace A142892.P3884239194210944100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142892.P3884239194210944100

namespace A142892

/-- `∩[A045447(n+1), A017221(n)]` -/
def P3884239194210944100.Spec : Prop :=
  ∀ n, (P3884239194210944100.a n : ℤ) = A142892 (n + 1)

end A142892

/-! ## A142892.P5466265174937099396

`∩[A045458(n+1), A017221(n)]`
-/

namespace A142892.P5466265174937099396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142892.P5466265174937099396

namespace A142892

/-- `∩[A045458(n+1), A017221(n)]` -/
def P5466265174937099396.Spec : Prop :=
  ∀ n, (P5466265174937099396.a n : ℤ) = A142892 (n + 1)

end A142892

/-! ## A142892.P15849412380194174567

`∩[A141890(n+1), A017221(n)]`
-/

namespace A142892.P15849412380194174567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142892.P15849412380194174567

namespace A142892

/-- `∩[A141890(n+1), A017221(n)]` -/
def P15849412380194174567.Spec : Prop :=
  ∀ n, (P15849412380194174567.a n : ℤ) = A142892 (n + 1)

end A142892

/-! ## A142892.P8558167971848948116

`∩[A045447(n+1), A017209(n)+1]`
-/

namespace A142892.P8558167971848948116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142892.P8558167971848948116

namespace A142892

/-- `∩[A045447(n+1), A017209(n)+1]` -/
def P8558167971848948116.Spec : Prop :=
  ∀ n, (P8558167971848948116.a n : ℤ) = A142892 (n + 1)

end A142892

/-! ## A142892.P15004861241926728247

`∩[A045458(n+1), A017209(n)+1]`
-/

namespace A142892.P15004861241926728247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142892.P15004861241926728247

namespace A142892

/-- `∩[A045458(n+1), A017209(n)+1]` -/
def P15004861241926728247.Spec : Prop :=
  ∀ n, (P15004861241926728247.a n : ℤ) = A142892 (n + 1)

end A142892

/-! ## A142892.P4303883366994837419

`∩[A045447(n+1), A225539(n+1)]`
-/

namespace A142892.P4303883366994837419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142892.P4303883366994837419

namespace A142892

/-- `∩[A045447(n+1), A225539(n+1)]` -/
def P4303883366994837419.Spec : Prop :=
  ∀ n, (P4303883366994837419.a n : ℤ) = A142892 (n + 1)

end A142892

/-! ## A142892.P8524890844831494208

`∩[A045458(n+1), A225539(n+1)]`
-/

namespace A142892.P8524890844831494208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142892.P8524890844831494208

namespace A142892

/-- `∩[A045458(n+1), A225539(n+1)]` -/
def P8524890844831494208.Spec : Prop :=
  ∀ n, (P8524890844831494208.a n : ℤ) = A142892 (n + 1)

end A142892

/-!
# A142893: Primes congruent to 8 mod 63.

The programs for A142893, the canonical program `A142893.P5240627243338882195` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142893 has offset 1).

The definition of A142893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142893.P5240627243338882195

`p?[63*n+8]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142893

/-- `p?[63*n+8]` -/
def P5240627243338882195.Spec : Prop :=
  ∀ n, (P5240627243338882195.a n : ℤ) = A142893 (n + 1)

theorem P5240627243338882195.correct : P5240627243338882195.Spec := by
  intro n
  simp only [A142893, Nat.add_sub_cancel]

end A142893

/-! ## A142893.P17916142694129439487

`∩[A045465(n+1), A061242(n+1)]`
-/

namespace A142893.P17916142694129439487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142893.P17916142694129439487

namespace A142893

/-- `∩[A045465(n+1), A061242(n+1)]` -/
def P17916142694129439487.Spec : Prop :=
  ∀ n, (P17916142694129439487.a n : ℤ) = A142893 (n + 1)

end A142893

/-! ## A142893.P828349259005528800

`∩[A061242(n+1), A140444(n+1)]`
-/

namespace A142893.P828349259005528800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142893.P828349259005528800

namespace A142893

/-- `∩[A061242(n+1), A140444(n+1)]` -/
def P828349259005528800.Spec : Prop :=
  ∀ n, (P828349259005528800.a n : ℤ) = A142893 (n + 1)

end A142893

/-! ## A142893.P13586648792376177022

`∩[A061242(n+1), A141891(n+1)]`
-/

namespace A142893.P13586648792376177022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142893.P13586648792376177022

namespace A142893

/-- `∩[A061242(n+1), A141891(n+1)]` -/
def P13586648792376177022.Spec : Prop :=
  ∀ n, (P13586648792376177022.a n : ℤ) = A142893 (n + 1)

end A142893

/-! ## A142893.P10891979286830609890

`∩[A004619(n+1), A061242(n+1)]`
-/

namespace A142893.P10891979286830609890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142893.P10891979286830609890

namespace A142893

/-- `∩[A004619(n+1), A061242(n+1)]` -/
def P10891979286830609890.Spec : Prop :=
  ∀ n, (P10891979286830609890.a n : ℤ) = A142893 (n + 1)

end A142893

/-! ## A142893.P7306646365700221888

`A000027(p?[A157336(n+1)-(n+1)])`
-/

namespace A142893.P7306646365700221888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157336 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142893.P7306646365700221888

namespace A142893

/-- `A000027(p?[A157336(n+1)-(n+1)])` -/
def P7306646365700221888.Spec : Prop :=
  ∀ n, P7306646365700221888.a n = A142893 (n + 1)

end A142893

/-! ## A142893.P7597485429764128843

`∩[A129805(n+1), A141891(n+1)]`
-/

namespace A142893.P7597485429764128843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142893.P7597485429764128843

namespace A142893

/-- `∩[A129805(n+1), A141891(n+1)]` -/
def P7597485429764128843.Spec : Prop :=
  ∀ n, (P7597485429764128843.a n : ℤ) = A142893 (n + 1)

end A142893

/-! ## A142893.P8587355441750005375

`∩[A045465(n+1), A295869(n+1)]`
-/

namespace A142893.P8587355441750005375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142893.P8587355441750005375

namespace A142893

/-- `∩[A045465(n+1), A295869(n+1)]` -/
def P8587355441750005375.Spec : Prop :=
  ∀ n, (P8587355441750005375.a n : ℤ) = A142893 (n + 1)

end A142893

/-! ## A142893.P16469626412858894473

`∩[A140444(n+1), A295869(n+1)]`
-/

namespace A142893.P16469626412858894473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142893.P16469626412858894473

namespace A142893

/-- `∩[A140444(n+1), A295869(n+1)]` -/
def P16469626412858894473.Spec : Prop :=
  ∀ n, (P16469626412858894473.a n : ℤ) = A142893 (n + 1)

end A142893

/-! ## A142893.P7105403670954333588

`∩[A141891(n+1), A295869(n+1)]`
-/

namespace A142893.P7105403670954333588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142893.P7105403670954333588

namespace A142893

/-- `∩[A141891(n+1), A295869(n+1)]` -/
def P7105403670954333588.Spec : Prop :=
  ∀ n, (P7105403670954333588.a n : ℤ) = A142893 (n + 1)

end A142893

/-! ## A142893.P11013925987600104906

`∩[A045465(n+1), A239129(n+1)]`
-/

namespace A142893.P11013925987600104906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142893.P11013925987600104906

namespace A142893

/-- `∩[A045465(n+1), A239129(n+1)]` -/
def P11013925987600104906.Spec : Prop :=
  ∀ n, (P11013925987600104906.a n : ℤ) = A142893 (n + 1)

end A142893

/-! ## A142893.P6130786275666069837

`∩[A140444(n+1), A239129(n+1)]`
-/

namespace A142893.P6130786275666069837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142893.P6130786275666069837

namespace A142893

/-- `∩[A140444(n+1), A239129(n+1)]` -/
def P6130786275666069837.Spec : Prop :=
  ∀ n, (P6130786275666069837.a n : ℤ) = A142893 (n + 1)

end A142893

/-! ## A142893.P18075623799123188252

`∩[A141891(n+1), A239129(n+1)]`
-/

namespace A142893.P18075623799123188252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142893.P18075623799123188252

namespace A142893

/-- `∩[A141891(n+1), A239129(n+1)]` -/
def P18075623799123188252.Spec : Prop :=
  ∀ n, (P18075623799123188252.a n : ℤ) = A142893 (n + 1)

end A142893

/-! ## A142893.P1502399527901010452

`∩[A045465(n+1), A161705(n)-2]`
-/

namespace A142893.P1502399527901010452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142893.P1502399527901010452

namespace A142893

/-- `∩[A045465(n+1), A161705(n)-2]` -/
def P1502399527901010452.Spec : Prop :=
  ∀ n, (P1502399527901010452.a n : ℤ) = A142893 (n + 1)

end A142893

/-! ## A142893.P926381764228925779

`∩[A140444(n+1), A161705(n)-2]`
-/

namespace A142893.P926381764228925779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142893.P926381764228925779

namespace A142893

/-- `∩[A140444(n+1), A161705(n)-2]` -/
def P926381764228925779.Spec : Prop :=
  ∀ n, (P926381764228925779.a n : ℤ) = A142893 (n + 1)

end A142893

/-! ## A142893.P17246404017621808

`∩[A061242(n+1), A131877(n)]`
-/

namespace A142893.P17246404017621808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142893.P17246404017621808

namespace A142893

/-- `∩[A061242(n+1), A131877(n)]` -/
def P17246404017621808.Spec : Prop :=
  ∀ n, (P17246404017621808.a n : ℤ) = A142893 (n + 1)

end A142893

/-! ## A142893.P10725936923627363597

`record[A006530(63*(n+1)+8)]`
-/

namespace A142893.P10725936923627363597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (63 * (n + 1) + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142893.P10725936923627363597

namespace A142893

/-- `record[A006530(63*(n+1)+8)]` -/
def P10725936923627363597.Spec : Prop :=
  ∀ n, P10725936923627363597.a n = A142893 (n + 1)

end A142893

/-! ## A142893.P13490238815463599816

`record[A020639(63*(n+1)+8)]`
-/

namespace A142893.P13490238815463599816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (63 * (n + 1) + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142893.P13490238815463599816

namespace A142893

/-- `record[A020639(63*(n+1)+8)]` -/
def P13490238815463599816.Spec : Prop :=
  ∀ n, P13490238815463599816.a n = A142893 (n + 1)

end A142893

/-! ## A142893.P11276690841113543883

`∩[A045465(n+1), A017257(n)]`
-/

namespace A142893.P11276690841113543883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142893.P11276690841113543883

namespace A142893

/-- `∩[A045465(n+1), A017257(n)]` -/
def P11276690841113543883.Spec : Prop :=
  ∀ n, (P11276690841113543883.a n : ℤ) = A142893 (n + 1)

end A142893

/-! ## A142893.P7342713293047447889

`∩[A140444(n+1), A017257(n)]`
-/

namespace A142893.P7342713293047447889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142893.P7342713293047447889

namespace A142893

/-- `∩[A140444(n+1), A017257(n)]` -/
def P7342713293047447889.Spec : Prop :=
  ∀ n, (P7342713293047447889.a n : ℤ) = A142893 (n + 1)

end A142893

/-!
# A142894: Primes congruent to 10 mod 63.

The programs for A142894, the canonical program `A142894.P4870935830498218229` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142894 has offset 1).

The definition of A142894 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142894.P4870935830498218229

`p?[63*n+10]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142894

/-- `p?[63*n+10]` -/
def P4870935830498218229.Spec : Prop :=
  ∀ n, (P4870935830498218229.a n : ℤ) = A142894 (n + 1)

theorem P4870935830498218229.correct : P4870935830498218229.Spec := by
  intro n
  simp only [A142894, Nat.add_sub_cancel]

end A142894

/-! ## A142894.P6481840550438140194

`∏{p}[p?[10-63*(1-n)], #]`
-/

namespace A142894.P6481840550438140194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - 63 * (1 - (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142894.P6481840550438140194

namespace A142894

/-- `∏{p}[p?[10-63*(1-n)], #]` -/
def P6481840550438140194.Spec : Prop :=
  ∀ n, (P6481840550438140194.a n : ℤ) = A142894 (n + 1)

end A142894

/-! ## A142894.P17047115933520265835

`∩[A061237(n+1), A141892(n+1)]`
-/

namespace A142894.P17047115933520265835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142894.P17047115933520265835

namespace A142894

/-- `∩[A061237(n+1), A141892(n+1)]` -/
def P17047115933520265835.Spec : Prop :=
  ∀ n, (P17047115933520265835.a n : ℤ) = A142894 (n + 1)

end A142894

/-! ## A142894.P13575618340169792732

`∩[A045425(n+1), A061237(n+1)]`
-/

namespace A142894.P13575618340169792732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142894.P13575618340169792732

namespace A142894

/-- `∩[A045425(n+1), A061237(n+1)]` -/
def P13575618340169792732.Spec : Prop :=
  ∀ n, (P13575618340169792732.a n : ℤ) = A142894 (n + 1)

end A142894

/-! ## A142894.P2734923836427488461

`∩[A045437(n+1), A061237(n+1)]`
-/

namespace A142894.P2734923836427488461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142894.P2734923836427488461

namespace A142894

/-- `∩[A045437(n+1), A061237(n+1)]` -/
def P2734923836427488461.Spec : Prop :=
  ∀ n, (P2734923836427488461.a n : ℤ) = A142894 (n + 1)

end A142894

/-! ## A142894.P1363401698991684233

`∩[A004621(n+1), A061237(n+1)]`
-/

namespace A142894.P1363401698991684233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142894.P1363401698991684233

namespace A142894

/-- `∩[A004621(n+1), A061237(n+1)]` -/
def P1363401698991684233.Spec : Prop :=
  ∀ n, (P1363401698991684233.a n : ℤ) = A142894 (n + 1)

end A142894

/-! ## A142894.P6826422898864090379

`∩[A129805(n+1), A141892(n+1)]`
-/

namespace A142894.P6826422898864090379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142894.P6826422898864090379

namespace A142894

/-- `∩[A129805(n+1), A141892(n+1)]` -/
def P6826422898864090379.Spec : Prop :=
  ∀ n, (P6826422898864090379.a n : ℤ) = A142894 (n + 1)

end A142894

/-! ## A142894.P15573838045034694468

`p?[A139608(n)+A047276(n+1)]%A102689(n)`
-/

namespace A142894.P15573838045034694468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139608 n + A047276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A102689 n)

end

end A142894.P15573838045034694468

namespace A142894

/-- `p?[A139608(n)+A047276(n+1)]%A102689(n)` -/
def P15573838045034694468.Spec : Prop :=
  ∀ n, P15573838045034694468.a n = A142894 (n + 1)

end A142894

/-! ## A142894.P12222154924593322359

`∩[A045425(n+1), A301617(n+1)]`
-/

namespace A142894.P12222154924593322359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142894.P12222154924593322359

namespace A142894

/-- `∩[A045425(n+1), A301617(n+1)]` -/
def P12222154924593322359.Spec : Prop :=
  ∀ n, (P12222154924593322359.a n : ℤ) = A142894 (n + 1)

end A142894

/-! ## A142894.P4135598725233859293

`∩[A045437(n+1), A301617(n+1)]`
-/

namespace A142894.P4135598725233859293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142894.P4135598725233859293

namespace A142894

/-- `∩[A045437(n+1), A301617(n+1)]` -/
def P4135598725233859293.Spec : Prop :=
  ∀ n, (P4135598725233859293.a n : ℤ) = A142894 (n + 1)

end A142894

/-! ## A142894.P6039390742978462473

`∩[A141892(n+1), A301617(n+1)]`
-/

namespace A142894.P6039390742978462473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142894.P6039390742978462473

namespace A142894

/-- `∩[A141892(n+1), A301617(n+1)]` -/
def P6039390742978462473.Spec : Prop :=
  ∀ n, (P6039390742978462473.a n : ℤ) = A142894 (n + 1)

end A142894

/-! ## A142894.P3438437402669146255

`∩[A045425(n+1), A239129(n+1)+2]`
-/

namespace A142894.P3438437402669146255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142894.P3438437402669146255

namespace A142894

/-- `∩[A045425(n+1), A239129(n+1)+2]` -/
def P3438437402669146255.Spec : Prop :=
  ∀ n, (P3438437402669146255.a n : ℤ) = A142894 (n + 1)

end A142894

/-! ## A142894.P3822939803688369322

`∩[A045437(n+1), A239129(n+1)+2]`
-/

namespace A142894.P3822939803688369322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142894.P3822939803688369322

namespace A142894

/-- `∩[A045437(n+1), A239129(n+1)+2]` -/
def P3822939803688369322.Spec : Prop :=
  ∀ n, (P3822939803688369322.a n : ℤ) = A142894 (n + 1)

end A142894

/-! ## A142894.P16572145771580775073

`∩[A045425(n+1), A161705(n)]`
-/

namespace A142894.P16572145771580775073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142894.P16572145771580775073

namespace A142894

/-- `∩[A045425(n+1), A161705(n)]` -/
def P16572145771580775073.Spec : Prop :=
  ∀ n, (P16572145771580775073.a n : ℤ) = A142894 (n + 1)

end A142894

/-! ## A142894.P11024086828347932832

`∩[A045437(n+1), A161705(n)]`
-/

namespace A142894.P11024086828347932832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142894.P11024086828347932832

namespace A142894

/-- `∩[A045437(n+1), A161705(n)]` -/
def P11024086828347932832.Spec : Prop :=
  ∀ n, (P11024086828347932832.a n : ℤ) = A142894 (n + 1)

end A142894

/-! ## A142894.P17244549373443294256

`∩[A141892(n+1), A161705(n)]`
-/

namespace A142894.P17244549373443294256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142894.P17244549373443294256

namespace A142894

/-- `∩[A141892(n+1), A161705(n)]` -/
def P17244549373443294256.Spec : Prop :=
  ∀ n, (P17244549373443294256.a n : ℤ) = A142894 (n + 1)

end A142894

/-! ## A142894.P4726895539727538001

`∩[A061237(n+1), A131877(n)+2]`
-/

namespace A142894.P4726895539727538001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142894.P4726895539727538001

namespace A142894

/-- `∩[A061237(n+1), A131877(n)+2]` -/
def P4726895539727538001.Spec : Prop :=
  ∀ n, (P4726895539727538001.a n : ℤ) = A142894 (n + 1)

end A142894

/-! ## A142894.P11677616592985989708

`record[A020639(63*(n+1)+10)]`
-/

namespace A142894.P11677616592985989708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (63 * (n + 1) + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142894.P11677616592985989708

namespace A142894

/-- `record[A020639(63*(n+1)+10)]` -/
def P11677616592985989708.Spec : Prop :=
  ∀ n, P11677616592985989708.a n = A142894 (n + 1)

end A142894

/-! ## A142894.P5515941703417910320

`A000265(p?[A139608(n)+A047276(n+1)])`
-/

namespace A142894.P5515941703417910320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139608 n + A047276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142894.P5515941703417910320

namespace A142894

/-- `A000265(p?[A139608(n)+A047276(n+1)])` -/
def P5515941703417910320.Spec : Prop :=
  ∀ n, P5515941703417910320.a n = A142894 (n + 1)

end A142894

/-! ## A142894.P17916871831855086582

`∩[A045425(n+1), A017173(n)]`
-/

namespace A142894.P17916871831855086582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142894.P17916871831855086582

namespace A142894

/-- `∩[A045425(n+1), A017173(n)]` -/
def P17916871831855086582.Spec : Prop :=
  ∀ n, (P17916871831855086582.a n : ℤ) = A142894 (n + 1)

end A142894

/-!
# A142895: Primes congruent to 11 mod 63.

The programs for A142895, the canonical program `A142895.P15871860020077362229` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142895 has offset 1).

The definition of A142895 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2181 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142895.P15871860020077362229

`p?[63*n+11]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142895

/-- `p?[63*n+11]` -/
def P15871860020077362229.Spec : Prop :=
  ∀ n, (P15871860020077362229.a n : ℤ) = A142895 (n + 1)

theorem P15871860020077362229.correct : P15871860020077362229.Spec := by
  intro n
  simp only [A142895, Nat.add_sub_cancel]

end A142895

/-! ## A142895.P4574530577378711248

`∩[A045462(n+1), A061238(n+1)]`
-/

namespace A142895.P4574530577378711248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142895.P4574530577378711248

namespace A142895

/-- `∩[A045462(n+1), A061238(n+1)]` -/
def P4574530577378711248.Spec : Prop :=
  ∀ n, (P4574530577378711248.a n : ℤ) = A142895 (n + 1)

end A142895

/-! ## A142895.P15023798832278421075

`∩[A045471(n+1), A061238(n+1)]`
-/

namespace A142895.P15023798832278421075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142895.P15023798832278421075

namespace A142895

/-- `∩[A045471(n+1), A061238(n+1)]` -/
def P15023798832278421075.Spec : Prop :=
  ∀ n, (P15023798832278421075.a n : ℤ) = A142895 (n + 1)

end A142895

/-! ## A142895.P15997262568184336391

`∩[A061238(n+1), A141893(n+1)]`
-/

namespace A142895.P15997262568184336391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142895.P15997262568184336391

namespace A142895

/-- `∩[A061238(n+1), A141893(n+1)]` -/
def P15997262568184336391.Spec : Prop :=
  ∀ n, (P15997262568184336391.a n : ℤ) = A142895 (n + 1)

end A142895

/-! ## A142895.P1769295322363239174

`∩[A004622(n+1), A061238(n+1)]`
-/

namespace A142895.P1769295322363239174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142895.P1769295322363239174

namespace A142895

/-- `∩[A004622(n+1), A061238(n+1)]` -/
def P1769295322363239174.Spec : Prop :=
  ∀ n, (P1769295322363239174.a n : ℤ) = A142895 (n + 1)

end A142895

/-! ## A142895.P7616705492112512332

`∩[A129807(n+1), A141893(n+1)]`
-/

namespace A142895.P7616705492112512332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142895.P7616705492112512332

namespace A142895

/-- `∩[A129807(n+1), A141893(n+1)]` -/
def P7616705492112512332.Spec : Prop :=
  ∀ n, (P7616705492112512332.a n : ℤ) = A142895 (n + 1)

end A142895

/-! ## A142895.P11845841391672752724

`∩[A045462(n+1), A301621(n+1)]`
-/

namespace A142895.P11845841391672752724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142895.P11845841391672752724

namespace A142895

/-- `∩[A045462(n+1), A301621(n+1)]` -/
def P11845841391672752724.Spec : Prop :=
  ∀ n, (P11845841391672752724.a n : ℤ) = A142895 (n + 1)

end A142895

/-! ## A142895.P4096120841962558151

`∩[A045471(n+1), A301621(n+1)]`
-/

namespace A142895.P4096120841962558151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142895.P4096120841962558151

namespace A142895

/-- `∩[A045471(n+1), A301621(n+1)]` -/
def P4096120841962558151.Spec : Prop :=
  ∀ n, (P4096120841962558151.a n : ℤ) = A142895 (n + 1)

end A142895

/-! ## A142895.P16862082135315222536

`∩[A141893(n+1), A301621(n+1)]`
-/

namespace A142895.P16862082135315222536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142895.P16862082135315222536

namespace A142895

/-- `∩[A141893(n+1), A301621(n+1)]` -/
def P16862082135315222536.Spec : Prop :=
  ∀ n, (P16862082135315222536.a n : ℤ) = A142895 (n + 1)

end A142895

/-! ## A142895.P9965777833266496681

`∩[A045462(n+1), A063305(n+2)-2]`
-/

namespace A142895.P9965777833266496681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142895.P9965777833266496681

namespace A142895

/-- `∩[A045462(n+1), A063305(n+2)-2]` -/
def P9965777833266496681.Spec : Prop :=
  ∀ n, (P9965777833266496681.a n : ℤ) = A142895 (n + 1)

end A142895

/-! ## A142895.P8785439431851431783

`∩[A045471(n+1), A063305(n+2)-2]`
-/

namespace A142895.P8785439431851431783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142895.P8785439431851431783

namespace A142895

/-- `∩[A045471(n+1), A063305(n+2)-2]` -/
def P8785439431851431783.Spec : Prop :=
  ∀ n, (P8785439431851431783.a n : ℤ) = A142895 (n + 1)

end A142895

/-! ## A142895.P7239138589191207511

`∩[A061238(n+1), A358053(n+1)-2]`
-/

namespace A142895.P7239138589191207511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358053 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142895.P7239138589191207511

namespace A142895

/-- `∩[A061238(n+1), A358053(n+1)-2]` -/
def P7239138589191207511.Spec : Prop :=
  ∀ n, (P7239138589191207511.a n : ℤ) = A142895 (n + 1)

end A142895

/-! ## A142895.P12639699272577052915

`∩[A045462(n+1), A076206(n+1)]`
-/

namespace A142895.P12639699272577052915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142895.P12639699272577052915

namespace A142895

/-- `∩[A045462(n+1), A076206(n+1)]` -/
def P12639699272577052915.Spec : Prop :=
  ∀ n, (P12639699272577052915.a n : ℤ) = A142895 (n + 1)

end A142895

/-! ## A142895.P8840116595297013656

`∩[A045471(n+1), A076206(n+1)]`
-/

namespace A142895.P8840116595297013656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142895.P8840116595297013656

namespace A142895

/-- `∩[A045471(n+1), A076206(n+1)]` -/
def P8840116595297013656.Spec : Prop :=
  ∀ n, (P8840116595297013656.a n : ℤ) = A142895 (n + 1)

end A142895

/-! ## A142895.P11476325878620359758

`∩[A076206(n+1), A141893(n+1)]`
-/

namespace A142895.P11476325878620359758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142895.P11476325878620359758

namespace A142895

/-- `∩[A076206(n+1), A141893(n+1)]` -/
def P11476325878620359758.Spec : Prop :=
  ∀ n, (P11476325878620359758.a n : ℤ) = A142895 (n + 1)

end A142895

/-! ## A142895.P8147014698294595717

`∩[A017005(2*n)+A017005(n+1), A061238(n+2)]`
-/

namespace A142895.P8147014698294595717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 (2 * n) + A017005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142895.P8147014698294595717

namespace A142895

/-- `∩[A017005(2*n)+A017005(n+1), A061238(n+2)]` -/
def P8147014698294595717.Spec : Prop :=
  ∀ n, (P8147014698294595717.a n : ℤ) = A142895 (n + 1)

end A142895

/-! ## A142895.P2108134695729281638

`record[A020639(63*n+11)]`
-/

namespace A142895.P2108134695729281638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (63 * n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142895.P2108134695729281638

namespace A142895

/-- `record[A020639(63*n+11)]` -/
def P2108134695729281638.Spec : Prop :=
  ∀ n, P2108134695729281638.a n = A142895 (n + 1)

end A142895

/-! ## A142895.P8519770548979842482

`A000265(p?[A241406(n+1)+n])`
-/

namespace A142895.P8519770548979842482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241406 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142895.P8519770548979842482

namespace A142895

/-- `A000265(p?[A241406(n+1)+n])` -/
def P8519770548979842482.Spec : Prop :=
  ∀ n, P8519770548979842482.a n = A142895 (n + 1)

end A142895

/-! ## A142895.P14461270180087255626

`A000265(p?[A161705(n)+A139610(n)])`
-/

namespace A142895.P14461270180087255626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n + A139610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142895.P14461270180087255626

namespace A142895

/-- `A000265(p?[A161705(n)+A139610(n)])` -/
def P14461270180087255626.Spec : Prop :=
  ∀ n, P14461270180087255626.a n = A142895 (n + 1)

end A142895

/-!
# A142896: Primes congruent to 13 mod 63.

The programs for A142896, the canonical program `A142896.P8110623759283168038` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142896 has offset 1).

The definition of A142896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142896.P8110623759283168038

`p?[63*n+13]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142896

/-- `p?[63*n+13]` -/
def P8110623759283168038.Spec : Prop :=
  ∀ n, (P8110623759283168038.a n : ℤ) = A142896 (n + 1)

theorem P8110623759283168038.correct : P8110623759283168038.Spec := by
  intro n
  simp only [A142896, Nat.add_sub_cancel]

end A142896

/-! ## A142896.P855649121516089322

`∩[A061239(n+1), A141894(n+1)]`
-/

namespace A142896.P855649121516089322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142896.P855649121516089322

namespace A142896

/-- `∩[A061239(n+1), A141894(n+1)]` -/
def P855649121516089322.Spec : Prop :=
  ∀ n, (P855649121516089322.a n : ℤ) = A142896 (n + 1)

end A142896

/-! ## A142896.P17274046871748617871

`∩[A045464(n+1), A061239(n+1)]`
-/

namespace A142896.P17274046871748617871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142896.P17274046871748617871

namespace A142896

/-- `∩[A045464(n+1), A061239(n+1)]` -/
def P17274046871748617871.Spec : Prop :=
  ∀ n, (P17274046871748617871.a n : ℤ) = A142896 (n + 1)

end A142896

/-! ## A142896.P16698719694526646882

`∩[A045473(n+1), A061239(n+1)]`
-/

namespace A142896.P16698719694526646882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142896.P16698719694526646882

namespace A142896

/-- `∩[A045473(n+1), A061239(n+1)]` -/
def P16698719694526646882.Spec : Prop :=
  ∀ n, (P16698719694526646882.a n : ℤ) = A142896 (n + 1)

end A142896

/-! ## A142896.P14931537380641058116

`∩[A004624(n+1), A061239(n+1)]`
-/

namespace A142896.P14931537380641058116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142896.P14931537380641058116

namespace A142896

/-- `∩[A004624(n+1), A061239(n+1)]` -/
def P14931537380641058116.Spec : Prop :=
  ∀ n, (P14931537380641058116.a n : ℤ) = A142896 (n + 1)

end A142896

/-! ## A142896.P13360234480594968251

`∩[A129806(n+1), A141894(n+1)]`
-/

namespace A142896.P13360234480594968251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142896.P13360234480594968251

namespace A142896

/-- `∩[A129806(n+1), A141894(n+1)]` -/
def P13360234480594968251.Spec : Prop :=
  ∀ n, (P13360234480594968251.a n : ℤ) = A142896 (n + 1)

end A142896

/-! ## A142896.P5292042771478106393

`∩[A045464(n+1), A301622(n+1)]`
-/

namespace A142896.P5292042771478106393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142896.P5292042771478106393

namespace A142896

/-- `∩[A045464(n+1), A301622(n+1)]` -/
def P5292042771478106393.Spec : Prop :=
  ∀ n, (P5292042771478106393.a n : ℤ) = A142896 (n + 1)

end A142896

/-! ## A142896.P4152146400221970753

`∩[A045473(n+1), A301622(n+1)]`
-/

namespace A142896.P4152146400221970753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142896.P4152146400221970753

namespace A142896

/-- `∩[A045473(n+1), A301622(n+1)]` -/
def P4152146400221970753.Spec : Prop :=
  ∀ n, (P4152146400221970753.a n : ℤ) = A142896 (n + 1)

end A142896

/-! ## A142896.P7549422071719606351

`∩[A141894(n+1), A301622(n+1)]`
-/

namespace A142896.P7549422071719606351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142896.P7549422071719606351

namespace A142896

/-- `∩[A141894(n+1), A301622(n+1)]` -/
def P7549422071719606351.Spec : Prop :=
  ∀ n, (P7549422071719606351.a n : ℤ) = A142896 (n + 1)

end A142896

/-! ## A142896.P18202567632586901149

`∩[A079132(n+1), A141894(n+1)]`
-/

namespace A142896.P18202567632586901149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142896.P18202567632586901149

namespace A142896

/-- `∩[A079132(n+1), A141894(n+1)]` -/
def P18202567632586901149.Spec : Prop :=
  ∀ n, (P18202567632586901149.a n : ℤ) = A142896 (n + 1)

end A142896

/-! ## A142896.P9652701549835372541

`∩[A045464(n+1), A063305(n+2)]`
-/

namespace A142896.P9652701549835372541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142896.P9652701549835372541

namespace A142896

/-- `∩[A045464(n+1), A063305(n+2)]` -/
def P9652701549835372541.Spec : Prop :=
  ∀ n, (P9652701549835372541.a n : ℤ) = A142896 (n + 1)

end A142896

/-! ## A142896.P5836866357130902277

`∩[A045473(n+1), A063305(n+2)]`
-/

namespace A142896.P5836866357130902277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142896.P5836866357130902277

namespace A142896

/-- `∩[A045473(n+1), A063305(n+2)]` -/
def P5836866357130902277.Spec : Prop :=
  ∀ n, (P5836866357130902277.a n : ℤ) = A142896 (n + 1)

end A142896

/-! ## A142896.P8937419161648793889

`∩[A141894(n+1), A063305(n+2)]`
-/

namespace A142896.P8937419161648793889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142896.P8937419161648793889

namespace A142896

/-- `∩[A141894(n+1), A063305(n+2)]` -/
def P8937419161648793889.Spec : Prop :=
  ∀ n, (P8937419161648793889.a n : ℤ) = A142896 (n + 1)

end A142896

/-! ## A142896.P2521527313216154482

`∩[A061239(n+1), A358053(n+1)]`
-/

namespace A142896.P2521527313216154482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142896.P2521527313216154482

namespace A142896

/-- `∩[A061239(n+1), A358053(n+1)]` -/
def P2521527313216154482.Spec : Prop :=
  ∀ n, (P2521527313216154482.a n : ℤ) = A142896 (n + 1)

end A142896

/-! ## A142896.P15781957624605296425

`∩[A061239(n+1), A131877(n)-2]`
-/

namespace A142896.P15781957624605296425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142896.P15781957624605296425

namespace A142896

/-- `∩[A061239(n+1), A131877(n)-2]` -/
def P15781957624605296425.Spec : Prop :=
  ∀ n, (P15781957624605296425.a n : ℤ) = A142896 (n + 1)

end A142896

/-! ## A142896.P10386555141132058365

`record[A020639(63*n+13)]`
-/

namespace A142896.P10386555141132058365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (63 * n + 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142896.P10386555141132058365

namespace A142896

/-- `record[A020639(63*n+13)]` -/
def P10386555141132058365.Spec : Prop :=
  ∀ n, P10386555141132058365.a n = A142896 (n + 1)

end A142896

/-! ## A142896.P4028411661314660553

`record[A006530(A139617(n)-A017317(n))]`
-/

namespace A142896.P4028411661314660553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A139617 n - A017317 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142896.P4028411661314660553

namespace A142896

/-- `record[A006530(A139617(n)-A017317(n))]` -/
def P4028411661314660553.Spec : Prop :=
  ∀ n, P4028411661314660553.a n = A142896 (n + 1)

end A142896

/-! ## A142896.P14035632099627791098

`A001414(p?[A082369(n+1)+A007494(n)])`
-/

namespace A142896.P14035632099627791098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1) + A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142896.P14035632099627791098

namespace A142896

/-- `A001414(p?[A082369(n+1)+A007494(n)])` -/
def P14035632099627791098.Spec : Prop :=
  ∀ n, P14035632099627791098.a n = A142896 (n + 1)

end A142896

/-! ## A142896.P14529740672762525585

`or(1, p?[A017209(A016993(n))])`
-/

namespace A142896.P14529740672762525585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 (A016993 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142896.P14529740672762525585

namespace A142896

/-- `or(1, p?[A017209(A016993(n))])` -/
def P14529740672762525585.Spec : Prop :=
  ∀ n, P14529740672762525585.a n = A142896 (n + 1)

end A142896

/-! ## A142896.P9268037955147172617

`∩[A045464(n+1), A017209(n)]`
-/

namespace A142896.P9268037955147172617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142896.P9268037955147172617

namespace A142896

/-- `∩[A045464(n+1), A017209(n)]` -/
def P9268037955147172617.Spec : Prop :=
  ∀ n, (P9268037955147172617.a n : ℤ) = A142896 (n + 1)

end A142896

/-!
# A142897: Primes congruent to 16 mod 63.

The programs for A142897, the canonical program `A142897.P5737328438364324810` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142897 has offset 1).

The definition of A142897 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2180 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142897.P5737328438364324810

`p?[63*n+16]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142897

/-- `p?[63*n+16]` -/
def P5737328438364324810.Spec : Prop :=
  ∀ n, (P5737328438364324810.a n : ℤ) = A142897 (n + 1)

theorem P5737328438364324810.correct : P5737328438364324810.Spec := by
  intro n
  simp only [A142897, Nat.add_sub_cancel]

end A142897

/-! ## A142897.P11752309839773288519

`∩[A061241(n+1), A141895(n+1)]`
-/

namespace A142897.P11752309839773288519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142897.P11752309839773288519

namespace A142897

/-- `∩[A061241(n+1), A141895(n+1)]` -/
def P11752309839773288519.Spec : Prop :=
  ∀ n, (P11752309839773288519.a n : ℤ) = A142897 (n + 1)

end A142897

/-! ## A142897.P11175307500525899449

`∩[A045392(n+1), A061241(n+1)]`
-/

namespace A142897.P11175307500525899449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142897.P11175307500525899449

namespace A142897

/-- `∩[A045392(n+1), A061241(n+1)]` -/
def P11175307500525899449.Spec : Prop :=
  ∀ n, (P11175307500525899449.a n : ℤ) = A142897 (n + 1)

end A142897

/-! ## A142897.P17811438544927551930

`∩[A061241(n+1), A140442(n+1)]`
-/

namespace A142897.P17811438544927551930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142897.P17811438544927551930

namespace A142897

/-- `∩[A061241(n+1), A140442(n+1)]` -/
def P17811438544927551930.Spec : Prop :=
  ∀ n, (P17811438544927551930.a n : ℤ) = A142897 (n + 1)

end A142897

/-! ## A142897.P17148716194047525410

`∩[A129807(n+1), A141895(n+1)]`
-/

namespace A142897.P17148716194047525410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142897.P17148716194047525410

namespace A142897

/-- `∩[A129807(n+1), A141895(n+1)]` -/
def P17148716194047525410.Spec : Prop :=
  ∀ n, (P17148716194047525410.a n : ℤ) = A142897 (n + 1)

end A142897

/-! ## A142897.P17059457521184580100

`∩[A004620(n+1), A061241(n+1)]`
-/

namespace A142897.P17059457521184580100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142897.P17059457521184580100

namespace A142897

/-- `∩[A004620(n+1), A061241(n+1)]` -/
def P17059457521184580100.Spec : Prop :=
  ∀ n, (P17059457521184580100.a n : ℤ) = A142897 (n + 1)

end A142897

/-! ## A142897.P17674560777860186576

`∩[A045392(n+1), A301628(n+1)]`
-/

namespace A142897.P17674560777860186576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142897.P17674560777860186576

namespace A142897

/-- `∩[A045392(n+1), A301628(n+1)]` -/
def P17674560777860186576.Spec : Prop :=
  ∀ n, (P17674560777860186576.a n : ℤ) = A142897 (n + 1)

end A142897

/-! ## A142897.P9330094888423346385

`∩[A140442(n+1), A301628(n+1)]`
-/

namespace A142897.P9330094888423346385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142897.P9330094888423346385

namespace A142897

/-- `∩[A140442(n+1), A301628(n+1)]` -/
def P9330094888423346385.Spec : Prop :=
  ∀ n, (P9330094888423346385.a n : ℤ) = A142897 (n + 1)

end A142897

/-! ## A142897.P11768910464851436465

`∩[A141895(n+1), A301628(n+1)]`
-/

namespace A142897.P11768910464851436465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142897.P11768910464851436465

namespace A142897

/-- `∩[A141895(n+1), A301628(n+1)]` -/
def P11768910464851436465.Spec : Prop :=
  ∀ n, (P11768910464851436465.a n : ℤ) = A142897 (n + 1)

end A142897

/-! ## A142897.P15810451932687087562

`∩[A078403(n+1), A141895(n+1)]`
-/

namespace A142897.P15810451932687087562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142897.P15810451932687087562

namespace A142897

/-- `∩[A078403(n+1), A141895(n+1)]` -/
def P15810451932687087562.Spec : Prop :=
  ∀ n, (P15810451932687087562.a n : ℤ) = A142897 (n + 1)

end A142897

/-! ## A142897.P16288036346567505295

`∩[A061241(n+1), A258016(n+1)-2]`
-/

namespace A142897.P16288036346567505295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258016 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142897.P16288036346567505295

namespace A142897

/-- `∩[A061241(n+1), A258016(n+1)-2]` -/
def P16288036346567505295.Spec : Prop :=
  ∀ n, (P16288036346567505295.a n : ℤ) = A142897 (n + 1)

end A142897

/-! ## A142897.P6021114070249960252

`∩[A258016(2*(n+1))-2, A129807(n+2)]`
-/

namespace A142897.P6021114070249960252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258016 (2 * (n + 1)) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142897.P6021114070249960252

namespace A142897

/-- `∩[A258016(2*(n+1))-2, A129807(n+2)]` -/
def P6021114070249960252.Spec : Prop :=
  ∀ n, (P6021114070249960252.a n : ℤ) = A142897 (n + 1)

end A142897

/-! ## A142897.P3256689938723579465

`or(1, p?[A019432(A017005(n+1))])`
-/

namespace A142897.P3256689938723579465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 (A017005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142897.P3256689938723579465

namespace A142897

/-- `or(1, p?[A019432(A017005(n+1))])` -/
def P3256689938723579465.Spec : Prop :=
  ∀ n, P3256689938723579465.a n = A142897 (n + 1)

end A142897

/-! ## A142897.P14709921803711583948

`∩[A045392(n+1), A242215(n)+2]`
-/

namespace A142897.P14709921803711583948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142897.P14709921803711583948

namespace A142897

/-- `∩[A045392(n+1), A242215(n)+2]` -/
def P14709921803711583948.Spec : Prop :=
  ∀ n, (P14709921803711583948.a n : ℤ) = A142897 (n + 1)

end A142897

/-! ## A142897.P7034317101711203733

`∩[A242215(n+1)+2, A045383(n+2)]`
-/

namespace A142897.P7034317101711203733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142897.P7034317101711203733

namespace A142897

/-- `∩[A242215(n+1)+2, A045383(n+2)]` -/
def P7034317101711203733.Spec : Prop :=
  ∀ n, (P7034317101711203733.a n : ℤ) = A142897 (n + 1)

end A142897

/-! ## A142897.P11242863959034360978

`p?[A019432(A017005(n))]%A083815(n+1)`
-/

namespace A142897.P11242863959034360978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 (A017005 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A083815 (n + 1))

end

end A142897.P11242863959034360978

namespace A142897

/-- `p?[A019432(A017005(n))]%A083815(n+1)` -/
def P11242863959034360978.Spec : Prop :=
  ∀ n, P11242863959034360978.a n = A142897 (n + 1)

end A142897

/-! ## A142897.P13671556701583393629

`p?[A019432(A017005(n+1))]+A005843(n)%2`
-/

namespace A142897.P13671556701583393629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 (A017005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A005843 n) 2

end

end A142897.P13671556701583393629

namespace A142897

/-- `p?[A019432(A017005(n+1))]+A005843(n)%2` -/
def P13671556701583393629.Spec : Prop :=
  ∀ n, P13671556701583393629.a n = A142897 (n + 1)

end A142897

/-! ## A142897.P11108265289337465499

`p?[A019432(A017005(n+1))]+2%A083952(n)`
-/

namespace A142897.P11108265289337465499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 (A017005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod 2 (A083952 n)

end

end A142897.P11108265289337465499

namespace A142897

/-- `p?[A019432(A017005(n+1))]+2%A083952(n)` -/
def P11108265289337465499.Spec : Prop :=
  ∀ n, P11108265289337465499.a n = A142897 (n + 1)

end A142897

/-! ## A142897.P14680119217991434518

`p?[A019432(A017005(n))]/(A205839(n+1)+1)%2`
-/

namespace A142897.P14680119217991434518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 (A017005 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Int.tmod (A205839 (n + 1) + 1) 2 : ℚ)

end

end A142897.P14680119217991434518

namespace A142897

/-- `p?[A019432(A017005(n))]/(A205839(n+1)+1)%2` -/
def P14680119217991434518.Spec : Prop :=
  ∀ n, P14680119217991434518.a n = (A142897 (n + 1) : ℚ)

end A142897

/-! ## A142897.P5281509292851063699

`∩[A016993(2*n+1)+A016993(n+1), A061241(n+2)]`
-/

namespace A142897.P5281509292851063699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (2 * n + 1) + A016993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142897.P5281509292851063699

namespace A142897

/-- `∩[A016993(2*n+1)+A016993(n+1), A061241(n+2)]` -/
def P5281509292851063699.Spec : Prop :=
  ∀ n, (P5281509292851063699.a n : ℤ) = A142897 (n + 1)

end A142897

/-!
# A142898: Primes congruent to 17 mod 63.

The programs for A142898, the canonical program `A142898.P11273299209455078094` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142898 has offset 1).

The definition of A142898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142898.P11273299209455078094

`p?[63*n+17]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142898

/-- `p?[63*n+17]` -/
def P11273299209455078094.Spec : Prop :=
  ∀ n, (P11273299209455078094.a n : ℤ) = A142898 (n + 1)

theorem P11273299209455078094.correct : P11273299209455078094.Spec := by
  intro n
  simp only [A142898, Nat.add_sub_cancel]

end A142898

/-! ## A142898.P16366995025144394534

`∩[A045437(n+1), A061242(n+1)]`
-/

namespace A142898.P16366995025144394534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142898.P16366995025144394534

namespace A142898

/-- `∩[A045437(n+1), A061242(n+1)]` -/
def P16366995025144394534.Spec : Prop :=
  ∀ n, (P16366995025144394534.a n : ℤ) = A142898 (n + 1)

end A142898

/-! ## A142898.P1009566517861482729

`∩[A061242(n+1), A141896(n+1)]`
-/

namespace A142898.P1009566517861482729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142898.P1009566517861482729

namespace A142898

/-- `∩[A061242(n+1), A141896(n+1)]` -/
def P1009566517861482729.Spec : Prop :=
  ∀ n, (P1009566517861482729.a n : ℤ) = A142898 (n + 1)

end A142898

/-! ## A142898.P9865625851979431812

`∩[A045425(n+1), A061242(n+1)]`
-/

namespace A142898.P9865625851979431812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142898.P9865625851979431812

namespace A142898

/-- `∩[A045425(n+1), A061242(n+1)]` -/
def P9865625851979431812.Spec : Prop :=
  ∀ n, (P9865625851979431812.a n : ℤ) = A142898 (n + 1)

end A142898

/-! ## A142898.P9191049335661944745

`∩[A004621(n+1), A061242(n+1)]`
-/

namespace A142898.P9191049335661944745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142898.P9191049335661944745

namespace A142898

/-- `∩[A004621(n+1), A061242(n+1)]` -/
def P9191049335661944745.Spec : Prop :=
  ∀ n, (P9191049335661944745.a n : ℤ) = A142898 (n + 1)

end A142898

/-! ## A142898.P4163316621454122609

`∩[A129805(n+1), A141896(n+1)]`
-/

namespace A142898.P4163316621454122609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142898.P4163316621454122609

namespace A142898

/-- `∩[A129805(n+1), A141896(n+1)]` -/
def P4163316621454122609.Spec : Prop :=
  ∀ n, (P4163316621454122609.a n : ℤ) = A142898 (n + 1)

end A142898

/-! ## A142898.P11549313725368515857

`∩[A045425(n+1), A295869(n+1)]`
-/

namespace A142898.P11549313725368515857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142898.P11549313725368515857

namespace A142898

/-- `∩[A045425(n+1), A295869(n+1)]` -/
def P11549313725368515857.Spec : Prop :=
  ∀ n, (P11549313725368515857.a n : ℤ) = A142898 (n + 1)

end A142898

/-! ## A142898.P13961589809650164742

`∩[A045437(n+1), A295869(n+1)]`
-/

namespace A142898.P13961589809650164742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142898.P13961589809650164742

namespace A142898

/-- `∩[A045437(n+1), A295869(n+1)]` -/
def P13961589809650164742.Spec : Prop :=
  ∀ n, (P13961589809650164742.a n : ℤ) = A142898 (n + 1)

end A142898

/-! ## A142898.P18439415468862517275

`∩[A141896(n+1), A295869(n+1)]`
-/

namespace A142898.P18439415468862517275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142898.P18439415468862517275

namespace A142898

/-- `∩[A141896(n+1), A295869(n+1)]` -/
def P18439415468862517275.Spec : Prop :=
  ∀ n, (P18439415468862517275.a n : ℤ) = A142898 (n + 1)

end A142898

/-! ## A142898.P6020696701085492777

`∩[A045425(n+1), A239129(n+1)]`
-/

namespace A142898.P6020696701085492777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142898.P6020696701085492777

namespace A142898

/-- `∩[A045425(n+1), A239129(n+1)]` -/
def P6020696701085492777.Spec : Prop :=
  ∀ n, (P6020696701085492777.a n : ℤ) = A142898 (n + 1)

end A142898

/-! ## A142898.P4788144935845940359

`∩[A045437(n+1), A239129(n+1)]`
-/

namespace A142898.P4788144935845940359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142898.P4788144935845940359

namespace A142898

/-- `∩[A045437(n+1), A239129(n+1)]` -/
def P4788144935845940359.Spec : Prop :=
  ∀ n, (P4788144935845940359.a n : ℤ) = A142898 (n + 1)

end A142898

/-! ## A142898.P8487355381996125435

`∩[A141896(n+1), A239129(n+1)]`
-/

namespace A142898.P8487355381996125435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142898.P8487355381996125435

namespace A142898

/-- `∩[A141896(n+1), A239129(n+1)]` -/
def P8487355381996125435.Spec : Prop :=
  ∀ n, (P8487355381996125435.a n : ℤ) = A142898 (n + 1)

end A142898

/-! ## A142898.P550098639830505750

`∩[A045425(n+1), A161705(n)-2]`
-/

namespace A142898.P550098639830505750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142898.P550098639830505750

namespace A142898

/-- `∩[A045425(n+1), A161705(n)-2]` -/
def P550098639830505750.Spec : Prop :=
  ∀ n, (P550098639830505750.a n : ℤ) = A142898 (n + 1)

end A142898

/-! ## A142898.P16687969687595143949

`∩[A045437(n+1), A161705(n)-2]`
-/

namespace A142898.P16687969687595143949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142898.P16687969687595143949

namespace A142898

/-- `∩[A045437(n+1), A161705(n)-2]` -/
def P16687969687595143949.Spec : Prop :=
  ∀ n, (P16687969687595143949.a n : ℤ) = A142898 (n + 1)

end A142898

/-! ## A142898.P9759620791494934373

`∩[A061242(n+1), A131877(n)+2]`
-/

namespace A142898.P9759620791494934373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142898.P9759620791494934373

namespace A142898

/-- `∩[A061242(n+1), A131877(n)+2]` -/
def P9759620791494934373.Spec : Prop :=
  ∀ n, (P9759620791494934373.a n : ℤ) = A142898 (n + 1)

end A142898

/-! ## A142898.P2444981903509941881

`record[A006530(A139616(n)+A016921(n))]`
-/

namespace A142898.P2444981903509941881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A139616 n + A016921 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142898.P2444981903509941881

namespace A142898

/-- `record[A006530(A139616(n)+A016921(n))]` -/
def P2444981903509941881.Spec : Prop :=
  ∀ n, P2444981903509941881.a n = A142898 (n + 1)

end A142898

/-! ## A142898.P11595224614115247642

`record[A020639(A139611(n)+A017137(n))]`
-/

namespace A142898.P11595224614115247642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A139611 n + A017137 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142898.P11595224614115247642

namespace A142898

/-- `record[A020639(A139611(n)+A017137(n))]` -/
def P11595224614115247642.Spec : Prop :=
  ∀ n, P11595224614115247642.a n = A142898 (n + 1)

end A142898

/-! ## A142898.P11833169462224025990

`∩[A045425(n+1), A017257(n)]`
-/

namespace A142898.P11833169462224025990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142898.P11833169462224025990

namespace A142898

/-- `∩[A045425(n+1), A017257(n)]` -/
def P11833169462224025990.Spec : Prop :=
  ∀ n, (P11833169462224025990.a n : ℤ) = A142898 (n + 1)

end A142898

/-! ## A142898.P6881326893818802179

`∩[A045437(n+1), A017257(n)]`
-/

namespace A142898.P6881326893818802179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142898.P6881326893818802179

namespace A142898

/-- `∩[A045437(n+1), A017257(n)]` -/
def P6881326893818802179.Spec : Prop :=
  ∀ n, (P6881326893818802179.a n : ℤ) = A142898 (n + 1)

end A142898

/-! ## A142898.P8340681794642017568

`∩[A141896(n+1), A017257(n)]`
-/

namespace A142898.P8340681794642017568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142898.P8340681794642017568

namespace A142898

/-- `∩[A141896(n+1), A017257(n)]` -/
def P8340681794642017568.Spec : Prop :=
  ∀ n, (P8340681794642017568.a n : ℤ) = A142898 (n + 1)

end A142898

/-!
# A142899: Primes congruent to 19 mod 63.

The programs for A142899, the canonical program `A142899.P5107742842111695539` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142899 has offset 1).

The definition of A142899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2185 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142899.P5107742842111695539

`p?[63*n+19]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142899

/-- `p?[63*n+19]` -/
def P5107742842111695539.Spec : Prop :=
  ∀ n, (P5107742842111695539.a n : ℤ) = A142899 (n + 1)

theorem P5107742842111695539.correct : P5107742842111695539.Spec := by
  intro n
  simp only [A142899, Nat.add_sub_cancel]

end A142899

/-! ## A142899.P4037790160074680707

`∩[A061237(n+1), A141897(n+1)]`
-/

namespace A142899.P4037790160074680707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142899.P4037790160074680707

namespace A142899

/-- `∩[A061237(n+1), A141897(n+1)]` -/
def P4037790160074680707.Spec : Prop :=
  ∀ n, (P4037790160074680707.a n : ℤ) = A142899 (n + 1)

end A142899

/-! ## A142899.P14542158656405460934

`∩[A045458(n+1), A061237(n+1)]`
-/

namespace A142899.P14542158656405460934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142899.P14542158656405460934

namespace A142899

/-- `∩[A045458(n+1), A061237(n+1)]` -/
def P14542158656405460934.Spec : Prop :=
  ∀ n, (P14542158656405460934.a n : ℤ) = A142899 (n + 1)

end A142899

/-! ## A142899.P2297088995673555519

`∩[A045447(n+1), A061237(n+1)]`
-/

namespace A142899.P2297088995673555519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142899.P2297088995673555519

namespace A142899

/-- `∩[A045447(n+1), A061237(n+1)]` -/
def P2297088995673555519.Spec : Prop :=
  ∀ n, (P2297088995673555519.a n : ℤ) = A142899 (n + 1)

end A142899

/-! ## A142899.P3890899697048760059

`∩[A004623(n+1), A061237(n+1)]`
-/

namespace A142899.P3890899697048760059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142899.P3890899697048760059

namespace A142899

/-- `∩[A004623(n+1), A061237(n+1)]` -/
def P3890899697048760059.Spec : Prop :=
  ∀ n, (P3890899697048760059.a n : ℤ) = A142899 (n + 1)

end A142899

/-! ## A142899.P10632668226809062557

`∩[A129805(n+1), A141897(n+1)]`
-/

namespace A142899.P10632668226809062557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142899.P10632668226809062557

namespace A142899

/-- `∩[A129805(n+1), A141897(n+1)]` -/
def P10632668226809062557.Spec : Prop :=
  ∀ n, (P10632668226809062557.a n : ℤ) = A142899 (n + 1)

end A142899

/-! ## A142899.P5274150393182823123

`∩[A045447(n+1), A301617(n+1)]`
-/

namespace A142899.P5274150393182823123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142899.P5274150393182823123

namespace A142899

/-- `∩[A045447(n+1), A301617(n+1)]` -/
def P5274150393182823123.Spec : Prop :=
  ∀ n, (P5274150393182823123.a n : ℤ) = A142899 (n + 1)

end A142899

/-! ## A142899.P3533909035227759561

`∩[A045458(n+1), A301617(n+1)]`
-/

namespace A142899.P3533909035227759561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142899.P3533909035227759561

namespace A142899

/-- `∩[A045458(n+1), A301617(n+1)]` -/
def P3533909035227759561.Spec : Prop :=
  ∀ n, (P3533909035227759561.a n : ℤ) = A142899 (n + 1)

end A142899

/-! ## A142899.P1792601948428188067

`∩[A141897(n+1), A301617(n+1)]`
-/

namespace A142899.P1792601948428188067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142899.P1792601948428188067

namespace A142899

/-- `∩[A141897(n+1), A301617(n+1)]` -/
def P1792601948428188067.Spec : Prop :=
  ∀ n, (P1792601948428188067.a n : ℤ) = A142899 (n + 1)

end A142899

/-! ## A142899.P354237488478951401

`∑{p}[p?[A258016(A008588(n)+1)], #]`
-/

namespace A142899.P354237488478951401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258016 (A008588 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142899.P354237488478951401

namespace A142899

/-- `∑{p}[p?[A258016(A008588(n)+1)], #]` -/
def P354237488478951401.Spec : Prop :=
  ∀ n, (P354237488478951401.a n : ℤ) = A142899 (n + 1)

end A142899

/-! ## A142899.P13755240630561272902

`∩[A061237(n+1), A258016(n+1)]`
-/

namespace A142899.P13755240630561272902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142899.P13755240630561272902

namespace A142899

/-- `∩[A061237(n+1), A258016(n+1)]` -/
def P13755240630561272902.Spec : Prop :=
  ∀ n, (P13755240630561272902.a n : ℤ) = A142899 (n + 1)

end A142899

/-! ## A142899.P17810094420613398104

`∩[A129805(n+1), A258016(n+1)]`
-/

namespace A142899.P17810094420613398104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142899.P17810094420613398104

namespace A142899

/-- `∩[A129805(n+1), A258016(n+1)]` -/
def P17810094420613398104.Spec : Prop :=
  ∀ n, (P17810094420613398104.a n : ℤ) = A142899 (n + 1)

end A142899

/-! ## A142899.P14928634344271515331

`p?[A258016(A008588(n)+1)]%A102484(n+1)`
-/

namespace A142899.P14928634344271515331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258016 (A008588 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A102484 (n + 1))

end

end A142899.P14928634344271515331

namespace A142899

/-- `p?[A258016(A008588(n)+1)]%A102484(n+1)` -/
def P14928634344271515331.Spec : Prop :=
  ∀ n, P14928634344271515331.a n = A142899 (n + 1)

end A142899

/-! ## A142899.P13542506267459083025

`∩[A045447(n+1), A161705(n)]`
-/

namespace A142899.P13542506267459083025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142899.P13542506267459083025

namespace A142899

/-- `∩[A045447(n+1), A161705(n)]` -/
def P13542506267459083025.Spec : Prop :=
  ∀ n, (P13542506267459083025.a n : ℤ) = A142899 (n + 1)

end A142899

/-! ## A142899.P5599224696119416706

`∩[A045458(n+1), A161705(n)]`
-/

namespace A142899.P5599224696119416706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142899.P5599224696119416706

namespace A142899

/-- `∩[A045458(n+1), A161705(n)]` -/
def P5599224696119416706.Spec : Prop :=
  ∀ n, (P5599224696119416706.a n : ℤ) = A142899 (n + 1)

end A142899

/-! ## A142899.P1061323880400595297

`∩[A141897(n+1), A161705(n)]`
-/

namespace A142899.P1061323880400595297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142899.P1061323880400595297

namespace A142899

/-- `∩[A141897(n+1), A161705(n)]` -/
def P1061323880400595297.Spec : Prop :=
  ∀ n, (P1061323880400595297.a n : ℤ) = A142899 (n + 1)

end A142899

/-! ## A142899.P5364999329175203772

`∩[A045447(n+1), A239129(n+1)+2]`
-/

namespace A142899.P5364999329175203772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142899.P5364999329175203772

namespace A142899

/-- `∩[A045447(n+1), A239129(n+1)+2]` -/
def P5364999329175203772.Spec : Prop :=
  ∀ n, (P5364999329175203772.a n : ℤ) = A142899 (n + 1)

end A142899

/-! ## A142899.P5685946245839922342

`∩[A045458(n+1), A239129(n+1)+2]`
-/

namespace A142899.P5685946245839922342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142899.P5685946245839922342

namespace A142899

/-- `∩[A045458(n+1), A239129(n+1)+2]` -/
def P5685946245839922342.Spec : Prop :=
  ∀ n, (P5685946245839922342.a n : ℤ) = A142899 (n + 1)

end A142899

/-! ## A142899.P9311501180755376530

`record[A020639(63*n+19)]`
-/

namespace A142899.P9311501180755376530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (63 * n + 19)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142899.P9311501180755376530

namespace A142899

/-- `record[A020639(63*n+19)]` -/
def P9311501180755376530.Spec : Prop :=
  ∀ n, P9311501180755376530.a n = A142899 (n + 1)

end A142899

/-! ## A142899.P15289001593483340715

`filter[A258016(3*n+1), A010051(#)]`
-/

namespace A142899.P15289001593483340715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258016 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A142899.P15289001593483340715

namespace A142899

/-- `filter[A258016(3*n+1), A010051(#)]` -/
def P15289001593483340715.Spec : Prop :=
  ∀ n, P15289001593483340715.a n = A142899 (n + 1)

end A142899

