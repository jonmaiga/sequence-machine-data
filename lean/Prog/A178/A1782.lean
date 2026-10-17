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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
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
import Seq.B003.C005
import Seq.B004.C000
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
import Seq.Opaque.C026

/-!
# A178205: a(n) = a(n-1) + 10*a(n-3) for n > 2; a(0) = a(1) = a(2) = 1.

The programs for A178205, the canonical program `A178205.P2908304642192682746` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178205 has offset 0).

The definition of A178205 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+10*a(n-3)` (program `A178205.P2908304642192682746`, by `A178205.P2908304642192682746.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A178205.P2908304642192682746

`a(n-1)+10*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A178205

/-- `a(n-1)+10*a(n-3)` -/
def P2908304642192682746.Spec : Prop :=
  ∀ n, (P2908304642192682746.a n : ℤ) = A178205 n

theorem P2908304642192682746.correct : P2908304642192682746.Spec := by
  intro n
  simp only [A178205]

end A178205

/-! ## A178205.P7621004577655034596

`a(n-1)+lcm(10, a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A178205.P7621004577655034596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) + Nat.lcm 10 (a (n - 3))

end

end A178205.P7621004577655034596

namespace A178205

/-- `a(n-1)+lcm(10, a(n-3))` -/
def P7621004577655034596.Spec : Prop :=
  ∀ n, (P7621004577655034596.a n : ℤ) = A178205 n

end A178205

/-! ## A178205.P900256513066487072

`A193515(A028310(n)+A000217(n+8))`
-/

namespace A178205.P900256513066487072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193515 (A028310 n + A000217 (n + 8)).toNat

end

end A178205.P900256513066487072

namespace A178205

/-- `A193515(A028310(n)+A000217(n+8))` -/
def P900256513066487072.Spec : Prop :=
  ∀ n, P900256513066487072.a n = A178205 n

end A178205

/-!
# A178207: a(n) = 4*n - 2*A000120(n) + 1 where A000120(n) = number of nonzero digits in the binary representation of n.

The programs for A178207, the canonical program `A178207.P6849069651503940150` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178207 has offset 0).

The definition of A178207 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178207.P13873675123326426526

`2*n+a(floor(n/2))` with `a(0)=1`
-/

namespace A178207.P13873675123326426526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * n + a ⌊(n : ℚ) / 2⌋.toNat

end

end A178207.P13873675123326426526

namespace A178207

/-- `2*n+a(floor(n/2))` -/
def P13873675123326426526.Spec : Prop :=
  ∀ n, (P13873675123326426526.a n : ℤ) = A178207 n

end A178207

/-! ## A178207.P6849069651503940150

`4*n-2*A000120(n)+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A178207

/-- `4*n-2*A000120(n)+1` -/
def P6849069651503940150.Spec : Prop :=
  ∀ n, P6849069651503940150.a n = A178207 n

theorem P6849069651503940150.correct : P6849069651503940150.Spec := by
  intro n
  simp only [A178207]

end A178207

/-! ## A178207.P1054349316637326684

`a(floor(n/2))+n+n` with `a(0)=1`
-/

namespace A178207.P1054349316637326684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + n + n

end

end A178207.P1054349316637326684

namespace A178207

/-- `a(floor(n/2))+n+n` -/
def P1054349316637326684.Spec : Prop :=
  ∀ n, (P1054349316637326684.a n : ℤ) = A178207 n

end A178207

/-! ## A178207.P5488445291950234602

`record[val(n², 2)-a(n-1)]` with `a(0)=1`
-/

namespace A178207.P5488445291950234602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (SequenceMachineLib.valuation (n ^ 2) 2 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178207.P5488445291950234602

namespace A178207

/-- `record[val(n², 2)-a(n-1)]` -/
def P5488445291950234602.Spec : Prop :=
  ∀ n, P5488445291950234602.a n = A178207 n

end A178207

/-! ## A178207.P1739284408521979212

`2*∑[∏{e}[xor(n, -n), #]]-1`
-/

namespace A178207.P1739284408521979212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 1

end

end A178207.P1739284408521979212

namespace A178207

/-- `2*∑[∏{e}[xor(n, -n), #]]-1` -/
def P1739284408521979212.Spec : Prop :=
  ∀ n, P1739284408521979212.a n = A178207 n

end A178207

/-! ## A178207.P2922856120325157972

`2*record[val(n, 2)-a(n-1)]-1` with `a(0)=1`
-/

namespace A178207.P2922856120325157972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (SequenceMachineLib.valuation n 2 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A178207.P2922856120325157972

namespace A178207

/-- `2*record[val(n, 2)-a(n-1)]-1` -/
def P2922856120325157972.Spec : Prop :=
  ∀ n, P2922856120325157972.a n = A178207 n

end A178207

/-! ## A178207.P13358883536700747285

`2*A005187(n)+1`
-/

namespace A178207.P13358883536700747285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005187 n + 1

end

end A178207.P13358883536700747285

namespace A178207

/-- `2*A005187(n)+1` -/
def P13358883536700747285.Spec : Prop :=
  ∀ n, P13358883536700747285.a n = A178207 n

end A178207

/-! ## A178207.P16353791107256466298

`2*A101925(n)-1`
-/

namespace A178207.P16353791107256466298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101925 n - 1

end

end A178207.P16353791107256466298

namespace A178207

/-- `2*A101925(n)-1` -/
def P16353791107256466298.Spec : Prop :=
  ∀ n, P16353791107256466298.a n = A178207 n

end A178207

/-! ## A178207.P8534747517895277846

`2*comp[A055938(n+1)]+1`
-/

namespace A178207.P8534747517895277846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A178207.P8534747517895277846

namespace A178207

/-- `2*comp[A055938(n+1)]+1` -/
def P8534747517895277846.Spec : Prop :=
  ∀ n, (P8534747517895277846.a n : ℤ) = A178207 n

end A178207

/-! ## A178207.P16172843712802128395

`2*∑[val(A255177(n), 2)]+1`
-/

namespace A178207.P16172843712802128395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A255177 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A178207.P16172843712802128395

namespace A178207

/-- `2*∑[val(A255177(n), 2)]+1` -/
def P16172843712802128395.Spec : Prop :=
  ∀ n, (P16172843712802128395.a n : ℤ) = A178207 n

end A178207

/-! ## A178207.P9238691235569111042

`A378992(2*n)+2*n+1`
-/

namespace A178207.P9238691235569111042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378992 (2 * n) + (2 * n + 1 : ℤ)

end

end A178207.P9238691235569111042

namespace A178207

/-- `A378992(2*n)+2*n+1` -/
def P9238691235569111042.Spec : Prop :=
  ∀ n, P9238691235569111042.a n = A178207 n

end A178207

/-! ## A178207.P4646423731877954558

`A101925(n)+A005187(n)`
-/

namespace A178207.P4646423731877954558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101925 n + A005187 n

end

end A178207.P4646423731877954558

namespace A178207

/-- `A101925(n)+A005187(n)` -/
def P4646423731877954558.Spec : Prop :=
  ∀ n, P4646423731877954558.a n = A178207 n

end A178207

/-! ## A178207.P3756807900269091626

`∑[A004277(val(A004277(n), 2))]`
-/

namespace A178207.P3756807900269091626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.valuation (A004277 n).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178207.P3756807900269091626

namespace A178207

/-- `∑[A004277(val(A004277(n), 2))]` -/
def P3756807900269091626.Spec : Prop :=
  ∀ n, P3756807900269091626.a n = A178207 n

end A178207

/-! ## A178207.P14042122784609916634

`A120738(n)+1-A000120(n)`
-/

namespace A178207.P14042122784609916634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120738 n + (1 - A000120 n)

end

end A178207.P14042122784609916634

namespace A178207

/-- `A120738(n)+1-A000120(n)` -/
def P14042122784609916634.Spec : Prop :=
  ∀ n, P14042122784609916634.a n = A178207 n

end A178207

/-! ## A178207.P3847147626239427699

`A016813(n)-2*A000120(n)`
-/

namespace A178207.P3847147626239427699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - 2 * A000120 n

end

end A178207.P3847147626239427699

namespace A178207

/-- `A016813(n)-2*A000120(n)` -/
def P3847147626239427699.Spec : Prop :=
  ∀ n, P3847147626239427699.a n = A178207 n

end A178207

/-! ## A178207.P407759921007188382

`A005187(Δ[n²])-A000120(n)`
-/

namespace A178207.P407759921007188382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A000120 n

end

end A178207.P407759921007188382

namespace A178207

/-- `A005187(Δ[n²])-A000120(n)` -/
def P407759921007188382.Spec : Prop :=
  ∀ n, P407759921007188382.a n = A178207 n

end A178207

/-! ## A178207.P10558637107239634460

`A086343(n+1)-(A000120(n)+1)`
-/

namespace A178207.P10558637107239634460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086343 (n + 1) - (A000120 n + 1)

end

end A178207.P10558637107239634460

namespace A178207

/-- `A086343(n+1)-(A000120(n)+1)` -/
def P10558637107239634460.Spec : Prop :=
  ∀ n, P10558637107239634460.a n = A178207 n

end A178207

/-! ## A178207.P11404440239641303057

`A086343(n+1)-A063787(n+1)`
-/

namespace A178207.P11404440239641303057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086343 (n + 1) - A063787 (n + 1)

end

end A178207.P11404440239641303057

namespace A178207

/-- `A086343(n+1)-A063787(n+1)` -/
def P11404440239641303057.Spec : Prop :=
  ∀ n, P11404440239641303057.a n = A178207 n

end A178207

/-! ## A178207.P7747647707105449315

`A005187(n+1)+A005187(n)-A007814(n+1)`
-/

namespace A178207.P7747647707105449315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1) + (A005187 n - A007814 (n + 1))

end

end A178207.P7747647707105449315

namespace A178207

/-- `A005187(n+1)+A005187(n)-A007814(n+1)` -/
def P7747647707105449315.Spec : Prop :=
  ∀ n, P7747647707105449315.a n = A178207 n

end A178207

/-!
# A178208: Number of ways to choose three points in an (n X n)-grid (or geoplane).

The programs for A178208, the canonical program `A178208.P1243504105263405552` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178208 has offset 1).

The definition of A178208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178208.P4614637256198532354

`A000938(n+1)+A045996(n+1)`
-/

namespace A178208.P4614637256198532354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000938 (n + 1) + A045996 (n + 1)

end

end A178208.P4614637256198532354

namespace A178208

/-- `A000938(n+1)+A045996(n+1)` -/
def P4614637256198532354.Spec : Prop :=
  ∀ n, P4614637256198532354.a n = A178208 (n + 1)

end A178208

/-! ## A178208.P1243504105263405552

`C((n+1)², 3)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A178208

/-- `C((n+1)², 3)` -/
def P1243504105263405552.Spec : Prop :=
  ∀ n, (P1243504105263405552.a n : ℤ) = A178208 (n + 1)

theorem P1243504105263405552.correct : P1243504105263405552.Spec := by
  intro n
  simp only [A178208, Nat.add_sub_cancel]

end A178208

/-! ## A178208.P12430202696998168993

`∑[abs(Δ[C(n², 3)])]`
-/

namespace A178208.P12430202696998168993
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178208.P12430202696998168993

namespace A178208

/-- `∑[abs(Δ[C(n², 3)])]` -/
def P12430202696998168993.Spec : Prop :=
  ∀ n, P12430202696998168993.a n = A178208 (n + 1)

end A178208

/-! ## A178208.P5502536411543629955

`lcm(2, C(∑[2*n+1], 3))`
-/

namespace A178208.P5502536411543629955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 3)

end

end A178208.P5502536411543629955

namespace A178208

/-- `lcm(2, C(∑[2*n+1], 3))` -/
def P5502536411543629955.Spec : Prop :=
  ∀ n, (P5502536411543629955.a n : ℤ) = A178208 (n + 1)

end A178208

/-! ## A178208.P11617374223567289

`∑[∑[5*n^4-n²]]`
-/

namespace A178208.P11617374223567289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n ^ 4 : ℤ) - (n ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178208.P11617374223567289

namespace A178208

/-- `∑[∑[5*n^4-n²]]` -/
def P11617374223567289.Spec : Prop :=
  ∀ n, P11617374223567289.a n = A178208 (n + 1)

end A178208

/-! ## A178208.P13655557168618096777

`or(1, C((n+1)^2, 3))-1`
-/

namespace A178208.P13655557168618096777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (Nat.choose ((n + 1) ^ 2) 3) : ℤ) - 1

end

end A178208.P13655557168618096777

namespace A178208

/-- `or(1, C((n+1)^2, 3))-1` -/
def P13655557168618096777.Spec : Prop :=
  ∀ n, P13655557168618096777.a n = A178208 (n + 1)

end A178208

/-! ## A178208.P11470772707728301481

`record[C(floor(n/4)^gcd(2, n), 3)]`
-/

namespace A178208.P11470772707728301481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌊(n : ℚ) / 4⌋ ^ Nat.gcd 2 n).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178208.P11470772707728301481

namespace A178208

/-- `record[C(floor(n/4)^gcd(2, n), 3)]` -/
def P11470772707728301481.Spec : Prop :=
  ∀ n, (P11470772707728301481.a n : ℤ) = A178208 (n + 1)

end A178208

/-! ## A178208.P16174793530804304420

`C(∑[2*n+1], 3)+C(n, n+1)`
-/

namespace A178208.P16174793530804304420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 3 + Nat.choose n (n + 1)

end

end A178208.P16174793530804304420

namespace A178208

/-- `C(∑[2*n+1], 3)+C(n, n+1)` -/
def P16174793530804304420.Spec : Prop :=
  ∀ n, (P16174793530804304420.a n : ℤ) = A178208 (n + 1)

end A178208

/-! ## A178208.P14959490172521294179

`4*A337899(n+1)`
-/

namespace A178208.P14959490172521294179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A337899 (n + 1)

end

end A178208.P14959490172521294179

namespace A178208

/-- `4*A337899(n+1)` -/
def P14959490172521294179.Spec : Prop :=
  ∀ n, P14959490172521294179.a n = A178208 (n + 1)

end A178208

/-! ## A178208.P1585673795859514310

`∑[∑[n]]*A242135(n+1)`
-/

namespace A178208.P1585673795859514310
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A242135 (n + 1)

end

end A178208.P1585673795859514310

namespace A178208

/-- `∑[∑[n]]*A242135(n+1)` -/
def P1585673795859514310.Spec : Prop :=
  ∀ n, P1585673795859514310.a n = A178208 (n + 1)

end A178208

/-! ## A178208.P9209089155481910239

`∑[A003215(n)-2]*∑[∑[n]]`
-/

namespace A178208.P9209089155481910239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n - 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A178208.P9209089155481910239

namespace A178208

/-- `∑[A003215(n)-2]*∑[∑[n]]` -/
def P9209089155481910239.Spec : Prop :=
  ∀ n, P9209089155481910239.a n = A178208 (n + 1)

end A178208

/-! ## A178208.P14538253805427293607

`2*(n+1)*A201106(n+1)`
-/

namespace A178208.P14538253805427293607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A201106 (n + 1))

end

end A178208.P14538253805427293607

namespace A178208

/-- `2*(n+1)*A201106(n+1)` -/
def P14538253805427293607.Spec : Prop :=
  ∀ n, P14538253805427293607.a n = A178208 (n + 1)

end A178208

/-! ## A178208.P13624973024237570798

`(A126420(n+1)-n)*∑[∑[n]]`
-/

namespace A178208.P13624973024237570798
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A126420 (n + 1) - (n : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A178208.P13624973024237570798

namespace A178208

/-- `(A126420(n+1)-n)*∑[∑[n]]` -/
def P13624973024237570798.Spec : Prop :=
  ∀ n, P13624973024237570798.a n = A178208 (n + 1)

end A178208

/-! ## A178208.P15989291828318154906

`((n+1)²-2)*A008911(n+1)`
-/

namespace A178208.P15989291828318154906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) - 2) * A008911 (n + 1)

end

end A178208.P15989291828318154906

namespace A178208

/-- `((n+1)²-2)*A008911(n+1)` -/
def P15989291828318154906.Spec : Prop :=
  ∀ n, P15989291828318154906.a n = A178208 (n + 1)

end A178208

/-! ## A178208.P4029987528046252430

`A103517(n)*A201106(n+1)`
-/

namespace A178208.P4029987528046252430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n * A201106 (n + 1)

end

end A178208.P4029987528046252430

namespace A178208

/-- `A103517(n)*A201106(n+1)` -/
def P4029987528046252430.Spec : Prop :=
  ∀ n, P4029987528046252430.a n = A178208 (n + 1)

end A178208

/-! ## A178208.P35071026679282494

`A288961(n+1)+A279437(n+1)`
-/

namespace A178208.P35071026679282494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288961 (n + 1) + A279437 (n + 1)

end

end A178208.P35071026679282494

namespace A178208

/-- `A288961(n+1)+A279437(n+1)` -/
def P35071026679282494.Spec : Prop :=
  ∀ n, P35071026679282494.a n = A178208 (n + 1)

end A178208

/-! ## A178208.P12266238259644075754

`A288959(n+1)-A109764(n+1)`
-/

namespace A178208.P12266238259644075754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288959 (n + 1) - A109764 (n + 1)

end

end A178208.P12266238259644075754

namespace A178208

/-- `A288959(n+1)-A109764(n+1)` -/
def P12266238259644075754.Spec : Prop :=
  ∀ n, P12266238259644075754.a n = A178208 (n + 1)

end A178208

/-! ## A178208.P1591795190152036891

`A163300(n+1)*A201106(n+1)`
-/

namespace A178208.P1591795190152036891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1) * A201106 (n + 1)

end

end A178208.P1591795190152036891

namespace A178208

/-- `A163300(n+1)*A201106(n+1)` -/
def P1591795190152036891.Spec : Prop :=
  ∀ n, P1591795190152036891.a n = A178208 (n + 1)

end A178208

/-! ## A178208.P11462575043860149460

`A051755(n+2)*A201106(n+1)`
-/

namespace A178208.P11462575043860149460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (n + 2) * A201106 (n + 1)

end

end A178208.P11462575043860149460

namespace A178208

/-- `A051755(n+2)*A201106(n+1)` -/
def P11462575043860149460.Spec : Prop :=
  ∀ n, P11462575043860149460.a n = A178208 (n + 1)

end A178208

/-!
# A178209: Prime(n) such that the sum of decimal digits does not divide the sum of decimal digits of prime(n+1).

The programs for A178209, there is no canonical definition to state claims against.
-/

/-! ## A178209.P12767974608388783424

`A000040(lt[A226646(n+1), A256304(2*n+3)])`
-/

namespace A178209.P12767974608388783424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256304 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A178209.P12767974608388783424

/-! ## A178209.P16021168264688680340

`∩[A076805(n+1), A308078(n+1)]`
-/

namespace A178209.P16021168264688680340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178209.P16021168264688680340

/-! ## A178209.P5941041544122955608

`∩[A308078(n+1), A396301(n+1)]`
-/

namespace A178209.P5941041544122955608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178209.P5941041544122955608

/-! ## A178209.P17275995253058039239

`∩[A308078(n+1), A396303(n+1)]`
-/

namespace A178209.P17275995253058039239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178209.P17275995253058039239

/-! ## A178209.P5786925825139374464

`eq[A280135(n+1), A300223(n+1)]+1`
-/

namespace A178209.P5786925825139374464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A178209.P5786925825139374464

/-!
# A178210: Numbers that are not the sum of squares of distinct composite numbers.

The programs for A178210, there is no canonical definition to state claims against.
-/

/-! ## A178210.P930275856582226164

`lt[A084618(n+1), A275837(A275837(2*n+1))]`
-/

namespace A178210.P930275856582226164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275837 (A275837 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A178210.P930275856582226164

/-! ## A178210.P3188417015534625626

`lt[A128011(n+1), A034699(A000118(n))]`
-/

namespace A178210.P3188417015534625626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A000118 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A178210.P3188417015534625626

/-! ## A178210.P2298404208698559199

`eq[1, A043290(A102450(n+2))]+1`
-/

namespace A178210.P2298404208698559199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043290 (A102450 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A178210.P2298404208698559199

/-! ## A178210.P6688114862776291958

`eq[A043290(A102450(n+1)), A057427(n)]`
-/

namespace A178210.P6688114862776291958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043290 (A102450 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178210.P6688114862776291958

/-! ## A178210.P14939014987275414806

`record[A028310(n)/A043290(A102450(n+1))]`
-/

namespace A178210.P14939014987275414806
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 n : ℚ) / (A043290 (A102450 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178210.P14939014987275414806

/-! ## A178210.P14450712697644206897

`record[(A000007(n)+n)/A043290(A102450(n+1))]`
-/

namespace A178210.P14450712697644206897
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 n + (n : ℤ) : ℚ) / (A043290 (A102450 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178210.P14450712697644206897

/-! ## A178210.P3936199079831826389

`lt[A122198(A122198(n+2)), A122213(n+1)]`
-/

namespace A178210.P3936199079831826389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122198 (A122198 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122213 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A178210.P3936199079831826389

/-!
# A178211: a(n) = prime(n)^2 mod n.

The programs for A178211, the canonical program `A178211.P14444441183906991302` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178211 has offset 1).

The definition of A178211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178211.P14444441183906991302

`A001248(n+1)%(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A178211

/-- `A001248(n+1)%(n+1)` -/
def P14444441183906991302.Spec : Prop :=
  ∀ n, P14444441183906991302.a n = A178211 (n + 1)

theorem P14444441183906991302.correct : P14444441183906991302.Spec := by
  intro n
  simp only [A178211, Nat.add_sub_cancel]

end A178211

/-! ## A178211.P7678025626119705290

`A106587(n+1)%(n+1)`
-/

namespace A178211.P7678025626119705290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106587 (n + 1)) (n + 1 : ℤ)

end

end A178211.P7678025626119705290

namespace A178211

/-- `A106587(n+1)%(n+1)` -/
def P7678025626119705290.Spec : Prop :=
  ∀ n, P7678025626119705290.a n = A178211 (n + 1)

end A178211

/-! ## A178211.P16110012837263246272

`A106588(n+1)%(n+1)`
-/

namespace A178211.P16110012837263246272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106588 (n + 1)) (n + 1 : ℤ)

end

end A178211.P16110012837263246272

namespace A178211

/-- `A106588(n+1)%(n+1)` -/
def P16110012837263246272.Spec : Prop :=
  ∀ n, P16110012837263246272.a n = A178211 (n + 1)

end A178211

/-! ## A178211.P10962465578559850089

`A161522(n+1)%(n+1)`
-/

namespace A178211.P10962465578559850089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161522 (n + 1)) (n + 1 : ℤ)

end

end A178211.P10962465578559850089

namespace A178211

/-- `A161522(n+1)%(n+1)` -/
def P10962465578559850089.Spec : Prop :=
  ∀ n, P10962465578559850089.a n = A178211 (n + 1)

end A178211

/-! ## A178211.P13393508840742728737

`A178445(n+1)%(n+1)`
-/

namespace A178211.P13393508840742728737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178445 (n + 1)) (n + 1 : ℤ)

end

end A178211.P13393508840742728737

namespace A178211

/-- `A178445(n+1)%(n+1)` -/
def P13393508840742728737.Spec : Prop :=
  ∀ n, P13393508840742728737.a n = A178211 (n + 1)

end A178211

/-! ## A178211.P8983109021033333813

`A182174(n+1)%(n+1)`
-/

namespace A178211.P8983109021033333813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182174 (n + 1)) (n + 1 : ℤ)

end

end A178211.P8983109021033333813

namespace A178211

/-- `A182174(n+1)%(n+1)` -/
def P8983109021033333813.Spec : Prop :=
  ∀ n, P8983109021033333813.a n = A178211 (n + 1)

end A178211

/-! ## A178211.P1276400699160482830

`Δ[A007504(n)]²%(n+1)`
-/

namespace A178211.P1276400699160482830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n) ^ 2) (n + 1 : ℤ)

end

end A178211.P1276400699160482830

namespace A178211

/-- `Δ[A007504(n)]²%(n+1)` -/
def P1276400699160482830.Spec : Prop :=
  ∀ n, P1276400699160482830.a n = A178211 (n + 1)

end A178211

/-! ## A178211.P17388573832649915081

`A000040(n+1)²%(n+1)`
-/

namespace A178211.P17388573832649915081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) ^ 2) (n + 1 : ℤ)

end

end A178211.P17388573832649915081

namespace A178211

/-- `A000040(n+1)²%(n+1)` -/
def P17388573832649915081.Spec : Prop :=
  ∀ n, P17388573832649915081.a n = A178211 (n + 1)

end A178211

/-! ## A178211.P17657219249036960281

`(A040976(n+1)+2)²%(n+1)`
-/

namespace A178211.P17657219249036960281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A040976 (n + 1) + 2) ^ 2) (n + 1 : ℤ)

end

end A178211.P17657219249036960281

namespace A178211

/-- `(A040976(n+1)+2)²%(n+1)` -/
def P17657219249036960281.Spec : Prop :=
  ∀ n, P17657219249036960281.a n = A178211 (n + 1)

end A178211

/-! ## A178211.P10069497620829225077

`A280076(n+2)%(n+1)`
-/

namespace A178211.P10069497620829225077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280076 (n + 2)) (n + 1 : ℤ)

end

end A178211.P10069497620829225077

namespace A178211

/-- `A280076(n+2)%(n+1)` -/
def P10069497620829225077.Spec : Prop :=
  ∀ n, P10069497620829225077.a n = A178211 (n + 1)

end A178211

/-! ## A178211.P13051920837379274607

`record[A006530(n+2)²]%(n+1)`
-/

namespace A178211.P13051920837379274607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A178211.P13051920837379274607

namespace A178211

/-- `record[A006530(n+2)²]%(n+1)` -/
def P13051920837379274607.Spec : Prop :=
  ∀ n, P13051920837379274607.a n = A178211 (n + 1)

end A178211

/-! ## A178211.P10304823441663240589

`record[A020639(n+2)²]%(n+1)`
-/

namespace A178211.P10304823441663240589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A178211.P10304823441663240589

namespace A178211

/-- `record[A020639(n+2)²]%(n+1)` -/
def P10304823441663240589.Spec : Prop :=
  ∀ n, P10304823441663240589.a n = A178211 (n + 1)

end A178211

/-! ## A178211.P10637907203237521470

`record[(2*n+1)*A006530(2*n+1)]%(n+1)`
-/

namespace A178211.P10637907203237521470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A006530 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A178211.P10637907203237521470

namespace A178211

/-- `record[(2*n+1)*A006530(2*n+1)]%(n+1)` -/
def P10637907203237521470.Spec : Prop :=
  ∀ n, P10637907203237521470.a n = A178211 (n + 1)

end A178211

/-! ## A178211.P15223118664664086001

`record[(2*n+1)*A020639(2*n+1)]%(n+1)`
-/

namespace A178211.P15223118664664086001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A020639 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A178211.P15223118664664086001

namespace A178211

/-- `record[(2*n+1)*A020639(2*n+1)]%(n+1)` -/
def P15223118664664086001.Spec : Prop :=
  ∀ n, P15223118664664086001.a n = A178211 (n + 1)

end A178211

/-! ## A178211.P11609205549430014442

`A033476(2*n)%(n+1)`
-/

namespace A178211.P11609205549430014442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033476 (2 * n)) (n + 1 : ℤ)

end

end A178211.P11609205549430014442

namespace A178211

/-- `A033476(2*n)%(n+1)` -/
def P11609205549430014442.Spec : Prop :=
  ∀ n, P11609205549430014442.a n = A178211 (n + 1)

end A178211

/-! ## A178211.P14971388430015006866

`record[A135718(n+2)]%(n+1)`
-/

namespace A178211.P14971388430015006866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135718 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A178211.P14971388430015006866

namespace A178211

/-- `record[A135718(n+2)]%(n+1)` -/
def P14971388430015006866.Spec : Prop :=
  ∀ n, P14971388430015006866.a n = A178211 (n + 1)

end A178211

/-! ## A178211.P14957011886124883693

`record[A014963(n+2)²]%(n+1)`
-/

namespace A178211.P14957011886124883693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A178211.P14957011886124883693

namespace A178211

/-- `record[A014963(n+2)²]%(n+1)` -/
def P14957011886124883693.Spec : Prop :=
  ∀ n, P14957011886124883693.a n = A178211 (n + 1)

end A178211

/-! ## A178211.P15762819750076285622

`record[(2*n+1)*A014963(2*n+1)]%(n+1)`
-/

namespace A178211.P15762819750076285622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A014963 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A178211.P15762819750076285622

namespace A178211

/-- `record[(2*n+1)*A014963(2*n+1)]%(n+1)` -/
def P15762819750076285622.Spec : Prop :=
  ∀ n, P15762819750076285622.a n = A178211 (n + 1)

end A178211

/-!
# A178212: 

The programs for A178212, there is no canonical definition to state claims against.
-/

/-! ## A178212.P12019520779398495313

`filter[A033992(n+1), A087049(#)]`
-/

namespace A178212.P12019520779398495313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A178212.P12019520779398495313

/-! ## A178212.P7303647402016703275

`filter[A033992(n+1), A355447(#)]`
-/

namespace A178212.P7303647402016703275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A178212.P7303647402016703275

/-! ## A178212.P2512926448714388235

`filter[A033992(n+1), A379958(#)]`
-/

namespace A178212.P2512926448714388235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A178212.P2512926448714388235

/-! ## A178212.P6789709777545417196

`∩[A033992(n+1), A062171(n+1)]`
-/

namespace A178212.P6789709777545417196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178212.P6789709777545417196

/-! ## A178212.P14938425238885880407

`∩[A033992(n+1), A320632(n+1)]`
-/

namespace A178212.P14938425238885880407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178212.P14938425238885880407

/-! ## A178212.P5225089992856674378

`∩[A376271(n+1), A033992(n+1)]`
-/

namespace A178212.P5225089992856674378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178212.P5225089992856674378

/-! ## A178212.P6806812832373938438

`∩[A379336(n+1), A033992(n+1)]`
-/

namespace A178212.P6806812832373938438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178212.P6806812832373938438

/-! ## A178212.P18377919797037466710

`filter[A214195(n+1), A355447(#)]`
-/

namespace A178212.P18377919797037466710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A178212.P18377919797037466710

/-! ## A178212.P17325460639216296038

`filter[A214195(n+1), A379958(#)]`
-/

namespace A178212.P17325460639216296038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A178212.P17325460639216296038

/-! ## A178212.P11942218652438322425

`filter[A214195(n+2), A087049(#)]`
-/

namespace A178212.P11942218652438322425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A178212.P11942218652438322425

/-! ## A178212.P938241704032398939

`∩[A062171(n+1), A214195(n+1)]`
-/

namespace A178212.P938241704032398939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178212.P938241704032398939

/-! ## A178212.P8089838666183647079

`∩[A214195(n+1), A320632(n+1)]`
-/

namespace A178212.P8089838666183647079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178212.P8089838666183647079

/-! ## A178212.P10091030493663583221

`∩[A376271(n+1), A214195(n+1)]`
-/

namespace A178212.P10091030493663583221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178212.P10091030493663583221

/-! ## A178212.P17883699420765027208

`∩[A379336(n+1), A214195(n+1)]`
-/

namespace A178212.P17883699420765027208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178212.P17883699420765027208

/-! ## A178212.P6440172993712768001

`∩[A033987(n+1), A033992(n+1)]`
-/

namespace A178212.P6440172993712768001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178212.P6440172993712768001

/-! ## A178212.P2908548215329645451

`∩[A033987(n+1), A214195(n+1)]`
-/

namespace A178212.P2908548215329645451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178212.P2908548215329645451

/-! ## A178212.P1427518022574155419

`∩[A033992(n+1), A126706(n+1)]`
-/

namespace A178212.P1427518022574155419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178212.P1427518022574155419

/-! ## A178212.P3259268678684981821

`∩[A126706(n+1), A214195(n+1)]`
-/

namespace A178212.P3259268678684981821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178212.P3259268678684981821

/-! ## A178212.P6765570989075794901

`∩[A033992(n+1), A049199(n+1)]`
-/

namespace A178212.P6765570989075794901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178212.P6765570989075794901

/-! ## A178212.P13150233677450696282

`∩[A049199(n+1), A214195(n+1)]`
-/

namespace A178212.P13150233677450696282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178212.P13150233677450696282

/-!
# A178215: a(n) is the least number such that the set {p_1,p_2,...,p_a(n)} contains all residues modulo p_n (where p_m is m-th prime).

The programs for A178215, there is no canonical definition to state claims against.
-/

/-! ## A178215.P11725677221053431824

`A000720(A340752(n+1))`
-/

namespace A178215.P11725677221053431824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A340752 (n + 1)).toNat

end

end A178215.P11725677221053431824

/-! ## A178215.P8687191701298420847

`A061395(p?[A340752(n+1)])`
-/

namespace A178215.P8687191701298420847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A178215.P8687191701298420847

/-! ## A178215.P477967898922099547

`A061395(or(1, A340752(n+1)))`
-/

namespace A178215.P477967898922099547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A340752 (n + 1))).toNat

end

end A178215.P477967898922099547

/-! ## A178215.P17934619773338612764

`∑{d}[A340752(n+1), A061395(#)]`
-/

namespace A178215.P17934619773338612764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A178215.P17934619773338612764

/-! ## A178215.P11259486894475572119

`A061395(∑{p}[A340752(n+1), #])`
-/

namespace A178215.P11259486894475572119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A178215.P11259486894475572119

/-! ## A178215.P4897514327665511162

`A061395(∏{p}[A340752(n+1), #])`
-/

namespace A178215.P4897514327665511162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A178215.P4897514327665511162

/-! ## A178215.P2967005312836303926

`A000720(A038026(Δ[A007504(n)]))`
-/

namespace A178215.P2967005312836303926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A038026 (f1 (n + 1) - f1 n).toNat).toNat

end

end A178215.P2967005312836303926

/-! ## A178215.P18176747021727597965

`A000720(A038026(A000040(n+1)))`
-/

namespace A178215.P18176747021727597965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A038026 (A000040 (n + 1)).toNat).toNat

end

end A178215.P18176747021727597965

/-! ## A178215.P17283611600346359329

`A000720(A038026(A008578(n+2)))`
-/

namespace A178215.P17283611600346359329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A038026 (A008578 (n + 2)).toNat).toNat

end

end A178215.P17283611600346359329

/-! ## A178215.P17646404401070681566

`A061395(A340752(n+1)%A053185(n+1))`
-/

namespace A178215.P17646404401070681566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A340752 (n + 1)) (A053185 (n + 1))).toNat

end

end A178215.P17646404401070681566

/-! ## A178215.P3995324855170686645

`A297109(A340752(2*n+1-n))`
-/

namespace A178215.P3995324855170686645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (A340752 (2 * n + 1 - n)).toNat

end

end A178215.P3995324855170686645

/-!
# A178216: a(n) = prime(A178215(n)) mod prime(n).

The programs for A178216, there is no canonical definition to state claims against.
-/

/-! ## A178216.P1877771716983320079

`A038025(p?[xor(1, n)])`
-/

namespace A178216.P1877771716983320079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038025 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A178216.P1877771716983320079

/-! ## A178216.P4843252636239912814

`A038025(Δ[A007504(n)])`
-/

namespace A178216.P4843252636239912814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038025 (f1 (n + 1) - f1 n).toNat

end

end A178216.P4843252636239912814

/-! ## A178216.P10712885082655355445

`A038025(p?[A259153(n)])`
-/

namespace A178216.P10712885082655355445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038025 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A178216.P10712885082655355445

/-! ## A178216.P14389125358028394974

`A038025(A000040(n+1))`
-/

namespace A178216.P14389125358028394974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038025 (A000040 (n + 1)).toNat

end

end A178216.P14389125358028394974

/-! ## A178216.P15791983447621885237

`A038025(A006005(n+1))`
-/

namespace A178216.P15791983447621885237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038025 (A006005 (n + 1)).toNat

end

end A178216.P15791983447621885237

/-! ## A178216.P10461723508647211649

`A038025(A095320(n+1))`
-/

namespace A178216.P10461723508647211649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038025 (A095320 (n + 1)).toNat

end

end A178216.P10461723508647211649

/-! ## A178216.P16086420850043572263

`A038025(A176997(n+1))`
-/

namespace A178216.P16086420850043572263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038025 (A176997 (n + 1)).toNat

end

end A178216.P16086420850043572263

/-! ## A178216.P5965001060248616987

`A038025(A216883(n+1))`
-/

namespace A178216.P5965001060248616987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038025 (A216883 (n + 1)).toNat

end

end A178216.P5965001060248616987

/-! ## A178216.P16999829557816396992

`A038025(A216884(n+1))`
-/

namespace A178216.P16999829557816396992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038025 (A216884 (n + 1)).toNat

end

end A178216.P16999829557816396992

/-! ## A178216.P11109649731014306181

`A038025(A216885(n+1))`
-/

namespace A178216.P11109649731014306181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038025 (A216885 (n + 1)).toNat

end

end A178216.P11109649731014306181

/-!
# A178218: Numbers of the form 2k^2-2k+1 or 2k^2-1.

The programs for A178218, the canonical program `A178218.P10268855387188746672` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178218 has offset 1).

The definition of A178218 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178218.P10268855387188746672

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=5, a(2)=7, a(3)=13`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A178218

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P10268855387188746672.Spec : Prop :=
  ∀ n, P10268855387188746672.a n = A178218 (n + 1)

theorem P10268855387188746672.correct : P10268855387188746672.Spec := by
  intro n
  simp only [A178218, Nat.add_sub_cancel]

end A178218

/-! ## A178218.P245755708120800654

`or(1, ∑[or(1, n+1)])`
-/

namespace A178218.P245755708120800654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178218.P245755708120800654

namespace A178218

/-- `or(1, ∑[or(1, n+1)])` -/
def P245755708120800654.Spec : Prop :=
  ∀ n, (P245755708120800654.a n : ℤ) = A178218 (n + 1)

end A178218

/-! ## A178218.P13842195091283411257

`∑[a(n-2)+2]` with `a(0)=1, a(1)=4, a(2)=2`
-/

namespace A178218.P13842195091283411257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 2] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178218.P13842195091283411257

namespace A178218

/-- `∑[a(n-2)+2]` -/
def P13842195091283411257.Spec : Prop :=
  ∀ n, (P13842195091283411257.a n : ℤ) = A178218 (n + 1)

end A178218

/-! ## A178218.P10913730773344214007

`record[xor(1, ceil(n²/2))-n]`
-/

namespace A178218.P10913730773344214007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌈(n ^ 2 : ℚ) / 2⌉ - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178218.P10913730773344214007

namespace A178218

/-- `record[xor(1, ceil(n²/2))-n]` -/
def P10913730773344214007.Spec : Prop :=
  ∀ n, P10913730773344214007.a n = A178218 (n + 1)

end A178218

/-! ## A178218.P15393757109198627284

`∑[n]+3*ceil(n/2)+1`
-/

namespace A178218.P15393757109198627284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (3 * ⌈(n : ℚ) / 2⌉ + 1)

end

end A178218.P15393757109198627284

namespace A178218

/-- `∑[n]+3*ceil(n/2)+1` -/
def P15393757109198627284.Spec : Prop :=
  ∀ n, P15393757109198627284.a n = A178218 (n + 1)

end A178218

/-! ## A178218.P9548451899830896490

`or(1, floor((n+1)*(n+3)/2))`
-/

namespace A178218.P9548451899830896490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(n + 1 : ℚ) * ((n + 3 : ℚ) / 2)⌋

end

end A178218.P9548451899830896490

namespace A178218

/-- `or(1, floor((n+1)*(n+3)/2))` -/
def P9548451899830896490.Spec : Prop :=
  ∀ n, P9548451899830896490.a n = A178218 (n + 1)

end A178218

/-! ## A178218.P11216757622447401210

`ceil(xor(1, (n+1)*(n+3))/2)`
-/

namespace A178218.P11216757622447401210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 ((n + 1) * (n + 3)) : ℚ) / 2⌉

end

end A178218.P11216757622447401210

namespace A178218

/-- `ceil(xor(1, (n+1)*(n+3))/2)` -/
def P11216757622447401210.Spec : Prop :=
  ∀ n, P11216757622447401210.a n = A178218 (n + 1)

end A178218

/-! ## A178218.P10835954498764277914

`round(xor(1, (n+1)*(n+3))/2)`
-/

namespace A178218.P10835954498764277914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 ((n + 1) * (n + 3)) : ℚ) / 2)

end

end A178218.P10835954498764277914

namespace A178218

/-- `round(xor(1, (n+1)*(n+3))/2)` -/
def P10835954498764277914.Spec : Prop :=
  ∀ n, P10835954498764277914.a n = A178218 (n + 1)

end A178218

/-! ## A178218.P4116448891737566800

`record[5-or(3, n*(4-n))]/2`
-/

namespace A178218.P4116448891737566800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - Int.lor 3 ((n : ℤ) * (4 - (n : ℤ)))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A178218.P4116448891737566800

namespace A178218

/-- `record[5-or(3, n*(4-n))]/2` -/
def P4116448891737566800.Spec : Prop :=
  ∀ n, P4116448891737566800.a n = (A178218 (n + 1) : ℚ)

end A178218

/-! ## A178218.P9279160282628457420

`Δ[a(n-2)+n²+n]` with `a(0)=1, a(1)=2`
-/

namespace A178218.P9279160282628457420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + (n ^ 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A178218.P9279160282628457420

namespace A178218

/-- `Δ[a(n-2)+n²+n]` -/
def P9279160282628457420.Spec : Prop :=
  ∀ n, P9279160282628457420.a n = A178218 (n + 1)

end A178218

/-! ## A178218.P6070427734339343919

`∑[2-(a(n-1)-2*n)]` with `a(0)=1, a(1)=4`
-/

namespace A178218.P6070427734339343919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  2 - (f1 (n - 1) - (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178218.P6070427734339343919

namespace A178218

/-- `∑[2-(a(n-1)-2*n)]` -/
def P6070427734339343919.Spec : Prop :=
  ∀ n, P6070427734339343919.a n = A178218 (n + 1)

end A178218

/-! ## A178218.P711894397528036182

`record[(n-1)*(n-2)-a(n-1)]` with `a(0)=1`
-/

namespace A178218.P711894397528036182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n : ℤ) - 1) * ((n : ℤ) - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178218.P711894397528036182

namespace A178218

/-- `record[(n-1)*(n-2)-a(n-1)]` -/
def P711894397528036182.Spec : Prop :=
  ∀ n, P711894397528036182.a n = A178218 (n + 1)

end A178218

/-! ## A178218.P13850548656104215373

`record[n-2-(a(n-1)-(2-n)²)]` with `a(0)=1`
-/

namespace A178218.P13850548656104215373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) - 2 - (f1 (n - 1) - (2 - (n : ℤ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178218.P13850548656104215373

namespace A178218

/-- `record[n-2-(a(n-1)-(2-n)²)]` -/
def P13850548656104215373.Spec : Prop :=
  ∀ n, P13850548656104215373.a n = A178218 (n + 1)

end A178218

/-! ## A178218.P15512036052163695611

`Δ[A014112(n+1)]`
-/

namespace A178218.P15512036052163695611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178218.P15512036052163695611

namespace A178218

/-- `Δ[A014112(n+1)]` -/
def P15512036052163695611.Spec : Prop :=
  ∀ n, P15512036052163695611.a n = A178218 (n + 1)

end A178218

/-! ## A178218.P8946040448535809813

`∑[2-A280193(n)+n]`
-/

namespace A178218.P8946040448535809813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A280193 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178218.P8946040448535809813

namespace A178218

/-- `∑[2-A280193(n)+n]` -/
def P8946040448535809813.Spec : Prop :=
  ∀ n, P8946040448535809813.a n = A178218 (n + 1)

end A178218

/-! ## A178218.P10185523301446876320

`∑[A004275(A052938(n))]`
-/

namespace A178218.P10185523301446876320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178218.P10185523301446876320

namespace A178218

/-- `∑[A004275(A052938(n))]` -/
def P10185523301446876320.Spec : Prop :=
  ∀ n, P10185523301446876320.a n = A178218 (n + 1)

end A178218

/-! ## A178218.P8653242388485351827

`xor(A000035(n), A074148(n+1))`
-/

namespace A178218.P8653242388485351827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 n) (A074148 (n + 1))

end

end A178218.P8653242388485351827

namespace A178218

/-- `xor(A000035(n), A074148(n+1))` -/
def P8653242388485351827.Spec : Prop :=
  ∀ n, P8653242388485351827.a n = A178218 (n + 1)

end A178218

/-! ## A178218.P5042347450496475063

`A212975(n+1)/(n+2)`
-/

namespace A178218.P5042347450496475063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212975 (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A178218.P5042347450496475063

namespace A178218

/-- `A212975(n+1)/(n+2)` -/
def P5042347450496475063.Spec : Prop :=
  ∀ n, P5042347450496475063.a n = (A178218 (n + 1) : ℚ)

end A178218

/-! ## A178218.P15983019348535864934

`∑[A004277(A028242(n+1))]`
-/

namespace A178218.P15983019348535864934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A028242 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178218.P15983019348535864934

namespace A178218

/-- `∑[A004277(A028242(n+1))]` -/
def P15983019348535864934.Spec : Prop :=
  ∀ n, P15983019348535864934.a n = A178218 (n + 1)

end A178218

/-!
# A178219: a(0)=a(1)=a(2)=0, a(3)=1; thereafter a(n) = 4a(n-3)-5a(n-4).

The programs for A178219, the canonical program `A178219.P10615387683729498343` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178219 has offset 0).

The definition of A178219 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-3)-5*a(n-4)` (program `A178219.P10615387683729498343`, by `A178219.P10615387683729498343.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A178219.P10615387683729498343

`4*a(n-3)-5*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A178219

/-- `4*a(n-3)-5*a(n-4)` -/
def P10615387683729498343.Spec : Prop :=
  ∀ n, P10615387683729498343.a n = A178219 n

theorem P10615387683729498343.correct : P10615387683729498343.Spec := by
  intro n
  simp only [A178219]

end A178219

/-!
# A178220: Smallest number that appending to n-th prime gives another prime.

The programs for A178220, there is no canonical definition to state claims against.
-/

/-! ## A178220.P13640945192359646728

`A068695(p?[comp[n²]])`
-/

namespace A178220.P13640945192359646728
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A178220.P13640945192359646728

/-! ## A178220.P12782388975701705272

`A091088(p?[comp[n²]])`
-/

namespace A178220.P12782388975701705272
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A178220.P12782388975701705272

/-! ## A178220.P3633823949865802829

`A068695(Δ[A007504(n)])`
-/

namespace A178220.P3633823949865802829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (f1 (n + 1) - f1 n).toNat

end

end A178220.P3633823949865802829

/-! ## A178220.P10687556700981977557

`A091088(Δ[A007504(n)])`
-/

namespace A178220.P10687556700981977557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 (f1 (n + 1) - f1 n).toNat

end

end A178220.P10687556700981977557

/-! ## A178220.P17066245964224161381

`A068695(A000040(n+1))`
-/

namespace A178220.P17066245964224161381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (A000040 (n + 1)).toNat

end

end A178220.P17066245964224161381

/-! ## A178220.P10180271562758822499

`A091088(A171577(n+1))`
-/

namespace A178220.P10180271562758822499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 (A171577 (n + 1)).toNat

end

end A178220.P10180271562758822499

/-! ## A178220.P13475698004969055478

`A068695(A008578(n+2))`
-/

namespace A178220.P13475698004969055478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (A008578 (n + 2)).toNat

end

end A178220.P13475698004969055478

/-! ## A178220.P15822459309454536809

`A068695(A182986(n+2))`
-/

namespace A178220.P15822459309454536809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (A182986 (n + 2)).toNat

end

end A178220.P15822459309454536809

/-! ## A178220.P15741406878193797519

`A068695(A324050(n+2))`
-/

namespace A178220.P15741406878193797519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (A324050 (n + 2)).toNat

end

end A178220.P15741406878193797519

/-!
# A178222: Partial sums of floor(3^n/4).

The programs for A178222, the canonical program `A178222.P7381636976877857273` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178222 has offset 1).

The definition of A178222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178222.P7381636976877857273

`∑[floor(∑[3^n/2])]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A178222

/-- `∑[floor(∑[3^n/2])]` -/
def P7381636976877857273.Spec : Prop :=
  ∀ n, P7381636976877857273.a n = A178222 (n + 1)

theorem P7381636976877857273.correct : P7381636976877857273.Spec := by
  intro n
  simp only [A178222, Nat.add_sub_cancel]

end A178222

/-! ## A178222.P4949241357597578762

`3^n+a(n-2)-1` with `a(0)=0, a(1)=2`
-/

namespace A178222.P4949241357597578762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  (3 ^ n : ℤ) + (a (n - 2) - 1)

end

end A178222.P4949241357597578762

namespace A178222

/-- `3^n+a(n-2)-1` -/
def P4949241357597578762.Spec : Prop :=
  ∀ n, P4949241357597578762.a n = A178222 (n + 1)

end A178222

/-! ## A178222.P2602983411105154109

`3^n-(1-a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A178222.P2602983411105154109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  (3 ^ n : ℤ) - (1 - a (n - 2))

end

end A178222.P2602983411105154109

namespace A178222

/-- `3^n-(1-a(n-2))` -/
def P2602983411105154109.Spec : Prop :=
  ∀ n, P2602983411105154109.a n = A178222 (n + 1)

end A178222

/-! ## A178222.P16671526692608502984

`2*∑[∑[xor(1, 3*a(n-1))]]` with `a(0)=0`
-/

namespace A178222.P16671526692608502984
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  Nat.xor 1 (3 * f2 (n - 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178222.P16671526692608502984

namespace A178222

/-- `2*∑[∑[xor(1, 3*a(n-1))]]` -/
def P16671526692608502984.Spec : Prop :=
  ∀ n, (P16671526692608502984.a n : ℤ) = A178222 (n + 1)

end A178222

/-! ## A178222.P338493930470402640

`3*a(n-1)+n%2+n` with `a(0)=0`
-/

namespace A178222.P338493930470402640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  3 * a (n - 1) + (n % 2 + n)

end

end A178222.P338493930470402640

namespace A178222

/-- `3*a(n-1)+n%2+n` -/
def P338493930470402640.Spec : Prop :=
  ∀ n, (P338493930470402640.a n : ℤ) = A178222 (n + 1)

end A178222

/-! ## A178222.P9706260656968174501

`∑[3*a(n-1)]+a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A178222.P9706260656968174501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A178222.P9706260656968174501

namespace A178222

/-- `∑[3*a(n-1)]+a(n-2)` -/
def P9706260656968174501.Spec : Prop :=
  ∀ n, (P9706260656968174501.a n : ℤ) = A178222 (n + 1)

end A178222

/-! ## A178222.P8975850310274571346

`∑[∑[3*a(n-1)]]-a(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A178222.P8975850310274571346
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A178222.P8975850310274571346

namespace A178222

/-- `∑[∑[3*a(n-1)]]-a(n-1)` -/
def P8975850310274571346.Spec : Prop :=
  ∀ n, P8975850310274571346.a n = A178222 (n + 1)

end A178222

/-! ## A178222.P12396087702443364016

`2*(a(n-1)+n)+3*a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A178222.P12396087702443364016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 * (a (n - 1) + n) + 3 * a (n - 2)

end

end A178222.P12396087702443364016

namespace A178222

/-- `2*(a(n-1)+n)+3*a(n-2)` -/
def P12396087702443364016.Spec : Prop :=
  ∀ n, (P12396087702443364016.a n : ℤ) = A178222 (n + 1)

end A178222

/-! ## A178222.P16307205597419470141

`2*A097137(n+1)`
-/

namespace A178222.P16307205597419470141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097137 (n + 1)

end

end A178222.P16307205597419470141

namespace A178222

/-- `2*A097137(n+1)` -/
def P16307205597419470141.Spec : Prop :=
  ∀ n, P16307205597419470141.a n = A178222 (n + 1)

end A178222

/-! ## A178222.P8177129448593613113

`A183119(n+1)-(n+1)`
-/

namespace A178222.P8177129448593613113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183119 (n + 1) - (n + 1 : ℤ)

end

end A178222.P8177129448593613113

namespace A178222

/-- `A183119(n+1)-(n+1)` -/
def P8177129448593613113.Spec : Prop :=
  ∀ n, P8177129448593613113.a n = A178222 (n + 1)

end A178222

/-! ## A178222.P3510144955275142893

`A024023(n)+a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A178222.P3510144955275142893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A024023 n + a (n - 2)

end

end A178222.P3510144955275142893

namespace A178222

/-- `A024023(n)+a(n-2)` -/
def P3510144955275142893.Spec : Prop :=
  ∀ n, P3510144955275142893.a n = A178222 (n + 1)

end A178222

/-! ## A178222.P5553463570871346507

`A033113(n+1)-A008619(n)`
-/

namespace A178222.P5553463570871346507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033113 (n + 1) - A008619 n

end

end A178222.P5553463570871346507

namespace A178222

/-- `A033113(n+1)-A008619(n)` -/
def P5553463570871346507.Spec : Prop :=
  ∀ n, P5553463570871346507.a n = A178222 (n + 1)

end A178222

/-! ## A178222.P13293336176388762156

`A037480(n+1)-A047926(n)`
-/

namespace A178222.P13293336176388762156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037480 (n + 1) - A047926 n

end

end A178222.P13293336176388762156

namespace A178222

/-- `A037480(n+1)-A047926(n)` -/
def P13293336176388762156.Spec : Prop :=
  ∀ n, P13293336176388762156.a n = A178222 (n + 1)

end A178222

/-! ## A178222.P17973241576262432359

`A029858(n+1)-A183119(n)`
-/

namespace A178222.P17973241576262432359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029858 (n + 1) - A183119 n

end

end A178222.P17973241576262432359

namespace A178222

/-- `A029858(n+1)-A183119(n)` -/
def P17973241576262432359.Spec : Prop :=
  ∀ n, P17973241576262432359.a n = A178222 (n + 1)

end A178222

/-! ## A178222.P17276593083058796247

`A108765(n)-A153773(n+1)`
-/

namespace A178222.P17276593083058796247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108765 n - A153773 (n + 1)

end

end A178222.P17276593083058796247

namespace A178222

/-- `A108765(n)-A153773(n+1)` -/
def P17276593083058796247.Spec : Prop :=
  ∀ n, P17276593083058796247.a n = A178222 (n + 1)

end A178222

/-! ## A178222.P8711873167806546539

`A006342(n+1)-A008619(n+1)`
-/

namespace A178222.P8711873167806546539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006342 (n + 1) - A008619 (n + 1)

end

end A178222.P8711873167806546539

namespace A178222

/-- `A006342(n+1)-A008619(n+1)` -/
def P8711873167806546539.Spec : Prop :=
  ∀ n, P8711873167806546539.a n = A178222 (n + 1)

end A178222

/-! ## A178222.P7920496717141529874

`A033113(n+1)-(A004526(n)+1)`
-/

namespace A178222.P7920496717141529874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033113 (n + 1) - (A004526 n + 1)

end

end A178222.P7920496717141529874

namespace A178222

/-- `A033113(n+1)-(A004526(n)+1)` -/
def P7920496717141529874.Spec : Prop :=
  ∀ n, P7920496717141529874.a n = A178222 (n + 1)

end A178222

/-! ## A178222.P12670246288836818377

`A039300(n+1)-A110654(n+3)`
-/

namespace A178222.P12670246288836818377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039300 (n + 1) - A110654 (n + 3)

end

end A178222.P12670246288836818377

namespace A178222

/-- `A039300(n+1)-A110654(n+3)` -/
def P12670246288836818377.Spec : Prop :=
  ∀ n, P12670246288836818377.a n = A178222 (n + 1)

end A178222

/-! ## A178222.P487166516611055061

`A033113(n+1)-A008621(2*n)`
-/

namespace A178222.P487166516611055061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033113 (n + 1) - A008621 (2 * n)

end

end A178222.P487166516611055061

namespace A178222

/-- `A033113(n+1)-A008621(2*n)` -/
def P487166516611055061.Spec : Prop :=
  ∀ n, P487166516611055061.a n = A178222 (n + 1)

end A178222

/-!
# A178223: Numbers n such that the digits of n are also digits of n! (counting multiplicity).

The programs for A178223, there is no canonical definition to state claims against.
-/

/-! ## A178223.P9340643890768086388

`∑[gcd(A046691(n+3), A171278(n+1))]`
-/

namespace A178223.P9340643890768086388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046691 (n + 3)) (A171278 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178223.P9340643890768086388

/-! ## A178223.P5344190445396590378

`∑[gcd(A139056(n+1), A247824(2*(n+1)))]`
-/

namespace A178223.P5344190445396590378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A139056 (n + 1)) (A247824 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178223.P5344190445396590378

/-!
# A178225: Characteristic function of A006995 (binary palindromes).

The programs for A178225, the canonical program `A178225.P3234126825915487550` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178225 has offset 0).

The definition of A178225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178225.P11494197147158442863

`1-(A206916(n)-A206915(n))`
-/

namespace A178225.P11494197147158442863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A206916 n - A206915 n)

end

end A178225.P11494197147158442863

namespace A178225

/-- `1-(A206916(n)-A206915(n))` -/
def P11494197147158442863.Spec : Prop :=
  ∀ n, P11494197147158442863.a n = A178225 n

end A178225

/-! ## A178225.P6316106467599180906

`char[A062130(n)]`
-/

namespace A178225.P6316106467599180906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062130 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A178225.P6316106467599180906

namespace A178225

/-- `char[A062130(n)]` -/
def P6316106467599180906.Spec : Prop :=
  ∀ n, (P6316106467599180906.a n : ℤ) = A178225 n

end A178225

/-! ## A178225.P4731870228885678684

`char[A175298(n)]`
-/

namespace A178225.P4731870228885678684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A178225.P4731870228885678684

namespace A178225

/-- `char[A175298(n)]` -/
def P4731870228885678684.Spec : Prop :=
  ∀ n, (P4731870228885678684.a n : ℤ) = A178225 n

end A178225

/-! ## A178225.P18063712697961938639

`char[A206913(n)]`
-/

namespace A178225.P18063712697961938639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206913 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A178225.P18063712697961938639

namespace A178225

/-- `char[A206913(n)]` -/
def P18063712697961938639.Spec : Prop :=
  ∀ n, (P18063712697961938639.a n : ℤ) = A178225 n

end A178225

/-! ## A178225.P17866388983851029119

`char[A206914(n)]`
-/

namespace A178225.P17866388983851029119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206914 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A178225.P17866388983851029119

namespace A178225

/-- `char[A206914(n)]` -/
def P17866388983851029119.Spec : Prop :=
  ∀ n, (P17866388983851029119.a n : ℤ) = A178225 n

end A178225

/-! ## A178225.P5762392415457473188

`1-A178226(n)`
-/

namespace A178225.P5762392415457473188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A178226 n

end

end A178225.P5762392415457473188

namespace A178225

/-- `1-A178226(n)` -/
def P5762392415457473188.Spec : Prop :=
  ∀ n, P5762392415457473188.a n = A178225 n

end A178225

/-! ## A178225.P3234126825915487550

`C(2, A175919(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A178225

/-- `C(2, A175919(n))` -/
def P3234126825915487550.Spec : Prop :=
  ∀ n, (P3234126825915487550.a n : ℤ) = A178225 n

theorem P3234126825915487550.correct : P3234126825915487550.Spec := by
  intro n
  simp only [A178225]

end A178225

/-! ## A178225.P14344543757411920110

`floor(acot(A303534(n)))`
-/

namespace A178225.P14344543757411920110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A303534 n : ℝ)⌋

end

end A178225.P14344543757411920110

namespace A178225

/-- `floor(acot(A303534(n)))` -/
def P14344543757411920110.Spec : Prop :=
  ∀ n, P14344543757411920110.a n = A178225 n

end A178225

/-! ## A178225.P4103824415807637321

`char[A006995(n+1)]`
-/

namespace A178225.P4103824415807637321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A178225.P4103824415807637321

namespace A178225

/-- `char[A006995(n+1)]` -/
def P4103824415807637321.Spec : Prop :=
  ∀ n, (P4103824415807637321.a n : ℤ) = A178225 n

end A178225

/-! ## A178225.P17540842444121826443

`char[A347347(n+1)]`
-/

namespace A178225.P17540842444121826443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A178225.P17540842444121826443

namespace A178225

/-- `char[A347347(n+1)]` -/
def P17540842444121826443.Spec : Prop :=
  ∀ n, (P17540842444121826443.a n : ℤ) = A178225 n

end A178225

/-! ## A178225.P7470421807071121565

`char[lt[A303536(n), 2]]`
-/

namespace A178225.P7470421807071121565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303536 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A178225.P7470421807071121565

namespace A178225

/-- `char[lt[A303536(n), 2]]` -/
def P7470421807071121565.Spec : Prop :=
  ∀ n, (P7470421807071121565.a n : ℤ) = A178225 n

end A178225

/-! ## A178225.P97689283201044483

`∏{d}[A055945(n), log(#)]`
-/

namespace A178225.P97689283201044483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, Real.log (d : ℝ)

end

end A178225.P97689283201044483

namespace A178225

/-- `∏{d}[A055945(n), log(#)]` -/
def P97689283201044483.Spec : Prop :=
  ∀ n, P97689283201044483.a n = (A178225 n : ℝ)

end A178225

/-! ## A178225.P4914661388526940890

`∏{d}[A193239(n), log(#)]`
-/

namespace A178225.P4914661388526940890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193239 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, Real.log (d : ℝ)

end

end A178225.P4914661388526940890

namespace A178225

/-- `∏{d}[A193239(n), log(#)]` -/
def P4914661388526940890.Spec : Prop :=
  ∀ n, P4914661388526940890.a n = (A178225 n : ℝ)

end A178225

/-! ## A178225.P12794067842282489771

`char[or(n, A030101(n))]`
-/

namespace A178225.P12794067842282489771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A030101 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A178225.P12794067842282489771

namespace A178225

/-- `char[or(n, A030101(n))]` -/
def P12794067842282489771.Spec : Prop :=
  ∀ n, (P12794067842282489771.a n : ℤ) = A178225 n

end A178225

/-! ## A178225.P11697878704486243794

`char[n*char[A265509(n)]]`
-/

namespace A178225.P11697878704486243794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265509 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A178225.P11697878704486243794

namespace A178225

/-- `char[n*char[A265509(n)]]` -/
def P11697878704486243794.Spec : Prop :=
  ∀ n, (P11697878704486243794.a n : ℤ) = A178225 n

end A178225

/-! ## A178225.P5511259567301180838

`1-char[A154809(n+1)]`
-/

namespace A178225.P5511259567301180838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154809 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A178225.P5511259567301180838

namespace A178225

/-- `1-char[A154809(n+1)]` -/
def P5511259567301180838.Spec : Prop :=
  ∀ n, P5511259567301180838.a n = A178225 n

end A178225

/-! ## A178225.P5977155939610528146

`char[C(A175297(n+1), n)]`
-/

namespace A178225.P5977155939610528146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A175297 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A178225.P5977155939610528146

namespace A178225

/-- `char[C(A175297(n+1), n)]` -/
def P5977155939610528146.Spec : Prop :=
  ∀ n, (P5977155939610528146.a n : ℤ) = A178225 n

end A178225

/-! ## A178225.P3280465291996340104

`char[record[A049776(n+2)-1]]`
-/

namespace A178225.P3280465291996340104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049776 (n + 2) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A178225.P3280465291996340104

namespace A178225

/-- `char[record[A049776(n+2)-1]]` -/
def P3280465291996340104.Spec : Prop :=
  ∀ n, (P3280465291996340104.a n : ℤ) = A178225 n

end A178225

/-! ## A178225.P9932725407444161898

`A000007(A303534(n))`
-/

namespace A178225.P9932725407444161898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A303534 n).toNat

end

end A178225.P9932725407444161898

namespace A178225

/-- `A000007(A303534(n))` -/
def P9932725407444161898.Spec : Prop :=
  ∀ n, P9932725407444161898.a n = A178225 n

end A178225

/-!
# A178226: Characteristic function of A154809 (numbers that are not binary palindromes).

The programs for A178226, the canonical program `A178226.P2137882765149959903` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178226 has offset 0).

The definition of A178226 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A178225, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A178226.P2137882765149959903

`1-A178225(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A178226

/-- `1-A178225(n)` -/
def P2137882765149959903.Spec : Prop :=
  ∀ n, P2137882765149959903.a n = A178226 n

theorem P2137882765149959903.correct : P2137882765149959903.Spec := by
  intro n
  simp only [A178226]

end A178226

/-! ## A178226.P3317268457509620416

`char[comp[A175298(n)]]`
-/

namespace A178226.P3317268457509620416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A178226.P3317268457509620416

namespace A178226

/-- `char[comp[A175298(n)]]` -/
def P3317268457509620416.Spec : Prop :=
  ∀ n, (P3317268457509620416.a n : ℤ) = A178226 n

end A178226

/-! ## A178226.P17120649189549490245

`char[comp[A206913(n)]]`
-/

namespace A178226.P17120649189549490245
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206913 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A178226.P17120649189549490245

namespace A178226

/-- `char[comp[A206913(n)]]` -/
def P17120649189549490245.Spec : Prop :=
  ∀ n, (P17120649189549490245.a n : ℤ) = A178226 n

end A178226

/-! ## A178226.P684196777573898831

`char[comp[A206914(n)]]`
-/

namespace A178226.P684196777573898831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206914 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A178226.P684196777573898831

namespace A178226

/-- `char[comp[A206914(n)]]` -/
def P684196777573898831.Spec : Prop :=
  ∀ n, (P684196777573898831.a n : ℤ) = A178226 n

end A178226

/-! ## A178226.P16969966410436591530

`char[A154809(n+1)]`
-/

namespace A178226.P16969966410436591530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A178226.P16969966410436591530

namespace A178226

/-- `char[A154809(n+1)]` -/
def P16969966410436591530.Spec : Prop :=
  ∀ n, (P16969966410436591530.a n : ℤ) = A178226 n

end A178226

/-! ## A178226.P12104188317675583620

`char[lt[1, A303536(n)]]`
-/

namespace A178226.P12104188317675583620
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303536 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A178226.P12104188317675583620

namespace A178226

/-- `char[lt[1, A303536(n)]]` -/
def P12104188317675583620.Spec : Prop :=
  ∀ n, (P12104188317675583620.a n : ℤ) = A178226 n

end A178226

/-! ## A178226.P2954842666347291237

`1-C(2, A175919(n))`
-/

namespace A178226.P2954842666347291237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose 2 (A175919 n).toNat : ℤ)

end

end A178226.P2954842666347291237

namespace A178226

/-- `1-C(2, A175919(n))` -/
def P2954842666347291237.Spec : Prop :=
  ∀ n, P2954842666347291237.a n = A178226 n

end A178226

/-! ## A178226.P5907395375495188751

`char[comp[A006995(n+1)]]`
-/

namespace A178226.P5907395375495188751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A178226.P5907395375495188751

namespace A178226

/-- `char[comp[A006995(n+1)]]` -/
def P5907395375495188751.Spec : Prop :=
  ∀ n, (P5907395375495188751.a n : ℤ) = A178226 n

end A178226

/-! ## A178226.P3756470569108256699

`char[comp[A347347(n+1)]]`
-/

namespace A178226.P3756470569108256699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347347 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A178226.P3756470569108256699

namespace A178226

/-- `char[comp[A347347(n+1)]]` -/
def P3756470569108256699.Spec : Prop :=
  ∀ n, (P3756470569108256699.a n : ℤ) = A178226 n

end A178226

/-! ## A178226.P4938763018190353280

`1-floor(acot(A303534(n)))`
-/

namespace A178226.P4938763018190353280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊SequenceMachineLib.acot (A303534 n : ℝ)⌋

end

end A178226.P4938763018190353280

namespace A178226

/-- `1-floor(acot(A303534(n)))` -/
def P4938763018190353280.Spec : Prop :=
  ∀ n, P4938763018190353280.a n = A178226 n

end A178226

/-! ## A178226.P5913650054916194882

`xor(1, char[A206913(2*n)])`
-/

namespace A178226.P5913650054916194882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206913 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A178226.P5913650054916194882

namespace A178226

/-- `xor(1, char[A206913(2*n)])` -/
def P5913650054916194882.Spec : Prop :=
  ∀ n, (P5913650054916194882.a n : ℤ) = A178226 n

end A178226

/-! ## A178226.P9820142965567451424

`1-∏{d}[A055945(n), log(#)]`
-/

namespace A178226.P9820142965567451424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 - ∏ d ∈ Nat.divisors (f1 n).natAbs, Real.log (d : ℝ)

end

end A178226.P9820142965567451424

namespace A178226

/-- `1-∏{d}[A055945(n), log(#)]` -/
def P9820142965567451424.Spec : Prop :=
  ∀ n, P9820142965567451424.a n = (A178226 n : ℝ)

end A178226

/-! ## A178226.P15611202932842273605

`1-∏{d}[A193239(n), log(#)]`
-/

namespace A178226.P15611202932842273605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193239 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 - ∏ d ∈ Nat.divisors (f1 n).natAbs, Real.log (d : ℝ)

end

end A178226.P15611202932842273605

namespace A178226

/-- `1-∏{d}[A193239(n), log(#)]` -/
def P15611202932842273605.Spec : Prop :=
  ∀ n, P15611202932842273605.a n = (A178226 n : ℝ)

end A178226

/-! ## A178226.P6408226690343343472

`1-char[or(n, A030101(n))]`
-/

namespace A178226.P6408226690343343472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A030101 n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A178226.P6408226690343343472

namespace A178226

/-- `1-char[or(n, A030101(n))]` -/
def P6408226690343343472.Spec : Prop :=
  ∀ n, P6408226690343343472.a n = A178226 n

end A178226

/-! ## A178226.P11753842649215587283

`1-char[C(A175297(n+1), n)]`
-/

namespace A178226.P11753842649215587283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A175297 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A178226.P11753842649215587283

namespace A178226

/-- `1-char[C(A175297(n+1), n)]` -/
def P11753842649215587283.Spec : Prop :=
  ∀ n, P11753842649215587283.a n = A178226 n

end A178226

/-! ## A178226.P3050351833911688275

`1-A000007(A303534(n))`
-/

namespace A178226.P3050351833911688275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000007 (A303534 n).toNat

end

end A178226.P3050351833911688275

namespace A178226

/-- `1-A000007(A303534(n))` -/
def P3050351833911688275.Spec : Prop :=
  ∀ n, P3050351833911688275.a n = A178226 n

end A178226

/-! ## A178226.P3689574793076281859

`1-A000007(A370427(n))`
-/

namespace A178226.P3689574793076281859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000007 (A370427 n).toNat

end

end A178226.P3689574793076281859

namespace A178226

/-- `1-A000007(A370427(n))` -/
def P3689574793076281859.Spec : Prop :=
  ∀ n, P3689574793076281859.a n = A178226 n

end A178226

/-! ## A178226.P4632379587117998408

`A000007((n+1)*A178225(n))`
-/

namespace A178226.P4632379587117998408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n + 1 : ℤ) * A178225 n).toNat

end

end A178226.P4632379587117998408

namespace A178226

/-- `A000007((n+1)*A178225(n))` -/
def P4632379587117998408.Spec : Prop :=
  ∀ n, P4632379587117998408.a n = A178226 n

end A178226

/-! ## A178226.P3188101483885399961

`C(A206914(n), A206914(n+1))`
-/

namespace A178226.P3188101483885399961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A206914 n).toNat (A206914 (n + 1)).toNat

end

end A178226.P3188101483885399961

namespace A178226

/-- `C(A206914(n), A206914(n+1))` -/
def P3188101483885399961.Spec : Prop :=
  ∀ n, (P3188101483885399961.a n : ℤ) = A178226 n

end A178226

/-! ## A178226.P12024989993905530988

`and(1, 3-A131577(A303534(n)+1))`
-/

namespace A178226.P12024989993905530988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (3 - A131577 (A303534 n + 1).toNat)

end

end A178226.P12024989993905530988

namespace A178226

/-- `and(1, 3-A131577(A303534(n)+1))` -/
def P12024989993905530988.Spec : Prop :=
  ∀ n, P12024989993905530988.a n = A178226 n

end A178226

/-!
# A178227: Lesser of a pair (p,p+4) of cousin primes whose arithmetic mean p+2 is a cube.

The programs for A178227, there is no canonical definition to state claims against.
-/

/-! ## A178227.P7677774862145789602

`A178228(n+1)^3-2`
-/

namespace A178227.P7677774862145789602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178228 (n + 1) ^ 3 - 2

end

end A178227.P7677774862145789602

/-! ## A178227.P136216787473633857

`A154709(n+1)-2`
-/

namespace A178227.P136216787473633857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154709 (n + 1) - 2

end

end A178227.P136216787473633857

/-! ## A178227.P14721480767216141411

`A090121(n+2)^3-2`
-/

namespace A178227.P14721480767216141411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090121 (n + 2) ^ 3 - 2

end

end A178227.P14721480767216141411

/-! ## A178227.P14866561357007740702

`A167592(A141310(2*n+1))+A090121(n+2)^3`
-/

namespace A178227.P14866561357007740702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167592 (A141310 (2 * n + 1)).toNat + A090121 (n + 2) ^ 3

end

end A178227.P14866561357007740702

/-! ## A178227.P12050227302407722776

`A158522(A000040(n+1))+A178228(n+1)^3`
-/

namespace A178227.P12050227302407722776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158522 (A000040 (n + 1)).toNat + A178228 (n + 1) ^ 3

end

end A178227.P12050227302407722776

/-! ## A178227.P1852766529415359519

`A007427(A015913(n+1))+A090121(n+2)^3`
-/

namespace A178227.P1852766529415359519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007427 (A015913 (n + 1)).toNat + A090121 (n + 2) ^ 3

end

end A178227.P1852766529415359519

/-! ## A178227.P8043394366351079784

`∩[A234240(n+1), A236334(n+1)]-2`
-/

namespace A178227.P8043394366351079784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236334 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A178227.P8043394366351079784

/-!
# A178228: Numbers k such that (k^3 - 2, k^3 + 2) is a pair of cousin primes (see A178227).

The programs for A178228, there is no canonical definition to state claims against.
-/

/-! ## A178228.P11092348522840307288

`ceil(root(A178227(n+1), 3))`
-/

namespace A178228.P11092348522840307288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A178227 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉

end

end A178228.P11092348522840307288

/-! ## A178228.P8349005460482858183

`A154709(n+1)^(1/3)`
-/

namespace A178228.P8349005460482858183
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A154709 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A178228.P8349005460482858183

/-! ## A178228.P11800599967451407828

`A090121(n+2)`
-/

namespace A178228.P11800599967451407828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090121 (n + 2)

end

end A178228.P11800599967451407828

/-! ## A178228.P7887414721973202764

`record[A090121(xor(n, A000038(n)))]`
-/

namespace A178228.P7887414721973202764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090121 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178228.P7887414721973202764

/-! ## A178228.P8073789926404866967

`record[A090121(A133310(A133310(n)))]`
-/

namespace A178228.P8073789926404866967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090121 (A133310 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178228.P8073789926404866967

/-! ## A178228.P10990730056070387821

`record[A090121(A008620(A165754(n)))]`
-/

namespace A178228.P10990730056070387821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090121 (A008620 (A165754 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178228.P10990730056070387821

/-! ## A178228.P948958225517054741

`∩[A067200(n+1), A075191(n+1)]`
-/

namespace A178228.P948958225517054741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178228.P948958225517054741

/-! ## A178228.P15323580231857062279

`∩[A038599(n+1), A067200(n+1)]`
-/

namespace A178228.P15323580231857062279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178228.P15323580231857062279

/-! ## A178228.P10119034611501564438

`∩[A038599(n+1), A075191(n+1)]`
-/

namespace A178228.P10119034611501564438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178228.P10119034611501564438

/-!
# A178237: Smallest prime p of the form prime(n)+k^2 such that sum of digits(p) = prime(n).

The programs for A178237, there is no canonical definition to state claims against.
-/

/-! ## A178237.P2308004895446173307

`p?[A180004(A010352(n+1))]`
-/

namespace A178237.P2308004895446173307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180004 (A010352 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178237.P2308004895446173307

/-! ## A178237.P9541667916618039302

`p?[round(sqrt(A169914(n)))]`
-/

namespace A178237.P9541667916618039302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A169914 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178237.P9541667916618039302

/-!
# A178238: Triangle read by rows: partial column sums of the triangle of natural numbers (written sequentially by rows).

The programs for A178238, the canonical program `A178238.P7167606444737462092` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178238 has offset 1).

The definition of A178238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178238.P9412142710601048284

`A212013(n+1)-A000292(A002262(n))`
-/

namespace A178238.P9412142710601048284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212013 (n + 1) - A000292 (A002262 n).toNat

end

end A178238.P9412142710601048284

namespace A178238

/-- `A212013(n+1)-A000292(A002262(n))` -/
def P9412142710601048284.Spec : Prop :=
  ∀ n, P9412142710601048284.a n = A178238 (n + 1)

end A178238

/-! ## A178238.P7167606444737462092

`∑[A004736(n+1)]-A000292(A002262(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A178238

/-- `∑[A004736(n+1)]-A000292(A002262(n))` -/
def P7167606444737462092.Spec : Prop :=
  ∀ n, P7167606444737462092.a n = A178238 (n + 1)

theorem P7167606444737462092.correct : P7167606444737462092.Spec := by
  intro n
  simp only [A178238, Nat.add_sub_cancel]

end A178238

/-! ## A178238.P2570261868883780049

`A004736(n+1)*A014132(n+1)-A104634(n+1)`
-/

namespace A178238.P2570261868883780049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A014132 (n + 1) - A104634 (n + 1)

end

end A178238.P2570261868883780049

namespace A178238

/-- `A004736(n+1)*A014132(n+1)-A104634(n+1)` -/
def P2570261868883780049.Spec : Prop :=
  ∀ n, P2570261868883780049.a n = A178238 (n + 1)

end A178238

/-! ## A178238.P888622526193661969

`Δ[∑[n]+a(A083920(n))]` with `a(0)=1`
-/

namespace A178238.P888622526193661969
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j + f1 (A083920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A178238.P888622526193661969

namespace A178238

/-- `Δ[∑[n]+a(A083920(n))]` -/
def P888622526193661969.Spec : Prop :=
  ∀ n, P888622526193661969.a n = A178238 (n + 1)

end A178238

/-! ## A178238.P2967042293988070924

`∑[A057555(2*(n+1))]-A000292(A002262(n))`
-/

namespace A178238.P2967042293988070924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000292 (A002262 n).toNat

end

end A178238.P2967042293988070924

namespace A178238

/-- `∑[A057555(2*(n+1))]-A000292(A002262(n))` -/
def P2967042293988070924.Spec : Prop :=
  ∀ n, P2967042293988070924.a n = A178238 (n + 1)

end A178238

/-!
# A178239: Triangle read by rows, antidiagonals of an array generated from a(n) = a(2n), a(2n+1) = r*a(n) + a(n+1).

The programs for A178239, there is no canonical definition to state claims against.
-/

/-! ## A178239.P11537908000245845751

`A361942(A340666(n))`
-/

namespace A178239.P11537908000245845751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361942 (A340666 n).toNat

end

end A178239.P11537908000245845751

/-! ## A178239.P5788561491097960143

`A124758(A340666(n)%A225628(n+2))`
-/

namespace A178239.P5788561491097960143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (Int.tmod (A340666 n) (A225628 (n + 2))).toNat

end

end A178239.P5788561491097960143

/-! ## A178239.P13033795499940007295

`A102326(n²+1)%(A260534(n)+1)`
-/

namespace A178239.P13033795499940007295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102326 (n ^ 2 + 1)) (A260534 n + 1)

end

end A178239.P13033795499940007295

/-! ## A178239.P2822517840781868715

`and(A260534(n), A330846(n+1))`
-/

namespace A178239.P2822517840781868715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A260534 n) (A330846 (n + 1))

end

end A178239.P2822517840781868715

/-! ## A178239.P13154105347324233438

`and(A096819(n+1), A260534(n))`
-/

namespace A178239.P13154105347324233438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A096819 (n + 1)) (A260534 n)

end

end A178239.P13154105347324233438

/-!
# A178240: Row sums of triangle A178239.

The programs for A178240, there is no canonical definition to state claims against.
-/

/-! ## A178240.P16884955526684276897

`A137734(2*n*A026713(n))`
-/

namespace A178240.P16884955526684276897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (2 * ((n : ℤ) * A026713 n)).toNat

end

end A178240.P16884955526684276897

/-! ## A178240.P40008911860872072

`A003059(floor(A001611(n+2)/2*∑[n])+1)`
-/

namespace A178240.P40008911860872072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (⌊(A001611 (n + 2) : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋ + 1).toNat

end

end A178240.P40008911860872072

/-! ## A178240.P13708190147361884492

`A137734(A004277(n*A026713(n)))`
-/

namespace A178240.P13708190147361884492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A004277 ((n : ℤ) * A026713 n).toNat).toNat

end

end A178240.P13708190147361884492

/-! ## A178240.P17473569255315527497

`A137734(A005843(n*A026713(n)))`
-/

namespace A178240.P17473569255315527497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A005843 ((n : ℤ) * A026713 n).toNat).toNat

end

end A178240.P17473569255315527497

/-! ## A178240.P8911698540729374449

`A331995(A084251(n+1))`
-/

namespace A178240.P8911698540729374449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331995 (A084251 (n + 1)).toNat

end

end A178240.P8911698540729374449

/-!
# A178242: Numerator of n*(5+n)/((n+1)*(n+4)).

The programs for A178242, the canonical program `A178242.P7355304833822043138` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178242 has offset 0).

The definition of A178242 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178242.P7355304833822043138

`n*(n+5)*((-1)^((2*n-(-1)^n-3)/4)+3)/8`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A178242

/-- `n*(n+5)*((-1)^((2*n-(-1)^n-3)/4)+3)/8` -/
def P7355304833822043138.Spec : Prop :=
  ∀ n, P7355304833822043138.a n = (A178242 n : ℝ)

end A178242

/-! ## A178242.P13935987896564360372

`a(n-4)*A028557(n)/A028557(n-4)` with `a(0)=0, a(1)=3, a(2)=7, a(3)=6, a(4)=9`
-/

namespace A178242.P13935987896564360372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 3, 7, 6, 9] fun n a =>
  a (n - 4) * (A028557 n : ℚ) / (A028557 (n - 4) : ℚ)

end

end A178242.P13935987896564360372

namespace A178242

/-- `a(n-4)*A028557(n)/A028557(n-4)` -/
def P13935987896564360372.Spec : Prop :=
  ∀ n, P13935987896564360372.a n = (A178242 n : ℚ)

end A178242

/-! ## A178242.P2128924386615937236

`lcm(2, 2-∑[n+2])/2`
-/

namespace A178242.P2128924386615937236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) : ℚ) / 2

end

end A178242.P2128924386615937236

namespace A178242

/-- `lcm(2, 2-∑[n+2])/2` -/
def P2128924386615937236.Spec : Prop :=
  ∀ n, P2128924386615937236.a n = (A178242 n : ℚ)

end A178242

/-! ## A178242.P2560819425271511113

`(∑[n+2]-2)/gcd(2, ∑[n])`
-/

namespace A178242.P2560819425271511113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2 : ℚ) / (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

end

end A178242.P2560819425271511113

namespace A178242

/-- `(∑[n+2]-2)/gcd(2, ∑[n])` -/
def P2560819425271511113.Spec : Prop :=
  ∀ n, P2560819425271511113.a n = (A178242 n : ℚ)

end A178242

/-! ## A178242.P660224924745516706

`(∑[n+2]-2)/and(2, n-1)!`
-/

namespace A178242.P660224924745516706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2 : ℚ) / (Nat.factorial (Int.land 2 ((n : ℤ) - 1)).toNat : ℚ)

end

end A178242.P660224924745516706

namespace A178242

/-- `(∑[n+2]-2)/and(2, n-1)!` -/
def P660224924745516706.Spec : Prop :=
  ∀ n, P660224924745516706.a n = (A178242 n : ℚ)

end A178242

/-! ## A178242.P320598632714223667

`(∑[n+2]-2)/A000041(and(2, n-1))`
-/

namespace A178242.P320598632714223667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2 : ℚ) / (A000041 (Int.land 2 ((n : ℤ) - 1)).toNat : ℚ)

end

end A178242.P320598632714223667

namespace A178242

/-- `(∑[n+2]-2)/A000041(and(2, n-1))` -/
def P320598632714223667.Spec : Prop :=
  ∀ n, P320598632714223667.a n = (A178242 n : ℚ)

end A178242

/-! ## A178242.P6673887709116813017

`gcd(C(A055998(n), 2), A055998(n))`
-/

namespace A178242.P6673887709116813017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose (A055998 n).toNat 2 : ℤ) (A055998 n)

end

end A178242.P6673887709116813017

namespace A178242

/-- `gcd(C(A055998(n), 2), A055998(n))` -/
def P6673887709116813017.Spec : Prop :=
  ∀ n, (P6673887709116813017.a n : ℤ) = A178242 n

end A178242

/-! ## A178242.P15929900794895377859

`A064038(n+1)+n*A014695(n)`
-/

namespace A178242.P15929900794895377859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064038 (n + 1) + (n : ℤ) * A014695 n

end

end A178242.P15929900794895377859

namespace A178242

/-- `A064038(n+1)+n*A014695(n)` -/
def P15929900794895377859.Spec : Prop :=
  ∀ n, P15929900794895377859.a n = A178242 n

end A178242

/-! ## A178242.P16905487302339280589

`A160050(n+2)-A014695(n)`
-/

namespace A178242.P16905487302339280589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160050 (n + 2) - A014695 n

end

end A178242.P16905487302339280589

namespace A178242

/-- `A160050(n+2)-A014695(n)` -/
def P16905487302339280589.Spec : Prop :=
  ∀ n, P16905487302339280589.a n = A178242 n

end A178242

/-! ## A178242.P2386697366496560132

`A160050(n+2)-A130658(n+1)`
-/

namespace A178242.P2386697366496560132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160050 (n + 2) - A130658 (n + 1)

end

end A178242.P2386697366496560132

namespace A178242

/-- `A160050(n+2)-A130658(n+1)` -/
def P2386697366496560132.Spec : Prop :=
  ∀ n, P2386697366496560132.a n = A178242 n

end A178242

/-! ## A178242.P16723957246753159103

`A160050(n+2)+A176126(n)-A064038(n+1)`
-/

namespace A178242.P16723957246753159103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160050 (n + 2) + (A176126 n - A064038 (n + 1))

end

end A178242.P16723957246753159103

namespace A178242

/-- `A160050(n+2)+A176126(n)-A064038(n+1)` -/
def P16723957246753159103.Spec : Prop :=
  ∀ n, P16723957246753159103.a n = A178242 n

end A178242

/-! ## A178242.P2229854462482103853

`A226089(n+2)-A130658(n+1)-A130658(n+1)`
-/

namespace A178242.P2229854462482103853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226089 (n + 2) - A130658 (n + 1) - A130658 (n + 1)

end

end A178242.P2229854462482103853

namespace A178242

/-- `A226089(n+2)-A130658(n+1)-A130658(n+1)` -/
def P2229854462482103853.Spec : Prop :=
  ∀ n, P2229854462482103853.a n = A178242 n

end A178242

/-! ## A178242.P9023013397979246687

`A160050(n+2)+A160050(n+2)-A226089(n+2)`
-/

namespace A178242.P9023013397979246687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160050 (n + 2) + (A160050 (n + 2) - A226089 (n + 2))

end

end A178242.P9023013397979246687

namespace A178242

/-- `A160050(n+2)+A160050(n+2)-A226089(n+2)` -/
def P9023013397979246687.Spec : Prop :=
  ∀ n, P9023013397979246687.a n = A178242 n

end A178242

/-! ## A178242.P14439880761370609287

`A160050(n+2)*A176027(n)/A001793(n+1)`
-/

namespace A178242.P14439880761370609287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160050 (n + 2) * A176027 n : ℚ) / (A001793 (n + 1) : ℚ)

end

end A178242.P14439880761370609287

namespace A178242

/-- `A160050(n+2)*A176027(n)/A001793(n+1)` -/
def P14439880761370609287.Spec : Prop :=
  ∀ n, P14439880761370609287.a n = (A178242 n : ℚ)

end A178242

/-! ## A178242.P16272188048495952384

`(A000096(n)+n)/A040001(A000217(n))`
-/

namespace A178242.P16272188048495952384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000096 n + (n : ℤ) : ℚ) / (A040001 (A000217 n).toNat : ℚ)

end

end A178242.P16272188048495952384

namespace A178242

/-- `(A000096(n)+n)/A040001(A000217(n))` -/
def P16272188048495952384.Spec : Prop :=
  ∀ n, P16272188048495952384.a n = (A178242 n : ℚ)

end A178242

/-! ## A178242.P15770703098935540581

`(A005843(n)+A000217(n))/A040001(A000217(n))`
-/

namespace A178242.P15770703098935540581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 n + A000217 n : ℚ) / (A040001 (A000217 n).toNat : ℚ)

end

end A178242.P15770703098935540581

namespace A178242

/-- `(A005843(n)+A000217(n))/A040001(A000217(n))` -/
def P15770703098935540581.Spec : Prop :=
  ∀ n, P15770703098935540581.a n = (A178242 n : ℚ)

end A178242

/-! ## A178242.P7108163145932476324

`A055998(n)/A040001(A055998(n)+2)`
-/

namespace A178242.P7108163145932476324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055998 n : ℚ) / (A040001 (A055998 n + 2).toNat : ℚ)

end

end A178242.P7108163145932476324

namespace A178242

/-- `A055998(n)/A040001(A055998(n)+2)` -/
def P7108163145932476324.Spec : Prop :=
  ∀ n, P7108163145932476324.a n = (A178242 n : ℚ)

end A178242

/-! ## A178242.P1486733589755835936

`A029578(∑[n+2])-1`
-/

namespace A178242.P1486733589755835936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A178242.P1486733589755835936

namespace A178242

/-- `A029578(∑[n+2])-1` -/
def P1486733589755835936.Spec : Prop :=
  ∀ n, P1486733589755835936.a n = A178242 n

end A178242

/-! ## A178242.P7284888912270304719

`A026741(∑[n+2]-2)`
-/

namespace A178242.P7284888912270304719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A178242.P7284888912270304719

namespace A178242

/-- `A026741(∑[n+2]-2)` -/
def P7284888912270304719.Spec : Prop :=
  ∀ n, P7284888912270304719.a n = A178242 n

end A178242

/-! ## A178242.P14148159854642095064

`A029579(∑[n+2])-2`
-/

namespace A178242.P14148159854642095064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (∑ j ∈ Finset.range (n + 1), f1 j) - 2

end

end A178242.P14148159854642095064

namespace A178242

/-- `A029579(∑[n+2])-2` -/
def P14148159854642095064.Spec : Prop :=
  ∀ n, P14148159854642095064.a n = A178242 n

end A178242

/-!
# A178243: a(2n) = a(n), a(2n+1) = 10*a(n) + a(n+1).

The programs for A178243, there is no canonical definition to state claims against.
-/

/-! ## A178243.P451075593720502034

`A007093(A342636(n+1))`
-/

namespace A178243.P451075593720502034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A342636 (n + 1)).toNat

end

end A178243.P451075593720502034

/-! ## A178243.P14638094461383846256

`A007094(A342637(n+1))`
-/

namespace A178243.P14638094461383846256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A342637 (n + 1)).toNat

end

end A178243.P14638094461383846256

/-! ## A178243.P16272623075141550815

`A007095(A342638(n+1))`
-/

namespace A178243.P16272623075141550815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A342638 (n + 1)).toNat

end

end A178243.P16272623075141550815

/-! ## A178243.P13595304396785265870

`A261300(A057021(3^n))`
-/

namespace A178243.P13595304396785265870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261300 (A057021 (3 ^ n)).toNat

end

end A178243.P13595304396785265870

/-! ## A178243.P3635124631222785869

`A261300(((n+1)/2^val(n+1, 2))%A210606(3*n+4))`
-/

namespace A178243.P3635124631222785869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261300 (Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) (A210606 (3 * n + 4))).toNat

end

end A178243.P3635124631222785869

/-!
# A178244: Number of distinct permutations of binary digits (0's and 1's) in n.

The programs for A178244, the canonical program `A178244.P17051318547944785483` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178244 has offset 0).

The definition of A178244 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178244.P17051318547944785483

`C(A000120(n)+A023416(n), A000120(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A178244

/-- `C(A000120(n)+A023416(n), A000120(n))` -/
def P17051318547944785483.Spec : Prop :=
  ∀ n, (P17051318547944785483.a n : ℤ) = A178244 n

theorem P17051318547944785483.correct : P17051318547944785483.Spec := by
  intro n
  simp only [A178244]

end A178244

/-! ## A178244.P17847634037091290574

`C(ceil(log2(n+1)), ∑[∑{e}[xor(n, -n), 2-#]])`
-/

namespace A178244.P17847634037091290574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈Real.logb 2 (n + 1 : ℝ)⌉.toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A178244.P17847634037091290574

namespace A178244

/-- `C(ceil(log2(n+1)), ∑[∑{e}[xor(n, -n), 2-#]])` -/
def P17847634037091290574.Spec : Prop :=
  ∀ n, (P17847634037091290574.a n : ℤ) = A178244 n

end A178244

/-! ## A178244.P8930273763453652069

`C(ceil(log2(n+1)), A080791(n))`
-/

namespace A178244.P8930273763453652069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈Real.logb 2 (n + 1 : ℝ)⌉.toNat (A080791 n).toNat

end

end A178244.P8930273763453652069

namespace A178244

/-- `C(ceil(log2(n+1)), A080791(n))` -/
def P8930273763453652069.Spec : Prop :=
  ∀ n, (P8930273763453652069.a n : ℤ) = A178244 n

end A178244

/-! ## A178244.P3824748212074759123

`Δ[A360445(n)]`
-/

namespace A178244.P3824748212074759123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178244.P3824748212074759123

namespace A178244

/-- `Δ[A360445(n)]` -/
def P3824748212074759123.Spec : Prop :=
  ∀ n, P3824748212074759123.a n = A178244 n

end A178244

/-! ## A178244.P6674849403719227886

`A360445(n+1)-A360445(n)`
-/

namespace A178244.P6674849403719227886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360445 (n + 1) - A360445 n

end

end A178244.P6674849403719227886

namespace A178244

/-- `A360445(n+1)-A360445(n)` -/
def P6674849403719227886.Spec : Prop :=
  ∀ n, P6674849403719227886.a n = A178244 n

end A178244

/-! ## A178244.P16595700485719700075

`A090706(Δ[n²])`
-/

namespace A178244.P16595700485719700075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090706 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A178244.P16595700485719700075

namespace A178244

/-- `A090706(Δ[n²])` -/
def P16595700485719700075.Spec : Prop :=
  ∀ n, P16595700485719700075.a n = A178244 n

end A178244

/-! ## A178244.P6288549558636164312

`root(A090706(2*n+1), 2)²`
-/

namespace A178244.P6288549558636164312
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A090706 (2 * n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A178244.P6288549558636164312

namespace A178244

/-- `root(A090706(2*n+1), 2)²` -/
def P6288549558636164312.Spec : Prop :=
  ∀ n, P6288549558636164312.a n = (A178244 n : ℝ)

end A178244

/-! ## A178244.P6886870201538376400

`A060351(A073137(2*n+1))`
-/

namespace A178244.P6886870201538376400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (A073137 (2 * n + 1)).toNat

end

end A178244.P6886870201538376400

namespace A178244

/-- `A060351(A073137(2*n+1))` -/
def P6886870201538376400.Spec : Prop :=
  ∀ n, P6886870201538376400.a n = A178244 n

end A178244

/-! ## A178244.P17145406287295866839

`A060351(A073138(2*n+1))`
-/

namespace A178244.P17145406287295866839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (A073138 (2 * n + 1)).toNat

end

end A178244.P17145406287295866839

namespace A178244

/-- `A060351(A073138(2*n+1))` -/
def P17145406287295866839.Spec : Prop :=
  ∀ n, P17145406287295866839.a n = A178244 n

end A178244

/-! ## A178244.P15380547817054326106

`A135416(2*(n+1))+A090706(2*n+1)`
-/

namespace A178244.P15380547817054326106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (2 * (n + 1)) + A090706 (2 * n + 1)

end

end A178244.P15380547817054326106

namespace A178244

/-- `A135416(2*(n+1))+A090706(2*n+1)` -/
def P15380547817054326106.Spec : Prop :=
  ∀ n, P15380547817054326106.a n = A178244 n

end A178244

/-! ## A178244.P4328016974007748648

`A378959(2*n+1)/A003817(2*n+1)`
-/

namespace A178244.P4328016974007748648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378959 (2 * n + 1) : ℚ) / (A003817 (2 * n + 1) : ℚ)

end

end A178244.P4328016974007748648

namespace A178244

/-- `A378959(2*n+1)/A003817(2*n+1)` -/
def P4328016974007748648.Spec : Prop :=
  ∀ n, P4328016974007748648.a n = (A178244 n : ℚ)

end A178244

/-! ## A178244.P7902155200450937345

`A378959(2*n+1)/A284630(2*n+1)`
-/

namespace A178244.P7902155200450937345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378959 (2 * n + 1) : ℚ) / (A284630 (2 * n + 1) : ℚ)

end

end A178244.P7902155200450937345

namespace A178244

/-- `A378959(2*n+1)/A284630(2*n+1)` -/
def P7902155200450937345.Spec : Prop :=
  ∀ n, P7902155200450937345.a n = (A178244 n : ℚ)

end A178244

/-! ## A178244.P11582212777425022113

`A378959(2*n+1)/A340632(2*n+1)`
-/

namespace A178244.P11582212777425022113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378959 (2 * n + 1) : ℚ) / (A340632 (2 * n + 1) : ℚ)

end

end A178244.P11582212777425022113

namespace A178244

/-- `A378959(2*n+1)/A340632(2*n+1)` -/
def P11582212777425022113.Spec : Prop :=
  ∀ n, P11582212777425022113.a n = (A178244 n : ℚ)

end A178244

/-! ## A178244.P11365796381494167724

`A109451(A109451(A090706(2*n+1)))`
-/

namespace A178244.P11365796381494167724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109451 (A109451 (A090706 (2 * n + 1)).toNat).toNat

end

end A178244.P11365796381494167724

namespace A178244

/-- `A109451(A109451(A090706(2*n+1)))` -/
def P11365796381494167724.Spec : Prop :=
  ∀ n, P11365796381494167724.a n = A178244 n

end A178244

/-! ## A178244.P10036869205299812479

`A375216(A073139(2*n+1)+A073137(2*n+1))`
-/

namespace A178244.P10036869205299812479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375216 (A073139 (2 * n + 1) + A073137 (2 * n + 1)).toNat

end

end A178244.P10036869205299812479

namespace A178244

/-- `A375216(A073139(2*n+1)+A073137(2*n+1))` -/
def P10036869205299812479.Spec : Prop :=
  ∀ n, P10036869205299812479.a n = A178244 n

end A178244

/-! ## A178244.P10373287693533926338

`A125644(2*A073137(2*n+1))`
-/

namespace A178244.P10373287693533926338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125644 (2 * A073137 (2 * n + 1)).toNat

end

end A178244.P10373287693533926338

namespace A178244

/-- `A125644(2*A073137(2*n+1))` -/
def P10373287693533926338.Spec : Prop :=
  ∀ n, P10373287693533926338.a n = A178244 n

end A178244

/-! ## A178244.P7098522539235733205

`A193020(A073138(n))`
-/

namespace A178244.P7098522539235733205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193020 (A073138 n).toNat

end

end A178244.P7098522539235733205

namespace A178244

/-- `A193020(A073138(n))` -/
def P7098522539235733205.Spec : Prop :=
  ∀ n, P7098522539235733205.a n = A178244 n

end A178244

/-! ## A178244.P12461459706050450254

`A008480(A176893(n))`
-/

namespace A178244.P12461459706050450254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A176893 n).toNat

end

end A178244.P12461459706050450254

namespace A178244

/-- `A008480(A176893(n))` -/
def P12461459706050450254.Spec : Prop :=
  ∀ n, P12461459706050450254.a n = A178244 n

end A178244

/-! ## A178244.P3928922067860475458

`filter[A090706(2*n+1), A102609(#)]`
-/

namespace A178244.P3928922067860475458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090706 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A178244.P3928922067860475458

namespace A178244

/-- `filter[A090706(2*n+1), A102609(#)]` -/
def P3928922067860475458.Spec : Prop :=
  ∀ n, P3928922067860475458.a n = A178244 n

end A178244

/-! ## A178244.P9622673822651201546

`A292895(A378959(2*n+1))`
-/

namespace A178244.P9622673822651201546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292895 (A378959 (2 * n + 1)).toNat

end

end A178244.P9622673822651201546

namespace A178244

/-- `A292895(A378959(2*n+1))` -/
def P9622673822651201546.Spec : Prop :=
  ∀ n, P9622673822651201546.a n = A178244 n

end A178244

/-!
# A178245: If one lines up the columns of the binary representations in A130310, the minimal (or "greedy") Lucas representation of n, this sequence gives the column number (starting with 0) of the starting point of the blocks of 1s which occur.

The programs for A178245, there is no canonical definition to state claims against.
-/

/-! ## A178245.P12940968774228265957

`val(record[xor(n, 2*n+5)+1], 2)`
-/

namespace A178245.P12940968774228265957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 5) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2

end

end A178245.P12940968774228265957

/-! ## A178245.P8943797432179476564

`val(record[or(n, floor(n/2)+1)]+1, 2)`
-/

namespace A178245.P8943797432179476564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (⌊(n : ℚ) / 2⌋ + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat 2

end

end A178245.P8943797432179476564

/-! ## A178245.P13756197250122640693

`val(A130310(n+1), 2)`
-/

namespace A178245.P13756197250122640693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A130310 (n + 1)).toNat 2

end

end A178245.P13756197250122640693

/-! ## A178245.P2598618681398638492

`val(record[A003188(xor(1, n))+1], 2)`
-/

namespace A178245.P2598618681398638492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (Nat.xor 1 n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A178245.P2598618681398638492

/-! ## A178245.P2571179139621541070

`val(record[or(n, A008619(n))+1], 2)`
-/

namespace A178245.P2571179139621541070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A008619 n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A178245.P2571179139621541070

/-! ## A178245.P17669883850577388760

`A050605(record[or(2*n+1, n+2)])`
-/

namespace A178245.P17669883850577388760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n + 1) (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A178245.P17669883850577388760

/-! ## A178245.P12519238329456575741

`A050605(record[A048724(xor(1, n))])`
-/

namespace A178245.P12519238329456575741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A178245.P12519238329456575741

/-! ## A178245.P6932393726788430588

`val(record[A105081(A014681(n+1))], 2)`
-/

namespace A178245.P6932393726788430588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105081 (A014681 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A178245.P6932393726788430588

/-! ## A178245.P13297541581550952372

`A007814(record[A003188(xor(1, n))+1])`
-/

namespace A178245.P13297541581550952372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (Nat.xor 1 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A178245.P13297541581550952372

/-! ## A178245.P2183031995009438949

`val(A003188(record[A256701(n+2)])-1, 2)`
-/

namespace A178245.P2183031995009438949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256701 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003188 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1).toNat 2

end

end A178245.P2183031995009438949

/-!
# A178246: Numbers m such that all digits of m, including repetitions, occur among the digits of 2^m.

The programs for A178246, there is no canonical definition to state claims against.
-/

/-! ## A178246.P9334535206111335357

`lt[atan(A087727(n)), A087773(n)]`
-/

namespace A178246.P9334535206111335357
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A087727 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087773 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A178246.P9334535206111335357

/-!
# A178248: a(n) = 12^n + 1.

The programs for A178248, the canonical program `A178248.P12031259338219206125` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178248 has offset 0).

The definition of A178248 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12^n+1` (program `A178248.P12031259338219206125`, by `A178248.P12031259338219206125.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A178248.P12031259338219206125

`12^n+1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A178248

/-- `12^n+1` -/
def P12031259338219206125.Spec : Prop :=
  ∀ n, (P12031259338219206125.a n : ℤ) = A178248 n

theorem P12031259338219206125.correct : P12031259338219206125.Spec := by
  intro n
  simp only [A178248]

end A178248

/-!
# A178249: Table T(n,k) counts the involutions of n with longest increasing contiguous subsequence of length k.

The programs for A178249, there is no canonical definition to state claims against.
-/

/-! ## A178249.P17306422274264027596

`A375615(A330964(n))`
-/

namespace A178249.P17306422274264027596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375615 (A330964 n).toNat

end

end A178249.P17306422274264027596

/-! ## A178249.P14589474467265051242

`A170887(A255812(n+1))`
-/

namespace A178249.P14589474467265051242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170887 (A255812 (n + 1)).toNat

end

end A178249.P14589474467265051242

/-! ## A178249.P17030261195716832238

`A174231(A267655(n+1))`
-/

namespace A178249.P17030261195716832238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174231 (A267655 (n + 1)).toNat

end

end A178249.P17030261195716832238

/-! ## A178249.P16023740713865674278

`A240114(A278984(n+1))`
-/

namespace A178249.P16023740713865674278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240114 (A278984 (n + 1)).toNat

end

end A178249.P16023740713865674278

/-! ## A178249.P17594101383191766796

`A340602(C(A278984(n+1), A043290(n+1)))`
-/

namespace A178249.P17594101383191766796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340602 (Nat.choose (A278984 (n + 1)).toNat (A043290 (n + 1)).toNat)

end

end A178249.P17594101383191766796

/-!
# A178251: Primes p such that p^3 - 2 is prime.

The programs for A178251, there is no canonical definition to state claims against.
-/

/-! ## A178251.P16072307235751111635

`p?[A038599(n+1)]`
-/

namespace A178251.P16072307235751111635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178251.P16072307235751111635

/-! ## A178251.P5612017080108686795

`ceil(root(A066878(n+1), 3))`
-/

namespace A178251.P5612017080108686795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A066878 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉

end

end A178251.P5612017080108686795

/-! ## A178251.P8201749485974268649

`p?[round(root(A038600(n+1), 3))]`
-/

namespace A178251.P8201749485974268649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A038600 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178251.P8201749485974268649

/-! ## A178251.P13184806887953563814

`∩[A002476(n+1), A038599(n+1)]`
-/

namespace A178251.P13184806887953563814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178251.P13184806887953563814

/-! ## A178251.P6281688299440354118

`∩[A007645(n+1), A038599(n+1)]`
-/

namespace A178251.P6281688299440354118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178251.P6281688299440354118

/-! ## A178251.P13285885872041925488

`∩[A038599(n+1), A045331(n+1)]`
-/

namespace A178251.P13285885872041925488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178251.P13285885872041925488

/-! ## A178251.P11958076349813563331

`∩[A038599(n+1), A045375(n+1)]`
-/

namespace A178251.P11958076349813563331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178251.P11958076349813563331

/-! ## A178251.P17113001384389415324

`∩[A038599(n+1), A123365(n+1)]`
-/

namespace A178251.P17113001384389415324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178251.P17113001384389415324

/-! ## A178251.P12625499763828768666

`∩[A038599(n+1), A279815(n+1)]`
-/

namespace A178251.P12625499763828768666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178251.P12625499763828768666

/-! ## A178251.P3629503081955587863

`∩[A038599(n+1), A164318(n+1)]`
-/

namespace A178251.P3629503081955587863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178251.P3629503081955587863

/-! ## A178251.P7195084566249197674

`∩[A038599(n+1), A040116(n+1)]`
-/

namespace A178251.P7195084566249197674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178251.P7195084566249197674

/-! ## A178251.P14004935454915030887

`∩[A038599(n+1), A325143(n+1)]`
-/

namespace A178251.P14004935454915030887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178251.P14004935454915030887

/-! ## A178251.P4063566763006453178

`∩[A038599(n+1), A045348(n+1)]`
-/

namespace A178251.P4063566763006453178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178251.P4063566763006453178

/-! ## A178251.P12193277243220578593

`∩[A038599(n+1), A045371(n+1)]`
-/

namespace A178251.P12193277243220578593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178251.P12193277243220578593

/-! ## A178251.P12893058423352890233

`∩[A038599(n+1), A059500(n+1)]`
-/

namespace A178251.P12893058423352890233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178251.P12893058423352890233

/-! ## A178251.P3554613194970457118

`∩[A038599(n+1), A140557(n+1)]`
-/

namespace A178251.P3554613194970457118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178251.P3554613194970457118

/-! ## A178251.P1499578255816041363

`∩[A038599(n+1), A058501(n+1)]`
-/

namespace A178251.P1499578255816041363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178251.P1499578255816041363

/-! ## A178251.P334791314773215482

`∩[A038599(n+1), A167464(n+1)]`
-/

namespace A178251.P334791314773215482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178251.P334791314773215482

/-! ## A178251.P2484659044682243425

`∩[A038599(n+1), A140562(n+1)]`
-/

namespace A178251.P2484659044682243425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178251.P2484659044682243425

/-! ## A178251.P6159467567228199644

`∩[A038599(n+1), A140563(n+1)]`
-/

namespace A178251.P6159467567228199644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178251.P6159467567228199644

/-!
# A178252: Triangle T(n,m) read by rows: the numerator of the coefficient [x^m] of the umbral inverse Bernoulli polynomials B^{-1}(n,x), 0 <= m <= n.

The programs for A178252, there is no canonical definition to state claims against.
-/

/-! ## A178252.P4686709022393875719

`A007318(n)/gcd(A007318(n), A193592(n))`
-/

namespace A178252.P4686709022393875719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (Int.gcd (A007318 n) (A193592 n) : ℚ)

end

end A178252.P4686709022393875719

/-! ## A178252.P5528927600040756097

`lcm(A144084(n), A245334(n))/A245334(n)`
-/

namespace A178252.P5528927600040756097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A144084 n) (A245334 n) : ℚ) / (A245334 n : ℚ)

end

end A178252.P5528927600040756097

/-! ## A178252.P12833091472236881140

`A007318(n)/gcd(A004736(n+1), A130595(n))`
-/

namespace A178252.P12833091472236881140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (Int.gcd (A004736 (n + 1)) (A130595 n) : ℚ)

end

end A178252.P12833091472236881140

/-! ## A178252.P6299900231588581236

`A247500(n)/gcd(A173333(n+1), A247500(n))`
-/

namespace A178252.P6299900231588581236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247500 n : ℚ) / (Int.gcd (A173333 (n + 1)) (A247500 n) : ℚ)

end

end A178252.P6299900231588581236

/-! ## A178252.P8197007785081501609

`A165661(comp[∑[n+1]])`
-/

namespace A178252.P8197007785081501609
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165661 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A178252.P8197007785081501609

/-!
# A178253: a(n) is the least positive integer m such that (A001969(n))^m is in A000069.

The programs for A178253, there is no canonical definition to state claims against.
-/

/-! ## A178253.P9210744814869468271

`val(A178373(n+1), A001969(n+2))`
-/

namespace A178253.P9210744814869468271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A178373 (n + 1)).toNat (A001969 (n + 2)).toNat

end

end A178253.P9210744814869468271

/-! ## A178253.P605544537458910451

`val(A178373(n+1), record[A129676(n+1)])`
-/

namespace A178253.P605544537458910451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129676 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A178373 (n + 1)).toNat (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A178253.P605544537458910451

/-! ## A178253.P9332804343434646293

`val(A178373(n+1), A004442(A000069(n+2)))`
-/

namespace A178253.P9332804343434646293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A178373 (n + 1)).toNat (A004442 (A000069 (n + 2)).toNat).toNat

end

end A178253.P9332804343434646293

/-!
# A178254: Number of permutations of the proper divisors of n such that no adjacent elements have a common divisor greater than 1.

The programs for A178254, there is no canonical definition to state claims against.
-/

/-! ## A178254.P15051714166045618232

`A279452(A323300(n+1))%7`
-/

namespace A178254.P15051714166045618232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279452 (A323300 (n + 1)).toNat) 7

end

end A178254.P15051714166045618232

/-! ## A178254.P5074408173478826033

`A329568(A305564(n+1))%7`
-/

namespace A178254.P5074408173478826033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329568 (A305564 (n + 1)).toNat) 7

end

end A178254.P5074408173478826033

/-! ## A178254.P15997172172517487607

`A109080(A296121(n+1))%8`
-/

namespace A178254.P15997172172517487607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109080 (A296121 (n + 1)).toNat) 8

end

end A178254.P15997172172517487607

/-! ## A178254.P15637670938364615911

`A264643(A182139(n+1))%8`
-/

namespace A178254.P15637670938364615911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264643 (A182139 (n + 1)).toNat) 8

end

end A178254.P15637670938364615911

/-! ## A178254.P10460562781497864557

`A266477(A036459(n+1)*A343511(n+1))`
-/

namespace A178254.P10460562781497864557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266477 (A036459 (n + 1) * A343511 (n + 1)).toNat

end

end A178254.P10460562781497864557

/-!
# A178255: Decimal expansion of (3+sqrt(17))/2.

The programs for A178255, there is no canonical definition to state claims against.
-/

/-! ## A178255.P184592768191576921

`A222132(n)+A000007(n)`
-/

namespace A178255.P184592768191576921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222132 (n + 1) + A000007 n

end

end A178255.P184592768191576921

/-! ## A178255.P4743682740257019736

`A082486(n)-A000007(n)`
-/

namespace A178255.P4743682740257019736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082486 (n + 1) - A000007 n

end

end A178255.P4743682740257019736

/-! ## A178255.P7972769280563028924

`or(A222132(n), A222133(n))`
-/

namespace A178255.P7972769280563028924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A222132 (n + 1)) (A222133 (n + 1))

end

end A178255.P7972769280563028924

/-! ## A178255.P10332319497518952564

`A054977(n)+A222132(n)-1`
-/

namespace A178255.P10332319497518952564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + (A222132 (n + 1) - 1)

end

end A178255.P10332319497518952564

/-! ## A178255.P3797777294345712944

`A222133(n)+2*A000007(n)`
-/

namespace A178255.P3797777294345712944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222133 (n + 1) + 2 * A000007 n

end

end A178255.P3797777294345712944

/-! ## A178255.P6236979788556327391

`(A222132(n)+A082486(n))/2`
-/

namespace A178255.P6236979788556327391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222132 (n + 1) + A082486 (n + 1) : ℚ) / 2

end

end A178255.P6236979788556327391

/-! ## A178255.P10603014609076753864

`A222132(n)+A001316(n)%2`
-/

namespace A178255.P10603014609076753864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222132 (n + 1) + Int.tmod (A001316 n) 2

end

end A178255.P10603014609076753864

/-! ## A178255.P2006652366895152212

`A222132(n)+A137688(n)%2`
-/

namespace A178255.P2006652366895152212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222132 (n + 1) + Int.tmod (A137688 n) 2

end

end A178255.P2006652366895152212

/-! ## A178255.P7363008585288985791

`A082486(n)+1-A035214(A001316(n))`
-/

namespace A178255.P7363008585288985791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082486 (n + 1) + (1 - A035214 (A001316 n).toNat)

end

end A178255.P7363008585288985791

/-! ## A178255.P9030281739150338458

`A222132(n)+1-A019425(A019425(n))`
-/

namespace A178255.P9030281739150338458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222132 (n + 1) + (1 - A019425 (A019425 n).toNat)

end

end A178255.P9030281739150338458

/-! ## A178255.P15377143902650192764

`A222133(n)+2*A000035(A001316(n))`
-/

namespace A178255.P15377143902650192764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222133 (n + 1) + 2 * A000035 (A001316 n).toNat

end

end A178255.P15377143902650192764

/-! ## A178255.P17002782993757722241

`A082486(n)+A222133(n)-A222132(n)`
-/

namespace A178255.P17002782993757722241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082486 (n + 1) + (A222133 (n + 1) - A222132 (n + 1))

end

end A178255.P17002782993757722241

/-! ## A178255.P12258134515874315096

`A222132(n)+A073424(A000124(n))`
-/

namespace A178255.P12258134515874315096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222132 (n + 1) + A073424 (A000124 n).toNat

end

end A178255.P12258134515874315096

/-! ## A178255.P12349274925564581796

`A082486(n)-A073424(A000124(n))`
-/

namespace A178255.P12349274925564581796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082486 (n + 1) - A073424 (A000124 n).toNat

end

end A178255.P12349274925564581796

/-! ## A178255.P9390113762032277024

`or(A073424(A054066(n+1)), A222132(n))`
-/

namespace A178255.P9390113762032277024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A073424 (A054066 (n + 1)).toNat) (A222132 (n + 1))

end

end A178255.P9390113762032277024

/-! ## A178255.P9927361125744373162

`A222132(n)+A073424(A054066(n+2))`
-/

namespace A178255.P9927361125744373162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222132 (n + 1) + A073424 (A054066 (n + 2)).toNat

end

end A178255.P9927361125744373162

/-! ## A178255.P14351761826433715797

`A082486(n)+1-A035214(A000096(n))`
-/

namespace A178255.P14351761826433715797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082486 (n + 1) + (1 - A035214 (A000096 n).toNat)

end

end A178255.P14351761826433715797

/-! ## A178255.P8629676632323335867

`A035214(A000096(n))+A222132(n)-1`
-/

namespace A178255.P8629676632323335867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A000096 n).toNat + (A222132 (n + 1) - 1)

end

end A178255.P8629676632323335867

/-! ## A178255.P7726553217315304058

`A222132(n)+A073424(A137688(n))`
-/

namespace A178255.P7726553217315304058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222132 (n + 1) + A073424 (A137688 n).toNat

end

end A178255.P7726553217315304058

/-! ## A178255.P2709986683043815773

`A082486(n)-A073424(A137688(n))`
-/

namespace A178255.P2709986683043815773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082486 (n + 1) - A073424 (A137688 n).toNat

end

end A178255.P2709986683043815773

/-!
# A178256: Number of ways to choose four collinear points from an n X n grid.

The programs for A178256, there is no canonical definition to state claims against.
-/

/-! ## A178256.P1766369585972172459

`A189345(n+1)-(A334713(n+1)+A175383(n+1))`
-/

namespace A178256.P1766369585972172459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189345 (n + 1) - (A334713 (n + 1) + A175383 (n + 1))

end

end A178256.P1766369585972172459

/-! ## A178256.P11896107838972946262

`A334708(∑[4*n]+1)`
-/

namespace A178256.P11896107838972946262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334708 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A178256.P11896107838972946262

/-!
# A178257: Number of collinear point 5-tuples in an n X n cubical grid.

The programs for A178257, there is no canonical definition to state claims against.
-/

/-! ## A178257.P4174774274518394618

`A000031(n)*A230224(A000142(n))`
-/

namespace A178257.P4174774274518394618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 n * A230224 (A000142 n).toNat

end

end A178257.P4174774274518394618

/-! ## A178257.P8068090838828143810

`A000031(n)*A230224(A230233(n))`
-/

namespace A178257.P8068090838828143810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 n * A230224 (A230233 n).toNat

end

end A178257.P8068090838828143810

/-!
# A178258: Number of collinear point 6-tuples in an n X n cubical grid.

The programs for A178258, there is no canonical definition to state claims against.
-/

/-! ## A178258.P18022517448064769486

`A008615(floor(n/2)*A074360(n))`
-/

namespace A178258.P18022517448064769486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (⌊(n : ℚ) / 2⌋ * A074360 n).toNat

end

end A178258.P18022517448064769486

/-! ## A178258.P16492973390158293854

`A112689(A003056(n)*A074360(n))`
-/

namespace A178258.P16492973390158293854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A003056 n * A074360 n).toNat

end

end A178258.P16492973390158293854

/-! ## A178258.P4971060756964236139

`floor(p?[A218694(n)]/16)`
-/

namespace A178258.P4971060756964236139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 16⌋

end

end A178258.P4971060756964236139

/-!
# A178259: Number of collinear point 7-tuples in an n X n cubical grid.

The programs for A178259, there is no canonical definition to state claims against.
-/

/-! ## A178259.P17306499569632220337

`A260644(A011851(n)*A290527(n))`
-/

namespace A178259.P17306499569632220337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260644 (A011851 n * A290527 n).toNat

end

end A178259.P17306499569632220337

/-! ## A178259.P12276679070521937440

`4*A025437(ceil(n!/2))`
-/

namespace A178259.P12276679070521937440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A025437 ⌈(Nat.factorial n : ℚ) / 2⌉.toNat

end

end A178259.P12276679070521937440

/-! ## A178259.P13823226560545294939

`4*A025437(round(n!/2))`
-/

namespace A178259.P13823226560545294939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A025437 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / 2)).toNat

end

end A178259.P13823226560545294939

/-! ## A178259.P1834827718489805034

`A104463(A268599(n))`
-/

namespace A178259.P1834827718489805034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104463 (A268599 n).toNat

end

end A178259.P1834827718489805034

/-!
# A178260: Number of collinear point 8-tuples in an n X n cubical grid.

The programs for A178260, there is no canonical definition to state claims against.
-/

/-! ## A178260.P7069640094826554116

`2*floor(A266172(n+1)/4)`
-/

namespace A178260.P7069640094826554116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(A266172 (n + 1) : ℚ) / 4⌋

end

end A178260.P7069640094826554116

/-! ## A178260.P16031055551272069757

`A059995(46*4*C(n+2, 9)^n^(6*and(1, n)))`
-/

namespace A178260.P16031055551272069757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (46 * (4 * Nat.choose (n + 2) 9 ^ n ^ (6 * Nat.land 1 n)))

end

end A178260.P16031055551272069757

/-! ## A178260.P15298293102742474421

`A280130(A150492(n))`
-/

namespace A178260.P15298293102742474421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280130 (A150492 n).toNat

end

end A178260.P15298293102742474421

/-! ## A178260.P17630587838408629203

`A259572(A328357(n))`
-/

namespace A178260.P17630587838408629203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259572 (A328357 n).toNat

end

end A178260.P17630587838408629203

/-! ## A178260.P18241039474640282128

`A036874(A004690(n+1))`
-/

namespace A178260.P18241039474640282128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036874 (A004690 (n + 1)).toNat

end

end A178260.P18241039474640282128

/-!
# A178261: Number of collinear point 9-tuples in an n X n cubical grid.

The programs for A178261, there is no canonical definition to state claims against.
-/

/-! ## A178261.P5907758620272187875

`Δ[A330097(A250285(n))]`
-/

namespace A178261.P5907758620272187875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330097 (A250285 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178261.P5907758620272187875

/-! ## A178261.P1785091474492095071

`A264668(∏[A000009(n)])`
-/

namespace A178261.P1785091474492095071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A178261.P1785091474492095071

/-! ## A178261.P3311150307138158939

`A375473(A075206(n+1))`
-/

namespace A178261.P3311150307138158939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375473 (A075206 (n + 1)).toNat

end

end A178261.P3311150307138158939

/-! ## A178261.P14876335542465590946

`A339171(A355562(n+2))`
-/

namespace A178261.P14876335542465590946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339171 (A355562 (n + 2)).toNat

end

end A178261.P14876335542465590946

/-! ## A178261.P9698508544148534901

`A249871(A374636(n))*A374636(n)`
-/

namespace A178261.P9698508544148534901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249871 (A374636 n).toNat * A374636 n

end

end A178261.P9698508544148534901

/-!
# A178262: Number of collinear point 4-tuples in an n X n X n cubical grid.

The programs for A178262, there is no canonical definition to state claims against.
-/

/-! ## A178262.P1800004461435583335

`A001617(record[abs(or(2, n-1))]!+2)`
-/

namespace A178262.P1800004461435583335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 2 ((n : ℤ) - 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (Nat.factorial (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 2)

end

end A178262.P1800004461435583335

/-!
# A178263: Number of collinear point 5-tuples in an n X n X n cubical grid.

The programs for A178263, there is no canonical definition to state claims against.
-/

/-! ## A178263.P10826588176638659254

`A177881(∏{e}[A182789(n), #])`
-/

namespace A178263.P10826588176638659254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177881 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A178263.P10826588176638659254

/-! ## A178263.P1330846264743179834

`A322996(A002275(n)+A002265(n))`
-/

namespace A178263.P1330846264743179834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322996 (A002275 n + A002265 n).toNat

end

end A178263.P1330846264743179834

/-!
# A178264: Number of collinear point 6-tuples in an n X n X n cubical grid.

The programs for A178264, there is no canonical definition to state claims against.
-/

/-! ## A178264.P4458822726267414450

`A061579(A057966(n+5)%A059863(n+1))`
-/

namespace A178264.P4458822726267414450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (Int.tmod (A057966 (n + 5)) (A059863 (n + 1))).toNat

end

end A178264.P4458822726267414450

/-! ## A178264.P9282028438454219005

`A123036(2*n+3)%A123019(A123014(n+1))`
-/

namespace A178264.P9282028438454219005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123036 (2 * n + 3)) (A123019 (A123014 (n + 1)).toNat)

end

end A178264.P9282028438454219005

/-!
# A178265: Number of collinear point 7-tuples in an n X n X n cubical grid.

The programs for A178265, there is no canonical definition to state claims against.
-/

/-! ## A178265.P6609489295668729232

`and(∑[A027028(n+2)], A265835(n+1))`
-/

namespace A178265.P6609489295668729232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027028 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A265835 (n + 1))

end

end A178265.P6609489295668729232

/-! ## A178265.P16123480052571954701

`and(A061579(A178967(n+1)), A193499(n+1))`
-/

namespace A178265.P16123480052571954701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061579 (A178967 (n + 1)).toNat) (A193499 (n + 1))

end

end A178265.P16123480052571954701

/-!
# A178269: Number of collinear point 4-tuples in an n X n .. X n 4-dimensional cubical grid.

The programs for A178269, there is no canonical definition to state claims against.
-/

/-! ## A178269.P18325003714997081313

`A344876(A171864(n+1)²)`
-/

namespace A178269.P18325003714997081313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344876 (A171864 (n + 1) ^ 2).toNat

end

end A178269.P18325003714997081313

/-!
# A178270: Number of collinear point 5-tuples in an n X n .. X n 4-dimensional cubical grid.

The programs for A178270, there is no canonical definition to state claims against.
-/

/-! ## A178270.P8871189861854896064

`∑[∑[A163617(A289793(n+1))]]`
-/

namespace A178270.P8871189861854896064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 (A289793 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178270.P8871189861854896064

/-!
# A178294: Number of collinear point triples in a 4 X 4 X 4 X... n-dimensional cubic grid.

The programs for A178294, the canonical program `A178294.P14920345089702934564` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178294 has offset 0).

The definition of A178294 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178294.P14920345089702934564

`(A094375(n)-2^n)*2^n`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A178294

/-- `(A094375(n)-2^n)*2^n` -/
def P14920345089702934564.Spec : Prop :=
  ∀ n, P14920345089702934564.a n = A178294 n

theorem P14920345089702934564.correct : P14920345089702934564.Spec := by
  intro n
  simp only [A178294]

end A178294

/-! ## A178294.P8819579012688967506

`(A006516(n)+A001047(n))*A000079(n)`
-/

namespace A178294.P8819579012688967506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006516 n + A001047 n) * A000079 n

end

end A178294.P8819579012688967506

namespace A178294

/-- `(A006516(n)+A001047(n))*A000079(n)` -/
def P8819579012688967506.Spec : Prop :=
  ∀ n, P8819579012688967506.a n = A178294 n

end A178294

/-! ## A178294.P16073084914781180300

`(A006516(n)+A001047(n))*Δ[A168616(n)]`
-/

namespace A178294.P16073084914781180300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006516 n + A001047 n) * (f1 (n + 1) - f1 n)

end

end A178294.P16073084914781180300

namespace A178294

/-- `(A006516(n)+A001047(n))*Δ[A168616(n)]` -/
def P16073084914781180300.Spec : Prop :=
  ∀ n, P16073084914781180300.a n = A178294 n

end A178294

/-! ## A178294.P4671649353072428063

`18*a(n-1)-104*a(n-2)+192*a(n-3)` with `a(0)=0, a(1)=4, a(2)=44`
-/

namespace A178294.P4671649353072428063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 44] fun n a =>
  18 * a (n - 1) - 104 * a (n - 2) + 192 * a (n - 3)

end

end A178294.P4671649353072428063

namespace A178294

/-- `18*a(n-1)-104*a(n-2)+192*a(n-3)` -/
def P4671649353072428063.Spec : Prop :=
  ∀ n, P4671649353072428063.a n = A178294 n

end A178294

/-! ## A178294.P7129095810638202683

`(A006516(n)+A001047(n))*record[A204133(n+1)]`
-/

namespace A178294.P7129095810638202683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006516 n + A001047 n) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178294.P7129095810638202683

namespace A178294

/-- `(A006516(n)+A001047(n))*record[A204133(n+1)]` -/
def P7129095810638202683.Spec : Prop :=
  ∀ n, P7129095810638202683.a n = A178294 n

end A178294

/-! ## A178294.P14734869203207673612

`(A006516(n)+A001047(n))*record[A307433(n)]`
-/

namespace A178294.P14734869203207673612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006516 n + A001047 n) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178294.P14734869203207673612

namespace A178294

/-- `(A006516(n)+A001047(n))*record[A307433(n)]` -/
def P14734869203207673612.Spec : Prop :=
  ∀ n, P14734869203207673612.a n = A178294 n

end A178294

/-!
# A178295: Number of collinear point 4-tuples in a 5 X 5 X 5 X... n-dimensional cubic grid.

The programs for A178295, the canonical program `A178295.P16093683269245508952` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178295 has offset 0).

The definition of A178295 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178295.P16093683269245508952

`4*(7^n-5^n)/2+3^n*ceil(3^n/2)-(3^n+7^n)/2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A178295

/-- `4*(7^n-5^n)/2+3^n*ceil(3^n/2)-(3^n+7^n)/2` -/
def P16093683269245508952.Spec : Prop :=
  ∀ n, P16093683269245508952.a n = (A178295 n : ℚ)

end A178295

/-!
# A178296: Number of collinear point 5-tuples in a 6 X 6 X 6 X... n-dimensional cubic grid.

The programs for A178296, the canonical program `A178296.P10967040753336829324` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178296 has offset 0).

The definition of A178296 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178296.P10967040753336829324

`A081203(n)+5*A081201(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A178296

/-- `A081203(n)+5*A081201(n)` -/
def P10967040753336829324.Spec : Prop :=
  ∀ n, P10967040753336829324.a n = A178296 n

theorem P10967040753336829324.correct : P10967040753336829324.Spec := by
  intro n
  simp only [A178296]

end A178296

/-! ## A178296.P975726834608155537

`24*a(n-1)-188*a(n-2)+480*a(n-3)` with `a(0)=0, a(1)=6, a(2)=88`
-/

namespace A178296.P975726834608155537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 6, 88] fun n a =>
  24 * a (n - 1) - 188 * a (n - 2) + 480 * a (n - 3)

end

end A178296.P975726834608155537

namespace A178296

/-- `24*a(n-1)-188*a(n-2)+480*a(n-3)` -/
def P975726834608155537.Spec : Prop :=
  ∀ n, P975726834608155537.a n = A178296 n

end A178296

/-!
# A178297: Number of collinear point 6-tuples in a 7 X 7 X 7 X... n-dimensional cubic grid.

The programs for A178297, the canonical program `A178297.P5196559760669153586` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178297 has offset 0).

The definition of A178297 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178297.P5196559760669153586

`27*a(n-1)-239*a(n-2)+693*a(n-3)` with `a(0)=0, a(1)=7, a(2)=116`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A178297

/-- `27*a(n-1)-239*a(n-2)+693*a(n-3)` -/
def P5196559760669153586.Spec : Prop :=
  ∀ n, P5196559760669153586.a n = A178297 n

theorem P5196559760669153586.correct : P5196559760669153586.Spec := by
  intro n
  simp only [A178297]

end A178297

