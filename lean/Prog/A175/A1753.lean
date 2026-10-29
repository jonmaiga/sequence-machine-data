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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C047
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
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
import Seq.B005.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A175300: a(1)=1. a(n) = A005179(d(a(n-1))) + a(n-1), where d(n) = the number of divisors of n, and A005179(n) is the smallest positive integer with exactly n divisors.

The programs for A175300, there is no canonical definition to state claims against.
-/

/-! ## A175300.P14473333308588508405

`A140635(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A175300.P14473333308588508405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A140635 (a (n - 1)).toNat + a (n - 1)

end

end A175300.P14473333308588508405

/-! ## A175300.P8685472804285421112

`∑[A053828(∏[A218701(n)])]`
-/

namespace A175300.P8685472804285421112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218701 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175300.P8685472804285421112

/-! ## A175300.P694385504230318054

`∑[A339810(∏[A085543(n)])]`
-/

namespace A175300.P694385504230318054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085543 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339810 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175300.P694385504230318054

/-! ## A175300.P2095874060727727938

`A261904(A003592(2*n+1)*A003592(n+1))`
-/

namespace A175300.P2095874060727727938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261904 (A003592 (2 * n + 1) * A003592 (n + 1)).toNat

end

end A175300.P2095874060727727938

/-! ## A175300.P8970548476705603645

`∑[gcd(12, A225187(n+3))]`
-/

namespace A175300.P8970548476705603645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 12 (A225187 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175300.P8970548476705603645

/-!
# A175301: a(1) = 1. a(n+1) = the largest positive integer that, when written in binary, occurs as a substring both in binary n and in binary A175302(n), where A175302(n) = Sum_{k=1..n} a(k).

The programs for A175301, there is no canonical definition to state claims against.
-/

/-! ## A175301.P15890060961709458440

`abs(Δ[A175302(A000038(n)+n)])`
-/

namespace A175301.P15890060961709458440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175302 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A175301.P15890060961709458440

/-! ## A175301.P10298787095816287294

`A028310(Δ[A175302(A028310(n))])`
-/

namespace A175301.P10298787095816287294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175302 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A175301.P10298787095816287294

/-! ## A175301.P14390686225809486763

`Δ[A175302(A000038(n)+n)]^-A057428(n)`
-/

namespace A175301.P14390686225809486763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175302 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (-A057428 n : ℤ)

end

end A175301.P14390686225809486763

/-! ## A175301.P17289453569404347561

`Δ[A019425(2*n)*A175302(A000038(n)+n)]`
-/

namespace A175301.P17289453569404347561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (2 * n) * A175302 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175301.P17289453569404347561

/-! ## A175301.P1614491312805318913

`Δ[A057427(n)*A175302(A000038(n)+n)]`
-/

namespace A175301.P1614491312805318913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A175302 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175301.P1614491312805318913

/-! ## A175301.P2547902140898095741

`Δ[A175302(A000038(n)+n)%A005915(n)]`
-/

namespace A175301.P2547902140898095741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175302 (A000038 n + (n : ℤ)).toNat) (A005915 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175301.P2547902140898095741

/-! ## A175301.P10744772743307138434

`A000038(53*n)+Δ[A175302(A000038(n)+n)]`
-/

namespace A175301.P10744772743307138434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175302 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (53 * n) + (f1 (n + 1) - f1 n)

end

end A175301.P10744772743307138434

/-!
# A175302: a(n) = Sum_{k=1..n} A175301(k).

The programs for A175302, there is no canonical definition to state claims against.
-/

/-! ## A175302.P18331057886891275392

`∑[A175301(n+1)]`
-/

namespace A175302.P18331057886891275392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175302.P18331057886891275392

/-! ## A175302.P12042128904177731176

`∑[A028310(A175301(Δ[n²]-n))]`
-/

namespace A175302.P12042128904177731176
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A175301 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175302.P12042128904177731176

/-! ## A175302.P13115462094619506531

`∑[A175301(Δ[n²]-n)%A016825(n)]`
-/

namespace A175302.P13115462094619506531
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175301 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat) (A016825 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175302.P13115462094619506531

/-! ## A175302.P2462334847444634089

`∑[A175301(Δ[n²]-n)]%A017476(n)`
-/

namespace A175302.P2462334847444634089
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175301 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A017476 n)

end

end A175302.P2462334847444634089

/-! ## A175302.P12240017508510485346

`∑[A009001(2*n)²*A175301(Δ[n²]-n)]`
-/

namespace A175302.P12240017508510485346
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) ^ 2 * A175301 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175302.P12240017508510485346

/-! ## A175302.P4821708413037158907

`∑[A175301(Δ[n²]-n)-A000035(2*n)]`
-/

namespace A175302.P4821708413037158907
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175301 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat - A000035 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175302.P4821708413037158907

/-!
# A175303: a(n) = number of finite sequences using numbers drawn from (1,2,3,...,n), using each number at most once, where each number in a finite sequence is not coprime to the previous number, and each finite sequence must continued if possible. (See example.)

The programs for A175303, there is no canonical definition to state claims against.
-/

/-! ## A175303.P14006165551126830232

`∑[Δ[A307203(A304887(n))]+1]`
-/

namespace A175303.P14006165551126830232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307203 (A304887 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175303.P14006165551126830232

/-! ## A175303.P1536938963224793838

`or(A239742(n+1), A279614(A239742(n+1)))`
-/

namespace A175303.P1536938963224793838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A239742 (n + 1)) (A279614 (A239742 (n + 1)).toNat)

end

end A175303.P1536938963224793838

/-! ## A175303.P9653362390205276466

`eq[A330690(A330715(2*n+1)), A330709(2*n)]`
-/

namespace A175303.P9653362390205276466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330690 (A330715 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330709 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175303.P9653362390205276466

/-!
# A175304: A positive integer n is included if d(n+d(n)) = d(n), where d(n) is the number of divisors of n.

The programs for A175304, the canonical program `A175304.P3358269145109640044` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175304 has offset 1).

The definition of A175304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8941 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175304.P3358269145109640044

`eq[A000005(A000005(n+1)+n+1), A000005(n+1)]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A175304

/-- `eq[A000005(A000005(n+1)+n+1), A000005(n+1)]+1` -/
def P3358269145109640044.Spec : Prop :=
  ∀ n, (P3358269145109640044.a n : ℤ) = A175304 (n + 1)

theorem P3358269145109640044.correct : P3358269145109640044.Spec := by
  intro n
  simp only [A175304, Nat.add_sub_cancel]

end A175304

/-! ## A175304.P3554759716418517782

`eq[0, A286530(n+1)]+1`
-/

namespace A175304.P3554759716418517782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175304.P3554759716418517782

namespace A175304

/-- `eq[0, A286530(n+1)]+1` -/
def P3554759716418517782.Spec : Prop :=
  ∀ n, (P3554759716418517782.a n : ℤ) = A175304 (n + 1)

end A175304

/-! ## A175304.P15836189298876710876

`record[gcd(n+3, A286530(n+3))]`
-/

namespace A175304.P15836189298876710876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 3 : ℤ) (A286530 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175304.P15836189298876710876

namespace A175304

/-- `record[gcd(n+3, A286530(n+3))]` -/
def P15836189298876710876.Spec : Prop :=
  ∀ n, (P15836189298876710876.a n : ℤ) = A175304 (n + 1)

end A175304

/-! ## A175304.P5803286490603286912

`lt[A286530(A028310(n))², 1]`
-/

namespace A175304.P5803286490603286912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286530 (A028310 n).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A175304.P5803286490603286912

namespace A175304

/-- `lt[A286530(A028310(n))², 1]` -/
def P5803286490603286912.Spec : Prop :=
  ∀ n, (P5803286490603286912.a n : ℤ) = A175304 (n + 1)

end A175304

/-! ## A175304.P17093036825642863054

`A020725(lt[A286530(n+1)², 1])`
-/

namespace A175304.P17093036825642863054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286530 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A175304.P17093036825642863054

namespace A175304

/-- `A020725(lt[A286530(n+1)², 1])` -/
def P17093036825642863054.Spec : Prop :=
  ∀ n, P17093036825642863054.a n = A175304 (n + 1)

end A175304

/-! ## A175304.P5696956406503073060

`eq[A000005(n+1), A286529(n+1)]+1`
-/

namespace A175304.P5696956406503073060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286529 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A175304.P5696956406503073060

namespace A175304

/-- `eq[A000005(n+1), A286529(n+1)]+1` -/
def P5696956406503073060.Spec : Prop :=
  ∀ n, (P5696956406503073060.a n : ℤ) = A175304 (n + 1)

end A175304

/-! ## A175304.P1386379116434614674

`eq[A000005(n+1), A000005(A062249(n+1))]+1`
-/

namespace A175304.P1386379116434614674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A062249 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A175304.P1386379116434614674

namespace A175304

/-- `eq[A000005(n+1), A000005(A062249(n+1))]+1` -/
def P1386379116434614674.Spec : Prop :=
  ∀ n, (P1386379116434614674.a n : ℤ) = A175304 (n + 1)

end A175304

/-! ## A175304.P12049168071866904598

`eq[A000005(n+1), A000005(A286479(n+1))]+1`
-/

namespace A175304.P12049168071866904598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A286479 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A175304.P12049168071866904598

namespace A175304

/-- `eq[A000005(n+1), A000005(A286479(n+1))]+1` -/
def P12049168071866904598.Spec : Prop :=
  ∀ n, (P12049168071866904598.a n : ℤ) = A175304 (n + 1)

end A175304

/-! ## A175304.P218451782092860807

`eq[A032741(n), A325765(A032741(n)+n)]`
-/

namespace A175304.P218451782092860807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 (A032741 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175304.P218451782092860807

namespace A175304

/-- `eq[A032741(n), A325765(A032741(n)+n)]` -/
def P218451782092860807.Spec : Prop :=
  ∀ n, (P218451782092860807.a n : ℤ) = A175304 (n + 1)

end A175304

/-! ## A175304.P15978959189980791582

`eq[A037852(n+1), A037852(A062249(n+1))]+1`
-/

namespace A175304.P15978959189980791582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037852 (A062249 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A175304.P15978959189980791582

namespace A175304

/-- `eq[A037852(n+1), A037852(A062249(n+1))]+1` -/
def P15978959189980791582.Spec : Prop :=
  ∀ n, (P15978959189980791582.a n : ℤ) = A175304 (n + 1)

end A175304

/-! ## A175304.P9596881569351192144

`eq[0, A286530(A233583(n+1))]`
-/

namespace A175304.P9596881569351192144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286530 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175304.P9596881569351192144

namespace A175304

/-- `eq[0, A286530(A233583(n+1))]` -/
def P9596881569351192144.Spec : Prop :=
  ∀ n, (P9596881569351192144.a n : ℤ) = A175304 (n + 1)

end A175304

/-!
# A175305: a(1)=1. a(n) = the smallest integer > a(n-1) where both a(n)-1 and a(n)+1 are coprime to all earlier terms of the sequence.

The programs for A175305, there is no canonical definition to state claims against.
-/

/-! ## A175305.P15184008545888763516

`record[A339088(n)%A339132(n+4)]`
-/

namespace A175305.P15184008545888763516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339088 n) (A339132 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175305.P15184008545888763516

/-! ## A175305.P11776807527778066187

`eq[A160085(A014681(n)), A294905(n+1)]`
-/

namespace A175305.P11776807527778066187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160085 (A014681 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294905 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175305.P11776807527778066187

/-! ## A175305.P13180641240600493354

`eq[A238015(A327005(n+1)), A267263(n)]`
-/

namespace A175305.P13180641240600493354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238015 (A327005 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175305.P13180641240600493354

/-! ## A175305.P6818905947175542758

`A365433(∩[A002473(n+1), A385562(n+1)])`
-/

namespace A175305.P6818905947175542758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385562 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365433 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A175305.P6818905947175542758

/-! ## A175305.P17791533558416596067

`eq[A213945(n), A347232(n)]`
-/

namespace A175305.P17791533558416596067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213945 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347232 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175305.P17791533558416596067

/-!
# A175307: a(n) = the number of terms in row n of A175306.

The programs for A175307, there is no canonical definition to state claims against.
-/

/-! ## A175307.P4851936026306086113

`A001511(gcd(n+1, A315607(n+1))*A219529(n+1)+1)`
-/

namespace A175307.P4851936026306086113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 ((Int.gcd (n + 1 : ℤ) (A315607 (n + 1)) : ℤ) * A219529 (n + 1) + 1).toNat

end

end A175307.P4851936026306086113

/-! ## A175307.P4351370587488229318

`A122841(n+2)+A010882(A244416(n+1))`
-/

namespace A175307.P4351370587488229318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122841 (n + 2) + A010882 (A244416 (n + 1)).toNat

end

end A175307.P4351370587488229318

/-! ## A175307.P13293124626541616090

`A122841(n+2)+A072078(A244416(n+1)+1)`
-/

namespace A175307.P13293124626541616090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122841 (n + 2) + A072078 (A244416 (n + 1) + 1).toNat

end

end A175307.P13293124626541616090

/-! ## A175307.P628948298333341782

`A322316(A244416(n+1)+1)+A122841(n+2)`
-/

namespace A175307.P628948298333341782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322316 (A244416 (n + 1) + 1).toNat + A122841 (n + 2)

end

end A175307.P628948298333341782

/-! ## A175307.P8635114817554846913

`(n+1)%A152178(3*n)+1`
-/

namespace A175307.P8635114817554846913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A152178 (3 * n)) + 1

end

end A175307.P8635114817554846913

/-!
# A175308: Numbers k such that (Sum_{i=0..k} F(i)^2) / (k+1) is an integer, where F(i) is the i-th Fibonacci number.

The programs for A175308, the canonical program `A175308.P17929908493020829210` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175308 has offset 1).

The definition of A175308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 845 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175308.P17929908493020829210

`eq[A260222(n+1), A270313(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A175308

/-- `eq[A260222(n+1), A270313(n+1)]` -/
def P17929908493020829210.Spec : Prop :=
  ∀ n, (P17929908493020829210.a n : ℤ) = A175308 (n + 1)

theorem P17929908493020829210.correct : P17929908493020829210.Spec := by
  intro n
  simp only [A175308, Nat.add_sub_cancel]

end A175308

/-! ## A175308.P1883976180413238272

`eq[0, A236191(n)%A270313(n+1)]`
-/

namespace A175308.P1883976180413238272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236191 n) (A270313 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175308.P1883976180413238272

namespace A175308

/-- `eq[0, A236191(n)%A270313(n+1)]` -/
def P1883976180413238272.Spec : Prop :=
  ∀ n, (P1883976180413238272.a n : ℤ) = A175308 (n + 1)

end A175308

/-! ## A175308.P12494860345789940427

`eq[0, A324969(n+1)%A270313(n+1)]`
-/

namespace A175308.P12494860345789940427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324969 (n + 1)) (A270313 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175308.P12494860345789940427

namespace A175308

/-- `eq[0, A324969(n+1)%A270313(n+1)]` -/
def P12494860345789940427.Spec : Prop :=
  ∀ n, (P12494860345789940427.a n : ℤ) = A175308 (n + 1)

end A175308

/-! ## A175308.P4808951510564959522

`eq[0, A088209(n)%A270313(n+1)]`
-/

namespace A175308.P4808951510564959522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088209 n) (A270313 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175308.P4808951510564959522

namespace A175308

/-- `eq[0, A088209(n)%A270313(n+1)]` -/
def P4808951510564959522.Spec : Prop :=
  ∀ n, (P4808951510564959522.a n : ℤ) = A175308 (n + 1)

end A175308

/-! ## A175308.P10481604958081392257

`eq[0, A001654(n)%(n+1)]`
-/

namespace A175308.P10481604958081392257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001654 n) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175308.P10481604958081392257

namespace A175308

/-- `eq[0, A001654(n)%(n+1)]` -/
def P10481604958081392257.Spec : Prop :=
  ∀ n, (P10481604958081392257.a n : ℤ) = A175308 (n + 1)

end A175308

/-!
# A175309: a(n) = the smallest prime prime(k) such that prime(k+j) - prime(k+j-1) = prime(n+k+1-j) - prime(n+k-j) for all j with 1 <= j <= n.

The programs for A175309, there is no canonical definition to state claims against.
-/

/-! ## A175309.P5854931754808673820

`A391880(∑[n+1]+1)`
-/

namespace A175309.P5854931754808673820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391880 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A175309.P5854931754808673820

/-!
# A175310: Let a(0) = 1. Either, a(n) = the smallest prime not yet occurring in the sequence that, when written in binary, it is a substring in the binary representation of a(n-1); or, if no such prime exists, a(n) = the smallest prime not yet occurring that when written in binary, a(n-1) is contained as a substring within it.

The programs for A175310, there is no canonical definition to state claims against.
-/

/-! ## A175310.P1101404649211430919

`A175311(∪[A004863(n+1), A174722(n+1)])`
-/

namespace A175310.P1101404649211430919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175311 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A175310.P1101404649211430919

/-! ## A175310.P5085464620341751969

`A175311(gcd(14*n², n*(14*n-13)))`
-/

namespace A175310.P5085464620341751969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175311 (Int.gcd (14 * n ^ 2 : ℤ) ((n : ℤ) * ((14 * n : ℤ) - 13)))

end

end A175310.P5085464620341751969

/-! ## A175310.P15342445454959852621

`A175311(A055648(n))`
-/

namespace A175310.P15342445454959852621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175311 (A055648 n).toNat

end

end A175310.P15342445454959852621

/-! ## A175310.P11480995565817147331

`A175311(A163352(∑[n]))`
-/

namespace A175310.P11480995565817147331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175311 (A163352 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A175310.P11480995565817147331

/-! ## A175310.P3325401829624190811

`A175311(A004863(n+1))`
-/

namespace A175310.P3325401829624190811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175311 (A004863 (n + 1)).toNat

end

end A175310.P3325401829624190811

/-!
# A175311: Let a(0) = 1. Either, a(n) = the largest prime not yet occurring in the sequence that, when written in binary, it is a substring in the binary representation of a(n-1); or, if no such prime exists, a(n) = the smallest prime not yet occurring that when written in binary, a(n-1) is contained as a substring within it.

The programs for A175311, there is no canonical definition to state claims against.
-/

/-! ## A175311.P11684131044951399859

`A175310(∪[A004863(n+1), A005225(n+1)])`
-/

namespace A175311.P11684131044951399859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005225 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A175311.P11684131044951399859

/-! ## A175311.P506978945687302394

`A175310(∪[A004863(n+1), A175255(n+1)])`
-/

namespace A175311.P506978945687302394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175255 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A175311.P506978945687302394

/-! ## A175311.P15759941351090257188

`A175310(∪[A004896(n+1), A175255(n+1)])`
-/

namespace A175311.P15759941351090257188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175255 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A175311.P15759941351090257188

/-! ## A175311.P7655079883189932105

`A175310(∪[A004863(n+1), A370608(n+1)])`
-/

namespace A175311.P7655079883189932105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370608 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A175311.P7655079883189932105

/-!
# A175312: Maximum value on Lower Shuffle Part of Kimberling's Expulsion Array (A035486).

The programs for A175312, the canonical program `A175312.P15716013473008669264` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175312 has offset 1).

The definition of A175312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175312.P15716013473008669264

`comp[comp[A200672(n+1)]+n]+n`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A175312

/-- `comp[comp[A200672(n+1)]+n]+n` -/
def P15716013473008669264.Spec : Prop :=
  ∀ n, (P15716013473008669264.a n : ℤ) = A175312 (n + 1)

theorem P15716013473008669264.correct : P15716013473008669264.Spec := by
  intro n
  simp only [A175312, Nat.add_sub_cancel]

end A175312

/-! ## A175312.P10620095537588722549

`∑[gcd(2, A307970(n))]+n`
-/

namespace A175312.P10620095537588722549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A307970 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A175312.P10620095537588722549

namespace A175312

/-- `∑[gcd(2, A307970(n))]+n` -/
def P10620095537588722549.Spec : Prop :=
  ∀ n, (P10620095537588722549.a n : ℤ) = A175312 (n + 1)

end A175312

/-! ## A175312.P8918804598278856475

`floor(log(Δ[A316983(3*n)]))`
-/

namespace A175312.P8918804598278856475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316983 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (f1 (n + 1) - f1 n : ℝ)⌋

end

end A175312.P8918804598278856475

namespace A175312

/-- `floor(log(Δ[A316983(3*n)]))` -/
def P8918804598278856475.Spec : Prop :=
  ∀ n, P8918804598278856475.a n = A175312 (n + 1)

end A175312

/-! ## A175312.P1573706870754733868

`A325678(A265254(n))+n+n`
-/

namespace A175312.P1573706870754733868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A265254 n).toNat + (n : ℤ) + (n : ℤ)

end

end A175312.P1573706870754733868

namespace A175312

/-- `A325678(A265254(n))+n+n` -/
def P1573706870754733868.Spec : Prop :=
  ∀ n, P1573706870754733868.a n = A175312 (n + 1)

end A175312

/-!
# A175313: Number of distinct sums of pairs of reciprocals of 1,2,3,...,n.

The programs for A175313, there is no canonical definition to state claims against.
-/

/-! ## A175313.P9992641638241380102

`∑[A070939(A007947(floor(10*2^n/7)))]`
-/

namespace A175313.P9992641638241380102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A007947 ⌊10 * ((2 ^ n : ℚ) / 7)⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175313.P9992641638241380102

/-! ## A175313.P1094317294079909953

`A133137(A360029(n+1))`
-/

namespace A175313.P1094317294079909953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133137 (A360029 (n + 1)).toNat

end

end A175313.P1094317294079909953

/-!
# A175317: a(n) = Sum_{d|n} A007955(d) where A007955(m) = product of divisors of m.

The programs for A175317, the canonical program `A175317.P9961619772187963400` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175317 has offset 1).

The definition of A175317 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175317.P9961619772187963400

`∑{d}[n+1, A007955(#)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A175317

/-- `∑{d}[n+1, A007955(#)]` -/
def P9961619772187963400.Spec : Prop :=
  ∀ n, P9961619772187963400.a n = A175317 (n + 1)

theorem P9961619772187963400.correct : P9961619772187963400.Spec := by
  intro n
  simp only [A175317, Nat.add_sub_cancel]

end A175317

/-! ## A175317.P3664450880219237391

`∑{d}[n+1, #*A007956(#)]`
-/

namespace A175317.P3664450880219237391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007956 d

end

end A175317.P3664450880219237391

namespace A175317

/-- `∑{d}[n+1, #*A007956(#)]` -/
def P3664450880219237391.Spec : Prop :=
  ∀ n, P3664450880219237391.a n = A175317 (n + 1)

end A175317

/-! ## A175317.P6085681013270620788

`∑{d}[n+1, sqrt(#)^A000005(#)]`
-/

namespace A175317.P6085681013270620788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (d : ℝ) ^ (A000005 d : ℤ)

end

end A175317.P6085681013270620788

namespace A175317

/-- `∑{d}[n+1, sqrt(#)^A000005(#)]` -/
def P6085681013270620788.Spec : Prop :=
  ∀ n, P6085681013270620788.a n = (A175317 (n + 1) : ℝ)

end A175317

/-! ## A175317.P5261274449383080052

`∑{d}[n+1, A000005(#)*A174940((n+1)/#)]`
-/

namespace A175317.P5261274449383080052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A174940 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A175317.P5261274449383080052

namespace A175317

/-- `∑{d}[n+1, A000005(#)*A174940((n+1)/#)]` -/
def P5261274449383080052.Spec : Prop :=
  ∀ n, P5261274449383080052.a n = A175317 (n + 1)

end A175317

/-! ## A175317.P8275860467681393402

`∑{d}[n+1, A023900(#)*A174932((n+1)/#)]`
-/

namespace A175317.P8275860467681393402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A174932 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A175317.P8275860467681393402

namespace A175317

/-- `∑{d}[n+1, A023900(#)*A174932((n+1)/#)]` -/
def P8275860467681393402.Spec : Prop :=
  ∀ n, P8275860467681393402.a n = A175317 (n + 1)

end A175317

/-! ## A175317.P15348525299529503542

`∑{d}[n+1, sqrt(A062758(#))]`
-/

namespace A175317.P15348525299529503542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (A062758 d : ℝ)

end

end A175317.P15348525299529503542

namespace A175317

/-- `∑{d}[n+1, sqrt(A062758(#))]` -/
def P15348525299529503542.Spec : Prop :=
  ∀ n, P15348525299529503542.a n = (A175317 (n + 1) : ℝ)

end A175317

/-! ## A175317.P12856615805172261277

`∑{d}[n+1, A240694(A006218(#))]`
-/

namespace A175317.P12856615805172261277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A240694 (A006218 d).toNat

end

end A175317.P12856615805172261277

namespace A175317

/-- `∑{d}[n+1, A240694(A006218(#))]` -/
def P12856615805172261277.Spec : Prop :=
  ∀ n, P12856615805172261277.a n = A175317 (n + 1)

end A175317

/-!
# A175318: a(n) = Sum_{k<=n} A007955(k), where A007955(m) = product of divisors of m.

The programs for A175318, the canonical program `A175318.P13298413136417052649` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175318 has offset 1).

The definition of A175318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175318.P13298413136417052649

`∑[∏{d}[n+1, #]]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A175318

/-- `∑[∏{d}[n+1, #]]` -/
def P13298413136417052649.Spec : Prop :=
  ∀ n, (P13298413136417052649.a n : ℤ) = A175318 (n + 1)

theorem P13298413136417052649.correct : P13298413136417052649.Spec := by
  intro n
  simp only [A175318, Nat.add_sub_cancel]

end A175318

/-! ## A175318.P10090843487726647244

`∑[exp(∑{d}[n+1, log(#)])]`
-/

namespace A175318.P10090843487726647244
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ d ∈ Nat.divisors (f2 n), Real.log (d : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175318.P10090843487726647244

namespace A175318

/-- `∑[exp(∑{d}[n+1, log(#)])]` -/
def P10090843487726647244.Spec : Prop :=
  ∀ n, P10090843487726647244.a n = (A175318 (n + 1) : ℝ)

end A175318

/-! ## A175318.P11093678394111948111

`Δ[∑[∑[∏{d}[n, #]]]-n]`
-/

namespace A175318.P11093678394111948111
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175318.P11093678394111948111

namespace A175318

/-- `Δ[∑[∑[∏{d}[n, #]]]-n]` -/
def P11093678394111948111.Spec : Prop :=
  ∀ n, P11093678394111948111.a n = A175318 (n + 1)

end A175318

/-! ## A175318.P8675978330079460565

`∑[2^∑{d}[n+1, log2(#)]]`
-/

namespace A175318.P8675978330079460565
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ d ∈ Nat.divisors (f2 n), Real.logb 2 (d : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175318.P8675978330079460565

namespace A175318

/-- `∑[2^∑{d}[n+1, log2(#)]]` -/
def P8675978330079460565.Spec : Prop :=
  ∀ n, P8675978330079460565.a n = (A175318 (n + 1) : ℝ)

end A175318

/-! ## A175318.P11122671854057386934

`∑[ratio[∏{d}[n, #]]*∏{d}[n, #]]`
-/

namespace A175318.P11122671854057386934
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), d

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ) * ((∏ d ∈ Nat.divisors (f4 n), d : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175318.P11122671854057386934

namespace A175318

/-- `∑[ratio[∏{d}[n, #]]*∏{d}[n, #]]` -/
def P11122671854057386934.Spec : Prop :=
  ∀ n, P11122671854057386934.a n = (A175318 (n + 1) : ℚ)

end A175318

/-! ## A175318.P16619495646893823976

`∏{d}[n+1, #]+a(n-1)` with `a(0)=1`
-/

namespace A175318.P16619495646893823976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∏ d ∈ Nat.divisors (f1 n), d + a (n - 1)

end

end A175318.P16619495646893823976

namespace A175318

/-- `∏{d}[n+1, #]+a(n-1)` -/
def P16619495646893823976.Spec : Prop :=
  ∀ n, (P16619495646893823976.a n : ℤ) = A175318 (n + 1)

end A175318

/-! ## A175318.P6453815219429453132

`∑[A007955(n+1)]`
-/

namespace A175318.P6453815219429453132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175318.P6453815219429453132

namespace A175318

/-- `∑[A007955(n+1)]` -/
def P6453815219429453132.Spec : Prop :=
  ∀ n, P6453815219429453132.a n = A175318 (n + 1)

end A175318

/-! ## A175318.P14124212597816839093

`∑[(n+1)*A007956(n+1)]`
-/

namespace A175318.P14124212597816839093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175318.P14124212597816839093

namespace A175318

/-- `∑[(n+1)*A007956(n+1)]` -/
def P14124212597816839093.Spec : Prop :=
  ∀ n, P14124212597816839093.a n = A175318 (n + 1)

end A175318

/-! ## A175318.P17795893333392730456

`∑[A338576(n+1)/(n+1)]`
-/

namespace A175318.P17795893333392730456
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338576 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175318.P17795893333392730456

namespace A175318

/-- `∑[A338576(n+1)/(n+1)]` -/
def P17795893333392730456.Spec : Prop :=
  ∀ n, P17795893333392730456.a n = (A175318 (n + 1) : ℚ)

end A175318

/-! ## A175318.P6184856627637685518

`A174934(n+2)-(A174934(n+1)+A007955(n+2))`
-/

namespace A175318.P6184856627637685518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174934 (n + 2) - (A174934 (n + 1) + A007955 (n + 2))

end

end A175318.P6184856627637685518

namespace A175318

/-- `A174934(n+2)-(A174934(n+1)+A007955(n+2))` -/
def P6184856627637685518.Spec : Prop :=
  ∀ n, P6184856627637685518.a n = A175318 (n + 1)

end A175318

/-! ## A175318.P6194950399162899363

`∑[sqrt(A062758(n+1))]`
-/

namespace A175318.P6194950399162899363
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062758 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175318.P6194950399162899363

namespace A175318

/-- `∑[sqrt(A062758(n+1))]` -/
def P6194950399162899363.Spec : Prop :=
  ∀ n, P6194950399162899363.a n = (A175318 (n + 1) : ℝ)

end A175318

/-! ## A175318.P5032036683070320713

`∑[A240694(∑[A000005(n+1)])]`
-/

namespace A175318.P5032036683070320713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240694 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175318.P5032036683070320713

namespace A175318

/-- `∑[A240694(∑[A000005(n+1)])]` -/
def P5032036683070320713.Spec : Prop :=
  ∀ n, P5032036683070320713.a n = A175318 (n + 1)

end A175318

/-!
# A175319: Half-sums (averages) of two primes with indices that are primes with prime indices.

The programs for A175319, there is no canonical definition to state claims against.
-/

/-! ## A175319.P16363681214235443366

`comp[A175320(n+1)-1]+1`
-/

namespace A175319.P16363681214235443366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175320 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A175319.P16363681214235443366

/-! ## A175319.P9139861391706667090

`eq[char[A175320(n+1)], A000007(n)]`
-/

namespace A175319.P9139861391706667090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175320 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A175319.P9139861391706667090

/-! ## A175319.P17468169473375592675

`eq[char[A175320(n+1)], A000038(n)]`
-/

namespace A175319.P17468169473375592675
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175320 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A175319.P17468169473375592675

/-! ## A175319.P9037356771827245591

`eq[char[A175320(n+1)], A130706(n)]`
-/

namespace A175319.P9037356771827245591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175320 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A175319.P9037356771827245591

/-! ## A175319.P15203540074227880885

`eq[char[A175320(n+1)], A151933(n)]`
-/

namespace A175319.P15203540074227880885
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175320 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A175319.P15203540074227880885

/-!
# A175320: Positive integers which cannot be represented as half-sums (averages) of two primes with indices that are primes with prime indices.

The programs for A175320, there is no canonical definition to state claims against.
-/

/-! ## A175320.P204643306281591365

`lt[char[A175319(n+1)]*A052548(n), n]`
-/

namespace A175320.P204643306281591365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175319 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A052548 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A175320.P204643306281591365

/-! ## A175320.P13718941603186744449

`lt[char[A175319(n+1)], n/A136876(2*(n+2))]`
-/

namespace A175320.P13718941603186744449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175319 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A136876 (2 * (n + 2)) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A175320.P13718941603186744449

/-! ## A175320.P16750630080912259278

`lt[char[A175319(n+1)], n/A085790(n²+1)]`
-/

namespace A175320.P16750630080912259278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175319 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A085790 (n ^ 2 + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A175320.P16750630080912259278

/-! ## A175320.P17502171549638670103

`eq[char[A175319(n+1)], A151933(n)]`
-/

namespace A175320.P17502171549638670103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175319 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A175320.P17502171549638670103

/-! ## A175320.P6923462824279762903

`eq[char[A175319(n+1)], A151622(n)]`
-/

namespace A175320.P6923462824279762903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175319 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A175320.P6923462824279762903

/-!
# A175322: a(n) = A053141(n)*A001109(n+1) = Sum_{k=A053141(n)+1..A001109(n+1)-1} k.

The programs for A175322, the canonical program `A175322.P16000230983706862446` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175322 has offset 1).

The definition of A175322 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175322.P16000230983706862446

`A053141(n+1)*A001109(n+2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A175322

/-- `A053141(n+1)*A001109(n+2)` -/
def P16000230983706862446.Spec : Prop :=
  ∀ n, P16000230983706862446.a n = A175322 (n + 1)

theorem P16000230983706862446.correct : P16000230983706862446.Spec := by
  intro n
  simp only [A175322, Nat.add_sub_cancel]

end A175322

/-! ## A175322.P14854423475852925082

`A001542(n+2)*A053142(n+1)`
-/

namespace A175322.P14854423475852925082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 (n + 2) * A053142 (n + 1)

end

end A175322.P14854423475852925082

namespace A175322

/-- `A001542(n+2)*A053142(n+1)` -/
def P14854423475852925082.Spec : Prop :=
  ∀ n, P14854423475852925082.a n = A175322 (n + 1)

end A175322

/-! ## A175322.P5015043092252892131

`sqrt(A001110(n+2))*A053141(n+1)`
-/

namespace A175322.P5015043092252892131
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001110 (n + 2) : ℝ) * (A053141 (n + 1) : ℝ)

end

end A175322.P5015043092252892131

namespace A175322

/-- `sqrt(A001110(n+2))*A053141(n+1)` -/
def P5015043092252892131.Spec : Prop :=
  ∀ n, P5015043092252892131.a n = (A175322 (n + 1) : ℝ)

end A175322

/-! ## A175322.P16535993860210899587

`∑[A001109(n+1)]*A001542(n+2)`
-/

namespace A175322.P16535993860210899587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001542 (n + 2)

end

end A175322.P16535993860210899587

namespace A175322

/-- `∑[A001109(n+1)]*A001542(n+2)` -/
def P16535993860210899587.Spec : Prop :=
  ∀ n, P16535993860210899587.a n = A175322 (n + 1)

end A175322

/-! ## A175322.P178738108986539442

`Δ[A011900(n+1)]*A053142(n+1)`
-/

namespace A175322.P178738108986539442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A053142 (n + 1)

end

end A175322.P178738108986539442

namespace A175322

/-- `Δ[A011900(n+1)]*A053142(n+1)` -/
def P178738108986539442.Spec : Prop :=
  ∀ n, P178738108986539442.a n = A175322 (n + 1)

end A175322

/-! ## A175322.P11542848651241561470

`Δ[A053141(n+1)]*A053142(n+1)`
-/

namespace A175322.P11542848651241561470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A053142 (n + 1)

end

end A175322.P11542848651241561470

namespace A175322

/-- `Δ[A053141(n+1)]*A053142(n+1)` -/
def P11542848651241561470.Spec : Prop :=
  ∀ n, P11542848651241561470.a n = A175322 (n + 1)

end A175322

/-! ## A175322.P10756301061423919606

`(A076708(n+2)+1)*A053141(n+1)`
-/

namespace A175322.P10756301061423919606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A076708 (n + 2) + 1) * A053141 (n + 1)

end

end A175322.P10756301061423919606

namespace A175322

/-- `(A076708(n+2)+1)*A053141(n+1)` -/
def P10756301061423919606.Spec : Prop :=
  ∀ n, P10756301061423919606.a n = A175322 (n + 1)

end A175322

/-! ## A175322.P221403623695359118

`∑[A000129(2*(n+1))]*A001109(n+2)`
-/

namespace A175322.P221403623695359118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001109 (n + 2)

end

end A175322.P221403623695359118

namespace A175322

/-- `∑[A000129(2*(n+1))]*A001109(n+2)` -/
def P221403623695359118.Spec : Prop :=
  ∀ n, P221403623695359118.a n = A175322 (n + 1)

end A175322

/-! ## A175322.P8360116215036537749

`A105635(2*(n+1))*A105635(2*n+3)`
-/

namespace A175322.P8360116215036537749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105635 (2 * (n + 1)) * A105635 (2 * n + 3)

end

end A175322.P8360116215036537749

namespace A175322

/-- `A105635(2*(n+1))*A105635(2*n+3)` -/
def P8360116215036537749.Spec : Prop :=
  ∀ n, P8360116215036537749.a n = A175322 (n + 1)

end A175322

/-! ## A175322.P3856749186134146117

`A001109(n+2)*A105635(A005843(n+1))`
-/

namespace A175322.P3856749186134146117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 (n + 2) * A105635 (A005843 (n + 1)).toNat

end

end A175322.P3856749186134146117

namespace A175322

/-- `A001109(n+2)*A105635(A005843(n+1))` -/
def P3856749186134146117.Spec : Prop :=
  ∀ n, P3856749186134146117.a n = A175322 (n + 1)

end A175322

/-!
# A175323: a(n) = the largest divisor of n that has only distinct run-lengths (among all runs both of 0's and of 1's) when written in binary.

The programs for A175323, there is no canonical definition to state claims against.
-/

/-! ## A175323.P10363256897166431026

`gcd(n+1, A128035(A179016(n)))`
-/

namespace A175323.P10363256897166431026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A128035 (A179016 n).toNat)

end

end A175323.P10363256897166431026

/-! ## A175323.P9256310594030939436

`gcd(A000027(n+1), A260158(A214831(n)))`
-/

namespace A175323.P9256310594030939436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A260158 (A214831 n).toNat)

end

end A175323.P9256310594030939436

/-! ## A175323.P2033524626534070623

`gcd(A072438(n+1), A145648(A321286(n)))`
-/

namespace A175323.P2033524626534070623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072438 (n + 1)) (A145648 (A321286 n).toNat)

end

end A175323.P2033524626534070623

/-! ## A175323.P3696951479273601996

`gcd((n+1)/10^val(n+1, 10), A332005(∑[n]))`
-/

namespace A175323.P3696951479273601996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ))) (A332005 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A175323.P3696951479273601996

/-! ## A175323.P14979052724432652525

`gcd(29*(n+1), A020886(A289931(n)))`
-/

namespace A175323.P14979052724432652525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (29 * (n + 1) : ℤ) (A020886 (A289931 n).toNat)

end

end A175323.P14979052724432652525

/-!
# A175324: Those positive integers n where no divisors of n but 1 contain only distinct run-lengths (of runs both of 0's and of 1's) when written in binary. A175323(a(n)) = 1.

The programs for A175324, there is no canonical definition to state claims against.
-/

/-! ## A175324.P8249211067481866056

`eq[1, A175323(n+1)]+1`
-/

namespace A175324.P8249211067481866056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175323 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175324.P8249211067481866056

/-! ## A175324.P8012858320439585492

`A004482(eq[1, A175323(n+1)])`
-/

namespace A175324.P8012858320439585492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A175324.P8012858320439585492

/-! ## A175324.P17108069380560293954

`A004482(lt[A175323(n+1), 2])`
-/

namespace A175324.P17108069380560293954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175323 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A175324.P17108069380560293954

/-! ## A175324.P4407116799584781878

`A004482(record[n/A175323(n+1)])`
-/

namespace A175324.P4407116799584781878
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A175323 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A175324.P4407116799584781878

/-! ## A175324.P8255333361156064303

`record[A000027(n+1)/A175323(n+1)]`
-/

namespace A175324.P8255333361156064303
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A175323 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175324.P8255333361156064303

/-!
# A175325: a(n) = the smallest positive multiple of n such that a(n) written in binary contains only distinct run-lengths (of runs both of 0's and of 1's).

The programs for A175325, there is no canonical definition to state claims against.
-/

/-! ## A175325.P5691007884269433186

`(n+1)*gcd(n-1, A196229(3*n+2))`
-/

namespace A175325.P5691007884269433186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.gcd ((n : ℤ) - 1) (A196229 (3 * n + 2))

end

end A175325.P5691007884269433186

/-! ## A175325.P9126985848928749738

`(n+1)*A307372(A307024(3*n+1))`
-/

namespace A175325.P9126985848928749738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A307372 (A307024 (3 * n + 1)).toNat

end

end A175325.P9126985848928749738

/-! ## A175325.P8420125973302979110

`(n+1)*A196839(A045641(3*n+4))`
-/

namespace A175325.P8420125973302979110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A196839 (A045641 (3 * n + 4)).toNat

end

end A175325.P8420125973302979110

/-! ## A175325.P1185915958694552640

`A131629(2*n+1)^A238012(n+3)+n`
-/

namespace A175325.P1185915958694552640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131629 (2 * n + 1) : ℚ) ^ (A238012 (n + 3) : ℤ) + (n : ℚ)

end

end A175325.P1185915958694552640

/-! ## A175325.P4039611556894912120

`A204983(n+1)+A049084(A096260(n))`
-/

namespace A175325.P4039611556894912120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204983 (n + 1) + A049084 (A096260 n).toNat

end

end A175325.P4039611556894912120

/-!
# A175327: Table read by rows. Row n contains A175328(n) terms. Row n contains the run-lengths, written in order from left to right, of the binary representation of A175326(n).

The programs for A175327, there is no canonical definition to state claims against.
-/

/-! ## A175327.P12012970632349773788

`A101211(lt[A101204(n), n])`
-/

namespace A175327.P12012970632349773788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101204 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101211 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A175327.P12012970632349773788

/-! ## A175327.P5336641416318672050

`A325509(and(A100560(n), A140144(n+1)))`
-/

namespace A175327.P5336641416318672050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325509 (Int.land (A100560 n) (A140144 (n + 1))).toNat

end

end A175327.P5336641416318672050

/-! ## A175327.P1181649640071411157

`A000164(and(A011974(n+2), A035518(n+1)))`
-/

namespace A175327.P1181649640071411157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (Int.land (A011974 (n + 2)) (A035518 (n + 1))).toNat

end

end A175327.P1181649640071411157

/-! ## A175327.P16141488491649390319

`A101211(lt[A326326(2*n), A033316(n+1)])`
-/

namespace A175327.P16141488491649390319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326326 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101211 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A175327.P16141488491649390319

/-! ## A175327.P12385322512957044253

`A101211(A061479(n)+1)`
-/

namespace A175327.P12385322512957044253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101211 (A061479 n + 1).toNat

end

end A175327.P12385322512957044253

/-!
# A175328: a(n) is the number of terms in row n of irregular table A175327. For n >= 1, a(n) = number of runs (of both 0's and 1's) in the binary representation of A175326(n).

The programs for A175328, there is no canonical definition to state claims against.
-/

/-! ## A175328.P9097513673096203357

`A005811(record[A223893(A239088(n+1))])`
-/

namespace A175328.P9097513673096203357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223893 (A239088 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175328.P9097513673096203357

/-! ## A175328.P15135966707522146573

`A001222(lt[A033271(n+1), A286332(n+1)])`
-/

namespace A175328.P15135966707522146573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A175328.P15135966707522146573

/-! ## A175328.P7360260060071567339

`A005811(lt[A173068(n), A000010(n+1)])`
-/

namespace A175328.P7360260060071567339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173068 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A175328.P7360260060071567339

/-! ## A175328.P17287600455112783016

`A325273(A000079(n))+A072786(3*n+1)`
-/

namespace A175328.P17287600455112783016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325273 (A000079 n).toNat + A072786 (3 * n + 1)

end

end A175328.P17287600455112783016

/-! ## A175328.P1571332105112792923

`A305079(A064896(n+1)*A308701(n+4))`
-/

namespace A175328.P1571332105112792923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A064896 (n + 1) * A308701 (n + 4)).toNat

end

end A175328.P1571332105112792923

/-!
# A175329: a(n) = bitwise OR of prime(n) and prime(n+1).

The programs for A175329, the canonical program `A175329.P5335527678023047672` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175329 has offset 1).

The definition of A175329 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175329.P5335527678023047672

`or(A000040(n+1), A000040(n+2))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A175329

/-- `or(A000040(n+1), A000040(n+2))` -/
def P5335527678023047672.Spec : Prop :=
  ∀ n, P5335527678023047672.a n = A175329 (n + 1)

theorem P5335527678023047672.correct : P5335527678023047672.Spec := by
  intro n
  simp only [A175329, Nat.add_sub_cancel]

end A175329

/-! ## A175329.P995532335207651195

`or(p?[a(n-4)+5], p?[2*n+1])` with `a(0)=2, a(1)=1, a(2)=2, a(3)=3, a(4)=4`
-/

namespace A175329.P995532335207651195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2, 3, 4] fun n f1 =>
  f1 (n - 4) + 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

end

end A175329.P995532335207651195

namespace A175329

/-- `or(p?[a(n-4)+5], p?[2*n+1])` -/
def P995532335207651195.Spec : Prop :=
  ∀ n, (P995532335207651195.a n : ℤ) = A175329 (n + 1)

end A175329

/-! ## A175329.P15363006451782651207

`or(Δ[A007504(n)], p?[2*n+1])`
-/

namespace A175329.P15363006451782651207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A175329.P15363006451782651207

namespace A175329

/-- `or(Δ[A007504(n)], p?[2*n+1])` -/
def P15363006451782651207.Spec : Prop :=
  ∀ n, P15363006451782651207.a n = A175329 (n + 1)

end A175329

/-! ## A175329.P17882016053509587315

`or(p?[2*n+1], A006005(n+1))`
-/

namespace A175329.P17882016053509587315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (A006005 (n + 1))

end

end A175329.P17882016053509587315

namespace A175329

/-- `or(p?[2*n+1], A006005(n+1))` -/
def P17882016053509587315.Spec : Prop :=
  ∀ n, P17882016053509587315.a n = A175329 (n + 1)

end A175329

/-! ## A175329.P14349233160096419554

`or(sqrt(A001248(n+1)), p?[2*n+1])`
-/

namespace A175329.P14349233160096419554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A175329.P14349233160096419554

namespace A175329

/-- `or(sqrt(A001248(n+1)), p?[2*n+1])` -/
def P14349233160096419554.Spec : Prop :=
  ∀ n, P14349233160096419554.a n = A175329 (n + 1)

end A175329

/-! ## A175329.P8893632668065830154

`or(∑[A054541(n+1)], p?[2*n+1])`
-/

namespace A175329.P8893632668065830154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A175329.P8893632668065830154

namespace A175329

/-- `or(∑[A054541(n+1)], p?[2*n+1])` -/
def P8893632668065830154.Spec : Prop :=
  ∀ n, P8893632668065830154.a n = A175329 (n + 1)

end A175329

/-! ## A175329.P8928915267584151150

`or(A040976(n+1)+2, p?[2*n+1])`
-/

namespace A175329.P8928915267584151150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040976 (n + 1) + 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A175329.P8928915267584151150

namespace A175329

/-- `or(A040976(n+1)+2, p?[2*n+1])` -/
def P8928915267584151150.Spec : Prop :=
  ∀ n, P8928915267584151150.a n = A175329 (n + 1)

end A175329

/-! ## A175329.P13710592568208772259

`or(A001748(n+1)/3, p?[2*n+1])`
-/

namespace A175329.P13710592568208772259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A175329.P13710592568208772259

namespace A175329

/-- `or(A001748(n+1)/3, p?[2*n+1])` -/
def P13710592568208772259.Spec : Prop :=
  ∀ n, P13710592568208772259.a n = A175329 (n + 1)

end A175329

/-! ## A175329.P10595950998891948323

`or(p?[2*n+1], ∑{d}[n+1, A007444(#)])`
-/

namespace A175329.P10595950998891948323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (∑ d ∈ Nat.divisors (f2 n), A007444 d)

end

end A175329.P10595950998891948323

namespace A175329

/-- `or(p?[2*n+1], ∑{d}[n+1, A007444(#)])` -/
def P10595950998891948323.Spec : Prop :=
  ∀ n, P10595950998891948323.a n = A175329 (n + 1)

end A175329

/-! ## A175329.P18216196361866612911

`or(Δ[A007504(n)], A065091(n+1))`
-/

namespace A175329.P18216196361866612911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A065091 (n + 1))

end

end A175329.P18216196361866612911

namespace A175329

/-- `or(Δ[A007504(n)], A065091(n+1))` -/
def P18216196361866612911.Spec : Prop :=
  ∀ n, P18216196361866612911.a n = A175329 (n + 1)

end A175329

/-! ## A175329.P6807345680646661052

`A001043(n+1)-A175330(n+1)`
-/

namespace A175329.P6807345680646661052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - A175330 (n + 1)

end

end A175329.P6807345680646661052

namespace A175329

/-- `A001043(n+1)-A175330(n+1)` -/
def P6807345680646661052.Spec : Prop :=
  ∀ n, P6807345680646661052.a n = A175329 (n + 1)

end A175329

/-! ## A175329.P10173959382543260063

`or(A006005(n+1), A045344(n+1))`
-/

namespace A175329.P10173959382543260063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006005 (n + 1)) (A045344 (n + 1))

end

end A175329.P10173959382543260063

namespace A175329

/-- `or(A006005(n+1), A045344(n+1))` -/
def P10173959382543260063.Spec : Prop :=
  ∀ n, P10173959382543260063.a n = A175329 (n + 1)

end A175329

/-! ## A175329.P9367494506688612153

`or(A006093(n+1), A065091(n+1))`
-/

namespace A175329.P9367494506688612153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006093 (n + 1)) (A065091 (n + 1))

end

end A175329.P9367494506688612153

namespace A175329

/-- `or(A006093(n+1), A065091(n+1))` -/
def P9367494506688612153.Spec : Prop :=
  ∀ n, P9367494506688612153.a n = A175329 (n + 1)

end A175329

/-! ## A175329.P9683088766471141087

`or(A039915(n+1), A065091(n+1))`
-/

namespace A175329.P9683088766471141087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A039915 (n + 1)) (A065091 (n + 1))

end

end A175329.P9683088766471141087

namespace A175329

/-- `or(A039915(n+1), A065091(n+1))` -/
def P9683088766471141087.Spec : Prop :=
  ∀ n, P9683088766471141087.a n = A175329 (n + 1)

end A175329

/-! ## A175329.P16874429263669180638

`or(Δ[A007504(n+1)], A006093(n+1))`
-/

namespace A175329.P16874429263669180638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A006093 (n + 1))

end

end A175329.P16874429263669180638

namespace A175329

/-- `or(Δ[A007504(n+1)], A006093(n+1))` -/
def P16874429263669180638.Spec : Prop :=
  ∀ n, P16874429263669180638.a n = A175329 (n + 1)

end A175329

/-! ## A175329.P10971206074409984503

`or(record[A259153(n+3)], A006093(n+1))`
-/

namespace A175329.P10971206074409984503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A006093 (n + 1))

end

end A175329.P10971206074409984503

namespace A175329

/-- `or(record[A259153(n+3)], A006093(n+1))` -/
def P10971206074409984503.Spec : Prop :=
  ∀ n, P10971206074409984503.a n = A175329 (n + 1)

end A175329

/-! ## A175329.P1744516138080673289

`or(A040976(n+1)+2, record[A259153(n+3)])`
-/

namespace A175329.P1744516138080673289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040976 (n + 1) + 2) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A175329.P1744516138080673289

namespace A175329

/-- `or(A040976(n+1)+2, record[A259153(n+3)])` -/
def P1744516138080673289.Spec : Prop :=
  ∀ n, P1744516138080673289.a n = A175329 (n + 1)

end A175329

/-! ## A175329.P12099039647888905484

`or(A006005(n+1), A006005(n+2))`
-/

namespace A175329.P12099039647888905484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006005 (n + 1)) (A006005 (n + 2))

end

end A175329.P12099039647888905484

namespace A175329

/-- `or(A006005(n+1), A006005(n+2))` -/
def P12099039647888905484.Spec : Prop :=
  ∀ n, P12099039647888905484.a n = A175329 (n + 1)

end A175329

/-! ## A175329.P8811805432703226647

`or(sqrt(A001248(n+2)), A006093(n+1))`
-/

namespace A175329.P8811805432703226647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 2) : ℝ))) (A006093 (n + 1))

end

end A175329.P8811805432703226647

namespace A175329

/-- `or(sqrt(A001248(n+2)), A006093(n+1))` -/
def P8811805432703226647.Spec : Prop :=
  ∀ n, P8811805432703226647.a n = A175329 (n + 1)

end A175329

/-! ## A175329.P15594239555612600433

`A000040(n+1)+A000040(n+2)-A175330(n+1)`
-/

namespace A175329.P15594239555612600433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A000040 (n + 2) - A175330 (n + 1))

end

end A175329.P15594239555612600433

namespace A175329

/-- `A000040(n+1)+A000040(n+2)-A175330(n+1)` -/
def P15594239555612600433.Spec : Prop :=
  ∀ n, P15594239555612600433.a n = A175329 (n + 1)

end A175329

/-!
# A175330: a(n) = bitwise AND of prime(n) and prime(n+1).

The programs for A175330, the canonical program `A175330.P9833656130759947546` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175330 has offset 1).

The definition of A175330 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175330.P9833656130759947546

`and(A000040(n+1), A000040(n+2))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A175330

/-- `and(A000040(n+1), A000040(n+2))` -/
def P9833656130759947546.Spec : Prop :=
  ∀ n, P9833656130759947546.a n = A175330 (n + 1)

theorem P9833656130759947546.correct : P9833656130759947546.Spec := by
  intro n
  simp only [A175330, Nat.add_sub_cancel]

end A175330

/-! ## A175330.P8786461788125969514

`and(Δ[A007504(n)], A045344(n+1))`
-/

namespace A175330.P8786461788125969514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A045344 (n + 1))

end

end A175330.P8786461788125969514

namespace A175330

/-- `and(Δ[A007504(n)], A045344(n+1))` -/
def P8786461788125969514.Spec : Prop :=
  ∀ n, P8786461788125969514.a n = A175330 (n + 1)

end A175330

/-! ## A175330.P7477727535064789090

`and(Δ[A007504(n)], A065091(n+1))`
-/

namespace A175330.P7477727535064789090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A065091 (n + 1))

end

end A175330.P7477727535064789090

namespace A175330

/-- `and(Δ[A007504(n)], A065091(n+1))` -/
def P7477727535064789090.Spec : Prop :=
  ∀ n, P7477727535064789090.a n = A175330 (n + 1)

end A175330

/-! ## A175330.P12365178884906779595

`A001043(n+1)-A175329(n+1)`
-/

namespace A175330.P12365178884906779595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - A175329 (n + 1)

end

end A175330.P12365178884906779595

namespace A175330

/-- `A001043(n+1)-A175329(n+1)` -/
def P12365178884906779595.Spec : Prop :=
  ∀ n, P12365178884906779595.a n = A175330 (n + 1)

end A175330

/-! ## A175330.P190620159803348499

`A334172(n+1)-A334143(n+1)`
-/

namespace A175330.P190620159803348499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334172 (n + 1) - A334143 (n + 1)

end

end A175330.P190620159803348499

namespace A175330

/-- `A334172(n+1)-A334143(n+1)` -/
def P190620159803348499.Spec : Prop :=
  ∀ n, P190620159803348499.a n = A175330 (n + 1)

theorem P190620159803348499.correct : P190620159803348499.Spec := by
  intro n
  simp only [A175330, Nat.add_sub_cancel, A175330.P190620159803348499.a, A175330.P9833656130759947546.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A334143, A334143.P15608283684406534922.a, A334172, A334172.P15112562064051135258.a, A035327, A035327.P258997810375859489.a, A175329, A175329.P5335527678023047672.a, A053644, A053644.P1707366427427647095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175330

/-! ## A175330.P12710441732201133060

`and(A000040(n+1), A045344(n+1))`
-/

namespace A175330.P12710441732201133060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000040 (n + 1)) (A045344 (n + 1))

end

end A175330.P12710441732201133060

namespace A175330

/-- `and(A000040(n+1), A045344(n+1))` -/
def P12710441732201133060.Spec : Prop :=
  ∀ n, P12710441732201133060.a n = A175330 (n + 1)

end A175330

/-! ## A175330.P10211208245015782112

`and(A000040(n+1), A065091(n+1))`
-/

namespace A175330.P10211208245015782112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000040 (n + 1)) (A065091 (n + 1))

end

end A175330.P10211208245015782112

namespace A175330

/-- `and(A000040(n+1), A065091(n+1))` -/
def P10211208245015782112.Spec : Prop :=
  ∀ n, P10211208245015782112.a n = A175330 (n + 1)

end A175330

/-! ## A175330.P6851271987358925479

`and(A000040(n+1), A334172(n+1))`
-/

namespace A175330.P6851271987358925479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000040 (n + 1)) (A334172 (n + 1))

end

end A175330.P6851271987358925479

namespace A175330

/-- `and(A000040(n+1), A334172(n+1))` -/
def P6851271987358925479.Spec : Prop :=
  ∀ n, P6851271987358925479.a n = A175330 (n + 1)

end A175330

/-! ## A175330.P9817001534442087237

`and(A045319(n+1), A334172(n+1))`
-/

namespace A175330.P9817001534442087237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045319 (n + 1)) (A334172 (n + 1))

end

end A175330.P9817001534442087237

namespace A175330

/-- `and(A045319(n+1), A334172(n+1))` -/
def P9817001534442087237.Spec : Prop :=
  ∀ n, P9817001534442087237.a n = A175330 (n + 1)

end A175330

/-! ## A175330.P9679085628398155988

`and(A045344(n+1), A334172(n+1))`
-/

namespace A175330.P9679085628398155988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045344 (n + 1)) (A334172 (n + 1))

end

end A175330.P9679085628398155988

namespace A175330

/-- `and(A045344(n+1), A334172(n+1))` -/
def P9679085628398155988.Spec : Prop :=
  ∀ n, P9679085628398155988.a n = A175330 (n + 1)

end A175330

/-! ## A175330.P2055400497193019211

`and(sqrt(A001248(n+1)), A065091(n+1))`
-/

namespace A175330.P2055400497193019211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))) (A065091 (n + 1))

end

end A175330.P2055400497193019211

namespace A175330

/-- `and(sqrt(A001248(n+1)), A065091(n+1))` -/
def P2055400497193019211.Spec : Prop :=
  ∀ n, P2055400497193019211.a n = A175330 (n + 1)

end A175330

/-! ## A175330.P8953197618917332837

`and(A006093(n+1)+1, A045344(n+1))`
-/

namespace A175330.P8953197618917332837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006093 (n + 1) + 1) (A045344 (n + 1))

end

end A175330.P8953197618917332837

namespace A175330

/-- `and(A006093(n+1)+1, A045344(n+1))` -/
def P8953197618917332837.Spec : Prop :=
  ∀ n, P8953197618917332837.a n = A175330 (n + 1)

end A175330

/-! ## A175330.P13939318730285016652

`and(A006093(n+1)+1, Δ[A007504(n+1)])`
-/

namespace A175330.P13939318730285016652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006093 (n + 1) + 1) (f1 (n + 1) - f1 n)

end

end A175330.P13939318730285016652

namespace A175330

/-- `and(A006093(n+1)+1, Δ[A007504(n+1)])` -/
def P13939318730285016652.Spec : Prop :=
  ∀ n, P13939318730285016652.a n = A175330 (n + 1)

end A175330

/-! ## A175330.P4482444966313278141

`and(A040976(n+1)+2, Δ[A007504(n+1)])`
-/

namespace A175330.P4482444966313278141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A040976 (n + 1) + 2) (f1 (n + 1) - f1 n)

end

end A175330.P4482444966313278141

namespace A175330

/-- `and(A040976(n+1)+2, Δ[A007504(n+1)])` -/
def P4482444966313278141.Spec : Prop :=
  ∀ n, P4482444966313278141.a n = A175330 (n + 1)

end A175330

/-! ## A175330.P15908335812858024858

`and(A006093(n+1)+1, record[A259153(n+3)])`
-/

namespace A175330.P15908335812858024858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006093 (n + 1) + 1) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A175330.P15908335812858024858

namespace A175330

/-- `and(A006093(n+1)+1, record[A259153(n+3)])` -/
def P15908335812858024858.Spec : Prop :=
  ∀ n, P15908335812858024858.a n = A175330 (n + 1)

end A175330

/-! ## A175330.P4370266037188059267

`and(A040976(n+1)+2, record[A259153(n+3)])`
-/

namespace A175330.P4370266037188059267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A040976 (n + 1) + 2) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A175330.P4370266037188059267

namespace A175330

/-- `and(A040976(n+1)+2, record[A259153(n+3)])` -/
def P4370266037188059267.Spec : Prop :=
  ∀ n, P4370266037188059267.a n = A175330 (n + 1)

end A175330

/-! ## A175330.P17179586077346200785

`and(2*A005097(n+1)+1, A014692(n+1)+n)`
-/

namespace A175330.P17179586077346200785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * A005097 (n + 1) + 1) (A014692 (n + 1) + (n : ℤ))

end

end A175330.P17179586077346200785

namespace A175330

/-- `and(2*A005097(n+1)+1, A014692(n+1)+n)` -/
def P17179586077346200785.Spec : Prop :=
  ∀ n, P17179586077346200785.a n = A175330 (n + 1)

end A175330

/-! ## A175330.P9983338466589624629

`and(A000040(n+2), Δ[A007504(n)])`
-/

namespace A175330.P9983338466589624629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000040 (n + 2)) (f1 (n + 1) - f1 n)

end

end A175330.P9983338466589624629

namespace A175330

/-- `and(A000040(n+2), Δ[A007504(n)])` -/
def P9983338466589624629.Spec : Prop :=
  ∀ n, P9983338466589624629.a n = A175330 (n + 1)

end A175330

/-! ## A175330.P11463331120288672417

`A000040(n+2)+A000040(n+1)-A175329(n+1)`
-/

namespace A175330.P11463331120288672417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) + A000040 (n + 1) - A175329 (n + 1)

end

end A175330.P11463331120288672417

namespace A175330

/-- `A000040(n+2)+A000040(n+1)-A175329(n+1)` -/
def P11463331120288672417.Spec : Prop :=
  ∀ n, P11463331120288672417.a n = A175330 (n + 1)

end A175330

/-! ## A175330.P9252318534454468425

`A334172(n+1)-A035327(A175329(n+1))`
-/

namespace A175330.P9252318534454468425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334172 (n + 1) - A035327 (A175329 (n + 1)).toNat

end

end A175330.P9252318534454468425

namespace A175330

/-- `A334172(n+1)-A035327(A175329(n+1))` -/
def P9252318534454468425.Spec : Prop :=
  ∀ n, P9252318534454468425.a n = A175330 (n + 1)

theorem P9252318534454468425.correct : P9252318534454468425.Spec := by
  intro n
  simp only [A175330, Nat.add_sub_cancel, A175330.P9252318534454468425.a, A175330.P9833656130759947546.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A035327, A035327.P258997810375859489.a, A175329, A175329.P5335527678023047672.a, A334172, A334172.P15112562064051135258.a, A053644, A053644.P1707366427427647095.a, A334143, A334143.P15608283684406534922.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175330

/-!
# A175331: Array A092921(n,k) without the first two rows, read by antidiagonals.

The programs for A175331, there is no canonical definition to state claims against.
-/

/-! ## A175331.P3764633615645498964

`A048887(∑[char[∑[n]]]²-n)`
-/

namespace A175331.P3764633615645498964
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A175331.P3764633615645498964

/-! ## A175331.P2159559359900896638

`or(char[1], A048887(A038722(n+1)))`
-/

namespace A175331.P2159559359900896638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A048887 (A038722 (n + 1)).toNat)

end

end A175331.P2159559359900896638

/-! ## A175331.P3772661421698064118

`A048887(A038722(n+1))^(A169585(n)+1)`
-/

namespace A175331.P3772661421698064118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048887 (A038722 (n + 1)).toNat : ℚ) ^ (A169585 n + 1 : ℤ)

end

end A175331.P3772661421698064118

/-! ## A175331.P10116599757124130732

`A048887(A038722(n+1))+C(n, A000203(n+1))`
-/

namespace A175331.P10116599757124130732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 (A038722 (n + 1)).toNat + (Nat.choose n (A000203 (n + 1)).toNat : ℤ)

end

end A175331.P10116599757124130732

/-! ## A175331.P17917103969899400395

`A048887(A038722(n+1))+C(n, A018252(n+1))`
-/

namespace A175331.P17917103969899400395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 (A038722 (n + 1)).toNat + (Nat.choose n (A018252 (n + 1)).toNat : ℤ)

end

end A175331.P17917103969899400395

/-! ## A175331.P2317149865147861475

`A048887(A278818(n))%A048003(n+1)`
-/

namespace A175331.P2317149865147861475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048887 (A278818 n).toNat) (A048003 (n + 1))

end

end A175331.P2317149865147861475

/-! ## A175331.P12664795319753932348

`A092921(comp[∑[n]]+∑[char[∑[n]]])`
-/

namespace A175331.P12664795319753932348
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + ∑ j ∈ Finset.range (n + 1), f3 j)

end

end A175331.P12664795319753932348

/-! ## A175331.P10770174011997040145

`A390469(A014132(n+1))`
-/

namespace A175331.P10770174011997040145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390469 (A014132 (n + 1)).toNat

end

end A175331.P10770174011997040145

/-!
# A175332: Numbers whose binary expansion is of the form 11+0*.

The programs for A175332, the canonical program `A175332.P10633603557300615745` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175332 has offset 1).

The definition of A175332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175332.P13653581412375284074

`(2^(col(n)+2)-1)*2^(row(n)-col(n))`
-/

namespace A175332.P13653581412375284074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (SequenceMachineLib.triCol n + 2) : ℤ) - 1 : ℚ) * (2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)

end

end A175332.P13653581412375284074

namespace A175332

/-- `(2^(col(n)+2)-1)*2^(row(n)-col(n))` -/
def P13653581412375284074.Spec : Prop :=
  ∀ n, P13653581412375284074.a n = (A175332 (n + 1) : ℚ)

end A175332

/-! ## A175332.P2447650144249104283

`A118586(n+1)/2`
-/

namespace A175332.P2447650144249104283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118586 (n + 1) : ℚ) / 2

end

end A175332.P2447650144249104283

namespace A175332

/-- `A118586(n+1)/2` -/
def P2447650144249104283.Spec : Prop :=
  ∀ n, P2447650144249104283.a n = (A175332 (n + 1) : ℚ)

end A175332

/-! ## A175332.P6451736916315252862

`(A190620(n+1)+1)/2`
-/

namespace A175332.P6451736916315252862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190620 (n + 1) + 1 : ℚ) / 2

end

end A175332.P6451736916315252862

namespace A175332

/-- `(A190620(n+1)+1)/2` -/
def P6451736916315252862.Spec : Prop :=
  ∀ n, P6451736916315252862.a n = (A175332 (n + 1) : ℚ)

end A175332

/-! ## A175332.P10633603557300615745

`A130321(n)+A043569(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A175332

/-- `A130321(n)+A043569(n+1)` -/
def P10633603557300615745.Spec : Prop :=
  ∀ n, P10633603557300615745.a n = A175332 (n + 1)

theorem P10633603557300615745.correct : P10633603557300615745.Spec := by
  intro n
  simp only [A175332, Nat.add_sub_cancel]

end A175332

/-! ## A175332.P17658418791584803165

`A089633(n)+A140513(n)+1`
-/

namespace A175332.P17658418791584803165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 n + (A140513 n + 1)

end

end A175332.P17658418791584803165

namespace A175332

/-- `A089633(n)+A140513(n)+1` -/
def P17658418791584803165.Spec : Prop :=
  ∀ n, P17658418791584803165.a n = A175332 (n + 1)

end A175332

/-! ## A175332.P6311495724497698837

`A081118(n+2)+A023532(n)`
-/

namespace A175332.P6311495724497698837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (n + 2) + A023532 n

end

end A175332.P6311495724497698837

namespace A175332

/-- `A081118(n+2)+A023532(n)` -/
def P6311495724497698837.Spec : Prop :=
  ∀ n, P6311495724497698837.a n = A175332 (n + 1)

end A175332

/-! ## A175332.P3052983302023067097

`A098354(n+1)-A130321(n)`
-/

namespace A175332.P3052983302023067097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098354 (n + 1) - A130321 n

end

end A175332.P3052983302023067097

namespace A175332

/-- `A098354(n+1)-A130321(n)` -/
def P3052983302023067097.Spec : Prop :=
  ∀ n, P3052983302023067097.a n = A175332 (n + 1)

end A175332

/-! ## A175332.P16513182218593908386

`A136318(n+1)-A271709(n)`
-/

namespace A175332.P16513182218593908386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136318 (n + 1) - A271709 n

end

end A175332.P16513182218593908386

namespace A175332

/-- `A136318(n+1)-A271709(n)` -/
def P16513182218593908386.Spec : Prop :=
  ∀ n, P16513182218593908386.a n = A175332 (n + 1)

end A175332

/-! ## A175332.P15874069376230287262

`2*A140513(n)-A130321(n)`
-/

namespace A175332.P15874069376230287262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140513 n - A130321 n

end

end A175332.P15874069376230287262

namespace A175332

/-- `2*A140513(n)-A130321(n)` -/
def P15874069376230287262.Spec : Prop :=
  ∀ n, P15874069376230287262.a n = A175332 (n + 1)

end A175332

/-! ## A175332.P12241107451647122936

`A081118(n+1)+A130321(n)+1`
-/

namespace A175332.P12241107451647122936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (n + 1) + (A130321 n + 1)

end

end A175332.P12241107451647122936

namespace A175332

/-- `A081118(n+1)+A130321(n)+1` -/
def P12241107451647122936.Spec : Prop :=
  ∀ n, P12241107451647122936.a n = A175332 (n + 1)

theorem P12241107451647122936.correct : P12241107451647122936.Spec := by
  intro n
  simp only [A175332, Nat.add_sub_cancel, A175332.P12241107451647122936.a, A175332.P10633603557300615745.a, A043569, A043569.P15388862397033280106.a, A081118, A081118.P6487108056144640916.a, A130321, A130321.P54397649261359622.a, A002260, A002260.P9170571874073898642.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A175332

/-! ## A175332.P16985651000732334869

`A224195(n+1)+A130321(n)-1`
-/

namespace A175332.P16985651000732334869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224195 (n + 1) + (A130321 n - 1)

end

end A175332.P16985651000732334869

namespace A175332

/-- `A224195(n+1)+A130321(n)-1` -/
def P16985651000732334869.Spec : Prop :=
  ∀ n, P16985651000732334869.a n = A175332 (n + 1)

theorem P16985651000732334869.correct : P16985651000732334869.Spec := by
  intro n
  simp only [A175332, Nat.add_sub_cancel, A175332.P16985651000732334869.a, A175332.P10633603557300615745.a, A043569, A043569.P15388862397033280106.a, A130321, A130321.P54397649261359622.a, A224195, A224195.P2968674169476824705.a, A081118, A081118.P6487108056144640916.a, A002260, A002260.P9170571874073898642.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A175332

/-! ## A175332.P484773390497590366

`(A098354(n+1)+A043569(n+1))/2`
-/

namespace A175332.P484773390497590366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098354 (n + 1) + A043569 (n + 1) : ℚ) / 2

end

end A175332.P484773390497590366

namespace A175332

/-- `(A098354(n+1)+A043569(n+1))/2` -/
def P484773390497590366.Spec : Prop :=
  ∀ n, P484773390497590366.a n = (A175332 (n + 1) : ℚ)

end A175332

/-! ## A175332.P14599160005246044072

`A098354(n+1)-A090988(n+1)/2`
-/

namespace A175332.P14599160005246044072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098354 (n + 1) : ℚ) - (A090988 (n + 1) : ℚ) / 2

end

end A175332.P14599160005246044072

namespace A175332

/-- `A098354(n+1)-A090988(n+1)/2` -/
def P14599160005246044072.Spec : Prop :=
  ∀ n, P14599160005246044072.a n = (A175332 (n + 1) : ℚ)

end A175332

/-! ## A175332.P14873645949190769009

`A018900(n+1)+A140513(n)-A271709(n)`
-/

namespace A175332.P14873645949190769009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1) + (A140513 n - A271709 n)

end

end A175332.P14873645949190769009

namespace A175332

/-- `A018900(n+1)+A140513(n)-A271709(n)` -/
def P14873645949190769009.Spec : Prop :=
  ∀ n, P14873645949190769009.a n = A175332 (n + 1)

end A175332

/-! ## A175332.P13369366251562605753

`A030130(n+2)+1`
-/

namespace A175332.P13369366251562605753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030130 (n + 2) + 1

end

end A175332.P13369366251562605753

namespace A175332

/-- `A030130(n+2)+1` -/
def P13369366251562605753.Spec : Prop :=
  ∀ n, P13369366251562605753.a n = A175332 (n + 1)

end A175332

/-! ## A175332.P18005453869684293172

`A089633(A014132(n+1))+1`
-/

namespace A175332.P18005453869684293172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 (A014132 (n + 1)).toNat + 1

end

end A175332.P18005453869684293172

namespace A175332

/-- `A089633(A014132(n+1))+1` -/
def P18005453869684293172.Spec : Prop :=
  ∀ n, P18005453869684293172.a n = A175332 (n + 1)

end A175332

/-! ## A175332.P16378329747941491732

`A023758(A080036(n+1)+1)`
-/

namespace A175332.P16378329747941491732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (A080036 (n + 1) + 1).toNat

end

end A175332.P16378329747941491732

namespace A175332

/-- `A023758(A080036(n+1)+1)` -/
def P16378329747941491732.Spec : Prop :=
  ∀ n, P16378329747941491732.a n = A175332 (n + 1)

end A175332

/-! ## A175332.P14996675853448743184

`A164874(n+1)+1`
-/

namespace A175332.P14996675853448743184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164874 (n + 1) + 1

end

end A175332.P14996675853448743184

namespace A175332

/-- `A164874(n+1)+1` -/
def P14996675853448743184.Spec : Prop :=
  ∀ n, P14996675853448743184.a n = A175332 (n + 1)

end A175332

/-! ## A175332.P14509630262279472517

`A238246(A212013(n+1))`
-/

namespace A175332.P14509630262279472517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238246 (A212013 (n + 1)).toNat

end

end A175332.P14509630262279472517

namespace A175332

/-- `A238246(A212013(n+1))` -/
def P14509630262279472517.Spec : Prop :=
  ∀ n, P14509630262279472517.a n = A175332 (n + 1)

end A175332

/-! ## A175332.P16470914120223569844

`∩[A023758(n+1), A238246(n+1)]`
-/

namespace A175332.P16470914120223569844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175332.P16470914120223569844

namespace A175332

/-- `∩[A023758(n+1), A238246(n+1)]` -/
def P16470914120223569844.Spec : Prop :=
  ∀ n, (P16470914120223569844.a n : ℤ) = A175332 (n + 1)

end A175332

/-!
# A175333: a(n) is the smallest prime such that (binary a(n)) OR (binary prime(n)) is one less than a power of 2.

The programs for A175333, there is no canonical definition to state claims against.
-/

/-! ## A175333.P1126447448498273113

`∑{p}[A295609(A145382(n+1))², #]`
-/

namespace A175333.P1126447448498273113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295609 (A145382 (n + 1)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A175333.P1126447448498273113

/-! ## A175333.P4628798441250812782

`∏{p}[A295609(A145382(n+1))², A006530(#)]`
-/

namespace A175333.P4628798441250812782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295609 (A145382 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A006530 p

end

end A175333.P4628798441250812782

/-! ## A175333.P1482386118618440792

`∏{p}[A295609(A145382(n+1))², A014963(#)]`
-/

namespace A175333.P1482386118618440792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295609 (A145382 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A014963 p

end

end A175333.P1482386118618440792

/-! ## A175333.P14204531046683174912

`∏{p}[A295609(A145382(n+1))², A020639(#)]`
-/

namespace A175333.P14204531046683174912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295609 (A145382 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A020639 p

end

end A175333.P14204531046683174912

/-! ## A175333.P17950537815806593534

`A295609(A145382(n+1))%A360558(n+1)`
-/

namespace A175333.P17950537815806593534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295609 (A145382 (n + 1)).toNat) (A360558 (n + 1))

end

end A175333.P17950537815806593534

/-! ## A175333.P7239195930720312260

`∏{p}[A295609(A145382(n+1))²-A289187(2*(n+1))%(n+1), #]`
-/

namespace A175333.P7239195930720312260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295609 (A145382 (n + 1)).toNat ^ 2 - Int.tmod (A289187 (2 * (n + 1))) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A175333.P7239195930720312260

/-! ## A175333.P7212956668215463745

`A008966(A098419(n+1))*A295609(A145382(n+1))`
-/

namespace A175333.P7212956668215463745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A098419 (n + 1)).toNat * A295609 (A145382 (n + 1)).toNat

end

end A175333.P7212956668215463745

/-!
# A175335: a(1)=1. For n>1, a(n) equals the smallest number > a(n-1) of the form a(k) U j U a(k) U j, where U represents concatenation (written in decimal) of the binary representation of the arguments, where 1 <= k < n, and j = {0} or {1}.

The programs for A175335, there is no canonical definition to state claims against.
-/

/-! ## A175335.P15012501918669126747

`filter[A175336(n+1), A392736(#)]`
-/

namespace A175335.P15012501918669126747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A392736 (f1 j).toNat = 1) n)

end

end A175335.P15012501918669126747

/-! ## A175335.P15031492311298070653

`∩[A175336(n+1), A313803(n)]`
-/

namespace A175335.P15031492311298070653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313803 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175335.P15031492311298070653

/-!
# A175337: Fixed point of morphism 0 -> 00110, 1 -> 00111.

The programs for A175337, the canonical program `A175337.P3500885851626886640` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175337 has offset 0).

The definition of A175337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175337.P14966331572239261325

`floor(log(A277543(n+1)))`
-/

namespace A175337.P14966331572239261325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A277543 (n + 1) : ℝ)⌋

end

end A175337.P14966331572239261325

namespace A175337

/-- `floor(log(A277543(n+1)))` -/
def P14966331572239261325.Spec : Prop :=
  ∀ n, P14966331572239261325.a n = A175337 n

end A175337

/-! ## A175337.P6356927635345022760

`floor(log(A132739(n+1)%5))`
-/

namespace A175337.P6356927635345022760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Int.tmod (A132739 (n + 1)) 5 : ℝ)⌋

end

end A175337.P6356927635345022760

namespace A175337

/-- `floor(log(A132739(n+1)%5))` -/
def P6356927635345022760.Spec : Prop :=
  ∀ n, P6356927635345022760.a n = A175337 n

end A175337

/-! ## A175337.P3500885851626886640

`A011658(A132739(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A175337

/-- `A011658(A132739(n+1))` -/
def P3500885851626886640.Spec : Prop :=
  ∀ n, P3500885851626886640.a n = A175337 n

theorem P3500885851626886640.correct : P3500885851626886640.Spec := by
  intro n
  simp only [A175337]

end A175337

/-! ## A175337.P6558101431667002445

`3%Δ[A001511(A194459(n))]`
-/

namespace A175337.P6558101431667002445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A194459 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (f1 (n + 1) - f1 n)

end

end A175337.P6558101431667002445

namespace A175337

/-- `3%Δ[A001511(A194459(n))]` -/
def P6558101431667002445.Spec : Prop :=
  ∀ n, P6558101431667002445.a n = A175337 n

end A175337

/-! ## A175337.P7845437912295489616

`char[lt[A332413(n+1), A332413(n)]]`
-/

namespace A175337.P7845437912295489616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332413 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332413 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A175337.P7845437912295489616

namespace A175337

/-- `char[lt[A332413(n+1), A332413(n)]]` -/
def P7845437912295489616.Spec : Prop :=
  ∀ n, (P7845437912295489616.a n : ℤ) = A175337 n

end A175337

/-! ## A175337.P9173518725604015261

`Δ[A072960(n+1)]²%3`
-/

namespace A175337.P9173518725604015261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n) ^ 2) 3

end

end A175337.P9173518725604015261

namespace A175337

/-- `Δ[A072960(n+1)]²%3` -/
def P9173518725604015261.Spec : Prop :=
  ∀ n, P9173518725604015261.a n = A175337 n

end A175337

/-! ## A175337.P16858842107507629138

`A011658(A359100(n+1))`
-/

namespace A175337.P16858842107507629138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011658 (A359100 (n + 1)).toNat

end

end A175337.P16858842107507629138

namespace A175337

/-- `A011658(A359100(n+1))` -/
def P16858842107507629138.Spec : Prop :=
  ∀ n, P16858842107507629138.a n = A175337 n

end A175337

/-! ## A175337.P17428548591664311563

`A277543(2*(n+1))%2`
-/

namespace A175337.P17428548591664311563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277543 (2 * (n + 1))) 2

end

end A175337.P17428548591664311563

namespace A175337

/-- `A277543(2*(n+1))%2` -/
def P17428548591664311563.Spec : Prop :=
  ∀ n, P17428548591664311563.a n = A175337 n

end A175337

/-! ## A175337.P3004954088632431659

`and(1, A277543(2*n+2))`
-/

namespace A175337.P3004954088632431659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A277543 (2 * n + 2))

end

end A175337.P3004954088632431659

namespace A175337

/-- `and(1, A277543(2*n+2))` -/
def P3004954088632431659.Spec : Prop :=
  ∀ n, P3004954088632431659.a n = A175337 n

end A175337

/-! ## A175337.P16017715466762974398

`dr(and(10, A337004(n+1)))`
-/

namespace A175337.P16017715466762974398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.land 10 (A337004 (n + 1)))

end

end A175337.P16017715466762974398

namespace A175337

/-- `dr(and(10, A337004(n+1)))` -/
def P16017715466762974398.Spec : Prop :=
  ∀ n, (P16017715466762974398.a n : ℤ) = A175337 n

end A175337

/-! ## A175337.P7871684779100422588

`9%A277543(A273481(n))`
-/

namespace A175337.P7871684779100422588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 9 (A277543 (A273481 n).toNat)

end

end A175337.P7871684779100422588

namespace A175337

/-- `9%A277543(A273481(n))` -/
def P7871684779100422588.Spec : Prop :=
  ∀ n, P7871684779100422588.a n = A175337 n

end A175337

/-! ## A175337.P12154693267271864760

`abs(Δ[A316864(A007091(n))])`
-/

namespace A175337.P12154693267271864760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A007091 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A175337.P12154693267271864760

namespace A175337

/-- `abs(Δ[A316864(A007091(n))])` -/
def P12154693267271864760.Spec : Prop :=
  ∀ n, P12154693267271864760.a n = A175337 n

end A175337

/-! ## A175337.P13984447953480708814

`abs(Δ[A102673(A256305(n))])`
-/

namespace A175337.P13984447953480708814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 (A256305 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A175337.P13984447953480708814

namespace A175337

/-- `abs(Δ[A102673(A256305(n))])` -/
def P13984447953480708814.Spec : Prop :=
  ∀ n, P13984447953480708814.a n = A175337 n

end A175337

/-!
# A175338: Minima in cycles with Gray permutation.

The programs for A175338, there is no canonical definition to state claims against.
-/

/-! ## A175338.P7375037621543189746

`record[and(n, A334727(A118759(n)))]`
-/

namespace A175338.P7375037621543189746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A334727 (A118759 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175338.P7375037621543189746

/-! ## A175338.P2125040176402740645

`record[and(A137734(n²), A334727(n))]`
-/

namespace A175338.P2125040176402740645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A137734 (n ^ 2)) (A334727 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175338.P2125040176402740645

/-! ## A175338.P16168094948929510830

`lt[A170985(A000217(n)), A177950(n+1)]`
-/

namespace A175338.P16168094948929510830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170985 (A000217 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177950 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175338.P16168094948929510830

/-! ## A175338.P17096115937340612032

`lt[A063695(A002378(n)), A032516(n+2)]`
-/

namespace A175338.P17096115937340612032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063695 (A002378 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032516 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175338.P17096115937340612032

/-! ## A175338.P7781521937422931197

`lt[A059906(n²), A008284(n+4)]`
-/

namespace A175338.P7781521937422931197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175338.P7781521937422931197

/-!
# A175339: Maxima of cycles with Gray permutation.

The programs for A175339, there is no canonical definition to state claims against.
-/

/-! ## A175339.P11816662746854189258

`record[or(ceil(n/2), A112318(n))]`
-/

namespace A175339.P11816662746854189258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌈(n : ℚ) / 2⌉ (A112318 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175339.P11816662746854189258

/-! ## A175339.P8694443987047875293

`record[or(n, A233795(2*(n+1)))]`
-/

namespace A175339.P8694443987047875293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A233795 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175339.P8694443987047875293

/-! ## A175339.P18443940320676884759

`record[or(floor(2*n/5), A111660(n))]`
-/

namespace A175339.P18443940320676884759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊2 * ((n : ℚ) / 5)⌋ (A111660 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175339.P18443940320676884759

/-! ## A175339.P16060766949340349870

`eq[A035678(n+1), A038554(n)]`
-/

namespace A175339.P16060766949340349870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175339.P16060766949340349870

/-! ## A175339.P1140651238509540742

`eq[A035678(n+1), A356120(n)]`
-/

namespace A175339.P1140651238509540742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175339.P1140651238509540742

/-!
# A175340: Numbers that can be written as a product of k consecutive composite numbers and also of k+1 consecutive composite numbers, for some k>1, with no factor used twice.

The programs for A175340, there is no canonical definition to state claims against.
-/

/-! ## A175340.P10333377690895452844

`A342876(∑[∑{digits}[n, floor(#/7)]+1])`
-/

namespace A175340.P10333377690895452844
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 7⌋).sum + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342876 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A175340.P10333377690895452844

/-! ## A175340.P18262320968405443967

`A342876(∑{digits}[n, floor(#/7)]+n+1)`
-/

namespace A175340.P18262320968405443967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342876 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 7⌋).sum + (n + 1 : ℤ)).toNat

end

end A175340.P18262320968405443967

/-! ## A175340.P8303510527475579486

`A342876(lt[(-1)^∑{e}[n+1, #], 2^val(n+1, 2)])`
-/

namespace A175340.P8303510527475579486
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342876 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n)

end

end A175340.P8303510527475579486

/-! ## A175340.P14023515518705502491

`A342876(comp[34*a(n-1)-a(n-2)+16])` with `a(0)=16, a(1)=0, a(2)=8`
-/

namespace A175340.P14023515518705502491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [16, 0, 8] fun n f1 =>
  34 * f1 (n - 1) - f1 (n - 2) + 16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342876 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A175340.P14023515518705502491

/-!
# A175341: Number of coprime pairs (x,y) with x^2+y^2 <= n^2.

The programs for A175341, the canonical program `A175341.P6465404727987718190` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175341 has offset 0).

The definition of A175341 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A304651, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A175341.P5548572886698120014

`4*A176562(n)`
-/

namespace A175341.P5548572886698120014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A176562 n

end

end A175341.P5548572886698120014

namespace A175341

/-- `4*A176562(n)` -/
def P5548572886698120014.Spec : Prop :=
  ∀ n, P5548572886698120014.a n = A175341 n

end A175341

/-! ## A175341.P6465404727987718190

`A304651(n²)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A175341

/-- `A304651(n²)` -/
def P6465404727987718190.Spec : Prop :=
  ∀ n, P6465404727987718190.a n = A175341 n

theorem P6465404727987718190.correct : P6465404727987718190.Spec := by
  intro n
  simp only [A175341]

end A175341

/-! ## A175341.P2855829144556876170

`A059743(n)-1`
-/

namespace A175341.P2855829144556876170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059743 n - 1

end

end A175341.P2855829144556876170

namespace A175341

/-- `A059743(n)-1` -/
def P2855829144556876170.Spec : Prop :=
  ∀ n, P2855829144556876170.a n = A175341 n

theorem P2855829144556876170.correct : P2855829144556876170.Spec := by
  intro n
  simp only [A175341, Nat.add_sub_cancel, A175341.P2855829144556876170.a, A175341.P6465404727987718190.a, A059743, A059743.P10200141128620482655.a, A304651, A304651.P3576326114544624841.a, A000089, A000089.P6732950680245443794.a, A026741, A026741.P7397200255647832146.a, A350872, A350872.P15784308967154680112.f1, A350872.P15784308967154680112.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A175341

/-! ## A175341.P3895221641935262485

`xor(1, A059743(xor(1, xor(1, n))))`
-/

namespace A175341.P3895221641935262485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A059743 (Nat.xor 1 (Nat.xor 1 n)))

end

end A175341.P3895221641935262485

namespace A175341

/-- `xor(1, A059743(xor(1, xor(1, n))))` -/
def P3895221641935262485.Spec : Prop :=
  ∀ n, P3895221641935262485.a n = A175341 n

end A175341

/-! ## A175341.P2071472636433303681

`xor(1, A059743(A004526(2*n)))`
-/

namespace A175341.P2071472636433303681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A059743 (A004526 (2 * n)).toNat)

end

end A175341.P2071472636433303681

namespace A175341

/-- `xor(1, A059743(A004526(2*n)))` -/
def P2071472636433303681.Spec : Prop :=
  ∀ n, P2071472636433303681.a n = A175341 n

end A175341

/-! ## A175341.P1720599032231841865

`and(A014131(n), A059743(n))`
-/

namespace A175341.P1720599032231841865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014131 n) (A059743 n)

end

end A175341.P1720599032231841865

namespace A175341

/-- `and(A014131(n), A059743(n))` -/
def P1720599032231841865.Spec : Prop :=
  ∀ n, P1720599032231841865.a n = A175341 n

end A175341

/-! ## A175341.P14145450622112070907

`and(A028399(n+2), A059743(n))`
-/

namespace A175341.P14145450622112070907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028399 (n + 2)) (A059743 n)

end

end A175341.P14145450622112070907

namespace A175341

/-- `and(A028399(n+2), A059743(n))` -/
def P14145450622112070907.Spec : Prop :=
  ∀ n, P14145450622112070907.a n = A175341 n

end A175341

/-! ## A175341.P6297493782574309669

`and(A059743(n), A196514(n))`
-/

namespace A175341.P6297493782574309669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059743 n) (A196514 n)

end

end A175341.P6297493782574309669

namespace A175341

/-- `and(A059743(n), A196514(n))` -/
def P6297493782574309669.Spec : Prop :=
  ∀ n, P6297493782574309669.a n = A175341 n

end A175341

/-! ## A175341.P2453436437867335637

`A016825(A176562(n)+n)-A016825(n)`
-/

namespace A175341.P2453436437867335637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A176562 n + (n : ℤ)).toNat - A016825 n

end

end A175341.P2453436437867335637

namespace A175341

/-- `A016825(A176562(n)+n)-A016825(n)` -/
def P2453436437867335637.Spec : Prop :=
  ∀ n, P2453436437867335637.a n = A175341 n

end A175341

/-! ## A175341.P1812331336795466192

`and(A002446(n), A059743(n))`
-/

namespace A175341.P1812331336795466192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002446 n) (A059743 n)

end

end A175341.P1812331336795466192

namespace A175341

/-- `and(A002446(n), A059743(n))` -/
def P1812331336795466192.Spec : Prop :=
  ∀ n, P1812331336795466192.a n = A175341 n

end A175341

/-! ## A175341.P10549130702478167805

`and(A059743(n), A181358(n))`
-/

namespace A175341.P10549130702478167805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059743 n) (A181358 n)

end

end A175341.P10549130702478167805

namespace A175341

/-- `and(A059743(n), A181358(n))` -/
def P10549130702478167805.Spec : Prop :=
  ∀ n, P10549130702478167805.a n = A175341 n

end A175341

/-! ## A175341.P12228078576061363027

`A008586(n)+A008586(A176562(n)-n)`
-/

namespace A175341.P12228078576061363027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n + A008586 (A176562 n - (n : ℤ)).toNat

end

end A175341.P12228078576061363027

namespace A175341

/-- `A008586(n)+A008586(A176562(n)-n)` -/
def P12228078576061363027.Spec : Prop :=
  ∀ n, P12228078576061363027.a n = A175341 n

end A175341

/-! ## A175341.P16510922040560817729

`A008586(A176562(n))`
-/

namespace A175341.P16510922040560817729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A176562 n).toNat

end

end A175341.P16510922040560817729

namespace A175341

/-- `A008586(A176562(n))` -/
def P16510922040560817729.Spec : Prop :=
  ∀ n, P16510922040560817729.a n = A175341 n

end A175341

/-! ## A175341.P14198074496599650239

`2*2*A029578(A049715(n))`
-/

namespace A175341.P14198074496599650239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A029578 (A049715 n).toNat)

end

end A175341.P14198074496599650239

namespace A175341

/-- `2*2*A029578(A049715(n))` -/
def P14198074496599650239.Spec : Prop :=
  ∀ n, P14198074496599650239.a n = A175341 n

end A175341

/-! ## A175341.P14846235219232806385

`4*A305117(n²)`
-/

namespace A175341.P14846235219232806385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A305117 (n ^ 2)

end

end A175341.P14846235219232806385

namespace A175341

/-- `4*A305117(n²)` -/
def P14846235219232806385.Spec : Prop :=
  ∀ n, P14846235219232806385.a n = A175341 n

end A175341

/-! ## A175341.P7094269001731617451

`A008586(A305117(n²))`
-/

namespace A175341.P7094269001731617451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A305117 (n ^ 2)).toNat

end

end A175341.P7094269001731617451

namespace A175341

/-- `A008586(A305117(n²))` -/
def P7094269001731617451.Spec : Prop :=
  ∀ n, P7094269001731617451.a n = A175341 n

end A175341

/-! ## A175341.P1525011565564569772

`2*2*A305117(A000290(n))`
-/

namespace A175341.P1525011565564569772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A305117 (A000290 n).toNat)

end

end A175341.P1525011565564569772

namespace A175341

/-- `2*2*A305117(A000290(n))` -/
def P1525011565564569772.Spec : Prop :=
  ∀ n, P1525011565564569772.a n = A175341 n

end A175341

/-!
# A175342: Number of arithmetic progressions (where the difference between adjacent terms is either positive, 0, or negative) of positive integers that sum to n.

The programs for A175342, there is no canonical definition to state claims against.
-/

/-! ## A175342.P5812795555058316948

`2*A049988(n+1)-A000005(n+1)`
-/

namespace A175342.P5812795555058316948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049988 (n + 1) - A000005 (n + 1)

end

end A175342.P5812795555058316948

/-! ## A175342.P17583570517203910200

`A049988(n+1)+A049982(n+1)`
-/

namespace A175342.P17583570517203910200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049988 (n + 1) + A049982 (n + 1)

end

end A175342.P17583570517203910200

/-! ## A175342.P1185686989667253785

`A000005(n+1)+2*A049982(n+1)`
-/

namespace A175342.P1185686989667253785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + 2 * A049982 (n + 1)

end

end A175342.P1185686989667253785

/-! ## A175342.P18045832396047426556

`2*A049980(n+1)-A378216(n+1)`
-/

namespace A175342.P18045832396047426556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049980 (n + 1) - A378216 (n + 1)

end

end A175342.P18045832396047426556

/-! ## A175342.P17500139929396006174

`A049990(n+1)+A049980(n+1)`
-/

namespace A175342.P17500139929396006174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049990 (n + 1) + A049980 (n + 1)

end

end A175342.P17500139929396006174

/-! ## A175342.P17833285998655911417

`A049982(n+1)+A049990(n+1)+1`
-/

namespace A175342.P17833285998655911417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049982 (n + 1) + (A049990 (n + 1) + 1)

end

end A175342.P17833285998655911417

/-! ## A175342.P15146663220506887401

`A378216(n+1)+2*A049990(n+1)`
-/

namespace A175342.P15146663220506887401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378216 (n + 1) + 2 * A049990 (n + 1)

end

end A175342.P15146663220506887401

/-! ## A175342.P13034068081535128787

`A342194(n+1)+A032741(n+1)`
-/

namespace A175342.P13034068081535128787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342194 (n + 1) + A032741 (n + 1)

end

end A175342.P13034068081535128787

/-! ## A175342.P8639617805654213638

`A342194(n+1)+A342496(n+1)-A342515(n+1)`
-/

namespace A175342.P8639617805654213638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342194 (n + 1) + (A342496 (n + 1) - A342515 (n + 1))

end

end A175342.P8639617805654213638

/-!
# A175344: Triangle read by rows: The first integer in each row, a(n,1) = n. a(n,m) = the smallest positive integer not yet occurring in row n such that |a(n,m)-a(n,m-1)| = a power of 2, for each m where 1 < m <= n.

The programs for A175344, there is no canonical definition to state claims against.
-/

/-! ## A175344.P17395028216408132589

`A374998(lcm(3, A078840(n)))`
-/

namespace A175344.P17395028216408132589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374998 (Int.lcm 3 (A078840 n))

end

end A175344.P17395028216408132589

/-! ## A175344.P4401651826790286601

`A325704(A080513(n))+A134109(A187829(n+1))`
-/

namespace A175344.P4401651826790286601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325704 (A080513 n).toNat + A134109 (A187829 (n + 1)).toNat

end

end A175344.P4401651826790286601

/-! ## A175344.P2339358942461762179

`A325027(A346097(n+1))%6`
-/

namespace A175344.P2339358942461762179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325027 (A346097 (n + 1)).toNat) 6

end

end A175344.P2339358942461762179

/-! ## A175344.P17446271584342350830

`gcd(A087339(n+1)+1, A197553(n+1))`
-/

namespace A175344.P17446271584342350830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A087339 (n + 1) + 1) (A197553 (n + 1))

end

end A175344.P17446271584342350830

/-! ## A175344.P17530963234011852873

`gcd(A008458(n), A325027(A346097(n+1)))`
-/

namespace A175344.P17530963234011852873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008458 n) (A325027 (A346097 (n + 1)).toNat)

end

end A175344.P17530963234011852873

/-!
# A175345: Numbers m such that A006218(m) is a perfect square.

The programs for A175345, there is no canonical definition to state claims against.
-/

/-! ## A175345.P11977840547833449736

`eq[1, A002828(A006218(n))]`
-/

namespace A175345.P11977840547833449736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A006218 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175345.P11977840547833449736

/-! ## A175345.P13625612181242265487

`record[A233772((n+1)²+1)-1]`
-/

namespace A175345.P13625612181242265487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233772 ((n + 1) ^ 2 + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175345.P13625612181242265487

/-! ## A175345.P13343695040433070346

`eq[1, A003285(A054519(n))]`
-/

namespace A175345.P13343695040433070346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A054519 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175345.P13343695040433070346

/-! ## A175345.P2182391385105742087

`record[-A233773(A253909(n))]`
-/

namespace A175345.P2182391385105742087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A233773 (A253909 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175345.P2182391385105742087

/-! ## A175345.P6355725723565679734

`record[-A233773(A028310(n²))]`
-/

namespace A175345.P6355725723565679734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A233773 (A028310 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175345.P6355725723565679734

/-!
# A175346: a(n) = Sum_{k=1..n^2} d(k), d(k) = number of divisors of k (A000005).

The programs for A175346, the canonical program `A175346.P6073748016741026843` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175346 has offset 1).

The definition of A175346 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175346.P6073748016741026843

`(n+1)²+2*∑{#}[n-1, floor((n+1)²/(#+2))]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A175346

/-- `(n+1)²+2*∑{#}[n-1, floor((n+1)²/(#+2))]` -/
def P6073748016741026843.Spec : Prop :=
  ∀ n, P6073748016741026843.a n = A175346 (n + 1)

theorem P6073748016741026843.correct : P6073748016741026843.Spec := by
  intro n
  simp only [A175346, Nat.add_sub_cancel]

end A175346

/-! ## A175346.P11709139292903879970

`(n+1)²+2*A166381(n+1)`
-/

namespace A175346.P11709139292903879970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + 2 * A166381 (n + 1)

end

end A175346.P11709139292903879970

namespace A175346

/-- `(n+1)²+2*A166381(n+1)` -/
def P11709139292903879970.Spec : Prop :=
  ∀ n, P11709139292903879970.a n = A175346 (n + 1)

end A175346

/-! ## A175346.P8555089744805054310

`A048691(n+1)+∑[A168010(n+1)]-A168010(n+1)`
-/

namespace A175346.P8555089744805054310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A168010 (n + 1))

end

end A175346.P8555089744805054310

namespace A175346

/-- `A048691(n+1)+∑[A168010(n+1)]-A168010(n+1)` -/
def P8555089744805054310.Spec : Prop :=
  ∀ n, P8555089744805054310.a n = A175346 (n + 1)

end A175346

/-! ## A175346.P3635603504290216432

`∑[A168010(n+1)]-(A168010(n+1)-A000005((n+1)²))`
-/

namespace A175346.P3635603504290216432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A168010 (n + 1) - A000005 ((n + 1) ^ 2))

end

end A175346.P3635603504290216432

namespace A175346

/-- `∑[A168010(n+1)]-(A168010(n+1)-A000005((n+1)²))` -/
def P3635603504290216432.Spec : Prop :=
  ∀ n, P3635603504290216432.a n = A175346 (n + 1)

end A175346

/-! ## A175346.P4410048543311994213

`A006218((1+n)²)`
-/

namespace A175346.P4410048543311994213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 ((1 + n) ^ 2)

end

end A175346.P4410048543311994213

namespace A175346

/-- `A006218((1+n)²)` -/
def P4410048543311994213.Spec : Prop :=
  ∀ n, P4410048543311994213.a n = A175346 (n + 1)

end A175346

/-! ## A175346.P667155499338730458

`record[A006218((1-n)²)]`
-/

namespace A175346.P667155499338730458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 ((1 - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175346.P667155499338730458

namespace A175346

/-- `record[A006218((1-n)²)]` -/
def P667155499338730458.Spec : Prop :=
  ∀ n, P667155499338730458.a n = A175346 (n + 1)

end A175346

/-! ## A175346.P13155913467105690184

`∑[abs(Δ[A006218(n²)])]`
-/

namespace A175346.P13155913467105690184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175346.P13155913467105690184

namespace A175346

/-- `∑[abs(Δ[A006218(n²)])]` -/
def P13155913467105690184.Spec : Prop :=
  ∀ n, P13155913467105690184.a n = A175346 (n + 1)

end A175346

/-! ## A175346.P8521039821982546965

`or(char[2], A006218(∑[2*n+1]))`
-/

namespace A175346.P8521039821982546965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A006218 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A175346.P8521039821982546965

namespace A175346

/-- `or(char[2], A006218(∑[2*n+1]))` -/
def P8521039821982546965.Spec : Prop :=
  ∀ n, P8521039821982546965.a n = A175346 (n + 1)

end A175346

/-! ## A175346.P9236192844009610745

`∑[A000027(Δ[A006218(n²)])]`
-/

namespace A175346.P9236192844009610745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175346.P9236192844009610745

namespace A175346

/-- `∑[A000027(Δ[A006218(n²)])]` -/
def P9236192844009610745.Spec : Prop :=
  ∀ n, P9236192844009610745.a n = A175346 (n + 1)

end A175346

/-! ## A175346.P14521870035692298045

`A000027(A006218((n+1)^2))`
-/

namespace A175346.P14521870035692298045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A006218 ((n + 1) ^ 2)).toNat

end

end A175346.P14521870035692298045

namespace A175346

/-- `A000027(A006218((n+1)^2))` -/
def P14521870035692298045.Spec : Prop :=
  ∀ n, P14521870035692298045.a n = A175346 (n + 1)

end A175346

/-! ## A175346.P1146058991800293900

`A006218(∑[2*n+1])%A017306(n)`
-/

namespace A175346.P1146058991800293900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006218 (∑ j ∈ Finset.range (n + 1), f1 j)) (A017306 n)

end

end A175346.P1146058991800293900

namespace A175346

/-- `A006218(∑[2*n+1])%A017306(n)` -/
def P1146058991800293900.Spec : Prop :=
  ∀ n, P1146058991800293900.a n = A175346 (n + 1)

end A175346

/-! ## A175346.P6148761839295042663

`gcd(A000038(n), A006218(∑[2*n+1]))`
-/

namespace A175346.P6148761839295042663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A006218 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A175346.P6148761839295042663

namespace A175346

/-- `gcd(A000038(n), A006218(∑[2*n+1]))` -/
def P6148761839295042663.Spec : Prop :=
  ∀ n, (P6148761839295042663.a n : ℤ) = A175346 (n + 1)

end A175346

/-! ## A175346.P14851116260103146010

`gcd(n, n+1)*A006218(Δ[A153058(n)])`
-/

namespace A175346.P14851116260103146010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A006218 (f1 (n + 1) - f1 n).toNat

end

end A175346.P14851116260103146010

namespace A175346

/-- `gcd(n, n+1)*A006218(Δ[A153058(n)])` -/
def P14851116260103146010.Spec : Prop :=
  ∀ n, P14851116260103146010.a n = A175346 (n + 1)

end A175346

/-! ## A175346.P470505018714835945

`A006218(∑[2*n+1])+A000038(n+1)`
-/

namespace A175346.P470505018714835945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (∑ j ∈ Finset.range (n + 1), f1 j) + A000038 (n + 1)

end

end A175346.P470505018714835945

namespace A175346

/-- `A006218(∑[2*n+1])+A000038(n+1)` -/
def P470505018714835945.Spec : Prop :=
  ∀ n, P470505018714835945.a n = A175346 (n + 1)

end A175346

/-! ## A175346.P3051279833961958906

`A048691(n+1)+A006218(A005563(n))`
-/

namespace A175346.P3051279833961958906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (n + 1) + A006218 (A005563 n).toNat

end

end A175346.P3051279833961958906

namespace A175346

/-- `A048691(n+1)+A006218(A005563(n))` -/
def P3051279833961958906.Spec : Prop :=
  ∀ n, P3051279833961958906.a n = A175346 (n + 1)

end A175346

/-! ## A175346.P7738515426834839045

`A132106((n+1)²)-(n+2)`
-/

namespace A175346.P7738515426834839045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132106 ((n + 1) ^ 2) - (n + 2 : ℤ)

end

end A175346.P7738515426834839045

namespace A175346

/-- `A132106((n+1)²)-(n+2)` -/
def P7738515426834839045.Spec : Prop :=
  ∀ n, P7738515426834839045.a n = A175346 (n + 1)

end A175346

/-! ## A175346.P4176636531633336835

`∑[abs(Δ[A054519(n²)])]`
-/

namespace A175346.P4176636531633336835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175346.P4176636531633336835

namespace A175346

/-- `∑[abs(Δ[A054519(n²)])]` -/
def P4176636531633336835.Spec : Prop :=
  ∀ n, P4176636531633336835.a n = A175346 (n + 1)

end A175346

/-! ## A175346.P3719285642516415927

`A054519((n+1)²)-1`
-/

namespace A175346.P3719285642516415927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 ((n + 1) ^ 2) - 1

end

end A175346.P3719285642516415927

namespace A175346

/-- `A054519((n+1)²)-1` -/
def P3719285642516415927.Spec : Prop :=
  ∀ n, P3719285642516415927.a n = A175346 (n + 1)

end A175346

/-! ## A175346.P4549896508475441207

`A161842((n+1)²)-(n+1)`
-/

namespace A175346.P4549896508475441207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161842 ((n + 1) ^ 2) - (n + 1 : ℤ)

end

end A175346.P4549896508475441207

namespace A175346

/-- `A161842((n+1)²)-(n+1)` -/
def P4549896508475441207.Spec : Prop :=
  ∀ n, P4549896508475441207.a n = A175346 (n + 1)

end A175346

/-! ## A175346.P4073687001857097597

`A002541((n+1)²)+(n+1)²`
-/

namespace A175346.P4073687001857097597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002541 ((n + 1) ^ 2) + ((n + 1) ^ 2 : ℤ)

end

end A175346.P4073687001857097597

namespace A175346

/-- `A002541((n+1)²)+(n+1)²` -/
def P4073687001857097597.Spec : Prop :=
  ∀ n, P4073687001857097597.a n = A175346 (n + 1)

end A175346

/-!
# A175348: Last digit of p^p, where p is the n-th prime.

The programs for A175348, the canonical program `A175348.P9354277622868758318` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175348 has offset 1).

The definition of A175348 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056849, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A175348.P9354277622868758318

`A056849(A000040(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A175348

/-- `A056849(A000040(n+1))` -/
def P9354277622868758318.Spec : Prop :=
  ∀ n, P9354277622868758318.a n = A175348 (n + 1)

theorem P9354277622868758318.correct : P9354277622868758318.Spec := by
  intro n
  simp only [A175348, Nat.add_sub_cancel]

end A175348

/-! ## A175348.P10769841879183577907

`A056849(A110923(n+1))`
-/

namespace A175348.P10769841879183577907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056849 (A110923 (n + 1)).toNat

end

end A175348.P10769841879183577907

namespace A175348

/-- `A056849(A110923(n+1))` -/
def P10769841879183577907.Spec : Prop :=
  ∀ n, P10769841879183577907.a n = A175348 (n + 1)

end A175348

/-! ## A175348.P4331894179465813184

`A056849(A242120(n+1))`
-/

namespace A175348.P4331894179465813184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056849 (A242120 (n + 1)).toNat

end

end A175348.P4331894179465813184

namespace A175348

/-- `A056849(A242120(n+1))` -/
def P4331894179465813184.Spec : Prop :=
  ∀ n, P4331894179465813184.a n = A175348 (n + 1)

end A175348

/-! ## A175348.P99689073160084232

`(A007652(n+1)^A039702(n+1))%10`
-/

namespace A175348.P99689073160084232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A007652 (n + 1) : ℚ) ^ (A039702 (n + 1) : ℤ))) 10

end

end A175348.P99689073160084232

namespace A175348

/-- `(A007652(n+1)^A039702(n+1))%10` -/
def P99689073160084232.Spec : Prop :=
  ∀ n, P99689073160084232.a n = A175348 (n + 1)

end A175348

/-! ## A175348.P3261830747675987409

`(A007652(n+1)^A039706(n+1))%10`
-/

namespace A175348.P3261830747675987409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A007652 (n + 1) : ℚ) ^ (A039706 (n + 1) : ℤ))) 10

end

end A175348.P3261830747675987409

namespace A175348

/-- `(A007652(n+1)^A039706(n+1))%10` -/
def P3261830747675987409.Spec : Prop :=
  ∀ n, P3261830747675987409.a n = A175348 (n + 1)

end A175348

/-! ## A175348.P10960528070752810951

`(A110923(n+1)^A039706(n+1))%10`
-/

namespace A175348.P10960528070752810951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A110923 (n + 1) : ℚ) ^ (A039706 (n + 1) : ℤ))) 10

end

end A175348.P10960528070752810951

namespace A175348

/-- `(A110923(n+1)^A039706(n+1))%10` -/
def P10960528070752810951.Spec : Prop :=
  ∀ n, P10960528070752810951.a n = A175348 (n + 1)

end A175348

/-! ## A175348.P10605621246442638949

`A056849(p?[comp[n²]])`
-/

namespace A175348.P10605621246442638949
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056849 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A175348.P10605621246442638949

namespace A175348

/-- `A056849(p?[comp[n²]])` -/
def P10605621246442638949.Spec : Prop :=
  ∀ n, P10605621246442638949.a n = A175348 (n + 1)

end A175348

/-! ## A175348.P17604240299954302830

`A056849(record[p?[∏{p}[n+1, #]]])`
-/

namespace A175348.P17604240299954302830
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056849 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A175348.P17604240299954302830

namespace A175348

/-- `A056849(record[p?[∏{p}[n+1, #]]])` -/
def P17604240299954302830.Spec : Prop :=
  ∀ n, P17604240299954302830.a n = A175348 (n + 1)

end A175348

/-! ## A175348.P5109023577896935821

`A056849(record[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1])`
-/

namespace A175348.P5109023577896935821
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056849 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A175348.P5109023577896935821

namespace A175348

/-- `A056849(record[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1])` -/
def P5109023577896935821.Spec : Prop :=
  ∀ n, P5109023577896935821.a n = A175348 (n + 1)

end A175348

/-! ## A175348.P3678233455432435261

`A056849(A171019(n+1))`
-/

namespace A175348.P3678233455432435261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056849 (A171019 (n + 1)).toNat

end

end A175348.P3678233455432435261

namespace A175348

/-- `A056849(A171019(n+1))` -/
def P3678233455432435261.Spec : Prop :=
  ∀ n, P3678233455432435261.a n = A175348 (n + 1)

end A175348

/-! ## A175348.P1425856521192717959

`A056849(A171028(n+1))`
-/

namespace A175348.P1425856521192717959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056849 (A171028 (n + 1)).toNat

end

end A175348.P1425856521192717959

namespace A175348

/-- `A056849(A171028(n+1))` -/
def P1425856521192717959.Spec : Prop :=
  ∀ n, P1425856521192717959.a n = A175348 (n + 1)

end A175348

/-! ## A175348.P1490015751865732185

`A056849(A171032(n+1))`
-/

namespace A175348.P1490015751865732185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056849 (A171032 (n + 1)).toNat

end

end A175348.P1490015751865732185

namespace A175348

/-- `A056849(A171032(n+1))` -/
def P1490015751865732185.Spec : Prop :=
  ∀ n, P1490015751865732185.a n = A175348 (n + 1)

end A175348

/-! ## A175348.P3475579492511599304

`A056849(A171041(n+1))`
-/

namespace A175348.P3475579492511599304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056849 (A171041 (n + 1)).toNat

end

end A175348.P3475579492511599304

namespace A175348

/-- `A056849(A171041(n+1))` -/
def P3475579492511599304.Spec : Prop :=
  ∀ n, P3475579492511599304.a n = A175348 (n + 1)

end A175348

/-! ## A175348.P4928758708693329805

`A056849(A171045(n+1))`
-/

namespace A175348.P4928758708693329805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056849 (A171045 (n + 1)).toNat

end

end A175348.P4928758708693329805

namespace A175348

/-- `A056849(A171045(n+1))` -/
def P4928758708693329805.Spec : Prop :=
  ∀ n, P4928758708693329805.a n = A175348 (n + 1)

end A175348

/-! ## A175348.P252529546957298301

`A056849(A171047(n+1))`
-/

namespace A175348.P252529546957298301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056849 (A171047 (n + 1)).toNat

end

end A175348.P252529546957298301

namespace A175348

/-- `A056849(A171047(n+1))` -/
def P252529546957298301.Spec : Prop :=
  ∀ n, P252529546957298301.a n = A175348 (n + 1)

end A175348

/-! ## A175348.P15185098393013102546

`A072969(A175225(n+1))`
-/

namespace A175348.P15185098393013102546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072969 (A175225 (n + 1)).toNat

end

end A175348.P15185098393013102546

namespace A175348

/-- `A072969(A175225(n+1))` -/
def P15185098393013102546.Spec : Prop :=
  ∀ n, P15185098393013102546.a n = A175348 (n + 1)

end A175348

/-! ## A175348.P17944422929989638906

`A056849(A008578(n+2))`
-/

namespace A175348.P17944422929989638906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056849 (A008578 (n + 2)).toNat

end

end A175348.P17944422929989638906

namespace A175348

/-- `A056849(A008578(n+2))` -/
def P17944422929989638906.Spec : Prop :=
  ∀ n, P17944422929989638906.a n = A175348 (n + 1)

end A175348

/-! ## A175348.P3880522400008057998

`A056849(record[A006530(n+2)])`
-/

namespace A175348.P3880522400008057998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056849 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175348.P3880522400008057998

namespace A175348

/-- `A056849(record[A006530(n+2)])` -/
def P3880522400008057998.Spec : Prop :=
  ∀ n, P3880522400008057998.a n = A175348 (n + 1)

end A175348

/-! ## A175348.P8052097311603086111

`A056849(record[A020639(n+2)])`
-/

namespace A175348.P8052097311603086111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056849 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175348.P8052097311603086111

namespace A175348

/-- `A056849(record[A020639(n+2)])` -/
def P8052097311603086111.Spec : Prop :=
  ∀ n, P8052097311603086111.a n = A175348 (n + 1)

end A175348

/-! ## A175348.P17308834528238558100

`A056849(record[A000010(n+1)+1])`
-/

namespace A175348.P17308834528238558100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056849 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175348.P17308834528238558100

namespace A175348

/-- `A056849(record[A000010(n+1)+1])` -/
def P17308834528238558100.Spec : Prop :=
  ∀ n, P17308834528238558100.a n = A175348 (n + 1)

end A175348

/-!
# A175350: a(n) = the smallest positive integer not yet occurring such that the number of divisors of Sum_{k=1..n} a(k) is exactly n.

The programs for A175350, there is no canonical definition to state claims against.
-/

/-! ## A175350.P17398990795837806392

`Δ[A175351(A028310(n))%(3^n)]`
-/

namespace A175350.P17398990795837806392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175351 (A028310 n).toNat) (3 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175350.P17398990795837806392

/-! ## A175350.P7615523437438624691

`A000007(n)+Δ[A175351(A028310(n))]`
-/

namespace A175350.P7615523437438624691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175351 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A175350.P7615523437438624691

/-! ## A175350.P10752957030493100028

`Δ[A175351(A028310(n))+A057427(n)]`
-/

namespace A175350.P10752957030493100028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175351 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175350.P10752957030493100028

/-! ## A175350.P6642493511553852358

`Δ[A178334(n)+A175351(A028310(n))]`
-/

namespace A175350.P6642493511553852358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A175351 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175350.P6642493511553852358

/-!
# A175351: a(n) = Sum_{k=1..n} A175350(k).

The programs for A175351, there is no canonical definition to state claims against.
-/

/-! ## A175351.P16102411592764977332

`∑[A175350(n+1)]`
-/

namespace A175351.P16102411592764977332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175351.P16102411592764977332

/-!
# A175352: Numbers such that arithmetic mean of all prime factors is not an integer.

The programs for A175352, there is no canonical definition to state claims against.
-/

/-! ## A175352.P3465345668905879841

`comp[A078175(n+1)-1]+1`
-/

namespace A175352.P3465345668905879841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078175 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A175352.P3465345668905879841

/-! ## A175352.P4566580329301606543

`eq[char[A078175(n+1)], A000007(n)]`
-/

namespace A175352.P4566580329301606543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078175 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A175352.P4566580329301606543

/-! ## A175352.P6906586098951595260

`eq[char[A078175(n+1)], A000038(n)]`
-/

namespace A175352.P6906586098951595260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078175 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A175352.P6906586098951595260

/-! ## A175352.P1118434430381177314

`A175397(A187829(n+1))`
-/

namespace A175352.P1118434430381177314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175397 (A187829 (n + 1)).toNat

end

end A175352.P1118434430381177314

/-! ## A175352.P5369073879493572762

`A175397(n+1)%A084007(2*n)`
-/

namespace A175352.P5369073879493572762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175397 (n + 1)) (A084007 (2 * n))

end

end A175352.P5369073879493572762

/-!
# A175354: Numbers m such that reverse concatenations of divisors of m are nonprimes.

The programs for A175354, there is no canonical definition to state claims against.
-/

/-! ## A175354.P18075968444862272867

`A000007(n)+comp[A089374(n+1)]`
-/

namespace A175354.P18075968444862272867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089374 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A175354.P18075968444862272867

/-! ## A175354.P17950055125557684573

`comp[A057428(n)²*A089374(n+1)]`
-/

namespace A175354.P17950055125557684573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2 * A089374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A175354.P17950055125557684573

/-! ## A175354.P17907845698692740423

`comp[A089374(n+1)]+A000045(C(2, n+2))`
-/

namespace A175354.P17907845698692740423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089374 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + A000045 (Nat.choose 2 (n + 2))

end

end A175354.P17907845698692740423

/-! ## A175354.P17426287569369441807

`comp[A089374(n+1)]+A000045(floor(1/(n+1)))`
-/

namespace A175354.P17426287569369441807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089374 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + A000045 ⌊1 / (n + 1 : ℚ)⌋.toNat

end

end A175354.P17426287569369441807

/-! ## A175354.P14122649011533290444

`comp[A089374(n+1)]+(A000040(n+1)+1)%2`
-/

namespace A175354.P14122649011533290444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089374 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + Int.tmod (A000040 (n + 1) + 1) 2

end

end A175354.P14122649011533290444

/-! ## A175354.P16788859768090285924

`A028310(comp[A089374(n+1)])`
-/

namespace A175354.P16788859768090285924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089374 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A175354.P16788859768090285924

/-! ## A175354.P742464016967904142

`eq[char[A089374(n+2)], A000007(n)]`
-/

namespace A175354.P742464016967904142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089374 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A175354.P742464016967904142

/-! ## A175354.P14512689490060532796

`eq[char[A089374(n+2)], A000038(n)]`
-/

namespace A175354.P14512689490060532796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089374 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A175354.P14512689490060532796

/-! ## A175354.P2658060055113992249

`comp[A089374(n+1)]-A008683(lcm(2, (n+1)²))`
-/

namespace A175354.P2658060055113992249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089374 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - A008683 (Nat.lcm 2 ((n + 1) ^ 2))

end

end A175354.P2658060055113992249

/-!
# A175355: Noncomposite reverse concatenations of divisors of n, sorted by n.

The programs for A175355, there is no canonical definition to state claims against.
-/

/-! ## A175355.P11595771494088019671

`A176558(A089374(n+1))`
-/

namespace A175355.P11595771494088019671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176558 (A089374 (n + 1)).toNat

end

end A175355.P11595771494088019671

/-! ## A175355.P17072058280368031676

`gcd(A000038(n), A069582(A028310(n)))`
-/

namespace A175355.P17072058280368031676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A069582 (A028310 n).toNat)

end

end A175355.P17072058280368031676

/-! ## A175355.P8555237891593233606

`A069582(A028310(n))^-A057428(n)`
-/

namespace A175355.P8555237891593233606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069582 (A028310 n).toNat : ℚ) ^ (-A057428 n : ℤ)

end

end A175355.P8555237891593233606

/-! ## A175355.P6742104767249980162

`A069582(A028310(n))^A019426(2*n)`
-/

namespace A175355.P6742104767249980162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069582 (A028310 n).toNat : ℚ) ^ (A019426 (2 * n) : ℤ)

end

end A175355.P6742104767249980162

/-! ## A175355.P14257386408505813808

`A069582(A028310(n))%A089372(A283482(2*(n+1)))`
-/

namespace A175355.P14257386408505813808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069582 (A028310 n).toNat) (A089372 (A283482 (2 * (n + 1))).toNat)

end

end A175355.P14257386408505813808

/-!
# A175357: Irregular array: Row n contains the run-lengths (of runs of both 0's and 1's) of the binary representation of A175356(n).

The programs for A175357, there is no canonical definition to state claims against.
-/

/-! ## A175357.P10880350994279353678

`A001221(A342470(n+1)+A050291(n))`
-/

namespace A175357.P10880350994279353678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A342470 (n + 1) + A050291 n).toNat

end

end A175357.P10880350994279353678

/-! ## A175357.P584783319324057157

`A275806(A133214(n)*A272861(n+1))`
-/

namespace A175357.P584783319324057157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 (A133214 n * A272861 (n + 1)).toNat

end

end A175357.P584783319324057157

/-! ## A175357.P3758131142342240937

`A001221(A101176(3*n+4)-3)`
-/

namespace A175357.P3758131142342240937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A101176 (3 * n + 4) - 3).toNat

end

end A175357.P3758131142342240937

/-! ## A175357.P4315822505768535376

`A001221(A290344(n)+A246407(n+1))`
-/

namespace A175357.P4315822505768535376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A290344 n + A246407 (n + 1)).toNat

end

end A175357.P4315822505768535376

/-! ## A175357.P12212045162594407399

`A001221(A074915(n+1)+A025259(n+1))`
-/

namespace A175357.P12212045162594407399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A074915 (n + 1) + A025259 (n + 1)).toNat

end

end A175357.P12212045162594407399

/-!
# A175358: Irregular array read by rows: Row n contains A043276(n) terms. a(n,m) = number of runs (of either 0 or 1) of length m in the binary representation of n.

The programs for A175358, there is no canonical definition to state claims against.
-/

/-! ## A175358.P14959951284338914596

`A052343(A005408(n)*A163355(A103327(n)))`
-/

namespace A175358.P14959951284338914596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 (A005408 n * A163355 (A103327 n).toNat).toNat

end

end A175358.P14959951284338914596

/-! ## A175358.P11128820995829558120

`A018082(n)%A132954(A018082(n))`
-/

namespace A175358.P11128820995829558120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018082 n) (A132954 (A018082 n).toNat)

end

end A175358.P11128820995829558120

/-! ## A175358.P15728448959134537327

`A075349(A007481(n))%A173229(n+1)`
-/

namespace A175358.P15728448959134537327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075349 (A007481 n).toNat) (A173229 (n + 1))

end

end A175358.P15728448959134537327

/-!
# A175360: Partial sums of A000132.

The programs for A175360, there is no canonical definition to state claims against.
-/

/-! ## A175360.P4960125698785595375

`∑[A000132(n)]`
-/

namespace A175360.P4960125698785595375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000132 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175360.P4960125698785595375

/-! ## A175360.P16363607436784811157

`a(n-1)+A000132(n)+A000007(n)` with `a(0)=1`
-/

namespace A175360.P16363607436784811157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A000132 n + A000007 n)

end

end A175360.P16363607436784811157

/-! ## A175360.P9173631951464300029

`a(n-1)+or(A000122(n), A000132(n))` with `a(0)=1`
-/

namespace A175360.P9173631951464300029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lor (A000122 n) (A000132 n)

end

end A175360.P9173631951464300029

/-! ## A175360.P14125527449405951892

`∑[A008422(4*n)]`
-/

namespace A175360.P14125527449405951892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008422 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175360.P14125527449405951892

/-! ## A175360.P8879784797208376169

`∑[A008422(A008574(n))]+1`
-/

namespace A175360.P8879784797208376169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008422 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A175360.P8879784797208376169

/-! ## A175360.P3853972302613827809

`A000265(a(n-1))+A000132(n)` with `a(0)=1`
-/

namespace A175360.P3853972302613827809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000265 (a (n - 1)).toNat + A000132 n

end

end A175360.P3853972302613827809

/-!
# A175361: Partial sums of A000141.

The programs for A175361, there is no canonical definition to state claims against.
-/

/-! ## A175361.P1121702508059855465

`∑[A000141(n)]`
-/

namespace A175361.P1121702508059855465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000141 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175361.P1121702508059855465

/-! ## A175361.P15019193944957712439

`a(n-1)+A000141(n)+A000007(n)` with `a(0)=1`
-/

namespace A175361.P15019193944957712439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A000141 n + A000007 n)

end

end A175361.P15019193944957712439

/-! ## A175361.P10643616922864847029

`a(n-1)+A000141(n)%A008451(n)` with `a(0)=1`
-/

namespace A175361.P10643616922864847029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A000141 n) (A008451 n)

end

end A175361.P10643616922864847029

/-! ## A175361.P872499487538011043

`∑[A008425(2*n)]`
-/

namespace A175361.P872499487538011043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008425 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175361.P872499487538011043

/-! ## A175361.P10404908239702873242

`A008425(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A175361.P10404908239702873242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008425 (n + n) + a (n - 1)

end

end A175361.P10404908239702873242

/-! ## A175361.P5191546177273319872

`∑[A122141(A038722(∑[n+5]+16))]`
-/

namespace A175361.P5191546177273319872
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122141 (A038722 (∑ j ∈ Finset.range (n + 1), f2 j + 16)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175361.P5191546177273319872

/-! ## A175361.P12966918961717963584

`∑[A008665(4*n)]`
-/

namespace A175361.P12966918961717963584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008665 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175361.P12966918961717963584

/-!
# A175362: Number of integer pairs (x,y) satisfying |x|^3 + |y|^3 = n, -n <= x,y <= n.

The programs for A175362, there is no canonical definition to state claims against.
-/

/-! ## A175362.P3438715252597955566

`gcd(4, A175365(n))*A173677(n)`
-/

namespace A175362.P3438715252597955566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 4 (A175365 n) : ℤ) * A173677 n

end

end A175362.P3438715252597955566

/-! ## A175362.P4555129744810939678

`(A280618(n)+A173677(n))*gcd(2, A046523(n+1))`
-/

namespace A175362.P4555129744810939678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A280618 n + A173677 n) * (Int.gcd 2 (A046523 (n + 1)) : ℤ)

end

end A175362.P4555129744810939678

/-! ## A175362.P11016463456653029591

`(A280618(n)+A173677(n))*A006530(A001316(n))`
-/

namespace A175362.P11016463456653029591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A280618 n + A173677 n) * A006530 (A001316 n).toNat

end

end A175362.P11016463456653029591

/-! ## A175362.P5278253930287391045

`(A280618(n)+A173677(n))*A020639(A008574(n))`
-/

namespace A175362.P5278253930287391045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A280618 n + A173677 n) * A020639 (A008574 n).toNat

end

end A175362.P5278253930287391045

/-! ## A175362.P8660937524041599556

`A325678(A173677(n)*A175365(n))`
-/

namespace A175362.P8660937524041599556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A173677 n * A175365 n).toNat

end

end A175362.P8660937524041599556

/-! ## A175362.P10642141947411116052

`(A280618(n)+A173677(n))*A020639(A008253(n))`
-/

namespace A175362.P10642141947411116052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A280618 n + A173677 n) * A020639 (A008253 n).toNat

end

end A175362.P10642141947411116052

/-! ## A175362.P8124697272089472194

`A123932(n)*A347714(n)`
-/

namespace A175362.P8124697272089472194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123932 n * A347714 n

end

end A175362.P8124697272089472194

/-! ## A175362.P14262384672265320432

`A036452(n+1)²*A347714(n)`
-/

namespace A175362.P14262384672265320432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (n + 1) ^ 2 * A347714 n

end

end A175362.P14262384672265320432

/-! ## A175362.P300355944714254404

`A020639(A246037(n))²*A347714(n)`
-/

namespace A175362.P300355944714254404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A246037 n).toNat ^ 2 * A347714 n

end

end A175362.P300355944714254404

/-!
# A175363: Partial sums of A175362.

The programs for A175363, there is no canonical definition to state claims against.
-/

/-! ## A175363.P13985812155870456094

`∑[A175362(n)]`
-/

namespace A175363.P13985812155870456094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175362 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175363.P13985812155870456094

/-! ## A175363.P3192878103691321316

`A175362(char[1]+n)+a(n-1)` with `a(0)=1`
-/

namespace A175363.P3192878103691321316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A175362 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A175363.P3192878103691321316

/-! ## A175363.P13127199643115083702

`A344371(a(n-1))+A175362(n)` with `a(0)=1`
-/

namespace A175363.P13127199643115083702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A344371 (a (n - 1)).toNat + A175362 n

end

end A175363.P13127199643115083702

/-! ## A175363.P6887745081989634886

`a(n-1)+A175362(n)+A000038(n)` with `a(0)=1`
-/

namespace A175363.P6887745081989634886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A175362 n + A000038 n)

end

end A175363.P6887745081989634886

/-! ## A175363.P9361829180549395659

`a(n-1)+A175362(n)%A175361(n)` with `a(0)=1`
-/

namespace A175363.P9361829180549395659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A175362 n) (A175361 n)

end

end A175363.P9361829180549395659

/-! ## A175363.P8688032699569131992

`a(n-1)+A175362(n)+val(A000040(n+1), 2)` with `a(0)=1`
-/

namespace A175363.P8688032699569131992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A175362 n + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ))

end

end A175363.P8688032699569131992

/-! ## A175363.P7496549739213433509

`A008574(∑[A347714(n)])-3`
-/

namespace A175363.P7496549739213433509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 3

end

end A175363.P7496549739213433509

/-! ## A175363.P12125808096189269469

`∑[A123932(n)*A347714(n)]`
-/

namespace A175363.P12125808096189269469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123932 n * A347714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175363.P12125808096189269469

/-!
# A175364: A175363(n^2).

The programs for A175364, there is no canonical definition to state claims against.
-/

/-! ## A175364.P3254683335951645717

`A175363(n²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A175364.P3254683335951645717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175363 (n ^ 2)

end

end A175364.P3254683335951645717

/-! ## A175364.P8635181178945464605

`or(1, A175363(n^2))`
-/

namespace A175364.P8635181178945464605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A175363 (n ^ 2))

end

end A175364.P8635181178945464605

/-! ## A175364.P13224072977959786484

`A000027(A175363(n*n))`
-/

namespace A175364.P13224072977959786484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A175363 (n * n)).toNat

end

end A175364.P13224072977959786484

/-! ## A175364.P6251716810713226414

`A007318(∑[n])*A175363(n^2)`
-/

namespace A175364.P6251716810713226414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A175363 (n ^ 2)

end

end A175364.P6251716810713226414

/-!
# A175365: Number of integer triples (x,y,z) satisfying |x|^3 + |y|^3 + |z|^3 = n, -n <= x,y,z <= n.

The programs for A175365, there is no canonical definition to state claims against.
-/

/-! ## A175365.P10112934738008817352

`A175362(n)+2*∑{#}[floor(n^(1/3))-1, A175362(n-(#+1)^3)]`
-/

namespace A175365.P10112934738008817352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175362 n + 2 * (∑ k ∈ Finset.range (f1 n + 1).toNat, A175362 (n - (k + 1) ^ 3))

end

end A175365.P10112934738008817352

/-! ## A175365.P17938841870843744465

`A175375(A047476(n+1)%A175385(n+1))`
-/

namespace A175365.P17938841870843744465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175375 (Int.tmod (A047476 (n + 1)) (A175385 (n + 1))).toNat

end

end A175365.P17938841870843744465

/-! ## A175365.P4328458601244098758

`A175375(A047476(n+1))%A338932(n+3)`
-/

namespace A175365.P4328458601244098758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175375 (A047476 (n + 1)).toNat) (A338932 (n + 3))

end

end A175365.P4328458601244098758

/-!
# A175366: Partial sums of A175365.

The programs for A175366, there is no canonical definition to state claims against.
-/

/-! ## A175366.P13743476175617288862

`∑[A175365(n)]`
-/

namespace A175366.P13743476175617288862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175366.P13743476175617288862

/-! ## A175366.P17020517635497139063

`A175365(n%(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A175366.P17020517635497139063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A175365 (n % (n + 1)) + a (n - 1)

end

end A175366.P17020517635497139063

/-! ## A175366.P12944336714272464917

`A175365(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A175366.P12944336714272464917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A175365 n + a (A023443 n).toNat

end

end A175366.P12944336714272464917

/-! ## A175366.P13379955329923346181

`A000027(A175365(n)+a(n-1))` with `a(0)=1`
-/

namespace A175366.P13379955329923346181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (A175365 n + a (n - 1)).toNat

end

end A175366.P13379955329923346181

/-! ## A175366.P6090250332086165441

`A175365(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A175366.P6090250332086165441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A175365 (A028310 n).toNat + a (n - 1)

end

end A175366.P6090250332086165441

/-! ## A175366.P9535200168604156934

`a(n-1)+abs(A070750(n+1))*A175365(n)` with `a(0)=1`
-/

namespace A175366.P9535200168604156934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + |A070750 (n + 1)| * A175365 n

end

end A175366.P9535200168604156934

/-! ## A175366.P16813872401002561263

`A317318(a(n-1))+A175365(n)` with `a(0)=1`
-/

namespace A175366.P16813872401002561263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A317318 (a (n - 1)).toNat + A175365 n

end

end A175366.P16813872401002561263

/-! ## A175366.P1170723970434548561

`a(n-1)+A175365(n)%A105703(n)` with `a(0)=1`
-/

namespace A175366.P1170723970434548561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A175365 n) (A105703 n)

end

end A175366.P1170723970434548561

/-!
# A175367: A175366(n^2).

The programs for A175367, there is no canonical definition to state claims against.
-/

/-! ## A175367.P17709860145421204561

`A175366(n²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A175367.P17709860145421204561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175366 (n ^ 2)

end

end A175367.P17709860145421204561

/-! ## A175367.P9598695947454651081

`record[A175366(A048147(n))]`
-/

namespace A175367.P9598695947454651081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175366 (A048147 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175367.P9598695947454651081

/-! ## A175367.P5833341663451571642

`record[A175366(A123596(n))]`
-/

namespace A175367.P5833341663451571642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175366 (A123596 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175367.P5833341663451571642

/-! ## A175367.P16031813716581385373

`record[∑[A175365(n)]*A010052(n)]`
-/

namespace A175367.P16031813716581385373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175365 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A010052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175367.P16031813716581385373

/-!
# A175368: Number of integer 4-tuples (x,y,z,u) satisfying |x|^3 + |y|^3 + |z|^3 + |u|^3 = n, -n <= x,y,z,u <= n.

The programs for A175368, there is no canonical definition to state claims against.
-/

/-! ## A175368.P15161818679982291972

`A175365(n)+2*∑{#}[floor(n^(1/3))-1, A175365(n-(#+1)^3)]`
-/

namespace A175368.P15161818679982291972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175365 n + 2 * (∑ k ∈ Finset.range (f1 n + 1).toNat, A175365 (n - (k + 1) ^ 3))

end

end A175368.P15161818679982291972

/-!
# A175369: Partial sums of A175368.

The programs for A175369, there is no canonical definition to state claims against.
-/

/-! ## A175369.P1769842933249709085

`∑[A175368(n)]`
-/

namespace A175369.P1769842933249709085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175368 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175369.P1769842933249709085

/-! ## A175369.P11504749805251270176

`A175368(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A175369.P11504749805251270176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A175368 n + a (A023443 n).toNat

end

end A175369.P11504749805251270176

/-! ## A175369.P683795665609453317

`A000027(A175368(n)+a(n-1))` with `a(0)=1`
-/

namespace A175369.P683795665609453317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (A175368 n + a (n - 1)).toNat

end

end A175369.P683795665609453317

/-! ## A175369.P9011595849312311494

`A026741(A175368(n)+a(n-1))` with `a(0)=1`
-/

namespace A175369.P9011595849312311494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026741 (A175368 n + a (n - 1)).toNat

end

end A175369.P9011595849312311494

/-! ## A175369.P921708483439937437

`A175368(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A175369.P921708483439937437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A175368 n + a (A028310 n - 1).toNat

end

end A175369.P921708483439937437

/-! ## A175369.P3506071658985052823

`A284307(a(n-1))+A175368(n)` with `a(0)=1`
-/

namespace A175369.P3506071658985052823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A284307 (a (n - 1)).toNat + A175368 n

end

end A175369.P3506071658985052823

/-! ## A175369.P602946111535485747

`A267458(a(n-1)+A175368(n)+2)` with `a(0)=1`
-/

namespace A175369.P602946111535485747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267458 (a (n - 1) + (A175368 n + 2)).toNat

end

end A175369.P602946111535485747

/-! ## A175369.P10612627542529504568

`a(n-1)+A175368(n)+A000007(n)` with `a(0)=1`
-/

namespace A175369.P10612627542529504568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A175368 n + A000007 n)

end

end A175369.P10612627542529504568

/-! ## A175369.P2477934937933537471

`a(n-1)+A175368(n)%A017058(n)` with `a(0)=1`
-/

namespace A175369.P2477934937933537471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A175368 n) (A017058 n)

end

end A175369.P2477934937933537471

/-! ## A175369.P9475300648097272212

`a(n-1)+A175368(n)+A053188(n²)` with `a(0)=1`
-/

namespace A175369.P9475300648097272212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A175368 n + A053188 (n ^ 2))

end

end A175369.P9475300648097272212

/-!
# A175370: a(n) = A175369(n^2).

The programs for A175370, there is no canonical definition to state claims against.
-/

/-! ## A175370.P3871960175769010665

`A175369(n²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A175370.P3871960175769010665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175369 (n ^ 2)

end

end A175370.P3871960175769010665

/-! ## A175370.P7543464442599377304

`record[A175369(round(lcm(n+1, 1-n)/4))]`
-/

namespace A175370.P7543464442599377304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175369 (SequenceMachineLib.roundAway ((Int.lcm (n + 1 : ℤ) (1 - (n : ℤ)) : ℚ) / 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175370.P7543464442599377304

/-! ## A175370.P15353395635913860929

`record[A175369(A123596(n))]`
-/

namespace A175370.P15353395635913860929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175369 (A123596 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175370.P15353395635913860929

/-! ## A175370.P17700287358279390570

`and(-1, A175369(A000290(n)))`
-/

namespace A175370.P17700287358279390570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A175369 (A000290 n).toNat)

end

end A175370.P17700287358279390570

/-!
# A175372: Number of integer pairs (x,y) satisfying x^4 + y^4 = n.

The programs for A175372, there is no canonical definition to state claims against.
-/

/-! ## A175372.P1402042880504998299

`and(A004018(n), A175375(n))%A039819(A000124(n+11)-11)`
-/

namespace A175372.P1402042880504998299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (A004018 n) (A175375 n)) (A039819 (A000124 (n + 11) - 11).toNat)

end

end A175372.P1402042880504998299

/-! ## A175372.P16794132473162923107

`and(A104794(2*n), A175375(n))%A279846(n+2)`
-/

namespace A175372.P16794132473162923107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (A104794 (2 * n)) (A175375 n)) (A279846 (n + 2))

end

end A175372.P16794132473162923107

/-! ## A175372.P14940953125031585648

`and(A104794(n*(A284099(n+1)+1)), A175375(n))`
-/

namespace A175372.P14940953125031585648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104794 ((n : ℤ) * (A284099 (n + 1) + 1)).toNat) (A175375 n)

end

end A175372.P14940953125031585648

/-! ## A175372.P14875541471605250323

`and(A175375(n), A204372(n))%A094670(n+2)`
-/

namespace A175372.P14875541471605250323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (A175375 n) (A204372 n)) (A094670 (n + 2))

end

end A175372.P14875541471605250323

/-! ## A175372.P2043045285171917987

`and(A004018(n²), A175375(n))`
-/

namespace A175372.P2043045285171917987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004018 (n ^ 2)) (A175375 n)

end

end A175372.P2043045285171917987

/-! ## A175372.P12460254648608475296

`and(A175375(n), A204372(n²))`
-/

namespace A175372.P12460254648608475296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A175375 n) (A204372 (n ^ 2))

end

end A175372.P12460254648608475296

/-! ## A175372.P1048313464312146240

`and(A046109(n), A175375(n))*A338027((n+1)²)`
-/

namespace A175372.P1048313464312146240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046109 n) (A175375 n) * A338027 ((n + 1) ^ 2)

end

end A175372.P1048313464312146240

/-! ## A175372.P6013311894708260139

`A034947(n²+5)²*and(A046109(n), A175375(n))`
-/

namespace A175372.P6013311894708260139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n ^ 2 + 5) ^ 2 * Int.land (A046109 n) (A175375 n)

end

end A175372.P6013311894708260139

/-! ## A175372.P691514389519563896

`A000007(n^(2%(n+1)))+and(A175375(n), A204372(n))`
-/

namespace A175372.P691514389519563896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n ^ (2 % (n + 1))) + Int.land (A175375 n) (A204372 n)

end

end A175372.P691514389519563896

/-!
# A175373: Partial sums of A175372.

The programs for A175373, there is no canonical definition to state claims against.
-/

/-! ## A175373.P2623349856747944007

`∑[A175372(n)]`
-/

namespace A175373.P2623349856747944007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175372 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175373.P2623349856747944007

/-! ## A175373.P14592610006465214657

`A175372(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A175373.P14592610006465214657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A175372 n + a (A023443 n).toNat

end

end A175373.P14592610006465214657

/-!
# A175374: a(n) = A175373(n^2).

The programs for A175374, there is no canonical definition to state claims against.
-/

/-! ## A175374.P7828470241437696679

`A175373(n²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A175374.P7828470241437696679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175373 (n ^ 2)

end

end A175374.P7828470241437696679

/-!
# A175376: Partial sums of A175375.

The programs for A175376, there is no canonical definition to state claims against.
-/

/-! ## A175376.P16369358858729512065

`∑[A175375(n)]`
-/

namespace A175376.P16369358858729512065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175376.P16369358858729512065

/-! ## A175376.P329839161532408166

`A175375(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A175376.P329839161532408166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A175375 n + a (A023443 n).toNat

end

end A175376.P329839161532408166

/-! ## A175376.P3931512263081780960

`a(n-1)+A175375(n)+A000007(n)` with `a(0)=1`
-/

namespace A175376.P3931512263081780960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A175375 n + A000007 n)

end

end A175376.P3931512263081780960

/-! ## A175376.P4013916111241985653

`a(n-1)+A175375(n)%A161714(n)` with `a(0)=1`
-/

namespace A175376.P4013916111241985653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A175375 n) (A161714 n)

end

end A175376.P4013916111241985653

/-! ## A175376.P662084293946568370

`a(n-1)+A273750(n)%2*A175375(n)` with `a(0)=1`
-/

namespace A175376.P662084293946568370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A273750 n) 2 * A175375 n

end

end A175376.P662084293946568370

/-! ## A175376.P7762877450850128474

`a(n-1)+A010194(A107812(n+9))*A175375(n)` with `a(0)=1`
-/

namespace A175376.P7762877450850128474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A010194 (A107812 (n + 9)).toNat * A175375 n

end

end A175376.P7762877450850128474

/-!
# A175377: a(n) = A175376(n^2).

The programs for A175377, there is no canonical definition to state claims against.
-/

/-! ## A175377.P17180195146686658208

`A175376(n²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A175377.P17180195146686658208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175376 (n ^ 2)

end

end A175377.P17180195146686658208

/-! ## A175377.P11297461691767386116

`or(1, A175376(n*n))`
-/

namespace A175377.P11297461691767386116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A175376 (n * n))

end

end A175377.P11297461691767386116

/-! ## A175377.P17018453674347348650

`A000027(A175376(n*n))`
-/

namespace A175377.P17018453674347348650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A175376 (n * n)).toNat

end

end A175377.P17018453674347348650

/-! ## A175377.P11000517531696027419

`and(-1, A175376(A000290(n)))`
-/

namespace A175377.P11000517531696027419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A175376 (A000290 n).toNat)

end

end A175377.P11000517531696027419

/-! ## A175377.P18429521380784376292

`A175376(n*n)%A255417(n+1)`
-/

namespace A175377.P18429521380784376292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175376 (n * n)) (A255417 (n + 1))

end

end A175377.P18429521380784376292

/-! ## A175377.P11050426314358359368

`A007318(C(2, n))*A175376(n*n)`
-/

namespace A175377.P11050426314358359368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A175376 (n * n)

end

end A175377.P11050426314358359368

/-! ## A175377.P18190699908013640940

`A000041(C(2, n+2))*A175376(n*n)`
-/

namespace A175377.P18190699908013640940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A175376 (n * n)

end

end A175377.P18190699908013640940

/-! ## A175377.P14002880303534181720

`A175376(n*n)+and(2, and(1, A000040(n+1)))`
-/

namespace A175377.P14002880303534181720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175376 (n * n) + Int.land 2 (Int.land 1 (A000040 (n + 1)))

end

end A175377.P14002880303534181720

/-! ## A175377.P11649389587994285610

`A109613(A175376(sqrt(A000583(n))))`
-/

namespace A175377.P11649389587994285610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A175376 (SequenceMachineLib.roundAway (Real.sqrt (A000583 n : ℝ))).toNat).toNat

end

end A175377.P11649389587994285610

/-! ## A175377.P6640995280361568028

`gcd(A000038(n), A175376(A000290(n)))`
-/

namespace A175377.P6640995280361568028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A175376 (A000290 n).toNat)

end

end A175377.P6640995280361568028

/-! ## A175377.P12949793240243584883

`A175376(n*n)%A000141(A175376(n))`
-/

namespace A175377.P12949793240243584883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175376 (n * n)) (A000141 (A175376 n).toNat)

end

end A175377.P12949793240243584883

/-! ## A175377.P7766847645277979172

`A014963(8*n+6)*A175376(A000290(n))`
-/

namespace A175377.P7766847645277979172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (8 * n + 6) * A175376 (A000290 n).toNat

end

end A175377.P7766847645277979172

/-! ## A175377.P12436594415447500511

`A007318(A014963(∑[n+1])-1)*A175376(n*n)`
-/

namespace A175377.P12436594415447500511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) - 1).toNat * A175376 (n * n)

end

end A175377.P12436594415447500511

/-!
# A175378: G.f. x^4*(2*x^2-1)/( (x^2-1)*(x^2+x-1)*(2*x^3-2*x^2+2*x-1) ).

The programs for A175378, there is no canonical definition to state claims against.
-/

/-! ## A175378.P11474255379529709278

`A094975(n)%A230313(A208355(n))`
-/

namespace A175378.P11474255379529709278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094975 n) (A230313 (A208355 n).toNat)

end

end A175378.P11474255379529709278

/-!
# A175381: A positive integer k is included if all positive integers that, when written in binary, occur as substrings in binary k divide k.

The programs for A175381, the canonical program `A175381.P9481108831751205089` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175381 has offset 1).

The definition of A175381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5035 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175381.P9481108831751205089

`record[A059268(n)*A113980(A004736(n+1))]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A175381

/-- `record[A059268(n)*A113980(A004736(n+1))]` -/
def P9481108831751205089.Spec : Prop :=
  ∀ n, P9481108831751205089.a n = A175381 (n + 1)

theorem P9481108831751205089.correct : P9481108831751205089.Spec := by
  intro n
  simp only [A175381, Nat.add_sub_cancel]

end A175381

/-! ## A175381.P14456769321760881425

`record[A173786(n)/(A010766(n+1)+1)]`
-/

namespace A175381.P14456769321760881425
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173786 n : ℚ) / (A010766 (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175381.P14456769321760881425

namespace A175381

/-- `record[A173786(n)/(A010766(n+1)+1)]` -/
def P14456769321760881425.Spec : Prop :=
  ∀ n, P14456769321760881425.a n = (A175381 (n + 1) : ℚ)

end A175381

/-! ## A175381.P163946420968540130

`A048645(record[A131732(A063656(n))])`
-/

namespace A175381.P163946420968540130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (A063656 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175381.P163946420968540130

namespace A175381

/-- `A048645(record[A131732(A063656(n))])` -/
def P163946420968540130.Spec : Prop :=
  ∀ n, P163946420968540130.a n = A175381 (n + 1)

end A175381

/-! ## A175381.P8950368274034574383

`∩[A048645(n+1), A191283(n+1)]`
-/

namespace A175381.P8950368274034574383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175381.P8950368274034574383

namespace A175381

/-- `∩[A048645(n+1), A191283(n+1)]` -/
def P8950368274034574383.Spec : Prop :=
  ∀ n, (P8950368274034574383.a n : ℤ) = A175381 (n + 1)

end A175381

/-! ## A175381.P9506490267111541190

`∩[A064390(n+1), A191283(n+1)]`
-/

namespace A175381.P9506490267111541190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175381.P9506490267111541190

namespace A175381

/-- `∩[A064390(n+1), A191283(n+1)]` -/
def P9506490267111541190.Spec : Prop :=
  ∀ n, (P9506490267111541190.a n : ℤ) = A175381 (n + 1)

end A175381

/-! ## A175381.P210407946505472760

`∩[A129523(n+1), A191283(n+1)]`
-/

namespace A175381.P210407946505472760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175381.P210407946505472760

namespace A175381

/-- `∩[A129523(n+1), A191283(n+1)]` -/
def P210407946505472760.Spec : Prop :=
  ∀ n, (P210407946505472760.a n : ℤ) = A175381 (n + 1)

end A175381

/-! ## A175381.P9208575649981227429

`∩[A136490(n+1), A191283(n+1)]`
-/

namespace A175381.P9208575649981227429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175381.P9208575649981227429

namespace A175381

/-- `∩[A136490(n+1), A191283(n+1)]` -/
def P9208575649981227429.Spec : Prop :=
  ∀ n, (P9208575649981227429.a n : ℤ) = A175381 (n + 1)

end A175381

/-! ## A175381.P17005784815217726603

`∩[A048645(n+1), A225620(n+1)]`
-/

namespace A175381.P17005784815217726603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175381.P17005784815217726603

namespace A175381

/-- `∩[A048645(n+1), A225620(n+1)]` -/
def P17005784815217726603.Spec : Prop :=
  ∀ n, (P17005784815217726603.a n : ℤ) = A175381 (n + 1)

end A175381

/-! ## A175381.P9677520435058397007

`∩[A225620(n+1), A390305(n+1)]`
-/

namespace A175381.P9677520435058397007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175381.P9677520435058397007

namespace A175381

/-- `∩[A225620(n+1), A390305(n+1)]` -/
def P9677520435058397007.Spec : Prop :=
  ∀ n, (P9677520435058397007.a n : ℤ) = A175381 (n + 1)

end A175381

/-! ## A175381.P14738788394914745139

`record[A048645(n+1)/A267401(n+1)]`
-/

namespace A175381.P14738788394914745139
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048645 (n + 1) : ℚ) / (A267401 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175381.P14738788394914745139

namespace A175381

/-- `record[A048645(n+1)/A267401(n+1)]` -/
def P14738788394914745139.Spec : Prop :=
  ∀ n, P14738788394914745139.a n = (A175381 (n + 1) : ℚ)

end A175381

/-! ## A175381.P14778271007210654262

`∩[A062849(n+1), A191283(n+1)]`
-/

namespace A175381.P14778271007210654262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175381.P14778271007210654262

namespace A175381

/-- `∩[A062849(n+1), A191283(n+1)]` -/
def P14778271007210654262.Spec : Prop :=
  ∀ n, (P14778271007210654262.a n : ℤ) = A175381 (n + 1)

end A175381

/-! ## A175381.P10490214722346935337

`∩[A048645(n+1), A335041(n+1)]`
-/

namespace A175381.P10490214722346935337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175381.P10490214722346935337

namespace A175381

/-- `∩[A048645(n+1), A335041(n+1)]` -/
def P10490214722346935337.Spec : Prop :=
  ∀ n, (P10490214722346935337.a n : ℤ) = A175381 (n + 1)

end A175381

/-!
# A175382: Positive integers n for which there is at least one positive integer k whose binary expansion occurs as a substring in the binary expansion of n but does not divide n.

The programs for A175382, the canonical program `A175382.P11062849655442964285` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175382 has offset 1).

The definition of A175382 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175382.P11062849655442964285

`comp[A175381(n+1)-1]+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A175382

/-- `comp[A175381(n+1)-1]+1` -/
def P11062849655442964285.Spec : Prop :=
  ∀ n, (P11062849655442964285.a n : ℤ) = A175382 (n + 1)

theorem P11062849655442964285.correct : P11062849655442964285.Spec := by
  intro n
  simp only [A175382, Nat.add_sub_cancel]

end A175382

/-! ## A175382.P3756258816553043157

`eq[char[A175381(n+1)], A000007(n)]`
-/

namespace A175382.P3756258816553043157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175381 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A175382.P3756258816553043157

namespace A175382

/-- `eq[char[A175381(n+1)], A000007(n)]` -/
def P3756258816553043157.Spec : Prop :=
  ∀ n, (P3756258816553043157.a n : ℤ) = A175382 (n + 1)

end A175382

/-! ## A175382.P13059393274548788165

`eq[char[A175381(n+1)], A010051(2*(n+1))]`
-/

namespace A175382.P13059393274548788165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175381 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A175382.P13059393274548788165

namespace A175382

/-- `eq[char[A175381(n+1)], A010051(2*(n+1))]` -/
def P13059393274548788165.Spec : Prop :=
  ∀ n, (P13059393274548788165.a n : ℤ) = A175382 (n + 1)

end A175382

/-! ## A175382.P15820336382816210601

`lt[A000120(A211100(2*n+1)), A000120(n)]`
-/

namespace A175382.P15820336382816210601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A211100 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175382.P15820336382816210601

namespace A175382

/-- `lt[A000120(A211100(2*n+1)), A000120(n)]` -/
def P15820336382816210601.Spec : Prop :=
  ∀ n, (P15820336382816210601.a n : ℤ) = A175382 (n + 1)

end A175382

/-! ## A175382.P15434749332799498031

`comp[A233775(n)%A102376(n)]`
-/

namespace A175382.P15434749332799498031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233775 n) (A102376 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A175382.P15434749332799498031

namespace A175382

/-- `comp[A233775(n)%A102376(n)]` -/
def P15434749332799498031.Spec : Prop :=
  ∀ n, (P15434749332799498031.a n : ℤ) = A175382 (n + 1)

end A175382

/-! ## A175382.P15396276406595781392

`lt[A073137(A233279(n)), A233569(n)]`
-/

namespace A175382.P15396276406595781392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073137 (A233279 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233569 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175382.P15396276406595781392

namespace A175382

/-- `lt[A073137(A233279(n)), A233569(n)]` -/
def P15396276406595781392.Spec : Prop :=
  ∀ n, (P15396276406595781392.a n : ℤ) = A175382 (n + 1)

end A175382

/-! ## A175382.P8219862306495581437

`∪[A266214(n+1), A342378(n+1)]`
-/

namespace A175382.P8219862306495581437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175382.P8219862306495581437

namespace A175382

/-- `∪[A266214(n+1), A342378(n+1)]` -/
def P8219862306495581437.Spec : Prop :=
  ∀ n, (P8219862306495581437.a n : ℤ) = A175382 (n + 1)

end A175382

/-! ## A175382.P17758507714491718853

`lt[A124769(n), 2*A088512(n)]`
-/

namespace A175382.P17758507714491718853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088512 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175382.P17758507714491718853

namespace A175382

/-- `lt[A124769(n), 2*A088512(n)]` -/
def P17758507714491718853.Spec : Prop :=
  ∀ n, (P17758507714491718853.a n : ℤ) = A175382 (n + 1)

end A175382

/-! ## A175382.P1539866763387303816

`lt[A124769(n), A001281(A088512(n))]`
-/

namespace A175382.P1539866763387303816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A088512 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175382.P1539866763387303816

namespace A175382

/-- `lt[A124769(n), A001281(A088512(n))]` -/
def P1539866763387303816.Spec : Prop :=
  ∀ n, (P1539866763387303816.a n : ℤ) = A175382 (n + 1)

end A175382

/-! ## A175382.P5642090720313070515

`lt[2, A329313(n)*A333632(n)]`
-/

namespace A175382.P5642090720313070515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 n * A333632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A175382.P5642090720313070515

namespace A175382

/-- `lt[2, A329313(n)*A333632(n)]` -/
def P5642090720313070515.Spec : Prop :=
  ∀ n, (P5642090720313070515.a n : ℤ) = A175382 (n + 1)

end A175382

/-!
# A175383: Number of complete quadrangles on an n X n grid (or geoplane).

The programs for A175383, there is no canonical definition to state claims against.
-/

/-! ## A175383.P16260214767571742272

`1/3*A189412(n+1)+A189413(n+1)`
-/

namespace A175383.P16260214767571742272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (A189412 (n + 1) : ℚ) + (A189413 (n + 1) : ℚ)

end

end A175383.P16260214767571742272

/-! ## A175383.P11985924091172961475

`A334712(n+1)+A189413(n+1)`
-/

namespace A175383.P11985924091172961475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334712 (n + 1) + A189413 (n + 1)

end

end A175383.P11985924091172961475

/-! ## A175383.P16763576061410802550

`A189345(n+1)-(A334713(n+1)+A178256(n+1))`
-/

namespace A175383.P16763576061410802550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189345 (n + 1) - (A334713 (n + 1) + A178256 (n + 1))

end

end A175383.P16763576061410802550

/-! ## A175383.P3525431846816537414

`A189412(n+1)/3+A189413(n+1)`
-/

namespace A175383.P3525431846816537414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189412 (n + 1) : ℚ) / 3 + (A189413 (n + 1) : ℚ)

end

end A175383.P3525431846816537414

/-! ## A175383.P11779256854384556950

`A189414(n+1)-2*A334712(n+1)`
-/

namespace A175383.P11779256854384556950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189414 (n + 1) - 2 * A334712 (n + 1)

end

end A175383.P11779256854384556950

/-!
# A175384: A positive integer k is included if the largest square dividing k is not equal to the largest square that, when written in binary, occurs as a substring in binary k.

The programs for A175384, there is no canonical definition to state claims against.
-/

/-! ## A175384.P15442348377965264538

`lt[A359746(A316978(2*n+3)), A364492(n)]`
-/

namespace A175384.P15442348377965264538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359746 (A316978 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364492 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175384.P15442348377965264538

/-! ## A175384.P3976659813011370392

`lt[A111173(3*n+4), A330314(A124132(n+1))]`
-/

namespace A175384.P3976659813011370392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111173 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330314 (A124132 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175384.P3976659813011370392

/-!
# A175385: a(n) = numerator of Sum_{i=1..n} binomial(2n-i-1,i-1)/i.

The programs for A175385, there is no canonical definition to state claims against.
-/

/-! ## A175385.P11664874399565557340

`A189731(Δ[n²])`
-/

namespace A175385.P11664874399565557340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189731 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A175385.P11664874399565557340

/-! ## A175385.P11333143511419092322

`or(1, A189731(record[xor(1, n)]))`
-/

namespace A175385.P11333143511419092322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A189731 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)))

end

end A175385.P11333143511419092322

/-! ## A175385.P8814447700659548491

`record[A189731(n^(n%2))]`
-/

namespace A175385.P8814447700659548491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189731 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175385.P8814447700659548491

/-! ## A175385.P15009999148670112415

`record[A189731(n^and(1, n))]`
-/

namespace A175385.P15009999148670112415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189731 (n ^ Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175385.P15009999148670112415

/-! ## A175385.P18278640682058518523

`or(1, A189731(2*n+1))`
-/

namespace A175385.P18278640682058518523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A189731 (2 * n + 1))

end

end A175385.P18278640682058518523

/-!
# A175386: a(n) = denominator of Sum_{i=1..n} (1/i)*C(2n-i-1,i-1).

The programs for A175386, the canonical program `A175386.P10851720843828530846` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175386 has offset 1).

The definition of A175386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175386.P12332060476305946780

`A242926(Δ[n²])`
-/

namespace A175386.P12332060476305946780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242926 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A175386.P12332060476305946780

namespace A175386

/-- `A242926(Δ[n²])` -/
def P12332060476305946780.Spec : Prop :=
  ∀ n, P12332060476305946780.a n = A175386 (n + 1)

end A175386

/-! ## A175386.P2640610279987011223

`A242926(2*n+1)%∑[n+5]`
-/

namespace A175386.P2640610279987011223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242926 (2 * n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A175386.P2640610279987011223

namespace A175386

/-- `A242926(2*n+1)%∑[n+5]` -/
def P2640610279987011223.Spec : Prop :=
  ∀ n, P2640610279987011223.a n = A175386 (n + 1)

end A175386

/-! ## A175386.P17958135331855025730

`A000027(A242926(2*n+1))`
-/

namespace A175386.P17958135331855025730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A242926 (2 * n + 1)).toNat

end

end A175386.P17958135331855025730

namespace A175386

/-- `A000027(A242926(2*n+1))` -/
def P17958135331855025730.Spec : Prop :=
  ∀ n, P17958135331855025730.a n = A175386 (n + 1)

end A175386

/-! ## A175386.P3579796834462691364

`A046895(n)%2*A242926(2*n+1)`
-/

namespace A175386.P3579796834462691364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046895 n) 2 * A242926 (2 * n + 1)

end

end A175386.P3579796834462691364

namespace A175386

/-- `A046895(n)%2*A242926(2*n+1)` -/
def P3579796834462691364.Spec : Prop :=
  ∀ n, P3579796834462691364.a n = A175386 (n + 1)

end A175386

/-! ## A175386.P2875766792287188151

`A006519(2*n+1)*A242926(2*n+1)`
-/

namespace A175386.P2875766792287188151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 1) * A242926 (2 * n + 1)

end

end A175386.P2875766792287188151

namespace A175386

/-- `A006519(2*n+1)*A242926(2*n+1)` -/
def P2875766792287188151.Spec : Prop :=
  ∀ n, P2875766792287188151.a n = A175386 (n + 1)

end A175386

/-! ## A175386.P508632415496560666

`A057237(2*(n+1))*A242926(2*n+1)`
-/

namespace A175386.P508632415496560666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (2 * (n + 1)) * A242926 (2 * n + 1)

end

end A175386.P508632415496560666

namespace A175386

/-- `A057237(2*(n+1))*A242926(2*n+1)` -/
def P508632415496560666.Spec : Prop :=
  ∀ n, P508632415496560666.a n = A175386 (n + 1)

end A175386

/-! ## A175386.P2303064102438777189

`A214057(2*n+3)*A242926(2*n+1)`
-/

namespace A175386.P2303064102438777189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214057 (2 * n + 3) * A242926 (2 * n + 1)

end

end A175386.P2303064102438777189

namespace A175386

/-- `A214057(2*n+3)*A242926(2*n+1)` -/
def P2303064102438777189.Spec : Prop :=
  ∀ n, P2303064102438777189.a n = A175386 (n + 1)

end A175386

/-! ## A175386.P15606976438919601007

`A320742(A242923(n+1))+A242926(2*n+1)`
-/

namespace A175386.P15606976438919601007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320742 (A242923 (n + 1)).toNat + A242926 (2 * n + 1)

end

end A175386.P15606976438919601007

namespace A175386

/-- `A320742(A242923(n+1))+A242926(2*n+1)` -/
def P15606976438919601007.Spec : Prop :=
  ∀ n, P15606976438919601007.a n = A175386 (n + 1)

end A175386

/-! ## A175386.P10288329443251077918

`A001055(A020639(n+1))*A242926(2*n+1)`
-/

namespace A175386.P10288329443251077918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A020639 (n + 1)).toNat * A242926 (2 * n + 1)

end

end A175386.P10288329443251077918

namespace A175386

/-- `A001055(A020639(n+1))*A242926(2*n+1)` -/
def P10288329443251077918.Spec : Prop :=
  ∀ n, P10288329443251077918.a n = A175386 (n + 1)

end A175386

/-! ## A175386.P8640245001812608188

`A242885(A000265(n+1))*A242926(2*n+1)`
-/

namespace A175386.P8640245001812608188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242885 (A000265 (n + 1)).toNat * A242926 (2 * n + 1)

end

end A175386.P8640245001812608188

namespace A175386

/-- `A242885(A000265(n+1))*A242926(2*n+1)` -/
def P8640245001812608188.Spec : Prop :=
  ∀ n, P8640245001812608188.a n = A175386 (n + 1)

end A175386

/-! ## A175386.P10851720843828530846

`2*(n+1)/gcd(2*(n+1), A294152(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A175386

/-- `2*(n+1)/gcd(2*(n+1), A294152(n+1))` -/
def P10851720843828530846.Spec : Prop :=
  ∀ n, P10851720843828530846.a n = (A175386 (n + 1) : ℚ)

end A175386

/-! ## A175386.P3864018554820201540

`4*(n+1)/gcd(4*(n+1), A168674(2*n+1))`
-/

namespace A175386.P3864018554820201540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℚ) / (Int.gcd (4 * (n + 1) : ℤ) (A168674 (2 * n + 1)) : ℚ)

end

end A175386.P3864018554820201540

namespace A175386

/-- `4*(n+1)/gcd(4*(n+1), A168674(2*n+1))` -/
def P3864018554820201540.Spec : Prop :=
  ∀ n, P3864018554820201540.a n = (A175386 (n + 1) : ℚ)

end A175386

/-! ## A175386.P6936502765851642484

`lcm(2*(n+1), A001610(2*n+1))/A001610(2*n+1)`
-/

namespace A175386.P6936502765851642484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (2 * (n + 1) : ℤ) (A001610 (2 * n + 1)) : ℚ) / (A001610 (2 * n + 1) : ℚ)

end

end A175386.P6936502765851642484

namespace A175386

/-- `lcm(2*(n+1), A001610(2*n+1))/A001610(2*n+1)` -/
def P6936502765851642484.Spec : Prop :=
  ∀ n, P6936502765851642484.a n = (A175386 (n + 1) : ℚ)

end A175386

/-!
# A175387: a(n) = A004001(n)-floor(A004001(n)/2).

The programs for A175387, the canonical program `A175387.P14460528820023335310` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175387 has offset 1).

The definition of A175387 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A004001(n+1)-floor(A004001(n+1)/2)` (program `A175387.P14460528820023335310`, by `A175387.P14460528820023335310.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175387.P14460528820023335310

`A004001(n+1)-floor(A004001(n+1)/2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A175387

/-- `A004001(n+1)-floor(A004001(n+1)/2)` -/
def P14460528820023335310.Spec : Prop :=
  ∀ n, P14460528820023335310.a n = A175387 (n + 1)

theorem P14460528820023335310.correct : P14460528820023335310.Spec := by
  intro n
  simp only [A175387, Nat.add_sub_cancel]

end A175387

/-! ## A175387.P8624205454262311277

`ceil(A004001(n+1)/2)`
-/

namespace A175387.P8624205454262311277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004001 (n + 1) : ℚ) / 2⌉

end

end A175387.P8624205454262311277

namespace A175387

/-- `ceil(A004001(n+1)/2)` -/
def P8624205454262311277.Spec : Prop :=
  ∀ n, P8624205454262311277.a n = A175387 (n + 1)

end A175387

/-! ## A175387.P4119686451148261290

`ceil((A004074(n+1)+n)/4)`
-/

namespace A175387.P4119686451148261290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004074 (n + 1) + (n : ℤ) : ℚ) / 4⌉

end

end A175387.P4119686451148261290

namespace A175387

/-- `ceil((A004074(n+1)+n)/4)` -/
def P4119686451148261290.Spec : Prop :=
  ∀ n, P4119686451148261290.a n = A175387 (n + 1)

end A175387

/-! ## A175387.P4757646913647104808

`∑[char[A188163(2*n+1)-1]]`
-/

namespace A175387.P4757646913647104808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188163 (2 * n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175387.P4757646913647104808

namespace A175387

/-- `∑[char[A188163(2*n+1)-1]]` -/
def P4757646913647104808.Spec : Prop :=
  ∀ n, (P4757646913647104808.a n : ℤ) = A175387 (n + 1)

end A175387

/-! ## A175387.P16821793847532522223

`A065033(A004001(n+1))`
-/

namespace A175387.P16821793847532522223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A004001 (n + 1)).toNat

end

end A175387.P16821793847532522223

namespace A175387

/-- `A065033(A004001(n+1))` -/
def P16821793847532522223.Spec : Prop :=
  ∀ n, P16821793847532522223.a n = A175387 (n + 1)

end A175387

/-! ## A175387.P12341452974028493662

`A004526(A004001(n+1)+1)`
-/

namespace A175387.P12341452974028493662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004001 (n + 1) + 1).toNat

end

end A175387.P12341452974028493662

namespace A175387

/-- `A004526(A004001(n+1)+1)` -/
def P12341452974028493662.Spec : Prop :=
  ∀ n, P12341452974028493662.a n = A175387 (n + 1)

end A175387

/-! ## A175387.P17534873327679185817

`A123108(A004001(n+1)+1)`
-/

namespace A175387.P17534873327679185817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A004001 (n + 1) + 1).toNat

end

end A175387.P17534873327679185817

namespace A175387

/-- `A123108(A004001(n+1)+1)` -/
def P17534873327679185817.Spec : Prop :=
  ∀ n, P17534873327679185817.a n = A175387 (n + 1)

end A175387

/-! ## A175387.P5064776316379415603

`A008619(A004001(n+1)-1)`
-/

namespace A175387.P5064776316379415603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004001 (n + 1) - 1).toNat

end

end A175387.P5064776316379415603

namespace A175387

/-- `A008619(A004001(n+1)-1)` -/
def P5064776316379415603.Spec : Prop :=
  ∀ n, P5064776316379415603.a n = A175387 (n + 1)

end A175387

/-! ## A175387.P3422451179250947982

`A028242(xor(1, A004001(n+1)))`
-/

namespace A175387.P3422451179250947982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.xor 1 (A004001 (n + 1))).toNat

end

end A175387.P3422451179250947982

namespace A175387

/-- `A028242(xor(1, A004001(n+1)))` -/
def P3422451179250947982.Spec : Prop :=
  ∀ n, P3422451179250947982.a n = A175387 (n + 1)

end A175387

/-! ## A175387.P10591480132548746238

`A000027(round(A004001(n+1)/2))`
-/

namespace A175387.P10591480132548746238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A004001 (n + 1) : ℚ) / 2)).toNat

end

end A175387.P10591480132548746238

namespace A175387

/-- `A000027(round(A004001(n+1)/2))` -/
def P10591480132548746238.Spec : Prop :=
  ∀ n, P10591480132548746238.a n = A175387 (n + 1)

end A175387

/-! ## A175387.P2095954184650686148

`A008619(1-A080677(n+1)+n)`
-/

namespace A175387.P2095954184650686148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (1 - A080677 (n + 1) + (n : ℤ)).toNat

end

end A175387.P2095954184650686148

namespace A175387

/-- `A008619(1-A080677(n+1)+n)` -/
def P2095954184650686148.Spec : Prop :=
  ∀ n, P2095954184650686148.a n = A175387 (n + 1)

end A175387

/-! ## A175387.P1213843015293875021

`A110654(2-A080677(n+1)+n)`
-/

namespace A175387.P1213843015293875021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (2 - A080677 (n + 1) + (n : ℤ)).toNat

end

end A175387.P1213843015293875021

namespace A175387

/-- `A110654(2-A080677(n+1)+n)` -/
def P1213843015293875021.Spec : Prop :=
  ∀ n, P1213843015293875021.a n = A175387 (n + 1)

end A175387

/-! ## A175387.P11279947845069022445

`round(A004001(n+1)/A020639(2*(n+1)))`
-/

namespace A175387.P11279947845069022445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A004001 (n + 1) : ℚ) / (A020639 (2 * (n + 1)) : ℚ))

end

end A175387.P11279947845069022445

namespace A175387

/-- `round(A004001(n+1)/A020639(2*(n+1)))` -/
def P11279947845069022445.Spec : Prop :=
  ∀ n, P11279947845069022445.a n = A175387 (n + 1)

end A175387

/-! ## A175387.P2020577685612562773

`A008621(A004074(n+1)+n)`
-/

namespace A175387.P2020577685612562773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A004074 (n + 1) + (n : ℤ)).toNat

end

end A175387.P2020577685612562773

namespace A175387

/-- `A008621(A004074(n+1)+n)` -/
def P2020577685612562773.Spec : Prop :=
  ∀ n, P2020577685612562773.a n = A175387 (n + 1)

end A175387

/-! ## A175387.P351710590093584447

`A002265(2*(A004001(n+1)+1))`
-/

namespace A175387.P351710590093584447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A004001 (n + 1) + 1)).toNat

end

end A175387.P351710590093584447

namespace A175387

/-- `A002265(2*(A004001(n+1)+1))` -/
def P351710590093584447.Spec : Prop :=
  ∀ n, P351710590093584447.a n = A175387 (n + 1)

end A175387

/-! ## A175387.P4710448282703721771

`ceil(A285763(Δ[n²])/4)`
-/

namespace A175387.P4710448282703721771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A285763 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 4⌉

end

end A175387.P4710448282703721771

namespace A175387

/-- `ceil(A285763(Δ[n²])/4)` -/
def P4710448282703721771.Spec : Prop :=
  ∀ n, P4710448282703721771.a n = A175387 (n + 1)

end A175387

/-! ## A175387.P11646609846391658125

`round(A285763(2*(n+1))/4)`
-/

namespace A175387.P11646609846391658125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A285763 (2 * (n + 1)) : ℚ) / 4)

end

end A175387.P11646609846391658125

namespace A175387

/-- `round(A285763(2*(n+1))/4)` -/
def P11646609846391658125.Spec : Prop :=
  ∀ n, P11646609846391658125.a n = A175387 (n + 1)

end A175387

/-! ## A175387.P12665551101104631185

`A110655(A285763(Δ[n²]))`
-/

namespace A175387.P12665551101104631185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A285763 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A175387.P12665551101104631185

namespace A175387

/-- `A110655(A285763(Δ[n²]))` -/
def P12665551101104631185.Spec : Prop :=
  ∀ n, P12665551101104631185.a n = A175387 (n + 1)

end A175387

/-! ## A175387.P4127762636328011862

`ceil(A285764(3*n+1)/6)`
-/

namespace A175387.P4127762636328011862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A285764 (3 * n + 1) : ℚ) / 6⌉

end

end A175387.P4127762636328011862

namespace A175387

/-- `ceil(A285764(3*n+1)/6)` -/
def P4127762636328011862.Spec : Prop :=
  ∀ n, P4127762636328011862.a n = A175387 (n + 1)

end A175387

/-! ## A175387.P10663529232805720254

`round(A285764(3*n+4)/6)`
-/

namespace A175387.P10663529232805720254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A285764 (3 * n + 4) : ℚ) / 6)

end

end A175387.P10663529232805720254

namespace A175387

/-- `round(A285764(3*n+4)/6)` -/
def P10663529232805720254.Spec : Prop :=
  ∀ n, P10663529232805720254.a n = A175387 (n + 1)

end A175387

/-!
# A175388: Numbers n such that the sum of the divisors of n is semiprime.

The programs for A175388, the canonical program `A175388.P9483102972340870143` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175388 has offset 1).

The definition of A175388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175388.P9483102972340870143

`eq[2, A001222(A000203(n+1))]+1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A175388

/-- `eq[2, A001222(A000203(n+1))]+1` -/
def P9483102972340870143.Spec : Prop :=
  ∀ n, (P9483102972340870143.a n : ℤ) = A175388 (n + 1)

theorem P9483102972340870143.correct : P9483102972340870143.Spec := by
  intro n
  simp only [A175388, Nat.add_sub_cancel]

end A175388

/-! ## A175388.P6979534875471572

`eq[2, A058063(n+1)]+1`
-/

namespace A175388.P6979534875471572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058063 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175388.P6979534875471572

namespace A175388

/-- `eq[2, A058063(n+1)]+1` -/
def P6979534875471572.Spec : Prop :=
  ∀ n, (P6979534875471572.a n : ℤ) = A175388 (n + 1)

end A175388

/-! ## A175388.P8584878349928651454

`eq[2, A001222(A074400(n+1)/2)]+1`
-/

namespace A175388.P8584878349928651454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175388.P8584878349928651454

namespace A175388

/-- `eq[2, A001222(A074400(n+1)/2)]+1` -/
def P8584878349928651454.Spec : Prop :=
  ∀ n, (P8584878349928651454.a n : ℤ) = A175388 (n + 1)

end A175388

/-! ## A175388.P17187994001205145608

`eq[2, A001222(∑{d}[n+1, #])]+1`
-/

namespace A175388.P17187994001205145608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175388.P17187994001205145608

namespace A175388

/-- `eq[2, A001222(∑{d}[n+1, #])]+1` -/
def P17187994001205145608.Spec : Prop :=
  ∀ n, (P17187994001205145608.a n : ℤ) = A175388 (n + 1)

end A175388

/-! ## A175388.P8621507346609901286

`eq[2, A058063(A028310(n))]`
-/

namespace A175388.P8621507346609901286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058063 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175388.P8621507346609901286

namespace A175388

/-- `eq[2, A058063(A028310(n))]` -/
def P8621507346609901286.Spec : Prop :=
  ∀ n, (P8621507346609901286.a n : ℤ) = A175388 (n + 1)

end A175388

/-! ## A175388.P11673957272786939805

`eq[2, A001222(A039653(n)+1)]`
-/

namespace A175388.P11673957272786939805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A039653 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175388.P11673957272786939805

namespace A175388

/-- `eq[2, A001222(A039653(n)+1)]` -/
def P11673957272786939805.Spec : Prop :=
  ∀ n, (P11673957272786939805.a n : ℤ) = A175388 (n + 1)

end A175388

/-! ## A175388.P1629866372801033679

`eq[2, A001222(A245092(2*n+1))]+1`
-/

namespace A175388.P1629866372801033679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A245092 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175388.P1629866372801033679

namespace A175388

/-- `eq[2, A001222(A245092(2*n+1))]+1` -/
def P1629866372801033679.Spec : Prop :=
  ∀ n, (P1629866372801033679.a n : ℤ) = A175388 (n + 1)

end A175388

/-! ## A175388.P17334589515170976363

`eq[2, A001222(A001065(n+1)+n+1)]+1`
-/

namespace A175388.P17334589515170976363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001065 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175388.P17334589515170976363

namespace A175388

/-- `eq[2, A001222(A001065(n+1)+n+1)]+1` -/
def P17334589515170976363.Spec : Prop :=
  ∀ n, (P17334589515170976363.a n : ℤ) = A175388 (n + 1)

theorem P17334589515170976363.correct : P17334589515170976363.Spec := by
  intro n
  simp only [A175388, Nat.add_sub_cancel, A175388.P17334589515170976363.f1, A175388.P17334589515170976363.f2, A175388.P17334589515170976363.a, A175388.P9483102972340870143.f1, A175388.P9483102972340870143.f2, A175388.P9483102972340870143.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175388

/-! ## A175388.P6149800667603921389

`eq[4, A001222(A239050(n+1))]+1`
-/

namespace A175388.P6149800667603921389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A239050 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175388.P6149800667603921389

namespace A175388

/-- `eq[4, A001222(A239050(n+1))]+1` -/
def P6149800667603921389.Spec : Prop :=
  ∀ n, (P6149800667603921389.a n : ℤ) = A175388 (n + 1)

end A175388

/-!
# A175391: Perfect squares having a square number of divisors.

The programs for A175391, there is no canonical definition to state claims against.
-/

/-! ## A175391.P6652958438497757891

`A063774(n+1)²`
-/

namespace A175391.P6652958438497757891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063774 (n + 1) ^ 2

end

end A175391.P6652958438497757891

/-! ## A175391.P12540011885420277701

`A063774(n+1)^A000005(A020639(n+1))`
-/

namespace A175391.P12540011885420277701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063774 (n + 1) : ℚ) ^ (A000005 (A020639 (n + 1)).toNat : ℤ)

end

end A175391.P12540011885420277701

/-! ## A175391.P17798026116606630251

`A063774(n+1)^A020639(A002202(n+1))`
-/

namespace A175391.P17798026116606630251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063774 (n + 1) : ℚ) ^ (A020639 (A002202 (n + 1)).toNat : ℤ)

end

end A175391.P17798026116606630251

/-! ## A175391.P1020328670503497580

`A063774(n+1)^A000005(A052369(n+1))`
-/

namespace A175391.P1020328670503497580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063774 (n + 1) : ℚ) ^ (A000005 (A052369 (n + 1)).toNat : ℤ)

end

end A175391.P1020328670503497580

/-! ## A175391.P12665220599231634348

`A063774(n+1)^A000040(A019425(2*(n+1)))`
-/

namespace A175391.P12665220599231634348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063774 (n + 1) : ℚ) ^ (A000040 (A019425 (2 * (n + 1))).toNat : ℤ)

end

end A175391.P12665220599231634348

/-! ## A175391.P12189873990628644025

`A063774(n+1)%A016889(n)*A063774(n+1)`
-/

namespace A175391.P12189873990628644025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063774 (n + 1)) (A016889 n) * A063774 (n + 1)

end

end A175391.P12189873990628644025

/-! ## A175391.P17911689548084071010

`A063774(n+1)^A271224((n+1)%A000265(n+1))`
-/

namespace A175391.P17911689548084071010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063774 (n + 1) : ℚ) ^ (A271224 (Int.tmod (n + 1 : ℤ) (A000265 (n + 1))).toNat : ℤ)

end

end A175391.P17911689548084071010

/-! ## A175391.P11653046196375416230

`A063774(n+1)^A347403(2*(n+1))`
-/

namespace A175391.P11653046196375416230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063774 (n + 1) : ℚ) ^ (A347403 (2 * (n + 1)) : ℤ)

end

end A175391.P11653046196375416230

/-! ## A175391.P17777632723826559114

`∩[A069067(n+1), n²]`
-/

namespace A175391.P17777632723826559114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069067 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A175391.P17777632723826559114

/-! ## A175391.P2029429899584377196

`∩[A062312(n+1), A069067(n+1)]`
-/

namespace A175391.P2029429899584377196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175391.P2029429899584377196

/-! ## A175391.P17187163664551183185

`∩[A000290(n), A069067(n+1)]`
-/

namespace A175391.P17187163664551183185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175391.P17187163664551183185

/-! ## A175391.P9014438320510993815

`record[((n+1)*A093709(A048691(n+1)))²]`
-/

namespace A175391.P9014438320510993815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A093709 (A048691 (n + 1)).toNat) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175391.P9014438320510993815

/-! ## A175391.P15589092977103606176

`A000290(A063774(A000290(n+1)/(n+1)))`
-/

namespace A175391.P15589092977103606176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A063774 (SequenceMachineLib.roundAway ((A000290 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A175391.P15589092977103606176

/-! ## A175391.P12681326454999344974

`∩[A272266(n+1), A069067(n+1)]`
-/

namespace A175391.P12681326454999344974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175391.P12681326454999344974

/-! ## A175391.P8538208675444332920

`A063774(n+1)*A260437(2*A063774(n+1))`
-/

namespace A175391.P8538208675444332920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063774 (n + 1) * A260437 (2 * A063774 (n + 1)).toNat

end

end A175391.P8538208675444332920

/-! ## A175391.P13097269808289838380

`A002620(2*A063774(n+1))`
-/

namespace A175391.P13097269808289838380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A063774 (n + 1)).toNat

end

end A175391.P13097269808289838380

/-! ## A175391.P12795028907157995787

`record[(n+1)^A000122(A000005((n+1)²))]`
-/

namespace A175391.P12795028907157995787
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A000122 (A000005 ((n + 1) ^ 2)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175391.P12795028907157995787

/-!
# A175393: a(n) = number of pairs (j,k), j <= k, of divisors of 2n such that j+k divides 2n.

The programs for A175393, there is no canonical definition to state claims against.
-/

/-! ## A175393.P5152468464988316178

`A094518(2*(n+1))+Δ[A006218(n)]`
-/

namespace A175393.P5152468464988316178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094518 (2 * (n + 1)) + (f1 (n + 1) - f1 n)

end

end A175393.P5152468464988316178

/-! ## A175393.P4765820632372415372

`A094518(2*(n+1))+A000005(n+1)`
-/

namespace A175393.P4765820632372415372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094518 (2 * (n + 1)) + A000005 (n + 1)

end

end A175393.P4765820632372415372

/-! ## A175393.P16792716751573108768

`A026741(A385429(n+1)+A000005(n+1))`
-/

namespace A175393.P16792716751573108768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A385429 (n + 1) + A000005 (n + 1)).toNat

end

end A175393.P16792716751573108768

/-! ## A175393.P2841415665779162904

`A355749(A000040(n+1))+A094518(2*(n+1))`
-/

namespace A175393.P2841415665779162904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355749 (A000040 (n + 1)).toNat + A094518 (2 * (n + 1))

end

end A175393.P2841415665779162904

/-! ## A175393.P12942307846125610716

`∑{d}[A077168(n), A007862(#)]`
-/

namespace A175393.P12942307846125610716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007862 d

end

end A175393.P12942307846125610716

/-!
# A175395: a(n) = 2*Fibonacci(n)^2.

The programs for A175395, the canonical program `A175395.P1994188799197197583` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175395 has offset 0).

The definition of A175395 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000045(n)²` (program `A175395.P1994188799197197583`, by `A175395.P1994188799197197583.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175395.P9241055491053505728

`ogf((2x-2x^2)/(1-2x-2x^2+x^3))`
-/

namespace A175395.P9241055491053505728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -2] [1, -2, -2, 1] n

end

end A175395.P9241055491053505728

namespace A175395

/-- `ogf((2x-2x^2)/(1-2x-2x^2+x^3))` -/
def P9241055491053505728.Spec : Prop :=
  ∀ n, P9241055491053505728.a n = A175395 n

end A175395

/-! ## A175395.P17598903217825691316

`2*A007598(n)`
-/

namespace A175395.P17598903217825691316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007598 n

end

end A175395.P17598903217825691316

namespace A175395

/-- `2*A007598(n)` -/
def P17598903217825691316.Spec : Prop :=
  ∀ n, P17598903217825691316.a n = A175395 n

end A175395

/-! ## A175395.P1994188799197197583

`2*A000045(n)²`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A175395

/-- `2*A000045(n)²` -/
def P1994188799197197583.Spec : Prop :=
  ∀ n, P1994188799197197583.a n = A175395 n

theorem P1994188799197197583.correct : P1994188799197197583.Spec := by
  intro n
  simp only [A175395]

end A175395

/-! ## A175395.P6493555186088307735

`2*round(ϕ^n/sqrt(5))²`
-/

namespace A175395.P6493555186088307735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) ^ 2

end

end A175395.P6493555186088307735

namespace A175395

/-- `2*round(ϕ^n/sqrt(5))²` -/
def P6493555186088307735.Spec : Prop :=
  ∀ n, P6493555186088307735.a n = A175395 n

end A175395

/-! ## A175395.P4726663019437325324

`(sqrt(a(n-1))+sqrt(a(n-2)))²` with `a(0)=0, a(1)=2`
-/

namespace A175395.P4726663019437325324
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 2] fun n a =>
  (Real.sqrt (a (n - 1)) + Real.sqrt (a (n - 2))) ^ 2

end

end A175395.P4726663019437325324

namespace A175395

/-- `(sqrt(a(n-1))+sqrt(a(n-2)))²` -/
def P4726663019437325324.Spec : Prop :=
  ∀ n, P4726663019437325324.a n = (A175395 n : ℝ)

end A175395

/-! ## A175395.P994965969278191062

`2*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A175395.P994965969278191062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2] fun n a =>
  2 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A175395.P994965969278191062

namespace A175395

/-- `2*(a(n-1)+a(n-2))-a(n-3)` -/
def P994965969278191062.Spec : Prop :=
  ∀ n, P994965969278191062.a n = A175395 n

end A175395

/-! ## A175395.P13047887706880862671

`A382845(n)+1`
-/

namespace A175395.P13047887706880862671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382845 n + 1

end

end A175395.P13047887706880862671

namespace A175395

/-- `A382845(n)+1` -/
def P13047887706880862671.Spec : Prop :=
  ∀ n, P13047887706880862671.a n = A175395 n

theorem P13047887706880862671.correct : P13047887706880862671.Spec := by
  intro n
  simp only [A175395, Nat.add_sub_cancel, A175395.P13047887706880862671.a, A175395.P1994188799197197583.a, A000045, A000045.P11838749114346432762.a, A382845, A382845.P16632734929146409984.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175395

/-! ## A175395.P40197595005288121

`A295680(Δ[n²])`
-/

namespace A175395.P40197595005288121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295680 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A175395.P40197595005288121

namespace A175395

/-- `A295680(Δ[n²])` -/
def P40197595005288121.Spec : Prop :=
  ∀ n, P40197595005288121.a n = A175395 n

end A175395

/-! ## A175395.P10165331134650161172

`A392415(n+1)-1`
-/

namespace A175395.P10165331134650161172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392415 (n + 1) - 1

end

end A175395.P10165331134650161172

namespace A175395

/-- `A392415(n+1)-1` -/
def P10165331134650161172.Spec : Prop :=
  ∀ n, P10165331134650161172.a n = A175395 n

end A175395

/-! ## A175395.P14097653741782914286

`2*A245306(n)-2`
-/

namespace A175395.P14097653741782914286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A245306 n - 2

end

end A175395.P14097653741782914286

namespace A175395

/-- `2*A245306(n)-2` -/
def P14097653741782914286.Spec : Prop :=
  ∀ n, P14097653741782914286.a n = A175395 n

theorem P14097653741782914286.correct : P14097653741782914286.Spec := by
  intro n
  simp only [A175395, Nat.add_sub_cancel, A175395.P14097653741782914286.a, A175395.P1994188799197197583.a, A000045, A000045.P11838749114346432762.a, A245306, A245306.P10470454293037442129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175395

/-! ## A175395.P11260745666614913568

`lcm(2, A295680(2*n+1))`
-/

namespace A175395.P11260745666614913568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A295680 (2 * n + 1))

end

end A175395.P11260745666614913568

namespace A175395

/-- `lcm(2, A295680(2*n+1))` -/
def P11260745666614913568.Spec : Prop :=
  ∀ n, (P11260745666614913568.a n : ℤ) = A175395 n

end A175395

/-! ## A175395.P6642431529957808827

`A095122(n)+A000045(n)`
-/

namespace A175395.P6642431529957808827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095122 n + A000045 n

end

end A175395.P6642431529957808827

namespace A175395

/-- `A095122(n)+A000045(n)` -/
def P6642431529957808827.Spec : Prop :=
  ∀ n, P6642431529957808827.a n = A175395 n

theorem P6642431529957808827.correct : P6642431529957808827.Spec := by
  intro n
  simp only [A175395, Nat.add_sub_cancel, A175395.P6642431529957808827.a, A175395.P1994188799197197583.a, A000045, A000045.P11838749114346432762.a, A095122, A095122.P15035804079666453.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175395

/-! ## A175395.P7391337530753190979

`A192873(n)+A000035(n)`
-/

namespace A175395.P7391337530753190979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192873 n + A000035 n

end

end A175395.P7391337530753190979

namespace A175395

/-- `A192873(n)+A000035(n)` -/
def P7391337530753190979.Spec : Prop :=
  ∀ n, P7391337530753190979.a n = A175395 n

end A175395

/-! ## A175395.P9946302577801090443

`A229912(n)-A000045(n)`
-/

namespace A175395.P9946302577801090443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229912 n - A000045 n

end

end A175395.P9946302577801090443

namespace A175395

/-- `A229912(n)-A000045(n)` -/
def P9946302577801090443.Spec : Prop :=
  ∀ n, P9946302577801090443.a n = A175395 n

theorem P9946302577801090443.correct : P9946302577801090443.Spec := by
  intro n
  simp only [A175395, Nat.add_sub_cancel, A175395.P9946302577801090443.a, A175395.P1994188799197197583.a, A000045, A000045.P11838749114346432762.a, A229912, A229912.P11352936917927614539.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175395

/-! ## A175395.P224786283545140323

`A382609(n)-A187893(n)`
-/

namespace A175395.P224786283545140323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382609 n - A187893 n

end

end A175395.P224786283545140323

namespace A175395

/-- `A382609(n)-A187893(n)` -/
def P224786283545140323.Spec : Prop :=
  ∀ n, P224786283545140323.a n = A175395 n

end A175395

/-! ## A175395.P2176486940518906370

`A007598(n)+A000045(n)²`
-/

namespace A175395.P2176486940518906370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n + A000045 n ^ 2

end

end A175395.P2176486940518906370

namespace A175395

/-- `A007598(n)+A000045(n)²` -/
def P2176486940518906370.Spec : Prop :=
  ∀ n, P2176486940518906370.a n = A175395 n

theorem P2176486940518906370.correct : P2176486940518906370.Spec := by
  intro n
  simp only [A175395, Nat.add_sub_cancel, A175395.P2176486940518906370.a, A175395.P1994188799197197583.a, A000045, A000045.P11838749114346432762.a, A007598, A007598.P12226372241189459830.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175395

/-! ## A175395.P5421063444270320243

`A162460(n+1)+A056014(n)`
-/

namespace A175395.P5421063444270320243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162460 (n + 1) + A056014 n

end

end A175395.P5421063444270320243

namespace A175395

/-- `A162460(n+1)+A056014(n)` -/
def P5421063444270320243.Spec : Prop :=
  ∀ n, P5421063444270320243.a n = A175395 n

end A175395

/-! ## A175395.P16320190509996153830

`A382843(n)+A006355(n+1)`
-/

namespace A175395.P16320190509996153830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382843 n + A006355 (n + 1)

end

end A175395.P16320190509996153830

namespace A175395

/-- `A382843(n)+A006355(n+1)` -/
def P16320190509996153830.Spec : Prop :=
  ∀ n, P16320190509996153830.a n = A175395 n

end A175395

/-! ## A175395.P8419550542575579495

`A000045(n)²+A236191(n)²`
-/

namespace A175395.P8419550542575579495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2 + A236191 n ^ 2

end

end A175395.P8419550542575579495

namespace A175395

/-- `A000045(n)²+A236191(n)²` -/
def P8419550542575579495.Spec : Prop :=
  ∀ n, P8419550542575579495.a n = A175395 n

end A175395

/-! ## A175395.P13163252497341559378

`A126116(2*n)-A112030(2*n+1)`
-/

namespace A175395.P13163252497341559378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126116 (2 * n) - A112030 (2 * n + 1)

end

end A175395.P13163252497341559378

namespace A175395

/-- `A126116(2*n)-A112030(2*n+1)` -/
def P13163252497341559378.Spec : Prop :=
  ∀ n, P13163252497341559378.a n = A175395 n

end A175395

/-!
# A175396: Numbers whose sum of squares of digits is a square.

The programs for A175396, the canonical program `A175396.P3615558224982143830` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175396 has offset 1).

The definition of A175396 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175396.P3615558224982143830

`eq[1, A010052(A003132(n))]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A175396

/-- `eq[1, A010052(A003132(n))]` -/
def P3615558224982143830.Spec : Prop :=
  ∀ n, (P3615558224982143830.a n : ℤ) = A175396 (n + 1)

theorem P3615558224982143830.correct : P3615558224982143830.Spec := by
  intro n
  simp only [A175396, Nat.add_sub_cancel]

end A175396

/-! ## A175396.P9235047304520301655

`lt[A010060(n), A000122(A003132(n))]`
-/

namespace A175396.P9235047304520301655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A003132 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175396.P9235047304520301655

namespace A175396

/-- `lt[A010060(n), A000122(A003132(n))]` -/
def P9235047304520301655.Spec : Prop :=
  ∀ n, (P9235047304520301655.a n : ℤ) = A175396 (n + 1)

end A175396

/-! ## A175396.P2612721556672240905

`lt[A010051(n+1), A000122(A003132(n))]`
-/

namespace A175396.P2612721556672240905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A003132 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175396.P2612721556672240905

namespace A175396

/-- `lt[A010051(n+1), A000122(A003132(n))]` -/
def P2612721556672240905.Spec : Prop :=
  ∀ n, (P2612721556672240905.a n : ℤ) = A175396 (n + 1)

end A175396

/-! ## A175396.P13335684253541465243

`lt[0, A000122(∑{digits}[n, #²])]`
-/

namespace A175396.P13335684253541465243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x ^ 2).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A175396.P13335684253541465243

namespace A175396

/-- `lt[0, A000122(∑{digits}[n, #²])]` -/
def P13335684253541465243.Spec : Prop :=
  ∀ n, (P13335684253541465243.a n : ℤ) = A175396 (n + 1)

end A175396

/-! ## A175396.P13352825304479765190

`lt[0, A010052(∑{digits}[n, #²])]`
-/

namespace A175396.P13352825304479765190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x ^ 2).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A175396.P13352825304479765190

namespace A175396

/-- `lt[0, A010052(∑{digits}[n, #²])]` -/
def P13352825304479765190.Spec : Prop :=
  ∀ n, (P13352825304479765190.a n : ℤ) = A175396 (n + 1)

end A175396

/-!
# A175397: Numbers such that both arithmetic means of distinct and all prime factors are not integers.

The programs for A175397, there is no canonical definition to state claims against.
-/

/-! ## A175397.P10209514493519027870

`∩[A175352(n+1), A176587(n+1)]`
-/

namespace A175397.P10209514493519027870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175397.P10209514493519027870

/-! ## A175397.P2931060683731142481

`∩[A175352(n+1), A101616(n)]`
-/

namespace A175397.P2931060683731142481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101616 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175397.P2931060683731142481

/-! ## A175397.P8194305717005476992

`∩[A051234(n+1), A175352(n+1)]`
-/

namespace A175397.P8194305717005476992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175397.P8194305717005476992

/-! ## A175397.P1386699939567194720

`A006530(A000079(n))*A333227(n+1)`
-/

namespace A175397.P1386699939567194720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000079 n).toNat * A333227 (n + 1)

end

end A175397.P1386699939567194720

/-!
# A175398: Sequence of resulting numbers after iterations of {((((D_1^D_2)^D_3)^D_4)^... )^D_k, where D_k is the k-th digit D of the number r and k is the digit number of the number r in the decimal expansion of r (A055642)} needed to reach a one-digit number starting at r = n.

The programs for A175398, there is no canonical definition to state claims against.
-/

/-! ## A175398.P10198057987490550661

`A080867(A175400(n))`
-/

namespace A175398.P10198057987490550661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080867 (A175400 n).toNat

end

end A175398.P10198057987490550661

/-! ## A175398.P8707794653190129505

`A175400(A154470(n))`
-/

namespace A175398.P8707794653190129505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175400 (A154470 n).toNat

end

end A175398.P8707794653190129505

/-! ## A175398.P5115917371545480782

`A175400(n)%A029649(n)`
-/

namespace A175398.P5115917371545480782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175400 n) (A029649 n)

end

end A175398.P5115917371545480782

/-! ## A175398.P18008870706083361592

`A175400(and(-1, A175400(n)))`
-/

namespace A175398.P18008870706083361592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175400 (Int.land (-1) (A175400 n)).toNat

end

end A175398.P18008870706083361592

/-! ## A175398.P17281699838445541400

`A175399(A175400(2*n-n))`
-/

namespace A175398.P17281699838445541400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175399 (A175400 (2 * n - n)).toNat

end

end A175398.P17281699838445541400

/-! ## A175398.P4464894446807718010

`A175400(A057427(n)*A175400(n))`
-/

namespace A175398.P4464894446807718010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175400 (A057427 n * A175400 n).toNat

end

end A175398.P4464894446807718010

/-! ## A175398.P3591590037922674081

`A175400(A175400(n))%A000123(n)`
-/

namespace A175398.P3591590037922674081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175400 (A175400 n).toNat) (A000123 n)

end

end A175398.P3591590037922674081

/-! ## A175398.P14803009157735904606

`gcd(A166760(n+1), A175400(A175400(n)))`
-/

namespace A175398.P14803009157735904606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166760 (n + 1)) (A175400 (A175400 n).toNat)

end

end A175398.P14803009157735904606

/-! ## A175398.P4536281076662402033

`A175400(A175400(n))*A245195(A245195(n))`
-/

namespace A175398.P4536281076662402033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175400 (A175400 n).toNat * A245195 (A245195 n).toNat

end

end A175398.P4536281076662402033

/-!
# A175399: Sequence of resulting numbers after 2nd step of iteration defined in A175398.

The programs for A175399, there is no canonical definition to state claims against.
-/

/-! ## A175399.P12649732332821611186

`A133500(A133500(n)^A280865(n))`
-/

namespace A175399.P12649732332821611186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133500 (SequenceMachineLib.roundAway ((A133500 n : ℚ) ^ (A280865 n : ℤ))).toNat

end

end A175399.P12649732332821611186

/-! ## A175399.P6852441449860313546

`A133500(A133500(n)^A287091(n))`
-/

namespace A175399.P6852441449860313546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133500 (SequenceMachineLib.roundAway ((A133500 n : ℚ) ^ (A287091 n : ℤ))).toNat

end

end A175399.P6852441449860313546

/-! ## A175399.P17458209106977226206

`A133500(A133500(n)%A293697(n))`
-/

namespace A175399.P17458209106977226206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133500 (Int.tmod (A133500 n) (A293697 n)).toNat

end

end A175399.P17458209106977226206

/-! ## A175399.P6682620931592453987

`A133500(A133500(n))%A059614(n+1)`
-/

namespace A175399.P6682620931592453987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133500 (A133500 n).toNat) (A059614 (n + 1))

end

end A175399.P6682620931592453987

