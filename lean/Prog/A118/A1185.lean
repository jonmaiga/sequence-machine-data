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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
# A118500: A variation on Flavius's sieves (A000960, A099207): Start with the Chen primes; at the k-th sieving step, remove every (k+1)-st term of the sequence remaining after the (k-1)-st sieving step; iterate.

The programs for A118500, there is no canonical definition to state claims against.
-/

/-! ## A118500.P9211395993928224991

`A109611(A000960(n+1))`
-/

namespace A118500.P9211395993928224991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (A000960 (n + 1)).toNat

end

end A118500.P9211395993928224991

/-! ## A118500.P8610194913274719014

`A109611(A278484(n)+1)`
-/

namespace A118500.P8610194913274719014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (A278484 n + 1).toNat

end

end A118500.P8610194913274719014

/-! ## A118500.P616323381114455325

`A109611(or(1, A278484(n)))`
-/

namespace A118500.P616323381114455325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (Int.lor 1 (A278484 n)).toNat

end

end A118500.P616323381114455325

/-! ## A118500.P15064232636621752469

`A109611(xor(1, A278484(n)))`
-/

namespace A118500.P15064232636621752469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (Int.xor 1 (A278484 n)).toNat

end

end A118500.P15064232636621752469

/-! ## A118500.P5710354139698345792

`A109611(A278505(∑[n+1]))`
-/

namespace A118500.P5710354139698345792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (A278505 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A118500.P5710354139698345792

/-!
# A118501: A variation on Flavius's sieves (A099204, A099243): Start with the Chen numbers; at the k-th sieving step, remove every p-th term of the sequence remaining after the (k-1)-st sieving step, where p is the k-th prime; iterate.

The programs for A118501, there is no canonical definition to state claims against.
-/

/-! ## A118501.P13810127564198564503

`A109611(A099204(n+1))`
-/

namespace A118501.P13810127564198564503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (A099204 (n + 1)).toNat

end

end A118501.P13810127564198564503

/-! ## A118501.P16722960590486270558

`A109611(∑{d}[A099243(n+1), A049084(#)])`
-/

namespace A118501.P16722960590486270558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (∑ d ∈ Nat.divisors (f1 n).natAbs, A049084 d).toNat

end

end A118501.P16722960590486270558

/-! ## A118501.P10019053954108570339

`A109611(∑{d}[A099243(n+1), A061395(#)])`
-/

namespace A118501.P10019053954108570339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d).toNat

end

end A118501.P10019053954108570339

/-! ## A118501.P216400739556793786

`A109611(A219608(n+1)^Δ[A029966(n+1)])`
-/

namespace A118501.P216400739556793786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (SequenceMachineLib.roundAway ((A219608 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A118501.P216400739556793786

/-! ## A118501.P8918685794032739720

`A109611(Δ[A029966(n+1)]²*A219608(n+1))`
-/

namespace A118501.P8918685794032739720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 ((f1 (n + 1) - f1 n) ^ 2 * A219608 (n + 1)).toNat

end

end A118501.P8918685794032739720

/-!
# A118502: Numbers k that divide floor((4/3)^k).

The programs for A118502, there is no canonical definition to state claims against.
-/

/-! ## A118502.P14372856868958241694

`record[gcd(n, A064628(n))]`
-/

namespace A118502.P14372856868958241694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A064628 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118502.P14372856868958241694

/-!
# A118503: Sum of digits of prime factors of n, with multiplicity.

The programs for A118503, there is no canonical definition to state claims against.
-/

/-! ## A118503.P10110249450991810144

`A007953(A037276(n+1))%∑{d}[n+1, #]`
-/

namespace A118503.P10110249450991810144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 (A037276 (n + 1)).toNat) ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A118503.P10110249450991810144

/-! ## A118503.P13660065524521029750

`A007953(A084797(n+1))%record[2-xor(1, -n)]`
-/

namespace A118503.P13660065524521029750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 (A084797 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A118503.P13660065524521029750

/-! ## A118503.P8100651787641931015

`A007953(A037276(n+1)-A000007(n))`
-/

namespace A118503.P8100651787641931015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A037276 (n + 1) - A000007 n).toNat

end

end A118503.P8100651787641931015

/-! ## A118503.P1481216865867831548

`A007953(A037276(n+1)%A000244(n))`
-/

namespace A118503.P1481216865867831548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (Int.tmod (A037276 (n + 1)) (A000244 n)).toNat

end

end A118503.P1481216865867831548

/-! ## A118503.P8567579318027555965

`A007953(A037276(n+1))%A001752(n)`
-/

namespace A118503.P8567579318027555965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 (A037276 (n + 1)).toNat) (A001752 n)

end

end A118503.P8567579318027555965

/-!
# A118504: Sophie Germain primes whose sum of digits is also a Sophie Germain prime.

The programs for A118504, the canonical program `A118504.P15004735124841124950` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118504 has offset 1).

The definition of A118504 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 777 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118504.P890995657314992870

`∩[A070027(n+1), A259973(n+1)]`
-/

namespace A118504.P890995657314992870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118504.P890995657314992870

namespace A118504

/-- `∩[A070027(n+1), A259973(n+1)]` -/
def P890995657314992870.Spec : Prop :=
  ∀ n, (P890995657314992870.a n : ℤ) = A118504 (n + 1)

end A118504

/-! ## A118504.P15004735124841124950

`∩[A078403(n+1), A118571(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A118504

/-- `∩[A078403(n+1), A118571(n+1)]` -/
def P15004735124841124950.Spec : Prop :=
  ∀ n, (P15004735124841124950.a n : ℤ) = A118504 (n + 1)

theorem P15004735124841124950.correct : P15004735124841124950.Spec := by
  intro n
  simp only [A118504, Nat.add_sub_cancel]

end A118504

/-! ## A118504.P7106452317635772946

`∩[A070027(n+1), A078762(n+1)]`
-/

namespace A118504.P7106452317635772946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118504.P7106452317635772946

namespace A118504

/-- `∩[A070027(n+1), A078762(n+1)]` -/
def P7106452317635772946.Spec : Prop :=
  ∀ n, (P7106452317635772946.a n : ℤ) = A118504 (n + 1)

end A118504

/-! ## A118504.P13680715688454825412

`∩[A054639(n+1), A070027(n+1)]`
-/

namespace A118504.P13680715688454825412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118504.P13680715688454825412

namespace A118504

/-- `∩[A054639(n+1), A070027(n+1)]` -/
def P13680715688454825412.Spec : Prop :=
  ∀ n, (P13680715688454825412.a n : ℤ) = A118504 (n + 1)

end A118504

/-! ## A118504.P16956471475433804370

`∩[A014109(n+1), A070027(n+1)]`
-/

namespace A118504.P16956471475433804370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118504.P16956471475433804370

namespace A118504

/-- `∩[A014109(n+1), A070027(n+1)]` -/
def P16956471475433804370.Spec : Prop :=
  ∀ n, (P16956471475433804370.a n : ℤ) = A118504 (n + 1)

end A118504

/-! ## A118504.P2684069406366298403

`∩[A070027(n+1), A156541(n+1)]`
-/

namespace A118504.P2684069406366298403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118504.P2684069406366298403

namespace A118504

/-- `∩[A070027(n+1), A156541(n+1)]` -/
def P2684069406366298403.Spec : Prop :=
  ∀ n, (P2684069406366298403.a n : ℤ) = A118504 (n + 1)

end A118504

/-! ## A118504.P5897021857280474517

`∩[A005384(n+1), A070026(n+1)]`
-/

namespace A118504.P5897021857280474517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118504.P5897021857280474517

namespace A118504

/-- `∩[A005384(n+1), A070026(n+1)]` -/
def P5897021857280474517.Spec : Prop :=
  ∀ n, (P5897021857280474517.a n : ℤ) = A118504 (n + 1)

end A118504

/-! ## A118504.P777033381995702560

`∩[A070026(n+1), A118571(n+1)]`
-/

namespace A118504.P777033381995702560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118504.P777033381995702560

namespace A118504

/-- `∩[A070026(n+1), A118571(n+1)]` -/
def P777033381995702560.Spec : Prop :=
  ∀ n, (P777033381995702560.a n : ℤ) = A118504 (n + 1)

end A118504

/-! ## A118504.P9282007154642520139

`∩[A070027(n+1), A074821(n+1)]`
-/

namespace A118504.P9282007154642520139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118504.P9282007154642520139

namespace A118504

/-- `∩[A070027(n+1), A074821(n+1)]` -/
def P9282007154642520139.Spec : Prop :=
  ∀ n, (P9282007154642520139.a n : ℤ) = A118504 (n + 1)

end A118504

/-! ## A118504.P12954132386660831316

`∩[A070027(n+1), A117360(n+1)]`
-/

namespace A118504.P12954132386660831316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118504.P12954132386660831316

namespace A118504

/-- `∩[A070027(n+1), A117360(n+1)]` -/
def P12954132386660831316.Spec : Prop :=
  ∀ n, (P12954132386660831316.a n : ℤ) = A118504 (n + 1)

end A118504

/-! ## A118504.P5608760226232597201

`∩[A005097(n+1), A070027(n+1)]`
-/

namespace A118504.P5608760226232597201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118504.P5608760226232597201

namespace A118504

/-- `∩[A005097(n+1), A070027(n+1)]` -/
def P5608760226232597201.Spec : Prop :=
  ∀ n, (P5608760226232597201.a n : ℤ) = A118504 (n + 1)

end A118504

/-! ## A118504.P10436041654618284079

`∩[A070027(n+1), A102781(n+1)]`
-/

namespace A118504.P10436041654618284079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118504.P10436041654618284079

namespace A118504

/-- `∩[A070027(n+1), A102781(n+1)]` -/
def P10436041654618284079.Spec : Prop :=
  ∀ n, (P10436041654618284079.a n : ℤ) = A118504 (n + 1)

end A118504

/-! ## A118504.P10896539780965938200

`∩[A070027(n+1), A139791(n+1)]`
-/

namespace A118504.P10896539780965938200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118504.P10896539780965938200

namespace A118504

/-- `∩[A070027(n+1), A139791(n+1)]` -/
def P10896539780965938200.Spec : Prop :=
  ∀ n, (P10896539780965938200.a n : ℤ) = A118504 (n + 1)

end A118504

/-! ## A118504.P13823375563827938249

`∩[A070027(n+1), A326583(n+1)]`
-/

namespace A118504.P13823375563827938249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118504.P13823375563827938249

namespace A118504

/-- `∩[A070027(n+1), A326583(n+1)]` -/
def P13823375563827938249.Spec : Prop :=
  ∀ n, (P13823375563827938249.a n : ℤ) = A118504 (n + 1)

end A118504

/-! ## A118504.P1429760392974376342

`filter[A070027(n+1), A101264(#)]`
-/

namespace A118504.P1429760392974376342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A118504.P1429760392974376342

namespace A118504

/-- `filter[A070027(n+1), A101264(#)]` -/
def P1429760392974376342.Spec : Prop :=
  ∀ n, P1429760392974376342.a n = A118504 (n + 1)

end A118504

/-! ## A118504.P4624401204940377598

`∩[A068406(n+1), A070027(n+1)]`
-/

namespace A118504.P4624401204940377598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118504.P4624401204940377598

namespace A118504

/-- `∩[A068406(n+1), A070027(n+1)]` -/
def P4624401204940377598.Spec : Prop :=
  ∀ n, (P4624401204940377598.a n : ℤ) = A118504 (n + 1)

end A118504

/-! ## A118504.P13118937863296189158

`∩[A118571(n+1), A342392(n+1)]`
-/

namespace A118504.P13118937863296189158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118504.P13118937863296189158

namespace A118504

/-- `∩[A118571(n+1), A342392(n+1)]` -/
def P13118937863296189158.Spec : Prop :=
  ∀ n, (P13118937863296189158.a n : ℤ) = A118504 (n + 1)

end A118504

/-! ## A118504.P16707773039533064596

`∩[A118571(n+1), A309960(n+1)]`
-/

namespace A118504.P16707773039533064596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118504.P16707773039533064596

namespace A118504

/-- `∩[A118571(n+1), A309960(n+1)]` -/
def P16707773039533064596.Spec : Prop :=
  ∀ n, (P16707773039533064596.a n : ℤ) = A118504 (n + 1)

end A118504

/-! ## A118504.P15785184425306628334

`∩[A070027(n+1), A328413(n+1)]`
-/

namespace A118504.P15785184425306628334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118504.P15785184425306628334

namespace A118504

/-- `∩[A070027(n+1), A328413(n+1)]` -/
def P15785184425306628334.Spec : Prop :=
  ∀ n, (P15785184425306628334.a n : ℤ) = A118504 (n + 1)

end A118504

/-! ## A118504.P13097057132316505719

`∩[A070027(n+1), A002180(n+2)]`
-/

namespace A118504.P13097057132316505719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002180 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118504.P13097057132316505719

namespace A118504

/-- `∩[A070027(n+1), A002180(n+2)]` -/
def P13097057132316505719.Spec : Prop :=
  ∀ n, (P13097057132316505719.a n : ℤ) = A118504 (n + 1)

end A118504

/-!
# A118505: Sophie Germain primes for which the product of the digits is also a Sophie Germain prime.

The programs for A118505, there is no canonical definition to state claims against.
-/

/-! ## A118505.P16927004362481479578

`filter[A028842(n+1), A156660(#)]`
-/

namespace A118505.P16927004362481479578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A156660 (f1 j).toNat = 1) n)

end

end A118505.P16927004362481479578

/-! ## A118505.P9967392928808575778

`p?[A066194(∑[A343358(n+3)])]`
-/

namespace A118505.P9967392928808575778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343358 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066194 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118505.P9967392928808575778

/-!
# A118506: Smaller of two consecutive Sophie Germain primes with the same digital sum.

The programs for A118506, there is no canonical definition to state claims against.
-/

/-! ## A118506.P7937342566296226432

`A259788(A118507(n+1))`
-/

namespace A118506.P7937342566296226432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259788 (A118507 (n + 1)).toNat

end

end A118506.P7937342566296226432

/-!
# A118508: Triangle read by rows: R(n,k) = A002808(n) mod A002808(k), 0

The programs for A118508, there is no canonical definition to state claims against.
-/

/-! ## A118508.P6479864459313177758

`A111653(n+1)%A002808(A002260(n+1))`
-/

namespace A118508.P6479864459313177758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111653 (n + 1)) (A002808 (A002260 (n + 1)).toNat)

end

end A118508.P6479864459313177758

/-! ## A118508.P17847951164618411572

`A002808(A002024(n+1))%A002808(A002260(n+1))`
-/

namespace A118508.P17847951164618411572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (A002024 (n + 1)).toNat) (A002808 (A002260 (n + 1)).toNat)

end

end A118508.P17847951164618411572

/-! ## A118508.P17251902270108804211

`A018252(A003057(n+2))%A002808(A002260(n+1))`
-/

namespace A118508.P17251902270108804211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018252 (A003057 (n + 2)).toNat) (A002808 (A002260 (n + 1)).toNat)

end

end A118508.P17251902270108804211

/-! ## A118508.P12900869080995154631

`A001222(A048693(n))%A093562(n)`
-/

namespace A118508.P12900869080995154631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A048693 n).toNat) (A093562 n)

end

end A118508.P12900869080995154631

/-! ## A118508.P1974475057292330200

`A189219(A293362(n+1))*A261787(n)`
-/

namespace A118508.P1974475057292330200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189219 (A293362 (n + 1)).toNat * A261787 n

end

end A118508.P1974475057292330200

/-!
# A118509: First differences of A031921.

The programs for A118509, the canonical program `A118509.P16894441633057397340` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118509 has offset 1).

The definition of A118509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118509.P16894441633057397340

`Δ[A031921(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A118509

/-- `Δ[A031921(n+1)]` -/
def P16894441633057397340.Spec : Prop :=
  ∀ n, P16894441633057397340.a n = A118509 (n + 1)

theorem P16894441633057397340.correct : P16894441633057397340.Spec := by
  intro n
  simp only [A118509, Nat.add_sub_cancel]

end A118509

/-! ## A118509.P17268623093456955714

`A031921(n+2)-A031921(n+1)`
-/

namespace A118509.P17268623093456955714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031921 (n + 2) - A031921 (n + 1)

end

end A118509.P17268623093456955714

namespace A118509

/-- `A031921(n+2)-A031921(n+1)` -/
def P17268623093456955714.Spec : Prop :=
  ∀ n, P17268623093456955714.a n = A118509 (n + 1)

theorem P17268623093456955714.correct : P17268623093456955714.Spec := by
  intro n
  simp only [A118509, Nat.add_sub_cancel, A118509.P17268623093456955714.a, A118509.P16894441633057397340.f1, A118509.P16894441633057397340.a, SequenceMachineLib.memo_apply]

end A118509

/-! ## A118509.P16600706840568425451

`Δ[A031343(10*(n+1))]`
-/

namespace A118509.P16600706840568425451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031343 (10 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118509.P16600706840568425451

namespace A118509

/-- `Δ[A031343(10*(n+1))]` -/
def P16600706840568425451.Spec : Prop :=
  ∀ n, P16600706840568425451.a n = A118509 (n + 1)

end A118509

/-! ## A118509.P2896262507228074501

`Δ[A031337(5*5*(n+1))]`
-/

namespace A118509.P2896262507228074501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031337 (5 * (5 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118509.P2896262507228074501

namespace A118509

/-- `Δ[A031337(5*5*(n+1))]` -/
def P2896262507228074501.Spec : Prop :=
  ∀ n, P2896262507228074501.a n = A118509 (n + 1)

end A118509

/-! ## A118509.P10192164118303084626

`Δ[A031215(50*(n+1))]`
-/

namespace A118509.P10192164118303084626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (50 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118509.P10192164118303084626

namespace A118509

/-- `Δ[A031215(50*(n+1))]` -/
def P10192164118303084626.Spec : Prop :=
  ∀ n, P10192164118303084626.a n = A118509 (n + 1)

end A118509

/-! ## A118509.P15934634591997022106

`Δ[A000040(10*10*(n+1))]`
-/

namespace A118509.P15934634591997022106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (10 * (10 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118509.P15934634591997022106

namespace A118509

/-- `Δ[A000040(10*10*(n+1))]` -/
def P15934634591997022106.Spec : Prop :=
  ∀ n, P15934634591997022106.a n = A118509 (n + 1)

end A118509

/-! ## A118509.P3621830857916084319

`Δ[A008864(10*10*(n+1))]`
-/

namespace A118509.P3621830857916084319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (10 * (10 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118509.P3621830857916084319

namespace A118509

/-- `Δ[A008864(10*10*(n+1))]` -/
def P3621830857916084319.Spec : Prop :=
  ∀ n, P3621830857916084319.a n = A118509 (n + 1)

end A118509

/-! ## A118509.P16506386326678375317

`abs(Δ[A000040(A158128(n+1)-1)])`
-/

namespace A118509.P16506386326678375317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A158128 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A118509.P16506386326678375317

namespace A118509

/-- `abs(Δ[A000040(A158128(n+1)-1)])` -/
def P16506386326678375317.Spec : Prop :=
  ∀ n, P16506386326678375317.a n = A118509 (n + 1)

end A118509

/-! ## A118509.P12871296415231025731

`Δ[A175221(A008574(5*5*(n+1)))]`
-/

namespace A118509.P12871296415231025731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (A008574 (5 * (5 * (n + 1)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118509.P12871296415231025731

namespace A118509

/-- `Δ[A175221(A008574(5*5*(n+1)))]` -/
def P12871296415231025731.Spec : Prop :=
  ∀ n, P12871296415231025731.a n = A118509 (n + 1)

end A118509

/-!
# A118510: Define sequence S_m by: initial term = m, reverse digits and add 1 to get next term. It is conjectured that S_m always reaches a cycle of length 9, as in A117230. Sequence gives records for number of steps to reach cycle.

The programs for A118510, the canonical program `A118510.P1296080054964525769` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118510 has offset 1).

The definition of A118510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118510.P2567777388757032467

`∑[17^(n%2)]`
-/

namespace A118510.P2567777388757032467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118510.P2567777388757032467

namespace A118510

/-- `∑[17^(n%2)]` -/
def P2567777388757032467.Spec : Prop :=
  ∀ n, (P2567777388757032467.a n : ℤ) = A118510 (n + 1)

end A118510

/-! ## A118510.P6753531871900544976

`∑[17^and(1, n)]`
-/

namespace A118510.P6753531871900544976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118510.P6753531871900544976

namespace A118510

/-- `∑[17^and(1, n)]` -/
def P6753531871900544976.Spec : Prop :=
  ∀ n, (P6753531871900544976.a n : ℤ) = A118510 (n + 1)

end A118510

/-! ## A118510.P437832743004557408

`∑[gcd(17, log2(gcd(2, n)))]`
-/

namespace A118510.P437832743004557408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 17 (SequenceMachineLib.roundAway (Real.logb 2 (Nat.gcd 2 n : ℝ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118510.P437832743004557408

namespace A118510

/-- `∑[gcd(17, log2(gcd(2, n)))]` -/
def P437832743004557408.Spec : Prop :=
  ∀ n, (P437832743004557408.a n : ℤ) = A118510 (n + 1)

end A118510

/-! ## A118510.P1296080054964525769

`a(n-2)+18` with `a(0)=1, a(1)=18`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A118510

/-- `a(n-2)+18` -/
def P1296080054964525769.Spec : Prop :=
  ∀ n, (P1296080054964525769.a n : ℤ) = A118510 (n + 1)

theorem P1296080054964525769.correct : P1296080054964525769.Spec := by
  intro n
  simp only [A118510, Nat.add_sub_cancel]

end A118510

/-! ## A118510.P9109658326472742895

`∑[16*and(1, n)+1]`
-/

namespace A118510.P9109658326472742895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * Nat.land 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118510.P9109658326472742895

namespace A118510

/-- `∑[16*and(1, n)+1]` -/
def P9109658326472742895.Spec : Prop :=
  ∀ n, (P9109658326472742895.a n : ℤ) = A118510 (n + 1)

end A118510

/-! ## A118510.P593108896475916513

`∑[18-a(n-1)]` with `a(0)=1`
-/

namespace A118510.P593108896475916513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  18 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118510.P593108896475916513

namespace A118510

/-- `∑[18-a(n-1)]` -/
def P593108896475916513.Spec : Prop :=
  ∀ n, P593108896475916513.a n = A118510 (n + 1)

end A118510

/-! ## A118510.P15076300823970501606

`∑[9-8*(-1)^n]`
-/

namespace A118510.P15076300823970501606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - 8 * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118510.P15076300823970501606

namespace A118510

/-- `∑[9-8*(-1)^n]` -/
def P15076300823970501606.Spec : Prop :=
  ∀ n, P15076300823970501606.a n = A118510 (n + 1)

end A118510

/-! ## A118510.P12726045321383601235

`1-(a(n-1)-18*n)` with `a(0)=1`
-/

namespace A118510.P12726045321383601235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a (n - 1) - (18 * n : ℤ))

end

end A118510.P12726045321383601235

namespace A118510

/-- `1-(a(n-1)-18*n)` -/
def P12726045321383601235.Spec : Prop :=
  ∀ n, P12726045321383601235.a n = A118510 (n + 1)

end A118510

/-! ## A118510.P2349211125052637735

`Δ[4*or(1, n²)]+n+1`
-/

namespace A118510.P2349211125052637735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.lor 1 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 1 : ℤ)

end

end A118510.P2349211125052637735

namespace A118510

/-- `Δ[4*or(1, n²)]+n+1` -/
def P2349211125052637735.Spec : Prop :=
  ∀ n, P2349211125052637735.a n = A118510 (n + 1)

end A118510

/-! ## A118510.P319007831291446759

`Δ[and(-5, (2*n)²)]+n+1`
-/

namespace A118510.P319007831291446759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-5) ((2 * n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A118510.P319007831291446759

namespace A118510

/-- `Δ[and(-5, (2*n)²)]+n+1` -/
def P319007831291446759.Spec : Prop :=
  ∀ n, P319007831291446759.a n = A118510 (n + 1)

end A118510

/-! ## A118510.P13670224772426668115

`record[2*n+3-dr(n+2)!]`
-/

namespace A118510.P13670224772426668115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (3 - (Nat.factorial (SequenceMachineLib.digitalRoot (n + 2 : ℤ)) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118510.P13670224772426668115

namespace A118510

/-- `record[2*n+3-dr(n+2)!]` -/
def P13670224772426668115.Spec : Prop :=
  ∀ n, P13670224772426668115.a n = A118510 (n + 1)

end A118510

/-! ## A118510.P2412292299050517257

`record[n+3-dr(n+2)!+n]`
-/

namespace A118510.P2412292299050517257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - (Nat.factorial (SequenceMachineLib.digitalRoot (n + 2 : ℤ)) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118510.P2412292299050517257

namespace A118510

/-- `record[n+3-dr(n+2)!+n]` -/
def P2412292299050517257.Spec : Prop :=
  ∀ n, P2412292299050517257.a n = A118510 (n + 1)

end A118510

/-! ## A118510.P16992827889253296558

`2*∑[∑[ogf(8x/(1+x))]]+1+n`
-/

namespace A118510.P16992827889253296558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1 + (n : ℤ)

end

end A118510.P16992827889253296558

namespace A118510

/-- `2*∑[∑[ogf(8x/(1+x))]]+1+n` -/
def P16992827889253296558.Spec : Prop :=
  ∀ n, P16992827889253296558.a n = A118510 (n + 1)

end A118510

/-! ## A118510.P3660916745727527602

`Δ[xor(2, (2*n+1)*2*n)]+n-1`
-/

namespace A118510.P3660916745727527602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 ((2 * n + 1) * (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((n : ℤ) - 1)

end

end A118510.P3660916745727527602

namespace A118510

/-- `Δ[xor(2, (2*n+1)*2*n)]+n-1` -/
def P3660916745727527602.Spec : Prop :=
  ∀ n, P3660916745727527602.a n = A118510 (n + 1)

end A118510

/-! ## A118510.P4298489659679180859

`Δ[A195148(n)]-n`
-/

namespace A118510.P4298489659679180859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A118510.P4298489659679180859

namespace A118510

/-- `Δ[A195148(n)]-n` -/
def P4298489659679180859.Spec : Prop :=
  ∀ n, P4298489659679180859.a n = A118510 (n + 1)

theorem P4298489659679180859.correct : P4298489659679180859.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A118510, Nat.add_sub_cancel, A118510.P4298489659679180859.f1, A118510.P4298489659679180859.a, A118510.P1296080054964525769.a, A195148, A195148.P2399967165247152681.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A118510, Nat.add_sub_cancel, A118510.P4298489659679180859.f1, A118510.P4298489659679180859.a, A118510.P1296080054964525769.a, A195148, A195148.P2399967165247152681.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A118510

/-! ## A118510.P9845977960561458697

`A010690(n)+9*n`
-/

namespace A118510.P9845977960561458697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010690 n + (9 * n : ℤ)

end

end A118510.P9845977960561458697

namespace A118510

/-- `A010690(n)+9*n` -/
def P9845977960561458697.Spec : Prop :=
  ∀ n, P9845977960561458697.a n = A118510 (n + 1)

end A118510

/-! ## A118510.P15864864427473301220

`Δ[A195147(n)]+and(1, n)`
-/

namespace A118510.P15864864427473301220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.land 1 n : ℤ)

end

end A118510.P15864864427473301220

namespace A118510

/-- `Δ[A195147(n)]+and(1, n)` -/
def P15864864427473301220.Spec : Prop :=
  ∀ n, P15864864427473301220.a n = A118510 (n + 1)

end A118510

/-! ## A118510.P15480045133809815225

`∑[A084099(n)²²]+n`
-/

namespace A118510.P15480045133809815225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A084099 n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A118510.P15480045133809815225

namespace A118510

/-- `∑[A084099(n)²²]+n` -/
def P15480045133809815225.Spec : Prop :=
  ∀ n, P15480045133809815225.a n = A118510 (n + 1)

end A118510

/-! ## A118510.P15056504499431144040

`A322489(n+1)-xor(1, n)`
-/

namespace A118510.P15056504499431144040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322489 (n + 1) - (Nat.xor 1 n : ℤ)

end

end A118510.P15056504499431144040

namespace A118510

/-- `A322489(n+1)-xor(1, n)` -/
def P15056504499431144040.Spec : Prop :=
  ∀ n, P15056504499431144040.a n = A118510 (n + 1)

end A118510

/-! ## A118510.P12316119034819419200

`xor(2, A322490(n+1))-n`
-/

namespace A118510.P12316119034819419200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A322490 (n + 1)) - (n : ℤ)

end

end A118510.P12316119034819419200

namespace A118510

/-- `xor(2, A322490(n+1))-n` -/
def P12316119034819419200.Spec : Prop :=
  ∀ n, P12316119034819419200.a n = A118510 (n + 1)

end A118510

/-!
# A118512: Define sequence S_m by: initial term = m, reverse digits and add 1 to get next term. Entry shows S_11. This reaches a cycle of length 9 in 18 steps.

The programs for A118512, there is no canonical definition to state claims against.
-/

/-! ## A118512.P16610478792791186470

`A004086(a(n-1))+1` with `a(0)=11`
-/

namespace A118512.P16610478792791186470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  A004086 (a (n - 1)).toNat + 1

end

end A118512.P16610478792791186470

/-!
# A118513: Define sequence S_m by: initial term = m, reverse digits and add 1 to get next term. Entry shows S_13. This reaches a cycle of length 9 in 15 steps.

The programs for A118513, there is no canonical definition to state claims against.
-/

/-! ## A118513.P17596010634835244275

`A004086(a(n-1))+1` with `a(0)=13`
-/

namespace A118513.P17596010634835244275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  A004086 (a (n - 1)).toNat + 1

end

end A118513.P17596010634835244275

/-!
# A118517: Define sequence S_m by: initial term = m, reverse digits and add 3 to get next term. Entry shows S_1. This reaches a cycle of length 3 in 1 step.

The programs for A118517, the canonical program `A118517.P10134362105126784827` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118517 has offset 1).

The definition of A118517 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118517.P10134362105126784827

`dr(3*n)+1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A118517

/-- `dr(3*n)+1` -/
def P10134362105126784827.Spec : Prop :=
  ∀ n, (P10134362105126784827.a n : ℤ) = A118517 (n + 1)

theorem P10134362105126784827.correct : P10134362105126784827.Spec := by
  intro n
  simp only [A118517, Nat.add_sub_cancel]

end A118517

/-!
# A118518: Define sequence S_m by: initial term = m, reverse digits and add 3 to get next term. Entry shows S_2. This reaches a cycle of length 6 in 3 steps.

The programs for A118518, there is no canonical definition to state claims against.
-/

/-! ## A118518.P11176474530101173537

`A004086(a(n-1))+3` with `a(0)=2`
-/

namespace A118518.P11176474530101173537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A004086 (a (n - 1)).toNat + 3

end

end A118518.P11176474530101173537

/-!
# A118519: Define sequence S_m by: initial term = m, reverse digits and add 3 to get next term. Entry shows S_3. This reaches a cycle of length 6 in 3 steps.

The programs for A118519, there is no canonical definition to state claims against.
-/

/-! ## A118519.P273355092872243078

`A004086(a(n-1))+3` with `a(0)=3`
-/

namespace A118519.P273355092872243078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A004086 (a (n - 1)).toNat + 3

end

end A118519.P273355092872243078

/-!
# A118520: Define sequence S_m by: initial term = m, reverse digits and add 3 to get next term. Entry shows S_5. This reaches a cycle of length 6 in 2 steps.

The programs for A118520, there is no canonical definition to state claims against.
-/

/-! ## A118520.P7057513874276716822

`A118518(n+2)`
-/

namespace A118520.P7057513874276716822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118518 (n + 2)

end

end A118520.P7057513874276716822

/-!
# A118521: Define sequence S_m by: initial term = m, reverse digits and add 3 to get next term. Entry shows S_6. This reaches a cycle of length 6 in 2 steps.

The programs for A118521, there is no canonical definition to state claims against.
-/

/-! ## A118521.P7275794091909114795

`A118519(n+2)`
-/

namespace A118521.P7275794091909114795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118519 (n + 2)

end

end A118521.P7275794091909114795

/-!
# A118523: Records in A118522.

The programs for A118523, there is no canonical definition to state claims against.
-/

/-! ## A118523.P14963093242623388206

`A118522(A118524(n+1))`
-/

namespace A118523.P14963093242623388206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118522 (A118524 (n + 1)).toNat

end

end A118523.P14963093242623388206

/-!
# A118524: Where records occur in A118522.

The programs for A118524, there is no canonical definition to state claims against.
-/

/-! ## A118524.P3277689919076993827

`A133288(a(n-1))-n` with `a(0)=1, a(1)=2, a(2)=13, a(3)=23`
-/

namespace A118524.P3277689919076993827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 13, 23] fun n a =>
  A133288 (a (n - 1)).toNat - (n : ℤ)

end

end A118524.P3277689919076993827

/-!
# A118525: Start with 1 and repeatedly reverse the digits and add 6 to get the next term.

The programs for A118525, there is no canonical definition to state claims against.
-/

/-! ## A118525.P6268669256060010902

`A004086(a(n-1))+6` with `a(0)=1`
-/

namespace A118525.P6268669256060010902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 6

end

end A118525.P6268669256060010902

/-!
# A118526: Start with 1 and repeatedly reverse the digits and add 7 to get the next term.

The programs for A118526, there is no canonical definition to state claims against.
-/

/-! ## A118526.P10084690062351355387

`A004086(a(n-1))+7` with `a(0)=1`
-/

namespace A118526.P10084690062351355387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 7

end

end A118526.P10084690062351355387

/-!
# A118527: Start with 1 and repeatedly reverse the digits and add 8 to get the next term.

The programs for A118527, there is no canonical definition to state claims against.
-/

/-! ## A118527.P1628697253966250778

`A004086(a(n-1))+8` with `a(0)=1`
-/

namespace A118527.P1628697253966250778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 8

end

end A118527.P1628697253966250778

/-!
# A118528: Start with 1 and repeatedly reverse the digits and add 11 to get the next term.

The programs for A118528, there is no canonical definition to state claims against.
-/

/-! ## A118528.P5639725368045845435

`A004086(a(n-1))+11` with `a(0)=1`
-/

namespace A118528.P5639725368045845435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 11

end

end A118528.P5639725368045845435

/-!
# A118529: Start with 1 and repeatedly reverse the digits and add 12 to get the next term.

The programs for A118529, there is no canonical definition to state claims against.
-/

/-! ## A118529.P8406921928397327697

`A004086(a(n-1))+12` with `a(0)=1`
-/

namespace A118529.P8406921928397327697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 12

end

end A118529.P8406921928397327697

/-!
# A118530: Start with 1 and repeatedly reverse the digits and add 13 to get the next term.

The programs for A118530, there is no canonical definition to state claims against.
-/

/-! ## A118530.P6968838038013532036

`A004086(a(n-1))+13` with `a(0)=1`
-/

namespace A118530.P6968838038013532036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 13

end

end A118530.P6968838038013532036

/-!
# A118531: Start with 1 and repeatedly reverse the digits and add 14 to get the next term.

The programs for A118531, there is no canonical definition to state claims against.
-/

/-! ## A118531.P881751955824524776

`A004086(a(n-1))+14` with `a(0)=1`
-/

namespace A118531.P881751955824524776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 14

end

end A118531.P881751955824524776

/-!
# A118532: Start with 1 and repeatedly reverse the digits and add 15 to get the next term.

The programs for A118532, there is no canonical definition to state claims against.
-/

/-! ## A118532.P12786935362354240294

`A004086(a(n-1))+15` with `a(0)=1`
-/

namespace A118532.P12786935362354240294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 15

end

end A118532.P12786935362354240294

/-! ## A118532.P3486455933894987406

`A118862(A126019(n))`
-/

namespace A118532.P3486455933894987406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118862 (A126019 n).toNat

end

end A118532.P3486455933894987406

/-!
# A118533: Start with 1 and repeatedly reverse the digits and add 16 to get the next term.

The programs for A118533, there is no canonical definition to state claims against.
-/

/-! ## A118533.P7450636474870963443

`A004086(a(n-1))+16` with `a(0)=1`
-/

namespace A118533.P7450636474870963443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 16

end

end A118533.P7450636474870963443

/-!
# A118534: a(n) is the largest k such that prime(n+1) = prime(n) + (prime(n) mod k), or 0 if no such k exists.

The programs for A118534, the canonical program `A118534.P17892582238153728483` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118534 has offset 1).

The definition of A118534 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118534.P5974994791111761212

`A117078(n+1)*A117563(n+1)`
-/

namespace A118534.P5974994791111761212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117078 (n + 1) * A117563 (n + 1)

end

end A118534.P5974994791111761212

namespace A118534

/-- `A117078(n+1)*A117563(n+1)` -/
def P5974994791111761212.Spec : Prop :=
  ∀ n, P5974994791111761212.a n = A118534 (n + 1)

end A118534

/-! ## A118534.P15141860093701223815

`lcm(A062234(n+1), A117078(n+1))`
-/

namespace A118534.P15141860093701223815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062234 (n + 1)) (A117078 (n + 1))

end

end A118534.P15141860093701223815

namespace A118534

/-- `lcm(A062234(n+1), A117078(n+1))` -/
def P15141860093701223815.Spec : Prop :=
  ∀ n, (P15141860093701223815.a n : ℤ) = A118534 (n + 1)

end A118534

/-! ## A118534.P2249992974358178948

`ceil(A118144(n+1)/(n+1))*A062234(n+1)`
-/

namespace A118534.P2249992974358178948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A118144 (n + 1) : ℚ) / (n + 1 : ℚ)⌉ * A062234 (n + 1)

end

end A118534.P2249992974358178948

namespace A118534

/-- `ceil(A118144(n+1)/(n+1))*A062234(n+1)` -/
def P2249992974358178948.Spec : Prop :=
  ∀ n, P2249992974358178948.a n = A118534 (n + 1)

end A118534

/-! ## A118534.P17892582238153728483

`A062234(n+1)%A005722(A147965(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A118534

/-- `A062234(n+1)%A005722(A147965(n+1))` -/
def P17892582238153728483.Spec : Prop :=
  ∀ n, P17892582238153728483.a n = A118534 (n + 1)

theorem P17892582238153728483.correct : P17892582238153728483.Spec := by
  intro n
  simp only [A118534, Nat.add_sub_cancel]

end A118534

/-! ## A118534.P7404561341299041608

`ceil(A117563(n+1)/A062234(n+1))*A062234(n+1)`
-/

namespace A118534.P7404561341299041608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A117563 (n + 1) : ℚ) / (A062234 (n + 1) : ℚ)⌉ * A062234 (n + 1)

end

end A118534.P7404561341299041608

namespace A118534

/-- `ceil(A117563(n+1)/A062234(n+1))*A062234(n+1)` -/
def P7404561341299041608.Spec : Prop :=
  ∀ n, P7404561341299041608.a n = A118534 (n + 1)

end A118534

/-! ## A118534.P10969215982571957090

`(A000040(n+1)-A001223(n+1)%(n+1))%A000040(n+1)`
-/

namespace A118534.P10969215982571957090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) - Int.tmod (A001223 (n + 1)) (n + 1 : ℤ)) (A000040 (n + 1))

end

end A118534.P10969215982571957090

namespace A118534

/-- `(A000040(n+1)-A001223(n+1)%(n+1))%A000040(n+1)` -/
def P10969215982571957090.Spec : Prop :=
  ∀ n, P10969215982571957090.a n = A118534 (n + 1)

end A118534

/-! ## A118534.P7007152620364919321

`A062234(n+1)%A195586(n)`
-/

namespace A118534.P7007152620364919321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062234 (n + 1)) (A195586 n)

end

end A118534.P7007152620364919321

namespace A118534

/-- `A062234(n+1)%A195586(n)` -/
def P7007152620364919321.Spec : Prop :=
  ∀ n, P7007152620364919321.a n = A118534 (n + 1)

end A118534

/-! ## A118534.P1397015079890160321

`A006530(A005250(n+2))%2*A062234(n+1)`
-/

namespace A118534.P1397015079890160321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A005250 (n + 2)).toNat) 2 * A062234 (n + 1)

end

end A118534.P1397015079890160321

namespace A118534

/-- `A006530(A005250(n+2))%2*A062234(n+1)` -/
def P1397015079890160321.Spec : Prop :=
  ∀ n, P1397015079890160321.a n = A118534 (n + 1)

end A118534

/-!
# A118535: Start with 1 and repeatedly reverse the digits and add 20 to get the next term.

The programs for A118535, there is no canonical definition to state claims against.
-/

/-! ## A118535.P9831693895647323663

`A004086(a(n-1))+20` with `a(0)=1`
-/

namespace A118535.P9831693895647323663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 20

end

end A118535.P9831693895647323663

/-! ## A118535.P4164442369525687936

`floor(A056964(a(n-1))+10-a(n-1))+10` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A118535.P4164442369525687936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056964 (a (n - 1)).toNat + (10 - a (n - 1)) + 10

end

end A118535.P4164442369525687936

/-! ## A118535.P8936019507432148242

`A010691(2*n+3)+A135020(2*a(n-1))+10` with `a(0)=1`
-/

namespace A118535.P8936019507432148242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010691 (2 * n + 3) + (A135020 (2 * a (n - 1)).toNat + 10)

end

end A118535.P8936019507432148242

/-!
# A118536: Start with 1 and repeatedly reverse the digits and add 36 to get the next term.

The programs for A118536, there is no canonical definition to state claims against.
-/

/-! ## A118536.P13375558327994054708

`A004086(a(n-1))+36` with `a(0)=1`
-/

namespace A118536.P13375558327994054708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 36

end

end A118536.P13375558327994054708

/-!
# A118537: Number of functions f: {1, 2, ..., n} --> {1, 2, ..., n} such that f(1) != f(2), f(2) != f(3), ..., f(n-1) != f(n), f(n) != f(1).

The programs for A118537, the canonical program `A118537.P16355521541587334535` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118537 has offset 2).

The definition of A118537 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A118537.P16355521541587334535

`(n+1)^(n+2)+(-1)^(n+2)*(n+1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A118537

/-- `(n+1)^(n+2)+(-1)^(n+2)*(n+1)` -/
def P16355521541587334535.Spec : Prop :=
  ∀ n, P16355521541587334535.a n = A118537 (n + 2)

theorem P16355521541587334535.correct : P16355521541587334535.Spec := by
  intro n
  simp only [A118537, Nat.add_sub_cancel]

end A118537

/-! ## A118537.P16535621876636337706

`lcm(n+1, 1-(-(n+1))^(n+1))`
-/

namespace A118537.P16535621876636337706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (1 - (-(n + 1 : ℤ)) ^ (n + 1))

end

end A118537.P16535621876636337706

namespace A118537

/-- `lcm(n+1, 1-(-(n+1))^(n+1))` -/
def P16535621876636337706.Spec : Prop :=
  ∀ n, (P16535621876636337706.a n : ℤ) = A118537 (n + 2)

end A118537

/-! ## A118537.P6377417289172897084

`(n+2)*A185634(n+2)`
-/

namespace A118537.P6377417289172897084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A185634 (n + 2)

end

end A118537.P6377417289172897084

namespace A118537

/-- `(n+2)*A185634(n+2)` -/
def P6377417289172897084.Spec : Prop :=
  ∀ n, P6377417289172897084.a n = A118537 (n + 2)

end A118537

/-! ## A118537.P6664902183728037522

`A106512(A001844(n+1))`
-/

namespace A118537.P6664902183728037522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106512 (A001844 (n + 1)).toNat

end

end A118537.P6664902183728037522

namespace A118537

/-- `A106512(A001844(n+1))` -/
def P6664902183728037522.Spec : Prop :=
  ∀ n, P6664902183728037522.a n = A118537 (n + 2)

end A118537

/-! ## A118537.P3549277785697467735

`A106512(A099776(n+1))`
-/

namespace A118537.P3549277785697467735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106512 (A099776 (n + 1)).toNat

end

end A118537.P3549277785697467735

namespace A118537

/-- `A106512(A099776(n+1))` -/
def P3549277785697467735.Spec : Prop :=
  ∀ n, P3549277785697467735.a n = A118537 (n + 2)

end A118537

/-!
# A118538: a(n) = A000040(n+1) - 6.

The programs for A118538, the canonical program `A118538.P16184586288289674409` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118538 has offset 1).

The definition of A118538 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+2)-6` (program `A118538.P16184586288289674409`, by `A118538.P16184586288289674409.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A118538.P16184586288289674409

`A000040(n+2)-6`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A118538

/-- `A000040(n+2)-6` -/
def P16184586288289674409.Spec : Prop :=
  ∀ n, P16184586288289674409.a n = A118538 (n + 1)

theorem P16184586288289674409.correct : P16184586288289674409.Spec := by
  intro n
  simp only [A118538, Nat.add_sub_cancel]

end A118538

/-! ## A118538.P3558898500664207060

`p?[2*n+1]-6`
-/

namespace A118538.P3558898500664207060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 6

end

end A118538.P3558898500664207060

namespace A118538

/-- `p?[2*n+1]-6` -/
def P3558898500664207060.Spec : Prop :=
  ∀ n, P3558898500664207060.a n = A118538 (n + 1)

end A118538

/-! ## A118538.P3335216403293279874

`A154115(n+1)-3`
-/

namespace A118538.P3335216403293279874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154115 (n + 1) - 3

end

end A118538.P3335216403293279874

namespace A118538

/-- `A154115(n+1)-3` -/
def P3335216403293279874.Spec : Prop :=
  ∀ n, P3335216403293279874.a n = A118538 (n + 1)

theorem P3335216403293279874.correct : P3335216403293279874.Spec := by
  intro n
  simp only [A118538, Nat.add_sub_cancel, A118538.P3335216403293279874.a, A118538.P16184586288289674409.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A154115, A154115.P220062109648616098.a, A086801, A086801.P7118698000878110641.f1, A086801.P7118698000878110641.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A118538

/-! ## A118538.P11091270332212881079

`A065091(n+1)-6`
-/

namespace A118538.P11091270332212881079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - 6

end

end A118538.P11091270332212881079

namespace A118538

/-- `A065091(n+1)-6` -/
def P11091270332212881079.Spec : Prop :=
  ∀ n, P11091270332212881079.a n = A118538 (n + 1)

end A118538

/-! ## A118538.P8119637102315355014

`A048974(n+1)-8`
-/

namespace A118538.P8119637102315355014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 1) - 8

end

end A118538.P8119637102315355014

namespace A118538

/-- `A048974(n+1)-8` -/
def P8119637102315355014.Spec : Prop :=
  ∀ n, P8119637102315355014.a n = A118538 (n + 1)

theorem P8119637102315355014.correct : P8119637102315355014.Spec := by
  intro n
  simp only [A118538, Nat.add_sub_cancel, A118538.P8119637102315355014.a, A118538.P16184586288289674409.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A048974, A048974.P12620924037349992420.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A118538

/-! ## A118538.P13628452226986851254

`A055670(n+2)-7`
-/

namespace A118538.P13628452226986851254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 2) - 7

end

end A118538.P13628452226986851254

namespace A118538

/-- `A055670(n+2)-7` -/
def P13628452226986851254.Spec : Prop :=
  ∀ n, P13628452226986851254.a n = A118538 (n + 1)

end A118538

/-! ## A118538.P13878028630822616108

`∑[A001223(n+1)]-4`
-/

namespace A118538.P13878028630822616108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A118538.P13878028630822616108

namespace A118538

/-- `∑[A001223(n+1)]-4` -/
def P13878028630822616108.Spec : Prop :=
  ∀ n, P13878028630822616108.a n = A118538 (n + 1)

end A118538

/-! ## A118538.P12998247124744887804

`2*A067076(n+1)-3`
-/

namespace A118538.P12998247124744887804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067076 (n + 1) - 3

end

end A118538.P12998247124744887804

namespace A118538

/-- `2*A067076(n+1)-3` -/
def P12998247124744887804.Spec : Prop :=
  ∀ n, P12998247124744887804.a n = A118538 (n + 1)

end A118538

/-! ## A118538.P1728363416028908683

`2*A005097(n+1)-5`
-/

namespace A118538.P1728363416028908683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005097 (n + 1) - 5

end

end A118538.P1728363416028908683

namespace A118538

/-- `2*A005097(n+1)-5` -/
def P1728363416028908683.Spec : Prop :=
  ∀ n, P1728363416028908683.a n = A118538 (n + 1)

end A118538

/-! ## A118538.P1595231477903347065

`A014690(n+1)-A020719(n)`
-/

namespace A118538.P1595231477903347065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014690 (n + 1) - A020719 n

end

end A118538.P1595231477903347065

namespace A118538

/-- `A014690(n+1)-A020719(n)` -/
def P1595231477903347065.Spec : Prop :=
  ∀ n, P1595231477903347065.a n = A118538 (n + 1)

end A118538

/-! ## A118538.P9027856926836132387

`A001043(n+1)-A139049(n+1)`
-/

namespace A118538.P9027856926836132387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - A139049 (n + 1)

end

end A118538.P9027856926836132387

namespace A118538

/-- `A001043(n+1)-A139049(n+1)` -/
def P9027856926836132387.Spec : Prop :=
  ∀ n, P9027856926836132387.a n = A118538 (n + 1)

end A118538

/-! ## A118538.P10738647338311215452

`A140777(n+1)-A124115(n+1)`
-/

namespace A118538.P10738647338311215452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140777 (n + 1) - A124115 (n + 1)

end

end A118538.P10738647338311215452

namespace A118538

/-- `A140777(n+1)-A124115(n+1)` -/
def P10738647338311215452.Spec : Prop :=
  ∀ n, P10738647338311215452.a n = A118538 (n + 1)

theorem P10738647338311215452.correct : P10738647338311215452.Spec := by
  intro n
  simp only [A118538, Nat.add_sub_cancel, A118538.P10738647338311215452.a, A118538.P16184586288289674409.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A124115, A124115.P17459452921434440808.a, A140777, A140777.P17195144800070271988.a, A040976, A040976.P11599754272797435513.a, A062234, A062234.P8592873382335253705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A118538

/-! ## A118538.P8346595362824745115

`A092949(n+1)-A175223(n+1)`
-/

namespace A118538.P8346595362824745115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092949 (n + 1) - A175223 (n + 1)

end

end A118538.P8346595362824745115

namespace A118538

/-- `A092949(n+1)-A175223(n+1)` -/
def P8346595362824745115.Spec : Prop :=
  ∀ n, P8346595362824745115.a n = A118538 (n + 1)

end A118538

/-! ## A118538.P2341492650527225091

`A245685(n+1)-A097480(n+1)`
-/

namespace A118538.P2341492650527225091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245685 (n + 1) - A097480 (n + 1)

end

end A118538.P2341492650527225091

namespace A118538

/-- `A245685(n+1)-A097480(n+1)` -/
def P2341492650527225091.Spec : Prop :=
  ∀ n, P2341492650527225091.a n = A118538 (n + 1)

end A118538

/-! ## A118538.P7606106732820787144

`A168565(n+2)-A097338(n+1)`
-/

namespace A118538.P7606106732820787144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168565 (n + 2) - A097338 (n + 1)

end

end A118538.P7606106732820787144

namespace A118538

/-- `A168565(n+2)-A097338(n+1)` -/
def P7606106732820787144.Spec : Prop :=
  ∀ n, P7606106732820787144.a n = A118538 (n + 1)

end A118538

/-! ## A118538.P15492342363536513808

`A179893(n+2)-A097069(n+1)`
-/

namespace A118538.P15492342363536513808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179893 (n + 2) - A097069 (n + 1)

end

end A118538.P15492342363536513808

namespace A118538

/-- `A179893(n+2)-A097069(n+1)` -/
def P15492342363536513808.Spec : Prop :=
  ∀ n, P15492342363536513808.a n = A118538 (n + 1)

end A118538

/-! ## A118538.P18405003522556392180

`A245685(n+1)-(A097363(n+1)+1)`
-/

namespace A118538.P18405003522556392180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245685 (n + 1) - (A097363 (n + 1) + 1)

end

end A118538.P18405003522556392180

namespace A118538

/-- `A245685(n+1)-(A097363(n+1)+1)` -/
def P18405003522556392180.Spec : Prop :=
  ∀ n, P18405003522556392180.a n = A118538 (n + 1)

end A118538

/-! ## A118538.P2124742543767638467

`A001043(n+1)+2-A175224(n+1)`
-/

namespace A118538.P2124742543767638467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + (2 - A175224 (n + 1))

end

end A118538.P2124742543767638467

namespace A118538

/-- `A001043(n+1)+2-A175224(n+1)` -/
def P2124742543767638467.Spec : Prop :=
  ∀ n, P2124742543767638467.a n = A118538 (n + 1)

end A118538

/-! ## A118538.P2106024229943282602

`A001043(n+1)-(A175221(n+1)+2)`
-/

namespace A118538.P2106024229943282602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - (A175221 (n + 1) + 2)

end

end A118538.P2106024229943282602

namespace A118538

/-- `A001043(n+1)-(A175221(n+1)+2)` -/
def P2106024229943282602.Spec : Prop :=
  ∀ n, P2106024229943282602.a n = A118538 (n + 1)

theorem P2106024229943282602.correct : P2106024229943282602.Spec := by
  intro n
  simp only [A118538, Nat.add_sub_cancel, A118538.P2106024229943282602.a, A118538.P16184586288289674409.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A175221, A175221.P11607856886314794758.a, A052147, A052147.P6151996953021184291.f1, A052147.P6151996953021184291.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A118538

/-! ## A118538.P893790824245606101

`2*A086801(n+1)-A062234(n+1)`
-/

namespace A118538.P893790824245606101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086801 (n + 1) - A062234 (n + 1)

end

end A118538.P893790824245606101

namespace A118538

/-- `2*A086801(n+1)-A062234(n+1)` -/
def P893790824245606101.Spec : Prop :=
  ∀ n, P893790824245606101.a n = A118538 (n + 1)

theorem P893790824245606101.correct : P893790824245606101.Spec := by
  intro n
  simp only [A118538, Nat.add_sub_cancel, A118538.P893790824245606101.a, A118538.P16184586288289674409.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A062234, A062234.P8592873382335253705.a, A086801, A086801.P7118698000878110641.f1, A086801.P7118698000878110641.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A118538

/-!
# A118539: Adjacent generalized Fermat primes.

The programs for A118539, there is no canonical definition to state claims against.
-/

/-! ## A118539.P7572309722434206464

`A217993(n+1)+1`
-/

namespace A118539.P7572309722434206464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217993 (n + 1) + 1

end

end A118539.P7572309722434206464

/-! ## A118539.P1269741423056690399

`or(1, A217993(1-(n-2*n)))`
-/

namespace A118539.P1269741423056690399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A217993 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat)

end

end A118539.P1269741423056690399

/-! ## A118539.P529100151228636767

`xor(1, A217993(A005555(n)))`
-/

namespace A118539.P529100151228636767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A217993 (A005555 n).toNat)

end

end A118539.P529100151228636767

/-! ## A118539.P16582561405255251454

`xor(1, A217993(A291769(n)))`
-/

namespace A118539.P16582561405255251454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A217993 (A291769 n).toNat)

end

end A118539.P16582561405255251454

/-! ## A118539.P10427407382103369777

`2-(A117494(A007918(n))-A217993(A005555(n)))`
-/

namespace A118539.P10427407382103369777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A117494 (A007918 n).toNat - A217993 (A005555 n).toNat)

end

end A118539.P10427407382103369777

/-!
# A118541: Product of digits of prime factors of n, with multiplicity.

The programs for A118541, the canonical program `A118541.P11040726399635280767` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118541 has offset 0).

The definition of A118541 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118541.P1133034539464252345

`∏{digits}[A049201(n), #]`
-/

namespace A118541.P1133034539464252345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049201 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A118541.P1133034539464252345

namespace A118541

/-- `∏{digits}[A049201(n), #]` -/
def P1133034539464252345.Spec : Prop :=
  ∀ n, (P1133034539464252345.a n : ℤ) = A118541 n

end A118541

/-! ## A118541.P11040726399635280767

`∏{d}[n, A007954(A014963(#))]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A118541

/-- `∏{d}[n, A007954(A014963(#))]` -/
def P11040726399635280767.Spec : Prop :=
  ∀ n, P11040726399635280767.a n = A118541 n

theorem P11040726399635280767.correct : P11040726399635280767.Spec := by
  intro n
  simp only [A118541]

end A118541

/-! ## A118541.P11936871063682749377

`∏{digits}[A037276(A028310(n)), #]`
-/

namespace A118541.P11936871063682749377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A118541.P11936871063682749377

namespace A118541

/-- `∏{digits}[A037276(A028310(n)), #]` -/
def P11936871063682749377.Spec : Prop :=
  ∀ n, (P11936871063682749377.a n : ℤ) = A118541 n

end A118541

/-! ## A118541.P3608862760504803640

`∏{digits}[A037276(A000007(n)+n), #]`
-/

namespace A118541.P3608862760504803640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A118541.P3608862760504803640

namespace A118541

/-- `∏{digits}[A037276(A000007(n)+n), #]` -/
def P3608862760504803640.Spec : Prop :=
  ∀ n, (P3608862760504803640.a n : ℤ) = A118541 n

end A118541

/-! ## A118541.P9981151653857190504

`∏{digits}[A073646(A000007(n)+n), #]`
-/

namespace A118541.P9981151653857190504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073646 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A118541.P9981151653857190504

namespace A118541

/-- `∏{digits}[A073646(A000007(n)+n), #]` -/
def P9981151653857190504.Spec : Prop :=
  ∀ n, (P9981151653857190504.a n : ℤ) = A118541 n

end A118541

/-! ## A118541.P2836526983424625133

`∏{digits}[A037276(xor(n, A000007(n))), #]`
-/

namespace A118541.P2836526983424625133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A118541.P2836526983424625133

namespace A118541

/-- `∏{digits}[A037276(xor(n, A000007(n))), #]` -/
def P2836526983424625133.Spec : Prop :=
  ∀ n, (P2836526983424625133.a n : ℤ) = A118541 n

end A118541

/-! ## A118541.P16004854370593726728

`∏{digits}[A037276(A137734(n²)), #]`
-/

namespace A118541.P16004854370593726728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (A137734 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A118541.P16004854370593726728

namespace A118541

/-- `∏{digits}[A037276(A137734(n²)), #]` -/
def P16004854370593726728.Spec : Prop :=
  ∀ n, (P16004854370593726728.a n : ℤ) = A118541 n

end A118541

/-! ## A118541.P12486528475996808580

`∑{d}[A187844(A049201(n)), A000010(#)]`
-/

namespace A118541.P12486528475996808580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187844 (A049201 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A118541.P12486528475996808580

namespace A118541

/-- `∑{d}[A187844(A049201(n)), A000010(#)]` -/
def P12486528475996808580.Spec : Prop :=
  ∀ n, P12486528475996808580.a n = A118541 n

end A118541

/-! ## A118541.P2210452602490735864

`abs(A187844(A049201(n))%A000051(n))`
-/

namespace A118541.P2210452602490735864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A187844 (A049201 n).toNat) (A000051 n)|

end

end A118541.P2210452602490735864

namespace A118541

/-- `abs(A187844(A049201(n))%A000051(n))` -/
def P2210452602490735864.Spec : Prop :=
  ∀ n, P2210452602490735864.a n = A118541 n

end A118541

/-!
# A118542: Number of nonisomorphic groupoids with <= n elements.

The programs for A118542, there is no canonical definition to state claims against.
-/

/-! ## A118542.P6943616711036033518

`∑[A001329(n)]`
-/

namespace A118542.P6943616711036033518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118542.P6943616711036033518

/-! ## A118542.P14136983740497041058

`∑[A079183(A028310(n))+A001425(n)]`
-/

namespace A118542.P14136983740497041058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079183 (A028310 n).toNat + A001425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118542.P14136983740497041058

/-! ## A118542.P17295067480534420031

`∑[A079183(A051801(n))+A001425(n)]`
-/

namespace A118542.P17295067480534420031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079183 (A051801 n).toNat + A001425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118542.P17295067480534420031

/-! ## A118542.P10136104482393742727

`∑[A079173(A028310(n))+A027851(n)]`
-/

namespace A118542.P10136104482393742727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079173 (A028310 n).toNat + A027851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118542.P10136104482393742727

/-!
# A118543: Start with 1 and repeatedly reverse the digits and add 25 to get the next term.

The programs for A118543, there is no canonical definition to state claims against.
-/

/-! ## A118543.P2423497260423407643

`A004086(a(n-1))+25` with `a(0)=1`
-/

namespace A118543.P2423497260423407643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 25

end

end A118543.P2423497260423407643

/-!
# A118544: Number of subsets A of {1,2,...,n} with |A+A| = |A-A|.

The programs for A118544, there is no canonical definition to state claims against.
-/

/-! ## A118544.P3417139330065204036

`A004277(A000079(n))-A222808(n+1)`
-/

namespace A118544.P3417139330065204036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A000079 n).toNat - A222808 (n + 1)

end

end A118544.P3417139330065204036

/-! ## A118544.P8918621344663283694

`A004275(A000079(n)+1)-A222808(n+1)`
-/

namespace A118544.P8918621344663283694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A000079 n + 1).toNat - A222808 (n + 1)

end

end A118544.P8918621344663283694

/-! ## A118544.P9049638360217806982

`A297043(n+1)+A005843(A000079(n))-A222808(n+1)`
-/

namespace A118544.P9049638360217806982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297043 (n + 1) + (A005843 (A000079 n).toNat - A222808 (n + 1))

end

end A118544.P9049638360217806982

/-! ## A118544.P7113265074542091339

`A065621(2^(n+1))-A222808(n+1)`
-/

namespace A118544.P7113265074542091339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065621 (2 ^ (n + 1)) - A222808 (n + 1)

end

end A118544.P7113265074542091339

/-! ## A118544.P296973717158460613

`A014681(A126646(n))-A222808(n+1)`
-/

namespace A118544.P296973717158460613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A126646 n).toNat - A222808 (n + 1)

end

end A118544.P296973717158460613

/-!
# A118545: Cubes for which the product of the digits is also a cube.

The programs for A118545, there is no canonical definition to state claims against.
-/

/-! ## A118545.P12050763597363114058

`A086429(A007931(n+1))^3`
-/

namespace A118545.P12050763597363114058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086429 (A007931 (n + 1)).toNat ^ 3

end

end A118545.P12050763597363114058

/-! ## A118545.P9756833643917674422

`lt[A000040(n+1), A018870(n+1)]^3`
-/

namespace A118545.P9756833643917674422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018870 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 3

end

end A118545.P9756833643917674422

/-!
# A118546: A symmetrical triangle of coefficient weights: A117662 :f(n)=n*(n - 1)*(n - 2)*(n + 3)/12; t(n,m)=f(n - m + 1)*f(m + 1).

The programs for A118546, there is no canonical definition to state claims against.
-/

/-! ## A118546.P9067365658935541005

`A005701(A002262(n))*A005701(A025581(n))`
-/

namespace A118546.P9067365658935541005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005701 (A002262 n).toNat * A005701 (A025581 n).toNat

end

end A118546.P9067365658935541005

/-!
# A118547: Squares which are divisible by the sum of their digits.

The programs for A118547, there is no canonical definition to state claims against.
-/

/-! ## A118547.P17447554206183710633

`∩[A098121(n+1), n²]`
-/

namespace A118547.P17447554206183710633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098121 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A118547.P17447554206183710633

/-! ## A118547.P3214761931888259296

`A000290(A385656(n+1))`
-/

namespace A118547.P3214761931888259296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A385656 (n + 1)).toNat

end

end A118547.P3214761931888259296

/-! ## A118547.P7012317463803804098

`∩[A000290(n), A098121(n+1)]`
-/

namespace A118547.P7012317463803804098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118547.P7012317463803804098

/-! ## A118547.P12222834237195218095

`∩[A034793(n+1), A098121(n+1)]`
-/

namespace A118547.P12222834237195218095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118547.P12222834237195218095

/-! ## A118547.P8549439647806338770

`∩[A181385(n), A098121(n+1)]`
-/

namespace A118547.P8549439647806338770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118547.P8549439647806338770

/-! ## A118547.P10342519146946835048

`∩[A087811(n+1), A098121(n+1)]`
-/

namespace A118547.P10342519146946835048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118547.P10342519146946835048

/-! ## A118547.P4490170888627928885

`∩[A146994(n+1), A098121(n+1)]`
-/

namespace A118547.P4490170888627928885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118547.P4490170888627928885

/-! ## A118547.P4346064666472099670

`∩[A182531(n+1), A098121(n+1)]`
-/

namespace A118547.P4346064666472099670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118547.P4346064666472099670

/-! ## A118547.P312324285866396416

`∩[A046870(n+1), A098121(n+1)]`
-/

namespace A118547.P312324285866396416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118547.P312324285866396416

/-! ## A118547.P4482941246677780745

`∩[A020487(n+1), A098121(n+1)]`
-/

namespace A118547.P4482941246677780745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118547.P4482941246677780745

/-! ## A118547.P2759322712780428148

`∩[A005214(n+1), A098121(n+1)]`
-/

namespace A118547.P2759322712780428148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118547.P2759322712780428148

/-! ## A118547.P4224048824783758724

`∩[A008740(n), A098121(n+1)]`
-/

namespace A118547.P4224048824783758724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118547.P4224048824783758724

/-! ## A118547.P4270543924817968444

`∩[A274583(n), A098121(n+1)]`
-/

namespace A118547.P4270543924817968444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274583 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118547.P4270543924817968444

/-! ## A118547.P10703487230887579884

`∩[A330879(n+1), A098121(n+1)]`
-/

namespace A118547.P10703487230887579884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118547.P10703487230887579884

/-! ## A118547.P8268213589603727852

`∩[A143145(n+1), A098121(n+1)]`
-/

namespace A118547.P8268213589603727852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118547.P8268213589603727852

/-! ## A118547.P3522227458440715768

`∩[A034705(n+1), A098121(n+1)]`
-/

namespace A118547.P3522227458440715768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118547.P3522227458440715768

/-! ## A118547.P11347523924893225446

`∩[A155570(n+1), A098121(n+1)]`
-/

namespace A118547.P11347523924893225446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118547.P11347523924893225446

/-!
# A118548: Squares which are divisible by the product of their digits.

The programs for A118548, there is no canonical definition to state claims against.
-/

/-! ## A118548.P3815384807799333403

`∩[A007602(n+1), A204503(n+1)]`
-/

namespace A118548.P3815384807799333403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118548.P3815384807799333403

/-! ## A118548.P10348041126928249831

`∩[A007602(n+1), A239213(n+1)]`
-/

namespace A118548.P10348041126928249831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118548.P10348041126928249831

/-! ## A118548.P602525036561182025

`∩[A007602(n+1), A346537(n+1)]`
-/

namespace A118548.P602525036561182025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118548.P602525036561182025

/-! ## A118548.P2507479837820215758

`∩[A180484(n+1), A346537(n+1)]`
-/

namespace A118548.P2507479837820215758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118548.P2507479837820215758

/-! ## A118548.P18090245966182403929

`∩[A007602(n+1), A052041(n+1)]`
-/

namespace A118548.P18090245966182403929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118548.P18090245966182403929

/-!
# A118549: Numbers beginning with a vowel in Dutch.

The programs for A118549, there is no canonical definition to state claims against.
-/

/-! ## A118549.P10005945460112848378

`A273669(n+1)-A001511(A286095(n+1))`
-/

namespace A118549.P10005945460112848378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273669 (n + 1) - A001511 (A286095 (n + 1)).toNat

end

end A118549.P10005945460112848378

/-! ## A118549.P2416102222668414470

`A118759(A273669(n+1)-A337335(n+1))`
-/

namespace A118549.P2416102222668414470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A273669 (n + 1) - A337335 (n + 1)).toNat

end

end A118549.P2416102222668414470

/-! ## A118549.P14685124491047781851

`A118759(A235089(n+1)-(A337335(n+1)+1))`
-/

namespace A118549.P14685124491047781851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A235089 (n + 1) - (A337335 (n + 1) + 1)).toNat

end

end A118549.P14685124491047781851

/-! ## A118549.P14066478401376624327

`A118759(A306277(n+1)+1-A337335(n+1))`
-/

namespace A118549.P14066478401376624327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A306277 (n + 1) + (1 - A337335 (n + 1))).toNat

end

end A118549.P14066478401376624327

/-! ## A118549.P14038996582401000250

`A118759(A306277(n+1))-A004442(A337335(n+1))`
-/

namespace A118549.P14038996582401000250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A306277 (n + 1)).toNat - A004442 (A337335 (n + 1)).toNat

end

end A118549.P14038996582401000250

/-!
# A118550: a(0)=1; a(n) = a(n-1) + n if n is in the sequence, a(n) = a(n-1) + 1 if n is missing from the sequence.

The programs for A118550, there is no canonical definition to state claims against.
-/

/-! ## A118550.P14024722198953875879

`∑[n^A001842(A230578(4*n+6))]`
-/

namespace A118550.P14024722198953875879
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A001842 (A230578 (4 * n + 6)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118550.P14024722198953875879

/-! ## A118550.P7960288728064269746

`∑[gcd(n, A037477(A016994(n)))]`
-/

namespace A118550.P7960288728064269746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A037477 (A016994 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118550.P7960288728064269746

/-! ## A118550.P12329263459042534339

`∑[n^A153860(A060281(n+1))]+1`
-/

namespace A118550.P12329263459042534339
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A153860 (A060281 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A118550.P12329263459042534339

/-! ## A118550.P11513261720817396692

`∑[A028310(n*A094497(A100100(n)))]`
-/

namespace A118550.P11513261720817396692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) * A094497 (A100100 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118550.P11513261720817396692

/-! ## A118550.P17671829661616360484

`∑[A028310(n)^A094497(A100100(n))]`
-/

namespace A118550.P17671829661616360484
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 n : ℚ) ^ (A094497 (A100100 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118550.P17671829661616360484

/-!
# A118552: Sum of the twin prime pairs less than 10^n.

The programs for A118552, there is no canonical definition to state claims against.
-/

/-! ## A118552.P16102139686105132029

`A086169(A007508(n+1))`
-/

namespace A118552.P16102139686105132029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086169 (A007508 (n + 1)).toNat

end

end A118552.P16102139686105132029

/-! ## A118552.P6012490579393901790

`A086169(∑[A070076(n+1)])`
-/

namespace A118552.P6012490579393901790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086169 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A118552.P6012490579393901790

/-!
# A118553: Number of permutations of digits of n which denote perfect power.

The programs for A118553, there is no canonical definition to state claims against.
-/

/-! ## A118553.P3333001472568996303

`A062892(n)^A214158(n)`
-/

namespace A118553.P3333001472568996303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062892 n : ℚ) ^ (A214158 n : ℤ)

end

end A118553.P3333001472568996303

/-! ## A118553.P6528040293084108754

`A062892(n)^A286852(n)^A319654(n)`
-/

namespace A118553.P6528040293084108754
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A062892 n : ℝ) ^ ((A286852 n : ℚ) ^ (A319654 n : ℤ) : ℝ)

end

end A118553.P6528040293084108754

/-! ## A118553.P1766551799764038888

`A000007(and(n, A121306(2*n+3)))`
-/

namespace A118553.P1766551799764038888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.land (n : ℤ) (A121306 (2 * n + 3))).toNat

end

end A118553.P1766551799764038888

/-! ## A118553.P1227780312641718984

`A062892(n*A286852(n)²)`
-/

namespace A118553.P1227780312641718984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062892 ((n : ℤ) * A286852 n ^ 2).toNat

end

end A118553.P1227780312641718984

/-! ## A118553.P13948880739776591401

`A062892(n)^A332670(A344607(n))`
-/

namespace A118553.P13948880739776591401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062892 n : ℚ) ^ (A332670 (A344607 n).toNat : ℤ)

end

end A118553.P13948880739776591401

/-!
# A118554: a(n) = 6*a(n-5) - a(n-10) + 98 with a(0)=0, a(1)=11, a(2)=35, a(3)=56, a(4)=104, a(5)=147, a(6)=204, a(7)=336, a(8)=455, a(9)=731.

The programs for A118554, the canonical program `A118554.P5400078994001506787` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118554 has offset 0).

The definition of A118554 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-5)-a(n-10)+98` (program `A118554.P5400078994001506787`, by `A118554.P5400078994001506787.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A118554.P5400078994001506787

`6*a(n-5)-a(n-10)+98` with `a(0)=0, a(1)=11, a(2)=35, a(3)=56, a(4)=104, a(5)=147, a(6)=204, a(7)=336, a(8)=455, a(9)=731`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A118554

/-- `6*a(n-5)-a(n-10)+98` -/
def P5400078994001506787.Spec : Prop :=
  ∀ n, P5400078994001506787.a n = A118554 n

theorem P5400078994001506787.correct : P5400078994001506787.Spec := by
  intro n
  simp only [A118554]

end A118554

/-!
# A118555: Lucky numbers for which the sum of the digits is also a lucky number.

The programs for A118555, there is no canonical definition to state claims against.
-/

/-! ## A118555.P6983163559725414463

`filter[A110304(2*n+1), A145649(#)]`
-/

namespace A118555.P6983163559725414463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110304 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A118555.P6983163559725414463

/-! ## A118555.P1049563250205176849

`filter[A113220(2*n+1), A145649(#)]`
-/

namespace A118555.P1049563250205176849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113220 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A118555.P1049563250205176849

/-!
# A118556: Lucky numbers for which the product of the digits is also a lucky number.

The programs for A118556, there is no canonical definition to state claims against.
-/

/-! ## A118556.P10094414304302969586

`A118567(A000961(n+1)^A128936(n))`
-/

namespace A118556.P10094414304302969586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118567 (SequenceMachineLib.roundAway ((A000961 (n + 1) : ℚ) ^ (A128936 n : ℤ))).toNat

end

end A118556.P10094414304302969586

/-! ## A118556.P15207487193018824832

`A118567(A128936(n)²²*A000961(n+1))`
-/

namespace A118556.P15207487193018824832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118567 ((A128936 n ^ 2) ^ 2 * A000961 (n + 1)).toNat

end

end A118556.P15207487193018824832

/-! ## A118556.P2117659011799580910

`record[A118567(n+1)/A173675(A083434(n+1))]`
-/

namespace A118556.P2117659011799580910
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118567 (n + 1) : ℚ) / (A173675 (A083434 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118556.P2117659011799580910

/-! ## A118556.P7364857911844932725

`A309406(A084092(n+1))`
-/

namespace A118556.P7364857911844932725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309406 (A084092 (n + 1)).toNat

end

end A118556.P7364857911844932725

/-! ## A118556.P16225526452566602460

`A309406(A265641(n+1))`
-/

namespace A118556.P16225526452566602460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309406 (A265641 (n + 1)).toNat

end

end A118556.P16225526452566602460

/-!
# A118558: a(n) = (2^n-1)^4 - 2.

The programs for A118558, the canonical program `A118558.P10837936739088634201` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118558 has offset 0).

The definition of A118558 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n-1)^4-2` (program `A118558.P10837936739088634201`, by `A118558.P10837936739088634201.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A118558.P10837936739088634201

`(2^n-1)^4-2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A118558

/-- `(2^n-1)^4-2` -/
def P10837936739088634201.Spec : Prop :=
  ∀ n, P10837936739088634201.a n = A118558 n

theorem P10837936739088634201.correct : P10837936739088634201.Spec := by
  intro n
  simp only [A118558]

end A118558

/-! ## A118558.P4744652872467892460

`record[A173787(n)²²-2]`
-/

namespace A118558.P4744652872467892460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A173787 n ^ 2) ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118558.P4744652872467892460

namespace A118558

/-- `record[A173787(n)²²-2]` -/
def P4744652872467892460.Spec : Prop :=
  ∀ n, P4744652872467892460.a n = A118558 n

end A118558

/-! ## A118558.P2684540912236413263

`record[A303763(n)²²-2]`
-/

namespace A118558.P2684540912236413263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A303763 n ^ 2) ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118558.P2684540912236413263

namespace A118558

/-- `record[A303763(n)²²-2]` -/
def P2684540912236413263.Spec : Prop :=
  ∀ n, P2684540912236413263.a n = A118558 n

end A118558

/-! ## A118558.P3528324964980167930

`record[A355090(n)²²-2]`
-/

namespace A118558.P3528324964980167930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A355090 n ^ 2) ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118558.P3528324964980167930

namespace A118558

/-- `record[A355090(n)²²-2]` -/
def P3528324964980167930.Spec : Prop :=
  ∀ n, P3528324964980167930.a n = A118558 n

end A118558

/-! ## A118558.P7528698357921681832

`or(n, A000225(n)²²-2)`
-/

namespace A118558.P7528698357921681832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((A000225 n ^ 2) ^ 2 - 2)

end

end A118558.P7528698357921681832

namespace A118558

/-- `or(n, A000225(n)²²-2)` -/
def P7528698357921681832.Spec : Prop :=
  ∀ n, P7528698357921681832.a n = A118558 n

end A118558

/-! ## A118558.P12071171563086387862

`record[A243071(n+1)²²-2]`
-/

namespace A118558.P12071171563086387862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A243071 (n + 1) ^ 2) ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118558.P12071171563086387862

namespace A118558

/-- `record[A243071(n+1)²²-2]` -/
def P12071171563086387862.Spec : Prop :=
  ∀ n, P12071171563086387862.a n = A118558 n

end A118558

/-! ## A118558.P9548103878317807840

`record[A243354(n+1)²²-2]`
-/

namespace A118558.P9548103878317807840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A243354 (n + 1) ^ 2) ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118558.P9548103878317807840

namespace A118558

/-- `record[A243354(n+1)²²-2]` -/
def P9548103878317807840.Spec : Prop :=
  ∀ n, P9548103878317807840.a n = A118558 n

end A118558

/-! ## A118558.P16573907706462861546

`record[A245611(n+1)²²-2]`
-/

namespace A118558.P16573907706462861546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A245611 (n + 1) ^ 2) ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118558.P16573907706462861546

namespace A118558

/-- `record[A245611(n+1)²²-2]` -/
def P16573907706462861546.Spec : Prop :=
  ∀ n, P16573907706462861546.a n = A118558 n

end A118558

/-! ## A118558.P5377234244817014611

`record[A252756(n+1)²²-2]`
-/

namespace A118558.P5377234244817014611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A252756 (n + 1) ^ 2) ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118558.P5377234244817014611

namespace A118558

/-- `record[A252756(n+1)²²-2]` -/
def P5377234244817014611.Spec : Prop :=
  ∀ n, P5377234244817014611.a n = A118558 n

end A118558

/-! ## A118558.P1996062529092408956

`record[A324865(n+1)²²-2]`
-/

namespace A118558.P1996062529092408956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A324865 (n + 1) ^ 2) ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118558.P1996062529092408956

namespace A118558

/-- `record[A324865(n+1)²²-2]` -/
def P1996062529092408956.Spec : Prop :=
  ∀ n, P1996062529092408956.a n = A118558 n

end A118558

/-!
# A118559: Lucky numbers for which both the sum of the digits and the product of the digits is also a lucky number.

The programs for A118559, there is no canonical definition to state claims against.
-/

/-! ## A118559.P4734211472307328315

`∩[A118555(n+1), A118556(n+1)]`
-/

namespace A118559.P4734211472307328315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118556 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118559.P4734211472307328315

/-! ## A118559.P12188144805657454062

`∩[A118556(n+1), A234474(n+1)]`
-/

namespace A118559.P12188144805657454062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118559.P12188144805657454062

/-! ## A118559.P492023469565116636

`∩[A118564(n+1), A190221(n+1)]`
-/

namespace A118559.P492023469565116636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118564 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118559.P492023469565116636

/-!
# A118560: Face-pairing graphs (see reference for precise definition).

The programs for A118560, there is no canonical definition to state claims against.
-/

/-! ## A118560.P1674353804314801820

`A236105(A038793(n+3))-n`
-/

namespace A118560.P1674353804314801820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236105 (A038793 (n + 3)).toNat - (n : ℤ)

end

end A118560.P1674353804314801820

/-! ## A118560.P11363245599717318748

`A325031(2^n)+A226791(n+1)`
-/

namespace A118560.P11363245599717318748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325031 (2 ^ n) + A226791 (n + 1)

end

end A118560.P11363245599717318748

/-! ## A118560.P16510344282429840504

`A327966(A107354(n))+A135035(n)`
-/

namespace A118560.P16510344282429840504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327966 (A107354 n).toNat + A135035 n

end

end A118560.P16510344282429840504

/-!
# A118561: Lucky numbers for which the reversal is also a lucky number.

The programs for A118561, there is no canonical definition to state claims against.
-/

/-! ## A118561.P16148597619491220136

`∪[A031161(n+1), A217252(n+1)]`
-/

namespace A118561.P16148597619491220136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A118561.P16148597619491220136

/-! ## A118561.P11338624241933478944

`record[A309406(n+1)%A097393(n+1)]`
-/

namespace A118561.P11338624241933478944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309406 (n + 1)) (A097393 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118561.P11338624241933478944

/-! ## A118561.P4611115595240747110

`A309406(A077168(n))`
-/

namespace A118561.P4611115595240747110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309406 (A077168 n).toNat

end

end A118561.P4611115595240747110

/-! ## A118561.P10792178634160277551

`A309406(A032949(n+1))`
-/

namespace A118561.P10792178634160277551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309406 (A032949 (n + 1)).toNat

end

end A118561.P10792178634160277551

/-! ## A118561.P4124629858875720361

`A309406(A043319(n+1))`
-/

namespace A118561.P4124629858875720361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309406 (A043319 (n + 1)).toNat

end

end A118561.P4124629858875720361

/-!
# A118563: The set of numbers of the form A003173(n)+1 with odd A003173(n) or of the form 2*(A003173(n)+1) with even A003173(n).

The programs for A118563, there is no canonical definition to state claims against.
-/

/-! ## A118563.P8355938277195495170

`∑[gcd(2*n, floor(n/2))*a(n-1)]` with `a(0)=2, a(1)=2`
-/

namespace A118563.P8355938277195495170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  Int.gcd (2 * n : ℤ) ⌊(n : ℚ) / 2⌋ * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118563.P8355938277195495170

/-! ## A118563.P3018561482574258000

`∑[2*∏[A325099(n)]]`
-/

namespace A118563.P3018561482574258000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325099 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118563.P3018561482574258000

/-! ## A118563.P14801873550123260685

`∑[2*∏[A204995(n+1)]]`
-/

namespace A118563.P14801873550123260685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204995 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118563.P14801873550123260685

/-! ## A118563.P18072695911331555965

`∑[lcm(2, ∏[A336470(n+1)])]`
-/

namespace A118563.P18072695911331555965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336470 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118563.P18072695911331555965

/-! ## A118563.P9413761430165276994

`∑[a(n-1)*A331803(n)]` with `a(0)=2`
-/

namespace A118563.P9413761430165276994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) * A331803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118563.P9413761430165276994

/-!
# A118564: Lucky numbers which are divisible by the sum of their digits.

The programs for A118564, there is no canonical definition to state claims against.
-/

/-! ## A118564.P2045069045837345060

`∩[A000959(n+1), A101813(n+1)]`
-/

namespace A118564.P2045069045837345060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118564.P2045069045837345060

/-! ## A118564.P1397967142539853837

`filter[A101813(n+1), A145649(#)]`
-/

namespace A118564.P1397967142539853837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A118564.P1397967142539853837

/-! ## A118564.P17733165171533118871

`∩[A000959(n+1), A005349(n+1)]`
-/

namespace A118564.P17733165171533118871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118564.P17733165171533118871

/-! ## A118564.P6885138193686895192

`filter[A356349(n+1), A145649(#)]`
-/

namespace A118564.P6885138193686895192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A118564.P6885138193686895192

/-! ## A118564.P8454691353460056942

`∩[A000959(n+1), A356349(n+1)]`
-/

namespace A118564.P8454691353460056942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118564.P8454691353460056942

/-! ## A118564.P11096522099954495208

`filter[A005349(n+1), A145649(#)]`
-/

namespace A118564.P11096522099954495208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A118564.P11096522099954495208

/-! ## A118564.P13764523572539675336

`filter[A000959(n+1), A188641(#)]`
-/

namespace A118564.P13764523572539675336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A118564.P13764523572539675336

/-!
# A118565: Numbers which are both lucky and triangular.

The programs for A118565, there is no canonical definition to state claims against.
-/

/-! ## A118565.P8431463702817371525

`∩[A000959(n+1), A000217(n)]`
-/

namespace A118565.P8431463702817371525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118565.P8431463702817371525

/-! ## A118565.P3693667408560216524

`∩[A000959(n+1), A001972(n)]`
-/

namespace A118565.P3693667408560216524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118565.P3693667408560216524

/-! ## A118565.P10357444355761323141

`∩[A000959(n+1), A014493(n+1)]`
-/

namespace A118565.P10357444355761323141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118565.P10357444355761323141

/-! ## A118565.P16968018392479072305

`∩[A000959(n+1), A082667(n+1)]`
-/

namespace A118565.P16968018392479072305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118565.P16968018392479072305

/-! ## A118565.P13341281397440126556

`∩[A000959(n+1), A129966(n+1)]`
-/

namespace A118565.P13341281397440126556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118565.P13341281397440126556

/-! ## A118565.P5885663576097003462

`filter[A001972(n), A145649(#)]`
-/

namespace A118565.P5885663576097003462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A118565.P5885663576097003462

/-! ## A118565.P15063576151734067609

`filter[A000217(n+1), A145649(#)]`
-/

namespace A118565.P15063576151734067609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A118565.P15063576151734067609

/-! ## A118565.P14667968134242539040

`filter[A014493(n+1), A145649(#)]`
-/

namespace A118565.P14667968134242539040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A118565.P14667968134242539040

/-! ## A118565.P8944293883721368048

`filter[A272549(n+1), A145649(#)]`
-/

namespace A118565.P8944293883721368048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A118565.P8944293883721368048

/-! ## A118565.P6603968827213171168

`filter[A082667(n+2), A145649(#)]`
-/

namespace A118565.P6603968827213171168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082667 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A118565.P6603968827213171168

/-!
# A118566: Smaller of two consecutive lucky numbers with the same digital sum.

The programs for A118566, there is no canonical definition to state claims against.
-/

/-! ## A118566.P15897326043844068079

`A031900(A064364(n+3)%A162525(n+2))`
-/

namespace A118566.P15897326043844068079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031900 (Int.tmod (A064364 (n + 3)) (A162525 (n + 2))).toNat

end

end A118566.P15897326043844068079

/-!
# A118567: Lucky numbers with only odd digits.

The programs for A118567, there is no canonical definition to state claims against.
-/

/-! ## A118567.P8673322724760979832

`∩[A000959(n+1), A014261(n+1)]`
-/

namespace A118567.P8673322724760979832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118567.P8673322724760979832

/-! ## A118567.P9373019088587915031

`∩[A000959(n+1), A059708(n+1)]`
-/

namespace A118567.P9373019088587915031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118567.P9373019088587915031

/-! ## A118567.P11340366892198048926

`filter[A014261(n+1), A145649(#)]`
-/

namespace A118567.P11340366892198048926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A118567.P11340366892198048926

/-! ## A118567.P9189180043292581283

`filter[A059708(n+2), A145649(#)]`
-/

namespace A118567.P9189180043292581283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A118567.P9189180043292581283

/-! ## A118567.P3057321354764144879

`filter[A275776(2*n+1), A145649(#)]`
-/

namespace A118567.P3057321354764144879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275776 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A118567.P3057321354764144879

/-! ## A118567.P4750412477770414314

`∩[A014261(n+1), A004273(A049781(n+1))]`
-/

namespace A118567.P4750412477770414314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A049781 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118567.P4750412477770414314

/-! ## A118567.P17206630007210295762

`record[A059717(A000959(n+1))]`
-/

namespace A118567.P17206630007210295762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059717 (A000959 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118567.P17206630007210295762

/-! ## A118567.P2794071424578251349

`record[A059717(sqrt(A032598(n+1)))]`
-/

namespace A118567.P2794071424578251349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059717 (SequenceMachineLib.roundAway (Real.sqrt (A032598 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118567.P2794071424578251349

/-!
# A118568: Lucky numbers with only even digits, except for the last one.

The programs for A118568, there is no canonical definition to state claims against.
-/

/-! ## A118568.P2774416028355063884

`∩[A000959(n+6), A059708(n+1)+1]`
-/

namespace A118568.P2774416028355063884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118568.P2774416028355063884

/-! ## A118568.P17235043787132049604

`filter[A143712(n+1), A145649(#)]`
-/

namespace A118568.P17235043787132049604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A118568.P17235043787132049604

/-! ## A118568.P10707057459949040070

`∩[A000959(n+1), A143712(n+1)]`
-/

namespace A118568.P10707057459949040070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118568.P10707057459949040070

/-! ## A118568.P12254387896453313727

`∩[A032602(n+1)-A000040(n+1), A143712(n+1)]`
-/

namespace A118568.P12254387896453313727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032602 (n + 1) - A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118568.P12254387896453313727

/-!
# A118569: Lucky numbers with consecutive digits.

The programs for A118569, there is no canonical definition to state claims against.
-/

/-! ## A118569.P14434251835061538455

`A196042(A287074(∑[n+2]))`
-/

namespace A118569.P14434251835061538455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196042 (A287074 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A118569.P14434251835061538455

/-!
# A118570: Very lucky numbers : apply the sieve to obtain the lucky numbers (A000959) on the lucky numbers themselves.

The programs for A118570, there is no canonical definition to state claims against.
-/

/-! ## A118570.P1678985369503787948

`A212663(A004647(n))!*A000959(A007951(n+1))`
-/

namespace A118570.P1678985369503787948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A212663 (A004647 n).toNat).toNat : ℤ) * A000959 (A007951 (n + 1)).toNat

end

end A118570.P1678985369503787948

/-! ## A118570.P12795959915776247307

`A000959(A007951(n+1))^A321804(n)²`
-/

namespace A118570.P12795959915776247307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000959 (A007951 (n + 1)).toNat : ℚ) ^ (A321804 n ^ 2 : ℤ)

end

end A118570.P12795959915776247307

/-! ## A118570.P6170393257928554290

`A000959(A321804(n)²²*A007951(n+1))`
-/

namespace A118570.P6170393257928554290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 ((A321804 n ^ 2) ^ 2 * A007951 (n + 1)).toNat

end

end A118570.P6170393257928554290

/-! ## A118570.P3664842032580064112

`A000959(A007951(n+1))%A000040(A138900(n+1))`
-/

namespace A118570.P3664842032580064112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000959 (A007951 (n + 1)).toNat) (A000040 (A138900 (n + 1)).toNat)

end

end A118570.P3664842032580064112

/-! ## A118570.P9454668044584045357

`A000959(lt[A240840(2*n+3), A276086(2*n+1)])`
-/

namespace A118570.P9454668044584045357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240840 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A118570.P9454668044584045357

/-!
# A118571: Sophie Germain primes whose sum of digits is a prime.

The programs for A118571, the canonical program `A118571.P13619142025454804279` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118571 has offset 1).

The definition of A118571 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1317 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118571.P13619142025454804279

`∩[A005384(n+1), A046704(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A118571

/-- `∩[A005384(n+1), A046704(n+1)]` -/
def P13619142025454804279.Spec : Prop :=
  ∀ n, (P13619142025454804279.a n : ℤ) = A118571 (n + 1)

theorem P13619142025454804279.correct : P13619142025454804279.Spec := by
  intro n
  simp only [A118571, Nat.add_sub_cancel]

end A118571

/-! ## A118571.P14405999231047401905

`∩[A046704(n+1), A246857(n+1)]`
-/

namespace A118571.P14405999231047401905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118571.P14405999231047401905

namespace A118571

/-- `∩[A046704(n+1), A246857(n+1)]` -/
def P14405999231047401905.Spec : Prop :=
  ∀ n, (P14405999231047401905.a n : ℤ) = A118571 (n + 1)

end A118571

/-! ## A118571.P9642384047216896284

`∩[A046704(n+1), A348511(n+1)]`
-/

namespace A118571.P9642384047216896284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118571.P9642384047216896284

namespace A118571

/-- `∩[A046704(n+1), A348511(n+1)]` -/
def P9642384047216896284.Spec : Prop :=
  ∀ n, (P9642384047216896284.a n : ℤ) = A118571 (n + 1)

end A118571

/-! ## A118571.P6924480779724162718

`∩[A046704(n+1), A364926(n+1)]`
-/

namespace A118571.P6924480779724162718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118571.P6924480779724162718

namespace A118571

/-- `∩[A046704(n+1), A364926(n+1)]` -/
def P6924480779724162718.Spec : Prop :=
  ∀ n, (P6924480779724162718.a n : ℤ) = A118571 (n + 1)

end A118571

/-! ## A118571.P510865490918806937

`∩[A046704(n+1), A259973(n+1)]`
-/

namespace A118571.P510865490918806937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118571.P510865490918806937

namespace A118571

/-- `∩[A046704(n+1), A259973(n+1)]` -/
def P510865490918806937.Spec : Prop :=
  ∀ n, (P510865490918806937.a n : ℤ) = A118571 (n + 1)

end A118571

/-! ## A118571.P1766320495184703798

`∩[A046704(n+1), A078762(n+1)]`
-/

namespace A118571.P1766320495184703798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118571.P1766320495184703798

namespace A118571

/-- `∩[A046704(n+1), A078762(n+1)]` -/
def P1766320495184703798.Spec : Prop :=
  ∀ n, (P1766320495184703798.a n : ℤ) = A118571 (n + 1)

end A118571

/-! ## A118571.P16949501381096890999

`∩[A046704(n+1), A054639(n+1)]`
-/

namespace A118571.P16949501381096890999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118571.P16949501381096890999

namespace A118571

/-- `∩[A046704(n+1), A054639(n+1)]` -/
def P16949501381096890999.Spec : Prop :=
  ∀ n, (P16949501381096890999.a n : ℤ) = A118571 (n + 1)

end A118571

/-! ## A118571.P5093371335904809177

`∩[A014109(n+1), A046704(n+1)]`
-/

namespace A118571.P5093371335904809177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118571.P5093371335904809177

namespace A118571

/-- `∩[A014109(n+1), A046704(n+1)]` -/
def P5093371335904809177.Spec : Prop :=
  ∀ n, (P5093371335904809177.a n : ℤ) = A118571 (n + 1)

end A118571

/-! ## A118571.P6144833660375745407

`∩[A046704(n+1), A156541(n+1)]`
-/

namespace A118571.P6144833660375745407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118571.P6144833660375745407

namespace A118571

/-- `∩[A046704(n+1), A156541(n+1)]` -/
def P6144833660375745407.Spec : Prop :=
  ∀ n, (P6144833660375745407.a n : ℤ) = A118571 (n + 1)

end A118571

/-! ## A118571.P2321019461953423132

`∩[A005384(n+1), A028834(n+1)]`
-/

namespace A118571.P2321019461953423132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118571.P2321019461953423132

namespace A118571

/-- `∩[A005384(n+1), A028834(n+1)]` -/
def P2321019461953423132.Spec : Prop :=
  ∀ n, (P2321019461953423132.a n : ℤ) = A118571 (n + 1)

end A118571

/-! ## A118571.P1757711647293723993

`∩[A046704(n+1), A074821(n+1)]`
-/

namespace A118571.P1757711647293723993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118571.P1757711647293723993

namespace A118571

/-- `∩[A046704(n+1), A074821(n+1)]` -/
def P1757711647293723993.Spec : Prop :=
  ∀ n, (P1757711647293723993.a n : ℤ) = A118571 (n + 1)

end A118571

/-! ## A118571.P11672934636711593276

`∩[A046704(n+1), A117360(n+1)]`
-/

namespace A118571.P11672934636711593276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118571.P11672934636711593276

namespace A118571

/-- `∩[A046704(n+1), A117360(n+1)]` -/
def P11672934636711593276.Spec : Prop :=
  ∀ n, (P11672934636711593276.a n : ℤ) = A118571 (n + 1)

end A118571

/-! ## A118571.P1162304326244807704

`∩[A005097(n+1), A046704(n+1)]`
-/

namespace A118571.P1162304326244807704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118571.P1162304326244807704

namespace A118571

/-- `∩[A005097(n+1), A046704(n+1)]` -/
def P1162304326244807704.Spec : Prop :=
  ∀ n, (P1162304326244807704.a n : ℤ) = A118571 (n + 1)

end A118571

/-! ## A118571.P13074788348674201713

`∩[A046704(n+1), A102781(n+1)]`
-/

namespace A118571.P13074788348674201713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118571.P13074788348674201713

namespace A118571

/-- `∩[A046704(n+1), A102781(n+1)]` -/
def P13074788348674201713.Spec : Prop :=
  ∀ n, (P13074788348674201713.a n : ℤ) = A118571 (n + 1)

end A118571

/-! ## A118571.P5126369086569781823

`∩[A046704(n+1), A139791(n+1)]`
-/

namespace A118571.P5126369086569781823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118571.P5126369086569781823

namespace A118571

/-- `∩[A046704(n+1), A139791(n+1)]` -/
def P5126369086569781823.Spec : Prop :=
  ∀ n, (P5126369086569781823.a n : ℤ) = A118571 (n + 1)

end A118571

/-! ## A118571.P11305645708487605689

`∩[A046704(n+1), A326583(n+1)]`
-/

namespace A118571.P11305645708487605689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118571.P11305645708487605689

namespace A118571

/-- `∩[A046704(n+1), A326583(n+1)]` -/
def P11305645708487605689.Spec : Prop :=
  ∀ n, (P11305645708487605689.a n : ℤ) = A118571 (n + 1)

end A118571

/-! ## A118571.P17705381231318219853

`filter[A046704(n+1), A101264(#)]`
-/

namespace A118571.P17705381231318219853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A118571.P17705381231318219853

namespace A118571

/-- `filter[A046704(n+1), A101264(#)]` -/
def P17705381231318219853.Spec : Prop :=
  ∀ n, P17705381231318219853.a n = A118571 (n + 1)

end A118571

/-! ## A118571.P11378630730081471167

`∩[A046704(n+1), A328413(n+1)]`
-/

namespace A118571.P11378630730081471167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118571.P11378630730081471167

namespace A118571

/-- `∩[A046704(n+1), A328413(n+1)]` -/
def P11378630730081471167.Spec : Prop :=
  ∀ n, (P11378630730081471167.a n : ℤ) = A118571 (n + 1)

end A118571

/-! ## A118571.P723933512017544820

`∩[A046704(n+1), A002180(n+2)]`
-/

namespace A118571.P723933512017544820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002180 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118571.P723933512017544820

namespace A118571

/-- `∩[A046704(n+1), A002180(n+2)]` -/
def P723933512017544820.Spec : Prop :=
  ∀ n, (P723933512017544820.a n : ℤ) = A118571 (n + 1)

end A118571

/-! ## A118571.P162165876826252954

`∩[A046704(n+1), A396684(n+1)]`
-/

namespace A118571.P162165876826252954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118571.P162165876826252954

namespace A118571

/-- `∩[A046704(n+1), A396684(n+1)]` -/
def P162165876826252954.Spec : Prop :=
  ∀ n, (P162165876826252954.a n : ℤ) = A118571 (n + 1)

end A118571

/-!
# A118572: Sophie Germain primes for which the product of the digits is square.

The programs for A118572, there is no canonical definition to state claims against.
-/

/-! ## A118572.P184065007703152298

`∩[A184328(n+1), A328642(n+1)]`
-/

namespace A118572.P184065007703152298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118572.P184065007703152298

/-!
# A118573: Sophie Germain primes for which the reversal is also a Sophie Germain prime.

The programs for A118573, there is no canonical definition to state claims against.
-/

/-! ## A118573.P12503155470992349315

`record[A068211(A035534(n)+3)]`
-/

namespace A118573.P12503155470992349315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068211 (A035534 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118573.P12503155470992349315

/-! ## A118573.P12063580027921766315

`A259788(A225906(n+1)+n)`
-/

namespace A118573.P12063580027921766315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259788 (A225906 (n + 1) + (n : ℤ)).toNat

end

end A118573.P12063580027921766315

/-!
# A118575: Dividuus numbers: numbers which are divisible by (1) the sum of their digits,(2) the product of their digits,(3) the digital root and (4) the multiplicative digital root.

The programs for A118575, there is no canonical definition to state claims against.
-/

/-! ## A118575.P4925704315036041781

`A038186(A353866(n+1)%A118035(2*n+1))`
-/

namespace A118575.P4925704315036041781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038186 (Int.tmod (A353866 (n + 1)) (A118035 (2 * n + 1))).toNat

end

end A118575.P4925704315036041781

/-! ## A118575.P8942243702334277371

`A038186(A353866(n+1))%A118034(2*(n+1))`
-/

namespace A118575.P8942243702334277371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038186 (A353866 (n + 1)).toNat) (A118034 (2 * (n + 1)))

end

end A118575.P8942243702334277371

/-! ## A118575.P3834456933925150100

`∩[A038186(n+1), A191932(n+1)]`
-/

namespace A118575.P3834456933925150100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118575.P3834456933925150100

/-! ## A118575.P10307100980582437259

`∩[A038186(n+1), A135578(n+1)]`
-/

namespace A118575.P10307100980582437259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118575.P10307100980582437259

/-! ## A118575.P17636215145158339281

`∩[A051004(n+1), A135578(n+1)]`
-/

namespace A118575.P17636215145158339281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118575.P17636215145158339281

/-!
# A118580: Least k such that 10^n + k is a Sophie Germain prime and the lesser of a twin prime pair.

The programs for A118580, there is no canonical definition to state claims against.
-/

/-! ## A118580.P5475343343835114834

`A118479(n+1)-10^n`
-/

namespace A118580.P5475343343835114834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118479 (n + 1) - (10 ^ n : ℤ)

end

end A118580.P5475343343835114834

/-!
# A118581: Number of nonisomorphic semigroups of order <= n.

The programs for A118581, there is no canonical definition to state claims against.
-/

/-! ## A118581.P13536742569076295117

`∑[A027851(n)]`
-/

namespace A118581.P13536742569076295117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118581.P13536742569076295117

/-! ## A118581.P13445436113659038086

`A027851(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A118581.P13445436113659038086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A027851 n + a (A023443 n).toNat

end

end A118581.P13445436113659038086

/-! ## A118581.P14274995575640900011

`A027851(n)+a(A030141(n))` with `a(0)=1`
-/

namespace A118581.P14274995575640900011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A027851 n + a (A030141 n).toNat

end

end A118581.P14274995575640900011

/-! ## A118581.P4170216241740471400

`∑[2*A001423(n)-A029851(n)]`
-/

namespace A118581.P4170216241740471400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001423 n - A029851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118581.P4170216241740471400

/-! ## A118581.P1209082410089705669

`A027851(A000027(n))+a(n-1)` with `a(0)=1`
-/

namespace A118581.P1209082410089705669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A027851 (A000027 n).toNat + a (n - 1)

end

end A118581.P1209082410089705669

/-!
# A118583: Numerator of sum of first p reciprocals of p-simplex numbers divided by p^4, where p = prime(n) for n > 2.

The programs for A118583, there is no canonical definition to state claims against.
-/

/-! ## A118583.P5210494130920837590

`A034602(n+3)/gcd(A034602(n+3), A268589(n+4))`
-/

namespace A118583.P5210494130920837590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034602 (n + 3) : ℚ) / (Int.gcd (A034602 (n + 3)) (A268589 (n + 4)) : ℚ)

end

end A118583.P5210494130920837590

/-! ## A118583.P13170809500284198893

`lcm(A087754(n+3), A268589(n+4))/A268589(n+4)`
-/

namespace A118583.P13170809500284198893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A087754 (n + 3)) (A268589 (n + 4)) : ℚ) / (A268589 (n + 4) : ℚ)

end

end A118583.P13170809500284198893

/-!
# A118585: Sum of squares of digits of prime factors of n, with multiplicity.

The programs for A118585, there is no canonical definition to state claims against.
-/

/-! ## A118585.P11801545280448169157

`A003132(A037276(n+1))%A162365(n)`
-/

namespace A118585.P11801545280448169157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003132 (A037276 (n + 1)).toNat) (A162365 n)

end

end A118585.P11801545280448169157

/-! ## A118585.P17315834087254667645

`A003132(A037276(n+1)%A292281(n))`
-/

namespace A118585.P17315834087254667645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (Int.tmod (A037276 (n + 1)) (A292281 n)).toNat

end

end A118585.P17315834087254667645

/-! ## A118585.P13122950393603586258

`A003132(A073646(n+1))%A299259(n)`
-/

namespace A118585.P13122950393603586258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003132 (A073646 (n + 1)).toNat) (A299259 n)

end

end A118585.P13122950393603586258

/-! ## A118585.P2204271200256342060

`A003132(A073646(n+1)%A299292(n))`
-/

namespace A118585.P2204271200256342060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (Int.tmod (A073646 (n + 1)) (A299292 n)).toNat

end

end A118585.P2204271200256342060

/-!
# A118586: Numbers whose binary expansion contains group of at least two 1's followed by a nonempty group of 0's.

The programs for A118586, the canonical program `A118586.P6236173559146990027` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118586 has offset 1).

The definition of A118586 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118586.P6236173559146990027

`A190620(n+1)+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A118586

/-- `A190620(n+1)+1` -/
def P6236173559146990027.Spec : Prop :=
  ∀ n, P6236173559146990027.a n = A118586 (n + 1)

theorem P6236173559146990027.correct : P6236173559146990027.Spec := by
  intro n
  simp only [A118586, Nat.add_sub_cancel]

end A118586

/-! ## A118586.P11536056138006785086

`2*A175332(n+1)`
-/

namespace A118586.P11536056138006785086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A175332 (n + 1)

end

end A118586.P11536056138006785086

namespace A118586

/-- `2*A175332(n+1)` -/
def P11536056138006785086.Spec : Prop :=
  ∀ n, P11536056138006785086.a n = A118586 (n + 1)

end A118586

/-! ## A118586.P5493582652384603240

`A081118(comp[∑[n]]+1)+1`
-/

namespace A118586.P5493582652384603240
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) + 1

end

end A118586.P5493582652384603240

namespace A118586

/-- `A081118(comp[∑[n]]+1)+1` -/
def P5493582652384603240.Spec : Prop :=
  ∀ n, P5493582652384603240.a n = A118586 (n + 1)

end A118586

/-! ## A118586.P11647114739217443371

`A098354(n+1)+A043569(n+1)`
-/

namespace A118586.P11647114739217443371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098354 (n + 1) + A043569 (n + 1)

end

end A118586.P11647114739217443371

namespace A118586

/-- `A098354(n+1)+A043569(n+1)` -/
def P11647114739217443371.Spec : Prop :=
  ∀ n, P11647114739217443371.a n = A118586 (n + 1)

end A118586

/-! ## A118586.P15458990467339850087

`2*(A130321(n)+A043569(n+1))`
-/

namespace A118586.P15458990467339850087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A130321 n + A043569 (n + 1))

end

end A118586.P15458990467339850087

namespace A118586

/-- `2*(A130321(n)+A043569(n+1))` -/
def P15458990467339850087.Spec : Prop :=
  ∀ n, P15458990467339850087.a n = A118586 (n + 1)

end A118586

/-! ## A118586.P5972586576428002631

`2*(A098354(n+1)-A130321(n))`
-/

namespace A118586.P5972586576428002631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A098354 (n + 1) - A130321 n)

end

end A118586.P5972586576428002631

namespace A118586

/-- `2*(A098354(n+1)-A130321(n))` -/
def P5972586576428002631.Spec : Prop :=
  ∀ n, P5972586576428002631.a n = A118586 (n + 1)

end A118586

/-! ## A118586.P15565343716194957024

`lcm(A090988(n+1), A175332(n+1))`
-/

namespace A118586.P15565343716194957024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A090988 (n + 1)) (A175332 (n + 1))

end

end A118586.P15565343716194957024

namespace A118586

/-- `lcm(A090988(n+1), A175332(n+1))` -/
def P15565343716194957024.Spec : Prop :=
  ∀ n, (P15565343716194957024.a n : ℤ) = A118586 (n + 1)

end A118586

/-! ## A118586.P14891076032839454973

`A098354(n+1)+A224195(n+1)-1`
-/

namespace A118586.P14891076032839454973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098354 (n + 1) + (A224195 (n + 1) - 1)

end

end A118586.P14891076032839454973

namespace A118586

/-- `A098354(n+1)+A224195(n+1)-1` -/
def P14891076032839454973.Spec : Prop :=
  ∀ n, P14891076032839454973.a n = A118586 (n + 1)

end A118586

/-! ## A118586.P5330315476035382653

`2*A098354(n+1)-A090988(n+1)`
-/

namespace A118586.P5330315476035382653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098354 (n + 1) - A090988 (n + 1)

end

end A118586.P5330315476035382653

namespace A118586

/-- `2*A098354(n+1)-A090988(n+1)` -/
def P5330315476035382653.Spec : Prop :=
  ∀ n, P5330315476035382653.a n = A118586 (n + 1)

end A118586

/-! ## A118586.P13548461093088825984

`2*(A030130(n+2)+1)`
-/

namespace A118586.P13548461093088825984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A030130 (n + 2) + 1)

end

end A118586.P13548461093088825984

namespace A118586

/-- `2*(A030130(n+2)+1)` -/
def P13548461093088825984.Spec : Prop :=
  ∀ n, P13548461093088825984.a n = A118586 (n + 1)

end A118586

/-! ## A118586.P4178027154035743848

`A175332(comp[∑[n]])`
-/

namespace A118586.P4178027154035743848
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175332 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A118586.P4178027154035743848

namespace A118586

/-- `A175332(comp[∑[n]])` -/
def P4178027154035743848.Spec : Prop :=
  ∀ n, P4178027154035743848.a n = A118586 (n + 1)

end A118586

/-! ## A118586.P1227071787616801768

`2*(A089633(A014132(n+1))+1)`
-/

namespace A118586.P1227071787616801768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A089633 (A014132 (n + 1)).toNat + 1)

end

end A118586.P1227071787616801768

namespace A118586

/-- `2*(A089633(A014132(n+1))+1)` -/
def P1227071787616801768.Spec : Prop :=
  ∀ n, P1227071787616801768.a n = A118586 (n + 1)

end A118586

/-! ## A118586.P9417163209833355720

`A043569(comp[∑[n]]+1)`
-/

namespace A118586.P9417163209833355720
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043569 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A118586.P9417163209833355720

namespace A118586

/-- `A043569(comp[∑[n]]+1)` -/
def P9417163209833355720.Spec : Prop :=
  ∀ n, P9417163209833355720.a n = A118586 (n + 1)

end A118586

/-! ## A118586.P12074498744702327318

`A224195(comp[∑[n]]+1)-1`
-/

namespace A118586.P12074498744702327318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224195 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) - 1

end

end A118586.P12074498744702327318

namespace A118586

/-- `A224195(comp[∑[n]]+1)-1` -/
def P12074498744702327318.Spec : Prop :=
  ∀ n, P12074498744702327318.a n = A118586 (n + 1)

end A118586

/-! ## A118586.P6713995810734160067

`A030130(A080036(n+1))+1`
-/

namespace A118586.P6713995810734160067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030130 (A080036 (n + 1)).toNat + 1

end

end A118586.P6713995810734160067

namespace A118586

/-- `A030130(A080036(n+1))+1` -/
def P6713995810734160067.Spec : Prop :=
  ∀ n, P6713995810734160067.a n = A118586 (n + 1)

end A118586

/-! ## A118586.P1094804519039566076

`∩[A043569(n+1), A175332(n+1)]`
-/

namespace A118586.P1094804519039566076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118586.P1094804519039566076

namespace A118586

/-- `∩[A043569(n+1), A175332(n+1)]` -/
def P1094804519039566076.Spec : Prop :=
  ∀ n, (P1094804519039566076.a n : ℤ) = A118586 (n + 1)

end A118586

/-! ## A118586.P2645701069133771687

`∩[A030130(n+1), A081118(n+1)]+1`
-/

namespace A118586.P2645701069133771687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A118586.P2645701069133771687

namespace A118586

/-- `∩[A030130(n+1), A081118(n+1)]+1` -/
def P2645701069133771687.Spec : Prop :=
  ∀ n, (P2645701069133771687.a n : ℤ) = A118586 (n + 1)

end A118586

/-! ## A118586.P10277745880300333859

`2*(A164874(n+1)+1)`
-/

namespace A118586.P10277745880300333859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A164874 (n + 1) + 1)

end

end A118586.P10277745880300333859

namespace A118586

/-- `2*(A164874(n+1)+1)` -/
def P10277745880300333859.Spec : Prop :=
  ∀ n, P10277745880300333859.a n = A118586 (n + 1)

end A118586

/-! ## A118586.P17551039638736891278

`A164874(n+1)+A175332(n+1)+1`
-/

namespace A118586.P17551039638736891278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164874 (n + 1) + (A175332 (n + 1) + 1)

end

end A118586.P17551039638736891278

namespace A118586

/-- `A164874(n+1)+A175332(n+1)+1` -/
def P17551039638736891278.Spec : Prop :=
  ∀ n, P17551039638736891278.a n = A118586 (n + 1)

end A118586

/-! ## A118586.P17201085460047725767

`A164874(comp[∑[n]])+1`
-/

namespace A118586.P17201085460047725767
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164874 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1

end

end A118586.P17201085460047725767

namespace A118586

/-- `A164874(comp[∑[n]])+1` -/
def P17201085460047725767.Spec : Prop :=
  ∀ n, P17201085460047725767.a n = A118586 (n + 1)

end A118586

/-!
# A118587: Expansion of (17-25*x-23*x^2+133*x^3)/(1-x)^4.

The programs for A118587, the canonical program `A118587.P272617687782299448` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118587 has offset 0).

The definition of A118587 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((17-25x-23x^2+133x^3)/(1-4x+6x^2-4x^3+x^4))` (program `A118587.P272617687782299448`, by `A118587.P272617687782299448.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A118587.P272617687782299448

`ogf((17-25x-23x^2+133x^3)/(1-4x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A118587

/-- `ogf((17-25x-23x^2+133x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P272617687782299448.Spec : Prop :=
  ∀ n, P272617687782299448.a n = A118587 n

theorem P272617687782299448.correct : P272617687782299448.Spec := by
  intro n
  simp only [A118587]

end A118587

/-! ## A118587.P13276469510798029126

`17*n^3-62*n²+71*n+17`
-/

namespace A118587.P13276469510798029126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (17 * n ^ 3 : ℤ) - (62 * n ^ 2 : ℤ) + (71 * n : ℤ) + 17

end

end A118587.P13276469510798029126

namespace A118587

/-- `17*n^3-62*n²+71*n+17` -/
def P13276469510798029126.Spec : Prop :=
  ∀ n, P13276469510798029126.a n = A118587 n

end A118587

/-!
# A118588: Triangle generated by e.g.f.: A(x,y) = exp(x + y*(x^2+x^3)), read by rows of length [n/2+1].

The programs for A118588, there is no canonical definition to state claims against.
-/

/-! ## A118588.P11866664375871793336

`A059344(n)*A088699(A091018(n))`
-/

namespace A118588.P11866664375871793336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059344 n * A088699 (A091018 n).toNat

end

end A118588.P11866664375871793336

/-! ## A118588.P13450894366530751171

`A034868(n)*A342088(A091018(n))`
-/

namespace A118588.P13450894366530751171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034868 n * A342088 (A091018 n).toNat

end

end A118588.P13450894366530751171

/-! ## A118588.P8929547178137947327

`A000196(A059344(n)²)*A011973(n)`
-/

namespace A118588.P8929547178137947327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A059344 n ^ 2).toNat * A011973 n

end

end A118588.P8929547178137947327

/-! ## A118588.P14925715882383283096

`A011973(n)*A037213(A059344(n)²)`
-/

namespace A118588.P14925715882383283096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 n * A037213 (A059344 n ^ 2).toNat

end

end A118588.P14925715882383283096

/-! ## A118588.P6232297420583968799

`A121294(A391403(n))`
-/

namespace A118588.P6232297420583968799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121294 (A391403 n).toNat

end

end A118588.P6232297420583968799

/-!
# A118589: Expansion of e.g.f. exp(x + x^2 + x^3).

The programs for A118589, the canonical program `A118589.P7806107758211702489` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118589 has offset 0).

The definition of A118589 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A118589.P7806107758211702489

`a(n-1)+2*(n-1)*a(n-2)+3*(n-1)*(n-2)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A118589

/-- `a(n-1)+2*(n-1)*a(n-2)+3*(n-1)*(n-2)*a(n-3)` -/
def P7806107758211702489.Spec : Prop :=
  ∀ n, P7806107758211702489.a n = A118589 n

theorem P7806107758211702489.correct : P7806107758211702489.Spec := by
  intro n
  simp only [A118589]

end A118589

/-! ## A118589.P15375254492686610057

`A293669(∑[n+3])`
-/

namespace A118589.P15375254492686610057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293669 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A118589.P15375254492686610057

namespace A118589

/-- `A293669(∑[n+3])` -/
def P15375254492686610057.Spec : Prop :=
  ∀ n, P15375254492686610057.a n = A118589 n

end A118589

/-! ## A118589.P16181770376307154868

`A293669(A027379(n+1))+C(A054725(n+1), 7)`
-/

namespace A118589.P16181770376307154868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293669 (A027379 (n + 1)).toNat + (Nat.choose (A054725 (n + 1)).toNat 7 : ℤ)

end

end A118589.P16181770376307154868

namespace A118589

/-- `A293669(A027379(n+1))+C(A054725(n+1), 7)` -/
def P16181770376307154868.Spec : Prop :=
  ∀ n, P16181770376307154868.a n = A118589 n

end A118589

/-! ## A118589.P18141891124451592207

`A293669(A027379(n+1))+A000038(A001972(n))`
-/

namespace A118589.P18141891124451592207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293669 (A027379 (n + 1)).toNat + A000038 (A001972 n).toNat

end

end A118589.P18141891124451592207

namespace A118589

/-- `A293669(A027379(n+1))+A000038(A001972(n))` -/
def P18141891124451592207.Spec : Prop :=
  ∀ n, P18141891124451592207.a n = A118589 n

end A118589

/-! ## A118589.P10008743720156232152

`A293669(A027379(n+1))^A001221(A001316(n))`
-/

namespace A118589.P10008743720156232152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293669 (A027379 (n + 1)).toNat : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

end

end A118589.P10008743720156232152

namespace A118589

/-- `A293669(A027379(n+1))^A001221(A001316(n))` -/
def P10008743720156232152.Spec : Prop :=
  ∀ n, P10008743720156232152.a n = (A118589 n : ℚ)

end A118589

/-! ## A118589.P17513418522901978895

`A294250(∑[n+3])`
-/

namespace A118589.P17513418522901978895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294250 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A118589.P17513418522901978895

namespace A118589

/-- `A294250(∑[n+3])` -/
def P17513418522901978895.Spec : Prop :=
  ∀ n, P17513418522901978895.a n = A118589 n

end A118589

/-! ## A118589.P15438795905791128639

`A261764(A077169(n+1)-2)`
-/

namespace A118589.P15438795905791128639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261764 (A077169 (n + 1) - 2).toNat

end

end A118589.P15438795905791128639

namespace A118589

/-- `A261764(A077169(n+1)-2)` -/
def P15438795905791128639.Spec : Prop :=
  ∀ n, P15438795905791128639.a n = A118589 n

end A118589

/-! ## A118589.P13935019809368565747

`or(1, A294250(A055998(n+1)))`
-/

namespace A118589.P13935019809368565747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A294250 (A055998 (n + 1)).toNat)

end

end A118589.P13935019809368565747

namespace A118589

/-- `or(1, A294250(A055998(n+1)))` -/
def P13935019809368565747.Spec : Prop :=
  ∀ n, P13935019809368565747.a n = A118589 n

end A118589

/-! ## A118589.P5294337169316982093

`A040001(A172368(n))*A294250(A055998(n+1))`
-/

namespace A118589.P5294337169316982093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A172368 n).toNat * A294250 (A055998 (n + 1)).toNat

end

end A118589.P5294337169316982093

namespace A118589

/-- `A040001(A172368(n))*A294250(A055998(n+1))` -/
def P5294337169316982093.Spec : Prop :=
  ∀ n, P5294337169316982093.a n = A118589 n

end A118589

/-!
# A118590: Larger of two consecutive primes whose positive difference is a square.

The programs for A118590, the canonical program `A118590.P9922597422705317347` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118590 has offset 1).

The definition of A118590 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118590.P16907878738349723841

`p?[A101322(A001223(n+1))+A000040(n+1)]`
-/

namespace A118590.P16907878738349723841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101322 (A001223 (n + 1)).toNat + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118590.P16907878738349723841

namespace A118590

/-- `p?[A101322(A001223(n+1))+A000040(n+1)]` -/
def P16907878738349723841.Spec : Prop :=
  ∀ n, P16907878738349723841.a n = A118590 (n + 1)

end A118590

/-! ## A118590.P5861291686279698855

`p?[A255131(A001223(n+1))+A008864(n+1)]`
-/

namespace A118590.P5861291686279698855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255131 (A001223 (n + 1)).toNat + A008864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118590.P5861291686279698855

namespace A118590

/-- `p?[A255131(A001223(n+1))+A008864(n+1)]` -/
def P5861291686279698855.Spec : Prop :=
  ∀ n, P5861291686279698855.a n = A118590 (n + 1)

end A118590

/-! ## A118590.P9922597422705317347

`p?[A267635(A001223(n+1))+A065091(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A118590

/-- `p?[A267635(A001223(n+1))+A065091(n+1)]` -/
def P9922597422705317347.Spec : Prop :=
  ∀ n, P9922597422705317347.a n = A118590 (n + 1)

theorem P9922597422705317347.correct : P9922597422705317347.Spec := by
  intro n
  simp only [A118590, Nat.add_sub_cancel]

end A118590

/-! ## A118590.P14208644578048063833

`p?[A000040(n+1)-A027052(A076368(n+1))]`
-/

namespace A118590.P14208644578048063833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A027052 (A076368 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118590.P14208644578048063833

namespace A118590

/-- `p?[A000040(n+1)-A027052(A076368(n+1))]` -/
def P14208644578048063833.Spec : Prop :=
  ∀ n, P14208644578048063833.a n = A118590 (n + 1)

end A118590

/-! ## A118590.P6917821972337315944

`p?[A267635(A001223(n+1))+A000040(n+2)]`
-/

namespace A118590.P6917821972337315944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 (A001223 (n + 1)).toNat + A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118590.P6917821972337315944

namespace A118590

/-- `p?[A267635(A001223(n+1))+A000040(n+2)]` -/
def P6917821972337315944.Spec : Prop :=
  ∀ n, P6917821972337315944.a n = A118590 (n + 1)

end A118590

/-! ## A118590.P8103435844990312210

`p?[A007913(A139693(A045344(n+1)))]`
-/

namespace A118590.P8103435844990312210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A139693 (A045344 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118590.P8103435844990312210

namespace A118590

/-- `p?[A007913(A139693(A045344(n+1)))]` -/
def P8103435844990312210.Spec : Prop :=
  ∀ n, P8103435844990312210.a n = A118590 (n + 1)

end A118590

/-! ## A118590.P1468011264478779191

`p?[A007913(A001223(n+1)*A065091(n+1))]`
-/

namespace A118590.P1468011264478779191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A001223 (n + 1) * A065091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118590.P1468011264478779191

namespace A118590

/-- `p?[A007913(A001223(n+1)*A065091(n+1))]` -/
def P1468011264478779191.Spec : Prop :=
  ∀ n, P1468011264478779191.a n = A118590 (n + 1)

end A118590

/-! ## A118590.P12229663687329368100

`p?[A083346(A001223(n+1)*A065091(n+1))]`
-/

namespace A118590.P12229663687329368100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (A001223 (n + 1) * A065091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118590.P12229663687329368100

namespace A118590

/-- `p?[A083346(A001223(n+1)*A065091(n+1))]` -/
def P12229663687329368100.Spec : Prop :=
  ∀ n, P12229663687329368100.a n = A118590 (n + 1)

end A118590

/-! ## A118590.P13820890178148342017

`A046132(n+1)%A118751(n)²`
-/

namespace A118590.P13820890178148342017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046132 (n + 1)) (A118751 n ^ 2)

end

end A118590.P13820890178148342017

namespace A118590

/-- `A046132(n+1)%A118751(n)²` -/
def P13820890178148342017.Spec : Prop :=
  ∀ n, P13820890178148342017.a n = A118590 (n + 1)

end A118590

/-! ## A118590.P13189248664951544962

`A066168(A145897(n+1))`
-/

namespace A118590.P13189248664951544962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066168 (A145897 (n + 1)).toNat

end

end A118590.P13189248664951544962

namespace A118590

/-- `A066168(A145897(n+1))` -/
def P13189248664951544962.Spec : Prop :=
  ∀ n, P13189248664951544962.a n = A118590 (n + 1)

end A118590

/-!
# A118591: Larger of two consecutive primes whose sum is a square.

The programs for A118591, there is no canonical definition to state claims against.
-/

/-! ## A118591.P5609616089259243282

`A151800(A061275(n+1))`
-/

namespace A118591.P5609616089259243282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A061275 (n + 1)).toNat

end

end A118591.P5609616089259243282

/-! ## A118591.P7261434097285320793

`A062703(n+1)-A061275(n+1)`
-/

namespace A118591.P7261434097285320793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062703 (n + 1) - A061275 (n + 1)

end

end A118591.P7261434097285320793

/-! ## A118591.P16995636841409536606

`A074924(n+1)²-A061275(n+1)`
-/

namespace A118591.P16995636841409536606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074924 (n + 1) ^ 2 - A061275 (n + 1)

end

end A118591.P16995636841409536606

/-! ## A118591.P9391690648026459564

`lcm(2, A074924(n+1))^A020639(2*(n+1))-A061275(n+1)`
-/

namespace A118591.P9391690648026459564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A074924 (n + 1)) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ) - (A061275 (n + 1) : ℚ)

end

end A118591.P9391690648026459564

/-! ## A118591.P16581527727439447277

`(2*A139013(n+1))²-A061275(n+1)`
-/

namespace A118591.P16581527727439447277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A139013 (n + 1)) ^ 2 - A061275 (n + 1)

end

end A118591.P16581527727439447277

/-! ## A118591.P14490364355301678335

`(A139013(n+1)+A139013(Δ[n²]-n))²-A061275(n+1)`
-/

namespace A118591.P14490364355301678335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A139013 (n + 1) + A139013 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat) ^ 2 - A061275 (n + 1)

end

end A118591.P14490364355301678335

/-! ## A118591.P4444160009499811094

`A062703(n+1)+-A061275(n+1)%A252019(n+1)`
-/

namespace A118591.P4444160009499811094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062703 (n + 1) + Int.tmod (-A061275 (n + 1)) (A252019 (n + 1))

end

end A118591.P4444160009499811094

/-! ## A118591.P15846480599242369634

`A016742(A139013(n+1))-A061275(n+1)`
-/

namespace A118591.P15846480599242369634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 (A139013 (n + 1)).toNat - A061275 (n + 1)

end

end A118591.P15846480599242369634

/-! ## A118591.P6355633443451565982

`A004275(A139013(n+1)+1)²-A061275(n+1)`
-/

namespace A118591.P6355633443451565982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A139013 (n + 1) + 1).toNat ^ 2 - A061275 (n + 1)

end

end A118591.P6355633443451565982

/-! ## A118591.P6607232309361575601

`A051755(A139013(n+1)+1)²-A061275(n+1)`
-/

namespace A118591.P6607232309361575601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (A139013 (n + 1) + 1).toNat ^ 2 - A061275 (n + 1)

end

end A118591.P6607232309361575601

/-! ## A118591.P11669400710606754176

`A103517(A139013(n+1)-1)²-A061275(n+1)`
-/

namespace A118591.P11669400710606754176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A139013 (n + 1) - 1).toNat ^ 2 - A061275 (n + 1)

end

end A118591.P11669400710606754176

/-! ## A118591.P10152901627320397879

`A000290(2*A139013(n+1))-A061275(n+1)`
-/

namespace A118591.P10152901627320397879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A139013 (n + 1)).toNat - A061275 (n + 1)

end

end A118591.P10152901627320397879

/-! ## A118591.P17836535601461078545

`A000463(2*A074924(n+1))-A061275(n+1)`
-/

namespace A118591.P17836535601461078545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (2 * A074924 (n + 1)).toNat - A061275 (n + 1)

end

end A118591.P17836535601461078545

/-!
# A118592: Compound prime numbers. A prime is compound if its decimal digits can be divided into two contiguous subsets with equal sum.

The programs for A118592, there is no canonical definition to state claims against.
-/

/-! ## A118592.P2306180446927968196

`p?[A083967(n+1)]`
-/

namespace A118592.P2306180446927968196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118592.P2306180446927968196

/-! ## A118592.P7160364150700056868

`filter[A083967(n+1), A010051(#)]`
-/

namespace A118592.P7160364150700056868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A118592.P7160364150700056868

/-! ## A118592.P10262835827008137209

`filter[A083967(n+1), A080339(#)]`
-/

namespace A118592.P10262835827008137209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A118592.P10262835827008137209

/-! ## A118592.P5290363899065502321

`filter[A083967(n+1), A080545(#)]`
-/

namespace A118592.P5290363899065502321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A118592.P5290363899065502321

/-! ## A118592.P11482776921445014955

`filter[A083967(n+1), A171387(#)]`
-/

namespace A118592.P11482776921445014955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A118592.P11482776921445014955

/-!
# A118593: Larger member of twin prime pairs whose sum is a square.

The programs for A118593, there is no canonical definition to state claims against.
-/

/-! ## A118593.P14417003980123358684

`A069496(n+1)+2`
-/

namespace A118593.P14417003980123358684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069496 (n + 1) + 2

end

end A118593.P14417003980123358684

/-! ## A118593.P9087132304099992674

`A154670(n+1)+1`
-/

namespace A118593.P9087132304099992674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154670 (n + 1) + 1

end

end A118593.P9087132304099992674

/-! ## A118593.P6835226228056345231

`A037072(n+1)/2+1`
-/

namespace A118593.P6835226228056345231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037072 (n + 1) : ℚ) / 2 + 1

end

end A118593.P6835226228056345231

/-! ## A118593.P1597404197733702630

`or(1, A154670(-xor(n, -1)))`
-/

namespace A118593.P1597404197733702630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A154670 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A118593.P1597404197733702630

/-! ## A118593.P8490296389775195319

`2*A173165(n+1)²+1`
-/

namespace A118593.P8490296389775195319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173165 (n + 1) ^ 2 + 1

end

end A118593.P8490296389775195319

/-! ## A118593.P11849608350838044233

`A152786(n+1)²/2+1`
-/

namespace A118593.P11849608350838044233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152786 (n + 1) ^ 2 : ℚ) / 2 + 1

end

end A118593.P11849608350838044233

/-! ## A118593.P16405021142136445413

`A152786(n+1)*A173165(n+1)+1`
-/

namespace A118593.P16405021142136445413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152786 (n + 1) * A173165 (n + 1) + 1

end

end A118593.P16405021142136445413

/-! ## A118593.P18238748564276734708

`A232878(2*(n+1))`
-/

namespace A118593.P18238748564276734708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232878 (2 * (n + 1))

end

end A118593.P18238748564276734708

/-! ## A118593.P6399303246192513773

`A232878(Δ[n²])+2`
-/

namespace A118593.P6399303246192513773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232878 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A118593.P6399303246192513773

/-! ## A118593.P14226777093745644172

`∩[A232878(n+1), A270231(n+1)+2]`
-/

namespace A118593.P14226777093745644172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270231 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118593.P14226777093745644172

/-! ## A118593.P12415916284101055003

`∩[A119768(n+1), A335410(n+1)]`
-/

namespace A118593.P12415916284101055003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118593.P12415916284101055003

/-! ## A118593.P10588562945525665958

`∩[A232878(n+1), A335410(n+1)]`
-/

namespace A118593.P10588562945525665958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118593.P10588562945525665958

/-! ## A118593.P3102705118369481562

`∩[A118591(n+1), A119768(n+1)]`
-/

namespace A118593.P3102705118369481562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118593.P3102705118369481562

/-! ## A118593.P3850881853637489405

`∩[A118591(n+1), A232878(n+1)]`
-/

namespace A118593.P3850881853637489405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118593.P3850881853637489405

/-! ## A118593.P18060482232100308798

`∩[A061275(n+1)+2, A119768(n+1)]`
-/

namespace A118593.P18060482232100308798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061275 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118593.P18060482232100308798

/-! ## A118593.P8549534437901770708

`∩[A061275(n+1)+2, A232878(n+1)]`
-/

namespace A118593.P8549534437901770708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061275 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118593.P8549534437901770708

/-! ## A118593.P16094932000974088470

`∩[A091624(n+1)+2, A232878(n+1)]`
-/

namespace A118593.P16094932000974088470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091624 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118593.P16094932000974088470

/-! ## A118593.P6584147686104486592

`∩[A090698(n+1), A118591(n+1)]`
-/

namespace A118593.P6584147686104486592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118593.P6584147686104486592

/-! ## A118593.P610082310166162551

`∩[A090698(n+1), A232878(n+1)]`
-/

namespace A118593.P610082310166162551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118593.P610082310166162551

/-! ## A118593.P7312710450248458973

`∩[A090698(n+1), A335410(n+1)]`
-/

namespace A118593.P7312710450248458973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118593.P7312710450248458973

/-!
# A118594: Palindromes in base 3 (written in base 3).

The programs for A118594, there is no canonical definition to state claims against.
-/

/-! ## A118594.P32058974887558110

`∩[A018846(n+1), A118595(n+1)]`
-/

namespace A118594.P32058974887558110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118594.P32058974887558110

/-! ## A118594.P11772330740432275057

`∩[A018846(n+1), A118596(n+1)]`
-/

namespace A118594.P11772330740432275057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118594.P11772330740432275057

/-! ## A118594.P365715433368269198

`∩[A018846(n+1), A365374(n+1)]`
-/

namespace A118594.P365715433368269198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118594.P365715433368269198

/-! ## A118594.P10271681654093503474

`A007089(record[A265511(n)])`
-/

namespace A118594.P10271681654093503474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A118594.P10271681654093503474

/-! ## A118594.P7037139174710534743

`A305877(record[A265511(n)])`
-/

namespace A118594.P7037139174710534743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305877 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A118594.P7037139174710534743

/-! ## A118594.P11899089059684712998

`A007089(A014190(n+1))`
-/

namespace A118594.P11899089059684712998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A014190 (n + 1)).toNat

end

end A118594.P11899089059684712998

/-! ## A118594.P17244111835595049054

`A007089(eq[n, A030102(n)])`
-/

namespace A118594.P17244111835595049054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A118594.P17244111835595049054

/-! ## A118594.P12780971248218608954

`record[gcd(A007089(n), A055947(n))]`
-/

namespace A118594.P12780971248218608954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007089 n) (A055947 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118594.P12780971248218608954

/-! ## A118594.P10239611553616454789

`∩[A018846(n+1), A007089(n)]`
-/

namespace A118594.P10239611553616454789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118594.P10239611553616454789

/-! ## A118594.P6765715611459142651

`∩[A118595(n+1), A007089(n)]`
-/

namespace A118594.P6765715611459142651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118594.P6765715611459142651

/-! ## A118594.P587337267055998038

`∩[A118596(n+1), A007089(n)]`
-/

namespace A118594.P587337267055998038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118594.P587337267055998038

/-! ## A118594.P10495765784947343488

`∩[A118597(n+1), A007089(n)]`
-/

namespace A118594.P10495765784947343488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118594.P10495765784947343488

/-! ## A118594.P17521465873484808087

`∩[A118598(n+1), A007089(n)]`
-/

namespace A118594.P17521465873484808087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118594.P17521465873484808087

/-! ## A118594.P11719192839016623340

`∩[A118599(n+1), A007089(n)]`
-/

namespace A118594.P11719192839016623340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118594.P11719192839016623340

/-! ## A118594.P8765929919140325129

`∩[A365374(n+1), A007089(n)]`
-/

namespace A118594.P8765929919140325129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118594.P8765929919140325129

/-! ## A118594.P15696376749187568130

`A007089(record[n-A055947(n)²])`
-/

namespace A118594.P15696376749187568130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055947 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A118594.P15696376749187568130

/-! ## A118594.P5717387644731040360

`A305877(A014190(n+1)%(n+1)²)`
-/

namespace A118594.P5717387644731040360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305877 (Int.tmod (A014190 (n + 1)) ((n + 1) ^ 2 : ℤ)).toNat

end

end A118594.P5717387644731040360

/-! ## A118594.P10356499932945819887

`A007089(eq[A007089(n), A305877(n)])`
-/

namespace A118594.P10356499932945819887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A118594.P10356499932945819887

/-! ## A118594.P4439108512656203318

`∩[A018846(n+1), A344939(n)]`
-/

namespace A118594.P4439108512656203318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344939 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118594.P4439108512656203318

/-! ## A118594.P8219436578094894502

`∩[A367807(n+1), A007089(n)]`
-/

namespace A118594.P8219436578094894502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118594.P8219436578094894502

/-!
# A118595: Palindromes in base 4 (written in base 4).

The programs for A118595, there is no canonical definition to state claims against.
-/

/-! ## A118595.P13496032648462104111

`∩[A118596(n+1), A365374(n+1)]`
-/

namespace A118595.P13496032648462104111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118595.P13496032648462104111

/-! ## A118595.P9318077149669290916

`∩[A118597(n+1), A365374(n+1)]`
-/

namespace A118595.P9318077149669290916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118595.P9318077149669290916

/-! ## A118595.P3928557645017812999

`∩[A118598(n+1), A365374(n+1)]`
-/

namespace A118595.P3928557645017812999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118595.P3928557645017812999

/-! ## A118595.P3774212554588324179

`∩[A118599(n+1), A365374(n+1)]`
-/

namespace A118595.P3774212554588324179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118595.P3774212554588324179

/-! ## A118595.P13011811178058674721

`∩[A365374(n+1), A367807(n+1)]`
-/

namespace A118595.P13011811178058674721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118595.P13011811178058674721

/-! ## A118595.P14337175380880762179

`∩[A002113(n+1), A095984(n+1)]`
-/

namespace A118595.P14337175380880762179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118595.P14337175380880762179

/-! ## A118595.P7252095816709985250

`∩[A095984(n+1), A118596(n+1)]`
-/

namespace A118595.P7252095816709985250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118595.P7252095816709985250

/-! ## A118595.P657099185215067926

`∩[A095984(n+1), A118597(n+1)]`
-/

namespace A118595.P657099185215067926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118595.P657099185215067926

/-! ## A118595.P15851211879467345633

`∩[A095984(n+1), A118598(n+1)]`
-/

namespace A118595.P15851211879467345633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118598 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118595.P15851211879467345633

/-! ## A118595.P16985676148528256815

`∩[A095984(n+1), A118599(n+1)]`
-/

namespace A118595.P16985676148528256815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118595.P16985676148528256815

/-! ## A118595.P13935352470053786245

`∩[A095984(n+1), A118600(n+1)]`
-/

namespace A118595.P13935352470053786245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118595.P13935352470053786245

/-! ## A118595.P4076669181256347969

`∩[A002113(n+1), A365374(n+1)]`
-/

namespace A118595.P4076669181256347969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118595.P4076669181256347969

/-! ## A118595.P17319796416075400309

`∩[A118600(n+1), A365374(n+1)]`
-/

namespace A118595.P17319796416075400309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118595.P17319796416075400309

/-! ## A118595.P11314615584477103803

`∩[A061917(n+1), A095984(n+1)]`
-/

namespace A118595.P11314615584477103803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118595.P11314615584477103803

/-! ## A118595.P1056944587157601390

`∩[A061917(n+1), A365374(n+1)]`
-/

namespace A118595.P1056944587157601390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118595.P1056944587157601390

/-! ## A118595.P11805973218987240591

`A007090(A014192(n+1))`
-/

namespace A118595.P11805973218987240591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A014192 (n + 1)).toNat

end

end A118595.P11805973218987240591

/-! ## A118595.P2027704975774870130

`A007090(eq[n, A030103(n)])`
-/

namespace A118595.P2027704975774870130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A118595.P2027704975774870130

/-! ## A118595.P6340838519580828154

`A007090(eq[n, A265546(n)])`
-/

namespace A118595.P6340838519580828154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265546 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A118595.P6340838519580828154

/-! ## A118595.P18128205703159118056

`record[gcd(A007090(n), A055949(n))]`
-/

namespace A118595.P18128205703159118056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007090 n) (A055949 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118595.P18128205703159118056

/-! ## A118595.P940971875303303877

`A007090(record[and(n, A030103(n))])`
-/

namespace A118595.P940971875303303877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A030103 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A118595.P940971875303303877

/-!
# A118596: Palindromes in base 5 (written in base 5).

The programs for A118596, there is no canonical definition to state claims against.
-/

/-! ## A118596.P5413620674471379835

`A062287(n+1)/2`
-/

namespace A118596.P5413620674471379835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062287 (n + 1) : ℚ) / 2

end

end A118596.P5413620674471379835

/-! ## A118596.P4672085589454663663

`∩[A118597(n+1), A367807(n+1)]`
-/

namespace A118596.P4672085589454663663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118596.P4672085589454663663

/-! ## A118596.P17016241972169486401

`∩[A118598(n+1), A367807(n+1)]`
-/

namespace A118596.P17016241972169486401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118596.P17016241972169486401

/-! ## A118596.P14111613440782930958

`∩[A118599(n+1), A367807(n+1)]`
-/

namespace A118596.P14111613440782930958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118596.P14111613440782930958

/-! ## A118596.P12301322197970744097

`∩[A002113(n+1), A367807(n+1)]`
-/

namespace A118596.P12301322197970744097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118596.P12301322197970744097

/-! ## A118596.P2319153867763471415

`∩[A118600(n+1), A367807(n+1)]`
-/

namespace A118596.P2319153867763471415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118596.P2319153867763471415

/-! ## A118596.P12685511844969042424

`∩[A061917(n+1), A367807(n+1)]`
-/

namespace A118596.P12685511844969042424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118596.P12685511844969042424

/-! ## A118596.P1896537561368443331

`∩[A306273(n+1), A367807(n+1)]`
-/

namespace A118596.P1896537561368443331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118596.P1896537561368443331

/-! ## A118596.P9132156229930631681

`∩[A278328(n+1), A367807(n+1)]`
-/

namespace A118596.P9132156229930631681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118596.P9132156229930631681

/-! ## A118596.P13259985866964271817

`∩[A334145(n+1), A367807(n+1)]`
-/

namespace A118596.P13259985866964271817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118596.P13259985866964271817

/-! ## A118596.P16960195784008154953

`A007091(A029952(n+1))`
-/

namespace A118596.P16960195784008154953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A029952 (n + 1)).toNat

end

end A118596.P16960195784008154953

/-! ## A118596.P10062913612580877156

`A007091(eq[0, A055951(n)])`
-/

namespace A118596.P10062913612580877156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A118596.P10062913612580877156

/-! ## A118596.P9340712002471121834

`A007091(eq[n, A030104(n)])`
-/

namespace A118596.P9340712002471121834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A118596.P9340712002471121834

/-! ## A118596.P17352472339136740904

`record[gcd(A007091(n), A071241(n))]`
-/

namespace A118596.P17352472339136740904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007091 n) (A071241 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118596.P17352472339136740904

/-! ## A118596.P7846425202601919492

`∩[A002113(n+1), A007091(n)]`
-/

namespace A118596.P7846425202601919492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118596.P7846425202601919492

/-! ## A118596.P9191458929487964065

`∩[A118597(n+1), A007091(n)]`
-/

namespace A118596.P9191458929487964065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118596.P9191458929487964065

/-! ## A118596.P93765030604533424

`∩[A118598(n+1), A007091(n)]`
-/

namespace A118596.P93765030604533424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118596.P93765030604533424

/-! ## A118596.P9508586157091255557

`∩[A118599(n+1), A007091(n)]`
-/

namespace A118596.P9508586157091255557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118596.P9508586157091255557

/-! ## A118596.P10437496288186617654

`∩[A118600(n+1), A007091(n)]`
-/

namespace A118596.P10437496288186617654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118596.P10437496288186617654

/-! ## A118596.P675484777853717449

`∩[A007091(n), A367807(n+1)]`
-/

namespace A118596.P675484777853717449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118596.P675484777853717449

/-!
# A118597: Palindromes in base 6 (written in base 6).

The programs for A118597, there is no canonical definition to state claims against.
-/

/-! ## A118597.P9900112888884426032

`A007092(A029953(n+1))`
-/

namespace A118597.P9900112888884426032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A029953 (n + 1)).toNat

end

end A118597.P9900112888884426032

/-! ## A118597.P9677754812340444731

`A007092(eq[n, A030105(n)])`
-/

namespace A118597.P9677754812340444731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A118597.P9677754812340444731

/-! ## A118597.P15770080990809240894

`∩[A002113(n+1), A007092(n)]`
-/

namespace A118597.P15770080990809240894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118597.P15770080990809240894

/-! ## A118597.P2641469994111871516

`∩[A118598(n+1), A007092(n)]`
-/

namespace A118597.P2641469994111871516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118597.P2641469994111871516

/-! ## A118597.P13854137258702140744

`∩[A118599(n+1), A007092(n)]`
-/

namespace A118597.P13854137258702140744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118597.P13854137258702140744

/-! ## A118597.P13536239099032530411

`∩[A118600(n+1), A007092(n)]`
-/

namespace A118597.P13536239099032530411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118597.P13536239099032530411

/-! ## A118597.P18085425027477541056

`∩[A007092(n), A222620(n+1)]`
-/

namespace A118597.P18085425027477541056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118597.P18085425027477541056

/-! ## A118597.P9559212790266187023

`record[A007092(n)/(1-A030105(n)+n)]`
-/

namespace A118597.P9559212790266187023
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007092 n : ℚ) / (1 - A030105 n + (n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118597.P9559212790266187023

/-! ## A118597.P17346036550483012594

`∩[A039150(n+1), A118598(n+1)]`
-/

namespace A118597.P17346036550483012594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118598 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118597.P17346036550483012594

/-! ## A118597.P8927218357594649189

`∩[A039151(n+1), A118598(n+1)]`
-/

namespace A118597.P8927218357594649189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118598 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118597.P8927218357594649189

/-! ## A118597.P536374740397612235

`∩[A039152(n+1), A118598(n+1)]`
-/

namespace A118597.P536374740397612235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118598 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118597.P536374740397612235

/-! ## A118597.P17947678979686649918

`∩[A052414(n+1), A118598(n+1)]`
-/

namespace A118597.P17947678979686649918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118598 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118597.P17947678979686649918

/-!
# A118598: Palindromes in base 7 (written in base 7).

The programs for A118598, there is no canonical definition to state claims against.
-/

/-! ## A118598.P7646256011323673437

`A007093(A029954(n+1))`
-/

namespace A118598.P7646256011323673437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A029954 (n + 1)).toNat

end

end A118598.P7646256011323673437

/-! ## A118598.P15003928545383235918

`A007093(eq[0, A055955(n)])`
-/

namespace A118598.P15003928545383235918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A118598.P15003928545383235918

/-! ## A118598.P1841796066951281952

`A007093(eq[n, A030106(n)])`
-/

namespace A118598.P1841796066951281952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030106 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A118598.P1841796066951281952

/-! ## A118598.P9065487223785272261

`∩[A002113(n+1), A007093(n)]`
-/

namespace A118598.P9065487223785272261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118598.P9065487223785272261

/-! ## A118598.P4271920359397470055

`∩[A118599(n+1), A007093(n)]`
-/

namespace A118598.P4271920359397470055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118598.P4271920359397470055

/-! ## A118598.P7782668939791658462

`∩[A118600(n+1), A007093(n)]`
-/

namespace A118598.P7782668939791658462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118598.P7782668939791658462

/-! ## A118598.P17353320093062904314

`∩[A039153(n+1), A118599(n+1)]`
-/

namespace A118598.P17353320093062904314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118598.P17353320093062904314

/-! ## A118598.P16120691726421244799

`∩[A039154(n+1), A118599(n+1)]`
-/

namespace A118598.P16120691726421244799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118598.P16120691726421244799

/-! ## A118598.P14018737128382135292

`∩[A052419(n+1), A118599(n+1)]`
-/

namespace A118598.P14018737128382135292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118598.P14018737128382135292

/-! ## A118598.P4378906890844951987

`record[A047813(A007093(n))]`
-/

namespace A118598.P4378906890844951987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A007093 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118598.P4378906890844951987

/-!
# A118599: Palindromes in base 8 (written in base 8).

The programs for A118599, there is no canonical definition to state claims against.
-/

/-! ## A118599.P15156769040380242466

`A007094(A029803(n+1))`
-/

namespace A118599.P15156769040380242466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A029803 (n + 1)).toNat

end

end A118599.P15156769040380242466

/-! ## A118599.P12838197487799475542

`A007094(eq[n, A030107(n)])`
-/

namespace A118599.P12838197487799475542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A118599.P12838197487799475542

/-! ## A118599.P6199741722660098244

`∩[A002113(n+1), A007094(n)]`
-/

namespace A118599.P6199741722660098244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118599.P6199741722660098244

/-! ## A118599.P14862480170048818246

`∩[A118600(n+1), A007094(n)]`
-/

namespace A118599.P14862480170048818246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118599.P14862480170048818246

/-! ## A118599.P9948083754532868687

`∩[A039155(n+1), A118600(n+1)]`
-/

namespace A118599.P9948083754532868687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118599.P9948083754532868687

/-! ## A118599.P2654170305727591640

`∩[A052421(n+1), A118600(n+1)]`
-/

namespace A118599.P2654170305727591640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118599.P2654170305727591640

/-! ## A118599.P5108707273315324103

`record[A047813(A007094(n))]`
-/

namespace A118599.P5108707273315324103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A007094 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118599.P5108707273315324103

/-! ## A118599.P3925308818533243979

`filter[A007094(n), A136522(#)]`
-/

namespace A118599.P3925308818533243979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A118599.P3925308818533243979

/-! ## A118599.P11978978281313739491

`eq[A056965(n), A102681(n)]`
-/

namespace A118599.P11978978281313739491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118599.P11978978281313739491

/-! ## A118599.P2690108802219951149

`eq[n, A020485(A222254(n))]`
-/

namespace A118599.P2690108802219951149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 (A222254 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118599.P2690108802219951149

/-! ## A118599.P11527485741183133785

`eq[n, A222254(A047813(n))]`
-/

namespace A118599.P11527485741183133785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A047813 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118599.P11527485741183133785

/-! ## A118599.P3603319117141372995

`eq[A082216(n), A222254(n)]`
-/

namespace A118599.P3603319117141372995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118599.P3603319117141372995

/-! ## A118599.P16466643382222191613

`eq[A102681(n), A256756(n)]`
-/

namespace A118599.P16466643382222191613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118599.P16466643382222191613

/-! ## A118599.P1101468831192585228

`eq[A102681(n), A338827(n)]`
-/

namespace A118599.P1101468831192585228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338827 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118599.P1101468831192585228

/-! ## A118599.P813304489648385815

`eq[n, A222254(A261423(n))]`
-/

namespace A118599.P813304489648385815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A261423 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118599.P813304489648385815

/-! ## A118599.P11085735844222660722

`eq[n, A222254(A262038(n))]`
-/

namespace A118599.P11085735844222660722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A262038 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118599.P11085735844222660722

/-! ## A118599.P465058351733604914

`eq[A222254(n), A262037(n)]`
-/

namespace A118599.P465058351733604914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262037 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118599.P465058351733604914

/-! ## A118599.P10625498250678634911

`eq[n, A222254(A262087(n))]`
-/

namespace A118599.P10625498250678634911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A262087 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118599.P10625498250678634911

/-! ## A118599.P1266442946927381202

`eq[n, A222254(A265525(n))]`
-/

namespace A118599.P1266442946927381202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A265525 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118599.P1266442946927381202

/-! ## A118599.P3658411654017434449

`eq[n, A222254(A265558(n))]`
-/

namespace A118599.P3658411654017434449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A265558 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118599.P3658411654017434449

