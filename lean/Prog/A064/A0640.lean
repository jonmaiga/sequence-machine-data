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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
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
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
import Seq.B000.C048
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
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A064000: Unitary untouchable numbers of second kind: numbers n such that usigma(x) = n has no solution, where usigma(x) (A034448) is the sum of unitary divisors of x.

The programs for A064000, the canonical program `A064000.P4860626485817944771` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064000 has offset 1).

The definition of A064000 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064000.P4860626485817944771

`comp[A034460(n+1)+n]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A064000

/-- `comp[A034460(n+1)+n]+1` -/
def P4860626485817944771.Spec : Prop :=
  ∀ n, (P4860626485817944771.a n : ℤ) = A064000 (n + 1)

theorem P4860626485817944771.correct : P4860626485817944771.Spec := by
  intro n
  simp only [A064000, Nat.add_sub_cancel]

end A064000

/-! ## A064000.P1551850311330890681

`eq[0, A063973(n+1)]+1`
-/

namespace A064000.P1551850311330890681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063973 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064000.P1551850311330890681

namespace A064000

/-- `eq[0, A063973(n+1)]+1` -/
def P1551850311330890681.Spec : Prop :=
  ∀ n, (P1551850311330890681.a n : ℤ) = A064000 (n + 1)

end A064000

/-! ## A064000.P16325923584323863149

`eq[0, A063974(n+1)]+1`
-/

namespace A064000.P16325923584323863149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063974 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064000.P16325923584323863149

namespace A064000

/-- `eq[0, A063974(n+1)]+1` -/
def P16325923584323863149.Spec : Prop :=
  ∀ n, (P16325923584323863149.a n : ℤ) = A064000 (n + 1)

end A064000

/-! ## A064000.P15444105633068681538

`lt[A063972(n+1), 1]+1`
-/

namespace A064000.P15444105633068681538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063972 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A064000.P15444105633068681538

namespace A064000

/-- `lt[A063972(n+1), 1]+1` -/
def P15444105633068681538.Spec : Prop :=
  ∀ n, (P15444105633068681538.a n : ℤ) = A064000 (n + 1)

end A064000

/-! ## A064000.P10754225000541440172

`record[2-A063972(n+2)+n]`
-/

namespace A064000.P10754225000541440172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A063972 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064000.P10754225000541440172

namespace A064000

/-- `record[2-A063972(n+2)+n]` -/
def P10754225000541440172.Spec : Prop :=
  ∀ n, P10754225000541440172.a n = A064000 (n + 1)

end A064000

/-! ## A064000.P492994041075442310

`eq[0, A063972(A028310(n))]`
-/

namespace A064000.P492994041075442310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063972 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064000.P492994041075442310

namespace A064000

/-- `eq[0, A063972(A028310(n))]` -/
def P492994041075442310.Spec : Prop :=
  ∀ n, (P492994041075442310.a n : ℤ) = A064000 (n + 1)

end A064000

/-! ## A064000.P8725800239838017023

`eq[0, A063973(A000007(n)+n)]`
-/

namespace A064000.P8725800239838017023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063973 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064000.P8725800239838017023

namespace A064000

/-- `eq[0, A063973(A000007(n)+n)]` -/
def P8725800239838017023.Spec : Prop :=
  ∀ n, (P8725800239838017023.a n : ℤ) = A064000 (n + 1)

end A064000

/-! ## A064000.P7209193404964616172

`eq[1, A063972(A063972(n+1)+1)]+1`
-/

namespace A064000.P7209193404964616172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063972 (A063972 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064000.P7209193404964616172

namespace A064000

/-- `eq[1, A063972(A063972(n+1)+1)]+1` -/
def P7209193404964616172.Spec : Prop :=
  ∀ n, (P7209193404964616172.a n : ℤ) = A064000 (n + 1)

end A064000

/-! ## A064000.P445854003138351708

`comp[A034448(n+1)-1]+1`
-/

namespace A064000.P445854003138351708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A064000.P445854003138351708

namespace A064000

/-- `comp[A034448(n+1)-1]+1` -/
def P445854003138351708.Spec : Prop :=
  ∀ n, (P445854003138351708.a n : ℤ) = A064000 (n + 1)

end A064000

/-! ## A064000.P7891593430165690011

`eq[char[A034448(n+1)], A000007(n)]`
-/

namespace A064000.P7891593430165690011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A064000.P7891593430165690011

namespace A064000

/-- `eq[char[A034448(n+1)], A000007(n)]` -/
def P7891593430165690011.Spec : Prop :=
  ∀ n, (P7891593430165690011.a n : ℤ) = A064000 (n + 1)

end A064000

/-! ## A064000.P13281133344304184945

`eq[char[A034448(n+1)], A000038(n)]`
-/

namespace A064000.P13281133344304184945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A064000.P13281133344304184945

namespace A064000

/-- `eq[char[A034448(n+1)], A000038(n)]` -/
def P13281133344304184945.Spec : Prop :=
  ∀ n, (P13281133344304184945.a n : ℤ) = A064000 (n + 1)

end A064000

/-!
# A064002: List pairs (i,j) with 1 <= i <= j in colexicographic order: (1,1), (1,2), (2,2), (1,3), (2,3), (3,3), (1,4), ... Let a(1) = 1. Then for n>=2 if the (n-1)-st pair is (i,j) then a(n) = a(i) + a(j) + 1.

The programs for A064002, the canonical program `A064002.P15142336824653210743` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064002 has offset 1).

The definition of A064002 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064002.P15142336824653210743

`2*A064064(n)-1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A064002

/-- `2*A064064(n)-1` -/
def P15142336824653210743.Spec : Prop :=
  ∀ n, P15142336824653210743.a n = A064002 (n + 1)

theorem P15142336824653210743.correct : P15142336824653210743.Spec := by
  intro n
  simp only [A064002, Nat.add_sub_cancel]

end A064002

/-! ## A064002.P12448837803009586248

`A004273(A064064(n))`
-/

namespace A064002.P12448837803009586248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A064064 n).toNat

end

end A064002.P12448837803009586248

namespace A064002

/-- `A004273(A064064(n))` -/
def P12448837803009586248.Spec : Prop :=
  ∀ n, P12448837803009586248.a n = A064002 (n + 1)

end A064002

/-! ## A064002.P9903082046591081607

`A001650(A064064(n)²)`
-/

namespace A064002.P9903082046591081607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A064064 n ^ 2).toNat

end

end A064002.P9903082046591081607

namespace A064002

/-- `A001650(A064064(n)²)` -/
def P9903082046591081607.Spec : Prop :=
  ∀ n, P9903082046591081607.a n = A064002 (n + 1)

end A064002

/-! ## A064002.P10981201961367512611

`A004741(A064064(n)²)`
-/

namespace A064002.P10981201961367512611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (A064064 n ^ 2).toNat

end

end A064002.P10981201961367512611

namespace A064002

/-- `A004741(A064064(n)²)` -/
def P10981201961367512611.Spec : Prop :=
  ∀ n, P10981201961367512611.a n = A064002 (n + 1)

end A064002

/-! ## A064002.P4526854417690689022

`A005408(A064064(n)-1)`
-/

namespace A064002.P4526854417690689022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A064064 n - 1).toNat

end

end A064002.P4526854417690689022

namespace A064002

/-- `A005408(A064064(n)-1)` -/
def P4526854417690689022.Spec : Prop :=
  ∀ n, P4526854417690689022.a n = A064002 (n + 1)

end A064002

/-! ## A064002.P13306051633248096971

`A000267(A064064(n)²-1)`
-/

namespace A064002.P13306051633248096971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A064064 n ^ 2 - 1).toNat

end

end A064002.P13306051633248096971

namespace A064002

/-- `A000267(A064064(n)²-1)` -/
def P13306051633248096971.Spec : Prop :=
  ∀ n, P13306051633248096971.a n = A064002 (n + 1)

end A064002

/-! ## A064002.P3058869775535812591

`A003056(2*A064064(n)²)`
-/

namespace A064002.P3058869775535812591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * A064064 n ^ 2).toNat

end

end A064002.P3058869775535812591

namespace A064002

/-- `A003056(2*A064064(n)²)` -/
def P3058869775535812591.Spec : Prop :=
  ∀ n, P3058869775535812591.a n = A064002 (n + 1)

end A064002

/-! ## A064002.P17925735852771381793

`A002024(A001614(A064064(n)²))`
-/

namespace A064002.P17925735852771381793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A001614 (A064064 n ^ 2).toNat).toNat

end

end A064002.P17925735852771381793

namespace A064002

/-- `A002024(A001614(A064064(n)²))` -/
def P17925735852771381793.Spec : Prop :=
  ∀ n, P17925735852771381793.a n = A064002 (n + 1)

end A064002

/-! ## A064002.P1898689048382922525

`A004741((A064064(n)+2)*A064064(n))`
-/

namespace A064002.P1898689048382922525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 ((A064064 n + 2) * A064064 n).toNat

end

end A064002.P1898689048382922525

namespace A064002

/-- `A004741((A064064(n)+2)*A064064(n))` -/
def P1898689048382922525.Spec : Prop :=
  ∀ n, P1898689048382922525.a n = A064002 (n + 1)

end A064002

/-! ## A064002.P17486524333013637899

`A003056(2*A064064(n)*A064064(n))`
-/

namespace A064002.P17486524333013637899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * A064064 n * A064064 n).toNat

end

end A064002.P17486524333013637899

namespace A064002

/-- `A003056(2*A064064(n)*A064064(n))` -/
def P17486524333013637899.Spec : Prop :=
  ∀ n, P17486524333013637899.a n = A064002 (n + 1)

end A064002

/-! ## A064002.P14972263556208084579

`or(-1, A000041(n))+2*A064064(n)`
-/

namespace A064002.P14972263556208084579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-1) (A000041 n) + 2 * A064064 n

end

end A064002.P14972263556208084579

namespace A064002

/-- `or(-1, A000041(n))+2*A064064(n)` -/
def P14972263556208084579.Spec : Prop :=
  ∀ n, P14972263556208084579.a n = A064002 (n + 1)

end A064002

/-! ## A064002.P4450928127771582588

`or(-1, A000045(n))+2*A064064(n)`
-/

namespace A064002.P4450928127771582588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-1) (A000045 n) + 2 * A064064 n

end

end A064002.P4450928127771582588

namespace A064002

/-- `or(-1, A000045(n))+2*A064064(n)` -/
def P4450928127771582588.Spec : Prop :=
  ∀ n, P4450928127771582588.a n = A064002 (n + 1)

end A064002

/-! ## A064002.P16165157058004568856

`A356918(A000124(n))+1`
-/

namespace A064002.P16165157058004568856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356918 (A000124 n).toNat + 1

end

end A064002.P16165157058004568856

namespace A064002

/-- `A356918(A000124(n))+1` -/
def P16165157058004568856.Spec : Prop :=
  ∀ n, P16165157058004568856.a n = A064002 (n + 1)

end A064002

/-! ## A064002.P17124525112787040337

`A064064(∑[n+1])-1`
-/

namespace A064002.P17124525112787040337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064064 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A064002.P17124525112787040337

namespace A064002

/-- `A064064(∑[n+1])-1` -/
def P17124525112787040337.Spec : Prop :=
  ∀ n, P17124525112787040337.a n = A064002 (n + 1)

end A064002

/-!
# A064003: Numbers whose product of decimal digits equals its sum of binary digits.

The programs for A064003, there is no canonical definition to state claims against.
-/

/-! ## A064003.P308069813552901863

`eq[A000120(n+1), A007954(n+1)]+1`
-/

namespace A064003.P308069813552901863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A064003.P308069813552901863

/-! ## A064003.P12921391614490953475

`eq[A000120(A004277(n)), A007954(n)]`
-/

namespace A064003.P12921391614490953475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064003.P12921391614490953475

/-! ## A064003.P12744859759804588041

`eq[A000120(A000007(n)+n), A007954(n)]`
-/

namespace A064003.P12744859759804588041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064003.P12744859759804588041

/-! ## A064003.P1282246131938719185

`eq[A000120(A055641(n)+n), A007954(n)]`
-/

namespace A064003.P1282246131938719185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A055641 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064003.P1282246131938719185

/-! ## A064003.P524288170950994174

`eq[A000120(n)-A000007(n), A007954(n)]`
-/

namespace A064003.P524288170950994174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064003.P524288170950994174

/-!
# A064004: At step n in computing A064413, sequence gives smallest multiple of 2 not yet seen, divided by 2.

The programs for A064004, there is no canonical definition to state claims against.
-/

/-! ## A064004.P12306441591829254207

`A094267(∑[A077957(A064413(n+1))])`
-/

namespace A064004.P12306441591829254207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (A064413 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A064004.P12306441591829254207

/-!
# A064008: a(n) = (10^n - 1)/9*prime(n).

The programs for A064008, the canonical program `A064008.P6599285360297408283` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064008 has offset 1).

The definition of A064008 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064008.P6599285360297408283

`(10^(n+1)-1)/9*A000040(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064008

/-- `(10^(n+1)-1)/9*A000040(n+1)` -/
def P6599285360297408283.Spec : Prop :=
  ∀ n, P6599285360297408283.a n = (A064008 (n + 1) : ℚ)

end A064008

/-! ## A064008.P16797026871777500025

`∑[10^n]*p?[comp[n²]]`
-/

namespace A064008.P16797026871777500025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

end

end A064008.P16797026871777500025

namespace A064008

/-- `∑[10^n]*p?[comp[n²]]` -/
def P16797026871777500025.Spec : Prop :=
  ∀ n, (P16797026871777500025.a n : ℤ) = A064008 (n + 1)

end A064008

/-! ## A064008.P11294847867344634486

`A000040(1+n)*∑[10^n]`
-/

namespace A064008.P11294847867344634486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 + n) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A064008.P11294847867344634486

namespace A064008

/-- `A000040(1+n)*∑[10^n]` -/
def P11294847867344634486.Spec : Prop :=
  ∀ n, P11294847867344634486.a n = A064008 (n + 1)

end A064008

/-! ## A064008.P12962334571710001492

`∑[10^n]*record[A006530(n+2)]`
-/

namespace A064008.P12962334571710001492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A064008.P12962334571710001492

namespace A064008

/-- `∑[10^n]*record[A006530(n+2)]` -/
def P12962334571710001492.Spec : Prop :=
  ∀ n, P12962334571710001492.a n = A064008 (n + 1)

end A064008

/-! ## A064008.P14531886171539271977

`∑[10^n]*record[A014963(n+2)]`
-/

namespace A064008.P14531886171539271977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A064008.P14531886171539271977

namespace A064008

/-- `∑[10^n]*record[A014963(n+2)]` -/
def P14531886171539271977.Spec : Prop :=
  ∀ n, P14531886171539271977.a n = A064008 (n + 1)

end A064008

/-! ## A064008.P6585620753267091271

`∑[10^n]*record[A020639(n+2)]`
-/

namespace A064008.P6585620753267091271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A064008.P6585620753267091271

namespace A064008

/-- `∑[10^n]*record[A020639(n+2)]` -/
def P6585620753267091271.Spec : Prop :=
  ∀ n, P6585620753267091271.a n = A064008 (n + 1)

end A064008

/-! ## A064008.P16027262081858909657

`∑[A011557(n)]*Δ[A007504(n)]`
-/

namespace A064008.P16027262081858909657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A064008.P16027262081858909657

namespace A064008

/-- `∑[A011557(n)]*Δ[A007504(n)]` -/
def P16027262081858909657.Spec : Prop :=
  ∀ n, P16027262081858909657.a n = A064008 (n + 1)

end A064008

/-! ## A064008.P8791922131863809388

`p?[A258078(n)]*A000042(n+1)`
-/

namespace A064008.P8791922131863809388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A000042 (n + 1)

end

end A064008.P8791922131863809388

namespace A064008

/-- `p?[A258078(n)]*A000042(n+1)` -/
def P8791922131863809388.Spec : Prop :=
  ∀ n, P8791922131863809388.a n = A064008 (n + 1)

end A064008

/-! ## A064008.P13167155093499371066

`A002275(n+1)*A008578(n+2)`
-/

namespace A064008.P13167155093499371066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) * A008578 (n + 2)

end

end A064008.P13167155093499371066

namespace A064008

/-- `A002275(n+1)*A008578(n+2)` -/
def P13167155093499371066.Spec : Prop :=
  ∀ n, P13167155093499371066.a n = A064008 (n + 1)

end A064008

/-!
# A064009: a(n) = Sum_{k=1..n} d(k)*prime(k), where d(k) = A001223.

The programs for A064009, the canonical program `A064009.P12108905506998327831` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064009 has offset 1).

The definition of A064009 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064009.P1773917275019402191

`∑[A291463(1+n)]`
-/

namespace A064009.P1773917275019402191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291463 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064009.P1773917275019402191

namespace A064009

/-- `∑[A291463(1+n)]` -/
def P1773917275019402191.Spec : Prop :=
  ∀ n, P1773917275019402191.a n = A064009 (n + 1)

end A064009

/-! ## A064009.P8530082321507297584

`∑[2*A392034(n+1)]`
-/

namespace A064009.P8530082321507297584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A392034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064009.P8530082321507297584

namespace A064009

/-- `∑[2*A392034(n+1)]` -/
def P8530082321507297584.Spec : Prop :=
  ∀ n, P8530082321507297584.a n = A064009 (n + 1)

end A064009

/-! ## A064009.P1439967520118919536

`A074745(n+1)-A024450(n+1)`
-/

namespace A064009.P1439967520118919536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074745 (n + 1) - A024450 (n + 1)

end

end A064009.P1439967520118919536

namespace A064009

/-- `A074745(n+1)-A024450(n+1)` -/
def P1439967520118919536.Spec : Prop :=
  ∀ n, P1439967520118919536.a n = A064009 (n + 1)

end A064009

/-! ## A064009.P14032773049851724171

`∑[Δ[A007504(n)]*A001223(n+1)]`
-/

namespace A064009.P14032773049851724171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064009.P14032773049851724171

namespace A064009

/-- `∑[Δ[A007504(n)]*A001223(n+1)]` -/
def P14032773049851724171.Spec : Prop :=
  ∀ n, P14032773049851724171.a n = A064009 (n + 1)

end A064009

/-! ## A064009.P12108905506998327831

`∑[A006094(n+1)-A001248(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A064009

/-- `∑[A006094(n+1)-A001248(n+1)]` -/
def P12108905506998327831.Spec : Prop :=
  ∀ n, P12108905506998327831.a n = A064009 (n + 1)

theorem P12108905506998327831.correct : P12108905506998327831.Spec := by
  intro n
  simp only [A064009, Nat.add_sub_cancel]

end A064009

/-! ## A064009.P10709397069269292228

`∑[A006094(n+1)]-A024450(n+1)`
-/

namespace A064009.P10709397069269292228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A024450 (n + 1)

end

end A064009.P10709397069269292228

namespace A064009

/-- `∑[A006094(n+1)]-A024450(n+1)` -/
def P10709397069269292228.Spec : Prop :=
  ∀ n, P10709397069269292228.a n = A064009 (n + 1)

end A064009

/-! ## A064009.P4792219933137935262

`∑[A037166(n+1)-A036689(n+1)]`
-/

namespace A064009.P4792219933137935262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037166 (n + 1) - A036689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064009.P4792219933137935262

namespace A064009

/-- `∑[A037166(n+1)-A036689(n+1)]` -/
def P4792219933137935262.Spec : Prop :=
  ∀ n, P4792219933137935262.a n = A064009 (n + 1)

end A064009

/-! ## A064009.P13153584115269019711

`∑[A000040(n+1)*A001223(n+1)]`
-/

namespace A064009.P13153584115269019711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064009.P13153584115269019711

namespace A064009

/-- `∑[A000040(n+1)*A001223(n+1)]` -/
def P13153584115269019711.Spec : Prop :=
  ∀ n, P13153584115269019711.a n = A064009 (n + 1)

theorem P13153584115269019711.correct : P13153584115269019711.Spec := by
  intro n
  simp only [A064009, Nat.add_sub_cancel, A064009.P13153584115269019711.f1, A064009.P13153584115269019711.a, A064009.P12108905506998327831.f1, A064009.P12108905506998327831.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A001248, A001248.P16278241061688229202.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064009

/-! ## A064009.P5902378110886903262

`∑[∑[A054541(n+1)]*A001223(n+1)]`
-/

namespace A064009.P5902378110886903262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064009.P5902378110886903262

namespace A064009

/-- `∑[∑[A054541(n+1)]*A001223(n+1)]` -/
def P5902378110886903262.Spec : Prop :=
  ∀ n, P5902378110886903262.a n = A064009 (n + 1)

end A064009

/-! ## A064009.P8237155857787422801

`∑[(A065091(n+1)-A006005(n+1))*A006005(n+1)]`
-/

namespace A064009.P8237155857787422801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065091 (n + 1) - A006005 (n + 1)) * A006005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064009.P8237155857787422801

namespace A064009

/-- `∑[(A065091(n+1)-A006005(n+1))*A006005(n+1)]` -/
def P8237155857787422801.Spec : Prop :=
  ∀ n, P8237155857787422801.a n = A064009 (n + 1)

end A064009

/-! ## A064009.P11702739645848127608

`∑[Δ[A007504(n)]*A075526(n+1)]`
-/

namespace A064009.P11702739645848127608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A075526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064009.P11702739645848127608

namespace A064009

/-- `∑[Δ[A007504(n)]*A075526(n+1)]` -/
def P11702739645848127608.Spec : Prop :=
  ∀ n, P11702739645848127608.a n = A064009 (n + 1)

end A064009

/-! ## A064009.P5651998123295234313

`∑[Δ[A007504(n)]*A054541(n+2)]`
-/

namespace A064009.P5651998123295234313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A054541 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064009.P5651998123295234313

namespace A064009

/-- `∑[Δ[A007504(n)]*A054541(n+2)]` -/
def P5651998123295234313.Spec : Prop :=
  ∀ n, P5651998123295234313.a n = A064009 (n + 1)

end A064009

/-! ## A064009.P10210641691144439131

`∑[A000040(n+1)*A054541(n+2)]`
-/

namespace A064009.P10210641691144439131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A054541 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064009.P10210641691144439131

namespace A064009

/-- `∑[A000040(n+1)*A054541(n+2)]` -/
def P10210641691144439131.Spec : Prop :=
  ∀ n, P10210641691144439131.a n = A064009 (n + 1)

end A064009

/-! ## A064009.P4881858203001504324

`∑[A008578(n+2)*A054541(n+2)]`
-/

namespace A064009.P4881858203001504324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) * A054541 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064009.P4881858203001504324

namespace A064009

/-- `∑[A008578(n+2)*A054541(n+2)]` -/
def P4881858203001504324.Spec : Prop :=
  ∀ n, P4881858203001504324.a n = A064009 (n + 1)

end A064009

/-! ## A064009.P17192648215998624373

`∑[A054541(n+2)*A182986(n+2)]`
-/

namespace A064009.P17192648215998624373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 2) * A182986 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064009.P17192648215998624373

namespace A064009

/-- `∑[A054541(n+2)*A182986(n+2)]` -/
def P17192648215998624373.Spec : Prop :=
  ∀ n, P17192648215998624373.a n = A064009 (n + 1)

end A064009

/-! ## A064009.P16494762325632424972

`∑[(Δ[A014689(n+1)]+1)*(A006093(n+1)+1)]`
-/

namespace A064009.P16494762325632424972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n + 1) * (A006093 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064009.P16494762325632424972

namespace A064009

/-- `∑[(Δ[A014689(n+1)]+1)*(A006093(n+1)+1)]` -/
def P16494762325632424972.Spec : Prop :=
  ∀ n, P16494762325632424972.a n = A064009 (n + 1)

end A064009

/-! ## A064009.P8060528898894526882

`∑[(A000040(n+2)-A000040(n+1))*A000040(n+1)]`
-/

namespace A064009.P8060528898894526882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) - A000040 (n + 1)) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064009.P8060528898894526882

namespace A064009

/-- `∑[(A000040(n+2)-A000040(n+1))*A000040(n+1)]` -/
def P8060528898894526882.Spec : Prop :=
  ∀ n, P8060528898894526882.a n = A064009 (n + 1)

end A064009

/-! ## A064009.P2251837867086726111

`∑[record[A006530(n+2)]*A001223(n+1)]`
-/

namespace A064009.P2251837867086726111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064009.P2251837867086726111

namespace A064009

/-- `∑[record[A006530(n+2)]*A001223(n+1)]` -/
def P2251837867086726111.Spec : Prop :=
  ∀ n, P2251837867086726111.a n = A064009 (n + 1)

end A064009

/-! ## A064009.P387520943573774655

`∑[record[A020639(n+2)]*A001223(n+1)]`
-/

namespace A064009.P387520943573774655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064009.P387520943573774655

namespace A064009

/-- `∑[record[A020639(n+2)]*A001223(n+1)]` -/
def P387520943573774655.Spec : Prop :=
  ∀ n, P387520943573774655.a n = A064009 (n + 1)

end A064009

/-! ## A064009.P1209844012038168949

`∑[record[A000010(n+1)+1]*A001223(n+1)]`
-/

namespace A064009.P1209844012038168949
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064009.P1209844012038168949

namespace A064009

/-- `∑[record[A000010(n+1)+1]*A001223(n+1)]` -/
def P1209844012038168949.Spec : Prop :=
  ∀ n, P1209844012038168949.a n = A064009 (n + 1)

end A064009

/-!
# A064010: Numbers k such that sopf(k) = d(k) where d(k) = A001223(k) and sopf(k) = A008472(k).

The programs for A064010, there is no canonical definition to state claims against.
-/

/-! ## A064010.P13040543619921566155

`eq[A001223(n+1), A008472(n+1)]+1`
-/

namespace A064010.P13040543619921566155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A064010.P13040543619921566155

/-! ## A064010.P18020806294969081704

`eq[A008472(A028310(n)), A054541(n+1)]`
-/

namespace A064010.P18020806294969081704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064010.P18020806294969081704

/-! ## A064010.P2960443033319983313

`eq[A008472(A028310(n)), A125266(n+1)]`
-/

namespace A064010.P2960443033319983313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064010.P2960443033319983313

/-! ## A064010.P8734654308483290404

`eq[A008472(A257088(n)), A054541(n+1)]`
-/

namespace A064010.P8734654308483290404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A257088 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064010.P8734654308483290404

/-! ## A064010.P12306481218630388332

`A020725(eq[A001223(n+1), A008472(n+1)])`
-/

namespace A064010.P12306481218630388332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A064010.P12306481218630388332

/-!
# A064011: Sum of distinct primes dividing n! + 1.

The programs for A064011, the canonical program `A064011.P12802472044596461129` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064011 has offset 1).

The definition of A064011 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064011.P12802472044596461129

`A008472(A038507(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064011

/-- `A008472(A038507(n+1))` -/
def P12802472044596461129.Spec : Prop :=
  ∀ n, P12802472044596461129.a n = A064011 (n + 1)

theorem P12802472044596461129.correct : P12802472044596461129.Spec := by
  intro n
  simp only [A064011, Nat.add_sub_cancel]

end A064011

/-! ## A064011.P15690710016058443067

`∑{p}[(n+1)!+1, #]`
-/

namespace A064011.P15690710016058443067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A064011.P15690710016058443067

namespace A064011

/-- `∑{p}[(n+1)!+1, #]` -/
def P15690710016058443067.Spec : Prop :=
  ∀ n, (P15690710016058443067.a n : ℤ) = A064011 (n + 1)

end A064011

/-! ## A064011.P566215539059966826

`∑{p}[∏[n+2]/(n+2)+1, #]`
-/

namespace A064011.P566215539059966826
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / (n + 2 : ℚ) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A064011.P566215539059966826

namespace A064011

/-- `∑{p}[∏[n+2]/(n+2)+1, #]` -/
def P566215539059966826.Spec : Prop :=
  ∀ n, (P566215539059966826.a n : ℤ) = A064011 (n + 1)

end A064011

/-! ## A064011.P3553754508303423202

`lcm((-1)^n, ∑{p}[record[A047920(n)+1], #])`
-/

namespace A064011.P3553754508303423202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ)

end

end A064011.P3553754508303423202

namespace A064011

/-- `lcm((-1)^n, ∑{p}[record[A047920(n)+1], #])` -/
def P3553754508303423202.Spec : Prop :=
  ∀ n, (P3553754508303423202.a n : ℤ) = A064011 (n + 1)

end A064011

/-!
# A064014: Squares with an even number of digits, the respective halves of which are consecutive integers.

The programs for A064014, there is no canonical definition to state claims against.
-/

/-! ## A064014.P13700181347035264322

`∪[A030466(n+1), A054215(n+1)]`
-/

namespace A064014.P13700181347035264322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A064014.P13700181347035264322

/-! ## A064014.P1102212943548201905

`∪[A030467(n+1), A054216(n+1)]²`
-/

namespace A064014.P1102212943548201905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A064014.P1102212943548201905

/-! ## A064014.P5108480599314232358

`A000290(∪[A030467(n+1), A054216(n+1)])`
-/

namespace A064014.P5108480599314232358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054216 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A064014.P5108480599314232358

/-!
# A064016: a(n) = Sum_{k <= 10^n} cototient(k), where cototient is A051953.

The programs for A064016, the canonical program `A064016.P2024844494893965429` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064016 has offset 0).

The definition of A064016 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064016.P2024844494893965429

`10^n*(10^n+1)/2-A064018(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A064016

/-- `10^n*(10^n+1)/2-A064018(n)` -/
def P2024844494893965429.Spec : Prop :=
  ∀ n, P2024844494893965429.a n = (A064016 n : ℚ)

end A064016

/-!
# A064017: Number of ternary trees (A001764) with n nodes and maximal diameter.

The programs for A064017, the canonical program `A064017.P1457114385268100959` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064017 has offset 1).

The definition of A064017 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064017.P17061507540324399630

`ogf((1-3x+3x^2)/(1-6x+9x^2))`
-/

namespace A064017.P17061507540324399630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 3] [1, -6, 9] n

end

end A064017.P17061507540324399630

namespace A064017

/-- `ogf((1-3x+3x^2)/(1-6x+9x^2))` -/
def P17061507540324399630.Spec : Prop :=
  ∀ n, P17061507540324399630.a n = A064017 (n + 1)

end A064017

/-! ## A064017.P2359893647130050593

`3*a(n-1)+3^(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A064017.P2359893647130050593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 * a (n - 1) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A064017.P2359893647130050593

namespace A064017

/-- `3*a(n-1)+3^(n-1)` -/
def P2359893647130050593.Spec : Prop :=
  ∀ n, P2359893647130050593.a n = (A064017 (n + 1) : ℚ)

end A064017

/-! ## A064017.P1457114385268100959

`A025192(n)+A027471(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064017

/-- `A025192(n)+A027471(n+1)` -/
def P1457114385268100959.Spec : Prop :=
  ∀ n, P1457114385268100959.a n = A064017 (n + 1)

theorem P1457114385268100959.correct : P1457114385268100959.Spec := by
  intro n
  simp only [A064017, Nat.add_sub_cancel]

end A064017

/-! ## A064017.P922371314603038348

`∑{#}[n, A196389(C(n+1, 2)+#)*3^#]`
-/

namespace A064017.P922371314603038348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A196389 (Nat.choose (n + 1) 2 + k) * (3 ^ k : ℤ)

end

end A064017.P922371314603038348

namespace A064017

/-- `∑{#}[n, A196389(C(n+1, 2)+#)*3^#]` -/
def P922371314603038348.Spec : Prop :=
  ∀ n, P922371314603038348.a n = A064017 (n + 1)

end A064017

/-! ## A064017.P1183120182361510772

`ceil((n+2)*3^(n-1))`
-/

namespace A064017.P1183120182361510772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A064017.P1183120182361510772

namespace A064017

/-- `ceil((n+2)*3^(n-1))` -/
def P1183120182361510772.Spec : Prop :=
  ∀ n, P1183120182361510772.a n = A064017 (n + 1)

end A064017

/-! ## A064017.P14828803489956238830

`3*a(n-1)*ratio[n+1]` with `a(0)=1, a(1)=3`
-/

namespace A064017.P14828803489956238830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 * (a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ)))

end

end A064017.P14828803489956238830

namespace A064017

/-- `3*a(n-1)*ratio[n+1]` -/
def P14828803489956238830.Spec : Prop :=
  ∀ n, P14828803489956238830.a n = (A064017 (n + 1) : ℚ)

end A064017

/-! ## A064017.P1885515743435442675

`(floor(acot(n))+n+2)*3^(n-1)`
-/

namespace A064017.P1885515743435442675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊SequenceMachineLib.acot (n : ℝ)⌋ + (n + 2 : ℤ) : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A064017.P1885515743435442675

namespace A064017

/-- `(floor(acot(n))+n+2)*3^(n-1)` -/
def P1885515743435442675.Spec : Prop :=
  ∀ n, P1885515743435442675.a n = (A064017 (n + 1) : ℚ)

end A064017

/-! ## A064017.P6166218314475997335

`(3/(n+1)+3)*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A064017.P6166218314475997335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (3 / (n + 1 : ℚ) + 3) * a (n - 1)

end

end A064017.P6166218314475997335

namespace A064017

/-- `(3/(n+1)+3)*a(n-1)` -/
def P6166218314475997335.Spec : Prop :=
  ∀ n, P6166218314475997335.a n = (A064017 (n + 1) : ℚ)

end A064017

/-! ## A064017.P16258256226054419384

`round(3^(n-1)*C(n+2, n+1))`
-/

namespace A064017.P16258256226054419384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose (n + 2) (n + 1) : ℚ))

end

end A064017.P16258256226054419384

namespace A064017

/-- `round(3^(n-1)*C(n+2, n+1))` -/
def P16258256226054419384.Spec : Prop :=
  ∀ n, P16258256226054419384.a n = A064017 (n + 1)

end A064017

/-! ## A064017.P6975382545200495531

`(n+2)*A157532(n+1)^(n-1)`
-/

namespace A064017.P6975382545200495531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (A157532 (n + 1) : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A064017.P6975382545200495531

namespace A064017

/-- `(n+2)*A157532(n+1)^(n-1)` -/
def P6975382545200495531.Spec : Prop :=
  ∀ n, P6975382545200495531.a n = (A064017 (n + 1) : ℚ)

end A064017

/-! ## A064017.P3433475967368552568

`(n+2)*A158799(n+1)^(n-1)`
-/

namespace A064017.P3433475967368552568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (A158799 (n + 1) : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A064017.P3433475967368552568

namespace A064017

/-- `(n+2)*A158799(n+1)^(n-1)` -/
def P3433475967368552568.Spec : Prop :=
  ∀ n, P3433475967368552568.a n = (A064017 (n + 1) : ℚ)

end A064017

/-! ## A064017.P5167181300613017229

`(n+2)*A156752(n+2)^(n-1)`
-/

namespace A064017.P5167181300613017229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (A156752 (n + 2) : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A064017.P5167181300613017229

namespace A064017

/-- `(n+2)*A156752(n+2)^(n-1)` -/
def P5167181300613017229.Spec : Prop :=
  ∀ n, P5167181300613017229.a n = (A064017 (n + 1) : ℚ)

end A064017

/-! ## A064017.P14401295032652594379

`(A004277(n)+2-n)*3^(n-1)`
-/

namespace A064017.P14401295032652594379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 n + (2 - (n : ℤ)) : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A064017.P14401295032652594379

namespace A064017

/-- `(A004277(n)+2-n)*3^(n-1)` -/
def P14401295032652594379.Spec : Prop :=
  ∀ n, P14401295032652594379.a n = (A064017 (n + 1) : ℚ)

end A064017

/-! ## A064017.P6800688702979930909

`A027471(n+1)+A025192(n)`
-/

namespace A064017.P6800688702979930909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (n + 1) + A025192 n

end

end A064017.P6800688702979930909

namespace A064017

/-- `A027471(n+1)+A025192(n)` -/
def P6800688702979930909.Spec : Prop :=
  ∀ n, P6800688702979930909.a n = A064017 (n + 1)

theorem P6800688702979930909.correct : P6800688702979930909.Spec := by
  intro n
  simp only [A064017, Nat.add_sub_cancel, A064017.P6800688702979930909.a, A064017.P1457114385268100959.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A064017

/-! ## A064017.P5129811424925572699

`A027261(n)-A027471(n+1)`
-/

namespace A064017.P5129811424925572699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027261 n - A027471 (n + 1)

end

end A064017.P5129811424925572699

namespace A064017

/-- `A027261(n)-A027471(n+1)` -/
def P5129811424925572699.Spec : Prop :=
  ∀ n, P5129811424925572699.a n = A064017 (n + 1)

end A064017

/-! ## A064017.P961086621842926701

`A065475(n+1)*A133494(n)`
-/

namespace A064017.P961086621842926701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1) * A133494 n

end

end A064017.P961086621842926701

namespace A064017

/-- `A065475(n+1)*A133494(n)` -/
def P961086621842926701.Spec : Prop :=
  ∀ n, P961086621842926701.a n = A064017 (n + 1)

end A064017

/-! ## A064017.P4415865920911697462

`A006234(n+3)-A140429(n)`
-/

namespace A064017.P4415865920911697462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006234 (n + 3) - A140429 n

end

end A064017.P4415865920911697462

namespace A064017

/-- `A006234(n+3)-A140429(n)` -/
def P4415865920911697462.Spec : Prop :=
  ∀ n, P4415865920911697462.a n = A064017 (n + 1)

end A064017

/-! ## A064017.P3559249773715445052

`(A027261(n)+A025192(n))/2`
-/

namespace A064017.P3559249773715445052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027261 n + A025192 n : ℚ) / 2

end

end A064017.P3559249773715445052

namespace A064017

/-- `(A027261(n)+A025192(n))/2` -/
def P3559249773715445052.Spec : Prop :=
  ∀ n, P3559249773715445052.a n = (A064017 (n + 1) : ℚ)

end A064017

/-! ## A064017.P1307831769664700949

`A025192(n)+n*A133494(n)`
-/

namespace A064017.P1307831769664700949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n + (n : ℤ) * A133494 n

end

end A064017.P1307831769664700949

namespace A064017

/-- `A025192(n)+n*A133494(n)` -/
def P1307831769664700949.Spec : Prop :=
  ∀ n, P1307831769664700949.a n = A064017 (n + 1)

end A064017

/-!
# A064018: a(n) = A002088(10^n) = Sum_{k <= 10^n} phi(k), sum of the Euler totients phi = A000010.

The programs for A064018, the canonical program `A064018.P11561033386454225953` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064018 has offset 0).

The definition of A064018 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002088(10^n)` (program `A064018.P11561033386454225953`, by `A064018.P11561033386454225953.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064018.P11561033386454225953

`A002088(10^n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A064018

/-- `A002088(10^n)` -/
def P11561033386454225953.Spec : Prop :=
  ∀ n, P11561033386454225953.a n = A064018 n

theorem P11561033386454225953.correct : P11561033386454225953.Spec := by
  intro n
  simp only [A064018]

end A064018

/-! ## A064018.P8690272906271458309

`ceil(A342586(n)/2)`
-/

namespace A064018.P8690272906271458309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A342586 n : ℚ) / 2⌉

end

end A064018.P8690272906271458309

namespace A064018

/-- `ceil(A342586(n)/2)` -/
def P8690272906271458309.Spec : Prop :=
  ∀ n, P8690272906271458309.a n = A064018 n

end A064018

/-! ## A064018.P839126514048612810

`A037156(n)-A064016(n)`
-/

namespace A064018.P839126514048612810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037156 n - A064016 n

end

end A064018.P839126514048612810

namespace A064018

/-- `A037156(n)-A064016(n)` -/
def P839126514048612810.Spec : Prop :=
  ∀ n, P839126514048612810.a n = A064018 n

end A064018

/-! ## A064018.P7151439031556988891

`A088404(A058331(n))-A064016(n)`
-/

namespace A064018.P7151439031556988891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088404 (A058331 n).toNat - A064016 n

end

end A064018.P7151439031556988891

namespace A064018

/-- `A088404(A058331(n))-A064016(n)` -/
def P7151439031556988891.Spec : Prop :=
  ∀ n, P7151439031556988891.a n = A064018 n

end A064018

/-! ## A064018.P16739467704790238370

`A088404(A001105(n)+1)-A064016(n)`
-/

namespace A064018.P16739467704790238370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088404 (A001105 n + 1).toNat - A064016 n

end

end A064018.P16739467704790238370

namespace A064018

/-- `A088404(A001105(n)+1)-A064016(n)` -/
def P16739467704790238370.Spec : Prop :=
  ∀ n, P16739467704790238370.a n = A064018 n

end A064018

/-!
# A064019: Numbers k such that sopf(k) = sopf(k^2 - 1), where sopf(k) = A008472(k).

The programs for A064019, there is no canonical definition to state claims against.
-/

/-! ## A064019.P16666648059710441365

`A314318(eq[A314323(n), A314393(n)])`
-/

namespace A064019.P16666648059710441365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314323 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A064019.P16666648059710441365

/-!
# A064020: Numbers k such that sf(k) = phi(k), where sf(k) = A013928(k).

The programs for A064020, there is no canonical definition to state claims against.
-/

/-! ## A064020.P12109570737945952724

`3*A184155(a(n-1))` with `a(0)=2, a(1)=3`
-/

namespace A064020.P12109570737945952724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  3 * A184155 (a (n - 1)).toNat

end

end A064020.P12109570737945952724

/-!
# A064021: Squares k^2 such that reverse(k)^2 = reverse(k^2), excluding squares of palindromes.

The programs for A064021, there is no canonical definition to state claims against.
-/

/-! ## A064021.P14753826233469709057

`A140212(n+1)²`
-/

namespace A064021.P14753826233469709057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140212 (n + 1) ^ 2

end

end A064021.P14753826233469709057

/-! ## A064021.P1291614933317273313

`A140212(2*(n+1)-(n+1))^2`
-/

namespace A064021.P1291614933317273313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140212 (2 * (n + 1) - (n + 1)) ^ 2

end

end A064021.P1291614933317273313

/-! ## A064021.P1092144137991758927

`record[A140212(A328396(n))²]`
-/

namespace A064021.P1092144137991758927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140212 (A328396 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064021.P1092144137991758927

/-! ## A064021.P14087069799738219862

`record[A140212(A328396(n))]*A140212(n+1)`
-/

namespace A064021.P14087069799738219862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140212 (A328396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A140212 (n + 1)

end

end A064021.P14087069799738219862

/-! ## A064021.P3619876894578169044

`A140212(A000027(n+1))*A140212(n+1)`
-/

namespace A064021.P3619876894578169044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140212 (A000027 (n + 1)).toNat * A140212 (n + 1)

end

end A064021.P3619876894578169044

/-! ## A064021.P17584880153129979457

`A140212(gcd(n+1, A000290(n+1)))*A140212(n+1)`
-/

namespace A064021.P17584880153129979457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140212 (Int.gcd (n + 1 : ℤ) (A000290 (n + 1))) * A140212 (n + 1)

end

end A064021.P17584880153129979457

/-! ## A064021.P13467537797251952793

`∩[A035123(n+1), A061909(n+1)]²`
-/

namespace A064021.P13467537797251952793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A064021.P13467537797251952793

/-! ## A064021.P6222116318555218822

`∩[A035123(n+1), A085305(n+1)]²`
-/

namespace A064021.P6222116318555218822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A064021.P6222116318555218822

/-! ## A064021.P18221294655155336115

`∩[A035090(n+1), A129967(n+1)]`
-/

namespace A064021.P18221294655155336115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064021.P18221294655155336115

/-! ## A064021.P9191945503559422141

`∩[A062917(n+1), A129967(n+1)]`
-/

namespace A064021.P9191945503559422141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064021.P9191945503559422141

/-! ## A064021.P11222518287408593956

`∩[A035123(n+1), A288040(n+1)]²`
-/

namespace A064021.P11222518287408593956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A064021.P11222518287408593956

/-!
# A064024: a(n) = minimum value of abs(2^n - 3^k).

The programs for A064024, there is no canonical definition to state claims against.
-/

/-! ## A064024.P8601821210268197155

`A081134(2^n)`
-/

namespace A064024.P8601821210268197155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081134 (2 ^ n)

end

end A064024.P8601821210268197155

/-! ## A064024.P8618098263828122731

`2^n-A006166(2^n)`
-/

namespace A064024.P8618098263828122731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A006166 (2 ^ n)

end

end A064024.P8618098263828122731

/-! ## A064024.P17226350334296659620

`2^(n+1)-A003605(2^n)`
-/

namespace A064024.P17226350334296659620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A003605 (2 ^ n)

end

end A064024.P17226350334296659620

/-! ## A064024.P16068030485901807976

`and(-1, A081134(A000079(n)))`
-/

namespace A064024.P16068030485901807976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A081134 (A000079 n).toNat)

end

end A064024.P16068030485901807976

/-! ## A064024.P12237208962071727213

`Δ[∑{d}[A131577(n), A081134(#)]]`
-/

namespace A064024.P12237208962071727213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A081134 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064024.P12237208962071727213

/-!
# A064026: Numbers k such that d(k) + d(k+1) + d(k+2) = 8, where d(k) = A001223.

The programs for A064026, there is no canonical definition to state claims against.
-/

/-! ## A064026.P12031717921584373198

`A000720(p?[A007529(n+1)-2])`
-/

namespace A064026.P12031717921584373198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A064026.P12031717921584373198

/-! ## A064026.P9559010993699741216

`A000720(A174839(A016813(n)))`
-/

namespace A064026.P9559010993699741216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A174839 (A016813 n).toNat).toNat

end

end A064026.P9559010993699741216

/-! ## A064026.P955506165915353134

`A000720(A174839(Δ[A130883(n)]))`
-/

namespace A064026.P955506165915353134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A174839 (f1 (n + 1) - f1 n).toNat).toNat

end

end A064026.P955506165915353134

/-! ## A064026.P8868225395251368995

`A000720(A174839(record[A009001(n)]))`
-/

namespace A064026.P8868225395251368995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A174839 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A064026.P8868225395251368995

/-! ## A064026.P14526698413314032763

`eq[A083551(n+1), A241535(n+1)]`
-/

namespace A064026.P14526698413314032763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241535 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064026.P14526698413314032763

/-!
# A064027: a(n) = (-1)^n*Sum_{d|n} (-1)^d*d^2.

The programs for A064027, the canonical program `A064027.P10918566590125183390` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064027 has offset 1).

The definition of A064027 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^(n+1)*∑{d}[n+1, (-1)^#*#²]` (program `A064027.P10918566590125183390`, by `A064027.P10918566590125183390.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064027.P10918566590125183390

`(-1)^(n+1)*∑{d}[n+1, (-1)^#*#²]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A064027

/-- `(-1)^(n+1)*∑{d}[n+1, (-1)^#*#²]` -/
def P10918566590125183390.Spec : Prop :=
  ∀ n, P10918566590125183390.a n = A064027 (n + 1)

theorem P10918566590125183390.correct : P10918566590125183390.Spec := by
  intro n
  simp only [A064027, Nat.add_sub_cancel]

end A064027

/-! ## A064027.P15469288149459066613

`(-1)^(n+1)*(A001157(n+1)-2*A050999(n+1))`
-/

namespace A064027.P15469288149459066613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * (A001157 (n + 1) - 2 * A050999 (n + 1))

end

end A064027.P15469288149459066613

namespace A064027

/-- `(-1)^(n+1)*(A001157(n+1)-2*A050999(n+1))` -/
def P15469288149459066613.Spec : Prop :=
  ∀ n, P15469288149459066613.a n = A064027 (n + 1)

end A064027

/-! ## A064027.P14915882503499502768

`abs(∑{d}[n+1, (-1)^(#-1)*#²])`
-/

namespace A064027.P14915882503499502768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), (-1 : ℚ) ^ ((d : ℤ) - 1 : ℤ) * (d ^ 2 : ℚ)|

end

end A064027.P14915882503499502768

namespace A064027

/-- `abs(∑{d}[n+1, (-1)^(#-1)*#²])` -/
def P14915882503499502768.Spec : Prop :=
  ∀ n, P14915882503499502768.a n = (A064027 (n + 1) : ℚ)

end A064027

/-! ## A064027.P4951441775367234607

`abs(A321543(1+n))`
-/

namespace A064027.P4951441775367234607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321543 (1 + n)|

end

end A064027.P4951441775367234607

namespace A064027

/-- `abs(A321543(1+n))` -/
def P4951441775367234607.Spec : Prop :=
  ∀ n, P4951441775367234607.a n = A064027 (n + 1)

end A064027

/-! ## A064027.P15556979289553361251

`A033999(n)*A321543(n+1)`
-/

namespace A064027.P15556979289553361251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A321543 (n + 1)

end

end A064027.P15556979289553361251

namespace A064027

/-- `A033999(n)*A321543(n+1)` -/
def P15556979289553361251.Spec : Prop :=
  ∀ n, P15556979289553361251.a n = A064027 (n + 1)

end A064027

/-! ## A064027.P17498219618582552337

`gcd(A000038(n), A321543(n+1))`
-/

namespace A064027.P17498219618582552337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A321543 (n + 1))

end

end A064027.P17498219618582552337

namespace A064027

/-- `gcd(A000038(n), A321543(n+1))` -/
def P17498219618582552337.Spec : Prop :=
  ∀ n, (P17498219618582552337.a n : ℤ) = A064027 (n + 1)

end A064027

/-! ## A064027.P4768747755343612904

`lcm(A014709(n), A321543(n+1))`
-/

namespace A064027.P4768747755343612904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014709 n) (A321543 (n + 1))

end

end A064027.P4768747755343612904

namespace A064027

/-- `lcm(A014709(n), A321543(n+1))` -/
def P4768747755343612904.Spec : Prop :=
  ∀ n, (P4768747755343612904.a n : ℤ) = A064027 (n + 1)

end A064027

/-! ## A064027.P11259258058536768787

`abs(2*A050999(n+1)-A001157(n+1))`
-/

namespace A064027.P11259258058536768787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A050999 (n + 1) - A001157 (n + 1)|

end

end A064027.P11259258058536768787

namespace A064027

/-- `abs(2*A050999(n+1)-A001157(n+1))` -/
def P11259258058536768787.Spec : Prop :=
  ∀ n, P11259258058536768787.a n = A064027 (n + 1)

end A064027

/-! ## A064027.P4384426955007043088

`lcm(-A321543(n+1), ∑{d}[A166466(n+1)/3, #²])`
-/

namespace A064027.P4384426955007043088
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166466 (n + 1) : ℚ) / 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A321543 (n + 1)) ((∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d ^ 2 : ℕ) : ℤ)

end

end A064027.P4384426955007043088

namespace A064027

/-- `lcm(-A321543(n+1), ∑{d}[A166466(n+1)/3, #²])` -/
def P4384426955007043088.Spec : Prop :=
  ∀ n, (P4384426955007043088.a n : ℤ) = A064027 (n + 1)

end A064027

/-! ## A064027.P8156174750869036822

`A001157(n+1)+A078306(n+1)-A328667(n+1)`
-/

namespace A064027.P8156174750869036822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) + (A078306 (n + 1) - A328667 (n + 1))

end

end A064027.P8156174750869036822

namespace A064027

/-- `A001157(n+1)+A078306(n+1)-A328667(n+1)` -/
def P8156174750869036822.Spec : Prop :=
  ∀ n, P8156174750869036822.a n = A064027 (n + 1)

end A064027

/-! ## A064027.P14549761654670485691

`A002129(n+1)/A113184(n+1)*A321543(n+1)`
-/

namespace A064027.P14549761654670485691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002129 (n + 1) : ℚ) / (A113184 (n + 1) : ℚ) * (A321543 (n + 1) : ℚ)

end

end A064027.P14549761654670485691

namespace A064027

/-- `A002129(n+1)/A113184(n+1)*A321543(n+1)` -/
def P14549761654670485691.Spec : Prop :=
  ∀ n, P14549761654670485691.a n = (A064027 (n + 1) : ℚ)

end A064027

/-! ## A064027.P11862199610305503526

`A008457(n+1)/A138503(n+1)*A321543(n+1)`
-/

namespace A064027.P11862199610305503526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008457 (n + 1) : ℚ) / (A138503 (n + 1) : ℚ) * (A321543 (n + 1) : ℚ)

end

end A064027.P11862199610305503526

namespace A064027

/-- `A008457(n+1)/A138503(n+1)*A321543(n+1)` -/
def P11862199610305503526.Spec : Prop :=
  ∀ n, P11862199610305503526.a n = (A064027 (n + 1) : ℚ)

end A064027

/-! ## A064027.P11832222259949778823

`∑{d}[n+1, #*A283971(#)]`
-/

namespace A064027.P11832222259949778823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A283971 d

end

end A064027.P11832222259949778823

namespace A064027

/-- `∑{d}[n+1, #*A283971(#)]` -/
def P11832222259949778823.Spec : Prop :=
  ∀ n, P11832222259949778823.a n = A064027 (n + 1)

end A064027

/-! ## A064027.P8259796263978068692

`A321543(n+1)/A224364(n)*A281683(n)`
-/

namespace A064027.P8259796263978068692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321543 (n + 1) : ℚ) / (A224364 n : ℚ) * (A281683 n : ℚ)

end

end A064027.P8259796263978068692

namespace A064027

/-- `A321543(n+1)/A224364(n)*A281683(n)` -/
def P8259796263978068692.Spec : Prop :=
  ∀ n, P8259796263978068692.a n = (A064027 (n + 1) : ℚ)

end A064027

/-! ## A064027.P10013092736499933414

`∑{d}[A321543(n+1), A000010(#)]`
-/

namespace A064027.P10013092736499933414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A064027.P10013092736499933414

namespace A064027

/-- `∑{d}[A321543(n+1), A000010(#)]` -/
def P10013092736499933414.Spec : Prop :=
  ∀ n, P10013092736499933414.a n = A064027 (n + 1)

end A064027

/-! ## A064027.P75532459447076542

`abs(A344300((n+1)²))`
-/

namespace A064027.P75532459447076542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A344300 ((n + 1) ^ 2)|

end

end A064027.P75532459447076542

namespace A064027

/-- `abs(A344300((n+1)²))` -/
def P75532459447076542.Spec : Prop :=
  ∀ n, P75532459447076542.a n = A064027 (n + 1)

end A064027

/-!
# A064028: Sum of the unitary divisors of n!.

The programs for A064028, the canonical program `A064028.P1061499819609687592` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064028 has offset 1).

The definition of A064028 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A064028.P3150107841530177039

`A034448((n+1)!)`
-/

namespace A064028.P3150107841530177039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (Nat.factorial (n + 1))

end

end A064028.P3150107841530177039

namespace A064028

/-- `A034448((n+1)!)` -/
def P3150107841530177039.Spec : Prop :=
  ∀ n, P3150107841530177039.a n = A064028 (n + 1)

end A064028

/-! ## A064028.P1061499819609687592

`A034448(A000142(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A064028

/-- `A034448(A000142(n+1))` -/
def P1061499819609687592.Spec : Prop :=
  ∀ n, P1061499819609687592.a n = A064028 (n + 1)

theorem P1061499819609687592.correct : P1061499819609687592.Spec := by
  intro n
  simp only [A064028, Nat.add_sub_cancel]

end A064028

/-! ## A064028.P17977146759902260240

`A062569(n+1)-A064138(n+1)`
-/

namespace A064028.P17977146759902260240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062569 (n + 1) - A064138 (n + 1)

end

end A064028.P17977146759902260240

namespace A064028

/-- `A062569(n+1)-A064138(n+1)` -/
def P17977146759902260240.Spec : Prop :=
  ∀ n, P17977146759902260240.a n = A064028 (n + 1)

end A064028

/-! ## A064028.P18403526510004905681

`A034460((n+1)!)+(n+1)!`
-/

namespace A064028.P18403526510004905681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (Nat.factorial (n + 1)) + (Nat.factorial (n + 1) : ℤ)

end

end A064028.P18403526510004905681

namespace A064028

/-- `A034460((n+1)!)+(n+1)!` -/
def P18403526510004905681.Spec : Prop :=
  ∀ n, P18403526510004905681.a n = A064028 (n + 1)

end A064028

/-!
# A064030: Product of unitary divisors of n!.

The programs for A064030, the canonical program `A064030.P13053883513226172745` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064030 has offset 1).

The definition of A064030 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064030.P13053883513226172745

`(n+1)!^(A034444((n+1)!)/2)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A064030

/-- `(n+1)!^(A034444((n+1)!)/2)` -/
def P13053883513226172745.Spec : Prop :=
  ∀ n, P13053883513226172745.a n = (A064030 (n + 1) : ℝ)

end A064030

/-! ## A064030.P7810413616698654881

`∑[∑[char[8*n]]]!^2^floor(n/2)`
-/

namespace A064030.P7810413616698654881
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ) ^ ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) : ℝ)

end

end A064030.P7810413616698654881

namespace A064030

/-- `∑[∑[char[8*n]]]!^2^floor(n/2)` -/
def P7810413616698654881.Spec : Prop :=
  ∀ n, P7810413616698654881.a n = (A064030 (n + 1) : ℝ)

end A064030

/-! ## A064030.P13941257946952103790

`A061537((n+1)!)`
-/

namespace A064030.P13941257946952103790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061537 (Nat.factorial (n + 1))

end

end A064030.P13941257946952103790

namespace A064030

/-- `A061537((n+1)!)` -/
def P13941257946952103790.Spec : Prop :=
  ∀ n, P13941257946952103790.a n = A064030 (n + 1)

end A064030

/-!
# A064031: Product of non-unitary divisors of n!.

The programs for A064031, the canonical program `A064031.P6654393610759162702` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064031 has offset 1).

The definition of A064031 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064031.P6654393610759162702

`A061538((n+1)!)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A064031

/-- `A061538((n+1)!)` -/
def P6654393610759162702.Spec : Prop :=
  ∀ n, P6654393610759162702.a n = A064031 (n + 1)

theorem P6654393610759162702.correct : P6654393610759162702.Spec := by
  intro n
  simp only [A064031, Nat.add_sub_cancel]

end A064031

/-!
# A064032: Product of unitary divisors of binomial(n, floor(n/2)).

The programs for A064032, the canonical program `A064032.P2469251830036419908` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064032 has offset 1).

The definition of A064032 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064032.P2469251830036419908

`A061537(A001405(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A064032

/-- `A061537(A001405(n+1))` -/
def P2469251830036419908.Spec : Prop :=
  ∀ n, P2469251830036419908.a n = A064032 (n + 1)

theorem P2469251830036419908.correct : P2469251830036419908.Spec := by
  intro n
  simp only [A064032, Nat.add_sub_cancel]

end A064032

/-! ## A064032.P5176035826717049719

`A061537(record[A046899(n)])`
-/

namespace A064032.P5176035826717049719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061537 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064032.P5176035826717049719

namespace A064032

/-- `A061537(record[A046899(n)])` -/
def P5176035826717049719.Spec : Prop :=
  ∀ n, P5176035826717049719.a n = A064032 (n + 1)

end A064032

/-! ## A064032.P1120835312308230207

`A061537(record[A061554(n)])`
-/

namespace A064032.P1120835312308230207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061537 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064032.P1120835312308230207

namespace A064032

/-- `A061537(record[A061554(n)])` -/
def P1120835312308230207.Spec : Prop :=
  ∀ n, P1120835312308230207.a n = A064032 (n + 1)

end A064032

/-! ## A064032.P10024278135030363365

`A061537(A061554(∑[n+1]))`
-/

namespace A064032.P10024278135030363365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061537 (A061554 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A064032.P10024278135030363365

namespace A064032

/-- `A061537(A061554(∑[n+1]))` -/
def P10024278135030363365.Spec : Prop :=
  ∀ n, P10024278135030363365.a n = A064032 (n + 1)

end A064032

/-! ## A064032.P5088798293283159051

`A061537(A014495(n+1)+1)`
-/

namespace A064032.P5088798293283159051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061537 (A014495 (n + 1) + 1).toNat

end

end A064032.P5088798293283159051

namespace A064032

/-- `A061537(A014495(n+1)+1)` -/
def P5088798293283159051.Spec : Prop :=
  ∀ n, P5088798293283159051.a n = A064032 (n + 1)

theorem P5088798293283159051.correct : P5088798293283159051.Spec := by
  intro n
  simp only [A064032, Nat.add_sub_cancel, A064032.P5088798293283159051.a, A064032.P2469251830036419908.a, A001405, A001405.P5205018418992951678.a, A014495, A014495.P8648755420632744383.a, A061537, A061537.P7218639686472403361.a, A034444, A034444.P6574915864346323298.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A064032

/-!
# A064033: Product of non-unitary divisors of binomial(n, floor(n/2)) or a(n) = 1 if all divisors are unitary. See A046098.

The programs for A064033, the canonical program `A064033.P4449831178947753500` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064033 has offset 1).

The definition of A064033 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064033.P4449831178947753500

`A061538(A001405(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A064033

/-- `A061538(A001405(n+1))` -/
def P4449831178947753500.Spec : Prop :=
  ∀ n, P4449831178947753500.a n = A064033 (n + 1)

theorem P4449831178947753500.correct : P4449831178947753500.Spec := by
  intro n
  simp only [A064033, Nat.add_sub_cancel]

end A064033

/-! ## A064033.P9113508937852788817

`sqrt(A001405(n+1))^A048243(n+1)`
-/

namespace A064033.P9113508937852788817
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001405 (n + 1) : ℝ) ^ (A048243 (n + 1) : ℤ)

end

end A064033.P9113508937852788817

namespace A064033

/-- `sqrt(A001405(n+1))^A048243(n+1)` -/
def P9113508937852788817.Spec : Prop :=
  ∀ n, P9113508937852788817.a n = (A064033 (n + 1) : ℝ)

end A064033

/-! ## A064033.P14771248165503863622

`A210736(n+2)^A110654(A048243(n+1))`
-/

namespace A064033.P14771248165503863622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210736 (n + 2) : ℚ) ^ (A110654 (A048243 (n + 1)).toNat : ℤ)

end

end A064033.P14771248165503863622

namespace A064033

/-- `A210736(n+2)^A110654(A048243(n+1))` -/
def P14771248165503863622.Spec : Prop :=
  ∀ n, P14771248165503863622.a n = (A064033 (n + 1) : ℚ)

end A064033

/-! ## A064033.P10422035887758303188

`A061538(record[A061554(n)])`
-/

namespace A064033.P10422035887758303188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061538 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064033.P10422035887758303188

namespace A064033

/-- `A061538(record[A061554(n)])` -/
def P10422035887758303188.Spec : Prop :=
  ∀ n, P10422035887758303188.a n = A064033 (n + 1)

end A064033

/-! ## A064033.P6963467561670410764

`A061538(C(n+1, A065033(n)))`
-/

namespace A064033.P6963467561670410764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061538 (Nat.choose (n + 1) (A065033 n).toNat)

end

end A064033.P6963467561670410764

namespace A064033

/-- `A061538(C(n+1, A065033(n)))` -/
def P6963467561670410764.Spec : Prop :=
  ∀ n, P6963467561670410764.a n = A064033 (n + 1)

end A064033

/-!
# A064034: 2-dimensional table T(i, j) defined for any integers i and j, read by antidiagonals in the southeast quadrant. T(i, j) gives the "Fibonacci depth" of (i, j): form the Fibonacci sequence starting with i, j: w(0) = i, w(1) = j, w(n) = w(n-1) + w(n-2). It can be shown that for all but finitely many n, the w(n) have the same sign, i.e., are all positive, all negative or all zero. T(i, j), is the smallest number of iterations required to find out which of these cases holds.

The programs for A064034, there is no canonical definition to state claims against.
-/

/-! ## A064034.P14279068069361283681

`A065120(lt[A115570(3*n+2), 2])`
-/

namespace A064034.P14279068069361283681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115570 (3 * n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A064034.P14279068069361283681

/-! ## A064034.P16693008725763362243

`A274583(A269946(n))%A327498(n+1)`
-/

namespace A064034.P16693008725763362243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274583 (A269946 n).toNat) (A327498 (n + 1))

end

end A064034.P16693008725763362243

/-! ## A064034.P14858960510283906273

`A065120(lt[A115337(2*n+1), A218357(n+3)])`
-/

namespace A064034.P14858960510283906273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115337 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218357 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A064034.P14858960510283906273

/-! ## A064034.P3164765690188715503

`A342718(∑[A318730(n+1)])`
-/

namespace A064034.P3164765690188715503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342718 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A064034.P3164765690188715503

/-! ## A064034.P17372840243072507272

`A061393(A309673(n+1))-char[A274427(n+1)-1]`
-/

namespace A064034.P17372840243072507272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274427 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 (A309673 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A064034.P17372840243072507272

/-!
# A064036: Number of walks of length n on cubic lattice, starting at origin, staying in first (nonnegative) octant.

The programs for A064036, there is no canonical definition to state claims against.
-/

/-! ## A064036.P16573826221359974073

`A064044(A167614(n+2))`
-/

namespace A064036.P16573826221359974073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064044 (A167614 (n + 2)).toNat

end

end A064036.P16573826221359974073

/-! ## A064036.P1402439040700691039

`A064044(A052905(n)+8)`
-/

namespace A064036.P1402439040700691039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064044 (A052905 n + 8).toNat

end

end A064036.P1402439040700691039

/-! ## A064036.P2844655348391240811

`record[A064044(A000096(n)+4)]`
-/

namespace A064036.P2844655348391240811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064044 (A000096 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064036.P2844655348391240811

/-! ## A064036.P285783787046770416

`A064044(A000096(n+2)+4)`
-/

namespace A064036.P285783787046770416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064044 (A000096 (n + 2) + 4).toNat

end

end A064036.P285783787046770416

/-! ## A064036.P16424594898335945274

`A064044(A055998(n+1)+6)`
-/

namespace A064036.P16424594898335945274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064044 (A055998 (n + 1) + 6).toNat

end

end A064036.P16424594898335945274

/-! ## A064036.P6443878143942382899

`record[A064044(∑[A233583(n+1)])]`
-/

namespace A064036.P6443878143942382899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064044 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064036.P6443878143942382899

/-! ## A064036.P17347681459370449174

`A064044(A167499(n+1)+n+1)`
-/

namespace A064036.P17347681459370449174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064044 (A167499 (n + 1) + (n + 1 : ℤ)).toNat

end

end A064036.P17347681459370449174

/-!
# A064037: Number of walks of length 2n on cubic lattice, starting and finishing at origin and staying in first (nonnegative) octant.

The programs for A064037, there is no canonical definition to state claims against.
-/

/-! ## A064037.P8451512056349673130

`A000108(n)*A103370(n+1)`
-/

namespace A064037.P8451512056349673130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A103370 (n + 1)

end

end A064037.P8451512056349673130

/-! ## A064037.P4611980404512945312

`sqrt(A001246(n))*A103370(n+1)`
-/

namespace A064037.P4611980404512945312
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001246 n : ℝ) * (A103370 (n + 1) : ℝ)

end

end A064037.P4611980404512945312

/-! ## A064037.P6714205038201749091

`A064045(A167614(2+n))`
-/

namespace A064037.P6714205038201749091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064045 (A167614 (2 + n)).toNat

end

end A064037.P6714205038201749091

/-! ## A064037.P9760723052974302007

`A064045(A052905(n)+8)`
-/

namespace A064037.P9760723052974302007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064045 (A052905 n + 8).toNat

end

end A064037.P9760723052974302007

/-! ## A064037.P7713864774054840626

`A064045(A055999(n)+9)`
-/

namespace A064037.P7713864774054840626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064045 (A055999 n + 9).toNat

end

end A064037.P7713864774054840626

/-! ## A064037.P15464305925165156592

`A064045(eq[3, A002262(n)])`
-/

namespace A064037.P15464305925165156592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064037.P15464305925165156592

/-!
# A064038: Numerator of average number of swaps needed to bubble sort a string of n distinct letters.

The programs for A064038, the canonical program `A064038.P15280687467531965894` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064038 has offset 1).

The definition of A064038 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064038.P1100207114403325424

`ogf((x+4x^4+x^7)/(1-3x+6x^2-10x^3+12x^4-12x^5+10x^6-6x^7+3x^8-x^9))`
-/

namespace A064038.P1100207114403325424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 0, 4, 0, 0, 1] [1, -3, 6, -10, 12, -12, 10, -6, 3, -1] n

end

end A064038.P1100207114403325424

namespace A064038

/-- `ogf((x+4x^4+x^7)/(1-3x+6x^2-10x^3+12x^4-12x^5+10x^6-6x^7+3x^8-x^9))` -/
def P1100207114403325424.Spec : Prop :=
  ∀ n, P1100207114403325424.a n = A064038 (n + 1)

end A064038

/-! ## A064038.P618632020790401097

`A061041(8*n+4)`
-/

namespace A064038.P618632020790401097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061041 (8 * n + 4)

end

end A064038.P618632020790401097

namespace A064038

/-- `A061041(8*n+4)` -/
def P618632020790401097.Spec : Prop :=
  ∀ n, P618632020790401097.a n = A064038 (n + 1)

end A064038

/-! ## A064038.P15280687467531965894

`A026741(A000217(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A064038

/-- `A026741(A000217(n))` -/
def P15280687467531965894.Spec : Prop :=
  ∀ n, P15280687467531965894.a n = A064038 (n + 1)

theorem P15280687467531965894.correct : P15280687467531965894.Spec := by
  intro n
  simp only [A064038, Nat.add_sub_cancel]

end A064038

/-! ## A064038.P502417418967647121

`lcm(2, ∑[n])/2`
-/

namespace A064038.P502417418967647121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A064038.P502417418967647121

namespace A064038

/-- `lcm(2, ∑[n])/2` -/
def P502417418967647121.Spec : Prop :=
  ∀ n, P502417418967647121.a n = (A064038 (n + 1) : ℚ)

end A064038

/-! ## A064038.P7459562849874552365

`∑[n]/gcd(2, ∑[n])`
-/

namespace A064038.P7459562849874552365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

end

end A064038.P7459562849874552365

namespace A064038

/-- `∑[n]/gcd(2, ∑[n])` -/
def P7459562849874552365.Spec : Prop :=
  ∀ n, P7459562849874552365.a n = (A064038 (n + 1) : ℚ)

end A064038

/-! ## A064038.P9304395216922058381

`gcd(∑[n]², C(∑[n], 2))`
-/

namespace A064038.P9304395216922058381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2)

end

end A064038.P9304395216922058381

namespace A064038

/-- `gcd(∑[n]², C(∑[n], 2))` -/
def P9304395216922058381.Spec : Prop :=
  ∀ n, (P9304395216922058381.a n : ℤ) = A064038 (n + 1)

end A064038

/-! ## A064038.P5517341961443216464

`floor(lcm(4, n²+n)/4)`
-/

namespace A064038.P5517341961443216464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm 4 (n ^ 2 + n) : ℚ) / 4⌋

end

end A064038.P5517341961443216464

namespace A064038

/-- `floor(lcm(4, n²+n)/4)` -/
def P5517341961443216464.Spec : Prop :=
  ∀ n, P5517341961443216464.a n = A064038 (n + 1)

end A064038

/-! ## A064038.P17870757660470082987

`∑[n]/and(2, n-1)!`
-/

namespace A064038.P17870757660470082987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.factorial (Int.land 2 ((n : ℤ) - 1)).toNat : ℚ)

end

end A064038.P17870757660470082987

namespace A064038

/-- `∑[n]/and(2, n-1)!` -/
def P17870757660470082987.Spec : Prop :=
  ∀ n, P17870757660470082987.a n = (A064038 (n + 1) : ℚ)

end A064038

/-! ## A064038.P5928675534485422022

`∑[n]/(2-∑[n]%2)`
-/

namespace A064038.P5928675534485422022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (2 - (((∑ j ∈ Finset.range (n + 1), f2 j) % 2 : ℕ) : ℤ) : ℚ)

end

end A064038.P5928675534485422022

namespace A064038

/-- `∑[n]/(2-∑[n]%2)` -/
def P5928675534485422022.Spec : Prop :=
  ∀ n, P5928675534485422022.a n = (A064038 (n + 1) : ℚ)

end A064038

/-! ## A064038.P13969751736983855805

`∑[n]/(2-and(1, ∑[n]))`
-/

namespace A064038.P13969751736983855805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (2 - (Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) : ℚ)

end

end A064038.P13969751736983855805

namespace A064038

/-- `∑[n]/(2-and(1, ∑[n]))` -/
def P13969751736983855805.Spec : Prop :=
  ∀ n, P13969751736983855805.a n = (A064038 (n + 1) : ℚ)

end A064038

/-! ## A064038.P14428661542015658920

`∑[n]/and(2, n+3)!!`
-/

namespace A064038.P14428661542015658920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.factorial (Nat.factorial (Nat.land 2 (n + 3))) : ℚ)

end

end A064038.P14428661542015658920

namespace A064038

/-- `∑[n]/and(2, n+3)!!` -/
def P14428661542015658920.Spec : Prop :=
  ∀ n, P14428661542015658920.a n = (A064038 (n + 1) : ℚ)

end A064038

/-! ## A064038.P11415137310258832347

`∑[2*n]/((-1)^∑[n]+3)`
-/

namespace A064038.P11415137310258832347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j) + 3 : ℚ)

end

end A064038.P11415137310258832347

namespace A064038

/-- `∑[2*n]/((-1)^∑[n]+3)` -/
def P11415137310258832347.Spec : Prop :=
  ∀ n, P11415137310258832347.a n = (A064038 (n + 1) : ℚ)

end A064038

/-! ## A064038.P8061793847605170049

`(n+1)*n/gcd(4, n²+n)`
-/

namespace A064038.P8061793847605170049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n : ℚ) / (Nat.gcd 4 (n ^ 2 + n) : ℚ))

end

end A064038.P8061793847605170049

namespace A064038

/-- `(n+1)*n/gcd(4, n²+n)` -/
def P8061793847605170049.Spec : Prop :=
  ∀ n, P8061793847605170049.a n = (A064038 (n + 1) : ℚ)

end A064038

/-! ## A064038.P17525924578363712145

`(n+1)*n/(and(2, n-1)+2)`
-/

namespace A064038.P17525924578363712145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n : ℚ) / (Int.land 2 ((n : ℤ) - 1) + 2 : ℚ))

end

end A064038.P17525924578363712145

namespace A064038

/-- `(n+1)*n/(and(2, n-1)+2)` -/
def P17525924578363712145.Spec : Prop :=
  ∀ n, P17525924578363712145.a n = (A064038 (n + 1) : ℚ)

end A064038

/-! ## A064038.P13147102933451432771

`gcd(∑[n+1]-(n+1), ∑[∑[∑[3*n]]])`
-/

namespace A064038.P13147102933451432771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A064038.P13147102933451432771

namespace A064038

/-- `gcd(∑[n+1]-(n+1), ∑[∑[∑[3*n]]])` -/
def P13147102933451432771.Spec : Prop :=
  ∀ n, (P13147102933451432771.a n : ℤ) = A064038 (n + 1)

end A064038

/-! ## A064038.P10588862462810003693

`∑[n/2]*A014695(n)`
-/

namespace A064038.P10588862462810003693
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A014695 n : ℚ)

end

end A064038.P10588862462810003693

namespace A064038

/-- `∑[n/2]*A014695(n)` -/
def P10588862462810003693.Spec : Prop :=
  ∀ n, P10588862462810003693.a n = (A064038 (n + 1) : ℚ)

end A064038

/-! ## A064038.P14218342993300951027

`A176126(n)+A014695(n)`
-/

namespace A064038.P14218342993300951027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176126 n + A014695 n

end

end A064038.P14218342993300951027

namespace A064038

/-- `A176126(n)+A014695(n)` -/
def P14218342993300951027.Spec : Prop :=
  ∀ n, P14218342993300951027.a n = A064038 (n + 1)

end A064038

/-! ## A064038.P10443076074376707009

`A330082(n)%A060798(n+1)`
-/

namespace A064038.P10443076074376707009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330082 n) (A060798 (n + 1))

end

end A064038.P10443076074376707009

namespace A064038

/-- `A330082(n)%A060798(n+1)` -/
def P10443076074376707009.Spec : Prop :=
  ∀ n, P10443076074376707009.a n = A064038 (n + 1)

end A064038

/-! ## A064038.P2737480294635866371

`sqrt(A181318(n+1)*A181318(n))`
-/

namespace A064038.P2737480294635866371
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A181318 (n + 1) * A181318 n : ℝ)

end

end A064038.P2737480294635866371

namespace A064038

/-- `sqrt(A181318(n+1)*A181318(n))` -/
def P2737480294635866371.Spec : Prop :=
  ∀ n, P2737480294635866371.a n = (A064038 (n + 1) : ℝ)

end A064038

/-! ## A064038.P16961005033652682756

`A160050(n+2)-A266491(n+1)`
-/

namespace A064038.P16961005033652682756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160050 (n + 2) - A266491 (n + 1)

end

end A064038.P16961005033652682756

namespace A064038

/-- `A160050(n+2)-A266491(n+1)` -/
def P16961005033652682756.Spec : Prop :=
  ∀ n, P16961005033652682756.a n = A064038 (n + 1)

end A064038

/-!
# A064039: Reversed inversion vectors for the permutations of A060117, presented as pseudo-decimal numbers.

The programs for A064039, there is no canonical definition to state claims against.
-/

/-! ## A064039.P10370635428760271401

`A007623(A060119(n))`
-/

namespace A064039.P10370635428760271401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A060119 n).toNat

end

end A064039.P10370635428760271401

/-! ## A064039.P7045716596968102458

`A007623(A056019(A060120(n)))`
-/

namespace A064039.P7045716596968102458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A056019 (A060120 n).toNat).toNat

end

end A064039.P7045716596968102458

/-! ## A064039.P15424895098011461652

`A007623(A060120(A060125(n)))`
-/

namespace A064039.P15424895098011461652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A060120 (A060125 n).toNat).toNat

end

end A064039.P15424895098011461652

/-! ## A064039.P9988705955868065937

`A049345(A060119(n))%A318125(n+2)`
-/

namespace A064039.P9988705955868065937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049345 (A060119 n).toNat) (A318125 (n + 2))

end

end A064039.P9988705955868065937

/-! ## A064039.P4297569732606476501

`A049345(A060119(n))%A000027(A022102(n))`
-/

namespace A064039.P4297569732606476501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049345 (A060119 n).toNat) (A000027 (A022102 n).toNat)

end

end A064039.P4297569732606476501

/-!
# A064040: Integers whose number of distinct prime divisors is prime.

The programs for A064040, the canonical program `A064040.P5428997455190443467` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064040 has offset 1).

The definition of A064040 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064040.P6027143219585817070

`comp[A036116(1+n)-1]+1`
-/

namespace A064040.P6027143219585817070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A064040.P6027143219585817070

namespace A064040

/-- `comp[A036116(1+n)-1]+1` -/
def P6027143219585817070.Spec : Prop :=
  ∀ n, (P6027143219585817070.a n : ℤ) = A064040 (n + 1)

end A064040

/-! ## A064040.P5428997455190443467

`lt[(a(A001221(n+1)-1)+1)%2, 1]+1` with `a(0)=4, a(1)=1, a(2)=7, a(3)=14, a(4)=7`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064040

/-- `lt[(a(A001221(n+1)-1)+1)%2, 1]+1` -/
def P5428997455190443467.Spec : Prop :=
  ∀ n, (P5428997455190443467.a n : ℤ) = A064040 (n + 1)

theorem P5428997455190443467.correct : P5428997455190443467.Spec := by
  intro n
  simp only [A064040, Nat.add_sub_cancel]

end A064040

/-! ## A064040.P7616054603385423954

`eq[1, A001222(A001222(A007947(n+2)))]+2`
-/

namespace A064040.P7616054603385423954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001222 (A007947 (n + 2)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A064040.P7616054603385423954

namespace A064040

/-- `eq[1, A001222(A001222(A007947(n+2)))]+2` -/
def P7616054603385423954.Spec : Prop :=
  ∀ n, (P7616054603385423954.a n : ℤ) = A064040 (n + 1)

end A064040

/-! ## A064040.P5698491166228964834

`eq[1, A244063(n+2)]+2`
-/

namespace A064040.P5698491166228964834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244063 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A064040.P5698491166228964834

namespace A064040

/-- `eq[1, A244063(n+2)]+2` -/
def P5698491166228964834.Spec : Prop :=
  ∀ n, (P5698491166228964834.a n : ℤ) = A064040 (n + 1)

end A064040

/-! ## A064040.P2489034602199335823

`eq[2, A036430(A007947(n+1))]+1`
-/

namespace A064040.P2489034602199335823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036430 (A007947 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064040.P2489034602199335823

namespace A064040

/-- `eq[2, A036430(A007947(n+1))]+1` -/
def P2489034602199335823.Spec : Prop :=
  ∀ n, (P2489034602199335823.a n : ℤ) = A064040 (n + 1)

end A064040

/-! ## A064040.P15125894805946545722

`lt[1, A071089(A007875(n+1))]+1`
-/

namespace A064040.P15125894805946545722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071089 (A007875 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A064040.P15125894805946545722

namespace A064040

/-- `lt[1, A071089(A007875(n+1))]+1` -/
def P15125894805946545722.Spec : Prop :=
  ∀ n, (P15125894805946545722.a n : ℤ) = A064040 (n + 1)

end A064040

/-! ## A064040.P12679152159529062211

`lt[A107015(A007875(n+1)+1), 1]+1`
-/

namespace A064040.P12679152159529062211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107015 (A007875 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A064040.P12679152159529062211

namespace A064040

/-- `lt[A107015(A007875(n+1)+1), 1]+1` -/
def P12679152159529062211.Spec : Prop :=
  ∀ n, (P12679152159529062211.a n : ℤ) = A064040 (n + 1)

end A064040

/-! ## A064040.P7147506354312475764

`A168638(n+1)%A005567(n)`
-/

namespace A064040.P7147506354312475764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168638 (n + 1)) (A005567 n)

end

end A064040.P7147506354312475764

namespace A064040

/-- `A168638(n+1)%A005567(n)` -/
def P7147506354312475764.Spec : Prop :=
  ∀ n, P7147506354312475764.a n = A064040 (n + 1)

end A064040

/-! ## A064040.P7928829148695341015

`and(A107953(n), A168638(n+1))`
-/

namespace A064040.P7928829148695341015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107953 n) (A168638 (n + 1))

end

end A064040.P7928829148695341015

namespace A064040

/-- `and(A107953(n), A168638(n+1))` -/
def P7928829148695341015.Spec : Prop :=
  ∀ n, P7928829148695341015.a n = A064040 (n + 1)

end A064040

/-! ## A064040.P11122648903119052101

`A168638(n+1)%A001816(n)`
-/

namespace A064040.P11122648903119052101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168638 (n + 1)) (A001816 n)

end

end A064040.P11122648903119052101

namespace A064040

/-- `A168638(n+1)%A001816(n)` -/
def P11122648903119052101.Spec : Prop :=
  ∀ n, P11122648903119052101.a n = A064040 (n + 1)

end A064040

/-! ## A064040.P13961471082639183853

`and(A107954(n), A168638(n+1))`
-/

namespace A064040.P13961471082639183853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107954 n) (A168638 (n + 1))

end

end A064040.P13961471082639183853

namespace A064040

/-- `and(A107954(n), A168638(n+1))` -/
def P13961471082639183853.Spec : Prop :=
  ∀ n, P13961471082639183853.a n = A064040 (n + 1)

end A064040

/-! ## A064040.P17864250387242756224

`and(A107955(n), A168638(n+1))`
-/

namespace A064040.P17864250387242756224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107955 n) (A168638 (n + 1))

end

end A064040.P17864250387242756224

namespace A064040

/-- `and(A107955(n), A168638(n+1))` -/
def P17864250387242756224.Spec : Prop :=
  ∀ n, P17864250387242756224.a n = A064040 (n + 1)

end A064040

/-! ## A064040.P5234355988952487700

`and(A168638(n+1), A198694(n))`
-/

namespace A064040.P5234355988952487700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A168638 (n + 1)) (A198694 n)

end

end A064040.P5234355988952487700

namespace A064040

/-- `and(A168638(n+1), A198694(n))` -/
def P5234355988952487700.Spec : Prop :=
  ∀ n, P5234355988952487700.a n = A064040 (n + 1)

end A064040

/-!
# A064041: Number of divisors of A064040(n).

The programs for A064041, the canonical program `A064041.P16512304791907739243` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064041 has offset 1).

The definition of A064041 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064041.P13748497823909228815

`A000005(A064040(1+n))`
-/

namespace A064041.P13748497823909228815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A064040 (1 + n)).toNat

end

end A064041.P13748497823909228815

namespace A064041

/-- `A000005(A064040(1+n))` -/
def P13748497823909228815.Spec : Prop :=
  ∀ n, P13748497823909228815.a n = A064041 (n + 1)

end A064041

/-! ## A064041.P6404363384637044774

`∑{d}[A064040(n+1), 1-A008683(#)]`
-/

namespace A064041.P6404363384637044774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (1 - A008683 d)

end

end A064041.P6404363384637044774

namespace A064041

/-- `∑{d}[A064040(n+1), 1-A008683(#)]` -/
def P6404363384637044774.Spec : Prop :=
  ∀ n, P6404363384637044774.a n = A064041 (n + 1)

end A064041

/-! ## A064041.P16512304791907739243

`A000005(comp[A036116(n+1)-1]+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A064041

/-- `A000005(comp[A036116(n+1)-1]+1)` -/
def P16512304791907739243.Spec : Prop :=
  ∀ n, P16512304791907739243.a n = A064041 (n + 1)

theorem P16512304791907739243.correct : P16512304791907739243.Spec := by
  intro n
  simp only [A064041, Nat.add_sub_cancel]

end A064041

/-! ## A064041.P15992662473500768336

`A000005(eq[1, A244063(n+2)]+2)`
-/

namespace A064041.P15992662473500768336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244063 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A064041.P15992662473500768336

namespace A064041

/-- `A000005(eq[1, A244063(n+2)]+2)` -/
def P15992662473500768336.Spec : Prop :=
  ∀ n, P15992662473500768336.a n = A064041 (n + 1)

end A064041

/-! ## A064041.P986690666952297158

`∑{d}[A064040(n+1), A008836(#)²]`
-/

namespace A064041.P986690666952297158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008836 d ^ 2

end

end A064041.P986690666952297158

namespace A064041

/-- `∑{d}[A064040(n+1), A008836(#)²]` -/
def P986690666952297158.Spec : Prop :=
  ∀ n, P986690666952297158.a n = A064041 (n + 1)

end A064041

/-! ## A064041.P2588295523024109474

`∑{d}[A064040(n+1), and(1, A087680(#))]`
-/

namespace A064041.P2588295523024109474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.land 1 (A087680 d)

end

end A064041.P2588295523024109474

namespace A064041

/-- `∑{d}[A064040(n+1), and(1, A087680(#))]` -/
def P2588295523024109474.Spec : Prop :=
  ∀ n, P2588295523024109474.a n = A064041 (n + 1)

end A064041

/-! ## A064041.P11597372122831664159

`A000005(lt[3, A001221(n+1)^n]+1)`
-/

namespace A064041.P11597372122831664159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A064041.P11597372122831664159

namespace A064041

/-- `A000005(lt[3, A001221(n+1)^n]+1)` -/
def P11597372122831664159.Spec : Prop :=
  ∀ n, P11597372122831664159.a n = A064041 (n + 1)

end A064041

/-! ## A064041.P5352024550020922114

`A000005(A024619(n+1)%A056760(2*n+3))`
-/

namespace A064041.P5352024550020922114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.tmod (A024619 (n + 1)) (A056760 (2 * n + 3))).toNat

end

end A064041.P5352024550020922114

namespace A064041

/-- `A000005(A024619(n+1)%A056760(2*n+3))` -/
def P5352024550020922114.Spec : Prop :=
  ∀ n, P5352024550020922114.a n = A064041 (n + 1)

end A064041

/-! ## A064041.P5638694591661241297

`A000005(A024619(n+1))%A334900(n+1)`
-/

namespace A064041.P5638694591661241297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A024619 (n + 1)).toNat) (A334900 (n + 1))

end

end A064041.P5638694591661241297

namespace A064041

/-- `A000005(A024619(n+1))%A334900(n+1)` -/
def P5638694591661241297.Spec : Prop :=
  ∀ n, P5638694591661241297.a n = A064041 (n + 1)

end A064041

/-! ## A064041.P15788043219047043382

`A000005(A024619(n+1)%A250676(n+1))`
-/

namespace A064041.P15788043219047043382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.tmod (A024619 (n + 1)) (A250676 (n + 1))).toNat

end

end A064041.P15788043219047043382

namespace A064041

/-- `A000005(A024619(n+1)%A250676(n+1))` -/
def P15788043219047043382.Spec : Prop :=
  ∀ n, P15788043219047043382.a n = A064041 (n + 1)

end A064041

/-!
# A064043: Number of length 3 walks on an n-dimensional hypercubic lattice starting at the origin and staying in the nonnegative part.

The programs for A064043, the canonical program `A064043.P3578565822102951633` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064043 has offset 0).

The definition of A064043 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064043.P3578565822102951633

`n*(n²+3*n-1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A064043

/-- `n*(n²+3*n-1)` -/
def P3578565822102951633.Spec : Prop :=
  ∀ n, P3578565822102951633.a n = A064043 n

theorem P3578565822102951633.correct : P3578565822102951633.Spec := by
  intro n
  simp only [A064043]

end A064043

/-! ## A064043.P13903536294219475296

`ogf((3x+6x^2-3x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A064043.P13903536294219475296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 6, -3] [1, -4, 6, -4, 1] n

end

end A064043.P13903536294219475296

namespace A064043

/-- `ogf((3x+6x^2-3x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P13903536294219475296.Spec : Prop :=
  ∀ n, P13903536294219475296.a n = A064043 n

end A064043

/-! ## A064043.P910931578755013408

`lcm(n, 1-n*(n+3))`
-/

namespace A064043.P910931578755013408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (1 - (n * (n + 3) : ℤ))

end

end A064043.P910931578755013408

namespace A064043

/-- `lcm(n, 1-n*(n+3))` -/
def P910931578755013408.Spec : Prop :=
  ∀ n, (P910931578755013408.a n : ℤ) = A064043 n

end A064043

/-! ## A064043.P12479823599642427615

`∑[∑[3*n*ceil(atan(n))]]`
-/

namespace A064043.P12479823599642427615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) * ⌈Real.arctan (n : ℝ)⌉)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064043.P12479823599642427615

namespace A064043

/-- `∑[∑[3*n*ceil(atan(n))]]` -/
def P12479823599642427615.Spec : Prop :=
  ∀ n, P12479823599642427615.a n = A064043 n

end A064043

/-! ## A064043.P6650717591917626141

`Δ[∑[n]²-C(2*n, 2)]`
-/

namespace A064043.P6650717591917626141
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ) - (Nat.choose (2 * n) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064043.P6650717591917626141

namespace A064043

/-- `Δ[∑[n]²-C(2*n, 2)]` -/
def P6650717591917626141.Spec : Prop :=
  ∀ n, P6650717591917626141.a n = A064043 n

end A064043

/-! ## A064043.P8148168425033701

`∑[∑[a(n-1)+6]]` with `a(0)=0, a(1)=3, a(2)=12`
-/

namespace A064043.P8148168425033701
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 12] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064043.P8148168425033701

namespace A064043

/-- `∑[∑[a(n-1)+6]]` -/
def P8148168425033701.Spec : Prop :=
  ∀ n, (P8148168425033701.a n : ℤ) = A064043 n

end A064043

/-! ## A064043.P9135666413648188088

`∑[∑[ogf((3x+6x^2-3x^3)/(1-2x+x^2))]]`
-/

namespace A064043.P9135666413648188088
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 6, -3] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064043.P9135666413648188088

namespace A064043

/-- `∑[∑[ogf((3x+6x^2-3x^3)/(1-2x+x^2))]]` -/
def P9135666413648188088.Spec : Prop :=
  ∀ n, P9135666413648188088.a n = A064043 n

end A064043

/-! ## A064043.P11147106374658358458

`∑[∑[n*(3%∑[n+1]+3)]]`
-/

namespace A064043.P11147106374658358458
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (3 % (∑ j ∈ Finset.range (n + 1), f3 j) + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064043.P11147106374658358458

namespace A064043

/-- `∑[∑[n*(3%∑[n+1]+3)]]` -/
def P11147106374658358458.Spec : Prop :=
  ∀ n, (P11147106374658358458.a n : ℤ) = A064043 n

end A064043

/-! ## A064043.P11203827296588421039

`2*C(n*(n+3), 2)/(n+3)`
-/

namespace A064043.P11203827296588421039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (n * (n + 3)) 2 : ℚ) / (n + 3 : ℚ)

end

end A064043.P11203827296588421039

namespace A064043

/-- `2*C(n*(n+3), 2)/(n+3)` -/
def P11203827296588421039.Spec : Prop :=
  ∀ n, P11203827296588421039.a n = (A064043 n : ℚ)

theorem P11203827296588421039.correct : P11203827296588421039.Spec := by
  intro n
  simp only [A064043, Nat.add_sub_cancel, A064043.P11203827296588421039.a, A064043.P3578565822102951633.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A064043

/-! ## A064043.P4544104565818441174

`∑[A211441(n)]`
-/

namespace A064043.P4544104565818441174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211441 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064043.P4544104565818441174

namespace A064043

/-- `∑[A211441(n)]` -/
def P4544104565818441174.Spec : Prop :=
  ∀ n, P4544104565818441174.a n = A064043 n

end A064043

/-! ## A064043.P3891174598555052924

`A366151(n)-n`
-/

namespace A064043.P3891174598555052924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366151 n - (n : ℤ)

end

end A064043.P3891174598555052924

namespace A064043

/-- `A366151(n)-n` -/
def P3891174598555052924.Spec : Prop :=
  ∀ n, P3891174598555052924.a n = A064043 n

theorem P3891174598555052924.correct : P3891174598555052924.Spec := by
  intro n
  simp only [A064043, Nat.add_sub_cancel, A064043.P3891174598555052924.a, A064043.P3578565822102951633.a, A366151, A366151.P1265820382094336323.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064043

/-! ## A064043.P9121656761703396622

`2*A256857(n)+n`
-/

namespace A064043.P9121656761703396622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256857 n + (n : ℤ)

end

end A064043.P9121656761703396622

namespace A064043

/-- `2*A256857(n)+n` -/
def P9121656761703396622.Spec : Prop :=
  ∀ n, P9121656761703396622.a n = A064043 n

end A064043

/-! ## A064043.P2218391936096255632

`A049450(n)+n^3`
-/

namespace A064043.P2218391936096255632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049450 n + (n ^ 3 : ℤ)

end

end A064043.P2218391936096255632

namespace A064043

/-- `A049450(n)+n^3` -/
def P2218391936096255632.Spec : Prop :=
  ∀ n, P2218391936096255632.a n = A064043 n

theorem P2218391936096255632.correct : P2218391936096255632.Spec := by
  intro n
  simp only [A064043, Nat.add_sub_cancel, A064043.P2218391936096255632.a, A064043.P3578565822102951633.a, A049450, A049450.P1815257678583562472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064043

/-! ## A064043.P629679339361674521

`A068601(n+1)-4*n`
-/

namespace A064043.P629679339361674521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 1) - (4 * n : ℤ)

end

end A064043.P629679339361674521

namespace A064043

/-- `A068601(n+1)-4*n` -/
def P629679339361674521.Spec : Prop :=
  ∀ n, P629679339361674521.a n = A064043 n

theorem P629679339361674521.correct : P629679339361674521.Spec := by
  intro n
  simp only [A064043, Nat.add_sub_cancel, A064043.P629679339361674521.a, A064043.P3578565822102951633.a, A068601, A068601.P18163521696996894258.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064043

/-! ## A064043.P9072938417111829073

`(n+1)^3-A016813(n)`
-/

namespace A064043.P9072938417111829073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A016813 n

end

end A064043.P9072938417111829073

namespace A064043

/-- `(n+1)^3-A016813(n)` -/
def P9072938417111829073.Spec : Prop :=
  ∀ n, P9072938417111829073.a n = A064043 n

theorem P9072938417111829073.correct : P9072938417111829073.Spec := by
  intro n
  simp only [A064043, Nat.add_sub_cancel, A064043.P9072938417111829073.a, A064043.P3578565822102951633.a, A016813, A016813.P15626904835145642280.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064043

/-! ## A064043.P7795646717690674776

`A011379(n)+A000384(n)`
-/

namespace A064043.P7795646717690674776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 n + A000384 n

end

end A064043.P7795646717690674776

namespace A064043

/-- `A011379(n)+A000384(n)` -/
def P7795646717690674776.Spec : Prop :=
  ∀ n, P7795646717690674776.a n = A064043 n

theorem P7795646717690674776.correct : P7795646717690674776.Spec := by
  intro n
  simp only [A064043, Nat.add_sub_cancel, A064043.P7795646717690674776.a, A064043.P3578565822102951633.a, A000384, A000384.P5392390561999168282.a, A011379, A011379.P13170028565952122956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064043

/-! ## A064043.P5232501655586787054

`A034262(n)+A000567(n)`
-/

namespace A064043.P5232501655586787054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034262 n + A000567 n

end

end A064043.P5232501655586787054

namespace A064043

/-- `A034262(n)+A000567(n)` -/
def P5232501655586787054.Spec : Prop :=
  ∀ n, P5232501655586787054.a n = A064043 n

theorem P5232501655586787054.correct : P5232501655586787054.Spec := by
  intro n
  simp only [A064043, Nat.add_sub_cancel, A064043.P5232501655586787054.a, A064043.P3578565822102951633.a, A000567, A000567.P17850767079432249295.a, A034262, A034262.P1986901683698587680.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064043

/-! ## A064043.P4183069395436209010

`A045991(n)+A033991(n)`
-/

namespace A064043.P4183069395436209010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045991 n + A033991 n

end

end A064043.P4183069395436209010

namespace A064043

/-- `A045991(n)+A033991(n)` -/
def P4183069395436209010.Spec : Prop :=
  ∀ n, P4183069395436209010.a n = A064043 n

theorem P4183069395436209010.correct : P4183069395436209010.Spec := by
  intro n
  simp only [A064043, Nat.add_sub_cancel, A064043.P4183069395436209010.a, A064043.P3578565822102951633.a, A033991, A033991.P11968073306702908903.a, A045991, A045991.P16915764248010155243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064043

/-! ## A064043.P17797054630906192970

`A085490(n)+A001105(n)`
-/

namespace A064043.P17797054630906192970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085490 n + A001105 n

end

end A064043.P17797054630906192970

namespace A064043

/-- `A085490(n)+A001105(n)` -/
def P17797054630906192970.Spec : Prop :=
  ∀ n, P17797054630906192970.a n = A064043 n

theorem P17797054630906192970.correct : P17797054630906192970.Spec := by
  intro n
  simp only [A064043, Nat.add_sub_cancel, A064043.P17797054630906192970.a, A064043.P3578565822102951633.a, A001105, A001105.P6098599260439307493.a, A085490, A085490.P10919642999791457831.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064043

/-! ## A064043.P12629946656306280994

`A094159(n)+A007531(n)`
-/

namespace A064043.P12629946656306280994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094159 n + A007531 n

end

end A064043.P12629946656306280994

namespace A064043

/-- `A094159(n)+A007531(n)` -/
def P12629946656306280994.Spec : Prop :=
  ∀ n, P12629946656306280994.a n = A064043 n

theorem P12629946656306280994.correct : P12629946656306280994.Spec := by
  intro n
  simp only [A064043, Nat.add_sub_cancel, A064043.P12629946656306280994.a, A064043.P3578565822102951633.a, A007531, A007531.P15538264737483534371.a, A094159, A094159.P13229722457034603277.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064043

/-!
# A064044: Square array read by antidiagonals of number of length k walks on an n-dimensional hypercubic lattice starting at the origin and staying in the nonnegative part.

The programs for A064044, there is no canonical definition to state claims against.
-/

/-! ## A064044.P6001643921094340377

`A309286(A266183(n+2))`
-/

namespace A064044.P6001643921094340377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309286 (A266183 (n + 2)).toNat

end

end A064044.P6001643921094340377

/-! ## A064044.P3153290083189419431

`A321936(A288972(n))+A065177(n)`
-/

namespace A064044.P3153290083189419431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 (A288972 n).toNat + A065177 n

end

end A064044.P3153290083189419431

/-! ## A064044.P16531812793945108027

`A292086(n+1)+A107846(A170829(n))`
-/

namespace A064044.P16531812793945108027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (n + 1) + A107846 (A170829 n).toNat

end

end A064044.P16531812793945108027

/-! ## A064044.P7178123416861777320

`A307598(A326439(n))+A292086(n+1)`
-/

namespace A064044.P7178123416861777320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307598 (A326439 n).toNat + A292086 (n + 1)

end

end A064044.P7178123416861777320

/-! ## A064044.P4694335557734646380

`A292086(n+1)+A206499(A092195(n+1))`
-/

namespace A064044.P4694335557734646380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (n + 1) + A206499 (A092195 (n + 1)).toNat

end

end A064044.P4694335557734646380

/-!
# A064045: Square array read by antidiagonals of number of length 2k walks on an n-dimensional hypercubic lattice starting and finishing at the origin and staying in the nonnegative part.

The programs for A064045, there is no canonical definition to state claims against.
-/

/-! ## A064045.P17178481565313817873

`A217155(A132200(n))+A067347(n)`
-/

namespace A064045.P17178481565313817873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217155 (A132200 n).toNat + A067347 n

end

end A064045.P17178481565313817873

/-! ## A064045.P9315432081094842134

`A151755(A176420(n))+A106566(n)`
-/

namespace A064045.P9315432081094842134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151755 (A176420 n).toNat + A106566 n

end

end A064045.P9315432081094842134

/-! ## A064045.P6932841971167620099

`A350673(A086645(n))+A067347(n)`
-/

namespace A064045.P6932841971167620099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350673 (A086645 n).toNat + A067347 n

end

end A064045.P6932841971167620099

/-! ## A064045.P6357272284609579254

`A106566(n)*A260736(A022166(n))`
-/

namespace A064045.P6357272284609579254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 n * A260736 (A022166 n).toNat

end

end A064045.P6357272284609579254

/-! ## A064045.P14205652344239340274

`A106566(n)*A309860(A183135(n))`
-/

namespace A064045.P14205652344239340274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 n * A309860 (A183135 n).toNat

end

end A064045.P14205652344239340274

/-!
# A064046: Number of length 6 walks on an n-dimensional hypercubic lattice starting and finishing at the origin and staying in the nonnegative part.

The programs for A064046, the canonical program `A064046.P17679552197568254219` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064046 has offset 0).

The definition of A064046 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064046.P12195053749678845478

`ogf((5x+50x^2+35x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A064046.P12195053749678845478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 50, 35] [1, -4, 6, -4, 1] n

end

end A064046.P12195053749678845478

namespace A064046

/-- `ogf((5x+50x^2+35x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P12195053749678845478.Spec : Prop :=
  ∀ n, P12195053749678845478.a n = A064046 n

end A064046

/-! ## A064046.P17679552197568254219

`5*n*(3*n²-3*n+1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A064046

/-- `5*n*(3*n²-3*n+1)` -/
def P17679552197568254219.Spec : Prop :=
  ∀ n, P17679552197568254219.a n = A064046 n

theorem P17679552197568254219.correct : P17679552197568254219.Spec := by
  intro n
  simp only [A064046]

end A064046

/-! ## A064046.P11419401189165943117

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=5, a(2)=70, a(3)=285`
-/

namespace A064046.P11419401189165943117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 70, 285] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A064046.P11419401189165943117

namespace A064046

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P11419401189165943117.Spec : Prop :=
  ∀ n, P11419401189165943117.a n = A064046 n

theorem P11419401189165943117.correct : P11419401189165943117.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A064046, Nat.add_sub_cancel, A064046.P11419401189165943117.a, A064046.P17679552197568254219.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A064046, Nat.add_sub_cancel, A064046.P11419401189165943117.a, A064046.P17679552197568254219.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A064046

/-! ## A064046.P12945238325094899806

`A272134(n)+n`
-/

namespace A064046.P12945238325094899806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272134 n + (n : ℤ)

end

end A064046.P12945238325094899806

namespace A064046

/-- `A272134(n)+n` -/
def P12945238325094899806.Spec : Prop :=
  ∀ n, P12945238325094899806.a n = A064046 n

theorem P12945238325094899806.correct : P12945238325094899806.Spec := by
  intro n
  simp only [A064046, Nat.add_sub_cancel, A064046.P12945238325094899806.a, A064046.P17679552197568254219.a, A272134, A272134.P1787611870238833139.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064046

/-! ## A064046.P13549168476360570072

`4*n+15*A045991(n)+n`
-/

namespace A064046.P13549168476360570072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + 15 * A045991 n + (n : ℤ)

end

end A064046.P13549168476360570072

namespace A064046

/-- `4*n+15*A045991(n)+n` -/
def P13549168476360570072.Spec : Prop :=
  ∀ n, P13549168476360570072.a n = A064046 n

theorem P13549168476360570072.correct : P13549168476360570072.Spec := by
  intro n
  simp only [A064046, Nat.add_sub_cancel, A064046.P13549168476360570072.a, A064046.P17679552197568254219.a, A045991, A045991.P16915764248010155243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064046

/-! ## A064046.P14335726442497985848

`A153448(n)+A370649(n)+n`
-/

namespace A064046.P14335726442497985848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153448 n + (A370649 n + (n : ℤ))

end

end A064046.P14335726442497985848

namespace A064046

/-- `A153448(n)+A370649(n)+n` -/
def P14335726442497985848.Spec : Prop :=
  ∀ n, P14335726442497985848.a n = A064046 n

theorem P14335726442497985848.correct : P14335726442497985848.Spec := by
  intro n
  simp only [A064046, Nat.add_sub_cancel, A064046.P14335726442497985848.a, A064046.P17679552197568254219.a, A153448, A153448.P13695387970658973347.a, A370649, A370649.P9233916880484194882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064046

/-! ## A064046.P6315360277936057613

`n*A153786(n)-A051866(n)`
-/

namespace A064046.P6315360277936057613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A153786 n - A051866 n

end

end A064046.P6315360277936057613

namespace A064046

/-- `n*A153786(n)-A051866(n)` -/
def P6315360277936057613.Spec : Prop :=
  ∀ n, P6315360277936057613.a n = A064046 n

theorem P6315360277936057613.correct : P6315360277936057613.Spec := by
  intro n
  simp only [A064046, Nat.add_sub_cancel, A064046.P6315360277936057613.a, A064046.P17679552197568254219.a, A051866, A051866.P7037994286834974710.a, A153786, A153786.P15842201399555844801.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064046

/-! ## A064046.P17959520162297479544

`n*A134154(n)-A139267(n)`
-/

namespace A064046.P17959520162297479544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A134154 n - A139267 n

end

end A064046.P17959520162297479544

namespace A064046

/-- `n*A134154(n)-A139267(n)` -/
def P17959520162297479544.Spec : Prop :=
  ∀ n, P17959520162297479544.a n = A064046 n

theorem P17959520162297479544.correct : P17959520162297479544.Spec := by
  intro n
  simp only [A064046, Nat.add_sub_cancel, A064046.P17959520162297479544.a, A064046.P17679552197568254219.a, A134154, A134154.P10105203805466113981.a, A139267, A139267.P13870518576682485828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064046

/-! ## A064046.P13103311659837608476

`A049450(n)-(A000567(n)-A272134(n))`
-/

namespace A064046.P13103311659837608476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049450 n - (A000567 n - A272134 n)

end

end A064046.P13103311659837608476

namespace A064046

/-- `A049450(n)-(A000567(n)-A272134(n))` -/
def P13103311659837608476.Spec : Prop :=
  ∀ n, P13103311659837608476.a n = A064046 n

theorem P13103311659837608476.correct : P13103311659837608476.Spec := by
  intro n
  simp only [A064046, Nat.add_sub_cancel, A064046.P13103311659837608476.a, A064046.P17679552197568254219.a, A000567, A000567.P17850767079432249295.a, A049450, A049450.P1815257678583562472.a, A272134, A272134.P1787611870238833139.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064046

/-! ## A064046.P14105275837285005173

`(n+1)*A038867(n+1)-A038867(A016777(n))`
-/

namespace A064046.P14105275837285005173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A038867 (n + 1) - A038867 (A016777 n).toNat

end

end A064046.P14105275837285005173

namespace A064046

/-- `(n+1)*A038867(n+1)-A038867(A016777(n))` -/
def P14105275837285005173.Spec : Prop :=
  ∀ n, P14105275837285005173.a n = A064046 n

end A064046

/-! ## A064046.P7561321044941600284

`n*∑[record[A195817(A008486(n))]]+n`
-/

namespace A064046.P7561321044941600284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195817 (A008486 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A064046.P7561321044941600284

namespace A064046

/-- `n*∑[record[A195817(A008486(n))]]+n` -/
def P7561321044941600284.Spec : Prop :=
  ∀ n, P7561321044941600284.a n = A064046 n

end A064046

/-!
# A064047: Number of numbers only appearing once in 1-to-n multiplication table.

The programs for A064047, there is no canonical definition to state claims against.
-/

/-! ## A064047.P6819747140521881329

`A027424(n+1)-A027428(n+1)`
-/

namespace A064047.P6819747140521881329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027424 (n + 1) - A027428 (n + 1)

end

end A064047.P6819747140521881329

/-! ## A064047.P3138895092820795036

`A027384(n+1)-(A027428(n+1)+1)`
-/

namespace A064047.P3138895092820795036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027384 (n + 1) - (A027428 (n + 1) + 1)

end

end A064047.P3138895092820795036

/-! ## A064047.P9301457024755087350

`A027384(n+1)-A027427(n+1)`
-/

namespace A064047.P9301457024755087350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027384 (n + 1) - A027427 (n + 1)

end

end A064047.P9301457024755087350

/-! ## A064047.P13500499450565978687

`A027424(n+1)+1-A027427(n+1)`
-/

namespace A064047.P13500499450565978687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027424 (n + 1) + (1 - A027427 (n + 1))

end

end A064047.P13500499450565978687

/-! ## A064047.P4236689415790832255

`∑[A062854(n+1)]+1-A027427(n+1)`
-/

namespace A064047.P4236689415790832255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A027427 (n + 1))

end

end A064047.P4236689415790832255

/-! ## A064047.P2473830731401651337

`1-A334897(n+1)+n`
-/

namespace A064047.P2473830731401651337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A334897 (n + 1) + (n : ℤ)

end

end A064047.P2473830731401651337

/-! ## A064047.P3285015459947861679

`A335152(n+1)%A009531((n+1)²+n+1)`
-/

namespace A064047.P3285015459947861679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335152 (n + 1)) (A009531 ((n + 1) ^ 2 + (n + 1)))

end

end A064047.P3285015459947861679

/-! ## A064047.P6731908068836958

`and(A335152(n+1), A381707(n+1))`
-/

namespace A064047.P6731908068836958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A335152 (n + 1)) (A381707 (n + 1))

end

end A064047.P6731908068836958

/-! ## A064047.P171386805794651194

`gcd(A308531(n+1), A335152(n+1))`
-/

namespace A064047.P171386805794651194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A308531 (n + 1)) (A335152 (n + 1))

end

end A064047.P171386805794651194

/-! ## A064047.P5546010661179387464

`and(A086827(n+1), A335152(n+1))`
-/

namespace A064047.P5546010661179387464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086827 (n + 1)) (A335152 (n + 1))

end

end A064047.P5546010661179387464

/-! ## A064047.P17816637111060866469

`A335152(n+1)+A066285(n+2)*A145091(n+2)`
-/

namespace A064047.P17816637111060866469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335152 (n + 1) + A066285 (n + 2) * A145091 (n + 2)

end

end A064047.P17816637111060866469

/-!
# A064049: Number of possible arrangements of numbers 1 to n*(n+1)/2 in a triangle of n rows so that each row and each diagonal is increasing or decreasing.

The programs for A064049, there is no canonical definition to state claims against.
-/

/-! ## A064049.P16667161208407539218

`A064050(n+1)*A101101((n+1)²)`
-/

namespace A064049.P16667161208407539218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064050 (n + 1) * A101101 ((n + 1) ^ 2)

end

end A064049.P16667161208407539218

/-! ## A064049.P11574631025131224485

`A064050(n+1)*A124465(ceil(n/98))`
-/

namespace A064049.P11574631025131224485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064050 (n + 1) * A124465 ⌈(n : ℚ) / 98⌉.toNat

end

end A064049.P11574631025131224485

/-!
# A064050: Number of essentially different (not mappable to each other by reflection or rotation) arrangements of numbers 1 to n*(n+1)/2 in a triangle of n rows, in such a way that each row and each diagonal is increasing or decreasing.

The programs for A064050, there is no canonical definition to state claims against.
-/

/-! ## A064050.P4963551120133899624

`ceil(A064049(n+1)/6)`
-/

namespace A064050.P4963551120133899624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A064049 (n + 1) : ℚ) / 6⌉

end

end A064050.P4963551120133899624

/-! ## A064050.P3205528128780812262

`floor(A000045(floor(1/(n+1)))+A064049(n+1)/6)`
-/

namespace A064050.P3205528128780812262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 ⌊1 / (n + 1 : ℚ)⌋.toNat : ℚ) + (A064049 (n + 1) : ℚ) / 6⌋

end

end A064050.P3205528128780812262

/-!
# A064051: a(n) = 2*prime(n)^2 - prime(n+1)^2.

The programs for A064051, the canonical program `A064051.P2085852738222052740` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064051 has offset 1).

The definition of A064051 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000040(n+1)²-A000040(n+2)²` (program `A064051.P2085852738222052740`, by `A064051.P2085852738222052740.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064051.P1472615764312218128

`2*A001248(n+1)-A001248(n+2)`
-/

namespace A064051.P1472615764312218128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001248 (n + 1) - A001248 (n + 2)

end

end A064051.P1472615764312218128

namespace A064051

/-- `2*A001248(n+1)-A001248(n+2)` -/
def P1472615764312218128.Spec : Prop :=
  ∀ n, P1472615764312218128.a n = A064051 (n + 1)

end A064051

/-! ## A064051.P2085852738222052740

`2*A000040(n+1)²-A000040(n+2)²`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064051

/-- `2*A000040(n+1)²-A000040(n+2)²` -/
def P2085852738222052740.Spec : Prop :=
  ∀ n, P2085852738222052740.a n = A064051 (n + 1)

theorem P2085852738222052740.correct : P2085852738222052740.Spec := by
  intro n
  simp only [A064051, Nat.add_sub_cancel]

end A064051

/-! ## A064051.P5049516559939786540

`A001248(n+1)-A069482(n+1)`
-/

namespace A064051.P5049516559939786540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A069482 (n + 1)

end

end A064051.P5049516559939786540

namespace A064051

/-- `A001248(n+1)-A069482(n+1)` -/
def P5049516559939786540.Spec : Prop :=
  ∀ n, P5049516559939786540.a n = A064051 (n + 1)

theorem P5049516559939786540.correct : P5049516559939786540.Spec := by
  intro n
  simp only [A064051, Nat.add_sub_cancel, A064051.P5049516559939786540.a, A064051.P2085852738222052740.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A069482, A069482.P16588716990720648360.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064051

/-! ## A064051.P11007623774006071113

`A079705(n+1)-A069484(n+1)`
-/

namespace A064051.P11007623774006071113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079705 (n + 1) - A069484 (n + 1)

end

end A064051.P11007623774006071113

namespace A064051

/-- `A079705(n+1)-A069484(n+1)` -/
def P11007623774006071113.Spec : Prop :=
  ∀ n, P11007623774006071113.a n = A064051 (n + 1)

theorem P11007623774006071113.correct : P11007623774006071113.Spec := by
  intro n
  simp only [A064051, Nat.add_sub_cancel, A064051.P11007623774006071113.a, A064051.P2085852738222052740.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A069484, A069484.P10584348183158188878.a, A079705, A079705.P5346247359754052354.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064051

/-! ## A064051.P11971333400708851355

`A117961(n+1)-A261465(n+1)`
-/

namespace A064051.P11971333400708851355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117961 (n + 1) - A261465 (n + 1)

end

end A064051.P11971333400708851355

namespace A064051

/-- `A117961(n+1)-A261465(n+1)` -/
def P11971333400708851355.Spec : Prop :=
  ∀ n, P11971333400708851355.a n = A064051 (n + 1)

end A064051

/-! ## A064051.P16219470083084938735

`A000040(n+1)²-A069482(n+1)`
-/

namespace A064051.P16219470083084938735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - A069482 (n + 1)

end

end A064051.P16219470083084938735

namespace A064051

/-- `A000040(n+1)²-A069482(n+1)` -/
def P16219470083084938735.Spec : Prop :=
  ∀ n, P16219470083084938735.a n = A064051 (n + 1)

theorem P16219470083084938735.correct : P16219470083084938735.Spec := by
  intro n
  simp only [A064051, Nat.add_sub_cancel, A064051.P16219470083084938735.a, A064051.P2085852738222052740.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A069482, A069482.P16588716990720648360.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064051

/-! ## A064051.P18412904286363366675

`A079704(n+1)/2-A069482(n+1)`
-/

namespace A064051.P18412904286363366675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079704 (n + 1) : ℚ) / 2 - (A069482 (n + 1) : ℚ)

end

end A064051.P18412904286363366675

namespace A064051

/-- `A079704(n+1)/2-A069482(n+1)` -/
def P18412904286363366675.Spec : Prop :=
  ∀ n, P18412904286363366675.a n = (A064051 (n + 1) : ℚ)

theorem P18412904286363366675.correct : P18412904286363366675.Spec := by
  intro n
  simp only [A064051, Nat.add_sub_cancel, A064051.P18412904286363366675.a, A064051.P2085852738222052740.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A069482, A069482.P16588716990720648360.a, A079704, A079704.P2518524558801344655.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064051

/-! ## A064051.P8576894276329307952

`A000040(n+1)²-Δ[A066872(n+1)]`
-/

namespace A064051.P8576894276329307952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - (f1 (n + 1) - f1 n)

end

end A064051.P8576894276329307952

namespace A064051

/-- `A000040(n+1)²-Δ[A066872(n+1)]` -/
def P8576894276329307952.Spec : Prop :=
  ∀ n, P8576894276329307952.a n = A064051 (n + 1)

theorem P8576894276329307952.correct : P8576894276329307952.Spec := by
  intro n
  simp only [A064051, Nat.add_sub_cancel, A064051.P8576894276329307952.f1, A064051.P8576894276329307952.a, A064051.P2085852738222052740.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A066872, A066872.P16166098773502812344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064051

/-! ## A064051.P13355683647310353785

`A001248(n+1)+A036690(n+1)-A349660(n+1)`
-/

namespace A064051.P13355683647310353785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + (A036690 (n + 1) - A349660 (n + 1))

end

end A064051.P13355683647310353785

namespace A064051

/-- `A001248(n+1)+A036690(n+1)-A349660(n+1)` -/
def P13355683647310353785.Spec : Prop :=
  ∀ n, P13355683647310353785.a n = A064051 (n + 1)

end A064051

/-! ## A064051.P16771262269579184312

`A079704(n+1)-A065091(n+1)*A065091(n+1)`
-/

namespace A064051.P16771262269579184312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079704 (n + 1) - A065091 (n + 1) * A065091 (n + 1)

end

end A064051.P16771262269579184312

namespace A064051

/-- `A079704(n+1)-A065091(n+1)*A065091(n+1)` -/
def P16771262269579184312.Spec : Prop :=
  ∀ n, P16771262269579184312.a n = A064051 (n + 1)

theorem P16771262269579184312.correct : P16771262269579184312.Spec := by
  intro n
  simp only [A064051, Nat.add_sub_cancel, A064051.P16771262269579184312.a, A064051.P2085852738222052740.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A065091, A065091.P6971844946592549357.a, A079704, A079704.P2518524558801344655.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064051

/-! ## A064051.P7640160842748965928

`A030078(n+1)/A000040(n+1)-A069482(n+1)`
-/

namespace A064051.P7640160842748965928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030078 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ) - (A069482 (n + 1) : ℚ)

end

end A064051.P7640160842748965928

namespace A064051

/-- `A030078(n+1)/A000040(n+1)-A069482(n+1)` -/
def P7640160842748965928.Spec : Prop :=
  ∀ n, P7640160842748965928.a n = (A064051 (n + 1) : ℚ)

theorem P7640160842748965928.correct : P7640160842748965928.Spec := by
  intro n
  simp only [A064051, Nat.add_sub_cancel, A064051.P7640160842748965928.a, A064051.P2085852738222052740.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030078, A030078.P13819432151207990454.a, A069482, A069482.P16588716990720648360.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064051

/-! ## A064051.P989031133083767478

`A153480(n)-A166010(n+2)`
-/

namespace A064051.P989031133083767478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153480 n - A166010 (n + 2)

end

end A064051.P989031133083767478

namespace A064051

/-- `A153480(n)-A166010(n+2)` -/
def P989031133083767478.Spec : Prop :=
  ∀ n, P989031133083767478.a n = A064051 (n + 1)

theorem P989031133083767478.correct : P989031133083767478.Spec := by
  intro n
  simp only [A064051, Nat.add_sub_cancel, A064051.P989031133083767478.a, A064051.P2085852738222052740.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A153480, A153480.P7601742437354690742.a, A166010, A166010.P2375559703123786713.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064051

/-! ## A064051.P15211787516884655827

`Δ[A024525(n)-A049001(n+1)]`
-/

namespace A064051.P15211787516884655827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024525 n - A049001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064051.P15211787516884655827

namespace A064051

/-- `Δ[A024525(n)-A049001(n+1)]` -/
def P15211787516884655827.Spec : Prop :=
  ∀ n, P15211787516884655827.a n = A064051 (n + 1)

end A064051

/-! ## A064051.P6556773696724802424

`A079704(n+1)-A001248(n+2)`
-/

namespace A064051.P6556773696724802424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079704 (n + 1) - A001248 (n + 2)

end

end A064051.P6556773696724802424

namespace A064051

/-- `A079704(n+1)-A001248(n+2)` -/
def P6556773696724802424.Spec : Prop :=
  ∀ n, P6556773696724802424.a n = A064051 (n + 1)

end A064051

/-! ## A064051.P2770547901986667817

`Δ[A024525(n)-A000040(n+1)²]`
-/

namespace A064051.P2770547901986667817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024525 n - A000040 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064051.P2770547901986667817

namespace A064051

/-- `Δ[A024525(n)-A000040(n+1)²]` -/
def P2770547901986667817.Spec : Prop :=
  ∀ n, P2770547901986667817.a n = A064051 (n + 1)

end A064051

/-! ## A064051.P11531722859240185825

`A079704(n+1)-A000040(n+2)²`
-/

namespace A064051.P11531722859240185825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079704 (n + 1) - A000040 (n + 2) ^ 2

end

end A064051.P11531722859240185825

namespace A064051

/-- `A079704(n+1)-A000040(n+2)²` -/
def P11531722859240185825.Spec : Prop :=
  ∀ n, P11531722859240185825.a n = A064051 (n + 1)

end A064051

/-! ## A064051.P7076636290130050362

`A000040(n+1)²-Δ[A001248(n+1)]`
-/

namespace A064051.P7076636290130050362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - (f1 (n + 1) - f1 n)

end

end A064051.P7076636290130050362

namespace A064051

/-- `A000040(n+1)²-Δ[A001248(n+1)]` -/
def P7076636290130050362.Spec : Prop :=
  ∀ n, P7076636290130050362.a n = A064051 (n + 1)

theorem P7076636290130050362.correct : P7076636290130050362.Spec := by
  intro n
  simp only [A064051, Nat.add_sub_cancel, A064051.P7076636290130050362.f1, A064051.P7076636290130050362.a, A064051.P2085852738222052740.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064051

/-! ## A064051.P5857980628470657111

`A000040(n+1)²-Δ[A049001(n+1)]`
-/

namespace A064051.P5857980628470657111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - (f1 (n + 1) - f1 n)

end

end A064051.P5857980628470657111

namespace A064051

/-- `A000040(n+1)²-Δ[A049001(n+1)]` -/
def P5857980628470657111.Spec : Prop :=
  ∀ n, P5857980628470657111.a n = A064051 (n + 1)

theorem P5857980628470657111.correct : P5857980628470657111.Spec := by
  intro n
  simp only [A064051, Nat.add_sub_cancel, A064051.P5857980628470657111.f1, A064051.P5857980628470657111.a, A064051.P2085852738222052740.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A049001, A049001.P8777299766092042792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064051

/-! ## A064051.P8998151941610862391

`A000040(n+1)²-Δ[A084920(n+1)]`
-/

namespace A064051.P8998151941610862391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - (f1 (n + 1) - f1 n)

end

end A064051.P8998151941610862391

namespace A064051

/-- `A000040(n+1)²-Δ[A084920(n+1)]` -/
def P8998151941610862391.Spec : Prop :=
  ∀ n, P8998151941610862391.a n = A064051 (n + 1)

theorem P8998151941610862391.correct : P8998151941610862391.Spec := by
  intro n
  simp only [A064051, Nat.add_sub_cancel, A064051.P8998151941610862391.f1, A064051.P8998151941610862391.a, A064051.P2085852738222052740.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A084920, A084920.P13392903182497119137.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064051

/-! ## A064051.P6352382338169433860

`A000040(n+1)²-Δ[A138693(n+1)]`
-/

namespace A064051.P6352382338169433860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - (f1 (n + 1) - f1 n)

end

end A064051.P6352382338169433860

namespace A064051

/-- `A000040(n+1)²-Δ[A138693(n+1)]` -/
def P6352382338169433860.Spec : Prop :=
  ∀ n, P6352382338169433860.a n = A064051 (n + 1)

theorem P6352382338169433860.correct : P6352382338169433860.Spec := by
  intro n
  simp only [A064051, Nat.add_sub_cancel, A064051.P6352382338169433860.f1, A064051.P6352382338169433860.a, A064051.P2085852738222052740.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A138693, A138693.P2674779579294356525.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064051

/-!
# A064052: Not sqrt(n)-smooth: some prime factor of n is > sqrt(n).

The programs for A064052, the canonical program `A064052.P2225117651996299170` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064052 has offset 1).

The definition of A064052 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064052.P3858693664829244591

`comp[∪[A048098(n+1), n²]]`
-/

namespace A064052.P3858693664829244591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A064052.P3858693664829244591

namespace A064052

/-- `comp[∪[A048098(n+1), n²]]` -/
def P3858693664829244591.Spec : Prop :=
  ∀ n, (P3858693664829244591.a n : ℤ) = A064052 (n + 1)

end A064052

/-! ## A064052.P13602255459737541613

`comp[∪[A063539(1+n), n²]]`
-/

namespace A064052.P13602255459737541613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (1 + n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A064052.P13602255459737541613

namespace A064052

/-- `comp[∪[A063539(1+n), n²]]` -/
def P13602255459737541613.Spec : Prop :=
  ∀ n, (P13602255459737541613.a n : ℤ) = A064052 (n + 1)

end A064052

/-! ## A064052.P2225117651996299170

`record[(n+2)%A006530(n+2)²]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A064052

/-- `record[(n+2)%A006530(n+2)²]` -/
def P2225117651996299170.Spec : Prop :=
  ∀ n, P2225117651996299170.a n = A064052 (n + 1)

theorem P2225117651996299170.correct : P2225117651996299170.Spec := by
  intro n
  simp only [A064052, Nat.add_sub_cancel]

end A064052

/-! ## A064052.P4277598374709750678

`lt[n+1, A006530(n+1)²]+1`
-/

namespace A064052.P4277598374709750678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A064052.P4277598374709750678

namespace A064052

/-- `lt[n+1, A006530(n+1)²]+1` -/
def P4277598374709750678.Spec : Prop :=
  ∀ n, (P4277598374709750678.a n : ℤ) = A064052 (n + 1)

end A064052

/-! ## A064052.P4015471897116586730

`eq[1, A001222(A354933(n+1))]+1`
-/

namespace A064052.P4015471897116586730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A354933 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064052.P4015471897116586730

namespace A064052

/-- `eq[1, A001222(A354933(n+1))]+1` -/
def P4015471897116586730.Spec : Prop :=
  ∀ n, (P4015471897116586730.a n : ℤ) = A064052 (n + 1)

end A064052

/-! ## A064052.P17773304226018266424

`∪[A000040(n+1), A063763(n+1)]`
-/

namespace A064052.P17773304226018266424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A064052.P17773304226018266424

namespace A064052

/-- `∪[A000040(n+1), A063763(n+1)]` -/
def P17773304226018266424.Spec : Prop :=
  ∀ n, (P17773304226018266424.a n : ℤ) = A064052 (n + 1)

end A064052

/-! ## A064052.P2236201156332308219

`filter[A063538(n+1), A049240(#)]`
-/

namespace A064052.P2236201156332308219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A064052.P2236201156332308219

namespace A064052

/-- `filter[A063538(n+1), A049240(#)]` -/
def P2236201156332308219.Spec : Prop :=
  ∀ n, P2236201156332308219.a n = A064052 (n + 1)

end A064052

/-! ## A064052.P13948573378873515546

`∩[A063538(n+1), A102750(n+1)]`
-/

namespace A064052.P13948573378873515546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064052.P13948573378873515546

namespace A064052

/-- `∩[A063538(n+1), A102750(n+1)]` -/
def P13948573378873515546.Spec : Prop :=
  ∀ n, (P13948573378873515546.a n : ℤ) = A064052 (n + 1)

end A064052

/-! ## A064052.P10045021499302650823

`∩[A027855(n+1), A102750(n+1)]`
-/

namespace A064052.P10045021499302650823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064052.P10045021499302650823

namespace A064052

/-- `∩[A027855(n+1), A102750(n+1)]` -/
def P10045021499302650823.Spec : Prop :=
  ∀ n, (P10045021499302650823.a n : ℤ) = A064052 (n + 1)

end A064052

/-! ## A064052.P3881783394065238894

`∩[A085235(n+1), A102750(n+1)]`
-/

namespace A064052.P3881783394065238894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064052.P3881783394065238894

namespace A064052

/-- `∩[A085235(n+1), A102750(n+1)]` -/
def P3881783394065238894.Spec : Prop :=
  ∀ n, (P3881783394065238894.a n : ℤ) = A064052 (n + 1)

end A064052

/-! ## A064052.P7980730880245556075

`∩[A027855(n+1), A122144(n+1)]`
-/

namespace A064052.P7980730880245556075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064052.P7980730880245556075

namespace A064052

/-- `∩[A027855(n+1), A122144(n+1)]` -/
def P7980730880245556075.Spec : Prop :=
  ∀ n, (P7980730880245556075.a n : ℤ) = A064052 (n + 1)

end A064052

/-! ## A064052.P16509679465051974231

`∩[A063538(n+1), A122144(n+1)]`
-/

namespace A064052.P16509679465051974231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064052.P16509679465051974231

namespace A064052

/-- `∩[A063538(n+1), A122144(n+1)]` -/
def P16509679465051974231.Spec : Prop :=
  ∀ n, (P16509679465051974231.a n : ℤ) = A064052 (n + 1)

end A064052

/-! ## A064052.P16827023869356384652

`∩[A085235(n+1), A122144(n+1)]`
-/

namespace A064052.P16827023869356384652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064052.P16827023869356384652

namespace A064052

/-- `∩[A085235(n+1), A122144(n+1)]` -/
def P16827023869356384652.Spec : Prop :=
  ∀ n, (P16827023869356384652.a n : ℤ) = A064052 (n + 1)

end A064052

/-! ## A064052.P874708928159505059

`∩[A027855(n+1), A048839(n+1)]`
-/

namespace A064052.P874708928159505059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064052.P874708928159505059

namespace A064052

/-- `∩[A027855(n+1), A048839(n+1)]` -/
def P874708928159505059.Spec : Prop :=
  ∀ n, (P874708928159505059.a n : ℤ) = A064052 (n + 1)

end A064052

/-! ## A064052.P1290589748387724059

`∩[A048839(n+1), A063538(n+1)]`
-/

namespace A064052.P1290589748387724059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064052.P1290589748387724059

namespace A064052

/-- `∩[A048839(n+1), A063538(n+1)]` -/
def P1290589748387724059.Spec : Prop :=
  ∀ n, (P1290589748387724059.a n : ℤ) = A064052 (n + 1)

end A064052

/-! ## A064052.P14119092733785919462

`∩[A048839(n+1), A085235(n+1)]`
-/

namespace A064052.P14119092733785919462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064052.P14119092733785919462

namespace A064052

/-- `∩[A048839(n+1), A085235(n+1)]` -/
def P14119092733785919462.Spec : Prop :=
  ∀ n, (P14119092733785919462.a n : ℤ) = A064052 (n + 1)

end A064052

/-! ## A064052.P13701459954737732840

`∩[A052485(n+1), A063538(n+1)]`
-/

namespace A064052.P13701459954737732840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064052.P13701459954737732840

namespace A064052

/-- `∩[A052485(n+1), A063538(n+1)]` -/
def P13701459954737732840.Spec : Prop :=
  ∀ n, (P13701459954737732840.a n : ℤ) = A064052 (n + 1)

end A064052

/-! ## A064052.P3833205638157389448

`∩[A007916(n+1), A063538(n+1)]`
-/

namespace A064052.P3833205638157389448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064052.P3833205638157389448

namespace A064052

/-- `∩[A007916(n+1), A063538(n+1)]` -/
def P3833205638157389448.Spec : Prop :=
  ∀ n, (P3833205638157389448.a n : ℤ) = A064052 (n + 1)

end A064052

/-! ## A064052.P2078515906771459092

`∩[A063538(n+1), A175082(n+1)]`
-/

namespace A064052.P2078515906771459092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064052.P2078515906771459092

namespace A064052

/-- `∩[A063538(n+1), A175082(n+1)]` -/
def P2078515906771459092.Spec : Prop :=
  ∀ n, (P2078515906771459092.a n : ℤ) = A064052 (n + 1)

end A064052

/-! ## A064052.P9383227054883668680

`∩[A063538(n+1), A259444(n+1)]`
-/

namespace A064052.P9383227054883668680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064052.P9383227054883668680

namespace A064052

/-- `∩[A063538(n+1), A259444(n+1)]` -/
def P9383227054883668680.Spec : Prop :=
  ∀ n, (P9383227054883668680.a n : ℤ) = A064052 (n + 1)

end A064052

/-! ## A064052.P12651183065388991885

`lt[∏{p}[n, n-#²], 0]`
-/

namespace A064052.P12651183065388991885
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((n : ℤ) - (p ^ 2 : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A064052.P12651183065388991885

namespace A064052

/-- `lt[∏{p}[n, n-#²], 0]` -/
def P12651183065388991885.Spec : Prop :=
  ∀ n, (P12651183065388991885.a n : ℤ) = A064052 (n + 1)

end A064052

/-!
# A064053: Auxiliary sequence gamma(n) used to compute coefficients in series expansion of the mock theta function f(q) via A(n) = Sum_{r=0..n} p(r)*gamma(n-r), with p(r) the partition function A000041.

The programs for A064053, there is no canonical definition to state claims against.
-/

/-! ## A064053.P13179282242931667801

`A000007(n)+4*A096661(n)`
-/

namespace A064053.P13179282242931667801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 4 * A096661 n

end

end A064053.P13179282242931667801

/-! ## A064053.P3054097974768585777

`A105348(2*n)+4*A096661(n)`
-/

namespace A064053.P3054097974768585777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105348 (2 * n) + 4 * A096661 n

end

end A064053.P3054097974768585777

/-! ## A064053.P8550963376218387315

`xor(4*A096661(n), A000007(A004159(n)))`
-/

namespace A064053.P8550963376218387315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (4 * A096661 n) (A000007 (A004159 n).toNat)

end

end A064053.P8550963376218387315

/-! ## A064053.P2779942452753002854

`xor(4*A096661(n), A000007(A007953(n)))`
-/

namespace A064053.P2779942452753002854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (4 * A096661 n) (A000007 (A007953 n).toNat)

end

end A064053.P2779942452753002854

/-! ## A064053.P10187309937362048523

`xor(4*A096661(n), A000007(A061762(n)))`
-/

namespace A064053.P10187309937362048523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (4 * A096661 n) (A000007 (A061762 n).toNat)

end

end A064053.P10187309937362048523

/-! ## A064053.P11864064656293332922

`(4*A096661(n))^A001222(A008578(n+1))`
-/

namespace A064053.P11864064656293332922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A096661 n : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A064053.P11864064656293332922

/-! ## A064053.P10756844867824600038

`(4*A096661(n))^A001221(A141809(n+1))`
-/

namespace A064053.P10756844867824600038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A096661 n : ℚ) ^ (A001221 (A141809 (n + 1)).toNat : ℤ)

end

end A064053.P10756844867824600038

/-! ## A064053.P8354289167826453655

`(4*A096661(n))^A001222(A323075(n+1))`
-/

namespace A064053.P8354289167826453655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A096661 n : ℚ) ^ (A001222 (A323075 (n + 1)).toNat : ℤ)

end

end A064053.P8354289167826453655

/-! ## A064053.P17064909766042522999

`A008683(A008486(n)+n)+4*A096661(n)`
-/

namespace A064053.P17064909766042522999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008486 n + (n : ℤ)).toNat + 4 * A096661 n

end

end A064053.P17064909766042522999

/-! ## A064053.P982180919465400312

`A008683(abs(A006352(n)))+4*A096661(n)`
-/

namespace A064053.P982180919465400312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 |A006352 n|.toNat + 4 * A096661 n

end

end A064053.P982180919465400312

/-! ## A064053.P1130420366767938110

`A008683((n+1)²)+4*A096661(n)`
-/

namespace A064053.P1130420366767938110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2) + 4 * A096661 n

end

end A064053.P1130420366767938110

/-!
# A064054: Tenth column of trinomial coefficients.

The programs for A064054, the canonical program `A064054.P603331985912592333` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064054 has offset 0).

The definition of A064054 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064054.P603331985912592333

`∑[A005716(n+4)+A005715(n+4)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064054

/-- `∑[A005716(n+4)+A005715(n+4)]` -/
def P603331985912592333.Spec : Prop :=
  ∀ n, P603331985912592333.a n = A064054 n

theorem P603331985912592333.correct : P603331985912592333.Spec := by
  intro n
  simp only [A064054]

end A064054

/-! ## A064054.P6128115096475690635

`∑[∑[A005715(n+4)+A005714(n+3)]]`
-/

namespace A064054.P6128115096475690635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005715 (n + 4) + A005714 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064054.P6128115096475690635

namespace A064054

/-- `∑[∑[A005715(n+4)+A005714(n+3)]]` -/
def P6128115096475690635.Spec : Prop :=
  ∀ n, P6128115096475690635.a n = A064054 n

end A064054

/-! ## A064054.P1057538458280740131

`∑[A005716(n+4)+A096945(n)-A257200(n+1)]`
-/

namespace A064054.P1057538458280740131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005716 (n + 4) + (A096945 n - A257200 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064054.P1057538458280740131

namespace A064054

/-- `∑[A005716(n+4)+A096945(n)-A257200(n+1)]` -/
def P1057538458280740131.Spec : Prop :=
  ∀ n, P1057538458280740131.a n = A064054 n

end A064054

/-! ## A064054.P17240350050153502334

`A005716(n+4)+∑[A005716(n+4)+A000574(n+3)]`
-/

namespace A064054.P17240350050153502334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005716 (n + 4) + A000574 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005716 (n + 4) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064054.P17240350050153502334

namespace A064054

/-- `A005716(n+4)+∑[A005716(n+4)+A000574(n+3)]` -/
def P17240350050153502334.Spec : Prop :=
  ∀ n, P17240350050153502334.a n = A064054 n

end A064054

/-! ## A064054.P16994131347383209859

`∑[A005716(n+5)-A005714(n+4)]`
-/

namespace A064054.P16994131347383209859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005716 (n + 5) - A005714 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064054.P16994131347383209859

namespace A064054

/-- `∑[A005716(n+5)-A005714(n+4)]` -/
def P16994131347383209859.Spec : Prop :=
  ∀ n, P16994131347383209859.a n = A064054 n

end A064054

/-! ## A064054.P7452242309843516211

`A123934(A374005(n+1))`
-/

namespace A064054.P7452242309843516211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123934 (A374005 (n + 1)).toNat

end

end A064054.P7452242309843516211

namespace A064054

/-- `A123934(A374005(n+1))` -/
def P7452242309843516211.Spec : Prop :=
  ∀ n, P7452242309843516211.a n = A064054 n

end A064054

/-! ## A064054.P430349128357620582

`A027907((n+5)²+9)`
-/

namespace A064054.P430349128357620582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 ((n + 5) ^ 2 + 9)

end

end A064054.P430349128357620582

namespace A064054

/-- `A027907((n+5)²+9)` -/
def P430349128357620582.Spec : Prop :=
  ∀ n, P430349128357620582.a n = A064054 n

end A064054

/-! ## A064054.P15946909501358545634

`A169623(A187989(n+2)-1)`
-/

namespace A064054.P15946909501358545634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 (A187989 (n + 2) - 1).toNat

end

end A064054.P15946909501358545634

namespace A064054

/-- `A169623(A187989(n+2)-1)` -/
def P15946909501358545634.Spec : Prop :=
  ∀ n, P15946909501358545634.a n = A064054 n

end A064054

/-!
# A064055: Ninth column of quadrinomial coefficients.

The programs for A064055, the canonical program `A064055.P16541604894270962580` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064055 has offset 0).

The definition of A064055 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064055.P16541604894270962580

`∑[A001919(n+3)-A005718(n)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064055

/-- `∑[A001919(n+3)-A005718(n)]` -/
def P16541604894270962580.Spec : Prop :=
  ∀ n, P16541604894270962580.a n = A064055 n

theorem P16541604894270962580.correct : P16541604894270962580.Spec := by
  intro n
  simp only [A064055]

end A064055

/-! ## A064055.P11305028760807968902

`∑[A001919(n+3)-A166805(n+1)+n]`
-/

namespace A064055.P11305028760807968902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001919 (n + 3) - A166805 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064055.P11305028760807968902

namespace A064055

/-- `∑[A001919(n+3)-A166805(n+1)+n]` -/
def P11305028760807968902.Spec : Prop :=
  ∀ n, P11305028760807968902.a n = A064055 n

end A064055

/-! ## A064055.P6788538297040812438

`∑[A001919(n+3)-(A063258(n)-(n+1))]`
-/

namespace A064055.P6788538297040812438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001919 (n + 3) - (A063258 n - (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064055.P6788538297040812438

namespace A064055

/-- `∑[A001919(n+3)-(A063258(n)-(n+1))]` -/
def P6788538297040812438.Spec : Prop :=
  ∀ n, P6788538297040812438.a n = A064055 n

end A064055

/-! ## A064055.P5713824148871988429

`∑[A001919(n+3)-(A014309(n+1)+(n+2)²)]`
-/

namespace A064055.P5713824148871988429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001919 (n + 3) - (A014309 (n + 1) + ((n + 2) ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064055.P5713824148871988429

namespace A064055

/-- `∑[A001919(n+3)-(A014309(n+1)+(n+2)²)]` -/
def P5713824148871988429.Spec : Prop :=
  ∀ n, P5713824148871988429.a n = A064055 n

end A064055

/-! ## A064055.P8140638544414304569

`A095664(n)+A096945(n)-A062990(n)`
-/

namespace A064055.P8140638544414304569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095664 n + (A096945 n - A062990 n)

end

end A064055.P8140638544414304569

namespace A064055

/-- `A095664(n)+A096945(n)-A062990(n)` -/
def P8140638544414304569.Spec : Prop :=
  ∀ n, P8140638544414304569.a n = A064055 n

end A064055

/-! ## A064055.P2460423420292089752

`∑[A001919(n+3)+A005582(n)-A005701(n)]`
-/

namespace A064055.P2460423420292089752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001919 (n + 3) + (A005582 n - A005701 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064055.P2460423420292089752

namespace A064055

/-- `∑[A001919(n+3)+A005582(n)-A005701(n)]` -/
def P2460423420292089752.Spec : Prop :=
  ∀ n, P2460423420292089752.a n = A064055 n

end A064055

/-! ## A064055.P635262846869699270

`∑[A005714(n+3)+A062990(n)-A005718(n)]`
-/

namespace A064055.P635262846869699270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005714 (n + 3) + (A062990 n - A005718 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064055.P635262846869699270

namespace A064055

/-- `∑[A005714(n+3)+A062990(n)-A005718(n)]` -/
def P635262846869699270.Spec : Prop :=
  ∀ n, P635262846869699270.a n = A064055 n

end A064055

/-! ## A064055.P1138582064116971679

`∑[A001919(n+3)+A000292(n)-A095661(n)]`
-/

namespace A064055.P1138582064116971679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001919 (n + 3) + (A000292 n - A095661 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064055.P1138582064116971679

namespace A064055

/-- `∑[A001919(n+3)+A000292(n)-A095661(n)]` -/
def P1138582064116971679.Spec : Prop :=
  ∀ n, P1138582064116971679.a n = A064055 n

end A064055

/-! ## A064055.P14656153893379929204

`∑[A001919(n+3)-(A051743(n+1)+A008778(n))]`
-/

namespace A064055.P14656153893379929204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001919 (n + 3) - (A051743 (n + 1) + A008778 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064055.P14656153893379929204

namespace A064055

/-- `∑[A001919(n+3)-(A051743(n+1)+A008778(n))]` -/
def P14656153893379929204.Spec : Prop :=
  ∀ n, P14656153893379929204.a n = A064055 n

end A064055

/-! ## A064055.P1910278173310596187

`∑[A001919(n+3)-(A227259(n+1)+A005563(n))]`
-/

namespace A064055.P1910278173310596187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001919 (n + 3) - (A227259 (n + 1) + A005563 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064055.P1910278173310596187

namespace A064055

/-- `∑[A001919(n+3)-(A227259(n+1)+A005563(n))]` -/
def P1910278173310596187.Spec : Prop :=
  ∀ n, P1910278173310596187.a n = A064055 n

end A064055

/-! ## A064055.P4034995732233439503

`∑[A253942(n+4)+A095663(n)-A005718(n)]`
-/

namespace A064055.P4034995732233439503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253942 (n + 4) + (A095663 n - A005718 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064055.P4034995732233439503

namespace A064055

/-- `∑[A253942(n+4)+A095663(n)-A005718(n)]` -/
def P4034995732233439503.Spec : Prop :=
  ∀ n, P4034995732233439503.a n = A064055 n

end A064055

/-! ## A064055.P6838575846281796459

`A213887(Δ[A000292(n+10)]+n+3)`
-/

namespace A064055.P6838575846281796459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213887 (f1 (n + 1) - f1 n + (n : ℤ) + 3).toNat

end

end A064055.P6838575846281796459

namespace A064055

/-- `A213887(Δ[A000292(n+10)]+n+3)` -/
def P6838575846281796459.Spec : Prop :=
  ∀ n, P6838575846281796459.a n = A064055 n

end A064055

/-!
# A064056: Seventh column of quintinomial coefficients.

The programs for A064056, the canonical program `A064056.P16796488308049298126` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064056 has offset 0).

The definition of A064056 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064056.P16796488308049298126

`ogf((3-2x-2x^2+3x^3-x^4)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A064056

/-- `ogf((3-2x-2x^2+3x^3-x^4)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P16796488308049298126.Spec : Prop :=
  ∀ n, P16796488308049298126.a n = A064056 n

theorem P16796488308049298126.correct : P16796488308049298126.Spec := by
  intro n
  simp only [A064056]

end A064056

/-! ## A064056.P9237720687950614526

`∑[∑[C(n+5, 4)-2]]`
-/

namespace A064056.P9237720687950614526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 5) 4 : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064056.P9237720687950614526

namespace A064056

/-- `∑[∑[C(n+5, 4)-2]]` -/
def P9237720687950614526.Spec : Prop :=
  ∀ n, P9237720687950614526.a n = A064056 n

end A064056

/-! ## A064056.P4862668428228455717

`C(n+7, 6)-(n+2)²`
-/

namespace A064056.P4862668428228455717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 6 : ℤ) - ((n + 2) ^ 2 : ℤ)

end

end A064056.P4862668428228455717

namespace A064056

/-- `C(n+7, 6)-(n+2)²` -/
def P4862668428228455717.Spec : Prop :=
  ∀ n, P4862668428228455717.a n = A064056 n

end A064056

/-! ## A064056.P18132303113292796235

`∑[∑[∑[∑[∑[n+2]+1]]+n]]`
-/

namespace A064056.P18132303113292796235
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064056.P18132303113292796235

namespace A064056

/-- `∑[∑[∑[∑[∑[n+2]+1]]+n]]` -/
def P18132303113292796235.Spec : Prop :=
  ∀ n, (P18132303113292796235.a n : ℤ) = A064056 n

end A064056

/-! ## A064056.P106379704093589011

`A062966(n)-∑[n+1]`
-/

namespace A064056.P106379704093589011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062966 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A064056.P106379704093589011

namespace A064056

/-- `A062966(n)-∑[n+1]` -/
def P106379704093589011.Spec : Prop :=
  ∀ n, P106379704093589011.a n = A064056 n

end A064056

/-! ## A064056.P4044675522759576192

`∑[A166808(n+1)]-(n+1)²`
-/

namespace A064056.P4044675522759576192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A064056.P4044675522759576192

namespace A064056

/-- `∑[A166808(n+1)]-(n+1)²` -/
def P4044675522759576192.Spec : Prop :=
  ∀ n, P4044675522759576192.a n = A064056 n

end A064056

/-! ## A064056.P11114624863283838515

`A063262(n)-A000580(n+7)`
-/

namespace A064056.P11114624863283838515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063262 n - A000580 (n + 7)

end

end A064056.P11114624863283838515

namespace A064056

/-- `A063262(n)-A000580(n+7)` -/
def P11114624863283838515.Spec : Prop :=
  ∀ n, P11114624863283838515.a n = A064056 n

end A064056

/-! ## A064056.P5403209504542626543

`A005712(n+2)+A005584(n+1)`
-/

namespace A064056.P5403209504542626543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005712 (n + 2) + A005584 (n + 1)

end

end A064056.P5403209504542626543

namespace A064056

/-- `A005712(n+2)+A005584(n+1)` -/
def P5403209504542626543.Spec : Prop :=
  ∀ n, P5403209504542626543.a n = A064056 n

end A064056

/-! ## A064056.P3047589463913224399

`A062966(n)-A034856(n+1)+n`
-/

namespace A064056.P3047589463913224399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062966 n - A034856 (n + 1) + (n : ℤ)

end

end A064056.P3047589463913224399

namespace A064056

/-- `A062966(n)-A034856(n+1)+n` -/
def P3047589463913224399.Spec : Prop :=
  ∀ n, P3047589463913224399.a n = A064056 n

end A064056

/-! ## A064056.P15811846061991959256

`A000292(n)+A062966(n)-A000292(n+1)`
-/

namespace A064056.P15811846061991959256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + (A062966 n - A000292 (n + 1))

end

end A064056.P15811846061991959256

namespace A064056

/-- `A000292(n)+A062966(n)-A000292(n+1)` -/
def P15811846061991959256.Spec : Prop :=
  ∀ n, P15811846061991959256.a n = A064056 n

end A064056

/-! ## A064056.P15765555818812027180

`A062989(n+1)-(n+1)*(n+2)`
-/

namespace A064056.P15765555818812027180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062989 (n + 1) - ((n + 1) * (n + 2) : ℤ)

end

end A064056.P15765555818812027180

namespace A064056

/-- `A062989(n+1)-(n+1)*(n+2)` -/
def P15765555818812027180.Spec : Prop :=
  ∀ n, P15765555818812027180.a n = A064056 n

end A064056

/-!
# A064057: Eighth column of quintinomial coefficients.

The programs for A064057, the canonical program `A064057.P9190642403306300778` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064057 has offset 0).

The definition of A064057 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064057.P9190642403306300778

`ogf((2+2x-8x^2+7x^3-2x^4)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A064057

/-- `ogf((2+2x-8x^2+7x^3-2x^4)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` -/
def P9190642403306300778.Spec : Prop :=
  ∀ n, P9190642403306300778.a n = A064057 n

theorem P9190642403306300778.correct : P9190642403306300778.Spec := by
  intro n
  simp only [A064057]

end A064057

/-! ## A064057.P17916192335594862832

`∑[∑[∑[A063258(n)-2]]]`
-/

namespace A064057.P17916192335594862832
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063258 n - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064057.P17916192335594862832

namespace A064057

/-- `∑[∑[∑[A063258(n)-2]]]` -/
def P17916192335594862832.Spec : Prop :=
  ∀ n, P17916192335594862832.a n = A064057 n

end A064057

/-! ## A064057.P7434330927946163328

`∑[A064056(n)-∑[n+1]]`
-/

namespace A064057.P7434330927946163328
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064056 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064057.P7434330927946163328

namespace A064057

/-- `∑[A064056(n)-∑[n+1]]` -/
def P7434330927946163328.Spec : Prop :=
  ∀ n, P7434330927946163328.a n = A064057 n

end A064057

/-! ## A064057.P8652112245408014862

`∑[∑[A027659(n)-2*(n+1)]]`
-/

namespace A064057.P8652112245408014862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027659 n - (2 * (n + 1) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064057.P8652112245408014862

namespace A064057

/-- `∑[∑[A027659(n)-2*(n+1)]]` -/
def P8652112245408014862.Spec : Prop :=
  ∀ n, P8652112245408014862.a n = A064057 n

end A064057

/-! ## A064057.P16620064212680074113

`A063263(n)-A000581(n+8)`
-/

namespace A064057.P16620064212680074113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063263 n - A000581 (n + 8)

end

end A064057.P16620064212680074113

namespace A064057

/-- `A063263(n)-A000581(n+8)` -/
def P16620064212680074113.Spec : Prop :=
  ∀ n, P16620064212680074113.a n = A064057 n

end A064057

/-! ## A064057.P14607765321555515021

`A063263(n)-∑[A000580(n+7)]`
-/

namespace A064057.P14607765321555515021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063263 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064057.P14607765321555515021

namespace A064057

/-- `A063263(n)-∑[A000580(n+7)]` -/
def P14607765321555515021.Spec : Prop :=
  ∀ n, P14607765321555515021.a n = A064057 n

end A064057

/-! ## A064057.P98863601236897601

`A005720(n+2)+A000580(n+7)`
-/

namespace A064057.P98863601236897601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005720 (n + 2) + A000580 (n + 7)

end

end A064057.P98863601236897601

namespace A064057

/-- `A005720(n+2)+A000580(n+7)` -/
def P98863601236897601.Spec : Prop :=
  ∀ n, P98863601236897601.a n = A064057 n

end A064057

/-! ## A064057.P3878288796667219566

`A278670(n+1)+∑[A278670(n+1)+A000292(n)]`
-/

namespace A064057.P3878288796667219566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278670 (n + 1) + A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278670 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064057.P3878288796667219566

namespace A064057

/-- `A278670(n+1)+∑[A278670(n+1)+A000292(n)]` -/
def P3878288796667219566.Spec : Prop :=
  ∀ n, P3878288796667219566.a n = A064057 n

end A064057

/-! ## A064057.P4304797179894877303

`A059585(n+1)+(n+1)*(n+2)`
-/

namespace A064057.P4304797179894877303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059585 (n + 1) + ((n + 1) * (n + 2) : ℤ)

end

end A064057.P4304797179894877303

namespace A064057

/-- `A059585(n+1)+(n+1)*(n+2)` -/
def P4304797179894877303.Spec : Prop :=
  ∀ n, P4304797179894877303.a n = A064057 n

end A064057

/-! ## A064057.P17342163049537202975

`A000580(n+8)-A002411(n+2)`
-/

namespace A064057.P17342163049537202975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 8) - A002411 (n + 2)

end

end A064057.P17342163049537202975

namespace A064057

/-- `A000580(n+8)-A002411(n+2)` -/
def P17342163049537202975.Spec : Prop :=
  ∀ n, P17342163049537202975.a n = A064057 n

end A064057

/-! ## A064057.P3132239403003012209

`A063262(n)-Δ[A000914(n)]`
-/

namespace A064057.P3132239403003012209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063262 n - (f1 (n + 1) - f1 n)

end

end A064057.P3132239403003012209

namespace A064057

/-- `A063262(n)-Δ[A000914(n)]` -/
def P3132239403003012209.Spec : Prop :=
  ∀ n, P3132239403003012209.a n = A064057 n

end A064057

/-!
# A064058: Ninth column of quintinomial coefficients.

The programs for A064058, the canonical program `A064058.P300498006429403485` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064058 has offset 0).

The definition of A064058 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064058.P300498006429403485

`∑[A064057(n)-C(n+3, 3)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064058

/-- `∑[A064057(n)-C(n+3, 3)]` -/
def P300498006429403485.Spec : Prop :=
  ∀ n, P300498006429403485.a n = A064058 n

theorem P300498006429403485.correct : P300498006429403485.Spec := by
  intro n
  simp only [A064058]

end A064058

/-! ## A064058.P11149539532884247374

`A063264(n)-A000582(n+9)`
-/

namespace A064058.P11149539532884247374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063264 n - A000582 (n + 9)

end

end A064058.P11149539532884247374

namespace A064058

/-- `A063264(n)-A000582(n+9)` -/
def P11149539532884247374.Spec : Prop :=
  ∀ n, P11149539532884247374.a n = A064058 n

end A064058

/-! ## A064058.P4317317105261629382

`∑[A064057(n)-sqrt(A001249(n))]`
-/

namespace A064058.P4317317105261629382
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A064057 n : ℝ) - Real.sqrt (A001249 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064058.P4317317105261629382

namespace A064058

/-- `∑[A064057(n)-sqrt(A001249(n))]` -/
def P4317317105261629382.Spec : Prop :=
  ∀ n, P4317317105261629382.a n = (A064058 n : ℝ)

end A064058

/-! ## A064058.P8918902417889732621

`∑[A064057(n)-A000292(n+1)]`
-/

namespace A064058.P8918902417889732621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064057 n - A000292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064058.P8918902417889732621

namespace A064058

/-- `∑[A064057(n)-A000292(n+1)]` -/
def P8918902417889732621.Spec : Prop :=
  ∀ n, P8918902417889732621.a n = A064058 n

end A064058

/-! ## A064058.P12661002432825423849

`∑[A001919(n+3)]+A034263(n)-A001919(n+3)`
-/

namespace A064058.P12661002432825423849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001919 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A034263 n - A001919 (n + 3))

end

end A064058.P12661002432825423849

namespace A064058

/-- `∑[A001919(n+3)]+A034263(n)-A001919(n+3)` -/
def P12661002432825423849.Spec : Prop :=
  ∀ n, P12661002432825423849.a n = A064058 n

end A064058

/-! ## A064058.P4968059915247396141

`∑[A062990(n)-Δ[A033488(n)]]`
-/

namespace A064058.P4968059915247396141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033488 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062990 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064058.P4968059915247396141

namespace A064058

/-- `∑[A062990(n)-Δ[A033488(n)]]` -/
def P4968059915247396141.Spec : Prop :=
  ∀ n, P4968059915247396141.a n = A064058 n

end A064058

/-! ## A064058.P6968086341129402926

`∑[A062990(n)]-A033488(n+1)`
-/

namespace A064058.P6968086341129402926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A033488 (n + 1)

end

end A064058.P6968086341129402926

namespace A064058

/-- `∑[A062990(n)]-A033488(n+1)` -/
def P6968086341129402926.Spec : Prop :=
  ∀ n, P6968086341129402926.a n = A064058 n

end A064058

/-! ## A064058.P3402968478512118192

`Δ[A000582(n+9)-A034263(n)]`
-/

namespace A064058.P3402968478512118192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) - A034263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064058.P3402968478512118192

namespace A064058

/-- `Δ[A000582(n+9)-A034263(n)]` -/
def P3402968478512118192.Spec : Prop :=
  ∀ n, P3402968478512118192.a n = A064058 n

end A064058

/-! ## A064058.P12740339604082484745

`A000581(n+9)+A034263(n)-A034263(n+1)`
-/

namespace A064058.P12740339604082484745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 9) + (A034263 n - A034263 (n + 1))

end

end A064058.P12740339604082484745

namespace A064058

/-- `A000581(n+9)+A034263(n)-A034263(n+1)` -/
def P12740339604082484745.Spec : Prop :=
  ∀ n, P12740339604082484745.a n = A064058 n

end A064058

/-! ## A064058.P8024366669765187979

`∑[A064057(n)]-A000332(n+4)`
-/

namespace A064058.P8024366669765187979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000332 (n + 4)

end

end A064058.P8024366669765187979

namespace A064058

/-- `∑[A064057(n)]-A000332(n+4)` -/
def P8024366669765187979.Spec : Prop :=
  ∀ n, P8024366669765187979.a n = A064058 n

end A064058

/-!
# A064059: Seventh column of Catalan triangle A009766.

The programs for A064059, the canonical program `A064059.P12028697440315444429` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064059 has offset 0).

The definition of A064059 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064059.P5738608003274336932

`(n+1)*C(n+12, 5)/6`
-/

namespace A064059.P5738608003274336932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.choose (n + 12) 5 : ℚ) / 6

end

end A064059.P5738608003274336932

namespace A064059

/-- `(n+1)*C(n+12, 5)/6` -/
def P5738608003274336932.Spec : Prop :=
  ∀ n, P5738608003274336932.a n = (A064059 n : ℚ)

theorem P5738608003274336932.correct : P5738608003274336932.Spec := by
  intro n
  simp only [A064059, Nat.add_sub_cancel, A064059.P5738608003274336932.a, A064059.P12028697440315444429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A064059

/-! ## A064059.P12028697440315444429

`C(n+13, 6)-2*C(n+12, 5)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A064059

/-- `C(n+13, 6)-2*C(n+12, 5)` -/
def P12028697440315444429.Spec : Prop :=
  ∀ n, P12028697440315444429.a n = A064059 n

theorem P12028697440315444429.correct : P12028697440315444429.Spec := by
  intro n
  simp only [A064059]

end A064059

/-! ## A064059.P4413117397441082436

`∑[A005557(n+1)]`
-/

namespace A064059.P4413117397441082436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064059.P4413117397441082436

namespace A064059

/-- `∑[A005557(n+1)]` -/
def P4413117397441082436.Spec : Prop :=
  ∀ n, P4413117397441082436.a n = A064059 n

end A064059

/-! ## A064059.P9780067702900014813

`∑[abs(Δ[A115130(n)])]`
-/

namespace A064059.P9780067702900014813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115130 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064059.P9780067702900014813

namespace A064059

/-- `∑[abs(Δ[A115130(n)])]` -/
def P9780067702900014813.Spec : Prop :=
  ∀ n, P9780067702900014813.a n = A064059 n

end A064059

/-! ## A064059.P3671449039906501748

`∑[A115130(n+1)-A115130(n)]`
-/

namespace A064059.P3671449039906501748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115130 (n + 1) - A115130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064059.P3671449039906501748

namespace A064059

/-- `∑[A115130(n+1)-A115130(n)]` -/
def P3671449039906501748.Spec : Prop :=
  ∀ n, P3671449039906501748.a n = A064059 n

end A064059

/-! ## A064059.P5783253772957505062

`∑[A000389(n+11)-Δ[A000389(n+11)]]`
-/

namespace A064059.P5783253772957505062
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 11)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 11) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064059.P5783253772957505062

namespace A064059

/-- `∑[A000389(n+11)-Δ[A000389(n+11)]]` -/
def P5783253772957505062.Spec : Prop :=
  ∀ n, P5783253772957505062.a n = A064059 n

end A064059

/-! ## A064059.P2082798129970037292

`A000579(n+12)-Δ[A000579(n+12)]`
-/

namespace A064059.P2082798129970037292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 12) - (f1 (n + 1) - f1 n)

end

end A064059.P2082798129970037292

namespace A064059

/-- `A000579(n+12)-Δ[A000579(n+12)]` -/
def P2082798129970037292.Spec : Prop :=
  ∀ n, P2082798129970037292.a n = A064059 n

theorem P2082798129970037292.correct : P2082798129970037292.Spec := by
  intro n
  simp only [A064059, Nat.add_sub_cancel, A064059.P2082798129970037292.f1, A064059.P2082798129970037292.a, A064059.P12028697440315444429.a, A000579, A000579.P13663713855180125612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A064059

/-! ## A064059.P6705441419956045185

`∑[record[A005557(A008611(n))]]`
-/

namespace A064059.P6705441419956045185
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005557 (A008611 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064059.P6705441419956045185

namespace A064059

/-- `∑[record[A005557(A008611(n))]]` -/
def P6705441419956045185.Spec : Prop :=
  ∀ n, P6705441419956045185.a n = A064059 n

end A064059

/-! ## A064059.P11830890299848307547

`∑[record[A005557(A008612(n))]]`
-/

namespace A064059.P11830890299848307547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005557 (A008612 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064059.P11830890299848307547

namespace A064059

/-- `∑[record[A005557(A008612(n))]]` -/
def P11830890299848307547.Spec : Prop :=
  ∀ n, P11830890299848307547.a n = A064059 n

end A064059

/-! ## A064059.P2636978059597978838

`A009766(eq[6, A002262(n)])`
-/

namespace A064059.P2636978059597978838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064059.P2636978059597978838

namespace A064059

/-- `A009766(eq[6, A002262(n)])` -/
def P2636978059597978838.Spec : Prop :=
  ∀ n, P2636978059597978838.a n = A064059 n

end A064059

/-! ## A064059.P16476088912226438248

`A009766(A000096(n+5)+7)`
-/

namespace A064059.P16476088912226438248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (A000096 (n + 5) + 7).toNat

end

end A064059.P16476088912226438248

namespace A064059

/-- `A009766(A000096(n+5)+7)` -/
def P16476088912226438248.Spec : Prop :=
  ∀ n, P16476088912226438248.a n = A064059 n

end A064059

/-! ## A064059.P5025109861040469194

`A033184(A000096(n+5)+n+2)`
-/

namespace A064059.P5025109861040469194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033184 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A064059.P5025109861040469194

namespace A064059

/-- `A033184(A000096(n+5)+n+2)` -/
def P5025109861040469194.Spec : Prop :=
  ∀ n, P5025109861040469194.a n = A064059 n

end A064059

/-!
# A064061: Eighth column of Catalan triangle A009766.

The programs for A064061, the canonical program `A064061.P10053624928706473267` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064061 has offset 0).

The definition of A064061 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064061.P180857538307653538

`(n+1)*C(n+14, 6)/7`
-/

namespace A064061.P180857538307653538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.choose (n + 14) 6 : ℚ) / 7

end

end A064061.P180857538307653538

namespace A064061

/-- `(n+1)*C(n+14, 6)/7` -/
def P180857538307653538.Spec : Prop :=
  ∀ n, P180857538307653538.a n = (A064061 n : ℚ)

theorem P180857538307653538.correct : P180857538307653538.Spec := by
  intro n
  simp only [A064061, Nat.add_sub_cancel, A064061.P180857538307653538.a, A064061.P10053624928706473267.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A064061

/-! ## A064061.P10053624928706473267

`C(n+13, 7)-C(n+13, 5)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A064061

/-- `C(n+13, 7)-C(n+13, 5)` -/
def P10053624928706473267.Spec : Prop :=
  ∀ n, P10053624928706473267.a n = A064061 n

theorem P10053624928706473267.correct : P10053624928706473267.Spec := by
  intro n
  simp only [A064061]

end A064061

/-! ## A064061.P2387178845322801041

`∑[A064059(n+1)]`
-/

namespace A064061.P2387178845322801041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064061.P2387178845322801041

namespace A064061

/-- `∑[A064059(n+1)]` -/
def P2387178845322801041.Spec : Prop :=
  ∀ n, P2387178845322801041.a n = A064061 n

end A064061

/-! ## A064061.P6093052310160860095

`∑[abs(Δ[A115132(n)])]`
-/

namespace A064061.P6093052310160860095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115132 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064061.P6093052310160860095

namespace A064061

/-- `∑[abs(Δ[A115132(n)])]` -/
def P6093052310160860095.Spec : Prop :=
  ∀ n, P6093052310160860095.a n = A064061 n

end A064061

/-! ## A064061.P6843448723092881167

`∑[record[A064059(abs(1-n))]]`
-/

namespace A064061.P6843448723092881167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064059 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064061.P6843448723092881167

namespace A064061

/-- `∑[record[A064059(abs(1-n))]]` -/
def P6843448723092881167.Spec : Prop :=
  ∀ n, P6843448723092881167.a n = A064061 n

end A064061

/-! ## A064061.P8364926526738957262

`∑[Δ[A115132(n)]%A124087(n)]`
-/

namespace A064061.P8364926526738957262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115132 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A124087 (n + 15))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064061.P8364926526738957262

namespace A064061

/-- `∑[Δ[A115132(n)]%A124087(n)]` -/
def P8364926526738957262.Spec : Prop :=
  ∀ n, P8364926526738957262.a n = A064061 n

end A064061

/-! ## A064061.P15893218896830470581

`∑[A115132(n+1)-A115132(n)]`
-/

namespace A064061.P15893218896830470581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115132 (n + 1) - A115132 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064061.P15893218896830470581

namespace A064061

/-- `∑[A115132(n+1)-A115132(n)]` -/
def P15893218896830470581.Spec : Prop :=
  ∀ n, P15893218896830470581.a n = A064061 n

end A064061

/-! ## A064061.P15771972438778557855

`A008315(eq[7, n%floor(sqrt(n+1))])`
-/

namespace A064061.P15771972438778557855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.sqrt (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A064061.P15771972438778557855

namespace A064061

/-- `A008315(eq[7, n%floor(sqrt(n+1))])` -/
def P15771972438778557855.Spec : Prop :=
  ∀ n, P15771972438778557855.a n = A064061 n

end A064061

/-! ## A064061.P9060542189582256011

`∑[A214292(A167499(n+11))]`
-/

namespace A064061.P9060542189582256011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214292 (A167499 (n + 11)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064061.P9060542189582256011

namespace A064061

/-- `∑[A214292(A167499(n+11))]` -/
def P9060542189582256011.Spec : Prop :=
  ∀ n, P9060542189582256011.a n = A064061 n

end A064061

/-! ## A064061.P12771742920237227623

`A053121(A000217(n+14)+n)`
-/

namespace A064061.P12771742920237227623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 (A000217 (n + 14) + (n : ℤ)).toNat

end

end A064061.P12771742920237227623

namespace A064061

/-- `A053121(A000217(n+14)+n)` -/
def P12771742920237227623.Spec : Prop :=
  ∀ n, P12771742920237227623.a n = A064061 n

end A064061

/-! ## A064061.P12048890469743030638

`A009766(A000217(n+7)+7)`
-/

namespace A064061.P12048890469743030638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (A000217 (n + 7) + 7).toNat

end

end A064061.P12048890469743030638

namespace A064061

/-- `A009766(A000217(n+7)+7)` -/
def P12048890469743030638.Spec : Prop :=
  ∀ n, P12048890469743030638.a n = A064061 n

end A064061

/-! ## A064061.P15833213808523045957

`A009766(A055999(n+4)+13)`
-/

namespace A064061.P15833213808523045957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (A055999 (n + 4) + 13).toNat

end

end A064061.P15833213808523045957

namespace A064061

/-- `A009766(A055999(n+4)+13)` -/
def P15833213808523045957.Spec : Prop :=
  ∀ n, P15833213808523045957.a n = A064061 n

end A064061

/-! ## A064061.P17634623837473558669

`A033184(A000096(n+7)-6)`
-/

namespace A064061.P17634623837473558669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033184 (A000096 (n + 7) - 6).toNat

end

end A064061.P17634623837473558669

namespace A064061

/-- `A033184(A000096(n+7)-6)` -/
def P17634623837473558669.Spec : Prop :=
  ∀ n, P17634623837473558669.a n = A064061 n

end A064061

/-! ## A064061.P2651548241449182425

`A033184(A000217(n+7)+n+1)`
-/

namespace A064061.P2651548241449182425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033184 (A000217 (n + 7) + (n + 1 : ℤ)).toNat

end

end A064061.P2651548241449182425

namespace A064061

/-- `A033184(A000217(n+7)+n+1)` -/
def P2651548241449182425.Spec : Prop :=
  ∀ n, P2651548241449182425.a n = A064061 n

end A064061

/-!
# A064062: Generalized Catalan numbers C(2; n).

The programs for A064062, the canonical program `A064062.P2466146061458098928` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064062 has offset 0).

The definition of A064062 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064062.P2713758949486645272

`abs(A114191(n))`
-/

namespace A064062.P2713758949486645272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A114191 n|

end

end A064062.P2713758949486645272

namespace A064062

/-- `abs(A114191(n))` -/
def P2713758949486645272.Spec : Prop :=
  ∀ n, P2713758949486645272.a n = A064062 n

end A064062

/-! ## A064062.P1043276742044879962

`A115193(∑[n])`
-/

namespace A064062.P1043276742044879962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115193 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064062.P1043276742044879962

namespace A064062

/-- `A115193(∑[n])` -/
def P1043276742044879962.Spec : Prop :=
  ∀ n, P1043276742044879962.a n = A064062 n

end A064062

/-! ## A064062.P2466146061458098928

`A062992((n-1)%(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064062

/-- `A062992((n-1)%(n+1))` -/
def P2466146061458098928.Spec : Prop :=
  ∀ n, P2466146061458098928.a n = A064062 n

theorem P2466146061458098928.correct : P2466146061458098928.Spec := by
  intro n
  simp only [A064062]

end A064062

/-! ## A064062.P14864339024846118777

`A025225(n)-a(n-1)` with `a(0)=1`
-/

namespace A064062.P14864339024846118777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025225 n - a (n - 1)

end

end A064062.P14864339024846118777

namespace A064062

/-- `A025225(n)-a(n-1)` -/
def P14864339024846118777.Spec : Prop :=
  ∀ n, P14864339024846118777.a n = A064062 n

end A064062

/-! ## A064062.P18041025518104580970

`A115125(n)-a(n-1)` with `a(0)=1`
-/

namespace A064062.P18041025518104580970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A115125 n - a (n - 1)

end

end A064062.P18041025518104580970

namespace A064062

/-- `A115125(n)-a(n-1)` -/
def P18041025518104580970.Spec : Prop :=
  ∀ n, P18041025518104580970.a n = A064062 n

end A064062

/-! ## A064062.P952324873729673791

`2*A052701(n)-a(n-1)` with `a(0)=1`
-/

namespace A064062.P952324873729673791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A052701 n - a (n - 1)

end

end A064062.P952324873729673791

namespace A064062

/-- `2*A052701(n)-a(n-1)` -/
def P952324873729673791.Spec : Prop :=
  ∀ n, P952324873729673791.a n = A064062 n

end A064062

/-! ## A064062.P269623084328463870

`∑{#}[n, A094385(C(n+1, 2)+#)]`
-/

namespace A064062.P269623084328463870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A094385 (Nat.choose (n + 1) 2 + k)

end

end A064062.P269623084328463870

namespace A064062

/-- `∑{#}[n, A094385(C(n+1, 2)+#)]` -/
def P269623084328463870.Spec : Prop :=
  ∀ n, P269623084328463870.a n = A064062 n

end A064062

/-! ## A064062.P15573279113951808649

`A062992(A028310(n)-1)`
-/

namespace A064062.P15573279113951808649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062992 (A028310 n - 1).toNat

end

end A064062.P15573279113951808649

namespace A064062

/-- `A062992(A028310(n)-1)` -/
def P15573279113951808649.Spec : Prop :=
  ∀ n, P15573279113951808649.a n = A064062 n

end A064062

/-! ## A064062.P10369082404830661087

`or(1, A115193(A000124(n)))`
-/

namespace A064062.P10369082404830661087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A115193 (A000124 n).toNat)

end

end A064062.P10369082404830661087

namespace A064062

/-- `or(1, A115193(A000124(n)))` -/
def P10369082404830661087.Spec : Prop :=
  ∀ n, P10369082404830661087.a n = A064062 n

end A064062

/-! ## A064062.P16807767205213276441

`or(1, A115193(A000217(n)))`
-/

namespace A064062.P16807767205213276441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A115193 (A000217 n).toNat)

end

end A064062.P16807767205213276441

namespace A064062

/-- `or(1, A115193(A000217(n)))` -/
def P16807767205213276441.Spec : Prop :=
  ∀ n, P16807767205213276441.a n = A064062 n

end A064062

/-! ## A064062.P5165870036223896138

`A062992(n-A057427(n))`
-/

namespace A064062.P5165870036223896138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062992 ((n : ℤ) - A057427 n).toNat

end

end A064062.P5165870036223896138

namespace A064062

/-- `A062992(n-A057427(n))` -/
def P5165870036223896138.Spec : Prop :=
  ∀ n, P5165870036223896138.a n = A064062 n

end A064062

/-! ## A064062.P677871589018797321

`lcm(Δ[A008611(n)], A114191(n))`
-/

namespace A064062.P677871589018797321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A114191 n)

end

end A064062.P677871589018797321

namespace A064062

/-- `lcm(Δ[A008611(n)], A114191(n))` -/
def P677871589018797321.Spec : Prop :=
  ∀ n, (P677871589018797321.a n : ℤ) = A064062 n

end A064062

/-! ## A064062.P14917117042270856744

`gcd(A008683(A000118(n)), A114191(n))`
-/

namespace A064062.P14917117042270856744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (A000118 n).toNat) (A114191 n)

end

end A064062.P14917117042270856744

namespace A064062

/-- `gcd(A008683(A000118(n)), A114191(n))` -/
def P14917117042270856744.Spec : Prop :=
  ∀ n, (P14917117042270856744.a n : ℤ) = A064062 n

end A064062

/-! ## A064062.P4104344347983490414

`A033999(n)²*A115193(A000124(n))`
-/

namespace A064062.P4104344347983490414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A115193 (A000124 n).toNat

end

end A064062.P4104344347983490414

namespace A064062

/-- `A033999(n)²*A115193(A000124(n))` -/
def P4104344347983490414.Spec : Prop :=
  ∀ n, P4104344347983490414.a n = A064062 n

end A064062

/-! ## A064062.P5906781304628106860

`A115193(A000217(n))+A000035(2*n)`
-/

namespace A064062.P5906781304628106860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115193 (A000217 n).toNat + A000035 (2 * n)

end

end A064062.P5906781304628106860

namespace A064062

/-- `A115193(A000217(n))+A000035(2*n)` -/
def P5906781304628106860.Spec : Prop :=
  ∀ n, P5906781304628106860.a n = A064062 n

end A064062

/-! ## A064062.P17284700787219741972

`A110508(n)/A114190(n)*A114191(n)`
-/

namespace A064062.P17284700787219741972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110508 n : ℚ) / (A114190 n : ℚ) * (A114191 n : ℚ)

end

end A064062.P17284700787219741972

namespace A064062

/-- `A110508(n)/A114190(n)*A114191(n)` -/
def P17284700787219741972.Spec : Prop :=
  ∀ n, P17284700787219741972.a n = (A064062 n : ℚ)

end A064062

/-! ## A064062.P6438650905763234098

`abs(A114189(∑[n]))`
-/

namespace A064062.P6438650905763234098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A114189 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A064062.P6438650905763234098

namespace A064062

/-- `abs(A114189(∑[n]))` -/
def P6438650905763234098.Spec : Prop :=
  ∀ n, P6438650905763234098.a n = A064062 n

end A064062

/-! ## A064062.P6436898521714684283

`abs(∑[A122440(∑[n])])`
-/

namespace A064062.P6436898521714684283
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122440 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A064062.P6436898521714684283

namespace A064062

/-- `abs(∑[A122440(∑[n])])` -/
def P6436898521714684283.Spec : Prop :=
  ∀ n, P6436898521714684283.a n = A064062 n

end A064062

/-! ## A064062.P2754032001527041809

`A025225(n+1)-A062992(n)`
-/

namespace A064062.P2754032001527041809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025225 (n + 1) - A062992 n

end

end A064062.P2754032001527041809

namespace A064062

/-- `A025225(n+1)-A062992(n)` -/
def P2754032001527041809.Spec : Prop :=
  ∀ n, P2754032001527041809.a n = A064062 n

end A064062

/-! ## A064062.P4378639943290140140

`2*A119259(n)-A178792(n)`
-/

namespace A064062.P4378639943290140140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A119259 n - A178792 n

end

end A064062.P4378639943290140140

namespace A064062

/-- `2*A119259(n)-A178792(n)` -/
def P4378639943290140140.Spec : Prop :=
  ∀ n, P4378639943290140140.a n = A064062 n

end A064062

/-!
# A064063: Generalized Catalan numbers C(3; n).

The programs for A064063, there is no canonical definition to state claims against.
-/

/-! ## A064063.P10601461154850000448

`A110519(∑[n])`
-/

namespace A064063.P10601461154850000448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110519 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064063.P10601461154850000448

/-! ## A064063.P3765413945424502411

`or(A000007(n), A110519(A000217(n)))`
-/

namespace A064063.P3765413945424502411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A110519 (A000217 n).toNat)

end

end A064063.P3765413945424502411

/-! ## A064063.P13591661084540048831

`A110519(A000217(n))+A000007(n+1)`
-/

namespace A064063.P13591661084540048831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110519 (A000217 n).toNat + A000007 (n + 1)

end

end A064063.P13591661084540048831

/-! ## A064063.P1021799985409751858

`A001263(A000124(n))*A110519(A000217(n))`
-/

namespace A064063.P1021799985409751858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A000124 n).toNat * A110519 (A000217 n).toNat

end

end A064063.P1021799985409751858

/-! ## A064063.P5149765627145188893

`A007318(A000096(n))*A110519(A000217(n))`
-/

namespace A064063.P5149765627145188893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A110519 (A000217 n).toNat

end

end A064063.P5149765627145188893

/-! ## A064063.P5467021512650852722

`A068057(A110560(n))*A110519(A000217(n))`
-/

namespace A064063.P5467021512650852722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068057 (A110560 n).toNat * A110519 (A000217 n).toNat

end

end A064063.P5467021512650852722

/-! ## A064063.P14824272493959456387

`A110519(A000217(n))%A001576(n)²`
-/

namespace A064063.P14824272493959456387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110519 (A000217 n).toNat) (A001576 n ^ 2)

end

end A064063.P14824272493959456387

/-! ## A064063.P4287113366320904072

`A064094(A167614(n+2))`
-/

namespace A064063.P4287113366320904072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A167614 (n + 2)).toNat

end

end A064063.P4287113366320904072

/-! ## A064063.P13335512552548559723

`A064094(eq[3, A002262(n)])`
-/

namespace A064063.P13335512552548559723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064063.P13335512552548559723

/-! ## A064063.P7736617745345957778

`A064094(A000124(n+3)+2)`
-/

namespace A064063.P7736617745345957778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A000124 (n + 3) + 2).toNat

end

end A064063.P7736617745345957778

/-!
# A064064: n-th step is to add a(n) to each previous number a(k) (including itself, i.e., k <= n) to produce n+1 more terms of the sequence, starting with a(0)=1.

The programs for A064064, the canonical program `A064064.P18196454259524292323` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064064 has offset 0).

The definition of A064064 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064064.P5299487797150418298

`(A064002(n+1)+1)/2`
-/

namespace A064064.P5299487797150418298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064002 (n + 1) + 1 : ℚ) / 2

end

end A064064.P5299487797150418298

namespace A064064

/-- `(A064002(n+1)+1)/2` -/
def P5299487797150418298.Spec : Prop :=
  ∀ n, P5299487797150418298.a n = (A064064 n : ℚ)

theorem P5299487797150418298.correct : P5299487797150418298.Spec := by
  intro n
  simp only [A064064, Nat.add_sub_cancel, A064064.P5299487797150418298.a, A064064.P18196454259524292323.a, A002262, A002262.P17823619022233514403.a, A003056, A003056.P5318256527314048597.a, A064002, A064002.P15142336824653210743.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A064064

/-! ## A064064.P18196454259524292323

`a(A002262(n-1))+a(A003056(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064064

/-- `a(A002262(n-1))+a(A003056(n-1))` -/
def P18196454259524292323.Spec : Prop :=
  ∀ n, (P18196454259524292323.a n : ℤ) = A064064 n

theorem P18196454259524292323.correct : P18196454259524292323.Spec := by
  intro n
  simp only [A064064]

end A064064

/-! ## A064064.P13935816174756873339

`ceil(A064002(n+1)/2)`
-/

namespace A064064.P13935816174756873339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A064002 (n + 1) : ℚ) / 2⌉

end

end A064064.P13935816174756873339

namespace A064064

/-- `ceil(A064002(n+1)/2)` -/
def P13935816174756873339.Spec : Prop :=
  ∀ n, P13935816174756873339.a n = A064064 n

end A064064

/-! ## A064064.P1839297981831754679

`round(A064002(-xor(n, -1))/2)`
-/

namespace A064064.P1839297981831754679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A064002 (-Int.xor (n : ℤ) (-1)).toNat : ℚ) / 2)

end

end A064064.P1839297981831754679

namespace A064064

/-- `round(A064002(-xor(n, -1))/2)` -/
def P1839297981831754679.Spec : Prop :=
  ∀ n, P1839297981831754679.a n = A064064 n

end A064064

/-! ## A064064.P17329869935547167663

`round(A064002(Δ[n²]-n)/2)`
-/

namespace A064064.P17329869935547167663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A064002 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2)

end

end A064064.P17329869935547167663

namespace A064064

/-- `round(A064002(Δ[n²]-n)/2)` -/
def P17329869935547167663.Spec : Prop :=
  ∀ n, P17329869935547167663.a n = A064064 n

end A064064

/-! ## A064064.P2258828602198333143

`A000463(A064002(n+1))`
-/

namespace A064064.P2258828602198333143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A064002 (n + 1)).toNat

end

end A064064.P2258828602198333143

namespace A064064

/-- `A000463(A064002(n+1))` -/
def P2258828602198333143.Spec : Prop :=
  ∀ n, P2258828602198333143.a n = A064064 n

end A064064

/-! ## A064064.P5378826534902388406

`A001281(A064002(n+1)+1)`
-/

namespace A064064.P5378826534902388406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A064002 (n + 1) + 1).toNat

end

end A064064.P5378826534902388406

namespace A064064

/-- `A001281(A064002(n+1)+1)` -/
def P5378826534902388406.Spec : Prop :=
  ∀ n, P5378826534902388406.a n = A064064 n

end A064064

/-! ## A064064.P1363816581497993538

`A004525(A064002(n+1)+1)`
-/

namespace A064064.P1363816581497993538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A064002 (n + 1) + 1).toNat

end

end A064064.P1363816581497993538

namespace A064064

/-- `A004525(A064002(n+1)+1)` -/
def P1363816581497993538.Spec : Prop :=
  ∀ n, P1363816581497993538.a n = A064064 n

end A064064

/-! ## A064064.P7250681163953842532

`A004526(A064002(n+1)+1)`
-/

namespace A064064.P7250681163953842532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A064002 (n + 1) + 1).toNat

end

end A064064.P7250681163953842532

namespace A064064

/-- `A004526(A064002(n+1)+1)` -/
def P7250681163953842532.Spec : Prop :=
  ∀ n, P7250681163953842532.a n = A064064 n

end A064064

/-!
# A064065: n-th step is to add a(n) to each previous number a(k) (excluding itself, i.e., k < n) to produce n more terms of the sequence, starting with a(0)=0, a(1)=1.

The programs for A064065, there is no canonical definition to state claims against.
-/

/-! ## A064065.P6658367623944477809

`A064067(n)-A064066(n)`
-/

namespace A064065.P6658367623944477809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064067 n - A064066 n

end

end A064065.P6658367623944477809

/-! ## A064065.P7071436015211544113

`A064067(n)+A064066(n)*A064179(A000028(n+1))`
-/

namespace A064065.P7071436015211544113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064067 n + A064066 n * A064179 (A000028 (n + 1)).toNat

end

end A064065.P7071436015211544113

/-! ## A064065.P294708580509510407

`A064067(n)+A064066(n)*A164117(2*n+1)`
-/

namespace A064065.P294708580509510407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064067 n + A064066 n * A164117 (2 * n + 1)

end

end A064065.P294708580509510407

/-! ## A064065.P523035845186170749

`A055640(A265747(n)-(∑{digits}[n, #]-∏{digits}[n, #]))`
-/

namespace A064065.P523035845186170749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A265747 n - (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ))).toNat

end

end A064065.P523035845186170749

/-! ## A064065.P4476019073412355982

`A374209(A322701(n)+A066099(n+1))`
-/

namespace A064065.P4476019073412355982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374209 (A322701 n + A066099 (n + 1)).toNat

end

end A064065.P4476019073412355982

/-!
# A064066: n-th step is to add a(n) to each previous number a(k) (excluding itself, i.e., k < n) to produce n more terms of the sequence, starting with a(0)=1, a(1)=1.

The programs for A064066, there is no canonical definition to state claims against.
-/

/-! ## A064066.P17042262956256266194

`A064067(n)-A064065(n)`
-/

namespace A064066.P17042262956256266194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064067 n - A064065 n

end

end A064066.P17042262956256266194

/-! ## A064066.P5004957536512697867

`A064067(n)+A064065(n)*A332814(A332812(n+1))`
-/

namespace A064066.P5004957536512697867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064067 n + A064065 n * A332814 (A332812 (n + 1)).toNat

end

end A064066.P5004957536512697867

/-! ## A064066.P4393228904163937545

`A064067(n)-A125029(A264613(n+1)-A065033(n))`
-/

namespace A064066.P4393228904163937545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064067 n - A125029 (A264613 (n + 1) - A065033 n).toNat

end

end A064066.P4393228904163937545

/-! ## A064066.P11823005421270124722

`A076622(A210283(n)+A085881(n))`
-/

namespace A064066.P11823005421270124722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076622 (A210283 n + A085881 n).toNat

end

end A064066.P11823005421270124722

/-! ## A064066.P14938643339465364165

`A064067(n)-A001221(A222353(n+1)+2^n-1)`
-/

namespace A064066.P14938643339465364165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064067 n - A001221 (A222353 (n + 1) + ((2 ^ n : ℤ) - 1)).toNat

end

end A064066.P14938643339465364165

/-!
# A064067: n-th step is to add a(n) to each previous number a(k) (excluding itself, i.e., k < n) to produce n more terms of the sequence, starting with a(0)=1, a(1)=2.

The programs for A064067, there is no canonical definition to state claims against.
-/

/-! ## A064067.P9905351726817268861

`A064066(n)+A064065(n)`
-/

namespace A064067.P9905351726817268861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064066 n + A064065 n

end

end A064067.P9905351726817268861

/-!
# A064068: Generalized Euler number c(7,n).

The programs for A064068, there is no canonical definition to state claims against.
-/

/-! ## A064068.P7879001288764602001

`A349266(2*n)`
-/

namespace A064068.P7879001288764602001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349266 (2 * n)

end

end A064068.P7879001288764602001

/-!
# A064069: Generalized Euler number c(8,n).

The programs for A064069, there is no canonical definition to state claims against.
-/

/-! ## A064069.P6917422494077385324

`A349267(2*n)`
-/

namespace A064069.P6917422494077385324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349267 (2 * n)

end

end A064069.P6917422494077385324

/-! ## A064069.P9434478907223065125

`abs(A004171(2*n)*A188458(2*n))`
-/

namespace A064069.P9434478907223065125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004171 (2 * n) * A188458 (2 * n)|

end

end A064069.P9434478907223065125

/-!
# A064070: Generalized Euler number c(9,n).

The programs for A064070, there is no canonical definition to state claims against.
-/

/-! ## A064070.P6764410829533473444

`A349268(2*n)`
-/

namespace A064070.P6764410829533473444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349268 (2 * n)

end

end A064070.P6764410829533473444

/-! ## A064070.P99321148948022784

`record[A349268(ceil(sqrt(n))²-n)]`
-/

namespace A064070.P99321148948022784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349268 (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064070.P99321148948022784

/-!
# A064072: Generalized tangent number d(7,n).

The programs for A064072, there is no canonical definition to state claims against.
-/

/-! ## A064072.P3005990450584011146

`A349266(Δ[n²])`
-/

namespace A064072.P3005990450584011146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349266 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A064072.P3005990450584011146

/-! ## A064072.P2764872405453008864

`A235606(A055999(n+4))`
-/

namespace A064072.P2764872405453008864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235606 (A055999 (n + 4)).toNat

end

end A064072.P2764872405453008864

/-!
# A064073: Generalized tangent number d(8,n).

The programs for A064073, there is no canonical definition to state claims against.
-/

/-! ## A064073.P3413520750608361784

`2^(4*(n+1)-1)*A000464(n)`
-/

namespace A064073.P3413520750608361784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((4 * (n + 1) : ℤ) - 1 : ℤ) * (A000464 n : ℚ)

end

end A064073.P3413520750608361784

/-! ## A064073.P6072292805998194454

`A349267(2*n+1)`
-/

namespace A064073.P6072292805998194454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349267 (2 * n + 1)

end

end A064073.P6072292805998194454

/-! ## A064073.P7487425830921370805

`A235606(A134227(n+6)-1)`
-/

namespace A064073.P7487425830921370805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235606 (A134227 (n + 6) - 1).toNat

end

end A064073.P7487425830921370805

/-! ## A064073.P6146042281896848635

`A235606(A000124(n+8)-8)`
-/

namespace A064073.P6146042281896848635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235606 (A000124 (n + 8) - 8).toNat

end

end A064073.P6146042281896848635

/-! ## A064073.P7774684105227752062

`A000079(n+1)²*A079858(2*n+1)`
-/

namespace A064073.P7774684105227752062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) ^ 2 * A079858 (2 * n + 1)

end

end A064073.P7774684105227752062

/-!
# A064074: Generalized tangent number d(9,n).

The programs for A064074, there is no canonical definition to state claims against.
-/

/-! ## A064074.P17591962987728574894

`A349268(Δ[n²])`
-/

namespace A064074.P17591962987728574894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349268 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A064074.P17591962987728574894

/-! ## A064074.P3618260351839232677

`record[A349268(ceil(sqrt(n))²-n+1)]`
-/

namespace A064074.P3618260351839232677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349268 (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064074.P3618260351839232677

/-!
# A064076: Lesser of odd twin prime powers (greater = A064077).

The programs for A064076, there is no canonical definition to state claims against.
-/

/-! ## A064076.P13616950447955020956

`A064077(n+1)-2`
-/

namespace A064076.P13616950447955020956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064077 (n + 1) - 2

end

end A064076.P13616950447955020956

/-! ## A064076.P14624490740898439416

`2*A365416(n+1)-1`
-/

namespace A064076.P14624490740898439416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A365416 (n + 1) - 1

end

end A064076.P14624490740898439416

/-! ## A064076.P9311921480213792594

`A120431(n+3)`
-/

namespace A064076.P9311921480213792594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 3)

end

end A064076.P9311921480213792594

/-! ## A064076.P9484880783723739822

`A120432(3+n)-1`
-/

namespace A064076.P9484880783723739822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120432 (3 + n) - 1

end

end A064076.P9484880783723739822

/-! ## A064076.P6695927536379768157

`record[A120432(n+1)+or(1, -n)%2]`
-/

namespace A064076.P6695927536379768157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120432 (n + 1) + Int.tmod (Int.lor 1 (-(n : ℤ))) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064076.P6695927536379768157

/-! ## A064076.P837303676694469937

`record[A120431(A183041(n))]`
-/

namespace A064076.P837303676694469937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (A183041 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064076.P837303676694469937

/-! ## A064076.P893694564743341734

`∩[A185189(n+1)-2, A185189(n+1)]`
-/

namespace A064076.P893694564743341734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185189 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064076.P893694564743341734

/-! ## A064076.P17055403532331509666

`filter[A063464(n+2), A069513(#)]`
-/

namespace A064076.P17055403532331509666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063464 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A064076.P17055403532331509666

/-! ## A064076.P853061369282448016

`∩[A063464(n+1), A061345(n)]`
-/

namespace A064076.P853061369282448016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064076.P853061369282448016

/-! ## A064076.P12620421953871586263

`∩[A063464(n+1), A185189(n+1)]`
-/

namespace A064076.P12620421953871586263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064076.P12620421953871586263

/-! ## A064076.P7482486917168042985

`A004273(A365416(n+1))`
-/

namespace A064076.P7482486917168042985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A365416 (n + 1)).toNat

end

end A064076.P7482486917168042985

/-! ## A064076.P4664544146489594737

`A056617(A365416(n+1)-1)`
-/

namespace A064076.P4664544146489594737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056617 (A365416 (n + 1) - 1).toNat

end

end A064076.P4664544146489594737

/-! ## A064076.P1758385074686211087

`filter[A063464(n+1), A174275(#)]`
-/

namespace A064076.P1758385074686211087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174275 (f1 j).toNat = 1) n)

end

end A064076.P1758385074686211087

/-! ## A064076.P16654988954425799092

`A023444(A064077(n+1))`
-/

namespace A064076.P16654988954425799092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A064077 (n + 1)).toNat

end

end A064076.P16654988954425799092

/-! ## A064076.P8204177653890223163

`A014681(A120432(n+3))`
-/

namespace A064076.P8204177653890223163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A120432 (n + 3)).toNat

end

end A064076.P8204177653890223163

/-! ## A064076.P3809029434635575879

`record[A345993(A345990(n+5))]`
-/

namespace A064076.P3809029434635575879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345993 (A345990 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064076.P3809029434635575879

/-! ## A064076.P13042439808241907613

`filter[A063464(n+2), A010055(#)]`
-/

namespace A064076.P13042439808241907613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063464 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A064076.P13042439808241907613

/-! ## A064076.P13065167304341521902

`record[A345990(A345990(n+1))+2]`
-/

namespace A064076.P13065167304341521902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345990 (A345990 (n + 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064076.P13065167304341521902

/-!
# A064077: Greater of odd twin prime powers (lesser = A064076).

The programs for A064077, there is no canonical definition to state claims against.
-/

/-! ## A064077.P456180471482660104

`A064076(n+1)+2`
-/

namespace A064077.P456180471482660104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064076 (n + 1) + 2

end

end A064077.P456180471482660104

/-! ## A064077.P9305011739032248024

`2*A365416(n+1)+1`
-/

namespace A064077.P9305011739032248024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A365416 (n + 1) + 1

end

end A064077.P9305011739032248024

/-! ## A064077.P1930393122933767461

`A120432(n+3)+1`
-/

namespace A064077.P1930393122933767461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120432 (n + 3) + 1

end

end A064077.P1930393122933767461

/-! ## A064077.P4932883047537345693

`A120431(n+3)+2`
-/

namespace A064077.P4932883047537345693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 3) + 2

end

end A064077.P4932883047537345693

/-! ## A064077.P5436037047233787816

`∩[A185189(n+1)+2, A185189(n+1)]`
-/

namespace A064077.P5436037047233787816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185189 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064077.P5436037047233787816

/-! ## A064077.P14387381049175428921

`∩[A063464(n+1)+2, A061345(n)]`
-/

namespace A064077.P14387381049175428921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063464 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064077.P14387381049175428921

/-! ## A064077.P1108769403443289392

`A056617(A365416(n+1))`
-/

namespace A064077.P1108769403443289392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056617 (A365416 (n + 1)).toNat

end

end A064077.P1108769403443289392

/-! ## A064077.P4380602587525074878

`A004273(A365416(n+1)+1)`
-/

namespace A064077.P4380602587525074878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A365416 (n + 1) + 1).toNat

end

end A064077.P4380602587525074878

/-! ## A064077.P11802257720210822821

`A009056(A064076(n+1))`
-/

namespace A064077.P11802257720210822821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A064076 (n + 1)).toNat

end

end A064077.P11802257720210822821

/-! ## A064077.P593340489483260111

`A004442(A120432(n+3))`
-/

namespace A064077.P593340489483260111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A120432 (n + 3)).toNat

end

end A064077.P593340489483260111

/-! ## A064077.P3068550527100164060

`A079578(A120431(n+3))`
-/

namespace A064077.P3068550527100164060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079578 (A120431 (n + 3)).toNat

end

end A064077.P3068550527100164060

/-! ## A064077.P79558567236707079

`record[A082081(A016825(n+1))]`
-/

namespace A064077.P79558567236707079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082081 (A016825 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064077.P79558567236707079

/-!
# A064078: Zsigmondy numbers for a = 2, b = 1: Zs(n, 2, 1) is the greatest divisor of 2^n - 1 (A000225) that is coprime to 2^m - 1 for all positive integers m < n.

The programs for A064078, there is no canonical definition to state claims against.
-/

/-! ## A064078.P2785244874844644939

`A019320(n+1)/gcd(n+1, A019320(n+1))`
-/

namespace A064078.P2785244874844644939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019320 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A019320 (n + 1)) : ℚ)

end

end A064078.P2785244874844644939

/-! ## A064078.P8703865322804112948

`A019320(n+1)/A250208(n+1)`
-/

namespace A064078.P8703865322804112948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019320 (n + 1) : ℚ) / (A250208 (n + 1) : ℚ)

end

end A064078.P8703865322804112948

/-! ## A064078.P18182392558240704878

`A323748(∑[n+1]+1)`
-/

namespace A064078.P18182392558240704878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323748 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A064078.P18182392558240704878

/-! ## A064078.P6752382827880446718

`A323748(A000124(n+1))%Δ[and(-2, 10^n)]`
-/

namespace A064078.P6752382827880446718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (10 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323748 (A000124 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A064078.P6752382827880446718

/-! ## A064078.P8298056089228881890

`A033999(n)²*A323748(A000124(n+1))`
-/

namespace A064078.P8298056089228881890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A323748 (A000124 (n + 1)).toNat

end

end A064078.P8298056089228881890

/-! ## A064078.P14914068786080977370

`A323748(A000124(n+1))%A000051(n)²`
-/

namespace A064078.P14914068786080977370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323748 (A000124 (n + 1)).toNat) (A000051 n ^ 2)

end

end A064078.P14914068786080977370

/-! ## A064078.P7103733383092781592

`A014963(A056901(n+1))*A323748(A000124(n+1))`
-/

namespace A064078.P7103733383092781592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A056901 (n + 1)).toNat * A323748 (A000124 (n + 1)).toNat

end

end A064078.P7103733383092781592

/-!
# A064079: Zsigmondy numbers for a = 3, b = 1: Zs(n, 3, 1) is the greatest divisor of 3^n - 1^n (A024023) that is relatively prime to 3^m - 1^m for all positive integers m < n.

The programs for A064079, there is no canonical definition to state claims against.
-/

/-! ## A064079.P10722468662888876602

`A323748(C(n+3, 2))`
-/

namespace A064079.P10722468662888876602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323748 (Nat.choose (n + 3) 2)

end

end A064079.P10722468662888876602

/-! ## A064079.P12151127430044515884

`A323748(∑[n+2]+1)`
-/

namespace A064079.P12151127430044515884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323748 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A064079.P12151127430044515884

/-! ## A064079.P11116825960527458736

`A059841(2*n)*A323748(A000217(n+2))`
-/

namespace A064079.P11116825960527458736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * n) * A323748 (A000217 (n + 2)).toNat

end

end A064079.P11116825960527458736

/-! ## A064079.P6094730064278547953

`and(A126646(2*(n+2)), A323748(A000217(n+2)))`
-/

namespace A064079.P6094730064278547953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 (2 * (n + 2))) (A323748 (A000217 (n + 2)).toNat)

end

end A064079.P6094730064278547953

/-! ## A064079.P3548655039718499002

`A109720(A072406(n))*A323748(A000217(n+2))`
-/

namespace A064079.P3548655039718499002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109720 (A072406 n).toNat * A323748 (A000217 (n + 2)).toNat

end

end A064079.P3548655039718499002

/-! ## A064079.P17802496306241984173

`A109720(A072404(n+1))*A323748(A000217(n+2))`
-/

namespace A064079.P17802496306241984173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109720 (A072404 (n + 1)).toNat * A323748 (A000217 (n + 2)).toNat

end

end A064079.P17802496306241984173

/-! ## A064079.P13343840240835003418

`A184303(A232753(n+1))*A323748(A000217(n+2))`
-/

namespace A064079.P13343840240835003418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (A232753 (n + 1)).toNat * A323748 (A000217 (n + 2)).toNat

end

end A064079.P13343840240835003418

/-!
# A064080: Zsigmondy numbers for a = 4, b = 1: Zs(n, 4, 1) is the greatest divisor of 4^n - 1^n (A024036) that is relatively prime to 4^m - 1^m for all positive integers m < n.

The programs for A064080, there is no canonical definition to state claims against.
-/

/-! ## A064080.P7198362897119228133

`A323748(∑[n+3]+2)`
-/

namespace A064080.P7198362897119228133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323748 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A064080.P7198362897119228133

/-! ## A064080.P15887583226184491815

`lcm(n+1, A019322(n+1))/(n+1)`
-/

namespace A064080.P15887583226184491815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A019322 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A064080.P15887583226184491815

/-! ## A064080.P5146239210827223998

`A109395(A019322(n+1))`
-/

namespace A064080.P5146239210827223998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (A019322 (n + 1)).toNat

end

end A064080.P5146239210827223998

/-! ## A064080.P17304622090156670376

`lcm(A006530(A019322(n+1)), A112927(2*(n+1)))`
-/

namespace A064080.P17304622090156670376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006530 (A019322 (n + 1)).toNat) (A112927 (2 * (n + 1)))

end

end A064080.P17304622090156670376

/-!
# A064081: Zsigmondy numbers for a = 5, b = 1: Zs(n, 5, 1) is the greatest divisor of 5^n - 1^n (A024049) that is relatively prime to 5^m - 1^m for all positive integers m < n.

The programs for A064081, there is no canonical definition to state claims against.
-/

/-! ## A064081.P16702699557270527286

`A323748((n+3)²-∑[n+1])`
-/

namespace A064081.P16702699557270527286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323748 ((n + 3) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064081.P16702699557270527286

/-! ## A064081.P15789763148174852549

`A319677(A019323(n+1))`
-/

namespace A064081.P15789763148174852549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319677 (A019323 (n + 1)).toNat

end

end A064081.P15789763148174852549

/-!
# A064082: Zsigmondy numbers for a = 6, b = 1: Zs(n, 6, 1) is the greatest divisor of 6^n - 1^n (A024062) that is relatively prime to 6^m - 1^m for all positive integers m < n.

The programs for A064082, there is no canonical definition to state claims against.
-/

/-! ## A064082.P5047153870911295503

`A323748(A027379(n+3))`
-/

namespace A064082.P5047153870911295503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323748 (A027379 (n + 3)).toNat

end

end A064082.P5047153870911295503

/-! ## A064082.P6883942538880978865

`A323748(A055998(n+3))`
-/

namespace A064082.P6883942538880978865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323748 (A055998 (n + 3)).toNat

end

end A064082.P6883942538880978865

/-! ## A064082.P7141874856217481358

`A323748(A000124(n+5)-4)`
-/

namespace A064082.P7141874856217481358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323748 (A000124 (n + 5) - 4).toNat

end

end A064082.P7141874856217481358

/-! ## A064082.P17175993881263836544

`A323748(A000217(n+3)+2*(n+3))`
-/

namespace A064082.P17175993881263836544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323748 (A000217 (n + 3) + (2 * (n + 3) : ℤ)).toNat

end

end A064082.P17175993881263836544

/-! ## A064082.P12981080880778953405

`A323748(A016873(n+2)+A000217(n))`
-/

namespace A064082.P12981080880778953405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323748 (A016873 (n + 2) + A000217 n).toNat

end

end A064082.P12981080880778953405

/-!
# A064083: Zsigmondy numbers for a = 7, b = 1: Zs(n, 7, 1) is the greatest divisor of 7^n - 1^n (A024075) that is relatively prime to 7^m - 1^m for all positive integers m < n.

The programs for A064083, there is no canonical definition to state claims against.
-/

/-! ## A064083.P9069488995596880936

`A323748(A046691(n+4))`
-/

namespace A064083.P9069488995596880936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323748 (A046691 (n + 4)).toNat

end

end A064083.P9069488995596880936

/-! ## A064083.P8348256517520143567

`A323748(A052905(n+3)+1)`
-/

namespace A064083.P8348256517520143567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323748 (A052905 (n + 3) + 1).toNat

end

end A064083.P8348256517520143567

/-! ## A064083.P3140452467039229562

`A323748(A000217(n+6)-4)`
-/

namespace A064083.P3140452467039229562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323748 (A000217 (n + 6) - 4).toNat

end

end A064083.P3140452467039229562

/-! ## A064083.P13986127576827299207

`A323748(A000124(n+6)-5)`
-/

namespace A064083.P13986127576827299207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323748 (A000124 (n + 6) - 5).toNat

end

end A064083.P13986127576827299207

/-! ## A064083.P8156674759369455208

`A323748(A246172(n+2)+10)`
-/

namespace A064083.P8156674759369455208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323748 (A246172 (n + 2) + 10).toNat

end

end A064083.P8156674759369455208

/-!
# A064084: A multiplicative version of 2^n - 1 (A000225).

The programs for A064084, there is no canonical definition to state claims against.
-/

/-! ## A064084.P13078388580839957368

`A126646(n)/A064085(n+1)`
-/

namespace A064084.P13078388580839957368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126646 n : ℚ) / (A064085 (n + 1) : ℚ)

end

end A064084.P13078388580839957368

/-! ## A064084.P7821707361787511457

`∑[A000079(n)]/A064085(n+1)`
-/

namespace A064084.P7821707361787511457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A064085 (n + 1) : ℚ)

end

end A064084.P7821707361787511457

/-! ## A064084.P9575389170281979516

`A000225(n+1)/A064085(n+1)`
-/

namespace A064084.P9575389170281979516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 (n + 1) : ℚ) / (A064085 (n + 1) : ℚ)

end

end A064084.P9575389170281979516

/-! ## A064084.P15630126496596045686

`A316742(2*n)/A064085(n+1)`
-/

namespace A064084.P15630126496596045686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316742 (2 * n) : ℚ) / (A064085 (n + 1) : ℚ)

end

end A064084.P15630126496596045686

/-! ## A064084.P17971813628312092203

`(A000079(n+1)-1)/A064085(n+1)`
-/

namespace A064084.P17971813628312092203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) - 1 : ℚ) / (A064085 (n + 1) : ℚ)

end

end A064084.P17971813628312092203

/-! ## A064084.P3231824133448408730

`(A000295(n+1)+n+1)/A064085(n+1)`
-/

namespace A064084.P3231824133448408730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000295 (n + 1) + (n + 1 : ℤ) : ℚ) / (A064085 (n + 1) : ℚ)

end

end A064084.P3231824133448408730

/-!
# A064085: Quotient of A000225 and A064084.

The programs for A064085, there is no canonical definition to state claims against.
-/

/-! ## A064085.P36359936742502558

`A000225(n+1)/A064084(n+1)`
-/

namespace A064085.P36359936742502558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 (n + 1) : ℚ) / (A064084 (n + 1) : ℚ)

end

end A064085.P36359936742502558

/-! ## A064085.P7860213821061639747

`A126646(n)/A064084(n+1)`
-/

namespace A064085.P7860213821061639747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126646 n : ℚ) / (A064084 (n + 1) : ℚ)

end

end A064085.P7860213821061639747

/-! ## A064085.P2018870141600201992

`∑[A000079(n)]/A064084(n+1)`
-/

namespace A064085.P2018870141600201992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A064084 (n + 1) : ℚ)

end

end A064085.P2018870141600201992

/-! ## A064085.P11186947977740901167

`record[A077896(n)]/A064084(n+1)`
-/

namespace A064085.P11186947977740901167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077896 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A064084 (n + 1) : ℚ)

end

end A064085.P11186947977740901167

/-! ## A064085.P335991883860154347

`A077896(2*n)/A064084(n+1)`
-/

namespace A064085.P335991883860154347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077896 (2 * n) : ℚ) / (A064084 (n + 1) : ℚ)

end

end A064085.P335991883860154347

/-! ## A064085.P1296717952827069413

`A316742(2*n)/A064084(n+1)`
-/

namespace A064085.P1296717952827069413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316742 (2 * n) : ℚ) / (A064084 (n + 1) : ℚ)

end

end A064085.P1296717952827069413

/-! ## A064085.P13658870609544210314

`∑[A000051(n)-1]/A064084(n+1)`
-/

namespace A064085.P13658870609544210314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A064084 (n + 1) : ℚ)

end

end A064085.P13658870609544210314

/-! ## A064085.P1339384264783243387

`(A000079(n+1)-1)/A064084(n+1)`
-/

namespace A064085.P1339384264783243387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) - 1 : ℚ) / (A064084 (n + 1) : ℚ)

end

end A064085.P1339384264783243387

/-! ## A064085.P5208169775588864437

`(A000051(n+1)-2)/A064084(n+1)`
-/

namespace A064085.P5208169775588864437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000051 (n + 1) - 2 : ℚ) / (A064084 (n + 1) : ℚ)

end

end A064085.P5208169775588864437

/-! ## A064085.P11012486426454091103

`ceil((A000295(n+1)+1)/A064084(n+1))`
-/

namespace A064085.P11012486426454091103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000295 (n + 1) + 1 : ℚ) / (A064084 (n + 1) : ℚ)⌉

end

end A064085.P11012486426454091103

/-!
# A064086: Condensed version of A064085: all terms of A064085 with values greater than 1 (which coincides with all terms of A064085 with nonprime power index).

The programs for A064086, there is no canonical definition to state claims against.
-/

/-! ## A064086.P6916179850312875550

`A064085(A024619(n+1))`
-/

namespace A064086.P6916179850312875550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064085 (A024619 (n + 1)).toNat

end

end A064086.P6916179850312875550

/-! ## A064086.P10577273015988742959

`A064085(A361102(n+2))`
-/

namespace A064086.P10577273015988742959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064085 (A361102 (n + 2)).toNat

end

end A064086.P10577273015988742959

/-! ## A064086.P8261888784417027362

`A064085(lt[1, A066882(n)])`
-/

namespace A064086.P8261888784417027362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064085 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A064086.P8261888784417027362

/-! ## A064086.P15736399796849548521

`A064085(lt[1, A231813(n)])`
-/

namespace A064086.P15736399796849548521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064085 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A064086.P15736399796849548521

/-! ## A064086.P1715615111489090328

`A064085(A080765(n+1)+1)`
-/

namespace A064086.P1715615111489090328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064085 (A080765 (n + 1) + 1).toNat

end

end A064086.P1715615111489090328

/-! ## A064086.P5853740079969475970

`A064085(lt[1, A001221(n+1)]+1)`
-/

namespace A064086.P5853740079969475970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064085 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A064086.P5853740079969475970

/-! ## A064086.P1311093651071708369

`A064085(lt[1, A064085(n+1)]+1)`
-/

namespace A064086.P1311093651071708369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064085 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A064086.P1311093651071708369

/-! ## A064086.P10466401415116315828

`A064085(eq[1, A014963(n+2)]+2)`
-/

namespace A064086.P10466401415116315828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064085 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A064086.P10466401415116315828

/-! ## A064086.P5082027376238549798

`A064085(eq[1, ceil(2/A064085(n+1))]+1)`
-/

namespace A064086.P5082027376238549798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (A064085 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064085 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A064086.P5082027376238549798

/-!
# A064087: Generalized Catalan numbers C(4; n).

The programs for A064087, there is no canonical definition to state claims against.
-/

/-! ## A064087.P11576061814880803187

`A064094(eq[4, n-C(∑[char[∑[n]]], 2)])`
-/

namespace A064087.P11576061814880803187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064087.P11576061814880803187

/-! ## A064087.P1016609566712375228

`A064094(eq[4, A002262(n)])`
-/

namespace A064087.P1016609566712375228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064087.P1016609566712375228

/-! ## A064087.P14441550021371288337

`A064094(A000124(n+4)+3)`
-/

namespace A064087.P14441550021371288337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A000124 (n + 4) + 3).toNat

end

end A064087.P14441550021371288337

/-! ## A064087.P11024241686180008228

`A064094(A000096(n+3)+5)`
-/

namespace A064087.P11024241686180008228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A000096 (n + 3) + 5).toNat

end

end A064087.P11024241686180008228

/-! ## A064087.P17217956609482167053

`A064094(eq[5, A002260(n+1)])`
-/

namespace A064087.P17217956609482167053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064087.P17217956609482167053

/-! ## A064087.P6647065769241517856

`A064094(A000217(n+5)-1-n)`
-/

namespace A064087.P6647065769241517856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A000217 (n + 5) - 1 - (n : ℤ)).toNat

end

end A064087.P6647065769241517856

/-! ## A064087.P1726117127235130303

`A064094(Δ[A026054(n+3)]-(2*n+1))`
-/

namespace A064087.P1726117127235130303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (f1 (n + 1) - f1 n - (2 * n + 1 : ℤ)).toNat

end

end A064087.P1726117127235130303

/-!
# A064088: Generalized Catalan numbers C(5; n).

The programs for A064088, there is no canonical definition to state claims against.
-/

/-! ## A064088.P18441603044859356425

`A064094(A167499(n+4))`
-/

namespace A064088.P18441603044859356425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A167499 (n + 4)).toNat

end

end A064088.P18441603044859356425

/-! ## A064088.P704285976103927780

`A064094(A077169(n+6))`
-/

namespace A064088.P704285976103927780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A077169 (n + 6)).toNat

end

end A064088.P704285976103927780

/-! ## A064088.P1942274182968452988

`A064094(eq[5, A002262(n)])`
-/

namespace A064088.P1942274182968452988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064088.P1942274182968452988

/-! ## A064088.P9390599120073061334

`A064094(eq[6, A002260(n+1)])`
-/

namespace A064088.P9390599120073061334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064088.P9390599120073061334

/-! ## A064088.P8229605953680516187

`A064094(A000217(n+6)-(n+1))`
-/

namespace A064088.P8229605953680516187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A000217 (n + 6) - (n + 1 : ℤ)).toNat

end

end A064088.P8229605953680516187

/-! ## A064088.P8710947683063439427

`A064094(A167614(n+5)-4-n)`
-/

namespace A064088.P8710947683063439427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A167614 (n + 5) - 4 - (n : ℤ)).toNat

end

end A064088.P8710947683063439427

/-!
# A064089: Generalized Catalan numbers C(6; n).

The programs for A064089, there is no canonical definition to state claims against.
-/

/-! ## A064089.P12842736146573820801

`A064094(eq[6, A002262(n)])`
-/

namespace A064089.P12842736146573820801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064089.P12842736146573820801

/-! ## A064089.P4674043425704895620

`A064094(A167499(n+5)+1)`
-/

namespace A064089.P4674043425704895620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A167499 (n + 5) + 1).toNat

end

end A064089.P4674043425704895620

/-! ## A064089.P4286561575018122805

`A064094(A167487(n+5)-1)`
-/

namespace A064089.P4286561575018122805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A167487 (n + 5) - 1).toNat

end

end A064089.P4286561575018122805

/-! ## A064089.P6427192168469142774

`A064094(A167614(n+5)+3)`
-/

namespace A064089.P6427192168469142774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A167614 (n + 5) + 3).toNat

end

end A064089.P6427192168469142774

/-! ## A064089.P17900016724036290337

`A064094(A000096(n+5)+7)`
-/

namespace A064089.P17900016724036290337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A000096 (n + 5) + 7).toNat

end

end A064089.P17900016724036290337

/-! ## A064089.P14932715249193965052

`A064094(A056000(n+2)+16)`
-/

namespace A064089.P14932715249193965052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A056000 (n + 2) + 16).toNat

end

end A064089.P14932715249193965052

/-! ## A064089.P409807426022739228

`A064094(eq[8, A131818(n+2)])`
-/

namespace A064089.P409807426022739228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064089.P409807426022739228

/-!
# A064090: Generalized Catalan numbers C(7; n).

The programs for A064090, there is no canonical definition to state claims against.
-/

/-! ## A064090.P13872135061157366660

`A064094(A167487(n+6))`
-/

namespace A064090.P13872135061157366660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A167487 (n + 6)).toNat

end

end A064090.P13872135061157366660

/-! ## A064090.P1822227341359806895

`A064094(eq[7, A002262(n)])`
-/

namespace A064090.P1822227341359806895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064090.P1822227341359806895

/-! ## A064090.P18246903720354039268

`A064094(A167499(n+6)+2)`
-/

namespace A064090.P18246903720354039268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A167499 (n + 6) + 2).toNat

end

end A064090.P18246903720354039268

/-! ## A064090.P7279095758027443393

`A064094(A000124(n+7)+6)`
-/

namespace A064090.P7279095758027443393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A000124 (n + 7) + 6).toNat

end

end A064090.P7279095758027443393

/-! ## A064090.P8592791136285803750

`A064094(eq[8, A002260(n+1)])`
-/

namespace A064090.P8592791136285803750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064090.P8592791136285803750

/-!
# A064091: Generalized Catalan numbers C(8; n).

The programs for A064091, there is no canonical definition to state claims against.
-/

/-! ## A064091.P7698171856568350841

`A064094(eq[9, A002260(n+1)])`
-/

namespace A064091.P7698171856568350841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064091.P7698171856568350841

/-!
# A064092: Generalized Catalan numbers C(9; n).

The programs for A064092, there is no canonical definition to state claims against.
-/

/-! ## A064092.P7828300212488238812

`A064094(eq[9, A002262(n)])`
-/

namespace A064092.P7828300212488238812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064092.P7828300212488238812

/-! ## A064092.P2080607273099365599

`A064094(eq[9, A144328(n+1)])`
-/

namespace A064092.P2080607273099365599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064092.P2080607273099365599

/-! ## A064092.P9163085638722584166

`A064094(eq[10, A002260(n+1)])`
-/

namespace A064092.P9163085638722584166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064092.P9163085638722584166

/-!
# A064093: Generalized Catalan numbers C(10; n).

The programs for A064093, there is no canonical definition to state claims against.
-/

/-! ## A064093.P14828765094045475852

`A064094(eq[10, A002262(n)])`
-/

namespace A064093.P14828765094045475852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064093.P14828765094045475852

/-! ## A064093.P643884005512441088

`A064094(A000096(n+9)+11)`
-/

namespace A064093.P643884005512441088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (A000096 (n + 9) + 11).toNat

end

end A064093.P643884005512441088

/-! ## A064093.P18407843217644972935

`A064094(eq[10, A144328(n+1)])`
-/

namespace A064093.P18407843217644972935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064093.P18407843217644972935

/-! ## A064093.P1666454811566194414

`A064094(eq[11, A002260(n+1)])`
-/

namespace A064093.P1666454811566194414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A064093.P1666454811566194414

/-!
# A064094: Triangle composed of generalized Catalan numbers.

The programs for A064094, there is no canonical definition to state claims against.
-/

/-! ## A064094.P15747056972361453931

`A323206(abs(1-A056943(n)))`
-/

namespace A064094.P15747056972361453931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323206 |1 - A056943 n|.toNat

end

end A064094.P15747056972361453931

/-! ## A064094.P13975901136778992401

`A323206(A056943(n+1))`
-/

namespace A064094.P13975901136778992401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323206 (A056943 (n + 1)).toNat

end

end A064094.P13975901136778992401

/-! ## A064094.P17388580509032599395

`A323206(n-(A002262(n+1)+A002262(n)))`
-/

namespace A064094.P17388580509032599395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323206 ((n : ℤ) - (A002262 (n + 1) + A002262 n)).toNat

end

end A064094.P17388580509032599395

/-! ## A064094.P5091884930910827463

`A117923(A090182(n))`
-/

namespace A064094.P5091884930910827463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117923 (A090182 n).toNat

end

end A064094.P5091884930910827463

/-! ## A064094.P265383486586364271

`A057889(A008550(n)%A103412(3*n+4))`
-/

namespace A064094.P265383486586364271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (Int.tmod (A008550 n) (A103412 (3 * n + 4))).toNat

end

end A064094.P265383486586364271

/-!
# A064095: Row sums of triangle A064094.

The programs for A064095, there is no canonical definition to state claims against.
-/

/-! ## A064095.P14980850441391664349

`∑[abs(1-n)!-∑{e}[n^C(n, 5), #]]`
-/

namespace A064095.P14980850441391664349
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.choose n 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial |1 - (n : ℤ)|.toNat : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064095.P14980850441391664349

/-! ## A064095.P92952773239348886

`A127875(a(n-1)+1)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A064095.P92952773239348886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 5] fun n a =>
  A127875 (a (n - 1) + 1).toNat

end

end A064095.P92952773239348886

/-! ## A064095.P11695631019596191434

`∑[A002024(A126461(n))]`
-/

namespace A064095.P11695631019596191434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A126461 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064095.P11695631019596191434

/-!
# A064096: Fifth diagonal of triangle A064094.

The programs for A064096, the canonical program `A064096.P10751174025403048348` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064096 has offset 0).

The definition of A064096 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064096.P9047743350787639005

`ogf((1+10x+17x^2+2x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A064096.P9047743350787639005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, 17, 2] [1, -4, 6, -4, 1] n

end

end A064096.P9047743350787639005

namespace A064096

/-- `ogf((1+10x+17x^2+2x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P9047743350787639005.Spec : Prop :=
  ∀ n, P9047743350787639005.a n = A064096 n

end A064096

/-! ## A064096.P10751174025403048348

`(n+1)^3+2*n²*(2*n+1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A064096

/-- `(n+1)^3+2*n²*(2*n+1)` -/
def P10751174025403048348.Spec : Prop :=
  ∀ n, (P10751174025403048348.a n : ℤ) = A064096 n

theorem P10751174025403048348.correct : P10751174025403048348.Spec := by
  intro n
  simp only [A064096]

end A064096

/-! ## A064096.P15287091563904442187

`floor(A127876(n+1)+n²*(n+1)/2)`
-/

namespace A064096.P15287091563904442187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A127876 (n + 1) : ℚ) + (n ^ 2 * (n + 1) : ℚ) / 2⌋

end

end A064096.P15287091563904442187

namespace A064096

/-- `floor(A127876(n+1)+n²*(n+1)/2)` -/
def P15287091563904442187.Spec : Prop :=
  ∀ n, P15287091563904442187.a n = A064096 n

end A064096

/-! ## A064096.P7990298068575846128

`∑[A153780(n)+A122553(n)]`
-/

namespace A064096.P7990298068575846128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153780 n + A122553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064096.P7990298068575846128

namespace A064096

/-- `∑[A153780(n)+A122553(n)]` -/
def P7990298068575846128.Spec : Prop :=
  ∀ n, P7990298068575846128.a n = A064096 n

end A064096

/-! ## A064096.P14322457870145529774

`(A005902(n)+A004466(n))*((-1)^n)²`
-/

namespace A064096.P14322457870145529774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005902 n + A004466 n) * ((-1) ^ n) ^ 2

end

end A064096.P14322457870145529774

namespace A064096

/-- `(A005902(n)+A004466(n))*((-1)^n)²` -/
def P14322457870145529774.Spec : Prop :=
  ∀ n, P14322457870145529774.a n = A064096 n

end A064096

/-! ## A064096.P11194095857195673035

`or(A005902(n)+A004466(n), A010051(n+3))`
-/

namespace A064096.P11194095857195673035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005902 n + A004466 n) (A010051 (n + 3))

end

end A064096.P11194095857195673035

namespace A064096

/-- `or(A005902(n)+A004466(n), A010051(n+3))` -/
def P11194095857195673035.Spec : Prop :=
  ∀ n, P11194095857195673035.a n = A064096 n

end A064096

/-! ## A064096.P12050842333577369445

`(A005902(n)+A004466(n))%A000217(n+3)²`
-/

namespace A064096.P12050842333577369445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005902 n + A004466 n) (A000217 (n + 3) ^ 2)

end

end A064096.P12050842333577369445

namespace A064096

/-- `(A005902(n)+A004466(n))%A000217(n+3)²` -/
def P12050842333577369445.Spec : Prop :=
  ∀ n, P12050842333577369445.a n = A064096 n

end A064096

/-! ## A064096.P18332893727822624051

`(A033431(n+1)+A011379(2*n))/2`
-/

namespace A064096.P18332893727822624051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033431 (n + 1) + A011379 (2 * n) : ℚ) / 2

end

end A064096.P18332893727822624051

namespace A064096

/-- `(A033431(n+1)+A011379(2*n))/2` -/
def P18332893727822624051.Spec : Prop :=
  ∀ n, P18332893727822624051.a n = (A064096 n : ℚ)

theorem P18332893727822624051.correct : P18332893727822624051.Spec := by
  intro n
  simp only [A064096, Nat.add_sub_cancel, A064096.P18332893727822624051.a, A064096.P10751174025403048348.a, A011379, A011379.P13170028565952122956.a, A033431, A033431.P14261726496554658204.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064096

/-! ## A064096.P18104590865603036753

`record[(10*n+3)*A025581(n)+1]`
-/

namespace A064096.P18104590865603036753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n + 3 : ℤ) * A025581 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064096.P18104590865603036753

namespace A064096

/-- `record[(10*n+3)*A025581(n)+1]` -/
def P18104590865603036753.Spec : Prop :=
  ∀ n, P18104590865603036753.a n = A064096 n

end A064096

/-! ## A064096.P94693224950496960

`abs(2-(n+1)*A016885(n²))`
-/

namespace A064096.P94693224950496960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (n + 1 : ℤ) * A016885 (n ^ 2)|

end

end A064096.P94693224950496960

namespace A064096

/-- `abs(2-(n+1)*A016885(n²))` -/
def P94693224950496960.Spec : Prop :=
  ∀ n, P94693224950496960.a n = A064096 n

end A064096

/-!
# A064097: A quasi-logarithm defined inductively by a(1) = 0 and a(p) = 1 + a(p-1) if p is prime and a(n*m) = a(n) + a(m) if m,n > 1.

The programs for A064097, the canonical program `A064097.P17401718760467290084` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064097 has offset 1).

The definition of A064097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064097.P12119301300525058859

`A073933(n+1)-1`
-/

namespace A064097.P12119301300525058859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073933 (n + 1) - 1

end

end A064097.P12119301300525058859

namespace A064097

/-- `A073933(n+1)-1` -/
def P12119301300525058859.Spec : Prop :=
  ∀ n, P12119301300525058859.a n = A064097 (n + 1)

theorem P12119301300525058859.correct : P12119301300525058859.Spec := by
  intro n
  simp only [A064097, Nat.add_sub_cancel, A064097.P12119301300525058859.a, A064097.P17401718760467290084.a, A073933, A073933.P3226346954737411092.a, A171462, A171462.P186066025836437895.a, A052126, A052126.P1944428405920482243.a, A006530, A006530.P13372528560459906635.a, A070229, A070229.P5792893597916963980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064097

/-! ## A064097.P7596357096388061613

`1+a(A060681(n+1)-1)` with `a(0)=0, a(1)=1`
-/

namespace A064097.P7596357096388061613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (A060681 (n + 1) - 1).toNat

end

end A064097.P7596357096388061613

namespace A064097

/-- `1+a(A060681(n+1)-1)` -/
def P7596357096388061613.Spec : Prop :=
  ∀ n, (P7596357096388061613.a n : ℤ) = A064097 (n + 1)

end A064097

/-! ## A064097.P1582980493729295508

`A064415(n+1)+A329697(n+1)`
-/

namespace A064097.P1582980493729295508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (n + 1) + A329697 (n + 1)

end

end A064097.P1582980493729295508

namespace A064097

/-- `A064415(n+1)+A329697(n+1)` -/
def P1582980493729295508.Spec : Prop :=
  ∀ n, P1582980493729295508.a n = A064097 (n + 1)

theorem P1582980493729295508.correct : P1582980493729295508.Spec := by
  intro n
  simp only [A064097, Nat.add_sub_cancel, A064097.P1582980493729295508.a, A064097.P17401718760467290084.a, A064415, A064415.P3438679109517359530.a, A171462, A171462.P186066025836437895.a, A329697, A329697.P6355568551452954971.a, A052126, A052126.P1944428405920482243.a, A309243, A309243.P2615360336711731693.a, A006530, A006530.P13372528560459906635.a, A070229, A070229.P5792893597916963980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064097

/-! ## A064097.P11739640679916561132

`A323077(n+1)+A334202(n+1)`
-/

namespace A064097.P11739640679916561132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323077 (n + 1) + A334202 (n + 1)

end

end A064097.P11739640679916561132

namespace A064097

/-- `A323077(n+1)+A334202(n+1)` -/
def P11739640679916561132.Spec : Prop :=
  ∀ n, P11739640679916561132.a n = A064097 (n + 1)

theorem P11739640679916561132.correct : P11739640679916561132.Spec := by
  intro n
  simp only [A064097, Nat.add_sub_cancel, A064097.P11739640679916561132.a, A064097.P17401718760467290084.a, A171462, A171462.P186066025836437895.a, A323077, A323077.P1062725111045104431.a, A334202, A334202.P7627444287747604241.a, A052126, A052126.P1944428405920482243.a, A006530, A006530.P13372528560459906635.a, A070229, A070229.P5792893597916963980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064097

/-! ## A064097.P9689093011292992459

`∑[A334090(n+1)]`
-/

namespace A064097.P9689093011292992459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064097.P9689093011292992459

namespace A064097

/-- `∑[A334090(n+1)]` -/
def P9689093011292992459.Spec : Prop :=
  ∀ n, P9689093011292992459.a n = A064097 (n + 1)

end A064097

/-! ## A064097.P6373557767277161323

`A334203(2*(n+1))`
-/

namespace A064097.P6373557767277161323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334203 (2 * (n + 1))

end

end A064097.P6373557767277161323

namespace A064097

/-- `A334203(2*(n+1))` -/
def P6373557767277161323.Spec : Prop :=
  ∀ n, P6373557767277161323.a n = A064097 (n + 1)

end A064097

/-! ## A064097.P11522210648044119992

`∑{d}[n+1, A307742(#)]`
-/

namespace A064097.P11522210648044119992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307742 d

end

end A064097.P11522210648044119992

namespace A064097

/-- `∑{d}[n+1, A307742(#)]` -/
def P11522210648044119992.Spec : Prop :=
  ∀ n, P11522210648044119992.a n = A064097 (n + 1)

end A064097

/-! ## A064097.P17747405988574879231

`a(A060681(n+1)-1)+1` with `a(0)=0`
-/

namespace A064097.P17747405988574879231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A060681 (n + 1) - 1).toNat + 1

end

end A064097.P17747405988574879231

namespace A064097

/-- `a(A060681(n+1)-1)+1` -/
def P17747405988574879231.Spec : Prop :=
  ∀ n, (P17747405988574879231.a n : ℤ) = A064097 (n + 1)

end A064097

/-! ## A064097.P17401718760467290084

`1+a(A171462(n+1)-1)` with `a(0)=0`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A064097

/-- `1+a(A171462(n+1)-1)` -/
def P17401718760467290084.Spec : Prop :=
  ∀ n, (P17401718760467290084.a n : ℤ) = A064097 (n + 1)

theorem P17401718760467290084.correct : P17401718760467290084.Spec := by
  intro n
  simp only [A064097, Nat.add_sub_cancel]

end A064097

/-! ## A064097.P13381929884279735956

`a(n-A032742(n+1))+1` with `a(0)=0`
-/

namespace A064097.P13381929884279735956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A032742 (n + 1)).toNat + 1

end

end A064097.P13381929884279735956

namespace A064097

/-- `a(n-A032742(n+1))+1` -/
def P13381929884279735956.Spec : Prop :=
  ∀ n, (P13381929884279735956.a n : ℤ) = A064097 (n + 1)

end A064097

/-! ## A064097.P8268505920434442649

`1+a(n-A052126(n+1))` with `a(0)=0`
-/

namespace A064097.P8268505920434442649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a ((n : ℤ) - A052126 (n + 1)).toNat

end

end A064097.P8268505920434442649

namespace A064097

/-- `1+a(n-A052126(n+1))` -/
def P8268505920434442649.Spec : Prop :=
  ∀ n, (P8268505920434442649.a n : ℤ) = A064097 (n + 1)

theorem P8268505920434442649.correct : P8268505920434442649.Spec := by
  intro n
  simp only [A064097, Nat.add_sub_cancel, A064097.P8268505920434442649.a, A064097.P17401718760467290084.a, A052126, A052126.P1944428405920482243.a, A171462, A171462.P186066025836437895.a, A006530, A006530.P13372528560459906635.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064097

/-! ## A064097.P1423254831141205544

`A249738(2*A073933(n+1))`
-/

namespace A064097.P1423254831141205544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (2 * A073933 (n + 1)).toNat

end

end A064097.P1423254831141205544

namespace A064097

/-- `A249738(2*A073933(n+1))` -/
def P1423254831141205544.Spec : Prop :=
  ∀ n, P1423254831141205544.a n = A064097 (n + 1)

end A064097

/-! ## A064097.P10241163953993604031

`A076142(n+1)+A003313(n+1)`
-/

namespace A064097.P10241163953993604031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076142 (n + 1) + A003313 (n + 1)

end

end A064097.P10241163953993604031

namespace A064097

/-- `A076142(n+1)+A003313(n+1)` -/
def P10241163953993604031.Spec : Prop :=
  ∀ n, P10241163953993604031.a n = A064097 (n + 1)

end A064097

/-! ## A064097.P16435426229419560037

`A061373(n+1)-A054725(n+1)`
-/

namespace A064097.P16435426229419560037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061373 (n + 1) - A054725 (n + 1)

end

end A064097.P16435426229419560037

namespace A064097

/-- `A061373(n+1)-A054725(n+1)` -/
def P16435426229419560037.Spec : Prop :=
  ∀ n, P16435426229419560037.a n = A064097 (n + 1)

theorem P16435426229419560037.correct : P16435426229419560037.Spec := by
  intro n
  simp only [A064097, Nat.add_sub_cancel, A064097.P16435426229419560037.a, A064097.P17401718760467290084.a, A054725, A054725.P13629253926091839604.a, A061373, A061373.P17835350724076642860.a, A171462, A171462.P186066025836437895.a, A052126, A052126.P1944428405920482243.a, A309243, A309243.P2615360336711731693.a, A006530, A006530.P13372528560459906635.a, A070229, A070229.P5792893597916963980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064097

/-! ## A064097.P15247745379205490263

`A334863(n+1)-A334864(n+1)`
-/

namespace A064097.P15247745379205490263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334863 (n + 1) - A334864 (n + 1)

end

end A064097.P15247745379205490263

namespace A064097

/-- `A334863(n+1)-A334864(n+1)` -/
def P15247745379205490263.Spec : Prop :=
  ∀ n, P15247745379205490263.a n = A064097 (n + 1)

theorem P15247745379205490263.correct : P15247745379205490263.Spec := by
  intro n
  simp only [A064097, Nat.add_sub_cancel, A064097.P15247745379205490263.a, A064097.P17401718760467290084.a, A171462, A171462.P186066025836437895.a, A334863, A334863.P12100679385437782938.a, A334864, A334864.P1367221112009939634.a, A003961, A003961.P5996473960037614004.a, A052126, A052126.P1944428405920482243.a, A006530, A006530.P13372528560459906635.a, A253885, A253885.P16715555451856890624.a, A070229, A070229.P5792893597916963980.a, A243501, A243501.P10707292738867961998.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064097

/-! ## A064097.P8412356155131067027

`∑[A334195(n+1)+A334091(n+1)]`
-/

namespace A064097.P8412356155131067027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334195 (n + 1) + A334091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064097.P8412356155131067027

namespace A064097

/-- `∑[A334195(n+1)+A334091(n+1)]` -/
def P8412356155131067027.Spec : Prop :=
  ∀ n, P8412356155131067027.a n = A064097 (n + 1)

end A064097

/-! ## A064097.P14909344395345168720

`A249738(A073933(n+1)+A073933(n+1))`
-/

namespace A064097.P14909344395345168720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (A073933 (n + 1) + A073933 (n + 1)).toNat

end

end A064097.P14909344395345168720

namespace A064097

/-- `A249738(A073933(n+1)+A073933(n+1))` -/
def P14909344395345168720.Spec : Prop :=
  ∀ n, P14909344395345168720.a n = A064097 (n + 1)

end A064097

/-! ## A064097.P12851888853973291414

`A060681(A329697(n+1)+A061373(n+1))`
-/

namespace A064097.P12851888853973291414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A329697 (n + 1) + A061373 (n + 1)).toNat

end

end A064097.P12851888853973291414

namespace A064097

/-- `A060681(A329697(n+1)+A061373(n+1))` -/
def P12851888853973291414.Spec : Prop :=
  ∀ n, P12851888853973291414.a n = A064097 (n + 1)

end A064097

/-! ## A064097.P15749730917324864130

`A064415(n+1)+A334861(n+1)-A331410(n+1)`
-/

namespace A064097.P15749730917324864130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (n + 1) + (A334861 (n + 1) - A331410 (n + 1))

end

end A064097.P15749730917324864130

namespace A064097

/-- `A064415(n+1)+A334861(n+1)-A331410(n+1)` -/
def P15749730917324864130.Spec : Prop :=
  ∀ n, P15749730917324864130.a n = A064097 (n + 1)

theorem P15749730917324864130.correct : P15749730917324864130.Spec := by
  intro n
  simp only [A064097, Nat.add_sub_cancel, A064097.P15749730917324864130.a, A064097.P17401718760467290084.a, A064415, A064415.P3438679109517359530.a, A171462, A171462.P186066025836437895.a, A331410, A331410.P1765792121065572382.a, A334861, A334861.P8338568547344458298.a, A052126, A052126.P1944428405920482243.a, A087436, A087436.P13287701826401831056.a, A309243, A309243.P2615360336711731693.a, A329697, A329697.P6355568551452954971.a, A336467, A336467.P6879531493608964417.a, A000265, A000265.P16482698636471710744.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A006530, A006530.P13372528560459906635.a, A007814, A007814.P13537437864234730737.a, A206787, A206787.P5835391057460083436.a, A336651, A336651.P16001873672567347965.a, A001511, A001511.P17146462531039486101.a, A010684, A010684.P11440423886746696901.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A070229, A070229.P5792893597916963980.a, A204455, A204455.P9449319865665436464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064097

/-!
# A064098: a(n+1) = (a(n)^2 + a(n-1)^2)/a(n-2), with a(1) = a(2) = a(3) = 1.

The programs for A064098, the canonical program `A064098.P14924765170715774487` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064098 has offset 1).

The definition of A064098 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064098.P14924765170715774487

`3*a(n-1)*a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A064098

/-- `3*a(n-1)*a(n-2)-a(n-3)` -/
def P14924765170715774487.Spec : Prop :=
  ∀ n, P14924765170715774487.a n = A064098 (n + 1)

theorem P14924765170715774487.correct : P14924765170715774487.Spec := by
  intro n
  simp only [A064098, Nat.add_sub_cancel]

end A064098

/-! ## A064098.P14237384553098895003

`(a(n-1)²+a(n-2)²)/a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A064098.P14237384553098895003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (a (n - 1) ^ 2 + a (n - 2) ^ 2) / a (n - 3)

end

end A064098.P14237384553098895003

namespace A064098

/-- `(a(n-1)²+a(n-2)²)/a(n-3)` -/
def P14237384553098895003.Spec : Prop :=
  ∀ n, P14237384553098895003.a n = (A064098 (n + 1) : ℚ)

end A064098

/-! ## A064098.P14174119130466556807

`A061021(n)/3`
-/

namespace A064098.P14174119130466556807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061021 n : ℚ) / 3

end

end A064098.P14174119130466556807

namespace A064098

/-- `A061021(n)/3` -/
def P14174119130466556807.Spec : Prop :=
  ∀ n, P14174119130466556807.a n = (A064098 (n + 1) : ℚ)

end A064098

/-! ## A064098.P18346646431457812681

`sqrt(A072882(n+1))`
-/

namespace A064098.P18346646431457812681
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072882 (n + 1) : ℝ)

end

end A064098.P18346646431457812681

namespace A064098

/-- `sqrt(A072882(n+1))` -/
def P18346646431457812681.Spec : Prop :=
  ∀ n, P18346646431457812681.a n = (A064098 (n + 1) : ℝ)

end A064098

/-! ## A064098.P16433537565811979735

`gcd(A061021(n), A072882(n+1))`
-/

namespace A064098.P16433537565811979735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061021 n) (A072882 (n + 1))

end

end A064098.P16433537565811979735

namespace A064098

/-- `gcd(A061021(n), A072882(n+1))` -/
def P16433537565811979735.Spec : Prop :=
  ∀ n, (P16433537565811979735.a n : ℤ) = A064098 (n + 1)

end A064098

/-!
# A064099: a(n) = ceiling(log(3 + 2*n)/log(3)).

The programs for A064099, the canonical program `A064099.P18180227861605135739` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064099 has offset 0).

The definition of A064099 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(log(3+2*n)/log(3))` (program `A064099.P18180227861605135739`, by `A064099.P18180227861605135739.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064099.P18180227861605135739

`ceil(log(3+2*n)/log(3))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A064099

/-- `ceil(log(3+2*n)/log(3))` -/
def P18180227861605135739.Spec : Prop :=
  ∀ n, P18180227861605135739.a n = A064099 n

theorem P18180227861605135739.correct : P18180227861605135739.Spec := by
  intro n
  simp only [A064099]

end A064099

/-! ## A064099.P16105604764776493120

`A134021(n+1)`
-/

namespace A064099.P16105604764776493120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 (n + 1)

end

end A064099.P16105604764776493120

namespace A064099

/-- `A134021(n+1)` -/
def P16105604764776493120.Spec : Prop :=
  ∀ n, P16105604764776493120.a n = A064099 n

end A064099

/-! ## A064099.P10218294969294233711

`∑[char[∑[3*T(n-1,k)]]]` with `a(0)=0, a(1)=1`
-/

namespace A064099.P10218294969294233711
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f3 =>
  3 * SequenceMachineLib.triUp f3 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064099.P10218294969294233711

namespace A064099

/-- `∑[char[∑[3*T(n-1,k)]]]` -/
def P10218294969294233711.Spec : Prop :=
  ∀ n, (P10218294969294233711.a n : ℤ) = A064099 n

end A064099

/-! ## A064099.P10012915951515530054

`∑[char[∑{d}[3^n, #]]]+1`
-/

namespace A064099.P10012915951515530054
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A064099.P10012915951515530054

namespace A064099

/-- `∑[char[∑{d}[3^n, #]]]+1` -/
def P10012915951515530054.Spec : Prop :=
  ∀ n, (P10012915951515530054.a n : ℤ) = A064099 n

end A064099

/-! ## A064099.P15689649436346777214

`1+a(floor((n-1)/3))` with `a(0)=1`
-/

namespace A064099.P15689649436346777214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  1 + a ⌊((n : ℤ) - 1 : ℚ) / 3⌋.toNat

end

end A064099.P15689649436346777214

namespace A064099

/-- `1+a(floor((n-1)/3))` -/
def P15689649436346777214.Spec : Prop :=
  ∀ n, (P15689649436346777214.a n : ℤ) = A064099 n

end A064099

/-! ## A064099.P2848751524418528851

`a(ceil(n/3)-1)+1` with `a(0)=1`
-/

namespace A064099.P2848751524418528851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (⌈(n : ℚ) / 3⌉ - 1).toNat + 1

end

end A064099.P2848751524418528851

namespace A064099

/-- `a(ceil(n/3)-1)+1` -/
def P2848751524418528851.Spec : Prop :=
  ∀ n, (P2848751524418528851.a n : ℤ) = A064099 n

end A064099

/-! ## A064099.P14313904489082442231

`∑[∏{p}[2*n+1, val(#, 3)]]`
-/

namespace A064099.P14313904489082442231
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064099.P14313904489082442231

namespace A064099

/-- `∑[∏{p}[2*n+1, val(#, 3)]]` -/
def P14313904489082442231.Spec : Prop :=
  ∀ n, (P14313904489082442231.a n : ℤ) = A064099 n

end A064099

/-! ## A064099.P8762217979510585982

`∑[C(3, ∑{p}[2*n+1, #])]`
-/

namespace A064099.P8762217979510585982
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (∑ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064099.P8762217979510585982

namespace A064099

/-- `∑[C(3, ∑{p}[2*n+1, #])]` -/
def P8762217979510585982.Spec : Prop :=
  ∀ n, (P8762217979510585982.a n : ℤ) = A064099 n

end A064099

/-! ## A064099.P2563749980197694292

`∑[∏{p}[2*n+1, C(3, #)]]`
-/

namespace A064099.P2563749980197694292
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose 3 p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064099.P2563749980197694292

namespace A064099

/-- `∑[∏{p}[2*n+1, C(3, #)]]` -/
def P2563749980197694292.Spec : Prop :=
  ∀ n, (P2563749980197694292.a n : ℤ) = A064099 n

end A064099

/-! ## A064099.P826857468523027044

`∑[A113047(n)]`
-/

namespace A064099.P826857468523027044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064099.P826857468523027044

namespace A064099

/-- `∑[A113047(n)]` -/
def P826857468523027044.Spec : Prop :=
  ∀ n, P826857468523027044.a n = A064099 n

end A064099

/-! ## A064099.P4242878698538038673

`∑[char[A003462(n)]]`
-/

namespace A064099.P4242878698538038673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064099.P4242878698538038673

namespace A064099

/-- `∑[char[A003462(n)]]` -/
def P4242878698538038673.Spec : Prop :=
  ∀ n, (P4242878698538038673.a n : ℤ) = A064099 n

end A064099

/-! ## A064099.P14678735355876104887

`∑[char[A140313(n)]]`
-/

namespace A064099.P14678735355876104887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140313 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064099.P14678735355876104887

namespace A064099

/-- `∑[char[A140313(n)]]` -/
def P14678735355876104887.Spec : Prop :=
  ∀ n, (P14678735355876104887.a n : ℤ) = A064099 n

end A064099

/-! ## A064099.P11415194211601700546

`∑[char[A151904(n)]]`
-/

namespace A064099.P11415194211601700546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151904 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064099.P11415194211601700546

namespace A064099

/-- `∑[char[A151904(n)]]` -/
def P11415194211601700546.Spec : Prop :=
  ∀ n, (P11415194211601700546.a n : ℤ) = A064099 n

end A064099

/-! ## A064099.P9699235366302398876

`∑[A225569(2*n)]`
-/

namespace A064099.P9699235366302398876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225569 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064099.P9699235366302398876

namespace A064099

/-- `∑[A225569(2*n)]` -/
def P9699235366302398876.Spec : Prop :=
  ∀ n, P9699235366302398876.a n = A064099 n

end A064099

/-! ## A064099.P9529568044892761469

`∑[char[A052993(n)]]+1`
-/

namespace A064099.P9529568044892761469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052993 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A064099.P9529568044892761469

namespace A064099

/-- `∑[char[A052993(n)]]+1` -/
def P9529568044892761469.Spec : Prop :=
  ∀ n, (P9529568044892761469.a n : ℤ) = A064099 n

end A064099

/-! ## A064099.P6757734611473703753

`∑[char[A261547(n)]]+1`
-/

namespace A064099.P6757734611473703753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261547 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A064099.P6757734611473703753

namespace A064099

/-- `∑[char[A261547(n)]]+1` -/
def P6757734611473703753.Spec : Prop :=
  ∀ n, (P6757734611473703753.a n : ℤ) = A064099 n

end A064099

/-! ## A064099.P11761082925067976433

`∑[char[A000203(3^n)]]+1`
-/

namespace A064099.P11761082925067976433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (3 ^ n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A064099.P11761082925067976433

namespace A064099

/-- `∑[char[A000203(3^n)]]+1` -/
def P11761082925067976433.Spec : Prop :=
  ∀ n, (P11761082925067976433.a n : ℤ) = A064099 n

end A064099

/-! ## A064099.P17829326918545095218

`A000005(3^∑[char[∑[3^n]]])`
-/

namespace A064099.P17829326918545095218
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A064099.P17829326918545095218

namespace A064099

/-- `A000005(3^∑[char[∑[3^n]]])` -/
def P17829326918545095218.Spec : Prop :=
  ∀ n, P17829326918545095218.a n = A064099 n

end A064099

/-! ## A064099.P14897908363761917334

`A070939(A081611(n))`
-/

namespace A064099.P14897908363761917334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A081611 n).toNat

end

end A064099.P14897908363761917334

namespace A064099

/-- `A070939(A081611(n))` -/
def P14897908363761917334.Spec : Prop :=
  ∀ n, P14897908363761917334.a n = A064099 n

end A064099

/-! ## A064099.P1731457546605894234

`A005812(A179526(n))`
-/

namespace A064099.P1731457546605894234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 (A179526 n).toNat

end

end A064099.P1731457546605894234

namespace A064099

/-- `A005812(A179526(n))` -/
def P1731457546605894234.Spec : Prop :=
  ∀ n, P1731457546605894234.a n = A064099 n

end A064099

