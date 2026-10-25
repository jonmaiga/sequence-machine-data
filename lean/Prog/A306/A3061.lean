import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A306100: Square array T(n,k) = number of plane partitions of n with parts colored in (at most) k colors; n >= 0, k >= 0; read by antidiagonals.

The programs for A306100, there is no canonical definition to state claims against.
-/

/-! ## A306100.P16433272657897554919

`A340986(n)%p?[A290353(n)]`
-/

namespace A306100.P16433272657897554919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340986 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A306100.P16433272657897554919

/-! ## A306100.P4454969211182995453

`A219071(A123125(n))+A214776(n)`
-/

namespace A306100.P4454969211182995453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219071 (A123125 n).toNat + A214776 n

end

end A306100.P4454969211182995453

/-! ## A306100.P17143697978827516637

`A320079(n)%A180414(A325250(n))`
-/

namespace A306100.P17143697978827516637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320079 n) (A180414 (A325250 n).toNat)

end

end A306100.P17143697978827516637

/-! ## A306100.P10863197742074598813

`A294046(n)%A061395(A339657(3*n+5))`
-/

namespace A306100.P10863197742074598813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294046 n) (A061395 (A339657 (3 * n + 5)).toNat)

end

end A306100.P10863197742074598813

/-! ## A306100.P2347283705020158156

`A063037(A143325(n+1)+1)%A329866(3*n+4)`
-/

namespace A306100.P2347283705020158156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063037 (A143325 (n + 1) + 1).toNat) (A329866 (3 * n + 4))

end

end A306100.P2347283705020158156

/-!
# A306101: Square array T(n,k) = number of plane partitions of n with parts colored in (at most) k colors; n, k >= 1; read by antidiagonals.

The programs for A306101, there is no canonical definition to state claims against.
-/

/-! ## A306101.P1392975719807098495

`A306100(lt[1, A002262(n+1)])`
-/

namespace A306101.P1392975719807098495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A306101.P1392975719807098495

/-! ## A306101.P3929483444718474536

`A306100(lt[1, A002262(n)]-1)`
-/

namespace A306101.P3929483444718474536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n - 1)

end

end A306101.P3929483444718474536

/-! ## A306101.P15882439637900070283

`A306100(eq[n, A316669(n+1)])`
-/

namespace A306101.P15882439637900070283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306101.P15882439637900070283

/-! ## A306101.P3959424421188080452

`A306100(comp[lt[A306100(n+1), 2]+1])`
-/

namespace A306101.P3959424421188080452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306100 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306100 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A306101.P3959424421188080452

/-! ## A306101.P9107989491794008978

`A306100(lt[n, A076905(n+1)*A306100(n)])`
-/

namespace A306101.P9107989491794008978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076905 (n + 1) * A306100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A306101.P9107989491794008978

/-! ## A306101.P17329184333013141427

`A306100(lt[n, A306100(n)^3])`
-/

namespace A306101.P17329184333013141427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306100 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A306101.P17329184333013141427

/-! ## A306101.P10024636219924175205

`A306100(lt[n, A306100(n)²²])`
-/

namespace A306101.P10024636219924175205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A306100 n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A306101.P10024636219924175205

/-! ## A306101.P6731567190568739911

`A306100(lt[1, A306136(n+1)])`
-/

namespace A306101.P6731567190568739911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A306101.P6731567190568739911

/-! ## A306101.P6387397306106419760

`A306100(lt[A306108(n+1), A306143(n+1)])`
-/

namespace A306101.P6387397306106419760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306100 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A306101.P6387397306106419760

/-! ## A306101.P696683106418227690

`A306100(lt[A306129(n+1), A306143(n+1)])`
-/

namespace A306101.P696683106418227690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306100 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A306101.P696683106418227690

/-!
# A306102: Numbers that are the difference of two positive squares in at least two ways.

The programs for A306102, there is no canonical definition to state claims against.
-/

/-! ## A306102.P13218848848742085934

`lt[1, A100073(n+1)]+1`
-/

namespace A306102.P13218848848742085934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100073 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A306102.P13218848848742085934

/-! ## A306102.P2035304916068294858

`lt[3, A112329(n+1)]+1`
-/

namespace A306102.P2035304916068294858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A306102.P2035304916068294858

/-! ## A306102.P3016931877870448292

`lt[6, A094572(n+1)]+1`
-/

namespace A306102.P3016931877870448292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094572 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A306102.P3016931877870448292

/-! ## A306102.P7153551755464299945

`eq[1, log2(a(A100073(n)))]` with `a(0)=4, a(1)=4`
-/

namespace A306102.P7153551755464299945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.rec [4, 4] fun n f2 =>
  Real.logb 2 (f2 (A100073 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A306102.P7153551755464299945

/-! ## A306102.P6030024495134492183

`lt[4, A325937(n+1)²]+1`
-/

namespace A306102.P6030024495134492183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A306102.P6030024495134492183

/-! ## A306102.P17496438846530975570

`eq[1, A000007(a(A100073(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A306102.P17496438846530975570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A000007 (f2 (A100073 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A306102.P17496438846530975570

/-! ## A306102.P5143612598823389649

`eq[1, A000122(a(A100073(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A306102.P5143612598823389649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A000122 (f2 (A100073 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A306102.P5143612598823389649

/-! ## A306102.P14993945325182851928

`eq[1, A000700(a(A100073(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A306102.P14993945325182851928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A000700 (f2 (A100073 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A306102.P14993945325182851928

/-! ## A306102.P7479142207485585564

`eq[1, A000010(a(A100073(n)))]` with `a(0)=3, a(1)=3`
-/

namespace A306102.P7479142207485585564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  A000010 (f2 (A100073 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A306102.P7479142207485585564

/-! ## A306102.P3517885721149989233

`eq[1, A001222(a(A100073(n)))]` with `a(0)=4, a(1)=4`
-/

namespace A306102.P3517885721149989233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n f2 =>
  A001222 (f2 (A100073 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A306102.P3517885721149989233

/-!
# A306103: Numbers that are the difference of two positive squares in at least three ways.

The programs for A306103, the canonical program `A306103.P9402762575199565456` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306103 has offset 1).

The definition of A306103 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306103.P9402762575199565456

`lt[2, A100073(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A306103

/-- `lt[2, A100073(n+1)]+1` -/
def P9402762575199565456.Spec : Prop :=
  ∀ n, (P9402762575199565456.a n : ℤ) = A306103 (n + 1)

theorem P9402762575199565456.correct : P9402762575199565456.Spec := by
  intro n
  simp only [A306103, Nat.add_sub_cancel]

end A306103

/-! ## A306103.P6989137663377677107

`eq[1, A000045(a(A100073(n)²))]` with `a(0)=4`
-/

namespace A306103.P6989137663377677107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A000045 (f2 (A100073 n ^ 2).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A306103.P6989137663377677107

namespace A306103

/-- `eq[1, A000045(a(A100073(n)²))]` -/
def P6989137663377677107.Spec : Prop :=
  ∀ n, (P6989137663377677107.a n : ℤ) = A306103 (n + 1)

end A306103

/-! ## A306103.P3446723836830881113

`eq[1, A000010(a(A100073(n)²))]` with `a(0)=5`
-/

namespace A306103.P3446723836830881113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f2 =>
  A000010 (f2 (A100073 n ^ 2).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A306103.P3446723836830881113

namespace A306103

/-- `eq[1, A000010(a(A100073(n)²))]` -/
def P3446723836830881113.Spec : Prop :=
  ∀ n, (P3446723836830881113.a n : ℤ) = A306103 (n + 1)

end A306103

/-! ## A306103.P11178432118782825115

`eq[1, A007318(a(A100073(n)²))]` with `a(0)=11`
-/

namespace A306103.P11178432118782825115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [11] fun n f2 =>
  A007318 (f2 (A100073 n ^ 2).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A306103.P11178432118782825115

namespace A306103

/-- `eq[1, A007318(a(A100073(n)²))]` -/
def P11178432118782825115.Spec : Prop :=
  ∀ n, (P11178432118782825115.a n : ℤ) = A306103 (n + 1)

end A306103

/-! ## A306103.P18021168874779490935

`eq[1, A281084(a(A100073(n)))]` with `a(0)=2, a(1)=2, a(2)=2`
-/

namespace A306103.P18021168874779490935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2] fun n f2 =>
  A281084 (f2 (A100073 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A306103.P18021168874779490935

namespace A306103

/-- `eq[1, A281084(a(A100073(n)))]` -/
def P18021168874779490935.Spec : Prop :=
  ∀ n, (P18021168874779490935.a n : ℤ) = A306103 (n + 1)

end A306103

/-! ## A306103.P17595604968819561024

`eq[1, A307968(a(A100073(n)))]` with `a(0)=2, a(1)=2, a(2)=2`
-/

namespace A306103.P17595604968819561024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2] fun n f2 =>
  A307968 (f2 (A100073 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A306103.P17595604968819561024

namespace A306103

/-- `eq[1, A307968(a(A100073(n)))]` -/
def P17595604968819561024.Spec : Prop :=
  ∀ n, (P17595604968819561024.a n : ℤ) = A306103 (n + 1)

end A306103

/-!
# A306104: Numbers that are the difference of two positive squares in at least four ways.

The programs for A306104, the canonical program `A306104.P6293553733241968653` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306104 has offset 1).

The definition of A306104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2602 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306104.P12702201409136991032

`eq[1, A016361(a(A100073(n)))]` with `a(0)=2, a(1)=2, a(2)=2, a(3)=2`
-/

namespace A306104.P12702201409136991032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2, 2] fun n f2 =>
  A016361 (f2 (A100073 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A306104.P12702201409136991032

namespace A306104

/-- `eq[1, A016361(a(A100073(n)))]` -/
def P12702201409136991032.Spec : Prop :=
  ∀ n, (P12702201409136991032.a n : ℤ) = A306104 (n + 1)

end A306104

/-! ## A306104.P12256547609689999856

`eq[1, A025873(a(A100073(n)))]` with `a(0)=2, a(1)=2, a(2)=2, a(3)=2`
-/

namespace A306104.P12256547609689999856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2, 2] fun n f2 =>
  A025873 (f2 (A100073 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A306104.P12256547609689999856

namespace A306104

/-- `eq[1, A025873(a(A100073(n)))]` -/
def P12256547609689999856.Spec : Prop :=
  ∀ n, (P12256547609689999856.a n : ℤ) = A306104 (n + 1)

end A306104

/-! ## A306104.P6293553733241968653

`eq[1, A049347(a(A100073(n)))]` with `a(0)=2, a(1)=2, a(2)=2, a(3)=2`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A306104

/-- `eq[1, A049347(a(A100073(n)))]` -/
def P6293553733241968653.Spec : Prop :=
  ∀ n, (P6293553733241968653.a n : ℤ) = A306104 (n + 1)

theorem P6293553733241968653.correct : P6293553733241968653.Spec := by
  intro n
  simp only [A306104, Nat.add_sub_cancel]

end A306104

/-! ## A306104.P17158398599513011256

`eq[1, A106143(a(A100073(n)))]` with `a(0)=2, a(1)=2, a(2)=2, a(3)=2`
-/

namespace A306104.P17158398599513011256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2, 2] fun n f2 =>
  A106143 (f2 (A100073 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A306104.P17158398599513011256

namespace A306104

/-- `eq[1, A106143(a(A100073(n)))]` -/
def P17158398599513011256.Spec : Prop :=
  ∀ n, (P17158398599513011256.a n : ℤ) = A306104 (n + 1)

end A306104

/-! ## A306104.P14593848915934829172

`eq[1, A281084(a(A100073(n)))]` with `a(0)=2, a(1)=2, a(2)=2, a(3)=2`
-/

namespace A306104.P14593848915934829172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2, 2] fun n f2 =>
  A281084 (f2 (A100073 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A306104.P14593848915934829172

namespace A306104

/-- `eq[1, A281084(a(A100073(n)))]` -/
def P14593848915934829172.Spec : Prop :=
  ∀ n, (P14593848915934829172.a n : ℤ) = A306104 (n + 1)

end A306104

/-! ## A306104.P1628230514684261902

`eq[1, A307968(a(A100073(n)))]` with `a(0)=2, a(1)=2, a(2)=2, a(3)=2`
-/

namespace A306104.P1628230514684261902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2, 2] fun n f2 =>
  A307968 (f2 (A100073 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A306104.P1628230514684261902

namespace A306104

/-- `eq[1, A307968(a(A100073(n)))]` -/
def P1628230514684261902.Spec : Prop :=
  ∀ n, (P1628230514684261902.a n : ℤ) = A306104 (n + 1)

end A306104

/-!
# A306105: Numbers with digits in {0,1,2} such that every other digit is strictly less than its neighbors.

The programs for A306105, there is no canonical definition to state claims against.
-/

/-! ## A306105.P8296247888902076530

`A007089(A032858(n+1))`
-/

namespace A306105.P8296247888902076530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A032858 (n + 1)).toNat

end

end A306105.P8296247888902076530

/-! ## A306105.P159085397519946440

`∩[A306106(n+1), A007089(n)]`
-/

namespace A306105.P159085397519946440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306105.P159085397519946440

/-! ## A306105.P3183266587753783523

`∩[A306107(n+1), A007089(n)]`
-/

namespace A306105.P3183266587753783523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306105.P3183266587753783523

/-! ## A306105.P2689324104479917309

`∩[A306108(n+1), A007089(n)]`
-/

namespace A306105.P2689324104479917309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306105.P2689324104479917309

/-! ## A306105.P5540695624018759461

`∩[A306109(n+1), A007089(n)]`
-/

namespace A306105.P5540695624018759461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306105.P5540695624018759461

/-! ## A306105.P11548611852217658421

`∩[A306110(n+1), A007089(n)]`
-/

namespace A306105.P11548611852217658421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306105.P11548611852217658421

/-! ## A306105.P15703659401540155244

`∩[A306111(n+1), A007089(n)]`
-/

namespace A306105.P15703659401540155244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306105.P15703659401540155244

/-! ## A306105.P15174592490356188936

`∩[A080228(n+1), A306106(n+1)]`
-/

namespace A306105.P15174592490356188936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306105.P15174592490356188936

/-! ## A306105.P2672882685167294298

`∩[A080228(n+1), A306107(n+1)]`
-/

namespace A306105.P2672882685167294298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306105.P2672882685167294298

/-!
# A306106: Numbers with digits in {0,1,2,3} such that every other digit is strictly less than its neighbors.

The programs for A306106, there is no canonical definition to state claims against.
-/

/-! ## A306106.P4707899817016824668

`A007090(A032859(n+1))`
-/

namespace A306106.P4707899817016824668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A032859 (n + 1)).toNat

end

end A306106.P4707899817016824668

/-! ## A306106.P6357071804561887196

`∩[A306107(n+1), A007090(n)]`
-/

namespace A306106.P6357071804561887196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306106.P6357071804561887196

/-! ## A306106.P8766242036796288046

`∩[A306108(n+1), A007090(n)]`
-/

namespace A306106.P8766242036796288046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306106.P8766242036796288046

/-! ## A306106.P1260562107071876236

`∩[A306109(n+1), A007090(n)]`
-/

namespace A306106.P1260562107071876236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306106.P1260562107071876236

/-! ## A306106.P11821052613410240653

`∩[A306110(n+1), A007090(n)]`
-/

namespace A306106.P11821052613410240653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306106.P11821052613410240653

/-! ## A306106.P7779463689617670344

`∩[A306111(n+1), A007090(n)]`
-/

namespace A306106.P7779463689617670344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306106.P7779463689617670344

/-! ## A306106.P2485388093943731253

`∩[A202267(n+1), A306107(n+1)]`
-/

namespace A306106.P2485388093943731253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306106.P2485388093943731253

/-! ## A306106.P13418713288523032949

`∩[A032865(n+1), A007090(n)]`
-/

namespace A306106.P13418713288523032949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306106.P13418713288523032949

/-! ## A306106.P16571126323469885095

`∩[A008541(n+1), A306107(n+1)]`
-/

namespace A306106.P16571126323469885095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306106.P16571126323469885095

/-! ## A306106.P11438920453379286379

`∩[A008541(n+1), A306108(n+1)]`
-/

namespace A306106.P11438920453379286379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306106.P11438920453379286379

/-!
# A306107: Numbers with digits in {0,1,2,3,4} such that every other digit is strictly less than its neighbors.

The programs for A306107, there is no canonical definition to state claims against.
-/

/-! ## A306107.P14594299466063148787

`A007091(A032860(n+1))`
-/

namespace A306107.P14594299466063148787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A032860 (n + 1)).toNat

end

end A306107.P14594299466063148787

/-! ## A306107.P1418725900233011609

`∩[A306108(n+1), A007091(n)]`
-/

namespace A306107.P1418725900233011609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306107.P1418725900233011609

/-! ## A306107.P1490361808409343461

`∩[A306109(n+1), A007091(n)]`
-/

namespace A306107.P1490361808409343461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306107.P1490361808409343461

/-! ## A306107.P6723243981739653494

`∩[A306110(n+1), A007091(n)]`
-/

namespace A306107.P6723243981739653494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306107.P6723243981739653494

/-! ## A306107.P12682801372236146711

`∩[A306111(n+1), A007091(n)]`
-/

namespace A306107.P12682801372236146711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306107.P12682801372236146711

/-! ## A306107.P13592735034245392543

`∩[A032865(n+1), A007091(n)]`
-/

namespace A306107.P13592735034245392543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306107.P13592735034245392543

/-! ## A306107.P14237111627079346521

`∩[A135210(n+1), A306108(n+1)]`
-/

namespace A306107.P14237111627079346521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306107.P14237111627079346521

/-! ## A306107.P4080433317488062829

`∩[A135210(n+1), A306109(n+1)]`
-/

namespace A306107.P4080433317488062829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306107.P4080433317488062829

/-! ## A306107.P10969462585743876956

`∩[A135210(n+1), A306110(n+1)]`
-/

namespace A306107.P10969462585743876956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306107.P10969462585743876956

/-! ## A306107.P6686744781334904191

`∩[A135210(n+1), A306111(n+1)]`
-/

namespace A306107.P6686744781334904191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306107.P6686744781334904191

/-! ## A306107.P11734652558784162725

`∩[A039146(n+1), A306108(n+1)]`
-/

namespace A306107.P11734652558784162725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306107.P11734652558784162725

/-! ## A306107.P1700835640211518107

`∩[A039147(n+1), A306108(n+1)]`
-/

namespace A306107.P1700835640211518107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306107.P1700835640211518107

/-! ## A306107.P3439946764884983595

`∩[A039148(n+1), A306108(n+1)]`
-/

namespace A306107.P3439946764884983595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306107.P3439946764884983595

/-! ## A306107.P1413983490080552447

`∩[A039149(n+1), A306108(n+1)]`
-/

namespace A306107.P1413983490080552447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306107.P1413983490080552447

/-! ## A306107.P14126123796373424439

`∩[A052413(n+1), A306108(n+1)]`
-/

namespace A306107.P14126123796373424439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306107.P14126123796373424439

/-! ## A306107.P16791731102524662773

`A222240(record[A222240(A306108(n+1))])`
-/

namespace A306107.P16791731102524662773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (A306108 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A306107.P16791731102524662773

/-! ## A306107.P11022057665045200574

`A222243(record[A222243(A306110(n+1))])`
-/

namespace A306107.P11022057665045200574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222243 (A306110 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222243 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A306107.P11022057665045200574

/-!
# A306108: Numbers with digits in {0,...,5} such that every other digit is strictly less than its neighbors.

The programs for A306108, there is no canonical definition to state claims against.
-/

/-! ## A306108.P5932148830816085282

`A007092(A032861(n+1))`
-/

namespace A306108.P5932148830816085282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A032861 (n + 1)).toNat

end

end A306108.P5932148830816085282

/-! ## A306108.P1115033120617365567

`∩[A306109(n+1), A007092(n)]`
-/

namespace A306108.P1115033120617365567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306108.P1115033120617365567

/-! ## A306108.P4794013852546337746

`∩[A306110(n+1), A007092(n)]`
-/

namespace A306108.P4794013852546337746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306108.P4794013852546337746

/-! ## A306108.P8667797234158327424

`∩[A306111(n+1), A007092(n)]`
-/

namespace A306108.P8667797234158327424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306108.P8667797234158327424

/-! ## A306108.P10482314832313254895

`∩[A032865(n+1), A007092(n)]`
-/

namespace A306108.P10482314832313254895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306108.P10482314832313254895

/-! ## A306108.P5803919515826837414

`∩[A039150(n+1), A306109(n+1)]`
-/

namespace A306108.P5803919515826837414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306108.P5803919515826837414

/-! ## A306108.P8335980470849785199

`∩[A039151(n+1), A306109(n+1)]`
-/

namespace A306108.P8335980470849785199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306108.P8335980470849785199

/-! ## A306108.P12273608103485398102

`∩[A039152(n+1), A306109(n+1)]`
-/

namespace A306108.P12273608103485398102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306108.P12273608103485398102

/-! ## A306108.P15251367847160456609

`∩[A052414(n+1), A306109(n+1)]`
-/

namespace A306108.P15251367847160456609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306108.P15251367847160456609

/-! ## A306108.P9612230905233549061

`A222246(record[A222246(A306110(n+1))])`
-/

namespace A306108.P9612230905233549061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (A306110 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A306108.P9612230905233549061

/-! ## A306108.P5833977404061109921

`A222248(record[A222248(A306111(n+1))])`
-/

namespace A306108.P5833977404061109921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (A306111 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A306108.P5833977404061109921

/-!
# A306109: Numbers with digits in {0,...,6} such that every other digit is strictly less than its neighbors.

The programs for A306109, there is no canonical definition to state claims against.
-/

/-! ## A306109.P17239406164286272395

`A007093(A032862(n+1))`
-/

namespace A306109.P17239406164286272395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A032862 (n + 1)).toNat

end

end A306109.P17239406164286272395

/-! ## A306109.P57628764695017439

`∩[A032865(n+1), A007093(n)]`
-/

namespace A306109.P57628764695017439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306109.P57628764695017439

/-! ## A306109.P12662451738214657599

`∩[A306110(n+1), A007093(n)]`
-/

namespace A306109.P12662451738214657599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306109.P12662451738214657599

/-! ## A306109.P10984762348408541241

`∩[A306111(n+1), A007093(n)]`
-/

namespace A306109.P10984762348408541241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306109.P10984762348408541241

/-! ## A306109.P2105096605632425241

`∩[A032865(n+1), A007094(A037474(n))]`
-/

namespace A306109.P2105096605632425241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A037474 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306109.P2105096605632425241

/-! ## A306109.P7478927083412581946

`∩[A039153(n+1), A306110(n+1)]`
-/

namespace A306109.P7478927083412581946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306109.P7478927083412581946

/-! ## A306109.P15066680018716711384

`∩[A039154(n+1), A306110(n+1)]`
-/

namespace A306109.P15066680018716711384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306109.P15066680018716711384

/-! ## A306109.P12433284211444153637

`record[A004182(A306110(n+1))]`
-/

namespace A306109.P12433284211444153637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004182 (A306110 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306109.P12433284211444153637

/-! ## A306109.P4971498440611101403

`∩[A052419(n+1), A306110(n+1)]`
-/

namespace A306109.P4971498440611101403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306109.P4971498440611101403

/-! ## A306109.P13220545512964686797

`A222250(record[A222250(A306111(n+1))])`
-/

namespace A306109.P13220545512964686797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 (A306111 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A306109.P13220545512964686797

/-!
# A306110: Numbers with digits in {0,...,7} such that every other digit is strictly less than its neighbors.

The programs for A306110, there is no canonical definition to state claims against.
-/

/-! ## A306110.P9799336797034412795

`A007094(A032863(n+1))`
-/

namespace A306110.P9799336797034412795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A032863 (n + 1)).toNat

end

end A306110.P9799336797034412795

/-! ## A306110.P9212981493850838133

`∩[A032865(n+1), A007094(n)]`
-/

namespace A306110.P9212981493850838133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306110.P9212981493850838133

/-! ## A306110.P7725029784462812773

`∩[A306111(n+1), A007094(n)]`
-/

namespace A306110.P7725029784462812773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306110.P7725029784462812773

/-! ## A306110.P12188123170485176379

`∩[A039155(n+1), A306111(n+1)]`
-/

namespace A306110.P12188123170485176379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306110.P12188123170485176379

/-! ## A306110.P16454000889018998868

`∩[A052421(n+1), A306111(n+1)]`
-/

namespace A306110.P16454000889018998868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306110.P16454000889018998868

/-!
# A306111: Numbers with digits in {0,...,8} such that every other digit is strictly less than its neighbors.

The programs for A306111, there is no canonical definition to state claims against.
-/

/-! ## A306111.P17432052338323242350

`A007095(A032864(n+1))`
-/

namespace A306111.P17432052338323242350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A032864 (n + 1)).toNat

end

end A306111.P17432052338323242350

/-! ## A306111.P7571374749972194673

`∩[A032865(n+1), A007095(n)]`
-/

namespace A306111.P7571374749972194673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306111.P7571374749972194673

/-! ## A306111.P14408337014779325934

`eq[A102683(n), A119328(A213217(n))]`
-/

namespace A306111.P14408337014779325934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119328 (A213217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306111.P14408337014779325934

/-! ## A306111.P16754984384299430116

`eq[A068636(n+1), A347400(n+1)]`
-/

namespace A306111.P16754984384299430116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347400 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306111.P16754984384299430116

/-! ## A306111.P15647298199545548669

`lt[A355852(n+1), A097601(A360443(n+1))]`
-/

namespace A306111.P15647298199545548669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097601 (A360443 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A306111.P15647298199545548669

/-!
# A306115: Largest k such that 5^k has exactly n digits 0 (in base 10), conjectured.

The programs for A306115, there is no canonical definition to state claims against.
-/

/-! ## A306115.P15153623248477855536

`A305925(∑[A305945(n)]-1)`
-/

namespace A306115.P15153623248477855536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305925 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A306115.P15153623248477855536

/-!
# A306117: Largest k such that 7^k has exactly n digits 0 (in base 10), conjectured.

The programs for A306117, there is no canonical definition to state claims against.
-/

/-! ## A306117.P12028564657605791971

`A305927(∑[A305947(n)]-1)`
-/

namespace A306117.P12028564657605791971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305927 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A306117.P12028564657605791971

/-!
# A306118: Largest k such that 8^k has exactly n digits 0 (in base 10), conjectured.

The programs for A306118, there is no canonical definition to state claims against.
-/

/-! ## A306118.P11380556045496435531

`A305928(∑[A305938(n)]-1)`
-/

namespace A306118.P11380556045496435531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305928 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A306118.P11380556045496435531

/-! ## A306118.P4584468629478442796

`A305928(lt[A305928(n+1), A305928(n)])`
-/

namespace A306118.P4584468629478442796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305928 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A306118.P4584468629478442796

/-!
# A306119: Largest k such that 9^k has exactly n digits 0 (in base 10), conjectured.

The programs for A306119, there is no canonical definition to state claims against.
-/

/-! ## A306119.P8205369492210496186

`A305929(lt[A305929(n+1), A305929(n)])`
-/

namespace A306119.P8205369492210496186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305929 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A306119.P8205369492210496186

/-!
# A306121: Numbers that are product of a hexagonal number (A000384) and a square pyramidal numbers (A000330) in at least two ways.

The programs for A306121, there is no canonical definition to state claims against.
-/

/-! ## A306121.P16974217505191150874

`A006918(A026424(2*(n+1))%A191363(n+1))`
-/

namespace A306121.P16974217505191150874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (Int.tmod (A026424 (2 * (n + 1))) (A191363 (n + 1))).toNat

end

end A306121.P16974217505191150874

/-!
# A306123: Number of nXn 0..1 arrays with every element unequal to 0, 1, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306123, there is no canonical definition to state claims against.
-/

/-! ## A306123.P13211822370970629662

`A306129(∑[4*n]+1)`
-/

namespace A306123.P13211822370970629662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306129 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A306123.P13211822370970629662

/-! ## A306123.P9804879273689099719

`record[A306129(Δ[A235355(n)])]`
-/

namespace A306123.P9804879273689099719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306129 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306123.P9804879273689099719

/-! ## A306123.P15752760542315936036

`record[A306129(A330613(n+1))]`
-/

namespace A306123.P15752760542315936036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306129 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306123.P15752760542315936036

/-! ## A306123.P468229026005404029

`A306129(A001844(n))^gcd(11, n)`
-/

namespace A306123.P468229026005404029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306129 (A001844 n).toNat ^ Nat.gcd 11 n

end

end A306123.P468229026005404029

/-! ## A306123.P18212724272818376824

`record[A003982(n)*A306129(n+1)]`
-/

namespace A306123.P18212724272818376824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A306129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306123.P18212724272818376824

/-!
# A306124: Number of n X 3 0..1 arrays with every element unequal to 0, 1, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306124, there is no canonical definition to state claims against.
-/

/-! ## A306124.P10408477030252316309

`A306129(∑[n+2]+4)`
-/

namespace A306124.P10408477030252316309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306129 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A306124.P10408477030252316309

/-! ## A306124.P12016245954706649111

`or(1, A306129(A167614(n+1)))`
-/

namespace A306124.P12016245954706649111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A306129 (A167614 (n + 1)).toNat)

end

end A306124.P12016245954706649111

/-! ## A306124.P7580252039645784971

`record[A306129(n+4)/A124574(n+1)]`
-/

namespace A306124.P7580252039645784971
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306129 (n + 4) : ℚ) / (A124574 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306124.P7580252039645784971

/-! ## A306124.P3948256154918564662

`A306129(A167614(n+1))+A025444(n)`
-/

namespace A306124.P3948256154918564662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306129 (A167614 (n + 1)).toNat + A025444 n

end

end A306124.P3948256154918564662

/-! ## A306124.P1552581723404144823

`A306129(A167614(n+1))%A082411(n)`
-/

namespace A306124.P1552581723404144823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306129 (A167614 (n + 1)).toNat) (A082411 n)

end

end A306124.P1552581723404144823

/-!
# A306125: Number of nX4 0..1 arrays with every element unequal to 0, 1, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306125, there is no canonical definition to state claims against.
-/

/-! ## A306125.P14273209975839328213

`A306129(∑[n+3]+7)`
-/

namespace A306125.P14273209975839328213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306129 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A306125.P14273209975839328213

/-! ## A306125.P412902844718765384

`record[gcd(A025581(n), A306129(n+5))]`
-/

namespace A306125.P412902844718765384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A306129 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306125.P412902844718765384

/-! ## A306125.P10903661584410050004

`or(char[1], A306129(A167499(n+2)-1))`
-/

namespace A306125.P10903661584410050004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A306129 (A167499 (n + 2) - 1).toNat)

end

end A306125.P10903661584410050004

/-! ## A306125.P9195042196756972461

`A306129(A167614(n+2)+1)+char[25]`
-/

namespace A306125.P9195042196756972461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306129 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A306125.P9195042196756972461

/-! ## A306125.P2591545443448184661

`lcm((-1)^n, A306129(A000096(n+2)+5))`
-/

namespace A306125.P2591545443448184661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A306129 (A000096 (n + 2) + 5).toNat)

end

end A306125.P2591545443448184661

/-!
# A306126: Number of nX5 0..1 arrays with every element unequal to 0, 1, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306126, there is no canonical definition to state claims against.
-/

/-! ## A306126.P12270457216060620677

`A306129(A167499(n+3))`
-/

namespace A306126.P12270457216060620677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306129 (A167499 (n + 3)).toNat

end

end A306126.P12270457216060620677

/-! ## A306126.P4311480689453315217

`A306129(A155212(n)+13)`
-/

namespace A306126.P4311480689453315217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306129 (A155212 n + 13).toNat

end

end A306126.P4311480689453315217

/-! ## A306126.P12830628662187237237

`A306129(A056000(n)+15)`
-/

namespace A306126.P12830628662187237237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306129 (A056000 n + 15).toNat

end

end A306126.P12830628662187237237

/-! ## A306126.P9983361819981994761

`A306129(eq[7, A066657(n)])`
-/

namespace A306126.P9983361819981994761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306126.P9983361819981994761

/-! ## A306126.P1820295097268077674

`A306129(A133263(n+4)+3)`
-/

namespace A306126.P1820295097268077674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306129 (A133263 (n + 4) + 3).toNat

end

end A306126.P1820295097268077674

/-!
# A306127: Number of nX6 0..1 arrays with every element unequal to 0, 1, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306127, there is no canonical definition to state claims against.
-/

/-! ## A306127.P14382217277391738753

`A306129(∑[n+5]+16)`
-/

namespace A306127.P14382217277391738753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306129 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A306127.P14382217277391738753

/-! ## A306127.P7560679454343023547

`or(char[1], A306129(A000217(n+5)+6))`
-/

namespace A306127.P7560679454343023547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A306129 (A000217 (n + 5) + 6).toNat)

end

end A306127.P7560679454343023547

/-! ## A306127.P11460682425924924056

`A007318(C(3, n))*A306129(A000217(n+5)+6)`
-/

namespace A306127.P11460682425924924056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A306129 (A000217 (n + 5) + 6).toNat

end

end A306127.P11460682425924924056

/-! ## A306127.P12596539102587767660

`A306129(A000217(n+5)+6)%A000032(n+50)`
-/

namespace A306127.P12596539102587767660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306129 (A000217 (n + 5) + 6).toNat) (A000032 (n + 50))

end

end A306127.P12596539102587767660

/-! ## A306127.P6704333141265351828

`A000108(C(n, 64))*A306129(A000217(n+5)+6)`
-/

namespace A306127.P6704333141265351828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose n 64) * A306129 (A000217 (n + 5) + 6).toNat

end

end A306127.P6704333141265351828

/-!
# A306128: Number of n X 7 0..1 arrays with every element unequal to 0, 1, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306128, there is no canonical definition to state claims against.
-/

/-! ## A306128.P17857447106721092221

`A306129(A056119(n)+28)`
-/

namespace A306128.P17857447106721092221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306129 (A056119 n + 28).toNat

end

end A306128.P17857447106721092221

/-! ## A306128.P11486980959045387570

`A306129(eq[11, A066657(n)])`
-/

namespace A306128.P11486980959045387570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306128.P11486980959045387570

/-! ## A306128.P8667435460900407870

`A306129(A167499(n+5)+2)`
-/

namespace A306128.P8667435460900407870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306129 (A167499 (n + 5) + 2).toNat

end

end A306128.P8667435460900407870

/-! ## A306128.P18173897653469124330

`A306129(A000124(n+6)+6)`
-/

namespace A306128.P18173897653469124330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306129 (A000124 (n + 6) + 6).toNat

end

end A306128.P18173897653469124330

/-! ## A306128.P14409365384625685054

`A306129(A055998(n+4)+10)`
-/

namespace A306128.P14409365384625685054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306129 (A055998 (n + 4) + 10).toNat

end

end A306128.P14409365384625685054

/-!
# A306129: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306129, there is no canonical definition to state claims against.
-/

/-! ## A306129.P16860659291754633507

`or(A001221(A173778(n)), A304544(n+1))`
-/

namespace A306129.P16860659291754633507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A173778 n).toNat) (A304544 (n + 1))

end

end A306129.P16860659291754633507

/-! ## A306129.P11856412909119636298

`or(A184159(A331562(n)), A304544(n+1))`
-/

namespace A306129.P11856412909119636298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A184159 (A331562 n).toNat) (A304544 (n + 1))

end

end A306129.P11856412909119636298

/-! ## A306129.P6406533691178414276

`A309785(A299321(n+1))+A304544(n+1)`
-/

namespace A306129.P6406533691178414276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (A299321 (n + 1)).toNat + A304544 (n + 1)

end

end A306129.P6406533691178414276

/-! ## A306129.P1956140804333446492

`or(A200214(A197561(n+1)), A304544(n+1))`
-/

namespace A306129.P1956140804333446492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A200214 (A197561 (n + 1)).toNat) (A304544 (n + 1))

end

end A306129.P1956140804333446492

/-! ## A306129.P15203791785503351437

`or(A184159(A215745(n+1)), A304544(n+1))`
-/

namespace A306129.P15203791785503351437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A184159 (A215745 (n + 1)).toNat) (A304544 (n + 1))

end

end A306129.P15203791785503351437

/-!
# A306130: Number of nXn 0..1 arrays with every element unequal to 0, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306130, there is no canonical definition to state claims against.
-/

/-! ## A306130.P2066772153254915150

`A306136(∑[4*n]+1)`
-/

namespace A306130.P2066772153254915150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306136 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A306130.P2066772153254915150

/-! ## A306130.P14739007806530363473

`record[A306136(A272267(n+1))]`
-/

namespace A306130.P14739007806530363473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306136 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306130.P14739007806530363473

/-! ## A306130.P11929442142168443716

`record[A306136(A330613(n+1))]`
-/

namespace A306130.P11929442142168443716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306136 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306130.P11929442142168443716

/-! ## A306130.P14876267715160251565

`A306136(A001844(n))+char[14]`
-/

namespace A306130.P14876267715160251565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306136 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A306130.P14876267715160251565

/-! ## A306130.P3772442632896408226

`record[A306136(A336336(2*(n+2)))]`
-/

namespace A306130.P3772442632896408226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306136 (A336336 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306130.P3772442632896408226

/-!
# A306131: Number of nX3 0..1 arrays with every element unequal to 0, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306131, there is no canonical definition to state claims against.
-/

/-! ## A306131.P13684140059011988482

`A306136(∑[n+2]+4)`
-/

namespace A306131.P13684140059011988482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306136 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A306131.P13684140059011988482

/-! ## A306131.P10702942418289501479

`A317271(∑[n+2]+4)`
-/

namespace A306131.P10702942418289501479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317271 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A306131.P10702942418289501479

/-! ## A306131.P10753642890161073863

`A317271(A167614(n+1))%(10*8^n-1)`
-/

namespace A306131.P10753642890161073863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317271 (A167614 (n + 1)).toNat) ((10 * 8 ^ n : ℤ) - 1)

end

end A306131.P10753642890161073863

/-! ## A306131.P7216281854604331775

`A317271(A167614(n+1))+A180472(n)`
-/

namespace A306131.P7216281854604331775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317271 (A167614 (n + 1)).toNat + A180472 n

end

end A306131.P7216281854604331775

/-! ## A306131.P4720706239965631431

`A326688(n)+A306136(A167614(n+1))`
-/

namespace A306131.P4720706239965631431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326688 n + A306136 (A167614 (n + 1)).toNat

end

end A306131.P4720706239965631431

/-!
# A306132: Number of nX4 0..1 arrays with every element unequal to 0, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306132, there is no canonical definition to state claims against.
-/

/-! ## A306132.P2288055294067067060

`A306136(A374004(n+1))`
-/

namespace A306132.P2288055294067067060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306136 (A374004 (n + 1)).toNat

end

end A306132.P2288055294067067060

/-! ## A306132.P4716688369779050883

`A306136(A052905(n)+9)`
-/

namespace A306132.P4716688369779050883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306136 (A052905 n + 9).toNat

end

end A306132.P4716688369779050883

/-! ## A306132.P1208757704747773976

`A317271(A052905(n)+9)`
-/

namespace A306132.P1208757704747773976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317271 (A052905 n + 9).toNat

end

end A306132.P1208757704747773976

/-! ## A306132.P9126827775445604110

`A317271(A055999(n)+10)`
-/

namespace A306132.P9126827775445604110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317271 (A055999 n + 10).toNat

end

end A306132.P9126827775445604110

/-! ## A306132.P15506002032469879424

`A306136(A167614(n+2)+1)`
-/

namespace A306132.P15506002032469879424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306136 (A167614 (n + 2) + 1).toNat

end

end A306132.P15506002032469879424

/-!
# A306133: Number of nX5 0..1 arrays with every element unequal to 0, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306133, there is no canonical definition to state claims against.
-/

/-! ## A306133.P12074144322826387429

`A306136(C(n+6, 2)-n)`
-/

namespace A306133.P12074144322826387429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306136 (Nat.choose (n + 6) 2 - n)

end

end A306133.P12074144322826387429

/-! ## A306133.P16109503155643266340

`A306136(A374005(n+1))`
-/

namespace A306133.P16109503155643266340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306136 (A374005 (n + 1)).toNat

end

end A306133.P16109503155643266340

/-! ## A306133.P14698558251950381218

`A306136(A167499(n+3))`
-/

namespace A306133.P14698558251950381218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306136 (A167499 (n + 3)).toNat

end

end A306133.P14698558251950381218

/-! ## A306133.P5276145464658838755

`A306136(A155212(n)+13)`
-/

namespace A306133.P5276145464658838755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306136 (A155212 n + 13).toNat

end

end A306133.P5276145464658838755

/-! ## A306133.P6240774410487024798

`A306136(A056000(n)+15)`
-/

namespace A306133.P6240774410487024798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306136 (A056000 n + 15).toNat

end

end A306133.P6240774410487024798

/-!
# A306134: Number of nX6 0..1 arrays with every element unequal to 0, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306134, there is no canonical definition to state claims against.
-/

/-! ## A306134.P14091039788124902197

`A306136(A374007(n+1))`
-/

namespace A306134.P14091039788124902197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306136 (A374007 (n + 1)).toNat

end

end A306134.P14091039788124902197

/-! ## A306134.P8553948499733469290

`A306136(A166136(n+4))`
-/

namespace A306134.P8553948499733469290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306136 (A166136 (n + 4)).toNat

end

end A306134.P8553948499733469290

/-! ## A306134.P13139019948212457212

`A306136(A056115(n)+21)`
-/

namespace A306134.P13139019948212457212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306136 (A056115 n + 21).toNat

end

end A306134.P13139019948212457212

/-! ## A306134.P8710907452139919975

`A306136(eq[6, A130270(n+1)])`
-/

namespace A306134.P8710907452139919975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306136 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306134.P8710907452139919975

/-! ## A306134.P5955927746119474201

`A306136(eq[7, A131818(n+1)])`
-/

namespace A306134.P5955927746119474201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306136 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306134.P5955927746119474201

/-!
# A306135: Number of nX7 0..1 arrays with every element unequal to 0, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306135, there is no canonical definition to state claims against.
-/

/-! ## A306135.P10367879569619014272

`A306136(A374008(n+1))`
-/

namespace A306135.P10367879569619014272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306136 (A374008 (n + 1)).toNat

end

end A306135.P10367879569619014272

/-! ## A306135.P131138833360682775

`A306136(A056119(n)+28)`
-/

namespace A306135.P131138833360682775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306136 (A056119 n + 28).toNat

end

end A306135.P131138833360682775

/-! ## A306135.P5282478455089727902

`A306136(eq[11, A066657(n)])`
-/

namespace A306135.P5282478455089727902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306136 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306135.P5282478455089727902

/-! ## A306135.P5380697578757388335

`A306136(eq[8, A131818(n+1)])`
-/

namespace A306135.P5380697578757388335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306136 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306135.P5380697578757388335

/-! ## A306135.P10293775562154101593

`A306136(eq[4, A219347(n)])`
-/

namespace A306135.P10293775562154101593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306136 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306135.P10293775562154101593

/-!
# A306136: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306136, there is no canonical definition to state claims against.
-/

/-! ## A306136.P15891301841942542767

`A317271(∑[A010894(n)!])`
-/

namespace A306136.P15891301841942542767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010894 (n + 21)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317271 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A306136.P15891301841942542767

/-! ## A306136.P14193953327754672743

`A317271(A010894(n)!+n)`
-/

namespace A306136.P14193953327754672743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317271 (Nat.factorial (A010894 (n + 21)).toNat + n)

end

end A306136.P14193953327754672743

/-! ## A306136.P10507101057364932338

`A317271(A023933(n)+1+n)`
-/

namespace A306136.P10507101057364932338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317271 (A023933 n + 1 + (n : ℤ)).toNat

end

end A306136.P10507101057364932338

/-! ## A306136.P2325305429449705686

`filter[A317271(n+1), A093521(#)]`
-/

namespace A306136.P2325305429449705686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093521 (f1 j).toNat = 1) n)

end

end A306136.P2325305429449705686

/-! ## A306136.P13427249675743539849

`A317271(n+1)^A062513(n+2)`
-/

namespace A306136.P13427249675743539849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317271 (n + 1) : ℚ) ^ (A062513 (n + 2) : ℤ)

end

end A306136.P13427249675743539849

/-!
# A306137: Number of nXn 0..1 arrays with every element unequal to 1, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306137, there is no canonical definition to state claims against.
-/

/-! ## A306137.P5773521404111337508

`A306143(∑[4*n]+1)`
-/

namespace A306137.P5773521404111337508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306143 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A306137.P5773521404111337508

/-! ## A306137.P9788080365194308274

`A306143(A001844(n))+A011736(n)`
-/

namespace A306137.P9788080365194308274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306143 (A001844 n).toNat + A011736 n

end

end A306137.P9788080365194308274

/-! ## A306137.P4026310284246771576

`A306143(A001844(n))+A061649(n)`
-/

namespace A306137.P4026310284246771576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306143 (A001844 n).toNat + A061649 n

end

end A306137.P4026310284246771576

/-! ## A306137.P14698985432132468644

`A306143(A001844(n))+A185284(n)`
-/

namespace A306137.P14698985432132468644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306143 (A001844 n).toNat + A185284 n

end

end A306137.P14698985432132468644

/-! ## A306137.P6885495957094614926

`A145568(n)*A306143(A001844(n))`
-/

namespace A306137.P6885495957094614926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145568 n * A306143 (A001844 n).toNat

end

end A306137.P6885495957094614926

/-!
# A306138: Number of nX3 0..1 arrays with every element unequal to 1, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306138, there is no canonical definition to state claims against.
-/

/-! ## A306138.P9932711301783320203

`A306143(∑[n+2]+4)`
-/

namespace A306138.P9932711301783320203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306143 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A306138.P9932711301783320203

/-! ## A306138.P1584246841118798260

`gcd(A015161(n), A306143(A167614(n+1)))`
-/

namespace A306138.P1584246841118798260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A015161 n) (A306143 (A167614 (n + 1)).toNat)

end

end A306138.P1584246841118798260

/-! ## A306138.P753237750645351562

`lcm(A033999(n), A306143(A167614(n+1)))`
-/

namespace A306138.P753237750645351562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A306143 (A167614 (n + 1)).toNat)

end

end A306138.P753237750645351562

/-! ## A306138.P11566620456611900094

`or(A000007(n), A306143(A167614(n+1)))`
-/

namespace A306138.P11566620456611900094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A306143 (A167614 (n + 1)).toNat)

end

end A306138.P11566620456611900094

/-! ## A306138.P446322462529691459

`or(A000122(n), A306143(A167614(n+1)))`
-/

namespace A306138.P446322462529691459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 n) (A306143 (A167614 (n + 1)).toNat)

end

end A306138.P446322462529691459

/-!
# A306139: Number of nX4 0..1 arrays with every element unequal to 1, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306139, there is no canonical definition to state claims against.
-/

/-! ## A306139.P1928517679649118713

`A306143(A374004(n+1))`
-/

namespace A306139.P1928517679649118713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306143 (A374004 (n + 1)).toNat

end

end A306139.P1928517679649118713

/-! ## A306139.P17348490610253975246

`A306143(A141214(n)+7)`
-/

namespace A306139.P17348490610253975246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306143 (A141214 n + 7).toNat

end

end A306139.P17348490610253975246

/-! ## A306139.P4337527921403298410

`A306143(A167614(n+2)+1)`
-/

namespace A306139.P4337527921403298410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306143 (A167614 (n + 2) + 1).toNat

end

end A306139.P4337527921403298410

/-! ## A306139.P2628312187899876408

`A306143(A167487(n+2)-3)`
-/

namespace A306139.P2628312187899876408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306143 (A167487 (n + 2) - 3).toNat

end

end A306139.P2628312187899876408

/-! ## A306139.P6430849673615770719

`A306143(eq[5, A131818(n+1)])`
-/

namespace A306139.P6430849673615770719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306143 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306139.P6430849673615770719

/-!
# A306140: Number of nX5 0..1 arrays with every element unequal to 1, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306140, there is no canonical definition to state claims against.
-/

/-! ## A306140.P14908054018852468883

`A306143(A374005(n+1))`
-/

namespace A306140.P14908054018852468883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306143 (A374005 (n + 1)).toNat

end

end A306140.P14908054018852468883

/-! ## A306140.P8984765848696759668

`A306143(A167499(n+3))`
-/

namespace A306140.P8984765848696759668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306143 (A167499 (n + 3)).toNat

end

end A306140.P8984765848696759668

/-! ## A306140.P11625947409004245218

`A306143(eq[6, A131818(n+1)])`
-/

namespace A306140.P11625947409004245218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306143 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306140.P11625947409004245218

/-! ## A306140.P17849658064468811029

`A306143(Δ[A264443(n)])`
-/

namespace A306140.P17849658064468811029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306143 (f1 (n + 1) - f1 n).toNat

end

end A306140.P17849658064468811029

/-! ## A306140.P2061924893926998280

`A306143(eq[2, A092921(n)])`
-/

namespace A306140.P2061924893926998280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306143 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306140.P2061924893926998280

/-!
# A306141: Number of nX6 0..1 arrays with every element unequal to 1, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306141, there is no canonical definition to state claims against.
-/

/-! ## A306141.P10416424713508548695

`A306143(A374007(n+1))`
-/

namespace A306141.P10416424713508548695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306143 (A374007 (n + 1)).toNat

end

end A306141.P10416424713508548695

/-! ## A306141.P17609654202498315316

`A306143(eq[7, A131818(n+1)])`
-/

namespace A306141.P17609654202498315316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306143 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306141.P17609654202498315316

/-! ## A306141.P16859713845685770204

`A306143(A302537(n)+15)`
-/

namespace A306141.P16859713845685770204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306143 (A302537 n + 15).toNat

end

end A306141.P16859713845685770204

/-! ## A306141.P11184530279571078246

`A306143(eq[3, A219347(n)])`
-/

namespace A306141.P11184530279571078246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306143 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306141.P11184530279571078246

/-! ## A306141.P7998434980534701475

`A306143(eq[5, A193592(n)])`
-/

namespace A306141.P7998434980534701475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306143 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306141.P7998434980534701475

/-!
# A306142: Number of nX7 0..1 arrays with every element unequal to 1, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306142, there is no canonical definition to state claims against.
-/

/-! ## A306142.P3550325712907456582

`A306143(A374008(n+1))`
-/

namespace A306142.P3550325712907456582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306143 (A374008 (n + 1)).toNat

end

end A306142.P3550325712907456582

/-! ## A306142.P8526555026641156336

`A306143(A167487(n+5))`
-/

namespace A306142.P8526555026641156336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306143 (A167487 (n + 5)).toNat

end

end A306142.P8526555026641156336

/-! ## A306142.P13641209221190333172

`A306143(eq[8, A131818(n+1)])`
-/

namespace A306142.P13641209221190333172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306143 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306142.P13641209221190333172

/-! ## A306142.P13279121763737814862

`A306143(eq[4, A219347(n)])`
-/

namespace A306142.P13279121763737814862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306143 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306142.P13279121763737814862

/-! ## A306142.P2579053745258787862

`A306143(eq[6, A193592(n)])`
-/

namespace A306142.P2579053745258787862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306143 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306142.P2579053745258787862

/-!
# A306143: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306143, there is no canonical definition to state claims against.
-/

/-! ## A306143.P16059645476632661207

`A317376(n+1)-A116087(A250486(n))`
-/

namespace A306143.P16059645476632661207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317376 (n + 1) - A116087 (A250486 n).toNat

end

end A306143.P16059645476632661207

/-! ## A306143.P17703538605228702869

`A317376(n+1)+A016389(A022166(n))`
-/

namespace A306143.P17703538605228702869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317376 (n + 1) + A016389 (A022166 n).toNat

end

end A306143.P17703538605228702869

/-! ## A306143.P17388858730074535959

`A317376(n+1)+A016389(A027336(n))`
-/

namespace A306143.P17388858730074535959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317376 (n + 1) + A016389 (A027336 n).toNat

end

end A306143.P17388858730074535959

/-! ## A306143.P15528213437881412842

`A304597(n+1)+A166301(A022166(n))`
-/

namespace A306143.P15528213437881412842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304597 (n + 1) + A166301 (A022166 n).toNat

end

end A306143.P15528213437881412842

/-! ## A306143.P11866545957460172720

`A316383(n+1)+A071086(A157149(n))`
-/

namespace A306143.P11866545957460172720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316383 (n + 1) + A071086 (A157149 n).toNat

end

end A306143.P11866545957460172720

/-!
# A306145: Expansion of (1/(1 - x)) * Sum_{k>=0} x^(2*k+1) / Product_{j=1..2*k+1} (1 - x^j).

The programs for A306145, there is no canonical definition to state claims against.
-/

/-! ## A306145.P4654208822679544706

`A000070(n)-A304620(n)`
-/

namespace A306145.P4654208822679544706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n - A304620 n

end

end A306145.P4654208822679544706

/-! ## A306145.P9095704140065985855

`∑[A027193(n)]`
-/

namespace A306145.P9095704140065985855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306145.P9095704140065985855

/-! ## A306145.P5535679736095436781

`∑[∑{d}[n, A339398(#)]]`
-/

namespace A306145.P5535679736095436781
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A339398 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306145.P5535679736095436781

/-! ## A306145.P2647441765794329244

`∑[A000041(n)-A027187(n)]`
-/

namespace A306145.P2647441765794329244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A027187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306145.P2647441765794329244

/-! ## A306145.P365619757201713181

`∑[A027187(n)-A081362(n)]`
-/

namespace A306145.P365619757201713181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n - A081362 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306145.P365619757201713181

/-! ## A306145.P8452827541281980628

`∑[∑[A002865(n)]-A027187(n)]`
-/

namespace A306145.P8452827541281980628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A027187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306145.P8452827541281980628

/-! ## A306145.P15391105696572484137

`∑[(A000041(n)-A081362(n))/2]`
-/

namespace A306145.P15391105696572484137
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n - A081362 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306145.P15391105696572484137

/-! ## A306145.P14608851509609602750

`∑[A139582(n)/2-A027187(n)]`
-/

namespace A306145.P14608851509609602750
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A027187 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306145.P14608851509609602750

/-! ## A306145.P7022124725352871887

`∑[A000009(n)+A047967(n)-A027187(n)]`
-/

namespace A306145.P7022124725352871887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A047967 n - A027187 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306145.P7022124725352871887

/-! ## A306145.P9427654448108127999

`∑[A035363(n)+A086543(n)-A027187(n)]`
-/

namespace A306145.P9427654448108127999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n + (A086543 n - A027187 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306145.P9427654448108127999

/-! ## A306145.P13685200613354701480

`∑[A000726(n)+A295341(n)-A027187(n)]`
-/

namespace A306145.P13685200613354701480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 n + (A295341 n - A027187 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306145.P13685200613354701480

/-! ## A306145.P2794604003226071128

`∑[A168015(n)-(A168014(n)+A027187(n))]`
-/

namespace A306145.P2794604003226071128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168015 n - (A168014 n + A027187 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306145.P2794604003226071128

/-! ## A306145.P8340370461247226771

`A000070(n)-∑[A027187(n)]`
-/

namespace A306145.P8340370461247226771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306145.P8340370461247226771

/-! ## A306145.P2499957184787097167

`∑[A000041(n)]-A304620(n)`
-/

namespace A306145.P2499957184787097167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A304620 n

end

end A306145.P2499957184787097167

/-! ## A306145.P18242349958251587791

`∑[A035363(2*n)-A027187(n)]`
-/

namespace A306145.P18242349958251587791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A027187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306145.P18242349958251587791

/-! ## A306145.P5210257249499192790

`∑[A332280(n)+A332281(n)-A027187(n)]`
-/

namespace A306145.P5210257249499192790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332280 n + (A332281 n - A027187 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306145.P5210257249499192790

/-! ## A306145.P11677280284584522572

`A100824(2*n+1)-A304620(n)`
-/

namespace A306145.P11677280284584522572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * n + 1) - A304620 n

end

end A306145.P11677280284584522572

/-! ## A306145.P8833635280508733639

`A100835(2*n+1)-A304620(n)`
-/

namespace A306145.P8833635280508733639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100835 (2 * n + 1) - A304620 n

end

end A306145.P8833635280508733639

/-! ## A306145.P10021203129586793330

`∑[A332283(n)+A332284(n)-A027187(n)]`
-/

namespace A306145.P10021203129586793330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332283 n + (A332284 n - A027187 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306145.P10021203129586793330

/-! ## A306145.P9667566899599764600

`∑[A027186(∑[n]+1)]`
-/

namespace A306145.P9667566899599764600
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027186 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306145.P9667566899599764600

/-!
# A306146: Numbers k such that A000010(A023900(k)) = A023900(A000010(k)).

The programs for A306146, there is no canonical definition to state claims against.
-/

/-! ## A306146.P5408659419040449475

`record[(n+1)*A323402(n+1)]`
-/

namespace A306146.P5408659419040449475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A323402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306146.P5408659419040449475

/-! ## A306146.P7037385367455925208

`eq[1, A323402(n+1)]+1`
-/

namespace A306146.P7037385367455925208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323402 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A306146.P7037385367455925208

/-! ## A306146.P1196224009790740130

`filter[A244723(n+1), A323402(#)]`
-/

namespace A306146.P1196224009790740130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323402 (f1 j).toNat = 1) n)

end

end A306146.P1196224009790740130

/-! ## A306146.P10810878804271975429

`filter[A255199(n+1), A323402(#)]`
-/

namespace A306146.P10810878804271975429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323402 (f1 j).toNat = 1) n)

end

end A306146.P10810878804271975429

/-! ## A306146.P6823997345818883561

`filter[A030231(n+1), A323402(#)]`
-/

namespace A306146.P6823997345818883561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323402 (f1 j).toNat = 1) n)

end

end A306146.P6823997345818883561

/-! ## A306146.P3801388227792707324

`filter[A382376(2*n+1), A323402(#)]`
-/

namespace A306146.P3801388227792707324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382376 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323402 (f1 j).toNat = 1) n)

end

end A306146.P3801388227792707324

/-! ## A306146.P15303988457568641919

`eq[A054977(n), A323402(A028310(n))]`
-/

namespace A306146.P15303988457568641919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323402 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306146.P15303988457568641919

/-! ## A306146.P10956252736500695692

`eq[A056926(n), A323402(A028310(n))]`
-/

namespace A306146.P10956252736500695692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323402 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306146.P10956252736500695692

/-! ## A306146.P15027057495259653208

`eq[A057427(n), A323402(A028310(n))]`
-/

namespace A306146.P15027057495259653208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323402 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306146.P15027057495259653208

/-!
# A306147: Expansion of e.g.f. Product_{k>=1} (1 + (exp(x)-1)^(k^2)) / (1 - (exp(x)-1)^(k^2)).

The programs for A306147, there is no canonical definition to state claims against.
-/

/-! ## A306147.P1703143368915444421

`A267158(A267196(n))+A160552(n)`
-/

namespace A306147.P1703143368915444421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267158 (A267196 n).toNat + A160552 n

end

end A306147.P1703143368915444421

/-! ## A306147.P17201398592665751951

`A020639(A108800(n))*A267196(n)`
-/

namespace A306147.P17201398592665751951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A108800 n).toNat * A267196 n

end

end A306147.P17201398592665751951

/-!
# A306149: a(n) = denominator(n!*[z^n](z*(exp(z)+2*exp(-(1/2)*z)*cos((1/2)*z* 3^(1/2)))/(1-exp(-z)))).

The programs for A306149, there is no canonical definition to state claims against.
-/

/-! ## A306149.P10102246462143408498

`gcd(A144845(n), A285068(A065679(n)))`
-/

namespace A306149.P10102246462143408498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144845 n) (A285068 (A065679 n).toNat)

end

end A306149.P10102246462143408498

/-! ## A306149.P7965627221902987667

`gcd(A064538(n), A285068(n²))`
-/

namespace A306149.P7965627221902987667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064538 n) (A285068 (n ^ 2))

end

end A306149.P7965627221902987667

/-! ## A306149.P3878004358885016439

`lcm(A285068(n), A321906(A068307(n+1)!))`
-/

namespace A306149.P3878004358885016439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A285068 n) (A321906 (Nat.factorial (A068307 (n + 1)).toNat))

end

end A306149.P3878004358885016439

/-! ## A306149.P8226948361055456792

`A000026(A285068(n)^A213621(n))`
-/

namespace A306149.P8226948361055456792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (SequenceMachineLib.roundAway ((A285068 n : ℚ) ^ (A213621 n : ℤ))).toNat

end

end A306149.P8226948361055456792

/-!
# A306150: Row sums of A306015.

The programs for A306150, the canonical program `A306150.P10075901405309259015` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306150 has offset 0).

The definition of A306150 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306150.P10075901405309259015

`n*a(n-1)+a(n-2)-(n-2)*a(n-3)` with `a(0)=0, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A306150

/-- `n*a(n-1)+a(n-2)-(n-2)*a(n-3)` -/
def P10075901405309259015.Spec : Prop :=
  ∀ n, P10075901405309259015.a n = A306150 n

theorem P10075901405309259015.correct : P10075901405309259015.Spec := by
  intro n
  simp only [A306150]

end A306150

/-! ## A306150.P7667294991159173818

`2*A186763(n)`
-/

namespace A306150.P7667294991159173818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A186763 n

end

end A306150.P7667294991159173818

namespace A306150

/-- `2*A186763(n)` -/
def P7667294991159173818.Spec : Prop :=
  ∀ n, P7667294991159173818.a n = A306150 n

end A306150

/-! ## A306150.P4089796381625847147

`(-1)^(n+1)*2*A009628(n)`
-/

namespace A306150.P4089796381625847147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * 2 * A009628 n

end

end A306150.P4089796381625847147

namespace A306150

/-- `(-1)^(n+1)*2*A009628(n)` -/
def P4089796381625847147.Spec : Prop :=
  ∀ n, P4089796381625847147.a n = A306150 n

end A306150

/-! ## A306150.P3385290735151501966

`A000522(n)-A000166(n)`
-/

namespace A306150.P3385290735151501966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n - A000166 n

end

end A306150.P3385290735151501966

namespace A306150

/-- `A000522(n)-A000166(n)` -/
def P3385290735151501966.Spec : Prop :=
  ∀ n, P3385290735151501966.a n = A306150 n

end A306150

/-! ## A306150.P15155578338158103147

`2*n%2+n*a(n-1)` with `a(0)=0`
-/

namespace A306150.P15155578338158103147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * (n % 2) + n * a (n - 1)

end

end A306150.P15155578338158103147

namespace A306150

/-- `2*n%2+n*a(n-1)` -/
def P15155578338158103147.Spec : Prop :=
  ∀ n, (P15155578338158103147.a n : ℤ) = A306150 n

end A306150

/-! ## A306150.P13752134419975418798

`2*and(1, n)+n*a(n-1)` with `a(0)=0`
-/

namespace A306150.P13752134419975418798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * Nat.land 1 n + n * a (n - 1)

end

end A306150.P13752134419975418798

namespace A306150

/-- `2*and(1, n)+n*a(n-1)` -/
def P13752134419975418798.Spec : Prop :=
  ∀ n, (P13752134419975418798.a n : ℤ) = A306150 n

end A306150

/-! ## A306150.P16629472579297481375

`or(n*a(n-1), 2*and(1, n))` with `a(0)=0`
-/

namespace A306150.P16629472579297481375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor (n * a (n - 1)) (2 * Nat.land 1 n)

end

end A306150.P16629472579297481375

namespace A306150

/-- `or(n*a(n-1), 2*and(1, n))` -/
def P16629472579297481375.Spec : Prop :=
  ∀ n, (P16629472579297481375.a n : ℤ) = A306150 n

end A306150

/-! ## A306150.P3554549445915407092

`xor(n*a(n-1), 2*and(1, n))` with `a(0)=0`
-/

namespace A306150.P3554549445915407092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor (n * a (n - 1)) (2 * Nat.land 1 n)

end

end A306150.P3554549445915407092

namespace A306150

/-- `xor(n*a(n-1), 2*and(1, n))` -/
def P3554549445915407092.Spec : Prop :=
  ∀ n, (P3554549445915407092.a n : ℤ) = A306150 n

end A306150

/-! ## A306150.P10646318064234857226

`n*a(n-1)+1-(-1)^n` with `a(0)=0`
-/

namespace A306150.P10646318064234857226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * a (n - 1) + 1 - (-1) ^ n

end

end A306150.P10646318064234857226

namespace A306150

/-- `n*a(n-1)+1-(-1)^n` -/
def P10646318064234857226.Spec : Prop :=
  ∀ n, P10646318064234857226.a n = A306150 n

end A306150

/-! ## A306150.P17696101380142951823

`1-((-1)^n-n*a(n-1))` with `a(0)=0`
-/

namespace A306150.P17696101380142951823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - ((-1) ^ n - (n : ℤ) * a (n - 1))

end

end A306150.P17696101380142951823

namespace A306150

/-- `1-((-1)^n-n*a(n-1))` -/
def P17696101380142951823.Spec : Prop :=
  ∀ n, P17696101380142951823.a n = A306150 n

end A306150

/-!
# A306151: Let k be a Sierpiński or Riesel number, and let p be the largest number in a set of n primes which cover every number of the form k*2^m + 1 (or of the form k*2^m - 1) with m >= 1. a(n) = 0 if no covering set with n primes exists, otherwise a(n) = p if and only if there exists no number k that has a covering set with precisely n primes and with largest prime < p.

The programs for A306151, there is no canonical definition to state claims against.
-/

/-! ## A306151.P7435820034982774650

`A094896(A135086(n+1)*A298748(n+1))`
-/

namespace A306151.P7435820034982774650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094896 (A135086 (n + 1) * A298748 (n + 1)).toNat

end

end A306151.P7435820034982774650

/-!
# A306152: Inverse Weigh transform of n^n.

The programs for A306152, there is no canonical definition to state claims against.
-/

/-! ## A306152.P2452537125167346128

`∑[or(n+1, A066246(A119268(3*n+1)))]`
-/

namespace A306152.P2452537125167346128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A066246 (A119268 (3 * n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306152.P2452537125167346128

/-!
# A306153: Inverse Weigh transform of (-1)^n * n!.

The programs for A306153, there is no canonical definition to state claims against.
-/

/-! ## A306153.P15524654597189916111

`∑{d}[n+1, A036987(#-1)*A305786((n+1)/#)]`
-/

namespace A306153.P15524654597189916111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A305786 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306153.P15524654597189916111

/-!
# A306155: a(n) > a(n-1) is the smallest number such that a(n)! contains a(n-1)! as a substring, with a(0) = 0.

The programs for A306155, there is no canonical definition to state claims against.
-/

/-! ## A306155.P8520227033146761891

`A086654(a(n-1))` with `a(0)=0`
-/

namespace A306155.P8520227033146761891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A086654 (a (n - 1)).toNat

end

end A306155.P8520227033146761891

/-!
# A306156: Inverse Weigh transform of 2^n.

The programs for A306156, the canonical program `A306156.P7321451468610362585` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306156 has offset 1).

The definition of A306156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306156.P14830894687454454040

`A383034(n+1)+A036987(n)`
-/

namespace A306156.P14830894687454454040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383034 (n + 1) + A036987 n

end

end A306156.P14830894687454454040

namespace A306156

/-- `A383034(n+1)+A036987(n)` -/
def P14830894687454454040.Spec : Prop :=
  ∀ n, P14830894687454454040.a n = A306156 (n + 1)

end A306156

/-! ## A306156.P10229531588699624995

`A383034(n+1)+A209229(n+1)`
-/

namespace A306156.P10229531588699624995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383034 (n + 1) + A209229 (n + 1)

end

end A306156.P10229531588699624995

namespace A306156

/-- `A383034(n+1)+A209229(n+1)` -/
def P10229531588699624995.Spec : Prop :=
  ∀ n, P10229531588699624995.a n = A306156 (n + 1)

theorem P10229531588699624995.correct : P10229531588699624995.Spec := by
  intro n
  simp only [A306156, Nat.add_sub_cancel, A306156.P10229531588699624995.a, A306156.P7321451468610362585.f1, A306156.P7321451468610362585.a, A001037, A001037.P3072020637183991904.a, A006519, A006519.P10435570611646570274.a, A209229, A209229.P14119267658822519212.f1, A209229.P14119267658822519212.a, A383034, A383034.P16762733124447717769.a, A045664, A045664.P10163269847227854319.a, A171977, A171977.P14092944863121073856.a, A253909, A253909.P4396033400827970723.a, A000007, A000007.P6599383543502402472.a, A027375, A027375.P1624201345270917595.f1, A027375.P1624201345270917595.a, A038712, A038712.P3404197303190209645.a, A296302, A296302.P8637239320253714587.f1, A296302.P8637239320253714587.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A306156

/-! ## A306156.P7321451468610362585

`∑{d}[A006519(n+1), A001037((n+1)/#)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A306156

/-- `∑{d}[A006519(n+1), A001037((n+1)/#)]` -/
def P7321451468610362585.Spec : Prop :=
  ∀ n, P7321451468610362585.a n = A306156 (n + 1)

theorem P7321451468610362585.correct : P7321451468610362585.Spec := by
  intro n
  simp only [A306156, Nat.add_sub_cancel]

end A306156

/-! ## A306156.P7626354597074607421

`∑{d}[n+1, A178752(#)*A349341((n+1)/#)]`
-/

namespace A306156.P7626354597074607421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A178752 d * A349341 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306156.P7626354597074607421

namespace A306156

/-- `∑{d}[n+1, A178752(#)*A349341((n+1)/#)]` -/
def P7626354597074607421.Spec : Prop :=
  ∀ n, P7626354597074607421.a n = A306156 (n + 1)

end A306156

/-! ## A306156.P5234064064253453505

`A306157(n+1)-A383035(n+1)`
-/

namespace A306156.P5234064064253453505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306157 (n + 1) - A383035 (n + 1)

end

end A306156.P5234064064253453505

namespace A306156

/-- `A306157(n+1)-A383035(n+1)` -/
def P5234064064253453505.Spec : Prop :=
  ∀ n, P5234064064253453505.a n = A306156 (n + 1)

end A306156

/-!
# A306157: Inverse Weigh transform of 3^n.

The programs for A306157, there is no canonical definition to state claims against.
-/

/-! ## A306157.P7780927257187570198

`A383035(n+1)+A306156(n+1)`
-/

namespace A306157.P7780927257187570198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383035 (n + 1) + A306156 (n + 1)

end

end A306157.P7780927257187570198

/-! ## A306157.P8919561565971907826

`A383035(n+1)+A383034(n+1)+A036987(n)`
-/

namespace A306157.P8919561565971907826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383035 (n + 1) + (A383034 (n + 1) + A036987 n)

end

end A306157.P8919561565971907826

/-! ## A306157.P9354785853780419911

`A209229(n+1)+A383035(n+1)+A383034(n+1)`
-/

namespace A306157.P9354785853780419911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (n + 1) + (A383035 (n + 1) + A383034 (n + 1))

end

end A306157.P9354785853780419911

/-! ## A306157.P4034548868731418210

`A383035(n+1)+∑{d}[A006519(n+1), A001037((n+1)/#)]`
-/

namespace A306157.P4034548868731418210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383035 (n + 1) + ∑ d ∈ Nat.divisors (f1 n).natAbs, A001037 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306157.P4034548868731418210

/-! ## A306157.P10789554902835249135

`A383035(n+1)+∑{d}[n+1, A178752(#)*A349341((n+1)/#)]`
-/

namespace A306157.P10789554902835249135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383035 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A178752 d * A349341 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306157.P10789554902835249135

/-!
# A306158: Inverse Weigh transform of 4^n.

The programs for A306158, there is no canonical definition to state claims against.
-/

/-! ## A306158.P12791253194580767979

`record[A306156(n+2)-A038067(n+2)]`
-/

namespace A306158.P12791253194580767979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306156 (n + 2) - A038067 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306158.P12791253194580767979

/-! ## A306158.P5411846486826008369

`A306156(2*(n+1))-A038067(2*(n+1))`
-/

namespace A306158.P5411846486826008369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306156 (2 * (n + 1)) - A038067 (2 * (n + 1))

end

end A306158.P5411846486826008369

/-! ## A306158.P11828326683178540223

`A383023(A141214(n+1))`
-/

namespace A306158.P11828326683178540223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383023 (A141214 (n + 1)).toNat

end

end A306158.P11828326683178540223

/-! ## A306158.P6045845646480188649

`A383023(A056000(n)+7)`
-/

namespace A306158.P6045845646480188649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383023 (A056000 n + 7).toNat

end

end A306158.P6045845646480188649

/-!
# A306159: Inverse Weigh transform of 5^n.

The programs for A306159, there is no canonical definition to state claims against.
-/

/-! ## A306159.P15955377543528259011

`A383023(eq[A209229(n), A383033(n+4)])`
-/

namespace A306159.P15955377543528259011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383033 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383023 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A306159.P15955377543528259011

/-!
# A306160: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306160, there is no canonical definition to state claims against.
-/

/-! ## A306160.P2732234853692031309

`A306166(∑[4*n]+1)`
-/

namespace A306160.P2732234853692031309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306166 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A306160.P2732234853692031309

/-! ## A306160.P5122497227483217608

`record[A003982(n)*A306166(n+1)]`
-/

namespace A306160.P5122497227483217608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A306166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306160.P5122497227483217608

/-! ## A306160.P1039502604316267710

`record[A214505(n)*A306166(n+1)]`
-/

namespace A306160.P1039502604316267710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A306166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306160.P1039502604316267710

/-! ## A306160.P7385382156271264743

`or(A000007(n), A306166(A001844(n)))`
-/

namespace A306160.P7385382156271264743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A306166 (A001844 n).toNat)

end

end A306160.P7385382156271264743

/-! ## A306160.P1149020672229278550

`or(A017887(n), A306166(A001844(n)))`
-/

namespace A306160.P1149020672229278550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A017887 n) (A306166 (A001844 n).toNat)

end

end A306160.P1149020672229278550

/-!
# A306161: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306161, there is no canonical definition to state claims against.
-/

/-! ## A306161.P7419789097544800508

`A306166(∑[n+2]+4)`
-/

namespace A306161.P7419789097544800508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306166 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A306161.P7419789097544800508

/-! ## A306161.P13556021628286681124

`or(char[1], A306166(A000217(n+2)+3))`
-/

namespace A306161.P13556021628286681124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A306166 (A000217 (n + 2) + 3).toNat)

end

end A306161.P13556021628286681124

/-! ## A306161.P6996973846252854624

`A306166(A167614(n+1))%A297091(n+1)`
-/

namespace A306161.P6996973846252854624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306166 (A167614 (n + 1)).toNat) (A297091 (n + 1))

end

end A306161.P6996973846252854624

/-! ## A306161.P1600395827360457409

`or(A070109(n+1), A306166(A167614(n+1)))`
-/

namespace A306161.P1600395827360457409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A070109 (n + 1)) (A306166 (A167614 (n + 1)).toNat)

end

end A306161.P1600395827360457409

/-! ## A306161.P11639334107448307207

`A007318(C(n, 2))*A306166(A167614(n+1))`
-/

namespace A306161.P11639334107448307207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A306166 (A167614 (n + 1)).toNat

end

end A306161.P11639334107448307207

/-!
# A306162: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306162, there is no canonical definition to state claims against.
-/

/-! ## A306162.P4629068277901598099

`A306166(A052905(n)+9)`
-/

namespace A306162.P4629068277901598099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306166 (A052905 n + 9).toNat

end

end A306162.P4629068277901598099

/-! ## A306162.P7844833078462512725

`A306166(A167614(n+2)+1)`
-/

namespace A306162.P7844833078462512725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306166 (A167614 (n + 2) + 1).toNat

end

end A306162.P7844833078462512725

/-! ## A306162.P16327312473902105304

`A306166(A133263(n+3)+2)`
-/

namespace A306162.P16327312473902105304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306166 (A133263 (n + 3) + 2).toNat

end

end A306162.P16327312473902105304

/-! ## A306162.P1308575510801086333

`A306166(A166136(n+2)-2)`
-/

namespace A306162.P1308575510801086333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306166 (A166136 (n + 2) - 2).toNat

end

end A306162.P1308575510801086333

/-! ## A306162.P15003523427639271516

`A306166(A000096(n+2)+5)`
-/

namespace A306162.P15003523427639271516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306166 (A000096 (n + 2) + 5).toNat

end

end A306162.P15003523427639271516

/-!
# A306163: Number of n X 5 0..1 arrays with every element unequal to 0, 1, 2, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306163, there is no canonical definition to state claims against.
-/

/-! ## A306163.P5730435042948551714

`A306166(A167499(n+3))`
-/

namespace A306163.P5730435042948551714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306166 (A167499 (n + 3)).toNat

end

end A306163.P5730435042948551714

/-! ## A306163.P7177303803394627993

`A306166(A155212(n)+13)`
-/

namespace A306163.P7177303803394627993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306166 (A155212 n + 13).toNat

end

end A306163.P7177303803394627993

/-! ## A306163.P15424602600244849588

`A306166(A167487(n+3)-2)`
-/

namespace A306163.P15424602600244849588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306166 (A167487 (n + 3) - 2).toNat

end

end A306163.P15424602600244849588

/-! ## A306163.P2198899958105663016

`A306166(A052905(n+1)+10)`
-/

namespace A306163.P2198899958105663016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306166 (A052905 (n + 1) + 10).toNat

end

end A306163.P2198899958105663016

/-! ## A306163.P1388846068900773422

`A306166(A000096(n+4)-(n-1))`
-/

namespace A306163.P1388846068900773422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306166 (A000096 (n + 4) - ((n : ℤ) - 1)).toNat

end

end A306163.P1388846068900773422

/-!
# A306164: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306164, there is no canonical definition to state claims against.
-/

/-! ## A306164.P2568693507143303549

`A306166(A166136(n+4))`
-/

namespace A306164.P2568693507143303549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306166 (A166136 (n + 4)).toNat

end

end A306164.P2568693507143303549

/-! ## A306164.P16222652263964241512

`A306166(A000124(n+5)+5)`
-/

namespace A306164.P16222652263964241512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306166 (A000124 (n + 5) + 5).toNat

end

end A306164.P16222652263964241512

/-! ## A306164.P28019803352965319

`A306166(A000096(n+4)+7)`
-/

namespace A306164.P28019803352965319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306166 (A000096 (n + 4) + 7).toNat

end

end A306164.P28019803352965319

/-! ## A306164.P16053723884193008311

`A306166(A000217(n+5)+6)`
-/

namespace A306164.P16053723884193008311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306166 (A000217 (n + 5) + 6).toNat

end

end A306164.P16053723884193008311

/-! ## A306164.P1339192912228914723

`record[A306166(A063660(A167499(n)))]`
-/

namespace A306164.P1339192912228914723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306166 (A063660 (A167499 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306164.P1339192912228914723

/-!
# A306165: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306165, there is no canonical definition to state claims against.
-/

/-! ## A306165.P14273758566804439811

`A306166(A167499(n+5)+2)`
-/

namespace A306165.P14273758566804439811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306166 (A167499 (n + 5) + 2).toNat

end

end A306165.P14273758566804439811

/-! ## A306165.P13775713677176960172

`A306166(A000124(n+6)+6)`
-/

namespace A306165.P13775713677176960172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306166 (A000124 (n + 6) + 6).toNat

end

end A306165.P13775713677176960172

/-! ## A306165.P10262712953987524638

`A306166(A000217(n+6)+7)`
-/

namespace A306165.P10262712953987524638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306166 (A000217 (n + 6) + 7).toNat

end

end A306165.P10262712953987524638

/-! ## A306165.P4920338799662189517

`A306166(A052905(n+3)+12)`
-/

namespace A306165.P4920338799662189517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306166 (A052905 (n + 3) + 12).toNat

end

end A306165.P4920338799662189517

/-! ## A306165.P3669235385419697547

`A306166(A034856(n+6)-(n-2))`
-/

namespace A306165.P3669235385419697547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306166 (A034856 (n + 6) - ((n : ℤ) - 2)).toNat

end

end A306165.P3669235385419697547

/-!
# A306166: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306166, there is no canonical definition to state claims against.
-/

/-! ## A306166.P14970608698863184908

`A304926(n+1)+A082858(A059441(n+1))`
-/

namespace A306166.P14970608698863184908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304926 (n + 1) + A082858 (A059441 (n + 1)).toNat

end

end A306166.P14970608698863184908

/-! ## A306166.P8591298022789981546

`A304926(n+1)+A289618(A317525(n+1))`
-/

namespace A306166.P8591298022789981546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304926 (n + 1) + A289618 (A317525 (n + 1)).toNat

end

end A306166.P8591298022789981546

/-! ## A306166.P2382938668583545092

`A317383(n+1)-A037800(A189111(n+1))²`
-/

namespace A306166.P2382938668583545092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317383 (n + 1) - A037800 (A189111 (n + 1)).toNat ^ 2

end

end A306166.P2382938668583545092

/-! ## A306166.P15179511254601137864

`A317383(n+1)-A014707(A022171(n))`
-/

namespace A306166.P15179511254601137864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317383 (n + 1) - A014707 (A022171 n).toNat

end

end A306166.P15179511254601137864

/-! ## A306166.P5939617915996722563

`A304926(n+1)+A112609(A208567(n+1))`
-/

namespace A306166.P5939617915996722563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304926 (n + 1) + A112609 (A208567 (n + 1)).toNat

end

end A306166.P5939617915996722563

/-!
# A306167: Number of nXn 0..1 arrays with every element unequal to 0, 1, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306167, there is no canonical definition to state claims against.
-/

/-! ## A306167.P12576448739696832848

`A306172(∑[4*n]+1)`
-/

namespace A306167.P12576448739696832848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306172 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A306167.P12576448739696832848

/-! ## A306167.P15080025483551085142

`record[A306172(Δ[A235355(n)])]`
-/

namespace A306167.P15080025483551085142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306172 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306167.P15080025483551085142

/-! ## A306167.P11328112862328461378

`record[A003982(n)*A306172(n+1)]`
-/

namespace A306167.P11328112862328461378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A306172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306167.P11328112862328461378

/-! ## A306167.P11972173228780329891

`record[gcd(A003987(n), A306172(n+1))]`
-/

namespace A306167.P11972173228780329891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A306172 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306167.P11972173228780329891

/-! ## A306167.P484375888334010318

`A306172(A001844(n))+A184946(n)`
-/

namespace A306167.P484375888334010318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306172 (A001844 n).toNat + A184946 n

end

end A306167.P484375888334010318

/-!
# A306168: Number of nX4 0..1 arrays with every element unequal to 0, 1, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306168, there is no canonical definition to state claims against.
-/

/-! ## A306168.P4727666355985533458

`A306172(∑[n+3]+7)`
-/

namespace A306168.P4727666355985533458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306172 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A306168.P4727666355985533458

/-! ## A306168.P11763096383413538004

`record[A306172(n+5)/A117317(n)]`
-/

namespace A306168.P11763096383413538004
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306172 (n + 5) : ℚ) / (A117317 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306168.P11763096383413538004

/-! ## A306168.P11801265303610262086

`or(char[1], A306172(A167614(n+2)+1))`
-/

namespace A306168.P11801265303610262086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A306172 (A167614 (n + 2) + 1).toNat)

end

end A306168.P11801265303610262086

/-! ## A306168.P5525772879119474219

`A306172(A167614(n+2)+1)/gcd(11, A007318(n))`
-/

namespace A306168.P5525772879119474219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306172 (A167614 (n + 2) + 1).toNat : ℚ) / (Int.gcd 11 (A007318 n) : ℚ)

end

end A306168.P5525772879119474219

/-! ## A306168.P17594639298764952402

`A000041(C(n, 64)²)*A306172(A167614(n+2)+1)`
-/

namespace A306168.P17594639298764952402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n 64 ^ 2) * A306172 (A167614 (n + 2) + 1).toNat

end

end A306168.P17594639298764952402

/-!
# A306169: Number of nX5 0..1 arrays with every element unequal to 0, 1, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306169, there is no canonical definition to state claims against.
-/

/-! ## A306169.P12653563998302192859

`A306172(A155212(n)+13)`
-/

namespace A306169.P12653563998302192859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306172 (A155212 n + 13).toNat

end

end A306169.P12653563998302192859

/-! ## A306169.P5729307745039269039

`A306172(A056000(n)+15)`
-/

namespace A306169.P5729307745039269039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306172 (A056000 n + 15).toNat

end

end A306169.P5729307745039269039

/-! ## A306169.P1548577816685668180

`A306172(eq[7, A066657(n)])`
-/

namespace A306169.P1548577816685668180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306172 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306169.P1548577816685668180

/-! ## A306169.P6125918339857275515

`A306172(A000124(n+4)+4)`
-/

namespace A306169.P6125918339857275515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306172 (A000124 (n + 4) + 4).toNat

end

end A306169.P6125918339857275515

/-! ## A306169.P9429353357413132877

`A306172(A000217(n+4)+5)`
-/

namespace A306169.P9429353357413132877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306172 (A000217 (n + 4) + 5).toNat

end

end A306169.P9429353357413132877

/-!
# A306170: Number of nX6 0..1 arrays with every element unequal to 0, 1, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306170, there is no canonical definition to state claims against.
-/

/-! ## A306170.P1517471507762585694

`A306172(∑[n+5]+16)`
-/

namespace A306170.P1517471507762585694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306172 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A306170.P1517471507762585694

/-! ## A306170.P4721546780742839529

`A306172(A167499(n+4)+1)+char[21]`
-/

namespace A306170.P4721546780742839529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306172 (A167499 (n + 4) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A306170.P4721546780742839529

/-! ## A306170.P7664677097708919815

`A306172(A167499(n+4)+1)%A000108(n+5)`
-/

namespace A306170.P7664677097708919815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306172 (A167499 (n + 4) + 1).toNat) (A000108 (n + 5))

end

end A306170.P7664677097708919815

/-! ## A306170.P2874385756799098288

`A007318(C(2, n))*A306172(A167499(n+4)+1)`
-/

namespace A306170.P2874385756799098288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A306172 (A167499 (n + 4) + 1).toNat

end

end A306170.P2874385756799098288

/-! ## A306170.P3109820456698607944

`gcd(13, A007318(n))*A306172(A167499(n+4)+1)`
-/

namespace A306170.P3109820456698607944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 13 (A007318 n) : ℤ) * A306172 (A167499 (n + 4) + 1).toNat

end

end A306170.P3109820456698607944

/-!
# A306171: Number of nX7 0..1 arrays with every element unequal to 0, 1, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A306171, there is no canonical definition to state claims against.
-/

/-! ## A306171.P7285839487171710083

`A306172(A056119(n)+28)`
-/

namespace A306171.P7285839487171710083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306172 (A056119 n + 28).toNat

end

end A306171.P7285839487171710083

/-! ## A306171.P8314105170289501077

`A306172(eq[11, A066657(n)])`
-/

namespace A306171.P8314105170289501077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306172 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306171.P8314105170289501077

/-! ## A306171.P4703224690949609919

`A306172(A000124(n+6)+6)`
-/

namespace A306171.P4703224690949609919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306172 (A000124 (n + 6) + 6).toNat

end

end A306171.P4703224690949609919

/-! ## A306171.P17434289590602152918

`A306172(A000096(n+5)+8)`
-/

namespace A306171.P17434289590602152918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306172 (A000096 (n + 5) + 8).toNat

end

end A306171.P17434289590602152918

/-! ## A306171.P17477820897784741058

`A306172(A000217(n+6)+7)`
-/

namespace A306171.P17477820897784741058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306172 (A000217 (n + 6) + 7).toNat

end

end A306171.P17477820897784741058

/-!
# A306173: a(n) is the n-th term of the inverse Euler transform of j-> n^(j-1).

The programs for A306173, there is no canonical definition to state claims against.
-/

/-! ## A306173.P2085473960631247467

`A065177(∑[4*n])`
-/

namespace A306173.P2085473960631247467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065177 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A306173.P2085473960631247467

/-! ## A306173.P13062528511600998547

`gcd(A000038(n), A065177(A046092(n)))`
-/

namespace A306173.P13062528511600998547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A065177 (A046092 n).toNat)

end

end A306173.P13062528511600998547

/-! ## A306173.P7609052359367596763

`A065177(A046092(n))/A007318(∑[n+1])`
-/

namespace A306173.P7609052359367596763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065177 (A046092 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A306173.P7609052359367596763

/-!
# A306175: Number of unrooted self-avoiding walks with n steps that can make turns from the set +-Pi/5, +-3*Pi/5.

The programs for A306175, there is no canonical definition to state claims against.
-/

/-! ## A306175.P1772076496923830833

`record[A103221(A182645(n+1)+A103221(n))]`
-/

namespace A306175.P1772076496923830833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A182645 (n + 1) + A103221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306175.P1772076496923830833

/-! ## A306175.P8532511806274379626

`∑[A324695(a(n-1)+2)]` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A306175.P8532511806274379626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n f1 =>
  A324695 (f1 (n - 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306175.P8532511806274379626

/-!
# A306177: Number of unrooted self-avoiding walks with n steps that can make turns from the set +-Pi/7, +-3*Pi/7, +-5*Pi/7.

The programs for A306177, there is no canonical definition to state claims against.
-/

/-! ## A306177.P3407516036154018555

`A265384(A005506(n))`
-/

namespace A306177.P3407516036154018555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265384 (A005506 n).toNat

end

end A306177.P3407516036154018555

/-!
# A306178: Number of unrooted self-avoiding walks with n steps that can make turns from the set 0, +-Pi/4, +-Pi/2, +-3*Pi/4.

The programs for A306178, there is no canonical definition to state claims against.
-/

/-! ## A306178.P3561700304617833248

`A146093(A053141(n))+A053141(n)`
-/

namespace A306178.P3561700304617833248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146093 (A053141 n).toNat + A053141 n

end

end A306178.P3561700304617833248

/-!
# A306179: Number of unrooted self-avoiding walks with n steps that can make turns from the set +-Pi/9, +-3*Pi/9, +-5*Pi/9, +-7*Pi/9.

The programs for A306179, there is no canonical definition to state claims against.
-/

/-! ## A306179.P10166025725261557596

`A361081(A176501(n+2))`
-/

namespace A306179.P10166025725261557596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361081 (A176501 (n + 2)).toNat

end

end A306179.P10166025725261557596

/-!
# A306180: Number of unrooted self-avoiding walks with n steps that can make turns from the set 0, +-Pi/5, +-2*Pi/5, +-3*Pi/5, +-4*Pi/5.

The programs for A306180, there is no canonical definition to state claims against.
-/

/-! ## A306180.P5197038460650178570

`A000720(A224774(n+1))-(-1)^n`
-/

namespace A306180.P5197038460650178570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A224774 (n + 1)).toNat - (-1) ^ n

end

end A306180.P5197038460650178570

/-!
# A306182: Number of unrooted self-avoiding walks with n steps that can make turns from the set 0, +-Pi/6, +-2*Pi/6, +-3*Pi/6, +-4*Pi/6, +-5*Pi/6.

The programs for A306182, there is no canonical definition to state claims against.
-/

/-! ## A306182.P18327273017704468731

`A341820(A000765(n)+and(1, n))`
-/

namespace A306182.P18327273017704468731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341820 (A000765 n + (Nat.land 1 n : ℤ)).toNat

end

end A306182.P18327273017704468731

/-!
# A306183: The coefficients of x in the reduction of x^2 -> x + 1 for the polynomial p(n,x) = Product_{k=1..n} (x+k).

The programs for A306183, the canonical program `A306183.P12502731175110001571` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306183 has offset 0).

The definition of A306183 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306183.P12502731175110001571

`2*n*a(n-1)-(n²-n-1)*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A306183

/-- `2*n*a(n-1)-(n²-n-1)*a(n-2)` -/
def P12502731175110001571.Spec : Prop :=
  ∀ n, P12502731175110001571.a n = A306183 n

theorem P12502731175110001571.correct : P12502731175110001571.Spec := by
  intro n
  simp only [A306183]

end A306183

/-! ## A306183.P1659991151294780168

`record[abs(A323620(n))]`
-/

namespace A306183.P1659991151294780168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A323620 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306183.P1659991151294780168

namespace A306183

/-- `record[abs(A323620(n))]` -/
def P1659991151294780168.Spec : Prop :=
  ∀ n, P1659991151294780168.a n = A306183 n

end A306183

/-! ## A306183.P16286915652261410699

`abs(A323620(n+2))`
-/

namespace A306183.P16286915652261410699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A323620 (n + 2)|

end

end A306183.P16286915652261410699

namespace A306183

/-- `abs(A323620(n+2))` -/
def P16286915652261410699.Spec : Prop :=
  ∀ n, P16286915652261410699.a n = A306183 n

end A306183

/-! ## A306183.P7490900432715979185

`A265165(n+2)-A192936(n)`
-/

namespace A306183.P7490900432715979185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265165 (n + 2) - A192936 n

end

end A306183.P7490900432715979185

namespace A306183

/-- `A265165(n+2)-A192936(n)` -/
def P7490900432715979185.Spec : Prop :=
  ∀ n, P7490900432715979185.a n = A306183 n

end A306183

/-! ## A306183.P8501661677544204938

`-(A034947(A005408(n))*A323620(n+2))`
-/

namespace A306183.P8501661677544204938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A034947 (A005408 n).toNat * A323620 (n + 2))

end

end A306183.P8501661677544204938

namespace A306183

/-- `-(A034947(A005408(n))*A323620(n+2))` -/
def P8501661677544204938.Spec : Prop :=
  ∀ n, P8501661677544204938.a n = A306183 n

end A306183

/-! ## A306183.P17210838409458759605

`-(A014604(Δ[A080513(n+1)])*A323620(n+2))`
-/

namespace A306183.P17210838409458759605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A014604 (f1 (n + 1) - f1 n).toNat * A323620 (n + 2))

end

end A306183.P17210838409458759605

namespace A306183

/-- `-(A014604(Δ[A080513(n+1)])*A323620(n+2))` -/
def P17210838409458759605.Spec : Prop :=
  ∀ n, P17210838409458759605.a n = A306183 n

end A306183

/-!
# A306184: a(n) = (2n+1)!! mod (2n)!! where k!! = A006882(k).

The programs for A306184, there is no canonical definition to state claims against.
-/

/-! ## A306184.P17678557391183517576

`A227415(2*(n+1))`
-/

namespace A306184.P17678557391183517576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227415 (2 * (n + 1))

end

end A306184.P17678557391183517576

/-! ## A306184.P3540210857543527451

`or(1, A227415(A103517(n)))`
-/

namespace A306184.P3540210857543527451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A227415 (A103517 n).toNat)

end

end A306184.P3540210857543527451

/-! ## A306184.P2598372258742569314

`A227415(A103517(n))+A000007(n)`
-/

namespace A306184.P2598372258742569314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227415 (A103517 n).toNat + A000007 n

end

end A306184.P2598372258742569314

/-! ## A306184.P11760109624136119496

`A227415(A103517(n))+A000045(C(2, n+2))`
-/

namespace A306184.P11760109624136119496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227415 (A103517 n).toNat + A000045 (Nat.choose 2 (n + 2))

end

end A306184.P11760109624136119496

/-! ## A306184.P6812567025526210055

`A227415(A103517(n))^(A000040(n+1)%2)`
-/

namespace A306184.P6812567025526210055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227415 (A103517 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A306184.P6812567025526210055

/-!
# A306185: a(n) = (2n+1)!! + (2n)!! where k!! = A006882(k).

The programs for A306185, the canonical program `A306185.P10233409120489882193` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306185 has offset 1).

The definition of A306185 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306185.P10233409120489882193

`A006882(2*(n+1)+1)+A006882(2*(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A306185

/-- `A006882(2*(n+1)+1)+A006882(2*(n+1))` -/
def P10233409120489882193.Spec : Prop :=
  ∀ n, P10233409120489882193.a n = A306185 (n + 1)

theorem P10233409120489882193.correct : P10233409120489882193.Spec := by
  intro n
  simp only [A306185, Nat.add_sub_cancel]

end A306185

/-! ## A306185.P7629664735972983177

`Δ[A129981(Δ[n²])]`
-/

namespace A306185.P7629664735972983177
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129981 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306185.P7629664735972983177

namespace A306185

/-- `Δ[A129981(Δ[n²])]` -/
def P7629664735972983177.Spec : Prop :=
  ∀ n, P7629664735972983177.a n = A306185 (n + 1)

end A306185

/-! ## A306185.P660588778000374431

`A060696(2*(n+2))`
-/

namespace A306185.P660588778000374431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060696 (2 * (n + 2))

end

end A306185.P660588778000374431

namespace A306185

/-- `A060696(2*(n+2))` -/
def P660588778000374431.Spec : Prop :=
  ∀ n, P660588778000374431.a n = A306185 (n + 1)

end A306185

/-! ## A306185.P7177526591290929906

`A076051(2*n+3)`
-/

namespace A306185.P7177526591290929906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076051 (2 * n + 3)

end

end A306185.P7177526591290929906

namespace A306185

/-- `A076051(2*n+3)` -/
def P7177526591290929906.Spec : Prop :=
  ∀ n, P7177526591290929906.a n = A306185 (n + 1)

end A306185

/-! ## A306185.P17929016527968910222

`record[A060696(C(n, a(n-1)))]` with `a(0)=5, a(1)=1`
-/

namespace A306185.P17929016527968910222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 1] fun n f1 =>
  A060696 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306185.P17929016527968910222

namespace A306185

/-- `record[A060696(C(n, a(n-1)))]` -/
def P17929016527968910222.Spec : Prop :=
  ∀ n, P17929016527968910222.a n = A306185 (n + 1)

end A306185

/-! ## A306185.P16901304112652128940

`Δ[record[A129981(A093178(n))]]`
-/

namespace A306185.P16901304112652128940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129981 (A093178 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306185.P16901304112652128940

namespace A306185

/-- `Δ[record[A129981(A093178(n))]]` -/
def P16901304112652128940.Spec : Prop :=
  ∀ n, P16901304112652128940.a n = A306185 (n + 1)

end A306185

/-! ## A306185.P6843502481231017412

`A001147(n+2)+A000165(n+1)`
-/

namespace A306185.P6843502481231017412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (n + 2) + A000165 (n + 1)

end

end A306185.P6843502481231017412

namespace A306185

/-- `A001147(n+2)+A000165(n+1)` -/
def P6843502481231017412.Spec : Prop :=
  ∀ n, P6843502481231017412.a n = A306185 (n + 1)

end A306185

/-! ## A306185.P11083909959184157646

`A000165(n+1)/A046161(n+1)*A173396(n+1)`
-/

namespace A306185.P11083909959184157646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000165 (n + 1) : ℚ) / (A046161 (n + 1) : ℚ) * (A173396 (n + 1) : ℚ)

end

end A306185.P11083909959184157646

namespace A306185

/-- `A000165(n+1)/A046161(n+1)*A173396(n+1)` -/
def P11083909959184157646.Spec : Prop :=
  ∀ n, P11083909959184157646.a n = (A306185 (n + 1) : ℚ)

end A306185

/-!
# A306186: Array read by antidiagonals upwards where A(n, k) is the number of non-isomorphic multiset partitions of weight n with k levels of brackets.

The programs for A306186, there is no canonical definition to state claims against.
-/

/-! ## A306186.P16041056865128546836

`A089694(A196904(n+1))+A060642(n+1)`
-/

namespace A306186.P16041056865128546836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089694 (A196904 (n + 1)).toNat + A060642 (n + 1)

end

end A306186.P16041056865128546836

/-!
# A306187: Number of n-times partitions of n.

The programs for A306187, there is no canonical definition to state claims against.
-/

/-! ## A306187.P10050135864655142127

`A323718(∑[4*n])`
-/

namespace A306187.P10050135864655142127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323718 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A306187.P10050135864655142127

/-! ## A306187.P4258374037701929857

`or(A000007(n), A323718(A046092(n)))`
-/

namespace A306187.P4258374037701929857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A323718 (A046092 n).toNat)

end

end A306187.P4258374037701929857

/-! ## A306187.P8062272659163632783

`A010052(n²)*A323718(A046092(n))`
-/

namespace A306187.P8062272659163632783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n ^ 2) * A323718 (A046092 n).toNat

end

end A306187.P8062272659163632783

/-! ## A306187.P2427447912612984964

`char[A004247(n)]*A323718(A046092(n))`
-/

namespace A306187.P2427447912612984964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A323718 (A046092 n).toNat

end

end A306187.P2427447912612984964

/-! ## A306187.P3124799170965396460

`char[A130947(n)]*A323718(A046092(n))`
-/

namespace A306187.P3124799170965396460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130947 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A323718 (A046092 n).toNat

end

end A306187.P3124799170965396460

/-! ## A306187.P15341000809105989504

`A323718(A046092(n))+A000007(n+1)`
-/

namespace A306187.P15341000809105989504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323718 (A046092 n).toNat + A000007 (n + 1)

end

end A306187.P15341000809105989504

/-! ## A306187.P15761035578635385673

`A323718(A046092(n))+and(1, A138964(n))`
-/

namespace A306187.P15761035578635385673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323718 (A046092 n).toNat + Int.land 1 (A138964 n)

end

end A306187.P15761035578635385673

/-! ## A306187.P4477260710200982978

`or(A000007(n), A323718(A106232(n+1)))`
-/

namespace A306187.P4477260710200982978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A323718 (A106232 (n + 1)).toNat)

end

end A306187.P4477260710200982978

/-! ## A306187.P14450066906055195892

`and(1, A044518(n+1))*A323718(A046092(n))`
-/

namespace A306187.P14450066906055195892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A044518 (n + 1)) * A323718 (A046092 n).toNat

end

end A306187.P14450066906055195892

/-!
# A306188: Number of n-times strict partitions of n.

The programs for A306188, there is no canonical definition to state claims against.
-/

/-! ## A306188.P14976292218741772553

`ceil(A007867(n+1)/2)`
-/

namespace A306188.P14976292218741772553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007867 (n + 1) : ℚ) / 2⌉

end

end A306188.P14976292218741772553

/-! ## A306188.P830281187907719519

`A096646(A101230(n))`
-/

namespace A306188.P830281187907719519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096646 (A101230 n).toNat

end

end A306188.P830281187907719519

/-! ## A306188.P10426049708007530431

`A096646(A132218(n))`
-/

namespace A306188.P10426049708007530431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096646 (A132218 n).toNat

end

end A306188.P10426049708007530431

/-!
# A306190: a(n) = p^2 - p - 1 where p = prime(n), the n-th prime.

The programs for A306190, the canonical program `A306190.P7131160644180957095` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306190 has offset 1).

The definition of A306190 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306190.P7131160644180957095

`A036689(n+1)-1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A306190

/-- `A036689(n+1)-1` -/
def P7131160644180957095.Spec : Prop :=
  ∀ n, P7131160644180957095.a n = A306190 (n + 1)

theorem P7131160644180957095.correct : P7131160644180957095.Spec := by
  intro n
  simp only [A306190, Nat.add_sub_cancel]

end A306190

/-! ## A306190.P8212875835832419124

`A036690(n+1)-A072055(n+1)`
-/

namespace A306190.P8212875835832419124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036690 (n + 1) - A072055 (n + 1)

end

end A306190.P8212875835832419124

namespace A306190

/-- `A036690(n+1)-A072055(n+1)` -/
def P8212875835832419124.Spec : Prop :=
  ∀ n, P8212875835832419124.a n = A306190 (n + 1)

end A306190

/-! ## A306190.P17177221423414548117

`A060800(n+1)-A089241(n+1)`
-/

namespace A306190.P17177221423414548117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060800 (n + 1) - A089241 (n + 1)

end

end A306190.P17177221423414548117

namespace A306190

/-- `A060800(n+1)-A089241(n+1)` -/
def P17177221423414548117.Spec : Prop :=
  ∀ n, P17177221423414548117.a n = A306190 (n + 1)

end A306190

/-! ## A306190.P5967222832370167003

`A033879(A001248(n+1))`
-/

namespace A306190.P5967222832370167003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A001248 (n + 1)).toNat

end

end A306190.P5967222832370167003

namespace A306190

/-- `A033879(A001248(n+1))` -/
def P5967222832370167003.Spec : Prop :=
  ∀ n, P5967222832370167003.a n = A306190 (n + 1)

end A306190

/-! ## A306190.P816926646888239040

`A119959(n+1)-2`
-/

namespace A306190.P816926646888239040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119959 (n + 1) - 2

end

end A306190.P816926646888239040

namespace A306190

/-- `A119959(n+1)-2` -/
def P816926646888239040.Spec : Prop :=
  ∀ n, P816926646888239040.a n = A306190 (n + 1)

theorem P816926646888239040.correct : P816926646888239040.Spec := by
  intro n
  simp only [A306190, Nat.add_sub_cancel, A306190.P816926646888239040.a, A306190.P7131160644180957095.a, A036689, A036689.P7293150385208763651.a, A119959, A119959.P13944283531286712602.a, A008837, A008837.P8759727606906235899.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A306190

/-! ## A306190.P7785679631771258863

`2*A008837(n+1)-1`
-/

namespace A306190.P7785679631771258863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008837 (n + 1) - 1

end

end A306190.P7785679631771258863

namespace A306190

/-- `2*A008837(n+1)-1` -/
def P7785679631771258863.Spec : Prop :=
  ∀ n, P7785679631771258863.a n = A306190 (n + 1)

end A306190

/-! ## A306190.P8753740505881723206

`2*A072205(n+1)-3`
-/

namespace A306190.P8753740505881723206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072205 (n + 1) - 3

end

end A306190.P8753740505881723206

namespace A306190

/-- `2*A072205(n+1)-3` -/
def P8753740505881723206.Spec : Prop :=
  ∀ n, P8753740505881723206.a n = A306190 (n + 1)

theorem P8753740505881723206.correct : P8753740505881723206.Spec := by
  intro n
  simp only [A306190, Nat.add_sub_cancel, A306190.P8753740505881723206.a, A306190.P7131160644180957095.a, A036689, A036689.P7293150385208763651.a, A072205, A072205.P4241057387685092381.a, A008837, A008837.P8759727606906235899.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A306190

/-! ## A306190.P8214186890466713544

`2*C(Δ[A007504(n)], 2)-1`
-/

namespace A306190.P8214186890466713544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (f1 (n + 1) - f1 n).toNat 2 : ℤ) - 1

end

end A306190.P8214186890466713544

namespace A306190

/-- `2*C(Δ[A007504(n)], 2)-1` -/
def P8214186890466713544.Spec : Prop :=
  ∀ n, P8214186890466713544.a n = A306190 (n + 1)

end A306190

/-! ## A306190.P4176883398519410916

`2*C(A000040(n+1), 2)-1`
-/

namespace A306190.P4176883398519410916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (A000040 (n + 1)).toNat 2 : ℤ) - 1

end

end A306190.P4176883398519410916

namespace A306190

/-- `2*C(A000040(n+1), 2)-1` -/
def P4176883398519410916.Spec : Prop :=
  ∀ n, P4176883398519410916.a n = A306190 (n + 1)

end A306190

/-! ## A306190.P1479571262599249843

`A040976(n+1)+A005722(n+1)`
-/

namespace A306190.P1479571262599249843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + A005722 (n + 1)

end

end A306190.P1479571262599249843

namespace A306190

/-- `A040976(n+1)+A005722(n+1)` -/
def P1479571262599249843.Spec : Prop :=
  ∀ n, P1479571262599249843.a n = A306190 (n + 1)

end A306190

/-! ## A306190.P6441917336601979520

`A062235(n+1)+A046933(n+1)`
-/

namespace A306190.P6441917336601979520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062235 (n + 1) + A046933 (n + 1)

end

end A306190.P6441917336601979520

namespace A306190

/-- `A062235(n+1)+A046933(n+1)` -/
def P6441917336601979520.Spec : Prop :=
  ∀ n, P6441917336601979520.a n = A306190 (n + 1)

end A306190

/-! ## A306190.P247940957323976287

`A001248(n+1)-A008864(n+1)`
-/

namespace A306190.P247940957323976287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A008864 (n + 1)

end

end A306190.P247940957323976287

namespace A306190

/-- `A001248(n+1)-A008864(n+1)` -/
def P247940957323976287.Spec : Prop :=
  ∀ n, P247940957323976287.a n = A306190 (n + 1)

end A306190

/-! ## A306190.P13513108940849942010

`A049001(n+1)-A006093(n+1)`
-/

namespace A306190.P13513108940849942010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (n + 1) - A006093 (n + 1)

end

end A306190.P13513108940849942010

namespace A306190

/-- `A049001(n+1)-A006093(n+1)` -/
def P13513108940849942010.Spec : Prop :=
  ∀ n, P13513108940849942010.a n = A306190 (n + 1)

end A306190

/-! ## A306190.P2047089303420040631

`A084920(n+1)-A000040(n+1)`
-/

namespace A306190.P2047089303420040631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) - A000040 (n + 1)

end

end A306190.P2047089303420040631

namespace A306190

/-- `A084920(n+1)-A000040(n+1)` -/
def P2047089303420040631.Spec : Prop :=
  ∀ n, P2047089303420040631.a n = A306190 (n + 1)

end A306190

/-! ## A306190.P15652798377710499381

`A066872(n+1)-A052147(n+1)`
-/

namespace A306190.P15652798377710499381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) - A052147 (n + 1)

end

end A306190.P15652798377710499381

namespace A306190

/-- `A066872(n+1)-A052147(n+1)` -/
def P15652798377710499381.Spec : Prop :=
  ∀ n, P15652798377710499381.a n = A306190 (n + 1)

end A306190

/-! ## A306190.P16779772738712996781

`A079704(n+1)-A060800(n+1)`
-/

namespace A306190.P16779772738712996781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079704 (n + 1) - A060800 (n + 1)

end

end A306190.P16779772738712996781

namespace A306190

/-- `A079704(n+1)-A060800(n+1)` -/
def P16779772738712996781.Spec : Prop :=
  ∀ n, P16779772738712996781.a n = A306190 (n + 1)

end A306190

/-! ## A306190.P2319663452852872528

`A061725(n+1)-A113935(n+1)`
-/

namespace A306190.P2319663452852872528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061725 (n + 1) - A113935 (n + 1)

end

end A306190.P2319663452852872528

namespace A306190

/-- `A061725(n+1)-A113935(n+1)` -/
def P2319663452852872528.Spec : Prop :=
  ∀ n, P2319663452852872528.a n = A306190 (n + 1)

end A306190

/-! ## A306190.P12710652375226652152

`A117961(n+1)-A066872(n+1)`
-/

namespace A306190.P12710652375226652152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117961 (n + 1) - A066872 (n + 1)

end

end A306190.P12710652375226652152

namespace A306190

/-- `A117961(n+1)-A066872(n+1)` -/
def P12710652375226652152.Spec : Prop :=
  ∀ n, P12710652375226652152.a n = A306190 (n + 1)

end A306190

/-! ## A306190.P17701552683473964228

`A182174(n+1)-A014692(n+1)`
-/

namespace A306190.P17701552683473964228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182174 (n + 1) - A014692 (n + 1)

end

end A306190.P17701552683473964228

namespace A306190

/-- `A182174(n+1)-A014692(n+1)` -/
def P17701552683473964228.Spec : Prop :=
  ∀ n, P17701552683473964228.a n = A306190 (n + 1)

end A306190

/-! ## A306190.P6764116250633924837

`A179262(n+1)-A036690(n+1)`
-/

namespace A306190.P6764116250633924837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179262 (n + 1) - A036690 (n + 1)

end

end A306190.P6764116250633924837

namespace A306190

/-- `A179262(n+1)-A036690(n+1)` -/
def P6764116250633924837.Spec : Prop :=
  ∀ n, P6764116250633924837.a n = A306190 (n + 1)

end A306190

/-!
# A306192: a(n) = (n - 1)*prime(n + 1).

The programs for A306192, the canonical program `A306192.P3567604202971775834` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306192 has offset 1).

The definition of A306192 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306192.P17201306213016058941

`n/(n+2)*A033286(n+2)`
-/

namespace A306192.P17201306213016058941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 2 : ℚ) * (A033286 (n + 2) : ℚ)

end

end A306192.P17201306213016058941

namespace A306192

/-- `n/(n+2)*A033286(n+2)` -/
def P17201306213016058941.Spec : Prop :=
  ∀ n, P17201306213016058941.a n = (A306192 (n + 1) : ℚ)

theorem P17201306213016058941.correct : P17201306213016058941.Spec := by
  intro n
  simp only [A306192, Nat.add_sub_cancel, A306192.P17201306213016058941.a, A306192.P3567604202971775834.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A033286, A033286.P2794343547372572705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A306192

/-! ## A306192.P3567604202971775834

`A033286(n+2)-2*A000040(n+2)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A306192

/-- `A033286(n+2)-2*A000040(n+2)` -/
def P3567604202971775834.Spec : Prop :=
  ∀ n, P3567604202971775834.a n = A306192 (n + 1)

theorem P3567604202971775834.correct : P3567604202971775834.Spec := by
  intro n
  simp only [A306192, Nat.add_sub_cancel]

end A306192

/-! ## A306192.P2785436959700342215

`n*p?[2*n+1]`
-/

namespace A306192.P2785436959700342215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A306192.P2785436959700342215

namespace A306192

/-- `n*p?[2*n+1]` -/
def P2785436959700342215.Spec : Prop :=
  ∀ n, (P2785436959700342215.a n : ℤ) = A306192 (n + 1)

end A306192

/-! ## A306192.P11174521842522056576

`lcm(n, p?[2*n-1])`
-/

namespace A306192.P11174521842522056576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A306192.P11174521842522056576

namespace A306192

/-- `lcm(n, p?[2*n-1])` -/
def P11174521842522056576.Spec : Prop :=
  ∀ n, (P11174521842522056576.a n : ℤ) = A306192 (n + 1)

end A306192

/-! ## A306192.P10155138240290554822

`n*A045344(n+1)`
-/

namespace A306192.P10155138240290554822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A045344 (n + 1)

end

end A306192.P10155138240290554822

namespace A306192

/-- `n*A045344(n+1)` -/
def P10155138240290554822.Spec : Prop :=
  ∀ n, P10155138240290554822.a n = A306192 (n + 1)

end A306192

/-! ## A306192.P9850328136160671659

`n*A065091(n+1)`
-/

namespace A306192.P9850328136160671659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A065091 (n + 1)

end

end A306192.P9850328136160671659

namespace A306192

/-- `n*A065091(n+1)` -/
def P9850328136160671659.Spec : Prop :=
  ∀ n, P9850328136160671659.a n = A306192 (n + 1)

theorem P9850328136160671659.correct : P9850328136160671659.Spec := by
  intro n
  simp only [A306192, Nat.add_sub_cancel, A306192.P9850328136160671659.a, A306192.P3567604202971775834.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A033286, A033286.P2794343547372572705.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A306192

/-! ## A306192.P12702974554976876259

`n*A140475(n+1)`
-/

namespace A306192.P12702974554976876259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A140475 (n + 1)

end

end A306192.P12702974554976876259

namespace A306192

/-- `n*A140475(n+1)` -/
def P12702974554976876259.Spec : Prop :=
  ∀ n, P12702974554976876259.a n = A306192 (n + 1)

end A306192

/-! ## A306192.P1627756038933298472

`n*Δ[A007504(n+1)]`
-/

namespace A306192.P1627756038933298472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A306192.P1627756038933298472

namespace A306192

/-- `n*Δ[A007504(n+1)]` -/
def P1627756038933298472.Spec : Prop :=
  ∀ n, P1627756038933298472.a n = A306192 (n + 1)

end A306192

/-! ## A306192.P8524733480945562698

`n*(A135731(n+1)-1)`
-/

namespace A306192.P8524733480945562698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A135731 (n + 1) - 1)

end

end A306192.P8524733480945562698

namespace A306192

/-- `n*(A135731(n+1)-1)` -/
def P8524733480945562698.Spec : Prop :=
  ∀ n, P8524733480945562698.a n = A306192 (n + 1)

end A306192

/-! ## A306192.P8034589932746153248

`n*(A048974(n+1)-2)`
-/

namespace A306192.P8034589932746153248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A048974 (n + 1) - 2)

end

end A306192.P8034589932746153248

namespace A306192

/-- `n*(A048974(n+1)-2)` -/
def P8034589932746153248.Spec : Prop :=
  ∀ n, P8034589932746153248.a n = A306192 (n + 1)

theorem P8034589932746153248.correct : P8034589932746153248.Spec := by
  intro n
  simp only [A306192, Nat.add_sub_cancel, A306192.P8034589932746153248.a, A306192.P3567604202971775834.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A033286, A033286.P2794343547372572705.a, A048974, A048974.P12620924037349992420.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A306192

/-! ## A306192.P6163976448336724286

`n*(A154115(n+1)+3)`
-/

namespace A306192.P6163976448336724286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A154115 (n + 1) + 3)

end

end A306192.P6163976448336724286

namespace A306192

/-- `n*(A154115(n+1)+3)` -/
def P6163976448336724286.Spec : Prop :=
  ∀ n, P6163976448336724286.a n = A306192 (n + 1)

theorem P6163976448336724286.correct : P6163976448336724286.Spec := by
  intro n
  simp only [A306192, Nat.add_sub_cancel, A306192.P6163976448336724286.a, A306192.P3567604202971775834.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A033286, A033286.P2794343547372572705.a, A154115, A154115.P220062109648616098.a, A086801, A086801.P7118698000878110641.f1, A086801.P7118698000878110641.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A306192

/-! ## A306192.P3112738224347684228

`n*(∑[A001223(n+1)]+2)`
-/

namespace A306192.P3112738224347684228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A306192.P3112738224347684228

namespace A306192

/-- `n*(∑[A001223(n+1)]+2)` -/
def P3112738224347684228.Spec : Prop :=
  ∀ n, P3112738224347684228.a n = A306192 (n + 1)

end A306192

/-! ## A306192.P8345734162578878638

`n*(A014690(n+1)-(n+1))`
-/

namespace A306192.P8345734162578878638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A014690 (n + 1) - (n + 1 : ℤ))

end

end A306192.P8345734162578878638

namespace A306192

/-- `n*(A014690(n+1)-(n+1))` -/
def P8345734162578878638.Spec : Prop :=
  ∀ n, P8345734162578878638.a n = A306192 (n + 1)

end A306192

/-! ## A306192.P4208982687835611513

`lcm(A038608(n), A045344(n+1))`
-/

namespace A306192.P4208982687835611513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038608 n) (A045344 (n + 1))

end

end A306192.P4208982687835611513

namespace A306192

/-- `lcm(A038608(n), A045344(n+1))` -/
def P4208982687835611513.Spec : Prop :=
  ∀ n, (P4208982687835611513.a n : ℤ) = A306192 (n + 1)

end A306192

/-! ## A306192.P13136886451127146880

`A000040(n+2)*n`
-/

namespace A306192.P13136886451127146880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * (n : ℤ)

end

end A306192.P13136886451127146880

namespace A306192

/-- `A000040(n+2)*n` -/
def P13136886451127146880.Spec : Prop :=
  ∀ n, P13136886451127146880.a n = A306192 (n + 1)

theorem P13136886451127146880.correct : P13136886451127146880.Spec := by
  intro n
  simp only [A306192, Nat.add_sub_cancel, A306192.P13136886451127146880.a, A306192.P3567604202971775834.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A033286, A033286.P2794343547372572705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A306192

/-! ## A306192.P13258264455434808976

`n*A006005(n+2)`
-/

namespace A306192.P13258264455434808976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A006005 (n + 2)

end

end A306192.P13258264455434808976

namespace A306192

/-- `n*A006005(n+2)` -/
def P13258264455434808976.Spec : Prop :=
  ∀ n, P13258264455434808976.a n = A306192 (n + 1)

theorem P13258264455434808976.correct : P13258264455434808976.Spec := by
  intro n
  simp only [A306192, Nat.add_sub_cancel, A306192.P13258264455434808976.a, A306192.P3567604202971775834.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006005, A006005.P1228063357782503489.a, A033286, A033286.P2794343547372572705.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A306192

/-! ## A306192.P14569708783839301714

`n*A171577(n+2)`
-/

namespace A306192.P14569708783839301714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A171577 (n + 2)

end

end A306192.P14569708783839301714

namespace A306192

/-- `n*A171577(n+2)` -/
def P14569708783839301714.Spec : Prop :=
  ∀ n, P14569708783839301714.a n = A306192 (n + 1)

end A306192

/-! ## A306192.P9003612680450122447

`lcm(n, A073579(n+2))`
-/

namespace A306192.P9003612680450122447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A073579 (n + 2))

end

end A306192.P9003612680450122447

namespace A306192

/-- `lcm(n, A073579(n+2))` -/
def P9003612680450122447.Spec : Prop :=
  ∀ n, (P9003612680450122447.a n : ℤ) = A306192 (n + 1)

end A306192

/-! ## A306192.P14874516350966925640

`n*sqrt(A001248(n+2))`
-/

namespace A306192.P14874516350966925640
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (A001248 (n + 2) : ℝ)

end

end A306192.P14874516350966925640

namespace A306192

/-- `n*sqrt(A001248(n+2))` -/
def P14874516350966925640.Spec : Prop :=
  ∀ n, P14874516350966925640.a n = (A306192 (n + 1) : ℝ)

end A306192

/-! ## A306192.P3512100046479748994

`n*Δ[A237589(n+1)]`
-/

namespace A306192.P3512100046479748994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A306192.P3512100046479748994

namespace A306192

/-- `n*Δ[A237589(n+1)]` -/
def P3512100046479748994.Spec : Prop :=
  ∀ n, P3512100046479748994.a n = A306192 (n + 1)

end A306192

/-!
# A306193: a(n) = Product_{k=0..n} (1 + n!/k!).

The programs for A306193, there is no canonical definition to state claims against.
-/

/-! ## A306193.P8402682546845953269

`A323717(n)/A000178(n)`
-/

namespace A306193.P8402682546845953269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323717 n : ℚ) / (A000178 n : ℚ)

end

end A306193.P8402682546845953269

/-! ## A306193.P5704161477048563136

`A323717(n)/A107415(∑[n])`
-/

namespace A306193.P5704161477048563136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323717 n : ℚ) / (A107415 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A306193.P5704161477048563136

/-! ## A306193.P13242863185269585074

`A323717(n)/A290518(∑[n])`
-/

namespace A306193.P13242863185269585074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323717 n : ℚ) / (A290518 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A306193.P13242863185269585074

/-! ## A306193.P16413299369411422477

`A323717(n)/∏[A000142(n)]`
-/

namespace A306193.P16413299369411422477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323717 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A306193.P16413299369411422477

/-!
# A306196: Irregular triangle read by rows where row n lists the primes 2n - k, with 1 < k < 2n-1, and if k is composite also 2n - p has to be prime for some prime divisor p of k.

The programs for A306196, there is no canonical definition to state claims against.
-/

/-! ## A306196.P6947134391895837619

`p?[A293497(A276611(A168380(n+1)))]`
-/

namespace A306196.P6947134391895837619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293497 (A276611 (A168380 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306196.P6947134391895837619

/-! ## A306196.P10762600187012914139

`p?[A053186(n*A056170(A273405(n)))]`
-/

namespace A306196.P10762600187012914139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 ((n : ℤ) * A056170 (A273405 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306196.P10762600187012914139

/-! ## A306196.P11908554701866626711

`p?[A330236(n+1)-A038722(A330236(n+1))]`
-/

namespace A306196.P11908554701866626711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330236 (n + 1) - A038722 (A330236 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306196.P11908554701866626711

/-! ## A306196.P8451578611086251168

`p?[A284600(A305325(n+7))]`
-/

namespace A306196.P8451578611086251168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284600 (A305325 (n + 7)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306196.P8451578611086251168

/-!
# A306198: Multiplicative with a(p^e) = p^(e-1)*(p^2 - p - 1).

The programs for A306198, the canonical program `A306198.P7323652723329886433` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306198 has offset 1).

The definition of A306198 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306198.P7323652723329886433

`A003557(n+1)*A389775(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A306198

/-- `A003557(n+1)*A389775(n+1)` -/
def P7323652723329886433.Spec : Prop :=
  ∀ n, P7323652723329886433.a n = A306198 (n + 1)

theorem P7323652723329886433.correct : P7323652723329886433.Spec := by
  intro n
  simp only [A306198, Nat.add_sub_cancel]

end A306198

/-! ## A306198.P11450877650565906199

`A003557(n+1)*A063445(∏{p}[n+1, #])`
-/

namespace A306198.P11450877650565906199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A063445 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A306198.P11450877650565906199

namespace A306198

/-- `A003557(n+1)*A063445(∏{p}[n+1, #])` -/
def P11450877650565906199.Spec : Prop :=
  ∀ n, P11450877650565906199.a n = A306198 (n + 1)

end A306198

/-! ## A306198.P18394079511524759570

`A003557(n+1)*A063445(A007947(n+1))`
-/

namespace A306198.P18394079511524759570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A063445 (A007947 (n + 1)).toNat

end

end A306198.P18394079511524759570

namespace A306198

/-- `A003557(n+1)*A063445(A007947(n+1))` -/
def P18394079511524759570.Spec : Prop :=
  ∀ n, P18394079511524759570.a n = A306198 (n + 1)

end A306198

/-! ## A306198.P6973287301267558944

`A003557(n+1)*A063445(A204455(n+1))`
-/

namespace A306198.P6973287301267558944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A063445 (A204455 (n + 1)).toNat

end

end A306198.P6973287301267558944

namespace A306198

/-- `A003557(n+1)*A063445(A204455(n+1))` -/
def P6973287301267558944.Spec : Prop :=
  ∀ n, P6973287301267558944.a n = A306198 (n + 1)

end A306198

/-! ## A306198.P4681885841382579346

`A003557(n+1)*A063445(A099985(n+1)/2)`
-/

namespace A306198.P4681885841382579346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A063445 (SequenceMachineLib.roundAway ((A099985 (n + 1) : ℚ) / 2)).toNat

end

end A306198.P4681885841382579346

namespace A306198

/-- `A003557(n+1)*A063445(A099985(n+1)/2)` -/
def P4681885841382579346.Spec : Prop :=
  ∀ n, P4681885841382579346.a n = A306198 (n + 1)

end A306198

/-! ## A306198.P12101056467847305258

`A003557(n+1)*A063445(A099985(n+1))`
-/

namespace A306198.P12101056467847305258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A063445 (A099985 (n + 1)).toNat

end

end A306198.P12101056467847305258

namespace A306198

/-- `A003557(n+1)*A063445(A099985(n+1))` -/
def P12101056467847305258.Spec : Prop :=
  ∀ n, P12101056467847305258.a n = A306198 (n + 1)

end A306198

/-! ## A306198.P5386751033846233471

`A003557(n+1)*A306408(A078615(n+1))`
-/

namespace A306198.P5386751033846233471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A306408 (A078615 (n + 1)).toNat

end

end A306198.P5386751033846233471

namespace A306198

/-- `A003557(n+1)*A306408(A078615(n+1))` -/
def P5386751033846233471.Spec : Prop :=
  ∀ n, P5386751033846233471.a n = A306198 (n + 1)

end A306198

/-! ## A306198.P13547083642765359742

`A003557(n+1)*A306408(A007947(n+1)²)`
-/

namespace A306198.P13547083642765359742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A306408 (A007947 (n + 1) ^ 2).toNat

end

end A306198.P13547083642765359742

namespace A306198

/-- `A003557(n+1)*A306408(A007947(n+1)²)` -/
def P13547083642765359742.Spec : Prop :=
  ∀ n, P13547083642765359742.a n = A306198 (n + 1)

end A306198

/-!
# A306199: Numbers k having the property that tau(4*k) < tau(3*k) where tau = A000005.

The programs for A306199, the canonical program `A306199.P1390031981677856011` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306199 has offset 1).

The definition of A306199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1819 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306199.P15479852013045304265

`2*(eq[4, A260031(n+1)]+1)`
-/

namespace A306199.P15479852013045304265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260031 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A306199.P15479852013045304265

namespace A306199

/-- `2*(eq[4, A260031(n+1)]+1)` -/
def P15479852013045304265.Spec : Prop :=
  ∀ n, (P15479852013045304265.a n : ℤ) = A306199 (n + 1)

end A306199

/-! ## A306199.P10854591134279410379

`A026491(eq[4, A260031(n+1)])`
-/

namespace A306199.P10854591134279410379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306199.P10854591134279410379

namespace A306199

/-- `A026491(eq[4, A260031(n+1)])` -/
def P10854591134279410379.Spec : Prop :=
  ∀ n, P10854591134279410379.a n = A306199 (n + 1)

end A306199

/-! ## A306199.P6065098625772899130

`A066104(eq[4, A260031(n+1)])`
-/

namespace A306199.P6065098625772899130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066104 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306199.P6065098625772899130

namespace A306199

/-- `A066104(eq[4, A260031(n+1)])` -/
def P6065098625772899130.Spec : Prop :=
  ∀ n, P6065098625772899130.a n = A306199 (n + 1)

end A306199

/-! ## A306199.P56117810080436617

`A103517(eq[4, A260031(n+1)])`
-/

namespace A306199.P56117810080436617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306199.P56117810080436617

namespace A306199

/-- `A103517(eq[4, A260031(n+1)])` -/
def P56117810080436617.Spec : Prop :=
  ∀ n, P56117810080436617.a n = A306199 (n + 1)

end A306199

/-! ## A306199.P15583338567462804308

`A271478(eq[4, A260031(n+1)])`
-/

namespace A306199.P15583338567462804308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271478 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306199.P15583338567462804308

namespace A306199

/-- `A271478(eq[4, A260031(n+1)])` -/
def P15583338567462804308.Spec : Prop :=
  ∀ n, P15583338567462804308.a n = A306199 (n + 1)

end A306199

/-! ## A306199.P15560808802574024662

`A004273(eq[4, A260031(n+1)])+3`
-/

namespace A306199.P15560808802574024662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 3

end

end A306199.P15560808802574024662

namespace A306199

/-- `A004273(eq[4, A260031(n+1)])+3` -/
def P15560808802574024662.Spec : Prop :=
  ∀ n, P15560808802574024662.a n = A306199 (n + 1)

end A306199

/-! ## A306199.P1489054948985159696

`4*A008619(eq[4, A260031(n+1)])`
-/

namespace A306199.P1489054948985159696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A008619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306199.P1489054948985159696

namespace A306199

/-- `4*A008619(eq[4, A260031(n+1)])` -/
def P1489054948985159696.Spec : Prop :=
  ∀ n, P1489054948985159696.a n = A306199 (n + 1)

end A306199

/-! ## A306199.P11094487735092209622

`A004275(eq[4, A260031(n+1)]+2)`
-/

namespace A306199.P11094487735092209622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A306199.P11094487735092209622

namespace A306199

/-- `A004275(eq[4, A260031(n+1)]+2)` -/
def P11094487735092209622.Spec : Prop :=
  ∀ n, P11094487735092209622.a n = A306199 (n + 1)

end A306199

/-! ## A306199.P1390031981677856011

`lt[A001227(n+1), A001817(n+1)]+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A306199

/-- `lt[A001227(n+1), A001817(n+1)]+1` -/
def P1390031981677856011.Spec : Prop :=
  ∀ n, (P1390031981677856011.a n : ℤ) = A306199 (n + 1)

theorem P1390031981677856011.correct : P1390031981677856011.Spec := by
  intro n
  simp only [A306199, Nat.add_sub_cancel]

end A306199

/-! ## A306199.P8570829830950419870

`eq[4, A260031(A008458(n))]`
-/

namespace A306199.P8570829830950419870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260031 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A306199.P8570829830950419870

namespace A306199

/-- `eq[4, A260031(A008458(n))]` -/
def P8570829830950419870.Spec : Prop :=
  ∀ n, (P8570829830950419870.a n : ℤ) = A306199 (n + 1)

end A306199

