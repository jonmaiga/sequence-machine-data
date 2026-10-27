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
import Seq.B000.C028
import Seq.B000.C029
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A126100: Number of rooted connected unlabeled graphs on n nodes.

The programs for A126100, there is no canonical definition to state claims against.
-/

/-! ## A126100.P16481292532016494451

`A304311(A000124(n))-A000007(n)`
-/

namespace A126100.P16481292532016494451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304311 (A000124 n).toNat - A000007 n

end

end A126100.P16481292532016494451

/-! ## A126100.P5523630764473178173

`A304311(A000124(n))-A151933(n)`
-/

namespace A126100.P5523630764473178173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304311 (A000124 n).toNat - A151933 n

end

end A126100.P5523630764473178173

/-! ## A126100.P17640398390201673352

`A057427(n)*A304311(A000124(n))`
-/

namespace A126100.P17640398390201673352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A304311 (A000124 n).toNat

end

end A126100.P17640398390201673352

/-! ## A126100.P18393266089269171000

`A178334(n)*A304311(A000124(n))`
-/

namespace A126100.P18393266089269171000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A304311 (A000124 n).toNat

end

end A126100.P18393266089269171000

/-! ## A126100.P17899409860154021945

`and(A057428(n), A304311(A000124(n)))`
-/

namespace A126100.P17899409860154021945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A304311 (A000124 n).toNat)

end

end A126100.P17899409860154021945

/-!
# A126101: Number of connected unlabeled graphs on n nodes that are rooted at a non-cut node.

The programs for A126101, there is no canonical definition to state claims against.
-/

/-! ## A126101.P1058089551854954834

`∏{e}[7^n, A336545(#)]`
-/

namespace A126101.P1058089551854954834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A336545 (Nat.factorization (f1 n) p)

end

end A126101.P1058089551854954834

/-! ## A126101.P4442989667731607852

`A336545(A024573(n!))`
-/

namespace A126101.P4442989667731607852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336545 (A024573 (Nat.factorial n)).toNat

end

end A126101.P4442989667731607852

/-! ## A126101.P10728801059353516916

`A336545(A015165(n)+n)`
-/

namespace A126101.P10728801059353516916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336545 (A015165 n + (n : ℤ)).toNat

end

end A126101.P10728801059353516916

/-! ## A126101.P14536971040813131639

`A336545(A072839(n)+n)`
-/

namespace A126101.P14536971040813131639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336545 (A072839 n + (n : ℤ)).toNat

end

end A126101.P14536971040813131639

/-!
# A126103: Number of pointed groups of order n: that is, Sum_{G = group of order n} Number of orbits in G under the full automorphism group of G.

The programs for A126103, there is no canonical definition to state claims against.
-/

/-! ## A126103.P298887431358361984

`A116358(A185291(n+1))`
-/

namespace A126103.P298887431358361984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116358 (A185291 (n + 1)).toNat

end

end A126103.P298887431358361984

/-! ## A126103.P8539727812072738442

`A088451(A185291(n+1)%A340515(n+2))`
-/

namespace A126103.P8539727812072738442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088451 (Int.tmod (A185291 (n + 1)) (A340515 (n + 2))).toNat

end

end A126103.P8539727812072738442

/-! ## A126103.P345957040700655496

`A217895(A062367(n+1)%A293124(n+1))`
-/

namespace A126103.P345957040700655496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217895 (Int.tmod (A062367 (n + 1)) (A293124 (n + 1))).toNat

end

end A126103.P345957040700655496

/-!
# A126105: Prime(n)^2*prime(n+1)...*prime(a(n)) is the least product of consecutive primes which is abundant. Note that only the first term is squared.

The programs for A126105, there is no canonical definition to state claims against.
-/

/-! ## A126105.P13976822833608994835

`A110585(n+1)+1+n`
-/

namespace A126105.P13976822833608994835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110585 (n + 1) + 1 + (n : ℤ)

end

end A126105.P13976822833608994835

/-! ## A126105.P2277721271668633539

`record[A110585(A008619(n))+A028242(n)]`
-/

namespace A126105.P2277721271668633539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110585 (A008619 n).toNat + A028242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126105.P2277721271668633539

/-! ## A126105.P5403781228539608424

`record[A110585(A008619(n))+A106466(n)]`
-/

namespace A126105.P5403781228539608424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110585 (A008619 n).toNat + A106466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126105.P5403781228539608424

/-! ## A126105.P2658740027947662488

`record[A110585(A028920(n))+A028920(n)]`
-/

namespace A126105.P2658740027947662488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110585 (A028920 n).toNat + A028920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126105.P2658740027947662488

/-! ## A126105.P3982936202310097658

`A020725(A110585(n+1)+n)`
-/

namespace A126105.P3982936202310097658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A110585 (n + 1) + (n : ℤ)).toNat

end

end A126105.P3982936202310097658

/-!
# A126106: Record values in A092693 = sum of iterated phi(n).

The programs for A126106, the canonical program `A126106.P3127223409629631580` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126106 has offset 1).

The definition of A126106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126106.P3127223409629631580

`record[A000010(n)+a(A000010(n))]` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A126106

/-- `record[A000010(n)+a(A000010(n))]` -/
def P3127223409629631580.Spec : Prop :=
  ∀ n, P3127223409629631580.a n = A126106 (n + 1)

theorem P3127223409629631580.correct : P3127223409629631580.Spec := by
  intro n
  simp only [A126106, Nat.add_sub_cancel]

end A126106

/-! ## A126106.P17349408565545255119

`record[A092693(n+1)]`
-/

namespace A126106.P17349408565545255119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126106.P17349408565545255119

namespace A126106

/-- `record[A092693(n+1)]` -/
def P17349408565545255119.Spec : Prop :=
  ∀ n, P17349408565545255119.a n = A126106 (n + 1)

end A126106

/-! ## A126106.P17161879332126992813

`record[A053478(n+1)-(n+1)]`
-/

namespace A126106.P17161879332126992813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053478 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126106.P17161879332126992813

namespace A126106

/-- `record[A053478(n+1)-(n+1)]` -/
def P17161879332126992813.Spec : Prop :=
  ∀ n, P17161879332126992813.a n = A126106 (n + 1)

end A126106

/-! ## A126106.P6286852246610950489

`A092693(A181659(n+1))`
-/

namespace A126106.P6286852246610950489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092693 (A181659 (n + 1)).toNat

end

end A126106.P6286852246610950489

namespace A126106

/-- `A092693(A181659(n+1))` -/
def P6286852246610950489.Spec : Prop :=
  ∀ n, P6286852246610950489.a n = A126106 (n + 1)

end A126106

/-! ## A126106.P7259552055738721001

`record[A053478(A000010(n+1))%A006872(n+1)]`
-/

namespace A126106.P7259552055738721001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053478 (A000010 (n + 1)).toNat) (A006872 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126106.P7259552055738721001

namespace A126106

/-- `record[A053478(A000010(n+1))%A006872(n+1)]` -/
def P7259552055738721001.Spec : Prop :=
  ∀ n, P7259552055738721001.a n = A126106 (n + 1)

end A126106

/-!
# A126107: Primes p such that 2*p+1 and 2*p+3 are twin primes.

The programs for A126107, the canonical program `A126107.P15944828458727435920` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126107 has offset 1).

The definition of A126107 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 926 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126107.P11765496588295538187

`p?[A243811(n+1)+1]`
-/

namespace A126107.P11765496588295538187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243811 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126107.P11765496588295538187

namespace A126107

/-- `p?[A243811(n+1)+1]` -/
def P11765496588295538187.Spec : Prop :=
  ∀ n, P11765496588295538187.a n = A126107 (n + 1)

theorem P11765496588295538187.correct : P11765496588295538187.Spec := by
  intro n
  simp only [A126107, Nat.add_sub_cancel, A126107.P11765496588295538187.f1, A126107.P11765496588295538187.a, A126107.P15944828458727435920.f1, A126107.P15944828458727435920.a, A040040, A040040.P16619200629137818045.a, A243811, A243811.P316071856288439546.a, A014574, A014574.P4587706211531852143.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A000010, A000010.P4673923239450215316.a, A063919, A063919.P11181265949704613022.a, A166597, A166597.P14552351031517696526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126107

/-! ## A126107.P15944828458727435920

`p?[A040040(n+1)-1]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A126107

/-- `p?[A040040(n+1)-1]` -/
def P15944828458727435920.Spec : Prop :=
  ∀ n, P15944828458727435920.a n = A126107 (n + 1)

theorem P15944828458727435920.correct : P15944828458727435920.Spec := by
  intro n
  simp only [A126107, Nat.add_sub_cancel]

end A126107

/-! ## A126107.P7983399149981842929

`p?[A116958(n+1)+2]`
-/

namespace A126107.P7983399149981842929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116958 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126107.P7983399149981842929

namespace A126107

/-- `p?[A116958(n+1)+2]` -/
def P7983399149981842929.Spec : Prop :=
  ∀ n, P7983399149981842929.a n = A126107 (n + 1)

end A126107

/-! ## A126107.P7436744122418201275

`p?[A168497(n+1)-1]`
-/

namespace A126107.P7436744122418201275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126107.P7436744122418201275

namespace A126107

/-- `p?[A168497(n+1)-1]` -/
def P7436744122418201275.Spec : Prop :=
  ∀ n, P7436744122418201275.a n = A126107 (n + 1)

end A126107

/-! ## A126107.P16019511478161906707

`p?[3*A002822(n+1)-1]`
-/

namespace A126107.P16019511478161906707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002822 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126107.P16019511478161906707

namespace A126107

/-- `p?[3*A002822(n+1)-1]` -/
def P16019511478161906707.Spec : Prop :=
  ∀ n, P16019511478161906707.a n = A126107 (n + 1)

end A126107

/-! ## A126107.P9899182758016918154

`p?[A001359(n+1)%A040040(n+1)]`
-/

namespace A126107.P9899182758016918154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001359 (n + 1)) (A040040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126107.P9899182758016918154

namespace A126107

/-- `p?[A001359(n+1)%A040040(n+1)]` -/
def P9899182758016918154.Spec : Prop :=
  ∀ n, P9899182758016918154.a n = A126107 (n + 1)

end A126107

/-! ## A126107.P5262163742615654993

`∩[A005384(n+1), A023204(n+1)]`
-/

namespace A126107.P5262163742615654993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126107.P5262163742615654993

namespace A126107

/-- `∩[A005384(n+1), A023204(n+1)]` -/
def P5262163742615654993.Spec : Prop :=
  ∀ n, (P5262163742615654993.a n : ℤ) = A126107 (n + 1)

end A126107

/-! ## A126107.P17743437262085902656

`∩[A023204(n+1), A246857(n+1)]`
-/

namespace A126107.P17743437262085902656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126107.P17743437262085902656

namespace A126107

/-- `∩[A023204(n+1), A246857(n+1)]` -/
def P17743437262085902656.Spec : Prop :=
  ∀ n, (P17743437262085902656.a n : ℤ) = A126107 (n + 1)

end A126107

/-! ## A126107.P1600346088695814144

`∩[A023204(n+1), A348511(n+1)]`
-/

namespace A126107.P1600346088695814144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126107.P1600346088695814144

namespace A126107

/-- `∩[A023204(n+1), A348511(n+1)]` -/
def P1600346088695814144.Spec : Prop :=
  ∀ n, (P1600346088695814144.a n : ℤ) = A126107 (n + 1)

end A126107

/-! ## A126107.P3451869776851451473

`∩[A023204(n+1), A364926(n+1)]`
-/

namespace A126107.P3451869776851451473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126107.P3451869776851451473

namespace A126107

/-- `∩[A023204(n+1), A364926(n+1)]` -/
def P3451869776851451473.Spec : Prop :=
  ∀ n, (P3451869776851451473.a n : ℤ) = A126107 (n + 1)

end A126107

/-! ## A126107.P11137469260256023975

`∩[A023204(n+1), A259973(n+1)]`
-/

namespace A126107.P11137469260256023975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126107.P11137469260256023975

namespace A126107

/-- `∩[A023204(n+1), A259973(n+1)]` -/
def P11137469260256023975.Spec : Prop :=
  ∀ n, (P11137469260256023975.a n : ℤ) = A126107 (n + 1)

end A126107

/-! ## A126107.P1722239672729825706

`p?[A014682(A177139(n+1)-2)]`
-/

namespace A126107.P1722239672729825706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A177139 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126107.P1722239672729825706

namespace A126107

/-- `p?[A014682(A177139(n+1)-2)]` -/
def P1722239672729825706.Spec : Prop :=
  ∀ n, P1722239672729825706.a n = A126107 (n + 1)

end A126107

/-! ## A126107.P15173253064771358764

`∩[A023204(n+1), A078762(n+1)]`
-/

namespace A126107.P15173253064771358764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126107.P15173253064771358764

namespace A126107

/-- `∩[A023204(n+1), A078762(n+1)]` -/
def P15173253064771358764.Spec : Prop :=
  ∀ n, (P15173253064771358764.a n : ℤ) = A126107 (n + 1)

end A126107

/-! ## A126107.P259940987680285213

`∩[A005384(n+1), A173177(n+1)]`
-/

namespace A126107.P259940987680285213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126107.P259940987680285213

namespace A126107

/-- `∩[A005384(n+1), A173177(n+1)]` -/
def P259940987680285213.Spec : Prop :=
  ∀ n, (P259940987680285213.a n : ℤ) = A126107 (n + 1)

end A126107

/-! ## A126107.P323611849817148526

`∩[A023204(n+1), A054639(n+1)]`
-/

namespace A126107.P323611849817148526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126107.P323611849817148526

namespace A126107

/-- `∩[A023204(n+1), A054639(n+1)]` -/
def P323611849817148526.Spec : Prop :=
  ∀ n, (P323611849817148526.a n : ℤ) = A126107 (n + 1)

end A126107

/-!
# A126108: Numbers k such that k^2-2 and (k+2)^2-2 are primes.

The programs for A126108, there is no canonical definition to state claims against.
-/

/-! ## A126108.P15028169051130536685

`∩[A028870(n+1), A089623(n+1)-1]`
-/

namespace A126108.P15028169051130536685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089623 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126108.P15028169051130536685

/-! ## A126108.P4655103544948021676

`∩[A028870(n+2)-2, A028870(n+2)]`
-/

namespace A126108.P4655103544948021676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126108.P4655103544948021676

/-! ## A126108.P11899153552254181834

`A028870(eq[2, A028870(n+2)-A028870(n+1)]+1)`
-/

namespace A126108.P11899153552254181834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 2) - A028870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A126108.P11899153552254181834

/-! ## A126108.P818415690288547959

`A028870(eq[2, A028870(n+2)%A028870(n+1)]+1)`
-/

namespace A126108.P818415690288547959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028870 (n + 2)) (A028870 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A126108.P818415690288547959

/-! ## A126108.P186765735116057465

`A005408(record[A308085(A308085(n+1))])`
-/

namespace A126108.P186765735116057465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308085 (A308085 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A126108.P186765735116057465

/-! ## A126108.P5792889724501536676

`A144396(record[A308085(A308085(n+1))])`
-/

namespace A126108.P5792889724501536676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308085 (A308085 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A126108.P5792889724501536676

/-! ## A126108.P10635880964517550684

`∩[A028870(n+1), A004273(A089623(n+2)/2)]`
-/

namespace A126108.P10635880964517550684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway ((A089623 (n + 2) : ℚ) / 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126108.P10635880964517550684

/-! ## A126108.P8306090637239185189

`eq[1, Δ[A308085(A008619(n))]]`
-/

namespace A126108.P8306090637239185189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308085 (A008619 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A126108.P8306090637239185189

/-! ## A126108.P7941624825414239960

`A020725(∩[A089623(n+1)-2, A089623(n+1)])`
-/

namespace A126108.P7941624825414239960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089623 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089623 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A126108.P7941624825414239960

/-!
# A126109: a(n) = (5*10^n + 1)/3.

The programs for A126109, the canonical program `A126109.P10452884679083135415` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126109 has offset 0).

The definition of A126109 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*10^n+1)/3` (program `A126109.P16866888521609201602`, by `A126109.P16866888521609201602.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126109.P16866888521609201602

`(5*10^n+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A126109.P16866888521609201602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * 10 ^ n + 1 : ℚ) / 3

end

end A126109.P16866888521609201602

namespace A126109

/-- `(5*10^n+1)/3` -/
def P16866888521609201602.Spec : Prop :=
  ∀ n, P16866888521609201602.a n = (A126109 n : ℚ)

theorem P16866888521609201602.correct : P16866888521609201602.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A126109, Nat.add_sub_cancel, A126109.P16866888521609201602.a, A126109.P10452884679083135415.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A126109, Nat.add_sub_cancel, A126109.P16866888521609201602.a, A126109.P10452884679083135415.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A126109

/-! ## A126109.P10452884679083135415

`10*a(n-1)-3` with `a(0)=2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A126109

/-- `10*a(n-1)-3` -/
def P10452884679083135415.Spec : Prop :=
  ∀ n, P10452884679083135415.a n = A126109 n

theorem P10452884679083135415.correct : P10452884679083135415.Spec := by
  intro n
  simp only [A126109]

end A126109

/-! ## A126109.P16955635715704302353

`ogf((2-5x)/(1-11x+10x^2))`
-/

namespace A126109.P16955635715704302353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -5] [1, -11, 10] n

end

end A126109.P16955635715704302353

namespace A126109

/-- `ogf((2-5x)/(1-11x+10x^2))` -/
def P16955635715704302353.Spec : Prop :=
  ∀ n, P16955635715704302353.a n = A126109 n

end A126109

/-! ## A126109.P5034310594308642356

`lcm(10, a(n-1))-3` with `a(0)=2, a(1)=17`
-/

namespace A126109.P5034310594308642356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 17] fun n a =>
  (Int.lcm 10 (a (n - 1)) : ℤ) - 3

end

end A126109.P5034310594308642356

namespace A126109

/-- `lcm(10, a(n-1))-3` -/
def P5034310594308642356.Spec : Prop :=
  ∀ n, P5034310594308642356.a n = A126109 n

end A126109

/-! ## A126109.P8207673111393662183

`lcm(5, floor(10^n/9))+∑[10^n]+1`
-/

namespace A126109.P8207673111393662183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 ⌊(10 ^ n : ℚ) / 9⌋ + (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A126109.P8207673111393662183

namespace A126109

/-- `lcm(5, floor(10^n/9))+∑[10^n]+1` -/
def P8207673111393662183.Spec : Prop :=
  ∀ n, (P8207673111393662183.a n : ℤ) = A126109 n

end A126109

/-! ## A126109.P10935082216448154188

`A246057(n)+1`
-/

namespace A126109.P10935082216448154188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246057 n + 1

end

end A126109.P10935082216448154188

namespace A126109

/-- `A246057(n)+1` -/
def P10935082216448154188.Spec : Prop :=
  ∀ n, P10935082216448154188.a n = A126109 n

end A126109

/-! ## A126109.P17840882513644725072

`3*A002279(n)+2`
-/

namespace A126109.P17840882513644725072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002279 n + 2

end

end A126109.P17840882513644725072

namespace A126109

/-- `3*A002279(n)+2` -/
def P17840882513644725072.Spec : Prop :=
  ∀ n, P17840882513644725072.a n = A126109 n

end A126109

/-! ## A126109.P15727060652360869206

`3*A093142(n)-1`
-/

namespace A126109.P15727060652360869206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A093142 n - 1

end

end A126109.P15727060652360869206

namespace A126109

/-- `3*A093142(n)-1` -/
def P15727060652360869206.Spec : Prop :=
  ∀ n, P15727060652360869206.a n = A126109 n

end A126109

/-! ## A126109.P15972643424181005756

`A086576(n)/3+2`
-/

namespace A126109.P15972643424181005756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086576 n : ℚ) / 3 + 2

end

end A126109.P15972643424181005756

namespace A126109

/-- `A086576(n)/3+2` -/
def P15972643424181005756.Spec : Prop :=
  ∀ n, P15972643424181005756.a n = (A126109 n : ℚ)

theorem P15972643424181005756.correct : P15972643424181005756.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A126109, Nat.add_sub_cancel, A126109.P15972643424181005756.a, A126109.P10452884679083135415.a, A086576, A086576.P5175639682884898916.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A126109, Nat.add_sub_cancel, A126109.P15972643424181005756.a, A126109.P10452884679083135415.a, A086576, A086576.P5175639682884898916.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A126109

/-! ## A126109.P17471461123489591496

`5*A002277(n)+2`
-/

namespace A126109.P17471461123489591496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A002277 n + 2

end

end A126109.P17471461123489591496

namespace A126109

/-- `5*A002277(n)+2` -/
def P17471461123489591496.Spec : Prop :=
  ∀ n, P17471461123489591496.a n = A126109 n

end A126109

/-! ## A126109.P18073876946619119192

`3*A178769(n)-4`
-/

namespace A126109.P18073876946619119192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A178769 n - 4

end

end A126109.P18073876946619119192

namespace A126109

/-- `3*A178769(n)-4` -/
def P18073876946619119192.Spec : Prop :=
  ∀ n, P18073876946619119192.a n = A126109 n

end A126109

/-! ## A126109.P15008574382172315268

`5*A093137(n)-3`
-/

namespace A126109.P15008574382172315268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A093137 n - 3

end

end A126109.P15008574382172315268

namespace A126109

/-- `5*A093137(n)-3` -/
def P15008574382172315268.Spec : Prop :=
  ∀ n, P15008574382172315268.a n = A126109 n

end A126109

/-! ## A126109.P11235013310274612954

`A173712(Δ[n²])+1`
-/

namespace A126109.P11235013310274612954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173712 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A126109.P11235013310274612954

namespace A126109

/-- `A173712(Δ[n²])+1` -/
def P11235013310274612954.Spec : Prop :=
  ∀ n, P11235013310274612954.a n = A126109 n

end A126109

/-! ## A126109.P7292339527469734600

`floor(A133473(n+1)/2)`
-/

namespace A126109.P7292339527469734600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A133473 (n + 1) : ℚ) / 2⌋

end

end A126109.P7292339527469734600

namespace A126109

/-- `floor(A133473(n+1)/2)` -/
def P7292339527469734600.Spec : Prop :=
  ∀ n, P7292339527469734600.a n = A126109 n

end A126109

/-! ## A126109.P1347791060032773723

`A366610(A017173(n+1))`
-/

namespace A126109.P1347791060032773723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366610 (A017173 (n + 1)).toNat

end

end A126109.P1347791060032773723

namespace A126109

/-- `A366610(A017173(n+1))` -/
def P1347791060032773723.Spec : Prop :=
  ∀ n, P1347791060032773723.a n = A126109 n

end A126109

/-! ## A126109.P11949515758111647816

`A199682(n)-A093137(n)`
-/

namespace A126109.P11949515758111647816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199682 n - A093137 n

end

end A126109.P11949515758111647816

namespace A126109

/-- `A199682(n)-A093137(n)` -/
def P11949515758111647816.Spec : Prop :=
  ∀ n, P11949515758111647816.a n = A126109 n

end A126109

/-! ## A126109.P3914358262833034219

`A073553(n+1)+A002277(n)`
-/

namespace A126109.P3914358262833034219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073553 (n + 1) + A002277 n

end

end A126109.P3914358262833034219

namespace A126109

/-- `A073553(n+1)+A002277(n)` -/
def P3914358262833034219.Spec : Prop :=
  ∀ n, P3914358262833034219.a n = A126109 n

end A126109

/-! ## A126109.P9488686026005783311

`A093142(n)+A002275(n+1)`
-/

namespace A126109.P9488686026005783311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093142 n + A002275 (n + 1)

end

end A126109.P9488686026005783311

namespace A126109

/-- `A093142(n)+A002275(n+1)` -/
def P9488686026005783311.Spec : Prop :=
  ∀ n, P9488686026005783311.a n = A126109 n

end A126109

/-! ## A126109.P2598508073847752136

`A002276(n+1)-A002279(n)`
-/

namespace A126109.P2598508073847752136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 (n + 1) - A002279 n

end

end A126109.P2598508073847752136

namespace A126109

/-- `A002276(n+1)-A002279(n)` -/
def P2598508073847752136.Spec : Prop :=
  ∀ n, P2598508073847752136.a n = A126109 n

end A126109

/-! ## A126109.P3571216383443361287

`A093138(n+1)-A097166(n)`
-/

namespace A126109.P3571216383443361287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093138 (n + 1) - A097166 n

end

end A126109.P3571216383443361287

namespace A126109

/-- `A093138(n+1)-A097166(n)` -/
def P3571216383443361287.Spec : Prop :=
  ∀ n, P3571216383443361287.a n = A126109 n

end A126109

/-!
# A126112: Prime numbers p such that p^4 + (p-1)^4 + (p+1)^4 is a prime number.

The programs for A126112, there is no canonical definition to state claims against.
-/

/-! ## A126112.P16192717673563129786

`A354370(A326462(2*n+1)+A019334(n+1))`
-/

namespace A126112.P16192717673563129786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354370 (A326462 (2 * n + 1) + A019334 (n + 1)).toNat

end

end A126112.P16192717673563129786

/-!
# A126114: Ultimate fixed-point under the mapping n->f(n), where f(n)=n if n is square else f(n)=n-Floor(Sqrt(n)).

The programs for A126114, the canonical program `A126114.P16208900852689156505` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126114 has offset 1).

The definition of A126114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126114.P16208900852689156505

`(n%floor(sqrt(n+1))+1)²`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A126114

/-- `(n%floor(sqrt(n+1))+1)²` -/
def P16208900852689156505.Spec : Prop :=
  ∀ n, (P16208900852689156505.a n : ℤ) = A126114 (n + 1)

theorem P16208900852689156505.correct : P16208900852689156505.Spec := by
  intro n
  simp only [A126114, Nat.add_sub_cancel]

end A126114

/-! ## A126114.P6597837910699748095

`(A055087(n)+1)²`
-/

namespace A126114.P6597837910699748095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055087 n + 1) ^ 2

end

end A126114.P6597837910699748095

namespace A126114

/-- `(A055087(n)+1)²` -/
def P6597837910699748095.Spec : Prop :=
  ∀ n, P6597837910699748095.a n = A126114 (n + 1)

theorem P6597837910699748095.correct : P6597837910699748095.Spec := by
  intro n
  simp only [A126114, Nat.add_sub_cancel, A126114.P6597837910699748095.a, A126114.P16208900852689156505.a, A055087, A055087.P17964067358640094815.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126114

/-! ## A126114.P17304967723610136760

`A122197(n+1)²`
-/

namespace A126114.P17304967723610136760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (n + 1) ^ 2

end

end A126114.P17304967723610136760

namespace A126114

/-- `A122197(n+1)²` -/
def P17304967723610136760.Spec : Prop :=
  ∀ n, P17304967723610136760.a n = A126114 (n + 1)

end A126114

/-! ## A126114.P6993038521628248641

`A000290(A055087(n)+1)`
-/

namespace A126114.P6993038521628248641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A055087 n + 1).toNat

end

end A126114.P6993038521628248641

namespace A126114

/-- `A000290(A055087(n)+1)` -/
def P6993038521628248641.Spec : Prop :=
  ∀ n, P6993038521628248641.a n = A126114 (n + 1)

end A126114

/-! ## A126114.P5311318203329534693

`A253909(A055087(n)+1)`
-/

namespace A126114.P5311318203329534693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253909 (A055087 n + 1).toNat

end

end A126114.P5311318203329534693

namespace A126114

/-- `A253909(A055087(n)+1)` -/
def P5311318203329534693.Spec : Prop :=
  ∀ n, P5311318203329534693.a n = A126114 (n + 1)

end A126114

/-! ## A126114.P7075306677578880393

`(n-A078126(A000267(n)))²`
-/

namespace A126114.P7075306677578880393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A078126 (A000267 n).toNat) ^ 2

end

end A126114.P7075306677578880393

namespace A126114

/-- `(n-A078126(A000267(n)))²` -/
def P7075306677578880393.Spec : Prop :=
  ∀ n, P7075306677578880393.a n = A126114 (n + 1)

end A126114

/-! ## A126114.P7430570259254069369

`A002620(2*(A055087(n)+1))`
-/

namespace A126114.P7430570259254069369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * (A055087 n + 1)).toNat

end

end A126114.P7430570259254069369

namespace A126114

/-- `A002620(2*(A055087(n)+1))` -/
def P7430570259254069369.Spec : Prop :=
  ∀ n, P7430570259254069369.a n = A126114 (n + 1)

end A126114

/-! ## A126114.P16344713419057629027

`A002620(2*A122197(n+1))`
-/

namespace A126114.P16344713419057629027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A122197 (n + 1)).toNat

end

end A126114.P16344713419057629027

namespace A126114

/-- `A002620(2*A122197(n+1))` -/
def P16344713419057629027.Spec : Prop :=
  ∀ n, P16344713419057629027.a n = A126114 (n + 1)

end A126114

/-! ## A126114.P1961241715011591242

`A076921(2*A122197(n+1))`
-/

namespace A126114.P1961241715011591242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076921 (2 * A122197 (n + 1)).toNat

end

end A126114.P1961241715011591242

namespace A126114

/-- `A076921(2*A122197(n+1))` -/
def P1961241715011591242.Spec : Prop :=
  ∀ n, P1961241715011591242.a n = A126114 (n + 1)

end A126114

/-! ## A126114.P12522081323119770417

`A211521(2*(A055087(n)+1))`
-/

namespace A126114.P12522081323119770417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211521 (2 * (A055087 n + 1)).toNat

end

end A126114.P12522081323119770417

namespace A126114

/-- `A211521(2*(A055087(n)+1))` -/
def P12522081323119770417.Spec : Prop :=
  ∀ n, P12522081323119770417.a n = A126114 (n + 1)

end A126114

/-! ## A126114.P12060030044890480619

`(1-A196199(A055087(n)²))²`
-/

namespace A126114.P12060030044890480619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A196199 (A055087 n ^ 2).toNat) ^ 2

end

end A126114.P12060030044890480619

namespace A126114

/-- `(1-A196199(A055087(n)²))²` -/
def P12060030044890480619.Spec : Prop :=
  ∀ n, P12060030044890480619.a n = A126114 (n + 1)

end A126114

/-! ## A126114.P16760214165454805598

`A002260(∑[1-A037213(n)])²`
-/

namespace A126114.P16760214165454805598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A037213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A126114.P16760214165454805598

namespace A126114

/-- `A002260(∑[1-A037213(n)])²` -/
def P16760214165454805598.Spec : Prop :=
  ∀ n, P16760214165454805598.a n = A126114 (n + 1)

end A126114

/-! ## A126114.P6771577875816972167

`(A000196(n)-(A322832(n)+1))²`
-/

namespace A126114.P6771577875816972167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000196 n - (A322832 n + 1)) ^ 2

end

end A126114.P6771577875816972167

namespace A126114

/-- `(A000196(n)-(A322832(n)+1))²` -/
def P6771577875816972167.Spec : Prop :=
  ∀ n, P6771577875816972167.a n = A126114 (n + 1)

theorem P6771577875816972167.correct : P6771577875816972167.Spec := by
  intro n
  simp only [A126114, Nat.add_sub_cancel, A126114.P6771577875816972167.a, A126114.P16208900852689156505.a, A000196, A000196.P15434771586934192083.a, A322832, A322832.P4257575422464920388.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126114

/-! ## A126114.P3776579367113339443

`A033638(2*A122197(n+1))-1`
-/

namespace A126114.P3776579367113339443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (2 * A122197 (n + 1)).toNat - 1

end

end A126114.P3776579367113339443

namespace A126114

/-- `A033638(2*A122197(n+1))-1` -/
def P3776579367113339443.Spec : Prop :=
  ∀ n, P3776579367113339443.a n = A126114 (n + 1)

end A126114

/-! ## A126114.P1401769537660820902

`A000290(1-A002620(A000267(n))+n)`
-/

namespace A126114.P1401769537660820902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (1 - A002620 (A000267 n).toNat + (n : ℤ)).toNat

end

end A126114.P1401769537660820902

namespace A126114

/-- `A000290(1-A002620(A000267(n))+n)` -/
def P1401769537660820902.Spec : Prop :=
  ∀ n, P1401769537660820902.a n = A126114 (n + 1)

end A126114

/-! ## A126114.P10656291982363476981

`A133819(1-A000217(A000196(n))+n)`
-/

namespace A126114.P10656291982363476981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (1 - A000217 (A000196 n).toNat + (n : ℤ)).toNat

end

end A126114.P10656291982363476981

namespace A126114

/-- `A133819(1-A000217(A000196(n))+n)` -/
def P10656291982363476981.Spec : Prop :=
  ∀ n, P10656291982363476981.a n = A126114 (n + 1)

end A126114

/-! ## A126114.P4433071437627425521

`A002620(A122197(n+1)+A122197(n+1))`
-/

namespace A126114.P4433071437627425521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A122197 (n + 1) + A122197 (n + 1)).toNat

end

end A126114.P4433071437627425521

namespace A126114

/-- `A002620(A122197(n+1)+A122197(n+1))` -/
def P4433071437627425521.Spec : Prop :=
  ∀ n, P4433071437627425521.a n = A126114 (n + 1)

end A126114

/-! ## A126114.P651495251355528557

`A076921(A122197(n+1)+A122197(n+1))`
-/

namespace A126114.P651495251355528557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076921 (A122197 (n + 1) + A122197 (n + 1)).toNat

end

end A126114.P651495251355528557

namespace A126114

/-- `A076921(A122197(n+1)+A122197(n+1))` -/
def P651495251355528557.Spec : Prop :=
  ∀ n, P651495251355528557.a n = A126114 (n + 1)

end A126114

/-! ## A126114.P12032001177320776384

`A002620(A000267(n)+2-A122196(n+1))`
-/

namespace A126114.P12032001177320776384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A000267 n + (2 - A122196 (n + 1))).toNat

end

end A126114.P12032001177320776384

namespace A126114

/-- `A002620(A000267(n)+2-A122196(n+1))` -/
def P12032001177320776384.Spec : Prop :=
  ∀ n, P12032001177320776384.a n = A126114 (n + 1)

end A126114

/-! ## A126114.P5613644210012876844

`(A000037(n+1)-A002620(A027434(n+1)))²`
-/

namespace A126114.P5613644210012876844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000037 (n + 1) - A002620 (A027434 (n + 1)).toNat) ^ 2

end

end A126114.P5613644210012876844

namespace A126114

/-- `(A000037(n+1)-A002620(A027434(n+1)))²` -/
def P5613644210012876844.Spec : Prop :=
  ∀ n, P5613644210012876844.a n = A126114 (n + 1)

end A126114

/-!
# A126115: E.g.f.: sqrt(1+2*x)/(1-2*x).

The programs for A126115, there is no canonical definition to state claims against.
-/

/-! ## A126115.P5699111358291612610

`A330797(n)+2*n*a(n-1)` with `a(0)=1`
-/

namespace A126115.P5699111358291612610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A330797 n + (2 * n : ℤ) * a (n - 1)

end

end A126115.P5699111358291612610

/-! ## A126115.P13139517935328329752

`A167576(n+1)-2*A143165(n)`
-/

namespace A126115.P13139517935328329752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167576 (n + 1) - 2 * A143165 n

end

end A126115.P13139517935328329752

/-! ## A126115.P6956175716267204391

`A135457(n+1)+A003148(n)-A143165(n)`
-/

namespace A126115.P6956175716267204391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135457 (n + 1) + (A003148 n - A143165 n)

end

end A126115.P6956175716267204391

/-! ## A126115.P16468357421264105079

`A135457(1-(n-A005843(n)))-(A143165(n)-A003148(n))`
-/

namespace A126115.P16468357421264105079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135457 (1 - ((n : ℤ) - A005843 n)).toNat - (A143165 n - A003148 n)

end

end A126115.P16468357421264105079

/-!
# A126116: a(n) = a(n-1) + a(n-3) + a(n-4), with a(0)=a(1)=a(2)=a(3)=1.

The programs for A126116, the canonical program `A126116.P16397020324868769401` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126116 has offset 0).

The definition of A126116 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A126116.P16397020324868769401`, by `A126116.P16397020324868769401.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126116.P16397020324868769401

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A126116

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P16397020324868769401.Spec : Prop :=
  ∀ n, (P16397020324868769401.a n : ℤ) = A126116 n

theorem P16397020324868769401.correct : P16397020324868769401.Spec := by
  intro n
  simp only [A126116]

end A126116

/-! ## A126116.P3403258669951437363

`((-1)^floor(n/2)*A010684(n)+2*A000032(n))/5`
-/

namespace A126116.P3403258669951437363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (A010684 n : ℚ) + (2 * A000032 n : ℚ)) / 5

end

end A126116.P3403258669951437363

namespace A126116

/-- `((-1)^floor(n/2)*A010684(n)+2*A000032(n))/5` -/
def P3403258669951437363.Spec : Prop :=
  ∀ n, P3403258669951437363.a n = (A126116 n : ℚ)

end A126116

/-! ## A126116.P3519629595113336603

`ogf((-1+x^3)/(-1+x+x^3+x^4))`
-/

namespace A126116.P3519629595113336603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, -1] [1, -1, 0, -1, -1] n

end

end A126116.P3519629595113336603

namespace A126116

/-- `ogf((-1+x^3)/(-1+x+x^3+x^4))` -/
def P3519629595113336603.Spec : Prop :=
  ∀ n, P3519629595113336603.a n = A126116 n

end A126116

/-! ## A126116.P7234811804249783086

`A295680(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A126116.P7234811804249783086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A295680 (n - 1) + a (n - 1)

end

end A126116.P7234811804249783086

namespace A126116

/-- `A295680(n-1)+a(n-1)` -/
def P7234811804249783086.Spec : Prop :=
  ∀ n, P7234811804249783086.a n = A126116 n

end A126116

/-! ## A126116.P14538347481085788445

`A295680(n)+A295671(n)`
-/

namespace A126116.P14538347481085788445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295680 n + A295671 n

end

end A126116.P14538347481085788445

namespace A126116

/-- `A295680(n)+A295671(n)` -/
def P14538347481085788445.Spec : Prop :=
  ∀ n, P14538347481085788445.a n = A126116 n

end A126116

/-! ## A126116.P9330195053393389955

`A295683(n)-A056594(n)`
-/

namespace A126116.P9330195053393389955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295683 n - A056594 n

end

end A126116.P9330195053393389955

namespace A126116

/-- `A295683(n)-A056594(n)` -/
def P9330195053393389955.Spec : Prop :=
  ∀ n, P9330195053393389955.a n = A126116 n

end A126116

/-! ## A126116.P445247862625843004

`A295683(n)+A163805(n+1)`
-/

namespace A126116.P445247862625843004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295683 n + A163805 (n + 1)

end

end A126116.P445247862625843004

namespace A126116

/-- `A295683(n)+A163805(n+1)` -/
def P445247862625843004.Spec : Prop :=
  ∀ n, P445247862625843004.a n = A126116 n

end A126116

/-! ## A126116.P6538856003188660607

`A295683(n)-A117569(n+1)`
-/

namespace A126116.P6538856003188660607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295683 n - A117569 (n + 1)

end

end A126116.P6538856003188660607

namespace A126116

/-- `A295683(n)-A117569(n+1)` -/
def P6538856003188660607.Spec : Prop :=
  ∀ n, P6538856003188660607.a n = A126116 n

end A126116

/-! ## A126116.P13547506302245948630

`A006355(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A126116.P13547506302245948630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A006355 n - a (n - 2)

end

end A126116.P13547506302245948630

namespace A126116

/-- `A006355(n)-a(n-2)` -/
def P13547506302245948630.Spec : Prop :=
  ∀ n, P13547506302245948630.a n = A126116 n

end A126116

/-! ## A126116.P7352511848588319686

`2*A074677(n)-a(n-1)` with `a(0)=1`
-/

namespace A126116.P7352511848588319686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A074677 n - a (n - 1)

end

end A126116.P7352511848588319686

namespace A126116

/-- `2*A074677(n)-a(n-1)` -/
def P7352511848588319686.Spec : Prop :=
  ∀ n, P7352511848588319686.a n = A126116 n

end A126116

/-! ## A126116.P15603122454515997482

`2*A000045(n-1)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A126116.P15603122454515997482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * A000045 (n - 1) - a (n - 2)

end

end A126116.P15603122454515997482

namespace A126116

/-- `2*A000045(n-1)-a(n-2)` -/
def P15603122454515997482.Spec : Prop :=
  ∀ n, P15603122454515997482.a n = A126116 n

end A126116

/-! ## A126116.P5869747175145846843

`A295690(n)-A236165(n)`
-/

namespace A126116.P5869747175145846843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295690 n - A236165 n

end

end A126116.P5869747175145846843

namespace A126116

/-- `A295690(n)-A236165(n)` -/
def P5869747175145846843.Spec : Prop :=
  ∀ n, P5869747175145846843.a n = A126116 n

end A126116

/-! ## A126116.P12125913485629671463

`A295678(n)-A295681(n)`
-/

namespace A126116.P12125913485629671463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295678 n - A295681 n

end

end A126116.P12125913485629671463

namespace A126116

/-- `A295678(n)-A295681(n)` -/
def P12125913485629671463.Spec : Prop :=
  ∀ n, P12125913485629671463.a n = A126116 n

end A126116

/-! ## A126116.P17372039781057902115

`A006498(n)-A295680(n)/2`
-/

namespace A126116.P17372039781057902115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006498 n : ℚ) - (A295680 n : ℚ) / 2

end

end A126116.P17372039781057902115

namespace A126116

/-- `A006498(n)-A295680(n)/2` -/
def P17372039781057902115.Spec : Prop :=
  ∀ n, P17372039781057902115.a n = (A126116 n : ℚ)

end A126116

/-! ## A126116.P1188708739027814584

`A000045(n+1)-(A000045(n-2)+a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A126116.P1188708739027814584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000045 (n + 1) - (A000045 (n - 2) + a (n - 2))

end

end A126116.P1188708739027814584

namespace A126116

/-- `A000045(n+1)-(A000045(n-2)+a(n-2))` -/
def P1188708739027814584.Spec : Prop :=
  ∀ n, P1188708739027814584.a n = A126116 n

end A126116

/-! ## A126116.P573088691892346631

`A006498(n)+A074677(n)-A000045(n)`
-/

namespace A126116.P573088691892346631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 n + (A074677 n - A000045 n)

end

end A126116.P573088691892346631

namespace A126116

/-- `A006498(n)+A074677(n)-A000045(n)` -/
def P573088691892346631.Spec : Prop :=
  ∀ n, P573088691892346631.a n = A126116 n

end A126116

/-! ## A126116.P6873649840161748882

`A074677(n+1)+A074677(n)-A000045(n)`
-/

namespace A126116.P6873649840161748882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 (n + 1) + (A074677 n - A000045 n)

end

end A126116.P6873649840161748882

namespace A126116

/-- `A074677(n+1)+A074677(n)-A000045(n)` -/
def P6873649840161748882.Spec : Prop :=
  ∀ n, P6873649840161748882.a n = A126116 n

end A126116

/-! ## A126116.P5326847599250029602

`A111573(n)-(A111569(n)+A056594(n+1))`
-/

namespace A126116.P5326847599250029602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111573 n - (A111569 n + A056594 (n + 1))

end

end A126116.P5326847599250029602

namespace A126116

/-- `A111573(n)-(A111569(n)+A056594(n+1))` -/
def P5326847599250029602.Spec : Prop :=
  ∀ n, P5326847599250029602.a n = A126116 n

end A126116

/-! ## A126116.P9103776253549541713

`A295689(n+1)+A295689(n)-A000045(n+1)`
-/

namespace A126116.P9103776253549541713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295689 (n + 1) + (A295689 n - A000045 (n + 1))

end

end A126116.P9103776253549541713

namespace A126116

/-- `A295689(n+1)+A295689(n)-A000045(n+1)` -/
def P9103776253549541713.Spec : Prop :=
  ∀ n, P9103776253549541713.a n = A126116 n

end A126116

/-! ## A126116.P8244056221961475861

`A070550(n)-A000045(n)`
-/

namespace A126116.P8244056221961475861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070550 n - A000045 n

end

end A126116.P8244056221961475861

namespace A126116

/-- `A070550(n)-A000045(n)` -/
def P8244056221961475861.Spec : Prop :=
  ∀ n, P8244056221961475861.a n = A126116 n

end A126116

/-!
# A126117: Primes p of the form a^4+b^4+c^4 with a,b,c>=1 such that a^2+b^2+c^2 is another prime < p.

The programs for A126117, there is no canonical definition to state claims against.
-/

/-! ## A126117.P7745845468429403593

`A085318(A229301(n+1)+A185274(n+4)!)`
-/

namespace A126117.P7745845468429403593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085318 (A229301 (n + 1) + (Nat.factorial (A185274 (n + 4)).toNat : ℤ)).toNat

end

end A126117.P7745845468429403593

/-! ## A126117.P5190215917230018907

`A051664(A085318(n+2))`
-/

namespace A126117.P5190215917230018907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (A085318 (n + 2)).toNat

end

end A126117.P5190215917230018907

/-!
# A126118: Primes of the form a^2 + b^2 + c^2 such that a^4 + b^4 + c^4 is prime as well and larger than the first one.

The programs for A126118, there is no canonical definition to state claims against.
-/

/-! ## A126118.P254188878723652376

`p?[A224771(A088347(n))]`
-/

namespace A126118.P254188878723652376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224771 (A088347 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126118.P254188878723652376

/-!
# A126119: Numerators of sequence of fractions with e.g.f. (1+x)/(1-x)^(3/2).

The programs for A126119, the canonical program `A126119.P9994645260722114134` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126119 has offset 0).

The definition of A126119 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126119.P9994645260722114134

`(4*n+1)*(2*n)!/(n!*2^n)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A126119

/-- `(4*n+1)*(2*n)!/(n!*2^n)` -/
def P9994645260722114134.Spec : Prop :=
  ∀ n, P9994645260722114134.a n = (A126119 n : ℚ)

end A126119

/-! ## A126119.P12650433300474608924

`(4*n+1)*∏[abs(1-2*n)]`
-/

namespace A126119.P12650433300474608924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A126119.P12650433300474608924

namespace A126119

/-- `(4*n+1)*∏[abs(1-2*n)]` -/
def P12650433300474608924.Spec : Prop :=
  ∀ n, P12650433300474608924.a n = A126119 n

end A126119

/-! ## A126119.P1745705478453599215

`∏[abs(1-2*n)]+Δ[A097801(n)]`
-/

namespace A126119.P1745705478453599215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097801 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (f2 (n + 1) - f2 n)

end

end A126119.P1745705478453599215

namespace A126119

/-- `∏[abs(1-2*n)]+Δ[A097801(n)]` -/
def P1745705478453599215.Spec : Prop :=
  ∀ n, P1745705478453599215.a n = A126119 n

end A126119

/-! ## A126119.P984858688033993869

`A097801(n+1)-∏[abs(1-2*n)]`
-/

namespace A126119.P984858688033993869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097801 (n + 1) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A126119.P984858688033993869

namespace A126119

/-- `A097801(n+1)-∏[abs(1-2*n)]` -/
def P984858688033993869.Spec : Prop :=
  ∀ n, P984858688033993869.a n = A126119 n

end A126119

/-! ## A126119.P12617716536962622870

`2*∏[a(n-1)+2]-A001147(n)` with `a(0)=1`
-/

namespace A126119.P12617716536962622870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∏ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - A001147 n

end

end A126119.P12617716536962622870

namespace A126119

/-- `2*∏[a(n-1)+2]-A001147(n)` -/
def P12617716536962622870.Spec : Prop :=
  ∀ n, P12617716536962622870.a n = A126119 n

end A126119

/-! ## A126119.P14814496090093216958

`record[A005408(n)*A055634(n)]`
-/

namespace A126119.P14814496090093216958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A055634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126119.P14814496090093216958

namespace A126119

/-- `record[A005408(n)*A055634(n)]` -/
def P14814496090093216958.Spec : Prop :=
  ∀ n, P14814496090093216958.a n = A126119 n

end A126119

/-! ## A126119.P12883848778207093491

`record[A005408(n)*A123023(n)]`
-/

namespace A126119.P12883848778207093491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A123023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126119.P12883848778207093491

namespace A126119

/-- `record[A005408(n)*A123023(n)]` -/
def P12883848778207093491.Spec : Prop :=
  ∀ n, P12883848778207093491.a n = A126119 n

end A126119

/-! ## A126119.P3588324418004692604

`A001147(n+1)+Δ[A001147(n)]`
-/

namespace A126119.P3588324418004692604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (n + 1) + (f1 (n + 1) - f1 n)

end

end A126119.P3588324418004692604

namespace A126119

/-- `A001147(n+1)+Δ[A001147(n)]` -/
def P3588324418004692604.Spec : Prop :=
  ∀ n, P3588324418004692604.a n = A126119 n

end A126119

/-! ## A126119.P1651001652365108314

`Δ[A097801(n)]+A097801(n)/2`
-/

namespace A126119.P1651001652365108314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097801 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (A097801 n : ℚ) / 2

end

end A126119.P1651001652365108314

namespace A126119

/-- `Δ[A097801(n)]+A097801(n)/2` -/
def P1651001652365108314.Spec : Prop :=
  ∀ n, P1651001652365108314.a n = (A126119 n : ℚ)

end A126119

/-! ## A126119.P4403741297730705767

`∏[A005408(n)]+n*A097801(n)`
-/

namespace A126119.P4403741297730705767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) * A097801 n

end

end A126119.P4403741297730705767

namespace A126119

/-- `∏[A005408(n)]+n*A097801(n)` -/
def P4403741297730705767.Spec : Prop :=
  ∀ n, P4403741297730705767.a n = A126119 n

end A126119

/-!
# A126120: Catalan numbers (A000108) interpolated with 0's.

The programs for A126120, the canonical program `A126120.P11676298334808492124` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126120 has offset 0).

The definition of A126120 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126120.P11676298334808492124

`A097331(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A126120

/-- `A097331(n+1)` -/
def P11676298334808492124.Spec : Prop :=
  ∀ n, P11676298334808492124.a n = A126120 n

theorem P11676298334808492124.correct : P11676298334808492124.Spec := by
  intro n
  simp only [A126120]

end A126120

/-! ## A126120.P18254162538407317693

`abs(A090192(n+1))`
-/

namespace A126120.P18254162538407317693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A090192 (n + 1)|

end

end A126120.P18254162538407317693

namespace A126120

/-- `abs(A090192(n+1))` -/
def P18254162538407317693.Spec : Prop :=
  ∀ n, P18254162538407317693.a n = A126120 n

end A126120

/-! ## A126120.P7659998834240853441

`abs(A105523(n+1))`
-/

namespace A126120.P7659998834240853441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A105523 (n + 1)|

end

end A126120.P7659998834240853441

namespace A126120

/-- `abs(A105523(n+1))` -/
def P7659998834240853441.Spec : Prop :=
  ∀ n, P7659998834240853441.a n = A126120 n

end A126120

/-! ## A126120.P17469893561076026159

`abs(A210628(n+1))`
-/

namespace A126120.P17469893561076026159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A210628 (n + 1)|

end

end A126120.P17469893561076026159

namespace A126120

/-- `abs(A210628(n+1))` -/
def P17469893561076026159.Spec : Prop :=
  ∀ n, P17469893561076026159.a n = A126120 n

end A126120

/-! ## A126120.P9333928600167529542

`abs(A182492(2*n+3))`
-/

namespace A126120.P9333928600167529542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182492 (2 * n + 3)|

end

end A126120.P9333928600167529542

namespace A126120

/-- `abs(A182492(2*n+3))` -/
def P9333928600167529542.Spec : Prop :=
  ∀ n, P9333928600167529542.a n = A126120 n

end A126120

/-! ## A126120.P777633863747321425

`A208355(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A126120.P777633863747321425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A208355 (n - 1) - a (n - 1)

end

end A126120.P777633863747321425

namespace A126120

/-- `A208355(n-1)-a(n-1)` -/
def P777633863747321425.Spec : Prop :=
  ∀ n, P777633863747321425.a n = A126120 n

end A126120

/-! ## A126120.P2473458185722011558

`A329687(A007494(n))`
-/

namespace A126120.P2473458185722011558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329687 (A007494 n).toNat

end

end A126120.P2473458185722011558

namespace A126120

/-- `A329687(A007494(n))` -/
def P2473458185722011558.Spec : Prop :=
  ∀ n, P2473458185722011558.a n = A126120 n

end A126120

/-! ## A126120.P3200128324865890373

`A329686(A266258(n))`
-/

namespace A126120.P3200128324865890373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329686 (A266258 n).toNat

end

end A126120.P3200128324865890373

namespace A126120

/-- `A329686(A266258(n))` -/
def P3200128324865890373.Spec : Prop :=
  ∀ n, P3200128324865890373.a n = A126120 n

end A126120

/-! ## A126120.P12111426073428034179

`A028303(A124625(n+1))`
-/

namespace A126120.P12111426073428034179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (A124625 (n + 1)).toNat

end

end A126120.P12111426073428034179

namespace A126120

/-- `A028303(A124625(n+1))` -/
def P12111426073428034179.Spec : Prop :=
  ∀ n, P12111426073428034179.a n = A126120 n

end A126120

/-! ## A126120.P12904788049521473200

`A329687(A001651(n+1))`
-/

namespace A126120.P12904788049521473200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329687 (A001651 (n + 1)).toNat

end

end A126120.P12904788049521473200

namespace A126120

/-- `A329687(A001651(n+1))` -/
def P12904788049521473200.Spec : Prop :=
  ∀ n, P12904788049521473200.a n = A126120 n

end A126120

/-! ## A126120.P996081817531174180

`A329687(A047255(n+1))`
-/

namespace A126120.P996081817531174180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329687 (A047255 (n + 1)).toNat

end

end A126120.P996081817531174180

namespace A126120

/-- `A329687(A047255(n+1))` -/
def P996081817531174180.Spec : Prop :=
  ∀ n, P996081817531174180.a n = A126120 n

end A126120

/-! ## A126120.P188289091081506710

`A329687(A047262(n+1))`
-/

namespace A126120.P188289091081506710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329687 (A047262 (n + 1)).toNat

end

end A126120.P188289091081506710

namespace A126120

/-- `A329687(A047262(n+1))` -/
def P188289091081506710.Spec : Prop :=
  ∀ n, P188289091081506710.a n = A126120 n

end A126120

/-! ## A126120.P401022449887717465

`A329687(A267528(n+1))`
-/

namespace A126120.P401022449887717465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329687 (A267528 (n + 1)).toNat

end

end A126120.P401022449887717465

namespace A126120

/-- `A329687(A267528(n+1))` -/
def P401022449887717465.Spec : Prop :=
  ∀ n, P401022449887717465.a n = A126120 n

end A126120

/-! ## A126120.P6132017527834255204

`A329687(A110654(3*n))`
-/

namespace A126120.P6132017527834255204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329687 (A110654 (3 * n)).toNat

end

end A126120.P6132017527834255204

namespace A126120

/-- `A329687(A110654(3*n))` -/
def P6132017527834255204.Spec : Prop :=
  ∀ n, P6132017527834255204.a n = A126120 n

end A126120

/-! ## A126120.P5107649306865577043

`A329696(n)+A057428(n)`
-/

namespace A126120.P5107649306865577043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329696 n + A057428 n

end

end A126120.P5107649306865577043

namespace A126120

/-- `A329696(n)+A057428(n)` -/
def P5107649306865577043.Spec : Prop :=
  ∀ n, P5107649306865577043.a n = A126120 n

end A126120

/-! ## A126120.P8902979244625363892

`A329687(A110654(n)+n)`
-/

namespace A126120.P8902979244625363892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329687 (A110654 n + (n : ℤ)).toNat

end

end A126120.P8902979244625363892

namespace A126120

/-- `A329687(A110654(n)+n)` -/
def P8902979244625363892.Spec : Prop :=
  ∀ n, P8902979244625363892.a n = A126120 n

end A126120

/-! ## A126120.P1315173816159103119

`A329696(n)-A057427(n)`
-/

namespace A126120.P1315173816159103119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329696 n - A057427 n

end

end A126120.P1315173816159103119

namespace A126120

/-- `A329696(n)-A057427(n)` -/
def P1315173816159103119.Spec : Prop :=
  ∀ n, P1315173816159103119.a n = A126120 n

end A126120

/-! ## A126120.P16385031206097299303

`A349740(lt[A349740(n+1), 2])`
-/

namespace A126120.P16385031206097299303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349740 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349740 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A126120.P16385031206097299303

namespace A126120

/-- `A349740(lt[A349740(n+1), 2])` -/
def P16385031206097299303.Spec : Prop :=
  ∀ n, P16385031206097299303.a n = A126120 n

end A126120

/-! ## A126120.P6664556306579423162

`A056594(n)*A090192(n+1)`
-/

namespace A126120.P6664556306579423162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A090192 (n + 1)

end

end A126120.P6664556306579423162

namespace A126120

/-- `A056594(n)*A090192(n+1)` -/
def P6664556306579423162.Spec : Prop :=
  ∀ n, P6664556306579423162.a n = A126120 n

end A126120

/-! ## A126120.P15362285053365860644

`A087960(n)*A090192(n+1)`
-/

namespace A126120.P15362285053365860644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A090192 (n + 1)

end

end A126120.P15362285053365860644

namespace A126120

/-- `A087960(n)*A090192(n+1)` -/
def P15362285053365860644.Spec : Prop :=
  ∀ n, P15362285053365860644.a n = A126120 n

end A126120

/-!
# A126121: Numerators of sequence of fractions with e.g.f. sqrt(1+x)/(1-x)^2.

The programs for A126121, there is no canonical definition to state claims against.
-/

/-! ## A126121.P2737594552430374597

`A077568(n)+Δ[A003148(n)]`
-/

namespace A126121.P2737594552430374597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077568 n + (f1 (n + 1) - f1 n)

end

end A126121.P2737594552430374597

/-! ## A126121.P17705605613063397657

`A077568(n)+Δ[A049606(n)*A123746(n)]`
-/

namespace A126121.P17705605613063397657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049606 n * A123746 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077568 n + (f1 (n + 1) - f1 n)

end

end A126121.P17705605613063397657

/-! ## A126121.P17983455396632970866

`A003148(n+1)+A077568(n)-A003148(n)`
-/

namespace A126121.P17983455396632970866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003148 (n + 1) + (A077568 n - A003148 n)

end

end A126121.P17983455396632970866

/-! ## A126121.P16983792152464773555

`A077568(n)+Δ[A024199(n+1)-A143165(n)]`
-/

namespace A126121.P16983792152464773555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024199 (n + 1) - A143165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077568 n + (f1 (n + 1) - f1 n)

end

end A126121.P16983792152464773555

/-! ## A126121.P10487545515090420827

`A077568(n)+Δ[n!*A091520(n)/2^n]`
-/

namespace A126121.P10487545515090420827
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) * A091520 n : ℚ) / (2 ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077568 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A126121.P10487545515090420827

/-!
# A126122: Number of edge-rooted unlabeled graphs on n nodes.

The programs for A126122, there is no canonical definition to state claims against.
-/

/-! ## A126122.P4975444557488387513

`A303829(n+1)/2`
-/

namespace A126122.P4975444557488387513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303829 (n + 1) : ℚ) / 2

end

end A126122.P4975444557488387513

/-! ## A126122.P2272633617894835741

`A014682(A303829(n+1))`
-/

namespace A126122.P2272633617894835741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A303829 (n + 1)).toNat

end

end A126122.P2272633617894835741

/-! ## A126122.P3021048450989961047

`A249122(A303829(n+1)+1)`
-/

namespace A126122.P3021048450989961047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A303829 (n + 1) + 1).toNat

end

end A126122.P3021048450989961047

/-!
# A126124: Triangle, matrix inverse of A124733, companion to A123965.

The programs for A126124, the canonical program `A126124.P14182003982817906919` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126124 has offset 1).

The definition of A126124 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126124.P14182003982817906919

`T(n-1,k-1)-3*T(n-1,k)-T(n-2,k)` with `a(0)=1, a(1)=-2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A126124

/-- `T(n-1,k-1)-3*T(n-1,k)-T(n-2,k)` -/
def P14182003982817906919.Spec : Prop :=
  ∀ n, P14182003982817906919.a n = A126124 (n + 1)

theorem P14182003982817906919.correct : P14182003982817906919.Spec := by
  intro n
  simp only [A126124, Nat.add_sub_cancel]

end A126124

/-! ## A126124.P11548054135031805778

`abs(A123971(n))*A097807(n)`
-/

namespace A126124.P11548054135031805778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123971 n| * A097807 n

end

end A126124.P11548054135031805778

namespace A126124

/-- `abs(A123971(n))*A097807(n)` -/
def P11548054135031805778.Spec : Prop :=
  ∀ n, P11548054135031805778.a n = A126124 (n + 1)

end A126124

/-! ## A126124.P6405828118750628158

`A076756(A057944(n))*A123971(n)`
-/

namespace A126124.P6405828118750628158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076756 (A057944 n).toNat * A123971 n

end

end A126124.P6405828118750628158

namespace A126124

/-- `A076756(A057944(n))*A123971(n)` -/
def P6405828118750628158.Spec : Prop :=
  ∀ n, P6405828118750628158.a n = A126124 (n + 1)

end A126124

/-! ## A126124.P14822819013993084492

`A033999(A003057(n+2))*A123971(n)`
-/

namespace A126124.P14822819013993084492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A003057 (n + 2)).toNat * A123971 n

end

end A126124.P14822819013993084492

namespace A126124

/-- `A033999(A003057(n+2))*A123971(n)` -/
def P14822819013993084492.Spec : Prop :=
  ∀ n, P14822819013993084492.a n = A126124 (n + 1)

end A126124

/-! ## A126124.P7221872317909960220

`Δ[A010751(n)]*A123971(n)`
-/

namespace A126124.P7221872317909960220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A123971 n

end

end A126124.P7221872317909960220

namespace A126124

/-- `Δ[A010751(n)]*A123971(n)` -/
def P7221872317909960220.Spec : Prop :=
  ∀ n, P7221872317909960220.a n = A126124 (n + 1)

end A126124

/-! ## A126124.P12923321941391430799

`A033999(A133280(n))*A123971(n)`
-/

namespace A126124.P12923321941391430799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A133280 n).toNat * A123971 n

end

end A126124.P12923321941391430799

namespace A126124

/-- `A033999(A133280(n))*A123971(n)` -/
def P12923321941391430799.Spec : Prop :=
  ∀ n, P12923321941391430799.a n = A126124 (n + 1)

end A126124

/-!
# A126126: Triangle read by rows: matrix inverse of A110877.

The programs for A126126, the canonical program `A126126.P11703961134672823475` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126126 has offset 0).

The definition of A126126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126126.P11703961134672823475

`T(n-1,k-1)-2*T(n-1,k)-T(n-2,k)-T(n-1,k)` with `a(0)=1, a(1)=-1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A126126

/-- `T(n-1,k-1)-2*T(n-1,k)-T(n-2,k)-T(n-1,k)` -/
def P11703961134672823475.Spec : Prop :=
  ∀ n, P11703961134672823475.a n = A126126 n

theorem P11703961134672823475.correct : P11703961134672823475.Spec := by
  intro n
  simp only [A126126]

end A126126

/-! ## A126126.P1353013896395095684

`A097807(n)*A238731(n)`
-/

namespace A126126.P1353013896395095684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A238731 n

end

end A126126.P1353013896395095684

namespace A126126

/-- `A097807(n)*A238731(n)` -/
def P1353013896395095684.Spec : Prop :=
  ∀ n, P1353013896395095684.a n = A126126 n

end A126126

/-! ## A126126.P18399142991649131

`abs(A124037(n))*A097807(n)`
-/

namespace A126126.P18399142991649131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124037 n| * A097807 n

end

end A126126.P18399142991649131

namespace A126126

/-- `abs(A124037(n))*A097807(n)` -/
def P18399142991649131.Spec : Prop :=
  ∀ n, P18399142991649131.a n = A126126 n

end A126126

/-! ## A126126.P9944219971015195951

`A097807(A057944(n))*A124037(n)`
-/

namespace A126126.P9944219971015195951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (A057944 n).toNat * A124037 n

end

end A126126.P9944219971015195951

namespace A126126

/-- `A097807(A057944(n))*A124037(n)` -/
def P9944219971015195951.Spec : Prop :=
  ∀ n, P9944219971015195951.a n = A126126 n

end A126126

/-! ## A126126.P6093252538925842317

`A033999(A025581(n))*A238731(n)`
-/

namespace A126126.P6093252538925842317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A238731 n

end

end A126126.P6093252538925842317

namespace A126126

/-- `A033999(A025581(n))*A238731(n)` -/
def P6093252538925842317.Spec : Prop :=
  ∀ n, P6093252538925842317.a n = A126126 n

end A126126

/-! ## A126126.P16459476506244132284

`A033999(A003057(n+2))*A124037(n)`
-/

namespace A126126.P16459476506244132284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A003057 (n + 2)).toNat * A124037 n

end

end A126126.P16459476506244132284

namespace A126126

/-- `A033999(A003057(n+2))*A124037(n)` -/
def P16459476506244132284.Spec : Prop :=
  ∀ n, P16459476506244132284.a n = A126126 n

end A126126

/-! ## A126126.P1831307737766788685

`A033999(1-A055137(n)/A007318(n))*A238731(n)`
-/

namespace A126126.P1831307737766788685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (SequenceMachineLib.roundAway (1 - (A055137 n : ℚ) / (A007318 n : ℚ))).toNat * A238731 n

end

end A126126.P1831307737766788685

namespace A126126

/-- `A033999(1-A055137(n)/A007318(n))*A238731(n)` -/
def P1831307737766788685.Spec : Prop :=
  ∀ n, P1831307737766788685.a n = A126126 n

end A126126

/-! ## A126126.P16176524279871627899

`Δ[A010751(n)]*A124037(n)`
-/

namespace A126126.P16176524279871627899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A124037 n

end

end A126126.P16176524279871627899

namespace A126126

/-- `Δ[A010751(n)]*A124037(n)` -/
def P16176524279871627899.Spec : Prop :=
  ∀ n, P16176524279871627899.a n = A126126 n

end A126126

/-! ## A126126.P11752139450027134965

`A033999(A063656(n))*A238731(n)`
-/

namespace A126126.P11752139450027134965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A063656 n).toNat * A238731 n

end

end A126126.P11752139450027134965

namespace A126126

/-- `A033999(A063656(n))*A238731(n)` -/
def P11752139450027134965.Spec : Prop :=
  ∀ n, P11752139450027134965.a n = A126126 n

end A126126

/-! ## A126126.P13066164860189424299

`A033999(A054238(n))*A238731(n)`
-/

namespace A126126.P13066164860189424299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A054238 n).toNat * A238731 n

end

end A126126.P13066164860189424299

namespace A126126

/-- `A033999(A054238(n))*A238731(n)` -/
def P13066164860189424299.Spec : Prop :=
  ∀ n, P13066164860189424299.a n = A126126 n

end A126126

/-! ## A126126.P16108228182638220850

`abs(A124037(n))*A004718(A130321(n))`
-/

namespace A126126.P16108228182638220850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124037 n| * A004718 (A130321 n).toNat

end

end A126126.P16108228182638220850

namespace A126126

/-- `abs(A124037(n))*A004718(A130321(n))` -/
def P16108228182638220850.Spec : Prop :=
  ∀ n, P16108228182638220850.a n = A126126 n

end A126126

/-!
# A126128: x-coordinate of n in the magic square A124472.

The programs for A126128, there is no canonical definition to state claims against.
-/

/-! ## A126128.P8882155230787782436

`A131369(A131367(or(2, n)))`
-/

namespace A126128.P8882155230787782436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131369 (A131367 (Nat.lor 2 n)).toNat

end

end A126128.P8882155230787782436

/-! ## A126128.P5626489600469442425

`A001222(A174134(or(12, 2*n+1)))`
-/

namespace A126128.P5626489600469442425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A174134 (Nat.lor 12 (2 * n + 1))).toNat

end

end A126128.P5626489600469442425

/-! ## A126128.P9533652572505046096

`5-A270742((6*(n+1))²-1)`
-/

namespace A126128.P9533652572505046096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A270742 ((6 * (n + 1)) ^ 2 - 1)

end

end A126128.P9533652572505046096

/-! ## A126128.P6678019747387010044

`A131369(A003386(n+2))`
-/

namespace A126128.P6678019747387010044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131369 (A003386 (n + 2)).toNat

end

end A126128.P6678019747387010044

/-! ## A126128.P3903026677192511010

`A010710(A134810(n+2))`
-/

namespace A126128.P3903026677192511010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010710 (A134810 (n + 2)).toNat

end

end A126128.P3903026677192511010

/-!
# A126130: a(n) = (n+1)^n - n!.

The programs for A126130, the canonical program `A126130.P13241601920671839859` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126130 has offset 1).

The definition of A126130 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)^(n+1)-(n+1)!` (program `A126130.P13241601920671839859`, by `A126130.P13241601920671839859.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126130.P13241601920671839859

`(n+2)^(n+1)-(n+1)!`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A126130

/-- `(n+2)^(n+1)-(n+1)!` -/
def P13241601920671839859.Spec : Prop :=
  ∀ n, P13241601920671839859.a n = A126130 (n + 1)

theorem P13241601920671839859.correct : P13241601920671839859.Spec := by
  intro n
  simp only [A126130, Nat.add_sub_cancel]

end A126130

/-! ## A126130.P1821702343744349480

`(n+2)^(n+1)-∏[n+1]`
-/

namespace A126130.P1821702343744349480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ (n + 1) : ℤ) - ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A126130.P1821702343744349480

namespace A126130

/-- `(n+2)^(n+1)-∏[n+1]` -/
def P1821702343744349480.Spec : Prop :=
  ∀ n, P1821702343744349480.a n = A126130 (n + 1)

theorem P1821702343744349480.correct : P1821702343744349480.Spec := by
  intro n
  simp only [A126130, Nat.add_sub_cancel, A126130.P1821702343744349480.f1, A126130.P1821702343744349480.a, A126130.P13241601920671839859.a, SequenceMachineLib.memo_apply]
  try simp

end A126130

/-! ## A126130.P18307311489527706033

`record[Δ[A066324(n+1)]]`
-/

namespace A126130.P18307311489527706033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066324 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126130.P18307311489527706033

namespace A126130

/-- `record[Δ[A066324(n+1)]]` -/
def P18307311489527706033.Spec : Prop :=
  ∀ n, P18307311489527706033.a n = A126130 (n + 1)

end A126130

/-! ## A126130.P12799766283073568053

`record[A201685(n+2)-A182062(n+1)]`
-/

namespace A126130.P12799766283073568053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201685 (n + 2) - A182062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126130.P12799766283073568053

namespace A126130

/-- `record[A201685(n+2)-A182062(n+1)]` -/
def P12799766283073568053.Spec : Prop :=
  ∀ n, P12799766283073568053.a n = A126130 (n + 1)

end A126130

/-! ## A126130.P7620383910316136376

`record[A201685(n+2)-A247500(n+1)]`
-/

namespace A126130.P7620383910316136376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201685 (n + 2) - A247500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126130.P7620383910316136376

namespace A126130

/-- `record[A201685(n+2)-A247500(n+1)]` -/
def P7620383910316136376.Spec : Prop :=
  ∀ n, P7620383910316136376.a n = A126130 (n + 1)

end A126130

/-! ## A126130.P683173269517484307

`record[A201685(n+2)-A188881(n+2)]`
-/

namespace A126130.P683173269517484307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201685 (n + 2) - A188881 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126130.P683173269517484307

namespace A126130

/-- `record[A201685(n+2)-A188881(n+2)]` -/
def P683173269517484307.Spec : Prop :=
  ∀ n, P683173269517484307.a n = A126130 (n + 1)

end A126130

/-! ## A126130.P5297753743966020545

`(A036505(n+1)-A095996(n+2))*A062763(n+2)`
-/

namespace A126130.P5297753743966020545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036505 (n + 1) - A095996 (n + 2)) * A062763 (n + 2)

end

end A126130.P5297753743966020545

namespace A126130

/-- `(A036505(n+1)-A095996(n+2))*A062763(n+2)` -/
def P5297753743966020545.Spec : Prop :=
  ∀ n, P5297753743966020545.a n = A126130 (n + 1)

end A126130

/-! ## A126130.P5845367918873419525

`(A056916(n+2)-A119619(n+2))*A051190(n+2)`
-/

namespace A126130.P5845367918873419525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056916 (n + 2) - A119619 (n + 2)) * A051190 (n + 2)

end

end A126130.P5845367918873419525

namespace A126130

/-- `(A056916(n+2)-A119619(n+2))*A051190(n+2)` -/
def P5845367918873419525.Spec : Prop :=
  ∀ n, P5845367918873419525.a n = A126130 (n + 1)

end A126130

/-! ## A126130.P1384373526593757630

`A036679(n+2)/(n+2)`
-/

namespace A126130.P1384373526593757630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036679 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A126130.P1384373526593757630

namespace A126130

/-- `A036679(n+2)/(n+2)` -/
def P1384373526593757630.Spec : Prop :=
  ∀ n, P1384373526593757630.a n = (A126130 (n + 1) : ℚ)

end A126130

/-!
# A126131: a(n) = number of divisors of n which equal any d(k) for 1 <= k <= n, where d(k) is the number of positive divisors of k.

The programs for A126131, there is no canonical definition to state claims against.
-/

/-! ## A126131.P12116142633069335217

`A347526(∑[A082476(n+1)²])`
-/

namespace A126131.P12116142633069335217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082476 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A126131.P12116142633069335217

/-! ## A126131.P11576204769196613246

`A366979(A328617(n+1))`
-/

namespace A126131.P11576204769196613246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366979 (A328617 (n + 1)).toNat

end

end A126131.P11576204769196613246

/-! ## A126131.P747836834058268228

`A185282(A185282(n))*A366979(n+1)`
-/

namespace A126131.P747836834058268228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185282 (A185282 n).toNat * A366979 (n + 1)

end

end A126131.P747836834058268228

/-! ## A126131.P7673249452130205235

`A366979(n+1)+A156660(A111669(n)²)`
-/

namespace A126131.P7673249452130205235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366979 (n + 1) + A156660 (A111669 n ^ 2).toNat

end

end A126131.P7673249452130205235

/-! ## A126131.P12422567153475565178

`A366979(n+1)+A241663(A282399(n+1))`
-/

namespace A126131.P12422567153475565178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366979 (n + 1) + A241663 (A282399 (n + 1)).toNat

end

end A126131.P12422567153475565178

/-!
# A126132: a(n) = number of k's, 1<=k<=n, where d(k) is equal to any divisor of n, where d(k) is the number of positive divisors of k.

The programs for A126132, there is no canonical definition to state claims against.
-/

/-! ## A126132.P2607379731439938351

`A349906(A114420(n))+A301829(n+1)`
-/

namespace A126132.P2607379731439938351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349906 (A114420 n).toNat + A301829 (n + 1)

end

end A126132.P2607379731439938351

/-! ## A126132.P14579300647841802470

`A046523(n+1)-A131735(A014166(n))`
-/

namespace A126132.P14579300647841802470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1) - A131735 (A014166 n).toNat

end

end A126132.P14579300647841802470

/-! ## A126132.P6629749576945693759

`A046523(n+1)-A380668(A089999(n))`
-/

namespace A126132.P6629749576945693759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1) - A380668 (A089999 n).toNat

end

end A126132.P6629749576945693759

/-! ## A126132.P6855744713004202835

`A046523(n+1)-A288729(A082448(n+1))`
-/

namespace A126132.P6855744713004202835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1) - A288729 (A082448 (n + 1)).toNat

end

end A126132.P6855744713004202835

/-! ## A126132.P5365472117453224713

`A322979(n+1)-A001221(A143015(n+1))`
-/

namespace A126132.P5365472117453224713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322979 (n + 1) - A001221 (A143015 (n + 1)).toNat

end

end A126132.P5365472117453224713

/-!
# A126133: Number of edge-rooted unlabeled graphs with n edges.

The programs for A126133, there is no canonical definition to state claims against.
-/

/-! ## A126133.P11404456746883970200

`A339064(n)-a(n-1)` with `a(0)=1`
-/

namespace A126133.P11404456746883970200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A339064 n - a (n - 1)

end

end A126133.P11404456746883970200

/-! ## A126133.P2485218114217147291

`abs(∑[A033999(n)*A339064(n)])`
-/

namespace A126133.P2485218114217147291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A339064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A126133.P2485218114217147291

/-! ## A126133.P195902505130123736

`A157142(n)%2*∑[A033999(n)*A339064(n)]`
-/

namespace A126133.P195902505130123736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A339064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157142 n) 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126133.P195902505130123736

/-!
# A126134: Nonprimes of the form r(r(r(r(r(r(r(n)+1)+1)+1)+1)+1)+1)+1, where A141468(n) = r(n) = n-th nonprime.

The programs for A126134, there is no canonical definition to state claims against.
-/

/-! ## A126134.P9845409075244097428

`∩[A091208(n+1), A118073(n+1)]`
-/

namespace A126134.P9845409075244097428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126134.P9845409075244097428

/-!
# A126135: Take the base-3 representation of n, render that in decimal notation and take the base-3 representation of n again.

The programs for A126135, there is no canonical definition to state claims against.
-/

/-! ## A126135.P14719130432745323207

`A007089(A007089(n))`
-/

namespace A126135.P14719130432745323207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A007089 n).toNat

end

end A126135.P14719130432745323207

/-! ## A126135.P14914479381616192422

`A024635(A024635(2*n))/2`
-/

namespace A126135.P14914479381616192422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024635 (A024635 (2 * n)).toNat : ℚ) / 2

end

end A126135.P14914479381616192422

/-! ## A126135.P16815780249304845398

`A024651(A024651(3*n))/3`
-/

namespace A126135.P16815780249304845398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024651 (A024651 (3 * n)).toNat : ℚ) / 3

end

end A126135.P16815780249304845398

/-! ## A126135.P7383468537255872309

`A343810(A343810(n)/4)/4`
-/

namespace A126135.P7383468537255872309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343810 (SequenceMachineLib.roundAway ((A343810 n : ℚ) / 4)).toNat : ℚ) / 4

end

end A126135.P7383468537255872309

/-! ## A126135.P7067312704809494057

`A007090(A023717(A007090(A023717(n))))`
-/

namespace A126135.P7067312704809494057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A023717 (A007090 (A023717 n).toNat).toNat).toNat

end

end A126135.P7067312704809494057

/-!
# A126136: Binomial transform of A107430.

The programs for A126136, there is no canonical definition to state claims against.
-/

/-! ## A126136.P12664409987126128568

`or(A055641(A045623(n)), A144333(n+1))`
-/

namespace A126136.P12664409987126128568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055641 (A045623 n).toNat) (A144333 (n + 1))

end

end A126136.P12664409987126128568

/-! ## A126136.P3335843997399635124

`or(A144333(n+1), A242481(A156581(n)))`
-/

namespace A126136.P3335843997399635124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A144333 (n + 1)) (A242481 (A156581 n).toNat)

end

end A126136.P3335843997399635124

/-! ## A126136.P3188363152196199748

`A144333(n+1)+A055641(A144364(n+1))`
-/

namespace A126136.P3188363152196199748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144333 (n + 1) + A055641 (A144364 (n + 1)).toNat

end

end A126136.P3188363152196199748

/-! ## A126136.P8529242284865251687

`or(A144333(n+1), A341994(A092442(n+1)))`
-/

namespace A126136.P8529242284865251687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A144333 (n + 1)) (A341994 (A092442 (n + 1)).toNat)

end

end A126136.P8529242284865251687

/-!
# A126137: a(n) = pi(A037028(n)).

The programs for A126137, there is no canonical definition to state claims against.
-/

/-! ## A126137.P7902542050193472865

`A000720(A037028(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A126137.P7902542050193472865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A037028 n).toNat

end

end A126137.P7902542050193472865

/-! ## A126137.P5803314791213433370

`∑{d}[A037028(n), A061395(#)]`
-/

namespace A126137.P5803314791213433370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A126137.P5803314791213433370

/-!
# A126138: Number of polyominoes with n cells that tile a rectangle with congruent copies.

The programs for A126138, there is no canonical definition to state claims against.
-/

/-! ## A126138.P4253779519539851982

`A126139(n+1)+A060130(n)!`
-/

namespace A126138.P4253779519539851982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126139 (n + 1) + (Nat.factorial (A060130 n).toNat : ℤ)

end

end A126138.P4253779519539851982

/-! ## A126138.P15702879547147936593

`A126139(n+1)+A038548(n+1)`
-/

namespace A126138.P15702879547147936593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126139 (n + 1) + A038548 (n + 1)

end

end A126138.P15702879547147936593

/-! ## A126138.P4128150283633298894

`A337135(n+1)+A126139(n+1)`
-/

namespace A126138.P4128150283633298894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337135 (n + 1) + A126139 (n + 1)

end

end A126138.P4128150283633298894

/-! ## A126138.P18023227115186593064

`A126139(n+1)+A068108(n+2)`
-/

namespace A126138.P18023227115186593064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126139 (n + 1) + A068108 (n + 2)

end

end A126138.P18023227115186593064

/-! ## A126138.P15452876523068066874

`A126139(n+1)+A050330(2*(n+1))`
-/

namespace A126138.P15452876523068066874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126139 (n + 1) + A050330 (2 * (n + 1))

end

end A126138.P15452876523068066874

/-!
# A126139: Number of non-rectangular polyominoes with n cells that tile a rectangle with congruent copies.

The programs for A126139, there is no canonical definition to state claims against.
-/

/-! ## A126139.P15046599789538087983

`A126138(n+1)-A038548(n+1)`
-/

namespace A126139.P15046599789538087983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126138 (n + 1) - A038548 (n + 1)

end

end A126139.P15046599789538087983

/-! ## A126139.P4559724991414392939

`A254688(A152011(n))`
-/

namespace A126139.P4559724991414392939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254688 (A152011 n).toNat

end

end A126139.P4559724991414392939

/-! ## A126139.P10871882769072840893

`A394746(A294840(n))`
-/

namespace A126139.P10871882769072840893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394746 (A294840 n).toNat

end

end A126139.P10871882769072840893

/-! ## A126139.P8758103096689028724

`A115285(n)%A092424(n)`
-/

namespace A126139.P8758103096689028724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115285 n) (A092424 n)

end

end A126139.P8758103096689028724

/-! ## A126139.P15563550183530310663

`A338841(or(n, A287846(n)))`
-/

namespace A126139.P15563550183530310663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338841 (Int.lor (n : ℤ) (A287846 n)).toNat

end

end A126139.P15563550183530310663

/-!
# A126142: Primes p such that the sum of the decimal digits of p^2 is also a prime.

The programs for A126142, there is no canonical definition to state claims against.
-/

/-! ## A126142.P1037386790584919089

`p?[A107289(n+1)]`
-/

namespace A126142.P1037386790584919089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126142.P1037386790584919089

/-! ## A126142.P7117391525164220376

`filter[A107289(n+1), A010051(#)]`
-/

namespace A126142.P7117391525164220376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A126142.P7117391525164220376

/-! ## A126142.P7063488987794963708

`∩[A000040(n+1), A107289(n+1)]`
-/

namespace A126142.P7063488987794963708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126142.P7063488987794963708

/-! ## A126142.P4567414570019838709

`∩[A006005(n+1), A107289(n+1)]`
-/

namespace A126142.P4567414570019838709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126142.P4567414570019838709

/-! ## A126142.P10399943498168009039

`∩[A008578(n+1), A107289(n+1)]`
-/

namespace A126142.P10399943498168009039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126142.P10399943498168009039

/-! ## A126142.P9739475417531164514

`∩[A033946(n+1), A107289(n+1)]`
-/

namespace A126142.P9739475417531164514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126142.P9739475417531164514

/-! ## A126142.P17177175316925642594

`∩[A045344(n+1), A107289(n+1)]`
-/

namespace A126142.P17177175316925642594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126142.P17177175316925642594

/-! ## A126142.P8247609102317197169

`∩[A065091(n+1), A107289(n+1)]`
-/

namespace A126142.P8247609102317197169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126142.P8247609102317197169

/-! ## A126142.P18196318888953996639

`∩[A106118(n+1), A107289(n+1)]`
-/

namespace A126142.P18196318888953996639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126142.P18196318888953996639

/-! ## A126142.P9208091663377090152

`∩[A106843(n+1), A107289(n+1)]`
-/

namespace A126142.P9208091663377090152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126142.P9208091663377090152

/-! ## A126142.P4192396030418429594

`∩[A107289(n+1), A108719(n+1)]`
-/

namespace A126142.P4192396030418429594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126142.P4192396030418429594

/-! ## A126142.P13299435576782102086

`∩[A107289(n+1), A116974(n+1)]`
-/

namespace A126142.P13299435576782102086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126142.P13299435576782102086

/-! ## A126142.P3590087520178607723

`∩[A107289(n+1), A140475(n+1)]`
-/

namespace A126142.P3590087520178607723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126142.P3590087520178607723

/-! ## A126142.P767604652075286277

`∩[A107289(n+1), A158611(n+1)]`
-/

namespace A126142.P767604652075286277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126142.P767604652075286277

/-! ## A126142.P5081331112514612132

`∩[A107289(n+1), A171577(n+1)]`
-/

namespace A126142.P5081331112514612132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126142.P5081331112514612132

/-! ## A126142.P9389029855367617571

`∩[A107289(n+1), A182986(n+1)]`
-/

namespace A126142.P9389029855367617571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126142.P9389029855367617571

/-! ## A126142.P8710848092732989649

`∩[A107289(n+1), A215848(n+1)]`
-/

namespace A126142.P8710848092732989649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126142.P8710848092732989649

/-! ## A126142.P12372835456655868702

`∩[A107289(n+1), A283599(n+1)]`
-/

namespace A126142.P12372835456655868702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126142.P12372835456655868702

/-! ## A126142.P2581267221074836693

`∩[A326715(n+1), A107289(n+1)]`
-/

namespace A126142.P2581267221074836693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126142.P2581267221074836693

/-!
# A126143: Primes whose sum of the decimal digits of their cubes is also a prime.

The programs for A126143, there is no canonical definition to state claims against.
-/

/-! ## A126143.P15493215811633699417

`p?[A076204(n+1)]`
-/

namespace A126143.P15493215811633699417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126143.P15493215811633699417

/-! ## A126143.P5913189439881297076

`filter[A076204(n+1), A010051(#)]`
-/

namespace A126143.P5913189439881297076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A126143.P5913189439881297076

/-! ## A126143.P3695103097722418297

`∩[A000040(n+1), A076204(n+1)]`
-/

namespace A126143.P3695103097722418297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126143.P3695103097722418297

/-! ## A126143.P17164401111707874191

`∩[A004139(n+1), A076204(n+1)]`
-/

namespace A126143.P17164401111707874191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126143.P17164401111707874191

/-! ## A126143.P6517094743799398221

`∩[A006005(n+1), A076204(n+1)]`
-/

namespace A126143.P6517094743799398221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126143.P6517094743799398221

/-! ## A126143.P16107932377623954999

`∩[A008578(n+1), A076204(n+1)]`
-/

namespace A126143.P16107932377623954999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126143.P16107932377623954999

/-! ## A126143.P9545004341939697210

`∩[A033946(n+1), A076204(n+1)]`
-/

namespace A126143.P9545004341939697210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126143.P9545004341939697210

/-! ## A126143.P13323888507347865923

`∩[A045319(n+1), A076204(n+1)]`
-/

namespace A126143.P13323888507347865923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126143.P13323888507347865923

/-! ## A126143.P6506410891137342669

`∩[A045344(n+1), A076204(n+1)]`
-/

namespace A126143.P6506410891137342669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126143.P6506410891137342669

/-! ## A126143.P13723761782136136341

`∩[A046022(n+1), A076204(n+1)]`
-/

namespace A126143.P13723761782136136341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126143.P13723761782136136341

/-! ## A126143.P2842661017638389388

`∩[A062972(n+1), A076204(n+1)]`
-/

namespace A126143.P2842661017638389388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126143.P2842661017638389388

/-! ## A126143.P10879877393843842963

`∩[A064728(n+1), A076204(n+1)]`
-/

namespace A126143.P10879877393843842963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126143.P10879877393843842963

/-! ## A126143.P4907372786337423410

`∩[A065091(n+1), A076204(n+1)]`
-/

namespace A126143.P4907372786337423410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126143.P4907372786337423410

/-! ## A126143.P641524202630882039

`∩[A066050(n+1), A076204(n+1)]`
-/

namespace A126143.P641524202630882039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126143.P641524202630882039

/-! ## A126143.P5983147909501395054

`∩[A067126(n+1), A076204(n+1)]`
-/

namespace A126143.P5983147909501395054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126143.P5983147909501395054

/-! ## A126143.P4225711851187138209

`∩[A075763(n+1), A076204(n+1)]`
-/

namespace A126143.P4225711851187138209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126143.P4225711851187138209

/-! ## A126143.P422513894844761253

`∩[A076204(n+1), A097605(n+1)]`
-/

namespace A126143.P422513894844761253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126143.P422513894844761253

/-! ## A126143.P17433116725756229779

`∩[A076204(n+1), A106843(n+1)]`
-/

namespace A126143.P17433116725756229779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126143.P17433116725756229779

/-! ## A126143.P11879821155635863282

`∩[A116974(n+1), A076204(n+1)]`
-/

namespace A126143.P11879821155635863282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126143.P11879821155635863282

/-! ## A126143.P13179473638872029427

`∩[A140826(n+1), A076204(n+1)]`
-/

namespace A126143.P13179473638872029427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126143.P13179473638872029427

/-!
# A126144: Primes in A109790.

The programs for A126144, there is no canonical definition to state claims against.
-/

/-! ## A126144.P15064974718041347077

`p?[A109790(n+1)]`
-/

namespace A126144.P15064974718041347077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126144.P15064974718041347077

/-! ## A126144.P10722212386212393118

`∩[A109790(n+1), A348283(n+1)]`
-/

namespace A126144.P10722212386212393118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126144.P10722212386212393118

/-! ## A126144.P14048823315192171180

`p?[A109790(A028310(n))%A031125(n)]`
-/

namespace A126144.P14048823315192171180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109790 (A028310 n).toNat) (A031125 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126144.P14048823315192171180

/-! ## A126144.P3918764981902241017

`∩[A000040(n+1), A109790(n+1)]`
-/

namespace A126144.P3918764981902241017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126144.P3918764981902241017

/-! ## A126144.P17024678955059065020

`∩[A051948(n+1), A109790(n+1)]`
-/

namespace A126144.P17024678955059065020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126144.P17024678955059065020

/-! ## A126144.P1753571630476654940

`∩[A053813(n+1), A109790(n+1)]`
-/

namespace A126144.P1753571630476654940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126144.P1753571630476654940

/-! ## A126144.P2108972637211214329

`∩[A065091(n+1), A109790(n+1)]`
-/

namespace A126144.P2108972637211214329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126144.P2108972637211214329

/-! ## A126144.P3390929917923299762

`∩[A093515(n+1), A109790(n+1)]`
-/

namespace A126144.P3390929917923299762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126144.P3390929917923299762

/-! ## A126144.P7428922879411726446

`∩[A106118(n+1), A109790(n+1)]`
-/

namespace A126144.P7428922879411726446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126144.P7428922879411726446

/-! ## A126144.P17602756051725984768

`∩[A109790(n+1), A116974(n+1)]`
-/

namespace A126144.P17602756051725984768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126144.P17602756051725984768

/-! ## A126144.P2087326173141047375

`∩[A109790(n+1), A140826(n+1)]`
-/

namespace A126144.P2087326173141047375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126144.P2087326173141047375

/-! ## A126144.P14998754287919028585

`∩[A109790(n+1), A175787(n+1)]`
-/

namespace A126144.P14998754287919028585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126144.P14998754287919028585

/-! ## A126144.P3073146708068433037

`∩[A109790(n+1), A182986(n+1)]`
-/

namespace A126144.P3073146708068433037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126144.P3073146708068433037

/-! ## A126144.P14267728153634561014

`∩[A109790(n+1), A251595(n+1)]`
-/

namespace A126144.P14267728153634561014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126144.P14267728153634561014

/-! ## A126144.P16455599786326190908

`∩[A109790(n+1), A351398(n+1)]`
-/

namespace A126144.P16455599786326190908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126144.P16455599786326190908

/-! ## A126144.P15520080109271695226

`∩[A066542(n+1), A109790(n+1)]`
-/

namespace A126144.P15520080109271695226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126144.P15520080109271695226

/-! ## A126144.P5235614401722949718

`∩[A053577(n+1), A109790(n+1)]`
-/

namespace A126144.P5235614401722949718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126144.P5235614401722949718

/-! ## A126144.P9026324651155110162

`∩[A066191(n+1), A109790(n+1)]`
-/

namespace A126144.P9026324651155110162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126144.P9026324651155110162

/-! ## A126144.P11091281947553904560

`record[A006530(A109790(n+2))]`
-/

namespace A126144.P11091281947553904560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A109790 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126144.P11091281947553904560

/-!
# A126145: Starting from P0=3, the sequence list the minimum prime P1>P0 for which the expression P=P1+P0-1 is also a prime. The search then restarts from P1.

The programs for A126145, there is no canonical definition to state claims against.
-/

/-! ## A126145.P8443807743084145976

`p?[∑[A108536(A131899(n))]]`
-/

namespace A126145.P8443807743084145976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108536 (A131899 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126145.P8443807743084145976

/-! ## A126145.P15403994779512424928

`p?[n*gcd(A178580(n), A178697(n))]`
-/

namespace A126145.P15403994779512424928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.gcd (A178580 n) (A178697 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A126145.P15403994779512424928

/-! ## A126145.P8102654919272035128

`record[A117367(A026233(3*(n+1))²)]`
-/

namespace A126145.P8102654919272035128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117367 (A026233 (3 * (n + 1)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126145.P8102654919272035128

/-! ## A126145.P8109888617039723793

`filter[A032529(n+1), A219098(#)]`
-/

namespace A126145.P8109888617039723793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A219098 (f1 j).toNat = 1) n)

end

end A126145.P8109888617039723793

/-!
# A126147: a(n) = floor((Product_{k=1..n-1} prime(k))/prime(n)).

The programs for A126147, there is no canonical definition to state claims against.
-/

/-! ## A126147.P15578619670235306163

`floor(∏[A008578(n+1)²/A000040(n+1)])`
-/

namespace A126147.P15578619670235306163
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008578 (n + 1) ^ 2 : ℚ) / (A000040 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A126147.P15578619670235306163

/-! ## A126147.P3873815061553013076

`floor(∏[A015919(n+1)²/A000040(n+1)])`
-/

namespace A126147.P3873815061553013076
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015919 (n + 1) ^ 2 : ℚ) / (A000040 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A126147.P3873815061553013076

/-! ## A126147.P13875725550582069463

`floor(A002110(n)/Δ[A007504(n)])`
-/

namespace A126147.P13875725550582069463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002110 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A126147.P13875725550582069463

/-! ## A126147.P13873552393347881932

`floor(A002110(n)/A000040(n+1))`
-/

namespace A126147.P13873552393347881932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002110 n : ℚ) / (A000040 (n + 1) : ℚ)⌋

end

end A126147.P13873552393347881932

/-! ## A126147.P3684571147677769201

`floor(A002110(n)/record[A006530(n+2)])`
-/

namespace A126147.P3684571147677769201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002110 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌋

end

end A126147.P3684571147677769201

/-! ## A126147.P7885494250188315211

`floor(A002110(n)/record[A020639(n+2)])`
-/

namespace A126147.P7885494250188315211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002110 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌋

end

end A126147.P7885494250188315211

/-! ## A126147.P12680010628828198342

`floor(∏[A008578(n+1)]/A000040(n+1))`
-/

namespace A126147.P12680010628828198342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000040 (n + 1) : ℚ)⌋

end

end A126147.P12680010628828198342

/-! ## A126147.P17204836665924187803

`floor(∏[A015919(n+1)]/A000040(n+1))`
-/

namespace A126147.P17204836665924187803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000040 (n + 1) : ℚ)⌋

end

end A126147.P17204836665924187803

/-! ## A126147.P741074721475241484

`floor(∏[A028815(n)-1]/A000040(n+1))`
-/

namespace A126147.P741074721475241484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000040 (n + 1) : ℚ)⌋

end

end A126147.P741074721475241484

/-! ## A126147.P10119922291588010219

`floor(record[A181811(n+1)]/A000040(n+1))`
-/

namespace A126147.P10119922291588010219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A000040 (n + 1) : ℚ)⌋

end

end A126147.P10119922291588010219

/-!
# A126148: Primes p such that pq+p+q is prime, where q is the next prime after p.

The programs for A126148, there is no canonical definition to state claims against.
-/

/-! ## A126148.P3563287483902612109

`A096342(n+1)%A162358(n+1)`
-/

namespace A126148.P3563287483902612109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096342 (n + 1)) (A162358 (n + 1))

end

end A126148.P3563287483902612109

/-! ## A126148.P7532462863972341177

`A000040(A000720(A162358(n+1)-1))`
-/

namespace A126148.P7532462863972341177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A162358 (n + 1) - 1).toNat).toNat

end

end A126148.P7532462863972341177

/-! ## A126148.P12878426884584201591

`A283463(A162358(n+1)+1)`
-/

namespace A126148.P12878426884584201591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A162358 (n + 1) + 1).toNat

end

end A126148.P12878426884584201591

/-! ## A126148.P6990876561566502431

`A252463(or(1, A162358(n+1)))`
-/

namespace A126148.P6990876561566502431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (Int.lor 1 (A162358 (n + 1))).toNat

end

end A126148.P6990876561566502431

/-! ## A126148.P16853925181671682831

`A252463(A162358(n+1)%A259006(n+1))`
-/

namespace A126148.P16853925181671682831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (Int.tmod (A162358 (n + 1)) (A259006 (n + 1))).toNat

end

end A126148.P16853925181671682831

/-! ## A126148.P2863785168609386365

`A252463(2*A162358(n+1)-A162358(n+1))`
-/

namespace A126148.P2863785168609386365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (2 * A162358 (n + 1) - A162358 (n + 1)).toNat

end

end A126148.P2863785168609386365

/-! ## A126148.P14651446660823859966

`A064989(2*A162358(n+1))`
-/

namespace A126148.P14651446660823859966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (2 * A162358 (n + 1)).toNat

end

end A126148.P14651446660823859966

/-! ## A126148.P12669976032849148572

`A285728(2*A162358(n+1))`
-/

namespace A126148.P12669976032849148572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285728 (2 * A162358 (n + 1)).toNat

end

end A126148.P12669976032849148572

/-! ## A126148.P17974839333287497588

`A285728(lcm(2, A162358(n+1)))`
-/

namespace A126148.P17974839333287497588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285728 (Int.lcm 2 (A162358 (n + 1)))

end

end A126148.P17974839333287497588

/-!
# A126149: Number of connected nonhamiltonian graphs with n nodes.

The programs for A126149, there is no canonical definition to state claims against.
-/

/-! ## A126149.P7601104053806512096

`A001349(n+1)-A003216(n+1)`
-/

namespace A126149.P7601104053806512096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A003216 (n + 1)

end

end A126149.P7601104053806512096

/-! ## A126149.P15157425457379282655

`A246446(n+1)-A000719(n+1)`
-/

namespace A126149.P15157425457379282655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246446 (n + 1) - A000719 (n + 1)

end

end A126149.P15157425457379282655

/-! ## A126149.P1972480470700823805

`A201922(A000124(n))-A003216(n+1)`
-/

namespace A126149.P1972480470700823805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A003216 (n + 1)

end

end A126149.P1972480470700823805

/-! ## A126149.P3387430163586129828

`Δ[A006897(n)]-A003216(n+1)-A000719(n+1)`
-/

namespace A126149.P3387430163586129828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A003216 (n + 1) - A000719 (n + 1)

end

end A126149.P3387430163586129828

/-! ## A126149.P357778079190007890

`A001349(n+1)-(Δ[A006897(n)]-A246446(n+1))`
-/

namespace A126149.P357778079190007890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - (f1 (n + 1) - f1 n - A246446 (n + 1))

end

end A126149.P357778079190007890

/-!
# A126151: E.g.f.: ( (1 + cos(sqrt(6)*x))/2 )^(-1/3), showing coefficients of only the even powers of x.

The programs for A126151, there is no canonical definition to state claims against.
-/

/-! ## A126151.P1273859130905655322

`A366138(∑[n]+n)`
-/

namespace A126151.P1273859130905655322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366138 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A126151.P1273859130905655322

/-! ## A126151.P5327879728778130166

`A126150(n²)`
-/

namespace A126151.P5327879728778130166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126150 (n ^ 2)

end

end A126151.P5327879728778130166

/-! ## A126151.P3557626797878321724

`and(-1, A126150(A000290(n)))`
-/

namespace A126151.P3557626797878321724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A126150 (A000290 n).toNat)

end

end A126151.P3557626797878321724

/-!
# A126152: Main diagonal of symmetric triangle A126150: a(n) = A126150(n,n).

The programs for A126152, there is no canonical definition to state claims against.
-/

/-! ## A126152.P3401053022098813527

`A126150(∑[2*n])`
-/

namespace A126152.P3401053022098813527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126150 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126152.P3401053022098813527

/-! ## A126152.P4515961756157900971

`record[A126150(∑[n^(n%2)])]`
-/

namespace A126152.P4515961756157900971
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126150 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126152.P4515961756157900971

/-!
# A126153: Secondary diagonal of symmetric triangle A126150: a(n) = A126150(n+1,n).

The programs for A126153, there is no canonical definition to state claims against.
-/

/-! ## A126153.P8902028418591592876

`A126152(n+1)-3*A126152(n)`
-/

namespace A126153.P8902028418591592876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126152 (n + 1) - 3 * A126152 n

end

end A126153.P8902028418591592876

/-!
# A126156: Expansion of e.g.f. sqrt(sec(sqrt(2)*x)), showing coefficients of only the even powers of x.

The programs for A126156, there is no canonical definition to state claims against.
-/

/-! ## A126156.P6543407225585446797

`A186491(n)/A000079(n)`
-/

namespace A126156.P6543407225585446797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186491 n : ℚ) / (A000079 n : ℚ)

end

end A126156.P6543407225585446797

/-! ## A126156.P7374072922507119604

`A186491(n)/∑[A011782(n)]`
-/

namespace A126156.P7374072922507119604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186491 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A126156.P7374072922507119604

/-! ## A126156.P11110438393808987130

`A186491(n)/Δ[A000051(n)]`
-/

namespace A126156.P11110438393808987130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186491 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A126156.P11110438393808987130

/-! ## A126156.P11215782832085741501

`A186491(n)/Δ[A000225(n)]`
-/

namespace A126156.P11215782832085741501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186491 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A126156.P11215782832085741501

/-! ## A126156.P6860122847508471853

`A186491(n)/record[A034008(n)]`
-/

namespace A126156.P6860122847508471853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186491 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A126156.P6860122847508471853

/-!
# A126157: Main diagonal and central terms of symmetric triangle A126155.

The programs for A126157, there is no canonical definition to state claims against.
-/

/-! ## A126157.P3036717401288565757

`A126155(∑[2*n])`
-/

namespace A126157.P3036717401288565757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126155 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126157.P3036717401288565757

/-! ## A126157.P17748030910711561741

`record[A126155(∑[n^(n%2)])]`
-/

namespace A126157.P17748030910711561741
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126155 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126157.P17748030910711561741

/-!
# A126158: Secondary diagonal of symmetric triangle A126155: a(n) = A126155(n+1,n).

The programs for A126158, there is no canonical definition to state claims against.
-/

/-! ## A126158.P1565967021218680609

`A126157(n+1)-4*A126157(n)`
-/

namespace A126158.P1565967021218680609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126157 (n + 1) - 4 * A126157 n

end

end A126158.P1565967021218680609

/-!
# A126162: Number of unitary amicable pairs (i,j) with i<j and i<=10^n.

The programs for A126162, there is no canonical definition to state claims against.
-/

/-! ## A126162.P17086872447638170927

`∑[A111904(n+1)]`
-/

namespace A126162.P17086872447638170927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126162.P17086872447638170927

/-!
# A126163: Number of super unitary amicable pairs (i,j) with i<j and i<=10^n.

The programs for A126163, there is no canonical definition to state claims against.
-/

/-! ## A126163.P8830632631349466722

`A077070(A089464(n))-A344610(n)`
-/

namespace A126163.P8830632631349466722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077070 (A089464 n).toNat - A344610 n

end

end A126163.P8830632631349466722

/-! ## A126163.P10408651217265276705

`A136345(A000110(n))-A049705(n+1)`
-/

namespace A126163.P10408651217265276705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136345 (A000110 n).toNat - A049705 (n + 1)

end

end A126163.P10408651217265276705

/-!
# A126164: Sum of the proper exponential divisors of n.

The programs for A126164, there is no canonical definition to state claims against.
-/

/-! ## A126164.P9440343765783089746

`A051377(n+1)-(n+1)`
-/

namespace A126164.P9440343765783089746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051377 (n + 1) - (n + 1 : ℤ)

end

end A126164.P9440343765783089746

/-! ## A126164.P14603020897329680306

`A173455(n+1)-A160135(n+1)`
-/

namespace A126164.P14603020897329680306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (n + 1) - A160135 (n + 1)

end

end A126164.P14603020897329680306

/-! ## A126164.P6540878652237495210

`(A051377(n+1)+A034460(n+1))%A034448(n+1)`
-/

namespace A126164.P6540878652237495210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051377 (n + 1) + A034460 (n + 1)) (A034448 (n + 1))

end

end A126164.P6540878652237495210

/-! ## A126164.P17333866909256408954

`(A126168(n+1)+A051377(n+1))%A049417(n+1)`
-/

namespace A126164.P17333866909256408954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126168 (n + 1) + A051377 (n + 1)) (A049417 (n + 1))

end

end A126164.P17333866909256408954

/-! ## A126164.P10084071118561113085

`(A241405(A003557(n+1))-A003557(n+1))*A007947(n+1)`
-/

namespace A126164.P10084071118561113085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A241405 (A003557 (n + 1)).toNat - A003557 (n + 1)) * A007947 (n + 1)

end

end A126164.P10084071118561113085

/-! ## A126164.P16922162088092537382

`A079781(n+1)%A051377(n+1)`
-/

namespace A126164.P16922162088092537382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079781 (n + 1)) (A051377 (n + 1))

end

end A126164.P16922162088092537382

/-!
# A126165: Smaller member of each exponential amicable pair.

The programs for A126165, there is no canonical definition to state claims against.
-/

/-! ## A126165.P2963272525887604144

`A127659(record[A160052(n)])`
-/

namespace A126165.P2963272525887604144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127659 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A126165.P2963272525887604144

/-! ## A126165.P3507142377180592335

`record[A127659(A001222(3*n+2))]`
-/

namespace A126165.P3507142377180592335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127659 (A001222 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126165.P3507142377180592335

/-! ## A126165.P17973527005472571195

`record[A127659(A051903(3*n+2))]`
-/

namespace A126165.P17973527005472571195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127659 (A051903 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126165.P17973527005472571195

/-! ## A126165.P1913614625412173540

`record[gcd(A127659(n+1), A262352(n))]`
-/

namespace A126165.P1913614625412173540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127659 (n + 1)) (A262352 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126165.P1913614625412173540

/-!
# A126166: Larger member of each exponential amicable pair.

The programs for A126166, there is no canonical definition to state claims against.
-/

/-! ## A126166.P4164673923544346733

`A127659(2*A032551(n+2))`
-/

namespace A126166.P4164673923544346733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127659 (2 * A032551 (n + 2)).toNat

end

end A126166.P4164673923544346733

/-! ## A126166.P13517884116669133643

`A127659(∑[p?[A249497(n+1)]])`
-/

namespace A126166.P13517884116669133643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249497 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127659 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A126166.P13517884116669133643

/-!
# A126168: Sum of the proper infinitary divisors of n.

The programs for A126168, there is no canonical definition to state claims against.
-/

/-! ## A126168.P14795663331348639441

`A049417(n+1)-(n+1)`
-/

namespace A126168.P14795663331348639441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (n + 1) - (n + 1 : ℤ)

end

end A126168.P14795663331348639441

/-! ## A126168.P17264014373484920692

`A001065(n+1)-A348271(n+1)`
-/

namespace A126168.P17264014373484920692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A348271 (n + 1)

end

end A126168.P17264014373484920692

/-! ## A126168.P16467314253266424992

`A000203(n+1)-(A348271(n+1)+n+1)`
-/

namespace A126168.P16467314253266424992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A348271 (n + 1) + (n + 1 : ℤ))

end

end A126168.P16467314253266424992

/-! ## A126168.P3311763722310420282

`A074400(n+1)/2-A348271(n+1)-(n+1)`
-/

namespace A126168.P3311763722310420282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A348271 (n + 1) : ℚ) - (n + 1 : ℚ)

end

end A126168.P3311763722310420282

/-! ## A126168.P15677069281977745531

`A272027(n+1)/3-A348271(n+1)-(n+1)`
-/

namespace A126168.P15677069281977745531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272027 (n + 1) : ℚ) / 3 - (A348271 (n + 1) : ℚ) - (n + 1 : ℚ)

end

end A126168.P15677069281977745531

/-! ## A126168.P15975022511478652855

`(A049417(n+1)+A004273(n))%A008486(n)`
-/

namespace A126168.P15975022511478652855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049417 (n + 1) + A004273 n) (A008486 n)

end

end A126168.P15975022511478652855

/-! ## A126168.P8148085685196131549

`A023443(A049417(n+1)-n)`
-/

namespace A126168.P8148085685196131549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A049417 (n + 1) - (n : ℤ)).toNat

end

end A126168.P8148085685196131549

/-! ## A126168.P11631553552881681023

`A028310(A049417(n+1))+A001478(n+1)`
-/

namespace A126168.P11631553552881681023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A049417 (n + 1)).toNat + A001478 (n + 1)

end

end A126168.P11631553552881681023

/-! ## A126168.P9642596679364247467

`A091732((n+1)²)/A091732(n+1)-(n+1)`
-/

namespace A126168.P9642596679364247467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091732 ((n + 1) ^ 2) : ℚ) / (A091732 (n + 1) : ℚ) - (n + 1 : ℚ)

end

end A126168.P9642596679364247467

/-!
# A126169: Smaller member of an infinitary amicable pair.

The programs for A126169, there is no canonical definition to state claims against.
-/

/-! ## A126169.P5258902293470123427

`A324706(A126170(n+1))-A126170(n+1)`
-/

namespace A126169.P5258902293470123427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324706 (A126170 (n + 1)).toNat - A126170 (n + 1)

end

end A126169.P5258902293470123427

/-! ## A126169.P13341775204359514832

`A127664(A187224(n+1)^A169623(n))`
-/

namespace A126169.P13341775204359514832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127664 (SequenceMachineLib.roundAway ((A187224 (n + 1) : ℚ) ^ (A169623 n : ℤ))).toNat

end

end A126169.P13341775204359514832

/-! ## A126169.P7582995340490656501

`A127664(A169623(n)²*A187224(n+1))`
-/

namespace A126169.P7582995340490656501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127664 (A169623 n ^ 2 * A187224 (n + 1)).toNat

end

end A126169.P7582995340490656501

/-!
# A126170: Larger member of an infinitary amicable pair.

The programs for A126170, there is no canonical definition to state claims against.
-/

/-! ## A126170.P16377586977675222808

`A126168(A126169(n+1))`
-/

namespace A126170.P16377586977675222808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126168 (A126169 (n + 1)).toNat

end

end A126170.P16377586977675222808

/-! ## A126170.P12116181239116869110

`record[A126168(A127664(n+1))]`
-/

namespace A126170.P12116181239116869110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126168 (A127664 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126170.P12116181239116869110

/-!
# A126171: Number of infinitary amicable pairs (i,j) with i<j and i<=10^n.

The programs for A126171, there is no canonical definition to state claims against.
-/

/-! ## A126171.P6475318838704542269

`A060089(n)-A340596(∑{digits}[n, #^#])`
-/

namespace A126171.P6475318838704542269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060089 n - A340596 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ x).sum

end

end A126171.P6475318838704542269

/-! ## A126171.P3552574688326331988

`record[A086427(n)]-A019586(3*n+1)`
-/

namespace A126171.P3552574688326331988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A019586 (3 * n + 1)

end

end A126171.P3552574688326331988

/-! ## A126171.P8865686539483678951

`A061392(A206901(n))-A008620(n)`
-/

namespace A126171.P8865686539483678951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (A206901 n).toNat - A008620 n

end

end A126171.P8865686539483678951

/-!
# A126172: Smaller element of a reduced infinitary amicable pair.

The programs for A126172, there is no canonical definition to state claims against.
-/

/-! ## A126172.P15764975116955135707

`A306870(lt[A306864(n+2), A306833(n+1)])`
-/

namespace A126172.P15764975116955135707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306864 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306870 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A126172.P15764975116955135707

/-! ## A126172.P17016427100124219195

`A306870(lt[A331970(n+4), A306853(n+1)])`
-/

namespace A126172.P17016427100124219195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331970 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306870 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A126172.P17016427100124219195

/-! ## A126172.P15579694161547435364

`A306870(lt[A306841(3*n+2), A306853(n+1)])`
-/

namespace A126172.P15579694161547435364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306841 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306870 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A126172.P15579694161547435364

/-!
# A126173: Larger element of a reduced infinitary amicable pair.

The programs for A126173, there is no canonical definition to state claims against.
-/

/-! ## A126173.P2321834567591824295

`A306871(lt[A306864(n+2), A306833(n+1)])`
-/

namespace A126173.P2321834567591824295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306864 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306871 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A126173.P2321834567591824295

/-! ## A126173.P6210779076170819393

`A306871(lt[A331970(n+4), A306853(n+1)])`
-/

namespace A126173.P6210779076170819393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331970 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306871 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A126173.P6210779076170819393

/-! ## A126173.P169797029657925855

`A306871(lt[A306841(3*n+2), A306853(n+1)])`
-/

namespace A126173.P169797029657925855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306841 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306871 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A126173.P169797029657925855

/-!
# A126176: Number of augmented infinitary amicable pairs (i,j) with i<j and i<=10^n.

The programs for A126176, there is no canonical definition to state claims against.
-/

/-! ## A126176.P5626111608019529873

`A256974(gcd(2, n)+n²)`
-/

namespace A126176.P5626111608019529873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 (Nat.gcd 2 n + n ^ 2)

end

end A126176.P5626111608019529873

/-! ## A126176.P1473374638143486635

`∏[C(comp[∑[n]]-n, 2)-n]%A081156(n)`
-/

namespace A126176.P1473374638143486635
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A081156 n)

end

end A126176.P1473374638143486635

/-! ## A126176.P15662129211495553315

`A237049(A105319(n))`
-/

namespace A126176.P15662129211495553315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237049 (A105319 n).toNat

end

end A126176.P15662129211495553315

/-! ## A126176.P15128518081183149164

`A256974(A248800(n))`
-/

namespace A126176.P15128518081183149164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 (A248800 n).toNat

end

end A126176.P15128518081183149164

/-! ## A126176.P6255005038485101115

`A194278(A301564(∑[n]))`
-/

namespace A126176.P6255005038485101115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194278 (A301564 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A126176.P6255005038485101115

/-!
# A126177: Triangle read by rows: T(n,k) is number of hex trees with n edges and k leaves (n >= 1, 1 <= k <= 1 + floor(n/2)).

The programs for A126177, there is no canonical definition to state claims against.
-/

/-! ## A126177.P15340260005141325600

`A128727(n+2)`
-/

namespace A126177.P15340260005141325600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128727 (n + 2)

end

end A126177.P15340260005141325600

/-!
# A126178: Triangle read by rows: T(n,k) is number of hex trees with n edges and k vertices of outdegree 1 (0<=k<=n).

The programs for A126178, there is no canonical definition to state claims against.
-/

/-! ## A126178.P747229310088835206

`lcm(A013610(n), A097610(n))`
-/

namespace A126178.P747229310088835206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013610 n) (A097610 n)

end

end A126178.P747229310088835206

/-! ## A126178.P10926982103516535888

`A000244(A002262(n))*A097610(n)`
-/

namespace A126178.P10926982103516535888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A002262 n).toNat * A097610 n

end

end A126178.P10926982103516535888

/-! ## A126178.P11215865464232410365

`A000265(A036561(n))*A097610(n)`
-/

namespace A126178.P11215865464232410365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A036561 n).toNat * A097610 n

end

end A126178.P11215865464232410365

/-! ## A126178.P651878037565645477

`A003959(A059268(n))*A097610(n)`
-/

namespace A126178.P651878037565645477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A059268 n).toNat * A097610 n

end

end A126178.P651878037565645477

/-! ## A126178.P10881317393541620207

`A013610(n)*A126120(A025581(n))`
-/

namespace A126178.P10881317393541620207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 n * A126120 (A025581 n).toNat

end

end A126178.P10881317393541620207

/-! ## A126178.P16293605056597805027

`A013610(n)*A097331(A004736(n+1))`
-/

namespace A126178.P16293605056597805027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 n * A097331 (A004736 (n + 1)).toNat

end

end A126178.P16293605056597805027

/-! ## A126178.P1962500912678334152

`A097610(n)*A140429(A002260(n+1))`
-/

namespace A126178.P1962500912678334152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097610 n * A140429 (A002260 (n + 1)).toNat

end

end A126178.P1962500912678334152

/-! ## A126178.P14197434185646982801

`A000244(A002260(n+1)-1)*A097610(n)`
-/

namespace A126178.P14197434185646982801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A002260 (n + 1) - 1).toNat * A097610 n

end

end A126178.P14197434185646982801

/-!
# A126179: Triangle read by rows: T(n,k) is number of hex trees with n edges and k branches (1 <= k <= n).

The programs for A126179, the canonical program `A126179.P4171578271051059811` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126179 has offset 1).

The definition of A126179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126179.P4171578271051059811

`A027465(n)*A126324(A002260(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A126179

/-- `A027465(n)*A126324(A002260(n+1))` -/
def P4171578271051059811.Spec : Prop :=
  ∀ n, P4171578271051059811.a n = A126179 (n + 1)

theorem P4171578271051059811.correct : P4171578271051059811.Spec := by
  intro n
  simp only [A126179, Nat.add_sub_cancel]

end A126179

/-!
# A126180: Number of branches in all hex trees with n edges (n>=1).

The programs for A126180, the canonical program `A126180.P8482950412362727135` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126180 has offset 1).

The definition of A126180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126180.P8665159987911167356

`A126185(n+1)+A026375(n+1)`
-/

namespace A126180.P8665159987911167356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126185 (n + 1) + A026375 (n + 1)

end

end A126180.P8665159987911167356

namespace A126180

/-- `A126185(n+1)+A026375(n+1)` -/
def P8665159987911167356.Spec : Prop :=
  ∀ n, P8665159987911167356.a n = A126180 (n + 1)

end A126180

/-! ## A126180.P8482950412362727135

`A025238(n+3)+n*A045445(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A126180

/-- `A025238(n+3)+n*A045445(n+1)` -/
def P8482950412362727135.Spec : Prop :=
  ∀ n, P8482950412362727135.a n = A126180 (n + 1)

theorem P8482950412362727135.correct : P8482950412362727135.Spec := by
  intro n
  simp only [A126180, Nat.add_sub_cancel]

end A126180

/-!
# A126181: Triangle read by rows, T(n,k) = C(n,k)*Catalan(n-k+1), n >= 0, 0 <= k <= n.

The programs for A126181, the canonical program `A126181.P13760806700941417300` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126181 has offset 0).

The definition of A126181 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n), col(n))*A000108(row(n)-col(n)+1)` (program `A126181.P13760806700941417300`, by `A126181.P13760806700941417300.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126181.P13760806700941417300

`C(row(n), col(n))*A000108(row(n)-col(n)+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A126181

/-- `C(row(n), col(n))*A000108(row(n)-col(n)+1)` -/
def P13760806700941417300.Spec : Prop :=
  ∀ n, P13760806700941417300.a n = A126181 n

theorem P13760806700941417300.correct : P13760806700941417300.Spec := by
  intro n
  simp only [A126181]

end A126181

/-! ## A126181.P12787703087418324850

`A007318(n)*A208355(A099375(n))`
-/

namespace A126181.P12787703087418324850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A208355 (A099375 n).toNat

end

end A126181.P12787703087418324850

namespace A126181

/-- `A007318(n)*A208355(A099375(n))` -/
def P12787703087418324850.Spec : Prop :=
  ∀ n, P12787703087418324850.a n = A126181 n

end A126181

/-! ## A126181.P1026552291549785919

`Δ[A102363(n)]*A208355(A099375(n))`
-/

namespace A126181.P1026552291549785919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A208355 (A099375 n).toNat

end

end A126181.P1026552291549785919

namespace A126181

/-- `Δ[A102363(n)]*A208355(A099375(n))` -/
def P1026552291549785919.Spec : Prop :=
  ∀ n, P1026552291549785919.a n = A126181 n

end A126181

/-! ## A126181.P15218951701962568459

`A000108(A004736(n+1))*A007318(n)`
-/

namespace A126181.P15218951701962568459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A004736 (n + 1)).toNat * A007318 n

end

end A126181.P15218951701962568459

namespace A126181

/-- `A000108(A004736(n+1))*A007318(n)` -/
def P15218951701962568459.Spec : Prop :=
  ∀ n, P15218951701962568459.a n = A126181 n

end A126181

/-! ## A126181.P17937537836051074138

`A000108(A025581(n)+1)*A007318(n)`
-/

namespace A126181.P17937537836051074138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A025581 n + 1).toNat * A007318 n

end

end A126181.P17937537836051074138

namespace A126181

/-- `A000108(A025581(n)+1)*A007318(n)` -/
def P17937537836051074138.Spec : Prop :=
  ∀ n, P17937537836051074138.a n = A126181 n

theorem P17937537836051074138.correct : P17937537836051074138.Spec := by
  intro n
  simp only [A126181, Nat.add_sub_cancel, A126181.P17937537836051074138.a, A126181.P13760806700941417300.a, A000108, A000108.P17551949696095299361.a, A007318, A007318.P11755526479805562006.a, A025581, A025581.P16112744757063613497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A126181

/-! ## A126181.P2837421371850105725

`sqrt(A008459(n))*A000108(A004736(n+1))`
-/

namespace A126181.P2837421371850105725
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A000108 (A004736 (n + 1)).toNat : ℝ)

end

end A126181.P2837421371850105725

namespace A126181

/-- `sqrt(A008459(n))*A000108(A004736(n+1))` -/
def P2837421371850105725.Spec : Prop :=
  ∀ n, P2837421371850105725.a n = (A126181 n : ℝ)

end A126181

/-! ## A126181.P1103247562732268945

`(A014473(n)+1)*A000108(A004736(n+1))`
-/

namespace A126181.P1103247562732268945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A000108 (A004736 (n + 1)).toNat

end

end A126181.P1103247562732268945

namespace A126181

/-- `(A014473(n)+1)*A000108(A004736(n+1))` -/
def P1103247562732268945.Spec : Prop :=
  ∀ n, P1103247562732268945.a n = A126181 n

end A126181

/-! ## A126181.P3960364087744825791

`A000108(A004736(n+1))/2*A028326(n)`
-/

namespace A126181.P3960364087744825791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (A004736 (n + 1)).toNat : ℚ) / 2 * (A028326 n : ℚ)

end

end A126181.P3960364087744825791

namespace A126181

/-- `A000108(A004736(n+1))/2*A028326(n)` -/
def P3960364087744825791.Spec : Prop :=
  ∀ n, P3960364087744825791.a n = (A126181 n : ℚ)

end A126181

/-! ## A126181.P3619657431913617603

`A000108(A127739(n+1)-n)*A007318(n)`
-/

namespace A126181.P3619657431913617603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A127739 (n + 1) - (n : ℤ)).toNat * A007318 n

end

end A126181.P3619657431913617603

namespace A126181

/-- `A000108(A127739(n+1)-n)*A007318(n)` -/
def P3619657431913617603.Spec : Prop :=
  ∀ n, P3619657431913617603.a n = A126181 n

end A126181

/-! ## A126181.P13289077798466675500

`A074909(A083920(n))*A208355(A099375(n))`
-/

namespace A126181.P13289077798466675500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A083920 n).toNat * A208355 (A099375 n).toNat

end

end A126181.P13289077798466675500

namespace A126181

/-- `A074909(A083920(n))*A208355(A099375(n))` -/
def P13289077798466675500.Spec : Prop :=
  ∀ n, P13289077798466675500.a n = A126181 n

end A126181

/-! ## A126181.P3009561007939755318

`A000108(A093375(n+1)/A007318(n))*A007318(n)`
-/

namespace A126181.P3009561007939755318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.roundAway ((A093375 (n + 1) : ℚ) / (A007318 n : ℚ))).toNat * A007318 n

end

end A126181.P3009561007939755318

namespace A126181

/-- `A000108(A093375(n+1)/A007318(n))*A007318(n)` -/
def P3009561007939755318.Spec : Prop :=
  ∀ n, P3009561007939755318.a n = A126181 n

end A126181

/-! ## A126181.P3219826486923671637

`A108198(A061579(n))`
-/

namespace A126181.P3219826486923671637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108198 (A061579 n).toNat

end

end A126181.P3219826486923671637

namespace A126181

/-- `A108198(A061579(n))` -/
def P3219826486923671637.Spec : Prop :=
  ∀ n, P3219826486923671637.a n = A126181 n

end A126181

/-! ## A126181.P14558163370692418182

`A108198(A038722(n+1)-1)`
-/

namespace A126181.P14558163370692418182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108198 (A038722 (n + 1) - 1).toNat

end

end A126181.P14558163370692418182

namespace A126181

/-- `A108198(A038722(n+1)-1)` -/
def P14558163370692418182.Spec : Prop :=
  ∀ n, P14558163370692418182.a n = A126181 n

end A126181

/-! ## A126181.P3282330139586567330

`A108198(A038722(n+2))`
-/

namespace A126181.P3282330139586567330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108198 (A038722 (n + 2)).toNat

end

end A126181.P3282330139586567330

namespace A126181

/-- `A108198(A038722(n+2))` -/
def P3282330139586567330.Spec : Prop :=
  ∀ n, P3282330139586567330.a n = A126181 n

end A126181

/-! ## A126181.P16250728712411258682

`A000108(A004736(n+1))*A026741(A028326(n))`
-/

namespace A126181.P16250728712411258682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A004736 (n + 1)).toNat * A026741 (A028326 n).toNat

end

end A126181.P16250728712411258682

namespace A126181

/-- `A000108(A004736(n+1))*A026741(A028326(n))` -/
def P16250728712411258682.Spec : Prop :=
  ∀ n, P16250728712411258682.a n = A126181 n

end A126181

/-! ## A126181.P4333910200941638697

`A000108(A004736(n+1))*A065033(A109128(n))`
-/

namespace A126181.P4333910200941638697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A004736 (n + 1)).toNat * A065033 (A109128 n).toNat

end

end A126181.P4333910200941638697

namespace A126181

/-- `A000108(A004736(n+1))*A065033(A109128(n))` -/
def P4333910200941638697.Spec : Prop :=
  ∀ n, P4333910200941638697.a n = A126181 n

end A126181

/-!
# A126182: Let P be Pascal's triangle A007318 and let N be Narayana's triangle A001263, both regarded as lower triangular matrices. Sequence gives triangle obtained from P*N, read by rows.

The programs for A126182, there is no canonical definition to state claims against.
-/

/-! ## A126182.P6384397407704903449

`A128718(∑[char[∑[n]]]²-n)`
-/

namespace A126182.P6384397407704903449
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128718 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A126182.P6384397407704903449

/-! ## A126182.P11225261802108503038

`and(-1, A128718(A038722(n+1)))`
-/

namespace A126182.P11225261802108503038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A128718 (A038722 (n + 1)).toNat)

end

end A126182.P11225261802108503038

/-! ## A126182.P16161904690907258086

`A128718(A038722(n+1))%A017451(n)`
-/

namespace A126182.P16161904690907258086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128718 (A038722 (n + 1)).toNat) (A017451 n)

end

end A126182.P16161904690907258086

/-! ## A126182.P15197473604772744395

`A128718(A038722(n+1))-A000038(n+3)`
-/

namespace A126182.P15197473604772744395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128718 (A038722 (n + 1)).toNat - A000038 (n + 3)

end

end A126182.P15197473604772744395

/-! ## A126182.P14393970881844264692

`A294887(2*n+5)+A128718(A038722(n+1))`
-/

namespace A126182.P14393970881844264692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294887 (2 * n + 5) + A128718 (A038722 (n + 1)).toNat

end

end A126182.P14393970881844264692

/-! ## A126182.P10629643047186553462

`A000005(gcd(n, n+1))*A128718(A038722(n+1))`
-/

namespace A126182.P10629643047186553462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd n (n + 1)) * A128718 (A038722 (n + 1)).toNat

end

end A126182.P10629643047186553462

/-! ## A126182.P6486074202943381275

`∏{e}[A020639(n+1), A128718(A038722(n+1))^#]`
-/

namespace A126182.P6486074202943381275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A128718 (A038722 (n + 1)).toNat ^ Nat.factorization (f1 n).natAbs p

end

end A126182.P6486074202943381275

/-! ## A126182.P3081893436642954597

`ceil(1/A006530(n+1))*A128718(A038722(n+1))`
-/

namespace A126182.P3081893436642954597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A006530 (n + 1) : ℚ)⌉ * A128718 (A038722 (n + 1)).toNat

end

end A126182.P3081893436642954597

/-! ## A126182.P2893779741200669311

`A394385(A014132(n+1))`
-/

namespace A126182.P2893779741200669311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394385 (A014132 (n + 1)).toNat

end

end A126182.P2893779741200669311

/-!
# A126183: Triangle read by rows: T(n,k) is number of hex trees with n edges and k nonroot nodes of outdegree 2.

The programs for A126183, there is no canonical definition to state claims against.
-/

/-! ## A126183.P6450712014283895743

`A126184(A328456(n)^A126191(n))`
-/

namespace A126183.P6450712014283895743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126184 (SequenceMachineLib.roundAway ((A328456 n : ℚ) ^ (A126191 n : ℤ))).toNat

end

end A126183.P6450712014283895743

/-! ## A126183.P12427386463693400610

`A305384(A008727(n+1)^A353840(n+1))`
-/

namespace A126183.P12427386463693400610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305384 (SequenceMachineLib.roundAway ((A008727 (n + 1) : ℚ) ^ (A353840 (n + 1) : ℤ))).toNat

end

end A126183.P12427386463693400610

/-!
# A126184: Number of hex trees with n edges and having no nonroot nodes of outdegree 2.

The programs for A126184, the canonical program `A126184.P15713936051394019924` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126184 has offset 0).

The definition of A126184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126184.P7228578237581108519

`ogf((1-3x+x^2)/(1-6x+9x^2))`
-/

namespace A126184.P7228578237581108519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 1] [1, -6, 9] n

end

end A126184.P7228578237581108519

namespace A126184

/-- `ogf((1-3x+x^2)/(1-6x+9x^2))` -/
def P7228578237581108519.Spec : Prop :=
  ∀ n, P7228578237581108519.a n = A126184 n

end A126184

/-! ## A126184.P15713936051394019924

`ceil((n+8)*3^(n-2))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A126184

/-- `ceil((n+8)*3^(n-2))` -/
def P15713936051394019924.Spec : Prop :=
  ∀ n, P15713936051394019924.a n = A126184 n

theorem P15713936051394019924.correct : P15713936051394019924.Spec := by
  intro n
  simp only [A126184]

end A126184

/-! ## A126184.P5359556088980814636

`3*a(n-1)+3^(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A126184.P5359556088980814636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 * a (n - 1) + (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A126184.P5359556088980814636

namespace A126184

/-- `3*a(n-1)+3^(n-2)` -/
def P5359556088980814636.Spec : Prop :=
  ∀ n, P5359556088980814636.a n = (A126184 n : ℚ)

end A126184

/-! ## A126184.P2607695552903019941

`(C(2, n+2)+n+8)*3^(n-2)`
-/

namespace A126184.P2607695552903019941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) + (n + 8) : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A126184.P2607695552903019941

namespace A126184

/-- `(C(2, n+2)+n+8)*3^(n-2)` -/
def P2607695552903019941.Spec : Prop :=
  ∀ n, P2607695552903019941.a n = (A126184 n : ℚ)

end A126184

/-! ## A126184.P12065442286371850683

`round((n+8)/9*A000244(n))`
-/

namespace A126184.P12065442286371850683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 8 : ℚ) / 9 * (A000244 n : ℚ))

end

end A126184.P12065442286371850683

namespace A126184

/-- `round((n+8)/9*A000244(n))` -/
def P12065442286371850683.Spec : Prop :=
  ∀ n, P12065442286371850683.a n = A126184 n

end A126184

/-! ## A126184.P4448879215838481885

`A140429(n)+A038765(n)`
-/

namespace A126184.P4448879215838481885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + A038765 n

end

end A126184.P4448879215838481885

namespace A126184

/-- `A140429(n)+A038765(n)` -/
def P4448879215838481885.Spec : Prop :=
  ∀ n, P4448879215838481885.a n = A126184 n

end A126184

/-! ## A126184.P17215197486092569015

`A211231(A004273(n))`
-/

namespace A126184.P17215197486092569015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211231 (A004273 n).toNat

end

end A126184.P17215197486092569015

namespace A126184

/-- `A211231(A004273(n))` -/
def P17215197486092569015.Spec : Prop :=
  ∀ n, P17215197486092569015.a n = A126184 n

end A126184

/-! ## A126184.P11844321878735402925

`A120926(n+1)-A027471(n+1)`
-/

namespace A126184.P11844321878735402925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120926 (n + 1) - A027471 (n + 1)

end

end A126184.P11844321878735402925

namespace A126184

/-- `A120926(n+1)-A027471(n+1)` -/
def P11844321878735402925.Spec : Prop :=
  ∀ n, P11844321878735402925.a n = A126184 n

end A126184

/-!
# A126185: Number of nonroot nodes of outdegree 2 in all hex trees with n edges.

The programs for A126185, the canonical program `A126185.P11307840141715013085` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126185 has offset 0).

The definition of A126185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126185.P11307840141715013085

`(n-2)*A045445(A028310(n))/2`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A126185

/-- `(n-2)*A045445(A028310(n))/2` -/
def P11307840141715013085.Spec : Prop :=
  ∀ n, P11307840141715013085.a n = (A126185 n : ℚ)

end A126185

/-! ## A126185.P15130063276025005487

`(n/2-1)*A045445(A065033(2*n))`
-/

namespace A126185.P15130063276025005487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 - 1) * (A045445 (A065033 (2 * n)).toNat : ℚ)

end

end A126185.P15130063276025005487

namespace A126185

/-- `(n/2-1)*A045445(A065033(2*n))` -/
def P15130063276025005487.Spec : Prop :=
  ∀ n, P15130063276025005487.a n = (A126185 n : ℚ)

end A126185

/-!
# A126187: Sum of the levels of the first leaf (in the preorder traversal) over all hex trees with n edges.

The programs for A126187, the canonical program `A126187.P12367951474002921347` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126187 has offset 1).

The definition of A126187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126187.P12367951474002921347

`A045445(n+3)-A002212(n+2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A126187

/-- `A045445(n+3)-A002212(n+2)` -/
def P12367951474002921347.Spec : Prop :=
  ∀ n, P12367951474002921347.a n = A126187 (n + 1)

theorem P12367951474002921347.correct : P12367951474002921347.Spec := by
  intro n
  simp only [A126187, Nat.add_sub_cancel]

end A126187

/-! ## A126187.P10172337163063749256

`A045445(n+3)-A025238(n+3)`
-/

namespace A126187.P10172337163063749256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045445 (n + 3) - A025238 (n + 3)

end

end A126187.P10172337163063749256

namespace A126187

/-- `A045445(n+3)-A025238(n+3)` -/
def P10172337163063749256.Spec : Prop :=
  ∀ n, P10172337163063749256.a n = A126187 (n + 1)

end A126187

/-! ## A126187.P4258527367891665816

`A045445(n+3)-Δ[A007317(n+2)]`
-/

namespace A126187.P4258527367891665816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007317 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045445 (n + 3) - (f1 (n + 1) - f1 n)

end

end A126187.P4258527367891665816

namespace A126187

/-- `A045445(n+3)-Δ[A007317(n+2)]` -/
def P4258527367891665816.Spec : Prop :=
  ∀ n, P4258527367891665816.a n = A126187 (n + 1)

end A126187

/-!
# A126189: Number of hex trees with n edges and no adjacent vertices of outdegree 2.

The programs for A126189, there is no canonical definition to state claims against.
-/

/-! ## A126189.P3776929769304287842

`record[A126188(n)]`
-/

namespace A126189.P3776929769304287842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126189.P3776929769304287842

/-! ## A126189.P9004605578686234083

`A126188(lt[A326637(3*n+2), A126188(n)])`
-/

namespace A126189.P9004605578686234083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326637 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126188 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A126189.P9004605578686234083

/-! ## A126189.P17315305234682647830

`A126188(lt[A058622(n), A126188(n)])`
-/

namespace A126189.P17315305234682647830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058622 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126188 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A126189.P17315305234682647830

/-! ## A126189.P5148295833122843036

`A126188(lt[A345192(n), A126188(n)])`
-/

namespace A126189.P5148295833122843036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345192 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126188 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A126189.P5148295833122843036

/-! ## A126189.P5896337646571354600

`A126188(lt[A001353(n), A126188(n)²])`
-/

namespace A126189.P5896337646571354600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126188 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126188 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A126189.P5896337646571354600

/-!
# A126190: Number of pairs of adjacent vertices of outdegree 2 in all hex trees with n edges.

The programs for A126190, there is no canonical definition to state claims against.
-/

/-! ## A126190.P17375866395341527513

`A110654(A006318(n)-A150259(n))`
-/

namespace A126190.P17375866395341527513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A006318 n - A150259 n).toNat

end

end A126190.P17375866395341527513

/-! ## A126190.P14253448784466248698

`A004277(A150580(n))%A150575(n)`
-/

namespace A126190.P14253448784466248698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004277 (A150580 n).toNat) (A150575 n)

end

end A126190.P14253448784466248698

/-! ## A126190.P3918067238148106293

`A064458(A076716(n+1))*A304112(n+1)`
-/

namespace A126190.P3918067238148106293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064458 (A076716 (n + 1)).toNat * A304112 (n + 1)

end

end A126190.P3918067238148106293

/-! ## A126190.P3539886153950302170

`A322827(2*(n+2))%A048817(A000598(n))`
-/

namespace A126190.P3539886153950302170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322827 (2 * (n + 2))) (A048817 (A000598 n).toNat)

end

end A126190.P3539886153950302170

/-!
# A126192: Product of the even divisors of 2n.

The programs for A126192, the canonical program `A126192.P9288968837919539928` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126192 has offset 1).

The definition of A126192 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126192.P9288968837919539928

`2^A000005(n+1)*A007955(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A126192

/-- `2^A000005(n+1)*A007955(n+1)` -/
def P9288968837919539928.Spec : Prop :=
  ∀ n, P9288968837919539928.a n = (A126192 (n + 1) : ℚ)

end A126192

/-! ## A126192.P10346032996973706809

`∏{d}[n+1, 2*#]`
-/

namespace A126192.P10346032996973706809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), 2 * d

end

end A126192.P10346032996973706809

namespace A126192

/-- `∏{d}[n+1, 2*#]` -/
def P10346032996973706809.Spec : Prop :=
  ∀ n, (P10346032996973706809.a n : ℤ) = A126192 (n + 1)

end A126192

/-! ## A126192.P10556663878758513514

`2^∑{d}[n+1, log2(#)+1]`
-/

namespace A126192.P10556663878758513514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ d ∈ Nat.divisors (f1 n), (Real.logb 2 (d : ℝ) + 1))

end

end A126192.P10556663878758513514

namespace A126192

/-- `2^∑{d}[n+1, log2(#)+1]` -/
def P10556663878758513514.Spec : Prop :=
  ∀ n, P10556663878758513514.a n = (A126192 (n + 1) : ℝ)

end A126192

/-! ## A126192.P8211688190149132750

`floor(∏{d}[n+1, (n+2+n)/#])`
-/

namespace A126192.P8211688190149132750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ d ∈ Nat.divisors (f1 n), (n + 2 + n : ℚ) / (d : ℚ)⌋

end

end A126192.P8211688190149132750

namespace A126192

/-- `floor(∏{d}[n+1, (n+2+n)/#])` -/
def P8211688190149132750.Spec : Prop :=
  ∀ n, P8211688190149132750.a n = A126192 (n + 1)

end A126192

/-! ## A126192.P3578434639031938661

`ceil(∏{d}[n+1, (n+2+n)/#])`
-/

namespace A126192.P3578434639031938661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ d ∈ Nat.divisors (f1 n), (n + 2 + n : ℚ) / (d : ℚ)⌉

end

end A126192.P3578434639031938661

namespace A126192

/-- `ceil(∏{d}[n+1, (n+2+n)/#])` -/
def P3578434639031938661.Spec : Prop :=
  ∀ n, P3578434639031938661.a n = A126192 (n + 1)

end A126192

/-! ## A126192.P15194222459005863385

`round(∏{d}[n+1, (n+2+n)/#])`
-/

namespace A126192.P15194222459005863385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ d ∈ Nat.divisors (f1 n), (n + 2 + n : ℚ) / (d : ℚ))

end

end A126192.P15194222459005863385

namespace A126192

/-- `round(∏{d}[n+1, (n+2+n)/#])` -/
def P15194222459005863385.Spec : Prop :=
  ∀ n, P15194222459005863385.a n = A126192 (n + 1)

end A126192

/-! ## A126192.P10258220364467244534

`A125911(2*(n+1))`
-/

namespace A126192.P10258220364467244534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125911 (2 * (n + 1))

end

end A126192.P10258220364467244534

namespace A126192

/-- `A125911(2*(n+1))` -/
def P10258220364467244534.Spec : Prop :=
  ∀ n, P10258220364467244534.a n = A126192 (n + 1)

end A126192

/-! ## A126192.P2579406288854250655

`sqrt(n+1)^∏{e}[n+1, #+1]*A000079(∏{e}[n+1, #+1])`
-/

namespace A126192.P2579406288854250655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ) ^ (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) * (A000079 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)) : ℝ)

end

end A126192.P2579406288854250655

namespace A126192

/-- `sqrt(n+1)^∏{e}[n+1, #+1]*A000079(∏{e}[n+1, #+1])` -/
def P2579406288854250655.Spec : Prop :=
  ∀ n, P2579406288854250655.a n = (A126192 (n + 1) : ℝ)

end A126192

/-! ## A126192.P3623700129947336290

`A007955(n+1)*A338506(n+1)`
-/

namespace A126192.P3623700129947336290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) * A338506 (n + 1)

end

end A126192.P3623700129947336290

namespace A126192

/-- `A007955(n+1)*A338506(n+1)` -/
def P3623700129947336290.Spec : Prop :=
  ∀ n, P3623700129947336290.a n = A126192 (n + 1)

end A126192

/-! ## A126192.P7221614544743286767

`A000079(∏{e}[n+1, #+1])*A007955(n+1)`
-/

namespace A126192.P7221614544743286767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) * A007955 (n + 1)

end

end A126192.P7221614544743286767

namespace A126192

/-- `A000079(∏{e}[n+1, #+1])*A007955(n+1)` -/
def P7221614544743286767.Spec : Prop :=
  ∀ n, P7221614544743286767.a n = A126192 (n + 1)

end A126192

/-! ## A126192.P16716278168438851244

`(n+1)*A007956(n+1)*A000079(∏{e}[n+1, #+1])`
-/

namespace A126192.P16716278168438851244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007956 (n + 1) * A000079 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A126192.P16716278168438851244

namespace A126192

/-- `(n+1)*A007956(n+1)*A000079(∏{e}[n+1, #+1])` -/
def P16716278168438851244.Spec : Prop :=
  ∀ n, P16716278168438851244.a n = A126192 (n + 1)

end A126192

/-! ## A126192.P7157500554265377733

`A000079(A000005(n+1))*A007955(n+1)`
-/

namespace A126192.P7157500554265377733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000005 (n + 1)).toNat * A007955 (n + 1)

end

end A126192.P7157500554265377733

namespace A126192

/-- `A000079(A000005(n+1))*A007955(n+1)` -/
def P7157500554265377733.Spec : Prop :=
  ∀ n, P7157500554265377733.a n = A126192 (n + 1)

end A126192

/-! ## A126192.P15163717747419887542

`(n+1)*A007956(n+1)*A000079(A000005(n+1))`
-/

namespace A126192.P15163717747419887542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007956 (n + 1) * A000079 (A000005 (n + 1)).toNat

end

end A126192.P15163717747419887542

namespace A126192

/-- `(n+1)*A007956(n+1)*A000079(A000005(n+1))` -/
def P15163717747419887542.Spec : Prop :=
  ∀ n, P15163717747419887542.a n = A126192 (n + 1)

end A126192

/-! ## A126192.P14249462491851175561

`A338576(n+1)/(n+1)*A000079(A000005(n+1))`
-/

namespace A126192.P14249462491851175561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338576 (n + 1) : ℚ) / (n + 1 : ℚ) * (A000079 (A000005 (n + 1)).toNat : ℚ)

end

end A126192.P14249462491851175561

namespace A126192

/-- `A338576(n+1)/(n+1)*A000079(A000005(n+1))` -/
def P14249462491851175561.Spec : Prop :=
  ∀ n, P14249462491851175561.a n = (A126192 (n + 1) : ℚ)

end A126192

/-! ## A126192.P16692239442668443292

`A179937(n+1)*A184392(n+1)*A000079(∏{e}[n+1, #+1])`
-/

namespace A126192.P16692239442668443292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179937 (n + 1) * A184392 (n + 1) * A000079 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A126192.P16692239442668443292

namespace A126192

/-- `A179937(n+1)*A184392(n+1)*A000079(∏{e}[n+1, #+1])` -/
def P16692239442668443292.Spec : Prop :=
  ∀ n, P16692239442668443292.a n = A126192 (n + 1)

end A126192

/-! ## A126192.P692483940738906230

`A179937(n+1)*A184392(n+1)*A000079(A000005(n+1))`
-/

namespace A126192.P692483940738906230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179937 (n + 1) * A184392 (n + 1) * A000079 (A000005 (n + 1)).toNat

end

end A126192.P692483940738906230

namespace A126192

/-- `A179937(n+1)*A184392(n+1)*A000079(A000005(n+1))` -/
def P692483940738906230.Spec : Prop :=
  ∀ n, P692483940738906230.a n = A126192 (n + 1)

end A126192

/-! ## A126192.P13219901349032916143

`A179937(n+1)*A184392(n+1)*A000079(A038040(n+1)/(n+1))`
-/

namespace A126192.P13219901349032916143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179937 (n + 1) * A184392 (n + 1) * A000079 (SequenceMachineLib.roundAway ((A038040 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A126192.P13219901349032916143

namespace A126192

/-- `A179937(n+1)*A184392(n+1)*A000079(A038040(n+1)/(n+1))` -/
def P13219901349032916143.Spec : Prop :=
  ∀ n, P13219901349032916143.a n = A126192 (n + 1)

end A126192

/-! ## A126192.P10331589351857289825

`A007955(2*(n+1))/A136655(n+1)`
-/

namespace A126192.P10331589351857289825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (2 * (n + 1)) : ℚ) / (A136655 (n + 1) : ℚ)

end

end A126192.P10331589351857289825

namespace A126192

/-- `A007955(2*(n+1))/A136655(n+1)` -/
def P10331589351857289825.Spec : Prop :=
  ∀ n, P10331589351857289825.a n = (A126192 (n + 1) : ℚ)

end A126192

/-! ## A126192.P6051420544487413471

`A007955(2*(n+1))/A385349(2*(n+1))`
-/

namespace A126192.P6051420544487413471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (2 * (n + 1)) : ℚ) / (A385349 (2 * (n + 1)) : ℚ)

end

end A126192.P6051420544487413471

namespace A126192

/-- `A007955(2*(n+1))/A385349(2*(n+1))` -/
def P6051420544487413471.Spec : Prop :=
  ∀ n, P6051420544487413471.a n = (A126192 (n + 1) : ℚ)

end A126192

/-! ## A126192.P7255129767567017353

`A007955(2*(n+1))/A007955(A000265(n+1))`
-/

namespace A126192.P7255129767567017353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (2 * (n + 1)) : ℚ) / (A007955 (A000265 (n + 1)).toNat : ℚ)

end

end A126192.P7255129767567017353

namespace A126192

/-- `A007955(2*(n+1))/A007955(A000265(n+1))` -/
def P7255129767567017353.Spec : Prop :=
  ∀ n, P7255129767567017353.a n = (A126192 (n + 1) : ℚ)

end A126192

/-!
# A126193: Lesser of twin primes (A001359) of the form p = k^2+s such that q = k^4+s is also a lesser of twin primes, q > p and s >= 0.

The programs for A126193, there is no canonical definition to state claims against.
-/

/-! ## A126193.P2037113184784766299

`A126194(n+1)-2`
-/

namespace A126193.P2037113184784766299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126194 (n + 1) - 2

end

end A126193.P2037113184784766299

/-! ## A126193.P15159711183271566667

`abs(2-A126194(ϕ²-(ϕ-n)))`
-/

namespace A126193.P15159711183271566667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A126194 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat|

end

end A126193.P15159711183271566667

/-! ## A126193.P419501213548944264

`A002472(A126194(n+1))`
-/

namespace A126193.P419501213548944264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002472 (A126194 (n + 1)).toNat

end

end A126193.P419501213548944264

/-! ## A126193.P2701643287215270591

`A260436(A126194(n+1)+2)`
-/

namespace A126193.P2701643287215270591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260436 (A126194 (n + 1) + 2).toNat

end

end A126193.P2701643287215270591

/-! ## A126193.P6103870044393517061

`A045763(2*A126194(n+1))`
-/

namespace A126193.P6103870044393517061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (2 * A126194 (n + 1)).toNat

end

end A126193.P6103870044393517061

/-!
# A126194: Greater of twin primes (A006512) of the form p = k^2+s such that q = k^4+s is also a greater of twin primes, q > p.

The programs for A126194, there is no canonical definition to state claims against.
-/

/-! ## A126194.P890136765732042562

`A126193(n+1)+2`
-/

namespace A126194.P890136765732042562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126193 (n + 1) + 2

end

end A126194.P890136765732042562

/-! ## A126194.P3356303943545315207

`A003961(A126193(n+1))`
-/

namespace A126194.P3356303943545315207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A126193 (n + 1)).toNat

end

end A126194.P3356303943545315207

/-! ## A126194.P17326637189747998982

`A006512(lt[A126988(3*n+1), A126062(2*n+3)])`
-/

namespace A126194.P17326637189747998982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126062 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A126194.P17326637189747998982

/-! ## A126194.P6601923375303198199

`A006512(lt[A134658(3*n), A220738(2*(n+2))])`
-/

namespace A126194.P6601923375303198199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134658 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A126194.P6601923375303198199

/-!
# A126195: Conjectured values for maximal number of solid spheres of radius 1 that can be rolled all in touch with and on the outside surface of a sphere of radius n.

The programs for A126195, there is no canonical definition to state claims against.
-/

/-! ## A126195.P13131755772326910409

`5-∑[∑[n-10]+3]`
-/

namespace A126195.P13131755772326910409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 10

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126195.P13131755772326910409

/-!
# A126197: GCDs arising in A126196.

The programs for A126197, there is no canonical definition to state claims against.
-/

/-! ## A126197.P8005981513830262540

`A306909(A172194(n)+2)`
-/

namespace A126197.P8005981513830262540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306909 (A172194 n + 2).toNat

end

end A126197.P8005981513830262540

/-!
# A126198: Triangle read by rows: T(n,k) (1 <= k <= n) = number of compositions of n into parts of size <= k.

The programs for A126198, there is no canonical definition to state claims against.
-/

/-! ## A126198.P12581103109179698820

`∑[A048004(n)]-A000225(A003056(n))`
-/

namespace A126198.P12581103109179698820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000225 (A003056 n).toNat

end

end A126198.P12581103109179698820

/-! ## A126198.P14091790804636208587

`A048887(A278818(A245300(n)))`
-/

namespace A126198.P14091790804636208587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 (A278818 (A245300 n).toNat).toNat

end

end A126198.P14091790804636208587

/-! ## A126198.P12296167504641051308

`A048887(A245300(n)+A193592(n))`
-/

namespace A126198.P12296167504641051308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 (A245300 n + A193592 n).toNat

end

end A126198.P12296167504641051308

/-! ## A126198.P17494877989832828135

`A048887(A245300(n)+A004736(n+1))`
-/

namespace A126198.P17494877989832828135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 (A245300 n + A004736 (n + 1)).toNat

end

end A126198.P17494877989832828135

/-! ## A126198.P10396880936878260231

`A048887(A025581(n)+A245300(n)+1)`
-/

namespace A126198.P10396880936878260231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 (A025581 n + (A245300 n + 1)).toNat

end

end A126198.P10396880936878260231

/-! ## A126198.P712830135493313205

`ceil(A006257(∑[A048004(n)])/2)`
-/

namespace A126198.P712830135493313205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006257 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2⌉

end

end A126198.P712830135493313205

/-! ## A126198.P9682510664449393538

`A008619(A006257(∑[A048004(n)]))`
-/

namespace A126198.P9682510664449393538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A006257 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A126198.P9682510664449393538

/-! ## A126198.P7480148438772877491

`A062050(∑[A048004(n)])`
-/

namespace A126198.P7480148438772877491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A126198.P7480148438772877491

/-! ## A126198.P10908614668941248681

`A053645(∑[A048004(n)])+1`
-/

namespace A126198.P10908614668941248681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A126198.P10908614668941248681

/-! ## A126198.P14214310761610405201

`A062050(∑[A048003(n+1)/2])`
-/

namespace A126198.P14214310761610405201
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048003 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A126198.P14214310761610405201

/-!
# A126199: a(n) = prime(n)*prime(n+1) + prime(n) + prime(n+1).

The programs for A126199, the canonical program `A126199.P9184133218425217126` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126199 has offset 1).

The definition of A126199 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)*A000040(n+2)+A000040(n+1)+A000040(n+2)` (program `A126199.P9184133218425217126`, by `A126199.P9184133218425217126.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126199.P3423459806366818693

`A180617(n+1)-1`
-/

namespace A126199.P3423459806366818693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180617 (n + 1) - 1

end

end A126199.P3423459806366818693

namespace A126199

/-- `A180617(n+1)-1` -/
def P3423459806366818693.Spec : Prop :=
  ∀ n, P3423459806366818693.a n = A126199 (n + 1)

theorem P3423459806366818693.correct : P3423459806366818693.Spec := by
  intro n
  simp only [A126199, Nat.add_sub_cancel, A126199.P3423459806366818693.a, A126199.P9184133218425217126.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A180617, A180617.P4406684303062301047.a, A001043, A001043.P18269783162673735460.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126199

/-! ## A126199.P9184133218425217126

`A000040(n+1)*A000040(n+2)+A000040(n+1)+A000040(n+2)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A126199

/-- `A000040(n+1)*A000040(n+2)+A000040(n+1)+A000040(n+2)` -/
def P9184133218425217126.Spec : Prop :=
  ∀ n, P9184133218425217126.a n = A126199 (n + 1)

theorem P9184133218425217126.correct : P9184133218425217126.Spec := by
  intro n
  simp only [A126199, Nat.add_sub_cancel]

end A126199

/-! ## A126199.P2926874269709044461

`4*A079079(n+1)-1`
-/

namespace A126199.P2926874269709044461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A079079 (n + 1) - 1

end

end A126199.P2926874269709044461

namespace A126199

/-- `4*A079079(n+1)-1` -/
def P2926874269709044461.Spec : Prop :=
  ∀ n, P2926874269709044461.a n = A126199 (n + 1)

end A126199

/-! ## A126199.P2609492527160374168

`floor((sqrt(A006094(n+1))+1)²)`
-/

namespace A126199.P2609492527160374168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (A006094 (n + 1) : ℝ) + 1) ^ 2⌋

end

end A126199.P2609492527160374168

namespace A126199

/-- `floor((sqrt(A006094(n+1))+1)²)` -/
def P2609492527160374168.Spec : Prop :=
  ∀ n, P2609492527160374168.a n = A126199 (n + 1)

end A126199

/-! ## A126199.P2312176846678181472

`A006094(n+1)+Δ[A061802(n)]`
-/

namespace A126199.P2312176846678181472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + (f1 (n + 1) - f1 n)

end

end A126199.P2312176846678181472

namespace A126199

/-- `A006094(n+1)+Δ[A061802(n)]` -/
def P2312176846678181472.Spec : Prop :=
  ∀ n, P2312176846678181472.a n = A126199 (n + 1)

end A126199

/-! ## A126199.P13525158629688642489

`A006094(n+1)+A001043(n+1)`
-/

namespace A126199.P13525158629688642489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + A001043 (n + 1)

end

end A126199.P13525158629688642489

namespace A126199

/-- `A006094(n+1)+A001043(n+1)` -/
def P13525158629688642489.Spec : Prop :=
  ∀ n, P13525158629688642489.a n = A126199 (n + 1)

theorem P13525158629688642489.correct : P13525158629688642489.Spec := by
  intro n
  simp only [A126199, Nat.add_sub_cancel, A126199.P13525158629688642489.a, A126199.P9184133218425217126.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126199

/-! ## A126199.P16933729546326768770

`A111071(n+1)+A034961(n+1)`
-/

namespace A126199.P16933729546326768770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111071 (n + 1) + A034961 (n + 1)

end

end A126199.P16933729546326768770

namespace A126199

/-- `A111071(n+1)+A034961(n+1)` -/
def P16933729546326768770.Spec : Prop :=
  ∀ n, P16933729546326768770.a n = A126199 (n + 1)

theorem P16933729546326768770.correct : P16933729546326768770.Spec := by
  intro n
  simp only [A126199, Nat.add_sub_cancel, A126199.P16933729546326768770.a, A126199.P9184133218425217126.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A034961, A034961.P9480249767911558173.a, A111071, A111071.P17768111592594357772.a, A001043, A001043.P18269783162673735460.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126199

/-! ## A126199.P3045676503491608451

`A123134(n+1)+A065091(n+1)`
-/

namespace A126199.P3045676503491608451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123134 (n + 1) + A065091 (n + 1)

end

end A126199.P3045676503491608451

namespace A126199

/-- `A123134(n+1)+A065091(n+1)` -/
def P3045676503491608451.Spec : Prop :=
  ∀ n, P3045676503491608451.a n = A126199 (n + 1)

theorem P3045676503491608451.correct : P3045676503491608451.Spec := by
  intro n
  simp only [A126199, Nat.add_sub_cancel, A126199.P3045676503491608451.a, A126199.P9184133218425217126.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A065091, A065091.P6971844946592549357.a, A123134, A123134.P1141730384481929553.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126199

/-! ## A126199.P16866213473400224877

`A345727(n+1)+A000040(n+1)`
-/

namespace A126199.P16866213473400224877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345727 (n + 1) + A000040 (n + 1)

end

end A126199.P16866213473400224877

namespace A126199

/-- `A345727(n+1)+A000040(n+1)` -/
def P16866213473400224877.Spec : Prop :=
  ∀ n, P16866213473400224877.a n = A126199 (n + 1)

theorem P16866213473400224877.correct : P16866213473400224877.Spec := by
  intro n
  simp only [A126199, Nat.add_sub_cancel, A126199.P16866213473400224877.a, A126199.P9184133218425217126.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A345727, A345727.P3884411863800253257.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126199

/-! ## A126199.P6350667930969998392

`A292926(n+1)+A096379(n+1)`
-/

namespace A126199.P6350667930969998392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292926 (n + 1) + A096379 (n + 1)

end

end A126199.P6350667930969998392

namespace A126199

/-- `A292926(n+1)+A096379(n+1)` -/
def P6350667930969998392.Spec : Prop :=
  ∀ n, P6350667930969998392.a n = A126199 (n + 1)

theorem P6350667930969998392.correct : P6350667930969998392.Spec := by
  intro n
  simp only [A126199, Nat.add_sub_cancel, A126199.P6350667930969998392.a, A126199.P9184133218425217126.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A096379, A096379.P509834506880397996.a, A292926, A292926.P2687136301656224397.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126199

/-! ## A126199.P12472603732244212443

`A364411(n+1)+A037167(n+1)`
-/

namespace A126199.P12472603732244212443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364411 (n + 1) + A037167 (n + 1)

end

end A126199.P12472603732244212443

namespace A126199

/-- `A364411(n+1)+A037167(n+1)` -/
def P12472603732244212443.Spec : Prop :=
  ∀ n, P12472603732244212443.a n = A126199 (n + 1)

theorem P12472603732244212443.correct : P12472603732244212443.Spec := by
  intro n
  simp only [A126199, Nat.add_sub_cancel, A126199.P12472603732244212443.a, A126199.P9184133218425217126.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A037167, A037167.P4374457487449018136.a, A364411, A364411.P15302735804831571920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126199

/-! ## A126199.P12366423369779690093

`A011974(n+2)+A006094(n+1)`
-/

namespace A126199.P12366423369779690093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 2) + A006094 (n + 1)

end

end A126199.P12366423369779690093

namespace A126199

/-- `A011974(n+2)+A006094(n+1)` -/
def P12366423369779690093.Spec : Prop :=
  ∀ n, P12366423369779690093.a n = A126199 (n + 1)

end A126199

/-! ## A126199.P4094449606183293032

`A069486(n+1)-A037165(n+1)`
-/

namespace A126199.P4094449606183293032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069486 (n + 1) - A037165 (n + 1)

end

end A126199.P4094449606183293032

namespace A126199

/-- `A069486(n+1)-A037165(n+1)` -/
def P4094449606183293032.Spec : Prop :=
  ∀ n, P4094449606183293032.a n = A126199 (n + 1)

theorem P4094449606183293032.correct : P4094449606183293032.Spec := by
  intro n
  simp only [A126199, Nat.add_sub_cancel, A126199.P4094449606183293032.a, A126199.P9184133218425217126.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A037165, A037165.P6513622621090832271.a, A069486, A069486.P4196932283638993766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126199

/-! ## A126199.P8997446506499892026

`A001043(n+1)+sqrt(A166329(n+1))`
-/

namespace A126199.P8997446506499892026
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001043 (n + 1) : ℝ) + Real.sqrt (A166329 (n + 1) : ℝ)

end

end A126199.P8997446506499892026

namespace A126199

/-- `A001043(n+1)+sqrt(A166329(n+1))` -/
def P8997446506499892026.Spec : Prop :=
  ∀ n, P8997446506499892026.a n = (A126199 (n + 1) : ℝ)

end A126199

/-! ## A126199.P2463428109144207009

`A006094(n+1)+A092949(n+1)-1`
-/

namespace A126199.P2463428109144207009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + (A092949 (n + 1) - 1)

end

end A126199.P2463428109144207009

namespace A126199

/-- `A006094(n+1)+A092949(n+1)-1` -/
def P2463428109144207009.Spec : Prop :=
  ∀ n, P2463428109144207009.a n = A126199 (n + 1)

theorem P2463428109144207009.correct : P2463428109144207009.Spec := by
  intro n
  simp only [A126199, Nat.add_sub_cancel, A126199.P2463428109144207009.a, A126199.P9184133218425217126.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, A092949, A092949.P1382492647621219255.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126199

/-! ## A126199.P14826572749508487785

`A065091(n+1)+A286624(n+1)-1`
-/

namespace A126199.P14826572749508487785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + (A286624 (n + 1) - 1)

end

end A126199.P14826572749508487785

namespace A126199

/-- `A065091(n+1)+A286624(n+1)-1` -/
def P14826572749508487785.Spec : Prop :=
  ∀ n, P14826572749508487785.a n = A126199 (n + 1)

theorem P14826572749508487785.correct : P14826572749508487785.Spec := by
  intro n
  simp only [A126199, Nat.add_sub_cancel, A126199.P14826572749508487785.a, A126199.P9184133218425217126.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A065091, A065091.P6971844946592549357.a, A286624, A286624.P12249411066844732850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126199

/-! ## A126199.P8001400920771340506

`A008864(n+1)+A345727(n+1)-1`
-/

namespace A126199.P8001400920771340506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + (A345727 (n + 1) - 1)

end

end A126199.P8001400920771340506

namespace A126199

/-- `A008864(n+1)+A345727(n+1)-1` -/
def P8001400920771340506.Spec : Prop :=
  ∀ n, P8001400920771340506.a n = A126199 (n + 1)

theorem P8001400920771340506.correct : P8001400920771340506.Spec := by
  intro n
  simp only [A126199, Nat.add_sub_cancel, A126199.P8001400920771340506.a, A126199.P9184133218425217126.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A345727, A345727.P3884411863800253257.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126199

/-! ## A126199.P11753180652341468443

`A037165(n+1)+2*A001043(n+1)`
-/

namespace A126199.P11753180652341468443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037165 (n + 1) + 2 * A001043 (n + 1)

end

end A126199.P11753180652341468443

namespace A126199

/-- `A037165(n+1)+2*A001043(n+1)` -/
def P11753180652341468443.Spec : Prop :=
  ∀ n, P11753180652341468443.a n = A126199 (n + 1)

theorem P11753180652341468443.correct : P11753180652341468443.Spec := by
  intro n
  simp only [A126199, Nat.add_sub_cancel, A126199.P11753180652341468443.a, A126199.P9184133218425217126.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A037165, A037165.P6513622621090832271.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126199

/-! ## A126199.P18287318670128954214

`A006254(n+1)*A089241(n+1)-1`
-/

namespace A126199.P18287318670128954214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) * A089241 (n + 1) - 1

end

end A126199.P18287318670128954214

namespace A126199

/-- `A006254(n+1)*A089241(n+1)-1` -/
def P18287318670128954214.Spec : Prop :=
  ∀ n, P18287318670128954214.a n = A126199 (n + 1)

end A126199

/-! ## A126199.P5688663655374004497

`A006094(n+1)+A006094(n+1)-A037165(n+1)`
-/

namespace A126199.P5688663655374004497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + (A006094 (n + 1) - A037165 (n + 1))

end

end A126199.P5688663655374004497

namespace A126199

/-- `A006094(n+1)+A006094(n+1)-A037165(n+1)` -/
def P5688663655374004497.Spec : Prop :=
  ∀ n, P5688663655374004497.a n = A126199 (n + 1)

theorem P5688663655374004497.correct : P5688663655374004497.Spec := by
  intro n
  simp only [A126199, Nat.add_sub_cancel, A126199.P5688663655374004497.a, A126199.P9184133218425217126.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, A037165, A037165.P6513622621090832271.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126199

