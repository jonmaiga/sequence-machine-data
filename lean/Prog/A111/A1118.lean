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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

/-!
# A111800: Order of the rote (rooted odd tree with only exponent symmetries) for n.

The programs for A111800, there is no canonical definition to state claims against.
-/

/-! ## A111800.P10755991409088762010

`2*A062537(n+1)+1`
-/

namespace A111800.P10755991409088762010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062537 (n + 1) + 1

end

end A111800.P10755991409088762010

/-! ## A111800.P4645031471051924227

`A005408(A062537(n+1))`
-/

namespace A111800.P4645031471051924227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A062537 (n + 1)).toNat

end

end A111800.P4645031471051924227

/-! ## A111800.P14222341442425381017

`A294748(A062537(n+1)+1)`
-/

namespace A111800.P14222341442425381017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294748 (A062537 (n + 1) + 1).toNat

end

end A111800.P14222341442425381017

/-! ## A111800.P16066586414645111981

`A199343(2*A062537(n+1))`
-/

namespace A111800.P16066586414645111981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 (2 * A062537 (n + 1)).toNat

end

end A111800.P16066586414645111981

/-! ## A111800.P17373286061520610046

`A008619(4*A062537(n+1))`
-/

namespace A111800.P17373286061520610046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * A062537 (n + 1)).toNat

end

end A111800.P17373286061520610046

/-! ## A111800.P13222781020880889783

`A166718(A062537(n+1)+1)+A062537(n+1)`
-/

namespace A111800.P13222781020880889783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166718 (A062537 (n + 1) + 1).toNat + A062537 (n + 1)

end

end A111800.P13222781020880889783

/-! ## A111800.P14352682558797508236

`A194967(A062537(n+1)+1)+A062537(n+1)`
-/

namespace A111800.P14352682558797508236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194967 (A062537 (n + 1) + 1).toNat + A062537 (n + 1)

end

end A111800.P14352682558797508236

/-! ## A111800.P7195323879124322493

`A229621(A062537(n+1)+2)+A062537(n+1)`
-/

namespace A111800.P7195323879124322493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229621 (A062537 (n + 1) + 2).toNat + A062537 (n + 1)

end

end A111800.P7195323879124322493

/-! ## A111800.P1445782952792280970

`A062537(A000040(n+1))+A062537(n+1)`
-/

namespace A111800.P1445782952792280970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062537 (A000040 (n + 1)).toNat + A062537 (n + 1)

end

end A111800.P1445782952792280970

/-! ## A111800.P13455509600962837221

`A062537(A008864(n+1)-1)+A062537(n+1)`
-/

namespace A111800.P13455509600962837221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062537 (A008864 (n + 1) - 1).toNat + A062537 (n + 1)

end

end A111800.P13455509600962837221

/-!
# A111801: Numbers that have a positive primal code characteristic, that is, positive integers j for which A108352(j) > 0.

The programs for A111801, there is no canonical definition to state claims against.
-/

/-! ## A111801.P9594032416865557559

`comp[A108370(n+1)-1]+1`
-/

namespace A111801.P9594032416865557559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108370 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A111801.P9594032416865557559

/-! ## A111801.P2704498915562818680

`comp[A023443(A108370(n+1))]+1`
-/

namespace A111801.P2704498915562818680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A108370 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A111801.P2704498915562818680

/-! ## A111801.P10492959096436719255

`eq[char[A108370(n+1)], A048298(n+2)]`
-/

namespace A111801.P10492959096436719255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108370 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A111801.P10492959096436719255

/-! ## A111801.P10766360367417199917

`lt[A234046(A034444(2*(n+2))), A108352(n+1)]+1`
-/

namespace A111801.P10766360367417199917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234046 (A034444 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108352 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A111801.P10766360367417199917

/-! ## A111801.P3045344004597362672

`lt[A108352(A108370(n+1)), A108352(n+1)]+1`
-/

namespace A111801.P3045344004597362672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108352 (A108370 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108352 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A111801.P3045344004597362672

/-!
# A111802: n^2-n-1 for n>3; a(1)=1; a(2)=2; a(3)=3.

The programs for A111802, the canonical program `A111802.P2839788502374890213` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111802 has offset 1).

The definition of A111802 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111802.P2839788502374890213

`∑[a(n-1)+2]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=8, a(4)=8`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A111802

/-- `∑[a(n-1)+2]` -/
def P2839788502374890213.Spec : Prop :=
  ∀ n, (P2839788502374890213.a n : ℤ) = A111802 (n + 1)

theorem P2839788502374890213.correct : P2839788502374890213.Spec := by
  intro n
  simp only [A111802, Nat.add_sub_cancel]

end A111802

/-! ## A111802.P16138121928245341761

`a(n-1)+2*n` with `a(0)=1, a(1)=2, a(2)=3, a(3)=11`
-/

namespace A111802.P16138121928245341761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 11] fun n a =>
  a (n - 1) + 2 * n

end

end A111802.P16138121928245341761

namespace A111802

/-- `a(n-1)+2*n` -/
def P16138121928245341761.Spec : Prop :=
  ∀ n, (P16138121928245341761.a n : ℤ) = A111802 (n + 1)

end A111802

/-! ## A111802.P12651979709014649196

`a(n-1)+n+n` with `a(0)=1, a(1)=2, a(2)=3, a(3)=11`
-/

namespace A111802.P12651979709014649196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 11] fun n a =>
  a (n - 1) + n + n

end

end A111802.P12651979709014649196

namespace A111802

/-- `a(n-1)+n+n` -/
def P12651979709014649196.Spec : Prop :=
  ∀ n, (P12651979709014649196.a n : ℤ) = A111802 (n + 1)

end A111802

/-! ## A111802.P11732219067144468974

`∑[2*n]-a(n-1)%2` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A111802.P11732219067144468974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - Int.tmod (a (n - 1)) 2

end

end A111802.P11732219067144468974

namespace A111802

/-- `∑[2*n]-a(n-1)%2` -/
def P11732219067144468974.Spec : Prop :=
  ∀ n, P11732219067144468974.a n = A111802 (n + 1)

end A111802

/-! ## A111802.P429364368870373711

`∑[2*n]-gcd(2, a(n-1))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A111802.P429364368870373711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Int.gcd 2 (a (n - 1)) : ℤ)

end

end A111802.P429364368870373711

namespace A111802

/-- `∑[2*n]-gcd(2, a(n-1))` -/
def P429364368870373711.Spec : Prop :=
  ∀ n, P429364368870373711.a n = A111802 (n + 1)

end A111802

/-! ## A111802.P12181297793947450158

`n²-(1-n)%a(n-1)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A111802.P12181297793947450158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  (n ^ 2 : ℤ) - Int.tmod (1 - (n : ℤ)) (a (n - 1))

end

end A111802.P12181297793947450158

namespace A111802

/-- `n²-(1-n)%a(n-1)` -/
def P12181297793947450158.Spec : Prop :=
  ∀ n, P12181297793947450158.a n = A111802 (n + 1)

end A111802

/-! ## A111802.P679286846818575841

`A004275(∑[n]-char[2])+1`
-/

namespace A111802.P679286846818575841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (∑ j ∈ Finset.range (n + 1), f1 j - (if ∃ j, f2 j = n then 1 else 0)) + 1

end

end A111802.P679286846818575841

namespace A111802

/-- `A004275(∑[n]-char[2])+1` -/
def P679286846818575841.Spec : Prop :=
  ∀ n, P679286846818575841.a n = A111802 (n + 1)

end A111802

/-! ## A111802.P7496052932150963504

`A104731(A054254(n+1))`
-/

namespace A111802.P7496052932150963504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104731 (A054254 (n + 1)).toNat

end

end A111802.P7496052932150963504

namespace A111802

/-- `A104731(A054254(n+1))` -/
def P7496052932150963504.Spec : Prop :=
  ∀ n, P7496052932150963504.a n = A111802 (n + 1)

end A111802

/-! ## A111802.P17398432785565460311

`A265412(A265409(n²+1))+n`
-/

namespace A111802.P17398432785565460311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265412 (A265409 (n ^ 2 + 1)).toNat + (n : ℤ)

end

end A111802.P17398432785565460311

namespace A111802

/-- `A265412(A265409(n²+1))+n` -/
def P17398432785565460311.Spec : Prop :=
  ∀ n, P17398432785565460311.a n = A111802 (n + 1)

end A111802

/-! ## A111802.P5274329012249706850

`A002378(n)-A020513(A002378(n))`
-/

namespace A111802.P5274329012249706850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n - A020513 (A002378 n).toNat

end

end A111802.P5274329012249706850

namespace A111802

/-- `A002378(n)-A020513(A002378(n))` -/
def P5274329012249706850.Spec : Prop :=
  ∀ n, P5274329012249706850.a n = A111802 (n + 1)

end A111802

/-!
# A111805: Number triangle T(n,k)=binomial(2(n+k),4k).

The programs for A111805, the canonical program `A111805.P16702196503719962859` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111805 has offset 0).

The definition of A111805 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111805.P16702196503719962859

`A085478(∑[char[∑[n+1]]]²+2*n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A111805

/-- `A085478(∑[char[∑[n+1]]]²+2*n)` -/
def P16702196503719962859.Spec : Prop :=
  ∀ n, P16702196503719962859.a n = A111805 n

theorem P16702196503719962859.correct : P16702196503719962859.Spec := by
  intro n
  simp only [A111805]

end A111805

/-! ## A111805.P7493446816737365682

`A165253(∑[char[∑[n]]]²+2*n)`
-/

namespace A111805.P7493446816737365682
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165253 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 2 * n)

end

end A111805.P7493446816737365682

namespace A111805

/-- `A165253(∑[char[∑[n]]]²+2*n)` -/
def P7493446816737365682.Spec : Prop :=
  ∀ n, P7493446816737365682.a n = A111805 n

end A111805

/-! ## A111805.P6950074056448920362

`A109446(2*A245300(n))`
-/

namespace A111805.P6950074056448920362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109446 (2 * A245300 n).toNat

end

end A111805.P6950074056448920362

namespace A111805

/-- `A109446(2*A245300(n))` -/
def P6950074056448920362.Spec : Prop :=
  ∀ n, P6950074056448920362.a n = A111805 n

end A111805

/-! ## A111805.P3165622359038519225

`A123970(eq[0, A155998(n)])`
-/

namespace A111805.P3165622359038519225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123970 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111805.P3165622359038519225

namespace A111805

/-- `A123970(eq[0, A155998(n)])` -/
def P3165622359038519225.Spec : Prop :=
  ∀ n, P3165622359038519225.a n = A111805 n

end A111805

/-! ## A111805.P12995782901990629992

`A129818(eq[0, A155998(n)])`
-/

namespace A111805.P12995782901990629992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129818 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111805.P12995782901990629992

namespace A111805

/-- `A129818(eq[0, A155998(n)])` -/
def P12995782901990629992.Spec : Prop :=
  ∀ n, P12995782901990629992.a n = A111805 n

end A111805

/-! ## A111805.P4797405148708617705

`A034839(2*A245300(n))`
-/

namespace A111805.P4797405148708617705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034839 (2 * A245300 n).toNat

end

end A111805.P4797405148708617705

namespace A111805

/-- `A034839(2*A245300(n))` -/
def P4797405148708617705.Spec : Prop :=
  ∀ n, P4797405148708617705.a n = A111805 n

end A111805

/-! ## A111805.P15474739758430664975

`A034839(A214661(n+1)-1)`
-/

namespace A111805.P15474739758430664975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034839 (A214661 (n + 1) - 1).toNat

end

end A111805.P15474739758430664975

namespace A111805

/-- `A034839(A214661(n+1)-1)` -/
def P15474739758430664975.Spec : Prop :=
  ∀ n, P15474739758430664975.a n = A111805 n

end A111805

/-! ## A111805.P13986659364343326121

`A034839(xor(1, A214661(n+1)))`
-/

namespace A111805.P13986659364343326121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034839 (Int.xor 1 (A214661 (n + 1))).toNat

end

end A111805.P13986659364343326121

namespace A111805

/-- `A034839(xor(1, A214661(n+1)))` -/
def P13986659364343326121.Spec : Prop :=
  ∀ n, P13986659364343326121.a n = A111805 n

end A111805

/-! ## A111805.P16826106545151742293

`A098925(2*A292564(n))`
-/

namespace A111805.P16826106545151742293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098925 (2 * A292564 n).toNat

end

end A111805.P16826106545151742293

namespace A111805

/-- `A098925(2*A292564(n))` -/
def P16826106545151742293.Spec : Prop :=
  ∀ n, P16826106545151742293.a n = A111805 n

end A111805

/-!
# A111806: Riordan array (1/(1+3x+2x^2),x/(1+3x+2x^2)).

The programs for A111806, there is no canonical definition to state claims against.
-/

/-! ## A111806.P17560750100246159827

`A097807(n)*A110441(n)`
-/

namespace A111806.P17560750100246159827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A110441 n

end

end A111806.P17560750100246159827

/-! ## A111806.P4238458801897270450

`A033999(A051933(n))*A110441(n)`
-/

namespace A111806.P4238458801897270450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A051933 n).toNat * A110441 n

end

end A111806.P4238458801897270450

/-! ## A111806.P7499081221877098873

`A009531(A099375(n))*A110441(n)`
-/

namespace A111806.P7499081221877098873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A099375 n).toNat * A110441 n

end

end A111806.P7499081221877098873

/-! ## A111806.P4017704704999445049

`A033999(A201651(n))*A110441(n)`
-/

namespace A111806.P4017704704999445049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A201651 n).toNat * A110441 n

end

end A111806.P4017704704999445049

/-! ## A111806.P2317717756136726435

`A062157(A004736(n+1))*A110441(n)`
-/

namespace A111806.P2317717756136726435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A004736 (n + 1)).toNat * A110441 n

end

end A111806.P2317717756136726435

/-! ## A111806.P9750161905678332014

`A033999(A063656(n))*A110441(n)`
-/

namespace A111806.P9750161905678332014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A063656 n).toNat * A110441 n

end

end A111806.P9750161905678332014

/-! ## A111806.P2972739467858032281

`A110441(n)*A158388(A210869(n+1))`
-/

namespace A111806.P2972739467858032281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110441 n * A158388 (A210869 (n + 1)).toNat

end

end A111806.P2972739467858032281

/-! ## A111806.P11738677480360032868

`A008836(A130321(n))*A110441(n)`
-/

namespace A111806.P11738677480360032868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A130321 n).toNat * A110441 n

end

end A111806.P11738677480360032868

/-! ## A111806.P12025268911968325215

`A020985(A130330(n))*A110441(n)`
-/

namespace A111806.P12025268911968325215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A130330 n).toNat * A110441 n

end

end A111806.P12025268911968325215

/-!
# A111807: a(n) = maximal value in row n of A111804.

The programs for A111807, there is no canonical definition to state claims against.
-/

/-! ## A111807.P10927271434961989293

`lcm(A053585(n+1), A060502(A174192(n)))`
-/

namespace A111807.P10927271434961989293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A053585 (n + 1)) (A060502 (A174192 n).toNat)

end

end A111807.P10927271434961989293

/-!
# A111808: Left half of trinomial triangle (A027907), triangle read by rows.

The programs for A111808, there is no canonical definition to state claims against.
-/

/-! ## A111808.P9714132687854830020

`A094531(A061579(n))`
-/

namespace A111808.P9714132687854830020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094531 (A061579 n).toNat

end

end A111808.P9714132687854830020

/-! ## A111808.P5385555159879174079

`A027907(A063656(n))`
-/

namespace A111808.P5385555159879174079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (A063656 n).toNat

end

end A111808.P5385555159879174079

/-! ## A111808.P11733180995795294151

`A169623(A292564(n))`
-/

namespace A111808.P11733180995795294151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 (A292564 n).toNat

end

end A111808.P11733180995795294151

/-! ## A111808.P3184336707653663032

`A027907(eq[0, A023969(n)])`
-/

namespace A111808.P3184336707653663032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111808.P3184336707653663032

/-! ## A111808.P6010063801550716154

`A027907(eq[1, A267708(n)])`
-/

namespace A111808.P6010063801550716154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111808.P6010063801550716154

/-! ## A111808.P11197320856434310693

`A027907(2*n-A051162(n))`
-/

namespace A111808.P11197320856434310693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 ((2 * n : ℤ) - A051162 n).toNat

end

end A111808.P11197320856434310693

/-! ## A111808.P761089736097845449

`A027907(n-A051162(n)+n)`
-/

namespace A111808.P761089736097845449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 ((n : ℤ) - A051162 n + (n : ℤ)).toNat

end

end A111808.P761089736097845449

/-! ## A111808.P10066480720292552672

`A027907(n-(A051162(n)-n))`
-/

namespace A111808.P10066480720292552672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 ((n : ℤ) - (A051162 n - (n : ℤ))).toNat

end

end A111808.P10066480720292552672

/-! ## A111808.P16116088839407876733

`A027907(A061885(n)-A003056(n))`
-/

namespace A111808.P16116088839407876733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (A061885 n - A003056 n).toNat

end

end A111808.P16116088839407876733

/-! ## A111808.P5304407576762154206

`A082601(A245300(n))`
-/

namespace A111808.P5304407576762154206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (A245300 n).toNat

end

end A111808.P5304407576762154206

/-! ## A111808.P10447883755792968120

`A169623(lt[A063826(2*n), 2])`
-/

namespace A111808.P10447883755792968120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063826 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A111808.P10447883755792968120

/-!
# A111809: Triangle read by rows: for T(n,k), 1<=k<=n, gcd(k,n)=1, consider all representations of k/n as an Egyptian fraction; T(n,k) = minimal value of sum of denominators.

The programs for A111809, there is no canonical definition to state claims against.
-/

/-! ## A111809.P16352682021213757762

`A100869(n)/a(floor(acot(n)))` with `a(0)=1`
-/

namespace A111809.P16352682021213757762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A100869 n : ℚ) / a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A111809.P16352682021213757762

/-! ## A111809.P11219870149021275986

`A100869(n*a(A000038(n)))` with `a(0)=1`
-/

namespace A111809.P11219870149021275986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A100869 ((n : ℤ) * a (A000038 n).toNat).toNat

end

end A111809.P11219870149021275986

/-! ## A111809.P4645582146276306856

`A100869(n/a(A000038(n)))` with `a(0)=1`
-/

namespace A111809.P4645582146276306856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A100869 (SequenceMachineLib.roundAway ((n : ℚ) / (a (A000038 n).toNat : ℚ))).toNat

end

end A111809.P4645582146276306856

/-! ## A111809.P15776368143254645477

`A100869(A028310(n))-floor(acot(n))`
-/

namespace A111809.P15776368143254645477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100869 (A028310 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A111809.P15776368143254645477

/-! ## A111809.P5479637806707722687

`A100869(A000038(a(n-1))+n)` with `a(0)=1`
-/

namespace A111809.P5479637806707722687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A100869 (A000038 (a (n - 1)).toNat + (n : ℤ)).toNat

end

end A111809.P5479637806707722687

/-! ## A111809.P17707394399748983017

`A100869(n)%A274381(a(n-1))` with `a(0)=1`
-/

namespace A111809.P17707394399748983017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A100869 n) (A274381 (a (n - 1)).toNat)

end

end A111809.P17707394399748983017

/-! ## A111809.P3795132870975625892

`A100869(A028310(n))-∏{d}[n, A001222(#)]`
-/

namespace A111809.P3795132870975625892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100869 (A028310 n).toNat - ∏ d ∈ Nat.divisors (f1 n), A001222 d

end

end A111809.P3795132870975625892

/-! ## A111809.P12165340378840127769

`A100869(A028310(n))-A008683((n+1)²)`
-/

namespace A111809.P12165340378840127769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100869 (A028310 n).toNat - A008683 ((n + 1) ^ 2)

end

end A111809.P12165340378840127769

/-! ## A111809.P12559426361337332344

`A100869(A028310(n))^(A000040(n+1)%2)`
-/

namespace A111809.P12559426361337332344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100869 (A028310 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A111809.P12559426361337332344

/-! ## A111809.P12655303615150473918

`A100869(A000038(n)²+n)%A000040(n+2)`
-/

namespace A111809.P12655303615150473918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100869 (A000038 n ^ 2 + (n : ℤ)).toNat) (A000040 (n + 2))

end

end A111809.P12655303615150473918

/-!
# A111810: Matrix log of triangle A098539, which shifts columns left and up under matrix square; these terms are the result of multiplying each element in row n and column k by (n-k)!.

The programs for A111810, there is no canonical definition to state claims against.
-/

/-! ## A111810.P10198959032851836307

`A059268(n)*A111811(A025581(n))`
-/

namespace A111810.P10198959032851836307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A111811 (A025581 n).toNat

end

end A111810.P10198959032851836307

/-!
# A111811: Column 0 of the matrix logarithm (A111810) of triangle A098539, which shifts columns left and up under matrix square; these terms are the result of multiplying the element in row n by n!.

The programs for A111811, there is no canonical definition to state claims against.
-/

/-! ## A111811.P5780126827945571630

`A111810(∑[n])`
-/

namespace A111811.P5780126827945571630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111810 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111811.P5780126827945571630

/-! ## A111811.P2548287988828858816

`(∑{digits}[n, 10^#]%9)!*A111810(n*(n+1)/2)`
-/

namespace A111811.P2548287988828858816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum % 9) : ℤ) * A111810 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat

end

end A111811.P2548287988828858816

/-! ## A111811.P1160453278278969309

`and(-1, A111810(A000217(n)))`
-/

namespace A111811.P1160453278278969309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A111810 (A000217 n).toNat)

end

end A111811.P1160453278278969309

/-! ## A111811.P12086919041492429671

`A054977(n)*A111810(n*(n+1)/2)`
-/

namespace A111811.P12086919041492429671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A111810 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat

end

end A111811.P12086919041492429671

/-! ## A111811.P16936730848407072625

`A111810(A000217(n))+A025466(n)`
-/

namespace A111811.P16936730848407072625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111810 (A000217 n).toNat + A025466 n

end

end A111811.P16936730848407072625

/-!
# A111812: Column 3 of triangle A098539, which shifts columns left and up under matrix square.

The programs for A111812, there is no canonical definition to state claims against.
-/

/-! ## A111812.P190571722415594470

`Δ[A125794(n)-A125793(n)]`
-/

namespace A111812.P190571722415594470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125794 n - A125793 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111812.P190571722415594470

/-! ## A111812.P16138185127633186285

`Δ[A002449(n+2)-1-A125793(n)]`
-/

namespace A111812.P16138185127633186285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002449 (n + 2) - 1 - A125793 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111812.P16138185127633186285

/-! ## A111812.P14244771335176077631

`Δ[Δ[A002577(n+1)]-1-A125793(n)]`
-/

namespace A111812.P14244771335176077631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002577 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1 - A125793 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111812.P14244771335176077631

/-! ## A111812.P584472390417783410

`Δ[A125794(n)-A078121(A133263(n+2))]`
-/

namespace A111812.P584472390417783410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125794 n - A078121 (A133263 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111812.P584472390417783410

/-! ## A111812.P8340210090855298750

`Δ[A125794(n)-A125790(A167614(n+2))]`
-/

namespace A111812.P8340210090855298750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125794 n - A125790 (A167614 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111812.P8340210090855298750

/-!
# A111813: Matrix log of triangle A078121, which shifts columns left and up under matrix square; these terms are the result of multiplying each element in row n and column k by (n-k)!.

The programs for A111813, there is no canonical definition to state claims against.
-/

/-! ## A111813.P13441633036535294251

`A059268(n)*A111814(A025581(n))`
-/

namespace A111813.P13441633036535294251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A111814 (A025581 n).toNat

end

end A111813.P13441633036535294251

/-! ## A111813.P16581221115280102255

`A016424(A126953(n))*A130127(n+1)`
-/

namespace A111813.P16581221115280102255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016424 (A126953 n).toNat * A130127 (n + 1)

end

end A111813.P16581221115280102255

/-! ## A111813.P1528570193044590566

`A230204(A330522(n+2))`
-/

namespace A111813.P1528570193044590566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230204 (A330522 (n + 2)).toNat

end

end A111813.P1528570193044590566

/-! ## A111813.P13486867623017562373

`A270655(and(A270661(2*n), A270668(n+1)))`
-/

namespace A111813.P13486867623017562373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270655 (Int.land (A270661 (2 * n)) (A270668 (n + 1))).toNat

end

end A111813.P13486867623017562373

/-! ## A111813.P10064726999238975497

`A000005(A124296(n))*A124304(n+1)`
-/

namespace A111813.P10064726999238975497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A124296 n).toNat * A124304 (n + 1)

end

end A111813.P10064726999238975497

/-!
# A111814: Column 0 of the matrix logarithm (A111813) of triangle A078121, which shifts columns left and up under matrix square; these terms are the result of multiplying the element in row n by n!.

The programs for A111814, there is no canonical definition to state claims against.
-/

/-! ## A111814.P5490595601852316947

`A111813(or(∑[n], A111810(n)))`
-/

namespace A111814.P5490595601852316947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111813 (Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A111810 n)).toNat

end

end A111814.P5490595601852316947

/-! ## A111814.P874872623356081529

`A111813(or(∑[n], A111848(n)))`
-/

namespace A111814.P874872623356081529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111813 (Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A111848 n)).toNat

end

end A111814.P874872623356081529

/-!
# A111816: Column 0 of the matrix logarithm (A111815) of triangle A078122, which shifts columns left and up under matrix cube; these terms are the result of multiplying the element in row n by n!.

The programs for A111816, there is no canonical definition to state claims against.
-/

/-! ## A111816.P229712668680623268

`A111815(∑[n])`
-/

namespace A111816.P229712668680623268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111815 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111816.P229712668680623268

/-! ## A111816.P6088428444961418288

`and(-1, A111815(A000217(n)))`
-/

namespace A111816.P6088428444961418288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A111815 (A000217 n).toNat)

end

end A111816.P6088428444961418288

/-! ## A111816.P8655465853272944133

`and(-1, A111815(A109811(n+1)))`
-/

namespace A111816.P8655465853272944133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A111815 (A109811 (n + 1)).toNat)

end

end A111816.P8655465853272944133

/-! ## A111816.P6856325567712216027

`A111815(C(n+1, 2))*A214268(n)`
-/

namespace A111816.P6856325567712216027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111815 (Nat.choose (n + 1) 2) * A214268 n

end

end A111816.P6856325567712216027

/-! ## A111816.P10595888960479919883

`A111815(n²-C(n, 2))*A214268(n)`
-/

namespace A111816.P10595888960479919883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111815 (n ^ 2 - Nat.choose n 2) * A214268 n

end

end A111816.P10595888960479919883

/-!
# A111817: Number of partitions of 3*4^n into powers of 4, also equals column 1 of triangle A078536, which shifts columns left and up under matrix 4th power.

The programs for A111817, there is no canonical definition to state claims against.
-/

/-! ## A111817.P12604919328916405480

`record[ratio[A078536(n)]]`
-/

namespace A111817.P12604919328916405480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078536 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111817.P12604919328916405480

/-! ## A111817.P10290409135458556830

`A078536(∑[n+1]+1)`
-/

namespace A111817.P10290409135458556830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078536 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A111817.P10290409135458556830

/-! ## A111817.P13470100431159250705

`record[A078536(∑[A057979(n)])]`
-/

namespace A111817.P13470100431159250705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078536 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111817.P13470100431159250705

/-! ## A111817.P14401490464099803971

`record[A078536(n+2)/A039817(n+1)]`
-/

namespace A111817.P14401490464099803971
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078536 (n + 2) : ℚ) / (A039817 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111817.P14401490464099803971

/-! ## A111817.P8399761234797734903

`record[A078536(n+2)/A134546(n+1)]`
-/

namespace A111817.P8399761234797734903
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078536 (n + 2) : ℚ) / (A134546 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111817.P8399761234797734903

/-!
# A111819: Column 0 of the matrix logarithm (A111818) of triangle A078536, which shifts columns left and up under matrix 4th power; these terms are the result of multiplying the element in row n by n!.

The programs for A111819, there is no canonical definition to state claims against.
-/

/-! ## A111819.P13954729386466124841

`A111818(∑[n])`
-/

namespace A111819.P13954729386466124841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111818 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111819.P13954729386466124841

/-! ## A111819.P8230273608527421628

`C(2, C(2, n²))*A111818(A000217(n))`
-/

namespace A111819.P8230273608527421628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (Nat.choose 2 (n ^ 2)) : ℤ) * A111818 (A000217 n).toNat

end

end A111819.P8230273608527421628

/-! ## A111819.P6050818633526415934

`A184945(n)+A111818(A000217(n))`
-/

namespace A111819.P6050818633526415934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184945 n + A111818 (A000217 n).toNat

end

end A111819.P6050818633526415934

/-! ## A111819.P2647540726407907068

`A000041(C(2, n+1))*A111818(A000217(n))`
-/

namespace A111819.P2647540726407907068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 1)) * A111818 (A000217 n).toNat

end

end A111819.P2647540726407907068

/-! ## A111819.P4849940545569028519

`A111818(A000217(n))/A007318(A001222(n+1))`
-/

namespace A111819.P4849940545569028519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111818 (A000217 n).toNat : ℚ) / (A007318 (A001222 (n + 1)).toNat : ℚ)

end

end A111819.P4849940545569028519

/-!
# A111821: Number of partitions of 4*5^n into powers of 5, also equals column 1 of triangle A111820, which shifts columns left and up under matrix 5th power.

The programs for A111821, there is no canonical definition to state claims against.
-/

/-! ## A111821.P12127474744820679626

`record[ratio[A111820(n)]]`
-/

namespace A111821.P12127474744820679626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111820 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111821.P12127474744820679626

/-! ## A111821.P14403062007953859967

`record[A111820(∑[∑{e}[n, #]])]`
-/

namespace A111821.P14403062007953859967
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111820 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111821.P14403062007953859967

/-! ## A111821.P12980897255555425311

`A111820(∑[n+1]+1)`
-/

namespace A111821.P12980897255555425311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111820 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A111821.P12980897255555425311

/-!
# A111822: Number of partitions of 5^n into powers of 5, also equals the row sums of triangle A111820, which shifts columns left and up under matrix 5th power.

The programs for A111822, there is no canonical definition to state claims against.
-/

/-! ## A111822.P3076717630549136173

`A145515(eq[5, A025581(n)])`
-/

namespace A111822.P3076717630549136173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111822.P3076717630549136173

/-! ## A111822.P17330774546349952318

`A145515(eq[6, A195663(n)])`
-/

namespace A111822.P17330774546349952318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111822.P17330774546349952318

/-! ## A111822.P587175032979882537

`A145515(eq[11, A099375(n)])`
-/

namespace A111822.P587175032979882537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111822.P587175032979882537

/-! ## A111822.P7873651710836909403

`A145515(eq[6, A004736(n+1)])`
-/

namespace A111822.P7873651710836909403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111822.P7873651710836909403

/-! ## A111822.P3396652776352562364

`A145515(eq[7, A027293(n+1)])`
-/

namespace A111822.P3396652776352562364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111822.P3396652776352562364

/-!
# A111824: Column 0 of the matrix logarithm (A111823) of triangle A111820, which shifts columns left and up under matrix 5th power; these terms are the result of multiplying the element in row n by n!.

The programs for A111824, there is no canonical definition to state claims against.
-/

/-! ## A111824.P885581297760392635

`A111823(∑[n])`
-/

namespace A111824.P885581297760392635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111823 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111824.P885581297760392635

/-! ## A111824.P5867687533252972246

`A111823(A000217(n))+A102683(n)`
-/

namespace A111824.P5867687533252972246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111823 (A000217 n).toNat + A102683 n

end

end A111824.P5867687533252972246

/-! ## A111824.P4809590962576286118

`A111823(A000217(n))%A111832(n)`
-/

namespace A111824.P4809590962576286118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111823 (A000217 n).toNat) (A111832 n)

end

end A111824.P4809590962576286118

/-! ## A111824.P6619651913785651022

`or(A111823(A000217(n)), A268643(n))`
-/

namespace A111824.P6619651913785651022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A111823 (A000217 n).toNat) (A268643 n)

end

end A111824.P6619651913785651022

/-! ## A111824.P9980978109045547952

`A111851(n+1)+A111823(A000217(n))`
-/

namespace A111824.P9980978109045547952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111851 (n + 1) + A111823 (A000217 n).toNat

end

end A111824.P9980978109045547952

/-!
# A111825: Triangle P, read by rows, that satisfies [P^6](n,k) = P(n+1,k+1) for n>=k>=0, also [P^(6*m)](n,k) = [P^m](n+1,k+1) for all m, where [P^m](n,k) denotes the element at row n, column k, of the matrix power m of P, with P(0,k)=1 and P(k,k)=1 for all k>=0.

The programs for A111825, there is no canonical definition to state claims against.
-/

/-! ## A111825.P16506849278108983815

`A274213(A274208(n)*A278917(n))`
-/

namespace A111825.P16506849278108983815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274213 (A274208 n * A278917 n).toNat

end

end A111825.P16506849278108983815

/-! ## A111825.P2522999229055091606

`A274213(A274208(n)*A278918(n))`
-/

namespace A111825.P2522999229055091606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274213 (A274208 n * A278918 n).toNat

end

end A111825.P2522999229055091606

/-! ## A111825.P11611508066360974441

`A006047(A000110(n))^A004197(n)`
-/

namespace A111825.P11611508066360974441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006047 (A000110 n).toNat : ℚ) ^ (A004197 n : ℤ)

end

end A111825.P11611508066360974441

/-! ## A111825.P4250452422150020565

`A156584(n)*A297733(A032563(n+1))`
-/

namespace A111825.P4250452422150020565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156584 n * A297733 (A032563 (n + 1)).toNat

end

end A111825.P4250452422150020565

/-! ## A111825.P8247292040283705724

`A126150(A184536(3*n+4)%A144186(n))`
-/

namespace A111825.P8247292040283705724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126150 (Int.tmod (A184536 (3 * n + 4)) (A144186 n)).toNat

end

end A111825.P8247292040283705724

/-!
# A111826: Number of partitions of 5*6^n into powers of 6, also equals column 1 of triangle A111825, which shifts columns left and up under matrix 6th power.

The programs for A111826, there is no canonical definition to state claims against.
-/

/-! ## A111826.P14714876791584737596

`record[ratio[A111825(n)]]`
-/

namespace A111826.P14714876791584737596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111825 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111826.P14714876791584737596

/-! ## A111826.P2637300219633747425

`record[A111825(∑[∑{e}[n, #]])]`
-/

namespace A111826.P2637300219633747425
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111825 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111826.P2637300219633747425

/-! ## A111826.P1864852157539788558

`A111825(∑[n+1]+1)`
-/

namespace A111826.P1864852157539788558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111825 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A111826.P1864852157539788558

/-!
# A111827: Number of partitions of 6^n into powers of 6, also equals the row sums of triangle A111825, which shifts columns left and up under matrix 6th power.

The programs for A111827, there is no canonical definition to state claims against.
-/

/-! ## A111827.P6772399175292567421

`A145515(A056121(n)+21)`
-/

namespace A111827.P6772399175292567421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145515 (A056121 n + 21).toNat

end

end A111827.P6772399175292567421

/-! ## A111827.P13324573315177986378

`A145515(eq[6, A025581(n)])`
-/

namespace A111827.P13324573315177986378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111827.P13324573315177986378

/-! ## A111827.P13290281873225481190

`A145515(eq[7, A195663(n)])`
-/

namespace A111827.P13290281873225481190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111827.P13290281873225481190

/-! ## A111827.P14604788137938696263

`A145515(eq[64, A130321(n)])`
-/

namespace A111827.P14604788137938696263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111827.P14604788137938696263

/-! ## A111827.P8804589336691035939

`A145515(eq[7, A004736(n+1)])`
-/

namespace A111827.P8804589336691035939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111827.P8804589336691035939

/-!
# A111829: Column 0 of the matrix logarithm (A111828) of triangle A111825, which shifts columns left and up under matrix 6th power; these terms are the result of multiplying the element in row n by n!.

The programs for A111829, there is no canonical definition to state claims against.
-/

/-! ## A111829.P999632101644087397

`A111828(∑[n])`
-/

namespace A111829.P999632101644087397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111828 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111829.P999632101644087397

/-! ## A111829.P14881793898854977574

`A111828(A000217(n))+A102683(n)`
-/

namespace A111829.P14881793898854977574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111828 (A000217 n).toNat + A102683 n

end

end A111829.P14881793898854977574

/-! ## A111829.P13554671682205530966

`A111828(A000217(n))%A111826(n)`
-/

namespace A111829.P13554671682205530966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111828 (A000217 n).toNat) (A111826 n)

end

end A111829.P13554671682205530966

/-! ## A111829.P6622854670334122138

`or(A111828(A000217(n)), A268643(n))`
-/

namespace A111829.P6622854670334122138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A111828 (A000217 n).toNat) (A268643 n)

end

end A111829.P6622854670334122138

/-! ## A111829.P13762179562141681895

`A111851(n+1)+A111828(A000217(n))`
-/

namespace A111829.P13762179562141681895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111851 (n + 1) + A111828 (A000217 n).toNat

end

end A111829.P13762179562141681895

/-!
# A111830: Triangle P, read by rows, that satisfies [P^7](n,k) = P(n+1,k+1) for n>=k>=0, also [P^(7*m)](n,k) = [P^m](n+1,k+1) for all m, where [P^m](n,k) denotes the element at row n, column k, of the matrix power m of P, with P(0,k)=1 and P(k,k)=1 for all k>=0.

The programs for A111830, there is no canonical definition to state claims against.
-/

/-! ## A111830.P7536744293465523338

`A054576(A344489(n)+A000051(n))`
-/

namespace A111830.P7536744293465523338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A344489 n + A000051 n).toNat

end

end A111830.P7536744293465523338

/-! ## A111830.P4653028647587279633

`A165674(A097186(n))`
-/

namespace A111830.P4653028647587279633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165674 (A097186 n).toNat

end

end A111830.P4653028647587279633

/-! ## A111830.P4390531688221078722

`A347971(A192982(n))`
-/

namespace A111830.P4390531688221078722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347971 (A192982 n).toNat

end

end A111830.P4390531688221078722

/-! ## A111830.P9632944880327989301

`A358832(A228832(n)²)`
-/

namespace A111830.P9632944880327989301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358832 (A228832 n ^ 2).toNat

end

end A111830.P9632944880327989301

/-!
# A111831: Number of partitions of 6*7^n into powers of 7, also equals column 1 of triangle A111830, which shifts columns left and up under matrix 7th power.

The programs for A111831, there is no canonical definition to state claims against.
-/

/-! ## A111831.P6364214237403241997

`record[ratio[A111830(n)]]`
-/

namespace A111831.P6364214237403241997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111830 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111831.P6364214237403241997

/-! ## A111831.P9532451599518475633

`record[A111830(comp[3*n])]`
-/

namespace A111831.P9532451599518475633
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111830 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111831.P9532451599518475633

/-! ## A111831.P4904479862302803594

`A111830(∑[n+1]+1)`
-/

namespace A111831.P4904479862302803594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111830 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A111831.P4904479862302803594

/-!
# A111832: Number of partitions of 7^n into powers of 7, also equals the row sums of triangle A111830, which shifts columns left and up under matrix 7th power.

The programs for A111832, there is no canonical definition to state claims against.
-/

/-! ## A111832.P10172994364468158936

`record[A145515(A155212(n))]`
-/

namespace A111832.P10172994364468158936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145515 (A155212 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111832.P10172994364468158936

/-! ## A111832.P10743403125713003356

`A145515(eq[7, A025581(n)])`
-/

namespace A111832.P10743403125713003356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111832.P10743403125713003356

/-! ## A111832.P220737482706465834

`A145515(eq[8, A195663(n)])`
-/

namespace A111832.P220737482706465834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111832.P220737482706465834

/-! ## A111832.P4978916343607348064

`A145515(eq[8, A004736(n+1)])`
-/

namespace A111832.P4978916343607348064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111832.P4978916343607348064

/-! ## A111832.P6218464041898737330

`record[A145515(A141214(n)-1+n)]`
-/

namespace A111832.P6218464041898737330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145515 (A141214 n - 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111832.P6218464041898737330

/-!
# A111834: Column 0 of the matrix logarithm (A111833) of triangle A111830, which shifts columns left and up under matrix 7th power; these terms are the result of multiplying the element in row n by n!.

The programs for A111834, there is no canonical definition to state claims against.
-/

/-! ## A111834.P11654512388621030367

`A111833(∑[n])`
-/

namespace A111834.P11654512388621030367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111833 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111834.P11654512388621030367

/-! ## A111834.P11342906637160926962

`and(-1, A111833(n*(n+1)/2))`
-/

namespace A111834.P11342906637160926962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A111833 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat)

end

end A111834.P11342906637160926962

/-! ## A111834.P17107960397038042853

`A111833(lcm(n, n+1)/2)+and(64, n)`
-/

namespace A111834.P17107960397038042853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111833 (SequenceMachineLib.roundAway ((Nat.lcm n (n + 1) : ℚ) / 2)).toNat + (Nat.land 64 n : ℤ)

end

end A111834.P17107960397038042853

/-! ## A111834.P1294195733025708530

`A230257(n+1)+A111833(n*(n+1)/2)`
-/

namespace A111834.P1294195733025708530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230257 (n + 1) + A111833 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat

end

end A111834.P1294195733025708530

/-!
# A111835: Triangle P, read by rows, that satisfies [P^8](n,k) = P(n+1,k+1) for n>=k>=0, also [P^(8*m)](n,k) = [P^m](n+1,k+1) for all m, where [P^m](n,k) denotes the element at row n, column k, of the matrix power m of P, with P(0,k)=1 and P(k,k)=1 for all k>=0.

The programs for A111835, there is no canonical definition to state claims against.
-/

/-! ## A111835.P1395934004754093141

`A114276(A097029(n+1))`
-/

namespace A111835.P1395934004754093141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114276 (A097029 (n + 1)).toNat

end

end A111835.P1395934004754093141

/-! ## A111835.P6874292516468665204

`A114276(A295296(n+1))`
-/

namespace A111835.P6874292516468665204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114276 (A295296 (n + 1)).toNat

end

end A111835.P6874292516468665204

/-! ## A111835.P10188054077906841739

`A114276(A317306(n+1))`
-/

namespace A111835.P10188054077906841739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114276 (A317306 (n + 1)).toNat

end

end A111835.P10188054077906841739

/-! ## A111835.P15738957678681191603

`A114276(A291857(n+2))`
-/

namespace A111835.P15738957678681191603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114276 (A291857 (n + 2)).toNat

end

end A111835.P15738957678681191603

/-! ## A111835.P3236207886034587583

`A114276(2^A090223(n))`
-/

namespace A111835.P3236207886034587583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114276 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A090223 n : ℤ))).toNat

end

end A111835.P3236207886034587583

/-!
# A111836: Number of partitions of 7*8^n into powers of 8, also equals column 1 of triangle A111835, which shifts columns left and up under matrix 8th power.

The programs for A111836, there is no canonical definition to state claims against.
-/

/-! ## A111836.P16935885948368941894

`record[ratio[A111835(n)]]`
-/

namespace A111836.P16935885948368941894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111835 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111836.P16935885948368941894

/-! ## A111836.P14590062948224400950

`A111835(∑[n+1]+1)`
-/

namespace A111836.P14590062948224400950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111835 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A111836.P14590062948224400950

/-! ## A111836.P8571457148247809466

`record[gcd(A111835(n), A151672(n))]`
-/

namespace A111836.P8571457148247809466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A111835 n) (A151672 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111836.P8571457148247809466

/-!
# A111837: Number of partitions of 8^n into powers of 8, also equals the row sums of triangle A111835, which shifts columns left and up under matrix 8th power.

The programs for A111837, there is no canonical definition to state claims against.
-/

/-! ## A111837.P5091857206675599052

`A145515(eq[7, A116598(n)])`
-/

namespace A111837.P5091857206675599052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111837.P5091857206675599052

/-! ## A111837.P15706929875688966872

`A145515(eq[8, A025581(n)])`
-/

namespace A111837.P15706929875688966872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111837.P15706929875688966872

/-! ## A111837.P13878819163798075300

`A145515(eq[9, A195663(n)])`
-/

namespace A111837.P13878819163798075300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111837.P13878819163798075300

/-! ## A111837.P7336128595874827627

`A145515(eq[9, A004736(n+1)])`
-/

namespace A111837.P7336128595874827627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111837.P7336128595874827627

/-! ## A111837.P13751990375966410353

`A145515(eq[9, A243070(n+1)])`
-/

namespace A111837.P13751990375966410353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111837.P13751990375966410353

/-!
# A111839: Column 0 of the matrix logarithm (A111838) of triangle A111835, which shifts columns left and up under matrix 8th power; these terms are the result of multiplying the element in row n by n!.

The programs for A111839, there is no canonical definition to state claims against.
-/

/-! ## A111839.P4684255648521832660

`A111838(∑[n])`
-/

namespace A111839.P4684255648521832660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111838 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111839.P4684255648521832660

/-! ## A111839.P9390069291257142749

`A111838(A000217(n))+char[10]`
-/

namespace A111839.P9390069291257142749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111838 (A000217 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A111839.P9390069291257142749

/-! ## A111839.P784274142211887933

`and(-1, A111838(A109811(n+1)))`
-/

namespace A111839.P784274142211887933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A111838 (A109811 (n + 1)).toNat)

end

end A111839.P784274142211887933

/-! ## A111839.P14117231244809504272

`A111838(round((2*n+1)²/8))+A025437(n)`
-/

namespace A111839.P14117231244809504272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111838 (SequenceMachineLib.roundAway (((2 * n + 1) ^ 2 : ℚ) / 8)).toNat + A025437 n

end

end A111839.P14117231244809504272

/-!
# A111841: Number of partitions of 3^n-1 into powers of 3, also equals column 0 of triangle A111840, which shifts columns left and up under matrix cube.

The programs for A111841, there is no canonical definition to state claims against.
-/

/-! ## A111841.P12401340705552780582

`abs(Δ[A078125(abs(1-n))])`
-/

namespace A111841.P12401340705552780582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078125 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A111841.P12401340705552780582

/-! ## A111841.P11586970908266008413

`Δ[record[A125800(n)+A002262(n)]]`
-/

namespace A111841.P11586970908266008413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125800 n + A002262 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111841.P11586970908266008413

/-! ## A111841.P8874400240461494000

`A005704(ceil(3^(n-1))-1)`
-/

namespace A111841.P8874400240461494000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005704 (⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - 1).toNat

end

end A111841.P8874400240461494000

/-! ## A111841.P2840312706379369116

`A254296(A237930(n)+1)`
-/

namespace A111841.P2840312706379369116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254296 (A237930 n + 1).toNat

end

end A111841.P2840312706379369116

/-! ## A111841.P14551108346609429013

`A254296(2*2*A153774(n+1))`
-/

namespace A111841.P14551108346609429013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254296 (2 * (2 * A153774 (n + 1))).toNat

end

end A111841.P14551108346609429013

/-!
# A111842: Row sums of triangle A111840, which shifts columns left and up under matrix cube.

The programs for A111842, there is no canonical definition to state claims against.
-/

/-! ## A111842.P4698226106057588233

`A343438(a(n-1))` with `a(0)=1, a(1)=2, a(2)=7`
-/

namespace A111842.P4698226106057588233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7] fun n a =>
  A343438 (a (n - 1)).toNat

end

end A111842.P4698226106057588233

/-!
# A111844: Column 0 of the matrix logarithm (A111843) of triangle A111840, which shifts columns left and up under matrix cube; these terms are the result of multiplying the element in row n by n!.

The programs for A111844, there is no canonical definition to state claims against.
-/

/-! ## A111844.P14819430123611976243

`A111843(∑[n])`
-/

namespace A111844.P14819430123611976243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111843 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111844.P14819430123611976243

/-! ## A111844.P14998105283505302712

`and(-1, A111843(A000217(n)))`
-/

namespace A111844.P14998105283505302712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A111843 (A000217 n).toNat)

end

end A111844.P14998105283505302712

/-! ## A111844.P3173022492708257000

`A326522(n)+A111843((n²+n)*cot(atan(2)))`
-/

namespace A111844.P3173022492708257000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326522 n + A111843 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℝ) * Real.cot (Real.arctan (2 : ℝ)))).toNat

end

end A111844.P3173022492708257000

/-! ## A111844.P10470354326901669709

`A326529(n)+A111843((n²+n)*cot(atan(2)))`
-/

namespace A111844.P10470354326901669709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326529 n + A111843 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℝ) * Real.cot (Real.arctan (2 : ℝ)))).toNat

end

end A111844.P10470354326901669709

/-! ## A111844.P18087755636629450752

`A326522(n)+A111843(2*n-(n-C(n, 2)))`
-/

namespace A111844.P18087755636629450752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326522 n + A111843 ((2 * n : ℤ) - ((n : ℤ) - (Nat.choose n 2 : ℤ))).toNat

end

end A111844.P18087755636629450752

/-!
# A111846: Number of partitions of 4^n - 1 into powers of 4, also equals column 0 of triangle A111845, which shifts columns left and up under matrix 4th power.

The programs for A111846, there is no canonical definition to state claims against.
-/

/-! ## A111846.P15057449614740731962

`abs(Δ[A078537(abs(1-n))])`
-/

namespace A111846.P15057449614740731962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078537 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A111846.P15057449614740731962

/-! ## A111846.P16890040189413790036

`A111845(∑[n])`
-/

namespace A111846.P16890040189413790036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111845 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111846.P16890040189413790036

/-! ## A111846.P16927817704116070560

`∑{digits}[n, A111845(A000124(#))]`
-/

namespace A111846.P16927817704116070560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A111845 (A000124 x).toNat).sum

end

end A111846.P16927817704116070560

/-! ## A111846.P7114324382462357043

`and(-1, A111845(A000217(n)))`
-/

namespace A111846.P7114324382462357043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A111845 (A000217 n).toNat)

end

end A111846.P7114324382462357043

/-!
# A111847: Row sums of triangle A111845, which shifts columns left and up under matrix 4th power.

The programs for A111847, there is no canonical definition to state claims against.
-/

/-! ## A111847.P5077136703115811460

`A135785(or(n*a(n-1), C(2*n, 2)))` with `a(0)=1`
-/

namespace A111847.P5077136703115811460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A135785 (Int.lor ((n : ℤ) * a (n - 1)) (Nat.choose (2 * n) 2 : ℤ)).toNat

end

end A111847.P5077136703115811460

/-!
# A111849: Column 0 of the matrix logarithm (A111848) of triangle A111845, which shifts columns left and up under matrix 4th power; these terms are the result of multiplying the element in row n by n!.

The programs for A111849, there is no canonical definition to state claims against.
-/

/-! ## A111849.P10383679902893058735

`A111848(∑[n])`
-/

namespace A111849.P10383679902893058735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111848 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111849.P10383679902893058735

/-! ## A111849.P5905477305995837588

`A111848(A000217(n))+A102683(n)`
-/

namespace A111849.P5905477305995837588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111848 (A000217 n).toNat + A102683 n

end

end A111849.P5905477305995837588

/-! ## A111849.P2918323922197920164

`A111848(A000217(n))*A115721(n)`
-/

namespace A111849.P2918323922197920164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111848 (A000217 n).toNat * A115721 n

end

end A111849.P2918323922197920164

/-! ## A111849.P14936657715368511705

`A000203(gcd(n, n+1))*A111848(A000217(n))`
-/

namespace A111849.P14936657715368511705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.gcd n (n + 1)) * A111848 (A000217 n).toNat

end

end A111849.P14936657715368511705

/-! ## A111849.P12531711890536905436

`A000010(A014963(2*(n+1)))*A111848(A000217(n))`
-/

namespace A111849.P12531711890536905436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A014963 (2 * (n + 1))).toNat * A111848 (A000217 n).toNat

end

end A111849.P12531711890536905436

/-!
# A111850: Number of numbers m <= n such that 0 equals the first digit after decimal point of square root of n in decimal representation.

The programs for A111850, there is no canonical definition to state claims against.
-/

/-! ## A111850.P8105125651751449052

`∑[val(floor(10*sqrt(n+1)), 10)]`
-/

namespace A111850.P8105125651751449052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ⌊10 * Real.sqrt (n + 1 : ℝ)⌋.toNat 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111850.P8105125651751449052

/-! ## A111850.P16549379738833719334

`∑[floor(acot(floor(10*sqrt(n+1))%10))]`
-/

namespace A111850.P16549379738833719334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (Int.tmod ⌊10 * Real.sqrt (n + 1 : ℝ)⌋ 10 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111850.P16549379738833719334

/-! ## A111850.P6380082900481600414

`∑[char[(n+5)²]]+floor(sqrt(n+1))`
-/

namespace A111850.P6380082900481600414
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 5) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.sqrt (n + 1)

end

end A111850.P6380082900481600414

/-! ## A111850.P18382010302965563869

`A132085(comp[n²-1])`
-/

namespace A111850.P18382010302965563869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132085 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A111850.P18382010302965563869

/-! ## A111850.P12635866416325526369

`∑[floor(acot(A023961(n+1)))]`
-/

namespace A111850.P12635866416325526369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A023961 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111850.P12635866416325526369

/-! ## A111850.P15857893446505652680

`A132085(comp[∑[2*n]])%15`
-/

namespace A111850.P15857893446505652680
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132085 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) 15

end

end A111850.P15857893446505652680

/-! ## A111850.P5723830461251280106

`A025765(A316355(n))`
-/

namespace A111850.P5723830461251280106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025765 (A316355 n).toNat

end

end A111850.P5723830461251280106

/-! ## A111850.P13784743300810342142

`A025872(4*A316355(n))`
-/

namespace A111850.P13784743300810342142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025872 (4 * A316355 n).toNat

end

end A111850.P13784743300810342142

/-! ## A111850.P14306802615260175589

`∑[A000007(n*A023961(n+1))]`
-/

namespace A111850.P14306802615260175589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A023961 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111850.P14306802615260175589

/-! ## A111850.P18445746986747789644

`∑[(A000010(n+2)%2)^A023961(n+1)]`
-/

namespace A111850.P18445746986747789644
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A000010 (n + 2)) 2 : ℚ) ^ (A023961 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111850.P18445746986747789644

/-!
# A111851: Number of numbers m <= n such that 1 equals the first digit after decimal point of square root of n in decimal representation.

The programs for A111851, the canonical program `A111851.P6379286893962933652` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111851 has offset 1).

The definition of A111851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111851.P10469916543112649536

`∑[char[A034097(n+1)-1]]`
-/

namespace A111851.P10469916543112649536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034097 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111851.P10469916543112649536

namespace A111851

/-- `∑[char[A034097(n+1)-1]]` -/
def P10469916543112649536.Spec : Prop :=
  ∀ n, (P10469916543112649536.a n : ℤ) = A111851 (n + 1)

end A111851

/-! ## A111851.P6379286893962933652

`∑[char[eq[1, A023961(n+1)]]]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A111851

/-- `∑[char[eq[1, A023961(n+1)]]]` -/
def P6379286893962933652.Spec : Prop :=
  ∀ n, (P6379286893962933652.a n : ℤ) = A111851 (n + 1)

theorem P6379286893962933652.correct : P6379286893962933652.Spec := by
  intro n
  simp only [A111851, Nat.add_sub_cancel]

end A111851

/-! ## A111851.P4577554660849850222

`A111856(round(n-sqrt(n))+1)`
-/

namespace A111851.P4577554660849850222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111856 (SequenceMachineLib.roundAway ((n : ℝ) - Real.sqrt (n : ℝ)) + 1).toNat

end

end A111851.P4577554660849850222

namespace A111851

/-- `A111856(round(n-sqrt(n))+1)` -/
def P4577554660849850222.Spec : Prop :=
  ∀ n, P4577554660849850222.a n = A111851 (n + 1)

end A111851

/-! ## A111851.P12730304896985012114

`a(n-1)+val(n+1, A034097(a(n-1)+1))` with `a(0)=0`
-/

namespace A111851.P12730304896985012114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + SequenceMachineLib.valuation (n + 1) (A034097 (a (n - 1) + 1)).toNat

end

end A111851.P12730304896985012114

namespace A111851

/-- `a(n-1)+val(n+1, A034097(a(n-1)+1))` -/
def P12730304896985012114.Spec : Prop :=
  ∀ n, (P12730304896985012114.a n : ℤ) = A111851 (n + 1)

end A111851

/-! ## A111851.P11682982048030560673

`∑[char[A023443(A034097(n+1))]]`
-/

namespace A111851.P11682982048030560673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A034097 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111851.P11682982048030560673

namespace A111851

/-- `∑[char[A023443(A034097(n+1))]]` -/
def P11682982048030560673.Spec : Prop :=
  ∀ n, (P11682982048030560673.a n : ℤ) = A111851 (n + 1)

end A111851

/-! ## A111851.P11966953460745080275

`∑[char[A028392(A034102(n+1))]]`
-/

namespace A111851.P11966953460745080275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 (A034102 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111851.P11966953460745080275

namespace A111851

/-- `∑[char[A028392(A034102(n+1))]]` -/
def P11966953460745080275.Spec : Prop :=
  ∀ n, (P11966953460745080275.a n : ℤ) = A111851 (n + 1)

end A111851

/-! ## A111851.P8155845059528617286

`A077429(A319320(n+1))`
-/

namespace A111851.P8155845059528617286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077429 (A319320 (n + 1)).toNat

end

end A111851.P8155845059528617286

namespace A111851

/-- `A077429(A319320(n+1))` -/
def P8155845059528617286.Spec : Prop :=
  ∀ n, P8155845059528617286.a n = A111851 (n + 1)

end A111851

/-!
# A111852: Number of numbers m <= n such that 2 equals the first digit after decimal point of square root of n in decimal representation.

The programs for A111852, the canonical program `A111852.P16125321229967938784` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111852 has offset 1).

The definition of A111852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111852.P1432385985179142981

`∑[char[A034098(n+1)-1]]`
-/

namespace A111852.P1432385985179142981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034098 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111852.P1432385985179142981

namespace A111852

/-- `∑[char[A034098(n+1)-1]]` -/
def P1432385985179142981.Spec : Prop :=
  ∀ n, (P1432385985179142981.a n : ℤ) = A111852 (n + 1)

end A111852

/-! ## A111852.P16125321229967938784

`∑[char[eq[2, A023961(n+1)]]]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A111852

/-- `∑[char[eq[2, A023961(n+1)]]]` -/
def P16125321229967938784.Spec : Prop :=
  ∀ n, (P16125321229967938784.a n : ℤ) = A111852 (n + 1)

theorem P16125321229967938784.correct : P16125321229967938784.Spec := by
  intro n
  simp only [A111852, Nat.add_sub_cancel]

end A111852

/-! ## A111852.P10137384172162969445

`A111857(round(n-sqrt(n))+1)`
-/

namespace A111852.P10137384172162969445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111857 (SequenceMachineLib.roundAway ((n : ℝ) - Real.sqrt (n : ℝ)) + 1).toNat

end

end A111852.P10137384172162969445

namespace A111852

/-- `A111857(round(n-sqrt(n))+1)` -/
def P10137384172162969445.Spec : Prop :=
  ∀ n, P10137384172162969445.a n = A111852 (n + 1)

end A111852

/-! ## A111852.P10527163512248945369

`∑[char[A023443(A034098(n+1))]]`
-/

namespace A111852.P10527163512248945369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A034098 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111852.P10527163512248945369

namespace A111852

/-- `∑[char[A023443(A034098(n+1))]]` -/
def P10527163512248945369.Spec : Prop :=
  ∀ n, (P10527163512248945369.a n : ℤ) = A111852 (n + 1)

end A111852

/-! ## A111852.P11289136241640192834

`∑[char[A028392(A034103(n+1))]]`
-/

namespace A111852.P11289136241640192834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 (A034103 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111852.P11289136241640192834

namespace A111852

/-- `∑[char[A028392(A034103(n+1))]]` -/
def P11289136241640192834.Spec : Prop :=
  ∀ n, (P11289136241640192834.a n : ℤ) = A111852 (n + 1)

end A111852

/-! ## A111852.P9066487493000167514

`floor(sqrt(A335640(n+5))/9)`
-/

namespace A111852.P9066487493000167514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A335640 (n + 5) : ℝ) / 9⌋

end

end A111852.P9066487493000167514

namespace A111852

/-- `floor(sqrt(A335640(n+5))/9)` -/
def P9066487493000167514.Spec : Prop :=
  ∀ n, P9066487493000167514.a n = A111852 (n + 1)

end A111852

/-!
# A111853: Number of numbers m <= n such that 3 equals the first digit after decimal point of square root of n in decimal representation.

The programs for A111853, the canonical program `A111853.P1744786022427487095` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111853 has offset 1).

The definition of A111853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111853.P11847476034842276265

`∑[char[A034099(n+1)-1]]`
-/

namespace A111853.P11847476034842276265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034099 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111853.P11847476034842276265

namespace A111853

/-- `∑[char[A034099(n+1)-1]]` -/
def P11847476034842276265.Spec : Prop :=
  ∀ n, (P11847476034842276265.a n : ℤ) = A111853 (n + 1)

end A111853

/-! ## A111853.P1744786022427487095

`∑[char[eq[3, A023961(n+1)]]]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A111853

/-- `∑[char[eq[3, A023961(n+1)]]]` -/
def P1744786022427487095.Spec : Prop :=
  ∀ n, (P1744786022427487095.a n : ℤ) = A111853 (n + 1)

theorem P1744786022427487095.correct : P1744786022427487095.Spec := by
  intro n
  simp only [A111853, Nat.add_sub_cancel]

end A111853

/-! ## A111853.P17685266992182472127

`A111858(n-floor(sqrt(n))+1)`
-/

namespace A111853.P17685266992182472127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111858 ((n : ℤ) - (Nat.sqrt n : ℤ) + 1).toNat

end

end A111853.P17685266992182472127

namespace A111853

/-- `A111858(n-floor(sqrt(n))+1)` -/
def P17685266992182472127.Spec : Prop :=
  ∀ n, P17685266992182472127.a n = A111853 (n + 1)

end A111853

/-! ## A111853.P5061240137107696107

`∑[char[A023443(A034099(n+1))]]`
-/

namespace A111853.P5061240137107696107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A034099 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111853.P5061240137107696107

namespace A111853

/-- `∑[char[A023443(A034099(n+1))]]` -/
def P5061240137107696107.Spec : Prop :=
  ∀ n, (P5061240137107696107.a n : ℤ) = A111853 (n + 1)

end A111853

/-! ## A111853.P515956427938382985

`∑[char[A028392(A034104(n+1))]]`
-/

namespace A111853.P515956427938382985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 (A034104 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111853.P515956427938382985

namespace A111853

/-- `∑[char[A028392(A034104(n+1))]]` -/
def P515956427938382985.Spec : Prop :=
  ∀ n, (P515956427938382985.a n : ℤ) = A111853 (n + 1)

end A111853

/-! ## A111853.P16058363833497642514

`floor(A173147(n+1)/23)`
-/

namespace A111853.P16058363833497642514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A173147 (n + 1) : ℚ) / 23⌋

end

end A111853.P16058363833497642514

namespace A111853

/-- `floor(A173147(n+1)/23)` -/
def P16058363833497642514.Spec : Prop :=
  ∀ n, P16058363833497642514.a n = A111853 (n + 1)

end A111853

/-!
# A111854: Number of numbers m <= n such that 4 equals the first digit after decimal point of square root of n in decimal representation.

The programs for A111854, the canonical program `A111854.P12628893320528606972` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111854 has offset 1).

The definition of A111854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111854.P12628893320528606972

`∑[char[A034100(n+1)-1]]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111854

/-- `∑[char[A034100(n+1)-1]]` -/
def P12628893320528606972.Spec : Prop :=
  ∀ n, (P12628893320528606972.a n : ℤ) = A111854 (n + 1)

theorem P12628893320528606972.correct : P12628893320528606972.Spec := by
  intro n
  simp only [A111854, Nat.add_sub_cancel]

end A111854

/-! ## A111854.P9883348483598223575

`∑[char[eq[2, A327898(n+1)]]]`
-/

namespace A111854.P9883348483598223575
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327898 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111854.P9883348483598223575

namespace A111854

/-- `∑[char[eq[2, A327898(n+1)]]]` -/
def P9883348483598223575.Spec : Prop :=
  ∀ n, (P9883348483598223575.a n : ℤ) = A111854 (n + 1)

end A111854

/-! ## A111854.P15964132335647195354

`∑[char[eq[4, A023961(n+1)]]]`
-/

namespace A111854.P15964132335647195354
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111854.P15964132335647195354

namespace A111854

/-- `∑[char[eq[4, A023961(n+1)]]]` -/
def P15964132335647195354.Spec : Prop :=
  ∀ n, (P15964132335647195354.a n : ℤ) = A111854 (n + 1)

end A111854

/-! ## A111854.P8513024927044571069

`char[A034100(floor(n/2)+1)-1]+a(n-1)` with `a(0)=0`
-/

namespace A111854.P8513024927044571069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034100 (⌊(n : ℚ) / 2⌋ + 1).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A111854.P8513024927044571069

namespace A111854

/-- `char[A034100(floor(n/2)+1)-1]+a(n-1)` -/
def P8513024927044571069.Spec : Prop :=
  ∀ n, (P8513024927044571069.a n : ℤ) = A111854 (n + 1)

end A111854

/-! ## A111854.P3824252094446602775

`∑[char[A023443(A034100(n+1))]]`
-/

namespace A111854.P3824252094446602775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A034100 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111854.P3824252094446602775

namespace A111854

/-- `∑[char[A023443(A034100(n+1))]]` -/
def P3824252094446602775.Spec : Prop :=
  ∀ n, (P3824252094446602775.a n : ℤ) = A111854 (n + 1)

end A111854

/-! ## A111854.P12228942780421399632

`∑[A000007(abs(2-A327898(n+1)))]`
-/

namespace A111854.P12228942780421399632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 |2 - A327898 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111854.P12228942780421399632

namespace A111854

/-- `∑[A000007(abs(2-A327898(n+1)))]` -/
def P12228942780421399632.Spec : Prop :=
  ∀ n, P12228942780421399632.a n = A111854 (n + 1)

end A111854

/-! ## A111854.P8272941857220086860

`∑[∏{d}[2-A327898(n+1), A035321(#)]]`
-/

namespace A111854.P8272941857220086860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A327898 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, A035321 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111854.P8272941857220086860

namespace A111854

/-- `∑[∏{d}[2-A327898(n+1), A035321(#)]]` -/
def P8272941857220086860.Spec : Prop :=
  ∀ n, P8272941857220086860.a n = A111854 (n + 1)

end A111854

/-! ## A111854.P8030739530847040789

`∑[A001221(A013942((2-A327898(n+1))²+1))]`
-/

namespace A111854.P8030739530847040789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A013942 ((2 - A327898 (n + 1)) ^ 2 + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111854.P8030739530847040789

namespace A111854

/-- `∑[A001221(A013942((2-A327898(n+1))²+1))]` -/
def P8030739530847040789.Spec : Prop :=
  ∀ n, P8030739530847040789.a n = A111854 (n + 1)

end A111854

/-! ## A111854.P5902099766530005236

`∑[A000007((2-A327898(n+1))²)]`
-/

namespace A111854.P5902099766530005236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((2 - A327898 (n + 1)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111854.P5902099766530005236

namespace A111854

/-- `∑[A000007((2-A327898(n+1))²)]` -/
def P5902099766530005236.Spec : Prop :=
  ∀ n, P5902099766530005236.a n = A111854 (n + 1)

end A111854

/-!
# A111855: Number of numbers m <= n such that 5 equals the first digit after decimal point of square root of n in decimal representation.

The programs for A111855, the canonical program `A111855.P445997609701663267` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111855 has offset 1).

The definition of A111855 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111855.P445997609701663267

`∑[char[A034101(n+1)-1]]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111855

/-- `∑[char[A034101(n+1)-1]]` -/
def P445997609701663267.Spec : Prop :=
  ∀ n, (P445997609701663267.a n : ℤ) = A111855 (n + 1)

theorem P445997609701663267.correct : P445997609701663267.Spec := by
  intro n
  simp only [A111855, Nat.add_sub_cancel]

end A111855

/-! ## A111855.P14147738000772869347

`∑[char[eq[5, A023961(n+1)]]]`
-/

namespace A111855.P14147738000772869347
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111855.P14147738000772869347

namespace A111855

/-- `∑[char[eq[5, A023961(n+1)]]]` -/
def P14147738000772869347.Spec : Prop :=
  ∀ n, (P14147738000772869347.a n : ℤ) = A111855 (n + 1)

end A111855

/-! ## A111855.P5136362201577130726

`∑[char[lt[9, A013942(n+1)]]]`
-/

namespace A111855.P5136362201577130726
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013942 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111855.P5136362201577130726

namespace A111855

/-- `∑[char[lt[9, A013942(n+1)]]]` -/
def P5136362201577130726.Spec : Prop :=
  ∀ n, (P5136362201577130726.a n : ℤ) = A111855 (n + 1)

end A111855

/-! ## A111855.P2245339115946995050

`∑[char[A023443(A034101(n+1))]]`
-/

namespace A111855.P2245339115946995050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A034101 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111855.P2245339115946995050

namespace A111855

/-- `∑[char[A023443(A034101(n+1))]]` -/
def P2245339115946995050.Spec : Prop :=
  ∀ n, (P2245339115946995050.a n : ℤ) = A111855 (n + 1)

end A111855

/-! ## A111855.P16316515444709152210

`∑[A000007(abs(A327898(n+1)+2))]`
-/

namespace A111855.P16316515444709152210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 |A327898 (n + 1) + 2|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111855.P16316515444709152210

namespace A111855

/-- `∑[A000007(abs(A327898(n+1)+2))]` -/
def P16316515444709152210.Spec : Prop :=
  ∀ n, P16316515444709152210.a n = A111855 (n + 1)

end A111855

/-! ## A111855.P12910804025592549845

`∑[A000007((A327898(n+1)+2)²)]`
-/

namespace A111855.P12910804025592549845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((A327898 (n + 1) + 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111855.P12910804025592549845

namespace A111855

/-- `∑[A000007((A327898(n+1)+2)²)]` -/
def P12910804025592549845.Spec : Prop :=
  ∀ n, P12910804025592549845.a n = A111855 (n + 1)

end A111855

/-!
# A111856: Number of numbers m <= n such that 6 equals the first digit after decimal point of square root of n in decimal representation.

The programs for A111856, the canonical program `A111856.P3255611336082219841` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111856 has offset 1).

The definition of A111856 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111856.P1657665830939722327

`∑[char[A034102(n+1)-1]]`
-/

namespace A111856.P1657665830939722327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034102 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111856.P1657665830939722327

namespace A111856

/-- `∑[char[A034102(n+1)-1]]` -/
def P1657665830939722327.Spec : Prop :=
  ∀ n, (P1657665830939722327.a n : ℤ) = A111856 (n + 1)

end A111856

/-! ## A111856.P14153260119522023388

`∑[char[eq[6, A023961(n+1)]]]`
-/

namespace A111856.P14153260119522023388
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111856.P14153260119522023388

namespace A111856

/-- `∑[char[eq[6, A023961(n+1)]]]` -/
def P14153260119522023388.Spec : Prop :=
  ∀ n, (P14153260119522023388.a n : ℤ) = A111856 (n + 1)

end A111856

/-! ## A111856.P3255611336082219841

`∑[val(A023961(Δ[n²]-n)+1, 7)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A111856

/-- `∑[val(A023961(Δ[n²]-n)+1, 7)]` -/
def P3255611336082219841.Spec : Prop :=
  ∀ n, (P3255611336082219841.a n : ℤ) = A111856 (n + 1)

theorem P3255611336082219841.correct : P3255611336082219841.Spec := by
  intro n
  simp only [A111856, Nat.add_sub_cancel]

end A111856

/-! ## A111856.P14792836098950734847

`∑[char[A023443(A034102(n+1))]]`
-/

namespace A111856.P14792836098950734847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A034102 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111856.P14792836098950734847

namespace A111856

/-- `∑[char[A023443(A034102(n+1))]]` -/
def P14792836098950734847.Spec : Prop :=
  ∀ n, (P14792836098950734847.a n : ℤ) = A111856 (n + 1)

end A111856

/-! ## A111856.P9200236818886791012

`A111851(comp[n²])`
-/

namespace A111856.P9200236818886791012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111851 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A111856.P9200236818886791012

namespace A111856

/-- `A111851(comp[n²])` -/
def P9200236818886791012.Spec : Prop :=
  ∀ n, P9200236818886791012.a n = A111856 (n + 1)

end A111856

/-! ## A111856.P218220095010479294

`∑[A014963(86*n+13)%A016016(A013942(n+1))]`
-/

namespace A111856.P218220095010479294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (86 * n + 13)) (A016016 (A013942 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111856.P218220095010479294

namespace A111856

/-- `∑[A014963(86*n+13)%A016016(A013942(n+1))]` -/
def P218220095010479294.Spec : Prop :=
  ∀ n, P218220095010479294.a n = A111856 (n + 1)

end A111856

/-! ## A111856.P11425318233652055777

`A382692(A163101(n+1))`
-/

namespace A111856.P11425318233652055777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382692 (A163101 (n + 1)).toNat

end

end A111856.P11425318233652055777

namespace A111856

/-- `A382692(A163101(n+1))` -/
def P11425318233652055777.Spec : Prop :=
  ∀ n, P11425318233652055777.a n = A111856 (n + 1)

end A111856

/-!
# A111857: Number of numbers m <= n such that 7 equals the first digit after decimal point of square root of n in decimal representation.

The programs for A111857, the canonical program `A111857.P18297356022564495943` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111857 has offset 1).

The definition of A111857 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111857.P18297356022564495943

`∑[val(floor(10*sqrt(n+1))%10+3, 10)]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A111857

/-- `∑[val(floor(10*sqrt(n+1))%10+3, 10)]` -/
def P18297356022564495943.Spec : Prop :=
  ∀ n, (P18297356022564495943.a n : ℤ) = A111857 (n + 1)

theorem P18297356022564495943.correct : P18297356022564495943.Spec := by
  intro n
  simp only [A111857, Nat.add_sub_cancel]

end A111857

/-! ## A111857.P6526985758903309782

`∑[char[A034103(n+1)-1]]`
-/

namespace A111857.P6526985758903309782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034103 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111857.P6526985758903309782

namespace A111857

/-- `∑[char[A034103(n+1)-1]]` -/
def P6526985758903309782.Spec : Prop :=
  ∀ n, (P6526985758903309782.a n : ℤ) = A111857 (n + 1)

end A111857

/-! ## A111857.P15129445710163923868

`∑[char[eq[7, A023961(n+1)]]]`
-/

namespace A111857.P15129445710163923868
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111857.P15129445710163923868

namespace A111857

/-- `∑[char[eq[7, A023961(n+1)]]]` -/
def P15129445710163923868.Spec : Prop :=
  ∀ n, (P15129445710163923868.a n : ℤ) = A111857 (n + 1)

end A111857

/-! ## A111857.P17977117139602236596

`∑[char[A023443(A034103(n+1))]]`
-/

namespace A111857.P17977117139602236596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A034103 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111857.P17977117139602236596

namespace A111857

/-- `∑[char[A023443(A034103(n+1))]]` -/
def P17977117139602236596.Spec : Prop :=
  ∀ n, (P17977117139602236596.a n : ℤ) = A111857 (n + 1)

end A111857

/-! ## A111857.P6372370440302591701

`A111852(comp[n²])`
-/

namespace A111857.P6372370440302591701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111852 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A111857.P6372370440302591701

namespace A111857

/-- `A111852(comp[n²])` -/
def P6372370440302591701.Spec : Prop :=
  ∀ n, P6372370440302591701.a n = A111857 (n + 1)

end A111857

/-! ## A111857.P14797268344446611049

`∑{d}[A111852(A000037(n+1)), A000010(#)]`
-/

namespace A111857.P14797268344446611049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111852 (A000037 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A111857.P14797268344446611049

namespace A111857

/-- `∑{d}[A111852(A000037(n+1)), A000010(#)]` -/
def P14797268344446611049.Spec : Prop :=
  ∀ n, P14797268344446611049.a n = A111857 (n + 1)

end A111857

/-! ## A111857.P868288557139176859

`A007318(C(2, n))*A111852(A000037(n+1))`
-/

namespace A111857.P868288557139176859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A111852 (A000037 (n + 1)).toNat

end

end A111857.P868288557139176859

namespace A111857

/-- `A007318(C(2, n))*A111852(A000037(n+1))` -/
def P868288557139176859.Spec : Prop :=
  ∀ n, P868288557139176859.a n = A111857 (n + 1)

end A111857

/-! ## A111857.P16248328260435570064

`A111852(A000037(n+1))+A001222(gcd(n, n+1))`
-/

namespace A111857.P16248328260435570064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111852 (A000037 (n + 1)).toNat + A001222 (Nat.gcd n (n + 1))

end

end A111857.P16248328260435570064

namespace A111857

/-- `A111852(A000037(n+1))+A001222(gcd(n, n+1))` -/
def P16248328260435570064.Spec : Prop :=
  ∀ n, P16248328260435570064.a n = A111857 (n + 1)

end A111857

/-! ## A111857.P15124257326447742111

`A014963(∑[n+1])*A111852(A000037(n+1))`
-/

namespace A111857.P15124257326447742111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ j ∈ Finset.range (n + 1), f1 j) * A111852 (A000037 (n + 1)).toNat

end

end A111857.P15124257326447742111

namespace A111857

/-- `A014963(∑[n+1])*A111852(A000037(n+1))` -/
def P15124257326447742111.Spec : Prop :=
  ∀ n, P15124257326447742111.a n = A111857 (n + 1)

end A111857

/-!
# A111858: Number of numbers m <= n such that 8 equals the first digit after decimal point of square root of n in decimal representation.

The programs for A111858, the canonical program `A111858.P11714212007858520479` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111858 has offset 1).

The definition of A111858 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111858.P16841343997636358215

`∑[char[A034104(n+1)-1]]`
-/

namespace A111858.P16841343997636358215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034104 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111858.P16841343997636358215

namespace A111858

/-- `∑[char[A034104(n+1)-1]]` -/
def P16841343997636358215.Spec : Prop :=
  ∀ n, (P16841343997636358215.a n : ℤ) = A111858 (n + 1)

end A111858

/-! ## A111858.P11714212007858520479

`∑[char[eq[8, A023961(n+1)]]]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A111858

/-- `∑[char[eq[8, A023961(n+1)]]]` -/
def P11714212007858520479.Spec : Prop :=
  ∀ n, (P11714212007858520479.a n : ℤ) = A111858 (n + 1)

theorem P11714212007858520479.correct : P11714212007858520479.Spec := by
  intro n
  simp only [A111858, Nat.add_sub_cancel]

end A111858

/-! ## A111858.P18113459826195833294

`char[A034104(floor(n/2)+1)-1]+a(n-1)` with `a(0)=0`
-/

namespace A111858.P18113459826195833294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034104 (⌊(n : ℚ) / 2⌋ + 1).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A111858.P18113459826195833294

namespace A111858

/-- `char[A034104(floor(n/2)+1)-1]+a(n-1)` -/
def P18113459826195833294.Spec : Prop :=
  ∀ n, (P18113459826195833294.a n : ℤ) = A111858 (n + 1)

end A111858

/-! ## A111858.P10575539714758961329

`∑[char[A023443(A034104(n+1))]]`
-/

namespace A111858.P10575539714758961329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A034104 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111858.P10575539714758961329

namespace A111858

/-- `∑[char[A023443(A034104(n+1))]]` -/
def P10575539714758961329.Spec : Prop :=
  ∀ n, (P10575539714758961329.a n : ℤ) = A111858 (n + 1)

end A111858

/-! ## A111858.P11964627730560750442

`comp[A034104(n+1)+n-1]%A028310(n)`
-/

namespace A111858.P11964627730560750442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034104 (n + 1) + ((n : ℤ) - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A028310 n)

end

end A111858.P11964627730560750442

namespace A111858

/-- `comp[A034104(n+1)+n-1]%A028310(n)` -/
def P11964627730560750442.Spec : Prop :=
  ∀ n, P11964627730560750442.a n = A111858 (n + 1)

end A111858

/-! ## A111858.P11354766337401034824

`A111853(A164386(n+1))`
-/

namespace A111858.P11354766337401034824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111853 (A164386 (n + 1)).toNat

end

end A111858.P11354766337401034824

namespace A111858

/-- `A111853(A164386(n+1))` -/
def P11354766337401034824.Spec : Prop :=
  ∀ n, P11354766337401034824.a n = A111858 (n + 1)

end A111858

/-! ## A111858.P9015129749967119284

`A111853(comp[n²])`
-/

namespace A111858.P9015129749967119284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111853 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A111858.P9015129749967119284

namespace A111858

/-- `A111853(comp[n²])` -/
def P9015129749967119284.Spec : Prop :=
  ∀ n, P9015129749967119284.a n = A111858 (n + 1)

end A111858

/-!
# A111859: Number of numbers m <= n such that 9 equals the first digit after decimal point of square root of n in decimal representation.

The programs for A111859, the canonical program `A111859.P11523082048664198437` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111859 has offset 1).

The definition of A111859 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111859.P6699725685761113256

`∑[C(floor(10*sqrt(n+1))%10, 9)]`
-/

namespace A111859.P6699725685761113256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.tmod ⌊10 * Real.sqrt (n + 1 : ℝ)⌋ 10).toNat 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111859.P6699725685761113256

namespace A111859

/-- `∑[C(floor(10*sqrt(n+1))%10, 9)]` -/
def P6699725685761113256.Spec : Prop :=
  ∀ n, (P6699725685761113256.a n : ℤ) = A111859 (n + 1)

end A111859

/-! ## A111859.P11523082048664198437

`∑[C(A023961(n+1), 9)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A111859

/-- `∑[C(A023961(n+1), 9)]` -/
def P11523082048664198437.Spec : Prop :=
  ∀ n, (P11523082048664198437.a n : ℤ) = A111859 (n + 1)

theorem P11523082048664198437.correct : P11523082048664198437.Spec := by
  intro n
  simp only [A111859, Nat.add_sub_cancel]

end A111859

/-! ## A111859.P2462510632407438645

`∑[and(A010052(n+2), A299469(n))]`
-/

namespace A111859.P2462510632407438645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010052 (n + 2)) (A299469 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111859.P2462510632407438645

namespace A111859

/-- `∑[and(A010052(n+2), A299469(n))]` -/
def P2462510632407438645.Spec : Prop :=
  ∀ n, P2462510632407438645.a n = A111859 (n + 1)

end A111859

/-! ## A111859.P15483364438575795920

`comp[A366961(3*(n+1))-A231899(n+1)-2]-n`
-/

namespace A111859.P15483364438575795920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366961 (3 * (n + 1)) - A231899 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A111859.P15483364438575795920

namespace A111859

/-- `comp[A366961(3*(n+1))-A231899(n+1)-2]-n` -/
def P15483364438575795920.Spec : Prop :=
  ∀ n, P15483364438575795920.a n = A111859 (n + 1)

end A111859

/-! ## A111859.P6040205995615052344

`A336107(A000740(floor(sqrt(n+2))))`
-/

namespace A111859.P6040205995615052344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336107 (A000740 (Nat.sqrt (n + 2))).toNat

end

end A111859.P6040205995615052344

namespace A111859

/-- `A336107(A000740(floor(sqrt(n+2))))` -/
def P6040205995615052344.Spec : Prop :=
  ∀ n, P6040205995615052344.a n = A111859 (n + 1)

end A111859

/-! ## A111859.P9432286037979272175

`∑[A025469(A208751(n+1))]`
-/

namespace A111859.P9432286037979272175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 (A208751 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111859.P9432286037979272175

namespace A111859

/-- `∑[A025469(A208751(n+1))]` -/
def P9432286037979272175.Spec : Prop :=
  ∀ n, P9432286037979272175.a n = A111859 (n + 1)

end A111859

/-! ## A111859.P10027757903443775170

`∑[and(A010052(n+2), A326876(n+1))]`
-/

namespace A111859.P10027757903443775170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010052 (n + 2)) (A326876 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111859.P10027757903443775170

namespace A111859

/-- `∑[and(A010052(n+2), A326876(n+1))]` -/
def P10027757903443775170.Spec : Prop :=
  ∀ n, P10027757903443775170.a n = A111859 (n + 1)

end A111859

/-! ## A111859.P8457484761927447503

`∑[A243822(∑{e}[A238279(3*(n+1)), #])]`
-/

namespace A111859.P8457484761927447503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238279 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243822 (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111859.P8457484761927447503

namespace A111859

/-- `∑[A243822(∑{e}[A238279(3*(n+1)), #])]` -/
def P8457484761927447503.Spec : Prop :=
  ∀ n, P8457484761927447503.a n = A111859 (n + 1)

end A111859

/-! ## A111859.P5187847013764415714

`floor(A001313(n)/A098194(n+1))`
-/

namespace A111859.P5187847013764415714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001313 n : ℚ) / (A098194 (n + 1) : ℚ)⌋

end

end A111859.P5187847013764415714

namespace A111859

/-- `floor(A001313(n)/A098194(n+1))` -/
def P5187847013764415714.Spec : Prop :=
  ∀ n, P5187847013764415714.a n = A111859 (n + 1)

end A111859

/-!
# A111861: a(n) is the number of integers k > 0 such that (n+k)/(n-k)^2 is an integer.

The programs for A111861, there is no canonical definition to state claims against.
-/

/-! ## A111861.P17412290814280187734

`A010054(n)+A002828(A084184(n))`
-/

namespace A111861.P17412290814280187734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + A002828 (A084184 n).toNat

end

end A111861.P17412290814280187734

/-!
# A111862: Second digit after decimal point of square root of n in decimal representation.

The programs for A111862, the canonical program `A111862.P16889340879789303359` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111862 has offset 1).

The definition of A111862 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111862.P16889340879789303359

`A023961(10*10*(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A111862

/-- `A023961(10*10*(n+1))` -/
def P16889340879789303359.Spec : Prop :=
  ∀ n, P16889340879789303359.a n = A111862 (n + 1)

theorem P16889340879789303359.correct : P16889340879789303359.Spec := by
  intro n
  simp only [A111862, Nat.add_sub_cancel]

end A111862

/-! ## A111862.P9858493966030981926

`dr(A023961(A044332(n+1)))`
-/

namespace A111862.P9858493966030981926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A023961 (A044332 (n + 1)).toNat)

end

end A111862.P9858493966030981926

namespace A111862

/-- `dr(A023961(A044332(n+1)))` -/
def P9858493966030981926.Spec : Prop :=
  ∀ n, (P9858493966030981926.a n : ℤ) = A111862 (n + 1)

end A111862

/-! ## A111862.P5399140350263679335

`A023961(A044332(n+1))/A054977(n)`
-/

namespace A111862.P5399140350263679335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023961 (A044332 (n + 1)).toNat : ℚ) / (A054977 n : ℚ)

end

end A111862.P5399140350263679335

namespace A111862

/-- `A023961(A044332(n+1))/A054977(n)` -/
def P5399140350263679335.Spec : Prop :=
  ∀ n, P5399140350263679335.a n = (A111862 (n + 1) : ℚ)

end A111862

/-! ## A111862.P16660490163720452793

`A023961(A044332(n+1))/A158388(n)`
-/

namespace A111862.P16660490163720452793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023961 (A044332 (n + 1)).toNat : ℚ) / (A158388 n : ℚ)

end

end A111862.P16660490163720452793

namespace A111862

/-- `A023961(A044332(n+1))/A158388(n)` -/
def P16660490163720452793.Spec : Prop :=
  ∀ n, P16660490163720452793.a n = (A111862 (n + 1) : ℚ)

end A111862

/-! ## A111862.P17611020275875561784

`A023961(A044332(n+1))+char[A017300(n)]`
-/

namespace A111862.P17611020275875561784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017300 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (A044332 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A111862.P17611020275875561784

namespace A111862

/-- `A023961(A044332(n+1))+char[A017300(n)]` -/
def P17611020275875561784.Spec : Prop :=
  ∀ n, P17611020275875561784.a n = A111862 (n + 1)

end A111862

/-! ## A111862.P7440138310115096192

`A023961(A044332(n+1))/A007318(C(2, n))`
-/

namespace A111862.P7440138310115096192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023961 (A044332 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A111862.P7440138310115096192

namespace A111862

/-- `A023961(A044332(n+1))/A007318(C(2, n))` -/
def P7440138310115096192.Spec : Prop :=
  ∀ n, P7440138310115096192.a n = (A111862 (n + 1) : ℚ)

end A111862

/-! ## A111862.P12256390044564157694

`A023961(A044332(n+1))^A014963(∑[n+1])`
-/

namespace A111862.P12256390044564157694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023961 (A044332 (n + 1)).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A111862.P12256390044564157694

namespace A111862

/-- `A023961(A044332(n+1))^A014963(∑[n+1])` -/
def P12256390044564157694.Spec : Prop :=
  ∀ n, P12256390044564157694.a n = (A111862 (n + 1) : ℚ)

end A111862

/-! ## A111862.P14969682764635529031

`A023961(A044332(n+1))+char[A057445(n+1)]`
-/

namespace A111862.P14969682764635529031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057445 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (A044332 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A111862.P14969682764635529031

namespace A111862

/-- `A023961(A044332(n+1))+char[A057445(n+1)]` -/
def P14969682764635529031.Spec : Prop :=
  ∀ n, P14969682764635529031.a n = A111862 (n + 1)

end A111862

/-! ## A111862.P2360967969483247405

`A023961(A044332(n+1))+char[A133064(n+1)]`
-/

namespace A111862.P2360967969483247405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133064 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (A044332 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A111862.P2360967969483247405

namespace A111862

/-- `A023961(A044332(n+1))+char[A133064(n+1)]` -/
def P2360967969483247405.Spec : Prop :=
  ∀ n, P2360967969483247405.a n = A111862 (n + 1)

end A111862

/-! ## A111862.P1923665387083168234

`A023961(A044332(n+1))/A000041(C(n, n²))`
-/

namespace A111862.P1923665387083168234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023961 (A044332 (n + 1)).toNat : ℚ) / (A000041 (Nat.choose n (n ^ 2)) : ℚ)

end

end A111862.P1923665387083168234

namespace A111862

/-- `A023961(A044332(n+1))/A000041(C(n, n²))` -/
def P1923665387083168234.Spec : Prop :=
  ∀ n, P1923665387083168234.a n = (A111862 (n + 1) : ℚ)

end A111862

/-! ## A111862.P12889720744608483522

`A023961(A044332(n+1))/gcd(2, A000040(n+1))`
-/

namespace A111862.P12889720744608483522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023961 (A044332 (n + 1)).toNat : ℚ) / (Int.gcd 2 (A000040 (n + 1)) : ℚ)

end

end A111862.P12889720744608483522

namespace A111862

/-- `A023961(A044332(n+1))/gcd(2, A000040(n+1))` -/
def P12889720744608483522.Spec : Prop :=
  ∀ n, P12889720744608483522.a n = (A111862 (n + 1) : ℚ)

end A111862

/-! ## A111862.P1760478779890443043

`A023961(A044332(n+1))/A000108(C(2, n+2))`
-/

namespace A111862.P1760478779890443043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023961 (A044332 (n + 1)).toNat : ℚ) / (A000108 (Nat.choose 2 (n + 2)) : ℚ)

end

end A111862.P1760478779890443043

namespace A111862

/-- `A023961(A044332(n+1))/A000108(C(2, n+2))` -/
def P1760478779890443043.Spec : Prop :=
  ∀ n, P1760478779890443043.a n = (A111862 (n + 1) : ℚ)

end A111862

/-! ## A111862.P4080814596697458950

`A023961(A044332(n+1))/A007318(and(3, 1-n))`
-/

namespace A111862.P4080814596697458950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023961 (A044332 (n + 1)).toNat : ℚ) / (A007318 (Int.land 3 (1 - (n : ℤ))).toNat : ℚ)

end

end A111862.P4080814596697458950

namespace A111862

/-- `A023961(A044332(n+1))/A007318(and(3, 1-n))` -/
def P4080814596697458950.Spec : Prop :=
  ∀ n, P4080814596697458950.a n = (A111862 (n + 1) : ℚ)

end A111862

/-! ## A111862.P15561920843030195620

`A023961(A044332(n+1))^A000108(and(1, 1-n))`
-/

namespace A111862.P15561920843030195620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023961 (A044332 (n + 1)).toNat : ℚ) ^ (A000108 (Int.land 1 (1 - (n : ℤ))).toNat : ℤ)

end

end A111862.P15561920843030195620

namespace A111862

/-- `A023961(A044332(n+1))^A000108(and(1, 1-n))` -/
def P15561920843030195620.Spec : Prop :=
  ∀ n, P15561920843030195620.a n = (A111862 (n + 1) : ℚ)

end A111862

/-! ## A111862.P16184953389357250937

`A023961(A044332(n+1))/A000045(gcd(n, n+1))`
-/

namespace A111862.P16184953389357250937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023961 (A044332 (n + 1)).toNat : ℚ) / (A000045 (Nat.gcd n (n + 1)) : ℚ)

end

end A111862.P16184953389357250937

namespace A111862

/-- `A023961(A044332(n+1))/A000045(gcd(n, n+1))` -/
def P16184953389357250937.Spec : Prop :=
  ∀ n, P16184953389357250937.a n = (A111862 (n + 1) : ℚ)

end A111862

/-! ## A111862.P10797206908846502134

`A023961(A044332(n+1))/A000045(n²%(n+1)+1)`
-/

namespace A111862.P10797206908846502134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023961 (A044332 (n + 1)).toNat : ℚ) / (A000045 (n ^ 2 % (n + 1) + 1) : ℚ)

end

end A111862.P10797206908846502134

namespace A111862

/-- `A023961(A044332(n+1))/A000045(n²%(n+1)+1)` -/
def P10797206908846502134.Spec : Prop :=
  ∀ n, P10797206908846502134.a n = (A111862 (n + 1) : ℚ)

end A111862

/-!
# A111863: a(n) is the smallest prime factor of 6*n-1 that is congruent to 5 modulo 6.

The programs for A111863, there is no canonical definition to state claims against.
-/

/-! ## A111863.P10272075596677051945

`A028233(∏{p}[A016969(n), A170825(#)])`
-/

namespace A111863.P10272075596677051945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A170825 p).toNat

end

end A111863.P10272075596677051945

/-! ## A111863.P4307232705033812793

`A020639(A170825(A016969(n)))`
-/

namespace A111863.P4307232705033812793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A170825 (A016969 n).toNat).toNat

end

end A111863.P4307232705033812793

/-! ## A111863.P14627645431692335739

`A020639(A170825(Δ[A045944(n)]))`
-/

namespace A111863.P14627645431692335739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A170825 (f1 (n + 1) - f1 n).toNat).toNat

end

end A111863.P14627645431692335739

/-! ## A111863.P10966601786503410364

`A020639(A170825(Δ[A056109(n)]))`
-/

namespace A111863.P10966601786503410364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A170825 (f1 (n + 1) - f1 n).toNat).toNat

end

end A111863.P10966601786503410364

/-! ## A111863.P8130993070330809423

`A020639(A170825(Δ[A016778(n)]))`
-/

namespace A111863.P8130993070330809423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A170825 (f1 (n + 1) - f1 n).toNat).toNat

end

end A111863.P8130993070330809423

/-!
# A111864: Define the first three terms to be 1, 1 and 1. All the other terms are obtained by concatenating the three previous terms.

The programs for A111864, the canonical program `A111864.P59391451107892372` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111864 has offset 0).

The definition of A111864 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111864.P59391451107892372

`A002275(A000213(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A111864

/-- `A002275(A000213(n))` -/
def P59391451107892372.Spec : Prop :=
  ∀ n, P59391451107892372.a n = A111864 n

theorem P59391451107892372.correct : P59391451107892372.Spec := by
  intro n
  simp only [A111864]

end A111864

/-! ## A111864.P7701047844962789025

`A000042(Δ[Δ[A305442(n)]])`
-/

namespace A111864.P7701047844962789025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305442 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (f1 (n + 1) - f1 n).toNat

end

end A111864.P7701047844962789025

namespace A111864

/-- `A000042(Δ[Δ[A305442(n)]])` -/
def P7701047844962789025.Spec : Prop :=
  ∀ n, P7701047844962789025.a n = A111864 n

end A111864

/-! ## A111864.P4256205403143503166

`A002275(Δ[Δ[A305442(n)]])`
-/

namespace A111864.P4256205403143503166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305442 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (f1 (n + 1) - f1 n).toNat

end

end A111864.P4256205403143503166

namespace A111864

/-- `A002275(Δ[Δ[A305442(n)]])` -/
def P4256205403143503166.Spec : Prop :=
  ∀ n, P4256205403143503166.a n = A111864 n

end A111864

/-!
# A111866: Divide n! repeatedly by i! for i from floor(n/2) down through 2; a(n) = remaining quotient.

The programs for A111866, there is no canonical definition to state claims against.
-/

/-! ## A111866.P13978572490516624732

`A055773(n)*A059895(A011782(n))`
-/

namespace A111866.P13978572490516624732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055773 n * A059895 (A011782 n).toNat

end

end A111866.P13978572490516624732

/-! ## A111866.P14064365941983656030

`A055229(A022133(n))*A055773(n)`
-/

namespace A111866.P14064365941983656030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (A022133 n).toNat * A055773 n

end

end A111866.P14064365941983656030

/-! ## A111866.P4600938347856934933

`A000188(A152046(n))*A055773(n)`
-/

namespace A111866.P4600938347856934933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A152046 n).toNat * A055773 n

end

end A111866.P4600938347856934933

/-! ## A111866.P8072480643938444039

`A055773(n)*A295657(A000051(n))`
-/

namespace A111866.P8072480643938444039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055773 n * A295657 (A000051 n).toNat

end

end A111866.P8072480643938444039

/-! ## A111866.P2085232989683226819

`A055773(n)*A102097(A214827(n))`
-/

namespace A111866.P2085232989683226819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055773 n * A102097 (A214827 n).toNat

end

end A111866.P2085232989683226819

/-!
# A111867: Number of different vowels in the name of n (in Spanish).

The programs for A111867, there is no canonical definition to state claims against.
-/

/-! ## A111867.P2998107832025858176

`A001221(A370802(3*n+5)-A059851(n))`
-/

namespace A111867.P2998107832025858176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A370802 (3 * n + 5) - A059851 n).toNat

end

end A111867.P2998107832025858176

/-!
# A111868: The work performed by a function f:{1,...,n} -> {1,...,n} is defined to be work(f) = Sum_{i=1..n} |i - f(i)|; a(n) is equal to sum(work(f)) where the sum is over all functions f:{1,...,n}->{1,...,n}.

The programs for A111868, the canonical program `A111868.P16300409696673994639` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111868 has offset 1).

The definition of A111868 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111868.P16300409696673994639

`(n+1)^(n+1)*((n+1)²-1)/3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A111868

/-- `(n+1)^(n+1)*((n+1)²-1)/3` -/
def P16300409696673994639.Spec : Prop :=
  ∀ n, P16300409696673994639.a n = (A111868 (n + 1) : ℚ)

end A111868

/-! ## A111868.P2958918924906206379

`2*n*A081132(n)/3`
-/

namespace A111868.P2958918924906206379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * ((n : ℤ) * A081132 n) : ℚ) / 3

end

end A111868.P2958918924906206379

namespace A111868

/-- `2*n*A081132(n)/3` -/
def P2958918924906206379.Spec : Prop :=
  ∀ n, P2958918924906206379.a n = (A111868 (n + 1) : ℚ)

end A111868

/-! ## A111868.P10417620925617160013

`n*(n+2)*A000312(n+1)/3`
-/

namespace A111868.P10417620925617160013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 2) : ℤ) * A000312 (n + 1) : ℚ) / 3

end

end A111868.P10417620925617160013

namespace A111868

/-- `n*(n+2)*A000312(n+1)/3` -/
def P10417620925617160013.Spec : Prop :=
  ∀ n, P10417620925617160013.a n = (A111868 (n + 1) : ℚ)

end A111868

/-! ## A111868.P10268724397253788097

`A000312(n+1)*A005563(n)/3`
-/

namespace A111868.P10268724397253788097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000312 (n + 1) * A005563 n : ℚ) / 3

end

end A111868.P10268724397253788097

namespace A111868

/-- `A000312(n+1)*A005563(n)/3` -/
def P10268724397253788097.Spec : Prop :=
  ∀ n, P10268724397253788097.a n = (A111868 (n + 1) : ℚ)

end A111868

/-! ## A111868.P15524937065256702853

`(∑[A002378(n)]*A000169(n+1))%A061718(n+1)`
-/

namespace A111868.P15524937065256702853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j) * A000169 (n + 1)) (A061718 (n + 1))

end

end A111868.P15524937065256702853

namespace A111868

/-- `(∑[A002378(n)]*A000169(n+1))%A061718(n+1)` -/
def P15524937065256702853.Spec : Prop :=
  ∀ n, P15524937065256702853.a n = A111868 (n + 1)

end A111868

/-!
# A111869: Least number k such that C(2k,k) is divisible by n^2.

The programs for A111869, there is no canonical definition to state claims against.
-/

/-! ## A111869.P14015209555712055533

`A073078((n+1)²)`
-/

namespace A111869.P14015209555712055533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073078 ((n + 1) ^ 2)

end

end A111869.P14015209555712055533

/-! ## A111869.P1784948444102319401

`or(char[17], A073078(∑[2*n+1]))`
-/

namespace A111869.P1784948444102319401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A073078 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A111869.P1784948444102319401

/-! ## A111869.P17558004777163901941

`∑{d}[A073078(∑[2*n+1]), A000010(#)]`
-/

namespace A111869.P17558004777163901941
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073078 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A111869.P17558004777163901941

/-! ## A111869.P14103511782166463835

`A007318(∑[n])*A073078(∑[2*n+1])`
-/

namespace A111869.P14103511782166463835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A073078 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A111869.P14103511782166463835

/-! ## A111869.P917634750753543949

`A073078(∑[2*n+1])%A000041(n+5)`
-/

namespace A111869.P917634750753543949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073078 (∑ j ∈ Finset.range (n + 1), f1 j)) (A000041 (n + 5))

end

end A111869.P917634750753543949

/-!
# A111870: Prime p with prime gap q - p of n-th record merit, where q is smallest prime larger than p and the merit of a prime gap is (q-p)/log(p).

The programs for A111870, there is no canonical definition to state claims against.
-/

/-! ## A111870.P16717865837900954691

`A277552(n+1)-A111871(n+1)`
-/

namespace A111870.P16717865837900954691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277552 (n + 1) - A111871 (n + 1)

end

end A111870.P16717865837900954691

/-! ## A111870.P17799364196629269813

`record[A002386(n+1)*A316917(n+1)]`
-/

namespace A111870.P17799364196629269813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002386 (n + 1) * A316917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111870.P17799364196629269813

/-! ## A111870.P9159222944267173523

`A205827(round(n*ratio[n+3])+1)`
-/

namespace A111870.P9159222944267173523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205827 (SequenceMachineLib.roundAway ((n : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))) + 1).toNat

end

end A111870.P9159222944267173523

/-! ## A111870.P13946943563850727627

`A104138(A111871(n+1)-1)`
-/

namespace A111870.P13946943563850727627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104138 (A111871 (n + 1) - 1).toNat

end

end A111870.P13946943563850727627

/-! ## A111870.P12427816127291512482

`A277552(n+1)-A005250(record[(n+1)*A316917(n+1)])`
-/

namespace A111870.P12427816127291512482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A316917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277552 (n + 1) - A005250 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A111870.P12427816127291512482

/-!
# A111871: Prime gaps q-p with n-th record merit referred to in A111870.

The programs for A111871, there is no canonical definition to state claims against.
-/

/-! ## A111871.P13981979120264723166

`A277552(n+1)-A111870(n+1)`
-/

namespace A111871.P13981979120264723166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277552 (n + 1) - A111870 (n + 1)

end

end A111871.P13981979120264723166

/-! ## A111871.P5170860518081474503

`A005250(record[(n+1)*A316917(n+1)])`
-/

namespace A111871.P5170860518081474503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A316917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005250 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A111871.P5170860518081474503

/-! ## A111871.P16869758127730490249

`record[A029578(A316917(n+1)+A005250(n+1))]`
-/

namespace A111871.P16869758127730490249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A316917 (n + 1) + A005250 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111871.P16869758127730490249

/-! ## A111871.P17491842093381197816

`A000101(eq[1, A316917(n+1)]+1)-A111870(n+1)`
-/

namespace A111871.P17491842093381197816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - A111870 (n + 1)

end

end A111871.P17491842093381197816

/-! ## A111871.P13036428452282328370

`A000101(record[(n+1)*A316917(n+1)])-A111870(n+1)`
-/

namespace A111871.P13036428452282328370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A316917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000101 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A111870 (n + 1)

end

end A111871.P13036428452282328370

/-!
# A111873: The work performed by a partial function f:{1,...,n}->{1,...,n} is defined to be work(f)=sum(|i-f(i)|,i in dom(f)); a(n) is equal to sum(work(f)) where the sum is over all partial functions f:{1,...,n}->{1,...,n}.

The programs for A111873, the canonical program `A111873.P17941693552141010431` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111873 has offset 1).

The definition of A111873 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111873.P17941693552141010431

`(n+2)^(n+1)*((n+1)²-(n+1))/3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A111873

/-- `(n+2)^(n+1)*((n+1)²-(n+1))/3` -/
def P17941693552141010431.Spec : Prop :=
  ∀ n, P17941693552141010431.a n = (A111873 (n + 1) : ℚ)

end A111873

/-! ## A111873.P3785143911370403022

`2*n*A081131(n+2)/3`
-/

namespace A111873.P3785143911370403022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) * A081131 (n + 2) : ℚ) / 3

end

end A111873.P3785143911370403022

namespace A111873

/-- `2*n*A081131(n+2)/3` -/
def P3785143911370403022.Spec : Prop :=
  ∀ n, P3785143911370403022.a n = (A111873 (n + 1) : ℚ)

end A111873

/-! ## A111873.P1767401259238233852

`∑[2*n]*A000169(n+2)/3`
-/

namespace A111873.P1767401259238233852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000169 (n + 2) : ℚ) / 3

end

end A111873.P1767401259238233852

namespace A111873

/-- `∑[2*n]*A000169(n+2)/3` -/
def P1767401259238233852.Spec : Prop :=
  ∀ n, P1767401259238233852.a n = (A111873 (n + 1) : ℚ)

end A111873

/-! ## A111873.P3542688119507926035

`(n+2)^(n+1)*A046092(n)/6`
-/

namespace A111873.P3542688119507926035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ (n + 1) : ℤ) * A046092 n : ℚ) / 6

end

end A111873.P3542688119507926035

namespace A111873

/-- `(n+2)^(n+1)*A046092(n)/6` -/
def P3542688119507926035.Spec : Prop :=
  ∀ n, P3542688119507926035.a n = (A111873 (n + 1) : ℚ)

end A111873

/-! ## A111873.P3664172381424794295

`record[A069971(n)*A232006(n)]`
-/

namespace A111873.P3664172381424794295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069971 n * A232006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111873.P3664172381424794295

namespace A111873

/-- `record[A069971(n)*A232006(n)]` -/
def P3664172381424794295.Spec : Prop :=
  ∀ n, P3664172381424794295.a n = A111873 (n + 1)

end A111873

/-!
# A111874: The work performed by a partial function f:{1,...,n}->{1,...,n} is defined to be work(f)=sum(|i-f(i)|,i in dom(f)); a(n) is equal to sum(work(f)) where the sum is over all injective partial functions f:{1,...,n}->{1,...,n}.

The programs for A111874, there is no canonical definition to state claims against.
-/

/-! ## A111874.P2059772003812754184

`∑[∑[2*n]]*A002720(n)`
-/

namespace A111874.P2059772003812754184
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A002720 n

end

end A111874.P2059772003812754184

/-! ## A111874.P6334502707508311056

`(A097662(n)+1)*∑[∑[2*n]]`
-/

namespace A111874.P6334502707508311056
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097662 n + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A111874.P6334502707508311056

/-! ## A111874.P17672601254264567522

`∑[∑[2*n]]*A056953(2*n)`
-/

namespace A111874.P17672601254264567522
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A056953 (2 * n)

end

end A111874.P17672601254264567522

/-! ## A111874.P3775582117475587752

`∑[∑[2*n]]*A176120(∑[n]+n)`
-/

namespace A111874.P3775582117475587752
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A176120 (∑ j ∈ Finset.range (n + 1), f3 j + n)

end

end A111874.P3775582117475587752

/-! ## A111874.P6475339211286658864

`2*(A123511(n)-A123510(n))`
-/

namespace A111874.P6475339211286658864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A123511 n - A123510 n)

end

end A111874.P6475339211286658864

/-!
# A111876: Denominator of Sum_{k = 0..n} 1/((k+1)*(2*k+1)).

The programs for A111876, there is no canonical definition to state claims against.
-/

/-! ## A111876.P17358911887675310863

`A082688(n+1)/2`
-/

namespace A111876.P17358911887675310863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082688 (n + 1) : ℚ) / 2

end

end A111876.P17358911887675310863

/-! ## A111876.P11585999130827074363

`A058312(2*(n+1))/2`
-/

namespace A111876.P11585999130827074363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058312 (2 * (n + 1)) : ℚ) / 2

end

end A111876.P11585999130827074363

/-! ## A111876.P14899261693362594992

`floor(A058312(n+2+n)/2)`
-/

namespace A111876.P14899261693362594992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A058312 (n + 2 + n) : ℚ) / 2⌋

end

end A111876.P14899261693362594992

/-! ## A111876.P13421105199472655033

`ceil(A058312(Δ[n²]+1)/2)`
-/

namespace A111876.P13421105199472655033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A058312 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat : ℚ) / 2⌉

end

end A111876.P13421105199472655033

/-! ## A111876.P7786836149389736225

`ceil(A082688(Δ[n²]-n)/2)`
-/

namespace A111876.P7786836149389736225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A082688 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2⌉

end

end A111876.P7786836149389736225

/-!
# A111877: a(n) = denominator of 3*Sum_{j=0..n+1} 1/(2*j+1).

The programs for A111877, there is no canonical definition to state claims against.
-/

/-! ## A111877.P9627331377369417804

`A035047(2*n+3)/3`
-/

namespace A111877.P9627331377369417804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035047 (2 * n + 3) : ℚ) / 3

end

end A111877.P9627331377369417804

/-! ## A111877.P9812121270275918224

`∏[A014963(2*n+3)%A095110(n+1)]`
-/

namespace A111877.P9812121270275918224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (2 * n + 3)) (A095110 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A111877.P9812121270275918224

/-! ## A111877.P8480961632872446302

`∏[gcd(A005906(2*(n+1)), A093756(n+2))]`
-/

namespace A111877.P8480961632872446302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005906 (2 * (n + 1))) (A093756 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A111877.P8480961632872446302

/-! ## A111877.P14866589526004920871

`A025547(n+2)/A020639(A025549(n+5))`
-/

namespace A111877.P14866589526004920871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025547 (n + 2) : ℚ) / (A020639 (A025549 (n + 5)).toNat : ℚ)

end

end A111877.P14866589526004920871

/-!
# A111878: a(n) = A111877(n+1)/5.

The programs for A111878, there is no canonical definition to state claims against.
-/

/-! ## A111878.P18135013883076399873

`A111877(n+1)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A111878.P18135013883076399873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111877 (n + 1) : ℚ) / 5

end

end A111878.P18135013883076399873

/-! ## A111878.P16628714592469338956

`floor((∏{p}[A020918(n), #]+1)/2)`
-/

namespace A111878.P16628714592469338956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p + 1 : ℕ) : ℚ) / 2⌋

end

end A111878.P16628714592469338956

/-! ## A111878.P15037286651032263546

`∏{p}[∏[A059247(2*n+5)], #]`
-/

namespace A111878.P15037286651032263546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059247 (2 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A111878.P15037286651032263546

/-!
# A111879: Numerators of array which counts positive rational numbers (not including natural numbers).

The programs for A111879, there is no canonical definition to state claims against.
-/

/-! ## A111879.P13730826910322147640

`A038566(comp[A002088(n)])`
-/

namespace A111879.P13730826910322147640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A111879.P13730826910322147640

/-! ## A111879.P75597263700963003

`A020652(comp[A015614(n+1)])`
-/

namespace A111879.P75597263700963003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A111879.P75597263700963003

/-! ## A111879.P2360053551979094763

`A020652(comp[A002088(n)-1])`
-/

namespace A111879.P2360053551979094763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A111879.P2360053551979094763

/-! ## A111879.P2926160538312155525

`A038566(comp[A005728(n)-1])`
-/

namespace A111879.P2926160538312155525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A111879.P2926160538312155525

/-! ## A111879.P11564361894211327896

`A020652(lt[1, A020652(n+1)])`
-/

namespace A111879.P11564361894211327896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A111879.P11564361894211327896

/-! ## A111879.P15033348414896223611

`A037161(lt[1, A037161(n+1)])`
-/

namespace A111879.P15033348414896223611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A111879.P15033348414896223611

/-! ## A111879.P8831066264341273909

`A038566(lt[1, A038566(n+1)])`
-/

namespace A111879.P8831066264341273909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A111879.P8831066264341273909

/-! ## A111879.P15503694366409034924

`A020652(comp[∑[A000010(n+1)]-1])`
-/

namespace A111879.P15503694366409034924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A111879.P15503694366409034924

/-!
# A111880: Denominators of array which counts positive rational numbers (not including natural numbers).

The programs for A111880, there is no canonical definition to state claims against.
-/

/-! ## A111880.P5601646415156659963

`A020653(comp[A015614(n+1)])`
-/

namespace A111880.P5601646415156659963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020653 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A111880.P5601646415156659963

/-! ## A111880.P13302383542552148105

`A020653(comp[A002088(n)-1])`
-/

namespace A111880.P13302383542552148105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020653 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A111880.P13302383542552148105

/-! ## A111880.P6828550888246623933

`A020653(comp[A005728(n)-2])`
-/

namespace A111880.P6828550888246623933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020653 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A111880.P6828550888246623933

/-! ## A111880.P14180539355128621788

`A020653(lt[0, A214803(n+1)])`
-/

namespace A111880.P14180539355128621788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A111880.P14180539355128621788

/-! ## A111880.P10914310383654938718

`A020653(lt[1, A020652(n+1)])`
-/

namespace A111880.P10914310383654938718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A111880.P10914310383654938718

/-! ## A111880.P10536131538221410498

`A020653(lt[1, A038566(n+2)])`
-/

namespace A111880.P10536131538221410498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A111880.P10536131538221410498

/-! ## A111880.P5832424294794408790

`filter[A020653(n+1), A354807(#)]`
-/

namespace A111880.P5832424294794408790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354807 (f1 j).toNat = 1) n)

end

end A111880.P5832424294794408790

/-! ## A111880.P17792121298842486880

`A020653(comp[Δ[A103116(n)]-1])`
-/

namespace A111880.P17792121298842486880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103116 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020653 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A111880.P17792121298842486880

/-! ## A111880.P2223165769607684491

`A020653(comp[A015613(n+1)+n])`
-/

namespace A111880.P2223165769607684491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015613 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020653 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A111880.P2223165769607684491

/-! ## A111880.P12568659061259729569

`A020653(lt[1, A020653(n+1)]+1)`
-/

namespace A111880.P12568659061259729569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A111880.P12568659061259729569

/-!
# A111881: Numerators of row sums of array of ratios A111879(n,k)/A111880(n,k).

The programs for A111881, there is no canonical definition to state claims against.
-/

/-! ## A111881.P961400789946282309

`A214685(Δ[A006784(n+1)*A063192(n+1)])`
-/

namespace A111881.P961400789946282309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006784 (n + 1) * A063192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214685 (f1 (n + 1) - f1 n).toNat

end

end A111881.P961400789946282309

/-!
# A111882: Row sums of triangle A111595 (normalized rescaled squared Hermite polynomials).

The programs for A111882, the canonical program `A111882.P12209817337723100160` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111882 has offset 0).

The definition of A111882 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001464, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A111882.P12209817337723100160

`A001464(n)²`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A111882

/-- `A001464(n)²` -/
def P12209817337723100160.Spec : Prop :=
  ∀ n, P12209817337723100160.a n = A111882 n

theorem P12209817337723100160.correct : P12209817337723100160.Spec := by
  intro n
  simp only [A111882]

end A111882

/-! ## A111882.P4488752633872170827

`A159834(∑[n])²`
-/

namespace A111882.P4488752633872170827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159834 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A111882.P4488752633872170827

namespace A111882

/-- `A159834(∑[n])²` -/
def P4488752633872170827.Spec : Prop :=
  ∀ n, P4488752633872170827.a n = A111882 n

end A111882

/-! ## A111882.P14178727127806633155

`(A328141(n+1)/2)²`
-/

namespace A111882.P14178727127806633155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A328141 (n + 1) : ℚ) / 2) ^ 2

end

end A111882.P14178727127806633155

namespace A111882

/-- `(A328141(n+1)/2)²` -/
def P14178727127806633155.Spec : Prop :=
  ∀ n, P14178727127806633155.a n = (A111882 n : ℚ)

end A111882

/-! ## A111882.P10968704135930259926

`Δ[∑[A328141(n)]/2]²`
-/

namespace A111882.P10968704135930259926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328141 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A111882.P10968704135930259926

namespace A111882

/-- `Δ[∑[A328141(n)]/2]²` -/
def P10968704135930259926.Spec : Prop :=
  ∀ n, P10968704135930259926.a n = (A111882 n : ℚ)

end A111882

/-! ## A111882.P5964546171911346262

`A334568(∑[n+2]-1)²`
-/

namespace A111882.P5964546171911346262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334568 (∑ j ∈ Finset.range (n + 1), f1 j - 1) ^ 2

end

end A111882.P5964546171911346262

namespace A111882

/-- `A334568(∑[n+2]-1)²` -/
def P5964546171911346262.Spec : Prop :=
  ∀ n, P5964546171911346262.a n = A111882 n

end A111882

/-! ## A111882.P6815987756218138269

`A362277(∑[n+2]-1)²`
-/

namespace A111882.P6815987756218138269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362277 (∑ j ∈ Finset.range (n + 1), f1 j - 1) ^ 2

end

end A111882.P6815987756218138269

namespace A111882

/-- `A362277(∑[n+2]-1)²` -/
def P6815987756218138269.Spec : Prop :=
  ∀ n, P6815987756218138269.a n = A111882 n

end A111882

/-! ## A111882.P15601645111655424923

`(Δ[A051684(n+1)]/(n+1))²`
-/

namespace A111882.P15601645111655424923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051684 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A111882.P15601645111655424923

namespace A111882

/-- `(Δ[A051684(n+1)]/(n+1))²` -/
def P15601645111655424923.Spec : Prop :=
  ∀ n, P15601645111655424923.a n = (A111882 n : ℚ)

end A111882

/-! ## A111882.P15460083190131987990

`(A000704(n)-A001465(n))²`
-/

namespace A111882.P15460083190131987990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000704 n - A001465 n) ^ 2

end

end A111882.P15460083190131987990

namespace A111882

/-- `(A000704(n)-A001465(n))²` -/
def P15460083190131987990.Spec : Prop :=
  ∀ n, P15460083190131987990.a n = A111882 n

end A111882

/-! ## A111882.P7385966463568320797

`A001464(n)*A159834(∑[n])`
-/

namespace A111882.P7385966463568320797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001464 n * A159834 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111882.P7385966463568320797

namespace A111882

/-- `A001464(n)*A159834(∑[n])` -/
def P7385966463568320797.Spec : Prop :=
  ∀ n, P7385966463568320797.a n = A111882 n

end A111882

/-! ## A111882.P12041775018150509460

`A001464(n)^A000005(A007918(n))`
-/

namespace A111882.P12041775018150509460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001464 n : ℚ) ^ (A000005 (A007918 n).toNat : ℤ)

end

end A111882.P12041775018150509460

namespace A111882

/-- `A001464(n)^A000005(A007918(n))` -/
def P12041775018150509460.Spec : Prop :=
  ∀ n, P12041775018150509460.a n = (A111882 n : ℚ)

end A111882

/-!
# A111883: Unsigned row sums of triangle A111595 (normalized rescaled squared Hermite polynomials).

The programs for A111883, the canonical program `A111883.P5174649499070392793` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111883 has offset 0).

The definition of A111883 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111883.P5174649499070392793

`A000085(n)²`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A111883

/-- `A000085(n)²` -/
def P5174649499070392793.Spec : Prop :=
  ∀ n, P5174649499070392793.a n = A111883 n

theorem P5174649499070392793.correct : P5174649499070392793.Spec := by
  intro n
  simp only [A111883]

end A111883

/-! ## A111883.P7556449419291886186

`∏[(n-1)/a(n-1)+1]²` with `a(0)=1`
-/

namespace A111883.P7556449419291886186
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A111883.P7556449419291886186

namespace A111883

/-- `∏[(n-1)/a(n-1)+1]²` -/
def P7556449419291886186.Spec : Prop :=
  ∀ n, P7556449419291886186.a n = (A111883 n : ℚ)

end A111883

/-! ## A111883.P5819048416649541729

`∏[(n-1)/a(n-1)+1]^2` with `a(0)=1`
-/

namespace A111883.P5819048416649541729
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A111883.P5819048416649541729

namespace A111883

/-- `∏[(n-1)/a(n-1)+1]^2` -/
def P5819048416649541729.Spec : Prop :=
  ∀ n, P5819048416649541729.a n = (A111883 n : ℚ)

end A111883

/-! ## A111883.P8790301820121040507

`∏[abs(1-a(n-1)-n)/a(n-1)]²` with `a(0)=1`
-/

namespace A111883.P8790301820121040507
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  |1 - f1 (n - 1) - (n : ℚ)| / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A111883.P8790301820121040507

namespace A111883

/-- `∏[abs(1-a(n-1)-n)/a(n-1)]²` -/
def P8790301820121040507.Spec : Prop :=
  ∀ n, P8790301820121040507.a n = (A111883 n : ℚ)

end A111883

/-! ## A111883.P4381786330617776968

`A070895(∑[n])²`
-/

namespace A111883.P4381786330617776968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070895 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A111883.P4381786330617776968

namespace A111883

/-- `A070895(∑[n])²` -/
def P4381786330617776968.Spec : Prop :=
  ∀ n, P4381786330617776968.a n = A111883 n

end A111883

/-! ## A111883.P14018593213450562476

`A099020(∑[n])²`
-/

namespace A111883.P14018593213450562476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099020 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A111883.P14018593213450562476

namespace A111883

/-- `A099020(∑[n])²` -/
def P14018593213450562476.Spec : Prop :=
  ∀ n, P14018593213450562476.a n = A111883 n

end A111883

/-! ## A111883.P11354055430352418476

`record[Δ[A293808(n)]]²`
-/

namespace A111883.P11354055430352418476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A111883.P11354055430352418476

namespace A111883

/-- `record[Δ[A293808(n)]]²` -/
def P11354055430352418476.Spec : Prop :=
  ∀ n, P11354055430352418476.a n = A111883 n

end A111883

/-! ## A111883.P2778598297976257387

`record[Δ[A293815(n)]]²`
-/

namespace A111883.P2778598297976257387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293815 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A111883.P2778598297976257387

namespace A111883

/-- `record[Δ[A293815(n)]]²` -/
def P2778598297976257387.Spec : Prop :=
  ∀ n, P2778598297976257387.a n = A111883 n

end A111883

/-! ## A111883.P14039669587281416411

`A008307(∑[n]+2)²`
-/

namespace A111883.P14039669587281416411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (∑ j ∈ Finset.range (n + 1), f1 j + 2) ^ 2

end

end A111883.P14039669587281416411

namespace A111883

/-- `A008307(∑[n]+2)²` -/
def P14039669587281416411.Spec : Prop :=
  ∀ n, P14039669587281416411.a n = A111883 n

end A111883

/-! ## A111883.P14136875217048346400

`A275422(∑[n+3])²`
-/

namespace A111883.P14136875217048346400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A111883.P14136875217048346400

namespace A111883

/-- `A275422(∑[n+3])²` -/
def P14136875217048346400.Spec : Prop :=
  ∀ n, P14136875217048346400.a n = A111883 n

end A111883

/-!
# A111884: E.g.f.: exp(x/(1+x)).

The programs for A111884, there is no canonical definition to state claims against.
-/

/-! ## A111884.P10443284441488474934

`(-1)^n*A293116(n)`
-/

namespace A111884.P10443284441488474934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A293116 n

end

end A111884.P10443284441488474934

/-! ## A111884.P4927880128230436056

`A056920(comp[2*(n+1)])`
-/

namespace A111884.P4927880128230436056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056920 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A111884.P4927880128230436056

/-! ## A111884.P13693921148387442192

`A293116(n)/A033999(n)`
-/

namespace A111884.P13693921148387442192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293116 n : ℚ) / (A033999 n : ℚ)

end

end A111884.P13693921148387442192

/-! ## A111884.P6111885289481473636

`A293116(n)/A021010(∑{d}[n, round(1/#)])`
-/

namespace A111884.P6111885289481473636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293116 n : ℚ) / (A021010 (∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.roundAway (1 / (d : ℚ))).toNat : ℚ)

end

end A111884.P6111885289481473636

/-! ## A111884.P585584462792041165

`A293116(n)/A104558(∑{d}[n, round(1/#)])`
-/

namespace A111884.P585584462792041165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293116 n : ℚ) / (A104558 (∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.roundAway (1 / (d : ℚ))).toNat : ℚ)

end

end A111884.P585584462792041165

/-! ## A111884.P8144607340721463441

`A293133(∑[n]+n)`
-/

namespace A111884.P8144607340721463441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293133 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A111884.P8144607340721463441

/-! ## A111884.P18019006344307683972

`2*A096965(n)-A000262(n)`
-/

namespace A111884.P18019006344307683972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096965 n - A000262 n

end

end A111884.P18019006344307683972

/-!
# A111885: Row sums of triangle A112492.

The programs for A111885, there is no canonical definition to state claims against.
-/

/-! ## A111885.P2286366936277231762

`A344970(A001044(n))+A015530(n)`
-/

namespace A111885.P2286366936277231762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344970 (A001044 n).toNat + A015530 n

end

end A111885.P2286366936277231762

/-!
# A111886: Sixth column of triangle A112492 (inverse scaled Pochhammer symbols).

The programs for A111886, there is no canonical definition to state claims against.
-/

/-! ## A111886.P8324306297392439000

`A112492(eq[5, A002262(n)])`
-/

namespace A111886.P8324306297392439000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112492 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111886.P8324306297392439000

/-! ## A111886.P13051938944634504124

`A112492(Δ[A264443(n)]+9)`
-/

namespace A111886.P13051938944634504124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112492 (f1 (n + 1) - f1 n + 9).toNat

end

end A111886.P13051938944634504124

/-! ## A111886.P12691661367678177728

`A008969(A046691(n+3))`
-/

namespace A111886.P12691661367678177728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008969 (A046691 (n + 3)).toNat

end

end A111886.P12691661367678177728

/-! ## A111886.P11707165357032392564

`A008969(eq[4, A049286(n+1)])`
-/

namespace A111886.P11707165357032392564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111886.P11707165357032392564

/-!
# A111887: Seventh column of triangle A112492 (inverse scaled Pochhammer symbols).

The programs for A111887, there is no canonical definition to state claims against.
-/

/-! ## A111887.P16563067235726832450

`A112492(eq[6, A002262(n)])`
-/

namespace A111887.P16563067235726832450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112492 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111887.P16563067235726832450

/-! ## A111887.P15200417700707229634

`A008969(A052905(n+3))`
-/

namespace A111887.P15200417700707229634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008969 (A052905 (n + 3)).toNat

end

end A111887.P15200417700707229634

/-! ## A111887.P17121832359110418196

`A008969(eq[7, A049286(n+1)])`
-/

namespace A111887.P17121832359110418196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111887.P17121832359110418196

/-!
# A111888: 

The programs for A111888, there is no canonical definition to state claims against.
-/

/-! ## A111888.P104469684822724554

`A112492(eq[7, A002262(n)])`
-/

namespace A111888.P104469684822724554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112492 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111888.P104469684822724554

/-! ## A111888.P15305245348097162906

`A008969(eq[7, A200370(n+1)])`
-/

namespace A111888.P15305245348097162906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111888.P15305245348097162906

/-! ## A111888.P4401371870466976666

`A008969(A000217(n+6)+n+1)`
-/

namespace A111888.P4401371870466976666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008969 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A111888.P4401371870466976666

/-!
# A111889: A repeated permutation of {0,...,8}.

The programs for A111889, the canonical program `A111889.P6755713406230054758` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111889 has offset 0).

The definition of A111889 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111889.P6755713406230054758

`(C(n, 2)+n²)%9`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A111889

/-- `(C(n, 2)+n²)%9` -/
def P6755713406230054758.Spec : Prop :=
  ∀ n, (P6755713406230054758.a n : ℤ) = A111889 n

theorem P6755713406230054758.correct : P6755713406230054758.Spec := by
  intro n
  simp only [A111889]

end A111889

/-!
# A111890: Number of numbers m <= n such that 0 equals the second digit after decimal point of square root of n in decimal representation.

The programs for A111890, there is no canonical definition to state claims against.
-/

/-! ## A111890.P5008258955409867379

`∑[floor(acot(A111862(n+1)))]`
-/

namespace A111890.P5008258955409867379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A111862 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111890.P5008258955409867379

/-! ## A111890.P10138902168562387304

`∑[floor(acot(A023961(10*10*(n+1))))]`
-/

namespace A111890.P10138902168562387304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A023961 (10 * (10 * (n + 1))) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111890.P10138902168562387304

/-! ## A111890.P18382192821738843853

`∑[A000007(n*A111862(n+1))]`
-/

namespace A111890.P18382192821738843853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A111862 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111890.P18382192821738843853

/-! ## A111890.P4702482816675957207

`∑[A000038(n)^A111862(n+1)]`
-/

namespace A111890.P4702482816675957207
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) ^ (A111862 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111890.P4702482816675957207

/-! ## A111890.P830274540574610252

`∑[A151878(n)^A111862(n+1)]`
-/

namespace A111890.P830274540574610252
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151878 n : ℚ) ^ (A111862 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111890.P830274540574610252

/-! ## A111890.P15195278866453832360

`∑[A151909(n)^A111862(n+1)]`
-/

namespace A111890.P15195278866453832360
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151909 n : ℚ) ^ (A111862 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111890.P15195278866453832360

/-! ## A111890.P5824184087460343440

`∑[Δ[A000196(n)]^A111862(n+1)]`
-/

namespace A111890.P5824184087460343440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) ^ (A111862 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111890.P5824184087460343440

/-! ## A111890.P14674538974538913382

`∑[A033322(n+2)^A111862(n+1)]`
-/

namespace A111890.P14674538974538913382
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033322 (n + 2) : ℚ) ^ (A111862 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111890.P14674538974538913382

/-! ## A111890.P18047715824266676533

`∑[C(2, A000203(n+1)*A111862(n+1))]`
-/

namespace A111890.P18047715824266676533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000203 (n + 1) * A111862 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111890.P18047715824266676533

/-! ## A111890.P8409867491015426326

`∑[C(A000010(n+1), (n+1)*A111862(n+1))]`
-/

namespace A111890.P8409867491015426326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000010 (n + 1)).toNat ((n + 1 : ℤ) * A111862 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111890.P8409867491015426326

/-!
# A111891: Number of numbers m <= n such that 1 equals the second digit after decimal point of square root of n in decimal representation.

The programs for A111891, the canonical program `A111891.P17105270251826689763` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111891 has offset 1).

The definition of A111891 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111891.P17105270251826689763

`∑[char[eq[1, A111862(n+1)]]]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111891

/-- `∑[char[eq[1, A111862(n+1)]]]` -/
def P17105270251826689763.Spec : Prop :=
  ∀ n, (P17105270251826689763.a n : ℤ) = A111891 (n + 1)

theorem P17105270251826689763.correct : P17105270251826689763.Spec := by
  intro n
  simp only [A111891, Nat.add_sub_cancel]

end A111891

/-! ## A111891.P16607240062620048413

`comp[eq[1, A111862(A000027(n+1))]+n]-n`
-/

namespace A111891.P16607240062620048413
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111862 (A000027 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A111891.P16607240062620048413

namespace A111891

/-- `comp[eq[1, A111862(A000027(n+1))]+n]-n` -/
def P16607240062620048413.Spec : Prop :=
  ∀ n, P16607240062620048413.a n = A111891 (n + 1)

end A111891

/-! ## A111891.P14602340918906159211

`floor(A117806(2*n+1)/3)`
-/

namespace A111891.P14602340918906159211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A117806 (2 * n + 1) : ℚ) / 3⌋

end

end A111891.P14602340918906159211

namespace A111891

/-- `floor(A117806(2*n+1)/3)` -/
def P14602340918906159211.Spec : Prop :=
  ∀ n, P14602340918906159211.a n = A111891 (n + 1)

end A111891

/-! ## A111891.P9642071570134551917

`round(sqrt(sqrt(A353399(n+1))/5))`
-/

namespace A111891.P9642071570134551917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A353399 (n + 1) : ℝ) / 5))

end

end A111891.P9642071570134551917

namespace A111891

/-- `round(sqrt(sqrt(A353399(n+1))/5))` -/
def P9642071570134551917.Spec : Prop :=
  ∀ n, P9642071570134551917.a n = A111891 (n + 1)

end A111891

/-! ## A111891.P10394960229413215797

`A004216(A224214(n)+7)`
-/

namespace A111891.P10394960229413215797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A224214 n + 7).toNat

end

end A111891.P10394960229413215797

namespace A111891

/-- `A004216(A224214(n)+7)` -/
def P10394960229413215797.Spec : Prop :=
  ∀ n, P10394960229413215797.a n = A111891 (n + 1)

end A111891

/-! ## A111891.P11630667844174454672

`A004216(or(8, A224214(n)))`
-/

namespace A111891.P11630667844174454672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (Int.lor 8 (A224214 n)).toNat

end

end A111891.P11630667844174454672

namespace A111891

/-- `A004216(or(8, A224214(n)))` -/
def P11630667844174454672.Spec : Prop :=
  ∀ n, P11630667844174454672.a n = A111891 (n + 1)

end A111891

/-! ## A111891.P6194324736132844387

`∑[val(A138725(n+1), A098098(n+1))]`
-/

namespace A111891.P6194324736132844387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A138725 (n + 1)).toNat (A098098 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111891.P6194324736132844387

namespace A111891

/-- `∑[val(A138725(n+1), A098098(n+1))]` -/
def P6194324736132844387.Spec : Prop :=
  ∀ n, (P6194324736132844387.a n : ℤ) = A111891 (n + 1)

end A111891

/-! ## A111891.P4948719517153125136

`A127321(A048766(∑[A220478(n)]))`
-/

namespace A111891.P4948719517153125136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A111891.P4948719517153125136

namespace A111891

/-- `A127321(A048766(∑[A220478(n)]))` -/
def P4948719517153125136.Spec : Prop :=
  ∀ n, P4948719517153125136.a n = A111891 (n + 1)

end A111891

/-!
# A111892: Number of numbers m <= n such that 2 equals the second digit after decimal point of square root of n in decimal representation.

The programs for A111892, the canonical program `A111892.P4463741140269884913` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111892 has offset 1).

The definition of A111892 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111892.P4463741140269884913

`∑[char[eq[2, A111862(n+1)]]]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111892

/-- `∑[char[eq[2, A111862(n+1)]]]` -/
def P4463741140269884913.Spec : Prop :=
  ∀ n, (P4463741140269884913.a n : ℤ) = A111892 (n + 1)

theorem P4463741140269884913.correct : P4463741140269884913.Spec := by
  intro n
  simp only [A111892, Nat.add_sub_cancel]

end A111892

/-! ## A111892.P2604611685511275673

`comp[eq[2, A111862(A000027(n+1))]+n]-n`
-/

namespace A111892.P2604611685511275673
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111862 (A000027 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A111892.P2604611685511275673

namespace A111892

/-- `comp[eq[2, A111862(A000027(n+1))]+n]-n` -/
def P2604611685511275673.Spec : Prop :=
  ∀ n, P2604611685511275673.a n = A111892 (n + 1)

end A111892

/-! ## A111892.P14075497091056322484

`A004524(∑[A010054(A257347(n+1))])`
-/

namespace A111892.P14075497091056322484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A257347 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111892.P14075497091056322484

namespace A111892

/-- `A004524(∑[A010054(A257347(n+1))])` -/
def P14075497091056322484.Spec : Prop :=
  ∀ n, P14075497091056322484.a n = A111892 (n + 1)

end A111892

/-! ## A111892.P3515653248562399135

`∑[A177714(n+1)%A177706(A177732(n+1))]`
-/

namespace A111892.P3515653248562399135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177714 (n + 1)) (A177706 (A177732 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111892.P3515653248562399135

namespace A111892

/-- `∑[A177714(n+1)%A177706(A177732(n+1))]` -/
def P3515653248562399135.Spec : Prop :=
  ∀ n, P3515653248562399135.a n = A111892 (n + 1)

end A111892

/-! ## A111892.P9787648777161490799

`∑[A062301(A098649(2*n+3)+A089850(n+1)+2)]`
-/

namespace A111892.P9787648777161490799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062301 (A098649 (2 * n + 3) + A089850 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111892.P9787648777161490799

namespace A111892

/-- `∑[A062301(A098649(2*n+3)+A089850(n+1)+2)]` -/
def P9787648777161490799.Spec : Prop :=
  ∀ n, P9787648777161490799.a n = A111892 (n + 1)

end A111892

/-! ## A111892.P6479133677433883386

`∑[A073424(A007599(n)*A155039(n+1))]`
-/

namespace A111892.P6479133677433883386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A007599 n * A155039 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111892.P6479133677433883386

namespace A111892

/-- `∑[A073424(A007599(n)*A155039(n+1))]` -/
def P6479133677433883386.Spec : Prop :=
  ∀ n, P6479133677433883386.a n = A111892 (n + 1)

end A111892

/-!
# A111893: Number of numbers m <= n such that 3 equals the second digit after decimal point of square root of n in decimal representation.

The programs for A111893, the canonical program `A111893.P6816337927118764059` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111893 has offset 1).

The definition of A111893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111893.P6816337927118764059

`∑[char[eq[3, A111862(n+1)]]]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111893

/-- `∑[char[eq[3, A111862(n+1)]]]` -/
def P6816337927118764059.Spec : Prop :=
  ∀ n, (P6816337927118764059.a n : ℤ) = A111893 (n + 1)

theorem P6816337927118764059.correct : P6816337927118764059.Spec := by
  intro n
  simp only [A111893, Nat.add_sub_cancel]

end A111893

/-! ## A111893.P2152094485019241904

`comp[eq[3, A111862(A000027(n+1))]+n]-n`
-/

namespace A111893.P2152094485019241904
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111862 (A000027 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A111893.P2152094485019241904

namespace A111893

/-- `comp[eq[3, A111862(A000027(n+1))]+n]-n` -/
def P2152094485019241904.Spec : Prop :=
  ∀ n, P2152094485019241904.a n = A111893 (n + 1)

end A111893

/-! ## A111893.P13483286609391827547

`∑[A192490(13*A192521(n+1))]`
-/

namespace A111893.P13483286609391827547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192490 (13 * A192521 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111893.P13483286609391827547

namespace A111893

/-- `∑[A192490(13*A192521(n+1))]` -/
def P13483286609391827547.Spec : Prop :=
  ∀ n, P13483286609391827547.a n = A111893 (n + 1)

end A111893

/-! ## A111893.P18132885186460996292

`∑[A005369(A005206(A216761(n+1)))]`
-/

namespace A111893.P18132885186460996292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (A005206 (A216761 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111893.P18132885186460996292

namespace A111893

/-- `∑[A005369(A005206(A216761(n+1)))]` -/
def P18132885186460996292.Spec : Prop :=
  ∀ n, P18132885186460996292.a n = A111893 (n + 1)

end A111893

/-! ## A111893.P17146427668536066305

`∑[A073424(A316265(n+6))]`
-/

namespace A111893.P17146427668536066305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A316265 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111893.P17146427668536066305

namespace A111893

/-- `∑[A073424(A316265(n+6))]` -/
def P17146427668536066305.Spec : Prop :=
  ∀ n, P17146427668536066305.a n = A111893 (n + 1)

end A111893

/-! ## A111893.P13805947564316289781

`∑[A000007(A350196(n+1)%(n+2))]`
-/

namespace A111893.P13805947564316289781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A350196 (n + 1)) (n + 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111893.P13805947564316289781

namespace A111893

/-- `∑[A000007(A350196(n+1)%(n+2))]` -/
def P13805947564316289781.Spec : Prop :=
  ∀ n, P13805947564316289781.a n = A111893 (n + 1)

end A111893

/-!
# A111894: Number of numbers m <= n such that 4 equals the second digit after decimal point of square root of n in decimal representation.

The programs for A111894, there is no canonical definition to state claims against.
-/

/-! ## A111894.P12714149067794330900

`∑[char[eq[4, A111862(n+1)]]]`
-/

namespace A111894.P12714149067794330900
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111862 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111894.P12714149067794330900

/-! ## A111894.P14435431570944670070

`comp[A001950(A004736(7^n+1))]-n`
-/

namespace A111894.P14435431570944670070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A004736 (7 ^ n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A111894.P14435431570944670070

/-! ## A111894.P13645989217389708168

`∑[round(A321310(n)/A133030(n+1))]`
-/

namespace A111894.P13645989217389708168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A321310 n : ℚ) / (A133030 (n + 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111894.P13645989217389708168

/-! ## A111894.P9207622134956844250

`∑[val(A195073(3*n+2), A033677(n+3))]`
-/

namespace A111894.P9207622134956844250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A195073 (3 * n + 2)).toNat (A033677 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111894.P9207622134956844250

/-! ## A111894.P2982323069652818179

`∑[A078926(A099821(n+3)+7)]`
-/

namespace A111894.P2982323069652818179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078926 (A099821 (n + 3) + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111894.P2982323069652818179

/-!
# A111895: Number of numbers m <= n such that 5 equals the second digit after decimal point of square root of n in decimal representation.

The programs for A111895, the canonical program `A111895.P24504582110756803` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111895 has offset 1).

The definition of A111895 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111895.P24504582110756803

`∑[char[eq[5, A111862(n+1)]]]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111895

/-- `∑[char[eq[5, A111862(n+1)]]]` -/
def P24504582110756803.Spec : Prop :=
  ∀ n, (P24504582110756803.a n : ℤ) = A111895 (n + 1)

theorem P24504582110756803.correct : P24504582110756803.Spec := by
  intro n
  simp only [A111895, Nat.add_sub_cancel]

end A111895

/-! ## A111895.P14044503525443384471

`floor(A333222(n+4)/62)`
-/

namespace A111895.P14044503525443384471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A333222 (n + 4) : ℚ) / 62⌋

end

end A111895.P14044503525443384471

namespace A111895

/-- `floor(A333222(n+4)/62)` -/
def P14044503525443384471.Spec : Prop :=
  ∀ n, P14044503525443384471.a n = A111895 (n + 1)

end A111895

/-! ## A111895.P3946511243741263755

`ceil(A333222(A000027(n+4))/63)-1`
-/

namespace A111895.P3946511243741263755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A333222 (A000027 (n + 4)).toNat : ℚ) / 63⌉ - 1

end

end A111895.P3946511243741263755

namespace A111895

/-- `ceil(A333222(A000027(n+4))/63)-1` -/
def P3946511243741263755.Spec : Prop :=
  ∀ n, P3946511243741263755.a n = A111895 (n + 1)

end A111895

/-! ## A111895.P11891076552906699599

`A017666(ceil(A333222(n+4)/63))-1`
-/

namespace A111895.P11891076552906699599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 ⌈(A333222 (n + 4) : ℚ) / 63⌉.toNat - 1

end

end A111895.P11891076552906699599

namespace A111895

/-- `A017666(ceil(A333222(n+4)/63))-1` -/
def P11891076552906699599.Spec : Prop :=
  ∀ n, P11891076552906699599.a n = A111895 (n + 1)

end A111895

/-! ## A111895.P1448666747309811107

`A053828(ceil(A333222(n+4)/63))-1`
-/

namespace A111895.P1448666747309811107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 ⌈(A333222 (n + 4) : ℚ) / 63⌉.toNat - 1

end

end A111895.P1448666747309811107

namespace A111895

/-- `A053828(ceil(A333222(n+4)/63))-1` -/
def P1448666747309811107.Spec : Prop :=
  ∀ n, P1448666747309811107.a n = A111895 (n + 1)

end A111895

/-! ## A111895.P13708546385998927223

`A162343(ceil(A333222(n+4)/63)-1)`
-/

namespace A111895.P13708546385998927223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162343 (⌈(A333222 (n + 4) : ℚ) / 63⌉ - 1).toNat

end

end A111895.P13708546385998927223

namespace A111895

/-- `A162343(ceil(A333222(n+4)/63)-1)` -/
def P13708546385998927223.Spec : Prop :=
  ∀ n, P13708546385998927223.a n = A111895 (n + 1)

end A111895

/-! ## A111895.P9238401339324521686

`A039269(ceil(A333222(n+4)/63)+2)-2`
-/

namespace A111895.P9238401339324521686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039269 (⌈(A333222 (n + 4) : ℚ) / 63⌉ + 2).toNat - 2

end

end A111895.P9238401339324521686

namespace A111895

/-- `A039269(ceil(A333222(n+4)/63)+2)-2` -/
def P9238401339324521686.Spec : Prop :=
  ∀ n, P9238401339324521686.a n = A111895 (n + 1)

end A111895

/-! ## A111895.P1965642667478847324

`∑[val(A034294(n+1), 53)]`
-/

namespace A111895.P1965642667478847324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A034294 (n + 1)).toNat 53

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111895.P1965642667478847324

namespace A111895

/-- `∑[val(A034294(n+1), 53)]` -/
def P1965642667478847324.Spec : Prop :=
  ∀ n, (P1965642667478847324.a n : ℤ) = A111895 (n + 1)

end A111895

/-! ## A111895.P9402550389768715963

`∑[A351539(A344586(n+1)+A344557(n))]`
-/

namespace A111895.P9402550389768715963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351539 (A344586 (n + 1) + A344557 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111895.P9402550389768715963

namespace A111895

/-- `∑[A351539(A344586(n+1)+A344557(n))]` -/
def P9402550389768715963.Spec : Prop :=
  ∀ n, P9402550389768715963.a n = A111895 (n + 1)

end A111895

/-! ## A111895.P6309534049362432651

`round(A306972(n+1)/A017137(2*n))`
-/

namespace A111895.P6309534049362432651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A306972 (n + 1) : ℚ) / (A017137 (2 * n) : ℚ))

end

end A111895.P6309534049362432651

namespace A111895

/-- `round(A306972(n+1)/A017137(2*n))` -/
def P6309534049362432651.Spec : Prop :=
  ∀ n, P6309534049362432651.a n = A111895 (n + 1)

end A111895

/-!
# A111896: Number of numbers m <= n such that 6 equals the second digit after decimal point of square root of n in decimal representation.

The programs for A111896, the canonical program `A111896.P11288438565352945554` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111896 has offset 1).

The definition of A111896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111896.P11288438565352945554

`∑[char[eq[6, A111862(n+1)]]]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111896

/-- `∑[char[eq[6, A111862(n+1)]]]` -/
def P11288438565352945554.Spec : Prop :=
  ∀ n, (P11288438565352945554.a n : ℤ) = A111896 (n + 1)

theorem P11288438565352945554.correct : P11288438565352945554.Spec := by
  intro n
  simp only [A111896, Nat.add_sub_cancel]

end A111896

/-! ## A111896.P13446648382358095832

`comp[eq[6, A111862(A000027(n+1))]+n]-n`
-/

namespace A111896.P13446648382358095832
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111862 (A000027 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A111896.P13446648382358095832

namespace A111896

/-- `comp[eq[6, A111862(A000027(n+1))]+n]-n` -/
def P13446648382358095832.Spec : Prop :=
  ∀ n, P13446648382358095832.a n = A111896 (n + 1)

end A111896

/-! ## A111896.P9824869574718755924

`∑[val(A023961(A044332(n+1))+1, 7)]`
-/

namespace A111896.P9824869574718755924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A023961 (A044332 (n + 1)).toNat + 1).toNat 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111896.P9824869574718755924

namespace A111896

/-- `∑[val(A023961(A044332(n+1))+1, 7)]` -/
def P9824869574718755924.Spec : Prop :=
  ∀ n, (P9824869574718755924.a n : ℤ) = A111896 (n + 1)

end A111896

/-! ## A111896.P9707420197345343022

`∑[A010057(A293991(n)+A133310(n))]`
-/

namespace A111896.P9707420197345343022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A293991 n + A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111896.P9707420197345343022

namespace A111896

/-- `∑[A010057(A293991(n)+A133310(n))]` -/
def P9707420197345343022.Spec : Prop :=
  ∀ n, P9707420197345343022.a n = A111896 (n + 1)

end A111896

/-! ## A111896.P9053687135726925620

`A111775(5^A211020(n+4))`
-/

namespace A111896.P9053687135726925620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111775 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A211020 (n + 4) : ℤ))).toNat

end

end A111896.P9053687135726925620

namespace A111896

/-- `A111775(5^A211020(n+4))` -/
def P9053687135726925620.Spec : Prop :=
  ∀ n, P9053687135726925620.a n = A111896 (n + 1)

end A111896

/-! ## A111896.P5124294809311625403

`∑[A168007(2*n+1)%A134744(A231900(n+3))]`
-/

namespace A111896.P5124294809311625403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168007 (2 * n + 1)) (A134744 (A231900 (n + 3)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111896.P5124294809311625403

namespace A111896

/-- `∑[A168007(2*n+1)%A134744(A231900(n+3))]` -/
def P5124294809311625403.Spec : Prop :=
  ∀ n, P5124294809311625403.a n = A111896 (n + 1)

end A111896

/-!
# A111897: Number of numbers m <= n such that 7 equals the second digit after decimal point of square root of n in decimal representation.

The programs for A111897, the canonical program `A111897.P18341532371278709385` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111897 has offset 1).

The definition of A111897 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111897.P18341532371278709385

`∑[char[eq[7, A111862(n+1)]]]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111897

/-- `∑[char[eq[7, A111862(n+1)]]]` -/
def P18341532371278709385.Spec : Prop :=
  ∀ n, (P18341532371278709385.a n : ℤ) = A111897 (n + 1)

theorem P18341532371278709385.correct : P18341532371278709385.Spec := by
  intro n
  simp only [A111897, Nat.add_sub_cancel]

end A111897

/-! ## A111897.P15464195652599851787

`∑[((lcm(A089549(n+1), A111862(n+1))²-9)%7)%2]`
-/

namespace A111897.P15464195652599851787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod ((Int.lcm (A089549 (n + 1)) (A111862 (n + 1)) ^ 2 : ℤ) - 9) 7) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111897.P15464195652599851787

namespace A111897

/-- `∑[((lcm(A089549(n+1), A111862(n+1))²-9)%7)%2]` -/
def P15464195652599851787.Spec : Prop :=
  ∀ n, P15464195652599851787.a n = A111897 (n + 1)

end A111897

/-! ## A111897.P652594185090963825

`∑[∑[A136767(n+1)]%A055457(n+1)]`
-/

namespace A111897.P652594185090963825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136767 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) (A055457 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111897.P652594185090963825

namespace A111897

/-- `∑[∑[A136767(n+1)]%A055457(n+1)]` -/
def P652594185090963825.Spec : Prop :=
  ∀ n, P652594185090963825.a n = A111897 (n + 1)

end A111897

/-! ## A111897.P10944949631721929297

`∑[val(A049429(n+2), A000005(2*(n+2)))]`
-/

namespace A111897.P10944949631721929297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A049429 (n + 2)).toNat (A000005 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111897.P10944949631721929297

namespace A111897

/-- `∑[val(A049429(n+2), A000005(2*(n+2)))]` -/
def P10944949631721929297.Spec : Prop :=
  ∀ n, (P10944949631721929297.a n : ℤ) = A111897 (n + 1)

end A111897

/-! ## A111897.P8933576404867668469

`∑[A305802(gcd(n+1, A340690(n+1)))]`
-/

namespace A111897.P8933576404867668469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305802 (Int.gcd (n + 1 : ℤ) (A340690 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111897.P8933576404867668469

namespace A111897

/-- `∑[A305802(gcd(n+1, A340690(n+1)))]` -/
def P8933576404867668469.Spec : Prop :=
  ∀ n, P8933576404867668469.a n = A111897 (n + 1)

end A111897

/-!
# A111898: Number of numbers m <= n such that 8 equals the second digit after decimal point of square root of n in decimal representation.

The programs for A111898, the canonical program `A111898.P9714464059355174536` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111898 has offset 1).

The definition of A111898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111898.P9714464059355174536

`∑[char[eq[8, A111862(n+1)]]]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111898

/-- `∑[char[eq[8, A111862(n+1)]]]` -/
def P9714464059355174536.Spec : Prop :=
  ∀ n, (P9714464059355174536.a n : ℤ) = A111898 (n + 1)

theorem P9714464059355174536.correct : P9714464059355174536.Spec := by
  intro n
  simp only [A111898, Nat.add_sub_cancel]

end A111898

/-! ## A111898.P10347220536868490585

`floor(A358474(2*n+1)/46)`
-/

namespace A111898.P10347220536868490585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A358474 (2 * n + 1) : ℚ) / 46⌋

end

end A111898.P10347220536868490585

namespace A111898

/-- `floor(A358474(2*n+1)/46)` -/
def P10347220536868490585.Spec : Prop :=
  ∀ n, P10347220536868490585.a n = A111898 (n + 1)

end A111898

/-! ## A111898.P3928940115059066393

`floor(A070317(n+5)/A003344(n+1))`
-/

namespace A111898.P3928940115059066393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A070317 (n + 5) : ℚ) / (A003344 (n + 1) : ℚ)⌋

end

end A111898.P3928940115059066393

namespace A111898

/-- `floor(A070317(n+5)/A003344(n+1))` -/
def P3928940115059066393.Spec : Prop :=
  ∀ n, P3928940115059066393.a n = A111898 (n + 1)

end A111898

/-! ## A111898.P7033307502638078522

`A111855(lt[A275870(n+1), A038040(n+1)])`
-/

namespace A111898.P7033307502638078522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111855 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A111898.P7033307502638078522

namespace A111898

/-- `A111855(lt[A275870(n+1), A038040(n+1)])` -/
def P7033307502638078522.Spec : Prop :=
  ∀ n, P7033307502638078522.a n = A111898 (n + 1)

end A111898

/-! ## A111898.P8056126785841916547

`∑[A070095(A374740(2*(n+2))^A070095(n+1))]`
-/

namespace A111898.P8056126785841916547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070095 (SequenceMachineLib.roundAway ((A374740 (2 * (n + 2)) : ℚ) ^ (A070095 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111898.P8056126785841916547

namespace A111898

/-- `∑[A070095(A374740(2*(n+2))^A070095(n+1))]` -/
def P8056126785841916547.Spec : Prop :=
  ∀ n, P8056126785841916547.a n = A111898 (n + 1)

end A111898

/-!
# A111899: Number of numbers m <= n such that 9 equals the second digit after decimal point of square root of n in decimal representation.

The programs for A111899, the canonical program `A111899.P5822750478645287811` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111899 has offset 1).

The definition of A111899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111899.P5822750478645287811

`∑[C(A111862(n+1), 9)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111899

/-- `∑[C(A111862(n+1), 9)]` -/
def P5822750478645287811.Spec : Prop :=
  ∀ n, (P5822750478645287811.a n : ℤ) = A111899 (n + 1)

theorem P5822750478645287811.correct : P5822750478645287811.Spec := by
  intro n
  simp only [A111899, Nat.add_sub_cancel]

end A111899

/-! ## A111899.P16049033518789712084

`∑[floor(A111862(A000027(n+1))/9)]`
-/

namespace A111899.P16049033518789712084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A111862 (A000027 (n + 1)).toNat : ℚ) / 9⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111899.P16049033518789712084

namespace A111899

/-- `∑[floor(A111862(A000027(n+1))/9)]` -/
def P16049033518789712084.Spec : Prop :=
  ∀ n, P16049033518789712084.a n = A111899 (n + 1)

end A111899

/-! ## A111899.P18230634424289488230

`∑[C(A023961(10*10*(n+1)), 9)]`
-/

namespace A111899.P18230634424289488230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A023961 (10 * (10 * (n + 1)))).toNat 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111899.P18230634424289488230

namespace A111899

/-- `∑[C(A023961(10*10*(n+1)), 9)]` -/
def P18230634424289488230.Spec : Prop :=
  ∀ n, (P18230634424289488230.a n : ℤ) = A111899 (n + 1)

end A111899

/-! ## A111899.P2938050448728166956

`∑[floor(A023961(A044332(n+1))/9)]`
-/

namespace A111899.P2938050448728166956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A023961 (A044332 (n + 1)).toNat : ℚ) / 9⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111899.P2938050448728166956

namespace A111899

/-- `∑[floor(A023961(A044332(n+1))/9)]` -/
def P2938050448728166956.Spec : Prop :=
  ∀ n, P2938050448728166956.a n = A111899 (n + 1)

end A111899

/-! ## A111899.P3624741285387036819

`∑[A247655(n+1)%A300362(A003056(n))]`
-/

namespace A111899.P3624741285387036819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247655 (n + 1)) (A300362 (A003056 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111899.P3624741285387036819

namespace A111899

/-- `∑[A247655(n+1)%A300362(A003056(n))]` -/
def P3624741285387036819.Spec : Prop :=
  ∀ n, P3624741285387036819.a n = A111899 (n + 1)

end A111899

/-! ## A111899.P17783220884127280968

`∑[A247656(n+1)%A300362(A003056(n))]`
-/

namespace A111899.P17783220884127280968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247656 (n + 1)) (A300362 (A003056 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111899.P17783220884127280968

namespace A111899

/-- `∑[A247656(n+1)%A300362(A003056(n))]` -/
def P17783220884127280968.Spec : Prop :=
  ∀ n, P17783220884127280968.a n = A111899 (n + 1)

end A111899

/-! ## A111899.P4711854979156088392

`∑[A024362(A097576(n+3))]`
-/

namespace A111899.P4711854979156088392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024362 (A097576 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111899.P4711854979156088392

namespace A111899

/-- `∑[A024362(A097576(n+3))]` -/
def P4711854979156088392.Spec : Prop :=
  ∀ n, P4711854979156088392.a n = A111899 (n + 1)

end A111899

/-! ## A111899.P6124013932687857648

`∑[A199041(n+1)%A300362(A003056(n))]`
-/

namespace A111899.P6124013932687857648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199041 (n + 1)) (A300362 (A003056 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111899.P6124013932687857648

namespace A111899

/-- `∑[A199041(n+1)%A300362(A003056(n))]` -/
def P6124013932687857648.Spec : Prop :=
  ∀ n, P6124013932687857648.a n = A111899 (n + 1)

end A111899

/-! ## A111899.P8738178390256424866

`∑[abs(A015283(A003506(n+1)))]`
-/

namespace A111899.P8738178390256424866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A015283 (A003506 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111899.P8738178390256424866

namespace A111899

/-- `∑[abs(A015283(A003506(n+1)))]` -/
def P8738178390256424866.Spec : Prop :=
  ∀ n, P8738178390256424866.a n = A111899 (n + 1)

end A111899

