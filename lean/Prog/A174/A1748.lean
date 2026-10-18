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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
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
# A174800: Number whose product of digits is a square.

The programs for A174800, there is no canonical definition to state claims against.
-/

/-! ## A174800.P11578948444183756118

`eq[0, A007968(A007954(n))]`
-/

namespace A174800.P11578948444183756118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174800.P11578948444183756118

/-! ## A174800.P5971326376365881805

`eq[0, A053186(abs(A187844(n)))]`
-/

namespace A174800.P5971326376365881805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 |A187844 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174800.P5971326376365881805

/-! ## A174800.P13781215839894529701

`eq[0, A341862(abs(A187844(n)))]`
-/

namespace A174800.P13781215839894529701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341862 |A187844 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174800.P13781215839894529701

/-! ## A174800.P1248021789081280363

`lt[0, A000122(abs(A187844(n)))]`
-/

namespace A174800.P1248021789081280363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 |A187844 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A174800.P1248021789081280363

/-! ## A174800.P13895885906647710429

`lt[0, A010052(abs(A187844(n)))]`
-/

namespace A174800.P13895885906647710429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 |A187844 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A174800.P13895885906647710429

/-! ## A174800.P7903903659881188006

`eq[1, A249111(abs(A187844(n)))]`
-/

namespace A174800.P7903903659881188006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249111 |A187844 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174800.P7903903659881188006

/-! ## A174800.P14067091319522276284

`eq[1, A169782(A007954(n)+1)]`
-/

namespace A174800.P14067091319522276284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169782 (A007954 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174800.P14067091319522276284

/-! ## A174800.P5334392735788593070

`eq[1, A194258(A007954(n)+1)]`
-/

namespace A174800.P5334392735788593070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194258 (A007954 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174800.P5334392735788593070

/-! ## A174800.P11307280007293261174

`eq[1, A010052(n-A070565(n))]`
-/

namespace A174800.P11307280007293261174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 ((n : ℤ) - A070565 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174800.P11307280007293261174

/-! ## A174800.P18435575375878948000

`eq[1, A010052(A230099(n)-n)]`
-/

namespace A174800.P18435575375878948000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A230099 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174800.P18435575375878948000

/-!
# A174801: Prime(n)+1 is prime or semiprime.

The programs for A174801, the canonical program `A174801.P13411173935637715079` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174801 has offset 1).

The definition of A174801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 704 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174801.P13411173935637715079

`record[root(n+1, A023514(n+1))²]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A174801

/-- `record[root(n+1, A023514(n+1))²]` -/
def P13411173935637715079.Spec : Prop :=
  ∀ n, P13411173935637715079.a n = (A174801 (n + 1) : ℝ)

end A174801

/-! ## A174801.P1420480535717251921

`record[root((n+1)², A039643(n+1))]`
-/

namespace A174801.P1420480535717251921
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℝ) ^ (1 / (A039643 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174801.P1420480535717251921

namespace A174801

/-- `record[root((n+1)², A039643(n+1))]` -/
def P1420480535717251921.Spec : Prop :=
  ∀ n, P1420480535717251921.a n = (A174801 (n + 1) : ℝ)

end A174801

/-! ## A174801.P12690204109262447033

`eq[2, A001222(p?[abs(2*n-3)]+1)]+1`
-/

namespace A174801.P12690204109262447033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - 3|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A174801.P12690204109262447033

namespace A174801

/-- `eq[2, A001222(p?[abs(2*n-3)]+1)]+1` -/
def P12690204109262447033.Spec : Prop :=
  ∀ n, (P12690204109262447033.a n : ℤ) = A174801 (n + 1)

end A174801

/-! ## A174801.P7927027848632357227

`A000720(A079147(n+1))`
-/

namespace A174801.P7927027848632357227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A079147 (n + 1)).toNat

end

end A174801.P7927027848632357227

namespace A174801

/-- `A000720(A079147(n+1))` -/
def P7927027848632357227.Spec : Prop :=
  ∀ n, P7927027848632357227.a n = A174801 (n + 1)

end A174801

/-! ## A174801.P4329733109301135572

`A000720(p?[A033945(n+1)])`
-/

namespace A174801.P4329733109301135572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A174801.P4329733109301135572

namespace A174801

/-- `A000720(p?[A033945(n+1)])` -/
def P4329733109301135572.Spec : Prop :=
  ∀ n, P4329733109301135572.a n = A174801 (n + 1)

end A174801

/-! ## A174801.P8979603203652993965

`lt[A001222(A008864(n+1)), 3]+1`
-/

namespace A174801.P8979603203652993965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008864 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A174801.P8979603203652993965

namespace A174801

/-- `lt[A001222(A008864(n+1)), 3]+1` -/
def P8979603203652993965.Spec : Prop :=
  ∀ n, (P8979603203652993965.a n : ℤ) = A174801 (n + 1)

end A174801

/-! ## A174801.P5997727958322278088

`lt[A001222(A000040(n+1)+1), 3]+1`
-/

namespace A174801.P5997727958322278088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000040 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A174801.P5997727958322278088

namespace A174801

/-- `lt[A001222(A000040(n+1)+1), 3]+1` -/
def P5997727958322278088.Spec : Prop :=
  ∀ n, (P5997727958322278088.a n : ℤ) = A174801 (n + 1)

end A174801

/-! ## A174801.P12845453721089328892

`lt[A001222(lt[A001222(2*n+1), 2]+1), 2]+1`
-/

namespace A174801.P12845453721089328892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n + 1

end

end A174801.P12845453721089328892

namespace A174801

/-- `lt[A001222(lt[A001222(2*n+1), 2]+1), 2]+1` -/
def P12845453721089328892.Spec : Prop :=
  ∀ n, (P12845453721089328892.a n : ℤ) = A174801 (n + 1)

end A174801

/-! ## A174801.P2273684560259004702

`record[n/A217612(n+1)+1]`
-/

namespace A174801.P2273684560259004702
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A217612 (n + 1) : ℚ) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174801.P2273684560259004702

namespace A174801

/-- `record[n/A217612(n+1)+1]` -/
def P2273684560259004702.Spec : Prop :=
  ∀ n, P2273684560259004702.a n = (A174801 (n + 1) : ℚ)

end A174801

/-! ## A174801.P11395298296620182884

`lt[A001222(record[A014963(n+2)]+1), 3]+1`
-/

namespace A174801.P11395298296620182884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A174801.P11395298296620182884

namespace A174801

/-- `lt[A001222(record[A014963(n+2)]+1), 3]+1` -/
def P11395298296620182884.Spec : Prop :=
  ∀ n, (P11395298296620182884.a n : ℤ) = A174801 (n + 1)

end A174801

/-!
# A174802: Triangular sequence from antidiagonal expansion of: p(x,m) = x*(x + 1)^(m - 1)/(1 - Sum[x^i, {i, 1, m}]).

The programs for A174802, there is no canonical definition to state claims against.
-/

/-! ## A174802.P13344032622493602204

`A130259(A078122(n))`
-/

namespace A174802.P13344032622493602204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130259 (A078122 n).toNat

end

end A174802.P13344032622493602204

/-! ## A174802.P572076583803905609

`A000193(2*A078122(n))`
-/

namespace A174802.P572076583803905609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 (2 * A078122 n).toNat

end

end A174802.P572076583803905609

/-! ## A174802.P6762312655780291518

`A057526(lcm(2, A078122(n)))`
-/

namespace A174802.P6762312655780291518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057526 (Int.lcm 2 (A078122 n))

end

end A174802.P6762312655780291518

/-! ## A174802.P5312998672306356230

`A038605(A078122(n)+A007318(n))`
-/

namespace A174802.P5312998672306356230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (A078122 n + A007318 n).toNat

end

end A174802.P5312998672306356230

/-! ## A174802.P1262659193316512910

`A038605(A307139(n)+A078122(n))`
-/

namespace A174802.P1262659193316512910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (A307139 n + A078122 n).toNat

end

end A174802.P1262659193316512910

/-!
# A174803: a(n) = n + ceiling(sqrt(n))*floor(sqrt(n)).

The programs for A174803, the canonical program `A174803.P13750117485266989883` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174803 has offset 0).

The definition of A174803 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174803.P13750117485266989883

`n+A038759(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A174803

/-- `n+A038759(n)` -/
def P13750117485266989883.Spec : Prop :=
  ∀ n, P13750117485266989883.a n = A174803 n

theorem P13750117485266989883.correct : P13750117485266989883.Spec := by
  intro n
  simp only [A174803]

end A174803

/-! ## A174803.P1249587154391467428

`floor(sqrt(n))*ceil(sqrt(n))+n`
-/

namespace A174803.P1249587154391467428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt n : ℤ) * ⌈Real.sqrt (n : ℝ)⌉ + (n : ℤ)

end

end A174803.P1249587154391467428

namespace A174803

/-- `floor(sqrt(n))*ceil(sqrt(n))+n` -/
def P1249587154391467428.Spec : Prop :=
  ∀ n, P1249587154391467428.a n = A174803 n

end A174803

/-! ## A174803.P15499941940142083055

`abs(2*n-A038760(n))`
-/

namespace A174803.P15499941940142083055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A038760 n|

end

end A174803.P15499941940142083055

namespace A174803

/-- `abs(2*n-A038760(n))` -/
def P15499941940142083055.Spec : Prop :=
  ∀ n, P15499941940142083055.a n = A174803 n

end A174803

/-! ## A174803.P1496639586789345249

`abs(A001489(n)-A038759(n))`
-/

namespace A174803.P1496639586789345249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 n - A038759 n|

end

end A174803.P1496639586789345249

namespace A174803

/-- `abs(A001489(n)-A038759(n))` -/
def P1496639586789345249.Spec : Prop :=
  ∀ n, P1496639586789345249.a n = A174803 n

end A174803

/-! ## A174803.P6985648471239053698

`ceil(A174804(n)/A028310(n)+n)`
-/

namespace A174803.P6985648471239053698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A174804 n : ℚ) / (A028310 n : ℚ) + (n : ℚ)⌉

end

end A174803.P6985648471239053698

namespace A174803

/-- `ceil(A174804(n)/A028310(n)+n)` -/
def P6985648471239053698.Spec : Prop :=
  ∀ n, P6985648471239053698.a n = A174803 n

end A174803

/-! ## A174803.P1258289573764887719

`A005843(A005843(n)-A038760(n))/2`
-/

namespace A174803.P1258289573764887719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (A005843 n - A038760 n).toNat : ℚ) / 2

end

end A174803.P1258289573764887719

namespace A174803

/-- `A005843(A005843(n)-A038760(n))/2` -/
def P1258289573764887719.Spec : Prop :=
  ∀ n, P1258289573764887719.a n = (A174803 n : ℚ)

end A174803

/-! ## A174803.P9883220368211710910

`A023443(2*n+1-A038760(n))`
-/

namespace A174803.P9883220368211710910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ((2 * n + 1 : ℤ) - A038760 n).toNat

end

end A174803.P9883220368211710910

namespace A174803

/-- `A023443(2*n+1-A038760(n))` -/
def P9883220368211710910.Spec : Prop :=
  ∀ n, P9883220368211710910.a n = A174803 n

end A174803

/-! ## A174803.P12842817017061471674

`A023443(A007606(n+1)-A037213(n))`
-/

namespace A174803.P12842817017061471674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A007606 (n + 1) - A037213 n).toNat

end

end A174803.P12842817017061471674

namespace A174803

/-- `A023443(A007606(n+1)-A037213(n))` -/
def P12842817017061471674.Spec : Prop :=
  ∀ n, P12842817017061471674.a n = A174803 n

end A174803

/-! ## A174803.P10612384290446847316

`abs(A116942(2*n)-A037213(n))`
-/

namespace A174803.P10612384290446847316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A116942 (2 * n) - A037213 n|

end

end A174803.P10612384290446847316

namespace A174803

/-- `abs(A116942(2*n)-A037213(n))` -/
def P10612384290446847316.Spec : Prop :=
  ∀ n, P10612384290446847316.a n = A174803 n

end A174803

/-! ## A174803.P3563795770269160294

`abs(A038760(n)+A001489(2*n))`
-/

namespace A174803.P3563795770269160294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A038760 n + A001489 (2 * n)|

end

end A174803.P3563795770269160294

namespace A174803

/-- `abs(A038760(n)+A001489(2*n))` -/
def P3563795770269160294.Spec : Prop :=
  ∀ n, P3563795770269160294.a n = A174803 n

end A174803

/-! ## A174803.P2529066976232371609

`eq[n+1, A221215(A221217(n+1))]`
-/

namespace A174803.P2529066976232371609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221215 (A221217 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174803.P2529066976232371609

namespace A174803

/-- `eq[n+1, A221215(A221217(n+1))]` -/
def P2529066976232371609.Spec : Prop :=
  ∀ n, (P2529066976232371609.a n : ℤ) = A174803 n

end A174803

/-! ## A174803.P16033949776861556618

`eq[A227431(n+1), A227431(A061579(n)+2)]`
-/

namespace A174803.P16033949776861556618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227431 (A061579 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174803.P16033949776861556618

namespace A174803

/-- `eq[A227431(n+1), A227431(A061579(n)+2)]` -/
def P16033949776861556618.Spec : Prop :=
  ∀ n, (P16033949776861556618.a n : ℤ) = A174803 n

end A174803

/-!
# A174804: a(n) = n*ceiling(sqrt(n))*floor(sqrt(n)).

The programs for A174804, the canonical program `A174804.P15359219710153306680` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174804 has offset 0).

The definition of A174804 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*ceil(sqrt(n))*floor(sqrt(n))` (program `A174804.P9218866012625712906`, by `A174804.P9218866012625712906.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174804.P15359219710153306680

`n*floor(sqrt(n))*ceil(sqrt(n))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A174804

/-- `n*floor(sqrt(n))*ceil(sqrt(n))` -/
def P15359219710153306680.Spec : Prop :=
  ∀ n, P15359219710153306680.a n = A174804 n

theorem P15359219710153306680.correct : P15359219710153306680.Spec := by
  intro n
  simp only [A174804]

end A174804

/-! ## A174804.P9218866012625712906

`n*ceil(sqrt(n))*floor(sqrt(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A174804.P9218866012625712906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈Real.sqrt (n : ℝ)⌉ * (Nat.sqrt n : ℤ)

end

end A174804.P9218866012625712906

namespace A174804

/-- `n*ceil(sqrt(n))*floor(sqrt(n))` -/
def P9218866012625712906.Spec : Prop :=
  ∀ n, P9218866012625712906.a n = A174804 n

theorem P9218866012625712906.correct : P9218866012625712906.Spec := by
  intro n
  simp only [A174804, Nat.add_sub_cancel, A174804.P9218866012625712906.a, A174804.P15359219710153306680.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A174804

/-! ## A174804.P1585284561508575042

`lcm(n, n*A038759(n))`
-/

namespace A174804.P1585284561508575042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) * A038759 n)

end

end A174804.P1585284561508575042

namespace A174804

/-- `lcm(n, n*A038759(n))` -/
def P1585284561508575042.Spec : Prop :=
  ∀ n, (P1585284561508575042.a n : ℤ) = A174804 n

end A174804

/-! ## A174804.P13091308277047938386

`abs(n*(n-A038760(n)))`
-/

namespace A174804.P13091308277047938386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * ((n : ℤ) - A038760 n)|

end

end A174804.P13091308277047938386

namespace A174804

/-- `abs(n*(n-A038760(n)))` -/
def P13091308277047938386.Spec : Prop :=
  ∀ n, P13091308277047938386.a n = A174804 n

end A174804

/-! ## A174804.P7447102694557557977

`abs(n*(n-A174803(n)))`
-/

namespace A174804.P7447102694557557977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * ((n : ℤ) - A174803 n)|

end

end A174804.P7447102694557557977

namespace A174804

/-- `abs(n*(n-A174803(n)))` -/
def P7447102694557557977.Spec : Prop :=
  ∀ n, P7447102694557557977.a n = A174804 n

end A174804

/-! ## A174804.P4718589540818573230

`abs(A001489(n)*A038759(n))`
-/

namespace A174804.P4718589540818573230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 n * A038759 n|

end

end A174804.P4718589540818573230

namespace A174804

/-- `abs(A001489(n)*A038759(n))` -/
def P4718589540818573230.Spec : Prop :=
  ∀ n, P4718589540818573230.a n = A174804 n

end A174804

/-! ## A174804.P8908667721108897272

`A000290(n)-n*A038760(n)`
-/

namespace A174804.P8908667721108897272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n - (n : ℤ) * A038760 n

end

end A174804.P8908667721108897272

namespace A174804

/-- `A000290(n)-n*A038760(n)` -/
def P8908667721108897272.Spec : Prop :=
  ∀ n, P8908667721108897272.a n = A174804 n

end A174804

/-! ## A174804.P4662763987057453072

`n*A174803(n)-A000290(n)`
-/

namespace A174804.P4662763987057453072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A174803 n - A000290 n

end

end A174804.P4662763987057453072

namespace A174804

/-- `n*A174803(n)-A000290(n)` -/
def P4662763987057453072.Spec : Prop :=
  ∀ n, P4662763987057453072.a n = A174804 n

end A174804

/-! ## A174804.P6557187588937416473

`(n*A038759(n))%A270109(n)`
-/

namespace A174804.P6557187588937416473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A038759 n) (A270109 n)

end

end A174804.P6557187588937416473

namespace A174804

/-- `(n*A038759(n))%A270109(n)` -/
def P6557187588937416473.Spec : Prop :=
  ∀ n, P6557187588937416473.a n = A174804 n

end A174804

/-! ## A174804.P4491992580126669670

`abs(n*(A038760(n)+A001489(n)))`
-/

namespace A174804.P4491992580126669670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (A038760 n + A001489 n)|

end

end A174804.P4491992580126669670

namespace A174804

/-- `abs(n*(A038760(n)+A001489(n)))` -/
def P4491992580126669670.Spec : Prop :=
  ∀ n, P4491992580126669670.a n = A174804 n

end A174804

/-! ## A174804.P7917576479931841219

`and(2, A008574(n))+n*A038759(n)`
-/

namespace A174804.P7917576479931841219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A008574 n) + (n : ℤ) * A038759 n

end

end A174804.P7917576479931841219

namespace A174804

/-- `and(2, A008574(n))+n*A038759(n)` -/
def P7917576479931841219.Spec : Prop :=
  ∀ n, P7917576479931841219.a n = A174804 n

end A174804

/-! ## A174804.P2521226870225860968

`∑{d}[n*A038759(n), A000010(#)]`
-/

namespace A174804.P2521226870225860968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A038759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A174804.P2521226870225860968

namespace A174804

/-- `∑{d}[n*A038759(n), A000010(#)]` -/
def P2521226870225860968.Spec : Prop :=
  ∀ n, P2521226870225860968.a n = A174804 n

end A174804

/-! ## A174804.P1256906616546508417

`(n*A038759(n))^A007318(∑[n])`
-/

namespace A174804.P1256906616546508417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A038759 n : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A174804.P1256906616546508417

namespace A174804

/-- `(n*A038759(n))^A007318(∑[n])` -/
def P1256906616546508417.Spec : Prop :=
  ∀ n, P1256906616546508417.a n = (A174804 n : ℚ)

end A174804

/-!
# A174805: n+ceiling[sqrt(n)]+floor[sqrt(n)].

The programs for A174805, the canonical program `A174805.P1146513711238790889` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174805 has offset 0).

The definition of A174805 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+ceil(sqrt(n))+floor(sqrt(n))` (program `A174805.P16841196831736974881`, by `A174805.P16841196831736974881.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174805.P1146513711238790889

`n+floor(sqrt(n))+ceil(sqrt(n))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A174805

/-- `n+floor(sqrt(n))+ceil(sqrt(n))` -/
def P1146513711238790889.Spec : Prop :=
  ∀ n, P1146513711238790889.a n = A174805 n

theorem P1146513711238790889.correct : P1146513711238790889.Spec := by
  intro n
  simp only [A174805]

end A174805

/-! ## A174805.P16841196831736974881

`n+ceil(sqrt(n))+floor(sqrt(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A174805.P16841196831736974881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + ⌈Real.sqrt (n : ℝ)⌉ + (Nat.sqrt n : ℤ)

end

end A174805.P16841196831736974881

namespace A174805

/-- `n+ceil(sqrt(n))+floor(sqrt(n))` -/
def P16841196831736974881.Spec : Prop :=
  ∀ n, P16841196831736974881.a n = A174805 n

theorem P16841196831736974881.correct : P16841196831736974881.Spec := by
  intro n
  simp only [A174805, Nat.add_sub_cancel, A174805.P16841196831736974881.a, A174805.P1146513711238790889.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A174805

/-! ## A174805.P5981118010420052029

`comp[∪[(n+1)², n²-2]]`
-/

namespace A174805.P5981118010420052029
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A174805.P5981118010420052029

namespace A174805

/-- `comp[∪[(n+1)², n²-2]]` -/
def P5981118010420052029.Spec : Prop :=
  ∀ n, (P5981118010420052029.a n : ℤ) = A174805 n

end A174805

/-! ## A174805.P8948477185193046032

`comp[a(n-2)+or(1, n)]` with `a(0)=1, a(1)=-1`
-/

namespace A174805.P8948477185193046032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  f1 (n - 2) + (Nat.lor 1 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A174805.P8948477185193046032

namespace A174805

/-- `comp[a(n-2)+or(1, n)]` -/
def P8948477185193046032.Spec : Prop :=
  ∀ n, (P8948477185193046032.a n : ℤ) = A174805 n

end A174805

/-! ## A174805.P11153433937050981987

`comp[∑[gcd(n, (n+1)%a(n-1))]]` with `a(0)=1`
-/

namespace A174805.P11153433937050981987
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  Nat.gcd n ((n + 1) % f2 (n - 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A174805.P11153433937050981987

namespace A174805

/-- `comp[∑[gcd(n, (n+1)%a(n-1))]]` -/
def P11153433937050981987.Spec : Prop :=
  ∀ n, (P11153433937050981987.a n : ℤ) = A174805 n

end A174805

/-! ## A174805.P16081409838376962037

`comp[a(n-2)+n%2+n+1]` with `a(0)=1, a(1)=2`
-/

namespace A174805.P16081409838376962037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + (n % 2 + (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A174805.P16081409838376962037

namespace A174805

/-- `comp[a(n-2)+n%2+n+1]` -/
def P16081409838376962037.Spec : Prop :=
  ∀ n, (P16081409838376962037.a n : ℤ) = A174805 n

end A174805

/-! ## A174805.P15825182638465260578

`comp[A397113(n+1)]`
-/

namespace A174805.P15825182638465260578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A174805.P15825182638465260578

namespace A174805

/-- `comp[A397113(n+1)]` -/
def P15825182638465260578.Spec : Prop :=
  ∀ n, (P15825182638465260578.a n : ℤ) = A174805 n

end A174805

/-! ## A174805.P11783957702025144535

`comp[A397268(n+1)]`
-/

namespace A174805.P11783957702025144535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A174805.P11783957702025144535

namespace A174805

/-- `comp[A397268(n+1)]` -/
def P11783957702025144535.Spec : Prop :=
  ∀ n, (P11783957702025144535.a n : ℤ) = A174805 n

end A174805

/-! ## A174805.P9071555660541271987

`ceil(A028392(n)+sqrt(n))`
-/

namespace A174805.P9071555660541271987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A028392 n : ℝ) + Real.sqrt (n : ℝ)⌉

end

end A174805.P9071555660541271987

namespace A174805

/-- `ceil(A028392(n)+sqrt(n))` -/
def P9071555660541271987.Spec : Prop :=
  ∀ n, P9071555660541271987.a n = A174805 n

end A174805

/-! ## A174805.P7489434748854469526

`comp[∑[A124625(n)]+n]`
-/

namespace A174805.P7489434748854469526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A174805.P7489434748854469526

namespace A174805

/-- `comp[∑[A124625(n)]+n]` -/
def P7489434748854469526.Spec : Prop :=
  ∀ n, (P7489434748854469526.a n : ℤ) = A174805 n

end A174805

/-! ## A174805.P15047318525824530821

`comp[(n-A266285(n))²+n+n]`
-/

namespace A174805.P15047318525824530821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A266285 n) ^ 2 + (n : ℤ) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A174805.P15047318525824530821

namespace A174805

/-- `comp[(n-A266285(n))²+n+n]` -/
def P15047318525824530821.Spec : Prop :=
  ∀ n, (P15047318525824530821.a n : ℤ) = A174805 n

end A174805

/-! ## A174805.P317275265810582432

`comp[A170949(record[A170949(n+1)])]`
-/

namespace A174805.P317275265810582432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170949 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170949 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A174805.P317275265810582432

namespace A174805

/-- `comp[A170949(record[A170949(n+1)])]` -/
def P317275265810582432.Spec : Prop :=
  ∀ n, (P317275265810582432.a n : ℤ) = A174805 n

end A174805

/-! ## A174805.P3140891125721239693

`comp[A061409(n)-A061408(n+1)]`
-/

namespace A174805.P3140891125721239693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061409 n - A061408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A174805.P3140891125721239693

namespace A174805

/-- `comp[A061409(n)-A061408(n+1)]` -/
def P3140891125721239693.Spec : Prop :=
  ∀ n, (P3140891125721239693.a n : ℤ) = A174805 n

end A174805

/-! ## A174805.P2999448784925114928

`comp[A002331(n+2)²-A316826(2*n+1)]`
-/

namespace A174805.P2999448784925114928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002331 (n + 2) ^ 2 - A316826 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A174805.P2999448784925114928

namespace A174805

/-- `comp[A002331(n+2)²-A316826(2*n+1)]` -/
def P2999448784925114928.Spec : Prop :=
  ∀ n, (P2999448784925114928.a n : ℤ) = A174805 n

end A174805

/-! ## A174805.P3851751398529943409

`comp[A131728(2*n)²-A131728(2*n+1)]`
-/

namespace A174805.P3851751398529943409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131728 (2 * n) ^ 2 - A131728 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A174805.P3851751398529943409

namespace A174805

/-- `comp[A131728(2*n)²-A131728(2*n+1)]` -/
def P3851751398529943409.Spec : Prop :=
  ∀ n, (P3851751398529943409.a n : ℤ) = A174805 n

end A174805

/-! ## A174805.P1239330223156327823

`eq[A169695(A169695(n)+n), A169695(n)]`
-/

namespace A174805.P1239330223156327823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 (A169695 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174805.P1239330223156327823

namespace A174805

/-- `eq[A169695(A169695(n)+n), A169695(n)]` -/
def P1239330223156327823.Spec : Prop :=
  ∀ n, (P1239330223156327823.a n : ℤ) = A174805 n

end A174805

/-! ## A174805.P16046616523263180455

`eq[A267635(n), A267919(n)]`
-/

namespace A174805.P16046616523263180455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267919 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174805.P16046616523263180455

namespace A174805

/-- `eq[A267635(n), A267919(n)]` -/
def P16046616523263180455.Spec : Prop :=
  ∀ n, (P16046616523263180455.a n : ℤ) = A174805 n

end A174805

/-! ## A174805.P494845339676404700

`eq[A267635(n), A352080(n+2)]`
-/

namespace A174805.P494845339676404700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352080 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174805.P494845339676404700

namespace A174805

/-- `eq[A267635(n), A352080(n+2)]` -/
def P494845339676404700.Spec : Prop :=
  ∀ n, (P494845339676404700.a n : ℤ) = A174805 n

end A174805

/-! ## A174805.P17631436710057593566

`eq[1, A265411(A053188(n+1)²)]`
-/

namespace A174805.P17631436710057593566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265411 (A053188 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174805.P17631436710057593566

namespace A174805

/-- `eq[1, A265411(A053188(n+1)²)]` -/
def P17631436710057593566.Spec : Prop :=
  ∀ n, (P17631436710057593566.a n : ℤ) = A174805 n

end A174805

/-! ## A174805.P7744732038016701631

`lt[ratio[A169695(n)], A169695(n+2)]`
-/

namespace A174805.P7744732038016701631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n

end

end A174805.P7744732038016701631

namespace A174805

/-- `lt[ratio[A169695(n)], A169695(n+2)]` -/
def P7744732038016701631.Spec : Prop :=
  ∀ n, (P7744732038016701631.a n : ℤ) = A174805 n

end A174805

/-!
# A174806: a(n) = n-floor(sqrt(n))^2-floor(sqrt(n-floor(sqrt(n))^2))^2; difference between n and sum of two largest distinct squares <= n.

The programs for A174806, the canonical program `A174806.P5498934297320990843` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174806 has offset 0).

The definition of A174806 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174806.P5498934297320990843

`A053186(n-floor(sqrt(n))²)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A174806

/-- `A053186(n-floor(sqrt(n))²)` -/
def P5498934297320990843.Spec : Prop :=
  ∀ n, P5498934297320990843.a n = A174806 n

theorem P5498934297320990843.correct : P5498934297320990843.Spec := by
  intro n
  simp only [A174806]

end A174806

/-! ## A174806.P1201820409654197550

`A071797(1-floor(sqrt(n))²+n)-1`
-/

namespace A174806.P1201820409654197550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (1 - (Nat.sqrt n ^ 2 : ℤ) + (n : ℤ)).toNat - 1

end

end A174806.P1201820409654197550

namespace A174806

/-- `A071797(1-floor(sqrt(n))²+n)-1` -/
def P1201820409654197550.Spec : Prop :=
  ∀ n, P1201820409654197550.a n = A174806 n

end A174806

/-! ## A174806.P6632575287700269594

`n-floor(sqrt(n))²-A048760(n-floor(sqrt(n))²)`
-/

namespace A174806.P6632575287700269594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.sqrt n ^ 2 : ℤ) - A048760 (n - Nat.sqrt n ^ 2)

end

end A174806.P6632575287700269594

namespace A174806

/-- `n-floor(sqrt(n))²-A048760(n-floor(sqrt(n))²)` -/
def P6632575287700269594.Spec : Prop :=
  ∀ n, P6632575287700269594.a n = A174806 n

end A174806

/-! ## A174806.P2583046187247993929

`A053186(A053186(n))%35`
-/

namespace A174806.P2583046187247993929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053186 (A053186 n).toNat) 35

end

end A174806.P2583046187247993929

namespace A174806

/-- `A053186(A053186(n))%35` -/
def P2583046187247993929.Spec : Prop :=
  ∀ n, P2583046187247993929.a n = A174806 n

end A174806

/-! ## A174806.P16921996505113210823

`A053186(A053186(n))*A056926(n)`
-/

namespace A174806.P16921996505113210823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A053186 n).toNat * A056926 n

end

end A174806.P16921996505113210823

namespace A174806

/-- `A053186(A053186(n))*A056926(n)` -/
def P16921996505113210823.Spec : Prop :=
  ∀ n, P16921996505113210823.a n = A174806 n

end A174806

/-! ## A174806.P9223964870256775427

`C(A053186(A053186(n)), A054977(n))`
-/

namespace A174806.P9223964870256775427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053186 (A053186 n).toNat).toNat (A054977 n).toNat

end

end A174806.P9223964870256775427

namespace A174806

/-- `C(A053186(A053186(n)), A054977(n))` -/
def P9223964870256775427.Spec : Prop :=
  ∀ n, (P9223964870256775427.a n : ℤ) = A174806 n

end A174806

/-! ## A174806.P3475962716327112692

`∑{d}[A053186(A053186(n)), A000010(#)]`
-/

namespace A174806.P3475962716327112692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A053186 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A174806.P3475962716327112692

namespace A174806

/-- `∑{d}[A053186(A053186(n)), A000010(#)]` -/
def P3475962716327112692.Spec : Prop :=
  ∀ n, P3475962716327112692.a n = A174806 n

end A174806

/-! ## A174806.P10473343605279140519

`lcm((-1)^A007318(n), A053186(A053186(n)))`
-/

namespace A174806.P10473343605279140519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((-1 : ℚ) ^ (A007318 n : ℤ))) (A053186 (A053186 n).toNat)

end

end A174806.P10473343605279140519

namespace A174806

/-- `lcm((-1)^A007318(n), A053186(A053186(n)))` -/
def P10473343605279140519.Spec : Prop :=
  ∀ n, (P10473343605279140519.a n : ℤ) = A174806 n

end A174806

/-! ## A174806.P13216924327800019196

`A053186(A053186(n))+A008683(8*n+4)`
-/

namespace A174806.P13216924327800019196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A053186 n).toNat + A008683 (8 * n + 4)

end

end A174806.P13216924327800019196

namespace A174806

/-- `A053186(A053186(n))+A008683(8*n+4)` -/
def P13216924327800019196.Spec : Prop :=
  ∀ n, P13216924327800019196.a n = A174806 n

end A174806

/-! ## A174806.P4063528940822257885

`and(1, A000040(n+1))*A053186(A053186(n))`
-/

namespace A174806.P4063528940822257885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A053186 (A053186 n).toNat

end

end A174806.P4063528940822257885

namespace A174806

/-- `and(1, A000040(n+1))*A053186(A053186(n))` -/
def P4063528940822257885.Spec : Prop :=
  ∀ n, P4063528940822257885.a n = A174806 n

end A174806

/-! ## A174806.P352355674077560873

`A000041(C(2, n+1))*A053186(A053186(n))`
-/

namespace A174806.P352355674077560873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 1)) * A053186 (A053186 n).toNat

end

end A174806.P352355674077560873

namespace A174806

/-- `A000041(C(2, n+1))*A053186(A053186(n))` -/
def P352355674077560873.Spec : Prop :=
  ∀ n, P352355674077560873.a n = A174806 n

end A174806

/-! ## A174806.P9740756318466014540

`A007318(C(2, n+1))*A053186(A053186(n))`
-/

namespace A174806.P9740756318466014540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 1)) * A053186 (A053186 n).toNat

end

end A174806.P9740756318466014540

namespace A174806

/-- `A007318(C(2, n+1))*A053186(A053186(n))` -/
def P9740756318466014540.Spec : Prop :=
  ∀ n, P9740756318466014540.a n = A174806 n

end A174806

/-! ## A174806.P5571386537263003566

`A018252(gcd(n, n+1))*A053186(A053186(n))`
-/

namespace A174806.P5571386537263003566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (Nat.gcd n (n + 1)) * A053186 (A053186 n).toNat

end

end A174806.P5571386537263003566

namespace A174806

/-- `A018252(gcd(n, n+1))*A053186(A053186(n))` -/
def P5571386537263003566.Spec : Prop :=
  ∀ n, P5571386537263003566.a n = A174806 n

end A174806

/-! ## A174806.P16861648813798573689

`A007318(or(3, n)-n)*A053186(A053186(n))`
-/

namespace A174806.P16861648813798573689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.lor 3 n - n) * A053186 (A053186 n).toNat

end

end A174806.P16861648813798573689

namespace A174806

/-- `A007318(or(3, n)-n)*A053186(A053186(n))` -/
def P16861648813798573689.Spec : Prop :=
  ∀ n, P16861648813798573689.a n = A174806 n

end A174806

/-! ## A174806.P11195764743602380974

`A007318(and(3, -n)!)*A053186(A053186(n))`
-/

namespace A174806.P11195764743602380974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.factorial (Int.land 3 (-(n : ℤ))).toNat) * A053186 (A053186 n).toNat

end

end A174806.P11195764743602380974

namespace A174806

/-- `A007318(and(3, -n)!)*A053186(A053186(n))` -/
def P11195764743602380974.Spec : Prop :=
  ∀ n, P11195764743602380974.a n = A174806 n

end A174806

/-! ## A174806.P14849931320948290380

`A053186(A053186(n))*A267537(2*n)`
-/

namespace A174806.P14849931320948290380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A053186 n).toNat * A267537 (2 * n)

end

end A174806.P14849931320948290380

namespace A174806

/-- `A053186(A053186(n))*A267537(2*n)` -/
def P14849931320948290380.Spec : Prop :=
  ∀ n, P14849931320948290380.a n = A174806 n

end A174806

/-! ## A174806.P7645564877909079734

`A347794(2*(n-floor(sqrt(n))²))`
-/

namespace A174806.P7645564877909079734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347794 (2 * ((n : ℤ) - (Nat.sqrt n ^ 2 : ℤ))).toNat

end

end A174806.P7645564877909079734

namespace A174806

/-- `A347794(2*(n-floor(sqrt(n))²))` -/
def P7645564877909079734.Spec : Prop :=
  ∀ n, P7645564877909079734.a n = A174806 n

end A174806

/-!
# A174807: Floor(10^n/4) - A173228(n).

The programs for A174807, there is no canonical definition to state claims against.
-/

/-! ## A174807.P8142518992424191391

`floor(A183226(n+1)/4)`
-/

namespace A174807.P8142518992424191391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A183226 (n + 1) : ℚ) / 4⌋

end

end A174807.P8142518992424191391

/-! ## A174807.P6616706246127543358

`floor(A183228(n+1)/4)`
-/

namespace A174807.P6616706246127543358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A183228 (n + 1) : ℚ) / 4⌋

end

end A174807.P6616706246127543358

/-! ## A174807.P7363316328820332188

`(A183226(abs(1-n)+2)/4)%(n+1)`
-/

namespace A174807.P7363316328820332188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A183226 (|1 - (n : ℤ)| + 2).toNat : ℚ) / 4)) (n + 1 : ℤ)

end

end A174807.P7363316328820332188

/-! ## A174807.P9053124501677768185

`A183226(n*a(char[3]+1)+1)/4` with `a(0)=0, a(1)=1`
-/

namespace A174807.P9053124501677768185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (A183226 (SequenceMachineLib.roundAway ((n : ℚ) * a ((if ∃ j, f1 j = n then 1 else 0) + 1) + 1)).toNat : ℚ) / 4

end

end A174807.P9053124501677768185

/-! ## A174807.P10704122782677607116

`A002265(A183226(n+1))`
-/

namespace A174807.P10704122782677607116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A183226 (n + 1)).toNat

end

end A174807.P10704122782677607116

/-! ## A174807.P16378096972751660217

`A002265(A183228(n+1))`
-/

namespace A174807.P16378096972751660217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A183228 (n + 1)).toNat

end

end A174807.P16378096972751660217

/-! ## A174807.P14854260894691820451

`round(A183226(n+1)/4)%A000203(n+1)`
-/

namespace A174807.P14854260894691820451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A183226 (n + 1) : ℚ) / 4)) (A000203 (n + 1))

end

end A174807.P14854260894691820451

/-! ## A174807.P4681282302076560266

`round(A183226(and(1, A000040(n+1))+n)/4)`
-/

namespace A174807.P4681282302076560266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A183226 (Int.land 1 (A000040 (n + 1)) + (n : ℤ)).toNat : ℚ) / 4)

end

end A174807.P4681282302076560266

/-! ## A174807.P1376167087107394033

`A000040(n+1)%2*A183226(n+1)/4`
-/

namespace A174807.P1376167087107394033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A000040 (n + 1)) 2 : ℚ) * ((A183226 (n + 1) : ℚ) / 4)

end

end A174807.P1376167087107394033

/-! ## A174807.P16930868531022271926

`A183226(n+1)/4*A008683(2*A000040(n+1))`
-/

namespace A174807.P16930868531022271926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183226 (n + 1) : ℚ) / 4 * (A008683 (2 * A000040 (n + 1)).toNat : ℚ)

end

end A174807.P16930868531022271926

/-!
# A174808: A transform of the large Schroeder numbers A006318.

The programs for A174808, there is no canonical definition to state claims against.
-/

/-! ## A174808.P8314911260237285993

`A036453(n+1)*A174810(n)`
-/

namespace A174808.P8314911260237285993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A174810 n

end

end A174808.P8314911260237285993

/-! ## A174808.P3144996382086876217

`A020639(A004277(n))*A174810(n)`
-/

namespace A174808.P3144996382086876217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A174810 n

end

end A174808.P3144996382086876217

/-! ## A174808.P15420999574288207149

`A020639(A008574(n))*A174810(n)`
-/

namespace A174808.P15420999574288207149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008574 n).toNat * A174810 n

end

end A174808.P15420999574288207149

/-! ## A174808.P15192855686500969730

`A020639(A022144(n))*A174810(n)`
-/

namespace A174808.P15192855686500969730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A022144 n).toNat * A174810 n

end

end A174808.P15192855686500969730

/-! ## A174808.P440905424893005739

`A020639(A034896(n))*A174810(n)`
-/

namespace A174808.P440905424893005739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A034896 n).toNat * A174810 n

end

end A174808.P440905424893005739

/-! ## A174808.P11507854326245539477

`A174810(n)*A174835(A000120(n))`
-/

namespace A174808.P11507854326245539477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174810 n * A174835 (A000120 n).toNat

end

end A174808.P11507854326245539477

/-! ## A174808.P15709874621645524228

`A174810(n)*A174835(A072137(n))`
-/

namespace A174808.P15709874621645524228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174810 n * A174835 (A072137 n).toNat

end

end A174808.P15709874621645524228

/-! ## A174808.P11990514443406598256

`A001221(A077065(n+1))*A174810(n)`
-/

namespace A174808.P11990514443406598256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A077065 (n + 1)).toNat * A174810 n

end

end A174808.P11990514443406598256

/-! ## A174808.P17733813966775589039

`A001221(A077068(n+1))*A174810(n)`
-/

namespace A174808.P17733813966775589039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A077068 (n + 1)).toNat * A174810 n

end

end A174808.P17733813966775589039

/-! ## A174808.P8593382587157524600

`A020639(A174824(n+1))*A174810(n)`
-/

namespace A174808.P8593382587157524600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A174824 (n + 1)).toNat * A174810 n

end

end A174808.P8593382587157524600

/-!
# A174810: A transform of the little Schroeder numbers A001003.

The programs for A174810, there is no canonical definition to state claims against.
-/

/-! ## A174810.P1850722114171739465

`ceil(A174808(n)/2)`
-/

namespace A174810.P1850722114171739465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A174808 n : ℚ) / 2⌉

end

end A174810.P1850722114171739465

/-! ## A174810.P12532451418554082340

`A174808(n)/A036453(n+1)`
-/

namespace A174810.P12532451418554082340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174808 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A174810.P12532451418554082340

/-! ## A174810.P4095088363911129622

`A174808(A000007(n)+n)/2`
-/

namespace A174810.P4095088363911129622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174808 (A000007 n + (n : ℤ)).toNat : ℚ) / 2

end

end A174810.P4095088363911129622

/-! ## A174810.P7794646643880839545

`A174808(A004277(n)-n)/2`
-/

namespace A174810.P7794646643880839545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174808 (A004277 n - (n : ℤ)).toNat : ℚ) / 2

end

end A174810.P7794646643880839545

/-! ## A174810.P4591410176354886287

`A174808(n)/A020639(A004277(n))`
-/

namespace A174810.P4591410176354886287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174808 n : ℚ) / (A020639 (A004277 n).toNat : ℚ)

end

end A174810.P4591410176354886287

/-! ## A174810.P15411393399614250065

`A174808(n)/A020639(A008574(n))`
-/

namespace A174810.P15411393399614250065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174808 n : ℚ) / (A020639 (A008574 n).toNat : ℚ)

end

end A174810.P15411393399614250065

/-! ## A174810.P8501198500160908538

`A174808(n)/A000005(A008578(n+1))`
-/

namespace A174810.P8501198500160908538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174808 n : ℚ) / (A000005 (A008578 (n + 1)).toNat : ℚ)

end

end A174810.P8501198500160908538

/-! ## A174810.P11444941859550890614

`A001003(n)/A006318(n)*A174808(n)`
-/

namespace A174810.P11444941859550890614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001003 n : ℚ) / (A006318 n : ℚ) * (A174808 n : ℚ)

end

end A174810.P11444941859550890614

/-!
# A174812: Primes of the form n^2+42.

The programs for A174812, there is no canonical definition to state claims against.
-/

/-! ## A174812.P15198266826632361236

`A104110(n+1)²+42`
-/

namespace A174812.P15198266826632361236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104110 (n + 1) ^ 2 + 42

end

end A174812.P15198266826632361236

/-! ## A174812.P3984060682288301880

`p?[n²+42]`
-/

namespace A174812.P3984060682288301880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 42

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A174812.P3984060682288301880

/-! ## A174812.P18131505460666536981

`or(1, p?[n^2+42])`
-/

namespace A174812.P18131505460666536981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 42

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A174812.P18131505460666536981

/-! ## A174812.P16482507362225304982

`∑{p}[p?[n^2+42], #]`
-/

namespace A174812.P16482507362225304982
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 42

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A174812.P16482507362225304982

/-! ## A174812.P15498049260054734086

`∏{p}[p?[n^2+42], #]`
-/

namespace A174812.P15498049260054734086
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 42

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A174812.P15498049260054734086

/-! ## A174812.P5887427498949318378

`and(-5, p?[n^2+42])`
-/

namespace A174812.P5887427498949318378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 42

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-5) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A174812.P5887427498949318378

/-! ## A174812.P1073677805661985106

`A000027(p?[A000290(n)+42])`
-/

namespace A174812.P1073677805661985106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n + 42

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A174812.P1073677805661985106

/-!
# A174813: a(n) = number whose product of digits equals a power of 3.

The programs for A174813, the canonical program `A174813.P5082787198500863838` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174813 has offset 1).

The definition of A174813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174813.P5082787198500863838

`∩[A039132(n+1), A136333(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A174813

/-- `∩[A039132(n+1), A136333(n+1)]` -/
def P5082787198500863838.Spec : Prop :=
  ∀ n, (P5082787198500863838.a n : ℤ) = A174813 (n + 1)

theorem P5082787198500863838.correct : P5082787198500863838.Spec := by
  intro n
  simp only [A174813, Nat.add_sub_cancel]

end A174813

/-! ## A174813.P15221949395566458529

`∩[A039143(n+1), A136333(n+1)]`
-/

namespace A174813.P15221949395566458529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174813.P15221949395566458529

namespace A174813

/-- `∩[A039143(n+1), A136333(n+1)]` -/
def P15221949395566458529.Spec : Prop :=
  ∀ n, (P15221949395566458529.a n : ℤ) = A174813 (n + 1)

end A174813

/-! ## A174813.P16409493575749521105

`∩[A039147(n+1), A136333(n+1)]`
-/

namespace A174813.P16409493575749521105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174813.P16409493575749521105

namespace A174813

/-- `∩[A039147(n+1), A136333(n+1)]` -/
def P16409493575749521105.Spec : Prop :=
  ∀ n, (P16409493575749521105.a n : ℤ) = A174813 (n + 1)

end A174813

/-! ## A174813.P14456823737230578773

`∩[A039150(n+1), A136333(n+1)]`
-/

namespace A174813.P14456823737230578773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174813.P14456823737230578773

namespace A174813

/-- `∩[A039150(n+1), A136333(n+1)]` -/
def P14456823737230578773.Spec : Prop :=
  ∀ n, (P14456823737230578773.a n : ℤ) = A174813 (n + 1)

end A174813

/-! ## A174813.P17814747221332964311

`∩[A039153(n+1), A136333(n+1)]`
-/

namespace A174813.P17814747221332964311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174813.P17814747221332964311

namespace A174813

/-- `∩[A039153(n+1), A136333(n+1)]` -/
def P17814747221332964311.Spec : Prop :=
  ∀ n, (P17814747221332964311.a n : ℤ) = A174813 (n + 1)

end A174813

/-! ## A174813.P2932631949166352865

`∩[A039118(n+1), A136333(n+1)]`
-/

namespace A174813.P2932631949166352865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174813.P2932631949166352865

namespace A174813

/-- `∩[A039118(n+1), A136333(n+1)]` -/
def P2932631949166352865.Spec : Prop :=
  ∀ n, (P2932631949166352865.a n : ℤ) = A174813 (n + 1)

end A174813

/-! ## A174813.P1459834732589053714

`∩[A052419(n+1), A136333(n+1)]`
-/

namespace A174813.P1459834732589053714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174813.P1459834732589053714

namespace A174813

/-- `∩[A052419(n+1), A136333(n+1)]` -/
def P1459834732589053714.Spec : Prop :=
  ∀ n, (P1459834732589053714.a n : ℤ) = A174813 (n + 1)

end A174813

/-! ## A174813.P10605900744656887782

`A106647(A036435(n+1))`
-/

namespace A174813.P10605900744656887782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106647 (A036435 (n + 1)).toNat

end

end A174813.P10605900744656887782

namespace A174813

/-- `A106647(A036435(n+1))` -/
def P10605900744656887782.Spec : Prop :=
  ∀ n, P10605900744656887782.a n = A174813 (n + 1)

end A174813

/-! ## A174813.P5225101943552839185

`eq[1, A005812(A007954(n))]`
-/

namespace A174813.P5225101943552839185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174813.P5225101943552839185

namespace A174813

/-- `eq[1, A005812(A007954(n))]` -/
def P5225101943552839185.Spec : Prop :=
  ∀ n, (P5225101943552839185.a n : ℤ) = A174813 (n + 1)

end A174813

/-! ## A174813.P13230738386850047241

`eq[n, A351744(A222246(n))]`
-/

namespace A174813.P13230738386850047241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351744 (A222246 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174813.P13230738386850047241

namespace A174813

/-- `eq[n, A351744(A222246(n))]` -/
def P13230738386850047241.Spec : Prop :=
  ∀ n, (P13230738386850047241.a n : ℤ) = A174813 (n + 1)

end A174813

/-! ## A174813.P13821400835939747639

`record[A222248(A014261(n+1))]`
-/

namespace A174813.P13821400835939747639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (A014261 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174813.P13821400835939747639

namespace A174813

/-- `record[A222248(A014261(n+1))]` -/
def P13821400835939747639.Spec : Prop :=
  ∀ n, P13821400835939747639.a n = A174813 (n + 1)

end A174813

/-! ## A174813.P838791369389730257

`record[A222253(A136333(n+1))]`
-/

namespace A174813.P838791369389730257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A136333 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174813.P838791369389730257

namespace A174813

/-- `record[A222253(A136333(n+1))]` -/
def P838791369389730257.Spec : Prop :=
  ∀ n, P838791369389730257.a n = A174813 (n + 1)

end A174813

/-! ## A174813.P18080276432358226951

`eq[A222241(A235049(n)), A306436(n)]`
-/

namespace A174813.P18080276432358226951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 (A235049 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306436 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174813.P18080276432358226951

namespace A174813

/-- `eq[A222241(A235049(n)), A306436(n)]` -/
def P18080276432358226951.Spec : Prop :=
  ∀ n, (P18080276432358226951.a n : ℤ) = A174813 (n + 1)

end A174813

/-! ## A174813.P1280222928389703488

`record[A107128(A107128(A202268(n+1)))]`
-/

namespace A174813.P1280222928389703488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 (A107128 (A202268 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174813.P1280222928389703488

namespace A174813

/-- `record[A107128(A107128(A202268(n+1)))]` -/
def P1280222928389703488.Spec : Prop :=
  ∀ n, P1280222928389703488.a n = A174813 (n + 1)

end A174813

/-!
# A174814: a(n) = n*(n+1)*(5*n+1)/3.

The programs for A174814, the canonical program `A174814.P3893259871926589955` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174814 has offset 0).

The definition of A174814 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174814.P3893259871926589955

`n*(n+1)*(5*n+1)/3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A174814

/-- `n*(n+1)*(5*n+1)/3` -/
def P3893259871926589955.Spec : Prop :=
  ∀ n, P3893259871926589955.a n = (A174814 n : ℚ)

end A174814

/-! ## A174814.P6125667121015202500

`∑[∑[a(n-1)+10]]` with `a(0)=0, a(1)=4`
-/

namespace A174814.P6125667121015202500
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f2 =>
  f2 (n - 1) + 10

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174814.P6125667121015202500

namespace A174814

/-- `∑[∑[a(n-1)+10]]` -/
def P6125667121015202500.Spec : Prop :=
  ∀ n, (P6125667121015202500.a n : ℤ) = A174814 n

end A174814

/-! ## A174814.P12361488683950282773

`∑[C(3*n, 2)]+∑[∑[n]]`
-/

namespace A174814.P12361488683950282773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A174814.P12361488683950282773

namespace A174814

/-- `∑[C(3*n, 2)]+∑[∑[n]]` -/
def P12361488683950282773.Spec : Prop :=
  ∀ n, (P12361488683950282773.a n : ℤ) = A174814 n

end A174814

/-! ## A174814.P7807383742767643711

`Δ[C(2*n+1, 4)]-n^3`
-/

namespace A174814.P7807383742767643711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n ^ 3 : ℤ)

end

end A174814.P7807383742767643711

namespace A174814

/-- `Δ[C(2*n+1, 4)]-n^3` -/
def P7807383742767643711.Spec : Prop :=
  ∀ n, P7807383742767643711.a n = A174814 n

end A174814

/-! ## A174814.P10947272071730309838

`5*n²+a(n-1)-n` with `a(0)=0`
-/

namespace A174814.P10947272071730309838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (5 * n ^ 2 : ℤ) + (a (n - 1) - (n : ℤ))

end

end A174814.P10947272071730309838

namespace A174814

/-- `5*n²+a(n-1)-n` -/
def P10947272071730309838.Spec : Prop :=
  ∀ n, P10947272071730309838.a n = A174814 n

end A174814

/-! ## A174814.P14284368426455720817

`5*n²-(n-a(n-1))` with `a(0)=0`
-/

namespace A174814.P14284368426455720817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (5 * n ^ 2 : ℤ) - ((n : ℤ) - a (n - 1))

end

end A174814.P14284368426455720817

namespace A174814

/-- `5*n²-(n-a(n-1))` -/
def P14284368426455720817.Spec : Prop :=
  ∀ n, P14284368426455720817.a n = A174814 n

end A174814

/-! ## A174814.P7019577042556523376

`∑[2*n²]+lcm(n+1, n²)`
-/

namespace A174814.P7019577042556523376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lcm (n + 1) (n ^ 2)

end

end A174814.P7019577042556523376

namespace A174814

/-- `∑[2*n²]+lcm(n+1, n²)` -/
def P7019577042556523376.Spec : Prop :=
  ∀ n, (P7019577042556523376.a n : ℤ) = A174814 n

end A174814

/-! ## A174814.P1522360412322926927

`a(n-1)+n*(5*n-1)` with `a(0)=0`
-/

namespace A174814.P1522360412322926927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) * ((5 * n : ℤ) - 1)

end

end A174814.P1522360412322926927

namespace A174814

/-- `a(n-1)+n*(5*n-1)` -/
def P1522360412322926927.Spec : Prop :=
  ∀ n, P1522360412322926927.a n = A174814 n

end A174814

/-! ## A174814.P15072342835257626756

`2*n*∑[2*n]-∑[lcm(n, n-1)]`
-/

namespace A174814.P15072342835257626756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A174814.P15072342835257626756

namespace A174814

/-- `2*n*∑[2*n]-∑[lcm(n, n-1)]` -/
def P15072342835257626756.Spec : Prop :=
  ∀ n, P15072342835257626756.a n = A174814 n

end A174814

/-! ## A174814.P2435076332640483852

`∑[A172043(n)-1]`
-/

namespace A174814.P2435076332640483852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172043 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174814.P2435076332640483852

namespace A174814

/-- `∑[A172043(n)-1]` -/
def P2435076332640483852.Spec : Prop :=
  ∀ n, P2435076332640483852.a n = A174814 n

end A174814

/-! ## A174814.P7020058336879483304

`∑[2*A005476(n)]`
-/

namespace A174814.P7020058336879483304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174814.P7020058336879483304

namespace A174814

/-- `∑[2*A005476(n)]` -/
def P7020058336879483304.Spec : Prop :=
  ∀ n, P7020058336879483304.a n = A174814 n

end A174814

/-! ## A174814.P10484288893254257419

`∑[A033429(n)-n]`
-/

namespace A174814.P10484288893254257419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033429 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174814.P10484288893254257419

namespace A174814

/-- `∑[A033429(n)-n]` -/
def P10484288893254257419.Spec : Prop :=
  ∀ n, P10484288893254257419.a n = A174814 n

end A174814

/-! ## A174814.P2588014190745439294

`A258582(n)-n^3`
-/

namespace A174814.P2588014190745439294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258582 n - (n ^ 3 : ℤ)

end

end A174814.P2588014190745439294

namespace A174814

/-- `A258582(n)-n^3` -/
def P2588014190745439294.Spec : Prop :=
  ∀ n, P2588014190745439294.a n = A174814 n

end A174814

/-! ## A174814.P5056869183823528951

`∑[A033991(n)+n²]`
-/

namespace A174814.P5056869183823528951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033991 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174814.P5056869183823528951

namespace A174814

/-- `∑[A033991(n)+n²]` -/
def P5056869183823528951.Spec : Prop :=
  ∀ n, P5056869183823528951.a n = A174814 n

end A174814

/-! ## A174814.P14642440918379688777

`A132124(n)+∑[n²]`
-/

namespace A174814.P14642440918379688777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132124 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A174814.P14642440918379688777

namespace A174814

/-- `A132124(n)+∑[n²]` -/
def P14642440918379688777.Spec : Prop :=
  ∀ n, P14642440918379688777.a n = A174814 n

end A174814

/-! ## A174814.P18340077888906360732

`∑[A049452(n)-n²]`
-/

namespace A174814.P18340077888906360732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049452 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174814.P18340077888906360732

namespace A174814

/-- `∑[A049452(n)-n²]` -/
def P18340077888906360732.Spec : Prop :=
  ∀ n, P18340077888906360732.a n = A174814 n

end A174814

/-! ## A174814.P6842443633065511804

`A135713(n)-∑[n²]`
-/

namespace A174814.P6842443633065511804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135713 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A174814.P6842443633065511804

namespace A174814

/-- `A135713(n)-∑[n²]` -/
def P6842443633065511804.Spec : Prop :=
  ∀ n, P6842443633065511804.a n = A174814 n

end A174814

/-! ## A174814.P5516380986086207817

`∑[A147874(n+1)+n]`
-/

namespace A174814.P5516380986086207817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147874 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174814.P5516380986086207817

namespace A174814

/-- `∑[A147874(n+1)+n]` -/
def P5516380986086207817.Spec : Prop :=
  ∀ n, P5516380986086207817.a n = A174814 n

end A174814

/-!
# A174816: Numbers n such that n^4 + n^2 - 1 is prime.

The programs for A174816, there is no canonical definition to state claims against.
-/

/-! ## A174816.P9193843214683739851

`floor(root(A174819(n+1), 4))`
-/

namespace A174816.P9193843214683739851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A174819 (n + 1) : ℝ) ^ (1 / (4 : ℝ))⌋

end

end A174816.P9193843214683739851

/-! ## A174816.P17618452029017798571

`round(root(A174819(n+1), 4))%A017152(n)`
-/

namespace A174816.P17618452029017798571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A174819 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))) (A017152 n)

end

end A174816.P17618452029017798571

/-! ## A174816.P11703754720085671026

`A033999(n)²*round(root(A174819(n+1), 4))`
-/

namespace A174816.P11703754720085671026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * SequenceMachineLib.roundAway ((A174819 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))

end

end A174816.P11703754720085671026

/-! ## A174816.P17281120255052137283

`A158388(n)²*round(root(A174819(n+1), 4))`
-/

namespace A174816.P17281120255052137283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n ^ 2 * SequenceMachineLib.roundAway ((A174819 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))

end

end A174816.P17281120255052137283

/-! ## A174816.P15054158668138179919

`(A002522(n)-n²)*round(root(A174819(n+1), 4))`
-/

namespace A174816.P15054158668138179919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002522 n - (n ^ 2 : ℤ)) * SequenceMachineLib.roundAway ((A174819 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))

end

end A174816.P15054158668138179919

/-! ## A174816.P7225937643139782469

`round(root(A174819(n+1), 4))+A005843(n+1)%2`
-/

namespace A174816.P7225937643139782469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A174819 (n + 1) : ℝ) ^ (1 / (4 : ℝ))) + Int.tmod (A005843 (n + 1)) 2

end

end A174816.P7225937643139782469

/-! ## A174816.P1858894489652548973

`round(A000007(n+1)+root(A174819(n+1), 4))`
-/

namespace A174816.P1858894489652548973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000007 (n + 1) : ℝ) + (A174819 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))

end

end A174816.P1858894489652548973

/-! ## A174816.P1782160233274904897

`ceil(root(A174819(n+1), 4)-A054977(n+2))`
-/

namespace A174816.P1782160233274904897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A174819 (n + 1) : ℝ) ^ (1 / (4 : ℝ)) - (A054977 (n + 2) : ℝ)⌉

end

end A174816.P1782160233274904897

/-! ## A174816.P1191897543682938148

`A056926(floor(sqrt(A174819(n+1))))`
-/

namespace A174816.P1191897543682938148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (Int.sqrt (A174819 (n + 1))).toNat

end

end A174816.P1191897543682938148

/-! ## A174816.P5602119462488137741

`A056926(round(sqrt(A174819(n+1))))`
-/

namespace A174816.P5602119462488137741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (SequenceMachineLib.roundAway (Real.sqrt (A174819 (n + 1) : ℝ))).toNat

end

end A174816.P5602119462488137741

/-!
# A174819: Primes of form n^4 + n^2 - 1.

The programs for A174819, there is no canonical definition to state claims against.
-/

/-! ## A174819.P12440177741455099174

`record[A209188((n+2)²)]`
-/

namespace A174819.P12440177741455099174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209188 ((n + 2) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174819.P12440177741455099174

/-! ## A174819.P13382894846311548318

`record[A108151((n+2)²-1)]`
-/

namespace A174819.P13382894846311548318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108151 ((n + 2) ^ 2 - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174819.P13382894846311548318

/-! ## A174819.P17009181545536026140

`p?[n^4+n²-1]`
-/

namespace A174819.P17009181545536026140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) + ((n ^ 2 : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174819.P17009181545536026140

/-! ## A174819.P13179127643260054395

`∏{p}[p?[(n²+1)*n²-1], #]`
-/

namespace A174819.P13179127643260054395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 + 1) * n ^ 2 : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A174819.P13179127643260054395

/-! ## A174819.P10983037884911267124

`∑{p}[p?[2*C((n+1)²+1, 2)-1], #]`
-/

namespace A174819.P10983037884911267124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose ((n + 1) ^ 2 + 1) 2 : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A174819.P10983037884911267124

/-!
# A174820: Triangle T(n,k) read by rows. T(n,k) = A174557(n,k)-A174557(n-1,k).

The programs for A174820, there is no canonical definition to state claims against.
-/

/-! ## A174820.P3694735634704938202

`A251635(n)-A175992(n+1)`
-/

namespace A174820.P3694735634704938202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251635 n - A175992 (n + 1)

end

end A174820.P3694735634704938202

/-! ## A174820.P14016481030867357464

`2*A167374(n)-A051731(n+1)`
-/

namespace A174820.P14016481030867357464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A167374 n - A051731 (n + 1)

end

end A174820.P14016481030867357464

/-! ## A174820.P5011503358442607583

`-or(-A251635(n), A051731(n+1))`
-/

namespace A174820.P5011503358442607583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (-A251635 n) (A051731 (n + 1))

end

end A174820.P5011503358442607583

/-! ## A174820.P3561862739228754732

`-(A051731(n+1)+Δ[A154990(n+1)])`
-/

namespace A174820.P3561862739228754732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A051731 (n + 1) + (f1 (n + 1) - f1 n))

end

end A174820.P3561862739228754732

/-! ## A174820.P12344524417489877011

`Δ[A158388(A025581(n))]-A051731(n+1)`
-/

namespace A174820.P12344524417489877011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A051731 (n + 1)

end

end A174820.P12344524417489877011

/-! ## A174820.P11078907881437437060

`A130321(n)*A167374(n)-A175992(n+1)`
-/

namespace A174820.P11078907881437437060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A167374 n - A175992 (n + 1)

end

end A174820.P11078907881437437060

/-! ## A174820.P8364392243950758818

`A004736(n+1)*A167374(n)-A175992(n+1)`
-/

namespace A174820.P8364392243950758818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A167374 n - A175992 (n + 1)

end

end A174820.P8364392243950758818

/-! ## A174820.P16693663072902288799

`A154990(n+1)-(A154990(n+2)+A051731(n+1))`
-/

namespace A174820.P16693663072902288799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154990 (n + 1) - (A154990 (n + 2) + A051731 (n + 1))

end

end A174820.P16693663072902288799

/-! ## A174820.P785176915837063139

`Δ[A163894(A130321(n))]-A051731(n+1)`
-/

namespace A174820.P785176915837063139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163894 (A130321 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A051731 (n + 1)

end

end A174820.P785176915837063139

/-! ## A174820.P1317824818736807957

`A174557(n+1)-A154990(n+2)*A176808(n+1)`
-/

namespace A174820.P1317824818736807957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174557 (n + 1) - A154990 (n + 2) * A176808 (n + 1)

end

end A174820.P1317824818736807957

/-!
# A174821: Numbers n such that n^4 - n^2 - 1 is prime.

The programs for A174821, there is no canonical definition to state claims against.
-/

/-! ## A174821.P13212613543732981368

`ceil(sqrt(sqrt(A174822(n+1))))`
-/

namespace A174821.P13212613543732981368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A174822 (n + 1) : ℝ))⌉

end

end A174821.P13212613543732981368

/-! ## A174821.P13787967181075285581

`sqrt(A235484(n+1))`
-/

namespace A174821.P13787967181075285581
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A235484 (n + 1) : ℝ)

end

end A174821.P13787967181075285581

/-! ## A174821.P9996671650349650579

`root(A235484(n+1), A020639(2*(n+1)))`
-/

namespace A174821.P9996671650349650579
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235484 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A174821.P9996671650349650579

/-! ## A174821.P7207779398770132920

`root(A235484(n+1), 2)%A000040(n+1)²`
-/

namespace A174821.P7207779398770132920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A235484 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A000040 (n + 1) ^ 2)

end

end A174821.P7207779398770132920

/-! ## A174821.P9175652932093793958

`root(A235484(n+1), 2)*A007318(∑[n])`
-/

namespace A174821.P9175652932093793958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235484 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A174821.P9175652932093793958

/-!
# A174822: Primes of form n^4 - n^2 - 1.

The programs for A174822, there is no canonical definition to state claims against.
-/

/-! ## A174822.P11609757848193349528

`A060886(A174821(n+1))-2`
-/

namespace A174822.P11609757848193349528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060886 (A174821 (n + 1)).toNat - 2

end

end A174822.P11609757848193349528

/-! ## A174822.P8412506517467727252

`abs(A060886(A174821(Δ[n²]-n))-2)`
-/

namespace A174822.P8412506517467727252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A060886 (A174821 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat - 2|

end

end A174822.P8412506517467727252

/-! ## A174822.P18135743977347921950

`A235484(n+1)²-(A235484(n+1)+1)`
-/

namespace A174822.P18135743977347921950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235484 (n + 1) ^ 2 - (A235484 (n + 1) + 1)

end

end A174822.P18135743977347921950

/-! ## A174822.P3774982351136208993

`record[A356247((n+2)²)]`
-/

namespace A174822.P3774982351136208993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356247 ((n + 2) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174822.P3774982351136208993

/-! ## A174822.P1094333737601480150

`A111802(A235484(n+1))`
-/

namespace A174822.P1094333737601480150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111802 (A235484 (n + 1)).toNat

end

end A174822.P1094333737601480150

/-!
# A174823: Numbers n such that the union of the decimal digits of n^2 and n^3 contains every decimal digit exactly three times.

The programs for A174823, there is no canonical definition to state claims against.
-/

/-! ## A174823.P11751974698353793103

`A363927(n+3)`
-/

namespace A174823.P11751974698353793103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363927 (n + 3)

end

end A174823.P11751974698353793103

/-!
# A174824: a(n) = period of the sequence {m^m, m >= 1} modulo n.

The programs for A174824, there is no canonical definition to state claims against.
-/

/-! ## A174824.P6794254577437616438

`(n+1)*A268336(n+1)`
-/

namespace A174824.P6794254577437616438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A268336 (n + 1)

end

end A174824.P6794254577437616438

/-! ## A174824.P15188997683292475074

`lcm(n+1, A002322(n+1))`
-/

namespace A174824.P15188997683292475074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A002322 (n + 1))

end

end A174824.P15188997683292475074

/-! ## A174824.P10244817856150431521

`lcm(xor(n, -1), A011773(n+1))`
-/

namespace A174824.P10244817856150431521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.xor (n : ℤ) (-1)) (A011773 (n + 1))

end

end A174824.P10244817856150431521

/-! ## A174824.P12360613796454909906

`(n+1)*A002322(n+1)/A327979(n+1)`
-/

namespace A174824.P12360613796454909906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A002322 (n + 1) : ℚ) / (A327979 (n + 1) : ℚ))

end

end A174824.P12360613796454909906

/-! ## A174824.P13610846619927019794

`lcm(A000027(n+1), A011773(A000027(n+1)))`
-/

namespace A174824.P13610846619927019794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A011773 (A000027 (n + 1)).toNat)

end

end A174824.P13610846619927019794

/-! ## A174824.P3628620260842223041

`lcm(-A001478(n+1), A011773(A058035(n+1)))`
-/

namespace A174824.P3628620260842223041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A001478 (n + 1)) (A011773 (A058035 (n + 1)).toNat)

end

end A174824.P3628620260842223041

/-! ## A174824.P17002510022575416264

`lcm(A002322(A008619(2*n)), A008619(2*n))`
-/

namespace A174824.P17002510022575416264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002322 (A008619 (2 * n)).toNat) (A008619 (2 * n))

end

end A174824.P17002510022575416264

/-! ## A174824.P13656727444767681149

`A051173(A011773(n+1)+A000217(n))`
-/

namespace A174824.P13656727444767681149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051173 (A011773 (n + 1) + A000217 n).toNat

end

end A174824.P13656727444767681149

/-! ## A174824.P7361854889727578468

`A011773(A064549(n+1))`
-/

namespace A174824.P7361854889727578468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011773 (A064549 (n + 1)).toNat

end

end A174824.P7361854889727578468

/-! ## A174824.P4804653237346626890

`A002322(A354258(n+1))`
-/

namespace A174824.P4804653237346626890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A354258 (n + 1)).toNat

end

end A174824.P4804653237346626890

/-! ## A174824.P8765536762002385154

`A011773((n+1)*A007947(n+1))`
-/

namespace A174824.P8765536762002385154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011773 ((n + 1 : ℤ) * A007947 (n + 1)).toNat

end

end A174824.P8765536762002385154

/-!
# A174827: Hankel transform of A098278.

The programs for A174827, there is no canonical definition to state claims against.
-/

/-! ## A174827.P14344458268037811273

`∏[n!²*(2*n)!]`
-/

namespace A174827.P14344458268037811273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 2 * Nat.factorial (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A174827.P14344458268037811273

/-! ## A174827.P15981256979985827157

`∏[a(n-1)*record[lcm(2, n)]*n^3]` with `a(0)=1, a(1)=2`
-/

namespace A174827.P15981256979985827157
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A174827.P15981256979985827157

/-! ## A174827.P712533249423398026

`A000178(n)²*A098694(n)`
-/

namespace A174827.P712533249423398026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 n ^ 2 * A098694 n

end

end A174827.P712533249423398026

/-!
# A174828: An averaging sum sequence based on:a(n,m)=Floor[(a(n - 1, m - 1) + a(n - 1, m))/2] with limit q.

The programs for A174828, there is no canonical definition to state claims against.
-/

/-! ## A174828.P5411582337364361370

`A084556((1-C(∑[char[∑[n]]], 2)+n)^ceil(n/2))`
-/

namespace A174828.P5411582337364361370
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084556 (SequenceMachineLib.roundAway ((1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ) : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ))).toNat

end

end A174828.P5411582337364361370

/-! ## A174828.P807157104270114510

`dr(A007088(A194583(n)))`
-/

namespace A174828.P807157104270114510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007088 (A194583 n).toNat)

end

end A174828.P807157104270114510

/-! ## A174828.P8938861954824106321

`∑{e}[A002378(A113025(n)), #]`
-/

namespace A174828.P8938861954824106321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A113025 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A174828.P8938861954824106321

/-! ## A174828.P6825500998801676230

`A000195(6*A210654(n+1))`
-/

namespace A174828.P6825500998801676230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (6 * A210654 (n + 1)).toNat

end

end A174828.P6825500998801676230

/-! ## A174828.P16025638004202787764

`A000120(A194583(n))`
-/

namespace A174828.P16025638004202787764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A194583 n).toNat

end

end A174828.P16025638004202787764

/-!
# A174829: An averaging sum sequence based on( improved):a(n,m,q)=Floor[(a(n - 1, m - 1,q) + a(n - 1, m,q))/2] with limit q.

The programs for A174829, there is no canonical definition to state claims against.
-/

/-! ## A174829.P9529555268184359409

`A260999(A292627(n)+A107348(n))`
-/

namespace A174829.P9529555268184359409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (A292627 n + A107348 n).toNat

end

end A174829.P9529555268184359409

/-! ## A174829.P15503948965331070151

`A279416(n+1)+A052343(A098063(n)!)`
-/

namespace A174829.P15503948965331070151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279416 (n + 1) + A052343 (Nat.factorial (A098063 n).toNat)

end

end A174829.P15503948965331070151

/-! ## A174829.P8542551999460408026

`A279416(n+1)+A133011(A046421(n))`
-/

namespace A174829.P8542551999460408026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279416 (n + 1) + A133011 (A046421 n).toNat

end

end A174829.P8542551999460408026

/-! ## A174829.P17923348212589065993

`A331126(∑{d}[A331278(n), A005136(#)])+A279416(n+1)`
-/

namespace A174829.P17923348212589065993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331126 (∑ d ∈ Nat.divisors (f1 n).natAbs, A005136 d).toNat + A279416 (n + 1)

end

end A174829.P17923348212589065993

/-! ## A174829.P3874057913037090399

`A331161(∑{d}[A331278(n), A005136(#)])+A279416(n+1)`
-/

namespace A174829.P3874057913037090399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331161 (∑ d ∈ Nat.divisors (f1 n).natAbs, A005136 d).toNat + A279416 (n + 1)

end

end A174829.P3874057913037090399

/-!
# A174830: Odd numbers k such that k^2 is an abundant number.

The programs for A174830, there is no canonical definition to state claims against.
-/

/-! ## A174830.P4113780718338818219

`sqrt(A156942(n+1))`
-/

namespace A174830.P4113780718338818219
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A156942 (n + 1) : ℝ)

end

end A174830.P4113780718338818219

/-! ## A174830.P4665371806352256575

`or(root(A156942(n+1), 2), A000007(n))`
-/

namespace A174830.P4665371806352256575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A156942 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A000007 n)

end

end A174830.P4665371806352256575

/-! ## A174830.P13694076992672666259

`or(A014834(n)², root(A156942(n+1), 2))`
-/

namespace A174830.P13694076992672666259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014834 n ^ 2) (SequenceMachineLib.roundAway ((A156942 (n + 1) : ℝ) ^ (1 / (2 : ℝ))))

end

end A174830.P13694076992672666259

/-! ## A174830.P15251687964159104255

`root(A156942(n+1), 2)%A000217(n+13)²`
-/

namespace A174830.P15251687964159104255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A156942 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A000217 (n + 13) ^ 2)

end

end A174830.P15251687964159104255

/-! ## A174830.P16585808781875417416

`A000007(n+1)+root(A156942(n+1), 2)`
-/

namespace A174830.P16585808781875417416
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000007 (n + 1) : ℝ) + (A156942 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A174830.P16585808781875417416

/-! ## A174830.P4667383557420445151

`root(A156942(n+1), 2)*A054977(n+1)`
-/

namespace A174830.P4667383557420445151
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A156942 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A054977 (n + 1) : ℝ)

end

end A174830.P4667383557420445151

/-! ## A174830.P11311541260537014023

`root(A156942(n+1), 2)*A001222(A001359(n+1))`
-/

namespace A174830.P11311541260537014023
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A156942 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A001222 (A001359 (n + 1)).toNat : ℝ)

end

end A174830.P11311541260537014023

/-! ## A174830.P4458559520603897738

`root(A156942(n+1), 2)*A001222(A006512(n+1))`
-/

namespace A174830.P4458559520603897738
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A156942 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A001222 (A006512 (n + 1)).toNat : ℝ)

end

end A174830.P4458559520603897738

/-! ## A174830.P10063134142638836140

`root(A156942(n+1), ratio[A000079(n)])`
-/

namespace A174830.P10063134142638836140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A156942 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A174830.P10063134142638836140

/-!
# A174831: a(n) is the concatenation of the frequency of 0's, 1's, 2's etc. in the entries a(0) up to a(n-1).

The programs for A174831, there is no canonical definition to state claims against.
-/

/-! ## A174831.P12400398605115937610

`A004086(∑[∑[A055792(n)]])`
-/

namespace A174831.P12400398605115937610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055792 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A174831.P12400398605115937610

/-!
# A174832: a(n) is (the number of ones) - (the number of zeros) in the first n bits of the binary expansion of Pi-3.

The programs for A174832, there is no canonical definition to state claims against.
-/

/-! ## A174832.P11853164645433155322

`A166006(n+3)-2`
-/

namespace A174832.P11853164645433155322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166006 (n + 3) - 2

end

end A174832.P11853164645433155322

/-! ## A174832.P13711059088776305757

`∑[1/Δ[A166006(n+2)]]`
-/

namespace A174832.P13711059088776305757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166006 (n + 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174832.P13711059088776305757

/-! ## A174832.P12056760572126825818

`∑[or(1, ∑[A155482(n+2)])]`
-/

namespace A174832.P12056760572126825818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155482 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174832.P12056760572126825818

/-! ## A174832.P13024546044406717046

`∑[Δ[A166006(n+2)]^A093178(n)]`
-/

namespace A174832.P13024546044406717046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166006 (n + 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) ^ (A093178 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174832.P13024546044406717046

/-! ## A174832.P4916872610849935735

`∑[Δ[A166006(n+2)]%A007918(n)]`
-/

namespace A174832.P4916872610849935735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166006 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A007918 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174832.P4916872610849935735

/-! ## A174832.P4571639356866065783

`∑[Δ[A166006(n+2)]*A093178(2*n)]`
-/

namespace A174832.P4571639356866065783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166006 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A093178 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174832.P4571639356866065783

/-! ## A174832.P11417277149200969377

`∑[Δ[A166006(n+2)]^A059743(n)]`
-/

namespace A174832.P11417277149200969377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166006 (n + 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) ^ (A059743 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174832.P11417277149200969377

/-! ## A174832.P14428557127892705467

`∑[Δ[A166006(n+2)]^A053742(2*n+1)]`
-/

namespace A174832.P14428557127892705467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166006 (n + 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) ^ (A053742 (2 * n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174832.P14428557127892705467

/-!
# A174834: Triangle read by rows: T(n,k) = (Stirling1(n,k) + Stirling1(n,n-k)) * binomial(n,k) with T(0,0)=1.

The programs for A174834, there is no canonical definition to state claims against.
-/

/-! ## A174834.P3558809180018510711

`A134058(n)/2*A154843(n)`
-/

namespace A174834.P3558809180018510711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134058 n : ℚ) / 2 * (A154843 n : ℚ)

end

end A174834.P3558809180018510711

/-! ## A174834.P16405658548880573445

`A007318(n)*A154843(round(sqrt(n²+1)))`
-/

namespace A174834.P16405658548880573445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A154843 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A174834.P16405658548880573445

/-! ## A174834.P7702052015152140216

`(A131061(n)+3)/4*A154843(round(sqrt(n²+1)))`
-/

namespace A174834.P7702052015152140216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131061 n + 3 : ℚ) / 4 * (A154843 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ)

end

end A174834.P7702052015152140216

/-! ## A174834.P23583234180718487

`(A014473(n)+1)*A154843(A028310(n))`
-/

namespace A174834.P23583234180718487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A154843 (A028310 n).toNat

end

end A174834.P23583234180718487

/-! ## A174834.P5467714445169237047

`(A131063(n)+4)/5*A154843(A028310(n))`
-/

namespace A174834.P5467714445169237047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131063 n + 4 : ℚ) / 5 * (A154843 (A028310 n).toNat : ℚ)

end

end A174834.P5467714445169237047

/-!
# A174835: a(0)=1, a(1)=2, a(n) = a(abs(floor(n/5 - a(n-2)))) for n>=2.

The programs for A174835, the canonical program `A174835.P10786365499795175731` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174835 has offset 0).

The definition of A174835 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(abs(floor(n/5-a(n-2))))` (program `A174835.P10786365499795175731`, by `A174835.P10786365499795175731.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174835.P10786365499795175731

`a(abs(floor(n/5-a(n-2))))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A174835

/-- `a(abs(floor(n/5-a(n-2))))` -/
def P10786365499795175731.Spec : Prop :=
  ∀ n, (P10786365499795175731.a n : ℤ) = A174835 n

theorem P10786365499795175731.correct : P10786365499795175731.Spec := by
  intro n
  simp only [A174835]

end A174835

/-! ## A174835.P3111050701821453403

`A169695(3*n*A091678(n))`
-/

namespace A174835.P3111050701821453403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 (3 * ((n : ℤ) * A091678 n)).toNat

end

end A174835.P3111050701821453403

namespace A174835

/-- `A169695(3*n*A091678(n))` -/
def P3111050701821453403.Spec : Prop :=
  ∀ n, P3111050701821453403.a n = A174835 n

end A174835

/-! ## A174835.P223619820620347616

`A043529(A087720(n+1)+2-n)`
-/

namespace A174835.P223619820620347616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (A087720 (n + 1) + (2 - (n : ℤ))).toNat

end

end A174835.P223619820620347616

namespace A174835

/-- `A043529(A087720(n+1)+2-n)` -/
def P223619820620347616.Spec : Prop :=
  ∀ n, P223619820620347616.a n = A174835 n

end A174835

/-! ## A174835.P10539418571643131896

`A267869(A185224(n))+char[xor(1, n)+1]`
-/

namespace A174835.P10539418571643131896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267869 (A185224 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A174835.P10539418571643131896

namespace A174835

/-- `A267869(A185224(n))+char[xor(1, n)+1]` -/
def P10539418571643131896.Spec : Prop :=
  ∀ n, P10539418571643131896.a n = A174835 n

end A174835

/-! ## A174835.P13560845057438105821

`2-val(A285847(n+1), A047370(n+1))`
-/

namespace A174835.P13560845057438105821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (SequenceMachineLib.valuation (A285847 (n + 1)).toNat (A047370 (n + 1)).toNat : ℤ)

end

end A174835.P13560845057438105821

namespace A174835

/-- `2-val(A285847(n+1), A047370(n+1))` -/
def P13560845057438105821.Spec : Prop :=
  ∀ n, P13560845057438105821.a n = A174835 n

end A174835

/-! ## A174835.P695998023610327415

`A169695(n*A008486(A091678(n)))`
-/

namespace A174835.P695998023610327415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 ((n : ℤ) * A008486 (A091678 n).toNat).toNat

end

end A174835.P695998023610327415

namespace A174835

/-- `A169695(n*A008486(A091678(n)))` -/
def P695998023610327415.Spec : Prop :=
  ∀ n, P695998023610327415.a n = A174835 n

end A174835

/-! ## A174835.P12095594577885531378

`A000032(val(A285847(n+1), A047370(n+1)))`
-/

namespace A174835.P12095594577885531378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.valuation (A285847 (n + 1)).toNat (A047370 (n + 1)).toNat)

end

end A174835.P12095594577885531378

namespace A174835

/-- `A000032(val(A285847(n+1), A047370(n+1)))` -/
def P12095594577885531378.Spec : Prop :=
  ∀ n, P12095594577885531378.a n = A174835 n

end A174835

/-! ## A174835.P10016574208027344901

`A267869(A185224(n))+A001221(A000961(n+1))`
-/

namespace A174835.P10016574208027344901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267869 (A185224 n).toNat + A001221 (A000961 (n + 1)).toNat

end

end A174835.P10016574208027344901

namespace A174835

/-- `A267869(A185224(n))+A001221(A000961(n+1))` -/
def P10016574208027344901.Spec : Prop :=
  ∀ n, P10016574208027344901.a n = A174835 n

end A174835

/-!
# A174836: a(n) = 1 + ((6*n-1)*2^n + (-1)^n)/3.

The programs for A174836, the canonical program `A174836.P548874784824666408` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174836 has offset 0).

The definition of A174836 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174836.P548874784824666408

`3*A113861(n+1)+1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A174836

/-- `3*A113861(n+1)+1` -/
def P548874784824666408.Spec : Prop :=
  ∀ n, P548874784824666408.a n = A174836 n

theorem P548874784824666408.correct : P548874784824666408.Spec := by
  intro n
  simp only [A174836]

end A174836

/-! ## A174836.P7149437190933195905

`1+((6*n-1)*2^n+(-1)^n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A174836.P7149437190933195905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + (((6 * n : ℤ) - 1) * (2 ^ n : ℤ) + (-1) ^ n : ℚ) / 3

end

end A174836.P7149437190933195905

namespace A174836

/-- `1+((6*n-1)*2^n+(-1)^n)/3` -/
def P7149437190933195905.Spec : Prop :=
  ∀ n, P7149437190933195905.a n = (A174836 n : ℚ)

end A174836

/-! ## A174836.P11497739327550691826

`2*(2^n+a(n-1)-n%2)` with `a(0)=1`
-/

namespace A174836.P11497739327550691826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((2 ^ n : ℤ) + (a (n - 1) - ((n % 2 : ℕ) : ℤ)))

end

end A174836.P11497739327550691826

namespace A174836

/-- `2*(2^n+a(n-1)-n%2)` -/
def P11497739327550691826.Spec : Prop :=
  ∀ n, P11497739327550691826.a n = A174836 n

end A174836

/-! ## A174836.P7279007887605166719

`2*(a(n-1)-(and(1, n)-2^n))` with `a(0)=1`
-/

namespace A174836.P7279007887605166719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - ((Nat.land 1 n : ℤ) - (2 ^ n : ℤ)))

end

end A174836.P7279007887605166719

namespace A174836

/-- `2*(a(n-1)-(and(1, n)-2^n))` -/
def P7279007887605166719.Spec : Prop :=
  ∀ n, P7279007887605166719.a n = A174836 n

end A174836

/-! ## A174836.P9094386348720424663

`abs(A000337(n+1)-A001045(n))`
-/

namespace A174836.P9094386348720424663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000337 (n + 1) - A001045 n|

end

end A174836.P9094386348720424663

namespace A174836

/-- `abs(A000337(n+1)-A001045(n))` -/
def P9094386348720424663.Spec : Prop :=
  ∀ n, P9094386348720424663.a n = A174836 n

end A174836

/-! ## A174836.P9535186616431878136

`∑[A084214(n)+n*A000079(n)]`
-/

namespace A174836.P9535186616431878136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084214 n + (n : ℤ) * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174836.P9535186616431878136

namespace A174836

/-- `∑[A084214(n)+n*A000079(n)]` -/
def P9535186616431878136.Spec : Prop :=
  ∀ n, P9535186616431878136.a n = A174836 n

end A174836

/-! ## A174836.P3129707722918457602

`abs(abs(1-A084247(n))-A000337(n+1))`
-/

namespace A174836.P3129707722918457602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|1 - A084247 n| - A000337 (n + 1))|

end

end A174836.P3129707722918457602

namespace A174836

/-- `abs(abs(1-A084247(n))-A000337(n+1))` -/
def P3129707722918457602.Spec : Prop :=
  ∀ n, P3129707722918457602.a n = A174836 n

end A174836

/-! ## A174836.P2113011492678340006

`abs(∑[(n+1)*A000079(n)]-A001045(n))`
-/

namespace A174836.P2113011492678340006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - A001045 n|

end

end A174836.P2113011492678340006

namespace A174836

/-- `abs(∑[(n+1)*A000079(n)]-A001045(n))` -/
def P2113011492678340006.Spec : Prop :=
  ∀ n, P2113011492678340006.a n = A174836 n

end A174836

/-! ## A174836.P17465155672139636732

`Δ[∑[A000337(n)]-A005578(n)]`
-/

namespace A174836.P17465155672139636732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000337 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A005578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174836.P17465155672139636732

namespace A174836

/-- `Δ[∑[A000337(n)]-A005578(n)]` -/
def P17465155672139636732.Spec : Prop :=
  ∀ n, P17465155672139636732.a n = A174836 n

end A174836

/-!
# A174838: Numbers k such that semiprime(k)+1 is prime, where semiprime(k) is A001358.

The programs for A174838, the canonical program `A174838.P9285501517228035014` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174838 has offset 1).

The definition of A174838 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174838.P3160202219006195702

`eq[2, A000005(A088707(n+1))]+1`
-/

namespace A174838.P3160202219006195702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A088707 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A174838.P3160202219006195702

namespace A174838

/-- `eq[2, A000005(A088707(n+1))]+1` -/
def P3160202219006195702.Spec : Prop :=
  ∀ n, (P3160202219006195702.a n : ℤ) = A174838 (n + 1)

end A174838

/-! ## A174838.P16733182354615743493

`A072000(A005385(n+1))`
-/

namespace A174838.P16733182354615743493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A005385 (n + 1)).toNat

end

end A174838.P16733182354615743493

namespace A174838

/-- `A072000(A005385(n+1))` -/
def P16733182354615743493.Spec : Prop :=
  ∀ n, P16733182354615743493.a n = A174838 (n + 1)

end A174838

/-! ## A174838.P14247888242857655345

`A072000(A077065(n+1)+1)`
-/

namespace A174838.P14247888242857655345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A077065 (n + 1) + 1).toNat

end

end A174838.P14247888242857655345

namespace A174838

/-- `A072000(A077065(n+1)+1)` -/
def P14247888242857655345.Spec : Prop :=
  ∀ n, P14247888242857655345.a n = A174838 (n + 1)

end A174838

/-! ## A174838.P14375928708386765994

`A058933(A077065(n+1))`
-/

namespace A174838.P14375928708386765994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A077065 (n + 1)).toNat

end

end A174838.P14375928708386765994

namespace A174838

/-- `A058933(A077065(n+1))` -/
def P14375928708386765994.Spec : Prop :=
  ∀ n, P14375928708386765994.a n = A174838 (n + 1)

end A174838

/-! ## A174838.P9285501517228035014

`A115392(A072192(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A174838

/-- `A115392(A072192(n+1))` -/
def P9285501517228035014.Spec : Prop :=
  ∀ n, P9285501517228035014.a n = A174838 (n + 1)

theorem P9285501517228035014.correct : P9285501517228035014.Spec := by
  intro n
  simp only [A174838, Nat.add_sub_cancel]

end A174838

/-! ## A174838.P5008720533533305841

`A144740(A077065(n+1)+1)`
-/

namespace A174838.P5008720533533305841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144740 (A077065 (n + 1) + 1).toNat

end

end A174838.P5008720533533305841

namespace A174838

/-- `A144740(A077065(n+1)+1)` -/
def P5008720533533305841.Spec : Prop :=
  ∀ n, P5008720533533305841.a n = A174838 (n + 1)

end A174838

/-!
# A174839: Lists of 4 adjacent primes such that the difference between the highest minus the lowest = 8.

The programs for A174839, there is no canonical definition to state claims against.
-/

/-! ## A174839.P4641230679325228214

`A105560(4*A083593(n))`
-/

namespace A174839.P4641230679325228214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (4 * A083593 n).toNat

end

end A174839.P4641230679325228214

/-!
# A174840: Least k such that the primes 3 to prime(k+1) form a complete residue system (mod prime(n)).

The programs for A174840, there is no canonical definition to state claims against.
-/

/-! ## A174840.P2987780991830732619

`A178215(n+2)-1`
-/

namespace A174840.P2987780991830732619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178215 (n + 2) - 1

end

end A174840.P2987780991830732619

/-! ## A174840.P2423232822272970983

`A023443(A178215(n+2))`
-/

namespace A174840.P2423232822272970983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A178215 (n + 2)).toNat

end

end A174840.P2423232822272970983

/-! ## A174840.P1899107564073941463

`A023444(A178215(n+2)+1)`
-/

namespace A174840.P1899107564073941463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A178215 (n + 2) + 1).toNat

end

end A174840.P1899107564073941463

/-! ## A174840.P1361972311159792182

`A289207(A178215(n+2)+1)`
-/

namespace A174840.P1361972311159792182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A178215 (n + 2) + 1).toNat

end

end A174840.P1361972311159792182

/-! ## A174840.P3787153291082260670

`A023445(A178215(n+2)+2)`
-/

namespace A174840.P3787153291082260670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A178215 (n + 2) + 2).toNat

end

end A174840.P3787153291082260670

/-! ## A174840.P18313593130444174911

`A000720(A340752(n+2)-1)`
-/

namespace A174840.P18313593130444174911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A340752 (n + 2) - 1).toNat

end

end A174840.P18313593130444174911

/-! ## A174840.P7326927071257451502

`A023446(A178215(n+2)+3)`
-/

namespace A174840.P7326927071257451502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A178215 (n + 2) + 3).toNat

end

end A174840.P7326927071257451502

/-! ## A174840.P8283793159040189203

`A061395(p?[A340752(n+2)])-1`
-/

namespace A174840.P8283793159040189203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340752 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A174840.P8283793159040189203

/-! ## A174840.P5661531063335393492

`A140106(2*A178215(n+2))`
-/

namespace A174840.P5661531063335393492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A178215 (n + 2)).toNat

end

end A174840.P5661531063335393492

/-! ## A174840.P15435821644325760654

`A297173(2*A340752(n+2))`
-/

namespace A174840.P15435821644325760654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297173 (2 * A340752 (n + 2)).toNat

end

end A174840.P15435821644325760654

/-!
# A174841: Determinant of the symmetric n X n matrix M_n where M_n(j,k) = n^abs(j-k).

The programs for A174841, the canonical program `A174841.P7080707243439431215` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174841 has offset 1).

The definition of A174841 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174841.P7080707243439431215

`(1-(n+1)²)^n`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A174841

/-- `(1-(n+1)²)^n` -/
def P7080707243439431215.Spec : Prop :=
  ∀ n, P7080707243439431215.a n = A174841 (n + 1)

theorem P7080707243439431215.correct : P7080707243439431215.Spec := by
  intro n
  simp only [A174841, Nat.add_sub_cancel]

end A174841

/-! ## A174841.P254586119760320184

`floor(∑[a(n-1)-2]^n)` with `a(0)=0, a(1)=-3`

`floor` is left out, it is the identity on integers.
-/

namespace A174841.P254586119760320184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -3] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A174841.P254586119760320184

namespace A174841

/-- `floor(∑[a(n-1)-2]^n)` -/
def P254586119760320184.Spec : Prop :=
  ∀ n, P254586119760320184.a n = A174841 (n + 1)

end A174841

/-! ## A174841.P16989849261989358614

`(-n*(n+2))^n*gcd(n, n+1)`
-/

namespace A174841.P16989849261989358614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n * (n + 2) : ℤ)) ^ n * (Nat.gcd n (n + 1) : ℤ)

end

end A174841.P16989849261989358614

namespace A174841

/-- `(-n*(n+2))^n*gcd(n, n+1)` -/
def P16989849261989358614.Spec : Prop :=
  ∀ n, P16989849261989358614.a n = A174841 (n + 1)

theorem P16989849261989358614.correct : P16989849261989358614.Spec := by
  intro n
  simp only [A174841, Nat.add_sub_cancel, A174841.P16989849261989358614.a, A174841.P7080707243439431215.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A174841

/-! ## A174841.P6260065248184626035

`(-n*(n+2))^n*A011655(3*n+2)`
-/

namespace A174841.P6260065248184626035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n * (n + 2) : ℤ)) ^ n * A011655 (3 * n + 2)

end

end A174841.P6260065248184626035

namespace A174841

/-- `(-n*(n+2))^n*A011655(3*n+2)` -/
def P6260065248184626035.Spec : Prop :=
  ∀ n, P6260065248184626035.a n = A174841 (n + 1)

end A174841

/-!
# A174842: Irregular triangle T(i,n) giving the number of elements of Zp having multiplicative order di, the i-th divisor of p-1, where p is the n-th prime.

The programs for A174842, there is no canonical definition to state claims against.
-/

/-! ## A174842.P5656354533505374343

`A000010(A174843(n+1))`
-/

namespace A174842.P5656354533505374343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A174843 (n + 1)).toNat

end

end A174842.P5656354533505374343

/-! ## A174842.P2867928236355433583

`A396255(n+1)/A174843(n+1)`
-/

namespace A174842.P2867928236355433583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A396255 (n + 1) : ℚ) / (A174843 (n + 1) : ℚ)

end

end A174842.P2867928236355433583

/-! ## A174842.P17523597751221919369

`A225530(lcm(2, A174843(n+1)))`
-/

namespace A174842.P17523597751221919369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 (Int.lcm 2 (A174843 (n + 1)))

end

end A174842.P17523597751221919369

/-! ## A174842.P4864458437885990205

`A089929(2*A174843(n+1))`
-/

namespace A174842.P4864458437885990205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089929 (2 * A174843 (n + 1)).toNat

end

end A174842.P4864458437885990205

/-! ## A174842.P2451931774549851430

`A057828(A174843(n+1)²)`
-/

namespace A174842.P2451931774549851430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057828 (A174843 (n + 1) ^ 2).toNat

end

end A174842.P2451931774549851430

/-! ## A174842.P13720579973932490577

`A057828(A174843(n+1)*A174843(n+1))`
-/

namespace A174842.P13720579973932490577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057828 (A174843 (n + 1) * A174843 (n + 1)).toNat

end

end A174842.P13720579973932490577

/-!
# A174843: Irregular triangle in which row n lists the divisors of prime(n)-1.

The programs for A174843, there is no canonical definition to state claims against.
-/

/-! ## A174843.P3781456868224010459

`A396255(n+1)/A174842(n+1)`
-/

namespace A174843.P3781456868224010459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A396255 (n + 1) : ℚ) / (A174842 (n + 1) : ℚ)

end

end A174843.P3781456868224010459

/-! ## A174843.P10606660824039190710

`A275823(A396255(n+1))`
-/

namespace A174843.P10606660824039190710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275823 (A396255 (n + 1)).toNat

end

end A174843.P10606660824039190710

/-! ## A174843.P3150328820244763924

`A292477(A334097(A177874(n)))`
-/

namespace A174843.P3150328820244763924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292477 (A334097 (A177874 n).toNat).toNat

end

end A174843.P3150328820244763924

/-! ## A174843.P8259774181886542914

`A292477(∑[A051903(A208864(n+1))])`
-/

namespace A174843.P8259774181886542914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A208864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292477 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A174843.P8259774181886542914

/-! ## A174843.P4452391645552620576

`A292477(floor(log2(A100083(n+1))))`
-/

namespace A174843.P4452391645552620576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292477 (Nat.log 2 (A100083 (n + 1)).toNat)

end

end A174843.P4452391645552620576

/-!
# A174845: O.g.f.: Sum_{n>=0} n^(2*n) * x^n / (1 - n^2*x)^n * exp( -n^2*x / (1 - n^2*x) ) / n!.

The programs for A174845, there is no canonical definition to state claims against.
-/

/-! ## A174845.P16224602269918677485

`A284049(A193543(n))`
-/

namespace A174845.P16224602269918677485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284049 (A193543 n).toNat

end

end A174845.P16224602269918677485

/-!
# A174846: E.g.f.: AGM(1, exp(4x)), where AGM(x, y) is the arithmetic-geometric mean of Gauss.

The programs for A174846, there is no canonical definition to state claims against.
-/

/-! ## A174846.P6905999019894831286

`A083323(n)+A048720(A132183(n))`
-/

namespace A174846.P6905999019894831286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083323 n + A048720 (A132183 n).toNat

end

end A174846.P6905999019894831286

/-! ## A174846.P9363719345005819789

`A174480(A114347(n))+A001047(n)`
-/

namespace A174846.P9363719345005819789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174480 (A114347 n).toNat + A001047 n

end

end A174846.P9363719345005819789

/-!
# A174848: Squarefree kernels of orders of sporadic simple groups.

The programs for A174848, there is no canonical definition to state claims against.
-/

/-! ## A174848.P9805956862642907083

`gcd(A001228(n+1), A002110(n+6))`
-/

namespace A174848.P9805956862642907083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001228 (n + 1)) (A002110 (n + 6))

end

end A174848.P9805956862642907083

/-!
# A174850: Quintisection A061037(5*n-2).

The programs for A174850, the canonical program `A174850.P7714506034839295720` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174850 has offset 0).

The definition of A174850 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174850.P7714506034839295720

`A165248(n)-10*A188134(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A174850

/-- `A165248(n)-10*A188134(n)` -/
def P7714506034839295720.Spec : Prop :=
  ∀ n, P7714506034839295720.a n = A174850 n

theorem P7714506034839295720.correct : P7714506034839295720.Spec := by
  intro n
  simp only [A174850]

end A174850

/-! ## A174850.P4495439492241243618

`A165248(n)+10*A188134(n)*A057428(n)`
-/

namespace A174850.P4495439492241243618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165248 n + 10 * A188134 n * A057428 n

end

end A174850.P4495439492241243618

namespace A174850

/-- `A165248(n)+10*A188134(n)*A057428(n)` -/
def P4495439492241243618.Spec : Prop :=
  ∀ n, P4495439492241243618.a n = A174850 n

end A174850

/-! ## A174850.P11595078781363274316

`A061037(abs(2-6*n)-n)`
-/

namespace A174850.P11595078781363274316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061037 (|2 - (6 * n : ℤ)| - (n : ℤ)).toNat

end

end A174850.P11595078781363274316

namespace A174850

/-- `A061037(abs(2-6*n)-n)` -/
def P11595078781363274316.Spec : Prop :=
  ∀ n, P11595078781363274316.a n = A174850 n

end A174850

/-! ## A174850.P6829844887337388753

`5*A106617(A051624(n))`
-/

namespace A174850.P6829844887337388753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A106617 (A051624 n).toNat

end

end A174850.P6829844887337388753

namespace A174850

/-- `5*A106617(A051624(n))` -/
def P6829844887337388753.Spec : Prop :=
  ∀ n, P6829844887337388753.a n = A174850 n

end A174850

/-!
# A174852: Triangle T(n,k) read by rows. T(1,1)=1, n>1 T(n,1)=A049240, k>1 T(n,k)=A051731.

The programs for A174852, the canonical program `A174852.P9332735036458002118` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174852 has offset 1).

The definition of A174852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174852.P1283605737258956427

`abs(char[6]-A103994(n+1))`
-/

namespace A174852.P1283605737258956427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A103994 (n + 1)|

end

end A174852.P1283605737258956427

namespace A174852

/-- `abs(char[6]-A103994(n+1))` -/
def P1283605737258956427.Spec : Prop :=
  ∀ n, P1283605737258956427.a n = A174852 (n + 1)

end A174852

/-! ## A174852.P12479899788427535292

`A051731(n+1)-char[6^(n+1)]`
-/

namespace A174852.P12479899788427535292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A174852.P12479899788427535292

namespace A174852

/-- `A051731(n+1)-char[6^(n+1)]` -/
def P12479899788427535292.Spec : Prop :=
  ∀ n, P12479899788427535292.a n = A174852 (n + 1)

end A174852

/-! ## A174852.P12209054049340411175

`A030190(A144515(n))`
-/

namespace A174852.P12209054049340411175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (A144515 n).toNat

end

end A174852.P12209054049340411175

namespace A174852

/-- `A030190(A144515(n))` -/
def P12209054049340411175.Spec : Prop :=
  ∀ n, P12209054049340411175.a n = A174852 (n + 1)

end A174852

/-! ## A174852.P9332735036458002118

`A010051(A144515(n)+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A174852

/-- `A010051(A144515(n)+1)` -/
def P9332735036458002118.Spec : Prop :=
  ∀ n, P9332735036458002118.a n = A174852 (n + 1)

theorem P9332735036458002118.correct : P9332735036458002118.Spec := by
  intro n
  simp only [A174852, Nat.add_sub_cancel]

end A174852

/-! ## A174852.P6155289544260681338

`A014306(A144515(n)+1)`
-/

namespace A174852.P6155289544260681338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 (A144515 n + 1).toNat

end

end A174852.P6155289544260681338

namespace A174852

/-- `A014306(A144515(n)+1)` -/
def P6155289544260681338.Spec : Prop :=
  ∀ n, P6155289544260681338.a n = A174852 (n + 1)

end A174852

/-! ## A174852.P3033293811286643664

`A035232(A144515(n)+1)`
-/

namespace A174852.P3033293811286643664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035232 (A144515 n + 1).toNat

end

end A174852.P3033293811286643664

namespace A174852

/-- `A035232(A144515(n)+1)` -/
def P3033293811286643664.Spec : Prop :=
  ∀ n, P3033293811286643664.a n = A174852 (n + 1)

end A174852

/-! ## A174852.P8709411591248317045

`A074871(A144515(n)+1)`
-/

namespace A174852.P8709411591248317045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074871 (A144515 n + 1).toNat

end

end A174852.P8709411591248317045

namespace A174852

/-- `A074871(A144515(n)+1)` -/
def P8709411591248317045.Spec : Prop :=
  ∀ n, P8709411591248317045.a n = A174852 (n + 1)

end A174852

/-! ## A174852.P2767640525719928304

`A157658(A144515(n)+1)`
-/

namespace A174852.P2767640525719928304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (A144515 n + 1).toNat

end

end A174852.P2767640525719928304

namespace A174852

/-- `A157658(A144515(n)+1)` -/
def P2767640525719928304.Spec : Prop :=
  ∀ n, P2767640525719928304.a n = A174852 (n + 1)

end A174852

/-! ## A174852.P348506090275261030

`A334196(A144515(n)+1)`
-/

namespace A174852.P348506090275261030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334196 (A144515 n + 1).toNat

end

end A174852.P348506090275261030

namespace A174852

/-- `A334196(A144515(n)+1)` -/
def P348506090275261030.Spec : Prop :=
  ∀ n, P348506090275261030.a n = A174852 (n + 1)

end A174852

/-! ## A174852.P9703721842627662886

`A128174(A144515(n)+2)`
-/

namespace A174852.P9703721842627662886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (A144515 n + 2).toNat

end

end A174852.P9703721842627662886

namespace A174852

/-- `A128174(A144515(n)+2)` -/
def P9703721842627662886.Spec : Prop :=
  ∀ n, P9703721842627662886.a n = A174852 (n + 1)

end A174852

/-! ## A174852.P11779213141979589728

`A210472(A144515(n)+2)`
-/

namespace A174852.P11779213141979589728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210472 (A144515 n + 2).toNat

end

end A174852.P11779213141979589728

namespace A174852

/-- `A210472(A144515(n)+2)` -/
def P11779213141979589728.Spec : Prop :=
  ∀ n, P11779213141979589728.a n = A174852 (n + 1)

end A174852

/-! ## A174852.P4667609121173354006

`A123125(A144515(n)+3)`
-/

namespace A174852.P4667609121173354006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (A144515 n + 3).toNat

end

end A174852.P4667609121173354006

namespace A174852

/-- `A123125(A144515(n)+3)` -/
def P4667609121173354006.Spec : Prop :=
  ∀ n, P4667609121173354006.a n = A174852 (n + 1)

end A174852

/-! ## A174852.P14658359926385971439

`A352516(2*A144515(n))`
-/

namespace A174852.P14658359926385971439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352516 (2 * A144515 n).toNat

end

end A174852.P14658359926385971439

namespace A174852

/-- `A352516(2*A144515(n))` -/
def P14658359926385971439.Spec : Prop :=
  ∀ n, P14658359926385971439.a n = A174852 (n + 1)

end A174852

/-! ## A174852.P383879535066241834

`A060510(2^A144515(n))`
-/

namespace A174852.P383879535066241834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060510 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A144515 n : ℤ))).toNat

end

end A174852.P383879535066241834

namespace A174852

/-- `A060510(2^A144515(n))` -/
def P383879535066241834.Spec : Prop :=
  ∀ n, P383879535066241834.a n = A174852 (n + 1)

end A174852

/-! ## A174852.P16857502130635112727

`A002865(C(3, A144515(n)))`
-/

namespace A174852.P16857502130635112727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (Nat.choose 3 (A144515 n).toNat)

end

end A174852.P16857502130635112727

namespace A174852

/-- `A002865(C(3, A144515(n)))` -/
def P16857502130635112727.Spec : Prop :=
  ∀ n, P16857502130635112727.a n = A174852 (n + 1)

end A174852

/-! ## A174852.P3620205664230465365

`A185117(C(10, A286249(n+1)))`
-/

namespace A174852.P3620205664230465365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185117 (Nat.choose 10 (A286249 (n + 1)).toNat)

end

end A174852.P3620205664230465365

namespace A174852

/-- `A185117(C(10, A286249(n+1)))` -/
def P3620205664230465365.Spec : Prop :=
  ∀ n, P3620205664230465365.a n = A174852 (n + 1)

end A174852

/-! ## A174852.P14557084464297378890

`ceil(and(A004736(n+1), A114004(n))/13)`
-/

namespace A174852.P14557084464297378890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.land (A004736 (n + 1)) (A114004 n) : ℚ) / 13⌉

end

end A174852.P14557084464297378890

namespace A174852

/-- `ceil(and(A004736(n+1), A114004(n))/13)` -/
def P14557084464297378890.Spec : Prop :=
  ∀ n, P14557084464297378890.a n = A174852 (n + 1)

end A174852

/-! ## A174852.P1391595719059937075

`gcd(char[6]-A103994(n+1), A000038(n))`
-/

namespace A174852.P1391595719059937075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A103994 (n + 1)) (A000038 n)

end

end A174852.P1391595719059937075

namespace A174852

/-- `gcd(char[6]-A103994(n+1), A000038(n))` -/
def P1391595719059937075.Spec : Prop :=
  ∀ n, (P1391595719059937075.a n : ℤ) = A174852 (n + 1)

end A174852

/-! ## A174852.P17012907577072594169

`(char[6]-A103994(n+1))²^A000041(n)`
-/

namespace A174852.P17012907577072594169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A103994 (n + 1)) ^ 2 : ℚ) ^ (A000041 n : ℤ)

end

end A174852.P17012907577072594169

namespace A174852

/-- `(char[6]-A103994(n+1))²^A000041(n)` -/
def P17012907577072594169.Spec : Prop :=
  ∀ n, P17012907577072594169.a n = (A174852 (n + 1) : ℚ)

end A174852

/-! ## A174852.P3022384405686175419

`((char[6]-A103994(n+1))^A000124(n))²`
-/

namespace A174852.P3022384405686175419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A103994 (n + 1) : ℚ) ^ (A000124 n : ℤ)) ^ 2

end

end A174852.P3022384405686175419

namespace A174852

/-- `((char[6]-A103994(n+1))^A000124(n))²` -/
def P3022384405686175419.Spec : Prop :=
  ∀ n, P3022384405686175419.a n = (A174852 (n + 1) : ℚ)

end A174852

/-!
# A174853: y-values in the solution to x^2-47*y^2=1.

The programs for A174853, the canonical program `A174853.P4898775187705428394` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174853 has offset 1).

The definition of A174853 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174853.P4898775187705428394

`96*a(n-1)-a(n-2)` with `a(0)=0, a(1)=7`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A174853

/-- `96*a(n-1)-a(n-2)` -/
def P4898775187705428394.Spec : Prop :=
  ∀ n, P4898775187705428394.a n = A174853 (n + 1)

theorem P4898775187705428394.correct : P4898775187705428394.Spec := by
  intro n
  simp only [A174853, Nat.add_sub_cancel]

end A174853

/-!
# A174854: Triangle T(n,k) read by rows. Matrix inverse of A174852.

The programs for A174854, there is no canonical definition to state claims against.
-/

/-! ## A174854.P9462988498607454794

`A011591(A080249(n)*A130026(n))`
-/

namespace A174854.P9462988498607454794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011591 (A080249 n * A130026 n).toNat

end

end A174854.P9462988498607454794

/-! ## A174854.P15640929765582224656

`A011591(A000203(n+1)²*A126988(n+1))`
-/

namespace A174854.P15640929765582224656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011591 (A000203 (n + 1) ^ 2 * A126988 (n + 1)).toNat

end

end A174854.P15640929765582224656

/-! ## A174854.P930502866668332119

`A054525(A271885(3*n+4))+A054525(n+1)`
-/

namespace A174854.P930502866668332119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (A271885 (3 * n + 4)).toNat + A054525 (n + 1)

end

end A174854.P930502866668332119

/-! ## A174854.P8213579528550954729

`A011591(A000203(n+1)*A126988(n+1)*A000203(n+1))`
-/

namespace A174854.P8213579528550954729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011591 (A000203 (n + 1) * A126988 (n + 1) * A000203 (n + 1)).toNat

end

end A174854.P8213579528550954729

/-! ## A174854.P1940411426596153833

`A280618(A345205(n))+A054525(n+1)`
-/

namespace A174854.P1940411426596153833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 (A345205 n).toNat + A054525 (n + 1)

end

end A174854.P1940411426596153833

/-!
# A174855: y-values in the solution to x^2-51*y^2=1.

The programs for A174855, there is no canonical definition to state claims against.
-/

/-! ## A174855.P6772069684153754594

`record[A000035(n)*A041087(n)]`
-/

namespace A174855.P6772069684153754594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A041087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174855.P6772069684153754594

/-! ## A174855.P8934420817621238442

`A041087(A004273(n))-A000007(n)`
-/

namespace A174855.P8934420817621238442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041087 (A004273 n).toNat - A000007 n

end

end A174855.P8934420817621238442

/-! ## A174855.P17694096706448428691

`A041087(A004273(n))*A057427(n)`
-/

namespace A174855.P17694096706448428691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041087 (A004273 n).toNat * A057427 n

end

end A174855.P17694096706448428691

/-! ## A174855.P2851808179810214548

`A041087(A004273(n))+1-A054977(n)`
-/

namespace A174855.P2851808179810214548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041087 (A004273 n).toNat + (1 - A054977 n)

end

end A174855.P2851808179810214548

/-! ## A174855.P3248825841492654152

`A041086(2*n)-A041087(2*n+1)`
-/

namespace A174855.P3248825841492654152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041086 (2 * n) - A041087 (2 * n + 1)

end

end A174855.P3248825841492654152

/-!
# A174856: Square array read by antidiagonals up. Redheffer type matrix. T(1,1)=1 and T(n,1) = A049240.

The programs for A174856, there is no canonical definition to state claims against.
-/

/-! ## A174856.P9278039767062270803

`gcd(A143142(n+1), A185284(A209434(n)))`
-/

namespace A174856.P9278039767062270803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143142 (n + 1)) (A185284 (A209434 n).toNat)

end

end A174856.P9278039767062270803

/-! ## A174856.P4808604044109426933

`A143142(n+1)^A143133(A316074(n+1))`
-/

namespace A174856.P4808604044109426933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143142 (n + 1) : ℚ) ^ (A143133 (A316074 (n + 1)).toNat : ℤ)

end

end A174856.P4808604044109426933

/-! ## A174856.P1057104998021950069

`(-A143142(n+1))^A036044(A267508(∑{d}[n+1, #]+1))`
-/

namespace A174856.P1057104998021950069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A143142 (n + 1) : ℚ) ^ (A036044 (A267508 (∑ d ∈ Nat.divisors (f1 n), d + 1)).toNat : ℤ)

end

end A174856.P1057104998021950069

/-! ## A174856.P11881036020893890912

`A143142(n+1)^A053214(A167934(n))`
-/

namespace A174856.P11881036020893890912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143142 (n + 1) : ℚ) ^ (A053214 (A167934 n).toNat : ℤ)

end

end A174856.P11881036020893890912

/-! ## A174856.P12576416265820185803

`abs(A143142(n+1)^A345333(n))`
-/

namespace A174856.P12576416265820185803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A143142 (n + 1) : ℚ) ^ (A345333 n : ℤ)|

end

end A174856.P12576416265820185803

/-!
# A174857: The minimum distance k > 0 such that A020639(n+k) = A020639(n).

The programs for A174857, there is no canonical definition to state claims against.
-/

/-! ## A174857.P9771371819080564166

`A287932(n+2)-(n+2)`
-/

namespace A174857.P9771371819080564166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287932 (n + 2) - (n + 2 : ℤ)

end

end A174857.P9771371819080564166

/-! ## A174857.P4883777556560176408

`(A287932(n+2)+(n+1)²)%A002061(n+2)`
-/

namespace A174857.P4883777556560176408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287932 (n + 2) + ((n + 1) ^ 2 : ℤ)) (A002061 (n + 2))

end

end A174857.P4883777556560176408

/-! ## A174857.P17530374048554311770

`A257252(A250252(n*n%2+1))`
-/

namespace A174857.P17530374048554311770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257252 (A250252 (n * (n % 2) + 1)).toNat

end

end A174857.P17530374048554311770

/-! ## A174857.P10911062769687202620

`A257252(A250252(n*and(1, n)+1))`
-/

namespace A174857.P10911062769687202620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257252 (A250252 (n * Nat.land 1 n + 1)).toNat

end

end A174857.P10911062769687202620

/-! ## A174857.P9309195695485566987

`A257251(gcd(A193356(n+1), A249742(n+1)))`
-/

namespace A174857.P9309195695485566987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257251 (Int.gcd (A193356 (n + 1)) (A249742 (n + 1)))

end

end A174857.P9309195695485566987

/-! ## A174857.P15395613036765041758

`A257252(A250252(abs(xor(1, -n))))`
-/

namespace A174857.P15395613036765041758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257252 (A250252 |Int.xor 1 (-(n : ℤ))|.toNat).toNat

end

end A174857.P15395613036765041758

/-! ## A174857.P8552527741089333583

`A257251(A249742(n+1))`
-/

namespace A174857.P8552527741089333583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257251 (A249742 (n + 1)).toNat

end

end A174857.P8552527741089333583

/-! ## A174857.P10648419286150868484

`A257252(A250252(n+1))`
-/

namespace A174857.P10648419286150868484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257252 (A250252 (n + 1)).toNat

end

end A174857.P10648419286150868484

/-! ## A174857.P18088125621260712579

`A046666(A287932(n+2)-n)`
-/

namespace A174857.P18088125621260712579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (A287932 (n + 2) - (n : ℤ)).toNat

end

end A174857.P18088125621260712579

/-! ## A174857.P11798841025286617934

`A249744(A287932(n+2)-n)`
-/

namespace A174857.P11798841025286617934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249744 (A287932 (n + 2) - (n : ℤ)).toNat

end

end A174857.P11798841025286617934

/-!
# A174858: Primes p such that p + 2, p + 6, and the concatenation p (p+2) (p+6) is prime.

The programs for A174858, there is no canonical definition to state claims against.
-/

/-! ## A174858.P13600861863214060056

`∩[A022004(n+1), A375313(n+1)]`
-/

namespace A174858.P13600861863214060056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174858.P13600861863214060056

/-! ## A174858.P12166762968069687241

`∩[A341357(n+1), A375313(n+1)]`
-/

namespace A174858.P12166762968069687241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174858.P12166762968069687241

/-! ## A174858.P17303251183738701173

`∩[A022004(n+1), A030468(n+1)]`
-/

namespace A174858.P17303251183738701173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174858.P17303251183738701173

/-! ## A174858.P17027562340365094268

`∩[A030468(n+1), A073648(n+1)-2]`
-/

namespace A174858.P17027562340365094268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073648 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174858.P17027562340365094268

/-!
# A174859: A triangle sequence of polynomial coefficients:p(x,n)=Sum[Binomial[n, k]*(-x)^k*Sum[StirlingS2[n, m]*x^m, {m, 0, n - k}], {k, 0, n}].

The programs for A174859, there is no canonical definition to state claims against.
-/

/-! ## A174859.P5588691546481406851

`A097088(A256311(n))%7`
-/

namespace A174859.P5588691546481406851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097088 (A256311 n).toNat) 7

end

end A174859.P5588691546481406851

/-! ## A174859.P1910511598205981107

`A145037(A226874(n)^A241316(n))`
-/

namespace A174859.P1910511598205981107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (SequenceMachineLib.roundAway ((A226874 n : ℚ) ^ (A241316 n : ℤ))).toNat

end

end A174859.P1910511598205981107

/-! ## A174859.P11220094434241399420

`A088705(A327244(n)^A327189(n))`
-/

namespace A174859.P11220094434241399420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (SequenceMachineLib.roundAway ((A327244 n : ℚ) ^ (A327189 n : ℤ))).toNat

end

end A174859.P11220094434241399420

/-! ## A174859.P3787444250917461849

`A088705(A327244(n)^A330960(n))`
-/

namespace A174859.P3787444250917461849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (SequenceMachineLib.roundAway ((A327244 n : ℚ) ^ (A330960 n : ℤ))).toNat

end

end A174859.P3787444250917461849

/-!
# A174863: Little omega analog to Liouville's function L(n).

The programs for A174863, the canonical program `A174863.P6440203005736356029` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174863 has offset 1).

The definition of A174863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174863.P6440203005736356029

`∑[∏{p}[n+1, -1%#]]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A174863

/-- `∑[∏{p}[n+1, -1%#]]` -/
def P6440203005736356029.Spec : Prop :=
  ∀ n, P6440203005736356029.a n = A174863 (n + 1)

theorem P6440203005736356029.correct : P6440203005736356029.Spec := by
  intro n
  simp only [A174863, Nat.add_sub_cancel]

end A174863

/-! ## A174863.P17826217740338419174

`∑[∏{p}[n+1, gcd(n, #)-2]]`
-/

namespace A174863.P17826217740338419174
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((Nat.gcd n p : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174863.P17826217740338419174

namespace A174863

/-- `∑[∏{p}[n+1, gcd(n, #)-2]]` -/
def P17826217740338419174.Spec : Prop :=
  ∀ n, P17826217740338419174.a n = A174863 (n + 1)

end A174863

/-! ## A174863.P305826018599377749

`∑[∏{p}[n+1, val(n, #)-1]]`
-/

namespace A174863.P305826018599377749
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((SequenceMachineLib.valuation n p : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174863.P305826018599377749

namespace A174863

/-- `∑[∏{p}[n+1, val(n, #)-1]]` -/
def P305826018599377749.Spec : Prop :=
  ∀ n, P305826018599377749.a n = A174863 (n + 1)

end A174863

/-! ## A174863.P17922016080772032447

`∑[∏{e}[∏{p}[n+1, #], #-2]]`
-/

namespace A174863.P17922016080772032447
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((Nat.factorization (f2 n) p : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174863.P17922016080772032447

namespace A174863

/-- `∑[∏{e}[∏{p}[n+1, #], #-2]]` -/
def P17922016080772032447.Spec : Prop :=
  ∀ n, P17922016080772032447.a n = A174863 (n + 1)

end A174863

/-! ## A174863.P9626152527541160032

`∑[∏{p}[n+1, n%#-#]]`
-/

namespace A174863.P9626152527541160032
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (((n % p : ℕ) : ℤ) - (p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174863.P9626152527541160032

namespace A174863

/-- `∑[∏{p}[n+1, n%#-#]]` -/
def P9626152527541160032.Spec : Prop :=
  ∀ n, P9626152527541160032.a n = A174863 (n + 1)

end A174863

/-! ## A174863.P5025972399361876914

`∑[∏{e}[n+1, val(#, n+1)-1]]`
-/

namespace A174863.P5025972399361876914
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((SequenceMachineLib.valuation (Nat.factorization (f2 n) p) (n + 1) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174863.P5025972399361876914

namespace A174863

/-- `∑[∏{e}[n+1, val(#, n+1)-1]]` -/
def P5025972399361876914.Spec : Prop :=
  ∀ n, P5025972399361876914.a n = A174863 (n + 1)

end A174863

/-! ## A174863.P17664663949389793596

`∑[∏{e}[n+1, C(#, n+1)-1]]`
-/

namespace A174863.P17664663949389793596
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((Nat.choose (Nat.factorization (f2 n) p) (n + 1) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174863.P17664663949389793596

namespace A174863

/-- `∑[∏{e}[n+1, C(#, n+1)-1]]` -/
def P17664663949389793596.Spec : Prop :=
  ∀ n, P17664663949389793596.a n = A174863 (n + 1)

end A174863

/-! ## A174863.P5959400199321274127

`∑[∏{p}[n+1, n-lcm(#, n+1)]]`
-/

namespace A174863.P5959400199321274127
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((n : ℤ) - (Nat.lcm p (n + 1) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174863.P5959400199321274127

namespace A174863

/-- `∑[∏{p}[n+1, n-lcm(#, n+1)]]` -/
def P5959400199321274127.Spec : Prop :=
  ∀ n, P5959400199321274127.a n = A174863 (n + 1)

end A174863

/-! ## A174863.P539187691071457037

`∑[∏{p}[n+1, -#]/∏{p}[n+1, #]]`
-/

namespace A174863.P539187691071457037
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ)) : ℤ) : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174863.P539187691071457037

namespace A174863

/-- `∑[∏{p}[n+1, -#]/∏{p}[n+1, #]]` -/
def P539187691071457037.Spec : Prop :=
  ∀ n, P539187691071457037.a n = (A174863 (n + 1) : ℚ)

end A174863

/-! ## A174863.P7293293388375245365

`∑[A076479(n+1)]`
-/

namespace A174863.P7293293388375245365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174863.P7293293388375245365

namespace A174863

/-- `∑[A076479(n+1)]` -/
def P7293293388375245365.Spec : Prop :=
  ∀ n, P7293293388375245365.a n = A174863 (n + 1)

end A174863

/-! ## A174863.P13997853827690944359

`∑[A008683(∏{p}[n+1, #])]`
-/

namespace A174863.P13997853827690944359
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174863.P13997853827690944359

namespace A174863

/-- `∑[A008683(∏{p}[n+1, #])]` -/
def P13997853827690944359.Spec : Prop :=
  ∀ n, P13997853827690944359.a n = A174863 (n + 1)

end A174863

/-! ## A174863.P9414654428920479506

`∑[(-1)^A001221(n+1)]`
-/

namespace A174863.P9414654428920479506
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001221 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174863.P9414654428920479506

namespace A174863

/-- `∑[(-1)^A001221(n+1)]` -/
def P9414654428920479506.Spec : Prop :=
  ∀ n, P9414654428920479506.a n = (A174863 (n + 1) : ℚ)

end A174863

/-! ## A174863.P11153979960301397225

`∑[∏{p}[n+1, -A001221(#)]]`
-/

namespace A174863.P11153979960301397225
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-A001221 p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174863.P11153979960301397225

namespace A174863

/-- `∑[∏{p}[n+1, -A001221(#)]]` -/
def P11153979960301397225.Spec : Prop :=
  ∀ n, P11153979960301397225.a n = A174863 (n + 1)

end A174863

/-! ## A174863.P13667718007214395179

`∑[∏{p}[n+1, -A001222(#)]]`
-/

namespace A174863.P13667718007214395179
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-A001222 p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174863.P13667718007214395179

namespace A174863

/-- `∑[∏{p}[n+1, -A001222(#)]]` -/
def P13667718007214395179.Spec : Prop :=
  ∀ n, P13667718007214395179.a n = A174863 (n + 1)

end A174863

/-! ## A174863.P4349278954854015540

`∑[A076480(n+1)-(n+1)]`
-/

namespace A174863.P4349278954854015540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076480 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174863.P4349278954854015540

namespace A174863

/-- `∑[A076480(n+1)-(n+1)]` -/
def P4349278954854015540.Spec : Prop :=
  ∀ n, P4349278954854015540.a n = A174863 (n + 1)

end A174863

/-! ## A174863.P14220414659714395054

`∑[∏{p}[n+1, 1-A000005(#)]]`
-/

namespace A174863.P14220414659714395054
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (1 - A000005 p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174863.P14220414659714395054

namespace A174863

/-- `∑[∏{p}[n+1, 1-A000005(#)]]` -/
def P14220414659714395054.Spec : Prop :=
  ∀ n, P14220414659714395054.a n = A174863 (n + 1)

end A174863

/-! ## A174863.P13124875084290430166

`∑[∏{p}[n+1, A000010(#)-#]]`
-/

namespace A174863.P13124875084290430166
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (A000010 p - (p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174863.P13124875084290430166

namespace A174863

/-- `∑[∏{p}[n+1, A000010(#)-#]]` -/
def P13124875084290430166.Spec : Prop :=
  ∀ n, P13124875084290430166.a n = A174863 (n + 1)

end A174863

/-! ## A174863.P5198784962135614420

`∑[∏{p}[n+1, #-A000203(#)]]`
-/

namespace A174863.P5198784962135614420
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - A000203 p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174863.P5198784962135614420

namespace A174863

/-- `∑[∏{p}[n+1, #-A000203(#)]]` -/
def P5198784962135614420.Spec : Prop :=
  ∀ n, P5198784962135614420.a n = A174863 (n + 1)

end A174863

/-! ## A174863.P12858869046903992127

`∑[A008683(A007947(n+1))]`
-/

namespace A174863.P12858869046903992127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174863.P12858869046903992127

namespace A174863

/-- `∑[A008683(A007947(n+1))]` -/
def P12858869046903992127.Spec : Prop :=
  ∀ n, P12858869046903992127.a n = A174863 (n + 1)

end A174863

/-! ## A174863.P1435234900925581757

`∑[A008683(A292586(n+1))]`
-/

namespace A174863.P1435234900925581757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A292586 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174863.P1435234900925581757

namespace A174863

/-- `∑[A008683(A292586(n+1))]` -/
def P1435234900925581757.Spec : Prop :=
  ∀ n, P1435234900925581757.a n = A174863 (n + 1)

end A174863

/-!
# A174864: a(1) = 1, a(n) = square of the sum of previous terms.

The programs for A174864, there is no canonical definition to state claims against.
-/

/-! ## A174864.P14934660262152296272

`Δ[2*C(a(n-1)+1, 2)]` with `a(0)=0, a(1)=1`
-/

namespace A174864.P14934660262152296272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  2 * Nat.choose (f1 (n - 1) + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A174864.P14934660262152296272

/-! ## A174864.P2277908334462355100

`Δ[ceil((1/2-a(n-1))²)]` with `a(0)=1, a(1)=2`
-/

namespace A174864.P2277908334462355100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ⌈((1 : ℚ) / 2 - (f1 (n - 1) : ℚ)) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174864.P2277908334462355100

/-! ## A174864.P762312919661479175

`(a(n-1)+sqrt(a(n-1)))²` with `a(0)=1, a(1)=1`
-/

namespace A174864.P762312919661479175
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) + Real.sqrt (a (n - 1))) ^ 2

end

end A174864.P762312919661479175

/-! ## A174864.P2393682977462883488

`Δ[a(n-1)+a(n-1)²]` with `a(0)=0, a(1)=1`
-/

namespace A174864.P2393682977462883488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A174864.P2393682977462883488

/-! ## A174864.P13350563039732524152

`(a(n-1)+root(a(n-1), 2))²` with `a(0)=1, a(1)=1`
-/

namespace A174864.P13350563039732524152
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) + a (n - 1) ^ (1 / (2 : ℝ))) ^ 2

end

end A174864.P13350563039732524152

/-!
# A174865: Odd abundant numbers whose abundance is even.

The programs for A174865, there is no canonical definition to state claims against.
-/

/-! ## A174865.P1021848462782269769

`record[A052410(A005231(n+1))]`
-/

namespace A174865.P1021848462782269769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A005231 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174865.P1021848462782269769

/-! ## A174865.P12374752210485437242

`filter[A005231(n+1), A324903(#)]`
-/

namespace A174865.P12374752210485437242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A174865.P12374752210485437242

/-! ## A174865.P10747113237975059893

`filter[A005231(n+1), A374474(#)]`
-/

namespace A174865.P10747113237975059893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A174865.P10747113237975059893

/-! ## A174865.P12336415536518209987

`filter[A392653(n+1), A374474(#)]`
-/

namespace A174865.P12336415536518209987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A174865.P12336415536518209987

/-! ## A174865.P18420165298643303824

`record[A052410(A106431(n+1)+1)]`
-/

namespace A174865.P18420165298643303824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A106431 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174865.P18420165298643303824

/-! ## A174865.P1230310926764445720

`filter[A005231(n+1), A049240(#)]`
-/

namespace A174865.P1230310926764445720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A174865.P1230310926764445720

/-! ## A174865.P15708505607523036744

`filter[A005231(n+1), A295309(#)]`
-/

namespace A174865.P15708505607523036744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295309 (f1 j).toNat = 1) n)

end

end A174865.P15708505607523036744

/-! ## A174865.P4666703370124544643

`filter[A005231(n+1), A323158(#)]`
-/

namespace A174865.P4666703370124544643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A174865.P4666703370124544643

/-! ## A174865.P10384320121195254519

`filter[A005231(n+1), A324908(#)]`
-/

namespace A174865.P10384320121195254519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A174865.P10384320121195254519

/-! ## A174865.P5020984844951901326

`filter[A392653(n+1), A323158(#)]`
-/

namespace A174865.P5020984844951901326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A174865.P5020984844951901326

/-! ## A174865.P12409194151535280562

`filter[A392653(n+1), A324908(#)]`
-/

namespace A174865.P12409194151535280562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A174865.P12409194151535280562

/-!
# A174866: Partial sums of A000419.

The programs for A174866, there is no canonical definition to state claims against.
-/

/-! ## A174866.P13855315041337892170

`∑[A000419(n+1)]`
-/

namespace A174866.P13855315041337892170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174866.P13855315041337892170

/-! ## A174866.P5286141835804521247

`∑[eq[3, A002828(n)]]`
-/

namespace A174866.P5286141835804521247
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174866.P5286141835804521247

/-! ## A174866.P12847889750620036192

`∑[eq[4, a(A262678(n))+1]]` with `a(0)=1`
-/

namespace A174866.P12847889750620036192
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f3 =>
  f3 (A262678 n).toNat + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174866.P12847889750620036192

/-! ## A174866.P10748186009556489221

`∑[record[A000419(A344180(n))]]`
-/

namespace A174866.P10748186009556489221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000419 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174866.P10748186009556489221

/-! ## A174866.P11244587580409420221

`∑[eq[3, n-A255131(n)]]`
-/

namespace A174866.P11244587580409420221
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A255131 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174866.P11244587580409420221

/-! ## A174866.P17467439452856295590

`∑[eq[A000925(n), A072401(n)]]`
-/

namespace A174866.P17467439452856295590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072401 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174866.P17467439452856295590

/-! ## A174866.P17650974936886975682

`∑[eq[A004018(n), A072401(n)]]`
-/

namespace A174866.P17650974936886975682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072401 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174866.P17650974936886975682

/-! ## A174866.P14553056178563824894

`∑[record[A000419(A286617(n))]]`
-/

namespace A174866.P14553056178563824894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000419 (A286617 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174866.P14553056178563824894

/-! ## A174866.P17807711252007600341

`∑[record[A000419(A193739(n))]]`
-/

namespace A174866.P17807711252007600341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000419 (A193739 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174866.P17807711252007600341

/-! ## A174866.P13644485645501717299

`∑[record[A000419(A193738(n))]]`
-/

namespace A174866.P13644485645501717299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000419 (A193738 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174866.P13644485645501717299

/-!
# A174868: Partial sums of Stern's diatomic series A002487.

The programs for A174868, the canonical program `A174868.P8863606013298281785` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174868 has offset 0).

The definition of A174868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174868.P8863606013298281785

`∑[a(n-1)+a(n-2)-2*a(n-2)%a(n-1)]` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A174868

/-- `∑[a(n-1)+a(n-2)-2*a(n-2)%a(n-1)]` -/
def P8863606013298281785.Spec : Prop :=
  ∀ n, P8863606013298281785.a n = A174868 n

theorem P8863606013298281785.correct : P8863606013298281785.Spec := by
  intro n
  simp only [A174868]

end A174868

/-! ## A174868.P7581240928505072091

`∑[A002487(n)]`
-/

namespace A174868.P7581240928505072091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174868.P7581240928505072091

namespace A174868

/-- `∑[A002487(n)]` -/
def P7581240928505072091.Spec : Prop :=
  ∀ n, P7581240928505072091.a n = A174868 n

end A174868

/-! ## A174868.P2025762685558563938

`∑[n-A284013(n)]`
-/

namespace A174868.P2025762685558563938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A284013 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174868.P2025762685558563938

namespace A174868

/-- `∑[n-A284013(n)]` -/
def P2025762685558563938.Spec : Prop :=
  ∀ n, P2025762685558563938.a n = A174868 n

end A174868

/-! ## A174868.P6418181247596581820

`∑[∑{d}[n, A317839(#)]]`
-/

namespace A174868.P6418181247596581820
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A317839 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174868.P6418181247596581820

namespace A174868

/-- `∑[∑{d}[n, A317839(#)]]` -/
def P6418181247596581820.Spec : Prop :=
  ∀ n, P6418181247596581820.a n = A174868 n

end A174868

/-! ## A174868.P17389369215555927310

`∑[A126606(n+1)/2]`
-/

namespace A174868.P17389369215555927310
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126606 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174868.P17389369215555927310

namespace A174868

/-- `∑[A126606(n+1)/2]` -/
def P17389369215555927310.Spec : Prop :=
  ∀ n, P17389369215555927310.a n = (A174868 n : ℚ)

end A174868

/-! ## A174868.P9524845064853474466

`∑[A324337(A003188(n))]`
-/

namespace A174868.P9524845064853474466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 (A003188 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174868.P9524845064853474466

namespace A174868

/-- `∑[A324337(A003188(n))]` -/
def P9524845064853474466.Spec : Prop :=
  ∀ n, P9524845064853474466.a n = A174868 n

end A174868

/-! ## A174868.P10364673349325426794

`∑[A324338(A233280(n))]-1`
-/

namespace A174868.P10364673349325426794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324338 (A233280 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A174868.P10364673349325426794

namespace A174868

/-- `∑[A324338(A233280(n))]-1` -/
def P10364673349325426794.Spec : Prop :=
  ∀ n, P10364673349325426794.a n = A174868 n

end A174868

/-! ## A174868.P17935274331494712276

`A007729(n)-A002487(n+1)`
-/

namespace A174868.P17935274331494712276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007729 n - A002487 (n + 1)

end

end A174868.P17935274331494712276

namespace A174868

/-- `A007729(n)-A002487(n+1)` -/
def P17935274331494712276.Spec : Prop :=
  ∀ n, P17935274331494712276.a n = A174868 n

end A174868

/-! ## A174868.P5351942562714695583

`A070992(n)-A301977(n+1)`
-/

namespace A174868.P5351942562714695583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070992 n - A301977 (n + 1)

end

end A174868.P5351942562714695583

namespace A174868

/-- `A070992(n)-A301977(n+1)` -/
def P5351942562714695583.Spec : Prop :=
  ∀ n, P5351942562714695583.a n = A174868 n

end A174868

/-! ## A174868.P5172224378476123384

`∑[A295515(n+1)+A295515(A093178(n))]`
-/

namespace A174868.P5172224378476123384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (n + 1) + A295515 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174868.P5172224378476123384

namespace A174868

/-- `∑[A295515(n+1)+A295515(A093178(n))]` -/
def P5172224378476123384.Spec : Prop :=
  ∀ n, P5172224378476123384.a n = A174868 n

end A174868

/-! ## A174868.P12597190890369899349

`∑[A007305(A145342(n+1))]-1`
-/

namespace A174868.P12597190890369899349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (A145342 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A174868.P12597190890369899349

namespace A174868

/-- `∑[A007305(A145342(n+1))]-1` -/
def P12597190890369899349.Spec : Prop :=
  ∀ n, P12597190890369899349.a n = A174868 n

end A174868

/-! ## A174868.P7628702729611830494

`∑[A317840(2*(n+1))]-A317840(2*(n+1))`
-/

namespace A174868.P7628702729611830494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317840 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A317840 (2 * (n + 1))

end

end A174868.P7628702729611830494

namespace A174868

/-- `∑[A317840(2*(n+1))]-A317840(2*(n+1))` -/
def P7628702729611830494.Spec : Prop :=
  ∀ n, P7628702729611830494.a n = A174868 n

end A174868

/-! ## A174868.P6068055932554757510

`∑[A283977(2*A227140(n))]`
-/

namespace A174868.P6068055932554757510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283977 (2 * A227140 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174868.P6068055932554757510

namespace A174868

/-- `∑[A283977(2*A227140(n))]` -/
def P6068055932554757510.Spec : Prop :=
  ∀ n, P6068055932554757510.a n = A174868 n

end A174868

/-! ## A174868.P5541877007143638640

`∑[A295515(A093178(n)+n)]`
-/

namespace A174868.P5541877007143638640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (A093178 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174868.P5541877007143638640

namespace A174868

/-- `∑[A295515(A093178(n)+n)]` -/
def P5541877007143638640.Spec : Prop :=
  ∀ n, P5541877007143638640.a n = A174868 n

end A174868

/-! ## A174868.P15617448165021601669

`A007729(2*n)-∑[A007306(n+1)]`
-/

namespace A174868.P15617448165021601669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007729 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174868.P15617448165021601669

namespace A174868

/-- `A007729(2*n)-∑[A007306(n+1)]` -/
def P15617448165021601669.Spec : Prop :=
  ∀ n, P15617448165021601669.a n = A174868 n

end A174868

/-! ## A174868.P14060815606694731141

`∑[A283976(2*n)]`
-/

namespace A174868.P14060815606694731141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174868.P14060815606694731141

namespace A174868

/-- `∑[A283976(2*n)]` -/
def P14060815606694731141.Spec : Prop :=
  ∀ n, P14060815606694731141.a n = A174868 n

end A174868

/-! ## A174868.P1131936803433759699

`∑[A283977(2*n)]`
-/

namespace A174868.P1131936803433759699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283977 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174868.P1131936803433759699

namespace A174868

/-- `∑[A283977(2*n)]` -/
def P1131936803433759699.Spec : Prop :=
  ∀ n, P1131936803433759699.a n = A174868 n

end A174868

/-! ## A174868.P5784318953570521498

`∑[A288002(2*n+1)]`
-/

namespace A174868.P5784318953570521498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288002 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174868.P5784318953570521498

namespace A174868

/-- `∑[A288002(2*n+1)]` -/
def P5784318953570521498.Spec : Prop :=
  ∀ n, P5784318953570521498.a n = A174868 n

end A174868

/-! ## A174868.P5877583796253342326

`∑[A295515(2*n+1)]`
-/

namespace A174868.P5877583796253342326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174868.P5877583796253342326

namespace A174868

/-- `∑[A295515(2*n+1)]` -/
def P5877583796253342326.Spec : Prop :=
  ∀ n, P5877583796253342326.a n = A174868 n

end A174868

/-! ## A174868.P17989882850567273712

`∑[A007306(2*n+1)-A007306(n+1)]`
-/

namespace A174868.P17989882850567273712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (2 * n + 1) - A007306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174868.P17989882850567273712

namespace A174868

/-- `∑[A007306(2*n+1)-A007306(n+1)]` -/
def P17989882850567273712.Spec : Prop :=
  ∀ n, P17989882850567273712.a n = A174868 n

end A174868

/-!
# A174869: a(n) is 0 if n is a power of 2, otherwise the smallest k > 0 such that A006530(n+k) < A006530(n).

The programs for A174869, there is no canonical definition to state claims against.
-/

/-! ## A174869.P8084827732300133968

`ceil(A119957(n+1)/A165783(A321898(n+1)))`
-/

namespace A174869.P8084827732300133968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A119957 (n + 1) : ℚ) / (A165783 (A321898 (n + 1)).toNat : ℚ)⌉

end

end A174869.P8084827732300133968

/-! ## A174869.P2740620516782396694

`gcd(A052416(A055231(n+1)), A086099(n))`
-/

namespace A174869.P2740620516782396694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052416 (A055231 (n + 1)).toNat) (A086099 n)

end

end A174869.P2740620516782396694

/-! ## A174869.P2457905224539883406

`A322452(A034781(n+2)+A001937(n))`
-/

namespace A174869.P2457905224539883406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322452 (A034781 (n + 2) + A001937 n).toNat

end

end A174869.P2457905224539883406

/-! ## A174869.P5379276098768472141

`gcd(A062175(n+1), A078442(A172416(n)))`
-/

namespace A174869.P5379276098768472141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062175 (n + 1)) (A078442 (A172416 n).toNat)

end

end A174869.P5379276098768472141

/-! ## A174869.P4605819892483417695

`(A232509(n+1)^n)%(n+1)`
-/

namespace A174869.P4605819892483417695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232509 (n + 1) ^ n) (n + 1 : ℤ)

end

end A174869.P4605819892483417695

/-!
# A174870: Odd indices m for which A174869(m) is <>1.

The programs for A174870, there is no canonical definition to state claims against.
-/

/-! ## A174870.P9099679111768382397

`filter[2*n+1, A087429(#)]`
-/

namespace A174870.P9099679111768382397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087429 (f1 j) = 1) n)

end

end A174870.P9099679111768382397

/-! ## A174870.P10422950293043495788

`∩[2*n+1, A070089(n+1)]`
-/

namespace A174870.P10422950293043495788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174870.P10422950293043495788

/-! ## A174870.P7296842986606762187

`record[A093178(A070089(n+1))]`
-/

namespace A174870.P7296842986606762187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A070089 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174870.P7296842986606762187

/-! ## A174870.P5802017832156817249

`record[A093411(A070089(n+2))]`
-/

namespace A174870.P5802017832156817249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (A070089 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174870.P5802017832156817249

/-! ## A174870.P1449264739583856746

`record[A000265(A070089(n+5))]`
-/

namespace A174870.P1449264739583856746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A070089 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174870.P1449264739583856746

/-! ## A174870.P12095208898840457434

`filter[A070089(n+1), A000035(#)]`
-/

namespace A174870.P12095208898840457434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A174870.P12095208898840457434

/-! ## A174870.P15307861797289101334

`∩[A070089(n+1), A004273(n)]`
-/

namespace A174870.P15307861797289101334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174870.P15307861797289101334

/-! ## A174870.P15566269353654736536

`∩[A070089(n+1), A060747(n)]`
-/

namespace A174870.P15566269353654736536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174870.P15566269353654736536

/-! ## A174870.P8503029053703483868

`lt[A006530(or(1, n)), A006530(n+1)]`
-/

namespace A174870.P8503029053703483868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.lor 1 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174870.P8503029053703483868

/-! ## A174870.P10834536891797576220

`lt[A048675(or(1, n)), A048675(n+1)]`
-/

namespace A174870.P10834536891797576220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (Nat.lor 1 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174870.P10834536891797576220

/-!
# A174871: Numbers k such that the k-th triangular number ends in 6 or 8.

The programs for A174871, the canonical program `A174871.P6887278164168524008` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174871 has offset 1).

The definition of A174871 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174871.P6887278164168524008

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=3, a(1)=7, a(2)=8, a(3)=11, a(4)=12, a(5)=16, a(6)=23`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A174871

/-- `a(n-1)+a(n-6)-a(n-7)` -/
def P6887278164168524008.Spec : Prop :=
  ∀ n, P6887278164168524008.a n = A174871 (n + 1)

theorem P6887278164168524008.correct : P6887278164168524008.Spec := by
  intro n
  simp only [A174871, Nat.add_sub_cancel]

end A174871

/-! ## A174871.P4044101392692438667

`Δ[A072836(n+1)]+a(n-1)` with `a(0)=3`
-/

namespace A174871.P4044101392692438667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  f1 (n + 1) - f1 n + a (n - 1)

end

end A174871.P4044101392692438667

namespace A174871

/-- `Δ[A072836(n+1)]+a(n-1)` -/
def P4044101392692438667.Spec : Prop :=
  ∀ n, P4044101392692438667.a n = A174871 (n + 1)

end A174871

/-! ## A174871.P1163257202431427001

`∩[A047223(n+1), A014601(n)]`
-/

namespace A174871.P1163257202431427001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174871.P1163257202431427001

namespace A174871

/-- `∩[A047223(n+1), A014601(n)]` -/
def P1163257202431427001.Spec : Prop :=
  ∀ n, (P1163257202431427001.a n : ℤ) = A174871 (n + 1)

end A174871

/-! ## A174871.P4787506052132090803

`∩[A047223(n+1), A154708(n+1)]`
-/

namespace A174871.P4787506052132090803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174871.P4787506052132090803

namespace A174871

/-- `∩[A047223(n+1), A154708(n+1)]` -/
def P4787506052132090803.Spec : Prop :=
  ∀ n, (P4787506052132090803.a n : ℤ) = A174871 (n + 1)

end A174871

/-! ## A174871.P17974877621537378223

`∩[A028970(n+1), A047223(n+1)]`
-/

namespace A174871.P17974877621537378223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174871.P17974877621537378223

namespace A174871

/-- `∩[A028970(n+1), A047223(n+1)]` -/
def P17974877621537378223.Spec : Prop :=
  ∀ n, (P17974877621537378223.a n : ℤ) = A174871 (n + 1)

end A174871

/-! ## A174871.P2004102643302806375

`eq[A072068(n+1), A152894(n)]-3`
-/

namespace A174871.P2004102643302806375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 3

end

end A174871.P2004102643302806375

namespace A174871

/-- `eq[A072068(n+1), A152894(n)]-3` -/
def P2004102643302806375.Spec : Prop :=
  ∀ n, P2004102643302806375.a n = A174871 (n + 1)

end A174871

/-!
# A174873: Difference d between two distinct primes a and b such that a*b+-d are primes.

The programs for A174873, there is no canonical definition to state claims against.
-/

/-! ## A174873.P9433302367975171006

`lt[A000700(lcm(2, n)), A051953(2*n+3)]`
-/

namespace A174873.P9433302367975171006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (Nat.lcm 2 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174873.P9433302367975171006

/-!
# A174874: Smaller prime number of two distinct primes a and b such that a*b+-d are primes, and d is a difference between a and b.

The programs for A174874, there is no canonical definition to state claims against.
-/

/-! ## A174874.P18392613461848628949

`A249077(A256722(n+1)^A191770(3*n+4))`
-/

namespace A174874.P18392613461848628949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249077 (SequenceMachineLib.roundAway ((A256722 (n + 1) : ℚ) ^ (A191770 (3 * n + 4) : ℤ))).toNat

end

end A174874.P18392613461848628949

/-! ## A174874.P8761541694120312985

`A249077(C(A256722(n+1), A191770(3*n+4)))`
-/

namespace A174874.P8761541694120312985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249077 (Nat.choose (A256722 (n + 1)).toNat (A191770 (3 * n + 4)).toNat)

end

end A174874.P8761541694120312985

/-!
# A174875: Triangle read by rows: T(n,k) = sigma(n) mod tau(k), where sigma(.) is the sum of divisors and tau(.) is the number of divisors.

The programs for A174875, the canonical program `A174875.P13371474732863424214` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174875 has offset 1).

The definition of A174875 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174875.P13371474732863424214

`A245092(A131507(n))%A000005(A002260(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A174875

/-- `A245092(A131507(n))%A000005(A002260(n+1))` -/
def P13371474732863424214.Spec : Prop :=
  ∀ n, P13371474732863424214.a n = A174875 (n + 1)

theorem P13371474732863424214.correct : P13371474732863424214.Spec := by
  intro n
  simp only [A174875, Nat.add_sub_cancel]

end A174875

/-! ## A174875.P8268439747163247743

`A000203(A002024(n+1))%A000005(A002260(n+1))`
-/

namespace A174875.P8268439747163247743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A002024 (n + 1)).toNat) (A000005 (A002260 (n + 1)).toNat)

end

end A174875.P8268439747163247743

namespace A174875

/-- `A000203(A002024(n+1))%A000005(A002260(n+1))` -/
def P8268439747163247743.Spec : Prop :=
  ∀ n, P8268439747163247743.a n = A174875 (n + 1)

end A174875

/-! ## A174875.P10274929909842511305

`A000203(A003056(n)+1)%A000005(A002260(n+1))`
-/

namespace A174875.P10274929909842511305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A003056 n + 1).toNat) (A000005 (A002260 (n + 1)).toNat)

end

end A174875.P10274929909842511305

namespace A174875

/-- `A000203(A003056(n)+1)%A000005(A002260(n+1))` -/
def P10274929909842511305.Spec : Prop :=
  ∀ n, P10274929909842511305.a n = A174875 (n + 1)

end A174875

/-! ## A174875.P6149235856120074866

`A000203(A107436(n+1))%A000005(A002260(n+1))`
-/

namespace A174875.P6149235856120074866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A107436 (n + 1)).toNat) (A000005 (A002260 (n + 1)).toNat)

end

end A174875.P6149235856120074866

namespace A174875

/-- `A000203(A107436(n+1))%A000005(A002260(n+1))` -/
def P6149235856120074866.Spec : Prop :=
  ∀ n, P6149235856120074866.a n = A174875 (n + 1)

end A174875

/-! ## A174875.P8866289095122335041

`A000203(A130299(n+1))%A000005(A002260(n+1))`
-/

namespace A174875.P8866289095122335041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A130299 (n + 1)).toNat) (A000005 (A002260 (n + 1)).toNat)

end

end A174875.P8866289095122335041

namespace A174875

/-- `A000203(A130299(n+1))%A000005(A002260(n+1))` -/
def P8866289095122335041.Spec : Prop :=
  ∀ n, P8866289095122335041.a n = A174875 (n + 1)

end A174875

/-!
# A174876: Numbers k such that the sum of squares of their digits > k.

The programs for A174876, there is no canonical definition to state claims against.
-/

/-! ## A174876.P1651031818827429354

`lt[n, ∑{digits}[n, #²]]`
-/

namespace A174876.P1651031818827429354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x ^ 2).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174876.P1651031818827429354

/-! ## A174876.P15918865518255069036

`eq[2, A052010(n)]`
-/

namespace A174876.P15918865518255069036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174876.P15918865518255069036

/-! ## A174876.P3636563339127855417

`lt[n, A003132(n)]`
-/

namespace A174876.P3636563339127855417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A174876.P3636563339127855417

/-! ## A174876.P15822396018013604720

`record[(n+2)%A003132(n+2)]`
-/

namespace A174876.P15822396018013604720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A003132 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174876.P15822396018013604720

/-! ## A174876.P10692630777261068952

`lt[round(1/acot(n)), A101337(n+1)]+1`
-/

namespace A174876.P10692630777261068952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101337 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A174876.P10692630777261068952

/-! ## A174876.P5332911502789059697

`lt[n, A111707(A056142(n))]`
-/

namespace A174876.P5332911502789059697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111707 (A056142 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A174876.P5332911502789059697

/-! ## A174876.P16860812614849126366

`lt[n, A257588(A051022(n))]`
-/

namespace A174876.P16860812614849126366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257588 (A051022 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A174876.P16860812614849126366

/-! ## A174876.P7526559014338762807

`lt[A069816(n)+n, A118881(n)]`
-/

namespace A174876.P7526559014338762807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069816 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174876.P7526559014338762807

/-! ## A174876.P7620708572261827982

`lt[A088576(A052010(n)), A145193(n+1)]`
-/

namespace A174876.P7620708572261827982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088576 (A052010 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145193 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174876.P7620708572261827982

/-!
# A174877: Larger of two distinct primes a and b such that a*b+-d are primes, and d is a difference between a and b.

The programs for A174877, there is no canonical definition to state claims against.
-/

/-! ## A174877.P1415907992918451752

`record[A103506(A104222(2*(n+2)))]`
-/

namespace A174877.P1415907992918451752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103506 (A104222 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174877.P1415907992918451752

/-! ## A174877.P4814206078113141444

`∪[A307718(n+1), A307701(A307712(3*(n+1)))]`
-/

namespace A174877.P4814206078113141444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307701 (A307712 (3 * (n + 1))).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174877.P4814206078113141444

/-!
# A174878: Primes in A174874 and A174877.

The programs for A174878, there is no canonical definition to state claims against.
-/

/-! ## A174878.P927774369891388893

`∩[A174877(A057354(3*n+4)), A174874(n+1)]`
-/

namespace A174878.P927774369891388893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174877 (A057354 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174878.P927774369891388893

/-! ## A174878.P3415105170236181528

`∩[A174874(n+1)%A285694(n+1), A174877(n+1)]`
-/

namespace A174878.P3415105170236181528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174874 (n + 1)) (A285694 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174878.P3415105170236181528

/-! ## A174878.P13498950907477883534

`∩[A174874(A044827(n+1)), A174877(n+1)]`
-/

namespace A174878.P13498950907477883534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174874 (A044827 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174878.P13498950907477883534

/-!
# A174881: a(n) = n^n * (n+1)^n.

The programs for A174881, the canonical program `A174881.P9573270728012474678` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174881 has offset 1).

The definition of A174881 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^(n+1)*(n+2)^(n+1)` (program `A174881.P9573270728012474678`, by `A174881.P9573270728012474678.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174881.P18262258073567427556

`((n+1)*(n+2))^(n+1)`
-/

namespace A174881.P18262258073567427556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2)) ^ (n + 1)

end

end A174881.P18262258073567427556

namespace A174881

/-- `((n+1)*(n+2))^(n+1)` -/
def P18262258073567427556.Spec : Prop :=
  ∀ n, (P18262258073567427556.a n : ℤ) = A174881 (n + 1)

end A174881

/-! ## A174881.P9573270728012474678

`(n+1)^(n+1)*(n+2)^(n+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A174881

/-- `(n+1)^(n+1)*(n+2)^(n+1)` -/
def P9573270728012474678.Spec : Prop :=
  ∀ n, (P9573270728012474678.a n : ℤ) = A174881 (n + 1)

theorem P9573270728012474678.correct : P9573270728012474678.Spec := by
  intro n
  simp only [A174881, Nat.add_sub_cancel]

end A174881

/-!
# A174882: A (3/2,-1) Somos-4 sequence.

The programs for A174882, the canonical program `A174882.P5257603266095217258` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174882 has offset 0).

The definition of A174882 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174882.P5257603266095217258

`2^n/A228826(A027379(n+2))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A174882

/-- `2^n/A228826(A027379(n+2))` -/
def P5257603266095217258.Spec : Prop :=
  ∀ n, P5257603266095217258.a n = (A174882 n : ℚ)

end A174882

/-! ## A174882.P8363353735032858400

`A000079(n)/A228826(A055998(n+2))`
-/

namespace A174882.P8363353735032858400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / (A228826 (A055998 (n + 2)).toNat : ℚ)

end

end A174882.P8363353735032858400

namespace A174882

/-- `A000079(n)/A228826(A055998(n+2))` -/
def P8363353735032858400.Spec : Prop :=
  ∀ n, P8363353735032858400.a n = (A174882 n : ℚ)

end A174882

/-!
# A174883: Largest odd divisors of Fibonacci numbers.

The programs for A174883, the canonical program `A174883.P7247587892834711161` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174883 has offset 1).

The definition of A174883 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174883.P7247587892834711161

`A000045(n+1)/A060865(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A174883

/-- `A000045(n+1)/A060865(n+1)` -/
def P7247587892834711161.Spec : Prop :=
  ∀ n, P7247587892834711161.a n = (A174883 (n + 1) : ℚ)

end A174883

/-! ## A174883.P7849048131790468294

`(A002062(n+1)-(n+1))/A060865(n+1)`
-/

namespace A174883.P7849048131790468294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002062 (n + 1) - (n + 1 : ℤ) : ℚ) / (A060865 (n + 1) : ℚ)

end

end A174883.P7849048131790468294

namespace A174883

/-- `(A002062(n+1)-(n+1))/A060865(n+1)` -/
def P7849048131790468294.Spec : Prop :=
  ∀ n, P7849048131790468294.a n = (A174883 (n + 1) : ℚ)

end A174883

/-! ## A174883.P14870332286910926794

`A000045(n+1)/A006519(A081320(n+1))`
-/

namespace A174883.P14870332286910926794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / (A006519 (A081320 (n + 1)).toNat : ℚ)

end

end A174883.P14870332286910926794

namespace A174883

/-- `A000045(n+1)/A006519(A081320(n+1))` -/
def P14870332286910926794.Spec : Prop :=
  ∀ n, P14870332286910926794.a n = (A174883 (n + 1) : ℚ)

end A174883

/-! ## A174883.P1953355311552989365

`A000045(n+1)/A000079(val(A000045(n+1), 2))`
-/

namespace A174883.P1953355311552989365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / (A000079 (SequenceMachineLib.valuation (A000045 (n + 1)).toNat 2) : ℚ)

end

end A174883.P1953355311552989365

namespace A174883

/-- `A000045(n+1)/A000079(val(A000045(n+1), 2))` -/
def P1953355311552989365.Spec : Prop :=
  ∀ n, P1953355311552989365.a n = (A174883 (n + 1) : ℚ)

end A174883

/-! ## A174883.P848474159951876087

`A000045(n+1)/gcd(A000045(n+1), A000079(n))`
-/

namespace A174883.P848474159951876087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / (Int.gcd (A000045 (n + 1)) (A000079 n) : ℚ)

end

end A174883.P848474159951876087

namespace A174883

/-- `A000045(n+1)/gcd(A000045(n+1), A000079(n))` -/
def P848474159951876087.Spec : Prop :=
  ∀ n, P848474159951876087.a n = (A174883 (n + 1) : ℚ)

end A174883

/-! ## A174883.P16004638178721883236

`lcm(A000045(n+1), A016116(n+1))/A016116(n+1)`
-/

namespace A174883.P16004638178721883236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000045 (n + 1)) (A016116 (n + 1)) : ℚ) / (A016116 (n + 1) : ℚ)

end

end A174883.P16004638178721883236

namespace A174883

/-- `lcm(A000045(n+1), A016116(n+1))/A016116(n+1)` -/
def P16004638178721883236.Spec : Prop :=
  ∀ n, P16004638178721883236.a n = (A174883 (n + 1) : ℚ)

end A174883

/-! ## A174883.P10468192949354823349

`lcm(A085449(2*n+1), A085449(n+1))/A085449(2*n+1)`
-/

namespace A174883.P10468192949354823349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A085449 (2 * n + 1)) (A085449 (n + 1)) : ℚ) / (A085449 (2 * n + 1) : ℚ)

end

end A174883.P10468192949354823349

namespace A174883

/-- `lcm(A085449(2*n+1), A085449(n+1))/A085449(2*n+1)` -/
def P10468192949354823349.Spec : Prop :=
  ∀ n, P10468192949354823349.a n = (A174883 (n + 1) : ℚ)

end A174883

/-! ## A174883.P8324791491874678892

`lcm(A103435(2*n+1), A103435(n+1))/A103435(2*n+1)`
-/

namespace A174883.P8324791491874678892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A103435 (2 * n + 1)) (A103435 (n + 1)) : ℚ) / (A103435 (2 * n + 1) : ℚ)

end

end A174883.P8324791491874678892

namespace A174883

/-- `lcm(A103435(2*n+1), A103435(n+1))/A103435(2*n+1)` -/
def P8324791491874678892.Spec : Prop :=
  ∀ n, P8324791491874678892.a n = (A174883 (n + 1) : ℚ)

end A174883

/-!
# A174884: Palindromic primes using only (decimal) square digits 0,1,4,9.

The programs for A174884, there is no canonical definition to state claims against.
-/

/-! ## A174884.P6122956069366075565

`∩[A002385(n+1), A061246(n+1)]`
-/

namespace A174884.P6122956069366075565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174884.P6122956069366075565

/-! ## A174884.P3249253407230931775

`∩[A061246(n+1), A062687(n+1)]`
-/

namespace A174884.P3249253407230931775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174884.P3249253407230931775

/-! ## A174884.P6928656301872525493

`∩[A061246(n+1), A072299(n+1)]`
-/

namespace A174884.P6928656301872525493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174884.P6928656301872525493

/-! ## A174884.P2685287440326828170

`∩[A061246(n+1), A083137(n+1)]`
-/

namespace A174884.P2685287440326828170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174884.P2685287440326828170

/-! ## A174884.P7934875722281376861

`∩[A061246(n+1), A188650(n+1)]`
-/

namespace A174884.P7934875722281376861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174884.P7934875722281376861

/-! ## A174884.P12442076638513647923

`∩[A061246(n+1), A265641(n+1)]`
-/

namespace A174884.P12442076638513647923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174884.P12442076638513647923

/-! ## A174884.P4959732973213527895

`∩[A061246(n+1), A324989(n+1)]`
-/

namespace A174884.P4959732973213527895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174884.P4959732973213527895

/-! ## A174884.P14660128758024607122

`∩[A061246(n+1), A327325(n+1)]`
-/

namespace A174884.P14660128758024607122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174884.P14660128758024607122

/-! ## A174884.P14331406418690358727

`∩[A061246(n+1), A340252(n+1)]`
-/

namespace A174884.P14331406418690358727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174884.P14331406418690358727

/-! ## A174884.P12953726987063375174

`∩[A061246(n+1), A363246(n+1)]`
-/

namespace A174884.P12953726987063375174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174884.P12953726987063375174

/-!
# A174886: 2^a(n)=A105154(n).

The programs for A174886, there is no canonical definition to state claims against.
-/

/-! ## A174886.P12018968814537356286

`log2(A105154(n))`
-/

namespace A174886.P12018968814537356286
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A105154 n : ℝ)

end

end A174886.P12018968814537356286

/-! ## A174886.P13472158336880090728

`A071325(A105154(n)²)`
-/

namespace A174886.P13472158336880090728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071325 (A105154 n ^ 2).toNat

end

end A174886.P13472158336880090728

/-! ## A174886.P4476817518722629591

`A348951(A105154(n)²)`
-/

namespace A174886.P4476817518722629591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348951 (A105154 n ^ 2).toNat

end

end A174886.P4476817518722629591

/-! ## A174886.P12228744198648476759

`A283982(A105154(n)+1)`
-/

namespace A174886.P12228744198648476759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283982 (A105154 n + 1).toNat

end

end A174886.P12228744198648476759

/-! ## A174886.P12228315144819770775

`A392370(A105154(n)+1)`
-/

namespace A174886.P12228315144819770775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392370 (A105154 n + 1).toNat

end

end A174886.P12228315144819770775

/-! ## A174886.P8791079626215397742

`A000120(A105154(n)-1)`
-/

namespace A174886.P8791079626215397742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A105154 n - 1).toNat

end

end A174886.P8791079626215397742

/-! ## A174886.P17512313782155871586

`A000194(A105154(n)-1)`
-/

namespace A174886.P17512313782155871586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A105154 n - 1).toNat

end

end A174886.P17512313782155871586

/-! ## A174886.P12278797310783933847

`A002487(A105154(n)-1)`
-/

namespace A174886.P12278797310783933847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A105154 n - 1).toNat

end

end A174886.P12278797310783933847

/-! ## A174886.P12474599605253860977

`A087808(A105154(n)-1)`
-/

namespace A174886.P12474599605253860977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A105154 n - 1).toNat

end

end A174886.P12474599605253860977

/-! ## A174886.P11092693743766616546

`A130260(A105154(n)-1)`
-/

namespace A174886.P11092693743766616546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130260 (A105154 n - 1).toNat

end

end A174886.P11092693743766616546

/-!
# A174887: Numbers m such that sum of cubes of their digits > m.

The programs for A174887, the canonical program `A174887.P12021222142468469710` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174887 has offset 1).

The definition of A174887 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 565 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174887.P12021222142468469710

`lt[n, ∑{digits}[n, #^3]]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A174887

/-- `lt[n, ∑{digits}[n, #^3]]` -/
def P12021222142468469710.Spec : Prop :=
  ∀ n, (P12021222142468469710.a n : ℤ) = A174887 (n + 1)

theorem P12021222142468469710.correct : P12021222142468469710.Spec := by
  intro n
  simp only [A174887, Nat.add_sub_cancel]

end A174887

/-! ## A174887.P16640465791416196655

`lt[n, A055012(n)]`
-/

namespace A174887.P16640465791416196655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055012 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A174887.P16640465791416196655

namespace A174887

/-- `lt[n, A055012(n)]` -/
def P16640465791416196655.Spec : Prop :=
  ∀ n, (P16640465791416196655.a n : ℤ) = A174887 (n + 1)

end A174887

/-! ## A174887.P6690951401451848588

`eq[3, or(1, A052010(n))]`
-/

namespace A174887.P6690951401451848588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A052010 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174887.P6690951401451848588

namespace A174887

/-- `eq[3, or(1, A052010(n))]` -/
def P6690951401451848588.Spec : Prop :=
  ∀ n, (P6690951401451848588.a n : ℤ) = A174887 (n + 1)

end A174887

/-! ## A174887.P1492338248355574762

`record[(n+2)%A055012(n+2)]`
-/

namespace A174887.P1492338248355574762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A055012 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174887.P1492338248355574762

namespace A174887

/-- `record[(n+2)%A055012(n+2)]` -/
def P1492338248355574762.Spec : Prop :=
  ∀ n, P1492338248355574762.a n = A174887 (n + 1)

end A174887

/-! ## A174887.P1172597985569071692

`eq[1, A000196(A052010(n))]`
-/

namespace A174887.P1172597985569071692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A052010 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174887.P1172597985569071692

namespace A174887

/-- `eq[1, A000196(A052010(n))]` -/
def P1172597985569071692.Spec : Prop :=
  ∀ n, (P1172597985569071692.a n : ℤ) = A174887 (n + 1)

end A174887

/-! ## A174887.P9422295869089346007

`lt[A071674((n+1)²), A180018(n)]`
-/

namespace A174887.P9422295869089346007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071674 ((n + 1) ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174887.P9422295869089346007

namespace A174887

/-- `lt[A071674((n+1)²), A180018(n)]` -/
def P9422295869089346007.Spec : Prop :=
  ∀ n, (P9422295869089346007.a n : ℤ) = A174887 (n + 1)

end A174887

/-! ## A174887.P8117122596491934604

`lt[A028304(A058889(n+1)), A066459(n)]`
-/

namespace A174887.P8117122596491934604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (A058889 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066459 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174887.P8117122596491934604

namespace A174887

/-- `lt[A028304(A058889(n+1)), A066459(n)]` -/
def P8117122596491934604.Spec : Prop :=
  ∀ n, (P8117122596491934604.a n : ℤ) = A174887 (n + 1)

end A174887

/-! ## A174887.P7307706969707237718

`lt[n, C(A267238(n+2), 2)]+2`
-/

namespace A174887.P7307706969707237718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A267238 (n + 2)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A174887.P7307706969707237718

namespace A174887

/-- `lt[n, C(A267238(n+2), 2)]+2` -/
def P7307706969707237718.Spec : Prop :=
  ∀ n, (P7307706969707237718.a n : ℤ) = A174887 (n + 1)

end A174887

/-! ## A174887.P7612593145288489289

`lt[A156253(A156262(n+1)), A003132(n)]`
-/

namespace A174887.P7612593145288489289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (A156262 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174887.P7612593145288489289

namespace A174887

/-- `lt[A156253(A156262(n+1)), A003132(n)]` -/
def P7612593145288489289.Spec : Prop :=
  ∀ n, (P7612593145288489289.a n : ℤ) = A174887 (n + 1)

end A174887

/-!
# A174888: Triangle read by rows. Row sums = Mobius function A008683, row counts of nonzero elements = A074206.

The programs for A174888, there is no canonical definition to state claims against.
-/

/-! ## A174888.P4240095541044581843

`A276793(A325653(n+1))*A286137(A165916(n+3))`
-/

namespace A174888.P4240095541044581843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276793 (A325653 (n + 1)).toNat * A286137 (A165916 (n + 3)).toNat

end

end A174888.P4240095541044581843

/-! ## A174888.P17110086794594728592

`char[3*n]-A030190(A001629(n))`
-/

namespace A174888.P17110086794594728592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A030190 (A001629 n).toNat

end

end A174888.P17110086794594728592

/-! ## A174888.P3858443640562844996

`A010060(A306018(n+3))*A294951(n)`
-/

namespace A174888.P3858443640562844996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A306018 (n + 3)).toNat * A294951 n

end

end A174888.P3858443640562844996

/-! ## A174888.P10778110545029192486

`A008683(A284090(n)+A000447(n))`
-/

namespace A174888.P10778110545029192486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A284090 n + A000447 n).toNat

end

end A174888.P10778110545029192486

/-! ## A174888.P16899316017575123010

`A003849(A000219(n))-A102460(n)`
-/

namespace A174888.P16899316017575123010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A000219 n).toNat - A102460 n

end

end A174888.P16899316017575123010

/-!
# A174889: First column of A174888.

The programs for A174889, there is no canonical definition to state claims against.
-/

/-! ## A174889.P1505979176080001225

`1-char[xor(∏{p}[n, -#], -1)]`
-/

namespace A174889.P1505979176080001225
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ))) (-1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A174889.P1505979176080001225

/-! ## A174889.P10926176875068447676

`char[lt[-n, ∏{p}[n+1, -#]]]`
-/

namespace A174889.P10926176875068447676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n : ℤ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), (-(p : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A174889.P10926176875068447676

/-! ## A174889.P7554386589151998821

`(char[xor(∏{p}[n, -#], -1)]+1)%2`
-/

namespace A174889.P7554386589151998821
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ))) (-1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1) % 2

end

end A174889.P7554386589151998821

/-! ## A174889.P2145968541286870411

`xor(1, char[xor(∏{p}[n+1, -#], -1)])`
-/

namespace A174889.P2145968541286870411
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ))) (-1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A174889.P2145968541286870411

/-! ## A174889.P18013304934993650506

`char[lt[-1, ∏{e}[n+1, -1/#]]]`
-/

namespace A174889.P18013304934993650506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), (-(1 / (Nat.factorization (f4 n) p : ℚ)))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℚ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A174889.P18013304934993650506

/-! ## A174889.P3996918103300455021

`7%(∏{e}[n+1, floor(log(atan(#)))]+2)`
-/

namespace A174889.P3996918103300455021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (∏ p ∈ Nat.primeFactors (f1 n), ⌊Real.log (Real.arctan (Nat.factorization (f1 n) p : ℝ))⌋ + 2)

end

end A174889.P3996918103300455021

/-! ## A174889.P7222725528141620798

`floor(sqrt(exp(∏{e}[n+1, -#!]%2)))`
-/

namespace A174889.P7222725528141620798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.exp (Int.tmod (∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorial (Nat.factorization (f1 n) p) : ℤ))) 2 : ℝ))⌋

end

end A174889.P7222725528141620798

/-! ## A174889.P11066430571060417692

`C(5, and(8, ∏{e}[n+1, -C(2, #²)]))`
-/

namespace A174889.P11066430571060417692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 5 (Int.land 8 (∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.choose 2 (Nat.factorization (f1 n) p ^ 2) : ℤ)))).toNat

end

end A174889.P11066430571060417692

/-! ## A174889.P10046251243727305899

`round(log(∏{e}[n+1, -floor(1/#)]+2))`
-/

namespace A174889.P10046251243727305899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log ((∏ p ∈ Nat.primeFactors (f1 n), (-⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋) + 2 : ℤ) : ℝ))

end

end A174889.P10046251243727305899

/-! ## A174889.P6114859675360536867

`2-(1-∏{e}[n+1, floor(log(atan(#)))])!`
-/

namespace A174889.P6114859675360536867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.factorial (1 - ∏ p ∈ Nat.primeFactors (f1 n), ⌊Real.log (Real.arctan (Nat.factorization (f1 n) p : ℝ))⌋).toNat : ℤ)

end

end A174889.P6114859675360536867

/-!
# A174890: a(n) = det(M) where M is an n X n matrix with M[i,j] = i^j - j^i.

The programs for A174890, there is no canonical definition to state claims against.
-/

/-! ## A174890.P1378200209548832883

`A342372(A137234(n))*A373949(n)`
-/

namespace A174890.P1378200209548832883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342372 (A137234 n).toNat * A373949 n

end

end A174890.P1378200209548832883

/-!
# A174891: All positive numbers except those that are the product of an odd number of distinct primes.

The programs for A174891, the canonical program `A174891.P1764680800722521875` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174891 has offset 1).

The definition of A174891 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174891.P1952611855455695056

`comp[-A055615(n+1)]`
-/

namespace A174891.P1952611855455695056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A055615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A174891.P1952611855455695056

namespace A174891

/-- `comp[-A055615(n+1)]` -/
def P1952611855455695056.Spec : Prop :=
  ∀ n, (P1952611855455695056.a n : ℤ) = A174891 (n + 1)

end A174891

/-! ## A174891.P1764680800722521875

`lt[0, A061669(n+1)]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A174891

/-- `lt[0, A061669(n+1)]+1` -/
def P1764680800722521875.Spec : Prop :=
  ∀ n, (P1764680800722521875.a n : ℤ) = A174891 (n + 1)

theorem P1764680800722521875.correct : P1764680800722521875.Spec := by
  intro n
  simp only [A174891, Nat.add_sub_cancel]

end A174891

/-! ## A174891.P9601163191572175320

`eq[1, A080305(n+1)]+1`
-/

namespace A174891.P9601163191572175320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080305 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A174891.P9601163191572175320

namespace A174891

/-- `eq[1, A080305(n+1)]+1` -/
def P9601163191572175320.Spec : Prop :=
  ∀ n, (P9601163191572175320.a n : ℤ) = A174891 (n + 1)

end A174891

/-! ## A174891.P7759528499214775033

`∪[A000379(n+1), A013929(n+1)]`
-/

namespace A174891.P7759528499214775033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174891.P7759528499214775033

namespace A174891

/-- `∪[A000379(n+1), A013929(n+1)]` -/
def P7759528499214775033.Spec : Prop :=
  ∀ n, (P7759528499214775033.a n : ℤ) = A174891 (n + 1)

end A174891

/-! ## A174891.P11363410682595836260

`∪[A013929(n+1), A028260(n+1)]`
-/

namespace A174891.P11363410682595836260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174891.P11363410682595836260

namespace A174891

/-- `∪[A013929(n+1), A028260(n+1)]` -/
def P11363410682595836260.Spec : Prop :=
  ∀ n, (P11363410682595836260.a n : ℤ) = A174891 (n + 1)

end A174891

/-! ## A174891.P16033682014827005026

`∪[A013929(n+1), A030229(n+1)]`
-/

namespace A174891.P16033682014827005026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174891.P16033682014827005026

namespace A174891

/-- `∪[A013929(n+1), A030229(n+1)]` -/
def P16033682014827005026.Spec : Prop :=
  ∀ n, (P16033682014827005026.a n : ℤ) = A174891 (n + 1)

end A174891

/-! ## A174891.P18400712613590267368

`∪[A013929(n+1), A030231(n+1)]`
-/

namespace A174891.P18400712613590267368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174891.P18400712613590267368

namespace A174891

/-- `∪[A013929(n+1), A030231(n+1)]` -/
def P18400712613590267368.Spec : Prop :=
  ∀ n, (P18400712613590267368.a n : ℤ) = A174891 (n + 1)

end A174891

/-! ## A174891.P16214937086500248188

`∪[A013929(n+1), A036347(n+1)]`
-/

namespace A174891.P16214937086500248188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174891.P16214937086500248188

namespace A174891

/-- `∪[A013929(n+1), A036347(n+1)]` -/
def P16214937086500248188.Spec : Prop :=
  ∀ n, (P16214937086500248188.a n : ℤ) = A174891 (n + 1)

end A174891

/-! ## A174891.P13966252590577769824

`∪[A013929(n+1), A036436(n+1)]`
-/

namespace A174891.P13966252590577769824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174891.P13966252590577769824

namespace A174891

/-- `∪[A013929(n+1), A036436(n+1)]` -/
def P13966252590577769824.Spec : Prop :=
  ∀ n, (P13966252590577769824.a n : ℤ) = A174891 (n + 1)

end A174891

/-! ## A174891.P3021713799340363904

`∪[A000379(n+1), A066427(n+1)]`
-/

namespace A174891.P3021713799340363904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174891.P3021713799340363904

namespace A174891

/-- `∪[A000379(n+1), A066427(n+1)]` -/
def P3021713799340363904.Spec : Prop :=
  ∀ n, (P3021713799340363904.a n : ℤ) = A174891 (n + 1)

end A174891

/-! ## A174891.P9190590797256728065

`∪[A013929(n+1), A063774(n+1)]`
-/

namespace A174891.P9190590797256728065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174891.P9190590797256728065

namespace A174891

/-- `∪[A013929(n+1), A063774(n+1)]` -/
def P9190590797256728065.Spec : Prop :=
  ∀ n, (P9190590797256728065.a n : ℤ) = A174891 (n + 1)

end A174891

/-! ## A174891.P8475986415508163807

`∪[A028260(n+1), A051144(n+1)]`
-/

namespace A174891.P8475986415508163807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174891.P8475986415508163807

namespace A174891

/-- `∪[A028260(n+1), A051144(n+1)]` -/
def P8475986415508163807.Spec : Prop :=
  ∀ n, (P8475986415508163807.a n : ℤ) = A174891 (n + 1)

end A174891

/-! ## A174891.P15687030455996911363

`∪[A028260(n+1), A080756(n+1)]`
-/

namespace A174891.P15687030455996911363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174891.P15687030455996911363

namespace A174891

/-- `∪[A028260(n+1), A080756(n+1)]` -/
def P15687030455996911363.Spec : Prop :=
  ∀ n, (P15687030455996911363.a n : ℤ) = A174891 (n + 1)

end A174891

/-! ## A174891.P15839389272240525565

`∪[A000379(n+1), A162966(n+1)]`
-/

namespace A174891.P15839389272240525565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174891.P15839389272240525565

namespace A174891

/-- `∪[A000379(n+1), A162966(n+1)]` -/
def P15839389272240525565.Spec : Prop :=
  ∀ n, (P15839389272240525565.a n : ℤ) = A174891 (n + 1)

end A174891

/-! ## A174891.P2944434268104357579

`lt[0, A007423(n+1)]+1`
-/

namespace A174891.P2944434268104357579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A174891.P2944434268104357579

namespace A174891

/-- `lt[0, A007423(n+1)]+1` -/
def P2944434268104357579.Spec : Prop :=
  ∀ n, (P2944434268104357579.a n : ℤ) = A174891 (n + 1)

end A174891

/-! ## A174891.P14987039886533120581

`lt[1, ∏{p}[n, -#]+n]`
-/

namespace A174891.P14987039886533120581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (-(p : ℤ)) + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A174891.P14987039886533120581

namespace A174891

/-- `lt[1, ∏{p}[n, -#]+n]` -/
def P14987039886533120581.Spec : Prop :=
  ∀ n, (P14987039886533120581.a n : ℤ) = A174891 (n + 1)

end A174891

/-! ## A174891.P10349513112443089348

`lt[1-∏{p}[n, -#], n]`
-/

namespace A174891.P10349513112443089348
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A174891.P10349513112443089348

namespace A174891

/-- `lt[1-∏{p}[n, -#], n]` -/
def P10349513112443089348.Spec : Prop :=
  ∀ n, (P10349513112443089348.a n : ℤ) = A174891 (n + 1)

end A174891

/-!
# A174892: a(n) = A074206(n) - A174889(n).

The programs for A174892, there is no canonical definition to state claims against.
-/

/-! ## A174892.P14079668361073923244

`A074206(n+1)-A174889(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A174892.P14079668361073923244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (n + 1) - A174889 (n + 1)

end

end A174892.P14079668361073923244

/-! ## A174892.P5415991186206809161

`A002033(n)-13%(round(∏{p}[n+1, -#]/Δ[n²])+2)`
-/

namespace A174892.P5415991186206809161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n - Int.tmod 13 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ)) : ℤ) : ℚ) / ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)) + 2)

end

end A174892.P5415991186206809161

/-! ## A174892.P9192318556393354516

`A236916(A067824(n+1))-1`
-/

namespace A174892.P9192318556393354516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236916 (A067824 (n + 1)).toNat - 1

end

end A174892.P9192318556393354516

/-! ## A174892.P5158533346069673664

`A002033(n)-A174889(n+1)`
-/

namespace A174892.P5158533346069673664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n - A174889 (n + 1)

end

end A174892.P5158533346069673664

/-! ## A174892.P1837606386997303959

`Δ[A173382(n)]-A174889(n+1)`
-/

namespace A174892.P1837606386997303959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173382 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A174889 (n + 1)

end

end A174892.P1837606386997303959

/-! ## A174892.P3296815590930651541

`A002033(n)-a(A008683(n+1)+1)` with `a(0)=0`
-/

namespace A174892.P3296815590930651541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002033 n - a (A008683 (n + 1) + 1).toNat

end

end A174892.P3296815590930651541

/-! ## A174892.P1694090436629665674

`Δ[A173382(n)]-a(A008683(n+1)+1)` with `a(0)=0`
-/

namespace A174892.P1694090436629665674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173382 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  f1 (n + 1) - f1 n - a (A008683 (n + 1) + 1).toNat

end

end A174892.P1694090436629665674

/-! ## A174892.P724914359283969789

`A074206(n+1)-C(A008683(n+1)+6, 6)%6`
-/

namespace A174892.P724914359283969789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (n + 1) - ((Nat.choose (A008683 (n + 1) + 6).toNat 6 % 6 : ℕ) : ℤ)

end

end A174892.P724914359283969789

/-! ## A174892.P7152559976630704995

`A074206(n+1)-A001221(∏{e}[n+1, -floor(1/#)]+2)`
-/

namespace A174892.P7152559976630704995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (n + 1) - A001221 (∏ p ∈ Nat.primeFactors (f1 n), (-⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋) + 2).toNat

end

end A174892.P7152559976630704995

/-! ## A174892.P1494649402716305027

`A074206(n+1)-A000045(round(∏{e}[n+1, -#^-2])+1)`
-/

namespace A174892.P1494649402716305027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (n + 1) - A000045 (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (-((Nat.factorization (f1 n) p : ℚ) ^ (-2 : ℤ)))) + 1).toNat

end

end A174892.P1494649402716305027

/-!
# A174894: Numbers such that the arithmetic mean of their distinct prime factors and the arithmetic mean of all of their prime factors are both integers.

The programs for A174894, there is no canonical definition to state claims against.
-/

/-! ## A174894.P1179112165481079566

`∩[A078174(n+1), A078175(n+1)]`
-/

namespace A174894.P1179112165481079566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174894.P1179112165481079566

/-! ## A174894.P4099382690812795242

`∩[A078174(n+1), A360247(n+1)]`
-/

namespace A174894.P4099382690812795242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174894.P4099382690812795242

/-! ## A174894.P1870038121096576624

`∩[A360247(n+1), A078175(n+1)]`
-/

namespace A174894.P1870038121096576624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174894.P1870038121096576624

/-! ## A174894.P8355697140445993777

`∩[A078174(n+1), A360553(n+1)]`
-/

namespace A174894.P8355697140445993777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174894.P8355697140445993777

/-! ## A174894.P2928514612894953054

`∩[A078174(n+1), A357862(n+1)]`
-/

namespace A174894.P2928514612894953054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174894.P2928514612894953054

/-!
# A174895: a(n) = possible values of A007955(m) in increasing order, where A007955(m) = product of divisors of m.

The programs for A174895, there is no canonical definition to state claims against.
-/

/-! ## A174895.P9967941759095986263

`filter[n+1, A174897(#)]`
-/

namespace A174895.P9967941759095986263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j) = 1) n)

end

end A174895.P9967941759095986263

/-! ## A174895.P8656650338819634852

`lt[0, A174897(n+1)]+1`
-/

namespace A174895.P8656650338819634852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174897 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A174895.P8656650338819634852

/-! ## A174895.P17896203136773190498

`lt[A174898(n+1), 1]+1`
-/

namespace A174895.P17896203136773190498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174898 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A174895.P17896203136773190498

/-! ## A174895.P8048950247679709867

`record[n+1-A048671(n+1)*A174898(n+1)]`
-/

namespace A174895.P8048950247679709867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A048671 (n + 1) * A174898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174895.P8048950247679709867

/-! ## A174895.P8314102063945462014

`lt[A000007(n), A174897(A028310(n))]`
-/

namespace A174895.P8314102063945462014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174897 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174895.P8314102063945462014

/-! ## A174895.P14694771554018439739

`record[n+1-A130398(n*A174898(n+1))]`
-/

namespace A174895.P14694771554018439739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A130398 ((n : ℤ) * A174898 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174895.P14694771554018439739

/-!
# A174896: a(n) = numbers k in increasing order such that A007955(m) = k has no solution for any m, where A007955(m) = product of divisors of m.

The programs for A174896, there is no canonical definition to state claims against.
-/

/-! ## A174896.P13526166060612221277

`lt[n*char[∏{d}[n, #]], n]`
-/

namespace A174896.P13526166060612221277
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), d

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = n then 1 else 0)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f4 j) n

end

end A174896.P13526166060612221277

/-! ## A174896.P13197123321868039124

`filter[n+1, A174898(#)]`
-/

namespace A174896.P13197123321868039124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j) = 1) n)

end

end A174896.P13197123321868039124

/-! ## A174896.P11859459997911458340

`lt[char[∏{d}[n, #]], A057427(n)]`
-/

namespace A174896.P11859459997911458340
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), d

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f4 j) n

end

end A174896.P11859459997911458340

/-! ## A174896.P17016121887117598652

`eq[0, A174897(n+1)]+1`
-/

namespace A174896.P17016121887117598652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174897 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A174896.P17016121887117598652

/-! ## A174896.P11296348136402182283

`lt[0, A174898(n+1)]+1`
-/

namespace A174896.P11296348136402182283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174898 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A174896.P11296348136402182283

/-! ## A174896.P10127413398391036004

`lt[A174900(n+1), 1]+1`
-/

namespace A174896.P10127413398391036004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174900 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A174896.P10127413398391036004

/-! ## A174896.P13224891631882402938

`eq[1, A174898(n+2)]+2`
-/

namespace A174896.P13224891631882402938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174898 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A174896.P13224891631882402938

/-! ## A174896.P4874034627133484372

`lt[A174897(round(acot(n)+n)), 1]`
-/

namespace A174896.P4874034627133484372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174897 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A174896.P4874034627133484372

/-!
# A174897: a(n) = characteristic function of numbers k such that A007955(m) = k has solution for some m, where A007955(m) = product of divisors of m.

The programs for A174897, there is no canonical definition to state claims against.
-/

/-! ## A174897.P4014871722909241273

`1-A174898(n+1)`
-/

namespace A174897.P4014871722909241273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A174898 (n + 1)

end

end A174897.P4014871722909241273

/-! ## A174897.P16496533509848958177

`1-A000007(A174900(n+1))`
-/

namespace A174897.P16496533509848958177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000007 (A174900 (n + 1)).toNat

end

end A174897.P16496533509848958177

/-! ## A174897.P16085640150228720197

`A000007(n*A174898(n+1))`
-/

namespace A174897.P16085640150228720197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A174898 (n + 1)).toNat

end

end A174897.P16085640150228720197

/-! ## A174897.P6960835689632744572

`A057428(n)*A174898(n+1)+1`
-/

namespace A174897.P6960835689632744572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A174898 (n + 1) + 1

end

end A174897.P6960835689632744572

/-! ## A174897.P612013019361752792

`and(1, A214405(n+1)+A174898(n+1))`
-/

namespace A174897.P612013019361752792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A214405 (n + 1) + A174898 (n + 1))

end

end A174897.P612013019361752792

/-! ## A174897.P18161534955206550693

`3%(and(A048702(n), A174898(n+1))+2)`
-/

namespace A174897.P18161534955206550693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (Int.land (A048702 n) (A174898 (n + 1)) + 2)

end

end A174897.P18161534955206550693

/-! ## A174897.P12056573233993626874

`floor(1/A047994(n*A174898(n+1)+1))`
-/

namespace A174897.P12056573233993626874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A047994 ((n : ℤ) * A174898 (n + 1) + 1).toNat : ℚ)⌋

end

end A174897.P12056573233993626874

/-! ## A174897.P16521629109544434904

`A011557(and(Δ[n²], A174898(n+1)))²%10`
-/

namespace A174897.P16521629109544434904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011557 (Int.land ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (A174898 (n + 1))).toNat ^ 2) 10

end

end A174897.P16521629109544434904

/-! ## A174897.P5893023250470827375

`A151670(A046109(n)*A174898(n+1))`
-/

namespace A174897.P5893023250470827375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151670 (A046109 n * A174898 (n + 1)).toNat

end

end A174897.P5893023250470827375

/-! ## A174897.P13417149160688227098

`A174859(A349907(2*(n+1))+A174898(n+1))`
-/

namespace A174897.P13417149160688227098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174859 (A349907 (2 * (n + 1)) + A174898 (n + 1)).toNat

end

end A174897.P13417149160688227098

/-! ## A174897.P918394066508752403

`A174900(n+1)/(A174900(n+1)+A174898(n+1))`
-/

namespace A174897.P918394066508752403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174900 (n + 1) : ℚ) / (A174900 (n + 1) + A174898 (n + 1) : ℚ)

end

end A174897.P918394066508752403

/-! ## A174897.P4123230031129272838

`floor(A047994(n+1)/(A174898(n+1)+A047994(n+1)))`
-/

namespace A174897.P4123230031129272838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A047994 (n + 1) : ℚ) / (A174898 (n + 1) + A047994 (n + 1) : ℚ)⌋

end

end A174897.P4123230031129272838

/-! ## A174897.P6065549828117216151

`A010051(A174898(n+1)+eq[1, A010051(n+1)]+1)`
-/

namespace A174897.P6065549828117216151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A174898 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + 1).toNat

end

end A174897.P6065549828117216151

/-! ## A174897.P6491096708908112508

`A174859(and(A174863(2*n+5), A174898(n+1)))`
-/

namespace A174897.P6491096708908112508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174859 (Int.land (A174863 (2 * n + 5)) (A174898 (n + 1))).toNat

end

end A174897.P6491096708908112508

/-! ## A174897.P8576272607610057746

`A174860(and(A174863(2*n+5), A174898(n+1)))`
-/

namespace A174897.P8576272607610057746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174860 (Int.land (A174863 (2 * n + 5)) (A174898 (n + 1))).toNat

end

end A174897.P8576272607610057746

/-! ## A174897.P3964945212271147146

`A037011(A281118(n+1))`
-/

namespace A174897.P3964945212271147146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037011 (A281118 (n + 1)).toNat

end

end A174897.P3964945212271147146

/-! ## A174897.P7390777233399670725

`A035197(A000005((n+1)²)+2)%2`
-/

namespace A174897.P7390777233399670725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035197 (A000005 ((n + 1) ^ 2) + 2).toNat) 2

end

end A174897.P7390777233399670725

/-! ## A174897.P5529268889178626822

`A123864(A000005((n+1)²)+2)%2`
-/

namespace A174897.P5529268889178626822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123864 (A000005 ((n + 1) ^ 2) + 2).toNat) 2

end

end A174897.P5529268889178626822

/-! ## A174897.P10363421254017410343

`∏{e}[∑{e}[n+1, #^#], A318950(#)]`
-/

namespace A174897.P10363421254017410343
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p ^ Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A318950 (Nat.factorization (f1 n) p)

end

end A174897.P10363421254017410343

/-! ## A174897.P12015343290132146814

`A292498(A292504(n+1))%2`
-/

namespace A174897.P12015343290132146814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292498 (A292504 (n + 1)).toNat) 2

end

end A174897.P12015343290132146814

/-!
# A174898: a(n) = characteristic function of numbers k such that A007955(m) = k has no solution for any m, where A007955(m) = product of divisors of m.

The programs for A174898, there is no canonical definition to state claims against.
-/

/-! ## A174898.P16027618247285445197

`1-A174897(n+1)`
-/

namespace A174898.P16027618247285445197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A174897 (n + 1)

end

end A174898.P16027618247285445197

/-! ## A174898.P4965326630594517704

`A000007(A174900(n+1))`
-/

namespace A174898.P4965326630594517704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A174900 (n + 1)).toNat

end

end A174898.P4965326630594517704

/-! ## A174898.P1874085246960758626

`char[eq[A000038(n), A174897(n+1)]]`
-/

namespace A174898.P1874085246960758626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174897 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A174898.P1874085246960758626

/-! ## A174898.P1742541505437102380

`A000007((n+1)*A174897(n+1))`
-/

namespace A174898.P1742541505437102380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n + 1 : ℤ) * A174897 (n + 1)).toNat

end

end A174898.P1742541505437102380

/-! ## A174898.P2815984287551095018

`A110518(ceil(A174897(n+1)/(n+1)))`
-/

namespace A174898.P2815984287551095018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110518 ⌈(A174897 (n + 1) : ℚ) / (n + 1 : ℚ)⌉.toNat

end

end A174898.P2815984287551095018

/-! ## A174898.P7395856404872100834

`A323557(ceil(A174897(n+1)/(n+1)))`
-/

namespace A174898.P7395856404872100834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323557 ⌈(A174897 (n + 1) : ℚ) / (n + 1 : ℚ)⌉.toNat

end

end A174898.P7395856404872100834

/-! ## A174898.P7378058195401837301

`A000045((n+1)%(A174897(n+1)+n))`
-/

namespace A174898.P7378058195401837301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (n + 1 : ℤ) (A174897 (n + 1) + (n : ℤ))).toNat

end

end A174898.P7378058195401837301

/-! ## A174898.P6796044918628263786

`A000007(A174897(n+1)*A354142(n))`
-/

namespace A174898.P6796044918628263786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A174897 (n + 1) * A354142 n).toNat

end

end A174898.P6796044918628263786

/-! ## A174898.P3475841337118222612

`A284825(A007862(n+1)*A174897(n+1))`
-/

namespace A174898.P3475841337118222612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284825 ((A007862 (n + 1) * A174897 (n + 1)).toNat + 31)

end

end A174898.P3475841337118222612

/-! ## A174898.P17866236276750322599

`A174897(A174897(n+1)+A020639(2*(n+1))+1)`
-/

namespace A174898.P17866236276750322599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174897 (A174897 (n + 1) + A020639 (2 * (n + 1)) + 1).toNat

end

end A174898.P17866236276750322599

/-! ## A174898.P15177602344462024274

`A174897(5*A133707(n+1)*A174897(n+1)+1)`
-/

namespace A174898.P15177602344462024274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174897 (5 * (A133707 (n + 1) * A174897 (n + 1)) + 1).toNat

end

end A174898.P15177602344462024274

/-! ## A174898.P6168248762717307849

`C(A154467(n), A174897(n+1)+A154467(n))`
-/

namespace A174898.P6168248762717307849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A154467 (n + 1)).toNat (A174897 (n + 1) + A154467 (n + 1)).toNat

end

end A174898.P6168248762717307849

/-! ## A174898.P7699107318698355627

`xor(A057427(A060308(n+4)), A174897(n+1))`
-/

namespace A174898.P7699107318698355627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 (A060308 (n + 4)).toNat) (A174897 (n + 1))

end

end A174898.P7699107318698355627

/-! ## A174898.P4762142903133713516

`A326426(A008480(n+1)*A174897(n+1))`
-/

namespace A174898.P4762142903133713516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326426 (A008480 (n + 1) * A174897 (n + 1)).toNat

end

end A174898.P4762142903133713516

/-! ## A174898.P10470822893456383541

`A174897((A174897(n+1)+1)*A154866(n+1))`
-/

namespace A174898.P10470822893456383541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174897 ((A174897 (n + 1) + 1) * A154866 (n + 1)).toNat

end

end A174898.P10470822893456383541

/-! ## A174898.P8784723726423240455

`A174897(A174897(n+1)+A001359(n+1))`
-/

namespace A174898.P8784723726423240455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174897 (A174897 (n + 1) + A001359 (n + 1)).toNat

end

end A174898.P8784723726423240455

/-! ## A174898.P1819391313675045039

`1-A037011(A281118(n+1))`
-/

namespace A174898.P1819391313675045039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A037011 (A281118 (n + 1)).toNat

end

end A174898.P1819391313675045039

/-!
# A174899: Record values of A007955(m), where A007955(m) = product of divisors of m.

The programs for A174899, there is no canonical definition to state claims against.
-/

/-! ## A174899.P14572346838519181427

`record[∏{d}[n, #]]`
-/

namespace A174899.P14572346838519181427
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174899.P14572346838519181427

/-! ## A174899.P2483470084918416364

`record[exp(∑{d}[n, log(#)])]`
-/

namespace A174899.P2483470084918416364
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ d ∈ Nat.divisors (f2 n), Real.log (d : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174899.P2483470084918416364

/-! ## A174899.P9272389942731549874

`record[A007955(n+1)]`
-/

namespace A174899.P9272389942731549874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174899.P9272389942731549874

/-! ## A174899.P16874453879307644929

`record[sqrt(n+1)^A000005(n+1)]`
-/

namespace A174899.P16874453879307644929
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ) ^ (A000005 (n + 1) : ℤ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174899.P16874453879307644929

