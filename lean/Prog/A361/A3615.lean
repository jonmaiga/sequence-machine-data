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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

/-!
# A361500: Number of orbifold points of order 3 in Prym-Teichmuller curve W_D(4) of discriminant D = A361169(n).

The programs for A361500, there is no canonical definition to state claims against.
-/

/-! ## A361500.P5330276904621337642

`A029931(A000041(2*n+1))%A084501(n+1)`
-/

namespace A361500.P5330276904621337642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029931 (A000041 (2 * n + 1)).toNat) (A084501 (n + 1))

end

end A361500.P5330276904621337642

/-! ## A361500.P13180243322508235183

`A122865(lcm(A043320(n+1), A392027(2*n+3)))`
-/

namespace A361500.P13180243322508235183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122865 (Int.lcm (A043320 (n + 1)) (A392027 (2 * n + 3)))

end

end A361500.P13180243322508235183

/-! ## A361500.P16118386683792039486

`and(A126305(n), A261951(A080138(n+1)))`
-/

namespace A361500.P16118386683792039486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126305 n) (A261951 (A080138 (n + 1)).toNat)

end

end A361500.P16118386683792039486

/-! ## A361500.P15341460856288724202

`and(A088431(n+5), A373494(A115004(n+1)))`
-/

namespace A361500.P15341460856288724202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088431 (n + 5)) (A373494 (A115004 (n + 1)).toNat)

end

end A361500.P15341460856288724202

/-! ## A361500.P1255913117162032416

`A361163(n+3)`
-/

namespace A361500.P1255913117162032416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361163 (n + 3)

end

end A361500.P1255913117162032416

/-!
# A361501: A variant of A359143 in which all copies of a digit d are erased only when d is both the leading digit and the final digit of (a(n) concatenated with sum of digits of a(n)).

The programs for A361501, there is no canonical definition to state claims against.
-/

/-! ## A361501.P12934321633443083313

`A372074(A359142(n+1)+n+2)`
-/

namespace A361501.P12934321633443083313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372074 (A359142 (n + 1) + (n + 2 : ℤ)).toNat

end

end A361501.P12934321633443083313

/-!
# A361502: Index of n-th prime in A359804.

The programs for A361502, there is no canonical definition to state claims against.
-/

/-! ## A361502.P16463757482333313103

`A361504(p?[record[∏{p}[n, #]]])`
-/

namespace A361502.P16463757482333313103
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361504 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A361502.P16463757482333313103

/-! ## A361502.P7355616117660144283

`A361504(p?[∏{p}[n+1, #*val(n+1, #)]])`
-/

namespace A361502.P7355616117660144283
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p * SequenceMachineLib.valuation (n + 1) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361504 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A361502.P7355616117660144283

/-! ## A361502.P15594408102149626715

`A361504(record[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1])`
-/

namespace A361502.P15594408102149626715
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361504 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A361502.P15594408102149626715

/-! ## A361502.P3209639723310613060

`A361504(A390240(n))`
-/

namespace A361502.P3209639723310613060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361504 (A390240 n).toNat

end

end A361502.P3209639723310613060

/-! ## A361502.P9101645646574738015

`A361504(Δ[A007504(n)])`
-/

namespace A361502.P9101645646574738015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361504 (f1 (n + 1) - f1 n).toNat

end

end A361502.P9101645646574738015

/-!
# A361503: a(1)=2; thereafter a(n) = smallest prime that does not divide b(n-1)*b(n), where b(k) = A359804(k).

The programs for A361503, there is no canonical definition to state claims against.
-/

/-! ## A361503.P2449881394680733193

`A359804(n+2)/A361639(n+2)`
-/

namespace A361503.P2449881394680733193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359804 (n + 2) : ℚ) / (A361639 (n + 2) : ℚ)

end

end A361503.P2449881394680733193

/-! ## A361503.P15947717948808435405

`A006530(A359804(n+2)^3)`
-/

namespace A361503.P15947717948808435405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A359804 (n + 2) ^ 3).toNat

end

end A361503.P15947717948808435405

/-! ## A361503.P8959493196477674614

`A006530(A359804(n+2))%A296603(n+1)`
-/

namespace A361503.P8959493196477674614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A359804 (n + 2)).toNat) (A296603 (n + 1))

end

end A361503.P8959493196477674614

/-! ## A361503.P12814798739242094801

`A006530(A359804(n+2)%A069737(n+1))`
-/

namespace A361503.P12814798739242094801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.tmod (A359804 (n + 2)) (A069737 (n + 1))).toNat

end

end A361503.P12814798739242094801

/-! ## A361503.P10940625852009167675

`A006530(A359804(n+2)²²)`
-/

namespace A361503.P10940625852009167675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((A359804 (n + 2) ^ 2) ^ 2).toNat

end

end A361503.P10940625852009167675

/-!
# A361505: Index of 2^n in A359804.

The programs for A361505, there is no canonical definition to state claims against.
-/

/-! ## A361505.P4090008008244772632

`lt[A361643(n+1), 2]+1`
-/

namespace A361505.P4090008008244772632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361643 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A361505.P4090008008244772632

/-! ## A361505.P1139466636878386868

`lt[A000120(A359804(n+1)), 2]+1`
-/

namespace A361505.P1139466636878386868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A359804 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A361505.P1139466636878386868

/-!
# A361506: a(n) = floor( (4/5)*( (9/4)^(n+1)-1 ) ).

The programs for A361506, the canonical program `A361506.P380793297081361955` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361506 has offset 0).

The definition of A361506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 284 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361506.P380793297081361955

`floor(∑[(9/4)^n])`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A361506

/-- `floor(∑[(9/4)^n])` -/
def P380793297081361955.Spec : Prop :=
  ∀ n, P380793297081361955.a n = A361506 n

theorem P380793297081361955.correct : P380793297081361955.Spec := by
  intro n
  simp only [A361506]

end A361506

/-! ## A361506.P16388707814078971042

`ceil(∑[(9/4)^n])-A057427(n)`
-/

namespace A361506.P16388707814078971042
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 : ℚ) / 4) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ - A057427 n

end

end A361506.P16388707814078971042

namespace A361506

/-- `ceil(∑[(9/4)^n])-A057427(n)` -/
def P16388707814078971042.Spec : Prop :=
  ∀ n, P16388707814078971042.a n = A361506 n

end A361506

/-! ## A361506.P1911425015679598186

`A108870(n)-char[floor(n/(xor(n, n+1)+1))+1]`
-/

namespace A361506.P1911425015679598186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108870 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A361506.P1911425015679598186

namespace A361506

/-- `A108870(n)-char[floor(n/(xor(n, n+1)+1))+1]` -/
def P1911425015679598186.Spec : Prop :=
  ∀ n, P1911425015679598186.a n = A361506 n

end A361506

/-! ## A361506.P8366588771092757514

`A108870(n)+A057428(n)`
-/

namespace A361506.P8366588771092757514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108870 n + A057428 n

end

end A361506.P8366588771092757514

namespace A361506

/-- `A108870(n)+A057428(n)` -/
def P8366588771092757514.Spec : Prop :=
  ∀ n, P8366588771092757514.a n = A361506 n

end A361506

/-! ## A361506.P747155287960924990

`A108870(n)-char[A064413(n+1)]`
-/

namespace A361506.P747155287960924990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108870 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A361506.P747155287960924990

namespace A361506

/-- `A108870(n)-char[A064413(n+1)]` -/
def P747155287960924990.Spec : Prop :=
  ∀ n, P747155287960924990.a n = A361506 n

end A361506

/-! ## A361506.P216112484363338836

`A108870(n)-char[A080542(n+1)]`
-/

namespace A361506.P216112484363338836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080542 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108870 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A361506.P216112484363338836

namespace A361506

/-- `A108870(n)-char[A080542(n+1)]` -/
def P216112484363338836.Spec : Prop :=
  ∀ n, P216112484363338836.a n = A361506 n

end A361506

/-! ## A361506.P6362763867462607380

`A108870(n)-A001065(A020639(n+1))`
-/

namespace A361506.P6362763867462607380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108870 n - A001065 (A020639 (n + 1)).toNat

end

end A361506.P6362763867462607380

namespace A361506

/-- `A108870(n)-A001065(A020639(n+1))` -/
def P6362763867462607380.Spec : Prop :=
  ∀ n, P6362763867462607380.a n = A361506 n

end A361506

/-! ## A361506.P3169770338807882930

`A108870(n)-A001221(A195943(n+1))`
-/

namespace A361506.P3169770338807882930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108870 n - A001221 (A195943 (n + 1)).toNat

end

end A361506.P3169770338807882930

namespace A361506

/-- `A108870(n)-A001221(A195943(n+1))` -/
def P3169770338807882930.Spec : Prop :=
  ∀ n, P3169770338807882930.a n = A361506 n

end A361506

/-!
# A361507: a(0) = 1; thereafter a(n) = floor((9/4)*a(n-1)) + 1.

The programs for A361507, the canonical program `A361507.P14254705456204525396` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361507 has offset 0).

The definition of A361507 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361507.P12537414883674493880

`2*a(n-1)+floor(a(n-1)/4)+1` with `a(0)=1`
-/

namespace A361507.P12537414883674493880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + (⌊(a (n - 1) : ℚ) / 4⌋ + 1)

end

end A361507.P12537414883674493880

namespace A361507

/-- `2*a(n-1)+floor(a(n-1)/4)+1` -/
def P12537414883674493880.Spec : Prop :=
  ∀ n, P12537414883674493880.a n = A361507 n

end A361507

/-! ## A361507.P17663687476584500751

`floor(a(n-1)+1+a(n-1)+a(n-1)/4)` with `a(0)=1`
-/

namespace A361507.P17663687476584500751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) + 1 : ℚ) + ((a (n - 1) : ℚ) + (a (n - 1) : ℚ) / 4)⌋

end

end A361507.P17663687476584500751

namespace A361507

/-- `floor(a(n-1)+1+a(n-1)+a(n-1)/4)` -/
def P17663687476584500751.Spec : Prop :=
  ∀ n, P17663687476584500751.a n = A361507 n

end A361507

/-! ## A361507.P14254705456204525396

`floor(9*a(n-1)/4)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A361507

/-- `floor(9*a(n-1)/4)+1` -/
def P14254705456204525396.Spec : Prop :=
  ∀ n, P14254705456204525396.a n = A361507 n

theorem P14254705456204525396.correct : P14254705456204525396.Spec := by
  intro n
  simp only [A361507]

end A361507

/-! ## A361507.P1125189255655086785

`ceil((18*a(n-1)+2)/8)` with `a(0)=1`
-/

namespace A361507.P1125189255655086785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(18 * a (n - 1) + 2 : ℚ) / 8⌉

end

end A361507.P1125189255655086785

namespace A361507

/-- `ceil((18*a(n-1)+2)/8)` -/
def P1125189255655086785.Spec : Prop :=
  ∀ n, P1125189255655086785.a n = A361507 n

end A361507

/-! ## A361507.P3290316228605084571

`A168183(2*a(n-1)+1)` with `a(0)=1`
-/

namespace A361507.P3290316228605084571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A168183 (2 * a (n - 1) + 1).toNat

end

end A361507.P3290316228605084571

namespace A361507

/-- `A168183(2*a(n-1)+1)` -/
def P3290316228605084571.Spec : Prop :=
  ∀ n, P3290316228605084571.a n = A361507 n

end A361507

/-!
# A361508: a(n) = smallest k such that Fibonacci(k) = n, or -1 if n is not a Fibonacci number.

The programs for A361508, there is no canonical definition to state claims against.
-/

/-! ## A361508.P10556117182523209231

`or(A010056(n)-1, A130234(n))`
-/

namespace A361508.P10556117182523209231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010056 n - 1) (A130234 n)

end

end A361508.P10556117182523209231

/-! ## A361508.P7774779766131034981

`or(A130233(n)-A130234(n), A130234(n))`
-/

namespace A361508.P7774779766131034981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A130233 n - A130234 n) (A130234 n)

end

end A361508.P7774779766131034981

/-!
# A361509: a(n) = smallest Fibonacci number F(k) such that F(k) + F(n) is a prime, or -1 if no such F(k) exists.

The programs for A361509, there is no canonical definition to state claims against.
-/

/-! ## A361509.P11776655346583956741

`A000045(A361902(A000045(n)))`
-/

namespace A361509.P11776655346583956741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A361902 (A000045 n).toNat).toNat

end

end A361509.P11776655346583956741

/-! ## A361509.P7164500311311964427

`A000045(A361510(n))`
-/

namespace A361509.P7164500311311964427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A361510 n).toNat

end

end A361509.P7164500311311964427

/-! ## A361509.P5427254515151836855

`A212804(A361510(n)+1)`
-/

namespace A361509.P5427254515151836855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A361510 n + 1).toNat

end

end A361509.P5427254515151836855

/-! ## A361509.P17284575235802936952

`A103609(2*A361510(n))`
-/

namespace A361509.P17284575235802936952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A361510 n).toNat

end

end A361509.P17284575235802936952

/-! ## A361509.P17806151960685843662

`A232666(A361510(n)%A068232(n+1))`
-/

namespace A361509.P17806151960685843662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232666 (Int.tmod (A361510 n) (A068232 (n + 1))).toNat

end

end A361509.P17806151960685843662

/-!
# A361510: a(n) = smallest k >= 0 such that Fibonacci(k) + Fibonacci(n) is a prime, or -1 if no such k exists.

The programs for A361510, there is no canonical definition to state claims against.
-/

/-! ## A361510.P464950518416936453

`A361902(A000045(n))`
-/

namespace A361510.P464950518416936453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361902 (A000045 n).toNat

end

end A361510.P464950518416936453

/-! ## A361510.P7913699407367125075

`A361902(∑[a(n-1)-(1-a(n-2))]-n)` with `a(0)=0, a(1)=2`
-/

namespace A361510.P7913699407367125075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361902 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A361510.P7913699407367125075

/-! ## A361510.P7636804156744269991

`A361902(abs(A236191(n)))`
-/

namespace A361510.P7636804156744269991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361902 |A236191 n|.toNat

end

end A361510.P7636804156744269991

/-! ## A361510.P4784894703692790569

`A361902(A228074(∑[n]))`
-/

namespace A361510.P4784894703692790569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361902 (A228074 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A361510.P4784894703692790569

/-!
# A361511: a(1) = 1. Thereafter if a(n-1) is a novel term, a(n) = d(a(n-1)); otherwise, if a(n-1) is the t-th non-novel term, a(n) = a(n-1) + d(a(t)), where d is the divisor function A000005.

The programs for A361511, there is no canonical definition to state claims against.
-/

/-! ## A361511.P11453033764672711082

`A345147(n+1)-A025465(A189076(n))`
-/

namespace A361511.P11453033764672711082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345147 (n + 1) - A025465 (A189076 n).toNat

end

end A361511.P11453033764672711082

/-! ## A361511.P16494174017484280309

`A345147(n+1)-A025465(A131938(3*n+5))`
-/

namespace A361511.P16494174017484280309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345147 (n + 1) - A025465 (A131938 (3 * n + 5)).toNat

end

end A361511.P16494174017484280309

/-! ## A361511.P16201855944010439982

`A345147(A187829(n+1))`
-/

namespace A361511.P16201855944010439982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345147 (A187829 (n + 1)).toNat

end

end A361511.P16201855944010439982

/-! ## A361511.P5601156573580048525

`A345147(n+1)%A123287(n)`
-/

namespace A361511.P5601156573580048525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345147 (n + 1)) (A123287 (n + 31))

end

end A361511.P5601156573580048525

/-! ## A361511.P5470160146614475488

`gcd(Δ[A277318(2*(n+2))], A345147(n+1))`
-/

namespace A361511.P5470160146614475488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277318 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A345147 (n + 1))

end

end A361511.P5470160146614475488

/-!
# A361512: Indices of novel terms in A361511.

The programs for A361512, there is no canonical definition to state claims against.
-/

/-! ## A361512.P17925788478901066265

`∑[A361514(n+1)]`
-/

namespace A361512.P17925788478901066265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361512.P17925788478901066265

/-! ## A361512.P619174705976576181

`A361515(A361513(n+1))`
-/

namespace A361512.P619174705976576181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361515 (A361513 (n + 1)).toNat

end

end A361512.P619174705976576181

/-! ## A361512.P12190598416079919571

`record[A361515(A361511(n+1))]`
-/

namespace A361512.P12190598416079919571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361515 (A361511 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361512.P12190598416079919571

/-! ## A361512.P12330092899472620846

`eq[1, char[A361515(n+1)]]`
-/

namespace A361512.P12330092899472620846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361515 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A361512.P12330092899472620846

/-! ## A361512.P2187830570779606212

`A156080(A007782(n))+A109231(n+1)`
-/

namespace A361512.P2187830570779606212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156080 (A007782 n).toNat + A109231 (n + 1)

end

end A361512.P2187830570779606212

/-!
# A361513: Novel terms in A361511, in order of appearance.

The programs for A361513, there is no canonical definition to state claims against.
-/

/-! ## A361513.P2814991382244011297

`A361511(A361512(n+1))`
-/

namespace A361513.P2814991382244011297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361511 (A361512 (n + 1)).toNat

end

end A361513.P2814991382244011297

/-! ## A361513.P15482171216402267658

`A361511(∑[A361514(n+1)])`
-/

namespace A361513.P15482171216402267658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361511 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A361513.P15482171216402267658

/-!
# A361514: Lengths of rows when A361511 is regarded as an irregular triangle.

The programs for A361514, there is no canonical definition to state claims against.
-/

/-! ## A361514.P6702071552353332615

`A001222(A163800(n+1)+A039026(n+1))`
-/

namespace A361514.P6702071552353332615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A163800 (n + 1) + A039026 (n + 1)).toNat

end

end A361514.P6702071552353332615

/-! ## A361514.P13592485403529098265

`A353362(A036561(n)*A126107(n+1))`
-/

namespace A361514.P13592485403529098265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353362 (A036561 n * A126107 (n + 1)).toNat

end

end A361514.P13592485403529098265

/-! ## A361514.P4823010478366130490

`A275806(3*n)+A274534(A319079(n))`
-/

namespace A361514.P4823010478366130490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 (3 * n) + A274534 (A319079 n).toNat

end

end A361514.P4823010478366130490

/-! ## A361514.P18150069129330244260

`A007895(A306227(n+1)+A224391(n+1))`
-/

namespace A361514.P18150069129330244260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A306227 (n + 1) + A224391 (n + 1)).toNat

end

end A361514.P18150069129330244260

/-! ## A361514.P6750183298642746855

`A261795(A167560(2*(n+2)))+A213177(n)`
-/

namespace A361514.P6750183298642746855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261795 (A167560 (2 * (n + 2))).toNat + A213177 n

end

end A361514.P6750183298642746855

/-!
# A361516: Indices of records in A361511.

The programs for A361516, there is no canonical definition to state claims against.
-/

/-! ## A361516.P14938271080886332524

`A361515(A362095(n+1))`
-/

namespace A361516.P14938271080886332524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361515 (A362095 (n + 1)).toNat

end

end A361516.P14938271080886332524

/-! ## A361516.P944706427743675421

`A361515(record[A361513(n+1)])`
-/

namespace A361516.P944706427743675421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361515 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A361516.P944706427743675421

/-! ## A361516.P152258574686938673

`A361515(record[A361511(n+1)])`
-/

namespace A361516.P152258574686938673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361515 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A361516.P152258574686938673

/-! ## A361516.P15133614683326196327

`A291154(record[A104307(n+1)])`
-/

namespace A361516.P15133614683326196327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291154 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A361516.P15133614683326196327

/-! ## A361516.P16769798614821769089

`∑[A355737(A203616(n+1))+1]`
-/

namespace A361516.P16769798614821769089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355737 (A203616 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361516.P16769798614821769089

/-!
# A361520: a(n) is the greatest prime factor of a(n-2)^2 + a(n-1)^2 where a(1)=2 and a(2)=3.

The programs for A361520, there is no canonical definition to state claims against.
-/

/-! ## A361520.P10367969135083618037

`A076367(∏[2*n+1])`
-/

namespace A361520.P10367969135083618037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076367 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A361520.P10367969135083618037

/-!
# A361521: Array read by descending antidiagonals. A(n, k) is the number of the nonempty multiset combinations of {0, 1} as defined in A361682.

The programs for A361521, the canonical program `A361521.P6560160518773734041` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361521 has offset 0).

The definition of A361521 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361521.P6560160518773734041

`col(n)*(row(n)-col(n))*(4+col(n)*(row(n)-col(n)-1))/2`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A361521

/-- `col(n)*(row(n)-col(n))*(4+col(n)*(row(n)-col(n)-1))/2` -/
def P6560160518773734041.Spec : Prop :=
  ∀ n, P6560160518773734041.a n = (A361521 n : ℚ)

end A361521

/-! ## A361521.P794878158261940121

`A361682(n)-1`
-/

namespace A361521.P794878158261940121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361682 n - 1

end

end A361521.P794878158261940121

namespace A361521

/-- `A361682(n)-1` -/
def P794878158261940121.Spec : Prop :=
  ∀ n, P794878158261940121.a n = A361521 n

end A361521

/-! ## A361521.P17378672211964648473

`A239331(∑[2*n]%comp[∑[n]])-1`
-/

namespace A361521.P17378672211964648473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239331 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) - 1

end

end A361521.P17378672211964648473

namespace A361521

/-- `A239331(∑[2*n]%comp[∑[n]])-1` -/
def P17378672211964648473.Spec : Prop :=
  ∀ n, P17378672211964648473.a n = A361521 n

end A361521

/-! ## A361521.P14689142938607944001

`A239331(∑[char[∑[n]]]²-(n+1))-1`
-/

namespace A361521.P14689142938607944001
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239331 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1)) - 1

end

end A361521.P14689142938607944001

namespace A361521

/-- `A239331(∑[char[∑[n]]]²-(n+1))-1` -/
def P14689142938607944001.Spec : Prop :=
  ∀ n, P14689142938607944001.a n = A361521 n

end A361521

/-! ## A361521.P14440129206559707230

`A023443(A361682(n))`
-/

namespace A361521.P14440129206559707230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A361682 n).toNat

end

end A361521.P14440129206559707230

namespace A361521

/-- `A023443(A361682(n))` -/
def P14440129206559707230.Spec : Prop :=
  ∀ n, P14440129206559707230.a n = A361521 n

end A361521

/-! ## A361521.P15354981193005203664

`A289207(A361682(n)+1)`
-/

namespace A361521.P15354981193005203664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A361682 n + 1).toNat

end

end A361521.P15354981193005203664

namespace A361521

/-- `A289207(A361682(n)+1)` -/
def P15354981193005203664.Spec : Prop :=
  ∀ n, P15354981193005203664.a n = A361521 n

end A361521

/-! ## A361521.P18086767398788713095

`A082046(n)-A338369(n)`
-/

namespace A361521.P18086767398788713095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082046 n - A338369 n

end

end A361521.P18086767398788713095

namespace A361521

/-- `A082046(n)-A338369(n)` -/
def P18086767398788713095.Spec : Prop :=
  ∀ n, P18086767398788713095.a n = A361521 n

end A361521

/-! ## A361521.P395829652749160521

`A062707(n)+A094525(n)-1`
-/

namespace A361521.P395829652749160521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 n + (A094525 n - 1)

end

end A361521.P395829652749160521

namespace A361521

/-- `A062707(n)+A094525(n)-1` -/
def P395829652749160521.Spec : Prop :=
  ∀ n, P395829652749160521.a n = A361521 n

end A361521

/-!
# A361522: The aerated factorial numbers.

The programs for A361522, the canonical program `A361522.P7127774445203533264` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361522 has offset 0).

The definition of A361522 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361522.P17906814261203847108

`n/2*a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A361522.P17906814261203847108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  (n : ℚ) / 2 * a (n - 2)

end

end A361522.P17906814261203847108

namespace A361522

/-- `n/2*a(n-2)` -/
def P17906814261203847108.Spec : Prop :=
  ∀ n, P17906814261203847108.a n = (A361522 n : ℚ)

end A361522

/-! ## A361522.P14612035665879203726

`log2(gcd(2, n))*floor(n/2)!`
-/

namespace A361522.P14612035665879203726
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) * (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat : ℝ)

end

end A361522.P14612035665879203726

namespace A361522

/-- `log2(gcd(2, n))*floor(n/2)!` -/
def P14612035665879203726.Spec : Prop :=
  ∀ n, P14612035665879203726.a n = (A361522 n : ℝ)

end A361522

/-! ## A361522.P6080351873270167562

`floor(n/2)!*char[2*n]`
-/

namespace A361522.P6080351873270167562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌊(n : ℚ) / 2⌋.toNat * (if ∃ j, f1 j = n then 1 else 0)

end

end A361522.P6080351873270167562

namespace A361522

/-- `floor(n/2)!*char[2*n]` -/
def P6080351873270167562.Spec : Prop :=
  ∀ n, (P6080351873270167562.a n : ℤ) = A361522 n

end A361522

/-! ## A361522.P7127774445203533264

`∑[(-1)^n*floor(n/2)!]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A361522

/-- `∑[(-1)^n*floor(n/2)!]` -/
def P7127774445203533264.Spec : Prop :=
  ∀ n, P7127774445203533264.a n = A361522 n

theorem P7127774445203533264.correct : P7127774445203533264.Spec := by
  intro n
  simp only [A361522]

end A361522

/-! ## A361522.P9138918191556356108

`∑[floor(n/2)!/(-1)^n]`
-/

namespace A361522.P9138918191556356108
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361522.P9138918191556356108

namespace A361522

/-- `∑[floor(n/2)!/(-1)^n]` -/
def P9138918191556356108.Spec : Prop :=
  ∀ n, P9138918191556356108.a n = (A361522 n : ℚ)

end A361522

/-! ## A361522.P2928336532776126939

`a(n-2)*∑[n%2]` with `a(0)=1, a(1)=0`
-/

namespace A361522.P2928336532776126939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361522.P2928336532776126939

namespace A361522

/-- `a(n-2)*∑[n%2]` -/
def P2928336532776126939.Spec : Prop :=
  ∀ n, (P2928336532776126939.a n : ℤ) = A361522 n

end A361522

/-! ## A361522.P7721214905827649793

`a(n-2)*∑[and(1, n)]` with `a(0)=1, a(1)=0`
-/

namespace A361522.P7721214905827649793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361522.P7721214905827649793

namespace A361522

/-- `a(n-2)*∑[and(1, n)]` -/
def P7721214905827649793.Spec : Prop :=
  ∀ n, (P7721214905827649793.a n : ℤ) = A361522 n

end A361522

/-! ## A361522.P17682566581349691024

`floor(n/2)!-a(n-1)` with `a(0)=1`
-/

namespace A361522.P17682566581349691024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat : ℤ) - a (n - 1)

end

end A361522.P17682566581349691024

namespace A361522

/-- `floor(n/2)!-a(n-1)` -/
def P17682566581349691024.Spec : Prop :=
  ∀ n, P17682566581349691024.a n = A361522 n

end A361522

/-! ## A361522.P3921767478921831930

`a(n-2)/(4/n-2/n)` with `a(0)=1, a(1)=0`
-/

namespace A361522.P3921767478921831930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) / (4 / (n : ℚ) - 2 / (n : ℚ))

end

end A361522.P3921767478921831930

namespace A361522

/-- `a(n-2)/(4/n-2/n)` -/
def P3921767478921831930.Spec : Prop :=
  ∀ n, P3921767478921831930.a n = (A361522 n : ℚ)

end A361522

/-! ## A361522.P4247588159315284424

`floor((∑[a(n-2)²]-1)*a(n-2))` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A361522.P4247588159315284424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * a (n - 2)

end

end A361522.P4247588159315284424

namespace A361522

/-- `floor((∑[a(n-2)²]-1)*a(n-2))` -/
def P4247588159315284424.Spec : Prop :=
  ∀ n, P4247588159315284424.a n = A361522 n

end A361522

/-! ## A361522.P9594963688746309026

`floor((∑[floor(a(n-2))]-1)*a(n-2))` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A361522.P9594963688746309026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * a (n - 2)

end

end A361522.P9594963688746309026

namespace A361522

/-- `floor((∑[floor(a(n-2))]-1)*a(n-2))` -/
def P9594963688746309026.Spec : Prop :=
  ∀ n, P9594963688746309026.a n = A361522 n

end A361522

/-! ## A361522.P11179355865657394304

`a(n-2)*Δ[a(n-2)+n-1]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A361522.P11179355865657394304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 2) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n - 2) * (f1 (n + 1) - f1 n)

end

end A361522.P11179355865657394304

namespace A361522

/-- `a(n-2)*Δ[a(n-2)+n-1]` -/
def P11179355865657394304.Spec : Prop :=
  ∀ n, P11179355865657394304.a n = A361522 n

end A361522

/-! ## A361522.P6145448432187987296

`a(n-2)*∑[a(n-2)²]-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A361522.P6145448432187987296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 2)

end

end A361522.P6145448432187987296

namespace A361522

/-- `a(n-2)*∑[a(n-2)²]-a(n-2)` -/
def P6145448432187987296.Spec : Prop :=
  ∀ n, P6145448432187987296.a n = A361522 n

end A361522

/-! ## A361522.P4588399614013262715

`a(n-2)*∑[1-a(n-1)]-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A361522.P4588399614013262715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) * (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 2)

end

end A361522.P4588399614013262715

namespace A361522

/-- `a(n-2)*∑[1-a(n-1)]-a(n-2)` -/
def P4588399614013262715.Spec : Prop :=
  ∀ n, P4588399614013262715.a n = A361522 n

end A361522

/-! ## A361522.P1068938466282100759

`A081123(n)-a(n-1)` with `a(0)=1`
-/

namespace A361522.P1068938466282100759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A081123 n - a (n - 1)

end

end A361522.P1068938466282100759

namespace A361522

/-- `A081123(n)-a(n-1)` -/
def P1068938466282100759.Spec : Prop :=
  ∀ n, P1068938466282100759.a n = A361522 n

end A361522

/-! ## A361522.P10563109914994011665

`A136572(A075301(n))`
-/

namespace A361522.P10563109914994011665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136572 (A075301 n).toNat

end

end A361522.P10563109914994011665

namespace A361522

/-- `A136572(A075301(n))` -/
def P10563109914994011665.Spec : Prop :=
  ∀ n, P10563109914994011665.a n = A361522 n

end A361522

/-! ## A361522.P3116509015150944127

`A214178(A101881(n))`
-/

namespace A361522.P3116509015150944127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214178 (A101881 n).toNat

end

end A361522.P3116509015150944127

namespace A361522

/-- `A214178(A101881(n))` -/
def P3116509015150944127.Spec : Prop :=
  ∀ n, P3116509015150944127.a n = A361522 n

end A361522

/-! ## A361522.P11878244394371119864

`A116447(A193356(n+1))`
-/

namespace A361522.P11878244394371119864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116447 (A193356 (n + 1)).toNat

end

end A361522.P11878244394371119864

namespace A361522

/-- `A116447(A193356(n+1))` -/
def P11878244394371119864.Spec : Prop :=
  ∀ n, P11878244394371119864.a n = A361522 n

end A361522

/-! ## A361522.P13145845321845094532

`A084938(A134519(n+2))`
-/

namespace A361522.P13145845321845094532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A134519 (n + 2)).toNat

end

end A361522.P13145845321845094532

namespace A361522

/-- `A084938(A134519(n+2))` -/
def P13145845321845094532.Spec : Prop :=
  ∀ n, P13145845321845094532.a n = A361522 n

end A361522

/-! ## A361522.P16937962401926680377

`A136572(eq[1, A135226(n)])`
-/

namespace A361522.P16937962401926680377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136572 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A361522.P16937962401926680377

namespace A361522

/-- `A136572(eq[1, A135226(n)])` -/
def P16937962401926680377.Spec : Prop :=
  ∀ n, P16937962401926680377.a n = A361522 n

end A361522

/-!
# A361524: Number of ways of dividing an n X n square into integer-sided rectangles, up to rotations and reflections.

The programs for A361524, there is no canonical definition to state claims against.
-/

/-! ## A361524.P3876026532004180663

`A361523(∑[n]+n)`
-/

namespace A361524.P3876026532004180663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361523 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A361524.P3876026532004180663

/-!
# A361525: Number of ways of dividing an n X 3 rectangle into integer-sided rectangles, up to rotations and reflections.

The programs for A361525, there is no canonical definition to state claims against.
-/

/-! ## A361525.P1354870473959196376

`A361523(A066099(n+4)+A050622(n+1))`
-/

namespace A361525.P1354870473959196376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361523 (A066099 (n + 4) + A050622 (n + 1)).toNat

end

end A361525.P1354870473959196376

/-!
# A361526: Number of ways of dividing an n X 4 rectangle into integer-sided rectangles, up to rotations and reflections.

The programs for A361526, there is no canonical definition to state claims against.
-/

/-! ## A361526.P7373832994214078139

`record[A361523(A045918(n))]`
-/

namespace A361526.P7373832994214078139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361523 (A045918 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361526.P7373832994214078139

/-!
# A361527: Triangular array read by rows. T(n,k) is the number of labeled digraphs on [n] having exactly k strongly connected components all of which are simple cycles, n >= 0, 0 <= k <= n.

The programs for A361527, there is no canonical definition to state claims against.
-/

/-! ## A361527.P8793075474147390127

`A361455(n)%A122668(A122636(n+1))`
-/

namespace A361527.P8793075474147390127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361455 n) (A122668 (A122636 (n + 1)).toNat)

end

end A361527.P8793075474147390127

/-!
# A361528: a(n) = (2+n)*(2*a(n-1) - (n-2)*a(n-2)) with a(0)=a(1)=1.

The programs for A361528, the canonical program `A361528.P597373359212293908` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361528 has offset 0).

The definition of A361528 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2+n)*(2*a(n-1)-(n-2)*a(n-2))` (program `A361528.P597373359212293908`, by `A361528.P597373359212293908.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A361528.P597373359212293908

`(2+n)*(2*a(n-1)-(n-2)*a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A361528

/-- `(2+n)*(2*a(n-1)-(n-2)*a(n-2))` -/
def P597373359212293908.Spec : Prop :=
  ∀ n, P597373359212293908.a n = A361528 n

theorem P597373359212293908.correct : P597373359212293908.Spec := by
  intro n
  simp only [A361528]

end A361528

/-!
# A361530: Primes that can be written as the result of shuffling the decimal digits of two primes.

The programs for A361530, there is no canonical definition to state claims against.
-/

/-! ## A361530.P18049556290638633110

`A034302(n+1)-A144741(A000105(n))`
-/

namespace A361530.P18049556290638633110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034302 (n + 1) - A144741 (A000105 n).toNat

end

end A361530.P18049556290638633110

/-! ## A361530.P10396116706266425469

`A051362(n+1)-A137579(A299258(n))`
-/

namespace A361530.P10396116706266425469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051362 (n + 1) - A137579 (A299258 n).toNat

end

end A361530.P10396116706266425469

/-!
# A361532: Expansion of e.g.f. exp((x + x^2/2)/(1-x)).

The programs for A361532, there is no canonical definition to state claims against.
-/

/-! ## A361532.P2840210940871093582

`A050913(n)+A027868(A001147(n))`
-/

namespace A361532.P2840210940871093582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050913 n + A027868 (A001147 n).toNat

end

end A361532.P2840210940871093582

/-! ## A361532.P12743052891561259832

`A004001(A258799(n)+A049376(n))`
-/

namespace A361532.P12743052891561259832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A258799 n + A049376 n).toNat

end

end A361532.P12743052891561259832

/-!
# A361533: Expansion of e.g.f. exp(x^3/(6 * (1-x))).

The programs for A361533, there is no canonical definition to state claims against.
-/

/-! ## A361533.P2622445037158793546

`A345167(A363881(n)+1)`
-/

namespace A361533.P2622445037158793546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (A363881 n + 1).toNat

end

end A361533.P2622445037158793546

/-! ## A361533.P17955726763766141233

`A077766(A317776(n))+1-n`
-/

namespace A361533.P17955726763766141233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077766 (A317776 n).toNat + 1 - (n : ℤ)

end

end A361533.P17955726763766141233

/-! ## A361533.P14356291161649373607

`round(A330624(n)/A257471(3*n+2))`
-/

namespace A361533.P14356291161649373607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A330624 n : ℚ) / (A257471 (3 * n + 2) : ℚ))

end

end A361533.P14356291161649373607

/-!
# A361535: Expansion of g.f. 1 / Product_{n>=1} ((1 - x^n)^6 * (1 - x^(2*n-1))^4).

The programs for A361535, there is no canonical definition to state claims against.
-/

/-! ## A361535.P7155715467164981951

`record[A361550(∑[n]+2)]`
-/

namespace A361535.P7155715467164981951
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361550 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361535.P7155715467164981951

/-! ## A361535.P7985025936186253065

`A361550(∑[n+2]+3)`
-/

namespace A361535.P7985025936186253065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361550 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A361535.P7985025936186253065

/-! ## A361535.P9607325960104774517

`record[A010054(n)*A361550(n+2)]`
-/

namespace A361535.P9607325960104774517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A361550 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361535.P9607325960104774517

/-!
# A361536: Expansion of g.f. A(x) satisfying A(x) = Sum_{n>=0} d^n/dx^n x^(3*n) * A(x)^(3*n) / n!.

The programs for A361536, there is no canonical definition to state claims against.
-/

/-! ## A361536.P12975636040751182167

`(2*n+1)*A361302(n+1)`
-/

namespace A361536.P12975636040751182167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A361302 (n + 1)

end

end A361536.P12975636040751182167

/-! ## A361536.P5618551064876703520

`A361302(n+1)*A361398(A024036(n))`
-/

namespace A361536.P5618551064876703520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361302 (n + 1) * A361398 (A024036 n).toNat

end

end A361536.P5618551064876703520

/-!
# A361537: Expansion of g.f. A(x) satisfying A(x) = Sum_{n>=0} d^n/dx^n x^(3*n) * A(x)^(4*n) / n!.

The programs for A361537, there is no canonical definition to state claims against.
-/

/-! ## A361537.P17207640991490042131

`(2*n+1)*A361307(n+1)`
-/

namespace A361537.P17207640991490042131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A361307 (n + 1)

end

end A361537.P17207640991490042131

/-!
# A361538: Central terms of triangle A361050.

The programs for A361538, there is no canonical definition to state claims against.
-/

/-! ## A361538.P1665016782947241828

`A361050((n+1)²+n²)`
-/

namespace A361538.P1665016782947241828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361050 ((n + 1) ^ 2 + n ^ 2)

end

end A361538.P1665016782947241828

/-! ## A361538.P14210240180739475326

`record[gcd(A204016(n+1), A361050(n+1))]`
-/

namespace A361538.P14210240180739475326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A204016 (n + 1)) (A361050 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361538.P14210240180739475326

/-! ## A361538.P4584985025892543435

`A057427(n+4)*A361050(A001844(n))`
-/

namespace A361538.P4584985025892543435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 4) * A361050 (A001844 n).toNat

end

end A361538.P4584985025892543435

/-! ## A361538.P12377390348323973581

`A361050(A001844(n))+A000007(2*n+3)`
-/

namespace A361538.P12377390348323973581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361050 (A001844 n).toNat + A000007 (2 * n + 3)

end

end A361538.P12377390348323973581

/-! ## A361538.P11242759794744128321

`A027642(2*n+3)*A361050(A001844(n))`
-/

namespace A361538.P11242759794744128321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (2 * n + 3) * A361050 (A001844 n).toNat

end

end A361538.P11242759794744128321

/-!
# A361539: a(n) = A361540(n, n-2) for n >= 2, a diagonal of triangle A361540.

The programs for A361539, there is no canonical definition to state claims against.
-/

/-! ## A361539.P3933485319969308755

`A361540(∑[n+3])`
-/

namespace A361539.P3933485319969308755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361540 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361539.P3933485319969308755

/-!
# A361541: Expansion of g.f. A(x) satisfying A(x) = Sum_{n>=0} d^n/dx^n x^(4*n) * A(x)^n / n!.

The programs for A361541, there is no canonical definition to state claims against.
-/

/-! ## A361541.P16192132699620860173

`(3*n+1)*A361308(n+1)`
-/

namespace A361541.P16192132699620860173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) * A361308 (n + 1)

end

end A361541.P16192132699620860173

/-! ## A361541.P3162630796785673622

`A361308(n+1)*A016777(n)`
-/

namespace A361541.P3162630796785673622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361308 (n + 1) * A016777 n

end

end A361541.P3162630796785673622

/-!
# A361542: Expansion of g.f. A(x) satisfying A(x) = Sum_{n>=0} d^n/dx^n x^(4*n) * A(x)^(2*n) / n!.

The programs for A361542, there is no canonical definition to state claims against.
-/

/-! ## A361542.P17330688278494025217

`(3*n+1)*A361309(n+1)`
-/

namespace A361542.P17330688278494025217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) * A361309 (n + 1)

end

end A361542.P17330688278494025217

/-! ## A361542.P17938476903295006540

`A361309(n+1)*A016777(n)`
-/

namespace A361542.P17938476903295006540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361309 (n + 1) * A016777 n

end

end A361542.P17938476903295006540

/-!
# A361543: Expansion of g.f. A(x) satisfying A(x) = Sum_{n>=0} d^n/dx^n x^(4*n) * A(x)^(3*n) / n!.

The programs for A361543, there is no canonical definition to state claims against.
-/

/-! ## A361543.P863709676307204368

`(3*n+1)*A361310(n+1)`
-/

namespace A361543.P863709676307204368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) * A361310 (n + 1)

end

end A361543.P863709676307204368

/-!
# A361544: a(n) = A361540(n,1) for n >= 1, a column of triangle A361540.

The programs for A361544, there is no canonical definition to state claims against.
-/

/-! ## A361544.P15590081914870137108

`A361540(∑[n+1]+1)`
-/

namespace A361544.P15590081914870137108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361540 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A361544.P15590081914870137108

/-! ## A361544.P4141150813399382715

`record[A361540(A286238(n+1))]`
-/

namespace A361544.P4141150813399382715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361540 (A286238 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361544.P4141150813399382715

/-! ## A361544.P7646776660811941551

`record[A361540(gcd(n, 1-A002262(n)))]`
-/

namespace A361544.P7646776660811941551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361540 (Int.gcd (n : ℤ) (1 - A002262 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361544.P7646776660811941551

/-! ## A361544.P15655629687709867585

`record[A361540(n+2)/A329066(n)]`
-/

namespace A361544.P15655629687709867585
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361540 (n + 2) : ℚ) / (A329066 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361544.P15655629687709867585

/-!
# A361545: Expansion of e.g.f. exp(x^4/(24 * (1-x))).

The programs for A361545, there is no canonical definition to state claims against.
-/

/-! ## A361545.P11578661738018725333

`A194698(A293050(n)+12)`
-/

namespace A361545.P11578661738018725333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A293050 n + 12).toNat

end

end A361545.P11578661738018725333

/-! ## A361545.P7559941148700070267

`A008679(A001710(n)+2-n)`
-/

namespace A361545.P7559941148700070267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A001710 n + (2 - (n : ℤ))).toNat

end

end A361545.P7559941148700070267

/-! ## A361545.P9579503506364235429

`A194698(A293053(∑[n+4]+2)+12)`
-/

namespace A361545.P9579503506364235429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A293053 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + 12).toNat

end

end A361545.P9579503506364235429

/-!
# A361546: a(n) is the least odd number k such that k*2^prime(n) + 1 is prime, or -1 if no such number k exists.

The programs for A361546, there is no canonical definition to state claims against.
-/

/-! ## A361546.P7688941790347784874

`A057778(p?[A173517(n)])`
-/

namespace A361546.P7688941790347784874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057778 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A361546.P7688941790347784874

/-! ## A361546.P16453306053049948697

`A057778(A000040(n+1))`
-/

namespace A361546.P16453306053049948697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057778 (A000040 (n + 1)).toNat

end

end A361546.P16453306053049948697

/-! ## A361546.P4262712697794260580

`A057778(A006005(n+1))`
-/

namespace A361546.P4262712697794260580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057778 (A006005 (n + 1)).toNat

end

end A361546.P4262712697794260580

/-! ## A361546.P12593811359268444402

`A256787(A102781(n+1))`
-/

namespace A361546.P12593811359268444402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256787 (A102781 (n + 1)).toNat

end

end A361546.P12593811359268444402

/-! ## A361546.P1204342868002183964

`A057778(A008578(n+2))`
-/

namespace A361546.P1204342868002183964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057778 (A008578 (n + 2)).toNat

end

end A361546.P1204342868002183964

/-! ## A361546.P1348583446010709616

`A057778(A075643(n+2))`
-/

namespace A361546.P1348583446010709616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057778 (A075643 (n + 2)).toNat

end

end A361546.P1348583446010709616

/-! ## A361546.P286934846214345826

`A057778(A182986(n+2))`
-/

namespace A361546.P286934846214345826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057778 (A182986 (n + 2)).toNat

end

end A361546.P286934846214345826

/-! ## A361546.P10974237107349498101

`A057778(record[A006530(n+2)])`
-/

namespace A361546.P10974237107349498101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057778 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A361546.P10974237107349498101

/-! ## A361546.P6048765520766129429

`A057778(record[A020639(n+2)])`
-/

namespace A361546.P6048765520766129429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057778 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A361546.P6048765520766129429

/-! ## A361546.P16805436824716887823

`A057778(A006093(n+1)+1)`
-/

namespace A361546.P16805436824716887823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057778 (A006093 (n + 1) + 1).toNat

end

end A361546.P16805436824716887823

/-! ## A361546.P15458711596391142773

`A253398(n+1)-A000038(n)`
-/

namespace A361546.P15458711596391142773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253398 (n + 1) - A000038 n

end

end A361546.P15458711596391142773

/-! ## A361546.P8499280293401667856

`A253398(n+1)%A000954(n)`
-/

namespace A361546.P8499280293401667856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253398 (n + 1)) (A000954 n)

end

end A361546.P8499280293401667856

/-! ## A361546.P1727638938175659102

`and(A253398(n+1), A260196(n))`
-/

namespace A361546.P1727638938175659102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A253398 (n + 1)) (A260196 n)

end

end A361546.P1727638938175659102

/-! ## A361546.P14132015750639030670

`and(A153881(n+1), A253398(n+1))`
-/

namespace A361546.P14132015750639030670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153881 (n + 1)) (A253398 (n + 1))

end

end A361546.P14132015750639030670

/-! ## A361546.P18270598685482171924

`and(A052940(n), A253398(n+1))`
-/

namespace A361546.P18270598685482171924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052940 n) (A253398 (n + 1))

end

end A361546.P18270598685482171924

/-! ## A361546.P3687254658072529956

`and(A147760(n+1), A253398(n+1))`
-/

namespace A361546.P3687254658072529956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A147760 (n + 1)) (A253398 (n + 1))

end

end A361546.P3687254658072529956

/-! ## A361546.P8047276102035724376

`and(A099035(n+1), A253398(n+1))`
-/

namespace A361546.P8047276102035724376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099035 (n + 1)) (A253398 (n + 1))

end

end A361546.P8047276102035724376

/-! ## A361546.P1273416428648622597

`and(A003261(n+1), A253398(n+1))`
-/

namespace A361546.P1273416428648622597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003261 (n + 1)) (A253398 (n + 1))

end

end A361546.P1273416428648622597

/-! ## A361546.P5065659282886444067

`and(A055580(n), A253398(n+1))`
-/

namespace A361546.P5065659282886444067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055580 n) (A253398 (n + 1))

end

end A361546.P5065659282886444067

/-! ## A361546.P17610460223452679

`and(A018886(n+1), A253398(n+1))`
-/

namespace A361546.P17610460223452679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018886 (n + 1)) (A253398 (n + 1))

end

end A361546.P17610460223452679

/-!
# A361547: Expansion of e.g.f. exp(x^5/(120 * (1-x))).

The programs for A361547, there is no canonical definition to state claims against.
-/

/-! ## A361547.P11193395533871560731

`A245092(n*a(n-1))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=1`
-/

namespace A361547.P11193395533871560731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 0, 1] fun n a =>
  A245092 ((n : ℤ) * a (n - 1)).toNat

end

end A361547.P11193395533871560731

/-! ## A361547.P12587169016850738121

`(lcm(n, 1-a(n-1))+n)%A333431(n+1)` with `a(0)=1`
-/

namespace A361547.P12587169016850738121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (Int.lcm (n : ℤ) (1 - a (n - 1)) + n : ℤ) (A333431 (n + 1))

end

end A361547.P12587169016850738121

/-! ## A361547.P14822517147249975326

`A029588(n)+A010054(A007051(n))`
-/

namespace A361547.P14822517147249975326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029588 n + A010054 (A007051 n).toNat

end

end A361547.P14822517147249975326

/-! ## A361547.P13014580264894887563

`A029588(n)^A055396(A059446(3*n+1))`
-/

namespace A361547.P13014580264894887563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029588 n : ℚ) ^ (A055396 (A059446 (3 * n + 1)).toNat : ℤ)

end

end A361547.P13014580264894887563

/-! ## A361547.P11687862815909069240

`A267145(A024212(n+1))+A029588(n)`
-/

namespace A361547.P11687862815909069240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267145 (A024212 (n + 1)).toNat + A029588 n

end

end A361547.P11687862815909069240

/-!
# A361548: Expansion of e.g.f. exp((x + x^2/2 + x^3/6)/(1-x)).

The programs for A361548, there is no canonical definition to state claims against.
-/

/-! ## A361548.P14417592507965451080

`A215716(n)+A002264(A005649(n))`
-/

namespace A361548.P14417592507965451080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215716 n + A002264 (A005649 n).toNat

end

end A361548.P14417592507965451080

/-! ## A361548.P9063905349564717002

`A161116(A161120(n))+A005442(n)`
-/

namespace A361548.P9063905349564717002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161116 (A161120 n).toNat + A005442 n

end

end A361548.P9063905349564717002

/-!
# A361549: a(n) = A361540(n,2) for n >= 2, a column of triangle A361540.

The programs for A361549, there is no canonical definition to state claims against.
-/

/-! ## A361549.P13915423156542568118

`A361540(∑[n+2]+3)`
-/

namespace A361549.P13915423156542568118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361540 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A361549.P13915423156542568118

/-!
# A361551: Expansion of g.f. A(x) satisfying A(x) = Sum_{n>=0} d^n/dx^n (x^(5*n) * A(x)^n) / n!.

The programs for A361551, there is no canonical definition to state claims against.
-/

/-! ## A361551.P1965170770982897907

`(4*n+1)*A361311(n+1)`
-/

namespace A361551.P1965170770982897907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * A361311 (n + 1)

end

end A361551.P1965170770982897907

/-!
# A361552: Expansion of g.f. A(x) satisfying 2*x = Sum_{n=-oo..+oo} x^(n*(3*n+1)/2) * (A(x)^(3*n) - 1/A(x)^(3*n+1)).

The programs for A361552, there is no canonical definition to state claims against.
-/

/-! ## A361552.P17489506843718665569

`A154958(∑[record[A070918(n)]])`
-/

namespace A361552.P17489506843718665569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070918 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A361552.P17489506843718665569

/-!
# A361553: Expansion of g.f. A(x) satisfying 3*x = Sum_{n=-oo..+oo} x^(n*(3*n+1)/2) * (A(x)^(3*n) - 1/A(x)^(3*n+1)).

The programs for A361553, there is no canonical definition to state claims against.
-/

/-! ## A361553.P16670398073813203069

`A094728(A336271(n)+A000975(n))`
-/

namespace A361553.P16670398073813203069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094728 (A336271 n + A000975 n).toNat

end

end A361553.P16670398073813203069

/-!
# A361554: Expansion of g.f. A(x) satisfying 4*x = Sum_{n=-oo..+oo} x^(n*(3*n+1)/2) * (A(x)^(3*n) - 1/A(x)^(3*n+1)).

The programs for A361554, there is no canonical definition to state claims against.
-/

/-! ## A361554.P948273474532090451

`A111084(A296964(n+1)+A045917(n+1))`
-/

namespace A361554.P948273474532090451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111084 (A296964 (n + 1) + A045917 (n + 1)).toNat

end

end A361554.P948273474532090451

/-!
# A361555: Expansion of g.f. A(x) satisfying 5*x = Sum_{n=-oo..+oo} x^(n*(3*n+1)/2) * (A(x)^(3*n) - 1/A(x)^(3*n+1)).

The programs for A361555, there is no canonical definition to state claims against.
-/

/-! ## A361555.P14091044448214043477

`A078898(A008439(n)*A304443(n))`
-/

namespace A361555.P14091044448214043477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A008439 n * A304443 n).toNat

end

end A361555.P14091044448214043477

/-!
# A361556: Central terms of triangle A361550.

The programs for A361556, there is no canonical definition to state claims against.
-/

/-! ## A361556.P6942250428394331202

`A361550(∑[4*n])`
-/

namespace A361556.P6942250428394331202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361550 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361556.P6942250428394331202

/-! ## A361556.P12901939983854890348

`record[A003982(n)*A361550(n)]`
-/

namespace A361556.P12901939983854890348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A361550 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361556.P12901939983854890348

/-! ## A361556.P2717131921084713913

`record[gcd(A204016(n+1), A361550(n))]`
-/

namespace A361556.P2717131921084713913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A204016 (n + 1)) (A361550 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361556.P2717131921084713913

/-! ## A361556.P3395488609596118757

`A361550(A046092(n))%A205203(n+1)`
-/

namespace A361556.P3395488609596118757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361550 (A046092 n).toNat) (A205203 (n + 1))

end

end A361556.P3395488609596118757

/-!
# A361557: Expansion of e.g.f. exp((exp(x) - 1)/(1-x)).

The programs for A361557, there is no canonical definition to state claims against.
-/

/-! ## A361557.P8845880779674821305

`A004001(A344236(n)+A052773(n))`
-/

namespace A361557.P8845880779674821305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A344236 n + A052773 n).toNat

end

end A361557.P8845880779674821305

/-! ## A361557.P56715958175164640

`A361558(n)+A003415(A051118(n))`
-/

namespace A361557.P56715958175164640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361558 n + A003415 (A051118 n).toNat

end

end A361557.P56715958175164640

/-!
# A361558: Expansion of e.g.f. exp((x + x^2/2 + x^3/6 + x^4/24)/(1-x)).

The programs for A361558, there is no canonical definition to state claims against.
-/

/-! ## A361558.P14272824419120033621

`A199202(n)+A057354(A370473(n))`
-/

namespace A361558.P14272824419120033621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199202 n + A057354 (A370473 n).toNat

end

end A361558.P14272824419120033621

/-! ## A361558.P10162102475642419178

`A344654(n)+A065033(A338182(n))`
-/

namespace A361558.P10162102475642419178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344654 n + A065033 (A338182 n).toNat

end

end A361558.P10162102475642419178

/-!
# A361560: Number of labeled digraphs on [n] all of whose strongly connected components are complete digraphs.

The programs for A361560, there is no canonical definition to state claims against.
-/

/-! ## A361560.P3058236235134169116

`A037475(A347186(n!))`
-/

namespace A361560.P3058236235134169116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (A347186 (Nat.factorial n)).toNat

end

end A361560.P3058236235134169116

/-!
# A361561: Number of even middle divisors of n, where "middle divisor" means a divisor in the half-open interval [sqrt(n/2), sqrt(n*2)).

The programs for A361561, there is no canonical definition to state claims against.
-/

/-! ## A361561.P9960324173786269473

`A067742(n+1)-A358434(n+1)`
-/

namespace A361561.P9960324173786269473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (n + 1) - A358434 (n + 1)

end

end A361561.P9960324173786269473

/-! ## A361561.P11722649382599804127

`A348406(n+1)-(A358434(n+1)+1)`
-/

namespace A361561.P11722649382599804127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348406 (n + 1) - (A358434 (n + 1) + 1)

end

end A361561.P11722649382599804127

/-! ## A361561.P13150600847586692487

`A000720(A348406(n+1)-A358434(n+1))`
-/

namespace A361561.P13150600847586692487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A348406 (n + 1) - A358434 (n + 1)).toNat

end

end A361561.P13150600847586692487

/-! ## A361561.P7446094206258792921

`A007298(A348406(n+1)-A358434(n+1))`
-/

namespace A361561.P7446094206258792921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007298 (A348406 (n + 1) - A358434 (n + 1)).toNat

end

end A361561.P7446094206258792921

/-! ## A361561.P17241182083428093184

`A020657(A348406(n+1)-A358434(n+1))`
-/

namespace A361561.P17241182083428093184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020657 (A348406 (n + 1) - A358434 (n + 1)).toNat

end

end A361561.P17241182083428093184

/-! ## A361561.P6975224156087202972

`A049084(A348406(n+1)-A358434(n+1))`
-/

namespace A361561.P6975224156087202972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A348406 (n + 1) - A358434 (n + 1)).toNat

end

end A361561.P6975224156087202972

/-! ## A361561.P3121543428769700587

`A156552(A348406(n+1)-A358434(n+1))`
-/

namespace A361561.P3121543428769700587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A348406 (n + 1) - A358434 (n + 1)).toNat

end

end A361561.P3121543428769700587

/-! ## A361561.P9815451830063081922

`A263297(A348406(n+1)-A358434(n+1))`
-/

namespace A361561.P9815451830063081922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (A348406 (n + 1) - A358434 (n + 1)).toNat

end

end A361561.P9815451830063081922

/-! ## A361561.P4424254412980962061

`ceil(A361879(n+1)/A278480(2*(n+2)))`
-/

namespace A361561.P4424254412980962061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A361879 (n + 1) : ℚ) / (A278480 (2 * (n + 2)) : ℚ)⌉

end

end A361561.P4424254412980962061

/-!
# A361562: Wagstaff numbers that are of the form 4*k + 3.

The programs for A361562, there is no canonical definition to state claims against.
-/

/-! ## A361562.P17788953747712051427

`∩[A000978(n+1), A002145(n+1)]`
-/

namespace A361562.P17788953747712051427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361562.P17788953747712051427

/-! ## A361562.P12686418706912263436

`filter[A000978(n+1), A359152(#)]`
-/

namespace A361562.P12686418706912263436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A361562.P12686418706912263436

/-! ## A361562.P18321281694541155475

`filter[A092559(n+1), A359152(#)]`
-/

namespace A361562.P18321281694541155475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A361562.P18321281694541155475

/-! ## A361562.P13865052443189052200

`filter[A107036(n+1), A359152(#)]`
-/

namespace A361562.P13865052443189052200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A361562.P13865052443189052200

/-! ## A361562.P16711883518081767365

`filter[A280083(n+2), A359152(#)]`
-/

namespace A361562.P16711883518081767365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280083 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A361562.P16711883518081767365

/-!
# A361563: Wagstaff numbers that are of the form 4*k + 1.

The programs for A361563, there is no canonical definition to state claims against.
-/

/-! ## A361563.P17536231795836532185

`∩[A000978(n+1), A008846(n+1)]`
-/

namespace A361563.P17536231795836532185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361563.P17536231795836532185

/-! ## A361563.P16475593976289766488

`∩[A008846(n+1), A066263(n+1)]`
-/

namespace A361563.P16475593976289766488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361563.P16475593976289766488

/-! ## A361563.P8672779034119239359

`∩[A000978(n+1), A002144(n+1)]`
-/

namespace A361563.P8672779034119239359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361563.P8672779034119239359

/-! ## A361563.P16023782019734827674

`∩[A000978(n+1), A002313(n+1)]`
-/

namespace A361563.P16023782019734827674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361563.P16023782019734827674

/-! ## A361563.P8365067837842907442

`∩[A000978(n+1), A055025(n+1)]`
-/

namespace A361563.P8365067837842907442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361563.P8365067837842907442

/-!
# A361564: Number of (n-3)-connected unlabeled n-node graphs.

The programs for A361564, there is no canonical definition to state claims against.
-/

/-! ## A361564.P17250496181958934266

`or(∑[A025430(n+1)], A107742(n+3))`
-/

namespace A361564.P17250496181958934266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A107742 (n + 3))

end

end A361564.P17250496181958934266

/-! ## A361564.P7544034272436118872

`or(ceil((n-3)/4), A107742(A118955(n+1)))`
-/

namespace A361564.P7544034272436118872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌈((n : ℤ) - 3 : ℚ) / 4⌉ (A107742 (A118955 (n + 1)).toNat)

end

end A361564.P7544034272436118872

/-! ## A361564.P9351172019360452385

`A007916(A000726(2*n+1))+comp[∑[n]]-n`
-/

namespace A361564.P9351172019360452385
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (A000726 (2 * n + 1)).toNat + ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))

end

end A361564.P9351172019360452385

/-! ## A361564.P4461634656238205220

`A004709(A342528(n)+A194439(n+5))`
-/

namespace A361564.P4461634656238205220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (A342528 n + A194439 (n + 5)).toNat

end

end A361564.P4461634656238205220

/-! ## A361564.P16541244855235162306

`or(A000523(A180000(n)), A107742(n+3))`
-/

namespace A361564.P16541244855235162306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000523 (A180000 n).toNat) (A107742 (n + 3))

end

end A361564.P16541244855235162306

/-!
# A361565: a(n) is the numerator of the median of divisors of n.

The programs for A361565, there is no canonical definition to state claims against.
-/

/-! ## A361565.P7562834905101455621

`lcm(2, A063655(n+1))/2`
-/

namespace A361565.P7562834905101455621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A063655 (n + 1)) : ℚ) / 2

end

end A361565.P7562834905101455621

/-! ## A361565.P10991616771091536885

`A026741(A063655(n+1))`
-/

namespace A361565.P10991616771091536885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A063655 (n + 1)).toNat

end

end A361565.P10991616771091536885

/-! ## A361565.P6594660245412659786

`A001281(lcm(2, A063655(n+1)))`
-/

namespace A361565.P6594660245412659786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (Int.lcm 2 (A063655 (n + 1)))

end

end A361565.P6594660245412659786

/-! ## A361565.P18222551556091008145

`A001281(lcm(A262767(n+1)/2, A275437(n)))`
-/

namespace A361565.P18222551556091008145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (Int.lcm (SequenceMachineLib.roundAway ((A262767 (n + 1) : ℚ) / 2)) (A275437 n))

end

end A361565.P18222551556091008145

/-! ## A361565.P1491228348201827883

`A001281(lcm(1-A220114(n+1)+n, A275437(n+1)))`
-/

namespace A361565.P1491228348201827883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (Int.lcm (1 - A220114 (n + 1) + (n : ℤ)) (A275437 (n + 1)))

end

end A361565.P1491228348201827883

/-! ## A361565.P13785467828922610998

`A030065(A262767(n+1))`
-/

namespace A361565.P13785467828922610998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030065 (A262767 (n + 1)).toNat

end

end A361565.P13785467828922610998

/-!
# A361566: a(n) is the denominator of the median of divisors of n.

The programs for A361566, there is no canonical definition to state claims against.
-/

/-! ## A361566.P16478865810890820777

`A056737(n+1)%2+1`
-/

namespace A361566.P16478865810890820777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056737 (n + 1)) 2 + 1

end

end A361566.P16478865810890820777

/-! ## A361566.P7447774972876251583

`A063655(n+1)%2+1`
-/

namespace A361566.P7447774972876251583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063655 (n + 1)) 2 + 1

end

end A361566.P7447774972876251583

/-! ## A361566.P8263344712119574648

`A319070(n+1)%2+1`
-/

namespace A361566.P8263344712119574648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319070 (n + 1)) 2 + 1

end

end A361566.P8263344712119574648

/-! ## A361566.P124479735795898420

`A323728(n+1)%2+1`
-/

namespace A361566.P124479735795898420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323728 (n + 1)) 2 + 1

end

end A361566.P124479735795898420

/-! ## A361566.P9933659814519275888

`(A262767(n+1)/2)%2+1`
-/

namespace A361566.P9933659814519275888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A262767 (n + 1) : ℚ) / 2)) 2 + 1

end

end A361566.P9933659814519275888

/-! ## A361566.P16801760393791051304

`A000034(A056737(n+1))`
-/

namespace A361566.P16801760393791051304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A056737 (n + 1)).toNat

end

end A361566.P16801760393791051304

/-! ## A361566.P17287645409729801569

`A000034(A063655(n+1))`
-/

namespace A361566.P17287645409729801569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A063655 (n + 1)).toNat

end

end A361566.P17287645409729801569

/-! ## A361566.P9996686424962537647

`A000034(A387830(n+1))`
-/

namespace A361566.P9996686424962537647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A387830 (n + 1)).toNat

end

end A361566.P9996686424962537647

/-! ## A361566.P7475566822138266424

`A138191(A376915(n+1))`
-/

namespace A361566.P7475566822138266424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138191 (A376915 (n + 1)).toNat

end

end A361566.P7475566822138266424

/-! ## A361566.P9909842762963481449

`A000034(A163520(n+1)-n)`
-/

namespace A361566.P9909842762963481449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A163520 (n + 1) - (n : ℤ)).toNat

end

end A361566.P9909842762963481449

/-! ## A361566.P6892991702887046228

`gcd(A000034(n), A163520(n+1))`
-/

namespace A361566.P6892991702887046228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000034 n) (A163520 (n + 1))

end

end A361566.P6892991702887046228

/-! ## A361566.P6930405408677274487

`A000165(and(A019426(2*n), A063655(n+1)))`
-/

namespace A361566.P6930405408677274487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 (Int.land (A019426 (2 * n)) (A063655 (n + 1))).toNat

end

end A361566.P6930405408677274487

/-! ## A361566.P11887447622291906302

`A129981(and(A019426(2*n), A063655(n+1)))`
-/

namespace A361566.P11887447622291906302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129981 (Int.land (A019426 (2 * n)) (A063655 (n + 1))).toNat

end

end A361566.P11887447622291906302

/-! ## A361566.P80720270711481463

`A248809(and(A019426(2*n), A063655(n+1)))`
-/

namespace A361566.P80720270711481463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248809 (Int.land (A019426 (2 * n)) (A063655 (n + 1))).toNat

end

end A361566.P80720270711481463

/-! ## A361566.P8402385481292907148

`A057427(n+2)+A000035(A056737(n+1))`
-/

namespace A361566.P8402385481292907148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 2) + A000035 (A056737 (n + 1)).toNat

end

end A361566.P8402385481292907148

/-! ## A361566.P6916271189793935558

`A014695(A262767(n+1)-1)`
-/

namespace A361566.P6916271189793935558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (A262767 (n + 1) - 1).toNat

end

end A361566.P6916271189793935558

/-! ## A361566.P17505323707458538897

`A014695(A262767(n+1))`
-/

namespace A361566.P17505323707458538897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (A262767 (n + 1)).toNat

end

end A361566.P17505323707458538897

/-! ## A361566.P5035138124658478733

`gcd(2, A000330(A262767(n+1)+1))`
-/

namespace A361566.P5035138124658478733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A000330 (A262767 (n + 1) + 1).toNat)

end

end A361566.P5035138124658478733

/-! ## A361566.P4239540956814388739

`A322026(A056737(n+1)²+1)`
-/

namespace A361566.P4239540956814388739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322026 (A056737 (n + 1) ^ 2 + 1).toNat

end

end A361566.P4239540956814388739

/-! ## A361566.P14127472017972799211

`A019426(gcd(A063655(n+1), A131575(3*n+4)))`
-/

namespace A361566.P14127472017972799211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (Int.gcd (A063655 (n + 1)) (A131575 (3 * n + 4)))

end

end A361566.P14127472017972799211

/-!
# A361568: Expansion of e.g.f. exp(x^3/6 * (1+x)^3).

The programs for A361568, there is no canonical definition to state claims against.
-/

/-! ## A361568.P6440752986590756746

`A359262(A238026(n+1))*A361533(n)`
-/

namespace A361568.P6440752986590756746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359262 (A238026 (n + 1)).toNat * A361533 n

end

end A361568.P6440752986590756746

/-! ## A361568.P879400452849916430

`A164995(A154921(3*n))*A361533(n)`
-/

namespace A361568.P879400452849916430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164995 (A154921 (3 * n)).toNat * A361533 n

end

end A361568.P879400452849916430

/-! ## A361568.P1392605404894145616

`A211987(A202812(2*(n+2)))*A361533(n)`
-/

namespace A361568.P1392605404894145616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211987 (A202812 (2 * (n + 2))).toNat * A361533 n

end

end A361568.P1392605404894145616

/-!
# A361569: Expansion of e.g.f. exp(x^4/24 * (1+x)^4).

The programs for A361569, there is no canonical definition to state claims against.
-/

/-! ## A361569.P10067122725101995815

`A050873(A373780(n+1))*A373758(n)`
-/

namespace A361569.P10067122725101995815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (A373780 (n + 1)).toNat * A373758 n

end

end A361569.P10067122725101995815

/-! ## A361569.P8452372061256913445

`A361566(A110746(n+1))*A373758(n)`
-/

namespace A361569.P8452372061256913445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361566 (A110746 (n + 1)).toNat * A373758 n

end

end A361569.P8452372061256913445

/-! ## A361569.P5029400202443765639

`A341450(ceil(2^(n-1))-(1-n%3))`
-/

namespace A361569.P5029400202443765639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341450 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - (1 - ((n % 3 : ℕ) : ℤ))).toNat

end

end A361569.P5029400202443765639

/-!
# A361570: Expansion of e.g.f. exp( (x * (1+x))^2 ).

The programs for A361570, there is no canonical definition to state claims against.
-/

/-! ## A361570.P4530127331288787904

`A072078(A060928(n))*A345747(n)`
-/

namespace A361570.P4530127331288787904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072078 (A060928 n).toNat * A345747 n

end

end A361570.P4530127331288787904

/-! ## A361570.P4091396358455033361

`A133255(A003418(n))*A345747(n)`
-/

namespace A361570.P4091396358455033361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133255 (A003418 n).toNat * A345747 n

end

end A361570.P4091396358455033361

/-! ## A361570.P4514681060750965030

`A014709(A176812(n))*A345747(n)`
-/

namespace A361570.P4514681060750965030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 (A176812 n).toNat * A345747 n

end

end A361570.P4514681060750965030

/-!
# A361571: Expansion of e.g.f. exp( (x * (1+x))^3 ).

The programs for A361571, there is no canonical definition to state claims against.
-/

/-! ## A361571.P3078862404060240949

`A079888(A002890(n))*A355575(n)`
-/

namespace A361571.P3078862404060240949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079888 (A002890 n).toNat * A355575 n

end

end A361571.P3078862404060240949

/-! ## A361571.P8725447904596422678

`A146094(A006455(n))*A293049(n)`
-/

namespace A361571.P8725447904596422678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146094 (A006455 n).toNat * A293049 n

end

end A361571.P8725447904596422678

/-! ## A361571.P12350951606235700020

`A263273(A001498(n)*A293049(n))`
-/

namespace A361571.P12350951606235700020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A001498 n * A293049 n).toNat

end

end A361571.P12350951606235700020

/-!
# A361572: Expansion of e.g.f. exp( (x / (1-x))^3 ).

The programs for A361572, there is no canonical definition to state claims against.
-/

/-! ## A361572.P10703926747487483396

`A144108(A371381(n+1))`
-/

namespace A361572.P10703926747487483396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144108 (A371381 (n + 1)).toNat

end

end A361572.P10703926747487483396

/-! ## A361572.P929097524002803276

`A279305(A179744(n)+2)`
-/

namespace A361572.P929097524002803276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279305 (A179744 n + 2).toNat

end

end A361572.P929097524002803276

/-!
# A361573: Expansion of e.g.f. exp(x^3/(6 * (1 - x)^3)).

The programs for A361573, there is no canonical definition to state claims against.
-/

/-! ## A361573.P5812528488114472470

`A286108(or(1, 10*a(n-1)))` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A361573.P5812528488114472470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A286108 (Int.lor 1 (10 * a (n - 1))).toNat

end

end A361573.P5812528488114472470

/-! ## A361573.P2170750683738149093

`A002487(C(∑[n], 2*n))`
-/

namespace A361573.P2170750683738149093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (2 * n))

end

end A361573.P2170750683738149093

/-!
# A361574: a(n) is the number of Fibonacci meanders of length m*n and central angle 360/m degrees where m = 3.

The programs for A361574, there is no canonical definition to state claims against.
-/

/-! ## A361574.P2713655694224695638

`A230418(A081186(n)+n)`
-/

namespace A361574.P2713655694224695638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230418 (A081186 n + (n : ℤ)).toNat

end

end A361574.P2713655694224695638

/-! ## A361574.P4555751595923700775

`∑[A297571(∑[A000085(n)])]`
-/

namespace A361574.P4555751595923700775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297571 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361574.P4555751595923700775

/-!
# A361576: Expansion of e.g.f. exp((x / (1-x))^4).

The programs for A361576, there is no canonical definition to state claims against.
-/

/-! ## A361576.P12460450023291667370

`A028310(n!)*A366646(n)`
-/

namespace A361576.P12460450023291667370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Nat.factorial n) * A366646 n

end

end A361576.P12460450023291667370

/-! ## A361576.P2294799588287805051

`A145454(n)*A333219(-∏[n-C(2, n+2)])`
-/

namespace A361576.P2294799588287805051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145454 n * A333219 (-(∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A361576.P2294799588287805051

/-! ## A361576.P13638065004351772784

`A145454(n)*A358506(-∏[n-C(2, n+2)])`
-/

namespace A361576.P13638065004351772784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145454 n * A358506 (-(∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A361576.P13638065004351772784

/-! ## A361576.P2370863969137029517

`A108548(A000142(n))*A264924(n)`
-/

namespace A361576.P2370863969137029517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (A000142 n).toNat * A264924 n

end

end A361576.P2370863969137029517

/-!
# A361577: Expansion of e.g.f. exp(x^4/(24 * (1 - x)^4)).

The programs for A361577, there is no canonical definition to state claims against.
-/

/-! ## A361577.P10355211701654455038

`A224937(A121471(n+1))`
-/

namespace A361577.P10355211701654455038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224937 (A121471 (n + 1)).toNat

end

end A361577.P10355211701654455038

/-! ## A361577.P10287898015096016157

`C(A317710(A099947(n)), ∑{e}[n+1, #]+1)`
-/

namespace A361577.P10287898015096016157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A317710 (A099947 n).toNat).toNat (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1)

end

end A361577.P10287898015096016157

/-! ## A361577.P526282707207417919

`A008612(xor(A027750(n+1), A373940(n)))`
-/

namespace A361577.P526282707207417919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (Int.xor (A027750 (n + 1)) (A373940 n)).toNat

end

end A361577.P526282707207417919

/-!
# A361580: If n is composite, replace n with the concatenation of its nontrivial divisors, written in decreasing order, each divisor being written in base 10 with its digits in normal order, otherwise a(n) = n.

The programs for A361580, there is no canonical definition to state claims against.
-/

/-! ## A361580.P2592306416096552041

`A361581(A077342(n+1))`
-/

namespace A361580.P2592306416096552041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361581 (A077342 (n + 1)).toNat

end

end A361580.P2592306416096552041

/-! ## A361580.P8031833304890602929

`A361581(A242474(n+1))`
-/

namespace A361580.P8031833304890602929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361581 (A242474 (n + 1)).toNat

end

end A361580.P8031833304890602929

/-! ## A361580.P11956704263886689555

`A361581(A351374(n+1))`
-/

namespace A361580.P11956704263886689555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361581 (A351374 (n + 1)).toNat

end

end A361580.P11956704263886689555

/-! ## A361580.P5481768977865053823

`A361581(A008554(n+2))`
-/

namespace A361580.P5481768977865053823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361581 (A008554 (n + 2)).toNat

end

end A361580.P5481768977865053823

/-!
# A361583: Number of digraphs on n unlabeled nodes whose strongly connected components are complete digraphs.

The programs for A361583, there is no canonical definition to state claims against.
-/

/-! ## A361583.P15714886677840851120

`A004523(A301982(n)+A048800(n))`
-/

namespace A361583.P15714886677840851120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A301982 n + A048800 n).toNat

end

end A361583.P15714886677840851120

/-! ## A361583.P13494442563453313147

`A028310(A276331(A060350(n))+n)`
-/

namespace A361583.P13494442563453313147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A276331 (A060350 n).toNat + (n : ℤ)).toNat

end

end A361583.P13494442563453313147

/-!
# A361584: Number of digraphs on n unlabeled nodes whose strongly connected components are directed cycles or single vertices.

The programs for A361584, there is no canonical definition to state claims against.
-/

/-! ## A361584.P14517510142616215343

`A062968(A327355(n)+A242882(n))`
-/

namespace A361584.P14517510142616215343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062968 (A327355 n + A242882 n).toNat

end

end A361584.P14517510142616215343

/-! ## A361584.P16137259933808153568

`A004277(A125813(n))-A102403(n)`
-/

namespace A361584.P16137259933808153568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A125813 n).toNat - A102403 n

end

end A361584.P16137259933808153568

/-!
# A361585: Number of digraphs on n unlabeled nodes whose strongly connected components are directed cycles.

The programs for A361585, there is no canonical definition to state claims against.
-/

/-! ## A361585.P2237119496956823065

`A339560(A008937(n)+A005590(n))`
-/

namespace A361585.P2237119496956823065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339560 (A008937 n + A005590 n).toNat

end

end A361585.P2237119496956823065

/-!
# A361586: Number of digraphs on n unlabeled nodes in which every node belongs to a directed cycle.

The programs for A361586, there is no canonical definition to state claims against.
-/

/-! ## A361586.P13224044662610414353

`A361590(∑[n])`
-/

namespace A361586.P13224044662610414353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361590 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361586.P13224044662610414353

/-! ## A361586.P947519309646183418

`and(-1, A361590(A000217(n)))`
-/

namespace A361586.P947519309646183418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A361590 (A000217 n).toNat)

end

end A361586.P947519309646183418

/-! ## A361586.P7338687399965215802

`A054576(2*n+5)*A361590(C(n+1, 2))`
-/

namespace A361586.P7338687399965215802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (2 * n + 5) * A361590 (Nat.choose (n + 1) 2)

end

end A361586.P7338687399965215802

/-! ## A361586.P17812622144883128813

`A361590(C(n+1, 2))%A001353(3*n+2)`
-/

namespace A361586.P17812622144883128813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361590 (Nat.choose (n + 1) 2)) (A001353 (3 * n + 2))

end

end A361586.P17812622144883128813

/-! ## A361586.P4767237586930612672

`A361590(n²-C(n, 2))%A000669(3*n+4)`
-/

namespace A361586.P4767237586930612672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361590 (n ^ 2 - Nat.choose n 2)) (A000669 (3 * n + 4))

end

end A361586.P4767237586930612672

/-!
# A361587: Triangle read by rows: T(n,k) is the number of weakly connected digraphs on n unlabeled nodes with k strongly connected components.

The programs for A361587, there is no canonical definition to state claims against.
-/

/-! ## A361587.P13865780593958630245

`gcd(A010815(2^(n+2)-4), A361588(n))`
-/

namespace A361587.P13865780593958630245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010815 (2 ^ (n + 2) - 4)) (A361588 n)

end

end A361587.P13865780593958630245

/-! ## A361587.P7548918638040665263

`A361588(n)+A010051(A007579(n))`
-/

namespace A361587.P7548918638040665263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361588 n + A010051 (A007579 n).toNat

end

end A361587.P7548918638040665263

/-! ## A361587.P13886873753245024137

`gcd(A049084(A209656(n)), A361588(n))`
-/

namespace A361587.P13886873753245024137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049084 (A209656 n).toNat) (A361588 n)

end

end A361587.P13886873753245024137

/-! ## A361587.P11562748570387422981

`A361588(n)+A063665(A007123(n+1))`
-/

namespace A361587.P11562748570387422981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361588 n + A063665 (A007123 (n + 1)).toNat

end

end A361587.P11562748570387422981

/-!
# A361588: Triangle read by rows: T(n,k) is the number of digraphs on n unlabeled nodes with k strongly connected components and without isolated nodes.

The programs for A361588, there is no canonical definition to state claims against.
-/

/-! ## A361588.P9833204780452594761

`A361587(n)+A010815(A007283(n))`
-/

namespace A361588.P9833204780452594761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361587 n + A010815 (A007283 n).toNat

end

end A361588.P9833204780452594761

/-! ## A361588.P3918197455088319718

`A361587(n)+A014877(A056953(n))`
-/

namespace A361588.P3918197455088319718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361587 n + A014877 (A056953 n).toNat

end

end A361588.P3918197455088319718

/-! ## A361588.P15686553026702166713

`A361587(n)-A014877(A320663(n))`
-/

namespace A361588.P15686553026702166713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361587 n - A014877 (A320663 n).toNat

end

end A361588.P15686553026702166713

/-! ## A361588.P13509601548586053102

`A339052(A001906(n))*A361587(n)`
-/

namespace A361588.P13509601548586053102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339052 (A001906 n).toNat * A361587 n

end

end A361588.P13509601548586053102

/-! ## A361588.P690327253640825640

`A361587(n)%A014682(A003239(n))`
-/

namespace A361588.P690327253640825640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361587 n) (A014682 (A003239 n).toNat)

end

end A361588.P690327253640825640

/-!
# A361589: Number of acyclic digraphs on n unlabeled nodes without isolated nodes.

The programs for A361589, there is no canonical definition to state claims against.
-/

/-! ## A361589.P5970609772755691303

`A361588(∑[n]+n)`
-/

namespace A361589.P5970609772755691303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361588 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A361589.P5970609772755691303

/-! ## A361589.P11748426399166571149

`gcd(A151933(n), A361588(A000096(n)))`
-/

namespace A361589.P11748426399166571149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151933 n) (A361588 (A000096 n).toNat)

end

end A361589.P11748426399166571149

/-! ## A361589.P2245967923469453887

`or(A067310(n), A361588(A000096(n)))`
-/

namespace A361589.P2245967923469453887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A067310 n) (A361588 (A000096 n).toNat)

end

end A361589.P2245967923469453887

/-! ## A361589.P16532160584633427029

`or(A350450(n), A361588(A000096(n)))`
-/

namespace A361589.P16532160584633427029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A350450 n) (A361588 (A000096 n).toNat)

end

end A361589.P16532160584633427029

/-! ## A361589.P495556816135008136

`A361588(A000096(n))+A217156(n+1)`
-/

namespace A361589.P495556816135008136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361588 (A000096 n).toNat + A217156 (n + 1)

end

end A361589.P495556816135008136

/-!
# A361594: Expansion of e.g.f. exp( (x / (1-x))^2 ) / (1-x).

The programs for A361594, there is no canonical definition to state claims against.
-/

/-! ## A361594.P8524242617953221750

`A052887(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A361594.P8524242617953221750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052887 n + (n : ℤ) * a (n - 1)

end

end A361594.P8524242617953221750

/-! ## A361594.P1785356979923532925

`A000009(2*n)*A261224(A028342(n))`
-/

namespace A361594.P1785356979923532925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (2 * n) * A261224 (A028342 n).toNat

end

end A361594.P1785356979923532925

/-!
# A361595: Expansion of e.g.f. exp( (x / (1-x))^3 ) / (1-x).

The programs for A361595, there is no canonical definition to state claims against.
-/

/-! ## A361595.P10385589481685135158

`A000027(A365286(n+1))/A000027(n+1)`
-/

namespace A361595.P10385589481685135158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (A365286 (n + 1)).toNat : ℚ) / (A000027 (n + 1) : ℚ)

end

end A361595.P10385589481685135158

/-!
# A361596: Expansion of e.g.f. exp( x^2/(2 * (1-x)^2) ) / (1-x).

The programs for A361596, there is no canonical definition to state claims against.
-/

/-! ## A361596.P11741499980118937031

`A335344(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A361596.P11741499980118937031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A335344 n + (n : ℤ) * a (n - 1)

end

end A361596.P11741499980118937031

/-! ## A361596.P13793856935235614580

`A269172(∑[A052887(n)])`
-/

namespace A361596.P13793856935235614580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269172 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A361596.P13793856935235614580

/-!
# A361597: Expansion of e.g.f. exp( x^3/(6 * (1-x)^3) ) / (1-x).

The programs for A361597, there is no canonical definition to state claims against.
-/

/-! ## A361597.P11963446425070321014

`∏{e}[11^n, A370878(#)]`
-/

namespace A361597.P11963446425070321014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A370878 (Nat.factorization (f1 n) p)

end

end A361597.P11963446425070321014

/-! ## A361597.P11549200269018729447

`A239389(A130781(n))`
-/

namespace A361597.P11549200269018729447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239389 (A130781 n).toNat

end

end A361597.P11549200269018729447

/-!
# A361598: Expansion of e.g.f. exp( x/(1-x)^2 ) / (1-x).

The programs for A361598, there is no canonical definition to state claims against.
-/

/-! ## A361598.P3949503865759783523

`A361600(∑[n+3])`
-/

namespace A361598.P3949503865759783523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361600 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361598.P3949503865759783523

/-! ## A361598.P12128473656214072511

`record[A361600(n)/A282629(n+3)]`
-/

namespace A361598.P12128473656214072511
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361600 n : ℚ) / (A282629 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361598.P12128473656214072511

/-! ## A361598.P15101354820845228402

`A293718(2*n²)+a(n-1)/n^(-1)` with `a(0)=1`
-/

namespace A361598.P15101354820845228402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A293718 (2 * n ^ 2) : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A361598.P15101354820845228402

/-! ## A361598.P5422161261811100758

`or(1, A293718(A001105(n)))+a(n-1)/n^(-1)` with `a(0)=1`
-/

namespace A361598.P5422161261811100758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lor 1 (A293718 (A001105 n).toNat) : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A361598.P5422161261811100758

/-! ## A361598.P14783515863882095436

`or(1, A293718(A022266(n)))+a(n-1)/n^(-1)` with `a(0)=1`
-/

namespace A361598.P14783515863882095436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lor 1 (A293718 (A022266 n).toNat) : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A361598.P14783515863882095436

/-!
# A361599: Expansion of e.g.f. exp( x/(1-x)^3 ) / (1-x).

The programs for A361599, there is no canonical definition to state claims against.
-/

/-! ## A361599.P1272715451211031900

`A361600(∑[n+5]-(n-1))`
-/

namespace A361599.P1272715451211031900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361600 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 1)).toNat

end

end A361599.P1272715451211031900

