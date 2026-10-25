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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
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
# A171400: Minimal number of editing steps (delete, insert or substitute) to transform the binary representation of n into that of A007918(n), the least prime not less than n.

The programs for A171400, there is no canonical definition to state claims against.
-/

/-! ## A171400.P7124860188766226717

`A004396(A295335(n)%A097318(A168523(n)))`
-/

namespace A171400.P7124860188766226717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (Int.tmod (A295335 n) (A097318 (A168523 n).toNat)).toNat

end

end A171400.P7124860188766226717

/-! ## A171400.P12812023984307234192

`A007895(A007920(n)^A007359(n))`
-/

namespace A171400.P12812023984307234192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (SequenceMachineLib.roundAway ((A007920 n : ℚ) ^ (A007359 n : ℤ))).toNat

end

end A171400.P12812023984307234192

/-! ## A171400.P2272493545681613346

`A007895(A007920(n)^A185215(n))`
-/

namespace A171400.P2272493545681613346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (SequenceMachineLib.roundAway ((A007920 n : ℚ) ^ (A185215 n : ℤ))).toNat

end

end A171400.P2272493545681613346

/-! ## A171400.P805005365845954137

`A231719(A007920(n)^A004525(n))`
-/

namespace A171400.P805005365845954137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231719 (SequenceMachineLib.roundAway ((A007920 n : ℚ) ^ (A004525 n : ℤ))).toNat

end

end A171400.P805005365845954137

/-! ## A171400.P15869673039210430184

`A103501(A196017(2*n+3))%A085427(n)`
-/

namespace A171400.P15869673039210430184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103501 (A196017 (2 * n + 3)).toNat) (A085427 n)

end

end A171400.P15869673039210430184

/-!
# A171401: Numbers m such that exactly one editing step (insert or substitute) is necessary to transform the binary representation of m into the least prime not less than m.

The programs for A171401, there is no canonical definition to state claims against.
-/

/-! ## A171401.P9602964745263626069

`eq[1, A171400(n)]`
-/

namespace A171401.P9602964745263626069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171401.P9602964745263626069

/-! ## A171401.P16698462670921088932

`lt[A391212(A033676(n+1)), A181907(n+1)]`
-/

namespace A171401.P16698462670921088932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391212 (A033676 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181907 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A171401.P16698462670921088932

/-! ## A171401.P11337262908043866268

`eq[A008479(3*(n+1)), A181144(A139600(n+1))]`
-/

namespace A171401.P11337262908043866268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181144 (A139600 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171401.P11337262908043866268

/-! ## A171401.P8824527450460184974

`eq[A072627(n+1), A109898(n+1)]`
-/

namespace A171401.P8824527450460184974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109898 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171401.P8824527450460184974

/-! ## A171401.P9136911085901286939

`eq[A006768(A271714(2*(n+1))), A072627(n+1)]`
-/

namespace A171401.P9136911085901286939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006768 (A271714 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171401.P9136911085901286939

/-!
# A171403: Solutions to the equation M(n) = 2 (M = Mertens's function A002321).

The programs for A171403, the canonical program `A171403.P10794916819766522155` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171403 has offset 1).

The definition of A171403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171403.P16450491447221208473

`eq[2, A002321(round(acot(n)+n))]`
-/

namespace A171403.P16450491447221208473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171403.P16450491447221208473

namespace A171403

/-- `eq[2, A002321(round(acot(n)+n))]` -/
def P16450491447221208473.Spec : Prop :=
  ∀ n, (P16450491447221208473.a n : ℤ) = A171403 (n + 1)

end A171403

/-! ## A171403.P10794916819766522155

`eq[2, A002321(A028310(n))]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A171403

/-- `eq[2, A002321(A028310(n))]` -/
def P10794916819766522155.Spec : Prop :=
  ∀ n, (P10794916819766522155.a n : ℤ) = A171403 (n + 1)

theorem P10794916819766522155.correct : P10794916819766522155.Spec := by
  intro n
  simp only [A171403, Nat.add_sub_cancel]

end A171403

/-! ## A171403.P6373811998957738165

`A011760(eq[2, A002321(n+1)])`
-/

namespace A171403.P6373811998957738165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171403.P6373811998957738165

namespace A171403

/-- `A011760(eq[2, A002321(n+1)])` -/
def P6373811998957738165.Spec : Prop :=
  ∀ n, P6373811998957738165.a n = A171403 (n + 1)

end A171403

/-! ## A171403.P10539779355993311217

`A020725(eq[2, A002321(n+1)])`
-/

namespace A171403.P10539779355993311217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171403.P10539779355993311217

namespace A171403

/-- `A020725(eq[2, A002321(n+1)])` -/
def P10539779355993311217.Spec : Prop :=
  ∀ n, P10539779355993311217.a n = A171403 (n + 1)

end A171403

/-! ## A171403.P15485156984965117857

`A065475(eq[2, A002321(n+1)])`
-/

namespace A171403.P15485156984965117857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171403.P15485156984965117857

namespace A171403

/-- `A065475(eq[2, A002321(n+1)])` -/
def P15485156984965117857.Spec : Prop :=
  ∀ n, P15485156984965117857.a n = A171403 (n + 1)

end A171403

/-! ## A171403.P11611082302653716336

`eq[A002321(n+1), A080847(n+1)]`
-/

namespace A171403.P11611082302653716336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080847 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171403.P11611082302653716336

namespace A171403

/-- `eq[A002321(n+1), A080847(n+1)]` -/
def P11611082302653716336.Spec : Prop :=
  ∀ n, (P11611082302653716336.a n : ℤ) = A171403 (n + 1)

end A171403

/-! ## A171403.P11808653212080253845

`eq[A080848(n+1), A143443(n+1)]`
-/

namespace A171403.P11808653212080253845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143443 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171403.P11808653212080253845

namespace A171403

/-- `eq[A080848(n+1), A143443(n+1)]` -/
def P11808653212080253845.Spec : Prop :=
  ∀ n, (P11808653212080253845.a n : ℤ) = A171403 (n + 1)

end A171403

/-! ## A171403.P864510276840658763

`eq[A143443(n+1)/(n+1), A080847(n+1)]`
-/

namespace A171403.P864510276840658763
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143443 (n + 1) : ℚ) / (n + 1 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080847 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A171403.P864510276840658763

namespace A171403

/-- `eq[A143443(n+1)/(n+1), A080847(n+1)]` -/
def P864510276840658763.Spec : Prop :=
  ∀ n, (P864510276840658763.a n : ℤ) = A171403 (n + 1)

end A171403

/-! ## A171403.P358752120420361878

`eq[A088004(n+1)-A000720(n+1), A080847(n+1)]`
-/

namespace A171403.P358752120420361878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088004 (n + 1) - A000720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080847 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171403.P358752120420361878

namespace A171403

/-- `eq[A088004(n+1)-A000720(n+1), A080847(n+1)]` -/
def P358752120420361878.Spec : Prop :=
  ∀ n, (P358752120420361878.a n : ℤ) = A171403 (n + 1)

end A171403

/-! ## A171403.P4975601547810773420

`eq[A070548(n+1)-A070549(n+1), A080847(n+1)]`
-/

namespace A171403.P4975601547810773420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070548 (n + 1) - A070549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080847 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171403.P4975601547810773420

namespace A171403

/-- `eq[A070548(n+1)-A070549(n+1), A080847(n+1)]` -/
def P4975601547810773420.Spec : Prop :=
  ∀ n, (P4975601547810773420.a n : ℤ) = A171403 (n + 1)

end A171403

/-!
# A171404: Solutions to the equation M(n) = 3 (M = Mertens's function A002321).

The programs for A171404, the canonical program `A171404.P10167847085940667389` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171404 has offset 1).

The definition of A171404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 877 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171404.P10167847085940667389

`eq[2, a(n-1)-A008683(n)]` with `a(0)=5`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A171404

/-- `eq[2, a(n-1)-A008683(n)]` -/
def P10167847085940667389.Spec : Prop :=
  ∀ n, (P10167847085940667389.a n : ℤ) = A171404 (n + 1)

theorem P10167847085940667389.correct : P10167847085940667389.Spec := by
  intro n
  simp only [A171404, Nat.add_sub_cancel]

end A171404

/-! ## A171404.P15199010625097053292

`eq[3, A002321(n+1)]+1`
-/

namespace A171404.P15199010625097053292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171404.P15199010625097053292

namespace A171404

/-- `eq[3, A002321(n+1)]+1` -/
def P15199010625097053292.Spec : Prop :=
  ∀ n, (P15199010625097053292.a n : ℤ) = A171404 (n + 1)

end A171404

/-! ## A171404.P10662278349648310365

`eq[3, A002321(A028310(n))]`
-/

namespace A171404.P10662278349648310365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171404.P10662278349648310365

namespace A171404

/-- `eq[3, A002321(A028310(n))]` -/
def P10662278349648310365.Spec : Prop :=
  ∀ n, (P10662278349648310365.a n : ℤ) = A171404 (n + 1)

end A171404

/-! ## A171404.P16231660937949949290

`A020725(eq[3, A002321(n+1)])`
-/

namespace A171404.P16231660937949949290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171404.P16231660937949949290

namespace A171404

/-- `A020725(eq[3, A002321(n+1)])` -/
def P16231660937949949290.Spec : Prop :=
  ∀ n, P16231660937949949290.a n = A171404 (n + 1)

end A171404

/-! ## A171404.P9961677029513658946

`A065475(eq[3, A002321(n+1)])`
-/

namespace A171404.P9961677029513658946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171404.P9961677029513658946

namespace A171404

/-- `A065475(eq[3, A002321(n+1)])` -/
def P9961677029513658946.Spec : Prop :=
  ∀ n, P9961677029513658946.a n = A171404 (n + 1)

end A171404

/-! ## A171404.P15256680891205048866

`eq[a(n-1)-A157657(n+1), A231821(n+1)]` with `a(0)=1`
-/

namespace A171404.P15256680891205048866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - A157657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171404.P15256680891205048866

namespace A171404

/-- `eq[a(n-1)-A157657(n+1), A231821(n+1)]` -/
def P15256680891205048866.Spec : Prop :=
  ∀ n, (P15256680891205048866.a n : ℤ) = A171404 (n + 1)

end A171404

/-!
# A171405: Sum of divisors of n, excluding divisors 2 and 3.

The programs for A171405, the canonical program `A171405.P6422937175772318841` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171405 has offset 1).

The definition of A171405 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171405.P6422937175772318841

`A000203(n+1)-A178142(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A171405

/-- `A000203(n+1)-A178142(n+1)` -/
def P6422937175772318841.Spec : Prop :=
  ∀ n, P6422937175772318841.a n = A171405 (n + 1)

theorem P6422937175772318841.correct : P6422937175772318841.Spec := by
  intro n
  simp only [A171405, Nat.add_sub_cancel]

end A171405

/-! ## A171405.P16497747668021892935

`∑{d}[n+1, #%(6-#²)]`
-/

namespace A171405.P16497747668021892935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (d : ℤ) (6 - (d ^ 2 : ℤ))

end

end A171405.P16497747668021892935

namespace A171405

/-- `∑{d}[n+1, #%(6-#²)]` -/
def P16497747668021892935.Spec : Prop :=
  ∀ n, P16497747668021892935.a n = A171405 (n + 1)

end A171405

/-! ## A171405.P11779686468443405125

`∑{d}[n+1, #]-floor(log2(gcd(6, n+1)²))`
-/

namespace A171405.P11779686468443405125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (Nat.log 2 (Nat.gcd 6 (n + 1) ^ 2) : ℤ)

end

end A171405.P11779686468443405125

namespace A171405

/-- `∑{d}[n+1, #]-floor(log2(gcd(6, n+1)²))` -/
def P11779686468443405125.Spec : Prop :=
  ∀ n, P11779686468443405125.a n = A171405 (n + 1)

end A171405

/-! ## A171405.P16643090943342279377

`∑{d}[n+1, #]+1-Δ[3*n-(n%2+n%3)]`
-/

namespace A171405.P16643090943342279377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - ((n % 2 + n % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d + 1 : ℕ) : ℤ) - (f2 (n + 1) - f2 n)

end

end A171405.P16643090943342279377

namespace A171405

/-- `∑{d}[n+1, #]+1-Δ[3*n-(n%2+n%3)]` -/
def P16643090943342279377.Spec : Prop :=
  ∀ n, P16643090943342279377.a n = A171405 (n + 1)

end A171405

/-! ## A171405.P5967468458057127961

`∑{d}[n+1, #*A179184(#-1)]`
-/

namespace A171405.P5967468458057127961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A179184 (d - 1)

end

end A171405.P5967468458057127961

namespace A171405

/-- `∑{d}[n+1, #*A179184(#-1)]` -/
def P5967468458057127961.Spec : Prop :=
  ∀ n, P5967468458057127961.a n = A171405 (n + 1)

end A171405

/-! ## A171405.P10081579004375090478

`Δ[A160664(n)]-A178142(n+1)`
-/

namespace A171405.P10081579004375090478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A178142 (n + 1)

end

end A171405.P10081579004375090478

namespace A171405

/-- `Δ[A160664(n)]-A178142(n+1)` -/
def P10081579004375090478.Spec : Prop :=
  ∀ n, P10081579004375090478.a n = A171405 (n + 1)

end A171405

/-! ## A171405.P3516245147482152962

`A000203(n+1)-(A021337(n)+A010673(n))`
-/

namespace A171405.P3516245147482152962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A021337 n + A010673 n)

end

end A171405.P3516245147482152962

namespace A171405

/-- `A000203(n+1)-(A021337(n)+A010673(n))` -/
def P3516245147482152962.Spec : Prop :=
  ∀ n, P3516245147482152962.a n = A171405 (n + 1)

theorem P3516245147482152962.correct : P3516245147482152962.Spec := by
  intro n
  simp only [A171405, Nat.add_sub_cancel, A171405.P3516245147482152962.a, A171405.P6422937175772318841.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A010673, A010673.P14010432101562150871.a, A021337, A021337.P9515870575987216114.a, A178142, A178142.P4447128767071927501.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A171405

/-! ## A171405.P3254890056233037198

`∑{d}[n+1, #*A267537(#)]`
-/

namespace A171405.P3254890056233037198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A267537 d

end

end A171405.P3254890056233037198

namespace A171405

/-- `∑{d}[n+1, #*A267537(#)]` -/
def P3254890056233037198.Spec : Prop :=
  ∀ n, P3254890056233037198.a n = A171405 (n + 1)

end A171405

/-! ## A171405.P11692870867795493689

`A088580(n+1)-Δ[A272299(n)]`
-/

namespace A171405.P11692870867795493689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (f1 (n + 1) - f1 n)

end

end A171405.P11692870867795493689

namespace A171405

/-- `A088580(n+1)-Δ[A272299(n)]` -/
def P11692870867795493689.Spec : Prop :=
  ∀ n, P11692870867795493689.a n = A171405 (n + 1)

end A171405

/-! ## A171405.P13277719577015259017

`1-∑{d}[n+1, -#%A000041(#)]`
-/

namespace A171405.P13277719577015259017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ d ∈ Nat.divisors (f1 n), Int.tmod (-(d : ℤ)) (A000041 d)

end

end A171405.P13277719577015259017

namespace A171405

/-- `1-∑{d}[n+1, -#%A000041(#)]` -/
def P13277719577015259017.Spec : Prop :=
  ∀ n, P13277719577015259017.a n = A171405 (n + 1)

end A171405

/-! ## A171405.P7131871916896704671

`A008620(∑{d}[n+1, #*3%#])`
-/

namespace A171405.P7131871916896704671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (∑ d ∈ Nat.divisors (f1 n), d * (3 % d))

end

end A171405.P7131871916896704671

namespace A171405

/-- `A008620(∑{d}[n+1, #*3%#])` -/
def P7131871916896704671.Spec : Prop :=
  ∀ n, P7131871916896704671.a n = A171405 (n + 1)

end A171405

/-!
# A171406: Solutions to the equation M(n) = 4 (M = Mertens's function A002321).

The programs for A171406, the canonical program `A171406.P8527978597109318047` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171406 has offset 1).

The definition of A171406 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171406.P16026022944609235964

`eq[4, A002321(round(acot(n)+n))]`
-/

namespace A171406.P16026022944609235964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171406.P16026022944609235964

namespace A171406

/-- `eq[4, A002321(round(acot(n)+n))]` -/
def P16026022944609235964.Spec : Prop :=
  ∀ n, (P16026022944609235964.a n : ℤ) = A171406 (n + 1)

end A171406

/-! ## A171406.P8527978597109318047

`eq[4, A002321(A028310(n))]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A171406

/-- `eq[4, A002321(A028310(n))]` -/
def P8527978597109318047.Spec : Prop :=
  ∀ n, (P8527978597109318047.a n : ℤ) = A171406 (n + 1)

theorem P8527978597109318047.correct : P8527978597109318047.Spec := by
  intro n
  simp only [A171406, Nat.add_sub_cancel]

end A171406

/-! ## A171406.P10110263464031457845

`A011760(eq[4, A002321(n+1)])`
-/

namespace A171406.P10110263464031457845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171406.P10110263464031457845

namespace A171406

/-- `A011760(eq[4, A002321(n+1)])` -/
def P10110263464031457845.Spec : Prop :=
  ∀ n, P10110263464031457845.a n = A171406 (n + 1)

end A171406

/-! ## A171406.P7683952973135480696

`A020725(eq[4, A002321(n+1)])`
-/

namespace A171406.P7683952973135480696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171406.P7683952973135480696

namespace A171406

/-- `A020725(eq[4, A002321(n+1)])` -/
def P7683952973135480696.Spec : Prop :=
  ∀ n, P7683952973135480696.a n = A171406 (n + 1)

end A171406

/-! ## A171406.P16790291589321870786

`A065475(eq[4, A002321(n+1)])`
-/

namespace A171406.P16790291589321870786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171406.P16790291589321870786

namespace A171406

/-- `A065475(eq[4, A002321(n+1)])` -/
def P16790291589321870786.Spec : Prop :=
  ∀ n, P16790291589321870786.a n = A171406 (n + 1)

end A171406

/-!
# A171408: a(n) = A171373(n+1) - 2*A171373(n).

The programs for A171408, the canonical program `A171408.P3325446144424489340` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171408 has offset 0).

The definition of A171408 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171408.P3325446144424489340

`3*a(n-1)-4*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=4, a(1)=4, a(2)=4, a(3)=4`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171408

/-- `3*a(n-1)-4*a(n-2)+2*a(n-3)-a(n-4)` -/
def P3325446144424489340.Spec : Prop :=
  ∀ n, P3325446144424489340.a n = A171408 n

theorem P3325446144424489340.correct : P3325446144424489340.Spec := by
  intro n
  simp only [A171408]

end A171408

/-! ## A171408.P6502449760850225102

`A171373(n+1)-2*A171373(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A171408.P6502449760850225102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171373 (n + 1) - 2 * A171373 n

end

end A171408.P6502449760850225102

namespace A171408

/-- `A171373(n+1)-2*A171373(n)` -/
def P6502449760850225102.Spec : Prop :=
  ∀ n, P6502449760850225102.a n = A171408 n

end A171408

/-! ## A171408.P15284110519193251178

`4*A105371(abs(A023443(n)))`
-/

namespace A171408.P15284110519193251178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A105371 |A023443 n|.toNat

end

end A171408.P15284110519193251178

namespace A171408

/-- `4*A105371(abs(A023443(n)))` -/
def P15284110519193251178.Spec : Prop :=
  ∀ n, P15284110519193251178.a n = A171408 n

end A171408

/-! ## A171408.P17270937639722221674

`4*A105371(abs(A024000(n)))`
-/

namespace A171408.P17270937639722221674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A105371 |A024000 n|.toNat

end

end A171408.P17270937639722221674

namespace A171408

/-- `4*A105371(abs(A024000(n)))` -/
def P17270937639722221674.Spec : Prop :=
  ∀ n, P17270937639722221674.a n = A171408 n

end A171408

/-! ## A171408.P17642969237419633988

`Δ[Δ[-(4*A103311(n))]]`
-/

namespace A171408.P17642969237419633988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(4 * A103311 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171408.P17642969237419633988

namespace A171408

/-- `Δ[Δ[-(4*A103311(n))]]` -/
def P17642969237419633988.Spec : Prop :=
  ∀ n, P17642969237419633988.a n = A171408 n

end A171408

/-! ## A171408.P10924553067716360662

`4*A105371(log2(A011782(n)))`
-/

namespace A171408.P10924553067716360662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A105371 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A171408.P10924553067716360662

namespace A171408

/-- `4*A105371(log2(A011782(n)))` -/
def P10924553067716360662.Spec : Prop :=
  ∀ n, P10924553067716360662.a n = A171408 n

end A171408

/-!
# A171409: Primes p such that 9014*p+1 is also prime.

The programs for A171409, there is no canonical definition to state claims against.
-/

/-! ## A171409.P6715098215612445056

`A292205(or(A056000(n), A292205(n+1)))`
-/

namespace A171409.P6715098215612445056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292205 (Int.lor (A056000 n) (A292205 (n + 1))).toNat

end

end A171409.P6715098215612445056

/-!
# A171410: a(n) = 1 + 5*10^n + 100^n.

The programs for A171410, the canonical program `A171410.P14761683285985613207` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171410 has offset 0).

The definition of A171410 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+5*10^n+100^n` (program `A171410.P14761683285985613207`, by `A171410.P14761683285985613207.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171410.P14761683285985613207

`1+5*10^n+100^n`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171410

/-- `1+5*10^n+100^n` -/
def P14761683285985613207.Spec : Prop :=
  ∀ n, (P14761683285985613207.a n : ℤ) = A171410 n

theorem P14761683285985613207.correct : P14761683285985613207.Spec := by
  intro n
  simp only [A171410]

end A171410

/-! ## A171410.P11218988144322006720

`(A225813(n)+10^n+(10^n+1)²)/2`
-/

namespace A171410.P11218988144322006720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225813 n + (10 ^ n + (10 ^ n + 1) ^ 2 : ℤ) : ℚ) / 2

end

end A171410.P11218988144322006720

namespace A171410

/-- `(A225813(n)+10^n+(10^n+1)²)/2` -/
def P11218988144322006720.Spec : Prop :=
  ∀ n, P11218988144322006720.a n = (A171410 n : ℚ)

end A171410

/-! ## A171410.P9157805862447877354

`abs(A011557(n)-A171461(n))`
-/

namespace A171410.P9157805862447877354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011557 n - A171461 n|

end

end A171410.P9157805862447877354

namespace A171410

/-- `abs(A011557(n)-A171461(n))` -/
def P9157805862447877354.Spec : Prop :=
  ∀ n, P9157805862447877354.a n = A171410 n

end A171410

/-! ## A171410.P1821360004004970920

`(A171553(n)+A066138(n))/2`
-/

namespace A171410.P1821360004004970920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171553 n + A066138 n : ℚ) / 2

end

end A171410.P1821360004004970920

namespace A171410

/-- `(A171553(n)+A066138(n))/2` -/
def P1821360004004970920.Spec : Prop :=
  ∀ n, P1821360004004970920.a n = (A171410 n : ℚ)

end A171410

/-! ## A171410.P12341995243639175281

`(A225810(n)+A171461(n))/2`
-/

namespace A171410.P12341995243639175281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225810 n + A171461 n : ℚ) / 2

end

end A171410.P12341995243639175281

namespace A171410

/-- `(A225810(n)+A171461(n))/2` -/
def P12341995243639175281.Spec : Prop :=
  ∀ n, P12341995243639175281.a n = (A171410 n : ℚ)

end A171410

/-! ## A171410.P14577938303166471290

`(A199682(2*n)+A062397(n+1))/2`
-/

namespace A171410.P14577938303166471290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199682 (2 * n) + A062397 (n + 1) : ℚ) / 2

end

end A171410.P14577938303166471290

namespace A171410

/-- `(A199682(2*n)+A062397(n+1))/2` -/
def P14577938303166471290.Spec : Prop :=
  ∀ n, P14577938303166471290.a n = (A171410 n : ℚ)

end A171410

/-! ## A171410.P1551148064661306513

`floor(A011557(n)+(A171553(n)+A168624(n))/2)`
-/

namespace A171410.P1551148064661306513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011557 n : ℚ) + (A171553 n + A168624 n : ℚ) / 2⌋

end

end A171410.P1551148064661306513

namespace A171410

/-- `floor(A011557(n)+(A171553(n)+A168624(n))/2)` -/
def P1551148064661306513.Spec : Prop :=
  ∀ n, P1551148064661306513.a n = A171410 n

end A171410

/-!
# A171411: Numbers k such that 1 + 5*10^k + 100^k is prime.

The programs for A171411, there is no canonical definition to state claims against.
-/

/-! ## A171411.P3798699827951792268

`A326518(A309547(n))*A326774(n)`
-/

namespace A171411.P3798699827951792268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326518 (A309547 n).toNat * A326774 n

end

end A171411.P3798699827951792268

/-! ## A171411.P16775192971957294158

`A080804(A176828(n))-A157418(n+1)`
-/

namespace A171411.P16775192971957294158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080804 (A176828 n).toNat - A157418 (n + 1)

end

end A171411.P16775192971957294158

/-! ## A171411.P16559048936567116682

`A326518(A309547(n))*A334266(n+1)`
-/

namespace A171411.P16559048936567116682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326518 (A309547 n).toNat * A334266 (n + 1)

end

end A171411.P16559048936567116682

/-! ## A171411.P2367696020411020372

`A304382(A100134(n+3))*A326774(n)`
-/

namespace A171411.P2367696020411020372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304382 (A100134 (n + 3)).toNat * A326774 n

end

end A171411.P2367696020411020372

/-!
# A171413: Complement of self-generating sequence A005244.

The programs for A171413, there is no canonical definition to state claims against.
-/

/-! ## A171413.P13789379460944606658

`comp[A005244(n+1)-1]+1`
-/

namespace A171413.P13789379460944606658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005244 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A171413.P13789379460944606658

/-! ## A171413.P5619847032911039346

`A028310(comp[A139127(n+1)])`
-/

namespace A171413.P5619847032911039346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139127 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A171413.P5619847032911039346

/-! ## A171413.P5844415472451148319

`A134402(A139598(n))+comp[A139127(n+1)]`
-/

namespace A171413.P5844415472451148319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139127 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134402 (A139598 n).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A171413.P5844415472451148319

/-! ## A171413.P759999803331607897

`A325268(∑[n])+comp[A139127(n+1)]`
-/

namespace A171413.P759999803331607897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139127 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325268 (∑ j ∈ Finset.range (n + 1), f1 j) + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

end

end A171413.P759999803331607897

/-!
# A171415: a(n) = 99*a(n-1) - a(n-2); a(0) = 0, a(1) = 1.

The programs for A171415, the canonical program `A171415.P8198964487718761607` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171415 has offset 0).

The definition of A171415 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `99*a(n-1)-a(n-2)` (program `A171415.P8198964487718761607`, by `A171415.P8198964487718761607.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171415.P8198964487718761607

`99*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171415

/-- `99*a(n-1)-a(n-2)` -/
def P8198964487718761607.Spec : Prop :=
  ∀ n, P8198964487718761607.a n = A171415 n

theorem P8198964487718761607.correct : P8198964487718761607.Spec := by
  intro n
  simp only [A171415]

end A171415

/-!
# A171416: A sequence with Somos-4 Hankel transform.

The programs for A171416, there is no canonical definition to state claims against.
-/

/-! ## A171416.P9754799263931611750

`A257639(A058578(∑[n-n%2]))`
-/

namespace A171416.P9754799263931611750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A058578 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A171416.P9754799263931611750

/-! ## A171416.P18187960816324480821

`A340568(n)+A055642(A054888(n))`
-/

namespace A171416.P18187960816324480821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340568 n + A055642 (A054888 n).toNat

end

end A171416.P18187960816324480821

/-! ## A171416.P4091614126074593242

`A257639(A192455(n))+A222380(n)`
-/

namespace A171416.P4091614126074593242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A192455 n).toNat + A222380 n

end

end A171416.P4091614126074593242

/-! ## A171416.P10477572150556152360

`A275727(A275753(n))+A222380(n)`
-/

namespace A171416.P10477572150556152360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275727 (A275753 n).toNat + A222380 n

end

end A171416.P10477572150556152360

/-! ## A171416.P17114927759404002774

`A257639(A330711(n+1)*A330726(n))`
-/

namespace A171416.P17114927759404002774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A330711 (n + 1) * A330726 n).toNat

end

end A171416.P17114927759404002774

/-!
# A171418: Expansion of (1+x)^4/(1-x).

The programs for A171418, the canonical program `A171418.P2096412285342622775` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171418 has offset 0).

The definition of A171418 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x+6x^2+4x^3+x^4)/(1-x))` (program `A171418.P2096412285342622775`, by `A171418.P2096412285342622775.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171418.P2096412285342622775

`ogf((1+4x+6x^2+4x^3+x^4)/(1-x))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171418

/-- `ogf((1+4x+6x^2+4x^3+x^4)/(1-x))` -/
def P2096412285342622775.Spec : Prop :=
  ∀ n, P2096412285342622775.a n = A171418 n

theorem P2096412285342622775.correct : P2096412285342622775.Spec := by
  intro n
  simp only [A171418]

end A171418

/-!
# A171420: Numbers n such that composite(n)={2 or 3}*{prime > 3}.

The programs for A171420, there is no canonical definition to state claims against.
-/

/-! ## A171420.P7618645300721069385

`A026238(A253106(n+4))`
-/

namespace A171420.P7618645300721069385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A253106 (n + 4)).toNat

end

end A171420.P7618645300721069385

/-! ## A171420.P6512175808134965942

`A026238(A195896(n+6)+1)`
-/

namespace A171420.P6512175808134965942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A195896 (n + 6) + 1).toNat

end

end A171420.P6512175808134965942

/-! ## A171420.P13101224588217547626

`A026238(A063080(n+6)/4)`
-/

namespace A171420.P13101224588217547626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (SequenceMachineLib.roundAway ((A063080 (n + 6) : ℚ) / 4)).toNat

end

end A171420.P13101224588217547626

/-! ## A171420.P10173769894147431286

`A026238(∩[∪[2*n, 3*n], A001358(n+4)])`
-/

namespace A171420.P10173769894147431286
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n)

end

end A171420.P10173769894147431286

/-! ## A171420.P7029207191870064638

`A026238(eq[A040818(n), A104725(n)])`
-/

namespace A171420.P7029207191870064638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040818 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A171420.P7029207191870064638

/-! ## A171420.P14291788207894294751

`A026238(eq[A040818(n), A211110(n)])`
-/

namespace A171420.P14291788207894294751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040818 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A171420.P14291788207894294751

/-! ## A171420.P6268814972594416982

`A026238(A171156(n+1))`
-/

namespace A171420.P6268814972594416982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A171156 (n + 1)).toNat

end

end A171420.P6268814972594416982

/-!
# A171421: Euler totient function of the n-th single or isolated number.

The programs for A171421, the canonical program `A171421.P931648610780433948` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171421 has offset 1).

The definition of A171421 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A167706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A171421.P931648610780433948

`A000010(A167706(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A171421

/-- `A000010(A167706(n+1))` -/
def P931648610780433948.Spec : Prop :=
  ∀ n, P931648610780433948.a n = A171421 (n + 1)

theorem P931648610780433948.correct : P931648610780433948.Spec := by
  intro n
  simp only [A171421, Nat.add_sub_cancel]

end A171421

/-! ## A171421.P509997380206843103

`A000010(A167706(-xor(n, -1))-char[1])`
-/

namespace A171421.P509997380206843103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A167706 (-Int.xor (n : ℤ) (-1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A171421.P509997380206843103

namespace A171421

/-- `A000010(A167706(-xor(n, -1))-char[1])` -/
def P509997380206843103.Spec : Prop :=
  ∀ n, P509997380206843103.a n = A171421 (n + 1)

end A171421

/-! ## A171421.P6316269171612745617

`A000010(A167706(-xor(n, -1))%A155966(n))`
-/

namespace A171421.P6316269171612745617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.tmod (A167706 (-Int.xor (n : ℤ) (-1)).toNat) (A155966 n)).toNat

end

end A171421.P6316269171612745617

namespace A171421

/-- `A000010(A167706(-xor(n, -1))%A155966(n))` -/
def P6316269171612745617.Spec : Prop :=
  ∀ n, P6316269171612745617.a n = A171421 (n + 1)

end A171421

/-! ## A171421.P4740452863241065997

`A300236(2*A167706(n+1))`
-/

namespace A171421.P4740452863241065997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300236 (2 * A167706 (n + 1)).toNat

end

end A171421.P4740452863241065997

namespace A171421

/-- `A300236(2*A167706(n+1))` -/
def P4740452863241065997.Spec : Prop :=
  ∀ n, P4740452863241065997.a n = A171421 (n + 1)

end A171421

/-! ## A171421.P1770298895787123780

`A305804(2*A167706(n+1))`
-/

namespace A171421.P1770298895787123780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305804 (2 * A167706 (n + 1)).toNat

end

end A171421.P1770298895787123780

namespace A171421

/-- `A305804(2*A167706(n+1))` -/
def P1770298895787123780.Spec : Prop :=
  ∀ n, P1770298895787123780.a n = A171421 (n + 1)

end A171421

/-! ## A171421.P2129719614969405561

`A160595(lcm(2, A167706(n+1)))`
-/

namespace A171421.P2129719614969405561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160595 (Int.lcm 2 (A167706 (n + 1)))

end

end A171421.P2129719614969405561

namespace A171421

/-- `A160595(lcm(2, A167706(n+1)))` -/
def P2129719614969405561.Spec : Prop :=
  ∀ n, P2129719614969405561.a n = A171421 (n + 1)

end A171421

/-! ## A171421.P11407815184006420689

`A305804(A167706(n+1)+A167706(n+1))`
-/

namespace A171421.P11407815184006420689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305804 (A167706 (n + 1) + A167706 (n + 1)).toNat

end

end A171421.P11407815184006420689

namespace A171421

/-- `A305804(A167706(n+1)+A167706(n+1))` -/
def P11407815184006420689.Spec : Prop :=
  ∀ n, P11407815184006420689.a n = A171421 (n + 1)

end A171421

/-! ## A171421.P2622595044111174600

`A000010(A168343(n+1)+1+n)`
-/

namespace A171421.P2622595044111174600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A168343 (n + 1) + 1 + (n : ℤ)).toNat

end

end A171421.P2622595044111174600

namespace A171421

/-- `A000010(A168343(n+1)+1+n)` -/
def P2622595044111174600.Spec : Prop :=
  ∀ n, P2622595044111174600.a n = A171421 (n + 1)

end A171421

/-! ## A171421.P13743712880025104052

`A000010(A168249(n+1)+A077377(n+1))`
-/

namespace A171421.P13743712880025104052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A168249 (n + 1) + A077377 (n + 1)).toNat

end

end A171421.P13743712880025104052

namespace A171421

/-- `A000010(A168249(n+1)+A077377(n+1))` -/
def P13743712880025104052.Spec : Prop :=
  ∀ n, P13743712880025104052.a n = A171421 (n + 1)

end A171421

/-! ## A171421.P1441948147051382361

`A000010(A167886(n+1)+A167707(n+1))`
-/

namespace A171421.P1441948147051382361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A167886 (n + 1) + A167707 (n + 1)).toNat

end

end A171421.P1441948147051382361

namespace A171421

/-- `A000010(A167886(n+1)+A167707(n+1))` -/
def P1441948147051382361.Spec : Prop :=
  ∀ n, P1441948147051382361.a n = A171421 (n + 1)

end A171421

/-!
# A171422: A (4,-5) Somos-4 sequence.

The programs for A171422, the canonical program `A171422.P405737683739257710` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171422 has offset 0).

The definition of A171422 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171422.P405737683739257710

`(4*a(n-1)*a(n-3)-5*a(n-2)²)/a(n-4)` with `a(0)=1, a(1)=-1, a(2)=-9, a(3)=-41`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171422

/-- `(4*a(n-1)*a(n-3)-5*a(n-2)²)/a(n-4)` -/
def P405737683739257710.Spec : Prop :=
  ∀ n, P405737683739257710.a n = (A171422 n : ℚ)

end A171422

/-!
# A171424: (n-1)^(p-n+1)+n where p is the smallest prime > n-1.

The programs for A171424, the canonical program `A171424.P10085515601653152791` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171424 has offset 1).

The definition of A171424 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A171228, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A171424.P10085515601653152791

`A171228(n)+A000027(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A171424

/-- `A171228(n)+A000027(n+1)` -/
def P10085515601653152791.Spec : Prop :=
  ∀ n, P10085515601653152791.a n = A171424 (n + 1)

theorem P10085515601653152791.correct : P10085515601653152791.Spec := by
  intro n
  simp only [A171424, Nat.add_sub_cancel]

end A171424

/-! ## A171424.P4890429135807368409

`A171228(n)+1+n`
-/

namespace A171424.P4890429135807368409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171228 n + 1 + (n : ℤ)

end

end A171424.P4890429135807368409

namespace A171424

/-- `A171228(n)+1+n` -/
def P4890429135807368409.Spec : Prop :=
  ∀ n, P4890429135807368409.a n = A171424 (n + 1)

theorem P4890429135807368409.correct : P4890429135807368409.Spec := by
  intro n
  simp only [A171424, Nat.add_sub_cancel, A171424.P4890429135807368409.a, A171424.P10085515601653152791.a, A000027, A000027.P10331202704469894836.a, A171228, A171228.P4419088175126916163.a, A013632, A013632.P6559946879985956067.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A171424

/-! ## A171424.P16323572033941659344

`n^A013632(n)+1+n`
-/

namespace A171424.P16323572033941659344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A013632 n : ℤ) + 1 + (n : ℚ)

end

end A171424.P16323572033941659344

namespace A171424

/-- `n^A013632(n)+1+n` -/
def P16323572033941659344.Spec : Prop :=
  ∀ n, P16323572033941659344.a n = (A171424 (n + 1) : ℚ)

end A171424

/-! ## A171424.P6118990885781017464

`n^(A151800(n)-n)+1+n`
-/

namespace A171424.P6118990885781017464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A151800 n - (n : ℤ) : ℤ) + 1 + (n : ℚ)

end

end A171424.P6118990885781017464

namespace A171424

/-- `n^(A151800(n)-n)+1+n` -/
def P6118990885781017464.Spec : Prop :=
  ∀ n, P6118990885781017464.a n = (A171424 (n + 1) : ℚ)

end A171424

/-! ## A171424.P8262835897440770068

`n^(A007920(n+1)+1)+1+n`
-/

namespace A171424.P8262835897440770068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A007920 (n + 1) + 1 : ℤ) + 1 + (n : ℚ)

end

end A171424.P8262835897440770068

namespace A171424

/-- `n^(A007920(n+1)+1)+1+n` -/
def P8262835897440770068.Spec : Prop :=
  ∀ n, P8262835897440770068.a n = (A171424 (n + 1) : ℚ)

end A171424

/-!
# A171425: Divisors of 60^2 that are not divisors of 60.

The programs for A171425, there is no canonical definition to state claims against.
-/

/-! ## A171425.P12423384973903077880

`∩[A035303(n+1), A046790(n+1)]`
-/

namespace A171425.P12423384973903077880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171425.P12423384973903077880

/-! ## A171425.P12828587126645204821

`∩[A035303(n+1), A057111(n+1)]`
-/

namespace A171425.P12828587126645204821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171425.P12828587126645204821

/-! ## A171425.P13032077671897247577

`∩[A035303(n+1), A392815(n+1)]`
-/

namespace A171425.P13032077671897247577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171425.P13032077671897247577

/-!
# A171426: Row sum of column n in A126441 or A161924.

The programs for A171426, there is no canonical definition to state claims against.
-/

/-! ## A171426.P14681808376177212477

`A215092(A202753(n+1))`
-/

namespace A171426.P14681808376177212477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215092 (A202753 (n + 1)).toNat

end

end A171426.P14681808376177212477

/-!
# A171427: Solutions to the equation M(n) = 5 (M = Mertens's function A002321).

The programs for A171427, the canonical program `A171427.P12417627294716191402` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171427 has offset 1).

The definition of A171427 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171427.P2943316357486584450

`eq[5, A002321(round(acot(n)+n))]`
-/

namespace A171427.P2943316357486584450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171427.P2943316357486584450

namespace A171427

/-- `eq[5, A002321(round(acot(n)+n))]` -/
def P2943316357486584450.Spec : Prop :=
  ∀ n, (P2943316357486584450.a n : ℤ) = A171427 (n + 1)

end A171427

/-! ## A171427.P12417627294716191402

`eq[5, A002321(A028310(n))]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A171427

/-- `eq[5, A002321(A028310(n))]` -/
def P12417627294716191402.Spec : Prop :=
  ∀ n, (P12417627294716191402.a n : ℤ) = A171427 (n + 1)

theorem P12417627294716191402.correct : P12417627294716191402.Spec := by
  intro n
  simp only [A171427, Nat.add_sub_cancel]

end A171427

/-! ## A171427.P11585582150907566220

`A011760(eq[5, A002321(n+1)])`
-/

namespace A171427.P11585582150907566220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171427.P11585582150907566220

namespace A171427

/-- `A011760(eq[5, A002321(n+1)])` -/
def P11585582150907566220.Spec : Prop :=
  ∀ n, P11585582150907566220.a n = A171427 (n + 1)

end A171427

/-! ## A171427.P1339438939761822139

`A020725(eq[5, A002321(n+1)])`
-/

namespace A171427.P1339438939761822139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171427.P1339438939761822139

namespace A171427

/-- `A020725(eq[5, A002321(n+1)])` -/
def P1339438939761822139.Spec : Prop :=
  ∀ n, P1339438939761822139.a n = A171427 (n + 1)

end A171427

/-! ## A171427.P18292789332434520678

`A065475(eq[5, A002321(n+1)])`
-/

namespace A171427.P18292789332434520678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171427.P18292789332434520678

namespace A171427

/-- `A065475(eq[5, A002321(n+1)])` -/
def P18292789332434520678.Spec : Prop :=
  ∀ n, P18292789332434520678.a n = A171427 (n + 1)

end A171427

/-!
# A171428: Solutions to the equation M(n) = 6 (M = Mertens's function A002321).

The programs for A171428, the canonical program `A171428.P4692146372551918575` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171428 has offset 1).

The definition of A171428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171428.P14110997550854506385

`eq[6, A002321(round(acot(n)+n))]`
-/

namespace A171428.P14110997550854506385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171428.P14110997550854506385

namespace A171428

/-- `eq[6, A002321(round(acot(n)+n))]` -/
def P14110997550854506385.Spec : Prop :=
  ∀ n, (P14110997550854506385.a n : ℤ) = A171428 (n + 1)

end A171428

/-! ## A171428.P4692146372551918575

`eq[6, A002321(A028310(n))]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A171428

/-- `eq[6, A002321(A028310(n))]` -/
def P4692146372551918575.Spec : Prop :=
  ∀ n, (P4692146372551918575.a n : ℤ) = A171428 (n + 1)

theorem P4692146372551918575.correct : P4692146372551918575.Spec := by
  intro n
  simp only [A171428, Nat.add_sub_cancel]

end A171428

/-! ## A171428.P9626692393497860038

`A011760(eq[6, A002321(n+1)])`
-/

namespace A171428.P9626692393497860038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171428.P9626692393497860038

namespace A171428

/-- `A011760(eq[6, A002321(n+1)])` -/
def P9626692393497860038.Spec : Prop :=
  ∀ n, P9626692393497860038.a n = A171428 (n + 1)

end A171428

/-! ## A171428.P2861233720970465412

`A020725(eq[6, A002321(n+1)])`
-/

namespace A171428.P2861233720970465412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171428.P2861233720970465412

namespace A171428

/-- `A020725(eq[6, A002321(n+1)])` -/
def P2861233720970465412.Spec : Prop :=
  ∀ n, P2861233720970465412.a n = A171428 (n + 1)

end A171428

/-! ## A171428.P12458134777662691977

`A065475(eq[6, A002321(n+1)])`
-/

namespace A171428.P12458134777662691977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171428.P12458134777662691977

namespace A171428

/-- `A065475(eq[6, A002321(n+1)])` -/
def P12458134777662691977.Spec : Prop :=
  ∀ n, P12458134777662691977.a n = A171428 (n + 1)

end A171428

/-!
# A171429: Irregular table of positive integers with the property that each term on row r can be mapped to a numeric partition conjugate to the partition mapped by the corresponding value within sequence A161924.

The programs for A171429, there is no canonical definition to state claims against.
-/

/-! ## A171429.P1997723614747102130

`A059894(A161924(n+1))`
-/

namespace A171429.P1997723614747102130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (A161924 (n + 1)).toNat

end

end A171429.P1997723614747102130

/-!
# A171430: Primes that are congruent to 3 mod n, where n is the index of the prime.

The programs for A171430, there is no canonical definition to state claims against.
-/

/-! ## A171430.P10181305318471199082

`A001749(A023145(n+1))/4`
-/

namespace A171430.P10181305318471199082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (A023145 (n + 1)).toNat : ℚ) / 4

end

end A171430.P10181305318471199082

/-! ## A171430.P3455511284919470326

`A000040(A023145(n+1))`
-/

namespace A171430.P3455511284919470326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A023145 (n + 1)).toNat

end

end A171430.P3455511284919470326

/-! ## A171430.P16839428704932945208

`A008578(A023145(n+1)+1)`
-/

namespace A171430.P16839428704932945208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A023145 (n + 1) + 1).toNat

end

end A171430.P16839428704932945208

/-! ## A171430.P11998408062987285834

`A182986(A023145(n+1)+1)`
-/

namespace A171430.P11998408062987285834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A023145 (n + 1) + 1).toNat

end

end A171430.P11998408062987285834

/-! ## A171430.P815353388814609244

`∑{d}[A023145(n+1), A007444(#)]`
-/

namespace A171430.P815353388814609244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A171430.P815353388814609244

/-!
# A171432: Primes that are congruent to 5 mod n, where n is the index of the prime.

The programs for A171432, there is no canonical definition to state claims against.
-/

/-! ## A171432.P14535779095942119855

`p?[record[A122344(n)+2]]`
-/

namespace A171432.P14535779095942119855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122344 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171432.P14535779095942119855

/-! ## A171432.P900018613507444602

`A145281(A087503(n))`
-/

namespace A171432.P900018613507444602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145281 (A087503 n).toNat

end

end A171432.P900018613507444602

/-!
# A171433: n-th half of even single (or even isolated) numbers plus n-th half of even non-single (or even nonisolated) numbers.

The programs for A171433, the canonical program `A171433.P15274575647332636253` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171433 has offset 1).

The definition of A171433 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A168044, A168497, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A171433.P15274575647332636253

`A168497(n+1)+A168044(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A171433

/-- `A168497(n+1)+A168044(n+1)` -/
def P15274575647332636253.Spec : Prop :=
  ∀ n, P15274575647332636253.a n = A171433 (n + 1)

theorem P15274575647332636253.correct : P15274575647332636253.Spec := by
  intro n
  simp only [A171433, Nat.add_sub_cancel]

end A171433

/-! ## A171433.P10904890036303774519

`A168497(n+1)+A167692(n+1)/2`
-/

namespace A171433.P10904890036303774519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168497 (n + 1) : ℚ) + (A167692 (n + 1) : ℚ) / 2

end

end A171433.P10904890036303774519

namespace A171433

/-- `A168497(n+1)+A167692(n+1)/2` -/
def P10904890036303774519.Spec : Prop :=
  ∀ n, P10904890036303774519.a n = (A171433 (n + 1) : ℚ)

end A171433

/-! ## A171433.P17886028052782854544

`A168497(n+1)+comp[eq[0, A292438(2*n)]]`
-/

namespace A171433.P17886028052782854544
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A171433.P17886028052782854544

namespace A171433

/-- `A168497(n+1)+comp[eq[0, A292438(2*n)]]` -/
def P17886028052782854544.Spec : Prop :=
  ∀ n, P17886028052782854544.a n = A171433 (n + 1)

end A171433

/-! ## A171433.P8571113972190615087

`A168497(n+1)+comp[floor(A067829(n+1)/2)]`
-/

namespace A171433.P8571113972190615087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A067829 (n + 1) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A171433.P8571113972190615087

namespace A171433

/-- `A168497(n+1)+comp[floor(A067829(n+1)/2)]` -/
def P8571113972190615087.Spec : Prop :=
  ∀ n, P8571113972190615087.a n = A171433 (n + 1)

end A171433

/-! ## A171433.P6742231942830603965

`comp[A168497(n+1)]+floor(A094743(n+1)/2)`
-/

namespace A171433.P6742231942830603965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + ⌊(A094743 (n + 1) : ℚ) / 2⌋

end

end A171433.P6742231942830603965

namespace A171433

/-- `comp[A168497(n+1)]+floor(A094743(n+1)/2)` -/
def P6742231942830603965.Spec : Prop :=
  ∀ n, P6742231942830603965.a n = A171433 (n + 1)

end A171433

/-! ## A171433.P12971368160084446365

`A168497(n+1)+comp[record[A049563(n+1)-1]]`
-/

namespace A171433.P12971368160084446365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049563 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A171433.P12971368160084446365

namespace A171433

/-- `A168497(n+1)+comp[record[A049563(n+1)-1]]` -/
def P12971368160084446365.Spec : Prop :=
  ∀ n, P12971368160084446365.a n = A171433 (n + 1)

end A171433

/-! ## A171433.P4688657231498893121

`record[A049563(n+1)-1]+A167692(n+1)/2`
-/

namespace A171433.P4688657231498893121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049563 (n + 1) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) + (A167692 (n + 1) : ℚ) / 2

end

end A171433.P4688657231498893121

namespace A171433

/-- `record[A049563(n+1)-1]+A167692(n+1)/2` -/
def P4688657231498893121.Spec : Prop :=
  ∀ n, P4688657231498893121.a n = (A171433 (n + 1) : ℚ)

end A171433

/-! ## A171433.P11920578740793598118

`(A167692(n+1)+A000010(A067829(n+1)))/2`
-/

namespace A171433.P11920578740793598118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167692 (n + 1) + A000010 (A067829 (n + 1)).toNat : ℚ) / 2

end

end A171433.P11920578740793598118

namespace A171433

/-- `(A167692(n+1)+A000010(A067829(n+1)))/2` -/
def P11920578740793598118.Spec : Prop :=
  ∀ n, P11920578740793598118.a n = (A171433 (n + 1) : ℚ)

end A171433

/-! ## A171433.P7065770452582222882

`A168044(n+1)+record[ceil(A006530(A000040(n+2)-2)/2)]`
-/

namespace A171433.P7065770452582222882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006530 (A000040 (n + 2) - 2).toNat : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168044 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171433.P7065770452582222882

namespace A171433

/-- `A168044(n+1)+record[ceil(A006530(A000040(n+2)-2)/2)]` -/
def P7065770452582222882.Spec : Prop :=
  ∀ n, P7065770452582222882.a n = A171433 (n + 1)

end A171433

/-! ## A171433.P6395518979708648735

`A167692(n+1)/2+(record[A014963(A000040(n+2)-2)]+1)/2`
-/

namespace A171433.P6395518979708648735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000040 (n + 2) - 2).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167692 (n + 1) : ℚ) / 2 + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1 : ℚ) / 2

end

end A171433.P6395518979708648735

namespace A171433

/-- `A167692(n+1)/2+(record[A014963(A000040(n+2)-2)]+1)/2` -/
def P6395518979708648735.Spec : Prop :=
  ∀ n, P6395518979708648735.a n = (A171433 (n + 1) : ℚ)

end A171433

/-!
# A171434: Primes that are congruent to 7 mod n, where n is the index of the prime.

The programs for A171434, there is no canonical definition to state claims against.
-/

/-! ## A171434.P13013853407974205070

`A000040(A023149(n+1))`
-/

namespace A171434.P13013853407974205070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A023149 (n + 1)).toNat

end

end A171434.P13013853407974205070

/-! ## A171434.P17688552883818828570

`A008578(A023149(n+1)+1)`
-/

namespace A171434.P17688552883818828570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A023149 (n + 1) + 1).toNat

end

end A171434.P17688552883818828570

/-! ## A171434.P15751653246147022833

`A182986(A023149(n+1)+1)`
-/

namespace A171434.P15751653246147022833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A023149 (n + 1) + 1).toNat

end

end A171434.P15751653246147022833

/-! ## A171434.P4807148943009384560

`A158611(A023149(n+1)+2)`
-/

namespace A171434.P4807148943009384560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A023149 (n + 1) + 2).toNat

end

end A171434.P4807148943009384560

/-! ## A171434.P10303256151303827121

`∑{d}[A023149(n+1), A007444(#)]`
-/

namespace A171434.P10303256151303827121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A171434.P10303256151303827121

/-!
# A171435: Product of odd prime factors < n, with multiplicity.

The programs for A171435, the canonical program `A171435.P13410132754094429905` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171435 has offset 1).

The definition of A171435 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171435.P13315643092279739384

`gcd((n+1)/2^val(n+1, 2), Δ[A151800(n)])`
-/

namespace A171435.P13315643092279739384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) (f1 (n + 1) - f1 n)

end

end A171435.P13315643092279739384

namespace A171435

/-- `gcd((n+1)/2^val(n+1, 2), Δ[A151800(n)])` -/
def P13315643092279739384.Spec : Prop :=
  ∀ n, (P13315643092279739384.a n : ℤ) = A171435 (n + 1)

end A171435

/-! ## A171435.P16443007619630538145

`gcd(floor((n+1)/2^val(n+1, 2)), A049084(n+1))`
-/

namespace A171435.P16443007619630538145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊(n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ (A049084 (n + 1))

end

end A171435.P16443007619630538145

namespace A171435

/-- `gcd(floor((n+1)/2^val(n+1, 2)), A049084(n+1))` -/
def P16443007619630538145.Spec : Prop :=
  ∀ n, (P16443007619630538145.a n : ℤ) = A171435 (n + 1)

end A171435

/-! ## A171435.P16182670827141481455

`gcd((n+1)/and(n+1, -(n+1)), A166260(n+1))`
-/

namespace A171435.P16182670827141481455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))) (A166260 (n + 1))

end

end A171435.P16182670827141481455

namespace A171435

/-- `gcd((n+1)/and(n+1, -(n+1)), A166260(n+1))` -/
def P16182670827141481455.Spec : Prop :=
  ∀ n, (P16182670827141481455.a n : ℤ) = A171435 (n + 1)

end A171435

/-! ## A171435.P16813275355180504369

`A000265(A005451(n+1))`
-/

namespace A171435.P16813275355180504369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A005451 (n + 1)).toNat

end

end A171435.P16813275355180504369

namespace A171435

/-- `A000265(A005451(n+1))` -/
def P16813275355180504369.Spec : Prop :=
  ∀ n, P16813275355180504369.a n = A171435 (n + 1)

end A171435

/-! ## A171435.P7218152203501102028

`gcd(A000265(n+1), A085926(n))`
-/

namespace A171435.P7218152203501102028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000265 (n + 1)) (A085926 n)

end

end A171435.P7218152203501102028

namespace A171435

/-- `gcd(A000265(n+1), A085926(n))` -/
def P7218152203501102028.Spec : Prop :=
  ∀ n, (P7218152203501102028.a n : ℤ) = A171435 (n + 1)

end A171435

/-! ## A171435.P10383015216050020691

`gcd(A072195(n+1), A301279(n))`
-/

namespace A171435.P10383015216050020691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072195 (n + 1)) (A301279 n)

end

end A171435.P10383015216050020691

namespace A171435

/-- `gcd(A072195(n+1), A301279(n))` -/
def P10383015216050020691.Spec : Prop :=
  ∀ n, (P10383015216050020691.a n : ℤ) = A171435 (n + 1)

end A171435

/-! ## A171435.P16207286570487720928

`A000265(n*A005171(n+1)+1)`
-/

namespace A171435.P16207286570487720928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ((n : ℤ) * A005171 (n + 1) + 1).toNat

end

end A171435.P16207286570487720928

namespace A171435

/-- `A000265(n*A005171(n+1)+1)` -/
def P16207286570487720928.Spec : Prop :=
  ∀ n, P16207286570487720928.a n = A171435 (n + 1)

end A171435

/-! ## A171435.P15002481289277247249

`A000265(n*A066247(n+1)+1)`
-/

namespace A171435.P15002481289277247249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ((n : ℤ) * A066247 (n + 1) + 1).toNat

end

end A171435.P15002481289277247249

namespace A171435

/-- `A000265(n*A066247(n+1)+1)` -/
def P15002481289277247249.Spec : Prop :=
  ∀ n, P15002481289277247249.a n = A171435 (n + 1)

end A171435

/-! ## A171435.P9755643526018266540

`A000265(2-A089026(n+1)+n)`
-/

namespace A171435.P9755643526018266540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 - A089026 (n + 1) + (n : ℤ)).toNat

end

end A171435.P9755643526018266540

namespace A171435

/-- `A000265(2-A089026(n+1)+n)` -/
def P9755643526018266540.Spec : Prop :=
  ∀ n, P9755643526018266540.a n = A171435 (n + 1)

end A171435

/-! ## A171435.P4560926414718415931

`A000265((n+1)/A014973(n+1))`
-/

namespace A171435.P4560926414718415931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A014973 (n + 1) : ℚ))).toNat

end

end A171435.P4560926414718415931

namespace A171435

/-- `A000265((n+1)/A014973(n+1))` -/
def P4560926414718415931.Spec : Prop :=
  ∀ n, P4560926414718415931.a n = A171435 (n + 1)

end A171435

/-! ## A171435.P3876617654850609686

`A000265((n+1)/A089026(n+1))`
-/

namespace A171435.P3876617654850609686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A089026 (n + 1) : ℚ))).toNat

end

end A171435.P3876617654850609686

namespace A171435

/-- `A000265((n+1)/A089026(n+1))` -/
def P3876617654850609686.Spec : Prop :=
  ∀ n, P3876617654850609686.a n = A171435 (n + 1)

end A171435

/-! ## A171435.P7247545498307684222

`A000265(gcd(n+1, A014683(n+1)))`
-/

namespace A171435.P7247545498307684222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.gcd (n + 1 : ℤ) (A014683 (n + 1)))

end

end A171435.P7247545498307684222

namespace A171435

/-- `A000265(gcd(n+1, A014683(n+1)))` -/
def P7247545498307684222.Spec : Prop :=
  ∀ n, P7247545498307684222.a n = A171435 (n + 1)

end A171435

/-! ## A171435.P6733310243932692876

`gcd(A014684(n+1), A040026(n+1))`
-/

namespace A171435.P6733310243932692876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014684 (n + 1)) (A040026 (n + 1))

end

end A171435.P6733310243932692876

namespace A171435

/-- `gcd(A014684(n+1), A040026(n+1))` -/
def P6733310243932692876.Spec : Prop :=
  ∀ n, (P6733310243932692876.a n : ℤ) = A171435 (n + 1)

end A171435

/-! ## A171435.P7939053345068470166

`gcd(A014685(n+1), A136655(n+1))`
-/

namespace A171435.P7939053345068470166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014685 (n + 1)) (A136655 (n + 1))

end

end A171435.P7939053345068470166

namespace A171435

/-- `gcd(A014685(n+1), A136655(n+1))` -/
def P7939053345068470166.Spec : Prop :=
  ∀ n, (P7939053345068470166.a n : ℤ) = A171435 (n + 1)

end A171435

/-! ## A171435.P13410132754094429905

`gcd(A113646(n+1), A299149(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A171435

/-- `gcd(A113646(n+1), A299149(n+1))` -/
def P13410132754094429905.Spec : Prop :=
  ∀ n, (P13410132754094429905.a n : ℤ) = A171435 (n + 1)

theorem P13410132754094429905.correct : P13410132754094429905.Spec := by
  intro n
  simp only [A171435, Nat.add_sub_cancel]

end A171435

/-! ## A171435.P11282005095201240899

`gcd(A288469(n+1), A328154(n+1))`
-/

namespace A171435.P11282005095201240899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A288469 (n + 1)) (A328154 (n + 1))

end

end A171435.P11282005095201240899

namespace A171435

/-- `gcd(A288469(n+1), A328154(n+1))` -/
def P11282005095201240899.Spec : Prop :=
  ∀ n, (P11282005095201240899.a n : ℤ) = A171435 (n + 1)

end A171435

/-! ## A171435.P3853526559954343117

`A000265(C(n+1, A089026(n+1)))`
-/

namespace A171435.P3853526559954343117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Nat.choose (n + 1) (A089026 (n + 1)).toNat)

end

end A171435.P3853526559954343117

namespace A171435

/-- `A000265(C(n+1, A089026(n+1)))` -/
def P3853526559954343117.Spec : Prop :=
  ∀ n, P3853526559954343117.a n = A171435 (n + 1)

end A171435

/-! ## A171435.P15407101169312628276

`A000265(n*(1-A010051(n+1))+1)`
-/

namespace A171435.P15407101169312628276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ((n : ℤ) * (1 - A010051 (n + 1)) + 1).toNat

end

end A171435.P15407101169312628276

namespace A171435

/-- `A000265(n*(1-A010051(n+1))+1)` -/
def P15407101169312628276.Spec : Prop :=
  ∀ n, P15407101169312628276.a n = A171435 (n + 1)

end A171435

/-! ## A171435.P17468606353189373296

`A000265(n^(1-A010051(n+1))+1)`
-/

namespace A171435.P17468606353189373296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((n : ℚ) ^ (1 - A010051 (n + 1) : ℤ) + 1)).toNat

end

end A171435.P17468606353189373296

namespace A171435

/-- `A000265(n^(1-A010051(n+1))+1)` -/
def P17468606353189373296.Spec : Prop :=
  ∀ n, P17468606353189373296.a n = A171435 (n + 1)

end A171435

/-! ## A171435.P8981606177609410634

`A000265(n+1)-n*A280710(2*(n+1))`
-/

namespace A171435.P8981606177609410634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) - (n : ℤ) * A280710 (2 * (n + 1))

end

end A171435.P8981606177609410634

namespace A171435

/-- `A000265(n+1)-n*A280710(2*(n+1))` -/
def P8981606177609410634.Spec : Prop :=
  ∀ n, P8981606177609410634.a n = A171435 (n + 1)

end A171435

/-!
# A171436: Solutions to the equation M(n) = 7 (M = Mertens's function A002321).

The programs for A171436, the canonical program `A171436.P12618760449162599911` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171436 has offset 1).

The definition of A171436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171436.P5182206144769139804

`eq[7, A002321(round(acot(n)+n))]`
-/

namespace A171436.P5182206144769139804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171436.P5182206144769139804

namespace A171436

/-- `eq[7, A002321(round(acot(n)+n))]` -/
def P5182206144769139804.Spec : Prop :=
  ∀ n, (P5182206144769139804.a n : ℤ) = A171436 (n + 1)

end A171436

/-! ## A171436.P12618760449162599911

`eq[7, A002321(A028310(n))]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A171436

/-- `eq[7, A002321(A028310(n))]` -/
def P12618760449162599911.Spec : Prop :=
  ∀ n, (P12618760449162599911.a n : ℤ) = A171436 (n + 1)

theorem P12618760449162599911.correct : P12618760449162599911.Spec := by
  intro n
  simp only [A171436, Nat.add_sub_cancel]

end A171436

/-! ## A171436.P5288583792559430838

`A011760(eq[7, A002321(n+1)])`
-/

namespace A171436.P5288583792559430838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171436.P5288583792559430838

namespace A171436

/-- `A011760(eq[7, A002321(n+1)])` -/
def P5288583792559430838.Spec : Prop :=
  ∀ n, P5288583792559430838.a n = A171436 (n + 1)

end A171436

/-! ## A171436.P13964370122027888200

`A020725(eq[7, A002321(n+1)])`
-/

namespace A171436.P13964370122027888200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171436.P13964370122027888200

namespace A171436

/-- `A020725(eq[7, A002321(n+1)])` -/
def P13964370122027888200.Spec : Prop :=
  ∀ n, P13964370122027888200.a n = A171436 (n + 1)

end A171436

/-!
# A171438: a(n) = 0+1+2+...+n in lunar arithmetic in base 3 written in base 10.

The programs for A171438, there is no canonical definition to state claims against.
-/

/-! ## A171438.P10404030390319822708

`3*a(floor(n/3))+2` with `a(0)=0, a(1)=1`
-/

namespace A171438.P10404030390319822708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * a ⌊(n : ℚ) / 3⌋.toNat + 2

end

end A171438.P10404030390319822708

/-! ## A171438.P12547236441792892275

`lcm(3, -a(floor(n/3)))+2` with `a(0)=0, a(1)=1`
-/

namespace A171438.P12547236441792892275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.lcm 3 (-(a ⌊(n : ℚ) / 3⌋.toNat : ℤ)) + 2

end

end A171438.P12547236441792892275

/-! ## A171438.P4575684429285610720

`3*(a(ceil((n+1)/3)-1)+1)-1` with `a(0)=0, a(1)=1`
-/

namespace A171438.P4575684429285610720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * (a (⌈(n + 1 : ℚ) / 3⌉ - 1).toNat + 1) - 1

end

end A171438.P4575684429285610720

/-! ## A171438.P3895677992794139161

`A016789(a(floor(n/3)))` with `a(0)=0, a(1)=1`
-/

namespace A171438.P3895677992794139161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A016789 (a ⌊(n : ℚ) / 3⌋.toNat).toNat

end

end A171438.P3895677992794139161

/-! ## A171438.P5888078986555928503

`A016777(a(floor(n/3)))+1` with `a(0)=0, a(1)=1`
-/

namespace A171438.P5888078986555928503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A016777 (a ⌊(n : ℚ) / 3⌋.toNat).toNat + 1

end

end A171438.P5888078986555928503

/-! ## A171438.P15946183223633862526

`A008585(a(floor(n/3)))+2` with `a(0)=0, a(1)=1`
-/

namespace A171438.P15946183223633862526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A008585 (a ⌊(n : ℚ) / 3⌋.toNat).toNat + 2

end

end A171438.P15946183223633862526

/-! ## A171438.P3873383879734353213

`A189724(a(floor(n/3))+1)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A171438.P3873383879734353213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A189724 (a ⌊(n : ℚ) / 3⌋.toNat + 1).toNat

end

end A171438.P3873383879734353213

/-! ## A171438.P14345343469108071166

`A038754(∑[char[A038754(n)]])-1`
-/

namespace A171438.P14345343469108071166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A171438.P14345343469108071166

/-! ## A171438.P3499989510516438433

`∑[A026741(n*char[A038754(n)])]`
-/

namespace A171438.P3499989510516438433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171438.P3499989510516438433

/-! ## A171438.P12788132863021996169

`∑[A195938(A000010(A008486(n)))]`
-/

namespace A171438.P12788132863021996169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195938 (A000010 (A008486 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171438.P12788132863021996169

/-!
# A171440: Expansion of (1+x)^5/(1-x).

The programs for A171440, the canonical program `A171440.P5564267370352614889` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171440 has offset 0).

The definition of A171440 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+5x+10x^2+10x^3+5x^4+x^5)/(1-x))` (program `A171440.P5564267370352614889`, by `A171440.P5564267370352614889.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171440.P5564267370352614889

`ogf((1+5x+10x^2+10x^3+5x^4+x^5)/(1-x))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171440

/-- `ogf((1+5x+10x^2+10x^3+5x^4+x^5)/(1-x))` -/
def P5564267370352614889.Spec : Prop :=
  ∀ n, P5564267370352614889.a n = A171440 n

theorem P5564267370352614889.correct : P5564267370352614889.Spec := by
  intro n
  simp only [A171440]

end A171440

/-!
# A171441: Expansion of g.f. (1+x)^6/(1-x).

The programs for A171441, the canonical program `A171441.P1359786753578577832` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171441 has offset 0).

The definition of A171441 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+6x+15x^2+20x^3+15x^4+6x^5+x^6)/(1-x))` (program `A171441.P1359786753578577832`, by `A171441.P1359786753578577832.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171441.P1359786753578577832

`ogf((1+6x+15x^2+20x^3+15x^4+6x^5+x^6)/(1-x))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171441

/-- `ogf((1+6x+15x^2+20x^3+15x^4+6x^5+x^6)/(1-x))` -/
def P1359786753578577832.Spec : Prop :=
  ∀ n, P1359786753578577832.a n = A171441 n

theorem P1359786753578577832.correct : P1359786753578577832.Spec := by
  intro n
  simp only [A171441]

end A171441

/-!
# A171442: Expansion of (1+x)^7/(1-x).

The programs for A171442, the canonical program `A171442.P18437077643800714302` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171442 has offset 0).

The definition of A171442 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+7x+21x^2+35x^3+35x^4+21x^5+7x^6+x^7)/(1-x))` (program `A171442.P18437077643800714302`, by `A171442.P18437077643800714302.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171442.P18437077643800714302

`ogf((1+7x+21x^2+35x^3+35x^4+21x^5+7x^6+x^7)/(1-x))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171442

/-- `ogf((1+7x+21x^2+35x^3+35x^4+21x^5+7x^6+x^7)/(1-x))` -/
def P18437077643800714302.Spec : Prop :=
  ∀ n, P18437077643800714302.a n = A171442 n

theorem P18437077643800714302.correct : P18437077643800714302.Spec := by
  intro n
  simp only [A171442]

end A171442

/-!
# A171443: Expansion of g.f. (1+x)^8/(1-x).

The programs for A171443, the canonical program `A171443.P1573982574659301403` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171443 has offset 0).

The definition of A171443 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+8x+28x^2+56x^3+70x^4+56x^5+28x^6+8x^7+x^8)/(1-x))` (program `A171443.P1573982574659301403`, by `A171443.P1573982574659301403.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171443.P1573982574659301403

`ogf((1+8x+28x^2+56x^3+70x^4+56x^5+28x^6+8x^7+x^8)/(1-x))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171443

/-- `ogf((1+8x+28x^2+56x^3+70x^4+56x^5+28x^6+8x^7+x^8)/(1-x))` -/
def P1573982574659301403.Spec : Prop :=
  ∀ n, P1573982574659301403.a n = A171443 n

theorem P1573982574659301403.correct : P1573982574659301403.Spec := by
  intro n
  simp only [A171443]

end A171443

/-!
# A171444: Sum of three consecutive reversed primes.

The programs for A171444, there is no canonical definition to state claims against.
-/

/-! ## A171444.P9246015247899088067

`A004087(n+1)+A004087(n+2)+A004087(n+3)`
-/

namespace A171444.P9246015247899088067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004087 (n + 1) + (A004087 (n + 2) + A004087 (n + 3))

end

end A171444.P9246015247899088067

/-! ## A171444.P14599055317411758649

`∑{p}[A046301(n+1), A004086(#)]`
-/

namespace A171444.P14599055317411758649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A004086 p

end

end A171444.P14599055317411758649

/-! ## A171444.P11361886063498282597

`∑{p}[A046301(n+1), A071786(#)]`
-/

namespace A171444.P11361886063498282597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A071786 p

end

end A171444.P11361886063498282597

/-! ## A171444.P16483641323132865946

`∑{p}[A046301(n+1), A188649(#)]`
-/

namespace A171444.P16483641323132865946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A188649 p

end

end A171444.P16483641323132865946

/-! ## A171444.P14886323575142480145

`∑{p}[A046301(n+1), A347400(#)]`
-/

namespace A171444.P14886323575142480145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A347400 p

end

end A171444.P14886323575142480145

/-!
# A171445: Expansion of g.f. (1+z)^(24)/(1-z).

The programs for A171445, the canonical program `A171445.P4615541196023635966` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171445 has offset 0).

The definition of A171445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171445.P4615541196023635966

`a(n-1)+C(24, n)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171445

/-- `a(n-1)+C(24, n)` -/
def P4615541196023635966.Spec : Prop :=
  ∀ n, (P4615541196023635966.a n : ℤ) = A171445 n

theorem P4615541196023635966.correct : P4615541196023635966.Spec := by
  intro n
  simp only [A171445]

end A171445

/-!
# A171446: a(n) = 0+1+2+...+n in lunar arithmetic in base 3 written in base 3.

The programs for A171446, there is no canonical definition to state claims against.
-/

/-! ## A171446.P12196146205762915258

`10*a(floor(n/3))+2` with `a(0)=0, a(1)=1`
-/

namespace A171446.P12196146205762915258
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  10 * a ⌊(n : ℚ) / 3⌋.toNat + 2

end

end A171446.P12196146205762915258

/-! ## A171446.P7189733804485552872

`A017281(a(floor(n/3)))+1` with `a(0)=0, a(1)=1`
-/

namespace A171446.P7189733804485552872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A017281 (a ⌊(n : ℚ) / 3⌋.toNat).toNat + 1

end

end A171446.P7189733804485552872

/-! ## A171446.P2324717794017381551

`A008592(a(floor(n/3)))+2` with `a(0)=0, a(1)=1`
-/

namespace A171446.P2324717794017381551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A008592 (a ⌊(n : ℚ) / 3⌋.toNat).toNat + 2

end

end A171446.P2324717794017381551

/-! ## A171446.P13088356073279596429

`A017317(a(floor(n/3)))-2` with `a(0)=0, a(1)=1`
-/

namespace A171446.P13088356073279596429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A017317 (a ⌊(n : ℚ) / 3⌋.toNat).toNat - 2

end

end A171446.P13088356073279596429

/-! ## A171446.P5767183634677353254

`A007089(A171438(n))`
-/

namespace A171446.P5767183634677353254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A171438 n).toNat

end

end A171446.P5767183634677353254

/-!
# A171447: Numbers k such that k+1 is prime, and (k+1)^3-k^3 is prime.

The programs for A171447, there is no canonical definition to state claims against.
-/

/-! ## A171447.P13084875199913010012

`A165682(n+1)-1`
-/

namespace A171447.P13084875199913010012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165682 (n + 1) - 1

end

end A171447.P13084875199913010012

/-! ## A171447.P6669628561889767907

`A000010(A165682(n+1))`
-/

namespace A171447.P6669628561889767907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A165682 (n + 1)).toNat

end

end A171447.P6669628561889767907

/-! ## A171447.P11646254103666921027

`p?[A002504(n+1)]-1`
-/

namespace A171447.P11646254103666921027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A171447.P11646254103666921027

/-! ## A171447.P4054749194986622315

`p?[A111251(n+1)+1]-1`
-/

namespace A171447.P4054749194986622315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111251 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A171447.P4054749194986622315

/-! ## A171447.P9070371481399244172

`∩[A006093(n+1), A111251(n+1)]`
-/

namespace A171447.P9070371481399244172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171447.P9070371481399244172

/-! ## A171447.P4980404792091312391

`∩[A002504(n+1), A042988(n)]-1`
-/

namespace A171447.P4980404792091312391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A171447.P4980404792091312391

/-! ## A171447.P8774368101371627433

`∩[A000040(n+1), A002504(n+1)]-1`
-/

namespace A171447.P8774368101371627433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002504 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A171447.P8774368101371627433

/-! ## A171447.P1334670590847950872

`∩[A002504(n+1), A008578(n+1)]-1`
-/

namespace A171447.P1334670590847950872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A171447.P1334670590847950872

/-! ## A171447.P4398200332753857943

`∩[A002504(n+1), A033946(n+1)]-1`
-/

namespace A171447.P4398200332753857943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A171447.P4398200332753857943

/-! ## A171447.P676890173297143721

`∩[A000040(n+1)-1, A111251(n+1)]`
-/

namespace A171447.P676890173297143721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171447.P676890173297143721

/-! ## A171447.P12849916905044321910

`∩[A002504(n+1), A116974(n+1)]-1`
-/

namespace A171447.P12849916905044321910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A171447.P12849916905044321910

/-! ## A171447.P6987223661523472626

`∩[A002504(n+1), A158611(n+1)]-1`
-/

namespace A171447.P6987223661523472626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A171447.P6987223661523472626

/-! ## A171447.P14427026629519816615

`∩[A002504(n+1), A182986(n+1)]-1`
-/

namespace A171447.P14427026629519816615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A171447.P14427026629519816615

/-! ## A171447.P3521204112610940122

`∩[A111251(n+1), A182986(n+1)-1]`
-/

namespace A171447.P3521204112610940122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171447.P3521204112610940122

/-! ## A171447.P11539760797418136896

`p?[(n+1)*A350090(n)]-1`
-/

namespace A171447.P11539760797418136896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A350090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A171447.P11539760797418136896

/-! ## A171447.P10060806541502907998

`eq[A005451(n+1), A350090(n)]`
-/

namespace A171447.P10060806541502907998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171447.P10060806541502907998

/-! ## A171447.P12657119590607409176

`eq[A023890(n+1), A350090(n)]`
-/

namespace A171447.P12657119590607409176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171447.P12657119590607409176

/-! ## A171447.P10624674768095215406

`eq[A050358(n+1), A350090(n)]`
-/

namespace A171447.P10624674768095215406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171447.P10624674768095215406

/-! ## A171447.P9006327634316871701

`eq[A062967(n+1), A350090(n)]`
-/

namespace A171447.P9006327634316871701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171447.P9006327634316871701

/-!
# A171448: Sequence whose generating function is expressible as a prime-related continued fraction.

The programs for A171448, there is no canonical definition to state claims against.
-/

/-! ## A171448.P11466060007211540915

`A028310(A185298(n)+A074664(n+1))`
-/

namespace A171448.P11466060007211540915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A185298 n + A074664 (n + 1)).toNat

end

end A171448.P11466060007211540915

/-! ## A171448.P3030093987080984323

`∑[A202364(n)]+A238014(A055646(2*(n+1)))/2`
-/

namespace A171448.P3030093987080984323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202364 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) + (A238014 (A055646 (2 * (n + 1))).toNat : ℚ) / 2

end

end A171448.P3030093987080984323

/-!
# A171449: Powers of 2 (A000079) with 1 changed to -1.

The programs for A171449, the canonical program `A171449.P6885768374670517301` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171449 has offset 0).

The definition of A171449 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171449.P7216295599149660589

`ogf((-1+4x)/(1-2x))`
-/

namespace A171449.P7216295599149660589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 4] [1, -2] n

end

end A171449.P7216295599149660589

namespace A171449

/-- `ogf((-1+4x)/(1-2x))` -/
def P7216295599149660589.Spec : Prop :=
  ∀ n, P7216295599149660589.a n = A171449 n

end A171449

/-! ## A171449.P6885768374670517301

`xor(1, 2^n)-1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171449

/-- `xor(1, 2^n)-1` -/
def P6885768374670517301.Spec : Prop :=
  ∀ n, P6885768374670517301.a n = A171449 n

theorem P6885768374670517301.correct : P6885768374670517301.Spec := by
  intro n
  simp only [A171449]

end A171449

/-! ## A171449.P12897331663477193562

`record[∏[gcd(2, n)-3]]`
-/

namespace A171449.P12897331663477193562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171449.P12897331663477193562

namespace A171449

/-- `record[∏[gcd(2, n)-3]]` -/
def P12897331663477193562.Spec : Prop :=
  ∀ n, P12897331663477193562.a n = A171449 n

end A171449

/-! ## A171449.P14614369550064691198

`record[∏[or(n+1, -2)]]`
-/

namespace A171449.P14614369550064691198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171449.P14614369550064691198

namespace A171449

/-- `record[∏[or(n+1, -2)]]` -/
def P14614369550064691198.Spec : Prop :=
  ∀ n, P14614369550064691198.a n = A171449 n

end A171449

/-! ## A171449.P11821127796977462372

`record[∏[char[2*n]-2]]`
-/

namespace A171449.P11821127796977462372
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171449.P11821127796977462372

namespace A171449

/-- `record[∏[char[2*n]-2]]` -/
def P11821127796977462372.Spec : Prop :=
  ∀ n, P11821127796977462372.a n = A171449 n

end A171449

/-! ## A171449.P2901915889889134568

`2^n-floor(acot(n)²)`
-/

namespace A171449.P2901915889889134568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A171449.P2901915889889134568

namespace A171449

/-- `2^n-floor(acot(n)²)` -/
def P2901915889889134568.Spec : Prop :=
  ∀ n, P2901915889889134568.a n = A171449 n

end A171449

/-! ## A171449.P3449231164422681776

`ceil(2^n-acot(n)²)`
-/

namespace A171449.P3449231164422681776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ n : ℝ) - SequenceMachineLib.acot (n : ℝ) ^ 2⌉

end

end A171449.P3449231164422681776

namespace A171449

/-- `ceil(2^n-acot(n)²)` -/
def P3449231164422681776.Spec : Prop :=
  ∀ n, P3449231164422681776.a n = A171449 n

end A171449

/-! ## A171449.P1775003036482048936

`2*a(n-1)` with `a(0)=-1, a(1)=2`
-/

namespace A171449.P1775003036482048936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 2] fun n a =>
  2 * a (n - 1)

end

end A171449.P1775003036482048936

namespace A171449

/-- `2*a(n-1)` -/
def P1775003036482048936.Spec : Prop :=
  ∀ n, P1775003036482048936.a n = A171449 n

end A171449

/-! ## A171449.P5443795479865649467

`round(2^n-acot(2*n))`
-/

namespace A171449.P5443795479865649467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℝ) - SequenceMachineLib.acot (2 * n : ℝ))

end

end A171449.P5443795479865649467

namespace A171449

/-- `round(2^n-acot(2*n))` -/
def P5443795479865649467.Spec : Prop :=
  ∀ n, P5443795479865649467.a n = A171449 n

end A171449

/-! ## A171449.P2704914709206493856

`lcm(2^n, a(n-1))` with `a(0)=-1`
-/

namespace A171449.P2704914709206493856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n a =>
  (Int.lcm (2 ^ n : ℤ) (a (n - 1)) : ℤ)

end

end A171449.P2704914709206493856

namespace A171449

/-- `lcm(2^n, a(n-1))` -/
def P2704914709206493856.Spec : Prop :=
  ∀ n, P2704914709206493856.a n = A171449 n

end A171449

/-! ## A171449.P11860798251418783159

`a(((-1)^n)²)^n` with `a(0)=-1, a(1)=2`
-/

namespace A171449.P11860798251418783159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 2] fun n a =>
  a (((-1) ^ n) ^ 2).toNat ^ n

end

end A171449.P11860798251418783159

namespace A171449

/-- `a(((-1)^n)²)^n` -/
def P11860798251418783159.Spec : Prop :=
  ∀ n, P11860798251418783159.a n = A171449 n

end A171449

/-! ## A171449.P15977303255832267018

`2^n-C(2, (n+1)²)`
-/

namespace A171449.P15977303255832267018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (Nat.choose 2 ((n + 1) ^ 2) : ℤ)

end

end A171449.P15977303255832267018

namespace A171449

/-- `2^n-C(2, (n+1)²)` -/
def P15977303255832267018.Spec : Prop :=
  ∀ n, P15977303255832267018.a n = A171449 n

end A171449

/-! ## A171449.P5275414849818760459

`or(-C(2, n+2), 2^n)`
-/

namespace A171449.P5275414849818760459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-(Nat.choose 2 (n + 2) : ℤ)) (2 ^ n : ℤ)

end

end A171449.P5275414849818760459

namespace A171449

/-- `or(-C(2, n+2), 2^n)` -/
def P5275414849818760459.Spec : Prop :=
  ∀ n, P5275414849818760459.a n = A171449 n

end A171449

/-! ## A171449.P16873544665772513345

`or(ceil(abs(sin(n)))-1, 2^n)`
-/

namespace A171449.P16873544665772513345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (⌈|Real.sin (n : ℝ)|⌉ - 1) (2 ^ n : ℤ)

end

end A171449.P16873544665772513345

namespace A171449

/-- `or(ceil(abs(sin(n)))-1, 2^n)` -/
def P16873544665772513345.Spec : Prop :=
  ∀ n, P16873544665772513345.a n = A171449 n

end A171449

/-! ## A171449.P11093183897882065803

`2^n*(-1)^-2^n`
-/

namespace A171449.P11093183897882065803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) * (-1 : ℚ) ^ (-(2 ^ n : ℤ) : ℤ)

end

end A171449.P11093183897882065803

namespace A171449

/-- `2^n*(-1)^-2^n` -/
def P11093183897882065803.Spec : Prop :=
  ∀ n, P11093183897882065803.a n = (A171449 n : ℚ)

end A171449

/-! ## A171449.P17160165236975491795

`a(n-1)+a(n-1)` with `a(0)=-1, a(1)=2`
-/

namespace A171449.P17160165236975491795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 2] fun n a =>
  a (n - 1) + a (n - 1)

end

end A171449.P17160165236975491795

namespace A171449

/-- `a(n-1)+a(n-1)` -/
def P17160165236975491795.Spec : Prop :=
  ∀ n, P17160165236975491795.a n = A171449 n

end A171449

/-! ## A171449.P13912221121943189869

`2^n-dr(C(2, 2*n+1))`
-/

namespace A171449.P13912221121943189869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (SequenceMachineLib.digitalRoot (Nat.choose 2 (2 * n + 1) : ℤ) : ℤ)

end

end A171449.P13912221121943189869

namespace A171449

/-- `2^n-dr(C(2, 2*n+1))` -/
def P13912221121943189869.Spec : Prop :=
  ∀ n, P13912221121943189869.a n = A171449 n

end A171449

/-! ## A171449.P5583495157383302417

`or(n-1-abs(1-n), 2^n)`
-/

namespace A171449.P5583495157383302417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 1 - |1 - (n : ℤ)|) (2 ^ n : ℤ)

end

end A171449.P5583495157383302417

namespace A171449

/-- `or(n-1-abs(1-n), 2^n)` -/
def P5583495157383302417.Spec : Prop :=
  ∀ n, P5583495157383302417.a n = A171449 n

end A171449

/-! ## A171449.P1065177008385530840

`a(n-1)/(1-1/2)` with `a(0)=-1, a(1)=2`
-/

namespace A171449.P1065177008385530840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [-1, 2] fun n a =>
  a (n - 1) / (1 - (1 : ℚ) / 2)

end

end A171449.P1065177008385530840

namespace A171449

/-- `a(n-1)/(1-1/2)` -/
def P1065177008385530840.Spec : Prop :=
  ∀ n, P1065177008385530840.a n = (A171449 n : ℚ)

end A171449

/-! ## A171449.P9770229831698405415

`(a(floor(1/(n+1)))+3)^n` with `a(0)=-1`
-/

namespace A171449.P9770229831698405415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n a =>
  (a ⌊1 / (n + 1 : ℚ)⌋.toNat + 3) ^ n

end

end A171449.P9770229831698405415

namespace A171449

/-- `(a(floor(1/(n+1)))+3)^n` -/
def P9770229831698405415.Spec : Prop :=
  ∀ n, P9770229831698405415.a n = A171449 n

end A171449

/-!
# A171450: Sequence with Hankel transform given by 2^C(n,2)*2^floor(n/3).

The programs for A171450, there is no canonical definition to state claims against.
-/

/-! ## A171450.P1898420722544361889

`A195174(A233162(n+1)+A191757(n))`
-/

namespace A171450.P1898420722544361889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A233162 (n + 1) + A191757 n).toNat

end

end A171450.P1898420722544361889

/-! ## A171450.P567632183876257376

`A204190(n)%p?[∑[2^n]]`
-/

namespace A171450.P567632183876257376
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204190 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A171450.P567632183876257376

/-! ## A171450.P5646836959511891577

`∑[A160719(floor(n*2^(n-3)))]+1`
-/

namespace A171450.P5646836959511891577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160719 ⌊(n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A171450.P5646836959511891577

/-!
# A171451: a(n) = 2^C(n, 2) * 2^floor(n/3).

The programs for A171451, the canonical program `A171451.P4773756822073675630` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171451 has offset 0).

The definition of A171451 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171451.P4773756822073675630

`2^C(n, 2)*2^floor(n/3)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171451

/-- `2^C(n, 2)*2^floor(n/3)` -/
def P4773756822073675630.Spec : Prop :=
  ∀ n, P4773756822073675630.a n = (A171451 n : ℚ)

end A171451

/-! ## A171451.P13838116050883870988

`2^A171452(n)`
-/

namespace A171451.P13838116050883870988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A171452 n : ℤ)

end

end A171451.P13838116050883870988

namespace A171451

/-- `2^A171452(n)` -/
def P13838116050883870988.Spec : Prop :=
  ∀ n, P13838116050883870988.a n = (A171451 n : ℚ)

end A171451

/-! ## A171451.P5786310564055446298

`2^∑[n-n²%3]`
-/

namespace A171451.P5786310564055446298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n ^ 2 % 3 : ℕ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A171451.P5786310564055446298

namespace A171451

/-- `2^∑[n-n²%3]` -/
def P5786310564055446298.Spec : Prop :=
  ∀ n, P5786310564055446298.a n = (A171451 n : ℚ)

end A171451

/-! ## A171451.P11195683907820720784

`∏[8*a(n-3)]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A171451.P11195683907820720784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  8 * f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A171451.P11195683907820720784

namespace A171451

/-- `∏[8*a(n-3)]` -/
def P11195683907820720784.Spec : Prop :=
  ∀ n, (P11195683907820720784.a n : ℤ) = A171451 n

end A171451

/-! ## A171451.P1039622249361088302

`∏[2^n/(n²+1)%3]`
-/

namespace A171451.P1039622249361088302
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / (((n ^ 2 + 1) % 3 : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A171451.P1039622249361088302

namespace A171451

/-- `∏[2^n/(n²+1)%3]` -/
def P1039622249361088302.Spec : Prop :=
  ∀ n, P1039622249361088302.a n = (A171451 n : ℚ)

end A171451

/-!
# A171452: a(n) = C(n,2) + floor(n/3).

The programs for A171452, the canonical program `A171452.P6707096497392475714` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171452 has offset 0).

The definition of A171452 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, 2)+floor(n/3)` (program `A171452.P6707096497392475714`, by `A171452.P6707096497392475714.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171452.P6707096497392475714

`C(n, 2)+floor(n/3)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171452

/-- `C(n, 2)+floor(n/3)` -/
def P6707096497392475714.Spec : Prop :=
  ∀ n, P6707096497392475714.a n = A171452 n

theorem P6707096497392475714.correct : P6707096497392475714.Spec := by
  intro n
  simp only [A171452]

end A171452

/-! ## A171452.P16420459538031535441

`∑[n-n²%3]`
-/

namespace A171452.P16420459538031535441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n ^ 2 % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171452.P16420459538031535441

namespace A171452

/-- `∑[n-n²%3]` -/
def P16420459538031535441.Spec : Prop :=
  ∀ n, P16420459538031535441.a n = A171452 n

end A171452

/-! ## A171452.P8664526835147783512

`floor(C(3*n, 2)/9)`
-/

namespace A171452.P8664526835147783512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (3 * n) 2 : ℚ) / 9⌋

end

end A171452.P8664526835147783512

namespace A171452

/-- `floor(C(3*n, 2)/9)` -/
def P8664526835147783512.Spec : Prop :=
  ∀ n, P8664526835147783512.a n = A171452 n

end A171452

/-! ## A171452.P9095709809591557057

`∑[-n²%3+n]`
-/

namespace A171452.P9095709809591557057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(n ^ 2 : ℤ)) 3 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171452.P9095709809591557057

namespace A171452

/-- `∑[-n²%3+n]` -/
def P9095709809591557057.Spec : Prop :=
  ∀ n, P9095709809591557057.a n = A171452 n

end A171452

/-! ## A171452.P9707998809833996760

`∑[n-char[comp[3*n]]]`
-/

namespace A171452.P9707998809833996760
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171452.P9707998809833996760

namespace A171452

/-- `∑[n-char[comp[3*n]]]` -/
def P9707998809833996760.Spec : Prop :=
  ∀ n, P9707998809833996760.a n = A171452 n

end A171452

/-! ## A171452.P4836445303499921994

`round((n-1)/3)+C(n, 2)`
-/

namespace A171452.P4836445303499921994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 3) + (Nat.choose n 2 : ℤ)

end

end A171452.P4836445303499921994

namespace A171452

/-- `round((n-1)/3)+C(n, 2)` -/
def P4836445303499921994.Spec : Prop :=
  ∀ n, P4836445303499921994.a n = A171452 n

end A171452

/-! ## A171452.P6821253136861742214

`abs(∑[a(n-3)+3])` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A171452.P6821253136861742214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 (n - 3) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171452.P6821253136861742214

namespace A171452

/-- `abs(∑[a(n-3)+3])` -/
def P6821253136861742214.Spec : Prop :=
  ∀ n, (P6821253136861742214.a n : ℤ) = A171452 n

end A171452

/-! ## A171452.P9756262179088762737

`floor(∑[a(n-3)+3])` with `a(0)=0, a(1)=0, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A171452.P9756262179088762737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 (n - 3) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171452.P9756262179088762737

namespace A171452

/-- `floor(∑[a(n-3)+3])` -/
def P9756262179088762737.Spec : Prop :=
  ∀ n, (P9756262179088762737.a n : ℤ) = A171452 n

end A171452

/-! ## A171452.P12484535561051825845

`ceil(∑[a(n-3)+3])` with `a(0)=0, a(1)=0, a(2)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A171452.P12484535561051825845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 (n - 3) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171452.P12484535561051825845

namespace A171452

/-- `ceil(∑[a(n-3)+3])` -/
def P12484535561051825845.Spec : Prop :=
  ∀ n, (P12484535561051825845.a n : ℤ) = A171452 n

end A171452

/-! ## A171452.P294964787369309099

`round(∑[a(n-3)+3])` with `a(0)=0, a(1)=0, a(2)=1`

`round` is left out, it is the identity on integers.
-/

namespace A171452.P294964787369309099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 (n - 3) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171452.P294964787369309099

namespace A171452

/-- `round(∑[a(n-3)+3])` -/
def P294964787369309099.Spec : Prop :=
  ∀ n, (P294964787369309099.a n : ℤ) = A171452 n

end A171452

/-! ## A171452.P7531049431560556064

`∑[∑[(n-1)%3]]+n+1`
-/

namespace A171452.P7531049431560556064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A171452.P7531049431560556064

namespace A171452

/-- `∑[∑[(n-1)%3]]+n+1` -/
def P7531049431560556064.Spec : Prop :=
  ∀ n, P7531049431560556064.a n = A171452 n

end A171452

/-! ## A171452.P18283419736610979729

`∑[n]-∑[a(n-3)²]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A171452.P18283419736610979729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n f2 =>
  f2 (n - 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A171452.P18283419736610979729

namespace A171452

/-- `∑[n]-∑[a(n-3)²]` -/
def P18283419736610979729.Spec : Prop :=
  ∀ n, P18283419736610979729.a n = A171452 n

end A171452

/-! ## A171452.P12185306250985151088

`∑[2*n]-∑[∑[(2*n)%3]]`
-/

namespace A171452.P12185306250985151088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A171452.P12185306250985151088

namespace A171452

/-- `∑[2*n]-∑[∑[(2*n)%3]]` -/
def P12185306250985151088.Spec : Prop :=
  ∀ n, P12185306250985151088.a n = A171452 n

end A171452

/-! ## A171452.P17757404088321010414

`3*n+a(n-3)-5` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A171452.P17757404088321010414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  (3 * n : ℤ) + (a (n - 3) - 5)

end

end A171452.P17757404088321010414

namespace A171452

/-- `3*n+a(n-3)-5` -/
def P17757404088321010414.Spec : Prop :=
  ∀ n, P17757404088321010414.a n = A171452 n

end A171452

/-! ## A171452.P10015084686913285608

`3*n-(5-a(n-3))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A171452.P10015084686913285608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  (3 * n : ℤ) - (5 - a (n - 3))

end

end A171452.P10015084686913285608

namespace A171452

/-- `3*n-(5-a(n-3))` -/
def P10015084686913285608.Spec : Prop :=
  ∀ n, P10015084686913285608.a n = A171452 n

end A171452

/-! ## A171452.P15184119323705977594

`∑[n]-∑[a(n-3)^3]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A171452.P15184119323705977594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n f2 =>
  f2 (n - 3) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A171452.P15184119323705977594

namespace A171452

/-- `∑[n]-∑[a(n-3)^3]` -/
def P15184119323705977594.Spec : Prop :=
  ∀ n, P15184119323705977594.a n = A171452 n

end A171452

/-! ## A171452.P16478673845816690942

`a(n-1)-gcd(3, n)%3+n` with `a(0)=0`
-/

namespace A171452.P16478673845816690942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - ((Nat.gcd 3 n % 3 : ℕ) : ℤ) + (n : ℤ)

end

end A171452.P16478673845816690942

namespace A171452

/-- `a(n-1)-gcd(3, n)%3+n` -/
def P16478673845816690942.Spec : Prop :=
  ∀ n, P16478673845816690942.a n = A171452 n

end A171452

/-! ## A171452.P705012198615188041

`∑[n]-∑[∑[ogf((x+x^2)/(1+x+x^2))]]`
-/

namespace A171452.P705012198615188041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, 1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A171452.P705012198615188041

namespace A171452

/-- `∑[n]-∑[∑[ogf((x+x^2)/(1+x+x^2))]]` -/
def P705012198615188041.Spec : Prop :=
  ∀ n, P705012198615188041.a n = A171452 n

end A171452

/-! ## A171452.P3943743658986222268

`n-∑[a(n-3)-3]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=-2`
-/

namespace A171452.P3943743658986222268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, -2] fun n f1 =>
  f1 (n - 3) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171452.P3943743658986222268

namespace A171452

/-- `n-∑[a(n-3)-3]` -/
def P3943743658986222268.Spec : Prop :=
  ∀ n, P3943743658986222268.a n = A171452 n

end A171452

/-! ## A171452.P2870105923978604079

`floor(a(n-1)-n%3/2)+n` with `a(0)=0`
-/

namespace A171452.P2870105923978604079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) - ((n % 3 : ℕ) : ℚ) / 2⌋ + (n : ℤ)

end

end A171452.P2870105923978604079

namespace A171452

/-- `floor(a(n-1)-n%3/2)+n` -/
def P2870105923978604079.Spec : Prop :=
  ∀ n, P2870105923978604079.a n = A171452 n

end A171452

/-!
# A171453: a(n) = sum_i p_i^(e_i-1) where n = product_i p_i^e_i is the prime number decomposition of n.

The programs for A171453, the canonical program `A171453.P4881999374342782724` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171453 has offset 1).

The definition of A171453 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008475, A067240, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A171453.P4881999374342782724

`A008475(n+1)-A067240(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A171453

/-- `A008475(n+1)-A067240(n+1)` -/
def P4881999374342782724.Spec : Prop :=
  ∀ n, P4881999374342782724.a n = A171453 (n + 1)

theorem P4881999374342782724.correct : P4881999374342782724.Spec := by
  intro n
  simp only [A171453, Nat.add_sub_cancel]

end A171453

/-! ## A171453.P15581647170020594930

`A159077(n+1)-(A067240(n+1)+1)`
-/

namespace A171453.P15581647170020594930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159077 (n + 1) - (A067240 (n + 1) + 1)

end

end A171453.P15581647170020594930

namespace A171453

/-- `A159077(n+1)-(A067240(n+1)+1)` -/
def P15581647170020594930.Spec : Prop :=
  ∀ n, P15581647170020594930.a n = A171453 (n + 1)

theorem P15581647170020594930.correct : P15581647170020594930.Spec := by
  intro n
  simp only [A171453, Nat.add_sub_cancel, A171453.P15581647170020594930.a, A171453.P4881999374342782724.a, A008475, A008475.P12981903007955240503.f1, A008475.P12981903007955240503.a, A067240, A067240.P3266130279275368684.a, A159077, A159077.P14146349899783805996.a, A003557, A003557.P6364735403900941810.a, A056169, A056169.P17430176249366647977.a, A092509, A092509.P8072479887117834933.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A014683, A014683.P4274130993241959458.a, A048671, A048671.P10271734858964489763.a, A055231, A055231.P8962300905713718501.a, A002944, A002944.P11615207776596987764.a, A003418, A003418.P6976248655893080794.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A010051, A010051.P15078252821583414300.a, A059841, A059841.P2666504972441551157.a, A071773, A071773.P10459083202328690793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A171453

/-! ## A171453.P2630857460947605207

`A056169(n+1)+A008475(A003557(n+1))`
-/

namespace A171453.P2630857460947605207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1) + A008475 (A003557 (n + 1)).toNat

end

end A171453.P2630857460947605207

namespace A171453

/-- `A056169(n+1)+A008475(A003557(n+1))` -/
def P2630857460947605207.Spec : Prop :=
  ∀ n, P2630857460947605207.a n = A171453 (n + 1)

theorem P2630857460947605207.correct : P2630857460947605207.Spec := by
  intro n
  simp only [A171453, Nat.add_sub_cancel, A171453.P2630857460947605207.a, A171453.P4881999374342782724.a, A003557, A003557.P6364735403900941810.a, A008475, A008475.P12981903007955240503.f1, A008475.P12981903007955240503.a, A056169, A056169.P17430176249366647977.a, A067240, A067240.P3266130279275368684.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A055231, A055231.P8962300905713718501.a, A092509, A092509.P8072479887117834933.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A014683, A014683.P4274130993241959458.a, A048671, A048671.P10271734858964489763.a, A059841, A059841.P2666504972441551157.a, A071773, A071773.P10459083202328690793.a, A002944, A002944.P11615207776596987764.a, A003418, A003418.P6976248655893080794.a, A010051, A010051.P15078252821583414300.a, A057521, A057521.P7284310941140114823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A171453

/-! ## A171453.P16871207040764124850

`A023443(A159077(n+1)-A067240(n+1))`
-/

namespace A171453.P16871207040764124850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A159077 (n + 1) - A067240 (n + 1)).toNat

end

end A171453.P16871207040764124850

namespace A171453

/-- `A023443(A159077(n+1)-A067240(n+1))` -/
def P16871207040764124850.Spec : Prop :=
  ∀ n, P16871207040764124850.a n = A171453 (n + 1)

end A171453

/-! ## A171453.P9883830709651865748

`∑{d}[n+1, A117494(A014963(#))*A117494(#)]`
-/

namespace A171453.P9883830709651865748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117494 (A014963 d).toNat * A117494 d

end

end A171453.P9883830709651865748

namespace A171453

/-- `∑{d}[n+1, A117494(A014963(#))*A117494(#)]` -/
def P9883830709651865748.Spec : Prop :=
  ∀ n, P9883830709651865748.a n = A171453 (n + 1)

end A171453

/-! ## A171453.P15956198711817058858

`A222416(n+1)-(A067240(n+1)+A000007(n))`
-/

namespace A171453.P15956198711817058858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222416 (n + 1) - (A067240 (n + 1) + A000007 n)

end

end A171453.P15956198711817058858

namespace A171453

/-- `A222416(n+1)-(A067240(n+1)+A000007(n))` -/
def P15956198711817058858.Spec : Prop :=
  ∀ n, P15956198711817058858.a n = A171453 (n + 1)

end A171453

/-! ## A171453.P7836214054440184188

`(A222416(n+1)-A067240(n+1))%A005408(n)`
-/

namespace A171453.P7836214054440184188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222416 (n + 1) - A067240 (n + 1)) (A005408 n)

end

end A171453.P7836214054440184188

namespace A171453

/-- `(A222416(n+1)-A067240(n+1))%A005408(n)` -/
def P7836214054440184188.Spec : Prop :=
  ∀ n, P7836214054440184188.a n = A171453 (n + 1)

end A171453

/-! ## A171453.P450270695478041722

`A001414(n+1)+A078771(n+1)-A067240(n+1)`
-/

namespace A171453.P450270695478041722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) + (A078771 (n + 1) - A067240 (n + 1))

end

end A171453.P450270695478041722

namespace A171453

/-- `A001414(n+1)+A078771(n+1)-A067240(n+1)` -/
def P450270695478041722.Spec : Prop :=
  ∀ n, P450270695478041722.a n = A171453 (n + 1)

theorem P450270695478041722.correct : P450270695478041722.Spec := by
  intro n
  simp only [A171453, Nat.add_sub_cancel, A171453.P450270695478041722.a, A171453.P4881999374342782724.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A008475, A008475.P12981903007955240503.f1, A008475.P12981903007955240503.a, A067240, A067240.P3266130279275368684.a, A078771, A078771.P8502218742761172896.a, A003557, A003557.P6364735403900941810.a, A056169, A056169.P17430176249366647977.a, A092509, A092509.P8072479887117834933.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A014683, A014683.P4274130993241959458.a, A048671, A048671.P10271734858964489763.a, A055231, A055231.P8962300905713718501.a, A002944, A002944.P11615207776596987764.a, A003418, A003418.P6976248655893080794.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A010051, A010051.P15078252821583414300.a, A059841, A059841.P2666504972441551157.a, A071773, A071773.P10459083202328690793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A171453

/-! ## A171453.P17052313868323268557

`A063956(n+1)+A286875(n+1)-A067240(n+1)`
-/

namespace A171453.P17052313868323268557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063956 (n + 1) + (A286875 (n + 1) - A067240 (n + 1))

end

end A171453.P17052313868323268557

namespace A171453

/-- `A063956(n+1)+A286875(n+1)-A067240(n+1)` -/
def P17052313868323268557.Spec : Prop :=
  ∀ n, P17052313868323268557.a n = A171453 (n + 1)

end A171453

/-! ## A171453.P11875618456592791327

`and(A118883(n+1), A222416(n+1))-A067240(n+1)`
-/

namespace A171453.P11875618456592791327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118883 (n + 1)) (A222416 (n + 1)) - A067240 (n + 1)

end

end A171453.P11875618456592791327

namespace A171453

/-- `and(A118883(n+1), A222416(n+1))-A067240(n+1)` -/
def P11875618456592791327.Spec : Prop :=
  ∀ n, P11875618456592791327.a n = A171453 (n + 1)

end A171453

/-! ## A171453.P16474963509322168939

`and(A087522(n), A222416(n+1))-A067240(n+1)`
-/

namespace A171453.P16474963509322168939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087522 n) (A222416 (n + 1)) - A067240 (n + 1)

end

end A171453.P16474963509322168939

namespace A171453

/-- `and(A087522(n), A222416(n+1))-A067240(n+1)` -/
def P16474963509322168939.Spec : Prop :=
  ∀ n, P16474963509322168939.a n = A171453 (n + 1)

end A171453

/-!
# A171454: G.f. satisfies: A(x) = 1 + 4*x*AGM(1, A(x)^2).

The programs for A171454, there is no canonical definition to state claims against.
-/

/-! ## A171454.P14597140567954889026

`A047849(n)+A004526(A165311(n))`
-/

namespace A171454.P14597140567954889026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047849 n + A004526 (A165311 n).toNat

end

end A171454.P14597140567954889026

/-! ## A171454.P11988126034915916155

`A321726(A082028(n)-A091002(n))`
-/

namespace A171454.P11988126034915916155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321726 (A082028 n - A091002 n).toNat

end

end A171454.P11988126034915916155

/-!
# A171455: G.f. satisfies: A(x) = 1 + 2*x*AGM(1, A(x)^4).

The programs for A171455, there is no canonical definition to state claims against.
-/

/-! ## A171455.P12035280727429062345

`A369536(n)/A000079(n)`
-/

namespace A171455.P12035280727429062345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369536 n : ℚ) / (A000079 n : ℚ)

end

end A171455.P12035280727429062345

/-! ## A171455.P4024625989354492433

`A369536(n)/∑[A011782(n)]`
-/

namespace A171455.P4024625989354492433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369536 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A171455.P4024625989354492433

/-! ## A171455.P12669518269255778761

`A369536(n)/Δ[A000225(n)]`
-/

namespace A171455.P12669518269255778761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369536 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A171455.P12669518269255778761

/-! ## A171455.P10927021188346551694

`A369536(n)/A011782(n+1)`
-/

namespace A171455.P10927021188346551694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369536 n : ℚ) / (A011782 (n + 1) : ℚ)

end

end A171455.P10927021188346551694

/-! ## A171455.P4385728369241785547

`A369536(n)/A028297(A087811(n+1))`
-/

namespace A171455.P4385728369241785547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369536 n : ℚ) / (A028297 (A087811 (n + 1)).toNat : ℚ)

end

end A171455.P4385728369241785547

/-! ## A171455.P3933244560860423206

`A369536(n)/A225468(∑[n])`
-/

namespace A171455.P3933244560860423206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369536 n : ℚ) / (A225468 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A171455.P3933244560860423206

/-!
# A171458: Squares in lunar arithmetic in base 4 written in base 10.

The programs for A171458, there is no canonical definition to state claims against.
-/

/-! ## A171458.P3002351989376340346

`A028899(A171460(n))`
-/

namespace A171458.P3002351989376340346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (A171460 n).toNat

end

end A171458.P3002351989376340346

/-! ## A171458.P267812998895939269

`lt[A006968(A141176(2*n+1)), 5]`
-/

namespace A171458.P267812998895939269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (A141176 (2 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A171458.P267812998895939269

/-! ## A171458.P3425516590247061641

`A244040(A000326(2*(n+2))*A363129(n))+n`
-/

namespace A171458.P3425516590247061641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244040 (A000326 (2 * (n + 2)) * A363129 n).toNat + (n : ℤ)

end

end A171458.P3425516590247061641

/-!
# A171459: Numbers k such that 1 + 6*10^k + 100^k is prime.

The programs for A171459, there is no canonical definition to state claims against.
-/

/-! ## A171459.P12414152421927747558

`floor(A100457(n+1)/2)`
-/

namespace A171459.P12414152421927747558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A100457 (n + 1) : ℚ) / 2⌋

end

end A171459.P12414152421927747558

/-! ## A171459.P8031367420983488382

`A004524(A100457(n+1))`
-/

namespace A171459.P8031367420983488382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A100457 (n + 1)).toNat

end

end A171459.P8031367420983488382

/-! ## A171459.P13926475004740957944

`A065423(A100457(n+1)+1)`
-/

namespace A171459.P13926475004740957944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (A100457 (n + 1) + 1).toNat

end

end A171459.P13926475004740957944

/-! ## A171459.P16391466613249517982

`A004526(A100457(n+1)-1)`
-/

namespace A171459.P16391466613249517982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A100457 (n + 1) - 1).toNat

end

end A171459.P16391466613249517982

/-! ## A171459.P2764023138452906304

`A006370(A100457(n+1)-1)`
-/

namespace A171459.P2764023138452906304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A100457 (n + 1) - 1).toNat

end

end A171459.P2764023138452906304

/-!
# A171460: Squares in lunar arithmetic in base 4 written in base 4.

The programs for A171460, there is no canonical definition to state claims against.
-/

/-! ## A171460.P7088514625512946798

`A087019(A007090(n))`
-/

namespace A171460.P7088514625512946798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (A007090 n).toNat

end

end A171460.P7088514625512946798

/-! ## A171460.P11776207723571648593

`A007090(A171458(n))`
-/

namespace A171460.P11776207723571648593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A171458 n).toNat

end

end A171460.P11776207723571648593

/-! ## A171460.P14223680499687124130

`A087019(record[A064770(n)])`
-/

namespace A171460.P14223680499687124130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171460.P14223680499687124130

/-! ## A171460.P5147242576509839720

`A087019(lt[A054055(n), 4])`
-/

namespace A171460.P5147242576509839720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A171460.P5147242576509839720

/-! ## A171460.P2662779267171090199

`A171564(A020654(n+1))`
-/

namespace A171460.P2662779267171090199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171564 (A020654 (n + 1)).toNat

end

end A171460.P2662779267171090199

/-!
# A171461: a(n) = 1 + 6*10^n + 100^n.

The programs for A171461, the canonical program `A171461.P2111119395775964379` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171461 has offset 0).

The definition of A171461 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+6*10^n+100^n` (program `A171461.P2111119395775964379`, by `A171461.P2111119395775964379.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171461.P2111119395775964379

`1+6*10^n+100^n`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171461

/-- `1+6*10^n+100^n` -/
def P2111119395775964379.Spec : Prop :=
  ∀ n, (P2111119395775964379.a n : ℤ) = A171461 n

theorem P2111119395775964379.correct : P2111119395775964379.Spec := by
  intro n
  simp only [A171461]

end A171461

/-! ## A171461.P11595758173340371728

`abs(A011557(n)-A225813(n))`
-/

namespace A171461.P11595758173340371728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011557 n - A225813 n|

end

end A171461.P11595758173340371728

namespace A171461

/-- `abs(A011557(n)-A225813(n))` -/
def P11595758173340371728.Spec : Prop :=
  ∀ n, P11595758173340371728.a n = A171461 n

end A171461

/-! ## A171461.P15201712890038373763

`(A171553(n)+A171375(n))/2`
-/

namespace A171461.P15201712890038373763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171553 n + A171375 n : ℚ) / 2

end

end A171461.P15201712890038373763

namespace A171461

/-- `(A171553(n)+A171375(n))/2` -/
def P15201712890038373763.Spec : Prop :=
  ∀ n, P15201712890038373763.a n = (A171461 n : ℚ)

theorem P15201712890038373763.correct : P15201712890038373763.Spec := by
  intro n
  simp only [A171461, Nat.add_sub_cancel, A171461.P15201712890038373763.a, A171461.P2111119395775964379.a, A171375, A171375.P17659756597286540859.a, A171553, A171553.P11689869298719501407.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A171461

/-! ## A171461.P7711080999657048497

`(A225813(n)+A171410(n))/2`
-/

namespace A171461.P7711080999657048497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225813 n + A171410 n : ℚ) / 2

end

end A171461.P7711080999657048497

namespace A171461

/-- `(A225813(n)+A171410(n))/2` -/
def P7711080999657048497.Spec : Prop :=
  ∀ n, P7711080999657048497.a n = (A171461 n : ℚ)

end A171461

/-! ## A171461.P2443627065152146821

`(A225810(n)+A171513(n))/2`
-/

namespace A171461.P2443627065152146821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225810 n + A171513 n : ℚ) / 2

end

end A171461.P2443627065152146821

namespace A171461

/-- `(A225810(n)+A171513(n))/2` -/
def P2443627065152146821.Spec : Prop :=
  ∀ n, P2443627065152146821.a n = (A171461 n : ℚ)

end A171461

/-! ## A171461.P8798122668489469335

`(2*A225813(n))%A171513(n)`
-/

namespace A171461.P8798122668489469335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A225813 n) (A171513 n)

end

end A171461.P8798122668489469335

namespace A171461

/-- `(2*A225813(n))%A171513(n)` -/
def P8798122668489469335.Spec : Prop :=
  ∀ n, P8798122668489469335.a n = A171461 n

end A171461

/-! ## A171461.P15977097109368585066

`(3*A171513(n))%A171553(n)`
-/

namespace A171461.P15977097109368585066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A171513 n) (A171553 n)

end

end A171461.P15977097109368585066

namespace A171461

/-- `(3*A171513(n))%A171553(n)` -/
def P15977097109368585066.Spec : Prop :=
  ∀ n, P15977097109368585066.a n = A171461 n

end A171461

/-! ## A171461.P7638369320699437358

`(A171553(n)+A171410(n))%A171513(n)`
-/

namespace A171461.P7638369320699437358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171553 n + A171410 n) (A171513 n)

end

end A171461.P7638369320699437358

namespace A171461

/-- `(A171553(n)+A171410(n))%A171513(n)` -/
def P7638369320699437358.Spec : Prop :=
  ∀ n, P7638369320699437358.a n = A171461 n

end A171461

/-! ## A171461.P9701192866118675063

`(A171513(n)+A171410(n))%A225813(n)`
-/

namespace A171461.P9701192866118675063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171513 n + A171410 n) (A225813 n)

end

end A171461.P9701192866118675063

namespace A171461

/-- `(A171513(n)+A171410(n))%A225813(n)` -/
def P9701192866118675063.Spec : Prop :=
  ∀ n, P9701192866118675063.a n = A171461 n

end A171461

/-!
# A171462: Number of hands a bartender needs to have in order to win at the blind bartender's problem with n glasses in a cycle.

The programs for A171462, the canonical program `A171462.P186066025836437895` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171462 has offset 1).

The definition of A171462 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052126, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A171462.P186066025836437895

`n+1-A052126(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A171462

/-- `n+1-A052126(n+1)` -/
def P186066025836437895.Spec : Prop :=
  ∀ n, P186066025836437895.a n = A171462 (n + 1)

theorem P186066025836437895.correct : P186066025836437895.Spec := by
  intro n
  simp only [A171462, Nat.add_sub_cancel]

end A171462

/-! ## A171462.P13844422820898212808

`n+1-(n+1)/A006530(n+1)`
-/

namespace A171462.P13844422820898212808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (n + 1 : ℚ) / (A006530 (n + 1) : ℚ)

end

end A171462.P13844422820898212808

namespace A171462

/-- `n+1-(n+1)/A006530(n+1)` -/
def P13844422820898212808.Spec : Prop :=
  ∀ n, P13844422820898212808.a n = (A171462 (n + 1) : ℚ)

end A171462

/-! ## A171462.P7937815489892072259

`n-floor(n/A006530(n+1))`
-/

namespace A171462.P7937815489892072259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n : ℚ) / (A006530 (n + 1) : ℚ)⌋

end

end A171462.P7937815489892072259

namespace A171462

/-- `n-floor(n/A006530(n+1))` -/
def P7937815489892072259.Spec : Prop :=
  ∀ n, P7937815489892072259.a n = A171462 (n + 1)

end A171462

/-! ## A171462.P8893743290655607404

`n-floor(n/A111089(n+1))`
-/

namespace A171462.P8893743290655607404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n : ℚ) / (A111089 (n + 1) : ℚ)⌋

end

end A171462.P8893743290655607404

namespace A171462

/-- `n-floor(n/A111089(n+1))` -/
def P8893743290655607404.Spec : Prop :=
  ∀ n, P8893743290655607404.a n = A171462 (n + 1)

end A171462

/-! ## A171462.P13625211810565107529

`2*(n+1)-A335876(n+1)`
-/

namespace A171462.P13625211810565107529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A335876 (n + 1)

end

end A171462.P13625211810565107529

namespace A171462

/-- `2*(n+1)-A335876(n+1)` -/
def P13625211810565107529.Spec : Prop :=
  ∀ n, P13625211810565107529.a n = A171462 (n + 1)

theorem P13625211810565107529.correct : P13625211810565107529.Spec := by
  intro n
  simp only [A171462, Nat.add_sub_cancel, A171462.P13625211810565107529.a, A171462.P186066025836437895.a, A052126, A052126.P1944428405920482243.a, A335876, A335876.P3249295182234954832.a, A006530, A006530.P13372528560459906635.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A171462

/-! ## A171462.P17975141427929958826

`2*n+3-A269304(n+1)`
-/

namespace A171462.P17975141427929958826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A269304 (n + 1)

end

end A171462.P17975141427929958826

namespace A171462

/-- `2*n+3-A269304(n+1)` -/
def P17975141427929958826.Spec : Prop :=
  ∀ n, P17975141427929958826.a n = A171462 (n + 1)

theorem P17975141427929958826.correct : P17975141427929958826.Spec := by
  intro n
  simp only [A171462, Nat.add_sub_cancel, A171462.P17975141427929958826.a, A171462.P186066025836437895.a, A052126, A052126.P1944428405920482243.a, A269304, A269304.P13577493983909923936.a, A006530, A006530.P13372528560459906635.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A171462

/-! ## A171462.P12644225844082928060

`n+1-A342768(n+1)/(n+1)`
-/

namespace A171462.P12644225844082928060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A342768 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A171462.P12644225844082928060

namespace A171462

/-- `n+1-A342768(n+1)/(n+1)` -/
def P12644225844082928060.Spec : Prop :=
  ∀ n, P12644225844082928060.a n = (A171462 (n + 1) : ℚ)

end A171462

/-! ## A171462.P8060181078015282585

`A062545(n)%A269304(n+1)`
-/

namespace A171462.P8060181078015282585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062545 n) (A269304 (n + 1))

end

end A171462.P8060181078015282585

namespace A171462

/-- `A062545(n)%A269304(n+1)` -/
def P8060181078015282585.Spec : Prop :=
  ∀ n, P8060181078015282585.a n = A171462 (n + 1)

end A171462

/-! ## A171462.P14053468222850316053

`1-A032742(A130065(n+1))+n`
-/

namespace A171462.P14053468222850316053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A032742 (A130065 (n + 1)).toNat + (n : ℤ)

end

end A171462.P14053468222850316053

namespace A171462

/-- `1-A032742(A130065(n+1))+n` -/
def P14053468222850316053.Spec : Prop :=
  ∀ n, P14053468222850316053.a n = A171462 (n + 1)

end A171462

/-! ## A171462.P9425754085246606959

`A144396(n+1)%A269304(n+1)`
-/

namespace A171462.P9425754085246606959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144396 (n + 1)) (A269304 (n + 1))

end

end A171462.P9425754085246606959

namespace A171462

/-- `A144396(n+1)%A269304(n+1)` -/
def P9425754085246606959.Spec : Prop :=
  ∀ n, P9425754085246606959.a n = A171462 (n + 1)

end A171462

/-! ## A171462.P13070587431076585186

`A163300(n+1)%A335876(n+1)`
-/

namespace A171462.P13070587431076585186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163300 (n + 1)) (A335876 (n + 1))

end

end A171462.P13070587431076585186

namespace A171462

/-- `A163300(n+1)%A335876(n+1)` -/
def P13070587431076585186.Spec : Prop :=
  ∀ n, P13070587431076585186.a n = A171462 (n + 1)

end A171462

/-! ## A171462.P12965504940095159625

`A020725(n+1)-A335876(n+1)+n`
-/

namespace A171462.P12965504940095159625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (n + 1) - A335876 (n + 1) + (n : ℤ)

end

end A171462.P12965504940095159625

namespace A171462

/-- `A020725(n+1)-A335876(n+1)+n` -/
def P12965504940095159625.Spec : Prop :=
  ∀ n, P12965504940095159625.a n = A171462 (n + 1)

theorem P12965504940095159625.correct : P12965504940095159625.Spec := by
  intro n
  simp only [A171462, Nat.add_sub_cancel, A171462.P12965504940095159625.a, A171462.P186066025836437895.a, A020725, A020725.P9662279067013051637.a, A052126, A052126.P1944428405920482243.a, A335876, A335876.P3249295182234954832.a, A006530, A006530.P13372528560459906635.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A171462

/-! ## A171462.P7705705877350361936

`A052126(n+1)*A060681(A006530(n+1))`
-/

namespace A171462.P7705705877350361936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1) * A060681 (A006530 (n + 1)).toNat

end

end A171462.P7705705877350361936

namespace A171462

/-- `A052126(n+1)*A060681(A006530(n+1))` -/
def P7705705877350361936.Spec : Prop :=
  ∀ n, P7705705877350361936.a n = A171462 (n + 1)

end A171462

/-! ## A171462.P3231688765582046023

`A087156(n+1)-A087156(n+1)/A111089(n+1)`
-/

namespace A171462.P3231688765582046023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087156 (n + 1) : ℚ) - (A087156 (n + 1) : ℚ) / (A111089 (n + 1) : ℚ)

end

end A171462.P3231688765582046023

namespace A171462

/-- `A087156(n+1)-A087156(n+1)/A111089(n+1)` -/
def P3231688765582046023.Spec : Prop :=
  ∀ n, P3231688765582046023.a n = (A171462 (n + 1) : ℚ)

end A171462

/-! ## A171462.P5207911122489554146

`n+1-A122111(A064989(A322865(n+1)))`
-/

namespace A171462.P5207911122489554146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A122111 (A064989 (A322865 (n + 1)).toNat).toNat

end

end A171462.P5207911122489554146

namespace A171462

/-- `n+1-A122111(A064989(A322865(n+1)))` -/
def P5207911122489554146.Spec : Prop :=
  ∀ n, P5207911122489554146.a n = A171462 (n + 1)

end A171462

/-! ## A171462.P116482650378077345

`n+1-A346704(A342768(n+1))`
-/

namespace A171462.P116482650378077345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A346704 (A342768 (n + 1)).toNat

end

end A171462.P116482650378077345

namespace A171462

/-- `n+1-A346704(A342768(n+1))` -/
def P116482650378077345.Spec : Prop :=
  ∀ n, P116482650378077345.a n = A171462 (n + 1)

end A171462

/-! ## A171462.P17864568762633325689

`n+1-A302024(A302776(A302023(n+1)))`
-/

namespace A171462.P17864568762633325689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A302024 (A302776 (A302023 (n + 1)).toNat).toNat

end

end A171462.P17864568762633325689

namespace A171462

/-- `n+1-A302024(A302776(A302023(n+1)))` -/
def P17864568762633325689.Spec : Prop :=
  ∀ n, P17864568762633325689.a n = A171462 (n + 1)

end A171462

/-!
# A171463: The natural numbers excluding 2 and 3.

The programs for A171463, the canonical program `A171463.P18117027560620470688` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171463 has offset 1).

The definition of A171463 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171463.P18117027560620470688

`3%comp[∑[n]]+n`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171463

/-- `3%comp[∑[n]]+n` -/
def P18117027560620470688.Spec : Prop :=
  ∀ n, (P18117027560620470688.a n : ℤ) = A171463 (n + 1)

theorem P18117027560620470688.correct : P18117027560620470688.Spec := by
  intro n
  simp only [A171463, Nat.add_sub_cancel]

end A171463

/-!
# A171464: a(n) = 0+1+2+...+n in lunar arithmetic in base 4 written in base 10.

The programs for A171464, there is no canonical definition to state claims against.
-/

/-! ## A171464.P17875889594871426607

`4*a(floor(n/4))+3` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A171464.P17875889594871426607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  4 * a ⌊(n : ℚ) / 4⌋.toNat + 3

end

end A171464.P17875889594871426607

/-! ## A171464.P17343657709195290584

`or(n, a(A080678(n)-1))` with `a(0)=0`
-/

namespace A171464.P17343657709195290584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor n (a (A080678 n - 1).toNat)

end

end A171464.P17343657709195290584

/-! ## A171464.P1490516088121696634

`or(n, A336642(a(n-1)+1))` with `a(0)=0`
-/

namespace A171464.P1490516088121696634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (n : ℤ) (A336642 (a (n - 1) + 1).toNat)

end

end A171464.P1490516088121696634

/-! ## A171464.P9714706990740413310

`or(n, xor(n+1, A115304(n+1)))`
-/

namespace A171464.P9714706990740413310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (Int.xor (n + 1 : ℤ) (A115304 (n + 1)))

end

end A171464.P9714706990740413310

/-! ## A171464.P11287028473785544312

`or(n, ∑[A048298(A048647(n))])`
-/

namespace A171464.P11287028473785544312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (A048647 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A171464.P11287028473785544312

/-! ## A171464.P2767086773470095074

`or(n, ∑[A048298(A342217(n))])`
-/

namespace A171464.P2767086773470095074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (A342217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A171464.P2767086773470095074

/-! ## A171464.P12442097098290838322

`A133464(∑[char[A133464(n)]])-1`
-/

namespace A171464.P12442097098290838322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133464 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133464 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A171464.P12442097098290838322

/-! ## A171464.P8889481627384957139

`or(A003817(floor(n/3)), A234026(n))`
-/

namespace A171464.P8889481627384957139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003817 ⌊(n : ℚ) / 3⌋.toNat) (A234026 n)

end

end A171464.P8889481627384957139

/-! ## A171464.P14583890982404481882

`or(A003817(floor(n/3)), A245444(n))`
-/

namespace A171464.P14583890982404481882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003817 ⌊(n : ℚ) / 3⌋.toNat) (A245444 n)

end

end A171464.P14583890982404481882

/-! ## A171464.P13176316578235339878

`A005408(A005408(a(floor(n/4))))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A171464.P13176316578235339878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A005408 (A005408 (a ⌊(n : ℚ) / 4⌋.toNat).toNat).toNat

end

end A171464.P13176316578235339878

/-!
# A171465: Lexicographically earliest positive integer sequence such that no sum of consecutive terms is a positive square.

The programs for A171465, there is no canonical definition to state claims against.
-/

/-! ## A171465.P2691529180954593674

`Δ[A030193(n)]`
-/

namespace A171465.P2691529180954593674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171465.P2691529180954593674

/-! ## A171465.P17005352346041848994

`A030193(n+1)-A030193(n)`
-/

namespace A171465.P17005352346041848994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030193 (n + 1) - A030193 n

end

end A171465.P17005352346041848994

/-! ## A171465.P3571003461632349020

`Δ[A224839(n+1)]`
-/

namespace A171465.P3571003461632349020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171465.P3571003461632349020

/-! ## A171465.P17562291329187124823

`A224839(n+2)-A224839(n+1)`
-/

namespace A171465.P17562291329187124823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224839 (n + 2) - A224839 (n + 1)

end

end A171465.P17562291329187124823

/-! ## A171465.P12977262399090311154

`Δ[eq[0, A014586(n)]]`
-/

namespace A171465.P12977262399090311154
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014586 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A171465.P12977262399090311154

/-!
# A171468: Noncomposite numbers raised to powers 2 or 3.

The programs for A171468, there is no canonical definition to state claims against.
-/

/-! ## A171468.P17981793643846610352

`A008578(A008619(n))^(n%2+2)`
-/

namespace A171468.P17981793643846610352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A008619 n).toNat ^ (n % 2 + 2)

end

end A171468.P17981793643846610352

/-! ## A171468.P10681921037754601263

`A158611(A008619(n)+1)^(4-gcd(2, n))`
-/

namespace A171468.P10681921037754601263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158611 (A008619 n + 1).toNat : ℚ) ^ (4 - (Nat.gcd 2 n : ℤ) : ℤ)

end

end A171468.P10681921037754601263

/-! ## A171468.P4061552120978745606

`A008578(A008619(n))^A010693(n)`
-/

namespace A171468.P4061552120978745606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008578 (A008619 n).toNat : ℚ) ^ (A010693 n : ℤ)

end

end A171468.P4061552120978745606

/-! ## A171468.P3763344810027780717

`A008578(A008619(n))^A158478(n)`
-/

namespace A171468.P3763344810027780717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008578 (A008619 n).toNat : ℚ) ^ (A158478 n : ℤ)

end

end A171468.P3763344810027780717

/-! ## A171468.P15494376978792254701

`A008578(A008619(n))^A112048(3*n+1)`
-/

namespace A171468.P15494376978792254701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008578 (A008619 n).toNat : ℚ) ^ (A112048 (3 * n + 1) : ℤ)

end

end A171468.P15494376978792254701

/-!
# A171469: Nonnegative nonprimes which are neither the sum nor the product of two distinct primes.

The programs for A171469, there is no canonical definition to state claims against.
-/

/-! ## A171469.P5410329123514549931

`A131003(A053142(n))%A345541(n+1)`
-/

namespace A171469.P5410329123514549931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131003 (A053142 n).toNat) (A345541 (n + 1))

end

end A171469.P5410329123514549931

/-! ## A171469.P17194569379575868979

`A324337(A016930(n)%A253475(n+1))`
-/

namespace A171469.P17194569379575868979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 (Int.tmod (A016930 n) (A253475 (n + 1))).toNat

end

end A171469.P17194569379575868979

/-!
# A171470: a(n) = 6*a(n-1) - 8*a(n-2) for n > 2; a(0) = 11, a(1) = 90, a(2) = 372.

The programs for A171470, the canonical program `A171470.P18366401933479375708` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171470 has offset 0).

The definition of A171470 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-8*a(n-2)` (program `A171470.P18366401933479375708`, by `A171470.P18366401933479375708.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171470.P18366401933479375708

`6*a(n-1)-8*a(n-2)` with `a(0)=11, a(1)=90, a(2)=372`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171470

/-- `6*a(n-1)-8*a(n-2)` -/
def P18366401933479375708.Spec : Prop :=
  ∀ n, P18366401933479375708.a n = A171470 n

theorem P18366401933479375708.correct : P18366401933479375708.Spec := by
  intro n
  simp only [A171470]

end A171470

/-! ## A171470.P17918830863759662428

`A061561(4*n)/2`
-/

namespace A171470.P17918830863759662428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061561 (4 * n) : ℚ) / 2

end

end A171470.P17918830863759662428

namespace A171470

/-- `A061561(4*n)/2` -/
def P17918830863759662428.Spec : Prop :=
  ∀ n, P17918830863759662428.a n = (A171470 n : ℚ)

end A171470

/-! ## A171470.P14911282399471494064

`lcm(A003945(2*n+3)-A003945(n), A000079(n))`
-/

namespace A171470.P14911282399471494064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003945 (2 * n + 3) - A003945 n) (A000079 n)

end

end A171470.P14911282399471494064

namespace A171470

/-- `lcm(A003945(2*n+3)-A003945(n), A000079(n))` -/
def P14911282399471494064.Spec : Prop :=
  ∀ n, (P14911282399471494064.a n : ℤ) = A171470 n

end A171470

/-! ## A171470.P16257977454339839628

`A000079(n)+A027383(2*(n+2))*A063759(2*n)`
-/

namespace A171470.P16257977454339839628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + A027383 (2 * (n + 2)) * A063759 (2 * n)

end

end A171470.P16257977454339839628

namespace A171470

/-- `A000079(n)+A027383(2*(n+2))*A063759(2*n)` -/
def P16257977454339839628.Spec : Prop :=
  ∀ n, P16257977454339839628.a n = A171470 n

end A171470

/-!
# A171471: a(n) = 6*a(n-1)-8*a(n-2)-9 for n > 2; a(0) = 35, a(1) = 225, a(2) = 837.

The programs for A171471, the canonical program `A171471.P5072099310458637395` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171471 has offset 0).

The definition of A171471 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-8*a(n-2)-9` (program `A171471.P5072099310458637395`, by `A171471.P5072099310458637395.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171471.P5072099310458637395

`6*a(n-1)-8*a(n-2)-9` with `a(0)=35, a(1)=225, a(2)=837`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171471

/-- `6*a(n-1)-8*a(n-2)-9` -/
def P5072099310458637395.Spec : Prop :=
  ∀ n, P5072099310458637395.a n = A171471 n

theorem P5072099310458637395.correct : P5072099310458637395.Spec := by
  intro n
  simp only [A171471]

end A171471

/-! ## A171471.P16600107448934689266

`A061561(4*n+1)`
-/

namespace A171471.P16600107448934689266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061561 (4 * n + 1)

end

end A171471.P16600107448934689266

namespace A171471

/-- `A061561(4*n+1)` -/
def P16600107448934689266.Spec : Prop :=
  ∀ n, P16600107448934689266.a n = A171471 n

end A171471

/-! ## A171471.P17143584936915153571

`record[A061561(lcm(2, n+1)-1)]`
-/

namespace A171471.P17143584936915153571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061561 (Nat.lcm 2 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171471.P17143584936915153571

namespace A171471

/-- `record[A061561(lcm(2, n+1)-1)]` -/
def P17143584936915153571.Spec : Prop :=
  ∀ n, P17143584936915153571.a n = A171471 n

end A171471

/-! ## A171471.P15727388641161450876

`or(1, A061561(A016813(n)))`
-/

namespace A171471.P15727388641161450876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A061561 (A016813 n).toNat)

end

end A171471.P15727388641161450876

namespace A171471

/-- `or(1, A061561(A016813(n)))` -/
def P15727388641161450876.Spec : Prop :=
  ∀ n, P15727388641161450876.a n = A171471 n

end A171471

/-! ## A171471.P10866674083346832263

`A061561(A016813(n))%A176635(n)`
-/

namespace A171471.P10866674083346832263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061561 (A016813 n).toNat) (A176635 n)

end

end A171471.P10866674083346832263

namespace A171471

/-- `A061561(A016813(n))%A176635(n)` -/
def P10866674083346832263.Spec : Prop :=
  ∀ n, P10866674083346832263.a n = A171471 n

end A171471

/-! ## A171471.P16125927638348148614

`A061561(A016813(n))+A000007(n+1)`
-/

namespace A171471.P16125927638348148614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061561 (A016813 n).toNat + A000007 (n + 1)

end

end A171471.P16125927638348148614

namespace A171471

/-- `A061561(A016813(n))+A000007(n+1)` -/
def P16125927638348148614.Spec : Prop :=
  ∀ n, P16125927638348148614.a n = A171471 n

end A171471

/-! ## A171471.P14549585461943365379

`A061561(A016813(n))+A000038(n+1)`
-/

namespace A171471.P14549585461943365379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061561 (A016813 n).toNat + A000038 (n + 1)

end

end A171471.P14549585461943365379

namespace A171471

/-- `A061561(A016813(n))+A000038(n+1)` -/
def P14549585461943365379.Spec : Prop :=
  ∀ n, P14549585461943365379.a n = A171471 n

end A171471

/-! ## A171471.P11361525942895241810

`A061561(A016813(n))/A000265(A057728(n+1))`
-/

namespace A171471.P11361525942895241810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061561 (A016813 n).toNat : ℚ) / (A000265 (A057728 (n + 1)).toNat : ℚ)

end

end A171471.P11361525942895241810

namespace A171471

/-- `A061561(A016813(n))/A000265(A057728(n+1))` -/
def P11361525942895241810.Spec : Prop :=
  ∀ n, P11361525942895241810.a n = (A171471 n : ℚ)

end A171471

/-! ## A171471.P887830052545040733

`A061561(A016813(n))*A119963(∑[n])`
-/

namespace A171471.P887830052545040733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061561 (A016813 n).toNat * A119963 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A171471.P887830052545040733

namespace A171471

/-- `A061561(A016813(n))*A119963(∑[n])` -/
def P887830052545040733.Spec : Prop :=
  ∀ n, P887830052545040733.a n = A171471 n

end A171471

/-! ## A171471.P687868993056806910

`A061561(xor(1, 4*n))-A055671(n²)`
-/

namespace A171471.P687868993056806910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061561 (Nat.xor 1 (4 * n)) - A055671 (n ^ 2)

end

end A171471.P687868993056806910

namespace A171471

/-- `A061561(xor(1, 4*n))-A055671(n²)` -/
def P687868993056806910.Spec : Prop :=
  ∀ n, P687868993056806910.a n = A171471 n

end A171471

/-!
# A171472: a(n) = 6*a(n-1) - 8*a(n-2) for n > 1; a(0) = 7, a(1) = 30.

The programs for A171472, the canonical program `A171472.P10073945243481517280` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171472 has offset 0).

The definition of A171472 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-8*a(n-2)` (program `A171472.P10073945243481517280`, by `A171472.P10073945243481517280.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171472.P6086533919595339615

`8*4^n-2^n`
-/

namespace A171472.P6086533919595339615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * 4 ^ n : ℤ) - (2 ^ n : ℤ)

end

end A171472.P6086533919595339615

namespace A171472

/-- `8*4^n-2^n` -/
def P6086533919595339615.Spec : Prop :=
  ∀ n, P6086533919595339615.a n = A171472 n

theorem P6086533919595339615.correct : P6086533919595339615.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A171472, Nat.add_sub_cancel, A171472.P6086533919595339615.a, A171472.P10073945243481517280.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A171472, Nat.add_sub_cancel, A171472.P6086533919595339615.a, A171472.P10073945243481517280.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A171472

/-! ## A171472.P10073945243481517280

`6*a(n-1)-8*a(n-2)` with `a(0)=7, a(1)=30`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171472

/-- `6*a(n-1)-8*a(n-2)` -/
def P10073945243481517280.Spec : Prop :=
  ∀ n, P10073945243481517280.a n = A171472 n

theorem P10073945243481517280.correct : P10073945243481517280.Spec := by
  intro n
  simp only [A171472]

end A171472

/-! ## A171472.P12152129761026182050

`A171499(n+1)/2`
-/

namespace A171472.P12152129761026182050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171499 (n + 1) : ℚ) / 2

end

end A171472.P12152129761026182050

namespace A171472

/-- `A171499(n+1)/2` -/
def P12152129761026182050.Spec : Prop :=
  ∀ n, P12152129761026182050.a n = (A171472 n : ℚ)

end A171472

/-! ## A171472.P18392118729130595352

`ogf((7-12x)/(1-6x+8x^2))`
-/

namespace A171472.P18392118729130595352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -12] [1, -6, 8] n

end

end A171472.P18392118729130595352

namespace A171472

/-- `ogf((7-12x)/(1-6x+8x^2))` -/
def P18392118729130595352.Spec : Prop :=
  ∀ n, P18392118729130595352.a n = A171472 n

end A171472

/-! ## A171472.P13270642489685063786

`lcm(2^(n+3)-1, 2^n)`
-/

namespace A171472.P13270642489685063786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((2 ^ (n + 3) : ℤ) - 1) (2 ^ n : ℤ)

end

end A171472.P13270642489685063786

namespace A171472

/-- `lcm(2^(n+3)-1, 2^n)` -/
def P13270642489685063786.Spec : Prop :=
  ∀ n, (P13270642489685063786.a n : ℤ) = A171472 n

end A171472

/-! ## A171472.P2623681747843927553

`or(2*a(n-1), 4*a(n-1))` with `a(0)=7`
-/

namespace A171472.P2623681747843927553
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  Nat.lor (2 * a (n - 1)) (4 * a (n - 1))

end

end A171472.P2623681747843927553

namespace A171472

/-- `or(2*a(n-1), 4*a(n-1))` -/
def P2623681747843927553.Spec : Prop :=
  ∀ n, (P2623681747843927553.a n : ℤ) = A171472 n

end A171472

/-! ## A171472.P18340579939358843320

`xor(1, 4^(n+1)+a(n-1)+a(n-1)+1)` with `a(0)=7`
-/

namespace A171472.P18340579939358843320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  Nat.xor 1 (4 ^ (n + 1) + (a (n - 1) + (a (n - 1) + 1)))

end

end A171472.P18340579939358843320

namespace A171472

/-- `xor(1, 4^(n+1)+a(n-1)+a(n-1)+1)` -/
def P18340579939358843320.Spec : Prop :=
  ∀ n, (P18340579939358843320.a n : ℤ) = A171472 n

end A171472

/-! ## A171472.P17432418378695190150

`xor(2^n, A171496(n))`
-/

namespace A171472.P17432418378695190150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 ^ n : ℤ) (A171496 n)

end

end A171472.P17432418378695190150

namespace A171472

/-- `xor(2^n, A171496(n))` -/
def P17432418378695190150.Spec : Prop :=
  ∀ n, P17432418378695190150.a n = A171472 n

end A171472

/-! ## A171472.P11349510623892418352

`ceil(A187560(n+1)/2)`
-/

namespace A171472.P11349510623892418352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A187560 (n + 1) : ℚ) / 2⌉

end

end A171472.P11349510623892418352

namespace A171472

/-- `ceil(A187560(n+1)/2)` -/
def P11349510623892418352.Spec : Prop :=
  ∀ n, P11349510623892418352.a n = A171472 n

end A171472

/-! ## A171472.P6521978534250581236

`2^n*A126646(n+2)`
-/

namespace A171472.P6521978534250581236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A126646 (n + 2)

end

end A171472.P6521978534250581236

namespace A171472

/-- `2^n*A126646(n+2)` -/
def P6521978534250581236.Spec : Prop :=
  ∀ n, P6521978534250581236.a n = A171472 n

end A171472

/-! ## A171472.P13449498631100760382

`2^n*A000225(n+3)`
-/

namespace A171472.P13449498631100760382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000225 (n + 3)

end

end A171472.P13449498631100760382

namespace A171472

/-- `2^n*A000225(n+3)` -/
def P13449498631100760382.Spec : Prop :=
  ∀ n, P13449498631100760382.a n = A171472 n

end A171472

/-! ## A171472.P7515649800391556157

`2^n*A255047(n+3)`
-/

namespace A171472.P7515649800391556157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A255047 (n + 3)

end

end A171472.P7515649800391556157

namespace A171472

/-- `2^n*A255047(n+3)` -/
def P7515649800391556157.Spec : Prop :=
  ∀ n, P7515649800391556157.a n = A171472 n

end A171472

/-! ## A171472.P15961856225323881299

`2^n*A283592(n+3)`
-/

namespace A171472.P15961856225323881299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A283592 (n + 3)

end

end A171472.P15961856225323881299

namespace A171472

/-- `2^n*A283592(n+3)` -/
def P15961856225323881299.Spec : Prop :=
  ∀ n, P15961856225323881299.a n = A171472 n

end A171472

/-! ## A171472.P4592980458843796723

`xor(A002042(n), A020522(n))`
-/

namespace A171472.P4592980458843796723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002042 n) (A020522 n)

end

end A171472.P4592980458843796723

namespace A171472

/-- `xor(A002042(n), A020522(n))` -/
def P4592980458843796723.Spec : Prop :=
  ∀ n, P4592980458843796723.a n = A171472 n

end A171472

/-! ## A171472.P4473186636721451213

`xor(A007283(n), A059153(n))`
-/

namespace A171472.P4473186636721451213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007283 n) (A059153 n)

end

end A171472.P4473186636721451213

namespace A171472

/-- `xor(A007283(n), A059153(n))` -/
def P4473186636721451213.Spec : Prop :=
  ∀ n, P4473186636721451213.a n = A171472 n

end A171472

/-! ## A171472.P10749566647361686603

`xor(A002023(n), A171476(n))`
-/

namespace A171472.P10749566647361686603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002023 n) (A171476 n)

end

end A171472.P10749566647361686603

namespace A171472

/-- `xor(A002023(n), A171476(n))` -/
def P10749566647361686603.Spec : Prop :=
  ∀ n, P10749566647361686603.a n = A171472 n

end A171472

/-! ## A171472.P1554756190425196017

`xor(A099393(n), A198694(n))`
-/

namespace A171472.P1554756190425196017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A099393 n) (A198694 n)

end

end A171472.P1554756190425196017

namespace A171472

/-- `xor(A099393(n), A198694(n))` -/
def P1554756190425196017.Spec : Prop :=
  ∀ n, P1554756190425196017.a n = A171472 n

end A171472

/-! ## A171472.P16559631360746229472

`or(A171476(n+1), A171476(n))`
-/

namespace A171472.P16559631360746229472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A171476 (n + 1)) (A171476 n)

end

end A171472.P16559631360746229472

namespace A171472

/-- `or(A171476(n+1), A171476(n))` -/
def P16559631360746229472.Spec : Prop :=
  ∀ n, P16559631360746229472.a n = A171472 n

end A171472

/-! ## A171472.P4511652980963709751

`or(A266976(n+1), A266976(n))`
-/

namespace A171472.P4511652980963709751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266976 (n + 1)) (A266976 n)

end

end A171472.P4511652980963709751

namespace A171472

/-- `or(A266976(n+1), A266976(n))` -/
def P4511652980963709751.Spec : Prop :=
  ∀ n, P4511652980963709751.a n = A171472 n

end A171472

/-! ## A171472.P12057081196768649350

`xor(A092431(n+1), A140529(n))`
-/

namespace A171472.P12057081196768649350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A092431 (n + 1)) (A140529 n)

end

end A171472.P12057081196768649350

namespace A171472

/-- `xor(A092431(n+1), A140529(n))` -/
def P12057081196768649350.Spec : Prop :=
  ∀ n, P12057081196768649350.a n = A171472 n

end A171472

/-!
# A171473: a(n) = 6*a(n-1) - 8*a(n-2)-3 for n > 1; a(0) = 35, a(1) = 135.

The programs for A171473, the canonical program `A171473.P6970156745614230830` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171473 has offset 0).

The definition of A171473 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-8*a(n-2)-3` (program `A171473.P6970156745614230830`, by `A171473.P6970156745614230830.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171473.P17031557814204752575

`32*4^n+4*2^n-1`
-/

namespace A171473.P17031557814204752575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (32 * 4 ^ n + 4 * 2 ^ n : ℤ) - 1

end

end A171473.P17031557814204752575

namespace A171473

/-- `32*4^n+4*2^n-1` -/
def P17031557814204752575.Spec : Prop :=
  ∀ n, P17031557814204752575.a n = A171473 n

theorem P17031557814204752575.correct : P17031557814204752575.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A171473, Nat.add_sub_cancel, A171473.P17031557814204752575.a, A171473.P6970156745614230830.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A171473, Nat.add_sub_cancel, A171473.P17031557814204752575.a, A171473.P6970156745614230830.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A171473

/-! ## A171473.P6970156745614230830

`6*a(n-1)-8*a(n-2)-3` with `a(0)=35, a(1)=135`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171473

/-- `6*a(n-1)-8*a(n-2)-3` -/
def P6970156745614230830.Spec : Prop :=
  ∀ n, P6970156745614230830.a n = A171473 n

theorem P6970156745614230830.correct : P6970156745614230830.Spec := by
  intro n
  simp only [A171473]

end A171473

/-! ## A171473.P10830193327552061695

`A092431(n+3)`
-/

namespace A171473.P10830193327552061695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092431 (n + 3)

end

end A171473.P10830193327552061695

namespace A171473

/-- `A092431(n+3)` -/
def P10830193327552061695.Spec : Prop :=
  ∀ n, P10830193327552061695.a n = A171473 n

end A171473

/-! ## A171473.P17710709703647841591

`A005367(n+2)/2`
-/

namespace A171473.P17710709703647841591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005367 (n + 2) : ℚ) / 2

end

end A171473.P17710709703647841591

namespace A171473

/-- `A005367(n+2)/2` -/
def P17710709703647841591.Spec : Prop :=
  ∀ n, P17710709703647841591.a n = (A171473 n : ℚ)

end A171473

/-! ## A171473.P5002205193629906766

`A056326(2*n+7)`
-/

namespace A171473.P5002205193629906766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056326 (2 * n + 7)

end

end A171473.P5002205193629906766

namespace A171473

/-- `A056326(2*n+7)` -/
def P5002205193629906766.Spec : Prop :=
  ∀ n, P5002205193629906766.a n = A171473 n

end A171473

/-! ## A171473.P16968709088564411233

`floor(A099393(n+3)/2)`
-/

namespace A171473.P16968709088564411233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A099393 (n + 3) : ℚ) / 2⌋

end

end A171473.P16968709088564411233

namespace A171473

/-- `floor(A099393(n+3)/2)` -/
def P16968709088564411233.Spec : Prop :=
  ∀ n, P16968709088564411233.a n = A171473 n

end A171473

/-! ## A171473.P9281240390902767121

`(A001576(n+3)-3)/2`
-/

namespace A171473.P9281240390902767121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001576 (n + 3) - 3 : ℚ) / 2

end

end A171473.P9281240390902767121

namespace A171473

/-- `(A001576(n+3)-3)/2` -/
def P9281240390902767121.Spec : Prop :=
  ∀ n, P9281240390902767121.a n = (A171473 n : ℚ)

end A171473

/-! ## A171473.P18011798952052061300

`A020737(n)*A126646(n+2)`
-/

namespace A171473.P18011798952052061300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020737 n * A126646 (n + 2)

end

end A171473.P18011798952052061300

namespace A171473

/-- `A020737(n)*A126646(n+2)` -/
def P18011798952052061300.Spec : Prop :=
  ∀ n, P18011798952052061300.a n = A171473 n

end A171473

/-! ## A171473.P10641061123621073153

`A000051(n+2)*A126646(n+2)`
-/

namespace A171473.P10641061123621073153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 2) * A126646 (n + 2)

end

end A171473.P10641061123621073153

namespace A171473

/-- `A000051(n+2)*A126646(n+2)` -/
def P10641061123621073153.Spec : Prop :=
  ∀ n, P10641061123621073153.a n = A171473 n

end A171473

/-! ## A171473.P6842414299542003478

`A000051(n+2)*A000225(n+3)`
-/

namespace A171473.P6842414299542003478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 2) * A000225 (n + 3)

end

end A171473.P6842414299542003478

namespace A171473

/-- `A000051(n+2)*A000225(n+3)` -/
def P6842414299542003478.Spec : Prop :=
  ∀ n, P6842414299542003478.a n = A171473 n

end A171473

/-! ## A171473.P3385069971304077973

`A000225(n+3)*A083318(n+2)`
-/

namespace A171473.P3385069971304077973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 3) * A083318 (n + 2)

end

end A171473.P3385069971304077973

namespace A171473

/-- `A000225(n+3)*A083318(n+2)` -/
def P3385069971304077973.Spec : Prop :=
  ∀ n, P3385069971304077973.a n = A171473 n

end A171473

/-! ## A171473.P13328861335738415611

`(A020707(n+1)-1)*A048578(n+1)`
-/

namespace A171473.P13328861335738415611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020707 (n + 1) - 1) * A048578 (n + 1)

end

end A171473.P13328861335738415611

namespace A171473

/-- `(A020707(n+1)-1)*A048578(n+1)` -/
def P13328861335738415611.Spec : Prop :=
  ∀ n, P13328861335738415611.a n = A171473 n

end A171473

/-! ## A171473.P7379561371264351837

`(A020737(n+1)-2)*A048578(n+1)`
-/

namespace A171473.P7379561371264351837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020737 (n + 1) - 2) * A048578 (n + 1)

end

end A171473.P7379561371264351837

namespace A171473

/-- `(A020737(n+1)-2)*A048578(n+1)` -/
def P7379561371264351837.Spec : Prop :=
  ∀ n, P7379561371264351837.a n = A171473 n

end A171473

/-! ## A171473.P1519476908442829283

`A000225(n+3)/2*A056469(n+4)`
-/

namespace A171473.P1519476908442829283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 (n + 3) : ℚ) / 2 * (A056469 (n + 4) : ℚ)

end

end A171473.P1519476908442829283

namespace A171473

/-- `A000225(n+3)/2*A056469(n+4)` -/
def P1519476908442829283.Spec : Prop :=
  ∀ n, P1519476908442829283.a n = (A171473 n : ℚ)

end A171473

/-! ## A171473.P13674271146334076755

`(A083683(n)-A164094(n))*A020737(n)`
-/

namespace A171473.P13674271146334076755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A083683 n - A164094 n) * A020737 n

end

end A171473.P13674271146334076755

namespace A171473

/-- `(A083683(n)-A164094(n))*A020737(n)` -/
def P13674271146334076755.Spec : Prop :=
  ∀ n, P13674271146334076755.a n = A171473 n

end A171473

/-! ## A171473.P7917167978783125893

`A171471(n+1)/A171470(n+1)*A171499(n+1)`
-/

namespace A171473.P7917167978783125893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171471 (n + 1) : ℚ) / (A171470 (n + 1) : ℚ) * (A171499 (n + 1) : ℚ)

end

end A171473.P7917167978783125893

namespace A171473

/-- `A171471(n+1)/A171470(n+1)*A171499(n+1)` -/
def P7917167978783125893.Spec : Prop :=
  ∀ n, P7917167978783125893.a n = (A171473 n : ℚ)

end A171473

/-!
# A171474: n-th prime^n-th nonnegative nonprime (without repetition).

The programs for A171474, there is no canonical definition to state claims against.
-/

/-! ## A171474.P16598411212122451135

`lt[A381401(n+1), 2]+1`
-/

namespace A171474.P16598411212122451135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381401 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A171474.P16598411212122451135

/-! ## A171474.P13785755316919961503

`∪[p?[xor(1, n)+1], A001597(n+1)²]`
-/

namespace A171474.P13785755316919961503
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A171474.P13785755316919961503

/-! ## A171474.P15542929582139824259

`record[A034699(A167175(n+1))]`
-/

namespace A171474.P15542929582139824259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A167175 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171474.P15542929582139824259

/-! ## A171474.P8047126437673249353

`filter[A154893(n+1), A010055(#)]`
-/

namespace A171474.P8047126437673249353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A171474.P8047126437673249353

/-! ## A171474.P4149695512143237606

`filter[A167175(n+1), A010055(#)]`
-/

namespace A171474.P4149695512143237606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A171474.P4149695512143237606

/-! ## A171474.P10740266877117942249

`filter[A274034(n+1), A010055(#)]`
-/

namespace A171474.P10740266877117942249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A171474.P10740266877117942249

/-! ## A171474.P5336007514823122000

`filter[A154893(n+1), A344885(#)]`
-/

namespace A171474.P5336007514823122000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344885 (f1 j).toNat = 1) n)

end

end A171474.P5336007514823122000

/-! ## A171474.P15041988674726116776

`filter[A154893(n+1), A354923(#)]`
-/

namespace A171474.P15041988674726116776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A171474.P15041988674726116776

/-! ## A171474.P14560979710208917628

`filter[A167175(n+1), A354923(#)]`
-/

namespace A171474.P14560979710208917628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A171474.P14560979710208917628

/-! ## A171474.P7552506757576449586

`filter[A274034(n+1), A324290(#)]`
-/

namespace A171474.P7552506757576449586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A171474.P7552506757576449586

/-!
# A171475: a(n) = 6*a(n-1) - 8*a(n-2), for n > 2, with a(0) = 1, a(1) = 6, a(2) = 27.

The programs for A171475, the canonical program `A171475.P871723670579905909` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171475 has offset 0).

The definition of A171475 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-8*a(n-2)` (program `A171475.P871723670579905909`, by `A171475.P871723670579905909.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171475.P871723670579905909

`6*a(n-1)-8*a(n-2)` with `a(0)=1, a(1)=6, a(2)=27`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171475

/-- `6*a(n-1)-8*a(n-2)` -/
def P871723670579905909.Spec : Prop :=
  ∀ n, P871723670579905909.a n = A171475 n

theorem P871723670579905909.correct : P871723670579905909.Spec := by
  intro n
  simp only [A171475]

end A171475

/-! ## A171475.P5848741116559766231

`ogf((1-x^2)/(1-6x+8x^2))`
-/

namespace A171475.P5848741116559766231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1] [1, -6, 8] n

end

end A171475.P5848741116559766231

namespace A171475

/-- `ogf((1-x^2)/(1-6x+8x^2))` -/
def P5848741116559766231.Spec : Prop :=
  ∀ n, P5848741116559766231.a n = A171475 n

end A171475

/-! ## A171475.P6746092899929274247

`(A080960(n)+A003947(n))/2`
-/

namespace A171475.P6746092899929274247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080960 n + A003947 n : ℚ) / 2

end

end A171475.P6746092899929274247

namespace A171475

/-- `(A080960(n)+A003947(n))/2` -/
def P6746092899929274247.Spec : Prop :=
  ∀ n, P6746092899929274247.a n = (A171475 n : ℚ)

end A171475

/-! ## A171475.P2604530995950368990

`record[A110164(n)]+C(A003945(n), 2)`
-/

namespace A171475.P2604530995950368990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (Nat.choose (A003945 n).toNat 2 : ℤ)

end

end A171475.P2604530995950368990

namespace A171475

/-- `record[A110164(n)]+C(A003945(n), 2)` -/
def P2604530995950368990.Spec : Prop :=
  ∀ n, P2604530995950368990.a n = A171475 n

end A171475

/-! ## A171475.P16383515414379338097

`2*A000079(n)²-A290075(2*n+1)`
-/

namespace A171475.P16383515414379338097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n ^ 2 - A290075 (2 * n + 1)

end

end A171475.P16383515414379338097

namespace A171475

/-- `2*A000079(n)²-A290075(2*n+1)` -/
def P16383515414379338097.Spec : Prop :=
  ∀ n, P16383515414379338097.a n = A171475 n

end A171475

/-! ## A171475.P11893616815045382342

`A000079(2*n+1)-A290075(2*n+1)`
-/

namespace A171475.P11893616815045382342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n + 1) - A290075 (2 * n + 1)

end

end A171475.P11893616815045382342

namespace A171475

/-- `A000079(2*n+1)-A290075(2*n+1)` -/
def P11893616815045382342.Spec : Prop :=
  ∀ n, P11893616815045382342.a n = A171475 n

end A171475

/-! ## A171475.P7420305336773605272

`A006516(n+1)-A006516((n-1)%(n+1))`
-/

namespace A171475.P7420305336773605272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 (n + 1) - A006516 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A171475.P7420305336773605272

namespace A171475

/-- `A006516(n+1)-A006516((n-1)%(n+1))` -/
def P7420305336773605272.Spec : Prop :=
  ∀ n, P7420305336773605272.a n = A171475 n

end A171475

/-! ## A171475.P12817743225569261099

`A006516(n+1)-A006516(A140106(2*n+1))`
-/

namespace A171475.P12817743225569261099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 (n + 1) - A006516 (A140106 (2 * n + 1)).toNat

end

end A171475.P12817743225569261099

namespace A171475

/-- `A006516(n+1)-A006516(A140106(2*n+1))` -/
def P12817743225569261099.Spec : Prop :=
  ∀ n, P12817743225569261099.a n = A171475 n

end A171475

/-! ## A171475.P9255527337844196431

`A003945(2*n)+A122391(2*n)-A122391(n+1)`
-/

namespace A171475.P9255527337844196431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (2 * n) + (A122391 (2 * n) - A122391 (n + 1))

end

end A171475.P9255527337844196431

namespace A171475

/-- `A003945(2*n)+A122391(2*n)-A122391(n+1)` -/
def P9255527337844196431.Spec : Prop :=
  ∀ n, P9255527337844196431.a n = A171475 n

end A171475

/-! ## A171475.P13134055845347418528

`A098011(2*n+1)+A003945(2*n)-A098011(n+2)`
-/

namespace A171475.P13134055845347418528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (2 * n + 1) + (A003945 (2 * n) - A098011 (n + 2))

end

end A171475.P13134055845347418528

namespace A171475

/-- `A098011(2*n+1)+A003945(2*n)-A098011(n+2)` -/
def P13134055845347418528.Spec : Prop :=
  ∀ n, P13134055845347418528.a n = A171475 n

end A171475

/-! ## A171475.P13600551053362648540

`A098011(2*n+1)+A111286(2*n+1)-A098011(n+2)`
-/

namespace A171475.P13600551053362648540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (2 * n + 1) + (A111286 (2 * n + 1) - A098011 (n + 2))

end

end A171475.P13600551053362648540

namespace A171475

/-- `A098011(2*n+1)+A111286(2*n+1)-A098011(n+2)` -/
def P13600551053362648540.Spec : Prop :=
  ∀ n, P13600551053362648540.a n = A171475 n

end A171475

/-!
# A171476: a(n) = 6*a(n-1) - 8*a(n-2) for n > 1, a(0)=1, a(1)=6.

The programs for A171476, the canonical program `A171476.P12288369302507439789` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171476 has offset 0).

The definition of A171476 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-8*a(n-2)` (program `A171476.P12288369302507439789`, by `A171476.P12288369302507439789.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171476.P2909027991796807384

`2*4^n-2^n`
-/

namespace A171476.P2909027991796807384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 4 ^ n : ℤ) - (2 ^ n : ℤ)

end

end A171476.P2909027991796807384

namespace A171476

/-- `2*4^n-2^n` -/
def P2909027991796807384.Spec : Prop :=
  ∀ n, P2909027991796807384.a n = A171476 n

theorem P2909027991796807384.correct : P2909027991796807384.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A171476, Nat.add_sub_cancel, A171476.P2909027991796807384.a, A171476.P12288369302507439789.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A171476, Nat.add_sub_cancel, A171476.P2909027991796807384.a, A171476.P12288369302507439789.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A171476

/-! ## A171476.P12288369302507439789

`6*a(n-1)-8*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171476

/-- `6*a(n-1)-8*a(n-2)` -/
def P12288369302507439789.Spec : Prop :=
  ∀ n, P12288369302507439789.a n = A171476 n

theorem P12288369302507439789.correct : P12288369302507439789.Spec := by
  intro n
  simp only [A171476]

end A171476

/-! ## A171476.P15306353906140319360

`A006516(n+1)`
-/

namespace A171476.P15306353906140319360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 (n + 1)

end

end A171476.P15306353906140319360

namespace A171476

/-- `A006516(n+1)` -/
def P15306353906140319360.Spec : Prop :=
  ∀ n, P15306353906140319360.a n = A171476 n

end A171476

/-! ## A171476.P9865531171135834499

`A020522(n+1)/2`
-/

namespace A171476.P9865531171135834499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020522 (n + 1) : ℚ) / 2

end

end A171476.P9865531171135834499

namespace A171476

/-- `A020522(n+1)/2` -/
def P9865531171135834499.Spec : Prop :=
  ∀ n, P9865531171135834499.a n = (A171476 n : ℚ)

end A171476

/-! ## A171476.P4333391059163356270

`ogf(1/(1-6x+8x^2))`
-/

namespace A171476.P4333391059163356270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -6, 8] n

end

end A171476.P4333391059163356270

namespace A171476

/-- `ogf(1/(1-6x+8x^2))` -/
def P4333391059163356270.Spec : Prop :=
  ∀ n, P4333391059163356270.a n = A171476 n

end A171476

/-! ## A171476.P13601888695588174081

`lcm(2^n, ∑[2^n])`
-/

namespace A171476.P13601888695588174081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 ^ n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A171476.P13601888695588174081

namespace A171476

/-- `lcm(2^n, ∑[2^n])` -/
def P13601888695588174081.Spec : Prop :=
  ∀ n, (P13601888695588174081.a n : ℤ) = A171476 n

end A171476

/-! ## A171476.P2943574659008916410

`∑[C(2^n, 2)+4^n]`
-/

namespace A171476.P2943574659008916410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ n) 2 + 4 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171476.P2943574659008916410

namespace A171476

/-- `∑[C(2^n, 2)+4^n]` -/
def P2943574659008916410.Spec : Prop :=
  ∀ n, (P2943574659008916410.a n : ℤ) = A171476 n

end A171476

/-! ## A171476.P15845235398024528822

`∑[or(4^n, C(2^n, 2))]`
-/

namespace A171476.P15845235398024528822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (4 ^ n) (Nat.choose (2 ^ n) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171476.P15845235398024528822

namespace A171476

/-- `∑[or(4^n, C(2^n, 2))]` -/
def P15845235398024528822.Spec : Prop :=
  ∀ n, (P15845235398024528822.a n : ℤ) = A171476 n

end A171476

/-! ## A171476.P17825045418612517349

`round(2^n/acot(∑[2^n]))`
-/

namespace A171476.P17825045418612517349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A171476.P17825045418612517349

namespace A171476

/-- `round(2^n/acot(∑[2^n]))` -/
def P17825045418612517349.Spec : Prop :=
  ∀ n, P17825045418612517349.a n = A171476 n

end A171476

/-! ## A171476.P14600715857408127194

`or(2*a(n-1), 4*a(n-1))` with `a(0)=1`
-/

namespace A171476.P14600715857408127194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (2 * a (n - 1)) (4 * a (n - 1))

end

end A171476.P14600715857408127194

namespace A171476

/-- `or(2*a(n-1), 4*a(n-1))` -/
def P14600715857408127194.Spec : Prop :=
  ∀ n, (P14600715857408127194.a n : ℤ) = A171476 n

end A171476

/-! ## A171476.P3652585153616051158

`∑[A010036(n)]`
-/

namespace A171476.P3652585153616051158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171476.P3652585153616051158

namespace A171476

/-- `∑[A010036(n)]` -/
def P3652585153616051158.Spec : Prop :=
  ∀ n, P3652585153616051158.a n = A171476 n

end A171476

/-! ## A171476.P10864683616875536728

`record[A278756(n)]`
-/

namespace A171476.P10864683616875536728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171476.P10864683616875536728

namespace A171476

/-- `record[A278756(n)]` -/
def P10864683616875536728.Spec : Prop :=
  ∀ n, P10864683616875536728.a n = A171476 n

end A171476

/-! ## A171476.P13170694167867054346

`record[A282418(n)]`
-/

namespace A171476.P13170694167867054346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171476.P13170694167867054346

namespace A171476

/-- `record[A282418(n)]` -/
def P13170694167867054346.Spec : Prop :=
  ∀ n, P13170694167867054346.a n = A171476 n

end A171476

/-! ## A171476.P15457895025484413333

`record[A287470(n)]`
-/

namespace A171476.P15457895025484413333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171476.P15457895025484413333

namespace A171476

/-- `record[A287470(n)]` -/
def P15457895025484413333.Spec : Prop :=
  ∀ n, P15457895025484413333.a n = A171476 n

end A171476

/-! ## A171476.P16636649314712571238

`A122746(2*n)`
-/

namespace A171476.P16636649314712571238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122746 (2 * n)

end

end A171476.P16636649314712571238

namespace A171476

/-- `A122746(2*n)` -/
def P16636649314712571238.Spec : Prop :=
  ∀ n, P16636649314712571238.a n = A171476 n

end A171476

/-! ## A171476.P10563456830442477693

`A278756(2*n)`
-/

namespace A171476.P10563456830442477693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278756 (2 * n)

end

end A171476.P10563456830442477693

namespace A171476

/-- `A278756(2*n)` -/
def P10563456830442477693.Spec : Prop :=
  ∀ n, P10563456830442477693.a n = A171476 n

end A171476

/-! ## A171476.P4167202155306113926

`A282418(2*n)`
-/

namespace A171476.P4167202155306113926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282418 (2 * n)

end

end A171476.P4167202155306113926

namespace A171476

/-- `A282418(2*n)` -/
def P4167202155306113926.Spec : Prop :=
  ∀ n, P4167202155306113926.a n = A171476 n

end A171476

/-! ## A171476.P3038173543681808967

`A285543(2*n)`
-/

namespace A171476.P3038173543681808967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285543 (2 * n)

end

end A171476.P3038173543681808967

namespace A171476

/-- `A285543(2*n)` -/
def P3038173543681808967.Spec : Prop :=
  ∀ n, P3038173543681808967.a n = A171476 n

end A171476

/-! ## A171476.P5951034037222670195

`A287470(2*n)`
-/

namespace A171476.P5951034037222670195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287470 (2 * n)

end

end A171476.P5951034037222670195

namespace A171476

/-- `A287470(2*n)` -/
def P5951034037222670195.Spec : Prop :=
  ∀ n, P5951034037222670195.a n = A171476 n

end A171476

/-! ## A171476.P3180475376028936204

`A290419(2*n)`
-/

namespace A171476.P3180475376028936204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290419 (2 * n)

end

end A171476.P3180475376028936204

namespace A171476

/-- `A290419(2*n)` -/
def P3180475376028936204.Spec : Prop :=
  ∀ n, P3180475376028936204.a n = A171476 n

end A171476

/-!
# A171477: a(n) = 6*a(n-1) - 8*a(n-2) + 1 for n > 1; a(0) = 1, a(1) = 7.

The programs for A171477, the canonical program `A171477.P14400577644854713326` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171477 has offset 0).

The definition of A171477 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-8*a(n-2)+1` (program `A171477.P14400577644854713326`, by `A171477.P14400577644854713326.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171477.P14400577644854713326

`6*a(n-1)-8*a(n-2)+1` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171477

/-- `6*a(n-1)-8*a(n-2)+1` -/
def P14400577644854713326.Spec : Prop :=
  ∀ n, P14400577644854713326.a n = A171477 n

theorem P14400577644854713326.correct : P14400577644854713326.Spec := by
  intro n
  simp only [A171477]

end A171477

/-! ## A171477.P986379654521196920

`(8*4^n-6*2^n+1)/3`
-/

namespace A171477.P986379654521196920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 * 4 ^ n : ℤ) - (6 * 2 ^ n : ℤ) + 1 : ℚ) / 3

end

end A171477.P986379654521196920

namespace A171477

/-- `(8*4^n-6*2^n+1)/3` -/
def P986379654521196920.Spec : Prop :=
  ∀ n, P986379654521196920.a n = (A171477 n : ℚ)

theorem P986379654521196920.correct : P986379654521196920.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A171477, Nat.add_sub_cancel, A171477.P986379654521196920.a, A171477.P14400577644854713326.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A171477, Nat.add_sub_cancel, A171477.P986379654521196920.a, A171477.P14400577644854713326.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A171477

/-! ## A171477.P12544384656336334143

`A139250(2^(n+1)-1)`
-/

namespace A171477.P12544384656336334143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 (2 ^ (n + 1) - 1)

end

end A171477.P12544384656336334143

namespace A171477

/-- `A139250(2^(n+1)-1)` -/
def P12544384656336334143.Spec : Prop :=
  ∀ n, P12544384656336334143.a n = A171477 n

end A171477

/-! ## A171477.P4506203593849895812

`∑[ogf(1/(1-6x+8x^2))]`
-/

namespace A171477.P4506203593849895812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -6, 8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171477.P4506203593849895812

namespace A171477

/-- `∑[ogf(1/(1-6x+8x^2))]` -/
def P4506203593849895812.Spec : Prop :=
  ∀ n, P4506203593849895812.a n = A171477 n

end A171477

/-! ## A171477.P1990995325710999899

`ogf(1/(1-7x+14x^2-8x^3))`
-/

namespace A171477.P1990995325710999899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -7, 14, -8] n

end

end A171477.P1990995325710999899

namespace A171477

/-- `ogf(1/(1-7x+14x^2-8x^3))` -/
def P1990995325710999899.Spec : Prop :=
  ∀ n, P1990995325710999899.a n = A171477 n

end A171477

/-! ## A171477.P13760950998008760588

`∑[2^n]+lcm(4, a(n-1))` with `a(0)=1`
-/

namespace A171477.P13760950998008760588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lcm 4 (a (n - 1))

end

end A171477.P13760950998008760588

namespace A171477

/-- `∑[2^n]+lcm(4, a(n-1))` -/
def P13760950998008760588.Spec : Prop :=
  ∀ n, (P13760950998008760588.a n : ℤ) = A171477 n

end A171477

/-! ## A171477.P526679588265495632

`2^(n+1)+4*a(n-1)-1` with `a(0)=1`
-/

namespace A171477.P526679588265495632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ (n + 1) : ℤ) + (4 * a (n - 1) - 1)

end

end A171477.P526679588265495632

namespace A171477

/-- `2^(n+1)+4*a(n-1)-1` -/
def P526679588265495632.Spec : Prop :=
  ∀ n, P526679588265495632.a n = A171477 n

end A171477

/-! ## A171477.P4102688796020753632

`∑[2*a(n-1)]+4*a(n-1)` with `a(0)=1`
-/

namespace A171477.P4102688796020753632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4 * a (n - 1)

end

end A171477.P4102688796020753632

namespace A171477

/-- `∑[2*a(n-1)]+4*a(n-1)` -/
def P4102688796020753632.Spec : Prop :=
  ∀ n, (P4102688796020753632.a n : ℤ) = A171477 n

end A171477

/-! ## A171477.P3158265169673101677

`a(n-1)+∑[4^n]+a(n-1)` with `a(0)=1`
-/

namespace A171477.P3158265169673101677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1))

end

end A171477.P3158265169673101677

namespace A171477

/-- `a(n-1)+∑[4^n]+a(n-1)` -/
def P3158265169673101677.Spec : Prop :=
  ∀ n, (P3158265169673101677.a n : ℤ) = A171477 n

end A171477

/-! ## A171477.P16478977699620159551

`∑[2*a(n-1)]²-2*a(n-1)` with `a(0)=1`
-/

namespace A171477.P16478977699620159551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - 2 * a (n - 1)

end

end A171477.P16478977699620159551

namespace A171477

/-- `∑[2*a(n-1)]²-2*a(n-1)` -/
def P16478977699620159551.Spec : Prop :=
  ∀ n, P16478977699620159551.a n = A171477 n

end A171477

/-! ## A171477.P10616081476714274409

`∑[2^n]²-a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A171477.P10616081476714274409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - a (n - 1) - a (n - 1)

end

end A171477.P10616081476714274409

namespace A171477

/-- `∑[2^n]²-a(n-1)-a(n-1)` -/
def P10616081476714274409.Spec : Prop :=
  ∀ n, P10616081476714274409.a n = A171477 n

end A171477

/-! ## A171477.P18261576616739119705

`∑[A171476(n)]`
-/

namespace A171477.P18261576616739119705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171477.P18261576616739119705

namespace A171477

/-- `∑[A171476(n)]` -/
def P18261576616739119705.Spec : Prop :=
  ∀ n, P18261576616739119705.a n = A171477 n

end A171477

/-! ## A171477.P12891233510212611241

`A006095(n+2)`
-/

namespace A171477.P12891233510212611241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006095 (n + 2)

end

end A171477.P12891233510212611241

namespace A171477

/-- `A006095(n+2)` -/
def P12891233510212611241.Spec : Prop :=
  ∀ n, P12891233510212611241.a n = A171477 n

end A171477

/-! ## A171477.P2273558787906991463

`∑[∑[A010036(n)]]`
-/

namespace A171477.P2273558787906991463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010036 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171477.P2273558787906991463

namespace A171477

/-- `∑[∑[A010036(n)]]` -/
def P2273558787906991463.Spec : Prop :=
  ∀ n, P2273558787906991463.a n = A171477 n

end A171477

/-! ## A171477.P18196588734175644292

`∑[record[A278756(n)]]`
-/

namespace A171477.P18196588734175644292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278756 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171477.P18196588734175644292

namespace A171477

/-- `∑[record[A278756(n)]]` -/
def P18196588734175644292.Spec : Prop :=
  ∀ n, P18196588734175644292.a n = A171477 n

end A171477

/-! ## A171477.P8727754508766839255

`∑[record[A282418(n)]]`
-/

namespace A171477.P8727754508766839255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282418 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171477.P8727754508766839255

namespace A171477

/-- `∑[record[A282418(n)]]` -/
def P8727754508766839255.Spec : Prop :=
  ∀ n, P8727754508766839255.a n = A171477 n

end A171477

/-! ## A171477.P15353647049995046451

`∑[record[A287470(n)]]`
-/

namespace A171477.P15353647049995046451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287470 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171477.P15353647049995046451

namespace A171477

/-- `∑[record[A287470(n)]]` -/
def P15353647049995046451.Spec : Prop :=
  ∀ n, P15353647049995046451.a n = A171477 n

end A171477

/-! ## A171477.P1372825851831104064

`∑[A006516(n+1)]`
-/

namespace A171477.P1372825851831104064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171477.P1372825851831104064

namespace A171477

/-- `∑[A006516(n+1)]` -/
def P1372825851831104064.Spec : Prop :=
  ∀ n, P1372825851831104064.a n = A171477 n

end A171477

/-! ## A171477.P3502062805882917098

`∑[A129868(n)+1]`
-/

namespace A171477.P3502062805882917098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129868 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171477.P3502062805882917098

namespace A171477

/-- `∑[A129868(n)+1]` -/
def P3502062805882917098.Spec : Prop :=
  ∀ n, P3502062805882917098.a n = A171477 n

end A171477

/-! ## A171477.P2118566989288303033

`∑[A122746(2*n)]`
-/

namespace A171477.P2118566989288303033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122746 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171477.P2118566989288303033

namespace A171477

/-- `∑[A122746(2*n)]` -/
def P2118566989288303033.Spec : Prop :=
  ∀ n, P2118566989288303033.a n = A171477 n

end A171477

/-!
# A171478: a(n) = 6*a(n-1) - 8*a(n-2) + 2 for n > 1; a(0) = 1, a(1) = 8.

The programs for A171478, the canonical program `A171478.P5774869745439178352` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171478 has offset 0).

The definition of A171478 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-8*a(n-2)+2` (program `A171478.P5774869745439178352`, by `A171478.P5774869745439178352.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171478.P3042692638933855606

`(10*4^n-9*2^n+2)/3`
-/

namespace A171478.P3042692638933855606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 * 4 ^ n : ℤ) - (9 * 2 ^ n : ℤ) + 2 : ℚ) / 3

end

end A171478.P3042692638933855606

namespace A171478

/-- `(10*4^n-9*2^n+2)/3` -/
def P3042692638933855606.Spec : Prop :=
  ∀ n, P3042692638933855606.a n = (A171478 n : ℚ)

theorem P3042692638933855606.correct : P3042692638933855606.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A171478, Nat.add_sub_cancel, A171478.P3042692638933855606.a, A171478.P5774869745439178352.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A171478, Nat.add_sub_cancel, A171478.P3042692638933855606.a, A171478.P5774869745439178352.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A171478

/-! ## A171478.P5774869745439178352

`6*a(n-1)-8*a(n-2)+2` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171478

/-- `6*a(n-1)-8*a(n-2)+2` -/
def P5774869745439178352.Spec : Prop :=
  ∀ n, P5774869745439178352.a n = A171478 n

theorem P5774869745439178352.correct : P5774869745439178352.Spec := by
  intro n
  simp only [A171478]

end A171478

/-! ## A171478.P5843534098982794876

`∑[ogf((1+x)/(1-6x+8x^2))]`
-/

namespace A171478.P5843534098982794876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -6, 8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171478.P5843534098982794876

namespace A171478

/-- `∑[ogf((1+x)/(1-6x+8x^2))]` -/
def P5843534098982794876.Spec : Prop :=
  ∀ n, P5843534098982794876.a n = A171478 n

end A171478

/-! ## A171478.P11033743678642694891

`ogf((1+x)/(1-7x+14x^2-8x^3))`
-/

namespace A171478.P11033743678642694891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -7, 14, -8] n

end

end A171478.P11033743678642694891

namespace A171478

/-- `ogf((1+x)/(1-7x+14x^2-8x^3))` -/
def P11033743678642694891.Spec : Prop :=
  ∀ n, P11033743678642694891.a n = A171478 n

end A171478

/-! ## A171478.P17790761440860384498

`4*a(n-1)+3*2^n-2` with `a(0)=1`
-/

namespace A171478.P17790761440860384498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) + ((3 * 2 ^ n : ℤ) - 2)

end

end A171478.P17790761440860384498

namespace A171478

/-- `4*a(n-1)+3*2^n-2` -/
def P17790761440860384498.Spec : Prop :=
  ∀ n, P17790761440860384498.a n = A171478 n

end A171478

/-! ## A171478.P18309050426078107670

`∑[2*(3*a(n-1)-4*a(n-2))]` with `a(0)=1, a(1)=7`
-/

namespace A171478.P18309050426078107670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  2 * (3 * f1 (n - 1) - 4 * f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171478.P18309050426078107670

namespace A171478

/-- `∑[2*(3*a(n-1)-4*a(n-2))]` -/
def P18309050426078107670.Spec : Prop :=
  ∀ n, P18309050426078107670.a n = A171478 n

end A171478

/-! ## A171478.P8329429772121267084

`∑[A080960(n)]`
-/

namespace A171478.P8329429772121267084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171478.P8329429772121267084

namespace A171478

/-- `∑[A080960(n)]` -/
def P8329429772121267084.Spec : Prop :=
  ∀ n, P8329429772121267084.a n = A171478 n

end A171478

/-! ## A171478.P13779485378744402658

`∑[∑[A171475(n)]]`
-/

namespace A171478.P13779485378744402658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171475 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171478.P13779485378744402658

namespace A171478

/-- `∑[∑[A171475(n)]]` -/
def P13779485378744402658.Spec : Prop :=
  ∀ n, P13779485378744402658.a n = A171478 n

end A171478

/-! ## A171478.P11241417991808624329

`A171480(n)-a(n-1)` with `a(0)=1`
-/

namespace A171478.P11241417991808624329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A171480 n - a (n - 1)

end

end A171478.P11241417991808624329

namespace A171478

/-- `A171480(n)-a(n-1)` -/
def P11241417991808624329.Spec : Prop :=
  ∀ n, P11241417991808624329.a n = A171478 n

end A171478

/-! ## A171478.P12594451756094874974

`A033484(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A171478.P12594451756094874974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A033484 n + 4 * a (n - 1)

end

end A171478.P12594451756094874974

namespace A171478

/-- `A033484(n)+4*a(n-1)` -/
def P12594451756094874974.Spec : Prop :=
  ∀ n, P12594451756094874974.a n = A171478 n

end A171478

/-! ## A171478.P6170431766247844324

`∑[A020522(n)]+2^n*∑[2^n]`
-/

namespace A171478.P6170431766247844324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020522 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((2 ^ n * (∑ j ∈ Finset.range (n + 1), f2 j) : ℕ) : ℤ)

end

end A171478.P6170431766247844324

namespace A171478

/-- `∑[A020522(n)]+2^n*∑[2^n]` -/
def P6170431766247844324.Spec : Prop :=
  ∀ n, P6170431766247844324.a n = A171478 n

end A171478

/-! ## A171478.P10788183888993430304

`a(n-1)+A020989(n)+a(n-1)` with `a(0)=1`
-/

namespace A171478.P10788183888993430304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020989 n + a (n - 1))

end

end A171478.P10788183888993430304

namespace A171478

/-- `a(n-1)+A020989(n)+a(n-1)` -/
def P10788183888993430304.Spec : Prop :=
  ∀ n, P10788183888993430304.a n = A171478 n

end A171478

/-! ## A171478.P16169867594159835718

`A169726(n)+A002450(n)`
-/

namespace A171478.P16169867594159835718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169726 n + A002450 n

end

end A171478.P16169867594159835718

namespace A171478

/-- `A169726(n)+A002450(n)` -/
def P16169867594159835718.Spec : Prop :=
  ∀ n, P16169867594159835718.a n = A171478 n

end A171478

/-! ## A171478.P10239002022319473366

`A081193(n)-A076024(n)`
-/

namespace A171478.P10239002022319473366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081193 n - A076024 n

end

end A171478.P10239002022319473366

namespace A171478

/-- `A081193(n)-A076024(n)` -/
def P10239002022319473366.Spec : Prop :=
  ∀ n, P10239002022319473366.a n = A171478 n

end A171478

/-! ## A171478.P6709628145105734470

`A171479(n)-A006095(n)`
-/

namespace A171478.P6709628145105734470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171479 n - A006095 n

end

end A171478.P6709628145105734470

namespace A171478

/-- `A171479(n)-A006095(n)` -/
def P6709628145105734470.Spec : Prop :=
  ∀ n, P6709628145105734470.a n = A171478 n

end A171478

/-! ## A171478.P303506129124879272

`A072197(n)-A153893(n)`
-/

namespace A171478.P303506129124879272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072197 n - A153893 n

end

end A171478.P303506129124879272

namespace A171478

/-- `A072197(n)-A153893(n)` -/
def P303506129124879272.Spec : Prop :=
  ∀ n, P303506129124879272.a n = A171478 n

end A171478

/-! ## A171478.P4341205487013024105

`A072197(n)-∑[A042950(n)]`
-/

namespace A171478.P4341205487013024105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072197 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171478.P4341205487013024105

namespace A171478

/-- `A072197(n)-∑[A042950(n)]` -/
def P4341205487013024105.Spec : Prop :=
  ∀ n, P4341205487013024105.a n = A171478 n

end A171478

/-! ## A171478.P17410521351182576610

`A171477(n)+A006095(n+1)`
-/

namespace A171478.P17410521351182576610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171477 n + A006095 (n + 1)

end

end A171478.P17410521351182576610

namespace A171478

/-- `A171477(n)+A006095(n+1)` -/
def P17410521351182576610.Spec : Prop :=
  ∀ n, P17410521351182576610.a n = A171478 n

end A171478

/-! ## A171478.P16164774937834638001

`A080675(n+1)-A033484(n)`
-/

namespace A171478.P16164774937834638001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080675 (n + 1) - A033484 n

end

end A171478.P16164774937834638001

namespace A171478

/-- `A080675(n+1)-A033484(n)` -/
def P16164774937834638001.Spec : Prop :=
  ∀ n, P16164774937834638001.a n = A171478 n

end A171478

/-! ## A171478.P2957331567998053848

`A006095(n+1)+A006095(n+2)`
-/

namespace A171478.P2957331567998053848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006095 (n + 1) + A006095 (n + 2)

end

end A171478.P2957331567998053848

namespace A171478

/-- `A006095(n+1)+A006095(n+2)` -/
def P2957331567998053848.Spec : Prop :=
  ∀ n, P2957331567998053848.a n = A171478 n

end A171478

/-!
# A171479: a(n) = 6*a(n-1)-8*a(n-2)+3 for n > 1; a(0) = 1, a(1) = 8.

The programs for A171479, the canonical program `A171479.P16619101621335354381` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171479 has offset 0).

The definition of A171479 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-8*a(n-2)+3` (program `A171479.P16619101621335354381`, by `A171479.P16619101621335354381.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171479.P10522686532464928397

`(2-7*2^n+7*4^n)/2`
-/

namespace A171479.P10522686532464928397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - (7 * 2 ^ n : ℤ) + (7 * 4 ^ n : ℤ) : ℚ) / 2

end

end A171479.P10522686532464928397

namespace A171479

/-- `(2-7*2^n+7*4^n)/2` -/
def P10522686532464928397.Spec : Prop :=
  ∀ n, P10522686532464928397.a n = (A171479 n : ℚ)

theorem P10522686532464928397.correct : P10522686532464928397.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A171479, Nat.add_sub_cancel, A171479.P10522686532464928397.a, A171479.P16619101621335354381.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A171479, Nat.add_sub_cancel, A171479.P10522686532464928397.a, A171479.P16619101621335354381.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A171479

/-! ## A171479.P16619101621335354381

`6*a(n-1)-8*a(n-2)+3` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171479

/-- `6*a(n-1)-8*a(n-2)+3` -/
def P16619101621335354381.Spec : Prop :=
  ∀ n, P16619101621335354381.a n = A171479 n

theorem P16619101621335354381.correct : P16619101621335354381.Spec := by
  intro n
  simp only [A171479]

end A171479

/-! ## A171479.P15880119262578610163

`7*C(2^n, 2)+1`
-/

namespace A171479.P15880119262578610163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * Nat.choose (2 ^ n) 2 + 1

end

end A171479.P15880119262578610163

namespace A171479

/-- `7*C(2^n, 2)+1` -/
def P15880119262578610163.Spec : Prop :=
  ∀ n, (P15880119262578610163.a n : ℤ) = A171479 n

end A171479

/-! ## A171479.P2246883109016029371

`∑[ogf((1+x+x^2)/(1-6x+8x^2))]`
-/

namespace A171479.P2246883109016029371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, -6, 8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171479.P2246883109016029371

namespace A171479

/-- `∑[ogf((1+x+x^2)/(1-6x+8x^2))]` -/
def P2246883109016029371.Spec : Prop :=
  ∀ n, P2246883109016029371.a n = A171479 n

end A171479

/-! ## A171479.P11946000323553796095

`∑[2^n]²-C(2^n, 2)`
-/

namespace A171479.P11946000323553796095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (Nat.choose (2 ^ n) 2 : ℤ)

end

end A171479.P11946000323553796095

namespace A171479

/-- `∑[2^n]²-C(2^n, 2)` -/
def P11946000323553796095.Spec : Prop :=
  ∀ n, P11946000323553796095.a n = A171479 n

end A171479

/-! ## A171479.P7138357100518311951

`A169726(n)+A006516(n)`
-/

namespace A171479.P7138357100518311951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169726 n + A006516 n

end

end A171479.P7138357100518311951

namespace A171479

/-- `A169726(n)+A006516(n)` -/
def P7138357100518311951.Spec : Prop :=
  ∀ n, P7138357100518311951.a n = A171479 n

end A171479

/-! ## A171479.P9834766168312463992

`A171478(n)+A006095(n)`
-/

namespace A171479.P9834766168312463992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171478 n + A006095 n

end

end A171479.P9834766168312463992

namespace A171479

/-- `A171478(n)+A006095(n)` -/
def P9834766168312463992.Spec : Prop :=
  ∀ n, P9834766168312463992.a n = A171479 n

end A171479

/-! ## A171479.P5090887009369552750

`A165665(n)+A134057(n)`
-/

namespace A171479.P5090887009369552750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165665 n + A134057 n

end

end A171479.P5090887009369552750

namespace A171479

/-- `A165665(n)+A134057(n)` -/
def P5090887009369552750.Spec : Prop :=
  ∀ n, P5090887009369552750.a n = A171479 n

end A171479

/-! ## A171479.P4204119205074621966

`A081193(n)-A000225(n)`
-/

namespace A171479.P4204119205074621966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081193 n - A000225 n

end

end A171479.P4204119205074621966

namespace A171479

/-- `A081193(n)-A000225(n)` -/
def P4204119205074621966.Spec : Prop :=
  ∀ n, P4204119205074621966.a n = A171479 n

end A171479

/-! ## A171479.P8007746897728533771

`A169720(n)-A020522(n)`
-/

namespace A171479.P8007746897728533771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169720 n - A020522 n

end

end A171479.P8007746897728533771

namespace A171479

/-- `A169720(n)-A020522(n)` -/
def P8007746897728533771.Spec : Prop :=
  ∀ n, P8007746897728533771.a n = A171479 n

end A171479

/-! ## A171479.P7107493162552789220

`A272417(n)-A006095(n)`
-/

namespace A171479.P7107493162552789220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272417 n - A006095 n

end

end A171479.P7107493162552789220

namespace A171479

/-- `A272417(n)-A006095(n)` -/
def P7107493162552789220.Spec : Prop :=
  ∀ n, P7107493162552789220.a n = A171479 n

end A171479

/-! ## A171479.P1140407818650512368

`A134057(n+1)+A010036(n)`
-/

namespace A171479.P1140407818650512368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134057 (n + 1) + A010036 n

end

end A171479.P1140407818650512368

namespace A171479

/-- `A134057(n+1)+A010036(n)` -/
def P1140407818650512368.Spec : Prop :=
  ∀ n, P1140407818650512368.a n = A171479 n

end A171479

/-! ## A171479.P7748560850053306593

`A060867(n+1)-A006516(n)`
-/

namespace A171479.P7748560850053306593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060867 (n + 1) - A006516 n

end

end A171479.P7748560850053306593

namespace A171479

/-- `A060867(n+1)-A006516(n)` -/
def P7748560850053306593.Spec : Prop :=
  ∀ n, P7748560850053306593.a n = A171479 n

end A171479

/-! ## A171479.P3934298749620525567

`A060867(n+1)-A007179(2*n)`
-/

namespace A171479.P3934298749620525567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060867 (n + 1) - A007179 (2 * n)

end

end A171479.P3934298749620525567

namespace A171479

/-- `A060867(n+1)-A007179(2*n)` -/
def P3934298749620525567.Spec : Prop :=
  ∀ n, P3934298749620525567.a n = A171479 n

end A171479

/-! ## A171479.P12442047943347637706

`A395109(2*n)+A007179(2*n)`
-/

namespace A171479.P12442047943347637706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395109 (2 * n) + A007179 (2 * n)

end

end A171479.P12442047943347637706

namespace A171479

/-- `A395109(2*n)+A007179(2*n)` -/
def P12442047943347637706.Spec : Prop :=
  ∀ n, P12442047943347637706.a n = A171479 n

end A171479

/-! ## A171479.P1894571999242071025

`A276918(2*n)-A007179(2*n)`
-/

namespace A171479.P1894571999242071025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276918 (2 * n) - A007179 (2 * n)

end

end A171479.P1894571999242071025

namespace A171479

/-- `A276918(2*n)-A007179(2*n)` -/
def P1894571999242071025.Spec : Prop :=
  ∀ n, P1894571999242071025.a n = A171479 n

end A171479

/-! ## A171479.P14121062193060305162

`A092440(n)+A092440(n)-A134169(n)`
-/

namespace A171479.P14121062193060305162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092440 n + (A092440 n - A134169 n)

end

end A171479.P14121062193060305162

namespace A171479

/-- `A092440(n)+A092440(n)-A134169(n)` -/
def P14121062193060305162.Spec : Prop :=
  ∀ n, P14121062193060305162.a n = A171479 n

end A171479

/-! ## A171479.P12187359265689379418

`A006095(n+1)+A171477(n)+A006095(n)`
-/

namespace A171479.P12187359265689379418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006095 (n + 1) + (A171477 n + A006095 n)

end

end A171479.P12187359265689379418

namespace A171479

/-- `A006095(n+1)+A171477(n)+A006095(n)` -/
def P12187359265689379418.Spec : Prop :=
  ∀ n, P12187359265689379418.a n = A171479 n

end A171479

/-! ## A171479.P2512321507979758811

`A170939(n+1)-(A281481(n)+A000079(n))`
-/

namespace A171479.P2512321507979758811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170939 (n + 1) - (A281481 n + A000079 n)

end

end A171479.P2512321507979758811

namespace A171479

/-- `A170939(n+1)-(A281481(n)+A000079(n))` -/
def P2512321507979758811.Spec : Prop :=
  ∀ n, P2512321507979758811.a n = A171479 n

end A171479

/-! ## A171479.P505263333806838353

`A006516(n+1)+A000225(n)*A055010(n)`
-/

namespace A171479.P505263333806838353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 (n + 1) + A000225 n * A055010 n

end

end A171479.P505263333806838353

namespace A171479

/-- `A006516(n+1)+A000225(n)*A055010(n)` -/
def P505263333806838353.Spec : Prop :=
  ∀ n, P505263333806838353.a n = A171479 n

end A171479

/-!
# A171480: a(n) = 6*a(n-1) - 8*a(n-2) + 4 for n > 1; a(0) = 1, a(1) = 9.

The programs for A171480, the canonical program `A171480.P6757530402129766703` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171480 has offset 0).

The definition of A171480 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-8*a(n-2)+4` (program `A171480.P6757530402129766703`, by `A171480.P6757530402129766703.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171480.P6757530402129766703

`6*a(n-1)-8*a(n-2)+4` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171480

/-- `6*a(n-1)-8*a(n-2)+4` -/
def P6757530402129766703.Spec : Prop :=
  ∀ n, P6757530402129766703.a n = A171480 n

theorem P6757530402129766703.correct : P6757530402129766703.Spec := by
  intro n
  simp only [A171480]

end A171480

/-! ## A171480.P17881017654884867402

`(25*4^n-27*2^n+8)/6`
-/

namespace A171480.P17881017654884867402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((25 * 4 ^ n : ℤ) - (27 * 2 ^ n : ℤ) + 8 : ℚ) / 6

end

end A171480.P17881017654884867402

namespace A171480

/-- `(25*4^n-27*2^n+8)/6` -/
def P17881017654884867402.Spec : Prop :=
  ∀ n, P17881017654884867402.a n = (A171480 n : ℚ)

theorem P17881017654884867402.correct : P17881017654884867402.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A171480, Nat.add_sub_cancel, A171480.P17881017654884867402.a, A171480.P6757530402129766703.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A171480, Nat.add_sub_cancel, A171480.P17881017654884867402.a, A171480.P6757530402129766703.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A171480

/-! ## A171480.P11499471479413599136

`∑[ogf((1+2x+x^2)/(1-6x+8x^2))]`
-/

namespace A171480.P11499471479413599136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, -6, 8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171480.P11499471479413599136

namespace A171480

/-- `∑[ogf((1+2x+x^2)/(1-6x+8x^2))]` -/
def P11499471479413599136.Spec : Prop :=
  ∀ n, P11499471479413599136.a n = A171480 n

end A171480

/-! ## A171480.P2313039524575628087

`floor(A060867(n+1)+∑[floor(((2^n-1)/2)²)/2])`
-/

namespace A171480.P2313039524575628087
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(((2 ^ n : ℤ) - 1 : ℚ) / 2) ^ 2⌋ : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060867 (n + 1) : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A171480.P2313039524575628087

namespace A171480

/-- `floor(A060867(n+1)+∑[floor(((2^n-1)/2)²)/2])` -/
def P2313039524575628087.Spec : Prop :=
  ∀ n, P2313039524575628087.a n = A171480 n

end A171480

/-! ## A171480.P16579664562875727197

`ceil(∑[floor(((2^n-1)/2)²)/2]+A225883(n+1)²)`
-/

namespace A171480.P16579664562875727197
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(((2 ^ n : ℤ) - 1 : ℚ) / 2) ^ 2⌋ : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j + (A225883 (n + 1) ^ 2 : ℚ)⌉

end

end A171480.P16579664562875727197

namespace A171480

/-- `ceil(∑[floor(((2^n-1)/2)²)/2]+A225883(n+1)²)` -/
def P16579664562875727197.Spec : Prop :=
  ∀ n, P16579664562875727197.a n = A171480 n

end A171480

/-! ## A171480.P5033966843630027703

`A272417(n)+A006516(n)`
-/

namespace A171480.P5033966843630027703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272417 n + A006516 n

end

end A171480.P5033966843630027703

namespace A171480

/-- `A272417(n)+A006516(n)` -/
def P5033966843630027703.Spec : Prop :=
  ∀ n, P5033966843630027703.a n = A171480 n

end A171480

/-! ## A171480.P6056425244977492285

`A169720(n)-A002450(n)`
-/

namespace A171480.P6056425244977492285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169720 n - A002450 n

end

end A171480.P6056425244977492285

namespace A171480

/-- `A169720(n)-A002450(n)` -/
def P6056425244977492285.Spec : Prop :=
  ∀ n, P6056425244977492285.a n = A171480 n

end A171480

/-! ## A171480.P12337410825832799897

`A060867(n+1)+A006095(n)`
-/

namespace A171480.P12337410825832799897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060867 (n + 1) + A006095 n

end

end A171480.P12337410825832799897

namespace A171480

/-- `A060867(n+1)+A006095(n)` -/
def P12337410825832799897.Spec : Prop :=
  ∀ n, P12337410825832799897.a n = A171480 n

end A171480

/-! ## A171480.P17971352243790064404

`A171479(n)+A006095(n+1)`
-/

namespace A171480.P17971352243790064404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171479 n + A006095 (n + 1)

end

end A171480.P17971352243790064404

namespace A171480

/-- `A171479(n)+A006095(n+1)` -/
def P17971352243790064404.Spec : Prop :=
  ∀ n, P17971352243790064404.a n = A171480 n

end A171480

/-! ## A171480.P13694039807232101637

`A171478(n)+A171478(n)-A080960(n)`
-/

namespace A171480.P13694039807232101637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171478 n + (A171478 n - A080960 n)

end

end A171480.P13694039807232101637

namespace A171480

/-- `A171478(n)+A171478(n)-A080960(n)` -/
def P13694039807232101637.Spec : Prop :=
  ∀ n, P13694039807232101637.a n = A171480 n

end A171480

/-! ## A171480.P13890511208417630707

`A006095(n+1)+A171478(n)+A006095(n)`
-/

namespace A171480.P13890511208417630707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006095 (n + 1) + (A171478 n + A006095 n)

end

end A171480.P13890511208417630707

namespace A171480

/-- `A006095(n+1)+A171478(n)+A006095(n)` -/
def P13890511208417630707.Spec : Prop :=
  ∀ n, P13890511208417630707.a n = A171480 n

end A171480

/-! ## A171480.P9125411180127042744

`A006095(n)+A000225(n+1)*A000225(n+1)`
-/

namespace A171480.P9125411180127042744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006095 n + A000225 (n + 1) * A000225 (n + 1)

end

end A171480.P9125411180127042744

namespace A171480

/-- `A006095(n)+A000225(n+1)*A000225(n+1)` -/
def P9125411180127042744.Spec : Prop :=
  ∀ n, P9125411180127042744.a n = A171480 n

end A171480

/-! ## A171480.P17773117115228500817

`A006095(n)+A255047(n+1)*A255047(n+1)`
-/

namespace A171480.P17773117115228500817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006095 n + A255047 (n + 1) * A255047 (n + 1)

end

end A171480.P17773117115228500817

namespace A171480

/-- `A006095(n)+A255047(n+1)*A255047(n+1)` -/
def P17773117115228500817.Spec : Prop :=
  ∀ n, P17773117115228500817.a n = A171480 n

end A171480

/-! ## A171480.P4258668531614413727

`A171479(n+1)+A171479(n)-A171478(n+1)`
-/

namespace A171480.P4258668531614413727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171479 (n + 1) + (A171479 n - A171478 (n + 1))

end

end A171480.P4258668531614413727

namespace A171480

/-- `A171479(n+1)+A171479(n)-A171478(n+1)` -/
def P4258668531614413727.Spec : Prop :=
  ∀ n, P4258668531614413727.a n = A171480 n

end A171480

/-!
# A171481: a(n) = a(a(n-1)) + a(n - a(n-1) - 2) with a(0) = 0, a(1) = a(2) = 1.

The programs for A171481, the canonical program `A171481.P1504401500647827286` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171481 has offset 0).

The definition of A171481 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-1))+a(n-a(n-1)-2)` (program `A171481.P1504401500647827286`, by `A171481.P1504401500647827286.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171481.P1504401500647827286

`a(a(n-1))+a(n-a(n-1)-2)` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171481

/-- `a(a(n-1))+a(n-a(n-1)-2)` -/
def P1504401500647827286.Spec : Prop :=
  ∀ n, (P1504401500647827286.a n : ℤ) = A171481 n

theorem P1504401500647827286.correct : P1504401500647827286.Spec := by
  intro n
  simp only [A171481]

end A171481

/-!
# A171482: a(n) = a(a(n-1)) + a(n - a(n-1) - 2) with a(0) = a(1) = a(2) = 1.

The programs for A171482, the canonical program `A171482.P8248787316108348558` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171482 has offset 0).

The definition of A171482 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-1))+a(n-a(n-1)-2)` (program `A171482.P8248787316108348558`, by `A171482.P8248787316108348558.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171482.P8248787316108348558

`a(a(n-1))+a(n-a(n-1)-2)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171482

/-- `a(a(n-1))+a(n-a(n-1)-2)` -/
def P8248787316108348558.Spec : Prop :=
  ∀ n, (P8248787316108348558.a n : ℤ) = A171482 n

theorem P8248787316108348558.correct : P8248787316108348558.Spec := by
  intro n
  simp only [A171482]

end A171482

/-! ## A171482.P7260218347908775511

`2-A006161(n+2)+n`
-/

namespace A171482.P7260218347908775511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A006161 (n + 2) + (n : ℤ)

end

end A171482.P7260218347908775511

namespace A171482

/-- `2-A006161(n+2)+n` -/
def P7260218347908775511.Spec : Prop :=
  ∀ n, P7260218347908775511.a n = A171482 n

end A171482

/-! ## A171482.P11094609660733087125

`∑[xor(1, Δ[A006161(n+1)])]`
-/

namespace A171482.P11094609660733087125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006161 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171482.P11094609660733087125

namespace A171482

/-- `∑[xor(1, Δ[A006161(n+1)])]` -/
def P11094609660733087125.Spec : Prop :=
  ∀ n, P11094609660733087125.a n = A171482 n

end A171482

/-! ## A171482.P9408682190410579246

`∑[A000007(Δ[A006161(n+1)])]`
-/

namespace A171482.P9408682190410579246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006161 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171482.P9408682190410579246

namespace A171482

/-- `∑[A000007(Δ[A006161(n+1)])]` -/
def P9408682190410579246.Spec : Prop :=
  ∀ n, P9408682190410579246.a n = A171482 n

end A171482

/-! ## A171482.P11823168788595551709

`∑[A000166(Δ[A006161(n+1)])]`
-/

namespace A171482.P11823168788595551709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006161 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171482.P11823168788595551709

namespace A171482

/-- `∑[A000166(Δ[A006161(n+1)])]` -/
def P11823168788595551709.Spec : Prop :=
  ∀ n, P11823168788595551709.a n = A171482 n

end A171482

/-! ## A171482.P8535701588533736568

`∑[A000296(Δ[A006161(n+1)])]`
-/

namespace A171482.P8535701588533736568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006161 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000296 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171482.P8535701588533736568

namespace A171482

/-- `∑[A000296(Δ[A006161(n+1)])]` -/
def P8535701588533736568.Spec : Prop :=
  ∀ n, P8535701588533736568.a n = A171482 n

end A171482

/-! ## A171482.P6106391251703881519

`∑[A000607(Δ[A006161(n+1)])]`
-/

namespace A171482.P6106391251703881519
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006161 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171482.P6106391251703881519

namespace A171482

/-- `∑[A000607(Δ[A006161(n+1)])]` -/
def P6106391251703881519.Spec : Prop :=
  ∀ n, P6106391251703881519.a n = A171482 n

end A171482

/-! ## A171482.P8862051422189350290

`∑[A000931(Δ[A006161(n+1)])]`
-/

namespace A171482.P8862051422189350290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006161 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171482.P8862051422189350290

namespace A171482

/-- `∑[A000931(Δ[A006161(n+1)])]` -/
def P8862051422189350290.Spec : Prop :=
  ∀ n, P8862051422189350290.a n = A171482 n

end A171482

/-! ## A171482.P6471129817911133418

`∑[A002126(Δ[A006161(n+1)])]`
-/

namespace A171482.P6471129817911133418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006161 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171482.P6471129817911133418

namespace A171482

/-- `∑[A002126(Δ[A006161(n+1)])]` -/
def P6471129817911133418.Spec : Prop :=
  ∀ n, P6471129817911133418.a n = A171482 n

end A171482

/-! ## A171482.P4687278378783795051

`∑[A002865(Δ[A006161(n+1)])]`
-/

namespace A171482.P4687278378783795051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006161 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171482.P4687278378783795051

namespace A171482

/-- `∑[A002865(Δ[A006161(n+1)])]` -/
def P4687278378783795051.Spec : Prop :=
  ∀ n, P4687278378783795051.a n = A171482 n

end A171482

/-! ## A171482.P12112540197319200172

`∑[A004248(Δ[A006161(n+1)])]`
-/

namespace A171482.P12112540197319200172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006161 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171482.P12112540197319200172

namespace A171482

/-- `∑[A004248(Δ[A006161(n+1)])]` -/
def P12112540197319200172.Spec : Prop :=
  ∀ n, P12112540197319200172.a n = A171482 n

end A171482

/-!
# A171483: a(n) = 0+1+2+...+n in lunar arithmetic in base 4 written in base 4.

The programs for A171483, there is no canonical definition to state claims against.
-/

/-! ## A171483.P7422739008382595472

`A017305(a(floor(n/4)))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A171483.P7422739008382595472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A017305 (a ⌊(n : ℚ) / 4⌋.toNat).toNat

end

end A171483.P7422739008382595472

/-! ## A171483.P1960530528714987043

`A007090(A171464(n))`
-/

namespace A171483.P1960530528714987043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A171464 n).toNat

end

end A171483.P1960530528714987043

/-! ## A171483.P4819533279569212103

`A133201(∑[char[A133464(n)]])`
-/

namespace A171483.P4819533279569212103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133464 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133201 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A171483.P4819533279569212103

/-! ## A171483.P3621562496450047164

`A024644(2*A171464(n))/2`
-/

namespace A171483.P3621562496450047164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024644 (2 * A171464 n).toNat : ℚ) / 2

end

end A171483.P3621562496450047164

/-! ## A171483.P10591854970485822514

`A133201(∑[char[A137824(n+1)]])`
-/

namespace A171483.P10591854970485822514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137824 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133201 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A171483.P10591854970485822514

/-!
# A171484: Beukers integral int(int( -log(x*y) / (1-x*y) * P_n(2*x-1) * P_n(2*y-1) ,x=0..1,y=0..1)) = (A(n) + B(n)*zeta(3)) / A003418(n)^3. This sequence gives negated values of A(n).

The programs for A171484, there is no canonical definition to state claims against.
-/

/-! ## A171484.P103836628741620491

`2*A112637(n)`
-/

namespace A171484.P103836628741620491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112637 n

end

end A171484.P103836628741620491

/-! ## A171484.P12798432699509579841

`lcm(A004018(n²), A112637(n))`
-/

namespace A171484.P12798432699509579841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004018 (n ^ 2)) (A112637 n)

end

end A171484.P12798432699509579841

/-! ## A171484.P15741162572273103592

`A112637(n)+A112637(A118759(n))`
-/

namespace A171484.P15741162572273103592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112637 n + A112637 (A118759 n).toNat

end

end A171484.P15741162572273103592

/-! ## A171484.P15966554906079735921

`lcm(A112637(n)/2, A000005(A077065(n+1)))`
-/

namespace A171484.P15966554906079735921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A112637 n : ℚ) / 2)) (A000005 (A077065 (n + 1)).toNat)

end

end A171484.P15966554906079735921

/-! ## A171484.P1427932092689239302

`A112637(A024660(n))+A112637(n)`
-/

namespace A171484.P1427932092689239302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112637 (A024660 n).toNat + A112637 n

end

end A171484.P1427932092689239302

/-!
# A171485: Beukers integral Integral_{y = 0..1} Integral_{x = 0..1} -log(x*y) / (1-x*y) * P_n(2*x-1) * P_n(2*y-1) dx dy = (A(n) + B(n)*zeta(3)) / A003418(n)^3. This sequence gives the values of B(n).

The programs for A171485, there is no canonical definition to state claims against.
-/

/-! ## A171485.P15594990843678092509

`2*A003418(n)^3*A005259(n)`
-/

namespace A171485.P15594990843678092509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003418 n ^ 3 * A005259 n

end

end A171485.P15594990843678092509

/-!
# A171486: Riordan array (f(x), x*f(x)) where f(x) is the g.f. of A033321.

The programs for A171486, there is no canonical definition to state claims against.
-/

/-! ## A171486.P1488475095546504136

`A128745(n+1)/2^(n-C(∑[char[∑[n]]], 2))`
-/

namespace A171486.P1488475095546504136
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128745 (n + 1) : ℚ) / (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ)

end

end A171486.P1488475095546504136

/-! ## A171486.P7877685268776405379

`A128745(n+1)/A059268(n)`
-/

namespace A171486.P7877685268776405379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128745 (n + 1) : ℚ) / (A059268 n : ℚ)

end

end A171486.P7877685268776405379

/-! ## A171486.P6313471957497437379

`A128745(n+1)/2^A002262(n)`
-/

namespace A171486.P6313471957497437379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128745 (n + 1) : ℚ) / (2 : ℚ) ^ (A002262 n : ℤ)

end

end A171486.P6313471957497437379

/-! ## A171486.P8689613587493803275

`A128745(n+1)/A000079(A002262(n))`
-/

namespace A171486.P8689613587493803275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128745 (n + 1) : ℚ) / (A000079 (A002262 n).toNat : ℚ)

end

end A171486.P8689613587493803275

/-! ## A171486.P17224676575882331144

`A128745(n+1)/A003958(A036561(n))`
-/

namespace A171486.P17224676575882331144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128745 (n + 1) : ℚ) / (A003958 (A036561 n).toNat : ℚ)

end

end A171486.P17224676575882331144

/-! ## A171486.P10890498884323715891

`A128745(n+1)/A000079(A163351(n))`
-/

namespace A171486.P10890498884323715891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128745 (n + 1) : ℚ) / (A000079 (A163351 n).toNat : ℚ)

end

end A171486.P10890498884323715891

/-! ## A171486.P17224896992387928095

`A128745(n+1)/A130321(A061579(n))`
-/

namespace A171486.P17224896992387928095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128745 (n + 1) : ℚ) / (A130321 (A061579 n).toNat : ℚ)

end

end A171486.P17224896992387928095

/-! ## A171486.P1131539085383277959

`A128745(n+1)/A099627(A112367(n))`
-/

namespace A171486.P1131539085383277959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128745 (n + 1) : ℚ) / (A099627 (A112367 n).toNat : ℚ)

end

end A171486.P1131539085383277959

/-! ## A171486.P12295032594381508576

`A128745(n+1)/A011782(A002260(n+1))`
-/

namespace A171486.P12295032594381508576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128745 (n + 1) : ℚ) / (A011782 (A002260 (n + 1)).toNat : ℚ)

end

end A171486.P12295032594381508576

/-!
# A171487: Product of odd prime anti-factors < n, with multiplicity.

The programs for A171487, the canonical program `A171487.P12486691831779442255` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171487 has offset 1).

The definition of A171487 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171487.P12486691831779442255

`A171435(2*n+1)*A171435(2*n+3)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A171487

/-- `A171435(2*n+1)*A171435(2*n+3)` -/
def P12486691831779442255.Spec : Prop :=
  ∀ n, P12486691831779442255.a n = A171487 (n + 1)

theorem P12486691831779442255.correct : P12486691831779442255.Spec := by
  intro n
  simp only [A171487, Nat.add_sub_cancel]

end A171487

/-! ## A171487.P16959103162394430753

`A128060(n+1)*A128060(n+2)`
-/

namespace A171487.P16959103162394430753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128060 (n + 1) * A128060 (n + 2)

end

end A171487.P16959103162394430753

namespace A171487

/-- `A128060(n+1)*A128060(n+2)` -/
def P16959103162394430753.Spec : Prop :=
  ∀ n, P16959103162394430753.a n = A171487 (n + 1)

end A171487

/-! ## A171487.P368327507669323251

`A005451(2*n+1)*A181569(2*(n+1))`
-/

namespace A171487.P368327507669323251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (2 * n + 1) * A181569 (2 * (n + 1))

end

end A171487.P368327507669323251

namespace A171487

/-- `A005451(2*n+1)*A181569(2*(n+1))` -/
def P368327507669323251.Spec : Prop :=
  ∀ n, P368327507669323251.a n = A171487 (n + 1)

end A171487

/-! ## A171487.P11182618507848906962

`A181569(2*(n+1))*A181569(A028310(2*n))`
-/

namespace A171487.P11182618507848906962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (2 * (n + 1)) * A181569 (A028310 (2 * n)).toNat

end

end A171487.P11182618507848906962

namespace A171487

/-- `A181569(2*(n+1))*A181569(A028310(2*n))` -/
def P11182618507848906962.Spec : Prop :=
  ∀ n, P11182618507848906962.a n = A171487 (n + 1)

end A171487

/-! ## A171487.P11567881409419775296

`A005563(2*n+1)/(A110560(2*(n+1))*A110560(2*n))`
-/

namespace A171487.P11567881409419775296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005563 (2 * n + 1) : ℚ) / (A110560 (2 * (n + 1)) * A110560 (2 * n) : ℚ)

end

end A171487.P11567881409419775296

namespace A171487

/-- `A005563(2*n+1)/(A110560(2*(n+1))*A110560(2*n))` -/
def P11567881409419775296.Spec : Prop :=
  ∀ n, P11567881409419775296.a n = (A171487 (n + 1) : ℚ)

end A171487

/-! ## A171487.P16130419095458607930

`A181569(A233583(2*n+1))*A181569(2*(n+1))`
-/

namespace A171487.P16130419095458607930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (A233583 (2 * n + 1)).toNat * A181569 (2 * (n + 1))

end

end A171487.P16130419095458607930

namespace A171487

/-- `A181569(A233583(2*n+1))*A181569(2*(n+1))` -/
def P16130419095458607930.Spec : Prop :=
  ∀ n, P16130419095458607930.a n = A171487 (n + 1)

end A171487

/-! ## A171487.P11862126897871620582

`gcd(A005563(Δ[n²]), A193282(n))`
-/

namespace A171487.P11862126897871620582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005563 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (A193282 n)

end

end A171487.P11862126897871620582

namespace A171487

/-- `gcd(A005563(Δ[n²]), A193282(n))` -/
def P11862126897871620582.Spec : Prop :=
  ∀ n, (P11862126897871620582.a n : ℤ) = A171487 (n + 1)

end A171487

/-!
# A171488: Riordan array (f(x), x*f(x)) where f(x) is the g.f. of A005773(n+1)= 1,2,5,13,35,96,267,...

The programs for A171488, there is no canonical definition to state claims against.
-/

/-! ## A171488.P11008341865585257967

`A364274(A201165(n))`
-/

namespace A171488.P11008341865585257967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364274 (A201165 n).toNat

end

end A171488.P11008341865585257967

/-! ## A171488.P8259062037120911906

`A188137(n+1)+A054908(A130321(n))`
-/

namespace A171488.P8259062037120911906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188137 (n + 1) + A054908 (A130321 n).toNat

end

end A171488.P8259062037120911906

/-! ## A171488.P17875813348779865158

`A188137(n+1)+A016389(A272946(n))`
-/

namespace A171488.P17875813348779865158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188137 (n + 1) + A016389 (A272946 n).toNat

end

end A171488.P17875813348779865158

/-! ## A171488.P2322196045652831196

`A188137(n+1)-A016389(A135880(n))`
-/

namespace A171488.P2322196045652831196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188137 (n + 1) - A016389 (A135880 n).toNat

end

end A171488.P2322196045652831196

/-! ## A171488.P3521042232910421631

`A188137(n+1)+A188086(A188110(n+1))`
-/

namespace A171488.P3521042232910421631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188137 (n + 1) + A188086 (A188110 (n + 1)).toNat

end

end A171488.P3521042232910421631

/-!
# A171490: Numbers for which the smallest number of steps to reach 1 in "3x+1" (or Collatz) problem is a prime.

The programs for A171490, there is no canonical definition to state claims against.
-/

/-! ## A171490.P17120103423294011636

`eq[0, A300228(A033491(n))]`
-/

namespace A171490.P17120103423294011636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300228 (A033491 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171490.P17120103423294011636

/-! ## A171490.P2652096385279903798

`eq[A097807(n)², A010051(A033491(n))]`
-/

namespace A171490.P2652096385279903798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A033491 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171490.P2652096385279903798

/-! ## A171490.P14235163504529712240

`eq[A006530(2*A033491(n)), A033491(n)]`
-/

namespace A171490.P14235163504529712240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A033491 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033491 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171490.P14235163504529712240

/-! ## A171490.P909353998196766014

`eq[A010051(A033491(n)), A040583(2*n+1)]`
-/

namespace A171490.P909353998196766014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A033491 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040583 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171490.P909353998196766014

/-! ## A171490.P15661608233722522604

`lt[A056594(2*n+1), A010051(A033491(n))]`
-/

namespace A171490.P15661608233722522604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A033491 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A171490.P15661608233722522604

/-! ## A171490.P6579414625101578312

`lt[A010051(2*(n+2)), A010051(A033491(n))]`
-/

namespace A171490.P6579414625101578312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A033491 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A171490.P6579414625101578312

/-! ## A171490.P3381518790247923531

`eq[A010051(A033491(n)), A118827(2*n+3)]`
-/

namespace A171490.P3381518790247923531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A033491 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118827 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171490.P3381518790247923531

/-!
# A171491: Natural numbers not divisible by their number of decimal digits.

The programs for A171491, the canonical program `A171491.P10077374648140217857` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171491 has offset 1).

The definition of A171491 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171491.P10077374648140217857

`comp[A098952(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A171491

/-- `comp[A098952(n+1)]` -/
def P10077374648140217857.Spec : Prop :=
  ∀ n, (P10077374648140217857.a n : ℤ) = A171491 (n + 1)

theorem P10077374648140217857.correct : P10077374648140217857.Spec := by
  intro n
  simp only [A171491, Nat.add_sub_cancel]

end A171491

/-! ## A171491.P1915303655591236847

`lt[n, lcm(n, A055642(n))]`
-/

namespace A171491.P1915303655591236847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A055642 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A171491.P1915303655591236847

namespace A171491

/-- `lt[n, lcm(n, A055642(n))]` -/
def P1915303655591236847.Spec : Prop :=
  ∀ n, (P1915303655591236847.a n : ℤ) = A171491 (n + 1)

end A171491

/-! ## A171491.P222537078873596491

`lt[gcd(n, A113019(n)), A055642(n)]`
-/

namespace A171491.P222537078873596491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A113019 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A171491.P222537078873596491

namespace A171491

/-- `lt[gcd(n, A113019(n)), A055642(n)]` -/
def P222537078873596491.Spec : Prop :=
  ∀ n, (P222537078873596491.a n : ℤ) = A171491 (n + 1)

end A171491

/-! ## A171491.P15509318938229734788

`lt[0, abs(A160652(n)%A055642(n))]`
-/

namespace A171491.P15509318938229734788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A160652 n) (A055642 n)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A171491.P15509318938229734788

namespace A171491

/-- `lt[0, abs(A160652(n)%A055642(n))]` -/
def P15509318938229734788.Spec : Prop :=
  ∀ n, (P15509318938229734788.a n : ℤ) = A171491 (n + 1)

end A171491

/-! ## A171491.P10117428845282035382

`comp[A144688(n+1)]%A345911(n+4)`
-/

namespace A171491.P10117428845282035382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144688 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A345911 (n + 4))

end

end A171491.P10117428845282035382

namespace A171491

/-- `comp[A144688(n+1)]%A345911(n+4)` -/
def P10117428845282035382.Spec : Prop :=
  ∀ n, P10117428845282035382.a n = A171491 (n + 1)

end A171491

/-! ## A171491.P8901707524757984754

`comp[A144688(n+1)]%A132187(n)`
-/

namespace A171491.P8901707524757984754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144688 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A132187 n)

end

end A171491.P8901707524757984754

namespace A171491

/-- `comp[A144688(n+1)]%A132187(n)` -/
def P8901707524757984754.Spec : Prop :=
  ∀ n, P8901707524757984754.a n = A171491 (n + 1)

end A171491

/-! ## A171491.P17218323318469937139

`comp[A144688(A028310(n))]%A132187(n)²`
-/

namespace A171491.P17218323318469937139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144688 (A028310 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A132187 n ^ 2)

end

end A171491.P17218323318469937139

namespace A171491

/-- `comp[A144688(A028310(n))]%A132187(n)²` -/
def P17218323318469937139.Spec : Prop :=
  ∀ n, P17218323318469937139.a n = A171491 (n + 1)

end A171491

/-! ## A171491.P3302051800412763182

`comp[A144688(n+1)]-A227291(A132187(n)+1)`
-/

namespace A171491.P3302051800412763182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144688 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - A227291 (A132187 n + 1).toNat

end

end A171491.P3302051800412763182

namespace A171491

/-- `comp[A144688(n+1)]-A227291(A132187(n)+1)` -/
def P3302051800412763182.Spec : Prop :=
  ∀ n, P3302051800412763182.a n = A171491 (n + 1)

end A171491

/-!
# A171492: Numbers that are not divisible by each of their nonzero decimal digits.

The programs for A171492, there is no canonical definition to state claims against.
-/

/-! ## A171492.P15079142139554289351

`comp[A002796(n+1)-1]+1`
-/

namespace A171492.P15079142139554289351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002796 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A171492.P15079142139554289351

/-! ## A171492.P6936476539820391326

`lt[0, A347323(n)]`
-/

namespace A171492.P6936476539820391326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347323 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A171492.P6936476539820391326

/-! ## A171492.P18215190021057087527

`eq[n+1, (n+1)%A132378(n+1)]+1`
-/

namespace A171492.P18215190021057087527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A132378 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171492.P18215190021057087527

/-! ## A171492.P11609150603978771478

`eq[2, A059427(a(A347323(n)))]` with `a(0)=6`
-/

namespace A171492.P11609150603978771478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f2 =>
  A059427 (f2 (A347323 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171492.P11609150603978771478

/-! ## A171492.P1004152949433418841

`eq[A000038(n)², A000038(A347323(n))]`
-/

namespace A171492.P1004152949433418841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A347323 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171492.P1004152949433418841

/-! ## A171492.P15020585752330604855

`eq[1, A001222(A008578(A347323(n)+1))]`
-/

namespace A171492.P15020585752330604855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008578 (A347323 n + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171492.P15020585752330604855

/-! ## A171492.P15464810081452210323

`eq[A000038(n+1), A000038(A347323(n))]`
-/

namespace A171492.P15464810081452210323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A347323 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171492.P15464810081452210323

/-! ## A171492.P639355767690856629

`eq[1, gcd(A228473(n+1), A347323(n))]`
-/

namespace A171492.P639355767690856629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A228473 (n + 1)) (A347323 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171492.P639355767690856629

/-!
# A171494: a(n) = 2*a(n-1) for n > 1; a(0) = 6, a(1) = 16.

The programs for A171494, the canonical program `A171494.P14742901137835760884` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171494 has offset 0).

The definition of A171494 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)` (program `A171494.P14742901137835760884`, by `A171494.P14742901137835760884.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171494.P14742901137835760884

`2*a(n-1)` with `a(0)=6, a(1)=16`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171494

/-- `2*a(n-1)` -/
def P14742901137835760884.Spec : Prop :=
  ∀ n, (P14742901137835760884.a n : ℤ) = A171494 n

theorem P14742901137835760884.correct : P14742901137835760884.Spec := by
  intro n
  simp only [A171494]

end A171494

/-! ## A171494.P4733782157566764839

`ogf((6+4x)/(1-2x))`
-/

namespace A171494.P4733782157566764839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 4] [1, -2] n

end

end A171494.P4733782157566764839

namespace A171494

/-- `ogf((6+4x)/(1-2x))` -/
def P4733782157566764839.Spec : Prop :=
  ∀ n, P4733782157566764839.a n = A171494 n

end A171494

/-! ## A171494.P15630026385215851087

`(2%a(n-1))^(n+3)` with `a(0)=6`
-/

namespace A171494.P15630026385215851087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  (2 % a (n - 1)) ^ (n + 3)

end

end A171494.P15630026385215851087

namespace A171494

/-- `(2%a(n-1))^(n+3)` -/
def P15630026385215851087.Spec : Prop :=
  ∀ n, (P15630026385215851087.a n : ℤ) = A171494 n

end A171494

/-! ## A171494.P7151357240387182675

`gcd(2, a(n-1))^(n+3)` with `a(0)=6`
-/

namespace A171494.P7151357240387182675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  Nat.gcd 2 (a (n - 1)) ^ (n + 3)

end

end A171494.P7151357240387182675

namespace A171494

/-- `gcd(2, a(n-1))^(n+3)` -/
def P7151357240387182675.Spec : Prop :=
  ∀ n, (P7151357240387182675.a n : ℤ) = A171494 n

end A171494

/-! ## A171494.P6423413626028999715

`a(n-1)+a(n-1)` with `a(0)=6, a(1)=16`
-/

namespace A171494.P6423413626028999715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6, 16] fun n a =>
  a (n - 1) + a (n - 1)

end

end A171494.P6423413626028999715

namespace A171494

/-- `a(n-1)+a(n-1)` -/
def P6423413626028999715.Spec : Prop :=
  ∀ n, (P6423413626028999715.a n : ℤ) = A171494 n

theorem P6423413626028999715.correct : P6423413626028999715.Spec := by
  intro n
  simp only [A171494, Nat.add_sub_cancel, A171494.P6423413626028999715.a, A171494.P14742901137835760884.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A171494

/-! ## A171494.P2823435115939398661

`round(2^(n+3)-acot(2*n))`
-/

namespace A171494.P2823435115939398661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ (n + 3) : ℝ) - SequenceMachineLib.acot (2 * n : ℝ))

end

end A171494.P2823435115939398661

namespace A171494

/-- `round(2^(n+3)-acot(2*n))` -/
def P2823435115939398661.Spec : Prop :=
  ∀ n, P2823435115939398661.a n = A171494 n

end A171494

/-! ## A171494.P1938112289489152754

`2^(n+3)-C(2, (n+1)²)`
-/

namespace A171494.P1938112289489152754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) : ℤ) - (Nat.choose 2 ((n + 1) ^ 2) : ℤ)

end

end A171494.P1938112289489152754

namespace A171494

/-- `2^(n+3)-C(2, (n+1)²)` -/
def P1938112289489152754.Spec : Prop :=
  ∀ n, P1938112289489152754.a n = A171494 n

end A171494

/-! ## A171494.P17512455408632439798

`abs(C(2, 2*n+1)-2^(n+3))`
-/

namespace A171494.P17512455408632439798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose 2 (2 * n + 1) : ℤ) - (2 ^ (n + 3) : ℤ)|

end

end A171494.P17512455408632439798

namespace A171494

/-- `abs(C(2, 2*n+1)-2^(n+3))` -/
def P17512455408632439798.Spec : Prop :=
  ∀ n, P17512455408632439798.a n = A171494 n

end A171494

/-! ## A171494.P14432367410783630808

`(4-floor(1/(n+1)))*2^(n+1)`
-/

namespace A171494.P14432367410783630808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - ⌊1 / (n + 1 : ℚ)⌋) * (2 ^ (n + 1) : ℤ)

end

end A171494.P14432367410783630808

namespace A171494

/-- `(4-floor(1/(n+1)))*2^(n+1)` -/
def P14432367410783630808.Spec : Prop :=
  ∀ n, P14432367410783630808.a n = A171494 n

end A171494

/-! ## A171494.P14041102344277179699

`xor(2^(n+3)+n-1, abs(1-n))`
-/

namespace A171494.P14041102344277179699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((2 ^ (n + 3) : ℤ) + ((n : ℤ) - 1)) |1 - (n : ℤ)|

end

end A171494.P14041102344277179699

namespace A171494

/-- `xor(2^(n+3)+n-1, abs(1-n))` -/
def P14041102344277179699.Spec : Prop :=
  ∀ n, P14041102344277179699.a n = A171494 n

end A171494

/-! ## A171494.P4246264528316738732

`record[A164654(n+3)]`
-/

namespace A171494.P4246264528316738732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164654 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171494.P4246264528316738732

namespace A171494

/-- `record[A164654(n+3)]` -/
def P4246264528316738732.Spec : Prop :=
  ∀ n, P4246264528316738732.a n = A171494 n

end A171494

/-! ## A171494.P5055386801463312970

`A286521(n+2)+1`
-/

namespace A171494.P5055386801463312970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286521 (n + 2) + 1

end

end A171494.P5055386801463312970

namespace A171494

/-- `A286521(n+2)+1` -/
def P5055386801463312970.Spec : Prop :=
  ∀ n, P5055386801463312970.a n = A171494 n

end A171494

/-! ## A171494.P17046190215362655185

`2^(n+3)-A000038(n)`
-/

namespace A171494.P17046190215362655185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) : ℤ) - A000038 n

end

end A171494.P17046190215362655185

namespace A171494

/-- `2^(n+3)-A000038(n)` -/
def P17046190215362655185.Spec : Prop :=
  ∀ n, P17046190215362655185.a n = A171494 n

end A171494

/-! ## A171494.P3818206137308745536

`A132477(n+1)+2^(n+1)`
-/

namespace A171494.P3818206137308745536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132477 (n + 1) + (2 ^ (n + 1) : ℤ)

end

end A171494.P3818206137308745536

namespace A171494

/-- `A132477(n+1)+2^(n+1)` -/
def P3818206137308745536.Spec : Prop :=
  ∀ n, P3818206137308745536.a n = A171494 n

end A171494

/-! ## A171494.P165741949010218755

`2^(n+3)-A130706(n+1)`
-/

namespace A171494.P165741949010218755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) : ℤ) - A130706 (n + 1)

end

end A171494.P165741949010218755

namespace A171494

/-- `2^(n+3)-A130706(n+1)` -/
def P165741949010218755.Spec : Prop :=
  ∀ n, P165741949010218755.a n = A171494 n

end A171494

/-! ## A171494.P18096586379000394514

`2^(n+3)-A130779(n+2)`
-/

namespace A171494.P18096586379000394514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) : ℤ) - A130779 (n + 2)

end

end A171494.P18096586379000394514

namespace A171494

/-- `2^(n+3)-A130779(n+2)` -/
def P18096586379000394514.Spec : Prop :=
  ∀ n, P18096586379000394514.a n = A171494 n

end A171494

/-! ## A171494.P11995315454232169458

`2^(n+3)-A167891(n+2)`
-/

namespace A171494.P11995315454232169458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) : ℤ) - A167891 (n + 2)

end

end A171494.P11995315454232169458

namespace A171494

/-- `2^(n+3)-A167891(n+2)` -/
def P11995315454232169458.Spec : Prop :=
  ∀ n, P11995315454232169458.a n = A171494 n

end A171494

/-! ## A171494.P2648204175629906225

`2^(n+3)-A167876(n+3)`
-/

namespace A171494.P2648204175629906225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) : ℤ) - A167876 (n + 3)

end

end A171494.P2648204175629906225

namespace A171494

/-- `2^(n+3)-A167876(n+3)` -/
def P2648204175629906225.Spec : Prop :=
  ∀ n, P2648204175629906225.a n = A171494 n

end A171494

/-! ## A171494.P5046993495886834808

`A090989(A130773(n+1))`
-/

namespace A171494.P5046993495886834808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090989 (A130773 (n + 1)).toNat

end

end A171494.P5046993495886834808

namespace A171494

/-- `A090989(A130773(n+1))` -/
def P5046993495886834808.Spec : Prop :=
  ∀ n, P5046993495886834808.a n = A171494 n

end A171494

/-! ## A171494.P8516230818926539903

`A164654(A051755(n+2))`
-/

namespace A171494.P8516230818926539903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164654 (A051755 (n + 2)).toNat

end

end A171494.P8516230818926539903

namespace A171494

/-- `A164654(A051755(n+2))` -/
def P8516230818926539903.Spec : Prop :=
  ∀ n, P8516230818926539903.a n = A171494 n

end A171494

/-!
# A171495: a(n) = 3*a(n-1)+4 for n > 0; a(0) = 6.

The programs for A171495, the canonical program `A171495.P3999450429865024518` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171495 has offset 0).

The definition of A171495 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+4` (program `A171495.P3999450429865024518`, by `A171495.P3999450429865024518.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171495.P1111536998363941193

`2*(4*3^n-1)`
-/

namespace A171495.P1111536998363941193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((4 * 3 ^ n : ℤ) - 1)

end

end A171495.P1111536998363941193

namespace A171495

/-- `2*(4*3^n-1)` -/
def P1111536998363941193.Spec : Prop :=
  ∀ n, P1111536998363941193.a n = A171495 n

theorem P1111536998363941193.correct : P1111536998363941193.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A171495, Nat.add_sub_cancel, A171495.P1111536998363941193.a, A171495.P3999450429865024518.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A171495, Nat.add_sub_cancel, A171495.P1111536998363941193.a, A171495.P3999450429865024518.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A171495

/-! ## A171495.P3999450429865024518

`3*a(n-1)+4` with `a(0)=6`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171495

/-- `3*a(n-1)+4` -/
def P3999450429865024518.Spec : Prop :=
  ∀ n, (P3999450429865024518.a n : ℤ) = A171495 n

theorem P3999450429865024518.correct : P3999450429865024518.Spec := by
  intro n
  simp only [A171495]

end A171495

/-! ## A171495.P13299864548964836509

`xor(14, 8*3^n)`
-/

namespace A171495.P13299864548964836509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 14 (8 * 3 ^ n)

end

end A171495.P13299864548964836509

namespace A171495

/-- `xor(14, 8*3^n)` -/
def P13299864548964836509.Spec : Prop :=
  ∀ n, (P13299864548964836509.a n : ℤ) = A171495 n

end A171495

/-! ## A171495.P14929019459116846808

`ogf((6-2x)/(1-4x+3x^2))`
-/

namespace A171495.P14929019459116846808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -2] [1, -4, 3] n

end

end A171495.P14929019459116846808

namespace A171495

/-- `ogf((6-2x)/(1-4x+3x^2))` -/
def P14929019459116846808.Spec : Prop :=
  ∀ n, P14929019459116846808.a n = A171495 n

end A171495

/-! ## A171495.P12252763615284512910

`abs(2-lcm(8, 3^n))`
-/

namespace A171495.P12252763615284512910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (Nat.lcm 8 (3 ^ n) : ℤ)|

end

end A171495.P12252763615284512910

namespace A171495

/-- `abs(2-lcm(8, 3^n))` -/
def P12252763615284512910.Spec : Prop :=
  ∀ n, P12252763615284512910.a n = A171495 n

end A171495

/-! ## A171495.P16286340215239799517

`or(4, 3*a(n-1))` with `a(0)=6`
-/

namespace A171495.P16286340215239799517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  Nat.lor 4 (3 * a (n - 1))

end

end A171495.P16286340215239799517

namespace A171495

/-- `or(4, 3*a(n-1))` -/
def P16286340215239799517.Spec : Prop :=
  ∀ n, (P16286340215239799517.a n : ℤ) = A171495 n

end A171495

/-! ## A171495.P17691517051995393336

`∑[3*a(n-1)]` with `a(0)=6, a(1)=16`
-/

namespace A171495.P17691517051995393336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 16] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171495.P17691517051995393336

namespace A171495

/-- `∑[3*a(n-1)]` -/
def P17691517051995393336.Spec : Prop :=
  ∀ n, (P17691517051995393336.a n : ℤ) = A171495 n

end A171495

/-! ## A171495.P16811664543345012838

`a(n-1)+a(n-1)+a(n-1)+4` with `a(0)=6`
-/

namespace A171495.P16811664543345012838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + 4))

end

end A171495.P16811664543345012838

namespace A171495

/-- `a(n-1)+a(n-1)+a(n-1)+4` -/
def P16811664543345012838.Spec : Prop :=
  ∀ n, (P16811664543345012838.a n : ℤ) = A171495 n

theorem P16811664543345012838.correct : P16811664543345012838.Spec := by
  intro n
  simp only [A171495, Nat.add_sub_cancel, A171495.P16811664543345012838.a, A171495.P3999450429865024518.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A171495

/-! ## A171495.P13060100477446775521

`A198644(n)-1`
-/

namespace A171495.P13060100477446775521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198644 n - 1

end

end A171495.P13060100477446775521

namespace A171495

/-- `A198644(n)-1` -/
def P13060100477446775521.Spec : Prop :=
  ∀ n, P13060100477446775521.a n = A171495 n

end A171495

/-! ## A171495.P6610315333085603892

`A005051(n)-2`
-/

namespace A171495.P6610315333085603892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005051 n - 2

end

end A171495.P6610315333085603892

namespace A171495

/-- `A005051(n)-2` -/
def P6610315333085603892.Spec : Prop :=
  ∀ n, P6610315333085603892.a n = A171495 n

end A171495

/-! ## A171495.P15893616283191510062

`A199111(n)-3`
-/

namespace A171495.P15893616283191510062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199111 n - 3

end

end A171495.P15893616283191510062

namespace A171495

/-- `A199111(n)-3` -/
def P15893616283191510062.Spec : Prop :=
  ∀ n, P15893616283191510062.a n = A171495 n

end A171495

/-! ## A171495.P7514036527927456023

`A036545(n)+5`
-/

namespace A171495.P7514036527927456023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036545 n + 5

end

end A171495.P7514036527927456023

namespace A171495

/-- `A036545(n)+5` -/
def P7514036527927456023.Spec : Prop :=
  ∀ n, P7514036527927456023.a n = A171495 n

end A171495

/-! ## A171495.P12409080646131312772

`Δ[A036543(n)]-2`
-/

namespace A171495.P12409080646131312772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A171495.P12409080646131312772

namespace A171495

/-- `Δ[A036543(n)]-2` -/
def P12409080646131312772.Spec : Prop :=
  ∀ n, P12409080646131312772.a n = A171495 n

end A171495

/-! ## A171495.P13407781087495593859

`Δ[A199108(n)]-2`
-/

namespace A171495.P13407781087495593859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A171495.P13407781087495593859

namespace A171495

/-- `Δ[A199108(n)]-2` -/
def P13407781087495593859.Spec : Prop :=
  ∀ n, P13407781087495593859.a n = A171495 n

end A171495

/-! ## A171495.P16806241679760570537

`Δ[A302507(n)]-2`
-/

namespace A171495.P16806241679760570537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A171495.P16806241679760570537

namespace A171495

/-- `Δ[A302507(n)]-2` -/
def P16806241679760570537.Spec : Prop :=
  ∀ n, P16806241679760570537.a n = A171495 n

end A171495

/-! ## A171495.P4864722669756832616

`Δ[2*A132308(n)]`
-/

namespace A171495.P4864722669756832616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171495.P4864722669756832616

namespace A171495

/-- `Δ[2*A132308(n)]` -/
def P4864722669756832616.Spec : Prop :=
  ∀ n, P4864722669756832616.a n = A171495 n

end A171495

/-! ## A171495.P12390546883591977671

`abs(Δ[Δ[A076040(n)]])`
-/

namespace A171495.P12390546883591977671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076040 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A171495.P12390546883591977671

namespace A171495

/-- `abs(Δ[Δ[A076040(n)]])` -/
def P12390546883591977671.Spec : Prop :=
  ∀ n, P12390546883591977671.a n = A171495 n

end A171495

/-! ## A171495.P8434574010598697532

`A083583(n+1)-2`
-/

namespace A171495.P8434574010598697532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083583 (n + 1) - 2

end

end A171495.P8434574010598697532

namespace A171495

/-- `A083583(n+1)-2` -/
def P8434574010598697532.Spec : Prop :=
  ∀ n, P8434574010598697532.a n = A171495 n

end A171495

/-! ## A171495.P10315983334674060715

`A080923(n+2)-2`
-/

namespace A171495.P10315983334674060715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080923 (n + 2) - 2

end

end A171495.P10315983334674060715

namespace A171495

/-- `A080923(n+2)-2` -/
def P10315983334674060715.Spec : Prop :=
  ∀ n, P10315983334674060715.a n = A171495 n

end A171495

/-! ## A171495.P4743760882869476401

`A026097(n+3)-2`
-/

namespace A171495.P4743760882869476401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026097 (n + 3) - 2

end

end A171495.P4743760882869476401

namespace A171495

/-- `A026097(n+3)-2` -/
def P4743760882869476401.Spec : Prop :=
  ∀ n, P4743760882869476401.a n = A171495 n

end A171495

/-!
# A171496: a(n) = 6*a(n-1) - 8*a(n-2) for n > 1; a(0) = 6, a(1) = 28.

The programs for A171496, the canonical program `A171496.P2148353689396792841` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171496 has offset 0).

The definition of A171496 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-8*a(n-2)` (program `A171496.P2148353689396792841`, by `A171496.P2148353689396792841.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171496.P14343499680298148818

`8*4^n-2*2^n`
-/

namespace A171496.P14343499680298148818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * 4 ^ n : ℤ) - (2 * 2 ^ n : ℤ)

end

end A171496.P14343499680298148818

namespace A171496

/-- `8*4^n-2*2^n` -/
def P14343499680298148818.Spec : Prop :=
  ∀ n, P14343499680298148818.a n = A171496 n

theorem P14343499680298148818.correct : P14343499680298148818.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A171496, Nat.add_sub_cancel, A171496.P14343499680298148818.a, A171496.P2148353689396792841.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A171496, Nat.add_sub_cancel, A171496.P14343499680298148818.a, A171496.P2148353689396792841.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A171496

/-! ## A171496.P2148353689396792841

`6*a(n-1)-8*a(n-2)` with `a(0)=6, a(1)=28`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171496

/-- `6*a(n-1)-8*a(n-2)` -/
def P2148353689396792841.Spec : Prop :=
  ∀ n, P2148353689396792841.a n = A171496 n

theorem P2148353689396792841.correct : P2148353689396792841.Spec := by
  intro n
  simp only [A171496]

end A171496

/-! ## A171496.P14737803154761161118

`A171476(n+1)`
-/

namespace A171496.P14737803154761161118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171476 (n + 1)

end

end A171496.P14737803154761161118

namespace A171496

/-- `A171476(n+1)` -/
def P14737803154761161118.Spec : Prop :=
  ∀ n, P14737803154761161118.a n = A171496 n

end A171496

/-! ## A171496.P6629121460439450776

`A006516(n+2)`
-/

namespace A171496.P6629121460439450776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 (n + 2)

end

end A171496.P6629121460439450776

namespace A171496

/-- `A006516(n+2)` -/
def P6629121460439450776.Spec : Prop :=
  ∀ n, P6629121460439450776.a n = A171496 n

end A171496

/-! ## A171496.P6130283128409902371

`ogf((6-8x)/(1-6x+8x^2))`
-/

namespace A171496.P6130283128409902371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -8] [1, -6, 8] n

end

end A171496.P6130283128409902371

namespace A171496

/-- `ogf((6-8x)/(1-6x+8x^2))` -/
def P6130283128409902371.Spec : Prop :=
  ∀ n, P6130283128409902371.a n = A171496 n

end A171496

/-! ## A171496.P17235418981530620101

`or(2*a(n-1), 4*a(n-1))` with `a(0)=6`
-/

namespace A171496.P17235418981530620101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  Nat.lor (2 * a (n - 1)) (4 * a (n - 1))

end

end A171496.P17235418981530620101

namespace A171496

/-- `or(2*a(n-1), 4*a(n-1))` -/
def P17235418981530620101.Spec : Prop :=
  ∀ n, (P17235418981530620101.a n : ℤ) = A171496 n

end A171496

/-! ## A171496.P7498073143671141959

`lcm(lcm(2^n, ∑[2^n])+2*4^n, 2^(n+1))`
-/

namespace A171496.P7498073143671141959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (Nat.lcm (2 ^ n) (∑ j ∈ Finset.range (n + 1), f1 j) + 2 * 4 ^ n) (2 ^ (n + 1))

end

end A171496.P7498073143671141959

namespace A171496

/-- `lcm(lcm(2^n, ∑[2^n])+2*4^n, 2^(n+1))` -/
def P7498073143671141959.Spec : Prop :=
  ∀ n, (P7498073143671141959.a n : ℤ) = A171496 n

end A171496

/-! ## A171496.P1195777678356000629

`Δ[A171477(n)]`
-/

namespace A171496.P1195777678356000629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171477 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171496.P1195777678356000629

namespace A171496

/-- `Δ[A171477(n)]` -/
def P1195777678356000629.Spec : Prop :=
  ∀ n, P1195777678356000629.a n = A171496 n

end A171496

/-! ## A171496.P13281863925847356887

`A086652(2*n)`
-/

namespace A171496.P13281863925847356887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086652 (2 * n)

end

end A171496.P13281863925847356887

namespace A171496

/-- `A086652(2*n)` -/
def P13281863925847356887.Spec : Prop :=
  ∀ n, P13281863925847356887.a n = A171496 n

end A171496

/-! ## A171496.P13761703097733183907

`2*A171499(n)`
-/

namespace A171496.P13761703097733183907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171499 n

end

end A171496.P13761703097733183907

namespace A171496

/-- `2*A171499(n)` -/
def P13761703097733183907.Spec : Prop :=
  ∀ n, P13761703097733183907.a n = A171496 n

end A171496

/-! ## A171496.P16389474421118977780

`Δ[A006095(n+2)]`
-/

namespace A171496.P16389474421118977780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006095 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171496.P16389474421118977780

namespace A171496

/-- `Δ[A006095(n+2)]` -/
def P16389474421118977780.Spec : Prop :=
  ∀ n, P16389474421118977780.a n = A171496 n

end A171496

/-! ## A171496.P9372105728038747499

`Δ[A123290(n+2)]`
-/

namespace A171496.P9372105728038747499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123290 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171496.P9372105728038747499

namespace A171496

/-- `Δ[A123290(n+2)]` -/
def P9372105728038747499.Spec : Prop :=
  ∀ n, P9372105728038747499.a n = A171496 n

end A171496

/-! ## A171496.P15616359137113361740

`record[A278756(n+2)]`
-/

namespace A171496.P15616359137113361740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278756 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171496.P15616359137113361740

namespace A171496

/-- `record[A278756(n+2)]` -/
def P15616359137113361740.Spec : Prop :=
  ∀ n, P15616359137113361740.a n = A171496 n

end A171496

/-! ## A171496.P10004775915319276060

`record[A282418(n+2)]`
-/

namespace A171496.P10004775915319276060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282418 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171496.P10004775915319276060

namespace A171496

/-- `record[A282418(n+2)]` -/
def P10004775915319276060.Spec : Prop :=
  ∀ n, P10004775915319276060.a n = A171496 n

end A171496

/-! ## A171496.P5531748242061180156

`record[A287470(n+2)]`
-/

namespace A171496.P5531748242061180156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287470 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171496.P5531748242061180156

namespace A171496

/-- `record[A287470(n+2)]` -/
def P5531748242061180156.Spec : Prop :=
  ∀ n, P5531748242061180156.a n = A171496 n

end A171496

/-! ## A171496.P5882459012088865678

`A122746(2*(n+1))`
-/

namespace A171496.P5882459012088865678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122746 (2 * (n + 1))

end

end A171496.P5882459012088865678

namespace A171496

/-- `A122746(2*(n+1))` -/
def P5882459012088865678.Spec : Prop :=
  ∀ n, P5882459012088865678.a n = A171496 n

end A171496

/-! ## A171496.P8058125469950552872

`2*(A187560(n)+1)`
-/

namespace A171496.P8058125469950552872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A187560 n + 1)

end

end A171496.P8058125469950552872

namespace A171496

/-- `2*(A187560(n)+1)` -/
def P8058125469950552872.Spec : Prop :=
  ∀ n, P8058125469950552872.a n = A171496 n

end A171496

/-! ## A171496.P14054844360098816200

`A278756(2*(n+1))`
-/

namespace A171496.P14054844360098816200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278756 (2 * (n + 1))

end

end A171496.P14054844360098816200

namespace A171496

/-- `A278756(2*(n+1))` -/
def P14054844360098816200.Spec : Prop :=
  ∀ n, P14054844360098816200.a n = A171496 n

end A171496

/-! ## A171496.P8375596680019315110

`A282418(2*(n+1))`
-/

namespace A171496.P8375596680019315110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282418 (2 * (n + 1))

end

end A171496.P8375596680019315110

namespace A171496

/-- `A282418(2*(n+1))` -/
def P8375596680019315110.Spec : Prop :=
  ∀ n, P8375596680019315110.a n = A171496 n

end A171496

/-! ## A171496.P8363086344743785489

`A285543(2*(n+1))`
-/

namespace A171496.P8363086344743785489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285543 (2 * (n + 1))

end

end A171496.P8363086344743785489

namespace A171496

/-- `A285543(2*(n+1))` -/
def P8363086344743785489.Spec : Prop :=
  ∀ n, P8363086344743785489.a n = A171496 n

end A171496

/-!
# A171497: a(n) = 2*a(n-1) for n > 1; a(0) = 3, a(1) = 8.

The programs for A171497, the canonical program `A171497.P12966214924374384027` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171497 has offset 0).

The definition of A171497 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)` (program `A171497.P12966214924374384027`, by `A171497.P12966214924374384027.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171497.P12966214924374384027

`2*a(n-1)` with `a(0)=3, a(1)=8`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171497

/-- `2*a(n-1)` -/
def P12966214924374384027.Spec : Prop :=
  ∀ n, (P12966214924374384027.a n : ℤ) = A171497 n

theorem P12966214924374384027.correct : P12966214924374384027.Spec := by
  intro n
  simp only [A171497]

end A171497

/-! ## A171497.P7072833608426223849

`ogf((3+2x)/(1-2x))`
-/

namespace A171497.P7072833608426223849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2] [1, -2] n

end

end A171497.P7072833608426223849

namespace A171497

/-- `ogf((3+2x)/(1-2x))` -/
def P7072833608426223849.Spec : Prop :=
  ∀ n, P7072833608426223849.a n = A171497 n

end A171497

/-! ## A171497.P11849919335570435186

`2^(n+2)-floor(acot(n))`
-/

namespace A171497.P11849919335570435186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A171497.P11849919335570435186

namespace A171497

/-- `2^(n+2)-floor(acot(n))` -/
def P11849919335570435186.Spec : Prop :=
  ∀ n, P11849919335570435186.a n = A171497 n

end A171497

/-! ## A171497.P8788308658742093638

`ceil(2^(n+2)-acot(n))`
-/

namespace A171497.P8788308658742093638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ (n + 2) : ℝ) - SequenceMachineLib.acot (n : ℝ)⌉

end

end A171497.P8788308658742093638

namespace A171497

/-- `ceil(2^(n+2)-acot(n))` -/
def P8788308658742093638.Spec : Prop :=
  ∀ n, P8788308658742093638.a n = A171497 n

end A171497

/-! ## A171497.P16752143741783576193

`lcm(4, 2-a(n-1))+4` with `a(0)=3`
-/

namespace A171497.P16752143741783576193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Int.lcm 4 (2 - (a (n - 1) : ℤ)) + 4

end

end A171497.P16752143741783576193

namespace A171497

/-- `lcm(4, 2-a(n-1))+4` -/
def P16752143741783576193.Spec : Prop :=
  ∀ n, (P16752143741783576193.a n : ℤ) = A171497 n

end A171497

/-! ## A171497.P484386751697629424

`2^(n+2)-C(2, n+2)`
-/

namespace A171497.P484386751697629424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

end

end A171497.P484386751697629424

namespace A171497

/-- `2^(n+2)-C(2, n+2)` -/
def P484386751697629424.Spec : Prop :=
  ∀ n, P484386751697629424.a n = A171497 n

end A171497

/-! ## A171497.P13299472773040246331

`2^(2%a(n-1)+n)` with `a(0)=3`
-/

namespace A171497.P13299472773040246331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  2 ^ (2 % a (n - 1) + n)

end

end A171497.P13299472773040246331

namespace A171497

/-- `2^(2%a(n-1)+n)` -/
def P13299472773040246331.Spec : Prop :=
  ∀ n, (P13299472773040246331.a n : ℤ) = A171497 n

end A171497

/-! ## A171497.P2882302705103756818

`a(n-1)+a(n-1)` with `a(0)=3, a(1)=8`
-/

namespace A171497.P2882302705103756818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 8] fun n a =>
  a (n - 1) + a (n - 1)

end

end A171497.P2882302705103756818

namespace A171497

/-- `a(n-1)+a(n-1)` -/
def P2882302705103756818.Spec : Prop :=
  ∀ n, (P2882302705103756818.a n : ℤ) = A171497 n

theorem P2882302705103756818.correct : P2882302705103756818.Spec := by
  intro n
  simp only [A171497, Nat.add_sub_cancel, A171497.P2882302705103756818.a, A171497.P12966214924374384027.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A171497

/-! ## A171497.P49984545479674908

`round(2^(n+2)-acot(n+1))`
-/

namespace A171497.P49984545479674908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ (n + 2) : ℝ) - SequenceMachineLib.acot (n + 1 : ℝ))

end

end A171497.P49984545479674908

namespace A171497

/-- `round(2^(n+2)-acot(n+1))` -/
def P49984545479674908.Spec : Prop :=
  ∀ n, P49984545479674908.a n = A171497 n

end A171497

/-! ## A171497.P5906375891930891667

`∑[C(n, n²)+2^(n+1)]`
-/

namespace A171497.P5906375891930891667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (n ^ 2) + 2 ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171497.P5906375891930891667

namespace A171497

/-- `∑[C(n, n²)+2^(n+1)]` -/
def P5906375891930891667.Spec : Prop :=
  ∀ n, (P5906375891930891667.a n : ℤ) = A171497 n

end A171497

/-! ## A171497.P12892194538813538442

`a(n-1)/(1-1/2)` with `a(0)=3, a(1)=8`
-/

namespace A171497.P12892194538813538442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 8] fun n a =>
  a (n - 1) / (1 - (1 : ℚ) / 2)

end

end A171497.P12892194538813538442

namespace A171497

/-- `a(n-1)/(1-1/2)` -/
def P12892194538813538442.Spec : Prop :=
  ∀ n, P12892194538813538442.a n = (A171497 n : ℚ)

end A171497

/-! ## A171497.P6243487354863517581

`2^(n+2)-floor(1/(n+1))`
-/

namespace A171497.P6243487354863517581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - ⌊1 / (n + 1 : ℚ)⌋

end

end A171497.P6243487354863517581

namespace A171497

/-- `2^(n+2)-floor(1/(n+1))` -/
def P6243487354863517581.Spec : Prop :=
  ∀ n, P6243487354863517581.a n = A171497 n

end A171497

/-! ## A171497.P17738301627914255811

`record[xor(2^n+n-3, n-3)]`
-/

namespace A171497.P17738301627914255811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((2 ^ n : ℤ) + ((n : ℤ) - 3)) ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171497.P17738301627914255811

namespace A171497

/-- `record[xor(2^n+n-3, n-3)]` -/
def P17738301627914255811.Spec : Prop :=
  ∀ n, P17738301627914255811.a n = A171497 n

end A171497

/-! ## A171497.P18180801875994982658

`ceil(atan(n+1)+∑[2^(n+1)])`
-/

namespace A171497.P18180801875994982658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n + 1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉

end

end A171497.P18180801875994982658

namespace A171497

/-- `ceil(atan(n+1)+∑[2^(n+1)])` -/
def P18180801875994982658.Spec : Prop :=
  ∀ n, P18180801875994982658.a n = A171497 n

end A171497

/-! ## A171497.P13082999215974775030

`floor(gcd(3, a(n-1))-(1-a(n-1)-a(n-1)))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A171497.P13082999215974775030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (Int.gcd 3 (a (n - 1)) : ℤ) - (1 - a (n - 1) - a (n - 1))

end

end A171497.P13082999215974775030

namespace A171497

/-- `floor(gcd(3, a(n-1))-(1-a(n-1)-a(n-1)))` -/
def P13082999215974775030.Spec : Prop :=
  ∀ n, P13082999215974775030.a n = A171497 n

end A171497

/-! ## A171497.P4083573209138195293

`A077552(n+1)`
-/

namespace A171497.P4083573209138195293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077552 (n + 1)

end

end A171497.P4083573209138195293

namespace A171497

/-- `A077552(n+1)` -/
def P4083573209138195293.Spec : Prop :=
  ∀ n, P4083573209138195293.a n = A171497 n

end A171497

/-! ## A171497.P2487626449388088418

`∑[A091270(n)+3]`
-/

namespace A171497.P2487626449388088418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091270 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171497.P2487626449388088418

namespace A171497

/-- `∑[A091270(n)+3]` -/
def P2487626449388088418.Spec : Prop :=
  ∀ n, P2487626449388088418.a n = A171497 n

end A171497

/-! ## A171497.P8690540085607292881

`record[A164654(n+1)]`
-/

namespace A171497.P8690540085607292881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171497.P8690540085607292881

namespace A171497

/-- `record[A164654(n+1)]` -/
def P8690540085607292881.Spec : Prop :=
  ∀ n, P8690540085607292881.a n = A171497 n

end A171497

/-! ## A171497.P17549399901222598320

`A108155(5*(n+1))`
-/

namespace A171497.P17549399901222598320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108155 (5 * (n + 1))

end

end A171497.P17549399901222598320

namespace A171497

/-- `A108155(5*(n+1))` -/
def P17549399901222598320.Spec : Prop :=
  ∀ n, P17549399901222598320.a n = A171497 n

end A171497

/-! ## A171497.P18328715755760270362

`2^n*A255176(n)`
-/

namespace A171497.P18328715755760270362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A255176 n

end

end A171497.P18328715755760270362

namespace A171497

/-- `2^n*A255176(n)` -/
def P18328715755760270362.Spec : Prop :=
  ∀ n, P18328715755760270362.a n = A171497 n

end A171497

/-!
# A171498: a(n) = 4*3^n-1.

The programs for A171498, the canonical program `A171498.P16617065330167147573` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171498 has offset 0).

The definition of A171498 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*3^n-1` (program `A171498.P16617065330167147573`, by `A171498.P16617065330167147573.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171498.P16617065330167147573

`4*3^n-1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171498

/-- `4*3^n-1` -/
def P16617065330167147573.Spec : Prop :=
  ∀ n, P16617065330167147573.a n = A171498 n

theorem P16617065330167147573.correct : P16617065330167147573.Spec := by
  intro n
  simp only [A171498]

end A171498

/-! ## A171498.P17983094909182766462

`xor(7, 4*3^n)`
-/

namespace A171498.P17983094909182766462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 (4 * 3 ^ n)

end

end A171498.P17983094909182766462

namespace A171498

/-- `xor(7, 4*3^n)` -/
def P17983094909182766462.Spec : Prop :=
  ∀ n, (P17983094909182766462.a n : ℤ) = A171498 n

end A171498

/-! ## A171498.P10952255228332927069

`ogf((3-x)/(1-4x+3x^2))`
-/

namespace A171498.P10952255228332927069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1] [1, -4, 3] n

end

end A171498.P10952255228332927069

namespace A171498

/-- `ogf((3-x)/(1-4x+3x^2))` -/
def P10952255228332927069.Spec : Prop :=
  ∀ n, P10952255228332927069.a n = A171498 n

end A171498

/-! ## A171498.P7626787467578666762

`abs(1-lcm(4, 3^n))`
-/

namespace A171498.P7626787467578666762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.lcm 4 (3 ^ n) : ℤ)|

end

end A171498.P7626787467578666762

namespace A171498

/-- `abs(1-lcm(4, 3^n))` -/
def P7626787467578666762.Spec : Prop :=
  ∀ n, P7626787467578666762.a n = A171498 n

end A171498

/-! ## A171498.P10425436084715754487

`or(2, 3*a(n-1))` with `a(0)=3`
-/

namespace A171498.P10425436084715754487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.lor 2 (3 * a (n - 1))

end

end A171498.P10425436084715754487

namespace A171498

/-- `or(2, 3*a(n-1))` -/
def P10425436084715754487.Spec : Prop :=
  ∀ n, (P10425436084715754487.a n : ℤ) = A171498 n

end A171498

/-! ## A171498.P6193807857451205973

`∑[3*a(n-1)]` with `a(0)=3, a(1)=8`
-/

namespace A171498.P6193807857451205973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 8] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171498.P6193807857451205973

namespace A171498

/-- `∑[3*a(n-1)]` -/
def P6193807857451205973.Spec : Prop :=
  ∀ n, (P6193807857451205973.a n : ℤ) = A171498 n

end A171498

/-! ## A171498.P7073641494528173071

`abs(3*a(n-1)+2)` with `a(0)=3`
-/

namespace A171498.P7073641494528173071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  3 * a (n - 1) + 2

end

end A171498.P7073641494528173071

namespace A171498

/-- `abs(3*a(n-1)+2)` -/
def P7073641494528173071.Spec : Prop :=
  ∀ n, (P7073641494528173071.a n : ℤ) = A171498 n

theorem P7073641494528173071.correct : P7073641494528173071.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A171498, Nat.add_sub_cancel, A171498.P7073641494528173071.a, A171498.P16617065330167147573.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A171498, Nat.add_sub_cancel, A171498.P7073641494528173071.a, A171498.P16617065330167147573.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A171498

/-! ## A171498.P10111351753394254196

`ceil(3*a(n-1)+ϕ)` with `a(0)=3`
-/

namespace A171498.P10111351753394254196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌈(3 * a (n - 1) : ℝ) + Real.goldenRatio⌉

end

end A171498.P10111351753394254196

namespace A171498

/-- `ceil(3*a(n-1)+ϕ)` -/
def P10111351753394254196.Spec : Prop :=
  ∀ n, P10111351753394254196.a n = A171498 n

end A171498

/-! ## A171498.P11850324255082723149

`round(3*a(n-1)+ϕ)` with `a(0)=3`
-/

namespace A171498.P11850324255082723149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  SequenceMachineLib.roundAway ((3 * a (n - 1) : ℝ) + Real.goldenRatio)

end

end A171498.P11850324255082723149

namespace A171498

/-- `round(3*a(n-1)+ϕ)` -/
def P11850324255082723149.Spec : Prop :=
  ∀ n, P11850324255082723149.a n = A171498 n

end A171498

/-! ## A171498.P10983726370132434372

`record[3*a(n-2)+2]` with `a(0)=3, a(1)=0`
-/

namespace A171498.P10983726370132434372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 0] fun n f1 =>
  3 * f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171498.P10983726370132434372

namespace A171498

/-- `record[3*a(n-2)+2]` -/
def P10983726370132434372.Spec : Prop :=
  ∀ n, (P10983726370132434372.a n : ℤ) = A171498 n

end A171498

/-! ## A171498.P11713360583372082584

`-xor(2, -(3*a(n-1)))` with `a(0)=3`
-/

namespace A171498.P11713360583372082584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  -Int.xor 2 (-(3 * a (n - 1)))

end

end A171498.P11713360583372082584

namespace A171498

/-- `-xor(2, -(3*a(n-1)))` -/
def P11713360583372082584.Spec : Prop :=
  ∀ n, P11713360583372082584.a n = A171498 n

end A171498

/-! ## A171498.P2480425569990320028

`floor(4/2+3*a(n-1))` with `a(0)=3`
-/

namespace A171498.P2480425569990320028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(4 : ℚ) / 2 + (3 * a (n - 1) : ℚ)⌋

end

end A171498.P2480425569990320028

namespace A171498

/-- `floor(4/2+3*a(n-1))` -/
def P2480425569990320028.Spec : Prop :=
  ∀ n, P2480425569990320028.a n = A171498 n

end A171498

/-! ## A171498.P3534780538201942500

`2*(3/2*a(n-1)+1)` with `a(0)=3`
-/

namespace A171498.P3534780538201942500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  2 * ((3 : ℚ) / 2 * a (n - 1) + 1)

end

end A171498.P3534780538201942500

namespace A171498

/-- `2*(3/2*a(n-1)+1)` -/
def P3534780538201942500.Spec : Prop :=
  ∀ n, P3534780538201942500.a n = (A171498 n : ℚ)

theorem P3534780538201942500.correct : P3534780538201942500.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A171498, Nat.add_sub_cancel, A171498.P3534780538201942500.a, A171498.P16617065330167147573.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A171498, Nat.add_sub_cancel, A171498.P3534780538201942500.a, A171498.P16617065330167147573.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A171498

/-! ## A171498.P4348181324187283954

`floor(3*a(n-1)-(2/3-3))` with `a(0)=3`
-/

namespace A171498.P4348181324187283954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(3 * a (n - 1) : ℚ) - ((2 : ℚ) / 3 - 3)⌋

end

end A171498.P4348181324187283954

namespace A171498

/-- `floor(3*a(n-1)-(2/3-3))` -/
def P4348181324187283954.Spec : Prop :=
  ∀ n, P4348181324187283954.a n = A171498 n

end A171498

/-! ## A171498.P16765284290016523698

`floor(a(n-1)+2*(a(n-1)+1))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A171498.P16765284290016523698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 2 * (a (n - 1) + 1)

end

end A171498.P16765284290016523698

namespace A171498

/-- `floor(a(n-1)+2*(a(n-1)+1))` -/
def P16765284290016523698.Spec : Prop :=
  ∀ n, (P16765284290016523698.a n : ℤ) = A171498 n

theorem P16765284290016523698.correct : P16765284290016523698.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A171498, Nat.add_sub_cancel, A171498.P16765284290016523698.a, A171498.P16617065330167147573.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A171498, Nat.add_sub_cancel, A171498.P16765284290016523698.a, A171498.P16617065330167147573.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A171498

/-! ## A171498.P17593729717134437571

`4*(a(n-1)-(a(n-1)-2)/4)` with `a(0)=3`
-/

namespace A171498.P17593729717134437571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  4 * (a (n - 1) - (a (n - 1) - 2) / 4)

end

end A171498.P17593729717134437571

namespace A171498

/-- `4*(a(n-1)-(a(n-1)-2)/4)` -/
def P17593729717134437571.Spec : Prop :=
  ∀ n, P17593729717134437571.a n = (A171498 n : ℚ)

theorem P17593729717134437571.correct : P17593729717134437571.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A171498, Nat.add_sub_cancel, A171498.P17593729717134437571.a, A171498.P16617065330167147573.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A171498, Nat.add_sub_cancel, A171498.P17593729717134437571.a, A171498.P16617065330167147573.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A171498

/-! ## A171498.P16603417505975057260

`(3*a(n-1)+2)*a(n-1)%2` with `a(0)=3`
-/

namespace A171498.P16603417505975057260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  (3 * a (n - 1) + 2) * (a (n - 1) % 2)

end

end A171498.P16603417505975057260

namespace A171498

/-- `(3*a(n-1)+2)*a(n-1)%2` -/
def P16603417505975057260.Spec : Prop :=
  ∀ n, (P16603417505975057260.a n : ℤ) = A171498 n

end A171498

/-! ## A171498.P11598107838557626808

`(3*a(n-1)+2)*gcd(2, a(n-1))` with `a(0)=3`
-/

namespace A171498.P11598107838557626808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  (3 * a (n - 1) + 2) * Nat.gcd 2 (a (n - 1))

end

end A171498.P11598107838557626808

namespace A171498

/-- `(3*a(n-1)+2)*gcd(2, a(n-1))` -/
def P11598107838557626808.Spec : Prop :=
  ∀ n, (P11598107838557626808.a n : ℤ) = A171498 n

end A171498

/-! ## A171498.P14023763887574383454

`floor(a(n-1)-(2*(1-a(n-1))-4))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A171498.P14023763887574383454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) - (2 * (1 - a (n - 1)) - 4)

end

end A171498.P14023763887574383454

namespace A171498

/-- `floor(a(n-1)-(2*(1-a(n-1))-4))` -/
def P14023763887574383454.Spec : Prop :=
  ∀ n, P14023763887574383454.a n = A171498 n

theorem P14023763887574383454.correct : P14023763887574383454.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A171498, Nat.add_sub_cancel, A171498.P14023763887574383454.a, A171498.P16617065330167147573.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A171498, Nat.add_sub_cancel, A171498.P14023763887574383454.a, A171498.P16617065330167147573.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A171498

/-! ## A171498.P2828820595995101054

`floor(a(n-1)+a(n-1)+a(n-1)+2)` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A171498.P2828820595995101054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + 2))

end

end A171498.P2828820595995101054

namespace A171498

/-- `floor(a(n-1)+a(n-1)+a(n-1)+2)` -/
def P2828820595995101054.Spec : Prop :=
  ∀ n, (P2828820595995101054.a n : ℤ) = A171498 n

theorem P2828820595995101054.correct : P2828820595995101054.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A171498, Nat.add_sub_cancel, A171498.P2828820595995101054.a, A171498.P16617065330167147573.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A171498, Nat.add_sub_cancel, A171498.P2828820595995101054.a, A171498.P16617065330167147573.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A171498

/-!
# A171499: a(n) = 6*a(n-1) - 8*a(n-2) for n > 1; a(0) = 3, a(1) = 14.

The programs for A171499, the canonical program `A171499.P1740878569669530478` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171499 has offset 0).

The definition of A171499 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-8*a(n-2)` (program `A171499.P1740878569669530478`, by `A171499.P1740878569669530478.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171499.P11464643739672494971

`4^(n+1)-2^n`
-/

namespace A171499.P11464643739672494971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 1) : ℤ) - (2 ^ n : ℤ)

end

end A171499.P11464643739672494971

namespace A171499

/-- `4^(n+1)-2^n` -/
def P11464643739672494971.Spec : Prop :=
  ∀ n, P11464643739672494971.a n = A171499 n

theorem P11464643739672494971.correct : P11464643739672494971.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A171499, Nat.add_sub_cancel, A171499.P11464643739672494971.a, A171499.P1740878569669530478.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A171499, Nat.add_sub_cancel, A171499.P11464643739672494971.a, A171499.P1740878569669530478.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A171499

/-! ## A171499.P1740878569669530478

`6*a(n-1)-8*a(n-2)` with `a(0)=3, a(1)=14`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171499

/-- `6*a(n-1)-8*a(n-2)` -/
def P1740878569669530478.Spec : Prop :=
  ∀ n, P1740878569669530478.a n = A171499 n

theorem P1740878569669530478.correct : P1740878569669530478.Spec := by
  intro n
  simp only [A171499]

end A171499

/-! ## A171499.P8024723877326727304

`A171476(n+1)/2`
-/

namespace A171499.P8024723877326727304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171476 (n + 1) : ℚ) / 2

end

end A171499.P8024723877326727304

namespace A171499

/-- `A171476(n+1)/2` -/
def P8024723877326727304.Spec : Prop :=
  ∀ n, P8024723877326727304.a n = (A171499 n : ℚ)

end A171499

/-! ## A171499.P9360477485296329688

`ogf((3-4x)/(1-6x+8x^2))`
-/

namespace A171499.P9360477485296329688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4] [1, -6, 8] n

end

end A171499.P9360477485296329688

namespace A171499

/-- `ogf((3-4x)/(1-6x+8x^2))` -/
def P9360477485296329688.Spec : Prop :=
  ∀ n, P9360477485296329688.a n = A171499 n

end A171499

/-! ## A171499.P3745607334001237142

`2*or(4^n, a(n-1))` with `a(0)=3`
-/

namespace A171499.P3745607334001237142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  2 * Nat.lor (4 ^ n) (a (n - 1))

end

end A171499.P3745607334001237142

namespace A171499

/-- `2*or(4^n, a(n-1))` -/
def P3745607334001237142.Spec : Prop :=
  ∀ n, (P3745607334001237142.a n : ℤ) = A171499 n

end A171499

/-! ## A171499.P7553556941116331287

`2*xor(4^n, a(n-1))` with `a(0)=3`
-/

namespace A171499.P7553556941116331287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  2 * Nat.xor (4 ^ n) (a (n - 1))

end

end A171499.P7553556941116331287

namespace A171499

/-- `2*xor(4^n, a(n-1))` -/
def P7553556941116331287.Spec : Prop :=
  ∀ n, (P7553556941116331287.a n : ℤ) = A171499 n

end A171499

/-! ## A171499.P4752255002054156086

`or(4^n-2^n, Δ[4^n])`
-/

namespace A171499.P4752255002054156086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((4 ^ n : ℤ) - (2 ^ n : ℤ)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A171499.P4752255002054156086

namespace A171499

/-- `or(4^n-2^n, Δ[4^n])` -/
def P4752255002054156086.Spec : Prop :=
  ∀ n, P4752255002054156086.a n = A171499 n

end A171499

/-! ## A171499.P9338094707824474194

`2^n*∑[2*a(n-1)]` with `a(0)=3, a(1)=4`
-/

namespace A171499.P9338094707824474194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A171499.P9338094707824474194

namespace A171499

/-- `2^n*∑[2*a(n-1)]` -/
def P9338094707824474194.Spec : Prop :=
  ∀ n, (P9338094707824474194.a n : ℤ) = A171499 n

end A171499

/-! ## A171499.P5957857574597375014

`A354294(2*(n+1))`
-/

namespace A171499.P5957857574597375014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354294 (2 * (n + 1))

end

end A171499.P5957857574597375014

namespace A171499

/-- `A354294(2*(n+1))` -/
def P5957857574597375014.Spec : Prop :=
  ∀ n, P5957857574597375014.a n = A171499 n

end A171499

/-! ## A171499.P10324844821510486952

`2^n*A126646(n+1)`
-/

namespace A171499.P10324844821510486952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A126646 (n + 1)

end

end A171499.P10324844821510486952

namespace A171499

/-- `2^n*A126646(n+1)` -/
def P10324844821510486952.Spec : Prop :=
  ∀ n, P10324844821510486952.a n = A171499 n

end A171499

/-! ## A171499.P5685855177211968646

`xor(A004171(n), A171476(n))`
-/

namespace A171499.P5685855177211968646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004171 n) (A171476 n)

end

end A171499.P5685855177211968646

namespace A171499

/-- `xor(A004171(n), A171476(n))` -/
def P5685855177211968646.Spec : Prop :=
  ∀ n, P5685855177211968646.a n = A171499 n

end A171499

/-! ## A171499.P16916957205578158980

`xor(A020522(n), A164346(n))`
-/

namespace A171499.P16916957205578158980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020522 n) (A164346 n)

end

end A171499.P16916957205578158980

namespace A171499

/-- `xor(A020522(n), A164346(n))` -/
def P16916957205578158980.Spec : Prop :=
  ∀ n, P16916957205578158980.a n = A171499 n

end A171499

/-! ## A171499.P13546269120917531163

`xor(A099393(n), A198693(n))`
-/

namespace A171499.P13546269120917531163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A099393 n) (A198693 n)

end

end A171499.P13546269120917531163

namespace A171499

/-- `xor(A099393(n), A198693(n))` -/
def P13546269120917531163.Spec : Prop :=
  ∀ n, P13546269120917531163.a n = A171499 n

end A171499

/-! ## A171499.P6597523467871272765

`xor(A126646(n), A187560(n))`
-/

namespace A171499.P6597523467871272765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A126646 n) (A187560 n)

end

end A171499.P6597523467871272765

namespace A171499

/-- `xor(A126646(n), A187560(n))` -/
def P6597523467871272765.Spec : Prop :=
  ∀ n, P6597523467871272765.a n = A171499 n

end A171499

/-! ## A171499.P7736466749949227802

`xor(A161168(n), A165665(n))`
-/

namespace A171499.P7736466749949227802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A161168 n) (A165665 n)

end

end A171499.P7736466749949227802

namespace A171499

/-- `xor(A161168(n), A165665(n))` -/
def P7736466749949227802.Spec : Prop :=
  ∀ n, P7736466749949227802.a n = A171499 n

end A171499

/-! ## A171499.P10190801081474417701

`xor(A129868(n), A281482(n))`
-/

namespace A171499.P10190801081474417701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A129868 n) (A281482 n)

end

end A171499.P10190801081474417701

namespace A171499

/-- `xor(A129868(n), A281482(n))` -/
def P10190801081474417701.Spec : Prop :=
  ∀ n, P10190801081474417701.a n = A171499 n

end A171499

/-! ## A171499.P6307777547667766952

`A000079(n)*A000225(n+2)`
-/

namespace A171499.P6307777547667766952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A000225 (n + 2)

end

end A171499.P6307777547667766952

namespace A171499

/-- `A000079(n)*A000225(n+2)` -/
def P6307777547667766952.Spec : Prop :=
  ∀ n, P6307777547667766952.a n = A171499 n

end A171499

/-! ## A171499.P9996692780435252237

`(A020707(n)-1)*A000079(n)`
-/

namespace A171499.P9996692780435252237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020707 n - 1) * A000079 n

end

end A171499.P9996692780435252237

namespace A171499

/-- `(A020707(n)-1)*A000079(n)` -/
def P9996692780435252237.Spec : Prop :=
  ∀ n, P9996692780435252237.a n = A171499 n

end A171499

/-! ## A171499.P15713570572825376064

`A000079(n)*A255047(n+2)`
-/

namespace A171499.P15713570572825376064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A255047 (n + 2)

end

end A171499.P15713570572825376064

namespace A171499

/-- `A000079(n)*A255047(n+2)` -/
def P15713570572825376064.Spec : Prop :=
  ∀ n, P15713570572825376064.a n = A171499 n

end A171499

/-! ## A171499.P10386136129347452976

`xor(A083420(n), A092431(n+1))`
-/

namespace A171499.P10386136129347452976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A083420 n) (A092431 (n + 1))

end

end A171499.P10386136129347452976

namespace A171499

/-- `xor(A083420(n), A092431(n+1))` -/
def P10386136129347452976.Spec : Prop :=
  ∀ n, P10386136129347452976.a n = A171499 n

end A171499

