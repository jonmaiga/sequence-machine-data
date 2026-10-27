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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A152100: Expansion of g.f. 1 - 2*x*(-7 - 10*x + x^2)/(x - 1)^4.

The programs for A152100, the canonical program `A152100.P13212621274012771880` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152100 has offset 0).

The definition of A152100 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+10x+26x^2-6x^3+x^4)/(1-4x+6x^2-4x^3+x^4))` (program `A152100.P13212621274012771880`, by `A152100.P13212621274012771880.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152100.P13212621274012771880

`ogf((1+10x+26x^2-6x^3+x^4)/(1-4x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152100

/-- `ogf((1+10x+26x^2-6x^3+x^4)/(1-4x+6x^2-4x^3+x^4))` -/
def P13212621274012771880.Spec : Prop :=
  ∀ n, P13212621274012771880.a n = A152100 n

theorem P13212621274012771880.correct : P13212621274012771880.Spec := by
  intro n
  simp only [A152100]

end A152100

/-! ## A152100.P1025638002067290302

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=14, a(2)=76, a(3)=218, a(4)=472`
-/

namespace A152100.P1025638002067290302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 14, 76, 218, 472] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A152100.P1025638002067290302

namespace A152100

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P1025638002067290302.Spec : Prop :=
  ∀ n, P1025638002067290302.a n = A152100 n

end A152100

/-! ## A152100.P11212342926724511152

`A035471(n)+A014635(n)`
-/

namespace A152100.P11212342926724511152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035471 n + A014635 n

end

end A152100.P11212342926724511152

namespace A152100

/-- `A035471(n)+A014635(n)` -/
def P11212342926724511152.Spec : Prop :=
  ∀ n, P11212342926724511152.a n = A152100 n

end A152100

/-! ## A152100.P12452258396669136711

`A139271(n)+A001386(n)`
-/

namespace A152100.P12452258396669136711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139271 n + A001386 n

end

end A152100.P12452258396669136711

namespace A152100

/-- `A139271(n)+A001386(n)` -/
def P12452258396669136711.Spec : Prop :=
  ∀ n, P12452258396669136711.a n = A152100 n

end A152100

/-! ## A152100.P7487285890968284230

`A001386(n)+2*A001107(n)`
-/

namespace A152100.P7487285890968284230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001386 n + 2 * A001107 n

end

end A152100.P7487285890968284230

namespace A152100

/-- `A001386(n)+2*A001107(n)` -/
def P7487285890968284230.Spec : Prop :=
  ∀ n, P7487285890968284230.a n = A152100 n

end A152100

/-! ## A152100.P6620326821179479339

`A068377(n+1)+∑[A152750(n)]`
-/

namespace A152100.P6620326821179479339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152750 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068377 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152100.P6620326821179479339

namespace A152100

/-- `A068377(n+1)+∑[A152750(n)]` -/
def P6620326821179479339.Spec : Prop :=
  ∀ n, P6620326821179479339.a n = A152100 n

end A152100

/-! ## A152100.P3883789968140460147

`A063496(n+1)-A016813(n)%A063496(n+1)`
-/

namespace A152100.P3883789968140460147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063496 (n + 1) - Int.tmod (A016813 n) (A063496 (n + 1))

end

end A152100.P3883789968140460147

namespace A152100

/-- `A063496(n+1)-A016813(n)%A063496(n+1)` -/
def P3883789968140460147.Spec : Prop :=
  ∀ n, P3883789968140460147.a n = A152100 n

end A152100

/-! ## A152100.P551425291894997123

`A006331(2*n)+A004277(n)²`
-/

namespace A152100.P551425291894997123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 (2 * n) + A004277 n ^ 2

end

end A152100.P551425291894997123

namespace A152100

/-- `A006331(2*n)+A004277(n)²` -/
def P551425291894997123.Spec : Prop :=
  ∀ n, P551425291894997123.a n = A152100 n

end A152100

/-! ## A152100.P17144442580580734307

`A006331(2*n)+A004275(n+1)²`
-/

namespace A152100.P17144442580580734307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 (2 * n) + A004275 (n + 1) ^ 2

end

end A152100.P17144442580580734307

namespace A152100

/-- `A006331(2*n)+A004275(n+1)²` -/
def P17144442580580734307.Spec : Prop :=
  ∀ n, P17144442580580734307.a n = A152100 n

end A152100

/-! ## A152100.P4249099584308187727

`A006331(2*n)+A028310(2*n)²`
-/

namespace A152100.P4249099584308187727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 (2 * n) + A028310 (2 * n) ^ 2

end

end A152100.P4249099584308187727

namespace A152100

/-- `A006331(2*n)+A028310(2*n)²` -/
def P4249099584308187727.Spec : Prop :=
  ∀ n, P4249099584308187727.a n = A152100 n

end A152100

/-! ## A152100.P1978081614938106262

`A006071(Δ[n²])`
-/

namespace A152100.P1978081614938106262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006071 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A152100.P1978081614938106262

namespace A152100

/-- `A006071(Δ[n²])` -/
def P1978081614938106262.Spec : Prop :=
  ∀ n, P1978081614938106262.a n = A152100 n

end A152100

/-! ## A152100.P4191851716781832663

`A294473(2*n+1)+A004277(n)²`
-/

namespace A152100.P4191851716781832663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294473 (2 * n + 1) + A004277 n ^ 2

end

end A152100.P4191851716781832663

namespace A152100

/-- `A294473(2*n+1)+A004277(n)²` -/
def P4191851716781832663.Spec : Prop :=
  ∀ n, P4191851716781832663.a n = A152100 n

end A152100

/-! ## A152100.P293365768856828972

`A050297(2*(n+1))-A117662(2*n)`
-/

namespace A152100.P293365768856828972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050297 (2 * (n + 1)) - A117662 (2 * n)

end

end A152100.P293365768856828972

namespace A152100

/-- `A050297(2*(n+1))-A117662(2*n)` -/
def P293365768856828972.Spec : Prop :=
  ∀ n, P293365768856828972.a n = A152100 n

end A152100

/-! ## A152100.P9732997109044239590

`A253909(2*n)+2*A000330(2*n)`
-/

namespace A152100.P9732997109044239590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253909 (2 * n) + 2 * A000330 (2 * n)

end

end A152100.P9732997109044239590

namespace A152100

/-- `A253909(2*n)+2*A000330(2*n)` -/
def P9732997109044239590.Spec : Prop :=
  ∀ n, P9732997109044239590.a n = A152100 n

end A152100

/-! ## A152100.P13994310206734715268

`∑[A004277(2*n)²]-A153152(2*n)`
-/

namespace A152100.P13994310206734715268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A153152 (2 * n)

end

end A152100.P13994310206734715268

namespace A152100

/-- `∑[A004277(2*n)²]-A153152(2*n)` -/
def P13994310206734715268.Spec : Prop :=
  ∀ n, P13994310206734715268.a n = A152100 n

end A152100

/-! ## A152100.P3381101370229855714

`record[A006331(A153733(n+1))+(n+1)²]`
-/

namespace A152100.P3381101370229855714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 (A153733 (n + 1)).toNat + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152100.P3381101370229855714

namespace A152100

/-- `record[A006331(A153733(n+1))+(n+1)²]` -/
def P3381101370229855714.Spec : Prop :=
  ∀ n, P3381101370229855714.a n = A152100 n

end A152100

/-! ## A152100.P16092630127358222876

`A006331(2*n)+A131055(2*n+1)²`
-/

namespace A152100.P16092630127358222876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 (2 * n) + A131055 (2 * n + 1) ^ 2

end

end A152100.P16092630127358222876

namespace A152100

/-- `A006331(2*n)+A131055(2*n+1)²` -/
def P16092630127358222876.Spec : Prop :=
  ∀ n, P16092630127358222876.a n = A152100 n

end A152100

/-! ## A152100.P15868252134539288953

`∑[A008574(n)²]-A028242(A008574(n))`
-/

namespace A152100.P15868252134539288953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A028242 (A008574 n).toNat

end

end A152100.P15868252134539288953

namespace A152100

/-- `∑[A008574(n)²]-A028242(A008574(n))` -/
def P15868252134539288953.Spec : Prop :=
  ∀ n, P15868252134539288953.a n = A152100 n

end A152100

/-! ## A152100.P758074516740760614

`A008811(A004277(2*n))+A006331(2*n)`
-/

namespace A152100.P758074516740760614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008811 (A004277 (2 * n)).toNat + A006331 (2 * n)

end

end A152100.P758074516740760614

namespace A152100

/-- `A008811(A004277(2*n))+A006331(2*n)` -/
def P758074516740760614.Spec : Prop :=
  ∀ n, P758074516740760614.a n = A152100 n

end A152100

/-! ## A152100.P10890062464091952613

`A270008(2*n)+(2*n)²+n`
-/

namespace A152100.P10890062464091952613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270008 (2 * n) + ((2 * n) ^ 2 + n : ℤ)

end

end A152100.P10890062464091952613

namespace A152100

/-- `A270008(2*n)+(2*n)²+n` -/
def P10890062464091952613.Spec : Prop :=
  ∀ n, P10890062464091952613.a n = A152100 n

end A152100

/-!
# A152101: a(n)=16^n - 3*2^(2*n - 1) - 1.

The programs for A152101, the canonical program `A152101.P262158236683253562` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152101 has offset 1).

The definition of A152101 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152101.P262158236683253562

`16^(n+1)-3*2^(2*(n+1)-1)-1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152101

/-- `16^(n+1)-3*2^(2*(n+1)-1)-1` -/
def P262158236683253562.Spec : Prop :=
  ∀ n, P262158236683253562.a n = (A152101 (n + 1) : ℚ)

end A152101

/-! ## A152101.P16650168049286126023

`A220236(Δ[n²])`
-/

namespace A152101.P16650168049286126023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220236 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A152101.P16650168049286126023

namespace A152101

/-- `A220236(Δ[n²])` -/
def P16650168049286126023.Spec : Prop :=
  ∀ n, P16650168049286126023.a n = A152101 (n + 1)

end A152101

/-! ## A152101.P7212586423882809282

`lcm(3, A220236(2*n+1))`
-/

namespace A152101.P7212586423882809282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A220236 (2 * n + 1))

end

end A152101.P7212586423882809282

namespace A152101

/-- `lcm(3, A220236(2*n+1))` -/
def P7212586423882809282.Spec : Prop :=
  ∀ n, (P7212586423882809282.a n : ℤ) = A152101 (n + 1)

end A152101

/-! ## A152101.P3675254594102120600

`A083420(n)*A087289(n+1)`
-/

namespace A152101.P3675254594102120600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083420 n * A087289 (n + 1)

end

end A152101.P3675254594102120600

namespace A152101

/-- `A083420(n)*A087289(n+1)` -/
def P3675254594102120600.Spec : Prop :=
  ∀ n, P3675254594102120600.a n = A152101 (n + 1)

end A152101

/-! ## A152101.P10166360966928459074

`A087289(n+1)*A107663(2*n)`
-/

namespace A152101.P10166360966928459074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087289 (n + 1) * A107663 (2 * n)

end

end A152101.P10166360966928459074

namespace A152101

/-- `A087289(n+1)*A107663(2*n)` -/
def P10166360966928459074.Spec : Prop :=
  ∀ n, P10166360966928459074.a n = A152101 (n + 1)

end A152101

/-! ## A152101.P11716412874704933376

`A087289(n+1)*A279872(2*n)`
-/

namespace A152101.P11716412874704933376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087289 (n + 1) * A279872 (2 * n)

end

end A152101.P11716412874704933376

namespace A152101

/-- `A087289(n+1)*A279872(2*n)` -/
def P11716412874704933376.Spec : Prop :=
  ∀ n, P11716412874704933376.a n = A152101 (n + 1)

end A152101

/-! ## A152101.P6849586749521065071

`A087289(n+1)*A282413(2*n)`
-/

namespace A152101.P6849586749521065071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087289 (n + 1) * A282413 (2 * n)

end

end A152101.P6849586749521065071

namespace A152101

/-- `A087289(n+1)*A282413(2*n)` -/
def P6849586749521065071.Spec : Prop :=
  ∀ n, P6849586749521065071.a n = A152101 (n + 1)

end A152101

/-! ## A152101.P2062681807453865938

`A087289(n+1)*A282414(2*n)`
-/

namespace A152101.P2062681807453865938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087289 (n + 1) * A282414 (2 * n)

end

end A152101.P2062681807453865938

namespace A152101

/-- `A087289(n+1)*A282414(2*n)` -/
def P2062681807453865938.Spec : Prop :=
  ∀ n, P2062681807453865938.a n = A152101 (n + 1)

end A152101

/-! ## A152101.P14781658511809174173

`A000225(2*n+1)*A087289(n+1)`
-/

namespace A152101.P14781658511809174173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (2 * n + 1) * A087289 (n + 1)

end

end A152101.P14781658511809174173

namespace A152101

/-- `A000225(2*n+1)*A087289(n+1)` -/
def P14781658511809174173.Spec : Prop :=
  ∀ n, P14781658511809174173.a n = A152101 (n + 1)

end A152101

/-! ## A152101.P17940353473485350256

`A014551(2*n+1)*A087289(n+1)`
-/

namespace A152101.P17940353473485350256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 (2 * n + 1) * A087289 (n + 1)

end

end A152101.P17940353473485350256

namespace A152101

/-- `A014551(2*n+1)*A087289(n+1)` -/
def P17940353473485350256.Spec : Prop :=
  ∀ n, P17940353473485350256.a n = A152101 (n + 1)

end A152101

/-!
# A152103: a(n) = 2^n*Product_{k=1..floor((n-1)/2)} (1 + 2*cos(k*Pi/n)^2 + 4*cos(k*Pi/n)^4).

The programs for A152103, the canonical program `A152103.P17665733262846699091` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152103 has offset 0).

The definition of A152103 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152103.P17665733262846699091

`2*a(n-1)+4*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=14, a(4)=48`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152103

/-- `2*a(n-1)+4*a(n-2)+2*a(n-3)-a(n-4)` -/
def P17665733262846699091.Spec : Prop :=
  ∀ n, P17665733262846699091.a n = A152103 n

theorem P17665733262846699091.correct : P17665733262846699091.Spec := by
  intro n
  simp only [A152103]

end A152103

/-! ## A152103.P5194733653472592868

`A320536(A059505(n+1)+A001700(n))`
-/

namespace A152103.P5194733653472592868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (A059505 (n + 1) + A001700 n).toNat

end

end A152103.P5194733653472592868

namespace A152103

/-- `A320536(A059505(n+1)+A001700(n))` -/
def P5194733653472592868.Spec : Prop :=
  ∀ n, P5194733653472592868.a n = A152103 n

end A152103

/-! ## A152103.P17888284919431737235

`A026431(A141268(n+1)^A059592(n))`
-/

namespace A152103.P17888284919431737235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026431 (SequenceMachineLib.roundAway ((A141268 (n + 1) : ℚ) ^ (A059592 n : ℤ))).toNat

end

end A152103.P17888284919431737235

namespace A152103

/-- `A026431(A141268(n+1)^A059592(n))` -/
def P17888284919431737235.Spec : Prop :=
  ∀ n, P17888284919431737235.a n = A152103 n

end A152103

/-!
# A152104: Quartic product sequence: a(n) = 2^n*Product_{k=1..(n-1)/2} (1 + m*cos(k*Pi/n)^2 + q*cos(k*Pi/n)^4), with m=6, q=4.

The programs for A152104, there is no canonical definition to state claims against.
-/

/-! ## A152104.P11710208039301500723

`A008611(A000302(n)-A335265(n))`
-/

namespace A152104.P11710208039301500723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A000302 n - A335265 n).toNat

end

end A152104.P11710208039301500723

/-! ## A152104.P8278829558913424614

`A047849(n)-A193531(A229468(n+4))`
-/

namespace A152104.P8278829558913424614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047849 n - A193531 (A229468 (n + 4)).toNat

end

end A152104.P8278829558913424614

/-! ## A152104.P1077885512433453538

`xor(A353157(2*n+3), A353157(A020988(n)))`
-/

namespace A152104.P1077885512433453538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A353157 (2 * n + 3)) (A353157 (A020988 n).toNat)

end

end A152104.P1077885512433453538

/-!
# A152105: a(n) = (10^n + 6^n)/2.

The programs for A152105, the canonical program `A152105.P10151609398638126997` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152105 has offset 0).

The definition of A152105 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10^n+6^n)/2` (program `A152105.P17503040197551720578`, by `A152105.P17503040197551720578.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152105.P10151609398638126997

`16*a(n-1)-60*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152105

/-- `16*a(n-1)-60*a(n-2)` -/
def P10151609398638126997.Spec : Prop :=
  ∀ n, P10151609398638126997.a n = A152105 n

theorem P10151609398638126997.correct : P10151609398638126997.Spec := by
  intro n
  simp only [A152105]

end A152105

/-! ## A152105.P1593038358374428299

`2^n*A081186(n)`
-/

namespace A152105.P1593038358374428299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A081186 n

end

end A152105.P1593038358374428299

namespace A152105

/-- `2^n*A081186(n)` -/
def P1593038358374428299.Spec : Prop :=
  ∀ n, P1593038358374428299.a n = A152105 n

end A152105

/-! ## A152105.P17503040197551720578

`(10^n+6^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152105.P17503040197551720578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n + 6 ^ n : ℚ) / 2

end

end A152105.P17503040197551720578

namespace A152105

/-- `(10^n+6^n)/2` -/
def P17503040197551720578.Spec : Prop :=
  ∀ n, P17503040197551720578.a n = (A152105 n : ℚ)

theorem P17503040197551720578.correct : P17503040197551720578.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A152105, Nat.add_sub_cancel, A152105.P17503040197551720578.a, A152105.P10151609398638126997.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A152105, Nat.add_sub_cancel, A152105.P17503040197551720578.a, A152105.P10151609398638126997.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A152105

/-! ## A152105.P9300416952293637500

`2^(n-1)*A074606(n)`
-/

namespace A152105.P9300416952293637500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A074606 n : ℚ)

end

end A152105.P9300416952293637500

namespace A152105

/-- `2^(n-1)*A074606(n)` -/
def P9300416952293637500.Spec : Prop :=
  ∀ n, P9300416952293637500.a n = (A152105 n : ℚ)

end A152105

/-! ## A152105.P2829451239782186445

`A081203(n)+A081189(n)`
-/

namespace A152105.P2829451239782186445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081203 n + A081189 n

end

end A152105.P2829451239782186445

namespace A152105

/-- `A081203(n)+A081189(n)` -/
def P2829451239782186445.Spec : Prop :=
  ∀ n, P2829451239782186445.a n = A152105 n

end A152105

/-! ## A152105.P10110815746535598292

`A060531(n)-A081201(n)`
-/

namespace A152105.P10110815746535598292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060531 n - A081201 n

end

end A152105.P10110815746535598292

namespace A152105

/-- `A060531(n)-A081201(n)` -/
def P10110815746535598292.Spec : Prop :=
  ∀ n, P10110815746535598292.a n = A152105 n

end A152105

/-! ## A152105.P11980204522792724296

`A074606(n)/2*A000079(n)`
-/

namespace A152105.P11980204522792724296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074606 n : ℚ) / 2 * (A000079 n : ℚ)

end

end A152105.P11980204522792724296

namespace A152105

/-- `A074606(n)/2*A000079(n)` -/
def P11980204522792724296.Spec : Prop :=
  ∀ n, P11980204522792724296.a n = (A152105 n : ℚ)

theorem P11980204522792724296.correct : P11980204522792724296.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A152105, Nat.add_sub_cancel, A152105.P11980204522792724296.a, A152105.P10151609398638126997.a, A000079, A000079.P10855139691139572931.a, A074606, A074606.P17107400510171925079.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A152105, Nat.add_sub_cancel, A152105.P11980204522792724296.a, A152105.P10151609398638126997.a, A000079, A000079.P10855139691139572931.a, A074606, A074606.P17107400510171925079.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A152105

/-! ## A152105.P352099633272429905

`(A233106(n+2)-A233106(n+1))*A000079(n)`
-/

namespace A152105.P352099633272429905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A233106 (n + 2) - A233106 (n + 1)) * A000079 n

end

end A152105.P352099633272429905

namespace A152105

/-- `(A233106(n+2)-A233106(n+1))*A000079(n)` -/
def P352099633272429905.Spec : Prop :=
  ∀ n, P352099633272429905.a n = A152105 n

end A152105

/-! ## A152105.P5645276837923391402

`ceil(A155648(n)/2)`
-/

namespace A152105.P5645276837923391402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155648 n : ℚ) / 2⌉

end

end A152105.P5645276837923391402

namespace A152105

/-- `ceil(A155648(n)/2)` -/
def P5645276837923391402.Spec : Prop :=
  ∀ n, P5645276837923391402.a n = A152105 n

end A152105

/-! ## A152105.P12841896549815910249

`round((A155597(n)+A155594(n))/2)`
-/

namespace A152105.P12841896549815910249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A155597 n + A155594 n : ℚ) / 2)

end

end A152105.P12841896549815910249

namespace A152105

/-- `round((A155597(n)+A155594(n))/2)` -/
def P12841896549815910249.Spec : Prop :=
  ∀ n, P12841896549815910249.a n = A152105 n

end A152105

/-!
# A152106: a(n) = (11^n + 7^n)/2.

The programs for A152106, the canonical program `A152106.P9556063246049299869` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152106 has offset 0).

The definition of A152106 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11^n+7^n)/2` (program `A152106.P16574885055790234470`, by `A152106.P16574885055790234470.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152106.P16574885055790234470

`(11^n+7^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152106.P16574885055790234470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 ^ n + 7 ^ n : ℚ) / 2

end

end A152106.P16574885055790234470

namespace A152106

/-- `(11^n+7^n)/2` -/
def P16574885055790234470.Spec : Prop :=
  ∀ n, P16574885055790234470.a n = (A152106 n : ℚ)

theorem P16574885055790234470.correct : P16574885055790234470.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A152106, Nat.add_sub_cancel, A152106.P16574885055790234470.a, A152106.P9556063246049299869.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A152106, Nat.add_sub_cancel, A152106.P16574885055790234470.a, A152106.P9556063246049299869.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A152106

/-! ## A152106.P9556063246049299869

`18*a(n-1)-77*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152106

/-- `18*a(n-1)-77*a(n-2)` -/
def P9556063246049299869.Spec : Prop :=
  ∀ n, P9556063246049299869.a n = A152106 n

theorem P9556063246049299869.correct : P9556063246049299869.Spec := by
  intro n
  simp only [A152106]

end A152106

/-! ## A152106.P11864975422167664629

`ceil(A155658(n)/2)`
-/

namespace A152106.P11864975422167664629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155658 n : ℚ) / 2⌉

end

end A152106.P11864975422167664629

namespace A152106

/-- `ceil(A155658(n)/2)` -/
def P11864975422167664629.Spec : Prop :=
  ∀ n, P11864975422167664629.a n = A152106 n

end A152106

/-! ## A152106.P17100280614788156280

`A120741(n)+A034659(n)`
-/

namespace A152106.P17100280614788156280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120741 n + A034659 n

end

end A152106.P17100280614788156280

namespace A152106

/-- `A120741(n)+A034659(n)` -/
def P17100280614788156280.Spec : Prop :=
  ∀ n, P17100280614788156280.a n = A152106 n

end A152106

/-! ## A152106.P6219458046123073575

`A152429(n)+A081200(n)`
-/

namespace A152106.P6219458046123073575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152429 n + A081200 n

end

end A152106.P6219458046123073575

namespace A152106

/-- `A152429(n)+A081200(n)` -/
def P6219458046123073575.Spec : Prop :=
  ∀ n, P6219458046123073575.a n = A152106 n

end A152106

/-! ## A152106.P6396014399263198782

`∑[(A055276(n)+A055272(n))/2]`
-/

namespace A152106.P6396014399263198782
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055276 n + A055272 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152106.P6396014399263198782

namespace A152106

/-- `∑[(A055276(n)+A055272(n))/2]` -/
def P6396014399263198782.Spec : Prop :=
  ∀ n, P6396014399263198782.a n = (A152106 n : ℚ)

end A152106

/-!
# A152107: a(n) = ((6+sqrt(5))^n+(6-sqrt(5))^n)/2.

The programs for A152107, the canonical program `A152107.P10059062708363599975` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152107 has offset 0).

The definition of A152107 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((6+sqrt(5))^n+(6-sqrt(5))^n)/2` (program `A152107.P8987732402276106530`, by `A152107.P8987732402276106530.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152107.P10059062708363599975

`12*a(n-1)-31*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152107

/-- `12*a(n-1)-31*a(n-2)` -/
def P10059062708363599975.Spec : Prop :=
  ∀ n, P10059062708363599975.a n = A152107 n

theorem P10059062708363599975.correct : P10059062708363599975.Spec := by
  intro n
  simp only [A152107]

end A152107

/-! ## A152107.P8987732402276106530

`((6+sqrt(5))^n+(6-sqrt(5))^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152107.P8987732402276106530
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((6 + Real.sqrt (5 : ℝ)) ^ n + (6 - Real.sqrt (5 : ℝ)) ^ n) / 2

end

end A152107.P8987732402276106530

namespace A152107

/-- `((6+sqrt(5))^n+(6-sqrt(5))^n)/2` -/
def P8987732402276106530.Spec : Prop :=
  ∀ n, P8987732402276106530.a n = (A152107 n : ℝ)

theorem P8987732402276106530.correct : P8987732402276106530.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A152107, Nat.add_sub_cancel, A152107.P8987732402276106530.a, A152107.P10059062708363599975.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A152107, Nat.add_sub_cancel, A152107.P8987732402276106530.a, A152107.P10059062708363599975.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A152107

/-! ## A152107.P10607886526384635289

`A163066(n)-A163146(n)`
-/

namespace A152107.P10607886526384635289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163066 n - A163146 n

end

end A152107.P10607886526384635289

namespace A152107

/-- `A163066(n)-A163146(n)` -/
def P10607886526384635289.Spec : Prop :=
  ∀ n, P10607886526384635289.a n = A152107 n

end A152107

/-! ## A152107.P2382707336223641961

`A163066(n+1)%A163066(n)`
-/

namespace A152107.P2382707336223641961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163066 (n + 1)) (A163066 n)

end

end A152107.P2382707336223641961

namespace A152107

/-- `A163066(n+1)%A163066(n)` -/
def P2382707336223641961.Spec : Prop :=
  ∀ n, P2382707336223641961.a n = A152107 n

end A152107

/-! ## A152107.P700342179530292843

`record[A163066(A057979(n))]%A163066(n)`
-/

namespace A152107.P700342179530292843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163066 (A057979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A163066 n)

end

end A152107.P700342179530292843

namespace A152107

/-- `record[A163066(A057979(n))]%A163066(n)` -/
def P700342179530292843.Spec : Prop :=
  ∀ n, P700342179530292843.a n = A152107 n

end A152107

/-!
# A152108: a(n) = ((7+sqrt(5))^n + (7-sqrt(5))^n)/2.

The programs for A152108, the canonical program `A152108.P205280261084092528` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152108 has offset 0).

The definition of A152108 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((7+sqrt(5))^n+(7-sqrt(5))^n)/2` (program `A152108.P8671131355074718736`, by `A152108.P8671131355074718736.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152108.P205280261084092528

`14*a(n-1)-44*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152108

/-- `14*a(n-1)-44*a(n-2)` -/
def P205280261084092528.Spec : Prop :=
  ∀ n, P205280261084092528.a n = A152108 n

theorem P205280261084092528.correct : P205280261084092528.Spec := by
  intro n
  simp only [A152108]

end A152108

/-! ## A152108.P8671131355074718736

`((7+sqrt(5))^n+(7-sqrt(5))^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152108.P8671131355074718736
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((7 + Real.sqrt (5 : ℝ)) ^ n + (7 - Real.sqrt (5 : ℝ)) ^ n) / 2

end

end A152108.P8671131355074718736

namespace A152108

/-- `((7+sqrt(5))^n+(7-sqrt(5))^n)/2` -/
def P8671131355074718736.Spec : Prop :=
  ∀ n, P8671131355074718736.a n = (A152108 n : ℝ)

theorem P8671131355074718736.correct : P8671131355074718736.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A152108, Nat.add_sub_cancel, A152108.P8671131355074718736.a, A152108.P205280261084092528.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A152108, Nat.add_sub_cancel, A152108.P8671131355074718736.a, A152108.P205280261084092528.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A152108

/-! ## A152108.P16107084492350951598

`A163067(n)-A163147(n)`
-/

namespace A152108.P16107084492350951598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163067 n - A163147 n

end

end A152108.P16107084492350951598

namespace A152108

/-- `A163067(n)-A163147(n)` -/
def P16107084492350951598.Spec : Prop :=
  ∀ n, P16107084492350951598.a n = A152108 n

end A152108

/-! ## A152108.P4986493746530065490

`A163067(n+1)%A163067(n)`
-/

namespace A152108.P4986493746530065490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163067 (n + 1)) (A163067 n)

end

end A152108.P4986493746530065490

namespace A152108

/-- `A163067(n+1)%A163067(n)` -/
def P4986493746530065490.Spec : Prop :=
  ∀ n, P4986493746530065490.a n = A152108 n

end A152108

/-! ## A152108.P4496484721814425882

`record[A163067(A057979(n))]%A163067(n)`
-/

namespace A152108.P4496484721814425882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163067 (A057979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A163067 n)

end

end A152108.P4496484721814425882

namespace A152108

/-- `record[A163067(A057979(n))]%A163067(n)` -/
def P4496484721814425882.Spec : Prop :=
  ∀ n, P4496484721814425882.a n = A152108 n

end A152108

/-!
# A152109: a(n) = ((8+sqrt(5))^n + (8-sqrt(5))^n)/2.

The programs for A152109, the canonical program `A152109.P2468254412403243099` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152109 has offset 0).

The definition of A152109 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((8+sqrt(5))^n+(8-sqrt(5))^n)/2` (program `A152109.P12260933639895798227`, by `A152109.P12260933639895798227.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152109.P2468254412403243099

`16*a(n-1)-59*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152109

/-- `16*a(n-1)-59*a(n-2)` -/
def P2468254412403243099.Spec : Prop :=
  ∀ n, P2468254412403243099.a n = A152109 n

theorem P2468254412403243099.correct : P2468254412403243099.Spec := by
  intro n
  simp only [A152109]

end A152109

/-! ## A152109.P12260933639895798227

`((8+sqrt(5))^n+(8-sqrt(5))^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152109.P12260933639895798227
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((8 + Real.sqrt (5 : ℝ)) ^ n + (8 - Real.sqrt (5 : ℝ)) ^ n) / 2

end

end A152109.P12260933639895798227

namespace A152109

/-- `((8+sqrt(5))^n+(8-sqrt(5))^n)/2` -/
def P12260933639895798227.Spec : Prop :=
  ∀ n, P12260933639895798227.a n = (A152109 n : ℝ)

theorem P12260933639895798227.correct : P12260933639895798227.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A152109, Nat.add_sub_cancel, A152109.P12260933639895798227.a, A152109.P2468254412403243099.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A152109, Nat.add_sub_cancel, A152109.P12260933639895798227.a, A152109.P2468254412403243099.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A152109

/-! ## A152109.P2209815797526851461

`A163068(n)-A163148(n)`
-/

namespace A152109.P2209815797526851461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163068 n - A163148 n

end

end A152109.P2209815797526851461

namespace A152109

/-- `A163068(n)-A163148(n)` -/
def P2209815797526851461.Spec : Prop :=
  ∀ n, P2209815797526851461.a n = A152109 n

end A152109

/-! ## A152109.P14616655040147175647

`A163068(n+1)%A163068(n)`
-/

namespace A152109.P14616655040147175647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163068 (n + 1)) (A163068 n)

end

end A152109.P14616655040147175647

namespace A152109

/-- `A163068(n+1)%A163068(n)` -/
def P14616655040147175647.Spec : Prop :=
  ∀ n, P14616655040147175647.a n = A152109 n

end A152109

/-!
# A152110: G.f.: -2*(-2 - 11*x - 4*x^2 + x^3)/(x - 1)^4.

The programs for A152110, the canonical program `A152110.P6665379440970141223` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152110 has offset 0).

The definition of A152110 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152110.P6665379440970141223

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=4, a(1)=38, a(2)=136, a(3)=330`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152110

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P6665379440970141223.Spec : Prop :=
  ∀ n, P6665379440970141223.a n = A152110 n

theorem P6665379440970141223.correct : P6665379440970141223.Spec := by
  intro n
  simp only [A152110]

end A152110

/-! ## A152110.P5175259963345926856

`A152133(2*n+1)`
-/

namespace A152110.P5175259963345926856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152133 (2 * n + 1)

end

end A152110.P5175259963345926856

namespace A152110

/-- `A152133(2*n+1)` -/
def P5175259963345926856.Spec : Prop :=
  ∀ n, P5175259963345926856.a n = A152110 n

end A152110

/-! ## A152110.P568141306462435513

`∑[∑[32*n]+2]+2`
-/

namespace A152110.P568141306462435513
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A152110.P568141306462435513

namespace A152110

/-- `∑[∑[32*n]+2]+2` -/
def P568141306462435513.Spec : Prop :=
  ∀ n, (P568141306462435513.a n : ℤ) = A152110 n

end A152110

/-! ## A152110.P16041149186613718279

`2*(2*C(2*n+3, 3)-n)`
-/

namespace A152110.P16041149186613718279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 * Nat.choose (2 * n + 3) 3 : ℤ) - (n : ℤ))

end

end A152110.P16041149186613718279

namespace A152110

/-- `2*(2*C(2*n+3, 3)-n)` -/
def P16041149186613718279.Spec : Prop :=
  ∀ n, P16041149186613718279.a n = A152110 n

end A152110

/-! ## A152110.P7805639511781555437

`Δ[(C(2*n+1, 3)+1)*(n+2)]`
-/

namespace A152110.P7805639511781555437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 1) 3 + 1) * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A152110.P7805639511781555437

namespace A152110

/-- `Δ[(C(2*n+1, 3)+1)*(n+2)]` -/
def P7805639511781555437.Spec : Prop :=
  ∀ n, P7805639511781555437.a n = A152110 n

end A152110

/-! ## A152110.P13158442620823786281

`abs(A199833(n+1)-2*n)`
-/

namespace A152110.P13158442620823786281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A199833 (n + 1) - (2 * n : ℤ)|

end

end A152110.P13158442620823786281

namespace A152110

/-- `abs(A199833(n+1)-2*n)` -/
def P13158442620823786281.Spec : Prop :=
  ∀ n, P13158442620823786281.a n = A152110 n

end A152110

/-! ## A152110.P15168150307686581133

`2*(A102860(n+2)+n+2)`
-/

namespace A152110.P15168150307686581133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A102860 (n + 2) + (n + 2 : ℤ))

end

end A152110.P15168150307686581133

namespace A152110

/-- `2*(A102860(n+2)+n+2)` -/
def P15168150307686581133.Spec : Prop :=
  ∀ n, P15168150307686581133.a n = A152110 n

end A152110

/-! ## A152110.P6667237371061957906

`2*(A057813(n)+A033951(n))`
-/

namespace A152110.P6667237371061957906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A057813 n + A033951 n)

end

end A152110.P6667237371061957906

namespace A152110

/-- `2*(A057813(n)+A033951(n))` -/
def P6667237371061957906.Spec : Prop :=
  ∀ n, P6667237371061957906.a n = A152110 n

end A152110

/-! ## A152110.P13330529137973593608

`∑[2*(A102083(n)+A008574(n))]`
-/

namespace A152110.P13330529137973593608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A102083 n + A008574 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152110.P13330529137973593608

namespace A152110

/-- `∑[2*(A102083(n)+A008574(n))]` -/
def P13330529137973593608.Spec : Prop :=
  ∀ n, P13330529137973593608.a n = A152110 n

end A152110

/-! ## A152110.P11569510903066554698

`2*(A063523(n+1)+1)`
-/

namespace A152110.P11569510903066554698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A063523 (n + 1) + 1)

end

end A152110.P11569510903066554698

namespace A152110

/-- `2*(A063523(n+1)+1)` -/
def P11569510903066554698.Spec : Prop :=
  ∀ n, P11569510903066554698.a n = A152110 n

end A152110

/-! ## A152110.P4780533612119788173

`2*(A259110(n+1)-n)`
-/

namespace A152110.P4780533612119788173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A259110 (n + 1) - (n : ℤ))

end

end A152110.P4780533612119788173

namespace A152110

/-- `2*(A259110(n+1)-n)` -/
def P4780533612119788173.Spec : Prop :=
  ∀ n, P4780533612119788173.a n = A152110 n

end A152110

/-! ## A152110.P9852137716511803240

`2*(n+2-A136264(n+1))`
-/

namespace A152110.P9852137716511803240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 2 : ℤ) - A136264 (n + 1))

end

end A152110.P9852137716511803240

namespace A152110

/-- `2*(n+2-A136264(n+1))` -/
def P9852137716511803240.Spec : Prop :=
  ∀ n, P9852137716511803240.a n = A152110 n

end A152110

/-! ## A152110.P3178351701536181034

`A006071(2*(n+1))`
-/

namespace A152110.P3178351701536181034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006071 (2 * (n + 1))

end

end A152110.P3178351701536181034

namespace A152110

/-- `A006071(2*(n+1))` -/
def P3178351701536181034.Spec : Prop :=
  ∀ n, P3178351701536181034.a n = A152110 n

end A152110

/-! ## A152110.P14389784085561873633

`2*(A064842(2*(n+1))+n)`
-/

namespace A152110.P14389784085561873633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A064842 (2 * (n + 1)) + (n : ℤ))

end

end A152110.P14389784085561873633

namespace A152110

/-- `2*(A064842(2*(n+1))+n)` -/
def P14389784085561873633.Spec : Prop :=
  ∀ n, P14389784085561873633.a n = A152110 n

end A152110

/-! ## A152110.P13982750223802423474

`∩[A006071(n+1), A152133(n+1)]`
-/

namespace A152110.P13982750223802423474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152110.P13982750223802423474

namespace A152110

/-- `∩[A006071(n+1), A152133(n+1)]` -/
def P13982750223802423474.Spec : Prop :=
  ∀ n, (P13982750223802423474.a n : ℤ) = A152110 n

end A152110

/-! ## A152110.P7339088367634274616

`2*(A084990(A004273(n+1))+n+1)`
-/

namespace A152110.P7339088367634274616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A084990 (A004273 (n + 1)).toNat + (n : ℤ) + 1)

end

end A152110.P7339088367634274616

namespace A152110

/-- `2*(A084990(A004273(n+1))+n+1)` -/
def P7339088367634274616.Spec : Prop :=
  ∀ n, P7339088367634274616.a n = A152110 n

end A152110

/-! ## A152110.P12757440436028792703

`(A008412(2*n+1)-A035597(2*n))/2`
-/

namespace A152110.P12757440436028792703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008412 (2 * n + 1) - A035597 (2 * n) : ℚ) / 2

end

end A152110.P12757440436028792703

namespace A152110

/-- `(A008412(2*n+1)-A035597(2*n))/2` -/
def P12757440436028792703.Spec : Prop :=
  ∀ n, P12757440436028792703.a n = (A152110 n : ℚ)

end A152110

/-! ## A152110.P12116556494615660918

`2*(A000982(2*n+1)+A000330(2*n+1))`
-/

namespace A152110.P12116556494615660918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000982 (2 * n + 1) + A000330 (2 * n + 1))

end

end A152110.P12116556494615660918

namespace A152110

/-- `2*(A000982(2*n+1)+A000330(2*n+1))` -/
def P12116556494615660918.Spec : Prop :=
  ∀ n, P12116556494615660918.a n = A152110 n

end A152110

/-! ## A152110.P11844225979566444276

`A109622(4*n+2)`
-/

namespace A152110.P11844225979566444276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109622 (4 * n + 2)

end

end A152110.P11844225979566444276

namespace A152110

/-- `A109622(4*n+2)` -/
def P11844225979566444276.Spec : Prop :=
  ∀ n, P11844225979566444276.a n = A152110 n

end A152110

/-!
# A152111: An increasing basis of order 3. See Comments for full definition.

The programs for A152111, there is no canonical definition to state claims against.
-/

/-! ## A152111.P7030346989340202064

`eq[0, A342697(A319656(n))]`
-/

namespace A152111.P7030346989340202064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342697 (A319656 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152111.P7030346989340202064

/-! ## A152111.P18301761987223827294

`record[and(n, A033138(A070939(n)))]`
-/

namespace A152111.P18301761987223827294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A033138 (A070939 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152111.P18301761987223827294

/-! ## A152111.P13471878033144813465

`eq[A000120(n), A053829(A030101(n))]`
-/

namespace A152111.P13471878033144813465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A030101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A152111.P13471878033144813465

/-! ## A152111.P6637545597949375445

`record[gcd(A055118(n), A184615(n))]`
-/

namespace A152111.P6637545597949375445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055118 n) (A184615 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152111.P6637545597949375445

/-! ## A152111.P5860454179154077624

`record[and(A011371(n), A033138(n+1))]`
-/

namespace A152111.P5860454179154077624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011371 n) (A033138 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152111.P5860454179154077624

/-!
# A152112: Number of increasing initial sequences of bases of order 3.

The programs for A152112, there is no canonical definition to state claims against.
-/

/-! ## A152112.P12794227411485848549

`∏{e}[2^n, A167810(#)]`
-/

namespace A152112.P12794227411485848549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A167810 (Nat.factorization (f1 n) p)

end

end A152112.P12794227411485848549

/-! ## A152112.P13354833155558703655

`A167810(floor(acot(n)+n))`
-/

namespace A152112.P13354833155558703655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167810 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A152112.P13354833155558703655

/-! ## A152112.P5283377579123992543

`A167810(n^floor(atan(n)))`
-/

namespace A152112.P5283377579123992543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167810 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A152112.P5283377579123992543

/-!
# A152113: A001333 with terms repeated.

The programs for A152113, the canonical program `A152113.P8080247494691833911` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152113 has offset 1).

The definition of A152113 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152113.P8080247494691833911

`2*a(n-2)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152113

/-- `2*a(n-2)+a(n-4)` -/
def P8080247494691833911.Spec : Prop :=
  ∀ n, (P8080247494691833911.a n : ℤ) = A152113 (n + 1)

theorem P8080247494691833911.correct : P8080247494691833911.Spec := by
  intro n
  simp only [A152113, Nat.add_sub_cancel]

end A152113

/-! ## A152113.P14731841994325383544

`A135153(n)+A135153(n+2)`
-/

namespace A152113.P14731841994325383544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 n + A135153 (n + 2)

end

end A152113.P14731841994325383544

namespace A152113

/-- `A135153(n)+A135153(n+2)` -/
def P14731841994325383544.Spec : Prop :=
  ∀ n, P14731841994325383544.a n = A152113 (n + 1)

end A152113

/-! ## A152113.P13499054453470320110

`ogf((1+x+x^2+x^3)/(1-2x^2-x^4))`
-/

namespace A152113.P13499054453470320110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, 1] [1, 0, -2, 0, -1] n

end

end A152113.P13499054453470320110

namespace A152113

/-- `ogf((1+x+x^2+x^3)/(1-2x^2-x^4))` -/
def P13499054453470320110.Spec : Prop :=
  ∀ n, P13499054453470320110.a n = A152113 (n + 1)

end A152113

/-! ## A152113.P2144215142627221289

`or(1, floor((sqrt(2)+1)*a(n-2)))` with `a(0)=1, a(1)=1`
-/

namespace A152113.P2144215142627221289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lor 1 ⌊(Real.sqrt (2 : ℝ) + 1) * (a (n - 2) : ℝ)⌋

end

end A152113.P2144215142627221289

namespace A152113

/-- `or(1, floor((sqrt(2)+1)*a(n-2)))` -/
def P2144215142627221289.Spec : Prop :=
  ∀ n, P2144215142627221289.a n = A152113 (n + 1)

end A152113

/-! ## A152113.P6921695008888294793

`or(1, floor(a(n-2)/(sqrt(2)-1)))` with `a(0)=1, a(1)=1`
-/

namespace A152113.P6921695008888294793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lor 1 ⌊(a (n - 2) : ℝ) / (Real.sqrt (2 : ℝ) - 1)⌋

end

end A152113.P6921695008888294793

namespace A152113

/-- `or(1, floor(a(n-2)/(sqrt(2)-1)))` -/
def P6921695008888294793.Spec : Prop :=
  ∀ n, P6921695008888294793.a n = A152113 (n + 1)

end A152113

/-! ## A152113.P12415154865813484889

`a(n-2)+a(n-2)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=3`
-/

namespace A152113.P12415154865813484889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 3] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 4))

end

end A152113.P12415154865813484889

namespace A152113

/-- `a(n-2)+a(n-2)+a(n-4)` -/
def P12415154865813484889.Spec : Prop :=
  ∀ n, (P12415154865813484889.a n : ℤ) = A152113 (n + 1)

theorem P12415154865813484889.correct : P12415154865813484889.Spec := by
  intro n
  simp only [A152113, Nat.add_sub_cancel, A152113.P12415154865813484889.a, A152113.P8080247494691833911.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A152113

/-! ## A152113.P14779623756264848999

`A155046(or(1, n))`
-/

namespace A152113.P14779623756264848999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155046 (Nat.lor 1 n)

end

end A152113.P14779623756264848999

namespace A152113

/-- `A155046(or(1, n))` -/
def P14779623756264848999.Spec : Prop :=
  ∀ n, P14779623756264848999.a n = A152113 (n + 1)

end A152113

/-! ## A152113.P2451326127094798576

`A078057(floor(n/2))`
-/

namespace A152113.P2451326127094798576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 ⌊(n : ℚ) / 2⌋.toNat

end

end A152113.P2451326127094798576

namespace A152113

/-- `A078057(floor(n/2))` -/
def P2451326127094798576.Spec : Prop :=
  ∀ n, P2451326127094798576.a n = A152113 (n + 1)

end A152113

/-! ## A152113.P10269520402418070262

`A082766(or(1, n)+1)`
-/

namespace A152113.P10269520402418070262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082766 (Nat.lor 1 n + 1)

end

end A152113.P10269520402418070262

namespace A152113

/-- `A082766(or(1, n)+1)` -/
def P10269520402418070262.Spec : Prop :=
  ∀ n, P10269520402418070262.a n = A152113 (n + 1)

end A152113

/-! ## A152113.P2292152760004262854

`A119016(or(1, n)+1)`
-/

namespace A152113.P2292152760004262854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (Nat.lor 1 n + 1)

end

end A152113.P2292152760004262854

namespace A152113

/-- `A119016(or(1, n)+1)` -/
def P2292152760004262854.Spec : Prop :=
  ∀ n, P2292152760004262854.a n = A152113 (n + 1)

end A152113

/-! ## A152113.P15939561459763543072

`A002965(or(1, n+2))`
-/

namespace A152113.P15939561459763543072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (Nat.lor 1 (n + 2))

end

end A152113.P15939561459763543072

namespace A152113

/-- `A002965(or(1, n+2))` -/
def P15939561459763543072.Spec : Prop :=
  ∀ n, P15939561459763543072.a n = A152113 (n + 1)

end A152113

/-! ## A152113.P12165468097926495288

`A001333(∑[char[2*n]])`
-/

namespace A152113.P12165468097926495288
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152113.P12165468097926495288

namespace A152113

/-- `A001333(∑[char[2*n]])` -/
def P12165468097926495288.Spec : Prop :=
  ∀ n, P12165468097926495288.a n = A152113 (n + 1)

end A152113

/-! ## A152113.P8314355627737533920

`A155046(A109613(n))`
-/

namespace A152113.P8314355627737533920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155046 (A109613 n).toNat

end

end A152113.P8314355627737533920

namespace A152113

/-- `A155046(A109613(n))` -/
def P8314355627737533920.Spec : Prop :=
  ∀ n, P8314355627737533920.a n = A152113 (n + 1)

end A152113

/-! ## A152113.P16845769789590262681

`A092550(A168236(n+1))`
-/

namespace A152113.P16845769789590262681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092550 (A168236 (n + 1)).toNat

end

end A152113.P16845769789590262681

namespace A152113

/-- `A092550(A168236(n+1))` -/
def P16845769789590262681.Spec : Prop :=
  ∀ n, P16845769789590262681.a n = A152113 (n + 1)

end A152113

/-! ## A152113.P15267282853558435223

`A002965(A109613(n+2))`
-/

namespace A152113.P15267282853558435223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A109613 (n + 2)).toNat

end

end A152113.P15267282853558435223

namespace A152113

/-- `A002965(A109613(n+2))` -/
def P15267282853558435223.Spec : Prop :=
  ∀ n, P15267282853558435223.a n = A152113 (n + 1)

end A152113

/-! ## A152113.P10487860130157084217

`A082766(A131055(n+2))`
-/

namespace A152113.P10487860130157084217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082766 (A131055 (n + 2)).toNat

end

end A152113.P10487860130157084217

namespace A152113

/-- `A082766(A131055(n+2))` -/
def P10487860130157084217.Spec : Prop :=
  ∀ n, P10487860130157084217.a n = A152113 (n + 1)

end A152113

/-! ## A152113.P4229726361724713214

`A116560(A168301(n+2))`
-/

namespace A152113.P4229726361724713214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116560 (A168301 (n + 2)).toNat

end

end A152113.P4229726361724713214

namespace A152113

/-- `A116560(A168301(n+2))` -/
def P4229726361724713214.Spec : Prop :=
  ∀ n, P4229726361724713214.a n = A152113 (n + 1)

end A152113

/-! ## A152113.P17427365154476256415

`A119016(∑[A033999(n)+1])`
-/

namespace A152113.P17427365154476256415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152113.P17427365154476256415

namespace A152113

/-- `A119016(∑[A033999(n)+1])` -/
def P17427365154476256415.Spec : Prop :=
  ∀ n, P17427365154476256415.a n = A152113 (n + 1)

end A152113

/-! ## A152113.P17905139490123966608

`A097564(A168233(n+2)-2)`
-/

namespace A152113.P17905139490123966608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 (A168233 (n + 2) - 2).toNat

end

end A152113.P17905139490123966608

namespace A152113

/-- `A097564(A168233(n+2)-2)` -/
def P17905139490123966608.Spec : Prop :=
  ∀ n, P17905139490123966608.a n = A152113 (n + 1)

end A152113

/-! ## A152113.P17989565677405471004

`2*A024537(A004526(n))-1`
-/

namespace A152113.P17989565677405471004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024537 (A004526 n).toNat - 1

end

end A152113.P17989565677405471004

namespace A152113

/-- `2*A024537(A004526(n))-1` -/
def P17989565677405471004.Spec : Prop :=
  ∀ n, P17989565677405471004.a n = A152113 (n + 1)

end A152113

/-!
# A152114: Numbers a(n) are obtained by the application of an algorithm which is similar to sieve of Eratosthenes for A000045: retaining A000045(3)=2, we delete all multiples of 2, which are more than 2; retaining A000045(4)=3, we delete all multiples of 3, which are more than 3, etc.

The programs for A152114, there is no canonical definition to state claims against.
-/

/-! ## A152114.P18339509790784387895

`A000045(xor(1, p?[xor(1, n)])+1)`
-/

namespace A152114.P18339509790784387895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + 1)

end

end A152114.P18339509790784387895

/-! ## A152114.P7529740089565807510

`A053602(A073582(n+1))`
-/

namespace A152114.P7529740089565807510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A073582 (n + 1)).toNat

end

end A152114.P7529740089565807510

/-! ## A152114.P1159784105756714705

`A178767(A000040(n+1))`
-/

namespace A152114.P1159784105756714705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178767 (A000040 (n + 1)).toNat

end

end A152114.P1159784105756714705

/-! ## A152114.P4797854811324896091

`A105800(A161344(n+2))`
-/

namespace A152114.P4797854811324896091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105800 (A161344 (n + 2)).toNat

end

end A152114.P4797854811324896091

/-! ## A152114.P6182229108307811829

`A000045(A068499(n+2)+1)`
-/

namespace A152114.P6182229108307811829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A068499 (n + 2) + 1).toNat

end

end A152114.P6182229108307811829

/-! ## A152114.P13128957885507269989

`A105800(A063534(n+1))`
-/

namespace A152114.P13128957885507269989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105800 (A063534 (n + 1)).toNat

end

end A152114.P13128957885507269989

/-!
# A152116: Sixth degree product sequence: a(n) = Product_{k=1..(n-1)/2} (1 + 4*cos(k*Pi/n)^2 + 16*cos(k*Pi/n)^4 + 64*cos(k*Pi/n)^6).

The programs for A152116, there is no canonical definition to state claims against.
-/

/-! ## A152116.P10993044062519711759

`or(A003982(n), A187188(A279218(n)))`
-/

namespace A152116.P10993044062519711759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003982 n) (A187188 (A279218 n).toNat)

end

end A152116.P10993044062519711759

/-! ## A152116.P15903229522485732027

`or(A187188(A279218(n)), A294927(2*(n+2)))`
-/

namespace A152116.P15903229522485732027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A187188 (A279218 n).toNat) (A294927 (2 * (n + 2)))

end

end A152116.P15903229522485732027

/-! ## A152116.P5867098486693754231

`A341141(A298347(n)-(n+1))`
-/

namespace A152116.P5867098486693754231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341141 ((A298347 n - (n + 1 : ℤ)).toNat + 10)

end

end A152116.P5867098486693754231

/-!
# A152117: a(n) = n*(n-th prime) + (n+1)*((n+1)-th prime).

The programs for A152117, the canonical program `A152117.P889453854447432266` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152117 has offset 1).

The definition of A152117 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152117.P889453854447432266

`(n+1)*A000040(n+1)+(n+2)*A000040(n+2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A152117

/-- `(n+1)*A000040(n+1)+(n+2)*A000040(n+2)` -/
def P889453854447432266.Spec : Prop :=
  ∀ n, P889453854447432266.a n = A152117 (n + 1)

theorem P889453854447432266.correct : P889453854447432266.Spec := by
  intro n
  simp only [A152117, Nat.add_sub_cancel]

end A152117

/-! ## A152117.P16867731651987369157

`A097240(n+1)+A001223(n+1)`
-/

namespace A152117.P16867731651987369157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097240 (n + 1) + A001223 (n + 1)

end

end A152117.P16867731651987369157

namespace A152117

/-- `A097240(n+1)+A001223(n+1)` -/
def P16867731651987369157.Spec : Prop :=
  ∀ n, P16867731651987369157.a n = A152117 (n + 1)

theorem P16867731651987369157.correct : P16867731651987369157.Spec := by
  intro n
  simp only [A152117, Nat.add_sub_cancel, A152117.P16867731651987369157.a, A152117.P889453854447432266.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A097240, A097240.P202497919192875445.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A152117

/-! ## A152117.P6902650352836239055

`A033286(n+1)+A033286(n+2)`
-/

namespace A152117.P6902650352836239055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) + A033286 (n + 2)

end

end A152117.P6902650352836239055

namespace A152117

/-- `A033286(n+1)+A033286(n+2)` -/
def P6902650352836239055.Spec : Prop :=
  ∀ n, P6902650352836239055.a n = A152117 (n + 1)

theorem P6902650352836239055.correct : P6902650352836239055.Spec := by
  intro n
  simp only [A152117, Nat.add_sub_cancel, A152117.P6902650352836239055.a, A152117.P889453854447432266.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A033286, A033286.P2794343547372572705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A152117

/-! ## A152117.P12163488448401617053

`A097240(n+1)+Δ[A000040(n+1)]`
-/

namespace A152117.P12163488448401617053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097240 (n + 1) + (f1 (n + 1) - f1 n)

end

end A152117.P12163488448401617053

namespace A152117

/-- `A097240(n+1)+Δ[A000040(n+1)]` -/
def P12163488448401617053.Spec : Prop :=
  ∀ n, P12163488448401617053.a n = A152117 (n + 1)

theorem P12163488448401617053.correct : P12163488448401617053.Spec := by
  intro n
  simp only [A152117, Nat.add_sub_cancel, A152117.P12163488448401617053.f1, A152117.P12163488448401617053.a, A152117.P889453854447432266.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A097240, A097240.P202497919192875445.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A152117

/-! ## A152117.P17492756875934114127

`A097240(n+1)+Δ[A006093(n+1)]`
-/

namespace A152117.P17492756875934114127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097240 (n + 1) + (f1 (n + 1) - f1 n)

end

end A152117.P17492756875934114127

namespace A152117

/-- `A097240(n+1)+Δ[A006093(n+1)]` -/
def P17492756875934114127.Spec : Prop :=
  ∀ n, P17492756875934114127.a n = A152117 (n + 1)

theorem P17492756875934114127.correct : P17492756875934114127.Spec := by
  intro n
  simp only [A152117, Nat.add_sub_cancel, A152117.P17492756875934114127.f1, A152117.P17492756875934114127.a, A152117.P889453854447432266.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A097240, A097240.P202497919192875445.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A152117

/-! ## A152117.P17277067519454347608

`A097240(n+1)+Δ[A008864(n+1)]`
-/

namespace A152117.P17277067519454347608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097240 (n + 1) + (f1 (n + 1) - f1 n)

end

end A152117.P17277067519454347608

namespace A152117

/-- `A097240(n+1)+Δ[A008864(n+1)]` -/
def P17277067519454347608.Spec : Prop :=
  ∀ n, P17277067519454347608.a n = A152117 (n + 1)

theorem P17277067519454347608.correct : P17277067519454347608.Spec := by
  intro n
  simp only [A152117, Nat.add_sub_cancel, A152117.P17277067519454347608.f1, A152117.P17277067519454347608.a, A152117.P889453854447432266.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A097240, A097240.P202497919192875445.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A152117

/-! ## A152117.P14389396067992663544

`A097240(n+1)+Δ[A040976(n+1)]`
-/

namespace A152117.P14389396067992663544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097240 (n + 1) + (f1 (n + 1) - f1 n)

end

end A152117.P14389396067992663544

namespace A152117

/-- `A097240(n+1)+Δ[A040976(n+1)]` -/
def P14389396067992663544.Spec : Prop :=
  ∀ n, P14389396067992663544.a n = A152117 (n + 1)

theorem P14389396067992663544.correct : P14389396067992663544.Spec := by
  intro n
  simp only [A152117, Nat.add_sub_cancel, A152117.P14389396067992663544.f1, A152117.P14389396067992663544.a, A152117.P889453854447432266.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, A097240, A097240.P202497919192875445.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A152117

/-! ## A152117.P9428966732766067921

`∑[A090942(n+2)+A090942(n+1)]+2`
-/

namespace A152117.P9428966732766067921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090942 (n + 2) + A090942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A152117.P9428966732766067921

namespace A152117

/-- `∑[A090942(n+2)+A090942(n+1)]+2` -/
def P9428966732766067921.Spec : Prop :=
  ∀ n, P9428966732766067921.a n = A152117 (n + 1)

end A152117

/-! ## A152117.P17594303793274352013

`A000040(n+2)+(n+1)*A001043(n+1)`
-/

namespace A152117.P17594303793274352013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) + (n + 1 : ℤ) * A001043 (n + 1)

end

end A152117.P17594303793274352013

namespace A152117

/-- `A000040(n+2)+(n+1)*A001043(n+1)` -/
def P17594303793274352013.Spec : Prop :=
  ∀ n, P17594303793274352013.a n = A152117 (n + 1)

theorem P17594303793274352013.correct : P17594303793274352013.Spec := by
  intro n
  simp only [A152117, Nat.add_sub_cancel, A152117.P17594303793274352013.a, A152117.P889453854447432266.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A152117

/-! ## A152117.P5891337430798357465

`A152535(n+1)+A362419(n+1)+A189892(n+2)`
-/

namespace A152117.P5891337430798357465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152535 (n + 1) + (A362419 (n + 1) + A189892 (n + 2))

end

end A152117.P5891337430798357465

namespace A152117

/-- `A152535(n+1)+A362419(n+1)+A189892(n+2)` -/
def P5891337430798357465.Spec : Prop :=
  ∀ n, P5891337430798357465.a n = A152117 (n + 1)

end A152117

/-! ## A152117.P4742490685297445424

`A097240(n+1)+A000040(n+2)-A000040(n+1)`
-/

namespace A152117.P4742490685297445424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097240 (n + 1) + (A000040 (n + 2) - A000040 (n + 1))

end

end A152117.P4742490685297445424

namespace A152117

/-- `A097240(n+1)+A000040(n+2)-A000040(n+1)` -/
def P4742490685297445424.Spec : Prop :=
  ∀ n, P4742490685297445424.a n = A152117 (n + 1)

theorem P4742490685297445424.correct : P4742490685297445424.Spec := by
  intro n
  simp only [A152117, Nat.add_sub_cancel, A152117.P4742490685297445424.a, A152117.P889453854447432266.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A097240, A097240.P202497919192875445.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A152117

/-! ## A152117.P16941281646937117068

`p?[A034707(n+2)]+(n+1)*A001043(n+1)`
-/

namespace A152117.P16941281646937117068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034707 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n + 1 : ℤ) * A001043 (n + 1)

end

end A152117.P16941281646937117068

namespace A152117

/-- `p?[A034707(n+2)]+(n+1)*A001043(n+1)` -/
def P16941281646937117068.Spec : Prop :=
  ∀ n, P16941281646937117068.a n = A152117 (n + 1)

end A152117

/-! ## A152117.P17482597123916541250

`∑{p}[A006094(n+1), #*A000720(#)]`
-/

namespace A152117.P17482597123916541250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℤ) * A000720 p

end

end A152117.P17482597123916541250

namespace A152117

/-- `∑{p}[A006094(n+1), #*A000720(#)]` -/
def P17482597123916541250.Spec : Prop :=
  ∀ n, P17482597123916541250.a n = A152117 (n + 1)

end A152117

/-! ## A152117.P5958596300388381732

`∑{p}[A006094(n+1), #*A049084(#)]`
-/

namespace A152117.P5958596300388381732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℤ) * A049084 p

end

end A152117.P5958596300388381732

namespace A152117

/-- `∑{p}[A006094(n+1), #*A049084(#)]` -/
def P5958596300388381732.Spec : Prop :=
  ∀ n, P5958596300388381732.a n = A152117 (n + 1)

end A152117

/-!
# A152118: a(n) = Product_{k=1..floor((n-1)/2)} (4 + 4*cos(k*Pi/n)^2).

The programs for A152118, the canonical program `A152118.P6150262562706169769` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152118 has offset 0).

The definition of A152118 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152118.P6150262562706169769

`6*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=5, a(4)=6`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152118

/-- `6*a(n-2)-a(n-4)` -/
def P6150262562706169769.Spec : Prop :=
  ∀ n, P6150262562706169769.a n = A152118 n

theorem P6150262562706169769.correct : P6150262562706169769.Spec := by
  intro n
  simp only [A152118]

end A152118

/-! ## A152118.P15293403569081037566

`A041011(abs(1-n))`
-/

namespace A152118.P15293403569081037566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041011 |1 - (n : ℤ)|.toNat

end

end A152118.P15293403569081037566

namespace A152118

/-- `A041011(abs(1-n))` -/
def P15293403569081037566.Spec : Prop :=
  ∀ n, P15293403569081037566.a n = A152118 n

end A152118

/-! ## A152118.P1618630859934210790

`A215928(n)/A040001(n)`
-/

namespace A152118.P1618630859934210790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215928 n : ℚ) / (A040001 n : ℚ)

end

end A152118.P1618630859934210790

namespace A152118

/-- `A215928(n)/A040001(n)` -/
def P1618630859934210790.Spec : Prop :=
  ∀ n, P1618630859934210790.a n = (A152118 n : ℚ)

end A152118

/-! ## A152118.P3524913907223076868

`abs(A215928(n)/A280193(n))`
-/

namespace A152118.P3524913907223076868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A215928 n : ℚ) / (A280193 n : ℚ)|

end

end A152118.P3524913907223076868

namespace A152118

/-- `abs(A215928(n)/A280193(n))` -/
def P3524913907223076868.Spec : Prop :=
  ∀ n, P3524913907223076868.a n = (A152118 n : ℚ)

end A152118

/-! ## A152118.P7511599601459568674

`A215928(n)/(Δ[A065033(n)]+1)`
-/

namespace A152118.P7511599601459568674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215928 n : ℚ) / (f1 (n + 1) - f1 n + 1 : ℚ)

end

end A152118.P7511599601459568674

namespace A152118

/-- `A215928(n)/(Δ[A065033(n)]+1)` -/
def P7511599601459568674.Spec : Prop :=
  ∀ n, P7511599601459568674.a n = (A152118 n : ℚ)

end A152118

/-! ## A152118.P15844764709608330115

`ceil(A215928(n)/A215926(3*(n+1)))`
-/

namespace A152118.P15844764709608330115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A215928 n : ℚ) / (A215926 (3 * (n + 1)) : ℚ)⌉

end

end A152118.P15844764709608330115

namespace A152118

/-- `ceil(A215928(n)/A215926(3*(n+1)))` -/
def P15844764709608330115.Spec : Prop :=
  ∀ n, P15844764709608330115.a n = A152118 n

end A152118

/-! ## A152118.P179678713451786083

`A215928(n)/A133310(Δ[A065033(n)])`
-/

namespace A152118.P179678713451786083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215928 n : ℚ) / (A133310 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A152118.P179678713451786083

namespace A152118

/-- `A215928(n)/A133310(Δ[A065033(n)])` -/
def P179678713451786083.Spec : Prop :=
  ∀ n, P179678713451786083.a n = (A152118 n : ℚ)

end A152118

/-! ## A152118.P9256165017801648123

`A000007(n)+A000129(n)/A000034(n+1)`
-/

namespace A152118.P9256165017801648123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 n : ℚ) + (A000129 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A152118.P9256165017801648123

namespace A152118

/-- `A000007(n)+A000129(n)/A000034(n+1)` -/
def P9256165017801648123.Spec : Prop :=
  ∀ n, P9256165017801648123.a n = (A152118 n : ℚ)

end A152118

/-! ## A152118.P13706593042738743127

`A052542(n)/A000079(n)%6`
-/

namespace A152118.P13706593042738743127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052542 n : ℚ) / (Int.tmod (A000079 n) 6 : ℚ)

end

end A152118.P13706593042738743127

namespace A152118

/-- `A052542(n)/A000079(n)%6` -/
def P13706593042738743127.Spec : Prop :=
  ∀ n, P13706593042738743127.a n = (A152118 n : ℚ)

end A152118

/-! ## A152118.P4491418254044400491

`lcm(4, A052542(n))/4`
-/

namespace A152118.P4491418254044400491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (A052542 n) : ℚ) / 4

end

end A152118.P4491418254044400491

namespace A152118

/-- `lcm(4, A052542(n))/4` -/
def P4491418254044400491.Spec : Prop :=
  ∀ n, P4491418254044400491.a n = (A152118 n : ℚ)

end A152118

/-!
# A152119: a(n) = Product_{k=1..(n-1)/2} (5 + 4*cos(k*Pi/n)^2).

The programs for A152119, the canonical program `A152119.P7709531089762811087` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152119 has offset 0).

The definition of A152119 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152119.P7709531089762811087

`7*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=6, a(4)=7`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152119

/-- `7*a(n-2)-a(n-4)` -/
def P7709531089762811087.Spec : Prop :=
  ∀ n, P7709531089762811087.a n = A152119 n

theorem P7709531089762811087.correct : P7709531089762811087.Spec := by
  intro n
  simp only [A152119]

end A152119

/-! ## A152119.P1620968247679742115

`gcd(A099483(2*n), A099484(comp[2*(n+1)]))`
-/

namespace A152119.P1620968247679742115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099483 (2 * n)) (A099484 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A152119.P1620968247679742115

namespace A152119

/-- `gcd(A099483(2*n), A099484(comp[2*(n+1)]))` -/
def P1620968247679742115.Spec : Prop :=
  ∀ n, (P1620968247679742115.a n : ℤ) = A152119 n

end A152119

/-! ## A152119.P15687413037367338596

`gcd(A004187(n), A099483(A004277(n)))`
-/

namespace A152119.P15687413037367338596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004187 n) (A099483 (A004277 n).toNat)

end

end A152119.P15687413037367338596

namespace A152119

/-- `gcd(A004187(n), A099483(A004277(n)))` -/
def P15687413037367338596.Spec : Prop :=
  ∀ n, (P15687413037367338596.a n : ℤ) = A152119 n

end A152119

/-! ## A152119.P11057880874637701968

`A008620(floor(A212804(3*n+1)/A005247(n)))`
-/

namespace A152119.P11057880874637701968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 ⌊(A212804 (3 * n + 1) : ℚ) / (A005247 n : ℚ)⌋.toNat

end

end A152119.P11057880874637701968

namespace A152119

/-- `A008620(floor(A212804(3*n+1)/A005247(n)))` -/
def P11057880874637701968.Spec : Prop :=
  ∀ n, P11057880874637701968.a n = A152119 n

end A152119

/-!
# A152120: a(n) = 2^n * Product_{k=1..(n-1)/2} (2 + 3*cos(k*Pi/n)^2).

The programs for A152120, the canonical program `A152120.P13496051817675312253` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152120 has offset 0).

The definition of A152120 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152120.P13496051817675312253

`14*a(n-2)-9*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=22, a(4)=56`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152120

/-- `14*a(n-2)-9*a(n-4)` -/
def P13496051817675312253.Spec : Prop :=
  ∀ n, P13496051817675312253.a n = A152120 n

theorem P13496051817675312253.correct : P13496051817675312253.Spec := by
  intro n
  simp only [A152120]

end A152120

/-! ## A152120.P62253626045549875

`A160126(A331398(n+1))`
-/

namespace A152120.P62253626045549875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160126 (A331398 (n + 1)).toNat

end

end A152120.P62253626045549875

namespace A152120

/-- `A160126(A331398(n+1))` -/
def P62253626045549875.Spec : Prop :=
  ∀ n, P62253626045549875.a n = A152120 n

end A152120

/-!
# A152121: a(0) = 4; for n>0, a(n) = a(n-1)^2 - 2^(1+2^(n-1)).

The programs for A152121, the canonical program `A152121.P7074042358979531884` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152121 has offset 0).

The definition of A152121 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152121.P7074042358979531884

`a(n-1)²-2^(1+2^(n-1))` with `a(0)=4`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152121

/-- `a(n-1)²-2^(1+2^(n-1))` -/
def P7074042358979531884.Spec : Prop :=
  ∀ n, P7074042358979531884.a n = (A152121 n : ℝ)

end A152121

/-! ## A152121.P4213642993731950868

`A056236(2^n)`
-/

namespace A152121.P4213642993731950868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056236 (2 ^ n)

end

end A152121.P4213642993731950868

namespace A152121

/-- `A056236(2^n)` -/
def P4213642993731950868.Spec : Prop :=
  ∀ n, P4213642993731950868.a n = A152121 n

end A152121

/-! ## A152121.P1456530592237258132

`A030435(2^(n+1))`
-/

namespace A152121.P1456530592237258132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030435 (2 ^ (n + 1))

end

end A152121.P1456530592237258132

namespace A152121

/-- `A030435(2^(n+1))` -/
def P1456530592237258132.Spec : Prop :=
  ∀ n, P1456530592237258132.a n = A152121 n

end A152121

/-! ## A152121.P18073784100072034757

`2*A006012(2^n)`
-/

namespace A152121.P18073784100072034757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006012 (2 ^ n)

end

end A152121.P18073784100072034757

namespace A152121

/-- `2*A006012(2^n)` -/
def P18073784100072034757.Spec : Prop :=
  ∀ n, P18073784100072034757.a n = A152121 n

end A152121

/-!
# A152122: a(n) = Product_{k=1..(n-1)/2} 1 + 4*cos(k*Pi/n)^2 + 16*cos(k*Pi/n)^4 + 64*cos(k*Pi/n)^6 + 256*cos(k*Pi/n)^8.

The programs for A152122, there is no canonical definition to state claims against.
-/

/-! ## A152122.P16352001051438722643

`A028234(A329345(n+1)+A062569(n))`
-/

namespace A152122.P16352001051438722643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A329345 (n + 1) + A062569 n).toNat

end

end A152122.P16352001051438722643

/-! ## A152122.P9538879692949586477

`A147336(comp[n²]+n)`
-/

namespace A152122.P9538879692949586477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147336 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A152122.P9538879692949586477

/-!
# A152123: 3^a(n) is the order of the free commutative Moufang loop of exponent 3 on n generators.

The programs for A152123, there is no canonical definition to state claims against.
-/

/-! ## A152123.P10520918882732630539

`A013929(A086405(n))`
-/

namespace A152123.P10520918882732630539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (A086405 n).toNat

end

end A152123.P10520918882732630539

/-!
# A152124: Number of partitions of a 2 x n rectangle into connected pieces consisting of unit squares cut along lattice lines (like a 2-d analog of a partition into integers) in which each piece has rotational symmetry.

The programs for A152124, there is no canonical definition to state claims against.
-/

/-! ## A152124.P15829645845275558705

`A026922(A150868(n+1))`
-/

namespace A152124.P15829645845275558705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (A150868 (n + 1)).toNat

end

end A152124.P15829645845275558705

/-!
# A152125: Consider a square grid with side n consisting of n^2 cells (or points); a(n) is the minimal number of points that can be painted black so that, out of any four points forming a square with sides parallel to the sides of the grid, at least one of the four is black.

The programs for A152125, there is no canonical definition to state claims against.
-/

/-! ## A152125.P13960945709989409916

`∑[comp[12*n]-(2-char[n²])]`
-/

namespace A152125.P13960945709989409916
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (2 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152125.P13960945709989409916

/-! ## A152125.P9579767424637956244

`round(∑[log(A132220(n+1))])`
-/

namespace A152125.P9579767424637956244
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A132220 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152125.P9579767424637956244

/-! ## A152125.P12403425567869295721

`floor(∑[log2(A179807(n+2))])`
-/

namespace A152125.P12403425567869295721
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A179807 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A152125.P12403425567869295721

/-! ## A152125.P14714185234100556720

`(n+1)²-A227133(n+1)`
-/

namespace A152125.P14714185234100556720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A227133 (n + 1)

end

end A152125.P14714185234100556720

/-!
# A152126: If f(x) = x^3+x^5+x^11+x^17+x^29+x^41+..., where the exponents are the smaller twin of twin prime pairs, consider {f(x)}^2 and write the exponents of that expansion down : x^6+2x^8+x^10+2x^12+.... The proposed sequence is that sequence of exponents.

The programs for A152126, there is no canonical definition to state claims against.
-/

/-! ## A152126.P8059913774071281308

`A249628(n+1)-2`
-/

namespace A152126.P8059913774071281308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249628 (n + 1) - 2

end

end A152126.P8059913774071281308

/-! ## A152126.P12632257181022272849

`A023444(A249628(n+1))`
-/

namespace A152126.P12632257181022272849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A249628 (n + 1)).toNat

end

end A152126.P12632257181022272849

/-! ## A152126.P17076798967623402311

`A023445(A249628(1+n)+1)`
-/

namespace A152126.P17076798967623402311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A249628 (1 + n) + 1).toNat

end

end A152126.P17076798967623402311

/-! ## A152126.P13829615812717359217

`A023448(A249628(n+1)+4)`
-/

namespace A152126.P13829615812717359217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 (A249628 (n + 1) + 4).toNat

end

end A152126.P13829615812717359217

/-! ## A152126.P5528583572219086660

`A152832(2*A249628(n+1))`
-/

namespace A152126.P5528583572219086660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152832 (2 * A249628 (n + 1)).toNat

end

end A152126.P5528583572219086660

/-! ## A152126.P15026784346230922678

`A004275(A249628(n+1)/2)`
-/

namespace A152126.P15026784346230922678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (SequenceMachineLib.roundAway ((A249628 (n + 1) : ℚ) / 2)).toNat

end

end A152126.P15026784346230922678

/-! ## A152126.P3294705922482907587

`A046666(lcm(2, A249628(n+1)))`
-/

namespace A152126.P3294705922482907587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (Int.lcm 2 (A249628 (n + 1)))

end

end A152126.P3294705922482907587

/-! ## A152126.P14271356094919909523

`(A249628(n+1)+A187797(n+1))%A334160(n+1)`
-/

namespace A152126.P14271356094919909523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249628 (n + 1) + A187797 (n + 1)) (A334160 (n + 1))

end

end A152126.P14271356094919909523

/-!
# A152128: 

The programs for A152128, there is no canonical definition to state claims against.
-/

/-! ## A152128.P15949795914430684071

`A115457(n)-floor(acot(n))`
-/

namespace A152128.P15949795914430684071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115457 n - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A152128.P15949795914430684071

/-! ## A152128.P14688357568479359043

`A115457(n)-A000007(n)`
-/

namespace A152128.P14688357568479359043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115457 n - A000007 n

end

end A152128.P14688357568479359043

/-! ## A152128.P8389891461255173744

`A115457(n)-A151933(n)`
-/

namespace A152128.P8389891461255173744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115457 n - A151933 n

end

end A152128.P8389891461255173744

/-! ## A152128.P5378102481521571643

`A115457(n)%A206308(n)`
-/

namespace A152128.P5378102481521571643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115457 n) (A206308 n)

end

end A152128.P5378102481521571643

/-! ## A152128.P17060994356790175241

`lcm(A001221(n+1), A115457(n))`
-/

namespace A152128.P17060994356790175241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (n + 1)) (A115457 n)

end

end A152128.P17060994356790175241

/-!
# A152129: 

The programs for A152129, there is no canonical definition to state claims against.
-/

/-! ## A152129.P4904565001526698872

`ceil(abs(sin(n)))*A115461(n)`
-/

namespace A152129.P4904565001526698872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.sin (n : ℝ)|⌉ * A115461 n

end

end A152129.P4904565001526698872

/-! ## A152129.P76404347077462565

`A115461(n)-A000007(n)`
-/

namespace A152129.P76404347077462565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115461 n - A000007 n

end

end A152129.P76404347077462565

/-! ## A152129.P13392825238399618610

`A115461(n)%A115457(n)²`
-/

namespace A152129.P13392825238399618610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115461 n) (A115457 n ^ 2)

end

end A152129.P13392825238399618610

/-! ## A152129.P5425138693950115348

`and(-A004396(n), A115461(n))`
-/

namespace A152129.P5425138693950115348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A004396 n) (A115461 n)

end

end A152129.P5425138693950115348

/-! ## A152129.P17147295986460360417

`lcm(A266510(n+1)-n, A115461(n))`
-/

namespace A152129.P17147295986460360417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A266510 (n + 1) - (n : ℤ)) (A115461 n)

end

end A152129.P17147295986460360417

/-!
# A152131: 

The programs for A152131, there is no canonical definition to state claims against.
-/

/-! ## A152131.P12062297604245005597

`and(-2, A115465(n))`
-/

namespace A152131.P12062297604245005597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A115465 n)

end

end A152131.P12062297604245005597

/-! ## A152131.P17534757435069401479

`char[A335975(n)]*A115465(n)`
-/

namespace A152131.P17534757435069401479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335975 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A115465 n

end

end A152131.P17534757435069401479

/-! ## A152131.P4787329111430767146

`A115465(n)+A008683(A335974(n+1))`
-/

namespace A152131.P4787329111430767146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115465 n + A008683 (A335974 (n + 1)).toNat

end

end A152131.P4787329111430767146

/-! ## A152131.P2171256554991290072

`A115465(n)%A000108(A335978(n+1))`
-/

namespace A152131.P2171256554991290072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115465 n) (A000108 (A335978 (n + 1)).toNat)

end

end A152131.P2171256554991290072

/-!
# A152132: Maximal length of rook tour on an n X n+1 board.

The programs for A152132, the canonical program `A152132.P4518160449913239837` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152132 has offset 1).

The definition of A152132 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152132.P4518160449913239837

`2*(n+1)^3/3+(n+1)²-7*(n+1)/6+3/4-(-1)^(n+1)/4-A087960(n+1)/2`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A152132

/-- `2*(n+1)^3/3+(n+1)²-7*(n+1)/6+3/4-(-1)^(n+1)/4-A087960(n+1)/2` -/
def P4518160449913239837.Spec : Prop :=
  ∀ n, P4518160449913239837.a n = (A152132 (n + 1) : ℚ)

end A152132

/-! ## A152132.P5389185944202719244

`∑[2*(A047411(n+1)+n²)]`
-/

namespace A152132.P5389185944202719244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A047411 (n + 1) + (n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152132.P5389185944202719244

namespace A152132

/-- `∑[2*(A047411(n+1)+n²)]` -/
def P5389185944202719244.Spec : Prop :=
  ∀ n, P5389185944202719244.a n = A152132 (n + 1)

end A152132

/-! ## A152132.P1402291652484583894

`∑[2*((n+1)²-A166486(n))]`
-/

namespace A152132.P1402291652484583894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((n + 1) ^ 2 : ℤ) - A166486 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152132.P1402291652484583894

namespace A152132

/-- `∑[2*((n+1)²-A166486(n))]` -/
def P1402291652484583894.Spec : Prop :=
  ∀ n, P1402291652484583894.a n = A152132 (n + 1)

end A152132

/-! ## A152132.P3158952492386268866

`2*(∑[(n+1)²]-A057353(n+1))`
-/

namespace A152132.P3158952492386268866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A057353 (n + 1))

end

end A152132.P3158952492386268866

namespace A152132

/-- `2*(∑[(n+1)²]-A057353(n+1))` -/
def P3158952492386268866.Spec : Prop :=
  ∀ n, P3158952492386268866.a n = A152132 (n + 1)

end A152132

/-! ## A152132.P5520132909775839440

`2*(A008621(n)+∑[A005563(n)])`
-/

namespace A152132.P5520132909775839440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A008621 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152132.P5520132909775839440

namespace A152132

/-- `2*(A008621(n)+∑[A005563(n)])` -/
def P5520132909775839440.Spec : Prop :=
  ∀ n, P5520132909775839440.a n = A152132 (n + 1)

end A152132

/-! ## A152132.P10914421462311128717

`2*(A047732(n)+A004526(A004526(n)))`
-/

namespace A152132.P10914421462311128717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A047732 n + A004526 (A004526 n).toNat)

end

end A152132.P10914421462311128717

namespace A152132

/-- `2*(A047732(n)+A004526(A004526(n)))` -/
def P10914421462311128717.Spec : Prop :=
  ∀ n, P10914421462311128717.a n = A152132 (n + 1)

end A152132

/-! ## A152132.P4769653355224301725

`2*(A011848(n)+∑[A014848(n+1)])`
-/

namespace A152132.P4769653355224301725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A011848 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152132.P4769653355224301725

namespace A152132

/-- `2*(A011848(n)+∑[A014848(n+1)])` -/
def P4769653355224301725.Spec : Prop :=
  ∀ n, P4769653355224301725.a n = A152132 (n + 1)

end A152132

/-! ## A152132.P5330173594642856103

`∑[2*(n+1)²]-A071934(2*(n+1))`
-/

namespace A152132.P5330173594642856103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A071934 (2 * (n + 1))

end

end A152132.P5330173594642856103

namespace A152132

/-- `∑[2*(n+1)²]-A071934(2*(n+1))` -/
def P5330173594642856103.Spec : Prop :=
  ∀ n, P5330173594642856103.a n = A152132 (n + 1)

end A152132

/-! ## A152132.P15467612718430787862

`∑[A188653(2*(n+1))+A164660(n+1)]`
-/

namespace A152132.P15467612718430787862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188653 (2 * (n + 1)) + A164660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152132.P15467612718430787862

namespace A152132

/-- `∑[A188653(2*(n+1))+A164660(n+1)]` -/
def P15467612718430787862.Spec : Prop :=
  ∀ n, P15467612718430787862.a n = A152132 (n + 1)

end A152132

/-!
# A152133: Maximal length of rook tour on an n X n+2 board.

The programs for A152133, the canonical program `A152133.P2673062860309636519` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152133 has offset 1).

The definition of A152133 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152133.P2673062860309636519

`2*(n+1)^3/3+2*(n+1)²+(n+1)/3+3/2+(-1)^(n+1)/2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152133

/-- `2*(n+1)^3/3+2*(n+1)²+(n+1)/3+3/2+(-1)^(n+1)/2` -/
def P2673062860309636519.Spec : Prop :=
  ∀ n, P2673062860309636519.a n = (A152133 (n + 1) : ℚ)

end A152133

/-! ## A152133.P12992034639777463470

`2*(∑[∑[A163980(n+1)]]+1)`
-/

namespace A152133.P12992034639777463470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163980 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A152133.P12992034639777463470

namespace A152133

/-- `2*(∑[∑[A163980(n+1)]]+1)` -/
def P12992034639777463470.Spec : Prop :=
  ∀ n, P12992034639777463470.a n = A152133 (n + 1)

end A152133

/-! ## A152133.P6889941312149647438

`2*(∑[A007310(n+1)+n²]+1)`
-/

namespace A152133.P6889941312149647438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A152133.P6889941312149647438

namespace A152133

/-- `2*(∑[A007310(n+1)+n²]+1)` -/
def P6889941312149647438.Spec : Prop :=
  ∀ n, P6889941312149647438.a n = A152133 (n + 1)

end A152133

/-! ## A152133.P5139963841186993230

`2*(A099392(n+2)+∑[(n+1)²])`
-/

namespace A152133.P5139963841186993230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A099392 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A152133.P5139963841186993230

namespace A152133

/-- `2*(A099392(n+2)+∑[(n+1)²])` -/
def P5139963841186993230.Spec : Prop :=
  ∀ n, P5139963841186993230.a n = A152133 (n + 1)

end A152133

/-!
# A152134: Maximal length of rook tour on an n X n+3 board.

The programs for A152134, the canonical program `A152134.P920986117813902000` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152134 has offset 1).

The definition of A152134 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152134.P920986117813902000

`17*(n+1)/6+3/4+2*(n+1)^3/3+3*(n+1)²+A132429(n+4)/4`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A152134

/-- `17*(n+1)/6+3/4+2*(n+1)^3/3+3*(n+1)²+A132429(n+4)/4` -/
def P920986117813902000.Spec : Prop :=
  ∀ n, P920986117813902000.a n = (A152134 (n + 1) : ℚ)

end A152134

/-! ## A152134.P11284098806814319774

`∑[2*(A047414(n+2)+(n+1)²)]`
-/

namespace A152134.P11284098806814319774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A047414 (n + 2) + ((n + 1) ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152134.P11284098806814319774

namespace A152134

/-- `∑[2*(A047414(n+2)+(n+1)²)]` -/
def P11284098806814319774.Spec : Prop :=
  ∀ n, P11284098806814319774.a n = A152134 (n + 1)

end A152134

/-! ## A152134.P13253642294201375610

`∑[∑[A063218(A066530(n+1))]]`
-/

namespace A152134.P13253642294201375610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063218 (A066530 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152134.P13253642294201375610

namespace A152134

/-- `∑[∑[A063218(A066530(n+1))]]` -/
def P13253642294201375610.Spec : Prop :=
  ∀ n, P13253642294201375610.a n = A152134 (n + 1)

end A152134

/-! ## A152134.P6878876242927059484

`2*(A008621(n)+∑[A005563(n+1)])`
-/

namespace A152134.P6878876242927059484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A008621 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152134.P6878876242927059484

namespace A152134

/-- `2*(A008621(n)+∑[A005563(n+1)])` -/
def P6878876242927059484.Spec : Prop :=
  ∀ n, P6878876242927059484.a n = A152134 (n + 1)

end A152134

/-! ## A152134.P239546651855857483

`∑[∑[A317613(2*n+1)+A005408(n+2)]]`
-/

namespace A152134.P239546651855857483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317613 (2 * n + 1) + A005408 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152134.P239546651855857483

namespace A152134

/-- `∑[∑[A317613(2*n+1)+A005408(n+2)]]` -/
def P239546651855857483.Spec : Prop :=
  ∀ n, P239546651855857483.a n = A152134 (n + 1)

end A152134

/-! ## A152134.P16809126790073512147

`∑[∑[A005843(A116966(n+1)+1+n)]]`
-/

namespace A152134.P16809126790073512147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A116966 (n + 1) + 1 + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152134.P16809126790073512147

namespace A152134

/-- `∑[∑[A005843(A116966(n+1)+1+n)]]` -/
def P16809126790073512147.Spec : Prop :=
  ∀ n, P16809126790073512147.a n = A152134 (n + 1)

end A152134

/-! ## A152134.P15997634650667594993

`∑[A282939(n+1)+∑[4*(n+1)]]`
-/

namespace A152134.P15997634650667594993
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282939 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152134.P15997634650667594993

namespace A152134

/-- `∑[A282939(n+1)+∑[4*(n+1)]]` -/
def P15997634650667594993.Spec : Prop :=
  ∀ n, P15997634650667594993.a n = A152134 (n + 1)

end A152134

/-!
# A152135: Maximal length of rook tour on an n X n+4 board.

The programs for A152135, the canonical program `A152135.P11854048473093832987` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152135 has offset 1).

The definition of A152135 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152135.P11854048473093832987

`19*(n+1)/3+3/2+2*(n+1)^3/3+4*(n+1)²+(-1)^(n+1)/2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152135

/-- `19*(n+1)/3+3/2+2*(n+1)^3/3+4*(n+1)²+(-1)^(n+1)/2` -/
def P11854048473093832987.Spec : Prop :=
  ∀ n, P11854048473093832987.a n = (A152135 (n + 1) : ℚ)

end A152135

/-! ## A152135.P2497026718163778083

`2*(∑[∑[Δ[A085046(n+1)]+1]+2]+1)`
-/

namespace A152135.P2497026718163778083
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A152135.P2497026718163778083

namespace A152135

/-- `2*(∑[∑[Δ[A085046(n+1)]+1]+2]+1)` -/
def P2497026718163778083.Spec : Prop :=
  ∀ n, P2497026718163778083.a n = A152135 (n + 1)

end A152135

/-! ## A152135.P7341165373235575724

`2*(A008619(n+1)+∑[A028387(n+1)])`
-/

namespace A152135.P7341165373235575724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A008619 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152135.P7341165373235575724

namespace A152135

/-- `2*(A008619(n+1)+∑[A028387(n+1)])` -/
def P7341165373235575724.Spec : Prop :=
  ∀ n, P7341165373235575724.a n = A152135 (n + 1)

end A152135

/-!
# A152136: a(0) = 0; thereafter a(n) is always the smallest integer > a(n-1) not leading to a contradiction, such that the concatenation of any two consecutive digits in the sequence is a prime.

The programs for A152136, there is no canonical definition to state claims against.
-/

/-! ## A152136.P12410516324921159066

`A152607(C(2, n²)+n)%A152601(n)`
-/

namespace A152136.P12410516324921159066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152607 (Nat.choose 2 (n ^ 2) + n)) (A152601 n)

end

end A152136.P12410516324921159066

/-! ## A152136.P5366371480759870567

`A152607(or(n, C(3, n²)))%A152601(n)`
-/

namespace A152136.P5366371480759870567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152607 (Nat.lor n (Nat.choose 3 (n ^ 2)))) (A152601 n)

end

end A152136.P5366371480759870567

/-!
# A152138: a(n) is the smallest N such that the {n,n+1}-leaper graph with 2n+1 rows and N columns has a Hamiltonian cycle.

The programs for A152138, there is no canonical definition to state claims against.
-/

/-! ## A152138.P11862236475871454567

`eq[A040001(n), A326404(A038722(n+1))]`
-/

namespace A152138.P11862236475871454567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326404 (A038722 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A152138.P11862236475871454567

/-! ## A152138.P780924494365451693

`lt[A125746(A128710(n)+1), A000005(n+1)]+1`
-/

namespace A152138.P780924494365451693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (A128710 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A152138.P780924494365451693

/-!
# A152140: Triangle read by rows: T(n,k) (n>=0, 0<=k<=n) = number of partitions of n into k odd parts.

The programs for A152140, there is no canonical definition to state claims against.
-/

/-! ## A152140.P12797427665200011545

`A257540(A313822(A342770(n)))`
-/

namespace A152140.P12797427665200011545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257540 (A313822 (A342770 n).toNat).toNat

end

end A152140.P12797427665200011545

/-! ## A152140.P6076691351180678025

`A332761(A136630(n))`
-/

namespace A152140.P6076691351180678025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332761 (A136630 n).toNat

end

end A152140.P6076691351180678025

/-! ## A152140.P16520865921021602556

`A340102(A281442(n))`
-/

namespace A152140.P16520865921021602556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340102 (A281442 n).toNat

end

end A152140.P16520865921021602556

/-! ## A152140.P11106491893405869850

`A078082(A147312(n))`
-/

namespace A152140.P11106491893405869850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078082 (A147312 n).toNat

end

end A152140.P11106491893405869850

/-! ## A152140.P2924052915183771784

`and(A287150(A136630(n)), A352830(2*n+1))`
-/

namespace A152140.P2924052915183771784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A287150 (A136630 n).toNat) (A352830 (2 * n + 1))

end

end A152140.P2924052915183771784

/-!
# A152146: Triangle read by rows: T(n,k) (n >= 0, 0 <= k <= n) = number of partitions of 2n into 2k odd parts.

The programs for A152146, there is no canonical definition to state claims against.
-/

/-! ## A152146.P15853073832844186388

`A072233(A245300(n)+A002262(n))`
-/

namespace A152146.P15853073832844186388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (A245300 n + A002262 n).toNat

end

end A152146.P15853073832844186388

/-! ## A152146.P2355705477429872043

`A152140(A185868(n+1)-1)`
-/

namespace A152146.P2355705477429872043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152140 (A185868 (n + 1) - 1).toNat

end

end A152146.P2355705477429872043

/-! ## A152146.P6368050642381103200

`A152140(A005843(n)+A259361(2*n)²)`
-/

namespace A152146.P6368050642381103200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152140 (A005843 n + A259361 (2 * n) ^ 2).toNat

end

end A152146.P6368050642381103200

/-! ## A152146.P3386410082532981421

`A152140(eq[0, A155998(n)])`
-/

namespace A152146.P3386410082532981421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152140 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A152146.P3386410082532981421

/-! ## A152146.P10630627035182587874

`A152140(eq[0, A099390(n+1)])`
-/

namespace A152146.P10630627035182587874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152140 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A152146.P10630627035182587874

/-!
# A152148: Riordan array [exp(-x/2)(1-2x)^(-1/4),x].

The programs for A152148, there is no canonical definition to state claims against.
-/

/-! ## A152148.P1572998339551997362

`A341936(A152151(n))`
-/

namespace A152148.P1572998339551997362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341936 (A152151 n).toNat

end

end A152148.P1572998339551997362

/-! ## A152148.P16468639072870964834

`A309952(A152151(n)²)`
-/

namespace A152148.P16468639072870964834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 (A152151 n ^ 2).toNat

end

end A152148.P16468639072870964834

/-! ## A152148.P16258468442654291085

`A340327(A152151(n)²)`
-/

namespace A152148.P16258468442654291085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340327 (A152151 n ^ 2).toNat

end

end A152148.P16258468442654291085

/-! ## A152148.P961465343455097664

`A008290(n)*A138121(A336021(n))`
-/

namespace A152148.P961465343455097664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 n * A138121 (A336021 n).toNat

end

end A152148.P961465343455097664

/-!
# A152150: Riordan array [exp(x^2/2+x^4/4),x].

The programs for A152150, there is no canonical definition to state claims against.
-/

/-! ## A152150.P1036991820868606510

`A099174(n)*A163352(A155038(n+1))`
-/

namespace A152150.P1036991820868606510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099174 n * A163352 (A155038 (n + 1)).toNat

end

end A152150.P1036991820868606510

/-! ## A152150.P1990986827388191357

`A000217(A053121(n))*A163352(A155038(n+1))`
-/

namespace A152150.P1990986827388191357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A053121 n).toNat * A163352 (A155038 (n + 1)).toNat

end

end A152150.P1990986827388191357

/-! ## A152150.P5204566551436545145

`A099174(n)*A232551(A288386(n))`
-/

namespace A152150.P5204566551436545145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099174 n * A232551 (A288386 n).toNat

end

end A152150.P5204566551436545145

/-! ## A152150.P9287258734802094383

`A008290(n)%A118551(A147309(n))`
-/

namespace A152150.P9287258734802094383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008290 n) (A118551 (A147309 n).toNat)

end

end A152150.P9287258734802094383

/-! ## A152150.P4584677283852160029

`lcm(A008290(n), A008683(A135892(n)))`
-/

namespace A152150.P4584677283852160029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008290 n) (A008683 (A135892 n).toNat)

end

end A152150.P4584677283852160029

/-!
# A152151: Riordan array [(1-x)exp(x/(1-x)),x].

The programs for A152151, there is no canonical definition to state claims against.
-/

/-! ## A152151.P8257751148100958726

`A007318(n)*A288268(A025581(n))`
-/

namespace A152151.P8257751148100958726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A288268 (A025581 n).toNat

end

end A152151.P8257751148100958726

/-! ## A152151.P14875966582856421182

`abs(A130595(n)*A288268(A025581(n)))`
-/

namespace A152151.P14875966582856421182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n * A288268 (A025581 n).toNat|

end

end A152151.P14875966582856421182

/-! ## A152151.P3750169395581954826

`A341936(A152148(n))`
-/

namespace A152151.P3750169395581954826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341936 (A152148 n).toNat

end

end A152151.P3750169395581954826

/-! ## A152151.P7119018250308665071

`and(A150647(A025581(n)), A154823(3*n+2))`
-/

namespace A152151.P7119018250308665071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A150647 (A025581 n).toNat) (A154823 (3 * n + 2))

end

end A152151.P7119018250308665071

/-!
# A152152: a(n) = Product_{k=1..n} (1 + 4*sin(2*Pi*k/n)^2).

The programs for A152152, the canonical program `A152152.P6350815298251437724` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152152 has offset 0).

The definition of A152152 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152152.P6350815298251437724

`A001350(n)²`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A152152

/-- `A001350(n)²` -/
def P6350815298251437724.Spec : Prop :=
  ∀ n, P6350815298251437724.a n = A152152 n

theorem P6350815298251437724.correct : P6350815298251437724.Spec := by
  intro n
  simp only [A152152]

end A152152

/-! ## A152152.P5449415188472574800

`(1+(-1)^n-A000032(n))²`
-/

namespace A152152.P5449415188472574800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + (-1) ^ n - A000032 n) ^ 2

end

end A152152.P5449415188472574800

namespace A152152

/-- `(1+(-1)^n-A000032(n))²` -/
def P5449415188472574800.Spec : Prop :=
  ∀ n, P5449415188472574800.a n = A152152 n

end A152152

/-! ## A152152.P4595030091040627906

`(1+A000045(n)-2*A000045(n+1)+(-1)^n)²`
-/

namespace A152152.P4595030091040627906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + A000045 n - 2 * A000045 (n + 1) + (-1) ^ n) ^ 2

end

end A152152.P4595030091040627906

namespace A152152

/-- `(1+A000045(n)-2*A000045(n+1)+(-1)^n)²` -/
def P4595030091040627906.Spec : Prop :=
  ∀ n, P4595030091040627906.a n = A152152 n

end A152152

/-! ## A152152.P6160929097901350318

`(abs(floor((-ϕ)^n))-1)²`
-/

namespace A152152.P6160929097901350318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (|⌊(-Real.goldenRatio) ^ n⌋| - 1) ^ 2

end

end A152152.P6160929097901350318

namespace A152152

/-- `(abs(floor((-ϕ)^n))-1)²` -/
def P6160929097901350318.Spec : Prop :=
  ∀ n, P6160929097901350318.a n = A152152 n

end A152152

/-! ## A152152.P9123286145753832249

`∑{d}[n, A324484(#)]`
-/

namespace A152152.P9123286145753832249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A324484 d

end

end A152152.P9123286145753832249

namespace A152152

/-- `∑{d}[n, A324484(#)]` -/
def P9123286145753832249.Spec : Prop :=
  ∀ n, P9123286145753832249.a n = A152152 n

end A152152

/-! ## A152152.P4460477839499622039

`(2-A020878(n))^2`
-/

namespace A152152.P4460477839499622039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A020878 n) ^ 2

end

end A152152.P4460477839499622039

namespace A152152

/-- `(2-A020878(n))^2` -/
def P4460477839499622039.Spec : Prop :=
  ∀ n, P4460477839499622039.a n = A152152 n

theorem P4460477839499622039.correct : P4460477839499622039.Spec := by
  intro n
  simp only [A152152, Nat.add_sub_cancel, A152152.P4460477839499622039.a, A152152.P6350815298251437724.a, A001350, A001350.P9806914175357381787.a, A020878, A020878.P2717610554730428774.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A152152

/-! ## A152152.P7735110752676698395

`∑{d}[n, #*A324485(#)]`
-/

namespace A152152.P7735110752676698395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A324485 d

end

end A152152.P7735110752676698395

namespace A152152

/-- `∑{d}[n, #*A324485(#)]` -/
def P7735110752676698395.Spec : Prop :=
  ∀ n, P7735110752676698395.a n = A152152 n

end A152152

/-! ## A152152.P16719332958059061846

`or(∑{d}[n, A031367(#)]², char[2])`
-/

namespace A152152.P16719332958059061846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ d ∈ Nat.divisors (f1 n), A031367 d) ^ 2) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A152152.P16719332958059061846

namespace A152152

/-- `or(∑{d}[n, A031367(#)]², char[2])` -/
def P16719332958059061846.Spec : Prop :=
  ∀ n, P16719332958059061846.a n = A152152 n

end A152152

/-! ## A152152.P2378305407733729346

`(A098600(n)-1)*A001350(n)`
-/

namespace A152152.P2378305407733729346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A098600 n - 1) * A001350 n

end

end A152152.P2378305407733729346

namespace A152152

/-- `(A098600(n)-1)*A001350(n)` -/
def P2378305407733729346.Spec : Prop :=
  ∀ n, P2378305407733729346.a n = A152152 n

end A152152

/-! ## A152152.P3185830768325029269

`A324487(n)^(2/3)`
-/

namespace A152152.P3185830768325029269
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A324487 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A152152.P3185830768325029269

namespace A152152

/-- `A324487(n)^(2/3)` -/
def P3185830768325029269.Spec : Prop :=
  ∀ n, P3185830768325029269.a n = (A152152 n : ℝ)

end A152152

/-!
# A152153: Positive residues of Pepin's Test for Fermat numbers using the base 3.

The programs for A152153, there is no canonical definition to state claims against.
-/

/-! ## A152153.P3209479135215274473

`(A152155(n)+A000215(n))%A000215(n)`
-/

namespace A152153.P3209479135215274473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152155 n + A000215 n) (A000215 n)

end

end A152153.P3209479135215274473

/-!
# A152154: Positive residues of Pepin's Test for Fermat numbers using either 5 or 10 for the base.

The programs for A152154, there is no canonical definition to state claims against.
-/

/-! ## A152154.P6563394644189277564

`(A152156(n)+A000215(n))%A000215(n)`
-/

namespace A152154.P6563394644189277564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152156 n + A000215 n) (A000215 n)

end

end A152154.P6563394644189277564

/-!
# A152157: Triangle read by rows: T(n,k) (n>=0, 0<=k<=n) = number of partitions of 2n+1 into 2k+1 odd parts.

The programs for A152157, there is no canonical definition to state claims against.
-/

/-! ## A152157.P9371655048565318043

`A008284(A245300(n)+A002260(n+1))`
-/

namespace A152157.P9371655048565318043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A245300 n + A002260 (n + 1)).toNat

end

end A152157.P9371655048565318043

/-! ## A152157.P7800762108123796790

`A008284(A245300(n)+A002262(n)+1)`
-/

namespace A152157.P7800762108123796790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A245300 n + A002262 n + 1).toNat

end

end A152157.P7800762108123796790

/-! ## A152157.P17337318471870535730

`A152140(A185869(n+1))`
-/

namespace A152157.P17337318471870535730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152140 (A185869 (n + 1)).toNat

end

end A152157.P17337318471870535730

/-! ## A152157.P12604417143086173973

`A152140(A038722(n+1)+A016777(n))`
-/

namespace A152157.P12604417143086173973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152140 (A038722 (n + 1) + A016777 n).toNat

end

end A152157.P12604417143086173973

/-! ## A152157.P14312384698699807405

`A097304(A185868(n+1))`
-/

namespace A152157.P14312384698699807405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097304 (A185868 (n + 1)).toNat

end

end A152157.P14312384698699807405

/-!
# A152158: A sequence set up on the first 1000 base ten Pi digits: a(n)=a(n-1)+a(n-2)*Floor[Mod[N[Pi*10^(n - 2), 1000], 10]].

The programs for A152158, there is no canonical definition to state claims against.
-/

/-! ## A152158.P7150040941854708698

`A000196(n)*A000196(A227941(n)²)`
-/

namespace A152158.P7150040941854708698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n * A000196 (A227941 n ^ 2).toNat

end

end A152158.P7150040941854708698

/-!
# A152161: a(n) = 100*n^2 + 100*n + 21.

The programs for A152161, the canonical program `A152161.P9122304770913121613` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152161 has offset 0).

The definition of A152161 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `100*n²+100*n+21` (program `A152161.P9122304770913121613`, by `A152161.P9122304770913121613.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152161.P17454712827528889220

`100*n*(n+1)+21`
-/

namespace A152161.P17454712827528889220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  100 * n * (n + 1) + 21

end

end A152161.P17454712827528889220

namespace A152161

/-- `100*n*(n+1)+21` -/
def P17454712827528889220.Spec : Prop :=
  ∀ n, (P17454712827528889220.a n : ℤ) = A152161 n

theorem P17454712827528889220.correct : P17454712827528889220.Spec := by
  intro n
  simp only [A152161, Nat.add_sub_cancel, A152161.P17454712827528889220.a, A152161.P9122304770913121613.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A152161

/-! ## A152161.P9122304770913121613

`100*n²+100*n+21`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152161

/-- `100*n²+100*n+21` -/
def P9122304770913121613.Spec : Prop :=
  ∀ n, (P9122304770913121613.a n : ℤ) = A152161 n

theorem P9122304770913121613.correct : P9122304770913121613.Spec := by
  intro n
  simp only [A152161]

end A152161

/-! ## A152161.P2088775993843468736

`A017305(n)*A017353(n)`
-/

namespace A152161.P2088775993843468736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n * A017353 n

end

end A152161.P2088775993843468736

namespace A152161

/-- `A017305(n)*A017353(n)` -/
def P2088775993843468736.Spec : Prop :=
  ∀ n, P2088775993843468736.a n = A152161 n

theorem P2088775993843468736.correct : P2088775993843468736.Spec := by
  intro n
  simp only [A152161, Nat.add_sub_cancel, A152161.P2088775993843468736.a, A152161.P9122304770913121613.a, A017305, A017305.P18400868229800390008.a, A017353, A017353.P13300573628236260796.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A152161

/-! ## A152161.P4976280046165338946

`A061037(10*n+3+2)`
-/

namespace A152161.P4976280046165338946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061037 (10 * n + 3 + 2)

end

end A152161.P4976280046165338946

namespace A152161

/-- `A061037(10*n+3+2)` -/
def P4976280046165338946.Spec : Prop :=
  ∀ n, P4976280046165338946.a n = A152161 n

end A152161

/-! ## A152161.P6281495924534586484

`∑[200+a(n-1)]` with `a(0)=21, a(1)=200`
-/

namespace A152161.P6281495924534586484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [21, 200] fun n f1 =>
  200 + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152161.P6281495924534586484

namespace A152161

/-- `∑[200+a(n-1)]` -/
def P6281495924534586484.Spec : Prop :=
  ∀ n, (P6281495924534586484.a n : ℤ) = A152161 n

end A152161

/-! ## A152161.P13091364120689818100

`lcm(A067870(n+1), A322490(n+1))`
-/

namespace A152161.P13091364120689818100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A067870 (n + 1)) (A322490 (n + 1))

end

end A152161.P13091364120689818100

namespace A152161

/-- `lcm(A067870(n+1), A322490(n+1))` -/
def P13091364120689818100.Spec : Prop :=
  ∀ n, (P13091364120689818100.a n : ℤ) = A152161 n

end A152161

/-! ## A152161.P1946021804002757282

`A078371(A016861(n))`
-/

namespace A152161.P1946021804002757282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078371 (A016861 n).toNat

end

end A152161.P1946021804002757282

namespace A152161

/-- `A078371(A016861(n))` -/
def P1946021804002757282.Spec : Prop :=
  ∀ n, P1946021804002757282.a n = A152161 n

end A152161

/-! ## A152161.P16861936917423601567

`A276704(A016897(n))`
-/

namespace A152161.P16861936917423601567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276704 (A016897 n).toNat

end

end A152161.P16861936917423601567

namespace A152161

/-- `A276704(A016897(n))` -/
def P16861936917423601567.Spec : Prop :=
  ∀ n, P16861936917423601567.a n = A152161 n

end A152161

/-! ## A152161.P995494265065478438

`A078371(A016921(n)-n)`
-/

namespace A152161.P995494265065478438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078371 (A016921 n - (n : ℤ)).toNat

end

end A152161.P995494265065478438

namespace A152161

/-- `A078371(A016921(n)-n)` -/
def P995494265065478438.Spec : Prop :=
  ∀ n, P995494265065478438.a n = A152161 n

end A152161

/-! ## A152161.P17946129589220916955

`A028347(5*(2*n+1))`
-/

namespace A152161.P17946129589220916955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028347 (5 * (2 * n + 1))

end

end A152161.P17946129589220916955

namespace A152161

/-- `A028347(5*(2*n+1))` -/
def P17946129589220916955.Spec : Prop :=
  ∀ n, P17946129589220916955.a n = A152161 n

end A152161

/-! ## A152161.P9844643651840042459

`A100451(5*(2*n+1))`
-/

namespace A152161.P9844643651840042459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100451 (5 * (2 * n + 1))

end

end A152161.P9844643651840042459

namespace A152161

/-- `A100451(5*(2*n+1))` -/
def P9844643651840042459.Spec : Prop :=
  ∀ n, P9844643651840042459.a n = A152161 n

end A152161

/-! ## A152161.P16009271886493916707

`A171621(5*(2*n+1))`
-/

namespace A152161.P16009271886493916707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171621 (5 * (2 * n + 1))

end

end A152161.P16009271886493916707

namespace A152161

/-- `A171621(5*(2*n+1))` -/
def P16009271886493916707.Spec : Prop :=
  ∀ n, P16009271886493916707.a n = A152161 n

end A152161

/-! ## A152161.P7283733138438025963

`A249859(5*(2*n+1))`
-/

namespace A152161.P7283733138438025963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249859 (5 * (2 * n + 1))

end

end A152161.P7283733138438025963

namespace A152161

/-- `A249859(5*(2*n+1))` -/
def P7283733138438025963.Spec : Prop :=
  ∀ n, P7283733138438025963.a n = A152161 n

end A152161

/-! ## A152161.P4982074968685533281

`A070262(A017305(n))`
-/

namespace A152161.P4982074968685533281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070262 (A017305 n).toNat

end

end A152161.P4982074968685533281

namespace A152161

/-- `A070262(A017305(n))` -/
def P4982074968685533281.Spec : Prop :=
  ∀ n, P4982074968685533281.a n = A152161 n

end A152161

/-! ## A152161.P7331307434756714382

`A142717(A017317(n))`
-/

namespace A152161.P7331307434756714382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142717 (A017317 n).toNat

end

end A152161.P7331307434756714382

namespace A152161

/-- `A142717(A017317(n))` -/
def P7331307434756714382.Spec : Prop :=
  ∀ n, P7331307434756714382.a n = A152161 n

end A152161

/-! ## A152161.P533292616881320779

`A247829(A164284(n+1))`
-/

namespace A152161.P533292616881320779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247829 (A164284 (n + 1)).toNat

end

end A152161.P533292616881320779

namespace A152161

/-- `A247829(A164284(n+1))` -/
def P533292616881320779.Spec : Prop :=
  ∀ n, P533292616881320779.a n = A152161 n

end A152161

/-! ## A152161.P15808316652377099771

`A265056(A016873(n))`
-/

namespace A152161.P15808316652377099771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 (A016873 n).toNat

end

end A152161.P15808316652377099771

namespace A152161

/-- `A265056(A016873(n))` -/
def P15808316652377099771.Spec : Prop :=
  ∀ n, P15808316652377099771.a n = A152161 n

end A152161

/-! ## A152161.P17650827738419803447

`A341092(A139245(n+1))`
-/

namespace A152161.P17650827738419803447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341092 (A139245 (n + 1)).toNat

end

end A152161.P17650827738419803447

namespace A152161

/-- `A341092(A139245(n+1))` -/
def P17650827738419803447.Spec : Prop :=
  ∀ n, P17650827738419803447.a n = A152161 n

end A152161

/-!
# A152163: a(n) = a(n-1)+a(n-2), n>1 ; a(0)=1, a(1)=-1.

The programs for A152163, the canonical program `A152163.P15912959983015136417` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152163 has offset 0).

The definition of A152163 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)` (program `A152163.P15912959983015136417`, by `A152163.P15912959983015136417.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152163.P15912959983015136417

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=-1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152163

/-- `a(n-1)+a(n-2)` -/
def P15912959983015136417.Spec : Prop :=
  ∀ n, P15912959983015136417.a n = A152163 n

theorem P15912959983015136417.correct : P15912959983015136417.Spec := by
  intro n
  simp only [A152163]

end A152163

/-! ## A152163.P8769731063646040294

`A000045(n+1)-2*A000045(n)`
-/

namespace A152163.P8769731063646040294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - 2 * A000045 n

end

end A152163.P8769731063646040294

namespace A152163

/-- `A000045(n+1)-2*A000045(n)` -/
def P8769731063646040294.Spec : Prop :=
  ∀ n, P8769731063646040294.a n = A152163 n

end A152163

/-! ## A152163.P4049629697690130337

`ogf((-1+2x)/(-1+x+x^2))`
-/

namespace A152163.P4049629697690130337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -1, -1] n

end

end A152163.P4049629697690130337

namespace A152163

/-- `ogf((-1+2x)/(-1+x+x^2))` -/
def P4049629697690130337.Spec : Prop :=
  ∀ n, P4049629697690130337.a n = A152163 n

end A152163

/-! ## A152163.P14037113570913567687

`1-floor(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A152163.P14037113570913567687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  1 - (1 - a (n - 1) - a (n - 2))

end

end A152163.P14037113570913567687

namespace A152163

/-- `1-floor(1-a(n-1)-a(n-2))` -/
def P14037113570913567687.Spec : Prop :=
  ∀ n, P14037113570913567687.a n = A152163 n

theorem P14037113570913567687.correct : P14037113570913567687.Spec := by
  intro n
  simp only [A152163, Nat.add_sub_cancel, A152163.P14037113570913567687.a, A152163.P15912959983015136417.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A152163

/-! ## A152163.P10130171955741666667

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=1, a(1)=-1, a(2)=0`
-/

namespace A152163.P10130171955741666667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 0] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A152163.P10130171955741666667

namespace A152163

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P10130171955741666667.Spec : Prop :=
  ∀ n, P10130171955741666667.a n = A152163 n

end A152163

/-! ## A152163.P14672114329363882570

`1-(A210673(n)+n)`
-/

namespace A152163.P14672114329363882570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A210673 n + (n : ℤ))

end

end A152163.P14672114329363882570

namespace A152163

/-- `1-(A210673(n)+n)` -/
def P14672114329363882570.Spec : Prop :=
  ∀ n, P14672114329363882570.a n = A152163 n

end A152163

/-! ## A152163.P445341110221406485

`2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=-1, a(2)=0`
-/

namespace A152163.P445341110221406485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 0] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A152163.P445341110221406485

namespace A152163

/-- `2*a(n-1)-a(n-3)` -/
def P445341110221406485.Spec : Prop :=
  ∀ n, P445341110221406485.a n = A152163 n

end A152163

/-! ## A152163.P16528631581445210660

`Δ[a(n-1)-(1-a(n-2))]` with `a(0)=0, a(1)=1`
-/

namespace A152163.P16528631581445210660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152163.P16528631581445210660

namespace A152163

/-- `Δ[a(n-1)-(1-a(n-2))]` -/
def P16528631581445210660.Spec : Prop :=
  ∀ n, P16528631581445210660.a n = A152163 n

end A152163

/-! ## A152163.P16766934237399070

`Δ[-A212804(n)]`
-/

namespace A152163.P16766934237399070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152163.P16766934237399070

namespace A152163

/-- `Δ[-A212804(n)]` -/
def P16766934237399070.Spec : Prop :=
  ∀ n, P16766934237399070.a n = A152163 n

end A152163

/-! ## A152163.P361586639428339036

`3-Δ[A037141(n)]`
-/

namespace A152163.P361586639428339036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037141 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f1 (n + 1) - f1 n)

end

end A152163.P361586639428339036

namespace A152163

/-- `3-Δ[A037141(n)]` -/
def P361586639428339036.Spec : Prop :=
  ∀ n, P361586639428339036.a n = A152163 n

end A152163

/-! ## A152163.P6729102629279625836

`-Δ[A000045(abs(1-n))]`
-/

namespace A152163.P6729102629279625836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A152163.P6729102629279625836

namespace A152163

/-- `-Δ[A000045(abs(1-n))]` -/
def P6729102629279625836.Spec : Prop :=
  ∀ n, P6729102629279625836.a n = A152163 n

end A152163

/-! ## A152163.P12777423077015728714

`A212804(n)-A000045(n)`
-/

namespace A152163.P12777423077015728714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n - A000045 n

end

end A152163.P12777423077015728714

namespace A152163

/-- `A212804(n)-A000045(n)` -/
def P12777423077015728714.Spec : Prop :=
  ∀ n, P12777423077015728714.a n = A152163 n

end A152163

/-! ## A152163.P10299383699826060448

`A212804(n)-A212804(n+1)`
-/

namespace A152163.P10299383699826060448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n - A212804 (n + 1)

end

end A152163.P10299383699826060448

namespace A152163

/-- `A212804(n)-A212804(n+1)` -/
def P10299383699826060448.Spec : Prop :=
  ∀ n, P10299383699826060448.a n = A152163 n

end A152163

/-! ## A152163.P7384188081441019986

`A000045(abs(1-n))-A000045(n)`
-/

namespace A152163.P7384188081441019986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - (n : ℤ)|.toNat - A000045 n

end

end A152163.P7384188081441019986

namespace A152163

/-- `A000045(abs(1-n))-A000045(n)` -/
def P7384188081441019986.Spec : Prop :=
  ∀ n, P7384188081441019986.a n = A152163 n

end A152163

/-! ## A152163.P8921230554272705721

`A008346(n)-A181716(n)`
-/

namespace A152163.P8921230554272705721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 n - A181716 n

end

end A152163.P8921230554272705721

namespace A152163

/-- `A008346(n)-A181716(n)` -/
def P8921230554272705721.Spec : Prop :=
  ∀ n, P8921230554272705721.a n = A152163 n

end A152163

/-! ## A152163.P10302376475726168117

`A226956(n)-A286350(n)`
-/

namespace A152163.P10302376475726168117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226956 n - A286350 n

end

end A152163.P10302376475726168117

namespace A152163

/-- `A226956(n)-A286350(n)` -/
def P10302376475726168117.Spec : Prop :=
  ∀ n, P10302376475726168117.a n = A152163 n

end A152163

/-! ## A152163.P4357524034483475036

`Δ[A001611(n)]-A000045(n)`
-/

namespace A152163.P4357524034483475036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000045 n

end

end A152163.P4357524034483475036

namespace A152163

/-- `Δ[A001611(n)]-A000045(n)` -/
def P4357524034483475036.Spec : Prop :=
  ∀ n, P4357524034483475036.a n = A152163 n

end A152163

/-! ## A152163.P4925981518919257113

`Δ[A002062(n)]-A001611(n)`
-/

namespace A152163.P4925981518919257113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001611 n

end

end A152163.P4925981518919257113

namespace A152163

/-- `Δ[A002062(n)]-A001611(n)` -/
def P4925981518919257113.Spec : Prop :=
  ∀ n, P4925981518919257113.a n = A152163 n

end A152163

/-!
# A152166: a(2*n) = 2^n; a(2*n+1) = -(2^(n+1)).

The programs for A152166, the canonical program `A152166.P11103362206813854241` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152166 has offset 0).

The definition of A152166 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152166.P11103362206813854241

`2*a(n-2)` with `a(0)=1, a(1)=-2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152166

/-- `2*a(n-2)` -/
def P11103362206813854241.Spec : Prop :=
  ∀ n, P11103362206813854241.a n = A152166 n

theorem P11103362206813854241.correct : P11103362206813854241.Spec := by
  intro n
  simp only [A152166]

end A152166

/-! ## A152166.P13712854581497319847

`-∏[gcd(2, n)-3]`
-/

namespace A152166.P13712854581497319847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A152166.P13712854581497319847

namespace A152166

/-- `-∏[gcd(2, n)-3]` -/
def P13712854581497319847.Spec : Prop :=
  ∀ n, P13712854581497319847.a n = A152166 n

end A152166

/-! ## A152166.P4333181962235837335

`Δ[ogf(1/(-1+2x^2))]`
-/

namespace A152166.P4333181962235837335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1] [1, 0, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152166.P4333181962235837335

namespace A152166

/-- `Δ[ogf(1/(-1+2x^2))]` -/
def P4333181962235837335.Spec : Prop :=
  ∀ n, P4333181962235837335.a n = A152166 n

end A152166

/-! ## A152166.P10732058991782704326

`ogf((1-2x)/(1-2x^2))`
-/

namespace A152166.P10732058991782704326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, 0, -2] n

end

end A152166.P10732058991782704326

namespace A152166

/-- `ogf((1-2x)/(1-2x^2))` -/
def P10732058991782704326.Spec : Prop :=
  ∀ n, P10732058991782704326.a n = A152166 n

end A152166

/-! ## A152166.P16212294002188179365

`-∏[-(n%2+1)]`
-/

namespace A152166.P16212294002188179365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n % 2 + 1 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A152166.P16212294002188179365

namespace A152166

/-- `-∏[-(n%2+1)]` -/
def P16212294002188179365.Spec : Prop :=
  ∀ n, P16212294002188179365.a n = A152166 n

end A152166

/-! ## A152166.P5856178063630426146

`-∏[-(and(1, n)+1)]`
-/

namespace A152166.P5856178063630426146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.land 1 n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A152166.P5856178063630426146

namespace A152166

/-- `-∏[-(and(1, n)+1)]` -/
def P5856178063630426146.Spec : Prop :=
  ∀ n, P5856178063630426146.a n = A152166 n

end A152166

/-! ## A152166.P1158353492922574456

`-∏[or(n+1, -2)]`
-/

namespace A152166.P1158353492922574456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A152166.P1158353492922574456

namespace A152166

/-- `-∏[or(n+1, -2)]` -/
def P1158353492922574456.Spec : Prop :=
  ∀ n, P1158353492922574456.a n = A152166 n

end A152166

/-! ## A152166.P16072990584920694506

`-∏[2/or(n, -2)]`
-/

namespace A152166.P16072990584920694506
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (Int.lor (n : ℤ) (-2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A152166.P16072990584920694506

namespace A152166

/-- `-∏[2/or(n, -2)]` -/
def P16072990584920694506.Spec : Prop :=
  ∀ n, P16072990584920694506.a n = (A152166 n : ℚ)

end A152166

/-! ## A152166.P15783824614151191176

`-∏[-2^and(1, n)]`
-/

namespace A152166.P15783824614151191176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 ^ Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A152166.P15783824614151191176

namespace A152166

/-- `-∏[-2^and(1, n)]` -/
def P15783824614151191176.Spec : Prop :=
  ∀ n, P15783824614151191176.a n = A152166 n

end A152166

/-! ## A152166.P15413890056816105356

`-∏[char[2*n]-2]`
-/

namespace A152166.P15413890056816105356
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A152166.P15413890056816105356

namespace A152166

/-- `-∏[char[2*n]-2]` -/
def P15413890056816105356.Spec : Prop :=
  ∀ n, P15413890056816105356.a n = A152166 n

end A152166

/-! ## A152166.P17381592065670187196

`∏[abs(a(n-1))-3]` with `a(0)=1`
-/

namespace A152166.P17381592065670187196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  |f1 (n - 1)| - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152166.P17381592065670187196

namespace A152166

/-- `∏[abs(a(n-1))-3]` -/
def P17381592065670187196.Spec : Prop :=
  ∀ n, P17381592065670187196.a n = A152166 n

end A152166

/-! ## A152166.P13843117028882473681

`∏[xor(-2, (n-1)%2)]`
-/

namespace A152166.P13843117028882473681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-2) (Int.tmod ((n : ℤ) - 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152166.P13843117028882473681

namespace A152166

/-- `∏[xor(-2, (n-1)%2)]` -/
def P13843117028882473681.Spec : Prop :=
  ∀ n, P13843117028882473681.a n = A152166 n

end A152166

/-! ## A152166.P15995960454196597254

`∏[dr(a(n-1))-3]` with `a(0)=1`
-/

namespace A152166.P15995960454196597254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (SequenceMachineLib.digitalRoot (f1 (n - 1)) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152166.P15995960454196597254

namespace A152166

/-- `∏[dr(a(n-1))-3]` -/
def P15995960454196597254.Spec : Prop :=
  ∀ n, P15995960454196597254.a n = A152166 n

end A152166

/-! ## A152166.P3751663429146538795

`∏[3%a(n-1)-2]` with `a(0)=1`
-/

namespace A152166.P3751663429146538795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.tmod 3 (f1 (n - 1)) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152166.P3751663429146538795

namespace A152166

/-- `∏[3%a(n-1)-2]` -/
def P3751663429146538795.Spec : Prop :=
  ∀ n, P3751663429146538795.a n = A152166 n

end A152166

/-! ## A152166.P6584483233978762083

`a(n-2)+a(n-2)` with `a(0)=1, a(1)=-2`
-/

namespace A152166.P6584483233978762083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n a =>
  a (n - 2) + a (n - 2)

end

end A152166.P6584483233978762083

namespace A152166

/-- `a(n-2)+a(n-2)` -/
def P6584483233978762083.Spec : Prop :=
  ∀ n, P6584483233978762083.a n = A152166 n

theorem P6584483233978762083.correct : P6584483233978762083.Spec := by
  intro n
  simp only [A152166, Nat.add_sub_cancel, A152166.P6584483233978762083.a, A152166.P11103362206813854241.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A152166

/-! ## A152166.P8064443347775243761

`Δ[a(n-2)-(1-a(n-2))]` with `a(0)=0, a(1)=1`
-/

namespace A152166.P8064443347775243761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152166.P8064443347775243761

namespace A152166

/-- `Δ[a(n-2)-(1-a(n-2))]` -/
def P8064443347775243761.Spec : Prop :=
  ∀ n, P8064443347775243761.a n = A152166 n

end A152166

/-! ## A152166.P9559691419360654677

`a(n-1)/(floor((n-1)/2)-n/2)` with `a(0)=1`
-/

namespace A152166.P9559691419360654677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((⌊((n : ℤ) - 1 : ℚ) / 2⌋ : ℚ) - (n : ℚ) / 2)

end

end A152166.P9559691419360654677

namespace A152166

/-- `a(n-1)/(floor((n-1)/2)-n/2)` -/
def P9559691419360654677.Spec : Prop :=
  ∀ n, P9559691419360654677.a n = (A152166 n : ℚ)

end A152166

/-! ## A152166.P5923785703921564829

`1-floor(1-a(n-2)-a(n-2))` with `a(0)=1, a(1)=-2`

`floor` is left out, it is the identity on integers.
-/

namespace A152166.P5923785703921564829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n a =>
  1 - (1 - a (n - 2) - a (n - 2))

end

end A152166.P5923785703921564829

namespace A152166

/-- `1-floor(1-a(n-2)-a(n-2))` -/
def P5923785703921564829.Spec : Prop :=
  ∀ n, P5923785703921564829.a n = A152166 n

theorem P5923785703921564829.correct : P5923785703921564829.Spec := by
  intro n
  simp only [A152166, Nat.add_sub_cancel, A152166.P5923785703921564829.a, A152166.P11103362206813854241.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A152166

/-! ## A152166.P1427670821200580545

`Δ[-A052552(n)]`
-/

namespace A152166.P1427670821200580545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A052552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152166.P1427670821200580545

namespace A152166

/-- `Δ[-A052552(n)]` -/
def P1427670821200580545.Spec : Prop :=
  ∀ n, P1427670821200580545.a n = A152166 n

end A152166

/-! ## A152166.P17085264015350556994

`Δ[-A077957(n)]`
-/

namespace A152166.P17085264015350556994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A077957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152166.P17085264015350556994

namespace A152166

/-- `Δ[-A077957(n)]` -/
def P17085264015350556994.Spec : Prop :=
  ∀ n, P17085264015350556994.a n = A152166 n

end A152166

/-!
# A152167: a(n)=-a(n-1)+3*a(n-2), n>1 ; a(0)=1, a(1)=-3 .

The programs for A152167, the canonical program `A152167.P14971680503400531231` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152167 has offset 0).

The definition of A152167 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-a(n-1)+3*a(n-2)` (program `A152167.P14971680503400531231`, by `A152167.P14971680503400531231.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152167.P14971680503400531231

`-a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=-3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152167

/-- `-a(n-1)+3*a(n-2)` -/
def P14971680503400531231.Spec : Prop :=
  ∀ n, P14971680503400531231.a n = A152167 n

theorem P14971680503400531231.correct : P14971680503400531231.Spec := by
  intro n
  simp only [A152167]

end A152167

/-! ## A152167.P2244906489104834007

`(-1)^n*A105476(n+1)`
-/

namespace A152167.P2244906489104834007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A105476 (n + 1)

end

end A152167.P2244906489104834007

namespace A152167

/-- `(-1)^n*A105476(n+1)` -/
def P2244906489104834007.Spec : Prop :=
  ∀ n, P2244906489104834007.a n = A152167 n

end A152167

/-! ## A152167.P2072914501088339096

`ogf((1-2x)/(1+x-3x^2))`
-/

namespace A152167.P2072914501088339096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, 1, -3] n

end

end A152167.P2072914501088339096

namespace A152167

/-- `ogf((1-2x)/(1+x-3x^2))` -/
def P2072914501088339096.Spec : Prop :=
  ∀ n, P2072914501088339096.a n = A152167 n

end A152167

/-! ## A152167.P11952796477507611499

`3*a(n-2)-a(n-1)` with `a(0)=1, a(1)=-3`
-/

namespace A152167.P11952796477507611499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -3] fun n a =>
  3 * a (n - 2) - a (n - 1)

end

end A152167.P11952796477507611499

namespace A152167

/-- `3*a(n-2)-a(n-1)` -/
def P11952796477507611499.Spec : Prop :=
  ∀ n, P11952796477507611499.a n = A152167 n

end A152167

/-! ## A152167.P6710981586123096502

`a(n-2)+a(n-2)+a(n-2)-a(n-1)` with `a(0)=1, a(1)=-3`
-/

namespace A152167.P6710981586123096502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -3] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 2) - a (n - 1)))

end

end A152167.P6710981586123096502

namespace A152167

/-- `a(n-2)+a(n-2)+a(n-2)-a(n-1)` -/
def P6710981586123096502.Spec : Prop :=
  ∀ n, P6710981586123096502.a n = A152167 n

end A152167

/-! ## A152167.P6476859055399247888

`a(n-2)-(a(n-1)-a(n-2)-a(n-2))` with `a(0)=1, a(1)=-3`
-/

namespace A152167.P6476859055399247888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -3] fun n a =>
  a (n - 2) - (a (n - 1) - a (n - 2) - a (n - 2))

end

end A152167.P6476859055399247888

namespace A152167

/-- `a(n-2)-(a(n-1)-a(n-2)-a(n-2))` -/
def P6476859055399247888.Spec : Prop :=
  ∀ n, P6476859055399247888.a n = A152167 n

end A152167

/-! ## A152167.P2898834609592548479

`(-1)^n*Δ[A006138(n)]`
-/

namespace A152167.P2898834609592548479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (f1 (n + 1) - f1 n)

end

end A152167.P2898834609592548479

namespace A152167

/-- `(-1)^n*Δ[A006138(n)]` -/
def P2898834609592548479.Spec : Prop :=
  ∀ n, P2898834609592548479.a n = A152167 n

end A152167

/-! ## A152167.P913546118713221941

`Δ[(3-2*gcd(2, n))*A052533(n)]`
-/

namespace A152167.P913546118713221941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (2 * Nat.gcd 2 n : ℤ)) * A052533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152167.P913546118713221941

namespace A152167

/-- `Δ[(3-2*gcd(2, n))*A052533(n)]` -/
def P913546118713221941.Spec : Prop :=
  ∀ n, P913546118713221941.a n = A152167 n

end A152167

/-! ## A152167.P15472574743462924533

`Δ[A182228(n)]-A182228(n)`
-/

namespace A152167.P15472574743462924533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182228 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A182228 n

end

end A152167.P15472574743462924533

namespace A152167

/-- `Δ[A182228(n)]-A182228(n)` -/
def P15472574743462924533.Spec : Prop :=
  ∀ n, P15472574743462924533.a n = A152167 n

end A152167

/-! ## A152167.P6313239778000278371

`Δ[A006138(n)]*A033999(n)`
-/

namespace A152167.P6313239778000278371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 n

end

end A152167.P6313239778000278371

namespace A152167

/-- `Δ[A006138(n)]*A033999(n)` -/
def P6313239778000278371.Spec : Prop :=
  ∀ n, P6313239778000278371.a n = A152167 n

end A152167

/-! ## A152167.P10804387280727553790

`Δ[A006138(n)]*A009001(2*n)`
-/

namespace A152167.P10804387280727553790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A009001 (2 * n)

end

end A152167.P10804387280727553790

namespace A152167

/-- `Δ[A006138(n)]*A009001(2*n)` -/
def P10804387280727553790.Spec : Prop :=
  ∀ n, P10804387280727553790.a n = A152167 n

end A152167

/-! ## A152167.P6699106390270425732

`A182228(n)-A182228(n+2)`
-/

namespace A152167.P6699106390270425732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182228 n - A182228 (n + 2)

end

end A152167.P6699106390270425732

namespace A152167

/-- `A182228(n)-A182228(n+2)` -/
def P6699106390270425732.Spec : Prop :=
  ∀ n, P6699106390270425732.a n = A152167 n

end A152167

/-! ## A152167.P4972932501331778985

`A182228(n)+A140167(n+2)`
-/

namespace A152167.P4972932501331778985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182228 n + A140167 (n + 2)

end

end A152167.P4972932501331778985

namespace A152167

/-- `A182228(n)+A140167(n+2)` -/
def P4972932501331778985.Spec : Prop :=
  ∀ n, P4972932501331778985.a n = A152167 n

end A152167

/-! ## A152167.P15681747303168888928

`Δ[A006138(n)]/A033999(n²)`
-/

namespace A152167.P15681747303168888928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006138 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A033999 (n ^ 2) : ℚ)

end

end A152167.P15681747303168888928

namespace A152167

/-- `Δ[A006138(n)]/A033999(n²)` -/
def P15681747303168888928.Spec : Prop :=
  ∀ n, P15681747303168888928.a n = (A152167 n : ℚ)

end A152167

/-!
# A152168: Number of binary digits in (n!)!.

The programs for A152168, there is no canonical definition to state claims against.
-/

/-! ## A152168.P14759898840148835020

`A072831(n!)`
-/

namespace A152168.P14759898840148835020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072831 (Nat.factorial n)

end

end A152168.P14759898840148835020

/-! ## A152168.P9283677383743107471

`A067850(n!)+1`
-/

namespace A152168.P9283677383743107471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067850 (Nat.factorial n) + 1

end

end A152168.P9283677383743107471

/-! ## A152168.P16502809070524417943

`A072831(∏[round(1/acot(n))])`
-/

namespace A152168.P16502809070524417943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072831 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152168.P16502809070524417943

/-! ## A152168.P9954725697968046397

`A072831(∏[ceil(abs(γ-n))])`
-/

namespace A152168.P9954725697968046397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072831 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152168.P9954725697968046397

/-!
# A152169: Number of positions that are exactly n moves from the starting position in the 2 X 2 X 2 Rubik cube puzzle using only one-way quarter moves.

The programs for A152169, there is no canonical definition to state claims against.
-/

/-! ## A152169.P5268785872095952799

`∑[∑[A000006(A004148(2*n+1))]]`
-/

namespace A152169.P5268785872095952799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A004148 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152169.P5268785872095952799

/-! ## A152169.P13747633181153300987

`A278496(A361844(n))+A000081(n)`
-/

namespace A152169.P13747633181153300987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278496 (A361844 n).toNat + A000081 n

end

end A152169.P13747633181153300987

/-!
# A152170: a(n) is the total size of all the image sets of all functions from [n] to [n]. I.e., a(n) is the sum of the cardinalities of every image set of every function whose domain and co-domain is {1,2,...,n}.

The programs for A152170, the canonical program `A152170.P555791724256594392` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152170 has offset 0).

The definition of A152170 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152170.P555791724256594392

`n*(n^n-(n-1)^n)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152170

/-- `n*(n^n-(n-1)^n)` -/
def P555791724256594392.Spec : Prop :=
  ∀ n, P555791724256594392.a n = A152170 n

theorem P555791724256594392.correct : P555791724256594392.Spec := by
  intro n
  simp only [A152170]

end A152170

/-! ## A152170.P5892565072430961303

`lcm(n, record[A246049(n+1)])`
-/

namespace A152170.P5892565072430961303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246049 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A152170.P5892565072430961303

namespace A152170

/-- `lcm(n, record[A246049(n+1)])` -/
def P5892565072430961303.Spec : Prop :=
  ∀ n, (P5892565072430961303.a n : ℤ) = A152170 n

end A152170

/-! ## A152170.P17645409069048437032

`A085283(n)-A065440(n)`
-/

namespace A152170.P17645409069048437032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085283 n - A065440 n

end

end A152170.P17645409069048437032

namespace A152170

/-- `A085283(n)-A065440(n)` -/
def P17645409069048437032.Spec : Prop :=
  ∀ n, P17645409069048437032.a n = A152170 n

theorem P17645409069048437032.correct : P17645409069048437032.Spec := by
  intro n
  simp only [A152170, Nat.add_sub_cancel, A152170.P17645409069048437032.a, A152170.P555791724256594392.a, A065440, A065440.P10983116689325036244.a, A085283, A085283.P5394755465249716377.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A152170

/-! ## A152170.P10182618010848354352

`lcm(n, A045531(A028310(n)))`
-/

namespace A152170.P10182618010848354352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A045531 (A028310 n).toNat)

end

end A152170.P10182618010848354352

namespace A152170

/-- `lcm(n, A045531(A028310(n)))` -/
def P10182618010848354352.Spec : Prop :=
  ∀ n, (P10182618010848354352.a n : ℤ) = A152170 n

end A152170

/-! ## A152170.P18366173780590508161

`record[A003056(n)*A246049(n)]`
-/

namespace A152170.P18366173780590508161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n * A246049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152170.P18366173780590508161

namespace A152170

/-- `record[A003056(n)*A246049(n)]` -/
def P18366173780590508161.Spec : Prop :=
  ∀ n, P18366173780590508161.a n = A152170 n

end A152170

/-! ## A152170.P10744502746047721994

`A007778(n)-n*A065440(n)`
-/

namespace A152170.P10744502746047721994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007778 n - (n : ℤ) * A065440 n

end

end A152170.P10744502746047721994

namespace A152170

/-- `A007778(n)-n*A065440(n)` -/
def P10744502746047721994.Spec : Prop :=
  ∀ n, P10744502746047721994.a n = A152170 n

theorem P10744502746047721994.correct : P10744502746047721994.Spec := by
  intro n
  simp only [A152170, Nat.add_sub_cancel, A152170.P10744502746047721994.a, A152170.P555791724256594392.a, A007778, A007778.P16810824566142427032.a, A065440, A065440.P10983116689325036244.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A152170

/-!
# A152171: G.f. := (1-sqrt(1-4*x+4*x^2-4*x^3))/(2(1-x+x^2)x).

The programs for A152171, there is no canonical definition to state claims against.
-/

/-! ## A152171.P10385546411548822518

`round(root(A350751(3*n), 7))`
-/

namespace A152171.P10385546411548822518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A350751 (3 * n) : ℝ) ^ (1 / (7 : ℝ)))

end

end A152171.P10385546411548822518

/-! ## A152171.P4995596339178385323

`A024417(A135310(n)-A334484(n))`
-/

namespace A152171.P4995596339178385323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A135310 n - A334484 n).toNat

end

end A152171.P4995596339178385323

/-! ## A152171.P10984531521043920556

`A325353(A025065(2*n+1)-A260124(n))`
-/

namespace A152171.P10984531521043920556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325353 (A025065 (2 * n + 1) - A260124 n).toNat

end

end A152171.P10984531521043920556

/-! ## A152171.P2496282429937799577

`A351290(A306721(n+2))+A000931(3*n)`
-/

namespace A152171.P2496282429937799577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351290 (A306721 (n + 2)).toNat + A000931 (3 * n)

end

end A152171.P2496282429937799577

/-!
# A152172: a(n) is the number of Dyck paths of semilength n without height of peaks 0 (mod 3) and height of valleys 1 (mod 3).

The programs for A152172, there is no canonical definition to state claims against.
-/

/-! ## A152172.P17065575974934915141

`A086625(abs(ceil(n*sin(11))))`
-/

namespace A152172.P17065575974934915141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086625 |⌈(n : ℝ) * Real.sin (11 : ℝ)⌉|.toNat

end

end A152172.P17065575974934915141

/-! ## A152172.P13131755680367276880

`A086625(n-ceil(abs(sin(n))))`
-/

namespace A152172.P13131755680367276880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086625 ((n : ℤ) - ⌈|Real.sin (n : ℝ)|⌉).toNat

end

end A152172.P13131755680367276880

/-! ## A152172.P12775450163553563928

`A086625((n-1)%(n+1))`
-/

namespace A152172.P12775450163553563928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086625 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A152172.P12775450163553563928

/-! ## A152172.P17864122128573035971

`A086625(log2(ceil(2^(n-1))))`
-/

namespace A152172.P17864122128573035971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086625 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

end

end A152172.P17864122128573035971

/-! ## A152172.P2566419180111008993

`A025243(n+1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A152172.P2566419180111008993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A025243 (n + 1) + a (n - 1)

end

end A152172.P2566419180111008993

/-! ## A152172.P11357983613513850930

`∑[A025243(n+1)%A025238(n+1)]`
-/

namespace A152172.P11357983613513850930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025243 (n + 1)) (A025238 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152172.P11357983613513850930

/-!
# A152173: a(n) is the number of Dyck paths of length n without height of peaks 1 (mod 3) and height of valleys 2 (mod 3).

The programs for A152173, there is no canonical definition to state claims against.
-/

/-! ## A152173.P5710110941885422055

`A127389(n+1)`
-/

namespace A152173.P5710110941885422055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127389 (n + 1)

end

end A152173.P5710110941885422055

/-! ## A152173.P8144380534298746817

`A025243(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A152173.P8144380534298746817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025243 (n + 2) - a (n - 1)

end

end A152173.P8144380534298746817

/-! ## A152173.P15513374906801261226

`A263316(n+1)+A263316(n)`
-/

namespace A152173.P15513374906801261226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263316 (n + 1) + A263316 n

end

end A152173.P15513374906801261226

/-! ## A152173.P4505704014613084033

`A273349(∑[n-1]+3)-a(n-1)` with `a(0)=1`
-/

namespace A152173.P4505704014613084033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273349 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat - a (n - 1)

end

end A152173.P4505704014613084033

/-! ## A152173.P4125825708592242101

`abs(a(n-1)-A273349(3-∑[1-n]))` with `a(0)=1`
-/

namespace A152173.P4125825708592242101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) - A273349 (3 - ∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A152173.P4125825708592242101

/-!
# A152174: a(n) = -2*a(n-1)+4*a(n-2), n>1 ; a(0) = 1, a(1) = -4.

The programs for A152174, the canonical program `A152174.P5260135789818931454` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152174 has offset 0).

The definition of A152174 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-2*a(n-1)+4*a(n-2)` (program `A152174.P5260135789818931454`, by `A152174.P5260135789818931454.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152174.P5260135789818931454

`-2*a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=-4`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152174

/-- `-2*a(n-1)+4*a(n-2)` -/
def P5260135789818931454.Spec : Prop :=
  ∀ n, P5260135789818931454.a n = A152174 n

theorem P5260135789818931454.correct : P5260135789818931454.Spec := by
  intro n
  simp only [A152174]

end A152174

/-! ## A152174.P7593574203410622721

`(-1)^n*A087206(n)`
-/

namespace A152174.P7593574203410622721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A087206 n

end

end A152174.P7593574203410622721

namespace A152174

/-- `(-1)^n*A087206(n)` -/
def P7593574203410622721.Spec : Prop :=
  ∀ n, P7593574203410622721.a n = A152174 n

end A152174

/-! ## A152174.P13126057363335128396

`ogf((1-2x)/(1+2x-4x^2))`
-/

namespace A152174.P13126057363335128396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, 2, -4] n

end

end A152174.P13126057363335128396

namespace A152174

/-- `ogf((1-2x)/(1+2x-4x^2))` -/
def P13126057363335128396.Spec : Prop :=
  ∀ n, P13126057363335128396.a n = A152174 n

end A152174

/-! ## A152174.P5038734547453511522

`2*(2*a(n-2)-a(n-1))` with `a(0)=1, a(1)=-4`
-/

namespace A152174.P5038734547453511522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -4] fun n a =>
  2 * (2 * a (n - 2) - a (n - 1))

end

end A152174.P5038734547453511522

namespace A152174

/-- `2*(2*a(n-2)-a(n-1))` -/
def P5038734547453511522.Spec : Prop :=
  ∀ n, P5038734547453511522.a n = A152174 n

end A152174

/-! ## A152174.P577837359912675869

`Δ[-A086344(n)]`
-/

namespace A152174.P577837359912675869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A086344 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152174.P577837359912675869

namespace A152174

/-- `Δ[-A086344(n)]` -/
def P577837359912675869.Spec : Prop :=
  ∀ n, P577837359912675869.a n = A152174 n

end A152174

/-! ## A152174.P8451155297314982982

`(-2)^n*A000045(n+2)`
-/

namespace A152174.P8451155297314982982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n * A000045 (n + 2)

end

end A152174.P8451155297314982982

namespace A152174

/-- `(-2)^n*A000045(n+2)` -/
def P8451155297314982982.Spec : Prop :=
  ∀ n, P8451155297314982982.a n = A152174 n

end A152174

/-! ## A152174.P13673249777306718562

`(-2)^n*record[Δ[A000045(n)]]`
-/

namespace A152174.P13673249777306718562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152174.P13673249777306718562

namespace A152174

/-- `(-2)^n*record[Δ[A000045(n)]]` -/
def P13673249777306718562.Spec : Prop :=
  ∀ n, P13673249777306718562.a n = A152174 n

end A152174

/-! ## A152174.P9883213415378884126

`(-2)^n*record[A000045(abs(1-n))]`
-/

namespace A152174.P9883213415378884126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152174.P9883213415378884126

namespace A152174

/-- `(-2)^n*record[A000045(abs(1-n))]` -/
def P9883213415378884126.Spec : Prop :=
  ∀ n, P9883213415378884126.a n = A152174 n

end A152174

/-! ## A152174.P11303235320169111138

`A086344(n)-A086344(n+1)`
-/

namespace A152174.P11303235320169111138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086344 n - A086344 (n + 1)

end

end A152174.P11303235320169111138

namespace A152174

/-- `A086344(n)-A086344(n+1)` -/
def P11303235320169111138.Spec : Prop :=
  ∀ n, P11303235320169111138.a n = A152174 n

end A152174

/-! ## A152174.P18279314580493751748

`A000045(n+2)*A122803(n)`
-/

namespace A152174.P18279314580493751748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * A122803 n

end

end A152174.P18279314580493751748

namespace A152174

/-- `A000045(n+2)*A122803(n)` -/
def P18279314580493751748.Spec : Prop :=
  ∀ n, P18279314580493751748.a n = A152174 n

end A152174

/-! ## A152174.P10025449226958931475

`Δ[A119282(n+1)]*A000079(n)`
-/

namespace A152174.P10025449226958931475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A152174.P10025449226958931475

namespace A152174

/-- `Δ[A119282(n+1)]*A000079(n)` -/
def P10025449226958931475.Spec : Prop :=
  ∀ n, P10025449226958931475.a n = A152174 n

end A152174

/-! ## A152174.P14340302475556496477

`A000045(n+2)*A117575(2*n+1)`
-/

namespace A152174.P14340302475556496477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * A117575 (2 * n + 1)

end

end A152174.P14340302475556496477

namespace A152174

/-- `A000045(n+2)*A117575(2*n+1)` -/
def P14340302475556496477.Spec : Prop :=
  ∀ n, P14340302475556496477.a n = A152174 n

end A152174

/-! ## A152174.P6400281624136951932

`A009116(2*n+1)*A333378(n+2)`
-/

namespace A152174.P6400281624136951932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 (2 * n + 1) * A333378 (n + 2)

end

end A152174.P6400281624136951932

namespace A152174

/-- `A009116(2*n+1)*A333378(n+2)` -/
def P6400281624136951932.Spec : Prop :=
  ∀ n, P6400281624136951932.a n = A152174 n

end A152174

/-! ## A152174.P9606355505705550513

`A101501(n+1)-A101502(n+1)`
-/

namespace A152174.P9606355505705550513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101501 (n + 1) - A101502 (n + 1)

end

end A152174.P9606355505705550513

namespace A152174

/-- `A101501(n+1)-A101502(n+1)` -/
def P9606355505705550513.Spec : Prop :=
  ∀ n, P9606355505705550513.a n = A152174 n

end A152174

/-!
# A152175: Triangle read by rows: T(n,k) is the number of k-block partitions of an n-set up to rotations.

The programs for A152175, there is no canonical definition to state claims against.
-/

/-! ## A152175.P5862139076858130160

`2*A152176(n+1)-A304972(n+1)`
-/

namespace A152175.P5862139076858130160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152176 (n + 1) - A304972 (n + 1)

end

end A152175.P5862139076858130160

/-! ## A152175.P13917300737033197050

`A054722(∑[char[∑[n]]]²-n)`
-/

namespace A152175.P13917300737033197050
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054722 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A152175.P13917300737033197050

/-! ## A152175.P18086231951201826676

`A320647(n+1)+A152176(n+1)`
-/

namespace A152175.P18086231951201826676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320647 (n + 1) + A152176 (n + 1)

end

end A152175.P18086231951201826676

/-! ## A152175.P7222867133766204867

`A304972(n+1)+2*A320647(n+1)`
-/

namespace A152175.P7222867133766204867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304972 (n + 1) + 2 * A320647 (n + 1)

end

end A152175.P7222867133766204867

/-! ## A152175.P18210549241685355169

`A152176(n+1)+(A152176(n+1)+A008277(n+1))%A284949(n+1)`
-/

namespace A152175.P18210549241685355169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152176 (n + 1) + Int.tmod (A152176 (n + 1) + A008277 (n + 1)) (A284949 (n + 1))

end

end A152175.P18210549241685355169

/-! ## A152175.P6013053932757510309

`A004277(A152176(n+1))-A304972(n+1)`
-/

namespace A152175.P6013053932757510309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A152176 (n + 1)).toNat - A304972 (n + 1)

end

end A152175.P6013053932757510309

/-!
# A152176: Triangle read by rows: T(n,k) is the number of k-block partitions of an n-set up to rotations and reflections.

The programs for A152176, there is no canonical definition to state claims against.
-/

/-! ## A152176.P9069839741476243132

`(A304972(n+1)+A152175(n+1))/2`
-/

namespace A152176.P9069839741476243132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304972 (n + 1) + A152175 (n + 1) : ℚ) / 2

end

end A152176.P9069839741476243132

/-! ## A152176.P6220857138217927379

`A320647(n+1)+A304972(n+1)`
-/

namespace A152176.P6220857138217927379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320647 (n + 1) + A304972 (n + 1)

end

end A152176.P6220857138217927379

/-! ## A152176.P15016329138990835693

`A152175(n+1)-A320647(n+1)`
-/

namespace A152176.P15016329138990835693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152175 (n + 1) - A320647 (n + 1)

end

end A152176.P15016329138990835693

/-! ## A152176.P8336835282184629170

`A284949(n+1)+A320647(n+1)-A320525(n+1)`
-/

namespace A152176.P8336835282184629170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284949 (n + 1) + (A320647 (n + 1) - A320525 (n + 1))

end

end A152176.P8336835282184629170

/-! ## A152176.P10821654026328436026

`A320647(n+1)+2*A284949(n+1)-A008277(n+1)`
-/

namespace A152176.P10821654026328436026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320647 (n + 1) + (2 * A284949 (n + 1) - A008277 (n + 1))

end

end A152176.P10821654026328436026

/-! ## A152176.P14503036962412677079

`A014682(A304972(n+1)+A152175(n+1))`
-/

namespace A152176.P14503036962412677079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A304972 (n + 1) + A152175 (n + 1)).toNat

end

end A152176.P14503036962412677079

/-! ## A152176.P3490200316657542955

`A004525(A304972(n+1)+A152175(n+1))`
-/

namespace A152176.P3490200316657542955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A304972 (n + 1) + A152175 (n + 1)).toNat

end

end A152176.P3490200316657542955

/-! ## A152176.P17462428804888380778

`A025480(A304972(n+1)+A152175(n+1))`
-/

namespace A152176.P17462428804888380778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A304972 (n + 1) + A152175 (n + 1)).toNat

end

end A152176.P17462428804888380778

/-! ## A152176.P8357184800260137710

`A026741(A304972(n+1)+A152175(n+1))`
-/

namespace A152176.P8357184800260137710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A304972 (n + 1) + A152175 (n + 1)).toNat

end

end A152176.P8357184800260137710

/-! ## A152176.P6555628252063076798

`A029578(A304972(n+1)+A152175(n+1))`
-/

namespace A152176.P6555628252063076798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A304972 (n + 1) + A152175 (n + 1)).toNat

end

end A152176.P6555628252063076798

/-!
# A152178: Smallest prime factor of G-n, where G is any sufficiently large power tower of 3, e.g., Graham's number.

The programs for A152178, there is no canonical definition to state claims against.
-/

/-! ## A152178.P5445438129081904153

`A001721(a(n-1))` with `a(0)=3, a(1)=2, a(2)=5, a(3)=2`
-/

namespace A152178.P5445438129081904153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 5, 2] fun n a =>
  A001721 (a (n - 1)).toNat

end

end A152178.P5445438129081904153

/-!
# A152179: Period 9: repeat [8, 2, 7, 5, 5, 7, 2, 8, 7].

The programs for A152179, the canonical program `A152179.P6529025807571915881` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152179 has offset 0).

The definition of A152179 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A152179.anchor (n : ℕ) : A152179 n = (([8, 2, 7, 5, 5, 7, 2, 8, 7].getD (n % 9) 0 : ℕ) : ℤ)` in `Proof.A152.A152179`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152179.P6529025807571915881

`a(n-9)` with `a(0)=8, a(1)=2, a(2)=7, a(3)=5, a(4)=5, a(5)=7, a(6)=2, a(7)=8, a(8)=7`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152179

/-- `a(n-9)` -/
def P6529025807571915881.Spec : Prop :=
  ∀ n, (P6529025807571915881.a n : ℤ) = A152179 n

theorem P6529025807571915881.correct : P6529025807571915881.Spec := by
  intro n
  simp only [A152179]

end A152179

/-!
# A152181: Primes p such that q-p is a square, q=nextprime(p) and p and q are subsequent terms in A073609.

The programs for A152181, there is no canonical definition to state claims against.
-/

/-! ## A152181.P3281158105479013448

`A073609(A152180(n+1)-1)`
-/

namespace A152181.P3281158105479013448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073609 (A152180 (n + 1) - 1).toNat

end

end A152181.P3281158105479013448

/-!
# A152184: Primes in A119565.

The programs for A152184, there is no canonical definition to state claims against.
-/

/-! ## A152184.P16274476105753071481

`p?[A119565(n)]`
-/

namespace A152184.P16274476105753071481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152184.P16274476105753071481

/-! ## A152184.P4797570398005544730

`∩[A042986(n+1), A119565(n)]`
-/

namespace A152184.P4797570398005544730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119565 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152184.P4797570398005544730

/-! ## A152184.P18106477604575274299

`∩[A042994(n+1), A119565(n)]`
-/

namespace A152184.P18106477604575274299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119565 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152184.P18106477604575274299

/-! ## A152184.P31716189428137959

`filter[A119565(n), A010051(#)]`
-/

namespace A152184.P31716189428137959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A152184.P31716189428137959

/-! ## A152184.P11047620525401888601

`∩[A042988(n), A119565(n)]`
-/

namespace A152184.P11047620525401888601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119565 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152184.P11047620525401888601

/-!
# A152185: a(n) = -3*a(n-1) + 5*a(n-2), n > 1; a(0)=1, a(1)=-5.

The programs for A152185, the canonical program `A152185.P2893789542737182705` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152185 has offset 0).

The definition of A152185 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-3*a(n-1)+5*a(n-2)` (program `A152185.P2893789542737182705`, by `A152185.P2893789542737182705.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152185.P2893789542737182705

`-3*a(n-1)+5*a(n-2)` with `a(0)=1, a(1)=-5`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152185

/-- `-3*a(n-1)+5*a(n-2)` -/
def P2893789542737182705.Spec : Prop :=
  ∀ n, P2893789542737182705.a n = A152185 n

theorem P2893789542737182705.correct : P2893789542737182705.Spec := by
  intro n
  simp only [A152185]

end A152185

/-! ## A152185.P3463101042139142249

`(-1)^n*A152187(n)`
-/

namespace A152185.P3463101042139142249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A152187 n

end

end A152185.P3463101042139142249

namespace A152185

/-- `(-1)^n*A152187(n)` -/
def P3463101042139142249.Spec : Prop :=
  ∀ n, P3463101042139142249.a n = A152185 n

end A152185

/-! ## A152185.P8573577125809590238

`ogf((1-2x)/(1+3x-5x^2))`
-/

namespace A152185.P8573577125809590238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, 3, -5] n

end

end A152185.P8573577125809590238

namespace A152185

/-- `ogf((1-2x)/(1+3x-5x^2))` -/
def P8573577125809590238.Spec : Prop :=
  ∀ n, P8573577125809590238.a n = A152185 n

end A152185

/-! ## A152185.P18086487605783859178

`A152187(n)/A033999(n)`
-/

namespace A152185.P18086487605783859178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152187 n : ℚ) / (A033999 n : ℚ)

end

end A152185.P18086487605783859178

namespace A152185

/-- `A152187(n)/A033999(n)` -/
def P18086487605783859178.Spec : Prop :=
  ∀ n, P18086487605783859178.a n = (A152185 n : ℚ)

end A152185

/-! ## A152185.P16906024454509000515

`(A179606(n)+A015523(n))*A033999(n)`
-/

namespace A152185.P16906024454509000515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A179606 n + A015523 n) * A033999 n

end

end A152185.P16906024454509000515

namespace A152185

/-- `(A179606(n)+A015523(n))*A033999(n)` -/
def P16906024454509000515.Spec : Prop :=
  ∀ n, P16906024454509000515.a n = A152185 n

end A152185

/-! ## A152185.P10235919877598338889

`(A072263(n+1)+A072263(n)-A179606(n+1))*A033999(n)`
-/

namespace A152185.P10235919877598338889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A072263 (n + 1) + (A072263 n - A179606 (n + 1))) * A033999 n

end

end A152185.P10235919877598338889

namespace A152185

/-- `(A072263(n+1)+A072263(n)-A179606(n+1))*A033999(n)` -/
def P10235919877598338889.Spec : Prop :=
  ∀ n, P10235919877598338889.a n = A152185 n

end A152185

/-!
# A152186: a(1)=2; then: if n is even, a(n)=next_square_after a(n - 1), else a(n)=next_prime_after a(n - 1).

The programs for A152186, there is no canonical definition to state claims against.
-/

/-! ## A152186.P17292714093219948855

`∪[A007491(n+1), (n+2)²]`
-/

namespace A152186.P17292714093219948855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A152186.P17292714093219948855

/-! ## A152186.P17620503946889262258

`∪[A007918((n+1)²), (n+2)²]`
-/

namespace A152186.P17620503946889262258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 ((n + 1) ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A152186.P17620503946889262258

/-! ## A152186.P3530499201351155110

`∪[A151800((n+1)²), (n+2)²]`
-/

namespace A152186.P3530499201351155110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((n + 1) ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A152186.P3530499201351155110

/-! ## A152186.P11880225347664032649

`∪[A266620((n+1)²), (n+2)²]`
-/

namespace A152186.P11880225347664032649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266620 ((n + 1) ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A152186.P11880225347664032649

/-! ## A152186.P6576811359307376956

`∪[(n+2)², A053000(n+1)+(n+1)²]`
-/

namespace A152186.P6576811359307376956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (n + 1) + ((n + 1) ^ 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A152186.P6576811359307376956

/-! ## A152186.P287480851925065991

`∪[(n+2)², (n+2)²-A144831(n+1)]`
-/

namespace A152186.P287480851925065991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A144831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A152186.P287480851925065991

/-! ## A152186.P68866629624391934

`∪[A000040(A038107(n+1)+1), (n+2)²]`
-/

namespace A152186.P68866629624391934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A038107 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A152186.P68866629624391934

/-! ## A152186.P17736915599406117012

`∪[A089237(A161187(n+1)+2), (n+2)²]`
-/

namespace A152186.P17736915599406117012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089237 (A161187 (n + 1) + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A152186.P17736915599406117012

/-! ## A152186.P17045019848150740636

`∪[A000040(A161187(n+1)-n), (n+2)²]`
-/

namespace A152186.P17045019848150740636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A161187 (n + 1) - (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A152186.P17045019848150740636

/-!
# A152187: a(n) = 3*a(n-1) + 5*a(n-2), with a(0)=1, a(1)=5.

The programs for A152187, the canonical program `A152187.P9479570024269000191` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152187 has offset 0).

The definition of A152187 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+5*a(n-2)` (program `A152187.P9479570024269000191`, by `A152187.P9479570024269000191.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152187.P9479570024269000191

`3*a(n-1)+5*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152187

/-- `3*a(n-1)+5*a(n-2)` -/
def P9479570024269000191.Spec : Prop :=
  ∀ n, (P9479570024269000191.a n : ℤ) = A152187 n

theorem P9479570024269000191.correct : P9479570024269000191.Spec := by
  intro n
  simp only [A152187]

end A152187

/-! ## A152187.P15014117546080618227

`ogf((1+2x)/(1-3x-5x^2))`
-/

namespace A152187.P15014117546080618227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -3, -5] n

end

end A152187.P15014117546080618227

namespace A152187

/-- `ogf((1+2x)/(1-3x-5x^2))` -/
def P15014117546080618227.Spec : Prop :=
  ∀ n, P15014117546080618227.a n = A152187 n

end A152187

/-! ## A152187.P3203696766790359670

`4*a(n-1)-(a(n-1)-5*a(n-2))` with `a(0)=1, a(1)=5`
-/

namespace A152187.P3203696766790359670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  4 * a (n - 1) - (a (n - 1) - 5 * a (n - 2))

end

end A152187.P3203696766790359670

namespace A152187

/-- `4*a(n-1)-(a(n-1)-5*a(n-2))` -/
def P3203696766790359670.Spec : Prop :=
  ∀ n, P3203696766790359670.a n = A152187 n

end A152187

/-! ## A152187.P17264677980309994589

`abs(A152185(n))`
-/

namespace A152187.P17264677980309994589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A152185 n|

end

end A152187.P17264677980309994589

namespace A152187

/-- `abs(A152185(n))` -/
def P17264677980309994589.Spec : Prop :=
  ∀ n, P17264677980309994589.a n = A152187 n

end A152187

/-! ## A152187.P7596179293659965813

`A179606(n)+A015523(n)`
-/

namespace A152187.P7596179293659965813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179606 n + A015523 n

end

end A152187.P7596179293659965813

namespace A152187

/-- `A179606(n)+A015523(n)` -/
def P7596179293659965813.Spec : Prop :=
  ∀ n, P7596179293659965813.a n = A152187 n

end A152187

/-! ## A152187.P11118056331764225236

`A033999(n)*A152185(n)`
-/

namespace A152187.P11118056331764225236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A152185 n

end

end A152187.P11118056331764225236

namespace A152187

/-- `A033999(n)*A152185(n)` -/
def P11118056331764225236.Spec : Prop :=
  ∀ n, P11118056331764225236.a n = A152187 n

end A152187

/-! ## A152187.P2207758761636729283

`gcd(A000038(n), A152185(n))`
-/

namespace A152187.P2207758761636729283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A152185 n)

end

end A152187.P2207758761636729283

namespace A152187

/-- `gcd(A000038(n), A152185(n))` -/
def P2207758761636729283.Spec : Prop :=
  ∀ n, (P2207758761636729283.a n : ℤ) = A152187 n

end A152187

/-! ## A152187.P10629920183582016043

`lcm(A010686(n), A152185(n))`
-/

namespace A152187.P10629920183582016043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010686 n) (A152185 n)

end

end A152187.P10629920183582016043

namespace A152187

/-- `lcm(A010686(n), A152185(n))` -/
def P10629920183582016043.Spec : Prop :=
  ∀ n, (P10629920183582016043.a n : ℤ) = A152187 n

end A152187

/-! ## A152187.P11497109930162335706

`A197189(n)+3*A015523(n)`
-/

namespace A152187.P11497109930162335706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197189 n + 3 * A015523 n

end

end A152187.P11497109930162335706

namespace A152187

/-- `A197189(n)+3*A015523(n)` -/
def P11497109930162335706.Spec : Prop :=
  ∀ n, P11497109930162335706.a n = A152187 n

end A152187

/-! ## A152187.P4236524680106740887

`A072264(n)+4*A015523(n)`
-/

namespace A152187.P4236524680106740887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072264 n + 4 * A015523 n

end

end A152187.P4236524680106740887

namespace A152187

/-- `A072264(n)+4*A015523(n)` -/
def P4236524680106740887.Spec : Prop :=
  ∀ n, P4236524680106740887.a n = A152187 n

end A152187

/-! ## A152187.P13752333017286661093

`2*A179606(n)-∑[A197189(n)]`
-/

namespace A152187.P13752333017286661093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A179606 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152187.P13752333017286661093

namespace A152187

/-- `2*A179606(n)-∑[A197189(n)]` -/
def P13752333017286661093.Spec : Prop :=
  ∀ n, P13752333017286661093.a n = A152187 n

end A152187

/-! ## A152187.P11612732574506809271

`A015523(n+1)+2*A015523(n)`
-/

namespace A152187.P11612732574506809271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015523 (n + 1) + 2 * A015523 n

end

end A152187.P11612732574506809271

namespace A152187

/-- `A015523(n+1)+2*A015523(n)` -/
def P11612732574506809271.Spec : Prop :=
  ∀ n, P11612732574506809271.a n = A152187 n

end A152187

/-! ## A152187.P3249093794393165847

`(A197189(n+1)-A015523(n))/2`
-/

namespace A152187.P3249093794393165847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197189 (n + 1) - A015523 n : ℚ) / 2

end

end A152187.P3249093794393165847

namespace A152187

/-- `(A197189(n+1)-A015523(n))/2` -/
def P3249093794393165847.Spec : Prop :=
  ∀ n, P3249093794393165847.a n = (A152187 n : ℚ)

end A152187

/-! ## A152187.P6161933245717535322

`A179606(n)+A197189(n)-A072264(n)`
-/

namespace A152187.P6161933245717535322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179606 n + (A197189 n - A072264 n)

end

end A152187.P6161933245717535322

namespace A152187

/-- `A179606(n)+A197189(n)-A072264(n)` -/
def P6161933245717535322.Spec : Prop :=
  ∀ n, P6161933245717535322.a n = A152187 n

end A152187

/-! ## A152187.P16773648914770895170

`A087206(n)/A152174(n)*A152185(n)`
-/

namespace A152187.P16773648914770895170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087206 n : ℚ) / (A152174 n : ℚ) * (A152185 n : ℚ)

end

end A152187.P16773648914770895170

namespace A152187

/-- `A087206(n)/A152174(n)*A152185(n)` -/
def P16773648914770895170.Spec : Prop :=
  ∀ n, P16773648914770895170.a n = (A152187 n : ℚ)

end A152187

/-! ## A152187.P16454545253676514330

`A072264(n+1)+A072264(n)-A179606(n)`
-/

namespace A152187.P16454545253676514330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072264 (n + 1) + (A072264 n - A179606 n)

end

end A152187.P16454545253676514330

namespace A152187

/-- `A072264(n+1)+A072264(n)-A179606(n)` -/
def P16454545253676514330.Spec : Prop :=
  ∀ n, P16454545253676514330.a n = A152187 n

end A152187

/-! ## A152187.P5435926061775025971

`A105476(n+1)/A152167(n)*A152185(n)`
-/

namespace A152187.P5435926061775025971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105476 (n + 1) : ℚ) / (A152167 n : ℚ) * (A152185 n : ℚ)

end

end A152187.P5435926061775025971

namespace A152187

/-- `A105476(n+1)/A152167(n)*A152185(n)` -/
def P5435926061775025971.Spec : Prop :=
  ∀ n, P5435926061775025971.a n = (A152187 n : ℚ)

end A152187

/-! ## A152187.P5319964434750217447

`A072263(n+1)+A072263(n)-A179606(n+1)`
-/

namespace A152187.P5319964434750217447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072263 (n + 1) + (A072263 n - A179606 (n + 1))

end

end A152187.P5319964434750217447

namespace A152187

/-- `A072263(n+1)+A072263(n)-A179606(n+1)` -/
def P5319964434750217447.Spec : Prop :=
  ∀ n, P5319964434750217447.a n = A152187 n

end A152187

/-! ## A152187.P11172744288668495157

`A180140(n+1)+A179606(n)-A179606(n+1)`
-/

namespace A152187.P11172744288668495157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180140 (n + 1) + (A179606 n - A179606 (n + 1))

end

end A152187.P11172744288668495157

namespace A152187

/-- `A180140(n+1)+A179606(n)-A179606(n+1)` -/
def P11172744288668495157.Spec : Prop :=
  ∀ n, P11172744288668495157.a n = A152187 n

end A152187

/-! ## A152187.P7564217701051443957

`A180140(n+1)-(A197189(n+1)+A197189(n))`
-/

namespace A152187.P7564217701051443957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180140 (n + 1) - (A197189 (n + 1) + A197189 n)

end

end A152187.P7564217701051443957

namespace A152187

/-- `A180140(n+1)-(A197189(n+1)+A197189(n))` -/
def P7564217701051443957.Spec : Prop :=
  ∀ n, P7564217701051443957.a n = A152187 n

end A152187

/-!
# A152188: a(0) = 0, a(n) is the number of divisors of n that are greater than a(n-1).

The programs for A152188, there is no canonical definition to state claims against.
-/

/-! ## A152188.P13748608468759651829

`A001222(A126646(1-2*a(n-1)+n))` with `a(0)=0`
-/

namespace A152188.P13748608468759651829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001222 (A126646 (1 - 2 * a (n - 1) + (n : ℤ)).toNat).toNat

end

end A152188.P13748608468759651829

/-! ## A152188.P2277874872464216517

`A001221(A281421(n)+A062157(n))`
-/

namespace A152188.P2277874872464216517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A281421 n + A062157 n).toNat

end

end A152188.P2277874872464216517

/-! ## A152188.P5438734705291288401

`A001222(record[A137734(A059590(n))])`
-/

namespace A152188.P5438734705291288401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A059590 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A152188.P5438734705291288401

/-! ## A152188.P11782627478652536113

`∑{d}[n, floor(atan(#))]^(val(n+1, 2)-1)^n`
-/

namespace A152188.P11782627478652536113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), ⌊Real.arctan (d : ℝ)⌋ : ℤ) : ℚ) ^ (((SequenceMachineLib.valuation (n + 1) 2 : ℤ) - 1) ^ n : ℤ)

end

end A152188.P11782627478652536113

/-! ## A152188.P8157449090601484326

`A130654(A287947(n))`
-/

namespace A152188.P8157449090601484326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130654 (A287947 n).toNat

end

end A152188.P8157449090601484326

/-!
# A152189: Product_{k=1..floor((n-1)/2)} (1 + 4*cos(k*Pi/n)^2)*(1 + 4*sin(k*Pi/n)^2).

The programs for A152189, the canonical program `A152189.P11042151278829220442` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152189 has offset 0).

The definition of A152189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152189.P11042151278829220442

`A000045(lcm(2, n))^∑{d}[n, round(1/#)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A152189

/-- `A000045(lcm(2, n))^∑{d}[n, round(1/#)]` -/
def P11042151278829220442.Spec : Prop :=
  ∀ n, P11042151278829220442.a n = (A152189 n : ℚ)

end A152189

/-! ## A152189.P15196562742098917036

`A001906(gcd(n, ∑[n]))^∑{d}[n, round(1/#)]`
-/

namespace A152189.P15196562742098917036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001906 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j)) : ℚ) ^ (∑ d ∈ Nat.divisors (f2 n), SequenceMachineLib.roundAway (1 / (d : ℚ)) : ℤ)

end

end A152189.P15196562742098917036

namespace A152189

/-- `A001906(gcd(n, ∑[n]))^∑{d}[n, round(1/#)]` -/
def P15196562742098917036.Spec : Prop :=
  ∀ n, P15196562742098917036.a n = (A152189 n : ℚ)

end A152189

/-! ## A152189.P229917839862834794

`A000045(lcm(2, n))^A134451(n)`
-/

namespace A152189.P229917839862834794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (Nat.lcm 2 n) : ℚ) ^ (A134451 n : ℤ)

end

end A152189.P229917839862834794

namespace A152189

/-- `A000045(lcm(2, n))^A134451(n)` -/
def P229917839862834794.Spec : Prop :=
  ∀ n, P229917839862834794.a n = (A152189 n : ℚ)

end A152189

/-! ## A152189.P18343529232296540996

`A001906(gcd(n, ∑[n]))^A134451(n)`
-/

namespace A152189.P18343529232296540996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001906 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j)) : ℚ) ^ (A134451 n : ℤ)

end

end A152189.P18343529232296540996

namespace A152189

/-- `A001906(gcd(n, ∑[n]))^A134451(n)` -/
def P18343529232296540996.Spec : Prop :=
  ∀ n, P18343529232296540996.a n = (A152189 n : ℚ)

end A152189

/-! ## A152189.P4678555617756304175

`A141678(A370980(n))`
-/

namespace A152189.P4678555617756304175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141678 (A370980 n).toNat

end

end A152189.P4678555617756304175

namespace A152189

/-- `A141678(A370980(n))` -/
def P4678555617756304175.Spec : Prop :=
  ∀ n, P4678555617756304175.a n = A152189 n

end A152189

/-!
# A152190: a(n)=2*Product[(1 + 4*Cos[k*Pi/n]^2)*(1 + 4*Sin[k*Pi/n]^2), {k, 1, Floor[(n - 1)/2]}] - Product[(1 + 4*Sin[k*Pi/n]^2), {k, 1, Floor[(n - 1)/2]}].

The programs for A152190, there is no canonical definition to state claims against.
-/

/-! ## A152190.P17960085200459111300

`A001497(n)*A091208(A335797(n))`
-/

namespace A152190.P17960085200459111300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 n * A091208 (A335797 n).toNat

end

end A152190.P17960085200459111300

/-!
# A152192: a(n) = Product_{k=1..floor((n-1)/2)} (1 + 4*cos(2*Pi*k/n)^2).

The programs for A152192, the canonical program `A152192.P12291486857146043710` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152192 has offset 0).

The definition of A152192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152192.P12291486857146043710

`A000045(A026741(n))^A134451(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A152192

/-- `A000045(A026741(n))^A134451(n)` -/
def P12291486857146043710.Spec : Prop :=
  ∀ n, P12291486857146043710.a n = (A152192 n : ℚ)

end A152192

/-! ## A152192.P9936425047851144202

`A058071(A050187(n))`
-/

namespace A152192.P9936425047851144202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (A050187 n).toNat

end

end A152192.P9936425047851144202

namespace A152192

/-- `A058071(A050187(n))` -/
def P9936425047851144202.Spec : Prop :=
  ∀ n, P9936425047851144202.a n = A152192 n

end A152192

/-! ## A152192.P16518580926438713230

`A058071(A092530(n)-2*n)`
-/

namespace A152192.P16518580926438713230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (A092530 n - (2 * n : ℤ)).toNat

end

end A152192.P16518580926438713230

namespace A152192

/-- `A058071(A092530(n)-2*n)` -/
def P16518580926438713230.Spec : Prop :=
  ∀ n, P16518580926438713230.a n = A152192 n

end A152192

/-! ## A152192.P13476642057285552807

`A058071(A092530(n)-n-n)`
-/

namespace A152192.P13476642057285552807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (A092530 n - (n : ℤ) - (n : ℤ)).toNat

end

end A152192.P13476642057285552807

namespace A152192

/-- `A058071(A092530(n)-n-n)` -/
def P13476642057285552807.Spec : Prop :=
  ∀ n, P13476642057285552807.a n = A152192 n

end A152192

/-! ## A152192.P13635777784687619034

`A058071(n*A002265(A004273(n)))`
-/

namespace A152192.P13635777784687619034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 ((n : ℤ) * A002265 (A004273 n).toNat).toNat

end

end A152192.P13635777784687619034

namespace A152192

/-- `A058071(n*A002265(A004273(n)))` -/
def P13635777784687619034.Spec : Prop :=
  ∀ n, P13635777784687619034.a n = A152192 n

end A152192

/-! ## A152192.P3980279970400588510

`A058071(A026741(n)+A000217(n)-2*n)`
-/

namespace A152192.P3980279970400588510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (A026741 n + A000217 n - (2 * n : ℤ)).toNat

end

end A152192.P3980279970400588510

namespace A152192

/-- `A058071(A026741(n)+A000217(n)-2*n)` -/
def P3980279970400588510.Spec : Prop :=
  ∀ n, P3980279970400588510.a n = A152192 n

end A152192

/-!
# A152193: Triangle read by rows, A034839 * (A027826 * 0^(n-k)).

The programs for A152193, there is no canonical definition to state claims against.
-/

/-! ## A152193.P16697384054498436087

`A027826(n%floor(sqrt(n+1)))*A034839(n)`
-/

namespace A152193.P16697384054498436087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027826 (n % Nat.sqrt (n + 1)) * A034839 n

end

end A152193.P16697384054498436087

/-! ## A152193.P4600715048551699799

`A211955(A091018(n))+A000038(A112032(n))`
-/

namespace A152193.P4600715048551699799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211955 (A091018 n).toNat + A000038 (A112032 n).toNat

end

end A152193.P4600715048551699799

/-! ## A152193.P9511548016484597128

`A211955(A091018(n))^A014963(A162745(n))`
-/

namespace A152193.P9511548016484597128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211955 (A091018 n).toNat : ℚ) ^ (A014963 (A162745 n).toNat : ℤ)

end

end A152193.P9511548016484597128

/-! ## A152193.P6236650218245028234

`A211955(A091018(n))^A014963(A273644(n))`
-/

namespace A152193.P6236650218245028234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211955 (A091018 n).toNat : ℚ) ^ (A014963 (A273644 n).toNat : ℤ)

end

end A152193.P6236650218245028234

/-!
# A152195: Triangle read by rows, A000012 * A152194.

The programs for A152195, there is no canonical definition to state claims against.
-/

/-! ## A152195.P2482987872637349445

`A055248(2*n-floor(sqrt(n)))`
-/

namespace A152195.P2482987872637349445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 (2 * n - Nat.sqrt n)

end

end A152195.P2482987872637349445

/-! ## A152195.P10908824155885335396

`A128175(comp[n²]+n+1)`
-/

namespace A152195.P10908824155885335396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128175 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (n + 1))

end

end A152195.P10908824155885335396

/-! ## A152195.P7425474883585203465

`A131250(A091018(n))`
-/

namespace A152195.P7425474883585203465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131250 (A091018 n).toNat

end

end A152195.P7425474883585203465

/-! ## A152195.P3138386589386153860

`A131250(A056536(n+1)-1)`
-/

namespace A152195.P3138386589386153860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131250 (A056536 (n + 1) - 1).toNat

end

end A152195.P3138386589386153860

/-! ## A152195.P1273522624551143891

`or(char[3], A055248(2*n-A000196(n)))`
-/

namespace A152195.P1273522624551143891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A055248 ((2 * n : ℤ) - A000196 n).toNat)

end

end A152195.P1273522624551143891

/-!
# A152196: A sequence based on the digits of Log(10) as a BBP: a(k)=Floor[Mod[(1/2)*((-4)^k)*(6/(4*k + 1) - 3/(4*k + 3) - 1/(4*k + 4)), 3]].

The programs for A152196, there is no canonical definition to state claims against.
-/

/-! ## A152196.P6393614217817245212

`A345494(A003312(n+1))%3`
-/

namespace A152196.P6393614217817245212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345494 (A003312 (n + 1)).toNat) 3

end

end A152196.P6393614217817245212

/-! ## A152196.P17449510732517082423

`and(A088496(A088509(3*n+1)), A088550(3*n+2))`
-/

namespace A152196.P17449510732517082423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088496 (A088509 (3 * n + 1)).toNat) (A088550 (3 * n + 2))

end

end A152196.P17449510732517082423

/-! ## A152196.P10511472178913628535

`(A340850(A340848(2*n+1)²)+1)%3`
-/

namespace A152196.P10511472178913628535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340850 (A340848 (2 * n + 1) ^ 2).toNat + 1) 3

end

end A152196.P10511472178913628535

/-! ## A152196.P920841158513922547

`A004539(n+1)+A003849(A000055(n))`
-/

namespace A152196.P920841158513922547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1) + A003849 (A000055 n).toNat

end

end A152196.P920841158513922547

/-! ## A152196.P16579962693028149171

`A059835(A260119(n+1)+A206399(n))`
-/

namespace A152196.P16579962693028149171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059835 (A260119 (n + 1) + A206399 n).toNat

end

end A152196.P16579962693028149171

/-!
# A152198: Triangle read by rows, A007318 rows repeated.

The programs for A152198, the canonical program `A152198.P9677035182009018168` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152198 has offset 0).

The definition of A152198 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152198.P9677035182009018168

`A007318(n-C(ceil(sqrt(n)), 2))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A152198

/-- `A007318(n-C(ceil(sqrt(n)), 2))` -/
def P9677035182009018168.Spec : Prop :=
  ∀ n, P9677035182009018168.a n = A152198 n

theorem P9677035182009018168.correct : P9677035182009018168.Spec := by
  intro n
  simp only [A152198]

end A152198

/-! ## A152198.P8165368403740343576

`A152905(A203553(n))`
-/

namespace A152198.P8165368403740343576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152905 (A203553 n).toNat

end

end A152198.P8165368403740343576

namespace A152198

/-- `A152905(A203553(n))` -/
def P8165368403740343576.Spec : Prop :=
  ∀ n, P8165368403740343576.a n = A152198 n

end A152198

/-! ## A152198.P14153711272256519444

`A152905(A203554(n))`
-/

namespace A152198.P14153711272256519444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152905 (A203554 n).toNat

end

end A152198.P14153711272256519444

namespace A152198

/-- `A152905(A203554(n))` -/
def P14153711272256519444.Spec : Prop :=
  ∀ n, P14153711272256519444.a n = A152198 n

end A152198

/-! ## A152198.P13721703754621758082

`A152828(A255527(n+1))`
-/

namespace A152198.P13721703754621758082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152828 (A255527 (n + 1)).toNat

end

end A152198.P13721703754621758082

namespace A152198

/-- `A152828(A255527(n+1))` -/
def P13721703754621758082.Spec : Prop :=
  ∀ n, P13721703754621758082.a n = A152198 n

end A152198

/-! ## A152198.P16488543676448677091

`A152815(lt[0, A152815(n)])`
-/

namespace A152198.P16488543676448677091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152815 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A152198.P16488543676448677091

namespace A152198

/-- `A152815(lt[0, A152815(n)])` -/
def P16488543676448677091.Spec : Prop :=
  ∀ n, P16488543676448677091.a n = A152198 n

end A152198

/-! ## A152198.P3288878386548366851

`gcd(A008316(n), A188440(n))`
-/

namespace A152198.P3288878386548366851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008316 n) (A188440 n)

end

end A152198.P3288878386548366851

namespace A152198

/-- `gcd(A008316(n), A188440(n))` -/
def P3288878386548366851.Spec : Prop :=
  ∀ n, (P3288878386548366851.a n : ℤ) = A152198 n

end A152198

/-! ## A152198.P2790989197470412989

`A046854(A091018(n))`
-/

namespace A152198.P2790989197470412989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 (A091018 n).toNat

end

end A152198.P2790989197470412989

namespace A152198

/-- `A046854(A091018(n))` -/
def P2790989197470412989.Spec : Prop :=
  ∀ n, P2790989197470412989.a n = A152198 n

end A152198

/-! ## A152198.P9963831242530335333

`A211226(ceil(2*n-sqrt(n)))`
-/

namespace A152198.P9963831242530335333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211226 ⌈(2 * n : ℝ) - Real.sqrt (n : ℝ)⌉.toNat

end

end A152198.P9963831242530335333

namespace A152198

/-- `A211226(ceil(2*n-sqrt(n)))` -/
def P9963831242530335333.Spec : Prop :=
  ∀ n, P9963831242530335333.a n = A152198 n

end A152198

/-! ## A152198.P6526139621485630721

`abs(A051160(n-floor(sqrt(n))+n))`
-/

namespace A152198.P6526139621485630721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A051160 ((n : ℤ) - (Nat.sqrt n : ℤ) + (n : ℤ)).toNat|

end

end A152198.P6526139621485630721

namespace A152198

/-- `abs(A051160(n-floor(sqrt(n))+n))` -/
def P6526139621485630721.Spec : Prop :=
  ∀ n, P6526139621485630721.a n = A152198 n

end A152198

/-! ## A152198.P12170514905069448781

`A152830(A161983(n))`
-/

namespace A152198.P12170514905069448781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152830 (A161983 n).toNat

end

end A152198.P12170514905069448781

namespace A152198

/-- `A152830(A161983(n))` -/
def P12170514905069448781.Spec : Prop :=
  ∀ n, P12170514905069448781.a n = A152198 n

end A152198

/-! ## A152198.P7140608228342597159

`A152830(A174803(n))`
-/

namespace A152198.P7140608228342597159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152830 (A174803 n).toNat

end

end A152198.P7140608228342597159

namespace A152198

/-- `A152830(A174803(n))` -/
def P7140608228342597159.Spec : Prop :=
  ∀ n, P7140608228342597159.a n = A152198 n

end A152198

/-! ## A152198.P4019259758455120829

`A103633(eq[1, A101688(n)])`
-/

namespace A152198.P4019259758455120829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103633 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A152198.P4019259758455120829

namespace A152198

/-- `A103633(eq[1, A101688(n)])` -/
def P4019259758455120829.Spec : Prop :=
  ∀ n, P4019259758455120829.a n = A152198 n

end A152198

/-! ## A152198.P6080321678193234086

`A152830(A162917(n+1))`
-/

namespace A152198.P6080321678193234086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152830 (A162917 (n + 1)).toNat

end

end A152198.P6080321678193234086

namespace A152198

/-- `A152830(A162917(n+1))` -/
def P6080321678193234086.Spec : Prop :=
  ∀ n, P6080321678193234086.a n = A152198 n

end A152198

/-! ## A152198.P2411012640851235934

`A119963(comp[n²]+n)`
-/

namespace A152198.P2411012640851235934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A152198.P2411012640851235934

namespace A152198

/-- `A119963(comp[n²]+n)` -/
def P2411012640851235934.Spec : Prop :=
  ∀ n, P2411012640851235934.a n = A152198 n

end A152198

/-! ## A152198.P13144017517033669548

`A152830(A316670(n+1))`
-/

namespace A152198.P13144017517033669548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152830 (A316670 (n + 1)).toNat

end

end A152198.P13144017517033669548

namespace A152198

/-- `A152830(A316670(n+1))` -/
def P13144017517033669548.Spec : Prop :=
  ∀ n, P13144017517033669548.a n = A152198 n

end A152198

/-!
# A152199: Trajectory of 7 under the map m -> A082010(m).

The programs for A152199, there is no canonical definition to state claims against.
-/

/-! ## A152199.P14003248023216799156

`A082010(a(n-1))` with `a(0)=7`
-/

namespace A152199.P14003248023216799156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A082010 (a (n - 1)).toNat

end

end A152199.P14003248023216799156

