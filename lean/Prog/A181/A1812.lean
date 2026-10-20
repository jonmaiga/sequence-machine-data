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
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
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
# A181200: a(n) = 0!*1!*2!*...*(n-1)! *(n^2)! *(n*(n-1))^2 / 2*n!*(n+1)!*...*(2*n-1)!

The programs for A181200, there is no canonical definition to state claims against.
-/

/-! ## A181200.P6811170373816239633

`A181204(∑[4*n]+1)`
-/

namespace A181200.P6811170373816239633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181204 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A181200.P6811170373816239633

/-!
# A181201: a(n) = 0!*1!*2!*(3*n)!*3*n*(n-1) / ((n)!*(n+1)!*(n+2)!).

The programs for A181201, the canonical program `A181201.P7929129613318591262` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181201 has offset 1).

The definition of A181201 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181201.P7929129613318591262

`2!*(3*(n+1))!*3*(n+1)*n/((n+1)!*(n+2)!*(n+3)!)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181201

/-- `2!*(3*(n+1))!*3*(n+1)*n/((n+1)!*(n+2)!*(n+3)!)` -/
def P7929129613318591262.Spec : Prop :=
  ∀ n, P7929129613318591262.a n = (A181201 (n + 1) : ℚ)

end A181201

/-! ## A181201.P51169816076665214

`1!*2!*(3*(n+1))!*3*(n+1)*n/((n+1)!*(n+2)!*(n+3)!)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A181201.P51169816076665214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial 1 * Nat.factorial 2 * Nat.factorial (3 * (n + 1)) * 3 * (n + 1) * n : ℚ) / (Nat.factorial (n + 1) * Nat.factorial (n + 2) * Nat.factorial (n + 3) : ℚ)

end

end A181201.P51169816076665214

namespace A181201

/-- `1!*2!*(3*(n+1))!*3*(n+1)*n/((n+1)!*(n+2)!*(n+3)!)` -/
def P51169816076665214.Spec : Prop :=
  ∀ n, P51169816076665214.a n = (A181201 (n + 1) : ℚ)

end A181201

/-! ## A181201.P9181877937055489944

`∑[6*n]*A005789(n+1)`
-/

namespace A181201.P9181877937055489944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A005789 (n + 1)

end

end A181201.P9181877937055489944

namespace A181201

/-- `∑[6*n]*A005789(n+1)` -/
def P9181877937055489944.Spec : Prop :=
  ∀ n, P9181877937055489944.a n = A181201 (n + 1)

end A181201

/-! ## A181201.P6271249647221348649

`A181204(∑[n+2]+4)`
-/

namespace A181201.P6271249647221348649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181204 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A181201.P6271249647221348649

namespace A181201

/-- `A181204(∑[n+2]+4)` -/
def P6271249647221348649.Spec : Prop :=
  ∀ n, P6271249647221348649.a n = A181201 (n + 1)

end A181201

/-! ## A181201.P876498405971537739

`lcm(2, A181204(A167614(n+1)))`
-/

namespace A181201.P876498405971537739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A181204 (A167614 (n + 1)).toNat)

end

end A181201.P876498405971537739

namespace A181201

/-- `lcm(2, A181204(A167614(n+1)))` -/
def P876498405971537739.Spec : Prop :=
  ∀ n, (P876498405971537739.a n : ℤ) = A181201 (n + 1)

end A181201

/-!
# A181202: a(n)=0!*1!*2!*3!*(4*n)!*6*n*(n-1) / ((n)!*(n+1)!*(n+2)!*(n+3)!).

The programs for A181202, there is no canonical definition to state claims against.
-/

/-! ## A181202.P6540414032313099174

`A181204(∑[n+3]+7)`
-/

namespace A181202.P6540414032313099174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181204 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A181202.P6540414032313099174

/-! ## A181202.P18216963460505667549

`record[A181204(A027379(A002262(n)))]`
-/

namespace A181202.P18216963460505667549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181204 (A027379 (A002262 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181202.P18216963460505667549

/-!
# A181203: a(n)=0!*1!*2!*3!*4!*(5*n)!*10*n*(n-1) / ((n)!*(n+1)!*(n+2)!*(n+3)!*(n+4)!).

The programs for A181203, there is no canonical definition to state claims against.
-/

/-! ## A181203.P4961991847878857586

`A181204(A374005(n+1))`
-/

namespace A181203.P4961991847878857586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181204 (A374005 (n + 1)).toNat

end

end A181203.P4961991847878857586

/-! ## A181203.P14415147939757758422

`A181204(Δ[A264443(n)])`
-/

namespace A181203.P14415147939757758422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181204 (f1 (n + 1) - f1 n).toNat

end

end A181203.P14415147939757758422

/-! ## A181203.P13362200763034608395

`A181204(A264443(n+1)-A264443(n))`
-/

namespace A181203.P13362200763034608395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181204 (A264443 (n + 1) - A264443 n).toNat

end

end A181203.P13362200763034608395

/-!
# A181204: T(n,k) = 0!*1!*2!*...*(k-1)! *(n*k)! *k*(k-1)*n*(n-1) / 2*n!*(n+1)!*...*(n+k-1)!

The programs for A181204, there is no canonical definition to state claims against.
-/

/-! ## A181204.P7339741402506217032

`A119640(A176791(n))`
-/

namespace A181204.P7339741402506217032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119640 (A176791 n).toNat

end

end A181204.P7339741402506217032

/-! ## A181204.P2085761914164018682

`A196063(A173885(n))`
-/

namespace A181204.P2085761914164018682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196063 (A173885 n).toNat

end

end A181204.P2085761914164018682

/-! ## A181204.P4751017001837129635

`A233036(A157221(n))`
-/

namespace A181204.P4751017001837129635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233036 (A157221 n).toNat

end

end A181204.P4751017001837129635

/-! ## A181204.P6342763530485410119

`A342311(A157243(n))`
-/

namespace A181204.P6342763530485410119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342311 (A157243 n).toNat

end

end A181204.P6342763530485410119

/-! ## A181204.P1047455548585985244

`A340279(A174303(n))`
-/

namespace A181204.P1047455548585985244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340279 (A174303 n).toNat

end

end A181204.P1047455548585985244

/-!
# A181205: Number of n X n matrices containing a permutation of 1..n*n moving each element at most to a neighboring position.

The programs for A181205, there is no canonical definition to state claims against.
-/

/-! ## A181205.P1192825003205263258

`A181206(2*n²-2*n+1)`
-/

namespace A181205.P1192825003205263258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181206 ((2 * n ^ 2 : ℤ) - (2 * n : ℤ) + 1).toNat

end

end A181205.P1192825003205263258

/-! ## A181205.P15148955190910583231

`A287152(∑[n²]+n)`
-/

namespace A181205.P15148955190910583231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287152 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A181205.P15148955190910583231

/-!
# A181206: T(n,k) = number of n X k matrices containing a permutation of 1..n*k moving each element at most to a neighboring position.

The programs for A181206, there is no canonical definition to state claims against.
-/

/-! ## A181206.P1855308571461789489

`∏{e}[A277266(n)^A318082(n+1), #]`
-/

namespace A181206.P1855308571461789489
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277266 n : ℚ) ^ (A318082 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A181206.P1855308571461789489

/-! ## A181206.P5721444051659573813

`A227751(n+1)-Δ[A260794(n+3)]`
-/

namespace A181206.P5721444051659573813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260794 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227751 (n + 1) - (f1 (n + 1) - f1 n)

end

end A181206.P5721444051659573813

/-! ## A181206.P601849363213522530

`A157208(n)+A124010(A001075(n))`
-/

namespace A181206.P601849363213522530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157208 n + A124010 (A001075 n).toNat

end

end A181206.P601849363213522530

/-! ## A181206.P2817585352483135764

`A142465(n)+A001221(A152124(n))`
-/

namespace A181206.P2817585352483135764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142465 n + A001221 (A152124 n).toNat

end

end A181206.P2817585352483135764

/-! ## A181206.P11301629328819989931

`A142465(n)+A001221(A143554(n+2))`
-/

namespace A181206.P11301629328819989931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142465 n + A001221 (A143554 (n + 2)).toNat

end

end A181206.P11301629328819989931

/-!
# A181207: Number of n X 3 binary matrices with no two 1's adjacent diagonally or antidiagonally.

The programs for A181207, the canonical program `A181207.P9278620092306508724` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181207 has offset 1).

The definition of A181207 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181207.P9278620092306508724

`5*a(n-1)-15*a(n-3)+9*a(n-4)` with `a(0)=8, a(1)=25, a(2)=119, a(3)=484`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181207

/-- `5*a(n-1)-15*a(n-3)+9*a(n-4)` -/
def P9278620092306508724.Spec : Prop :=
  ∀ n, P9278620092306508724.a n = A181207 (n + 1)

theorem P9278620092306508724.correct : P9278620092306508724.Spec := by
  intro n
  simp only [A181207, Nat.add_sub_cancel]

end A181207

/-! ## A181207.P6730463460841723755

`A181212(∑[n+2]+4)`
-/

namespace A181207.P6730463460841723755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181212 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A181207.P6730463460841723755

namespace A181207

/-- `A181212(∑[n+2]+4)` -/
def P6730463460841723755.Spec : Prop :=
  ∀ n, P6730463460841723755.a n = A181207 (n + 1)

end A181207

/-! ## A181207.P13656100694716218586

`lcm(A033999(n), A181212(A167614(n+1)))`
-/

namespace A181207.P13656100694716218586
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A181212 (A167614 (n + 1)).toNat)

end

end A181207.P13656100694716218586

namespace A181207

/-- `lcm(A033999(n), A181212(A167614(n+1)))` -/
def P13656100694716218586.Spec : Prop :=
  ∀ n, (P13656100694716218586.a n : ℤ) = A181207 (n + 1)

end A181207

/-! ## A181207.P10911938827293299112

`A181212(A167614(n+1))%A264109(n+1)`
-/

namespace A181207.P10911938827293299112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181212 (A167614 (n + 1)).toNat) (A264109 (n + 1))

end

end A181207.P10911938827293299112

namespace A181207

/-- `A181212(A167614(n+1))%A264109(n+1)` -/
def P10911938827293299112.Spec : Prop :=
  ∀ n, P10911938827293299112.a n = A181207 (n + 1)

end A181207

/-! ## A181207.P4359939913821000031

`A181212(A034856(n+2))%A181208(n+1)`
-/

namespace A181207.P4359939913821000031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181212 (A034856 (n + 2)).toNat) (A181208 (n + 1))

end

end A181207.P4359939913821000031

namespace A181207

/-- `A181212(A034856(n+2))%A181208(n+1)` -/
def P4359939913821000031.Spec : Prop :=
  ∀ n, P4359939913821000031.a n = A181207 (n + 1)

end A181207

/-!
# A181208: Number of n X 4 binary matrices with no two 1's adjacent diagonally or antidiagonally.

The programs for A181208, the canonical program `A181208.P7735863262485493887` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181208 has offset 1).

The definition of A181208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181208.P7735863262485493887

`A052528(n+2)²`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A181208

/-- `A052528(n+2)²` -/
def P7735863262485493887.Spec : Prop :=
  ∀ n, P7735863262485493887.a n = A181208 (n + 1)

theorem P7735863262485493887.correct : P7735863262485493887.Spec := by
  intro n
  simp only [A181208, Nat.add_sub_cancel]

end A181208

/-! ## A181208.P14581322658456071796

`Δ[Δ[A077847(n)]]²`
-/

namespace A181208.P14581322658456071796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077847 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A181208.P14581322658456071796

namespace A181208

/-- `Δ[Δ[A077847(n)]]²` -/
def P14581322658456071796.Spec : Prop :=
  ∀ n, P14581322658456071796.a n = A181208 (n + 1)

end A181208

/-! ## A181208.P6624090031042662753

`Δ[A077937(n+1)]²`
-/

namespace A181208.P6624090031042662753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A181208.P6624090031042662753

namespace A181208

/-- `Δ[A077937(n+1)]²` -/
def P6624090031042662753.Spec : Prop :=
  ∀ n, P6624090031042662753.a n = A181208 (n + 1)

end A181208

/-! ## A181208.P7238140136874383984

`Δ[abs(A077981(n+1))]²`
-/

namespace A181208.P7238140136874383984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077981 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A181208.P7238140136874383984

namespace A181208

/-- `Δ[abs(A077981(n+1))]²` -/
def P7238140136874383984.Spec : Prop :=
  ∀ n, P7238140136874383984.a n = A181208 (n + 1)

end A181208

/-! ## A181208.P18052637171154203740

`Δ[Δ[A052987(n+1)]]²`
-/

namespace A181208.P18052637171154203740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052987 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A181208.P18052637171154203740

namespace A181208

/-- `Δ[Δ[A052987(n+1)]]²` -/
def P18052637171154203740.Spec : Prop :=
  ∀ n, P18052637171154203740.a n = A181208 (n + 1)

end A181208

/-! ## A181208.P4273648922125618771

`Δ[Δ[2*A118649(n)]]²`
-/

namespace A181208.P4273648922125618771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A118649 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A181208.P4273648922125618771

namespace A181208

/-- `Δ[Δ[2*A118649(n)]]²` -/
def P4273648922125618771.Spec : Prop :=
  ∀ n, P4273648922125618771.a n = A181208 (n + 1)

end A181208

/-! ## A181208.P4027694344133403570

`Δ[2*A181306(n+1)]²`
-/

namespace A181208.P4027694344133403570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A181208.P4027694344133403570

namespace A181208

/-- `Δ[2*A181306(n+1)]²` -/
def P4027694344133403570.Spec : Prop :=
  ∀ n, P4027694344133403570.a n = A181208 (n + 1)

end A181208

/-! ## A181208.P5242344668950288825

`Δ[A106666(n+2)/2]²`
-/

namespace A181208.P5242344668950288825
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106666 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A181208.P5242344668950288825

namespace A181208

/-- `Δ[A106666(n+2)/2]²` -/
def P5242344668950288825.Spec : Prop :=
  ∀ n, P5242344668950288825.a n = (A181208 (n + 1) : ℚ)

end A181208

/-! ## A181208.P7457184341315427482

`(A106666(n+1)+A077847(n))²`
-/

namespace A181208.P7457184341315427482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A106666 (n + 1) + A077847 n) ^ 2

end

end A181208.P7457184341315427482

namespace A181208

/-- `(A106666(n+1)+A077847(n))²` -/
def P7457184341315427482.Spec : Prop :=
  ∀ n, P7457184341315427482.a n = A181208 (n + 1)

end A181208

/-! ## A181208.P11907100016132966214

`(A077915(n+2)-A077915(n))²`
-/

namespace A181208.P11907100016132966214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077915 (n + 2) - A077915 n) ^ 2

end

end A181208.P11907100016132966214

namespace A181208

/-- `(A077915(n+2)-A077915(n))²` -/
def P11907100016132966214.Spec : Prop :=
  ∀ n, P11907100016132966214.a n = A181208 (n + 1)

end A181208

/-! ## A181208.P16171693149441917736

`(A077981(n+1)+A077981(n+2))²`
-/

namespace A181208.P16171693149441917736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077981 (n + 1) + A077981 (n + 2)) ^ 2

end

end A181208.P16171693149441917736

namespace A181208

/-- `(A077981(n+1)+A077981(n+2))²` -/
def P16171693149441917736.Spec : Prop :=
  ∀ n, P16171693149441917736.a n = A181208 (n + 1)

end A181208

/-! ## A181208.P17330514588499628064

`(A077937(n+1)-A077937(n+2))²`
-/

namespace A181208.P17330514588499628064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077937 (n + 1) - A077937 (n + 2)) ^ 2

end

end A181208.P17330514588499628064

namespace A181208

/-- `(A077937(n+1)-A077937(n+2))²` -/
def P17330514588499628064.Spec : Prop :=
  ∀ n, P17330514588499628064.a n = A181208 (n + 1)

end A181208

/-! ## A181208.P5367302435848435921

`A052528(n+2)^A001316(A001316(n))`
-/

namespace A181208.P5367302435848435921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052528 (n + 2) : ℚ) ^ (A001316 (A001316 n).toNat : ℤ)

end

end A181208.P5367302435848435921

namespace A181208

/-- `A052528(n+2)^A001316(A001316(n))` -/
def P5367302435848435921.Spec : Prop :=
  ∀ n, P5367302435848435921.a n = (A181208 (n + 1) : ℚ)

end A181208

/-! ## A181208.P3874400308478640101

`A052528(n+2)^A000034(A005408(n))`
-/

namespace A181208.P3874400308478640101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052528 (n + 2) : ℚ) ^ (A000034 (A005408 n).toNat : ℤ)

end

end A181208.P3874400308478640101

namespace A181208

/-- `A052528(n+2)^A000034(A005408(n))` -/
def P3874400308478640101.Spec : Prop :=
  ∀ n, P3874400308478640101.a n = (A181208 (n + 1) : ℚ)

end A181208

/-!
# A181209: Number of n X 5 binary matrices with no two 1's adjacent diagonally or antidiagonally.

The programs for A181209, there is no canonical definition to state claims against.
-/

/-! ## A181209.P677941805988053713

`A181212(A155212(n)+13)`
-/

namespace A181209.P677941805988053713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181212 (A155212 n + 13).toNat

end

end A181209.P677941805988053713

/-! ## A181209.P12738958461936652120

`A181212(eq[6, A131818(n+1)])`
-/

namespace A181209.P12738958461936652120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181212 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181209.P12738958461936652120

/-! ## A181209.P16302889659105671816

`A181212(A374005(n+1))`
-/

namespace A181209.P16302889659105671816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181212 (A374005 (n + 1)).toNat

end

end A181209.P16302889659105671816

/-! ## A181209.P18378037821523896863

`A181212(eq[4, A193592(n)])`
-/

namespace A181209.P18378037821523896863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181212 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181209.P18378037821523896863

/-! ## A181209.P14005752869202424014

`A181212(Δ[A023545(n+1)])`
-/

namespace A181209.P14005752869202424014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181212 (f1 (n + 1) - f1 n).toNat

end

end A181209.P14005752869202424014

/-!
# A181210: Number of nX6 binary matrices with no two 1's adjacent diagonally or antidiagonally.

The programs for A181210, there is no canonical definition to state claims against.
-/

/-! ## A181210.P5389908813617322776

`A220611(n+2)²`
-/

namespace A181210.P5389908813617322776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220611 (n + 2) ^ 2

end

end A181210.P5389908813617322776

/-! ## A181210.P13533330049982116288

`record[A220611(A012257(n))²]`
-/

namespace A181210.P13533330049982116288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220611 (A012257 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181210.P13533330049982116288

/-! ## A181210.P429945835838248141

`A220611(n+2)^A020639(60*(n+1))`
-/

namespace A181210.P429945835838248141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220611 (n + 2) : ℚ) ^ (A020639 (60 * (n + 1)) : ℤ)

end

end A181210.P429945835838248141

/-! ## A181210.P11201541372043621365

`char[A083955(n+1)]+A220611(n+2)^2`
-/

namespace A181210.P11201541372043621365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083955 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + A220611 (n + 2) ^ 2

end

end A181210.P11201541372043621365

/-! ## A181210.P12844867690426754910

`A220611(n+2)^A000005(A220569(n+1))`
-/

namespace A181210.P12844867690426754910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220611 (n + 2) : ℚ) ^ (A000005 (A220569 (n + 1)).toNat : ℤ)

end

end A181210.P12844867690426754910

/-! ## A181210.P7778779783493856775

`A220611(n+2)^A000005(A220627(n+1))`
-/

namespace A181210.P7778779783493856775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220611 (n + 2) : ℚ) ^ (A000005 (A220627 (n + 1)).toNat : ℤ)

end

end A181210.P7778779783493856775

/-! ## A181210.P1614810658224572429

`A220611(n+2)^(A248008(A000040(n+1))+1)`
-/

namespace A181210.P1614810658224572429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220611 (n + 2) : ℚ) ^ (A248008 (A000040 (n + 1)).toNat + 1 : ℤ)

end

end A181210.P1614810658224572429

/-!
# A181211: Number of nX7 binary matrices with no two 1's adjacent diagonally or antidiagonally.

The programs for A181211, there is no canonical definition to state claims against.
-/

/-! ## A181211.P12394865126975762435

`A181212(eq[11, A066657(n)])`
-/

namespace A181211.P12394865126975762435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181212 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181211.P12394865126975762435

/-! ## A181211.P5743259189595444048

`A181212(eq[8, A131818(n+1)])`
-/

namespace A181211.P5743259189595444048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181212 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181211.P5743259189595444048

/-! ## A181211.P10656257180082845619

`A181212(A374008(n+1))`
-/

namespace A181211.P10656257180082845619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181212 (A374008 (n + 1)).toNat

end

end A181211.P10656257180082845619

/-! ## A181211.P11545851503105367521

`A181212(eq[4, A219347(n)])`
-/

namespace A181211.P11545851503105367521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181212 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181211.P11545851503105367521

/-! ## A181211.P6458231572045492073

`A181212(eq[6, A193592(n)])`
-/

namespace A181211.P6458231572045492073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181212 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181211.P6458231572045492073

/-!
# A181212: T(n,k)=Number of nXk binary matrices with no two 1's adjacent diagonally or antidiagonally.

The programs for A181212, there is no canonical definition to state claims against.
-/

/-! ## A181212.P1903247665438280012

`A188824(n+1)+A109076(A331562(n)²)`
-/

namespace A181212.P1903247665438280012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188824 (n + 1) + A109076 (A331562 n ^ 2).toNat

end

end A181212.P1903247665438280012

/-!
# A181213: Number of n X n binary matrices with no three 1's adjacent in a line diagonally or antidiagonally.

The programs for A181213, there is no canonical definition to state claims against.
-/

/-! ## A181213.P5111420170044222990

`A181217(∑[4*n]+1)`
-/

namespace A181213.P5111420170044222990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181217 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A181213.P5111420170044222990

/-! ## A181213.P383439215359352330

`record[A181217(Δ[A235355(n)])]`
-/

namespace A181213.P383439215359352330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181217 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181213.P383439215359352330

/-! ## A181213.P10957660643922175687

`record[A003982(n)*A181217(n+1)]`
-/

namespace A181213.P10957660643922175687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A181217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181213.P10957660643922175687

/-! ## A181213.P14002197999830273529

`record[gcd(A003987(n), A181217(n+1))]`
-/

namespace A181213.P14002197999830273529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A181217 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181213.P14002197999830273529

/-! ## A181213.P12848671528783674428

`A320647(n+1)+A181217(A001844(n))`
-/

namespace A181213.P12848671528783674428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320647 (n + 1) + A181217 (A001844 n).toNat

end

end A181213.P12848671528783674428

/-!
# A181214: Number of n X 3 binary matrices with no three 1's adjacent in a line diagonally or antidiagonally.

The programs for A181214, there is no canonical definition to state claims against.
-/

/-! ## A181214.P9572813929732720382

`A189111(∑[n+2]+4)`
-/

namespace A181214.P9572813929732720382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A181214.P9572813929732720382

/-! ## A181214.P9670823532362046554

`lcm(2, A189111(A167614(n+1)))`
-/

namespace A181214.P9670823532362046554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A189111 (A167614 (n + 1)).toNat)

end

end A181214.P9670823532362046554

/-! ## A181214.P3928584980191486743

`A189111(A167614(n+1))%A270764(n)`
-/

namespace A181214.P3928584980191486743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189111 (A167614 (n + 1)).toNat) (A270764 (n + 10))

end

end A181214.P3928584980191486743

/-! ## A181214.P4003756183987724779

`A188910(∑[n+2]+4)`
-/

namespace A181214.P4003756183987724779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188910 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A181214.P4003756183987724779

/-! ## A181214.P5817668588691684066

`A188910(A167614(n+1))%A189774(n+1)`
-/

namespace A181214.P5817668588691684066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188910 (A167614 (n + 1)).toNat) (A189774 (n + 1))

end

end A181214.P5817668588691684066

/-!
# A181215: Number of nX4 binary matrices with no three 1's adjacent in a line diagonally or antidiagonally.

The programs for A181215, there is no canonical definition to state claims against.
-/

/-! ## A181215.P1127784438948092372

`A181217(∑[n+3]+7)`
-/

namespace A181215.P1127784438948092372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181217 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A181215.P1127784438948092372

/-! ## A181215.P15259711472567177976

`record[A181217(A167499(abs(1-n)+2)-8)]`
-/

namespace A181215.P15259711472567177976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181217 (A167499 (|1 - (n : ℤ)| + 2).toNat - 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181215.P15259711472567177976

/-! ## A181215.P13237096233848587873

`A319998(2*n+3)+A181217(A055998(n+2))`
-/

namespace A181215.P13237096233848587873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319998 (2 * n + 3) + A181217 (A055998 (n + 2)).toNat

end

end A181215.P13237096233848587873

/-!
# A181216: Number of nX5 binary matrices with no three 1's adjacent in a line diagonally or antidiagonally.

The programs for A181216, there is no canonical definition to state claims against.
-/

/-! ## A181216.P16300397425406900518

`A181217(A374005(n+1))`
-/

namespace A181216.P16300397425406900518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181217 (A374005 (n + 1)).toNat

end

end A181216.P16300397425406900518

/-! ## A181216.P7070770151920674328

`A181217(A056000(n)+15)`
-/

namespace A181216.P7070770151920674328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181217 (A056000 n + 15).toNat

end

end A181216.P7070770151920674328

/-! ## A181216.P8767211390053522730

`A181217(eq[6, A131818(n+1)])`
-/

namespace A181216.P8767211390053522730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181216.P8767211390053522730

/-! ## A181216.P16977833463467452159

`A181217(eq[4, A193592(n)])`
-/

namespace A181216.P16977833463467452159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181216.P16977833463467452159

/-! ## A181216.P10730439067217501312

`A181217(Δ[A023545(n+1)])`
-/

namespace A181216.P10730439067217501312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181217 (f1 (n + 1) - f1 n).toNat

end

end A181216.P10730439067217501312

/-!
# A181218: Number of n X n binary matrices with no three 1's adjacent in a line horizontally, vertically, diagonally or antidiagonally.

The programs for A181218, there is no canonical definition to state claims against.
-/

/-! ## A181218.P6262310874826187934

`A181224(∑[4*n]+1)`
-/

namespace A181218.P6262310874826187934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181224 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A181218.P6262310874826187934

/-! ## A181218.P16530031788059932227

`record[gcd(A114327(n), A181224(n+1))]`
-/

namespace A181218.P16530031788059932227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A181224 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181218.P16530031788059932227

/-! ## A181218.P8781035042766809506

`A181224(A001844(n))+A014083(n)`
-/

namespace A181218.P8781035042766809506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181224 (A001844 n).toNat + A014083 n

end

end A181218.P8781035042766809506

/-! ## A181218.P14930818741499292030

`lcm(A158388(n), A181224(A001844(n)))`
-/

namespace A181218.P14930818741499292030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158388 n) (A181224 (A001844 n).toNat)

end

end A181218.P14930818741499292030

/-! ## A181218.P11503420896163186371

`A194698(n+1)+A181224(A001844(n))`
-/

namespace A181218.P11503420896163186371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (n + 1) + A181224 (A001844 n).toNat

end

end A181218.P11503420896163186371

/-!
# A181219: Number of n X 3 binary matrices with no three 1's adjacent in a line horizontally, vertically, diagonally or antidiagonally.

The programs for A181219, there is no canonical definition to state claims against.
-/

/-! ## A181219.P721368257153966219

`A181224(∑[n+2]+4)`
-/

namespace A181219.P721368257153966219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181224 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A181219.P721368257153966219

/-! ## A181219.P13686360844140367317

`lcm((-1)^n, A181224(A167614(n+1)))`
-/

namespace A181219.P13686360844140367317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A181224 (A167614 (n + 1)).toNat)

end

end A181219.P13686360844140367317

/-! ## A181219.P15167976472818763791

`A181224(A167614(n+1))+A025439(n)`
-/

namespace A181219.P15167976472818763791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181224 (A167614 (n + 1)).toNat + A025439 n

end

end A181219.P15167976472818763791

/-! ## A181219.P14172025534120655344

`A181224(A167614(n+1))+A061858(n)`
-/

namespace A181219.P14172025534120655344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181224 (A167614 (n + 1)).toNat + A061858 n

end

end A181219.P14172025534120655344

/-! ## A181219.P14614814389639585551

`A181224(A167614(n+1))+A178798(n)`
-/

namespace A181219.P14614814389639585551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181224 (A167614 (n + 1)).toNat + A178798 n

end

end A181219.P14614814389639585551

/-!
# A181220: Number of n X 4 binary matrices with no three 1's adjacent in a line horizontally, vertically, diagonally or antidiagonally.

The programs for A181220, there is no canonical definition to state claims against.
-/

/-! ## A181220.P10754149801846674810

`A181224(A141214(n)+7)`
-/

namespace A181220.P10754149801846674810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181224 (A141214 n + 7).toNat

end

end A181220.P10754149801846674810

/-! ## A181220.P15122219841618594888

`A181224(A052905(n)+9)`
-/

namespace A181220.P15122219841618594888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181224 (A052905 n + 9).toNat

end

end A181220.P15122219841618594888

/-! ## A181220.P9501145186752784334

`A181224(A167614(n+2)+1)`
-/

namespace A181220.P9501145186752784334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181224 (A167614 (n + 2) + 1).toNat

end

end A181220.P9501145186752784334

/-! ## A181220.P319880572250437272

`A181224(A166136(n+2)-2)`
-/

namespace A181220.P319880572250437272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181224 (A166136 (n + 2) - 2).toNat

end

end A181220.P319880572250437272

/-! ## A181220.P16913210231928078265

`A181224(A166136(n+1)+1+n)`
-/

namespace A181220.P16913210231928078265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181224 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A181220.P16913210231928078265

/-!
# A181221: Number of nX5 binary matrices with no three 1's adjacent in a line horizontally, vertically, diagonally or antidiagonally.

The programs for A181221, there is no canonical definition to state claims against.
-/

/-! ## A181221.P6174179413717954358

`A181224(A167499(n+3))`
-/

namespace A181221.P6174179413717954358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181224 (A167499 (n + 3)).toNat

end

end A181221.P6174179413717954358

/-! ## A181221.P7923012284375651865

`A181224(A056000(n)+15)`
-/

namespace A181221.P7923012284375651865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181224 (A056000 n + 15).toNat

end

end A181221.P7923012284375651865

/-! ## A181221.P6239326425340422557

`A181224(eq[7, A066657(n)])`
-/

namespace A181221.P6239326425340422557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181221.P6239326425340422557

/-! ## A181221.P16069630707002570493

`A181224(eq[6, A131818(n+1)])`
-/

namespace A181221.P16069630707002570493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181221.P16069630707002570493

/-! ## A181221.P15914737507480132709

`A181224(A167614(n+2)+n+6)`
-/

namespace A181221.P15914737507480132709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181224 (A167614 (n + 2) + (n + 6 : ℤ)).toNat

end

end A181221.P15914737507480132709

/-!
# A181222: Number of nX6 binary matrices with no three 1's adjacent in a line horizontally, vertically, diagonally or antidiagonally.

The programs for A181222, there is no canonical definition to state claims against.
-/

/-! ## A181222.P6129880722232233347

`A181224(eq[7, A131818(n+1)])`
-/

namespace A181222.P6129880722232233347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181222.P6129880722232233347

/-! ## A181222.P3611960608064311328

`A181224(A167499(n+3)+n+6)`
-/

namespace A181222.P3611960608064311328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181224 (A167499 (n + 3) + (n + 6 : ℤ)).toNat

end

end A181222.P3611960608064311328

/-! ## A181222.P2424738312070320178

`A181224(A374007(n+1))`
-/

namespace A181222.P2424738312070320178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181224 (A374007 (n + 1)).toNat

end

end A181222.P2424738312070320178

/-! ## A181222.P6489792450828741766

`A181224(eq[3, A219347(n)])`
-/

namespace A181222.P6489792450828741766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181222.P6489792450828741766

/-! ## A181222.P15319527064753056016

`A181224(eq[5, A193592(n)])`
-/

namespace A181222.P15319527064753056016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181222.P15319527064753056016

/-!
# A181223: Number of nX7 binary matrices with no three 1's adjacent in a line horizontally, vertically, diagonally or antidiagonally.

The programs for A181223, there is no canonical definition to state claims against.
-/

/-! ## A181223.P2054690059236728222

`A181224(eq[8, A131818(n+1)])`
-/

namespace A181223.P2054690059236728222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181223.P2054690059236728222

/-! ## A181223.P11521875376566972494

`A181224(Δ[A000125(n+5)]+n+12)`
-/

namespace A181223.P11521875376566972494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181224 (f1 (n + 1) - f1 n + (n : ℤ) + 12).toNat

end

end A181223.P11521875376566972494

/-! ## A181223.P11264537321616697331

`A181224(A374008(n+1))`
-/

namespace A181223.P11264537321616697331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181224 (A374008 (n + 1)).toNat

end

end A181223.P11264537321616697331

/-! ## A181223.P8007152656861915034

`A181224(eq[4, A219347(n)])`
-/

namespace A181223.P8007152656861915034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181223.P8007152656861915034

/-! ## A181223.P14133062334171021626

`A181224(eq[6, A193592(n)])`
-/

namespace A181223.P14133062334171021626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181223.P14133062334171021626

/-!
# A181225: Number of length 2n sequences p(i=0..2n-1) with 0<=p(i)<=i and having exactly n maxima.

The programs for A181225, there is no canonical definition to state claims against.
-/

/-! ## A181225.P1891597101303147095

`A326308(2*(n+1))`
-/

namespace A181225.P1891597101303147095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326308 (2 * (n + 1))

end

end A181225.P1891597101303147095

/-! ## A181225.P14407676269139106979

`A181229(A064226(n))`
-/

namespace A181225.P14407676269139106979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181229 (A064226 n).toNat

end

end A181225.P14407676269139106979

/-! ## A181225.P7458151717091545987

`A181229(A140064(n+1))`
-/

namespace A181225.P7458151717091545987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181229 (A140064 (n + 1)).toNat

end

end A181225.P7458151717091545987

/-! ## A181225.P9573712255136600333

`A181229(A062708(n+1)+1)`
-/

namespace A181225.P9573712255136600333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181229 (A062708 (n + 1) + 1).toNat

end

end A181225.P9573712255136600333

/-! ## A181225.P10363471715491309135

`record[A326308(2*A326307(n))]`
-/

namespace A181225.P10363471715491309135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326308 (2 * A326307 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181225.P10363471715491309135

/-!
# A181226: Number of length n sequences p(i=0..n-1) with 0<=p(i)<=i and having exactly 2 maxima.

The programs for A181226, there is no canonical definition to state claims against.
-/

/-! ## A181226.P11550647460364849427

`A181229(∑[n+2])`
-/

namespace A181226.P11550647460364849427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181229 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181226.P11550647460364849427

/-! ## A181226.P4411096410706592354

`A057427(n)*A181229(A000096(n+1))`
-/

namespace A181226.P4411096410706592354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A181229 (A000096 (n + 1)).toNat

end

end A181226.P4411096410706592354

/-! ## A181226.P8875718859314898564

`A060576(n)*A181229(A000096(n+1))`
-/

namespace A181226.P8875718859314898564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A181229 (A000096 (n + 1)).toNat

end

end A181226.P8875718859314898564

/-! ## A181226.P9080061765478596883

`A181229(A000096(n+1))+A000038(n+1)`
-/

namespace A181226.P9080061765478596883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181229 (A000096 (n + 1)).toNat + A000038 (n + 1)

end

end A181226.P9080061765478596883

/-! ## A181226.P5780548227125800218

`A181229(A000096(n+1))+A000720(((-1)^n)²)`
-/

namespace A181226.P5780548227125800218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181229 (A000096 (n + 1)).toNat + A000720 (((-1) ^ n) ^ 2).toNat

end

end A181226.P5780548227125800218

/-! ## A181226.P5477751158726745504

`A000002(((-1)^n)²)*A181229(A000096(n+1))`
-/

namespace A181226.P5477751158726745504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (((-1) ^ n) ^ 2).toNat * A181229 (A000096 (n + 1)).toNat

end

end A181226.P5477751158726745504

/-! ## A181226.P7164260691366287992

`A000041(((-1)^n)²)*A181229(A000096(n+1))`
-/

namespace A181226.P7164260691366287992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (((-1) ^ n) ^ 2).toNat * A181229 (A000096 (n + 1)).toNat

end

end A181226.P7164260691366287992

/-! ## A181226.P3891571137433445961

`A014963(A008458(n))*A181229(A000096(n+1))`
-/

namespace A181226.P3891571137433445961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A181229 (A000096 (n + 1)).toNat

end

end A181226.P3891571137433445961

/-! ## A181226.P2635922236298409099

`A181229(A000096(n+1))%A000045(A008574(n))`
-/

namespace A181226.P2635922236298409099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181229 (A000096 (n + 1)).toNat) (A000045 (A008574 n).toNat)

end

end A181226.P2635922236298409099

/-!
# A181227: Number of length n sequences p(i=0..n-1) with 0<=p(i)<=i and having exactly 3 maxima.

The programs for A181227, there is no canonical definition to state claims against.
-/

/-! ## A181227.P12451057729283491287

`A181229(∑[n+3]+1)`
-/

namespace A181227.P12451057729283491287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181229 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A181227.P12451057729283491287

/-! ## A181227.P3347536943839247308

`A181229(Δ[A008778(n)])%A028166(n)`
-/

namespace A181227.P3347536943839247308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181229 (f1 (n + 1) - f1 n).toNat) (A028166 n)

end

end A181227.P3347536943839247308

/-! ## A181227.P2323825651420361886

`A181229(Δ[A008778(n)])+A000038(n+1)`
-/

namespace A181227.P2323825651420361886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181229 (f1 (n + 1) - f1 n).toNat + A000038 (n + 1)

end

end A181227.P2323825651420361886

/-! ## A181227.P2764710461357997757

`A070238(n+1)²*A181229(Δ[A008778(n)])`
-/

namespace A181227.P2764710461357997757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070238 (n + 1) ^ 2 * A181229 (f1 (n + 1) - f1 n).toNat

end

end A181227.P2764710461357997757

/-! ## A181227.P12036943149671521772

`(A004442(n)-n)²*A181229(Δ[A008778(n)])`
-/

namespace A181227.P12036943149671521772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) ^ 2 * A181229 (f1 (n + 1) - f1 n).toNat

end

end A181227.P12036943149671521772

/-!
# A181228: Number of length n sequences p(i=0..n-1) with 0<=p(i)<=i and having exactly 4 maxima.

The programs for A181228, there is no canonical definition to state claims against.
-/

/-! ## A181228.P6844945839558504095

`A181229(A055998(n+2))`
-/

namespace A181228.P6844945839558504095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181229 (A055998 (n + 2)).toNat

end

end A181228.P6844945839558504095

/-! ## A181228.P4798591482368746257

`A181229(A155212(n)+5)`
-/

namespace A181228.P4798591482368746257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181229 (A155212 n + 5).toNat

end

end A181228.P4798591482368746257

/-! ## A181228.P16508412440939441857

`A181229(A056000(n)+7)`
-/

namespace A181228.P16508412440939441857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181229 (A056000 n + 7).toNat

end

end A181228.P16508412440939441857

/-! ## A181228.P7457522933358056662

`A181229(A000217(n+4)-3)`
-/

namespace A181228.P7457522933358056662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181229 (A000217 (n + 4) - 3).toNat

end

end A181228.P7457522933358056662

/-! ## A181228.P1638268727327066318

`A181229(Δ[A008778(n+1)]-1)`
-/

namespace A181228.P1638268727327066318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181229 (f1 (n + 1) - f1 n - 1).toNat

end

end A181228.P1638268727327066318

/-! ## A181228.P17337862559516173473

`A181229(4*n+7+A000217(n))`
-/

namespace A181228.P17337862559516173473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181229 ((4 * n + 7 : ℤ) + A000217 n).toNat

end

end A181228.P17337862559516173473

/-!
# A181231: Number of nX(n+1) binary matrices with all rows unique and all columns unique.

The programs for A181231, there is no canonical definition to state claims against.
-/

/-! ## A181231.P7382618203560240472

`A181230(2*(n+1)²)`
-/

namespace A181231.P7382618203560240472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181230 (2 * (n + 1) ^ 2)

end

end A181231.P7382618203560240472

/-!
# A181232: Number of n X (n+2) binary matrices with all rows unique and all columns unique.

The programs for A181232, there is no canonical definition to state claims against.
-/

/-! ## A181232.P16114297639290104840

`A181230(∑[4*(n+1)])`
-/

namespace A181232.P16114297639290104840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181230 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181232.P16114297639290104840

/-!
# A181233: Number of nX(n+3) binary matrices with all rows unique and all columns unique.

The programs for A181233, there is no canonical definition to state claims against.
-/

/-! ## A181233.P11089770767097653375

`A181230((n+1)²+(n+3)²)`
-/

namespace A181233.P11089770767097653375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181230 ((n + 1) ^ 2 + (n + 3) ^ 2)

end

end A181233.P11089770767097653375

/-!
# A181234: Number of (2*n)Xn binary matrices with all row sums equal and all column sums equal.

The programs for A181234, there is no canonical definition to state claims against.
-/

/-! ## A181234.P280383466127762063

`A181236(∑[n+2])`
-/

namespace A181234.P280383466127762063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181236 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181234.P280383466127762063

/-!
# A181235: Number of (3*n)Xn binary matrices with all row sums equal and all column sums equal.

The programs for A181235, there is no canonical definition to state claims against.
-/

/-! ## A181235.P5938274926347012376

`A181236(∑[n+3]+1)`
-/

namespace A181235.P5938274926347012376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181236 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A181235.P5938274926347012376

/-!
# A181236: T(n,k)=Number of (k*n)Xn binary matrices with all row sums equal and all column sums equal.

The programs for A181236, there is no canonical definition to state claims against.
-/

/-! ## A181236.P1431745908465699179

`A350462(n)+A006530(A000302(n))`
-/

namespace A181236.P1431745908465699179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350462 n + A006530 (A000302 n).toNat

end

end A181236.P1431745908465699179

/-! ## A181236.P8202657960676311644

`A350462(n)+A000005(A061092(n))`
-/

namespace A181236.P8202657960676311644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350462 n + A000005 (A061092 n).toNat

end

end A181236.P8202657960676311644

/-! ## A181236.P7415313610140968950

`A350462(n)+A040001(A056616(n))`
-/

namespace A181236.P7415313610140968950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350462 n + A040001 (A056616 n).toNat

end

end A181236.P7415313610140968950

/-! ## A181236.P16170801915912670485

`A350462(n)+A020639(A084137(n))`
-/

namespace A181236.P16170801915912670485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350462 n + A020639 (A084137 n).toNat

end

end A181236.P16170801915912670485

/-! ## A181236.P7593290583549604499

`A350462(n)+A006530(A120777(n))`
-/

namespace A181236.P7593290583549604499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350462 n + A006530 (A120777 n).toNat

end

end A181236.P7593290583549604499

/-!
# A181237: Number of (3n) X 3 binary matrices with all row sums equal and all column sums equal.

The programs for A181237, the canonical program `A181237.P7883980454260187310` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181237 has offset 1).

The definition of A181237 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181237.P7883980454260187310

`2*(1+(3*(n+1))!/(n+1)!^3)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181237

/-- `2*(1+(3*(n+1))!/(n+1)!^3)` -/
def P7883980454260187310.Spec : Prop :=
  ∀ n, P7883980454260187310.a n = (A181237 (n + 1) : ℚ)

end A181237

/-! ## A181237.P17793391438688296269

`2*(Δ[A188441(n)]+1)`
-/

namespace A181237.P17793391438688296269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188441 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + 1)

end

end A181237.P17793391438688296269

namespace A181237

/-- `2*(Δ[A188441(n)]+1)` -/
def P17793391438688296269.Spec : Prop :=
  ∀ n, P17793391438688296269.a n = A181237 (n + 1)

end A181237

/-! ## A181237.P1038376623165547597

`2*(A006480(n+1)+1)`
-/

namespace A181237.P1038376623165547597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006480 (n + 1) + 1)

end

end A181237.P1038376623165547597

namespace A181237

/-- `2*(A006480(n+1)+1)` -/
def P1038376623165547597.Spec : Prop :=
  ∀ n, P1038376623165547597.a n = A181237 (n + 1)

end A181237

/-! ## A181237.P6235250648125363002

`12*A060542(n+1)+2`
-/

namespace A181237.P6235250648125363002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A060542 (n + 1) + 2

end

end A181237.P6235250648125363002

namespace A181237

/-- `12*A060542(n+1)+2` -/
def P6235250648125363002.Spec : Prop :=
  ∀ n, P6235250648125363002.a n = A181237 (n + 1)

end A181237

/-! ## A181237.P932315190720832731

`2*(A318107(∑[n+1])+1)`
-/

namespace A181237.P932315190720832731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A318107 (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A181237.P932315190720832731

namespace A181237

/-- `2*(A318107(∑[n+1])+1)` -/
def P932315190720832731.Spec : Prop :=
  ∀ n, P932315190720832731.a n = A181237 (n + 1)

end A181237

/-!
# A181238: Number of (4*n)X4 binary matrices with all row sums equal and all column sums equal.

The programs for A181238, there is no canonical definition to state claims against.
-/

/-! ## A181238.P6544389930481520332

`A181236(A020752(n+1))`
-/

namespace A181238.P6544389930481520332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181236 (A020752 (n + 1)).toNat

end

end A181238.P6544389930481520332

/-! ## A181238.P16062890877582228922

`A181236(A167614(n+2)+1)`
-/

namespace A181238.P16062890877582228922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181236 (A167614 (n + 2) + 1).toNat

end

end A181238.P16062890877582228922

/-!
# A181239: Number of n X 4 binary matrices with no 2 X 2 circuit having pattern 0101 in any orientation.

The programs for A181239, there is no canonical definition to state claims against.
-/

/-! ## A181239.P4629857823369346018

`2*A208265(n+1)`
-/

namespace A181239.P4629857823369346018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208265 (n + 1)

end

end A181239.P4629857823369346018

/-! ## A181239.P8854743692334562155

`2*A208269(A374004(n+1))`
-/

namespace A181239.P8854743692334562155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208269 (A374004 (n + 1)).toNat

end

end A181239.P8854743692334562155

/-! ## A181239.P2186671682259233175

`A181245(A374004(n+1))`
-/

namespace A181239.P2186671682259233175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181245 (A374004 (n + 1)).toNat

end

end A181239.P2186671682259233175

/-! ## A181239.P792383112670862783

`A181245(A052905(n)+9)`
-/

namespace A181239.P792383112670862783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181245 (A052905 n + 9).toNat

end

end A181239.P792383112670862783

/-! ## A181239.P12960222592593225117

`A181245(A055999(n)+10)`
-/

namespace A181239.P12960222592593225117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181245 (A055999 n + 10).toNat

end

end A181239.P12960222592593225117

/-!
# A181240: Number of nX5 binary matrices with no 2X2 circuit having pattern 0101 in any orientation.

The programs for A181240, there is no canonical definition to state claims against.
-/

/-! ## A181240.P17082023877795748176

`2*A208266(n+1)`
-/

namespace A181240.P17082023877795748176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208266 (n + 1)

end

end A181240.P17082023877795748176

/-! ## A181240.P16220367027488245824

`2*A208269(A374005(n+1))`
-/

namespace A181240.P16220367027488245824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208269 (A374005 (n + 1)).toNat

end

end A181240.P16220367027488245824

/-! ## A181240.P14429351628899011951

`2*A208269(Δ[A264443(n)])`
-/

namespace A181240.P14429351628899011951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208269 (f1 (n + 1) - f1 n).toNat

end

end A181240.P14429351628899011951

/-! ## A181240.P3062926251233698820

`A181245(A374005(n+1))`
-/

namespace A181240.P3062926251233698820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181245 (A374005 (n + 1)).toNat

end

end A181240.P3062926251233698820

/-! ## A181240.P11923798574271386964

`A181245(A167499(n+3))`
-/

namespace A181240.P11923798574271386964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181245 (A167499 (n + 3)).toNat

end

end A181240.P11923798574271386964

/-!
# A181241: Number of nX6 binary matrices with no 2X2 circuit having pattern 0101 in any orientation.

The programs for A181241, there is no canonical definition to state claims against.
-/

/-! ## A181241.P6827846587580258950

`2*A208267(n+1)`
-/

namespace A181241.P6827846587580258950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208267 (n + 1)

end

end A181241.P6827846587580258950

/-! ## A181241.P11153310579632156505

`A208267(A000027(n+1))+A208267(n+1)`
-/

namespace A181241.P11153310579632156505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208267 (A000027 (n + 1)).toNat + A208267 (n + 1)

end

end A181241.P11153310579632156505

/-! ## A181241.P6821409953561207794

`2*A208269(A374007(n+1))`
-/

namespace A181241.P6821409953561207794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208269 (A374007 (n + 1)).toNat

end

end A181241.P6821409953561207794

/-! ## A181241.P2679440119899899090

`2*A208269(A000217(n+5)+6)`
-/

namespace A181241.P2679440119899899090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208269 (A000217 (n + 5) + 6).toNat

end

end A181241.P2679440119899899090

/-! ## A181241.P18236080794949939212

`A181245(A374007(n+1))`
-/

namespace A181241.P18236080794949939212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181245 (A374007 (n + 1)).toNat

end

end A181241.P18236080794949939212

/-!
# A181242: Number of nX7 binary matrices with no 2X2 circuit having pattern 0101 in any orientation.

The programs for A181242, there is no canonical definition to state claims against.
-/

/-! ## A181242.P13989804206965686682

`2*A208268(n+1)`
-/

namespace A181242.P13989804206965686682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208268 (n + 1)

end

end A181242.P13989804206965686682

/-! ## A181242.P12945928876733696760

`A208268(A000027(n+1))+A208268(n+1)`
-/

namespace A181242.P12945928876733696760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208268 (A000027 (n + 1)).toNat + A208268 (n + 1)

end

end A181242.P12945928876733696760

/-! ## A181242.P13100432026327739497

`2*A208269(A374008(n+1))`
-/

namespace A181242.P13100432026327739497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208269 (A374008 (n + 1)).toNat

end

end A181242.P13100432026327739497

/-! ## A181242.P10999035393628601578

`A181245(A374008(n+1))`
-/

namespace A181242.P10999035393628601578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181245 (A374008 (n + 1)).toNat

end

end A181242.P10999035393628601578

/-! ## A181242.P8624395738326026339

`A181245(eq[8, A131818(n+1)])`
-/

namespace A181242.P8624395738326026339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181245 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181242.P8624395738326026339

/-!
# A181243: Number of nX8 binary matrices with no 2X2 circuit having pattern 0101 in any orientation.

The programs for A181243, there is no canonical definition to state claims against.
-/

/-! ## A181243.P4501512441758070100

`A181245(A374009(n+1))`
-/

namespace A181243.P4501512441758070100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181245 (A374009 (n + 1)).toNat

end

end A181243.P4501512441758070100

/-! ## A181243.P15583741657532504178

`A181245(eq[13, A066657(n)])`
-/

namespace A181243.P15583741657532504178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181245 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181243.P15583741657532504178

/-! ## A181243.P5076739118973966786

`A181245(eq[9, A131818(n+1)])`
-/

namespace A181243.P5076739118973966786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181245 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181243.P5076739118973966786

/-! ## A181243.P1628726647086552640

`A181245(eq[5, A219347(n)])`
-/

namespace A181243.P1628726647086552640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181245 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181243.P1628726647086552640

/-! ## A181243.P1534919733860556428

`A181245(eq[7, A193592(n)])`
-/

namespace A181243.P1534919733860556428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181245 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181243.P1534919733860556428

/-!
# A181244: Number of nX9 binary matrices with no 2X2 circuit having pattern 0101 in any orientation.

The programs for A181244, there is no canonical definition to state claims against.
-/

/-! ## A181244.P11278007945115361933

`A181245(A374010(n+1))`
-/

namespace A181244.P11278007945115361933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181245 (A374010 (n + 1)).toNat

end

end A181244.P11278007945115361933

/-! ## A181244.P11711782801101008490

`A181245(eq[10, A131818(n+1)])`
-/

namespace A181244.P11711782801101008490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181245 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181244.P11711782801101008490

/-!
# A181245: T(n,k) = Number of n X k binary matrices with no 2 X 2 circuit having pattern 0101 in any orientation.

The programs for A181245, there is no canonical definition to state claims against.
-/

/-! ## A181245.P14092972692555469484

`2*A208269(n+1)`
-/

namespace A181245.P14092972692555469484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208269 (n + 1)

end

end A181245.P14092972692555469484

/-! ## A181245.P13613938899116261686

`A208269(char[1]+1+n)+A208269(n+1)`
-/

namespace A181245.P13613938899116261686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208269 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) + A208269 (n + 1)

end

end A181245.P13613938899116261686

/-! ## A181245.P7754238093285389547

`A208269(n+1)+or(A000007(n), A208269(n+1))`
-/

namespace A181245.P7754238093285389547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208269 (n + 1) + Int.lor (A000007 n) (A208269 (n + 1))

end

end A181245.P7754238093285389547

/-! ## A181245.P12803630279807222029

`A208269(n+1)+A208269(n+1)%A022092(n+1)`
-/

namespace A181245.P12803630279807222029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208269 (n + 1) + Int.tmod (A208269 (n + 1)) (A022092 (n + 1))

end

end A181245.P12803630279807222029

/-! ## A181245.P5059284401941455457

`A208269(n+1)+A208269(n+1)%A008776(n)`
-/

namespace A181245.P5059284401941455457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208269 (n + 1) + Int.tmod (A208269 (n + 1)) (A008776 n)

end

end A181245.P5059284401941455457

/-! ## A181245.P11530774949550722178

`A208269(n+1)+A208269(n+1)+A113063(A106648(n))`
-/

namespace A181245.P11530774949550722178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208269 (n + 1) + (A208269 (n + 1) + A113063 (A106648 n).toNat)

end

end A181245.P11530774949550722178

/-!
# A181246: Number of n X 3 binary matrices with no 2 X 2 block having four 1's.

The programs for A181246, the canonical program `A181246.P5809619880973728246` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181246 has offset 1).

The definition of A181246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181246.P6887513539328985035

`ogf((8+9x-5x^2)/(1-6x-10x^2+5x^3))`
-/

namespace A181246.P6887513539328985035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 9, -5] [1, -6, -10, 5] n

end

end A181246.P6887513539328985035

namespace A181246

/-- `ogf((8+9x-5x^2)/(1-6x-10x^2+5x^3))` -/
def P6887513539328985035.Spec : Prop :=
  ∀ n, P6887513539328985035.a n = A181246 (n + 1)

end A181246

/-! ## A181246.P5809619880973728246

`6*a(n-1)+10*a(n-2)-5*a(n-3)` with `a(0)=8, a(1)=57, a(2)=417`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181246

/-- `6*a(n-1)+10*a(n-2)-5*a(n-3)` -/
def P5809619880973728246.Spec : Prop :=
  ∀ n, P5809619880973728246.a n = A181246 (n + 1)

theorem P5809619880973728246.correct : P5809619880973728246.Spec := by
  intro n
  simp only [A181246, Nat.add_sub_cancel]

end A181246

/-! ## A181246.P5029472474464418894

`A181253(∑[n+2]+4)`
-/

namespace A181246.P5029472474464418894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181253 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A181246.P5029472474464418894

namespace A181246

/-- `A181253(∑[n+2]+4)` -/
def P5029472474464418894.Spec : Prop :=
  ∀ n, P5029472474464418894.a n = A181246 (n + 1)

end A181246

/-! ## A181246.P11801678536317483106

`A181253(A167614(n+1))+A178780(n)`
-/

namespace A181246.P11801678536317483106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181253 (A167614 (n + 1)).toNat + A178780 n

end

end A181246.P11801678536317483106

namespace A181246

/-- `A181253(A167614(n+1))+A178780(n)` -/
def P11801678536317483106.Spec : Prop :=
  ∀ n, P11801678536317483106.a n = A181246 (n + 1)

end A181246

/-! ## A181246.P14244788873044175070

`A181253(A167614(n+1))+A178798(n)`
-/

namespace A181246.P14244788873044175070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181253 (A167614 (n + 1)).toNat + A178798 n

end

end A181246.P14244788873044175070

namespace A181246

/-- `A181253(A167614(n+1))+A178798(n)` -/
def P14244788873044175070.Spec : Prop :=
  ∀ n, P14244788873044175070.a n = A181246 (n + 1)

end A181246

/-!
# A181247: Number of n X 4 binary matrices with no 2 X 2 block having four 1's.

The programs for A181247, there is no canonical definition to state claims against.
-/

/-! ## A181247.P9228528763091039902

`A181253(A374004(n+1))`
-/

namespace A181247.P9228528763091039902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181253 (A374004 (n + 1)).toNat

end

end A181247.P9228528763091039902

/-! ## A181247.P10314484251776177121

`A181253(A052905(n)+9)`
-/

namespace A181247.P10314484251776177121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181253 (A052905 n + 9).toNat

end

end A181247.P10314484251776177121

/-! ## A181247.P9226091263176303310

`A181253(A055999(n)+10)`
-/

namespace A181247.P9226091263176303310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181253 (A055999 n + 10).toNat

end

end A181247.P9226091263176303310

/-! ## A181247.P4008572766326694709

`A181253(A167614(n+2)+1)`
-/

namespace A181247.P4008572766326694709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181253 (A167614 (n + 2) + 1).toNat

end

end A181247.P4008572766326694709

/-! ## A181247.P9811726903156011577

`A181253(A112355(n+1)+4)`
-/

namespace A181247.P9811726903156011577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181253 (A112355 (n + 1) + 4).toNat

end

end A181247.P9811726903156011577

/-!
# A181248: Number of nX5 binary matrices with no 2X2 block having four 1's.

The programs for A181248, there is no canonical definition to state claims against.
-/

/-! ## A181248.P16390983633626933587

`A181253(A374005(n+1))`
-/

namespace A181248.P16390983633626933587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181253 (A374005 (n + 1)).toNat

end

end A181248.P16390983633626933587

/-! ## A181248.P7729920718857016530

`A181253(A155212(n)+13)`
-/

namespace A181248.P7729920718857016530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181253 (A155212 n + 13).toNat

end

end A181248.P7729920718857016530

/-! ## A181248.P10560501712534751085

`A181253(Δ[A264443(n)])`
-/

namespace A181248.P10560501712534751085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181253 (f1 (n + 1) - f1 n).toNat

end

end A181248.P10560501712534751085

/-! ## A181248.P5628670888601308701

`A181253(A046691(n+3))`
-/

namespace A181248.P5628670888601308701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181253 (A046691 (n + 3)).toNat

end

end A181248.P5628670888601308701

/-! ## A181248.P15436300449824135104

`A181253(Δ[A023545(n+1)])`
-/

namespace A181248.P15436300449824135104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181253 (f1 (n + 1) - f1 n).toNat

end

end A181248.P15436300449824135104

/-!
# A181249: Number of nX6 binary matrices with no 2X2 block having four 1's.

The programs for A181249, there is no canonical definition to state claims against.
-/

/-! ## A181249.P2823555367214258386

`A181253(A374007(n+1))`
-/

namespace A181249.P2823555367214258386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181253 (A374007 (n + 1)).toNat

end

end A181249.P2823555367214258386

/-! ## A181249.P8098526867361891152

`A181253(A166136(n+4))`
-/

namespace A181249.P8098526867361891152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181253 (A166136 (n + 4)).toNat

end

end A181249.P8098526867361891152

/-! ## A181249.P9366639848181648386

`A181253(A052905(n+3))`
-/

namespace A181249.P9366639848181648386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181253 (A052905 (n + 3)).toNat

end

end A181249.P9366639848181648386

/-! ## A181249.P9999623589358579967

`A181253(A056119(n)+16)`
-/

namespace A181249.P9999623589358579967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181253 (A056119 n + 16).toNat

end

end A181249.P9999623589358579967

/-! ## A181249.P15553498046211885159

`A181253(eq[3, A219347(n)])`
-/

namespace A181249.P15553498046211885159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181253 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181249.P15553498046211885159

/-!
# A181250: Number of n X 7 binary matrices with no 2 X 2 block having four 1's.

The programs for A181250, there is no canonical definition to state claims against.
-/

/-! ## A181250.P6158518171856365874

`A181253(A374008(n+1))`
-/

namespace A181250.P6158518171856365874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181253 (A374008 (n + 1)).toNat

end

end A181250.P6158518171856365874

/-! ## A181250.P13195366982905183376

`A181253(eq[8, A131818(n+1)])`
-/

namespace A181250.P13195366982905183376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181253 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181250.P13195366982905183376

/-! ## A181250.P15746308857100023475

`A181253(A055999(n+4))`
-/

namespace A181250.P15746308857100023475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181253 (A055999 (n + 4)).toNat

end

end A181250.P15746308857100023475

/-! ## A181250.P12235625857500216976

`A181253(eq[4, A219347(n)])`
-/

namespace A181250.P12235625857500216976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181253 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181250.P12235625857500216976

/-! ## A181250.P3932424036533976192

`A181253(eq[6, A193592(n)])`
-/

namespace A181250.P3932424036533976192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181253 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181250.P3932424036533976192

/-!
# A181251: Number of n X 8 binary matrices with no 2 X 2 block having four 1's.

The programs for A181251, there is no canonical definition to state claims against.
-/

/-! ## A181251.P2060057550107210931

`A181253(A374009(n+1))`
-/

namespace A181251.P2060057550107210931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181253 (A374009 (n + 1)).toNat

end

end A181251.P2060057550107210931

/-! ## A181251.P14339896320288167685

`A181253(eq[5, A219347(n)])`
-/

namespace A181251.P14339896320288167685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181253 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181251.P14339896320288167685

/-! ## A181251.P8355249685052626261

`A181253(eq[7, A193592(n)])`
-/

namespace A181251.P8355249685052626261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181253 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181251.P8355249685052626261

/-!
# A181252: Number of n X 9 binary matrices with no 2 X 2 block having four 1's.

The programs for A181252, there is no canonical definition to state claims against.
-/

/-! ## A181252.P213518593380835214

`A181253(A374010(n+1))`
-/

namespace A181252.P213518593380835214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181253 (A374010 (n + 1)).toNat

end

end A181252.P213518593380835214

/-! ## A181252.P16036503966180862449

`A181253(eq[6, A219347(n)])`
-/

namespace A181252.P16036503966180862449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181253 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181252.P16036503966180862449

/-! ## A181252.P16122903155021229131

`A181253(eq[8, A193592(n)])`
-/

namespace A181252.P16122903155021229131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181253 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181252.P16122903155021229131

/-!
# A181253: T(n,k)=Number of nXk binary matrices with no 2X2 block having four 1's.

The programs for A181253, there is no canonical definition to state claims against.
-/

/-! ## A181253.P5823323962179041750

`2*A300811(A004896(n+2))-A174344(A193592(n))`
-/

namespace A181253.P5823323962179041750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A300811 (A004896 (n + 2)).toNat - A174344 (A193592 n).toNat

end

end A181253.P5823323962179041750

/-! ## A181253.P15428183489160427586

`A339378(A181245(n+1))`
-/

namespace A181253.P15428183489160427586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339378 (A181245 (n + 1)).toNat

end

end A181253.P15428183489160427586

/-! ## A181253.P17852037118960287895

`A363287(A283282(n+1))`
-/

namespace A181253.P17852037118960287895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363287 (A283282 (n + 1)).toNat

end

end A181253.P17852037118960287895

/-! ## A181253.P16733579899924297328

`filter[A398244(n), A130854(#)]`
-/

namespace A181253.P16733579899924297328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130854 (f1 j).toNat = 1) n)

end

end A181253.P16733579899924297328

/-! ## A181253.P2436233973790891828

`filter[A398244(n), A352824(#)]`
-/

namespace A181253.P2436233973790891828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A352824 (f1 j).toNat = 1) n)

end

end A181253.P2436233973790891828

/-!
# A181254: Number of (n+2) X (n+2) binary matrices with every 3 X 3 block having exactly four 1's.

The programs for A181254, there is no canonical definition to state claims against.
-/

/-! ## A181254.P14870826975122125281

`A181262(∑[4*n]+1)`
-/

namespace A181254.P14870826975122125281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181262 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A181254.P14870826975122125281

/-! ## A181254.P7746645056374382958

`lcm(2, A181262(A001844(n)))`
-/

namespace A181254.P7746645056374382958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A181262 (A001844 n).toNat)

end

end A181254.P7746645056374382958

/-! ## A181254.P725157003204347342

`record[A003982(n)*A181262(n+1)]`
-/

namespace A181254.P725157003204347342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A181262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181254.P725157003204347342

/-! ## A181254.P17682409505215474158

`record[root(A181262(n+1), A331886(n))]`
-/

namespace A181254.P17682409505215474158
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A181262 (n + 1) : ℝ) ^ (1 / (A331886 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181254.P17682409505215474158

/-! ## A181254.P9395979367424115865

`record[gcd(A003987(n), A181262(n+1))]`
-/

namespace A181254.P9395979367424115865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A181262 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181254.P9395979367424115865

/-!
# A181255: Number of (n+2) X 3 binary matrices with every 3 X 3 block having exactly four 1's.

The programs for A181255, there is no canonical definition to state claims against.
-/

/-! ## A181255.P10284419412577092056

`A181262(∑[n]+1)`
-/

namespace A181255.P10284419412577092056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181262 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A181255.P10284419412577092056

/-! ## A181255.P9802091621468999006

`record[A181262(n+1)]`
-/

namespace A181255.P9802091621468999006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181255.P9802091621468999006

/-! ## A181255.P1632228370680548386

`lcm(2, A181262(A000124(n)))`
-/

namespace A181255.P1632228370680548386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A181262 (A000124 n).toNat)

end

end A181255.P1632228370680548386

/-! ## A181255.P4714859077714640762

`lcm(3, record[A181262(A291766(n))])`
-/

namespace A181255.P4714859077714640762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181262 (A291766 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A181255.P4714859077714640762

/-! ## A181255.P16755940136741227578

`A181262(A000124(n))+A025444(n)`
-/

namespace A181255.P16755940136741227578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181262 (A000124 n).toNat + A025444 n

end

end A181255.P16755940136741227578

/-!
# A181256: Number of (n+2)X4 binary matrices with every 3X3 block having exactly four 1's.

The programs for A181256, there is no canonical definition to state claims against.
-/

/-! ## A181256.P5054338362216960228

`A181262(∑[n+1]+2)`
-/

namespace A181256.P5054338362216960228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181262 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A181256.P5054338362216960228

/-! ## A181256.P15829249972586917210

`lcm(2, A181262(A089071(n+3)))`
-/

namespace A181256.P15829249972586917210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A181262 (A089071 (n + 3)).toNat)

end

end A181256.P15829249972586917210

/-! ## A181256.P16833962655847990668

`record[A181262(A134546(n+1)+2)]`
-/

namespace A181256.P16833962655847990668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181262 (A134546 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181256.P16833962655847990668

/-! ## A181256.P17600576664441797587

`record[A181262(n+2)/A193605(n)]`
-/

namespace A181256.P17600576664441797587
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181262 (n + 2) : ℚ) / (A193605 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181256.P17600576664441797587

/-! ## A181256.P8365921009524176825

`A007318(∑[n])*A181262(A167487(n)-5)`
-/

namespace A181256.P8365921009524176825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A181262 (A167487 n - 5).toNat

end

end A181256.P8365921009524176825

/-!
# A181257: Number of (n+2)X5 binary matrices with every 3X3 block having exactly four 1's.

The programs for A181257, there is no canonical definition to state claims against.
-/

/-! ## A181257.P2775234694485084752

`A181262(∑[n+2]+4)`
-/

namespace A181257.P2775234694485084752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181262 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A181257.P2775234694485084752

/-! ## A181257.P9468065807240333726

`lcm(2, A181262(A167614(n+1)))`
-/

namespace A181257.P9468065807240333726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A181262 (A167614 (n + 1)).toNat)

end

end A181257.P9468065807240333726

/-! ## A181257.P8964814255037786533

`and(-2, A181262(A046691(n)+7))`
-/

namespace A181257.P8964814255037786533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A181262 (A046691 n + 7).toNat)

end

end A181257.P8964814255037786533

/-! ## A181257.P14950799488158262614

`and(-2, A181262(A000124(n+2)+2))`
-/

namespace A181257.P14950799488158262614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A181262 (A000124 (n + 2) + 2).toNat)

end

end A181257.P14950799488158262614

/-! ## A181257.P13045806930244315516

`A181262(A167614(n+1))+A025444(n)`
-/

namespace A181257.P13045806930244315516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181262 (A167614 (n + 1)).toNat + A025444 n

end

end A181257.P13045806930244315516

/-!
# A181258: Number of (n+2)X6 binary matrices with every 3X3 block having exactly four 1's.

The programs for A181258, there is no canonical definition to state claims against.
-/

/-! ## A181258.P2765341733329959497

`A181262(∑[n+3]+7)`
-/

namespace A181258.P2765341733329959497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181262 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A181258.P2765341733329959497

/-! ## A181258.P12852286488364240206

`A181262(A167614(n+2)+1)+A035457(2*n+3)`
-/

namespace A181258.P12852286488364240206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181262 (A167614 (n + 2) + 1).toNat + A035457 (2 * n + 3)

end

end A181258.P12852286488364240206

/-! ## A181258.P139062093086910292

`lcm(2, A181262(A055998(n+2)))`
-/

namespace A181258.P139062093086910292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A181262 (A055998 (n + 2)).toNat)

end

end A181258.P139062093086910292

/-! ## A181258.P3748687599436541003

`A181262(Δ[A006503(n)]+7)^A276144(n+1)`
-/

namespace A181258.P3748687599436541003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181262 (f1 (n + 1) - f1 n + 7).toNat : ℚ) ^ (A276144 (n + 1) : ℤ)

end

end A181258.P3748687599436541003

/-!
# A181259: Number of (n+2)X7 binary matrices with every 3X3 block having exactly four 1's.

The programs for A181259, there is no canonical definition to state claims against.
-/

/-! ## A181259.P13026969759226522591

`A181262(∑[n+4]+11)`
-/

namespace A181259.P13026969759226522591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181262 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A181259.P13026969759226522591

/-!
# A181260: Number of (n+2)X8 binary matrices with every 3X3 block having exactly four 1's.

The programs for A181260, there is no canonical definition to state claims against.
-/

/-! ## A181260.P11318039165307178111

`A181262(A374007(n+1))`
-/

namespace A181260.P11318039165307178111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181262 (A374007 (n + 1)).toNat

end

end A181260.P11318039165307178111

/-! ## A181260.P12293590120410014417

`A181262(A167499(n+4)+1)`
-/

namespace A181260.P12293590120410014417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181262 (A167499 (n + 4) + 1).toNat

end

end A181260.P12293590120410014417

/-! ## A181260.P15266958797579066442

`A181262(A167487(n+4)-1)`
-/

namespace A181260.P15266958797579066442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181262 (A167487 (n + 4) - 1).toNat

end

end A181260.P15266958797579066442

/-! ## A181260.P8922515074059281615

`A181262(A000124(n+5)+5)`
-/

namespace A181260.P8922515074059281615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181262 (A000124 (n + 5) + 5).toNat

end

end A181260.P8922515074059281615

/-! ## A181260.P10493401319677607126

`A181262(A000096(n+4)+7)`
-/

namespace A181260.P10493401319677607126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181262 (A000096 (n + 4) + 7).toNat

end

end A181260.P10493401319677607126

/-!
# A181261: Number of (n+2)X9 binary matrices with every 3X3 block having exactly four 1's.

The programs for A181261, there is no canonical definition to state claims against.
-/

/-! ## A181261.P9463963489652585119

`A181262(A374008(n+1))`
-/

namespace A181261.P9463963489652585119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181262 (A374008 (n + 1)).toNat

end

end A181261.P9463963489652585119

/-! ## A181261.P3318168811424803555

`A181262(A167487(n+5))`
-/

namespace A181261.P3318168811424803555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181262 (A167487 (n + 5)).toNat

end

end A181261.P3318168811424803555

/-! ## A181261.P5674161521888110179

`A181262(A056119(n)+28)`
-/

namespace A181261.P5674161521888110179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181262 (A056119 n + 28).toNat

end

end A181261.P5674161521888110179

/-! ## A181261.P7886635472642262754

`A181262(eq[11, A066657(n)])`
-/

namespace A181261.P7886635472642262754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181261.P7886635472642262754

/-! ## A181261.P3526206061702949032

`A181262(A167614(n+5)+4)`
-/

namespace A181261.P3526206061702949032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181262 (A167614 (n + 5) + 4).toNat

end

end A181261.P3526206061702949032

/-!
# A181263: Number of n X n binary matrices M with rows in strictly increasing order such that M^2 (mod 2) has rows in strictly decreasing order.

The programs for A181263, there is no canonical definition to state claims against.
-/

/-! ## A181263.P1671701194230671698

`A031275(A153534(n))+1`
-/

namespace A181263.P1671701194230671698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031275 (A153534 n).toNat + 1

end

end A181263.P1671701194230671698

/-!
# A181264: Number of n X n binary matrices M with rows in strictly increasing order such that M^2 (mod 2) also has rows in strictly increasing order.

The programs for A181264, there is no canonical definition to state claims against.
-/

/-! ## A181264.P9194601690336165343

`Δ[A004523(∑[A228809(n)])]`
-/

namespace A181264.P9194601690336165343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228809 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181264.P9194601690336165343

/-!
# A181265: Number of n X n binary matrices M with rows in strictly increasing order and rows of M*Mtranspose (mod 2) in strictly increasing order.

The programs for A181265, there is no canonical definition to state claims against.
-/

/-! ## A181265.P16576836245825834781

`A181266(∑[4*n]+1)`
-/

namespace A181265.P16576836245825834781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181266 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A181265.P16576836245825834781

/-! ## A181265.P1118175187342872943

`or(2, A181266(A001844(n)))`
-/

namespace A181265.P1118175187342872943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A181266 (A001844 n).toNat)

end

end A181265.P1118175187342872943

/-! ## A181265.P14803647906633947198

`A181266(A001844(n))+A025469(n)`
-/

namespace A181265.P14803647906633947198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181266 (A001844 n).toNat + A025469 n

end

end A181265.P14803647906633947198

/-!
# A181267: Number of nX(n+1) binary matrices M with rows in strictly increasing order and rows of M*Mtranspose (mod 2) in strictly increasing order.

The programs for A181267, there is no canonical definition to state claims against.
-/

/-! ## A181267.P12712919090226700943

`A181266(2*(n+1)²)`
-/

namespace A181267.P12712919090226700943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181266 (2 * (n + 1) ^ 2)

end

end A181267.P12712919090226700943

/-! ## A181267.P5148707441189237194

`record[A010052(n+1)*A181266(2*(n+1))]`
-/

namespace A181267.P5148707441189237194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n + 1) * A181266 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181267.P5148707441189237194

/-! ## A181267.P10934943912931234108

`A181266(A001105(n+1))+A085861(n)`
-/

namespace A181267.P10934943912931234108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181266 (A001105 (n + 1)).toNat + A085861 n

end

end A181267.P10934943912931234108

/-!
# A181268: Number of nX(n+2) binary matrices M with rows in strictly increasing order and rows of M*Mtranspose (mod 2) in strictly increasing order.

The programs for A181268, there is no canonical definition to state claims against.
-/

/-! ## A181268.P9748127984701331771

`A181266(∑[4*(n+1)])`
-/

namespace A181268.P9748127984701331771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181266 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181268.P9748127984701331771

/-!
# A181269: Number of n X (n+3) binary matrices M with rows in strictly increasing order and rows of M*Mtranspose (mod 2) in strictly increasing order.

The programs for A181269, there is no canonical definition to state claims against.
-/

/-! ## A181269.P1065178968528801446

`A181266(A024840(n+2))`
-/

namespace A181269.P1065178968528801446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181266 (A024840 (n + 2)).toNat

end

end A181269.P1065178968528801446

/-!
# A181270: Number of 2 X n binary matrices M with rows in strictly increasing order and rows of M*Mtranspose (mod 2) in strictly increasing order.

The programs for A181270, the canonical program `A181270.P4529471551968687676` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181270 has offset 1).

The definition of A181270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181270.P4529471551968687676

`4*a(n-1)+4*a(n-2)-16*a(n-3)` with `a(0)=1, a(1)=2, a(2)=11, a(3)=44`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181270

/-- `4*a(n-1)+4*a(n-2)-16*a(n-3)` -/
def P4529471551968687676.Spec : Prop :=
  ∀ n, P4529471551968687676.a n = A181270 (n + 1)

theorem P4529471551968687676.correct : P4529471551968687676.Spec := by
  intro n
  simp only [A181270, Nat.add_sub_cancel]

end A181270

/-! ## A181270.P9277686946625238737

`A002001(n)-Δ[A305750(n)]`
-/

namespace A181270.P9277686946625238737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305750 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002001 n - (f1 (n + 1) - f1 n)

end

end A181270.P9277686946625238737

namespace A181270

/-- `A002001(n)-Δ[A305750(n)]` -/
def P9277686946625238737.Spec : Prop :=
  ∀ n, P9277686946625238737.a n = A181270 (n + 1)

end A181270

/-! ## A181270.P7444761546368921259

`Δ[A131577(n)²-A305750(n)]`
-/

namespace A181270.P7444761546368921259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n ^ 2 - A305750 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181270.P7444761546368921259

namespace A181270

/-- `Δ[A131577(n)²-A305750(n)]` -/
def P7444761546368921259.Spec : Prop :=
  ∀ n, P7444761546368921259.a n = A181270 (n + 1)

end A181270

/-! ## A181270.P15281472841959510713

`or(A002001(n)-A131577(n), A134683(n))`
-/

namespace A181270.P15281472841959510713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002001 n - A131577 n) (A134683 n)

end

end A181270.P15281472841959510713

namespace A181270

/-- `or(A002001(n)-A131577(n), A134683(n))` -/
def P15281472841959510713.Spec : Prop :=
  ∀ n, P15281472841959510713.a n = A181270 (n + 1)

end A181270

/-! ## A181270.P17888524646392965910

`A010036(n)-A181278(n+1)`
-/

namespace A181270.P17888524646392965910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010036 n - A181278 (n + 1)

end

end A181270.P17888524646392965910

namespace A181270

/-- `A010036(n)-A181278(n+1)` -/
def P17888524646392965910.Spec : Prop :=
  ∀ n, P17888524646392965910.a n = A181270 (n + 1)

end A181270

/-! ## A181270.P5233442708442134283

`Δ[A134169(n)]-A181278(n+1)`
-/

namespace A181270.P5233442708442134283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A181278 (n + 1)

end

end A181270.P5233442708442134283

namespace A181270

/-- `Δ[A134169(n)]-A181278(n+1)` -/
def P5233442708442134283.Spec : Prop :=
  ∀ n, P5233442708442134283.a n = A181270 (n + 1)

end A181270

/-!
# A181271: Number of 3 X n binary matrices M with rows in strictly increasing order and rows of M*Mtranspose (mod 2) in strictly increasing order.

The programs for A181271, there is no canonical definition to state claims against.
-/

/-! ## A181271.P17506044078752284641

`A181266(∑[n+2]+4)`
-/

namespace A181271.P17506044078752284641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181266 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A181271.P17506044078752284641

/-! ## A181271.P801700213229368323

`or(C(n, 64), A181266(A167614(n+1)))`
-/

namespace A181271.P801700213229368323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose n 64 : ℤ) (A181266 (A167614 (n + 1)).toNat)

end

end A181271.P801700213229368323

/-! ## A181271.P444814942221739686

`A181266(A167614(n+1))+A025444(n)`
-/

namespace A181271.P444814942221739686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181266 (A167614 (n + 1)).toNat + A025444 n

end

end A181271.P444814942221739686

/-! ## A181271.P6777457951812797827

`A181266(A167614(n+1))+A178798(n)`
-/

namespace A181271.P6777457951812797827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181266 (A167614 (n + 1)).toNat + A178798 n

end

end A181271.P6777457951812797827

/-! ## A181271.P12461935979947871786

`A057427(n)*A181266(A167614(n+1))`
-/

namespace A181271.P12461935979947871786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A181266 (A167614 (n + 1)).toNat

end

end A181271.P12461935979947871786

/-!
# A181272: Number of 4 X n binary matrices M with rows in strictly increasing order and rows of M*transpose(M) (mod 2) in strictly increasing order.

The programs for A181272, there is no canonical definition to state claims against.
-/

/-! ## A181272.P7310986814538844442

`A181266(∑[n+3]+7)`
-/

namespace A181272.P7310986814538844442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181266 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A181272.P7310986814538844442

/-! ## A181272.P3559826543264591758

`A181266(A055999(n)+10)+C(n, 3^n)`
-/

namespace A181272.P3559826543264591758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181266 (A055999 n + 10).toNat + (Nat.choose n (3 ^ n) : ℤ)

end

end A181272.P3559826543264591758

/-! ## A181272.P4379268894635627872

`A181266(A141214(n)+7)+char[A065752(n)]`
-/

namespace A181272.P4379268894635627872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065752 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181266 (A141214 n + 7).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A181272.P4379268894635627872

/-! ## A181272.P2698191049254895341

`A181266(A141214(n)+7)+char[A153260(n)]`
-/

namespace A181272.P2698191049254895341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153260 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181266 (A141214 n + 7).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A181272.P2698191049254895341

/-! ## A181272.P9156040610070966760

`A181266(A055999(n)+10)+char[A065752(n)]`
-/

namespace A181272.P9156040610070966760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065752 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181266 (A055999 n + 10).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A181272.P9156040610070966760

/-!
# A181273: Number of n X n binary matrices M with rows in strictly increasing order and rows of M*Mtranspose (mod 2) in strictly decreasing order.

The programs for A181273, there is no canonical definition to state claims against.
-/

/-! ## A181273.P3370421787280022211

`A181274(∑[4*n]+1)`
-/

namespace A181273.P3370421787280022211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181274 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A181273.P3370421787280022211

/-! ## A181273.P14339362485152448654

`record[A181274(∑[A266981(n)])]`
-/

namespace A181273.P14339362485152448654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181274 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181273.P14339362485152448654

/-! ## A181273.P4014039335223651904

`A181274(A001844(n))+char[7]`
-/

namespace A181273.P4014039335223651904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181274 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A181273.P4014039335223651904

/-!
# A181275: Number of nX(n+1) binary matrices M with rows in strictly increasing order and rows of M*Mtranspose (mod 2) in strictly decreasing order.

The programs for A181275, there is no canonical definition to state claims against.
-/

/-! ## A181275.P2104635369697493025

`A181274(2*(n+1)²)`
-/

namespace A181275.P2104635369697493025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181274 (2 * (n + 1) ^ 2)

end

end A181275.P2104635369697493025

/-! ## A181275.P4683130216660391323

`record[A181274(∑[A266981(n)+1])]`
-/

namespace A181275.P4683130216660391323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181274 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181275.P4683130216660391323

/-! ## A181275.P5823083038649108329

`A181274(A000982(2*n+2))+A000035(2*n)`
-/

namespace A181275.P5823083038649108329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181274 (A000982 (2 * n + 2)).toNat + A000035 (2 * n)

end

end A181275.P5823083038649108329

/-!
# A181276: Number of nX(n+2) binary matrices M with rows in strictly increasing order and rows of M*Mtranspose (mod 2) in strictly decreasing order.

The programs for A181276, there is no canonical definition to state claims against.
-/

/-! ## A181276.P710125078480387789

`A181274(∑[4*(n+1)])`
-/

namespace A181276.P710125078480387789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181274 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181276.P710125078480387789

/-!
# A181277: Number of nX(n+3) binary matrices M with rows in strictly increasing order and rows of M*Mtranspose (mod 2) in strictly decreasing order.

The programs for A181277, there is no canonical definition to state claims against.
-/

/-! ## A181277.P5472589938882308163

`A181274(A024840(n+2))`
-/

namespace A181277.P5472589938882308163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181274 (A024840 (n + 2)).toNat

end

end A181277.P5472589938882308163

/-!
# A181278: Number of 2 X n binary matrices M with rows in strictly increasing order and rows of M*Mtranspose (mod 2) in strictly decreasing order.

The programs for A181278, the canonical program `A181278.P5820261564411551654` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181278 has offset 1).

The definition of A181278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181278.P5820261564411551654

`4*a(n-1)+4*a(n-2)-16*a(n-3)` with `a(0)=0, a(1)=3, a(2)=11, a(3)=48`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181278

/-- `4*a(n-1)+4*a(n-2)-16*a(n-3)` -/
def P5820261564411551654.Spec : Prop :=
  ∀ n, P5820261564411551654.a n = A181278 (n + 1)

theorem P5820261564411551654.correct : P5820261564411551654.Spec := by
  intro n
  simp only [A181278, Nat.add_sub_cancel]

end A181278

/-! ## A181278.P14492796833737288150

`A034008(2*n+1)+Δ[A320934(n+1)]`
-/

namespace A181278.P14492796833737288150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A181278.P14492796833737288150

namespace A181278

/-- `A034008(2*n+1)+Δ[A320934(n+1)]` -/
def P14492796833737288150.Spec : Prop :=
  ∀ n, P14492796833737288150.a n = A181278 (n + 1)

end A181278

/-! ## A181278.P2728763595001065968

`A225826(n)+A000918(n)*A011782(n)`
-/

namespace A181278.P2728763595001065968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225826 n + A000918 n * A011782 n

end

end A181278.P2728763595001065968

namespace A181278

/-- `A225826(n)+A000918(n)*A011782(n)` -/
def P2728763595001065968.Spec : Prop :=
  ∀ n, P2728763595001065968.a n = A181278 (n + 1)

end A181278

/-! ## A181278.P11788381683981394232

`A002001(n)-and(A084215(n), A087940(n+1))`
-/

namespace A181278.P11788381683981394232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002001 n - Int.land (A084215 n) (A087940 (n + 1))

end

end A181278.P11788381683981394232

namespace A181278

/-- `A002001(n)-and(A084215(n), A087940(n+1))` -/
def P11788381683981394232.Spec : Prop :=
  ∀ n, P11788381683981394232.a n = A181278 (n + 1)

end A181278

/-! ## A181278.P6144443553468440374

`A002001(n)-and(A087940(n+1), A104721(n))`
-/

namespace A181278.P6144443553468440374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002001 n - Int.land (A087940 (n + 1)) (A104721 n)

end

end A181278.P6144443553468440374

namespace A181278

/-- `A002001(n)-and(A087940(n+1), A104721(n))` -/
def P6144443553468440374.Spec : Prop :=
  ∀ n, P6144443553468440374.a n = A181278 (n + 1)

end A181278

/-! ## A181278.P15438361015295652484

`A010036(n)-A181270(n+1)`
-/

namespace A181278.P15438361015295652484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010036 n - A181270 (n + 1)

end

end A181278.P15438361015295652484

namespace A181278

/-- `A010036(n)-A181270(n+1)` -/
def P15438361015295652484.Spec : Prop :=
  ∀ n, P15438361015295652484.a n = A181278 (n + 1)

end A181278

/-!
# A181279: Number of 3 X n binary matrices M with rows in strictly increasing order and rows of M*Mtranspose (mod 2) in strictly decreasing order.

The programs for A181279, there is no canonical definition to state claims against.
-/

/-! ## A181279.P17116672982667126469

`A181274(∑[n+2]+4)`
-/

namespace A181279.P17116672982667126469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181274 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A181279.P17116672982667126469

/-! ## A181279.P6908987500978677484

`A181274(A167614(n+1))+A165656(n)`
-/

namespace A181279.P6908987500978677484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181274 (A167614 (n + 1)).toNat + A165656 n

end

end A181279.P6908987500978677484

/-! ## A181279.P7240088327566644503

`A185284(n)+A181274(A167614(n+1))`
-/

namespace A181279.P7240088327566644503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A181274 (A167614 (n + 1)).toNat

end

end A181279.P7240088327566644503

/-! ## A181279.P15537037206721511252

`A243834(n)+A181274(A167614(n+1))`
-/

namespace A181279.P15537037206721511252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243834 n + A181274 (A167614 (n + 1)).toNat

end

end A181279.P15537037206721511252

/-! ## A181279.P7024207730843886355

`A181274(A167614(n+1))%A000420(n)`
-/

namespace A181279.P7024207730843886355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181274 (A167614 (n + 1)).toNat) (A000420 n)

end

end A181279.P7024207730843886355

/-!
# A181280: Number of 4Xn binary matrices M with rows in strictly increasing order and rows of M*Mtranspose (mod 2) in strictly decreasing order.

The programs for A181280, there is no canonical definition to state claims against.
-/

/-! ## A181280.P17573143754218228396

`A181274(∑[n+3]+7)`
-/

namespace A181280.P17573143754218228396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181274 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A181280.P17573143754218228396

/-!
# A181281: A version of Josephus problem: a(n) is the surviving integer under the following elimination process. Arrange 1,2,3,...,n in a circle, increasing clockwise. Starting with i=1, delete the integer 4 places clockwise from i. Repeat, counting 4 places from the next undeleted integer, until only one integer remains.

The programs for A181281, the canonical program `A181281.P10334692078892070540` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181281 has offset 1).

The definition of A181281 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181281.P10334692078892070540

`(a(n-1)+4)%(n+1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181281

/-- `(a(n-1)+4)%(n+1)+1` -/
def P10334692078892070540.Spec : Prop :=
  ∀ n, (P10334692078892070540.a n : ℤ) = A181281 (n + 1)

theorem P10334692078892070540.correct : P10334692078892070540.Spec := by
  intro n
  simp only [A181281, Nat.add_sub_cancel]

end A181281

/-! ## A181281.P4801385196368304253

`(abs(a(A023443(n)))+4)%(n+1)+1` with `a(0)=1`
-/

namespace A181281.P4801385196368304253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (A023443 n).toNat + 4) % (n + 1) + 1

end

end A181281.P4801385196368304253

namespace A181281

/-- `(abs(a(A023443(n)))+4)%(n+1)+1` -/
def P4801385196368304253.Spec : Prop :=
  ∀ n, (P4801385196368304253.a n : ℤ) = A181281 (n + 1)

end A181281

/-! ## A181281.P15700419617352647207

`A198789(∑[n+5]+6)`
-/

namespace A181281.P15700419617352647207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198789 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A181281.P15700419617352647207

namespace A181281

/-- `A198789(∑[n+5]+6)` -/
def P15700419617352647207.Spec : Prop :=
  ∀ n, P15700419617352647207.a n = A181281 (n + 1)

end A181281

/-! ## A181281.P14651388228390019114

`A198788(∑[n+4]+11)`
-/

namespace A181281.P14651388228390019114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198788 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A181281.P14651388228390019114

namespace A181281

/-- `A198788(∑[n+4]+11)` -/
def P14651388228390019114.Spec : Prop :=
  ∀ n, P14651388228390019114.a n = A181281 (n + 1)

end A181281

/-! ## A181281.P8707427203466683271

`or(char[2], A198789(A046691(n+3)))`
-/

namespace A181281.P8707427203466683271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A198789 (A046691 (n + 3)).toNat)

end

end A181281.P8707427203466683271

namespace A181281

/-- `or(char[2], A198789(A046691(n+3)))` -/
def P8707427203466683271.Spec : Prop :=
  ∀ n, P8707427203466683271.a n = A181281 (n + 1)

end A181281

/-! ## A181281.P12243732481985243612

`A198789(A000124(n+5)-5)+A008683(16*(n+1))`
-/

namespace A181281.P12243732481985243612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198789 (A000124 (n + 5) - 5).toNat + A008683 (16 * (n + 1))

end

end A181281.P12243732481985243612

namespace A181281

/-- `A198789(A000124(n+5)-5)+A008683(16*(n+1))` -/
def P12243732481985243612.Spec : Prop :=
  ∀ n, P12243732481985243612.a n = A181281 (n + 1)

end A181281

/-!
# A181282: a(n) is the number of associate Rota-Baxter words in one idempotent generator x and one idempotent operator P of degree n. Such words are Rota-Baxter words that begin and/or end with x, and P is applied n times in the word.

The programs for A181282, the canonical program `A181282.P12816364877972098295` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181282 has offset 0).

The definition of A181282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181282.P13737200131326220632

`(2-3/(n+1))*4*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A181282.P13737200131326220632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (2 - 3 / (n + 1 : ℚ)) * (4 * a (n - 1))

end

end A181282.P13737200131326220632

namespace A181282

/-- `(2-3/(n+1))*4*a(n-1)` -/
def P13737200131326220632.Spec : Prop :=
  ∀ n, P13737200131326220632.a n = (A181282 n : ℚ)

end A181282

/-! ## A181282.P2608614992073361778

`2^(n-1)*A120589(n+1)`
-/

namespace A181282.P2608614992073361778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A120589 (n + 1) : ℚ)

end

end A181282.P2608614992073361778

namespace A181282

/-- `2^(n-1)*A120589(n+1)` -/
def P2608614992073361778.Spec : Prop :=
  ∀ n, P2608614992073361778.a n = (A181282 n : ℚ)

end A181282

/-! ## A181282.P12816364877972098295

`floor(3*2^(n-1)*A000108(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A181282

/-- `floor(3*2^(n-1)*A000108(n))` -/
def P12816364877972098295.Spec : Prop :=
  ∀ n, P12816364877972098295.a n = A181282 n

theorem P12816364877972098295.correct : P12816364877972098295.Spec := by
  intro n
  simp only [A181282]

end A181282

/-! ## A181282.P1468291005835185710

`A000108(n)*A003945(n)`
-/

namespace A181282.P1468291005835185710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A003945 n

end

end A181282.P1468291005835185710

namespace A181282

/-- `A000108(n)*A003945(n)` -/
def P1468291005835185710.Spec : Prop :=
  ∀ n, P1468291005835185710.a n = A181282 n

end A181282

/-! ## A181282.P17495775261579353443

`A003945(n)*A039599(∑[n])`
-/

namespace A181282.P17495775261579353443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n * A039599 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181282.P17495775261579353443

namespace A181282

/-- `A003945(n)*A039599(∑[n])` -/
def P17495775261579353443.Spec : Prop :=
  ∀ n, P17495775261579353443.a n = A181282 n

end A181282

/-! ## A181282.P2158034026976491356

`A000108(n)*Δ[A042950(n)]`
-/

namespace A181282.P2158034026976491356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (f1 (n + 1) - f1 n)

end

end A181282.P2158034026976491356

namespace A181282

/-- `A000108(n)*Δ[A042950(n)]` -/
def P2158034026976491356.Spec : Prop :=
  ∀ n, P2158034026976491356.a n = A181282 n

end A181282

/-! ## A181282.P5322069877728374405

`A000108(n)*Δ[A083329(n)]`
-/

namespace A181282.P5322069877728374405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (f1 (n + 1) - f1 n)

end

end A181282.P5322069877728374405

namespace A181282

/-- `A000108(n)*Δ[A083329(n)]` -/
def P5322069877728374405.Spec : Prop :=
  ∀ n, P5322069877728374405.a n = A181282 n

end A181282

/-! ## A181282.P9207474034690952703

`A003945(n)*A120588(n+1)`
-/

namespace A181282.P9207474034690952703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n * A120588 (n + 1)

end

end A181282.P9207474034690952703

namespace A181282

/-- `A003945(n)*A120588(n+1)` -/
def P9207474034690952703.Spec : Prop :=
  ∀ n, P9207474034690952703.a n = A181282 n

end A181282

/-! ## A181282.P18374624470856926100

`(A120304(n)+2)*A003945(n)`
-/

namespace A181282.P18374624470856926100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A120304 n + 2) * A003945 n

end

end A181282.P18374624470856926100

namespace A181282

/-- `(A120304(n)+2)*A003945(n)` -/
def P18374624470856926100.Spec : Prop :=
  ∀ n, P18374624470856926100.a n = A181282 n

end A181282

/-! ## A181282.P13810409678319129932

`A000108(n)*A074323(2*n)`
-/

namespace A181282.P13810409678319129932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A074323 (2 * n)

end

end A181282.P13810409678319129932

namespace A181282

/-- `A000108(n)*A074323(2*n)` -/
def P13810409678319129932.Spec : Prop :=
  ∀ n, P13810409678319129932.a n = A181282 n

end A181282

/-! ## A181282.P1267570673864837644

`ceil(A131428(n)/2)*A003945(n)`
-/

namespace A181282.P1267570673864837644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131428 n : ℚ) / 2⌉ * A003945 n

end

end A181282.P1267570673864837644

namespace A181282

/-- `ceil(A131428(n)/2)*A003945(n)` -/
def P1267570673864837644.Spec : Prop :=
  ∀ n, P1267570673864837644.a n = A181282 n

end A181282

/-! ## A181282.P8713750229568677809

`record[A164073(n+1)]*A000108(n)`
-/

namespace A181282.P8713750229568677809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000108 n

end

end A181282.P8713750229568677809

namespace A181282

/-- `record[A164073(n+1)]*A000108(n)` -/
def P8713750229568677809.Spec : Prop :=
  ∀ n, P8713750229568677809.a n = A181282 n

end A181282

/-! ## A181282.P9527663030426315688

`A000108(n)*A029744(2*n+1)`
-/

namespace A181282.P9527663030426315688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A029744 (2 * n + 1)

end

end A181282.P9527663030426315688

namespace A181282

/-- `A000108(n)*A029744(2*n+1)` -/
def P9527663030426315688.Spec : Prop :=
  ∀ n, P9527663030426315688.a n = A181282 n

end A181282

/-! ## A181282.P11703568679540042995

`A000108(n)*A063759(A004273(n))`
-/

namespace A181282.P11703568679540042995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A063759 (A004273 n).toNat

end

end A181282.P11703568679540042995

namespace A181282

/-- `A000108(n)*A063759(A004273(n))` -/
def P11703568679540042995.Spec : Prop :=
  ∀ n, P11703568679540042995.a n = A181282 n

end A181282

/-! ## A181282.P9055593042709629323

`or(A000079(n), A011782(n))*A000108(n)`
-/

namespace A181282.P9055593042709629323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 n) (A011782 n) * A000108 n

end

end A181282.P9055593042709629323

namespace A181282

/-- `or(A000079(n), A011782(n))*A000108(n)` -/
def P9055593042709629323.Spec : Prop :=
  ∀ n, P9055593042709629323.a n = A181282 n

end A181282

/-! ## A181282.P8674068558923655654

`(A262543(n+1)+A000108(n))*A011782(n)`
-/

namespace A181282.P8674068558923655654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A262543 (n + 1) + A000108 n) * A011782 n

end

end A181282.P8674068558923655654

namespace A181282

/-- `(A262543(n+1)+A000108(n))*A011782(n)` -/
def P8674068558923655654.Spec : Prop :=
  ∀ n, P8674068558923655654.a n = A181282 n

end A181282

/-! ## A181282.P18423488468571564612

`(A000079(n+1)-A011782(n))*A000108(n)`
-/

namespace A181282.P18423488468571564612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) - A011782 n) * A000108 n

end

end A181282.P18423488468571564612

namespace A181282

/-- `(A000079(n+1)-A011782(n))*A000108(n)` -/
def P18423488468571564612.Spec : Prop :=
  ∀ n, P18423488468571564612.a n = A181282 n

end A181282

/-! ## A181282.P9343622532422396895

`(A042950(n+1)-A042950(n))*A000108(n)`
-/

namespace A181282.P9343622532422396895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A042950 (n + 1) - A042950 n) * A000108 n

end

end A181282.P9343622532422396895

namespace A181282

/-- `(A042950(n+1)-A042950(n))*A000108(n)` -/
def P9343622532422396895.Spec : Prop :=
  ∀ n, P9343622532422396895.a n = A181282 n

end A181282

/-! ## A181282.P3868145079733163540

`(A111297(n+1)-A045623(n))*A000108(n)`
-/

namespace A181282.P3868145079733163540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A111297 (n + 1) - A045623 n) * A000108 n

end

end A181282.P3868145079733163540

namespace A181282

/-- `(A111297(n+1)-A045623(n))*A000108(n)` -/
def P3868145079733163540.Spec : Prop :=
  ∀ n, P3868145079733163540.a n = A181282 n

end A181282

/-!
# A181283: Numbers n with property that (n+1)*prime(n+1)-n*prime(n) is a perfect square s^2.

The programs for A181283, there is no canonical definition to state claims against.
-/

/-! ## A181283.P13462807543489227028

`eq[1, A007913(A090942(n+1))]`
-/

namespace A181283.P13462807543489227028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A090942 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181283.P13462807543489227028

/-! ## A181283.P17831488932033459186

`lt[A000122(n), A000122(A090942(n+1))²]`
-/

namespace A181283.P17831488932033459186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A090942 (n + 1)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A181283.P17831488932033459186

/-! ## A181283.P14927335163526752833

`eq[A020639(2*(n+1)), A000122(A090942(n+1))]`
-/

namespace A181283.P14927335163526752833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A090942 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A181283.P14927335163526752833

/-!
# A181284: Decimal expansion of sqrt(9/121 * 100^m + (112 - 44*m)/121), where m=30.

The programs for A181284, there is no canonical definition to state claims against.
-/

/-! ## A181284.P14217519202761793351

`Δ[A056020(n+2)]%A008889(3*n+2)`
-/

namespace A181284.P14217519202761793351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A008889 (3 * n + 2))

end

end A181284.P14217519202761793351

/-! ## A181284.P14703455078776326971

`xor(A200793(A262079(n+2))+4, a(n-1))` with `a(0)=2`
-/

namespace A181284.P14703455078776326971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.xor (A200793 (A262079 (n + 2)).toNat + 4) (a (n - 1))

end

end A181284.P14703455078776326971

/-!
# A181285: 

The programs for A181285, there is no canonical definition to state claims against.
-/

/-! ## A181285.P10973392293685008730

`A164785(A059613(n+1))`
-/

namespace A181285.P10973392293685008730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164785 (A059613 (n + 1)).toNat

end

end A181285.P10973392293685008730

/-!
# A181286: Partial sums of floor(n^2/3) (A000212).

The programs for A181286, the canonical program `A181286.P5877068577342220388` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181286 has offset 0).

The definition of A181286 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181286.P5877068577342220388

`a(n-3)+(n-1)²` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181286

/-- `a(n-3)+(n-1)²` -/
def P5877068577342220388.Spec : Prop :=
  ∀ n, P5877068577342220388.a n = A181286 n

theorem P5877068577342220388.correct : P5877068577342220388.Spec := by
  intro n
  simp only [A181286]

end A181286

/-! ## A181286.P17921573427652447174

`floor((2*n^3+3*n²-3*n)/18)`
-/

namespace A181286.P17921573427652447174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n ^ 3 + 3 * n ^ 2 : ℤ) - (3 * n : ℤ) : ℚ) / 18⌋

end

end A181286.P17921573427652447174

namespace A181286

/-- `floor((2*n^3+3*n²-3*n)/18)` -/
def P17921573427652447174.Spec : Prop :=
  ∀ n, P17921573427652447174.a n = A181286 n

end A181286

/-! ## A181286.P8224174027231922522

`∑[n²-n²%3]/3`
-/

namespace A181286.P8224174027231922522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ((n ^ 2 % 3 : ℕ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A181286.P8224174027231922522

namespace A181286

/-- `∑[n²-n²%3]/3` -/
def P8224174027231922522.Spec : Prop :=
  ∀ n, P8224174027231922522.a n = (A181286 n : ℚ)

end A181286

/-! ## A181286.P5956004098808191267

`round(a(n-1)+n²/3)` with `a(0)=0`
-/

namespace A181286.P5956004098808191267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (n ^ 2 : ℚ) / 3)

end

end A181286.P5956004098808191267

namespace A181286

/-- `round(a(n-1)+n²/3)` -/
def P5956004098808191267.Spec : Prop :=
  ∀ n, P5956004098808191267.a n = A181286 n

end A181286

/-! ## A181286.P16817351473934360125

`∑[∑[a(n-3)+4]]/2` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A181286.P16817351473934360125
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n f2 =>
  f2 (n - 3) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A181286.P16817351473934360125

namespace A181286

/-- `∑[∑[a(n-3)+4]]/2` -/
def P16817351473934360125.Spec : Prop :=
  ∀ n, P16817351473934360125.a n = (A181286 n : ℚ)

end A181286

/-! ## A181286.P12281368082548834640

`∑[a(n-1)+2]+a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A181286.P12281368082548834640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 3)

end

end A181286.P12281368082548834640

namespace A181286

/-- `∑[a(n-1)+2]+a(n-3)` -/
def P12281368082548834640.Spec : Prop :=
  ∀ n, (P12281368082548834640.a n : ℤ) = A181286 n

end A181286

/-! ## A181286.P14167681142396299247

`∑[A000212(n)]`
-/

namespace A181286.P14167681142396299247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181286.P14167681142396299247

namespace A181286

/-- `∑[A000212(n)]` -/
def P14167681142396299247.Spec : Prop :=
  ∀ n, P14167681142396299247.a n = A181286 n

end A181286

/-! ## A181286.P7509321789197098363

`∑[∑[A004523(n)]]`
-/

namespace A181286.P7509321789197098363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181286.P7509321789197098363

namespace A181286

/-- `∑[∑[A004523(n)]]` -/
def P7509321789197098363.Spec : Prop :=
  ∀ n, P7509321789197098363.a n = A181286 n

end A181286

/-! ## A181286.P3043124969089230707

`∑[n²-A071619(n)]`
-/

namespace A181286.P3043124969089230707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A071619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181286.P3043124969089230707

namespace A181286

/-- `∑[n²-A071619(n)]` -/
def P3043124969089230707.Spec : Prop :=
  ∀ n, P3043124969089230707.a n = A181286 n

end A181286

/-! ## A181286.P7583790764099332204

`∑[A256320(n)-n²]`
-/

namespace A181286.P7583790764099332204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256320 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181286.P7583790764099332204

namespace A181286

/-- `∑[A256320(n)-n²]` -/
def P7583790764099332204.Spec : Prop :=
  ∀ n, P7583790764099332204.a n = A181286 n

end A181286

/-! ## A181286.P16660693336437269570

`∑[n²]-A358042(n)`
-/

namespace A181286.P16660693336437269570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A358042 n

end

end A181286.P16660693336437269570

namespace A181286

/-- `∑[n²]-A358042(n)` -/
def P16660693336437269570.Spec : Prop :=
  ∀ n, P16660693336437269570.a n = A181286 n

end A181286

/-! ## A181286.P17973460114262438483

`∑[A007980(n)-(n+1)]`
-/

namespace A181286.P17973460114262438483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181286.P17973460114262438483

namespace A181286

/-- `∑[A007980(n)-(n+1)]` -/
def P17973460114262438483.Spec : Prop :=
  ∀ n, P17973460114262438483.a n = A181286 n

end A181286

/-! ## A181286.P4010812016240323584

`A238340(n+1)-∑[(n+1)²]`
-/

namespace A181286.P4010812016240323584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238340 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A181286.P4010812016240323584

namespace A181286

/-- `A238340(n+1)-∑[(n+1)²]` -/
def P4010812016240323584.Spec : Prop :=
  ∀ n, P4010812016240323584.a n = A181286 n

end A181286

/-! ## A181286.P16953528360085564636

`∑[floor(n*A004277(n)/3)]/2`
-/

namespace A181286.P16953528360085564636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * A004277 n : ℚ) / 3⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A181286.P16953528360085564636

namespace A181286

/-- `∑[floor(n*A004277(n)/3)]/2` -/
def P16953528360085564636.Spec : Prop :=
  ∀ n, P16953528360085564636.a n = (A181286 n : ℚ)

end A181286

/-! ## A181286.P16142061059679037636

`A173691(n)+A171965(n)`
-/

namespace A181286.P16142061059679037636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173691 n + A171965 n

end

end A181286.P16142061059679037636

namespace A181286

/-- `A173691(n)+A171965(n)` -/
def P16142061059679037636.Spec : Prop :=
  ∀ n, P16142061059679037636.a n = A181286 n

end A181286

/-! ## A181286.P4743659239374943410

`A181120(n)+A173196(n)`
-/

namespace A181286.P4743659239374943410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 n + A173196 n

end

end A181286.P4743659239374943410

namespace A181286

/-- `A181120(n)+A173196(n)` -/
def P4743659239374943410.Spec : Prop :=
  ∀ n, P4743659239374943410.a n = A181286 n

end A181286

/-! ## A181286.P9307625328537096440

`A060999(n)-A001840(n)`
-/

namespace A181286.P9307625328537096440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060999 n - A001840 n

end

end A181286.P9307625328537096440

namespace A181286

/-- `A060999(n)-A001840(n)` -/
def P9307625328537096440.Spec : Prop :=
  ∀ n, P9307625328537096440.a n = A181286 n

end A181286

/-! ## A181286.P14414249945220752582

`A212973(n)-A092498(n)`
-/

namespace A181286.P14414249945220752582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212973 n - A092498 n

end

end A181286.P14414249945220752582

namespace A181286

/-- `A212973(n)-A092498(n)` -/
def P14414249945220752582.Spec : Prop :=
  ∀ n, P14414249945220752582.a n = A181286 n

end A181286

/-! ## A181286.P17242336470458081278

`A131941(n)-A175812(n)`
-/

namespace A181286.P17242336470458081278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131941 n - A175812 n

end

end A181286.P17242336470458081278

namespace A181286

/-- `A131941(n)-A175812(n)` -/
def P17242336470458081278.Spec : Prop :=
  ∀ n, P17242336470458081278.a n = A181286 n

end A181286

/-! ## A181286.P12678005729433328145

`A000292(n)-∑[A001840(n)]`
-/

namespace A181286.P12678005729433328145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181286.P12678005729433328145

namespace A181286

/-- `A000292(n)-∑[A001840(n)]` -/
def P12678005729433328145.Spec : Prop :=
  ∀ n, P12678005729433328145.a n = A181286 n

end A181286

/-!
# A181287: Numbers of the form i*5^j-1 (i=1..4, j >= 0).

The programs for A181287, the canonical program `A181287.P7043128444127091959` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181287 has offset 1).

The definition of A181287 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181287.P7043128444127091959

`a(n-1)+5*a(n-4)-5*a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181287

/-- `a(n-1)+5*a(n-4)-5*a(n-5)` -/
def P7043128444127091959.Spec : Prop :=
  ∀ n, P7043128444127091959.a n = A181287 (n + 1)

theorem P7043128444127091959.correct : P7043128444127091959.Spec := by
  intro n
  simp only [A181287, Nat.add_sub_cancel]

end A181287

/-! ## A181287.P11609167847453117979

`∑[floor(5^floor((n-1)/4))]`
-/

namespace A181287.P11609167847453117979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 : ℚ) ^ (⌊((n : ℤ) - 1 : ℚ) / 4⌋ : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181287.P11609167847453117979

namespace A181287

/-- `∑[floor(5^floor((n-1)/4))]` -/
def P11609167847453117979.Spec : Prop :=
  ∀ n, P11609167847453117979.a n = A181287 (n + 1)

end A181287

/-! ## A181287.P9404613439176132783

`5*a(n-4)+4` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A181287.P9404613439176132783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3] fun n a =>
  5 * a (n - 4) + 4

end

end A181287.P9404613439176132783

namespace A181287

/-- `5*a(n-4)+4` -/
def P9404613439176132783.Spec : Prop :=
  ∀ n, (P9404613439176132783.a n : ℤ) = A181287 (n + 1)

end A181287

/-! ## A181287.P3986077345537430838

`A140730(n)-1`
-/

namespace A181287.P3986077345537430838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 n - 1

end

end A181287.P3986077345537430838

namespace A181287

/-- `A140730(n)-1` -/
def P3986077345537430838.Spec : Prop :=
  ∀ n, P3986077345537430838.a n = A181287 (n + 1)

end A181287

/-! ## A181287.P15429394869946397501

`∑[A074872(A065033(n))]-1`
-/

namespace A181287.P15429394869946397501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074872 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A181287.P15429394869946397501

namespace A181287

/-- `∑[A074872(A065033(n))]-1` -/
def P15429394869946397501.Spec : Prop :=
  ∀ n, P15429394869946397501.a n = A181287 (n + 1)

end A181287

/-! ## A181287.P13275268017153953612

`A153881(n+2)+A140730(n)`
-/

namespace A181287.P13275268017153953612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A140730 n

end

end A181287.P13275268017153953612

namespace A181287

/-- `A153881(n+2)+A140730(n)` -/
def P13275268017153953612.Spec : Prop :=
  ∀ n, P13275268017153953612.a n = A181287 (n + 1)

end A181287

/-! ## A181287.P14601894432752966157

`xor(A112132(n+1), A140730(n))`
-/

namespace A181287.P14601894432752966157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A112132 (n + 1)) (A140730 n)

end

end A181287.P14601894432752966157

namespace A181287

/-- `xor(A112132(n+1), A140730(n))` -/
def P14601894432752966157.Spec : Prop :=
  ∀ n, P14601894432752966157.a n = A181287 (n + 1)

end A181287

/-! ## A181287.P2692865676236617298

`∑[A074872(∑[A266070(n)])]-1`
-/

namespace A181287.P2692865676236617298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266070 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074872 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A181287.P2692865676236617298

namespace A181287

/-- `∑[A074872(∑[A266070(n)])]-1` -/
def P2692865676236617298.Spec : Prop :=
  ∀ n, P2692865676236617298.a n = A181287 (n + 1)

end A181287

/-! ## A181287.P1287999448806469233

`∪[A245478(n+1), A133335(n)]-1`
-/

namespace A181287.P1287999448806469233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133335 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A181287.P1287999448806469233

namespace A181287

/-- `∪[A245478(n+1), A133335(n)]-1` -/
def P1287999448806469233.Spec : Prop :=
  ∀ n, P1287999448806469233.a n = A181287 (n + 1)

end A181287

/-! ## A181287.P6027458448867927429

`∪[A026395(n), A056487(n)]-1`
-/

namespace A181287.P6027458448867927429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026395 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056487 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A181287.P6027458448867927429

namespace A181287

/-- `∪[A026395(n), A056487(n)]-1` -/
def P6027458448867927429.Spec : Prop :=
  ∀ n, P6027458448867927429.a n = A181287 (n + 1)

end A181287

/-! ## A181287.P10198139040752070554

`a(n-1)+gcd(a(n-1)+1, 5^n)` with `a(0)=0`
-/

namespace A181287.P10198139040752070554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Nat.gcd (a (n - 1) + 1) (5 ^ n)

end

end A181287.P10198139040752070554

namespace A181287

/-- `a(n-1)+gcd(a(n-1)+1, 5^n)` -/
def P10198139040752070554.Spec : Prop :=
  ∀ n, (P10198139040752070554.a n : ℤ) = A181287 (n + 1)

end A181287

/-!
# A181288: Numbers of the form i*6^j-1 (i=1..5, j >= 0).

The programs for A181288, the canonical program `A181288.P10886524218838713786` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181288 has offset 1).

The definition of A181288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 642 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181288.P8649188669649247134

`∑[floor(6^floor((n-1)/5))]`
-/

namespace A181288.P8649188669649247134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(6 : ℚ) ^ (⌊((n : ℤ) - 1 : ℚ) / 5⌋ : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181288.P8649188669649247134

namespace A181288

/-- `∑[floor(6^floor((n-1)/5))]` -/
def P8649188669649247134.Spec : Prop :=
  ∀ n, P8649188669649247134.a n = A181288 (n + 1)

end A181288

/-! ## A181288.P10886524218838713786

`6*a(n-5)+5` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181288

/-- `6*a(n-5)+5` -/
def P10886524218838713786.Spec : Prop :=
  ∀ n, (P10886524218838713786.a n : ℤ) = A181288 (n + 1)

theorem P10886524218838713786.correct : P10886524218838713786.Spec := by
  intro n
  simp only [A181288, Nat.add_sub_cancel]

end A181288

/-! ## A181288.P4326595463409977267

`∑[6^A059995(A004273(n))]-1`
-/

namespace A181288.P4326595463409977267
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A059995 (A004273 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A181288.P4326595463409977267

namespace A181288

/-- `∑[6^A059995(A004273(n))]-1` -/
def P4326595463409977267.Spec : Prop :=
  ∀ n, P4326595463409977267.a n = (A181288 (n + 1) : ℚ)

end A181288

/-! ## A181288.P14339365122030718406

`∑[6^A059995(A004275(n))]-1`
-/

namespace A181288.P14339365122030718406
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A059995 (A004275 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A181288.P14339365122030718406

namespace A181288

/-- `∑[6^A059995(A004275(n))]-1` -/
def P14339365122030718406.Spec : Prop :=
  ∀ n, P14339365122030718406.a n = (A181288 (n + 1) : ℚ)

end A181288

/-! ## A181288.P15258517514677254745

`∩[A023748(n+1), A023762(n+1)-1]`
-/

namespace A181288.P15258517514677254745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023762 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181288.P15258517514677254745

namespace A181288

/-- `∩[A023748(n+1), A023762(n+1)-1]` -/
def P15258517514677254745.Spec : Prop :=
  ∀ n, (P15258517514677254745.a n : ℤ) = A181288 (n + 1)

end A181288

/-!
# A181289: Triangle read by rows: T(n,k) is the number of 2-compositions of n having length k (0 <= k <= n).

The programs for A181289, there is no canonical definition to state claims against.
-/

/-! ## A181289.P8005371942623660040

`A210753(n)-a(n-1)` with `a(0)=1`
-/

namespace A181289.P8005371942623660040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A210753 n - a (n - 1)

end

end A181289.P8005371942623660040

/-! ## A181289.P4413888983354387644

`abs(A136656(n)/A094587(n))`
-/

namespace A181289.P4413888983354387644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A136656 n : ℚ) / (A094587 n : ℚ)|

end

end A181289.P4413888983354387644

/-! ## A181289.P10798489190055280085

`gcd(A000038(n), A136656(n))/A094587(n)`
-/

namespace A181289.P10798489190055280085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 n) (A136656 n) : ℚ) / (A094587 n : ℚ)

end

end A181289.P10798489190055280085

/-! ## A181289.P12237385201539944937

`lcm(A065357(n), A136656(n))/A094587(n)`
-/

namespace A181289.P12237385201539944937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A065357 n) (A136656 n) : ℚ) / (A094587 n : ℚ)

end

end A181289.P12237385201539944937

/-! ## A181289.P4423896351440055443

`(A136656(n)/A094587(n))²^(1/A001221(2*A000040(n+1)))`
-/

namespace A181289.P4423896351440055443
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((A136656 n : ℚ) / (A094587 n : ℚ)) ^ 2 : ℝ) ^ (1 / (A001221 (2 * A000040 (n + 1)).toNat : ℚ) : ℝ)

end

end A181289.P4423896351440055443

/-!
# A181290: The sum of the lengths of the 2-compositions of n. A 2-composition of n is a nonnegative matrix with two rows, such that each column has at least one nonzero entry and whose entries sum up to n. The length of the 2-composition is the number of columns.

The programs for A181290, the canonical program `A181290.P6424768068439069294` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181290 has offset 0).

The definition of A181290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181290.P17580586134586394727

`A181331(n)+A054146(n)`
-/

namespace A181290.P17580586134586394727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181331 n + A054146 n

end

end A181290.P17580586134586394727

namespace A181290

/-- `A181331(n)+A054146(n)` -/
def P17580586134586394727.Spec : Prop :=
  ∀ n, P17580586134586394727.a n = A181290 n

end A181290

/-! ## A181290.P6424768068439069294

`A181300(n)+A181296(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A181290

/-- `A181300(n)+A181296(n)` -/
def P6424768068439069294.Spec : Prop :=
  ∀ n, P6424768068439069294.a n = A181290 n

theorem P6424768068439069294.correct : P6424768068439069294.Spec := by
  intro n
  simp only [A181290]

end A181290

/-! ## A181290.P2564690350939821638

`A181337(n)+A181305(n)`
-/

namespace A181290.P2564690350939821638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181337 n + A181305 n

end

end A181290.P2564690350939821638

namespace A181290

/-- `A181337(n)+A181305(n)` -/
def P2564690350939821638.Spec : Prop :=
  ∀ n, P2564690350939821638.a n = A181290 n

end A181290

/-! ## A181290.P272409718870579236

`A181328(n)+A181326(n)`
-/

namespace A181290.P272409718870579236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181328 n + A181326 n

end

end A181290.P272409718870579236

namespace A181290

/-- `A181328(n)+A181326(n)` -/
def P272409718870579236.Spec : Prop :=
  ∀ n, P272409718870579236.a n = A181290 n

end A181290

/-! ## A181290.P8021865837131485145

`A181298(n)-A181300(n)`
-/

namespace A181290.P8021865837131485145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181298 n - A181300 n

end

end A181290.P8021865837131485145

namespace A181290

/-- `A181298(n)-A181300(n)` -/
def P8021865837131485145.Spec : Prop :=
  ∀ n, P8021865837131485145.a n = A181290 n

end A181290

/-! ## A181290.P18163964597531341553

`A181300(n)+2*A181305(n)`
-/

namespace A181290.P18163964597531341553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181300 n + 2 * A181305 n

end

end A181290.P18163964597531341553

namespace A181290

/-- `A181300(n)+2*A181305(n)` -/
def P18163964597531341553.Spec : Prop :=
  ∀ n, P18163964597531341553.a n = A181290 n

end A181290

/-! ## A181290.P2173713168246399465

`A181305(n)+A181298(n)/2`
-/

namespace A181290.P2173713168246399465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181305 n : ℚ) + (A181298 n : ℚ) / 2

end

end A181290.P2173713168246399465

namespace A181290

/-- `A181305(n)+A181298(n)/2` -/
def P2173713168246399465.Spec : Prop :=
  ∀ n, P2173713168246399465.a n = (A181290 n : ℚ)

end A181290

/-! ## A181290.P3594432921049190322

`2*A181337(n)-A181300(n)`
-/

namespace A181290.P3594432921049190322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181337 n - A181300 n

end

end A181290.P3594432921049190322

namespace A181290

/-- `2*A181337(n)-A181300(n)` -/
def P3594432921049190322.Spec : Prop :=
  ∀ n, P3594432921049190322.a n = A181290 n

end A181290

/-! ## A181290.P10163509676580448010

`A181337(n)+A181296(n)/2`
-/

namespace A181290.P10163509676580448010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181337 n : ℚ) + (A181296 n : ℚ) / 2

end

end A181290.P10163509676580448010

namespace A181290

/-- `A181337(n)+A181296(n)/2` -/
def P10163509676580448010.Spec : Prop :=
  ∀ n, P10163509676580448010.a n = (A181290 n : ℚ)

end A181290

/-! ## A181290.P983267111451644479

`A181337(n)+∑[A181300(n+1)]`
-/

namespace A181290.P983267111451644479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181337 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181290.P983267111451644479

namespace A181290

/-- `A181337(n)+∑[A181300(n+1)]` -/
def P983267111451644479.Spec : Prop :=
  ∀ n, P983267111451644479.a n = A181290 n

end A181290

/-! ## A181290.P12469182337884648477

`A181296(n)-(A181305(n)-A181337(n))`
-/

namespace A181290.P12469182337884648477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181296 n - (A181305 n - A181337 n)

end

end A181290.P12469182337884648477

namespace A181290

/-- `A181296(n)-(A181305(n)-A181337(n))` -/
def P12469182337884648477.Spec : Prop :=
  ∀ n, P12469182337884648477.a n = A181290 n

end A181290

/-! ## A181290.P3795385619350618989

`Δ[A181331(n)]-A003480(n)`
-/

namespace A181290.P3795385619350618989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A003480 n

end

end A181290.P3795385619350618989

namespace A181290

/-- `Δ[A181331(n)]-A003480(n)` -/
def P3795385619350618989.Spec : Prop :=
  ∀ n, P3795385619350618989.a n = A181290 n

end A181290

/-! ## A181290.P16792503367854180917

`(A181294(n)+∑[A181294(n)])/2`
-/

namespace A181290.P16792503367854180917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181294 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A181294 n + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A181290.P16792503367854180917

namespace A181290

/-- `(A181294(n)+∑[A181294(n)])/2` -/
def P16792503367854180917.Spec : Prop :=
  ∀ n, P16792503367854180917.a n = (A181290 n : ℚ)

end A181290

/-! ## A181290.P10297460789757651721

`A054145(n)-A054146((2*n)%(n+1))`
-/

namespace A181290.P10297460789757651721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054145 n - A054146 (2 * n % (n + 1))

end

end A181290.P10297460789757651721

namespace A181290

/-- `A054145(n)-A054146((2*n)%(n+1))` -/
def P10297460789757651721.Spec : Prop :=
  ∀ n, P10297460789757651721.a n = A181290 n

end A181290

/-! ## A181290.P5679411189026239886

`A181331(n+1)-(A181331(n)+A003480(n))`
-/

namespace A181290.P5679411189026239886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181331 (n + 1) - (A181331 n + A003480 n)

end

end A181290.P5679411189026239886

namespace A181290

/-- `A181331(n+1)-(A181331(n)+A003480(n))` -/
def P5679411189026239886.Spec : Prop :=
  ∀ n, P5679411189026239886.a n = A181290 n

end A181290

/-!
# A181291: Primes P(k) such that (2^k-P(k))*2^k-1 is prime.

The programs for A181291, there is no canonical definition to state claims against.
-/

/-! ## A181291.P6696184727356435972

`p?[eq[1, A023401(A023418(n+3))]]`
-/

namespace A181291.P6696184727356435972
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023401 (A023418 (n + 3)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A181291.P6696184727356435972

/-! ## A181291.P17435915019479204557

`A029743(A095791(∑[n²²+2]))`
-/

namespace A181291.P17435915019479204557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (A095791 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A181291.P17435915019479204557

/-! ## A181291.P6139512075494071876

`eq[A003415(n), A023401(A023418(n+3))]`
-/

namespace A181291.P6139512075494071876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023401 (A023418 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A181291.P6139512075494071876

/-! ## A181291.P17491066377329048641

`eq[A023401(A023418(n+3)), A105700(n)]`
-/

namespace A181291.P17491066377329048641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023401 (A023418 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A181291.P17491066377329048641

/-!
# A181292: The sum of the entries in the top rows of all 2-compositions of n. A 2-composition of n is a nonnegative matrix with two rows, such that each column has at least one nonzero entry and whose entries sum up to n.

The programs for A181292, the canonical program `A181292.P306821892681239711` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181292 has offset 0).

The definition of A181292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181292.P306821892681239711

`∑[A054146(n)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A181292

/-- `∑[A054146(n)]` -/
def P306821892681239711.Spec : Prop :=
  ∀ n, P306821892681239711.a n = A181292 n

theorem P306821892681239711.correct : P306821892681239711.Spec := by
  intro n
  simp only [A181292]

end A181292

/-! ## A181292.P3781688531913220560

`∑[∑[A181331(n)]]`
-/

namespace A181292.P3781688531913220560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181331 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181292.P3781688531913220560

namespace A181292

/-- `∑[∑[A181331(n)]]` -/
def P3781688531913220560.Spec : Prop :=
  ∀ n, P3781688531913220560.a n = A181292 n

end A181292

/-! ## A181292.P13636877871211244947

`n/2*A003480(n)`
-/

namespace A181292.P13636877871211244947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A003480 n : ℚ)

end

end A181292.P13636877871211244947

namespace A181292

/-- `n/2*A003480(n)` -/
def P13636877871211244947.Spec : Prop :=
  ∀ n, P13636877871211244947.a n = (A181292 n : ℚ)

end A181292

/-! ## A181292.P10166158835376975952

`n/4*A007070(n)`
-/

namespace A181292.P10166158835376975952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (A007070 n : ℚ)

end

end A181292.P10166158835376975952

namespace A181292

/-- `n/4*A007070(n)` -/
def P10166158835376975952.Spec : Prop :=
  ∀ n, P10166158835376975952.a n = (A181292 n : ℚ)

end A181292

/-! ## A181292.P6465363805239189742

`∑[∑[A181294(n)/2]]`
-/

namespace A181292.P6465363805239189742
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181294 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181292.P6465363805239189742

namespace A181292

/-- `∑[∑[A181294(n)/2]]` -/
def P6465363805239189742.Spec : Prop :=
  ∀ n, P6465363805239189742.a n = (A181292 n : ℚ)

end A181292

/-! ## A181292.P9531162675232543947

`n*A007068(2*n+1)/4`
-/

namespace A181292.P9531162675232543947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A007068 (2 * n + 1) : ℚ) / 4)

end

end A181292.P9531162675232543947

namespace A181292

/-- `n*A007068(2*n+1)/4` -/
def P9531162675232543947.Spec : Prop :=
  ∀ n, P9531162675232543947.a n = (A181292 n : ℚ)

end A181292

/-! ## A181292.P10784627937098683120

`n/2*A062113(A004273(n))`
-/

namespace A181292.P10784627937098683120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A062113 (A004273 n).toNat : ℚ)

end

end A181292.P10784627937098683120

namespace A181292

/-- `n/2*A062113(A004273(n))` -/
def P10784627937098683120.Spec : Prop :=
  ∀ n, P10784627937098683120.a n = (A181292 n : ℚ)

end A181292

/-! ## A181292.P12282835741555668311

`∑[A181305(n)+∑[A181300(n)]]`
-/

namespace A181292.P12282835741555668311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181300 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181305 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181292.P12282835741555668311

namespace A181292

/-- `∑[A181305(n)+∑[A181300(n)]]` -/
def P12282835741555668311.Spec : Prop :=
  ∀ n, P12282835741555668311.a n = A181292 n

end A181292

/-! ## A181292.P1664853302304839545

`∑[A181296(n)-A181300(n+1)]`
-/

namespace A181292.P1664853302304839545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181296 n - A181300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181292.P1664853302304839545

namespace A181292

/-- `∑[A181296(n)-A181300(n+1)]` -/
def P1664853302304839545.Spec : Prop :=
  ∀ n, P1664853302304839545.a n = A181292 n

end A181292

/-! ## A181292.P2181588421089695865

`A054147(n)/3`
-/

namespace A181292.P2181588421089695865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054147 n : ℚ) / 3

end

end A181292.P2181588421089695865

namespace A181292

/-- `A054147(n)/3` -/
def P2181588421089695865.Spec : Prop :=
  ∀ n, P2181588421089695865.a n = (A181292 n : ℚ)

end A181292

/-! ## A181292.P1352163645253188360

`∑[A054145(n)/2]`
-/

namespace A181292.P1352163645253188360
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054145 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181292.P1352163645253188360

namespace A181292

/-- `∑[A054145(n)/2]` -/
def P1352163645253188360.Spec : Prop :=
  ∀ n, P1352163645253188360.a n = (A181292 n : ℚ)

end A181292

/-! ## A181292.P12474399750644798403

`∑[A181296(n)]-A181305(n)`
-/

namespace A181292.P12474399750644798403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181296 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A181305 n

end

end A181292.P12474399750644798403

namespace A181292

/-- `∑[A181296(n)]-A181305(n)` -/
def P12474399750644798403.Spec : Prop :=
  ∀ n, P12474399750644798403.a n = A181292 n

end A181292

/-! ## A181292.P16355540161273869291

`A054147(n)-n*A003480(n)`
-/

namespace A181292.P16355540161273869291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054147 n - (n : ℤ) * A003480 n

end

end A181292.P16355540161273869291

namespace A181292

/-- `A054147(n)-n*A003480(n)` -/
def P16355540161273869291.Spec : Prop :=
  ∀ n, P16355540161273869291.a n = A181292 n

end A181292

/-! ## A181292.P14628354832605170338

`A054146(n+1)-A053297(n+1)`
-/

namespace A181292.P14628354832605170338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054146 (n + 1) - A053297 (n + 1)

end

end A181292.P14628354832605170338

namespace A181292

/-- `A054146(n+1)-A053297(n+1)` -/
def P14628354832605170338.Spec : Prop :=
  ∀ n, P14628354832605170338.a n = A181292 n

end A181292

/-! ## A181292.P7352536728776176087

`A054144(∑[n]+n)`
-/

namespace A181292.P7352536728776176087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054144 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A181292.P7352536728776176087

namespace A181292

/-- `A054144(∑[n]+n)` -/
def P7352536728776176087.Spec : Prop :=
  ∀ n, P7352536728776176087.a n = A181292 n

end A181292

/-!
# A181294: Number of 0's in all 2-compositions of n. A 2-composition of n is a nonnegative matrix with two rows, such that each column has at least one nonzero entry and whose entries sum up to n.

The programs for A181294, the canonical program `A181294.P10170045756962490790` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181294 has offset 0).

The definition of A181294 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181294.P1049499519370933208

`2*A181331(n)`
-/

namespace A181294.P1049499519370933208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181331 n

end

end A181294.P1049499519370933208

namespace A181294

/-- `2*A181331(n)` -/
def P1049499519370933208.Spec : Prop :=
  ∀ n, P1049499519370933208.a n = A181294 n

end A181294

/-! ## A181294.P10170045756962490790

`2*(A181290(n)-A054146(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A181294

/-- `2*(A181290(n)-A054146(n))` -/
def P10170045756962490790.Spec : Prop :=
  ∀ n, P10170045756962490790.a n = A181294 n

theorem P10170045756962490790.correct : P10170045756962490790.Spec := by
  intro n
  simp only [A181294]

end A181294

/-! ## A181294.P3235466641485672276

`2*(A181337(n)-∑[A181300(n)])`
-/

namespace A181294.P3235466641485672276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A181337 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181294.P3235466641485672276

namespace A181294

/-- `2*(A181337(n)-∑[A181300(n)])` -/
def P3235466641485672276.Spec : Prop :=
  ∀ n, P3235466641485672276.a n = A181294 n

end A181294

/-! ## A181294.P6108483503752159917

`A181331(A005843(n)/2)+A181331(n)`
-/

namespace A181294.P6108483503752159917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181331 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A181331 n

end

end A181294.P6108483503752159917

namespace A181294

/-- `A181331(A005843(n)/2)+A181331(n)` -/
def P6108483503752159917.Spec : Prop :=
  ∀ n, P6108483503752159917.a n = A181294 n

end A181294

/-! ## A181294.P9801486581624586647

`A181331(A005843(n)-n)+A181331(n)`
-/

namespace A181294.P9801486581624586647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181331 (A005843 n - (n : ℤ)).toNat + A181331 n

end

end A181294.P9801486581624586647

namespace A181294

/-- `A181331(A005843(n)-n)+A181331(n)` -/
def P9801486581624586647.Spec : Prop :=
  ∀ n, P9801486581624586647.a n = A181294 n

end A181294

/-! ## A181294.P12484858415459083138

`∑[A054146(n)+A003480(n)]-A003480(n)`
-/

namespace A181294.P12484858415459083138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054146 n + A003480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003480 n

end

end A181294.P12484858415459083138

namespace A181294

/-- `∑[A054146(n)+A003480(n)]-A003480(n)` -/
def P12484858415459083138.Spec : Prop :=
  ∀ n, P12484858415459083138.a n = A181294 n

end A181294

/-! ## A181294.P2800770444016520858

`record[Δ[A054145(floor(n/2))]]`
-/

namespace A181294.P2800770444016520858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054145 ⌊(n : ℚ) / 2⌋.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181294.P2800770444016520858

namespace A181294

/-- `record[Δ[A054145(floor(n/2))]]` -/
def P2800770444016520858.Spec : Prop :=
  ∀ n, P2800770444016520858.a n = A181294 n

end A181294

/-! ## A181294.P2322710368185504562

`Δ[A054145(A004273(n)-n)]`
-/

namespace A181294.P2322710368185504562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054145 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181294.P2322710368185504562

namespace A181294

/-- `Δ[A054145(A004273(n)-n)]` -/
def P2322710368185504562.Spec : Prop :=
  ∀ n, P2322710368185504562.a n = A181294 n

end A181294

/-! ## A181294.P15058480469904784298

`Δ[2*A054146(A004273(n)-n)]`
-/

namespace A181294.P15058480469904784298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054146 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181294.P15058480469904784298

namespace A181294

/-- `Δ[2*A054146(A004273(n)-n)]` -/
def P15058480469904784298.Spec : Prop :=
  ∀ n, P15058480469904784298.a n = A181294 n

end A181294

/-! ## A181294.P10079448443585197980

`A054145(n)-A054145(A004273(n)-n)`
-/

namespace A181294.P10079448443585197980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054145 n - A054145 (A004273 n - (n : ℤ)).toNat

end

end A181294.P10079448443585197980

namespace A181294

/-- `A054145(n)-A054145(A004273(n)-n)` -/
def P10079448443585197980.Spec : Prop :=
  ∀ n, P10079448443585197980.a n = A181294 n

end A181294

/-! ## A181294.P9218627596814350046

`A054146(n+1)-(A054145(n)+A003480(n))`
-/

namespace A181294.P9218627596814350046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054146 (n + 1) - (A054145 n + A003480 n)

end

end A181294.P9218627596814350046

namespace A181294

/-- `A054146(n+1)-(A054145(n)+A003480(n))` -/
def P9218627596814350046.Spec : Prop :=
  ∀ n, P9218627596814350046.a n = A181294 n

end A181294

/-!
# A181296: The number of odd entries in all the 2-compositions of n.

The programs for A181296, the canonical program `A181296.P2159209662027622070` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181296 has offset 0).

The definition of A181296 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181305, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A181296.P2159209662027622070

`2*A181305(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A181296

/-- `2*A181305(n)` -/
def P2159209662027622070.Spec : Prop :=
  ∀ n, P2159209662027622070.a n = A181296 n

theorem P2159209662027622070.correct : P2159209662027622070.Spec := by
  intro n
  simp only [A181296]

end A181296

/-! ## A181296.P14976210206420704847

`∑[2*A181300(n+1)]`
-/

namespace A181296.P14976210206420704847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181296.P14976210206420704847

namespace A181296

/-- `∑[2*A181300(n+1)]` -/
def P14976210206420704847.Spec : Prop :=
  ∀ n, P14976210206420704847.a n = A181296 n

end A181296

/-! ## A181296.P255249525174932519

`A181294(n)+a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A181296.P255249525174932519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A181294 n + a (n - 2)

end

end A181296.P255249525174932519

namespace A181296

/-- `A181294(n)+a(n-2)` -/
def P255249525174932519.Spec : Prop :=
  ∀ n, P255249525174932519.a n = A181296 n

end A181296

/-! ## A181296.P12860602413314070236

`A181290(n)-A181300(n)`
-/

namespace A181296.P12860602413314070236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181290 n - A181300 n

end

end A181296.P12860602413314070236

namespace A181296

/-- `A181290(n)-A181300(n)` -/
def P12860602413314070236.Spec : Prop :=
  ∀ n, P12860602413314070236.a n = A181296 n

end A181296

/-! ## A181296.P7927869053379689929

`A181300(n+1)+A054146(n)`
-/

namespace A181296.P7927869053379689929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181300 (n + 1) + A054146 n

end

end A181296.P7927869053379689929

namespace A181296

/-- `A181300(n+1)+A054146(n)` -/
def P7927869053379689929.Spec : Prop :=
  ∀ n, P7927869053379689929.a n = A181296 n

end A181296

/-! ## A181296.P2380771723642526664

`A181298(n)-2*A181300(n)`
-/

namespace A181296.P2380771723642526664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181298 n - 2 * A181300 n

end

end A181296.P2380771723642526664

namespace A181296

/-- `A181298(n)-2*A181300(n)` -/
def P2380771723642526664.Spec : Prop :=
  ∀ n, P2380771723642526664.a n = A181296 n

end A181296

/-! ## A181296.P7239350719527812474

`2*(A181290(n)-A181337(n))`
-/

namespace A181296.P7239350719527812474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A181290 n - A181337 n)

end

end A181296.P7239350719527812474

namespace A181296

/-- `2*(A181290(n)-A181337(n))` -/
def P7239350719527812474.Spec : Prop :=
  ∀ n, P7239350719527812474.a n = A181296 n

end A181296

/-! ## A181296.P16777532840372061420

`2*(A181337(n)-A181300(n))`
-/

namespace A181296.P16777532840372061420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A181337 n - A181300 n)

end

end A181296.P16777532840372061420

namespace A181296

/-- `2*(A181337(n)-A181300(n))` -/
def P16777532840372061420.Spec : Prop :=
  ∀ n, P16777532840372061420.a n = A181296 n

end A181296

/-! ## A181296.P12217546437749505268

`∑[record[2*A181300(A051162(n))]]`
-/

namespace A181296.P12217546437749505268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181300 (A051162 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181296.P12217546437749505268

namespace A181296

/-- `∑[record[2*A181300(A051162(n))]]` -/
def P12217546437749505268.Spec : Prop :=
  ∀ n, P12217546437749505268.a n = A181296 n

end A181296

/-! ## A181296.P7645274808882603969

`∑[record[2*A181300(A142150(n))]]`
-/

namespace A181296.P7645274808882603969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181300 (A142150 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181296.P7645274808882603969

namespace A181296

/-- `∑[record[2*A181300(A142150(n))]]` -/
def P7645274808882603969.Spec : Prop :=
  ∀ n, P7645274808882603969.a n = A181296 n

end A181296

/-! ## A181296.P17302381634218881743

`∑[record[2*A181300(A344180(n))]]`
-/

namespace A181296.P17302381634218881743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181300 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181296.P17302381634218881743

namespace A181296

/-- `∑[record[2*A181300(A344180(n))]]` -/
def P17302381634218881743.Spec : Prop :=
  ∀ n, P17302381634218881743.a n = A181296 n

end A181296

/-! ## A181296.P13621446209749383142

`A181305(n)+∑[A181300(n+1)]`
-/

namespace A181296.P13621446209749383142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181305 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181296.P13621446209749383142

namespace A181296

/-- `A181305(n)+∑[A181300(n+1)]` -/
def P13621446209749383142.Spec : Prop :=
  ∀ n, P13621446209749383142.a n = A181296 n

end A181296

/-! ## A181296.P2725485475514457695

`A181300(n+1)+∑[A181331(n)]`
-/

namespace A181296.P2725485475514457695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181300 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181296.P2725485475514457695

namespace A181296

/-- `A181300(n+1)+∑[A181331(n)]` -/
def P2725485475514457695.Spec : Prop :=
  ∀ n, P2725485475514457695.a n = A181296 n

end A181296

/-! ## A181296.P7031168930613045279

`∑[2*(A181331(n)-A181300(n))]`
-/

namespace A181296.P7031168930613045279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A181331 n - A181300 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181296.P7031168930613045279

namespace A181296

/-- `∑[2*(A181331(n)-A181300(n))]` -/
def P7031168930613045279.Spec : Prop :=
  ∀ n, P7031168930613045279.a n = A181296 n

end A181296

/-! ## A181296.P14138041341628492812

`A181326(log2(A011782(n)))+A181326(n)`
-/

namespace A181296.P14138041341628492812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181326 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat + A181326 n

end

end A181296.P14138041341628492812

namespace A181296

/-- `A181326(log2(A011782(n)))+A181326(n)` -/
def P14138041341628492812.Spec : Prop :=
  ∀ n, P14138041341628492812.a n = A181296 n

end A181296

/-! ## A181296.P14913287829264885135

`A181326(A028310(n)-1)+A181326(n)`
-/

namespace A181296.P14913287829264885135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181326 (A028310 n - 1).toNat + A181326 n

end

end A181296.P14913287829264885135

namespace A181296

/-- `A181326(A028310(n)-1)+A181326(n)` -/
def P14913287829264885135.Spec : Prop :=
  ∀ n, P14913287829264885135.a n = A181296 n

end A181296

/-! ## A181296.P12478719846935448236

`A181305(A005843(n)/2)+A181305(n)`
-/

namespace A181296.P12478719846935448236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181305 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A181305 n

end

end A181296.P12478719846935448236

namespace A181296

/-- `A181305(A005843(n)/2)+A181305(n)` -/
def P12478719846935448236.Spec : Prop :=
  ∀ n, P12478719846935448236.a n = A181296 n

end A181296

/-! ## A181296.P423068241036457481

`A181305(A005843(n)-n)+A181305(n)`
-/

namespace A181296.P423068241036457481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181305 (A005843 n - (n : ℤ)).toNat + A181305 n

end

end A181296.P423068241036457481

namespace A181296

/-- `A181305(A005843(n)-n)+A181305(n)` -/
def P423068241036457481.Spec : Prop :=
  ∀ n, P423068241036457481.a n = A181296 n

end A181296

/-! ## A181296.P2968088132625649283

`A181290(n)+A181290(n)-A181298(n)`
-/

namespace A181296.P2968088132625649283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181290 n + (A181290 n - A181298 n)

end

end A181296.P2968088132625649283

namespace A181296

/-- `A181290(n)+A181290(n)-A181298(n)` -/
def P2968088132625649283.Spec : Prop :=
  ∀ n, P2968088132625649283.a n = A181296 n

end A181296

/-! ## A181296.P3641462157941035346

`A054145(n)-a(n-1)` with `a(0)=0`
-/

namespace A181296.P3641462157941035346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A054145 n - a (n - 1)

end

end A181296.P3641462157941035346

namespace A181296

/-- `A054145(n)-a(n-1)` -/
def P3641462157941035346.Spec : Prop :=
  ∀ n, P3641462157941035346.a n = A181296 n

end A181296

/-!
# A181298: The number of even entries in all the 2-compositions of n. A 2-composition of n is a nonnegative matrix with two rows, such that each column has at least one nonzero entry and whose entries sum up to n.

The programs for A181298, the canonical program `A181298.P4944943515467020596` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181298 has offset 0).

The definition of A181298 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181337, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A181298.P4944943515467020596

`2*A181337(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A181298

/-- `2*A181337(n)` -/
def P4944943515467020596.Spec : Prop :=
  ∀ n, P4944943515467020596.a n = A181298 n

theorem P4944943515467020596.correct : P4944943515467020596.Spec := by
  intro n
  simp only [A181298]

end A181298

/-! ## A181298.P15059209967832824398

`A181300(n)+A181290(n)`
-/

namespace A181298.P15059209967832824398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181300 n + A181290 n

end

end A181298.P15059209967832824398

namespace A181298

/-- `A181300(n)+A181290(n)` -/
def P15059209967832824398.Spec : Prop :=
  ∀ n, P15059209967832824398.a n = A181298 n

end A181298

/-! ## A181298.P6963868238694730999

`A181300(n+2)-A003480(n)`
-/

namespace A181298.P6963868238694730999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181300 (n + 2) - A003480 n

end

end A181298.P6963868238694730999

namespace A181298

/-- `A181300(n+2)-A003480(n)` -/
def P6963868238694730999.Spec : Prop :=
  ∀ n, P6963868238694730999.a n = A181298 n

end A181298

/-! ## A181298.P7784660351532073755

`A181296(n)+2*A181300(n)`
-/

namespace A181298.P7784660351532073755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181296 n + 2 * A181300 n

end

end A181298.P7784660351532073755

namespace A181298

/-- `A181296(n)+2*A181300(n)` -/
def P7784660351532073755.Spec : Prop :=
  ∀ n, P7784660351532073755.a n = A181298 n

end A181298

/-! ## A181298.P18108294824506951833

`2*(A181305(n)+A181300(n))`
-/

namespace A181298.P18108294824506951833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A181305 n + A181300 n)

end

end A181298.P18108294824506951833

namespace A181298

/-- `2*(A181305(n)+A181300(n))` -/
def P18108294824506951833.Spec : Prop :=
  ∀ n, P18108294824506951833.a n = A181298 n

end A181298

/-! ## A181298.P12562969032459052596

`2*(A181290(n)-A181305(n))`
-/

namespace A181298.P12562969032459052596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A181290 n - A181305 n)

end

end A181298.P12562969032459052596

namespace A181298

/-- `2*(A181290(n)-A181305(n))` -/
def P12562969032459052596.Spec : Prop :=
  ∀ n, P12562969032459052596.a n = A181298 n

end A181298

/-! ## A181298.P5639981789995672001

`2*(A181331(n)+∑[A181300(n)])`
-/

namespace A181298.P5639981789995672001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A181331 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181298.P5639981789995672001

namespace A181298

/-- `2*(A181331(n)+∑[A181300(n)])` -/
def P5639981789995672001.Spec : Prop :=
  ∀ n, P5639981789995672001.a n = A181298 n

end A181298

/-! ## A181298.P13765171822665468974

`A181337(A005843(n)/2)+A181337(n)`
-/

namespace A181298.P13765171822665468974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181337 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A181337 n

end

end A181298.P13765171822665468974

namespace A181298

/-- `A181337(A005843(n)/2)+A181337(n)` -/
def P13765171822665468974.Spec : Prop :=
  ∀ n, P13765171822665468974.a n = A181298 n

end A181298

/-! ## A181298.P9744638537455599651

`A181337(A005843(n)-n)+A181337(n)`
-/

namespace A181298.P9744638537455599651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181337 (A005843 n - (n : ℤ)).toNat + A181337 n

end

end A181298.P9744638537455599651

namespace A181298

/-- `A181337(A005843(n)-n)+A181337(n)` -/
def P9744638537455599651.Spec : Prop :=
  ∀ n, P9744638537455599651.a n = A181298 n

end A181298

/-! ## A181298.P10058656051065234195

`A181290(n)+A181290(n)-A181296(n)`
-/

namespace A181298.P10058656051065234195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181290 n + (A181290 n - A181296 n)

end

end A181298.P10058656051065234195

namespace A181298

/-- `A181290(n)+A181290(n)-A181296(n)` -/
def P10058656051065234195.Spec : Prop :=
  ∀ n, P10058656051065234195.a n = A181298 n

end A181298

/-! ## A181298.P10662195268840515188

`Δ[A181305(n)]-A003480(n)`
-/

namespace A181298.P10662195268840515188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A003480 n

end

end A181298.P10662195268840515188

namespace A181298

/-- `Δ[A181305(n)]-A003480(n)` -/
def P10662195268840515188.Spec : Prop :=
  ∀ n, P10662195268840515188.a n = A181298 n

end A181298

/-! ## A181298.P14846536400734117158

`2*A181290(n)-A181296(n)`
-/

namespace A181298.P14846536400734117158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181290 n - A181296 n

end

end A181298.P14846536400734117158

namespace A181298

/-- `2*A181290(n)-A181296(n)` -/
def P14846536400734117158.Spec : Prop :=
  ∀ n, P14846536400734117158.a n = A181298 n

end A181298

/-! ## A181298.P15357857674813182092

`A181305(n+1)-(A181305(n)+A003480(n))`
-/

namespace A181298.P15357857674813182092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181305 (n + 1) - (A181305 n + A003480 n)

end

end A181298.P15357857674813182092

namespace A181298

/-- `A181305(n+1)-(A181305(n)+A003480(n))` -/
def P15357857674813182092.Spec : Prop :=
  ∀ n, P15357857674813182092.a n = A181298 n

end A181298

/-! ## A181298.P14126929654810766776

`A181337(A118759(n))+A181337(n)`
-/

namespace A181298.P14126929654810766776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181337 (A118759 n).toNat + A181337 n

end

end A181298.P14126929654810766776

namespace A181298

/-- `A181337(A118759(n))+A181337(n)` -/
def P14126929654810766776.Spec : Prop :=
  ∀ n, P14126929654810766776.a n = A181298 n

end A181298

