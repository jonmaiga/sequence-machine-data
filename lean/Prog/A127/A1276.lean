import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
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
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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

/-!
# A127600: Integer part of cube root of product of first n primes.

The programs for A127600, there is no canonical definition to state claims against.
-/

/-! ## A127600.P11953804918700693889

`floor(root(A002110(n+1), 3))`
-/

namespace A127600.P11953804918700693889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002110 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A127600.P11953804918700693889

/-! ## A127600.P13794774553246951817

`floor(root(A007014(n+1), 3))`
-/

namespace A127600.P13794774553246951817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007014 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A127600.P13794774553246951817

/-! ## A127600.P13548000781793878536

`floor(root(A057588(n+1), 3))`
-/

namespace A127600.P13548000781793878536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057588 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A127600.P13548000781793878536

/-! ## A127600.P14556882200859078631

`floor(root(∏[A000040(n+1)], 3))`
-/

namespace A127600.P14556882200859078631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A127600.P14556882200859078631

/-! ## A127600.P4463508835477713052

`floor(root(∏[A001248(n+1)], 6))`
-/

namespace A127600.P4463508835477713052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) ^ (1 / (6 : ℝ))⌋

end

end A127600.P4463508835477713052

/-!
# A127601: Integer part of 4th root of product of first n primes.

The programs for A127601, the canonical program `A127601.P16071854653763161976` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127601 has offset 0).

The definition of A127601 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127601.P16071854653763161976

`floor(∏[root(A008578(n+1), 4)])`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A127601

/-- `floor(∏[root(A008578(n+1), 4)])` -/
def P16071854653763161976.Spec : Prop :=
  ∀ n, P16071854653763161976.a n = A127601 n

theorem P16071854653763161976.correct : P16071854653763161976.Spec := by
  intro n
  simp only [A127601]

end A127601

/-! ## A127601.P14018736234584219361

`floor(sqrt(A060797(n)))`
-/

namespace A127601.P14018736234584219361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A060797 n)

end

end A127601.P14018736234584219361

namespace A127601

/-- `floor(sqrt(A060797(n)))` -/
def P14018736234584219361.Spec : Prop :=
  ∀ n, P14018736234584219361.a n = A127601 n

end A127601

/-! ## A127601.P10599752200130462694

`floor(sqrt(floor(∏[record[sqrt(A014963(n+1))]])))`
-/

namespace A127601.P10599752200130462694
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014963 (n + 1) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A127601.P10599752200130462694

namespace A127601

/-- `floor(sqrt(floor(∏[record[sqrt(A014963(n+1))]])))` -/
def P10599752200130462694.Spec : Prop :=
  ∀ n, P10599752200130462694.a n = A127601 n

end A127601

/-! ## A127601.P11929834623102484315

`floor(root(A002110(n), 4))`
-/

namespace A127601.P11929834623102484315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002110 n : ℝ) ^ (1 / (4 : ℝ))⌋

end

end A127601.P11929834623102484315

namespace A127601

/-- `floor(root(A002110(n), 4))` -/
def P11929834623102484315.Spec : Prop :=
  ∀ n, P11929834623102484315.a n = A127601 n

end A127601

/-! ## A127601.P16924601947382449940

`floor(root(A006862(n), 4))`
-/

namespace A127601.P16924601947382449940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006862 n : ℝ) ^ (1 / (4 : ℝ))⌋

end

end A127601.P16924601947382449940

namespace A127601

/-- `floor(root(A006862(n), 4))` -/
def P16924601947382449940.Spec : Prop :=
  ∀ n, P16924601947382449940.a n = A127601 n

end A127601

/-! ## A127601.P13727704253591100153

`floor(sqrt(sqrt(A038710(n))))`
-/

namespace A127601.P13727704253591100153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A038710 n : ℝ))⌋

end

end A127601.P13727704253591100153

namespace A127601

/-- `floor(sqrt(sqrt(A038710(n))))` -/
def P13727704253591100153.Spec : Prop :=
  ∀ n, P13727704253591100153.a n = A127601 n

end A127601

/-!
# A127602: Integer part of 5th root of product of first n primes.

The programs for A127602, the canonical program `A127602.P2171243829068660252` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127602 has offset 1).

The definition of A127602 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127602.P2171243829068660252

`floor(∏[root(A000040(n+1), 5)])`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A127602

/-- `floor(∏[root(A000040(n+1), 5)])` -/
def P2171243829068660252.Spec : Prop :=
  ∀ n, P2171243829068660252.a n = A127602 (n + 1)

theorem P2171243829068660252.correct : P2171243829068660252.Spec := by
  intro n
  simp only [A127602, Nat.add_sub_cancel]

end A127602

/-! ## A127602.P10551356450303089296

`floor(root(A002110(n+1), 5))`
-/

namespace A127602.P10551356450303089296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002110 (n + 1) : ℝ) ^ (1 / (5 : ℝ))⌋

end

end A127602.P10551356450303089296

namespace A127602

/-- `floor(root(A002110(n+1), 5))` -/
def P10551356450303089296.Spec : Prop :=
  ∀ n, P10551356450303089296.a n = A127602 (n + 1)

end A127602

/-! ## A127602.P10111235102339115377

`floor(root(A007014(n+1), 5))`
-/

namespace A127602.P10111235102339115377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007014 (n + 1) : ℝ) ^ (1 / (5 : ℝ))⌋

end

end A127602.P10111235102339115377

namespace A127602

/-- `floor(root(A007014(n+1), 5))` -/
def P10111235102339115377.Spec : Prop :=
  ∀ n, P10111235102339115377.a n = A127602 (n + 1)

end A127602

/-! ## A127602.P1384849542982476667

`floor(root(A057588(n+1), 5))`
-/

namespace A127602.P1384849542982476667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057588 (n + 1) : ℝ) ^ (1 / (5 : ℝ))⌋

end

end A127602.P1384849542982476667

namespace A127602

/-- `floor(root(A057588(n+1), 5))` -/
def P1384849542982476667.Spec : Prop :=
  ∀ n, P1384849542982476667.a n = A127602 (n + 1)

end A127602

/-! ## A127602.P12742846644002103769

`floor(record[root(A284003(2*n), 5)])`
-/

namespace A127602.P12742846644002103769
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A284003 (2 * n) : ℝ) ^ (1 / (5 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A127602.P12742846644002103769

namespace A127602

/-- `floor(record[root(A284003(2*n), 5)])` -/
def P12742846644002103769.Spec : Prop :=
  ∀ n, P12742846644002103769.a n = A127602 (n + 1)

end A127602

/-!
# A127603: Integer part of 6th root of product of first n primes.

The programs for A127603, the canonical program `A127603.P13681282639560671348` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127603 has offset 1).

The definition of A127603 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127603.P13681282639560671348

`floor(∏[root(A000040(n+1), 6)])`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A127603

/-- `floor(∏[root(A000040(n+1), 6)])` -/
def P13681282639560671348.Spec : Prop :=
  ∀ n, P13681282639560671348.a n = A127603 (n + 1)

theorem P13681282639560671348.correct : P13681282639560671348.Spec := by
  intro n
  simp only [A127603, Nat.add_sub_cancel]

end A127603

/-! ## A127603.P14783457859121314288

`floor(sqrt(A127600(n+1)))`
-/

namespace A127603.P14783457859121314288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A127600 (n + 1))

end

end A127603.P14783457859121314288

namespace A127603

/-- `floor(sqrt(A127600(n+1)))` -/
def P14783457859121314288.Spec : Prop :=
  ∀ n, P14783457859121314288.a n = A127603 (n + 1)

end A127603

/-! ## A127603.P9252878225199179182

`floor(root(A002110(n+1), 6))`
-/

namespace A127603.P9252878225199179182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002110 (n + 1) : ℝ) ^ (1 / (6 : ℝ))⌋

end

end A127603.P9252878225199179182

namespace A127603

/-- `floor(root(A002110(n+1), 6))` -/
def P9252878225199179182.Spec : Prop :=
  ∀ n, P9252878225199179182.a n = A127603 (n + 1)

end A127603

/-! ## A127603.P12333386234020384875

`floor(root(A007014(n+1), 6))`
-/

namespace A127603.P12333386234020384875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007014 (n + 1) : ℝ) ^ (1 / (6 : ℝ))⌋

end

end A127603.P12333386234020384875

namespace A127603

/-- `floor(root(A007014(n+1), 6))` -/
def P12333386234020384875.Spec : Prop :=
  ∀ n, P12333386234020384875.a n = A127603 (n + 1)

end A127603

/-! ## A127603.P11122959956881544144

`floor(root(A057588(n+1), 6))`
-/

namespace A127603.P11122959956881544144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057588 (n + 1) : ℝ) ^ (1 / (6 : ℝ))⌋

end

end A127603.P11122959956881544144

namespace A127603

/-- `floor(root(A057588(n+1), 6))` -/
def P11122959956881544144.Spec : Prop :=
  ∀ n, P11122959956881544144.a n = A127603 (n + 1)

end A127603

/-!
# A127604: Integer part of 7th root of product of first n primes.

The programs for A127604, there is no canonical definition to state claims against.
-/

/-! ## A127604.P3794065251299366762

`floor(root(A002110(n+1), 7))`
-/

namespace A127604.P3794065251299366762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002110 (n + 1) : ℝ) ^ (1 / (7 : ℝ))⌋

end

end A127604.P3794065251299366762

/-! ## A127604.P14515548121132411918

`floor(root(A007014(n+1), 7))`
-/

namespace A127604.P14515548121132411918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007014 (n + 1) : ℝ) ^ (1 / (7 : ℝ))⌋

end

end A127604.P14515548121132411918

/-! ## A127604.P15793228836796827597

`floor(root(A057588(n+1), 7))`
-/

namespace A127604.P15793228836796827597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057588 (n + 1) : ℝ) ^ (1 / (7 : ℝ))⌋

end

end A127604.P15793228836796827597

/-! ## A127604.P3987959775052675507

`floor(root(∏[A000040(n+1)], 7))`
-/

namespace A127604.P3987959775052675507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) ^ (1 / (7 : ℝ))⌋

end

end A127604.P3987959775052675507

/-! ## A127604.P2036896168199003790

`A028310(ceil(root(A007014(n+1), 7))-1)`
-/

namespace A127604.P2036896168199003790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (⌈(A007014 (n + 1) : ℝ) ^ (1 / (7 : ℝ))⌉ - 1).toNat

end

end A127604.P2036896168199003790

/-!
# A127605: a(n) = 2^(2*n*n) * Product_{i=1..n} Product_{j=1..n} (sin(i*Pi/(2*n+1))^2 + sin(j*Pi/(2*n+1))^2).

The programs for A127605, there is no canonical definition to state claims against.
-/

/-! ## A127605.P13368418820713815798

`A340475(∑[4*n])`
-/

namespace A127605.P13368418820713815798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340475 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127605.P13368418820713815798

/-!
# A127606: a(n) = 2^(2*n*n) * Product_{1<=i,j<=n} (cos(i*Pi/(2*n+1))^2 + sin(j*Pi/(2*n+1))^2).

The programs for A127606, there is no canonical definition to state claims against.
-/

/-! ## A127606.P16008287699227196974

`4^n*A340293(n)`
-/

namespace A127606.P16008287699227196974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A340293 n

end

end A127606.P16008287699227196974

/-! ## A127606.P15018674995940174300

`A007726(2*n+1)/A340185(n)`
-/

namespace A127606.P15018674995940174300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007726 (2 * n + 1) : ℚ) / (A340185 n : ℚ)

end

end A127606.P15018674995940174300

/-! ## A127606.P2289685737698209400

`sqrt(A340563(2*n+1))`
-/

namespace A127606.P2289685737698209400
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A340563 (2 * n + 1) : ℝ)

end

end A127606.P2289685737698209400

/-!
# A127607: Sequence arising from the factorization of F(n)= A083099(n) and L(n)= A127226(n).

The programs for A127607, there is no canonical definition to state claims against.
-/

/-! ## A127607.P4712008598089549446

`A093010(xor(3, A212968(n)))`
-/

namespace A127607.P4712008598089549446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093010 (Int.xor 3 (A212968 n)).toNat

end

end A127607.P4712008598089549446

/-!
# A127608: Sequence arising from the factorization of F(n) = A083102(n-1) and L(n) = A127261. F(0) = 0, F(1) = 1, F(n) = 2*F(n-1)+10*F(n-2), L(0) = 2, L(1) = 2, L(n) = 2*L(n-1)+10*L(n-2).

The programs for A127608, there is no canonical definition to state claims against.
-/

/-! ## A127608.P18095721513616299581

`A153890(A000070(n))%A000040(A157894(2*(n+2)))`
-/

namespace A127608.P18095721513616299581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153890 (A000070 n).toNat) (A000040 (A157894 (2 * (n + 2))).toNat)

end

end A127608.P18095721513616299581

/-!
# A127609: Sequence arising from the factorization of F(n)= A091914(n-1) and L(n)= A127262. F(0)=0, F(1)=1, F(n)=2*F(n-1)+12*F(n-2), L(0)=2, L(1)=2, L(n)=2*L(n-1)+12*L(n-2).

The programs for A127609, there is no canonical definition to state claims against.
-/

/-! ## A127609.P10586771599783266004

`A084907(A299515(n+1))-n`
-/

namespace A127609.P10586771599783266004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084907 (A299515 (n + 1)).toNat - (n : ℤ)

end

end A127609.P10586771599783266004

/-!
# A127610: a(n) = floor(( (n+1)/2 )^n) - n!.

The programs for A127610, the canonical program `A127610.P3084742073908812031` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127610 has offset 0).

The definition of A127610 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(((n+1)/2)^n)-n!` (program `A127610.P3084742073908812031`, by `A127610.P3084742073908812031.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127610.P3084742073908812031

`floor(((n+1)/2)^n)-n!`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A127610

/-- `floor(((n+1)/2)^n)-n!` -/
def P3084742073908812031.Spec : Prop :=
  ∀ n, P3084742073908812031.a n = A127610 n

theorem P3084742073908812031.correct : P3084742073908812031.Spec := by
  intro n
  simp only [A127610]

end A127610

/-! ## A127610.P10654565286321171277

`floor(((n+1)/2)^n)-A000142(n)`
-/

namespace A127610.P10654565286321171277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℚ) / 2) ^ n⌋ - A000142 n

end

end A127610.P10654565286321171277

namespace A127610

/-- `floor(((n+1)/2)^n)-A000142(n)` -/
def P10654565286321171277.Spec : Prop :=
  ∀ n, P10654565286321171277.a n = A127610 n

end A127610

/-!
# A127611: a(n) = numerator of the continued fraction which has the positive divisors of n as its terms.

The programs for A127611, there is no canonical definition to state claims against.
-/

/-! ## A127611.P17547785539298245748

`or(A055225(n+1), A235044(A185544(n)))`
-/

namespace A127611.P17547785539298245748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055225 (n + 1)) (A235044 (A185544 n).toNat)

end

end A127611.P17547785539298245748

/-!
# A127616: a(n) = denominator of the continued fraction which has the positive integers which are <= n and are coprime to n as its terms. The terms are written in order from n-1 for the integer part, to 1 for the final term of the continued fraction.

The programs for A127616, there is no canonical definition to state claims against.
-/

/-! ## A127616.P8564405810528955901

`∑{digits}[((2*n)^C(n+1, 5))², #]`
-/

namespace A127616.P8564405810528955901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ Nat.choose (n + 1) 5) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A127616.P8564405810528955901

/-! ## A127616.P14218574281205597831

`A112500(∑{d}[∑[∑{p}[n, #]], #])`
-/

namespace A127616.P14218574281205597831
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112500 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A127616.P14218574281205597831

/-! ## A127616.P5951522918763876721

`A301282(a(n-1)+n)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A127616.P5951522918763876721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  A301282 (a (n - 1) + (n : ℤ)).toNat

end

end A127616.P5951522918763876721

/-!
# A127617: Number of walks from (0,0) to (n,n) in the region 0 <= x-y <= 3 with the steps (1,0), (0, 1), (2,0) and (0,2).

The programs for A127617, the canonical program `A127617.P7292866576557898215` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127617 has offset 0).

The definition of A127617 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127617.P7292866576557898215

`3*a(n-1)+5*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=22`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A127617

/-- `3*a(n-1)+5*a(n-2)+2*a(n-3)-a(n-4)` -/
def P7292866576557898215.Spec : Prop :=
  ∀ n, P7292866576557898215.a n = A127617 n

theorem P7292866576557898215.correct : P7292866576557898215.Spec := by
  intro n
  simp only [A127617]

end A127617

/-!
# A127618: Number of walks from (0,0) to (n,n) in the region 0 <= x-y <= 4 with the steps (1,0), (0, 1), (2,0) and (0,2).

The programs for A127618, there is no canonical definition to state claims against.
-/

/-! ## A127618.P1582361305992635521

`A001318(A112632(6^n))`
-/

namespace A127618.P1582361305992635521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (A112632 (6 ^ n)).toNat

end

end A127618.P1582361305992635521

/-! ## A127618.P6443506528728790131

`A008615(n*A026671(n))+1`
-/

namespace A127618.P6443506528728790131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 ((n : ℤ) * A026671 n).toNat + 1

end

end A127618.P6443506528728790131

/-!
# A127621: Numbers which do not occur in A056127.

The programs for A127621, there is no canonical definition to state claims against.
-/

/-! ## A127621.P12271599925260613408

`eq[round(cos(4)^n), char[A056127(n+1)]]`
-/

namespace A127621.P12271599925260613408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (4 : ℝ) ^ n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056127 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A127621.P12271599925260613408

/-! ## A127621.P4644824676121589372

`eq[char[A056127(n)], A000007(n)]`
-/

namespace A127621.P4644824676121589372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056127 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A127621.P4644824676121589372

/-! ## A127621.P979776856726476087

`eq[char[A056127(n)], A000038(n)]`
-/

namespace A127621.P979776856726476087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056127 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A127621.P979776856726476087

/-! ## A127621.P15197539266227577087

`eq[char[A056127(n)], A020761(n)]`
-/

namespace A127621.P15197539266227577087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056127 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020761 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A127621.P15197539266227577087

/-! ## A127621.P7720991145783708629

`eq[char[A056127(n)], A151933(n)]`
-/

namespace A127621.P7720991145783708629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056127 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A127621.P7720991145783708629

/-!
# A127624: An 11th-order Fibonacci sequence: a(n) = a(n-1) + ... + a(n-11).

The programs for A127624, there is no canonical definition to state claims against.
-/

/-! ## A127624.P741286071618050692

`xor(A163551(n+3), A163575(A163551(n+3)))`
-/

namespace A127624.P741286071618050692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A163551 (n + 3)) (A163575 (A163551 (n + 3)).toNat)

end

end A127624.P741286071618050692

/-! ## A127624.P1108280362676905731

`A123849(A326469(n)+2)`
-/

namespace A127624.P1108280362676905731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123849 (A326469 n + 2).toNat

end

end A127624.P1108280362676905731

/-! ## A127624.P16812915051802011104

`A123849(A108797(n+1)+1)`
-/

namespace A127624.P16812915051802011104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123849 (A108797 (n + 1) + 1).toNat

end

end A127624.P16812915051802011104

/-! ## A127624.P875981665472597276

`A123849(ceil((A055389(n+2)+1)/(n+1)²))`
-/

namespace A127624.P875981665472597276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123849 ⌈(A055389 (n + 2) + 1 : ℚ) / ((n + 1) ^ 2 : ℚ)⌉.toNat

end

end A127624.P875981665472597276

/-! ## A127624.P14820011266240707310

`A151568(A255380(n))%A111238(n+1)`
-/

namespace A127624.P14820011266240707310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151568 (A255380 n).toNat) (A111238 (n + 1))

end

end A127624.P14820011266240707310

/-!
# A127625: Triangle T(n,k) = binomial(n-1,k-1)*A001511(k), 1<=k<=n, read by rows.

The programs for A127625, the canonical program `A127625.P480324930033306885` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127625 has offset 1).

The definition of A127625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127625.P480324930033306885

`A007318(n)*A225743(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A127625

/-- `A007318(n)*A225743(n+1)` -/
def P480324930033306885.Spec : Prop :=
  ∀ n, P480324930033306885.a n = A127625 (n + 1)

theorem P480324930033306885.correct : P480324930033306885.Spec := by
  intro n
  simp only [A127625, Nat.add_sub_cancel]

end A127625

/-! ## A127625.P3879850289777800224

`abs(A108086(n)*A225743(n+1))`
-/

namespace A127625.P3879850289777800224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n * A225743 (n + 1)|

end

end A127625.P3879850289777800224

namespace A127625

/-- `abs(A108086(n)*A225743(n+1))` -/
def P3879850289777800224.Spec : Prop :=
  ∀ n, P3879850289777800224.a n = A127625 (n + 1)

end A127625

/-! ## A127625.P1671856966742429908

`abs(A130595(n)*A225743(n+1))`
-/

namespace A127625.P1671856966742429908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n * A225743 (n + 1)|

end

end A127625.P1671856966742429908

namespace A127625

/-- `abs(A130595(n)*A225743(n+1))` -/
def P1671856966742429908.Spec : Prop :=
  ∀ n, P1671856966742429908.a n = A127625 (n + 1)

end A127625

/-! ## A127625.P1023343324871101064

`Δ[A102363(n)]*A225743(n+1)`
-/

namespace A127625.P1023343324871101064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A225743 (n + 1)

end

end A127625.P1023343324871101064

namespace A127625

/-- `Δ[A102363(n)]*A225743(n+1)` -/
def P1023343324871101064.Spec : Prop :=
  ∀ n, P1023343324871101064.a n = A127625 (n + 1)

end A127625

/-! ## A127625.P927892344354810501

`(A014473(n)+1)*A225743(n+1)`
-/

namespace A127625.P927892344354810501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A225743 (n + 1)

end

end A127625.P927892344354810501

namespace A127625

/-- `(A014473(n)+1)*A225743(n+1)` -/
def P927892344354810501.Spec : Prop :=
  ∀ n, P927892344354810501.a n = A127625 (n + 1)

end A127625

/-! ## A127625.P16283450960446498829

`A001511(A002260(n+1))*A007318(n)`
-/

namespace A127625.P16283450960446498829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A002260 (n + 1)).toNat * A007318 n

end

end A127625.P16283450960446498829

namespace A127625

/-- `A001511(A002260(n+1))*A007318(n)` -/
def P16283450960446498829.Spec : Prop :=
  ∀ n, P16283450960446498829.a n = A127625 (n + 1)

end A127625

/-!
# A127626: Triangle T(n,k) = A018804(k) if k|n, else T(n,k)=0.

The programs for A127626, the canonical program `A127626.P10622249536812093687` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127626 has offset 1).

The definition of A127626 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127626.P10622249536812093687

`∑{d}[A127093(n+1), A029935(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A127626

/-- `∑{d}[A127093(n+1), A029935(#)]` -/
def P10622249536812093687.Spec : Prop :=
  ∀ n, P10622249536812093687.a n = A127626 (n + 1)

theorem P10622249536812093687.correct : P10622249536812093687.Spec := by
  intro n
  simp only [A127626, Nat.add_sub_cancel]

end A127626

/-! ## A127626.P4490645475599289039

`A018804(A002260(n+1))*A051731(n+1)`
-/

namespace A127626.P4490645475599289039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (A002260 (n + 1)).toNat * A051731 (n + 1)

end

end A127626.P4490645475599289039

namespace A127626

/-- `A018804(A002260(n+1))*A051731(n+1)` -/
def P4490645475599289039.Spec : Prop :=
  ∀ n, P4490645475599289039.a n = A127626 (n + 1)

end A127626

/-! ## A127626.P11059493968544931450

`A018804(A002262(n)+1)*A051731(n+1)`
-/

namespace A127626.P11059493968544931450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (A002262 n + 1).toNat * A051731 (n + 1)

end

end A127626.P11059493968544931450

namespace A127626

/-- `A018804(A002262(n)+1)*A051731(n+1)` -/
def P11059493968544931450.Spec : Prop :=
  ∀ n, P11059493968544931450.a n = A127626 (n + 1)

end A127626

/-! ## A127626.P9004055650027326236

`A018804(A050873(n+1))*A051731(n+1)`
-/

namespace A127626.P9004055650027326236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (A050873 (n + 1)).toNat * A051731 (n + 1)

end

end A127626.P9004055650027326236

namespace A127626

/-- `A018804(A050873(n+1))*A051731(n+1)` -/
def P9004055650027326236.Spec : Prop :=
  ∀ n, P9004055650027326236.a n = A127626 (n + 1)

end A127626

/-! ## A127626.P14175340410821832283

`A018804(A123275(n+1))*A051731(n+1)`
-/

namespace A127626.P14175340410821832283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (A123275 (n + 1)).toNat * A051731 (n + 1)

end

end A127626.P14175340410821832283

namespace A127626

/-- `A018804(A123275(n+1))*A051731(n+1)` -/
def P14175340410821832283.Spec : Prop :=
  ∀ n, P14175340410821832283.a n = A127626 (n + 1)

end A127626

/-! ## A127626.P10323956566384694687

`A018804(A112544(n+1))*A051731(n+1)`
-/

namespace A127626.P10323956566384694687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (A112544 (n + 1)).toNat * A051731 (n + 1)

end

end A127626.P10323956566384694687

namespace A127626

/-- `A018804(A112544(n+1))*A051731(n+1)` -/
def P10323956566384694687.Spec : Prop :=
  ∀ n, P10323956566384694687.a n = A127626 (n + 1)

end A127626

/-!
# A127627: Triangle T(n,k) = A054525(n,k)*A018804(k), read by rows 1<=k<=n.

The programs for A127627, the canonical program `A127627.P12845971405644131649` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127627 has offset 1).

The definition of A127627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127627.P12845971405644131649

`A054525(n+1)*A127626(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A127627

/-- `A054525(n+1)*A127626(n+1)` -/
def P12845971405644131649.Spec : Prop :=
  ∀ n, P12845971405644131649.a n = A127627 (n + 1)

theorem P12845971405644131649.correct : P12845971405644131649.Spec := by
  intro n
  simp only [A127627, Nat.add_sub_cancel]

end A127627

/-! ## A127627.P14366429035831087147

`A018804(A002260(n+1))*A054525(n+1)`
-/

namespace A127627.P14366429035831087147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (A002260 (n + 1)).toNat * A054525 (n + 1)

end

end A127627.P14366429035831087147

namespace A127627

/-- `A018804(A002260(n+1))*A054525(n+1)` -/
def P14366429035831087147.Spec : Prop :=
  ∀ n, P14366429035831087147.a n = A127627 (n + 1)

end A127627

/-! ## A127627.P1536059205501085115

`A018804(A050873(n+1))*A054525(n+1)`
-/

namespace A127627.P1536059205501085115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (A050873 (n + 1)).toNat * A054525 (n + 1)

end

end A127627.P1536059205501085115

namespace A127627

/-- `A018804(A050873(n+1))*A054525(n+1)` -/
def P1536059205501085115.Spec : Prop :=
  ∀ n, P1536059205501085115.a n = A127627 (n + 1)

end A127627

/-! ## A127627.P3087072706360629525

`A008683(A010766(n+1))*A127626(n+1)`
-/

namespace A127627.P3087072706360629525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A010766 (n + 1)).toNat * A127626 (n + 1)

end

end A127627.P3087072706360629525

namespace A127627

/-- `A008683(A010766(n+1))*A127626(n+1)` -/
def P3087072706360629525.Spec : Prop :=
  ∀ n, P3087072706360629525.a n = A127627 (n + 1)

end A127627

/-! ## A127627.P3038574103330661602

`A008683(A049834(n+1))*A127626(n+1)`
-/

namespace A127627.P3038574103330661602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A049834 (n + 1)).toNat * A127626 (n + 1)

end

end A127627.P3038574103330661602

namespace A127627

/-- `A008683(A049834(n+1))*A127626(n+1)` -/
def P3038574103330661602.Spec : Prop :=
  ∀ n, P3038574103330661602.a n = A127627 (n + 1)

end A127627

/-! ## A127627.P980123430765025252

`A008683(A051537(n+1))*A127626(n+1)`
-/

namespace A127627.P980123430765025252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A051537 (n + 1)).toNat * A127626 (n + 1)

end

end A127627.P980123430765025252

namespace A127627

/-- `A008683(A051537(n+1))*A127626(n+1)` -/
def P980123430765025252.Spec : Prop :=
  ∀ n, P980123430765025252.a n = A127627 (n + 1)

end A127627

/-! ## A127627.P18242555483334013601

`A008683(A054531(n+1))*A127626(n+1)`
-/

namespace A127627.P18242555483334013601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A054531 (n + 1)).toNat * A127626 (n + 1)

end

end A127627.P18242555483334013601

namespace A127627

/-- `A008683(A054531(n+1))*A127626(n+1)` -/
def P18242555483334013601.Spec : Prop :=
  ∀ n, P18242555483334013601.a n = A127627 (n + 1)

end A127627

/-! ## A127627.P6867373592066355667

`∑{d}[A050873(n+1), A029935(#)*A054525(n+1)]`
-/

namespace A127627.P6867373592066355667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A029935 d * A054525 (n + 1)

end

end A127627.P6867373592066355667

namespace A127627

/-- `∑{d}[A050873(n+1), A029935(#)*A054525(n+1)]` -/
def P6867373592066355667.Spec : Prop :=
  ∀ n, P6867373592066355667.a n = A127627 (n + 1)

end A127627

/-!
# A127628: G.f. 1/(1-6*x*c(x)) where c(x) is the g.f. of A000108.

The programs for A127628, the canonical program `A127628.P631754407712890539` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127628 has offset 0).

The definition of A127628 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127628.P631754407712890539

`(36*a(n-1)-6*A000108(n-1))/5` with `a(0)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A127628

/-- `(36*a(n-1)-6*A000108(n-1))/5` -/
def P631754407712890539.Spec : Prop :=
  ∀ n, P631754407712890539.a n = (A127628 n : ℚ)

end A127628

/-! ## A127628.P12961795775362235232

`A067347(eq[6, A002262(n)])`
-/

namespace A127628.P12961795775362235232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067347 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A127628.P12961795775362235232

namespace A127628

/-- `A067347(eq[6, A002262(n)])` -/
def P12961795775362235232.Spec : Prop :=
  ∀ n, P12961795775362235232.a n = A127628 n

end A127628

/-! ## A127628.P8329793714378623526

`A067347(eq[7, A002260(n+1)])`
-/

namespace A127628.P8329793714378623526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067347 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A127628.P8329793714378623526

namespace A127628

/-- `A067347(eq[7, A002260(n+1)])` -/
def P8329793714378623526.Spec : Prop :=
  ∀ n, P8329793714378623526.a n = A127628 n

end A127628

/-! ## A127628.P376063196017052623

`A156195(2*n)/5^n`
-/

namespace A127628.P376063196017052623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156195 (2 * n) : ℚ) / (5 ^ n : ℚ)

end

end A127628.P376063196017052623

namespace A127628

/-- `A156195(2*n)/5^n` -/
def P376063196017052623.Spec : Prop :=
  ∀ n, P376063196017052623.a n = (A127628 n : ℚ)

end A127628

/-!
# A127630: Expansion of (1+x-x^2-x^3)/(1+x^2)^2.

The programs for A127630, the canonical program `A127630.P2679817217641277183` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127630 has offset 0).

The definition of A127630 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127630.P2679817217641277183

`(-1)^C(n, 2)*(2*floor(n/2)+1)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A127630

/-- `(-1)^C(n, 2)*(2*floor(n/2)+1)` -/
def P2679817217641277183.Spec : Prop :=
  ∀ n, P2679817217641277183.a n = A127630 n

theorem P2679817217641277183.correct : P2679817217641277183.Spec := by
  intro n
  simp only [A127630]

end A127630

/-! ## A127630.P15388349710094274538

`xor(n, 1-n%4)`
-/

namespace A127630.P15388349710094274538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (1 - ((n % 4 : ℕ) : ℤ))

end

end A127630.P15388349710094274538

namespace A127630

/-- `xor(n, 1-n%4)` -/
def P15388349710094274538.Spec : Prop :=
  ∀ n, P15388349710094274538.a n = A127630 n

end A127630

/-! ## A127630.P5851265367628474745

`xor(n, 1-and(3, n))`
-/

namespace A127630.P5851265367628474745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (1 - (Nat.land 3 n : ℤ))

end

end A127630.P5851265367628474745

namespace A127630

/-- `xor(n, 1-and(3, n))` -/
def P5851265367628474745.Spec : Prop :=
  ∀ n, P5851265367628474745.a n = A127630 n

end A127630

/-! ## A127630.P4591133404849316598

`xor(n, -n%4+1)`
-/

namespace A127630.P4591133404849316598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.tmod (-(n : ℤ)) 4 + 1)

end

end A127630.P4591133404849316598

namespace A127630

/-- `xor(n, -n%4+1)` -/
def P4591133404849316598.Spec : Prop :=
  ∀ n, P4591133404849316598.a n = A127630 n

end A127630

/-! ## A127630.P15962776172011759834

`or(1, xor(n, -and(2, n)))`
-/

namespace A127630.P15962776172011759834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (Int.xor (n : ℤ) (-(Nat.land 2 n : ℤ)))

end

end A127630.P15962776172011759834

namespace A127630

/-- `or(1, xor(n, -and(2, n)))` -/
def P15962776172011759834.Spec : Prop :=
  ∀ n, P15962776172011759834.a n = A127630 n

end A127630

/-! ## A127630.P7265319162185797968

`(1-and(2, n))*or(1, n)`
-/

namespace A127630.P7265319162185797968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * (Nat.lor 1 n : ℤ)

end

end A127630.P7265319162185797968

namespace A127630

/-- `(1-and(2, n))*or(1, n)` -/
def P7265319162185797968.Spec : Prop :=
  ∀ n, P7265319162185797968.a n = A127630 n

end A127630

/-! ## A127630.P2743394431515294062

`or(1, n)/(1-and(2, n))`
-/

namespace A127630.P2743394431515294062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℚ) / (1 - (Nat.land 2 n : ℤ) : ℚ)

end

end A127630.P2743394431515294062

namespace A127630

/-- `or(1, n)/(1-and(2, n))` -/
def P2743394431515294062.Spec : Prop :=
  ∀ n, P2743394431515294062.a n = (A127630 n : ℚ)

end A127630

/-! ## A127630.P12845939689529727970

`xor(n, or(3, n)-(n+2))`
-/

namespace A127630.P12845939689529727970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((Nat.lor 3 n : ℤ) - (n + 2 : ℤ))

end

end A127630.P12845939689529727970

namespace A127630

/-- `xor(n, or(3, n)-(n+2))` -/
def P12845939689529727970.Spec : Prop :=
  ∀ n, P12845939689529727970.a n = A127630 n

end A127630

/-! ## A127630.P2036576563992630930

`-xor(n, or(3, n-2)-n)`
-/

namespace A127630.P2036576563992630930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (Int.lor 3 ((n : ℤ) - 2) - (n : ℤ))

end

end A127630.P2036576563992630930

namespace A127630

/-- `-xor(n, or(3, n-2)-n)` -/
def P2036576563992630930.Spec : Prop :=
  ∀ n, P2036576563992630930.a n = A127630 n

end A127630

/-! ## A127630.P17648369438532153813

`(∑[(-1)^(n+1)]-n)*(-1)^∑[n+1]`
-/

namespace A127630.P17648369438532153813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)) * (-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A127630.P17648369438532153813

namespace A127630

/-- `(∑[(-1)^(n+1)]-n)*(-1)^∑[n+1]` -/
def P17648369438532153813.Spec : Prop :=
  ∀ n, P17648369438532153813.a n = A127630 n

end A127630

/-! ## A127630.P6346613970703749758

`1-(a(n-2)+(a(n-2)+2)%4)` with `a(0)=1, a(1)=1`
-/

namespace A127630.P6346613970703749758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - (a (n - 2) + Int.tmod (a (n - 2) + 2) 4)

end

end A127630.P6346613970703749758

namespace A127630

/-- `1-(a(n-2)+(a(n-2)+2)%4)` -/
def P6346613970703749758.Spec : Prop :=
  ∀ n, P6346613970703749758.a n = A127630 n

end A127630

/-! ## A127630.P17160257733546552732

`1-(3*a(n-2))%4-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A127630.P17160257733546552732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - Int.tmod (3 * a (n - 2)) 4 - a (n - 2)

end

end A127630.P17160257733546552732

namespace A127630

/-- `1-(3*a(n-2))%4-a(n-2)` -/
def P17160257733546552732.Spec : Prop :=
  ∀ n, P17160257733546552732.a n = A127630 n

end A127630

/-! ## A127630.P17525151105341100449

`1-3/a(n-2)%4-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A127630.P17525151105341100449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - 3 / (Int.tmod (SequenceMachineLib.roundAway (a (n - 2))) 4 : ℚ) - a (n - 2)

end

end A127630.P17525151105341100449

namespace A127630

/-- `1-3/a(n-2)%4-a(n-2)` -/
def P17525151105341100449.Spec : Prop :=
  ∀ n, P17525151105341100449.a n = (A127630 n : ℚ)

end A127630

/-! ## A127630.P9495003189905914102

`Δ[A009531(n)]`
-/

namespace A127630.P9495003189905914102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127630.P9495003189905914102

namespace A127630

/-- `Δ[A009531(n)]` -/
def P9495003189905914102.Spec : Prop :=
  ∀ n, P9495003189905914102.a n = A127630 n

end A127630

/-! ## A127630.P1297774748741617128

`A009001(or(1, n))`
-/

namespace A127630.P1297774748741617128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (Nat.lor 1 n)

end

end A127630.P1297774748741617128

namespace A127630

/-- `A009001(or(1, n))` -/
def P1297774748741617128.Spec : Prop :=
  ∀ n, P1297774748741617128.a n = A127630 n

end A127630

/-! ## A127630.P8295800305921870372

`A119972(or(1, n))`
-/

namespace A127630.P8295800305921870372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119972 (Nat.lor 1 n)

end

end A127630.P8295800305921870372

namespace A127630

/-- `A119972(or(1, n))` -/
def P8295800305921870372.Spec : Prop :=
  ∀ n, P8295800305921870372.a n = A127630 n

end A127630

/-! ## A127630.P15127276288283373002

`A374157(or(1, n))`
-/

namespace A127630.P15127276288283373002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374157 (Nat.lor 1 n)

end

end A127630.P15127276288283373002

namespace A127630

/-- `A374157(or(1, n))` -/
def P15127276288283373002.Spec : Prop :=
  ∀ n, P15127276288283373002.a n = A127630 n

end A127630

/-! ## A127630.P4122383357512945141

`1-4*A242601(n)`
-/

namespace A127630.P4122383357512945141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 4 * A242601 n

end

end A127630.P4122383357512945141

namespace A127630

/-- `1-4*A242601(n)` -/
def P4122383357512945141.Spec : Prop :=
  ∀ n, P4122383357512945141.a n = A127630 n

end A127630

/-! ## A127630.P14095971589024916276

`xor(n, 1-A010873(n))`
-/

namespace A127630.P14095971589024916276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (1 - A010873 n)

end

end A127630.P14095971589024916276

namespace A127630

/-- `xor(n, 1-A010873(n))` -/
def P14095971589024916276.Spec : Prop :=
  ∀ n, P14095971589024916276.a n = A127630 n

end A127630

/-!
# A127631: Square of Riordan array (1, x*c(x)) where c(x) is the g.f. of A000108.

The programs for A127631, there is no canonical definition to state claims against.
-/

/-! ## A127631.P7332867722067107903

`A089867(A122538(n))`
-/

namespace A127631.P7332867722067107903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A122538 n).toNat

end

end A127631.P7332867722067107903

/-! ## A127631.P12926753706016922907

`A347520(A205813(n))`
-/

namespace A127631.P12926753706016922907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (A205813 n).toNat

end

end A127631.P12926753706016922907

/-! ## A127631.P6583032347036391978

`xor(A122538(n), A185037(A133713(n+3)))`
-/

namespace A127631.P6583032347036391978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A122538 n) (A185037 (A133713 (n + 3)).toNat)

end

end A127631.P6583032347036391978

/-! ## A127631.P8431506743983634417

`A122538(n)-A055641(A263776(3*n+1))`
-/

namespace A127631.P8431506743983634417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122538 n - A055641 (A263776 (3 * n + 1)).toNat

end

end A127631.P8431506743983634417

/-! ## A127631.P9528515551499095135

`A122538(n)-A102683(A006054(n))`
-/

namespace A127631.P9528515551499095135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122538 n - A102683 (A006054 n).toNat

end

end A127631.P9528515551499095135

/-!
# A127632: Expansion of c(x*c(x)), where c(x) is the g.f. for A000108.

The programs for A127632, there is no canonical definition to state claims against.
-/

/-! ## A127632.P12981806610652547048

`A344056(n)/A344057(n)`
-/

namespace A127632.P12981806610652547048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344056 n : ℚ) / (A344057 n : ℚ)

end

end A127632.P12981806610652547048

/-! ## A127632.P17114837505548133488

`A344056(n)/(n!²*A111284(n+1))`
-/

namespace A127632.P17114837505548133488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344056 n : ℚ) / ((Nat.factorial n ^ 2 : ℤ) * A111284 (n + 1) : ℚ)

end

end A127632.P17114837505548133488

/-! ## A127632.P1132310186922305626

`A344056(n)/floor((2*n)!/A000108(abs(1-n)))`
-/

namespace A127632.P1132310186922305626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344056 n : ℚ) / (⌊(Nat.factorial (2 * n) : ℚ) / (A000108 |1 - (n : ℤ)|.toNat : ℚ)⌋ : ℚ)

end

end A127632.P1132310186922305626

/-! ## A127632.P3529791401866429595

`A344056(n)/floor(A004277(n)!/A120588(n))`
-/

namespace A127632.P3529791401866429595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344056 n : ℚ) / (⌊(Nat.factorial (A004277 n).toNat : ℚ) / (A120588 n : ℚ)⌋ : ℚ)

end

end A127632.P3529791401866429595

/-! ## A127632.P4107254689970278698

`A344056(n)/floor(A000142(2*n)/A120588(n))`
-/

namespace A127632.P4107254689970278698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344056 n : ℚ) / (⌊(A000142 (2 * n) : ℚ) / (A120588 n : ℚ)⌋ : ℚ)

end

end A127632.P4107254689970278698

/-!
# A127633: Pure numbers in the Collatz (3x+1) iteration that are not multiples of 3.

The programs for A127633, there is no canonical definition to state claims against.
-/

/-! ## A127633.P11186059139231905455

`∩[3*n+1, A061641(n+2)]`
-/

namespace A127633.P11186059139231905455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127633.P11186059139231905455

/-! ## A127633.P9861456504363852186

`filter[A177729(n+1), A187074(#)]`
-/

namespace A127633.P9861456504363852186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A127633.P9861456504363852186

/-! ## A127633.P9630866728117054329

`filter[A061641(n+1), A354354(#)]`
-/

namespace A127633.P9630866728117054329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A127633.P9630866728117054329

/-! ## A127633.P17863112437011587158

`filter[A177729(n+1), A354354(#)]`
-/

namespace A127633.P17863112437011587158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A127633.P17863112437011587158

/-! ## A127633.P9997243843633349890

`filter[A177729(n+1), A373155(#)]`
-/

namespace A127633.P9997243843633349890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A127633.P9997243843633349890

/-! ## A127633.P5312363276629668721

`filter[A177729(n+1), A374043(#)]`
-/

namespace A127633.P5312363276629668721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374043 (f1 j).toNat = 1) n)

end

end A127633.P5312363276629668721

/-! ## A127633.P9112193552645584375

`filter[A061641(n+2), A187074(#)]`
-/

namespace A127633.P9112193552645584375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A127633.P9112193552645584375

/-! ## A127633.P14543806195644515503

`filter[A061641(n+2), A373155(#)]`
-/

namespace A127633.P14543806195644515503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A127633.P14543806195644515503

/-! ## A127633.P9187714714943879070

`filter[A061641(n+2), A374043(#)]`
-/

namespace A127633.P9187714714943879070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374043 (f1 j).toNat = 1) n)

end

end A127633.P9187714714943879070

/-! ## A127633.P11337630558882280554

`∩[A061641(n+1), A016777(n)]`
-/

namespace A127633.P11337630558882280554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127633.P11337630558882280554

/-! ## A127633.P6434606042698511

`∩[A061641(n+1), A016921(n)]`
-/

namespace A127633.P6434606042698511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127633.P6434606042698511

/-! ## A127633.P16246615926056933237

`∩[A177729(n+1), A016777(n)]`
-/

namespace A127633.P16246615926056933237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127633.P16246615926056933237

/-! ## A127633.P16513436307818018595

`∩[A177729(n+1), A016921(n)]`
-/

namespace A127633.P16513436307818018595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127633.P16513436307818018595

/-! ## A127633.P14855707683124585174

`∩[A061641(n+1), A084089(n+1)]`
-/

namespace A127633.P14855707683124585174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127633.P14855707683124585174

/-! ## A127633.P10669836501797889641

`∩[A007310(n+1), A177729(n+1)]`
-/

namespace A127633.P10669836501797889641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127633.P10669836501797889641

/-! ## A127633.P8153496777929241887

`∩[A084089(n+1), A177729(n+1)]`
-/

namespace A127633.P8153496777929241887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127633.P8153496777929241887

/-! ## A127633.P9660222134809851068

`∩[A061641(n+1), A259749(n+1)]`
-/

namespace A127633.P9660222134809851068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127633.P9660222134809851068

/-! ## A127633.P5402124951206576216

`∩[A061641(n+1), A301451(n+1)]`
-/

namespace A127633.P5402124951206576216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127633.P5402124951206576216

/-! ## A127633.P16790377345738909076

`∩[A061641(n+1), A374044(n+1)]`
-/

namespace A127633.P16790377345738909076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127633.P16790377345738909076

/-! ## A127633.P14688492460054989355

`∩[A177729(n+1), A301451(n+1)]`
-/

namespace A127633.P14688492460054989355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127633.P14688492460054989355

/-!
# A127634: a(n) = 3^(n-1) - ceiling(n^n/n!).

The programs for A127634, the canonical program `A127634.P3209552782504327846` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127634 has offset 1).

The definition of A127634 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n-ceil((n+1)^(n+1)/(n+1)!)` (program `A127634.P3209552782504327846`, by `A127634.P3209552782504327846.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127634.P3209552782504327846

`3^n-ceil((n+1)^(n+1)/(n+1)!)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A127634

/-- `3^n-ceil((n+1)^(n+1)/(n+1)!)` -/
def P3209552782504327846.Spec : Prop :=
  ∀ n, P3209552782504327846.a n = A127634 (n + 1)

theorem P3209552782504327846.correct : P3209552782504327846.Spec := by
  intro n
  simp only [A127634, Nat.add_sub_cancel]

end A127634

/-! ## A127634.P1797055203429195271

`3^n-A073225(n+1)`
-/

namespace A127634.P1797055203429195271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A073225 (n + 1)

end

end A127634.P1797055203429195271

namespace A127634

/-- `3^n-A073225(n+1)` -/
def P1797055203429195271.Spec : Prop :=
  ∀ n, P1797055203429195271.a n = A127634 (n + 1)

end A127634

/-! ## A127634.P7047875659763267339

`Δ[A003462(n)-∑[A073225(n)]]`
-/

namespace A127634.P7047875659763267339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127634.P7047875659763267339

namespace A127634

/-- `Δ[A003462(n)-∑[A073225(n)]]` -/
def P7047875659763267339.Spec : Prop :=
  ∀ n, P7047875659763267339.a n = A127634 (n + 1)

end A127634

/-! ## A127634.P8442978242602415377

`floor(3^n-A000169(n+1)/A000142(n))`
-/

namespace A127634.P8442978242602415377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 ^ n : ℚ) - (A000169 (n + 1) : ℚ) / (A000142 n : ℚ)⌋

end

end A127634.P8442978242602415377

namespace A127634

/-- `floor(3^n-A000169(n+1)/A000142(n))` -/
def P8442978242602415377.Spec : Prop :=
  ∀ n, P8442978242602415377.a n = A127634 (n + 1)

end A127634

/-!
# A127635: Hankel transform of A047098.

The programs for A127635, there is no canonical definition to state claims against.
-/

/-! ## A127635.P2606607170155236359

`A000079(n)*A051255(n+1)`
-/

namespace A127635.P2606607170155236359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A051255 (n + 1)

end

end A127635.P2606607170155236359

/-! ## A127635.P11975165497191753537

`Δ[A000051(n)]*A051255(n+1)`
-/

namespace A127635.P11975165497191753537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A051255 (n + 1)

end

end A127635.P11975165497191753537

/-! ## A127635.P9189884513366229822

`record[A059268(n)]*A051255(n+1)`
-/

namespace A127635.P9189884513366229822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A051255 (n + 1)

end

end A127635.P9189884513366229822

/-! ## A127635.P2789726239154213187

`A005157(2*n+1)/A000079(n+1)`
-/

namespace A127635.P2789726239154213187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005157 (2 * n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A127635.P2789726239154213187

/-! ## A127635.P10761896245909537164

`record[A006519(n+1)]*A051255(n+1)`
-/

namespace A127635.P10761896245909537164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A051255 (n + 1)

end

end A127635.P10761896245909537164

/-!
# A127636: Hankel transform of C(3n,n), A005809.

The programs for A127636, there is no canonical definition to state claims against.
-/

/-! ## A127636.P17617413321054016459

`3^n*A051255(n+1)`
-/

namespace A127636.P17617413321054016459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A051255 (n + 1)

end

end A127636.P17617413321054016459

/-! ## A127636.P7375882381969230574

`A051255(n+1)*A348994(A000079(n))`
-/

namespace A127636.P7375882381969230574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051255 (n + 1) * A348994 (A000079 n).toNat

end

end A127636.P7375882381969230574

/-!
# A127637: Smallest squarefree triangular number with exactly n prime factors.

The programs for A127637, there is no canonical definition to state claims against.
-/

/-! ## A127637.P12752855856074545167

`∩[A085076(n+1), A287483(n)]`
-/

namespace A127637.P12752855856074545167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287483 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127637.P12752855856074545167

/-!
# A127638: A054525 * A127640, where A127640 = infinite lower triangular matrix with the sequence of primes in the main diagonal and the rest zeros.

The programs for A127638, the canonical program `A127638.P2313957262884529139` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127638 has offset 1).

The definition of A127638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127638.P2313957262884529139

`A037126(n+1)*A054525(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A127638

/-- `A037126(n+1)*A054525(n+1)` -/
def P2313957262884529139.Spec : Prop :=
  ∀ n, P2313957262884529139.a n = A127638 (n + 1)

theorem P2313957262884529139.correct : P2313957262884529139.Spec := by
  intro n
  simp only [A127638, Nat.add_sub_cancel]

end A127638

/-! ## A127638.P12771178963963532189

`A054525(n+1)*A127639(n+1)`
-/

namespace A127638.P12771178963963532189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A127639 (n + 1)

end

end A127638.P12771178963963532189

namespace A127638

/-- `A054525(n+1)*A127639(n+1)` -/
def P12771178963963532189.Spec : Prop :=
  ∀ n, P12771178963963532189.a n = A127638 (n + 1)

end A127638

/-! ## A127638.P3641476428748043349

`A000040(1-C(∑[char[∑[n]]], 2)+n)*A054525(n+1)`
-/

namespace A127638.P3641476428748043349
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat * A054525 (n + 1)

end

end A127638.P3641476428748043349

namespace A127638

/-- `A000040(1-C(∑[char[∑[n]]], 2)+n)*A054525(n+1)` -/
def P3641476428748043349.Spec : Prop :=
  ∀ n, P3641476428748043349.a n = A127638 (n + 1)

end A127638

/-! ## A127638.P12909188215447443495

`A000040(A002260(n+1))*A054525(n+1)`
-/

namespace A127638.P12909188215447443495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002260 (n + 1)).toNat * A054525 (n + 1)

end

end A127638.P12909188215447443495

namespace A127638

/-- `A000040(A002260(n+1))*A054525(n+1)` -/
def P12909188215447443495.Spec : Prop :=
  ∀ n, P12909188215447443495.a n = A127638 (n + 1)

end A127638

/-! ## A127638.P18275770338847852478

`A000040(A002262(n)+1)*A054525(n+1)`
-/

namespace A127638.P18275770338847852478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002262 n + 1).toNat * A054525 (n + 1)

end

end A127638.P18275770338847852478

namespace A127638

/-- `A000040(A002262(n)+1)*A054525(n+1)` -/
def P18275770338847852478.Spec : Prop :=
  ∀ n, P18275770338847852478.a n = A127638 (n + 1)

end A127638

/-! ## A127638.P10810953774908467780

`A000040(A050873(n+1))*A054525(n+1)`
-/

namespace A127638.P10810953774908467780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A050873 (n + 1)).toNat * A054525 (n + 1)

end

end A127638.P10810953774908467780

namespace A127638

/-- `A000040(A050873(n+1))*A054525(n+1)` -/
def P10810953774908467780.Spec : Prop :=
  ∀ n, P10810953774908467780.a n = A127638 (n + 1)

end A127638

/-! ## A127638.P13089816880567945364

`A000040(A123275(n+1))*A054525(n+1)`
-/

namespace A127638.P13089816880567945364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A123275 (n + 1)).toNat * A054525 (n + 1)

end

end A127638.P13089816880567945364

namespace A127638

/-- `A000040(A123275(n+1))*A054525(n+1)` -/
def P13089816880567945364.Spec : Prop :=
  ∀ n, P13089816880567945364.a n = A127638 (n + 1)

end A127638

/-! ## A127638.P15302078625820971204

`A000040(A307662(n+1))*A054525(n+1)`
-/

namespace A127638.P15302078625820971204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A307662 (n + 1)).toNat * A054525 (n + 1)

end

end A127638.P15302078625820971204

namespace A127638

/-- `A000040(A307662(n+1))*A054525(n+1)` -/
def P15302078625820971204.Spec : Prop :=
  ∀ n, P15302078625820971204.a n = A127638 (n + 1)

end A127638

/-! ## A127638.P5937857930962138831

`p?[A037125(n+1)]*A054525(n+1)`
-/

namespace A127638.P5937857930962138831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A054525 (n + 1)

end

end A127638.P5937857930962138831

namespace A127638

/-- `p?[A037125(n+1)]*A054525(n+1)` -/
def P5937857930962138831.Spec : Prop :=
  ∀ n, P5937857930962138831.a n = A127638 (n + 1)

end A127638

/-! ## A127638.P7501536148495528308

`A020639(A083221(n+2))*A054525(n+1)`
-/

namespace A127638.P7501536148495528308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A083221 (n + 2)).toNat * A054525 (n + 1)

end

end A127638.P7501536148495528308

namespace A127638

/-- `A020639(A083221(n+2))*A054525(n+1)` -/
def P7501536148495528308.Spec : Prop :=
  ∀ n, P7501536148495528308.a n = A127638 (n + 1)

end A127638

/-! ## A127638.P5621737987616507577

`A000040(A112544(n+1))*A054525(n+1)`
-/

namespace A127638.P5621737987616507577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A112544 (n + 1)).toNat * A054525 (n + 1)

end

end A127638.P5621737987616507577

namespace A127638

/-- `A000040(A112544(n+1))*A054525(n+1)` -/
def P5621737987616507577.Spec : Prop :=
  ∀ n, P5621737987616507577.a n = A127638 (n + 1)

end A127638

/-! ## A127638.P11015171201118037194

`A054525(n+1)*A094290(A059268(n))`
-/

namespace A127638.P11015171201118037194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A094290 (A059268 n).toNat

end

end A127638.P11015171201118037194

namespace A127638

/-- `A054525(n+1)*A094290(A059268(n))` -/
def P11015171201118037194.Spec : Prop :=
  ∀ n, P11015171201118037194.a n = A127638 (n + 1)

end A127638

/-! ## A127638.P13859088839324479790

`A020639(A246278(n+2))*A054525(n+1)`
-/

namespace A127638.P13859088839324479790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A246278 (n + 2)).toNat * A054525 (n + 1)

end

end A127638.P13859088839324479790

namespace A127638

/-- `A020639(A246278(n+2))*A054525(n+1)` -/
def P13859088839324479790.Spec : Prop :=
  ∀ n, P13859088839324479790.a n = A127638 (n + 1)

end A127638

/-!
# A127639: A051731 * A127640, where A127640 = infinite lower triangular matrix with the sequence of primes in the main diagonal and the rest zeros.

The programs for A127639, the canonical program `A127639.P17637051659487995059` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127639 has offset 1).

The definition of A127639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127639.P17637051659487995059

`A182986(A127093(n+1)+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A127639

/-- `A182986(A127093(n+1)+1)` -/
def P17637051659487995059.Spec : Prop :=
  ∀ n, P17637051659487995059.a n = A127639 (n + 1)

theorem P17637051659487995059.correct : P17637051659487995059.Spec := by
  intro n
  simp only [A127639, Nat.add_sub_cancel]

end A127639

/-! ## A127639.P4756879924531780746

`A182986(A176079(n+1)+2)`
-/

namespace A127639.P4756879924531780746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A176079 (n + 1) + 2).toNat

end

end A127639.P4756879924531780746

namespace A127639

/-- `A182986(A176079(n+1)+2)` -/
def P4756879924531780746.Spec : Prop :=
  ∀ n, P4756879924531780746.a n = A127639 (n + 1)

end A127639

/-! ## A127639.P1719491117239847111

`A154279(2*A127093(n+1))`
-/

namespace A127639.P1719491117239847111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154279 (2 * A127093 (n + 1)).toNat

end

end A127639.P1719491117239847111

namespace A127639

/-- `A154279(2*A127093(n+1))` -/
def P1719491117239847111.Spec : Prop :=
  ∀ n, P1719491117239847111.a n = A127639 (n + 1)

end A127639

/-! ## A127639.P15711616653257414351

`∑{d}[A127093(n+1), A007444(#)]`
-/

namespace A127639.P15711616653257414351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A127639.P15711616653257414351

namespace A127639

/-- `∑{d}[A127093(n+1), A007444(#)]` -/
def P15711616653257414351.Spec : Prop :=
  ∀ n, P15711616653257414351.a n = A127639 (n + 1)

end A127639

/-! ## A127639.P9697065881120094104

`A037126(n+1)*A051731(n+1)`
-/

namespace A127639.P9697065881120094104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1) * A051731 (n + 1)

end

end A127639.P9697065881120094104

namespace A127639

/-- `A037126(n+1)*A051731(n+1)` -/
def P9697065881120094104.Spec : Prop :=
  ∀ n, P9697065881120094104.a n = A127639 (n + 1)

end A127639

/-! ## A127639.P16091947425874340376

`char[eq[0, A048158(n+1)]]*A037126(n+1)`
-/

namespace A127639.P16091947425874340376
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A037126 (n + 1)

end

end A127639.P16091947425874340376

namespace A127639

/-- `char[eq[0, A048158(n+1)]]*A037126(n+1)` -/
def P16091947425874340376.Spec : Prop :=
  ∀ n, P16091947425874340376.a n = A127639 (n + 1)

end A127639

/-! ## A127639.P1437849959909711296

`A000040(1-C(∑[char[∑[n]]], 2)+n)*A051731(n+1)`
-/

namespace A127639.P1437849959909711296
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat * A051731 (n + 1)

end

end A127639.P1437849959909711296

namespace A127639

/-- `A000040(1-C(∑[char[∑[n]]], 2)+n)*A051731(n+1)` -/
def P1437849959909711296.Spec : Prop :=
  ∀ n, P1437849959909711296.a n = A127639 (n + 1)

end A127639

/-! ## A127639.P1277192022505485864

`A000040(A002260(n+1))*A051731(n+1)`
-/

namespace A127639.P1277192022505485864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002260 (n + 1)).toNat * A051731 (n + 1)

end

end A127639.P1277192022505485864

namespace A127639

/-- `A000040(A002260(n+1))*A051731(n+1)` -/
def P1277192022505485864.Spec : Prop :=
  ∀ n, P1277192022505485864.a n = A127639 (n + 1)

end A127639

/-! ## A127639.P16510860037284511489

`A000040(A002262(n)+1)*A051731(n+1)`
-/

namespace A127639.P16510860037284511489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002262 n + 1).toNat * A051731 (n + 1)

end

end A127639.P16510860037284511489

namespace A127639

/-- `A000040(A002262(n)+1)*A051731(n+1)` -/
def P16510860037284511489.Spec : Prop :=
  ∀ n, P16510860037284511489.a n = A127639 (n + 1)

end A127639

/-! ## A127639.P4575273741773540394

`A000040(A050873(n+1))*A051731(n+1)`
-/

namespace A127639.P4575273741773540394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A050873 (n + 1)).toNat * A051731 (n + 1)

end

end A127639.P4575273741773540394

namespace A127639

/-- `A000040(A050873(n+1))*A051731(n+1)` -/
def P4575273741773540394.Spec : Prop :=
  ∀ n, P4575273741773540394.a n = A127639 (n + 1)

end A127639

/-! ## A127639.P7385178721081323201

`A008578(A127093(n+1)+1)*A051731(n+1)`
-/

namespace A127639.P7385178721081323201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A127093 (n + 1) + 1).toNat * A051731 (n + 1)

end

end A127639.P7385178721081323201

namespace A127639

/-- `A008578(A127093(n+1)+1)*A051731(n+1)` -/
def P7385178721081323201.Spec : Prop :=
  ∀ n, P7385178721081323201.a n = A127639 (n + 1)

end A127639

/-! ## A127639.P15570460598008922551

`floor(acot(A007318(n+1)%A007318(n)))*A037126(n+1)`
-/

namespace A127639.P15570460598008922551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (Int.tmod (A007318 (n + 1)) (A007318 n) : ℝ)⌋ * A037126 (n + 1)

end

end A127639.P15570460598008922551

namespace A127639

/-- `floor(acot(A007318(n+1)%A007318(n)))*A037126(n+1)` -/
def P15570460598008922551.Spec : Prop :=
  ∀ n, P15570460598008922551.a n = A127639 (n + 1)

end A127639

/-! ## A127639.P8673867836570942028

`A000040(A002260(n+1))%A003215(A129234(n+1))`
-/

namespace A127639.P8673867836570942028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A002260 (n + 1)).toNat) (A003215 (A129234 (n + 1)).toNat)

end

end A127639.P8673867836570942028

namespace A127639

/-- `A000040(A002260(n+1))%A003215(A129234(n+1))` -/
def P8673867836570942028.Spec : Prop :=
  ∀ n, P8673867836570942028.a n = A127639 (n + 1)

end A127639

/-! ## A127639.P14600289258381810750

`A051731(n+1)*A087112(n+1)/A006530(A087112(n+1))`
-/

namespace A127639.P14600289258381810750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051731 (n + 1) * A087112 (n + 1) : ℚ) / (A006530 (A087112 (n + 1)).toNat : ℚ)

end

end A127639.P14600289258381810750

namespace A127639

/-- `A051731(n+1)*A087112(n+1)/A006530(A087112(n+1))` -/
def P14600289258381810750.Spec : Prop :=
  ∀ n, P14600289258381810750.a n = (A127639 (n + 1) : ℚ)

end A127639

/-! ## A127639.P8039713331743586149

`A000040(A112544(n+1))*A051731(n+1)`
-/

namespace A127639.P8039713331743586149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A112544 (n + 1)).toNat * A051731 (n + 1)

end

end A127639.P8039713331743586149

namespace A127639

/-- `A000040(A112544(n+1))*A051731(n+1)` -/
def P8039713331743586149.Spec : Prop :=
  ∀ n, P8039713331743586149.a n = A127639 (n + 1)

end A127639

/-! ## A127639.P15492578859195798750

`∑{e}[A000079(A127093(n+1)), A000040(#)]`
-/

namespace A127639.P15492578859195798750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A127093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A127639.P15492578859195798750

namespace A127639

/-- `∑{e}[A000079(A127093(n+1)), A000040(#)]` -/
def P15492578859195798750.Spec : Prop :=
  ∀ n, P15492578859195798750.a n = A127639 (n + 1)

end A127639

/-! ## A127639.P1574699588003566536

`A019565(A059268(n))*A051731(n+1)`
-/

namespace A127639.P1574699588003566536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A059268 n).toNat * A051731 (n + 1)

end

end A127639.P1574699588003566536

namespace A127639

/-- `A019565(A059268(n))*A051731(n+1)` -/
def P1574699588003566536.Spec : Prop :=
  ∀ n, P1574699588003566536.a n = A127639 (n + 1)

end A127639

/-! ## A127639.P13216452906299256104

`A302054(A130888(n+1))`
-/

namespace A127639.P13216452906299256104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302054 (A130888 (n + 1)).toNat

end

end A127639.P13216452906299256104

namespace A127639

/-- `A302054(A130888(n+1))` -/
def P13216452906299256104.Spec : Prop :=
  ∀ n, P13216452906299256104.a n = A127639 (n + 1)

end A127639

/-!
# A127640: Triangle read by rows in which row n contains n-1 0's followed by prime(n).

The programs for A127640, the canonical program `A127640.P1363589885829058691` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127640 has offset 1).

The definition of A127640 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127640.P6465019901787411401

`char[∑[n-1]]*A036262(n)`
-/

namespace A127640.P6465019901787411401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A036262 n

end

end A127640.P6465019901787411401

namespace A127640

/-- `char[∑[n-1]]*A036262(n)` -/
def P6465019901787411401.Spec : Prop :=
  ∀ n, P6465019901787411401.a n = A127640 (n + 1)

end A127640

/-! ## A127640.P3400404911446629644

`char[∑[n-1]]*A051599(n)`
-/

namespace A127640.P3400404911446629644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A051599 n

end

end A127640.P3400404911446629644

namespace A127640

/-- `char[∑[n-1]]*A051599(n)` -/
def P3400404911446629644.Spec : Prop :=
  ∀ n, P3400404911446629644.a n = A127640 (n + 1)

end A127640

/-! ## A127640.P5634067539766058632

`Δ[A014284(round(sqrt(2*(n+1))))]`
-/

namespace A127640.P5634067539766058632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127640.P5634067539766058632

namespace A127640

/-- `Δ[A014284(round(sqrt(2*(n+1))))]` -/
def P5634067539766058632.Spec : Prop :=
  ∀ n, P5634067539766058632.a n = A127640 (n + 1)

end A127640

/-! ## A127640.P16497399766318029601

`Δ[A036439(round(sqrt(2*(n+1))))]`
-/

namespace A127640.P16497399766318029601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127640.P16497399766318029601

namespace A127640

/-- `Δ[A036439(round(sqrt(2*(n+1))))]` -/
def P16497399766318029601.Spec : Prop :=
  ∀ n, P16497399766318029601.a n = A127640 (n + 1)

end A127640

/-! ## A127640.P6129186091361982313

`char[∑[n-1]]*A005145(n+1)`
-/

namespace A127640.P6129186091361982313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A005145 (n + 1)

end

end A127640.P6129186091361982313

namespace A127640

/-- `char[∑[n-1]]*A005145(n+1)` -/
def P6129186091361982313.Spec : Prop :=
  ∀ n, P6129186091361982313.a n = A127640 (n + 1)

end A127640

/-! ## A127640.P7469055174893031826

`char[∑[n-1]]*A037126(n+1)`
-/

namespace A127640.P7469055174893031826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A037126 (n + 1)

end

end A127640.P7469055174893031826

namespace A127640

/-- `char[∑[n-1]]*A037126(n+1)` -/
def P7469055174893031826.Spec : Prop :=
  ∀ n, P7469055174893031826.a n = A127640 (n + 1)

end A127640

/-! ## A127640.P5722880335069024570

`A000040(∑[char[∑[n]]])*char[∑[n-1]]`
-/

namespace A127640.P5722880335069024570
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j) * ((if ∃ j, f4 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A127640.P5722880335069024570

namespace A127640

/-- `A000040(∑[char[∑[n]]])*char[∑[n-1]]` -/
def P5722880335069024570.Spec : Prop :=
  ∀ n, P5722880335069024570.a n = A127640 (n + 1)

end A127640

/-! ## A127640.P5890313427776292456

`Δ[A007504(A003056(n))]`
-/

namespace A127640.P5890313427776292456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127640.P5890313427776292456

namespace A127640

/-- `Δ[A007504(A003056(n))]` -/
def P5890313427776292456.Spec : Prop :=
  ∀ n, P5890313427776292456.a n = A127640 (n + 1)

end A127640

/-! ## A127640.P1363589885829058691

`A005145(n+1)*A023531(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A127640

/-- `A005145(n+1)*A023531(n)` -/
def P1363589885829058691.Spec : Prop :=
  ∀ n, P1363589885829058691.a n = A127640 (n + 1)

theorem P1363589885829058691.correct : P1363589885829058691.Spec := by
  intro n
  simp only [A127640, Nat.add_sub_cancel]

end A127640

/-! ## A127640.P458729086721681498

`A023531(n)*A079950(n+1)`
-/

namespace A127640.P458729086721681498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A079950 (n + 1)

end

end A127640.P458729086721681498

namespace A127640

/-- `A023531(n)*A079950(n+1)` -/
def P458729086721681498.Spec : Prop :=
  ∀ n, P458729086721681498.a n = A127640 (n + 1)

end A127640

/-! ## A127640.P6017402788052726326

`A023531(n)*A127638(n+1)`
-/

namespace A127640.P6017402788052726326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A127638 (n + 1)

end

end A127640.P6017402788052726326

namespace A127640

/-- `A023531(n)*A127638(n+1)` -/
def P6017402788052726326.Spec : Prop :=
  ∀ n, P6017402788052726326.a n = A127640 (n + 1)

end A127640

/-! ## A127640.P1373603943157938649

`A023531(n)*A127639(n+1)`
-/

namespace A127640.P1373603943157938649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A127639 (n + 1)

end

end A127640.P1373603943157938649

namespace A127640

/-- `A023531(n)*A127639(n+1)` -/
def P1373603943157938649.Spec : Prop :=
  ∀ n, P1373603943157938649.a n = A127640 (n + 1)

end A127640

/-! ## A127640.P1639898028379108297

`A023531(n)*A127641(n+1)`
-/

namespace A127640.P1639898028379108297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A127641 (n + 1)

end

end A127640.P1639898028379108297

namespace A127640

/-- `A023531(n)*A127641(n+1)` -/
def P1639898028379108297.Spec : Prop :=
  ∀ n, P1639898028379108297.a n = A127640 (n + 1)

end A127640

/-! ## A127640.P17706999560793707272

`A026729(n)*A127638(n+1)`
-/

namespace A127640.P17706999560793707272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A127638 (n + 1)

end

end A127640.P17706999560793707272

namespace A127640

/-- `A026729(n)*A127638(n+1)` -/
def P17706999560793707272.Spec : Prop :=
  ∀ n, P17706999560793707272.a n = A127640 (n + 1)

end A127640

/-! ## A127640.P10981868436961144581

`A026729(n)*A127639(n+1)`
-/

namespace A127640.P10981868436961144581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A127639 (n + 1)

end

end A127640.P10981868436961144581

namespace A127640

/-- `A026729(n)*A127639(n+1)` -/
def P10981868436961144581.Spec : Prop :=
  ∀ n, P10981868436961144581.a n = A127640 (n + 1)

end A127640

/-! ## A127640.P2751093493860005494

`A026729(n)*A127641(n+1)`
-/

namespace A127640.P2751093493860005494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A127641 (n + 1)

end

end A127640.P2751093493860005494

namespace A127640

/-- `A026729(n)*A127641(n+1)` -/
def P2751093493860005494.Spec : Prop :=
  ∀ n, P2751093493860005494.a n = A127640 (n + 1)

end A127640

/-! ## A127640.P2222274134299517947

`A023531(n)*A143121(n+1)`
-/

namespace A127640.P2222274134299517947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A143121 (n + 1)

end

end A127640.P2222274134299517947

namespace A127640

/-- `A023531(n)*A143121(n+1)` -/
def P2222274134299517947.Spec : Prop :=
  ∀ n, P2222274134299517947.a n = A127640 (n + 1)

end A127640

/-! ## A127640.P1076024921508288269

`A023531(n)*A162620(n+1)`
-/

namespace A127640.P1076024921508288269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A162620 (n + 1)

end

end A127640.P1076024921508288269

namespace A127640

/-- `A023531(n)*A162620(n+1)` -/
def P1076024921508288269.Spec : Prop :=
  ∀ n, P1076024921508288269.a n = A127640 (n + 1)

end A127640

/-! ## A127640.P13702125341368071781

`A098158(n)*A127641(n+1)`
-/

namespace A127640.P13702125341368071781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 n * A127641 (n + 1)

end

end A127640.P13702125341368071781

namespace A127640

/-- `A098158(n)*A127641(n+1)` -/
def P13702125341368071781.Spec : Prop :=
  ∀ n, P13702125341368071781.a n = A127640 (n + 1)

end A127640

/-! ## A127640.P13446346254346753943

`A103633(n)*A127641(n+1)`
-/

namespace A127640.P13446346254346753943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103633 n * A127641 (n + 1)

end

end A127640.P13446346254346753943

namespace A127640

/-- `A103633(n)*A127641(n+1)` -/
def P13446346254346753943.Spec : Prop :=
  ∀ n, P13446346254346753943.a n = A127640 (n + 1)

end A127640

/-!
# A127641: A127640 * A051731 as infinite lower triangular matrices.

The programs for A127641, the canonical program `A127641.P15862743544218899426` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127641 has offset 1).

The definition of A127641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127641.P15862743544218899426

`A182986(A127446(n+1)+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A127641

/-- `A182986(A127446(n+1)+1)` -/
def P15862743544218899426.Spec : Prop :=
  ∀ n, P15862743544218899426.a n = A127641 (n + 1)

theorem P15862743544218899426.correct : P15862743544218899426.Spec := by
  intro n
  simp only [A127641, Nat.add_sub_cancel]

end A127641

/-! ## A127641.P8187248276545943085

`A154279(2*A127446(n+1))`
-/

namespace A127641.P8187248276545943085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154279 (2 * A127446 (n + 1)).toNat

end

end A127641.P8187248276545943085

namespace A127641

/-- `A154279(2*A127446(n+1))` -/
def P8187248276545943085.Spec : Prop :=
  ∀ n, P8187248276545943085.a n = A127641 (n + 1)

end A127641

/-! ## A127641.P14498044018740852635

`∑{d}[A127446(n+1), A007444(#)]`
-/

namespace A127641.P14498044018740852635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A127641.P14498044018740852635

namespace A127641

/-- `∑{d}[A127446(n+1), A007444(#)]` -/
def P14498044018740852635.Spec : Prop :=
  ∀ n, P14498044018740852635.a n = A127641 (n + 1)

end A127641

/-! ## A127641.P14797288824103105659

`A005145(n+1)*A051731(n+1)`
-/

namespace A127641.P14797288824103105659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (n + 1) * A051731 (n + 1)

end

end A127641.P14797288824103105659

namespace A127641

/-- `A005145(n+1)*A051731(n+1)` -/
def P14797288824103105659.Spec : Prop :=
  ∀ n, P14797288824103105659.a n = A127641 (n + 1)

end A127641

/-! ## A127641.P4108387839000453510

`A000040(∑[char[∑[n]]])*A051731(n+1)`
-/

namespace A127641.P4108387839000453510
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j) * A051731 (n + 1)

end

end A127641.P4108387839000453510

namespace A127641

/-- `A000040(∑[char[∑[n]]])*A051731(n+1)` -/
def P4108387839000453510.Spec : Prop :=
  ∀ n, P4108387839000453510.a n = A127641 (n + 1)

end A127641

/-! ## A127641.P5409152693781343417

`(2^A127093(n+1)-1)%2*A000040(∑[char[∑[n]]])`
-/

namespace A127641.P5409152693781343417
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A127093 (n + 1) : ℤ) - 1)) 2 * A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127641.P5409152693781343417

namespace A127641

/-- `(2^A127093(n+1)-1)%2*A000040(∑[char[∑[n]]])` -/
def P5409152693781343417.Spec : Prop :=
  ∀ n, P5409152693781343417.a n = A127641 (n + 1)

end A127641

/-! ## A127641.P8434300915170282125

`and(-A051731(n+1), A000040(A002024(n+1)))`
-/

namespace A127641.P8434300915170282125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A051731 (n + 1)) (A000040 (A002024 (n + 1)).toNat)

end

end A127641.P8434300915170282125

namespace A127641

/-- `and(-A051731(n+1), A000040(A002024(n+1)))` -/
def P8434300915170282125.Spec : Prop :=
  ∀ n, P8434300915170282125.a n = A127641 (n + 1)

end A127641

/-! ## A127641.P17125213077300236946

`A006530(A077320(n+1))*A051731(n+1)`
-/

namespace A127641.P17125213077300236946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A077320 (n + 1)).toNat * A051731 (n + 1)

end

end A127641.P17125213077300236946

namespace A127641

/-- `A006530(A077320(n+1))*A051731(n+1)` -/
def P17125213077300236946.Spec : Prop :=
  ∀ n, P17125213077300236946.a n = A127641 (n + 1)

end A127641

/-! ## A127641.P6701827961542700391

`A006530(A087112(n+1))*A051731(n+1)`
-/

namespace A127641.P6701827961542700391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A087112 (n + 1)).toNat * A051731 (n + 1)

end

end A127641.P6701827961542700391

namespace A127641

/-- `A006530(A087112(n+1))*A051731(n+1)` -/
def P6701827961542700391.Spec : Prop :=
  ∀ n, P6701827961542700391.a n = A127641 (n + 1)

end A127641

/-! ## A127641.P15335311150740504739

`∑{e}[A000079(A127446(n+1)), A000040(#)]`
-/

namespace A127641.P15335311150740504739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A127446 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A127641.P15335311150740504739

namespace A127641

/-- `∑{e}[A000079(A127446(n+1)), A000040(#)]` -/
def P15335311150740504739.Spec : Prop :=
  ∀ n, P15335311150740504739.a n = A127641 (n + 1)

end A127641

/-!
# A127642: Floor(n^n/n!) - ceiling(2^n/n).

The programs for A127642, the canonical program `A127642.P14047569400446802723` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127642 has offset 1).

The definition of A127642 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)^(n+1)/(n+1)!)-ceil(2^(n+1)/(n+1))` (program `A127642.P14047569400446802723`, by `A127642.P14047569400446802723.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127642.P14047569400446802723

`floor((n+1)^(n+1)/(n+1)!)-ceil(2^(n+1)/(n+1))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A127642

/-- `floor((n+1)^(n+1)/(n+1)!)-ceil(2^(n+1)/(n+1))` -/
def P14047569400446802723.Spec : Prop :=
  ∀ n, P14047569400446802723.a n = A127642 (n + 1)

theorem P14047569400446802723.correct : P14047569400446802723.Spec := by
  intro n
  simp only [A127642, Nat.add_sub_cancel]

end A127642

/-! ## A127642.P17608281806916205260

`A055775(n+1)-A053638(n+1)`
-/

namespace A127642.P17608281806916205260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055775 (n + 1) - A053638 (n + 1)

end

end A127642.P17608281806916205260

namespace A127642

/-- `A055775(n+1)-A053638(n+1)` -/
def P17608281806916205260.Spec : Prop :=
  ∀ n, P17608281806916205260.a n = A127642 (n + 1)

end A127642

/-! ## A127642.P16953583803948424263

`A114854(A051755(n+2))-A053638(n+1)`
-/

namespace A127642.P16953583803948424263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114854 (A051755 (n + 2)).toNat - A053638 (n + 1)

end

end A127642.P16953583803948424263

namespace A127642

/-- `A114854(A051755(n+2))-A053638(n+1)` -/
def P16953583803948424263.Spec : Prop :=
  ∀ n, P16953583803948424263.a n = A127642 (n + 1)

end A127642

/-! ## A127642.P13804769959445715781

`A295619(2*n)-A002024(A000048(2*(n+2)))`
-/

namespace A127642.P13804769959445715781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295619 (2 * n) - A002024 (A000048 (2 * (n + 2))).toNat

end

end A127642.P13804769959445715781

namespace A127642

/-- `A295619(2*n)-A002024(A000048(2*(n+2)))` -/
def P13804769959445715781.Spec : Prop :=
  ∀ n, P13804769959445715781.a n = A127642 (n + 1)

end A127642

/-!
# A127643: Composite numbers k that divide A123591(k) = ((2^k - 1)^(2^k) - 1)/(2^k)^2.

The programs for A127643, there is no canonical definition to state claims against.
-/

/-! ## A127643.P5636756952250448496

`A344681(A386125(n+1))`
-/

namespace A127643.P5636756952250448496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344681 (A386125 (n + 1)).toNat

end

end A127643.P5636756952250448496

/-!
# A127645: a(n) = sum of first n terms of sequence A127644.

The programs for A127645, there is no canonical definition to state claims against.
-/

/-! ## A127645.P16239215117696085662

`∑[A127644(n+1)]`
-/

namespace A127645.P16239215117696085662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127645.P16239215117696085662

/-! ## A127645.P17312458998079720043

`A127644(n+1)+a(n-A057427(n))` with `a(0)=3`
-/

namespace A127645.P17312458998079720043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A127644 (n + 1) + a ((n : ℤ) - A057427 n).toNat

end

end A127645.P17312458998079720043

/-! ## A127645.P16319756600858739322

`A127644(A000007(n)+n+1)+a(n-1)` with `a(0)=3`
-/

namespace A127645.P16319756600858739322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A127644 (A000007 n + (n + 1 : ℤ)).toNat + a (n - 1)

end

end A127645.P16319756600858739322

/-! ## A127645.P8320389751985001793

`A127644(n+1)+a(A000038(n)-1+n)` with `a(0)=3`
-/

namespace A127645.P8320389751985001793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A127644 (n + 1) + a (A000038 n - 1 + (n : ℤ)).toNat

end

end A127645.P8320389751985001793

/-! ## A127645.P16936528619743233237

`A127644(n+1)+a(n%A000203(n+1)-1)` with `a(0)=3`
-/

namespace A127645.P16936528619743233237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A127644 (n + 1) + a (Int.tmod (n : ℤ) (A000203 (n + 1)) - 1).toNat

end

end A127645.P16936528619743233237

/-! ## A127645.P10058416679816022392

`A127644(n+1)+a(A016789(n)-A004273(n)-4)` with `a(0)=3`
-/

namespace A127645.P10058416679816022392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A127644 (n + 1) + a (A016789 n - A004273 n - 4).toNat

end

end A127645.P10058416679816022392

/-! ## A127645.P11501731886994104706

`A127644(n+1)+a(A001281(2*n)-1)` with `a(0)=3`
-/

namespace A127645.P11501731886994104706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A127644 (n + 1) + a (A001281 (2 * n) - 1).toNat

end

end A127645.P11501731886994104706

/-! ## A127645.P5208643713556398586

`A127644(n+1)+a(n-1)%A280212(n+2)` with `a(0)=3`
-/

namespace A127645.P5208643713556398586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A127644 (n + 1) + Int.tmod (a (n - 1)) (A280212 (n + 2))

end

end A127645.P5208643713556398586

/-! ## A127645.P8877561435767547824

`A028310(A127644(n+1)+a(n-1))` with `a(0)=3`
-/

namespace A127645.P8877561435767547824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A028310 (A127644 (n + 1) + a (n - 1)).toNat

end

end A127645.P8877561435767547824

/-!
# A127646: a(n) is the product of first n terms of sequence A127644.

The programs for A127646, there is no canonical definition to state claims against.
-/

/-! ## A127646.P553484489394326728

`∏[A127644(n+1)]`
-/

namespace A127646.P553484489394326728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A127646.P553484489394326728

/-! ## A127646.P15673928125334849137

`(A127644(n+1)+A000038(n))*a(n-1)` with `a(0)=3`
-/

namespace A127646.P15673928125334849137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (A127644 (n + 1) + A000038 n) * a (n - 1)

end

end A127646.P15673928125334849137

/-! ## A127646.P12122038778406592780

`(A127644(n+1)-A000007(n))*a(n-1)` with `a(0)=3`
-/

namespace A127646.P12122038778406592780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (A127644 (n + 1) - A000007 n) * a (n - 1)

end

end A127646.P12122038778406592780

/-! ## A127646.P1674823817382698488

`A127644(n+1)%A280212(n+2)*a(n-1)` with `a(0)=3`
-/

namespace A127646.P1674823817382698488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.tmod (A127644 (n + 1)) (A280212 (n + 2)) * a (n - 1)

end

end A127646.P1674823817382698488

/-! ## A127646.P5541299075116998631

`(A127644(n+1)-Δ[A072257(n)]%2)*a(n-1)` with `a(0)=3`
-/

namespace A127646.P5541299075116998631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072257 n

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (A127644 (n + 1) - Int.tmod (f1 (n + 1) - f1 n) 2) * a (n - 1)

end

end A127646.P5541299075116998631

/-! ## A127646.P13961090568054344227

`(A127644(n+1)-A180413(n+1)%2)*a(n-1)` with `a(0)=3`
-/

namespace A127646.P13961090568054344227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (A127644 (n + 1) - Int.tmod (A180413 (n + 1)) 2) * a (n - 1)

end

end A127646.P13961090568054344227

/-!
# A127647: Triangle read by rows: row n consists of n-1 zeros followed by Fibonacci(n).

The programs for A127647, the canonical program `A127647.P9391719108574296925` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127647 has offset 1).

The definition of A127647 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127647.P7757917165286315713

`A128540(n)-a(n-1)` with `a(0)=1`
-/

namespace A127647.P7757917165286315713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A128540 n - a (n - 1)

end

end A127647.P7757917165286315713

namespace A127647

/-- `A128540(n)-a(n-1)` -/
def P7757917165286315713.Spec : Prop :=
  ∀ n, P7757917165286315713.a n = A127647 (n + 1)

end A127647

/-! ## A127647.P12523272265840551886

`char[∑[n-1]]*A209704(n+1)`
-/

namespace A127647.P12523272265840551886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A209704 (n + 1)

end

end A127647.P12523272265840551886

namespace A127647

/-- `char[∑[n-1]]*A209704(n+1)` -/
def P12523272265840551886.Spec : Prop :=
  ∀ n, P12523272265840551886.a n = A127647 (n + 1)

end A127647

/-! ## A127647.P13768130024364952566

`Δ[A000045(round(sqrt(2*(n+1)))+1)]`
-/

namespace A127647.P13768130024364952566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127647.P13768130024364952566

namespace A127647

/-- `Δ[A000045(round(sqrt(2*(n+1)))+1)]` -/
def P13768130024364952566.Spec : Prop :=
  ∀ n, P13768130024364952566.a n = A127647 (n + 1)

end A127647

/-! ## A127647.P6585163800554450600

`A000045(A127648(n))`
-/

namespace A127647.P6585163800554450600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A127648 n).toNat

end

end A127647.P6585163800554450600

namespace A127647

/-- `A000045(A127648(n))` -/
def P6585163800554450600.Spec : Prop :=
  ∀ n, P6585163800554450600.a n = A127647 (n + 1)

end A127647

/-! ## A127647.P9706279760118813137

`A017125(A127773(n+1))`
-/

namespace A127647.P9706279760118813137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017125 (A127773 (n + 1)).toNat

end

end A127647.P9706279760118813137

namespace A127647

/-- `A017125(A127773(n+1))` -/
def P9706279760118813137.Spec : Prop :=
  ∀ n, P9706279760118813137.a n = A127647 (n + 1)

end A127647

/-! ## A127647.P9391719108574296925

`A103609(A198954(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A127647

/-- `A103609(A198954(n+1))` -/
def P9391719108574296925.Spec : Prop :=
  ∀ n, P9391719108574296925.a n = A127647 (n + 1)

theorem P9391719108574296925.correct : P9391719108574296925.Spec := by
  intro n
  simp only [A127647, Nat.add_sub_cancel]

end A127647

/-! ## A127647.P889976893354606647

`A212804(A127648(n)+1)`
-/

namespace A127647.P889976893354606647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A127648 n + 1).toNat

end

end A127647.P889976893354606647

namespace A127647

/-- `A212804(A127648(n)+1)` -/
def P889976893354606647.Spec : Prop :=
  ∀ n, P889976893354606647.a n = A127647 (n + 1)

end A127647

/-! ## A127647.P16911669337745244375

`A016095(n)*A023531(n)`
-/

namespace A127647.P16911669337745244375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016095 n * A023531 n

end

end A127647.P16911669337745244375

namespace A127647

/-- `A016095(n)*A023531(n)` -/
def P16911669337745244375.Spec : Prop :=
  ∀ n, P16911669337745244375.a n = A127647 (n + 1)

end A127647

/-! ## A127647.P123618483164490642

`A023531(n)*A036355(n)`
-/

namespace A127647.P123618483164490642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A036355 n

end

end A127647.P123618483164490642

namespace A127647

/-- `A023531(n)*A036355(n)` -/
def P123618483164490642.Spec : Prop :=
  ∀ n, P123618483164490642.a n = A127647 (n + 1)

end A127647

/-! ## A127647.P11123355476599734840

`A023531(n)*A038137(n)`
-/

namespace A127647.P11123355476599734840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A038137 n

end

end A127647.P11123355476599734840

namespace A127647

/-- `A023531(n)*A038137(n)` -/
def P11123355476599734840.Spec : Prop :=
  ∀ n, P11123355476599734840.a n = A127647 (n + 1)

end A127647

/-! ## A127647.P13420511229997974485

`A023531(n)*A046741(n)`
-/

namespace A127647.P13420511229997974485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A046741 n

end

end A127647.P13420511229997974485

namespace A127647

/-- `A023531(n)*A046741(n)` -/
def P13420511229997974485.Spec : Prop :=
  ∀ n, P13420511229997974485.a n = A127647 (n + 1)

end A127647

/-! ## A127647.P12792105724964894147

`A023531(n)*A058071(n)`
-/

namespace A127647.P12792105724964894147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A058071 n

end

end A127647.P12792105724964894147

namespace A127647

/-- `A023531(n)*A058071(n)` -/
def P12792105724964894147.Spec : Prop :=
  ∀ n, P12792105724964894147.a n = A127647 (n + 1)

end A127647

/-! ## A127647.P2661817506592160011

`A023531(n)*A067418(n)`
-/

namespace A127647.P2661817506592160011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A067418 n

end

end A127647.P2661817506592160011

namespace A127647

/-- `A023531(n)*A067418(n)` -/
def P2661817506592160011.Spec : Prop :=
  ∀ n, P2661817506592160011.a n = A127647 (n + 1)

end A127647

/-! ## A127647.P11588430961097184096

`A023531(n)*A091533(n)`
-/

namespace A127647.P11588430961097184096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A091533 n

end

end A127647.P11588430961097184096

namespace A127647

/-- `A023531(n)*A091533(n)` -/
def P11588430961097184096.Spec : Prop :=
  ∀ n, P11588430961097184096.a n = A127647 (n + 1)

end A127647

/-! ## A127647.P12263809733636334898

`A023531(n)*A094436(n)`
-/

namespace A127647.P12263809733636334898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A094436 n

end

end A127647.P12263809733636334898

namespace A127647

/-- `A023531(n)*A094436(n)` -/
def P12263809733636334898.Spec : Prop :=
  ∀ n, P12263809733636334898.a n = A127647 (n + 1)

end A127647

/-! ## A127647.P3173489616140173901

`A023531(n)*A099573(n)`
-/

namespace A127647.P3173489616140173901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A099573 n

end

end A127647.P3173489616140173901

namespace A127647

/-- `A023531(n)*A099573(n)` -/
def P3173489616140173901.Spec : Prop :=
  ∀ n, P3173489616140173901.a n = A127647 (n + 1)

end A127647

/-! ## A127647.P4674198558005537742

`A023531(n)*A102756(n)`
-/

namespace A127647.P4674198558005537742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A102756 n

end

end A127647.P4674198558005537742

namespace A127647

/-- `A023531(n)*A102756(n)` -/
def P4674198558005537742.Spec : Prop :=
  ∀ n, P4674198558005537742.a n = A127647 (n + 1)

end A127647

/-! ## A127647.P11855238860584577507

`A023531(n)*A104733(n)`
-/

namespace A127647.P11855238860584577507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A104733 n

end

end A127647.P11855238860584577507

namespace A127647

/-- `A023531(n)*A104733(n)` -/
def P11855238860584577507.Spec : Prop :=
  ∀ n, P11855238860584577507.a n = A127647 (n + 1)

end A127647

/-! ## A127647.P17532641132560688893

`A023531(n)*A109906(n)`
-/

namespace A127647.P17532641132560688893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A109906 n

end

end A127647.P17532641132560688893

namespace A127647

/-- `A023531(n)*A109906(n)` -/
def P17532641132560688893.Spec : Prop :=
  ∀ n, P17532641132560688893.a n = A127647 (n + 1)

end A127647

/-! ## A127647.P12087483640010096679

`A023531(n)*A111006(n)`
-/

namespace A127647.P12087483640010096679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A111006 n

end

end A127647.P12087483640010096679

namespace A127647

/-- `A023531(n)*A111006(n)` -/
def P12087483640010096679.Spec : Prop :=
  ∀ n, P12087483640010096679.a n = A127647 (n + 1)

end A127647

/-!
# A127648: Triangle read by rows: row n consists of n zeros followed by n+1.

The programs for A127648, the canonical program `A127648.P14273563626416826954` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127648 has offset 0).

The definition of A127648 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127648.P17211063493376967629

`Δ[C(round(sqrt(2*(n+1))), 2)]`
-/

namespace A127648.P17211063493376967629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A127648.P17211063493376967629

namespace A127648

/-- `Δ[C(round(sqrt(2*(n+1))), 2)]` -/
def P17211063493376967629.Spec : Prop :=
  ∀ n, P17211063493376967629.a n = A127648 n

end A127648

/-! ## A127648.P11209878509731298945

`∑[char[∑[n]]]*char[∑[n-1]]`
-/

namespace A127648.P11209878509731298945
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (if ∃ j, f4 j = (n : ℤ) then 1 else 0)

end

end A127648.P11209878509731298945

namespace A127648

/-- `∑[char[∑[n]]]*char[∑[n-1]]` -/
def P11209878509731298945.Spec : Prop :=
  ∀ n, (P11209878509731298945.a n : ℤ) = A127648 n

end A127648

/-! ## A127648.P13140026517656265115

`sqrt(A127733(n+1))`
-/

namespace A127648.P13140026517656265115
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127733 (n + 1) : ℝ)

end

end A127648.P13140026517656265115

namespace A127648

/-- `sqrt(A127733(n+1))` -/
def P13140026517656265115.Spec : Prop :=
  ∀ n, P13140026517656265115.a n = (A127648 n : ℝ)

end A127648

/-! ## A127648.P14273563626416826954

`Δ[A061885(n)]-1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A127648

/-- `Δ[A061885(n)]-1` -/
def P14273563626416826954.Spec : Prop :=
  ∀ n, P14273563626416826954.a n = A127648 n

theorem P14273563626416826954.correct : P14273563626416826954.Spec := by
  intro n
  simp only [A127648]

end A127648

/-! ## A127648.P5191307944609202106

`val(A193858(n)+1, 2)`
-/

namespace A127648.P5191307944609202106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A193858 n + 1).toNat 2

end

end A127648.P5191307944609202106

namespace A127648

/-- `val(A193858(n)+1, 2)` -/
def P5191307944609202106.Spec : Prop :=
  ∀ n, (P5191307944609202106.a n : ℤ) = A127648 n

end A127648

/-! ## A127648.P1312833746883825247

`val(A089633(n)+2, 2)`
-/

namespace A127648.P1312833746883825247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A089633 n + 2).toNat 2

end

end A127648.P1312833746883825247

namespace A127648

/-- `val(A089633(n)+2, 2)` -/
def P1312833746883825247.Spec : Prop :=
  ∀ n, (P1312833746883825247.a n : ℤ) = A127648 n

end A127648

/-! ## A127648.P14627966278280366028

`1-Δ[log2(A059268(n))]`
-/

namespace A127648.P14627966278280366028
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059268 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A127648.P14627966278280366028

namespace A127648

/-- `1-Δ[log2(A059268(n))]` -/
def P14627966278280366028.Spec : Prop :=
  ∀ n, P14627966278280366028.a n = (A127648 n : ℝ)

end A127648

/-! ## A127648.P4479716109590855772

`floor(A198954(n+1)/2)`
-/

namespace A127648.P4479716109590855772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198954 (n + 1) : ℚ) / 2⌋

end

end A127648.P4479716109590855772

namespace A127648

/-- `floor(A198954(n+1)/2)` -/
def P4479716109590855772.Spec : Prop :=
  ∀ n, P4479716109590855772.a n = A127648 n

end A127648

/-! ## A127648.P15966580943218344909

`1-Δ[A002260(n+1)]`
-/

namespace A127648.P15966580943218344909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A127648.P15966580943218344909

namespace A127648

/-- `1-Δ[A002260(n+1)]` -/
def P15966580943218344909.Spec : Prop :=
  ∀ n, P15966580943218344909.a n = A127648 n

end A127648

/-! ## A127648.P9980964492309889596

`2-A066181(n+1)+n`
-/

namespace A127648.P9980964492309889596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A066181 (n + 1) + (n : ℤ)

end

end A127648.P9980964492309889596

namespace A127648

/-- `2-A066181(n+1)+n` -/
def P9980964492309889596.Spec : Prop :=
  ∀ n, P9980964492309889596.a n = A127648 n

end A127648

/-! ## A127648.P3627108628757901691

`A103516(n-a(n-1))-a(n-1)` with `a(0)=1`
-/

namespace A127648.P3627108628757901691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A103516 ((n : ℤ) - a (n - 1)).toNat - a (n - 1)

end

end A127648.P3627108628757901691

namespace A127648

/-- `A103516(n-a(n-1))-a(n-1)` -/
def P3627108628757901691.Spec : Prop :=
  ∀ n, P3627108628757901691.a n = A127648 n

end A127648

/-! ## A127648.P8655880399541900148

`A087508(A131431(n))`
-/

namespace A127648.P8655880399541900148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087508 (A131431 n).toNat

end

end A127648.P8655880399541900148

namespace A127648

/-- `A087508(A131431(n))` -/
def P8655880399541900148.Spec : Prop :=
  ∀ n, P8655880399541900148.a n = A127648 n

end A127648

/-! ## A127648.P14025840546271166297

`Δ[A000217(A003056(n))]`
-/

namespace A127648.P14025840546271166297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127648.P14025840546271166297

namespace A127648

/-- `Δ[A000217(A003056(n))]` -/
def P14025840546271166297.Spec : Prop :=
  ∀ n, P14025840546271166297.a n = A127648 n

end A127648

/-! ## A127648.P10549398660698062049

`A095704(A286244(n+1))`
-/

namespace A127648.P10549398660698062049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095704 (A286244 (n + 1)).toNat

end

end A127648.P10549398660698062049

namespace A127648

/-- `A095704(A286244(n+1))` -/
def P10549398660698062049.Spec : Prop :=
  ∀ n, P10549398660698062049.a n = A127648 n

end A127648

/-! ## A127648.P1050059577873128649

`A051340(n)-A023532(n)`
-/

namespace A127648.P1050059577873128649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 n - A023532 n

end

end A127648.P1050059577873128649

namespace A127648

/-- `A051340(n)-A023532(n)` -/
def P1050059577873128649.Spec : Prop :=
  ∀ n, P1050059577873128649.a n = A127648 n

end A127648

/-! ## A127648.P9288484923242206524

`A191532(n)-A002262(n)`
-/

namespace A127648.P9288484923242206524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191532 n - A002262 n

end

end A127648.P9288484923242206524

namespace A127648

/-- `A191532(n)-A002262(n)` -/
def P9288484923242206524.Spec : Prop :=
  ∀ n, P9288484923242206524.a n = A127648 n

end A127648

/-! ## A127648.P4040065212408549884

`A103516(n)%A102515(n)`
-/

namespace A127648.P4040065212408549884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103516 n) (A102515 n)

end

end A127648.P4040065212408549884

namespace A127648

/-- `A103516(n)%A102515(n)` -/
def P4040065212408549884.Spec : Prop :=
  ∀ n, P4040065212408549884.a n = A127648 n

end A127648

/-! ## A127648.P6345315257892261594

`lcm(A103452(n), A119900(n))`
-/

namespace A127648.P6345315257892261594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A103452 n) (A119900 n)

end

end A127648.P6345315257892261594

namespace A127648

/-- `lcm(A103452(n), A119900(n))` -/
def P6345315257892261594.Spec : Prop :=
  ∀ n, (P6345315257892261594.a n : ℤ) = A127648 n

end A127648

/-! ## A127648.P9099291018662570574

`lcm(A111373(n), A113125(n))`
-/

namespace A127648.P9099291018662570574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A111373 n) (A113125 n)

end

end A127648.P9099291018662570574

namespace A127648

/-- `lcm(A111373(n), A113125(n))` -/
def P9099291018662570574.Spec : Prop :=
  ∀ n, (P9099291018662570574.a n : ℤ) = A127648 n

end A127648

/-! ## A127648.P6259840051746596058

`lcm(A115359(n), A127948(n))`
-/

namespace A127648.P6259840051746596058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A115359 n) (A127948 n)

end

end A127648.P6259840051746596058

namespace A127648

/-- `lcm(A115359(n), A127948(n))` -/
def P6259840051746596058.Spec : Prop :=
  ∀ n, (P6259840051746596058.a n : ℤ) = A127648 n

end A127648

/-!
# A127649: A127648 * A054523 as infinite lower triangular matrices.

The programs for A127649, the canonical program `A127649.P11524533547254049656` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127649 has offset 1).

The definition of A127649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127649.P5532788868124820626

`∑[char[∑[n]]]*A054523(n+1)`
-/

namespace A127649.P5532788868124820626
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A054523 (n + 1)

end

end A127649.P5532788868124820626

namespace A127649

/-- `∑[char[∑[n]]]*A054523(n+1)` -/
def P5532788868124820626.Spec : Prop :=
  ∀ n, P5532788868124820626.a n = A127649 (n + 1)

end A127649

/-! ## A127649.P11524533547254049656

`A054523(n+1)*A074712(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A127649

/-- `A054523(n+1)*A074712(n+1)` -/
def P11524533547254049656.Spec : Prop :=
  ∀ n, P11524533547254049656.a n = A127649 (n + 1)

theorem P11524533547254049656.correct : P11524533547254049656.Spec := by
  intro n
  simp only [A127649, Nat.add_sub_cancel]

end A127649

/-! ## A127649.P18301714638867792306

`A010766(n+1)*A127465(n+1)`
-/

namespace A127649.P18301714638867792306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A127465 (n + 1)

end

end A127649.P18301714638867792306

namespace A127649

/-- `A010766(n+1)*A127465(n+1)` -/
def P18301714638867792306.Spec : Prop :=
  ∀ n, P18301714638867792306.a n = A127649 (n + 1)

end A127649

/-! ## A127649.P1692540036727081484

`A049834(n+1)*A127465(n+1)`
-/

namespace A127649.P1692540036727081484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (n + 1) * A127465 (n + 1)

end

end A127649.P1692540036727081484

namespace A127649

/-- `A049834(n+1)*A127465(n+1)` -/
def P1692540036727081484.Spec : Prop :=
  ∀ n, P1692540036727081484.a n = A127649 (n + 1)

end A127649

/-! ## A127649.P10124120815563184087

`A054523(n+1)*A123229(n+1)`
-/

namespace A127649.P10124120815563184087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1) * A123229 (n + 1)

end

end A127649.P10124120815563184087

namespace A127649

/-- `A054523(n+1)*A123229(n+1)` -/
def P10124120815563184087.Spec : Prop :=
  ∀ n, P10124120815563184087.a n = A127649 (n + 1)

end A127649

/-! ## A127649.P2146653078869576728

`A051537(n+1)*A127465(n+1)`
-/

namespace A127649.P2146653078869576728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (n + 1) * A127465 (n + 1)

end

end A127649.P2146653078869576728

namespace A127649

/-- `A051537(n+1)*A127465(n+1)` -/
def P2146653078869576728.Spec : Prop :=
  ∀ n, P2146653078869576728.a n = A127649 (n + 1)

end A127649

/-! ## A127649.P16107698964639139117

`A054523(n+1)*A127446(n+1)`
-/

namespace A127649.P16107698964639139117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1) * A127446 (n + 1)

end

end A127649.P16107698964639139117

namespace A127649

/-- `A054523(n+1)*A127446(n+1)` -/
def P16107698964639139117.Spec : Prop :=
  ∀ n, P16107698964639139117.a n = A127649 (n + 1)

end A127649

/-! ## A127649.P16559157600093026196

`A054531(n+1)*A127465(n+1)`
-/

namespace A127649.P16559157600093026196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (n + 1) * A127465 (n + 1)

end

end A127649.P16559157600093026196

namespace A127649

/-- `A054531(n+1)*A127465(n+1)` -/
def P16559157600093026196.Spec : Prop :=
  ∀ n, P16559157600093026196.a n = A127649 (n + 1)

end A127649

/-! ## A127649.P15740965579770738792

`A059026(n+1)*A127465(n+1)`
-/

namespace A127649.P15740965579770738792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059026 (n + 1) * A127465 (n + 1)

end

end A127649.P15740965579770738792

namespace A127649

/-- `A059026(n+1)*A127465(n+1)` -/
def P15740965579770738792.Spec : Prop :=
  ∀ n, P15740965579770738792.a n = A127649 (n + 1)

end A127649

/-! ## A127649.P11153640050148509088

`A054523(n+1)*A199408(n+1)`
-/

namespace A127649.P11153640050148509088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1) * A199408 (n + 1)

end

end A127649.P11153640050148509088

namespace A127649

/-- `A054523(n+1)*A199408(n+1)` -/
def P11153640050148509088.Spec : Prop :=
  ∀ n, P11153640050148509088.a n = A127649 (n + 1)

end A127649

/-! ## A127649.P12549954570043351472

`A126988(n+1)*A127465(n+1)`
-/

namespace A127649.P12549954570043351472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) * A127465 (n + 1)

end

end A127649.P12549954570043351472

namespace A127649

/-- `A126988(n+1)*A127465(n+1)` -/
def P12549954570043351472.Spec : Prop :=
  ∀ n, P12549954570043351472.a n = A127649 (n + 1)

end A127649

/-! ## A127649.P4963317720171613784

`A127465(n+1)*A219158(n+1)`
-/

namespace A127649.P4963317720171613784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127465 (n + 1) * A219158 (n + 1)

end

end A127649.P4963317720171613784

namespace A127649

/-- `A127465(n+1)*A219158(n+1)` -/
def P4963317720171613784.Spec : Prop :=
  ∀ n, P4963317720171613784.a n = A127649 (n + 1)

end A127649

/-! ## A127649.P13566376542660746236

`A127465(n+1)*A234575(n+1)`
-/

namespace A127649.P13566376542660746236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127465 (n + 1) * A234575 (n + 1)

end

end A127649.P13566376542660746236

namespace A127649

/-- `A127465(n+1)*A234575(n+1)` -/
def P13566376542660746236.Spec : Prop :=
  ∀ n, P13566376542660746236.a n = A127649 (n + 1)

end A127649

/-! ## A127649.P3655313445466602170

`A054523(n+1)*A123578(n+1)`
-/

namespace A127649.P3655313445466602170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1) * A123578 (n + 1)

end

end A127649.P3655313445466602170

namespace A127649

/-- `A054523(n+1)*A123578(n+1)` -/
def P3655313445466602170.Spec : Prop :=
  ∀ n, P3655313445466602170.a n = A127649 (n + 1)

end A127649

/-! ## A127649.P12017508705931598940

`A129236(n+1)*A183110(n+1)`
-/

namespace A127649.P12017508705931598940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129236 (n + 1) * A183110 (n + 1)

end

end A127649.P12017508705931598940

namespace A127649

/-- `A129236(n+1)*A183110(n+1)` -/
def P12017508705931598940.Spec : Prop :=
  ∀ n, P12017508705931598940.a n = A127649 (n + 1)

end A127649

/-! ## A127649.P11058719773537313143

`A000010(A051537(n+1)²)*A127093(n+1)`
-/

namespace A127649.P11058719773537313143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A051537 (n + 1) ^ 2).toNat * A127093 (n + 1)

end

end A127649.P11058719773537313143

namespace A127649

/-- `A000010(A051537(n+1)²)*A127093(n+1)` -/
def P11058719773537313143.Spec : Prop :=
  ∀ n, P11058719773537313143.a n = A127649 (n + 1)

end A127649

/-!
# A127650: a(n) = n^n - (2n-1)!!.

The programs for A127650, there is no canonical definition to state claims against.
-/

/-! ## A127650.P14202811871722717019

`(n+1)^(n+1)-∏[Δ[n²]]`
-/

namespace A127650.P14202811871722717019
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) : ℤ) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A127650.P14202811871722717019

/-! ## A127650.P3080838187661448018

`record[A071207(n)-A028338(n)]`
-/

namespace A127650.P3080838187661448018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071207 n - A028338 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127650.P3080838187661448018

/-! ## A127650.P12446432097334588174

`record[A174551(n)-A001497(n)]`
-/

namespace A127650.P12446432097334588174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174551 n - A001497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127650.P12446432097334588174

/-! ## A127650.P17737338450808791460

`record[A174551(n)-A028338(n)]`
-/

namespace A127650.P17737338450808791460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174551 n - A028338 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127650.P17737338450808791460

/-! ## A127650.P10352821734848661758

`record[A246609(n)-A001497(n)]`
-/

namespace A127650.P10352821734848661758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246609 n - A001497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127650.P10352821734848661758

/-!
# A127651: Triangle T(n,k) = n*k if k|n, 0 otherwise; 1<=k<=n.

The programs for A127651, the canonical program `A127651.P2005468339652068086` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127651 has offset 1).

The definition of A127651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127651.P4360688924477044618

`∑[char[∑[n]]]*A127093(n+1)`
-/

namespace A127651.P4360688924477044618
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A127093 (n + 1)

end

end A127651.P4360688924477044618

namespace A127651

/-- `∑[char[∑[n]]]*A127093(n+1)` -/
def P4360688924477044618.Spec : Prop :=
  ∀ n, P4360688924477044618.a n = A127651 (n + 1)

end A127651

/-! ## A127651.P7342898529791297413

`lcm(A075362(n+1), A129555(n))`
-/

namespace A127651.P7342898529791297413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A075362 (n + 1)) (A129555 n)

end

end A127651.P7342898529791297413

namespace A127651

/-- `lcm(A075362(n+1), A129555(n))` -/
def P7342898529791297413.Spec : Prop :=
  ∀ n, (P7342898529791297413.a n : ℤ) = A127651 (n + 1)

end A127651

/-! ## A127651.P2005468339652068086

`A051731(n+1)*A075362(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A127651

/-- `A051731(n+1)*A075362(n+1)` -/
def P2005468339652068086.Spec : Prop :=
  ∀ n, P2005468339652068086.a n = A127651 (n + 1)

theorem P2005468339652068086.correct : P2005468339652068086.Spec := by
  intro n
  simp only [A127651, Nat.add_sub_cancel]

end A127651

/-! ## A127651.P5993215943073374171

`A002260(n+1)*A127446(n+1)`
-/

namespace A127651.P5993215943073374171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A127446 (n + 1)

end

end A127651.P5993215943073374171

namespace A127651

/-- `A002260(n+1)*A127446(n+1)` -/
def P5993215943073374171.Spec : Prop :=
  ∀ n, P5993215943073374171.a n = A127651 (n + 1)

end A127651

/-! ## A127651.P16185313981957497044

`(A002262(n)+1)*A127446(n+1)`
-/

namespace A127651.P16185313981957497044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A127446 (n + 1)

end

end A127651.P16185313981957497044

namespace A127651

/-- `(A002262(n)+1)*A127446(n+1)` -/
def P16185313981957497044.Spec : Prop :=
  ∀ n, P16185313981957497044.a n = A127651 (n + 1)

end A127651

/-! ## A127651.P16407639329479366347

`A010766(n+1)*A134575(n+1)`
-/

namespace A127651.P16407639329479366347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A134575 (n + 1)

end

end A127651.P16407639329479366347

namespace A127651

/-- `A010766(n+1)*A134575(n+1)` -/
def P16407639329479366347.Spec : Prop :=
  ∀ n, P16407639329479366347.a n = A127651 (n + 1)

end A127651

/-! ## A127651.P15949139694645388562

`A050873(n+1)*A127446(n+1)`
-/

namespace A127651.P15949139694645388562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A127446 (n + 1)

end

end A127651.P15949139694645388562

namespace A127651

/-- `A050873(n+1)*A127446(n+1)` -/
def P15949139694645388562.Spec : Prop :=
  ∀ n, P15949139694645388562.a n = A127651 (n + 1)

end A127651

/-! ## A127651.P4157874580833612297

`A049834(n+1)*A134575(n+1)`
-/

namespace A127651.P4157874580833612297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (n + 1) * A134575 (n + 1)

end

end A127651.P4157874580833612297

namespace A127651

/-- `A049834(n+1)*A134575(n+1)` -/
def P4157874580833612297.Spec : Prop :=
  ∀ n, P4157874580833612297.a n = A127651 (n + 1)

end A127651

/-! ## A127651.P13001199384281498808

`A051537(n+1)*A134575(n+1)`
-/

namespace A127651.P13001199384281498808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (n + 1) * A134575 (n + 1)

end

end A127651.P13001199384281498808

namespace A127651

/-- `A051537(n+1)*A134575(n+1)` -/
def P13001199384281498808.Spec : Prop :=
  ∀ n, P13001199384281498808.a n = A127651 (n + 1)

end A127651

/-! ## A127651.P12285336432332547487

`A054531(n+1)*A134575(n+1)`
-/

namespace A127651.P12285336432332547487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (n + 1) * A134575 (n + 1)

end

end A127651.P12285336432332547487

namespace A127651

/-- `A054531(n+1)*A134575(n+1)` -/
def P12285336432332547487.Spec : Prop :=
  ∀ n, P12285336432332547487.a n = A127651 (n + 1)

end A127651

/-! ## A127651.P6476511641024828593

`A059026(n+1)*A134575(n+1)`
-/

namespace A127651.P6476511641024828593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059026 (n + 1) * A134575 (n + 1)

end

end A127651.P6476511641024828593

namespace A127651

/-- `A059026(n+1)*A134575(n+1)` -/
def P6476511641024828593.Spec : Prop :=
  ∀ n, P6476511641024828593.a n = A127651 (n + 1)

end A127651

/-! ## A127651.P6318905828131549344

`A123275(n+1)*A127446(n+1)`
-/

namespace A127651.P6318905828131549344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123275 (n + 1) * A127446 (n + 1)

end

end A127651.P6318905828131549344

namespace A127651

/-- `A123275(n+1)*A127446(n+1)` -/
def P6318905828131549344.Spec : Prop :=
  ∀ n, P6318905828131549344.a n = A127651 (n + 1)

end A127651

/-! ## A127651.P4538313408750278932

`A127093(n+1)*A127446(n+1)`
-/

namespace A127651.P4538313408750278932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) * A127446 (n + 1)

end

end A127651.P4538313408750278932

namespace A127651

/-- `A127093(n+1)*A127446(n+1)` -/
def P4538313408750278932.Spec : Prop :=
  ∀ n, P4538313408750278932.a n = A127651 (n + 1)

end A127651

/-! ## A127651.P3969285423790122970

`A126988(n+1)*A133819(n+1)`
-/

namespace A127651.P3969285423790122970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) * A133819 (n + 1)

end

end A127651.P3969285423790122970

namespace A127651

/-- `A126988(n+1)*A133819(n+1)` -/
def P3969285423790122970.Spec : Prop :=
  ∀ n, P3969285423790122970.a n = A127651 (n + 1)

end A127651

/-! ## A127651.P10680580221001821125

`A126988(n+1)*A134575(n+1)`
-/

namespace A127651.P10680580221001821125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) * A134575 (n + 1)

end

end A127651.P10680580221001821125

namespace A127651

/-- `A126988(n+1)*A134575(n+1)` -/
def P10680580221001821125.Spec : Prop :=
  ∀ n, P10680580221001821125.a n = A127651 (n + 1)

end A127651

/-! ## A127651.P7718933373545113172

`A134576(n+1)/A010766(n+1)`
-/

namespace A127651.P7718933373545113172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134576 (n + 1) : ℚ) / (A010766 (n + 1) : ℚ)

end

end A127651.P7718933373545113172

namespace A127651

/-- `A134576(n+1)/A010766(n+1)` -/
def P7718933373545113172.Spec : Prop :=
  ∀ n, P7718933373545113172.a n = (A127651 (n + 1) : ℚ)

end A127651

/-! ## A127651.P12926886528463764874

`lcm(A128228(n+1), A134575(n+1))`
-/

namespace A127651.P12926886528463764874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A128228 (n + 1)) (A134575 (n + 1))

end

end A127651.P12926886528463764874

namespace A127651

/-- `lcm(A128228(n+1), A134575(n+1))` -/
def P12926886528463764874.Spec : Prop :=
  ∀ n, (P12926886528463764874.a n : ℤ) = A127651 (n + 1)

end A127651

/-! ## A127651.P15916257554981106590

`A002260(n+1)²*A126988(n+1)`
-/

namespace A127651.P15916257554981106590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) ^ 2 * A126988 (n + 1)

end

end A127651.P15916257554981106590

namespace A127651

/-- `A002260(n+1)²*A126988(n+1)` -/
def P15916257554981106590.Spec : Prop :=
  ∀ n, P15916257554981106590.a n = A127651 (n + 1)

end A127651

/-! ## A127651.P11738696167483648144

`(A002262(n)+1)²*A126988(n+1)`
-/

namespace A127651.P11738696167483648144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) ^ 2 * A126988 (n + 1)

end

end A127651.P11738696167483648144

namespace A127651

/-- `(A002262(n)+1)²*A126988(n+1)` -/
def P11738696167483648144.Spec : Prop :=
  ∀ n, P11738696167483648144.a n = A127651 (n + 1)

end A127651

/-! ## A127651.P2957030713301391052

`A127093(n+1)²*A010766(n+1)`
-/

namespace A127651.P2957030713301391052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) ^ 2 * A010766 (n + 1)

end

end A127651.P2957030713301391052

namespace A127651

/-- `A127093(n+1)²*A010766(n+1)` -/
def P2957030713301391052.Spec : Prop :=
  ∀ n, P2957030713301391052.a n = A127651 (n + 1)

end A127651

/-!
# A127652: Integers whose unitary aliquot sequences are longer than their ordinary aliquot sequences.

The programs for A127652, there is no canonical definition to state claims against.
-/

/-! ## A127652.P14974722166365394854

`lt[A098008(n+1), A097033(n+1)]+1`
-/

namespace A127652.P14974722166365394854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097033 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A127652.P14974722166365394854

/-!
# A127653: Integers whose unitary aliquot sequences terminate in 0, including 1 but excluding the other trivial cases in which n is itself either a prime or a prime power.

The programs for A127653, there is no canonical definition to state claims against.
-/

/-! ## A127653.P6785720367952864961

`eq[A069513(n+1), A318880(n+1)]+1`
-/

namespace A127653.P6785720367952864961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318880 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A127653.P6785720367952864961

/-! ## A127653.P16199405439930754003

`∩[A097010(n+1), A361102(n+1)]`
-/

namespace A127653.P16199405439930754003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127653.P16199405439930754003

/-! ## A127653.P6641644231127492866

`eq[A120007(n+1), A318880(n+1)]+1`
-/

namespace A127653.P6641644231127492866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318880 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A127653.P6641644231127492866

/-! ## A127653.P10860706144298299605

`eq[A001222(A014963(n+1)), A318880(n+1)]+1`
-/

namespace A127653.P10860706144298299605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A014963 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318880 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A127653.P10860706144298299605

/-! ## A127653.P4347715036187602676

`∩[A097010(n+1), A327476(n+1)]`
-/

namespace A127653.P4347715036187602676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127653.P4347715036187602676

/-!
# A127654: Unitary aspiring numbers.

The programs for A127654, there is no canonical definition to state claims against.
-/

/-! ## A127654.P4038081481999293648

`A098185(A184985(n+1)+3)`
-/

namespace A127654.P4038081481999293648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098185 (A184985 (n + 1) + 3).toNat

end

end A127654.P4038081481999293648

/-! ## A127654.P14977460936871603098

`A098185(n+4-A019590(n+1))`
-/

namespace A127654.P14977460936871603098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098185 ((n + 4 : ℤ) - A019590 (n + 1)).toNat

end

end A127654.P14977460936871603098

/-! ## A127654.P14097434768924009733

`filter[A098185(n+3), A072165(#)]`
-/

namespace A127654.P14097434768924009733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098185 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A072165 (f1 j).toNat = 1) n)

end

end A127654.P14097434768924009733

/-!
# A127655: Numbers whose unitary aliquot sequences end in a unitary amicable pair, but which are not unitary amicable numbers themselves.

The programs for A127655, there is no canonical definition to state claims against.
-/

/-! ## A127655.P7730826081438368324

`A097037(lt[A034374(2*(n+1)), A361274(n)]+1)`
-/

namespace A127655.P7730826081438368324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034374 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097037 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A127655.P7730826081438368324

/-! ## A127655.P5838170569723833975

`A097037(n+3)-A099654(A049287(3*n+5))`
-/

namespace A127655.P5838170569723833975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097037 (n + 3) - A099654 (A049287 (3 * n + 5)).toNat

end

end A127655.P5838170569723833975

/-!
# A127656: Lengths of the exponential aliquot sequences.

The programs for A127656, there is no canonical definition to state claims against.
-/

/-! ## A127656.P4610427094951016289

`A001221(A250270(lcm(4, A253139(n+1))))`
-/

namespace A127656.P4610427094951016289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A250270 (Int.lcm 4 (A253139 (n + 1)))).toNat

end

end A127656.P4610427094951016289

/-! ## A127656.P14506086405147884131

`A096520(A294897(n+1))`
-/

namespace A127656.P14506086405147884131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096520 (A294897 (n + 1)).toNat

end

end A127656.P14506086405147884131

/-! ## A127656.P17256305530957824737

`3-A213731(A111217(n+1))`
-/

namespace A127656.P17256305530957824737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A213731 (A111217 (n + 1)).toNat

end

end A127656.P17256305530957824737

/-! ## A127656.P11379705524180168628

`A004200(A072906(n+1)^6)`
-/

namespace A127656.P11379705524180168628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004200 (A072906 (n + 1) ^ 6).toNat

end

end A127656.P11379705524180168628

/-! ## A127656.P13454820542755007504

`A108077(A006241(n+1))%4`
-/

namespace A127656.P13454820542755007504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108077 (A006241 (n + 1)).toNat) 4

end

end A127656.P13454820542755007504

/-!
# A127657: Integers whose exponential aliquot sequences end in an e-perfect number.

The programs for A127657, there is no canonical definition to state claims against.
-/

/-! ## A127657.P706986013489765459

`∪[A054979(n+1), A127658(n+1)]`
-/

namespace A127657.P706986013489765459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A127657.P706986013489765459

/-! ## A127657.P1802918869609472896

`∪[36*A219016(n+1), A127658(n+1)]`
-/

namespace A127657.P1802918869609472896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  36 * A219016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A127657.P1802918869609472896

/-!
# A127660: Integers whose exponential aliquot sequences end in an exponential amicable pair.

The programs for A127660, there is no canonical definition to state claims against.
-/

/-! ## A127660.P11385099884024878171

`A127659(A062399(n+1))`
-/

namespace A127660.P11385099884024878171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127659 (A062399 (n + 1)).toNat

end

end A127660.P11385099884024878171

/-! ## A127660.P3465307101250979120

`A127659(A351870(n+1))`
-/

namespace A127660.P3465307101250979120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127659 (A351870 (n + 1)).toNat

end

end A127660.P3465307101250979120

/-! ## A127660.P8509162667352299895

`A127659(A227549(n+1)+1)`
-/

namespace A127660.P8509162667352299895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127659 (A227549 (n + 1) + 1).toNat

end

end A127660.P8509162667352299895

/-! ## A127660.P865237579825273674

`A127659(A015137(2^n)+n)`
-/

namespace A127660.P865237579825273674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127659 (A015137 (2 ^ n) + (n : ℤ)).toNat

end

end A127660.P865237579825273674

/-! ## A127660.P17867601424922935841

`A127659(n+1)%A096931(2*n+5)`
-/

namespace A127660.P17867601424922935841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127659 (n + 1)) (A096931 (2 * n + 5))

end

end A127660.P17867601424922935841

/-!
# A127661: Lengths of the infinitary aliquot sequences.

The programs for A127661, there is no canonical definition to state claims against.
-/

/-! ## A127661.P6264210054318804771

`A127656(lcm(30, A064549(n+1)))`
-/

namespace A127661.P6264210054318804771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127656 (Int.lcm 30 (A064549 (n + 1)))

end

end A127661.P6264210054318804771

/-! ## A127661.P13842405892672322587

`gcd(A061389(n+1)+1, A323754(n+1))`
-/

namespace A127661.P13842405892672322587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061389 (n + 1) + 1) (A323754 (n + 1))

end

end A127661.P13842405892672322587

/-! ## A127661.P3018973465145916645

`A304095(A006131(n))+A097032(n+1)`
-/

namespace A127661.P3018973465145916645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304095 (A006131 n).toNat + A097032 (n + 1)

end

end A127661.P3018973465145916645

/-! ## A127661.P6908859039077052362

`A000005(A262217(n+2)^A141256(n))`
-/

namespace A127661.P6908859039077052362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A262217 (n + 2) : ℚ) ^ (A141256 n : ℤ))).toNat

end

end A127661.P6908859039077052362

/-! ## A127661.P10246141376583378457

`A097032(A119356(n+1)%A050281(n+1))`
-/

namespace A127661.P10246141376583378457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097032 (Int.tmod (A119356 (n + 1)) (A050281 (n + 1))).toNat

end

end A127661.P10246141376583378457

/-!
# A127662: Integers whose infinitary aliquot sequences end in an infinitary perfect number (A007357).

The programs for A127662, there is no canonical definition to state claims against.
-/

/-! ## A127662.P14754936256086222571

`filter[A126388(2*(n+1)), A379475(#)]`
-/

namespace A127662.P14754936256086222571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126388 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379475 (f1 j).toNat = 1) n)

end

end A127662.P14754936256086222571

/-! ## A127662.P2354850424860339592

`∩[A372566(n+1), A376592(n+1)]`
-/

namespace A127662.P2354850424860339592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372566 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127662.P2354850424860339592

/-! ## A127662.P9736283027774483684

`∩[A372566(n+1), A126388(n+2)]`
-/

namespace A127662.P9736283027774483684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372566 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126388 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127662.P9736283027774483684

/-! ## A127662.P1120188033097714758

`∩[3*n, ∪[A007357(n+1), A127663(n+1)]]`
-/

namespace A127662.P1120188033097714758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007357 (n + 1)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127663 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = (x : ℤ)) ∨ ∃ j, f4 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n

end

end A127662.P1120188033097714758

/-! ## A127662.P10481247505567950470

`A372566(3%comp[∑[n]]+n)%A219051(3*n+4)`
-/

namespace A127662.P10481247505567950470
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372566 (3 % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)) (A219051 (3 * n + 4))

end

end A127662.P10481247505567950470

/-!
# A127665: Numbers whose infinitary aliquot sequences end in an infinitary amicable pair.

The programs for A127665, there is no canonical definition to state claims against.
-/

/-! ## A127665.P18141515626304386280

`∩[∑[A324467(n+1)+3], A194282(n+3)]`
-/

namespace A127665.P18141515626304386280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324467 (n + 1) + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194282 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A127665.P18141515626304386280

/-!
# A127666: Odd infinitary abundant numbers.

The programs for A127666, there is no canonical definition to state claims against.
-/

/-! ## A127666.P6198120163321500939

`filter[A293186(n+1), A181183(#)]`
-/

namespace A127666.P6198120163321500939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A127666.P6198120163321500939

/-! ## A127666.P12050909539005511702

`A293186(A333214(n+1)%A091465(n))`
-/

namespace A127666.P12050909539005511702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293186 (Int.tmod (A333214 (n + 1)) (A091465 n)).toNat

end

end A127666.P12050909539005511702

/-! ## A127666.P361798249841696367

`record[A293186(A293390(3*n+1))]`
-/

namespace A127666.P361798249841696367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293186 (A293390 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127666.P361798249841696367

/-! ## A127666.P17598313405842350661

`record[A293186(A099244(n+4))]`
-/

namespace A127666.P17598313405842350661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293186 (A099244 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127666.P17598313405842350661

/-! ## A127666.P10842894481730560328

`record[A293186(A067029(n+5))]`
-/

namespace A127666.P10842894481730560328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293186 (A067029 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127666.P10842894481730560328

/-!
# A127668: Concatenated indices of primes in prime factorization of n.

The programs for A127668, there is no canonical definition to state claims against.
-/

/-! ## A127668.P13201152987597758764

`A037916(A181821(n+2))`
-/

namespace A127668.P13201152987597758764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037916 (A181821 (n + 2)).toNat

end

end A127668.P13201152987597758764

/-! ## A127668.P1555039233172038963

`A004186(A087712(n+2))`
-/

namespace A127668.P1555039233172038963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A087712 (n + 2)).toNat

end

end A127668.P1555039233172038963

/-! ## A127668.P2097616507421250962

`A333659(A087712(n+2)^A178334(n))`
-/

namespace A127668.P2097616507421250962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 (SequenceMachineLib.roundAway ((A087712 (n + 2) : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A127668.P2097616507421250962

/-! ## A127668.P2653009790136683125

`A333659(A087712(n+2)+A000038(n+4))`
-/

namespace A127668.P2653009790136683125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 (A087712 (n + 2) + A000038 (n + 4)).toNat

end

end A127668.P2653009790136683125

/-! ## A127668.P5639233032873847429

`A333659(A134452(2*n)+A087712(n+2))`
-/

namespace A127668.P5639233032873847429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 (A134452 (2 * n) + A087712 (n + 2)).toNat

end

end A127668.P5639233032873847429

/-!
# A127669: Number of numbers mapped to A127668(n) with the map described there.

The programs for A127669, there is no canonical definition to state claims against.
-/

/-! ## A127669.P9615248541741834836

`A193095(A052331(n+1))+A007318(A061142(n+2))`
-/

namespace A127669.P9615248541741834836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193095 (A052331 (n + 1)).toNat + A007318 (A061142 (n + 2)).toNat

end

end A127669.P9615248541741834836

/-! ## A127669.P4759431472390762116

`A061419(A001222(n+2))%A113285(n+1)`
-/

namespace A127669.P4759431472390762116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061419 (A001222 (n + 2)).toNat) (A113285 (n + 1))

end

end A127669.P4759431472390762116

/-! ## A127669.P9300049046056131290

`A000041(A001222(n+2)%A261466(n+1))`
-/

namespace A127669.P9300049046056131290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.tmod (A001222 (n + 2)) (A261466 (n + 1))).toNat

end

end A127669.P9300049046056131290

/-! ## A127669.P11651144590949203974

`A191455(A001222(n+2))%A070519(n+1)`
-/

namespace A127669.P11651144590949203974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191455 (A001222 (n + 2)).toNat) (A070519 (n + 1))

end

end A127669.P11651144590949203974

/-! ## A127669.P12081966094403938777

`A060119(A001222(n+2))%A256150(n+1)`
-/

namespace A127669.P12081966094403938777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060119 (A001222 (n + 2)).toNat) (A256150 (n + 1))

end

end A127669.P12081966094403938777

/-!
# A127670: Discriminants of Chebyshev S-polynomials A049310.

The programs for A127670, the canonical program `A127670.P7652741814885805241` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127670 has offset 1).

The definition of A127670 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127670.P7652741814885805241

`(n+2)^(n-1)*2^(n+1)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A127670

/-- `(n+2)^(n-1)*2^(n+1)` -/
def P7652741814885805241.Spec : Prop :=
  ∀ n, P7652741814885805241.a n = (A127670 (n + 1) : ℚ)

end A127670

/-! ## A127670.P12544410755587566005

`abs(A317403(n+2))`
-/

namespace A127670.P12544410755587566005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A317403 (n + 2)|

end

end A127670.P12544410755587566005

namespace A127670

/-- `abs(A317403(n+2))` -/
def P12544410755587566005.Spec : Prop :=
  ∀ n, P12544410755587566005.a n = A127670 (n + 1)

end A127670

/-! ## A127670.P429729062427298118

`A000079(n+1)/(n+2)^(1-n)`
-/

namespace A127670.P429729062427298118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) : ℚ) / (n + 2 : ℚ) ^ (1 - (n : ℤ) : ℤ)

end

end A127670.P429729062427298118

namespace A127670

/-- `A000079(n+1)/(n+2)^(1-n)` -/
def P429729062427298118.Spec : Prop :=
  ∀ n, P429729062427298118.a n = (A127670 (n + 1) : ℚ)

end A127670

/-! ## A127670.P8060591441668057568

`record[A089460(n)*A099627(n)]`
-/

namespace A127670.P8060591441668057568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089460 n * A099627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127670.P8060591441668057568

namespace A127670

/-- `record[A089460(n)*A099627(n)]` -/
def P8060591441668057568.Spec : Prop :=
  ∀ n, P8060591441668057568.a n = A127670 (n + 1)

end A127670

/-! ## A127670.P17179222152365446563

`record[A089460(n)*A130321(n)]`
-/

namespace A127670.P17179222152365446563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089460 n * A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127670.P17179222152365446563

namespace A127670

/-- `record[A089460(n)*A130321(n)]` -/
def P17179222152365446563.Spec : Prop :=
  ∀ n, P17179222152365446563.a n = A127670 (n + 1)

end A127670

/-! ## A127670.P16581873280721798118

`A097629(n+2)/(n+2)`
-/

namespace A127670.P16581873280721798118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097629 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A127670.P16581873280721798118

namespace A127670

/-- `A097629(n+2)/(n+2)` -/
def P16581873280721798118.Spec : Prop :=
  ∀ n, P16581873280721798118.a n = (A127670 (n + 1) : ℚ)

end A127670

/-!
# A127671: Cumulant expansion numbers: Coefficients in expansion of log(1 + Sum_{k>=1} x[k]*(t^k)/k!).

The programs for A127671, there is no canonical definition to state claims against.
-/

/-! ## A127671.P7301647401326260213

`A036040(n+1)*A264753(n+1)`
-/

namespace A127671.P7301647401326260213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (n + 1) * A264753 (n + 1)

end

end A127671.P7301647401326260213

/-! ## A127671.P15280820887893709007

`A036038(n+1)/A096162(n+1)*A264753(n+1)`
-/

namespace A127671.P15280820887893709007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036038 (n + 1) : ℚ) / (A096162 (n + 1) : ℚ) * (A264753 (n + 1) : ℚ)

end

end A127671.P15280820887893709007

/-! ## A127671.P13766687462659195788

`A036039(n+1)/A107106(n+1)*A264753(n+1)`
-/

namespace A127671.P13766687462659195788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036039 (n + 1) : ℚ) / (A107106 (n + 1) : ℚ) * (A264753 (n + 1) : ℚ)

end

end A127671.P13766687462659195788

/-! ## A127671.P5142436247445704

`A049009(n+1)/A178888(n+1)*A264753(n+1)`
-/

namespace A127671.P5142436247445704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049009 (n + 1) : ℚ) / (A178888 (n + 1) : ℚ) * (A264753 (n + 1) : ℚ)

end

end A127671.P5142436247445704

/-! ## A127671.P3872511425772388332

`A049009(n+1)/(A035206(n+1)*A096162(n+1))*A264753(n+1)`
-/

namespace A127671.P3872511425772388332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049009 (n + 1) : ℚ) / (A035206 (n + 1) * A096162 (n + 1) : ℚ) * (A264753 (n + 1) : ℚ)

end

end A127671.P3872511425772388332

/-! ## A127671.P10488631454239862332

`A124794(A185974(n+1))*A264753(n+1)`
-/

namespace A127671.P10488631454239862332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124794 (A185974 (n + 1)).toNat * A264753 (n + 1)

end

end A127671.P10488631454239862332

/-! ## A127671.P3100807254680201793

`A318808(2*A185974(n+1))/A096162(n+1)*A264753(n+1)`
-/

namespace A127671.P3100807254680201793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318808 (2 * A185974 (n + 1)).toNat : ℚ) / (A096162 (n + 1) : ℚ) * (A264753 (n + 1) : ℚ)

end

end A127671.P3100807254680201793

/-! ## A127671.P157132064079880630

`A318810(2*A185974(n+1))/A096162(n+1)*A264753(n+1)`
-/

namespace A127671.P157132064079880630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318810 (2 * A185974 (n + 1)).toNat : ℚ) / (A096162 (n + 1) : ℚ) * (A264753 (n + 1) : ℚ)

end

end A127671.P157132064079880630

/-! ## A127671.P7210449659683530563

`A264753(n+1)/A107106(n+1)*abs(A324254(n+1))`
-/

namespace A127671.P7210449659683530563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264753 (n + 1) : ℚ) / (A107106 (n + 1) : ℚ) * (|A324254 (n + 1)| : ℚ)

end

end A127671.P7210449659683530563

/-!
# A127672: Monic integer version of Chebyshev T-polynomials (increasing powers).

The programs for A127672, the canonical program `A127672.P859091229776486226` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127672 has offset 0).

The definition of A127672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127672.P8753036411401251279

`A108045(n)+C(2, n+2)`
-/

namespace A127672.P8753036411401251279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108045 n + (Nat.choose 2 (n + 2) : ℤ)

end

end A127672.P8753036411401251279

namespace A127672

/-- `A108045(n)+C(2, n+2)` -/
def P8753036411401251279.Spec : Prop :=
  ∀ n, P8753036411401251279.a n = A127672 n

end A127672

/-! ## A127672.P14797183252172250293

`A108045(n)+A000007(n)`
-/

namespace A127672.P14797183252172250293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108045 n + A000007 n

end

end A127672.P14797183252172250293

namespace A127672

/-- `A108045(n)+A000007(n)` -/
def P14797183252172250293.Spec : Prop :=
  ∀ n, P14797183252172250293.a n = A127672 n

end A127672

/-! ## A127672.P10806837145086744686

`A054977(n)*A108045(n)`
-/

namespace A127672.P10806837145086744686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A108045 n

end

end A127672.P10806837145086744686

namespace A127672

/-- `A054977(n)*A108045(n)` -/
def P10806837145086744686.Spec : Prop :=
  ∀ n, P10806837145086744686.a n = A127672 n

end A127672

/-! ## A127672.P859091229776486226

`A114525(n)*A117568(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A127672

/-- `A114525(n)*A117568(n)` -/
def P859091229776486226.Spec : Prop :=
  ∀ n, P859091229776486226.a n = A127672 n

theorem P859091229776486226.correct : P859091229776486226.Spec := by
  intro n
  simp only [A127672]

end A127672

/-! ## A127672.P13279956349764776087

`A108045(n)*A141044(n)`
-/

namespace A127672.P13279956349764776087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108045 n * A141044 n

end

end A127672.P13279956349764776087

namespace A127672

/-- `A108045(n)*A141044(n)` -/
def P13279956349764776087.Spec : Prop :=
  ∀ n, P13279956349764776087.a n = A127672 n

end A127672

/-! ## A127672.P1046287770117675389

`A114525(n)*A369736(n)`
-/

namespace A127672.P1046287770117675389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114525 n * A369736 n

end

end A127672.P1046287770117675389

namespace A127672

/-- `A114525(n)*A369736(n)` -/
def P1046287770117675389.Spec : Prop :=
  ∀ n, P1046287770117675389.a n = A127672 n

end A127672

/-! ## A127672.P6799301797515657236

`A114525(n)*A130194(n+1)`
-/

namespace A127672.P6799301797515657236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114525 n * A130194 (n + 1)

end

end A127672.P6799301797515657236

namespace A127672

/-- `A114525(n)*A130194(n+1)` -/
def P6799301797515657236.Spec : Prop :=
  ∀ n, P6799301797515657236.a n = A127672 n

end A127672

/-! ## A127672.P6700463441340581151

`A073044(n+1)*A369736(n)`
-/

namespace A127672.P6700463441340581151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073044 (n + 1) * A369736 n

end

end A127672.P6700463441340581151

namespace A127672

/-- `A073044(n+1)*A369736(n)` -/
def P6700463441340581151.Spec : Prop :=
  ∀ n, P6700463441340581151.a n = A127672 n

end A127672

/-! ## A127672.P9329257800549384389

`A108045(n)+A000038(n)/2`
-/

namespace A127672.P9329257800549384389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108045 n : ℚ) + (A000038 n : ℚ) / 2

end

end A127672.P9329257800549384389

namespace A127672

/-- `A108045(n)+A000038(n)/2` -/
def P9329257800549384389.Spec : Prop :=
  ∀ n, P9329257800549384389.a n = (A127672 n : ℚ)

end A127672

/-! ## A127672.P473185762646174196

`2*A053120(n)/A059268(n)`
-/

namespace A127672.P473185762646174196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A053120 n : ℚ) / (A059268 n : ℚ))

end

end A127672.P473185762646174196

namespace A127672

/-- `2*A053120(n)/A059268(n)` -/
def P473185762646174196.Spec : Prop :=
  ∀ n, P473185762646174196.a n = (A127672 n : ℚ)

end A127672

/-! ## A127672.P13346977460543867655

`A108045(n)+A012245(2*n+1)`
-/

namespace A127672.P13346977460543867655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108045 n + A012245 (2 * n + 1)

end

end A127672.P13346977460543867655

namespace A127672

/-- `A108045(n)+A012245(2*n+1)` -/
def P13346977460543867655.Spec : Prop :=
  ∀ n, P13346977460543867655.a n = A127672 n

end A127672

/-! ## A127672.P14487567680632073481

`gcd(2, A000040(n+1))*A108045(n)`
-/

namespace A127672.P14487567680632073481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 1)) : ℤ) * A108045 n

end

end A127672.P14487567680632073481

namespace A127672

/-- `gcd(2, A000040(n+1))*A108045(n)` -/
def P14487567680632073481.Spec : Prop :=
  ∀ n, P14487567680632073481.a n = A127672 n

end A127672

/-! ## A127672.P14695996845542625864

`A108045(n)+A000045(floor(1/(n+1)))`
-/

namespace A127672.P14695996845542625864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108045 n + A000045 ⌊1 / (n + 1 : ℚ)⌋.toNat

end

end A127672.P14695996845542625864

namespace A127672

/-- `A108045(n)+A000045(floor(1/(n+1)))` -/
def P14695996845542625864.Spec : Prop :=
  ∀ n, P14695996845542625864.a n = A127672 n

end A127672

/-! ## A127672.P5939491875402479022

`A108045(n)+1-A178334(A178334(n))`
-/

namespace A127672.P5939491875402479022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108045 n + (1 - A178334 (A178334 n).toNat)

end

end A127672.P5939491875402479022

namespace A127672

/-- `A108045(n)+1-A178334(A178334(n))` -/
def P5939491875402479022.Spec : Prop :=
  ∀ n, P5939491875402479022.a n = A127672 n

end A127672

/-! ## A127672.P13160147310037541855

`A108045(n)+A010054(A010054(n)+n)`
-/

namespace A127672.P13160147310037541855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108045 n + A010054 (A010054 n + (n : ℤ)).toNat

end

end A127672.P13160147310037541855

namespace A127672

/-- `A108045(n)+A010054(A010054(n)+n)` -/
def P13160147310037541855.Spec : Prop :=
  ∀ n, P13160147310037541855.a n = A127672 n

end A127672

/-! ## A127672.P1136085831679649891

`A108045(n)*A114525(n)/A123185(n)`
-/

namespace A127672.P1136085831679649891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108045 n * A114525 n : ℚ) / (A123185 n : ℚ)

end

end A127672.P1136085831679649891

namespace A127672

/-- `A108045(n)*A114525(n)/A123185(n)` -/
def P1136085831679649891.Spec : Prop :=
  ∀ n, P1136085831679649891.a n = (A127672 n : ℚ)

end A127672

/-! ## A127672.P146188539605863514

`A108069(2*n+1)+A108045(n)`
-/

namespace A127672.P146188539605863514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108069 (2 * n + 1) + A108045 n

end

end A127672.P146188539605863514

namespace A127672

/-- `A108069(2*n+1)+A108045(n)` -/
def P146188539605863514.Spec : Prop :=
  ∀ n, P146188539605863514.a n = A127672 n

end A127672

/-! ## A127672.P4524781946851450388

`A014963(A108059(n+2))*A108045(n)`
-/

namespace A127672.P4524781946851450388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A108059 (n + 2)).toNat * A108045 n

end

end A127672.P4524781946851450388

namespace A127672

/-- `A014963(A108059(n+2))*A108045(n)` -/
def P4524781946851450388.Spec : Prop :=
  ∀ n, P4524781946851450388.a n = A127672 n

end A127672

/-! ## A127672.P5829991855477771980

`A092028(A127338(n+1))+A108045(n)-2`
-/

namespace A127672.P5829991855477771980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092028 (A127338 (n + 1)).toNat + (A108045 n - 2)

end

end A127672.P5829991855477771980

namespace A127672

/-- `A092028(A127338(n+1))+A108045(n)-2` -/
def P5829991855477771980.Spec : Prop :=
  ∀ n, P5829991855477771980.a n = A127672 n

end A127672

/-!
# A127673: One half of even powers of 2*x in terms of Chebyshev's T-polynomials.

The programs for A127673, there is no canonical definition to state claims against.
-/

/-! ## A127673.P11942346899537683613

`A008314(2*n-(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A127673.P11942346899537683613
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008314 ((2 * n : ℤ) - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ))).toNat

end

end A127673.P11942346899537683613

/-! ## A127673.P11207744973460449416

`A008314(A061885(n))`
-/

namespace A127673.P11207744973460449416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008314 (A061885 n).toNat

end

end A127673.P11207744973460449416

/-! ## A127673.P17145294302471935268

`A380113(A061579(n))`
-/

namespace A127673.P17145294302471935268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380113 (A061579 n).toNat

end

end A127673.P17145294302471935268

/-! ## A127673.P309081464561354267

`A100257(eq[0, A155998(n)])`
-/

namespace A127673.P309081464561354267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A127673.P309081464561354267

/-! ## A127673.P7366904719979471123

`A008314(lt[0, A118175(n)])`
-/

namespace A127673.P7366904719979471123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A127673.P7366904719979471123

/-! ## A127673.P14347122932157353865

`A008314(eq[1, A118175(n)])`
-/

namespace A127673.P14347122932157353865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A127673.P14347122932157353865

/-! ## A127673.P194820423132116944

`A100257(lt[A155998(n), 1])`
-/

namespace A127673.P194820423132116944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100257 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A127673.P194820423132116944

/-! ## A127673.P8496004270304658909

`A008314(A057944(n)+n)`
-/

namespace A127673.P8496004270304658909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008314 (A057944 n + (n : ℤ)).toNat

end

end A127673.P8496004270304658909

/-! ## A127673.P11642048767214932515

`A008314(record[n*A118175(n)])`
-/

namespace A127673.P11642048767214932515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A118175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008314 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A127673.P11642048767214932515

/-! ## A127673.P3167784923783938871

`A008314(A004201(n+1)-1)`
-/

namespace A127673.P3167784923783938871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008314 (A004201 (n + 1) - 1).toNat

end

end A127673.P3167784923783938871

/-!
# A127674: Coefficient table for Chebyshev polynomials T(2*n,x) (increasing even powers x, without zeros).

The programs for A127674, the canonical program `A127674.P15909156756878056270` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127674 has offset 0).

The definition of A127674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127674.P15909156756878056270

`A008310(A061885(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A127674

/-- `A008310(A061885(n))` -/
def P15909156756878056270.Spec : Prop :=
  ∀ n, P15909156756878056270.a n = A127674 n

theorem P15909156756878056270.correct : P15909156756878056270.Spec := by
  intro n
  simp only [A127674]

end A127674

/-! ## A127674.P14130973354216067275

`A008310(eq[1, A118175(n)])`
-/

namespace A127674.P14130973354216067275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A127674.P14130973354216067275

namespace A127674

/-- `A008310(eq[1, A118175(n)])` -/
def P14130973354216067275.Spec : Prop :=
  ∀ n, P14130973354216067275.a n = A127674 n

end A127674

/-! ## A127674.P4307039221050594680

`A008310(A057944(n)+n)`
-/

namespace A127674.P4307039221050594680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008310 (A057944 n + (n : ℤ)).toNat

end

end A127674.P4307039221050594680

namespace A127674

/-- `A008310(A057944(n)+n)` -/
def P4307039221050594680.Spec : Prop :=
  ∀ n, P4307039221050594680.a n = A127674 n

end A127674

/-! ## A127674.P14866181738031550703

`A008310(2*n-A002262(n))`
-/

namespace A127674.P14866181738031550703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008310 ((2 * n : ℤ) - A002262 n).toNat

end

end A127674.P14866181738031550703

namespace A127674

/-- `A008310(2*n-A002262(n))` -/
def P14866181738031550703.Spec : Prop :=
  ∀ n, P14866181738031550703.a n = A127674 n

end A127674

/-! ## A127674.P8790446451731887074

`A008310(n-A002262(n)+n)`
-/

namespace A127674.P8790446451731887074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008310 ((n : ℤ) - A002262 n + (n : ℤ)).toNat

end

end A127674.P8790446451731887074

namespace A127674

/-- `A008310(n-A002262(n)+n)` -/
def P8790446451731887074.Spec : Prop :=
  ∀ n, P8790446451731887074.a n = A127674 n

end A127674

/-! ## A127674.P7959078367347163722

`A008310(n-(A002262(n)-n))`
-/

namespace A127674.P7959078367347163722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008310 ((n : ℤ) - (A002262 n - (n : ℤ))).toNat

end

end A127674.P7959078367347163722

namespace A127674

/-- `A008310(n-(A002262(n)-n))` -/
def P7959078367347163722.Spec : Prop :=
  ∀ n, P7959078367347163722.a n = A127674 n

end A127674

/-! ## A127674.P16854105398165716709

`A053120(A185868(n+1)-1)`
-/

namespace A127674.P16854105398165716709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 (A185868 (n + 1) - 1).toNat

end

end A127674.P16854105398165716709

namespace A127674

/-- `A053120(A185868(n+1)-1)` -/
def P16854105398165716709.Spec : Prop :=
  ∀ n, P16854105398165716709.a n = A127674 n

end A127674

/-! ## A127674.P16090503046475460840

`A053120(A003056(n)²+2*n)`
-/

namespace A127674.P16090503046475460840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 (A003056 n ^ 2 + (2 * n : ℤ)).toNat

end

end A127674.P16090503046475460840

namespace A127674

/-- `A053120(A003056(n)²+2*n)` -/
def P16090503046475460840.Spec : Prop :=
  ∀ n, P16090503046475460840.a n = A127674 n

end A127674

/-! ## A127674.P8346508805002023986

`A053120(comp[A002260(n+1)+n])`
-/

namespace A127674.P8346508805002023986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A127674.P8346508805002023986

namespace A127674

/-- `A053120(comp[A002260(n+1)+n])` -/
def P8346508805002023986.Spec : Prop :=
  ∀ n, P8346508805002023986.a n = A127674 n

end A127674

/-! ## A127674.P289310163602570787

`A137422(A185869(n+1))`
-/

namespace A127674.P289310163602570787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137422 (A185869 (n + 1)).toNat

end

end A127674.P289310163602570787

namespace A127674

/-- `A137422(A185869(n+1))` -/
def P289310163602570787.Spec : Prop :=
  ∀ n, P289310163602570787.a n = A127674 n

end A127674

/-! ## A127674.P203543312402013921

`A053120(eq[0, A155998(n)])`
-/

namespace A127674.P203543312402013921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A127674.P203543312402013921

namespace A127674

/-- `A053120(eq[0, A155998(n)])` -/
def P203543312402013921.Spec : Prop :=
  ∀ n, P203543312402013921.a n = A127674 n

end A127674

/-!
# A127675: Coefficient table for Chebyshev's U(2*n,x) polynomials in decreasing powers of (1-x^2).

The programs for A127675, there is no canonical definition to state claims against.
-/

/-! ## A127675.P10880550953793753309

`A082985(n)*A167314(A130321(n))`
-/

namespace A127675.P10880550953793753309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082985 n * A167314 (A130321 n).toNat

end

end A127675.P10880550953793753309

/-! ## A127675.P14420551686573958188

`A028298(A057944(n)+A038722(n+1))`
-/

namespace A127675.P14420551686573958188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028298 (A057944 n + A038722 (n + 1)).toNat

end

end A127675.P14420551686573958188

/-! ## A127675.P3365264517601911995

`A028298(A114327(n)+A004201(n+1))`
-/

namespace A127675.P3365264517601911995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028298 (A114327 n + A004201 (n + 1)).toNat

end

end A127675.P3365264517601911995

/-!
# A127676: Numerators of partial sums of a series for Pi*sqrt(2)/4.

The programs for A127676, there is no canonical definition to state claims against.
-/

/-! ## A127676.P15357871069723608615

`∑[A053641(∑[A245901(n+1)])]`
-/

namespace A127676.P15357871069723608615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245901 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053641 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127676.P15357871069723608615

/-!
# A127677: Scaled coefficient table for Chebyshev polynomials 2*T(2*n, sqrt(x)/2) (increasing even scaled powers, without zero entries).

The programs for A127677, the canonical program `A127677.P11101352811023800668` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127677 has offset 0).

The definition of A127677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127677.P11101352811023800668

`A110162(n)+A000007(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A127677

/-- `A110162(n)+A000007(n)` -/
def P11101352811023800668.Spec : Prop :=
  ∀ n, P11101352811023800668.a n = A127677 n

theorem P11101352811023800668.correct : P11101352811023800668.Spec := by
  intro n
  simp only [A127677]

end A127677

/-! ## A127677.P9162330133895784495

`A054977(n)*A110162(n)`
-/

namespace A127677.P9162330133895784495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A110162 n

end

end A127677.P9162330133895784495

namespace A127677

/-- `A054977(n)*A110162(n)` -/
def P9162330133895784495.Spec : Prop :=
  ∀ n, P9162330133895784495.a n = A127677 n

end A127677

/-! ## A127677.P3207008162184052805

`A000038(n)!*A110162(n)`
-/

namespace A127677.P3207008162184052805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) * A110162 n

end

end A127677.P3207008162184052805

namespace A127677

/-- `A000038(n)!*A110162(n)` -/
def P3207008162184052805.Spec : Prop :=
  ∀ n, P3207008162184052805.a n = A127677 n

end A127677

/-! ## A127677.P13384350665013403245

`A110162(n)+A010051(2*(n+1))`
-/

namespace A127677.P13384350665013403245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110162 n + A010051 (2 * (n + 1))

end

end A127677.P13384350665013403245

namespace A127677

/-- `A110162(n)+A010051(2*(n+1))` -/
def P13384350665013403245.Spec : Prop :=
  ∀ n, P13384350665013403245.a n = A127677 n

end A127677

/-! ## A127677.P17021315280126840229

`A110162(n)+A008683(A008574(n))`
-/

namespace A127677.P17021315280126840229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110162 n + A008683 (A008574 n).toNat

end

end A127677.P17021315280126840229

namespace A127677

/-- `A110162(n)+A008683(A008574(n))` -/
def P17021315280126840229.Spec : Prop :=
  ∀ n, P17021315280126840229.a n = A127677 n

end A127677

/-! ## A127677.P2180976985212085699

`A110162(n)+A039991(A057944(n)+1)`
-/

namespace A127677.P2180976985212085699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110162 n + A039991 (A057944 n + 1).toNat

end

end A127677.P2180976985212085699

namespace A127677

/-- `A110162(n)+A039991(A057944(n)+1)` -/
def P2180976985212085699.Spec : Prop :=
  ∀ n, P2180976985212085699.a n = A127677 n

end A127677

/-! ## A127677.P10884894755617079736

`A110162(n)-A008683(2*A008574(n))`
-/

namespace A127677.P10884894755617079736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110162 n - A008683 (2 * A008574 n).toNat

end

end A127677.P10884894755617079736

namespace A127677

/-- `A110162(n)-A008683(2*A008574(n))` -/
def P10884894755617079736.Spec : Prop :=
  ∀ n, P10884894755617079736.a n = A127677 n

end A127677

/-! ## A127677.P13663724655449353377

`A110162(n)+A127672(n)-A108045(n)`
-/

namespace A127677.P13663724655449353377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110162 n + (A127672 n - A108045 n)

end

end A127677.P13663724655449353377

namespace A127677

/-- `A110162(n)+A127672(n)-A108045(n)` -/
def P13663724655449353377.Spec : Prop :=
  ∀ n, P13663724655449353377.a n = A127677 n

end A127677

/-! ## A127677.P13892546557854419132

`A000034(Δ[A000040(n+1)])*A110162(n)`
-/

namespace A127677.P13892546557854419132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (f1 (n + 1) - f1 n).toNat * A110162 n

end

end A127677.P13892546557854419132

namespace A127677

/-- `A000034(Δ[A000040(n+1)])*A110162(n)` -/
def P13892546557854419132.Spec : Prop :=
  ∀ n, P13892546557854419132.a n = A127677 n

end A127677

/-! ## A127677.P5068677728734173662

`2/A059268(n)²*A127674(n)`
-/

namespace A127677.P5068677728734173662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A059268 n ^ 2 : ℚ) * (A127674 n : ℚ)

end

end A127677.P5068677728734173662

namespace A127677

/-- `2/A059268(n)²*A127674(n)` -/
def P5068677728734173662.Spec : Prop :=
  ∀ n, P5068677728734173662.a n = (A127677 n : ℚ)

end A127677

/-! ## A127677.P13618408563844618635

`2/A262616(A061579(n))*A127674(n)`
-/

namespace A127677.P13618408563844618635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A262616 (A061579 n).toNat : ℚ) * (A127674 n : ℚ)

end

end A127677.P13618408563844618635

namespace A127677

/-- `2/A262616(A061579(n))*A127674(n)` -/
def P13618408563844618635.Spec : Prop :=
  ∀ n, P13618408563844618635.a n = (A127677 n : ℚ)

end A127677

/-! ## A127677.P1346010024740496597

`A014963(A016825(n))*A110162(n)`
-/

namespace A127677.P1346010024740496597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A016825 n).toNat * A110162 n

end

end A127677.P1346010024740496597

namespace A127677

/-- `A014963(A016825(n))*A110162(n)` -/
def P1346010024740496597.Spec : Prop :=
  ∀ n, P1346010024740496597.a n = A127677 n

end A127677

/-! ## A127677.P7790037103401992792

`A001511(A000040(n+1))*A110162(n)`
-/

namespace A127677.P7790037103401992792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A000040 (n + 1)).toNat * A110162 n

end

end A127677.P7790037103401992792

namespace A127677

/-- `A001511(A000040(n+1))*A110162(n)` -/
def P7790037103401992792.Spec : Prop :=
  ∀ n, P7790037103401992792.a n = A127677 n

end A127677

/-! ## A127677.P12099523510923024069

`A000034(A000040(n+1)+1)*A110162(n)`
-/

namespace A127677.P12099523510923024069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A000040 (n + 1) + 1).toNat * A110162 n

end

end A127677.P12099523510923024069

namespace A127677

/-- `A000034(A000040(n+1)+1)*A110162(n)` -/
def P12099523510923024069.Spec : Prop :=
  ∀ n, P12099523510923024069.a n = A127677 n

end A127677

/-! ## A127677.P14513808513368164930

`A110162(n)+A008683((n+1)²)`
-/

namespace A127677.P14513808513368164930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110162 n + A008683 ((n + 1) ^ 2)

end

end A127677.P14513808513368164930

namespace A127677

/-- `A110162(n)+A008683((n+1)²)` -/
def P14513808513368164930.Spec : Prop :=
  ∀ n, P14513808513368164930.a n = A127677 n

end A127677

/-!
# A127678: a(n) = numerator of b(n), where b(1) = 1, b(n+1) = (sum{k=1 to n} b(k))/product{j=1 to n} b(j).

The programs for A127678, there is no canonical definition to state claims against.
-/

/-! ## A127678.P15881966442065496698

`A134119(A042343(n))+1`
-/

namespace A127678.P15881966442065496698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 (A042343 n).toNat + 1

end

end A127678.P15881966442065496698

/-! ## A127678.P3966970444705169813

`A002266(A042343(n)+6)`
-/

namespace A127678.P3966970444705169813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A042343 n + 6).toNat

end

end A127678.P3966970444705169813

/-! ## A127678.P18046182709272051983

`A210955(A052527(n+1)+1)`
-/

namespace A127678.P18046182709272051983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210955 (A052527 (n + 1) + 1).toNat

end

end A127678.P18046182709272051983

/-! ## A127678.P16351087934227723808

`A257639(A119388(n+1)+n)`
-/

namespace A127678.P16351087934227723808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A119388 (n + 1) + (n : ℤ)).toNat

end

end A127678.P16351087934227723808

/-! ## A127678.P7139880999685547454

`A000194(∑[∏[A105606(n+1)]])`
-/

namespace A127678.P7139880999685547454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105606 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127678.P7139880999685547454

/-!
# A127679: a(n) = denominator of b(n), where b(1) = 1, b(n+1) = (sum{k=1 to n} b(k))/product{j=1 to n} b(j).

The programs for A127679, there is no canonical definition to state claims against.
-/

/-! ## A127679.P4823237294262699425

`A306010(A006981(n))`
-/

namespace A127679.P4823237294262699425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306010 (A006981 n).toNat

end

end A127679.P4823237294262699425

/-! ## A127679.P10524040607253662394

`A241898(A148485(n))`
-/

namespace A127679.P10524040607253662394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241898 (A148485 n).toNat

end

end A127679.P10524040607253662394

/-! ## A127679.P16156642451961615493

`A249773(A148366(n))`
-/

namespace A127679.P16156642451961615493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249773 (A148366 n).toNat

end

end A127679.P16156642451961615493

/-! ## A127679.P12118821148257470713

`A094182(A360811(n))`
-/

namespace A127679.P12118821148257470713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094182 (A360811 n).toNat

end

end A127679.P12118821148257470713

/-! ## A127679.P18104480250311770336

`A367410(A300442(n))`
-/

namespace A127679.P18104480250311770336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367410 (A300442 n).toNat

end

end A127679.P18104480250311770336

/-!
# A127680: a(0) = 1; a(n+1) = Sum_{k=0..n} a(n-k)*a(floor(k/2)).

The programs for A127680, there is no canonical definition to state claims against.
-/

/-! ## A127680.P6550208199474257073

`A131935(n+1)-A028310(A183314(n+1))`
-/

namespace A127680.P6550208199474257073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131935 (n + 1) - A028310 (A183314 (n + 1)).toNat

end

end A127680.P6550208199474257073

/-! ## A127680.P3534157313694404258

`A112576(n+2)+3*A131322(n)-A028310(A183314(n+1))`
-/

namespace A127680.P3534157313694404258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112576 (n + 2) + 3 * A131322 n - A028310 (A183314 (n + 1)).toNat

end

end A127680.P3534157313694404258

/-! ## A127680.P15999746268222398968

`A028310(A112576(n+2)+3*A131322(n))%A183314(n+1)`
-/

namespace A127680.P15999746268222398968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (A112576 (n + 2) + 3 * A131322 n).toNat) (A183314 (n + 1))

end

end A127680.P15999746268222398968

/-! ## A127680.P7045285841316624915

`A243283(A275856(n)+A001383(n))`
-/

namespace A127680.P7045285841316624915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A275856 n + A001383 n).toNat

end

end A127680.P7045285841316624915

/-! ## A127680.P8804132768471675663

`A243283(A275856(n)+A129853(n))`
-/

namespace A127680.P8804132768471675663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A275856 n + A129853 n).toNat

end

end A127680.P8804132768471675663

/-!
# A127681: a(0) = 1. a(n+1) = sum{k=0 to n} a(n-k)*a(ceiling(k/2)).

The programs for A127681, there is no canonical definition to state claims against.
-/

/-! ## A127681.P8900840321507681351

`round(sqrt(A241339(∑[n+1])+1))`
-/

namespace A127681.P8900840321507681351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A241339 (∑ j ∈ Finset.range (n + 1), f1 j) + 1 : ℝ))

end

end A127681.P8900840321507681351

/-! ## A127681.P3418835343782497802

`A051742(A054664(n+1))`
-/

namespace A127681.P3418835343782497802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051742 (A054664 (n + 1)).toNat

end

end A127681.P3418835343782497802

/-! ## A127681.P4670679838733403655

`A185283(A101368(n+1))`
-/

namespace A127681.P4670679838733403655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A101368 (n + 1)).toNat

end

end A127681.P4670679838733403655

/-! ## A127681.P1062732483705611754

`A001462(A053637(2*n+1)-n)`
-/

namespace A127681.P1062732483705611754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A053637 (2 * n + 1) - (n : ℤ)).toNat

end

end A127681.P1062732483705611754

/-! ## A127681.P1694418648527742915

`A307464(n)+A185238(ceil(n²/2))`
-/

namespace A127681.P1694418648527742915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307464 n + A185238 ⌈(n ^ 2 : ℚ) / 2⌉.toNat

end

end A127681.P1694418648527742915

/-!
# A127682: Number of non-isomorphic (i.e., defined up to a rotation and a reflection) maximal independent sets of the n-cycle graph having at least one symmetry axis. Also: Number of cyclic and palindromic compositions of n in which each term is either 2 or 3.

The programs for A127682, the canonical program `A127682.P2283335698202892744` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127682 has offset 1).

The definition of A127682 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127682.P2283335698202892744

`a(n-4)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A127682

/-- `a(n-4)+a(n-6)` -/
def P2283335698202892744.Spec : Prop :=
  ∀ n, (P2283335698202892744.a n : ℤ) = A127682 (n + 1)

theorem P2283335698202892744.correct : P2283335698202892744.Spec := by
  intro n
  simp only [A127682, Nat.add_sub_cancel]

end A127682

/-! ## A127682.P12904840363780896241

`A000931(∑[1-a(n-1)]+4)` with `a(0)=0, a(1)=2`
-/

namespace A127682.P12904840363780896241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (∑ j ∈ Finset.range (n + 1), f1 j + 4).toNat

end

end A127682.P12904840363780896241

namespace A127682

/-- `A000931(∑[1-a(n-1)]+4)` -/
def P12904840363780896241.Spec : Prop :=
  ∀ n, P12904840363780896241.a n = A127682 (n + 1)

end A127682

/-! ## A127682.P16321907381715072958

`A182097(∑[3-a(n-1)*a(n-1)])` with `a(0)=1`
-/

namespace A127682.P16321907381715072958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  3 - f1 (n - 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127682.P16321907381715072958

namespace A127682

/-- `A182097(∑[3-a(n-1)*a(n-1)])` -/
def P16321907381715072958.Spec : Prop :=
  ∀ n, P16321907381715072958.a n = A127682 (n + 1)

end A127682

/-! ## A127682.P13226593975398805017

`A182097(A052938(n))`
-/

namespace A127682.P13226593975398805017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (A052938 n).toNat

end

end A127682.P13226593975398805017

namespace A127682

/-- `A182097(A052938(n))` -/
def P13226593975398805017.Spec : Prop :=
  ∀ n, P13226593975398805017.a n = A127682 (n + 1)

end A127682

/-! ## A127682.P14726100618828158105

`A000931(A052938(n)+3)`
-/

namespace A127682.P14726100618828158105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (A052938 n + 3).toNat

end

end A127682.P14726100618828158105

namespace A127682

/-- `A000931(A052938(n)+3)` -/
def P14726100618828158105.Spec : Prop :=
  ∀ n, P14726100618828158105.a n = A127682 (n + 1)

end A127682

/-! ## A127682.P15703201786521697503

`A182097(A028242(n+3))`
-/

namespace A127682.P15703201786521697503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (A028242 (n + 3)).toNat

end

end A127682.P15703201786521697503

namespace A127682

/-- `A182097(A028242(n+3))` -/
def P15703201786521697503.Spec : Prop :=
  ∀ n, P15703201786521697503.a n = A127682 (n + 1)

end A127682

/-! ## A127682.P9774462727233579137

`A078027(A028242(n+1)+6)`
-/

namespace A127682.P9774462727233579137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (A028242 (n + 1) + 6).toNat

end

end A127682.P9774462727233579137

namespace A127682

/-- `A078027(A028242(n+1)+6)` -/
def P9774462727233579137.Spec : Prop :=
  ∀ n, P9774462727233579137.a n = A127682 (n + 1)

end A127682

/-! ## A127682.P774028613179239543

`A182097(2-(A028242(n)-n))`
-/

namespace A127682.P774028613179239543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (2 - (A028242 n - (n : ℤ))).toNat

end

end A127682.P774028613179239543

namespace A127682

/-- `A182097(2-(A028242(n)-n))` -/
def P774028613179239543.Spec : Prop :=
  ∀ n, P774028613179239543.a n = A127682 (n + 1)

end A127682

/-! ## A127682.P5747830331545135743

`A000931(A302654(Δ[n²])+4)`
-/

namespace A127682.P5747830331545135743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (A302654 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 4).toNat

end

end A127682.P5747830331545135743

namespace A127682

/-- `A000931(A302654(Δ[n²])+4)` -/
def P5747830331545135743.Spec : Prop :=
  ∀ n, P5747830331545135743.a n = A127682 (n + 1)

end A127682

/-! ## A127682.P6895399405381814220

`A000931(A266616(2*n+1)+A008619(n+1))`
-/

namespace A127682.P6895399405381814220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (A266616 (2 * n + 1) + A008619 (n + 1)).toNat

end

end A127682.P6895399405381814220

namespace A127682

/-- `A000931(A266616(2*n+1)+A008619(n+1))` -/
def P6895399405381814220.Spec : Prop :=
  ∀ n, P6895399405381814220.a n = A127682 (n + 1)

end A127682

/-!
# A127683: Number of non-isomorphic (i.e., defined up to a rotation and a reflection) maximal independent sets of the n-cycle graph having 2n isomorphic representatives.

The programs for A127683, there is no canonical definition to state claims against.
-/

/-! ## A127683.P11527153200532084466

`A127686(n+1)-A010051(A089869(2*(n+2)))`
-/

namespace A127683.P11527153200532084466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127686 (n + 1) - A010051 (A089869 (2 * (n + 2))).toNat

end

end A127683.P11527153200532084466

/-! ## A127683.P5083321387642926102

`A127686(n+1)-A127686(A185977(2*n+5))`
-/

namespace A127683.P5083321387642926102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127686 (n + 1) - A127686 (A185977 (2 * n + 5)).toNat

end

end A127683.P5083321387642926102

/-! ## A127683.P14812643686653959888

`A127686(n+1)-A243827(A185264(n))`
-/

namespace A127683.P14812643686653959888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127686 (n + 1) - A243827 (A185264 n).toNat

end

end A127683.P14812643686653959888

/-! ## A127683.P5227931458398290344

`A127686(n+1)-A000007(A144879(n+1))`
-/

namespace A127683.P5227931458398290344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127686 (n + 1) - A000007 (A144879 (n + 1)).toNat

end

end A127683.P5227931458398290344

/-! ## A127683.P7432052194994109973

`A127686(A153679(n+1))`
-/

namespace A127683.P7432052194994109973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127686 (A153679 (n + 1)).toNat

end

end A127683.P7432052194994109973

/-!
# A127684: Number of non-isomorphic (i.e., defined up to a rotation and a reflection) maximal independent sets of the n-cycle graph having n isomorphic representatives.

The programs for A127684, there is no canonical definition to state claims against.
-/

/-! ## A127684.P5519187513275361934

`A107286(A113788(n+1)^6)`
-/

namespace A127684.P5519187513275361934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A113788 (n + 1) ^ 6).toNat

end

end A127684.P5519187513275361934

/-! ## A127684.P16978676213656424968

`gcd(A011862(A126869(n)), A113788(n+1))`
-/

namespace A127684.P16978676213656424968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A011862 (A126869 n).toNat) (A113788 (n + 1))

end

end A127684.P16978676213656424968

/-! ## A127684.P891067525541046153

`A113788(n+1)+A002448(A232076(n+1))`
-/

namespace A127684.P891067525541046153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113788 (n + 1) + A002448 (A232076 (n + 1)).toNat

end

end A127684.P891067525541046153

/-! ## A127684.P6908868900970501911

`A107286(A028877(n+1)*A113788(n+1))`
-/

namespace A127684.P6908868900970501911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A028877 (n + 1) * A113788 (n + 1)).toNat

end

end A127684.P6908868900970501911

/-! ## A127684.P14072102428550215132

`A113788(n+1)/A030559(A141072(n+1))`
-/

namespace A127684.P14072102428550215132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113788 (n + 1) : ℚ) / (A030559 (A141072 (n + 1)).toNat : ℚ)

end

end A127684.P14072102428550215132

/-!
# A127685: Number of non-isomorphic maximal independent sets of the n-cycle graph.

The programs for A127685, there is no canonical definition to state claims against.
-/

/-! ## A127685.P8457210098618940779

`A127686(n+1)+A127682(n+1)`
-/

namespace A127685.P8457210098618940779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127686 (n + 1) + A127682 (n + 1)

end

end A127685.P8457210098618940779

/-! ## A127685.P1662449462485881214

`A127687(n+1)-A127686(n+1)`
-/

namespace A127685.P1662449462485881214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127687 (n + 1) - A127686 (n + 1)

end

end A127685.P1662449462485881214

/-! ## A127685.P12019725425299726844

`(A127687(n+1)+A127682(n+1))/2`
-/

namespace A127685.P12019725425299726844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127687 (n + 1) + A127682 (n + 1) : ℚ) / 2

end

end A127685.P12019725425299726844

/-! ## A127685.P1727646210507492499

`A127682(n+1)+∑{d}[n+1, A127683(#)]`
-/

namespace A127685.P1727646210507492499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A127683 d

end

end A127685.P1727646210507492499

/-! ## A127685.P5172910851629927160

`A127687(n+1)-∑{d}[n+1, A127683(#)]`
-/

namespace A127685.P5172910851629927160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127687 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A127683 d

end

end A127685.P5172910851629927160

/-! ## A127685.P720484988109821644

`A182097(A052938(n))+A127686(n+1)`
-/

namespace A127685.P720484988109821644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (A052938 n).toNat + A127686 (n + 1)

end

end A127685.P720484988109821644

/-! ## A127685.P10352708697281389738

`A133034(A052938(n)+7)+A127686(n+1)`
-/

namespace A127685.P10352708697281389738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (A052938 n + 7).toNat + A127686 (n + 1)

end

end A127685.P10352708697281389738

/-! ## A127685.P3262966672391585109

`A133034(A060762(n+1)+6)+A127686(n+1)`
-/

namespace A127685.P3262966672391585109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (A060762 (n + 1) + 6).toNat + A127686 (n + 1)

end

end A127685.P3262966672391585109

/-! ## A127685.P17749752113343842688

`A127687(n+1)+A057428(n)*A127686(n+1)`
-/

namespace A127685.P17749752113343842688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127687 (n + 1) + A057428 n * A127686 (n + 1)

end

end A127685.P17749752113343842688

/-! ## A127685.P1806398593977468948

`A014682(A127687(n+1)+A127682(n+1))`
-/

namespace A127685.P1806398593977468948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A127687 (n + 1) + A127682 (n + 1)).toNat

end

end A127685.P1806398593977468948

/-!
# A127686: Number of non-isomorphic maximal independent sets of the n-cycle graph having no symmetry axis.

The programs for A127686, there is no canonical definition to state claims against.
-/

/-! ## A127686.P3694604810261088283

`A127685(n+1)-A127682(n+1)`
-/

namespace A127686.P3694604810261088283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127685 (n + 1) - A127682 (n + 1)

end

end A127686.P3694604810261088283

/-! ## A127686.P6827897354919027313

`∑{d}[n+1, A127683(#)]`
-/

namespace A127686.P6827897354919027313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A127683 d

end

end A127686.P6827897354919027313

/-! ## A127686.P8639503023847961322

`(A127687(n+1)-A127682(n+1))/2`
-/

namespace A127686.P8639503023847961322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127687 (n + 1) - A127682 (n + 1) : ℚ) / 2

end

end A127686.P8639503023847961322

/-! ## A127686.P1617687934598475602

`A127687(n+1)-A127685(n+1)`
-/

namespace A127686.P1617687934598475602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127687 (n + 1) - A127685 (n + 1)

end

end A127686.P1617687934598475602

/-! ## A127686.P16267393508625237185

`A127685(n+1)-A182097(A052938(n))`
-/

namespace A127686.P16267393508625237185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127685 (n + 1) - A182097 (A052938 n).toNat

end

end A127686.P16267393508625237185

/-! ## A127686.P1985337371933756298

`A014682(A127687(n+1)-A127682(n+1))`
-/

namespace A127686.P1985337371933756298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A127687 (n + 1) - A127682 (n + 1)).toNat

end

end A127686.P1985337371933756298

/-!
# A127687: Number of unlabeled maximal independent sets in the n-cycle graph.

The programs for A127687, there is no canonical definition to state claims against.
-/

/-! ## A127687.P18254157928261488193

`2*A127685(n+1)-A127682(n+1)`
-/

namespace A127687.P18254157928261488193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127685 (n + 1) - A127682 (n + 1)

end

end A127687.P18254157928261488193

/-! ## A127687.P4625079725909003427

`∑{d}[n+1, A113788(#)]`
-/

namespace A127687.P4625079725909003427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A113788 d

end

end A127687.P4625079725909003427

/-! ## A127687.P6793623034366404833

`A127682(n+1)+2*A127686(n+1)`
-/

namespace A127687.P6793623034366404833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (n + 1) + 2 * A127686 (n + 1)

end

end A127687.P6793623034366404833

/-! ## A127687.P17725921371911999463

`A182097(A052938(n))+2*A127686(n+1)`
-/

namespace A127687.P17725921371911999463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (A052938 n).toNat + 2 * A127686 (n + 1)

end

end A127687.P17725921371911999463

/-! ## A127687.P5488915296929132383

`∑{d}[n+1, A127683(#)]+A127686(n+1)+A127682(n+1)`
-/

namespace A127687.P5488915296929132383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A127683 d + (A127686 (n + 1) + A127682 (n + 1))

end

end A127687.P5488915296929132383

/-! ## A127687.P1196671312123053032

`A127686(n+1)+A133034(A060762(n+1)+6)+A127686(n+1)`
-/

namespace A127687.P1196671312123053032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127686 (n + 1) + (A133034 (A060762 (n + 1) + 6).toNat + A127686 (n + 1))

end

end A127687.P1196671312123053032

/-! ## A127687.P15444740168393514977

`A127686(n+1)+A127685(n+1)`
-/

namespace A127687.P15444740168393514977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127686 (n + 1) + A127685 (n + 1)

end

end A127687.P15444740168393514977

/-! ## A127687.P4827757330531788110

`2*A127685(n+1)-A182097(A052938(n))`
-/

namespace A127687.P4827757330531788110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127685 (n + 1) - A182097 (A052938 n).toNat

end

end A127687.P4827757330531788110

/-!
# A127688: a(n) = (n+1)^n - n!!.

The programs for A127688, there is no canonical definition to state claims against.
-/

/-! ## A127688.P6722962214599182146

`(n+1)^n-A006882(n)`
-/

namespace A127688.P6722962214599182146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n : ℤ) - A006882 n

end

end A127688.P6722962214599182146

/-! ## A127688.P1630535869968218635

`abs(A000169(n+1)-A006882(n))`
-/

namespace A127688.P1630535869968218635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000169 (n + 1) - A006882 n|

end

end A127688.P1630535869968218635

/-! ## A127688.P4692017108559525703

`record[A095888(n+1)-A230698(n)]`
-/

namespace A127688.P4692017108559525703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095888 (n + 1) - A230698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127688.P4692017108559525703

/-! ## A127688.P412207302589311994

`record[A201685(n+1)-A230698(n)]`
-/

namespace A127688.P412207302589311994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201685 (n + 1) - A230698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127688.P412207302589311994

/-! ## A127688.P14199680205642949079

`A000169(n+1)-A172089(A000124(n))`
-/

namespace A127688.P14199680205642949079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (n + 1) - A172089 (A000124 n).toNat

end

end A127688.P14199680205642949079

/-!
# A127689: a(1)=3; for n>1, a(n) is least number such that a(n) > a(n-1) and a(1)^2+...+a(n)^2 is a square.

The programs for A127689, there is no canonical definition to state claims against.
-/

/-! ## A127689.P5486684992982407322

`A077034((2*n)^A048766(n))`
-/

namespace A127689.P5486684992982407322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077034 (SequenceMachineLib.roundAway ((2 * n : ℚ) ^ (A048766 n : ℤ))).toNat

end

end A127689.P5486684992982407322

/-! ## A127689.P11746201673861460139

`filter[A077034(n+1), A336834(#)]`
-/

namespace A127689.P11746201673861460139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336834 (f1 j).toNat = 1) n)

end

end A127689.P11746201673861460139

/-! ## A127689.P11694769293422747013

`A077034(record[A330960(2*n+1)])`
-/

namespace A127689.P11694769293422747013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330960 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077034 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A127689.P11694769293422747013

/-! ## A127689.P8110311213657493137

`A077034(A028310(2*A024645(n)))`
-/

namespace A127689.P8110311213657493137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077034 (A028310 (2 * A024645 n).toNat).toNat

end

end A127689.P8110311213657493137

/-!
# A127690: a(1)=3; for n>1, a(n) is such that a(1)^2+...+a(n)^2 = (1+a(n))^2.

The programs for A127690, the canonical program `A127690.P8116849731895097430` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127690 has offset 1).

The definition of A127690 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127690.P8116849731895097430

`((a(n-1)+1)²-1)/2` with `a(0)=3, a(1)=4`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A127690

/-- `((a(n-1)+1)²-1)/2` -/
def P8116849731895097430.Spec : Prop :=
  ∀ n, P8116849731895097430.a n = (A127690 (n + 1) : ℚ)

end A127690

/-! ## A127690.P5837465964468299947

`floor((a(n-1)+1)²/2)` with `a(0)=3, a(1)=4`
-/

namespace A127690.P5837465964468299947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  ⌊((a (n - 1) + 1) ^ 2 : ℚ) / 2⌋

end

end A127690.P5837465964468299947

namespace A127690

/-- `floor((a(n-1)+1)²/2)` -/
def P5837465964468299947.Spec : Prop :=
  ∀ n, P5837465964468299947.a n = A127690 (n + 1)

end A127690

/-! ## A127690.P8549035056571182476

`floor(cosh(log((a(n-1)+1)²)))` with `a(0)=3, a(1)=4`
-/

namespace A127690.P8549035056571182476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  ⌊Real.cosh (Real.log ((a (n - 1) + 1) ^ 2 : ℝ))⌋

end

end A127690.P8549035056571182476

namespace A127690

/-- `floor(cosh(log((a(n-1)+1)²)))` -/
def P8549035056571182476.Spec : Prop :=
  ∀ n, P8549035056571182476.a n = A127690 (n + 1)

end A127690

/-! ## A127690.P17619069026200023500

`lcm(a(n-1)+2, a(n-1))` with `a(0)=3, a(1)=4`
-/

namespace A127690.P17619069026200023500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n a =>
  Nat.lcm (a (n - 1) + 2) (a (n - 1))

end

end A127690.P17619069026200023500

namespace A127690

/-- `lcm(a(n-1)+2, a(n-1))` -/
def P17619069026200023500.Spec : Prop :=
  ∀ n, (P17619069026200023500.a n : ℤ) = A127690 (n + 1)

end A127690

/-! ## A127690.P5509531151448468688

`(a(n-1)/2+1)*a(n-1)` with `a(0)=3, a(1)=4`
-/

namespace A127690.P5509531151448468688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 4] fun n a =>
  (a (n - 1) / 2 + 1) * a (n - 1)

end

end A127690.P5509531151448468688

namespace A127690

/-- `(a(n-1)/2+1)*a(n-1)` -/
def P5509531151448468688.Spec : Prop :=
  ∀ n, P5509531151448468688.a n = (A127690 (n + 1) : ℚ)

end A127690

/-!
# A127691: a(n) = (2*n+1)^n-(2*n-1)^n-(2*n)^n.

The programs for A127691, the canonical program `A127691.P3104050212613359836` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127691 has offset 0).

The definition of A127691 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)^n-(2*n-1)^n-(2*n)^n` (program `A127691.P3104050212613359836`, by `A127691.P3104050212613359836.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127691.P3104050212613359836

`(2*n+1)^n-(2*n-1)^n-(2*n)^n`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A127691

/-- `(2*n+1)^n-(2*n-1)^n-(2*n)^n` -/
def P3104050212613359836.Spec : Prop :=
  ∀ n, P3104050212613359836.a n = A127691 n

theorem P3104050212613359836.correct : P3104050212613359836.Spec := by
  intro n
  simp only [A127691]

end A127691

/-!
# A127692: Expansion of psi(x^4) + x * psi(x^12) in powers of x where psi() is a Ramanujan theta function.

The programs for A127692, the canonical program `A127692.P7090629106890667422` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127692 has offset 0).

The definition of A127692 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A195198, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A127692.P7090629106890667422

`A195198(2*n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A127692

/-- `A195198(2*n+1)` -/
def P7090629106890667422.Spec : Prop :=
  ∀ n, P7090629106890667422.a n = A127692 n

theorem P7090629106890667422.correct : P7090629106890667422.Spec := by
  intro n
  simp only [A127692]

end A127692

/-! ## A127692.P95598849896860295

`abs(A214505(n))`
-/

namespace A127692.P95598849896860295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A214505 n|

end

end A127692.P95598849896860295

namespace A127692

/-- `abs(A214505(n))` -/
def P95598849896860295.Spec : Prop :=
  ∀ n, P95598849896860295.a n = A127692 n

end A127692

/-! ## A127692.P2475124299005465935

`A033762(n)%2`
-/

namespace A127692.P2475124299005465935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033762 n) 2

end

end A127692.P2475124299005465935

namespace A127692

/-- `A033762(n)%2` -/
def P2475124299005465935.Spec : Prop :=
  ∀ n, P2475124299005465935.a n = A127692 n

end A127692

/-! ## A127692.P13786424367171090312

`A122071(n)%2`
-/

namespace A127692.P13786424367171090312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122071 n) 2

end

end A127692.P13786424367171090312

namespace A127692

/-- `A122071(n)%2` -/
def P13786424367171090312.Spec : Prop :=
  ∀ n, P13786424367171090312.a n = A127692 n

end A127692

/-! ## A127692.P7475560984834397472

`A125079(n)%2`
-/

namespace A127692.P7475560984834397472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125079 n) 2

end

end A127692.P7475560984834397472

namespace A127692

/-- `A125079(n)%2` -/
def P7475560984834397472.Spec : Prop :=
  ∀ n, P7475560984834397472.a n = A127692 n

end A127692

/-! ## A127692.P1649657619522533644

`A129402(n)%2`
-/

namespace A127692.P1649657619522533644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129402 n) 2

end

end A127692.P1649657619522533644

namespace A127692

/-- `A129402(n)%2` -/
def P1649657619522533644.Spec : Prop :=
  ∀ n, P1649657619522533644.a n = A127692 n

end A127692

/-! ## A127692.P7991991497654112146

`A134177(n)%2`
-/

namespace A127692.P7991991497654112146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134177 n) 2

end

end A127692.P7991991497654112146

namespace A127692

/-- `A134177(n)%2` -/
def P7991991497654112146.Spec : Prop :=
  ∀ n, P7991991497654112146.a n = A127692 n

end A127692

/-! ## A127692.P16563107192049607290

`A138741(n)%2`
-/

namespace A127692.P16563107192049607290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138741 n) 2

end

end A127692.P16563107192049607290

namespace A127692

/-- `A138741(n)%2` -/
def P16563107192049607290.Spec : Prop :=
  ∀ n, P16563107192049607290.a n = A127692 n

end A127692

/-! ## A127692.P8410066444087575538

`A185717(n)%2`
-/

namespace A127692.P8410066444087575538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185717 n) 2

end

end A127692.P8410066444087575538

namespace A127692

/-- `A185717(n)%2` -/
def P8410066444087575538.Spec : Prop :=
  ∀ n, P8410066444087575538.a n = A127692 n

end A127692

/-! ## A127692.P16132798054028458343

`A260109(n)%2`
-/

namespace A127692.P16132798054028458343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260109 n) 2

end

end A127692.P16132798054028458343

namespace A127692

/-- `A260109(n)%2` -/
def P16132798054028458343.Spec : Prop :=
  ∀ n, P16132798054028458343.a n = A127692 n

end A127692

/-! ## A127692.P9149754328657500399

`A262780(n)%2`
-/

namespace A127692.P9149754328657500399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262780 n) 2

end

end A127692.P9149754328657500399

namespace A127692

/-- `A262780(n)%2` -/
def P9149754328657500399.Spec : Prop :=
  ∀ n, P9149754328657500399.a n = A127692 n

end A127692

/-! ## A127692.P12338569391071248644

`A270640(n)%2`
-/

namespace A127692.P12338569391071248644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270640 n) 2

end

end A127692.P12338569391071248644

namespace A127692

/-- `A270640(n)%2` -/
def P12338569391071248644.Spec : Prop :=
  ∀ n, P12338569391071248644.a n = A127692 n

end A127692

/-! ## A127692.P16301700326561844466

`A298932(n)%2`
-/

namespace A127692.P16301700326561844466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298932 n) 2

end

end A127692.P16301700326561844466

namespace A127692

/-- `A298932(n)%2` -/
def P16301700326561844466.Spec : Prop :=
  ∀ n, P16301700326561844466.a n = A127692 n

end A127692

/-! ## A127692.P8653254043954687594

`and(1, A030188(n))`
-/

namespace A127692.P8653254043954687594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A030188 n)

end

end A127692.P8653254043954687594

namespace A127692

/-- `and(1, A030188(n))` -/
def P8653254043954687594.Spec : Prop :=
  ∀ n, P8653254043954687594.a n = A127692 n

end A127692

/-! ## A127692.P5423738351427041511

`and(1, A030208(n))`
-/

namespace A127692.P5423738351427041511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A030208 n)

end

end A127692.P5423738351427041511

namespace A127692

/-- `and(1, A030208(n))` -/
def P5423738351427041511.Spec : Prop :=
  ∀ n, P5423738351427041511.a n = A127692 n

end A127692

/-! ## A127692.P17260992865202190338

`and(1, A116604(n))`
-/

namespace A127692.P17260992865202190338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A116604 n)

end

end A127692.P17260992865202190338

namespace A127692

/-- `and(1, A116604(n))` -/
def P17260992865202190338.Spec : Prop :=
  ∀ n, P17260992865202190338.a n = A127692 n

end A127692

/-! ## A127692.P16680812916618256972

`and(1, A128580(n))`
-/

namespace A127692.P16680812916618256972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A128580 n)

end

end A127692.P16680812916618256972

namespace A127692

/-- `and(1, A128580(n))` -/
def P16680812916618256972.Spec : Prop :=
  ∀ n, P16680812916618256972.a n = A127692 n

end A127692

/-! ## A127692.P12132789435666527627

`and(1, A129447(n))`
-/

namespace A127692.P12132789435666527627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A129447 n)

end

end A127692.P12132789435666527627

namespace A127692

/-- `and(1, A129447(n))` -/
def P12132789435666527627.Spec : Prop :=
  ∀ n, P12132789435666527627.a n = A127692 n

end A127692

/-! ## A127692.P18161958837237514688

`and(1, A129449(n))`
-/

namespace A127692.P18161958837237514688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A129449 n)

end

end A127692.P18161958837237514688

namespace A127692

/-- `and(1, A129449(n))` -/
def P18161958837237514688.Spec : Prop :=
  ∀ n, P18161958837237514688.a n = A127692 n

end A127692

/-! ## A127692.P7425864069593504177

`and(1, A134077(n))`
-/

namespace A127692.P7425864069593504177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A134077 n)

end

end A127692.P7425864069593504177

namespace A127692

/-- `and(1, A134077(n))` -/
def P7425864069593504177.Spec : Prop :=
  ∀ n, P7425864069593504177.a n = A127692 n

end A127692

/-!
# A127693: Expansion of psi(x^2) + x * psi(x^10) in powers of x where psi() is a Ramanujan theta function.

The programs for A127693, the canonical program `A127693.P9222827015959222163` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127693 has offset 0).

The definition of A127693 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127693.P6270480761554909374

`abs(A214960(n))`
-/

namespace A127693.P6270480761554909374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A214960 n|

end

end A127693.P6270480761554909374

namespace A127693

/-- `abs(A214960(n))` -/
def P6270480761554909374.Spec : Prop :=
  ∀ n, P6270480761554909374.a n = A127693 n

end A127693

/-! ## A127693.P9222827015959222163

`A122190(n)%2`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A127693

/-- `A122190(n)%2` -/
def P9222827015959222163.Spec : Prop :=
  ∀ n, P9222827015959222163.a n = A127693 n

theorem P9222827015959222163.correct : P9222827015959222163.Spec := by
  intro n
  simp only [A127693]

end A127693

/-! ## A127693.P13011701479099180176

`and(1, A030202(n))`
-/

namespace A127693.P13011701479099180176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A030202 n)

end

end A127693.P13011701479099180176

namespace A127693

/-- `and(1, A030202(n))` -/
def P13011701479099180176.Spec : Prop :=
  ∀ n, P13011701479099180176.a n = A127693 n

end A127693

/-! ## A127693.P7127399294191300284

`and(1, A147699(n))`
-/

namespace A127693.P7127399294191300284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A147699 n)

end

end A127693.P7127399294191300284

namespace A127693

/-- `and(1, A147699(n))` -/
def P7127399294191300284.Spec : Prop :=
  ∀ n, P7127399294191300284.a n = A127693 n

end A127693

/-! ## A127693.P16618115868256892766

`and(1, A159818(n))`
-/

namespace A127693.P16618115868256892766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A159818 n)

end

end A127693.P16618115868256892766

namespace A127693

/-- `and(1, A159818(n))` -/
def P16618115868256892766.Spec : Prop :=
  ∀ n, P16618115868256892766.a n = A127693 n

end A127693

/-! ## A127693.P8332255097461557365

`and(1, A214316(n))`
-/

namespace A127693.P8332255097461557365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A214316 n)

end

end A127693.P8332255097461557365

namespace A127693

/-- `and(1, A214316(n))` -/
def P8332255097461557365.Spec : Prop :=
  ∀ n, P8332255097461557365.a n = A127693 n

end A127693

/-! ## A127693.P6739465412906078786

`A000035(A030202(n)²)`
-/

namespace A127693.P6739465412906078786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A030202 n ^ 2).toNat

end

end A127693.P6739465412906078786

namespace A127693

/-- `A000035(A030202(n)²)` -/
def P6739465412906078786.Spec : Prop :=
  ∀ n, P6739465412906078786.a n = A127693 n

end A127693

/-! ## A127693.P18400210521825941340

`A075553(A030202(n)²)`
-/

namespace A127693.P18400210521825941340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075553 (A030202 n ^ 2).toNat

end

end A127693.P18400210521825941340

namespace A127693

/-- `A075553(A030202(n)²)` -/
def P18400210521825941340.Spec : Prop :=
  ∀ n, P18400210521825941340.a n = A127693 n

end A127693

/-! ## A127693.P7314767011149541158

`A089800(n)-A214960(n)`
-/

namespace A127693.P7314767011149541158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089800 n - A214960 n

end

end A127693.P7314767011149541158

namespace A127693

/-- `A089800(n)-A214960(n)` -/
def P7314767011149541158.Spec : Prop :=
  ∀ n, P7314767011149541158.a n = A127693 n

end A127693

/-! ## A127693.P4950403984849103019

`A033999(n)*A214960(n)`
-/

namespace A127693.P4950403984849103019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A214960 n

end

end A127693.P4950403984849103019

namespace A127693

/-- `A033999(n)*A214960(n)` -/
def P4950403984849103019.Spec : Prop :=
  ∀ n, P4950403984849103019.a n = A127693 n

end A127693

/-! ## A127693.P7496106517999198175

`gcd(A000038(n), A214960(n))`
-/

namespace A127693.P7496106517999198175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A214960 n)

end

end A127693.P7496106517999198175

namespace A127693

/-- `gcd(A000038(n), A214960(n))` -/
def P7496106517999198175.Spec : Prop :=
  ∀ n, (P7496106517999198175.a n : ℤ) = A127693 n

end A127693

/-! ## A127693.P18064006424241975823

`and(A016760(n), A122190(n))`
-/

namespace A127693.P18064006424241975823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A122190 n)

end

end A127693.P18064006424241975823

namespace A127693

/-- `and(A016760(n), A122190(n))` -/
def P18064006424241975823.Spec : Prop :=
  ∀ n, P18064006424241975823.a n = A127693 n

end A127693

/-! ## A127693.P6476627209872751172

`A000034(A030202(n)²)-1`
-/

namespace A127693.P6476627209872751172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A030202 n ^ 2).toNat - 1

end

end A127693.P6476627209872751172

namespace A127693

/-- `A000034(A030202(n)²)-1` -/
def P6476627209872751172.Spec : Prop :=
  ∀ n, P6476627209872751172.a n = A127693 n

end A127693

/-! ## A127693.P5231991570312275887

`A010693(A159818(n)²)-2`
-/

namespace A127693.P5231991570312275887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 (A159818 n ^ 2).toNat - 2

end

end A127693.P5231991570312275887

namespace A127693

/-- `A010693(A159818(n)²)-2` -/
def P5231991570312275887.Spec : Prop :=
  ∀ n, P5231991570312275887.a n = A127693 n

end A127693

/-! ## A127693.P609811199356354507

`lcm(A008836(n+1), A214960(n))`
-/

namespace A127693.P609811199356354507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A214960 n)

end

end A127693.P609811199356354507

namespace A127693

/-- `lcm(A008836(n+1), A214960(n))` -/
def P609811199356354507.Spec : Prop :=
  ∀ n, (P609811199356354507.a n : ℤ) = A127693 n

end A127693

/-! ## A127693.P9874999792106851258

`(A214960(n)^A000040(n+1))²`
-/

namespace A127693.P9874999792106851258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A214960 n : ℚ) ^ (A000040 (n + 1) : ℤ)) ^ 2

end

end A127693.P9874999792106851258

namespace A127693

/-- `(A214960(n)^A000040(n+1))²` -/
def P9874999792106851258.Spec : Prop :=
  ∀ n, P9874999792106851258.a n = (A127693 n : ℚ)

end A127693

/-! ## A127693.P17285329773145694635

`A145722(n)%2`
-/

namespace A127693.P17285329773145694635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145722 n) 2

end

end A127693.P17285329773145694635

namespace A127693

/-- `A145722(n)%2` -/
def P17285329773145694635.Spec : Prop :=
  ∀ n, P17285329773145694635.a n = A127693 n

end A127693

/-! ## A127693.P5936198236395910606

`A036026(2*n)%2`
-/

namespace A127693.P5936198236395910606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036026 (2 * n)) 2

end

end A127693.P5936198236395910606

namespace A127693

/-- `A036026(2*n)%2` -/
def P5936198236395910606.Spec : Prop :=
  ∀ n, P5936198236395910606.a n = A127693 n

end A127693

/-! ## A127693.P11569222428403772317

`A129390(2*n)%2`
-/

namespace A127693.P11569222428403772317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129390 (2 * n)) 2

end

end A127693.P11569222428403772317

namespace A127693

/-- `A129390(2*n)%2` -/
def P11569222428403772317.Spec : Prop :=
  ∀ n, P11569222428403772317.a n = A127693 n

end A127693

/-! ## A127693.P12716753947593430414

`A129391(2*n)%2`
-/

namespace A127693.P12716753947593430414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129391 (2 * n)) 2

end

end A127693.P12716753947593430414

namespace A127693

/-- `A129391(2*n)%2` -/
def P12716753947593430414.Spec : Prop :=
  ∀ n, P12716753947593430414.a n = A127693 n

end A127693

/-!
# A127694: Absolute value of coefficient of x^3 in polynomial whose zeros are 5 consecutive integers starting with the n-th integer.

The programs for A127694, the canonical program `A127694.P3181652948707463985` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127694 has offset 1).

The definition of A127694 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127694.P3181652948707463985

`5*(n+4)*(2*(n+1)²+12*(n+1)+15)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A127694

/-- `5*(n+4)*(2*(n+1)²+12*(n+1)+15)` -/
def P3181652948707463985.Spec : Prop :=
  ∀ n, (P3181652948707463985.a n : ℤ) = A127694 (n + 1)

theorem P3181652948707463985.correct : P3181652948707463985.Spec := by
  intro n
  simp only [A127694, Nat.add_sub_cancel]

end A127694

/-! ## A127694.P4983127086606783950

`Δ[A005891((n+3)²+n+1)]`
-/

namespace A127694.P4983127086606783950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 ((n + 3) ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127694.P4983127086606783950

namespace A127694

/-- `Δ[A005891((n+3)²+n+1)]` -/
def P4983127086606783950.Spec : Prop :=
  ∀ n, P4983127086606783950.a n = A127694 (n + 1)

end A127694

/-! ## A127694.P16562479134166729006

`Δ[A028895((n+3)²+n+1)]`
-/

namespace A127694.P16562479134166729006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028895 ((n + 3) ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127694.P16562479134166729006

namespace A127694

/-- `Δ[A028895((n+3)²+n+1)]` -/
def P16562479134166729006.Spec : Prop :=
  ∀ n, P16562479134166729006.a n = A127694 (n + 1)

end A127694

/-! ## A127694.P9133213556536134631

`Δ[A166137((n+3)²+n+1)]`
-/

namespace A127694.P9133213556536134631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166137 ((n + 3) ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127694.P9133213556536134631

namespace A127694

/-- `Δ[A166137((n+3)²+n+1)]` -/
def P9133213556536134631.Spec : Prop :=
  ∀ n, P9133213556536134631.a n = A127694 (n + 1)

end A127694

/-! ## A127694.P3452761415068609665

`Δ[A166151((n+3)²+n+1)]`
-/

namespace A127694.P3452761415068609665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166151 ((n + 3) ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127694.P3452761415068609665

namespace A127694

/-- `Δ[A166151((n+3)²+n+1)]` -/
def P3452761415068609665.Spec : Prop :=
  ∀ n, P3452761415068609665.a n = A127694 (n + 1)

end A127694

/-!
# A127695: Floor( 2*(2*n+1)^n*sinh(1/2) ) - (2*n+2)^n + (2*n)^n.

The programs for A127695, the canonical program `A127695.P15386563671908032217` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127695 has offset 0).

The definition of A127695 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2*(2*n+1)^n*sinh(1/2))-(2*n+2)^n+(2*n)^n` (program `A127695.P15386563671908032217`, by `A127695.P15386563671908032217.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127695.P15386563671908032217

`floor(2*(2*n+1)^n*sinh(1/2))-(2*n+2)^n+(2*n)^n`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A127695

/-- `floor(2*(2*n+1)^n*sinh(1/2))-(2*n+2)^n+(2*n)^n` -/
def P15386563671908032217.Spec : Prop :=
  ∀ n, P15386563671908032217.a n = A127695 n

theorem P15386563671908032217.correct : P15386563671908032217.Spec := by
  intro n
  simp only [A127695]

end A127695

/-!
# A127696: a(n) = (2*n)^n+(2*n+1)^n-(2*n+2)^n.

The programs for A127696, the canonical program `A127696.P17685125363644271183` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127696 has offset 0).

The definition of A127696 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n)^n+(2*n+1)^n-(2*n+2)^n` (program `A127696.P17685125363644271183`, by `A127696.P17685125363644271183.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127696.P17685125363644271183

`(2*n)^n+(2*n+1)^n-(2*n+2)^n`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A127696

/-- `(2*n)^n+(2*n+1)^n-(2*n+2)^n` -/
def P17685125363644271183.Spec : Prop :=
  ∀ n, P17685125363644271183.a n = A127696 n

theorem P17685125363644271183.correct : P17685125363644271183.Spec := by
  intro n
  simp only [A127696]

end A127696

/-!
# A127697: Number of permutations of [n] where adjacent elements differ in value by 3 or more.

The programs for A127697, there is no canonical definition to state claims against.
-/

/-! ## A127697.P5009718871873243229

`and(A233807(n), A353877(A078213(n+1)))`
-/

namespace A127697.P5009718871873243229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A233807 n) (A353877 (A078213 (n + 1)).toNat)

end

end A127697.P5009718871873243229

/-!
# A127698: Sum of n-th triangular number and its reversal.

The programs for A127698, there is no canonical definition to state claims against.
-/

/-! ## A127698.P2517540393380376221

`A000217(n)+A004086(A000217(n))`
-/

namespace A127698.P2517540393380376221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + A004086 (A000217 n).toNat

end

end A127698.P2517540393380376221

/-! ## A127698.P14821291032509799292

`A004158(n)+∑[n]`
-/

namespace A127698.P14821291032509799292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004158 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A127698.P14821291032509799292

/-! ## A127698.P17207342612312003709

`A161680(n+1)+A004158(n)`
-/

namespace A127698.P17207342612312003709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 1) + A004158 n

end

end A127698.P17207342612312003709

/-! ## A127698.P10038014497944237099

`A245467(2*n)+A004158(n)`
-/

namespace A127698.P10038014497944237099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245467 (2 * n) + A004158 n

end

end A127698.P10038014497944237099

/-! ## A127698.P16137047397941796704

`A004086(∑[n])+∑[n]`
-/

namespace A127698.P16137047397941796704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (∑ j ∈ Finset.range (n + 1), f1 j) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A127698.P16137047397941796704

/-! ## A127698.P7094581753797538352

`(n²+n)/2+A004086((n²+n)/2)`
-/

namespace A127698.P7094581753797538352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℚ) / 2 + (A004086 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat : ℚ)

end

end A127698.P7094581753797538352

/-! ## A127698.P12805607899221539587

`A056964(∑[n])`
-/

namespace A127698.P12805607899221539587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127698.P12805607899221539587

/-! ## A127698.P11554001412601900373

`lcm((-1)^n, A056964(C(n+1, 2)))`
-/

namespace A127698.P11554001412601900373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A056964 (Nat.choose (n + 1) 2))

end

end A127698.P11554001412601900373

/-! ## A127698.P2532399184511082237

`A000041(C(2, n+1))*A056964(C(n+1, 2))`
-/

namespace A127698.P2532399184511082237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 1)) * A056964 (Nat.choose (n + 1) 2)

end

end A127698.P2532399184511082237

/-! ## A127698.P8963861105712895146

`A056964(A000217(n))*A057427(n)`
-/

namespace A127698.P8963861105712895146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A000217 n).toNat * A057427 n

end

end A127698.P8963861105712895146

/-! ## A127698.P10756325678617494567

`A056964(A000217(n))%A000580(n+7)`
-/

namespace A127698.P10756325678617494567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056964 (A000217 n).toNat) (A000580 (n + 7))

end

end A127698.P10756325678617494567

/-! ## A127698.P12103153928331956441

`A056964(A000217(n))+A008683(16*(n+1))`
-/

namespace A127698.P12103153928331956441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A000217 n).toNat + A008683 (16 * (n + 1))

end

end A127698.P12103153928331956441

/-!
# A127699: Length of period of the sequence (1^1^1^..., 2^2^2^..., 3^3^3^..., 4^4^4^..., ...) modulo n.

The programs for A127699, there is no canonical definition to state claims against.
-/

/-! ## A127699.P14729654048289017378

`lcm(n+1, a(A060681(n+1)-1))` with `a(0)=1`
-/

namespace A127699.P14729654048289017378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (n + 1) (a (A060681 (n + 1) - 1).toNat)

end

end A127699.P14729654048289017378

/-! ## A127699.P3437920748923178447

`lcm(xor(n, -1), a(n-A032742(n+1)))` with `a(0)=1`
-/

namespace A127699.P3437920748923178447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (Int.xor (n : ℤ) (-1)) (a ((n : ℤ) - A032742 (n + 1)).toNat : ℤ)

end

end A127699.P3437920748923178447

/-! ## A127699.P9304560553009561757

`lcm(n+1, a(A023443(A002322(n+1))))` with `a(0)=1`
-/

namespace A127699.P9304560553009561757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (n + 1) (a (A023443 (A002322 (n + 1)).toNat).toNat)

end

end A127699.P9304560553009561757

/-! ## A127699.P3558048974860835566

`lcm(A057427(n)+n, a(A011773(n+1)-1))` with `a(0)=1`
-/

namespace A127699.P3558048974860835566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (A057427 n + (n : ℤ)) (a (A011773 (n + 1) - 1).toNat : ℤ)

end

end A127699.P3558048974860835566

/-! ## A127699.P18314435220562923373

`lcm(A011773(A113766(n+1)), A174824(n+1))`
-/

namespace A127699.P18314435220562923373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011773 (A113766 (n + 1)).toNat) (A174824 (n + 1))

end

end A127699.P18314435220562923373

