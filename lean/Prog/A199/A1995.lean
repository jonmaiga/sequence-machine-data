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
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A199502: From Janet helicoidal classification of the periodic table.

The programs for A199502, there is no canonical definition to state claims against.
-/

/-! ## A199502.P2186752134454756679

`∑[record[∏{p}[4*n+1, #]]%A329588(4*n+2)]`
-/

namespace A199502.P2186752134454756679
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ) (A329588 (4 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199502.P2186752134454756679

/-! ## A199502.P10116297633032200427

`∑[and(A182469(n+2), A182476(2*(n+1)))]`
-/

namespace A199502.P10116297633032200427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A182469 (n + 2)) (A182476 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199502.P10116297633032200427

/-! ## A199502.P4240419616638361559

`∑[A001511(A243608(n)²)]`
-/

namespace A199502.P4240419616638361559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A243608 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199502.P4240419616638361559

/-! ## A199502.P11004788846846119102

`∑[A001511(A243608(n)^2)]`
-/

namespace A199502.P11004788846846119102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A243608 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199502.P11004788846846119102

/-! ## A199502.P10192320060554383812

`∑[A108886(A322865(n+3)²)]`
-/

namespace A199502.P10192320060554383812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108886 (A322865 (n + 3) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199502.P10192320060554383812

/-!
# A199512: Triangle T(n,k) = Fibonacci(n+k+1), related to A000045 (Fibonacci numbers).

The programs for A199512, the canonical program `A199512.P3979213051773754842` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199512 has offset 0).

The definition of A199512 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199512.P12766502069459532755

`A000045(n+1-C(∑[char[∑[n+1]]], 2))`
-/

namespace A199512.P12766502069459532755
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1 - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2)

end

end A199512.P12766502069459532755

namespace A199512

/-- `A000045(n+1-C(∑[char[∑[n+1]]], 2))` -/
def P12766502069459532755.Spec : Prop :=
  ∀ n, P12766502069459532755.a n = A199512 n

end A199512

/-! ## A199512.P3979213051773754842

`A327035(A131432(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A199512

/-- `A327035(A131432(n))` -/
def P3979213051773754842.Spec : Prop :=
  ∀ n, P3979213051773754842.a n = A199512 n

theorem P3979213051773754842.correct : P3979213051773754842.Spec := by
  intro n
  simp only [A199512]

end A199512

/-! ## A199512.P7498918504982507109

`A000045(A051162(n)+1)`
-/

namespace A199512.P7498918504982507109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A051162 n + 1).toNat

end

end A199512.P7498918504982507109

namespace A199512

/-- `A000045(A051162(n)+1)` -/
def P7498918504982507109.Spec : Prop :=
  ∀ n, P7498918504982507109.a n = A199512 n

end A199512

/-! ## A199512.P15373383751480010613

`A000045(A094727(n+1))`
-/

namespace A199512.P15373383751480010613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A094727 (n + 1)).toNat

end

end A199512.P15373383751480010613

namespace A199512

/-- `A000045(A094727(n+1))` -/
def P15373383751480010613.Spec : Prop :=
  ∀ n, P15373383751480010613.a n = A199512 n

end A199512

/-! ## A199512.P6240644336030401049

`A000045(A134478(n)+1)`
-/

namespace A199512.P6240644336030401049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A134478 n + 1).toNat

end

end A199512.P6240644336030401049

namespace A199512

/-- `A000045(A134478(n)+1)` -/
def P6240644336030401049.Spec : Prop :=
  ∀ n, P6240644336030401049.a n = A199512 n

end A199512

/-! ## A199512.P13255784826972951309

`A123231(A131421(n+1))`
-/

namespace A199512.P13255784826972951309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 (A131421 (n + 1)).toNat

end

end A199512.P13255784826972951309

namespace A199512

/-- `A123231(A131421(n+1))` -/
def P13255784826972951309.Spec : Prop :=
  ∀ n, P13255784826972951309.a n = A199512 n

end A199512

/-! ## A199512.P1265492232446087147

`A212804(A108872(n+1))`
-/

namespace A199512.P1265492232446087147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A108872 (n + 1)).toNat

end

end A199512.P1265492232446087147

namespace A199512

/-- `A212804(A108872(n+1))` -/
def P1265492232446087147.Spec : Prop :=
  ∀ n, P1265492232446087147.a n = A199512 n

end A199512

/-! ## A199512.P12116575993582974617

`A122070(n)/A007318(n)`
-/

namespace A199512.P12116575993582974617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122070 n : ℚ) / (A007318 n : ℚ)

end

end A199512.P12116575993582974617

namespace A199512

/-- `A122070(n)/A007318(n)` -/
def P12116575993582974617.Spec : Prop :=
  ∀ n, P12116575993582974617.a n = (A199512 n : ℚ)

end A199512

/-! ## A199512.P7674049677065845615

`A103609(A131421(n+1)+1)`
-/

namespace A199512.P7674049677065845615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A131421 (n + 1) + 1).toNat

end

end A199512.P7674049677065845615

namespace A199512

/-- `A103609(A131421(n+1)+1)` -/
def P7674049677065845615.Spec : Prop :=
  ∀ n, P7674049677065845615.a n = A199512 n

end A199512

/-! ## A199512.P12395721009869055716

`A212804(A094727(n+1)+1)`
-/

namespace A199512.P12395721009869055716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A094727 (n + 1) + 1).toNat

end

end A199512.P12395721009869055716

namespace A199512

/-- `A212804(A094727(n+1)+1)` -/
def P12395721009869055716.Spec : Prop :=
  ∀ n, P12395721009869055716.a n = A199512 n

end A199512

/-! ## A199512.P2882035505957737709

`A000045(A108872(n+1)-1)`
-/

namespace A199512.P2882035505957737709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A108872 (n + 1) - 1).toNat

end

end A199512.P2882035505957737709

namespace A199512

/-- `A000045(A108872(n+1)-1)` -/
def P2882035505957737709.Spec : Prop :=
  ∀ n, P2882035505957737709.a n = A199512 n

end A199512

/-! ## A199512.P5059907418379566815

`A000045(A002262(n)+A002024(n+1))`
-/

namespace A199512.P5059907418379566815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002262 n + A002024 (n + 1)).toNat

end

end A199512.P5059907418379566815

namespace A199512

/-- `A000045(A002262(n)+A002024(n+1))` -/
def P5059907418379566815.Spec : Prop :=
  ∀ n, P5059907418379566815.a n = A199512 n

end A199512

/-! ## A199512.P12435101642303573345

`A000045(A002262(n)+A003056(n)+1)`
-/

namespace A199512.P12435101642303573345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002262 n + (A003056 n + 1)).toNat

end

end A199512.P12435101642303573345

namespace A199512

/-- `A000045(A002262(n)+A003056(n)+1)` -/
def P12435101642303573345.Spec : Prop :=
  ∀ n, P12435101642303573345.a n = A199512 n

end A199512

/-! ## A199512.P18185898995969448921

`A000045(A003056(n)+A002260(n+1))`
-/

namespace A199512.P18185898995969448921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A003056 n + A002260 (n + 1)).toNat

end

end A199512.P18185898995969448921

namespace A199512

/-- `A000045(A003056(n)+A002260(n+1))` -/
def P18185898995969448921.Spec : Prop :=
  ∀ n, P18185898995969448921.a n = A199512 n

end A199512

/-! ## A199512.P10579590742367559978

`A000045(A158405(n+1)+A025581(n))`
-/

namespace A199512.P10579590742367559978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A158405 (n + 1) + A025581 n).toNat

end

end A199512.P10579590742367559978

namespace A199512

/-- `A000045(A158405(n+1)+A025581(n))` -/
def P10579590742367559978.Spec : Prop :=
  ∀ n, P10579590742367559978.a n = A199512 n

end A199512

/-! ## A199512.P13147806703182660138

`A000045(A162610(n+1)-A159797(n))`
-/

namespace A199512.P13147806703182660138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A162610 (n + 1) - A159797 n).toNat

end

end A199512.P13147806703182660138

namespace A199512

/-- `A000045(A162610(n+1)-A159797(n))` -/
def P13147806703182660138.Spec : Prop :=
  ∀ n, P13147806703182660138.a n = A199512 n

end A199512

/-! ## A199512.P9338604996571076197

`A000045(A131507(n)+1-A004736(n+1))`
-/

namespace A199512.P9338604996571076197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A131507 n + (1 - A004736 (n + 1))).toNat

end

end A199512.P9338604996571076197

namespace A199512

/-- `A000045(A131507(n)+1-A004736(n+1))` -/
def P9338604996571076197.Spec : Prop :=
  ∀ n, P9338604996571076197.a n = A199512 n

end A199512

/-! ## A199512.P13002396540961514103

`A199334(A132128(n+1))`
-/

namespace A199512.P13002396540961514103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199334 (A132128 (n + 1)).toNat

end

end A199512.P13002396540961514103

namespace A199512

/-- `A199334(A132128(n+1))` -/
def P13002396540961514103.Spec : Prop :=
  ∀ n, P13002396540961514103.a n = A199512 n

end A199512

/-! ## A199512.P9653469114507077320

`A199334(A007401(n+1))`
-/

namespace A199512.P9653469114507077320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199334 (A007401 (n + 1)).toNat

end

end A199512.P9653469114507077320

namespace A199512

/-- `A199334(A007401(n+1))` -/
def P9653469114507077320.Spec : Prop :=
  ∀ n, P9653469114507077320.a n = A199512 n

end A199512

/-! ## A199512.P13597003692449512155

`A037027(A245300(n)-A002262(n))`
-/

namespace A199512.P13597003692449512155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (A245300 n - A002262 n).toNat

end

end A199512.P13597003692449512155

namespace A199512

/-- `A037027(A245300(n)-A002262(n))` -/
def P13597003692449512155.Spec : Prop :=
  ∀ n, P13597003692449512155.a n = A199512 n

end A199512

/-!
# A199514: Numerators of zeros to a symmetric polynomial. Numerators of mu(n)^2*(n/(n - phi(n))).

The programs for A199514, the canonical program `A199514.P11177618966910493986` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199514 has offset 2).

The definition of A199514 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199514.P2731767677465992923

`A008966(n+2)*A109395(n+2)`
-/

namespace A199514.P2731767677465992923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 2) * A109395 (n + 2)

end

end A199514.P2731767677465992923

namespace A199514

/-- `A008966(n+2)*A109395(n+2)` -/
def P2731767677465992923.Spec : Prop :=
  ∀ n, P2731767677465992923.a n = A199514 (n + 2)

end A199514

/-! ## A199514.P18106237288046151056

`A008683(n+2)²*A109395(n+2)`
-/

namespace A199514.P18106237288046151056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 2) ^ 2 * A109395 (n + 2)

end

end A199514.P18106237288046151056

namespace A199514

/-- `A008683(n+2)²*A109395(n+2)` -/
def P18106237288046151056.Spec : Prop :=
  ∀ n, P18106237288046151056.a n = A199514 (n + 2)

end A199514

/-! ## A199514.P7754841859543395761

`lcm(A000010(n+2), A055615(n+2))/A000010(n+2)`
-/

namespace A199514.P7754841859543395761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000010 (n + 2)) (A055615 (n + 2)) : ℚ) / (A000010 (n + 2) : ℚ)

end

end A199514.P7754841859543395761

namespace A199514

/-- `lcm(A000010(n+2), A055615(n+2))/A000010(n+2)` -/
def P7754841859543395761.Spec : Prop :=
  ∀ n, P7754841859543395761.a n = (A199514 (n + 2) : ℚ)

end A199514

/-! ## A199514.P13834697604970196780

`A008966(n+2)*A295126(n+2)`
-/

namespace A199514.P13834697604970196780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 2) * A295126 (n + 2)

end

end A199514.P13834697604970196780

namespace A199514

/-- `A008966(n+2)*A295126(n+2)` -/
def P13834697604970196780.Spec : Prop :=
  ∀ n, P13834697604970196780.a n = A199514 (n + 2)

end A199514

/-! ## A199514.P16025594566853763430

`lcm(A008683(n+2), A295126(n+2))`
-/

namespace A199514.P16025594566853763430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (n + 2)) (A295126 (n + 2))

end

end A199514.P16025594566853763430

namespace A199514

/-- `lcm(A008683(n+2), A295126(n+2))` -/
def P16025594566853763430.Spec : Prop :=
  ∀ n, (P16025594566853763430.a n : ℤ) = A199514 (n + 2)

end A199514

/-! ## A199514.P1251051374727023509

`A000010(A003557(n+2)+1)%2*A109395(n+2)`
-/

namespace A199514.P1251051374727023509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A003557 (n + 2) + 1).toNat) 2 * A109395 (n + 2)

end

end A199514.P1251051374727023509

namespace A199514

/-- `A000010(A003557(n+2)+1)%2*A109395(n+2)` -/
def P1251051374727023509.Spec : Prop :=
  ∀ n, P1251051374727023509.a n = A199514 (n + 2)

end A199514

/-! ## A199514.P11177618966910493986

`(A066779(n+2)-A066779(n+1))/A009195(n+2)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A199514

/-- `(A066779(n+2)-A066779(n+1))/A009195(n+2)` -/
def P11177618966910493986.Spec : Prop :=
  ∀ n, P11177618966910493986.a n = (A199514 (n + 2) : ℚ)

end A199514

/-! ## A199514.P7388845055532843755

`A008683(n+2)*A009262(n+2)/A023900(n+2)`
-/

namespace A199514.P7388845055532843755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 2) * A009262 (n + 2) : ℚ) / (A023900 (n + 2) : ℚ)

end

end A199514.P7388845055532843755

namespace A199514

/-- `A008683(n+2)*A009262(n+2)/A023900(n+2)` -/
def P7388845055532843755.Spec : Prop :=
  ∀ n, P7388845055532843755.a n = (A199514 (n + 2) : ℚ)

end A199514

/-!
# A199515: Denominators of: MoebiusMu(n)^2*(n/(n - EulerPhi(n))).

The programs for A199515, the canonical program `A199515.P17592746396209562418` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199515 has offset 2).

The definition of A199515 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199515.P17592746396209562418

`A076511(lcm(n, A008683(n+2))+2)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A199515

/-- `A076511(lcm(n, A008683(n+2))+2)` -/
def P17592746396209562418.Spec : Prop :=
  ∀ n, P17592746396209562418.a n = A199515 (n + 2)

theorem P17592746396209562418.correct : P17592746396209562418.Spec := by
  intro n
  simp only [A199515, Nat.add_sub_cancel]

end A199515

/-!
# A199516: Number of nX1 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and every element equal to two or fewer horizontal or vertical neighbors.

The programs for A199516, there is no canonical definition to state claims against.
-/

/-! ## A199516.P10459988102187423224

`A308624(∑[n+2]-A004275(n))`
-/

namespace A199516.P10459988102187423224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308624 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A004275 n).toNat

end

end A199516.P10459988102187423224

/-! ## A199516.P16454092677773277395

`A308624(A016028(n+1)+2*n)`
-/

namespace A199516.P16454092677773277395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308624 (A016028 (n + 1) + (2 * n : ℤ)).toNat

end

end A199516.P16454092677773277395

/-! ## A199516.P16560702153179565027

`A308624(A016028(n+1)+n+n)`
-/

namespace A199516.P16560702153179565027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308624 (A016028 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A199516.P16560702153179565027

/-! ## A199516.P12057733704949333280

`A308624(A133263(n)+A130130(n))`
-/

namespace A199516.P12057733704949333280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308624 (A133263 n + A130130 n).toNat

end

end A199516.P12057733704949333280

/-! ## A199516.P9635570123271116572

`A308624(A134869(n+1)-A289207(n))`
-/

namespace A199516.P9635570123271116572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308624 (A134869 (n + 1) - A289207 n).toNat

end

end A199516.P9635570123271116572

/-!
# A199517: Number of nX2 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and every element equal to two or fewer horizontal or vertical neighbors.

The programs for A199517, there is no canonical definition to state claims against.
-/

/-! ## A199517.P16484736279612883116

`A199523(∑[n+1]+2)`
-/

namespace A199517.P16484736279612883116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199523 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A199517.P16484736279612883116

/-! ## A199517.P5648743472257167187

`A199523(A314938(n))^A199523(n+1)`
-/

namespace A199517.P5648743472257167187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199523 (A314938 n).toNat : ℚ) ^ (A199523 (n + 1) : ℤ)

end

end A199517.P5648743472257167187

/-! ## A199517.P2872171135926711553

`A199523(A133263(n+1))^A199523(n+1)`
-/

namespace A199517.P2872171135926711553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199523 (A133263 (n + 1)).toNat : ℚ) ^ (A199523 (n + 1) : ℤ)

end

end A199517.P2872171135926711553

/-!
# A199518: Number of nX3 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and every element equal to two or fewer horizontal or vertical neighbors.

The programs for A199518, there is no canonical definition to state claims against.
-/

/-! ## A199518.P6987574233374192481

`A199523(∑[n+2]+4)`
-/

namespace A199518.P6987574233374192481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199523 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A199518.P6987574233374192481

/-! ## A199518.P4266897715406414618

`record[A010054(n)*A199523(n+3)]`
-/

namespace A199518.P4266897715406414618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A199523 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199518.P4266897715406414618

/-! ## A199518.P11178878700160612535

`record[A023531(n)*A199523(n+4)]`
-/

namespace A199518.P11178878700160612535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A199523 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199518.P11178878700160612535

/-! ## A199518.P315649772060503738

`ceil(A199523(A167614(n+1))-cos(n+1)²)`
-/

namespace A199518.P315649772060503738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A199523 (A167614 (n + 1)).toNat : ℝ) - Real.cos (n + 1 : ℝ) ^ 2⌉

end

end A199518.P315649772060503738

/-! ## A199518.P2598172675334815972

`A199523(A167614(n+1))+A025439(n)`
-/

namespace A199518.P2598172675334815972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199523 (A167614 (n + 1)).toNat + A025439 n

end

end A199518.P2598172675334815972

/-!
# A199519: Number of nX4 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and every element equal to two or fewer horizontal or vertical neighbors.

The programs for A199519, there is no canonical definition to state claims against.
-/

/-! ## A199519.P12008926052720816787

`A199523(C(n+5, 2)-n)`
-/

namespace A199519.P12008926052720816787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199523 (Nat.choose (n + 5) 2 - n)

end

end A199519.P12008926052720816787

/-! ## A199519.P2054838738648508791

`A199523(A374004(n+1))`
-/

namespace A199519.P2054838738648508791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199523 (A374004 (n + 1)).toNat

end

end A199519.P2054838738648508791

/-! ## A199519.P6900977261427328797

`A199523(A141214(n)+7)`
-/

namespace A199519.P6900977261427328797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199523 (A141214 n + 7).toNat

end

end A199519.P6900977261427328797

/-! ## A199519.P15628545680103696295

`A199523(A052905(n)+9)`
-/

namespace A199519.P15628545680103696295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199523 (A052905 n + 9).toNat

end

end A199519.P15628545680103696295

/-!
# A199520: Number of nX5 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and every element equal to two or fewer horizontal or vertical neighbors.

The programs for A199520, there is no canonical definition to state claims against.
-/

/-! ## A199520.P2519219626589576902

`A199523(A374005(n+1))`
-/

namespace A199520.P2519219626589576902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199523 (A374005 (n + 1)).toNat

end

end A199520.P2519219626589576902

/-! ## A199520.P4123077554187566197

`A199523(eq[7, A066657(n)])`
-/

namespace A199520.P4123077554187566197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199520.P4123077554187566197

/-!
# A199521: Number of nX6 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and every element equal to two or fewer horizontal or vertical neighbors.

The programs for A199521, there is no canonical definition to state claims against.
-/

/-! ## A199521.P1830027198145774225

`A199523(A374007(n+1))`
-/

namespace A199521.P1830027198145774225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199523 (A374007 (n + 1)).toNat

end

end A199521.P1830027198145774225

/-!
# A199524: Number of -2..2 arrays x(0..n-1) of n elements with zero sum and no two consecutive zero elements.

The programs for A199524, there is no canonical definition to state claims against.
-/

/-! ## A199524.P9218142629747520238

`A199530(∑[n+2])`
-/

namespace A199524.P9218142629747520238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199524.P9218142629747520238

/-! ## A199524.P17788642139966392545

`record[gcd(A084938(n+2), A199530(n+1))]`
-/

namespace A199524.P17788642139966392545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084938 (n + 2)) (A199530 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199524.P17788642139966392545

/-! ## A199524.P13803424375796216156

`record[A199530(A000096(A065648(n)))]`
-/

namespace A199524.P13803424375796216156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (A000096 (A065648 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199524.P13803424375796216156

/-! ## A199524.P15171491811903633517

`record[A199530(A000096(A126759(n)))]`
-/

namespace A199524.P15171491811903633517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (A000096 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199524.P15171491811903633517

/-! ## A199524.P5553864425872196210

`record[A199530(A101881(A029579(n)))]`
-/

namespace A199524.P5553864425872196210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (A101881 (A029579 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199524.P5553864425872196210

/-!
# A199525: Number of -3..3 arrays x(0..n-1) of n elements with zero sum and no two consecutive zero elements.

The programs for A199525, there is no canonical definition to state claims against.
-/

/-! ## A199525.P7086691844964392803

`A199530(∑[n+3]+1)`
-/

namespace A199525.P7086691844964392803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A199525.P7086691844964392803

/-! ## A199525.P10947867004289631186

`record[A199530(n+1)/A199530(n+4)]`
-/

namespace A199525.P10947867004289631186
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199530 (n + 1) : ℚ) / (A199530 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199525.P10947867004289631186

/-! ## A199525.P10766624897487021745

`a(C(2, n+2))*A199530(A052905(n)+3)` with `a(0)=1`
-/

namespace A199525.P10766624897487021745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (Nat.choose 2 (n + 2)) * A199530 (A052905 n + 3).toNat

end

end A199525.P10766624897487021745

/-! ## A199525.P1596280123305642108

`A001222(A006562(n+1))*A199530(A052905(n)+3)`
-/

namespace A199525.P1596280123305642108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006562 (n + 1)).toNat * A199530 (A052905 n + 3).toNat

end

end A199525.P1596280123305642108

/-! ## A199525.P2435707894989834279

`A014963(A000217(n+4))*A199530(A052905(n)+3)`
-/

namespace A199525.P2435707894989834279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 4)).toNat * A199530 (A052905 n + 3).toNat

end

end A199525.P2435707894989834279

/-!
# A199526: Number of -4..4 arrays x(0..n-1) of n elements with zero sum and no two consecutive zero elements.

The programs for A199526, there is no canonical definition to state claims against.
-/

/-! ## A199526.P8988780459378966443

`A199530(A027379(n+2))`
-/

namespace A199526.P8988780459378966443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (A027379 (n + 2)).toNat

end

end A199526.P8988780459378966443

/-! ## A199526.P1459292276597846746

`A199530(A055998(n+2))`
-/

namespace A199526.P1459292276597846746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (A055998 (n + 2)).toNat

end

end A199526.P1459292276597846746

/-! ## A199526.P3664189904203270984

`A199530(A155212(n)+5)`
-/

namespace A199526.P3664189904203270984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (A155212 n + 5).toNat

end

end A199526.P3664189904203270984

/-! ## A199526.P17677135494733400984

`A199530(eq[4, A052509(n)])`
-/

namespace A199526.P17677135494733400984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199526.P17677135494733400984

/-! ## A199526.P2190212863955778649

`A199530(Δ[A034857(n+1)])`
-/

namespace A199526.P2190212863955778649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (f1 (n + 1) - f1 n).toNat

end

end A199526.P2190212863955778649

/-!
# A199527: Number of -5..5 arrays x(0..n-1) of n elements with zero sum and no two consecutive zero elements.

The programs for A199527, there is no canonical definition to state claims against.
-/

/-! ## A199527.P10360912909525803119

`A199530(∑[n+5]+6)`
-/

namespace A199527.P10360912909525803119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A199527.P10360912909525803119

/-! ## A199527.P4025351806130614310

`(-1)^(2*n)*A199530(Δ[A023545(n+1)])`
-/

namespace A199527.P4025351806130614310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (2 * n) * A199530 (f1 (n + 1) - f1 n).toNat

end

end A199527.P4025351806130614310

/-! ## A199527.P14211227350606857281

`A000035(2*n+1)*A199530(A046691(n+3))`
-/

namespace A199527.P14211227350606857281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) * A199530 (A046691 (n + 3)).toNat

end

end A199527.P14211227350606857281

/-! ## A199527.P11724759780011862104

`A199530(Δ[A023545(n+1)])^(-1)^A007283(n)`
-/

namespace A199527.P11724759780011862104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A199530 (f1 (n + 1) - f1 n).toNat : ℝ) ^ ((-1 : ℚ) ^ (A007283 n : ℤ) : ℝ)

end

end A199527.P11724759780011862104

/-! ## A199527.P3663372769367074458

`A199530(Δ[A023545(n+1)])^(-1)^A069273(n+1)`
-/

namespace A199527.P3663372769367074458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A199530 (f1 (n + 1) - f1 n).toNat : ℝ) ^ ((-1 : ℚ) ^ (A069273 (n + 1) : ℤ) : ℝ)

end

end A199527.P3663372769367074458

/-!
# A199528: Number of -6..6 arrays x(0..n-1) of n elements with zero sum and no two consecutive zero elements.

The programs for A199528, there is no canonical definition to state claims against.
-/

/-! ## A199528.P11605526149235736795

`A199530(A052905(n+3))`
-/

namespace A199528.P11605526149235736795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (A052905 (n + 3)).toNat

end

end A199528.P11605526149235736795

/-! ## A199528.P6628509545516388409

`A199530(eq[3, A219347(n)])`
-/

namespace A199528.P6628509545516388409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199528.P6628509545516388409

/-! ## A199528.P12236458327720568152

`A199530(A055998(n+4)-2)`
-/

namespace A199528.P12236458327720568152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (A055998 (n + 4) - 2).toNat

end

end A199528.P12236458327720568152

/-! ## A199528.P15705094855208406994

`A199530(A000217(n+6)-5)`
-/

namespace A199528.P15705094855208406994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (A000217 (n + 6) - 5).toNat

end

end A199528.P15705094855208406994

/-! ## A199528.P4654416406486086118

`A199530(Δ[A023545(n+2)]-1)`
-/

namespace A199528.P4654416406486086118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (f1 (n + 1) - f1 n - 1).toNat

end

end A199528.P4654416406486086118

/-!
# A199529: Number of -7..7 arrays x(0..n-1) of n elements with zero sum and no two consecutive zero elements.

The programs for A199529, there is no canonical definition to state claims against.
-/

/-! ## A199529.P12644095621567495255

`A199530(A055999(n+4))`
-/

namespace A199529.P12644095621567495255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (A055999 (n + 4)).toNat

end

end A199529.P12644095621567495255

/-! ## A199529.P10337474431900911

`A199530(eq[4, A219347(n)])`
-/

namespace A199529.P10337474431900911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199529.P10337474431900911

/-! ## A199529.P13807208196247419766

`A199530(eq[6, A193592(n)])`
-/

namespace A199529.P13807208196247419766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199529.P13807208196247419766

/-! ## A199529.P9798515454577294318

`A199530(A155212(n+3)+2)`
-/

namespace A199529.P9798515454577294318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (A155212 (n + 3) + 2).toNat

end

end A199529.P9798515454577294318

/-! ## A199529.P15891340487524520977

`A199530(A000217(n+7)-6)`
-/

namespace A199529.P15891340487524520977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (A000217 (n + 7) - 6).toNat

end

end A199529.P15891340487524520977

/-!
# A199530: T(n,k)=Number of -k..k arrays x(0..n-1) of n elements with zero sum and no two consecutive zero elements.

The programs for A199530, there is no canonical definition to state claims against.
-/

/-! ## A199530.P5305347597885800149

`A330061(A098473(n))`
-/

namespace A199530.P5305347597885800149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330061 (A098473 n).toNat

end

end A199530.P5305347597885800149

/-! ## A199530.P15049567331972419449

`A330105(A098473(n)^floor(atan(n)))`
-/

namespace A199530.P15049567331972419449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330105 (SequenceMachineLib.roundAway ((A098473 n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A199530.P15049567331972419449

/-! ## A199530.P14001973124677791090

`A330105(A098473(n)^ceil(acot(n)))`
-/

namespace A199530.P14001973124677791090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330105 (SequenceMachineLib.roundAway ((A098473 n : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ))).toNat

end

end A199530.P14001973124677791090

/-! ## A199530.P14553985346089893625

`A121757(n)/A020639(A287383(n))`
-/

namespace A199530.P14553985346089893625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121757 n : ℚ) / (A020639 (A287383 n).toNat : ℚ)

end

end A199530.P14553985346089893625

/-! ## A199530.P17272441532618563561

`A308590(A318390(n+1))`
-/

namespace A199530.P17272441532618563561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308590 (A318390 (n + 1)).toNat

end

end A199530.P17272441532618563561

/-!
# A199531: Number of -n..n arrays x(0..3) of 4 elements with zero sum and no two consecutive zero elements.

The programs for A199531, the canonical program `A199531.P5419283736454593924` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199531 has offset 1).

The definition of A199531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199531.P3448125209416081465

`∑[(4*(n+1))²-4]`
-/

namespace A199531.P3448125209416081465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * (n + 1)) ^ 2 : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199531.P3448125209416081465

namespace A199531

/-- `∑[(4*(n+1))²-4]` -/
def P3448125209416081465.Spec : Prop :=
  ∀ n, P3448125209416081465.a n = A199531 (n + 1)

end A199531

/-! ## A199531.P5066333385825208308

`abs(∑[record[xor(n, -4)²-4]])`
-/

namespace A199531.P5066333385825208308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-4) ^ 2 - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A199531.P5066333385825208308

namespace A199531

/-- `abs(∑[record[xor(n, -4)²-4]])` -/
def P5066333385825208308.Spec : Prop :=
  ∀ n, P5066333385825208308.a n = A199531 (n + 1)

end A199531

/-! ## A199531.P4013477560199104069

`-∑[or(4, -(4*(n+1))²)]`
-/

namespace A199531.P4013477560199104069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (-((4 * (n + 1)) ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199531.P4013477560199104069

namespace A199531

/-- `-∑[or(4, -(4*(n+1))²)]` -/
def P4013477560199104069.Spec : Prop :=
  ∀ n, P4013477560199104069.a n = A199531 (n + 1)

end A199531

/-! ## A199531.P14100960377340215881

`-∑[xor(4, -(4*(n+1))²)]`
-/

namespace A199531.P14100960377340215881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (-((4 * (n + 1)) ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199531.P14100960377340215881

namespace A199531

/-- `-∑[xor(4, -(4*(n+1))²)]` -/
def P14100960377340215881.Spec : Prop :=
  ∀ n, P14100960377340215881.a n = A199531 (n + 1)

end A199531

/-! ## A199531.P8760380833272567270

`-∑[-record[xor(n, -4)²-4]]`
-/

namespace A199531.P8760380833272567270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-4) ^ 2 - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199531.P8760380833272567270

namespace A199531

/-- `-∑[-record[xor(n, -4)²-4]]` -/
def P8760380833272567270.Spec : Prop :=
  ∀ n, P8760380833272567270.a n = A199531 (n + 1)

end A199531

/-! ## A199531.P10083327724091542128

`lcm(2, ∑[4-(4*(n+1))^2])`
-/

namespace A199531.P10083327724091542128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ((4 * (n + 1)) ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199531.P10083327724091542128

namespace A199531

/-- `lcm(2, ∑[4-(4*(n+1))^2])` -/
def P10083327724091542128.Spec : Prop :=
  ∀ n, (P10083327724091542128.a n : ℤ) = A199531 (n + 1)

end A199531

/-! ## A199531.P6933487414747364815

`4*∑[∑[record[lcm(4, n+1)]]-1]`
-/

namespace A199531.P6933487414747364815
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199531.P6933487414747364815

namespace A199531

/-- `4*∑[∑[record[lcm(4, n+1)]]-1]` -/
def P6933487414747364815.Spec : Prop :=
  ∀ n, P6933487414747364815.a n = A199531 (n + 1)

end A199531

/-! ## A199531.P15469728331662512581

`4*∑[∑[ogf((3+6x-x^2)/(1-2x+x^2))]]`
-/

namespace A199531.P15469728331662512581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 6, -1] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199531.P15469728331662512581

namespace A199531

/-- `4*∑[∑[ogf((3+6x-x^2)/(1-2x+x^2))]]` -/
def P15469728331662512581.Spec : Prop :=
  ∀ n, P15469728331662512581.a n = A199531 (n + 1)

end A199531

/-! ## A199531.P1666905112614912334

`4*∑[lcm(2*n+1, 2*n+3)]`
-/

namespace A199531.P1666905112614912334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199531.P1666905112614912334

namespace A199531

/-- `4*∑[lcm(2*n+1, 2*n+3)]` -/
def P1666905112614912334.Spec : Prop :=
  ∀ n, (P1666905112614912334.a n : ℤ) = A199531 (n + 1)

end A199531

/-! ## A199531.P9723259886659737961

`4*(C(2*(n+1)+2, 3)-(n+1))`
-/

namespace A199531.P9723259886659737961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((Nat.choose (2 * (n + 1) + 2) 3 : ℤ) - (n + 1 : ℤ))

end

end A199531.P9723259886659737961

namespace A199531

/-- `4*(C(2*(n+1)+2, 3)-(n+1))` -/
def P9723259886659737961.Spec : Prop :=
  ∀ n, P9723259886659737961.a n = A199531 (n + 1)

end A199531

/-! ## A199531.P5419283736454593924

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=12, a(1)=72, a(2)=212, a(3)=464`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199531

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P5419283736454593924.Spec : Prop :=
  ∀ n, P5419283736454593924.a n = A199531 (n + 1)

theorem P5419283736454593924.correct : P5419283736454593924.Spec := by
  intro n
  simp only [A199531, Nat.add_sub_cancel]

end A199531

/-! ## A199531.P6286576488886549988

`4*A268484(n)`
-/

namespace A199531.P6286576488886549988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A268484 n

end

end A199531.P6286576488886549988

namespace A199531

/-- `4*A268484(n)` -/
def P6286576488886549988.Spec : Prop :=
  ∀ n, P6286576488886549988.a n = A199531 (n + 1)

end A199531

/-! ## A199531.P2142491355726005105

`2*(A162540(n)+1)`
-/

namespace A199531.P2142491355726005105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A162540 n + 1)

end

end A199531.P2142491355726005105

namespace A199531

/-- `2*(A162540(n)+1)` -/
def P2142491355726005105.Spec : Prop :=
  ∀ n, P2142491355726005105.a n = A199531 (n + 1)

end A199531

/-! ## A199531.P4953139908925662724

`A212668(n+1)+A004767(n)`
-/

namespace A199531.P4953139908925662724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212668 (n + 1) + A004767 n

end

end A199531.P4953139908925662724

namespace A199531

/-- `A212668(n+1)+A004767(n)` -/
def P4953139908925662724.Spec : Prop :=
  ∀ n, P4953139908925662724.a n = A199531 (n + 1)

end A199531

/-! ## A199531.P861448745327622128

`A267522(n)+A005843(n+1)²`
-/

namespace A199531.P861448745327622128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267522 n + A005843 (n + 1) ^ 2

end

end A199531.P861448745327622128

namespace A199531

/-- `A267522(n)+A005843(n+1)²` -/
def P861448745327622128.Spec : Prop :=
  ∀ n, P861448745327622128.a n = A199531 (n + 1)

end A199531

/-! ## A199531.P13401221307437409846

`A002939(n+1)+A267522(n)+A005843(n+1)`
-/

namespace A199531.P13401221307437409846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 (n + 1) + (A267522 n + A005843 (n + 1))

end

end A199531.P13401221307437409846

namespace A199531

/-- `A002939(n+1)+A267522(n)+A005843(n+1)` -/
def P13401221307437409846.Spec : Prop :=
  ∀ n, P13401221307437409846.a n = A199531 (n + 1)

end A199531

/-! ## A199531.P2671615284580522986

`A152100(n+1)-2*(n+1)`
-/

namespace A199531.P2671615284580522986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152100 (n + 1) - (2 * (n + 1) : ℤ)

end

end A199531.P2671615284580522986

namespace A199531

/-- `A152100(n+1)-2*(n+1)` -/
def P2671615284580522986.Spec : Prop :=
  ∀ n, P2671615284580522986.a n = A199531 (n + 1)

end A199531

/-! ## A199531.P16636866868272058752

`∑[A008574(n+1)²]-A008574(n+1)`
-/

namespace A199531.P16636866868272058752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008574 (n + 1)

end

end A199531.P16636866868272058752

namespace A199531

/-- `∑[A008574(n+1)²]-A008574(n+1)` -/
def P16636866868272058752.Spec : Prop :=
  ∀ n, P16636866868272058752.a n = A199531 (n + 1)

end A199531

/-! ## A199531.P13917878319692283219

`∑[A008586(n+1)²]-A008586(n+1)`
-/

namespace A199531.P13917878319692283219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008586 (n + 1)

end

end A199531.P13917878319692283219

namespace A199531

/-- `∑[A008586(n+1)²]-A008586(n+1)` -/
def P13917878319692283219.Spec : Prop :=
  ∀ n, P13917878319692283219.a n = A199531 (n + 1)

end A199531

/-! ## A199531.P5376791482841521010

`A193218(n+2)+A046092(n)-A112524(n+2)`
-/

namespace A199531.P5376791482841521010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193218 (n + 2) + (A046092 n - A112524 (n + 2))

end

end A199531.P5376791482841521010

namespace A199531

/-- `A193218(n+2)+A046092(n)-A112524(n+2)` -/
def P5376791482841521010.Spec : Prop :=
  ∀ n, P5376791482841521010.a n = A199531 (n + 1)

end A199531

/-!
# A199532: Number of -n..n arrays x(0..4) of 5 elements with zero sum and no two consecutive zero elements.

The programs for A199532, the canonical program `A199532.P16004006473095793087` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199532 has offset 1).

The definition of A199532 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199532.P16004006473095793087

`115/12*(n+1)^4+115/6*(n+1)^3+41/12*(n+1)²-1/6*(n+1)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199532

/-- `115/12*(n+1)^4+115/6*(n+1)^3+41/12*(n+1)²-1/6*(n+1)` -/
def P16004006473095793087.Spec : Prop :=
  ∀ n, P16004006473095793087.a n = (A199532 (n + 1) : ℚ)

end A199532

/-! ## A199532.P4770609229290524316

`A199530(A167499(n+3))`
-/

namespace A199532.P4770609229290524316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (A167499 (n + 3)).toNat

end

end A199532.P4770609229290524316

namespace A199532

/-- `A199530(A167499(n+3))` -/
def P4770609229290524316.Spec : Prop :=
  ∀ n, P4770609229290524316.a n = A199532 (n + 1)

end A199532

/-! ## A199532.P7366603918745497114

`A199530(A155212(n)+13)`
-/

namespace A199532.P7366603918745497114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (A155212 n + 13).toNat

end

end A199532.P7366603918745497114

namespace A199532

/-- `A199530(A155212(n)+13)` -/
def P7366603918745497114.Spec : Prop :=
  ∀ n, P7366603918745497114.a n = A199532 (n + 1)

end A199532

/-! ## A199532.P1420244639723511894

`A199530(A056000(n)+15)`
-/

namespace A199532.P1420244639723511894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (A056000 n + 15).toNat

end

end A199532.P1420244639723511894

namespace A199532

/-- `A199530(A056000(n)+15)` -/
def P1420244639723511894.Spec : Prop :=
  ∀ n, P1420244639723511894.a n = A199532 (n + 1)

end A199532

/-!
# A199533: Number of -n..n arrays x(0..5) of 6 elements with zero sum and no two consecutive zero elements.

The programs for A199533, the canonical program `A199533.P511113404706279730` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199533 has offset 1).

The definition of A199533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199533.P511113404706279730

`88/5*(n+1)^5+44*(n+1)^4+58/3*(n+1)^3-3*(n+1)²+31/15*(n+1)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199533

/-- `88/5*(n+1)^5+44*(n+1)^4+58/3*(n+1)^3-3*(n+1)²+31/15*(n+1)` -/
def P511113404706279730.Spec : Prop :=
  ∀ n, P511113404706279730.a n = (A199533 (n + 1) : ℚ)

end A199533

/-! ## A199533.P17839595419510265943

`A199530(A167499(n+4)+1)`
-/

namespace A199533.P17839595419510265943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (A167499 (n + 4) + 1).toNat

end

end A199533.P17839595419510265943

namespace A199533

/-- `A199530(A167499(n+4)+1)` -/
def P17839595419510265943.Spec : Prop :=
  ∀ n, P17839595419510265943.a n = A199533 (n + 1)

end A199533

/-! ## A199533.P15054003317184895317

`A199530(A167614(n+4)+3)`
-/

namespace A199533.P15054003317184895317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (A167614 (n + 4) + 3).toNat

end

end A199533.P15054003317184895317

namespace A199533

/-- `A199530(A167614(n+4)+3)` -/
def P15054003317184895317.Spec : Prop :=
  ∀ n, P15054003317184895317.a n = A199533 (n + 1)

end A199533

/-! ## A199533.P14077734851599581448

`A199530(A000217(n+5)+6)`
-/

namespace A199533.P14077734851599581448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (A000217 (n + 5) + 6).toNat

end

end A199533.P14077734851599581448

namespace A199533

/-- `A199530(A000217(n+5)+6)` -/
def P14077734851599581448.Spec : Prop :=
  ∀ n, P14077734851599581448.a n = A199533 (n + 1)

end A199533

/-! ## A199533.P2720124955934304480

`A199530(A055999(n+2)+12)`
-/

namespace A199533.P2720124955934304480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (A055999 (n + 2) + 12).toNat

end

end A199533.P2720124955934304480

namespace A199533

/-- `A199530(A055999(n+2)+12)` -/
def P2720124955934304480.Spec : Prop :=
  ∀ n, P2720124955934304480.a n = A199533 (n + 1)

end A199533

/-!
# A199534: Number of -n..n arrays x(0..6) of 7 elements with zero sum and no two consecutive zero elements.

The programs for A199534, there is no canonical definition to state claims against.
-/

/-! ## A199534.P10568607535663322214

`A199530(A167499(n+5)+2)`
-/

namespace A199534.P10568607535663322214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (A167499 (n + 5) + 2).toNat

end

end A199534.P10568607535663322214

/-! ## A199534.P6731858386311040692

`A199530(A167614(n+5)+4)`
-/

namespace A199534.P6731858386311040692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (A167614 (n + 5) + 4).toNat

end

end A199534.P6731858386311040692

/-! ## A199534.P9271872653945512913

`A199530(A000217(n+6)+7)`
-/

namespace A199534.P9271872653945512913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (A000217 (n + 6) + 7).toNat

end

end A199534.P9271872653945512913

/-! ## A199534.P12029780360991708643

`A199530(A161680(n+7)+7)`
-/

namespace A199534.P12029780360991708643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (A161680 (n + 7) + 7).toNat

end

end A199534.P12029780360991708643

/-! ## A199534.P2667706394351327075

`A199530(A005408(n+8)+A000124(n+4))`
-/

namespace A199534.P2667706394351327075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (A005408 (n + 8) + A000124 (n + 4)).toNat

end

end A199534.P2667706394351327075

/-!
# A199535: Clark Kimberling's even first column Stolarsky array read by antidiagonals.

The programs for A199535, there is no canonical definition to state claims against.
-/

/-! ## A199535.P11441282025692390931

`A178798(A305551(n))+A035513(n+1)`
-/

namespace A199535.P11441282025692390931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A305551 n).toNat + A035513 (n + 1)

end

end A199535.P11441282025692390931

/-! ## A199535.P14238739465024836810

`xor(A035513(n+1), A046268(A046268(n)))`
-/

namespace A199535.P14238739465024836810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A035513 (n + 1)) (A046268 (A046268 n).toNat)

end

end A199535.P14238739465024836810

/-! ## A199535.P10797783894037256172

`A113428(A323655(n+2))+A035513(n+1)`
-/

namespace A199535.P10797783894037256172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113428 (A323655 (n + 2)).toNat + A035513 (n + 1)

end

end A199535.P10797783894037256172

/-! ## A199535.P1402302191143444065

`xor(A035513(n+1), A096994(A046739(n+1)))`
-/

namespace A199535.P1402302191143444065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A035513 (n + 1)) (A096994 (A046739 (n + 1)).toNat)

end

end A199535.P1402302191143444065

/-!
# A199536: The first column in Clark Kimberling's even first column Stolarsky array (beginning column count at 1).

The programs for A199536, the canonical program `A199536.P8153872408465699561` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199536 has offset 1).

The definition of A199536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199536.P1982578423605405794

`A004275(ceil(∑[ϕ^(n%2)]))`
-/

namespace A199536.P1982578423605405794
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉.toNat

end

end A199536.P1982578423605405794

namespace A199536

/-- `A004275(ceil(∑[ϕ^(n%2)]))` -/
def P1982578423605405794.Spec : Prop :=
  ∀ n, P1982578423605405794.a n = A199536 (n + 1)

end A199536

/-! ## A199536.P3457215657582696320

`A004275(ceil(∑[ϕ^and(1, n)]))`
-/

namespace A199536.P3457215657582696320
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉.toNat

end

end A199536.P3457215657582696320

namespace A199536

/-- `A004275(ceil(∑[ϕ^and(1, n)]))` -/
def P3457215657582696320.Spec : Prop :=
  ∀ n, P3457215657582696320.a n = A199536 (n + 1)

end A199536

/-! ## A199536.P7369974859744599839

`A004277(ceil(∑[ϕ^and(1, n)])-1)`
-/

namespace A199536.P7369974859744599839
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ - 1).toNat

end

end A199536.P7369974859744599839

namespace A199536

/-- `A004277(ceil(∑[ϕ^and(1, n)])-1)` -/
def P7369974859744599839.Spec : Prop :=
  ∀ n, P7369974859744599839.a n = A199536 (n + 1)

end A199536

/-! ## A199536.P18343478260079688852

`A004275(ceil(∑[ϕ/a(n-1)]))` with `a(0)=1`
-/

namespace A199536.P18343478260079688852
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f1 =>
  Real.goldenRatio / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉.toNat

end

end A199536.P18343478260079688852

namespace A199536

/-- `A004275(ceil(∑[ϕ/a(n-1)]))` -/
def P18343478260079688852.Spec : Prop :=
  ∀ n, P18343478260079688852.a n = A199536 (n + 1)

end A199536

/-! ## A199536.P16069688164056631297

`A004277(comp[Δ[n*floor(n/ϕ)]+n+1])`
-/

namespace A199536.P16069688164056631297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(n : ℝ) / Real.goldenRatio⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A199536.P16069688164056631297

namespace A199536

/-- `A004277(comp[Δ[n*floor(n/ϕ)]+n+1])` -/
def P16069688164056631297.Spec : Prop :=
  ∀ n, P16069688164056631297.a n = A199536 (n + 1)

end A199536

/-! ## A199536.P8153872408465699561

`eq[1, A214211((2*n)%(n+2))]+n+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A199536

/-- `eq[1, A214211((2*n)%(n+2))]+n+1` -/
def P8153872408465699561.Spec : Prop :=
  ∀ n, (P8153872408465699561.a n : ℤ) = A199536 (n + 1)

theorem P8153872408465699561.correct : P8153872408465699561.Spec := by
  intro n
  simp only [A199536, Nat.add_sub_cancel]

end A199536

/-! ## A199536.P16364477864621953886

`A004275(A188435(n+1))`
-/

namespace A199536.P16364477864621953886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A188435 (n + 1)).toNat

end

end A199536.P16364477864621953886

namespace A199536

/-- `A004275(A188435(n+1))` -/
def P16364477864621953886.Spec : Prop :=
  ∀ n, P16364477864621953886.a n = A199536 (n + 1)

end A199536

/-! ## A199536.P9870062303256517561

`record[A103517(n)%A022414(n)]`
-/

namespace A199536.P9870062303256517561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103517 n) (A022414 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199536.P9870062303256517561

namespace A199536

/-- `record[A103517(n)%A022414(n)]` -/
def P9870062303256517561.Spec : Prop :=
  ∀ n, P9870062303256517561.a n = A199536 (n + 1)

end A199536

/-! ## A199536.P860881350612727258

`A103517(record[lcm(n, A014677(n))])`
-/

namespace A199536.P860881350612727258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A014677 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A199536.P860881350612727258

namespace A199536

/-- `A103517(record[lcm(n, A014677(n))])` -/
def P860881350612727258.Spec : Prop :=
  ∀ n, P860881350612727258.a n = A199536 (n + 1)

end A199536

/-! ## A199536.P15321805080981525839

`A103517(A188010(n+2)-2)`
-/

namespace A199536.P15321805080981525839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A188010 (n + 2) - 2).toNat

end

end A199536.P15321805080981525839

namespace A199536

/-- `A103517(A188010(n+2)-2)` -/
def P15321805080981525839.Spec : Prop :=
  ∀ n, P15321805080981525839.a n = A199536 (n + 1)

end A199536

/-! ## A199536.P639681586917023116

`A103517(record[n*A014677(n)²])`
-/

namespace A199536.P639681586917023116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014677 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A199536.P639681586917023116

namespace A199536

/-- `A103517(record[n*A014677(n)²])` -/
def P639681586917023116.Spec : Prop :=
  ∀ n, P639681586917023116.a n = A199536 (n + 1)

end A199536

/-! ## A199536.P598208901320531257

`comp[A003623(n+1)]+comp[A047924(n)-2]+1`
-/

namespace A199536.P598208901320531257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047924 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1)

end

end A199536.P598208901320531257

namespace A199536

/-- `comp[A003623(n+1)]+comp[A047924(n)-2]+1` -/
def P598208901320531257.Spec : Prop :=
  ∀ n, (P598208901320531257.a n : ℤ) = A199536 (n + 1)

end A199536

/-! ## A199536.P15115914058292045678

`A065033(n)+A022342(A188435(n+1))`
-/

namespace A199536.P15115914058292045678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n + A022342 (A188435 (n + 1)).toNat

end

end A199536.P15115914058292045678

namespace A199536

/-- `A065033(n)+A022342(A188435(n+1))` -/
def P15115914058292045678.Spec : Prop :=
  ∀ n, P15115914058292045678.a n = A199536 (n + 1)

end A199536

/-! ## A199536.P15661270227288222168

`record[A014677(n)*A103517(n)*A014677(n)]`
-/

namespace A199536.P15661270227288222168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014677 n * A103517 n * A014677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199536.P15661270227288222168

namespace A199536

/-- `record[A014677(n)*A103517(n)*A014677(n)]` -/
def P15661270227288222168.Spec : Prop :=
  ∀ n, P15661270227288222168.a n = A199536 (n + 1)

end A199536

/-! ## A199536.P2098591570619979792

`A028310(2*(A188435(n+1)-1))`
-/

namespace A199536.P2098591570619979792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * (A188435 (n + 1) - 1)).toNat

end

end A199536.P2098591570619979792

namespace A199536

/-- `A028310(2*(A188435(n+1)-1))` -/
def P2098591570619979792.Spec : Prop :=
  ∀ n, P2098591570619979792.a n = A199536 (n + 1)

end A199536

/-! ## A199536.P16021829820395389447

`A028310(A188435(n+1)+A188435(n+1)-2)`
-/

namespace A199536.P16021829820395389447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A188435 (n + 1) + (A188435 (n + 1) - 2)).toNat

end

end A199536.P16021829820395389447

namespace A199536

/-- `A028310(A188435(n+1)+A188435(n+1)-2)` -/
def P16021829820395389447.Spec : Prop :=
  ∀ n, P16021829820395389447.a n = A199536 (n + 1)

end A199536

/-! ## A199536.P4249903427540229611

`floor(∑[ϕ^and(1, n)])*A000122(n²)`
-/

namespace A199536.P4249903427540229611
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ * A000122 (n ^ 2)

end

end A199536.P4249903427540229611

namespace A199536

/-- `floor(∑[ϕ^and(1, n)])*A000122(n²)` -/
def P4249903427540229611.Spec : Prop :=
  ∀ n, P4249903427540229611.a n = A199536 (n + 1)

end A199536

/-!
# A199537: The second column in Clark Kimberling's even first column Stolarsky array (beginning column count at 1).

The programs for A199537, there is no canonical definition to state claims against.
-/

/-! ## A199537.P572701788818630452

`A004276(A285678(n+1)+1-n)`
-/

namespace A199537.P572701788818630452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 (A285678 (n + 1) + (1 - (n : ℤ))).toNat

end

end A199537.P572701788818630452

/-! ## A199537.P13081251655209684853

`2*A285678(n+1)-A062545(n)`
-/

namespace A199537.P13081251655209684853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285678 (n + 1) - A062545 n

end

end A199537.P13081251655209684853

/-! ## A199537.P3184284946649735670

`A004276(A188016(n+1)+A000035(n))`
-/

namespace A199537.P3184284946649735670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 (A188016 (n + 1) + A000035 n).toNat

end

end A199537.P3184284946649735670

/-! ## A199537.P4483566208330385369

`A004277(A285678(n+1))-A062545(n)`
-/

namespace A199537.P4483566208330385369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A285678 (n + 1)).toNat - A062545 n

end

end A199537.P4483566208330385369

/-! ## A199537.P5237658803344238263

`record[A000201(n+1)*A001468(A005206(n))+1]`
-/

namespace A199537.P5237658803344238263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) * A001468 (A005206 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199537.P5237658803344238263

/-! ## A199537.P11343138151240646604

`A004274(record[A099267(n+1)*A188433(n+1)])`
-/

namespace A199537.P11343138151240646604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099267 (n + 1) * A188433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A199537.P11343138151240646604

/-! ## A199537.P7387358019809456093

`A026356(A188435(n+1))+A022342(A065033(n))`
-/

namespace A199537.P7387358019809456093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026356 (A188435 (n + 1)).toNat + A022342 (A065033 n).toNat

end

end A199537.P7387358019809456093

/-! ## A199537.P9703200996859740093

`A005843(A285678(n+1))%A005408(A005408(n))+2*n`
-/

namespace A199537.P9703200996859740093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A285678 (n + 1)).toNat) (A005408 (A005408 n).toNat) + (2 * n : ℤ)

end

end A199537.P9703200996859740093

/-!
# A199538: Beginning row count at 1, the index of the row which contains n in Clark Kimberling's even first column Stolarsky array.

The programs for A199538, there is no canonical definition to state claims against.
-/

/-! ## A199538.P11124427898519194243

`A167404(∑[n]+1)-Δ[A025468(n)]`
-/

namespace A199538.P11124427898519194243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167404 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - (f2 (n + 1) - f2 n)

end

end A199538.P11124427898519194243

/-! ## A199538.P1555961010608491065

`A167404(∑[n]+1)-Δ[A044940(n+1)]`
-/

namespace A199538.P1555961010608491065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167404 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - (f2 (n + 1) - f2 n)

end

end A199538.P1555961010608491065

/-! ## A199538.P14165339008883989724

`A003603(n+1)-A162782(A003592(n+1))`
-/

namespace A199538.P14165339008883989724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (n + 1) - A162782 (A003592 (n + 1)).toNat

end

end A199538.P14165339008883989724

/-! ## A199538.P14952282698863303676

`A000190(A348976(n+2))*A331953(A344592(n+1))`
-/

namespace A199538.P14952282698863303676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (A348976 (n + 2)).toNat * A331953 (A344592 (n + 1)).toNat

end

end A199538.P14952282698863303676

/-! ## A199538.P7853433926105731970

`A214973(n+1)+A056980(A055403(n))`
-/

namespace A199538.P7853433926105731970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214973 (n + 1) + A056980 (A055403 n).toNat

end

end A199538.P7853433926105731970

/-!
# A199539: Beginning column count at 1, the index of the column which contains n in Clark Kimberling's even first column Stolarsky array.

The programs for A199539, there is no canonical definition to state claims against.
-/

/-! ## A199539.P6098820914136626269

`A374706(2*A244779(n+1))`
-/

namespace A199539.P6098820914136626269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374706 (2 * A244779 (n + 1)).toNat

end

end A199539.P6098820914136626269

/-! ## A199539.P1746355986782510541

`A097944(Δ[A032841(n+1)]²)`
-/

namespace A199539.P1746355986782510541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097944 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A199539.P1746355986782510541

/-! ## A199539.P18129325651550679962

`gcd(A120947(n+1), A320356(n+1))`
-/

namespace A199539.P18129325651550679962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A120947 (n + 1)) (A320356 (n + 1))

end

end A199539.P18129325651550679962

/-! ## A199539.P18238117008871069065

`gcd(Δ[A155264(n+4)], A072061(n+1))`
-/

namespace A199539.P18238117008871069065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155264 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A072061 (n + 1))

end

end A199539.P18238117008871069065

/-! ## A199539.P10137722285815319733

`A000688(A193641(n+1)+A000045(n))`
-/

namespace A199539.P10137722285815319733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A193641 (n + 1) + A000045 n).toNat

end

end A199539.P10137722285815319733

/-!
# A199540: Expansion 1/(1-x^2*cotan(x)) = Sum_{n>=0} a(n)*x^n/(n)!^2.

The programs for A199540, there is no canonical definition to state claims against.
-/

/-! ## A199540.P1069017111115936558

`A002866(n)/A274266(A332300(n))`
-/

namespace A199540.P1069017111115936558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002866 n : ℚ) / (A274266 (A332300 n).toNat : ℚ)

end

end A199540.P1069017111115936558

/-! ## A199540.P9352746713869918255

`A002129(C(A063834(n), A169894(n)))`
-/

namespace A199540.P9352746713869918255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (Nat.choose (A063834 n).toNat (A169894 n).toNat)

end

end A199540.P9352746713869918255

/-!
# A199543: G.f.: A(x) = Sum_{n>=0} x^n * A(x)^(n*(n+1)/2) * (1 - A(x)^(n+1))/(1 - A(x)).

The programs for A199543, there is no canonical definition to state claims against.
-/

/-! ## A199543.P287401512723390849

`A219642(A275912(n))`
-/

namespace A199543.P287401512723390849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219642 (A275912 n).toNat

end

end A199543.P287401512723390849

/-!
# A199544: G.f.: A(x) = Sum_{n>=0} x^n * A(x)^(n^2) * (1 - A(x)^(2*n+1))/(1 - A(x)).

The programs for A199544, there is no canonical definition to state claims against.
-/

/-! ## A199544.P15248703351553486645

`A052414(A120972(n+1))+1`
-/

namespace A199544.P15248703351553486645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052414 (A120972 (n + 1)).toNat + 1

end

end A199544.P15248703351553486645

/-!
# A199545: Sorted number of vertices of distinct solutions in the mix of regular convex polyhedra.

The programs for A199545, there is no canonical definition to state claims against.
-/

/-! ## A199545.P15785489736618112978

`24*A333939(A333960(n+1))`
-/

namespace A199545.P15785489736618112978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A333939 (A333960 (n + 1)).toNat

end

end A199545.P15785489736618112978

/-! ## A199545.P18376420730520478503

`∑[A335452(A372025(2*(n+3)))]`
-/

namespace A199545.P18376420730520478503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335452 (A372025 (2 * (n + 3))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199545.P18376420730520478503

/-! ## A199545.P17203849454763576082

`12*A073256(A187829(2*n+1))`
-/

namespace A199545.P17203849454763576082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A073256 (A187829 (2 * n + 1)).toNat

end

end A199545.P17203849454763576082

/-!
# A199546: Sorted number of edges of distinct solutions in the mix of regular convex polyhedra.

The programs for A199546, there is no canonical definition to state claims against.
-/

/-! ## A199546.P13908199116193867425

`A199549(n+1)/4`
-/

namespace A199546.P13908199116193867425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199549 (n + 1) : ℚ) / 4

end

end A199546.P13908199116193867425

/-! ## A199546.P11887534242848480027

`A110962(A199549(n+1))`
-/

namespace A199546.P11887534242848480027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (A199549 (n + 1)).toNat

end

end A199546.P11887534242848480027

/-!
# A199548: G.f. satisfies: A(x) = Sum_{n>=0} x^n * (1 - A(x)^(2*n+1))/(1 - A(x)).

The programs for A199548, there is no canonical definition to state claims against.
-/

/-! ## A199548.P8580479583522357268

`A256424((n+3)*a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A199548.P8580479583522357268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A256424 ((n + 3 : ℤ) * a (n - 1)).toNat

end

end A199548.P8580479583522357268

/-!
# A199549: Sorted number of sizes of the automorphism groups of distinct solutions in the mix of regular convex polyhedra.

The programs for A199549, there is no canonical definition to state claims against.
-/

/-! ## A199549.P17816530981349630831

`4*A199546(n+1)`
-/

namespace A199549.P17816530981349630831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A199546 (n + 1)

end

end A199549.P17816530981349630831

/-! ## A199549.P13603009817632525465

`A008574(A199546(n+1))`
-/

namespace A199549.P13603009817632525465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A199546 (n + 1)).toNat

end

end A199549.P13603009817632525465

/-! ## A199549.P15802271682705286903

`A199545(A261925(n+2))`
-/

namespace A199549.P15802271682705286903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199545 (A261925 (n + 2)).toNat

end

end A199549.P15802271682705286903

/-!
# A199551: Positions of squares in A048153.

The programs for A199551, there is no canonical definition to state claims against.
-/

/-! ## A199551.P2695568944299558522

`∩[A302796(n+1), A373824(n+1)]`
-/

namespace A199551.P2695568944299558522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199551.P2695568944299558522

/-!
# A199552: a(n) = 4*8^n + 1.

The programs for A199552, the canonical program `A199552.P5501455736984969006` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199552 has offset 0).

The definition of A199552 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*8^n+1` (program `A199552.P5501455736984969006`, by `A199552.P5501455736984969006.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199552.P5501455736984969006

`4*8^n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199552

/-- `4*8^n+1` -/
def P5501455736984969006.Spec : Prop :=
  ∀ n, (P5501455736984969006.a n : ℤ) = A199552 n

theorem P5501455736984969006.correct : P5501455736984969006.Spec := by
  intro n
  simp only [A199552]

end A199552

/-! ## A199552.P3674902659540595616

`or(1, 4*8^n)`
-/

namespace A199552.P3674902659540595616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (4 * 8 ^ n)

end

end A199552.P3674902659540595616

namespace A199552

/-- `or(1, 4*8^n)` -/
def P3674902659540595616.Spec : Prop :=
  ∀ n, (P3674902659540595616.a n : ℤ) = A199552 n

end A199552

/-! ## A199552.P3519218195644714490

`xor(1, 4*8^n)`
-/

namespace A199552.P3519218195644714490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (4 * 8 ^ n)

end

end A199552.P3519218195644714490

namespace A199552

/-- `xor(1, 4*8^n)` -/
def P3519218195644714490.Spec : Prop :=
  ∀ n, (P3519218195644714490.a n : ℤ) = A199552 n

end A199552

/-! ## A199552.P14092903459854601772

`ogf((5-12x)/(1-9x+8x^2))`
-/

namespace A199552.P14092903459854601772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -12] [1, -9, 8] n

end

end A199552.P14092903459854601772

namespace A199552

/-- `ogf((5-12x)/(1-9x+8x^2))` -/
def P14092903459854601772.Spec : Prop :=
  ∀ n, P14092903459854601772.a n = A199552 n

end A199552

/-! ## A199552.P13046724995315878821

`∑[8*a(n-1)]` with `a(0)=5, a(1)=28`
-/

namespace A199552.P13046724995315878821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 28] fun n f1 =>
  8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199552.P13046724995315878821

namespace A199552

/-- `∑[8*a(n-1)]` -/
def P13046724995315878821.Spec : Prop :=
  ∀ n, (P13046724995315878821.a n : ℤ) = A199552 n

end A199552

/-! ## A199552.P14443208101552945950

`abs(7-8*a(n-1))` with `a(0)=5`
-/

namespace A199552.P14443208101552945950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  |7 - 8 * a (n - 1)|

end

end A199552.P14443208101552945950

namespace A199552

/-- `abs(7-8*a(n-1))` -/
def P14443208101552945950.Spec : Prop :=
  ∀ n, P14443208101552945950.a n = A199552 n

end A199552

/-! ## A199552.P10934464953823049959

`abs(7-lcm(8, a(n-1)))` with `a(0)=5`
-/

namespace A199552.P10934464953823049959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  |7 - (Int.lcm 8 (a (n - 1)) : ℤ)|

end

end A199552.P10934464953823049959

namespace A199552

/-- `abs(7-lcm(8, a(n-1)))` -/
def P10934464953823049959.Spec : Prop :=
  ∀ n, P10934464953823049959.a n = A199552 n

end A199552

/-! ## A199552.P7140368348548648649

`8*(a(n-1)-7/8)` with `a(0)=5`
-/

namespace A199552.P7140368348548648649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  8 * (a (n - 1) - (7 : ℚ) / 8)

end

end A199552.P7140368348548648649

namespace A199552

/-- `8*(a(n-1)-7/8)` -/
def P7140368348548648649.Spec : Prop :=
  ∀ n, P7140368348548648649.a n = (A199552 n : ℚ)

theorem P7140368348548648649.correct : P7140368348548648649.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199552, Nat.add_sub_cancel, A199552.P7140368348548648649.a, A199552.P5501455736984969006.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199552, Nat.add_sub_cancel, A199552.P7140368348548648649.a, A199552.P5501455736984969006.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199552

/-! ## A199552.P8605544333245850043

`floor(a(n-1)+7*(a(n-1)-1))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A199552.P8605544333245850043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + 7 * (a (n - 1) - 1)

end

end A199552.P8605544333245850043

namespace A199552

/-- `floor(a(n-1)+7*(a(n-1)-1))` -/
def P8605544333245850043.Spec : Prop :=
  ∀ n, P8605544333245850043.a n = A199552 n

theorem P8605544333245850043.correct : P8605544333245850043.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199552, Nat.add_sub_cancel, A199552.P8605544333245850043.a, A199552.P5501455736984969006.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199552, Nat.add_sub_cancel, A199552.P8605544333245850043.a, A199552.P5501455736984969006.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199552

/-! ## A199552.P6288072077237072917

`floor(a(n-1)-7*(1-a(n-1)))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A199552.P6288072077237072917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) - 7 * (1 - a (n - 1))

end

end A199552.P6288072077237072917

namespace A199552

/-- `floor(a(n-1)-7*(1-a(n-1)))` -/
def P6288072077237072917.Spec : Prop :=
  ∀ n, P6288072077237072917.a n = A199552 n

theorem P6288072077237072917.correct : P6288072077237072917.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199552, Nat.add_sub_cancel, A199552.P6288072077237072917.a, A199552.P5501455736984969006.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199552, Nat.add_sub_cancel, A199552.P6288072077237072917.a, A199552.P5501455736984969006.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199552

/-! ## A199552.P10435070938812012492

`A020737(3*n)`
-/

namespace A199552.P10435070938812012492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020737 (3 * n)

end

end A199552.P10435070938812012492

namespace A199552

/-- `A020737(3*n)` -/
def P10435070938812012492.Spec : Prop :=
  ∀ n, P10435070938812012492.a n = A199552 n

end A199552

/-! ## A199552.P17253164748204765536

`A048578(3*n+1)`
-/

namespace A199552.P17253164748204765536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 (3 * n + 1)

end

end A199552.P17253164748204765536

namespace A199552

/-- `A048578(3*n+1)` -/
def P17253164748204765536.Spec : Prop :=
  ∀ n, P17253164748204765536.a n = A199552 n

end A199552

/-! ## A199552.P12788746717583603238

`A094373(3*(n+1))`
-/

namespace A199552.P12788746717583603238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 (3 * (n + 1))

end

end A199552.P12788746717583603238

namespace A199552

/-- `A094373(3*(n+1))` -/
def P12788746717583603238.Spec : Prop :=
  ∀ n, P12788746717583603238.a n = A199552 n

end A199552

/-! ## A199552.P18156277048117287705

`A127904(3*(n+1))`
-/

namespace A199552.P18156277048117287705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127904 (3 * (n + 1))

end

end A199552.P18156277048117287705

namespace A199552

/-- `A127904(3*(n+1))` -/
def P18156277048117287705.Spec : Prop :=
  ∀ n, P18156277048117287705.a n = A199552 n

end A199552

/-! ## A199552.P5945590898788993478

`A143096(3*(n+1))`
-/

namespace A199552.P5945590898788993478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143096 (3 * (n + 1))

end

end A199552.P5945590898788993478

namespace A199552

/-- `A143096(3*(n+1))` -/
def P5945590898788993478.Spec : Prop :=
  ∀ n, P5945590898788993478.a n = A199552 n

end A199552

/-! ## A199552.P16398943892783428594

`A000051(3*n+2)`
-/

namespace A199552.P16398943892783428594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (3 * n + 2)

end

end A199552.P16398943892783428594

namespace A199552

/-- `A000051(3*n+2)` -/
def P16398943892783428594.Spec : Prop :=
  ∀ n, P16398943892783428594.a n = A199552 n

end A199552

/-! ## A199552.P15211837114373660039

`A083318(3*n+2)`
-/

namespace A199552.P15211837114373660039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 (3 * n + 2)

end

end A199552.P15211837114373660039

namespace A199552

/-- `A083318(3*n+2)` -/
def P15211837114373660039.Spec : Prop :=
  ∀ n, P15211837114373660039.a n = A199552 n

end A199552

/-! ## A199552.P6740018019985981753

`A228693(6*(n+1))`
-/

namespace A199552.P6740018019985981753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 (6 * (n + 1))

end

end A199552.P6740018019985981753

namespace A199552

/-- `A228693(6*(n+1))` -/
def P6740018019985981753.Spec : Prop :=
  ∀ n, P6740018019985981753.a n = A199552 n

end A199552

/-! ## A199552.P5688063201757491998

`A240277(3*n+4)`
-/

namespace A199552.P5688063201757491998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240277 (3 * n + 4)

end

end A199552.P5688063201757491998

namespace A199552

/-- `A240277(3*n+4)` -/
def P5688063201757491998.Spec : Prop :=
  ∀ n, P5688063201757491998.a n = A199552 n

end A199552

/-! ## A199552.P357191005187142912

`A086341(6*n+3)`
-/

namespace A199552.P357191005187142912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086341 (6 * n + 3)

end

end A199552.P357191005187142912

namespace A199552

/-- `A086341(6*n+3)` -/
def P357191005187142912.Spec : Prop :=
  ∀ n, P357191005187142912.a n = A199552 n

end A199552

/-!
# A199553: a(n) = 5*8^n+1.

The programs for A199553, the canonical program `A199553.P16257106348078318879` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199553 has offset 0).

The definition of A199553 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*8^n+1` (program `A199553.P16257106348078318879`, by `A199553.P16257106348078318879.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199553.P16257106348078318879

`5*8^n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199553

/-- `5*8^n+1` -/
def P16257106348078318879.Spec : Prop :=
  ∀ n, (P16257106348078318879.a n : ℤ) = A199553 n

theorem P16257106348078318879.correct : P16257106348078318879.Spec := by
  intro n
  simp only [A199553]

end A199553

/-! ## A199553.P8076945233014042187

`ogf((6-13x)/(1-9x+8x^2))`
-/

namespace A199553.P8076945233014042187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -13] [1, -9, 8] n

end

end A199553.P8076945233014042187

namespace A199553

/-- `ogf((6-13x)/(1-9x+8x^2))` -/
def P8076945233014042187.Spec : Prop :=
  ∀ n, P8076945233014042187.a n = A199553 n

end A199553

/-! ## A199553.P12769324859163004366

`abs(7-8*a(n-1))` with `a(0)=6`
-/

namespace A199553.P12769324859163004366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  |7 - 8 * a (n - 1)|

end

end A199553.P12769324859163004366

namespace A199553

/-- `abs(7-8*a(n-1))` -/
def P12769324859163004366.Spec : Prop :=
  ∀ n, P12769324859163004366.a n = A199553 n

end A199553

/-! ## A199553.P13965879388470552298

`8*(a(n-1)-7/8)` with `a(0)=6`
-/

namespace A199553.P13965879388470552298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6] fun n a =>
  8 * (a (n - 1) - (7 : ℚ) / 8)

end

end A199553.P13965879388470552298

namespace A199553

/-- `8*(a(n-1)-7/8)` -/
def P13965879388470552298.Spec : Prop :=
  ∀ n, P13965879388470552298.a n = (A199553 n : ℚ)

theorem P13965879388470552298.correct : P13965879388470552298.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199553, Nat.add_sub_cancel, A199553.P13965879388470552298.a, A199553.P16257106348078318879.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199553, Nat.add_sub_cancel, A199553.P13965879388470552298.a, A199553.P16257106348078318879.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199553

/-! ## A199553.P8401226693109156734

`floor(a(n-1)+7*(a(n-1)-1))` with `a(0)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A199553.P8401226693109156734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + 7 * (a (n - 1) - 1)

end

end A199553.P8401226693109156734

namespace A199553

/-- `floor(a(n-1)+7*(a(n-1)-1))` -/
def P8401226693109156734.Spec : Prop :=
  ∀ n, P8401226693109156734.a n = A199553 n

theorem P8401226693109156734.correct : P8401226693109156734.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199553, Nat.add_sub_cancel, A199553.P8401226693109156734.a, A199553.P16257106348078318879.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199553, Nat.add_sub_cancel, A199553.P8401226693109156734.a, A199553.P16257106348078318879.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199553

/-! ## A199553.P8716925247545375230

`floor(a(n-1)-7*(1-a(n-1)))` with `a(0)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A199553.P8716925247545375230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) - 7 * (1 - a (n - 1))

end

end A199553.P8716925247545375230

namespace A199553

/-- `floor(a(n-1)-7*(1-a(n-1)))` -/
def P8716925247545375230.Spec : Prop :=
  ∀ n, P8716925247545375230.a n = A199553 n

theorem P8716925247545375230.correct : P8716925247545375230.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199553, Nat.add_sub_cancel, A199553.P8716925247545375230.a, A199553.P16257106348078318879.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199553, Nat.add_sub_cancel, A199553.P8716925247545375230.a, A199553.P16257106348078318879.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199553

/-! ## A199553.P3814670790728431468

`A083575(3*n)`
-/

namespace A199553.P3814670790728431468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083575 (3 * n)

end

end A199553.P3814670790728431468

namespace A199553

/-- `A083575(3*n)` -/
def P3814670790728431468.Spec : Prop :=
  ∀ n, P3814670790728431468.a n = A199553 n

end A199553

/-! ## A199553.P5467806084635786847

`(A199557(n)+1)/2`
-/

namespace A199553.P5467806084635786847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199557 n + 1 : ℚ) / 2

end

end A199553.P5467806084635786847

namespace A199553

/-- `(A199557(n)+1)/2` -/
def P5467806084635786847.Spec : Prop :=
  ∀ n, P5467806084635786847.a n = (A199553 n : ℚ)

theorem P5467806084635786847.correct : P5467806084635786847.Spec := by
  intro n
  simp only [A199553, Nat.add_sub_cancel, A199553.P5467806084635786847.a, A199553.P16257106348078318879.a, A199557, A199557.P16269042401603288826.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199553

/-! ## A199553.P5214735552666597936

`(A198857(n)+3)/2`
-/

namespace A199553.P5214735552666597936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198857 n + 3 : ℚ) / 2

end

end A199553.P5214735552666597936

namespace A199553

/-- `(A198857(n)+3)/2` -/
def P5214735552666597936.Spec : Prop :=
  ∀ n, P5214735552666597936.a n = (A199553 n : ℚ)

theorem P5214735552666597936.correct : P5214735552666597936.Spec := by
  intro n
  simp only [A199553, Nat.add_sub_cancel, A199553.P5214735552666597936.a, A199553.P16257106348078318879.a, A198857, A198857.P4050123858771107401.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199553

/-! ## A199553.P9369227971942668133

`Δ[A341905(3*n)+n]`
-/

namespace A199553.P9369227971942668133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341905 (3 * n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199553.P9369227971942668133

namespace A199553

/-- `Δ[A341905(3*n)+n]` -/
def P9369227971942668133.Spec : Prop :=
  ∀ n, P9369227971942668133.a n = A199553 n

end A199553

/-! ## A199553.P8347606056063909084

`(A020714(3*n+1)+2)/2`
-/

namespace A199553.P8347606056063909084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020714 (3 * n + 1) + 2 : ℚ) / 2

end

end A199553.P8347606056063909084

namespace A199553

/-- `(A020714(3*n+1)+2)/2` -/
def P8347606056063909084.Spec : Prop :=
  ∀ n, P8347606056063909084.a n = (A199553 n : ℚ)

end A199553

/-! ## A199553.P7077304259781914925

`or(A013731(n), A062395(n))`
-/

namespace A199553.P7077304259781914925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A013731 n) (A062395 n)

end

end A199553.P7077304259781914925

namespace A199553

/-- `or(A013731(n), A062395(n))` -/
def P7077304259781914925.Spec : Prop :=
  ∀ n, P7077304259781914925.a n = A199553 n

end A199553

/-! ## A199553.P7785302696461672025

`(A029749(A016969(n)+3*n+1)+2)/2`
-/

namespace A199553.P7785302696461672025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029749 (A016969 n + (3 * n + 1 : ℤ)).toNat + 2 : ℚ) / 2

end

end A199553.P7785302696461672025

namespace A199553

/-- `(A029749(A016969(n)+3*n+1)+2)/2` -/
def P7785302696461672025.Spec : Prop :=
  ∀ n, P7785302696461672025.a n = (A199553 n : ℚ)

end A199553

/-!
# A199554: a(n) = 6*8^n+1.

The programs for A199554, the canonical program `A199554.P8652109811334265959` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199554 has offset 0).

The definition of A199554 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*8^n+1` (program `A199554.P8652109811334265959`, by `A199554.P8652109811334265959.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199554.P8652109811334265959

`6*8^n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199554

/-- `6*8^n+1` -/
def P8652109811334265959.Spec : Prop :=
  ∀ n, (P8652109811334265959.a n : ℤ) = A199554 n

theorem P8652109811334265959.correct : P8652109811334265959.Spec := by
  intro n
  simp only [A199554]

end A199554

/-! ## A199554.P6615630400110808529

`7*A083068(n)`
-/

namespace A199554.P6615630400110808529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A083068 n

end

end A199554.P6615630400110808529

namespace A199554

/-- `7*A083068(n)` -/
def P6615630400110808529.Spec : Prop :=
  ∀ n, P6615630400110808529.a n = A199554 n

end A199554

/-! ## A199554.P12178154311029931908

`or(1, 6*8^n)`
-/

namespace A199554.P12178154311029931908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (6 * 8 ^ n)

end

end A199554.P12178154311029931908

namespace A199554

/-- `or(1, 6*8^n)` -/
def P12178154311029931908.Spec : Prop :=
  ∀ n, (P12178154311029931908.a n : ℤ) = A199554 n

end A199554

/-! ## A199554.P80214361684195613

`xor(1, 6*8^n)`
-/

namespace A199554.P80214361684195613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (6 * 8 ^ n)

end

end A199554.P80214361684195613

namespace A199554

/-- `xor(1, 6*8^n)` -/
def P80214361684195613.Spec : Prop :=
  ∀ n, (P80214361684195613.a n : ℤ) = A199554 n

end A199554

/-! ## A199554.P583679503464360014

`ogf((7-14x)/(1-9x+8x^2))`
-/

namespace A199554.P583679503464360014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -14] [1, -9, 8] n

end

end A199554.P583679503464360014

namespace A199554

/-- `ogf((7-14x)/(1-9x+8x^2))` -/
def P583679503464360014.Spec : Prop :=
  ∀ n, P583679503464360014.a n = A199554 n

end A199554

/-! ## A199554.P8697203073312325204

`abs(7-8*a(n-1))` with `a(0)=7`
-/

namespace A199554.P8697203073312325204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  |7 - 8 * a (n - 1)|

end

end A199554.P8697203073312325204

namespace A199554

/-- `abs(7-8*a(n-1))` -/
def P8697203073312325204.Spec : Prop :=
  ∀ n, P8697203073312325204.a n = A199554 n

end A199554

/-! ## A199554.P3615630641526909306

`8*(a(n-1)-7/8)` with `a(0)=7`
-/

namespace A199554.P3615630641526909306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [7] fun n a =>
  8 * (a (n - 1) - (7 : ℚ) / 8)

end

end A199554.P3615630641526909306

namespace A199554

/-- `8*(a(n-1)-7/8)` -/
def P3615630641526909306.Spec : Prop :=
  ∀ n, P3615630641526909306.a n = (A199554 n : ℚ)

theorem P3615630641526909306.correct : P3615630641526909306.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199554, Nat.add_sub_cancel, A199554.P3615630641526909306.a, A199554.P8652109811334265959.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199554, Nat.add_sub_cancel, A199554.P3615630641526909306.a, A199554.P8652109811334265959.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199554

/-! ## A199554.P9544276485818661294

`7*∑[8*a(n-1)]` with `a(0)=1, a(1)=6`
-/

namespace A199554.P9544276485818661294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199554.P9544276485818661294

namespace A199554

/-- `7*∑[8*a(n-1)]` -/
def P9544276485818661294.Spec : Prop :=
  ∀ n, (P9544276485818661294.a n : ℤ) = A199554 n

end A199554

/-! ## A199554.P10088839629670425949

`floor(a(n-1)+7*(a(n-1)-1))` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A199554.P10088839629670425949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + 7 * (a (n - 1) - 1)

end

end A199554.P10088839629670425949

namespace A199554

/-- `floor(a(n-1)+7*(a(n-1)-1))` -/
def P10088839629670425949.Spec : Prop :=
  ∀ n, P10088839629670425949.a n = A199554 n

theorem P10088839629670425949.correct : P10088839629670425949.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199554, Nat.add_sub_cancel, A199554.P10088839629670425949.a, A199554.P8652109811334265959.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199554, Nat.add_sub_cancel, A199554.P10088839629670425949.a, A199554.P8652109811334265959.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199554

/-! ## A199554.P3863491444531427036

`floor(a(n-1)-7*(1-a(n-1)))` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A199554.P3863491444531427036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) - 7 * (1 - a (n - 1))

end

end A199554.P3863491444531427036

namespace A199554

/-- `floor(a(n-1)-7*(1-a(n-1)))` -/
def P3863491444531427036.Spec : Prop :=
  ∀ n, P3863491444531427036.a n = A199554 n

theorem P3863491444531427036.correct : P3863491444531427036.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199554, Nat.add_sub_cancel, A199554.P3863491444531427036.a, A199554.P8652109811334265959.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199554, Nat.add_sub_cancel, A199554.P3863491444531427036.a, A199554.P8652109811334265959.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199554

/-! ## A199554.P13140950956588774171

`∑[7*A083233(n)]`
-/

namespace A199554.P13140950956588774171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A083233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199554.P13140950956588774171

namespace A199554

/-- `∑[7*A083233(n)]` -/
def P13140950956588774171.Spec : Prop :=
  ∀ n, P13140950956588774171.a n = A199554 n

end A199554

/-! ## A199554.P10928343388145775839

`A103204(3*(n+1))`
-/

namespace A199554.P10928343388145775839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103204 (3 * (n + 1))

end

end A199554.P10928343388145775839

namespace A199554

/-- `A103204(3*(n+1))` -/
def P10928343388145775839.Spec : Prop :=
  ∀ n, P10928343388145775839.a n = A199554 n

end A199554

/-! ## A199554.P6297253910631341466

`A181565(3*n+1)`
-/

namespace A199554.P6297253910631341466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181565 (3 * n + 1)

end

end A199554.P6297253910631341466

namespace A199554

/-- `A181565(3*n+1)` -/
def P6297253910631341466.Spec : Prop :=
  ∀ n, P6297253910631341466.a n = A199554 n

end A199554

/-! ## A199554.P6841364946924425164

`A004119(3*n+2)`
-/

namespace A199554.P6841364946924425164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004119 (3 * n + 2)

end

end A199554.P6841364946924425164

namespace A199554

/-- `A004119(3*n+2)` -/
def P6841364946924425164.Spec : Prop :=
  ∀ n, P6841364946924425164.a n = A199554 n

end A199554

/-! ## A199554.P2983558908762339420

`7*A299913(2*n+1)`
-/

namespace A199554.P2983558908762339420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A299913 (2 * n + 1)

end

end A199554.P2983558908762339420

namespace A199554

/-- `7*A299913(2*n+1)` -/
def P2983558908762339420.Spec : Prop :=
  ∀ n, P2983558908762339420.a n = A199554 n

end A199554

/-! ## A199554.P8183140947420056022

`abs(A153973(3*n+2)-5)`
-/

namespace A199554.P8183140947420056022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A153973 (3 * n + 2) - 5|

end

end A199554.P8183140947420056022

namespace A199554

/-- `abs(A153973(3*n+2)-5)` -/
def P8183140947420056022.Spec : Prop :=
  ∀ n, P8183140947420056022.a n = A199554 n

end A199554

/-! ## A199554.P11245595890520826704

`A097581(A016957(n))`
-/

namespace A199554.P11245595890520826704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097581 (A016957 n).toNat

end

end A199554.P11245595890520826704

namespace A199554

/-- `A097581(A016957(n))` -/
def P11245595890520826704.Spec : Prop :=
  ∀ n, P11245595890520826704.a n = A199554 n

end A199554

/-! ## A199554.P15745906329399082767

`A245179(A016921(n))`
-/

namespace A199554.P15745906329399082767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245179 (A016921 n).toNat

end

end A199554.P15745906329399082767

namespace A199554

/-- `A245179(A016921(n))` -/
def P15745906329399082767.Spec : Prop :=
  ∀ n, P15745906329399082767.a n = A199554 n

end A199554

/-! ## A199554.P9620316917752702401

`A097581(A016933(n)+2)`
-/

namespace A199554.P9620316917752702401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097581 (A016933 n + 2).toNat

end

end A199554.P9620316917752702401

namespace A199554

/-- `A097581(A016933(n)+2)` -/
def P9620316917752702401.Spec : Prop :=
  ∀ n, P9620316917752702401.a n = A199554 n

end A199554

/-! ## A199554.P975717095207773637

`A209721(A016897(n)+n)`
-/

namespace A199554.P975717095207773637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209721 (A016897 n + (n : ℤ)).toNat

end

end A199554.P975717095207773637

namespace A199554

/-- `A209721(A016897(n)+n)` -/
def P975717095207773637.Spec : Prop :=
  ∀ n, P975717095207773637.a n = A199554 n

end A199554

/-!
# A199555: a(n) = 7*8^n + 1.

The programs for A199555, the canonical program `A199555.P17485886702437686470` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199555 has offset 0).

The definition of A199555 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*8^n+1` (program `A199555.P17485886702437686470`, by `A199555.P17485886702437686470.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199555.P17485886702437686470

`7*8^n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199555

/-- `7*8^n+1` -/
def P17485886702437686470.Spec : Prop :=
  ∀ n, (P17485886702437686470.a n : ℤ) = A199555 n

theorem P17485886702437686470.correct : P17485886702437686470.Spec := by
  intro n
  simp only [A199555]

end A199555

/-! ## A199555.P1265253890641063843

`Δ[or(n, 8^n)]`
-/

namespace A199555.P1265253890641063843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (8 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A199555.P1265253890641063843

namespace A199555

/-- `Δ[or(n, 8^n)]` -/
def P1265253890641063843.Spec : Prop :=
  ∀ n, P1265253890641063843.a n = A199555 n

end A199555

/-! ## A199555.P6252887221567448142

`Δ[xor(n, 8^n)]`
-/

namespace A199555.P6252887221567448142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (8 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A199555.P6252887221567448142

namespace A199555

/-- `Δ[xor(n, 8^n)]` -/
def P6252887221567448142.Spec : Prop :=
  ∀ n, P6252887221567448142.a n = A199555 n

end A199555

/-! ## A199555.P3518695434530563409

`ogf((8-15x)/(1-9x+8x^2))`
-/

namespace A199555.P3518695434530563409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -15] [1, -9, 8] n

end

end A199555.P3518695434530563409

namespace A199555

/-- `ogf((8-15x)/(1-9x+8x^2))` -/
def P3518695434530563409.Spec : Prop :=
  ∀ n, P3518695434530563409.a n = A199555 n

end A199555

/-! ## A199555.P10341454887948559557

`abs(7-8*a(n-1))` with `a(0)=8`
-/

namespace A199555.P10341454887948559557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  |7 - 8 * a (n - 1)|

end

end A199555.P10341454887948559557

namespace A199555

/-- `abs(7-8*a(n-1))` -/
def P10341454887948559557.Spec : Prop :=
  ∀ n, P10341454887948559557.a n = A199555 n

end A199555

/-! ## A199555.P10979983708967038902

`8*(a(n-1)-7/8)` with `a(0)=8`
-/

namespace A199555.P10979983708967038902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [8] fun n a =>
  8 * (a (n - 1) - (7 : ℚ) / 8)

end

end A199555.P10979983708967038902

namespace A199555

/-- `8*(a(n-1)-7/8)` -/
def P10979983708967038902.Spec : Prop :=
  ∀ n, P10979983708967038902.a n = (A199555 n : ℚ)

theorem P10979983708967038902.correct : P10979983708967038902.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199555, Nat.add_sub_cancel, A199555.P10979983708967038902.a, A199555.P17485886702437686470.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199555, Nat.add_sub_cancel, A199555.P10979983708967038902.a, A199555.P17485886702437686470.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199555

/-! ## A199555.P17090217900252195164

`xor(4, 8*a(n-1)-3)` with `a(0)=8`
-/

namespace A199555.P17090217900252195164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  Int.xor 4 (8 * a (n - 1) - 3)

end

end A199555.P17090217900252195164

namespace A199555

/-- `xor(4, 8*a(n-1)-3)` -/
def P17090217900252195164.Spec : Prop :=
  ∀ n, P17090217900252195164.a n = A199555 n

end A199555

/-! ## A199555.P1514174321658078730

`floor(a(n-1)+7*(a(n-1)-1))` with `a(0)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A199555.P1514174321658078730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + 7 * (a (n - 1) - 1)

end

end A199555.P1514174321658078730

namespace A199555

/-- `floor(a(n-1)+7*(a(n-1)-1))` -/
def P1514174321658078730.Spec : Prop :=
  ∀ n, P1514174321658078730.a n = A199555 n

theorem P1514174321658078730.correct : P1514174321658078730.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199555, Nat.add_sub_cancel, A199555.P1514174321658078730.a, A199555.P17485886702437686470.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199555, Nat.add_sub_cancel, A199555.P1514174321658078730.a, A199555.P17485886702437686470.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199555

/-! ## A199555.P13802509314482623216

`floor(a(n-1)-7*(1-a(n-1)))` with `a(0)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A199555.P13802509314482623216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) - 7 * (1 - a (n - 1))

end

end A199555.P13802509314482623216

namespace A199555

/-- `floor(a(n-1)-7*(1-a(n-1)))` -/
def P13802509314482623216.Spec : Prop :=
  ∀ n, P13802509314482623216.a n = A199555 n

theorem P13802509314482623216.correct : P13802509314482623216.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199555, Nat.add_sub_cancel, A199555.P13802509314482623216.a, A199555.P17485886702437686470.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199555, Nat.add_sub_cancel, A199555.P13802509314482623216.a, A199555.P17485886702437686470.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199555

/-! ## A199555.P7650850969863519425

`Δ[A226201(n)]`
-/

namespace A199555.P7650850969863519425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226201 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199555.P7650850969863519425

namespace A199555

/-- `Δ[A226201(n)]` -/
def P7650850969863519425.Spec : Prop :=
  ∀ n, P7650850969863519425.a n = A199555 n

theorem P7650850969863519425.correct : P7650850969863519425.Spec := by
  intro n
  simp only [A199555, Nat.add_sub_cancel, A199555.P7650850969863519425.f1, A199555.P7650850969863519425.a, A199555.P17485886702437686470.a, A226201, A226201.P14947204726930115796.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199555

/-! ## A199555.P3512209478567480787

`A083686(3*n)`
-/

namespace A199555.P3512209478567480787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083686 (3 * n)

end

end A199555.P3512209478567480787

namespace A199555

/-- `A083686(3*n)` -/
def P3512209478567480787.Spec : Prop :=
  ∀ n, P3512209478567480787.a n = A199555 n

end A199555

/-! ## A199555.P4863349317327587837

`Δ[A001018(n)+n]`
-/

namespace A199555.P4863349317327587837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199555.P4863349317327587837

namespace A199555

/-- `Δ[A001018(n)+n]` -/
def P4863349317327587837.Spec : Prop :=
  ∀ n, P4863349317327587837.a n = A199555 n

theorem P4863349317327587837.correct : P4863349317327587837.Spec := by
  intro n
  simp only [A199555, Nat.add_sub_cancel, A199555.P4863349317327587837.f1, A199555.P4863349317327587837.a, A199555.P17485886702437686470.a, A001018, A001018.P5588564631493008987.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199555

/-! ## A199555.P3762551956924606277

`Δ[record[A094014(n)]+n]`
-/

namespace A199555.P3762551956924606277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094014 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199555.P3762551956924606277

namespace A199555

/-- `Δ[record[A094014(n)]+n]` -/
def P3762551956924606277.Spec : Prop :=
  ∀ n, P3762551956924606277.a n = A199555 n

end A199555

/-! ## A199555.P5020741375562664527

`Δ[A000079(3*n)+n]`
-/

namespace A199555.P5020741375562664527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (3 * n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199555.P5020741375562664527

namespace A199555

/-- `Δ[A000079(3*n)+n]` -/
def P5020741375562664527.Spec : Prop :=
  ∀ n, P5020741375562664527.a n = A199555 n

end A199555

/-! ## A199555.P3891461281616732897

`Δ[A000225(3*n)+n]`
-/

namespace A199555.P3891461281616732897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (3 * n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199555.P3891461281616732897

namespace A199555

/-- `Δ[A000225(3*n)+n]` -/
def P3891461281616732897.Spec : Prop :=
  ∀ n, P3891461281616732897.a n = A199555 n

end A199555

/-! ## A199555.P12736298093025516306

`Δ[A153972(3*n)+n]`
-/

namespace A199555.P12736298093025516306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153972 (3 * n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199555.P12736298093025516306

namespace A199555

/-- `Δ[A153972(3*n)+n]` -/
def P12736298093025516306.Spec : Prop :=
  ∀ n, P12736298093025516306.a n = A199555 n

end A199555

/-! ## A199555.P14929658248984752901

`Δ[A155606(n)-(3^n-n)]`
-/

namespace A199555.P14929658248984752901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155606 n - ((3 ^ n : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199555.P14929658248984752901

namespace A199555

/-- `Δ[A155606(n)-(3^n-n)]` -/
def P14929658248984752901.Spec : Prop :=
  ∀ n, P14929658248984752901.a n = A199555 n

theorem P14929658248984752901.correct : P14929658248984752901.Spec := by
  intro n
  simp only [A199555, Nat.add_sub_cancel, A199555.P14929658248984752901.f1, A199555.P14929658248984752901.a, A199555.P17485886702437686470.a, A155606, A155606.P9774463501778138714.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199555

/-!
# A199556: a(n) = 9*8^n + 1.

The programs for A199556, the canonical program `A199556.P14079784976606576389` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199556 has offset 0).

The definition of A199556 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*8^n+1` (program `A199556.P14079784976606576389`, by `A199556.P14079784976606576389.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199556.P14079784976606576389

`9*8^n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199556

/-- `9*8^n+1` -/
def P14079784976606576389.Spec : Prop :=
  ∀ n, (P14079784976606576389.a n : ℤ) = A199556 n

theorem P14079784976606576389.correct : P14079784976606576389.Spec := by
  intro n
  simp only [A199556]

end A199556

/-! ## A199556.P10064612626405245067

`ogf((10-17x)/(1-9x+8x^2))`
-/

namespace A199556.P10064612626405245067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -17] [1, -9, 8] n

end

end A199556.P10064612626405245067

namespace A199556

/-- `ogf((10-17x)/(1-9x+8x^2))` -/
def P10064612626405245067.Spec : Prop :=
  ∀ n, P10064612626405245067.a n = A199556 n

end A199556

/-! ## A199556.P169121963129427766

`abs(7-8*a(n-1))` with `a(0)=10`
-/

namespace A199556.P169121963129427766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  |7 - 8 * a (n - 1)|

end

end A199556.P169121963129427766

namespace A199556

/-- `abs(7-8*a(n-1))` -/
def P169121963129427766.Spec : Prop :=
  ∀ n, P169121963129427766.a n = A199556 n

end A199556

/-! ## A199556.P8910145683609230862

`8*(a(n-1)-7/8)` with `a(0)=10`
-/

namespace A199556.P8910145683609230862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [10] fun n a =>
  8 * (a (n - 1) - (7 : ℚ) / 8)

end

end A199556.P8910145683609230862

namespace A199556

/-- `8*(a(n-1)-7/8)` -/
def P8910145683609230862.Spec : Prop :=
  ∀ n, P8910145683609230862.a n = (A199556 n : ℚ)

theorem P8910145683609230862.correct : P8910145683609230862.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199556, Nat.add_sub_cancel, A199556.P8910145683609230862.a, A199556.P14079784976606576389.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199556, Nat.add_sub_cancel, A199556.P8910145683609230862.a, A199556.P14079784976606576389.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199556

/-! ## A199556.P589995016801187475

`or(8^n+1, 8^(n+1))`
-/

namespace A199556.P589995016801187475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (8 ^ n + 1) (8 ^ (n + 1))

end

end A199556.P589995016801187475

namespace A199556

/-- `or(8^n+1, 8^(n+1))` -/
def P589995016801187475.Spec : Prop :=
  ∀ n, (P589995016801187475.a n : ℤ) = A199556 n

end A199556

/-! ## A199556.P12007003183295482331

`record[8*xor(1, a(n-1))+1]` with `a(0)=10, a(1)=8`
-/

namespace A199556.P12007003183295482331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 8] fun n f1 =>
  8 * Nat.xor 1 (f1 (n - 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199556.P12007003183295482331

namespace A199556

/-- `record[8*xor(1, a(n-1))+1]` -/
def P12007003183295482331.Spec : Prop :=
  ∀ n, (P12007003183295482331.a n : ℤ) = A199556 n

end A199556

/-! ## A199556.P127811410492390814

`A083705(3*n)`
-/

namespace A199556.P127811410492390814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083705 (3 * n)

end

end A199556.P127811410492390814

namespace A199556

/-- `A083705(3*n)` -/
def P127811410492390814.Spec : Prop :=
  ∀ n, P127811410492390814.a n = A199556 n

end A199556

/-! ## A199556.P17545656789735934338

`Δ[A238276(n)+n]`
-/

namespace A199556.P17545656789735934338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238276 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199556.P17545656789735934338

namespace A199556

/-- `Δ[A238276(n)+n]` -/
def P17545656789735934338.Spec : Prop :=
  ∀ n, P17545656789735934338.a n = A199556 n

end A199556

/-! ## A199556.P725003104192531102

`Δ[n-A165760(n)]`
-/

namespace A199556.P725003104192531102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A165760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199556.P725003104192531102

namespace A199556

/-- `Δ[n-A165760(n)]` -/
def P725003104192531102.Spec : Prop :=
  ∀ n, P725003104192531102.a n = A199556 n

end A199556

/-! ## A199556.P8607561161148356607

`abs(17-9*(A062395(n)+1))`
-/

namespace A199556.P8607561161148356607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |17 - 9 * (A062395 n + 1)|

end

end A199556.P8607561161148356607

namespace A199556

/-- `abs(17-9*(A062395(n)+1))` -/
def P8607561161148356607.Spec : Prop :=
  ∀ n, P8607561161148356607.a n = A199556 n

end A199556

/-! ## A199556.P7717317598524895402

`ceil(3*A103204(3*n+4)/4)`
-/

namespace A199556.P7717317598524895402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 * A103204 (3 * n + 4) : ℚ) / 4⌉

end

end A199556.P7717317598524895402

namespace A199556

/-- `ceil(3*A103204(3*n+4)/4)` -/
def P7717317598524895402.Spec : Prop :=
  ∀ n, P7717317598524895402.a n = A199556 n

end A199556

/-! ## A199556.P749961474036291093

`xor(A001018(n)+1, A001018(n+1))`
-/

namespace A199556.P749961474036291093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001018 n + 1) (A001018 (n + 1))

end

end A199556.P749961474036291093

namespace A199556

/-- `xor(A001018(n)+1, A001018(n+1))` -/
def P749961474036291093.Spec : Prop :=
  ∀ n, P749961474036291093.a n = A199556 n

end A199556

/-!
# A199557: a(n) = 10*8^n + 1.

The programs for A199557, the canonical program `A199557.P16269042401603288826` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199557 has offset 0).

The definition of A199557 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*8^n+1` (program `A199557.P16269042401603288826`, by `A199557.P16269042401603288826.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199557.P16269042401603288826

`10*8^n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199557

/-- `10*8^n+1` -/
def P16269042401603288826.Spec : Prop :=
  ∀ n, (P16269042401603288826.a n : ℤ) = A199557 n

theorem P16269042401603288826.correct : P16269042401603288826.Spec := by
  intro n
  simp only [A199557]

end A199557

/-! ## A199557.P12906410880183518351

`or(1, 10*8^n)`
-/

namespace A199557.P12906410880183518351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (10 * 8 ^ n)

end

end A199557.P12906410880183518351

namespace A199557

/-- `or(1, 10*8^n)` -/
def P12906410880183518351.Spec : Prop :=
  ∀ n, (P12906410880183518351.a n : ℤ) = A199557 n

end A199557

/-! ## A199557.P13422030805444494730

`xor(1, 10*8^n)`
-/

namespace A199557.P13422030805444494730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (10 * 8 ^ n)

end

end A199557.P13422030805444494730

namespace A199557

/-- `xor(1, 10*8^n)` -/
def P13422030805444494730.Spec : Prop :=
  ∀ n, (P13422030805444494730.a n : ℤ) = A199557 n

end A199557

/-! ## A199557.P1045418165435842682

`ogf((11-18x)/(1-9x+8x^2))`
-/

namespace A199557.P1045418165435842682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, -18] [1, -9, 8] n

end

end A199557.P1045418165435842682

namespace A199557

/-- `ogf((11-18x)/(1-9x+8x^2))` -/
def P1045418165435842682.Spec : Prop :=
  ∀ n, P1045418165435842682.a n = A199557 n

end A199557

/-! ## A199557.P15771556610207716020

`A083575(3*n+1)`
-/

namespace A199557.P15771556610207716020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083575 (3 * n + 1)

end

end A199557.P15771556610207716020

namespace A199557

/-- `A083575(3*n+1)` -/
def P15771556610207716020.Spec : Prop :=
  ∀ n, P15771556610207716020.a n = A199557 n

end A199557

/-! ## A199557.P14849785050343342300

`record[Δ[A094014(n+1)]+1]`
-/

namespace A199557.P14849785050343342300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094014 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199557.P14849785050343342300

namespace A199557

/-- `record[Δ[A094014(n+1)]+1]` -/
def P14849785050343342300.Spec : Prop :=
  ∀ n, P14849785050343342300.a n = A199557 n

end A199557

/-!
# A199558: a(n) = 11*8^n+1.

The programs for A199558, the canonical program `A199558.P12980048862774474633` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199558 has offset 0).

The definition of A199558 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*8^n+1` (program `A199558.P12980048862774474633`, by `A199558.P12980048862774474633.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199558.P12980048862774474633

`11*8^n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199558

/-- `11*8^n+1` -/
def P12980048862774474633.Spec : Prop :=
  ∀ n, (P12980048862774474633.a n : ℤ) = A199558 n

theorem P12980048862774474633.correct : P12980048862774474633.Spec := by
  intro n
  simp only [A199558]

end A199558

/-! ## A199558.P10107339738460769141

`ogf((12-19x)/(1-9x+8x^2))`
-/

namespace A199558.P10107339738460769141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, -19] [1, -9, 8] n

end

end A199558.P10107339738460769141

namespace A199558

/-- `ogf((12-19x)/(1-9x+8x^2))` -/
def P10107339738460769141.Spec : Prop :=
  ∀ n, P10107339738460769141.a n = A199558 n

end A199558

/-! ## A199558.P15012145633584047608

`-xor(11*8^n, -1)`
-/

namespace A199558.P15012145633584047608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (11 * 8 ^ n : ℤ) (-1)

end

end A199558.P15012145633584047608

namespace A199558

/-- `-xor(11*8^n, -1)` -/
def P15012145633584047608.Spec : Prop :=
  ∀ n, P15012145633584047608.a n = A199558 n

end A199558

/-! ## A199558.P13288268832185878589

`abs(7-8*a(n-1))` with `a(0)=12`
-/

namespace A199558.P13288268832185878589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12] fun n a =>
  |7 - 8 * a (n - 1)|

end

end A199558.P13288268832185878589

namespace A199558

/-- `abs(7-8*a(n-1))` -/
def P13288268832185878589.Spec : Prop :=
  ∀ n, P13288268832185878589.a n = A199558 n

end A199558

/-! ## A199558.P3620388517557334297

`xor(4, 8*a(n-1)-3)` with `a(0)=12`
-/

namespace A199558.P3620388517557334297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12] fun n a =>
  Int.xor 4 (8 * a (n - 1) - 3)

end

end A199558.P3620388517557334297

namespace A199558

/-- `xor(4, 8*a(n-1)-3)` -/
def P3620388517557334297.Spec : Prop :=
  ∀ n, P3620388517557334297.a n = A199558 n

end A199558

/-! ## A199558.P14080393844589971796

`A083683(3*n)`
-/

namespace A199558.P14080393844589971796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083683 (3 * n)

end

end A199558.P14080393844589971796

namespace A199558

/-- `A083683(3*n)` -/
def P14080393844589971796.Spec : Prop :=
  ∀ n, P14080393844589971796.a n = A199558 n

end A199558

/-! ## A199558.P16730890278005579007

`or(A198858(n)+2, n²%3)`
-/

namespace A199558.P16730890278005579007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A198858 n + 2) ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A199558.P16730890278005579007

namespace A199558

/-- `or(A198858(n)+2, n²%3)` -/
def P16730890278005579007.Spec : Prop :=
  ∀ n, P16730890278005579007.a n = A199558 n

end A199558

/-! ## A199558.P16018394469582021297

`record[A083683(Δ[A050187(n)])]`
-/

namespace A199558.P16018394469582021297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050187 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083683 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199558.P16018394469582021297

namespace A199558

/-- `record[A083683(Δ[A050187(n)])]` -/
def P16018394469582021297.Spec : Prop :=
  ∀ n, P16018394469582021297.a n = A199558 n

end A199558

/-! ## A199558.P12528203449895352589

`record[A083683(n)/A010882(n)²]`
-/

namespace A199558.P12528203449895352589
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083683 n : ℚ) / (A010882 n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199558.P12528203449895352589

namespace A199558

/-- `record[A083683(n)/A010882(n)²]` -/
def P12528203449895352589.Spec : Prop :=
  ∀ n, P12528203449895352589.a n = (A199558 n : ℚ)

end A199558

/-! ## A199558.P742924281469102876

`A083683(A008585(n))/gcd(n, n+1)`
-/

namespace A199558.P742924281469102876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083683 (A008585 n).toNat : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A199558.P742924281469102876

namespace A199558

/-- `A083683(A008585(n))/gcd(n, n+1)` -/
def P742924281469102876.Spec : Prop :=
  ∀ n, P742924281469102876.a n = (A199558 n : ℚ)

end A199558

/-!
# A199559: a(n) = 2*9^n + 1.

The programs for A199559, the canonical program `A199559.P4807592450938911336` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199559 has offset 0).

The definition of A199559 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*9^n+1` (program `A199559.P4807592450938911336`, by `A199559.P4807592450938911336.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199559.P4807592450938911336

`2*9^n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199559

/-- `2*9^n+1` -/
def P4807592450938911336.Spec : Prop :=
  ∀ n, (P4807592450938911336.a n : ℤ) = A199559 n

theorem P4807592450938911336.correct : P4807592450938911336.Spec := by
  intro n
  simp only [A199559]

end A199559

/-! ## A199559.P2307401771857314033

`or(1, 2*9^n)`
-/

namespace A199559.P2307401771857314033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * 9 ^ n)

end

end A199559.P2307401771857314033

namespace A199559

/-- `or(1, 2*9^n)` -/
def P2307401771857314033.Spec : Prop :=
  ∀ n, (P2307401771857314033.a n : ℤ) = A199559 n

end A199559

/-! ## A199559.P18422668106732615205

`xor(1, 2*9^n)`
-/

namespace A199559.P18422668106732615205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * 9 ^ n)

end

end A199559.P18422668106732615205

namespace A199559

/-- `xor(1, 2*9^n)` -/
def P18422668106732615205.Spec : Prop :=
  ∀ n, (P18422668106732615205.a n : ℤ) = A199559 n

end A199559

/-! ## A199559.P1148095664319827868

`ogf((3-11x)/(1-10x+9x^2))`
-/

namespace A199559.P1148095664319827868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -11] [1, -10, 9] n

end

end A199559.P1148095664319827868

namespace A199559

/-- `ogf((3-11x)/(1-10x+9x^2))` -/
def P1148095664319827868.Spec : Prop :=
  ∀ n, P1148095664319827868.a n = A199559 n

end A199559

/-! ## A199559.P14673337604496713765

`∑[9*a(n-1)]` with `a(0)=3, a(1)=16`
-/

namespace A199559.P14673337604496713765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 16] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199559.P14673337604496713765

namespace A199559

/-- `∑[9*a(n-1)]` -/
def P14673337604496713765.Spec : Prop :=
  ∀ n, (P14673337604496713765.a n : ℤ) = A199559 n

end A199559

/-! ## A199559.P3358561916762898984

`abs(8-9*a(n-1))` with `a(0)=3`
-/

namespace A199559.P3358561916762898984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  |8 - 9 * a (n - 1)|

end

end A199559.P3358561916762898984

namespace A199559

/-- `abs(8-9*a(n-1))` -/
def P3358561916762898984.Spec : Prop :=
  ∀ n, P3358561916762898984.a n = A199559 n

end A199559

/-! ## A199559.P776862773095045580

`and(9*a(n-1), -9)` with `a(0)=3`
-/

namespace A199559.P776862773095045580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.land (9 * a (n - 1)) (-9)

end

end A199559.P776862773095045580

namespace A199559

/-- `and(9*a(n-1), -9)` -/
def P776862773095045580.Spec : Prop :=
  ∀ n, P776862773095045580.a n = A199559 n

end A199559

/-! ## A199559.P3900778436278496574

`record[4-3*a(n-1)]` with `a(0)=3`
-/

namespace A199559.P3900778436278496574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  4 - 3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199559.P3900778436278496574

namespace A199559

/-- `record[4-3*a(n-1)]` -/
def P3900778436278496574.Spec : Prop :=
  ∀ n, P3900778436278496574.a n = A199559 n

end A199559

/-! ## A199559.P15146262384197562735

`9*(a(n-1)-8/9)` with `a(0)=3`
-/

namespace A199559.P15146262384197562735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  9 * (a (n - 1) - (8 : ℚ) / 9)

end

end A199559.P15146262384197562735

namespace A199559

/-- `9*(a(n-1)-8/9)` -/
def P15146262384197562735.Spec : Prop :=
  ∀ n, P15146262384197562735.a n = (A199559 n : ℚ)

theorem P15146262384197562735.correct : P15146262384197562735.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199559, Nat.add_sub_cancel, A199559.P15146262384197562735.a, A199559.P4807592450938911336.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199559, Nat.add_sub_cancel, A199559.P15146262384197562735.a, A199559.P4807592450938911336.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199559

/-! ## A199559.P16064444668335292818

`floor(a(n-1)+8*(a(n-1)-1))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A199559.P16064444668335292818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 8 * (a (n - 1) - 1)

end

end A199559.P16064444668335292818

namespace A199559

/-- `floor(a(n-1)+8*(a(n-1)-1))` -/
def P16064444668335292818.Spec : Prop :=
  ∀ n, P16064444668335292818.a n = A199559 n

theorem P16064444668335292818.correct : P16064444668335292818.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199559, Nat.add_sub_cancel, A199559.P16064444668335292818.a, A199559.P4807592450938911336.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199559, Nat.add_sub_cancel, A199559.P16064444668335292818.a, A199559.P4807592450938911336.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199559

/-! ## A199559.P4465023791130942903

`floor(a(n-1)-8*(1-a(n-1)))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A199559.P4465023791130942903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) - 8 * (1 - a (n - 1))

end

end A199559.P4465023791130942903

namespace A199559

/-- `floor(a(n-1)-8*(1-a(n-1)))` -/
def P4465023791130942903.Spec : Prop :=
  ∀ n, P4465023791130942903.a n = A199559 n

theorem P4465023791130942903.correct : P4465023791130942903.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199559, Nat.add_sub_cancel, A199559.P4465023791130942903.a, A199559.P4807592450938911336.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199559, Nat.add_sub_cancel, A199559.P4465023791130942903.a, A199559.P4807592450938911336.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199559

/-! ## A199559.P15914471294329387157

`A052919(Δ[n²])`
-/

namespace A199559.P15914471294329387157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052919 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A199559.P15914471294329387157

namespace A199559

/-- `A052919(Δ[n²])` -/
def P15914471294329387157.Spec : Prop :=
  ∀ n, P15914471294329387157.a n = A199559 n

end A199559

/-! ## A199559.P1345429424449318051

`A100702(Δ[n²])`
-/

namespace A199559.P1345429424449318051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100702 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A199559.P1345429424449318051

namespace A199559

/-- `A100702(Δ[n²])` -/
def P1345429424449318051.Spec : Prop :=
  ∀ n, P1345429424449318051.a n = A199559 n

end A199559

/-! ## A199559.P14819002986590011007

`A174132(Δ[n²])`
-/

namespace A199559.P14819002986590011007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174132 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A199559.P14819002986590011007

namespace A199559

/-- `A174132(Δ[n²])` -/
def P14819002986590011007.Spec : Prop :=
  ∀ n, P14819002986590011007.a n = A199559 n

end A199559

/-! ## A199559.P7493252574906097302

`record[Δ[A341463(n)]]`
-/

namespace A199559.P7493252574906097302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341463 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199559.P7493252574906097302

namespace A199559

/-- `record[Δ[A341463(n)]]` -/
def P7493252574906097302.Spec : Prop :=
  ∀ n, P7493252574906097302.a n = A199559 n

end A199559

/-! ## A199559.P9053788365922918883

`ceil(A199562(n)/2)`
-/

namespace A199559.P9053788365922918883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A199562 n : ℚ) / 2⌉

end

end A199559.P9053788365922918883

namespace A199559

/-- `ceil(A199562(n)/2)` -/
def P9053788365922918883.Spec : Prop :=
  ∀ n, P9053788365922918883.a n = A199559 n

end A199559

/-! ## A199559.P12807393158185769965

`Δ[A164039(2*n)]`
-/

namespace A199559.P12807393158185769965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164039 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199559.P12807393158185769965

namespace A199559

/-- `Δ[A164039(2*n)]` -/
def P12807393158185769965.Spec : Prop :=
  ∀ n, P12807393158185769965.a n = A199559 n

end A199559

/-! ## A199559.P3623393095675079839

`(A198961(n)+3)/2`
-/

namespace A199559.P3623393095675079839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198961 n + 3 : ℚ) / 2

end

end A199559.P3623393095675079839

namespace A199559

/-- `(A198961(n)+3)/2` -/
def P3623393095675079839.Spec : Prop :=
  ∀ n, P3623393095675079839.a n = (A199559 n : ℚ)

theorem P3623393095675079839.correct : P3623393095675079839.Spec := by
  intro n
  simp only [A199559, Nat.add_sub_cancel, A199559.P3623393095675079839.a, A199559.P4807592450938911336.a, A198961, A198961.P5310545996620527682.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199559

/-! ## A199559.P6980187038503764354

`record[2-Δ[A076040(n)]]`
-/

namespace A199559.P6980187038503764354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076040 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199559.P6980187038503764354

namespace A199559

/-- `record[2-Δ[A076040(n)]]` -/
def P6980187038503764354.Spec : Prop :=
  ∀ n, P6980187038503764354.a n = A199559 n

end A199559

/-! ## A199559.P6651399814190708877

`abs(1-A115099(2*n))`
-/

namespace A199559.P6651399814190708877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A115099 (2 * n)|

end

end A199559.P6651399814190708877

namespace A199559

/-- `abs(1-A115099(2*n))` -/
def P6651399814190708877.Spec : Prop :=
  ∀ n, P6651399814190708877.a n = A199559 n

end A199559

/-!
# A199560: a(n) = (3*9^n + 1)/2.

The programs for A199560, the canonical program `A199560.P13149101358202543068` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199560 has offset 0).

The definition of A199560 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*9^n+1)/2` (program `A199560.P1811345769927896849`, by `A199560.P1811345769927896849.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199560.P1811345769927896849

`(3*9^n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199560.P1811345769927896849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * 9 ^ n + 1 : ℚ) / 2

end

end A199560.P1811345769927896849

namespace A199560

/-- `(3*9^n+1)/2` -/
def P1811345769927896849.Spec : Prop :=
  ∀ n, P1811345769927896849.a n = (A199560 n : ℚ)

theorem P1811345769927896849.correct : P1811345769927896849.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199560, Nat.add_sub_cancel, A199560.P1811345769927896849.a, A199560.P13149101358202543068.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199560, Nat.add_sub_cancel, A199560.P1811345769927896849.a, A199560.P13149101358202543068.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199560

/-! ## A199560.P13149101358202543068

`9*a(n-1)-4` with `a(0)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199560

/-- `9*a(n-1)-4` -/
def P13149101358202543068.Spec : Prop :=
  ∀ n, P13149101358202543068.a n = A199560 n

theorem P13149101358202543068.correct : P13149101358202543068.Spec := by
  intro n
  simp only [A199560]

end A199560

/-! ## A199560.P6228774375301815486

`2*A066443(n)`
-/

namespace A199560.P6228774375301815486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066443 n

end

end A199560.P6228774375301815486

namespace A199560

/-- `2*A066443(n)` -/
def P6228774375301815486.Spec : Prop :=
  ∀ n, P6228774375301815486.a n = A199560 n

end A199560

/-! ## A199560.P8528025544867745780

`ogf((2-6x)/(1-10x+9x^2))`
-/

namespace A199560.P8528025544867745780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -6] [1, -10, 9] n

end

end A199560.P8528025544867745780

namespace A199560

/-- `ogf((2-6x)/(1-10x+9x^2))` -/
def P8528025544867745780.Spec : Prop :=
  ∀ n, P8528025544867745780.a n = A199560 n

end A199560

/-! ## A199560.P7240222822715620676

`record[∑[2*(-3)^n]]`
-/

namespace A199560.P7240222822715620676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (-3) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199560.P7240222822715620676

namespace A199560

/-- `record[∑[2*(-3)^n]]` -/
def P7240222822715620676.Spec : Prop :=
  ∀ n, P7240222822715620676.a n = A199560 n

end A199560

/-! ## A199560.P10106067982624833739

`lcm(9, a(n-1))-4` with `a(0)=2`
-/

namespace A199560.P10106067982624833739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (Int.lcm 9 (a (n - 1)) : ℤ) - 4

end

end A199560.P10106067982624833739

namespace A199560

/-- `lcm(9, a(n-1))-4` -/
def P10106067982624833739.Spec : Prop :=
  ∀ n, P10106067982624833739.a n = A199560 n

end A199560

/-! ## A199560.P603066210282277499

`round(3^or(1, 2*n)/2)`
-/

namespace A199560.P603066210282277499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 ^ Nat.lor 1 (2 * n) : ℚ) / 2)

end

end A199560.P603066210282277499

namespace A199560

/-- `round(3^or(1, 2*n)/2)` -/
def P603066210282277499.Spec : Prop :=
  ∀ n, P603066210282277499.a n = A199560 n

end A199560

/-! ## A199560.P6788982000245598580

`round(3^xor(1, 2*n)/2)`
-/

namespace A199560.P6788982000245598580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 ^ Nat.xor 1 (2 * n) : ℚ) / 2)

end

end A199560.P6788982000245598580

namespace A199560

/-- `round(3^xor(1, 2*n)/2)` -/
def P6788982000245598580.Spec : Prop :=
  ∀ n, P6788982000245598580.a n = A199560 n

end A199560

/-! ## A199560.P14354972367773662177

`lcm(2, round(3/4*9^n))`
-/

namespace A199560.P14354972367773662177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (SequenceMachineLib.roundAway ((3 : ℚ) / 4 * (9 ^ n : ℚ)))

end

end A199560.P14354972367773662177

namespace A199560

/-- `lcm(2, round(3/4*9^n))` -/
def P14354972367773662177.Spec : Prop :=
  ∀ n, (P14354972367773662177.a n : ℤ) = A199560 n

end A199560

/-! ## A199560.P13313435513378669609

`a(n-1)/(1/3)²-4` with `a(0)=2`
-/

namespace A199560.P13313435513378669609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 2 - 4

end

end A199560.P13313435513378669609

namespace A199560

/-- `a(n-1)/(1/3)²-4` -/
def P13313435513378669609.Spec : Prop :=
  ∀ n, P13313435513378669609.a n = (A199560 n : ℚ)

end A199560

/-! ## A199560.P10185588088085636069

`A096053(n)+1`
-/

namespace A199560.P10185588088085636069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096053 n + 1

end

end A199560.P10185588088085636069

namespace A199560

/-- `A096053(n)+1` -/
def P10185588088085636069.Spec : Prop :=
  ∀ n, P10185588088085636069.a n = A199560 n

end A199560

/-! ## A199560.P1136798110815870563

`A007051(Δ[n²])`
-/

namespace A199560.P1136798110815870563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A199560.P1136798110815870563

namespace A199560

/-- `A007051(Δ[n²])` -/
def P1136798110815870563.Spec : Prop :=
  ∀ n, P1136798110815870563.a n = A199560 n

end A199560

/-! ## A199560.P12027214303303212015

`A152011(Δ[n²])`
-/

namespace A199560.P12027214303303212015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152011 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A199560.P12027214303303212015

namespace A199560

/-- `A152011(Δ[n²])` -/
def P12027214303303212015.Spec : Prop :=
  ∀ n, P12027214303303212015.a n = A199560 n

end A199560

/-! ## A199560.P4759241351175783608

`A341463(Δ[n²])`
-/

namespace A199560.P4759241351175783608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341463 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A199560.P4759241351175783608

namespace A199560

/-- `A341463(Δ[n²])` -/
def P4759241351175783608.Spec : Prop :=
  ∀ n, P4759241351175783608.a n = A199560 n

end A199560

/-! ## A199560.P7837727019159150166

`round(A013708(n)/2)`
-/

namespace A199560.P7837727019159150166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A013708 n : ℚ) / 2)

end

end A199560.P7837727019159150166

namespace A199560

/-- `round(A013708(n)/2)` -/
def P7837727019159150166.Spec : Prop :=
  ∀ n, P7837727019159150166.a n = A199560 n

end A199560

/-! ## A199560.P5507580672921296826

`Δ[A004004(n)]+1`
-/

namespace A199560.P5507580672921296826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A199560.P5507580672921296826

namespace A199560

/-- `Δ[A004004(n)]+1` -/
def P5507580672921296826.Spec : Prop :=
  ∀ n, P5507580672921296826.a n = A199560 n

end A199560

/-! ## A199560.P15200961011614622223

`2*(A054880(n)+1)`
-/

namespace A199560.P15200961011614622223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A054880 n + 1)

end

end A199560.P15200961011614622223

namespace A199560

/-- `2*(A054880(n)+1)` -/
def P15200961011614622223.Spec : Prop :=
  ∀ n, P15200961011614622223.a n = A199560 n

end A199560

/-! ## A199560.P4661910645743714477

`A124302(2*(n+1))`
-/

namespace A199560.P4661910645743714477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 (2 * (n + 1))

end

end A199560.P4661910645743714477

namespace A199560

/-- `A124302(2*(n+1))` -/
def P4661910645743714477.Spec : Prop :=
  ∀ n, P4661910645743714477.a n = A199560 n

end A199560

/-! ## A199560.P17380827666719691809

`A164907(2*n)+1`
-/

namespace A199560.P17380827666719691809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164907 (2 * n) + 1

end

end A199560.P17380827666719691809

namespace A199560

/-- `A164907(2*n)+1` -/
def P17380827666719691809.Spec : Prop :=
  ∀ n, P17380827666719691809.a n = A199560 n

end A199560

/-! ## A199560.P6463051977234014080

`A067771(2*n)-1`
-/

namespace A199560.P6463051977234014080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067771 (2 * n) - 1

end

end A199560.P6463051977234014080

namespace A199560

/-- `A067771(2*n)-1` -/
def P6463051977234014080.Spec : Prop :=
  ∀ n, P6463051977234014080.a n = A199560 n

end A199560

/-!
# A199561: a(n) = 3*9^n + 1.

The programs for A199561, the canonical program `A199561.P14807517762585365042` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199561 has offset 0).

The definition of A199561 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*9^n+1` (program `A199561.P14807517762585365042`, by `A199561.P14807517762585365042.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199561.P14807517762585365042

`3*9^n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199561

/-- `3*9^n+1` -/
def P14807517762585365042.Spec : Prop :=
  ∀ n, (P14807517762585365042.a n : ℤ) = A199561 n

theorem P14807517762585365042.correct : P14807517762585365042.Spec := by
  intro n
  simp only [A199561]

end A199561

/-! ## A199561.P6887362681690978607

`2*A199560(n)`
-/

namespace A199561.P6887362681690978607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199560 n

end

end A199561.P6887362681690978607

namespace A199561

/-- `2*A199560(n)` -/
def P6887362681690978607.Spec : Prop :=
  ∀ n, P6887362681690978607.a n = A199561 n

end A199561

/-! ## A199561.P13903509058877619904

`4*A066443(n)`
-/

namespace A199561.P13903509058877619904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A066443 n

end

end A199561.P13903509058877619904

namespace A199561

/-- `4*A066443(n)` -/
def P13903509058877619904.Spec : Prop :=
  ∀ n, P13903509058877619904.a n = A199561 n

end A199561

/-! ## A199561.P15976186149076181734

`xor(7, 3*9^n)`
-/

namespace A199561.P15976186149076181734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 (3 * 9 ^ n)

end

end A199561.P15976186149076181734

namespace A199561

/-- `xor(7, 3*9^n)` -/
def P15976186149076181734.Spec : Prop :=
  ∀ n, (P15976186149076181734.a n : ℤ) = A199561 n

end A199561

/-! ## A199561.P10557596763656363872

`ogf((4-12x)/(1-10x+9x^2))`
-/

namespace A199561.P10557596763656363872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -12] [1, -10, 9] n

end

end A199561.P10557596763656363872

namespace A199561

/-- `ogf((4-12x)/(1-10x+9x^2))` -/
def P10557596763656363872.Spec : Prop :=
  ∀ n, P10557596763656363872.a n = A199561 n

end A199561

/-! ## A199561.P1998749593656636931

`record[3^xor(1, n)+1]`
-/

namespace A199561.P1998749593656636931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ Nat.xor 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199561.P1998749593656636931

namespace A199561

/-- `record[3^xor(1, n)+1]` -/
def P1998749593656636931.Spec : Prop :=
  ∀ n, (P1998749593656636931.a n : ℤ) = A199561 n

end A199561

/-! ## A199561.P5223400554910147801

`record[∑[4*(-3)^n]]`
-/

namespace A199561.P5223400554910147801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (-3) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199561.P5223400554910147801

namespace A199561

/-- `record[∑[4*(-3)^n]]` -/
def P5223400554910147801.Spec : Prop :=
  ∀ n, P5223400554910147801.a n = A199561 n

end A199561

/-! ## A199561.P769198769347368608

`∑[9*a(n-1)]` with `a(0)=4, a(1)=24`
-/

namespace A199561.P769198769347368608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 24] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199561.P769198769347368608

namespace A199561

/-- `∑[9*a(n-1)]` -/
def P769198769347368608.Spec : Prop :=
  ∀ n, (P769198769347368608.a n : ℤ) = A199561 n

end A199561

/-! ## A199561.P1205406994495852910

`abs(8-9*a(n-1))` with `a(0)=4`
-/

namespace A199561.P1205406994495852910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  |8 - 9 * a (n - 1)|

end

end A199561.P1205406994495852910

namespace A199561

/-- `abs(8-9*a(n-1))` -/
def P1205406994495852910.Spec : Prop :=
  ∀ n, P1205406994495852910.a n = A199561 n

end A199561

/-! ## A199561.P3863866704200486735

`9*(a(n-1)-8/9)` with `a(0)=4`
-/

namespace A199561.P3863866704200486735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  9 * (a (n - 1) - (8 : ℚ) / 9)

end

end A199561.P3863866704200486735

namespace A199561

/-- `9*(a(n-1)-8/9)` -/
def P3863866704200486735.Spec : Prop :=
  ∀ n, P3863866704200486735.a n = (A199561 n : ℚ)

theorem P3863866704200486735.correct : P3863866704200486735.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199561, Nat.add_sub_cancel, A199561.P3863866704200486735.a, A199561.P14807517762585365042.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199561, Nat.add_sub_cancel, A199561.P3863866704200486735.a, A199561.P14807517762585365042.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199561

/-! ## A199561.P11604915345858198361

`floor(a(n-1)+8*(a(n-1)-1))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A199561.P11604915345858198361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + 8 * (a (n - 1) - 1)

end

end A199561.P11604915345858198361

namespace A199561

/-- `floor(a(n-1)+8*(a(n-1)-1))` -/
def P11604915345858198361.Spec : Prop :=
  ∀ n, P11604915345858198361.a n = A199561 n

theorem P11604915345858198361.correct : P11604915345858198361.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199561, Nat.add_sub_cancel, A199561.P11604915345858198361.a, A199561.P14807517762585365042.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199561, Nat.add_sub_cancel, A199561.P11604915345858198361.a, A199561.P14807517762585365042.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199561

/-! ## A199561.P5971912747478517506

`floor(a(n-1)-8*(1-a(n-1)))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A199561.P5971912747478517506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) - 8 * (1 - a (n - 1))

end

end A199561.P5971912747478517506

namespace A199561

/-- `floor(a(n-1)-8*(1-a(n-1)))` -/
def P5971912747478517506.Spec : Prop :=
  ∀ n, P5971912747478517506.a n = A199561 n

theorem P5971912747478517506.correct : P5971912747478517506.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199561, Nat.add_sub_cancel, A199561.P5971912747478517506.a, A199561.P14807517762585365042.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199561, Nat.add_sub_cancel, A199561.P5971912747478517506.a, A199561.P14807517762585365042.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199561

/-! ## A199561.P8621040683835611570

`A034472(Δ[n²])`
-/

namespace A199561.P8621040683835611570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034472 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A199561.P8621040683835611570

namespace A199561

/-- `A034472(Δ[n²])` -/
def P8621040683835611570.Spec : Prop :=
  ∀ n, P8621040683835611570.a n = A199561 n

end A199561

/-! ## A199561.P1783125713607186594

`A103457(Δ[n²])`
-/

namespace A199561.P1783125713607186594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103457 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A199561.P1783125713607186594

namespace A199561

/-- `A103457(Δ[n²])` -/
def P1783125713607186594.Spec : Prop :=
  ∀ n, P1783125713607186594.a n = A199561 n

end A199561

/-! ## A199561.P6288619670979918518

`A105723(Δ[n²])`
-/

namespace A199561.P6288619670979918518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105723 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A199561.P6288619670979918518

namespace A199561

/-- `A105723(Δ[n²])` -/
def P6288619670979918518.Spec : Prop :=
  ∀ n, P6288619670979918518.a n = A199561 n

end A199561

/-! ## A199561.P3975880337790916648

`A336913(Δ[n²])`
-/

namespace A199561.P3975880337790916648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336913 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A199561.P3975880337790916648

namespace A199561

/-- `A336913(Δ[n²])` -/
def P3975880337790916648.Spec : Prop :=
  ∀ n, P3975880337790916648.a n = A199561 n

end A199561

/-! ## A199561.P3225384883768196586

`Δ[A325153(n+1)]`
-/

namespace A199561.P3225384883768196586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199561.P3225384883768196586

namespace A199561

/-- `Δ[A325153(n+1)]` -/
def P3225384883768196586.Spec : Prop :=
  ∀ n, P3225384883768196586.a n = A199561 n

end A199561

/-! ## A199561.P13204829771245735561

`Δ[A183119(2*n)]`
-/

namespace A199561.P13204829771245735561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183119 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199561.P13204829771245735561

namespace A199561

/-- `Δ[A183119(2*n)]` -/
def P13204829771245735561.Spec : Prop :=
  ∀ n, P13204829771245735561.a n = A199561 n

end A199561

/-! ## A199561.P3421907744426982513

`A094388(2*(n+1))`
-/

namespace A199561.P3421907744426982513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 (2 * (n + 1))

end

end A199561.P3421907744426982513

namespace A199561

/-- `A094388(2*(n+1))` -/
def P3421907744426982513.Spec : Prop :=
  ∀ n, P3421907744426982513.a n = A199561 n

end A199561

/-! ## A199561.P582888343442782162

`2*(A096053(n)+1)`
-/

namespace A199561.P582888343442782162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A096053 n + 1)

end

end A199561.P582888343442782162

namespace A199561

/-- `2*(A096053(n)+1)` -/
def P582888343442782162.Spec : Prop :=
  ∀ n, P582888343442782162.a n = A199561 n

end A199561

/-!
# A199562: a(n) = 4*9^n + 1.

The programs for A199562, the canonical program `A199562.P15949006940242913974` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199562 has offset 0).

The definition of A199562 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*9^n+1` (program `A199562.P15949006940242913974`, by `A199562.P15949006940242913974.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199562.P15949006940242913974

`4*9^n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199562

/-- `4*9^n+1` -/
def P15949006940242913974.Spec : Prop :=
  ∀ n, (P15949006940242913974.a n : ℤ) = A199562 n

theorem P15949006940242913974.correct : P15949006940242913974.Spec := by
  intro n
  simp only [A199562]

end A199562

/-! ## A199562.P5031792148945083014

`or(1, 4*9^n)`
-/

namespace A199562.P5031792148945083014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (4 * 9 ^ n)

end

end A199562.P5031792148945083014

namespace A199562

/-- `or(1, 4*9^n)` -/
def P5031792148945083014.Spec : Prop :=
  ∀ n, (P5031792148945083014.a n : ℤ) = A199562 n

end A199562

/-! ## A199562.P5560248530127304549

`xor(1, 4*9^n)`
-/

namespace A199562.P5560248530127304549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (4 * 9 ^ n)

end

end A199562.P5560248530127304549

namespace A199562

/-- `xor(1, 4*9^n)` -/
def P5560248530127304549.Spec : Prop :=
  ∀ n, (P5560248530127304549.a n : ℤ) = A199562 n

end A199562

/-! ## A199562.P16705818287640493648

`ogf((5-13x)/(1-10x+9x^2))`
-/

namespace A199562.P16705818287640493648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -13] [1, -10, 9] n

end

end A199562.P16705818287640493648

namespace A199562

/-- `ogf((5-13x)/(1-10x+9x^2))` -/
def P16705818287640493648.Spec : Prop :=
  ∀ n, P16705818287640493648.a n = A199562 n

end A199562

/-! ## A199562.P1008795799904608940

`record[1-Δ[(-3)^n]]`
-/

namespace A199562.P1008795799904608940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-3) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199562.P1008795799904608940

namespace A199562

/-- `record[1-Δ[(-3)^n]]` -/
def P1008795799904608940.Spec : Prop :=
  ∀ n, P1008795799904608940.a n = A199562 n

end A199562

/-! ## A199562.P12297907856565013967

`abs(8-9*a(n-1))` with `a(0)=5`
-/

namespace A199562.P12297907856565013967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  |8 - 9 * a (n - 1)|

end

end A199562.P12297907856565013967

namespace A199562

/-- `abs(8-9*a(n-1))` -/
def P12297907856565013967.Spec : Prop :=
  ∀ n, P12297907856565013967.a n = A199562 n

end A199562

/-! ## A199562.P1725595781392331609

`and(9*a(n-1), -9)` with `a(0)=5`
-/

namespace A199562.P1725595781392331609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  Int.land (9 * a (n - 1)) (-9)

end

end A199562.P1725595781392331609

namespace A199562

/-- `and(9*a(n-1), -9)` -/
def P1725595781392331609.Spec : Prop :=
  ∀ n, P1725595781392331609.a n = A199562 n

end A199562

/-! ## A199562.P18291925637324295785

`9*(a(n-1)-8/9)` with `a(0)=5`
-/

namespace A199562.P18291925637324295785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  9 * (a (n - 1) - (8 : ℚ) / 9)

end

end A199562.P18291925637324295785

namespace A199562

/-- `9*(a(n-1)-8/9)` -/
def P18291925637324295785.Spec : Prop :=
  ∀ n, P18291925637324295785.a n = (A199562 n : ℚ)

theorem P18291925637324295785.correct : P18291925637324295785.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199562, Nat.add_sub_cancel, A199562.P18291925637324295785.a, A199562.P15949006940242913974.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199562, Nat.add_sub_cancel, A199562.P18291925637324295785.a, A199562.P15949006940242913974.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199562

/-! ## A199562.P8759680355545062298

`floor(a(n-1)+8*(a(n-1)-1))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A199562.P8759680355545062298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + 8 * (a (n - 1) - 1)

end

end A199562.P8759680355545062298

namespace A199562

/-- `floor(a(n-1)+8*(a(n-1)-1))` -/
def P8759680355545062298.Spec : Prop :=
  ∀ n, P8759680355545062298.a n = A199562 n

theorem P8759680355545062298.correct : P8759680355545062298.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199562, Nat.add_sub_cancel, A199562.P8759680355545062298.a, A199562.P15949006940242913974.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199562, Nat.add_sub_cancel, A199562.P8759680355545062298.a, A199562.P15949006940242913974.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199562

/-! ## A199562.P9713678522409913377

`floor(a(n-1)-8*(1-a(n-1)))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A199562.P9713678522409913377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) - 8 * (1 - a (n - 1))

end

end A199562.P9713678522409913377

namespace A199562

/-- `floor(a(n-1)-8*(1-a(n-1)))` -/
def P9713678522409913377.Spec : Prop :=
  ∀ n, P9713678522409913377.a n = A199562 n

theorem P9713678522409913377.correct : P9713678522409913377.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199562, Nat.add_sub_cancel, A199562.P9713678522409913377.a, A199562.P15949006940242913974.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199562, Nat.add_sub_cancel, A199562.P9713678522409913377.a, A199562.P15949006940242913974.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199562

/-! ## A199562.P15434706231700606228

`A199108(2*n)`
-/

namespace A199562.P15434706231700606228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199108 (2 * n)

end

end A199562.P15434706231700606228

namespace A199562

/-- `A199108(2*n)` -/
def P15434706231700606228.Spec : Prop :=
  ∀ n, P15434706231700606228.a n = A199562 n

end A199562

/-! ## A199562.P1174168087401422817

`Δ[A046717(2*n)+n]`
-/

namespace A199562.P1174168087401422817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046717 (2 * n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199562.P1174168087401422817

namespace A199562

/-- `Δ[A046717(2*n)+n]` -/
def P1174168087401422817.Spec : Prop :=
  ∀ n, P1174168087401422817.a n = A199562 n

end A199562

/-! ## A199562.P17059315676905434818

`(lcm(8, 9^n)+2)/2`
-/

namespace A199562.P17059315676905434818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 8 (9 ^ n) + 2 : ℚ) / 2

end

end A199562.P17059315676905434818

namespace A199562

/-- `(lcm(8, 9^n)+2)/2` -/
def P17059315676905434818.Spec : Prop :=
  ∀ n, P17059315676905434818.a n = (A199562 n : ℚ)

end A199562

/-! ## A199562.P11479620508297841471

`(A199677(n)+1)/2`
-/

namespace A199562.P11479620508297841471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199677 n + 1 : ℚ) / 2

end

end A199562.P11479620508297841471

namespace A199562

/-- `(A199677(n)+1)/2` -/
def P11479620508297841471.Spec : Prop :=
  ∀ n, P11479620508297841471.a n = (A199562 n : ℚ)

theorem P11479620508297841471.correct : P11479620508297841471.Spec := by
  intro n
  simp only [A199562, Nat.add_sub_cancel, A199562.P11479620508297841471.a, A199562.P15949006940242913974.a, A199677, A199677.P11037857007133774133.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199562

/-! ## A199562.P14604796092893798462

`(A198966(n)+3)/2`
-/

namespace A199562.P14604796092893798462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198966 n + 3 : ℚ) / 2

end

end A199562.P14604796092893798462

namespace A199562

/-- `(A198966(n)+3)/2` -/
def P14604796092893798462.Spec : Prop :=
  ∀ n, P14604796092893798462.a n = (A199562 n : ℚ)

theorem P14604796092893798462.correct : P14604796092893798462.Spec := by
  intro n
  simp only [A199562, Nat.add_sub_cancel, A199562.P14604796092893798462.a, A199562.P15949006940242913974.a, A198966, A198966.P5227887383977968001.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199562

/-! ## A199562.P10749366721016493415

`(Δ[A226202(n)]+1)/2`
-/

namespace A199562.P10749366721016493415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226202 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1 : ℚ) / 2

end

end A199562.P10749366721016493415

namespace A199562

/-- `(Δ[A226202(n)]+1)/2` -/
def P10749366721016493415.Spec : Prop :=
  ∀ n, P10749366721016493415.a n = (A199562 n : ℚ)

theorem P10749366721016493415.correct : P10749366721016493415.Spec := by
  intro n
  simp only [A199562, Nat.add_sub_cancel, A199562.P10749366721016493415.f1, A199562.P10749366721016493415.a, A199562.P15949006940242913974.a, A226202, A226202.P16555790232483560560.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199562

/-! ## A199562.P10470871667962410702

`(Δ[A001019(n)]+2)/2`
-/

namespace A199562.P10470871667962410702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 2 : ℚ) / 2

end

end A199562.P10470871667962410702

namespace A199562

/-- `(Δ[A001019(n)]+2)/2` -/
def P10470871667962410702.Spec : Prop :=
  ∀ n, P10470871667962410702.a n = (A199562 n : ℚ)

theorem P10470871667962410702.correct : P10470871667962410702.Spec := by
  intro n
  simp only [A199562, Nat.add_sub_cancel, A199562.P10470871667962410702.f1, A199562.P10470871667962410702.a, A199562.P15949006940242913974.a, A001019, A001019.P4632907595368420400.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199562

/-! ## A199562.P5759407979997487357

`Δ[A104743(2*n)/2]`
-/

namespace A199562.P5759407979997487357
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104743 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199562.P5759407979997487357

namespace A199562

/-- `Δ[A104743(2*n)/2]` -/
def P5759407979997487357.Spec : Prop :=
  ∀ n, P5759407979997487357.a n = (A199562 n : ℚ)

end A199562

/-! ## A199562.P2026234904407736124

`(A199111(2*n)+1)/2`
-/

namespace A199562.P2026234904407736124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199111 (2 * n) + 1 : ℚ) / 2

end

end A199562.P2026234904407736124

namespace A199562

/-- `(A199111(2*n)+1)/2` -/
def P2026234904407736124.Spec : Prop :=
  ∀ n, P2026234904407736124.a n = (A199562 n : ℚ)

end A199562

/-! ## A199562.P3735983268351508226

`Δ[A054878(2*n+1)-A111277(2*n)]`
-/

namespace A199562.P3735983268351508226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054878 (2 * n + 1) - A111277 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199562.P3735983268351508226

namespace A199562

/-- `Δ[A054878(2*n+1)-A111277(2*n)]` -/
def P3735983268351508226.Spec : Prop :=
  ∀ n, P3735983268351508226.a n = A199562 n

end A199562

/-!
# A199563: a(n) = 5*9^n + 1.

The programs for A199563, the canonical program `A199563.P9596249538068406411` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199563 has offset 0).

The definition of A199563 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*9^n+1` (program `A199563.P9596249538068406411`, by `A199563.P9596249538068406411.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199563.P9596249538068406411

`5*9^n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199563

/-- `5*9^n+1` -/
def P9596249538068406411.Spec : Prop :=
  ∀ n, (P9596249538068406411.a n : ℤ) = A199563 n

theorem P9596249538068406411.correct : P9596249538068406411.Spec := by
  intro n
  simp only [A199563]

end A199563

/-! ## A199563.P7494515479171367863

`2*A135423(n)`
-/

namespace A199563.P7494515479171367863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135423 n

end

end A199563.P7494515479171367863

namespace A199563

/-- `2*A135423(n)` -/
def P7494515479171367863.Spec : Prop :=
  ∀ n, P7494515479171367863.a n = A199563 n

end A199563

/-! ## A199563.P6394301226570251318

`xor(3, 5*9^n)`
-/

namespace A199563.P6394301226570251318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (5 * 9 ^ n)

end

end A199563.P6394301226570251318

namespace A199563

/-- `xor(3, 5*9^n)` -/
def P6394301226570251318.Spec : Prop :=
  ∀ n, (P6394301226570251318.a n : ℤ) = A199563 n

end A199563

/-! ## A199563.P6783496499270292273

`ogf((6-14x)/(1-10x+9x^2))`
-/

namespace A199563.P6783496499270292273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -14] [1, -10, 9] n

end

end A199563.P6783496499270292273

namespace A199563

/-- `ogf((6-14x)/(1-10x+9x^2))` -/
def P6783496499270292273.Spec : Prop :=
  ∀ n, P6783496499270292273.a n = A199563 n

end A199563

/-! ## A199563.P14918878007078796112

`or(2, 5*9^n-1)`
-/

namespace A199563.P14918878007078796112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((5 * 9 ^ n : ℤ) - 1)

end

end A199563.P14918878007078796112

namespace A199563

/-- `or(2, 5*9^n-1)` -/
def P14918878007078796112.Spec : Prop :=
  ∀ n, P14918878007078796112.a n = A199563 n

end A199563

/-! ## A199563.P3677508089676384119

`abs(8-9*a(n-1))` with `a(0)=6`
-/

namespace A199563.P3677508089676384119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  |8 - 9 * a (n - 1)|

end

end A199563.P3677508089676384119

namespace A199563

/-- `abs(8-9*a(n-1))` -/
def P3677508089676384119.Spec : Prop :=
  ∀ n, P3677508089676384119.a n = A199563 n

end A199563

/-! ## A199563.P1650129412763041718

`record[4-3*a(n-1)]` with `a(0)=6`
-/

namespace A199563.P1650129412763041718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  4 - 3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199563.P1650129412763041718

namespace A199563

/-- `record[4-3*a(n-1)]` -/
def P1650129412763041718.Spec : Prop :=
  ∀ n, P1650129412763041718.a n = A199563 n

end A199563

/-! ## A199563.P11358030306338834092

`9*(a(n-1)-8/9)` with `a(0)=6`
-/

namespace A199563.P11358030306338834092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6] fun n a =>
  9 * (a (n - 1) - (8 : ℚ) / 9)

end

end A199563.P11358030306338834092

namespace A199563

/-- `9*(a(n-1)-8/9)` -/
def P11358030306338834092.Spec : Prop :=
  ∀ n, P11358030306338834092.a n = (A199563 n : ℚ)

theorem P11358030306338834092.correct : P11358030306338834092.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199563, Nat.add_sub_cancel, A199563.P11358030306338834092.a, A199563.P9596249538068406411.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199563, Nat.add_sub_cancel, A199563.P11358030306338834092.a, A199563.P9596249538068406411.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199563

/-! ## A199563.P11900626159117909921

`floor(a(n-1)+8*(a(n-1)-1))` with `a(0)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A199563.P11900626159117909921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + 8 * (a (n - 1) - 1)

end

end A199563.P11900626159117909921

namespace A199563

/-- `floor(a(n-1)+8*(a(n-1)-1))` -/
def P11900626159117909921.Spec : Prop :=
  ∀ n, P11900626159117909921.a n = A199563 n

theorem P11900626159117909921.correct : P11900626159117909921.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199563, Nat.add_sub_cancel, A199563.P11900626159117909921.a, A199563.P9596249538068406411.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199563, Nat.add_sub_cancel, A199563.P11900626159117909921.a, A199563.P9596249538068406411.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199563

/-! ## A199563.P14420292411726360398

`floor(a(n-1)-8*(1-a(n-1)))` with `a(0)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A199563.P14420292411726360398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) - 8 * (1 - a (n - 1))

end

end A199563.P14420292411726360398

namespace A199563

/-- `floor(a(n-1)-8*(1-a(n-1)))` -/
def P14420292411726360398.Spec : Prop :=
  ∀ n, P14420292411726360398.a n = A199563 n

theorem P14420292411726360398.correct : P14420292411726360398.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199563, Nat.add_sub_cancel, A199563.P14420292411726360398.a, A199563.P9596249538068406411.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199563, Nat.add_sub_cancel, A199563.P14420292411726360398.a, A199563.P9596249538068406411.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199563

/-! ## A199563.P16916071693424786999

`Δ[A104522(2*n)]`
-/

namespace A199563.P16916071693424786999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104522 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199563.P16916071693424786999

namespace A199563

/-- `Δ[A104522(2*n)]` -/
def P16916071693424786999.Spec : Prop :=
  ∀ n, P16916071693424786999.a n = A199563 n

end A199563

/-! ## A199563.P9110540055335468123

`2*(A255043(n)+1)`
-/

namespace A199563.P9110540055335468123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A255043 n + 1)

end

end A199563.P9110540055335468123

namespace A199563

/-- `2*(A255043(n)+1)` -/
def P9110540055335468123.Spec : Prop :=
  ∀ n, P9110540055335468123.a n = A199563 n

end A199563

/-! ## A199563.P7211544361952204006

`2*A096019(2*n)`
-/

namespace A199563.P7211544361952204006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096019 (2 * n)

end

end A199563.P7211544361952204006

namespace A199563

/-- `2*A096019(2*n)` -/
def P7211544361952204006.Spec : Prop :=
  ∀ n, P7211544361952204006.a n = A199563 n

end A199563

/-! ## A199563.P5959572227445363332

`2*A057198(Δ[n²])`
-/

namespace A199563.P5959572227445363332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057198 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A199563.P5959572227445363332

namespace A199563

/-- `2*A057198(Δ[n²])` -/
def P5959572227445363332.Spec : Prop :=
  ∀ n, P5959572227445363332.a n = A199563 n

end A199563

/-! ## A199563.P13049622035168421807

`record[A084244(n+1)+1]`
-/

namespace A199563.P13049622035168421807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084244 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199563.P13049622035168421807

namespace A199563

/-- `record[A084244(n+1)+1]` -/
def P13049622035168421807.Spec : Prop :=
  ∀ n, P13049622035168421807.a n = A199563 n

end A199563

/-! ## A199563.P15269479656731094331

`2*(A134931(2*n)+2)`
-/

namespace A199563.P15269479656731094331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A134931 (2 * n) + 2)

end

end A199563.P15269479656731094331

namespace A199563

/-- `2*(A134931(2*n)+2)` -/
def P15269479656731094331.Spec : Prop :=
  ∀ n, P15269479656731094331.a n = A199563 n

end A199563

/-! ## A199563.P16266042228897641333

`2*(A137340(2*n)+2)`
-/

namespace A199563.P16266042228897641333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A137340 (2 * n) + 2)

end

end A199563.P16266042228897641333

namespace A199563

/-- `2*(A137340(2*n)+2)` -/
def P16266042228897641333.Spec : Prop :=
  ∀ n, P16266042228897641333.a n = A199563 n

end A199563

/-! ## A199563.P13339693827727684504

`2*(A060816(2*n+1)+1)`
-/

namespace A199563.P13339693827727684504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A060816 (2 * n + 1) + 1)

end

end A199563.P13339693827727684504

namespace A199563

/-- `2*(A060816(2*n+1)+1)` -/
def P13339693827727684504.Spec : Prop :=
  ∀ n, P13339693827727684504.a n = A199563 n

end A199563

/-! ## A199563.P16725641384176183370

`2*(A321573(2*n+1)+1)`
-/

namespace A199563.P16725641384176183370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A321573 (2 * n + 1) + 1)

end

end A199563.P16725641384176183370

namespace A199563

/-- `2*(A321573(2*n+1)+1)` -/
def P16725641384176183370.Spec : Prop :=
  ∀ n, P16725641384176183370.a n = A199563 n

end A199563

/-! ## A199563.P9180561142347657149

`2*(A008776(n)²-A096053(n))`
-/

namespace A199563.P9180561142347657149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A008776 n ^ 2 - A096053 n)

end

end A199563.P9180561142347657149

namespace A199563

/-- `2*(A008776(n)²-A096053(n))` -/
def P9180561142347657149.Spec : Prop :=
  ∀ n, P9180561142347657149.a n = A199563 n

end A199563

/-!
# A199564: a(n) = 6*9^n+1.

The programs for A199564, the canonical program `A199564.P13221447657266508258` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199564 has offset 0).

The definition of A199564 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*9^n+1` (program `A199564.P13221447657266508258`, by `A199564.P13221447657266508258.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199564.P13221447657266508258

`6*9^n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199564

/-- `6*9^n+1` -/
def P13221447657266508258.Spec : Prop :=
  ∀ n, (P13221447657266508258.a n : ℤ) = A199564 n

theorem P13221447657266508258.correct : P13221447657266508258.Spec := by
  intro n
  simp only [A199564]

end A199564

/-! ## A199564.P4510280410981199987

`or(1, 6*9^n)`
-/

namespace A199564.P4510280410981199987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (6 * 9 ^ n)

end

end A199564.P4510280410981199987

namespace A199564

/-- `or(1, 6*9^n)` -/
def P4510280410981199987.Spec : Prop :=
  ∀ n, (P4510280410981199987.a n : ℤ) = A199564 n

end A199564

/-! ## A199564.P6698057626400879210

`xor(1, 6*9^n)`
-/

namespace A199564.P6698057626400879210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (6 * 9 ^ n)

end

end A199564.P6698057626400879210

namespace A199564

/-- `xor(1, 6*9^n)` -/
def P6698057626400879210.Spec : Prop :=
  ∀ n, (P6698057626400879210.a n : ℤ) = A199564 n

end A199564

/-! ## A199564.P13535288285420688746

`ogf((7-15x)/(1-10x+9x^2))`
-/

namespace A199564.P13535288285420688746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -15] [1, -10, 9] n

end

end A199564.P13535288285420688746

namespace A199564

/-- `ogf((7-15x)/(1-10x+9x^2))` -/
def P13535288285420688746.Spec : Prop :=
  ∀ n, P13535288285420688746.a n = A199564 n

end A199564

/-! ## A199564.P7229874295065007572

`abs(8-9*a(n-1))` with `a(0)=7`
-/

namespace A199564.P7229874295065007572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  |8 - 9 * a (n - 1)|

end

end A199564.P7229874295065007572

namespace A199564

/-- `abs(8-9*a(n-1))` -/
def P7229874295065007572.Spec : Prop :=
  ∀ n, P7229874295065007572.a n = A199564 n

end A199564

/-! ## A199564.P15716940096624458107

`and(9*a(n-1), -9)` with `a(0)=7`
-/

namespace A199564.P15716940096624458107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  Int.land (9 * a (n - 1)) (-9)

end

end A199564.P15716940096624458107

namespace A199564

/-- `and(9*a(n-1), -9)` -/
def P15716940096624458107.Spec : Prop :=
  ∀ n, P15716940096624458107.a n = A199564 n

end A199564

/-! ## A199564.P10539292080124159424

`record[4-3*a(n-1)]` with `a(0)=7`
-/

namespace A199564.P10539292080124159424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  4 - 3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199564.P10539292080124159424

namespace A199564

/-- `record[4-3*a(n-1)]` -/
def P10539292080124159424.Spec : Prop :=
  ∀ n, P10539292080124159424.a n = A199564 n

end A199564

/-! ## A199564.P8727604018337292328

`9*(a(n-1)-8/9)` with `a(0)=7`
-/

namespace A199564.P8727604018337292328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [7] fun n a =>
  9 * (a (n - 1) - (8 : ℚ) / 9)

end

end A199564.P8727604018337292328

namespace A199564

/-- `9*(a(n-1)-8/9)` -/
def P8727604018337292328.Spec : Prop :=
  ∀ n, P8727604018337292328.a n = (A199564 n : ℚ)

theorem P8727604018337292328.correct : P8727604018337292328.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199564, Nat.add_sub_cancel, A199564.P8727604018337292328.a, A199564.P13221447657266508258.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199564, Nat.add_sub_cancel, A199564.P8727604018337292328.a, A199564.P13221447657266508258.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199564

/-! ## A199564.P18032013820907923094

`Δ[record[∑[(-3)^n]]+n+1]`
-/

namespace A199564.P18032013820907923094
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-3) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199564.P18032013820907923094

namespace A199564

/-- `Δ[record[∑[(-3)^n]]+n+1]` -/
def P18032013820907923094.Spec : Prop :=
  ∀ n, P18032013820907923094.a n = A199564 n

end A199564

/-! ## A199564.P18308783486950276033

`floor(a(n-1)+8*(a(n-1)-1))` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A199564.P18308783486950276033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + 8 * (a (n - 1) - 1)

end

end A199564.P18308783486950276033

namespace A199564

/-- `floor(a(n-1)+8*(a(n-1)-1))` -/
def P18308783486950276033.Spec : Prop :=
  ∀ n, P18308783486950276033.a n = A199564 n

theorem P18308783486950276033.correct : P18308783486950276033.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199564, Nat.add_sub_cancel, A199564.P18308783486950276033.a, A199564.P13221447657266508258.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199564, Nat.add_sub_cancel, A199564.P18308783486950276033.a, A199564.P13221447657266508258.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199564

/-! ## A199564.P8339251442633803558

`floor(a(n-1)-8*(1-a(n-1)))` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A199564.P8339251442633803558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) - 8 * (1 - a (n - 1))

end

end A199564.P8339251442633803558

namespace A199564

/-- `floor(a(n-1)-8*(1-a(n-1)))` -/
def P8339251442633803558.Spec : Prop :=
  ∀ n, P8339251442633803558.a n = A199564 n

theorem P8339251442633803558.correct : P8339251442633803558.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199564, Nat.add_sub_cancel, A199564.P8339251442633803558.a, A199564.P13221447657266508258.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199564, Nat.add_sub_cancel, A199564.P8339251442633803558.a, A199564.P13221447657266508258.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199564

/-! ## A199564.P5767453025133364773

`A081632(Δ[n²])`
-/

namespace A199564.P5767453025133364773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081632 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A199564.P5767453025133364773

namespace A199564

/-- `A081632(Δ[n²])` -/
def P5767453025133364773.Spec : Prop :=
  ∀ n, P5767453025133364773.a n = A199564 n

end A199564

/-! ## A199564.P9830973738713254318

`Δ[A047926(2*n)]`
-/

namespace A199564.P9830973738713254318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047926 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199564.P9830973738713254318

namespace A199564

/-- `Δ[A047926(2*n)]` -/
def P9830973738713254318.Spec : Prop :=
  ∀ n, P9830973738713254318.a n = A199564 n

end A199564

/-! ## A199564.P9354585051368602935

`Δ[A338186(n)/2]`
-/

namespace A199564.P9354585051368602935
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338186 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199564.P9354585051368602935

namespace A199564

/-- `Δ[A338186(n)/2]` -/
def P9354585051368602935.Spec : Prop :=
  ∀ n, P9354585051368602935.a n = (A199564 n : ℚ)

end A199564

/-! ## A199564.P14921067066735916136

`Δ[A164039(Δ[n²])]`
-/

namespace A199564.P14921067066735916136
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164039 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199564.P14921067066735916136

namespace A199564

/-- `Δ[A164039(Δ[n²])]` -/
def P14921067066735916136.Spec : Prop :=
  ∀ n, P14921067066735916136.a n = A199564 n

end A199564

/-! ## A199564.P6239975819920330202

`Δ[A243513(Δ[n²])]`
-/

namespace A199564.P6239975819920330202
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243513 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199564.P6239975819920330202

namespace A199564

/-- `Δ[A243513(Δ[n²])]` -/
def P6239975819920330202.Spec : Prop :=
  ∀ n, P6239975819920330202.a n = A199564 n

end A199564

/-! ## A199564.P6436244734034800198

`A052919(2*(n+1))`
-/

namespace A199564.P6436244734034800198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052919 (2 * (n + 1))

end

end A199564.P6436244734034800198

namespace A199564

/-- `A052919(2*(n+1))` -/
def P6436244734034800198.Spec : Prop :=
  ∀ n, P6436244734034800198.a n = A199564 n

end A199564

/-! ## A199564.P4242177639266338110

`A100702(2*(n+1))`
-/

namespace A199564.P4242177639266338110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100702 (2 * (n + 1))

end

end A199564.P4242177639266338110

namespace A199564

/-- `A100702(2*(n+1))` -/
def P4242177639266338110.Spec : Prop :=
  ∀ n, P4242177639266338110.a n = A199564 n

end A199564

/-! ## A199564.P17385163908174864022

`A079003(2*n+3)/2`
-/

namespace A199564.P17385163908174864022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079003 (2 * n + 3) : ℚ) / 2

end

end A199564.P17385163908174864022

namespace A199564

/-- `A079003(2*n+3)/2` -/
def P17385163908174864022.Spec : Prop :=
  ∀ n, P17385163908174864022.a n = (A199564 n : ℚ)

end A199564

/-! ## A199564.P5971283837231690651

`A062547(3*(n+1)+n)`
-/

namespace A199564.P5971283837231690651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062547 (3 * (n + 1) + n)

end

end A199564.P5971283837231690651

namespace A199564

/-- `A062547(3*(n+1)+n)` -/
def P5971283837231690651.Spec : Prop :=
  ∀ n, P5971283837231690651.a n = A199564 n

end A199564

/-!
# A199565: a(n) = (7*9^n + 1)/4.

The programs for A199565, the canonical program `A199565.P11460274149713490024` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199565 has offset 0).

The definition of A199565 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*9^n+1)/4` (program `A199565.P15894864538340848528`, by `A199565.P15894864538340848528.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199565.P11460274149713490024

`9*a(n-1)-2` with `a(0)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199565

/-- `9*a(n-1)-2` -/
def P11460274149713490024.Spec : Prop :=
  ∀ n, P11460274149713490024.a n = A199565 n

theorem P11460274149713490024.correct : P11460274149713490024.Spec := by
  intro n
  simp only [A199565]

end A199565

/-! ## A199565.P14690979159597126410

`2*A187709(n)`
-/

namespace A199565.P14690979159597126410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A187709 n

end

end A199565.P14690979159597126410

namespace A199565

/-- `2*A187709(n)` -/
def P14690979159597126410.Spec : Prop :=
  ∀ n, P14690979159597126410.a n = A199565 n

end A199565

/-! ## A199565.P17035704841151539295

`A199566(n)/2`
-/

namespace A199565.P17035704841151539295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199566 n : ℚ) / 2

end

end A199565.P17035704841151539295

namespace A199565

/-- `A199566(n)/2` -/
def P17035704841151539295.Spec : Prop :=
  ∀ n, P17035704841151539295.a n = (A199565 n : ℚ)

end A199565

/-! ## A199565.P15894864538340848528

`(7*9^n+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199565.P15894864538340848528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * 9 ^ n + 1 : ℚ) / 4

end

end A199565.P15894864538340848528

namespace A199565

/-- `(7*9^n+1)/4` -/
def P15894864538340848528.Spec : Prop :=
  ∀ n, P15894864538340848528.a n = (A199565 n : ℚ)

theorem P15894864538340848528.correct : P15894864538340848528.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199565, Nat.add_sub_cancel, A199565.P15894864538340848528.a, A199565.P11460274149713490024.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199565, Nat.add_sub_cancel, A199565.P15894864538340848528.a, A199565.P11460274149713490024.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199565

/-! ## A199565.P4218170385934832730

`ogf((2-4x)/(1-10x+9x^2))`
-/

namespace A199565.P4218170385934832730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4] [1, -10, 9] n

end

end A199565.P4218170385934832730

namespace A199565

/-- `ogf((2-4x)/(1-10x+9x^2))` -/
def P4218170385934832730.Spec : Prop :=
  ∀ n, P4218170385934832730.a n = A199565 n

end A199565

/-! ## A199565.P6482433223592825354

`lcm(9, a(n-1))-2` with `a(0)=2`
-/

namespace A199565.P6482433223592825354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (Int.lcm 9 (a (n - 1)) : ℤ) - 2

end

end A199565.P6482433223592825354

namespace A199565

/-- `lcm(9, a(n-1))-2` -/
def P6482433223592825354.Spec : Prop :=
  ∀ n, P6482433223592825354.a n = A199565 n

end A199565

/-! ## A199565.P17600657640635804567

`a(n-1)/(1/3)²-2` with `a(0)=2`
-/

namespace A199565.P17600657640635804567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 2 - 2

end

end A199565.P17600657640635804567

namespace A199565

/-- `a(n-1)/(1/3)²-2` -/
def P17600657640635804567.Spec : Prop :=
  ∀ n, P17600657640635804567.a n = (A199565 n : ℚ)

end A199565

/-! ## A199565.P952545621983290979

`A096046(n)+1`
-/

namespace A199565.P952545621983290979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096046 n + 1

end

end A199565.P952545621983290979

namespace A199565

/-- `A096046(n)+1` -/
def P952545621983290979.Spec : Prop :=
  ∀ n, P952545621983290979.a n = A199565 n

end A199565

/-! ## A199565.P9493707674694290872

`∑[2*A270472(n)]`
-/

namespace A199565.P9493707674694290872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A270472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199565.P9493707674694290872

namespace A199565

/-- `∑[2*A270472(n)]` -/
def P9493707674694290872.Spec : Prop :=
  ∀ n, P9493707674694290872.a n = A199565 n

end A199565

/-! ## A199565.P1985991836831646106

`A066443(n)+9^n`
-/

namespace A199565.P1985991836831646106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066443 n + (9 ^ n : ℤ)

end

end A199565.P1985991836831646106

namespace A199565

/-- `A066443(n)+9^n` -/
def P1985991836831646106.Spec : Prop :=
  ∀ n, P1985991836831646106.a n = A199565 n

end A199565

/-! ## A199565.P8081517463585573873

`2*A153774(Δ[n²])`
-/

namespace A199565.P8081517463585573873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153774 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A199565.P8081517463585573873

namespace A199565

/-- `2*A153774(Δ[n²])` -/
def P8081517463585573873.Spec : Prop :=
  ∀ n, P8081517463585573873.a n = A199565 n

end A199565

/-! ## A199565.P3219613115211759001

`∑[2*A141495(2*n)]`
-/

namespace A199565.P3219613115211759001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141495 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199565.P3219613115211759001

namespace A199565

/-- `∑[2*A141495(2*n)]` -/
def P3219613115211759001.Spec : Prop :=
  ∀ n, P3219613115211759001.a n = A199565 n

end A199565

/-! ## A199565.P2222817749151155066

`A307685(2*(n+1))-1`
-/

namespace A199565.P2222817749151155066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307685 (2 * (n + 1)) - 1

end

end A199565.P2222817749151155066

namespace A199565

/-- `A307685(2*(n+1))-1` -/
def P2222817749151155066.Spec : Prop :=
  ∀ n, P2222817749151155066.a n = A199565 n

end A199565

/-! ## A199565.P9984535915476938451

`A108765(2*n)+1+n`
-/

namespace A199565.P9984535915476938451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108765 (2 * n) + 1 + (n : ℤ)

end

end A199565.P9984535915476938451

namespace A199565

/-- `A108765(2*n)+1+n` -/
def P9984535915476938451.Spec : Prop :=
  ∀ n, P9984535915476938451.a n = A199565 n

end A199565

/-! ## A199565.P15394550464314278734

`A103177(2*n)-(n+1)`
-/

namespace A199565.P15394550464314278734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103177 (2 * n) - (n + 1 : ℤ)

end

end A199565.P15394550464314278734

namespace A199565

/-- `A103177(2*n)-(n+1)` -/
def P15394550464314278734.Spec : Prop :=
  ∀ n, P15394550464314278734.a n = A199565 n

end A199565

/-! ## A199565.P5676721885115703584

`(7*A002452(n)+1)*sqrt(2)*sqrt(2)`
-/

namespace A199565.P5676721885115703584
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (7 * A002452 n + 1 : ℝ) * Real.sqrt (2 : ℝ) * Real.sqrt (2 : ℝ)

end

end A199565.P5676721885115703584

namespace A199565

/-- `(7*A002452(n)+1)*sqrt(2)*sqrt(2)` -/
def P5676721885115703584.Spec : Prop :=
  ∀ n, P5676721885115703584.a n = (A199565 n : ℝ)

end A199565

/-! ## A199565.P13002427241529819866

`A198964(n)-A096046(n)`
-/

namespace A199565.P13002427241529819866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198964 n - A096046 n

end

end A199565.P13002427241529819866

namespace A199565

/-- `A198964(n)-A096046(n)` -/
def P13002427241529819866.Spec : Prop :=
  ∀ n, P13002427241529819866.a n = A199565 n

end A199565

/-! ## A199565.P11683716273626550207

`A024101(n)+A066443(n)+1`
-/

namespace A199565.P11683716273626550207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024101 n + (A066443 n + 1)

end

end A199565.P11683716273626550207

namespace A199565

/-- `A024101(n)+A066443(n)+1` -/
def P11683716273626550207.Spec : Prop :=
  ∀ n, P11683716273626550207.a n = A199565 n

end A199565

/-! ## A199565.P2832525631433959603

`A102518(n+1)-A138894(n)`
-/

namespace A199565.P2832525631433959603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102518 (n + 1) - A138894 n

end

end A199565.P2832525631433959603

namespace A199565

/-- `A102518(n+1)-A138894(n)` -/
def P2832525631433959603.Spec : Prop :=
  ∀ n, P2832525631433959603.a n = A199565 n

end A199565

/-! ## A199565.P15415061965661064331

`A125857(n+2)-A191681(n)`
-/

namespace A199565.P15415061965661064331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125857 (n + 2) - A191681 n

end

end A199565.P15415061965661064331

namespace A199565

/-- `A125857(n+2)-A191681(n)` -/
def P15415061965661064331.Spec : Prop :=
  ∀ n, P15415061965661064331.a n = A199565 n

end A199565

/-!
# A199566: a(n) = (7*9^n + 1)/2.

The programs for A199566, the canonical program `A199566.P12774200198098958796` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199566 has offset 0).

The definition of A199566 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*9^n+1)/2` (program `A199566.P16858200812822595347`, by `A199566.P16858200812822595347.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199566.P12774200198098958796

`9*a(n-1)-4` with `a(0)=4`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199566

/-- `9*a(n-1)-4` -/
def P12774200198098958796.Spec : Prop :=
  ∀ n, P12774200198098958796.a n = A199566 n

theorem P12774200198098958796.correct : P12774200198098958796.Spec := by
  intro n
  simp only [A199566]

end A199566

/-! ## A199566.P9379148496750334592

`4*A187709(n)`
-/

namespace A199566.P9379148496750334592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A187709 n

end

end A199566.P9379148496750334592

namespace A199566

/-- `4*A187709(n)` -/
def P9379148496750334592.Spec : Prop :=
  ∀ n, P9379148496750334592.a n = A199566 n

end A199566

/-! ## A199566.P16858200812822595347

`(7*9^n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199566.P16858200812822595347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * 9 ^ n + 1 : ℚ) / 2

end

end A199566.P16858200812822595347

namespace A199566

/-- `(7*9^n+1)/2` -/
def P16858200812822595347.Spec : Prop :=
  ∀ n, P16858200812822595347.a n = (A199566 n : ℚ)

theorem P16858200812822595347.correct : P16858200812822595347.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199566, Nat.add_sub_cancel, A199566.P16858200812822595347.a, A199566.P12774200198098958796.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199566, Nat.add_sub_cancel, A199566.P16858200812822595347.a, A199566.P12774200198098958796.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199566

/-! ## A199566.P2349189279907031390

`ogf((4-8x)/(1-10x+9x^2))`
-/

namespace A199566.P2349189279907031390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -8] [1, -10, 9] n

end

end A199566.P2349189279907031390

namespace A199566

/-- `ogf((4-8x)/(1-10x+9x^2))` -/
def P2349189279907031390.Spec : Prop :=
  ∀ n, P2349189279907031390.a n = A199566 n

end A199566

/-! ## A199566.P14763971220454160113

`lcm(9, a(n-1))-4` with `a(0)=4`
-/

namespace A199566.P14763971220454160113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (Int.lcm 9 (a (n - 1)) : ℤ) - 4

end

end A199566.P14763971220454160113

namespace A199566

/-- `lcm(9, a(n-1))-4` -/
def P14763971220454160113.Spec : Prop :=
  ∀ n, P14763971220454160113.a n = A199566 n

end A199566

/-! ## A199566.P7535733980010192600

`a(n-1)/(1/3)²-4` with `a(0)=4`
-/

namespace A199566.P7535733980010192600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 2 - 4

end

end A199566.P7535733980010192600

namespace A199566

/-- `a(n-1)/(1/3)²-4` -/
def P7535733980010192600.Spec : Prop :=
  ∀ n, P7535733980010192600.a n = (A199566 n : ℚ)

end A199566

/-! ## A199566.P17882408018604213142

`record[2-a(n-1)/cot(atan(3))]` with `a(0)=4`
-/

namespace A199566.P17882408018604213142
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [4] fun n f1 =>
  2 - f1 (n - 1) / Real.cot (Real.arctan (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199566.P17882408018604213142

namespace A199566

/-- `record[2-a(n-1)/cot(atan(3))]` -/
def P17882408018604213142.Spec : Prop :=
  ∀ n, P17882408018604213142.a n = (A199566 n : ℝ)

end A199566

/-! ## A199566.P15903888011813974828

`A198964(n)+1`
-/

namespace A199566.P15903888011813974828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198964 n + 1

end

end A199566.P15903888011813974828

namespace A199566

/-- `A198964(n)+1` -/
def P15903888011813974828.Spec : Prop :=
  ∀ n, P15903888011813974828.a n = A199566 n

end A199566

/-! ## A199566.P10290430131885520122

`A199109(2*n)`
-/

namespace A199566.P10290430131885520122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199109 (2 * n)

end

end A199566.P10290430131885520122

namespace A199566

/-- `A199109(2*n)` -/
def P10290430131885520122.Spec : Prop :=
  ∀ n, P10290430131885520122.a n = A199566 n

end A199566

/-! ## A199566.P12696366721229572508

`2*A199565(n)`
-/

namespace A199566.P12696366721229572508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199565 n

end

end A199566.P12696366721229572508

namespace A199566

/-- `2*A199565(n)` -/
def P12696366721229572508.Spec : Prop :=
  ∀ n, P12696366721229572508.a n = A199566 n

end A199566

/-! ## A199566.P3269927070221048095

`∑[4*A270472(n)]`
-/

namespace A199566.P3269927070221048095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A270472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199566.P3269927070221048095

namespace A199566

/-- `∑[4*A270472(n)]` -/
def P3269927070221048095.Spec : Prop :=
  ∀ n, P3269927070221048095.a n = A199566 n

end A199566

/-! ## A199566.P11735480149977792488

`2*(A096046(n)+1)`
-/

namespace A199566.P11735480149977792488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A096046 n + 1)

end

end A199566.P11735480149977792488

namespace A199566

/-- `2*(A096046(n)+1)` -/
def P11735480149977792488.Spec : Prop :=
  ∀ n, P11735480149977792488.a n = A199566 n

end A199566

/-! ## A199566.P8497945360198650222

`A237930(2*n)+1`
-/

namespace A199566.P8497945360198650222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237930 (2 * n) + 1

end

end A199566.P8497945360198650222

namespace A199566

/-- `A237930(2*n)+1` -/
def P8497945360198650222.Spec : Prop :=
  ∀ n, P8497945360198650222.a n = A199566 n

end A199566

/-! ## A199566.P14043739194448531870

`A116952(2*n)+3`
-/

namespace A199566.P14043739194448531870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116952 (2 * n) + 3

end

end A199566.P14043739194448531870

namespace A199566

/-- `A116952(2*n)+3` -/
def P14043739194448531870.Spec : Prop :=
  ∀ n, P14043739194448531870.a n = A199566 n

end A199566

/-! ## A199566.P5377592141183103645

`7*A191681(n)+4`
-/

namespace A199566.P5377592141183103645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A191681 n + 4

end

end A199566.P5377592141183103645

namespace A199566

/-- `7*A191681(n)+4` -/
def P5377592141183103645.Spec : Prop :=
  ∀ n, P5377592141183103645.a n = A199566 n

end A199566

/-! ## A199566.P2459472079841483158

`4*A153774(2*n+1)`
-/

namespace A199566.P2459472079841483158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A153774 (2 * n + 1)

end

end A199566.P2459472079841483158

namespace A199566

/-- `4*A153774(2*n+1)` -/
def P2459472079841483158.Spec : Prop :=
  ∀ n, P2459472079841483158.a n = A199566 n

end A199566

/-! ## A199566.P15914271915393828321

`A329774(A016933(n))+1`
-/

namespace A199566.P15914271915393828321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329774 (A016933 n).toNat + 1

end

end A199566.P15914271915393828321

namespace A199566

/-- `A329774(A016933(n))+1` -/
def P15914271915393828321.Spec : Prop :=
  ∀ n, P15914271915393828321.a n = A199566 n

end A199566

/-! ## A199566.P14112828653456251066

`A083884(n+1)-A001019(n)`
-/

namespace A199566.P14112828653456251066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083884 (n + 1) - A001019 n

end

end A199566.P14112828653456251066

namespace A199566

/-- `A083884(n+1)-A001019(n)` -/
def P14112828653456251066.Spec : Prop :=
  ∀ n, P14112828653456251066.a n = A199566 n

end A199566

/-! ## A199566.P10708827025695429057

`A067403(n+1)-A096053(n)`
-/

namespace A199566.P10708827025695429057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067403 (n + 1) - A096053 n

end

end A199566.P10708827025695429057

namespace A199566

/-- `A067403(n+1)-A096053(n)` -/
def P10708827025695429057.Spec : Prop :=
  ∀ n, P10708827025695429057.a n = A199566 n

end A199566

/-! ## A199566.P17708901021350477053

`Δ[Δ[A002754(n)]-A002754(n)]`
-/

namespace A199566.P17708901021350477053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002754 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A002754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199566.P17708901021350477053

namespace A199566

/-- `Δ[Δ[A002754(n)]-A002754(n)]` -/
def P17708901021350477053.Spec : Prop :=
  ∀ n, P17708901021350477053.a n = A199566 n

end A199566

/-!
# A199567: a(n) = 7*9^n + 1.

The programs for A199567, the canonical program `A199567.P14843834321366965590` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199567 has offset 0).

The definition of A199567 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*9^n+1` (program `A199567.P14843834321366965590`, by `A199567.P14843834321366965590.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199567.P14843834321366965590

`7*9^n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199567

/-- `7*9^n+1` -/
def P14843834321366965590.Spec : Prop :=
  ∀ n, (P14843834321366965590.a n : ℤ) = A199567 n

theorem P14843834321366965590.correct : P14843834321366965590.Spec := by
  intro n
  simp only [A199567]

end A199567

/-! ## A199567.P15627823564459011935

`2*A199566(n)`
-/

namespace A199567.P15627823564459011935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199566 n

end

end A199567.P15627823564459011935

namespace A199567

/-- `2*A199566(n)` -/
def P15627823564459011935.Spec : Prop :=
  ∀ n, P15627823564459011935.a n = A199567 n

end A199567

/-! ## A199567.P17881446303673062829

`8*A187709(n)`
-/

namespace A199567.P17881446303673062829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A187709 n

end

end A199567.P17881446303673062829

namespace A199567

/-- `8*A187709(n)` -/
def P17881446303673062829.Spec : Prop :=
  ∀ n, P17881446303673062829.a n = A199567 n

end A199567

/-! ## A199567.P75282868877495621

`4*(A096046(n)+1)`
-/

namespace A199567.P75282868877495621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A096046 n + 1)

end

end A199567.P75282868877495621

namespace A199567

/-- `4*(A096046(n)+1)` -/
def P75282868877495621.Spec : Prop :=
  ∀ n, P75282868877495621.a n = A199567 n

end A199567

/-! ## A199567.P16175122185444653873

`ogf((8-16x)/(1-10x+9x^2))`
-/

namespace A199567.P16175122185444653873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -16] [1, -10, 9] n

end

end A199567.P16175122185444653873

namespace A199567

/-- `ogf((8-16x)/(1-10x+9x^2))` -/
def P16175122185444653873.Spec : Prop :=
  ∀ n, P16175122185444653873.a n = A199567 n

end A199567

/-! ## A199567.P4227863433879140961

`abs(8-9*a(n-1))` with `a(0)=8`
-/

namespace A199567.P4227863433879140961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  |8 - 9 * a (n - 1)|

end

end A199567.P4227863433879140961

namespace A199567

/-- `abs(8-9*a(n-1))` -/
def P4227863433879140961.Spec : Prop :=
  ∀ n, P4227863433879140961.a n = A199567 n

end A199567

/-! ## A199567.P6879780520343481741

`record[4-3*a(n-1)]` with `a(0)=8`
-/

namespace A199567.P6879780520343481741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  4 - 3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199567.P6879780520343481741

namespace A199567

/-- `record[4-3*a(n-1)]` -/
def P6879780520343481741.Spec : Prop :=
  ∀ n, P6879780520343481741.a n = A199567 n

end A199567

/-! ## A199567.P14176137310106337077

`9*(a(n-1)-8/9)` with `a(0)=8`
-/

namespace A199567.P14176137310106337077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [8] fun n a =>
  9 * (a (n - 1) - (8 : ℚ) / 9)

end

end A199567.P14176137310106337077

namespace A199567

/-- `9*(a(n-1)-8/9)` -/
def P14176137310106337077.Spec : Prop :=
  ∀ n, P14176137310106337077.a n = (A199567 n : ℚ)

theorem P14176137310106337077.correct : P14176137310106337077.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199567, Nat.add_sub_cancel, A199567.P14176137310106337077.a, A199567.P14843834321366965590.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199567, Nat.add_sub_cancel, A199567.P14176137310106337077.a, A199567.P14843834321366965590.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199567

/-! ## A199567.P12975784581948220155

`8*∑[9*a(n-1)]` with `a(0)=1, a(1)=7`
-/

namespace A199567.P12975784581948220155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199567.P12975784581948220155

namespace A199567

/-- `8*∑[9*a(n-1)]` -/
def P12975784581948220155.Spec : Prop :=
  ∀ n, (P12975784581948220155.a n : ℤ) = A199567 n

end A199567

/-! ## A199567.P14946259856368545322

`xor(3, lcm(9, a(n-1))-5)` with `a(0)=8`
-/

namespace A199567.P14946259856368545322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  Int.xor 3 ((Int.lcm 9 (a (n - 1)) : ℤ) - 5)

end

end A199567.P14946259856368545322

namespace A199567

/-- `xor(3, lcm(9, a(n-1))-5)` -/
def P14946259856368545322.Spec : Prop :=
  ∀ n, P14946259856368545322.a n = A199567 n

end A199567

/-! ## A199567.P12526826002095428965

`xor(3, a(n-1)/(1/3)²-5)` with `a(0)=8`
-/

namespace A199567.P12526826002095428965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  Int.xor 3 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / ((1 : ℚ) / 3) ^ 2 - 5))

end

end A199567.P12526826002095428965

namespace A199567

/-- `xor(3, a(n-1)/(1/3)²-5)` -/
def P12526826002095428965.Spec : Prop :=
  ∀ n, P12526826002095428965.a n = A199567 n

end A199567

/-! ## A199567.P4771994784433858055

`floor(a(n-1)+8*(a(n-1)-1))` with `a(0)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A199567.P4771994784433858055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + 8 * (a (n - 1) - 1)

end

end A199567.P4771994784433858055

namespace A199567

/-- `floor(a(n-1)+8*(a(n-1)-1))` -/
def P4771994784433858055.Spec : Prop :=
  ∀ n, P4771994784433858055.a n = A199567 n

theorem P4771994784433858055.correct : P4771994784433858055.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199567, Nat.add_sub_cancel, A199567.P4771994784433858055.a, A199567.P14843834321366965590.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199567, Nat.add_sub_cancel, A199567.P4771994784433858055.a, A199567.P14843834321366965590.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199567

/-! ## A199567.P7288058103810120578

`floor(a(n-1)-8*(1-a(n-1)))` with `a(0)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A199567.P7288058103810120578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) - 8 * (1 - a (n - 1))

end

end A199567.P7288058103810120578

namespace A199567

/-- `floor(a(n-1)-8*(1-a(n-1)))` -/
def P7288058103810120578.Spec : Prop :=
  ∀ n, P7288058103810120578.a n = A199567 n

theorem P7288058103810120578.correct : P7288058103810120578.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199567, Nat.add_sub_cancel, A199567.P7288058103810120578.a, A199567.P14843834321366965590.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199567, Nat.add_sub_cancel, A199567.P7288058103810120578.a, A199567.P14843834321366965590.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199567

/-! ## A199567.P8226291981848876179

`A199110(2*n)`
-/

namespace A199567.P8226291981848876179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199110 (2 * n)

end

end A199567.P8226291981848876179

namespace A199567

/-- `A199110(2*n)` -/
def P8226291981848876179.Spec : Prop :=
  ∀ n, P8226291981848876179.a n = A199567 n

end A199567

/-! ## A199567.P6024186282265176632

`4*A199565(n)`
-/

namespace A199567.P6024186282265176632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A199565 n

end

end A199567.P6024186282265176632

namespace A199567

/-- `4*A199565(n)` -/
def P6024186282265176632.Spec : Prop :=
  ∀ n, P6024186282265176632.a n = A199567 n

end A199567

/-! ## A199567.P4776841089922390233

`2*(A198964(n)+1)`
-/

namespace A199567.P4776841089922390233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A198964 n + 1)

end

end A199567.P4776841089922390233

namespace A199567

/-- `2*(A198964(n)+1)` -/
def P4776841089922390233.Spec : Prop :=
  ∀ n, P4776841089922390233.a n = A199567 n

end A199567

/-! ## A199567.P17458909986224455122

`2*A199109(2*n)`
-/

namespace A199567.P17458909986224455122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199109 (2 * n)

end

end A199567.P17458909986224455122

namespace A199567

/-- `2*A199109(2*n)` -/
def P17458909986224455122.Spec : Prop :=
  ∀ n, P17458909986224455122.a n = A199567 n

end A199567

/-! ## A199567.P18393610013082681243

`2*(A237930(2*n)+1)`
-/

namespace A199567.P18393610013082681243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A237930 (2 * n) + 1)

end

end A199567.P18393610013082681243

namespace A199567

/-- `2*(A237930(2*n)+1)` -/
def P18393610013082681243.Spec : Prop :=
  ∀ n, P18393610013082681243.a n = A199567 n

end A199567

/-! ## A199567.P9118241747763918700

`2*(A198965(n)/2+1)`
-/

namespace A199567.P9118241747763918700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A198965 n : ℚ) / 2 + 1)

end

end A199567.P9118241747763918700

namespace A199567

/-- `2*(A198965(n)/2+1)` -/
def P9118241747763918700.Spec : Prop :=
  ∀ n, P9118241747763918700.a n = (A199567 n : ℚ)

theorem P9118241747763918700.correct : P9118241747763918700.Spec := by
  intro n
  simp only [A199567, Nat.add_sub_cancel, A199567.P9118241747763918700.a, A199567.P14843834321366965590.a, A198965, A198965.P6618744621263069119.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199567

/-! ## A199567.P14761157143846142150

`8*A153774(2*n+1)`
-/

namespace A199567.P14761157143846142150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A153774 (2 * n + 1)

end

end A199567.P14761157143846142150

namespace A199567

/-- `8*A153774(2*n+1)` -/
def P14761157143846142150.Spec : Prop :=
  ∀ n, P14761157143846142150.a n = A199567 n

end A199567

/-!
# A199569: Expansion 1/(1-x^2*cosech(x)) = Sum_{n>=0} a(n)*x^n/n!^2.

The programs for A199569, there is no canonical definition to state claims against.
-/

/-! ## A199569.P15334799149418975261

`n!*A112232(n!)`
-/

namespace A199569.P15334799149418975261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A112232 (Nat.factorial n)

end

end A199569.P15334799149418975261

/-!
# A199570: Table, each row contains the previous sequence in odd columns and the row number in even columns.

The programs for A199570, there is no canonical definition to state claims against.
-/

/-! ## A199570.P3526591597427730787

`A070939(A136480(A332520(n+1)²))`
-/

namespace A199570.P3526591597427730787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A136480 (A332520 (n + 1) ^ 2).toNat).toNat

end

end A199570.P3526591597427730787

/-! ## A199570.P18266866797796393114

`A316717(A049600(2*n))+A060682(n+2)`
-/

namespace A199570.P18266866797796393114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316717 (A049600 (2 * n)).toNat + A060682 (n + 2)

end

end A199570.P18266866797796393114

/-! ## A199570.P1704002877244817568

`A061358(3*n+4)+A014306(A022176(n))`
-/

namespace A199570.P1704002877244817568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (3 * n + 4) + A014306 (A022176 n).toNat

end

end A199570.P1704002877244817568

/-! ## A199570.P17970834799770502888

`A061358(3*n+4)+A051903(A022174(n))`
-/

namespace A199570.P17970834799770502888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (3 * n + 4) + A051903 (A022174 n).toNat

end

end A199570.P17970834799770502888

/-! ## A199570.P10078171458526162435

`A209229(2^n)+A001222(A051953(n+2))`
-/

namespace A199570.P10078171458526162435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (2 ^ n) + A001222 (A051953 (n + 2)).toNat

end

end A199570.P10078171458526162435

/-!
# A199571: Table version of the array of number of round trips of length L from any of the N vertices of the cycle graph C_N.

The programs for A199571, there is no canonical definition to state claims against.
-/

/-! ## A199571.P7649714845416019139

`and(A006093(A008958(n)), A109189(n))`
-/

namespace A199571.P7649714845416019139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006093 (A008958 n).toNat) (A109189 n)

end

end A199571.P7649714845416019139

/-! ## A199571.P1418966797489162542

`and(A053892(A335975(n)), A109189(n))`
-/

namespace A199571.P1418966797489162542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053892 (A335975 n).toNat) (A109189 n)

end

end A199571.P1418966797489162542

/-! ## A199571.P6727801340634500100

`and(A053892(A335975(n)), A117316(n))`
-/

namespace A199571.P6727801340634500100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053892 (A335975 n).toNat) (A117316 n)

end

end A199571.P6727801340634500100

/-! ## A199571.P9384179194497593244

`and(A109189(n), A204022(A217991(n+1)))`
-/

namespace A199571.P9384179194497593244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A109189 n) (A204022 (A217991 (n + 1)).toNat)

end

end A199571.P9384179194497593244

/-! ## A199571.P5560297043248721549

`and(A000027(A022183(n)), A114283(n))`
-/

namespace A199571.P5560297043248721549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000027 (A022183 n).toNat) (A114283 n)

end

end A199571.P5560297043248721549

/-!
# A199572: Number of round trips of length n on the cycle graph C_2 from any of the two vertices.

The programs for A199572, the canonical program `A199572.P12648206973094290890` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199572 has offset 0).

The definition of A199572 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A199572.P12648206973094290890

`2^(n-1)*(1+(-1)^n)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199572

/-- `2^(n-1)*(1+(-1)^n)` -/
def P12648206973094290890.Spec : Prop :=
  ∀ n, P12648206973094290890.a n = (A199572 n : ℚ)

end A199572

/-! ## A199572.P895027333455452464

`ogf(1/(1-4x^2))`
-/

namespace A199572.P895027333455452464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -4] n

end

end A199572.P895027333455452464

namespace A199572

/-- `ogf(1/(1-4x^2))` -/
def P895027333455452464.Spec : Prop :=
  ∀ n, P895027333455452464.a n = A199572 n

end A199572

/-! ## A199572.P6926148897931737504

`and(2, gcd(2, n))^n`
-/

namespace A199572.P6926148897931737504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (Nat.gcd 2 n) ^ n

end

end A199572.P6926148897931737504

namespace A199572

/-- `and(2, gcd(2, n))^n` -/
def P6926148897931737504.Spec : Prop :=
  ∀ n, (P6926148897931737504.a n : ℤ) = A199572 n

end A199572

/-! ## A199572.P8738459105936945582

`Δ[or(1, -n)]^n`
-/

namespace A199572.P8738459105936945582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ n

end

end A199572.P8738459105936945582

namespace A199572

/-- `Δ[or(1, -n)]^n` -/
def P8738459105936945582.Spec : Prop :=
  ∀ n, P8738459105936945582.a n = A199572 n

end A199572

/-! ## A199572.P3509888251619513965

`ceil(acos(n%2))^n`
-/

namespace A199572.P3509888251619513965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arccos ((n % 2 : ℕ) : ℝ)⌉ ^ n

end

end A199572.P3509888251619513965

namespace A199572

/-- `ceil(acos(n%2))^n` -/
def P3509888251619513965.Spec : Prop :=
  ∀ n, P3509888251619513965.a n = A199572 n

end A199572

/-! ## A199572.P17715412964346270885

`Δ[2^∑[and(1, n)]]²`
-/

namespace A199572.P17715412964346270885
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A199572.P17715412964346270885

namespace A199572

/-- `Δ[2^∑[and(1, n)]]²` -/
def P17715412964346270885.Spec : Prop :=
  ∀ n, P17715412964346270885.a n = A199572 n

end A199572

/-! ## A199572.P8798240200072302462

`∑{p}[or(n, -2), #^n]`
-/

namespace A199572.P8798240200072302462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ n

end

end A199572.P8798240200072302462

namespace A199572

/-- `∑{p}[or(n, -2), #^n]` -/
def P8798240200072302462.Spec : Prop :=
  ∀ n, (P8798240200072302462.a n : ℤ) = A199572 n

end A199572

/-! ## A199572.P6788155557315690665

`(2-gcd(4, 2*n))^n`
-/

namespace A199572.P6788155557315690665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.gcd 4 (2 * n) : ℤ)) ^ n

end

end A199572.P6788155557315690665

namespace A199572

/-- `(2-gcd(4, 2*n))^n` -/
def P6788155557315690665.Spec : Prop :=
  ∀ n, P6788155557315690665.a n = A199572 n

end A199572

/-! ## A199572.P5072266994934452303

`(2-2*and(1, n))^n`
-/

namespace A199572.P5072266994934452303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (2 * Nat.land 1 n : ℤ)) ^ n

end

end A199572.P5072266994934452303

namespace A199572

/-- `(2-2*and(1, n))^n` -/
def P5072266994934452303.Spec : Prop :=
  ∀ n, P5072266994934452303.a n = A199572 n

end A199572

/-! ## A199572.P18422916386177149852

`(xor(1, n-1)-n)^n`
-/

namespace A199572.P18422916386177149852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 ((n : ℤ) - 1) - (n : ℤ)) ^ n

end

end A199572.P18422916386177149852

namespace A199572

/-- `(xor(1, n-1)-n)^n` -/
def P18422916386177149852.Spec : Prop :=
  ∀ n, P18422916386177149852.a n = A199572 n

end A199572

/-! ## A199572.P4561361574378805368

`Δ[2*a(n-2)]²` with `a(0)=1, a(1)=2`
-/

namespace A199572.P4561361574378805368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A199572.P4561361574378805368

namespace A199572

/-- `Δ[2*a(n-2)]²` -/
def P4561361574378805368.Spec : Prop :=
  ∀ n, P4561361574378805368.a n = A199572 n

end A199572

/-! ## A199572.P16659251115192283389

`floor((2/xor(n, n+1))^n)`
-/

namespace A199572.P16659251115192283389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 / (Nat.xor n (n + 1) : ℚ)) ^ n⌋

end

end A199572.P16659251115192283389

namespace A199572

/-- `floor((2/xor(n, n+1))^n)` -/
def P16659251115192283389.Spec : Prop :=
  ∀ n, P16659251115192283389.a n = A199572 n

end A199572

/-! ## A199572.P13913052235606762255

`abs(2*2*a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A199572.P13913052235606762255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  2 * (2 * a (n - 2))

end

end A199572.P13913052235606762255

namespace A199572

/-- `abs(2*2*a(n-2))` -/
def P13913052235606762255.Spec : Prop :=
  ∀ n, (P13913052235606762255.a n : ℤ) = A199572 n

end A199572

/-! ## A199572.P2036287329829332443

`a(n-2)/(1/2)²` with `a(0)=1, a(1)=0`
-/

namespace A199572.P2036287329829332443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) / ((1 : ℚ) / 2) ^ 2

end

end A199572.P2036287329829332443

namespace A199572

/-- `a(n-2)/(1/2)²` -/
def P2036287329829332443.Spec : Prop :=
  ∀ n, P2036287329829332443.a n = (A199572 n : ℚ)

end A199572

/-! ## A199572.P2604666167455804229

`floor(2*2*a(n-2))` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A199572.P2604666167455804229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  2 * (2 * a (n - 2))

end

end A199572.P2604666167455804229

namespace A199572

/-- `floor(2*2*a(n-2))` -/
def P2604666167455804229.Spec : Prop :=
  ∀ n, (P2604666167455804229.a n : ℤ) = A199572 n

end A199572

/-! ## A199572.P9788002472041078914

`ceil(2*2*a(n-2))` with `a(0)=1, a(1)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A199572.P9788002472041078914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  2 * (2 * a (n - 2))

end

end A199572.P9788002472041078914

namespace A199572

/-- `ceil(2*2*a(n-2))` -/
def P9788002472041078914.Spec : Prop :=
  ∀ n, (P9788002472041078914.a n : ℤ) = A199572 n

end A199572

/-! ## A199572.P812756371375521225

`round(2*2*a(n-2))` with `a(0)=1, a(1)=0`

`round` is left out, it is the identity on integers.
-/

namespace A199572.P812756371375521225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  2 * (2 * a (n - 2))

end

end A199572.P812756371375521225

namespace A199572

/-- `round(2*2*a(n-2))` -/
def P812756371375521225.Spec : Prop :=
  ∀ n, (P812756371375521225.a n : ℤ) = A199572 n

end A199572

/-! ## A199572.P13178876783813343260

`floor(2^(n-a(n-1)))` with `a(0)=1, a(1)=0`
-/

namespace A199572.P13178876783813343260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - a (n - 1) : ℤ)⌋

end

end A199572.P13178876783813343260

namespace A199572

/-- `floor(2^(n-a(n-1)))` -/
def P13178876783813343260.Spec : Prop :=
  ∀ n, P13178876783813343260.a n = A199572 n

end A199572

/-! ## A199572.P7094121033042643657

`∑{p}[1-a(n-1), #^n]` with `a(0)=2`
-/

namespace A199572.P7094121033042643657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ n

end

end A199572.P7094121033042643657

namespace A199572

/-- `∑{p}[1-a(n-1), #^n]` -/
def P7094121033042643657.Spec : Prop :=
  ∀ n, (P7094121033042643657.a n : ℤ) = A199572 n

end A199572

/-! ## A199572.P4232435982965900055

`∑{digits}[2-a(n-1), #^n]` with `a(0)=2`
-/

namespace A199572.P4232435982965900055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ n).sum

end

end A199572.P4232435982965900055

namespace A199572

/-- `∑{digits}[2-a(n-1), #^n]` -/
def P4232435982965900055.Spec : Prop :=
  ∀ n, (P4232435982965900055.a n : ℤ) = A199572 n

end A199572

/-!
# A199573: Number of round trips of length n from any of the four vertices of the cycle graph C_4.

The programs for A199573, the canonical program `A199573.P4040027120661682403` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199573 has offset 0).

The definition of A199573 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199573.P7551942741104263127

`ogf((1-2x^2)/(1-4x^2))`
-/

namespace A199573.P7551942741104263127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2] [1, 0, -4] n

end

end A199573.P7551942741104263127

namespace A199573

/-- `ogf((1-2x^2)/(1-4x^2))` -/
def P7551942741104263127.Spec : Prop :=
  ∀ n, P7551942741104263127.a n = A199573 n

end A199573

/-! ## A199573.P4040027120661682403

`4*a(n-2)` with `a(0)=1, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199573

/-- `4*a(n-2)` -/
def P4040027120661682403.Spec : Prop :=
  ∀ n, (P4040027120661682403.a n : ℤ) = A199573 n

theorem P4040027120661682403.correct : P4040027120661682403.Spec := by
  intro n
  simp only [A199573]

end A199573

/-! ## A199573.P8476886557342515041

`round(2^(Δ[lcm(2, n)]-3))`
-/

namespace A199573.P8476886557342515041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 3 : ℤ))

end

end A199573.P8476886557342515041

namespace A199573

/-- `round(2^(Δ[lcm(2, n)]-3))` -/
def P8476886557342515041.Spec : Prop :=
  ∀ n, P8476886557342515041.a n = A199573 n

end A199573

/-! ## A199573.P3947815584676970128

`a(gcd(2, n))^(n-1)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A199573.P3947815584676970128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  a (Nat.gcd 2 n) ^ ((n : ℤ) - 1 : ℤ)

end

end A199573.P3947815584676970128

namespace A199573

/-- `a(gcd(2, n))^(n-1)` -/
def P3947815584676970128.Spec : Prop :=
  ∀ n, P3947815584676970128.a n = (A199573 n : ℚ)

end A199573

/-! ## A199573.P3172250506676854466

`ceil(2^(n-1))*char[2*n]`
-/

namespace A199573.P3172250506676854466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A199573.P3172250506676854466

namespace A199573

/-- `ceil(2^(n-1))*char[2*n]` -/
def P3172250506676854466.Spec : Prop :=
  ∀ n, P3172250506676854466.a n = A199573 n

end A199573

/-! ## A199573.P5307469765737579744

`a(n-2)/(1/2)²` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A199573.P5307469765737579744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  a (n - 2) / ((1 : ℚ) / 2) ^ 2

end

end A199573.P5307469765737579744

namespace A199573

/-- `a(n-2)/(1/2)²` -/
def P5307469765737579744.Spec : Prop :=
  ∀ n, P5307469765737579744.a n = (A199573 n : ℚ)

end A199573

/-! ## A199573.P12059351599796720630

`lcm(2^(n-1), a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A199573.P12059351599796720630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 2) : ℤ)

end

end A199573.P12059351599796720630

namespace A199573

/-- `lcm(2^(n-1), a(n-2))` -/
def P12059351599796720630.Spec : Prop :=
  ∀ n, (P12059351599796720630.a n : ℤ) = A199573 n

end A199573

/-! ## A199573.P6029678742317789849

`ceil(2^(n-1)*and(1, n+1))`
-/

namespace A199573.P6029678742317789849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.land 1 (n + 1) : ℚ)⌉

end

end A199573.P6029678742317789849

namespace A199573

/-- `ceil(2^(n-1)*and(1, n+1))` -/
def P6029678742317789849.Spec : Prop :=
  ∀ n, P6029678742317789849.a n = A199573 n

end A199573

/-! ## A199573.P6349155826060311804

`round(2^(n-1)*and(1, n+1))`
-/

namespace A199573.P6349155826060311804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.land 1 (n + 1) : ℚ))

end

end A199573.P6349155826060311804

namespace A199573

/-- `round(2^(n-1)*and(1, n+1))` -/
def P6349155826060311804.Spec : Prop :=
  ∀ n, P6349155826060311804.a n = A199573 n

end A199573

/-! ## A199573.P6105110772006282542

`lcm(n%2-1, ceil(2^(n-1)))`
-/

namespace A199573.P6105110772006282542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((n % 2 : ℕ) : ℤ) - 1) ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A199573.P6105110772006282542

namespace A199573

/-- `lcm(n%2-1, ceil(2^(n-1)))` -/
def P6105110772006282542.Spec : Prop :=
  ∀ n, (P6105110772006282542.a n : ℤ) = A199573 n

end A199573

/-! ## A199573.P7016477101224507903

`and(a(n-1)-1, 2^(n-1))` with `a(0)=1`
-/

namespace A199573.P7016477101224507903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (a (n - 1) - 1) (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)))

end

end A199573.P7016477101224507903

namespace A199573

/-- `and(a(n-1)-1, 2^(n-1))` -/
def P7016477101224507903.Spec : Prop :=
  ∀ n, P7016477101224507903.a n = A199573 n

end A199573

/-! ## A199573.P1253203510982108444

`floor(a(n-2)/(1-3/4))` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A199573.P1253203510982108444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  ⌊(a (n - 2) : ℚ) / (1 - (3 : ℚ) / 4)⌋

end

end A199573.P1253203510982108444

namespace A199573

/-- `floor(a(n-2)/(1-3/4))` -/
def P1253203510982108444.Spec : Prop :=
  ∀ n, P1253203510982108444.a n = A199573 n

end A199573

/-! ## A199573.P13924125222705518935

`a(n-2)+a(n-2)+a(n-2)+a(n-2)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A199573.P13924125222705518935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 2) + a (n - 2)))

end

end A199573.P13924125222705518935

namespace A199573

/-- `a(n-2)+a(n-2)+a(n-2)+a(n-2)` -/
def P13924125222705518935.Spec : Prop :=
  ∀ n, (P13924125222705518935.a n : ℤ) = A199573 n

theorem P13924125222705518935.correct : P13924125222705518935.Spec := by
  intro n
  simp only [A199573, Nat.add_sub_cancel, A199573.P13924125222705518935.a, A199573.P4040027120661682403.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A199573

/-! ## A199573.P9073743015912478127

`ceil(A077957(n)²/2)`
-/

namespace A199573.P9073743015912478127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077957 n ^ 2 : ℚ) / 2⌉

end

end A199573.P9073743015912478127

namespace A199573

/-- `ceil(A077957(n)²/2)` -/
def P9073743015912478127.Spec : Prop :=
  ∀ n, P9073743015912478127.a n = A199573 n

end A199573

/-! ## A199573.P3672613968872379457

`lcm(2, A077966(n)²)/2`
-/

namespace A199573.P3672613968872379457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A077966 n ^ 2) : ℚ) / 2

end

end A199573.P3672613968872379457

namespace A199573

/-- `lcm(2, A077966(n)²)/2` -/
def P3672613968872379457.Spec : Prop :=
  ∀ n, P3672613968872379457.a n = (A199573 n : ℚ)

end A199573

/-! ## A199573.P3538186060593637977

`ceil(A131575(n+1)²/2)`
-/

namespace A199573.P3538186060593637977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131575 (n + 1) ^ 2 : ℚ) / 2⌉

end

end A199573.P3538186060593637977

namespace A199573

/-- `ceil(A131575(n+1)²/2)` -/
def P3538186060593637977.Spec : Prop :=
  ∀ n, P3538186060593637977.a n = A199573 n

end A199573

/-! ## A199573.P14054094946535059788

`ceil(Δ[A051032(n+1)]²/2)`
-/

namespace A199573.P14054094946535059788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((f1 (n + 1) - f1 n) ^ 2 : ℚ) / 2⌉

end

end A199573.P14054094946535059788

namespace A199573

/-- `ceil(Δ[A051032(n+1)]²/2)` -/
def P14054094946535059788.Spec : Prop :=
  ∀ n, P14054094946535059788.a n = A199573 n

end A199573

/-! ## A199573.P3259026799122641339

`A158302(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A199573.P3259026799122641339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A158302 (n - 1) - a (n - 1)

end

end A199573.P3259026799122641339

namespace A199573

/-- `A158302(n-1)-a(n-1)` -/
def P3259026799122641339.Spec : Prop :=
  ∀ n, P3259026799122641339.a n = A199573 n

end A199573

/-! ## A199573.P1131576151873525937

`a(A020639(n-2))^(n-1)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A199573.P1131576151873525937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  a (A020639 (n - 2)).toNat ^ ((n : ℤ) - 1 : ℤ)

end

end A199573.P1131576151873525937

namespace A199573

/-- `a(A020639(n-2))^(n-1)` -/
def P1131576151873525937.Spec : Prop :=
  ∀ n, P1131576151873525937.a n = (A199573 n : ℚ)

end A199573

/-! ## A199573.P8432712548686346610

`A117902(A032766(n))`
-/

namespace A199573.P8432712548686346610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117902 (A032766 n).toNat

end

end A199573.P8432712548686346610

namespace A199573

/-- `A117902(A032766(n))` -/
def P8432712548686346610.Spec : Prop :=
  ∀ n, P8432712548686346610.a n = A199573 n

end A199573

/-!
# A199574: The number of simple labeled graphs on n nodes where two such graphs are considered equivalent iff one can be obtained from the other by reversing the labeling.

The programs for A199574, there is no canonical definition to state claims against.
-/

/-! ## A199574.P6147259857246096828

`A007582(A002620(n))*A060546(n)`
-/

namespace A199574.P6147259857246096828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 (A002620 n).toNat * A060546 n

end

end A199574.P6147259857246096828

/-! ## A199574.P14193227165212130435

`A005418(A061925(n))*A016116(n)`
-/

namespace A199574.P14193227165212130435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (A061925 n).toNat * A016116 n

end

end A199574.P14193227165212130435

/-! ## A199574.P4211919636705760170

`A007582(A002620(n))*A016116(n+1)`
-/

namespace A199574.P4211919636705760170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 (A002620 n).toNat * A016116 (n + 1)

end

end A199574.P4211919636705760170

/-! ## A199574.P560641187326113639

`A005418(A004526(n²)+1)*A016116(n+1)`
-/

namespace A199574.P560641187326113639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (A004526 (n ^ 2) + 1).toNat * A016116 (n + 1)

end

end A199574.P560641187326113639

/-! ## A199574.P13312614774260956027

`A131577(A000217(n))+A011782(A076921(n+1))`
-/

namespace A199574.P13312614774260956027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A000217 n).toNat + A011782 (A076921 (n + 1)).toNat

end

end A199574.P13312614774260956027

/-!
# A199575: a(n) = floor(Fibonacci(n)^(1/4)).

The programs for A199575, the canonical program `A199575.P16111649686960997552` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199575 has offset 0).

The definition of A199575 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 959 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199575.P16111649686960997552

`floor(sqrt(A061287(n)))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A199575

/-- `floor(sqrt(A061287(n)))` -/
def P16111649686960997552.Spec : Prop :=
  ∀ n, P16111649686960997552.a n = A199575 n

theorem P16111649686960997552.correct : P16111649686960997552.Spec := by
  intro n
  simp only [A199575]

end A199575

/-! ## A199575.P13874654384189980374

`floor(sqrt(sqrt(A000045(n))))`
-/

namespace A199575.P13874654384189980374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A000045 n : ℝ))⌋

end

end A199575.P13874654384189980374

namespace A199575

/-- `floor(sqrt(sqrt(A000045(n))))` -/
def P13874654384189980374.Spec : Prop :=
  ∀ n, P13874654384189980374.a n = A199575 n

end A199575

/-! ## A199575.P16521780015570102004

`floor(sqrt(sqrt(A212804(n+1))))`
-/

namespace A199575.P16521780015570102004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A212804 (n + 1) : ℝ))⌋

end

end A199575.P16521780015570102004

namespace A199575

/-- `floor(sqrt(sqrt(A212804(n+1))))` -/
def P16521780015570102004.Spec : Prop :=
  ∀ n, P16521780015570102004.a n = A199575 n

end A199575

/-! ## A199575.P16525130027873751851

`floor(sqrt(sqrt(A001611(n)-1)))`
-/

namespace A199575.P16525130027873751851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A001611 n - 1 : ℝ))⌋

end

end A199575.P16525130027873751851

namespace A199575

/-- `floor(sqrt(sqrt(A001611(n)-1)))` -/
def P16525130027873751851.Spec : Prop :=
  ∀ n, P16525130027873751851.a n = A199575 n

end A199575

/-! ## A199575.P9513366807085822089

`floor(sqrt(sqrt(A157725(n)-2)))`
-/

namespace A199575.P9513366807085822089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A157725 n - 2 : ℝ))⌋

end

end A199575.P9513366807085822089

namespace A199575

/-- `floor(sqrt(sqrt(A157725(n)-2)))` -/
def P9513366807085822089.Spec : Prop :=
  ∀ n, P9513366807085822089.a n = A199575 n

end A199575

/-! ## A199575.P7886661223748739067

`floor(sqrt(sqrt(A103609(2*n))))`
-/

namespace A199575.P7886661223748739067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A103609 (2 * n) : ℝ))⌋

end

end A199575.P7886661223748739067

namespace A199575

/-- `floor(sqrt(sqrt(A103609(2*n))))` -/
def P7886661223748739067.Spec : Prop :=
  ∀ n, P7886661223748739067.a n = A199575 n

end A199575

/-! ## A199575.P12914653052262361115

`floor(sqrt(sqrt(A065220(n)+n)))`
-/

namespace A199575.P12914653052262361115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A065220 n + (n : ℤ) : ℝ))⌋

end

end A199575.P12914653052262361115

namespace A199575

/-- `floor(sqrt(sqrt(A065220(n)+n)))` -/
def P12914653052262361115.Spec : Prop :=
  ∀ n, P12914653052262361115.a n = A199575 n

end A199575

/-! ## A199575.P13456027892127790607

`floor(sqrt(sqrt(A002062(n)-n)))`
-/

namespace A199575.P13456027892127790607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A002062 n - (n : ℤ) : ℝ))⌋

end

end A199575.P13456027892127790607

namespace A199575

/-- `floor(sqrt(sqrt(A002062(n)-n)))` -/
def P13456027892127790607.Spec : Prop :=
  ∀ n, P13456027892127790607.a n = A199575 n

end A199575

/-! ## A199575.P15452723425555928174

`floor(sqrt(sqrt(A160536(n)-n²)))`
-/

namespace A199575.P15452723425555928174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A160536 n - (n ^ 2 : ℤ) : ℝ))⌋

end

end A199575.P15452723425555928174

namespace A199575

/-- `floor(sqrt(sqrt(A160536(n)-n²)))` -/
def P15452723425555928174.Spec : Prop :=
  ∀ n, P15452723425555928174.a n = A199575 n

end A199575

/-! ## A199575.P4124553626492397341

`floor(sqrt(sqrt(A129982(2*n+1))))`
-/

namespace A199575.P4124553626492397341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A129982 (2 * n + 1) : ℝ))⌋

end

end A199575.P4124553626492397341

namespace A199575

/-- `floor(sqrt(sqrt(A129982(2*n+1))))` -/
def P4124553626492397341.Spec : Prop :=
  ∀ n, P4124553626492397341.a n = A199575 n

end A199575

/-! ## A199575.P17296005805293204565

`floor(sqrt(sqrt(A053602(2*n))))`
-/

namespace A199575.P17296005805293204565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A053602 (2 * n) : ℝ))⌋

end

end A199575.P17296005805293204565

namespace A199575

/-- `floor(sqrt(sqrt(A053602(2*n))))` -/
def P17296005805293204565.Spec : Prop :=
  ∀ n, P17296005805293204565.a n = A199575 n

end A199575

/-! ## A199575.P4517757980756326225

`floor(sqrt(sqrt(A302126(2*n))))`
-/

namespace A199575.P4517757980756326225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A302126 (2 * n) : ℝ))⌋

end

end A199575.P4517757980756326225

namespace A199575

/-- `floor(sqrt(sqrt(A302126(2*n))))` -/
def P4517757980756326225.Spec : Prop :=
  ∀ n, P4517757980756326225.a n = A199575 n

end A199575

/-! ## A199575.P15454180410705333408

`floor(sqrt(sqrt(A303427(2*n+1))))`
-/

namespace A199575.P15454180410705333408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A303427 (2 * n + 1) : ℝ))⌋

end

end A199575.P15454180410705333408

namespace A199575

/-- `floor(sqrt(sqrt(A303427(2*n+1))))` -/
def P15454180410705333408.Spec : Prop :=
  ∀ n, P15454180410705333408.a n = A199575 n

end A199575

/-! ## A199575.P2267443459478334734

`floor(sqrt(sqrt(A022087(n))/2))`
-/

namespace A199575.P2267443459478334734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A022087 n : ℝ) / 2)⌋

end

end A199575.P2267443459478334734

namespace A199575

/-- `floor(sqrt(sqrt(A022087(n))/2))` -/
def P2267443459478334734.Spec : Prop :=
  ∀ n, P2267443459478334734.a n = A199575 n

end A199575

/-! ## A199575.P10647373969195187199

`floor(sqrt(sqrt(A022086(n)/3)))`
-/

namespace A199575.P10647373969195187199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt ((A022086 n : ℚ) / 3 : ℝ))⌋

end

end A199575.P10647373969195187199

namespace A199575

/-- `floor(sqrt(sqrt(A022086(n)/3)))` -/
def P10647373969195187199.Spec : Prop :=
  ∀ n, P10647373969195187199.a n = A199575 n

end A199575

/-!
# A199576: E.g.f. satisfies: A(x) = 1 + Sum_{n>=1} 2*cosh(n*x) * (x*A(x))^(n^2).

The programs for A199576, there is no canonical definition to state claims against.
-/

/-! ## A199576.P115859172568463292

`n!*A057580(n)`
-/

namespace A199576.P115859172568463292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A057580 n

end

end A199576.P115859172568463292

/-!
# A199578: Row sums of coefficient triangle of the monic associated Laguerre polynomials of order 1.

The programs for A199578, there is no canonical definition to state claims against.
-/

/-! ## A199578.P3624895274779771924

`A056919(2*(n+1))`
-/

namespace A199578.P3624895274779771924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056919 (2 * (n + 1))

end

end A199578.P3624895274779771924

/-!
# A199579: Average number of round trips of length n on the Laguerre graph L_4.

The programs for A199579, there is no canonical definition to state claims against.
-/

/-! ## A199579.P8225670855325508409

`A201198(∑[n+3]+6)`
-/

namespace A199579.P8225670855325508409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201198 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A199579.P8225670855325508409

/-!
# A199581: Central terms of the triangle in A199333: a(n) = A199333(2*n,n).

The programs for A199581, there is no canonical definition to state claims against.
-/

/-! ## A199581.P7101570298144041779

`A199582(2*n)`
-/

namespace A199581.P7101570298144041779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199582 (2 * n)

end

end A199581.P7101570298144041779

/-! ## A199581.P5213676824993675159

`A199333(∑[4*n])`
-/

namespace A199581.P5213676824993675159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199333 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199581.P5213676824993675159

/-! ## A199581.P2133242870272715359

`record[A199582(and(n, n+1))]`
-/

namespace A199581.P2133242870272715359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199582 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199581.P2133242870272715359

/-! ## A199581.P6995416167186024650

`record[A199582(xor(1, n)%(n+1))]`
-/

namespace A199581.P6995416167186024650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199582 (Nat.xor 1 n % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199581.P6995416167186024650

/-! ## A199581.P3506588116708083683

`record[A199582(A006369(n)+1)]`
-/

namespace A199581.P3506588116708083683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199582 (A006369 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199581.P3506588116708083683

/-! ## A199581.P15551553354122546419

`record[A199333(n*A008619(n))]`
-/

namespace A199581.P15551553354122546419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199333 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199581.P15551553354122546419

/-!
# A199582: Central terms of the triangle in A199333: a(n) = A199333(n,[n/2]).

The programs for A199582, there is no canonical definition to state claims against.
-/

/-! ## A199582.P13103941956306875556

`A199333(floor(n²/2)+n)`
-/

namespace A199582.P13103941956306875556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199333 (⌊(n ^ 2 : ℚ) / 2⌋ + (n : ℤ)).toNat

end

end A199582.P13103941956306875556

/-! ## A199582.P4530147015433222041

`A199333(A156324(n+1))%A117880(n+1)`
-/

namespace A199582.P4530147015433222041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199333 (A156324 (n + 1)).toNat) (A117880 (n + 1))

end

end A199582.P4530147015433222041

/-! ## A199582.P4184531916895125278

`A199333(A156324(n+1))%A290183(n)`
-/

namespace A199582.P4184531916895125278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199333 (A156324 (n + 1)).toNat) (A290183 n)

end

end A199582.P4184531916895125278

/-! ## A199582.P1295307516086863721

`A129759(A036767(n))`
-/

namespace A199582.P1295307516086863721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129759 (A036767 n).toNat

end

end A199582.P1295307516086863721

/-! ## A199582.P6353178918697371157

`A129759(A054392(n))`
-/

namespace A199582.P6353178918697371157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129759 (A054392 n).toNat

end

end A199582.P6353178918697371157

/-!
# A199584: Number of n X 2 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and every element equal to at least one horizontal or vertical neighbor.

The programs for A199584, there is no canonical definition to state claims against.
-/

/-! ## A199584.P15110492415024869698

`A199588(∑[n+1]+2)`
-/

namespace A199584.P15110492415024869698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199588 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A199584.P15110492415024869698

/-! ## A199584.P7031095314760303578

`A317312(A199588(∑[n+2]))`
-/

namespace A199584.P7031095314760303578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317312 (A199588 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A199584.P7031095314760303578

/-! ## A199584.P8914597748565341543

`A324878(A042843(n)+1)+A199359(n+1)`
-/

namespace A199584.P8914597748565341543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324878 (A042843 n + 1).toNat + A199359 (n + 1)

end

end A199584.P8914597748565341543

/-!
# A199585: Number of nX3 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and every element equal to at least one horizontal or vertical neighbor.

The programs for A199585, there is no canonical definition to state claims against.
-/

/-! ## A199585.P13572770466278225834

`A199588(∑[n+2]+4)`
-/

namespace A199585.P13572770466278225834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199588 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A199585.P13572770466278225834

/-! ## A199585.P4766261184224706336

`A199588(A167614(n+1))+floor(n/10)`
-/

namespace A199585.P4766261184224706336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199588 (A167614 (n + 1)).toNat + ⌊(n : ℚ) / 10⌋

end

end A199585.P4766261184224706336

/-! ## A199585.P4693651390579913017

`A199588(A167614(n+1))%A215242(n)`
-/

namespace A199585.P4693651390579913017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199588 (A167614 (n + 1)).toNat) (A215242 n)

end

end A199585.P4693651390579913017

/-! ## A199585.P35634901393801001

`or(A011731(n), A199588(A167614(n+1)))`
-/

namespace A199585.P35634901393801001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011731 n) (A199588 (A167614 (n + 1)).toNat)

end

end A199585.P35634901393801001

/-! ## A199585.P737765917802426644

`or(A025444(n), A199588(A167614(n+1)))`
-/

namespace A199585.P737765917802426644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025444 n) (A199588 (A167614 (n + 1)).toNat)

end

end A199585.P737765917802426644

/-!
# A199586: Number of nX4 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and every element equal to at least one horizontal or vertical neighbor.

The programs for A199586, there is no canonical definition to state claims against.
-/

/-! ## A199586.P1009564559073314514

`A267904(n+1)/6`
-/

namespace A199586.P1009564559073314514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267904 (n + 1) : ℚ) / 6

end

end A199586.P1009564559073314514

/-! ## A199586.P14126725614932840254

`round(A267904(A199343(n))/6)`
-/

namespace A199586.P14126725614932840254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A267904 (A199343 n).toNat : ℚ) / 6)

end

end A199586.P14126725614932840254

/-! ## A199586.P13455396827446827496

`A199588(∑[n+2]+n+8)`
-/

namespace A199586.P13455396827446827496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199588 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 8))

end

end A199586.P13455396827446827496

/-! ## A199586.P17637462190973572768

`record[A010054(n+1)*A199588(n+5)]`
-/

namespace A199586.P17637462190973572768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A199588 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199586.P17637462190973572768

/-!
# A199587: Number of n X 5 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and every element equal to at least one horizontal or vertical neighbor.

The programs for A199587, there is no canonical definition to state claims against.
-/

/-! ## A199587.P8689186684939988313

`A199588(∑[n+5]+6)`
-/

namespace A199587.P8689186684939988313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199588 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A199587.P8689186684939988313

/-!
# A199591: Generalized Fermat numbers: 5^(2^n) + 1, n >= 0.

The programs for A199591, the canonical program `A199591.P10564141459443110223` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199591 has offset 0).

The definition of A199591 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^2^n+1` (program `A199591.P10564141459443110223`, by `A199591.P10564141459443110223.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199591.P10564141459443110223

`5^2^n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199591

/-- `5^2^n+1` -/
def P10564141459443110223.Spec : Prop :=
  ∀ n, (P10564141459443110223.a n : ℤ) = A199591 n

theorem P10564141459443110223.correct : P10564141459443110223.Spec := by
  intro n
  simp only [A199591]

end A199591

/-! ## A199591.P10270291219202459370

`xor(3, 5^2^n)`
-/

namespace A199591.P10270291219202459370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (5 ^ 2 ^ n)

end

end A199591.P10270291219202459370

namespace A199591

/-- `xor(3, 5^2^n)` -/
def P10270291219202459370.Spec : Prop :=
  ∀ n, (P10270291219202459370.a n : ℤ) = A199591 n

end A199591

/-! ## A199591.P8065170094382623426

`A034474(2^n)`
-/

namespace A199591.P8065170094382623426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034474 (2 ^ n)

end

end A199591.P8065170094382623426

namespace A199591

/-- `A034474(2^n)` -/
def P8065170094382623426.Spec : Prop :=
  ∀ n, P8065170094382623426.a n = A199591 n

end A199591

/-! ## A199591.P5545856533356506733

`A055237(A007582(n))`
-/

namespace A199591.P5545856533356506733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055237 (A007582 n).toNat

end

end A199591.P5545856533356506733

namespace A199591

/-- `A055237(A007582(n))` -/
def P5545856533356506733.Spec : Prop :=
  ∀ n, P5545856533356506733.a n = A199591 n

end A199591

/-!
# A199592: 

The programs for A199592, there is no canonical definition to state claims against.
-/

/-! ## A199592.P764929682874001512

`11^2^n+1`
-/

namespace A199592.P764929682874001512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ 2 ^ n + 1

end

end A199592.P764929682874001512

/-! ## A199592.P7325146773296922917

`Δ[∑[a(n-1)²]+n]` with `a(0)=0, a(1)=11`
-/

namespace A199592.P7325146773296922917
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 11] fun n f2 =>
  f2 (n - 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A199592.P7325146773296922917

/-! ## A199592.P17718779850530507071

`A034524(2^n)`
-/

namespace A199592.P17718779850530507071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034524 (2 ^ n)

end

end A199592.P17718779850530507071

/-!
# A199593: Numbers n such that 3n-2, 3n-1 and 3n are all composite.

The programs for A199593, the canonical program `A199593.P322643745458318063` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199593 has offset 1).

The definition of A199593 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199593.P7014464152248736443

`ceil(A038509(n+1)/3)`
-/

namespace A199593.P7014464152248736443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A038509 (n + 1) : ℚ) / 3⌉

end

end A199593.P7014464152248736443

namespace A199593

/-- `ceil(A038509(n+1)/3)` -/
def P7014464152248736443.Spec : Prop :=
  ∀ n, P7014464152248736443.a n = A199593 (n + 1)

end A199593

/-! ## A199593.P2177869610601075892

`comp[A144769(n+1)]+1`
-/

namespace A199593.P2177869610601075892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A199593.P2177869610601075892

namespace A199593

/-- `comp[A144769(n+1)]+1` -/
def P2177869610601075892.Spec : Prop :=
  ∀ n, (P2177869610601075892.a n : ℤ) = A199593 (n + 1)

end A199593

/-! ## A199593.P322643745458318063

`lt[A075743(n+1), 1]+2`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A199593

/-- `lt[A075743(n+1), 1]+2` -/
def P322643745458318063.Spec : Prop :=
  ∀ n, (P322643745458318063.a n : ℤ) = A199593 (n + 1)

theorem P322643745458318063.correct : P322643745458318063.Spec := by
  intro n
  simp only [A199593, Nat.add_sub_cancel]

end A199593

/-! ## A199593.P14787319218424938173

`eq[1, A156706(n+1)+1]+2`
-/

namespace A199593.P14787319218424938173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A199593.P14787319218424938173

namespace A199593

/-- `eq[1, A156706(n+1)+1]+2` -/
def P14787319218424938173.Spec : Prop :=
  ∀ n, (P14787319218424938173.a n : ℤ) = A199593 (n + 1)

end A199593

/-! ## A199593.P12924486043740298793

`comp[floor(A000040(n+1)/3)]+1`
-/

namespace A199593.P12924486043740298793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / 3⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A199593.P12924486043740298793

namespace A199593

/-- `comp[floor(A000040(n+1)/3)]+1` -/
def P12924486043740298793.Spec : Prop :=
  ∀ n, (P12924486043740298793.a n : ℤ) = A199593 (n + 1)

end A199593

/-! ## A199593.P4092770020692229992

`comp[ceil((A006530(n+1)-3)/3)]+1`
-/

namespace A199593.P4092770020692229992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006530 (n + 1) - 3 : ℚ) / 3⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A199593.P4092770020692229992

namespace A199593

/-- `comp[ceil((A006530(n+1)-3)/3)]+1` -/
def P4092770020692229992.Spec : Prop :=
  ∀ n, (P4092770020692229992.a n : ℤ) = A199593 (n + 1)

end A199593

/-! ## A199593.P9929439489451959713

`comp[n-ceil(n*A000005(n+1)/3)]+1`
-/

namespace A199593.P9929439489451959713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌈((n : ℤ) * A000005 (n + 1) : ℚ) / 3⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A199593.P9929439489451959713

namespace A199593

/-- `comp[n-ceil(n*A000005(n+1)/3)]+1` -/
def P9929439489451959713.Spec : Prop :=
  ∀ n, (P9929439489451959713.a n : ℤ) = A199593 (n + 1)

end A199593

/-! ## A199593.P2261008734229964257

`A000720(A038509(n+1)+1)+n`
-/

namespace A199593.P2261008734229964257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A038509 (n + 1) + 1).toNat + (n : ℤ)

end

end A199593.P2261008734229964257

namespace A199593

/-- `A000720(A038509(n+1)+1)+n` -/
def P2261008734229964257.Spec : Prop :=
  ∀ n, P2261008734229964257.a n = A199593 (n + 1)

end A199593

/-! ## A199593.P15033897351280245903

`lt[A306289(n+1), n]+2`
-/

namespace A199593.P15033897351280245903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306289 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A199593.P15033897351280245903

namespace A199593

/-- `lt[A306289(n+1), n]+2` -/
def P15033897351280245903.Spec : Prop :=
  ∀ n, (P15033897351280245903.a n : ℤ) = A199593 (n + 1)

end A199593

/-! ## A199593.P4421642168470549496

`lt[A020639(or(1, A016777(n))), n]+1`
-/

namespace A199593.P4421642168470549496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lor 1 (A016777 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A199593.P4421642168470549496

namespace A199593

/-- `lt[A020639(or(1, A016777(n))), n]+1` -/
def P4421642168470549496.Spec : Prop :=
  ∀ n, (P4421642168470549496.a n : ℤ) = A199593 (n + 1)

end A199593

/-! ## A199593.P936339479190865285

`lt[3, A175851(A016777(n)+1)+1]+1`
-/

namespace A199593.P936339479190865285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (A016777 n + 1).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A199593.P936339479190865285

namespace A199593

/-- `lt[3, A175851(A016777(n)+1)+1]+1` -/
def P936339479190865285.Spec : Prop :=
  ∀ n, (P936339479190865285.a n : ℤ) = A199593 (n + 1)

end A199593

/-! ## A199593.P16537185687855260229

`lt[2, A000005(A038179(n+1))]`
-/

namespace A199593.P16537185687855260229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A038179 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A199593.P16537185687855260229

namespace A199593

/-- `lt[2, A000005(A038179(n+1))]` -/
def P16537185687855260229.Spec : Prop :=
  ∀ n, (P16537185687855260229.a n : ℤ) = A199593 (n + 1)

end A199593

/-! ## A199593.P14058196411878130246

`lt[1, A001222(Δ[A317186(n)]+n)]+1`
-/

namespace A199593.P14058196411878130246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f3 (n + 1) - f3 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A199593.P14058196411878130246

namespace A199593

/-- `lt[1, A001222(Δ[A317186(n)]+n)]+1` -/
def P14058196411878130246.Spec : Prop :=
  ∀ n, (P14058196411878130246.a n : ℤ) = A199593 (n + 1)

end A199593

/-! ## A199593.P3331712712377427052

`lt[A020639(Δ[A317186(n)]+n), n]+1`
-/

namespace A199593.P3331712712377427052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317186 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f2 (n + 1) - f2 n + (n : ℤ)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A199593.P3331712712377427052

namespace A199593

/-- `lt[A020639(Δ[A317186(n)]+n), n]+1` -/
def P3331712712377427052.Spec : Prop :=
  ∀ n, (P3331712712377427052.a n : ℤ) = A199593 (n + 1)

end A199593

/-! ## A199593.P2967615551966368639

`lt[A006530(A038179(n+1)), A004280(n+1)]`
-/

namespace A199593.P2967615551966368639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A038179 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A199593.P2967615551966368639

namespace A199593

/-- `lt[A006530(A038179(n+1)), A004280(n+1)]` -/
def P2967615551966368639.Spec : Prop :=
  ∀ n, (P2967615551966368639.a n : ℤ) = A199593 (n + 1)

end A199593

/-! ## A199593.P4864532355356383599

`A004396((A038509(n+1)+1)/2)`
-/

namespace A199593.P4864532355356383599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (SequenceMachineLib.roundAway ((A038509 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A199593.P4864532355356383599

namespace A199593

/-- `A004396((A038509(n+1)+1)/2)` -/
def P4864532355356383599.Spec : Prop :=
  ∀ n, P4864532355356383599.a n = A199593 (n + 1)

end A199593

/-! ## A199593.P10349610236779703955

`lt[A006530(A004277(comp[3*n+4])+1), n+1]`
-/

namespace A199593.P10349610236779703955
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 4

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004277 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) + 1).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A199593.P10349610236779703955

namespace A199593

/-- `lt[A006530(A004277(comp[3*n+4])+1), n+1]` -/
def P10349610236779703955.Spec : Prop :=
  ∀ n, (P10349610236779703955.a n : ℤ) = A199593 (n + 1)

end A199593

/-! ## A199593.P10969984149737948228

`lt[A006530(2*(lt[n-1, A347538(n+3)]+1)+1), n]`
-/

namespace A199593.P10969984149737948228
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347538 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (SequenceMachineLib.nth (fun j => f2 j < f3 j) n + 1) + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A199593.P10969984149737948228

namespace A199593

/-- `lt[A006530(2*(lt[n-1, A347538(n+3)]+1)+1), n]` -/
def P10969984149737948228.Spec : Prop :=
  ∀ n, (P10969984149737948228.a n : ℤ) = A199593 (n + 1)

end A199593

/-! ## A199593.P15740594101751987175

`A126760(A038509(n+1))`
-/

namespace A199593.P15740594101751987175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A038509 (n + 1)).toNat

end

end A199593.P15740594101751987175

namespace A199593

/-- `A126760(A038509(n+1))` -/
def P15740594101751987175.Spec : Prop :=
  ∀ n, P15740594101751987175.a n = A199593 (n + 1)

end A199593

/-! ## A199593.P1003721107781933297

`eq[A296028(2*n+1), A296028(2*(n+1))]+1`
-/

namespace A199593.P1003721107781933297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296028 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296028 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A199593.P1003721107781933297

namespace A199593

/-- `eq[A296028(2*n+1), A296028(2*(n+1))]+1` -/
def P1003721107781933297.Spec : Prop :=
  ∀ n, (P1003721107781933297.a n : ℤ) = A199593 (n + 1)

end A199593

/-!
# A199594: Number of sequences of n coin flips that win on the last flip, if the sequence of flips ends with (0,0,1,1) or (1,1,1,1).

The programs for A199594, the canonical program `A199594.P1265403247992700483` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199594 has offset 1).

The definition of A199594 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A199594.P1265403247992700483

`a(n-1)+a(n-2)+a(n-3)-a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2, a(4)=3`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199594

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-5)` -/
def P1265403247992700483.Spec : Prop :=
  ∀ n, P1265403247992700483.a n = A199594 (n + 1)

theorem P1265403247992700483.correct : P1265403247992700483.Spec := by
  intro n
  simp only [A199594, Nat.add_sub_cancel]

end A199594

/-! ## A199594.P5987209268587553534

`A199926(n+1)+A199925(n+1)`
-/

namespace A199594.P5987209268587553534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199926 (n + 1) + A199925 (n + 1)

end

end A199594.P5987209268587553534

namespace A199594

/-- `A199926(n+1)+A199925(n+1)` -/
def P5987209268587553534.Spec : Prop :=
  ∀ n, P5987209268587553534.a n = A199594 (n + 1)

end A199594

/-! ## A199594.P2813914490393987476

`A164388(n)-Δ[A164388(n)]`
-/

namespace A199594.P2813914490393987476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164388 n - (f1 (n + 1) - f1 n)

end

end A199594.P2813914490393987476

namespace A199594

/-- `A164388(n)-Δ[A164388(n)]` -/
def P2813914490393987476.Spec : Prop :=
  ∀ n, P2813914490393987476.a n = A199594 (n + 1)

end A199594

/-! ## A199594.P3380664355280495792

`A164388(n+1)%Δ[A164388(n)]`
-/

namespace A199594.P3380664355280495792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164388 (n + 1)) (f1 (n + 1) - f1 n)

end

end A199594.P3380664355280495792

namespace A199594

/-- `A164388(n+1)%Δ[A164388(n)]` -/
def P3380664355280495792.Spec : Prop :=
  ∀ n, P3380664355280495792.a n = A199594 (n + 1)

end A199594

/-! ## A199594.P440333881419304021

`A199925(n+4)-Δ[A199925(n+4)]`
-/

namespace A199594.P440333881419304021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199925 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199925 (n + 4) - (f1 (n + 1) - f1 n)

end

end A199594.P440333881419304021

namespace A199594

/-- `A199925(n+4)-Δ[A199925(n+4)]` -/
def P440333881419304021.Spec : Prop :=
  ∀ n, P440333881419304021.a n = A199594 (n + 1)

end A199594

/-!
# A199595: Numbers n such that 3n+6, 3n+7 and 3n+8 are all composite.

The programs for A199595, the canonical program `A199595.P3367410599700455446` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199595 has offset 1).

The definition of A199595 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A199593, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A199595.P3367410599700455446

`A199593(n+1)-8`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A199595

/-- `A199593(n+1)-8` -/
def P3367410599700455446.Spec : Prop :=
  ∀ n, P3367410599700455446.a n = A199595 (n + 1)

theorem P3367410599700455446.correct : P3367410599700455446.Spec := by
  intro n
  simp only [A199595, Nat.add_sub_cancel]

end A199595

/-! ## A199595.P7589352510759681922

`eq[0, A075743(n+7)]`
-/

namespace A199595.P7589352510759681922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A199595.P7589352510759681922

namespace A199595

/-- `eq[0, A075743(n+7)]` -/
def P7589352510759681922.Spec : Prop :=
  ∀ n, (P7589352510759681922.a n : ℤ) = A199595 (n + 1)

end A199595

/-! ## A199595.P10136270016695600309

`eq[0, A156706(n+7)]`
-/

namespace A199595.P10136270016695600309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A199595.P10136270016695600309

namespace A199595

/-- `eq[0, A156706(n+7)]` -/
def P10136270016695600309.Spec : Prop :=
  ∀ n, (P10136270016695600309.a n : ℤ) = A199595 (n + 1)

end A199595

/-! ## A199595.P11352138879260402412

`comp[A144769(n+1)-7]`
-/

namespace A199595.P11352138879260402412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144769 (n + 1) - 7

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A199595.P11352138879260402412

namespace A199595

/-- `comp[A144769(n+1)-7]` -/
def P11352138879260402412.Spec : Prop :=
  ∀ n, (P11352138879260402412.a n : ℤ) = A199595 (n + 1)

end A199595

/-! ## A199595.P13661836353852234193

`comp[A181709(n+1)-8]`
-/

namespace A199595.P13661836353852234193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181709 (n + 1) - 8

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A199595.P13661836353852234193

namespace A199595

/-- `comp[A181709(n+1)-8]` -/
def P13661836353852234193.Spec : Prop :=
  ∀ n, (P13661836353852234193.a n : ℤ) = A199595 (n + 1)

end A199595

/-! ## A199595.P4475743590163581482

`floor(A038509(n+1)/3)-7`
-/

namespace A199595.P4475743590163581482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038509 (n + 1) : ℚ) / 3⌋ - 7

end

end A199595.P4475743590163581482

namespace A199595

/-- `floor(A038509(n+1)/3)-7` -/
def P4475743590163581482.Spec : Prop :=
  ∀ n, P4475743590163581482.a n = A199595 (n + 1)

end A199595

/-! ## A199595.P1307796481263227546

`comp[floor(A000040(n+1)/3)-7]`
-/

namespace A199595.P1307796481263227546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / 3⌋ - 7

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A199595.P1307796481263227546

namespace A199595

/-- `comp[floor(A000040(n+1)/3)-7]` -/
def P1307796481263227546.Spec : Prop :=
  ∀ n, (P1307796481263227546.a n : ℤ) = A199595 (n + 1)

end A199595

/-! ## A199595.P8032492264267704150

`comp[floor(A006530(n+1)/3)]-7`
-/

namespace A199595.P8032492264267704150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006530 (n + 1) : ℚ) / 3⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 7

end

end A199595.P8032492264267704150

namespace A199595

/-- `comp[floor(A006530(n+1)/3)]-7` -/
def P8032492264267704150.Spec : Prop :=
  ∀ n, P8032492264267704150.a n = A199595 (n + 1)

end A199595

/-! ## A199595.P5890744498536066187

`comp[floor(A014963(n+1)/3)-7]`
-/

namespace A199595.P5890744498536066187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014963 (n + 1) : ℚ) / 3⌋ - 7

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A199595.P5890744498536066187

namespace A199595

/-- `comp[floor(A014963(n+1)/3)-7]` -/
def P5890744498536066187.Spec : Prop :=
  ∀ n, (P5890744498536066187.a n : ℤ) = A199595 (n + 1)

end A199595

/-! ## A199595.P8720670389090244724

`comp[floor(A020639(n+1)/3)-7]`
-/

namespace A199595.P8720670389090244724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020639 (n + 1) : ℚ) / 3⌋ - 7

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A199595.P8720670389090244724

namespace A199595

/-- `comp[floor(A020639(n+1)/3)-7]` -/
def P8720670389090244724.Spec : Prop :=
  ∀ n, (P8720670389090244724.a n : ℤ) = A199595 (n + 1)

end A199595

/-!
# A199596: a(n) = floor(phi(2*n+1)/phi(2*n+2)).

The programs for A199596, the canonical program `A199596.P3097646989269055567` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199596 has offset 0).

The definition of A199596 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199596.P3863835210632258416

`floor(A037225(n)/A062570(n+1))`
-/

namespace A199596.P3863835210632258416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037225 n : ℚ) / (A062570 (n + 1) : ℚ)⌋

end

end A199596.P3863835210632258416

namespace A199596

/-- `floor(A037225(n)/A062570(n+1))` -/
def P3863835210632258416.Spec : Prop :=
  ∀ n, P3863835210632258416.a n = A199596 n

end A199596

/-! ## A199596.P3097646989269055567

`floor(A072451(n+1)/A055034(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A199596

/-- `floor(A072451(n+1)/A055034(n+1))` -/
def P3097646989269055567.Spec : Prop :=
  ∀ n, P3097646989269055567.a n = A199596 n

theorem P3097646989269055567.correct : P3097646989269055567.Spec := by
  intro n
  simp only [A199596]

end A199596

/-! ## A199596.P15519086418793360926

`floor(A037225(n)/A000010(2*(n+1)))`
-/

namespace A199596.P15519086418793360926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037225 n : ℚ) / (A000010 (2 * (n + 1)) : ℚ)⌋

end

end A199596.P15519086418793360926

namespace A199596

/-- `floor(A037225(n)/A000010(2*(n+1)))` -/
def P15519086418793360926.Spec : Prop :=
  ∀ n, P15519086418793360926.a n = A199596 n

end A199596

/-! ## A199596.P16442594432194499629

`floor(A062570(2*n+1)/A062570(n+1))`
-/

namespace A199596.P16442594432194499629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062570 (2 * n + 1) : ℚ) / (A062570 (n + 1) : ℚ)⌋

end

end A199596.P16442594432194499629

namespace A199596

/-- `floor(A062570(2*n+1)/A062570(n+1))` -/
def P16442594432194499629.Spec : Prop :=
  ∀ n, P16442594432194499629.a n = A199596 n

end A199596

/-! ## A199596.P14134288673797103263

`floor(A000010(2*n+1)/A000010(2*(n+1)))`
-/

namespace A199596.P14134288673797103263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (2 * n + 1) : ℚ) / (A000010 (2 * (n + 1)) : ℚ)⌋

end

end A199596.P14134288673797103263

namespace A199596

/-- `floor(A000010(2*n+1)/A000010(2*(n+1)))` -/
def P14134288673797103263.Spec : Prop :=
  ∀ n, P14134288673797103263.a n = A199596 n

end A199596

/-! ## A199596.P5851010430414913098

`floor(A055034(2*n+1)/A055034(n+1))`
-/

namespace A199596.P5851010430414913098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055034 (2 * n + 1) : ℚ) / (A055034 (n + 1) : ℚ)⌋

end

end A199596.P5851010430414913098

namespace A199596

/-- `floor(A055034(2*n+1)/A055034(n+1))` -/
def P5851010430414913098.Spec : Prop :=
  ∀ n, P5851010430414913098.a n = A199596 n

end A199596

/-! ## A199596.P13195571529850790955

`floor(A200905(2*n+1)/A200905(2*(n+1)))`
-/

namespace A199596.P13195571529850790955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A200905 (2 * n + 1) : ℚ) / (A200905 (2 * (n + 1)) : ℚ)⌋

end

end A199596.P13195571529850790955

namespace A199596

/-- `floor(A200905(2*n+1)/A200905(2*(n+1)))` -/
def P13195571529850790955.Spec : Prop :=
  ∀ n, P13195571529850790955.a n = A199596 n

end A199596

/-! ## A199596.P10639912209283150127

`floor(sqrt(A127473(2*n+1)/A127473(2*(n+1))))`
-/

namespace A199596.P10639912209283150127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A127473 (2 * n + 1) : ℚ) / (A127473 (2 * (n + 1)) : ℚ) : ℝ)⌋

end

end A199596.P10639912209283150127

namespace A199596

/-- `floor(sqrt(A127473(2*n+1)/A127473(2*(n+1))))` -/
def P10639912209283150127.Spec : Prop :=
  ∀ n, P10639912209283150127.a n = A199596 n

end A199596

/-! ## A199596.P12474610371470143547

`val(A066781(2*n+1), A066781(2*(n+1)))`
-/

namespace A199596.P12474610371470143547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A066781 (2 * n + 1)).toNat (A066781 (2 * (n + 1))).toNat

end

end A199596.P12474610371470143547

namespace A199596

/-- `val(A066781(2*n+1), A066781(2*(n+1)))` -/
def P12474610371470143547.Spec : Prop :=
  ∀ n, (P12474610371470143547.a n : ℤ) = A199596 n

end A199596

/-! ## A199596.P9254023786840221621

`floor(A039649(2*n+1)/log2(A243305(2*(n+1))))`
-/

namespace A199596.P9254023786840221621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A039649 (2 * n + 1) : ℝ) / Real.logb 2 (A243305 (2 * (n + 1)) : ℝ)⌋

end

end A199596.P9254023786840221621

namespace A199596

/-- `floor(A039649(2*n+1)/log2(A243305(2*(n+1))))` -/
def P9254023786840221621.Spec : Prop :=
  ∀ n, P9254023786840221621.a n = A199596 n

end A199596

