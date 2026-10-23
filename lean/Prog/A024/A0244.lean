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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A024400: [ (4th elementary symmetric function of S(n))/(first elementary symmetric function of S(n)) ], where S(n) = {first n+3 positive integers congruent to 2 mod 3}.

The programs for A024400, there is no canonical definition to state claims against.
-/

/-! ## A024400.P10923962477490448908

`floor(A024393(n+1)/A005449(n+4))`
-/

namespace A024400.P10923962477490448908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024393 (n + 1) : ℚ) / (A005449 (n + 4) : ℚ)⌋

end

end A024400.P10923962477490448908

/-!
# A024401: a(n) = [ (3rd elementary symmetric function of S(n))/(2nd elementary symmetric function of S(n)) ], where S(n) = {first n+2 positive integers congruent to 2 mod 3}.

The programs for A024401, the canonical program `A024401.P10772562029805902643` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024401 has offset 1).

The definition of A024401 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024401.P10772562029805902643

`floor(A024392(n+1)/A024391(n+2))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A024401

/-- `floor(A024392(n+1)/A024391(n+2))` -/
def P10772562029805902643.Spec : Prop :=
  ∀ n, P10772562029805902643.a n = A024401 (n + 1)

theorem P10772562029805902643.correct : P10772562029805902643.Spec := by
  intro n
  simp only [A024401, Nat.add_sub_cancel]

end A024401

/-! ## A024401.P664828299687735825

`comp[4*n]+∑[n]`
-/

namespace A024401.P664828299687735825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A024401.P664828299687735825

namespace A024401

/-- `comp[4*n]+∑[n]` -/
def P664828299687735825.Spec : Prop :=
  ∀ n, (P664828299687735825.a n : ℤ) = A024401 (n + 1)

end A024401

/-! ## A024401.P2190578311163291239

`floor(C(n+2, 2)+n/3)`
-/

namespace A024401.P2190578311163291239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 2) 2 : ℚ) + (n : ℚ) / 3⌋

end

end A024401.P2190578311163291239

namespace A024401

/-- `floor(C(n+2, 2)+n/3)` -/
def P2190578311163291239.Spec : Prop :=
  ∀ n, P2190578311163291239.a n = A024401 (n + 1)

end A024401

/-! ## A024401.P15196435401458219500

`∑[∑{p}[n, val(#, 3)]+n+1]`
-/

namespace A024401.P15196435401458219500
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 3 + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024401.P15196435401458219500

namespace A024401

/-- `∑[∑{p}[n, val(#, 3)]+n+1]` -/
def P15196435401458219500.Spec : Prop :=
  ∀ n, (P15196435401458219500.a n : ℤ) = A024401 (n + 1)

end A024401

/-! ## A024401.P11206075251286336333

`∑[val(∏{p}[n, #], 3)+n+1]`
-/

namespace A024401.P11206075251286336333
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n), p) 3 + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024401.P11206075251286336333

namespace A024401

/-- `∑[val(∏{p}[n, #], 3)+n+1]` -/
def P11206075251286336333.Spec : Prop :=
  ∀ n, (P11206075251286336333.a n : ℤ) = A024401 (n + 1)

end A024401

/-! ## A024401.P11963590058140464142

`∑[a(n-3)+3]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A024401.P11963590058140464142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 5] fun n f1 =>
  f1 (n - 3) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024401.P11963590058140464142

namespace A024401

/-- `∑[a(n-3)+3]` -/
def P11963590058140464142.Spec : Prop :=
  ∀ n, (P11963590058140464142.a n : ℤ) = A024401 (n + 1)

end A024401

/-! ## A024401.P10909214836254417005

`∑[char[lcm(3, n+1)]+n+1]`
-/

namespace A024401.P10909214836254417005
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024401.P10909214836254417005

namespace A024401

/-- `∑[char[lcm(3, n+1)]+n+1]` -/
def P10909214836254417005.Spec : Prop :=
  ∀ n, (P10909214836254417005.a n : ℤ) = A024401 (n + 1)

end A024401

/-! ## A024401.P12765784210947031990

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A024401.P12765784210947031990
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2, 0] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024401.P12765784210947031990

namespace A024401

/-- `∑[∑[floor(a(n-3))]]` -/
def P12765784210947031990.Spec : Prop :=
  ∀ n, (P12765784210947031990.a n : ℤ) = A024401 (n + 1)

end A024401

/-! ## A024401.P1217240890806874254

`round(C(n+2, 2)+(n-1)/3)`
-/

namespace A024401.P1217240890806874254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 2) 2 : ℚ) + ((n : ℤ) - 1 : ℚ) / 3)

end

end A024401.P1217240890806874254

namespace A024401

/-- `round(C(n+2, 2)+(n-1)/3)` -/
def P1217240890806874254.Spec : Prop :=
  ∀ n, P1217240890806874254.a n = A024401 (n + 1)

end A024401

/-! ## A024401.P16236375976714105078

`ceil(C(n+2, 2)+(n-2)/3)`
-/

namespace A024401.P16236375976714105078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 2) 2 : ℚ) + ((n : ℤ) - 2 : ℚ) / 3⌉

end

end A024401.P16236375976714105078

namespace A024401

/-- `ceil(C(n+2, 2)+(n-2)/3)` -/
def P16236375976714105078.Spec : Prop :=
  ∀ n, P16236375976714105078.a n = A024401 (n + 1)

end A024401

/-! ## A024401.P4744159096568439916

`∑[∑[a(n-3)^a(n-1)]]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=0`
-/

namespace A024401.P4744159096568439916
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2, 0] fun n f2 =>
  f2 (n - 3) ^ f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024401.P4744159096568439916

namespace A024401

/-- `∑[∑[a(n-3)^a(n-1)]]` -/
def P4744159096568439916.Spec : Prop :=
  ∀ n, (P4744159096568439916.a n : ℤ) = A024401 (n + 1)

end A024401

/-! ## A024401.P11230706017446475165

`∑[A100063(n)+n]`
-/

namespace A024401.P11230706017446475165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100063 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024401.P11230706017446475165

namespace A024401

/-- `∑[A100063(n)+n]` -/
def P11230706017446475165.Spec : Prop :=
  ∀ n, P11230706017446475165.a n = A024401 (n + 1)

end A024401

/-! ## A024401.P11881113067355776055

`∑[abs(A099837(n))+n]`
-/

namespace A024401.P11881113067355776055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099837 n| + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024401.P11881113067355776055

namespace A024401

/-- `∑[abs(A099837(n))+n]` -/
def P11881113067355776055.Spec : Prop :=
  ∀ n, P11881113067355776055.a n = A024401 (n + 1)

end A024401

/-! ## A024401.P15802627721849168525

`∑[abs(A100051(n))+n]`
-/

namespace A024401.P15802627721849168525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100051 n| + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024401.P15802627721849168525

namespace A024401

/-- `∑[abs(A100051(n))+n]` -/
def P15802627721849168525.Spec : Prop :=
  ∀ n, P15802627721849168525.a n = A024401 (n + 1)

end A024401

/-! ## A024401.P13390825053474353811

`∑[A107751(n+2)+n]`
-/

namespace A024401.P13390825053474353811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107751 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024401.P13390825053474353811

namespace A024401

/-- `∑[A107751(n+2)+n]` -/
def P13390825053474353811.Spec : Prop :=
  ∀ n, P13390825053474353811.a n = A024401 (n + 1)

end A024401

/-! ## A024401.P4786943893161227034

`∑[2-A267208(n)+n]`
-/

namespace A024401.P4786943893161227034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A267208 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024401.P4786943893161227034

namespace A024401

/-- `∑[2-A267208(n)+n]` -/
def P4786943893161227034.Spec : Prop :=
  ∀ n, P4786943893161227034.a n = A024401 (n + 1)

end A024401

/-! ## A024401.P18036091850630605190

`∑[abs(∑[A099838(n)])+n]`
-/

namespace A024401.P18036091850630605190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099838 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j| + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024401.P18036091850630605190

namespace A024401

/-- `∑[abs(∑[A099838(n)])+n]` -/
def P18036091850630605190.Spec : Prop :=
  ∀ n, P18036091850630605190.a n = A024401 (n + 1)

end A024401

/-! ## A024401.P7243373067579852129

`∑[n+2-A163804(n)²]`
-/

namespace A024401.P7243373067579852129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A163804 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024401.P7243373067579852129

namespace A024401

/-- `∑[n+2-A163804(n)²]` -/
def P7243373067579852129.Spec : Prop :=
  ∀ n, P7243373067579852129.a n = A024401 (n + 1)

end A024401

/-! ## A024401.P12404674013275269768

`∑[n+2-A163806(n)²]`
-/

namespace A024401.P12404674013275269768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A163806 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024401.P12404674013275269768

namespace A024401

/-- `∑[n+2-A163806(n)²]` -/
def P12404674013275269768.Spec : Prop :=
  ∀ n, P12404674013275269768.a n = A024401 (n + 1)

end A024401

/-! ## A024401.P1104969657523118260

`∑[char[3*gcd(n+1, ∑[n])]+1+n]`
-/

namespace A024401.P1104969657523118260
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f3 j)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024401.P1104969657523118260

namespace A024401

/-- `∑[char[3*gcd(n+1, ∑[n])]+1+n]` -/
def P1104969657523118260.Spec : Prop :=
  ∀ n, (P1104969657523118260.a n : ℤ) = A024401 (n + 1)

end A024401

/-!
# A024402: [ (4th elementary symmetric function of S(n))/(2nd elementary symmetric function of S(n)) ], where S(n) = {first n+3 positive integers congruent to 2 mod 3}.

The programs for A024402, there is no canonical definition to state claims against.
-/

/-! ## A024402.P4873221264983226087

`floor(A024393(n+1)/A024391(n+3))`
-/

namespace A024402.P4873221264983226087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024393 (n + 1) : ℚ) / (A024391 (n + 3) : ℚ)⌋

end

end A024402.P4873221264983226087

/-!
# A024403: [ (4th elementary symmetric function of S(n))/(3rd elementary symmetric function of S(n)) ], where S(n) = {first n+3 positive integers congruent to 2 mod 3}.

The programs for A024403, the canonical program `A024403.P6740339707351428898` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024403 has offset 1).

The definition of A024403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024403.P11694297091722120947

`floor(A024393(n+1)/A024392(n+2))`
-/

namespace A024403.P11694297091722120947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024393 (n + 1) : ℚ) / (A024392 (n + 2) : ℚ)⌋

end

end A024403.P11694297091722120947

namespace A024403

/-- `floor(A024393(n+1)/A024392(n+2))` -/
def P11694297091722120947.Spec : Prop :=
  ∀ n, P11694297091722120947.a n = A024403 (n + 1)

end A024403

/-! ## A024403.P8656048179053114888

`∑[1-char[2]+n]-A011861(n)`
-/

namespace A024403.P8656048179053114888
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A011861 n

end

end A024403.P8656048179053114888

namespace A024403

/-- `∑[1-char[2]+n]-A011861(n)` -/
def P8656048179053114888.Spec : Prop :=
  ∀ n, P8656048179053114888.a n = A024403 (n + 1)

end A024403

/-! ## A024403.P6740339707351428898

`floor(∑[n+1]-A081276(n)/(n+1))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A024403

/-- `floor(∑[n+1]-A081276(n)/(n+1))` -/
def P6740339707351428898.Spec : Prop :=
  ∀ n, P6740339707351428898.a n = A024403 (n + 1)

theorem P6740339707351428898.correct : P6740339707351428898.Spec := by
  intro n
  simp only [A024403, Nat.add_sub_cancel]

end A024403

/-! ## A024403.P204244106120799395

`floor(A024400(n+1)/A024399(n+2))`
-/

namespace A024403.P204244106120799395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024400 (n + 1) : ℚ) / (A024399 (n + 2) : ℚ)⌋

end

end A024403.P204244106120799395

namespace A024403

/-- `floor(A024400(n+1)/A024399(n+2))` -/
def P204244106120799395.Spec : Prop :=
  ∀ n, P204244106120799395.a n = A024403 (n + 1)

end A024403

/-! ## A024403.P15859050515703313795

`floor(A229422(3*n+2)/A027689(3*n+2))`
-/

namespace A024403.P15859050515703313795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A229422 (3 * n + 2) : ℚ) / (A027689 (3 * n + 2) : ℚ)⌋

end

end A024403.P15859050515703313795

namespace A024403

/-- `floor(A229422(3*n+2)/A027689(3*n+2))` -/
def P15859050515703313795.Spec : Prop :=
  ∀ n, P15859050515703313795.a n = A024403 (n + 1)

end A024403

/-! ## A024403.P18026705532441373410

`A037915(A052905(n))-A184985(n+1)`
-/

namespace A024403.P18026705532441373410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037915 (A052905 n).toNat - A184985 (n + 1)

end

end A024403.P18026705532441373410

namespace A024403

/-- `A037915(A052905(n))-A184985(n+1)` -/
def P18026705532441373410.Spec : Prop :=
  ∀ n, P18026705532441373410.a n = A024403 (n + 1)

end A024403

/-! ## A024403.P3008780212941055074

`A065033(A054925(n))+A004524(A052905(n))`
-/

namespace A024403.P3008780212941055074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A054925 n).toNat + A004524 (A052905 n).toNat

end

end A024403.P3008780212941055074

namespace A024403

/-- `A065033(A054925(n))+A004524(A052905(n))` -/
def P3008780212941055074.Spec : Prop :=
  ∀ n, P3008780212941055074.a n = A024403 (n + 1)

end A024403

/-! ## A024403.P8595966261188080686

`A008619(A028387(n)-A008619(A238531(n)))`
-/

namespace A024403.P8595966261188080686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A028387 n - A008619 (A238531 n).toNat).toNat

end

end A024403.P8595966261188080686

namespace A024403

/-- `A008619(A028387(n)-A008619(A238531(n)))` -/
def P8595966261188080686.Spec : Prop :=
  ∀ n, P8595966261188080686.a n = A024403 (n + 1)

end A024403

/-!
# A024404: Number of products of distinct primes <= prime(n) equal to -1 (mod prime(n)).

The programs for A024404, there is no canonical definition to state claims against.
-/

/-! ## A024404.P12857694111833616537

`A111660(A329676(n)+A255256(n))`
-/

namespace A024404.P12857694111833616537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A329676 n + A255256 n).toNat

end

end A024404.P12857694111833616537

/-!
# A024405: Number of products of distinct primes <= p(n) equal to 1 (mod p(n)).

The programs for A024405, there is no canonical definition to state claims against.
-/

/-! ## A024405.P13519468627559105744

`A035398(∑[A276729(n^4)])`
-/

namespace A024405.P13519468627559105744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 (n ^ 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035398 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A024405.P13519468627559105744

/-!
# A024406: Ordered areas of primitive Pythagorean triangles.

The programs for A024406, there is no canonical definition to state claims against.
-/

/-! ## A024406.P5072215606601633361

`6*A020885(n+1)`
-/

namespace A024406.P5072215606601633361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A020885 (n + 1)

end

end A024406.P5072215606601633361

/-! ## A024406.P625301955708219590

`A121728(n+1)*A121729(n+1)/2`
-/

namespace A024406.P625301955708219590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121728 (n + 1) * A121729 (n + 1) : ℚ) / 2

end

end A024406.P625301955708219590

/-! ## A024406.P5935678901695712850

`∑{d}[A020885(n+1), A008458(A000010(#))]`
-/

namespace A024406.P5935678901695712850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008458 (A000010 d).toNat

end

end A024406.P5935678901695712850

/-! ## A024406.P13150126678815716035

`A008458(A020885(n+1))`
-/

namespace A024406.P13150126678815716035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A020885 (n + 1)).toNat

end

end A024406.P13150126678815716035

/-! ## A024406.P1497234910452874211

`A008588(and(-1, A020885(n+1)))`
-/

namespace A024406.P1497234910452874211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (Int.land (-1) (A020885 (n + 1))).toNat

end

end A024406.P1497234910452874211

/-! ## A024406.P15405244728576904939

`A008588(or(char[1], A020885(n+1)))`
-/

namespace A024406.P15405244728576904939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A020885 (n + 1))).toNat

end

end A024406.P15405244728576904939

/-! ## A024406.P14354867138418691199

`A008588(A020885(n+1)%A001513(n))`
-/

namespace A024406.P14354867138418691199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (Int.tmod (A020885 (n + 1)) (A001513 n)).toNat

end

end A024406.P14354867138418691199

/-! ## A024406.P6075895027678226040

`lcm(A000034(n), A008588(A020885(n+1)))`
-/

namespace A024406.P6075895027678226040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A008588 (A020885 (n + 1)).toNat)

end

end A024406.P6075895027678226040

/-! ## A024406.P14231162945349414470

`A008588(∑{d}[A020885(n+1), A000010(#)])`
-/

namespace A024406.P14231162945349414470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d).toNat

end

end A024406.P14231162945349414470

/-! ## A024406.P6454895050940721791

`A008588(A020885(n+1))%A046302(n+1)`
-/

namespace A024406.P6454895050940721791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008588 (A020885 (n + 1)).toNat) (A046302 (n + 1))

end

end A024406.P6454895050940721791

/-! ## A024406.P17146991264260488515

`A008588(A020885(n+1))/A007318(C(2, n))`
-/

namespace A024406.P17146991264260488515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008588 (A020885 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A024406.P17146991264260488515

/-! ## A024406.P11830207090364806420

`A008588(A020885(n+1)/A010146(n²+1+n))`
-/

namespace A024406.P11830207090364806420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (SequenceMachineLib.roundAway ((A020885 (n + 1) : ℚ) / (A010146 (n ^ 2 + 1 + n) : ℚ))).toNat

end

end A024406.P11830207090364806420

/-! ## A024406.P8558148389553392408

`A008594(A020885(n+1))/A020639(A017113(n))`
-/

namespace A024406.P8558148389553392408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008594 (A020885 (n + 1)).toNat : ℚ) / (A020639 (A017113 n).toNat : ℚ)

end

end A024406.P8558148389553392408

/-! ## A024406.P16182364651552983546

`A008594(A020885(n+1))/A000005(A005383(n+1))`
-/

namespace A024406.P16182364651552983546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008594 (A020885 (n + 1)).toNat : ℚ) / (A000005 (A005383 (n + 1)).toNat : ℚ)

end

end A024406.P16182364651552983546

/-! ## A024406.P10004130713940029527

`A008594(A020885(n+1))/A000005(A021007(n+1))`
-/

namespace A024406.P10004130713940029527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008594 (A020885 (n + 1)).toNat : ℚ) / (A000005 (A021007 (n + 1)).toNat : ℚ)

end

end A024406.P10004130713940029527

/-!
# A024409: Hypotenuses of more than one primitive Pythagorean triangle.

The programs for A024409, the canonical program `A024409.P2719521149031605988` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024409 has offset 1).

The definition of A024409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4797 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024409.P2719521149031605988

`filter[A008846(n+1), A354108(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A024409

/-- `filter[A008846(n+1), A354108(#)]` -/
def P2719521149031605988.Spec : Prop :=
  ∀ n, P2719521149031605988.a n = A024409 (n + 1)

theorem P2719521149031605988.correct : P2719521149031605988.Spec := by
  intro n
  simp only [A024409, Nat.add_sub_cancel]

end A024409

/-! ## A024409.P11630558451629784409

`filter[A120961(n+1), A354108(#)]`
-/

namespace A024409.P11630558451629784409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A024409.P11630558451629784409

namespace A024409

/-- `filter[A120961(n+1), A354108(#)]` -/
def P11630558451629784409.Spec : Prop :=
  ∀ n, P11630558451629784409.a n = A024409 (n + 1)

end A024409

/-! ## A024409.P8076962432359986616

`filter[A004613(n+2), A354108(#)]`
-/

namespace A024409.P8076962432359986616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A024409.P8076962432359986616

namespace A024409

/-- `filter[A004613(n+2), A354108(#)]` -/
def P8076962432359986616.Spec : Prop :=
  ∀ n, P8076962432359986616.a n = A024409 (n + 1)

end A024409

/-! ## A024409.P7029830894311073339

`record[gcd(A020882(n+10), A020882(n+11))]`
-/

namespace A024409.P7029830894311073339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020882 (n + 10)) (A020882 (n + 11))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024409.P7029830894311073339

namespace A024409

/-- `record[gcd(A020882(n+10), A020882(n+11))]` -/
def P7029830894311073339.Spec : Prop :=
  ∀ n, (P7029830894311073339.a n : ℤ) = A024409 (n + 1)

end A024409

/-! ## A024409.P15864856771906162387

`A004766(lt[2, A031358(n)])`
-/

namespace A024409.P15864856771906162387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A024409.P15864856771906162387

namespace A024409

/-- `A004766(lt[2, A031358(n)])` -/
def P15864856771906162387.Spec : Prop :=
  ∀ n, P15864856771906162387.a n = A024409 (n + 1)

end A024409

/-! ## A024409.P9194148592606021633

`∩[A004613(n+1), A061346(n+1)]`
-/

namespace A024409.P9194148592606021633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024409.P9194148592606021633

namespace A024409

/-- `∩[A004613(n+1), A061346(n+1)]` -/
def P9194148592606021633.Spec : Prop :=
  ∀ n, (P9194148592606021633.a n : ℤ) = A024409 (n + 1)

end A024409

/-! ## A024409.P6256480037416070338

`∩[A008784(n+1), A061346(n+1)]`
-/

namespace A024409.P6256480037416070338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024409.P6256480037416070338

namespace A024409

/-- `∩[A008784(n+1), A061346(n+1)]` -/
def P6256480037416070338.Spec : Prop :=
  ∀ n, (P6256480037416070338.a n : ℤ) = A024409 (n + 1)

end A024409

/-! ## A024409.P1588652407244920886

`∩[A008846(n+1), A061346(n+1)]`
-/

namespace A024409.P1588652407244920886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024409.P1588652407244920886

namespace A024409

/-- `∩[A008846(n+1), A061346(n+1)]` -/
def P1588652407244920886.Spec : Prop :=
  ∀ n, (P1588652407244920886.a n : ℤ) = A024409 (n + 1)

end A024409

/-! ## A024409.P14369440688112681569

`∩[A057129(n+1), A061346(n+1)]`
-/

namespace A024409.P14369440688112681569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024409.P14369440688112681569

namespace A024409

/-- `∩[A057129(n+1), A061346(n+1)]` -/
def P14369440688112681569.Spec : Prop :=
  ∀ n, (P14369440688112681569.a n : ℤ) = A024409 (n + 1)

end A024409

/-! ## A024409.P226702678430770165

`∩[A061346(n+1), A072437(n+1)]`
-/

namespace A024409.P226702678430770165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024409.P226702678430770165

namespace A024409

/-- `∩[A061346(n+1), A072437(n+1)]` -/
def P226702678430770165.Spec : Prop :=
  ∀ n, (P226702678430770165.a n : ℤ) = A024409 (n + 1)

end A024409

/-! ## A024409.P4568887450312224331

`∩[A061346(n+1), A120961(n+1)]`
-/

namespace A024409.P4568887450312224331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024409.P4568887450312224331

namespace A024409

/-- `∩[A061346(n+1), A120961(n+1)]` -/
def P4568887450312224331.Spec : Prop :=
  ∀ n, (P4568887450312224331.a n : ℤ) = A024409 (n + 1)

end A024409

/-! ## A024409.P2401095521605468637

`∩[A061346(n+1), A174051(n+1)]`
-/

namespace A024409.P2401095521605468637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024409.P2401095521605468637

namespace A024409

/-- `∩[A061346(n+1), A174051(n+1)]` -/
def P2401095521605468637.Spec : Prop :=
  ∀ n, (P2401095521605468637.a n : ℤ) = A024409 (n + 1)

end A024409

/-! ## A024409.P4063496104198766487

`∩[A008846(n+1), A185307(n+1)]`
-/

namespace A024409.P4063496104198766487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024409.P4063496104198766487

namespace A024409

/-- `∩[A008846(n+1), A185307(n+1)]` -/
def P4063496104198766487.Spec : Prop :=
  ∀ n, (P4063496104198766487.a n : ℤ) = A024409 (n + 1)

end A024409

/-! ## A024409.P11188119121341969880

`∩[A120961(n+1), A185307(n+1)]`
-/

namespace A024409.P11188119121341969880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024409.P11188119121341969880

namespace A024409

/-- `∩[A120961(n+1), A185307(n+1)]` -/
def P11188119121341969880.Spec : Prop :=
  ∀ n, (P11188119121341969880.a n : ℤ) = A024409 (n + 1)

end A024409

/-! ## A024409.P7572849487294969027

`∩[A004613(n+1), A274127(n+1)]`
-/

namespace A024409.P7572849487294969027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024409.P7572849487294969027

namespace A024409

/-- `∩[A004613(n+1), A274127(n+1)]` -/
def P7572849487294969027.Spec : Prop :=
  ∀ n, (P7572849487294969027.a n : ℤ) = A024409 (n + 1)

end A024409

/-! ## A024409.P9024874888724412409

`∩[A008846(n+1), A274127(n+1)]`
-/

namespace A024409.P9024874888724412409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024409.P9024874888724412409

namespace A024409

/-- `∩[A008846(n+1), A274127(n+1)]` -/
def P9024874888724412409.Spec : Prop :=
  ∀ n, (P9024874888724412409.a n : ℤ) = A024409 (n + 1)

end A024409

/-! ## A024409.P9646660107565797126

`∩[A120961(n+1), A274127(n+1)]`
-/

namespace A024409.P9646660107565797126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024409.P9646660107565797126

namespace A024409

/-- `∩[A120961(n+1), A274127(n+1)]` -/
def P9646660107565797126.Spec : Prop :=
  ∀ n, (P9646660107565797126.a n : ℤ) = A024409 (n + 1)

end A024409

/-! ## A024409.P2192198079548681787

`∩[A008846(n+1), A368042(n+1)]`
-/

namespace A024409.P2192198079548681787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024409.P2192198079548681787

namespace A024409

/-- `∩[A008846(n+1), A368042(n+1)]` -/
def P2192198079548681787.Spec : Prop :=
  ∀ n, (P2192198079548681787.a n : ℤ) = A024409 (n + 1)

end A024409

/-! ## A024409.P4927170431991317531

`∩[A120961(n+1), A368042(n+1)]`
-/

namespace A024409.P4927170431991317531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024409.P4927170431991317531

namespace A024409

/-- `∩[A120961(n+1), A368042(n+1)]` -/
def P4927170431991317531.Spec : Prop :=
  ∀ n, (P4927170431991317531.a n : ℤ) = A024409 (n + 1)

end A024409

/-! ## A024409.P862173580841106314

`∩[A004613(n+1), A156683(n+1)]`
-/

namespace A024409.P862173580841106314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024409.P862173580841106314

namespace A024409

/-- `∩[A004613(n+1), A156683(n+1)]` -/
def P862173580841106314.Spec : Prop :=
  ∀ n, (P862173580841106314.a n : ℤ) = A024409 (n + 1)

end A024409

/-!
# A024410: Long leg of more than one primitive Pythagorean triangle.

The programs for A024410, there is no canonical definition to state claims against.
-/

/-! ## A024410.P5025459366758089616

`lt[1, A024360(A028310(n))]`
-/

namespace A024410.P5025459366758089616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024360 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024410.P5025459366758089616

/-!
# A024411: Short leg of more than one primitive Pythagorean triangle.

The programs for A024411, there is no canonical definition to state claims against.
-/

/-! ## A024411.P17269201542745400609

`lt[1, A024359(n+1)]+1`
-/

namespace A024411.P17269201542745400609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024359 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A024411.P17269201542745400609

/-! ## A024411.P5966586023699344381

`lt[1, A024359(A028310(n))]`
-/

namespace A024411.P5966586023699344381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024359 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024411.P5966586023699344381

/-! ## A024411.P15654236937142662491

`A020725(lt[1, A024359(n+1)])`
-/

namespace A024411.P15654236937142662491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A024411.P15654236937142662491

/-! ## A024411.P8043634951394266680

`A153152(lt[1, A024359(n+1)])`
-/

namespace A024411.P8043634951394266680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A024411.P8043634951394266680

/-! ## A024411.P17386847528835585327

`record[gcd(A020884(n+13), A020884(n+14))]`
-/

namespace A024411.P17386847528835585327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020884 (n + 13)) (A020884 (n + 14))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024411.P17386847528835585327

/-! ## A024411.P14348903179539961182

`lt[1, A024359(A233583(n+1))]`
-/

namespace A024411.P14348903179539961182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024359 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024411.P14348903179539961182

/-!
# A024412: Ordered Stirling numbers s(n,k) of the second kind.

The programs for A024412, there is no canonical definition to state claims against.
-/

/-! ## A024412.P2548491391282505391

`eq[char[A008277(n+1)], A178334(n)]`
-/

namespace A024412.P2548491391282505391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A024412.P2548491391282505391

/-! ## A024412.P17329296454667390233

`eq[A045847(n), A059268(A141021(n))]`
-/

namespace A024412.P17329296454667390233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A141021 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024412.P17329296454667390233

/-! ## A024412.P6224836768689757549

`eq[A081521(n+1), A081604(A081579(n))]`
-/

namespace A024412.P6224836768689757549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A081579 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024412.P6224836768689757549

/-! ## A024412.P2124208282865888273

`eq[A013632(A209766(n+1)), A045847(n)]`
-/

namespace A024412.P2124208282865888273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A209766 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024412.P2124208282865888273

/-! ## A024412.P18238508552043030604

`eq[A038738(n+1), A271498(A038738(n+1))]`
-/

namespace A024412.P18238508552043030604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271498 (A038738 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024412.P18238508552043030604

/-!
# A024413: Positions of odd numbers in A024412.

The programs for A024413, there is no canonical definition to state claims against.
-/

/-! ## A024413.P13606005303436663569

`eq[1, A024412(n+1)%2]`
-/

namespace A024413.P13606005303436663569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024412 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024413.P13606005303436663569

/-! ## A024413.P15169666143533993637

`record[(n+1)*A024412(n+2)%2]`
-/

namespace A024413.P15169666143533993637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A024412 (n + 2)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024413.P15169666143533993637

/-! ## A024413.P11570093709770718260

`lt[A000007(n), and(1, A024412(n+1))]`
-/

namespace A024413.P11570093709770718260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A024412 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A024413.P11570093709770718260

/-! ## A024413.P12165527147206358246

`eq[and(1, A024412(n+1)), A060680(2*(n+1))]`
-/

namespace A024413.P12165527147206358246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A024412 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060680 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024413.P12165527147206358246

/-! ## A024413.P239312586043867582

`eq[and(1, A024412(n+1)), A014963(4*n+2)]`
-/

namespace A024413.P239312586043867582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A024412 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024413.P239312586043867582

/-! ## A024413.P9733816706741302550

`eq[2, A020639(A024412(n+1)+1)]`
-/

namespace A024413.P9733816706741302550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A024412 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024413.P9733816706741302550

/-! ## A024413.P7092121805254422022

`eq[4, A231475(A024412(n+1)+2)]`
-/

namespace A024413.P7092121805254422022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231475 (A024412 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024413.P7092121805254422022

/-! ## A024413.P2707132211131946503

`eq[1, A010156(A024412(n+1))]`
-/

namespace A024413.P2707132211131946503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010156 (A024412 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024413.P2707132211131946503

/-! ## A024413.P15430004382858807952

`eq[1, A019426(A024412(n+1)+1)]`
-/

namespace A024413.P15430004382858807952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A024412 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024413.P15430004382858807952

/-! ## A024413.P9804480004145270537

`eq[1, A040001(A024412(n+1)+2)]`
-/

namespace A024413.P9804480004145270537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A024412 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024413.P9804480004145270537

/-!
# A024414: Positions of even numbers in A024412.

The programs for A024414, there is no canonical definition to state claims against.
-/

/-! ## A024414.P13821302539807938023

`comp[A024413(n+1)]`
-/

namespace A024414.P13821302539807938023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A024414.P13821302539807938023

/-! ## A024414.P8347996092631469792

`eq[0, A024412(n+1)%2]`
-/

namespace A024414.P8347996092631469792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024412 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024414.P8347996092631469792

/-! ## A024414.P9701982002555660746

`eq[and(1, A024412(n+1)), A000007(n+1)]`
-/

namespace A024414.P9701982002555660746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A024412 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024414.P9701982002555660746

/-! ## A024414.P17722918418054514954

`eq[0, and(1, A024412(n+1))*A028310(n)]`
-/

namespace A024414.P17722918418054514954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A024412 (n + 1)) * A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024414.P17722918418054514954

/-! ## A024414.P3722958614774096633

`eq[0, and(1, A024412(n+1))/A017233(n)]`
-/

namespace A024414.P3722958614774096633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 1 (A024412 (n + 1)) : ℚ) / (A017233 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A024414.P3722958614774096633

/-! ## A024414.P273432986542334150

`eq[0, and(1, A024412(n+1))*A019557(n+1)]`
-/

namespace A024414.P273432986542334150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A024412 (n + 1)) * A019557 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024414.P273432986542334150

/-! ## A024414.P11417595556361956987

`eq[0, and(1, A024412(n+1))*A272324(n+1)]`
-/

namespace A024414.P11417595556361956987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A024412 (n + 1)) * A272324 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024414.P11417595556361956987

/-! ## A024414.P12697480484548208490

`eq[0, and(1, A024412(n+1))/A005381(n+1)]`
-/

namespace A024414.P12697480484548208490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 1 (A024412 (n + 1)) : ℚ) / (A005381 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A024414.P12697480484548208490

/-! ## A024414.P6617326305628549777

`eq[0, (A067829(n+2)-1)*and(1, A024412(n+1))]`
-/

namespace A024414.P6617326305628549777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A067829 (n + 2) - 1) * Int.land 1 (A024412 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024414.P6617326305628549777

/-! ## A024414.P9257820145855880399

`eq[0, and(1, A024412(n+1))/(A140535(n+3)-2)]`
-/

namespace A024414.P9257820145855880399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 1 (A024412 (n + 1)) : ℚ) / (A140535 (n + 3) - 2 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A024414.P9257820145855880399

/-! ## A024414.P16076751175738564477

`eq[2, A020639(A024412(n+1)+2)]`
-/

namespace A024414.P16076751175738564477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A024412 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024414.P16076751175738564477

/-! ## A024414.P3807421521017100144

`eq[A024412(n+1)+1, A000265(A024412(n+1)+1)]`
-/

namespace A024414.P3807421521017100144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024412 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A024412 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024414.P3807421521017100144

/-! ## A024414.P16599595492551351107

`eq[1, A010156(A024412(n+1)+1)]`
-/

namespace A024414.P16599595492551351107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010156 (A024412 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024414.P16599595492551351107

/-! ## A024414.P12838056962064136760

`eq[1, A010170(A024412(n+1)+1)]`
-/

namespace A024414.P12838056962064136760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010170 (A024412 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024414.P12838056962064136760

/-! ## A024414.P15710889261823420355

`eq[1, A040001(A024412(n+1)+1)]`
-/

namespace A024414.P15710889261823420355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A024412 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024414.P15710889261823420355

/-! ## A024414.P17898778933908553553

`eq[1, A019426(A024412(n+1)+2)]`
-/

namespace A024414.P17898778933908553553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A024412 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024414.P17898778933908553553

/-! ## A024414.P9186447002662308330

`record[n%A019426(A024412(n+1)+1)]`
-/

namespace A024414.P9186447002662308330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A019426 (A024412 (n + 1) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024414.P9186447002662308330

/-! ## A024414.P12880333854890229795

`eq[A019426(A024412(n+1)), A057427(n)]`
-/

namespace A024414.P12880333854890229795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A024412 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024414.P12880333854890229795

/-!
# A024415: Position of max{s(n,k): k=1,2,...,n} in A024412, n >= 1, where s(n,k) = Stirling numbers of the second kind.

The programs for A024415, there is no canonical definition to state claims against.
-/

/-! ## A024415.P4738418326962674833

`A226143(∑[A001383(n)²])`
-/

namespace A024415.P4738418326962674833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001383 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226143 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A024415.P4738418326962674833

/-! ## A024415.P13385194619979298300

`A027434(A379629(n+1))-(n+1)`
-/

namespace A024415.P13385194619979298300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (A379629 (n + 1)).toNat - (n + 1 : ℤ)

end

end A024415.P13385194619979298300

/-! ## A024415.P4402030979334726455

`A055086(Δ[ceil(A079580(n)²/12)]+1)`
-/

namespace A024415.P4402030979334726455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A079580 n ^ 2 : ℚ) / 12⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (f1 (n + 1) - f1 n + 1).toNat

end

end A024415.P4402030979334726455

/-! ## A024415.P8877101529903057077

`A077643(n)-A001221(A000753(n))`
-/

namespace A024415.P8877101529903057077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077643 n - A001221 (A000753 n).toNat

end

end A024415.P8877101529903057077

/-! ## A024415.P4560783773406877646

`A177849(A000217(n)*A023487(n))`
-/

namespace A024415.P4560783773406877646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (A000217 n * A023487 n).toNat

end

end A024415.P4560783773406877646

/-!
# A024416: a(n) = position of next-to-largest s(n,k), for k=1,2,...,n, in A024412, n >= 3, where s(n,k) = Stirling numbers of the second kind.

The programs for A024416, there is no canonical definition to state claims against.
-/

/-! ## A024416.P15325404086188689805

`∑[A193898(record[A059274(n)])]`
-/

namespace A024416.P15325404086188689805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059274 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193898 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024416.P15325404086188689805

/-! ## A024416.P18356033500517169543

`A028898(∏[∑[A055975(n+1)]])`
-/

namespace A024416.P18356033500517169543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A024416.P18356033500517169543

/-! ## A024416.P4754645925282764985

`A189302(record[Δ[A333256(n+1)]])`
-/

namespace A024416.P4754645925282764985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333256 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189302 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A024416.P4754645925282764985

/-!
# A024417: s(n,a(n)) = max{s(n,k): k=1,2,...,n}, n >= 1, where s(n,k) = Stirling numbers of the second kind.

The programs for A024417, there is no canonical definition to state claims against.
-/

/-! ## A024417.P3519728616612220433

`A257639(∑[A249728(n+1)+A178798(n)])`
-/

namespace A024417.P3519728616612220433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (n + 1) + A178798 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A024417.P3519728616612220433

/-! ## A024417.P17403721691158755343

`A000196(∑[A065033(A093874(n+1))])`
-/

namespace A024417.P17403721691158755343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A093874 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A024417.P17403721691158755343

/-! ## A024417.P13050606107420352270

`A227568(∑[A227568(A094500(n+1))])`
-/

namespace A024417.P13050606107420352270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A094500 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A024417.P13050606107420352270

/-! ## A024417.P10441227268007125479

`A000194(∑[A235402(A000037(n+1))])`
-/

namespace A024417.P10441227268007125479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235402 (A000037 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A024417.P10441227268007125479

/-! ## A024417.P7444018564256996689

`A000194(∑[A000194(A101771(n))])`
-/

namespace A024417.P7444018564256996689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A101771 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A024417.P7444018564256996689

/-!
# A024418: a(n) = t mod s(n,n-1), where t = max{s(n,k): k=1,2,...,n}, s(n,k) = Stirling numbers of the second kind.

The programs for A024418, there is no canonical definition to state claims against.
-/

/-! ## A024418.P7618349180720126894

`A002870(n+2)%((n+2)*(n+1)/2)`
-/

namespace A024418.P7618349180720126894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002870 (n + 2)) (SequenceMachineLib.roundAway (((n + 2) * (n + 1) : ℚ) / 2))

end

end A024418.P7618349180720126894

/-! ## A024418.P3892549546842536607

`Δ[A024717(n+1)]%∑[n+1]`
-/

namespace A024418.P3892549546842536607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024717 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A024418.P3892549546842536607

/-!
# A024419: a(n) = n! (1/C(n,0) + 1/C(n,1) + ... + 1/C(n,[ n/2 ])).

The programs for A024419, there is no canonical definition to state claims against.
-/

/-! ## A024419.P6472065520449133298

`abs(A024421(n)-A052849(n))`
-/

namespace A024419.P6472065520449133298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024421 n - A052849 n|

end

end A024419.P6472065520449133298

/-! ## A024419.P4505451917626775691

`A025527(n+1)*A025534(n)`
-/

namespace A024419.P4505451917626775691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025527 (n + 1) * A025534 n

end

end A024419.P4505451917626775691

/-! ## A024419.P8689888702788467671

`2*A000142(n)-A024421(n)`
-/

namespace A024419.P8689888702788467671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000142 n - A024421 n

end

end A024419.P8689888702788467671

/-! ## A024419.P12529932900542749383

`A052849(A028310(n))-A024421(n)`
-/

namespace A024419.P12529932900542749383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052849 (A028310 n).toNat - A024421 n

end

end A024419.P12529932900542749383

/-! ## A024419.P1960157499256736250

`lcm(A024421(n)-A052849(n), A014963(22*(n+1)))`
-/

namespace A024419.P1960157499256736250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A024421 n - A052849 n) (A014963 (22 * (n + 1)))

end

end A024419.P1960157499256736250

/-!
# A024420: a(n) = n! * Sum_{j=0..floor(n/2)} (-1)^j/binomial(n,j).

The programs for A024420, there is no canonical definition to state claims against.
-/

/-! ## A024420.P17252549416887801643

`A025527(n+1)*A025536(n)`
-/

namespace A024420.P17252549416887801643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025527 (n + 1) * A025536 n

end

end A024420.P17252549416887801643

/-! ## A024420.P2431372273428685351

`∏[A048671(n+1)]*A025536(n)`
-/

namespace A024420.P2431372273428685351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A025536 n

end

end A024420.P2431372273428685351

/-! ## A024420.P9979609790906848336

`A024419(n)/A025534(n)*A025536(n)`
-/

namespace A024420.P9979609790906848336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024419 n : ℚ) / (A025534 n : ℚ) * (A025536 n : ℚ)

end

end A024420.P9979609790906848336

/-!
# A024421: a(n) = n!*(1/C(n,0) - 1/C(n,1) - ... - 1/C(n,[ n/2 ])).

The programs for A024421, there is no canonical definition to state claims against.
-/

/-! ## A024421.P15100789473377861301

`abs(A024419(n)-A052849(n))`
-/

namespace A024421.P15100789473377861301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024419 n - A052849 n|

end

end A024421.P15100789473377861301

/-! ## A024421.P4840584905200576932

`2*A000142(n)-A024419(n)`
-/

namespace A024421.P4840584905200576932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000142 n - A024419 n

end

end A024421.P4840584905200576932

/-! ## A024421.P7958739692296931320

`abs(A025527(n+1)*A025534(n)-A052849(n))`
-/

namespace A024421.P7958739692296931320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A025527 (n + 1) * A025534 n - A052849 n|

end

end A024421.P7958739692296931320

/-! ## A024421.P2575029318529674832

`A052849(A028310(n))-A025527(n+1)*A025534(n)`
-/

namespace A024421.P2575029318529674832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052849 (A028310 n).toNat - A025527 (n + 1) * A025534 n

end

end A024421.P2575029318529674832

/-!
# A024422: a(n) = floor(Sum_{m=1..n} Stirling2(n,m) / binomial(n-1,m-1)).

The programs for A024422, there is no canonical definition to state claims against.
-/

/-! ## A024422.P10070373676031567079

`A325393(∑[A022159(n)])`
-/

namespace A024422.P10070373676031567079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325393 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A024422.P10070373676031567079

/-! ## A024422.P7749052436609844581

`∑[A360399(A001200(n))]`
-/

namespace A024422.P7749052436609844581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360399 (A001200 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024422.P7749052436609844581

/-! ## A024422.P13837667621541106497

`A047743(A369386(n+1))`
-/

namespace A024422.P13837667621541106497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047743 (A369386 (n + 1)).toNat

end

end A024422.P13837667621541106497

/-! ## A024422.P13619106132420031702

`A005041(A001930(n)+n)`
-/

namespace A024422.P13619106132420031702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A001930 n + (n : ℤ)).toNat

end

end A024422.P13619106132420031702

/-!
# A024423: Sum of [ S(n,m)/C(n-1,m-1) ] for m = 1,2,...,n; S(n,m) are Stirling numbers of second kind.

The programs for A024423, there is no canonical definition to state claims against.
-/

/-! ## A024423.P3385707791608167359

`floor(∑[A324698(round(2^n/3)+1)]/3)+1`
-/

namespace A024423.P3385707791608167359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324698 (SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌋ + 1

end

end A024423.P3385707791608167359

/-! ## A024423.P13252583063773278355

`A307531(A077365(n)+n)`
-/

namespace A024423.P13252583063773278355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307531 (A077365 n + (n : ℤ)).toNat

end

end A024423.P13252583063773278355

/-! ## A024423.P13573365976652829918

`∑[A000188((A000622(n+1)+1)²)]`
-/

namespace A024423.P13573365976652829918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((A000622 (n + 1) + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024423.P13573365976652829918

/-! ## A024423.P6251956641754710836

`∑[A000622(n+1)%A001663(n+1)+1]`
-/

namespace A024423.P6251956641754710836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000622 (n + 1)) (A001663 (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024423.P6251956641754710836

/-!
# A024424: a(n) = greatest residue of S(n,m) mod C(n-1,m-1), for m = 1,2,...,n; S(n,m) are Stirling numbers of second kind.

The programs for A024424, there is no canonical definition to state claims against.
-/

/-! ## A024424.P8482856838109272093

`A135660(A148784(n))`
-/

namespace A024424.P8482856838109272093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A148784 n).toNat

end

end A024424.P8482856838109272093

/-! ## A024424.P16891877454192736280

`A209312(A176962(n))`
-/

namespace A024424.P16891877454192736280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209312 (A176962 n).toNat

end

end A024424.P16891877454192736280

/-! ## A024424.P10262173296458908903

`A085141(A346661(n))`
-/

namespace A024424.P10262173296458908903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085141 (A346661 n).toNat

end

end A024424.P10262173296458908903

/-! ## A024424.P2722105615834716580

`A135660(A306485(n))`
-/

namespace A024424.P2722105615834716580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A306485 n).toNat

end

end A024424.P2722105615834716580

/-! ## A024424.P7155700937665498475

`A085141(A374553(n))`
-/

namespace A024424.P7155700937665498475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085141 (A374553 n).toNat

end

end A024424.P7155700937665498475

/-!
# A024425: [ max{S(n,m)}/max{C(n-1,m-1)} ] for m = 1,2,...,n; S(n,m) are Stirling numbers of second kind.

The programs for A024425, there is no canonical definition to state claims against.
-/

/-! ## A024425.P12681892532293355298

`floor(A002870(n+1)/A001405(n))`
-/

namespace A024425.P12681892532293355298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002870 (n + 1) : ℚ) / (A001405 n : ℚ)⌋

end

end A024425.P12681892532293355298

/-! ## A024425.P14943957245315106609

`A048152(A182458(n)+A182453(n))`
-/

namespace A024425.P14943957245315106609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (A182458 n + A182453 n).toNat

end

end A024425.P14943957245315106609

/-! ## A024425.P4786321194428141096

`A036625(n)-A065040(A222939(n+1))`
-/

namespace A024425.P4786321194428141096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036625 n - A065040 (A222939 (n + 1)).toNat

end

end A024425.P4786321194428141096

/-! ## A024425.P137064087354806781

`A283970(A098057(n))-A038760(A006463(n))`
-/

namespace A024425.P137064087354806781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283970 (A098057 n).toNat - A038760 (A006463 n).toNat

end

end A024425.P137064087354806781

/-! ## A024425.P8835411010064857067

`A124455(A239555(n))-A125229(A056482(n+1))`
-/

namespace A024425.P8835411010064857067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124455 (A239555 n).toNat - A125229 (A056482 (n + 1)).toNat

end

end A024425.P8835411010064857067

/-!
# A024426: a(n) = floor((1/n)*(S(n,1) + S(n,2) + ... + S(n,n))), where S(i,j) are Stirling numbers of second kind.

The programs for A024426, there is no canonical definition to state claims against.
-/

/-! ## A024426.P13795687320015958759

`floor(A283424(∑[n])/(n+1))`
-/

namespace A024426.P13795687320015958759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A283424 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)⌋

end

end A024426.P13795687320015958759

/-! ## A024426.P3254978297579626609

`floor(record[A123346(n)]/(n+1))`
-/

namespace A024426.P3254978297579626609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)⌋

end

end A024426.P3254978297579626609

/-! ## A024426.P10048253170073745814

`floor(record[A186020(n)]/(n+1))`
-/

namespace A024426.P10048253170073745814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)⌋

end

end A024426.P10048253170073745814

/-! ## A024426.P18095522066090575717

`floor(record[A275422(n)]/(n+1))`
-/

namespace A024426.P18095522066090575717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)⌋

end

end A024426.P18095522066090575717

/-! ## A024426.P1840137905148466318

`floor(A000110(n+1)/(n+1))`
-/

namespace A024426.P1840137905148466318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000110 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A024426.P1840137905148466318

/-!
# A024427: S(n,1) + S(n-1,2) + S(n-2,3) + ... + S(n+1-k,k), where k = floor((n+1)/2) and S(i,j) are Stirling numbers of the second kind.

The programs for A024427, there is no canonical definition to state claims against.
-/

/-! ## A024427.P14910405918131338021

`A171367(n+2)`
-/

namespace A024427.P14910405918131338021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171367 (n + 2)

end

end A024427.P14910405918131338021

/-! ## A024427.P8249118342077201651

`Δ[A320964(n+1)]`
-/

namespace A024427.P8249118342077201651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024427.P8249118342077201651

/-! ## A024427.P3530779863999836594

`Δ[record[A320964(A002262(n))]]`
-/

namespace A024427.P3530779863999836594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320964 (A002262 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024427.P3530779863999836594

/-! ## A024427.P440958208328971183

`Δ[record[A320964(A003984(n))]]`
-/

namespace A024427.P440958208328971183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320964 (A003984 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024427.P440958208328971183

/-! ## A024427.P4391347987117078746

`Δ[record[A320964(A003987(n))]]`
-/

namespace A024427.P4391347987117078746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320964 (A003987 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024427.P4391347987117078746

/-! ## A024427.P7194371141349530102

`A320964(n+2)-A320964(n+1)`
-/

namespace A024427.P7194371141349530102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320964 (n + 2) - A320964 (n + 1)

end

end A024427.P7194371141349530102

/-!
# A024428: S(n,n) + S(n-1,n-2) + S(n-2,n-4) + ... + S(n-k+1,n-2k+2), where k = [ (n+1)/2 ] and S(i,j) are Stirling numbers of second kind.

The programs for A024428, there is no canonical definition to state claims against.
-/

/-! ## A024428.P16946593630499358054

`A024417(A058737(n+2))`
-/

namespace A024428.P16946593630499358054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A058737 (n + 2)).toNat

end

end A024428.P16946593630499358054

/-! ## A024428.P5042978861193523455

`A001462(or(n, A305850(n)))`
-/

namespace A024428.P5042978861193523455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (Int.lor (n : ℤ) (A305850 n)).toNat

end

end A024428.P5042978861193523455

/-! ## A024428.P7184701100263817527

`A008618(A054486(n)+A028878(n))`
-/

namespace A024428.P7184701100263817527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A054486 n + A028878 n).toNat

end

end A024428.P7184701100263817527

/-! ## A024428.P4564694613737156124

`A000006(A259870(n)+A000110(n))`
-/

namespace A024428.P4564694613737156124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A259870 n + A000110 n).toNat

end

end A024428.P4564694613737156124

/-! ## A024428.P7858981010995926761

`A262689(A242764(n))+A082853(n)`
-/

namespace A024428.P7858981010995926761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A242764 n).toNat + A082853 n

end

end A024428.P7858981010995926761

/-!
# A024429: Expansion of e.g.f. sinh(exp(x)-1).

The programs for A024429, there is no canonical definition to state claims against.
-/

/-! ## A024429.P7687603971311675422

`(A000110(n)-A000587(n))/2`
-/

namespace A024429.P7687603971311675422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000110 n - A000587 n : ℚ) / 2

end

end A024429.P7687603971311675422

/-! ## A024429.P2926141012409116624

`A000110(n)-A024430(n)`
-/

namespace A024429.P2926141012409116624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A024430 n

end

end A024429.P2926141012409116624

/-! ## A024429.P18383906718748121128

`A024430(n)-A000587(n)`
-/

namespace A024429.P18383906718748121128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024430 n - A000587 n

end

end A024429.P18383906718748121128

/-! ## A024429.P4280217148920118855

`abs(A292935(n))-A024430(n)`
-/

namespace A024429.P4280217148920118855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 n| - A024430 n

end

end A024429.P4280217148920118855

/-! ## A024429.P15366669642340142742

`A011971(∑[n])-A024430(n)`
-/

namespace A024429.P15366669642340142742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f1 j) - A024430 n

end

end A024429.P15366669642340142742

/-! ## A024429.P7123869586676392618

`A095149(∑[n])-A024430(n)`
-/

namespace A024429.P7123869586676392618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (∑ j ∈ Finset.range (n + 1), f1 j) - A024430 n

end

end A024429.P7123869586676392618

/-! ## A024429.P4906066650025841576

`Δ[A005001(n)]-A024430(n)`
-/

namespace A024429.P4906066650025841576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A024430 n

end

end A024429.P4906066650025841576

/-! ## A024429.P4933202699230554178

`(abs(A292935(n))-A000587(n))/2`
-/

namespace A024429.P4933202699230554178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A292935 n| - A000587 n : ℚ) / 2

end

end A024429.P4933202699230554178

/-! ## A024429.P30006497165953520

`A056857(A000124(n))-A024430(n)`
-/

namespace A024429.P30006497165953520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056857 (A000124 n).toNat - A024430 n

end

end A024429.P30006497165953520

/-! ## A024429.P11670515118395940141

`(A095149(A000096(n))-A000587(n))/2`
-/

namespace A024429.P11670515118395940141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095149 (A000096 n).toNat - A000587 n : ℚ) / 2

end

end A024429.P11670515118395940141

/-!
# A024430: Expansion of e.g.f. cosh(exp(x)-1).

The programs for A024430, there is no canonical definition to state claims against.
-/

/-! ## A024430.P1327483910740656900

`(A000110(n)+A000587(n))/2`
-/

namespace A024430.P1327483910740656900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000110 n + A000587 n : ℚ) / 2

end

end A024430.P1327483910740656900

/-! ## A024430.P16082017126970782293

`A357293(∑[n+3])`
-/

namespace A024430.P16082017126970782293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357293 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A024430.P16082017126970782293

/-! ## A024430.P8970790564786251450

`A024429(n)+A000587(n)`
-/

namespace A024430.P8970790564786251450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024429 n + A000587 n

end

end A024430.P8970790564786251450

/-! ## A024430.P10943404172957659906

`A365527(n)+A365525(n)`
-/

namespace A024430.P10943404172957659906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365527 n + A365525 n

end

end A024430.P10943404172957659906

/-! ## A024430.P17787251250777919004

`A000110(n)-A024429(n)`
-/

namespace A024430.P17787251250777919004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A024429 n

end

end A024430.P17787251250777919004

/-! ## A024430.P6104565390184987189

`abs(A292935(n))-A024429(n)`
-/

namespace A024430.P6104565390184987189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 n| - A024429 n

end

end A024430.P6104565390184987189

/-! ## A024430.P14788864351477946794

`A011971(∑[n])-A024429(n)`
-/

namespace A024430.P14788864351477946794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f1 j) - A024429 n

end

end A024430.P14788864351477946794

/-! ## A024430.P551652838376708181

`A095149(∑[n])-A024429(n)`
-/

namespace A024430.P551652838376708181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (∑ j ∈ Finset.range (n + 1), f1 j) - A024429 n

end

end A024430.P551652838376708181

/-! ## A024430.P2544934184033337493

`A108087(∑[n])-A024429(n)`
-/

namespace A024430.P2544934184033337493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (∑ j ∈ Finset.range (n + 1), f1 j) - A024429 n

end

end A024430.P2544934184033337493

/-! ## A024430.P6989433391544166716

`A186020(∑[n])-A024429(n)`
-/

namespace A024430.P6989433391544166716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 (∑ j ∈ Finset.range (n + 1), f1 j) - A024429 n

end

end A024430.P6989433391544166716

/-!
# A024431: A generalized difference set on the set of all integers (lambda = 1).

The programs for A024431, there is no canonical definition to state claims against.
-/

/-! ## A024431.P16648804224011326283

`A247414(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A024431.P16648804224011326283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A247414 (n - 1) + a (n - 1)

end

end A024431.P16648804224011326283

/-! ## A024431.P11820655307509072824

`∑[A247414(A289207(n+1))]`
-/

namespace A024431.P11820655307509072824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247414 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024431.P11820655307509072824

/-! ## A024431.P16485830584019587402

`∑[A247414(A004273(n)-n)]`
-/

namespace A024431.P16485830584019587402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247414 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024431.P16485830584019587402

/-! ## A024431.P17645618999347343627

`∑[A247414(A289207(2*n)/2)]`
-/

namespace A024431.P17645618999347343627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247414 (SequenceMachineLib.roundAway ((A289207 (2 * n) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024431.P17645618999347343627

/-! ## A024431.P2463639649267616236

`∑[A247414(n)]+1-A247414(n)`
-/

namespace A024431.P2463639649267616236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A247414 n)

end

end A024431.P2463639649267616236

/-! ## A024431.P7666355695026752494

`A115409(∑[n])+a(n-1)` with `a(0)=1`
-/

namespace A024431.P7666355695026752494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A115409 (∑ j ∈ Finset.range (n + 1), f1 j) + a (n - 1)

end

end A024431.P7666355695026752494

/-! ## A024431.P12963707100478355767

`record[A115409(n+1)+1]-A247414(n)`
-/

namespace A024431.P12963707100478355767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115409 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A247414 n

end

end A024431.P12963707100478355767

/-!
# A024434: Expansion of 1/((1-x)(1-6x)(1-10x)(1-11x)).

The programs for A024434, the canonical program `A024434.P7903170826492724202` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024434 has offset 0).

The definition of A024434 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024434.P7903170826492724202

`(18*11^(n+3)-25*10^(n+3)+9*6^(n+3)-2)/900`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024434

/-- `(18*11^(n+3)-25*10^(n+3)+9*6^(n+3)-2)/900` -/
def P7903170826492724202.Spec : Prop :=
  ∀ n, P7903170826492724202.a n = (A024434 n : ℚ)

end A024434

/-! ## A024434.P13493222551132243727

`∑[A020726(n)]`
-/

namespace A024434.P13493222551132243727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024434.P13493222551132243727

namespace A024434

/-- `∑[A020726(n)]` -/
def P13493222551132243727.Spec : Prop :=
  ∀ n, P13493222551132243727.a n = A024434 n

end A024434

/-! ## A024434.P15914927197365134756

`A020726(2*n-n)+a(n-1)` with `a(0)=1`
-/

namespace A024434.P15914927197365134756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020726 (2 * n - n) + a (n - 1)

end

end A024434.P15914927197365134756

namespace A024434

/-- `A020726(2*n-n)+a(n-1)` -/
def P15914927197365134756.Spec : Prop :=
  ∀ n, P15914927197365134756.a n = A024434 n

end A024434

/-! ## A024434.P15291140731075734806

`2*A021314(n)-A021204(n)`
-/

namespace A024434.P15291140731075734806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021314 n - A021204 n

end

end A024434.P15291140731075734806

namespace A024434

/-- `2*A021314(n)-A021204(n)` -/
def P15291140731075734806.Spec : Prop :=
  ∀ n, P15291140731075734806.a n = A024434 n

end A024434

/-! ## A024434.P5701236187445990322

`A016247(n+1)-A016246(n+1)`
-/

namespace A024434.P5701236187445990322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016247 (n + 1) - A016246 (n + 1)

end

end A024434.P5701236187445990322

namespace A024434

/-- `A016247(n+1)-A016246(n+1)` -/
def P5701236187445990322.Spec : Prop :=
  ∀ n, P5701236187445990322.a n = A024434 n

end A024434

/-! ## A024434.P7265669189367799428

`∑[A016174(n+1)-A016173(n+1)]`
-/

namespace A024434.P7265669189367799428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016174 (n + 1) - A016173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024434.P7265669189367799428

namespace A024434

/-- `∑[A016174(n+1)-A016173(n+1)]` -/
def P7265669189367799428.Spec : Prop :=
  ∀ n, P7265669189367799428.a n = A024434 n

end A024434

/-! ## A024434.P4547513342142684718

`2*A024435(n)-A024436(n)`
-/

namespace A024434.P4547513342142684718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024435 n - A024436 n

end

end A024434.P4547513342142684718

namespace A024434

/-- `2*A024435(n)-A024436(n)` -/
def P4547513342142684718.Spec : Prop :=
  ∀ n, P4547513342142684718.a n = A024434 n

end A024434

/-!
# A024435: Expansion of 1/((1-x)(1-6x)(1-10x)(1-12x)).

The programs for A024435, there is no canonical definition to state claims against.
-/

/-! ## A024435.P11047739173954071284

`∑[A020758(n)]`
-/

namespace A024435.P11047739173954071284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020758 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024435.P11047739173954071284

/-! ## A024435.P1731949219759443477

`∑[2^n*A017269(n)]`
-/

namespace A024435.P1731949219759443477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A017269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024435.P1731949219759443477

/-! ## A024435.P850490618712036792

`2*A016267(n)-A016246(n)`
-/

namespace A024435.P850490618712036792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016267 n - A016246 n

end

end A024435.P850490618712036792

/-! ## A024435.P18250701782344243999

`2*A021324(n)-A021214(n)`
-/

namespace A024435.P18250701782344243999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021324 n - A021214 n

end

end A024435.P18250701782344243999

/-! ## A024435.P16130487202564710334

`∑[abs(A017269(n)*A077966(2*n))]`
-/

namespace A024435.P16130487202564710334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A017269 n * A077966 (2 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024435.P16130487202564710334

/-! ## A024435.P3643367663449238393

`A016265(n)+A016268(n)-A016246(n)`
-/

namespace A024435.P3643367663449238393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016265 n + (A016268 n - A016246 n)

end

end A024435.P3643367663449238393

/-! ## A024435.P13553564565337890580

`A021314(n)+A021334(n)-A021214(n)`
-/

namespace A024435.P13553564565337890580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021314 n + (A021334 n - A021214 n)

end

end A024435.P13553564565337890580

/-! ## A024435.P17338712838839876687

`A021844(n)+A021994(n)-A021829(n)`
-/

namespace A024435.P17338712838839876687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021844 n + (A021994 n - A021829 n)

end

end A024435.P17338712838839876687

/-! ## A024435.P1313495271484726728

`∑[A017269(n)*A247936(A034856(n+1))]`
-/

namespace A024435.P1313495271484726728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017269 n * A247936 (A034856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024435.P1313495271484726728

/-!
# A024436: Expansion of 1/((1-x)(1-6x)(1-11x)(1-12x)).

The programs for A024436, there is no canonical definition to state claims against.
-/

/-! ## A024436.P6343419483899002678

`∑[A020766(n)]`
-/

namespace A024436.P6343419483899002678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024436.P6343419483899002678

/-! ## A024436.P10404982428651453411

`2*A016268(n)-A016247(n)`
-/

namespace A024436.P10404982428651453411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016268 n - A016247 n

end

end A024436.P10404982428651453411

/-! ## A024436.P10990766502044690133

`2*A024435(n)-A024434(n)`
-/

namespace A024436.P10990766502044690133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024435 n - A024434 n

end

end A024436.P10990766502044690133

/-! ## A024436.P14649021518655318717

`A016248(n+1)-A016247(n+1)`
-/

namespace A024436.P14649021518655318717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016248 (n + 1) - A016247 (n + 1)

end

end A024436.P14649021518655318717

/-! ## A024436.P17379900210230800811

`∑[A016175(n+1)-A016174(n+1)]`
-/

namespace A024436.P17379900210230800811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016175 (n + 1) - A016174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024436.P17379900210230800811

/-!
# A024437: Expansion of 1/((1-x)(1-7x)(1-8x)(1-9x)).

The programs for A024437, the canonical program `A024437.P2443339488932597373` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024437 has offset 0).

The definition of A024437 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024437.P2443339488932597373

`(21*9^(n+3)-6*8^(n+4)+4*7^(n+4)-1)/336`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024437

/-- `(21*9^(n+3)-6*8^(n+4)+4*7^(n+4)-1)/336` -/
def P2443339488932597373.Spec : Prop :=
  ∀ n, P2443339488932597373.a n = (A024437 n : ℚ)

end A024437

/-! ## A024437.P7200895087948256551

`∑[A020782(n)]`
-/

namespace A024437.P7200895087948256551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024437.P7200895087948256551

namespace A024437

/-- `∑[A020782(n)]` -/
def P7200895087948256551.Spec : Prop :=
  ∀ n, P7200895087948256551.a n = A024437 n

end A024437

/-! ## A024437.P13060176937754806847

`2*A022469(n)-A022452(n)`
-/

namespace A024437.P13060176937754806847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022469 n - A022452 n

end

end A024437.P13060176937754806847

namespace A024437

/-- `2*A022469(n)-A022452(n)` -/
def P13060176937754806847.Spec : Prop :=
  ∀ n, P13060176937754806847.a n = A024437 n

end A024437

/-! ## A024437.P4052183280028826423

`A016250(n+1)-A016249(n+1)`
-/

namespace A024437.P4052183280028826423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016250 (n + 1) - A016249 (n + 1)

end

end A024437.P4052183280028826423

namespace A024437

/-- `A016250(n+1)-A016249(n+1)` -/
def P4052183280028826423.Spec : Prop :=
  ∀ n, P4052183280028826423.a n = A024437 n

end A024437

/-! ## A024437.P15596293477736068287

`A023950(n)+A023954(n)-A023949(n)`
-/

namespace A024437.P15596293477736068287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023950 n + (A023954 n - A023949 n)

end

end A024437.P15596293477736068287

namespace A024437

/-- `A023950(n)+A023954(n)-A023949(n)` -/
def P15596293477736068287.Spec : Prop :=
  ∀ n, P15596293477736068287.a n = A024437 n

end A024437

/-! ## A024437.P5196250882227178611

`2*A023954(n)-A023950(n)`
-/

namespace A024437.P5196250882227178611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023954 n - A023950 n

end

end A024437.P5196250882227178611

namespace A024437

/-- `2*A023954(n)-A023950(n)` -/
def P5196250882227178611.Spec : Prop :=
  ∀ n, P5196250882227178611.a n = A024437 n

end A024437

/-! ## A024437.P9069884494882302013

`A016256(n+1)-A016250(n+1)`
-/

namespace A024437.P9069884494882302013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016256 (n + 1) - A016250 (n + 1)

end

end A024437.P9069884494882302013

namespace A024437

/-- `A016256(n+1)-A016250(n+1)` -/
def P9069884494882302013.Spec : Prop :=
  ∀ n, P9069884494882302013.a n = A024437 n

end A024437

/-! ## A024437.P15848403342004900923

`2*A024438(n)-A024441(n)`
-/

namespace A024437.P15848403342004900923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024438 n - A024441 n

end

end A024437.P15848403342004900923

namespace A024437

/-- `2*A024438(n)-A024441(n)` -/
def P15848403342004900923.Spec : Prop :=
  ∀ n, P15848403342004900923.a n = A024437 n

end A024437

/-! ## A024437.P10270022344118403719

`2*A024439(n)-A024772(n)`
-/

namespace A024437.P10270022344118403719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024439 n - A024772 n

end

end A024437.P10270022344118403719

namespace A024437

/-- `2*A024439(n)-A024772(n)` -/
def P10270022344118403719.Spec : Prop :=
  ∀ n, P10270022344118403719.a n = A024437 n

end A024437

/-!
# A024438: Expansion of 1/((1-x)(1-7x)(1-8x)(1-10x)).

The programs for A024438, the canonical program `A024438.P17257496959468960468` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024438 has offset 0).

The definition of A024438 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024438.P17257496959468960468

`(7*10^(n+3)-27*8^(n+3)+21*7^(n+3)-1)/378`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024438

/-- `(7*10^(n+3)-27*8^(n+3)+21*7^(n+3)-1)/378` -/
def P17257496959468960468.Spec : Prop :=
  ∀ n, P17257496959468960468.a n = (A024438 n : ℚ)

end A024438

/-! ## A024438.P16935984112453993808

`∑[A020838(n)]`
-/

namespace A024438.P16935984112453993808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024438.P16935984112453993808

namespace A024438

/-- `∑[A020838(n)]` -/
def P16935984112453993808.Spec : Prop :=
  ∀ n, P16935984112453993808.a n = A024438 n

end A024438

/-! ## A024438.P12822154196579613654

`A016252(n)+8*a(n-1)` with `a(0)=1`
-/

namespace A024438.P12822154196579613654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016252 n + 8 * a (n - 1)

end

end A024438.P12822154196579613654

namespace A024438

/-- `A016252(n)+8*a(n-1)` -/
def P12822154196579613654.Spec : Prop :=
  ∀ n, P12822154196579613654.a n = A024438 n

end A024438

/-! ## A024438.P6711894594642284743

`2*A021914(n)-A021854(n)`
-/

namespace A024438.P6711894594642284743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021914 n - A021854 n

end

end A024438.P6711894594642284743

namespace A024438

/-- `2*A021914(n)-A021854(n)` -/
def P6711894594642284743.Spec : Prop :=
  ∀ n, P6711894594642284743.a n = A024438 n

end A024438

/-! ## A024438.P17070978951873917186

`2*A023951(n)-A023949(n)`
-/

namespace A024438.P17070978951873917186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023951 n - A023949 n

end

end A024438.P17070978951873917186

namespace A024438

/-- `2*A023951(n)-A023949(n)` -/
def P17070978951873917186.Spec : Prop :=
  ∀ n, P17070978951873917186.a n = A024438 n

end A024438

/-! ## A024438.P14154259734128788371

`2*A023955(n)-A023951(n)`
-/

namespace A024438.P14154259734128788371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023955 n - A023951 n

end

end A024438.P14154259734128788371

namespace A024438

/-- `2*A023955(n)-A023951(n)` -/
def P14154259734128788371.Spec : Prop :=
  ∀ n, P14154259734128788371.a n = A024438 n

end A024438

/-! ## A024438.P16579459292168057147

`A016257(n+1)-A016252(n+1)`
-/

namespace A024438.P16579459292168057147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016257 (n + 1) - A016252 (n + 1)

end

end A024438.P16579459292168057147

namespace A024438

/-- `A016257(n+1)-A016252(n+1)` -/
def P16579459292168057147.Spec : Prop :=
  ∀ n, P16579459292168057147.a n = A024438 n

end A024438

/-! ## A024438.P12930163233701601936

`A021904(n)+A021954(n)-A021854(n)`
-/

namespace A024438.P12930163233701601936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021904 n + (A021954 n - A021854 n)

end

end A024438.P12930163233701601936

namespace A024438

/-- `A021904(n)+A021954(n)-A021854(n)` -/
def P12930163233701601936.Spec : Prop :=
  ∀ n, P12930163233701601936.a n = A024438 n

end A024438

/-!
# A024439: Expansion of 1/((1-x)(1-7x)(1-8x)(1-11x)).

The programs for A024439, the canonical program `A024439.P12369667869677429718` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024439 has offset 0).

The definition of A024439 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024439.P12369667869677429718

`(7*11^(n+3)-40*8^(n+3)+35*7^(n+3)-2)/840`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024439

/-- `(7*11^(n+3)-40*8^(n+3)+35*7^(n+3)-2)/840` -/
def P12369667869677429718.Spec : Prop :=
  ∀ n, P12369667869677429718.a n = (A024439 n : ℚ)

end A024439

/-! ## A024439.P13513962926809117359

`∑[A020968(n)]`
-/

namespace A024439.P13513962926809117359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024439.P13513962926809117359

namespace A024439

/-- `∑[A020968(n)]` -/
def P13513962926809117359.Spec : Prop :=
  ∀ n, P13513962926809117359.a n = A024439 n

end A024439

/-! ## A024439.P14762837558853607148

`2*A021664(n)-A021544(n)`
-/

namespace A024439.P14762837558853607148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021664 n - A021544 n

end

end A024439.P14762837558853607148

namespace A024439

/-- `2*A021664(n)-A021544(n)` -/
def P14762837558853607148.Spec : Prop :=
  ∀ n, P14762837558853607148.a n = A024439 n

end A024439

/-! ## A024439.P3120931351645833696

`2*A022455(n)-A022452(n)`
-/

namespace A024439.P3120931351645833696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022455 n - A022452 n

end

end A024439.P3120931351645833696

namespace A024439

/-- `2*A022455(n)-A022452(n)` -/
def P3120931351645833696.Spec : Prop :=
  ∀ n, P3120931351645833696.a n = A024439 n

end A024439

/-! ## A024439.P17024885691711652009

`A021884(n)+A021924(n)-A021854(n)`
-/

namespace A024439.P17024885691711652009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021884 n + (A021924 n - A021854 n)

end

end A024439.P17024885691711652009

namespace A024439

/-- `A021884(n)+A021924(n)-A021854(n)` -/
def P17024885691711652009.Spec : Prop :=
  ∀ n, P17024885691711652009.a n = A024439 n

end A024439

/-! ## A024439.P13111807489691629988

`A023956(n)+A023956(n)-A023952(n)`
-/

namespace A024439.P13111807489691629988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023956 n + (A023956 n - A023952 n)

end

end A024439.P13111807489691629988

namespace A024439

/-- `A023956(n)+A023956(n)-A023952(n)` -/
def P13111807489691629988.Spec : Prop :=
  ∀ n, P13111807489691629988.a n = A024439 n

end A024439

/-! ## A024439.P17881081543752873077

`2*A023956(n)-A023952(n)`
-/

namespace A024439.P17881081543752873077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023956 n - A023952 n

end

end A024439.P17881081543752873077

namespace A024439

/-- `2*A023956(n)-A023952(n)` -/
def P17881081543752873077.Spec : Prop :=
  ∀ n, P17881081543752873077.a n = A024439 n

end A024439

/-! ## A024439.P9663655119665793258

`∑[2*A020971(n)-A020977(n)]`
-/

namespace A024439.P9663655119665793258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020971 n - A020977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024439.P9663655119665793258

namespace A024439

/-- `∑[2*A020971(n)-A020977(n)]` -/
def P9663655119665793258.Spec : Prop :=
  ∀ n, P9663655119665793258.a n = A024439 n

end A024439

/-! ## A024439.P9166937261901070272

`A016259(n+1)-A016254(n+1)`
-/

namespace A024439.P9166937261901070272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016259 (n + 1) - A016254 (n + 1)

end

end A024439.P9166937261901070272

namespace A024439

/-- `A016259(n+1)-A016254(n+1)` -/
def P9166937261901070272.Spec : Prop :=
  ∀ n, P9166937261901070272.a n = A024439 n

end A024439

/-! ## A024439.P4614185566664550596

`A024441(n)+A024444(n)-A024772(n)`
-/

namespace A024439.P4614185566664550596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024441 n + (A024444 n - A024772 n)

end

end A024439.P4614185566664550596

namespace A024439

/-- `A024441(n)+A024444(n)-A024772(n)` -/
def P4614185566664550596.Spec : Prop :=
  ∀ n, P4614185566664550596.a n = A024439 n

end A024439

/-!
# A024440: Expansion of 1/((1-x)(1-7x)(1-8x)(1-12x)).

The programs for A024440, there is no canonical definition to state claims against.
-/

/-! ## A024440.P7354218960669678242

`∑[A020969(n)]`
-/

namespace A024440.P7354218960669678242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024440.P7354218960669678242

/-! ## A024440.P18269002668895478606

`2*A021279(n)-A021224(n)`
-/

namespace A024440.P18269002668895478606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021279 n - A021224 n

end

end A024440.P18269002668895478606

/-! ## A024440.P14309734424157880479

`2*A021894(n)-A021854(n)`
-/

namespace A024440.P14309734424157880479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021894 n - A021854 n

end

end A024440.P14309734424157880479

/-! ## A024440.P14441873256865643314

`2*A028008(n)-∑[A028008(n)]`
-/

namespace A024440.P14441873256865643314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028008 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024440.P14441873256865643314

/-! ## A024440.P4268017761155207410

`A016260(n+1)-A016255(n+1)`
-/

namespace A024440.P4268017761155207410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016260 (n + 1) - A016255 (n + 1)

end

end A024440.P4268017761155207410

/-! ## A024440.P16887033537086913127

`a(n-1)+2*A020972(n)-A020978(n)` with `a(0)=1`
-/

namespace A024440.P16887033537086913127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 * A020972 n - A020978 n)

end

end A024440.P16887033537086913127

/-! ## A024440.P5549071268205499428

`A021268(n)+A021324(n)-A021224(n)`
-/

namespace A024440.P5549071268205499428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021268 n + (A021324 n - A021224 n)

end

end A024440.P5549071268205499428

/-! ## A024440.P1256914503777202964

`A021629(n)+A021674(n)-A021544(n)`
-/

namespace A024440.P1256914503777202964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021629 n + (A021674 n - A021544 n)

end

end A024440.P1256914503777202964

/-!
# A024441: Expansion of 1/((1-x)(1-7x)(1-9x)(1-10x)).

The programs for A024441, the canonical program `A024441.P10172342508737188498` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024441 has offset 0).

The definition of A024441 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024441.P10172342508737188498

`(16*10^(n+3)-27*9^(n+3)+12*7^(n+3)-1)/432`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024441

/-- `(16*10^(n+3)-27*9^(n+3)+12*7^(n+3)-1)/432` -/
def P10172342508737188498.Spec : Prop :=
  ∀ n, P10172342508737188498.a n = (A024441 n : ℚ)

end A024441

/-! ## A024441.P16864869009911613214

`∑[A020970(n)]`
-/

namespace A024441.P16864869009911613214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024441.P16864869009911613214

namespace A024441

/-- `∑[A020970(n)]` -/
def P16864869009911613214.Spec : Prop :=
  ∀ n, P16864869009911613214.a n = A024441 n

end A024441

/-! ## A024441.P135113070621143789

`2*A021954(n)-A021864(n)`
-/

namespace A024441.P135113070621143789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021954 n - A021864 n

end

end A024441.P135113070621143789

namespace A024441

/-- `2*A021954(n)-A021864(n)` -/
def P135113070621143789.Spec : Prop :=
  ∀ n, P135113070621143789.a n = A024441 n

end A024441

/-! ## A024441.P7503415462142185842

`2*A024438(n)-A024437(n)`
-/

namespace A024441.P7503415462142185842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024438 n - A024437 n

end

end A024441.P7503415462142185842

namespace A024441

/-- `2*A024438(n)-A024437(n)` -/
def P7503415462142185842.Spec : Prop :=
  ∀ n, P7503415462142185842.a n = A024441 n

end A024441

/-! ## A024441.P8060215479108987937

`A016252(n+1)-A016250(n+1)`
-/

namespace A024441.P8060215479108987937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016252 (n + 1) - A016250 (n + 1)

end

end A024441.P8060215479108987937

namespace A024441

/-- `A016252(n+1)-A016250(n+1)` -/
def P8060215479108987937.Spec : Prop :=
  ∀ n, P8060215479108987937.a n = A024441 n

end A024441

/-! ## A024441.P3075520894290243759

`a(n-1)+2*A019682(n)-A019613(n)` with `a(0)=1`
-/

namespace A024441.P3075520894290243759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 * A019682 n - A019613 n)

end

end A024441.P3075520894290243759

namespace A024441

/-- `a(n-1)+2*A019682(n)-A019613(n)` -/
def P3075520894290243759.Spec : Prop :=
  ∀ n, P3075520894290243759.a n = A024441 n

end A024441

/-! ## A024441.P7657742220733916196

`2*A024442(n)-A024444(n)`
-/

namespace A024441.P7657742220733916196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024442 n - A024444 n

end

end A024441.P7657742220733916196

namespace A024441

/-- `2*A024442(n)-A024444(n)` -/
def P7657742220733916196.Spec : Prop :=
  ∀ n, P7657742220733916196.a n = A024441 n

end A024441

/-!
# A024442: Expansion of 1/((1-x)(1-7x)(1-9x)(1-11x)).

The programs for A024442, the canonical program `A024442.P13574401704165736401` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024442 has offset 0).

The definition of A024442 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024442.P13574401704165736401

`(6*11^(n+3)-15*9^(n+3)+10*7^(n+3)-1)/480`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024442

/-- `(6*11^(n+3)-15*9^(n+3)+10*7^(n+3)-1)/480` -/
def P13574401704165736401.Spec : Prop :=
  ∀ n, P13574401704165736401.a n = (A024442 n : ℚ)

end A024442

/-! ## A024442.P8057632451957899001

`∑[A020971(n)]`
-/

namespace A024442.P8057632451957899001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024442.P8057632451957899001

namespace A024442

/-- `∑[A020971(n)]` -/
def P8057632451957899001.Spec : Prop :=
  ∀ n, P8057632451957899001.a n = A024442 n

end A024442

/-! ## A024442.P16404162684347952060

`A020971(Δ[n²]-n-1)+a(n-1)` with `a(0)=1`
-/

namespace A024442.P16404162684347952060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020971 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ) - 1).toNat + a (n - 1)

end

end A024442.P16404162684347952060

namespace A024442

/-- `A020971(Δ[n²]-n-1)+a(n-1)` -/
def P16404162684347952060.Spec : Prop :=
  ∀ n, P16404162684347952060.a n = A024442 n

end A024442

/-! ## A024442.P2442493018330948982

`2*A021694(n)-A021594(n)`
-/

namespace A024442.P2442493018330948982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021694 n - A021594 n

end

end A024442.P2442493018330948982

namespace A024442

/-- `2*A021694(n)-A021594(n)` -/
def P2442493018330948982.Spec : Prop :=
  ∀ n, P2442493018330948982.a n = A024442 n

end A024442

/-! ## A024442.P4468426357471888664

`2*A023540(n)-A022455(n)`
-/

namespace A024442.P4468426357471888664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023540 n - A022455 n

end

end A024442.P4468426357471888664

namespace A024442

/-- `2*A023540(n)-A022455(n)` -/
def P4468426357471888664.Spec : Prop :=
  ∀ n, P4468426357471888664.a n = A024442 n

end A024442

/-! ## A024442.P8094198559550471635

`∑[2*A020499(n)-A020000(n)]`
-/

namespace A024442.P8094198559550471635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020499 n - A020000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024442.P8094198559550471635

namespace A024442

/-- `∑[2*A020499(n)-A020000(n)]` -/
def P8094198559550471635.Spec : Prop :=
  ∀ n, P8094198559550471635.a n = A024442 n

end A024442

/-! ## A024442.P4125491689008917919

`A021684(n)+A021714(n)-A021594(n)`
-/

namespace A024442.P4125491689008917919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021684 n + (A021714 n - A021594 n)

end

end A024442.P4125491689008917919

namespace A024442

/-- `A021684(n)+A021714(n)-A021594(n)` -/
def P4125491689008917919.Spec : Prop :=
  ∀ n, P4125491689008917919.a n = A024442 n

end A024442

/-! ## A024442.P7402044045980070726

`A022455(n)+A023540(n)-A022453(n)`
-/

namespace A024442.P7402044045980070726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022455 n + (A023540 n - A022453 n)

end

end A024442.P7402044045980070726

namespace A024442

/-- `A022455(n)+A023540(n)-A022453(n)` -/
def P7402044045980070726.Spec : Prop :=
  ∀ n, P7402044045980070726.a n = A024442 n

end A024442

/-!
# A024443: Expansion of 1/((1-x)(1-7x)(1-9x)(1-12x)).

The programs for A024443, there is no canonical definition to state claims against.
-/

/-! ## A024443.P8971892927305385773

`∑[A020972(n)]`
-/

namespace A024443.P8971892927305385773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020972 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024443.P8971892927305385773

/-! ## A024443.P9241245460559688087

`A016255(n)+9*a(n-1)` with `a(0)=1`
-/

namespace A024443.P9241245460559688087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016255 n + 9 * a (n - 1)

end

end A024443.P9241245460559688087

/-! ## A024443.P16501366343530673171

`A016250(n)+4*3*a(n-1)` with `a(0)=1`
-/

namespace A024443.P16501366343530673171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016250 n + 4 * (3 * a (n - 1))

end

end A024443.P16501366343530673171

/-! ## A024443.P15296818949179651787

`A020972(n%(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A024443.P15296818949179651787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020972 (n % (n + 1)) + a (n - 1)

end

end A024443.P15296818949179651787

/-! ## A024443.P13551461164083659768

`2*A021304(n)-A021229(n)`
-/

namespace A024443.P13551461164083659768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021304 n - A021229 n

end

end A024443.P13551461164083659768

/-! ## A024443.P14437184680943025065

`2*A023953(n)-A023950(n)`
-/

namespace A024443.P14437184680943025065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023953 n - A023950 n

end

end A024443.P14437184680943025065

/-! ## A024443.P2033075832570841301

`A020972(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A024443.P2033075832570841301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020972 n + a (A023443 n).toNat

end

end A024443.P2033075832570841301

/-! ## A024443.P10769412790805997139

`∑[2*A016324(n)-A016312(n)]`
-/

namespace A024443.P10769412790805997139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016324 n - A016312 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024443.P10769412790805997139

/-! ## A024443.P10314419832732146895

`A020972(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A024443.P10314419832732146895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020972 (A028310 n).toNat + a (n - 1)

end

end A024443.P10314419832732146895

/-! ## A024443.P14985978109252259077

`A021894(n)+A021974(n)-A021864(n)`
-/

namespace A024443.P14985978109252259077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021894 n + (A021974 n - A021864 n)

end

end A024443.P14985978109252259077

/-!
# A024444: Expansion of 1/((1-x)(1-7x)(1-10x)(1-11x)).

The programs for A024444, there is no canonical definition to state claims against.
-/

/-! ## A024444.P5401914356116161888

`∑[A020973(n)]`
-/

namespace A024444.P5401914356116161888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020973 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024444.P5401914356116161888

/-! ## A024444.P5492397563210712487

`2*A021714(n)-A021604(n)`
-/

namespace A024444.P5492397563210712487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021714 n - A021604 n

end

end A024444.P5492397563210712487

/-! ## A024444.P12248314308487282564

`2*A021984(n)-A021884(n)`
-/

namespace A024444.P12248314308487282564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021984 n - A021884 n

end

end A024444.P12248314308487282564

/-! ## A024444.P10266033348106694002

`2*A024442(n)-A024441(n)`
-/

namespace A024444.P10266033348106694002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024442 n - A024441 n

end

end A024444.P10266033348106694002

/-! ## A024444.P11547576904084542326

`A016254(n+1)-A016252(n+1)`
-/

namespace A024444.P11547576904084542326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016254 (n + 1) - A016252 (n + 1)

end

end A024444.P11547576904084542326

/-! ## A024444.P17859879566646666772

`A024439(n)+A024772(n)-A024441(n)`
-/

namespace A024444.P17859879566646666772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024439 n + (A024772 n - A024441 n)

end

end A024444.P17859879566646666772

/-! ## A024444.P17098857132133859566

`2*A024445(n)-A024446(n)`
-/

namespace A024444.P17098857132133859566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024445 n - A024446 n

end

end A024444.P17098857132133859566

/-!
# A024445: Expansion of 1/((1-x)*(1-7*x)*(1-10*x)*(1-12*x)).

The programs for A024445, there is no canonical definition to state claims against.
-/

/-! ## A024445.P5904928775235130542

`∑[A020974(n)]`
-/

namespace A024445.P5904928775235130542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024445.P5904928775235130542

/-! ## A024445.P1314269157227633979

`A020974(round(sqrt(n²+1)))+a(n-1)` with `a(0)=1`
-/

namespace A024445.P1314269157227633979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020974 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + a (n - 1)

end

end A024445.P1314269157227633979

/-! ## A024445.P5077565259814310930

`2*A021324(n)-A021234(n)`
-/

namespace A024445.P5077565259814310930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021324 n - A021234 n

end

end A024445.P5077565259814310930

/-! ## A024445.P15759334861099075357

`2*A021994(n)-A021894(n)`
-/

namespace A024445.P15759334861099075357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021994 n - A021894 n

end

end A024445.P15759334861099075357

/-! ## A024445.P11455444296141776172

`∑[2*A016326(n)-A016313(n)]`
-/

namespace A024445.P11455444296141776172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016326 n - A016313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024445.P11455444296141776172

/-! ## A024445.P7073767655579925180

`∑[2*A019747(n)-A019628(n)]`
-/

namespace A024445.P7073767655579925180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019747 n - A019628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024445.P7073767655579925180

/-! ## A024445.P12503560450241028116

`∑[(A020975(n)+A020973(n))/2]`
-/

namespace A024445.P12503560450241028116
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020975 n + A020973 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024445.P12503560450241028116

/-! ## A024445.P9202525845166371950

`A021314(n)+A021334(n)-A021234(n)`
-/

namespace A024445.P9202525845166371950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021314 n + (A021334 n - A021234 n)

end

end A024445.P9202525845166371950

/-! ## A024445.P16912877781295757727

`A021984(n)+A022000(n)-A021894(n)`
-/

namespace A024445.P16912877781295757727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021984 n + (A022000 n - A021894 n)

end

end A024445.P16912877781295757727

/-!
# A024446: Expansion of 1/((1-x)(1-7x)(1-11x)(1-12x)).

The programs for A024446, there is no canonical definition to state claims against.
-/

/-! ## A024446.P3757100136682399686

`∑[A020975(n)]`
-/

namespace A024446.P3757100136682399686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024446.P3757100136682399686

/-! ## A024446.P3542775667816188874

`2*A021334(n)-A021244(n)`
-/

namespace A024446.P3542775667816188874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021334 n - A021244 n

end

end A024446.P3542775667816188874

/-! ## A024446.P11652675639534491829

`2*A021734(n)-A021629(n)`
-/

namespace A024446.P11652675639534491829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021734 n - A021629 n

end

end A024446.P11652675639534491829

/-! ## A024446.P10290357361689566588

`2*A024445(n)-A024444(n)`
-/

namespace A024446.P10290357361689566588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024445 n - A024444 n

end

end A024446.P10290357361689566588

/-! ## A024446.P8775732676682736103

`∑[(A020984(n)+A020972(n))/2]`
-/

namespace A024446.P8775732676682736103
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020984 n + A020972 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024446.P8775732676682736103

/-! ## A024446.P17290749471741512017

`A016255(n+1)-A016254(n+1)`
-/

namespace A024446.P17290749471741512017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016255 (n + 1) - A016254 (n + 1)

end

end A024446.P17290749471741512017

/-!
# A024447: Sum of the products of the primes taken 2 at a time from the first n primes.

The programs for A024447, the canonical program `A024447.P10375712064982123198` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024447 has offset 1).

The definition of A024447 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A024450, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A024447.P10375712064982123198

`(A007504(n+1)²-A024450(n+1))/2`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A024447

/-- `(A007504(n+1)²-A024450(n+1))/2` -/
def P10375712064982123198.Spec : Prop :=
  ∀ n, P10375712064982123198.a n = (A024447 (n + 1) : ℚ)

end A024447

/-! ## A024447.P13131078857750697820

`∑[A339194(n+1)]`
-/

namespace A024447.P13131078857750697820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024447.P13131078857750697820

namespace A024447

/-- `∑[A339194(n+1)]` -/
def P13131078857750697820.Spec : Prop :=
  ∀ n, P13131078857750697820.a n = A024447 (n + 1)

end A024447

/-! ## A024447.P15098175110324338648

`A065595(n+1)/2`
-/

namespace A024447.P15098175110324338648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065595 (n + 1) : ℚ) / 2

end

end A024447.P15098175110324338648

namespace A024447

/-- `A065595(n+1)/2` -/
def P15098175110324338648.Spec : Prop :=
  ∀ n, P15098175110324338648.a n = (A024447 (n + 1) : ℚ)

end A024447

/-! ## A024447.P7545619583561945457

`∑[Δ[A007504(n)]*A007504(n)]`
-/

namespace A024447.P7545619583561945457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024447.P7545619583561945457

namespace A024447

/-- `∑[Δ[A007504(n)]*A007504(n)]` -/
def P7545619583561945457.Spec : Prop :=
  ∀ n, P7545619583561945457.a n = A024447 (n + 1)

end A024447

/-! ## A024447.P9112702092054610798

`∑[A000040(n+1)*A007504(n)]`
-/

namespace A024447.P9112702092054610798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024447.P9112702092054610798

namespace A024447

/-- `∑[A000040(n+1)*A007504(n)]` -/
def P9112702092054610798.Spec : Prop :=
  ∀ n, P9112702092054610798.a n = A024447 (n + 1)

end A024447

/-! ## A024447.P9255981576388494713

`A357251(n+1)-A024450(n+1)`
-/

namespace A024447.P9255981576388494713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357251 (n + 1) - A024450 (n + 1)

end

end A024447.P9255981576388494713

namespace A024447

/-- `A357251(n+1)-A024450(n+1)` -/
def P9255981576388494713.Spec : Prop :=
  ∀ n, P9255981576388494713.a n = A024447 (n + 1)

end A024447

/-! ## A024447.P1066686225432491330

`∑[∑[A054541(n+1)]*A007504(n)]`
-/

namespace A024447.P1066686225432491330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024447.P1066686225432491330

namespace A024447

/-- `∑[∑[A054541(n+1)]*A007504(n)]` -/
def P1066686225432491330.Spec : Prop :=
  ∀ n, P1066686225432491330.a n = A024447 (n + 1)

end A024447

/-! ## A024447.P6808819202414488232

`∑[A034960(n+1)-A143215(n+1)]`
-/

namespace A024447.P6808819202414488232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034960 (n + 1) - A143215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024447.P6808819202414488232

namespace A024447

/-- `∑[A034960(n+1)-A143215(n+1)]` -/
def P6808819202414488232.Spec : Prop :=
  ∀ n, P6808819202414488232.a n = A024447 (n + 1)

end A024447

/-! ## A024447.P8849147354121962176

`A024522(n+2)-∑[A000040(n+1)]`
-/

namespace A024447.P8849147354121962176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024522 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024447.P8849147354121962176

namespace A024447

/-- `A024522(n+2)-∑[A000040(n+1)]` -/
def P8849147354121962176.Spec : Prop :=
  ∀ n, P8849147354121962176.a n = A024447 (n + 1)

end A024447

/-! ## A024447.P17106842805105943988

`∑[(A040976(n+1)+2)*A007504(n)]`
-/

namespace A024447.P17106842805105943988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040976 (n + 1) + 2) * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024447.P17106842805105943988

namespace A024447

/-- `∑[(A040976(n+1)+2)*A007504(n)]` -/
def P17106842805105943988.Spec : Prop :=
  ∀ n, P17106842805105943988.a n = A024447 (n + 1)

end A024447

/-! ## A024447.P12986079011108058767

`∑[A100484(n+1)/2*A007504(n)]`
-/

namespace A024447.P12986079011108058767
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (n + 1) : ℚ) / 2 * (A007504 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024447.P12986079011108058767

namespace A024447

/-- `∑[A100484(n+1)/2*A007504(n)]` -/
def P12986079011108058767.Spec : Prop :=
  ∀ n, P12986079011108058767.a n = (A024447 (n + 1) : ℚ)

end A024447

/-! ## A024447.P17807590283122745033

`A065762(n+1)/2-A024450(n+1)`
-/

namespace A024447.P17807590283122745033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065762 (n + 1) : ℚ) / 2 - (A024450 (n + 1) : ℚ)

end

end A024447.P17807590283122745033

namespace A024447

/-- `A065762(n+1)/2-A024450(n+1)` -/
def P17807590283122745033.Spec : Prop :=
  ∀ n, P17807590283122745033.a n = (A024447 (n + 1) : ℚ)

end A024447

/-! ## A024447.P3973528799005896219

`∑[A000040(n+1)*∑[A182986(n+1)]]`
-/

namespace A024447.P3973528799005896219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024447.P3973528799005896219

namespace A024447

/-- `∑[A000040(n+1)*∑[A182986(n+1)]]` -/
def P3973528799005896219.Spec : Prop :=
  ∀ n, P3973528799005896219.a n = A024447 (n + 1)

end A024447

/-! ## A024447.P13534222038486373530

`∑[(A014284(n+1)-1)*A000040(n+1)]`
-/

namespace A024447.P13534222038486373530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014284 (n + 1) - 1) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024447.P13534222038486373530

namespace A024447

/-- `∑[(A014284(n+1)-1)*A000040(n+1)]` -/
def P13534222038486373530.Spec : Prop :=
  ∀ n, P13534222038486373530.a n = A024447 (n + 1)

end A024447

/-! ## A024447.P12058742054646376178

`∑[(∑[A008578(n+1)]-1)*A000040(n+1)]`
-/

namespace A024447.P12058742054646376178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j - 1) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024447.P12058742054646376178

namespace A024447

/-- `∑[(∑[A008578(n+1)]-1)*A000040(n+1)]` -/
def P12058742054646376178.Spec : Prop :=
  ∀ n, P12058742054646376178.a n = A024447 (n + 1)

end A024447

/-! ## A024447.P7444782473534726903

`(∑[A000040(n+1)]²-∑[A001248(n+1)])/2`
-/

namespace A024447.P7444782473534726903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - ∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

end

end A024447.P7444782473534726903

namespace A024447

/-- `(∑[A000040(n+1)]²-∑[A001248(n+1)])/2` -/
def P7444782473534726903.Spec : Prop :=
  ∀ n, P7444782473534726903.a n = (A024447 (n + 1) : ℚ)

end A024447

/-! ## A024447.P9535544774163091565

`A007504(n+1)*A007504(n+1)-A357251(n+1)`
-/

namespace A024447.P9535544774163091565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) * A007504 (n + 1) - A357251 (n + 1)

end

end A024447.P9535544774163091565

namespace A024447

/-- `A007504(n+1)*A007504(n+1)-A357251(n+1)` -/
def P9535544774163091565.Spec : Prop :=
  ∀ n, P9535544774163091565.a n = A024447 (n + 1)

end A024447

/-! ## A024447.P11321470769963266055

`∑[A007504(n)*A008578(n+2)]`
-/

namespace A024447.P11321470769963266055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n * A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024447.P11321470769963266055

namespace A024447

/-- `∑[A007504(n)*A008578(n+2)]` -/
def P11321470769963266055.Spec : Prop :=
  ∀ n, P11321470769963266055.a n = A024447 (n + 1)

end A024447

/-! ## A024447.P6135188359745560664

`∑[record[A006530(n+2)]*A007504(n)]`
-/

namespace A024447.P6135188359745560664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024447.P6135188359745560664

namespace A024447

/-- `∑[record[A006530(n+2)]*A007504(n)]` -/
def P6135188359745560664.Spec : Prop :=
  ∀ n, P6135188359745560664.a n = A024447 (n + 1)

end A024447

/-! ## A024447.P17415667727187140018

`∑[record[A000010(n+1)+1]*A007504(n)]`
-/

namespace A024447.P17415667727187140018
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024447.P17415667727187140018

namespace A024447

/-- `∑[record[A000010(n+1)+1]*A007504(n)]` -/
def P17415667727187140018.Spec : Prop :=
  ∀ n, P17415667727187140018.a n = A024447 (n + 1)

end A024447

/-!
# A024448: a(n) = 3rd elementary symmetric function of the first n+2 primes.

The programs for A024448, the canonical program `A024448.P16753542507585520483` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024448 has offset 1).

The definition of A024448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024448.P16753542507585520483

`∑[A000040(n+3)*A024447(n+2)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A024448

/-- `∑[A000040(n+3)*A024447(n+2)]` -/
def P16753542507585520483.Spec : Prop :=
  ∀ n, P16753542507585520483.a n = A024448 (n + 1)

theorem P16753542507585520483.correct : P16753542507585520483.Spec := by
  intro n
  simp only [A024448, Nat.add_sub_cancel]

end A024448

/-! ## A024448.P16650981227844826398

`∑[A008578(n+4)*A024447(n+2)]`
-/

namespace A024448.P16650981227844826398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 4) * A024447 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024448.P16650981227844826398

namespace A024448

/-- `∑[A008578(n+4)*A024447(n+2)]` -/
def P16650981227844826398.Spec : Prop :=
  ∀ n, P16650981227844826398.a n = A024448 (n + 1)

end A024448

/-! ## A024448.P16136261164294912329

`∑[A024447(n+2)*A158611(n+5)]`
-/

namespace A024448.P16136261164294912329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024447 (n + 2) * A158611 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024448.P16136261164294912329

namespace A024448

/-- `∑[A024447(n+2)*A158611(n+5)]` -/
def P16136261164294912329.Spec : Prop :=
  ∀ n, P16136261164294912329.a n = A024448 (n + 1)

end A024448

/-! ## A024448.P2209538212979435399

`A260613(A167614(n+2))`
-/

namespace A024448.P2209538212979435399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260613 (A167614 (n + 2)).toNat

end

end A024448.P2209538212979435399

namespace A024448

/-- `A260613(A167614(n+2))` -/
def P2209538212979435399.Spec : Prop :=
  ∀ n, P2209538212979435399.a n = A024448 (n + 1)

end A024448

/-! ## A024448.P17365491444103893439

`abs(A238146(A167614(n+1)))`
-/

namespace A024448.P17365491444103893439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A238146 (A167614 (n + 1)).toNat|

end

end A024448.P17365491444103893439

namespace A024448

/-- `abs(A238146(A167614(n+1)))` -/
def P17365491444103893439.Spec : Prop :=
  ∀ n, P17365491444103893439.a n = A024448 (n + 1)

end A024448

/-! ## A024448.P17529377886426392270

`A260613(eq[4, A002260(n+1)])`
-/

namespace A024448.P17529377886426392270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024448.P17529377886426392270

namespace A024448

/-- `A260613(eq[4, A002260(n+1)])` -/
def P17529377886426392270.Spec : Prop :=
  ∀ n, P17529377886426392270.a n = A024448 (n + 1)

end A024448

/-! ## A024448.P1242439457129278068

`A007814(A184777(n+1))-A238146(A167614(n+1))`
-/

namespace A024448.P1242439457129278068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A184777 (n + 1)).toNat - A238146 (A167614 (n + 1)).toNat

end

end A024448.P1242439457129278068

namespace A024448

/-- `A007814(A184777(n+1))-A238146(A167614(n+1))` -/
def P1242439457129278068.Spec : Prop :=
  ∀ n, P1242439457129278068.a n = A024448 (n + 1)

end A024448

/-!
# A024449: 4th elementary symmetric function of the first n+3 primes.

The programs for A024449, the canonical program `A024449.P16431338297242596881` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024449 has offset 1).

The definition of A024449 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024449.P16431338297242596881

`∑[A000040(n+4)*A024448(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A024449

/-- `∑[A000040(n+4)*A024448(n+1)]` -/
def P16431338297242596881.Spec : Prop :=
  ∀ n, P16431338297242596881.a n = A024449 (n + 1)

theorem P16431338297242596881.correct : P16431338297242596881.Spec := by
  intro n
  simp only [A024449, Nat.add_sub_cancel]

end A024449

/-! ## A024449.P9400964663669894435

`∑[A008578(n+5)*A024448(n+1)]`
-/

namespace A024449.P9400964663669894435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 5) * A024448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024449.P9400964663669894435

namespace A024449

/-- `∑[A008578(n+5)*A024448(n+1)]` -/
def P9400964663669894435.Spec : Prop :=
  ∀ n, P9400964663669894435.a n = A024449 (n + 1)

end A024449

/-! ## A024449.P2259705972502363245

`∑[A024448(n+1)*A090417(n+1)]`
-/

namespace A024449.P2259705972502363245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024448 (n + 1) * A090417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024449.P2259705972502363245

namespace A024449

/-- `∑[A024448(n+1)*A090417(n+1)]` -/
def P2259705972502363245.Spec : Prop :=
  ∀ n, P2259705972502363245.a n = A024449 (n + 1)

end A024449

/-! ## A024449.P9851265444577821610

`A238146(A167614(n+2)+1)`
-/

namespace A024449.P9851265444577821610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238146 (A167614 (n + 2) + 1).toNat

end

end A024449.P9851265444577821610

namespace A024449

/-- `A238146(A167614(n+2)+1)` -/
def P9851265444577821610.Spec : Prop :=
  ∀ n, P9851265444577821610.a n = A024449 (n + 1)

end A024449

/-! ## A024449.P4018507294488587243

`A238146(A000217(n+3)+4)`
-/

namespace A024449.P4018507294488587243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238146 (A000217 (n + 3) + 4).toNat

end

end A024449.P4018507294488587243

namespace A024449

/-- `A238146(A000217(n+3)+4)` -/
def P4018507294488587243.Spec : Prop :=
  ∀ n, P4018507294488587243.a n = A024449 (n + 1)

end A024449

/-! ## A024449.P16441894730875044623

`A260613(eq[5, A002260(n+1)])`
-/

namespace A024449.P16441894730875044623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024449.P16441894730875044623

namespace A024449

/-- `A260613(eq[5, A002260(n+1)])` -/
def P16441894730875044623.Spec : Prop :=
  ∀ n, P16441894730875044623.a n = A024449 (n + 1)

end A024449

/-! ## A024449.P11682572877612829515

`A070918(A000217(n+5)-5)`
-/

namespace A024449.P11682572877612829515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070918 (A000217 (n + 5) - 5).toNat

end

end A024449.P11682572877612829515

namespace A024449

/-- `A070918(A000217(n+5)-5)` -/
def P11682572877612829515.Spec : Prop :=
  ∀ n, P11682572877612829515.a n = A024449 (n + 1)

end A024449

/-!
# A024450: Sum of squares of the first n primes.

The programs for A024450, the canonical program `A024450.P13748385754044755097` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024450 has offset 1).

The definition of A024450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024450.P16312298811626601845

`A007504(n+1)²-2*A024447(n+1)`
-/

namespace A024450.P16312298811626601845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) ^ 2 - 2 * A024447 (n + 1)

end

end A024450.P16312298811626601845

namespace A024450

/-- `A007504(n+1)²-2*A024447(n+1)` -/
def P16312298811626601845.Spec : Prop :=
  ∀ n, P16312298811626601845.a n = A024450 (n + 1)

end A024450

/-! ## A024450.P13748385754044755097

`∑[A001248(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A024450

/-- `∑[A001248(n+1)]` -/
def P13748385754044755097.Spec : Prop :=
  ∀ n, P13748385754044755097.a n = A024450 (n + 1)

theorem P13748385754044755097.correct : P13748385754044755097.Spec := by
  intro n
  simp only [A024450, Nat.add_sub_cancel]

end A024450

/-! ## A024450.P4874156466202040636

`∑[Δ[A007504(n)]²]`
-/

namespace A024450.P4874156466202040636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024450.P4874156466202040636

namespace A024450

/-- `∑[Δ[A007504(n)]²]` -/
def P4874156466202040636.Spec : Prop :=
  ∀ n, P4874156466202040636.a n = A024450 (n + 1)

end A024450

/-! ## A024450.P1181521024734886872

`∑[Δ[A008348(n)]²]`
-/

namespace A024450.P1181521024734886872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024450.P1181521024734886872

namespace A024450

/-- `∑[Δ[A008348(n)]²]` -/
def P1181521024734886872.Spec : Prop :=
  ∀ n, P1181521024734886872.a n = A024450 (n + 1)

end A024450

/-! ## A024450.P12487038834369910727

`∑[Δ[A022837(n)]²]`
-/

namespace A024450.P12487038834369910727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024450.P12487038834369910727

namespace A024450

/-- `∑[Δ[A022837(n)]²]` -/
def P12487038834369910727.Spec : Prop :=
  ∀ n, P12487038834369910727.a n = A024450 (n + 1)

end A024450

/-! ## A024450.P8957607796617331313

`∑[Δ[A064365(n)]²]`
-/

namespace A024450.P8957607796617331313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024450.P8957607796617331313

namespace A024450

/-- `∑[Δ[A064365(n)]²]` -/
def P8957607796617331313.Spec : Prop :=
  ∀ n, P8957607796617331313.a n = A024450 (n + 1)

end A024450

/-! ## A024450.P1477850090985864958

`∑[p?[A259153(n)]²]`
-/

namespace A024450.P1477850090985864958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024450.P1477850090985864958

namespace A024450

/-- `∑[p?[A259153(n)]²]` -/
def P1477850090985864958.Spec : Prop :=
  ∀ n, P1477850090985864958.a n = A024450 (n + 1)

end A024450

/-! ## A024450.P14936258107021431202

`∑[A000040(n+1)²]`
-/

namespace A024450.P14936258107021431202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024450.P14936258107021431202

namespace A024450

/-- `∑[A000040(n+1)²]` -/
def P14936258107021431202.Spec : Prop :=
  ∀ n, P14936258107021431202.a n = A024450 (n + 1)

end A024450

/-! ## A024450.P14445755068927554982

`∑[A273960(n+1)²]`
-/

namespace A024450.P14445755068927554982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024450.P14445755068927554982

namespace A024450

/-- `∑[A273960(n+1)²]` -/
def P14445755068927554982.Spec : Prop :=
  ∀ n, P14445755068927554982.a n = A024450 (n + 1)

end A024450

/-! ## A024450.P14234898655716131171

`∑[sqrt(A030514(n+1))]`
-/

namespace A024450.P14234898655716131171
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030514 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024450.P14234898655716131171

namespace A024450

/-- `∑[sqrt(A030514(n+1))]` -/
def P14234898655716131171.Spec : Prop :=
  ∀ n, P14234898655716131171.a n = (A024450 (n + 1) : ℝ)

end A024450

/-! ## A024450.P5447102650104327727

`∑[A049001(n+1)+2]`
-/

namespace A024450.P5447102650104327727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024450.P5447102650104327727

namespace A024450

/-- `∑[A049001(n+1)+2]` -/
def P5447102650104327727.Spec : Prop :=
  ∀ n, P5447102650104327727.a n = A024450 (n + 1)

end A024450

/-! ## A024450.P10881829322517275130

`∑[sqrt(sqrt(A179645(n+1)))]`
-/

namespace A024450.P10881829322517275130
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A179645 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024450.P10881829322517275130

namespace A024450

/-- `∑[sqrt(sqrt(A179645(n+1)))]` -/
def P10881829322517275130.Spec : Prop :=
  ∀ n, P10881829322517275130.a n = (A024450 (n + 1) : ℝ)

end A024450

/-! ## A024450.P2453428965578381231

`∑[∑[A054541(n+1)]²]`
-/

namespace A024450.P2453428965578381231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024450.P2453428965578381231

namespace A024450

/-- `∑[∑[A054541(n+1)]²]` -/
def P2453428965578381231.Spec : Prop :=
  ∀ n, P2453428965578381231.a n = A024450 (n + 1)

end A024450

/-! ## A024450.P11204807549828353765

`∑[(A006093(n+1)+1)²]`
-/

namespace A024450.P11204807549828353765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024450.P11204807549828353765

namespace A024450

/-- `∑[(A006093(n+1)+1)²]` -/
def P11204807549828353765.Spec : Prop :=
  ∀ n, P11204807549828353765.a n = A024450 (n + 1)

end A024450

/-! ## A024450.P17701004025641099685

`∑[(1-A008864(n+1))²]`
-/

namespace A024450.P17701004025641099685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A008864 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024450.P17701004025641099685

namespace A024450

/-- `∑[(1-A008864(n+1))²]` -/
def P17701004025641099685.Spec : Prop :=
  ∀ n, P17701004025641099685.a n = A024450 (n + 1)

end A024450

/-! ## A024450.P8347177499074949969

`∑[(A040976(n+1)+2)²]`
-/

namespace A024450.P8347177499074949969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040976 (n + 1) + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024450.P8347177499074949969

namespace A024450

/-- `∑[(A040976(n+1)+2)²]` -/
def P8347177499074949969.Spec : Prop :=
  ∀ n, P8347177499074949969.a n = A024450 (n + 1)

end A024450

/-! ## A024450.P9499409028519155066

`∑[A006005(n+1)²]+3`
-/

namespace A024450.P9499409028519155066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A024450.P9499409028519155066

namespace A024450

/-- `∑[A006005(n+1)²]+3` -/
def P9499409028519155066.Spec : Prop :=
  ∀ n, P9499409028519155066.a n = A024450 (n + 1)

end A024450

/-! ## A024450.P8284727388185176270

`∑[(2-A052147(n+1))²]`
-/

namespace A024450.P8284727388185176270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A052147 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024450.P8284727388185176270

namespace A024450

/-- `∑[(2-A052147(n+1))²]` -/
def P8284727388185176270.Spec : Prop :=
  ∀ n, P8284727388185176270.a n = A024450 (n + 1)

end A024450

/-! ## A024450.P17393751150014264279

`∑[(A001748(n+1)/3)²]`
-/

namespace A024450.P17393751150014264279
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001748 (n + 1) : ℚ) / 3) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024450.P17393751150014264279

namespace A024450

/-- `∑[(A001748(n+1)/3)²]` -/
def P17393751150014264279.Spec : Prop :=
  ∀ n, P17393751150014264279.a n = (A024450 (n + 1) : ℚ)

end A024450

/-!
# A024451: a(n) is the numerator of Sum_{i = 1..n} 1/prime(i).

The programs for A024451, there is no canonical definition to state claims against.
-/

/-! ## A024451.P12203805704166071334

`a(n-1)*A000040(n)+A002110(n-1)` with `a(0)=0`
-/

namespace A024451.P12203805704166071334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) * A000040 n + A002110 (n - 1)

end

end A024451.P12203805704166071334

/-! ## A024451.P12784626762909264504

`record[A373842(n+1)]`
-/

namespace A024451.P12784626762909264504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024451.P12784626762909264504

/-! ## A024451.P14605399574854287787

`A106830(A006093(n+1))`
-/

namespace A024451.P14605399574854287787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106830 (A006093 (n + 1)).toNat

end

end A024451.P14605399574854287787

/-! ## A024451.P5617195736579026028

`A106830(A008578(n+1))`
-/

namespace A024451.P5617195736579026028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106830 (A008578 (n + 1)).toNat

end

end A024451.P5617195736579026028

/-! ## A024451.P17132651423069292302

`A106830(A015919(n+1))`
-/

namespace A024451.P17132651423069292302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106830 (A015919 (n + 1)).toNat

end

end A024451.P17132651423069292302

/-! ## A024451.P4449735688868824789

`A106830(A064555(n+1))`
-/

namespace A024451.P4449735688868824789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106830 (A064555 (n + 1)).toNat

end

end A024451.P4449735688868824789

/-! ## A024451.P15589027273813069158

`A106830(A065514(n+1))`
-/

namespace A024451.P15589027273813069158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106830 (A065514 (n + 1)).toNat

end

end A024451.P15589027273813069158

/-! ## A024451.P17081790968492715409

`A106830(A112925(n+1))`
-/

namespace A024451.P17081790968492715409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106830 (A112925 (n + 1)).toNat

end

end A024451.P17081790968492715409

/-! ## A024451.P3269246456070926241

`A106830(A157604(n+1))`
-/

namespace A024451.P3269246456070926241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106830 (A157604 (n + 1)).toNat

end

end A024451.P3269246456070926241

/-! ## A024451.P7322656928206330037

`A373842(A000040(n+1))`
-/

namespace A024451.P7322656928206330037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373842 (A000040 (n + 1)).toNat

end

end A024451.P7322656928206330037

/-!
# A024452: a(n) = [ (2nd elementary symmetric function of P(n))/(first elementary symmetric function of P(n)) ], where P(n) = {first n+1 primes}.

The programs for A024452, the canonical program `A024452.P18220208329630154241` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024452 has offset 1).

The definition of A024452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024452.P18220208329630154241

`floor(A024447(n+2)/A007504(n+2))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A024452

/-- `floor(A024447(n+2)/A007504(n+2))` -/
def P18220208329630154241.Spec : Prop :=
  ∀ n, P18220208329630154241.a n = A024452 (n + 1)

theorem P18220208329630154241.correct : P18220208329630154241.Spec := by
  intro n
  simp only [A024452, Nat.add_sub_cancel]

end A024452

/-! ## A024452.P6417424254346017568

`A000196(∑[∑[A076076(n+1)]])`
-/

namespace A024452.P6417424254346017568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076076 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A024452.P6417424254346017568

namespace A024452

/-- `A000196(∑[∑[A076076(n+1)]])` -/
def P6417424254346017568.Spec : Prop :=
  ∀ n, P6417424254346017568.a n = A024452 (n + 1)

end A024452

/-! ## A024452.P2049488842950855115

`A000196(∑[A358105(3*(n+1))+A241765(n)])`
-/

namespace A024452.P2049488842950855115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358105 (3 * (n + 1)) + A241765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A024452.P2049488842950855115

namespace A024452

/-- `A000196(∑[A358105(3*(n+1))+A241765(n)])` -/
def P2049488842950855115.Spec : Prop :=
  ∀ n, P2049488842950855115.a n = A024452 (n + 1)

end A024452

/-! ## A024452.P353092611130904342

`∑[A064289(A123440(n+1))]`
-/

namespace A024452.P353092611130904342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064289 (A123440 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024452.P353092611130904342

namespace A024452

/-- `∑[A064289(A123440(n+1))]` -/
def P353092611130904342.Spec : Prop :=
  ∀ n, P353092611130904342.a n = A024452 (n + 1)

end A024452

/-! ## A024452.P16609386725435646020

`A023393(n)+∑[A010060(A001680(n))]`
-/

namespace A024452.P16609386725435646020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A001680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023393 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024452.P16609386725435646020

namespace A024452

/-- `A023393(n)+∑[A010060(A001680(n))]` -/
def P16609386725435646020.Spec : Prop :=
  ∀ n, P16609386725435646020.a n = A024452 (n + 1)

end A024452

/-!
# A024453: a(n) = [ (3rd elementary symmetric function of P(n))/(first elementary symmetric function of P(n)) ], where P(n) = {first n+2 primes}.

The programs for A024453, the canonical program `A024453.P7505489460028250605` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024453 has offset 1).

The definition of A024453 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A024448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A024453.P7505489460028250605

`floor(A024448(n+1)/A007504(n+3))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A024453

/-- `floor(A024448(n+1)/A007504(n+3))` -/
def P7505489460028250605.Spec : Prop :=
  ∀ n, P7505489460028250605.a n = A024453 (n + 1)

theorem P7505489460028250605.correct : P7505489460028250605.Spec := by
  intro n
  simp only [A024453, Nat.add_sub_cancel]

end A024453

/-!
# A024454: [ (4th elementary symmetric function of P(n))/(first elementary symmetric function of P(n)) ], where P(n) = {first n+3 primes}.

The programs for A024454, the canonical program `A024454.P5542157248181529919` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024454 has offset 1).

The definition of A024454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 546 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024454.P5542157248181529919

`floor(A024449(n+1)/A007504(n+4))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A024454

/-- `floor(A024449(n+1)/A007504(n+4))` -/
def P5542157248181529919.Spec : Prop :=
  ∀ n, P5542157248181529919.a n = A024454 (n + 1)

theorem P5542157248181529919.correct : P5542157248181529919.Spec := by
  intro n
  simp only [A024454, Nat.add_sub_cancel]

end A024454

/-!
# A024455: [ (3rd elementary symmetric function of P(n))/(2nd elementary symmetric function of P(n)) ], where P(n) = {first n+2 primes}.

The programs for A024455, the canonical program `A024455.P11382679767047507144` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024455 has offset 1).

The definition of A024455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024455.P11382679767047507144

`floor(A024448(n+1)/A024447(n+3))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A024455

/-- `floor(A024448(n+1)/A024447(n+3))` -/
def P11382679767047507144.Spec : Prop :=
  ∀ n, P11382679767047507144.a n = A024455 (n + 1)

theorem P11382679767047507144.correct : P11382679767047507144.Spec := by
  intro n
  simp only [A024455, Nat.add_sub_cancel]

end A024455

/-! ## A024455.P13222290670509572411

`∑[A335884(A292327(n))]`
-/

namespace A024455.P13222290670509572411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335884 (A292327 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024455.P13222290670509572411

namespace A024455

/-- `∑[A335884(A292327(n))]` -/
def P13222290670509572411.Spec : Prop :=
  ∀ n, P13222290670509572411.a n = A024455 (n + 1)

end A024455

/-! ## A024455.P12396931700573225114

`A097865(A050407(n))+∑[n]`
-/

namespace A024455.P12396931700573225114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097865 (A050407 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A024455.P12396931700573225114

namespace A024455

/-- `A097865(A050407(n))+∑[n]` -/
def P12396931700573225114.Spec : Prop :=
  ∀ n, P12396931700573225114.a n = A024455 (n + 1)

end A024455

/-! ## A024455.P11913578142345301420

`∑[A008997(A009004(2*n+5))]-1`
-/

namespace A024455.P11913578142345301420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008997 (A009004 (2 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A024455.P11913578142345301420

namespace A024455

/-- `∑[A008997(A009004(2*n+5))]-1` -/
def P11913578142345301420.Spec : Prop :=
  ∀ n, P11913578142345301420.a n = A024455 (n + 1)

end A024455

/-! ## A024455.P4288106125696910174

`A347457(∑[char[1]+n]+1)-A226621(3*(n+1))`
-/

namespace A024455.P4288106125696910174
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347457 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A226621 (3 * (n + 1))

end

end A024455.P4288106125696910174

namespace A024455

/-- `A347457(∑[char[1]+n]+1)-A226621(3*(n+1))` -/
def P4288106125696910174.Spec : Prop :=
  ∀ n, P4288106125696910174.a n = A024455 (n + 1)

end A024455

/-!
# A024456: [ (4th elementary symmetric function of P(n))/(2nd elementary symmetric function of P(n)) ], where P(n) = {first n+3 primes}.

The programs for A024456, the canonical program `A024456.P4117989325305379135` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024456 has offset 1).

The definition of A024456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 567 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024456.P4117989325305379135

`floor(A024449(n+1)/A024447(n+4))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A024456

/-- `floor(A024449(n+1)/A024447(n+4))` -/
def P4117989325305379135.Spec : Prop :=
  ∀ n, P4117989325305379135.a n = A024456 (n + 1)

theorem P4117989325305379135.correct : P4117989325305379135.Spec := by
  intro n
  simp only [A024456, Nat.add_sub_cancel]

end A024456

/-! ## A024456.P10856952806090042389

`A001462(A332836(n+2)*A351601(n+1))`
-/

namespace A024456.P10856952806090042389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A332836 (n + 2) * A351601 (n + 1)).toNat

end

end A024456.P10856952806090042389

namespace A024456

/-- `A001462(A332836(n+2)*A351601(n+1))` -/
def P10856952806090042389.Spec : Prop :=
  ∀ n, P10856952806090042389.a n = A024456 (n + 1)

end A024456

/-!
# A024457: [ (4th elementary symmetric function of P(n))/(3rd elementary symmetric function of P(n)) ], where P(n) = {first n+3 primes}.

The programs for A024457, the canonical program `A024457.P3627810274368005093` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024457 has offset 1).

The definition of A024457 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 553 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024457.P3627810274368005093

`floor(A024449(n+1)/A024448(n+2))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A024457

/-- `floor(A024449(n+1)/A024448(n+2))` -/
def P3627810274368005093.Spec : Prop :=
  ∀ n, P3627810274368005093.a n = A024457 (n + 1)

theorem P3627810274368005093.correct : P3627810274368005093.Spec := by
  intro n
  simp only [A024457, Nat.add_sub_cancel]

end A024457

/-! ## A024457.P17178258556431114366

`floor(A024454(n+1)/A024453(n+2))`
-/

namespace A024457.P17178258556431114366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024454 (n + 1) : ℚ) / (A024453 (n + 2) : ℚ)⌋

end

end A024457.P17178258556431114366

namespace A024457

/-- `floor(A024454(n+1)/A024453(n+2))` -/
def P17178258556431114366.Spec : Prop :=
  ∀ n, P17178258556431114366.a n = A024457 (n + 1)

end A024457

/-! ## A024457.P11379325513678583865

`round(log2(∑[A297425(n+1)]))`
-/

namespace A024457.P11379325513678583865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ))

end

end A024457.P11379325513678583865

namespace A024457

/-- `round(log2(∑[A297425(n+1)]))` -/
def P11379325513678583865.Spec : Prop :=
  ∀ n, P11379325513678583865.a n = A024457 (n + 1)

end A024457

/-! ## A024457.P12034218690940227773

`∑[∑[A116948(A325252(3*(n+1)))]]`
-/

namespace A024457.P12034218690940227773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116948 (A325252 (3 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024457.P12034218690940227773

namespace A024457

/-- `∑[∑[A116948(A325252(3*(n+1)))]]` -/
def P12034218690940227773.Spec : Prop :=
  ∀ n, P12034218690940227773.a n = A024457 (n + 1)

end A024457

/-! ## A024457.P8399069177771878871

`∑[A056051(A015957(n+1)+2)+n]`
-/

namespace A024457.P8399069177771878871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056051 (A015957 (n + 1) + 2).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024457.P8399069177771878871

namespace A024457

/-- `∑[A056051(A015957(n+1)+2)+n]` -/
def P8399069177771878871.Spec : Prop :=
  ∀ n, P8399069177771878871.a n = A024457 (n + 1)

end A024457

/-!
# A024458: a(n) = s(1)*s(n) + s(2)*s(n-1) + ... + s(k)*s(n+1-k), where k = floor((n+1)/2), s = (Fibonacci numbers).

The programs for A024458, the canonical program `A024458.P8977965682072535931` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024458 has offset 1).

The definition of A024458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024458.P8977965682072535931

`A128620(n)-a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A024458

/-- `A128620(n)-a(n-2)` -/
def P8977965682072535931.Spec : Prop :=
  ∀ n, P8977965682072535931.a n = A024458 (n + 1)

theorem P8977965682072535931.correct : P8977965682072535931.Spec := by
  intro n
  simp only [A024458, Nat.add_sub_cancel]

end A024458

/-! ## A024458.P747812333671605575

`A025082(n+1)-A025078(n+1)`
-/

namespace A024458.P747812333671605575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025082 (n + 1) - A025078 (n + 1)

end

end A024458.P747812333671605575

namespace A024458

/-- `A025082(n+1)-A025078(n+1)` -/
def P747812333671605575.Spec : Prop :=
  ∀ n, P747812333671605575.a n = A024458 (n + 1)

end A024458

/-! ## A024458.P7571259623914040581

`A025079(n+1)-A025082(n+1)`
-/

namespace A024458.P7571259623914040581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025079 (n + 1) - A025082 (n + 1)

end

end A024458.P7571259623914040581

namespace A024458

/-- `A025079(n+1)-A025082(n+1)` -/
def P7571259623914040581.Spec : Prop :=
  ∀ n, P7571259623914040581.a n = A024458 (n + 1)

end A024458

/-! ## A024458.P5162087835068262278

`A067330(∑[or(1, n)]-1)`
-/

namespace A024458.P5162087835068262278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A024458.P5162087835068262278

namespace A024458

/-- `A067330(∑[or(1, n)]-1)` -/
def P5162087835068262278.Spec : Prop :=
  ∀ n, P5162087835068262278.a n = A024458 (n + 1)

end A024458

/-! ## A024458.P8866684982188530272

`A067418(∑[n%2+n])`
-/

namespace A024458.P8866684982188530272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A024458.P8866684982188530272

namespace A024458

/-- `A067418(∑[n%2+n])` -/
def P8866684982188530272.Spec : Prop :=
  ∀ n, P8866684982188530272.a n = A024458 (n + 1)

end A024458

/-! ## A024458.P12097039839082013699

`A067330(record[A151890(n)])`
-/

namespace A024458.P12097039839082013699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A024458.P12097039839082013699

namespace A024458

/-- `A067330(record[A151890(n)])` -/
def P12097039839082013699.Spec : Prop :=
  ∀ n, P12097039839082013699.a n = A024458 (n + 1)

end A024458

/-! ## A024458.P8102048575368714430

`A067330(record[A245300(n)])`
-/

namespace A024458.P8102048575368714430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A024458.P8102048575368714430

namespace A024458

/-- `A067330(record[A245300(n)])` -/
def P8102048575368714430.Spec : Prop :=
  ∀ n, P8102048575368714430.a n = A024458 (n + 1)

end A024458

/-! ## A024458.P1362465069365840883

`A067418(A007590(n+1))`
-/

namespace A024458.P1362465069365840883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 (A007590 (n + 1)).toNat

end

end A024458.P1362465069365840883

namespace A024458

/-- `A067418(A007590(n+1))` -/
def P1362465069365840883.Spec : Prop :=
  ∀ n, P1362465069365840883.a n = A024458 (n + 1)

end A024458

/-! ## A024458.P1764515998567508220

`A067418(A000982(n)+n)`
-/

namespace A024458.P1764515998567508220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 (A000982 n + (n : ℤ)).toNat

end

end A024458.P1764515998567508220

namespace A024458

/-- `A067418(A000982(n)+n)` -/
def P1764515998567508220.Spec : Prop :=
  ∀ n, P1764515998567508220.a n = A024458 (n + 1)

end A024458

/-! ## A024458.P4257997557534344786

`A067418(∑[A000035(n)+n])`
-/

namespace A024458.P4257997557534344786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A024458.P4257997557534344786

namespace A024458

/-- `A067418(∑[A000035(n)+n])` -/
def P4257997557534344786.Spec : Prop :=
  ∀ n, P4257997557534344786.a n = A024458 (n + 1)

end A024458

/-! ## A024458.P5055086875648794344

`A067418(∑[A014601(n)-n])`
-/

namespace A024458.P5055086875648794344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A024458.P5055086875648794344

namespace A024458

/-- `A067418(∑[A014601(n)-n])` -/
def P5055086875648794344.Spec : Prop :=
  ∀ n, P5055086875648794344.a n = A024458 (n + 1)

end A024458

/-! ## A024458.P1377549548213824771

`A067330(A000982(n+1)-1)`
-/

namespace A024458.P1377549548213824771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 (A000982 (n + 1) - 1).toNat

end

end A024458.P1377549548213824771

namespace A024458

/-- `A067330(A000982(n+1)-1)` -/
def P1377549548213824771.Spec : Prop :=
  ∀ n, P1377549548213824771.a n = A024458 (n + 1)

end A024458

/-! ## A024458.P15034435667726560166

`A067418(A099392(n+2)-1)`
-/

namespace A024458.P15034435667726560166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 (A099392 (n + 2) - 1).toNat

end

end A024458.P15034435667726560166

namespace A024458

/-- `A067418(A099392(n+2)-1)` -/
def P15034435667726560166.Spec : Prop :=
  ∀ n, P15034435667726560166.a n = A024458 (n + 1)

end A024458

/-! ## A024458.P1322740138483882485

`A067418(A008818(2*n+1))`
-/

namespace A024458.P1322740138483882485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 (A008818 (2 * n + 1)).toNat

end

end A024458.P1322740138483882485

namespace A024458

/-- `A067418(A008818(2*n+1))` -/
def P1322740138483882485.Spec : Prop :=
  ∀ n, P1322740138483882485.a n = A024458 (n + 1)

end A024458

/-! ## A024458.P6848725995231464127

`A067418(∑[∑[2*A000035(n)]])`
-/

namespace A024458.P6848725995231464127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000035 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A024458.P6848725995231464127

namespace A024458

/-- `A067418(∑[∑[2*A000035(n)]])` -/
def P6848725995231464127.Spec : Prop :=
  ∀ n, P6848725995231464127.a n = A024458 (n + 1)

end A024458

/-! ## A024458.P16139699973527589660

`A067330(A000217(n)+floor(n/2))`
-/

namespace A024458.P16139699973527589660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 (A000217 n + ⌊(n : ℚ) / 2⌋).toNat

end

end A024458.P16139699973527589660

namespace A024458

/-- `A067330(A000217(n)+floor(n/2))` -/
def P16139699973527589660.Spec : Prop :=
  ∀ n, P16139699973527589660.a n = A024458 (n + 1)

end A024458

/-! ## A024458.P10743274560890994246

`A067330(A047838(n+2)-(n+1))`
-/

namespace A024458.P10743274560890994246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 (A047838 (n + 2) - (n + 1 : ℤ)).toNat

end

end A024458.P10743274560890994246

namespace A024458

/-- `A067330(A047838(n+2)-(n+1))` -/
def P10743274560890994246.Spec : Prop :=
  ∀ n, P10743274560890994246.a n = A024458 (n + 1)

end A024458

/-! ## A024458.P6720671012987170985

`A067418(A110654(n²)+n)`
-/

namespace A024458.P6720671012987170985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 (A110654 (n ^ 2) + (n : ℤ)).toNat

end

end A024458.P6720671012987170985

namespace A024458

/-- `A067418(A110654(n²)+n)` -/
def P6720671012987170985.Spec : Prop :=
  ∀ n, P6720671012987170985.a n = A024458 (n + 1)

end A024458

/-! ## A024458.P1911480227887923300

`A067418(A110654(A005563(n)))`
-/

namespace A024458.P1911480227887923300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 (A110654 (A005563 n).toNat).toNat

end

end A024458.P1911480227887923300

namespace A024458

/-- `A067418(A110654(A005563(n)))` -/
def P1911480227887923300.Spec : Prop :=
  ∀ n, P1911480227887923300.a n = A024458 (n + 1)

end A024458

/-!
# A024459: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = [ (n+1)/2 ], s = (Fibonacci numbers), t = (Lucas numbers).

The programs for A024459, the canonical program `A024459.P3562080791943648036` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024459 has offset 1).

The definition of A024459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024459.P3562080791943648036

`2*A025078(n+1)-A024458(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A024459

/-- `2*A025078(n+1)-A024458(n+1)` -/
def P3562080791943648036.Spec : Prop :=
  ∀ n, P3562080791943648036.a n = A024459 (n + 1)

theorem P3562080791943648036.correct : P3562080791943648036.Spec := by
  intro n
  simp only [A024459, Nat.add_sub_cancel]

end A024459

/-! ## A024459.P14879561620410014357

`3*A025078(n+1)-A025082(n+1)`
-/

namespace A024459.P14879561620410014357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A025078 (n + 1) - A025082 (n + 1)

end

end A024459.P14879561620410014357

namespace A024459

/-- `3*A025078(n+1)-A025082(n+1)` -/
def P14879561620410014357.Spec : Prop :=
  ∀ n, P14879561620410014357.a n = A024459 (n + 1)

end A024459

/-! ## A024459.P17614178527797496443

`A025079(xor(1, n)+1)%A025079(n+1)`
-/

namespace A024459.P17614178527797496443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025079 (Nat.xor 1 n + 1)) (A025079 (n + 1))

end

end A024459.P17614178527797496443

namespace A024459

/-- `A025079(xor(1, n)+1)%A025079(n+1)` -/
def P17614178527797496443.Spec : Prop :=
  ∀ n, P17614178527797496443.a n = A024459 (n + 1)

end A024459

/-! ## A024459.P6699429117936936270

`A025079(A028242(n)+A008619(n))%A025079(n+1)`
-/

namespace A024459.P6699429117936936270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025079 (A028242 n + A008619 n).toNat) (A025079 (n + 1))

end

end A024459.P6699429117936936270

namespace A024459

/-- `A025079(A028242(n)+A008619(n))%A025079(n+1)` -/
def P6699429117936936270.Spec : Prop :=
  ∀ n, P6699429117936936270.a n = A024459 (n + 1)

end A024459

/-! ## A024459.P18303901955120534542

`(5*A025082(n+1))%A025079(n+1)`
-/

namespace A024459.P18303901955120534542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 * A025082 (n + 1)) (A025079 (n + 1))

end

end A024459.P18303901955120534542

namespace A024459

/-- `(5*A025082(n+1))%A025079(n+1)` -/
def P18303901955120534542.Spec : Prop :=
  ∀ n, P18303901955120534542.a n = A024459 (n + 1)

end A024459

/-!
# A024463: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = (Fibonacci numbers), t = (odd natural numbers).

The programs for A024463, the canonical program `A024463.P13038753844099683083` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024463 has offset 1).

The definition of A024463 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 920 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024463.P13038753844099683083

`Δ[n*∑[A131524(n+2)]]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A024463

/-- `Δ[n*∑[A131524(n+2)]]` -/
def P13038753844099683083.Spec : Prop :=
  ∀ n, P13038753844099683083.a n = A024463 (n + 1)

theorem P13038753844099683083.correct : P13038753844099683083.Spec := by
  intro n
  simp only [A024463, Nat.add_sub_cancel]

end A024463

/-! ## A024463.P14969422131189184329

`A213768(∑[n+1]-(or(1, n)-1)/2)`
-/

namespace A024463.P14969422131189184329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213768 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - ((Nat.lor 1 n : ℤ) - 1 : ℚ) / 2)).toNat

end

end A024463.P14969422131189184329

namespace A024463

/-- `A213768(∑[n+1]-(or(1, n)-1)/2)` -/
def P14969422131189184329.Spec : Prop :=
  ∀ n, P14969422131189184329.a n = A024463 (n + 1)

end A024463

/-! ## A024463.P768623061765213075

`A213768(A080827(n+1))`
-/

namespace A024463.P768623061765213075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213768 (A080827 (n + 1)).toNat

end

end A024463.P768623061765213075

namespace A024463

/-- `A213768(A080827(n+1))` -/
def P768623061765213075.Spec : Prop :=
  ∀ n, P768623061765213075.a n = A024463 (n + 1)

end A024463

/-! ## A024463.P18386099653985288404

`A213768(A099392(n+2))`
-/

namespace A024463.P18386099653985288404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213768 (A099392 (n + 2)).toNat

end

end A024463.P18386099653985288404

namespace A024463

/-- `A213768(A099392(n+2))` -/
def P18386099653985288404.Spec : Prop :=
  ∀ n, P18386099653985288404.a n = A024463 (n + 1)

end A024463

/-! ## A024463.P12141102310768691089

`A213768(A061925(n)+n)`
-/

namespace A024463.P12141102310768691089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213768 (A061925 n + (n : ℤ)).toNat

end

end A024463.P12141102310768691089

namespace A024463

/-- `A213768(A061925(n)+n)` -/
def P12141102310768691089.Spec : Prop :=
  ∀ n, P12141102310768691089.a n = A024463 (n + 1)

end A024463

/-! ## A024463.P6462519703406535891

`A213768(A000982(n)+1+n)`
-/

namespace A024463.P6462519703406535891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213768 (A000982 n + 1 + (n : ℤ)).toNat

end

end A024463.P6462519703406535891

namespace A024463

/-- `A213768(A000982(n)+1+n)` -/
def P6462519703406535891.Spec : Prop :=
  ∀ n, P6462519703406535891.a n = A024463 (n + 1)

end A024463

/-! ## A024463.P13820635763531365205

`A213768(A116940(n)+1-n)`
-/

namespace A024463.P13820635763531365205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213768 (A116940 n + (1 - (n : ℤ))).toNat

end

end A024463.P13820635763531365205

namespace A024463

/-- `A213768(A116940(n)+1-n)` -/
def P13820635763531365205.Spec : Prop :=
  ∀ n, P13820635763531365205.a n = A024463 (n + 1)

end A024463

/-! ## A024463.P14044803151614954869

`A213768(1-(n-A116940(n)))`
-/

namespace A024463.P14044803151614954869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213768 (1 - ((n : ℤ) - A116940 n)).toNat

end

end A024463.P14044803151614954869

namespace A024463

/-- `A213768(1-(n-A116940(n)))` -/
def P14044803151614954869.Spec : Prop :=
  ∀ n, P14044803151614954869.a n = A024463 (n + 1)

end A024463

/-! ## A024463.P17433621710429093361

`A213768(∑[n+1]-A004526(n))`
-/

namespace A024463.P17433621710429093361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213768 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A004526 n).toNat

end

end A024463.P17433621710429093361

namespace A024463

/-- `A213768(∑[n+1]-A004526(n))` -/
def P17433621710429093361.Spec : Prop :=
  ∀ n, P17433621710429093361.a n = A024463 (n + 1)

end A024463

/-! ## A024463.P17099198758476618538

`A213768(A008619((n+1)²))`
-/

namespace A024463.P17099198758476618538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213768 (A008619 ((n + 1) ^ 2)).toNat

end

end A024463.P17099198758476618538

namespace A024463

/-- `A213768(A008619((n+1)²))` -/
def P17099198758476618538.Spec : Prop :=
  ∀ n, P17099198758476618538.a n = A024463 (n + 1)

end A024463

/-!
# A024464: s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = (Fibonacci numbers), t = A000201 (lower Wythoff sequence).

The programs for A024464, there is no canonical definition to state claims against.
-/

/-! ## A024464.P13967746115929916012

`A024593(n+1)+A024593(n+1)-A024474(n+1)`
-/

namespace A024464.P13967746115929916012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024593 (n + 1) + (A024593 (n + 1) - A024474 (n + 1))

end

end A024464.P13967746115929916012

/-! ## A024464.P5422667365238544791

`2*A024593(n+1)-A024474(n+1)`
-/

namespace A024464.P5422667365238544791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024593 (n + 1) - A024474 (n + 1)

end

end A024464.P5422667365238544791

/-! ## A024464.P16818220468755360121

`A004277(A024593(n+1))-A024474(n+1)`
-/

namespace A024464.P16818220468755360121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A024593 (n + 1)).toNat - A024474 (n + 1)

end

end A024464.P16818220468755360121

/-!
# A024465: s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = (Fibonacci numbers), t = A001950 (upper Wythoff sequence).

The programs for A024465, there is no canonical definition to state claims against.
-/

/-! ## A024465.P12373806797536734421

`A024594(n+1)-A025085(A028310(n))`
-/

namespace A024465.P12373806797536734421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024594 (n + 1) - A025085 (A028310 n).toNat

end

end A024465.P12373806797536734421

/-! ## A024465.P8496916171308508523

`A024475(n+1)-2*A025085(A028310(n))`
-/

namespace A024465.P8496916171308508523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024475 (n + 1) - 2 * A025085 (A028310 n).toNat

end

end A024465.P8496916171308508523

/-! ## A024465.P6069791674307461920

`A024594(n+1)+A024594(n+1)-A024475(n+1)`
-/

namespace A024465.P6069791674307461920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024594 (n + 1) + (A024594 (n + 1) - A024475 (n + 1))

end

end A024465.P6069791674307461920

/-! ## A024465.P8461791536043543917

`2*A024594(n+1)-A024475(n+1)`
-/

namespace A024465.P8461791536043543917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024594 (n + 1) - A024475 (n + 1)

end

end A024465.P8461791536043543917

/-! ## A024465.P10559100883104300913

`A005843(A024594(n+1))-A024475(n+1)`
-/

namespace A024465.P10559100883104300913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A024594 (n + 1)).toNat - A024475 (n + 1)

end

end A024465.P10559100883104300913

/-!
# A024466: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = (Fibonacci numbers), t = A023533.

The programs for A024466, there is no canonical definition to state claims against.
-/

/-! ## A024466.P12818863155445192736

`round(A024595(n+1)/ϕ)`
-/

namespace A024466.P12818863155445192736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A024595 (n + 1) : ℝ) / Real.goldenRatio)

end

end A024466.P12818863155445192736

/-! ## A024466.P10367031933173962306

`floor((A024595(n+1)+2-char[A006369(n)])/ϕ)`
-/

namespace A024466.P10367031933173962306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024595 (n + 1) + 2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℝ) / Real.goldenRatio⌋

end

end A024466.P10367031933173962306

/-! ## A024466.P445635835101131825

`floor(A024595(n+1)/ϕ+A001222(A007918(n))/2)`
-/

namespace A024466.P445635835101131825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024595 (n + 1) : ℝ) / Real.goldenRatio + ((A001222 (A007918 n).toNat : ℚ) / 2 : ℝ)⌋

end

end A024466.P445635835101131825

/-! ## A024466.P9375028589932109964

`A024595(n+1)+A024595(n+1)-A024476(n+1)`
-/

namespace A024466.P9375028589932109964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024595 (n + 1) + (A024595 (n + 1) - A024476 (n + 1))

end

end A024466.P9375028589932109964

/-! ## A024466.P7692476255928907273

`2*A024595(n+1)-A024476(n+1)`
-/

namespace A024466.P7692476255928907273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024595 (n + 1) - A024476 (n + 1)

end

end A024466.P7692476255928907273

/-! ## A024466.P787679610086487178

`∑[A079977(n)]-A024467(n+1)`
-/

namespace A024466.P787679610086487178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A024467 (n + 1)

end

end A024466.P787679610086487178

/-! ## A024466.P7701516514224894848

`A005206(A024595(n+1))`
-/

namespace A024466.P7701516514224894848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A024595 (n + 1)).toNat

end

end A024466.P7701516514224894848

/-!
# A024467: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = (Fibonacci numbers), t = A014306.

The programs for A024467, there is no canonical definition to state claims against.
-/

/-! ## A024467.P5905758982840370627

`∑[A079977(n)]-A024466(n+1)`
-/

namespace A024467.P5905758982840370627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A024466 (n + 1)

end

end A024467.P5905758982840370627

/-! ## A024467.P11452992139920221370

`∑[A079977(n)]-round(A024595(n+1)/ϕ)`
-/

namespace A024467.P11452992139920221370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - SequenceMachineLib.roundAway ((A024595 (n + 1) : ℝ) / Real.goldenRatio)

end

end A024467.P11452992139920221370

/-! ## A024467.P8575516461592896774

`floor((A024596(n+1)+1)/ϕ)`
-/

namespace A024467.P8575516461592896774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024596 (n + 1) + 1 : ℝ) / Real.goldenRatio⌋

end

end A024467.P8575516461592896774

/-! ## A024467.P2873571752431236870

`A024596(n+1)+A024596(n+1)-A024477(n+1)`
-/

namespace A024467.P2873571752431236870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024596 (n + 1) + (A024596 (n + 1) - A024477 (n + 1))

end

end A024467.P2873571752431236870

/-! ## A024467.P15056636309446267068

`2*A024596(n+1)-A024477(n+1)`
-/

namespace A024467.P15056636309446267068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024596 (n + 1) - A024477 (n + 1)

end

end A024467.P15056636309446267068

/-!
# A024468: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = (Fibonacci numbers), t = (primes).

The programs for A024468, there is no canonical definition to state claims against.
-/

/-! ## A024468.P12536452134962901131

`A024597(n+1)+A024597(n+1)-A024478(n+1)`
-/

namespace A024468.P12536452134962901131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024597 (n + 1) + (A024597 (n + 1) - A024478 (n + 1))

end

end A024468.P12536452134962901131

/-! ## A024468.P3418672238238787728

`2*A024597(n+1)-A024478(n+1)`
-/

namespace A024468.P3418672238238787728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024597 (n + 1) - A024478 (n + 1)

end

end A024468.P3418672238238787728

/-! ## A024468.P6089442037517648204

`A004277(A024597(n+1))-A024478(n+1)`
-/

namespace A024468.P6089442037517648204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A024597 (n + 1)).toNat - A024478 (n + 1)

end

end A024468.P6089442037517648204

/-! ## A024468.P15433987264730431067

`A025480(A024470(n+3)-A024460(n+3))`
-/

namespace A024468.P15433987264730431067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A024470 (n + 3) - A024460 (n + 3)).toNat

end

end A024468.P15433987264730431067

/-!
# A024469: a(n) = s(1)s(n) + s(2)s(n-1) + ... + s(k)s(n+1-k), where k = [ (n+1)/2 ], s = (Lucas numbers).

The programs for A024469, the canonical program `A024469.P6946807686841820033` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024469 has offset 1).

The definition of A024469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024469.P6946807686841820033

`∪[A027980(n), A061171(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A024469

/-- `∪[A027980(n), A061171(n)]` -/
def P6946807686841820033.Spec : Prop :=
  ∀ n, (P6946807686841820033.a n : ℤ) = A024469 (n + 1)

theorem P6946807686841820033.correct : P6946807686841820033.Spec := by
  intro n
  simp only [A024469, Nat.add_sub_cancel]

end A024469

/-! ## A024469.P12268068640788036679

`A004799(n+1)-A025089(n+1)`
-/

namespace A024469.P12268068640788036679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004799 (n + 1) - A025089 (n + 1)

end

end A024469.P12268068640788036679

namespace A024469

/-- `A004799(n+1)-A025089(n+1)` -/
def P12268068640788036679.Spec : Prop :=
  ∀ n, P12268068640788036679.a n = A024469 (n + 1)

end A024469

/-! ## A024469.P52104586014343223

`A067990(floor((n+1)²/2))`
-/

namespace A024469.P52104586014343223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067990 ⌊((n + 1) ^ 2 : ℚ) / 2⌋.toNat

end

end A024469.P52104586014343223

namespace A024469

/-- `A067990(floor((n+1)²/2))` -/
def P52104586014343223.Spec : Prop :=
  ∀ n, P52104586014343223.a n = A024469 (n + 1)

end A024469

/-! ## A024469.P4252387142384930838

`A067979(record[A151890(n)])`
-/

namespace A024469.P4252387142384930838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A024469.P4252387142384930838

namespace A024469

/-- `A067979(record[A151890(n)])` -/
def P4252387142384930838.Spec : Prop :=
  ∀ n, P4252387142384930838.a n = A024469 (n + 1)

end A024469

/-! ## A024469.P6290773683493875864

`A067979(record[A245300(n)])`
-/

namespace A024469.P6290773683493875864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A024469.P6290773683493875864

namespace A024469

/-- `A067979(record[A245300(n)])` -/
def P6290773683493875864.Spec : Prop :=
  ∀ n, P6290773683493875864.a n = A024469 (n + 1)

end A024469

/-! ## A024469.P12980229107149142053

`A067979(A004526(n)+∑[n])`
-/

namespace A024469.P12980229107149142053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 (A004526 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A024469.P12980229107149142053

namespace A024469

/-- `A067979(A004526(n)+∑[n])` -/
def P12980229107149142053.Spec : Prop :=
  ∀ n, P12980229107149142053.a n = A024469 (n + 1)

end A024469

/-! ## A024469.P2269646386307881487

`A067979(A000982(n+1)-1)`
-/

namespace A024469.P2269646386307881487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 (A000982 (n + 1) - 1).toNat

end

end A024469.P2269646386307881487

namespace A024469

/-- `A067979(A000982(n+1)-1)` -/
def P2269646386307881487.Spec : Prop :=
  ∀ n, P2269646386307881487.a n = A024469 (n + 1)

end A024469

/-! ## A024469.P7950921834152702244

`A067979(2*A002620(n)+n)`
-/

namespace A024469.P7950921834152702244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 (2 * A002620 n + (n : ℤ)).toNat

end

end A024469.P7950921834152702244

namespace A024469

/-- `A067979(2*A002620(n)+n)` -/
def P7950921834152702244.Spec : Prop :=
  ∀ n, P7950921834152702244.a n = A024469 (n + 1)

end A024469

/-! ## A024469.P9006274414608388447

`A067979(A000217(n)+floor(n/2))`
-/

namespace A024469.P9006274414608388447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 (A000217 n + ⌊(n : ℚ) / 2⌋).toNat

end

end A024469.P9006274414608388447

namespace A024469

/-- `A067979(A000217(n)+floor(n/2))` -/
def P9006274414608388447.Spec : Prop :=
  ∀ n, P9006274414608388447.a n = A024469 (n + 1)

end A024469

/-! ## A024469.P9287825623561256482

`A067979(A047838(n+2)-(n+1))`
-/

namespace A024469.P9287825623561256482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 (A047838 (n + 2) - (n + 1 : ℤ)).toNat

end

end A024469.P9287825623561256482

namespace A024469

/-- `A067979(A047838(n+2)-(n+1))` -/
def P9287825623561256482.Spec : Prop :=
  ∀ n, P9287825623561256482.a n = A024469 (n + 1)

end A024469

/-! ## A024469.P993385530855643969

`A067979(A002620(n)+A002620(n)+n)`
-/

namespace A024469.P993385530855643969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 (A002620 n + (A002620 n + (n : ℤ))).toNat

end

end A024469.P993385530855643969

namespace A024469

/-- `A067979(A002620(n)+A002620(n)+n)` -/
def P993385530855643969.Spec : Prop :=
  ∀ n, P993385530855643969.a n = A024469 (n + 1)

end A024469

/-! ## A024469.P13522328079265894699

`A067979(A004526(n*(n+2)))`
-/

namespace A024469.P13522328079265894699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 (A004526 (n * (n + 2))).toNat

end

end A024469.P13522328079265894699

namespace A024469

/-- `A067979(A004526(n*(n+2)))` -/
def P13522328079265894699.Spec : Prop :=
  ∀ n, P13522328079265894699.a n = A024469 (n + 1)

end A024469

/-!
# A024470: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = (Lucas numbers), t = (1, p(1), p(2), ...).

The programs for A024470, there is no canonical definition to state claims against.
-/

/-! ## A024470.P4433844230290262097

`A267610(n)+A176253(A077064(n+1))`
-/

namespace A024470.P4433844230290262097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267610 n + A176253 (A077064 (n + 1)).toNat

end

end A024470.P4433844230290262097

/-! ## A024470.P16887530213901020232

`A003056(A008127(n)*A279957(n))`
-/

namespace A024470.P16887530213901020232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A008127 n * A279957 n).toNat

end

end A024470.P16887530213901020232

/-!
# A024472: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = (Lucas numbers), t = (F(2), F(3), ...).

The programs for A024472, the canonical program `A024472.P13885864905884473989` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024472 has offset 1).

The definition of A024472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024472.P13885864905884473989

`A008619(n)*A020695(n)-A006498(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A024472

/-- `A008619(n)*A020695(n)-A006498(n)` -/
def P13885864905884473989.Spec : Prop :=
  ∀ n, P13885864905884473989.a n = A024472 (n + 1)

theorem P13885864905884473989.correct : P13885864905884473989.Spec := by
  intro n
  simp only [A024472, Nat.add_sub_cancel]

end A024472

/-! ## A024472.P1467644763168115438

`(A004526(n)+1)*A020695(n)-A006498(n)`
-/

namespace A024472.P1467644763168115438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004526 n + 1) * A020695 n - A006498 n

end

end A024472.P1467644763168115438

namespace A024472

/-- `(A004526(n)+1)*A020695(n)-A006498(n)` -/
def P1467644763168115438.Spec : Prop :=
  ∀ n, P1467644763168115438.a n = A024472 (n + 1)

end A024472

/-! ## A024472.P14923060164856008723

`round(A025092(n+1)/ϕ)`
-/

namespace A024472.P14923060164856008723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A025092 (n + 1) : ℝ) / Real.goldenRatio)

end

end A024472.P14923060164856008723

namespace A024472

/-- `round(A025092(n+1)/ϕ)` -/
def P14923060164856008723.Spec : Prop :=
  ∀ n, P14923060164856008723.a n = A024472 (n + 1)

end A024472

/-! ## A024472.P10572558660375054566

`A025092(A103889(n+1))%A025092(n+1)`
-/

namespace A024472.P10572558660375054566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025092 (A103889 (n + 1)).toNat) (A025092 (n + 1))

end

end A024472.P10572558660375054566

namespace A024472

/-- `A025092(A103889(n+1))%A025092(n+1)` -/
def P10572558660375054566.Spec : Prop :=
  ∀ n, P10572558660375054566.a n = A024472 (n + 1)

end A024472

/-! ## A024472.P11732192314737492010

`floor(A025092(n+1)/ϕ+n/A000267(n²))`
-/

namespace A024472.P11732192314737492010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025092 (n + 1) : ℝ) / Real.goldenRatio + ((n : ℚ) / (A000267 (n ^ 2) : ℚ) : ℝ)⌋

end

end A024472.P11732192314737492010

namespace A024472

/-- `floor(A025092(n+1)/ϕ+n/A000267(n²))` -/
def P11732192314737492010.Spec : Prop :=
  ∀ n, P11732192314737492010.a n = A024472 (n + 1)

end A024472

/-!
# A024473: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = (Lucas numbers), t = (odd natural numbers).

The programs for A024473, the canonical program `A024473.P1897966337060809418` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024473 has offset 1).

The definition of A024473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024473.P1897966337060809418

`A024592(n+1)+A024592(n+1)-A024463(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A024473

/-- `A024592(n+1)+A024592(n+1)-A024463(n+1)` -/
def P1897966337060809418.Spec : Prop :=
  ∀ n, P1897966337060809418.a n = A024473 (n + 1)

theorem P1897966337060809418.correct : P1897966337060809418.Spec := by
  intro n
  simp only [A024473, Nat.add_sub_cancel]

end A024473

/-! ## A024473.P86443840040662285

`2*A024592(n+1)-A024463(n+1)`
-/

namespace A024473.P86443840040662285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024592 (n + 1) - A024463 (n + 1)

end

end A024473.P86443840040662285

namespace A024473

/-- `2*A024592(n+1)-A024463(n+1)` -/
def P86443840040662285.Spec : Prop :=
  ∀ n, P86443840040662285.a n = A024473 (n + 1)

theorem P86443840040662285.correct : P86443840040662285.Spec := by
  intro n
  simp only [A024473, Nat.add_sub_cancel, A024473.P86443840040662285.a, A024473.P1897966337060809418.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A024473

/-! ## A024473.P14490836010084930436

`A005843(A024592(n+1))-A024463(n+1)`
-/

namespace A024473.P14490836010084930436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A024592 (n + 1)).toNat - A024463 (n + 1)

end

end A024473.P14490836010084930436

namespace A024473

/-- `A005843(A024592(n+1))-A024463(n+1)` -/
def P14490836010084930436.Spec : Prop :=
  ∀ n, P14490836010084930436.a n = A024473 (n + 1)

end A024473

/-! ## A024473.P15212063328332921633

`A004275(A024592(n+1)+1)-A024463(n+1)`
-/

namespace A024473.P15212063328332921633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A024592 (n + 1) + 1).toNat - A024463 (n + 1)

end

end A024473.P15212063328332921633

namespace A024473

/-- `A004275(A024592(n+1)+1)-A024463(n+1)` -/
def P15212063328332921633.Spec : Prop :=
  ∀ n, P15212063328332921633.a n = A024473 (n + 1)

end A024473

/-! ## A024473.P6962498799725523170

`A005843(A024592(n+1))-A213768(A080827(n+1))`
-/

namespace A024473.P6962498799725523170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A024592 (n + 1)).toNat - A213768 (A080827 (n + 1)).toNat

end

end A024473.P6962498799725523170

namespace A024473

/-- `A005843(A024592(n+1))-A213768(A080827(n+1))` -/
def P6962498799725523170.Spec : Prop :=
  ∀ n, P6962498799725523170.a n = A024473 (n + 1)

end A024473

/-!
# A024474: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = (Lucas numbers), t = A000201 (lower Wythoff sequence).

The programs for A024474, there is no canonical definition to state claims against.
-/

/-! ## A024474.P14767643979241043913

`A024593(n+1)+A024593(n+1)-A024464(n+1)`
-/

namespace A024474.P14767643979241043913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024593 (n + 1) + (A024593 (n + 1) - A024464 (n + 1))

end

end A024474.P14767643979241043913

/-! ## A024474.P10593663123398631575

`2*A024593(n+1)-A024464(n+1)`
-/

namespace A024474.P10593663123398631575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024593 (n + 1) - A024464 (n + 1)

end

end A024474.P10593663123398631575

/-! ## A024474.P15968809703432299754

`A004277(A024593(n+1))-A024464(n+1)`
-/

namespace A024474.P15968809703432299754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A024593 (n + 1)).toNat - A024464 (n + 1)

end

end A024474.P15968809703432299754

/-!
# A024475: s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = (Lucas numbers), t = A001950 (upper Wythoff sequence).

The programs for A024475, there is no canonical definition to state claims against.
-/

/-! ## A024475.P10632004588513441505

`A025085(round(sqrt(n²+1)))+A024594(n+1)`
-/

namespace A024475.P10632004588513441505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025085 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A024594 (n + 1)

end

end A024475.P10632004588513441505

/-! ## A024475.P9623332538806094861

`A024594(n+1)+A025085(A028310(n))`
-/

namespace A024475.P9623332538806094861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024594 (n + 1) + A025085 (A028310 n).toNat

end

end A024475.P9623332538806094861

/-! ## A024475.P6587697449707619112

`A024594(n+1)+A024594(n+1)-A024465(n+1)`
-/

namespace A024475.P6587697449707619112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024594 (n + 1) + (A024594 (n + 1) - A024465 (n + 1))

end

end A024475.P6587697449707619112

/-! ## A024475.P3156225101350066701

`2*A024594(n+1)-A024465(n+1)`
-/

namespace A024475.P3156225101350066701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024594 (n + 1) - A024465 (n + 1)

end

end A024475.P3156225101350066701

/-! ## A024475.P6977583025618792835

`A005843(A024594(n+1))-A024465(n+1)`
-/

namespace A024475.P6977583025618792835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A024594 (n + 1)).toNat - A024465 (n + 1)

end

end A024475.P6977583025618792835

/-!
# A024476: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = (Lucas numbers), t = A023533.

The programs for A024476, there is no canonical definition to state claims against.
-/

/-! ## A024476.P7691127003128213348

`A024595(n+1)+A024595(n+1)-A024466(n+1)`
-/

namespace A024476.P7691127003128213348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024595 (n + 1) + (A024595 (n + 1) - A024466 (n + 1))

end

end A024476.P7691127003128213348

/-! ## A024476.P2265871929117214753

`2*A024595(n+1)-A024466(n+1)`
-/

namespace A024476.P2265871929117214753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024595 (n + 1) - A024466 (n + 1)

end

end A024476.P2265871929117214753

/-! ## A024476.P12549490307218925158

`A063732(A024595(n+1)+1)`
-/

namespace A024476.P12549490307218925158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063732 (A024595 (n + 1) + 1).toNat

end

end A024476.P12549490307218925158

/-! ## A024476.P5915218825603220810

`A005843(A024595(n+1))-A024466(n+1)`
-/

namespace A024476.P5915218825603220810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A024595 (n + 1)).toNat - A024466 (n + 1)

end

end A024476.P5915218825603220810

/-!
# A024477: s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = (Lucas numbers), t = A014306.

The programs for A024477, there is no canonical definition to state claims against.
-/

/-! ## A024477.P14295380901496212121

`A024596(n+1)+A024596(n+1)-A024467(n+1)`
-/

namespace A024477.P14295380901496212121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024596 (n + 1) + (A024596 (n + 1) - A024467 (n + 1))

end

end A024477.P14295380901496212121

/-! ## A024477.P15148480379347770621

`2*A024596(n+1)-A024467(n+1)`
-/

namespace A024477.P15148480379347770621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024596 (n + 1) - A024467 (n + 1)

end

end A024477.P15148480379347770621

/-! ## A024477.P17179845768499460384

`2*A024596(n+1)-(∑[A079977(n)]-A024466(n+1))`
-/

namespace A024477.P17179845768499460384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024596 (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j - A024466 (n + 1))

end

end A024477.P17179845768499460384

/-! ## A024477.P16575237926811244240

`A063732(A024596(n+1)+1)`
-/

namespace A024477.P16575237926811244240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063732 (A024596 (n + 1) + 1).toNat

end

end A024477.P16575237926811244240

/-! ## A024477.P6453262181364354233

`A005843(A024596(n+1))-A024467(n+1)`
-/

namespace A024477.P6453262181364354233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A024596 (n + 1)).toNat - A024467 (n + 1)

end

end A024477.P6453262181364354233

/-!
# A024478: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = (Lucas numbers), t = (primes).

The programs for A024478, there is no canonical definition to state claims against.
-/

/-! ## A024478.P2510033336718305805

`A024597(n+1)+A024597(n+1)-A024468(n+1)`
-/

namespace A024478.P2510033336718305805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024597 (n + 1) + (A024597 (n + 1) - A024468 (n + 1))

end

end A024478.P2510033336718305805

/-! ## A024478.P7441752644611739311

`2*A024597(n+1)-A024468(n+1)`
-/

namespace A024478.P7441752644611739311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024597 (n + 1) - A024468 (n + 1)

end

end A024478.P7441752644611739311

/-! ## A024478.P15380938067861128276

`A004277(A024597(n+1))-A024468(n+1)`
-/

namespace A024478.P15380938067861128276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A024597 (n + 1)).toNat - A024468 (n + 1)

end

end A024478.P15380938067861128276

/-! ## A024478.P7632565141223819050

`2*A024597(n+1)-A025480(A024470(n+3)-A024460(n+3))`
-/

namespace A024478.P7632565141223819050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024597 (n + 1) - A025480 (A024470 (n + 3) - A024460 (n + 3)).toNat

end

end A024478.P7632565141223819050

/-!
# A024480: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = (1, p(1), p(2), ...), t = (composite numbers).

The programs for A024480, there is no canonical definition to state claims against.
-/

/-! ## A024480.P6244333589810513367

`A184993(A023869(n+1))+A023863(n+1)`
-/

namespace A024480.P6244333589810513367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184993 (A023869 (n + 1)).toNat + A023863 (n + 1)

end

end A024480.P6244333589810513367

/-!
# A024481: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = (1, p(1), p(2), ...), t = (F(2), F(3), ...).

The programs for A024481, there is no canonical definition to state claims against.
-/

/-! ## A024481.P9198068751186806136

`round(A025101(n+1)/ϕ)`
-/

namespace A024481.P9198068751186806136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A025101 (n + 1) : ℝ) / Real.goldenRatio)

end

end A024481.P9198068751186806136

/-! ## A024481.P16938716190684514061

`A025101(A103889(n+1))%A025101(n+1)`
-/

namespace A024481.P16938716190684514061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025101 (A103889 (n + 1)).toNat) (A025101 (n + 1))

end

end A024481.P16938716190684514061

/-! ## A024481.P1358354003236112593

`A319433(A025101(n+1))`
-/

namespace A024481.P1358354003236112593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319433 (A025101 (n + 1)).toNat

end

end A024481.P1358354003236112593

/-! ## A024481.P11522608865754003173

`A024591(A365822(n+1))`
-/

namespace A024481.P11522608865754003173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024591 (A365822 (n + 1)).toNat

end

end A024481.P11522608865754003173

/-!
# A024482: a(n) = (1/2)*(binomial(2n, n) - binomial(2n-2, n-1)).

The programs for A024482, the canonical program `A024482.P14906535760265305364` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024482 has offset 2).

The definition of A024482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024482.P14906535760265305364

`A051924(n+2)/2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A024482

/-- `A051924(n+2)/2` -/
def P14906535760265305364.Spec : Prop :=
  ∀ n, P14906535760265305364.a n = (A024482 (n + 2) : ℚ)

end A024482

/-! ## A024482.P5486336808734508900

`(3*(n+2)-2)*A000108(n+1)/2`
-/

namespace A024482.P5486336808734508900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((3 * (n + 2) : ℤ) - 2) * A000108 (n + 1) : ℚ) / 2

end

end A024482.P5486336808734508900

namespace A024482

/-- `(3*(n+2)-2)*A000108(n+1)/2` -/
def P5486336808734508900.Spec : Prop :=
  ∀ n, P5486336808734508900.a n = (A024482 (n + 2) : ℚ)

end A024482

/-! ## A024482.P837836711558918585

`(C(2*(n+2), n+2)-C(2*(n+2)-2, n+1))/2`
-/

namespace A024482.P837836711558918585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 * (n + 2)) (n + 2) : ℤ) - (Nat.choose ((2 * (n + 2) : ℤ) - 2).toNat (n + 1) : ℤ) : ℚ) / 2

end

end A024482.P837836711558918585

namespace A024482

/-- `(C(2*(n+2), n+2)-C(2*(n+2)-2, n+1))/2` -/
def P837836711558918585.Spec : Prop :=
  ∀ n, P837836711558918585.a n = (A024482 (n + 2) : ℚ)

end A024482

/-! ## A024482.P6728965668507064654

`1/2*(C(2*(n+2), n+2)-C(2*(n+2)-2, n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A024482.P6728965668507064654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((Nat.choose (2 * (n + 2)) (n + 2) : ℤ) - (Nat.choose ((2 * (n + 2) : ℤ) - 2).toNat (n + 1) : ℤ) : ℚ)

end

end A024482.P6728965668507064654

namespace A024482

/-- `1/2*(C(2*(n+2), n+2)-C(2*(n+2)-2, n+1))` -/
def P6728965668507064654.Spec : Prop :=
  ∀ n, P6728965668507064654.a n = (A024482 (n + 2) : ℚ)

end A024482

/-! ## A024482.P5678781446126507660

`A097613(n+2)`
-/

namespace A024482.P5678781446126507660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097613 (n + 2)

end

end A024482.P5678781446126507660

namespace A024482

/-- `A097613(n+2)` -/
def P5678781446126507660.Spec : Prop :=
  ∀ n, P5678781446126507660.a n = A024482 (n + 2)

end A024482

/-! ## A024482.P3762571800385543750

`A026010(Δ[n²])`
-/

namespace A024482.P3762571800385543750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026010 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A024482.P3762571800385543750

namespace A024482

/-- `A026010(Δ[n²])` -/
def P3762571800385543750.Spec : Prop :=
  ∀ n, P3762571800385543750.a n = A024482 (n + 2)

end A024482

/-! ## A024482.P1161419198216940770

`record[A026010(xor(1, n))]`
-/

namespace A024482.P1161419198216940770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026010 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024482.P1161419198216940770

namespace A024482

/-- `record[A026010(xor(1, n))]` -/
def P1161419198216940770.Spec : Prop :=
  ∀ n, P1161419198216940770.a n = A024482 (n + 2)

end A024482

/-! ## A024482.P7050543751677249452

`A191782(Δ[n²])+1`
-/

namespace A024482.P7050543751677249452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191782 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A024482.P7050543751677249452

namespace A024482

/-- `A191782(Δ[n²])+1` -/
def P7050543751677249452.Spec : Prop :=
  ∀ n, P7050543751677249452.a n = A024482 (n + 2)

end A024482

/-! ## A024482.P7875440424428906081

`∑[A225015(n+2)]+1`
-/

namespace A024482.P7875440424428906081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225015 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A024482.P7875440424428906081

namespace A024482

/-- `∑[A225015(n+2)]+1` -/
def P7875440424428906081.Spec : Prop :=
  ∀ n, P7875440424428906081.a n = A024482 (n + 2)

end A024482

/-! ## A024482.P6743936317243231822

`(n/2+n+2)*A000108(n+1)`
-/

namespace A024482.P6743936317243231822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + (n + 2 : ℚ)) * (A000108 (n + 1) : ℚ)

end

end A024482.P6743936317243231822

namespace A024482

/-- `(n/2+n+2)*A000108(n+1)` -/
def P6743936317243231822.Spec : Prop :=
  ∀ n, P6743936317243231822.a n = (A024482 (n + 2) : ℚ)

end A024482

/-! ## A024482.P5171559456025625807

`A057552(n)+A024718(n)`
-/

namespace A024482.P5171559456025625807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057552 n + A024718 n

end

end A024482.P5171559456025625807

namespace A024482

/-- `A057552(n)+A024718(n)` -/
def P5171559456025625807.Spec : Prop :=
  ∀ n, P5171559456025625807.a n = A024482 (n + 2)

end A024482

/-! ## A024482.P3117922018523806558

`A344191(n)+A051945(n)`
-/

namespace A024482.P3117922018523806558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344191 n + A051945 n

end

end A024482.P3117922018523806558

namespace A024482

/-- `A344191(n)+A051945(n)` -/
def P3117922018523806558.Spec : Prop :=
  ∀ n, P3117922018523806558.a n = A024482 (n + 2)

end A024482

/-! ## A024482.P1653382229207778589

`A001791(n+1)+A001700(n)`
-/

namespace A024482.P1653382229207778589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 1) + A001700 n

end

end A024482.P1653382229207778589

namespace A024482

/-- `A001791(n+1)+A001700(n)` -/
def P1653382229207778589.Spec : Prop :=
  ∀ n, P1653382229207778589.a n = A024482 (n + 2)

end A024482

/-! ## A024482.P10707674689137492328

`A246434(n+1)+A038665(n)`
-/

namespace A024482.P10707674689137492328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246434 (n + 1) + A038665 n

end

end A024482.P10707674689137492328

namespace A024482

/-- `A246434(n+1)+A038665(n)` -/
def P10707674689137492328.Spec : Prop :=
  ∀ n, P10707674689137492328.a n = A024482 (n + 2)

end A024482

/-! ## A024482.P8257463997117959948

`A344136(n+1)+A070031(n)`
-/

namespace A024482.P8257463997117959948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344136 (n + 1) + A070031 n

end

end A024482.P8257463997117959948

namespace A024482

/-- `A344136(n+1)+A070031(n)` -/
def P8257463997117959948.Spec : Prop :=
  ∀ n, P8257463997117959948.a n = A024482 (n + 2)

end A024482

/-! ## A024482.P6103533221931153875

`A026023(2*n)+A001700(n)`
-/

namespace A024482.P6103533221931153875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026023 (2 * n) + A001700 n

end

end A024482.P6103533221931153875

namespace A024482

/-- `A026023(2*n)+A001700(n)` -/
def P6103533221931153875.Spec : Prop :=
  ∀ n, P6103533221931153875.a n = A024482 (n + 2)

end A024482

/-! ## A024482.P10325630950777150654

`A088218(n+1)+A001791(n+1)`
-/

namespace A024482.P10325630950777150654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 1) + A001791 (n + 1)

end

end A024482.P10325630950777150654

namespace A024482

/-- `A088218(n+1)+A001791(n+1)` -/
def P10325630950777150654.Spec : Prop :=
  ∀ n, P10325630950777150654.a n = A024482 (n + 2)

end A024482

/-! ## A024482.P11765515127378534201

`A076540(n+1)+A051924(n+1)`
-/

namespace A024482.P11765515127378534201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076540 (n + 1) + A051924 (n + 1)

end

end A024482.P11765515127378534201

namespace A024482

/-- `A076540(n+1)+A051924(n+1)` -/
def P11765515127378534201.Spec : Prop :=
  ∀ n, P11765515127378534201.a n = A024482 (n + 2)

end A024482

/-! ## A024482.P16535388170091686573

`A003409(n+1)-A000108(n+1)`
-/

namespace A024482.P16535388170091686573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003409 (n + 1) - A000108 (n + 1)

end

end A024482.P16535388170091686573

namespace A024482

/-- `A003409(n+1)-A000108(n+1)` -/
def P16535388170091686573.Spec : Prop :=
  ∀ n, P16535388170091686573.a n = A024482 (n + 2)

end A024482

/-! ## A024482.P8783024257627890324

`A029651(n+1)-A000108(n+1)`
-/

namespace A024482.P8783024257627890324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029651 (n + 1) - A000108 (n + 1)

end

end A024482.P8783024257627890324

namespace A024482

/-- `A029651(n+1)-A000108(n+1)` -/
def P8783024257627890324.Spec : Prop :=
  ∀ n, P8783024257627890324.a n = A024482 (n + 2)

end A024482

/-!
# A024483: a(n) = binomial(2*n, n) mod binomial(2*n-2, n-1).

The programs for A024483, the canonical program `A024483.P15437468095711942104` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024483 has offset 2).

The definition of A024483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024483.P15437468095711942104

`n*A000108(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A024483

/-- `n*A000108(n+1)` -/
def P15437468095711942104.Spec : Prop :=
  ∀ n, P15437468095711942104.a n = A024483 (n + 2)

theorem P15437468095711942104.correct : P15437468095711942104.Spec := by
  intro n
  simp only [A024483, Nat.add_sub_cancel]

end A024483

/-! ## A024483.P16464684996688419494

`2*C(2*(n+2)-3, n+2)`
-/

namespace A024483.P16464684996688419494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose ((2 * (n + 2) : ℤ) - 3).toNat (n + 2)

end

end A024483.P16464684996688419494

namespace A024483

/-- `2*C(2*(n+2)-3, n+2)` -/
def P16464684996688419494.Spec : Prop :=
  ∀ n, (P16464684996688419494.a n : ℤ) = A024483 (n + 2)

end A024483

/-! ## A024483.P16707409257106301706

`(n+2)*n*(2*(n+1))!/(n+2)!²`
-/

namespace A024483.P16707409257106301706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) * n * Nat.factorial (2 * (n + 1)) : ℚ) / (Nat.factorial (n + 2) ^ 2 : ℚ)

end

end A024483.P16707409257106301706

namespace A024483

/-- `(n+2)*n*(2*(n+1))!/(n+2)!²` -/
def P16707409257106301706.Spec : Prop :=
  ∀ n, P16707409257106301706.a n = (A024483 (n + 2) : ℚ)

end A024483

/-! ## A024483.P14406709827757631386

`n*∏[2*(2*n+1)/(n+2)]`
-/

namespace A024483.P14406709827757631386
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((2 * n + 1 : ℚ) / (n + 2 : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A024483.P14406709827757631386

namespace A024483

/-- `n*∏[2*(2*n+1)/(n+2)]` -/
def P14406709827757631386.Spec : Prop :=
  ∀ n, P14406709827757631386.a n = (A024483 (n + 2) : ℚ)

end A024483

/-! ## A024483.P14115129668160858980

`A276666(n+1)`
-/

namespace A024483.P14115129668160858980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276666 (n + 1)

end

end A024483.P14115129668160858980

namespace A024483

/-- `A276666(n+1)` -/
def P14115129668160858980.Spec : Prop :=
  ∀ n, P14115129668160858980.a n = A024483 (n + 2)

end A024483

/-! ## A024483.P13550324481037591024

`A116385(Δ[n²])`
-/

namespace A024483.P13550324481037591024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116385 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A024483.P13550324481037591024

namespace A024483

/-- `A116385(Δ[n²])` -/
def P13550324481037591024.Spec : Prop :=
  ∀ n, P13550324481037591024.a n = A024483 (n + 2)

end A024483

/-! ## A024483.P15558404554193898668

`record[A276666(abs(1-n))]`
-/

namespace A024483.P15558404554193898668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276666 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024483.P15558404554193898668

namespace A024483

/-- `record[A276666(abs(1-n))]` -/
def P15558404554193898668.Spec : Prop :=
  ∀ n, P15558404554193898668.a n = A024483 (n + 2)

end A024483

/-! ## A024483.P8268275925869970765

`Δ[2*A371965(n+1)]`
-/

namespace A024483.P8268275925869970765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A371965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024483.P8268275925869970765

namespace A024483

/-- `Δ[2*A371965(n+1)]` -/
def P8268275925869970765.Spec : Prop :=
  ∀ n, P8268275925869970765.a n = A024483 (n + 2)

end A024483

/-! ## A024483.P320298566646654016

`abs(n*A168491(n+1))`
-/

namespace A024483.P320298566646654016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A168491 (n + 1)|

end

end A024483.P320298566646654016

namespace A024483

/-- `abs(n*A168491(n+1))` -/
def P320298566646654016.Spec : Prop :=
  ∀ n, P320298566646654016.a n = A024483 (n + 2)

end A024483

/-! ## A024483.P7261576961224023165

`A220101(n+1)+A001791(n)`
-/

namespace A024483.P7261576961224023165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220101 (n + 1) + A001791 n

end

end A024483.P7261576961224023165

namespace A024483

/-- `A220101(n+1)+A001791(n)` -/
def P7261576961224023165.Spec : Prop :=
  ∀ n, P7261576961224023165.a n = A024483 (n + 2)

end A024483

/-! ## A024483.P4627458869075845785

`A246434(n+1)+A001700(n)`
-/

namespace A024483.P4627458869075845785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246434 (n + 1) + A001700 n

end

end A024483.P4627458869075845785

namespace A024483

/-- `A246434(n+1)+A001700(n)` -/
def P4627458869075845785.Spec : Prop :=
  ∀ n, P4627458869075845785.a n = A024483 (n + 2)

end A024483

/-! ## A024483.P14122615275828288564

`A051944(n)-A000782(n+1)`
-/

namespace A024483.P14122615275828288564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051944 n - A000782 (n + 1)

end

end A024483.P14122615275828288564

namespace A024483

/-- `A051944(n)-A000782(n+1)` -/
def P14122615275828288564.Spec : Prop :=
  ∀ n, P14122615275828288564.a n = A024483 (n + 2)

end A024483

/-! ## A024483.P7621027094392760709

`A129869(n+2)-A001700(n)`
-/

namespace A024483.P7621027094392760709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129869 (n + 2) - A001700 n

end

end A024483.P7621027094392760709

namespace A024483

/-- `A129869(n+2)-A001700(n)` -/
def P7621027094392760709.Spec : Prop :=
  ∀ n, P7621027094392760709.a n = A024483 (n + 2)

end A024483

/-! ## A024483.P8066275899744978174

`A001791(n+1)-A000108(n+1)`
-/

namespace A024483.P8066275899744978174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 1) - A000108 (n + 1)

end

end A024483.P8066275899744978174

namespace A024483

/-- `A001791(n+1)-A000108(n+1)` -/
def P8066275899744978174.Spec : Prop :=
  ∀ n, P8066275899744978174.a n = A024483 (n + 2)

end A024483

/-! ## A024483.P8784767738106430947

`A002420(n+2)+A000984(n+1)`
-/

namespace A024483.P8784767738106430947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 (n + 2) + A000984 (n + 1)

end

end A024483.P8784767738106430947

namespace A024483

/-- `A002420(n+2)+A000984(n+1)` -/
def P8784767738106430947.Spec : Prop :=
  ∀ n, P8784767738106430947.a n = A024483 (n + 2)

end A024483

/-! ## A024483.P324596220042575962

`A000984(n+1)-A068875(n+1)`
-/

namespace A024483.P324596220042575962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) - A068875 (n + 1)

end

end A024483.P324596220042575962

namespace A024483

/-- `A000984(n+1)-A068875(n+1)` -/
def P324596220042575962.Spec : Prop :=
  ∀ n, P324596220042575962.a n = A024483 (n + 2)

end A024483

/-! ## A024483.P9596683157187172755

`A077587(n+1)-A005807(n+1)`
-/

namespace A024483.P9596683157187172755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077587 (n + 1) - A005807 (n + 1)

end

end A024483.P9596683157187172755

namespace A024483

/-- `A077587(n+1)-A005807(n+1)` -/
def P9596683157187172755.Spec : Prop :=
  ∀ n, P9596683157187172755.a n = A024483 (n + 2)

end A024483

/-! ## A024483.P7700632469869860895

`A115140(n+2)+A001791(n+1)`
-/

namespace A024483.P7700632469869860895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 (n + 2) + A001791 (n + 1)

end

end A024483.P7700632469869860895

namespace A024483

/-- `A115140(n+2)+A001791(n+1)` -/
def P7700632469869860895.Spec : Prop :=
  ∀ n, P7700632469869860895.a n = A024483 (n + 2)

end A024483

/-! ## A024483.P7973818737795215593

`A115112(n+1)-A128634(n+1)`
-/

namespace A024483.P7973818737795215593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115112 (n + 1) - A128634 (n + 1)

end

end A024483.P7973818737795215593

namespace A024483

/-- `A115112(n+1)-A128634(n+1)` -/
def P7973818737795215593.Spec : Prop :=
  ∀ n, P7973818737795215593.a n = A024483 (n + 2)

end A024483

/-!
# A024485: a(n) = (2/(3*n-1))*binomial(3*n,n).

The programs for A024485, the canonical program `A024485.P13512264507624773561` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024485 has offset 0).

The definition of A024485 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024485.P13512264507624773561

`2*A005809(n)/(3*n-1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A024485

/-- `2*A005809(n)/(3*n-1)` -/
def P13512264507624773561.Spec : Prop :=
  ∀ n, P13512264507624773561.a n = (A024485 n : ℚ)

end A024485

/-! ## A024485.P3376117827756874365

`2/(3*n-1)*C(3*n, n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A024485.P3376117827756874365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / ((3 * n : ℤ) - 1 : ℚ) * (Nat.choose (3 * n) n : ℚ)

end

end A024485.P3376117827756874365

namespace A024485

/-- `2/(3*n-1)*C(3*n, n)` -/
def P3376117827756874365.Spec : Prop :=
  ∀ n, P3376117827756874365.a n = (A024485 n : ℚ)

end A024485

/-! ## A024485.P15660306702502405100

`A264772(∑[n])/(2*n-(n+1)/2)`
-/

namespace A024485.P15660306702502405100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264772 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / ((2 * n : ℚ) - (n + 1 : ℚ) / 2)

end

end A024485.P15660306702502405100

namespace A024485

/-- `A264772(∑[n])/(2*n-(n+1)/2)` -/
def P15660306702502405100.Spec : Prop :=
  ∀ n, P15660306702502405100.a n = (A024485 n : ℚ)

end A024485

/-!
# A024486: a(n) = (1/(2n+1))*Multinomial(3n; n,n,n).

The programs for A024486, the canonical program `A024486.P14309275763816620096` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024486 has offset 0).

The definition of A024486 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024486.P14309275763816620096

`A006480(n)/(2*n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A024486

/-- `A006480(n)/(2*n+1)` -/
def P14309275763816620096.Spec : Prop :=
  ∀ n, P14309275763816620096.a n = (A024486 n : ℚ)

end A024486

/-! ## A024486.P3987492557797688510

`(3*n)!/((2*n+1)*n!^3)`
-/

namespace A024486.P3987492557797688510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (3 * n) : ℚ) / ((2 * n + 1) * Nat.factorial n ^ 3 : ℚ)

end

end A024486.P3987492557797688510

namespace A024486

/-- `(3*n)!/((2*n+1)*n!^3)` -/
def P3987492557797688510.Spec : Prop :=
  ∀ n, P3987492557797688510.a n = (A024486 n : ℚ)

end A024486

/-! ## A024486.P14915906238454979218

`C(3*n, n)/(2*n+1)*C(2*n, n)`
-/

namespace A024486.P14915906238454979218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n : ℚ) / (2 * n + 1 : ℚ) * (Nat.choose (2 * n) n : ℚ)

end

end A024486.P14915906238454979218

namespace A024486

/-- `C(3*n, n)/(2*n+1)*C(2*n, n)` -/
def P14915906238454979218.Spec : Prop :=
  ∀ n, P14915906238454979218.a n = (A024486 n : ℚ)

end A024486

/-! ## A024486.P3006360223108538228

`(n+1)*A218441(n)`
-/

namespace A024486.P3006360223108538228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A218441 n

end

end A024486.P3006360223108538228

namespace A024486

/-- `(n+1)*A218441(n)` -/
def P3006360223108538228.Spec : Prop :=
  ∀ n, P3006360223108538228.a n = A024486 n

end A024486

/-! ## A024486.P7682498409146194519

`C(2*n, n)*A001764(n)`
-/

namespace A024486.P7682498409146194519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) * A001764 n

end

end A024486.P7682498409146194519

namespace A024486

/-- `C(2*n, n)*A001764(n)` -/
def P7682498409146194519.Spec : Prop :=
  ∀ n, P7682498409146194519.a n = A024486 n

end A024486

/-! ## A024486.P9659774897489860659

`C(3*n, n)/(2*n+1)*A000984(n)`
-/

namespace A024486.P9659774897489860659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n : ℚ) / (2 * n + 1 : ℚ) * (A000984 n : ℚ)

end

end A024486.P9659774897489860659

namespace A024486

/-- `C(3*n, n)/(2*n+1)*A000984(n)` -/
def P9659774897489860659.Spec : Prop :=
  ∀ n, P9659774897489860659.a n = (A024486 n : ℚ)

end A024486

/-! ## A024486.P14605296742847369948

`A000984(n)*A001764(n)`
-/

namespace A024486.P14605296742847369948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A001764 n

end

end A024486.P14605296742847369948

namespace A024486

/-- `A000984(n)*A001764(n)` -/
def P14605296742847369948.Spec : Prop :=
  ∀ n, P14605296742847369948.a n = A024486 n

end A024486

/-! ## A024486.P15205498755393671596

`A000108(n)*A174687(n)`
-/

namespace A024486.P15205498755393671596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A174687 n

end

end A024486.P15205498755393671596

namespace A024486

/-- `A000108(n)*A174687(n)` -/
def P15205498755393671596.Spec : Prop :=
  ∀ n, P15205498755393671596.a n = A024486 n

end A024486

/-! ## A024486.P5863508323643447566

`abs(A168491(n)*A174687(n))`
-/

namespace A024486.P5863508323643447566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n * A174687 n|

end

end A024486.P5863508323643447566

namespace A024486

/-- `abs(A168491(n)*A174687(n))` -/
def P5863508323643447566.Spec : Prop :=
  ∀ n, P5863508323643447566.a n = A024486 n

end A024486

/-! ## A024486.P11434319255244075656

`record[A126869(n)]*A001764(n)`
-/

namespace A024486.P11434319255244075656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A001764 n

end

end A024486.P11434319255244075656

namespace A024486

/-- `record[A126869(n)]*A001764(n)` -/
def P11434319255244075656.Spec : Prop :=
  ∀ n, P11434319255244075656.a n = A024486 n

end A024486

/-!
# A024487: a(n) = (1/(4n+2))*M(3n; n,n,n).

The programs for A024487, the canonical program `A024487.P10819537129561088428` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024487 has offset 1).

The definition of A024487 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024487.P10819537129561088428

`A006480(n+1)/(4*(n+1)+2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A024487

/-- `A006480(n+1)/(4*(n+1)+2)` -/
def P10819537129561088428.Spec : Prop :=
  ∀ n, P10819537129561088428.a n = (A024487 (n + 1) : ℚ)

end A024487

/-! ## A024487.P14912116644172314801

`(3*(n+1))!/((n+1)!^3*(4*(n+1)+2))`
-/

namespace A024487.P14912116644172314801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (3 * (n + 1)) : ℚ) / (Nat.factorial (n + 1) ^ 3 * (4 * (n + 1) + 2) : ℚ)

end

end A024487.P14912116644172314801

namespace A024487

/-- `(3*(n+1))!/((n+1)!^3*(4*(n+1)+2))` -/
def P14912116644172314801.Spec : Prop :=
  ∀ n, P14912116644172314801.a n = (A024487 (n + 1) : ℚ)

end A024487

/-! ## A024487.P14551383372059506981

`A024486(n+1)/2`
-/

namespace A024487.P14551383372059506981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024486 (n + 1) : ℚ) / 2

end

end A024487.P14551383372059506981

namespace A024487

/-- `A024486(n+1)/2` -/
def P14551383372059506981.Spec : Prop :=
  ∀ n, P14551383372059506981.a n = (A024487 (n + 1) : ℚ)

end A024487

/-! ## A024487.P9697474428340540427

`record[a(n-1)/(floor(n/2)/n-1)]*A001764(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A024487.P9697474428340540427
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * (A001764 (n + 1) : ℚ)

end

end A024487.P9697474428340540427

namespace A024487

/-- `record[a(n-1)/(floor(n/2)/n-1)]*A001764(n+1)` -/
def P9697474428340540427.Spec : Prop :=
  ∀ n, P9697474428340540427.a n = (A024487 (n + 1) : ℚ)

end A024487

/-! ## A024487.P9133804758055189239

`A001700(n)*A001764(n+1)`
-/

namespace A024487.P9133804758055189239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n * A001764 (n + 1)

end

end A024487.P9133804758055189239

namespace A024487

/-- `A001700(n)*A001764(n+1)` -/
def P9133804758055189239.Spec : Prop :=
  ∀ n, P9133804758055189239.a n = A024487 (n + 1)

end A024487

/-! ## A024487.P3776320672102184275

`A001764(n+1)*A088218(n+1)`
-/

namespace A024487.P3776320672102184275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 (n + 1) * A088218 (n + 1)

end

end A024487.P3776320672102184275

namespace A024487

/-- `A001764(n+1)*A088218(n+1)` -/
def P3776320672102184275.Spec : Prop :=
  ∀ n, P3776320672102184275.a n = A024487 (n + 1)

end A024487

/-! ## A024487.P3271656851975547406

`A001405(2*n+1)*A001764(n+1)`
-/

namespace A024487.P3271656851975547406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n + 1) * A001764 (n + 1)

end

end A024487.P3271656851975547406

namespace A024487

/-- `A001405(2*n+1)*A001764(n+1)` -/
def P3271656851975547406.Spec : Prop :=
  ∀ n, P3271656851975547406.a n = A024487 (n + 1)

end A024487

/-! ## A024487.P17994834215060799020

`A000984(n+1)/2*A001764(n+1)`
-/

namespace A024487.P17994834215060799020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 (n + 1) : ℚ) / 2 * (A001764 (n + 1) : ℚ)

end

end A024487.P17994834215060799020

namespace A024487

/-- `A000984(n+1)/2*A001764(n+1)` -/
def P17994834215060799020.Spec : Prop :=
  ∀ n, P17994834215060799020.a n = (A024487 (n + 1) : ℚ)

end A024487

/-! ## A024487.P9427868372449011043

`A000108(n+1)/2*A174687(n+1)`
-/

namespace A024487.P9427868372449011043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 1) : ℚ) / 2 * (A174687 (n + 1) : ℚ)

end

end A024487.P9427868372449011043

namespace A024487

/-- `A000108(n+1)/2*A174687(n+1)` -/
def P9427868372449011043.Spec : Prop :=
  ∀ n, P9427868372449011043.a n = (A024487 (n + 1) : ℚ)

end A024487

/-! ## A024487.P16553222412411829137

`A001764(n+1)*A210736(A005843(n+1))`
-/

namespace A024487.P16553222412411829137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 (n + 1) * A210736 (A005843 (n + 1)).toNat

end

end A024487.P16553222412411829137

namespace A024487

/-- `A001764(n+1)*A210736(A005843(n+1))` -/
def P16553222412411829137.Spec : Prop :=
  ∀ n, P16553222412411829137.a n = A024487 (n + 1)

end A024487

/-!
# A024488: a(n) = (1/(3n-1))*M(3n; n,n,n), where M(...) is a multinomial coefficient.

The programs for A024488, the canonical program `A024488.P3098859233003656087` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024488 has offset 1).

The definition of A024488 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024488.P18427634552267335618

`3*A024489(n+1)`
-/

namespace A024488.P18427634552267335618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A024489 (n + 1)

end

end A024488.P18427634552267335618

namespace A024488

/-- `3*A024489(n+1)` -/
def P18427634552267335618.Spec : Prop :=
  ∀ n, P18427634552267335618.a n = A024488 (n + 1)

end A024488

/-! ## A024488.P3098859233003656087

`A006480(n+1)/(3*(n+1)-1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A024488

/-- `A006480(n+1)/(3*(n+1)-1)` -/
def P3098859233003656087.Spec : Prop :=
  ∀ n, P3098859233003656087.a n = (A024488 (n + 1) : ℚ)

end A024488

/-! ## A024488.P13038595516669406845

`3*A215294(Δ[n²])`
-/

namespace A024488.P13038595516669406845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A215294 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A024488.P13038595516669406845

namespace A024488

/-- `3*A215294(Δ[n²])` -/
def P13038595516669406845.Spec : Prop :=
  ∀ n, P13038595516669406845.a n = A024488 (n + 1)

end A024488

/-! ## A024488.P4615264829779730257

`3*C(2*n+1+n, n+1)*A000108(n)`
-/

namespace A024488.P4615264829779730257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((Nat.choose (2 * n + 1 + n) (n + 1) : ℤ) * A000108 n)

end

end A024488.P4615264829779730257

namespace A024488

/-- `3*C(2*n+1+n, n+1)*A000108(n)` -/
def P4615264829779730257.Spec : Prop :=
  ∀ n, P4615264829779730257.a n = A024488 (n + 1)

end A024488

/-! ## A024488.P16904523599399144081

`A117671(n)*A126324(2*n+1)`
-/

namespace A024488.P16904523599399144081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117671 n * A126324 (2 * n + 1)

end

end A024488.P16904523599399144081

namespace A024488

/-- `A117671(n)*A126324(2*n+1)` -/
def P16904523599399144081.Spec : Prop :=
  ∀ n, P16904523599399144081.a n = A024488 (n + 1)

end A024488

/-! ## A024488.P12964989379874086566

`(A034856(n+1)+2)*A123691(n+1)`
-/

namespace A024488.P12964989379874086566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034856 (n + 1) + 2) * A123691 (n + 1)

end

end A024488.P12964989379874086566

namespace A024488

/-- `(A034856(n+1)+2)*A123691(n+1)` -/
def P12964989379874086566.Spec : Prop :=
  ∀ n, P12964989379874086566.a n = A024488 (n + 1)

end A024488

/-! ## A024488.P14011632476025937186

`A215294(2*n+1)+2*A215294(2*n+1)`
-/

namespace A024488.P14011632476025937186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215294 (2 * n + 1) + 2 * A215294 (2 * n + 1)

end

end A024488.P14011632476025937186

namespace A024488

/-- `A215294(2*n+1)+2*A215294(2*n+1)` -/
def P14011632476025937186.Spec : Prop :=
  ∀ n, P14011632476025937186.a n = A024488 (n + 1)

end A024488

/-! ## A024488.P805617151287730982

`Δ[A188441(n)]/A016789(n)`
-/

namespace A024488.P805617151287730982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188441 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A016789 n : ℚ)

end

end A024488.P805617151287730982

namespace A024488

/-- `Δ[A188441(n)]/A016789(n)` -/
def P805617151287730982.Spec : Prop :=
  ∀ n, P805617151287730982.a n = (A024488 (n + 1) : ℚ)

end A024488

/-!
# A024489: a(n) = (1/(9n-3))*M(3n; n,n,n), where M() is a multinomial coefficient.

The programs for A024489, the canonical program `A024489.P15854125580899548442` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024489 has offset 1).

The definition of A024489 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024489.P15854125580899548442

`(3*(n+1))!/((9*(n+1)-3)*(n+1)!^3)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024489

/-- `(3*(n+1))!/((9*(n+1)-3)*(n+1)!^3)` -/
def P15854125580899548442.Spec : Prop :=
  ∀ n, P15854125580899548442.a n = (A024489 (n + 1) : ℚ)

end A024489

/-! ## A024489.P14642959305524396523

`A215294(Δ[n²])`
-/

namespace A024489.P14642959305524396523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215294 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A024489.P14642959305524396523

namespace A024489

/-- `A215294(Δ[n²])` -/
def P14642959305524396523.Spec : Prop :=
  ∀ n, P14642959305524396523.a n = A024489 (n + 1)

end A024489

/-! ## A024489.P6408105516821057324

`A024488(n+1)/3`
-/

namespace A024489.P6408105516821057324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024488 (n + 1) : ℚ) / 3

end

end A024489.P6408105516821057324

namespace A024489

/-- `A024488(n+1)/3` -/
def P6408105516821057324.Spec : Prop :=
  ∀ n, P6408105516821057324.a n = (A024489 (n + 1) : ℚ)

end A024489

/-! ## A024489.P14098510178694152435

`lcm(2*n+1, A215294(2*n+1))`
-/

namespace A024489.P14098510178694152435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A215294 (2 * n + 1))

end

end A024489.P14098510178694152435

namespace A024489

/-- `lcm(2*n+1, A215294(2*n+1))` -/
def P14098510178694152435.Spec : Prop :=
  ∀ n, (P14098510178694152435.a n : ℤ) = A024489 (n + 1)

end A024489

/-! ## A024489.P7724385139198589965

`C(3*n+1, n+1)*A000108(n)`
-/

namespace A024489.P7724385139198589965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n + 1) (n + 1) : ℤ) * A000108 n

end

end A024489.P7724385139198589965

namespace A024489

/-- `C(3*n+1, n+1)*A000108(n)` -/
def P7724385139198589965.Spec : Prop :=
  ∀ n, P7724385139198589965.a n = A024489 (n + 1)

end A024489

/-! ## A024489.P1961454056219375869

`C(3*n+1, n)/(n+1)*A001700(n)`
-/

namespace A024489.P1961454056219375869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n + 1) n : ℚ) / (n + 1 : ℚ) * (A001700 n : ℚ)

end

end A024489.P1961454056219375869

namespace A024489

/-- `C(3*n+1, n)/(n+1)*A001700(n)` -/
def P1961454056219375869.Spec : Prop :=
  ∀ n, P1961454056219375869.a n = (A024489 (n + 1) : ℚ)

end A024489

/-! ## A024489.P269465267752804105

`A001700(n)*A006013(n)`
-/

namespace A024489.P269465267752804105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n * A006013 n

end

end A024489.P269465267752804105

namespace A024489

/-- `A001700(n)*A006013(n)` -/
def P269465267752804105.Spec : Prop :=
  ∀ n, P269465267752804105.a n = A024489 (n + 1)

end A024489

/-! ## A024489.P5786863374013023049

`A000108(n)*A117671(n)`
-/

namespace A024489.P5786863374013023049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A117671 n

end

end A024489.P5786863374013023049

namespace A024489

/-- `A000108(n)*A117671(n)` -/
def P5786863374013023049.Spec : Prop :=
  ∀ n, P5786863374013023049.a n = A024489 (n + 1)

end A024489

/-! ## A024489.P7215873325766958015

`A000108(n+1)*A026004(n)`
-/

namespace A024489.P7215873325766958015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A026004 n

end

end A024489.P7215873325766958015

namespace A024489

/-- `A000108(n+1)*A026004(n)` -/
def P7215873325766958015.Spec : Prop :=
  ∀ n, P7215873325766958015.a n = A024489 (n + 1)

end A024489

/-! ## A024489.P10006848373686467003

`A006013(n)*A088218(n+1)`
-/

namespace A024489.P10006848373686467003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 n * A088218 (n + 1)

end

end A024489.P10006848373686467003

namespace A024489

/-- `A006013(n)*A088218(n+1)` -/
def P10006848373686467003.Spec : Prop :=
  ∀ n, P10006848373686467003.a n = A024489 (n + 1)

end A024489

/-!
# A024490: a(n) = C(n-1,1) + C(n-3,3) + ... + C(n-2*m-1,2*m+1), where m = floor((n-2)/4).

The programs for A024490, the canonical program `A024490.P8908489262887325625` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024490 has offset 2).

The definition of A024490 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024490.P8908489262887325625

`A000045(n+3)-A005252(n+2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A024490

/-- `A000045(n+3)-A005252(n+2)` -/
def P8908489262887325625.Spec : Prop :=
  ∀ n, P8908489262887325625.a n = A024490 (n + 2)

theorem P8908489262887325625.correct : P8908489262887325625.Spec := by
  intro n
  simp only [A024490, Nat.add_sub_cancel]

end A024490

/-! ## A024490.P8146315380009622099

`(A000045(n+3)-A010892(n+2))/2`
-/

namespace A024490.P8146315380009622099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 3) - A010892 (n + 2) : ℚ) / 2

end

end A024490.P8146315380009622099

namespace A024490

/-- `(A000045(n+3)-A010892(n+2))/2` -/
def P8146315380009622099.Spec : Prop :=
  ∀ n, P8146315380009622099.a n = (A024490 (n + 2) : ℚ)

end A024490

/-! ## A024490.P7478076596628208057

`ogf(1/(1-2x+x^2-x^4))`
-/

namespace A024490.P7478076596628208057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 1, 0, -1] n

end

end A024490.P7478076596628208057

namespace A024490

/-- `ogf(1/(1-2x+x^2-x^4))` -/
def P7478076596628208057.Spec : Prop :=
  ∀ n, P7478076596628208057.a n = A024490 (n + 2)

end A024490

/-! ## A024490.P4150017618709590630

`∑[A005252(n)]`
-/

namespace A024490.P4150017618709590630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024490.P4150017618709590630

namespace A024490

/-- `∑[A005252(n)]` -/
def P4150017618709590630.Spec : Prop :=
  ∀ n, P4150017618709590630.a n = A024490 (n + 2)

end A024490

/-! ## A024490.P17539018821024705184

`record[abs(A106511(n))]`
-/

namespace A024490.P17539018821024705184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A106511 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024490.P17539018821024705184

namespace A024490

/-- `record[abs(A106511(n))]` -/
def P17539018821024705184.Spec : Prop :=
  ∀ n, P17539018821024705184.a n = A024490 (n + 2)

end A024490

/-! ## A024490.P16490057439412975914

`A174619(2*(n+1))`
-/

namespace A024490.P16490057439412975914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174619 (2 * (n + 1))

end

end A024490.P16490057439412975914

namespace A024490

/-- `A174619(2*(n+1))` -/
def P16490057439412975914.Spec : Prop :=
  ∀ n, P16490057439412975914.a n = A024490 (n + 2)

end A024490

/-! ## A024490.P15049998290451081488

`A174618(2*n+5)`
-/

namespace A024490.P15049998290451081488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (2 * n + 5)

end

end A024490.P15049998290451081488

namespace A024490

/-- `A174618(2*n+5)` -/
def P15049998290451081488.Spec : Prop :=
  ∀ n, P15049998290451081488.a n = A024490 (n + 2)

end A024490

/-! ## A024490.P6149383697036948966

`∑[A000045(n)-a(n-3)]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A024490.P6149383697036948966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  A000045 n - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024490.P6149383697036948966

namespace A024490

/-- `∑[A000045(n)-a(n-3)]` -/
def P6149383697036948966.Spec : Prop :=
  ∀ n, P6149383697036948966.a n = A024490 (n + 2)

end A024490

/-! ## A024490.P5011241912289814285

`A000045(n+2)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A024490.P5011241912289814285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A000045 (n + 2) - a (n - 3)

end

end A024490.P5011241912289814285

namespace A024490

/-- `A000045(n+2)-a(n-3)` -/
def P5011241912289814285.Spec : Prop :=
  ∀ n, P5011241912289814285.a n = A024490 (n + 2)

end A024490

/-! ## A024490.P5639667036501362138

`A226956(n)+A000045(n)`
-/

namespace A024490.P5639667036501362138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226956 n + A000045 n

end

end A024490.P5639667036501362138

namespace A024490

/-- `A226956(n)+A000045(n)` -/
def P5639667036501362138.Spec : Prop :=
  ∀ n, P5639667036501362138.a n = A024490 (n + 2)

end A024490

/-! ## A024490.P12277782568334444740

`A286350(n)+A212804(n)`
-/

namespace A024490.P12277782568334444740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286350 n + A212804 n

end

end A024490.P12277782568334444740

namespace A024490

/-- `A286350(n)+A212804(n)` -/
def P12277782568334444740.Spec : Prop :=
  ∀ n, P12277782568334444740.a n = A024490 (n + 2)

end A024490

/-! ## A024490.P13391036873397289450

`∑[A174618(A047261(n+1))]`
-/

namespace A024490.P13391036873397289450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (A047261 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024490.P13391036873397289450

namespace A024490

/-- `∑[A174618(A047261(n+1))]` -/
def P13391036873397289450.Spec : Prop :=
  ∀ n, P13391036873397289450.a n = A024490 (n + 2)

end A024490

/-! ## A024490.P6239245579862860603

`A286350(n)+Δ[A001611(n)]`
-/

namespace A024490.P6239245579862860603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286350 n + (f1 (n + 1) - f1 n)

end

end A024490.P6239245579862860603

namespace A024490

/-- `A286350(n)+Δ[A001611(n)]` -/
def P6239245579862860603.Spec : Prop :=
  ∀ n, P6239245579862860603.a n = A024490 (n + 2)

end A024490

/-! ## A024490.P2726679758676876993

`A164965(n)+A130578(n+1)`
-/

namespace A024490.P2726679758676876993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164965 n + A130578 (n + 1)

end

end A024490.P2726679758676876993

namespace A024490

/-- `A164965(n)+A130578(n+1)` -/
def P2726679758676876993.Spec : Prop :=
  ∀ n, P2726679758676876993.a n = A024490 (n + 2)

end A024490

/-! ## A024490.P11291565542953713088

`A286350(n)-A152163(n+1)`
-/

namespace A024490.P11291565542953713088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286350 n - A152163 (n + 1)

end

end A024490.P11291565542953713088

namespace A024490

/-- `A286350(n)-A152163(n+1)` -/
def P11291565542953713088.Spec : Prop :=
  ∀ n, P11291565542953713088.a n = A024490 (n + 2)

end A024490

/-! ## A024490.P8360842157896371120

`A226956(n)-A152163(n+2)`
-/

namespace A024490.P8360842157896371120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226956 n - A152163 (n + 2)

end

end A024490.P8360842157896371120

namespace A024490

/-- `A226956(n)-A152163(n+2)` -/
def P8360842157896371120.Spec : Prop :=
  ∀ n, P8360842157896371120.a n = A024490 (n + 2)

end A024490

/-! ## A024490.P2833710022932590936

`A005252(n+2)-A010892(n+2)`
-/

namespace A024490.P2833710022932590936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005252 (n + 2) - A010892 (n + 2)

end

end A024490.P2833710022932590936

namespace A024490

/-- `A005252(n+2)-A010892(n+2)` -/
def P2833710022932590936.Spec : Prop :=
  ∀ n, P2833710022932590936.a n = A024490 (n + 2)

end A024490

/-! ## A024490.P3520629202211493604

`A000045(n+1)+A286350(n)-A000045(n)`
-/

namespace A024490.P3520629202211493604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A286350 n - A000045 n)

end

end A024490.P3520629202211493604

namespace A024490

/-- `A000045(n+1)+A286350(n)-A000045(n)` -/
def P3520629202211493604.Spec : Prop :=
  ∀ n, P3520629202211493604.a n = A024490 (n + 2)

end A024490

/-! ## A024490.P1033035675650440915

`A226956(n+1)+A226956(n)-A005252(n)`
-/

namespace A024490.P1033035675650440915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226956 (n + 1) + (A226956 n - A005252 n)

end

end A024490.P1033035675650440915

namespace A024490

/-- `A226956(n+1)+A226956(n)-A005252(n)` -/
def P1033035675650440915.Spec : Prop :=
  ∀ n, P1033035675650440915.a n = A024490 (n + 2)

end A024490

/-! ## A024490.P5018927502466658289

`A286350(n+1)+A286350(n)-A226956(n+1)`
-/

namespace A024490.P5018927502466658289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286350 (n + 1) + (A286350 n - A226956 (n + 1))

end

end A024490.P5018927502466658289

namespace A024490

/-- `A286350(n+1)+A286350(n)-A226956(n+1)` -/
def P5018927502466658289.Spec : Prop :=
  ∀ n, P5018927502466658289.a n = A024490 (n + 2)

end A024490

/-!
# A024491: a(n) = (1/(4n-1))*C(4n,2n).

The programs for A024491, the canonical program `A024491.P11557080651820310435` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024491 has offset 0).

The definition of A024491 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024491.P11557080651820310435

`A001448(n)/(4*n-1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A024491

/-- `A001448(n)/(4*n-1)` -/
def P11557080651820310435.Spec : Prop :=
  ∀ n, P11557080651820310435.a n = (A024491 n : ℚ)

end A024491

/-! ## A024491.P10488954536001459873

`1/(4*n-1)*C(4*n, 2*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A024491.P10488954536001459873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / ((4 * n : ℤ) - 1 : ℚ) * (Nat.choose (4 * n) (2 * n) : ℚ)

end

end A024491.P10488954536001459873

namespace A024491

/-- `1/(4*n-1)*C(4*n, 2*n)` -/
def P10488954536001459873.Spec : Prop :=
  ∀ n, P10488954536001459873.a n = (A024491 n : ℚ)

end A024491

/-! ## A024491.P241666226790805999

`record[-((4-6/n)*a(n-1))]` with `a(0)=-1`
-/

namespace A024491.P241666226790805999
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [-1] fun n f1 =>
  -((4 - 6 / (n : ℚ)) * f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024491.P241666226790805999

namespace A024491

/-- `record[-((4-6/n)*a(n-1))]` -/
def P241666226790805999.Spec : Prop :=
  ∀ n, P241666226790805999.a n = (A024491 n : ℚ)

end A024491

/-! ## A024491.P4412459420095458937

`record[(3/n-1)*4*a(n-2)]` with `a(0)=-1, a(1)=2`
-/

namespace A024491.P4412459420095458937
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [-1, 2] fun n f1 =>
  (3 / (n : ℚ) - 1) * (4 * f1 (n - 2))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024491.P4412459420095458937

namespace A024491

/-- `record[(3/n-1)*4*a(n-2)]` -/
def P4412459420095458937.Spec : Prop :=
  ∀ n, P4412459420095458937.a n = (A024491 n : ℚ)

end A024491

/-! ## A024491.P2835505926703922958

`record[-A104624(n)]`
-/

namespace A024491.P2835505926703922958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A104624 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024491.P2835505926703922958

namespace A024491

/-- `record[-A104624(n)]` -/
def P2835505926703922958.Spec : Prop :=
  ∀ n, P2835505926703922958.a n = A024491 n

end A024491

/-! ## A024491.P14962134354252369109

`-A002420(2*n)`
-/

namespace A024491.P14962134354252369109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A002420 (2 * n)

end

end A024491.P14962134354252369109

namespace A024491

/-- `-A002420(2*n)` -/
def P14962134354252369109.Spec : Prop :=
  ∀ n, P14962134354252369109.a n = A024491 n

end A024491

/-! ## A024491.P4158499335235487534

`-A182122(4*n)`
-/

namespace A024491.P4158499335235487534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A182122 (4 * n)

end

end A024491.P4158499335235487534

namespace A024491

/-- `-A182122(4*n)` -/
def P4158499335235487534.Spec : Prop :=
  ∀ n, P4158499335235487534.a n = A024491 n

end A024491

/-! ## A024491.P9626986905993158991

`A000108(2*n)/(2-3/(2*n+1))`
-/

namespace A024491.P9626986905993158991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (2 * n) : ℚ) / (2 - 3 / (2 * n + 1 : ℚ))

end

end A024491.P9626986905993158991

namespace A024491

/-- `A000108(2*n)/(2-3/(2*n+1))` -/
def P9626986905993158991.Spec : Prop :=
  ∀ n, P9626986905993158991.a n = (A024491 n : ℚ)

end A024491

/-! ## A024491.P786997316838777850

`abs(A002420(2*n))-A000038(n)`
-/

namespace A024491.P786997316838777850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002420 (2 * n)| - A000038 n

end

end A024491.P786997316838777850

namespace A024491

/-- `abs(A002420(2*n))-A000038(n)` -/
def P786997316838777850.Spec : Prop :=
  ∀ n, P786997316838777850.a n = A024491 n

end A024491

/-!
# A024492: Catalan numbers with odd index: a(n) = binomial(4*n+2, 2*n+1)/(2*n+2).

The programs for A024492, the canonical program `A024492.P13701463304141560514` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024492 has offset 0).

The definition of A024492 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024492.P4383084668475902963

`C(4*n+1, 2*n+1)/(n+1)`
-/

namespace A024492.P4383084668475902963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n + 1) (2 * n + 1) : ℚ) / (n + 1 : ℚ)

end

end A024492.P4383084668475902963

namespace A024492

/-- `C(4*n+1, 2*n+1)/(n+1)` -/
def P4383084668475902963.Spec : Prop :=
  ∀ n, P4383084668475902963.a n = (A024492 n : ℚ)

end A024492

/-! ## A024492.P13703535439110360349

`C(4*n+2, 2*n+1)/(2*n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A024492.P13703535439110360349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n + 2) (2 * n + 1) : ℚ) / (2 * n + 2 : ℚ)

end

end A024492.P13703535439110360349

namespace A024492

/-- `C(4*n+2, 2*n+1)/(2*n+2)` -/
def P13703535439110360349.Spec : Prop :=
  ∀ n, P13703535439110360349.a n = (A024492 n : ℚ)

end A024492

/-! ## A024492.P13701463304141560514

`(4*n+2)!/((2*n+1)!*(2*n+2)!)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024492

/-- `(4*n+2)!/((2*n+1)!*(2*n+2)!)` -/
def P13701463304141560514.Spec : Prop :=
  ∀ n, P13701463304141560514.a n = (A024492 n : ℚ)

end A024492

/-! ## A024492.P740584337484943659

`record[-((4-6/n)*a(n-1))]` with `a(0)=1, a(1)=-1`
-/

namespace A024492.P740584337484943659
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  -((4 - 6 / (n : ℚ)) * f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024492.P740584337484943659

namespace A024492

/-- `record[-((4-6/n)*a(n-1))]` -/
def P740584337484943659.Spec : Prop :=
  ∀ n, P740584337484943659.a n = (A024492 n : ℚ)

end A024492

/-! ## A024492.P8590273812855049051

`record[(6/(n+1)-4)*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A024492.P8590273812855049051
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (6 / (n + 1 : ℚ) - 4) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024492.P8590273812855049051

namespace A024492

/-- `record[(6/(n+1)-4)*a(n-1)]` -/
def P8590273812855049051.Spec : Prop :=
  ∀ n, P8590273812855049051.a n = (A024492 n : ℚ)

end A024492

/-! ## A024492.P18296740684427932644

`record[A105523(n)]`
-/

namespace A024492.P18296740684427932644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024492.P18296740684427932644

namespace A024492

/-- `record[A105523(n)]` -/
def P18296740684427932644.Spec : Prop :=
  ∀ n, P18296740684427932644.a n = A024492 n

end A024492

/-! ## A024492.P6575933512190648539

`A234040(2*n)`
-/

namespace A024492.P6575933512190648539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234040 (2 * n)

end

end A024492.P6575933512190648539

namespace A024492

/-- `A234040(2*n)` -/
def P6575933512190648539.Spec : Prop :=
  ∀ n, P6575933512190648539.a n = A024492 n

end A024492

/-! ## A024492.P16195078315418998677

`A026008(4*n)`
-/

namespace A024492.P16195078315418998677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026008 (4 * n)

end

end A024492.P16195078315418998677

namespace A024492

/-- `A026008(4*n)` -/
def P16195078315418998677.Spec : Prop :=
  ∀ n, P16195078315418998677.a n = A024492 n

end A024492

/-! ## A024492.P13630414227506793035

`A129996(4*n)`
-/

namespace A024492.P13630414227506793035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129996 (4 * n)

end

end A024492.P13630414227506793035

namespace A024492

/-- `A129996(4*n)` -/
def P13630414227506793035.Spec : Prop :=
  ∀ n, P13630414227506793035.a n = A024492 n

end A024492

/-! ## A024492.P14760663170359466638

`A000108(Δ[n²])`
-/

namespace A024492.P14760663170359466638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A024492.P14760663170359466638

namespace A024492

/-- `A000108(Δ[n²])` -/
def P14760663170359466638.Spec : Prop :=
  ∀ n, P14760663170359466638.a n = A024492 n

end A024492

/-!
# A024493: a(n) = C(n,0) + C(n,3) + ... + C(n,3[n/3]).

The programs for A024493, the canonical program `A024493.P11628047555256374901` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024493 has offset 0).

The definition of A024493 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024493.P11628047555256374901

`3*a(n-1)-3*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024493

/-- `3*a(n-1)-3*a(n-2)+2*a(n-3)` -/
def P11628047555256374901.Spec : Prop :=
  ∀ n, P11628047555256374901.a n = A024493 n

theorem P11628047555256374901.correct : P11628047555256374901.Spec := by
  intro n
  simp only [A024493]

end A024493

/-! ## A024493.P12912317717050766361

`1/3*(2^n+2*cos(n*π/3))`
-/

namespace A024493.P12912317717050766361
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 3 : ℝ) * ((2 ^ n : ℝ) + 2 * Real.cos ((n : ℝ) * Real.pi / 3))

end

end A024493.P12912317717050766361

namespace A024493

/-- `1/3*(2^n+2*cos(n*π/3))` -/
def P12912317717050766361.Spec : Prop :=
  ∀ n, P12912317717050766361.a n = (A024493 n : ℝ)

end A024493

/-! ## A024493.P7233694080081856527

`(3*(-1)^floor((n+1)/3)+(-1)^n+2^(n+1))/6`
-/

namespace A024493.P7233694080081856527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * (-1 : ℚ) ^ (⌊(n + 1 : ℚ) / 3⌋ : ℤ) + ((-1) ^ n : ℚ) + (2 ^ (n + 1) : ℚ)) / 6

end

end A024493.P7233694080081856527

namespace A024493

/-- `(3*(-1)^floor((n+1)/3)+(-1)^n+2^(n+1))/6` -/
def P7233694080081856527.Spec : Prop :=
  ∀ n, P7233694080081856527.a n = (A024493 n : ℚ)

end A024493

/-! ## A024493.P8147775218291212395

`ogf((1-2x+x^2)/(1-3x+3x^2-2x^3))`
-/

namespace A024493.P8147775218291212395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -3, 3, -2] n

end

end A024493.P8147775218291212395

namespace A024493

/-- `ogf((1-2x+x^2)/(1-3x+3x^2-2x^3))` -/
def P8147775218291212395.Spec : Prop :=
  ∀ n, P8147775218291212395.a n = A024493 n

end A024493

/-! ## A024493.P2856829589213052288

`A111927(n)+1`
-/

namespace A024493.P2856829589213052288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111927 n + 1

end

end A024493.P2856829589213052288

namespace A024493

/-- `A111927(n)+1` -/
def P2856829589213052288.Spec : Prop :=
  ∀ n, P2856829589213052288.a n = A024493 n

end A024493

/-! ## A024493.P9938398879508338202

`A130781(abs(1-n))`
-/

namespace A024493.P9938398879508338202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130781 |1 - (n : ℤ)|.toNat

end

end A024493.P9938398879508338202

namespace A024493

/-- `A130781(abs(1-n))` -/
def P9938398879508338202.Spec : Prop :=
  ∀ n, P9938398879508338202.a n = A024493 n

end A024493

/-! ## A024493.P10477243366842722766

`A138635(3*n+2)`
-/

namespace A024493.P10477243366842722766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138635 (3 * n + 2)

end

end A024493.P10477243366842722766

namespace A024493

/-- `A138635(3*n+2)` -/
def P10477243366842722766.Spec : Prop :=
  ∀ n, P10477243366842722766.a n = A024493 n

end A024493

/-! ## A024493.P1641399142632412955

`A122391(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A024493.P1641399142632412955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A122391 n - a (n - 3)

end

end A024493.P1641399142632412955

namespace A024493

/-- `A122391(n)-a(n-3)` -/
def P1641399142632412955.Spec : Prop :=
  ∀ n, P1641399142632412955.a n = A024493 n

end A024493

/-! ## A024493.P4184937647847798063

`A024495(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A024493.P4184937647847798063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A024495 (n - 1) + a (n - 1)

end

end A024493.P4184937647847798063

namespace A024493

/-- `A024495(n-1)+a(n-1)` -/
def P4184937647847798063.Spec : Prop :=
  ∀ n, P4184937647847798063.a n = A024493 n

end A024493

/-! ## A024493.P11090976841740532469

`a(n-1)+A163810(n)+a(n-1)` with `a(0)=1`
-/

namespace A024493.P11090976841740532469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A163810 n + a (n - 1))

end

end A024493.P11090976841740532469

namespace A024493

/-- `a(n-1)+A163810(n)+a(n-1)` -/
def P11090976841740532469.Spec : Prop :=
  ∀ n, P11090976841740532469.a n = A024493 n

end A024493

/-! ## A024493.P12095836644824084197

`a(n-1)+a(n-1)-A128834(n)` with `a(0)=1`
-/

namespace A024493.P12095836644824084197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) - A128834 n)

end

end A024493.P12095836644824084197

namespace A024493

/-- `a(n-1)+a(n-1)-A128834(n)` -/
def P12095836644824084197.Spec : Prop :=
  ∀ n, P12095836644824084197.a n = A024493 n

end A024493

/-! ## A024493.P8878716454962226367

`a(n-1)+a(n-1)-A163806(n)` with `a(0)=1`
-/

namespace A024493.P8878716454962226367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) - A163806 n)

end

end A024493.P8878716454962226367

namespace A024493

/-- `a(n-1)+a(n-1)-A163806(n)` -/
def P8878716454962226367.Spec : Prop :=
  ∀ n, P8878716454962226367.a n = A024493 n

end A024493

/-! ## A024493.P729642137238191745

`A133684(A047236(n+1))`
-/

namespace A024493.P729642137238191745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A047236 (n + 1)).toNat

end

end A024493.P729642137238191745

namespace A024493

/-- `A133684(A047236(n+1))` -/
def P729642137238191745.Spec : Prop :=
  ∀ n, P729642137238191745.a n = A024493 n

end A024493

/-! ## A024493.P15791200603569985436

`A024495(n)+A010892(n)`
-/

namespace A024493.P15791200603569985436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 n + A010892 n

end

end A024493.P15791200603569985436

namespace A024493

/-- `A024495(n)+A010892(n)` -/
def P15791200603569985436.Spec : Prop :=
  ∀ n, P15791200603569985436.a n = A024493 n

end A024493

/-! ## A024493.P7692021576137538930

`A092220(n)+A078008(n)`
-/

namespace A024493.P7692021576137538930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092220 n + A078008 n

end

end A024493.P7692021576137538930

namespace A024493

/-- `A092220(n)+A078008(n)` -/
def P7692021576137538930.Spec : Prop :=
  ∀ n, P7692021576137538930.a n = A024493 n

end A024493

/-! ## A024493.P5251804812976890350

`A128834(n)+A086953(n)`
-/

namespace A024493.P5251804812976890350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n + A086953 n

end

end A024493.P5251804812976890350

namespace A024493

/-- `A128834(n)+A086953(n)` -/
def P5251804812976890350.Spec : Prop :=
  ∀ n, P5251804812976890350.a n = A024493 n

end A024493

/-! ## A024493.P15723577117911190011

`A132780(n)+A113405(n)`
-/

namespace A024493.P15723577117911190011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132780 n + A113405 n

end

end A024493.P15723577117911190011

namespace A024493

/-- `A132780(n)+A113405(n)` -/
def P15723577117911190011.Spec : Prop :=
  ∀ n, P15723577117911190011.a n = A024493 n

end A024493

/-! ## A024493.P3911404820083011959

`A087628(n)-A087463(n)`
-/

namespace A024493.P3911404820083011959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087628 n - A087463 n

end

end A024493.P3911404820083011959

namespace A024493

/-- `A087628(n)-A087463(n)` -/
def P3911404820083011959.Spec : Prop :=
  ∀ n, P3911404820083011959.a n = A024493 n

end A024493

/-! ## A024493.P7477498433476169306

`A087629(n)-A087464(n)`
-/

namespace A024493.P7477498433476169306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087629 n - A087464 n

end

end A024493.P7477498433476169306

namespace A024493

/-- `A087629(n)-A087464(n)` -/
def P7477498433476169306.Spec : Prop :=
  ∀ n, P7477498433476169306.a n = A024493 n

end A024493

/-! ## A024493.P12085090595790839153

`A131370(n)-A087204(n)`
-/

namespace A024493.P12085090595790839153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131370 n - A087204 n

end

end A024493.P12085090595790839153

namespace A024493

/-- `A131370(n)-A087204(n)` -/
def P12085090595790839153.Spec : Prop :=
  ∀ n, P12085090595790839153.a n = A024493 n

end A024493

/-!
# A024494: a(n) = C(n,1) + C(n,4) + ... + C(n, 3*floor(n/3) + 1).

The programs for A024494, the canonical program `A024494.P18240106325134690937` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024494 has offset 1).

The definition of A024494 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024494.P18240106325134690937

`3*a(n-1)-3*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024494

/-- `3*a(n-1)-3*a(n-2)+2*a(n-3)` -/
def P18240106325134690937.Spec : Prop :=
  ∀ n, P18240106325134690937.a n = A024494 (n + 1)

theorem P18240106325134690937.correct : P18240106325134690937.Spec := by
  intro n
  simp only [A024494, Nat.add_sub_cancel]

end A024494

/-! ## A024494.P15124248378214382868

`ogf((1-x)/(1-3x+3x^2-2x^3))`
-/

namespace A024494.P15124248378214382868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -3, 3, -2] n

end

end A024494.P15124248378214382868

namespace A024494

/-- `ogf((1-x)/(1-3x+3x^2-2x^3))` -/
def P15124248378214382868.Spec : Prop :=
  ∀ n, P15124248378214382868.a n = A024494 (n + 1)

end A024494

/-! ## A024494.P7295939385843043928

`abs(Δ[n²%3-2*a(n-1)])` with `a(0)=0`
-/

namespace A024494.P7295939385843043928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ((n ^ 2 % 3 : ℕ) : ℤ) - 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A024494.P7295939385843043928

namespace A024494

/-- `abs(Δ[n²%3-2*a(n-1)])` -/
def P7295939385843043928.Spec : Prop :=
  ∀ n, P7295939385843043928.a n = A024494 (n + 1)

end A024494

/-! ## A024494.P8464160482587846575

`2^(n-1)+a(n-1)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A024494.P8464160482587846575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (a (n - 1) - a (n - 2))

end

end A024494.P8464160482587846575

namespace A024494

/-- `2^(n-1)+a(n-1)-a(n-2)` -/
def P8464160482587846575.Spec : Prop :=
  ∀ n, P8464160482587846575.a n = (A024494 (n + 1) : ℚ)

end A024494

/-! ## A024494.P12099423036610446882

`∑[A024493(n)]`
-/

namespace A024494.P12099423036610446882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024494.P12099423036610446882

namespace A024494

/-- `∑[A024493(n)]` -/
def P12099423036610446882.Spec : Prop :=
  ∀ n, P12099423036610446882.a n = A024494 (n + 1)

end A024494

/-! ## A024494.P15410352285453249457

`A131708(n+1)`
-/

namespace A024494.P15410352285453249457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131708 (n + 1)

end

end A024494.P15410352285453249457

namespace A024494

/-- `A131708(n+1)` -/
def P15410352285453249457.Spec : Prop :=
  ∀ n, P15410352285453249457.a n = A024494 (n + 1)

end A024494

/-! ## A024494.P5924130897293857356

`abs(Δ[A135258(n)])`
-/

namespace A024494.P5924130897293857356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135258 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A024494.P5924130897293857356

namespace A024494

/-- `abs(Δ[A135258(n)])` -/
def P5924130897293857356.Spec : Prop :=
  ∀ n, P5924130897293857356.a n = A024494 (n + 1)

end A024494

/-! ## A024494.P3118447264717787886

`∑[A111927(n)+1]`
-/

namespace A024494.P3118447264717787886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111927 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024494.P3118447264717787886

namespace A024494

/-- `∑[A111927(n)+1]` -/
def P3118447264717787886.Spec : Prop :=
  ∀ n, P3118447264717787886.a n = A024494 (n + 1)

end A024494

/-! ## A024494.P6022338029026575939

`A133806(2*(n+1))`
-/

namespace A024494.P6022338029026575939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133806 (2 * (n + 1))

end

end A024494.P6022338029026575939

namespace A024494

/-- `A133806(2*(n+1))` -/
def P6022338029026575939.Spec : Prop :=
  ∀ n, P6022338029026575939.a n = A024494 (n + 1)

end A024494

/-! ## A024494.P13098731648966293082

`2^n-A024495(n)`
-/

namespace A024494.P13098731648966293082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A024495 n

end

end A024494.P13098731648966293082

namespace A024494

/-- `2^n-A024495(n)` -/
def P13098731648966293082.Spec : Prop :=
  ∀ n, P13098731648966293082.a n = A024494 (n + 1)

end A024494

/-! ## A024494.P15228973168000962680

`∑[A130781(abs(1-n))]`
-/

namespace A024494.P15228973168000962680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130781 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024494.P15228973168000962680

namespace A024494

/-- `∑[A130781(abs(1-n))]` -/
def P15228973168000962680.Spec : Prop :=
  ∀ n, P15228973168000962680.a n = A024494 (n + 1)

end A024494

/-! ## A024494.P11833497031712341980

`record[A131708(abs(1-n))]`
-/

namespace A024494.P11833497031712341980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131708 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024494.P11833497031712341980

namespace A024494

/-- `record[A131708(abs(1-n))]` -/
def P11833497031712341980.Spec : Prop :=
  ∀ n, P11833497031712341980.a n = A024494 (n + 1)

end A024494

/-! ## A024494.P15914946543214604351

`∑[A130707(n+1)/2]`
-/

namespace A024494.P15914946543214604351
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130707 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024494.P15914946543214604351

namespace A024494

/-- `∑[A130707(n+1)/2]` -/
def P15914946543214604351.Spec : Prop :=
  ∀ n, P15914946543214604351.a n = (A024494 (n + 1) : ℚ)

end A024494

/-! ## A024494.P8688888013027513839

`A138635(3*(n+1)+1)`
-/

namespace A024494.P8688888013027513839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138635 (3 * (n + 1) + 1)

end

end A024494.P8688888013027513839

namespace A024494

/-- `A138635(3*(n+1)+1)` -/
def P8688888013027513839.Spec : Prop :=
  ∀ n, P8688888013027513839.a n = A024494 (n + 1)

end A024494

/-! ## A024494.P7335316491614557476

`A111926(n+1)+1+n`
-/

namespace A024494.P7335316491614557476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111926 (n + 1) + 1 + (n : ℤ)

end

end A024494.P7335316491614557476

namespace A024494

/-- `A111926(n+1)+1+n` -/
def P7335316491614557476.Spec : Prop :=
  ∀ n, P7335316491614557476.a n = A024494 (n + 1)

end A024494

/-! ## A024494.P15029714131684335433

`A141775(n)-a(n-1)` with `a(0)=1`
-/

namespace A024494.P15029714131684335433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A141775 n - a (n - 1)

end

end A024494.P15029714131684335433

namespace A024494

/-- `A141775(n)-a(n-1)` -/
def P15029714131684335433.Spec : Prop :=
  ∀ n, P15029714131684335433.a n = A024494 (n + 1)

end A024494

/-! ## A024494.P3654034335016500599

`∑[abs(A131562(n+1)/2)]`
-/

namespace A024494.P3654034335016500599
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A131562 (n + 1) : ℚ) / 2|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024494.P3654034335016500599

namespace A024494

/-- `∑[abs(A131562(n+1)/2)]` -/
def P3654034335016500599.Spec : Prop :=
  ∀ n, P3654034335016500599.a n = (A024494 (n + 1) : ℚ)

end A024494

/-! ## A024494.P5499655037850001015

`A130781(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A024494.P5499655037850001015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A130781 (n - 1) + a (n - 1)

end

end A024494.P5499655037850001015

namespace A024494

/-- `A130781(n-1)+a(n-1)` -/
def P5499655037850001015.Spec : Prop :=
  ∀ n, P5499655037850001015.a n = A024494 (n + 1)

end A024494

/-! ## A024494.P13103576995075624328

`abs(Δ[and(1, A000045(n))-2*a(n-1)])` with `a(0)=0`
-/

namespace A024494.P13103576995075624328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.land 1 (A000045 n) - 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A024494.P13103576995075624328

namespace A024494

/-- `abs(Δ[and(1, A000045(n))-2*a(n-1)])` -/
def P13103576995075624328.Spec : Prop :=
  ∀ n, P13103576995075624328.a n = A024494 (n + 1)

end A024494

/-! ## A024494.P9720233573046841619

`A133684(A047267(n+2))`
-/

namespace A024494.P9720233573046841619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A047267 (n + 2)).toNat

end

end A024494.P9720233573046841619

namespace A024494

/-- `A133684(A047267(n+2))` -/
def P9720233573046841619.Spec : Prop :=
  ∀ n, P9720233573046841619.a n = A024494 (n + 1)

end A024494

/-!
# A024495: a(n) = C(n,2) + C(n,5) + ... + C(n, 3*floor(n/3)+2).

The programs for A024495, the canonical program `A024495.P585404265063944700` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024495 has offset 0).

The definition of A024495 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024495.P585404265063944700

`3*a(n-1)-3*a(n-2)+2*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024495

/-- `3*a(n-1)-3*a(n-2)+2*a(n-3)` -/
def P585404265063944700.Spec : Prop :=
  ∀ n, P585404265063944700.a n = A024495 n

theorem P585404265063944700.correct : P585404265063944700.Spec := by
  intro n
  simp only [A024495]

end A024495

/-! ## A024495.P12751864427431368945

`a(n-1)+A024494(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A024495.P12751864427431368945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + A024494 (n - 1)

end

end A024495.P12751864427431368945

namespace A024495

/-- `a(n-1)+A024494(n-1)` -/
def P12751864427431368945.Spec : Prop :=
  ∀ n, P12751864427431368945.a n = A024495 n

end A024495

/-! ## A024495.P15603964304522859584

`2*a(n-1)+A010892(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A024495.P15603964304522859584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  2 * a (n - 1) + A010892 (n - 2)

end

end A024495.P15603964304522859584

namespace A024495

/-- `2*a(n-1)+A010892(n-2)` -/
def P15603964304522859584.Spec : Prop :=
  ∀ n, P15603964304522859584.a n = A024495 n

end A024495

/-! ## A024495.P6915574479099199436

`A113405(n)+A113405(n+1)`
-/

namespace A024495.P6915574479099199436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 n + A113405 (n + 1)

end

end A024495.P6915574479099199436

namespace A024495

/-- `A113405(n)+A113405(n+1)` -/
def P6915574479099199436.Spec : Prop :=
  ∀ n, P6915574479099199436.a n = A024495 n

end A024495

/-! ## A024495.P10459715011607649775

`(2^n+2*cos((n-4)*π/3))/3`
-/

namespace A024495.P10459715011607649775
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℝ) + 2 * Real.cos (((n : ℤ) - 4 : ℝ) * Real.pi / 3)) / 3

end

end A024495.P10459715011607649775

namespace A024495

/-- `(2^n+2*cos((n-4)*π/3))/3` -/
def P10459715011607649775.Spec : Prop :=
  ∀ n, P10459715011607649775.a n = (A024495 n : ℝ)

end A024495

/-! ## A024495.P10679708981109462899

`(2^n-A057079(n))/3`
-/

namespace A024495.P10679708981109462899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - A057079 n : ℚ) / 3

end

end A024495.P10679708981109462899

namespace A024495

/-- `(2^n-A057079(n))/3` -/
def P10679708981109462899.Spec : Prop :=
  ∀ n, P10679708981109462899.a n = (A024495 n : ℚ)

end A024495

/-! ## A024495.P8205078230891561801

`ogf(x^2/(1-3x+3x^2-2x^3))`
-/

namespace A024495.P8205078230891561801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -3, 3, -2] n

end

end A024495.P8205078230891561801

namespace A024495

/-- `ogf(x^2/(1-3x+3x^2-2x^3))` -/
def P8205078230891561801.Spec : Prop :=
  ∀ n, P8205078230891561801.a n = A024495 n

end A024495

/-! ## A024495.P16078101327295904128

`A138635(3*n)`
-/

namespace A024495.P16078101327295904128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138635 (3 * n)

end

end A024495.P16078101327295904128

namespace A024495

/-- `A138635(3*n)` -/
def P16078101327295904128.Spec : Prop :=
  ∀ n, P16078101327295904128.a n = A024495 n

end A024495

/-! ## A024495.P7484246693018107240

`A135574(xor(1, n))`
-/

namespace A024495.P7484246693018107240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135574 (Nat.xor 1 n)

end

end A024495.P7484246693018107240

namespace A024495

/-- `A135574(xor(1, n))` -/
def P7484246693018107240.Spec : Prop :=
  ∀ n, P7484246693018107240.a n = A024495 n

end A024495

/-! ## A024495.P17897559057012735574

`A131708(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A024495.P17897559057012735574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A131708 (n - 1) + a (n - 1)

end

end A024495.P17897559057012735574

namespace A024495

/-- `A131708(n-1)+a(n-1)` -/
def P17897559057012735574.Spec : Prop :=
  ∀ n, P17897559057012735574.a n = A024495 n

end A024495

/-! ## A024495.P8822919660265437279

`A135574(A004442(n))`
-/

namespace A024495.P8822919660265437279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135574 (A004442 n).toNat

end

end A024495.P8822919660265437279

namespace A024495

/-- `A135574(A004442(n))` -/
def P8822919660265437279.Spec : Prop :=
  ∀ n, P8822919660265437279.a n = A024495 n

end A024495

/-! ## A024495.P8685463406981591419

`A133684(A047231(n+1))`
-/

namespace A024495.P8685463406981591419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A047231 (n + 1)).toNat

end

end A024495.P8685463406981591419

namespace A024495

/-- `A133684(A047231(n+1))` -/
def P8685463406981591419.Spec : Prop :=
  ∀ n, P8685463406981591419.a n = A024495 n

end A024495

/-! ## A024495.P17677534100529574854

`A290993(n)+A227430(n)`
-/

namespace A024495.P17677534100529574854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290993 n + A227430 n

end

end A024495.P17677534100529574854

namespace A024495

/-- `A290993(n)+A227430(n)` -/
def P17677534100529574854.Spec : Prop :=
  ∀ n, P17677534100529574854.a n = A024495 n

end A024495

/-! ## A024495.P7740483483771430508

`A024493(n)-A010892(n)`
-/

namespace A024495.P7740483483771430508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 n - A010892 n

end

end A024495.P7740483483771430508

namespace A024495

/-- `A024493(n)-A010892(n)` -/
def P7740483483771430508.Spec : Prop :=
  ∀ n, P7740483483771430508.a n = A024495 n

end A024495

/-! ## A024495.P3111992185310497907

`A005578(n)-A088911(n)`
-/

namespace A024495.P3111992185310497907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n - A088911 n

end

end A024495.P3111992185310497907

namespace A024495

/-- `A005578(n)-A088911(n)` -/
def P3111992185310497907.Spec : Prop :=
  ∀ n, P3111992185310497907.a n = A024495 n

end A024495

/-! ## A024495.P2085406624479874267

`A130707(n)-A057079(n)`
-/

namespace A024495.P2085406624479874267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130707 n - A057079 n

end

end A024495.P2085406624479874267

namespace A024495

/-- `A130707(n)-A057079(n)` -/
def P2085406624479874267.Spec : Prop :=
  ∀ n, P2085406624479874267.a n = A024495 n

end A024495

/-! ## A024495.P1800714222417228823

`A131708(n)-A128834(n)`
-/

namespace A024495.P1800714222417228823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131708 n - A128834 n

end

end A024495.P1800714222417228823

namespace A024495

/-- `A131708(n)-A128834(n)` -/
def P1800714222417228823.Spec : Prop :=
  ∀ n, P1800714222417228823.a n = A024495 n

end A024495

/-! ## A024495.P15354721173500947960

`A113405(n)+∑[A131666(n)]`
-/

namespace A024495.P15354721173500947960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024495.P15354721173500947960

namespace A024495

/-- `A113405(n)+∑[A131666(n)]` -/
def P15354721173500947960.Spec : Prop :=
  ∀ n, P15354721173500947960.a n = A024495 n

end A024495

/-! ## A024495.P7140873584049293416

`∑[A011782(n)-A024493(n)]`
-/

namespace A024495.P7140873584049293416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A024493 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024495.P7140873584049293416

namespace A024495

/-- `∑[A011782(n)-A024493(n)]` -/
def P7140873584049293416.Spec : Prop :=
  ∀ n, P7140873584049293416.a n = A024495 n

end A024495

/-! ## A024495.P2623002009507957198

`A133684(A047267(n+2)-2)`
-/

namespace A024495.P2623002009507957198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A047267 (n + 2) - 2).toNat

end

end A024495.P2623002009507957198

namespace A024495

/-- `A133684(A047267(n+2)-2)` -/
def P2623002009507957198.Spec : Prop :=
  ∀ n, P2623002009507957198.a n = A024495 n

end A024495

/-!
# A024496: a(n) = (3/(8n-4))*C(4n,n).

The programs for A024496, the canonical program `A024496.P4506109234194836581` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024496 has offset 1).

The definition of A024496 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024496.P4506109234194836581

`3*C(4*(n+1), n+1)/(8*(n+1)-4)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024496

/-- `3*C(4*(n+1), n+1)/(8*(n+1)-4)` -/
def P4506109234194836581.Spec : Prop :=
  ∀ n, P4506109234194836581.a n = (A024496 (n + 1) : ℚ)

end A024496

/-! ## A024496.P4875091460179901784

`3/(8*(n+1)-4)*C(4*(n+1), n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A024496.P4875091460179901784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / ((8 * (n + 1) : ℤ) - 4 : ℚ) * (Nat.choose (4 * (n + 1)) (n + 1) : ℚ)

end

end A024496.P4875091460179901784

namespace A024496

/-- `3/(8*(n+1)-4)*C(4*(n+1), n+1)` -/
def P4875091460179901784.Spec : Prop :=
  ∀ n, P4875091460179901784.a n = (A024496 (n + 1) : ℚ)

end A024496

/-! ## A024496.P6707209827477088853

`(4*n+3)*A000260(n)`
-/

namespace A024496.P6707209827477088853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 3 : ℤ) * A000260 n

end

end A024496.P6707209827477088853

namespace A024496

/-- `(4*n+3)*A000260(n)` -/
def P6707209827477088853.Spec : Prop :=
  ∀ n, P6707209827477088853.a n = A024496 (n + 1)

end A024496

/-! ## A024496.P13194501169378905368

`A000260(n)*A004767(n)`
-/

namespace A024496.P13194501169378905368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000260 n * A004767 n

end

end A024496.P13194501169378905368

namespace A024496

/-- `A000260(n)*A004767(n)` -/
def P13194501169378905368.Spec : Prop :=
  ∀ n, P13194501169378905368.a n = A024496 (n + 1)

end A024496

/-! ## A024496.P13261650734110471459

`A112385(n+1)+A000260(n)`
-/

namespace A024496.P13261650734110471459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112385 (n + 1) + A000260 n

end

end A024496.P13261650734110471459

namespace A024496

/-- `A112385(n+1)+A000260(n)` -/
def P13261650734110471459.Spec : Prop :=
  ∀ n, P13261650734110471459.a n = A024496 (n + 1)

end A024496

/-! ## A024496.P15472247577001934284

`A006632(n+1)+2*A069271(n)`
-/

namespace A024496.P15472247577001934284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006632 (n + 1) + 2 * A069271 n

end

end A024496.P15472247577001934284

namespace A024496

/-- `A006632(n+1)+2*A069271(n)` -/
def P15472247577001934284.Spec : Prop :=
  ∀ n, P15472247577001934284.a n = A024496 (n + 1)

end A024496

/-! ## A024496.P16409927865546355009

`A000260(n)*A005408(A005408(n))`
-/

namespace A024496.P16409927865546355009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000260 n * A005408 (A005408 n).toNat

end

end A024496.P16409927865546355009

namespace A024496

/-- `A000260(n)*A005408(A005408(n))` -/
def P16409927865546355009.Spec : Prop :=
  ∀ n, P16409927865546355009.a n = A024496 (n + 1)

end A024496

/-! ## A024496.P17674724421265038246

`A006632(n+1)+A006632(n+1)+A000260(n)`
-/

namespace A024496.P17674724421265038246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006632 (n + 1) + (A006632 (n + 1) + A000260 n)

end

end A024496.P17674724421265038246

namespace A024496

/-- `A006632(n+1)+A006632(n+1)+A000260(n)` -/
def P17674724421265038246.Spec : Prop :=
  ∀ n, P17674724421265038246.a n = A024496 (n + 1)

end A024496

/-! ## A024496.P9798505772738483632

`A262977(n+1)/(2*n+1)`
-/

namespace A024496.P9798505772738483632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262977 (n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A024496.P9798505772738483632

namespace A024496

/-- `A262977(n+1)/(2*n+1)` -/
def P9798505772738483632.Spec : Prop :=
  ∀ n, P9798505772738483632.a n = (A024496 (n + 1) : ℚ)

end A024496

/-! ## A024496.P7467831206780452616

`C(4*n+3, n+1)/(2*n+1)`
-/

namespace A024496.P7467831206780452616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n + 3) (n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A024496.P7467831206780452616

namespace A024496

/-- `C(4*n+3, n+1)/(2*n+1)` -/
def P7467831206780452616.Spec : Prop :=
  ∀ n, P7467831206780452616.a n = (A024496 (n + 1) : ℚ)

end A024496

/-!
# A024498: a(n) = [ C(2n,n)/n ].

The programs for A024498, the canonical program `A024498.P11384566954682251111` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024498 has offset 1).

The definition of A024498 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024498.P11384566954682251111

`floor(C(2*(n+1), n+1)/(n+1))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024498

/-- `floor(C(2*(n+1), n+1)/(n+1))` -/
def P11384566954682251111.Spec : Prop :=
  ∀ n, P11384566954682251111.a n = A024498 (n + 1)

theorem P11384566954682251111.correct : P11384566954682251111.Spec := by
  intro n
  simp only [A024498, Nat.add_sub_cancel]

end A024498

/-! ## A024498.P9894849982260242574

`floor(A000108(n+1)/(n+1))+A000108(n+1)`
-/

namespace A024498.P9894849982260242574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000108 (n + 1) : ℚ) / (n + 1 : ℚ)⌋ + A000108 (n + 1)

end

end A024498.P9894849982260242574

namespace A024498

/-- `floor(A000108(n+1)/(n+1))+A000108(n+1)` -/
def P9894849982260242574.Spec : Prop :=
  ∀ n, P9894849982260242574.a n = A024498 (n + 1)

end A024498

/-! ## A024498.P10064108868492175768

`floor(∏[4-2/(n+1)]/(n+1))`
-/

namespace A024498.P10064108868492175768
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∏ j ∈ Finset.range (n + 1), f1 j) / (n + 1 : ℚ)⌋

end

end A024498.P10064108868492175768

namespace A024498

/-- `floor(∏[4-2/(n+1)]/(n+1))` -/
def P10064108868492175768.Spec : Prop :=
  ∀ n, P10064108868492175768.a n = A024498 (n + 1)

end A024498

/-! ## A024498.P11122788450673330125

`A011857(∑[4*n]+2)`
-/

namespace A024498.P11122788450673330125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011857 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A024498.P11122788450673330125

namespace A024498

/-- `A011857(∑[4*n]+2)` -/
def P11122788450673330125.Spec : Prop :=
  ∀ n, P11122788450673330125.a n = A024498 (n + 1)

end A024498

/-! ## A024498.P6001629331468269588

`record[gcd(A008482(n), A011857(n+2))]`
-/

namespace A024498.P6001629331468269588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A011857 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024498.P6001629331468269588

namespace A024498

/-- `record[gcd(A008482(n), A011857(n+2))]` -/
def P6001629331468269588.Spec : Prop :=
  ∀ n, (P6001629331468269588.a n : ℤ) = A024498 (n + 1)

end A024498

/-! ## A024498.P16543823216341899522

`record[A011857(n+2)/A286156(n+1)]`
-/

namespace A024498.P16543823216341899522
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011857 (n + 2) : ℚ) / (A286156 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024498.P16543823216341899522

namespace A024498

/-- `record[A011857(n+2)/A286156(n+1)]` -/
def P16543823216341899522.Spec : Prop :=
  ∀ n, P16543823216341899522.a n = (A024498 (n + 1) : ℚ)

end A024498

/-!
# A024499: a(n) = [ C(2n,n)/(n-1) ].

The programs for A024499, the canonical program `A024499.P13164314190407846716` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024499 has offset 2).

The definition of A024499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024499.P13164314190407846716

`floor(A000984(n+2)/(n+1))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A024499

/-- `floor(A000984(n+2)/(n+1))` -/
def P13164314190407846716.Spec : Prop :=
  ∀ n, P13164314190407846716.a n = A024499 (n + 2)

theorem P13164314190407846716.correct : P13164314190407846716.Spec := by
  intro n
  simp only [A024499, Nat.add_sub_cancel]

end A024499

/-! ## A024499.P980100802590794318

`floor(Δ[A006134(n+1)]/(n+1))`
-/

namespace A024499.P980100802590794318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)⌋

end

end A024499.P980100802590794318

namespace A024499

/-- `floor(Δ[A006134(n+1)]/(n+1))` -/
def P980100802590794318.Spec : Prop :=
  ∀ n, P980100802590794318.a n = A024499 (n + 2)

end A024499

/-! ## A024499.P2417621195257270142

`floor(Δ[A066796(n+1)]/(n+1))`
-/

namespace A024499.P2417621195257270142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)⌋

end

end A024499.P2417621195257270142

namespace A024499

/-- `floor(Δ[A066796(n+1)]/(n+1))` -/
def P2417621195257270142.Spec : Prop :=
  ∀ n, P2417621195257270142.a n = A024499 (n + 2)

end A024499

/-! ## A024499.P10757061990011770305

`floor(2*A001700(n+1)/(n+1))`
-/

namespace A024499.P10757061990011770305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * A001700 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A024499.P10757061990011770305

namespace A024499

/-- `floor(2*A001700(n+1)/(n+1))` -/
def P10757061990011770305.Spec : Prop :=
  ∀ n, P10757061990011770305.a n = A024499 (n + 2)

end A024499

/-! ## A024499.P6917351261372039715

`floor(A001405(2*(n+2))/(n+1))`
-/

namespace A024499.P6917351261372039715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001405 (2 * (n + 2)) : ℚ) / (n + 1 : ℚ)⌋

end

end A024499.P6917351261372039715

namespace A024499

/-- `floor(A001405(2*(n+2))/(n+1))` -/
def P6917351261372039715.Spec : Prop :=
  ∀ n, P6917351261372039715.a n = A024499 (n + 2)

end A024499

/-! ## A024499.P15714091333713178400

`floor((n+3)*A000108(n+2)/(n+1))`
-/

namespace A024499.P15714091333713178400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 3 : ℤ) * A000108 (n + 2) : ℚ) / (n + 1 : ℚ)⌋

end

end A024499.P15714091333713178400

namespace A024499

/-- `floor((n+3)*A000108(n+2)/(n+1))` -/
def P15714091333713178400.Spec : Prop :=
  ∀ n, P15714091333713178400.a n = A024499 (n + 2)

end A024499

/-! ## A024499.P827185101466851580

`floor(A002457(n+1)/∑[n+1])`
-/

namespace A024499.P827185101466851580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002457 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋

end

end A024499.P827185101466851580

namespace A024499

/-- `floor(A002457(n+1)/∑[n+1])` -/
def P827185101466851580.Spec : Prop :=
  ∀ n, P827185101466851580.a n = A024499 (n + 2)

end A024499

/-! ## A024499.P17704273949642262770

`floor(C(2*(n+2), n+2)/(n+1))`
-/

namespace A024499.P17704273949642262770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (2 * (n + 2)) (n + 2) : ℚ) / (n + 1 : ℚ)⌋

end

end A024499.P17704273949642262770

namespace A024499

/-- `floor(C(2*(n+2), n+2)/(n+1))` -/
def P17704273949642262770.Spec : Prop :=
  ∀ n, P17704273949642262770.a n = A024499 (n + 2)

end A024499

/-! ## A024499.P2389882946473940911

`floor(A007318(2*(n+2)*(n+3))/(n+1))`
-/

namespace A024499.P2389882946473940911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007318 (2 * ((n + 2) * (n + 3))) : ℚ) / (n + 1 : ℚ)⌋

end

end A024499.P2389882946473940911

namespace A024499

/-- `floor(A007318(2*(n+2)*(n+3))/(n+1))` -/
def P2389882946473940911.Spec : Prop :=
  ∀ n, P2389882946473940911.a n = A024499 (n + 2)

end A024499

