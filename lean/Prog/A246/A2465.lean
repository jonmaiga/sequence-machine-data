import SequenceMachineLib
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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
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

/-!
# A246500: Characteristic function of the prime numbers mod 9 over the set {2,4,8,1,5,7}.

The programs for A246500, there is no canonical definition to state claims against.
-/

/-! ## A246500.P15939928659575241247

`A257680(A050703(n+1)*A050777(n+1))`
-/

namespace A246500.P15939928659575241247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 (A050703 (n + 1) * A050777 (n + 1)).toNat

end

end A246500.P15939928659575241247

/-! ## A246500.P11452708675211065192

`A179758(A092313(n+1)*A130248(2*(n+1)))`
-/

namespace A246500.P11452708675211065192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179758 (A092313 (n + 1) * A130248 (2 * (n + 1))).toNat

end

end A246500.P11452708675211065192

/-! ## A246500.P13673563816831127377

`A257680((eq[1, A018845(n+2)]+2)*A050777(n+1))`
-/

namespace A246500.P13673563816831127377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018845 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2 : ℤ) * A050777 (n + 1)).toNat

end

end A246500.P13673563816831127377

/-! ## A246500.P2622734630412283587

`A283963(∑[A001299(n)]²)`
-/

namespace A246500.P2622734630412283587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283963 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A246500.P2622734630412283587

/-! ## A246500.P7772558175817518034

`A284792(A284785(3*n+1)+7)`
-/

namespace A246500.P7772558175817518034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284792 (A284785 (3 * n + 1) + 7).toNat

end

end A246500.P7772558175817518034

/-!
# A246503: Numbers m such that m^2 divides 2^k - 1 for some k, 0 < k <= m.

The programs for A246503, there is no canonical definition to state claims against.
-/

/-! ## A246503.P673518892288141626

`filter[A068535(n+1), A190224(#)]`
-/

namespace A246503.P673518892288141626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190224 (f1 j).toNat = 1) n)

end

end A246503.P673518892288141626

/-! ## A246503.P12056981133227673524

`A302792(A000041(n)*A342390(n+1))`
-/

namespace A246503.P12056981133227673524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302792 (A000041 n * A342390 (n + 1)).toNat

end

end A246503.P12056981133227673524

/-!
# A246507: a(n) = 70*(n+1)*binomial(2*n+1,n+1)/(n+5).

The programs for A246507, the canonical program `A246507.P17824389023818354113` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246507 has offset 0).

The definition of A246507 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246507.P17824389023818354113

`A078817(A000096(n+3)+5)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A246507

/-- `A078817(A000096(n+3)+5)` -/
def P17824389023818354113.Spec : Prop :=
  ∀ n, P17824389023818354113.a n = A246507 n

theorem P17824389023818354113.correct : P17824389023818354113.Spec := by
  intro n
  simp only [A246507]

end A246507

/-! ## A246507.P10250942525630963967

`A078817(A000217(n+5)-(n+1))`
-/

namespace A246507.P10250942525630963967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078817 (A000217 (n + 5) - (n + 1 : ℤ)).toNat

end

end A246507.P10250942525630963967

namespace A246507

/-- `A078817(A000217(n+5)-(n+1))` -/
def P10250942525630963967.Spec : Prop :=
  ∀ n, P10250942525630963967.a n = A246507 n

end A246507

/-! ## A246507.P9364200199142024484

`A078817(eq[4, A002262(n)])`
-/

namespace A246507.P9364200199142024484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078817 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246507.P9364200199142024484

namespace A246507

/-- `A078817(eq[4, A002262(n)])` -/
def P9364200199142024484.Spec : Prop :=
  ∀ n, P9364200199142024484.a n = A246507 n

end A246507

/-! ## A246507.P12759796071743831925

`A033820(A052905(n+2))`
-/

namespace A246507.P12759796071743831925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033820 (A052905 (n + 2)).toNat

end

end A246507.P12759796071743831925

namespace A246507

/-- `A033820(A052905(n+2))` -/
def P12759796071743831925.Spec : Prop :=
  ∀ n, P12759796071743831925.a n = A246507 n

end A246507

/-! ## A246507.P10074944142760678272

`A033820(eq[4, A025581(n)])`
-/

namespace A246507.P10074944142760678272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033820 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246507.P10074944142760678272

namespace A246507

/-- `A033820(eq[4, A025581(n)])` -/
def P10074944142760678272.Spec : Prop :=
  ∀ n, P10074944142760678272.a n = A246507 n

end A246507

/-! ## A246507.P15251895081274694680

`A033820(eq[5, A004736(n+1)])`
-/

namespace A246507.P15251895081274694680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033820 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246507.P15251895081274694680

namespace A246507

/-- `A033820(eq[5, A004736(n+1)])` -/
def P15251895081274694680.Spec : Prop :=
  ∀ n, P15251895081274694680.a n = A246507 n

end A246507

/-! ## A246507.P1284879760211552411

`A033820(eq[8, A057728(n+2)])`
-/

namespace A246507.P1284879760211552411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033820 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246507.P1284879760211552411

namespace A246507

/-- `A033820(eq[8, A057728(n+2)])` -/
def P1284879760211552411.Spec : Prop :=
  ∀ n, P1284879760211552411.a n = A246507 n

end A246507

/-! ## A246507.P6119914732397314807

`A033820(2*n+A055999(n)+10)`
-/

namespace A246507.P6119914732397314807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033820 ((2 * n : ℤ) + (A055999 n + 10)).toNat

end

end A246507.P6119914732397314807

namespace A246507

/-- `A033820(2*n+A055999(n)+10)` -/
def P6119914732397314807.Spec : Prop :=
  ∀ n, P6119914732397314807.a n = A246507 n

end A246507

/-! ## A246507.P4142046000839445920

`A033820(2*n+A046691(n+1)+8)`
-/

namespace A246507.P4142046000839445920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033820 ((2 * n : ℤ) + (A046691 (n + 1) + 8)).toNat

end

end A246507.P4142046000839445920

namespace A246507

/-- `A033820(2*n+A046691(n+1)+8)` -/
def P4142046000839445920.Spec : Prop :=
  ∀ n, P4142046000839445920.a n = A246507 n

end A246507

/-!
# A246508: Digital root of numbers congruent to {1,7,11,13,17,19,23,29} modulo 30.

The programs for A246508, the canonical program `A246508.P5095176053694706839` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246508 has offset 1).

The definition of A246508 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246508.P5095176053694706839

`A010888(A007775(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A246508

/-- `A010888(A007775(n+1))` -/
def P5095176053694706839.Spec : Prop :=
  ∀ n, P5095176053694706839.a n = A246508 (n + 1)

theorem P5095176053694706839.correct : P5095176053694706839.Spec := by
  intro n
  simp only [A246508, Nat.add_sub_cancel]

end A246508

/-!
# A246509: G.f.: Sum_{n>=0} x^n / (1-3*x)^(2*n+1) * [Sum_{k=0..n} C(n,k)^2 * 3^k * x^k] * [Sum_{k=0..n} C(n,k)^2 * 4^k * x^k].

The programs for A246509, there is no canonical definition to state claims against.
-/

/-! ## A246509.P10756256700391861659

`∑[A289133((3^n+1)²)]`
-/

namespace A246509.P10756256700391861659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289133 ((3 ^ n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246509.P10756256700391861659

/-!
# A246510: G.f.: Sum_{n>=0} x^n / (1-4*x)^(2*n+1) * [Sum_{k=0..n} C(n,k)^2 * 3^k * x^k] * [Sum_{k=0..n} C(n,k)^2 * 4^k * x^k].

The programs for A246510, there is no canonical definition to state claims against.
-/

/-! ## A246510.P958819448565990870

`A341961(n)-A002266(A000459(n))`
-/

namespace A246510.P958819448565990870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341961 n - A002266 (A000459 n).toNat

end

end A246510.P958819448565990870

/-!
# A246514: Number of composite numbers between prime(n) and 2*prime(n) exclusive.

The programs for A246514, the canonical program `A246514.P17080311736656765169` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246514 has offset 1).

The definition of A246514 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246514.P16303660728593122017

`A331677(n+1)+A014689(n+1)`
-/

namespace A246514.P16303660728593122017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331677 (n + 1) + A014689 (n + 1)

end

end A246514.P16303660728593122017

namespace A246514

/-- `A331677(n+1)+A014689(n+1)` -/
def P16303660728593122017.Spec : Prop :=
  ∀ n, P16303660728593122017.a n = A246514 (n + 1)

end A246514

/-! ## A246514.P9442057397530687869

`A334051(n+1)+A065890(n+1)`
-/

namespace A246514.P9442057397530687869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334051 (n + 1) + A065890 (n + 1)

end

end A246514.P9442057397530687869

namespace A246514

/-- `A334051(n+1)+A065890(n+1)` -/
def P9442057397530687869.Spec : Prop :=
  ∀ n, P9442057397530687869.a n = A246514 (n + 1)

end A246514

/-! ## A246514.P5397592757230649296

`A000040(n+1)-A063124(n+1)`
-/

namespace A246514.P5397592757230649296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A063124 (n + 1)

end

end A246514.P5397592757230649296

namespace A246514

/-- `A000040(n+1)-A063124(n+1)` -/
def P5397592757230649296.Spec : Prop :=
  ∀ n, P5397592757230649296.a n = A246514 (n + 1)

end A246514

/-! ## A246514.P5170752189048922030

`A006093(n+1)-A070046(n+1)`
-/

namespace A246514.P5170752189048922030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A070046 (n + 1)

end

end A246514.P5170752189048922030

namespace A246514

/-- `A006093(n+1)-A070046(n+1)` -/
def P5170752189048922030.Spec : Prop :=
  ∀ n, P5170752189048922030.a n = A246514 (n + 1)

end A246514

/-! ## A246514.P17080311736656765169

`A065897(n+1)-A014689(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A246514

/-- `A065897(n+1)-A014689(n+1)` -/
def P17080311736656765169.Spec : Prop :=
  ∀ n, P17080311736656765169.a n = A246514 (n + 1)

theorem P17080311736656765169.correct : P17080311736656765169.Spec := by
  intro n
  simp only [A246514, Nat.add_sub_cancel]

end A246514

/-! ## A246514.P866198976966615870

`A095116(n+1)-A020900(n+1)`
-/

namespace A246514.P866198976966615870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1) - A020900 (n + 1)

end

end A246514.P866198976966615870

namespace A246514

/-- `A095116(n+1)-A020900(n+1)` -/
def P866198976966615870.Spec : Prop :=
  ∀ n, P866198976966615870.a n = A246514 (n + 1)

end A246514

/-! ## A246514.P28790575276441728

`A120632(n+1)-A000040(n+1)`
-/

namespace A246514.P28790575276441728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120632 (n + 1) - A000040 (n + 1)

end

end A246514.P28790575276441728

namespace A246514

/-- `A120632(n+1)-A000040(n+1)` -/
def P28790575276441728.Spec : Prop :=
  ∀ n, P28790575276441728.a n = A246514 (n + 1)

end A246514

/-! ## A246514.P8053444421540713298

`A000040(n+1)-(A070046(n+1)+1)`
-/

namespace A246514.P8053444421540713298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (A070046 (n + 1) + 1)

end

end A246514.P8053444421540713298

namespace A246514

/-- `A000040(n+1)-(A070046(n+1)+1)` -/
def P8053444421540713298.Spec : Prop :=
  ∀ n, P8053444421540713298.a n = A246514 (n + 1)

end A246514

/-! ## A246514.P11732293966696946242

`A040976(n+1)+1-A070046(n+1)`
-/

namespace A246514.P11732293966696946242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + (1 - A070046 (n + 1))

end

end A246514.P11732293966696946242

namespace A246514

/-- `A040976(n+1)+1-A070046(n+1)` -/
def P11732293966696946242.Spec : Prop :=
  ∀ n, P11732293966696946242.a n = A246514 (n + 1)

end A246514

/-! ## A246514.P3514601846668142531

`A065897(n+1)-(A065890(n+1)+1)`
-/

namespace A246514.P3514601846668142531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065897 (n + 1) - (A065890 (n + 1) + 1)

end

end A246514.P3514601846668142531

namespace A246514

/-- `A065897(n+1)-(A065890(n+1)+1)` -/
def P3514601846668142531.Spec : Prop :=
  ∀ n, P3514601846668142531.a n = A246514 (n + 1)

end A246514

/-! ## A246514.P4883172654053807566

`A120632(n+1)-(A040976(n+1)+2)`
-/

namespace A246514.P4883172654053807566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120632 (n + 1) - (A040976 (n + 1) + 2)

end

end A246514.P4883172654053807566

namespace A246514

/-- `A120632(n+1)-(A040976(n+1)+2)` -/
def P4883172654053807566.Spec : Prop :=
  ∀ n, P4883172654053807566.a n = A246514 (n + 1)

end A246514

/-! ## A246514.P15260838280170718671

`A100484(n+1)/2-A063124(n+1)`
-/

namespace A246514.P15260838280170718671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (n + 1) : ℚ) / 2 - (A063124 (n + 1) : ℚ)

end

end A246514.P15260838280170718671

namespace A246514

/-- `A100484(n+1)/2-A063124(n+1)` -/
def P15260838280170718671.Spec : Prop :=
  ∀ n, P15260838280170718671.a n = (A246514 (n + 1) : ℚ)

end A246514

/-! ## A246514.P10414577423407853160

`A120632(n+1)-A100484(n+1)/2`
-/

namespace A246514.P10414577423407853160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120632 (n + 1) : ℚ) - (A100484 (n + 1) : ℚ) / 2

end

end A246514.P10414577423407853160

namespace A246514

/-- `A120632(n+1)-A100484(n+1)/2` -/
def P10414577423407853160.Spec : Prop :=
  ∀ n, P10414577423407853160.a n = (A246514 (n + 1) : ℚ)

end A246514

/-! ## A246514.P17886054572521882640

`A000040(n+1)-A020900(n+1)+n`
-/

namespace A246514.P17886054572521882640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A020900 (n + 1) + (n : ℤ)

end

end A246514.P17886054572521882640

namespace A246514

/-- `A000040(n+1)-A020900(n+1)+n` -/
def P17886054572521882640.Spec : Prop :=
  ∀ n, P17886054572521882640.a n = A246514 (n + 1)

end A246514

/-! ## A246514.P11426776608977847113

`A120632(n+1)+A007504(n)-A007504(n+1)`
-/

namespace A246514.P11426776608977847113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120632 (n + 1) + (A007504 n - A007504 (n + 1))

end

end A246514.P11426776608977847113

namespace A246514

/-- `A120632(n+1)+A007504(n)-A007504(n+1)` -/
def P11426776608977847113.Spec : Prop :=
  ∀ n, P11426776608977847113.a n = A246514 (n + 1)

end A246514

/-! ## A246514.P1410592117795745336

`A120632(n+1)-(A062234(n+1)+A001223(n+1))`
-/

namespace A246514.P1410592117795745336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120632 (n + 1) - (A062234 (n + 1) + A001223 (n + 1))

end

end A246514.P1410592117795745336

namespace A246514

/-- `A120632(n+1)-(A062234(n+1)+A001223(n+1))` -/
def P1410592117795745336.Spec : Prop :=
  ∀ n, P1410592117795745336.a n = A246514 (n + 1)

end A246514

/-! ## A246514.P6132047236787210881

`A120632(n+1)-A008578(n+2)`
-/

namespace A246514.P6132047236787210881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120632 (n + 1) - A008578 (n + 2)

end

end A246514.P6132047236787210881

namespace A246514

/-- `A120632(n+1)-A008578(n+2)` -/
def P6132047236787210881.Spec : Prop :=
  ∀ n, P6132047236787210881.a n = A246514 (n + 1)

end A246514

/-! ## A246514.P11364810820625375039

`record[A000010(n+1)]+A331677(n+1)-n`
-/

namespace A246514.P11364810820625375039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A331677 (n + 1) - (n : ℤ))

end

end A246514.P11364810820625375039

namespace A246514

/-- `record[A000010(n+1)]+A331677(n+1)-n` -/
def P11364810820625375039.Spec : Prop :=
  ∀ n, P11364810820625375039.a n = A246514 (n + 1)

end A246514

/-! ## A246514.P979717538543009146

`A040976(n+1)+A120633(n+1)-A062234(n+1)`
-/

namespace A246514.P979717538543009146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + (A120633 (n + 1) - A062234 (n + 1))

end

end A246514.P979717538543009146

namespace A246514

/-- `A040976(n+1)+A120633(n+1)-A062234(n+1)` -/
def P979717538543009146.Spec : Prop :=
  ∀ n, P979717538543009146.a n = A246514 (n + 1)

end A246514

/-! ## A246514.P1035273349048754360

`A000040(n+1)-A000720(A100484(n+1))+n`
-/

namespace A246514.P1035273349048754360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A000720 (A100484 (n + 1)).toNat + (n : ℤ)

end

end A246514.P1035273349048754360

namespace A246514

/-- `A000040(n+1)-A000720(A100484(n+1))+n` -/
def P1035273349048754360.Spec : Prop :=
  ∀ n, P1035273349048754360.a n = A246514 (n + 1)

end A246514

/-!
# A246518: Prime terms in A141036.

The programs for A246518, there is no canonical definition to state claims against.
-/

/-! ## A246518.P1317555866072229344

`A141036(A246517(n+1))`
-/

namespace A246518.P1317555866072229344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141036 (A246517 (n + 1)).toNat

end

end A246518.P1317555866072229344

/-!
# A246519: Primes p such that 4+p, 4+p^2, 4+p^3 and 4+p^5 are all prime.

The programs for A246519, there is no canonical definition to state claims against.
-/

/-! ## A246519.P6751911405144419260

`∩[A243734(n+1), A243780(n+1)]`
-/

namespace A246519.P6751911405144419260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246519.P6751911405144419260

/-!
# A246520: Largest number that can be written in binary as concatenation of (n - k) and (n + k), 0 <= k <= n.

The programs for A246520, there is no canonical definition to state claims against.
-/

/-! ## A246520.P3398192961727033808

`∑[A246701(n)]-A246701(n)`
-/

namespace A246520.P3398192961727033808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A246701 n

end

end A246520.P3398192961727033808

/-!
# A246522: Number A(n,k) of endofunctions on [n] whose cycle lengths are divisors of k; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A246522, there is no canonical definition to state claims against.
-/

/-! ## A246522.P3792542863226162821

`A102480(n)-A033886(A287698(n))`
-/

namespace A246522.P3792542863226162821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102480 n - A033886 (A287698 n).toNat

end

end A246522.P3792542863226162821

/-! ## A246522.P1045923084290634328

`and(A102480(n), A157733(A306100(n)))`
-/

namespace A246522.P1045923084290634328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A102480 n) (A157733 (A306100 n).toNat)

end

end A246522.P1045923084290634328

/-! ## A246522.P14783605551539247343

`A168341(A276921(n)%p?[A276921(n)])`
-/

namespace A246522.P14783605551539247343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168341 (Int.tmod (A276921 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A246522.P14783605551539247343

/-! ## A246522.P13139817108764401775

`A000194(A292712(n)^A057958(n+1))`
-/

namespace A246522.P13139817108764401775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (SequenceMachineLib.roundAway ((A292712 n : ℚ) ^ (A057958 (n + 1) : ℤ))).toNat

end

end A246522.P13139817108764401775

/-! ## A246522.P4985696904797020152

`A000194(A292712(n)^A001055(3*(n+1)))`
-/

namespace A246522.P4985696904797020152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (SequenceMachineLib.roundAway ((A292712 n : ℚ) ^ (A001055 (3 * (n + 1)) : ℤ))).toNat

end

end A246522.P4985696904797020152

/-!
# A246523: Number of endofunctions on [n] whose cycle lengths are divisors of 3.

The programs for A246523, there is no canonical definition to state claims against.
-/

/-! ## A246523.P6543681885683421540

`A246529(n)-A291115(n)`
-/

namespace A246523.P6543681885683421540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246529 n - A291115 n

end

end A246523.P6543681885683421540

/-! ## A246523.P14646533499846537323

`A163952(n)+A000272(n+1)`
-/

namespace A246523.P14646533499846537323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163952 n + A000272 (n + 1)

end

end A246523.P14646533499846537323

/-! ## A246523.P11852264977112314000

`A163952(n)+A105599(A000124(n))`
-/

namespace A246523.P11852264977112314000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163952 n + A105599 (A000124 n).toNat

end

end A246523.P11852264977112314000

/-! ## A246523.P4743283168130068404

`A246522(A034856(n+1))+A163952(n)`
-/

namespace A246523.P4743283168130068404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246522 (A034856 (n + 1)).toNat + A163952 n

end

end A246523.P4743283168130068404

/-! ## A246523.P8638560645809913917

`A246522(∑[n+3]+n+3)`
-/

namespace A246523.P8638560645809913917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246522 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A246523.P8638560645809913917

/-!
# A246524: Number of endofunctions on [n] whose cycle lengths are divisors of 4.

The programs for A246524, there is no canonical definition to state claims against.
-/

/-! ## A246524.P18350458385356511648

`A291110(n)+A209319(n)`
-/

namespace A246524.P18350458385356511648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291110 n + A209319 n

end

end A246524.P18350458385356511648

/-! ## A246524.P6290538701263784287

`A246528(n)-A291114(n)`
-/

namespace A246524.P6290538701263784287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246528 n - A291114 n

end

end A246524.P6290538701263784287

/-! ## A246524.P1384228905951538714

`A246522(A052905(n+2))`
-/

namespace A246524.P1384228905951538714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246522 (A052905 (n + 2)).toNat

end

end A246524.P1384228905951538714

/-! ## A246524.P7051991230171709476

`A246522(eq[4, A025581(n)])`
-/

namespace A246524.P7051991230171709476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246524.P7051991230171709476

/-! ## A246524.P12446905113019264367

`A246522(eq[5, A004736(n+1)])`
-/

namespace A246524.P12446905113019264367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246524.P12446905113019264367

/-!
# A246525: Number of endofunctions on [n] whose cycle lengths are divisors of 5.

The programs for A246525, there is no canonical definition to state claims against.
-/

/-! ## A246525.P8653963557532838558

`A291111(n)+A000272(n+1)`
-/

namespace A246525.P8653963557532838558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291111 n + A000272 (n + 1)

end

end A246525.P8653963557532838558

/-! ## A246525.P7882003093104624348

`A291111(n)+A105599(A000124(n))`
-/

namespace A246525.P7882003093104624348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291111 n + A105599 (A000124 n).toNat

end

end A246525.P7882003093104624348

/-! ## A246525.P14278740521140412130

`A209319(n)+A291111(n)-A163951(n)`
-/

namespace A246525.P14278740521140412130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209319 n + (A291111 n - A163951 n)

end

end A246525.P14278740521140412130

/-! ## A246525.P3612380281388700954

`A246522(A055999(n+3))`
-/

namespace A246525.P3612380281388700954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246522 (A055999 (n + 3)).toNat

end

end A246525.P3612380281388700954

/-! ## A246525.P2449169353611432995

`A246522(eq[5, A025581(n)])`
-/

namespace A246525.P2449169353611432995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246525.P2449169353611432995

/-! ## A246525.P14339293404939165623

`A246522(A000217(n+6)-6)`
-/

namespace A246525.P14339293404939165623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246522 (A000217 (n + 6) - 6).toNat

end

end A246525.P14339293404939165623

/-! ## A246525.P17275912787331135267

`A246522(eq[6, A004736(n+1)])`
-/

namespace A246525.P17275912787331135267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246525.P17275912787331135267

/-!
# A246526: Number of endofunctions on [n] whose cycle lengths are divisors of 6.

The programs for A246526, there is no canonical definition to state claims against.
-/

/-! ## A246526.P9783782959056965982

`A246522(eq[6, A025581(n)])`
-/

namespace A246526.P9783782959056965982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246526.P9783782959056965982

/-! ## A246526.P608367309323514178

`A246522(eq[7, A193739(n)])`
-/

namespace A246526.P608367309323514178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246526.P608367309323514178

/-! ## A246526.P15925256341207017798

`A246522(A055999(n+4)-1)`
-/

namespace A246526.P15925256341207017798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246522 (A055999 (n + 4) - 1).toNat

end

end A246526.P15925256341207017798

/-! ## A246526.P3443793263487098178

`A246522(A000217(n+7)-7)`
-/

namespace A246526.P3443793263487098178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246522 (A000217 (n + 7) - 7).toNat

end

end A246526.P3443793263487098178

/-! ## A246526.P13679851271819964949

`A246522(eq[7, A004736(n+1)])`
-/

namespace A246526.P13679851271819964949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246526.P13679851271819964949

/-! ## A246526.P11595684644133915927

`A246522(eq[8, A272172(n+1)])`
-/

namespace A246526.P11595684644133915927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246526.P11595684644133915927

/-!
# A246527: Number of endofunctions on [n] whose cycle lengths are divisors of 7.

The programs for A246527, there is no canonical definition to state claims against.
-/

/-! ## A246527.P16878861373360445165

`A291113(n)+A000272(n+1)`
-/

namespace A246527.P16878861373360445165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291113 n + A000272 (n + 1)

end

end A246527.P16878861373360445165

/-! ## A246527.P10627028386027526579

`A291113(n)+A105599(A000124(n))`
-/

namespace A246527.P10627028386027526579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291113 n + A105599 (A000124 n).toNat

end

end A246527.P10627028386027526579

/-! ## A246527.P6425890086013886424

`A209319(n)+A291113(n)-A163951(n)`
-/

namespace A246527.P6425890086013886424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209319 n + (A291113 n - A163951 n)

end

end A246527.P6425890086013886424

/-! ## A246527.P3801806471408916345

`A246523(n)+A291113(n)-A163952(n)`
-/

namespace A246527.P3801806471408916345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246523 n + (A291113 n - A163952 n)

end

end A246527.P3801806471408916345

/-! ## A246527.P16260216421145222481

`A246522(eq[7, A025581(n)])`
-/

namespace A246527.P16260216421145222481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246527.P16260216421145222481

/-! ## A246527.P15264507766654975455

`A246522(eq[8, A004736(n+1)])`
-/

namespace A246527.P15264507766654975455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246527.P15264507766654975455

/-!
# A246528: Number of endofunctions on [n] whose cycle lengths are divisors of 8.

The programs for A246528, there is no canonical definition to state claims against.
-/

/-! ## A246528.P12793979269861015211

`A291114(n)+A246524(n)`
-/

namespace A246528.P12793979269861015211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291114 n + A246524 n

end

end A246528.P12793979269861015211

/-! ## A246528.P4964209503799053575

`A246522(eq[8, A025581(n)])`
-/

namespace A246528.P4964209503799053575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246528.P4964209503799053575

/-! ## A246528.P583164813655263195

`A246522(eq[9, A193739(n)])`
-/

namespace A246528.P583164813655263195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246528.P583164813655263195

/-! ## A246528.P12030995927529130016

`A246522(eq[17, A099375(n)])`
-/

namespace A246528.P12030995927529130016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246528.P12030995927529130016

/-! ## A246528.P15854136000369332950

`A246522(eq[9, A004736(n+1)])`
-/

namespace A246528.P15854136000369332950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246528.P15854136000369332950

/-!
# A246529: Number of endofunctions on [n] whose cycle lengths are divisors of 9.

The programs for A246529, there is no canonical definition to state claims against.
-/

/-! ## A246529.P1799858946404780584

`A291115(n)+A246523(n)`
-/

namespace A246529.P1799858946404780584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291115 n + A246523 n

end

end A246529.P1799858946404780584

/-! ## A246529.P6439423088825357215

`A291115(n)+A163952(n)+A000272(n+1)`
-/

namespace A246529.P6439423088825357215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291115 n + (A163952 n + A000272 (n + 1))

end

end A246529.P6439423088825357215

/-! ## A246529.P3671016567769848839

`A105599(A000124(n))+A291115(n)+A163952(n)`
-/

namespace A246529.P3671016567769848839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105599 (A000124 n).toNat + (A291115 n + A163952 n)

end

end A246529.P3671016567769848839

/-! ## A246529.P10707297760930190189

`A291115(n)+A246522(eq[3, A025581(n)])`
-/

namespace A246529.P10707297760930190189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291115 n + A246522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246529.P10707297760930190189

/-! ## A246529.P8209532751344001914

`A291115(n)+A246522(eq[8, A130321(n)])`
-/

namespace A246529.P8209532751344001914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291115 n + A246522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246529.P8209532751344001914

/-! ## A246529.P15465747743332454179

`A291115(n)+A246522(Δ[A008778(n)]+n+2)`
-/

namespace A246529.P15465747743332454179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291115 n + A246522 (f1 (n + 1) - f1 n + (n + 2 : ℤ)).toNat

end

end A246529.P15465747743332454179

/-!
# A246530: Number of endofunctions on [n] whose cycle lengths are divisors of 10.

The programs for A246530, there is no canonical definition to state claims against.
-/

/-! ## A246530.P2809133206885467236

`A209319(n)+A291116(n)+A291111(n)`
-/

namespace A246530.P2809133206885467236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209319 n + (A291116 n + A291111 n)

end

end A246530.P2809133206885467236

/-! ## A246530.P17860037986337737563

`A246522(eq[10, A025581(n)])`
-/

namespace A246530.P17860037986337737563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246530.P17860037986337737563

/-! ## A246530.P9803703008246644930

`A246522(eq[11, A193739(n)])`
-/

namespace A246530.P9803703008246644930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246530.P9803703008246644930

/-! ## A246530.P3768278405089365153

`A246522(eq[11, A195663(n)])`
-/

namespace A246530.P3768278405089365153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246530.P3768278405089365153

/-! ## A246530.P7448719036813524714

`A246522(eq[11, A004736(n+1)])`
-/

namespace A246530.P7448719036813524714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246530.P7448719036813524714

/-!
# A246531: Number of endofunctions on [n] whose cycle lengths are divisors of n.

The programs for A246531, there is no canonical definition to state claims against.
-/

/-! ## A246531.P16745223824437467475

`A246522(∑[4*n])`
-/

namespace A246531.P16745223824437467475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246522 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246531.P16745223824437467475

/-! ## A246531.P16254029381006783644

`lcm(A033999(n), A246522(A046092(n)))`
-/

namespace A246531.P16254029381006783644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A246522 (A046092 n).toNat)

end

end A246531.P16254029381006783644

/-! ## A246531.P14858768905922722578

`or(A151878(n), A246522(A046092(n)))`
-/

namespace A246531.P14858768905922722578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151878 n) (A246522 (A046092 n).toNat)

end

end A246531.P14858768905922722578

/-! ## A246531.P9117195896638586853

`abs(A000038(n)-A246522(A046092(n)))`
-/

namespace A246531.P9117195896638586853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000038 n - A246522 (A046092 n).toNat|

end

end A246531.P9117195896638586853

/-! ## A246531.P13547068465632883484

`A246522(A046092(n))+A008683(5*(n+2)²)`
-/

namespace A246531.P13547068465632883484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246522 (A046092 n).toNat + A008683 (5 * (n + 2) ^ 2)

end

end A246531.P13547068465632883484

/-!
# A246533: List of fixed polyominoes in binary coding, ordered by number of bits, then value of the binary code. Can be read as irregular table with row lengths A001168.

The programs for A246533, there is no canonical definition to state claims against.
-/

/-! ## A246533.P10964320933987321800

`eq[A071467(n+1), A084938(A241092(n))]`
-/

namespace A246533.P10964320933987321800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A241092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246533.P10964320933987321800

/-! ## A246533.P12724051576362889354

`eq[A033461(3*n+1), A033461(A339030(n))]`
-/

namespace A246533.P12724051576362889354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 (A339030 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246533.P12724051576362889354

/-! ## A246533.P17304487840078133658

`lt[A333861(3*n+1), A008707(A054906(n+4))]`
-/

namespace A246533.P17304487840078133658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333861 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008707 (A054906 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246533.P17304487840078133658

/-!
# A246534: a(n) = Sum_{k=1..n} 2^(T(k)-1), where T(k)=k(k+1)/2 = A000217(k).

The programs for A246534, there is no canonical definition to state claims against.
-/

/-! ## A246534.P6476884854066163911

`∑[floor(2^(∑[n]-1))]`
-/

namespace A246534.P6476884854066163911
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246534.P6476884854066163911

/-! ## A246534.P10857821400700348838

`a(n-1)+2^(∑[n]-1)` with `a(0)=0`
-/

namespace A246534.P10857821400700348838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (2 : ℚ) ^ (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℤ)

end

end A246534.P10857821400700348838

/-! ## A246534.P10038440569063969227

`∑[2^n*a(n-1)]-1` with `a(0)=1, a(1)=1`
-/

namespace A246534.P10038440569063969227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 ^ n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A246534.P10038440569063969227

/-! ## A246534.P11372333819232688332

`∑[round(2^(C(n+1, 2)-1))]-1`
-/

namespace A246534.P11372333819232688332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.choose (n + 1) 2 : ℤ) - 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A246534.P11372333819232688332

/-! ## A246534.P4249537646237727419

`floor(∑[A217994(n)/4])`
-/

namespace A246534.P4249537646237727419
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217994 n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A246534.P4249537646237727419

/-!
# A246537: The number of collections F of subsets of {1,2,...,n} such that the union of F is not an element of F.

The programs for A246537, there is no canonical definition to state claims against.
-/

/-! ## A246537.P15118067162283462480

`2^2^n-A246418(n)`
-/

namespace A246537.P15118067162283462480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ 2 ^ n : ℤ) - A246418 n

end

end A246537.P15118067162283462480

/-!
# A246538: G.f.: Sum_{n>=0} 2^n * x^n / (1-x)^(2*n+1) * [Sum_{k=0..n} C(n,k)^2 * x^k]^2.

The programs for A246538, there is no canonical definition to state claims against.
-/

/-! ## A246538.P8244427193561812888

`A066344(A214764(n))+floor(sqrt(n)+1/2)`
-/

namespace A246538.P8244427193561812888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066344 (A214764 n).toNat + ⌊Real.sqrt (n : ℝ) + ((1 : ℚ) / 2 : ℝ)⌋

end

end A246538.P8244427193561812888

/-! ## A246538.P7238795178890264393

`or(A000225(n), A001370(A023000(n)))`
-/

namespace A246538.P7238795178890264393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000225 n) (A001370 (A023000 n).toNat)

end

end A246538.P7238795178890264393

/-!
# A246539: G.f.: Sum_{n>=0} 3^n * x^n / (1-x)^(2*n+1) * [Sum_{k=0..n} C(n,k)^2 * x^k]^2.

The programs for A246539, there is no canonical definition to state claims against.
-/

/-! ## A246539.P7462009262994858302

`A002266(A074564(n))+1`
-/

namespace A246539.P7462009262994858302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A074564 n).toNat + 1

end

end A246539.P7462009262994858302

/-!
# A246540: G.f.: Sum_{n>=0} 4^n * x^n / (1-x)^(2*n+1) * [Sum_{k=0..n} C(n,k)^2 * x^k]^2.

The programs for A246540, there is no canonical definition to state claims against.
-/

/-! ## A246540.P16839984286215424834

`A314491(A128201(a(n-1)))` with `a(0)=1`
-/

namespace A246540.P16839984286215424834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A314491 (A128201 (a (n - 1)).toNat).toNat

end

end A246540.P16839984286215424834

/-!
# A246541: Take the squares of all P_(n+2)-rough numbers less than the (n+1)-th primorial and mod each by the (n+1)-th primorial. There will be a(n) different results.

The programs for A246541, there is no canonical definition to state claims against.
-/

/-! ## A246541.P564556175389831475

`A323739(n+2)`
-/

namespace A246541.P564556175389831475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323739 (n + 2)

end

end A246541.P564556175389831475

/-! ## A246541.P6199481116722423397

`∏[eq[1, ∑{e}[Δ[n²], #]]]`
-/

namespace A246541.P6199481116722423397
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f5 (n + 1) : ℤ) - (f5 n : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n).natAbs, Nat.factorization (f4 n).natAbs p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A246541.P6199481116722423397

/-! ## A246541.P9702392585003137256

`∏[floor(p?[2*n+1]/2)]`
-/

namespace A246541.P9702392585003137256
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A246541.P9702392585003137256

/-! ## A246541.P8133279068893789423

`∏[eq[2, ∏{e}[Δ[n²], #+1]]]`
-/

namespace A246541.P8133279068893789423
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f5 (n + 1) : ℤ) - (f5 n : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n).natAbs, (Nat.factorization (f4 n).natAbs p + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A246541.P8133279068893789423

/-! ## A246541.P10540728738888484542

`∏[floor(cosh(log(p?[2*n+1])))]`
-/

namespace A246541.P10540728738888484542
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A246541.P10540728738888484542

/-! ## A246541.P15960422910497465256

`∏[floor(sinh(log(p?[2*n+1])))]`
-/

namespace A246541.P15960422910497465256
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A246541.P15960422910497465256

/-! ## A246541.P15074757119093792644

`∏[round(sinh(log(p?[2*n+1])))]`
-/

namespace A246541.P15074757119093792644
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.log (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A246541.P15074757119093792644

/-! ## A246541.P5282126430528783372

`∏[lt[n+1, ∑{p}[2*n+1, #]]]`
-/

namespace A246541.P5282126430528783372
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A246541.P5282126430528783372

/-! ## A246541.P2834458536085136270

`∏[eq[2*n+1, ∑{p}[2*n+1, #]]]`
-/

namespace A246541.P2834458536085136270
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A246541.P2834458536085136270

/-! ## A246541.P16180492507979459151

`∏[Δ[A005521(n)]]`
-/

namespace A246541.P16180492507979459151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005521 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A246541.P16180492507979459151

/-!
# A246542: a(n) = 2/n^2*( sum_{k=0..n-1} (2*k+1)*C(n-1,k)^2*C(n+k,k) ), where C(m,k) denotes the binomial coefficient m!/(k!*(m-k)!).

The programs for A246542, there is no canonical definition to state claims against.
-/

/-! ## A246542.P899605275278018809

`A256476(∑[∑[A307442(n)]])`
-/

namespace A246542.P899605275278018809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307442 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256476 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A246542.P899605275278018809

/-!
# A246544: Consider the aliquot parts, in ascending order, of a composite number. Take their sum and repeat the process deleting the minimum number and adding the previous sum. The sequence lists the numbers that after some iterations reach a sum equal to themselves.

The programs for A246544, there is no canonical definition to state claims against.
-/

/-! ## A246544.P11411390237073072287

`xor(A018447(n+2), A018448(n+1))+2`
-/

namespace A246544.P11411390237073072287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A018447 (n + 2)) (A018448 (n + 1)) + 2

end

end A246544.P11411390237073072287

/-!
# A246547: 

The programs for A246547, there is no canonical definition to state claims against.
-/

/-! ## A246547.P11774072215847895968

`A025475(n+2)`
-/

namespace A246547.P11774072215847895968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 2)

end

end A246547.P11774072215847895968

/-! ## A246547.P3401483657978080846

`∑[A053707(n+1)]+1`
-/

namespace A246547.P3401483657978080846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A246547.P3401483657978080846

/-! ## A246547.P8180771183571786677

`A053211(n+1)+A053198(n+1)`
-/

namespace A246547.P8180771183571786677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053211 (n + 1) + A053198 (n + 1)

end

end A246547.P8180771183571786677

/-! ## A246547.P62384785924925241

`A060846(n+1)-A060848(n+1)`
-/

namespace A246547.P62384785924925241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060846 (n + 1) - A060848 (n + 1)

end

end A246547.P62384785924925241

/-! ## A246547.P14616739310493051767

`A025476(n+1)*A053211(n+1)`
-/

namespace A246547.P14616739310493051767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025476 (n + 1) * A053211 (n + 1)

end

end A246547.P14616739310493051767

/-! ## A246547.P13852456530735424394

`∪[A001248(n+1), A246549(n+1)]`
-/

namespace A246547.P13852456530735424394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246547.P13852456530735424394

/-! ## A246547.P2633179639197411543

`∪[A073045(n+1), A246067(n+1)]`
-/

namespace A246547.P2633179639197411543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246547.P2633179639197411543

/-! ## A246547.P786077165698090032

`∪[A073045(n+1), A246549(n+1)]`
-/

namespace A246547.P786077165698090032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246547.P786077165698090032

/-! ## A246547.P17523674529803426043

`A249435(n+2)+1`
-/

namespace A246547.P17523674529803426043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249435 (n + 2) + 1

end

end A246547.P17523674529803426043

/-! ## A246547.P15504866048755647700

`∩[A073540(n+1), A249125(n+1)]`
-/

namespace A246547.P15504866048755647700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246547.P15504866048755647700

/-! ## A246547.P9142524202070877823

`∩[A073540(n+1), A134611(n+1)]`
-/

namespace A246547.P9142524202070877823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246547.P9142524202070877823

/-! ## A246547.P11201650223961288956

`∩[A134611(n+1), A249125(n+1)]`
-/

namespace A246547.P11201650223961288956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246547.P11201650223961288956

/-! ## A246547.P7828638527571135549

`∩[A073540(n+1), A080062(n+1)]`
-/

namespace A246547.P7828638527571135549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246547.P7828638527571135549

/-! ## A246547.P354786697115491978

`∩[A249125(n+1), A080062(n+1)]`
-/

namespace A246547.P354786697115491978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246547.P354786697115491978

/-! ## A246547.P12100267735800520499

`∩[A080062(n+1), A134611(n+1)]`
-/

namespace A246547.P12100267735800520499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246547.P12100267735800520499

/-! ## A246547.P17360305325100757799

`A060847(n+1)+A060845(n+1)`
-/

namespace A246547.P17360305325100757799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060847 (n + 1) + A060845 (n + 1)

end

end A246547.P17360305325100757799

/-! ## A246547.P4986388587283227068

`∩[A072777(n+1), A073540(n+1)]`
-/

namespace A246547.P4986388587283227068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246547.P4986388587283227068

/-! ## A246547.P3775065781282657468

`∩[A073540(n+1), A076292(n+1)]`
-/

namespace A246547.P3775065781282657468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246547.P3775065781282657468

/-! ## A246547.P4121080148042263296

`∩[A072777(n+1), A134611(n+1)]`
-/

namespace A246547.P4121080148042263296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246547.P4121080148042263296

/-!
# A246549: Prime powers p^e where p is a prime and e >= 3 (prime powers without 1, the primes, or the squares of primes).

The programs for A246549, there is no canonical definition to state claims against.
-/

/-! ## A246549.P6792561412808150992

`∪[A030078(n+1), A088247(n+1)]`
-/

namespace A246549.P6792561412808150992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246549.P6792561412808150992

/-! ## A246549.P16582235962210811771

`∪[A051751(n+1), A088247(n+1)]`
-/

namespace A246549.P16582235962210811771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246549.P16582235962210811771

/-! ## A246549.P16026116860630340247

`∪[A056824(n+1), A088247(n+1)]`
-/

namespace A246549.P16026116860630340247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246549.P16026116860630340247

/-! ## A246549.P8864350001214658833

`∪[A088247(n+1), A176509(n+1)]`
-/

namespace A246549.P8864350001214658833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246549.P8864350001214658833

/-! ## A246549.P18380545998823695812

`∪[A030078(n+1), A246550(n+1)]`
-/

namespace A246549.P18380545998823695812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246549.P18380545998823695812

/-! ## A246549.P1544298128556533544

`∪[A056824(n+1), A246550(n+1)]`
-/

namespace A246549.P1544298128556533544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246549.P1544298128556533544

/-! ## A246549.P16670327866704288568

`∪[A088247(n+1), A297868(n+1)]`
-/

namespace A246549.P16670327866704288568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246549.P16670327866704288568

/-! ## A246549.P7724142080479453127

`∪[A176509(n+1), A246550(n+1)]`
-/

namespace A246549.P7724142080479453127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246549.P7724142080479453127

/-! ## A246549.P882627569856438229

`∩[A025475(n+1), A390540(n+1)]`
-/

namespace A246549.P882627569856438229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246549.P882627569856438229

/-! ## A246549.P16739843309051860524

`∩[A073540(n+1), A076467(n+1)]`
-/

namespace A246549.P16739843309051860524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246549.P16739843309051860524

/-! ## A246549.P2821580392892432750

`∩[A073540(n+1), A390540(n+1)]`
-/

namespace A246549.P2821580392892432750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246549.P2821580392892432750

/-! ## A246549.P4361547802123455185

`∩[A076467(n+1), A134612(n+1)]`
-/

namespace A246549.P4361547802123455185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246549.P4361547802123455185

/-! ## A246549.P4396011881684109579

`∩[A134611(n+1), A390540(n+1)]`
-/

namespace A246549.P4396011881684109579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246549.P4396011881684109579

/-! ## A246549.P16857809318238908916

`∩[A134612(n+1), A390540(n+1)]`
-/

namespace A246549.P16857809318238908916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246549.P16857809318238908916

/-! ## A246549.P11686059631264466433

`∩[A036966(n+1), A306531(n+1)]`
-/

namespace A246549.P11686059631264466433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246549.P11686059631264466433

/-! ## A246549.P16209392677631051352

`∩[A076467(n+1), A306531(n+1)]`
-/

namespace A246549.P16209392677631051352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246549.P16209392677631051352

/-!
# A246550: Prime powers p^e where p is a prime and e >= 4.

The programs for A246550, there is no canonical definition to state claims against.
-/

/-! ## A246550.P12924727752326852237

`∩[A076468(n+1), A088247(n+1)]`
-/

namespace A246550.P12924727752326852237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246550.P12924727752326852237

/-! ## A246550.P14851472457912386283

`∩[A076468(n+1), A246549(n+1)]`
-/

namespace A246550.P14851472457912386283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246550.P14851472457912386283

/-! ## A246550.P1651332747473100874

`∩[A036967(n+1), A088247(n+1)]`
-/

namespace A246550.P1651332747473100874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246550.P1651332747473100874

/-! ## A246550.P11209477684128038118

`∩[A036967(n+1), A246549(n+1)]`
-/

namespace A246550.P11209477684128038118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246550.P11209477684128038118

/-! ## A246550.P1319529405760512558

`∩[A036967(n+1), A073540(n+1)]`
-/

namespace A246550.P1319529405760512558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246550.P1319529405760512558

/-! ## A246550.P2907339181230853662

`∩[A073540(n+1), A076468(n+1)]`
-/

namespace A246550.P2907339181230853662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246550.P2907339181230853662

/-! ## A246550.P11775752015212776578

`∩[A036967(n+1), A246067(n+1)]`
-/

namespace A246550.P11775752015212776578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246550.P11775752015212776578

/-! ## A246550.P17446033597315147991

`∩[A076468(n+1), A246067(n+1)]`
-/

namespace A246550.P17446033597315147991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246550.P17446033597315147991

/-! ## A246550.P11750802347911223616

`∩[A036967(n+1), A134612(n+1)]`
-/

namespace A246550.P11750802347911223616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246550.P11750802347911223616

/-! ## A246550.P1715066725346328900

`∩[A076468(n+1), A134612(n+1)]`
-/

namespace A246550.P1715066725346328900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246550.P1715066725346328900

/-! ## A246550.P13259962372950324775

`∩[A036967(n+1), A306531(n+1)]`
-/

namespace A246550.P13259962372950324775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246550.P13259962372950324775

/-! ## A246550.P10074907703836226161

`∩[A076468(n+1), A306531(n+1)]`
-/

namespace A246550.P10074907703836226161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246550.P10074907703836226161

/-!
# A246551: Prime powers p^e where p is a prime and e is odd.

The programs for A246551, the canonical program `A246551.P5525261904559874874` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246551 has offset 1).

The definition of A246551 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9618 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246551.P15201649421899482534

`∪[A000040(n+1), A056824(n+1)]`
-/

namespace A246551.P15201649421899482534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246551.P15201649421899482534

namespace A246551

/-- `∪[A000040(n+1), A056824(n+1)]` -/
def P15201649421899482534.Spec : Prop :=
  ∀ n, (P15201649421899482534.a n : ℤ) = A246551 (n + 1)

end A246551

/-! ## A246551.P5525261904559874874

`filter[A000961(n+1), A066829(#)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A246551

/-- `filter[A000961(n+1), A066829(#)]` -/
def P5525261904559874874.Spec : Prop :=
  ∀ n, P5525261904559874874.a n = A246551 (n + 1)

theorem P5525261904559874874.correct : P5525261904559874874.Spec := by
  intro n
  simp only [A246551, Nat.add_sub_cancel]

end A246551

/-! ## A246551.P7234810041954853041

`filter[A225657(n+1), A066829(#)]`
-/

namespace A246551.P7234810041954853041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A246551.P7234810041954853041

namespace A246551

/-- `filter[A225657(n+1), A066829(#)]` -/
def P7234810041954853041.Spec : Prop :=
  ∀ n, P7234810041954853041.a n = A246551 (n + 1)

end A246551

/-! ## A246551.P4656166823559623671

`filter[A246655(n+1), A066829(#)]`
-/

namespace A246551.P4656166823559623671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A246551.P4656166823559623671

namespace A246551

/-- `filter[A246655(n+1), A066829(#)]` -/
def P4656166823559623671.Spec : Prop :=
  ∀ n, P4656166823559623671.a n = A246551 (n + 1)

end A246551

/-! ## A246551.P11687984414045611893

`filter[A000961(n+1), A358769(#)]`
-/

namespace A246551.P11687984414045611893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A246551.P11687984414045611893

namespace A246551

/-- `filter[A000961(n+1), A358769(#)]` -/
def P11687984414045611893.Spec : Prop :=
  ∀ n, P11687984414045611893.a n = A246551 (n + 1)

end A246551

/-! ## A246551.P7612137916972846900

`filter[A000961(n+1), A374474(#)]`
-/

namespace A246551.P7612137916972846900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A246551.P7612137916972846900

namespace A246551

/-- `filter[A000961(n+1), A374474(#)]` -/
def P7612137916972846900.Spec : Prop :=
  ∀ n, P7612137916972846900.a n = A246551 (n + 1)

end A246551

/-! ## A246551.P15537579931151260436

`filter[A059046(n+1), A358769(#)]`
-/

namespace A246551.P15537579931151260436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A246551.P15537579931151260436

namespace A246551

/-- `filter[A059046(n+1), A358769(#)]` -/
def P15537579931151260436.Spec : Prop :=
  ∀ n, P15537579931151260436.a n = A246551 (n + 1)

end A246551

/-! ## A246551.P1015579326160576159

`filter[A081061(n+1), A374474(#)]`
-/

namespace A246551.P1015579326160576159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A246551.P1015579326160576159

namespace A246551

/-- `filter[A081061(n+1), A374474(#)]` -/
def P1015579326160576159.Spec : Prop :=
  ∀ n, P1015579326160576159.a n = A246551 (n + 1)

end A246551

/-! ## A246551.P13513002959286075338

`filter[A141807(n+1), A374474(#)]`
-/

namespace A246551.P13513002959286075338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A246551.P13513002959286075338

namespace A246551

/-- `filter[A141807(n+1), A374474(#)]` -/
def P13513002959286075338.Spec : Prop :=
  ∀ n, P13513002959286075338.a n = A246551 (n + 1)

end A246551

/-! ## A246551.P18072990768972023722

`filter[A225657(n+1), A358769(#)]`
-/

namespace A246551.P18072990768972023722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A246551.P18072990768972023722

namespace A246551

/-- `filter[A225657(n+1), A358769(#)]` -/
def P18072990768972023722.Spec : Prop :=
  ∀ n, P18072990768972023722.a n = A246551 (n + 1)

end A246551

/-! ## A246551.P15229639815190107944

`filter[A225657(n+1), A374474(#)]`
-/

namespace A246551.P15229639815190107944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A246551.P15229639815190107944

namespace A246551

/-- `filter[A225657(n+1), A374474(#)]` -/
def P15229639815190107944.Spec : Prop :=
  ∀ n, P15229639815190107944.a n = A246551 (n + 1)

end A246551

/-! ## A246551.P17610373237252687636

`filter[A246655(n+1), A358769(#)]`
-/

namespace A246551.P17610373237252687636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A246551.P17610373237252687636

namespace A246551

/-- `filter[A246655(n+1), A358769(#)]` -/
def P17610373237252687636.Spec : Prop :=
  ∀ n, P17610373237252687636.a n = A246551 (n + 1)

end A246551

/-! ## A246551.P8368598731370595841

`filter[A246655(n+1), A374474(#)]`
-/

namespace A246551.P8368598731370595841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A246551.P8368598731370595841

namespace A246551

/-- `filter[A246655(n+1), A374474(#)]` -/
def P8368598731370595841.Spec : Prop :=
  ∀ n, P8368598731370595841.a n = A246551 (n + 1)

end A246551

/-! ## A246551.P13356088253162020410

`filter[A063752(n+1), A069513(#)]`
-/

namespace A246551.P13356088253162020410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A246551.P13356088253162020410

namespace A246551

/-- `filter[A063752(n+1), A069513(#)]` -/
def P13356088253162020410.Spec : Prop :=
  ∀ n, P13356088253162020410.a n = A246551 (n + 1)

end A246551

/-! ## A246551.P5325597466492700129

`∩[A063752(n+1), A071139(n+1)]`
-/

namespace A246551.P5325597466492700129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246551.P5325597466492700129

namespace A246551

/-- `∩[A063752(n+1), A071139(n+1)]` -/
def P5325597466492700129.Spec : Prop :=
  ∀ n, (P5325597466492700129.a n : ℤ) = A246551 (n + 1)

end A246551

/-! ## A246551.P18337503596882086485

`A397367(Δ[n²])`
-/

namespace A246551.P18337503596882086485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397367 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A246551.P18337503596882086485

namespace A246551

/-- `A397367(Δ[n²])` -/
def P18337503596882086485.Spec : Prop :=
  ∀ n, P18337503596882086485.a n = A246551 (n + 1)

end A246551

/-! ## A246551.P2815452477027377879

`filter[A000961(n+1), A353817(#)]`
-/

namespace A246551.P2815452477027377879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A246551.P2815452477027377879

namespace A246551

/-- `filter[A000961(n+1), A353817(#)]` -/
def P2815452477027377879.Spec : Prop :=
  ∀ n, P2815452477027377879.a n = A246551 (n + 1)

end A246551

/-! ## A246551.P6433892840468479585

`filter[A059046(n+1), A353817(#)]`
-/

namespace A246551.P6433892840468479585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A246551.P6433892840468479585

namespace A246551

/-- `filter[A059046(n+1), A353817(#)]` -/
def P6433892840468479585.Spec : Prop :=
  ∀ n, P6433892840468479585.a n = A246551 (n + 1)

end A246551

/-! ## A246551.P6917006481866301732

`filter[A063752(n+1), A353817(#)]`
-/

namespace A246551.P6917006481866301732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A246551.P6917006481866301732

namespace A246551

/-- `filter[A063752(n+1), A353817(#)]` -/
def P6917006481866301732.Spec : Prop :=
  ∀ n, P6917006481866301732.a n = A246551 (n + 1)

end A246551

/-! ## A246551.P4347156416461910236

`filter[A066311(n+1), A353817(#)]`
-/

namespace A246551.P4347156416461910236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A246551.P4347156416461910236

namespace A246551

/-- `filter[A066311(n+1), A353817(#)]` -/
def P4347156416461910236.Spec : Prop :=
  ∀ n, P4347156416461910236.a n = A246551 (n + 1)

end A246551

/-!
# A246552: 2-adic valuation of the number of involutions of n (A000085).

The programs for A246552, the canonical program `A246552.P18374111538547114065` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246552 has offset 0).

The definition of A246552 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246552.P18374111538547114065

`n-2*floor(n/4)-floor((n+3)/4)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A246552

/-- `n-2*floor(n/4)-floor((n+3)/4)` -/
def P18374111538547114065.Spec : Prop :=
  ∀ n, P18374111538547114065.a n = A246552 n

theorem P18374111538547114065.correct : P18374111538547114065.Spec := by
  intro n
  simp only [A246552]

end A246552

/-! ## A246552.P8579204445028803975

`(2*n+3-2*cos(n*π/2)-cos(n*π)-6*sin(n*π/2))/8`
-/

namespace A246552.P8579204445028803975
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℝ) + (3 - 2 * Real.cos ((n : ℝ) * (Real.pi / 2))) - Real.cos ((n : ℝ) * Real.pi) - 6 * Real.sin ((n : ℝ) * (Real.pi / 2))) / 8

end

end A246552.P8579204445028803975

namespace A246552

/-- `(2*n+3-2*cos(n*π/2)-cos(n*π)-6*sin(n*π/2))/8` -/
def P8579204445028803975.Spec : Prop :=
  ∀ n, P8579204445028803975.a n = (A246552 n : ℝ)

end A246552

/-! ## A246552.P4365325914570007659

`floor((xor(2, n+2)+1)/4)`
-/

namespace A246552.P4365325914570007659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 2 (n + 2) + 1 : ℚ) / 4⌋

end

end A246552.P4365325914570007659

namespace A246552

/-- `floor((xor(2, n+2)+1)/4)` -/
def P4365325914570007659.Spec : Prop :=
  ∀ n, P4365325914570007659.a n = A246552 n

end A246552

/-! ## A246552.P10752371696972495184

`ceil((1-xor(2, 1-n))/4)`
-/

namespace A246552.P10752371696972495184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 - Int.xor 2 (1 - (n : ℤ)) : ℚ) / 4⌉

end

end A246552.P10752371696972495184

namespace A246552

/-- `ceil((1-xor(2, 1-n))/4)` -/
def P10752371696972495184.Spec : Prop :=
  ∀ n, P10752371696972495184.a n = A246552 n

end A246552

/-! ## A246552.P8219352240534546883

`round((xor(2, n+2)-1)/4)`
-/

namespace A246552.P8219352240534546883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.xor 2 (n + 2) : ℤ) - 1 : ℚ) / 4)

end

end A246552.P8219352240534546883

namespace A246552

/-- `round((xor(2, n+2)-1)/4)` -/
def P8219352240534546883.Spec : Prop :=
  ∀ n, P8219352240534546883.a n = A246552 n

end A246552

/-! ## A246552.P17749635945434259059

`floor((n%4+n/2)/2)`
-/

namespace A246552.P17749635945434259059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n % 4 : ℕ) : ℚ) + (n : ℚ) / 2) / 2⌋

end

end A246552.P17749635945434259059

namespace A246552

/-- `floor((n%4+n/2)/2)` -/
def P17749635945434259059.Spec : Prop :=
  ∀ n, P17749635945434259059.a n = A246552 n

end A246552

/-! ## A246552.P942966959484709567

`-ceil(xor(2, -(n+3))/4)`
-/

namespace A246552.P942966959484709567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(Int.xor 2 (-(n + 3 : ℤ)) : ℚ) / 4⌉

end

end A246552.P942966959484709567

namespace A246552

/-- `-ceil(xor(2, -(n+3))/4)` -/
def P942966959484709567.Spec : Prop :=
  ∀ n, P942966959484709567.a n = A246552 n

end A246552

/-! ## A246552.P6227186040691435981

`abs(a(n-4)+1)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A246552.P6227186040691435981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 2] fun n a =>
  a (n - 4) + 1

end

end A246552.P6227186040691435981

namespace A246552

/-- `abs(a(n-4)+1)` -/
def P6227186040691435981.Spec : Prop :=
  ∀ n, (P6227186040691435981.a n : ℤ) = A246552 n

end A246552

/-! ## A246552.P15644793255710749643

`ceil(n/2-a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A246552.P15644793255710749643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ⌈(n : ℚ) / 2 - (a (n - 2) : ℚ)⌉

end

end A246552.P15644793255710749643

namespace A246552

/-- `ceil(n/2-a(n-2))` -/
def P15644793255710749643.Spec : Prop :=
  ∀ n, P15644793255710749643.a n = A246552 n

end A246552

/-! ## A246552.P17544132055562978853

`round(n/2-a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A246552.P17544132055562978853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  SequenceMachineLib.roundAway ((n : ℚ) / 2 - (a (n - 2) : ℚ))

end

end A246552.P17544132055562978853

namespace A246552

/-- `round(n/2-a(n-2))` -/
def P17544132055562978853.Spec : Prop :=
  ∀ n, P17544132055562978853.a n = A246552 n

end A246552

/-! ## A246552.P12807380913114021816

`floor((and(2, n)²+n+1)/4)`
-/

namespace A246552.P12807380913114021816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land 2 n ^ 2 + (n + 1) : ℚ) / 4⌋

end

end A246552.P12807380913114021816

namespace A246552

/-- `floor((and(2, n)²+n+1)/4)` -/
def P12807380913114021816.Spec : Prop :=
  ∀ n, P12807380913114021816.a n = A246552 n

end A246552

/-! ## A246552.P2413104197493711588

`round((and(2, n)²+n-1)/4)`
-/

namespace A246552.P2413104197493711588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.land 2 n ^ 2 : ℤ) + ((n : ℤ) - 1) : ℚ) / 4)

end

end A246552.P2413104197493711588

namespace A246552

/-- `round((and(2, n)²+n-1)/4)` -/
def P2413104197493711588.Spec : Prop :=
  ∀ n, P2413104197493711588.a n = A246552 n

end A246552

/-! ## A246552.P17270756039899469797

`ceil((and(2, n)²+n-2)/4)`
-/

namespace A246552.P17270756039899469797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.land 2 n ^ 2 : ℤ) + ((n : ℤ) - 2) : ℚ) / 4⌉

end

end A246552.P17270756039899469797

namespace A246552

/-- `ceil((and(2, n)²+n-2)/4)` -/
def P17270756039899469797.Spec : Prop :=
  ∀ n, P17270756039899469797.a n = A246552 n

end A246552

/-! ## A246552.P17755927375068098102

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A246552.P17755927375068098102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 1, -1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246552.P17755927375068098102

namespace A246552

/-- `∑[floor(a(n-4))]` -/
def P17755927375068098102.Spec : Prop :=
  ∀ n, P17755927375068098102.a n = A246552 n

end A246552

/-! ## A246552.P12805967167404021017

`floor((2*and(2, n)+n+1)/4)`
-/

namespace A246552.P12805967167404021017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * Nat.land 2 n + (n + 1) : ℚ) / 4⌋

end

end A246552.P12805967167404021017

namespace A246552

/-- `floor((2*and(2, n)+n+1)/4)` -/
def P12805967167404021017.Spec : Prop :=
  ∀ n, P12805967167404021017.a n = A246552 n

end A246552

/-! ## A246552.P17372813191970100795

`round((and(4, 2*n)+n-1)/4)`
-/

namespace A246552.P17372813191970100795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.land 4 (2 * n) : ℤ) + ((n : ℤ) - 1) : ℚ) / 4)

end

end A246552.P17372813191970100795

namespace A246552

/-- `round((and(4, 2*n)+n-1)/4)` -/
def P17372813191970100795.Spec : Prop :=
  ∀ n, P17372813191970100795.a n = A246552 n

end A246552

/-! ## A246552.P17128048908302471623

`ceil((and(4, 2*n)+n-2)/4)`
-/

namespace A246552.P17128048908302471623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.land 4 (2 * n) : ℤ) + ((n : ℤ) - 2) : ℚ) / 4⌉

end

end A246552.P17128048908302471623

namespace A246552

/-- `ceil((and(4, 2*n)+n-2)/4)` -/
def P17128048908302471623.Spec : Prop :=
  ∀ n, P17128048908302471623.a n = A246552 n

end A246552

/-! ## A246552.P11093387768158017659

`ceil(xor(n+1, gcd(2, n+1))/4)`
-/

namespace A246552.P11093387768158017659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor (n + 1) (Nat.gcd 2 (n + 1)) : ℚ) / 4⌉

end

end A246552.P11093387768158017659

namespace A246552

/-- `ceil(xor(n+1, gcd(2, n+1))/4)` -/
def P11093387768158017659.Spec : Prop :=
  ∀ n, P11093387768158017659.a n = A246552 n

end A246552

/-! ## A246552.P4715472243978034903

`∑[a(n-4)^3]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=-1`
-/

namespace A246552.P4715472243978034903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 1, -1] fun n f1 =>
  f1 (n - 4) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246552.P4715472243978034903

namespace A246552

/-- `∑[a(n-4)^3]` -/
def P4715472243978034903.Spec : Prop :=
  ∀ n, P4715472243978034903.a n = A246552 n

end A246552

/-! ## A246552.P11723768337215445443

`A008611(A037915(n))`
-/

namespace A246552.P11723768337215445443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A037915 n).toNat

end

end A246552.P11723768337215445443

namespace A246552

/-- `A008611(A037915(n))` -/
def P11723768337215445443.Spec : Prop :=
  ∀ n, P11723768337215445443.a n = A246552 n

end A246552

/-!
# A246553: Limiting sequence obtained by taking the sequence 0, 2, 3, 5, 7, 11, 13, ... and applying an infinite process which is described in the comments.

The programs for A246553, there is no canonical definition to state claims against.
-/

/-! ## A246553.P1464581339402889873

`xor(record[A047814(n)], A247092(n+1))`
-/

namespace A246553.P1464581339402889873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A247092 (n + 1))

end

end A246553.P1464581339402889873

/-! ## A246553.P11601909121745220605

`xor(A182986(n+1), A247092(n+1))`
-/

namespace A246553.P11601909121745220605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A182986 (n + 1)) (A247092 (n + 1))

end

end A246553.P11601909121745220605

/-! ## A246553.P11447181763082717547

`xor(record[A008472(n+1)], A247092(n+1))`
-/

namespace A246553.P11447181763082717547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A247092 (n + 1))

end

end A246553.P11447181763082717547

/-! ## A246553.P10801742318403527150

`xor(comp[A018252(n+1)], A247092(n+1))`
-/

namespace A246553.P10801742318403527150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A247092 (n + 1))

end

end A246553.P10801742318403527150

/-! ## A246553.P501101551256473755

`xor(A001414(A008578(n+1)), A247092(n+1))`
-/

namespace A246553.P501101551256473755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001414 (A008578 (n + 1)).toNat) (A247092 (n + 1))

end

end A246553.P501101551256473755

/-!
# A246554: Concatenation of the n-th Fibonacci number with itself.

The programs for A246554, there is no canonical definition to state claims against.
-/

/-! ## A246554.P14232060304417146358

`A000045(n+1)*(10^A060384(n+1)+1)`
-/

namespace A246554.P14232060304417146358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) * ((10 : ℚ) ^ (A060384 (n + 1) : ℤ) + 1)

end

end A246554.P14232060304417146358

/-! ## A246554.P16164505083265390320

`A001704(A037027(∑[n]))-1`
-/

namespace A246554.P16164505083265390320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (A037027 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - 1

end

end A246554.P16164505083265390320

/-! ## A246554.P15528299732654388147

`A001704(∑[A212804(n)])-1`
-/

namespace A246554.P15528299732654388147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A246554.P15528299732654388147

/-! ## A246554.P13629433357461126081

`A001704(A000045(n+1))-1`
-/

namespace A246554.P13629433357461126081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (A000045 (n + 1)).toNat - 1

end

end A246554.P13629433357461126081

/-! ## A246554.P16719974852390596761

`A127421(A001611(n+1))-1`
-/

namespace A246554.P16719974852390596761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (A001611 (n + 1)).toNat - 1

end

end A246554.P16719974852390596761

/-!
# A246555: a(n) = A036765(n-1) if n>0, with a(0) = 1.

The programs for A246555, there is no canonical definition to state claims against.
-/

/-! ## A246555.P17947561458915608596

`A036765(abs(1-n))`
-/

namespace A246555.P17947561458915608596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036765 |1 - (n : ℤ)|.toNat

end

end A246555.P17947561458915608596

/-! ## A246555.P18291978571812975451

`A036765(n-1)%(6*a(n-1))` with `a(0)=1`
-/

namespace A246555.P18291978571812975451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A036765 (n - 1)) (6 * a (n - 1))

end

end A246555.P18291978571812975451

/-! ## A246555.P8683110980538378216

`A005726(A028310(n))/A028310(n)`
-/

namespace A246555.P8683110980538378216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005726 (A028310 n).toNat : ℚ) / (A028310 n : ℚ)

end

end A246555.P8683110980538378216

/-! ## A246555.P10728557249978369794

`A064580(A212342(n))`
-/

namespace A246555.P10728557249978369794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064580 (A212342 n).toNat

end

end A246555.P10728557249978369794

/-! ## A246555.P7426603233085244798

`A064580(A175631(n+2))`
-/

namespace A246555.P7426603233085244798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064580 (A175631 (n + 2)).toNat

end

end A246555.P7426603233085244798

/-! ## A246555.P10801467830167401192

`A288942(A134869(n+1)+2*n)`
-/

namespace A246555.P10801467830167401192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 (A134869 (n + 1) + (2 * n : ℤ)).toNat

end

end A246555.P10801467830167401192

/-! ## A246555.P16877215481798955796

`A288942(A134869(n+1)+n+n)`
-/

namespace A246555.P16877215481798955796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 (A134869 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A246555.P16877215481798955796

/-! ## A246555.P15509532662435869398

`A288942(n+1+A183572(∑[n]+1)+n)`
-/

namespace A246555.P15509532662435869398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 ((n + 1 : ℤ) + (A183572 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + (n : ℤ))).toNat

end

end A246555.P15509532662435869398

/-! ## A246555.P16063515780208367616

`A288942(A253145(n)+A005408(n))`
-/

namespace A246555.P16063515780208367616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 (A253145 n + A005408 n).toNat

end

end A246555.P16063515780208367616

/-! ## A246555.P1789572968345893642

`A288942(A000124(n)+A008486(n)+1)`
-/

namespace A246555.P1789572968345893642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 (A000124 n + (A008486 n + 1)).toNat

end

end A246555.P1789572968345893642

/-! ## A246555.P9199547978254959790

`A288942(A055999(n)+A036453(n+1))`
-/

namespace A246555.P9199547978254959790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 (A055999 n + A036453 (n + 1)).toNat

end

end A246555.P9199547978254959790

/-! ## A246555.P4358292971923818626

`A288942(A000038(n)+A055999(n)+2)`
-/

namespace A246555.P4358292971923818626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 (A000038 n + (A055999 n + 2)).toNat

end

end A246555.P4358292971923818626

/-! ## A246555.P6388580551682110492

`A288942(2-(A000038(n)-A055999(n)))`
-/

namespace A246555.P6388580551682110492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 (2 - (A000038 n - A055999 n)).toNat

end

end A246555.P6388580551682110492

/-!
# A246556: a(n) = smallest prime which divides Pell(n) = A000129(n) but does not divide any Pell(k) for k

The programs for A246556, there is no canonical definition to state claims against.
-/

/-! ## A246556.P6590702885619473240

`∑{p}[A308949(n+2), #]`
-/

namespace A246556.P6590702885619473240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308949 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A246556.P6590702885619473240

/-! ## A246556.P4408489354814844270

`A006530(A008555(n+2))`
-/

namespace A246556.P4408489354814844270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008555 (n + 2)).toNat

end

end A246556.P4408489354814844270

/-! ## A246556.P14519243562823497203

`A006530(A308949(n+2))`
-/

namespace A246556.P14519243562823497203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A308949 (n + 2)).toNat

end

end A246556.P14519243562823497203

/-! ## A246556.P6933743666937435919

`A006530(∏{p}[Δ[A048739(n)], #])`
-/

namespace A246556.P6933743666937435919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A246556.P6933743666937435919

/-! ## A246556.P496845232281573495

`A264137(A161953(n+1)+1)`
-/

namespace A246556.P496845232281573495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264137 (A161953 (n + 1) + 1).toNat

end

end A246556.P496845232281573495

/-!
# A246558: Product of the digits of the n-th Fibonacci number.

The programs for A246558, the canonical program `A246558.P11717952315131037420` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246558 has offset 0).

The definition of A246558 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246558.P11717952315131037420

`A007954(A000045(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A246558

/-- `A007954(A000045(n))` -/
def P11717952315131037420.Spec : Prop :=
  ∀ n, P11717952315131037420.a n = A246558 n

theorem P11717952315131037420.correct : P11717952315131037420.Spec := by
  intro n
  simp only [A246558]

end A246558

/-!
# A246562: Primes p such that 4+p, 4+p^2, 4+p^3, 4+p^5, and 4+p^7 are all prime.

The programs for A246562, there is no canonical definition to state claims against.
-/

/-! ## A246562.P12498290886419413573

`∩[A243859(n+1), A246519(n+1)]`
-/

namespace A246562.P12498290886419413573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246562.P12498290886419413573

/-!
# A246563: G.f.: Sum_{n>=0} x^n / (1-x^2)^(2*n+1) * [Sum_{k=0..n} C(n,k)^2 * x^(2*k)]^2.

The programs for A246563, there is no canonical definition to state claims against.
-/

/-! ## A246563.P861401571885528049

`or(∑[C(C(2, ∑{e}[n+1, #]), 2)], A108954(A151283(n)))`
-/

namespace A246563.P861401571885528049
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A108954 (A151283 n).toNat)

end

end A246563.P861401571885528049

/-! ## A246563.P8952322262466994863

`or(A030530(n), A108954(A151283(n)))`
-/

namespace A246563.P8952322262466994863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030530 n) (A108954 (A151283 n).toNat)

end

end A246563.P8952322262466994863

/-! ## A246563.P17452992691910324796

`A212625(A052321(n+1))*A324375(n)`
-/

namespace A246563.P17452992691910324796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212625 (A052321 (n + 1)).toNat * A324375 n

end

end A246563.P17452992691910324796

/-! ## A246563.P1160117783466228834

`lcm(A224076(A224081(n+1)), A324375(n))`
-/

namespace A246563.P1160117783466228834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A224076 (A224081 (n + 1)).toNat) (A324375 n)

end

end A246563.P1160117783466228834

/-!
# A246565: Number of rooted ordered trees with n non-root nodes such that the branch lengths are weakly increasing.

The programs for A246565, there is no canonical definition to state claims against.
-/

/-! ## A246565.P2454679076090405730

`A194967(A095064(n+2))`
-/

namespace A246565.P2454679076090405730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194967 (A095064 (n + 2)).toNat

end

end A246565.P2454679076090405730

/-! ## A246565.P17641924096848540702

`A368728(A003243(n+2))`
-/

namespace A246565.P17641924096848540702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368728 (A003243 (n + 2)).toNat

end

end A246565.P17641924096848540702

/-! ## A246565.P13375238753889515454

`A353838(or(A100257(n), A319755(n)))`
-/

namespace A246565.P13375238753889515454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353838 (Int.lor (A100257 n) (A319755 n)).toNat

end

end A246565.P13375238753889515454

/-! ## A246565.P7100477788017285126

`A003059(A129445(n+1))-A000045(n)`
-/

namespace A246565.P7100477788017285126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A129445 (n + 1)).toNat - A000045 n

end

end A246565.P7100477788017285126

/-! ## A246565.P16564326905548739371

`A353838(or(A001227(3*n+1), A319755(n)))`
-/

namespace A246565.P16564326905548739371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353838 (Int.lor (A001227 (3 * n + 1)) (A319755 n)).toNat

end

end A246565.P16564326905548739371

/-!
# A246566: Number of rooted ordered trees with n non-root nodes such that the branch lengths are weakly decreasing.

The programs for A246566, there is no canonical definition to state claims against.
-/

/-! ## A246566.P15100211859102418402

`A243284(A149239(n))`
-/

namespace A246566.P15100211859102418402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243284 (A149239 n).toNat

end

end A246566.P15100211859102418402

/-! ## A246566.P14620012170437118585

`A347831(A243083(n))`
-/

namespace A246566.P14620012170437118585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347831 (A243083 n).toNat

end

end A246566.P14620012170437118585

/-! ## A246566.P11029504971289034508

`A347831(A239561(n+1))`
-/

namespace A246566.P11029504971289034508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347831 (A239561 (n + 1)).toNat

end

end A246566.P11029504971289034508

/-! ## A246566.P4934405996629636198

`A206432(n)+A014027(A338729(n))`
-/

namespace A246566.P4934405996629636198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206432 n + A014027 (A338729 n).toNat

end

end A246566.P4934405996629636198

/-!
# A246567: a(n) = (sum_{k=0}^{n-1}C(n-1,k)^2*C(-n-1,k)^2/(4*k^2-1))/n, where C(x,k) refers to binomial(x,k).

The programs for A246567, there is no canonical definition to state claims against.
-/

/-! ## A246567.P9879798177853388950

`A257684(A058790(n+2))-1`
-/

namespace A246567.P9879798177853388950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257684 (A058790 (n + 2)).toNat - 1

end

end A246567.P9879798177853388950

/-!
# A246568: Near-Wieferich primes (primes p satisfying 2^((p-1)/2) == +-1 + A*p (mod p^2)) with |A| < 10.

The programs for A246568, there is no canonical definition to state claims against.
-/

/-! ## A246568.P10916315492928256500

`p?[lt[n, A161904(n+1)²]]`
-/

namespace A246568.P10916315492928256500
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161904 (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A246568.P10916315492928256500

/-! ## A246568.P5147899015918849426

`p?[lt[A000196(n), A161904(n+1)]]`
-/

namespace A246568.P5147899015918849426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161904 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A246568.P5147899015918849426

/-! ## A246568.P12112542514748814589

`p?[A004438(n+1)-A030057(n+1)]`
-/

namespace A246568.P12112542514748814589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004438 (n + 1) - A030057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246568.P12112542514748814589

/-! ## A246568.P16177770598402124371

`p?[A349707(n+1)-A349671(2*n+3)]`
-/

namespace A246568.P16177770598402124371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349707 (n + 1) - A349671 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246568.P16177770598402124371

/-! ## A246568.P3842103969934724075

`A000040(lt[A333225(n+1), A062708(n)])`
-/

namespace A246568.P3842103969934724075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A246568.P3842103969934724075

/-!
# A246570: G.f.: Sum_{n>=0} x^n / (1-x)^(4*n+1) * [Sum_{k=0..2*n} C(2*n,k)^2 * x^k]^2.

The programs for A246570, there is no canonical definition to state claims against.
-/

/-! ## A246570.P1098807151241396307

`A246563(2*n)`
-/

namespace A246570.P1098807151241396307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246563 (2 * n)

end

end A246570.P1098807151241396307

/-! ## A246570.P12229258352406710970

`record[A246563(A068527(n))]`
-/

namespace A246570.P12229258352406710970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246563 (A068527 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246570.P12229258352406710970

/-! ## A246570.P11158410164540610638

`record[A246563(A026741(n)+1)]`
-/

namespace A246570.P11158410164540610638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246563 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246570.P11158410164540610638

/-! ## A246570.P17600430682500463804

`record[A246563(lcm(n, A056594(n)))]`
-/

namespace A246570.P17600430682500463804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246563 (Int.lcm (n : ℤ) (A056594 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246570.P17600430682500463804

/-! ## A246570.P16291800645039859050

`record[A246563(Δ[A001318(n)]-1)]`
-/

namespace A246570.P16291800645039859050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246563 (f2 (n + 1) - f2 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246570.P16291800645039859050

/-!
# A246571: G.f.: Sum_{n>=0} x^n / (1-x)^(4*n+3) * [Sum_{k=0..2*n+1} C(2*n+1,k)^2 * x^k]^2.

The programs for A246571, there is no canonical definition to state claims against.
-/

/-! ## A246571.P12706134318406078133

`A246563(Δ[n²])`
-/

namespace A246571.P12706134318406078133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246563 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A246571.P12706134318406078133

/-! ## A246571.P12708325899487041619

`record[A246563(n*n%2)]`
-/

namespace A246571.P12708325899487041619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246563 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246571.P12708325899487041619

/-! ## A246571.P17971127727244217328

`record[A246563(A026741(n))]`
-/

namespace A246571.P17971127727244217328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246563 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246571.P17971127727244217328

/-! ## A246571.P426557242096592223

`record[A246563(Δ[A001318(n)])]`
-/

namespace A246571.P426557242096592223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246563 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246571.P426557242096592223

/-! ## A246571.P17637847663841113050

`record[A246563(A068527(n)+1)]`
-/

namespace A246571.P17637847663841113050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246563 (A068527 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246571.P17637847663841113050

/-!
# A246572: G.f.: sqrt( Sum_{n>=0} x^n / (1-x)^(4*n+1) * [Sum_{k=0..2*n} C(2*n,k)^2 * x^k]^2 ).

The programs for A246572, there is no canonical definition to state claims against.
-/

/-! ## A246572.P17867240027071371627

`A292316(n!)/6`
-/

namespace A246572.P17867240027071371627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292316 (Nat.factorial n) : ℚ) / 6

end

end A246572.P17867240027071371627

/-!
# A246573: G.f.: sqrt( Sum_{n>=0} x^n / (1-x)^(4*n+3) * [Sum_{k=0..2*n+1} C(2*n+1,k)^2 * x^k]^2 ).

The programs for A246573, there is no canonical definition to state claims against.
-/

/-! ## A246573.P3119147577188806593

`A094053(A081342(n))+A000262(n)`
-/

namespace A246573.P3119147577188806593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094053 (A081342 n).toNat + A000262 n

end

end A246573.P3119147577188806593

/-!
# A246574: a(n) = 2*(n-1)*Catalan(n).

The programs for A246574, the canonical program `A246574.P7018235602097910141` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246574 has offset 1).

The definition of A246574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246574.P4018714558926018248

`2*n*∏[2*(2*n+1)/(n+2)]`
-/

namespace A246574.P4018714558926018248
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((2 * n + 1 : ℚ) / (n + 2 : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℚ) * (∏ j ∈ Finset.range (n + 1), f1 j))

end

end A246574.P4018714558926018248

namespace A246574

/-- `2*n*∏[2*(2*n+1)/(n+2)]` -/
def P4018714558926018248.Spec : Prop :=
  ∀ n, P4018714558926018248.a n = (A246574 (n + 1) : ℚ)

end A246574

/-! ## A246574.P7018235602097910141

`record[n*A099364(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A246574

/-- `record[n*A099364(n)]` -/
def P7018235602097910141.Spec : Prop :=
  ∀ n, P7018235602097910141.a n = A246574 (n + 1)

theorem P7018235602097910141.correct : P7018235602097910141.Spec := by
  intro n
  simp only [A246574, Nat.add_sub_cancel]

end A246574

/-! ## A246574.P5371970464903343180

`record[abs(n*A115143(n))]`
-/

namespace A246574.P5371970464903343180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A115143 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246574.P5371970464903343180

namespace A246574

/-- `record[abs(n*A115143(n))]` -/
def P5371970464903343180.Spec : Prop :=
  ∀ n, P5371970464903343180.a n = A246574 (n + 1)

end A246574

/-! ## A246574.P9035245407190330232

`Δ[4*A371965(n+1)]`
-/

namespace A246574.P9035245407190330232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A371965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A246574.P9035245407190330232

namespace A246574

/-- `Δ[4*A371965(n+1)]` -/
def P9035245407190330232.Spec : Prop :=
  ∀ n, P9035245407190330232.a n = A246574 (n + 1)

end A246574

/-! ## A246574.P292915579060155346

`record[n*A099363(n+2)]`
-/

namespace A246574.P292915579060155346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A099363 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246574.P292915579060155346

namespace A246574

/-- `record[n*A099363(n+2)]` -/
def P292915579060155346.Spec : Prop :=
  ∀ n, P292915579060155346.a n = A246574 (n + 1)

end A246574

/-! ## A246574.P16805872006319647482

`record[n*A126120(n+2)]`
-/

namespace A246574.P16805872006319647482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A126120 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246574.P16805872006319647482

namespace A246574

/-- `record[n*A126120(n+2)]` -/
def P16805872006319647482.Spec : Prop :=
  ∀ n, P16805872006319647482.a n = A246574 (n + 1)

end A246574

/-! ## A246574.P2673171734932284256

`record[n*Δ[A329696(n+1)]]`
-/

namespace A246574.P2673171734932284256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329696 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246574.P2673171734932284256

namespace A246574

/-- `record[n*Δ[A329696(n+1)]]` -/
def P2673171734932284256.Spec : Prop :=
  ∀ n, P2673171734932284256.a n = A246574 (n + 1)

end A246574

/-! ## A246574.P2322350075978539223

`abs(n*A099364(2*n+1))`
-/

namespace A246574.P2322350075978539223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A099364 (2 * n + 1)|

end

end A246574.P2322350075978539223

namespace A246574

/-- `abs(n*A099364(2*n+1))` -/
def P2322350075978539223.Spec : Prop :=
  ∀ n, P2322350075978539223.a n = A246574 (n + 1)

end A246574

/-! ## A246574.P16745225266187574520

`A390115(n+2)-A002057(n)`
-/

namespace A246574.P16745225266187574520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390115 (n + 2) - A002057 n

end

end A246574.P16745225266187574520

namespace A246574

/-- `A390115(n+2)-A002057(n)` -/
def P16745225266187574520.Spec : Prop :=
  ∀ n, P16745225266187574520.a n = A246574 (n + 1)

end A246574

/-! ## A246574.P2582511229550319025

`A276666(n+1)+A276666(n+1)`
-/

namespace A246574.P2582511229550319025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276666 (n + 1) + A276666 (n + 1)

end

end A246574.P2582511229550319025

namespace A246574

/-- `A276666(n+1)+A276666(n+1)` -/
def P2582511229550319025.Spec : Prop :=
  ∀ n, P2582511229550319025.a n = A246574 (n + 1)

end A246574

/-! ## A246574.P17403514197793293432

`A002054(n+1)-A120009(n+1)`
-/

namespace A246574.P17403514197793293432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002054 (n + 1) - A120009 (n + 1)

end

end A246574.P17403514197793293432

namespace A246574

/-- `A002054(n+1)-A120009(n+1)` -/
def P17403514197793293432.Spec : Prop :=
  ∀ n, P17403514197793293432.a n = A246574 (n + 1)

end A246574

/-! ## A246574.P6235626826553434363

`A214955(n+1)-A000108(n+1)`
-/

namespace A246574.P6235626826553434363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214955 (n + 1) - A000108 (n + 1)

end

end A246574.P6235626826553434363

namespace A246574

/-- `A214955(n+1)-A000108(n+1)` -/
def P6235626826553434363.Spec : Prop :=
  ∀ n, P6235626826553434363.a n = A246574 (n + 1)

end A246574

/-! ## A246574.P10891285823518742452

`A024483(n+2)+A024483(n+2)`
-/

namespace A246574.P10891285823518742452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024483 (n + 2) + A024483 (n + 2)

end

end A246574.P10891285823518742452

namespace A246574

/-- `A024483(n+2)+A024483(n+2)` -/
def P10891285823518742452.Spec : Prop :=
  ∀ n, P10891285823518742452.a n = A246574 (n + 1)

end A246574

/-! ## A246574.P3976116746688777290

`A116385(2*n+1)+A116385(2*n+1)`
-/

namespace A246574.P3976116746688777290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116385 (2 * n + 1) + A116385 (2 * n + 1)

end

end A246574.P3976116746688777290

namespace A246574

/-- `A116385(2*n+1)+A116385(2*n+1)` -/
def P3976116746688777290.Spec : Prop :=
  ∀ n, P3976116746688777290.a n = A246574 (n + 1)

end A246574

/-! ## A246574.P9529720087944728742

`A162551(n+1)+A162551(n+1)-A028329(n+1)`
-/

namespace A246574.P9529720087944728742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162551 (n + 1) + (A162551 (n + 1) - A028329 (n + 1))

end

end A246574.P9529720087944728742

namespace A246574

/-- `A162551(n+1)+A162551(n+1)-A028329(n+1)` -/
def P9529720087944728742.Spec : Prop :=
  ∀ n, P9529720087944728742.a n = A246574 (n + 1)

end A246574

/-! ## A246574.P14132264919568999558

`A162551(n+1)+A162551(n+1)-A100320(n+1)`
-/

namespace A246574.P14132264919568999558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162551 (n + 1) + (A162551 (n + 1) - A100320 (n + 1))

end

end A246574.P14132264919568999558

namespace A246574

/-- `A162551(n+1)+A162551(n+1)-A100320(n+1)` -/
def P14132264919568999558.Spec : Prop :=
  ∀ n, P14132264919568999558.a n = A246574 (n + 1)

end A246574

/-! ## A246574.P14896665992984136631

`A185080(n+1)-(A051960(n+1)+A024482(n+2))`
-/

namespace A246574.P14896665992984136631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185080 (n + 1) - (A051960 (n + 1) + A024482 (n + 2))

end

end A246574.P14896665992984136631

namespace A246574

/-- `A185080(n+1)-(A051960(n+1)+A024482(n+2))` -/
def P14896665992984136631.Spec : Prop :=
  ∀ n, P14896665992984136631.a n = A246574 (n + 1)

end A246574

/-! ## A246574.P9466439587096805825

`A185080(n+1)-(A097613(n+2)+A051960(n+1))`
-/

namespace A246574.P9466439587096805825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185080 (n + 1) - (A097613 (n + 2) + A051960 (n + 1))

end

end A246574.P9466439587096805825

namespace A246574

/-- `A185080(n+1)-(A097613(n+2)+A051960(n+1))` -/
def P9466439587096805825.Spec : Prop :=
  ∀ n, P9466439587096805825.a n = A246574 (n + 1)

end A246574

/-! ## A246574.P19183280847490325

`A128650(n+3)-(A000984(n+1)+A000984(n+1))`
-/

namespace A246574.P19183280847490325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128650 (n + 3) - (A000984 (n + 1) + A000984 (n + 1))

end

end A246574.P19183280847490325

namespace A246574

/-- `A128650(n+3)-(A000984(n+1)+A000984(n+1))` -/
def P19183280847490325.Spec : Prop :=
  ∀ n, P19183280847490325.a n = A246574 (n + 1)

end A246574

/-! ## A246574.P15399811211162033294

`A129869(n+2)+A129869(n+2)-A000984(n+1)`
-/

namespace A246574.P15399811211162033294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129869 (n + 2) + (A129869 (n + 2) - A000984 (n + 1))

end

end A246574.P15399811211162033294

namespace A246574

/-- `A129869(n+2)+A129869(n+2)-A000984(n+1)` -/
def P15399811211162033294.Spec : Prop :=
  ∀ n, P15399811211162033294.a n = A246574 (n + 1)

end A246574

/-!
# A246575: Expansion of (Product_{r>=1} (1-x^r))*x^(k^2) / Product_{i=1..k} (1-x^i)^2 with k=1.

The programs for A246575, the canonical program `A246575.P17700213826678581396` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246575 has offset 0).

The definition of A246575 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246575.P17700213826678581396

`∑[A078616(abs(1-n))]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A246575

/-- `∑[A078616(abs(1-n))]` -/
def P17700213826678581396.Spec : Prop :=
  ∀ n, P17700213826678581396.a n = A246575 n

theorem P17700213826678581396.correct : P17700213826678581396.Spec := by
  intro n
  simp only [A246575]

end A246575

/-! ## A246575.P15062032926476691067

`A078616(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A246575.P15062032926476691067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A078616 (n - 1) + a (n - 1)

end

end A246575.P15062032926476691067

namespace A246575

/-- `A078616(n-1)+a(n-1)` -/
def P15062032926476691067.Spec : Prop :=
  ∀ n, P15062032926476691067.a n = A246575 n

end A246575

/-! ## A246575.P8233180984177845681

`∑[∑[A010815(abs(1-n))]]+n+1`
-/

namespace A246575.P8233180984177845681
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A246575.P8233180984177845681

namespace A246575

/-- `∑[∑[A010815(abs(1-n))]]+n+1` -/
def P8233180984177845681.Spec : Prop :=
  ∀ n, P8233180984177845681.a n = A246575 n

end A246575

/-! ## A246575.P8362385506548988794

`∑[A078616(n)-A010815(n)]`
-/

namespace A246575.P8362385506548988794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078616 n - A010815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246575.P8362385506548988794

namespace A246575

/-- `∑[A078616(n)-A010815(n)]` -/
def P8362385506548988794.Spec : Prop :=
  ∀ n, P8362385506548988794.a n = A246575 n

end A246575

/-! ## A246575.P1415063548405783891

`∑[A257628(n)-∑[A257628(n)]]+n`
-/

namespace A246575.P1415063548405783891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257628 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257628 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A246575.P1415063548405783891

namespace A246575

/-- `∑[A257628(n)-∑[A257628(n)]]+n` -/
def P1415063548405783891.Spec : Prop :=
  ∀ n, P1415063548405783891.a n = A246575 n

end A246575

/-! ## A246575.P6039874359847338640

`∑[A078616(n)-(-1)^n*A121373(n)]`
-/

namespace A246575.P6039874359847338640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078616 n - (-1) ^ n * A121373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246575.P6039874359847338640

namespace A246575

/-- `∑[A078616(n)-(-1)^n*A121373(n)]` -/
def P6039874359847338640.Spec : Prop :=
  ∀ n, P6039874359847338640.a n = A246575 n

end A246575

/-! ## A246575.P16295722055438265741

`∑[∑[A274719(2*n)]-A274719(2*n)]`
-/

namespace A246575.P16295722055438265741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274719 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A274719 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246575.P16295722055438265741

namespace A246575

/-- `∑[∑[A274719(2*n)]-A274719(2*n)]` -/
def P16295722055438265741.Spec : Prop :=
  ∀ n, P16295722055438265741.a n = A246575 n

end A246575

/-! ## A246575.P14600149804313325934

`∑[A238208(n)-A238215(n)]`
-/

namespace A246575.P14600149804313325934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238208 n - A238215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246575.P14600149804313325934

namespace A246575

/-- `∑[A238208(n)-A238215(n)]` -/
def P14600149804313325934.Spec : Prop :=
  ∀ n, P14600149804313325934.a n = A246575 n

end A246575

/-! ## A246575.P13571016381837557318

`A320836(2*A001747(n+1))`
-/

namespace A246575.P13571016381837557318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320836 (2 * A001747 (n + 1)).toNat

end

end A246575.P13571016381837557318

namespace A246575

/-- `A320836(2*A001747(n+1))` -/
def P13571016381837557318.Spec : Prop :=
  ∀ n, P13571016381837557318.a n = A246575 n

end A246575

/-! ## A246575.P14396866913122782305

`A320836(4*A008578(n+1))`
-/

namespace A246575.P14396866913122782305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320836 (4 * A008578 (n + 1)).toNat

end

end A246575.P14396866913122782305

namespace A246575

/-- `A320836(4*A008578(n+1))` -/
def P14396866913122782305.Spec : Prop :=
  ∀ n, P14396866913122782305.a n = A246575 n

end A246575

/-!
# A246581: G.f.: x^((k^2 + k)/2) / (Product_{i=1..k} (1 - x^i) * Product_{r>=1} (1 + x^r)) with k = 2.

The programs for A246581, there is no canonical definition to state claims against.
-/

/-! ## A246581.P17414970803951852756

`A246582(n+3)-A246582(n)`
-/

namespace A246581.P17414970803951852756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246582 (n + 3) - A246582 n

end

end A246581.P17414970803951852756

/-! ## A246581.P16608602725888228575

`A320835(lcm(3, A046022(n+1)))`
-/

namespace A246581.P16608602725888228575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320835 (Int.lcm 3 (A046022 (n + 1)))

end

end A246581.P16608602725888228575

/-! ## A246581.P4216177338821763549

`A320835(record[A010702(n)*A064989(n+1)])`
-/

namespace A246581.P4216177338821763549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010702 n * A064989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320835 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A246581.P4216177338821763549

/-! ## A246581.P11369337341765855554

`A174713(A135276(n))-A075313(A119620(n))`
-/

namespace A246581.P11369337341765855554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174713 (A135276 n).toNat - A075313 (A119620 n).toNat

end

end A246581.P11369337341765855554

/-! ## A246581.P1820155462903909

`A316441(Δ[A053209(n)])`
-/

namespace A246581.P1820155462903909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (f1 (n + 1) - f1 n).toNat

end

end A246581.P1820155462903909

/-!
# A246582: G.f.: x^((k^2+k)/2)/(mul(1-x^i,i=1..k)*mul(1+x^r,r=1..oo)) with k = 3.

The programs for A246582, there is no canonical definition to state claims against.
-/

/-! ## A246582.P3375699585031229411

`A246583(n+4)-A246583(n)`
-/

namespace A246582.P3375699585031229411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246583 (n + 4) - A246583 n

end

end A246582.P3375699585031229411

/-! ## A246582.P14015157067036448702

`Δ[A175402(record[A005940(n+1)])]`
-/

namespace A246582.P14015157067036448702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175402 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A246582.P14015157067036448702

/-! ## A246582.P5144354262478120009

`A086073(A011782(n))-A302643(n+1)`
-/

namespace A246582.P5144354262478120009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086073 (A011782 n).toNat - A302643 (n + 1)

end

end A246582.P5144354262478120009

/-! ## A246582.P17576233547693035376

`A022597(n)%A055642(A125141(n+1))`
-/

namespace A246582.P17576233547693035376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022597 n) (A055642 (A125141 (n + 1)).toNat)

end

end A246582.P17576233547693035376

/-! ## A246582.P5928492384735634245

`A143629(A038712(n+1))%A290792(n)`
-/

namespace A246582.P5928492384735634245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143629 (A038712 (n + 1)).toNat) (A290792 n)

end

end A246582.P5928492384735634245

/-!
# A246584: Number of overcubic partitions of n.

The programs for A246584, there is no canonical definition to state claims against.
-/

/-! ## A246584.P1744337183397644644

`A328596(A304706(n)+A182747(n))`
-/

namespace A246584.P1744337183397644644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328596 (A304706 n + A182747 n).toNat

end

end A246584.P1744337183397644644

/-! ## A246584.P141310643234306040

`A066186(n)+A003005(A052321(n+1))`
-/

namespace A246584.P141310643234306040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n + A003005 (A052321 (n + 1)).toNat

end

end A246584.P141310643234306040

/-! ## A246584.P18122570536271051

`A328596(A008965(n+1)+A008794(n))`
-/

namespace A246584.P18122570536271051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328596 (A008965 (n + 1) + A008794 n).toNat

end

end A246584.P18122570536271051

/-! ## A246584.P17587909217320520905

`A109860(A000070(n))-A000040(n+1)`
-/

namespace A246584.P17587909217320520905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109860 (A000070 n).toNat - A000040 (n + 1)

end

end A246584.P17587909217320520905

/-!
# A246585: Zeroth trisection of A246584.

The programs for A246585, there is no canonical definition to state claims against.
-/

/-! ## A246585.P2364472125214552664

`A246584(3*n)`
-/

namespace A246585.P2364472125214552664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246584 (3 * n)

end

end A246585.P2364472125214552664

/-! ## A246585.P14312685740138718412

`record[A246584(A071045(n))]`
-/

namespace A246585.P14312685740138718412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246584 (A071045 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246585.P14312685740138718412

/-! ## A246585.P12776725378195129314

`record[A246584(A006368(A014681(n)))]`
-/

namespace A246585.P12776725378195129314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246584 (A006368 (A014681 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246585.P12776725378195129314

/-! ## A246585.P2836216418090295041

`record[A246584(A004524(A165355(n)))]`
-/

namespace A246585.P2836216418090295041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246584 (A004524 (A165355 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246585.P2836216418090295041

/-! ## A246585.P10070926453234536806

`A246584(A008486(n))-A000007(n)`
-/

namespace A246585.P10070926453234536806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246584 (A008486 n).toNat - A000007 n

end

end A246585.P10070926453234536806

/-!
# A246586: First trisection of A246584.

The programs for A246586, there is no canonical definition to state claims against.
-/

/-! ## A246586.P4436127103789717492

`A246584(3*n+1)`
-/

namespace A246586.P4436127103789717492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246584 (3 * n + 1)

end

end A246586.P4436127103789717492

/-! ## A246586.P5464799321275296833

`lcm(2, A246584(A016777(n)))`
-/

namespace A246586.P5464799321275296833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A246584 (A016777 n).toNat)

end

end A246586.P5464799321275296833

/-! ## A246586.P3908450998765046406

`record[A246584(A071045(n)+1)]`
-/

namespace A246586.P3908450998765046406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246584 (A071045 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246586.P3908450998765046406

/-! ## A246586.P15402081518196992217

`record[A246584(A014682(n+1)-1)]`
-/

namespace A246586.P15402081518196992217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246584 (A014682 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246586.P15402081518196992217

/-! ## A246586.P969825003243537687

`A246584(A016777(n))-A000035(2*n)`
-/

namespace A246586.P969825003243537687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246584 (A016777 n).toNat - A000035 (2 * n)

end

end A246586.P969825003243537687

/-! ## A246586.P6521811800850515568

`A246584(A016777(n))/A226444(A067029(n+1))`
-/

namespace A246586.P6521811800850515568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246584 (A016777 n).toNat : ℚ) / (A226444 (A067029 (n + 1)).toNat : ℚ)

end

end A246586.P6521811800850515568

/-! ## A246586.P8706151124530601958

`A246584(A016777(n))^A001222(A007510(n+1))`
-/

namespace A246586.P8706151124530601958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246584 (A016777 n).toNat : ℚ) ^ (A001222 (A007510 (n + 1)).toNat : ℤ)

end

end A246586.P8706151124530601958

/-! ## A246586.P17864855381711767118

`A246584(A016777(n))%A246587(n)`
-/

namespace A246586.P17864855381711767118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246584 (A016777 n).toNat) (A246587 n)

end

end A246586.P17864855381711767118

/-! ## A246586.P1833016338101085965

`A014963(A017137(n))*A246584(A016777(n))`
-/

namespace A246586.P1833016338101085965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A017137 n).toNat * A246584 (A016777 n).toNat

end

end A246586.P1833016338101085965

/-! ## A246586.P7238203485329452375

`A246584(A016777(n))^(A000265(n²+1)%4)`
-/

namespace A246586.P7238203485329452375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246584 (A016777 n).toNat : ℚ) ^ (Int.tmod (A000265 (n ^ 2 + 1)) 4 : ℤ)

end

end A246586.P7238203485329452375

/-! ## A246586.P16494837905444758313

`A007318(A000096(n))*A246584(A016777(n))`
-/

namespace A246586.P16494837905444758313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A246584 (A016777 n).toNat

end

end A246586.P16494837905444758313

/-! ## A246586.P4729469943449838751

`A246584(A016777(n))/A014963(A056901(n+1))`
-/

namespace A246586.P4729469943449838751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246584 (A016777 n).toNat : ℚ) / (A014963 (A056901 (n + 1)).toNat : ℚ)

end

end A246586.P4729469943449838751

/-!
# A246587: Second trisection of A246584.

The programs for A246587, there is no canonical definition to state claims against.
-/

/-! ## A246587.P17201896902686739868

`A246584(3*n+2)`
-/

namespace A246587.P17201896902686739868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246584 (3 * n + 2)

end

end A246587.P17201896902686739868

/-! ## A246587.P8946107535281319629

`lcm(2, A246584(A016789(n)))`
-/

namespace A246587.P8946107535281319629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A246584 (A016789 n).toNat)

end

end A246587.P8946107535281319629

/-! ## A246587.P13347542974987397443

`record[A246584(Δ[A092530(n)])]`
-/

namespace A246587.P13347542974987397443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092530 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246584 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246587.P13347542974987397443

/-! ## A246587.P15515360237494305782

`record[A246584(A014682(n+1))]`
-/

namespace A246587.P15515360237494305782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246584 (A014682 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246587.P15515360237494305782

/-! ## A246587.P18394736768788770310

`A246584(A016789(n))/A002217(A000040(n+1))`
-/

namespace A246587.P18394736768788770310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246584 (A016789 n).toNat : ℚ) / (A002217 (A000040 (n + 1)).toNat : ℚ)

end

end A246587.P18394736768788770310

/-! ## A246587.P1688572469125754563

`A246584(A016789(n))%A254467(n)`
-/

namespace A246587.P1688572469125754563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246584 (A016789 n).toNat) (A254467 n)

end

end A246587.P1688572469125754563

/-!
# A246588: Run Length Transform of S(n) = wt(n) = 0,1,1,2,1,2,2,3,1,... (cf. A000120).

The programs for A246588, the canonical program `A246588.P4316135322140067777` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246588 has offset 0).

The definition of A246588 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246588.P4316135322140067777

`∏{e}[A278222(n), A000120(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A246588

/-- `∏{e}[A278222(n), A000120(#)]` -/
def P4316135322140067777.Spec : Prop :=
  ∀ n, P4316135322140067777.a n = A246588 n

theorem P4316135322140067777.correct : P4316135322140067777.Spec := by
  intro n
  simp only [A246588]

end A246588

/-! ## A246588.P7497733005013056910

`∏{e}[A005940(n+1), A000120(#)]`
-/

namespace A246588.P7497733005013056910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000120 (Nat.factorization (f1 n).natAbs p)

end

end A246588.P7497733005013056910

namespace A246588

/-- `∏{e}[A005940(n+1), A000120(#)]` -/
def P7497733005013056910.Spec : Prop :=
  ∀ n, P7497733005013056910.a n = A246588 n

end A246588

/-! ## A246588.P9283852674548607616

`∏{e}[A005940(n+1), A335474(#)]`
-/

namespace A246588.P9283852674548607616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A335474 (Nat.factorization (f1 n).natAbs p)

end

end A246588.P9283852674548607616

namespace A246588

/-- `∏{e}[A005940(n+1), A335474(#)]` -/
def P9283852674548607616.Spec : Prop :=
  ∀ n, P9283852674548607616.a n = A246588 n

end A246588

/-! ## A246588.P3011671480721273376

`∏{e}[A005940(n+1), A000194(A079314(#))]`
-/

namespace A246588.P3011671480721273376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000194 (A079314 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A246588.P3011671480721273376

namespace A246588

/-- `∏{e}[A005940(n+1), A000194(A079314(#))]` -/
def P3011671480721273376.Spec : Prop :=
  ∀ n, P3011671480721273376.a n = A246588 n

end A246588

/-! ## A246588.P9920602650217303311

`∏{e}[A332815(n), A000120(#)]`
-/

namespace A246588.P9920602650217303311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000120 (Nat.factorization (f1 n).natAbs p)

end

end A246588.P9920602650217303311

namespace A246588

/-- `∏{e}[A332815(n), A000120(#)]` -/
def P9920602650217303311.Spec : Prop :=
  ∀ n, P9920602650217303311.a n = A246588 n

end A246588

/-! ## A246588.P685491776727163761

`A318655(4^A227349(n))`
-/

namespace A246588.P685491776727163761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318655 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A227349 n : ℤ))).toNat

end

end A246588.P685491776727163761

namespace A246588

/-- `A318655(4^A227349(n))` -/
def P685491776727163761.Spec : Prop :=
  ∀ n, P685491776727163761.a n = A246588 n

end A246588

/-! ## A246588.P18402517030668880351

`A005680(A046092(A227349(n)²))`
-/

namespace A246588.P18402517030668880351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005680 (A046092 (A227349 n ^ 2).toNat).toNat

end

end A246588.P18402517030668880351

namespace A246588

/-- `A005680(A046092(A227349(n)²))` -/
def P18402517030668880351.Spec : Prop :=
  ∀ n, P18402517030668880351.a n = A246588 n

end A246588

/-! ## A246588.P812037393917393847

`A060500(A000325(A227349(n))²)`
-/

namespace A246588.P812037393917393847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 (A000325 (A227349 n).toNat ^ 2).toNat

end

end A246588.P812037393917393847

namespace A246588

/-- `A060500(A000325(A227349(n))²)` -/
def P812037393917393847.Spec : Prop :=
  ∀ n, P812037393917393847.a n = A246588 n

end A246588

/-! ## A246588.P15584066216298603277

`A020639(A141618(A227349(n)²))`
-/

namespace A246588.P15584066216298603277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A141618 (A227349 n ^ 2).toNat).toNat

end

end A246588.P15584066216298603277

namespace A246588

/-- `A020639(A141618(A227349(n)²))` -/
def P15584066216298603277.Spec : Prop :=
  ∀ n, P15584066216298603277.a n = A246588 n

end A246588

/-! ## A246588.P1901703555262438938

`A040001(A335842(A227349(n)²))`
-/

namespace A246588.P1901703555262438938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A335842 (A227349 n ^ 2).toNat).toNat

end

end A246588.P1901703555262438938

namespace A246588

/-- `A040001(A335842(A227349(n)²))` -/
def P1901703555262438938.Spec : Prop :=
  ∀ n, P1901703555262438938.a n = A246588 n

end A246588

/-! ## A246588.P10820883755847977132

`A228349(A240199(A246595(n))²)`
-/

namespace A246588.P10820883755847977132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228349 (A240199 (A246595 n).toNat ^ 2).toNat

end

end A246588.P10820883755847977132

namespace A246588

/-- `A228349(A240199(A246595(n))²)` -/
def P10820883755847977132.Spec : Prop :=
  ∀ n, P10820883755847977132.a n = A246588 n

end A246588

/-! ## A246588.P15151128449360539512

`A000120(A227349(n)%A293372(n+8))`
-/

namespace A246588.P15151128449360539512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.tmod (A227349 n) (A293372 (n + 8))).toNat

end

end A246588.P15151128449360539512

namespace A246588

/-- `A000120(A227349(n)%A293372(n+8))` -/
def P15151128449360539512.Spec : Prop :=
  ∀ n, P15151128449360539512.a n = A246588 n

end A246588

/-!
# A246589: A maximal expulsion set containing the cubes as a subset.

The programs for A246589, there is no canonical definition to state claims against.
-/

/-! ## A246589.P11817678547488733281

`∑[A020639(A034720(n+1)*A057728(n+1))]`
-/

namespace A246589.P11817678547488733281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A034720 (n + 1) * A057728 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246589.P11817678547488733281

/-! ## A246589.P2645031938280036200

`lt[A144328(A005897(n)), n+1]`
-/

namespace A246589.P2645031938280036200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (A005897 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A246589.P2645031938280036200

/-! ## A246589.P6263184778233560699

`∑[A322010(A322107(n+3))%8]+n`
-/

namespace A246589.P6263184778233560699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322010 (A322107 (n + 3)).toNat) 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A246589.P6263184778233560699

/-! ## A246589.P12080156432767756381

`lt[A091435(lcm(n, 1-6*n)), n*(A016945(n)+n)/2]`
-/

namespace A246589.P12080156432767756381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091435 (Int.lcm (n : ℤ) (1 - (6 * n : ℤ)))

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A016945 n + (n : ℤ) : ℚ) / 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A246589.P12080156432767756381

/-!
# A246590: Even numbers whose odd part is of the form 4m+3; Numbers missing from A241816.

The programs for A246590, the canonical program `A246590.P10952296055587311205` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246590 has offset 1).

The definition of A246590 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091067, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246590.P10952296055587311205

`2*A091067(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A246590

/-- `2*A091067(n+1)` -/
def P10952296055587311205.Spec : Prop :=
  ∀ n, P10952296055587311205.a n = A246590 (n + 1)

theorem P10952296055587311205.correct : P10952296055587311205.Spec := by
  intro n
  simp only [A246590, Nat.add_sub_cancel]

end A246590

/-! ## A246590.P1038498158546264864

`2*comp[and(n, n-1)+n]`
-/

namespace A246590.P1038498158546264864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A246590.P1038498158546264864

namespace A246590

/-- `2*comp[and(n, n-1)+n]` -/
def P1038498158546264864.Spec : Prop :=
  ∀ n, (P1038498158546264864.a n : ℤ) = A246590 (n + 1)

end A246590

/-! ## A246590.P11472041845745012432

`2*(comp[and(n, n+1)+n]+1)`
-/

namespace A246590.P11472041845745012432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A246590.P11472041845745012432

namespace A246590

/-- `2*(comp[and(n, n+1)+n]+1)` -/
def P11472041845745012432.Spec : Prop :=
  ∀ n, (P11472041845745012432.a n : ℤ) = A246590 (n + 1)

end A246590

/-! ## A246590.P9764074657379136354

`comp[and(and(n, n+1)-n, n-1)+n]+1`
-/

namespace A246590.P9764074657379136354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((Nat.land n (n + 1) : ℤ) - (n : ℤ)) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A246590.P9764074657379136354

namespace A246590

/-- `comp[and(and(n, n+1)-n, n-1)+n]+1` -/
def P9764074657379136354.Spec : Prop :=
  ∀ n, (P9764074657379136354.a n : ℤ) = A246590 (n + 1)

end A246590

/-! ## A246590.P12840579348474751748

`lt[2, A123725(n)]`
-/

namespace A246590.P12840579348474751748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A246590.P12840579348474751748

namespace A246590

/-- `lt[2, A123725(n)]` -/
def P12840579348474751748.Spec : Prop :=
  ∀ n, (P12840579348474751748.a n : ℤ) = A246590 (n + 1)

end A246590

/-! ## A246590.P7390577255931956485

`2*(A255068(n)+1)`
-/

namespace A246590.P7390577255931956485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A255068 n + 1)

end

end A246590.P7390577255931956485

namespace A246590

/-- `2*(A255068(n)+1)` -/
def P7390577255931956485.Spec : Prop :=
  ∀ n, P7390577255931956485.a n = A246590 (n + 1)

end A246590

/-! ## A246590.P10644757454247816085

`∑[2*A106836(n+1)]`
-/

namespace A246590.P10644757454247816085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246590.P10644757454247816085

namespace A246590

/-- `∑[2*A106836(n+1)]` -/
def P10644757454247816085.Spec : Prop :=
  ∀ n, P10644757454247816085.a n = A246590 (n + 1)

end A246590

/-! ## A246590.P6757270766610900063

`(A106838(n+1)+2)/4`
-/

namespace A246590.P6757270766610900063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106838 (n + 1) + 2 : ℚ) / 4

end

end A246590.P6757270766610900063

namespace A246590

/-- `(A106838(n+1)+2)/4` -/
def P6757270766610900063.Spec : Prop :=
  ∀ n, P6757270766610900063.a n = (A246590 (n + 1) : ℚ)

end A246590

/-! ## A246590.P18155309559670472486

`2*A269363(A269368(n+1))`
-/

namespace A246590.P18155309559670472486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A269363 (A269368 (n + 1)).toNat

end

end A246590.P18155309559670472486

namespace A246590

/-- `2*A269363(A269368(n+1))` -/
def P18155309559670472486.Spec : Prop :=
  ∀ n, P18155309559670472486.a n = A246590 (n + 1)

end A246590

/-! ## A246590.P12892596704573670036

`A091067(n+1)+A255068(n)+1`
-/

namespace A246590.P12892596704573670036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091067 (n + 1) + (A255068 n + 1)

end

end A246590.P12892596704573670036

namespace A246590

/-- `A091067(n+1)+A255068(n)+1` -/
def P12892596704573670036.Spec : Prop :=
  ∀ n, P12892596704573670036.a n = A246590 (n + 1)

end A246590

/-! ## A246590.P10787957166137482536

`A091067(n+1)+A091067(-xor(n, -1))`
-/

namespace A246590.P10787957166137482536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091067 (n + 1) + A091067 (-Int.xor (n : ℤ) (-1)).toNat

end

end A246590.P10787957166137482536

namespace A246590

/-- `A091067(n+1)+A091067(-xor(n, -1))` -/
def P10787957166137482536.Spec : Prop :=
  ∀ n, P10787957166137482536.a n = A246590 (n + 1)

end A246590

/-! ## A246590.P7631623554493184856

`A091067(A000027(n+1))+A091067(n+1)`
-/

namespace A246590.P7631623554493184856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091067 (A000027 (n + 1)).toNat + A091067 (n + 1)

end

end A246590.P7631623554493184856

namespace A246590

/-- `A091067(A000027(n+1))+A091067(n+1)` -/
def P7631623554493184856.Spec : Prop :=
  ∀ n, P7631623554493184856.a n = A246590 (n + 1)

end A246590

/-! ## A246590.P2852073950237314555

`A269363(A269368(n+1))+A091067(n+1)`
-/

namespace A246590.P2852073950237314555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269363 (A269368 (n + 1)).toNat + A091067 (n + 1)

end

end A246590.P2852073950237314555

namespace A246590

/-- `A269363(A269368(n+1))+A091067(n+1)` -/
def P2852073950237314555.Spec : Prop :=
  ∀ n, P2852073950237314555.a n = A246590 (n + 1)

end A246590

/-! ## A246590.P9562174267207817003

`A255068(n)+A060833(n+2)`
-/

namespace A246590.P9562174267207817003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255068 n + A060833 (n + 2)

end

end A246590.P9562174267207817003

namespace A246590

/-- `A255068(n)+A060833(n+2)` -/
def P9562174267207817003.Spec : Prop :=
  ∀ n, P9562174267207817003.a n = A246590 (n + 1)

end A246590

/-! ## A246590.P5721453244972411629

`A091067(n+1)+A091067(n+2)-A106836(n+2)`
-/

namespace A246590.P5721453244972411629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091067 (n + 1) + (A091067 (n + 2) - A106836 (n + 2))

end

end A246590.P5721453244972411629

namespace A246590

/-- `A091067(n+1)+A091067(n+2)-A106836(n+2)` -/
def P5721453244972411629.Spec : Prop :=
  ∀ n, P5721453244972411629.a n = A246590 (n + 1)

end A246590

/-! ## A246590.P5305161129907767669

`2*lt[1, A089309(n)]`
-/

namespace A246590.P5305161129907767669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A246590.P5305161129907767669

namespace A246590

/-- `2*lt[1, A089309(n)]` -/
def P5305161129907767669.Spec : Prop :=
  ∀ n, (P5305161129907767669.a n : ℤ) = A246590 (n + 1)

end A246590

/-! ## A246590.P11797822840537379080

`2*A322015(A255068(n))`
-/

namespace A246590.P11797822840537379080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A322015 (A255068 n).toNat

end

end A246590.P11797822840537379080

namespace A246590

/-- `2*A322015(A255068(n))` -/
def P11797822840537379080.Spec : Prop :=
  ∀ n, P11797822840537379080.a n = A246590 (n + 1)

end A246590

/-! ## A246590.P12841037461361017020

`2*eq[A004530(n), A322016(n)]`
-/

namespace A246590.P12841037461361017020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004530 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246590.P12841037461361017020

namespace A246590

/-- `2*eq[A004530(n), A322016(n)]` -/
def P12841037461361017020.Spec : Prop :=
  ∀ n, (P12841037461361017020.a n : ℤ) = A246590 (n + 1)

end A246590

/-! ## A246590.P6580910325509223191

`A322015(A255068(n))+A091067(n+1)`
-/

namespace A246590.P6580910325509223191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322015 (A255068 n).toNat + A091067 (n + 1)

end

end A246590.P6580910325509223191

namespace A246590

/-- `A322015(A255068(n))+A091067(n+1)` -/
def P6580910325509223191.Spec : Prop :=
  ∀ n, P6580910325509223191.a n = A246590 (n + 1)

end A246590

/-! ## A246590.P11195879241369910049

`A322015(A091067(n+1)-1)+A091067(n+1)`
-/

namespace A246590.P11195879241369910049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322015 (A091067 (n + 1) - 1).toNat + A091067 (n + 1)

end

end A246590.P11195879241369910049

namespace A246590

/-- `A322015(A091067(n+1)-1)+A091067(n+1)` -/
def P11195879241369910049.Spec : Prop :=
  ∀ n, P11195879241369910049.a n = A246590 (n + 1)

end A246590

/-!
# A246591: Smallest number that can be obtained by swapping 2 bits in the binary expansion of n.

The programs for A246591, the canonical program `A246591.P17759261953792450585` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246591 has offset 0).

The definition of A246591 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246591.P8807352873715830684

`n-(2^floor(log2(n+1))-1-and(n, -(n+2)))`
-/

namespace A246591.P8807352873715830684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((2 ^ Nat.log 2 (n + 1) : ℤ) - 1 - Int.land (n : ℤ) (-(n + 2 : ℤ)))

end

end A246591.P8807352873715830684

namespace A246591

/-- `n-(2^floor(log2(n+1))-1-and(n, -(n+2)))` -/
def P8807352873715830684.Spec : Prop :=
  ∀ n, P8807352873715830684.a n = A246591 n

end A246591

/-! ## A246591.P17759261953792450585

`n-A086099(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A246591

/-- `n-A086099(n)` -/
def P17759261953792450585.Spec : Prop :=
  ∀ n, P17759261953792450585.a n = A246591 n

theorem P17759261953792450585.correct : P17759261953792450585.Spec := by
  intro n
  simp only [A246591]

end A246591

/-! ## A246591.P13319636386416845996

`A053645(or(n, n+1))`
-/

namespace A246591.P13319636386416845996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (Nat.lor n (n + 1))

end

end A246591.P13319636386416845996

namespace A246591

/-- `A053645(or(n, n+1))` -/
def P13319636386416845996.Spec : Prop :=
  ∀ n, P13319636386416845996.a n = A246591 n

end A246591

/-! ## A246591.P4977759121442705172

`A266539(or(n, n+1))`
-/

namespace A246591.P4977759121442705172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266539 (Nat.lor n (n + 1))

end

end A246591.P4977759121442705172

namespace A246591

/-- `A266539(or(n, n+1))` -/
def P4977759121442705172.Spec : Prop :=
  ∀ n, P4977759121442705172.a n = A246591 n

end A246591

/-! ## A246591.P7279596101789682151

`xor(n, A038556(n+1))/2`
-/

namespace A246591.P7279596101789682151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (n : ℤ) (A038556 (n + 1)) : ℚ) / 2

end

end A246591.P7279596101789682151

namespace A246591

/-- `xor(n, A038556(n+1))/2` -/
def P7279596101789682151.Spec : Prop :=
  ∀ n, P7279596101789682151.a n = (A246591 n : ℚ)

end A246591

/-! ## A246591.P16658434163206984067

`A006257(or(floor(n/2), ceil(n/2)))`
-/

namespace A246591.P16658434163206984067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (Int.lor ⌊(n : ℚ) / 2⌋ ⌈(n : ℚ) / 2⌉).toNat

end

end A246591.P16658434163206984067

namespace A246591

/-- `A006257(or(floor(n/2), ceil(n/2)))` -/
def P16658434163206984067.Spec : Prop :=
  ∀ n, P16658434163206984067.a n = A246591 n

end A246591

/-! ## A246591.P110905222146073470

`A053645(and(n+1, -(n+1))+n)`
-/

namespace A246591.P110905222146073470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) + (n : ℤ)).toNat

end

end A246591.P110905222146073470

namespace A246591

/-- `A053645(and(n+1, -(n+1))+n)` -/
def P110905222146073470.Spec : Prop :=
  ∀ n, P110905222146073470.a n = A246591 n

end A246591

/-! ## A246591.P2982735310085976968

`A053645(A086799(n+1))`
-/

namespace A246591.P2982735310085976968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A086799 (n + 1)).toNat

end

end A246591.P2982735310085976968

namespace A246591

/-- `A053645(A086799(n+1))` -/
def P2982735310085976968.Spec : Prop :=
  ∀ n, P2982735310085976968.a n = A246591 n

end A246591

/-! ## A246591.P5482187693674244215

`A266539(A285326(n+1))`
-/

namespace A246591.P5482187693674244215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266539 (A285326 (n + 1)).toNat

end

end A246591.P5482187693674244215

namespace A246591

/-- `A266539(A285326(n+1))` -/
def P5482187693674244215.Spec : Prop :=
  ∀ n, P5482187693674244215.a n = A246591 n

end A246591

/-! ## A246591.P11393297190680219523

`n-A048967(A142151(n))`
-/

namespace A246591.P11393297190680219523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A048967 (A142151 n).toNat

end

end A246591.P11393297190680219523

namespace A246591

/-- `n-A048967(A142151(n))` -/
def P11393297190680219523.Spec : Prop :=
  ∀ n, P11393297190680219523.a n = A246591 n

end A246591

/-! ## A246591.P6205728515813013989

`A053645(A006519(n+1)+n)`
-/

namespace A246591.P6205728515813013989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A006519 (n + 1) + (n : ℤ)).toNat

end

end A246591.P6205728515813013989

namespace A246591

/-- `A053645(A006519(n+1)+n)` -/
def P6205728515813013989.Spec : Prop :=
  ∀ n, P6205728515813013989.a n = A246591 n

end A246591

/-! ## A246591.P350039614959474105

`A053645(A135481(n)+1+n)`
-/

namespace A246591.P350039614959474105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A135481 n + 1 + (n : ℤ)).toNat

end

end A246591.P350039614959474105

namespace A246591

/-- `A053645(A135481(n)+1+n)` -/
def P350039614959474105.Spec : Prop :=
  ∀ n, P350039614959474105.a n = A246591 n

end A246591

/-! ## A246591.P620980213789691917

`A341522(n)-A004754(n+1)`
-/

namespace A246591.P620980213789691917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341522 n - A004754 (n + 1)

end

end A246591.P620980213789691917

namespace A246591

/-- `A341522(n)-A004754(n+1)` -/
def P620980213789691917.Spec : Prop :=
  ∀ n, P620980213789691917.a n = A246591 n

end A246591

/-! ## A246591.P9824560206629115598

`n-A048735(A340632(n+1))`
-/

namespace A246591.P9824560206629115598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A048735 (A340632 (n + 1)).toNat

end

end A246591.P9824560206629115598

namespace A246591

/-- `n-A048735(A340632(n+1))` -/
def P9824560206629115598.Spec : Prop :=
  ∀ n, P9824560206629115598.a n = A246591 n

end A246591

/-! ## A246591.P5419059354479885106

`A001057(2*A086099(n))+n`
-/

namespace A246591.P5419059354479885106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * A086099 n).toNat + (n : ℤ)

end

end A246591.P5419059354479885106

namespace A246591

/-- `A001057(2*A086099(n))+n` -/
def P5419059354479885106.Spec : Prop :=
  ∀ n, P5419059354479885106.a n = A246591 n

end A246591

/-! ## A246591.P12677272454190835805

`A038572(xor(n, A038556(n+1)))`
-/

namespace A246591.P12677272454190835805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (Int.xor (n : ℤ) (A038556 (n + 1))).toNat

end

end A246591.P12677272454190835805

namespace A246591

/-- `A038572(xor(n, A038556(n+1)))` -/
def P12677272454190835805.Spec : Prop :=
  ∀ n, P12677272454190835805.a n = A246591 n

end A246591

/-! ## A246591.P14097520107001059512

`A035327(xor(n+1, A086099(n)))`
-/

namespace A246591.P14097520107001059512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (Int.xor (n + 1 : ℤ) (A086099 n)).toNat

end

end A246591.P14097520107001059512

namespace A246591

/-- `A035327(xor(n+1, A086099(n)))` -/
def P14097520107001059512.Spec : Prop :=
  ∀ n, P14097520107001059512.a n = A246591 n

end A246591

/-! ## A246591.P5435664200848819442

`A006257((A086799(n+1)-1)/2)`
-/

namespace A246591.P5435664200848819442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (SequenceMachineLib.roundAway ((A086799 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A246591.P5435664200848819442

namespace A246591

/-- `A006257((A086799(n+1)-1)/2)` -/
def P5435664200848819442.Spec : Prop :=
  ∀ n, P5435664200848819442.a n = A246591 n

end A246591

/-! ## A246591.P11862470728091181477

`A006257(n-A129760(n+1)/2)`
-/

namespace A246591.P11862470728091181477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (SequenceMachineLib.roundAway ((n : ℚ) - (A129760 (n + 1) : ℚ) / 2)).toNat

end

end A246591.P11862470728091181477

namespace A246591

/-- `A006257(n-A129760(n+1)/2)` -/
def P11862470728091181477.Spec : Prop :=
  ∀ n, P11862470728091181477.a n = A246591 n

end A246591

/-! ## A246591.P11969455914309952562

`and(A086799(n+1), A092323(n+1))`
-/

namespace A246591.P11969455914309952562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086799 (n + 1)) (A092323 (n + 1))

end

end A246591.P11969455914309952562

namespace A246591

/-- `and(A086799(n+1), A092323(n+1))` -/
def P11969455914309952562.Spec : Prop :=
  ∀ n, P11969455914309952562.a n = A246591 n

end A246591

/-!
# A246592: Smallest number that can be obtained by swapping 2 adjacent bits in the binary expansion of n.

The programs for A246592, the canonical program `A246592.P8185262232204503921` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246592 has offset 0).

The definition of A246592 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246592.P8185262232204503921

`n-A053644(A038554(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A246592

/-- `n-A053644(A038554(n))` -/
def P8185262232204503921.Spec : Prop :=
  ∀ n, P8185262232204503921.a n = A246592 n

theorem P8185262232204503921.correct : P8185262232204503921.Spec := by
  intro n
  simp only [A246592]

end A246592

/-! ## A246592.P14172539348675158530

`A004277(n)-A383593(n)`
-/

namespace A246592.P14172539348675158530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - A383593 n

end

end A246592.P14172539348675158530

namespace A246592

/-- `A004277(n)-A383593(n)` -/
def P14172539348675158530.Spec : Prop :=
  ∀ n, P14172539348675158530.a n = A246592 n

end A246592

/-! ## A246592.P15906775175929284543

`n-A292254(A229762(n))`
-/

namespace A246592.P15906775175929284543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A292254 (A229762 n).toNat

end

end A246592.P15906775175929284543

namespace A246592

/-- `n-A292254(A229762(n))` -/
def P15906775175929284543.Spec : Prop :=
  ∀ n, P15906775175929284543.a n = A246592 n

end A246592

/-! ## A246592.P5730275487922190227

`n-A072376(2*A229762(n))`
-/

namespace A246592.P5730275487922190227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A072376 (2 * A229762 n).toNat

end

end A246592.P5730275487922190227

namespace A246592

/-- `n-A072376(2*A229762(n))` -/
def P5730275487922190227.Spec : Prop :=
  ∀ n, P5730275487922190227.a n = A246592 n

end A246592

/-! ## A246592.P8378564223443144901

`n-A053644(A003817(n)-n)`
-/

namespace A246592.P8378564223443144901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A053644 (A003817 n - (n : ℤ)).toNat

end

end A246592.P8378564223443144901

namespace A246592

/-- `n-A053644(A003817(n)-n)` -/
def P8378564223443144901.Spec : Prop :=
  ∀ n, P8378564223443144901.a n = A246592 n

end A246592

/-! ## A246592.P6472850203532588748

`n-A053644(n-A006257(n))`
-/

namespace A246592.P6472850203532588748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A053644 ((n : ℤ) - A006257 n).toNat

end

end A246592.P6472850203532588748

namespace A246592

/-- `n-A053644(n-A006257(n))` -/
def P6472850203532588748.Spec : Prop :=
  ∀ n, P6472850203532588748.a n = A246592 n

end A246592

/-! ## A246592.P3512178195536743904

`n-A038554(n-A087734(n))`
-/

namespace A246592.P3512178195536743904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A038554 ((n : ℤ) - A087734 n).toNat

end

end A246592.P3512178195536743904

namespace A246592

/-- `n-A038554(n-A087734(n))` -/
def P3512178195536743904.Spec : Prop :=
  ∀ n, P3512178195536743904.a n = A246592 n

end A246592

/-! ## A246592.P2478572444995620217

`n-A292264(A269170(n)-n)`
-/

namespace A246592.P2478572444995620217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A292264 (A269170 n - (n : ℤ)).toNat

end

end A246592.P2478572444995620217

namespace A246592

/-- `n-A292264(A269170(n)-n)` -/
def P2478572444995620217.Spec : Prop :=
  ∀ n, P2478572444995620217.a n = A246592 n

end A246592

/-! ## A246592.P1693191081364196291

`n-A266341(A000079(A063250(n)))`
-/

namespace A246592.P1693191081364196291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A266341 (A000079 (A063250 n).toNat).toNat

end

end A246592.P1693191081364196291

namespace A246592

/-- `n-A266341(A000079(A063250(n)))` -/
def P1693191081364196291.Spec : Prop :=
  ∀ n, P1693191081364196291.a n = A246592 n

end A246592

/-! ## A246592.P6863594852938391245

`A053645(A080079(n+1))+A006257(n)`
-/

namespace A246592.P6863594852938391245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A080079 (n + 1)).toNat + A006257 n

end

end A246592.P6863594852938391245

namespace A246592

/-- `A053645(A080079(n+1))+A006257(n)` -/
def P6863594852938391245.Spec : Prop :=
  ∀ n, P6863594852938391245.a n = A246592 n

end A246592

/-! ## A246592.P17900634025621481799

`A038554(A035327(n))+n-A038554(n)`
-/

namespace A246592.P17900634025621481799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 (A035327 n).toNat + ((n : ℤ) - A038554 n)

end

end A246592.P17900634025621481799

namespace A246592

/-- `A038554(A035327(n))+n-A038554(n)` -/
def P17900634025621481799.Spec : Prop :=
  ∀ n, P17900634025621481799.a n = A246592 n

end A246592

/-! ## A246592.P8217786708764427994

`n-A053644(A003188(n)-A053644(n))`
-/

namespace A246592.P8217786708764427994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A053644 (A003188 n - A053644 n).toNat

end

end A246592.P8217786708764427994

namespace A246592

/-- `n-A053644(A003188(n)-A053644(n))` -/
def P8217786708764427994.Spec : Prop :=
  ∀ n, P8217786708764427994.a n = A246592 n

end A246592

/-! ## A246592.P8203174170108044441

`n-A053644(A005187(A053644(n))-n)`
-/

namespace A246592.P8203174170108044441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A053644 (A005187 (A053644 n).toNat - (n : ℤ)).toNat

end

end A246592.P8203174170108044441

namespace A246592

/-- `n-A053644(A005187(A053644(n))-n)` -/
def P8203174170108044441.Spec : Prop :=
  ∀ n, P8203174170108044441.a n = A246592 n

end A246592

/-! ## A246592.P11345906191183892630

`n-A072376(2*A038554(n))`
-/

namespace A246592.P11345906191183892630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A072376 (2 * A038554 n).toNat

end

end A246592.P11345906191183892630

namespace A246592

/-- `n-A072376(2*A038554(n))` -/
def P11345906191183892630.Spec : Prop :=
  ∀ n, P11345906191183892630.a n = A246592 n

end A246592

/-! ## A246592.P8445261408051191368

`n-A053644(A053645(A122155(n+1)))`
-/

namespace A246592.P8445261408051191368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A053644 (A053645 (A122155 (n + 1)).toNat).toNat

end

end A246592.P8445261408051191368

namespace A246592

/-- `n-A053644(A053645(A122155(n+1)))` -/
def P8445261408051191368.Spec : Prop :=
  ∀ n, P8445261408051191368.a n = A246592 n

end A246592

/-! ## A246592.P12073711937738877111

`n-A053644(A053645(A122199(n+1)))`
-/

namespace A246592.P12073711937738877111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A053644 (A053645 (A122199 (n + 1)).toNat).toNat

end

end A246592.P12073711937738877111

namespace A246592

/-- `n-A053644(A053645(A122199(n+1)))` -/
def P12073711937738877111.Spec : Prop :=
  ∀ n, P12073711937738877111.a n = A246592 n

end A246592

/-! ## A246592.P11468675065871450299

`n-A053644(A053645(A054429(n+1)+1))`
-/

namespace A246592.P11468675065871450299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A053644 (A053645 (A054429 (n + 1) + 1).toNat).toNat

end

end A246592.P11468675065871450299

namespace A246592

/-- `n-A053644(A053645(A054429(n+1)+1))` -/
def P11468675065871450299.Spec : Prop :=
  ∀ n, P11468675065871450299.a n = A246592 n

end A246592

/-! ## A246592.P4075038283769187024

`n-A072376(A035327(2*n+1))`
-/

namespace A246592.P4075038283769187024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A072376 (A035327 (2 * n + 1)).toNat

end

end A246592.P4075038283769187024

namespace A246592

/-- `n-A072376(A035327(2*n+1))` -/
def P4075038283769187024.Spec : Prop :=
  ∀ n, P4075038283769187024.a n = A246592 n

end A246592

/-! ## A246592.P16272352062146331398

`A053645(2*n+1)+A053645(A080079(n+1))`
-/

namespace A246592.P16272352062146331398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (2 * n + 1) + A053645 (A080079 (n + 1)).toNat

end

end A246592.P16272352062146331398

namespace A246592

/-- `A053645(2*n+1)+A053645(A080079(n+1))` -/
def P16272352062146331398.Spec : Prop :=
  ∀ n, P16272352062146331398.a n = A246592 n

end A246592

/-! ## A246592.P3045355691763852028

`2*n-A266341(A004760(n+2))`
-/

namespace A246592.P3045355691763852028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A266341 (A004760 (n + 2)).toNat

end

end A246592.P3045355691763852028

namespace A246592

/-- `2*n-A266341(A004760(n+2))` -/
def P3045355691763852028.Spec : Prop :=
  ∀ n, P3045355691763852028.a n = A246592 n

end A246592

/-!
# A246593: a(n)=n for n <= 2; for n >= 3, a(n) = largest number that can be obtained by swapping two bits in the binary expansion of n.

The programs for A246593, the canonical program `A246593.P14183238413555450199` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246593 has offset 0).

The definition of A246593 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246593.P14183238413555450199

`A086099(A035327(n))+n`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A246593

/-- `A086099(A035327(n))+n` -/
def P14183238413555450199.Spec : Prop :=
  ∀ n, P14183238413555450199.a n = A246593 n

theorem P14183238413555450199.correct : P14183238413555450199.Spec := by
  intro n
  simp only [A246593]

end A246593

/-! ## A246593.P5219836208401490538

`A086099(A003817(n)-n)+n`
-/

namespace A246593.P5219836208401490538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086099 (A003817 n - (n : ℤ)).toNat + (n : ℤ)

end

end A246593.P5219836208401490538

namespace A246593

/-- `A086099(A003817(n)-n)+n` -/
def P5219836208401490538.Spec : Prop :=
  ∀ n, P5219836208401490538.a n = A246593 n

end A246593

/-! ## A246593.P12752378111421120326

`A086099(n-A006257(n))+n`
-/

namespace A246593.P12752378111421120326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086099 ((n : ℤ) - A006257 n).toNat + (n : ℤ)

end

end A246593.P12752378111421120326

namespace A246593

/-- `A086099(n-A006257(n))+n` -/
def P12752378111421120326.Spec : Prop :=
  ∀ n, P12752378111421120326.a n = A246593 n

end A246593

/-! ## A246593.P16694075654381047459

`A003817(n)-A246591(A003817(n)-n)`
-/

namespace A246593.P16694075654381047459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n - A246591 (A003817 n - (n : ℤ)).toNat

end

end A246593.P16694075654381047459

namespace A246593

/-- `A003817(n)-A246591(A003817(n)-n)` -/
def P16694075654381047459.Spec : Prop :=
  ∀ n, P16694075654381047459.a n = A246593 n

end A246593

/-! ## A246593.P2877289457897905363

`A028310(A003817(n))-A246591(A035327(n))`
-/

namespace A246593.P2877289457897905363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A003817 n).toNat - A246591 (A035327 n).toNat

end

end A246593.P2877289457897905363

namespace A246593

/-- `A028310(A003817(n))-A246591(A035327(n))` -/
def P2877289457897905363.Spec : Prop :=
  ∀ n, P2877289457897905363.a n = A246593 n

end A246593

/-! ## A246593.P12780613060208802626

`A086099(A086099(2*n)-n)+n`
-/

namespace A246593.P12780613060208802626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086099 (A086099 (2 * n) - (n : ℤ)).toNat + (n : ℤ)

end

end A246593.P12780613060208802626

namespace A246593

/-- `A086099(A086099(2*n)-n)+n` -/
def P12780613060208802626.Spec : Prop :=
  ∀ n, P12780613060208802626.a n = A246593 n

end A246593

/-! ## A246593.P4135543368550142246

`A266341(A340632(n)+n)`
-/

namespace A246593.P4135543368550142246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266341 (A340632 n + (n : ℤ)).toNat

end

end A246593.P4135543368550142246

namespace A246593

/-- `A266341(A340632(n)+n)` -/
def P4135543368550142246.Spec : Prop :=
  ∀ n, P4135543368550142246.a n = A246593 n

end A246593

/-!
# A246594: a(n)=n for n <= 2; for n >= 3, a(n) = largest number that can be obtained by swapping two adjacent bits in the binary expansion of n.

The programs for A246594, the canonical program `A246594.P17130502543014025446` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246594 has offset 0).

The definition of A246594 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246594.P17130502543014025446

`A053644(A087734(n))+n`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A246594

/-- `A053644(A087734(n))+n` -/
def P17130502543014025446.Spec : Prop :=
  ∀ n, P17130502543014025446.a n = A246594 n

theorem P17130502543014025446.correct : P17130502543014025446.Spec := by
  intro n
  simp only [A246594]

end A246594

/-! ## A246594.P3220732346274816658

`A072376(A087734(2*n))+n`
-/

namespace A246594.P3220732346274816658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072376 (A087734 (2 * n)).toNat + (n : ℤ)

end

end A246594.P3220732346274816658

namespace A246594

/-- `A072376(A087734(2*n))+n` -/
def P3220732346274816658.Spec : Prop :=
  ∀ n, P3220732346274816658.a n = A246594 n

end A246594

/-! ## A246594.P3193599132959661949

`A292254(A292944(A292272(n)))+n`
-/

namespace A246594.P3193599132959661949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292254 (A292944 (A292272 n).toNat).toNat + (n : ℤ)

end

end A246594.P3193599132959661949

namespace A246594

/-- `A292254(A292944(A292272(n)))+n` -/
def P3193599132959661949.Spec : Prop :=
  ∀ n, P3193599132959661949.a n = A246594 n

end A246594

/-! ## A246594.P10251191227958391076

`A053644(A292272(n)-A053644(n))+n`
-/

namespace A246594.P10251191227958391076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A292272 n - A053644 n).toNat + (n : ℤ)

end

end A246594.P10251191227958391076

namespace A246594

/-- `A053644(A292272(n)-A053644(n))+n` -/
def P10251191227958391076.Spec : Prop :=
  ∀ n, P10251191227958391076.a n = A246594 n

end A246594

/-! ## A246594.P302433251060582302

`n-A053644(A087734(n))*A260196(n)`
-/

namespace A246594.P302433251060582302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A053644 (A087734 n).toNat * A260196 n

end

end A246594.P302433251060582302

namespace A246594

/-- `n-A053644(A087734(n))*A260196(n)` -/
def P302433251060582302.Spec : Prop :=
  ∀ n, P302433251060582302.a n = A246594 n

end A246594

/-!
# A246595: Run Length Transform of squares.

The programs for A246595, the canonical program `A246595.P5484153789125895724` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246595 has offset 0).

The definition of A246595 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227349, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246595.P5484153789125895724

`A227349(n)²`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A246595

/-- `A227349(n)²` -/
def P5484153789125895724.Spec : Prop :=
  ∀ n, P5484153789125895724.a n = A246595 n

theorem P5484153789125895724.correct : P5484153789125895724.Spec := by
  intro n
  simp only [A246595]

end A246595

/-! ## A246595.P15754413164344986562

`∏{e}[A278222(n), #²]`
-/

namespace A246595.P15754413164344986562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p ^ 2

end

end A246595.P15754413164344986562

namespace A246595

/-- `∏{e}[A278222(n), #²]` -/
def P15754413164344986562.Spec : Prop :=
  ∀ n, (P15754413164344986562.a n : ℤ) = A246595 n

end A246595

/-! ## A246595.P11297238738068422631

`A227349((n+n)/2)^2`
-/

namespace A246595.P11297238738068422631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 (SequenceMachineLib.roundAway ((n + n : ℚ) / 2)).toNat ^ 2

end

end A246595.P11297238738068422631

namespace A246595

/-- `A227349((n+n)/2)^2` -/
def P11297238738068422631.Spec : Prop :=
  ∀ n, P11297238738068422631.a n = A246595 n

end A246595

/-! ## A246595.P1862566417485439115

`A106737(A048735(n))²`
-/

namespace A246595.P1862566417485439115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A048735 n).toNat ^ 2

end

end A246595.P1862566417485439115

namespace A246595

/-- `A106737(A048735(n))²` -/
def P1862566417485439115.Spec : Prop :=
  ∀ n, P1862566417485439115.a n = A246595 n

end A246595

/-! ## A246595.P2816873624913264275

`A003963(A246029(n))²`
-/

namespace A246595.P2816873624913264275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A246029 n).toNat ^ 2

end

end A246595.P2816873624913264275

namespace A246595

/-- `A003963(A246029(n))²` -/
def P2816873624913264275.Spec : Prop :=
  ∀ n, P2816873624913264275.a n = A246595 n

end A246595

/-! ## A246595.P14996958237468409835

`A167489(A090078(n))²`
-/

namespace A246595.P14996958237468409835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 (A090078 n).toNat ^ 2

end

end A246595.P14996958237468409835

namespace A246595

/-- `A167489(A090078(n))²` -/
def P14996958237468409835.Spec : Prop :=
  ∀ n, P14996958237468409835.a n = A246595 n

end A246595

/-! ## A246595.P18032975718407234725

`A106737(A213370(n))²`
-/

namespace A246595.P18032975718407234725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A213370 n).toNat ^ 2

end

end A246595.P18032975718407234725

namespace A246595

/-- `A106737(A213370(n))²` -/
def P18032975718407234725.Spec : Prop :=
  ∀ n, P18032975718407234725.a n = A246595 n

end A246595

/-! ## A246595.P16001708066584307437

`A106737(A348710(n))²`
-/

namespace A246595.P16001708066584307437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A348710 n).toNat ^ 2

end

end A246595.P16001708066584307437

namespace A246595

/-- `A106737(A348710(n))²` -/
def P16001708066584307437.Spec : Prop :=
  ∀ n, P16001708066584307437.a n = A246595 n

end A246595

/-! ## A246595.P11961185165681665097

`A106737(A048728(n)/2)²`
-/

namespace A246595.P11961185165681665097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (SequenceMachineLib.roundAway ((A048728 n : ℚ) / 2)).toNat ^ 2

end

end A246595.P11961185165681665097

namespace A246595

/-- `A106737(A048728(n)/2)²` -/
def P11961185165681665097.Spec : Prop :=
  ∀ n, P11961185165681665097.a n = A246595 n

end A246595

/-! ## A246595.P7687164529954075231

`(A284562(n)*A284569(n))²`
-/

namespace A246595.P7687164529954075231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A284562 n * A284569 n) ^ 2

end

end A246595.P7687164529954075231

namespace A246595

/-- `(A284562(n)*A284569(n))²` -/
def P7687164529954075231.Spec : Prop :=
  ∀ n, P7687164529954075231.a n = A246595 n

end A246595

/-! ## A246595.P14718180561995931034

`(A227350(n)+A227193(n))²`
-/

namespace A246595.P14718180561995931034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A227350 n + A227193 n) ^ 2

end

end A246595.P14718180561995931034

namespace A246595

/-- `(A227350(n)+A227193(n))²` -/
def P14718180561995931034.Spec : Prop :=
  ∀ n, P14718180561995931034.a n = A246595 n

end A246595

/-! ## A246595.P7334323762738213774

`(A167489(n)/A227350(n))²`
-/

namespace A246595.P7334323762738213774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167489 n : ℚ) / (A227350 n : ℚ)) ^ 2

end

end A246595.P7334323762738213774

namespace A246595

/-- `(A167489(n)/A227350(n))²` -/
def P7334323762738213774.Spec : Prop :=
  ∀ n, P7334323762738213774.a n = (A246595 n : ℚ)

end A246595

/-! ## A246595.P852851639227070258

`A106737(A048728(n))²`
-/

namespace A246595.P852851639227070258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A048728 n).toNat ^ 2

end

end A246595.P852851639227070258

namespace A246595

/-- `A106737(A048728(n))²` -/
def P852851639227070258.Spec : Prop :=
  ∀ n, P852851639227070258.a n = A246595 n

end A246595

/-! ## A246595.P2780234493205886030

`A005361(A278222(n))²`
-/

namespace A246595.P2780234493205886030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A278222 n).toNat ^ 2

end

end A246595.P2780234493205886030

namespace A246595

/-- `A005361(A278222(n))²` -/
def P2780234493205886030.Spec : Prop :=
  ∀ n, P2780234493205886030.a n = A246595 n

end A246595

/-! ## A246595.P12780471038820338252

`A000290(A227349(2*n))`
-/

namespace A246595.P12780471038820338252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A227349 (2 * n)).toNat

end

end A246595.P12780471038820338252

namespace A246595

/-- `A000290(A227349(2*n))` -/
def P12780471038820338252.Spec : Prop :=
  ∀ n, P12780471038820338252.a n = A246595 n

end A246595

/-! ## A246595.P11926780252946486064

`A227349(2*n)*A227349(n)`
-/

namespace A246595.P11926780252946486064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 (2 * n) * A227349 n

end

end A246595.P11926780252946486064

namespace A246595

/-- `A227349(2*n)*A227349(n)` -/
def P11926780252946486064.Spec : Prop :=
  ∀ n, P11926780252946486064.a n = A246595 n

end A246595

/-! ## A246595.P3787661645580208526

`A227350(A010078(n+1))²`
-/

namespace A246595.P3787661645580208526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227350 (A010078 (n + 1)).toNat ^ 2

end

end A246595.P3787661645580208526

namespace A246595

/-- `A227350(A010078(n+1))²` -/
def P3787661645580208526.Spec : Prop :=
  ∀ n, P3787661645580208526.a n = A246595 n

end A246595

/-! ## A246595.P13716395919520972721

`A360969(A278222(n))`
-/

namespace A246595.P13716395919520972721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360969 (A278222 n).toNat

end

end A246595.P13716395919520972721

namespace A246595

/-- `A360969(A278222(n))` -/
def P13716395919520972721.Spec : Prop :=
  ∀ n, P13716395919520972721.a n = A246595 n

end A246595

/-! ## A246595.P5451397955378979324

`∏{e}[A005940(n+1), #²]`
-/

namespace A246595.P5451397955378979324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p ^ 2

end

end A246595.P5451397955378979324

namespace A246595

/-- `∏{e}[A005940(n+1), #²]` -/
def P5451397955378979324.Spec : Prop :=
  ∀ n, (P5451397955378979324.a n : ℤ) = A246595 n

end A246595

/-! ## A246595.P5945847243343719036

`A000290(∏{e}[A005940(n+1), #])`
-/

namespace A246595.P5945847243343719036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A246595.P5945847243343719036

namespace A246595

/-- `A000290(∏{e}[A005940(n+1), #])` -/
def P5945847243343719036.Spec : Prop :=
  ∀ n, P5945847243343719036.a n = A246595 n

end A246595

/-!
# A246596: Run Length Transform of Catalan numbers A000108.

The programs for A246596, the canonical program `A246596.P4248891644944988047` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246596 has offset 0).

The definition of A246596 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A069739, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246596.P4248891644944988047

`A069739(A005940(1+n))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A246596

/-- `A069739(A005940(1+n))` -/
def P4248891644944988047.Spec : Prop :=
  ∀ n, P4248891644944988047.a n = A246596 n

theorem P4248891644944988047.correct : P4248891644944988047.Spec := by
  intro n
  simp only [A246596]

end A246596

/-! ## A246596.P15374918072378576847

`∏{e}[A278222(n), A000108(#)]`
-/

namespace A246596.P15374918072378576847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000108 (Nat.factorization (f1 n).natAbs p)

end

end A246596.P15374918072378576847

namespace A246596

/-- `∏{e}[A278222(n), A000108(#)]` -/
def P15374918072378576847.Spec : Prop :=
  ∀ n, P15374918072378576847.a n = A246596 n

end A246596

/-! ## A246596.P7414319578272509852

`∏{e}[A278222(n), A208355(2*#)]`
-/

namespace A246596.P7414319578272509852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A208355 (2 * Nat.factorization (f1 n).natAbs p)

end

end A246596.P7414319578272509852

namespace A246596

/-- `∏{e}[A278222(n), A208355(2*#)]` -/
def P7414319578272509852.Spec : Prop :=
  ∀ n, P7414319578272509852.a n = A246596 n

end A246596

/-! ## A246596.P3105873593290119834

`∏{e}[A278222(n), A342982(A000217(#))]`
-/

namespace A246596.P3105873593290119834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A342982 (A000217 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A246596.P3105873593290119834

namespace A246596

/-- `∏{e}[A278222(n), A342982(A000217(#))]` -/
def P3105873593290119834.Spec : Prop :=
  ∀ n, P3105873593290119834.a n = A246596 n

end A246596

/-! ## A246596.P13245052150428018331

`A069739(A278222(n))`
-/

namespace A246596.P13245052150428018331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069739 (A278222 n).toNat

end

end A246596.P13245052150428018331

namespace A246596

/-- `A069739(A278222(n))` -/
def P13245052150428018331.Spec : Prop :=
  ∀ n, P13245052150428018331.a n = A246596 n

end A246596

/-! ## A246596.P17526138045701699326

`∏{e}[A005940(n+1), A000108(#)]`
-/

namespace A246596.P17526138045701699326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000108 (Nat.factorization (f1 n).natAbs p)

end

end A246596.P17526138045701699326

namespace A246596

/-- `∏{e}[A005940(n+1), A000108(#)]` -/
def P17526138045701699326.Spec : Prop :=
  ∀ n, P17526138045701699326.a n = A246596 n

end A246596

/-! ## A246596.P2497912559711208255

`∏{e}[A332815(n), A000108(#)]`
-/

namespace A246596.P2497912559711208255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000108 (Nat.factorization (f1 n).natAbs p)

end

end A246596.P2497912559711208255

namespace A246596

/-- `∏{e}[A332815(n), A000108(#)]` -/
def P2497912559711208255.Spec : Prop :=
  ∀ n, P2497912559711208255.a n = A246596 n

end A246596

/-! ## A246596.P18283787096992769689

`∏{e}[A278222(n)², A208355(#)]`
-/

namespace A246596.P18283787096992769689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A208355 (Nat.factorization (f1 n).natAbs p)

end

end A246596.P18283787096992769689

namespace A246596

/-- `∏{e}[A278222(n)², A208355(#)]` -/
def P18283787096992769689.Spec : Prop :=
  ∀ n, P18283787096992769689.a n = A246596 n

end A246596

/-! ## A246596.P8912045023261435977

`A069739(A332815(n))`
-/

namespace A246596.P8912045023261435977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069739 (A332815 n).toNat

end

end A246596.P8912045023261435977

namespace A246596

/-- `A069739(A332815(n))` -/
def P8912045023261435977.Spec : Prop :=
  ∀ n, P8912045023261435977.a n = A246596 n

end A246596

/-! ## A246596.P264562069166161238

`A069739(A374717(n+1))`
-/

namespace A246596.P264562069166161238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069739 (A374717 (n + 1)).toNat

end

end A246596.P264562069166161238

namespace A246596

/-- `A069739(A374717(n+1))` -/
def P264562069166161238.Spec : Prop :=
  ∀ n, P264562069166161238.a n = A246596 n

end A246596

/-!
# A246597: A070952(2^n-1).

The programs for A246597, there is no canonical definition to state claims against.
-/

/-! ## A246597.P4738059019759373631

`A070952(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246597.P4738059019759373631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070952 (2 ^ n - 1)

end

end A246597.P4738059019759373631

/-! ## A246597.P3211081502455908809

`A265703(2^n)`
-/

namespace A246597.P3211081502455908809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265703 (2 ^ n)

end

end A246597.P3211081502455908809

/-! ## A246597.P16234792707439763119

`A246024(2^n-1)+2^n-1`
-/

namespace A246597.P16234792707439763119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246024 (2 ^ n - 1) + ((2 ^ n : ℤ) - 1)

end

end A246597.P16234792707439763119

/-! ## A246597.P959524777899330179

`record[A070952(A173787(n))]`
-/

namespace A246597.P959524777899330179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070952 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246597.P959524777899330179

/-! ## A246597.P11609700157972290844

`record[A070952(A227351(n))]`
-/

namespace A246597.P11609700157972290844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070952 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246597.P11609700157972290844

